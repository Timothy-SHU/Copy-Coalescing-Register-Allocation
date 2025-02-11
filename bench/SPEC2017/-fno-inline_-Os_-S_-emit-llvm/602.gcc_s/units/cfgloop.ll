; ModuleID = 'cfgloop.c'
source_filename = "cfgloop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.edge_iterator = type { i32, ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.loop_iterator = type { ptr, i32 }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.loop_exit = type { ptr, ptr, ptr, ptr }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }

@.str = private unnamed_addr constant [10 x i8] c"cfgloop.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c";;\0A;; Loop %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c";;  header %d, \00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"latch %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"multiple latches:\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c";;  depth %d, outer %ld\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c";;  nodes:\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@.str.11 = private unnamed_addr constant [19 x i8] c";; %d loops found\0A\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c";; %d succs { \00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.15 = private unnamed_addr constant [46 x i8] c"Disambiguating loop %d with multiple latches\0A\00", align 1
@.str.16 = private unnamed_addr constant [54 x i8] c"Found latch edge %d -> %d using profile information.\0A\00", align 1
@.str.17 = private unnamed_addr constant [47 x i8] c"Found latch edge %d -> %d using iv structure.\0A\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@mfb_reis_set = internal unnamed_addr global ptr null, align 8
@.str.19 = private unnamed_addr constant [31 x i8] c"Merged latch edges of loop %d\0A\00", align 1
@htab_hash_pointer = external local_unnamed_addr global ptr, align 8
@.str.20 = private unnamed_addr constant [28 x i8] c"Edge %d->%d exits %u loops\0A\00", align 1
@.str.21 = private unnamed_addr constant [37 x i8] c"size of loop %d should be %d, not %d\00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"bb %d do not belong to loop %d\00", align 1
@.str.23 = private unnamed_addr constant [49 x i8] c"loop %d's header does not have exactly 2 entries\00", align 1
@.str.24 = private unnamed_addr constant [50 x i8] c"loop %d's latch does not have exactly 1 successor\00", align 1
@.str.25 = private unnamed_addr constant [50 x i8] c"loop %d's latch does not have header as successor\00", align 1
@.str.26 = private unnamed_addr constant [47 x i8] c"loop %d's latch does not belong directly to it\00", align 1
@.str.27 = private unnamed_addr constant [48 x i8] c"loop %d's header does not belong directly to it\00", align 1
@.str.28 = private unnamed_addr constant [56 x i8] c"loop %d's latch is marked as part of irreducible region\00", align 1
@.str.29 = private unnamed_addr constant [44 x i8] c"basic block %d should be marked irreducible\00", align 1
@.str.30 = private unnamed_addr constant [48 x i8] c"basic block %d should not be marked irreducible\00", align 1
@.str.31 = private unnamed_addr constant [48 x i8] c"edge from %d to %d should be marked irreducible\00", align 1
@.str.32 = private unnamed_addr constant [52 x i8] c"edge from %d to %d should not be marked irreducible\00", align 1
@.str.33 = private unnamed_addr constant [44 x i8] c"corrupted head of the exits list of loop %d\00", align 1
@.str.34 = private unnamed_addr constant [32 x i8] c"corrupted exits list of loop %d\00", align 1
@.str.35 = private unnamed_addr constant [59 x i8] c"nonempty exits list of loop %d, but exits are not recorded\00", align 1
@.str.36 = private unnamed_addr constant [25 x i8] c"Exit %d->%d not recorded\00", align 1
@.str.37 = private unnamed_addr constant [44 x i8] c"Wrong list of exited loops for edge  %d->%d\00", align 1
@.str.38 = private unnamed_addr constant [29 x i8] c"Too many loop exits recorded\00", align 1
@.str.39 = private unnamed_addr constant [48 x i8] c"%d exits recorded for loop %d (having %d exits)\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @flow_loop_nested_p(ptr noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @loop_depth(ptr noundef %0) #19
  %4 = tail call fastcc i32 @loop_depth(ptr noundef %1) #19
  %5 = icmp ugt i32 %4, %3
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  %9 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %8, i32 noundef %3) #19
  %10 = icmp eq ptr %9, %0
  %11 = zext i1 %10 to i8
  br label %12

12:                                               ; preds = %6, %2
  %13 = phi i8 [ 0, %2 ], [ %11, %6 ]
  ret i8 %13
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @loop_depth(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #19
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_loop_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !15
  ret ptr %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_loop_p_base_length(ptr noundef readonly %0) unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !16
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @superloop_at_depth(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = tail call fastcc i32 @loop_depth(ptr noundef %0) #19
  %4 = icmp ult i32 %3, %1
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 82, ptr noundef nonnull @.str.1) #20
  br label %6

6:                                                ; preds = %2, %5
  %7 = icmp eq i32 %3, %1
  br i1 %7, label %12, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !6
  %11 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %10, i32 noundef %1) #19
  br label %12

12:                                               ; preds = %6, %8
  %13 = phi ptr [ %11, %8 ], [ %0, %6 ]
  ret ptr %13
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @flow_loop_dump(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, i32 noundef %3) local_unnamed_addr #3 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  %7 = icmp eq ptr %0, null
  br i1 %7, label %73, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !18
  %11 = icmp eq ptr %10, null
  br i1 %11, label %73, label %12

12:                                               ; preds = %8
  %13 = load i32, ptr %0, align 8, !tbaa !19
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %13) #19
  %15 = load ptr, ptr %9, align 8, !tbaa !18
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 9
  %17 = load i32, ptr %16, align 8, !tbaa !20
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.3, i32 noundef %17) #19
  %19 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !22
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 9
  %24 = load i32, ptr %23, align 8, !tbaa !20
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef %24) #19
  br label %43

26:                                               ; preds = %12
  %27 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 17, i64 1, ptr %1)
  %28 = tail call fastcc ptr @get_loop_latch_edges(ptr noundef nonnull %0) #19
  store ptr %28, ptr %5, align 8, !tbaa !15
  %29 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %28, i32 noundef 0, ptr noundef nonnull %6) #19, !range !23
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %26, %31
  %32 = phi i32 [ %38, %31 ], [ 0, %26 ]
  %33 = load ptr, ptr %6, align 8, !tbaa !15
  %34 = load ptr, ptr %33, align 8, !tbaa !24
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 9
  %36 = load i32, ptr %35, align 8, !tbaa !20
  %37 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %36) #19
  %38 = add i32 %32, 1
  %39 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %28, i32 noundef %38, ptr noundef nonnull %6) #19, !range !23
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %31, !llvm.loop !26

41:                                               ; preds = %31, %26
  call fastcc void @VEC_edge_heap_free(ptr noundef nonnull %5) #19
  %42 = tail call i32 @fputc(i32 10, ptr %1)
  br label %43

43:                                               ; preds = %41, %22
  %44 = tail call fastcc i32 @loop_depth(ptr noundef nonnull %0) #19
  %45 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %0) #19
  %46 = icmp eq ptr %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = load i32, ptr %45, align 8, !tbaa !19
  %49 = sext i32 %48 to i64
  br label %50

50:                                               ; preds = %43, %47
  %51 = phi i64 [ %49, %47 ], [ -1, %43 ]
  %52 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.8, i32 noundef %44, i64 noundef %51) #19
  %53 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 10, i64 1, ptr %1)
  %54 = tail call ptr @get_loop_body(ptr noundef nonnull %0) #19
  %55 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %56 = load i32, ptr %55, align 4, !tbaa !28
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %69, label %58

58:                                               ; preds = %50, %58
  %59 = phi i64 [ %65, %58 ], [ 0, %50 ]
  %60 = getelementptr inbounds ptr, ptr %54, i64 %59
  %61 = load ptr, ptr %60, align 8, !tbaa !15
  %62 = getelementptr inbounds %struct.basic_block_def, ptr %61, i64 0, i32 9
  %63 = load i32, ptr %62, align 8, !tbaa !20
  %64 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %63) #19
  %65 = add nuw nsw i64 %59, 1
  %66 = load i32, ptr %55, align 4, !tbaa !28
  %67 = zext i32 %66 to i64
  %68 = icmp ult i64 %65, %67
  br i1 %68, label %58, label %69, !llvm.loop !29

69:                                               ; preds = %58, %50
  tail call void @free(ptr noundef %54) #19
  %70 = tail call i32 @fputc(i32 10, ptr %1)
  %71 = icmp eq ptr %2, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %69
  tail call void %2(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %3) #20
  br label %73

73:                                               ; preds = %69, %72, %4, %8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_loop_latch_edges(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = alloca %struct.edge_iterator, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  store ptr null, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !18
  %7 = tail call fastcc ptr @ei_start_1(ptr noundef %6) #19
  store i32 0, ptr %2, align 8, !tbaa.struct !30
  %8 = getelementptr inbounds i8, ptr %2, i64 8
  store ptr %7, ptr %8, align 8, !tbaa.struct !32
  %9 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %7, ptr noundef nonnull %3) #19, !range !33
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %1, %18
  %12 = load ptr, ptr %3, align 8, !tbaa !15
  %13 = load ptr, ptr %12, align 8, !tbaa !24
  %14 = load ptr, ptr %5, align 8, !tbaa !18
  %15 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %13, ptr noundef %14) #20
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  call fastcc void @VEC_edge_heap_safe_push(ptr noundef nonnull %4, ptr noundef nonnull %12) #19
  br label %18

18:                                               ; preds = %11, %17
  call fastcc void @ei_next(ptr noundef nonnull %2) #19
  %19 = load i32, ptr %2, align 8
  %20 = load ptr, ptr %8, align 8
  %21 = call fastcc zeroext i8 @ei_cond(i32 %19, ptr %20, ptr noundef nonnull %3) #19, !range !33
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %11, !llvm.loop !34

23:                                               ; preds = %18, %1
  %24 = load ptr, ptr %4, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #21
  ret ptr %24
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_edge_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #6 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !35
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

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_edge_heap_free(ptr nocapture noundef %0) unnamed_addr #7 {
  %2 = load ptr, ptr %0, align 8, !tbaa !15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #19
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_outer(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #19
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = add i32 %4, -1
  %8 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %3, i32 noundef %7) #19
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_loop_body(ptr noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 4, !tbaa !28
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 818, ptr noundef nonnull @.str.1) #20
  %6 = load i32, ptr %2, align 4, !tbaa !28
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi i32 [ %3, %1 ], [ %6, %5 ]
  %9 = zext i32 %8 to i64
  %10 = tail call ptr @xcalloc(i64 noundef %9, i64 noundef 8) #20
  %11 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !22
  %13 = load ptr, ptr @cfun, align 8, !tbaa !15
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !37
  %16 = getelementptr inbounds %struct.control_flow_graph, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !39
  %18 = icmp eq ptr %12, %17
  %19 = load i32, ptr %2, align 4, !tbaa !28
  br i1 %18, label %20, label %55

20:                                               ; preds = %7
  %21 = getelementptr inbounds %struct.control_flow_graph, ptr %15, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !41
  %23 = icmp eq i32 %19, %22
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 826, ptr noundef nonnull @.str.1) #20
  br label %25

25:                                               ; preds = %20, %24
  %26 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !18
  store ptr %27, ptr %10, align 8, !tbaa !15
  %28 = load ptr, ptr @cfun, align 8, !tbaa !15
  %29 = getelementptr inbounds %struct.function, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !37
  %31 = getelementptr inbounds %struct.control_flow_graph, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !39
  %33 = getelementptr inbounds ptr, ptr %10, i64 1
  store ptr %32, ptr %33, align 8, !tbaa !15
  %34 = load ptr, ptr %29, align 8, !tbaa !37
  %35 = load ptr, ptr %34, align 8, !tbaa !42
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %35, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !43
  %38 = getelementptr inbounds %struct.control_flow_graph, ptr %34, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !39
  %40 = icmp eq ptr %37, %39
  br i1 %40, label %57, label %41

41:                                               ; preds = %25, %41
  %42 = phi ptr [ %48, %41 ], [ %37, %25 ]
  %43 = phi i32 [ %44, %41 ], [ 2, %25 ]
  %44 = add i32 %43, 1
  %45 = zext i32 %43 to i64
  %46 = getelementptr inbounds ptr, ptr %10, i64 %45
  store ptr %42, ptr %46, align 8, !tbaa !15
  %47 = getelementptr inbounds %struct.basic_block_def, ptr %42, i64 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !43
  %49 = load ptr, ptr @cfun, align 8, !tbaa !15
  %50 = getelementptr inbounds %struct.function, ptr %49, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !37
  %52 = getelementptr inbounds %struct.control_flow_graph, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !39
  %54 = icmp eq ptr %48, %53
  br i1 %54, label %57, label %41, !llvm.loop !44

55:                                               ; preds = %7
  %56 = tail call i32 @get_loop_body_with_size(ptr noundef nonnull %0, ptr noundef %10, i32 noundef %19) #19
  br label %57

57:                                               ; preds = %41, %25, %55
  %58 = phi i32 [ %56, %55 ], [ 2, %25 ], [ %44, %41 ]
  %59 = load i32, ptr %2, align 4, !tbaa !28
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %62, label %61

61:                                               ; preds = %57
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 835, ptr noundef nonnull @.str.1) #20
  br label %62

62:                                               ; preds = %57, %61
  ret ptr %10
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #9 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #3 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #19, !range !33
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #19
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !15
  ret i8 %10
}

; Function Attrs: optsize
declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_edge_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #3 {
  tail call fastcc void @VEC_edge_heap_reserve(ptr noundef %0) #19
  %3 = load ptr, ptr %0, align 8, !tbaa !15
  tail call fastcc void @VEC_edge_base_quick_push(ptr noundef %3, ptr noundef %1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #3 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #19
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #19
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #19
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 738, ptr noundef nonnull @.str.1) #20
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !45
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !45
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #3 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #19
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #19
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #3 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #19
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #19
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !35
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 687, ptr noundef nonnull @.str.1) #20
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !15
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !15
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_edge_heap_reserve(ptr nocapture noundef %0) unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !15
  %3 = tail call fastcc i32 @VEC_edge_base_space(ptr noundef %2) #19
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #20
  store ptr %6, ptr %0, align 8, !tbaa !15
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_edge_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #6 {
  %3 = load i32, ptr %0, align 8, !tbaa !35
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !35
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_space(ptr noundef readonly %0) unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !47
  %6 = load i32, ptr %0, align 8, !tbaa !35
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @flow_loops_dump(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = alloca %struct.loop_iterator, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  %6 = load ptr, ptr @cfun, align 8, !tbaa !15
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = icmp ne ptr %8, null
  %10 = icmp ne ptr %0, null
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %24

12:                                               ; preds = %3
  %13 = tail call fastcc i32 @number_of_loops() #19
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.11, i32 noundef %13) #19
  call fastcc void @fel_init(ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 1) #19
  %15 = load ptr, ptr %5, align 8, !tbaa !15
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %12, %17
  %18 = phi ptr [ %19, %17 ], [ %15, %12 ]
  tail call void @flow_loop_dump(ptr noundef nonnull %18, ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) #19
  call fastcc void @fel_next(ptr noundef nonnull %4, ptr noundef nonnull %5) #19
  %19 = load ptr, ptr %5, align 8, !tbaa !15
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %17, !llvm.loop !49

21:                                               ; preds = %17, %12
  %22 = icmp eq i32 %2, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %21
  tail call fastcc void @flow_loops_cfg_dump(ptr noundef nonnull %0) #19
  br label %24

24:                                               ; preds = %21, %23, %3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @number_of_loops() unnamed_addr #0 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !15
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  %8 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %7) #19
  br label %9

9:                                                ; preds = %0, %5
  %10 = phi i32 [ %8, %5 ], [ 0, %0 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_init(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  store i32 0, ptr %4, align 8, !tbaa !52
  %5 = load ptr, ptr @cfun, align 8, !tbaa !15
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  store ptr null, ptr %0, align 8, !tbaa !54
  store ptr null, ptr %1, align 8, !tbaa !15
  br label %41

10:                                               ; preds = %3
  %11 = tail call fastcc i32 @number_of_loops() #19
  %12 = tail call fastcc ptr @VEC_int_heap_alloc(i32 noundef %11) #19
  store ptr %12, ptr %0, align 8, !tbaa !54
  %13 = and i32 %2, 1
  %14 = xor i32 %13, 1
  %15 = load ptr, ptr @cfun, align 8, !tbaa !15
  %16 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !48
  %18 = getelementptr inbounds %struct.loops, ptr %17, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !55
  br label %20

20:                                               ; preds = %30, %10
  %21 = phi ptr [ %19, %10 ], [ %31, %30 ]
  %22 = load i32, ptr %21, align 8, !tbaa !19
  %23 = icmp slt i32 %22, %14
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr %0, align 8, !tbaa !54
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %25, i32 noundef %22) #19
  br label %26

26:                                               ; preds = %24, %20
  %27 = getelementptr inbounds %struct.loop, ptr %21, i64 0, i32 8
  %28 = load ptr, ptr %27, align 8, !tbaa !56
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %32, %26
  %31 = phi ptr [ %28, %26 ], [ %35, %32 ]
  br label %20

32:                                               ; preds = %26, %37
  %33 = phi ptr [ %38, %37 ], [ %21, %26 ]
  %34 = getelementptr inbounds %struct.loop, ptr %33, i64 0, i32 9
  %35 = load ptr, ptr %34, align 8, !tbaa !57
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %30

37:                                               ; preds = %32
  %38 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %33) #19
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %32, !llvm.loop !58

40:                                               ; preds = %37
  tail call fastcc void @fel_next(ptr noundef nonnull %0, ptr noundef %1) #19
  br label %41

41:                                               ; preds = %40, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_next(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #3 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  %4 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !52
  br label %6

6:                                                ; preds = %11, %2
  %7 = phi i32 [ %12, %11 ], [ %5, %2 ]
  %8 = load ptr, ptr %0, align 8, !tbaa !54
  %9 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %8, i32 noundef %7, ptr noundef nonnull %3) #19, !range !23
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = add i32 %7, 1
  store i32 %12, ptr %4, align 8, !tbaa !52
  %13 = load i32, ptr %3, align 4, !tbaa !31
  %14 = tail call fastcc ptr @get_loop(i32 noundef %13) #19
  store ptr %14, ptr %1, align 8, !tbaa !15
  %15 = icmp eq ptr %14, null
  br i1 %15, label %6, label %17, !llvm.loop !59

16:                                               ; preds = %6
  tail call fastcc void @VEC_int_heap_free(ptr noundef nonnull %0) #19
  store ptr null, ptr %1, align 8, !tbaa !15
  br label %17

17:                                               ; preds = %11, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @flow_loops_cfg_dump(ptr nocapture noundef %0) unnamed_addr #3 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = load ptr, ptr @cfun, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !37
  %7 = load ptr, ptr %6, align 8, !tbaa !42
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !43
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !39
  %12 = icmp eq ptr %9, %11
  br i1 %12, label %45, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds i8, ptr %3, i64 8
  br label %15

15:                                               ; preds = %13, %35
  %16 = phi ptr [ %9, %13 ], [ %38, %35 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #21
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 9
  %18 = load i32, ptr %17, align 8, !tbaa !20
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %18) #19
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 1
  %21 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %20) #19
  store i32 0, ptr %3, align 8, !tbaa.struct !30
  store ptr %21, ptr %14, align 8, !tbaa.struct !32
  %22 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %21, ptr noundef nonnull %2) #19, !range !33
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %15, %24
  %25 = load ptr, ptr %2, align 8, !tbaa !15
  %26 = getelementptr inbounds %struct.edge_def, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !60
  %28 = getelementptr inbounds %struct.basic_block_def, ptr %27, i64 0, i32 9
  %29 = load i32, ptr %28, align 8, !tbaa !20
  %30 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %29) #19
  call fastcc void @ei_next(ptr noundef nonnull %3) #19
  %31 = load i32, ptr %3, align 8
  %32 = load ptr, ptr %14, align 8
  %33 = call fastcc zeroext i8 @ei_cond(i32 %31, ptr %32, ptr noundef nonnull %2) #19, !range !33
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %24, !llvm.loop !61

35:                                               ; preds = %24, %15
  %36 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 2, i64 1, ptr %0)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 6
  %38 = load ptr, ptr %37, align 8, !tbaa !43
  %39 = load ptr, ptr @cfun, align 8, !tbaa !15
  %40 = getelementptr inbounds %struct.function, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !37
  %42 = getelementptr inbounds %struct.control_flow_graph, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !39
  %44 = icmp eq ptr %38, %43
  br i1 %44, label %45, label %15, !llvm.loop !62

45:                                               ; preds = %35, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_int_heap_alloc(i32 noundef %0) unnamed_addr #3 {
  %2 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 4) #20
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_loop_p_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #6 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !16
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
define internal fastcc void @VEC_int_base_quick_push(ptr noundef %0, i32 noundef %1) unnamed_addr #6 {
  %3 = load i32, ptr %0, align 4, !tbaa !63
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 4, !tbaa !63
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %5
  store i32 %1, ptr %6, align 4, !tbaa !31
  ret void
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_int_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #6 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 4, !tbaa !63
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !31
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi i32 [ %11, %8 ], [ 0, %5 ], [ 0, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store i32 %13, ptr %2, align 4, !tbaa !31
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_loop(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !15
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  %5 = getelementptr inbounds %struct.loops, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !50
  %7 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %6, i32 noundef %0) #19
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_int_heap_free(ptr nocapture noundef %0) unnamed_addr #7 {
  %2 = load ptr, ptr %0, align 8, !tbaa !15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #19
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @flow_loop_free(ptr noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  tail call fastcc void @VEC_loop_p_gc_free(ptr noundef nonnull %2) #19
  %3 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 18
  %4 = load ptr, ptr %3, align 8, !tbaa !65
  %5 = getelementptr inbounds %struct.loop_exit, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !66
  %7 = icmp eq ptr %6, %4
  br i1 %7, label %14, label %8

8:                                                ; preds = %1, %8
  %9 = phi ptr [ %11, %8 ], [ %6, %1 ]
  %10 = getelementptr inbounds %struct.loop_exit, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !66
  store ptr %9, ptr %10, align 8, !tbaa !66
  %12 = getelementptr inbounds %struct.loop_exit, ptr %9, i64 0, i32 1
  store ptr %9, ptr %12, align 8, !tbaa !68
  %13 = icmp eq ptr %11, %4
  br i1 %13, label %14, label %8, !llvm.loop !69

14:                                               ; preds = %8, %1
  tail call void @ggc_free(ptr noundef %4) #20
  tail call void @ggc_free(ptr noundef %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_loop_p_gc_free(ptr nocapture noundef %0) unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @ggc_free(ptr noundef nonnull %2) #20
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !15
  ret void
}

; Function Attrs: optsize
declare void @ggc_free(ptr noundef) #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @flow_loops_free(ptr nocapture noundef %0) local_unnamed_addr #3 {
  %2 = alloca ptr, align 8
  %3 = getelementptr inbounds %struct.loops, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !50
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6

6:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  %7 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef nonnull %4, i32 noundef 0, ptr noundef nonnull %2) #19, !range !23
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %6, %16
  %10 = phi ptr [ %17, %16 ], [ %4, %6 ]
  %11 = phi i32 [ %18, %16 ], [ 0, %6 ]
  %12 = load ptr, ptr %2, align 8, !tbaa !15
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  tail call void @flow_loop_free(ptr noundef nonnull %12) #19
  %15 = load ptr, ptr %3, align 8, !tbaa !50
  br label %16

16:                                               ; preds = %9, %14
  %17 = phi ptr [ %10, %9 ], [ %15, %14 ]
  %18 = add i32 %11, 1
  %19 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %17, i32 noundef %18, ptr noundef nonnull %2) #19, !range !23
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %9, !llvm.loop !70

21:                                               ; preds = %16, %6
  tail call fastcc void @VEC_loop_p_gc_free(ptr noundef nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  br label %22

22:                                               ; preds = %21, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @flow_loop_nodes_find(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.edge_iterator, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  store ptr null, ptr %3, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #21
  %8 = tail call fastcc i32 @loop_depth(ptr noundef %1) #19
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 3
  store ptr %1, ptr %9, align 8, !tbaa !71
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 10
  store i32 %8, ptr %10, align 4, !tbaa !72
  %11 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !18
  %13 = tail call fastcc ptr @ei_start_1(ptr noundef %12) #19
  store i32 0, ptr %5, align 8, !tbaa.struct !30
  %14 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr %13, ptr %14, align 8, !tbaa.struct !32
  %15 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %13, ptr noundef nonnull %4) #19, !range !33
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %73, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds i8, ptr %7, i64 8
  br label %19

19:                                               ; preds = %17, %67
  %20 = phi i32 [ 1, %17 ], [ %68, %67 ]
  %21 = load ptr, ptr %4, align 8, !tbaa !15
  %22 = load ptr, ptr %21, align 8, !tbaa !24
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !71
  %25 = icmp eq ptr %24, %1
  br i1 %25, label %67, label %26

26:                                               ; preds = %19
  %27 = load ptr, ptr %11, align 8, !tbaa !18
  %28 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef nonnull %22, ptr noundef %27) #20
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %67, label %30

30:                                               ; preds = %26
  %31 = add nsw i32 %20, 1
  %32 = load ptr, ptr %21, align 8, !tbaa !24
  call fastcc void @VEC_basic_block_heap_safe_push(ptr noundef nonnull %3, ptr noundef %32) #19
  %33 = load ptr, ptr %21, align 8, !tbaa !24
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 3
  store ptr %1, ptr %34, align 8, !tbaa !71
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 10
  store i32 %8, ptr %35, align 4, !tbaa !72
  %36 = load ptr, ptr %3, align 8
  %37 = tail call fastcc i32 @VEC_basic_block_base_length(ptr noundef %36) #19
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %67, label %39

39:                                               ; preds = %30, %62
  %40 = phi ptr [ %64, %62 ], [ %36, %30 ]
  %41 = phi i32 [ %63, %62 ], [ %31, %30 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #21
  %42 = tail call fastcc ptr @VEC_basic_block_base_pop(ptr noundef %40) #19
  %43 = tail call fastcc ptr @ei_start_1(ptr noundef %42) #19
  store i32 0, ptr %7, align 8, !tbaa.struct !30
  store ptr %43, ptr %18, align 8, !tbaa.struct !32
  %44 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %43, ptr noundef nonnull %6) #19, !range !33
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %62, label %46

46:                                               ; preds = %39, %56
  %47 = phi i32 [ %57, %56 ], [ %41, %39 ]
  %48 = load ptr, ptr %6, align 8, !tbaa !15
  %49 = load ptr, ptr %48, align 8, !tbaa !24
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %49, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !71
  %52 = icmp eq ptr %51, %1
  br i1 %52, label %56, label %53

53:                                               ; preds = %46
  store ptr %1, ptr %50, align 8, !tbaa !71
  %54 = getelementptr inbounds %struct.basic_block_def, ptr %49, i64 0, i32 10
  store i32 %8, ptr %54, align 4, !tbaa !72
  %55 = add nsw i32 %47, 1
  call fastcc void @VEC_basic_block_heap_safe_push(ptr noundef nonnull %3, ptr noundef nonnull %49) #19
  br label %56

56:                                               ; preds = %53, %46
  %57 = phi i32 [ %55, %53 ], [ %47, %46 ]
  call fastcc void @ei_next(ptr noundef nonnull %7) #19
  %58 = load i32, ptr %7, align 8
  %59 = load ptr, ptr %18, align 8
  %60 = call fastcc zeroext i8 @ei_cond(i32 %58, ptr %59, ptr noundef nonnull %6) #19, !range !33
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %46, !llvm.loop !73

62:                                               ; preds = %56, %39
  %63 = phi i32 [ %41, %39 ], [ %57, %56 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  %64 = load ptr, ptr %3, align 8
  %65 = tail call fastcc i32 @VEC_basic_block_base_length(ptr noundef %64) #19
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %39, !llvm.loop !74

67:                                               ; preds = %62, %30, %19, %26
  %68 = phi i32 [ %20, %19 ], [ %20, %26 ], [ %31, %30 ], [ %63, %62 ]
  call fastcc void @ei_next(ptr noundef nonnull %5) #19
  %69 = load i32, ptr %5, align 8
  %70 = load ptr, ptr %14, align 8
  %71 = call fastcc zeroext i8 @ei_cond(i32 %69, ptr %70, ptr noundef nonnull %4) #19, !range !33
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %19, !llvm.loop !75

73:                                               ; preds = %67, %2
  %74 = phi i32 [ 1, %2 ], [ %68, %67 ]
  call fastcc void @VEC_basic_block_heap_free(ptr noundef nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret i32 %74
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_basic_block_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #3 {
  tail call fastcc void @VEC_basic_block_heap_reserve(ptr noundef %0) #19
  %3 = load ptr, ptr %0, align 8, !tbaa !15
  tail call fastcc void @VEC_basic_block_base_quick_push(ptr noundef %3, ptr noundef %1) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_basic_block_base_length(ptr noundef readonly %0) unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !76
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_basic_block_base_pop(ptr nocapture noundef %0) unnamed_addr #6 {
  %2 = load i32, ptr %0, align 8, !tbaa !76
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !76
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !15
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_basic_block_heap_free(ptr nocapture noundef %0) unnamed_addr #7 {
  %2 = load ptr, ptr %0, align 8, !tbaa !15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #19
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_basic_block_heap_reserve(ptr nocapture noundef %0) unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !15
  %3 = tail call fastcc i32 @VEC_basic_block_base_space(ptr noundef %2) #19
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #20
  store ptr %6, ptr %0, align 8, !tbaa !15
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_basic_block_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #6 {
  %3 = load i32, ptr %0, align 8, !tbaa !76
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !76
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_basic_block_base_space(ptr noundef readonly %0) unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !78
  %6 = load i32, ptr %0, align 8, !tbaa !76
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @flow_loop_tree_node_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !56
  %5 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 9
  store ptr %4, ptr %5, align 8, !tbaa !57
  store ptr %1, ptr %3, align 8, !tbaa !56
  tail call fastcc void @establish_preds(ptr noundef %1, ptr noundef %0) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @establish_preds(ptr noundef %0, ptr noundef %1) unnamed_addr #3 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %4 = tail call fastcc i32 @loop_depth(ptr noundef %1) #19
  %5 = add i32 %4, 1
  %6 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  tail call fastcc void @VEC_loop_p_base_truncate(ptr noundef %7) #19
  tail call fastcc void @VEC_loop_p_gc_reserve(ptr noundef nonnull %6, i32 noundef %5) #19
  %8 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  %10 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %9, i32 noundef 0, ptr noundef nonnull %3) #19, !range !23
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %2, %12
  %13 = phi i32 [ %16, %12 ], [ 0, %2 ]
  %14 = load ptr, ptr %6, align 8, !tbaa !6
  %15 = load ptr, ptr %3, align 8, !tbaa !15
  tail call fastcc void @VEC_loop_p_base_quick_push(ptr noundef %14, ptr noundef %15) #19
  %16 = add i32 %13, 1
  %17 = load ptr, ptr %8, align 8, !tbaa !6
  %18 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %17, i32 noundef %16, ptr noundef nonnull %3) #19, !range !23
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %12, !llvm.loop !79

20:                                               ; preds = %12, %2
  %21 = load ptr, ptr %6, align 8, !tbaa !6
  tail call fastcc void @VEC_loop_p_base_quick_push(ptr noundef %21, ptr noundef nonnull %1) #19
  %22 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !15
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %20, %25
  %26 = phi ptr [ %28, %25 ], [ %23, %20 ]
  tail call fastcc void @establish_preds(ptr noundef nonnull %26, ptr noundef %0) #19
  %27 = getelementptr inbounds %struct.loop, ptr %26, i64 0, i32 9
  %28 = load ptr, ptr %27, align 8, !tbaa !15
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %25, !llvm.loop !80

30:                                               ; preds = %25, %20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @VEC_loop_p_base_truncate(ptr noundef writeonly %0) unnamed_addr #10 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  store i32 0, ptr %0, align 8, !tbaa !16
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_loop_p_gc_reserve(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #3 {
  %3 = load ptr, ptr %0, align 8, !tbaa !15
  %4 = tail call fastcc i32 @VEC_loop_p_base_space(ptr noundef %3, i32 noundef %1) #19, !range !23
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call ptr @vec_gc_p_reserve(ptr noundef %3, i32 noundef %1) #20
  store ptr %7, ptr %0, align 8, !tbaa !15
  br label %8

8:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_loop_p_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #6 {
  %3 = load i32, ptr %0, align 8, !tbaa !16
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !16
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_loop_p_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !81
  %7 = load i32, ptr %0, align 8, !tbaa !16
  %8 = sub i32 %6, %7
  %9 = icmp uge i32 %8, %1
  br label %12

10:                                               ; preds = %2
  %11 = icmp eq i32 %1, 0
  br label %12

12:                                               ; preds = %10, %4
  %13 = phi i1 [ %9, %4 ], [ %11, %10 ]
  %14 = zext i1 %13 to i32
  ret i32 %14
}

; Function Attrs: optsize
declare ptr @vec_gc_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @flow_loop_tree_node_remove(ptr noundef readonly %0) local_unnamed_addr #11 {
  %2 = tail call fastcc ptr @loop_outer(ptr noundef %0) #19
  %3 = getelementptr inbounds %struct.loop, ptr %2, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !56
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %13, label %6

6:                                                ; preds = %1, %6
  %7 = phi ptr [ %9, %6 ], [ %4, %1 ]
  %8 = getelementptr inbounds %struct.loop, ptr %7, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !57
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %11, label %6, !llvm.loop !82

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.loop, ptr %7, i64 0, i32 9
  br label %13

13:                                               ; preds = %1, %11
  %14 = phi ptr [ %12, %11 ], [ %3, %1 ]
  %15 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !57
  store ptr %16, ptr %14, align 8, !tbaa !15
  %17 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !6
  tail call fastcc void @VEC_loop_p_base_truncate(ptr noundef %18) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @alloc_loop() local_unnamed_addr #3 {
  %1 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 152) #20
  %2 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 32) #20
  %3 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 18
  store ptr %2, ptr %3, align 8, !tbaa !65
  %4 = getelementptr inbounds %struct.loop_exit, ptr %2, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !68
  %5 = getelementptr inbounds %struct.loop_exit, ptr %2, i64 0, i32 2
  store ptr %2, ptr %5, align 8, !tbaa !66
  %6 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 19
  store i8 0, ptr %6, align 8, !tbaa !83
  %7 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 20
  store ptr null, ptr %7, align 8, !tbaa !84
  ret ptr %1
}

; Function Attrs: optsize
declare ptr @ggc_alloc_cleared_stat(i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @flow_loops_find(ptr nocapture noundef %0) local_unnamed_addr #3 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  tail call void @calculate_dominance_info(i32 noundef 1) #20
  %5 = load ptr, ptr @cfun, align 8, !tbaa !15
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !37
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !41
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  tail call fastcc void @init_loops_structure(ptr noundef %0, i32 noundef 1) #19
  br label %203

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 5
  %14 = load i32, ptr %13, align 8, !tbaa !85
  %15 = tail call ptr @sbitmap_alloc(i32 noundef %14) #20
  tail call void @sbitmap_zero(ptr noundef %15) #20
  %16 = load ptr, ptr @cfun, align 8, !tbaa !15
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !37
  %19 = load ptr, ptr %18, align 8, !tbaa !42
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !43
  %22 = getelementptr inbounds %struct.control_flow_graph, ptr %18, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !39
  %24 = icmp eq ptr %21, %23
  br i1 %24, label %90, label %25

25:                                               ; preds = %12
  %26 = getelementptr inbounds i8, ptr %3, i64 8
  br label %27

27:                                               ; preds = %25, %80
  %28 = phi ptr [ %21, %25 ], [ %83, %80 ]
  %29 = phi i32 [ 0, %25 ], [ %81, %80 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #21
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 10
  store i32 0, ptr %30, align 4, !tbaa !72
  %31 = tail call fastcc ptr @ei_start_1(ptr noundef %28) #19
  store i32 0, ptr %3, align 8, !tbaa.struct !30
  store ptr %31, ptr %26, align 8, !tbaa.struct !32
  %32 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %31, ptr noundef nonnull %2) #19, !range !33
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %27, %40
  %35 = load ptr, ptr %2, align 8, !tbaa !15
  %36 = getelementptr inbounds %struct.edge_def, ptr %35, i64 0, i32 7
  %37 = load i32, ptr %36, align 8, !tbaa !86
  %38 = and i32 %37, 2
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %80

40:                                               ; preds = %34
  call fastcc void @ei_next(ptr noundef nonnull %3) #19
  %41 = load i32, ptr %3, align 8
  %42 = load ptr, ptr %26, align 8
  %43 = call fastcc zeroext i8 @ei_cond(i32 %41, ptr %42, ptr noundef nonnull %2) #19, !range !33
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %34, !llvm.loop !87

45:                                               ; preds = %40, %27
  %46 = load ptr, ptr %2, align 8, !tbaa !15
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %80

48:                                               ; preds = %45
  store i32 0, ptr %3, align 8, !tbaa.struct !30
  store ptr %31, ptr %26, align 8, !tbaa.struct !32
  %49 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %31, ptr noundef nonnull %2) #19, !range !33
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %80, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 9
  br label %53

53:                                               ; preds = %51, %74
  %54 = phi i32 [ %29, %51 ], [ %75, %74 ]
  %55 = load ptr, ptr %2, align 8, !tbaa !15
  %56 = load ptr, ptr %55, align 8, !tbaa !24
  %57 = getelementptr inbounds %struct.edge_def, ptr %55, i64 0, i32 7
  %58 = load i32, ptr %57, align 8, !tbaa !86
  %59 = and i32 %58, 2
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %53
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 424, ptr noundef nonnull @.str.1) #20
  br label %62

62:                                               ; preds = %53, %61
  %63 = load ptr, ptr @cfun, align 8, !tbaa !15
  %64 = getelementptr inbounds %struct.function, ptr %63, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !37
  %66 = load ptr, ptr %65, align 8, !tbaa !42
  %67 = icmp eq ptr %56, %66
  br i1 %67, label %74, label %68

68:                                               ; preds = %62
  %69 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %56, ptr noundef %28) #20
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = load i32, ptr %52, align 8, !tbaa !20
  tail call fastcc void @SET_BIT(ptr noundef %15, i32 noundef %72) #19
  %73 = add nsw i32 %54, 1
  br label %74

74:                                               ; preds = %71, %68, %62
  %75 = phi i32 [ %73, %71 ], [ %54, %68 ], [ %54, %62 ]
  call fastcc void @ei_next(ptr noundef nonnull %3) #19
  %76 = load i32, ptr %3, align 8
  %77 = load ptr, ptr %26, align 8
  %78 = call fastcc zeroext i8 @ei_cond(i32 %76, ptr %77, ptr noundef nonnull %2) #19, !range !33
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %53, !llvm.loop !88

80:                                               ; preds = %34, %74, %48, %45
  %81 = phi i32 [ %29, %45 ], [ %29, %48 ], [ %75, %74 ], [ %29, %34 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #21
  %82 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 6
  %83 = load ptr, ptr %82, align 8, !tbaa !43
  %84 = load ptr, ptr @cfun, align 8, !tbaa !15
  %85 = getelementptr inbounds %struct.function, ptr %84, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !37
  %87 = getelementptr inbounds %struct.control_flow_graph, ptr %86, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !39
  %89 = icmp eq ptr %83, %88
  br i1 %89, label %90, label %27, !llvm.loop !89

90:                                               ; preds = %80, %12
  %91 = phi i32 [ 0, %12 ], [ %81, %80 ]
  %92 = add nsw i32 %91, 1
  tail call fastcc void @init_loops_structure(ptr noundef %0, i32 noundef %92) #19
  %93 = load ptr, ptr @cfun, align 8, !tbaa !15
  %94 = getelementptr inbounds %struct.function, ptr %93, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !37
  %96 = load ptr, ptr %95, align 8, !tbaa !42
  %97 = getelementptr inbounds %struct.control_flow_graph, ptr %95, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !39
  %99 = getelementptr inbounds %struct.basic_block_def, ptr %96, i64 0, i32 6
  %100 = load ptr, ptr %99, align 8, !tbaa !43
  %101 = icmp eq ptr %100, %98
  br i1 %101, label %111, label %102

102:                                              ; preds = %90
  %103 = getelementptr inbounds %struct.loops, ptr %0, i64 0, i32 3
  %104 = load ptr, ptr %103, align 8, !tbaa !55
  br label %105

105:                                              ; preds = %102, %105
  %106 = phi ptr [ %100, %102 ], [ %109, %105 ]
  %107 = getelementptr inbounds %struct.basic_block_def, ptr %106, i64 0, i32 3
  store ptr %104, ptr %107, align 8, !tbaa !71
  %108 = getelementptr inbounds %struct.basic_block_def, ptr %106, i64 0, i32 6
  %109 = load ptr, ptr %108, align 8, !tbaa !43
  %110 = icmp eq ptr %109, %98
  br i1 %110, label %111, label %105, !llvm.loop !90

111:                                              ; preds = %105, %90
  %112 = icmp eq i32 %91, 0
  br i1 %112, label %197, label %113

113:                                              ; preds = %111
  %114 = getelementptr inbounds %struct.control_flow_graph, ptr %95, i64 0, i32 3
  %115 = load i32, ptr %114, align 8, !tbaa !41
  %116 = sext i32 %115 to i64
  %117 = shl nsw i64 %116, 2
  %118 = tail call ptr @xmalloc(i64 noundef %117) #20
  %119 = load ptr, ptr @cfun, align 8, !tbaa !15
  %120 = getelementptr inbounds %struct.function, ptr %119, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !37
  %122 = getelementptr inbounds %struct.control_flow_graph, ptr %121, i64 0, i32 3
  %123 = load i32, ptr %122, align 8, !tbaa !41
  %124 = sext i32 %123 to i64
  %125 = shl nsw i64 %124, 2
  %126 = tail call ptr @xmalloc(i64 noundef %125) #20
  %127 = tail call i32 @pre_and_rev_post_order_compute(ptr noundef %118, ptr noundef %126, i8 noundef zeroext 0) #20
  %128 = load ptr, ptr @cfun, align 8, !tbaa !15
  %129 = getelementptr inbounds %struct.function, ptr %128, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !37
  %131 = getelementptr inbounds %struct.control_flow_graph, ptr %130, i64 0, i32 3
  %132 = load i32, ptr %131, align 8, !tbaa !41
  %133 = icmp sgt i32 %132, 2
  br i1 %133, label %134, label %196

134:                                              ; preds = %113
  %135 = getelementptr inbounds %struct.loops, ptr %0, i64 0, i32 1
  %136 = getelementptr inbounds i8, ptr %4, i64 8
  br label %137

137:                                              ; preds = %134, %185
  %138 = phi i64 [ 0, %134 ], [ %187, %185 ]
  %139 = phi ptr [ %130, %134 ], [ %190, %185 ]
  %140 = phi i32 [ 1, %134 ], [ %186, %185 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #21
  %141 = getelementptr inbounds i32, ptr %126, i64 %138
  %142 = load i32, ptr %141, align 4, !tbaa !31
  %143 = lshr i32 %142, 6
  %144 = zext nneg i32 %143 to i64
  %145 = getelementptr inbounds %struct.simple_bitmap_def, ptr %15, i64 0, i32 3, i64 %144
  %146 = load i64, ptr %145, align 8, !tbaa !91
  %147 = and i32 %142, 63
  %148 = zext nneg i32 %147 to i64
  %149 = shl nuw i64 1, %148
  %150 = and i64 %149, %146
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %185, label %152

152:                                              ; preds = %137
  %153 = getelementptr inbounds %struct.control_flow_graph, ptr %139, i64 0, i32 2
  %154 = load ptr, ptr %153, align 8, !tbaa !92
  %155 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %154, i32 noundef %142) #19
  %156 = tail call ptr @alloc_loop() #19
  %157 = load ptr, ptr %135, align 8, !tbaa !50
  tail call fastcc void @VEC_loop_p_base_quick_push(ptr noundef %157, ptr noundef %156) #19
  %158 = getelementptr inbounds %struct.loop, ptr %156, i64 0, i32 2
  store ptr %155, ptr %158, align 8, !tbaa !18
  store i32 %140, ptr %156, align 8, !tbaa !19
  %159 = add nsw i32 %140, 1
  %160 = getelementptr inbounds %struct.basic_block_def, ptr %155, i64 0, i32 3
  %161 = load ptr, ptr %160, align 8, !tbaa !71
  tail call void @flow_loop_tree_node_add(ptr noundef %161, ptr noundef nonnull %156) #19
  %162 = load ptr, ptr %158, align 8, !tbaa !18
  %163 = tail call i32 @flow_loop_nodes_find(ptr noundef %162, ptr noundef nonnull %156) #19
  %164 = getelementptr inbounds %struct.loop, ptr %156, i64 0, i32 6
  store i32 %163, ptr %164, align 4, !tbaa !28
  %165 = tail call fastcc ptr @ei_start_1(ptr noundef %155) #19
  store i32 0, ptr %4, align 8, !tbaa.struct !30
  store ptr %165, ptr %136, align 8, !tbaa.struct !32
  %166 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %165, ptr noundef nonnull %2) #19, !range !33
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %185, label %168

168:                                              ; preds = %152
  %169 = getelementptr inbounds %struct.loop, ptr %156, i64 0, i32 3
  br label %170

170:                                              ; preds = %168, %180
  %171 = load ptr, ptr %2, align 8, !tbaa !15
  %172 = load ptr, ptr %171, align 8, !tbaa !24
  %173 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef nonnull %156, ptr noundef %172) #19, !range !33
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %180, label %175

175:                                              ; preds = %170
  %176 = load ptr, ptr %169, align 8, !tbaa !22
  %177 = icmp eq ptr %176, null
  br i1 %177, label %178, label %179

178:                                              ; preds = %175
  store ptr %172, ptr %169, align 8, !tbaa !22
  br label %180

179:                                              ; preds = %175
  store ptr null, ptr %169, align 8, !tbaa !22
  br label %185

180:                                              ; preds = %178, %170
  call fastcc void @ei_next(ptr noundef nonnull %4) #19
  %181 = load i32, ptr %4, align 8
  %182 = load ptr, ptr %136, align 8
  %183 = call fastcc zeroext i8 @ei_cond(i32 %181, ptr %182, ptr noundef nonnull %2) #19, !range !33
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %185, label %170, !llvm.loop !93

185:                                              ; preds = %180, %152, %179, %137
  %186 = phi i32 [ %140, %137 ], [ %159, %179 ], [ %159, %152 ], [ %159, %180 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #21
  %187 = add nuw nsw i64 %138, 1
  %188 = load ptr, ptr @cfun, align 8, !tbaa !15
  %189 = getelementptr inbounds %struct.function, ptr %188, i64 0, i32 1
  %190 = load ptr, ptr %189, align 8, !tbaa !37
  %191 = getelementptr inbounds %struct.control_flow_graph, ptr %190, i64 0, i32 3
  %192 = load i32, ptr %191, align 8, !tbaa !41
  %193 = add nsw i32 %192, -2
  %194 = sext i32 %193 to i64
  %195 = icmp slt i64 %187, %194
  br i1 %195, label %137, label %196, !llvm.loop !94

196:                                              ; preds = %185, %113
  tail call void @free(ptr noundef %118) #19
  tail call void @free(ptr noundef %126) #19
  br label %197

197:                                              ; preds = %196, %111
  %198 = load ptr, ptr %15, align 8, !tbaa !95
  tail call void @free(ptr noundef %198) #19
  tail call void @free(ptr noundef %15) #19
  %199 = getelementptr inbounds %struct.loops, ptr %0, i64 0, i32 2
  store ptr null, ptr %199, align 8, !tbaa !97
  %200 = getelementptr inbounds %struct.loops, ptr %0, i64 0, i32 1
  %201 = load ptr, ptr %200, align 8, !tbaa !50
  %202 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %201) #19
  br label %203

203:                                              ; preds = %197, %11
  %204 = phi i32 [ 1, %11 ], [ %202, %197 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  ret i32 %204
}

; Function Attrs: optsize
declare void @calculate_dominance_info(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_loops_structure(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #3 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %3 = tail call fastcc ptr @VEC_loop_p_gc_alloc(i32 noundef %1) #19
  %4 = getelementptr inbounds %struct.loops, ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !50
  %5 = tail call ptr @alloc_loop() #19
  %6 = load ptr, ptr @cfun, align 8, !tbaa !15
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !37
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !41
  %11 = getelementptr inbounds %struct.loop, ptr %5, i64 0, i32 6
  store i32 %10, ptr %11, align 4, !tbaa !28
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !39
  %14 = getelementptr inbounds %struct.loop, ptr %5, i64 0, i32 3
  store ptr %13, ptr %14, align 8, !tbaa !22
  %15 = load ptr, ptr %8, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct.loop, ptr %5, i64 0, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !18
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 3
  store ptr %5, ptr %17, align 8, !tbaa !71
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 3
  store ptr %5, ptr %18, align 8, !tbaa !71
  %19 = load ptr, ptr %4, align 8, !tbaa !50
  tail call fastcc void @VEC_loop_p_base_quick_push(ptr noundef %19, ptr noundef %5) #19
  %20 = getelementptr inbounds %struct.loops, ptr %0, i64 0, i32 3
  store ptr %5, ptr %20, align 8, !tbaa !55
  ret void
}

; Function Attrs: optsize
declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #12 {
  %3 = load ptr, ptr %0, align 8, !tbaa !95
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11

5:                                                ; preds = %2
  %6 = and i32 %1, 63
  %7 = zext nneg i32 %6 to i64
  %8 = shl nuw i64 1, %7
  %9 = lshr i32 %1, 6
  %10 = zext nneg i32 %9 to i64
  br label %25

11:                                               ; preds = %2
  %12 = lshr i32 %1, 6
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %13
  %15 = load i64, ptr %14, align 8, !tbaa !91
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !98
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !98
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !91
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !91
  ret void
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @pre_and_rev_post_order_compute(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !15
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @flow_bb_inside_loop_p(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !15
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !37
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %18, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !39
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %18, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !71
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call zeroext i8 @flow_loop_nested_p(ptr noundef %0, ptr noundef %14) #19, !range !33
  br label %18

18:                                               ; preds = %12, %16, %2, %8
  %19 = phi i8 [ 0, %8 ], [ 0, %2 ], [ 1, %12 ], [ %17, %16 ]
  ret i8 %19
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_loop_p_gc_alloc(i32 noundef %0) unnamed_addr #3 {
  %2 = tail call ptr @vec_gc_p_reserve_exact(ptr noundef null, i32 noundef %0) #20
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @vec_gc_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @disambiguate_loops_with_multiple_latches() local_unnamed_addr #3 {
  %1 = alloca %struct.loop_iterator, align 8
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  call fastcc void @fel_init(ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef 0) #19
  %3 = load ptr, ptr %2, align 8, !tbaa !15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %0, %11
  %6 = phi ptr [ %12, %11 ], [ %3, %0 ]
  %7 = getelementptr inbounds %struct.loop, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !22
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  tail call fastcc void @disambiguate_multiple_latches(ptr noundef nonnull %6) #19
  br label %11

11:                                               ; preds = %5, %10
  call fastcc void @fel_next(ptr noundef nonnull %1, ptr noundef nonnull %2) #19
  %12 = load ptr, ptr %2, align 8, !tbaa !15
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %5, !llvm.loop !99

14:                                               ; preds = %11, %0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @disambiguate_multiple_latches(ptr noundef %0) unnamed_addr #3 {
  %2 = load ptr, ptr @dump_file, align 8, !tbaa !15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8, !tbaa !19
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.15, i32 noundef %5) #19
  br label %7

7:                                                ; preds = %4, %1
  %8 = load ptr, ptr @cfun, align 8, !tbaa !15
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !37
  %11 = load ptr, ptr %10, align 8, !tbaa !42
  %12 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !18
  %14 = tail call ptr @find_edge(ptr noundef %11, ptr noundef %13) #20
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %7
  %17 = tail call ptr @split_edge(ptr noundef nonnull %14) #20
  br label %18

18:                                               ; preds = %16, %7
  %19 = tail call fastcc ptr @find_subloop_latch_edge(ptr noundef nonnull %0) #19
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %18, %21
  %22 = phi ptr [ %23, %21 ], [ %19, %18 ]
  tail call fastcc void @form_subloop(ptr noundef %0, ptr noundef nonnull %22) #19
  %23 = tail call fastcc ptr @find_subloop_latch_edge(ptr noundef %0) #19
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %21

25:                                               ; preds = %21, %18
  tail call fastcc void @merge_latch_edges(ptr noundef %0) #19
  ret void
}

; Function Attrs: optsize
declare ptr @find_edge(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @split_edge(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_subloop_latch_edge(ptr noundef %0) unnamed_addr #3 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  %3 = tail call fastcc ptr @get_loop_latch_edges(ptr noundef %0) #19
  store ptr %3, ptr %2, align 8, !tbaa !15
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #19
  %5 = icmp ugt i32 %4, 1
  br i1 %5, label %6, label %14

6:                                                ; preds = %1
  %7 = tail call fastcc ptr @find_subloop_latch_edge_by_profile(ptr noundef %3) #19
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %6
  %10 = tail call i32 @current_ir_type() #20
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = tail call fastcc ptr @find_subloop_latch_edge_by_ivs(ptr noundef %0, ptr noundef %3) #19
  br label %14

14:                                               ; preds = %6, %9, %12, %1
  %15 = phi ptr [ %7, %6 ], [ %13, %12 ], [ null, %9 ], [ null, %1 ]
  call fastcc void @VEC_edge_heap_free(ptr noundef nonnull %2) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @form_subloop(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #3 {
  %3 = alloca %struct.edge_iterator, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  %5 = tail call ptr @pointer_set_create() #20
  store ptr %5, ptr @mfb_reis_set, align 8, !tbaa !15
  %6 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !18
  %8 = tail call fastcc ptr @ei_start_1(ptr noundef %7) #19
  store i32 0, ptr %3, align 8, !tbaa.struct !30
  %9 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %8, ptr %9, align 8, !tbaa.struct !32
  %10 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %8, ptr noundef nonnull %4) #19, !range !33
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %2, %18
  %13 = load ptr, ptr %4, align 8, !tbaa !15
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr @mfb_reis_set, align 8, !tbaa !15
  %17 = tail call i32 @pointer_set_insert(ptr noundef %16, ptr noundef %13) #20
  br label %18

18:                                               ; preds = %12, %15
  call fastcc void @ei_next(ptr noundef nonnull %3) #19
  %19 = load i32, ptr %3, align 8
  %20 = load ptr, ptr %9, align 8
  %21 = call fastcc zeroext i8 @ei_cond(i32 %19, ptr %20, ptr noundef nonnull %4) #19, !range !33
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %12, !llvm.loop !100

23:                                               ; preds = %18, %2
  %24 = load ptr, ptr %6, align 8, !tbaa !18
  %25 = tail call ptr @make_forwarder_block(ptr noundef %24, ptr noundef nonnull @mfb_redirect_edges_in_set, ptr noundef null) #20
  %26 = load ptr, ptr @mfb_reis_set, align 8, !tbaa !15
  tail call void @pointer_set_destroy(ptr noundef %26) #20
  %27 = load ptr, ptr %25, align 8, !tbaa !24
  store ptr %27, ptr %6, align 8, !tbaa !18
  %28 = tail call ptr @alloc_loop() #19
  %29 = getelementptr inbounds %struct.edge_def, ptr %25, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !60
  %31 = getelementptr inbounds %struct.loop, ptr %28, i64 0, i32 2
  store ptr %30, ptr %31, align 8, !tbaa !18
  %32 = load ptr, ptr %1, align 8, !tbaa !24
  %33 = getelementptr inbounds %struct.loop, ptr %28, i64 0, i32 3
  store ptr %32, ptr %33, align 8, !tbaa !22
  tail call void @add_loop(ptr noundef %28, ptr noundef %0) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @merge_latch_edges(ptr nocapture noundef %0) unnamed_addr #3 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  %4 = tail call fastcc ptr @get_loop_latch_edges(ptr noundef %0) #19
  store ptr %4, ptr %2, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %5 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %4) #19
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 690, ptr noundef nonnull @.str.1) #20
  br label %8

8:                                                ; preds = %1, %7
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %4) #19
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %4, i32 noundef 0) #19
  br label %38

13:                                               ; preds = %8
  %14 = load ptr, ptr @dump_file, align 8, !tbaa !15
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load i32, ptr %0, align 8, !tbaa !19
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %14, ptr noundef nonnull @.str.19, i32 noundef %17) #19
  br label %19

19:                                               ; preds = %16, %13
  %20 = tail call ptr @pointer_set_create() #20
  store ptr %20, ptr @mfb_reis_set, align 8, !tbaa !15
  %21 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %3) #19, !range !23
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %19, %23
  %24 = phi i32 [ %28, %23 ], [ 0, %19 ]
  %25 = load ptr, ptr @mfb_reis_set, align 8, !tbaa !15
  %26 = load ptr, ptr %3, align 8, !tbaa !15
  %27 = tail call i32 @pointer_set_insert(ptr noundef %25, ptr noundef %26) #20
  %28 = add i32 %24, 1
  %29 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %4, i32 noundef %28, ptr noundef nonnull %3) #19, !range !23
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %23, !llvm.loop !101

31:                                               ; preds = %23, %19
  %32 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !18
  %34 = tail call ptr @make_forwarder_block(ptr noundef %33, ptr noundef nonnull @mfb_redirect_edges_in_set, ptr noundef null) #20
  %35 = load ptr, ptr @mfb_reis_set, align 8, !tbaa !15
  tail call void @pointer_set_destroy(ptr noundef %35) #20
  %36 = getelementptr inbounds %struct.edge_def, ptr %34, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !60
  store ptr %37, ptr %32, align 8, !tbaa !18
  br label %38

38:                                               ; preds = %31, %11
  %39 = phi ptr [ %34, %31 ], [ %12, %11 ]
  %40 = load ptr, ptr %39, align 8, !tbaa !24
  %41 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  store ptr %40, ptr %41, align 8, !tbaa !22
  call fastcc void @VEC_edge_heap_free(ptr noundef nonnull %2) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc ptr @find_subloop_latch_edge_by_profile(ptr noundef %0) unnamed_addr #14 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  %3 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #19, !range !23
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %38, label %5

5:                                                ; preds = %1, %5
  %6 = phi i64 [ %16, %5 ], [ 0, %1 ]
  %7 = phi i64 [ %15, %5 ], [ 0, %1 ]
  %8 = phi ptr [ %14, %5 ], [ null, %1 ]
  %9 = phi i32 [ %17, %5 ], [ 0, %1 ]
  %10 = load ptr, ptr %2, align 8, !tbaa !15
  %11 = getelementptr inbounds %struct.edge_def, ptr %10, i64 0, i32 9
  %12 = load i64, ptr %11, align 8, !tbaa !102
  %13 = icmp sgt i64 %12, %7
  %14 = select i1 %13, ptr %10, ptr %8
  %15 = tail call i64 @llvm.smax.i64(i64 %12, i64 %7)
  %16 = add nsw i64 %12, %6
  %17 = add i32 %9, 1
  %18 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %0, i32 noundef %17, ptr noundef nonnull %2) #19, !range !23
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %5, !llvm.loop !103

20:                                               ; preds = %5
  %21 = icmp slt i64 %16, 10
  br i1 %21, label %38, label %22

22:                                               ; preds = %20
  %23 = sub nsw i64 %16, %15
  %24 = shl nsw i64 %23, 3
  %25 = icmp sgt i64 %24, %16
  br i1 %25, label %38, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr @dump_file, align 8, !tbaa !15
  %28 = icmp eq ptr %27, null
  br i1 %28, label %38, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr %14, align 8, !tbaa !24
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 9
  %32 = load i32, ptr %31, align 8, !tbaa !20
  %33 = getelementptr inbounds %struct.edge_def, ptr %14, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !60
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 9
  %36 = load i32, ptr %35, align 8, !tbaa !20
  %37 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %27, ptr noundef nonnull @.str.16, i32 noundef %32, i32 noundef %36) #19
  br label %38

38:                                               ; preds = %1, %26, %29, %20, %22
  %39 = phi ptr [ null, %22 ], [ null, %20 ], [ %14, %29 ], [ %14, %26 ], [ null, %1 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  ret ptr %39
}

; Function Attrs: optsize
declare i32 @current_ir_type() local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_subloop_latch_edge_by_ivs(ptr noundef readonly %0, ptr noundef %1) unnamed_addr #3 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %5 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %1, i32 noundef 0) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #21
  %6 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %1, i32 noundef 1, ptr noundef nonnull %3) #19, !range !23
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %12, %2
  %9 = phi ptr [ %5, %2 ], [ %20, %12 ]
  %10 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %3) #19, !range !23
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %35, label %28

12:                                               ; preds = %2, %12
  %13 = phi ptr [ %20, %12 ], [ %5, %2 ]
  %14 = phi i32 [ %21, %12 ], [ 1, %2 ]
  %15 = load ptr, ptr %13, align 8, !tbaa !24
  %16 = load ptr, ptr %3, align 8
  %17 = load ptr, ptr %16, align 8, !tbaa !24
  %18 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %15, ptr noundef %17) #20
  %19 = icmp eq i8 %18, 0
  %20 = select i1 %19, ptr %13, ptr %16
  %21 = add i32 %14, 1
  %22 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %1, i32 noundef %21, ptr noundef nonnull %3) #19, !range !23
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %8, label %12, !llvm.loop !104

24:                                               ; preds = %28
  %25 = add i32 %29, 1
  %26 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %1, i32 noundef %25, ptr noundef nonnull %3) #19, !range !23
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %35, label %28, !llvm.loop !105

28:                                               ; preds = %8, %24
  %29 = phi i32 [ %25, %24 ], [ 0, %8 ]
  %30 = load ptr, ptr %3, align 8, !tbaa !15
  %31 = load ptr, ptr %30, align 8, !tbaa !24
  %32 = load ptr, ptr %9, align 8, !tbaa !24
  %33 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %31, ptr noundef %32) #20
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %92, label %24

35:                                               ; preds = %24, %8
  %36 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !18
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %37) #20
  %38 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #19, !range !33
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %80

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 6
  br label %42

42:                                               ; preds = %40, %77
  %43 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #19
  %44 = load i32, ptr %41, align 4, !tbaa !106
  %45 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %43, i32 noundef %44) #19
  %46 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %45) #19
  %47 = load i64, ptr %46, align 8
  %48 = and i64 %47, 65535
  %49 = icmp eq i64 %48, 141
  br i1 %49, label %50, label %77

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.tree_ssa_name, ptr %46, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !98
  %53 = icmp eq ptr %52, %43
  br i1 %53, label %77, label %54

54:                                               ; preds = %50
  %55 = call fastcc ptr @gimple_bb(ptr noundef %52) #19
  %56 = icmp eq ptr %55, null
  br i1 %56, label %77, label %57

57:                                               ; preds = %54
  %58 = call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %0, ptr noundef nonnull %55) #19, !range !33
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %77, label %60

60:                                               ; preds = %57
  %61 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %3) #19, !range !23
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %77, label %63

63:                                               ; preds = %60, %73
  %64 = phi i32 [ %74, %73 ], [ 0, %60 ]
  %65 = load ptr, ptr %3, align 8, !tbaa !15
  %66 = icmp eq ptr %65, %9
  br i1 %66, label %73, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.edge_def, ptr %65, i64 0, i32 6
  %69 = load i32, ptr %68, align 4, !tbaa !106
  %70 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %43, i32 noundef %69) #19
  %71 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %70) #19
  %72 = icmp eq ptr %71, %46
  br i1 %72, label %92, label %73

73:                                               ; preds = %63, %67
  %74 = add i32 %64, 1
  %75 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %1, i32 noundef %74, ptr noundef nonnull %3) #19, !range !23
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %63, !llvm.loop !107

77:                                               ; preds = %73, %60, %54, %57, %42, %50
  call fastcc void @gsi_next(ptr noundef nonnull %4) #19
  %78 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #19, !range !33
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %42, label %80, !llvm.loop !108

80:                                               ; preds = %77, %35
  %81 = load ptr, ptr @dump_file, align 8, !tbaa !15
  %82 = icmp eq ptr %81, null
  br i1 %82, label %92, label %83

83:                                               ; preds = %80
  %84 = load ptr, ptr %9, align 8, !tbaa !24
  %85 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 9
  %86 = load i32, ptr %85, align 8, !tbaa !20
  %87 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !60
  %89 = getelementptr inbounds %struct.basic_block_def, ptr %88, i64 0, i32 9
  %90 = load i32, ptr %89, align 8, !tbaa !20
  %91 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %81, ptr noundef nonnull @.str.17, i32 noundef %86, i32 noundef %90) #19
  br label %92

92:                                               ; preds = %28, %67, %80, %83
  %93 = phi ptr [ %9, %83 ], [ %9, %80 ], [ null, %67 ], [ null, %28 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret ptr %93
}

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !109
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !109
  %3 = load ptr, ptr %2, align 8, !tbaa !111
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !113
  %4 = load ptr, ptr %3, align 8, !tbaa !15
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #3 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #19
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !98
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #15 {
  %2 = load ptr, ptr %0, align 8, !tbaa !109
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !115
  store ptr %4, ptr %0, align 8, !tbaa !109
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !98
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.18, i32 noundef 3103, ptr noundef nonnull @.str.1) #20
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: optsize
declare ptr @pointer_set_create() local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @pointer_set_insert(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @make_forwarder_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @mfb_redirect_edges_in_set(ptr noundef %0) #3 {
  %2 = load ptr, ptr @mfb_reis_set, align 8, !tbaa !15
  %3 = tail call i32 @pointer_set_contains(ptr noundef %2, ptr noundef %0) #20
  %4 = trunc i32 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare void @pointer_set_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @add_loop(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @pointer_set_contains(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @get_loop_body_with_size(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !18
  %6 = tail call i32 @dfs_enumerate_from(ptr noundef %5, i32 noundef 1, ptr noundef nonnull @glb_enum_p, ptr noundef %1, i32 noundef %2, ptr noundef %0) #20
  ret i32 %6
}

; Function Attrs: optsize
declare i32 @dfs_enumerate_from(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @glb_enum_p(ptr noundef %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !18
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %0, ptr noundef %4) #20
  %8 = icmp ne i8 %7, 0
  %9 = zext i1 %8 to i8
  br label %10

10:                                               ; preds = %6, %2
  %11 = phi i8 [ 0, %2 ], [ %9, %6 ]
  ret i8 %11
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_loop_body_in_dom_order(ptr noundef %0) local_unnamed_addr #3 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #21
  %3 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !28
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 878, ptr noundef nonnull @.str.1) #20
  %7 = load i32, ptr %3, align 4, !tbaa !28
  br label %8

8:                                                ; preds = %1, %6
  %9 = phi i32 [ %4, %1 ], [ %7, %6 ]
  %10 = zext i32 %9 to i64
  %11 = tail call ptr @xcalloc(i64 noundef %10, i64 noundef 8) #20
  %12 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !22
  %14 = load ptr, ptr @cfun, align 8, !tbaa !15
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !37
  %17 = getelementptr inbounds %struct.control_flow_graph, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !39
  %19 = icmp eq ptr %13, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 882, ptr noundef nonnull @.str.1) #20
  br label %21

21:                                               ; preds = %8, %20
  store i32 0, ptr %2, align 4, !tbaa !31
  %22 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !18
  call fastcc void @fill_sons_in_loop(ptr noundef nonnull %0, ptr noundef %23, ptr noundef %11, ptr noundef nonnull %2) #19
  %24 = load i32, ptr %2, align 4, !tbaa !31
  %25 = load i32, ptr %3, align 4, !tbaa !28
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 887, ptr noundef nonnull @.str.1) #20
  br label %28

28:                                               ; preds = %21, %27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #21
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fill_sons_in_loop(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef %3) unnamed_addr #3 {
  %5 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  br label %6

6:                                                ; preds = %28, %4
  %7 = phi ptr [ %1, %4 ], [ %25, %28 ]
  %8 = load i32, ptr %3, align 4, !tbaa !31
  %9 = add nsw i32 %8, 1
  store i32 %9, ptr %3, align 4, !tbaa !31
  %10 = sext i32 %8 to i64
  %11 = getelementptr inbounds ptr, ptr %2, i64 %10
  store ptr %7, ptr %11, align 8, !tbaa !15
  %12 = tail call ptr @first_dom_son(i32 noundef 1, ptr noundef %7) #20
  %13 = icmp eq ptr %12, null
  br i1 %13, label %30, label %14

14:                                               ; preds = %6, %24
  %15 = phi ptr [ %25, %24 ], [ null, %6 ]
  %16 = phi ptr [ %26, %24 ], [ %12, %6 ]
  %17 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %0, ptr noundef nonnull %16) #19, !range !33
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load ptr, ptr %5, align 8, !tbaa !22
  %21 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %20, ptr noundef nonnull %16) #20
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  tail call fastcc void @fill_sons_in_loop(ptr noundef nonnull %0, ptr noundef nonnull %16, ptr noundef %2, ptr noundef nonnull %3) #19
  br label %24

24:                                               ; preds = %19, %14, %23
  %25 = phi ptr [ %15, %23 ], [ %15, %14 ], [ %16, %19 ]
  %26 = tail call ptr @next_dom_son(i32 noundef 1, ptr noundef nonnull %16) #20
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %14, !llvm.loop !116

28:                                               ; preds = %24
  %29 = icmp eq ptr %25, null
  br i1 %29, label %30, label %6

30:                                               ; preds = %6, %28
  ret void
}

; Function Attrs: optsize
declare ptr @first_dom_son(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @next_dom_son(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @get_loop_body_in_custom_order(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = tail call ptr @get_loop_body(ptr noundef %0) #19
  %4 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !28
  %6 = zext i32 %5 to i64
  tail call void @spec_qsort(ptr noundef %3, i64 noundef %6, i64 noundef 8, ptr noundef %1) #20
  ret ptr %3
}

; Function Attrs: optsize
declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_loop_body_in_bfs_order(ptr noundef readonly %0) local_unnamed_addr #3 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !28
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 920, ptr noundef nonnull @.str.1) #20
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !22
  %11 = load ptr, ptr @cfun, align 8, !tbaa !15
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !37
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !39
  %16 = icmp eq ptr %10, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 921, ptr noundef nonnull @.str.1) #20
  br label %18

18:                                               ; preds = %8, %17
  %19 = load i32, ptr %4, align 4, !tbaa !28
  %20 = zext i32 %19 to i64
  %21 = tail call ptr @xcalloc(i64 noundef %20, i64 noundef 8) #20
  %22 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  %23 = load i32, ptr %4, align 4, !tbaa !28
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %87, label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !18
  %28 = getelementptr inbounds i8, ptr %3, i64 8
  br label %29

29:                                               ; preds = %25, %80
  %30 = phi ptr [ %27, %25 ], [ %84, %80 ]
  %31 = phi i32 [ 0, %25 ], [ %77, %80 ]
  %32 = phi i32 [ 1, %25 ], [ %81, %80 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #21
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 9
  %34 = load i32, ptr %33, align 8, !tbaa !20
  %35 = tail call i32 @bitmap_bit_p(ptr noundef %22, i32 noundef %34) #20
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %29
  %38 = load i32, ptr %33, align 8, !tbaa !20
  %39 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %22, i32 noundef %38) #20
  %40 = add nuw i32 %31, 1
  %41 = zext i32 %31 to i64
  %42 = getelementptr inbounds ptr, ptr %21, i64 %41
  store ptr %30, ptr %42, align 8, !tbaa !15
  br label %43

43:                                               ; preds = %37, %29
  %44 = phi i32 [ %31, %29 ], [ %40, %37 ]
  %45 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 1
  %46 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %45) #19
  store i32 0, ptr %3, align 8, !tbaa.struct !30
  store ptr %46, ptr %28, align 8, !tbaa.struct !32
  %47 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %46, ptr noundef nonnull %2) #19, !range !33
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %76, label %49

49:                                               ; preds = %43, %70
  %50 = phi i32 [ %71, %70 ], [ %44, %43 ]
  %51 = load ptr, ptr %2, align 8, !tbaa !15
  %52 = getelementptr inbounds %struct.edge_def, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !60
  %54 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %0, ptr noundef %53) #19, !range !33
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %70, label %56

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.basic_block_def, ptr %53, i64 0, i32 9
  %58 = load i32, ptr %57, align 8, !tbaa !20
  %59 = tail call i32 @bitmap_bit_p(ptr noundef %22, i32 noundef %58) #20
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %56
  %62 = load ptr, ptr %52, align 8, !tbaa !60
  %63 = getelementptr inbounds %struct.basic_block_def, ptr %62, i64 0, i32 9
  %64 = load i32, ptr %63, align 8, !tbaa !20
  %65 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %22, i32 noundef %64) #20
  %66 = load ptr, ptr %52, align 8, !tbaa !60
  %67 = add i32 %50, 1
  %68 = zext i32 %50 to i64
  %69 = getelementptr inbounds ptr, ptr %21, i64 %68
  store ptr %66, ptr %69, align 8, !tbaa !15
  br label %70

70:                                               ; preds = %49, %61, %56
  %71 = phi i32 [ %50, %56 ], [ %67, %61 ], [ %50, %49 ]
  call fastcc void @ei_next(ptr noundef nonnull %3) #19
  %72 = load i32, ptr %3, align 8
  %73 = load ptr, ptr %28, align 8
  %74 = call fastcc zeroext i8 @ei_cond(i32 %72, ptr %73, ptr noundef nonnull %2) #19, !range !33
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %49, !llvm.loop !117

76:                                               ; preds = %70, %43
  %77 = phi i32 [ %44, %43 ], [ %71, %70 ]
  %78 = icmp ult i32 %77, %32
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 951, ptr noundef nonnull @.str.1) #20
  br label %80

80:                                               ; preds = %76, %79
  %81 = add i32 %32, 1
  %82 = zext i32 %32 to i64
  %83 = getelementptr inbounds ptr, ptr %21, i64 %82
  %84 = load ptr, ptr %83, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  %85 = load i32, ptr %4, align 4, !tbaa !28
  %86 = icmp ult i32 %77, %85
  br i1 %86, label %29, label %87, !llvm.loop !118

87:                                               ; preds = %80, %18
  tail call void @bitmap_obstack_free(ptr noundef %22) #20
  ret ptr %21
}

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @rescan_loop_exit(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #3 {
  %4 = tail call fastcc zeroext i8 @loops_state_satisfies_p(i32 noundef 8) #19, !range !33
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %68, label %6

6:                                                ; preds = %3
  %7 = icmp eq i8 %2, 0
  br i1 %7, label %8, label %41

8:                                                ; preds = %6
  %9 = load ptr, ptr %0, align 8, !tbaa !24
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !71
  %12 = icmp eq ptr %11, null
  br i1 %12, label %41, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !60
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !71
  %18 = icmp eq ptr %17, null
  br i1 %18, label %41, label %19

19:                                               ; preds = %13
  %20 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef nonnull %11, ptr noundef nonnull %15) #19, !range !33
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %41

22:                                               ; preds = %19
  %23 = tail call ptr @find_common_loop(ptr noundef nonnull %11, ptr noundef nonnull %17) #19
  %24 = icmp eq ptr %11, %23
  br i1 %24, label %41, label %25

25:                                               ; preds = %22, %25
  %26 = phi ptr [ %28, %25 ], [ null, %22 ]
  %27 = phi ptr [ %39, %25 ], [ %11, %22 ]
  %28 = tail call ptr @ggc_alloc_stat(i64 noundef 32) #20
  store ptr %0, ptr %28, align 8, !tbaa !119
  %29 = getelementptr inbounds %struct.loop, ptr %27, i64 0, i32 18
  %30 = load ptr, ptr %29, align 8, !tbaa !65
  %31 = getelementptr inbounds %struct.loop_exit, ptr %30, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !66
  %33 = getelementptr inbounds %struct.loop_exit, ptr %28, i64 0, i32 2
  store ptr %32, ptr %33, align 8, !tbaa !66
  %34 = getelementptr inbounds %struct.loop_exit, ptr %28, i64 0, i32 1
  store ptr %30, ptr %34, align 8, !tbaa !68
  %35 = getelementptr inbounds %struct.loop_exit, ptr %32, i64 0, i32 1
  store ptr %28, ptr %35, align 8, !tbaa !68
  %36 = load ptr, ptr %34, align 8, !tbaa !68
  %37 = getelementptr inbounds %struct.loop_exit, ptr %36, i64 0, i32 2
  store ptr %28, ptr %37, align 8, !tbaa !66
  %38 = getelementptr inbounds %struct.loop_exit, ptr %28, i64 0, i32 3
  store ptr %26, ptr %38, align 8, !tbaa !120
  %39 = tail call fastcc ptr @loop_outer(ptr noundef %27) #19
  %40 = icmp eq ptr %39, %23
  br i1 %40, label %43, label %25, !llvm.loop !121

41:                                               ; preds = %22, %19, %13, %8, %6
  %42 = icmp eq i8 %1, 0
  br i1 %42, label %43, label %68

43:                                               ; preds = %25, %41
  %44 = phi ptr [ null, %41 ], [ %28, %25 ]
  %45 = load ptr, ptr @cfun, align 8, !tbaa !15
  %46 = getelementptr inbounds %struct.function, ptr %45, i64 0, i32 4
  %47 = load ptr, ptr %46, align 8, !tbaa !48
  %48 = getelementptr inbounds %struct.loops, ptr %47, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !97
  %50 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !15
  %51 = tail call i32 %50(ptr noundef %0) #20
  %52 = icmp ne ptr %44, null
  %53 = zext i1 %52 to i32
  %54 = tail call ptr @htab_find_slot_with_hash(ptr noundef %49, ptr noundef %0, i32 noundef %51, i32 noundef %53) #20
  %55 = icmp eq ptr %54, null
  br i1 %55, label %68, label %56

56:                                               ; preds = %43
  br i1 %52, label %57, label %62

57:                                               ; preds = %56
  %58 = load ptr, ptr %54, align 8, !tbaa !15
  %59 = icmp eq ptr %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %57
  tail call void @loop_exit_free(ptr noundef nonnull %58) #19
  br label %61

61:                                               ; preds = %60, %57
  store ptr %44, ptr %54, align 8, !tbaa !15
  br label %68

62:                                               ; preds = %56
  %63 = load ptr, ptr @cfun, align 8, !tbaa !15
  %64 = getelementptr inbounds %struct.function, ptr %63, i64 0, i32 4
  %65 = load ptr, ptr %64, align 8, !tbaa !48
  %66 = getelementptr inbounds %struct.loops, ptr %65, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !97
  tail call void @htab_clear_slot(ptr noundef %67, ptr noundef nonnull %54) #20
  br label %68

68:                                               ; preds = %61, %62, %43, %41, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @loops_state_satisfies_p(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !15
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  %5 = load i32, ptr %4, align 8, !tbaa !122
  %6 = and i32 %5, %0
  %7 = icmp eq i32 %6, %0
  %8 = zext i1 %7 to i8
  ret i8 %8
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @find_common_loop(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #16 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %30, label %4

4:                                                ; preds = %2
  %5 = icmp eq ptr %1, null
  br i1 %5, label %30, label %6

6:                                                ; preds = %4
  %7 = tail call fastcc i32 @loop_depth(ptr noundef nonnull %0) #19
  %8 = tail call fastcc i32 @loop_depth(ptr noundef nonnull %1) #19
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !6
  %13 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %12, i32 noundef %7) #19
  br label %20

14:                                               ; preds = %6
  %15 = icmp ugt i32 %7, %8
  br i1 %15, label %16, label %20

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !6
  %19 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %18, i32 noundef %8) #19
  br label %20

20:                                               ; preds = %14, %16, %10
  %21 = phi ptr [ %13, %10 ], [ %1, %16 ], [ %1, %14 ]
  %22 = phi ptr [ %0, %10 ], [ %19, %16 ], [ %0, %14 ]
  %23 = icmp eq ptr %22, %21
  br i1 %23, label %30, label %24

24:                                               ; preds = %20, %24
  %25 = phi ptr [ %27, %24 ], [ %22, %20 ]
  %26 = phi ptr [ %28, %24 ], [ %21, %20 ]
  %27 = tail call fastcc ptr @loop_outer(ptr noundef %25) #19
  %28 = tail call fastcc ptr @loop_outer(ptr noundef %26) #19
  %29 = icmp eq ptr %27, %28
  br i1 %29, label %30, label %24, !llvm.loop !123

30:                                               ; preds = %24, %20, %4, %2
  %31 = phi ptr [ %1, %2 ], [ %0, %4 ], [ %21, %20 ], [ %27, %24 ]
  ret ptr %31
}

; Function Attrs: optsize
declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal void @loop_exit_free(ptr noundef %0) #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1, %3
  %4 = phi ptr [ %6, %3 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.loop_exit, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !120
  %7 = getelementptr inbounds %struct.loop_exit, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !68
  %9 = getelementptr inbounds %struct.loop_exit, ptr %4, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !66
  %11 = getelementptr inbounds %struct.loop_exit, ptr %10, i64 0, i32 1
  store ptr %8, ptr %11, align 8, !tbaa !68
  %12 = getelementptr inbounds %struct.loop_exit, ptr %8, i64 0, i32 2
  store ptr %10, ptr %12, align 8, !tbaa !66
  tail call void @ggc_free(ptr noundef nonnull %4) #20
  %13 = icmp eq ptr %6, null
  br i1 %13, label %14, label %3, !llvm.loop !124

14:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: optsize
declare void @htab_clear_slot(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @record_loop_exits() local_unnamed_addr #3 {
  %1 = alloca %struct.edge_iterator, align 8
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  %3 = load ptr, ptr @cfun, align 8, !tbaa !15
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = icmp eq ptr %5, null
  br i1 %6, label %58, label %7

7:                                                ; preds = %0
  %8 = tail call fastcc zeroext i8 @loops_state_satisfies_p(i32 noundef 8) #19, !range !33
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %58

10:                                               ; preds = %7
  tail call fastcc void @loops_state_set() #19
  %11 = load ptr, ptr @cfun, align 8, !tbaa !15
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !48
  %14 = getelementptr inbounds %struct.loops, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !97
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1082, ptr noundef nonnull @.str.1) #20
  br label %18

18:                                               ; preds = %10, %17
  %19 = tail call fastcc i32 @number_of_loops() #19
  %20 = shl i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = tail call ptr @htab_create_alloc(i64 noundef %21, ptr noundef nonnull @loop_exit_hash, ptr noundef nonnull @loop_exit_eq, ptr noundef nonnull @loop_exit_free, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #20
  %23 = load ptr, ptr @cfun, align 8, !tbaa !15
  %24 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !48
  %26 = getelementptr inbounds %struct.loops, ptr %25, i64 0, i32 2
  store ptr %22, ptr %26, align 8, !tbaa !97
  %27 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !37
  %29 = load ptr, ptr %28, align 8, !tbaa !42
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !43
  %32 = getelementptr inbounds %struct.control_flow_graph, ptr %28, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !39
  %34 = icmp eq ptr %31, %33
  br i1 %34, label %58, label %35

35:                                               ; preds = %18
  %36 = getelementptr inbounds i8, ptr %1, i64 8
  br label %46

37:                                               ; preds = %52, %46
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %47, i64 0, i32 6
  %39 = load ptr, ptr %38, align 8, !tbaa !43
  %40 = load ptr, ptr @cfun, align 8, !tbaa !15
  %41 = getelementptr inbounds %struct.function, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !37
  %43 = getelementptr inbounds %struct.control_flow_graph, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !39
  %45 = icmp eq ptr %39, %44
  br i1 %45, label %58, label %46, !llvm.loop !125

46:                                               ; preds = %35, %37
  %47 = phi ptr [ %31, %35 ], [ %39, %37 ]
  %48 = getelementptr inbounds %struct.basic_block_def, ptr %47, i64 0, i32 1
  %49 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %48) #19
  store i32 0, ptr %1, align 8, !tbaa.struct !30
  store ptr %49, ptr %36, align 8, !tbaa.struct !32
  %50 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %49, ptr noundef nonnull %2) #19, !range !33
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %37, label %52

52:                                               ; preds = %46, %52
  %53 = load ptr, ptr %2, align 8, !tbaa !15
  tail call void @rescan_loop_exit(ptr noundef %53, i8 noundef zeroext 1, i8 noundef zeroext 0) #19
  call fastcc void @ei_next(ptr noundef nonnull %1) #19
  %54 = load i32, ptr %1, align 8
  %55 = load ptr, ptr %36, align 8
  %56 = call fastcc zeroext i8 @ei_cond(i32 %54, ptr %55, ptr noundef nonnull %2) #19, !range !33
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %37, label %52, !llvm.loop !126

58:                                               ; preds = %37, %18, %7, %0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @loops_state_set() unnamed_addr #12 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !15
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = load i32, ptr %3, align 8, !tbaa !122
  %5 = or i32 %4, 8
  store i32 %5, ptr %3, align 8, !tbaa !122
  ret void
}

; Function Attrs: optsize
declare ptr @htab_create_alloc(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @loop_exit_hash(ptr nocapture noundef readonly %0) #3 {
  %2 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !15
  %3 = load ptr, ptr %0, align 8, !tbaa !119
  %4 = tail call i32 %2(ptr noundef %3) #20
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @loop_exit_eq(ptr nocapture noundef readonly %0, ptr noundef readnone %1) #2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !119
  %4 = icmp eq ptr %3, %1
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: optsize
declare ptr @ggc_calloc(i64 noundef, i64 noundef) #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_recorded_exits(ptr noundef %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !15
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  %5 = getelementptr inbounds %struct.loops, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !97
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void @htab_traverse(ptr noundef nonnull %6, ptr noundef nonnull @dump_recorded_exit, ptr noundef %0) #20
  br label %9

9:                                                ; preds = %1, %8
  ret void
}

; Function Attrs: optsize
declare void @htab_traverse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal noundef i32 @dump_recorded_exit(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #14 {
  %3 = load ptr, ptr %0, align 8, !tbaa !15
  %4 = load ptr, ptr %3, align 8, !tbaa !119
  br label %5

5:                                                ; preds = %2, %5
  %6 = phi ptr [ %3, %2 ], [ %10, %5 ]
  %7 = phi i32 [ 0, %2 ], [ %8, %5 ]
  %8 = add i32 %7, 1
  %9 = getelementptr inbounds %struct.loop_exit, ptr %6, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !120
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %5, !llvm.loop !127

12:                                               ; preds = %5
  %13 = load ptr, ptr %4, align 8, !tbaa !24
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 9
  %15 = load i32, ptr %14, align 8, !tbaa !20
  %16 = getelementptr inbounds %struct.edge_def, ptr %4, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !60
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 9
  %19 = load i32, ptr %18, align 8, !tbaa !20
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.20, i32 noundef %15, i32 noundef %19, i32 noundef %8) #19
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @release_recorded_exits() local_unnamed_addr #3 {
  %1 = tail call fastcc zeroext i8 @loops_state_satisfies_p(i32 noundef 8) #19, !range !33
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1133, ptr noundef nonnull @.str.1) #20
  br label %4

4:                                                ; preds = %0, %3
  %5 = load ptr, ptr @cfun, align 8, !tbaa !15
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = getelementptr inbounds %struct.loops, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !97
  tail call void @htab_delete(ptr noundef %9) #20
  %10 = load ptr, ptr @cfun, align 8, !tbaa !15
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !48
  %13 = getelementptr inbounds %struct.loops, ptr %12, i64 0, i32 2
  store ptr null, ptr %13, align 8, !tbaa !97
  tail call fastcc void @loops_state_clear() #19
  ret void
}

; Function Attrs: optsize
declare void @htab_delete(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @loops_state_clear() unnamed_addr #12 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !15
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %0
  %6 = load i32, ptr %3, align 8, !tbaa !122
  %7 = and i32 %6, -9
  store i32 %7, ptr %3, align 8, !tbaa !122
  br label %8

8:                                                ; preds = %0, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_loop_exit_edges(ptr noundef %0) local_unnamed_addr #3 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  store ptr null, ptr %2, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #21
  %5 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !22
  %7 = load ptr, ptr @cfun, align 8, !tbaa !15
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !37
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !39
  %12 = icmp eq ptr %6, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1151, ptr noundef nonnull @.str.1) #20
  br label %14

14:                                               ; preds = %1, %13
  %15 = tail call fastcc zeroext i8 @loops_state_satisfies_p(i32 noundef 8) #19, !range !33
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 18
  %19 = load ptr, ptr %18, align 8, !tbaa !65
  %20 = getelementptr inbounds %struct.loop_exit, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !66
  %22 = load ptr, ptr %21, align 8, !tbaa !119
  %23 = icmp eq ptr %22, null
  br i1 %23, label %64, label %24

24:                                               ; preds = %17, %24
  %25 = phi ptr [ %29, %24 ], [ %22, %17 ]
  %26 = phi ptr [ %28, %24 ], [ %21, %17 ]
  call fastcc void @VEC_edge_heap_safe_push(ptr noundef nonnull %2, ptr noundef nonnull %25) #19
  %27 = getelementptr inbounds %struct.loop_exit, ptr %26, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !66
  %29 = load ptr, ptr %28, align 8, !tbaa !119
  %30 = icmp eq ptr %29, null
  br i1 %30, label %64, label %24, !llvm.loop !128

31:                                               ; preds = %14
  %32 = tail call ptr @get_loop_body(ptr noundef nonnull %0) #19
  %33 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %34 = load i32, ptr %33, align 4, !tbaa !28
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %63, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds i8, ptr %4, i64 8
  br label %38

38:                                               ; preds = %36, %58
  %39 = phi i64 [ 0, %36 ], [ %59, %58 ]
  %40 = getelementptr inbounds ptr, ptr %32, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !15
  %42 = getelementptr inbounds %struct.basic_block_def, ptr %41, i64 0, i32 1
  %43 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %42) #19
  store i32 0, ptr %4, align 8, !tbaa.struct !30
  store ptr %43, ptr %37, align 8, !tbaa.struct !32
  %44 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %43, ptr noundef nonnull %3) #19, !range !33
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %58, label %46

46:                                               ; preds = %38, %53
  %47 = load ptr, ptr %3, align 8, !tbaa !15
  %48 = getelementptr inbounds %struct.edge_def, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !60
  %50 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %0, ptr noundef %49) #19, !range !33
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  call fastcc void @VEC_edge_heap_safe_push(ptr noundef nonnull %2, ptr noundef nonnull %47) #19
  br label %53

53:                                               ; preds = %46, %52
  call fastcc void @ei_next(ptr noundef nonnull %4) #19
  %54 = load i32, ptr %4, align 8
  %55 = load ptr, ptr %37, align 8
  %56 = call fastcc zeroext i8 @ei_cond(i32 %54, ptr %55, ptr noundef nonnull %3) #19, !range !33
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %46, !llvm.loop !129

58:                                               ; preds = %53, %38
  %59 = add nuw nsw i64 %39, 1
  %60 = load i32, ptr %33, align 4, !tbaa !28
  %61 = zext i32 %60 to i64
  %62 = icmp ult i64 %59, %61
  br i1 %62, label %38, label %63, !llvm.loop !130

63:                                               ; preds = %58, %31
  tail call void @free(ptr noundef %32) #19
  br label %64

64:                                               ; preds = %24, %17, %63
  %65 = load ptr, ptr %2, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  ret ptr %65
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @num_loop_branches(ptr noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !22
  %4 = load ptr, ptr @cfun, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !37
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !39
  %9 = icmp eq ptr %3, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1183, ptr noundef nonnull @.str.1) #20
  br label %11

11:                                               ; preds = %1, %10
  %12 = tail call ptr @get_loop_body(ptr noundef nonnull %0) #19
  %13 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %14 = load i32, ptr %13, align 4, !tbaa !28
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %31, label %16

16:                                               ; preds = %11
  %17 = zext i32 %14 to i64
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi i64 [ 0, %16 ], [ %29, %18 ]
  %20 = phi i32 [ 0, %16 ], [ %28, %18 ]
  %21 = getelementptr inbounds ptr, ptr %12, i64 %19
  %22 = load ptr, ptr %21, align 8, !tbaa !15
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !131
  %25 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %24) #19
  %26 = icmp ugt i32 %25, 1
  %27 = zext i1 %26 to i32
  %28 = add i32 %20, %27
  %29 = add nuw nsw i64 %19, 1
  %30 = icmp eq i64 %29, %17
  br i1 %30, label %31, label %18, !llvm.loop !132

31:                                               ; preds = %18, %11
  %32 = phi i32 [ 0, %11 ], [ %28, %18 ]
  tail call void @free(ptr noundef %12) #19
  ret i32 %32
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @add_bb_to_loop(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !71
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1204, ptr noundef nonnull @.str.1) #20
  br label %10

10:                                               ; preds = %2, %9
  store ptr %1, ptr %6, align 8, !tbaa !71
  %11 = tail call fastcc i32 @loop_depth(ptr noundef %1) #19
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 10
  store i32 %11, ptr %12, align 4, !tbaa !72
  %13 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 6
  %14 = load i32, ptr %13, align 4, !tbaa !28
  %15 = add i32 %14, 1
  store i32 %15, ptr %13, align 4, !tbaa !28
  %16 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !6
  %18 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %17, i32 noundef 0, ptr noundef nonnull %3) #19, !range !23
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %10, %20
  %21 = phi i32 [ %26, %20 ], [ 0, %10 ]
  %22 = load ptr, ptr %3, align 8, !tbaa !15
  %23 = getelementptr inbounds %struct.loop, ptr %22, i64 0, i32 6
  %24 = load i32, ptr %23, align 4, !tbaa !28
  %25 = add i32 %24, 1
  store i32 %25, ptr %23, align 4, !tbaa !28
  %26 = add i32 %21, 1
  %27 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %17, i32 noundef %26, ptr noundef nonnull %3) #19, !range !23
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %20, !llvm.loop !133

29:                                               ; preds = %20, %10
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %31 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %30) #19
  store i32 0, ptr %4, align 8, !tbaa.struct !30
  %32 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %31, ptr %32, align 8, !tbaa.struct !32
  %33 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %31, ptr noundef nonnull %5) #19, !range !33
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %29, %35
  %36 = load ptr, ptr %5, align 8, !tbaa !15
  tail call void @rescan_loop_exit(ptr noundef %36, i8 noundef zeroext 1, i8 noundef zeroext 0) #19
  call fastcc void @ei_next(ptr noundef nonnull %4) #19
  %37 = load i32, ptr %4, align 8
  %38 = load ptr, ptr %32, align 8
  %39 = call fastcc zeroext i8 @ei_cond(i32 %37, ptr %38, ptr noundef nonnull %5) #19, !range !33
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %35, !llvm.loop !134

41:                                               ; preds = %35, %29
  %42 = tail call fastcc ptr @ei_start_1(ptr noundef %0) #19
  store i32 0, ptr %4, align 8, !tbaa.struct !30
  store ptr %42, ptr %32, align 8, !tbaa.struct !32
  %43 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %42, ptr noundef nonnull %5) #19, !range !33
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %41, %45
  %46 = load ptr, ptr %5, align 8, !tbaa !15
  tail call void @rescan_loop_exit(ptr noundef %46, i8 noundef zeroext 1, i8 noundef zeroext 0) #19
  call fastcc void @ei_next(ptr noundef nonnull %4) #19
  %47 = load i32, ptr %4, align 8
  %48 = load ptr, ptr %32, align 8
  %49 = call fastcc zeroext i8 @ei_cond(i32 %47, ptr %48, ptr noundef nonnull %5) #19, !range !33
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %45, !llvm.loop !135

51:                                               ; preds = %45, %41
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @remove_bb_from_loops(ptr noundef %0) local_unnamed_addr #3 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1231, ptr noundef nonnull @.str.1) #20
  br label %9

9:                                                ; preds = %1, %8
  %10 = getelementptr inbounds %struct.loop, ptr %6, i64 0, i32 6
  %11 = load i32, ptr %10, align 4, !tbaa !28
  %12 = add i32 %11, -1
  store i32 %12, ptr %10, align 4, !tbaa !28
  %13 = getelementptr inbounds %struct.loop, ptr %6, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  %15 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %14, i32 noundef 0, ptr noundef nonnull %2) #19, !range !23
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %9, %17
  %18 = phi i32 [ %23, %17 ], [ 0, %9 ]
  %19 = load ptr, ptr %2, align 8, !tbaa !15
  %20 = getelementptr inbounds %struct.loop, ptr %19, i64 0, i32 6
  %21 = load i32, ptr %20, align 4, !tbaa !28
  %22 = add i32 %21, -1
  store i32 %22, ptr %20, align 4, !tbaa !28
  %23 = add nuw nsw i32 %18, 1
  %24 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %14, i32 noundef %23, ptr noundef nonnull %2) #19, !range !23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %17, !llvm.loop !136

26:                                               ; preds = %17, %9
  store ptr null, ptr %5, align 8, !tbaa !71
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 10
  store i32 0, ptr %27, align 4, !tbaa !72
  %28 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %29 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %28) #19
  store i32 0, ptr %3, align 8, !tbaa.struct !30
  %30 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %29, ptr %30, align 8, !tbaa.struct !32
  %31 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %29, ptr noundef nonnull %4) #19, !range !33
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %26, %33
  %34 = load ptr, ptr %4, align 8, !tbaa !15
  tail call void @rescan_loop_exit(ptr noundef %34, i8 noundef zeroext 0, i8 noundef zeroext 1) #19
  call fastcc void @ei_next(ptr noundef nonnull %3) #19
  %35 = load i32, ptr %3, align 8
  %36 = load ptr, ptr %30, align 8
  %37 = call fastcc zeroext i8 @ei_cond(i32 %35, ptr %36, ptr noundef nonnull %4) #19, !range !33
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %33, !llvm.loop !137

39:                                               ; preds = %33, %26
  %40 = tail call fastcc ptr @ei_start_1(ptr noundef %0) #19
  store i32 0, ptr %3, align 8, !tbaa.struct !30
  store ptr %40, ptr %30, align 8, !tbaa.struct !32
  %41 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %40, ptr noundef nonnull %4) #19, !range !33
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %39, %43
  %44 = load ptr, ptr %4, align 8, !tbaa !15
  tail call void @rescan_loop_exit(ptr noundef %44, i8 noundef zeroext 0, i8 noundef zeroext 1) #19
  call fastcc void @ei_next(ptr noundef nonnull %3) #19
  %45 = load i32, ptr %3, align 8
  %46 = load ptr, ptr %30, align 8
  %47 = call fastcc zeroext i8 @ei_cond(i32 %45, ptr %46, ptr noundef nonnull %4) #19, !range !33
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %43, !llvm.loop !138

49:                                               ; preds = %43, %39
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @delete_loop(ptr noundef %0) local_unnamed_addr #3 {
  tail call void @flow_loop_tree_node_remove(ptr noundef %0) #19
  %2 = load ptr, ptr @cfun, align 8, !tbaa !15
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  %5 = getelementptr inbounds %struct.loops, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !50
  %7 = load i32, ptr %0, align 8, !tbaa !19
  tail call fastcc void @VEC_loop_p_base_replace(ptr noundef %6, i32 noundef %7) #19
  tail call void @flow_loop_free(ptr noundef nonnull %0) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_loop_p_base_replace(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #6 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  store ptr null, ptr %4, align 8, !tbaa !15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cancel_loop_tree(ptr noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !56
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %1 ]
  tail call void @cancel_loop_tree(ptr noundef nonnull %6) #19
  %7 = load ptr, ptr %2, align 8, !tbaa !56
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !llvm.loop !139

9:                                                ; preds = %5, %1
  tail call fastcc void @cancel_loop(ptr noundef nonnull %0) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cancel_loop(ptr noundef %0) unnamed_addr #3 {
  %2 = tail call fastcc ptr @loop_outer(ptr noundef %0) #19
  %3 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !56
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1297, ptr noundef nonnull @.str.1) #20
  br label %7

7:                                                ; preds = %1, %6
  %8 = tail call ptr @get_loop_body(ptr noundef nonnull %0) #19
  %9 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !28
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %7
  %13 = zext i32 %10 to i64
  br label %14

14:                                               ; preds = %12, %14
  %15 = phi i64 [ 0, %12 ], [ %19, %14 ]
  %16 = getelementptr inbounds ptr, ptr %8, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !15
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 3
  store ptr %2, ptr %18, align 8, !tbaa !71
  %19 = add nuw nsw i64 %15, 1
  %20 = icmp eq i64 %19, %13
  br i1 %20, label %21, label %14, !llvm.loop !140

21:                                               ; preds = %14, %7
  tail call void @delete_loop(ptr noundef nonnull %0) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @verify_loop_structure() local_unnamed_addr #3 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = alloca %struct.loop_iterator, align 8
  %4 = alloca %struct.edge_iterator, align 8
  %5 = alloca %struct.edge_iterator, align 8
  %6 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  %7 = tail call fastcc i32 @number_of_loops() #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #21
  %8 = zext i32 %7 to i64
  %9 = tail call ptr @xcalloc(i64 noundef %8, i64 noundef 4) #20
  store i32 2, ptr %9, align 4, !tbaa !31
  %10 = load ptr, ptr @cfun, align 8, !tbaa !15
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !37
  %13 = load ptr, ptr %12, align 8, !tbaa !42
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %12, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !39
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !43
  %18 = icmp eq ptr %17, %15
  br i1 %18, label %37, label %23

19:                                               ; preds = %28, %23
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !43
  %22 = icmp eq ptr %21, %15
  br i1 %22, label %37, label %23, !llvm.loop !141

23:                                               ; preds = %0, %19
  %24 = phi ptr [ %21, %19 ], [ %17, %0 ]
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !71
  %27 = icmp eq ptr %26, null
  br i1 %27, label %19, label %28

28:                                               ; preds = %23, %28
  %29 = phi ptr [ %35, %28 ], [ %26, %23 ]
  %30 = load i32, ptr %29, align 8, !tbaa !19
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, ptr %9, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !31
  %34 = add i32 %33, 1
  store i32 %34, ptr %32, align 4, !tbaa !31
  %35 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %29) #19
  %36 = icmp eq ptr %35, null
  br i1 %36, label %19, label %28, !llvm.loop !142

37:                                               ; preds = %19, %0
  store ptr null, ptr %1, align 8, !tbaa !15
  call fastcc void @fel_init(ptr noundef nonnull %3, ptr noundef nonnull %1, i32 noundef 1) #19
  %38 = load ptr, ptr %1, align 8, !tbaa !15
  %39 = icmp eq ptr %38, null
  br i1 %39, label %55, label %40

40:                                               ; preds = %37, %51
  %41 = phi ptr [ %53, %51 ], [ %38, %37 ]
  %42 = phi i32 [ %52, %51 ], [ 0, %37 ]
  %43 = load i32, ptr %41, align 8, !tbaa !19
  %44 = getelementptr inbounds %struct.loop, ptr %41, i64 0, i32 6
  %45 = load i32, ptr %44, align 4, !tbaa !28
  %46 = zext i32 %43 to i64
  %47 = getelementptr inbounds i32, ptr %9, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !31
  %49 = icmp eq i32 %45, %48
  br i1 %49, label %51, label %50

50:                                               ; preds = %40
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.21, i32 noundef %43, i32 noundef %48, i32 noundef %45) #20
  br label %51

51:                                               ; preds = %40, %50
  %52 = phi i32 [ 1, %50 ], [ %42, %40 ]
  call fastcc void @fel_next(ptr noundef nonnull %3, ptr noundef nonnull %1) #19
  %53 = load ptr, ptr %1, align 8, !tbaa !15
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %40, !llvm.loop !143

55:                                               ; preds = %51, %37
  %56 = phi i32 [ 0, %37 ], [ %52, %51 ]
  call fastcc void @fel_init(ptr noundef nonnull %3, ptr noundef nonnull %1, i32 noundef 0) #19
  %57 = load ptr, ptr %1, align 8, !tbaa !15
  %58 = icmp eq ptr %57, null
  br i1 %58, label %89, label %59

59:                                               ; preds = %55, %85
  %60 = phi ptr [ %87, %85 ], [ %57, %55 ]
  %61 = phi i32 [ %86, %85 ], [ %56, %55 ]
  %62 = tail call ptr @get_loop_body(ptr noundef nonnull %60) #19
  %63 = getelementptr inbounds %struct.loop, ptr %60, i64 0, i32 6
  %64 = load i32, ptr %63, align 4, !tbaa !28
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %85, label %66

66:                                               ; preds = %59, %79
  %67 = phi i32 [ %80, %79 ], [ %64, %59 ]
  %68 = phi i64 [ %82, %79 ], [ 0, %59 ]
  %69 = phi i32 [ %81, %79 ], [ %61, %59 ]
  %70 = getelementptr inbounds ptr, ptr %62, i64 %68
  %71 = load ptr, ptr %70, align 8, !tbaa !15
  %72 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef nonnull %60, ptr noundef %71) #19, !range !33
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %66
  %75 = getelementptr inbounds %struct.basic_block_def, ptr %71, i64 0, i32 9
  %76 = load i32, ptr %75, align 8, !tbaa !20
  %77 = load i32, ptr %60, align 8, !tbaa !19
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.22, i32 noundef %76, i32 noundef %77) #20
  %78 = load i32, ptr %63, align 4, !tbaa !28
  br label %79

79:                                               ; preds = %66, %74
  %80 = phi i32 [ %67, %66 ], [ %78, %74 ]
  %81 = phi i32 [ %69, %66 ], [ 1, %74 ]
  %82 = add nuw nsw i64 %68, 1
  %83 = zext i32 %80 to i64
  %84 = icmp ult i64 %82, %83
  br i1 %84, label %66, label %85, !llvm.loop !144

85:                                               ; preds = %79, %59
  %86 = phi i32 [ %61, %59 ], [ %81, %79 ]
  tail call void @free(ptr noundef %62) #19
  call fastcc void @fel_next(ptr noundef nonnull %3, ptr noundef nonnull %1) #19
  %87 = load ptr, ptr %1, align 8, !tbaa !15
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %59, !llvm.loop !145

89:                                               ; preds = %85, %55
  %90 = phi i32 [ %56, %55 ], [ %86, %85 ]
  call fastcc void @fel_init(ptr noundef nonnull %3, ptr noundef nonnull %1, i32 noundef 0) #19
  %91 = load ptr, ptr %1, align 8, !tbaa !15
  %92 = icmp eq ptr %91, null
  br i1 %92, label %155, label %93

93:                                               ; preds = %89, %151
  %94 = phi ptr [ %153, %151 ], [ %91, %89 ]
  %95 = phi i32 [ %152, %151 ], [ %90, %89 ]
  %96 = load i32, ptr %94, align 8, !tbaa !19
  %97 = tail call fastcc zeroext i8 @loops_state_satisfies_p(i32 noundef 1) #19, !range !33
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %106, label %99

99:                                               ; preds = %93
  %100 = getelementptr inbounds %struct.loop, ptr %94, i64 0, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !18
  %102 = load ptr, ptr %101, align 8, !tbaa !146
  %103 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %102) #19
  %104 = icmp eq i32 %103, 2
  br i1 %104, label %106, label %105

105:                                              ; preds = %99
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.23, i32 noundef %96) #20
  br label %106

106:                                              ; preds = %105, %99, %93
  %107 = phi i32 [ 1, %105 ], [ %95, %99 ], [ %95, %93 ]
  %108 = tail call fastcc zeroext i8 @loops_state_satisfies_p(i32 noundef 2) #19, !range !33
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %132, label %110

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.loop, ptr %94, i64 0, i32 3
  %112 = load ptr, ptr %111, align 8, !tbaa !22
  %113 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %112) #19, !range !33
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.24, i32 noundef %96) #20
  %116 = load ptr, ptr %111, align 8, !tbaa !22
  br label %117

117:                                              ; preds = %115, %110
  %118 = phi ptr [ %112, %110 ], [ %116, %115 ]
  %119 = phi i32 [ %107, %110 ], [ 1, %115 ]
  %120 = tail call fastcc ptr @single_succ(ptr noundef %118) #19
  %121 = getelementptr inbounds %struct.loop, ptr %94, i64 0, i32 2
  %122 = load ptr, ptr %121, align 8, !tbaa !18
  %123 = icmp eq ptr %120, %122
  br i1 %123, label %125, label %124

124:                                              ; preds = %117
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.25, i32 noundef %96) #20
  br label %125

125:                                              ; preds = %124, %117
  %126 = phi i32 [ 1, %124 ], [ %119, %117 ]
  %127 = load ptr, ptr %111, align 8, !tbaa !22
  %128 = getelementptr inbounds %struct.basic_block_def, ptr %127, i64 0, i32 3
  %129 = load ptr, ptr %128, align 8, !tbaa !71
  %130 = icmp eq ptr %129, %94
  br i1 %130, label %132, label %131

131:                                              ; preds = %125
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.26, i32 noundef %96) #20
  br label %132

132:                                              ; preds = %125, %131, %106
  %133 = phi i32 [ 1, %131 ], [ %126, %125 ], [ %107, %106 ]
  %134 = getelementptr inbounds %struct.loop, ptr %94, i64 0, i32 2
  %135 = load ptr, ptr %134, align 8, !tbaa !18
  %136 = getelementptr inbounds %struct.basic_block_def, ptr %135, i64 0, i32 3
  %137 = load ptr, ptr %136, align 8, !tbaa !71
  %138 = icmp eq ptr %137, %94
  br i1 %138, label %140, label %139

139:                                              ; preds = %132
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.27, i32 noundef %96) #20
  br label %140

140:                                              ; preds = %139, %132
  %141 = phi i32 [ 1, %139 ], [ %133, %132 ]
  %142 = tail call fastcc zeroext i8 @loops_state_satisfies_p(i32 noundef 4) #19, !range !33
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %151, label %144

144:                                              ; preds = %140
  %145 = tail call ptr @loop_latch_edge(ptr noundef nonnull %94) #19
  %146 = getelementptr inbounds %struct.edge_def, ptr %145, i64 0, i32 7
  %147 = load i32, ptr %146, align 8, !tbaa !86
  %148 = and i32 %147, 128
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %144
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.28, i32 noundef %96) #20
  br label %151

151:                                              ; preds = %140, %144, %150
  %152 = phi i32 [ 1, %150 ], [ %141, %144 ], [ %141, %140 ]
  call fastcc void @fel_next(ptr noundef nonnull %3, ptr noundef nonnull %1) #19
  %153 = load ptr, ptr %1, align 8, !tbaa !15
  %154 = icmp eq ptr %153, null
  br i1 %154, label %155, label %93, !llvm.loop !147

155:                                              ; preds = %151, %89
  %156 = phi i32 [ %90, %89 ], [ %152, %151 ]
  %157 = tail call fastcc zeroext i8 @loops_state_satisfies_p(i32 noundef 4) #19, !range !33
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %291, label %159

159:                                              ; preds = %155
  %160 = load ptr, ptr @cfun, align 8, !tbaa !15
  %161 = getelementptr inbounds %struct.function, ptr %160, i64 0, i32 1
  %162 = load ptr, ptr %161, align 8, !tbaa !37
  %163 = getelementptr inbounds %struct.control_flow_graph, ptr %162, i64 0, i32 5
  %164 = load i32, ptr %163, align 8, !tbaa !85
  %165 = tail call ptr @sbitmap_alloc(i32 noundef %164) #20
  %166 = load ptr, ptr @cfun, align 8, !tbaa !15
  %167 = getelementptr inbounds %struct.function, ptr %166, i64 0, i32 1
  %168 = load ptr, ptr %167, align 8, !tbaa !37
  %169 = load ptr, ptr %168, align 8, !tbaa !42
  %170 = getelementptr inbounds %struct.basic_block_def, ptr %169, i64 0, i32 6
  %171 = load ptr, ptr %170, align 8, !tbaa !43
  %172 = getelementptr inbounds %struct.control_flow_graph, ptr %168, i64 0, i32 1
  %173 = load ptr, ptr %172, align 8, !tbaa !39
  %174 = icmp eq ptr %171, %173
  br i1 %174, label %214, label %175

175:                                              ; preds = %159
  %176 = getelementptr inbounds i8, ptr %4, i64 8
  br label %177

177:                                              ; preds = %175, %205
  %178 = phi ptr [ %171, %175 ], [ %207, %205 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #21
  %179 = getelementptr inbounds %struct.basic_block_def, ptr %178, i64 0, i32 13
  %180 = load i32, ptr %179, align 8, !tbaa !148
  %181 = and i32 %180, 4
  %182 = icmp eq i32 %181, 0
  %183 = getelementptr inbounds %struct.basic_block_def, ptr %178, i64 0, i32 9
  %184 = load i32, ptr %183, align 8, !tbaa !20
  br i1 %182, label %186, label %185

185:                                              ; preds = %177
  tail call fastcc void @SET_BIT(ptr noundef %165, i32 noundef %184) #19
  br label %187

186:                                              ; preds = %177
  tail call fastcc void @RESET_BIT(ptr noundef %165, i32 noundef %184) #19
  br label %187

187:                                              ; preds = %186, %185
  %188 = getelementptr inbounds %struct.basic_block_def, ptr %178, i64 0, i32 1
  %189 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %188) #19
  store i32 0, ptr %4, align 8, !tbaa.struct !30
  store ptr %189, ptr %176, align 8, !tbaa.struct !32
  %190 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %189, ptr noundef nonnull %2) #19, !range !33
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %205, label %192

192:                                              ; preds = %187, %200
  %193 = load ptr, ptr %2, align 8, !tbaa !15
  %194 = getelementptr inbounds %struct.edge_def, ptr %193, i64 0, i32 7
  %195 = load i32, ptr %194, align 8, !tbaa !86
  %196 = and i32 %195, 128
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %200, label %198

198:                                              ; preds = %192
  %199 = or i32 %195, 16384
  store i32 %199, ptr %194, align 8, !tbaa !86
  br label %200

200:                                              ; preds = %192, %198
  call fastcc void @ei_next(ptr noundef nonnull %4) #19
  %201 = load i32, ptr %4, align 8
  %202 = load ptr, ptr %176, align 8
  %203 = call fastcc zeroext i8 @ei_cond(i32 %201, ptr %202, ptr noundef nonnull %2) #19, !range !33
  %204 = icmp eq i8 %203, 0
  br i1 %204, label %205, label %192, !llvm.loop !149

205:                                              ; preds = %200, %187
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #21
  %206 = getelementptr inbounds %struct.basic_block_def, ptr %178, i64 0, i32 6
  %207 = load ptr, ptr %206, align 8, !tbaa !43
  %208 = load ptr, ptr @cfun, align 8, !tbaa !15
  %209 = getelementptr inbounds %struct.function, ptr %208, i64 0, i32 1
  %210 = load ptr, ptr %209, align 8, !tbaa !37
  %211 = getelementptr inbounds %struct.control_flow_graph, ptr %210, i64 0, i32 1
  %212 = load ptr, ptr %211, align 8, !tbaa !39
  %213 = icmp eq ptr %207, %212
  br i1 %213, label %214, label %177, !llvm.loop !150

214:                                              ; preds = %205, %159
  %215 = tail call zeroext i8 @mark_irreducible_loops() #20
  %216 = load ptr, ptr @cfun, align 8, !tbaa !15
  %217 = getelementptr inbounds %struct.function, ptr %216, i64 0, i32 1
  %218 = load ptr, ptr %217, align 8, !tbaa !37
  %219 = load ptr, ptr %218, align 8, !tbaa !42
  %220 = getelementptr inbounds %struct.basic_block_def, ptr %219, i64 0, i32 6
  %221 = load ptr, ptr %220, align 8, !tbaa !43
  %222 = getelementptr inbounds %struct.control_flow_graph, ptr %218, i64 0, i32 1
  %223 = load ptr, ptr %222, align 8, !tbaa !39
  %224 = icmp eq ptr %221, %223
  br i1 %224, label %289, label %225

225:                                              ; preds = %214
  %226 = getelementptr inbounds i8, ptr %5, i64 8
  br label %227

227:                                              ; preds = %225, %279
  %228 = phi ptr [ %221, %225 ], [ %282, %279 ]
  %229 = phi i32 [ %156, %225 ], [ %280, %279 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #21
  %230 = getelementptr inbounds %struct.basic_block_def, ptr %228, i64 0, i32 13
  %231 = load i32, ptr %230, align 8, !tbaa !148
  %232 = and i32 %231, 4
  %233 = icmp eq i32 %232, 0
  %234 = getelementptr inbounds %struct.basic_block_def, ptr %228, i64 0, i32 9
  %235 = load i32, ptr %234, align 8, !tbaa !20
  %236 = lshr i32 %235, 6
  %237 = zext nneg i32 %236 to i64
  %238 = getelementptr inbounds %struct.simple_bitmap_def, ptr %165, i64 0, i32 3, i64 %237
  %239 = load i64, ptr %238, align 8, !tbaa !91
  %240 = and i32 %235, 63
  %241 = zext nneg i32 %240 to i64
  %242 = shl nuw i64 1, %241
  %243 = and i64 %242, %239
  %244 = icmp eq i64 %243, 0
  br i1 %233, label %246, label %245

245:                                              ; preds = %227
  br i1 %244, label %247, label %249

246:                                              ; preds = %227
  br i1 %244, label %249, label %247

247:                                              ; preds = %246, %245
  %248 = phi ptr [ @.str.29, %245 ], [ @.str.30, %246 ]
  tail call void (ptr, ...) @error(ptr noundef nonnull %248, i32 noundef %235) #20
  br label %249

249:                                              ; preds = %247, %245, %246
  %250 = phi i32 [ %229, %246 ], [ %229, %245 ], [ 1, %247 ]
  %251 = getelementptr inbounds %struct.basic_block_def, ptr %228, i64 0, i32 1
  %252 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %251) #19
  store i32 0, ptr %5, align 8, !tbaa.struct !30
  store ptr %252, ptr %226, align 8, !tbaa.struct !32
  %253 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %252, ptr noundef nonnull %2) #19, !range !33
  %254 = icmp eq i8 %253, 0
  br i1 %254, label %279, label %255

255:                                              ; preds = %249, %271
  %256 = phi i32 [ %272, %271 ], [ %250, %249 ]
  %257 = load ptr, ptr %2, align 8, !tbaa !15
  %258 = getelementptr inbounds %struct.edge_def, ptr %257, i64 0, i32 7
  %259 = load i32, ptr %258, align 8, !tbaa !86
  %260 = and i32 %259, 16512
  switch i32 %260, label %271 [
    i32 128, label %262
    i32 16384, label %261
  ]

261:                                              ; preds = %255
  br label %262

262:                                              ; preds = %255, %261
  %263 = phi ptr [ @.str.32, %261 ], [ @.str.31, %255 ]
  %264 = load ptr, ptr %257, align 8, !tbaa !24
  %265 = getelementptr inbounds %struct.basic_block_def, ptr %264, i64 0, i32 9
  %266 = load i32, ptr %265, align 8, !tbaa !20
  %267 = getelementptr inbounds %struct.edge_def, ptr %257, i64 0, i32 1
  %268 = load ptr, ptr %267, align 8, !tbaa !60
  %269 = getelementptr inbounds %struct.basic_block_def, ptr %268, i64 0, i32 9
  %270 = load i32, ptr %269, align 8, !tbaa !20
  tail call void (ptr, ...) @error(ptr noundef nonnull %263, i32 noundef %266, i32 noundef %270) #20
  br label %271

271:                                              ; preds = %262, %255
  %272 = phi i32 [ %256, %255 ], [ 1, %262 ]
  %273 = load i32, ptr %258, align 8, !tbaa !86
  %274 = and i32 %273, -16385
  store i32 %274, ptr %258, align 8, !tbaa !86
  call fastcc void @ei_next(ptr noundef nonnull %5) #19
  %275 = load i32, ptr %5, align 8
  %276 = load ptr, ptr %226, align 8
  %277 = call fastcc zeroext i8 @ei_cond(i32 %275, ptr %276, ptr noundef nonnull %2) #19, !range !33
  %278 = icmp eq i8 %277, 0
  br i1 %278, label %279, label %255, !llvm.loop !151

279:                                              ; preds = %271, %249
  %280 = phi i32 [ %250, %249 ], [ %272, %271 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #21
  %281 = getelementptr inbounds %struct.basic_block_def, ptr %228, i64 0, i32 6
  %282 = load ptr, ptr %281, align 8, !tbaa !43
  %283 = load ptr, ptr @cfun, align 8, !tbaa !15
  %284 = getelementptr inbounds %struct.function, ptr %283, i64 0, i32 1
  %285 = load ptr, ptr %284, align 8, !tbaa !37
  %286 = getelementptr inbounds %struct.control_flow_graph, ptr %285, i64 0, i32 1
  %287 = load ptr, ptr %286, align 8, !tbaa !39
  %288 = icmp eq ptr %282, %287
  br i1 %288, label %289, label %227, !llvm.loop !152

289:                                              ; preds = %279, %214
  %290 = phi i32 [ %156, %214 ], [ %280, %279 ]
  tail call void @free(ptr noundef %165) #19
  br label %291

291:                                              ; preds = %289, %155
  %292 = phi i32 [ %290, %289 ], [ %156, %155 ]
  call fastcc void @fel_init(ptr noundef nonnull %3, ptr noundef nonnull %1, i32 noundef 0) #19
  %293 = load ptr, ptr %1, align 8, !tbaa !15
  %294 = icmp eq ptr %293, null
  br i1 %294, label %350, label %295

295:                                              ; preds = %291, %346
  %296 = phi ptr [ %348, %346 ], [ %293, %291 ]
  %297 = phi i32 [ %347, %346 ], [ %292, %291 ]
  %298 = getelementptr inbounds %struct.loop, ptr %296, i64 0, i32 18
  %299 = load ptr, ptr %298, align 8, !tbaa !65
  %300 = icmp eq ptr %299, null
  br i1 %300, label %332, label %301

301:                                              ; preds = %295
  %302 = load ptr, ptr %299, align 8, !tbaa !119
  %303 = icmp eq ptr %302, null
  br i1 %303, label %304, label %332

304:                                              ; preds = %301
  %305 = getelementptr inbounds %struct.loop_exit, ptr %299, i64 0, i32 2
  %306 = load ptr, ptr %305, align 8, !tbaa !66
  %307 = load ptr, ptr %306, align 8, !tbaa !119
  %308 = icmp ne ptr %307, null
  %309 = icmp ne ptr %306, %299
  %310 = and i1 %308, %309
  br i1 %310, label %311, label %329

311:                                              ; preds = %304, %321
  %312 = phi ptr [ %324, %321 ], [ %306, %304 ]
  %313 = phi i32 [ %315, %321 ], [ 0, %304 ]
  %314 = phi ptr [ %322, %321 ], [ %299, %304 ]
  %315 = add i32 %313, 1
  %316 = and i32 %313, 1
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %321, label %318

318:                                              ; preds = %311
  %319 = getelementptr inbounds %struct.loop_exit, ptr %314, i64 0, i32 2
  %320 = load ptr, ptr %319, align 8, !tbaa !66
  br label %321

321:                                              ; preds = %311, %318
  %322 = phi ptr [ %320, %318 ], [ %314, %311 ]
  %323 = getelementptr inbounds %struct.loop_exit, ptr %312, i64 0, i32 2
  %324 = load ptr, ptr %323, align 8, !tbaa !66
  %325 = load ptr, ptr %324, align 8, !tbaa !119
  %326 = icmp ne ptr %325, null
  %327 = icmp ne ptr %324, %322
  %328 = select i1 %326, i1 %327, i1 false
  br i1 %328, label %311, label %329, !llvm.loop !153

329:                                              ; preds = %321, %304
  %330 = phi ptr [ %306, %304 ], [ %324, %321 ]
  %331 = icmp eq ptr %330, %299
  br i1 %331, label %335, label %332

332:                                              ; preds = %329, %295, %301
  %333 = phi ptr [ @.str.33, %301 ], [ @.str.33, %295 ], [ @.str.34, %329 ]
  %334 = load i32, ptr %296, align 8, !tbaa !19
  tail call void (ptr, ...) @error(ptr noundef nonnull %333, i32 noundef %334) #20
  br label %335

335:                                              ; preds = %332, %329
  %336 = phi i32 [ %297, %329 ], [ 1, %332 ]
  %337 = tail call fastcc zeroext i8 @loops_state_satisfies_p(i32 noundef 8) #19, !range !33
  %338 = icmp eq i8 %337, 0
  br i1 %338, label %339, label %346

339:                                              ; preds = %335
  %340 = load ptr, ptr %298, align 8, !tbaa !65
  %341 = getelementptr inbounds %struct.loop_exit, ptr %340, i64 0, i32 2
  %342 = load ptr, ptr %341, align 8, !tbaa !66
  %343 = icmp eq ptr %342, %340
  br i1 %343, label %346, label %344

344:                                              ; preds = %339
  %345 = load i32, ptr %296, align 8, !tbaa !19
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.35, i32 noundef %345) #20
  br label %346

346:                                              ; preds = %335, %344, %339
  %347 = phi i32 [ %336, %335 ], [ 1, %344 ], [ %336, %339 ]
  call fastcc void @fel_next(ptr noundef nonnull %3, ptr noundef nonnull %1) #19
  %348 = load ptr, ptr %1, align 8, !tbaa !15
  %349 = icmp eq ptr %348, null
  br i1 %349, label %350, label %295, !llvm.loop !154

350:                                              ; preds = %346, %291
  %351 = phi i32 [ %292, %291 ], [ %347, %346 ]
  %352 = tail call fastcc zeroext i8 @loops_state_satisfies_p(i32 noundef 8) #19, !range !33
  %353 = icmp eq i8 %352, 0
  br i1 %353, label %504, label %354

354:                                              ; preds = %350
  %355 = shl nuw nsw i64 %8, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %9, i8 0, i64 %355, i1 false)
  %356 = load ptr, ptr @cfun, align 8, !tbaa !15
  %357 = getelementptr inbounds %struct.function, ptr %356, i64 0, i32 1
  %358 = load ptr, ptr %357, align 8, !tbaa !37
  %359 = load ptr, ptr %358, align 8, !tbaa !42
  %360 = getelementptr inbounds %struct.basic_block_def, ptr %359, i64 0, i32 6
  %361 = load ptr, ptr %360, align 8, !tbaa !43
  %362 = getelementptr inbounds %struct.control_flow_graph, ptr %358, i64 0, i32 1
  %363 = load ptr, ptr %362, align 8, !tbaa !39
  %364 = icmp eq ptr %361, %363
  br i1 %364, label %464, label %365

365:                                              ; preds = %354
  %366 = getelementptr inbounds i8, ptr %6, i64 8
  br label %367

367:                                              ; preds = %365, %450
  %368 = phi ptr [ %356, %365 ], [ %456, %450 ]
  %369 = phi ptr [ %361, %365 ], [ %455, %450 ]
  %370 = phi i32 [ 0, %365 ], [ %453, %450 ]
  %371 = phi i32 [ %351, %365 ], [ %452, %450 ]
  %372 = phi ptr [ null, %365 ], [ %451, %450 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #21
  %373 = getelementptr inbounds %struct.basic_block_def, ptr %369, i64 0, i32 3
  %374 = load ptr, ptr %373, align 8, !tbaa !71
  %375 = getelementptr inbounds %struct.function, ptr %368, i64 0, i32 4
  %376 = load ptr, ptr %375, align 8, !tbaa !48
  %377 = getelementptr inbounds %struct.loops, ptr %376, i64 0, i32 3
  %378 = load ptr, ptr %377, align 8, !tbaa !55
  %379 = icmp eq ptr %374, %378
  br i1 %379, label %450, label %380

380:                                              ; preds = %367
  %381 = getelementptr inbounds %struct.basic_block_def, ptr %369, i64 0, i32 1
  %382 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %381) #19
  store i32 0, ptr %6, align 8, !tbaa.struct !30
  store ptr %382, ptr %366, align 8, !tbaa.struct !32
  %383 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %382, ptr noundef nonnull %2) #19, !range !33
  %384 = icmp eq i8 %383, 0
  br i1 %384, label %450, label %385

385:                                              ; preds = %380, %442
  %386 = phi i32 [ %445, %442 ], [ %370, %380 ]
  %387 = phi i32 [ %444, %442 ], [ %371, %380 ]
  %388 = phi ptr [ %443, %442 ], [ %372, %380 ]
  %389 = load ptr, ptr %373, align 8, !tbaa !71
  %390 = load ptr, ptr %2, align 8, !tbaa !15
  %391 = getelementptr inbounds %struct.edge_def, ptr %390, i64 0, i32 1
  %392 = load ptr, ptr %391, align 8, !tbaa !60
  %393 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %389, ptr noundef %392) #19, !range !33
  %394 = icmp eq i8 %393, 0
  br i1 %394, label %395, label %442

395:                                              ; preds = %385
  %396 = add i32 %386, 1
  %397 = tail call fastcc ptr @get_exit_descriptions(ptr noundef nonnull %390) #19
  %398 = icmp eq ptr %397, null
  br i1 %398, label %399, label %406

399:                                              ; preds = %395
  %400 = load ptr, ptr %390, align 8, !tbaa !24
  %401 = getelementptr inbounds %struct.basic_block_def, ptr %400, i64 0, i32 9
  %402 = load i32, ptr %401, align 8, !tbaa !20
  %403 = load ptr, ptr %391, align 8, !tbaa !60
  %404 = getelementptr inbounds %struct.basic_block_def, ptr %403, i64 0, i32 9
  %405 = load i32, ptr %404, align 8, !tbaa !20
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.36, i32 noundef %402, i32 noundef %405) #20
  br label %413

406:                                              ; preds = %395, %406
  %407 = phi i32 [ %409, %406 ], [ 0, %395 ]
  %408 = phi ptr [ %411, %406 ], [ %397, %395 ]
  %409 = add i32 %407, 1
  %410 = getelementptr inbounds %struct.loop_exit, ptr %408, i64 0, i32 3
  %411 = load ptr, ptr %410, align 8, !tbaa !120
  %412 = icmp eq ptr %411, null
  br i1 %412, label %413, label %406, !llvm.loop !155

413:                                              ; preds = %406, %399
  %414 = phi i32 [ 1, %399 ], [ %387, %406 ]
  %415 = phi i32 [ 0, %399 ], [ %409, %406 ]
  %416 = load ptr, ptr %373, align 8, !tbaa !71
  %417 = load ptr, ptr %391, align 8, !tbaa !60
  %418 = getelementptr inbounds %struct.basic_block_def, ptr %417, i64 0, i32 3
  %419 = load ptr, ptr %418, align 8, !tbaa !71
  %420 = icmp eq ptr %416, %419
  br i1 %420, label %432, label %421

421:                                              ; preds = %413, %421
  %422 = phi i32 [ %424, %421 ], [ %415, %413 ]
  %423 = phi ptr [ %430, %421 ], [ %416, %413 ]
  %424 = add i32 %422, -1
  %425 = load i32, ptr %423, align 8, !tbaa !19
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds i32, ptr %9, i64 %426
  %428 = load i32, ptr %427, align 4, !tbaa !31
  %429 = add i32 %428, 1
  store i32 %429, ptr %427, align 4, !tbaa !31
  %430 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %423) #19
  %431 = icmp eq ptr %430, %419
  br i1 %431, label %432, label %421, !llvm.loop !156

432:                                              ; preds = %421, %413
  %433 = phi ptr [ %416, %413 ], [ %419, %421 ]
  %434 = phi i32 [ %415, %413 ], [ %424, %421 ]
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %442, label %436

436:                                              ; preds = %432
  %437 = load ptr, ptr %390, align 8, !tbaa !24
  %438 = getelementptr inbounds %struct.basic_block_def, ptr %437, i64 0, i32 9
  %439 = load i32, ptr %438, align 8, !tbaa !20
  %440 = getelementptr inbounds %struct.basic_block_def, ptr %417, i64 0, i32 9
  %441 = load i32, ptr %440, align 8, !tbaa !20
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.37, i32 noundef %439, i32 noundef %441) #20
  br label %442

442:                                              ; preds = %432, %436, %385
  %443 = phi ptr [ %388, %385 ], [ %433, %436 ], [ %433, %432 ]
  %444 = phi i32 [ %387, %385 ], [ 1, %436 ], [ %414, %432 ]
  %445 = phi i32 [ %386, %385 ], [ %396, %436 ], [ %396, %432 ]
  call fastcc void @ei_next(ptr noundef nonnull %6) #19
  %446 = load i32, ptr %6, align 8
  %447 = load ptr, ptr %366, align 8
  %448 = call fastcc zeroext i8 @ei_cond(i32 %446, ptr %447, ptr noundef nonnull %2) #19, !range !33
  %449 = icmp eq i8 %448, 0
  br i1 %449, label %450, label %385, !llvm.loop !157

450:                                              ; preds = %442, %380, %367
  %451 = phi ptr [ %372, %367 ], [ %372, %380 ], [ %443, %442 ]
  %452 = phi i32 [ %371, %367 ], [ %371, %380 ], [ %444, %442 ]
  %453 = phi i32 [ %370, %367 ], [ %370, %380 ], [ %445, %442 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #21
  %454 = getelementptr inbounds %struct.basic_block_def, ptr %369, i64 0, i32 6
  %455 = load ptr, ptr %454, align 8, !tbaa !43
  %456 = load ptr, ptr @cfun, align 8, !tbaa !15
  %457 = getelementptr inbounds %struct.function, ptr %456, i64 0, i32 1
  %458 = load ptr, ptr %457, align 8, !tbaa !37
  %459 = getelementptr inbounds %struct.control_flow_graph, ptr %458, i64 0, i32 1
  %460 = load ptr, ptr %459, align 8, !tbaa !39
  %461 = icmp eq ptr %455, %460
  br i1 %461, label %462, label %367, !llvm.loop !158

462:                                              ; preds = %450
  %463 = zext i32 %453 to i64
  br label %464

464:                                              ; preds = %462, %354
  %465 = phi ptr [ null, %354 ], [ %451, %462 ]
  %466 = phi i32 [ %351, %354 ], [ %452, %462 ]
  %467 = phi i64 [ 0, %354 ], [ %463, %462 ]
  %468 = phi ptr [ %356, %354 ], [ %456, %462 ]
  store ptr %465, ptr %1, align 8, !tbaa !15
  %469 = getelementptr inbounds %struct.function, ptr %468, i64 0, i32 4
  %470 = load ptr, ptr %469, align 8, !tbaa !48
  %471 = getelementptr inbounds %struct.loops, ptr %470, i64 0, i32 2
  %472 = load ptr, ptr %471, align 8, !tbaa !97
  %473 = tail call i64 @htab_elements(ptr noundef %472) #20
  %474 = icmp eq i64 %473, %467
  br i1 %474, label %476, label %475

475:                                              ; preds = %464
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.38) #20
  br label %476

476:                                              ; preds = %475, %464
  %477 = phi i32 [ 1, %475 ], [ %466, %464 ]
  call fastcc void @fel_init(ptr noundef nonnull %3, ptr noundef nonnull %1, i32 noundef 0) #19
  %478 = load ptr, ptr %1, align 8, !tbaa !15
  %479 = icmp eq ptr %478, null
  br i1 %479, label %504, label %480

480:                                              ; preds = %476, %500
  %481 = phi ptr [ %502, %500 ], [ %478, %476 ]
  %482 = phi i32 [ %501, %500 ], [ %477, %476 ]
  %483 = getelementptr inbounds %struct.loop, ptr %481, i64 0, i32 18
  %484 = load ptr, ptr %483, align 8, !tbaa !65
  br label %485

485:                                              ; preds = %485, %480
  %486 = phi ptr [ %484, %480 ], [ %489, %485 ]
  %487 = phi i32 [ 0, %480 ], [ %492, %485 ]
  %488 = getelementptr inbounds %struct.loop_exit, ptr %486, i64 0, i32 2
  %489 = load ptr, ptr %488, align 8, !tbaa !66
  %490 = load ptr, ptr %489, align 8, !tbaa !119
  %491 = icmp eq ptr %490, null
  %492 = add i32 %487, 1
  br i1 %491, label %493, label %485, !llvm.loop !159

493:                                              ; preds = %485
  %494 = load i32, ptr %481, align 8, !tbaa !19
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds i32, ptr %9, i64 %495
  %497 = load i32, ptr %496, align 4, !tbaa !31
  %498 = icmp eq i32 %487, %497
  br i1 %498, label %500, label %499

499:                                              ; preds = %493
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.39, i32 noundef %487, i32 noundef %494, i32 noundef %497) #20
  br label %500

500:                                              ; preds = %493, %499
  %501 = phi i32 [ 1, %499 ], [ %482, %493 ]
  call fastcc void @fel_next(ptr noundef nonnull %3, ptr noundef nonnull %1) #19
  %502 = load ptr, ptr %1, align 8, !tbaa !15
  %503 = icmp eq ptr %502, null
  br i1 %503, label %504, label %480, !llvm.loop !160

504:                                              ; preds = %500, %476, %350
  %505 = phi i32 [ %351, %350 ], [ %477, %476 ], [ %501, %500 ]
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %508, label %507

507:                                              ; preds = %504
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1575, ptr noundef nonnull @.str.1) #20
  br label %508

508:                                              ; preds = %504, %507
  tail call void @free(ptr noundef %9) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #21
  ret void
}

; Function Attrs: optsize
declare void @error(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !131
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #19
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc ptr @single_succ_edge(ptr noundef %0) #19
  %3 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @loop_latch_edge(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !22
  %4 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !18
  %6 = tail call ptr @find_edge(ptr noundef %3, ptr noundef %5) #20
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @RESET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #12 {
  %3 = load ptr, ptr %0, align 8, !tbaa !95
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11

5:                                                ; preds = %2
  %6 = and i32 %1, 63
  %7 = zext nneg i32 %6 to i64
  %8 = shl nuw i64 1, %7
  %9 = lshr i32 %1, 6
  %10 = zext nneg i32 %9 to i64
  br label %25

11:                                               ; preds = %2
  %12 = lshr i32 %1, 6
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %13
  %15 = load i64, ptr %14, align 8, !tbaa !91
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !98
  %24 = add i8 %23, -1
  store i8 %24, ptr %22, align 1, !tbaa !98
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = xor i64 %27, -1
  %29 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %30 = load i64, ptr %29, align 8, !tbaa !91
  %31 = and i64 %30, %28
  store i64 %31, ptr %29, align 8, !tbaa !91
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @mark_irreducible_loops() local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_exit_descriptions(ptr noundef %0) unnamed_addr #3 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !15
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  %5 = getelementptr inbounds %struct.loops, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !97
  %7 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !15
  %8 = tail call i32 %7(ptr noundef %0) #20
  %9 = tail call ptr @htab_find_with_hash(ptr noundef %6, ptr noundef %0, i32 noundef %8) #20
  ret ptr %9
}

; Function Attrs: optsize
declare i64 @htab_elements(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #19, !range !33
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 645, ptr noundef nonnull @.str.1) #20
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !131
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #19
  ret ptr %8
}

; Function Attrs: optsize
declare ptr @htab_find_with_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @loop_preheader_edge(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #21
  %4 = tail call fastcc zeroext i8 @loops_state_satisfies_p(i32 noundef 1) #19, !range !33
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1594, ptr noundef nonnull @.str.1) #20
  br label %7

7:                                                ; preds = %1, %6
  %8 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !18
  %10 = tail call fastcc ptr @ei_start_1(ptr noundef %9) #19
  store i32 0, ptr %3, align 8, !tbaa.struct !30
  %11 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %10, ptr %11, align 8, !tbaa.struct !32
  %12 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %10, ptr noundef nonnull %2) #19, !range !33
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  br label %16

16:                                               ; preds = %14, %21
  %17 = load ptr, ptr %2, align 8, !tbaa !15
  %18 = load ptr, ptr %17, align 8, !tbaa !24
  %19 = load ptr, ptr %15, align 8, !tbaa !22
  %20 = icmp eq ptr %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  call fastcc void @ei_next(ptr noundef nonnull %3) #19
  %22 = load i32, ptr %3, align 8
  %23 = load ptr, ptr %11, align 8
  %24 = call fastcc zeroext i8 @ei_cond(i32 %22, ptr %23, ptr noundef nonnull %2) #19, !range !33
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %16, !llvm.loop !161

26:                                               ; preds = %21, %16, %7
  %27 = load ptr, ptr %2, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  ret ptr %27
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @loop_exit_edge_p(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !24
  %4 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %0, ptr noundef %3) #19, !range !33
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !60
  %9 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %0, ptr noundef %8) #19, !range !33
  %10 = xor i8 %9, 1
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i8 [ 0, %2 ], [ %10, %6 ]
  ret i8 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @single_exit(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 18
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = getelementptr inbounds %struct.loop_exit, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !66
  %6 = tail call fastcc zeroext i8 @loops_state_satisfies_p(i32 noundef 8) #19, !range !33
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr %5, align 8, !tbaa !119
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.loop_exit, ptr %5, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !66
  %14 = icmp eq ptr %13, %3
  br i1 %14, label %16, label %15

15:                                               ; preds = %11, %8
  br label %16

16:                                               ; preds = %11, %1, %15
  %17 = phi ptr [ null, %15 ], [ null, %1 ], [ %9, %11 ]
  ret ptr %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @is_loop_exit(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #21
  %5 = tail call fastcc ptr @ei_start_1(ptr noundef %1) #19
  store i32 0, ptr %4, align 8, !tbaa.struct !30
  %6 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %5, ptr %6, align 8, !tbaa.struct !32
  %7 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %5, ptr noundef nonnull %3) #19, !range !33
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %2, %13
  %10 = load ptr, ptr %3, align 8, !tbaa !15
  %11 = tail call zeroext i8 @loop_exit_edge_p(ptr noundef %0, ptr noundef %10) #19, !range !33
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  call fastcc void @ei_next(ptr noundef nonnull %4) #19
  %14 = load i32, ptr %4, align 8
  %15 = load ptr, ptr %6, align 8
  %16 = call fastcc zeroext i8 @ei_cond(i32 %14, ptr %15, ptr noundef nonnull %3) #19, !range !33
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %9, !llvm.loop !162

18:                                               ; preds = %9, %13, %2
  %19 = phi i8 [ 0, %2 ], [ 0, %13 ], [ 1, %9 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret i8 %19
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #18

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { optsize }
attributes #20 = { nounwind optsize }
attributes #21 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !11, i64 40}
!7 = !{!"loop", !8, i64 0, !8, i64 4, !11, i64 8, !11, i64 16, !12, i64 24, !8, i64 32, !8, i64 36, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !13, i64 80, !13, i64 96, !9, i64 112, !9, i64 113, !8, i64 116, !11, i64 120, !11, i64 128, !9, i64 136, !11, i64 144}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"any pointer", !9, i64 0}
!12 = !{!"lpt_decision", !8, i64 0, !8, i64 4}
!13 = !{!"", !14, i64 0, !14, i64 8}
!14 = !{!"long", !9, i64 0}
!15 = !{!11, !11, i64 0}
!16 = !{!17, !8, i64 0}
!17 = !{!"VEC_loop_p_base", !8, i64 0, !8, i64 4, !9, i64 8}
!18 = !{!7, !11, i64 8}
!19 = !{!7, !8, i64 0}
!20 = !{!21, !8, i64 80}
!21 = !{!"basic_block_def", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !9, i64 32, !11, i64 48, !11, i64 56, !9, i64 64, !14, i64 72, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !8, i64 96}
!22 = !{!7, !11, i64 16}
!23 = !{i32 0, i32 2}
!24 = !{!25, !11, i64 0}
!25 = !{!"edge_def", !11, i64 0, !11, i64 8, !9, i64 16, !11, i64 24, !11, i64 32, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !14, i64 56}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!7, !8, i64 36}
!29 = distinct !{!29, !27}
!30 = !{i64 0, i64 4, !31, i64 8, i64 8, !15}
!31 = !{!8, !8, i64 0}
!32 = !{i64 0, i64 8, !15}
!33 = !{i8 0, i8 2}
!34 = distinct !{!34, !27}
!35 = !{!36, !8, i64 0}
!36 = !{!"VEC_edge_base", !8, i64 0, !8, i64 4, !9, i64 8}
!37 = !{!38, !11, i64 8}
!38 = !{!"function", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !11, i64 128, !8, i64 136, !8, i64 137, !8, i64 138, !8, i64 138, !8, i64 138, !8, i64 138, !8, i64 138, !8, i64 138, !8, i64 138, !8, i64 139, !8, i64 139, !8, i64 139, !8, i64 139, !8, i64 139, !8, i64 139, !8, i64 139}
!39 = !{!40, !11, i64 8}
!40 = !{!"control_flow_graph", !11, i64 0, !11, i64 8, !11, i64 16, !8, i64 24, !8, i64 28, !8, i64 32, !11, i64 40, !8, i64 48, !9, i64 52, !9, i64 60, !8, i64 68, !8, i64 72}
!41 = !{!40, !8, i64 24}
!42 = !{!40, !11, i64 0}
!43 = !{!21, !11, i64 56}
!44 = distinct !{!44, !27}
!45 = !{!46, !8, i64 0}
!46 = !{!"", !8, i64 0, !11, i64 8}
!47 = !{!36, !8, i64 4}
!48 = !{!38, !11, i64 32}
!49 = distinct !{!49, !27}
!50 = !{!51, !11, i64 8}
!51 = !{!"loops", !8, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!52 = !{!53, !8, i64 8}
!53 = !{!"", !11, i64 0, !8, i64 8}
!54 = !{!53, !11, i64 0}
!55 = !{!51, !11, i64 24}
!56 = !{!7, !11, i64 48}
!57 = !{!7, !11, i64 56}
!58 = distinct !{!58, !27}
!59 = distinct !{!59, !27}
!60 = !{!25, !11, i64 8}
!61 = distinct !{!61, !27}
!62 = distinct !{!62, !27}
!63 = !{!64, !8, i64 0}
!64 = !{!"VEC_int_base", !8, i64 0, !8, i64 4, !9, i64 8}
!65 = !{!7, !11, i64 128}
!66 = !{!67, !11, i64 16}
!67 = !{!"loop_exit", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!68 = !{!67, !11, i64 8}
!69 = distinct !{!69, !27}
!70 = distinct !{!70, !27}
!71 = !{!21, !11, i64 24}
!72 = !{!21, !8, i64 84}
!73 = distinct !{!73, !27}
!74 = distinct !{!74, !27}
!75 = distinct !{!75, !27}
!76 = !{!77, !8, i64 0}
!77 = !{!"VEC_basic_block_base", !8, i64 0, !8, i64 4, !9, i64 8}
!78 = !{!77, !8, i64 4}
!79 = distinct !{!79, !27}
!80 = distinct !{!80, !27}
!81 = !{!17, !8, i64 4}
!82 = distinct !{!82, !27}
!83 = !{!7, !9, i64 136}
!84 = !{!7, !11, i64 144}
!85 = !{!40, !8, i64 32}
!86 = !{!25, !8, i64 48}
!87 = distinct !{!87, !27}
!88 = distinct !{!88, !27}
!89 = distinct !{!89, !27}
!90 = distinct !{!90, !27}
!91 = !{!14, !14, i64 0}
!92 = !{!40, !11, i64 16}
!93 = distinct !{!93, !27}
!94 = distinct !{!94, !27}
!95 = !{!96, !11, i64 0}
!96 = !{!"simple_bitmap_def", !11, i64 0, !8, i64 8, !8, i64 12, !9, i64 16}
!97 = !{!51, !11, i64 16}
!98 = !{!9, !9, i64 0}
!99 = distinct !{!99, !27}
!100 = distinct !{!100, !27}
!101 = distinct !{!101, !27}
!102 = !{!25, !14, i64 56}
!103 = distinct !{!103, !27}
!104 = distinct !{!104, !27}
!105 = distinct !{!105, !27}
!106 = !{!25, !8, i64 44}
!107 = distinct !{!107, !27}
!108 = distinct !{!108, !27}
!109 = !{!110, !11, i64 0}
!110 = !{!"", !11, i64 0, !11, i64 8, !11, i64 16}
!111 = !{!112, !11, i64 0}
!112 = !{!"gimple_seq_node_d", !11, i64 0, !11, i64 8, !11, i64 16}
!113 = !{!114, !11, i64 24}
!114 = !{!"ssa_use_operand_d", !11, i64 0, !11, i64 8, !9, i64 16, !11, i64 24}
!115 = !{!112, !11, i64 16}
!116 = distinct !{!116, !27}
!117 = distinct !{!117, !27}
!118 = distinct !{!118, !27}
!119 = !{!67, !11, i64 0}
!120 = !{!67, !11, i64 24}
!121 = distinct !{!121, !27}
!122 = !{!51, !8, i64 0}
!123 = distinct !{!123, !27}
!124 = distinct !{!124, !27}
!125 = distinct !{!125, !27}
!126 = distinct !{!126, !27}
!127 = distinct !{!127, !27}
!128 = distinct !{!128, !27}
!129 = distinct !{!129, !27}
!130 = distinct !{!130, !27}
!131 = !{!21, !11, i64 8}
!132 = distinct !{!132, !27}
!133 = distinct !{!133, !27}
!134 = distinct !{!134, !27}
!135 = distinct !{!135, !27}
!136 = distinct !{!136, !27}
!137 = distinct !{!137, !27}
!138 = distinct !{!138, !27}
!139 = distinct !{!139, !27}
!140 = distinct !{!140, !27}
!141 = distinct !{!141, !27}
!142 = distinct !{!142, !27}
!143 = distinct !{!143, !27}
!144 = distinct !{!144, !27}
!145 = distinct !{!145, !27}
!146 = !{!21, !11, i64 0}
!147 = distinct !{!147, !27}
!148 = !{!21, !8, i64 96}
!149 = distinct !{!149, !27}
!150 = distinct !{!150, !27}
!151 = distinct !{!151, !27}
!152 = distinct !{!152, !27}
!153 = distinct !{!153, !27}
!154 = distinct !{!154, !27}
!155 = distinct !{!155, !27}
!156 = distinct !{!156, !27}
!157 = distinct !{!157, !27}
!158 = distinct !{!158, !27}
!159 = distinct !{!159, !27}
!160 = distinct !{!160, !27}
!161 = distinct !{!161, !27}
!162 = distinct !{!162, !27}
