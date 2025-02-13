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
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
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

@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8
@pass_initial_value_sets = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str, ptr null, ptr @emit_initial_value_sets, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1 } }, align 8
@.str = private unnamed_addr constant [9 x i8] c"initvals\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"integrate.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@reg_renumber = external local_unnamed_addr global ptr, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@regstat_n_sets_and_refs = external local_unnamed_addr global ptr, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @function_attribute_inlinable_p(ptr noundef %0) local_unnamed_addr #0 !prof !51 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 13), align 8, !tbaa !52
  %3 = icmp eq ptr %2, null
  br i1 %3, label %34, label %4, !prof !69

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !70
  %7 = icmp eq ptr %6, null
  br i1 %7, label %34, label %8, !prof !71

8:                                                ; preds = %4, %26
  %9 = phi ptr [ %27, %26 ], [ %2, %4 ]
  %10 = phi ptr [ %29, %26 ], [ %6, %4 ]
  %11 = getelementptr inbounds %struct.tree_list, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !70
  %13 = load ptr, ptr %9, align 8, !tbaa !72
  %14 = icmp eq ptr %13, null
  br i1 %14, label %26, label %21, !prof !74

15:                                               ; preds = %21
  %16 = add nuw i64 %22, 1
  %17 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 13), align 8, !tbaa !52
  %18 = getelementptr inbounds %struct.attribute_spec, ptr %17, i64 %16
  %19 = load ptr, ptr %18, align 8, !tbaa !72
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21, !prof !75, !llvm.loop !76

21:                                               ; preds = %8, %15
  %22 = phi i64 [ %16, %15 ], [ 0, %8 ]
  %23 = phi ptr [ %19, %15 ], [ %13, %8 ]
  %24 = tail call i32 @is_attribute_p(ptr noundef nonnull %23, ptr noundef %12) #6
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %15, label %31, !prof !78

26:                                               ; preds = %15, %8
  %27 = phi ptr [ %9, %8 ], [ %17, %15 ]
  %28 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !70
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %8, !prof !79, !llvm.loop !80

31:                                               ; preds = %21
  %32 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 17), align 8, !tbaa !81
  %33 = tail call zeroext i8 %32(ptr noundef %0) #6
  br label %34

34:                                               ; preds = %26, %1, %4, %31
  %35 = phi i8 [ %33, %31 ], [ 1, %4 ], [ 1, %1 ], [ 1, %26 ]
  ret i8 %35
}

; Function Attrs: optsize
declare i32 @is_attribute_p(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @set_decl_origin_self(ptr noundef %0) local_unnamed_addr #2 !prof !82 {
  %2 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !70
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %27

5:                                                ; preds = %1
  store ptr %0, ptr %2, align 8, !tbaa !70
  %6 = load i64, ptr %0, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 29
  br i1 %8, label %9, label %27

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !70
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %9, %13
  %14 = phi ptr [ %17, %13 ], [ %11, %9 ]
  %15 = getelementptr inbounds %struct.tree_decl_common, ptr %14, i64 0, i32 7
  store ptr %14, ptr %15, align 8, !tbaa !70
  %16 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !70
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %13, !llvm.loop !83

19:                                               ; preds = %13, %9
  %20 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !70
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
define internal fastcc void @set_block_origin_self(ptr noundef %0) unnamed_addr #2 !prof !82 !PGOFuncName !84 {
  %2 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !70
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %23

5:                                                ; preds = %1
  store ptr %0, ptr %2, align 8, !tbaa !70
  %6 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !70
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5, %9
  %10 = phi ptr [ %12, %9 ], [ %7, %5 ]
  tail call void @set_decl_origin_self(ptr noundef nonnull %10) #7
  %11 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !70
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %9, !llvm.loop !85

14:                                               ; preds = %9, %5
  %15 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !70
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %14, %18
  %19 = phi ptr [ %21, %18 ], [ %16, %14 ]
  tail call fastcc void @set_block_origin_self(ptr noundef nonnull %19) #7
  %20 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !70
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %18, !llvm.loop !86

23:                                               ; preds = %18, %14, %1
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @set_decl_abstract_flags(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #2 !prof !82 {
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
  %15 = load ptr, ptr %14, align 8, !tbaa !70
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
  %24 = load ptr, ptr %23, align 8, !tbaa !70
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %17, !llvm.loop !87

26:                                               ; preds = %17, %13
  %27 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !70
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
define internal fastcc void @set_block_abstract_flags(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #2 !prof !82 !PGOFuncName !88 {
  %3 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %1, 1
  %6 = and i32 %4, -2
  %7 = or disjoint i32 %6, %5
  store i32 %7, ptr %3, align 8
  %8 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !70
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %16, %2
  %12 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !70
  %14 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %13) #7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %38, label %21

16:                                               ; preds = %2, %16
  %17 = phi ptr [ %19, %16 ], [ %9, %2 ]
  tail call void @set_decl_abstract_flags(ptr noundef nonnull %17, i32 noundef %1) #7
  %18 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !70
  %20 = icmp eq ptr %19, null
  br i1 %20, label %11, label %16, !llvm.loop !89

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
  %32 = load ptr, ptr %12, align 8, !tbaa !70
  br label %33

33:                                               ; preds = %21, %31
  %34 = phi ptr [ %22, %21 ], [ %32, %31 ]
  %35 = add nuw i32 %23, 1
  %36 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %34) #7
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %21, label %38, !llvm.loop !90

38:                                               ; preds = %33, %11
  %39 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 5
  %40 = load ptr, ptr %39, align 8, !tbaa !70
  %41 = icmp eq ptr %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %38, %42
  %43 = phi ptr [ %45, %42 ], [ %40, %38 ]
  tail call fastcc void @set_block_abstract_flags(ptr noundef nonnull %43, i32 noundef %1) #7
  %44 = getelementptr inbounds %struct.tree_common, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !70
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %42, !llvm.loop !91

47:                                               ; preds = %42, %38
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !82 !PGOFuncName !92 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !93
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !82 !PGOFuncName !95 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !96
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_hard_reg_initial_reg(ptr noundef %0) local_unnamed_addr #0 !prof !82 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 8), align 8, !tbaa !97
  %3 = icmp eq ptr %2, null
  br i1 %3, label %25, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8, !tbaa !106
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %25

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.initial_value_struct, ptr %2, i64 0, i32 2
  br label %14

9:                                                ; preds = %14
  %10 = add nuw nsw i64 %15, 1
  %11 = load i32, ptr %2, align 8, !tbaa !106
  %12 = sext i32 %11 to i64
  %13 = icmp slt i64 %10, %12
  br i1 %13, label %14, label %25, !llvm.loop !108

14:                                               ; preds = %7, %9
  %15 = phi i64 [ 0, %7 ], [ %10, %9 ]
  %16 = load ptr, ptr %8, align 8, !tbaa !109
  %17 = getelementptr inbounds %struct.initial_value_pair, ptr %16, i64 %15, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !110
  %19 = tail call i32 @rtx_equal_p(ptr noundef %18, ptr noundef %0) #6
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %9, label %21

21:                                               ; preds = %14
  %22 = load ptr, ptr %8, align 8, !tbaa !109
  %23 = getelementptr inbounds %struct.initial_value_pair, ptr %22, i64 %15
  %24 = load ptr, ptr %23, align 8, !tbaa !112
  br label %25

25:                                               ; preds = %9, %4, %1, %21
  %26 = phi ptr [ %24, %21 ], [ null, %1 ], [ null, %4 ], [ null, %9 ]
  ret ptr %26
}

; Function Attrs: optsize
declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_hard_reg_initial_val(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !82 {
  %3 = tail call ptr @has_hard_reg_initial_val(i32 noundef %0, i32 noundef %1) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %39

5:                                                ; preds = %2
  %6 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 8), align 8, !tbaa !97
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %5
  %9 = tail call ptr @ggc_alloc_stat(i64 noundef 16) #6
  store i32 0, ptr %9, align 8, !tbaa !106
  %10 = getelementptr inbounds %struct.initial_value_struct, ptr %9, i64 0, i32 1
  store i32 5, ptr %10, align 4, !tbaa !113
  %11 = tail call ptr @ggc_alloc_stat(i64 noundef 80) #6
  %12 = getelementptr inbounds %struct.initial_value_struct, ptr %9, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !109
  store ptr %9, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 8), align 8, !tbaa !97
  br label %13

13:                                               ; preds = %8, %5
  %14 = phi ptr [ %9, %8 ], [ %6, %5 ]
  %15 = load i32, ptr %14, align 8, !tbaa !106
  %16 = getelementptr inbounds %struct.initial_value_struct, ptr %14, i64 0, i32 1
  %17 = load i32, ptr %16, align 4, !tbaa !113
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %26, label %19

19:                                               ; preds = %13
  %20 = add nsw i32 %17, 5
  store i32 %20, ptr %16, align 4, !tbaa !113
  %21 = getelementptr inbounds %struct.initial_value_struct, ptr %14, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !109
  %23 = sext i32 %20 to i64
  %24 = shl nsw i64 %23, 4
  %25 = tail call ptr @ggc_realloc_stat(ptr noundef %22, i64 noundef %24) #6
  store ptr %25, ptr %21, align 8, !tbaa !109
  br label %26

26:                                               ; preds = %19, %13
  %27 = tail call ptr @gen_rtx_REG(i32 noundef %0, i32 noundef %1) #6
  %28 = getelementptr inbounds %struct.initial_value_struct, ptr %14, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !109
  %30 = load i32, ptr %14, align 8, !tbaa !106
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.initial_value_pair, ptr %29, i64 %31
  store ptr %27, ptr %32, align 8, !tbaa !112
  %33 = tail call ptr @gen_reg_rtx(i32 noundef %0) #6
  %34 = load ptr, ptr %28, align 8, !tbaa !109
  %35 = load i32, ptr %14, align 8, !tbaa !106
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.initial_value_pair, ptr %34, i64 %36, i32 1
  store ptr %33, ptr %37, align 8, !tbaa !110
  %38 = add nsw i32 %35, 1
  store i32 %38, ptr %14, align 8, !tbaa !106
  br label %39

39:                                               ; preds = %2, %26
  %40 = phi ptr [ %33, %26 ], [ %3, %2 ]
  ret ptr %40
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @has_hard_reg_initial_val(i32 noundef %0, i32 noundef %1) local_unnamed_addr #4 !prof !82 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 8), align 8, !tbaa !97
  %4 = icmp eq ptr %3, null
  br i1 %4, label %29, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 8, !tbaa !106
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %29

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.initial_value_struct, ptr %3, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !109
  %11 = zext nneg i32 %6 to i64
  br label %12

12:                                               ; preds = %8, %26
  %13 = phi i64 [ 0, %8 ], [ %27, %26 ]
  %14 = getelementptr inbounds %struct.initial_value_pair, ptr %10, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !112
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
  %25 = load ptr, ptr %24, align 8, !tbaa !110
  br label %29

26:                                               ; preds = %12, %20
  %27 = add nuw nsw i64 %13, 1
  %28 = icmp eq i64 %27, %11
  br i1 %28, label %29, label %12, !llvm.loop !114

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
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !82 !PGOFuncName !115 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !70
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @emit_initial_value_sets() #0 !prof !116 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 8), align 8, !tbaa !97
  %2 = icmp eq ptr %1, null
  br i1 %2, label %22, label %3, !prof !117

3:                                                ; preds = %0
  tail call void @start_sequence() #6
  %4 = load i32, ptr %1, align 8, !tbaa !106
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.initial_value_struct, ptr %1, i64 0, i32 2
  br label %8

8:                                                ; preds = %6, %8
  %9 = phi i64 [ 0, %6 ], [ %16, %8 ]
  %10 = load ptr, ptr %7, align 8, !tbaa !109
  %11 = getelementptr inbounds %struct.initial_value_pair, ptr %10, i64 %9
  %12 = getelementptr inbounds %struct.initial_value_pair, ptr %10, i64 %9, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !110
  %14 = load ptr, ptr %11, align 8, !tbaa !112
  %15 = tail call ptr @emit_move_insn(ptr noundef %13, ptr noundef %14) #6
  %16 = add nuw nsw i64 %9, 1
  %17 = load i32, ptr %1, align 8, !tbaa !106
  %18 = sext i32 %17 to i64
  %19 = icmp slt i64 %16, %18
  br i1 %19, label %8, label %20, !llvm.loop !118

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
define dso_local void @allocate_initial_values(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 !prof !116 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 62), align 8, !tbaa !119
  %3 = icmp eq ptr %2, null
  br i1 %3, label %90, label %4, !prof !117

4:                                                ; preds = %1
  %5 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 8), align 8, !tbaa !97
  %6 = icmp eq ptr %5, null
  br i1 %6, label %90, label %7

7:                                                ; preds = %4
  %8 = load i32, ptr %5, align 8, !tbaa !106
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %90

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.initial_value_struct, ptr %5, i64 0, i32 2
  br label %12

12:                                               ; preds = %10, %85
  %13 = phi i64 [ 0, %10 ], [ %86, %85 ]
  %14 = load ptr, ptr %11, align 8, !tbaa !109
  %15 = getelementptr inbounds %struct.initial_value_pair, ptr %14, i64 %13, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !110
  %17 = tail call fastcc i32 @rhs_regno(ptr noundef %16) #7
  %18 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 62), align 8, !tbaa !119
  %19 = getelementptr inbounds %struct.initial_value_pair, ptr %14, i64 %13
  %20 = load ptr, ptr %19, align 8, !tbaa !112
  %21 = tail call ptr %18(ptr noundef %20) #6
  %22 = icmp eq ptr %21, null
  br i1 %22, label %85, label %23

23:                                               ; preds = %12
  %24 = load ptr, ptr %11, align 8, !tbaa !109
  %25 = getelementptr inbounds %struct.initial_value_pair, ptr %24, i64 %13, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !110
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
  store ptr %21, ptr %35, align 8, !tbaa !96
  br label %85

36:                                               ; preds = %30
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 356, ptr noundef nonnull @.str.2) #6
  %37 = load ptr, ptr %11, align 8, !tbaa !109
  %38 = getelementptr inbounds %struct.initial_value_pair, ptr %37, i64 %13, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !110
  br label %40

40:                                               ; preds = %30, %36
  %41 = phi ptr [ %26, %30 ], [ %39, %36 ]
  %42 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %21) #7
  %43 = trunc i32 %42 to i16
  %44 = load ptr, ptr @reg_renumber, align 8, !tbaa !96
  %45 = sext i32 %17 to i64
  %46 = getelementptr inbounds i16, ptr %44, i64 %45
  store i16 %43, ptr %46, align 2, !tbaa !120
  %47 = tail call fastcc i32 @rhs_regno(ptr noundef %41) #7
  tail call void @df_ref_change_reg_with_loc(i32 noundef %47, i32 noundef %42, ptr noundef %41) #6
  %48 = load ptr, ptr %11, align 8, !tbaa !109
  %49 = getelementptr inbounds %struct.initial_value_pair, ptr %48, i64 %13, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !110
  %51 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1
  store i32 %42, ptr %51, align 8, !tbaa !70
  %52 = load ptr, ptr @cfun, align 8, !tbaa !96
  %53 = getelementptr inbounds %struct.function, ptr %52, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !122
  %55 = load ptr, ptr %54, align 8, !tbaa !124
  %56 = getelementptr inbounds %struct.basic_block_def, ptr %55, i64 0, i32 6
  %57 = load ptr, ptr %56, align 8, !tbaa !126
  %58 = getelementptr inbounds %struct.control_flow_graph, ptr %54, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !128
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
  %78 = load ptr, ptr %77, align 8, !tbaa !126
  %79 = load ptr, ptr @cfun, align 8, !tbaa !96
  %80 = getelementptr inbounds %struct.function, ptr %79, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !122
  %82 = getelementptr inbounds %struct.control_flow_graph, ptr %81, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !128
  %84 = icmp eq ptr %78, %83
  br i1 %84, label %85, label %61, !llvm.loop !129

85:                                               ; preds = %76, %40, %33, %23, %12
  %86 = add nuw nsw i64 %13, 1
  %87 = load i32, ptr %5, align 8, !tbaa !106
  %88 = sext i32 %87 to i64
  %89 = icmp slt i64 %86, %88
  br i1 %89, label %12, label %90, !llvm.loop !130

90:                                               ; preds = %85, %7, %4, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @REG_N_SETS(i32 noundef %0) unnamed_addr #5 !prof !82 !PGOFuncName !131 {
  %2 = load ptr, ptr @regstat_n_sets_and_refs, align 8, !tbaa !96
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds %struct.regstat_n_sets_and_refs_t, ptr %2, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !132
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
define dso_local void @gt_ggc_mx_initial_value_struct(ptr noundef %0) local_unnamed_addr #0 !prof !82 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %39, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %39

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.initial_value_struct, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !109
  %9 = icmp eq ptr %8, null
  br i1 %9, label %39, label %10

10:                                               ; preds = %6
  %11 = load i32, ptr %0, align 8, !tbaa !106
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %34, label %13

13:                                               ; preds = %10, %27
  %14 = phi i64 [ %28, %27 ], [ 0, %10 ]
  %15 = load ptr, ptr %7, align 8, !tbaa !109
  %16 = getelementptr inbounds %struct.initial_value_pair, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !112
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %13
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %17) #6
  %20 = load ptr, ptr %7, align 8, !tbaa !109
  br label %21

21:                                               ; preds = %13, %19
  %22 = phi ptr [ %15, %13 ], [ %20, %19 ]
  %23 = getelementptr inbounds %struct.initial_value_pair, ptr %22, i64 %14, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !110
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %24) #6
  br label %27

27:                                               ; preds = %21, %26
  %28 = add i64 %14, 1
  %29 = load i32, ptr %0, align 8, !tbaa !106
  %30 = sext i32 %29 to i64
  %31 = icmp eq i64 %28, %30
  br i1 %31, label %32, label %13, !llvm.loop !134

32:                                               ; preds = %27
  %33 = load ptr, ptr %7, align 8, !tbaa !109
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
define dso_local void @gt_pch_nx_initial_value_struct(ptr noundef %0) local_unnamed_addr #0 !prof !82 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_20initial_value_struct, i32 noundef 121) #6
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %35, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.initial_value_struct, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !109
  %7 = icmp eq ptr %6, null
  br i1 %7, label %35, label %8

8:                                                ; preds = %4
  %9 = load i32, ptr %0, align 8, !tbaa !106
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %32, label %11

11:                                               ; preds = %8, %25
  %12 = phi i64 [ %26, %25 ], [ 0, %8 ]
  %13 = load ptr, ptr %5, align 8, !tbaa !109
  %14 = getelementptr inbounds %struct.initial_value_pair, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !112
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %11
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %15) #6
  %18 = load ptr, ptr %5, align 8, !tbaa !109
  br label %19

19:                                               ; preds = %11, %17
  %20 = phi ptr [ %13, %11 ], [ %18, %17 ]
  %21 = getelementptr inbounds %struct.initial_value_pair, ptr %20, i64 %12, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !110
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %22) #6
  br label %25

25:                                               ; preds = %19, %24
  %26 = add i64 %12, 1
  %27 = load i32, ptr %0, align 8, !tbaa !106
  %28 = sext i32 %27 to i64
  %29 = icmp eq i64 %26, %28
  br i1 %29, label %30, label %11, !llvm.loop !135

30:                                               ; preds = %25
  %31 = load ptr, ptr %5, align 8, !tbaa !109
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
define dso_local void @gt_pch_p_20initial_value_struct(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !82 {
  %5 = getelementptr inbounds %struct.initial_value_struct, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !109
  %7 = icmp eq ptr %6, null
  br i1 %7, label %31, label %8

8:                                                ; preds = %4
  %9 = load i32, ptr %1, align 8, !tbaa !106
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %28, label %11

11:                                               ; preds = %8, %23
  %12 = phi i64 [ %24, %23 ], [ 0, %8 ]
  %13 = load ptr, ptr %5, align 8, !tbaa !109
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.initial_value_pair, ptr %0, i64 %12
  tail call void %2(ptr noundef %16, ptr noundef %3) #6
  %17 = load ptr, ptr %5, align 8, !tbaa !109
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
  %25 = load i32, ptr %1, align 8, !tbaa !106
  %26 = sext i32 %25 to i64
  %27 = icmp eq i64 %24, %26
  br i1 %27, label %28, label %11, !llvm.loop !136

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

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!50}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49}
!36 = !{ptr @function_attribute_inlinable_p, ptr @is_attribute_p, i64 717}
!37 = !{ptr @emit_initial_value_sets, ptr @start_sequence, i64 1}
!38 = !{ptr @emit_initial_value_sets, ptr @emit_move_insn, i64 20}
!39 = !{ptr @emit_initial_value_sets, ptr @get_insns, i64 1}
!40 = !{ptr @emit_initial_value_sets, ptr @end_sequence, i64 1}
!41 = !{ptr @emit_initial_value_sets, ptr @emit_insn_at_entry, i64 1}
!42 = !{ptr @allocate_initial_values, ptr @rhs_regno, i64 26}
!43 = !{ptr @allocate_initial_values, ptr @REG_N_SETS, i64 8}
!44 = !{ptr @allocate_initial_values, ptr @fancy_abort, i64 1}
!45 = !{ptr @allocate_initial_values, ptr @df_ref_change_reg_with_loc, i64 3}
!46 = !{ptr @allocate_initial_values, ptr @df_get_live_in, i64 85}
!47 = !{ptr @allocate_initial_values, ptr @bitmap_bit_p, i64 104}
!48 = !{ptr @allocate_initial_values, ptr @bitmap_set_bit, i64 66}
!49 = !{ptr @allocate_initial_values, ptr @df_get_live_out, i64 85}
!50 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!51 = !{!"function_entry_count", i64 26594}
!52 = !{!53, !55, i64 824}
!53 = !{!"gcc_target", !54, i64 0, !59, i64 368, !60, i64 664, !61, i64 744, !55, i64 752, !55, i64 760, !55, i64 768, !55, i64 776, !55, i64 784, !55, i64 792, !55, i64 800, !55, i64 808, !55, i64 816, !55, i64 824, !55, i64 832, !55, i64 840, !55, i64 848, !55, i64 856, !55, i64 864, !55, i64 872, !55, i64 880, !55, i64 888, !55, i64 896, !55, i64 904, !55, i64 912, !55, i64 920, !55, i64 928, !55, i64 936, !55, i64 944, !55, i64 952, !55, i64 960, !55, i64 968, !55, i64 976, !55, i64 984, !55, i64 992, !55, i64 1000, !55, i64 1008, !55, i64 1016, !55, i64 1024, !55, i64 1032, !55, i64 1040, !55, i64 1048, !55, i64 1056, !62, i64 1064, !62, i64 1072, !55, i64 1080, !55, i64 1088, !55, i64 1096, !55, i64 1104, !55, i64 1112, !55, i64 1120, !55, i64 1128, !55, i64 1136, !55, i64 1144, !55, i64 1152, !55, i64 1160, !55, i64 1168, !63, i64 1176, !55, i64 1232, !55, i64 1240, !55, i64 1248, !55, i64 1256, !55, i64 1264, !55, i64 1272, !55, i64 1280, !55, i64 1288, !55, i64 1296, !55, i64 1304, !55, i64 1312, !55, i64 1320, !55, i64 1328, !55, i64 1336, !55, i64 1344, !55, i64 1352, !55, i64 1360, !55, i64 1368, !55, i64 1376, !55, i64 1384, !55, i64 1392, !55, i64 1400, !55, i64 1408, !55, i64 1416, !55, i64 1424, !55, i64 1432, !55, i64 1440, !55, i64 1448, !55, i64 1456, !62, i64 1464, !64, i64 1472, !55, i64 1664, !55, i64 1672, !55, i64 1680, !55, i64 1688, !55, i64 1696, !55, i64 1704, !55, i64 1712, !55, i64 1720, !55, i64 1728, !55, i64 1736, !55, i64 1744, !55, i64 1752, !55, i64 1760, !55, i64 1768, !55, i64 1776, !65, i64 1784, !66, i64 1792, !67, i64 1896, !68, i64 1968, !55, i64 2016, !56, i64 2024, !56, i64 2025, !56, i64 2026, !56, i64 2027, !56, i64 2028, !56, i64 2029, !56, i64 2030, !56, i64 2031, !56, i64 2032, !56, i64 2033, !56, i64 2034, !56, i64 2035}
!54 = !{!"asm_out", !55, i64 0, !55, i64 8, !55, i64 16, !58, i64 24, !58, i64 56, !55, i64 88, !55, i64 96, !55, i64 104, !55, i64 112, !55, i64 120, !55, i64 128, !55, i64 136, !55, i64 144, !55, i64 152, !55, i64 160, !55, i64 168, !55, i64 176, !55, i64 184, !55, i64 192, !55, i64 200, !55, i64 208, !55, i64 216, !55, i64 224, !55, i64 232, !55, i64 240, !55, i64 248, !55, i64 256, !55, i64 264, !55, i64 272, !55, i64 280, !55, i64 288, !55, i64 296, !55, i64 304, !55, i64 312, !55, i64 320, !55, i64 328, !55, i64 336, !55, i64 344, !55, i64 352, !55, i64 360}
!55 = !{!"any pointer", !56, i64 0}
!56 = !{!"omnipotent char", !57, i64 0}
!57 = !{!"Simple C/C++ TBAA"}
!58 = !{!"asm_int_op", !55, i64 0, !55, i64 8, !55, i64 16, !55, i64 24}
!59 = !{!"sched", !55, i64 0, !55, i64 8, !55, i64 16, !55, i64 24, !55, i64 32, !55, i64 40, !55, i64 48, !55, i64 56, !55, i64 64, !55, i64 72, !55, i64 80, !55, i64 88, !55, i64 96, !55, i64 104, !55, i64 112, !55, i64 120, !55, i64 128, !55, i64 136, !55, i64 144, !55, i64 152, !55, i64 160, !55, i64 168, !55, i64 176, !55, i64 184, !55, i64 192, !55, i64 200, !55, i64 208, !55, i64 216, !55, i64 224, !55, i64 232, !55, i64 240, !55, i64 248, !55, i64 256, !55, i64 264, !55, i64 272, !55, i64 280, !55, i64 288}
!60 = !{!"vectorize", !55, i64 0, !55, i64 8, !55, i64 16, !55, i64 24, !55, i64 32, !55, i64 40, !55, i64 48, !55, i64 56, !55, i64 64, !55, i64 72}
!61 = !{!"int", !56, i64 0}
!62 = !{!"long", !56, i64 0}
!63 = !{!"addr_space", !55, i64 0, !55, i64 8, !55, i64 16, !55, i64 24, !55, i64 32, !55, i64 40, !55, i64 48}
!64 = !{!"calls", !55, i64 0, !55, i64 8, !55, i64 16, !55, i64 24, !55, i64 32, !55, i64 40, !55, i64 48, !55, i64 56, !55, i64 64, !55, i64 72, !55, i64 80, !55, i64 88, !55, i64 96, !55, i64 104, !55, i64 112, !55, i64 120, !55, i64 128, !55, i64 136, !55, i64 144, !55, i64 152, !55, i64 160, !55, i64 168, !55, i64 176, !55, i64 184}
!65 = !{!"c", !55, i64 0}
!66 = !{!"cxx", !55, i64 0, !55, i64 8, !55, i64 16, !55, i64 24, !55, i64 32, !55, i64 40, !55, i64 48, !55, i64 56, !55, i64 64, !55, i64 72, !55, i64 80, !55, i64 88, !55, i64 96}
!67 = !{!"emutls", !55, i64 0, !55, i64 8, !55, i64 16, !55, i64 24, !55, i64 32, !55, i64 40, !55, i64 48, !55, i64 56, !56, i64 64, !56, i64 65}
!68 = !{!"target_option_hooks", !55, i64 0, !55, i64 8, !55, i64 16, !55, i64 24, !55, i64 32, !55, i64 40}
!69 = !{!"branch_weights", i32 1, i32 26595}
!70 = !{!56, !56, i64 0}
!71 = !{!"branch_weights", i32 26528, i32 67}
!72 = !{!73, !55, i64 0}
!73 = !{!"attribute_spec", !55, i64 0, !61, i64 8, !61, i64 12, !56, i64 16, !56, i64 17, !56, i64 18, !55, i64 24}
!74 = !{!"branch_weights", i32 1, i32 133}
!75 = !{!"branch_weights", i32 133, i32 1321}
!76 = distinct !{!76, !77}
!77 = !{!"llvm.loop.mustprogress"}
!78 = !{!"branch_weights", i32 727, i32 1}
!79 = !{!"branch_weights", i32 67, i32 0}
!80 = distinct !{!80, !77}
!81 = !{!53, !55, i64 856}
!82 = !{!"function_entry_count", i64 0}
!83 = distinct !{!83, !77}
!84 = !{!"integrate.c:set_block_origin_self"}
!85 = distinct !{!85, !77}
!86 = distinct !{!86, !77}
!87 = distinct !{!87, !77}
!88 = !{!"integrate.c:set_block_abstract_flags"}
!89 = distinct !{!89, !77}
!90 = distinct !{!90, !77}
!91 = distinct !{!91, !77}
!92 = !{!"integrate.c:VEC_tree_base_length"}
!93 = !{!94, !61, i64 0}
!94 = !{!"VEC_tree_base", !61, i64 0, !61, i64 4, !56, i64 8}
!95 = !{!"integrate.c:VEC_tree_base_index"}
!96 = !{!55, !55, i64 0}
!97 = !{!98, !55, i64 328}
!98 = !{!"rtl_data", !99, i64 0, !100, i64 40, !101, i64 96, !102, i64 112, !104, i64 208, !105, i64 248, !61, i64 312, !55, i64 320, !55, i64 328, !55, i64 336, !55, i64 344, !55, i64 352, !55, i64 360, !55, i64 368, !55, i64 376, !55, i64 384, !55, i64 392, !62, i64 400, !55, i64 408, !55, i64 416, !55, i64 424, !61, i64 432, !61, i64 436, !61, i64 440, !61, i64 444, !61, i64 448, !61, i64 452, !55, i64 456, !56, i64 464, !56, i64 465, !56, i64 466, !56, i64 467, !56, i64 468, !56, i64 469, !56, i64 470, !56, i64 471, !56, i64 472, !56, i64 473, !56, i64 474, !56, i64 475, !56, i64 476, !56, i64 477, !56, i64 478, !56, i64 479, !56, i64 480, !56, i64 481, !56, i64 482, !56, i64 483, !56, i64 484, !56, i64 485}
!99 = !{!"expr_status", !61, i64 0, !61, i64 4, !61, i64 8, !55, i64 16, !55, i64 24, !55, i64 32}
!100 = !{!"emit_status", !61, i64 0, !61, i64 4, !55, i64 8, !55, i64 16, !55, i64 24, !61, i64 32, !61, i64 36, !61, i64 40, !61, i64 44, !55, i64 48}
!101 = !{!"varasm_status", !55, i64 0, !61, i64 8}
!102 = !{!"incoming_args", !61, i64 0, !61, i64 4, !61, i64 8, !55, i64 16, !103, i64 24, !55, i64 88}
!103 = !{!"ix86_args", !61, i64 0, !61, i64 4, !61, i64 8, !61, i64 12, !61, i64 16, !61, i64 20, !61, i64 24, !61, i64 28, !61, i64 32, !61, i64 36, !61, i64 40, !61, i64 44, !61, i64 48, !61, i64 52, !61, i64 56, !61, i64 60}
!104 = !{!"function_subsections", !55, i64 0, !55, i64 8, !55, i64 16, !55, i64 24, !55, i64 32}
!105 = !{!"rtl_eh", !55, i64 0, !55, i64 8, !55, i64 16, !55, i64 24, !55, i64 32, !55, i64 40, !56, i64 48}
!106 = !{!107, !61, i64 0}
!107 = !{!"initial_value_struct", !61, i64 0, !61, i64 4, !55, i64 8}
!108 = distinct !{!108, !77}
!109 = !{!107, !55, i64 8}
!110 = !{!111, !55, i64 8}
!111 = !{!"initial_value_pair", !55, i64 0, !55, i64 8}
!112 = !{!111, !55, i64 0}
!113 = !{!107, !61, i64 4}
!114 = distinct !{!114, !77}
!115 = !{!"integrate.c:rhs_regno"}
!116 = !{!"function_entry_count", i64 6652}
!117 = !{!"branch_weights", i32 6653, i32 1}
!118 = distinct !{!118, !77}
!119 = !{!53, !55, i64 1264}
!120 = !{!121, !121, i64 0}
!121 = !{!"short", !56, i64 0}
!122 = !{!123, !55, i64 8}
!123 = !{!"function", !55, i64 0, !55, i64 8, !55, i64 16, !55, i64 24, !55, i64 32, !55, i64 40, !55, i64 48, !55, i64 56, !55, i64 64, !55, i64 72, !55, i64 80, !55, i64 88, !55, i64 96, !61, i64 104, !61, i64 108, !61, i64 112, !61, i64 116, !61, i64 120, !61, i64 124, !55, i64 128, !61, i64 136, !61, i64 137, !61, i64 138, !61, i64 138, !61, i64 138, !61, i64 138, !61, i64 138, !61, i64 138, !61, i64 138, !61, i64 139, !61, i64 139, !61, i64 139, !61, i64 139, !61, i64 139, !61, i64 139, !61, i64 139}
!124 = !{!125, !55, i64 0}
!125 = !{!"control_flow_graph", !55, i64 0, !55, i64 8, !55, i64 16, !61, i64 24, !61, i64 28, !61, i64 32, !55, i64 40, !61, i64 48, !56, i64 52, !56, i64 60, !61, i64 68, !61, i64 72}
!126 = !{!127, !55, i64 56}
!127 = !{!"basic_block_def", !55, i64 0, !55, i64 8, !55, i64 16, !55, i64 24, !56, i64 32, !55, i64 48, !55, i64 56, !56, i64 64, !62, i64 72, !61, i64 80, !61, i64 84, !61, i64 88, !61, i64 92, !61, i64 96}
!128 = !{!125, !55, i64 8}
!129 = distinct !{!129, !77}
!130 = distinct !{!130, !77}
!131 = !{!"integrate.c:REG_N_SETS"}
!132 = !{!133, !61, i64 0}
!133 = !{!"regstat_n_sets_and_refs_t", !61, i64 0, !61, i64 4}
!134 = distinct !{!134, !77}
!135 = distinct !{!135, !77}
!136 = distinct !{!136, !77}
