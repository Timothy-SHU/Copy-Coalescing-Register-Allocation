; ModuleID = 'tree-if-conv.c'
source_filename = "tree-if-conv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.loop_iterator = type { ptr, i32 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.edge_iterator = type { i32, ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.immediate_use_iterator_d = type { ptr, ptr, %struct.ssa_use_operand_d, ptr }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.gimple_bb_info = type { ptr, ptr }
%struct.gimple_seq_d = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [6 x i8] c"ifcvt\00", align 1
@pass_if_conversion = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str, ptr @gate_tree_if_conversion, ptr @main_tree_if_conversion, ptr null, ptr null, i32 0, i32 0, i32 40, i32 0, i32 0, i32 0, i32 89 } }, align 8
@flag_tree_vectorize = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@ifc_bbs = internal unnamed_addr global ptr null, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"-------------------------\0A\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"not inner most loop\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"less than 2 basic blocks\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"multiple exits\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Irreducible loop\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Applying if-conversion\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"tree-if-conv.c\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"----------[%d]-------------\0A\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"basic block after exit bb but before latch\0A\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"non empty basic block after exit bb\0A\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"latch is not dominated by exit_block\0A\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"Difficult to handle edges\0A\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"don't know what to do\0A\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"stmt not suitable for ifcvt\0A\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"tree could trap...\0A\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"LHS is not var\0A\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.19 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.20 = private unnamed_addr constant [30 x i8] c"More than two phi node args.\0A\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"Virtual phi not on loop header.\0A\00", align 1
@.str.22 = private unnamed_addr constant [39 x i8] c"Difficult to handle this virtual phi.\0A\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"------if-convert stmt\0A\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"_ifc_\00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str.25 = private unnamed_addr constant [26 x i8] c"new phi replacement stmt\0A\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_tree_if_conversion() #0 !prof !41 !PGOFuncName !42 {
  %1 = load i32, ptr @flag_tree_vectorize, align 4, !tbaa !43
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @main_tree_if_conversion() #1 !prof !41 !PGOFuncName !47 {
  %1 = alloca %struct.loop_iterator, align 8
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  %3 = tail call fastcc i32 @number_of_loops() #16
  %4 = icmp ult i32 %3, 2
  br i1 %4, label %12, label %5, !prof !48

5:                                                ; preds = %0
  call fastcc void @fel_init(ptr noundef nonnull %1, ptr noundef nonnull %2) #16
  %6 = load ptr, ptr %2, align 8, !tbaa !49
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %5, %8
  %9 = phi ptr [ %10, %8 ], [ %6, %5 ]
  tail call fastcc void @tree_if_conversion(ptr noundef nonnull %9) #16
  call fastcc void @fel_next(ptr noundef nonnull %1, ptr noundef nonnull %2) #16
  %10 = load ptr, ptr %2, align 8, !tbaa !49
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %8, !llvm.loop !51

12:                                               ; preds = %8, %5, %0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #15
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @number_of_loops() unnamed_addr #3 !prof !41 !PGOFuncName !53 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !49
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !56

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  %8 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %7) #16
  br label %9

9:                                                ; preds = %0, %5
  %10 = phi i32 [ %8, %5 ], [ 0, %0 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_init(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #1 !prof !59 !PGOFuncName !60 {
  %3 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  store i32 0, ptr %3, align 8, !tbaa !61
  %4 = load ptr, ptr @cfun, align 8, !tbaa !49
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store ptr null, ptr %0, align 8, !tbaa !63
  store ptr null, ptr %1, align 8, !tbaa !49
  br label %38

9:                                                ; preds = %2
  %10 = tail call fastcc i32 @number_of_loops() #16
  %11 = tail call fastcc ptr @VEC_int_heap_alloc(i32 noundef %10) #16
  store ptr %11, ptr %0, align 8, !tbaa !63
  %12 = load ptr, ptr @cfun, align 8, !tbaa !49
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !54
  %15 = getelementptr inbounds %struct.loops, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !64
  br label %17

17:                                               ; preds = %27, %9
  %18 = phi ptr [ %16, %9 ], [ %28, %27 ]
  %19 = load i32, ptr %18, align 8, !tbaa !65
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load ptr, ptr %0, align 8, !tbaa !63
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %22, i32 noundef %19) #16
  br label %23

23:                                               ; preds = %21, %17
  %24 = getelementptr inbounds %struct.loop, ptr %18, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !70
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %29, %23
  %28 = phi ptr [ %25, %23 ], [ %32, %29 ]
  br label %17

29:                                               ; preds = %23, %34
  %30 = phi ptr [ %35, %34 ], [ %18, %23 ]
  %31 = getelementptr inbounds %struct.loop, ptr %30, i64 0, i32 9
  %32 = load ptr, ptr %31, align 8, !tbaa !71
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %27

34:                                               ; preds = %29
  %35 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %30) #16
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %29, !llvm.loop !72

37:                                               ; preds = %34
  tail call fastcc void @fel_next(ptr noundef nonnull %0, ptr noundef %1) #16
  br label %38

38:                                               ; preds = %37, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @tree_if_conversion(ptr noundef %0) unnamed_addr #1 !prof !59 !PGOFuncName !73 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  store ptr null, ptr @ifc_bbs, align 8, !tbaa !49
  %4 = tail call fastcc zeroext i8 @if_convertible_loop_p(ptr noundef %0) #16
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !74
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %57, label %24

10:                                               ; preds = %1
  %11 = load ptr, ptr @dump_file, align 8, !tbaa !49
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %10
  %14 = load i32, ptr @dump_flags, align 4, !tbaa !43
  %15 = and i32 %14, 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 26, i64 1, ptr nonnull %11)
  br label %19

19:                                               ; preds = %17, %13, %10
  %20 = load ptr, ptr @ifc_bbs, align 8, !tbaa !49
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  tail call void @free(ptr noundef nonnull %20) #16
  store ptr null, ptr @ifc_bbs, align 8, !tbaa !49
  br label %23

23:                                               ; preds = %22, %19
  tail call void @free_dominance_info(i32 noundef 2) #17
  br label %59

24:                                               ; preds = %6, %52
  %25 = phi i64 [ %53, %52 ], [ 0, %6 ]
  %26 = load ptr, ptr @ifc_bbs, align 8, !tbaa !49
  %27 = getelementptr inbounds ptr, ptr %26, i64 %25
  %28 = load ptr, ptr %27, align 8, !tbaa !49
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %28) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !77
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  %31 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #16, !range !78
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %24, %40
  %34 = phi ptr [ %36, %40 ], [ %30, %24 ]
  %35 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #16
  %36 = call fastcc ptr @tree_if_convert_stmt(ptr noundef %0, ptr noundef %35, ptr noundef %34, ptr noundef nonnull %2) #16
  %37 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #16, !range !78
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  call fastcc void @gsi_next(ptr noundef nonnull %2) #16
  br label %40

40:                                               ; preds = %39, %33
  %41 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #16, !range !78
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %33, label %43, !llvm.loop !79

43:                                               ; preds = %40, %24
  %44 = phi ptr [ %30, %24 ], [ %36, %40 ]
  %45 = call fastcc zeroext i8 @single_succ_p(ptr noundef %28) #16, !range !78
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %43
  %48 = call fastcc ptr @single_succ(ptr noundef %28) #16
  %49 = icmp eq ptr %44, null
  %50 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16
  %51 = select i1 %49, ptr %50, ptr %44
  call fastcc void @add_to_predicate_list(ptr noundef %48, ptr noundef %51) #16
  br label %52

52:                                               ; preds = %47, %43
  %53 = add nuw nsw i64 %25, 1
  %54 = load i32, ptr %7, align 4, !tbaa !74
  %55 = zext i32 %54 to i64
  %56 = icmp ult i64 %53, %55
  br i1 %56, label %24, label %57, !llvm.loop !80

57:                                               ; preds = %52, %6
  call fastcc void @combine_blocks(ptr noundef nonnull %0) #16
  call fastcc void @clean_predicate_lists(ptr noundef nonnull %0) #16
  %58 = load ptr, ptr @ifc_bbs, align 8, !tbaa !49
  call void @free(ptr noundef %58) #16
  store ptr null, ptr @ifc_bbs, align 8, !tbaa !49
  br label %59

59:                                               ; preds = %57, %23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_next(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #1 !prof !59 !PGOFuncName !81 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  %4 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !61
  br label %6

6:                                                ; preds = %11, %2
  %7 = phi i32 [ %12, %11 ], [ %5, %2 ]
  %8 = load ptr, ptr %0, align 8, !tbaa !63
  %9 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %8, i32 noundef %7, ptr noundef nonnull %3) #16, !range !82
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = add i32 %7, 1
  store i32 %12, ptr %4, align 8, !tbaa !61
  %13 = load i32, ptr %3, align 4, !tbaa !43
  %14 = tail call fastcc ptr @get_loop(i32 noundef %13) #16
  store ptr %14, ptr %1, align 8, !tbaa !49
  %15 = icmp eq ptr %14, null
  br i1 %15, label %6, label %17, !llvm.loop !83

16:                                               ; preds = %6
  tail call fastcc void @VEC_int_heap_free(ptr noundef nonnull %0) #16
  store ptr null, ptr %1, align 8, !tbaa !49
  br label %17

17:                                               ; preds = %11, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_loop_p_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !41 !PGOFuncName !84 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !56

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !85
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_int_heap_alloc(i32 noundef %0) unnamed_addr #1 !prof !59 !PGOFuncName !87 {
  %2 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 4) #17
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_int_base_quick_push(ptr noundef %0, i32 noundef %1) unnamed_addr #5 !prof !59 !PGOFuncName !88 {
  %3 = load i32, ptr %0, align 4, !tbaa !89
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 4, !tbaa !89
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %5
  store i32 %1, ptr %6, align 4, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_outer(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !59 !PGOFuncName !91 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !92
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #16
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = add i32 %4, -1
  %8 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %3, i32 noundef %7) #16
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_loop_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !prof !59 !PGOFuncName !93 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @if_convertible_loop_p(ptr noundef %0) unnamed_addr #1 !prof !59 !PGOFuncName !94 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #15
  %5 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !70
  %7 = icmp eq ptr %6, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr @dump_file, align 8, !tbaa !49
  %10 = icmp eq ptr %9, null
  br i1 %10, label %131, label %11

11:                                               ; preds = %8
  %12 = load i32, ptr @dump_flags, align 4, !tbaa !43
  %13 = and i32 %12, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %131, label %15

15:                                               ; preds = %11
  %16 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 20, i64 1, ptr nonnull %9)
  br label %131

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %19 = load i32, ptr %18, align 4, !tbaa !74
  %20 = icmp ult i32 %19, 3
  br i1 %20, label %21, label %30

21:                                               ; preds = %17
  %22 = load ptr, ptr @dump_file, align 8, !tbaa !49
  %23 = icmp eq ptr %22, null
  br i1 %23, label %131, label %24

24:                                               ; preds = %21
  %25 = load i32, ptr @dump_flags, align 4, !tbaa !43
  %26 = and i32 %25, 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %131, label %28

28:                                               ; preds = %24
  %29 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 25, i64 1, ptr nonnull %22)
  br label %131

30:                                               ; preds = %17
  %31 = tail call ptr @single_exit(ptr noundef nonnull %0) #17
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = load ptr, ptr @dump_file, align 8, !tbaa !49
  %35 = icmp eq ptr %34, null
  br i1 %35, label %131, label %36

36:                                               ; preds = %33
  %37 = load i32, ptr @dump_flags, align 4, !tbaa !43
  %38 = and i32 %37, 8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %131, label %40

40:                                               ; preds = %36
  %41 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 15, i64 1, ptr nonnull %34)
  br label %131

42:                                               ; preds = %30
  %43 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !95
  %45 = getelementptr inbounds %struct.basic_block_def, ptr %44, i64 0, i32 1
  %46 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %45) #16
  store i32 0, ptr %4, align 8, !tbaa.struct !96
  %47 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %46, ptr %47, align 8, !tbaa.struct !97
  %48 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %46, ptr noundef nonnull %3) #16, !range !78
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %42, %54
  %51 = load ptr, ptr %3, align 8, !tbaa !49
  %52 = tail call zeroext i8 @loop_exit_edge_p(ptr noundef %0, ptr noundef %51) #17
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %131

54:                                               ; preds = %50
  call fastcc void @ei_next(ptr noundef nonnull %4) #16
  %55 = load i32, ptr %4, align 8
  %56 = load ptr, ptr %47, align 8
  %57 = call fastcc zeroext i8 @ei_cond(i32 %55, ptr %56, ptr noundef nonnull %3) #16, !range !78
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %50, !llvm.loop !98

59:                                               ; preds = %54, %42
  tail call void @calculate_dominance_info(i32 noundef 1) #17
  tail call void @calculate_dominance_info(i32 noundef 2) #17
  %60 = tail call fastcc ptr @get_loop_body_in_if_conv_order(ptr noundef %0) #16
  store ptr %60, ptr @ifc_bbs, align 8, !tbaa !49
  %61 = icmp eq ptr %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = load i32, ptr %18, align 4, !tbaa !74
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %125, label %75

65:                                               ; preds = %59
  %66 = load ptr, ptr @dump_file, align 8, !tbaa !49
  %67 = icmp eq ptr %66, null
  br i1 %67, label %74, label %68

68:                                               ; preds = %65
  %69 = load i32, ptr @dump_flags, align 4, !tbaa !43
  %70 = and i32 %69, 8
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %68
  %73 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 17, i64 1, ptr nonnull %66)
  br label %74

74:                                               ; preds = %72, %68, %65
  tail call void @free_dominance_info(i32 noundef 2) #17
  br label %131

75:                                               ; preds = %62, %117
  %76 = phi i64 [ %121, %117 ], [ 0, %62 ]
  %77 = phi ptr [ %120, %117 ], [ null, %62 ]
  %78 = load ptr, ptr @ifc_bbs, align 8, !tbaa !49
  %79 = getelementptr inbounds ptr, ptr %78, i64 %76
  %80 = load ptr, ptr %79, align 8, !tbaa !49
  %81 = call fastcc zeroext i8 @if_convertible_bb_p(ptr noundef nonnull %0, ptr noundef %80, ptr noundef %77) #16, !range !78
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %131, label %83

83:                                               ; preds = %75
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %80) #16
  %84 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #16, !range !78
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %83, %90
  %87 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #16
  %88 = call fastcc zeroext i8 @if_convertible_stmt_p(ptr noundef %0, ptr noundef %80, ptr noundef %87) #16, !range !78
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %131, label %90

90:                                               ; preds = %86
  call fastcc void @gsi_next(ptr noundef nonnull %2) #16
  %91 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #16, !range !78
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %86, label %93, !llvm.loop !99

93:                                               ; preds = %90, %83
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %80) #17
  %94 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #16, !range !78
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %93
  %97 = call fastcc ptr @ei_start_1(ptr noundef %80) #16
  store i32 0, ptr %4, align 8, !tbaa.struct !96
  store ptr %97, ptr %47, align 8, !tbaa.struct !97
  %98 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %97, ptr noundef nonnull %3) #16, !range !78
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %107, label %100

100:                                              ; preds = %96, %100
  %101 = load ptr, ptr %3, align 8, !tbaa !49
  %102 = getelementptr inbounds %struct.edge_def, ptr %101, i64 0, i32 3
  store ptr null, ptr %102, align 8, !tbaa !100
  call fastcc void @ei_next(ptr noundef nonnull %4) #16
  %103 = load i32, ptr %4, align 8
  %104 = load ptr, ptr %47, align 8
  %105 = call fastcc zeroext i8 @ei_cond(i32 %103, ptr %104, ptr noundef nonnull %3) #16, !range !78
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %107, label %100, !llvm.loop !102

107:                                              ; preds = %100, %96, %93
  %108 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #16, !range !78
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %107, %114
  %111 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #16
  %112 = call fastcc zeroext i8 @if_convertible_phi_p(ptr noundef %0, ptr noundef %80, ptr noundef %111) #16, !range !78
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %131, label %114

114:                                              ; preds = %110
  call fastcc void @gsi_next(ptr noundef nonnull %2) #16
  %115 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #16, !range !78
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %110, label %117, !llvm.loop !103

117:                                              ; preds = %114, %107
  %118 = call fastcc zeroext i8 @bb_with_exit_edge_p(ptr noundef %0, ptr noundef %80) #16, !range !78
  %119 = icmp eq i8 %118, 0
  %120 = select i1 %119, ptr %77, ptr %80
  %121 = add nuw nsw i64 %76, 1
  %122 = load i32, ptr %18, align 4, !tbaa !74
  %123 = zext i32 %122 to i64
  %124 = icmp ult i64 %121, %123
  br i1 %124, label %75, label %125, !llvm.loop !104

125:                                              ; preds = %117, %62
  %126 = load ptr, ptr @dump_file, align 8, !tbaa !49
  %127 = icmp eq ptr %126, null
  br i1 %127, label %130, label %128

128:                                              ; preds = %125
  %129 = call i64 @fwrite(ptr nonnull @.str.6, i64 23, i64 1, ptr nonnull %126)
  br label %130

130:                                              ; preds = %128, %125
  call void @free_dominance_info(i32 noundef 2) #17
  br label %131

131:                                              ; preds = %50, %75, %86, %110, %33, %36, %40, %21, %24, %28, %8, %11, %15, %130, %74
  %132 = phi i8 [ 1, %130 ], [ 0, %74 ], [ 0, %15 ], [ 0, %11 ], [ 0, %8 ], [ 0, %28 ], [ 0, %24 ], [ 0, %21 ], [ 0, %40 ], [ 0, %36 ], [ 0, %33 ], [ 0, %110 ], [ 0, %86 ], [ 0, %75 ], [ 0, %50 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  ret i8 %132
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @free_dominance_info(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #9 !prof !59 !PGOFuncName !105 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #16
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #16
  store ptr %4, ptr %0, align 8, !tbaa !106
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !108
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !109
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #4 !prof !59 !PGOFuncName !110 {
  %2 = load ptr, ptr %0, align 8, !tbaa !106
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #3 !prof !59 !PGOFuncName !111 {
  %2 = load ptr, ptr %0, align 8, !tbaa !106
  %3 = load ptr, ptr %2, align 8, !tbaa !112
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @tree_if_convert_stmt(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 !prof !59 !PGOFuncName !114 {
  %5 = load ptr, ptr @dump_file, align 8, !tbaa !49
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %4
  %8 = load i32, ptr @dump_flags, align 4, !tbaa !43
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 22, i64 1, ptr nonnull %5)
  %13 = load ptr, ptr @dump_file, align 8, !tbaa !49
  tail call void @print_gimple_stmt(ptr noundef %13, ptr noundef %1, i32 noundef 0, i32 noundef 2) #17
  %14 = load ptr, ptr @dump_file, align 8, !tbaa !49
  tail call void @print_generic_stmt(ptr noundef %14, ptr noundef %2, i32 noundef 2) #17
  br label %15

15:                                               ; preds = %11, %7, %4
  %16 = tail call fastcc i32 @gimple_code(ptr noundef %1) #16, !range !115
  %17 = trunc i32 %16 to i8
  switch i8 %17, label %25 [
    i8 4, label %26
    i8 2, label %18
    i8 6, label %26
    i8 1, label %24
  ]

18:                                               ; preds = %15
  %19 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %3) #16
  %20 = tail call fastcc zeroext i8 @gimple_debug_bind_p(ptr noundef %19) #16, !range !78
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  tail call fastcc void @gimple_debug_bind_reset_value(ptr noundef %19) #16
  %23 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %3) #16
  tail call fastcc void @update_stmt(ptr noundef %23) #16
  br label %26

24:                                               ; preds = %15
  tail call fastcc void @tree_if_convert_cond_stmt(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #16
  br label %26

25:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 267, ptr noundef nonnull @.str.8) #17
  br label %26

26:                                               ; preds = %18, %22, %25, %24, %15, %15
  %27 = phi ptr [ %2, %25 ], [ null, %24 ], [ %2, %22 ], [ %2, %18 ], [ %2, %15 ], [ %2, %15 ]
  ret ptr %27
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #9 !prof !59 !PGOFuncName !116 {
  %2 = load ptr, ptr %0, align 8, !tbaa !106
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !117
  store ptr %4, ptr %0, align 8, !tbaa !106
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !59 !PGOFuncName !118 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !119
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #16
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !59 !PGOFuncName !120 {
  %2 = tail call fastcc ptr @single_succ_edge(ptr noundef %0) #16
  %3 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !121
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_to_predicate_list(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #1 !prof !59 !PGOFuncName !122 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !75
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %2
  %7 = load i64, ptr %4, align 8
  %8 = and i64 %7, 65535
  %9 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !43
  %11 = add i32 %10, -4
  %12 = icmp ult i32 %11, 7
  br i1 %12, label %13, label %16

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !123
  br label %16

16:                                               ; preds = %6, %13
  %17 = phi i32 [ %15, %13 ], [ 0, %6 ]
  %18 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !49
  %19 = tail call ptr @unshare_expr(ptr noundef nonnull %4) #17
  %20 = tail call ptr @fold_build2_stat_loc(i32 noundef %17, i32 noundef 94, ptr noundef %18, ptr noundef %19, ptr noundef %1) #17
  br label %21

21:                                               ; preds = %2, %16
  %22 = phi ptr [ %20, %16 ], [ %1, %2 ]
  store ptr %22, ptr %3, align 8, !tbaa !75
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @combine_blocks(ptr noundef %0) unnamed_addr #1 !prof !59 !PGOFuncName !124 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  %8 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %9 = load i32, ptr %8, align 4, !tbaa !74
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #15
  tail call fastcc void @process_phi_nodes(ptr noundef %0) #16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %1
  %12 = zext i32 %9 to i64
  br label %16

13:                                               ; preds = %16
  %14 = add nuw nsw i64 %17, 1
  %15 = icmp eq i64 %14, %12
  br i1 %15, label %23, label %16, !llvm.loop !125

16:                                               ; preds = %11, %13
  %17 = phi i64 [ 0, %11 ], [ %14, %13 ]
  %18 = load ptr, ptr @ifc_bbs, align 8, !tbaa !49
  %19 = getelementptr inbounds ptr, ptr %18, i64 %17
  %20 = load ptr, ptr %19, align 8, !tbaa !49
  %21 = tail call fastcc zeroext i8 @bb_with_exit_edge_p(ptr noundef %0, ptr noundef %20) #16, !range !78
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %13, label %23

23:                                               ; preds = %13, %16, %1
  %24 = phi ptr [ null, %1 ], [ %20, %16 ], [ null, %13 ]
  %25 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !126
  %27 = icmp eq ptr %24, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 945, ptr noundef nonnull @.str.8) #17
  br label %29

29:                                               ; preds = %23, %28
  %30 = icmp ugt i32 %9, 1
  br i1 %30, label %31, label %60

31:                                               ; preds = %29
  %32 = getelementptr inbounds i8, ptr %3, i64 8
  %33 = zext i32 %9 to i64
  br label %34

34:                                               ; preds = %31, %57
  %35 = phi i64 [ 1, %31 ], [ %58, %57 ]
  %36 = load ptr, ptr @ifc_bbs, align 8, !tbaa !49
  %37 = getelementptr inbounds ptr, ptr %36, i64 %35
  %38 = load ptr, ptr %37, align 8, !tbaa !49
  %39 = tail call fastcc ptr @ei_start_1(ptr noundef %38) #16
  store i32 0, ptr %3, align 8, !tbaa.struct !96
  store ptr %39, ptr %32, align 8, !tbaa.struct !97
  %40 = tail call fastcc ptr @ei_safe_edge(i32 0, ptr %39) #16
  %41 = icmp eq ptr %40, null
  br i1 %41, label %57, label %42

42:                                               ; preds = %34, %52
  %43 = phi ptr [ %53, %52 ], [ %39, %34 ]
  %44 = phi i32 [ %54, %52 ], [ 0, %34 ]
  %45 = phi ptr [ %55, %52 ], [ %40, %34 ]
  %46 = load ptr, ptr %45, align 8, !tbaa !127
  %47 = icmp eq ptr %46, %24
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  call fastcc void @ei_next(ptr noundef nonnull %3) #16
  %49 = load i32, ptr %3, align 8
  %50 = load ptr, ptr %32, align 8
  br label %52

51:                                               ; preds = %42
  tail call void @remove_edge(ptr noundef nonnull %45) #17
  br label %52

52:                                               ; preds = %51, %48
  %53 = phi ptr [ %43, %51 ], [ %50, %48 ]
  %54 = phi i32 [ %44, %51 ], [ %49, %48 ]
  %55 = tail call fastcc ptr @ei_safe_edge(i32 %54, ptr %53) #16
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %42, !llvm.loop !128

57:                                               ; preds = %52, %34
  %58 = add nuw nsw i64 %35, 1
  %59 = icmp eq i64 %58, %33
  br i1 %59, label %60, label %34, !llvm.loop !129

60:                                               ; preds = %57, %29
  store ptr null, ptr %2, align 8, !tbaa !49
  %61 = icmp eq ptr %24, null
  %62 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !95
  br i1 %61, label %89, label %64

64:                                               ; preds = %60
  %65 = icmp eq ptr %24, %63
  br i1 %65, label %69, label %66

66:                                               ; preds = %64
  %67 = tail call ptr @make_edge(ptr noundef %63, ptr noundef nonnull %24, i32 noundef 1) #17
  %68 = load ptr, ptr %62, align 8, !tbaa !95
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef nonnull %24, ptr noundef %68) #17
  br label %69

69:                                               ; preds = %66, %64
  %70 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 1
  %71 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %70) #16
  store i32 0, ptr %3, align 8, !tbaa.struct !96
  %72 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %71, ptr %72, align 8, !tbaa.struct !97
  %73 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %71, ptr noundef nonnull %2) #16, !range !78
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %87, label %75

75:                                               ; preds = %69, %82
  %76 = load ptr, ptr %2, align 8, !tbaa !49
  %77 = tail call zeroext i8 @loop_exit_edge_p(ptr noundef %0, ptr noundef %76) #17
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load ptr, ptr %25, align 8, !tbaa !126
  %81 = tail call ptr @redirect_edge_and_branch(ptr noundef %76, ptr noundef %80) #17
  br label %82

82:                                               ; preds = %75, %79
  call fastcc void @ei_next(ptr noundef nonnull %3) #16
  %83 = load i32, ptr %3, align 8
  %84 = load ptr, ptr %72, align 8
  %85 = call fastcc zeroext i8 @ei_cond(i32 %83, ptr %84, ptr noundef nonnull %2) #16, !range !78
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %87, label %75, !llvm.loop !130

87:                                               ; preds = %82, %69
  %88 = load ptr, ptr %25, align 8, !tbaa !126
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef %88, ptr noundef nonnull %24) #17
  br label %94

89:                                               ; preds = %60
  %90 = load ptr, ptr %25, align 8, !tbaa !126
  %91 = tail call ptr @make_edge(ptr noundef %63, ptr noundef %90, i32 noundef 1) #17
  %92 = load ptr, ptr %25, align 8, !tbaa !126
  %93 = load ptr, ptr %62, align 8, !tbaa !95
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef %92, ptr noundef %93) #17
  br label %94

94:                                               ; preds = %89, %87
  %95 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !95
  br i1 %30, label %97, label %128

97:                                               ; preds = %94
  %98 = zext i32 %9 to i64
  %99 = load ptr, ptr @ifc_bbs, align 8, !tbaa !49
  br label %100

100:                                              ; preds = %97, %124
  %101 = phi ptr [ %99, %97 ], [ %125, %124 ]
  %102 = phi i64 [ 1, %97 ], [ %126, %124 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #15
  %103 = getelementptr inbounds ptr, ptr %101, i64 %102
  %104 = load ptr, ptr %103, align 8, !tbaa !49
  %105 = icmp eq ptr %104, %24
  br i1 %105, label %124, label %106

106:                                              ; preds = %100
  %107 = load ptr, ptr %25, align 8, !tbaa !126
  %108 = icmp eq ptr %104, %107
  br i1 %108, label %124, label %109

109:                                              ; preds = %106
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #15
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %104) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !77
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #15
  %110 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #16, !range !78
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %109, %118
  %113 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #16
  %114 = call fastcc i32 @gimple_code(ptr noundef %113) #16, !range !115
  %115 = icmp eq i32 %114, 4
  br i1 %115, label %116, label %117

116:                                              ; preds = %112
  call void @gsi_remove(ptr noundef nonnull %4, i8 noundef zeroext 1) #17
  br label %118

117:                                              ; preds = %112
  call void @gimple_set_bb(ptr noundef %113, ptr noundef %96) #17
  call fastcc void @gsi_next(ptr noundef nonnull %4) #16
  br label %118

118:                                              ; preds = %117, %116
  %119 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #16, !range !78
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %112, label %121, !llvm.loop !131

121:                                              ; preds = %118, %109
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #15
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %7, ptr noundef %96) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !77
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #15
  %122 = call fastcc ptr @bb_seq(ptr noundef %104) #16
  call void @gsi_insert_seq_after(ptr noundef nonnull %5, ptr noundef %122, i32 noundef 0) #17
  call fastcc void @set_bb_seq(ptr noundef %104) #16
  call void @delete_basic_block(ptr noundef %104) #17
  %123 = load ptr, ptr @ifc_bbs, align 8, !tbaa !49
  br label %124

124:                                              ; preds = %100, %106, %121
  %125 = phi ptr [ %101, %100 ], [ %101, %106 ], [ %123, %121 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  %126 = add nuw nsw i64 %102, 1
  %127 = icmp eq i64 %126, %98
  br i1 %127, label %128, label %100, !llvm.loop !132

128:                                              ; preds = %124, %94
  br i1 %61, label %137, label %129

129:                                              ; preds = %128
  %130 = load ptr, ptr %95, align 8, !tbaa !95
  %131 = icmp eq ptr %24, %130
  br i1 %131, label %137, label %132

132:                                              ; preds = %129
  %133 = call zeroext i8 @can_merge_blocks_p(ptr noundef %130, ptr noundef nonnull %24) #17
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %137, label %135

135:                                              ; preds = %132
  %136 = load ptr, ptr %95, align 8, !tbaa !95
  call void @merge_blocks(ptr noundef %136, ptr noundef nonnull %24) #17
  br label %137

137:                                              ; preds = %135, %132, %129, %128
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @clean_predicate_lists(ptr noundef %0) unnamed_addr #1 !prof !59 !PGOFuncName !133 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #15
  %4 = tail call ptr @get_loop_body(ptr noundef %0) #17
  %5 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %6 = load i32, ptr %5, align 4, !tbaa !74
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %32, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds i8, ptr %3, i64 8
  br label %10

10:                                               ; preds = %8, %27
  %11 = phi i64 [ 0, %8 ], [ %28, %27 ]
  %12 = getelementptr inbounds ptr, ptr %4, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !49
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 2
  store ptr null, ptr %14, align 8, !tbaa !75
  %15 = load ptr, ptr %12, align 8, !tbaa !49
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 1
  %17 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %16) #16
  store i32 0, ptr %3, align 8, !tbaa.struct !96
  store ptr %17, ptr %9, align 8, !tbaa.struct !97
  %18 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %17, ptr noundef nonnull %2) #16, !range !78
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %10, %20
  %21 = load ptr, ptr %2, align 8, !tbaa !49
  %22 = getelementptr inbounds %struct.edge_def, ptr %21, i64 0, i32 3
  store ptr null, ptr %22, align 8, !tbaa !100
  call fastcc void @ei_next(ptr noundef nonnull %3) #16
  %23 = load i32, ptr %3, align 8
  %24 = load ptr, ptr %9, align 8
  %25 = call fastcc zeroext i8 @ei_cond(i32 %23, ptr %24, ptr noundef nonnull %2) #16, !range !78
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %20, !llvm.loop !134

27:                                               ; preds = %20, %10
  %28 = add nuw nsw i64 %11, 1
  %29 = load i32, ptr %5, align 4, !tbaa !74
  %30 = zext i32 %29 to i64
  %31 = icmp ult i64 %28, %30
  br i1 %31, label %10, label %32, !llvm.loop !135

32:                                               ; preds = %27, %1
  tail call void @free(ptr noundef %4) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  ret void
}

; Function Attrs: optsize
declare ptr @single_exit(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #11 !prof !59 !PGOFuncName !136 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #1 !prof !59 !PGOFuncName !137 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #16, !range !78
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #16
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !49
  ret i8 %10
}

; Function Attrs: optsize
declare zeroext i8 @loop_exit_edge_p(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #1 !prof !59 !PGOFuncName !138 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #16
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #16
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 738, ptr noundef nonnull @.str.8) #17
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !139
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !139
  ret void
}

; Function Attrs: optsize
declare void @calculate_dominance_info(i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_loop_body_in_if_conv_order(ptr noundef %0) unnamed_addr #1 !prof !59 !PGOFuncName !141 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  %3 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !74
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1082, ptr noundef nonnull @.str.8) #17
  br label %7

7:                                                ; preds = %1, %6
  %8 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !126
  %10 = load ptr, ptr @cfun, align 8, !tbaa !49
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !142
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !143
  %15 = icmp eq ptr %9, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1083, ptr noundef nonnull @.str.8) #17
  br label %17

17:                                               ; preds = %7, %16
  %18 = load i32, ptr %3, align 4, !tbaa !74
  %19 = zext i32 %18 to i64
  %20 = tail call ptr @xcalloc(i64 noundef %19, i64 noundef 8) #17
  %21 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  store ptr %21, ptr %2, align 8, !tbaa !49
  %22 = tail call ptr @get_loop_body_in_bfs_order(ptr noundef nonnull %0) #17
  %23 = load i32, ptr %3, align 4, !tbaa !74
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %64, label %25

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  br label %27

27:                                               ; preds = %25, %55
  %28 = phi i32 [ 0, %25 ], [ %56, %55 ]
  %29 = phi i32 [ 0, %25 ], [ %62, %55 ]
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds ptr, ptr %22, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !49
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 13
  %34 = load i32, ptr %33, align 8, !tbaa !145
  %35 = and i32 %34, 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %27
  tail call void @free(ptr noundef nonnull %22) #16
  tail call void @bitmap_obstack_free(ptr noundef %21) #17
  tail call void @free(ptr noundef %20) #16
  br label %65

38:                                               ; preds = %27
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 9
  %40 = load i32, ptr %39, align 8, !tbaa !146
  %41 = tail call i32 @bitmap_bit_p(ptr noundef %21, i32 noundef %40) #17
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %38
  %44 = call fastcc zeroext i8 @pred_blocks_visited_p(ptr noundef nonnull %32, ptr noundef nonnull %2) #16, !range !78
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load ptr, ptr %26, align 8, !tbaa !95
  %48 = icmp eq ptr %32, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %46, %43
  %50 = load i32, ptr %39, align 8, !tbaa !146
  %51 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %21, i32 noundef %50) #17
  %52 = add i32 %28, 1
  %53 = zext i32 %28 to i64
  %54 = getelementptr inbounds ptr, ptr %20, i64 %53
  store ptr %32, ptr %54, align 8, !tbaa !49
  br label %55

55:                                               ; preds = %46, %49, %38
  %56 = phi i32 [ %28, %38 ], [ %52, %49 ], [ %28, %46 ]
  %57 = add nuw i32 %29, 1
  %58 = load i32, ptr %3, align 4, !tbaa !74
  %59 = icmp ne i32 %57, %58
  %60 = icmp eq i32 %56, %58
  %61 = select i1 %59, i1 true, i1 %60
  %62 = select i1 %61, i32 %57, i32 0
  %63 = icmp ult i32 %62, %58
  br i1 %63, label %27, label %64, !llvm.loop !147

64:                                               ; preds = %55, %17
  tail call void @free(ptr noundef %22) #16
  tail call void @bitmap_obstack_free(ptr noundef %21) #17
  br label %65

65:                                               ; preds = %64, %37
  %66 = phi ptr [ null, %37 ], [ %20, %64 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  ret ptr %66
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @if_convertible_bb_p(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 !prof !59 !PGOFuncName !148 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  %6 = load ptr, ptr @dump_file, align 8, !tbaa !49
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %3
  %9 = load i32, ptr @dump_flags, align 4, !tbaa !43
  %10 = and i32 %9, 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !146
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %6, ptr noundef nonnull @.str.10, i32 noundef %14) #16
  br label %16

16:                                               ; preds = %12, %8, %3
  %17 = icmp eq ptr %2, null
  br i1 %17, label %60, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !126
  %21 = icmp eq ptr %20, %1
  br i1 %21, label %31, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr @dump_file, align 8, !tbaa !49
  %24 = icmp eq ptr %23, null
  br i1 %24, label %86, label %25

25:                                               ; preds = %22
  %26 = load i32, ptr @dump_flags, align 4, !tbaa !43
  %27 = and i32 %26, 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %86, label %29

29:                                               ; preds = %25
  %30 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 43, i64 1, ptr nonnull %23)
  br label %86

31:                                               ; preds = %18
  %32 = tail call zeroext i8 @empty_block_p(ptr noundef %1) #17
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %31
  %35 = load ptr, ptr @dump_file, align 8, !tbaa !49
  %36 = icmp eq ptr %35, null
  br i1 %36, label %86, label %37

37:                                               ; preds = %34
  %38 = load i32, ptr @dump_flags, align 4, !tbaa !43
  %39 = and i32 %38, 8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %86, label %41

41:                                               ; preds = %37
  %42 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 36, i64 1, ptr nonnull %35)
  br label %86

43:                                               ; preds = %31
  %44 = load ptr, ptr %19, align 8, !tbaa !126
  %45 = icmp ne ptr %44, %1
  %46 = icmp eq ptr %1, %2
  %47 = or i1 %46, %45
  br i1 %47, label %60, label %48

48:                                               ; preds = %43
  %49 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %1, ptr noundef nonnull %2) #17
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %48
  %52 = load ptr, ptr @dump_file, align 8, !tbaa !49
  %53 = icmp eq ptr %52, null
  br i1 %53, label %86, label %54

54:                                               ; preds = %51
  %55 = load i32, ptr @dump_flags, align 4, !tbaa !43
  %56 = and i32 %55, 8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %86, label %58

58:                                               ; preds = %54
  %59 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 37, i64 1, ptr nonnull %52)
  br label %86

60:                                               ; preds = %43, %48, %16
  %61 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 1
  %62 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %61) #16
  store i32 0, ptr %5, align 8, !tbaa.struct !96
  %63 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr %62, ptr %63, align 8, !tbaa.struct !97
  %64 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %62, ptr noundef nonnull %4) #16, !range !78
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %86, label %66

66:                                               ; preds = %60, %81
  %67 = load ptr, ptr %4, align 8, !tbaa !49
  %68 = getelementptr inbounds %struct.edge_def, ptr %67, i64 0, i32 7
  %69 = load i32, ptr %68, align 8, !tbaa !149
  %70 = and i32 %69, 142
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %81, label %72

72:                                               ; preds = %66
  %73 = load ptr, ptr @dump_file, align 8, !tbaa !49
  %74 = icmp eq ptr %73, null
  br i1 %74, label %86, label %75

75:                                               ; preds = %72
  %76 = load i32, ptr @dump_flags, align 4, !tbaa !43
  %77 = and i32 %76, 8
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %86, label %79

79:                                               ; preds = %75
  %80 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 26, i64 1, ptr nonnull %73)
  br label %86

81:                                               ; preds = %66
  call fastcc void @ei_next(ptr noundef nonnull %5) #16
  %82 = load i32, ptr %5, align 8
  %83 = load ptr, ptr %63, align 8
  %84 = call fastcc zeroext i8 @ei_cond(i32 %82, ptr %83, ptr noundef nonnull %4) #16, !range !78
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %66, !llvm.loop !150

86:                                               ; preds = %81, %60, %72, %75, %79, %51, %54, %58, %34, %37, %41, %22, %25, %29
  %87 = phi i8 [ 0, %29 ], [ 0, %25 ], [ 0, %22 ], [ 0, %41 ], [ 0, %37 ], [ 0, %34 ], [ 0, %58 ], [ 0, %54 ], [ 0, %51 ], [ 0, %79 ], [ 0, %75 ], [ 0, %72 ], [ 1, %60 ], [ 1, %81 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  ret i8 %87
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @if_convertible_stmt_p(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 !prof !59 !PGOFuncName !151 {
  %4 = tail call fastcc i32 @gimple_code(ptr noundef %2) #16, !range !115
  %5 = trunc i32 %4 to i8
  switch i8 %5, label %9 [
    i8 4, label %19
    i8 2, label %19
    i8 6, label %6
    i8 1, label %19
  ]

6:                                                ; preds = %3
  %7 = tail call fastcc zeroext i8 @if_convertible_gimple_assign_stmt_p(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16, !range !78
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %20, label %19

9:                                                ; preds = %3
  %10 = load ptr, ptr @dump_file, align 8, !tbaa !49
  %11 = icmp eq ptr %10, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %9
  %13 = load i32, ptr @dump_flags, align 4, !tbaa !43
  %14 = and i32 %13, 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 22, i64 1, ptr nonnull %10)
  %18 = load ptr, ptr @dump_file, align 8, !tbaa !49
  tail call void @print_gimple_stmt(ptr noundef %18, ptr noundef %2, i32 noundef 0, i32 noundef 2) #17
  br label %20

19:                                               ; preds = %6, %3, %3, %3
  br label %20

20:                                               ; preds = %9, %12, %16, %6, %19
  %21 = phi i8 [ 1, %19 ], [ 0, %6 ], [ 0, %16 ], [ 0, %12 ], [ 0, %9 ]
  ret i8 %21
}

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @if_convertible_phi_p(ptr nocapture noundef readonly %0, ptr noundef readnone %1, ptr noundef %2) unnamed_addr #1 !prof !59 !PGOFuncName !152 {
  %4 = alloca %struct.immediate_use_iterator_d, align 8
  %5 = load ptr, ptr @dump_file, align 8, !tbaa !49
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = load i32, ptr @dump_flags, align 4, !tbaa !43
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 26, i64 1, ptr nonnull %5)
  %13 = load ptr, ptr @dump_file, align 8, !tbaa !49
  tail call void @print_gimple_stmt(ptr noundef %13, ptr noundef %2, i32 noundef 0, i32 noundef 2) #17
  br label %14

14:                                               ; preds = %11, %7, %3
  %15 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !95
  %17 = icmp eq ptr %16, %1
  br i1 %17, label %30, label %18

18:                                               ; preds = %14
  %19 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %2) #16
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %30, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr @dump_file, align 8, !tbaa !49
  %23 = icmp eq ptr %22, null
  br i1 %23, label %74, label %24

24:                                               ; preds = %21
  %25 = load i32, ptr @dump_flags, align 4, !tbaa !43
  %26 = and i32 %25, 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %74, label %28

28:                                               ; preds = %24
  %29 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 29, i64 1, ptr nonnull %22)
  br label %74

30:                                               ; preds = %18, %14
  %31 = tail call fastcc ptr @gimple_phi_result(ptr noundef %2) #16
  %32 = getelementptr inbounds %struct.tree_ssa_name, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !123
  %34 = tail call zeroext i8 @is_gimple_reg(ptr noundef %33) #17
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %74

36:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #15
  %37 = load ptr, ptr %15, align 8, !tbaa !95
  %38 = icmp eq ptr %37, %1
  br i1 %38, label %48, label %39

39:                                               ; preds = %36
  %40 = load ptr, ptr @dump_file, align 8, !tbaa !49
  %41 = icmp eq ptr %40, null
  br i1 %41, label %72, label %42

42:                                               ; preds = %39
  %43 = load i32, ptr @dump_flags, align 4, !tbaa !43
  %44 = and i32 %43, 8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %72, label %46

46:                                               ; preds = %42
  %47 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 32, i64 1, ptr nonnull %40)
  br label %72

48:                                               ; preds = %36
  %49 = tail call fastcc ptr @gimple_phi_result(ptr noundef %2) #16
  %50 = call fastcc ptr @first_readonly_imm_use(ptr noundef nonnull %4, ptr noundef %49) #16
  %51 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %4) #16, !range !78
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %73

53:                                               ; preds = %48, %68
  %54 = phi ptr [ %69, %68 ], [ %50, %48 ]
  %55 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %54, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !123
  %57 = tail call fastcc i32 @gimple_code(ptr noundef %56) #16, !range !115
  %58 = icmp eq i32 %57, 16
  br i1 %58, label %59, label %68

59:                                               ; preds = %53
  %60 = load ptr, ptr @dump_file, align 8, !tbaa !49
  %61 = icmp eq ptr %60, null
  br i1 %61, label %72, label %62

62:                                               ; preds = %59
  %63 = load i32, ptr @dump_flags, align 4, !tbaa !43
  %64 = and i32 %63, 8
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %62
  %67 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 38, i64 1, ptr nonnull %60)
  br label %72

68:                                               ; preds = %53
  %69 = call fastcc ptr @next_readonly_imm_use(ptr noundef nonnull %4) #16
  %70 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %4) #16, !range !78
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %53, label %73, !llvm.loop !153

72:                                               ; preds = %46, %42, %39, %66, %62, %59
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #15
  br label %74

73:                                               ; preds = %68, %48
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #15
  br label %74

74:                                               ; preds = %30, %73, %72, %21, %24, %28
  %75 = phi i8 [ 0, %28 ], [ 0, %24 ], [ 0, %21 ], [ 0, %72 ], [ 1, %73 ], [ 1, %30 ]
  ret i8 %75
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @bb_with_exit_edge_p(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !59 !PGOFuncName !154 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #15
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 1
  %6 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %5) #16
  store i32 0, ptr %4, align 8, !tbaa.struct !96
  %7 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %6, ptr %7, align 8, !tbaa.struct !97
  %8 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %6, ptr noundef nonnull %3) #16, !range !78
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %2, %14
  %11 = load ptr, ptr %3, align 8, !tbaa !49
  %12 = tail call zeroext i8 @loop_exit_edge_p(ptr noundef %0, ptr noundef %11) #17
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  call fastcc void @ei_next(ptr noundef nonnull %4) #16
  %15 = load i32, ptr %4, align 8
  %16 = load ptr, ptr %7, align 8
  %17 = call fastcc zeroext i8 @ei_cond(i32 %15, ptr %16, ptr noundef nonnull %3) #16, !range !78
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %10, !llvm.loop !155

19:                                               ; preds = %14, %10, %2
  %20 = phi i8 [ 0, %2 ], [ 1, %10 ], [ 0, %14 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret i8 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #1 !prof !59 !PGOFuncName !156 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #16
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #16
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #1 !prof !59 !PGOFuncName !157 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #16
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #16
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !59 !PGOFuncName !158 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !159
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #1 !prof !59 !PGOFuncName !161 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 687, ptr noundef nonnull @.str.8) #17
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !49
  ret ptr %5
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !prof !59 !PGOFuncName !162 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @get_loop_body_in_bfs_order(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @pred_blocks_visited_p(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !prof !59 !PGOFuncName !163 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #15
  %5 = tail call fastcc ptr @ei_start_1(ptr noundef %0) #16
  store i32 0, ptr %4, align 8, !tbaa.struct !96
  %6 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %5, ptr %6, align 8, !tbaa.struct !97
  %7 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %5, ptr noundef nonnull %3) #16, !range !78
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %22, label %9

9:                                                ; preds = %2, %17
  %10 = load ptr, ptr %1, align 8, !tbaa !49
  %11 = load ptr, ptr %3, align 8, !tbaa !49
  %12 = load ptr, ptr %11, align 8, !tbaa !127
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !146
  %15 = tail call i32 @bitmap_bit_p(ptr noundef %10, i32 noundef %14) #17
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %9
  call fastcc void @ei_next(ptr noundef nonnull %4) #16
  %18 = load i32, ptr %4, align 8
  %19 = load ptr, ptr %6, align 8
  %20 = call fastcc zeroext i8 @ei_cond(i32 %18, ptr %19, ptr noundef nonnull %3) #16, !range !78
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %9, !llvm.loop !164

22:                                               ; preds = %9, %17, %2
  %23 = phi i8 [ 1, %2 ], [ 1, %17 ], [ 0, %9 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret i8 %23
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @empty_block_p(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !59 !PGOFuncName !165 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @if_convertible_gimple_assign_stmt_p(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 !prof !59 !PGOFuncName !166 {
  %4 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %2) #16, !range !78
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %75, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr @dump_file, align 8, !tbaa !49
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %6
  %10 = load i32, ptr @dump_flags, align 4, !tbaa !43
  %11 = and i32 %10, 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 26, i64 1, ptr nonnull %7)
  %15 = load ptr, ptr @dump_file, align 8, !tbaa !49
  tail call void @print_gimple_stmt(ptr noundef %15, ptr noundef %2, i32 noundef 0, i32 noundef 2) #17
  br label %16

16:                                               ; preds = %13, %9, %6
  %17 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %2) #16
  %18 = tail call zeroext i8 @stmt_ends_bb_p(ptr noundef %2) #17
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %16
  %21 = tail call fastcc zeroext i8 @gimple_has_volatile_ops(ptr noundef %2) #16, !range !78
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load i64, ptr %17, align 8
  %25 = and i64 %24, 4259839
  %26 = icmp eq i64 %25, 4194445
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = tail call zeroext i8 @gimple_has_side_effects(ptr noundef %2) #17
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %23, %27, %20, %16
  %31 = load ptr, ptr @dump_file, align 8, !tbaa !49
  %32 = icmp eq ptr %31, null
  br i1 %32, label %75, label %33

33:                                               ; preds = %30
  %34 = load i32, ptr @dump_flags, align 4, !tbaa !43
  %35 = and i32 %34, 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %75, label %37

37:                                               ; preds = %33
  %38 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 28, i64 1, ptr nonnull %31)
  br label %75

39:                                               ; preds = %27
  %40 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !95
  %42 = icmp eq ptr %41, %1
  br i1 %42, label %55, label %43

43:                                               ; preds = %39
  %44 = tail call zeroext i8 @gimple_assign_rhs_could_trap_p(ptr noundef %2) #17
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %43
  %47 = load ptr, ptr @dump_file, align 8, !tbaa !49
  %48 = icmp eq ptr %47, null
  br i1 %48, label %75, label %49

49:                                               ; preds = %46
  %50 = load i32, ptr @dump_flags, align 4, !tbaa !43
  %51 = and i32 %50, 8
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %75, label %53

53:                                               ; preds = %49
  %54 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 19, i64 1, ptr nonnull %47)
  br label %75

55:                                               ; preds = %43, %39
  %56 = load i64, ptr %17, align 8
  %57 = and i64 %56, 65535
  %58 = icmp eq i64 %57, 141
  br i1 %58, label %75, label %59

59:                                               ; preds = %55
  %60 = load ptr, ptr %40, align 8, !tbaa !95
  %61 = icmp eq ptr %60, %1
  br i1 %61, label %75, label %62

62:                                               ; preds = %59
  %63 = tail call fastcc zeroext i8 @bb_with_exit_edge_p(ptr noundef nonnull %0, ptr noundef %1) #16, !range !78
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %62
  %66 = load ptr, ptr @dump_file, align 8, !tbaa !49
  %67 = icmp eq ptr %66, null
  br i1 %67, label %75, label %68

68:                                               ; preds = %65
  %69 = load i32, ptr @dump_flags, align 4, !tbaa !43
  %70 = and i32 %69, 8
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %68
  %73 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 15, i64 1, ptr nonnull %66)
  %74 = load ptr, ptr @dump_file, align 8, !tbaa !49
  tail call void @print_gimple_stmt(ptr noundef %74, ptr noundef %2, i32 noundef 0, i32 noundef 2) #17
  br label %75

75:                                               ; preds = %55, %59, %62, %65, %68, %72, %46, %49, %53, %30, %33, %37, %3
  %76 = phi i8 [ 0, %3 ], [ 0, %37 ], [ 0, %33 ], [ 0, %30 ], [ 0, %53 ], [ 0, %49 ], [ 0, %46 ], [ 0, %72 ], [ 0, %68 ], [ 0, %65 ], [ 1, %62 ], [ 1, %59 ], [ 1, %55 ]
  ret i8 %76
}

; Function Attrs: optsize
declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !59 !PGOFuncName !167 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !115
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #1 !prof !59 !PGOFuncName !168 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #16
  ret ptr %2
}

; Function Attrs: optsize
declare zeroext i8 @stmt_ends_bb_p(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_volatile_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !59 !PGOFuncName !169 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #16, !range !78
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
declare zeroext i8 @gimple_has_side_effects(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @gimple_assign_rhs_could_trap_p(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #1 !prof !59 !PGOFuncName !170 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #16, !range !78
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #16
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !59 !PGOFuncName !171 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !115
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #1 !prof !59 !PGOFuncName !172 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #16
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !173
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !59 !PGOFuncName !174 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !115
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #16
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #11 !prof !59 !PGOFuncName !175 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !43
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !59 !PGOFuncName !176 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !115
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !59 !PGOFuncName !177 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !123
  ret i32 %3
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !59 !PGOFuncName !178 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !123
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @first_readonly_imm_use(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #5 !prof !59 !PGOFuncName !179 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  %4 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !180
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !183
  store ptr %6, ptr %0, align 8, !tbaa !184
  %7 = tail call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %0) #16, !range !78
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %8, ptr %6, ptr null
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_readonly_imm_use_p(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !59 !PGOFuncName !185 {
  %2 = load ptr, ptr %0, align 8, !tbaa !184
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !180
  %5 = icmp eq ptr %2, %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_readonly_imm_use(ptr nocapture noundef %0) unnamed_addr #9 !prof !59 !PGOFuncName !186 {
  %2 = load ptr, ptr %0, align 8, !tbaa !184
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !183
  store ptr %4, ptr %0, align 8, !tbaa !184
  %5 = tail call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %0) #16, !range !78
  %6 = icmp eq i8 %5, 0
  %7 = select i1 %6, ptr %4, ptr null
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !59 !PGOFuncName !187 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !145
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !123
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !188
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #4 !prof !59 !PGOFuncName !190 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !191
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: optsize
declare void @print_generic_stmt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_debug_bind_p(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !59 !PGOFuncName !193 {
  %2 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %0) #16, !range !78
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8
  %6 = icmp ult i32 %5, 65536
  %7 = zext i1 %6 to i8
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi i8 [ %7, %4 ], [ 0, %1 ]
  ret i8 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_debug_bind_reset_value(ptr noundef %0) unnamed_addr #1 !prof !59 !PGOFuncName !194 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 1, ptr noundef null) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_stmt(ptr noundef %0) unnamed_addr #1 !prof !59 !PGOFuncName !195 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #16, !range !78
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
define internal fastcc void @tree_if_convert_cond_stmt(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 !prof !59 !PGOFuncName !196 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #15
  %7 = tail call fastcc i32 @gimple_location(ptr noundef %1) #16
  %8 = tail call fastcc i32 @gimple_code(ptr noundef %1) #16, !range !115
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %11, label %10

10:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 285, ptr noundef nonnull @.str.8) #17
  br label %11

11:                                               ; preds = %4, %10
  %12 = tail call fastcc i32 @gimple_cond_code(ptr noundef %1) #16, !range !197
  %13 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !49
  %14 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %1) #16
  %15 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %1) #16
  %16 = tail call ptr @fold_build2_stat_loc(i32 noundef %7, i32 noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15) #17
  %17 = tail call fastcc ptr @gimple_bb(ptr noundef %1) #16
  call void @extract_true_false_edges_from_block(ptr noundef %17, ptr noundef nonnull %5, ptr noundef nonnull %6) #17
  %18 = load ptr, ptr %5, align 8, !tbaa !49
  call fastcc void @add_to_dst_predicate_list(ptr noundef %0, ptr noundef %18, ptr noundef %2, ptr noundef %16, ptr noundef %3) #16
  %19 = call ptr @unshare_expr(ptr noundef %16) #17
  %20 = call ptr @invert_truthvalue_loc(i32 noundef %7, ptr noundef %19) #17
  %21 = load ptr, ptr %6, align 8, !tbaa !49
  call fastcc void @add_to_dst_predicate_list(ptr noundef %0, ptr noundef %21, ptr noundef %2, ptr noundef %20, ptr noundef %3) #16
  %22 = call fastcc ptr @gimple_bb(ptr noundef %1) #16
  %23 = call fastcc zeroext i8 @bb_with_exit_edge_p(ptr noundef %0, ptr noundef %22) #16, !range !78
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %11
  call void @gsi_remove(ptr noundef %3, i8 noundef zeroext 1) #17
  br label %26

26:                                               ; preds = %25, %11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !59 !PGOFuncName !198 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !115
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #1 !prof !59 !PGOFuncName !199 {
  %4 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #16, !range !78
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #16
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %10, label %9

9:                                                ; preds = %6, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 1665, ptr noundef nonnull @.str.8) #17
  br label %10

10:                                               ; preds = %6, %9
  %11 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #16
  %12 = zext nneg i32 %1 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  store ptr %2, ptr %13, align 8, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !59 !PGOFuncName !200 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !123
  ret i32 %3
}

; Function Attrs: optsize
declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: optsize
declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_location(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !59 !PGOFuncName !201 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !123
  ret i32 %3
}

; Function Attrs: optsize
declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_cond_code(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !59 !PGOFuncName !202 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_lhs(ptr noundef %0) unnamed_addr #1 !prof !59 !PGOFuncName !203 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #16
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_rhs(ptr noundef %0) unnamed_addr #1 !prof !59 !PGOFuncName !204 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #16
  ret ptr %2
}

; Function Attrs: optsize
declare void @extract_true_false_edges_from_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !59 !PGOFuncName !205 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !123
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_to_dst_predicate_list(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #1 !prof !59 !PGOFuncName !206 {
  %6 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !121
  %8 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %0, ptr noundef %7) #17
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %32, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !49
  %12 = icmp ne ptr %11, %2
  %13 = icmp ne ptr %2, null
  %14 = and i1 %13, %12
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = tail call ptr @unshare_expr(ptr noundef %3) #17
  br label %29

17:                                               ; preds = %10
  %18 = tail call ptr @unshare_expr(ptr noundef nonnull %2) #17
  %19 = tail call ptr @force_gimple_operand_gsi(ptr noundef %4, ptr noundef %18, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #17
  %20 = tail call ptr @unshare_expr(ptr noundef %3) #17
  %21 = tail call ptr @force_gimple_operand_gsi(ptr noundef %4, ptr noundef %20, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #17
  %22 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 3
  store ptr %21, ptr %22, align 8, !tbaa !100
  %23 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !49
  %24 = tail call ptr @unshare_expr(ptr noundef %19) #17
  %25 = tail call ptr @build2_stat(i32 noundef 93, ptr noundef %23, ptr noundef %24, ptr noundef %21) #17
  %26 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !49
  %27 = tail call fastcc ptr @ifc_temp_var(ptr noundef %26, ptr noundef %25) #16
  tail call void @gsi_insert_before(ptr noundef %4, ptr noundef %27, i32 noundef 1) #17
  %28 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %27) #16
  br label %29

29:                                               ; preds = %17, %15
  %30 = phi ptr [ %28, %17 ], [ %16, %15 ]
  %31 = load ptr, ptr %6, align 8, !tbaa !121
  tail call fastcc void @add_to_predicate_list(ptr noundef %31, ptr noundef %30) #16
  br label %32

32:                                               ; preds = %5, %29
  ret void
}

; Function Attrs: optsize
declare ptr @invert_truthvalue_loc(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @unshare_expr(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @flow_bb_inside_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @force_gimple_operand_gsi(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @build2_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @ifc_temp_var(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !59 !PGOFuncName !207 {
  %3 = tail call ptr @create_tmp_var(ptr noundef %0, ptr noundef nonnull @.str.24) #17
  %4 = tail call zeroext i8 @add_referenced_var(ptr noundef %3) #17
  %5 = tail call ptr @gimple_build_assign_stat(ptr noundef %3, ptr noundef %1) #17
  %6 = tail call fastcc ptr @make_ssa_name(ptr noundef %3, ptr noundef %5) #16
  tail call fastcc void @gimple_assign_set_lhs(ptr noundef %5, ptr noundef %6) #16
  %7 = getelementptr inbounds %struct.tree_ssa_name, ptr %6, i64 0, i32 2
  store ptr %5, ptr %7, align 8, !tbaa !123
  tail call fastcc void @update_stmt(ptr noundef %5) #16
  ret ptr %5
}

; Function Attrs: optsize
declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @create_tmp_var(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @add_referenced_var(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_ssa_name(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !59 !PGOFuncName !208 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !49
  %4 = tail call ptr @make_ssa_name_fn(ptr noundef %3, ptr noundef %0, ptr noundef %1) #17
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_assign_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !59 !PGOFuncName !209 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 0, ptr noundef %1) #16
  %3 = icmp eq ptr %1, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  store ptr %0, ptr %9, align 8, !tbaa !123
  br label %10

10:                                               ; preds = %8, %4, %2
  ret void
}

; Function Attrs: optsize
declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !59 !PGOFuncName !210 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #16, !range !78
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 645, ptr noundef nonnull @.str.8) #17
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !119
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #16
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @process_phi_nodes(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !59 !PGOFuncName !211 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %7 = load i32, ptr %6, align 4, !tbaa !74
  %8 = icmp ugt i32 %7, 1
  br i1 %8, label %9, label %36

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %11 = zext i32 %7 to i64
  %12 = load ptr, ptr @ifc_bbs, align 8, !tbaa !49
  br label %13

13:                                               ; preds = %9, %32
  %14 = phi ptr [ %12, %9 ], [ %33, %32 ]
  %15 = phi i64 [ 1, %9 ], [ %34, %32 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  store ptr null, ptr %2, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #15
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !49
  %18 = load ptr, ptr %10, align 8, !tbaa !95
  %19 = icmp eq ptr %17, %18
  br i1 %19, label %32, label %20

20:                                               ; preds = %13
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %17) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #15
  call fastcc void @gsi_after_labels(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %17) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !77
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  %21 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #16, !range !78
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = call fastcc ptr @find_phi_replacement_condition(ptr noundef nonnull %0, ptr noundef %17, ptr noundef nonnull %2, ptr noundef nonnull %3) #16
  %25 = load ptr, ptr %2, align 8, !tbaa !49
  br label %26

26:                                               ; preds = %23, %26
  %27 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #16
  call fastcc void @replace_phi_with_cond_gimple_assign_stmt(ptr noundef %27, ptr noundef %25, ptr noundef %24, ptr noundef nonnull %3) #16
  call void @release_phi_node(ptr noundef %27) #17
  call fastcc void @gsi_next(ptr noundef nonnull %4) #16
  %28 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #16, !range !78
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %26, label %30, !llvm.loop !212

30:                                               ; preds = %26, %20
  call fastcc void @set_phi_nodes(ptr noundef %17) #16
  %31 = load ptr, ptr @ifc_bbs, align 8, !tbaa !49
  br label %32

32:                                               ; preds = %13, %30
  %33 = phi ptr [ %14, %13 ], [ %31, %30 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  %34 = add nuw nsw i64 %15, 1
  %35 = icmp eq i64 %34, %11
  br i1 %35, label %36, label %13, !llvm.loop !213

36:                                               ; preds = %32, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_safe_edge(i32 %0, ptr %1) unnamed_addr #1 !prof !59 !PGOFuncName !214 {
  %3 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #16, !range !78
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #16
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  ret ptr %8
}

; Function Attrs: optsize
declare void @remove_edge(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @make_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @set_immediate_dominator(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @redirect_edge_and_branch(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @gimple_set_bb(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_last_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #9 !prof !59 !PGOFuncName !215 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #16
  %4 = tail call fastcc ptr @gimple_seq_last(ptr noundef %3) #16
  store ptr %4, ptr %0, align 8, !tbaa !106
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !108
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !109
  ret void
}

; Function Attrs: optsize
declare void @gsi_insert_seq_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !59 !PGOFuncName !216 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !145
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 248, ptr noundef nonnull @.str.8) #17
  br label %7

7:                                                ; preds = %1, %6
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !123
  store ptr null, ptr %9, align 8, !tbaa !188
  ret void
}

; Function Attrs: optsize
declare void @delete_basic_block(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @can_merge_blocks_p(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @merge_blocks(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_after_labels(ptr dead_on_unwind noalias nocapture writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #12 !prof !59 !PGOFuncName !217 {
  tail call fastcc void @gsi_start_bb(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) #16
  %3 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #16, !range !78
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %2, %9
  %6 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #16
  %7 = tail call fastcc i32 @gimple_code(ptr noundef %6) #16, !range !115
  %8 = icmp eq i32 %7, 4
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  tail call fastcc void @gsi_next(ptr noundef %0) #16
  %10 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #16, !range !78
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %5, label %12, !llvm.loop !218

12:                                               ; preds = %5, %9, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_phi_replacement_condition(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr noundef %3) unnamed_addr #1 !prof !59 !PGOFuncName !219 {
  %5 = load ptr, ptr %1, align 8, !tbaa !220
  %6 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %5) #16
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 716, ptr noundef nonnull @.str.8) #17
  %9 = load ptr, ptr %1, align 8, !tbaa !220
  br label %10

10:                                               ; preds = %4, %8
  %11 = phi ptr [ %5, %4 ], [ %9, %8 ]
  %12 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %11, i32 noundef 0) #16
  %13 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %11, i32 noundef 1) #16
  %14 = load ptr, ptr %12, align 8, !tbaa !127
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !75
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 746, ptr noundef nonnull @.str.8) #17
  br label %19

19:                                               ; preds = %10, %18
  %20 = load i64, ptr %16, align 8
  %21 = and i64 %20, 65535
  %22 = icmp eq i64 %21, 96
  %23 = select i1 %22, ptr %12, ptr %13
  %24 = select i1 %22, ptr %13, ptr %12
  %25 = load ptr, ptr %24, align 8, !tbaa !127
  %26 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !95
  %28 = icmp eq ptr %25, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %19
  %30 = load ptr, ptr %23, align 8, !tbaa !127
  %31 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %30, ptr noundef %25) #17
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %50, label %33

33:                                               ; preds = %29, %19
  %34 = load ptr, ptr %23, align 8, !tbaa !127
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !75
  store ptr %36, ptr %2, align 8, !tbaa !49
  %37 = getelementptr inbounds %struct.edge_def, ptr %23, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !100
  %39 = icmp eq ptr %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %33
  %41 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !49
  %42 = tail call ptr @build2_stat(i32 noundef 93, ptr noundef %41, ptr noundef %36, ptr noundef nonnull %38) #17
  store ptr %42, ptr %2, align 8, !tbaa !49
  br label %43

43:                                               ; preds = %40, %33
  %44 = phi ptr [ %42, %40 ], [ %36, %33 ]
  %45 = load i64, ptr %44, align 8
  %46 = and i64 %45, 65535
  %47 = icmp eq i64 %46, 96
  br i1 %47, label %48, label %62

48:                                               ; preds = %43
  %49 = tail call ptr @invert_truthvalue_loc(i32 noundef 0, ptr noundef nonnull %44) #17
  br label %60

50:                                               ; preds = %29
  %51 = load ptr, ptr %24, align 8, !tbaa !127
  %52 = getelementptr inbounds %struct.basic_block_def, ptr %51, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !75
  store ptr %53, ptr %2, align 8, !tbaa !49
  %54 = getelementptr inbounds %struct.edge_def, ptr %24, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !100
  %56 = icmp eq ptr %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %50
  %58 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !49
  %59 = tail call ptr @build2_stat(i32 noundef 93, ptr noundef %58, ptr noundef %53, ptr noundef nonnull %55) #17
  br label %60

60:                                               ; preds = %48, %57
  %61 = phi ptr [ %59, %57 ], [ %49, %48 ]
  store ptr %61, ptr %2, align 8, !tbaa !49
  br label %62

62:                                               ; preds = %60, %43, %50
  %63 = phi ptr [ %53, %50 ], [ %44, %43 ], [ %61, %60 ]
  %64 = phi ptr [ %24, %50 ], [ %23, %43 ], [ %24, %60 ]
  %65 = tail call ptr @unshare_expr(ptr noundef %63) #17
  %66 = tail call ptr @force_gimple_operand_gsi(ptr noundef %3, ptr noundef %65, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #17
  store ptr %66, ptr %2, align 8, !tbaa !49
  %67 = tail call zeroext i8 @is_gimple_reg(ptr noundef %66) #17
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %62
  %70 = load ptr, ptr %2, align 8, !tbaa !49
  %71 = tail call zeroext i8 @is_gimple_condexpr(ptr noundef %70) #17
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %69
  %74 = load ptr, ptr %2, align 8, !tbaa !49
  %75 = getelementptr inbounds %struct.tree_common, ptr %74, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !123
  %77 = tail call ptr @unshare_expr(ptr noundef %74) #17
  %78 = tail call fastcc ptr @ifc_temp_var(ptr noundef %76, ptr noundef %77) #16
  tail call void @gsi_insert_before(ptr noundef %3, ptr noundef %78, i32 noundef 1) #17
  %79 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %78) #16
  store ptr %79, ptr %2, align 8, !tbaa !49
  br label %82

80:                                               ; preds = %62, %69
  %81 = load ptr, ptr %2, align 8, !tbaa !49
  br label %82

82:                                               ; preds = %80, %73
  %83 = phi ptr [ %81, %80 ], [ %79, %73 ]
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 808, ptr noundef nonnull @.str.8) #17
  br label %86

86:                                               ; preds = %82, %85
  %87 = load ptr, ptr %64, align 8, !tbaa !127
  ret ptr %87
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @replace_phi_with_cond_gimple_assign_stmt(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2, ptr noundef %3) unnamed_addr #1 !prof !59 !PGOFuncName !221 {
  %5 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !115
  %6 = icmp eq i32 %5, 16
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 834, ptr noundef nonnull @.str.8) #17
  br label %8

8:                                                ; preds = %4, %7
  %9 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #16
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 837, ptr noundef nonnull @.str.8) #17
  br label %12

12:                                               ; preds = %8, %11
  %13 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #16
  %14 = load ptr, ptr %13, align 8, !tbaa !220
  %15 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %14, i32 noundef 1) #16
  %16 = load ptr, ptr %15, align 8, !tbaa !127
  %17 = icmp eq ptr %16, %2
  %18 = zext i1 %17 to i64
  %19 = xor i1 %17, true
  %20 = zext i1 %19 to i64
  %21 = tail call fastcc ptr @gimple_phi_arg_def(ptr noundef %0, i64 noundef %18) #16
  %22 = tail call fastcc ptr @gimple_phi_arg_def(ptr noundef %0, i64 noundef %20) #16
  %23 = tail call fastcc ptr @gimple_phi_result_ptr(ptr noundef %0) #16
  %24 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %23) #16
  %25 = getelementptr inbounds %struct.tree_common, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !123
  %27 = tail call ptr @unshare_expr(ptr noundef %1) #17
  %28 = tail call ptr @unshare_expr(ptr noundef %21) #17
  %29 = tail call ptr @unshare_expr(ptr noundef %22) #17
  %30 = tail call ptr @build3_stat(i32 noundef 56, ptr noundef %26, ptr noundef %27, ptr noundef %28, ptr noundef %29) #17
  %31 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %23) #16
  %32 = tail call ptr @unshare_expr(ptr noundef %31) #17
  %33 = tail call ptr @gimple_build_assign_stat(ptr noundef %32, ptr noundef %30) #17
  %34 = tail call fastcc ptr @gimple_phi_result(ptr noundef %0) #16
  %35 = getelementptr inbounds %struct.tree_ssa_name, ptr %34, i64 0, i32 2
  store ptr %33, ptr %35, align 8, !tbaa !123
  tail call void @gsi_insert_before(ptr noundef %3, ptr noundef %33, i32 noundef 1) #17
  tail call fastcc void @update_stmt(ptr noundef %33) #16
  %36 = load ptr, ptr @dump_file, align 8, !tbaa !49
  %37 = icmp eq ptr %36, null
  br i1 %37, label %45, label %38

38:                                               ; preds = %12
  %39 = load i32, ptr @dump_flags, align 4, !tbaa !43
  %40 = and i32 %39, 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 25, i64 1, ptr nonnull %36)
  %44 = load ptr, ptr @dump_file, align 8, !tbaa !49
  tail call void @print_gimple_stmt(ptr noundef %44, ptr noundef %33, i32 noundef 0, i32 noundef 2) #17
  br label %45

45:                                               ; preds = %42, %38, %12
  ret void
}

; Function Attrs: optsize
declare void @release_phi_node(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_phi_nodes(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !59 !PGOFuncName !222 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !145
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 523, ptr noundef nonnull @.str.8) #17
  br label %7

7:                                                ; preds = %1, %6
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !123
  %10 = getelementptr inbounds %struct.gimple_bb_info, ptr %9, i64 0, i32 1
  store ptr null, ptr %10, align 8, !tbaa !223
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_condexpr(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_phi_arg_def(ptr noundef %0, i64 noundef %1) unnamed_addr #1 !prof !59 !PGOFuncName !224 {
  %3 = trunc i64 %1 to i32
  %4 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %3) #16
  %5 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %4) #16
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @build3_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !59 !PGOFuncName !225 {
  %2 = load ptr, ptr %0, align 8, !tbaa !49
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_phi_result_ptr(ptr noundef readnone %0) unnamed_addr #11 !prof !59 !PGOFuncName !226 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #1 !prof !59 !PGOFuncName !227 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !123
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 3103, ptr noundef nonnull @.str.8) #17
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext nneg i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !59 !PGOFuncName !228 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !229
  %4 = load ptr, ptr %3, align 8, !tbaa !49
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_last(ptr noundef readonly %0) unnamed_addr #4 !prof !59 !PGOFuncName !230 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !231
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @get_loop_body(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_int_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #5 !prof !59 !PGOFuncName !232 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 4, !tbaa !89
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !43
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi i32 [ %11, %8 ], [ 0, %5 ], [ 0, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store i32 %13, ptr %2, align 4, !tbaa !43
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_loop(i32 noundef %0) unnamed_addr #3 !prof !59 !PGOFuncName !233 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !49
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.loops, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %6, i32 noundef %0) #16
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_int_heap_free(ptr nocapture noundef %0) unnamed_addr #13 !prof !59 !PGOFuncName !234 {
  %2 = load ptr, ptr %0, align 8, !tbaa !49
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #16
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !49
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #14

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { nounwind }
attributes #16 = { optsize }
attributes #17 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!40}

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
!34 = distinct !{!35, !36, !37, !38, !39}
!35 = !{ptr @main_tree_if_conversion, ptr @number_of_loops, i64 38}
!36 = !{ptr @main_tree_if_conversion, ptr @fel_init, i64 1}
!37 = !{ptr @main_tree_if_conversion, ptr @tree_if_conversion, i64 19}
!38 = !{ptr @main_tree_if_conversion, ptr @fel_next, i64 19}
!39 = !{ptr @number_of_loops, ptr @VEC_loop_p_base_length, i64 37}
!40 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!41 = !{!"function_entry_count", i64 38}
!42 = !{!"tree-if-conv.c:gate_tree_if_conversion"}
!43 = !{!44, !44, i64 0}
!44 = !{!"int", !45, i64 0}
!45 = !{!"omnipotent char", !46, i64 0}
!46 = !{!"Simple C/C++ TBAA"}
!47 = !{!"tree-if-conv.c:main_tree_if_conversion"}
!48 = !{!"branch_weights", i32 39, i32 1}
!49 = !{!50, !50, i64 0}
!50 = !{!"any pointer", !45, i64 0}
!51 = distinct !{!51, !52}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!"tree-if-conv.c:number_of_loops"}
!54 = !{!55, !50, i64 32}
!55 = !{!"function", !50, i64 0, !50, i64 8, !50, i64 16, !50, i64 24, !50, i64 32, !50, i64 40, !50, i64 48, !50, i64 56, !50, i64 64, !50, i64 72, !50, i64 80, !50, i64 88, !50, i64 96, !44, i64 104, !44, i64 108, !44, i64 112, !44, i64 116, !44, i64 120, !44, i64 124, !50, i64 128, !44, i64 136, !44, i64 137, !44, i64 138, !44, i64 138, !44, i64 138, !44, i64 138, !44, i64 138, !44, i64 138, !44, i64 138, !44, i64 139, !44, i64 139, !44, i64 139, !44, i64 139, !44, i64 139, !44, i64 139, !44, i64 139}
!56 = !{!"branch_weights", i32 1, i32 39}
!57 = !{!58, !50, i64 8}
!58 = !{!"loops", !44, i64 0, !50, i64 8, !50, i64 16, !50, i64 24}
!59 = !{!"function_entry_count", i64 0}
!60 = !{!"tree-if-conv.c:fel_init"}
!61 = !{!62, !44, i64 8}
!62 = !{!"", !50, i64 0, !44, i64 8}
!63 = !{!62, !50, i64 0}
!64 = !{!58, !50, i64 24}
!65 = !{!66, !44, i64 0}
!66 = !{!"loop", !44, i64 0, !44, i64 4, !50, i64 8, !50, i64 16, !67, i64 24, !44, i64 32, !44, i64 36, !50, i64 40, !50, i64 48, !50, i64 56, !50, i64 64, !50, i64 72, !68, i64 80, !68, i64 96, !45, i64 112, !45, i64 113, !44, i64 116, !50, i64 120, !50, i64 128, !45, i64 136, !50, i64 144}
!67 = !{!"lpt_decision", !44, i64 0, !44, i64 4}
!68 = !{!"", !69, i64 0, !69, i64 8}
!69 = !{!"long", !45, i64 0}
!70 = !{!66, !50, i64 48}
!71 = !{!66, !50, i64 56}
!72 = distinct !{!72, !52}
!73 = !{!"tree-if-conv.c:tree_if_conversion"}
!74 = !{!66, !44, i64 36}
!75 = !{!76, !50, i64 16}
!76 = !{!"basic_block_def", !50, i64 0, !50, i64 8, !50, i64 16, !50, i64 24, !45, i64 32, !50, i64 48, !50, i64 56, !45, i64 64, !69, i64 72, !44, i64 80, !44, i64 84, !44, i64 88, !44, i64 92, !44, i64 96}
!77 = !{i64 0, i64 8, !49, i64 8, i64 8, !49, i64 16, i64 8, !49}
!78 = !{i8 0, i8 2}
!79 = distinct !{!79, !52}
!80 = distinct !{!80, !52}
!81 = !{!"tree-if-conv.c:fel_next"}
!82 = !{i32 0, i32 2}
!83 = distinct !{!83, !52}
!84 = !{!"tree-if-conv.c:VEC_loop_p_base_length"}
!85 = !{!86, !44, i64 0}
!86 = !{!"VEC_loop_p_base", !44, i64 0, !44, i64 4, !45, i64 8}
!87 = !{!"tree-if-conv.c:VEC_int_heap_alloc"}
!88 = !{!"tree-if-conv.c:VEC_int_base_quick_push"}
!89 = !{!90, !44, i64 0}
!90 = !{!"VEC_int_base", !44, i64 0, !44, i64 4, !45, i64 8}
!91 = !{!"tree-if-conv.c:loop_outer"}
!92 = !{!66, !50, i64 40}
!93 = !{!"tree-if-conv.c:VEC_loop_p_base_index"}
!94 = !{!"tree-if-conv.c:if_convertible_loop_p"}
!95 = !{!66, !50, i64 8}
!96 = !{i64 0, i64 4, !43, i64 8, i64 8, !49}
!97 = !{i64 0, i64 8, !49}
!98 = distinct !{!98, !52}
!99 = distinct !{!99, !52}
!100 = !{!101, !50, i64 24}
!101 = !{!"edge_def", !50, i64 0, !50, i64 8, !45, i64 16, !50, i64 24, !50, i64 32, !44, i64 40, !44, i64 44, !44, i64 48, !44, i64 52, !69, i64 56}
!102 = distinct !{!102, !52}
!103 = distinct !{!103, !52}
!104 = distinct !{!104, !52}
!105 = !{!"tree-if-conv.c:gsi_start_bb"}
!106 = !{!107, !50, i64 0}
!107 = !{!"", !50, i64 0, !50, i64 8, !50, i64 16}
!108 = !{!107, !50, i64 8}
!109 = !{!107, !50, i64 16}
!110 = !{!"tree-if-conv.c:gsi_end_p"}
!111 = !{!"tree-if-conv.c:gsi_stmt"}
!112 = !{!113, !50, i64 0}
!113 = !{!"gimple_seq_node_d", !50, i64 0, !50, i64 8, !50, i64 16}
!114 = !{!"tree-if-conv.c:tree_if_convert_stmt"}
!115 = !{i32 0, i32 256}
!116 = !{!"tree-if-conv.c:gsi_next"}
!117 = !{!113, !50, i64 16}
!118 = !{!"tree-if-conv.c:single_succ_p"}
!119 = !{!76, !50, i64 8}
!120 = !{!"tree-if-conv.c:single_succ"}
!121 = !{!101, !50, i64 8}
!122 = !{!"tree-if-conv.c:add_to_predicate_list"}
!123 = !{!45, !45, i64 0}
!124 = !{!"tree-if-conv.c:combine_blocks"}
!125 = distinct !{!125, !52}
!126 = !{!66, !50, i64 16}
!127 = !{!101, !50, i64 0}
!128 = distinct !{!128, !52}
!129 = distinct !{!129, !52}
!130 = distinct !{!130, !52}
!131 = distinct !{!131, !52}
!132 = distinct !{!132, !52}
!133 = !{!"tree-if-conv.c:clean_predicate_lists"}
!134 = distinct !{!134, !52}
!135 = distinct !{!135, !52}
!136 = !{!"tree-if-conv.c:ei_start_1"}
!137 = !{!"tree-if-conv.c:ei_cond"}
!138 = !{!"tree-if-conv.c:ei_next"}
!139 = !{!140, !44, i64 0}
!140 = !{!"", !44, i64 0, !50, i64 8}
!141 = !{!"tree-if-conv.c:get_loop_body_in_if_conv_order"}
!142 = !{!55, !50, i64 8}
!143 = !{!144, !50, i64 8}
!144 = !{!"control_flow_graph", !50, i64 0, !50, i64 8, !50, i64 16, !44, i64 24, !44, i64 28, !44, i64 32, !50, i64 40, !44, i64 48, !45, i64 52, !45, i64 60, !44, i64 68, !44, i64 72}
!145 = !{!76, !44, i64 96}
!146 = !{!76, !44, i64 80}
!147 = distinct !{!147, !52}
!148 = !{!"tree-if-conv.c:if_convertible_bb_p"}
!149 = !{!101, !44, i64 48}
!150 = distinct !{!150, !52}
!151 = !{!"tree-if-conv.c:if_convertible_stmt_p"}
!152 = !{!"tree-if-conv.c:if_convertible_phi_p"}
!153 = distinct !{!153, !52}
!154 = !{!"tree-if-conv.c:bb_with_exit_edge_p"}
!155 = distinct !{!155, !52}
!156 = !{!"tree-if-conv.c:ei_end_p"}
!157 = !{!"tree-if-conv.c:ei_edge"}
!158 = !{!"tree-if-conv.c:VEC_edge_base_length"}
!159 = !{!160, !44, i64 0}
!160 = !{!"VEC_edge_base", !44, i64 0, !44, i64 4, !45, i64 8}
!161 = !{!"tree-if-conv.c:ei_container"}
!162 = !{!"tree-if-conv.c:VEC_edge_base_index"}
!163 = !{!"tree-if-conv.c:pred_blocks_visited_p"}
!164 = distinct !{!164, !52}
!165 = !{!"tree-if-conv.c:gimple_code"}
!166 = !{!"tree-if-conv.c:if_convertible_gimple_assign_stmt_p"}
!167 = !{!"tree-if-conv.c:is_gimple_assign"}
!168 = !{!"tree-if-conv.c:gimple_assign_lhs"}
!169 = !{!"tree-if-conv.c:gimple_has_volatile_ops"}
!170 = !{!"tree-if-conv.c:gimple_op"}
!171 = !{!"tree-if-conv.c:gimple_has_ops"}
!172 = !{!"tree-if-conv.c:gimple_ops"}
!173 = !{!69, !69, i64 0}
!174 = !{!"tree-if-conv.c:gimple_statement_structure"}
!175 = !{!"tree-if-conv.c:gss_for_code"}
!176 = !{!"tree-if-conv.c:gimple_has_mem_ops"}
!177 = !{!"tree-if-conv.c:gimple_phi_num_args"}
!178 = !{!"tree-if-conv.c:gimple_phi_result"}
!179 = !{!"tree-if-conv.c:first_readonly_imm_use"}
!180 = !{!181, !50, i64 8}
!181 = !{!"immediate_use_iterator_d", !50, i64 0, !50, i64 8, !182, i64 16, !50, i64 48}
!182 = !{!"ssa_use_operand_d", !50, i64 0, !50, i64 8, !45, i64 16, !50, i64 24}
!183 = !{!182, !50, i64 8}
!184 = !{!181, !50, i64 0}
!185 = !{!"tree-if-conv.c:end_readonly_imm_use_p"}
!186 = !{!"tree-if-conv.c:next_readonly_imm_use"}
!187 = !{!"tree-if-conv.c:bb_seq"}
!188 = !{!189, !50, i64 0}
!189 = !{!"gimple_bb_info", !50, i64 0, !50, i64 8}
!190 = !{!"tree-if-conv.c:gimple_seq_first"}
!191 = !{!192, !50, i64 0}
!192 = !{!"gimple_seq_d", !50, i64 0, !50, i64 8, !50, i64 16}
!193 = !{!"tree-if-conv.c:gimple_debug_bind_p"}
!194 = !{!"tree-if-conv.c:gimple_debug_bind_reset_value"}
!195 = !{!"tree-if-conv.c:update_stmt"}
!196 = !{!"tree-if-conv.c:tree_if_convert_cond_stmt"}
!197 = !{i32 0, i32 65536}
!198 = !{!"tree-if-conv.c:is_gimple_debug"}
!199 = !{!"tree-if-conv.c:gimple_set_op"}
!200 = !{!"tree-if-conv.c:gimple_num_ops"}
!201 = !{!"tree-if-conv.c:gimple_location"}
!202 = !{!"tree-if-conv.c:gimple_cond_code"}
!203 = !{!"tree-if-conv.c:gimple_cond_lhs"}
!204 = !{!"tree-if-conv.c:gimple_cond_rhs"}
!205 = !{!"tree-if-conv.c:gimple_bb"}
!206 = !{!"tree-if-conv.c:add_to_dst_predicate_list"}
!207 = !{!"tree-if-conv.c:ifc_temp_var"}
!208 = !{!"tree-if-conv.c:make_ssa_name"}
!209 = !{!"tree-if-conv.c:gimple_assign_set_lhs"}
!210 = !{!"tree-if-conv.c:single_succ_edge"}
!211 = !{!"tree-if-conv.c:process_phi_nodes"}
!212 = distinct !{!212, !52}
!213 = distinct !{!213, !52}
!214 = !{!"tree-if-conv.c:ei_safe_edge"}
!215 = !{!"tree-if-conv.c:gsi_last_bb"}
!216 = !{!"tree-if-conv.c:set_bb_seq"}
!217 = !{!"tree-if-conv.c:gsi_after_labels"}
!218 = distinct !{!218, !52}
!219 = !{!"tree-if-conv.c:find_phi_replacement_condition"}
!220 = !{!76, !50, i64 0}
!221 = !{!"tree-if-conv.c:replace_phi_with_cond_gimple_assign_stmt"}
!222 = !{!"tree-if-conv.c:set_phi_nodes"}
!223 = !{!189, !50, i64 8}
!224 = !{!"tree-if-conv.c:gimple_phi_arg_def"}
!225 = !{!"tree-if-conv.c:get_def_from_ptr"}
!226 = !{!"tree-if-conv.c:gimple_phi_result_ptr"}
!227 = !{!"tree-if-conv.c:gimple_phi_arg"}
!228 = !{!"tree-if-conv.c:get_use_from_ptr"}
!229 = !{!182, !50, i64 24}
!230 = !{!"tree-if-conv.c:gimple_seq_last"}
!231 = !{!192, !50, i64 8}
!232 = !{!"tree-if-conv.c:VEC_int_base_iterate"}
!233 = !{!"tree-if-conv.c:get_loop"}
!234 = !{!"tree-if-conv.c:VEC_int_heap_free"}
