; ModuleID = 'tree-ssa-loop-ivcanon.c'
source_filename = "tree-ssa-loop-ivcanon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.eni_weights_d = type { i32, i32, i32, i32, i8 }
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
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.loop_iterator = type { ptr, i32 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.loop_size = type { i32, i32, i32, i32 }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.affine_iv = type { ptr, ptr, i8 }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.gimple_seq_d = type { ptr, ptr, ptr }

@cfun = external local_unnamed_addr global ptr, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [18 x i8] c"Loop %d iterates \00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c" times.\0A\00", align 1
@compiler_params = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"  Loop size: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"  Estimated size after unrolling: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [76 x i8] c"Not unrolling loop %d (--param max-completely-peeled-insns limit reached).\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Not unrolling loop %d.\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"tree-ssa-loop-ivcanon.c\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Unrolled loop %d completely.\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"Estimating sizes for loop %i\0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c" BB: %i, after_exit: %i\0A\00", align 1
@eni_size_weights = external global %struct.eni_weights_d, align 4
@.str.11 = private unnamed_addr constant [13 x i8] c"  size: %3i \00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"   Exit condition will be eliminated.\0A\00", align 1
@.str.13 = private unnamed_addr constant [56 x i8] c"   Induction variable computation will be folded away.\0A\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"   Constant expression will be folded away.\0A\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"   Constant conditional.\0A\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"size: %i-%i, last_iteration: %i-%i\0A\00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.17 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.18 = private unnamed_addr constant [32 x i8] c"Added canonical iv to loop %d, \00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c" iterations.\0A\00", align 1
@flag_tree_loop_ivcanon = external local_unnamed_addr global i32, align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @tree_num_loop_insns(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = tail call ptr @get_loop_body(ptr noundef %0) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #16
  %5 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %6 = load i32, ptr %5, align 4, !tbaa !6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %28, label %8

8:                                                ; preds = %2, %22
  %9 = phi i64 [ %24, %22 ], [ 0, %2 ]
  %10 = phi i32 [ %23, %22 ], [ 0, %2 ]
  %11 = getelementptr inbounds ptr, ptr %4, i64 %9
  %12 = load ptr, ptr %11, align 8, !tbaa !15
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %12) #17
  %13 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #17, !range !16
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %8, %15
  %16 = phi i32 [ %19, %15 ], [ %10, %8 ]
  %17 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #17
  %18 = tail call i32 @estimate_num_insns(ptr noundef %17, ptr noundef %1) #15
  %19 = add i32 %18, %16
  call fastcc void @gsi_next(ptr noundef nonnull %3) #17
  %20 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #17, !range !16
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %15, label %22, !llvm.loop !17

22:                                               ; preds = %15, %8
  %23 = phi i32 [ %10, %8 ], [ %19, %15 ]
  %24 = add nuw nsw i64 %9, 1
  %25 = load i32, ptr %5, align 4, !tbaa !6
  %26 = zext i32 %25 to i64
  %27 = icmp ult i64 %24, %26
  br i1 %27, label %8, label %28, !llvm.loop !19

28:                                               ; preds = %22, %2
  %29 = phi i32 [ 0, %2 ], [ %23, %22 ]
  tail call void @free(ptr noundef %4) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #16
  ret i32 %29
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @get_loop_body(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #3 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #17
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #17
  store ptr %4, ptr %0, align 8, !tbaa !20
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !22
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !23
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !20
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare i32 @estimate_num_insns(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !20
  %3 = load ptr, ptr %2, align 8, !tbaa !24
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !20
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !26
  store ptr %4, ptr %0, align 8, !tbaa !20
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !27
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !29
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !30
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
  %4 = load ptr, ptr %0, align 8, !tbaa !32
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @canonicalize_induction_variables() local_unnamed_addr #0 {
  %1 = alloca %struct.loop_iterator, align 8
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  call fastcc void @fel_init(ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef 0) #17
  %3 = load ptr, ptr %2, align 8, !tbaa !15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %0, %5
  %6 = phi ptr [ %10, %5 ], [ %3, %0 ]
  %7 = phi i8 [ %9, %5 ], [ 0, %0 ]
  %8 = tail call fastcc zeroext i8 @canonicalize_loop_induction_variables(ptr noundef nonnull %6, i8 noundef zeroext 1, i32 noundef 0, i8 noundef zeroext 1) #17, !range !16
  %9 = or i8 %8, %7
  call fastcc void @fel_next(ptr noundef nonnull %1, ptr noundef nonnull %2) #17
  %10 = load ptr, ptr %2, align 8, !tbaa !15
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %5, !llvm.loop !34

12:                                               ; preds = %5
  %13 = icmp eq i8 %9, 0
  %14 = select i1 %13, i32 0, i32 32
  br label %15

15:                                               ; preds = %12, %0
  %16 = phi i32 [ 0, %0 ], [ %14, %12 ]
  tail call void @scev_reset() #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #16
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_init(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %5 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  store i32 0, ptr %5, align 8, !tbaa !35
  %6 = load ptr, ptr @cfun, align 8, !tbaa !15
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !37
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store ptr null, ptr %0, align 8, !tbaa !39
  store ptr null, ptr %1, align 8, !tbaa !15
  br label %104

11:                                               ; preds = %3
  %12 = tail call fastcc i32 @number_of_loops() #17
  %13 = tail call fastcc ptr @VEC_int_heap_alloc(i32 noundef %12) #17
  store ptr %13, ptr %0, align 8, !tbaa !39
  %14 = and i32 %2, 1
  %15 = xor i32 %14, 1
  %16 = and i32 %2, 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %50, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr @cfun, align 8, !tbaa !15
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !37
  %22 = getelementptr inbounds %struct.loops, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !40
  %24 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %23, i32 noundef 0, ptr noundef nonnull %4) #17, !range !42
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %103, label %26

26:                                               ; preds = %18, %41
  %27 = phi ptr [ %42, %41 ], [ %19, %18 ]
  %28 = phi i32 [ %43, %41 ], [ 0, %18 ]
  %29 = load ptr, ptr %4, align 8, !tbaa !15
  %30 = icmp eq ptr %29, null
  br i1 %30, label %41, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.loop, ptr %29, i64 0, i32 8
  %33 = load ptr, ptr %32, align 8, !tbaa !43
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load i32, ptr %29, align 8, !tbaa !44
  %37 = icmp slt i32 %36, %15
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load ptr, ptr %0, align 8, !tbaa !39
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %39, i32 noundef %36) #17
  %40 = load ptr, ptr @cfun, align 8, !tbaa !15
  br label %41

41:                                               ; preds = %26, %31, %35, %38
  %42 = phi ptr [ %27, %26 ], [ %27, %31 ], [ %27, %35 ], [ %40, %38 ]
  %43 = add i32 %28, 1
  %44 = getelementptr inbounds %struct.function, ptr %42, i64 0, i32 4
  %45 = load ptr, ptr %44, align 8, !tbaa !37
  %46 = getelementptr inbounds %struct.loops, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !40
  %48 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %47, i32 noundef %43, ptr noundef nonnull %4) #17, !range !42
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %103, label %26, !llvm.loop !45

50:                                               ; preds = %11
  %51 = and i32 %2, 2
  %52 = icmp eq i32 %51, 0
  %53 = load ptr, ptr @cfun, align 8, !tbaa !15
  %54 = getelementptr inbounds %struct.function, ptr %53, i64 0, i32 4
  %55 = load ptr, ptr %54, align 8, !tbaa !37
  %56 = getelementptr inbounds %struct.loops, ptr %55, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !46
  br i1 %52, label %83, label %58

58:                                               ; preds = %50, %58
  %59 = phi ptr [ %61, %58 ], [ %57, %50 ]
  %60 = getelementptr inbounds %struct.loop, ptr %59, i64 0, i32 8
  %61 = load ptr, ptr %60, align 8, !tbaa !43
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %58, !llvm.loop !47

63:                                               ; preds = %58, %81
  %64 = phi ptr [ %82, %81 ], [ %59, %58 ]
  %65 = load i32, ptr %64, align 8, !tbaa !44
  %66 = icmp slt i32 %65, %15
  br i1 %66, label %69, label %67

67:                                               ; preds = %63
  %68 = load ptr, ptr %0, align 8, !tbaa !39
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %68, i32 noundef %65) #17
  br label %69

69:                                               ; preds = %67, %63
  %70 = getelementptr inbounds %struct.loop, ptr %64, i64 0, i32 9
  %71 = load ptr, ptr %70, align 8, !tbaa !48
  %72 = icmp eq ptr %71, null
  br i1 %72, label %78, label %73

73:                                               ; preds = %69, %73
  %74 = phi ptr [ %76, %73 ], [ %71, %69 ]
  %75 = getelementptr inbounds %struct.loop, ptr %74, i64 0, i32 8
  %76 = load ptr, ptr %75, align 8, !tbaa !43
  %77 = icmp eq ptr %76, null
  br i1 %77, label %81, label %73, !llvm.loop !49

78:                                               ; preds = %69
  %79 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %64) #17
  %80 = icmp eq ptr %79, null
  br i1 %80, label %103, label %81

81:                                               ; preds = %73, %78
  %82 = phi ptr [ %79, %78 ], [ %74, %73 ]
  br label %63

83:                                               ; preds = %50, %93
  %84 = phi ptr [ %94, %93 ], [ %57, %50 ]
  %85 = load i32, ptr %84, align 8, !tbaa !44
  %86 = icmp slt i32 %85, %15
  br i1 %86, label %89, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %0, align 8, !tbaa !39
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %88, i32 noundef %85) #17
  br label %89

89:                                               ; preds = %87, %83
  %90 = getelementptr inbounds %struct.loop, ptr %84, i64 0, i32 8
  %91 = load ptr, ptr %90, align 8, !tbaa !43
  %92 = icmp eq ptr %91, null
  br i1 %92, label %95, label %93

93:                                               ; preds = %95, %89
  %94 = phi ptr [ %91, %89 ], [ %98, %95 ]
  br label %83

95:                                               ; preds = %89, %100
  %96 = phi ptr [ %101, %100 ], [ %84, %89 ]
  %97 = getelementptr inbounds %struct.loop, ptr %96, i64 0, i32 9
  %98 = load ptr, ptr %97, align 8, !tbaa !48
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %93

100:                                              ; preds = %95
  %101 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %96) #17
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %95, !llvm.loop !50

103:                                              ; preds = %41, %78, %100, %18
  tail call fastcc void @fel_next(ptr noundef nonnull %0, ptr noundef %1) #17
  br label %104

104:                                              ; preds = %103, %10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @canonicalize_loop_induction_variables(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  store ptr null, ptr %5, align 8, !tbaa !15
  %6 = tail call ptr @number_of_latch_executions(ptr noundef %0) #15
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 23
  %10 = tail call ptr @single_exit(ptr noundef %0) #15
  br i1 %9, label %11, label %15

11:                                               ; preds = %4
  store ptr %10, ptr %5, align 8, !tbaa !15
  %12 = load ptr, ptr %10, align 8, !tbaa !51
  %13 = tail call zeroext i8 @just_once_each_iteration_p(ptr noundef %0, ptr noundef %12) #15
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %61, label %39

15:                                               ; preds = %4
  %16 = icmp eq ptr %10, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %15
  %18 = call ptr @find_loop_niter(ptr noundef %0, ptr noundef nonnull %5) #15
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi ptr [ %6, %15 ], [ %18, %17 ]
  %21 = icmp eq i8 %3, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %19
  %23 = call zeroext i8 @chrec_contains_undetermined(ptr noundef %20) #15
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i64, ptr %20, align 8
  %27 = and i64 %26, 65535
  %28 = icmp eq i64 %27, 23
  br i1 %28, label %31, label %29

29:                                               ; preds = %25, %22
  %30 = call ptr @find_loop_niter_by_eval(ptr noundef %0, ptr noundef nonnull %5) #15
  br label %31

31:                                               ; preds = %29, %25, %19
  %32 = phi ptr [ %30, %29 ], [ %20, %25 ], [ %20, %19 ]
  %33 = call zeroext i8 @chrec_contains_undetermined(ptr noundef %32) #15
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %61

35:                                               ; preds = %31
  %36 = load i64, ptr %32, align 8
  %37 = and i64 %36, 65535
  %38 = icmp eq i64 %37, 23
  br i1 %38, label %39, label %61

39:                                               ; preds = %35, %11
  %40 = phi ptr [ %6, %11 ], [ %32, %35 ]
  %41 = load ptr, ptr @dump_file, align 8, !tbaa !15
  %42 = icmp eq ptr %41, null
  br i1 %42, label %53, label %43

43:                                               ; preds = %39
  %44 = load i32, ptr @dump_flags, align 4, !tbaa !53
  %45 = and i32 %44, 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %43
  %48 = load i32, ptr %0, align 8, !tbaa !44
  %49 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %41, ptr noundef nonnull @.str, i32 noundef %48) #17
  %50 = load ptr, ptr @dump_file, align 8, !tbaa !15
  call void @print_generic_expr(ptr noundef %50, ptr noundef nonnull %40, i32 noundef 2) #15
  %51 = load ptr, ptr @dump_file, align 8, !tbaa !15
  %52 = call i64 @fwrite(ptr nonnull @.str.1, i64 8, i64 1, ptr %51)
  br label %53

53:                                               ; preds = %47, %43, %39
  %54 = load ptr, ptr %5, align 8, !tbaa !15
  %55 = call fastcc zeroext i8 @try_unroll_loop_completely(ptr noundef %0, ptr noundef %54, ptr noundef nonnull %40, i32 noundef %2) #17, !range !16
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = icmp eq i8 %1, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %57
  %60 = load ptr, ptr %5, align 8, !tbaa !15
  call fastcc void @create_canonical_iv(ptr noundef %0, ptr noundef %60, ptr noundef nonnull %40) #17
  br label %61

61:                                               ; preds = %57, %59, %53, %31, %35, %11
  %62 = phi i8 [ 0, %11 ], [ 0, %35 ], [ 0, %31 ], [ 1, %53 ], [ 0, %59 ], [ 0, %57 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  ret i8 %62
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_next(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  %4 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !35
  br label %6

6:                                                ; preds = %11, %2
  %7 = phi i32 [ %12, %11 ], [ %5, %2 ]
  %8 = load ptr, ptr %0, align 8, !tbaa !39
  %9 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %8, i32 noundef %7, ptr noundef nonnull %3) #17, !range !42
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = add i32 %7, 1
  store i32 %12, ptr %4, align 8, !tbaa !35
  %13 = load i32, ptr %3, align 4, !tbaa !53
  %14 = tail call fastcc ptr @get_loop(i32 noundef %13) #17
  store ptr %14, ptr %1, align 8, !tbaa !15
  %15 = icmp eq ptr %14, null
  br i1 %15, label %6, label %17, !llvm.loop !54

16:                                               ; preds = %6
  tail call fastcc void @VEC_int_heap_free(ptr noundef nonnull %0) #17
  store ptr null, ptr %1, align 8, !tbaa !15
  br label %17

17:                                               ; preds = %11, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret void
}

; Function Attrs: optsize
declare void @scev_reset() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_int_heap_alloc(i32 noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 4) #15
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @number_of_loops() unnamed_addr #5 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !15
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !37
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !40
  %8 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %7) #17
  br label %9

9:                                                ; preds = %0, %5
  %10 = phi i32 [ %8, %5 ], [ 0, %0 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_loop_p_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #7 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !55
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !15
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !15
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_int_base_quick_push(ptr noundef %0, i32 noundef %1) unnamed_addr #7 {
  %3 = load i32, ptr %0, align 4, !tbaa !57
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 4, !tbaa !57
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %5
  store i32 %1, ptr %6, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_outer(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #17
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = add i32 %4, -1
  %8 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %3, i32 noundef %7) #17
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_loop_p_base_length(ptr noundef readonly %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !55
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_loop_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !15
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @number_of_latch_executions(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @single_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @just_once_each_iteration_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @find_loop_niter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @chrec_contains_undetermined(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @find_loop_niter_by_eval(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: optsize
declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @try_unroll_loop_completely(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.loop_size, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #16
  %8 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !43
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %113

11:                                               ; preds = %4
  %12 = tail call i32 @host_integerp(ptr noundef %2, i32 noundef 1) #15
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %113, label %14

14:                                               ; preds = %11
  %15 = tail call i64 @tree_low_cst(ptr noundef %2, i32 noundef 1) #15
  %16 = load ptr, ptr @compiler_params, align 8, !tbaa !15
  %17 = getelementptr inbounds %struct.param_info, ptr %16, i64 32, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !60
  %19 = sext i32 %18 to i64
  %20 = icmp ugt i64 %15, %19
  br i1 %20, label %113, label %21

21:                                               ; preds = %14
  %22 = icmp eq i64 %15, 0
  br i1 %22, label %94, label %23

23:                                               ; preds = %21
  %24 = icmp eq i32 %3, 0
  br i1 %24, label %113, label %25

25:                                               ; preds = %23
  call fastcc void @tree_estimate_loop_size(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %5) #17
  %26 = load i32, ptr %5, align 4, !tbaa !62
  %27 = sext i32 %26 to i64
  %28 = call fastcc i64 @estimated_unrolled_size(ptr noundef nonnull %5, i64 noundef %15) #17, !range !64
  %29 = load ptr, ptr @dump_file, align 8, !tbaa !15
  %30 = icmp eq ptr %29, null
  br i1 %30, label %40, label %31

31:                                               ; preds = %25
  %32 = load i32, ptr @dump_flags, align 4, !tbaa !53
  %33 = and i32 %32, 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  %36 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %29, ptr noundef nonnull @.str.2, i32 noundef %26) #17
  %37 = load ptr, ptr @dump_file, align 8, !tbaa !15
  %38 = trunc i64 %28 to i32
  %39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef nonnull @.str.3, i32 noundef %38) #17
  br label %40

40:                                               ; preds = %35, %31, %25
  %41 = icmp ugt i64 %28, %27
  br i1 %41, label %42, label %70

42:                                               ; preds = %40
  %43 = load ptr, ptr @compiler_params, align 8, !tbaa !15
  %44 = getelementptr inbounds %struct.param_info, ptr %43, i64 31, i32 1
  %45 = load i32, ptr %44, align 8, !tbaa !60
  %46 = zext i32 %45 to i64
  %47 = icmp ugt i64 %28, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %42
  %49 = load ptr, ptr @dump_file, align 8, !tbaa !15
  %50 = icmp eq ptr %49, null
  br i1 %50, label %113, label %51

51:                                               ; preds = %48
  %52 = load i32, ptr @dump_flags, align 4, !tbaa !53
  %53 = and i32 %52, 8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %113, label %55

55:                                               ; preds = %51
  %56 = load i32, ptr %0, align 8, !tbaa !44
  %57 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %49, ptr noundef nonnull @.str.4, i32 noundef %56) #17
  br label %113

58:                                               ; preds = %42
  %59 = icmp eq i32 %3, 1
  br i1 %59, label %60, label %70

60:                                               ; preds = %58
  %61 = load ptr, ptr @dump_file, align 8, !tbaa !15
  %62 = icmp eq ptr %61, null
  br i1 %62, label %113, label %63

63:                                               ; preds = %60
  %64 = load i32, ptr @dump_flags, align 4, !tbaa !53
  %65 = and i32 %64, 8
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %113, label %67

67:                                               ; preds = %63
  %68 = load i32, ptr %0, align 8, !tbaa !44
  %69 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %61, ptr noundef nonnull @.str.5, i32 noundef %68) #17
  br label %113

70:                                               ; preds = %40, %58
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  store ptr null, ptr %7, align 8, !tbaa !15
  tail call void @initialize_original_copy_tables() #15
  %71 = trunc i64 %15 to i32
  %72 = add i32 %71, 1
  %73 = tail call ptr @sbitmap_alloc(i32 noundef %72) #15
  tail call void @sbitmap_ones(ptr noundef %73) #15
  tail call fastcc void @RESET_BIT(ptr noundef %73) #17
  %74 = tail call ptr @loop_preheader_edge(ptr noundef nonnull %0) #15
  %75 = call zeroext i8 @gimple_duplicate_loop_to_header_edge(ptr noundef nonnull %0, ptr noundef %74, i32 noundef %71, ptr noundef %73, ptr noundef %1, ptr noundef nonnull %7, i32 noundef 5) #15
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %70
  %78 = load ptr, ptr %7, align 8
  %79 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %78, i32 noundef 0, ptr noundef nonnull %6) #17, !range !42
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %93, label %82

81:                                               ; preds = %70
  call void @free_original_copy_tables() #15
  call void @free(ptr noundef %73) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  br label %113

82:                                               ; preds = %77, %88
  %83 = phi i32 [ %89, %88 ], [ 0, %77 ]
  %84 = load ptr, ptr %6, align 8, !tbaa !15
  %85 = call zeroext i8 @remove_path(ptr noundef %84) #15
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 412, ptr noundef nonnull @.str.7) #15
  br label %88

88:                                               ; preds = %82, %87
  %89 = add i32 %83, 1
  %90 = load ptr, ptr %7, align 8
  %91 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %90, i32 noundef %89, ptr noundef nonnull %6) #17, !range !42
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %82, !llvm.loop !65

93:                                               ; preds = %88, %77
  call fastcc void @VEC_edge_heap_free(ptr noundef nonnull %7) #17
  call void @free(ptr noundef %73) #17
  call void @free_original_copy_tables() #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  br label %94

94:                                               ; preds = %93, %21
  %95 = load ptr, ptr %1, align 8, !tbaa !51
  %96 = call ptr @last_stmt(ptr noundef %95) #15
  %97 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 7
  %98 = load i32, ptr %97, align 8, !tbaa !66
  %99 = and i32 %98, 1024
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %94
  call fastcc void @gimple_cond_make_true(ptr noundef %96) #17
  br label %103

102:                                              ; preds = %94
  call fastcc void @gimple_cond_make_false(ptr noundef %96) #17
  br label %103

103:                                              ; preds = %102, %101
  call fastcc void @update_stmt(ptr noundef %96) #17
  call void @update_ssa(i32 noundef 2048) #15
  %104 = load ptr, ptr @dump_file, align 8, !tbaa !15
  %105 = icmp eq ptr %104, null
  br i1 %105, label %113, label %106

106:                                              ; preds = %103
  %107 = load i32, ptr @dump_flags, align 4, !tbaa !53
  %108 = and i32 %107, 8
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %106
  %111 = load i32, ptr %0, align 8, !tbaa !44
  %112 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %104, ptr noundef nonnull @.str.8, i32 noundef %111) #17
  br label %113

113:                                              ; preds = %81, %103, %106, %110, %60, %63, %67, %48, %51, %55, %23, %14, %11, %4
  %114 = phi i8 [ 0, %4 ], [ 0, %11 ], [ 0, %14 ], [ 0, %23 ], [ 0, %55 ], [ 0, %51 ], [ 0, %48 ], [ 0, %67 ], [ 0, %63 ], [ 0, %60 ], [ 1, %110 ], [ 1, %106 ], [ 1, %103 ], [ 0, %81 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  ret i8 %114
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_canonical_iv(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  %6 = load ptr, ptr @dump_file, align 8, !tbaa !15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %3
  %9 = load i32, ptr @dump_flags, align 4, !tbaa !53
  %10 = and i32 %9, 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %8
  %13 = load i32, ptr %0, align 8, !tbaa !44
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %6, ptr noundef nonnull @.str.18, i32 noundef %13) #17
  %15 = load ptr, ptr @dump_file, align 8, !tbaa !15
  tail call void @print_generic_expr(ptr noundef %15, ptr noundef %2, i32 noundef 2) #15
  %16 = load ptr, ptr @dump_file, align 8, !tbaa !15
  %17 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 13, i64 1, ptr %16)
  br label %18

18:                                               ; preds = %12, %8, %3
  %19 = load ptr, ptr %1, align 8, !tbaa !51
  %20 = tail call ptr @last_stmt(ptr noundef %19) #15
  %21 = load ptr, ptr %1, align 8, !tbaa !51
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !67
  %24 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %23, i32 noundef 0) #17
  %25 = icmp eq ptr %24, %1
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %23, i32 noundef 1) #17
  br label %28

28:                                               ; preds = %26, %18
  %29 = phi ptr [ %27, %26 ], [ %24, %18 ]
  %30 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !29
  %32 = tail call ptr @build_int_cst(ptr noundef %31, i64 noundef 1) #15
  %33 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %31, ptr noundef %2, ptr noundef %32) #15
  %34 = load ptr, ptr %29, align 8, !tbaa !51
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %34) #17
  %35 = tail call ptr @build_int_cst(ptr noundef %31, i64 noundef -1) #15
  call void @create_iv(ptr noundef %33, ptr noundef %35, ptr noundef null, ptr noundef %0, ptr noundef nonnull %5, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull %4) #15
  %36 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 7
  %37 = load i32, ptr %36, align 8, !tbaa !66
  %38 = and i32 %37, 1024
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, i32 102, i32 101
  call fastcc void @gimple_cond_set_code(ptr noundef %20, i32 noundef %40) #17
  %41 = load ptr, ptr %4, align 8, !tbaa !15
  call fastcc void @gimple_cond_set_lhs(ptr noundef %20, ptr noundef %41) #17
  %42 = call ptr @build_int_cst(ptr noundef %31, i64 noundef 0) #15
  call fastcc void @gimple_cond_set_rhs(ptr noundef %20, ptr noundef %42) #17
  call fastcc void @update_stmt(ptr noundef %20) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  ret void
}

; Function Attrs: optsize
declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @tree_estimate_loop_size(ptr noundef %0, ptr noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = tail call ptr @get_loop_body(ptr noundef %0) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
  %6 = getelementptr inbounds %struct.loop_size, ptr %2, i64 0, i32 1
  %7 = getelementptr inbounds %struct.loop_size, ptr %2, i64 0, i32 2
  %8 = getelementptr inbounds %struct.loop_size, ptr %2, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %9 = load ptr, ptr @dump_file, align 8, !tbaa !15
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %3
  %12 = load i32, ptr @dump_flags, align 4, !tbaa !53
  %13 = and i32 %12, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = load i32, ptr %0, align 8, !tbaa !44
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %9, ptr noundef nonnull @.str.9, i32 noundef %16) #17
  br label %18

18:                                               ; preds = %15, %11, %3
  %19 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %20 = load i32, ptr %19, align 4, !tbaa !6
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %171, label %22

22:                                               ; preds = %18
  %23 = icmp eq ptr %1, null
  br label %24

24:                                               ; preds = %22, %166
  %25 = phi i64 [ 0, %22 ], [ %167, %166 ]
  br i1 %23, label %34, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds ptr, ptr %5, i64 %25
  %28 = load ptr, ptr %27, align 8, !tbaa !15
  %29 = load ptr, ptr %1, align 8, !tbaa !51
  %30 = icmp eq ptr %28, %29
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %28, ptr noundef %29) #15
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31, %26, %24
  br label %35

35:                                               ; preds = %31, %34
  %36 = phi i1 [ true, %34 ], [ false, %31 ]
  %37 = phi i32 [ 0, %34 ], [ 1, %31 ]
  %38 = load ptr, ptr @dump_file, align 8, !tbaa !15
  %39 = icmp eq ptr %38, null
  br i1 %39, label %50, label %40

40:                                               ; preds = %35
  %41 = load i32, ptr @dump_flags, align 4, !tbaa !53
  %42 = and i32 %41, 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds ptr, ptr %5, i64 %25
  %46 = load ptr, ptr %45, align 8, !tbaa !15
  %47 = getelementptr inbounds %struct.basic_block_def, ptr %46, i64 0, i32 9
  %48 = load i32, ptr %47, align 8, !tbaa !68
  %49 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %38, ptr noundef nonnull @.str.10, i32 noundef %48, i32 noundef %37) #17
  br label %50

50:                                               ; preds = %44, %40, %35
  %51 = getelementptr inbounds ptr, ptr %5, i64 %25
  %52 = load ptr, ptr %51, align 8, !tbaa !15
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %52) #17
  %53 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #17, !range !16
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %166

55:                                               ; preds = %50, %163
  %56 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #17
  %57 = tail call i32 @estimate_num_insns(ptr noundef %56, ptr noundef nonnull @eni_size_weights) #15
  %58 = load ptr, ptr @dump_file, align 8, !tbaa !15
  %59 = icmp eq ptr %58, null
  br i1 %59, label %68, label %60

60:                                               ; preds = %55
  %61 = load i32, ptr @dump_flags, align 4, !tbaa !53
  %62 = and i32 %61, 8
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %58, ptr noundef nonnull @.str.11, i32 noundef %57) #17
  %66 = load ptr, ptr @dump_file, align 8, !tbaa !15
  %67 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #17
  tail call void @print_gimple_stmt(ptr noundef %66, ptr noundef %67, i32 noundef 0, i32 noundef 0) #15
  br label %68

68:                                               ; preds = %64, %60, %55
  %69 = load ptr, ptr %51, align 8, !tbaa !15
  %70 = load ptr, ptr %1, align 8, !tbaa !51
  %71 = icmp eq ptr %69, %70
  br i1 %71, label %72, label %84

72:                                               ; preds = %68
  %73 = tail call ptr @last_stmt(ptr noundef %69) #15
  %74 = icmp eq ptr %56, %73
  br i1 %74, label %75, label %84

75:                                               ; preds = %72
  %76 = load ptr, ptr @dump_file, align 8, !tbaa !15
  %77 = icmp eq ptr %76, null
  br i1 %77, label %151, label %78

78:                                               ; preds = %75
  %79 = load i32, ptr @dump_flags, align 4, !tbaa !53
  %80 = and i32 %79, 8
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %151, label %82

82:                                               ; preds = %78
  %83 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 38, i64 1, ptr nonnull %76)
  br label %151

84:                                               ; preds = %72, %68
  %85 = tail call fastcc i32 @gimple_code(ptr noundef %56) #17, !range !69
  %86 = icmp eq i32 %85, 6
  br i1 %86, label %87, label %100

87:                                               ; preds = %84
  %88 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %56) #17
  %89 = tail call fastcc zeroext i8 @constant_after_peeling(ptr noundef %88, ptr noundef %56, ptr noundef %0) #17, !range !16
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %100, label %91

91:                                               ; preds = %87
  %92 = load ptr, ptr @dump_file, align 8, !tbaa !15
  %93 = icmp eq ptr %92, null
  br i1 %93, label %151, label %94

94:                                               ; preds = %91
  %95 = load i32, ptr @dump_flags, align 4, !tbaa !53
  %96 = and i32 %95, 8
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %151, label %98

98:                                               ; preds = %94
  %99 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 55, i64 1, ptr nonnull %92)
  br label %151

100:                                              ; preds = %87, %84
  %101 = tail call fastcc i32 @gimple_code(ptr noundef %56) #17, !range !69
  %102 = icmp eq i32 %101, 6
  br i1 %102, label %103, label %128

103:                                              ; preds = %100
  %104 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %56) #17
  %105 = load i64, ptr %104, align 8
  %106 = and i64 %105, 65535
  %107 = icmp eq i64 %106, 141
  br i1 %107, label %108, label %128

108:                                              ; preds = %103
  %109 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %56) #17
  %110 = tail call fastcc zeroext i8 @constant_after_peeling(ptr noundef %109, ptr noundef %56, ptr noundef %0) #17, !range !16
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %128, label %112

112:                                              ; preds = %108
  %113 = tail call fastcc i32 @gimple_assign_rhs_class(ptr noundef %56) #17, !range !69
  %114 = icmp eq i32 %113, 1
  br i1 %114, label %115, label %119

115:                                              ; preds = %112
  %116 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %56) #17
  %117 = tail call fastcc zeroext i8 @constant_after_peeling(ptr noundef %116, ptr noundef %56, ptr noundef %0) #17, !range !16
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %128, label %119

119:                                              ; preds = %115, %112
  %120 = load ptr, ptr @dump_file, align 8, !tbaa !15
  %121 = icmp eq ptr %120, null
  br i1 %121, label %151, label %122

122:                                              ; preds = %119
  %123 = load i32, ptr @dump_flags, align 4, !tbaa !53
  %124 = and i32 %123, 8
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %151, label %126

126:                                              ; preds = %122
  %127 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 44, i64 1, ptr nonnull %120)
  br label %151

128:                                              ; preds = %115, %108, %103, %100
  %129 = tail call fastcc i32 @gimple_code(ptr noundef %56) #17, !range !69
  %130 = icmp eq i32 %129, 1
  br i1 %130, label %131, label %148

131:                                              ; preds = %128
  %132 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %56) #17
  %133 = tail call fastcc zeroext i8 @constant_after_peeling(ptr noundef %132, ptr noundef %56, ptr noundef %0) #17, !range !16
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %148, label %135

135:                                              ; preds = %131
  %136 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %56) #17
  %137 = tail call fastcc zeroext i8 @constant_after_peeling(ptr noundef %136, ptr noundef %56, ptr noundef %0) #17, !range !16
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %148, label %139

139:                                              ; preds = %135
  %140 = load ptr, ptr @dump_file, align 8, !tbaa !15
  %141 = icmp eq ptr %140, null
  br i1 %141, label %151, label %142

142:                                              ; preds = %139
  %143 = load i32, ptr @dump_flags, align 4, !tbaa !53
  %144 = and i32 %143, 8
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %151, label %146

146:                                              ; preds = %142
  %147 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 25, i64 1, ptr nonnull %140)
  br label %151

148:                                              ; preds = %135, %131, %128
  %149 = load i32, ptr %2, align 4, !tbaa !62
  %150 = add nsw i32 %149, %57
  store i32 %150, ptr %2, align 4, !tbaa !62
  br i1 %36, label %159, label %163

151:                                              ; preds = %139, %142, %146, %119, %122, %126, %91, %94, %98, %75, %78, %82
  %152 = load <2 x i32>, ptr %2, align 4, !tbaa !53
  %153 = insertelement <2 x i32> poison, i32 %57, i64 0
  %154 = shufflevector <2 x i32> %153, <2 x i32> poison, <2 x i32> zeroinitializer
  %155 = add nsw <2 x i32> %152, %154
  store <2 x i32> %155, ptr %2, align 4, !tbaa !53
  br i1 %36, label %156, label %163

156:                                              ; preds = %151
  %157 = load i32, ptr %7, align 4, !tbaa !70
  %158 = add nsw i32 %157, %57
  store i32 %158, ptr %7, align 4, !tbaa !70
  br label %159

159:                                              ; preds = %148, %156
  %160 = phi ptr [ %8, %156 ], [ %7, %148 ]
  %161 = load i32, ptr %160, align 4, !tbaa !53
  %162 = add nsw i32 %161, %57
  store i32 %162, ptr %160, align 4, !tbaa !53
  br label %163

163:                                              ; preds = %159, %151, %148
  call fastcc void @gsi_next(ptr noundef nonnull %4) #17
  %164 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #17, !range !16
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %55, label %166, !llvm.loop !71

166:                                              ; preds = %163, %50
  %167 = add nuw nsw i64 %25, 1
  %168 = load i32, ptr %19, align 4, !tbaa !6
  %169 = zext i32 %168 to i64
  %170 = icmp ult i64 %167, %169
  br i1 %170, label %24, label %171, !llvm.loop !72

171:                                              ; preds = %166, %18
  %172 = load ptr, ptr @dump_file, align 8, !tbaa !15
  %173 = icmp eq ptr %172, null
  br i1 %173, label %184, label %174

174:                                              ; preds = %171
  %175 = load i32, ptr @dump_flags, align 4, !tbaa !53
  %176 = and i32 %175, 8
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %184, label %178

178:                                              ; preds = %174
  %179 = load i32, ptr %2, align 4, !tbaa !62
  %180 = load i32, ptr %6, align 4, !tbaa !73
  %181 = load i32, ptr %7, align 4, !tbaa !70
  %182 = load i32, ptr %8, align 4, !tbaa !74
  %183 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %172, ptr noundef nonnull @.str.16, i32 noundef %179, i32 noundef %180, i32 noundef %181, i32 noundef %182) #17
  br label %184

184:                                              ; preds = %178, %174, %171
  tail call void @free(ptr noundef %5) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i64 @estimated_unrolled_size(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #4 {
  %3 = load i32, ptr %0, align 4, !tbaa !62
  %4 = getelementptr inbounds %struct.loop_size, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !73
  %6 = sub nsw i32 %3, %5
  %7 = sext i32 %6 to i64
  %8 = mul i64 %7, %1
  %9 = getelementptr inbounds %struct.loop_size, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !70
  %11 = getelementptr inbounds %struct.loop_size, ptr %0, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !74
  %13 = sub nsw i32 %10, %12
  %14 = sext i32 %13 to i64
  %15 = add nsw i64 %8, %14
  %16 = shl nsw i64 %15, 1
  %17 = sdiv i64 %16, 3
  %18 = tail call i64 @llvm.smax.i64(i64 %17, i64 1)
  ret i64 %18
}

; Function Attrs: optsize
declare void @initialize_original_copy_tables() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sbitmap_ones(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @RESET_BIT(ptr nocapture noundef %0) unnamed_addr #9 {
  %2 = load ptr, ptr %0, align 8, !tbaa !75
  %3 = icmp eq ptr %2, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  %6 = load i64, ptr %5, align 8, !tbaa !77
  %7 = and i64 %6, 1
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = load i8, ptr %2, align 1, !tbaa !29
  %11 = add i8 %10, -1
  store i8 %11, ptr %2, align 1, !tbaa !29
  br label %12

12:                                               ; preds = %4, %9, %1
  %13 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  %14 = load i64, ptr %13, align 8, !tbaa !77
  %15 = and i64 %14, -2
  store i64 %15, ptr %13, align 8, !tbaa !77
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @gimple_duplicate_loop_to_header_edge(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @loop_preheader_edge(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @free_original_copy_tables() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_edge_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #7 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !78
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !15
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !15
  ret i32 %14
}

; Function Attrs: optsize
declare zeroext i8 @remove_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_edge_heap_free(ptr nocapture noundef %0) unnamed_addr #10 {
  %2 = load ptr, ptr %0, align 8, !tbaa !15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #17
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !15
  ret void
}

; Function Attrs: optsize
declare ptr @last_stmt(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_make_true(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !15
  tail call fastcc void @gimple_cond_set_lhs(ptr noundef %0, ptr noundef %2) #17
  %3 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !15
  tail call fastcc void @gimple_cond_set_rhs(ptr noundef %0, ptr noundef %3) #17
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = or disjoint i32 %5, 6619136
  store i32 %6, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_make_false(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !15
  tail call fastcc void @gimple_cond_set_lhs(ptr noundef %0, ptr noundef %2) #17
  %3 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !15
  tail call fastcc void @gimple_cond_set_rhs(ptr noundef %0, ptr noundef %3) #17
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = or disjoint i32 %5, 6619136
  store i32 %6, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_stmt(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #17, !range !16
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @gimple_set_modified(ptr noundef %0, i8 noundef zeroext 1) #15
  tail call void @update_stmt_operands(ptr noundef %0) #15
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: optsize
declare void @update_ssa(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @constant_after_peeling(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.affine_iv, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
  %5 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %0) #15
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %86

7:                                                ; preds = %3
  %8 = load i64, ptr %0, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 141
  br i1 %10, label %72, label %11

11:                                               ; preds = %7
  %12 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef nonnull %0) #17, !range !16
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %11, %14
  %15 = phi ptr [ %17, %14 ], [ %0, %11 ]
  %16 = getelementptr inbounds %struct.tree_exp, ptr %15, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !29
  %18 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %17) #17, !range !16
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %14, !llvm.loop !80

20:                                               ; preds = %14
  %21 = load i64, ptr %17, align 8
  %22 = and i64 %21, 65535
  br label %23

23:                                               ; preds = %20, %11
  %24 = phi i64 [ %22, %20 ], [ %9, %11 ]
  %25 = phi i64 [ %21, %20 ], [ %8, %11 ]
  %26 = phi ptr [ %17, %20 ], [ %0, %11 ]
  %27 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %24
  %28 = load i32, ptr %27, align 4, !tbaa !53
  %29 = icmp ne i32 %28, 3
  %30 = and i64 %25, 68157440
  %31 = icmp ne i64 %30, 68157440
  %32 = or i1 %29, %31
  br i1 %32, label %51, label %33

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct.tree_decl_common, ptr %26, i64 0, i32 5
  %35 = load ptr, ptr %34, align 8, !tbaa !29
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %54

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.tree_decl_common, ptr %26, i64 0, i32 2
  %39 = load i64, ptr %38, align 8
  %40 = and i64 %39, 33554432
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %86

42:                                               ; preds = %37
  %43 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 49), align 8, !tbaa !81
  %44 = tail call zeroext i8 %43(ptr noundef nonnull %26) #15
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %42
  %47 = load i64, ptr %26, align 8
  %48 = and i64 %47, 65535
  %49 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !53
  br label %51

51:                                               ; preds = %46, %23
  %52 = phi i32 [ %50, %46 ], [ %28, %23 ]
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %86

54:                                               ; preds = %51, %42, %33
  %55 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef nonnull %0) #17, !range !16
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %86, label %57

57:                                               ; preds = %54, %67
  %58 = phi ptr [ %69, %67 ], [ %0, %54 ]
  %59 = load i64, ptr %58, align 8
  %60 = and i64 %59, 65535
  %61 = icmp eq i64 %60, 45
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.tree_exp, ptr %58, i64 1
  %64 = load ptr, ptr %63, align 8, !tbaa !29
  %65 = tail call fastcc zeroext i8 @constant_after_peeling(ptr noundef %64, ptr noundef %1, ptr noundef %2) #17, !range !16
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %86, label %67

67:                                               ; preds = %62, %57
  %68 = getelementptr inbounds %struct.tree_exp, ptr %58, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !29
  %70 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %69) #17, !range !16
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %86, label %57, !llvm.loop !93

72:                                               ; preds = %7
  %73 = tail call fastcc ptr @loop_containing_stmt(ptr noundef %1) #17
  %74 = call zeroext i8 @simple_iv(ptr noundef %2, ptr noundef %73, ptr noundef nonnull %0, ptr noundef nonnull %4, i8 noundef zeroext 0) #15
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %86, label %76

76:                                               ; preds = %72
  %77 = load ptr, ptr %4, align 8, !tbaa !94
  %78 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %77) #15
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.affine_iv, ptr %4, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !96
  %83 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %82) #15
  %84 = icmp ne i8 %83, 0
  %85 = zext i1 %84 to i8
  br label %86

86:                                               ; preds = %67, %62, %37, %54, %80, %76, %72, %51, %3
  %87 = phi i8 [ 1, %3 ], [ 0, %51 ], [ 0, %72 ], [ 0, %76 ], [ %85, %80 ], [ 1, %54 ], [ 0, %37 ], [ 1, %67 ], [ 0, %62 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  ret i8 %87
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #17
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #17
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_class(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #17, !range !97
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #17, !range !69
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs2(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #17
  %3 = icmp ugt i32 %2, 2
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #17
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_lhs(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #17
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_rhs(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #17
  ret ptr %2
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @handled_component_p(ptr nocapture noundef readonly %0) unnamed_addr #4 {
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
declare zeroext i8 @simple_iv(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_containing_stmt(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #17
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !98
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !29
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #17, !range !16
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #17
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !15
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #17, !range !69
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #17
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !77
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 1622, ptr noundef nonnull @.str.7) #15
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #17, !range !69
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #17
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #11 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !53
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #11 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !29
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #17, !range !97
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #17, !range !69
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #17
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 65535
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ %9, %5 ], [ %2, %1 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #17, !range !69
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 1446, ptr noundef nonnull @.str.7) #15
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !29
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 0, ptr noundef %1) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_set_rhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 1, ptr noundef %1) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #17, !range !16
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #17
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %10, label %9

9:                                                ; preds = %6, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 1665, ptr noundef nonnull @.str.7) #15
  br label %10

10:                                               ; preds = %6, %9
  %11 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #17
  %12 = zext nneg i32 %1 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  store ptr %2, ptr %13, align 8, !tbaa !15
  ret void
}

; Function Attrs: optsize
declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 {
  %3 = zext nneg i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !15
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_last_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #3 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #17
  %4 = tail call fastcc ptr @gimple_seq_last(ptr noundef %3) #17
  store ptr %4, ptr %0, align 8, !tbaa !20
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !22
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !23
  ret void
}

; Function Attrs: optsize
declare void @create_iv(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_cond_set_code(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #7 {
  %3 = load i32, ptr %0, align 8
  %4 = shl i32 %1, 16
  %5 = and i32 %3, 65535
  %6 = or disjoint i32 %5, %4
  store i32 %6, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_last(ptr noundef readonly %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !99
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_int_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #7 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 4, !tbaa !57
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !53
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi i32 [ %11, %8 ], [ 0, %5 ], [ 0, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store i32 %13, ptr %2, align 4, !tbaa !53
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_loop(i32 noundef %0) unnamed_addr #5 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !15
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !37
  %5 = getelementptr inbounds %struct.loops, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !40
  %7 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %6, i32 noundef %0) #17
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_int_heap_free(ptr nocapture noundef %0) unnamed_addr #10 {
  %2 = load ptr, ptr %0, align 8, !tbaa !15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #17
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @tree_unroll_loops_completely(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca %struct.loop_iterator, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %5 = icmp eq i8 %0, 0
  %6 = icmp eq i8 %1, 0
  br label %7

7:                                                ; preds = %38, %2
  %8 = phi i32 [ 0, %2 ], [ %39, %38 ]
  call fastcc void @fel_init(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 4) #17
  %9 = load ptr, ptr %4, align 8, !tbaa !15
  %10 = icmp eq ptr %9, null
  br i1 %10, label %44, label %11

11:                                               ; preds = %7, %23
  %12 = phi ptr [ %30, %23 ], [ %9, %7 ]
  %13 = phi i8 [ %29, %23 ], [ 0, %7 ]
  br i1 %5, label %22, label %14

14:                                               ; preds = %11
  %15 = tail call zeroext i8 @optimize_loop_for_speed_p(ptr noundef nonnull %12) #15
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %14
  br i1 %6, label %18, label %23

18:                                               ; preds = %17
  %19 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %12) #17
  %20 = tail call fastcc ptr @loop_outer(ptr noundef %19) #17
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %14, %11
  br label %23

23:                                               ; preds = %17, %18, %22
  %24 = phi i32 [ 1, %22 ], [ 2, %18 ], [ 2, %17 ]
  %25 = load i32, ptr @flag_tree_loop_ivcanon, align 4, !tbaa !53
  %26 = icmp eq i32 %25, 0
  %27 = zext i1 %26 to i8
  %28 = tail call fastcc zeroext i8 @canonicalize_loop_induction_variables(ptr noundef nonnull %12, i8 noundef zeroext 0, i32 noundef %24, i8 noundef zeroext %27) #17, !range !16
  %29 = or i8 %28, %13
  call fastcc void @fel_next(ptr noundef nonnull %3, ptr noundef nonnull %4) #17
  %30 = load ptr, ptr %4, align 8, !tbaa !15
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %11, !llvm.loop !100

32:                                               ; preds = %23
  %33 = icmp eq i8 %29, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %32
  %35 = tail call zeroext i8 @cleanup_tree_cfg() #15
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  tail call void @update_ssa(i32 noundef 16384) #15
  br label %38

38:                                               ; preds = %34, %37
  tail call void @scev_reset() #15
  %39 = add nuw nsw i32 %8, 1
  %40 = load ptr, ptr @compiler_params, align 8, !tbaa !15
  %41 = getelementptr inbounds %struct.param_info, ptr %40, i64 34, i32 1
  %42 = load i32, ptr %41, align 8, !tbaa !60
  %43 = icmp slt i32 %8, %42
  br i1 %43, label %7, label %44, !llvm.loop !101

44:                                               ; preds = %7, %32, %38
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #16
  ret i32 0
}

; Function Attrs: optsize
declare zeroext i8 @optimize_loop_for_speed_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @cleanup_tree_cfg() local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #13

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nounwind optsize }
attributes #16 = { nounwind }
attributes #17 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !8, i64 36}
!7 = !{!"loop", !8, i64 0, !8, i64 4, !11, i64 8, !11, i64 16, !12, i64 24, !8, i64 32, !8, i64 36, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !13, i64 80, !13, i64 96, !9, i64 112, !9, i64 113, !8, i64 116, !11, i64 120, !11, i64 128, !9, i64 136, !11, i64 144}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"any pointer", !9, i64 0}
!12 = !{!"lpt_decision", !8, i64 0, !8, i64 4}
!13 = !{!"", !14, i64 0, !14, i64 8}
!14 = !{!"long", !9, i64 0}
!15 = !{!11, !11, i64 0}
!16 = !{i8 0, i8 2}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = distinct !{!19, !18}
!20 = !{!21, !11, i64 0}
!21 = !{!"", !11, i64 0, !11, i64 8, !11, i64 16}
!22 = !{!21, !11, i64 8}
!23 = !{!21, !11, i64 16}
!24 = !{!25, !11, i64 0}
!25 = !{!"gimple_seq_node_d", !11, i64 0, !11, i64 8, !11, i64 16}
!26 = !{!25, !11, i64 16}
!27 = !{!28, !8, i64 96}
!28 = !{!"basic_block_def", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !9, i64 32, !11, i64 48, !11, i64 56, !9, i64 64, !14, i64 72, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !8, i64 96}
!29 = !{!9, !9, i64 0}
!30 = !{!31, !11, i64 0}
!31 = !{!"gimple_bb_info", !11, i64 0, !11, i64 8}
!32 = !{!33, !11, i64 0}
!33 = !{!"gimple_seq_d", !11, i64 0, !11, i64 8, !11, i64 16}
!34 = distinct !{!34, !18}
!35 = !{!36, !8, i64 8}
!36 = !{!"", !11, i64 0, !8, i64 8}
!37 = !{!38, !11, i64 32}
!38 = !{!"function", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !11, i64 128, !8, i64 136, !8, i64 137, !8, i64 138, !8, i64 138, !8, i64 138, !8, i64 138, !8, i64 138, !8, i64 138, !8, i64 138, !8, i64 139, !8, i64 139, !8, i64 139, !8, i64 139, !8, i64 139, !8, i64 139, !8, i64 139}
!39 = !{!36, !11, i64 0}
!40 = !{!41, !11, i64 8}
!41 = !{!"loops", !8, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!42 = !{i32 0, i32 2}
!43 = !{!7, !11, i64 48}
!44 = !{!7, !8, i64 0}
!45 = distinct !{!45, !18}
!46 = !{!41, !11, i64 24}
!47 = distinct !{!47, !18}
!48 = !{!7, !11, i64 56}
!49 = distinct !{!49, !18}
!50 = distinct !{!50, !18}
!51 = !{!52, !11, i64 0}
!52 = !{!"edge_def", !11, i64 0, !11, i64 8, !9, i64 16, !11, i64 24, !11, i64 32, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !14, i64 56}
!53 = !{!8, !8, i64 0}
!54 = distinct !{!54, !18}
!55 = !{!56, !8, i64 0}
!56 = !{!"VEC_loop_p_base", !8, i64 0, !8, i64 4, !9, i64 8}
!57 = !{!58, !8, i64 0}
!58 = !{!"VEC_int_base", !8, i64 0, !8, i64 4, !9, i64 8}
!59 = !{!7, !11, i64 40}
!60 = !{!61, !8, i64 8}
!61 = !{!"param_info", !11, i64 0, !8, i64 8, !9, i64 12, !8, i64 16, !8, i64 20, !11, i64 24}
!62 = !{!63, !8, i64 0}
!63 = !{!"loop_size", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12}
!64 = !{i64 -3074457345618258602, i64 3074457345618258603}
!65 = distinct !{!65, !18}
!66 = !{!52, !8, i64 48}
!67 = !{!28, !11, i64 8}
!68 = !{!28, !8, i64 80}
!69 = !{i32 0, i32 256}
!70 = !{!63, !8, i64 8}
!71 = distinct !{!71, !18}
!72 = distinct !{!72, !18}
!73 = !{!63, !8, i64 4}
!74 = !{!63, !8, i64 12}
!75 = !{!76, !11, i64 0}
!76 = !{!"simple_bitmap_def", !11, i64 0, !8, i64 8, !8, i64 12, !9, i64 16}
!77 = !{!14, !14, i64 0}
!78 = !{!79, !8, i64 0}
!79 = !{!"VEC_edge_base", !8, i64 0, !8, i64 4, !9, i64 8}
!80 = distinct !{!80, !18}
!81 = !{!82, !11, i64 1112}
!82 = !{!"gcc_target", !83, i64 0, !85, i64 368, !86, i64 664, !8, i64 744, !11, i64 752, !11, i64 760, !11, i64 768, !11, i64 776, !11, i64 784, !11, i64 792, !11, i64 800, !11, i64 808, !11, i64 816, !11, i64 824, !11, i64 832, !11, i64 840, !11, i64 848, !11, i64 856, !11, i64 864, !11, i64 872, !11, i64 880, !11, i64 888, !11, i64 896, !11, i64 904, !11, i64 912, !11, i64 920, !11, i64 928, !11, i64 936, !11, i64 944, !11, i64 952, !11, i64 960, !11, i64 968, !11, i64 976, !11, i64 984, !11, i64 992, !11, i64 1000, !11, i64 1008, !11, i64 1016, !11, i64 1024, !11, i64 1032, !11, i64 1040, !11, i64 1048, !11, i64 1056, !14, i64 1064, !14, i64 1072, !11, i64 1080, !11, i64 1088, !11, i64 1096, !11, i64 1104, !11, i64 1112, !11, i64 1120, !11, i64 1128, !11, i64 1136, !11, i64 1144, !11, i64 1152, !11, i64 1160, !11, i64 1168, !87, i64 1176, !11, i64 1232, !11, i64 1240, !11, i64 1248, !11, i64 1256, !11, i64 1264, !11, i64 1272, !11, i64 1280, !11, i64 1288, !11, i64 1296, !11, i64 1304, !11, i64 1312, !11, i64 1320, !11, i64 1328, !11, i64 1336, !11, i64 1344, !11, i64 1352, !11, i64 1360, !11, i64 1368, !11, i64 1376, !11, i64 1384, !11, i64 1392, !11, i64 1400, !11, i64 1408, !11, i64 1416, !11, i64 1424, !11, i64 1432, !11, i64 1440, !11, i64 1448, !11, i64 1456, !14, i64 1464, !88, i64 1472, !11, i64 1664, !11, i64 1672, !11, i64 1680, !11, i64 1688, !11, i64 1696, !11, i64 1704, !11, i64 1712, !11, i64 1720, !11, i64 1728, !11, i64 1736, !11, i64 1744, !11, i64 1752, !11, i64 1760, !11, i64 1768, !11, i64 1776, !89, i64 1784, !90, i64 1792, !91, i64 1896, !92, i64 1968, !11, i64 2016, !9, i64 2024, !9, i64 2025, !9, i64 2026, !9, i64 2027, !9, i64 2028, !9, i64 2029, !9, i64 2030, !9, i64 2031, !9, i64 2032, !9, i64 2033, !9, i64 2034, !9, i64 2035}
!83 = !{!"asm_out", !11, i64 0, !11, i64 8, !11, i64 16, !84, i64 24, !84, i64 56, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !11, i64 264, !11, i64 272, !11, i64 280, !11, i64 288, !11, i64 296, !11, i64 304, !11, i64 312, !11, i64 320, !11, i64 328, !11, i64 336, !11, i64 344, !11, i64 352, !11, i64 360}
!84 = !{!"asm_int_op", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!85 = !{!"sched", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !11, i64 264, !11, i64 272, !11, i64 280, !11, i64 288}
!86 = !{!"vectorize", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72}
!87 = !{!"addr_space", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48}
!88 = !{!"calls", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184}
!89 = !{!"c", !11, i64 0}
!90 = !{!"cxx", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96}
!91 = !{!"emutls", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !9, i64 64, !9, i64 65}
!92 = !{!"target_option_hooks", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40}
!93 = distinct !{!93, !18}
!94 = !{!95, !11, i64 0}
!95 = !{!"", !11, i64 0, !11, i64 8, !9, i64 16}
!96 = !{!95, !11, i64 8}
!97 = !{i32 0, i32 65536}
!98 = !{!28, !11, i64 24}
!99 = !{!33, !11, i64 8}
!100 = distinct !{!100, !18}
!101 = distinct !{!101, !18}
