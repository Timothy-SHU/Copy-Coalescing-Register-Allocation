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
define dso_local i32 @tree_num_loop_insns(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !170 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = tail call ptr @get_loop_body(ptr noundef %0) #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  %5 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %6 = load i32, ptr %5, align 4, !tbaa !171
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %28, label %8, !prof !180

8:                                                ; preds = %2, %22
  %9 = phi i64 [ %24, %22 ], [ 0, %2 ]
  %10 = phi i32 [ %23, %22 ], [ 0, %2 ]
  %11 = getelementptr inbounds ptr, ptr %4, i64 %9
  %12 = load ptr, ptr %11, align 8, !tbaa !181
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %12) #16
  %13 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #16, !range !182
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %22, !prof !183

15:                                               ; preds = %8, %15
  %16 = phi i32 [ %19, %15 ], [ %10, %8 ]
  %17 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #16
  %18 = tail call i32 @estimate_num_insns(ptr noundef %17, ptr noundef %1) #14
  %19 = add i32 %18, %16
  call fastcc void @gsi_next(ptr noundef nonnull %3) #16
  %20 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #16, !range !182
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %15, label %22, !prof !184, !llvm.loop !185

22:                                               ; preds = %15, %8
  %23 = phi i32 [ %10, %8 ], [ %19, %15 ]
  %24 = add nuw nsw i64 %9, 1
  %25 = load i32, ptr %5, align 4, !tbaa !171
  %26 = zext i32 %25 to i64
  %27 = icmp ult i64 %24, %26
  br i1 %27, label %8, label %28, !prof !187, !llvm.loop !188

28:                                               ; preds = %22, %2
  %29 = phi i32 [ 0, %2 ], [ %23, %22 ]
  tail call void @free(ptr noundef %4) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  ret i32 %29
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @get_loop_body(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #3 !prof !189 !PGOFuncName !190 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #16
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #16
  store ptr %4, ptr %0, align 8, !tbaa !191
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !193
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !194
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #4 !prof !195 !PGOFuncName !196 {
  %2 = load ptr, ptr %0, align 8, !tbaa !191
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare i32 @estimate_num_insns(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #5 !prof !197 !PGOFuncName !198 {
  %2 = load ptr, ptr %0, align 8, !tbaa !191
  %3 = load ptr, ptr %2, align 8, !tbaa !199
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #3 !prof !197 !PGOFuncName !201 {
  %2 = load ptr, ptr %0, align 8, !tbaa !191
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !202
  store ptr %4, ptr %0, align 8, !tbaa !191
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !203 !PGOFuncName !204 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !205
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !207

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !208
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !209

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !210
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #4 !prof !189 !PGOFuncName !212 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !213

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !214
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @canonicalize_induction_variables() local_unnamed_addr #0 !prof !216 {
  %1 = alloca %struct.loop_iterator, align 8
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  call fastcc void @fel_init(ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef 0) #16
  %3 = load ptr, ptr %2, align 8, !tbaa !181
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5, !prof !217

5:                                                ; preds = %0, %5
  %6 = phi ptr [ %10, %5 ], [ %3, %0 ]
  %7 = phi i8 [ %9, %5 ], [ 0, %0 ]
  %8 = tail call fastcc zeroext i8 @canonicalize_loop_induction_variables(ptr noundef nonnull %6, i8 noundef zeroext 1, i32 noundef 0, i8 noundef zeroext 1) #16, !range !182
  %9 = or i8 %8, %7
  call fastcc void @fel_next(ptr noundef nonnull %1, ptr noundef nonnull %2) #16
  %10 = load ptr, ptr %2, align 8, !tbaa !181
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %5, !prof !218, !llvm.loop !219

12:                                               ; preds = %5
  %13 = icmp eq i8 %9, 0
  %14 = select i1 %13, i32 0, i32 32, !prof !220
  br label %15

15:                                               ; preds = %12, %0
  %16 = phi i32 [ 0, %0 ], [ %14, %12 ]
  tail call void @scev_reset() #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #15
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_init(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) unnamed_addr #0 !prof !221 !PGOFuncName !222 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  %5 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  store i32 0, ptr %5, align 8, !tbaa !223
  %6 = load ptr, ptr @cfun, align 8, !tbaa !181
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !225
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11, !prof !227

10:                                               ; preds = %3
  store ptr null, ptr %0, align 8, !tbaa !228
  store ptr null, ptr %1, align 8, !tbaa !181
  br label %104

11:                                               ; preds = %3
  %12 = tail call fastcc i32 @number_of_loops() #16
  %13 = tail call fastcc ptr @VEC_int_heap_alloc(i32 noundef %12) #16
  store ptr %13, ptr %0, align 8, !tbaa !228
  %14 = and i32 %2, 1
  %15 = xor i32 %14, 1
  %16 = and i32 %2, 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %50, label %18, !prof !229

18:                                               ; preds = %11
  %19 = load ptr, ptr @cfun, align 8, !tbaa !181
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !225
  %22 = getelementptr inbounds %struct.loops, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !230
  %24 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %23, i32 noundef 0, ptr noundef nonnull %4) #16, !range !232
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %103, label %26, !prof !233

26:                                               ; preds = %18, %41
  %27 = phi ptr [ %42, %41 ], [ %19, %18 ]
  %28 = phi i32 [ %43, %41 ], [ 0, %18 ]
  %29 = load ptr, ptr %4, align 8, !tbaa !181
  %30 = icmp eq ptr %29, null
  br i1 %30, label %41, label %31, !prof !234

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.loop, ptr %29, i64 0, i32 8
  %33 = load ptr, ptr %32, align 8, !tbaa !235
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %41, !prof !236

35:                                               ; preds = %31
  %36 = load i32, ptr %29, align 8, !tbaa !237
  %37 = icmp slt i32 %36, %15
  br i1 %37, label %41, label %38, !prof !238

38:                                               ; preds = %35
  %39 = load ptr, ptr %0, align 8, !tbaa !228
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %39, i32 noundef %36) #16
  %40 = load ptr, ptr @cfun, align 8, !tbaa !181
  br label %41

41:                                               ; preds = %26, %31, %35, %38
  %42 = phi ptr [ %27, %26 ], [ %27, %31 ], [ %27, %35 ], [ %40, %38 ]
  %43 = add i32 %28, 1
  %44 = getelementptr inbounds %struct.function, ptr %42, i64 0, i32 4
  %45 = load ptr, ptr %44, align 8, !tbaa !225
  %46 = getelementptr inbounds %struct.loops, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !230
  %48 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %47, i32 noundef %43, ptr noundef nonnull %4) #16, !range !232
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %103, label %26, !prof !239, !llvm.loop !240

50:                                               ; preds = %11
  %51 = and i32 %2, 2
  %52 = icmp eq i32 %51, 0
  %53 = load ptr, ptr @cfun, align 8, !tbaa !181
  %54 = getelementptr inbounds %struct.function, ptr %53, i64 0, i32 4
  %55 = load ptr, ptr %54, align 8, !tbaa !225
  %56 = getelementptr inbounds %struct.loops, ptr %55, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !241
  br i1 %52, label %83, label %58, !prof !242

58:                                               ; preds = %50, %58
  %59 = phi ptr [ %61, %58 ], [ %57, %50 ]
  %60 = getelementptr inbounds %struct.loop, ptr %59, i64 0, i32 8
  %61 = load ptr, ptr %60, align 8, !tbaa !235
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %58, !llvm.loop !243

63:                                               ; preds = %58, %81
  %64 = phi ptr [ %82, %81 ], [ %59, %58 ]
  %65 = load i32, ptr %64, align 8, !tbaa !237
  %66 = icmp slt i32 %65, %15
  br i1 %66, label %69, label %67

67:                                               ; preds = %63
  %68 = load ptr, ptr %0, align 8, !tbaa !228
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %68, i32 noundef %65) #16
  br label %69

69:                                               ; preds = %67, %63
  %70 = getelementptr inbounds %struct.loop, ptr %64, i64 0, i32 9
  %71 = load ptr, ptr %70, align 8, !tbaa !244
  %72 = icmp eq ptr %71, null
  br i1 %72, label %78, label %73

73:                                               ; preds = %69, %73
  %74 = phi ptr [ %76, %73 ], [ %71, %69 ]
  %75 = getelementptr inbounds %struct.loop, ptr %74, i64 0, i32 8
  %76 = load ptr, ptr %75, align 8, !tbaa !235
  %77 = icmp eq ptr %76, null
  br i1 %77, label %81, label %73, !llvm.loop !245

78:                                               ; preds = %69
  %79 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %64) #16
  %80 = icmp eq ptr %79, null
  br i1 %80, label %103, label %81

81:                                               ; preds = %73, %78
  %82 = phi ptr [ %79, %78 ], [ %74, %73 ]
  br label %63

83:                                               ; preds = %50, %93
  %84 = phi ptr [ %94, %93 ], [ %57, %50 ]
  %85 = load i32, ptr %84, align 8, !tbaa !237
  %86 = icmp slt i32 %85, %15
  br i1 %86, label %89, label %87, !prof !246

87:                                               ; preds = %83
  %88 = load ptr, ptr %0, align 8, !tbaa !228
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %88, i32 noundef %85) #16
  br label %89

89:                                               ; preds = %87, %83
  %90 = getelementptr inbounds %struct.loop, ptr %84, i64 0, i32 8
  %91 = load ptr, ptr %90, align 8, !tbaa !235
  %92 = icmp eq ptr %91, null
  br i1 %92, label %95, label %93, !prof !247

93:                                               ; preds = %95, %89
  %94 = phi ptr [ %91, %89 ], [ %98, %95 ]
  br label %83

95:                                               ; preds = %89, %100
  %96 = phi ptr [ %101, %100 ], [ %84, %89 ]
  %97 = getelementptr inbounds %struct.loop, ptr %96, i64 0, i32 9
  %98 = load ptr, ptr %97, align 8, !tbaa !244
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %93, !prof !248

100:                                              ; preds = %95
  %101 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %96) #16
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %95, !prof !249, !llvm.loop !250

103:                                              ; preds = %41, %78, %100, %18
  tail call fastcc void @fel_next(ptr noundef nonnull %0, ptr noundef %1) #16
  br label %104

104:                                              ; preds = %103, %10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @canonicalize_loop_induction_variables(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2, i8 noundef zeroext %3) unnamed_addr #0 !prof !251 !PGOFuncName !252 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  store ptr null, ptr %5, align 8, !tbaa !181
  %6 = tail call ptr @number_of_latch_executions(ptr noundef %0) #14
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 23
  %10 = tail call ptr @single_exit(ptr noundef %0) #14
  br i1 %9, label %11, label %15, !prof !253

11:                                               ; preds = %4
  store ptr %10, ptr %5, align 8, !tbaa !181
  %12 = load ptr, ptr %10, align 8, !tbaa !254
  %13 = tail call zeroext i8 @just_once_each_iteration_p(ptr noundef %0, ptr noundef %12) #14
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %61, label %39, !prof !256

15:                                               ; preds = %4
  %16 = icmp eq ptr %10, null
  br i1 %16, label %17, label %19, !prof !257

17:                                               ; preds = %15
  %18 = call ptr @find_loop_niter(ptr noundef %0, ptr noundef nonnull %5) #14
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi ptr [ %6, %15 ], [ %18, %17 ]
  %21 = icmp eq i8 %3, 0
  br i1 %21, label %31, label %22, !prof !258

22:                                               ; preds = %19
  %23 = call zeroext i8 @chrec_contains_undetermined(ptr noundef %20) #14
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %29, !prof !259

25:                                               ; preds = %22
  %26 = load i64, ptr %20, align 8
  %27 = and i64 %26, 65535
  %28 = icmp eq i64 %27, 23
  br i1 %28, label %31, label %29, !prof !260

29:                                               ; preds = %25, %22
  %30 = call ptr @find_loop_niter_by_eval(ptr noundef %0, ptr noundef nonnull %5) #14
  br label %31

31:                                               ; preds = %29, %25, %19
  %32 = phi ptr [ %30, %29 ], [ %20, %25 ], [ %20, %19 ]
  %33 = call zeroext i8 @chrec_contains_undetermined(ptr noundef %32) #14
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %61, !prof !261

35:                                               ; preds = %31
  %36 = load i64, ptr %32, align 8
  %37 = and i64 %36, 65535
  %38 = icmp eq i64 %37, 23
  br i1 %38, label %39, label %61, !prof !262

39:                                               ; preds = %35, %11
  %40 = phi ptr [ %6, %11 ], [ %32, %35 ]
  %41 = load ptr, ptr @dump_file, align 8, !tbaa !181
  %42 = icmp eq ptr %41, null
  br i1 %42, label %53, label %43, !prof !263

43:                                               ; preds = %39
  %44 = load i32, ptr @dump_flags, align 4, !tbaa !264
  %45 = and i32 %44, 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %43
  %48 = load i32, ptr %0, align 8, !tbaa !237
  %49 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %41, ptr noundef nonnull @.str, i32 noundef %48) #16
  %50 = load ptr, ptr @dump_file, align 8, !tbaa !181
  call void @print_generic_expr(ptr noundef %50, ptr noundef nonnull %40, i32 noundef 2) #14
  %51 = load ptr, ptr @dump_file, align 8, !tbaa !181
  %52 = call i64 @fwrite(ptr nonnull @.str.1, i64 8, i64 1, ptr %51)
  br label %53

53:                                               ; preds = %47, %43, %39
  %54 = load ptr, ptr %5, align 8, !tbaa !181
  %55 = call fastcc zeroext i8 @try_unroll_loop_completely(ptr noundef %0, ptr noundef %54, ptr noundef nonnull %40, i32 noundef %2) #16, !range !182
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %61, !prof !265

57:                                               ; preds = %53
  %58 = icmp eq i8 %1, 0
  br i1 %58, label %61, label %59, !prof !266

59:                                               ; preds = %57
  %60 = load ptr, ptr %5, align 8, !tbaa !181
  call fastcc void @create_canonical_iv(ptr noundef %0, ptr noundef %60, ptr noundef nonnull %40) #16
  br label %61

61:                                               ; preds = %57, %59, %53, %31, %35, %11
  %62 = phi i8 [ 0, %11 ], [ 0, %35 ], [ 0, %31 ], [ 1, %53 ], [ 0, %59 ], [ 0, %57 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  ret i8 %62
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_next(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !prof !267 !PGOFuncName !268 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  %4 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !223
  br label %6

6:                                                ; preds = %11, %2
  %7 = phi i32 [ %12, %11 ], [ %5, %2 ]
  %8 = load ptr, ptr %0, align 8, !tbaa !228
  %9 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %8, i32 noundef %7, ptr noundef nonnull %3) #16, !range !232
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11, !prof !269

11:                                               ; preds = %6
  %12 = add i32 %7, 1
  store i32 %12, ptr %4, align 8, !tbaa !223
  %13 = load i32, ptr %3, align 4, !tbaa !264
  %14 = tail call fastcc ptr @get_loop(i32 noundef %13) #16
  store ptr %14, ptr %1, align 8, !tbaa !181
  %15 = icmp eq ptr %14, null
  br i1 %15, label %6, label %17, !prof !270, !llvm.loop !271

16:                                               ; preds = %6
  tail call fastcc void @VEC_int_heap_free(ptr noundef nonnull %0) #16
  store ptr null, ptr %1, align 8, !tbaa !181
  br label %17

17:                                               ; preds = %11, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  ret void
}

; Function Attrs: optsize
declare void @scev_reset() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_int_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !221 !PGOFuncName !272 {
  %2 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 4) #14
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @number_of_loops() unnamed_addr #5 !prof !221 !PGOFuncName !273 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !181
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !225
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !227

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !230
  %8 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %7) #16
  br label %9

9:                                                ; preds = %0, %5
  %10 = phi i32 [ %8, %5 ], [ 0, %0 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_loop_p_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #7 !prof !274 !PGOFuncName !275 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !276

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !277
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !279

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !181
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !181
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_int_base_quick_push(ptr noundef %0, i32 noundef %1) unnamed_addr #7 !prof !251 !PGOFuncName !280 {
  %3 = load i32, ptr %0, align 4, !tbaa !281
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 4, !tbaa !281
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %5
  store i32 %1, ptr %6, align 4, !tbaa !264
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_outer(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !283 !PGOFuncName !284 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !285
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #16
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6, !prof !286

6:                                                ; preds = %1
  %7 = add i32 %4, -1
  %8 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %3, i32 noundef %7) #16
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_loop_p_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !287 !PGOFuncName !288 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !289

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !277
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_loop_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !prof !290 !PGOFuncName !291 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !181
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
define internal fastcc noundef zeroext i8 @try_unroll_loop_completely(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !prof !292 !PGOFuncName !293 {
  %5 = alloca %struct.loop_size, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  %8 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !235
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %113, !prof !294

11:                                               ; preds = %4
  %12 = tail call i32 @host_integerp(ptr noundef %2, i32 noundef 1) #14
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %113, label %14, !prof !295

14:                                               ; preds = %11
  %15 = tail call i64 @tree_low_cst(ptr noundef %2, i32 noundef 1) #14
  %16 = load ptr, ptr @compiler_params, align 8, !tbaa !181
  %17 = getelementptr inbounds %struct.param_info, ptr %16, i64 32, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !296
  %19 = sext i32 %18 to i64
  %20 = icmp ugt i64 %15, %19
  br i1 %20, label %113, label %21, !prof !298

21:                                               ; preds = %14
  %22 = icmp eq i64 %15, 0
  br i1 %22, label %94, label %23, !prof !299

23:                                               ; preds = %21
  %24 = icmp eq i32 %3, 0
  br i1 %24, label %113, label %25, !prof !300

25:                                               ; preds = %23
  call fastcc void @tree_estimate_loop_size(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %5) #16
  %26 = load i32, ptr %5, align 4, !tbaa !301
  %27 = sext i32 %26 to i64
  %28 = call fastcc i64 @estimated_unrolled_size(ptr noundef nonnull %5, i64 noundef %15) #16, !range !303
  %29 = load ptr, ptr @dump_file, align 8, !tbaa !181
  %30 = icmp eq ptr %29, null
  br i1 %30, label %40, label %31, !prof !304

31:                                               ; preds = %25
  %32 = load i32, ptr @dump_flags, align 4, !tbaa !264
  %33 = and i32 %32, 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  %36 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %29, ptr noundef nonnull @.str.2, i32 noundef %26) #16
  %37 = load ptr, ptr @dump_file, align 8, !tbaa !181
  %38 = trunc i64 %28 to i32
  %39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef nonnull @.str.3, i32 noundef %38) #16
  br label %40

40:                                               ; preds = %35, %31, %25
  %41 = icmp ugt i64 %28, %27
  br i1 %41, label %42, label %70, !prof !305

42:                                               ; preds = %40
  %43 = load ptr, ptr @compiler_params, align 8, !tbaa !181
  %44 = getelementptr inbounds %struct.param_info, ptr %43, i64 31, i32 1
  %45 = load i32, ptr %44, align 8, !tbaa !296
  %46 = zext i32 %45 to i64
  %47 = icmp ugt i64 %28, %46
  br i1 %47, label %48, label %58, !prof !306

48:                                               ; preds = %42
  %49 = load ptr, ptr @dump_file, align 8, !tbaa !181
  %50 = icmp eq ptr %49, null
  br i1 %50, label %113, label %51, !prof !307

51:                                               ; preds = %48
  %52 = load i32, ptr @dump_flags, align 4, !tbaa !264
  %53 = and i32 %52, 8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %113, label %55

55:                                               ; preds = %51
  %56 = load i32, ptr %0, align 8, !tbaa !237
  %57 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %49, ptr noundef nonnull @.str.4, i32 noundef %56) #16
  br label %113

58:                                               ; preds = %42
  %59 = icmp eq i32 %3, 1
  br i1 %59, label %60, label %70, !prof !308

60:                                               ; preds = %58
  %61 = load ptr, ptr @dump_file, align 8, !tbaa !181
  %62 = icmp eq ptr %61, null
  br i1 %62, label %113, label %63, !prof !309

63:                                               ; preds = %60
  %64 = load i32, ptr @dump_flags, align 4, !tbaa !264
  %65 = and i32 %64, 8
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %113, label %67

67:                                               ; preds = %63
  %68 = load i32, ptr %0, align 8, !tbaa !237
  %69 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %61, ptr noundef nonnull @.str.5, i32 noundef %68) #16
  br label %113

70:                                               ; preds = %40, %58
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #15
  store ptr null, ptr %7, align 8, !tbaa !181
  tail call void @initialize_original_copy_tables() #14
  %71 = trunc i64 %15 to i32
  %72 = add i32 %71, 1
  %73 = tail call ptr @sbitmap_alloc(i32 noundef %72) #14
  tail call void @sbitmap_ones(ptr noundef %73) #14
  tail call fastcc void @RESET_BIT(ptr noundef %73) #16
  %74 = tail call ptr @loop_preheader_edge(ptr noundef nonnull %0) #14
  %75 = call zeroext i8 @gimple_duplicate_loop_to_header_edge(ptr noundef nonnull %0, ptr noundef %74, i32 noundef %71, ptr noundef %73, ptr noundef %1, ptr noundef nonnull %7, i32 noundef 5) #14
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %81, label %77, !prof !310

77:                                               ; preds = %70
  %78 = load ptr, ptr %7, align 8
  %79 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %78, i32 noundef 0, ptr noundef nonnull %6) #16, !range !232
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %93, label %82, !prof !311

81:                                               ; preds = %70
  call void @free_original_copy_tables() #14
  call void @free(ptr noundef %73) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #15
  br label %113

82:                                               ; preds = %77, %88
  %83 = phi i32 [ %89, %88 ], [ 0, %77 ]
  %84 = load ptr, ptr %6, align 8, !tbaa !181
  %85 = call zeroext i8 @remove_path(ptr noundef %84) #14
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %87, label %88, !prof !312

87:                                               ; preds = %82
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 412, ptr noundef nonnull @.str.7) #14
  br label %88

88:                                               ; preds = %82, %87
  %89 = add i32 %83, 1
  %90 = load ptr, ptr %7, align 8
  %91 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %90, i32 noundef %89, ptr noundef nonnull %6) #16, !range !232
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %82, !prof !313, !llvm.loop !314

93:                                               ; preds = %88, %77
  call fastcc void @VEC_edge_heap_free(ptr noundef nonnull %7) #16
  call void @free(ptr noundef %73) #16
  call void @free_original_copy_tables() #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #15
  br label %94

94:                                               ; preds = %93, %21
  %95 = load ptr, ptr %1, align 8, !tbaa !254
  %96 = call ptr @last_stmt(ptr noundef %95) #14
  %97 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 7
  %98 = load i32, ptr %97, align 8, !tbaa !315
  %99 = and i32 %98, 1024
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %102, label %101, !prof !316

101:                                              ; preds = %94
  call fastcc void @gimple_cond_make_true(ptr noundef %96) #16
  br label %103

102:                                              ; preds = %94
  call fastcc void @gimple_cond_make_false(ptr noundef %96) #16
  br label %103

103:                                              ; preds = %102, %101
  call fastcc void @update_stmt(ptr noundef %96) #16
  call void @update_ssa(i32 noundef 2048) #14
  %104 = load ptr, ptr @dump_file, align 8, !tbaa !181
  %105 = icmp eq ptr %104, null
  br i1 %105, label %113, label %106, !prof !317

106:                                              ; preds = %103
  %107 = load i32, ptr @dump_flags, align 4, !tbaa !264
  %108 = and i32 %107, 8
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %106
  %111 = load i32, ptr %0, align 8, !tbaa !237
  %112 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %104, ptr noundef nonnull @.str.8, i32 noundef %111) #16
  br label %113

113:                                              ; preds = %81, %103, %106, %110, %60, %63, %67, %48, %51, %55, %23, %14, %11, %4
  %114 = phi i8 [ 0, %4 ], [ 0, %11 ], [ 0, %14 ], [ 0, %23 ], [ 0, %55 ], [ 0, %51 ], [ 0, %48 ], [ 0, %67 ], [ 0, %63 ], [ 0, %60 ], [ 1, %110 ], [ 1, %106 ], [ 1, %103 ], [ 0, %81 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  ret i8 %114
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_canonical_iv(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2) unnamed_addr #0 !prof !318 !PGOFuncName !319 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #15
  %6 = load ptr, ptr @dump_file, align 8, !tbaa !181
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8, !prof !320

8:                                                ; preds = %3
  %9 = load i32, ptr @dump_flags, align 4, !tbaa !264
  %10 = and i32 %9, 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %8
  %13 = load i32, ptr %0, align 8, !tbaa !237
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %6, ptr noundef nonnull @.str.18, i32 noundef %13) #16
  %15 = load ptr, ptr @dump_file, align 8, !tbaa !181
  tail call void @print_generic_expr(ptr noundef %15, ptr noundef %2, i32 noundef 2) #14
  %16 = load ptr, ptr @dump_file, align 8, !tbaa !181
  %17 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 13, i64 1, ptr %16)
  br label %18

18:                                               ; preds = %12, %8, %3
  %19 = load ptr, ptr %1, align 8, !tbaa !254
  %20 = tail call ptr @last_stmt(ptr noundef %19) #14
  %21 = load ptr, ptr %1, align 8, !tbaa !254
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !321
  %24 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %23, i32 noundef 0) #16
  %25 = icmp eq ptr %24, %1
  br i1 %25, label %26, label %28, !prof !322

26:                                               ; preds = %18
  %27 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %23, i32 noundef 1) #16
  br label %28

28:                                               ; preds = %26, %18
  %29 = phi ptr [ %27, %26 ], [ %24, %18 ]
  %30 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !208
  %32 = tail call ptr @build_int_cst(ptr noundef %31, i64 noundef 1) #14
  %33 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %31, ptr noundef %2, ptr noundef %32) #14
  %34 = load ptr, ptr %29, align 8, !tbaa !254
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %34) #16
  %35 = tail call ptr @build_int_cst(ptr noundef %31, i64 noundef -1) #14
  call void @create_iv(ptr noundef %33, ptr noundef %35, ptr noundef null, ptr noundef %0, ptr noundef nonnull %5, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull %4) #14
  %36 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 7
  %37 = load i32, ptr %36, align 8, !tbaa !315
  %38 = and i32 %37, 1024
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, i32 102, i32 101
  call fastcc void @gimple_cond_set_code(ptr noundef %20, i32 noundef %40) #16
  %41 = load ptr, ptr %4, align 8, !tbaa !181
  call fastcc void @gimple_cond_set_lhs(ptr noundef %20, ptr noundef %41) #16
  %42 = call ptr @build_int_cst(ptr noundef %31, i64 noundef 0) #14
  call fastcc void @gimple_cond_set_rhs(ptr noundef %20, ptr noundef %42) #16
  call fastcc void @update_stmt(ptr noundef %20) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  ret void
}

; Function Attrs: optsize
declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @tree_estimate_loop_size(ptr noundef %0, ptr noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #0 !prof !323 !PGOFuncName !324 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = tail call ptr @get_loop_body(ptr noundef %0) #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #15
  %6 = getelementptr inbounds %struct.loop_size, ptr %2, i64 0, i32 1
  %7 = getelementptr inbounds %struct.loop_size, ptr %2, i64 0, i32 2
  %8 = getelementptr inbounds %struct.loop_size, ptr %2, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %9 = load ptr, ptr @dump_file, align 8, !tbaa !181
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11, !prof !304

11:                                               ; preds = %3
  %12 = load i32, ptr @dump_flags, align 4, !tbaa !264
  %13 = and i32 %12, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = load i32, ptr %0, align 8, !tbaa !237
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %9, ptr noundef nonnull @.str.9, i32 noundef %16) #16
  br label %18

18:                                               ; preds = %15, %11, %3
  %19 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %20 = load i32, ptr %19, align 4, !tbaa !171
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %171, label %22, !prof !325

22:                                               ; preds = %18
  %23 = icmp eq ptr %1, null
  br label %24

24:                                               ; preds = %22, %166
  %25 = phi i64 [ 0, %22 ], [ %167, %166 ]
  br i1 %23, label %34, label %26, !prof !326

26:                                               ; preds = %24
  %27 = getelementptr inbounds ptr, ptr %5, i64 %25
  %28 = load ptr, ptr %27, align 8, !tbaa !181
  %29 = load ptr, ptr %1, align 8, !tbaa !254
  %30 = icmp eq ptr %28, %29
  br i1 %30, label %34, label %31, !prof !327

31:                                               ; preds = %26
  %32 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %28, ptr noundef %29) #14
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %35, !prof !328

34:                                               ; preds = %31, %26, %24
  br label %35

35:                                               ; preds = %31, %34
  %36 = phi i1 [ true, %34 ], [ false, %31 ]
  %37 = phi i32 [ 0, %34 ], [ 1, %31 ]
  %38 = load ptr, ptr @dump_file, align 8, !tbaa !181
  %39 = icmp eq ptr %38, null
  br i1 %39, label %50, label %40, !prof !329

40:                                               ; preds = %35
  %41 = load i32, ptr @dump_flags, align 4, !tbaa !264
  %42 = and i32 %41, 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds ptr, ptr %5, i64 %25
  %46 = load ptr, ptr %45, align 8, !tbaa !181
  %47 = getelementptr inbounds %struct.basic_block_def, ptr %46, i64 0, i32 9
  %48 = load i32, ptr %47, align 8, !tbaa !330
  %49 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %38, ptr noundef nonnull @.str.10, i32 noundef %48, i32 noundef %37) #16
  br label %50

50:                                               ; preds = %44, %40, %35
  %51 = getelementptr inbounds ptr, ptr %5, i64 %25
  %52 = load ptr, ptr %51, align 8, !tbaa !181
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %52) #16
  %53 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #16, !range !182
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %166, !prof !331

55:                                               ; preds = %50, %163
  %56 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #16
  %57 = tail call i32 @estimate_num_insns(ptr noundef %56, ptr noundef nonnull @eni_size_weights) #14
  %58 = load ptr, ptr @dump_file, align 8, !tbaa !181
  %59 = icmp eq ptr %58, null
  br i1 %59, label %68, label %60, !prof !332

60:                                               ; preds = %55
  %61 = load i32, ptr @dump_flags, align 4, !tbaa !264
  %62 = and i32 %61, 8
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %58, ptr noundef nonnull @.str.11, i32 noundef %57) #16
  %66 = load ptr, ptr @dump_file, align 8, !tbaa !181
  %67 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #16
  tail call void @print_gimple_stmt(ptr noundef %66, ptr noundef %67, i32 noundef 0, i32 noundef 0) #14
  br label %68

68:                                               ; preds = %64, %60, %55
  %69 = load ptr, ptr %51, align 8, !tbaa !181
  %70 = load ptr, ptr %1, align 8, !tbaa !254
  %71 = icmp eq ptr %69, %70
  br i1 %71, label %72, label %84, !prof !333

72:                                               ; preds = %68
  %73 = tail call ptr @last_stmt(ptr noundef %69) #14
  %74 = icmp eq ptr %56, %73
  br i1 %74, label %75, label %84, !prof !334

75:                                               ; preds = %72
  %76 = load ptr, ptr @dump_file, align 8, !tbaa !181
  %77 = icmp eq ptr %76, null
  br i1 %77, label %151, label %78, !prof !304

78:                                               ; preds = %75
  %79 = load i32, ptr @dump_flags, align 4, !tbaa !264
  %80 = and i32 %79, 8
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %151, label %82, !prof !335

82:                                               ; preds = %78
  %83 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 38, i64 1, ptr nonnull %76)
  br label %151

84:                                               ; preds = %72, %68
  %85 = tail call fastcc i32 @gimple_code(ptr noundef %56) #16, !range !336
  %86 = icmp eq i32 %85, 6
  br i1 %86, label %87, label %100, !prof !337

87:                                               ; preds = %84
  %88 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %56) #16
  %89 = tail call fastcc zeroext i8 @constant_after_peeling(ptr noundef %88, ptr noundef %56, ptr noundef %0) #16, !range !182
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %100, label %91, !prof !338

91:                                               ; preds = %87
  %92 = load ptr, ptr @dump_file, align 8, !tbaa !181
  %93 = icmp eq ptr %92, null
  br i1 %93, label %151, label %94, !prof !339

94:                                               ; preds = %91
  %95 = load i32, ptr @dump_flags, align 4, !tbaa !264
  %96 = and i32 %95, 8
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %151, label %98, !prof !335

98:                                               ; preds = %94
  %99 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 55, i64 1, ptr nonnull %92)
  br label %151

100:                                              ; preds = %87, %84
  %101 = tail call fastcc i32 @gimple_code(ptr noundef %56) #16, !range !336
  %102 = icmp eq i32 %101, 6
  br i1 %102, label %103, label %128, !prof !340

103:                                              ; preds = %100
  %104 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %56) #16
  %105 = load i64, ptr %104, align 8
  %106 = and i64 %105, 65535
  %107 = icmp eq i64 %106, 141
  br i1 %107, label %108, label %128, !prof !341

108:                                              ; preds = %103
  %109 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %56) #16
  %110 = tail call fastcc zeroext i8 @constant_after_peeling(ptr noundef %109, ptr noundef %56, ptr noundef %0) #16, !range !182
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %128, label %112, !prof !342

112:                                              ; preds = %108
  %113 = tail call fastcc i32 @gimple_assign_rhs_class(ptr noundef %56) #16, !range !336
  %114 = icmp eq i32 %113, 1
  br i1 %114, label %115, label %119, !prof !343

115:                                              ; preds = %112
  %116 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %56) #16
  %117 = tail call fastcc zeroext i8 @constant_after_peeling(ptr noundef %116, ptr noundef %56, ptr noundef %0) #16, !range !182
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %128, label %119, !prof !344

119:                                              ; preds = %115, %112
  %120 = load ptr, ptr @dump_file, align 8, !tbaa !181
  %121 = icmp eq ptr %120, null
  br i1 %121, label %151, label %122, !prof !345

122:                                              ; preds = %119
  %123 = load i32, ptr @dump_flags, align 4, !tbaa !264
  %124 = and i32 %123, 8
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %151, label %126, !prof !335

126:                                              ; preds = %122
  %127 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 44, i64 1, ptr nonnull %120)
  br label %151

128:                                              ; preds = %115, %108, %103, %100
  %129 = tail call fastcc i32 @gimple_code(ptr noundef %56) #16, !range !336
  %130 = icmp eq i32 %129, 1
  br i1 %130, label %131, label %148, !prof !346

131:                                              ; preds = %128
  %132 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %56) #16
  %133 = tail call fastcc zeroext i8 @constant_after_peeling(ptr noundef %132, ptr noundef %56, ptr noundef %0) #16, !range !182
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %148, label %135, !prof !347

135:                                              ; preds = %131
  %136 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %56) #16
  %137 = tail call fastcc zeroext i8 @constant_after_peeling(ptr noundef %136, ptr noundef %56, ptr noundef %0) #16, !range !182
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %148, label %139, !prof !348

139:                                              ; preds = %135
  %140 = load ptr, ptr @dump_file, align 8, !tbaa !181
  %141 = icmp eq ptr %140, null
  br i1 %141, label %151, label %142, !prof !349

142:                                              ; preds = %139
  %143 = load i32, ptr @dump_flags, align 4, !tbaa !264
  %144 = and i32 %143, 8
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %151, label %146, !prof !335

146:                                              ; preds = %142
  %147 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 25, i64 1, ptr nonnull %140)
  br label %151

148:                                              ; preds = %135, %131, %128
  %149 = load i32, ptr %2, align 4, !tbaa !301
  %150 = add nsw i32 %149, %57
  store i32 %150, ptr %2, align 4, !tbaa !301
  br i1 %36, label %159, label %163, !prof !350

151:                                              ; preds = %139, %142, %146, %119, %122, %126, %91, %94, %98, %75, %78, %82
  %152 = load <2 x i32>, ptr %2, align 4, !tbaa !264
  %153 = insertelement <2 x i32> poison, i32 %57, i64 0
  %154 = shufflevector <2 x i32> %153, <2 x i32> poison, <2 x i32> zeroinitializer
  %155 = add nsw <2 x i32> %152, %154
  store <2 x i32> %155, ptr %2, align 4, !tbaa !264
  br i1 %36, label %156, label %163, !prof !350

156:                                              ; preds = %151
  %157 = load i32, ptr %7, align 4, !tbaa !351
  %158 = add nsw i32 %157, %57
  store i32 %158, ptr %7, align 4, !tbaa !351
  br label %159

159:                                              ; preds = %148, %156
  %160 = phi ptr [ %8, %156 ], [ %7, %148 ]
  %161 = load i32, ptr %160, align 4, !tbaa !264
  %162 = add nsw i32 %161, %57
  store i32 %162, ptr %160, align 4, !tbaa !264
  br label %163

163:                                              ; preds = %159, %151, %148
  call fastcc void @gsi_next(ptr noundef nonnull %4) #16
  %164 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #16, !range !182
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %55, label %166, !prof !352, !llvm.loop !353

166:                                              ; preds = %163, %50
  %167 = add nuw nsw i64 %25, 1
  %168 = load i32, ptr %19, align 4, !tbaa !171
  %169 = zext i32 %168 to i64
  %170 = icmp ult i64 %167, %169
  br i1 %170, label %24, label %171, !prof !354, !llvm.loop !355

171:                                              ; preds = %166, %18
  %172 = load ptr, ptr @dump_file, align 8, !tbaa !181
  %173 = icmp eq ptr %172, null
  br i1 %173, label %184, label %174, !prof !304

174:                                              ; preds = %171
  %175 = load i32, ptr @dump_flags, align 4, !tbaa !264
  %176 = and i32 %175, 8
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %184, label %178

178:                                              ; preds = %174
  %179 = load i32, ptr %2, align 4, !tbaa !301
  %180 = load i32, ptr %6, align 4, !tbaa !356
  %181 = load i32, ptr %7, align 4, !tbaa !351
  %182 = load i32, ptr %8, align 4, !tbaa !357
  %183 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %172, ptr noundef nonnull @.str.16, i32 noundef %179, i32 noundef %180, i32 noundef %181, i32 noundef %182) #16
  br label %184

184:                                              ; preds = %178, %174, %171
  tail call void @free(ptr noundef %5) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i64 @estimated_unrolled_size(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #4 !prof !323 !PGOFuncName !358 {
  %3 = load i32, ptr %0, align 4, !tbaa !301
  %4 = getelementptr inbounds %struct.loop_size, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !356
  %6 = sub nsw i32 %3, %5
  %7 = sext i32 %6 to i64
  %8 = mul i64 %7, %1
  %9 = getelementptr inbounds %struct.loop_size, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !351
  %11 = getelementptr inbounds %struct.loop_size, ptr %0, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !357
  %13 = sub nsw i32 %10, %12
  %14 = sext i32 %13 to i64
  %15 = add nsw i64 %8, %14
  %16 = shl nsw i64 %15, 1
  %17 = sdiv i64 %16, 3
  %18 = icmp slt i64 %15, 2
  br i1 %18, label %19, label %20, !prof !359

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %19, %2
  %21 = phi i64 [ 1, %19 ], [ %17, %2 ]
  ret i64 %21
}

; Function Attrs: optsize
declare void @initialize_original_copy_tables() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sbitmap_ones(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @RESET_BIT(ptr nocapture noundef %0) unnamed_addr #9 !prof !360 !PGOFuncName !361 {
  %2 = load ptr, ptr %0, align 8, !tbaa !362
  %3 = icmp eq ptr %2, null
  br i1 %3, label %12, label %4, !prof !364

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  %6 = load i64, ptr %5, align 8, !tbaa !365
  %7 = and i64 %6, 1
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = load i8, ptr %2, align 1, !tbaa !208
  %11 = add i8 %10, -1
  store i8 %11, ptr %2, align 1, !tbaa !208
  br label %12

12:                                               ; preds = %4, %9, %1
  %13 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  %14 = load i64, ptr %13, align 8, !tbaa !365
  %15 = and i64 %14, -2
  store i64 %15, ptr %13, align 8, !tbaa !365
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @gimple_duplicate_loop_to_header_edge(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @loop_preheader_edge(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @free_original_copy_tables() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_edge_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #7 !prof !366 !PGOFuncName !367 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !368

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !369
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !371

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !181
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !181
  ret i32 %14
}

; Function Attrs: optsize
declare zeroext i8 @remove_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_edge_heap_free(ptr nocapture noundef %0) unnamed_addr #10 !prof !360 !PGOFuncName !372 {
  %2 = load ptr, ptr %0, align 8, !tbaa !181
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !310

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #16
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !181
  ret void
}

; Function Attrs: optsize
declare ptr @last_stmt(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_make_true(ptr noundef %0) unnamed_addr #0 !prof !373 !PGOFuncName !374 {
  %2 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !181
  tail call fastcc void @gimple_cond_set_lhs(ptr noundef %0, ptr noundef %2) #16
  %3 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !181
  tail call fastcc void @gimple_cond_set_rhs(ptr noundef %0, ptr noundef %3) #16
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = or disjoint i32 %5, 6619136
  store i32 %6, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_make_false(ptr noundef %0) unnamed_addr #0 !prof !375 !PGOFuncName !376 {
  %2 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !181
  tail call fastcc void @gimple_cond_set_lhs(ptr noundef %0, ptr noundef %2) #16
  %3 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !181
  tail call fastcc void @gimple_cond_set_rhs(ptr noundef %0, ptr noundef %3) #16
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = or disjoint i32 %5, 6619136
  store i32 %6, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_stmt(ptr noundef %0) unnamed_addr #0 !prof !377 !PGOFuncName !378 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #16, !range !182
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4, !prof !379

4:                                                ; preds = %1
  tail call void @gimple_set_modified(ptr noundef %0, i8 noundef zeroext 1) #14
  tail call void @update_stmt_operands(ptr noundef %0) #14
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
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !380 !PGOFuncName !381 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @constant_after_peeling(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !prof !382 !PGOFuncName !383 {
  %4 = alloca %struct.affine_iv, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #15
  %5 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %0) #14
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %86, !prof !384

7:                                                ; preds = %3
  %8 = load i64, ptr %0, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 141
  br i1 %10, label %72, label %11, !prof !385

11:                                               ; preds = %7
  %12 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef nonnull %0) #16, !range !182
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %23, label %14, !prof !386

14:                                               ; preds = %11, %14
  %15 = phi ptr [ %17, %14 ], [ %0, %11 ]
  %16 = getelementptr inbounds %struct.tree_exp, ptr %15, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !208
  %18 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %17) #16, !range !182
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %14, !prof !387, !llvm.loop !388

20:                                               ; preds = %14
  %21 = load i64, ptr %17, align 8
  %22 = and i64 %21, 65535
  br label %23

23:                                               ; preds = %20, %11
  %24 = phi i64 [ %22, %20 ], [ %9, %11 ]
  %25 = phi i64 [ %21, %20 ], [ %8, %11 ]
  %26 = phi ptr [ %17, %20 ], [ %0, %11 ]
  %27 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %24
  %28 = load i32, ptr %27, align 4, !tbaa !264
  %29 = icmp ne i32 %28, 3
  %30 = and i64 %25, 68157440
  %31 = icmp ne i64 %30, 68157440
  %32 = or i1 %29, %31
  br i1 %32, label %51, label %33, !prof !389

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct.tree_decl_common, ptr %26, i64 0, i32 5
  %35 = load ptr, ptr %34, align 8, !tbaa !208
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %54, !prof !390

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.tree_decl_common, ptr %26, i64 0, i32 2
  %39 = load i64, ptr %38, align 8
  %40 = and i64 %39, 33554432
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %86

42:                                               ; preds = %37
  %43 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 49), align 8, !tbaa !391
  %44 = tail call zeroext i8 %43(ptr noundef nonnull %26) #14
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %42
  %47 = load i64, ptr %26, align 8
  %48 = and i64 %47, 65535
  %49 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !264
  br label %51

51:                                               ; preds = %46, %23
  %52 = phi i32 [ %50, %46 ], [ %28, %23 ]
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %86, !prof !403

54:                                               ; preds = %51, %42, %33
  %55 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef nonnull %0) #16, !range !182
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %86, label %57, !prof !404

57:                                               ; preds = %54, %67
  %58 = phi ptr [ %69, %67 ], [ %0, %54 ]
  %59 = load i64, ptr %58, align 8
  %60 = and i64 %59, 65535
  %61 = icmp eq i64 %60, 45
  br i1 %61, label %62, label %67, !prof !405

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.tree_exp, ptr %58, i64 1
  %64 = load ptr, ptr %63, align 8, !tbaa !208
  %65 = tail call fastcc zeroext i8 @constant_after_peeling(ptr noundef %64, ptr noundef %1, ptr noundef %2) #16, !range !182
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %86, label %67, !prof !406

67:                                               ; preds = %62, %57
  %68 = getelementptr inbounds %struct.tree_exp, ptr %58, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !208
  %70 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %69) #16, !range !182
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %86, label %57, !prof !407, !llvm.loop !408

72:                                               ; preds = %7
  %73 = tail call fastcc ptr @loop_containing_stmt(ptr noundef %1) #16
  %74 = call zeroext i8 @simple_iv(ptr noundef %2, ptr noundef %73, ptr noundef nonnull %0, ptr noundef nonnull %4, i8 noundef zeroext 0) #14
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %86, label %76, !prof !409

76:                                               ; preds = %72
  %77 = load ptr, ptr %4, align 8, !tbaa !410
  %78 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %77) #14
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %86, label %80, !prof !412

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.affine_iv, ptr %4, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !413
  %83 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %82) #14
  %84 = icmp ne i8 %83, 0
  %85 = zext i1 %84 to i8
  br label %86

86:                                               ; preds = %67, %62, %37, %54, %80, %76, %72, %51, %3
  %87 = phi i8 [ 1, %3 ], [ 0, %51 ], [ 0, %72 ], [ 0, %76 ], [ %85, %80 ], [ 1, %54 ], [ 0, %37 ], [ 1, %67 ], [ 0, %62 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  ret i8 %87
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #0 !prof !414 !PGOFuncName !415 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #16
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #0 !prof !416 !PGOFuncName !417 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #16
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_class(ptr noundef %0) unnamed_addr #0 !prof !418 !PGOFuncName !419 {
  %2 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #16, !range !420
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #16, !range !336
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs2(ptr noundef %0) unnamed_addr #0 !prof !421 !PGOFuncName !422 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #16
  %3 = icmp ugt i32 %2, 2
  br i1 %3, label %4, label %6, !prof !423

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #16
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_lhs(ptr noundef %0) unnamed_addr #0 !prof !424 !PGOFuncName !425 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #16
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_rhs(ptr noundef %0) unnamed_addr #0 !prof !426 !PGOFuncName !427 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #16
  ret ptr %2
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @handled_component_p(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !428 !PGOFuncName !429 {
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
  ], !prof !430

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %4
  %6 = phi i8 [ 0, %4 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  ret i8 %6
}

; Function Attrs: optsize
declare zeroext i8 @simple_iv(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_containing_stmt(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !431 !PGOFuncName !432 {
  %2 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4, !prof !433

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !434
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !431 !PGOFuncName !435 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !208
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !436 !PGOFuncName !437 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #16, !range !182
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !438

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #16
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !181
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !439 !PGOFuncName !440 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !336
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 !prof !441 !PGOFuncName !442 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #16
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !365
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !443

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 1622, ptr noundef nonnull @.str.7) #14
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !441 !PGOFuncName !444 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !336
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #16
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #11 !prof !441 !PGOFuncName !445 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !264
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #11 !prof !446 !PGOFuncName !447 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !208
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #0 !prof !418 !PGOFuncName !448 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #16, !range !420
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #16, !range !336
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10, !prof !449

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

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !418 !PGOFuncName !450 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !336
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %7 [
    i8 6, label %4
    i8 1, label %4
    i8 8, label %8
  ], !prof !451

4:                                                ; preds = %1, %1
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 16
  br label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 1446, ptr noundef nonnull @.str.7) #14
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !452 !PGOFuncName !453 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !208
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !377 !PGOFuncName !454 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 0, ptr noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_set_rhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !377 !PGOFuncName !455 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 1, ptr noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !456 !PGOFuncName !457 {
  %4 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #16, !range !182
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6, !prof !458

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #16
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %10, label %9, !prof !459

9:                                                ; preds = %6, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 1665, ptr noundef nonnull @.str.7) #14
  br label %10

10:                                               ; preds = %6, %9
  %11 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #16
  %12 = zext nneg i32 %1 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  store ptr %2, ptr %13, align 8, !tbaa !181
  ret void
}

; Function Attrs: optsize
declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !prof !460 !PGOFuncName !461 {
  %3 = zext nneg i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !181
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_last_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #3 !prof !318 !PGOFuncName !462 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #16
  %4 = tail call fastcc ptr @gimple_seq_last(ptr noundef %3) #16
  store ptr %4, ptr %0, align 8, !tbaa !191
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !193
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !194
  ret void
}

; Function Attrs: optsize
declare void @create_iv(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_cond_set_code(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #7 !prof !318 !PGOFuncName !463 {
  %3 = load i32, ptr %0, align 8
  %4 = shl i32 %1, 16
  %5 = and i32 %3, 65535
  %6 = or disjoint i32 %5, %4
  store i32 %6, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_last(ptr noundef readonly %0) unnamed_addr #4 !prof !318 !PGOFuncName !464 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3, !prof !465

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !466
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_int_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #7 !prof !267 !PGOFuncName !467 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !468

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 4, !tbaa !281
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !469

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !264
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi i32 [ %11, %8 ], [ 0, %5 ], [ 0, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store i32 %13, ptr %2, align 4, !tbaa !264
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_loop(i32 noundef %0) unnamed_addr #5 !prof !251 !PGOFuncName !470 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !181
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !225
  %5 = getelementptr inbounds %struct.loops, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !230
  %7 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %6, i32 noundef %0) #16
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_int_heap_free(ptr nocapture noundef %0) unnamed_addr #10 !prof !221 !PGOFuncName !471 {
  %2 = load ptr, ptr %0, align 8, !tbaa !181
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !227

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #16
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !181
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @tree_unroll_loops_completely(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #0 !prof !472 {
  %3 = alloca %struct.loop_iterator, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  %5 = icmp eq i8 %0, 0
  %6 = icmp eq i8 %1, 0
  br label %7

7:                                                ; preds = %38, %2
  %8 = phi i32 [ 0, %2 ], [ %39, %38 ]
  call fastcc void @fel_init(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 4) #16
  %9 = load ptr, ptr %4, align 8, !tbaa !181
  %10 = icmp eq ptr %9, null
  br i1 %10, label %44, label %11, !prof !233

11:                                               ; preds = %7, %23
  %12 = phi ptr [ %30, %23 ], [ %9, %7 ]
  %13 = phi i8 [ %29, %23 ], [ 0, %7 ]
  br i1 %5, label %22, label %14, !prof !473

14:                                               ; preds = %11
  %15 = tail call zeroext i8 @optimize_loop_for_speed_p(ptr noundef nonnull %12) #14
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %22, label %17, !prof !474

17:                                               ; preds = %14
  br i1 %6, label %18, label %23, !prof !475

18:                                               ; preds = %17
  %19 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %12) #16
  %20 = tail call fastcc ptr @loop_outer(ptr noundef %19) #16
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23, !prof !476

22:                                               ; preds = %18, %14, %11
  br label %23

23:                                               ; preds = %17, %18, %22
  %24 = phi i32 [ 1, %22 ], [ 2, %18 ], [ 2, %17 ]
  %25 = load i32, ptr @flag_tree_loop_ivcanon, align 4, !tbaa !264
  %26 = icmp eq i32 %25, 0
  %27 = zext i1 %26 to i8
  %28 = tail call fastcc zeroext i8 @canonicalize_loop_induction_variables(ptr noundef nonnull %12, i8 noundef zeroext 0, i32 noundef %24, i8 noundef zeroext %27) #16, !range !182
  %29 = or i8 %28, %13
  call fastcc void @fel_next(ptr noundef nonnull %3, ptr noundef nonnull %4) #16
  %30 = load ptr, ptr %4, align 8, !tbaa !181
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %11, !prof !477, !llvm.loop !478

32:                                               ; preds = %23
  %33 = icmp eq i8 %29, 0
  br i1 %33, label %44, label %34, !prof !479

34:                                               ; preds = %32
  %35 = tail call zeroext i8 @cleanup_tree_cfg() #14
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %38, label %37, !prof !480

37:                                               ; preds = %34
  tail call void @update_ssa(i32 noundef 16384) #14
  br label %38

38:                                               ; preds = %34, %37
  tail call void @scev_reset() #14
  %39 = add nuw nsw i32 %8, 1
  %40 = load ptr, ptr @compiler_params, align 8, !tbaa !181
  %41 = getelementptr inbounds %struct.param_info, ptr %40, i64 34, i32 1
  %42 = load i32, ptr %41, align 8, !tbaa !296
  %43 = icmp slt i32 %8, %42
  br i1 %43, label %7, label %44, !prof !481, !llvm.loop !482

44:                                               ; preds = %7, %32, %38
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  ret i32 0
}

; Function Attrs: optsize
declare zeroext i8 @optimize_loop_for_speed_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @cleanup_tree_cfg() local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

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
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind optsize }
attributes #15 = { nounwind }
attributes #16 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!169}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168}
!36 = !{ptr @tree_num_loop_insns, ptr @get_loop_body, i64 8558}
!37 = !{ptr @tree_num_loop_insns, ptr @gsi_start_bb, i64 47247}
!38 = !{ptr @tree_num_loop_insns, ptr @gsi_end_p, i64 165760}
!39 = !{ptr @tree_num_loop_insns, ptr @gsi_stmt, i64 118513}
!40 = !{ptr @tree_num_loop_insns, ptr @estimate_num_insns, i64 118513}
!41 = !{ptr @tree_num_loop_insns, ptr @gsi_next, i64 118513}
!42 = !{ptr @tree_num_loop_insns, ptr @free, i64 8558}
!43 = !{ptr @gsi_start_bb, ptr @bb_seq, i64 48910}
!44 = !{ptr @gsi_start_bb, ptr @gimple_seq_first, i64 48910}
!45 = !{ptr @canonicalize_induction_variables, ptr @fel_init, i64 2627}
!46 = !{ptr @canonicalize_induction_variables, ptr @canonicalize_loop_induction_variables, i64 14308}
!47 = !{ptr @canonicalize_induction_variables, ptr @fel_next, i64 14308}
!48 = !{ptr @canonicalize_induction_variables, ptr @scev_reset, i64 2627}
!49 = !{ptr @fel_init, ptr @number_of_loops, i64 8088}
!50 = !{ptr @fel_init, ptr @VEC_int_heap_alloc, i64 8088}
!51 = !{ptr @fel_init, ptr @VEC_loop_p_base_iterate, i64 41593}
!52 = !{ptr @fel_init, ptr @VEC_int_base_quick_push, i64 48134}
!53 = !{ptr @fel_init, ptr @loop_outer, i64 16966}
!54 = !{ptr @fel_init, ptr @fel_next, i64 8088}
!55 = !{ptr @canonicalize_loop_induction_variables, ptr @number_of_latch_executions, i64 34366}
!56 = !{ptr @canonicalize_loop_induction_variables, ptr @single_exit, i64 34366}
!57 = !{ptr @canonicalize_loop_induction_variables, ptr @just_once_each_iteration_p, i64 1492}
!58 = !{ptr @canonicalize_loop_induction_variables, ptr @find_loop_niter, i64 13287}
!59 = !{ptr @canonicalize_loop_induction_variables, ptr @chrec_contains_undetermined, i64 46567}
!60 = !{ptr @canonicalize_loop_induction_variables, ptr @find_loop_niter_by_eval, i64 13341}
!61 = !{ptr @canonicalize_loop_induction_variables, ptr @try_unroll_loop_completely, i64 2278}
!62 = !{ptr @canonicalize_loop_induction_variables, ptr @create_canonical_iv, i64 975}
!63 = !{ptr @fel_next, ptr @VEC_int_base_iterate, i64 42456}
!64 = !{ptr @fel_next, ptr @get_loop, i64 34366}
!65 = !{ptr @fel_next, ptr @VEC_int_heap_free, i64 8090}
!66 = !{ptr @VEC_int_heap_alloc, ptr @vec_heap_o_reserve_exact, i64 8089}
!67 = !{ptr @number_of_loops, ptr @VEC_loop_p_base_length, i64 8088}
!68 = !{ptr @loop_outer, ptr @VEC_loop_p_base_length, i64 27061}
!69 = !{ptr @loop_outer, ptr @VEC_loop_p_base_index, i64 20236}
!70 = !{ptr @try_unroll_loop_completely, ptr @host_integerp, i64 1913}
!71 = !{ptr @try_unroll_loop_completely, ptr @tree_low_cst, i64 1912}
!72 = !{ptr @try_unroll_loop_completely, ptr @tree_estimate_loop_size, i64 464}
!73 = !{ptr @try_unroll_loop_completely, ptr @estimated_unrolled_size, i64 464}
!74 = !{ptr @try_unroll_loop_completely, ptr @initialize_original_copy_tables, i64 271}
!75 = !{ptr @try_unroll_loop_completely, ptr @sbitmap_alloc, i64 271}
!76 = !{ptr @try_unroll_loop_completely, ptr @sbitmap_ones, i64 271}
!77 = !{ptr @try_unroll_loop_completely, ptr @RESET_BIT, i64 271}
!78 = !{ptr @try_unroll_loop_completely, ptr @loop_preheader_edge, i64 271}
!79 = !{ptr @try_unroll_loop_completely, ptr @gimple_duplicate_loop_to_header_edge, i64 271}
!80 = !{ptr @try_unroll_loop_completely, ptr @VEC_edge_base_iterate, i64 1614}
!81 = !{ptr @try_unroll_loop_completely, ptr @free_original_copy_tables, i64 271}
!82 = !{ptr @try_unroll_loop_completely, ptr @free, i64 271}
!83 = !{ptr @try_unroll_loop_completely, ptr @remove_path, i64 1344}
!84 = !{ptr @try_unroll_loop_completely, ptr @fancy_abort, i64 1}
!85 = !{ptr @try_unroll_loop_completely, ptr @VEC_edge_heap_free, i64 270}
!86 = !{ptr @try_unroll_loop_completely, ptr @last_stmt, i64 277}
!87 = !{ptr @try_unroll_loop_completely, ptr @gimple_cond_make_true, i64 11}
!88 = !{ptr @try_unroll_loop_completely, ptr @gimple_cond_make_false, i64 266}
!89 = !{ptr @try_unroll_loop_completely, ptr @update_stmt, i64 277}
!90 = !{ptr @try_unroll_loop_completely, ptr @update_ssa, i64 277}
!91 = !{ptr @create_canonical_iv, ptr @last_stmt, i64 975}
!92 = !{ptr @create_canonical_iv, ptr @VEC_edge_base_index, i64 986}
!93 = !{ptr @create_canonical_iv, ptr @build_int_cst, i64 2925}
!94 = !{ptr @create_canonical_iv, ptr @fold_build2_stat_loc, i64 975}
!95 = !{ptr @create_canonical_iv, ptr @gsi_last_bb, i64 975}
!96 = !{ptr @create_canonical_iv, ptr @create_iv, i64 975}
!97 = !{ptr @create_canonical_iv, ptr @gimple_cond_set_code, i64 975}
!98 = !{ptr @create_canonical_iv, ptr @gimple_cond_set_lhs, i64 975}
!99 = !{ptr @create_canonical_iv, ptr @gimple_cond_set_rhs, i64 975}
!100 = !{ptr @create_canonical_iv, ptr @update_stmt, i64 975}
!101 = !{ptr @tree_estimate_loop_size, ptr @get_loop_body, i64 465}
!102 = !{ptr @tree_estimate_loop_size, ptr @dominated_by_p, i64 1190}
!103 = !{ptr @tree_estimate_loop_size, ptr @gsi_start_bb, i64 1655}
!104 = !{ptr @tree_estimate_loop_size, ptr @gsi_end_p, i64 6516}
!105 = !{ptr @tree_estimate_loop_size, ptr @gsi_stmt, i64 4861}
!106 = !{ptr @tree_estimate_loop_size, ptr @estimate_num_insns, i64 4861}
!107 = !{ptr @tree_estimate_loop_size, ptr @last_stmt, i64 1404}
!108 = !{ptr @tree_estimate_loop_size, ptr @gimple_code, i64 11565}
!109 = !{ptr @tree_estimate_loop_size, ptr @gimple_assign_lhs, i64 6620}
!110 = !{ptr @tree_estimate_loop_size, ptr @constant_after_peeling, i64 6770}
!111 = !{ptr @tree_estimate_loop_size, ptr @gimple_assign_rhs1, i64 2511}
!112 = !{ptr @tree_estimate_loop_size, ptr @gimple_assign_rhs_class, i64 142}
!113 = !{ptr @tree_estimate_loop_size, ptr @gimple_assign_rhs2, i64 61}
!114 = !{ptr @tree_estimate_loop_size, ptr @gimple_cond_lhs, i64 498}
!115 = !{ptr @tree_estimate_loop_size, ptr @gimple_cond_rhs, i64 10}
!116 = !{ptr @tree_estimate_loop_size, ptr @gsi_next, i64 4861}
!117 = !{ptr @tree_estimate_loop_size, ptr @free, i64 465}
!118 = !{ptr @VEC_edge_heap_free, ptr @free, i64 271}
!119 = !{ptr @gimple_cond_make_true, ptr @gimple_cond_set_lhs, i64 10}
!120 = !{ptr @gimple_cond_make_true, ptr @gimple_cond_set_rhs, i64 10}
!121 = !{ptr @gimple_cond_make_false, ptr @gimple_cond_set_lhs, i64 268}
!122 = !{ptr @gimple_cond_make_false, ptr @gimple_cond_set_rhs, i64 268}
!123 = !{ptr @update_stmt, ptr @gimple_has_ops, i64 1253}
!124 = !{ptr @update_stmt, ptr @gimple_set_modified, i64 1252}
!125 = !{ptr @update_stmt, ptr @update_stmt_operands, i64 1252}
!126 = !{ptr @constant_after_peeling, ptr @is_gimple_min_invariant, i64 9481}
!127 = !{ptr @constant_after_peeling, ptr @handled_component_p, i64 3498}
!128 = !{ptr @constant_after_peeling, ptr @constant_after_peeling, i64 144}
!129 = !{ptr @constant_after_peeling, ptr @loop_containing_stmt, i64 5386}
!130 = !{ptr @constant_after_peeling, ptr @simple_iv, i64 5386}
!131 = !{ptr @gimple_assign_lhs, ptr @gimple_op, i64 6635}
!132 = !{ptr @gimple_assign_rhs1, ptr @gimple_op, i64 2598}
!133 = !{ptr @gimple_assign_rhs_class, ptr @gimple_assign_rhs_code, i64 141}
!134 = !{ptr @gimple_assign_rhs_class, ptr @get_gimple_rhs_class, i64 141}
!135 = !{ptr @gimple_assign_rhs2, ptr @gimple_num_ops, i64 61}
!136 = !{ptr @gimple_assign_rhs2, ptr @gimple_op, i64 60}
!137 = !{ptr @gimple_cond_lhs, ptr @gimple_op, i64 498}
!138 = !{ptr @gimple_cond_rhs, ptr @gimple_op, i64 9}
!139 = !{ptr @loop_containing_stmt, ptr @gimple_bb, i64 5387}
!140 = !{ptr @gimple_op, ptr @gimple_has_ops, i64 9801}
!141 = !{ptr @gimple_op, ptr @gimple_ops, i64 9800}
!142 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 13560}
!143 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 12307}
!144 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!145 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 12307}
!146 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 12307}
!147 = !{ptr @gimple_assign_rhs_code, ptr @gimple_expr_code, i64 141}
!148 = !{ptr @gimple_assign_rhs_code, ptr @get_gimple_rhs_class, i64 141}
!149 = !{ptr @gimple_assign_rhs_code, ptr @gimple_assign_rhs1, i64 80}
!150 = !{ptr @gimple_expr_code, ptr @gimple_code, i64 141}
!151 = !{ptr @gimple_cond_set_lhs, ptr @gimple_set_op, i64 1253}
!152 = !{ptr @gimple_cond_set_rhs, ptr @gimple_set_op, i64 1253}
!153 = !{ptr @gimple_set_op, ptr @gimple_has_ops, i64 2506}
!154 = !{ptr @gimple_set_op, ptr @gimple_num_ops, i64 2505}
!155 = !{ptr @gimple_set_op, ptr @fancy_abort, i64 2}
!156 = !{ptr @gimple_set_op, ptr @gimple_ops, i64 2506}
!157 = !{ptr @gsi_last_bb, ptr @bb_seq, i64 975}
!158 = !{ptr @gsi_last_bb, ptr @gimple_seq_last, i64 975}
!159 = !{ptr @get_loop, ptr @VEC_loop_p_base_index, i64 34366}
!160 = !{ptr @VEC_int_heap_free, ptr @free, i64 8088}
!161 = !{ptr @tree_unroll_loops_completely, ptr @fel_init, i64 5273}
!162 = !{ptr @tree_unroll_loops_completely, ptr @optimize_loop_for_speed_p, i64 19356}
!163 = !{ptr @tree_unroll_loops_completely, ptr @loop_outer, i64 16410}
!164 = !{ptr @tree_unroll_loops_completely, ptr @canonicalize_loop_induction_variables, i64 19357}
!165 = !{ptr @tree_unroll_loops_completely, ptr @fel_next, i64 19357}
!166 = !{ptr @tree_unroll_loops_completely, ptr @cleanup_tree_cfg, i64 190}
!167 = !{ptr @tree_unroll_loops_completely, ptr @update_ssa, i64 189}
!168 = !{ptr @tree_unroll_loops_completely, ptr @scev_reset, i64 190}
!169 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!170 = !{!"function_entry_count", i64 8558}
!171 = !{!172, !173, i64 36}
!172 = !{!"loop", !173, i64 0, !173, i64 4, !176, i64 8, !176, i64 16, !177, i64 24, !173, i64 32, !173, i64 36, !176, i64 40, !176, i64 48, !176, i64 56, !176, i64 64, !176, i64 72, !178, i64 80, !178, i64 96, !174, i64 112, !174, i64 113, !173, i64 116, !176, i64 120, !176, i64 128, !174, i64 136, !176, i64 144}
!173 = !{!"int", !174, i64 0}
!174 = !{!"omnipotent char", !175, i64 0}
!175 = !{!"Simple C/C++ TBAA"}
!176 = !{!"any pointer", !174, i64 0}
!177 = !{!"lpt_decision", !173, i64 0, !173, i64 4}
!178 = !{!"", !179, i64 0, !179, i64 8}
!179 = !{!"long", !174, i64 0}
!180 = !{!"branch_weights", i32 1, i32 8558}
!181 = !{!176, !176, i64 0}
!182 = !{i8 0, i8 2}
!183 = !{!"branch_weights", i32 47252, i32 1}
!184 = !{!"branch_weights", i32 71275, i32 47252}
!185 = distinct !{!185, !186}
!186 = !{!"llvm.loop.mustprogress"}
!187 = !{!"branch_weights", i32 38695, i32 8558}
!188 = distinct !{!188, !186}
!189 = !{!"function_entry_count", i64 48910}
!190 = !{!"tree-ssa-loop-ivcanon.c:gsi_start_bb"}
!191 = !{!192, !176, i64 0}
!192 = !{!"", !176, i64 0, !176, i64 8, !176, i64 16}
!193 = !{!192, !176, i64 8}
!194 = !{!192, !176, i64 16}
!195 = !{!"function_entry_count", i64 172306}
!196 = !{!"tree-ssa-loop-ivcanon.c:gsi_end_p"}
!197 = !{!"function_entry_count", i64 123396}
!198 = !{!"tree-ssa-loop-ivcanon.c:gsi_stmt"}
!199 = !{!200, !176, i64 0}
!200 = !{!"gimple_seq_node_d", !176, i64 0, !176, i64 8, !176, i64 16}
!201 = !{!"tree-ssa-loop-ivcanon.c:gsi_next"}
!202 = !{!200, !176, i64 16}
!203 = !{!"function_entry_count", i64 49885}
!204 = !{!"tree-ssa-loop-ivcanon.c:bb_seq"}
!205 = !{!206, !173, i64 96}
!206 = !{!"basic_block_def", !176, i64 0, !176, i64 8, !176, i64 16, !176, i64 24, !174, i64 32, !176, i64 48, !176, i64 56, !174, i64 64, !179, i64 72, !173, i64 80, !173, i64 84, !173, i64 88, !173, i64 92, !173, i64 96}
!207 = !{!"branch_weights", i32 49886, i32 1}
!208 = !{!174, !174, i64 0}
!209 = !{!"branch_weights", i32 1, i32 49886}
!210 = !{!211, !176, i64 0}
!211 = !{!"gimple_bb_info", !176, i64 0, !176, i64 8}
!212 = !{!"tree-ssa-loop-ivcanon.c:gimple_seq_first"}
!213 = !{!"branch_weights", i32 1, i32 48911}
!214 = !{!215, !176, i64 0}
!215 = !{!"gimple_seq_d", !176, i64 0, !176, i64 8, !176, i64 16}
!216 = !{!"function_entry_count", i64 2627}
!217 = !{!"branch_weights", i32 1, i32 2627}
!218 = !{!"branch_weights", i32 2627, i32 11686}
!219 = distinct !{!219, !186}
!220 = !{!"branch_weights", i32 2627, i32 2}
!221 = !{!"function_entry_count", i64 8089}
!222 = !{!"tree-ssa-loop-ivcanon.c:fel_init"}
!223 = !{!224, !173, i64 8}
!224 = !{!"", !176, i64 0, !173, i64 8}
!225 = !{!226, !176, i64 32}
!226 = !{!"function", !176, i64 0, !176, i64 8, !176, i64 16, !176, i64 24, !176, i64 32, !176, i64 40, !176, i64 48, !176, i64 56, !176, i64 64, !176, i64 72, !176, i64 80, !176, i64 88, !176, i64 96, !173, i64 104, !173, i64 108, !173, i64 112, !173, i64 116, !173, i64 120, !173, i64 124, !176, i64 128, !173, i64 136, !173, i64 137, !173, i64 138, !173, i64 138, !173, i64 138, !173, i64 138, !173, i64 138, !173, i64 138, !173, i64 138, !173, i64 139, !173, i64 139, !173, i64 139, !173, i64 139, !173, i64 139, !173, i64 139, !173, i64 139}
!227 = !{!"branch_weights", i32 1, i32 8090}
!228 = !{!224, !176, i64 0}
!229 = !{!"branch_weights", i32 2628, i32 5463}
!230 = !{!231, !176, i64 8}
!231 = !{!"loops", !173, i64 0, !176, i64 8, !176, i64 16, !176, i64 24}
!232 = !{i32 0, i32 2}
!233 = !{!"branch_weights", i32 1, i32 5462}
!234 = !{!"branch_weights", i32 435, i32 35711}
!235 = !{!172, !176, i64 48}
!236 = !{!"branch_weights", i32 20129, i32 15583}
!237 = !{!172, !173, i64 0}
!238 = !{!"branch_weights", i32 75, i32 20055}
!239 = !{!"branch_weights", i32 5462, i32 30683}
!240 = distinct !{!240, !186}
!241 = !{!231, !176, i64 24}
!242 = !{!"branch_weights", i32 2628, i32 1}
!243 = distinct !{!243, !186}
!244 = !{!172, !176, i64 56}
!245 = distinct !{!245, !186}
!246 = !{!"branch_weights", i32 2628, i32 14313}
!247 = !{!"branch_weights", i32 9508, i32 7433}
!248 = !{!"branch_weights", i32 10060, i32 9508}
!249 = !{!"branch_weights", i32 2627, i32 14313}
!250 = distinct !{!250, !186}
!251 = !{!"function_entry_count", i64 34366}
!252 = !{!"tree-ssa-loop-ivcanon.c:canonicalize_loop_induction_variables"}
!253 = !{!"branch_weights", i32 1492, i32 32876}
!254 = !{!255, !176, i64 0}
!255 = !{!"edge_def", !176, i64 0, !176, i64 8, !174, i64 16, !176, i64 24, !176, i64 32, !173, i64 40, !173, i64 44, !173, i64 48, !173, i64 52, !179, i64 56}
!256 = !{!"branch_weights", i32 1, i32 1492}
!257 = !{!"branch_weights", i32 13288, i32 19589}
!258 = !{!"branch_weights", i32 19183, i32 13694}
!259 = !{!"branch_weights", i32 3070, i32 10625}
!260 = !{!"branch_weights", i32 352, i32 2719}
!261 = !{!"branch_weights", i32 3148, i32 29729}
!262 = !{!"branch_weights", i32 787, i32 2362}
!263 = !{!"branch_weights", i32 2278, i32 1}
!264 = !{!173, !173, i64 0}
!265 = !{!"branch_weights", i32 2000, i32 279}
!266 = !{!"branch_weights", i32 1025, i32 976}
!267 = !{!"function_entry_count", i64 42455}
!268 = !{!"tree-ssa-loop-ivcanon.c:fel_next"}
!269 = !{!"branch_weights", i32 8090, i32 34367}
!270 = !{!"branch_weights", i32 1, i32 34367}
!271 = distinct !{!271, !186}
!272 = !{!"tree-ssa-loop-ivcanon.c:VEC_int_heap_alloc"}
!273 = !{!"tree-ssa-loop-ivcanon.c:number_of_loops"}
!274 = !{!"function_entry_count", i64 41606}
!275 = !{!"tree-ssa-loop-ivcanon.c:VEC_loop_p_base_iterate"}
!276 = !{!"branch_weights", i32 1, i32 41607}
!277 = !{!278, !173, i64 0}
!278 = !{!"VEC_loop_p_base", !173, i64 0, !173, i64 4, !174, i64 8}
!279 = !{!"branch_weights", i32 36145, i32 5463}
!280 = !{!"tree-ssa-loop-ivcanon.c:VEC_int_base_quick_push"}
!281 = !{!282, !173, i64 0}
!282 = !{!"VEC_int_base", !173, i64 0, !173, i64 4, !174, i64 8}
!283 = !{!"function_entry_count", i64 27061}
!284 = !{!"tree-ssa-loop-ivcanon.c:loop_outer"}
!285 = !{!172, !176, i64 40}
!286 = !{!"branch_weights", i32 6826, i32 20237}
!287 = !{!"function_entry_count", i64 35150}
!288 = !{!"tree-ssa-loop-ivcanon.c:VEC_loop_p_base_length"}
!289 = !{!"branch_weights", i32 6826, i32 28326}
!290 = !{!"function_entry_count", i64 54602}
!291 = !{!"tree-ssa-loop-ivcanon.c:VEC_loop_p_base_index"}
!292 = !{!"function_entry_count", i64 2277}
!293 = !{!"tree-ssa-loop-ivcanon.c:try_unroll_loop_completely"}
!294 = !{!"branch_weights", i32 1915, i32 364}
!295 = !{!"branch_weights", i32 1, i32 1915}
!296 = !{!297, !173, i64 8}
!297 = !{!"param_info", !176, i64 0, !173, i64 8, !174, i64 12, !173, i64 16, !173, i64 20, !176, i64 24}
!298 = !{!"branch_weights", i32 1240, i32 676}
!299 = !{!"branch_weights", i32 7, i32 670}
!300 = !{!"branch_weights", i32 205, i32 466}
!301 = !{!302, !173, i64 0}
!302 = !{!"loop_size", !173, i64 0, !173, i64 4, !173, i64 8, !173, i64 12}
!303 = !{i64 1, i64 3074457345618258603}
!304 = !{!"branch_weights", i32 466, i32 1}
!305 = !{!"branch_weights", i32 407, i32 60}
!306 = !{!"branch_weights", i32 3, i32 405}
!307 = !{!"branch_weights", i32 3, i32 1}
!308 = !{!"branch_weights", i32 1013696045, i32 1133787603}
!309 = !{!"branch_weights", i32 192, i32 1}
!310 = !{!"branch_weights", i32 1, i32 273}
!311 = !{!"branch_weights", i32 1, i32 272}
!312 = !{!"branch_weights", i32 1, i32 1357}
!313 = !{!"branch_weights", i32 272, i32 1085}
!314 = distinct !{!314, !186}
!315 = !{!255, !173, i64 48}
!316 = !{!"branch_weights", i32 269, i32 11}
!317 = !{!"branch_weights", i32 279, i32 1}
!318 = !{!"function_entry_count", i64 975}
!319 = !{!"tree-ssa-loop-ivcanon.c:create_canonical_iv"}
!320 = !{!"branch_weights", i32 976, i32 1}
!321 = !{!206, !176, i64 8}
!322 = !{!"branch_weights", i32 11, i32 966}
!323 = !{!"function_entry_count", i64 465}
!324 = !{!"tree-ssa-loop-ivcanon.c:tree_estimate_loop_size"}
!325 = !{!"branch_weights", i32 1, i32 465}
!326 = !{!"branch_weights", i32 1, i32 1659}
!327 = !{!"branch_weights", i32 466, i32 1194}
!328 = !{!"branch_weights", i32 279, i32 916}
!329 = !{!"branch_weights", i32 1659, i32 1}
!330 = !{!206, !173, i64 80}
!331 = !{!"branch_weights", i32 1658, i32 1}
!332 = !{!"branch_weights", i32 4871, i32 1}
!333 = !{!"branch_weights", i32 1407, i32 3465}
!334 = !{!"branch_weights", i32 466, i32 942}
!335 = !{!"branch_weights", i32 1558600612, i32 588883036}
!336 = !{i32 0, i32 256}
!337 = !{!"branch_weights", i32 3699, i32 708}
!338 = !{!"branch_weights", i32 2938, i32 762}
!339 = !{!"branch_weights", i32 762, i32 1}
!340 = !{!"branch_weights", i32 2938, i32 708}
!341 = !{!"branch_weights", i32 2519, i32 420}
!342 = !{!"branch_weights", i32 2378, i32 142}
!343 = !{!"branch_weights", i32 62, i32 81}
!344 = !{!"branch_weights", i32 39, i32 24}
!345 = !{!"branch_weights", i32 104, i32 1}
!346 = !{!"branch_weights", i32 499, i32 3044}
!347 = !{!"branch_weights", i32 490, i32 10}
!348 = !{!"branch_weights", i32 4, i32 7}
!349 = !{!"branch_weights", i32 7, i32 1}
!350 = !{!"branch_weights", i32 2220, i32 2652}
!351 = !{!302, !173, i64 8}
!352 = !{!"branch_weights", i32 3213, i32 1658}
!353 = distinct !{!353, !186}
!354 = !{!"branch_weights", i32 1194, i32 465}
!355 = distinct !{!355, !186}
!356 = !{!302, !173, i64 4}
!357 = !{!302, !173, i64 12}
!358 = !{!"tree-ssa-loop-ivcanon.c:estimated_unrolled_size"}
!359 = !{!"branch_weights", i32 1, i32 466}
!360 = !{!"function_entry_count", i64 272}
!361 = !{!"tree-ssa-loop-ivcanon.c:RESET_BIT"}
!362 = !{!363, !176, i64 0}
!363 = !{!"simple_bitmap_def", !176, i64 0, !173, i64 8, !173, i64 12, !174, i64 16}
!364 = !{!"branch_weights", i32 273, i32 1}
!365 = !{!179, !179, i64 0}
!366 = !{!"function_entry_count", i64 1628}
!367 = !{!"tree-ssa-loop-ivcanon.c:VEC_edge_base_iterate"}
!368 = !{!"branch_weights", i32 1, i32 1629}
!369 = !{!370, !173, i64 0}
!370 = !{!"VEC_edge_base", !173, i64 0, !173, i64 4, !174, i64 8}
!371 = !{!"branch_weights", i32 1357, i32 273}
!372 = !{!"tree-ssa-loop-ivcanon.c:VEC_edge_heap_free"}
!373 = !{!"function_entry_count", i64 10}
!374 = !{!"tree-ssa-loop-ivcanon.c:gimple_cond_make_true"}
!375 = !{!"function_entry_count", i64 268}
!376 = !{!"tree-ssa-loop-ivcanon.c:gimple_cond_make_false"}
!377 = !{!"function_entry_count", i64 1253}
!378 = !{!"tree-ssa-loop-ivcanon.c:update_stmt"}
!379 = !{!"branch_weights", i32 1, i32 1254}
!380 = !{!"function_entry_count", i64 51158}
!381 = !{!"tree-ssa-loop-ivcanon.c:gimple_code"}
!382 = !{!"function_entry_count", i64 6906}
!383 = !{!"tree-ssa-loop-ivcanon.c:constant_after_peeling"}
!384 = !{!"branch_weights", i32 6854, i32 54}
!385 = !{!"branch_weights", i32 5388, i32 1467}
!386 = !{!"branch_weights", i32 1, i32 1466}
!387 = !{!"branch_weights", i32 1466, i32 282}
!388 = distinct !{!388, !186}
!389 = !{!"branch_weights", i32 309860798, i32 19904850}
!390 = !{!"branch_weights", i32 1, i32 89}
!391 = !{!392, !176, i64 1112}
!392 = !{!"gcc_target", !393, i64 0, !395, i64 368, !396, i64 664, !173, i64 744, !176, i64 752, !176, i64 760, !176, i64 768, !176, i64 776, !176, i64 784, !176, i64 792, !176, i64 800, !176, i64 808, !176, i64 816, !176, i64 824, !176, i64 832, !176, i64 840, !176, i64 848, !176, i64 856, !176, i64 864, !176, i64 872, !176, i64 880, !176, i64 888, !176, i64 896, !176, i64 904, !176, i64 912, !176, i64 920, !176, i64 928, !176, i64 936, !176, i64 944, !176, i64 952, !176, i64 960, !176, i64 968, !176, i64 976, !176, i64 984, !176, i64 992, !176, i64 1000, !176, i64 1008, !176, i64 1016, !176, i64 1024, !176, i64 1032, !176, i64 1040, !176, i64 1048, !176, i64 1056, !179, i64 1064, !179, i64 1072, !176, i64 1080, !176, i64 1088, !176, i64 1096, !176, i64 1104, !176, i64 1112, !176, i64 1120, !176, i64 1128, !176, i64 1136, !176, i64 1144, !176, i64 1152, !176, i64 1160, !176, i64 1168, !397, i64 1176, !176, i64 1232, !176, i64 1240, !176, i64 1248, !176, i64 1256, !176, i64 1264, !176, i64 1272, !176, i64 1280, !176, i64 1288, !176, i64 1296, !176, i64 1304, !176, i64 1312, !176, i64 1320, !176, i64 1328, !176, i64 1336, !176, i64 1344, !176, i64 1352, !176, i64 1360, !176, i64 1368, !176, i64 1376, !176, i64 1384, !176, i64 1392, !176, i64 1400, !176, i64 1408, !176, i64 1416, !176, i64 1424, !176, i64 1432, !176, i64 1440, !176, i64 1448, !176, i64 1456, !179, i64 1464, !398, i64 1472, !176, i64 1664, !176, i64 1672, !176, i64 1680, !176, i64 1688, !176, i64 1696, !176, i64 1704, !176, i64 1712, !176, i64 1720, !176, i64 1728, !176, i64 1736, !176, i64 1744, !176, i64 1752, !176, i64 1760, !176, i64 1768, !176, i64 1776, !399, i64 1784, !400, i64 1792, !401, i64 1896, !402, i64 1968, !176, i64 2016, !174, i64 2024, !174, i64 2025, !174, i64 2026, !174, i64 2027, !174, i64 2028, !174, i64 2029, !174, i64 2030, !174, i64 2031, !174, i64 2032, !174, i64 2033, !174, i64 2034, !174, i64 2035}
!393 = !{!"asm_out", !176, i64 0, !176, i64 8, !176, i64 16, !394, i64 24, !394, i64 56, !176, i64 88, !176, i64 96, !176, i64 104, !176, i64 112, !176, i64 120, !176, i64 128, !176, i64 136, !176, i64 144, !176, i64 152, !176, i64 160, !176, i64 168, !176, i64 176, !176, i64 184, !176, i64 192, !176, i64 200, !176, i64 208, !176, i64 216, !176, i64 224, !176, i64 232, !176, i64 240, !176, i64 248, !176, i64 256, !176, i64 264, !176, i64 272, !176, i64 280, !176, i64 288, !176, i64 296, !176, i64 304, !176, i64 312, !176, i64 320, !176, i64 328, !176, i64 336, !176, i64 344, !176, i64 352, !176, i64 360}
!394 = !{!"asm_int_op", !176, i64 0, !176, i64 8, !176, i64 16, !176, i64 24}
!395 = !{!"sched", !176, i64 0, !176, i64 8, !176, i64 16, !176, i64 24, !176, i64 32, !176, i64 40, !176, i64 48, !176, i64 56, !176, i64 64, !176, i64 72, !176, i64 80, !176, i64 88, !176, i64 96, !176, i64 104, !176, i64 112, !176, i64 120, !176, i64 128, !176, i64 136, !176, i64 144, !176, i64 152, !176, i64 160, !176, i64 168, !176, i64 176, !176, i64 184, !176, i64 192, !176, i64 200, !176, i64 208, !176, i64 216, !176, i64 224, !176, i64 232, !176, i64 240, !176, i64 248, !176, i64 256, !176, i64 264, !176, i64 272, !176, i64 280, !176, i64 288}
!396 = !{!"vectorize", !176, i64 0, !176, i64 8, !176, i64 16, !176, i64 24, !176, i64 32, !176, i64 40, !176, i64 48, !176, i64 56, !176, i64 64, !176, i64 72}
!397 = !{!"addr_space", !176, i64 0, !176, i64 8, !176, i64 16, !176, i64 24, !176, i64 32, !176, i64 40, !176, i64 48}
!398 = !{!"calls", !176, i64 0, !176, i64 8, !176, i64 16, !176, i64 24, !176, i64 32, !176, i64 40, !176, i64 48, !176, i64 56, !176, i64 64, !176, i64 72, !176, i64 80, !176, i64 88, !176, i64 96, !176, i64 104, !176, i64 112, !176, i64 120, !176, i64 128, !176, i64 136, !176, i64 144, !176, i64 152, !176, i64 160, !176, i64 168, !176, i64 176, !176, i64 184}
!399 = !{!"c", !176, i64 0}
!400 = !{!"cxx", !176, i64 0, !176, i64 8, !176, i64 16, !176, i64 24, !176, i64 32, !176, i64 40, !176, i64 48, !176, i64 56, !176, i64 64, !176, i64 72, !176, i64 80, !176, i64 88, !176, i64 96}
!401 = !{!"emutls", !176, i64 0, !176, i64 8, !176, i64 16, !176, i64 24, !176, i64 32, !176, i64 40, !176, i64 48, !176, i64 56, !174, i64 64, !174, i64 65}
!402 = !{!"target_option_hooks", !176, i64 0, !176, i64 8, !176, i64 16, !176, i64 24, !176, i64 32, !176, i64 40}
!403 = !{!"branch_weights", i32 54484599, i32 2092999049}
!404 = !{!"branch_weights", i32 1, i32 161}
!405 = !{!"branch_weights", i32 123, i32 58}
!406 = !{!"branch_weights", i32 43, i32 81}
!407 = !{!"branch_weights", i32 161, i32 199}
!408 = distinct !{!408, !186}
!409 = !{!"branch_weights", i32 3700, i32 1689}
!410 = !{!411, !176, i64 0}
!411 = !{!"", !176, i64 0, !176, i64 8, !174, i64 16}
!412 = !{!"branch_weights", i32 802, i32 888}
!413 = !{!411, !176, i64 8}
!414 = !{!"function_entry_count", i64 6635}
!415 = !{!"tree-ssa-loop-ivcanon.c:gimple_assign_lhs"}
!416 = !{!"function_entry_count", i64 2598}
!417 = !{!"tree-ssa-loop-ivcanon.c:gimple_assign_rhs1"}
!418 = !{!"function_entry_count", i64 141}
!419 = !{!"tree-ssa-loop-ivcanon.c:gimple_assign_rhs_class"}
!420 = !{i32 0, i32 65536}
!421 = !{!"function_entry_count", i64 61}
!422 = !{!"tree-ssa-loop-ivcanon.c:gimple_assign_rhs2"}
!423 = !{!"branch_weights", i32 62, i32 1}
!424 = !{!"function_entry_count", i64 498}
!425 = !{!"tree-ssa-loop-ivcanon.c:gimple_cond_lhs"}
!426 = !{!"function_entry_count", i64 9}
!427 = !{!"tree-ssa-loop-ivcanon.c:gimple_cond_rhs"}
!428 = !{!"function_entry_count", i64 3472}
!429 = !{!"tree-ssa-loop-ivcanon.c:handled_component_p"}
!430 = !{!"branch_weights", i32 1547, i32 5, i32 988, i32 930, i32 1, i32 7, i32 1, i32 1}
!431 = !{!"function_entry_count", i64 5387}
!432 = !{!"tree-ssa-loop-ivcanon.c:loop_containing_stmt"}
!433 = !{!"branch_weights", i32 1, i32 5388}
!434 = !{!206, !176, i64 24}
!435 = !{!"tree-ssa-loop-ivcanon.c:gimple_bb"}
!436 = !{!"function_entry_count", i64 9801}
!437 = !{!"tree-ssa-loop-ivcanon.c:gimple_op"}
!438 = !{!"branch_weights", i32 1, i32 9802}
!439 = !{!"function_entry_count", i64 13560}
!440 = !{!"tree-ssa-loop-ivcanon.c:gimple_has_ops"}
!441 = !{!"function_entry_count", i64 12307}
!442 = !{!"tree-ssa-loop-ivcanon.c:gimple_ops"}
!443 = !{!"branch_weights", i32 1, i32 12308}
!444 = !{!"tree-ssa-loop-ivcanon.c:gimple_statement_structure"}
!445 = !{!"tree-ssa-loop-ivcanon.c:gss_for_code"}
!446 = !{!"function_entry_count", i64 282}
!447 = !{!"tree-ssa-loop-ivcanon.c:get_gimple_rhs_class"}
!448 = !{!"tree-ssa-loop-ivcanon.c:gimple_assign_rhs_code"}
!449 = !{!"branch_weights", i32 81, i32 62}
!450 = !{!"tree-ssa-loop-ivcanon.c:gimple_expr_code"}
!451 = !{!"branch_weights", i32 1, i32 568, i32 2, i32 1}
!452 = !{!"function_entry_count", i64 2567}
!453 = !{!"tree-ssa-loop-ivcanon.c:gimple_num_ops"}
!454 = !{!"tree-ssa-loop-ivcanon.c:gimple_cond_set_lhs"}
!455 = !{!"tree-ssa-loop-ivcanon.c:gimple_cond_set_rhs"}
!456 = !{!"function_entry_count", i64 2506}
!457 = !{!"tree-ssa-loop-ivcanon.c:gimple_set_op"}
!458 = !{!"branch_weights", i32 1, i32 2507}
!459 = !{!"branch_weights", i32 2507, i32 1}
!460 = !{!"function_entry_count", i64 985}
!461 = !{!"tree-ssa-loop-ivcanon.c:VEC_edge_base_index"}
!462 = !{!"tree-ssa-loop-ivcanon.c:gsi_last_bb"}
!463 = !{!"tree-ssa-loop-ivcanon.c:gimple_cond_set_code"}
!464 = !{!"tree-ssa-loop-ivcanon.c:gimple_seq_last"}
!465 = !{!"branch_weights", i32 1, i32 976}
!466 = !{!215, !176, i64 8}
!467 = !{!"tree-ssa-loop-ivcanon.c:VEC_int_base_iterate"}
!468 = !{!"branch_weights", i32 1, i32 42456}
!469 = !{!"branch_weights", i32 34367, i32 8090}
!470 = !{!"tree-ssa-loop-ivcanon.c:get_loop"}
!471 = !{!"tree-ssa-loop-ivcanon.c:VEC_int_heap_free"}
!472 = !{!"function_entry_count", i64 5266}
!473 = !{!"branch_weights", i32 1, i32 20055}
!474 = !{!"branch_weights", i32 2874, i32 17182}
!475 = !{!"branch_weights", i32 8502, i32 8681}
!476 = !{!"branch_weights", i32 4199, i32 4304}
!477 = !{!"branch_weights", i32 5462, i32 14593}
!478 = distinct !{!478, !186}
!479 = !{!"branch_weights", i32 2070043727, i32 77439921}
!480 = !{!"branch_weights", i32 1, i32 197}
!481 = !{!"branch_weights", i32 197, i32 5267}
!482 = distinct !{!482, !186}
