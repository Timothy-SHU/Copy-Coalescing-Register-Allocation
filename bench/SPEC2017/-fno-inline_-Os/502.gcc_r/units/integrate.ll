; ModuleID = 'integrate.c'
source_filename = "integrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gcc_target = type { %struct.asm_out, %struct.sched, %struct.vectorize, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.addr_space, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, %struct.calls, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.c, %struct.cxx, %struct.emutls, %struct.target_option_hooks, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.asm_out = type { ptr, ptr, ptr, %struct.asm_int_op, %struct.asm_int_op, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.asm_int_op = type { ptr, ptr, ptr, ptr }
%struct.sched = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vectorize = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.addr_space = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.calls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.c = type { ptr }
%struct.cxx = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.emutls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8 }
%struct.target_option_hooks = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtl_data = type { %struct.expr_status, %struct.emit_status, %struct.varasm_status, %struct.incoming_args, %struct.function_subsections, %struct.rtl_eh, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.expr_status = type { i32, i32, i32, ptr, ptr, ptr }
%struct.emit_status = type { i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.varasm_status = type { ptr, i32 }
%struct.incoming_args = type { i32, i32, i32, ptr, %struct.ix86_args, ptr }
%struct.ix86_args = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.function_subsections = type { ptr, ptr, ptr, ptr, ptr }
%struct.rtl_eh = type { ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr] }
%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.attribute_spec = type { ptr, i32, i32, i8, i8, i8, ptr }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_block = type { %struct.tree_common, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.initial_value_struct = type { i32, i32, ptr }
%struct.initial_value_pair = type { ptr, ptr }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.regstat_n_sets_and_refs_t = type { i32, i32 }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }

@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8
@.str = private unnamed_addr constant [9 x i8] c"initvals\00", align 1
@pass_initial_value_sets = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str, ptr null, ptr @emit_initial_value_sets, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1 } }, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"integrate.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@reg_renumber = external local_unnamed_addr global ptr, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@regstat_n_sets_and_refs = external local_unnamed_addr global ptr, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @function_attribute_inlinable_p(ptr noundef %0) local_unnamed_addr #0 !prof !50 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 13), align 8, !tbaa !51
  %3 = icmp eq ptr %2, null
  br i1 %3, label %34, label %4, !prof !68

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !69
  %7 = icmp eq ptr %6, null
  br i1 %7, label %34, label %8, !prof !70

8:                                                ; preds = %4, %26
  %9 = phi ptr [ %27, %26 ], [ %2, %4 ]
  %10 = phi ptr [ %29, %26 ], [ %6, %4 ]
  %11 = getelementptr inbounds %struct.tree_list, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !69
  %13 = load ptr, ptr %9, align 8, !tbaa !71
  %14 = icmp eq ptr %13, null
  br i1 %14, label %26, label %21

15:                                               ; preds = %21
  %16 = add nuw i64 %22, 1
  %17 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 13), align 8, !tbaa !51
  %18 = getelementptr inbounds %struct.attribute_spec, ptr %17, i64 %16
  %19 = load ptr, ptr %18, align 8, !tbaa !71
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21, !llvm.loop !73

21:                                               ; preds = %8, %15
  %22 = phi i64 [ %16, %15 ], [ 0, %8 ]
  %23 = phi ptr [ %19, %15 ], [ %13, %8 ]
  %24 = tail call i32 @is_attribute_p(ptr noundef nonnull %23, ptr noundef %12) #6
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %15, label %31

26:                                               ; preds = %15, %8
  %27 = phi ptr [ %9, %8 ], [ %17, %15 ]
  %28 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !69
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %8, !prof !75, !llvm.loop !76

31:                                               ; preds = %21
  %32 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 17), align 8, !tbaa !77
  %33 = tail call zeroext i8 %32(ptr noundef %0) #6
  br label %34

34:                                               ; preds = %26, %1, %4, %31
  %35 = phi i8 [ %33, %31 ], [ 1, %4 ], [ 1, %1 ], [ 1, %26 ]
  ret i8 %35
}

; Function Attrs: optsize
declare i32 @is_attribute_p(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @set_decl_origin_self(ptr noundef %0) local_unnamed_addr #2 !prof !78 {
  %2 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !69
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %27

5:                                                ; preds = %1
  store ptr %0, ptr %2, align 8, !tbaa !69
  %6 = load i64, ptr %0, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 29
  br i1 %8, label %9, label %27

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !69
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %9, %13
  %14 = phi ptr [ %17, %13 ], [ %11, %9 ]
  %15 = getelementptr inbounds %struct.tree_decl_common, ptr %14, i64 0, i32 7
  store ptr %14, ptr %15, align 8, !tbaa !69
  %16 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !69
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %13, !llvm.loop !79

19:                                               ; preds = %13, %9
  %20 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !69
  %22 = icmp eq ptr %21, null
  %23 = load ptr, ptr @global_trees, align 16
  %24 = icmp eq ptr %21, %23
  %25 = select i1 %22, i1 true, i1 %24
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  tail call fastcc void @set_block_origin_self(ptr noundef nonnull %21) #7
  br label %27

27:                                               ; preds = %19, %26, %5, %1
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_block_origin_self(ptr noundef %0) unnamed_addr #2 !prof !78 !PGOFuncName !80 {
  %2 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !69
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %23

5:                                                ; preds = %1
  store ptr %0, ptr %2, align 8, !tbaa !69
  %6 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !69
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5, %9
  %10 = phi ptr [ %12, %9 ], [ %7, %5 ]
  tail call void @set_decl_origin_self(ptr noundef nonnull %10) #7
  %11 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !69
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %9, !llvm.loop !81

14:                                               ; preds = %9, %5
  %15 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !69
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %14, %18
  %19 = phi ptr [ %21, %18 ], [ %16, %14 ]
  tail call fastcc void @set_block_origin_self(ptr noundef nonnull %19) #7
  %20 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !69
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %18, !llvm.loop !82

23:                                               ; preds = %18, %14, %1
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @set_decl_abstract_flags(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #2 !prof !78 {
  %3 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8
  %5 = shl i32 %1, 11
  %6 = and i32 %5, 2048
  %7 = zext nneg i32 %6 to i64
  %8 = and i64 %4, -2049
  %9 = or disjoint i64 %8, %7
  store i64 %9, ptr %3, align 8
  %10 = load i64, ptr %0, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 29
  br i1 %12, label %13, label %34

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !69
  %16 = icmp eq ptr %15, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %13, %17
  %18 = phi ptr [ %24, %17 ], [ %15, %13 ]
  %19 = getelementptr inbounds %struct.tree_decl_common, ptr %18, i64 0, i32 2
  %20 = load i64, ptr %19, align 8
  %21 = and i64 %20, -2049
  %22 = or disjoint i64 %21, %7
  store i64 %22, ptr %19, align 8
  %23 = getelementptr inbounds %struct.tree_common, ptr %18, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !69
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %17, !llvm.loop !83

26:                                               ; preds = %17, %13
  %27 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !69
  %29 = icmp eq ptr %28, null
  %30 = load ptr, ptr @global_trees, align 16
  %31 = icmp eq ptr %28, %30
  %32 = select i1 %29, i1 true, i1 %31
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  tail call fastcc void @set_block_abstract_flags(ptr noundef nonnull %28, i32 noundef %1) #7
  br label %34

34:                                               ; preds = %26, %33, %2
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_block_abstract_flags(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #2 !prof !78 !PGOFuncName !84 {
  %3 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %1, 1
  %6 = and i32 %4, -2
  %7 = or disjoint i32 %6, %5
  store i32 %7, ptr %3, align 8
  %8 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !69
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %16, %2
  %12 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !69
  %14 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %13) #7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %38, label %21

16:                                               ; preds = %2, %16
  %17 = phi ptr [ %19, %16 ], [ %9, %2 ]
  tail call void @set_decl_abstract_flags(ptr noundef nonnull %17, i32 noundef %1) #7
  %18 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !69
  %20 = icmp eq ptr %19, null
  br i1 %20, label %11, label %16, !llvm.loop !85

21:                                               ; preds = %11, %33
  %22 = phi ptr [ %34, %33 ], [ %13, %11 ]
  %23 = phi i32 [ %35, %33 ], [ 0, %11 ]
  %24 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %22, i32 noundef %23) #7
  %25 = load i64, ptr %24, align 8
  %26 = and i64 %25, 65535
  %27 = and i64 %25, 67174399
  %28 = icmp eq i64 %27, 32
  %29 = icmp eq i64 %26, 34
  %30 = or i1 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  tail call void @set_decl_abstract_flags(ptr noundef nonnull %24, i32 noundef %1) #7
  %32 = load ptr, ptr %12, align 8, !tbaa !69
  br label %33

33:                                               ; preds = %21, %31
  %34 = phi ptr [ %22, %21 ], [ %32, %31 ]
  %35 = add nuw i32 %23, 1
  %36 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %34) #7
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %21, label %38, !llvm.loop !86

38:                                               ; preds = %33, %11
  %39 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 5
  %40 = load ptr, ptr %39, align 8, !tbaa !69
  %41 = icmp eq ptr %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %38, %42
  %43 = phi ptr [ %45, %42 ], [ %40, %38 ]
  tail call fastcc void @set_block_abstract_flags(ptr noundef nonnull %43, i32 noundef %1) #7
  %44 = getelementptr inbounds %struct.tree_common, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !69
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %42, !llvm.loop !87

47:                                               ; preds = %42, %38
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_hard_reg_initial_reg(ptr noundef %0) local_unnamed_addr #0 !prof !78 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 8), align 8, !tbaa !88
  %3 = icmp eq ptr %2, null
  br i1 %3, label %25, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8, !tbaa !97
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %25

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.initial_value_struct, ptr %2, i64 0, i32 2
  br label %14

9:                                                ; preds = %14
  %10 = add nuw nsw i64 %15, 1
  %11 = load i32, ptr %2, align 8, !tbaa !97
  %12 = sext i32 %11 to i64
  %13 = icmp slt i64 %10, %12
  br i1 %13, label %14, label %25, !llvm.loop !99

14:                                               ; preds = %7, %9
  %15 = phi i64 [ 0, %7 ], [ %10, %9 ]
  %16 = load ptr, ptr %8, align 8, !tbaa !100
  %17 = getelementptr inbounds %struct.initial_value_pair, ptr %16, i64 %15, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !101
  %19 = tail call i32 @rtx_equal_p(ptr noundef %18, ptr noundef %0) #6
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %9, label %21

21:                                               ; preds = %14
  %22 = load ptr, ptr %8, align 8, !tbaa !100
  %23 = getelementptr inbounds %struct.initial_value_pair, ptr %22, i64 %15
  %24 = load ptr, ptr %23, align 8, !tbaa !103
  br label %25

25:                                               ; preds = %9, %4, %1, %21
  %26 = phi ptr [ %24, %21 ], [ null, %1 ], [ null, %4 ], [ null, %9 ]
  ret ptr %26
}

; Function Attrs: optsize
declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_hard_reg_initial_val(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !78 {
  %3 = tail call ptr @has_hard_reg_initial_val(i32 noundef %0, i32 noundef %1) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %39

5:                                                ; preds = %2
  %6 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 8), align 8, !tbaa !88
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %5
  %9 = tail call ptr @ggc_alloc_stat(i64 noundef 16) #6
  store i32 0, ptr %9, align 8, !tbaa !97
  %10 = getelementptr inbounds %struct.initial_value_struct, ptr %9, i64 0, i32 1
  store i32 5, ptr %10, align 4, !tbaa !104
  %11 = tail call ptr @ggc_alloc_stat(i64 noundef 80) #6
  %12 = getelementptr inbounds %struct.initial_value_struct, ptr %9, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !100
  store ptr %9, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 8), align 8, !tbaa !88
  br label %13

13:                                               ; preds = %8, %5
  %14 = phi ptr [ %9, %8 ], [ %6, %5 ]
  %15 = load i32, ptr %14, align 8, !tbaa !97
  %16 = getelementptr inbounds %struct.initial_value_struct, ptr %14, i64 0, i32 1
  %17 = load i32, ptr %16, align 4, !tbaa !104
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %26, label %19

19:                                               ; preds = %13
  %20 = add nsw i32 %17, 5
  store i32 %20, ptr %16, align 4, !tbaa !104
  %21 = getelementptr inbounds %struct.initial_value_struct, ptr %14, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !100
  %23 = sext i32 %20 to i64
  %24 = shl nsw i64 %23, 4
  %25 = tail call ptr @ggc_realloc_stat(ptr noundef %22, i64 noundef %24) #6
  store ptr %25, ptr %21, align 8, !tbaa !100
  br label %26

26:                                               ; preds = %19, %13
  %27 = tail call ptr @gen_rtx_REG(i32 noundef %0, i32 noundef %1) #6
  %28 = getelementptr inbounds %struct.initial_value_struct, ptr %14, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !100
  %30 = load i32, ptr %14, align 8, !tbaa !97
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.initial_value_pair, ptr %29, i64 %31
  store ptr %27, ptr %32, align 8, !tbaa !103
  %33 = tail call ptr @gen_reg_rtx(i32 noundef %0) #6
  %34 = load ptr, ptr %28, align 8, !tbaa !100
  %35 = load i32, ptr %14, align 8, !tbaa !97
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.initial_value_pair, ptr %34, i64 %36, i32 1
  store ptr %33, ptr %37, align 8, !tbaa !101
  %38 = add nsw i32 %35, 1
  store i32 %38, ptr %14, align 8, !tbaa !97
  br label %39

39:                                               ; preds = %2, %26
  %40 = phi ptr [ %33, %26 ], [ %3, %2 ]
  ret ptr %40
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @has_hard_reg_initial_val(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !prof !78 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 8), align 8, !tbaa !88
  %4 = icmp eq ptr %3, null
  br i1 %4, label %29, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 8, !tbaa !97
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %29

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.initial_value_struct, ptr %3, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !100
  %11 = zext nneg i32 %6 to i64
  br label %12

12:                                               ; preds = %8, %26
  %13 = phi i64 [ 0, %8 ], [ %27, %26 ]
  %14 = getelementptr inbounds %struct.initial_value_pair, ptr %10, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !103
  %16 = load i32, ptr %15, align 8
  %17 = lshr i32 %16, 16
  %18 = and i32 %17, 255
  %19 = icmp eq i32 %18, %0
  br i1 %19, label %20, label %26

20:                                               ; preds = %12
  %21 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %15) #7
  %22 = icmp eq i32 %21, %1
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.initial_value_pair, ptr %10, i64 %13, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !101
  br label %29

26:                                               ; preds = %12, %20
  %27 = add nuw nsw i64 %13, 1
  %28 = icmp eq i64 %27, %11
  br i1 %28, label %29, label %12, !llvm.loop !105

29:                                               ; preds = %26, %5, %2, %23
  %30 = phi ptr [ %25, %23 ], [ null, %2 ], [ null, %5 ], [ null, %26 ]
  ret ptr %30
}

; Function Attrs: optsize
declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @ggc_realloc_stat(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gen_rtx_REG(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gen_reg_rtx(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !78 !PGOFuncName !106 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !69
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @emit_initial_value_sets() #0 !prof !107 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 8), align 8, !tbaa !88
  %2 = icmp eq ptr %1, null
  br i1 %2, label %22, label %3, !prof !108

3:                                                ; preds = %0
  tail call void @start_sequence() #6
  %4 = load i32, ptr %1, align 8, !tbaa !97
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.initial_value_struct, ptr %1, i64 0, i32 2
  br label %8

8:                                                ; preds = %6, %8
  %9 = phi i64 [ 0, %6 ], [ %16, %8 ]
  %10 = load ptr, ptr %7, align 8, !tbaa !100
  %11 = getelementptr inbounds %struct.initial_value_pair, ptr %10, i64 %9
  %12 = getelementptr inbounds %struct.initial_value_pair, ptr %10, i64 %9, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !101
  %14 = load ptr, ptr %11, align 8, !tbaa !103
  %15 = tail call ptr @emit_move_insn(ptr noundef %13, ptr noundef %14) #6
  %16 = add nuw nsw i64 %9, 1
  %17 = load i32, ptr %1, align 8, !tbaa !97
  %18 = sext i32 %17 to i64
  %19 = icmp slt i64 %16, %18
  br i1 %19, label %8, label %20, !llvm.loop !109

20:                                               ; preds = %8, %3
  %21 = tail call ptr @get_insns() #6
  tail call void @end_sequence() #6
  tail call void @emit_insn_at_entry(ptr noundef %21) #6
  br label %22

22:                                               ; preds = %0, %20
  ret i32 0
}

; Function Attrs: optsize
declare void @start_sequence() local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @emit_move_insn(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @get_insns() local_unnamed_addr #1

; Function Attrs: optsize
declare void @end_sequence() local_unnamed_addr #1

; Function Attrs: optsize
declare void @emit_insn_at_entry(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @allocate_initial_values(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 !prof !107 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 62), align 8, !tbaa !110
  %3 = icmp eq ptr %2, null
  br i1 %3, label %90, label %4, !prof !108

4:                                                ; preds = %1
  %5 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 8), align 8, !tbaa !88
  %6 = icmp eq ptr %5, null
  br i1 %6, label %90, label %7

7:                                                ; preds = %4
  %8 = load i32, ptr %5, align 8, !tbaa !97
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %90

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.initial_value_struct, ptr %5, i64 0, i32 2
  br label %12

12:                                               ; preds = %10, %85
  %13 = phi i64 [ 0, %10 ], [ %86, %85 ]
  %14 = load ptr, ptr %11, align 8, !tbaa !100
  %15 = getelementptr inbounds %struct.initial_value_pair, ptr %14, i64 %13, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !101
  %17 = tail call fastcc i32 @rhs_regno(ptr noundef %16) #7
  %18 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 62), align 8, !tbaa !110
  %19 = getelementptr inbounds %struct.initial_value_pair, ptr %14, i64 %13
  %20 = load ptr, ptr %19, align 8, !tbaa !103
  %21 = tail call ptr %18(ptr noundef %20) #6
  %22 = icmp eq ptr %21, null
  br i1 %22, label %85, label %23

23:                                               ; preds = %12
  %24 = load ptr, ptr %11, align 8, !tbaa !100
  %25 = getelementptr inbounds %struct.initial_value_pair, ptr %24, i64 %13, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !101
  %27 = tail call fastcc i32 @rhs_regno(ptr noundef %26) #7
  %28 = tail call fastcc i32 @REG_N_SETS(i32 noundef %27) #7
  %29 = icmp slt i32 %28, 2
  br i1 %29, label %30, label %85

30:                                               ; preds = %23
  %31 = load i32, ptr %21, align 8
  %32 = trunc i32 %31 to i16
  switch i16 %32, label %36 [
    i16 43, label %33
    i16 37, label %40
  ]

33:                                               ; preds = %30
  %34 = sext i32 %17 to i64
  %35 = getelementptr inbounds ptr, ptr %0, i64 %34
  store ptr %21, ptr %35, align 8, !tbaa !111
  br label %85

36:                                               ; preds = %30
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 356, ptr noundef nonnull @.str.2) #6
  %37 = load ptr, ptr %11, align 8, !tbaa !100
  %38 = getelementptr inbounds %struct.initial_value_pair, ptr %37, i64 %13, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !101
  br label %40

40:                                               ; preds = %30, %36
  %41 = phi ptr [ %26, %30 ], [ %39, %36 ]
  %42 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %21) #7
  %43 = trunc i32 %42 to i16
  %44 = load ptr, ptr @reg_renumber, align 8, !tbaa !111
  %45 = sext i32 %17 to i64
  %46 = getelementptr inbounds i16, ptr %44, i64 %45
  store i16 %43, ptr %46, align 2, !tbaa !112
  %47 = tail call fastcc i32 @rhs_regno(ptr noundef %41) #7
  tail call void @df_ref_change_reg_with_loc(i32 noundef %47, i32 noundef %42, ptr noundef %41) #6
  %48 = load ptr, ptr %11, align 8, !tbaa !100
  %49 = getelementptr inbounds %struct.initial_value_pair, ptr %48, i64 %13, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !101
  %51 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1
  store i32 %42, ptr %51, align 8, !tbaa !69
  %52 = load ptr, ptr @cfun, align 8, !tbaa !111
  %53 = getelementptr inbounds %struct.function, ptr %52, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !114
  %55 = load ptr, ptr %54, align 8, !tbaa !116
  %56 = getelementptr inbounds %struct.basic_block_def, ptr %55, i64 0, i32 6
  %57 = load ptr, ptr %56, align 8, !tbaa !118
  %58 = getelementptr inbounds %struct.control_flow_graph, ptr %54, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !120
  %60 = icmp eq ptr %57, %59
  br i1 %60, label %85, label %61

61:                                               ; preds = %40, %76
  %62 = phi ptr [ %78, %76 ], [ %57, %40 ]
  %63 = tail call ptr @df_get_live_in(ptr noundef %62) #6
  %64 = tail call i32 @bitmap_bit_p(ptr noundef %63, i32 noundef %17) #6
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %61
  %67 = tail call ptr @df_get_live_in(ptr noundef %62) #6
  %68 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %67, i32 noundef %42) #6
  br label %69

69:                                               ; preds = %66, %61
  %70 = tail call ptr @df_get_live_out(ptr noundef %62) #6
  %71 = tail call i32 @bitmap_bit_p(ptr noundef %70, i32 noundef %17) #6
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %69
  %74 = tail call ptr @df_get_live_out(ptr noundef %62) #6
  %75 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %74, i32 noundef %42) #6
  br label %76

76:                                               ; preds = %69, %73
  %77 = getelementptr inbounds %struct.basic_block_def, ptr %62, i64 0, i32 6
  %78 = load ptr, ptr %77, align 8, !tbaa !118
  %79 = load ptr, ptr @cfun, align 8, !tbaa !111
  %80 = getelementptr inbounds %struct.function, ptr %79, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !114
  %82 = getelementptr inbounds %struct.control_flow_graph, ptr %81, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !120
  %84 = icmp eq ptr %78, %83
  br i1 %84, label %85, label %61, !llvm.loop !121

85:                                               ; preds = %76, %40, %33, %23, %12
  %86 = add nuw nsw i64 %13, 1
  %87 = load i32, ptr %5, align 8, !tbaa !97
  %88 = sext i32 %87 to i64
  %89 = icmp slt i64 %86, %88
  br i1 %89, label %12, label %90, !llvm.loop !122

90:                                               ; preds = %85, %7, %4, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @REG_N_SETS(i32 noundef %0) unnamed_addr #5 !prof !78 !PGOFuncName !123 {
  %2 = load ptr, ptr @regstat_n_sets_and_refs, align 8, !tbaa !111
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds %struct.regstat_n_sets_and_refs_t, ptr %2, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !124
  ret i32 %5
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @df_ref_change_reg_with_loc(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @df_get_live_in(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @df_get_live_out(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_initial_value_struct(ptr noundef %0) local_unnamed_addr #0 !prof !78 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %39, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %39

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.initial_value_struct, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !100
  %9 = icmp eq ptr %8, null
  br i1 %9, label %39, label %10

10:                                               ; preds = %6
  %11 = load i32, ptr %0, align 8, !tbaa !97
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %34, label %13

13:                                               ; preds = %10, %27
  %14 = phi i64 [ %28, %27 ], [ 0, %10 ]
  %15 = load ptr, ptr %7, align 8, !tbaa !100
  %16 = getelementptr inbounds %struct.initial_value_pair, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !103
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %13
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %17) #6
  %20 = load ptr, ptr %7, align 8, !tbaa !100
  br label %21

21:                                               ; preds = %13, %19
  %22 = phi ptr [ %15, %13 ], [ %20, %19 ]
  %23 = getelementptr inbounds %struct.initial_value_pair, ptr %22, i64 %14, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !101
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %24) #6
  br label %27

27:                                               ; preds = %21, %26
  %28 = add i64 %14, 1
  %29 = load i32, ptr %0, align 8, !tbaa !97
  %30 = sext i32 %29 to i64
  %31 = icmp eq i64 %28, %30
  br i1 %31, label %32, label %13, !llvm.loop !126

32:                                               ; preds = %27
  %33 = load ptr, ptr %7, align 8, !tbaa !100
  br label %34

34:                                               ; preds = %32, %10
  %35 = phi ptr [ %33, %32 ], [ %8, %10 ]
  %36 = icmp ult ptr %35, inttoptr (i64 2 to ptr)
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = tail call i32 @ggc_set_mark(ptr noundef nonnull %35) #6
  br label %39

39:                                               ; preds = %34, %1, %37, %6, %3
  ret void
}

; Function Attrs: optsize
declare i32 @ggc_set_mark(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @gt_ggc_mx_rtx_def(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_initial_value_struct(ptr noundef %0) local_unnamed_addr #0 !prof !78 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_20initial_value_struct, i32 noundef 121) #6
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %35, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.initial_value_struct, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !100
  %7 = icmp eq ptr %6, null
  br i1 %7, label %35, label %8

8:                                                ; preds = %4
  %9 = load i32, ptr %0, align 8, !tbaa !97
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %32, label %11

11:                                               ; preds = %8, %25
  %12 = phi i64 [ %26, %25 ], [ 0, %8 ]
  %13 = load ptr, ptr %5, align 8, !tbaa !100
  %14 = getelementptr inbounds %struct.initial_value_pair, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !103
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %11
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %15) #6
  %18 = load ptr, ptr %5, align 8, !tbaa !100
  br label %19

19:                                               ; preds = %11, %17
  %20 = phi ptr [ %13, %11 ], [ %18, %17 ]
  %21 = getelementptr inbounds %struct.initial_value_pair, ptr %20, i64 %12, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !101
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %22) #6
  br label %25

25:                                               ; preds = %19, %24
  %26 = add i64 %12, 1
  %27 = load i32, ptr %0, align 8, !tbaa !97
  %28 = sext i32 %27 to i64
  %29 = icmp eq i64 %26, %28
  br i1 %29, label %30, label %11, !llvm.loop !127

30:                                               ; preds = %25
  %31 = load ptr, ptr %5, align 8, !tbaa !100
  br label %32

32:                                               ; preds = %30, %8
  %33 = phi ptr [ %31, %30 ], [ %6, %8 ]
  %34 = tail call i32 @gt_pch_note_object(ptr noundef %33, ptr noundef nonnull %0, ptr noundef nonnull @gt_pch_p_20initial_value_struct, i32 noundef 217) #6
  br label %35

35:                                               ; preds = %4, %32, %1
  ret void
}

; Function Attrs: optsize
declare i32 @gt_pch_note_object(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_20initial_value_struct(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !78 {
  %5 = getelementptr inbounds %struct.initial_value_struct, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !100
  %7 = icmp eq ptr %6, null
  br i1 %7, label %31, label %8

8:                                                ; preds = %4
  %9 = load i32, ptr %1, align 8, !tbaa !97
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %28, label %11

11:                                               ; preds = %8, %23
  %12 = phi i64 [ %24, %23 ], [ 0, %8 ]
  %13 = load ptr, ptr %5, align 8, !tbaa !100
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.initial_value_pair, ptr %0, i64 %12
  tail call void %2(ptr noundef %16, ptr noundef %3) #6
  %17 = load ptr, ptr %5, align 8, !tbaa !100
  br label %18

18:                                               ; preds = %15, %11
  %19 = phi ptr [ %17, %15 ], [ %13, %11 ]
  %20 = icmp eq ptr %19, %0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.initial_value_pair, ptr %0, i64 %12, i32 1
  tail call void %2(ptr noundef nonnull %22, ptr noundef %3) #6
  br label %23

23:                                               ; preds = %18, %21
  %24 = add i64 %12, 1
  %25 = load i32, ptr %1, align 8, !tbaa !97
  %26 = sext i32 %25 to i64
  %27 = icmp eq i64 %24, %26
  br i1 %27, label %28, label %11, !llvm.loop !128

28:                                               ; preds = %23, %8
  %29 = icmp eq ptr %1, %0
  br i1 %29, label %30, label %31

30:                                               ; preds = %28
  tail call void %2(ptr noundef nonnull %5, ptr noundef %3) #6
  br label %31

31:                                               ; preds = %28, %30, %4
  ret void
}

; Function Attrs: optsize
declare void @gt_pch_nx_rtx_def(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !78 !PGOFuncName !129 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !130
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !prof !78 !PGOFuncName !132 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !111
  ret ptr %5
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!49}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48}
!35 = !{ptr @function_attribute_inlinable_p, ptr @is_attribute_p, i64 10}
!36 = !{ptr @emit_initial_value_sets, ptr @start_sequence, i64 1}
!37 = !{ptr @emit_initial_value_sets, ptr @emit_move_insn, i64 19}
!38 = !{ptr @emit_initial_value_sets, ptr @get_insns, i64 1}
!39 = !{ptr @emit_initial_value_sets, ptr @end_sequence, i64 1}
!40 = !{ptr @emit_initial_value_sets, ptr @emit_insn_at_entry, i64 1}
!41 = !{ptr @allocate_initial_values, ptr @rhs_regno, i64 23}
!42 = !{ptr @allocate_initial_values, ptr @REG_N_SETS, i64 7}
!43 = !{ptr @allocate_initial_values, ptr @fancy_abort, i64 1}
!44 = !{ptr @allocate_initial_values, ptr @df_ref_change_reg_with_loc, i64 2}
!45 = !{ptr @allocate_initial_values, ptr @df_get_live_in, i64 80}
!46 = !{ptr @allocate_initial_values, ptr @bitmap_bit_p, i64 98}
!47 = !{ptr @allocate_initial_values, ptr @bitmap_set_bit, i64 62}
!48 = !{ptr @allocate_initial_values, ptr @df_get_live_out, i64 80}
!49 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!50 = !{!"function_entry_count", i64 119}
!51 = !{!52, !54, i64 824}
!52 = !{!"gcc_target", !53, i64 0, !58, i64 368, !59, i64 664, !60, i64 744, !54, i64 752, !54, i64 760, !54, i64 768, !54, i64 776, !54, i64 784, !54, i64 792, !54, i64 800, !54, i64 808, !54, i64 816, !54, i64 824, !54, i64 832, !54, i64 840, !54, i64 848, !54, i64 856, !54, i64 864, !54, i64 872, !54, i64 880, !54, i64 888, !54, i64 896, !54, i64 904, !54, i64 912, !54, i64 920, !54, i64 928, !54, i64 936, !54, i64 944, !54, i64 952, !54, i64 960, !54, i64 968, !54, i64 976, !54, i64 984, !54, i64 992, !54, i64 1000, !54, i64 1008, !54, i64 1016, !54, i64 1024, !54, i64 1032, !54, i64 1040, !54, i64 1048, !54, i64 1056, !61, i64 1064, !61, i64 1072, !54, i64 1080, !54, i64 1088, !54, i64 1096, !54, i64 1104, !54, i64 1112, !54, i64 1120, !54, i64 1128, !54, i64 1136, !54, i64 1144, !54, i64 1152, !54, i64 1160, !54, i64 1168, !62, i64 1176, !54, i64 1232, !54, i64 1240, !54, i64 1248, !54, i64 1256, !54, i64 1264, !54, i64 1272, !54, i64 1280, !54, i64 1288, !54, i64 1296, !54, i64 1304, !54, i64 1312, !54, i64 1320, !54, i64 1328, !54, i64 1336, !54, i64 1344, !54, i64 1352, !54, i64 1360, !54, i64 1368, !54, i64 1376, !54, i64 1384, !54, i64 1392, !54, i64 1400, !54, i64 1408, !54, i64 1416, !54, i64 1424, !54, i64 1432, !54, i64 1440, !54, i64 1448, !54, i64 1456, !61, i64 1464, !63, i64 1472, !54, i64 1664, !54, i64 1672, !54, i64 1680, !54, i64 1688, !54, i64 1696, !54, i64 1704, !54, i64 1712, !54, i64 1720, !54, i64 1728, !54, i64 1736, !54, i64 1744, !54, i64 1752, !54, i64 1760, !54, i64 1768, !54, i64 1776, !64, i64 1784, !65, i64 1792, !66, i64 1896, !67, i64 1968, !54, i64 2016, !55, i64 2024, !55, i64 2025, !55, i64 2026, !55, i64 2027, !55, i64 2028, !55, i64 2029, !55, i64 2030, !55, i64 2031, !55, i64 2032, !55, i64 2033, !55, i64 2034, !55, i64 2035}
!53 = !{!"asm_out", !54, i64 0, !54, i64 8, !54, i64 16, !57, i64 24, !57, i64 56, !54, i64 88, !54, i64 96, !54, i64 104, !54, i64 112, !54, i64 120, !54, i64 128, !54, i64 136, !54, i64 144, !54, i64 152, !54, i64 160, !54, i64 168, !54, i64 176, !54, i64 184, !54, i64 192, !54, i64 200, !54, i64 208, !54, i64 216, !54, i64 224, !54, i64 232, !54, i64 240, !54, i64 248, !54, i64 256, !54, i64 264, !54, i64 272, !54, i64 280, !54, i64 288, !54, i64 296, !54, i64 304, !54, i64 312, !54, i64 320, !54, i64 328, !54, i64 336, !54, i64 344, !54, i64 352, !54, i64 360}
!54 = !{!"any pointer", !55, i64 0}
!55 = !{!"omnipotent char", !56, i64 0}
!56 = !{!"Simple C/C++ TBAA"}
!57 = !{!"asm_int_op", !54, i64 0, !54, i64 8, !54, i64 16, !54, i64 24}
!58 = !{!"sched", !54, i64 0, !54, i64 8, !54, i64 16, !54, i64 24, !54, i64 32, !54, i64 40, !54, i64 48, !54, i64 56, !54, i64 64, !54, i64 72, !54, i64 80, !54, i64 88, !54, i64 96, !54, i64 104, !54, i64 112, !54, i64 120, !54, i64 128, !54, i64 136, !54, i64 144, !54, i64 152, !54, i64 160, !54, i64 168, !54, i64 176, !54, i64 184, !54, i64 192, !54, i64 200, !54, i64 208, !54, i64 216, !54, i64 224, !54, i64 232, !54, i64 240, !54, i64 248, !54, i64 256, !54, i64 264, !54, i64 272, !54, i64 280, !54, i64 288}
!59 = !{!"vectorize", !54, i64 0, !54, i64 8, !54, i64 16, !54, i64 24, !54, i64 32, !54, i64 40, !54, i64 48, !54, i64 56, !54, i64 64, !54, i64 72}
!60 = !{!"int", !55, i64 0}
!61 = !{!"long", !55, i64 0}
!62 = !{!"addr_space", !54, i64 0, !54, i64 8, !54, i64 16, !54, i64 24, !54, i64 32, !54, i64 40, !54, i64 48}
!63 = !{!"calls", !54, i64 0, !54, i64 8, !54, i64 16, !54, i64 24, !54, i64 32, !54, i64 40, !54, i64 48, !54, i64 56, !54, i64 64, !54, i64 72, !54, i64 80, !54, i64 88, !54, i64 96, !54, i64 104, !54, i64 112, !54, i64 120, !54, i64 128, !54, i64 136, !54, i64 144, !54, i64 152, !54, i64 160, !54, i64 168, !54, i64 176, !54, i64 184}
!64 = !{!"c", !54, i64 0}
!65 = !{!"cxx", !54, i64 0, !54, i64 8, !54, i64 16, !54, i64 24, !54, i64 32, !54, i64 40, !54, i64 48, !54, i64 56, !54, i64 64, !54, i64 72, !54, i64 80, !54, i64 88, !54, i64 96}
!66 = !{!"emutls", !54, i64 0, !54, i64 8, !54, i64 16, !54, i64 24, !54, i64 32, !54, i64 40, !54, i64 48, !54, i64 56, !55, i64 64, !55, i64 65}
!67 = !{!"target_option_hooks", !54, i64 0, !54, i64 8, !54, i64 16, !54, i64 24, !54, i64 32, !54, i64 40}
!68 = !{!"branch_weights", i32 1, i32 120}
!69 = !{!55, !55, i64 0}
!70 = !{!"branch_weights", i32 119, i32 1}
!71 = !{!72, !54, i64 0}
!72 = !{!"attribute_spec", !54, i64 0, !60, i64 8, !60, i64 12, !55, i64 16, !55, i64 17, !55, i64 18, !54, i64 24}
!73 = distinct !{!73, !74}
!74 = !{!"llvm.loop.mustprogress"}
!75 = !{!"branch_weights", i32 1, i32 0}
!76 = distinct !{!76, !74}
!77 = !{!52, !54, i64 856}
!78 = !{!"function_entry_count", i64 0}
!79 = distinct !{!79, !74}
!80 = !{!"integrate.c:set_block_origin_self"}
!81 = distinct !{!81, !74}
!82 = distinct !{!82, !74}
!83 = distinct !{!83, !74}
!84 = !{!"integrate.c:set_block_abstract_flags"}
!85 = distinct !{!85, !74}
!86 = distinct !{!86, !74}
!87 = distinct !{!87, !74}
!88 = !{!89, !54, i64 328}
!89 = !{!"rtl_data", !90, i64 0, !91, i64 40, !92, i64 96, !93, i64 112, !95, i64 208, !96, i64 248, !60, i64 312, !54, i64 320, !54, i64 328, !54, i64 336, !54, i64 344, !54, i64 352, !54, i64 360, !54, i64 368, !54, i64 376, !54, i64 384, !54, i64 392, !61, i64 400, !54, i64 408, !54, i64 416, !54, i64 424, !60, i64 432, !60, i64 436, !60, i64 440, !60, i64 444, !60, i64 448, !60, i64 452, !54, i64 456, !55, i64 464, !55, i64 465, !55, i64 466, !55, i64 467, !55, i64 468, !55, i64 469, !55, i64 470, !55, i64 471, !55, i64 472, !55, i64 473, !55, i64 474, !55, i64 475, !55, i64 476, !55, i64 477, !55, i64 478, !55, i64 479, !55, i64 480, !55, i64 481, !55, i64 482, !55, i64 483, !55, i64 484, !55, i64 485}
!90 = !{!"expr_status", !60, i64 0, !60, i64 4, !60, i64 8, !54, i64 16, !54, i64 24, !54, i64 32}
!91 = !{!"emit_status", !60, i64 0, !60, i64 4, !54, i64 8, !54, i64 16, !54, i64 24, !60, i64 32, !60, i64 36, !60, i64 40, !60, i64 44, !54, i64 48}
!92 = !{!"varasm_status", !54, i64 0, !60, i64 8}
!93 = !{!"incoming_args", !60, i64 0, !60, i64 4, !60, i64 8, !54, i64 16, !94, i64 24, !54, i64 88}
!94 = !{!"ix86_args", !60, i64 0, !60, i64 4, !60, i64 8, !60, i64 12, !60, i64 16, !60, i64 20, !60, i64 24, !60, i64 28, !60, i64 32, !60, i64 36, !60, i64 40, !60, i64 44, !60, i64 48, !60, i64 52, !60, i64 56, !60, i64 60}
!95 = !{!"function_subsections", !54, i64 0, !54, i64 8, !54, i64 16, !54, i64 24, !54, i64 32}
!96 = !{!"rtl_eh", !54, i64 0, !54, i64 8, !54, i64 16, !54, i64 24, !54, i64 32, !54, i64 40, !55, i64 48}
!97 = !{!98, !60, i64 0}
!98 = !{!"initial_value_struct", !60, i64 0, !60, i64 4, !54, i64 8}
!99 = distinct !{!99, !74}
!100 = !{!98, !54, i64 8}
!101 = !{!102, !54, i64 8}
!102 = !{!"initial_value_pair", !54, i64 0, !54, i64 8}
!103 = !{!102, !54, i64 0}
!104 = !{!98, !60, i64 4}
!105 = distinct !{!105, !74}
!106 = !{!"integrate.c:rhs_regno"}
!107 = !{!"function_entry_count", i64 38}
!108 = !{!"branch_weights", i32 39, i32 1}
!109 = distinct !{!109, !74}
!110 = !{!52, !54, i64 1264}
!111 = !{!54, !54, i64 0}
!112 = !{!113, !113, i64 0}
!113 = !{!"short", !55, i64 0}
!114 = !{!115, !54, i64 8}
!115 = !{!"function", !54, i64 0, !54, i64 8, !54, i64 16, !54, i64 24, !54, i64 32, !54, i64 40, !54, i64 48, !54, i64 56, !54, i64 64, !54, i64 72, !54, i64 80, !54, i64 88, !54, i64 96, !60, i64 104, !60, i64 108, !60, i64 112, !60, i64 116, !60, i64 120, !60, i64 124, !54, i64 128, !60, i64 136, !60, i64 137, !60, i64 138, !60, i64 138, !60, i64 138, !60, i64 138, !60, i64 138, !60, i64 138, !60, i64 138, !60, i64 139, !60, i64 139, !60, i64 139, !60, i64 139, !60, i64 139, !60, i64 139, !60, i64 139}
!116 = !{!117, !54, i64 0}
!117 = !{!"control_flow_graph", !54, i64 0, !54, i64 8, !54, i64 16, !60, i64 24, !60, i64 28, !60, i64 32, !54, i64 40, !60, i64 48, !55, i64 52, !55, i64 60, !60, i64 68, !60, i64 72}
!118 = !{!119, !54, i64 56}
!119 = !{!"basic_block_def", !54, i64 0, !54, i64 8, !54, i64 16, !54, i64 24, !55, i64 32, !54, i64 48, !54, i64 56, !55, i64 64, !61, i64 72, !60, i64 80, !60, i64 84, !60, i64 88, !60, i64 92, !60, i64 96}
!120 = !{!117, !54, i64 8}
!121 = distinct !{!121, !74}
!122 = distinct !{!122, !74}
!123 = !{!"integrate.c:REG_N_SETS"}
!124 = !{!125, !60, i64 0}
!125 = !{!"regstat_n_sets_and_refs_t", !60, i64 0, !60, i64 4}
!126 = distinct !{!126, !74}
!127 = distinct !{!127, !74}
!128 = distinct !{!128, !74}
!129 = !{!"integrate.c:VEC_tree_base_length"}
!130 = !{!131, !60, i64 0}
!131 = !{!"VEC_tree_base", !60, i64 0, !60, i64 4, !55, i64 8}
!132 = !{!"integrate.c:VEC_tree_base_index"}
