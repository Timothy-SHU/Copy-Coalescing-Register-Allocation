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
define dso_local zeroext i8 @function_attribute_inlinable_p(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 13), align 8, !tbaa !5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %34, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !22
  %7 = icmp eq ptr %6, null
  br i1 %7, label %34, label %8

8:                                                ; preds = %4, %26
  %9 = phi ptr [ %27, %26 ], [ %2, %4 ]
  %10 = phi ptr [ %29, %26 ], [ %6, %4 ]
  %11 = getelementptr inbounds %struct.tree_list, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !22
  %13 = load ptr, ptr %9, align 8, !tbaa !23
  %14 = icmp eq ptr %13, null
  br i1 %14, label %26, label %21

15:                                               ; preds = %21
  %16 = add nuw i64 %22, 1
  %17 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 13), align 8, !tbaa !5
  %18 = getelementptr inbounds %struct.attribute_spec, ptr %17, i64 %16
  %19 = load ptr, ptr %18, align 8, !tbaa !23
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21, !llvm.loop !25

21:                                               ; preds = %8, %15
  %22 = phi i64 [ %16, %15 ], [ 0, %8 ]
  %23 = phi ptr [ %19, %15 ], [ %13, %8 ]
  %24 = tail call i32 @is_attribute_p(ptr noundef nonnull %23, ptr noundef %12) #6
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %15, label %31

26:                                               ; preds = %15, %8
  %27 = phi ptr [ %9, %8 ], [ %17, %15 ]
  %28 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !22
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %8, !llvm.loop !27

31:                                               ; preds = %21
  %32 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 17), align 8, !tbaa !28
  %33 = tail call zeroext i8 %32(ptr noundef %0) #6
  br label %34

34:                                               ; preds = %26, %1, %4, %31
  %35 = phi i8 [ %33, %31 ], [ 1, %4 ], [ 1, %1 ], [ 1, %26 ]
  ret i8 %35
}

; Function Attrs: optsize
declare i32 @is_attribute_p(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @set_decl_origin_self(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !22
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %27

5:                                                ; preds = %1
  store ptr %0, ptr %2, align 8, !tbaa !22
  %6 = load i64, ptr %0, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 29
  br i1 %8, label %9, label %27

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !22
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %9, %13
  %14 = phi ptr [ %17, %13 ], [ %11, %9 ]
  %15 = getelementptr inbounds %struct.tree_decl_common, ptr %14, i64 0, i32 7
  store ptr %14, ptr %15, align 8, !tbaa !22
  %16 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !22
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %13, !llvm.loop !29

19:                                               ; preds = %13, %9
  %20 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !22
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
define internal fastcc void @set_block_origin_self(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !22
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %23

5:                                                ; preds = %1
  store ptr %0, ptr %2, align 8, !tbaa !22
  %6 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !22
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5, %9
  %10 = phi ptr [ %12, %9 ], [ %7, %5 ]
  tail call void @set_decl_origin_self(ptr noundef nonnull %10) #7
  %11 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !22
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %9, !llvm.loop !30

14:                                               ; preds = %9, %5
  %15 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !22
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %14, %18
  %19 = phi ptr [ %21, %18 ], [ %16, %14 ]
  tail call fastcc void @set_block_origin_self(ptr noundef nonnull %19) #7
  %20 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !22
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %18, !llvm.loop !31

23:                                               ; preds = %18, %14, %1
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @set_decl_abstract_flags(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #2 {
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
  %15 = load ptr, ptr %14, align 8, !tbaa !22
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
  %24 = load ptr, ptr %23, align 8, !tbaa !22
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %17, !llvm.loop !32

26:                                               ; preds = %17, %13
  %27 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !22
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
define internal fastcc void @set_block_abstract_flags(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %1, 1
  %6 = and i32 %4, -2
  %7 = or disjoint i32 %6, %5
  store i32 %7, ptr %3, align 8
  %8 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !22
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %16, %2
  %12 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !22
  %14 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %13) #7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %38, label %21

16:                                               ; preds = %2, %16
  %17 = phi ptr [ %19, %16 ], [ %9, %2 ]
  tail call void @set_decl_abstract_flags(ptr noundef nonnull %17, i32 noundef %1) #7
  %18 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !22
  %20 = icmp eq ptr %19, null
  br i1 %20, label %11, label %16, !llvm.loop !33

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
  %32 = load ptr, ptr %12, align 8, !tbaa !22
  br label %33

33:                                               ; preds = %21, %31
  %34 = phi ptr [ %22, %21 ], [ %32, %31 ]
  %35 = add nuw i32 %23, 1
  %36 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %34) #7
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %21, label %38, !llvm.loop !34

38:                                               ; preds = %33, %11
  %39 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 5
  %40 = load ptr, ptr %39, align 8, !tbaa !22
  %41 = icmp eq ptr %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %38, %42
  %43 = phi ptr [ %45, %42 ], [ %40, %38 ]
  tail call fastcc void @set_block_abstract_flags(ptr noundef nonnull %43, i32 noundef %1) #7
  %44 = getelementptr inbounds %struct.tree_common, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !22
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %42, !llvm.loop !35

47:                                               ; preds = %42, %38
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_hard_reg_initial_reg(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 8), align 8, !tbaa !36
  %3 = icmp eq ptr %2, null
  br i1 %3, label %25, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8, !tbaa !45
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %25

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.initial_value_struct, ptr %2, i64 0, i32 2
  br label %14

9:                                                ; preds = %14
  %10 = add nuw nsw i64 %15, 1
  %11 = load i32, ptr %2, align 8, !tbaa !45
  %12 = sext i32 %11 to i64
  %13 = icmp slt i64 %10, %12
  br i1 %13, label %14, label %25, !llvm.loop !47

14:                                               ; preds = %7, %9
  %15 = phi i64 [ 0, %7 ], [ %10, %9 ]
  %16 = load ptr, ptr %8, align 8, !tbaa !48
  %17 = getelementptr inbounds %struct.initial_value_pair, ptr %16, i64 %15, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !49
  %19 = tail call i32 @rtx_equal_p(ptr noundef %18, ptr noundef %0) #6
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %9, label %21

21:                                               ; preds = %14
  %22 = load ptr, ptr %8, align 8, !tbaa !48
  %23 = getelementptr inbounds %struct.initial_value_pair, ptr %22, i64 %15
  %24 = load ptr, ptr %23, align 8, !tbaa !51
  br label %25

25:                                               ; preds = %9, %4, %1, %21
  %26 = phi ptr [ %24, %21 ], [ null, %1 ], [ null, %4 ], [ null, %9 ]
  ret ptr %26
}

; Function Attrs: optsize
declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_hard_reg_initial_val(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @has_hard_reg_initial_val(i32 noundef %0, i32 noundef %1) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %39

5:                                                ; preds = %2
  %6 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 8), align 8, !tbaa !36
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %5
  %9 = tail call ptr @ggc_alloc_stat(i64 noundef 16) #6
  store i32 0, ptr %9, align 8, !tbaa !45
  %10 = getelementptr inbounds %struct.initial_value_struct, ptr %9, i64 0, i32 1
  store i32 5, ptr %10, align 4, !tbaa !52
  %11 = tail call ptr @ggc_alloc_stat(i64 noundef 80) #6
  %12 = getelementptr inbounds %struct.initial_value_struct, ptr %9, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !48
  store ptr %9, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 8), align 8, !tbaa !36
  br label %13

13:                                               ; preds = %8, %5
  %14 = phi ptr [ %9, %8 ], [ %6, %5 ]
  %15 = load i32, ptr %14, align 8, !tbaa !45
  %16 = getelementptr inbounds %struct.initial_value_struct, ptr %14, i64 0, i32 1
  %17 = load i32, ptr %16, align 4, !tbaa !52
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %26, label %19

19:                                               ; preds = %13
  %20 = add nsw i32 %17, 5
  store i32 %20, ptr %16, align 4, !tbaa !52
  %21 = getelementptr inbounds %struct.initial_value_struct, ptr %14, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !48
  %23 = sext i32 %20 to i64
  %24 = shl nsw i64 %23, 4
  %25 = tail call ptr @ggc_realloc_stat(ptr noundef %22, i64 noundef %24) #6
  store ptr %25, ptr %21, align 8, !tbaa !48
  br label %26

26:                                               ; preds = %19, %13
  %27 = tail call ptr @gen_rtx_REG(i32 noundef %0, i32 noundef %1) #6
  %28 = getelementptr inbounds %struct.initial_value_struct, ptr %14, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !48
  %30 = load i32, ptr %14, align 8, !tbaa !45
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.initial_value_pair, ptr %29, i64 %31
  store ptr %27, ptr %32, align 8, !tbaa !51
  %33 = tail call ptr @gen_reg_rtx(i32 noundef %0) #6
  %34 = load ptr, ptr %28, align 8, !tbaa !48
  %35 = load i32, ptr %14, align 8, !tbaa !45
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.initial_value_pair, ptr %34, i64 %36, i32 1
  store ptr %33, ptr %37, align 8, !tbaa !49
  %38 = add nsw i32 %35, 1
  store i32 %38, ptr %14, align 8, !tbaa !45
  br label %39

39:                                               ; preds = %2, %26
  %40 = phi ptr [ %33, %26 ], [ %3, %2 ]
  ret ptr %40
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @has_hard_reg_initial_val(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 8), align 8, !tbaa !36
  %4 = icmp eq ptr %3, null
  br i1 %4, label %29, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 8, !tbaa !45
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %29

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.initial_value_struct, ptr %3, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !48
  %11 = zext nneg i32 %6 to i64
  br label %12

12:                                               ; preds = %8, %26
  %13 = phi i64 [ 0, %8 ], [ %27, %26 ]
  %14 = getelementptr inbounds %struct.initial_value_pair, ptr %10, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !51
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
  %25 = load ptr, ptr %24, align 8, !tbaa !49
  br label %29

26:                                               ; preds = %12, %20
  %27 = add nuw nsw i64 %13, 1
  %28 = icmp eq i64 %27, %11
  br i1 %28, label %29, label %12, !llvm.loop !53

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
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !22
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @emit_initial_value_sets() #0 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 8), align 8, !tbaa !36
  %2 = icmp eq ptr %1, null
  br i1 %2, label %22, label %3

3:                                                ; preds = %0
  tail call void @start_sequence() #6
  %4 = load i32, ptr %1, align 8, !tbaa !45
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.initial_value_struct, ptr %1, i64 0, i32 2
  br label %8

8:                                                ; preds = %6, %8
  %9 = phi i64 [ 0, %6 ], [ %16, %8 ]
  %10 = load ptr, ptr %7, align 8, !tbaa !48
  %11 = getelementptr inbounds %struct.initial_value_pair, ptr %10, i64 %9
  %12 = getelementptr inbounds %struct.initial_value_pair, ptr %10, i64 %9, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !49
  %14 = load ptr, ptr %11, align 8, !tbaa !51
  %15 = tail call ptr @emit_move_insn(ptr noundef %13, ptr noundef %14) #6
  %16 = add nuw nsw i64 %9, 1
  %17 = load i32, ptr %1, align 8, !tbaa !45
  %18 = sext i32 %17 to i64
  %19 = icmp slt i64 %16, %18
  br i1 %19, label %8, label %20, !llvm.loop !54

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
define dso_local void @allocate_initial_values(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 62), align 8, !tbaa !55
  %3 = icmp eq ptr %2, null
  br i1 %3, label %90, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 8), align 8, !tbaa !36
  %6 = icmp eq ptr %5, null
  br i1 %6, label %90, label %7

7:                                                ; preds = %4
  %8 = load i32, ptr %5, align 8, !tbaa !45
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %90

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.initial_value_struct, ptr %5, i64 0, i32 2
  br label %12

12:                                               ; preds = %10, %85
  %13 = phi i64 [ 0, %10 ], [ %86, %85 ]
  %14 = load ptr, ptr %11, align 8, !tbaa !48
  %15 = getelementptr inbounds %struct.initial_value_pair, ptr %14, i64 %13, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !49
  %17 = tail call fastcc i32 @rhs_regno(ptr noundef %16) #7
  %18 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 62), align 8, !tbaa !55
  %19 = getelementptr inbounds %struct.initial_value_pair, ptr %14, i64 %13
  %20 = load ptr, ptr %19, align 8, !tbaa !51
  %21 = tail call ptr %18(ptr noundef %20) #6
  %22 = icmp eq ptr %21, null
  br i1 %22, label %85, label %23

23:                                               ; preds = %12
  %24 = load ptr, ptr %11, align 8, !tbaa !48
  %25 = getelementptr inbounds %struct.initial_value_pair, ptr %24, i64 %13, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !49
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
  store ptr %21, ptr %35, align 8, !tbaa !56
  br label %85

36:                                               ; preds = %30
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 356, ptr noundef nonnull @.str.2) #6
  %37 = load ptr, ptr %11, align 8, !tbaa !48
  %38 = getelementptr inbounds %struct.initial_value_pair, ptr %37, i64 %13, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !49
  br label %40

40:                                               ; preds = %30, %36
  %41 = phi ptr [ %26, %30 ], [ %39, %36 ]
  %42 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %21) #7
  %43 = trunc i32 %42 to i16
  %44 = load ptr, ptr @reg_renumber, align 8, !tbaa !56
  %45 = sext i32 %17 to i64
  %46 = getelementptr inbounds i16, ptr %44, i64 %45
  store i16 %43, ptr %46, align 2, !tbaa !57
  %47 = tail call fastcc i32 @rhs_regno(ptr noundef %41) #7
  tail call void @df_ref_change_reg_with_loc(i32 noundef %47, i32 noundef %42, ptr noundef %41) #6
  %48 = load ptr, ptr %11, align 8, !tbaa !48
  %49 = getelementptr inbounds %struct.initial_value_pair, ptr %48, i64 %13, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !49
  %51 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1
  store i32 %42, ptr %51, align 8, !tbaa !22
  %52 = load ptr, ptr @cfun, align 8, !tbaa !56
  %53 = getelementptr inbounds %struct.function, ptr %52, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !59
  %55 = load ptr, ptr %54, align 8, !tbaa !61
  %56 = getelementptr inbounds %struct.basic_block_def, ptr %55, i64 0, i32 6
  %57 = load ptr, ptr %56, align 8, !tbaa !63
  %58 = getelementptr inbounds %struct.control_flow_graph, ptr %54, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !65
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
  %78 = load ptr, ptr %77, align 8, !tbaa !63
  %79 = load ptr, ptr @cfun, align 8, !tbaa !56
  %80 = getelementptr inbounds %struct.function, ptr %79, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !59
  %82 = getelementptr inbounds %struct.control_flow_graph, ptr %81, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !65
  %84 = icmp eq ptr %78, %83
  br i1 %84, label %85, label %61, !llvm.loop !66

85:                                               ; preds = %76, %40, %33, %23, %12
  %86 = add nuw nsw i64 %13, 1
  %87 = load i32, ptr %5, align 8, !tbaa !45
  %88 = sext i32 %87 to i64
  %89 = icmp slt i64 %86, %88
  br i1 %89, label %12, label %90, !llvm.loop !67

90:                                               ; preds = %85, %7, %4, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @REG_N_SETS(i32 noundef %0) unnamed_addr #5 {
  %2 = load ptr, ptr @regstat_n_sets_and_refs, align 8, !tbaa !56
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds %struct.regstat_n_sets_and_refs_t, ptr %2, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !68
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
define dso_local void @gt_ggc_mx_initial_value_struct(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %39, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %39

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.initial_value_struct, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = icmp eq ptr %8, null
  br i1 %9, label %39, label %10

10:                                               ; preds = %6
  %11 = load i32, ptr %0, align 8, !tbaa !45
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %34, label %13

13:                                               ; preds = %10, %27
  %14 = phi i64 [ %28, %27 ], [ 0, %10 ]
  %15 = load ptr, ptr %7, align 8, !tbaa !48
  %16 = getelementptr inbounds %struct.initial_value_pair, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !51
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %13
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %17) #6
  %20 = load ptr, ptr %7, align 8, !tbaa !48
  br label %21

21:                                               ; preds = %13, %19
  %22 = phi ptr [ %15, %13 ], [ %20, %19 ]
  %23 = getelementptr inbounds %struct.initial_value_pair, ptr %22, i64 %14, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !49
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %24) #6
  br label %27

27:                                               ; preds = %21, %26
  %28 = add i64 %14, 1
  %29 = load i32, ptr %0, align 8, !tbaa !45
  %30 = sext i32 %29 to i64
  %31 = icmp eq i64 %28, %30
  br i1 %31, label %32, label %13, !llvm.loop !70

32:                                               ; preds = %27
  %33 = load ptr, ptr %7, align 8, !tbaa !48
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
define dso_local void @gt_pch_nx_initial_value_struct(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_20initial_value_struct, i32 noundef 121) #6
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %35, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.initial_value_struct, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp eq ptr %6, null
  br i1 %7, label %35, label %8

8:                                                ; preds = %4
  %9 = load i32, ptr %0, align 8, !tbaa !45
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %32, label %11

11:                                               ; preds = %8, %25
  %12 = phi i64 [ %26, %25 ], [ 0, %8 ]
  %13 = load ptr, ptr %5, align 8, !tbaa !48
  %14 = getelementptr inbounds %struct.initial_value_pair, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !51
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %11
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %15) #6
  %18 = load ptr, ptr %5, align 8, !tbaa !48
  br label %19

19:                                               ; preds = %11, %17
  %20 = phi ptr [ %13, %11 ], [ %18, %17 ]
  %21 = getelementptr inbounds %struct.initial_value_pair, ptr %20, i64 %12, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !49
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %22) #6
  br label %25

25:                                               ; preds = %19, %24
  %26 = add i64 %12, 1
  %27 = load i32, ptr %0, align 8, !tbaa !45
  %28 = sext i32 %27 to i64
  %29 = icmp eq i64 %26, %28
  br i1 %29, label %30, label %11, !llvm.loop !71

30:                                               ; preds = %25
  %31 = load ptr, ptr %5, align 8, !tbaa !48
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
define dso_local void @gt_pch_p_20initial_value_struct(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.initial_value_struct, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp eq ptr %6, null
  br i1 %7, label %31, label %8

8:                                                ; preds = %4
  %9 = load i32, ptr %1, align 8, !tbaa !45
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %28, label %11

11:                                               ; preds = %8, %23
  %12 = phi i64 [ %24, %23 ], [ 0, %8 ]
  %13 = load ptr, ptr %5, align 8, !tbaa !48
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.initial_value_pair, ptr %0, i64 %12
  tail call void %2(ptr noundef %16, ptr noundef %3) #6
  %17 = load ptr, ptr %5, align 8, !tbaa !48
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
  %25 = load i32, ptr %1, align 8, !tbaa !45
  %26 = sext i32 %25 to i64
  %27 = icmp eq i64 %24, %26
  br i1 %27, label %28, label %11, !llvm.loop !72

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
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !73
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !56
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

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !8, i64 824}
!6 = !{!"gcc_target", !7, i64 0, !12, i64 368, !13, i64 664, !14, i64 744, !8, i64 752, !8, i64 760, !8, i64 768, !8, i64 776, !8, i64 784, !8, i64 792, !8, i64 800, !8, i64 808, !8, i64 816, !8, i64 824, !8, i64 832, !8, i64 840, !8, i64 848, !8, i64 856, !8, i64 864, !8, i64 872, !8, i64 880, !8, i64 888, !8, i64 896, !8, i64 904, !8, i64 912, !8, i64 920, !8, i64 928, !8, i64 936, !8, i64 944, !8, i64 952, !8, i64 960, !8, i64 968, !8, i64 976, !8, i64 984, !8, i64 992, !8, i64 1000, !8, i64 1008, !8, i64 1016, !8, i64 1024, !8, i64 1032, !8, i64 1040, !8, i64 1048, !8, i64 1056, !15, i64 1064, !15, i64 1072, !8, i64 1080, !8, i64 1088, !8, i64 1096, !8, i64 1104, !8, i64 1112, !8, i64 1120, !8, i64 1128, !8, i64 1136, !8, i64 1144, !8, i64 1152, !8, i64 1160, !8, i64 1168, !16, i64 1176, !8, i64 1232, !8, i64 1240, !8, i64 1248, !8, i64 1256, !8, i64 1264, !8, i64 1272, !8, i64 1280, !8, i64 1288, !8, i64 1296, !8, i64 1304, !8, i64 1312, !8, i64 1320, !8, i64 1328, !8, i64 1336, !8, i64 1344, !8, i64 1352, !8, i64 1360, !8, i64 1368, !8, i64 1376, !8, i64 1384, !8, i64 1392, !8, i64 1400, !8, i64 1408, !8, i64 1416, !8, i64 1424, !8, i64 1432, !8, i64 1440, !8, i64 1448, !8, i64 1456, !15, i64 1464, !17, i64 1472, !8, i64 1664, !8, i64 1672, !8, i64 1680, !8, i64 1688, !8, i64 1696, !8, i64 1704, !8, i64 1712, !8, i64 1720, !8, i64 1728, !8, i64 1736, !8, i64 1744, !8, i64 1752, !8, i64 1760, !8, i64 1768, !8, i64 1776, !18, i64 1784, !19, i64 1792, !20, i64 1896, !21, i64 1968, !8, i64 2016, !9, i64 2024, !9, i64 2025, !9, i64 2026, !9, i64 2027, !9, i64 2028, !9, i64 2029, !9, i64 2030, !9, i64 2031, !9, i64 2032, !9, i64 2033, !9, i64 2034, !9, i64 2035}
!7 = !{!"asm_out", !8, i64 0, !8, i64 8, !8, i64 16, !11, i64 24, !11, i64 56, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !8, i64 160, !8, i64 168, !8, i64 176, !8, i64 184, !8, i64 192, !8, i64 200, !8, i64 208, !8, i64 216, !8, i64 224, !8, i64 232, !8, i64 240, !8, i64 248, !8, i64 256, !8, i64 264, !8, i64 272, !8, i64 280, !8, i64 288, !8, i64 296, !8, i64 304, !8, i64 312, !8, i64 320, !8, i64 328, !8, i64 336, !8, i64 344, !8, i64 352, !8, i64 360}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"asm_int_op", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24}
!12 = !{!"sched", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !8, i64 160, !8, i64 168, !8, i64 176, !8, i64 184, !8, i64 192, !8, i64 200, !8, i64 208, !8, i64 216, !8, i64 224, !8, i64 232, !8, i64 240, !8, i64 248, !8, i64 256, !8, i64 264, !8, i64 272, !8, i64 280, !8, i64 288}
!13 = !{!"vectorize", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72}
!14 = !{!"int", !9, i64 0}
!15 = !{!"long", !9, i64 0}
!16 = !{!"addr_space", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48}
!17 = !{!"calls", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !8, i64 160, !8, i64 168, !8, i64 176, !8, i64 184}
!18 = !{!"c", !8, i64 0}
!19 = !{!"cxx", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96}
!20 = !{!"emutls", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !9, i64 64, !9, i64 65}
!21 = !{!"target_option_hooks", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40}
!22 = !{!9, !9, i64 0}
!23 = !{!24, !8, i64 0}
!24 = !{!"attribute_spec", !8, i64 0, !14, i64 8, !14, i64 12, !9, i64 16, !9, i64 17, !9, i64 18, !8, i64 24}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = distinct !{!27, !26}
!28 = !{!6, !8, i64 856}
!29 = distinct !{!29, !26}
!30 = distinct !{!30, !26}
!31 = distinct !{!31, !26}
!32 = distinct !{!32, !26}
!33 = distinct !{!33, !26}
!34 = distinct !{!34, !26}
!35 = distinct !{!35, !26}
!36 = !{!37, !8, i64 328}
!37 = !{!"rtl_data", !38, i64 0, !39, i64 40, !40, i64 96, !41, i64 112, !43, i64 208, !44, i64 248, !14, i64 312, !8, i64 320, !8, i64 328, !8, i64 336, !8, i64 344, !8, i64 352, !8, i64 360, !8, i64 368, !8, i64 376, !8, i64 384, !8, i64 392, !15, i64 400, !8, i64 408, !8, i64 416, !8, i64 424, !14, i64 432, !14, i64 436, !14, i64 440, !14, i64 444, !14, i64 448, !14, i64 452, !8, i64 456, !9, i64 464, !9, i64 465, !9, i64 466, !9, i64 467, !9, i64 468, !9, i64 469, !9, i64 470, !9, i64 471, !9, i64 472, !9, i64 473, !9, i64 474, !9, i64 475, !9, i64 476, !9, i64 477, !9, i64 478, !9, i64 479, !9, i64 480, !9, i64 481, !9, i64 482, !9, i64 483, !9, i64 484, !9, i64 485}
!38 = !{!"expr_status", !14, i64 0, !14, i64 4, !14, i64 8, !8, i64 16, !8, i64 24, !8, i64 32}
!39 = !{!"emit_status", !14, i64 0, !14, i64 4, !8, i64 8, !8, i64 16, !8, i64 24, !14, i64 32, !14, i64 36, !14, i64 40, !14, i64 44, !8, i64 48}
!40 = !{!"varasm_status", !8, i64 0, !14, i64 8}
!41 = !{!"incoming_args", !14, i64 0, !14, i64 4, !14, i64 8, !8, i64 16, !42, i64 24, !8, i64 88}
!42 = !{!"ix86_args", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20, !14, i64 24, !14, i64 28, !14, i64 32, !14, i64 36, !14, i64 40, !14, i64 44, !14, i64 48, !14, i64 52, !14, i64 56, !14, i64 60}
!43 = !{!"function_subsections", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32}
!44 = !{!"rtl_eh", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !9, i64 48}
!45 = !{!46, !14, i64 0}
!46 = !{!"initial_value_struct", !14, i64 0, !14, i64 4, !8, i64 8}
!47 = distinct !{!47, !26}
!48 = !{!46, !8, i64 8}
!49 = !{!50, !8, i64 8}
!50 = !{!"initial_value_pair", !8, i64 0, !8, i64 8}
!51 = !{!50, !8, i64 0}
!52 = !{!46, !14, i64 4}
!53 = distinct !{!53, !26}
!54 = distinct !{!54, !26}
!55 = !{!6, !8, i64 1264}
!56 = !{!8, !8, i64 0}
!57 = !{!58, !58, i64 0}
!58 = !{!"short", !9, i64 0}
!59 = !{!60, !8, i64 8}
!60 = !{!"function", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !14, i64 104, !14, i64 108, !14, i64 112, !14, i64 116, !14, i64 120, !14, i64 124, !8, i64 128, !14, i64 136, !14, i64 137, !14, i64 138, !14, i64 138, !14, i64 138, !14, i64 138, !14, i64 138, !14, i64 138, !14, i64 138, !14, i64 139, !14, i64 139, !14, i64 139, !14, i64 139, !14, i64 139, !14, i64 139, !14, i64 139}
!61 = !{!62, !8, i64 0}
!62 = !{!"control_flow_graph", !8, i64 0, !8, i64 8, !8, i64 16, !14, i64 24, !14, i64 28, !14, i64 32, !8, i64 40, !14, i64 48, !9, i64 52, !9, i64 60, !14, i64 68, !14, i64 72}
!63 = !{!64, !8, i64 56}
!64 = !{!"basic_block_def", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !9, i64 32, !8, i64 48, !8, i64 56, !9, i64 64, !15, i64 72, !14, i64 80, !14, i64 84, !14, i64 88, !14, i64 92, !14, i64 96}
!65 = !{!62, !8, i64 8}
!66 = distinct !{!66, !26}
!67 = distinct !{!67, !26}
!68 = !{!69, !14, i64 0}
!69 = !{!"regstat_n_sets_and_refs_t", !14, i64 0, !14, i64 4}
!70 = distinct !{!70, !26}
!71 = distinct !{!71, !26}
!72 = distinct !{!72, !26}
!73 = !{!74, !14, i64 0}
!74 = !{!"VEC_tree_base", !14, i64 0, !14, i64 4, !9, i64 8}
