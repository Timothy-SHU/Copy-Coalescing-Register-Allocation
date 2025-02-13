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
define dso_local zeroext i8 @flow_loop_nested_p(ptr noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !271 {
  %3 = tail call fastcc i32 @loop_depth(ptr noundef %0) #18
  %4 = tail call fastcc i32 @loop_depth(ptr noundef %1) #18
  %5 = icmp ugt i32 %4, %3
  br i1 %5, label %6, label %12, !prof !272

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !273
  %9 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %8, i32 noundef %3) #18
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
define internal fastcc i32 @loop_depth(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !282 !PGOFuncName !283 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !273
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #18
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_loop_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 !prof !284 !PGOFuncName !285 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !286
  ret ptr %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_loop_p_base_length(ptr noundef readonly %0) unnamed_addr #2 !prof !287 !PGOFuncName !288 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !289

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !290
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @superloop_at_depth(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 !prof !292 {
  %3 = tail call fastcc i32 @loop_depth(ptr noundef %0) #18
  %4 = icmp ult i32 %3, %1
  br i1 %4, label %5, label %6, !prof !293

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 82, ptr noundef nonnull @.str.1) #19
  br label %6

6:                                                ; preds = %2, %5
  %7 = icmp eq i32 %3, %1
  br i1 %7, label %12, label %8, !prof !294

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !273
  %11 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %10, i32 noundef %1) #18
  br label %12

12:                                               ; preds = %6, %8
  %13 = phi ptr [ %11, %8 ], [ %0, %6 ]
  ret ptr %13
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @flow_loop_dump(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, i32 noundef %3) local_unnamed_addr #3 !prof !295 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #20
  %7 = icmp eq ptr %0, null
  br i1 %7, label %73, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !296
  %11 = icmp eq ptr %10, null
  br i1 %11, label %73, label %12

12:                                               ; preds = %8
  %13 = load i32, ptr %0, align 8, !tbaa !297
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %13) #18
  %15 = load ptr, ptr %9, align 8, !tbaa !296
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 9
  %17 = load i32, ptr %16, align 8, !tbaa !298
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.3, i32 noundef %17) #18
  %19 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !300
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 9
  %24 = load i32, ptr %23, align 8, !tbaa !298
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef %24) #18
  br label %43

26:                                               ; preds = %12
  %27 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 17, i64 1, ptr %1)
  %28 = tail call fastcc ptr @get_loop_latch_edges(ptr noundef nonnull %0) #18
  store ptr %28, ptr %5, align 8, !tbaa !286
  %29 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %28, i32 noundef 0, ptr noundef nonnull %6) #18, !range !301
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %26, %31
  %32 = phi i32 [ %38, %31 ], [ 0, %26 ]
  %33 = load ptr, ptr %6, align 8, !tbaa !286
  %34 = load ptr, ptr %33, align 8, !tbaa !302
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 9
  %36 = load i32, ptr %35, align 8, !tbaa !298
  %37 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %36) #18
  %38 = add i32 %32, 1
  %39 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %28, i32 noundef %38, ptr noundef nonnull %6) #18, !range !301
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %31, !llvm.loop !304

41:                                               ; preds = %31, %26
  call fastcc void @VEC_edge_heap_free(ptr noundef nonnull %5) #18
  %42 = tail call i32 @fputc(i32 10, ptr %1)
  br label %43

43:                                               ; preds = %41, %22
  %44 = tail call fastcc i32 @loop_depth(ptr noundef nonnull %0) #18
  %45 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %0) #18
  %46 = icmp eq ptr %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = load i32, ptr %45, align 8, !tbaa !297
  %49 = sext i32 %48 to i64
  br label %50

50:                                               ; preds = %43, %47
  %51 = phi i64 [ %49, %47 ], [ -1, %43 ]
  %52 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.8, i32 noundef %44, i64 noundef %51) #18
  %53 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 10, i64 1, ptr %1)
  %54 = tail call ptr @get_loop_body(ptr noundef nonnull %0) #18
  %55 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %56 = load i32, ptr %55, align 4, !tbaa !306
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %69, label %58

58:                                               ; preds = %50, %58
  %59 = phi i64 [ %65, %58 ], [ 0, %50 ]
  %60 = getelementptr inbounds ptr, ptr %54, i64 %59
  %61 = load ptr, ptr %60, align 8, !tbaa !286
  %62 = getelementptr inbounds %struct.basic_block_def, ptr %61, i64 0, i32 9
  %63 = load i32, ptr %62, align 8, !tbaa !298
  %64 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %63) #18
  %65 = add nuw nsw i64 %59, 1
  %66 = load i32, ptr %55, align 4, !tbaa !306
  %67 = zext i32 %66 to i64
  %68 = icmp ult i64 %65, %67
  br i1 %68, label %58, label %69, !llvm.loop !307

69:                                               ; preds = %58, %50
  tail call void @free(ptr noundef %54) #18
  %70 = tail call i32 @fputc(i32 10, ptr %1)
  %71 = icmp eq ptr %2, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %69
  tail call void %2(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %3) #19
  br label %73

73:                                               ; preds = %69, %72, %4, %8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_loop_latch_edges(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !308 !PGOFuncName !309 {
  %2 = alloca %struct.edge_iterator, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  store ptr null, ptr %4, align 8, !tbaa !286
  %5 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !296
  %7 = tail call fastcc ptr @ei_start_1(ptr noundef %6) #18
  store i32 0, ptr %2, align 8, !tbaa.struct !310
  %8 = getelementptr inbounds i8, ptr %2, i64 8
  store ptr %7, ptr %8, align 8, !tbaa.struct !312
  %9 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %7, ptr noundef nonnull %3) #18, !range !313
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %23, label %11, !prof !314

11:                                               ; preds = %1, %18
  %12 = load ptr, ptr %3, align 8, !tbaa !286
  %13 = load ptr, ptr %12, align 8, !tbaa !302
  %14 = load ptr, ptr %5, align 8, !tbaa !296
  %15 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %13, ptr noundef %14) #19
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %18, label %17, !prof !315

17:                                               ; preds = %11
  call fastcc void @VEC_edge_heap_safe_push(ptr noundef nonnull %4, ptr noundef nonnull %12) #18
  br label %18

18:                                               ; preds = %11, %17
  call fastcc void @ei_next(ptr noundef nonnull %2) #18
  %19 = load i32, ptr %2, align 8
  %20 = load ptr, ptr %8, align 8
  %21 = call fastcc zeroext i8 @ei_cond(i32 %19, ptr %20, ptr noundef nonnull %3) #18, !range !313
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %11, !prof !316, !llvm.loop !317

23:                                               ; preds = %18, %1
  %24 = load ptr, ptr %4, align 8, !tbaa !286
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #20
  ret ptr %24
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_edge_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #6 !prof !318 !PGOFuncName !319 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !320

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !321
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !323

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !286
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !286
  ret i32 %14
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_edge_heap_free(ptr nocapture noundef %0) unnamed_addr #7 !prof !308 !PGOFuncName !324 {
  %2 = load ptr, ptr %0, align 8, !tbaa !286
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !325

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #18
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !286
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_outer(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !326 !PGOFuncName !327 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !273
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #18
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6, !prof !328

6:                                                ; preds = %1
  %7 = add i32 %4, -1
  %8 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %3, i32 noundef %7) #18
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_loop_body(ptr noundef %0) local_unnamed_addr #3 !prof !329 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 4, !tbaa !306
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !330

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 818, ptr noundef nonnull @.str.1) #19
  %6 = load i32, ptr %2, align 4, !tbaa !306
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi i32 [ %3, %1 ], [ %6, %5 ]
  %9 = zext i32 %8 to i64
  %10 = tail call ptr @xcalloc(i64 noundef %9, i64 noundef 8) #19
  %11 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !300
  %13 = load ptr, ptr @cfun, align 8, !tbaa !286
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !331
  %16 = getelementptr inbounds %struct.control_flow_graph, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !333
  %18 = icmp eq ptr %12, %17
  %19 = load i32, ptr %2, align 4, !tbaa !306
  br i1 %18, label %20, label %55, !prof !330

20:                                               ; preds = %7
  %21 = getelementptr inbounds %struct.control_flow_graph, ptr %15, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !335
  %23 = icmp eq i32 %19, %22
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 826, ptr noundef nonnull @.str.1) #19
  br label %25

25:                                               ; preds = %20, %24
  %26 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !296
  store ptr %27, ptr %10, align 8, !tbaa !286
  %28 = load ptr, ptr @cfun, align 8, !tbaa !286
  %29 = getelementptr inbounds %struct.function, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !331
  %31 = getelementptr inbounds %struct.control_flow_graph, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !333
  %33 = getelementptr inbounds ptr, ptr %10, i64 1
  store ptr %32, ptr %33, align 8, !tbaa !286
  %34 = load ptr, ptr %29, align 8, !tbaa !331
  %35 = load ptr, ptr %34, align 8, !tbaa !336
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %35, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !337
  %38 = getelementptr inbounds %struct.control_flow_graph, ptr %34, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !333
  %40 = icmp eq ptr %37, %39
  br i1 %40, label %57, label %41

41:                                               ; preds = %25, %41
  %42 = phi ptr [ %48, %41 ], [ %37, %25 ]
  %43 = phi i32 [ %44, %41 ], [ 2, %25 ]
  %44 = add i32 %43, 1
  %45 = zext i32 %43 to i64
  %46 = getelementptr inbounds ptr, ptr %10, i64 %45
  store ptr %42, ptr %46, align 8, !tbaa !286
  %47 = getelementptr inbounds %struct.basic_block_def, ptr %42, i64 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !337
  %49 = load ptr, ptr @cfun, align 8, !tbaa !286
  %50 = getelementptr inbounds %struct.function, ptr %49, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !331
  %52 = getelementptr inbounds %struct.control_flow_graph, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !333
  %54 = icmp eq ptr %48, %53
  br i1 %54, label %57, label %41, !llvm.loop !338

55:                                               ; preds = %7
  %56 = tail call i32 @get_loop_body_with_size(ptr noundef nonnull %0, ptr noundef %10, i32 noundef %19) #18
  br label %57

57:                                               ; preds = %41, %25, %55
  %58 = phi i32 [ %56, %55 ], [ 2, %25 ], [ %44, %41 ]
  %59 = load i32, ptr %2, align 4, !tbaa !306
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %62, label %61, !prof !339

61:                                               ; preds = %57
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 835, ptr noundef nonnull @.str.1) #19
  br label %62

62:                                               ; preds = %57, %61
  ret ptr %10
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #9 !prof !340 !PGOFuncName !341 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #3 !prof !342 !PGOFuncName !343 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #18, !range !313
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !344

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #18
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !286
  ret i8 %10
}

; Function Attrs: optsize
declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_edge_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #3 !prof !345 !PGOFuncName !346 {
  tail call fastcc void @VEC_edge_heap_reserve(ptr noundef %0) #18
  %3 = load ptr, ptr %0, align 8, !tbaa !286
  tail call fastcc void @VEC_edge_base_quick_push(ptr noundef %3, ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #3 !prof !347 !PGOFuncName !348 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !349

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #18
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #18
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !350

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 738, ptr noundef nonnull @.str.1) #19
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !351
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !351
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #3 !prof !342 !PGOFuncName !353 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !354

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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #3 !prof !355 !PGOFuncName !356 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !357

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #18
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #18
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #2 !prof !358 !PGOFuncName !359 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !360

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !321
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #3 !prof !361 !PGOFuncName !362 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !363

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 687, ptr noundef nonnull @.str.1) #19
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !286
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 !prof !364 !PGOFuncName !365 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !286
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_edge_heap_reserve(ptr nocapture noundef %0) unnamed_addr #3 !prof !345 !PGOFuncName !366 {
  %2 = load ptr, ptr %0, align 8, !tbaa !286
  %3 = tail call fastcc i32 @VEC_edge_base_space(ptr noundef %2) #18
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !367

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #19
  store ptr %6, ptr %0, align 8, !tbaa !286
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_edge_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #6 !prof !345 !PGOFuncName !368 {
  %3 = load i32, ptr %0, align 8, !tbaa !321
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !321
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !286
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_space(ptr noundef readonly %0) unnamed_addr #2 !prof !345 !PGOFuncName !369 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !370

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !371
  %6 = load i32, ptr %0, align 8, !tbaa !321
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
define dso_local void @flow_loops_dump(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 !prof !372 {
  %4 = alloca %struct.loop_iterator, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  %6 = load ptr, ptr @cfun, align 8, !tbaa !286
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !373
  %9 = icmp ne ptr %8, null
  %10 = icmp ne ptr %0, null
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %24, !prof !374

12:                                               ; preds = %3
  %13 = tail call fastcc i32 @number_of_loops() #18
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.11, i32 noundef %13) #18
  call fastcc void @fel_init(ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 1) #18
  %15 = load ptr, ptr %5, align 8, !tbaa !286
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %12, %17
  %18 = phi ptr [ %19, %17 ], [ %15, %12 ]
  tail call void @flow_loop_dump(ptr noundef nonnull %18, ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) #18
  call fastcc void @fel_next(ptr noundef nonnull %4, ptr noundef nonnull %5) #18
  %19 = load ptr, ptr %5, align 8, !tbaa !286
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %17, !llvm.loop !375

21:                                               ; preds = %17, %12
  %22 = icmp eq i32 %2, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %21
  tail call fastcc void @flow_loops_cfg_dump(ptr noundef nonnull %0) #18
  br label %24

24:                                               ; preds = %21, %23, %3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @number_of_loops() unnamed_addr #0 !prof !376 !PGOFuncName !377 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !286
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !373
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !378

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !379
  %8 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %7) #18
  br label %9

9:                                                ; preds = %0, %5
  %10 = phi i32 [ %8, %5 ], [ 0, %0 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_init(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) unnamed_addr #3 !prof !381 !PGOFuncName !382 {
  %4 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  store i32 0, ptr %4, align 8, !tbaa !383
  %5 = load ptr, ptr @cfun, align 8, !tbaa !286
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !373
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10, !prof !385

9:                                                ; preds = %3
  store ptr null, ptr %0, align 8, !tbaa !386
  store ptr null, ptr %1, align 8, !tbaa !286
  br label %41

10:                                               ; preds = %3
  %11 = tail call fastcc i32 @number_of_loops() #18
  %12 = tail call fastcc ptr @VEC_int_heap_alloc(i32 noundef %11) #18
  store ptr %12, ptr %0, align 8, !tbaa !386
  %13 = and i32 %2, 1
  %14 = xor i32 %13, 1
  %15 = load ptr, ptr @cfun, align 8, !tbaa !286
  %16 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !373
  %18 = getelementptr inbounds %struct.loops, ptr %17, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !387
  br label %20

20:                                               ; preds = %30, %10
  %21 = phi ptr [ %19, %10 ], [ %31, %30 ]
  %22 = load i32, ptr %21, align 8, !tbaa !297
  %23 = icmp slt i32 %22, %14
  br i1 %23, label %26, label %24, !prof !388

24:                                               ; preds = %20
  %25 = load ptr, ptr %0, align 8, !tbaa !386
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %25, i32 noundef %22) #18
  br label %26

26:                                               ; preds = %24, %20
  %27 = getelementptr inbounds %struct.loop, ptr %21, i64 0, i32 8
  %28 = load ptr, ptr %27, align 8, !tbaa !389
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30, !prof !390

30:                                               ; preds = %32, %26
  %31 = phi ptr [ %28, %26 ], [ %35, %32 ]
  br label %20

32:                                               ; preds = %26, %37
  %33 = phi ptr [ %38, %37 ], [ %21, %26 ]
  %34 = getelementptr inbounds %struct.loop, ptr %33, i64 0, i32 9
  %35 = load ptr, ptr %34, align 8, !tbaa !391
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %30, !prof !392

37:                                               ; preds = %32
  %38 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %33) #18
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %32, !prof !393, !llvm.loop !394

40:                                               ; preds = %37
  tail call fastcc void @fel_next(ptr noundef nonnull %0, ptr noundef %1) #18
  br label %41

41:                                               ; preds = %40, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_next(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #3 !prof !395 !PGOFuncName !396 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #20
  %4 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !383
  br label %6

6:                                                ; preds = %11, %2
  %7 = phi i32 [ %12, %11 ], [ %5, %2 ]
  %8 = load ptr, ptr %0, align 8, !tbaa !386
  %9 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %8, i32 noundef %7, ptr noundef nonnull %3) #18, !range !301
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11, !prof !388

11:                                               ; preds = %6
  %12 = add i32 %7, 1
  store i32 %12, ptr %4, align 8, !tbaa !383
  %13 = load i32, ptr %3, align 4, !tbaa !311
  %14 = tail call fastcc ptr @get_loop(i32 noundef %13) #18
  store ptr %14, ptr %1, align 8, !tbaa !286
  %15 = icmp eq ptr %14, null
  br i1 %15, label %6, label %17, !prof !397, !llvm.loop !398

16:                                               ; preds = %6
  tail call fastcc void @VEC_int_heap_free(ptr noundef nonnull %0) #18
  store ptr null, ptr %1, align 8, !tbaa !286
  br label %17

17:                                               ; preds = %11, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @flow_loops_cfg_dump(ptr nocapture noundef %0) unnamed_addr #3 !prof !295 !PGOFuncName !399 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = load ptr, ptr @cfun, align 8, !tbaa !286
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !331
  %7 = load ptr, ptr %6, align 8, !tbaa !336
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !337
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !333
  %12 = icmp eq ptr %9, %11
  br i1 %12, label %45, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds i8, ptr %3, i64 8
  br label %15

15:                                               ; preds = %13, %35
  %16 = phi ptr [ %9, %13 ], [ %38, %35 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #20
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 9
  %18 = load i32, ptr %17, align 8, !tbaa !298
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %18) #18
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 1
  %21 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %20) #18
  store i32 0, ptr %3, align 8, !tbaa.struct !310
  store ptr %21, ptr %14, align 8, !tbaa.struct !312
  %22 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %21, ptr noundef nonnull %2) #18, !range !313
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %15, %24
  %25 = load ptr, ptr %2, align 8, !tbaa !286
  %26 = getelementptr inbounds %struct.edge_def, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !400
  %28 = getelementptr inbounds %struct.basic_block_def, ptr %27, i64 0, i32 9
  %29 = load i32, ptr %28, align 8, !tbaa !298
  %30 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %29) #18
  call fastcc void @ei_next(ptr noundef nonnull %3) #18
  %31 = load i32, ptr %3, align 8
  %32 = load ptr, ptr %14, align 8
  %33 = call fastcc zeroext i8 @ei_cond(i32 %31, ptr %32, ptr noundef nonnull %2) #18, !range !313
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %24, !llvm.loop !401

35:                                               ; preds = %24, %15
  %36 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 2, i64 1, ptr %0)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 6
  %38 = load ptr, ptr %37, align 8, !tbaa !337
  %39 = load ptr, ptr @cfun, align 8, !tbaa !286
  %40 = getelementptr inbounds %struct.function, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !331
  %42 = getelementptr inbounds %struct.control_flow_graph, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !333
  %44 = icmp eq ptr %38, %43
  br i1 %44, label %45, label %15, !llvm.loop !402

45:                                               ; preds = %35, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_int_heap_alloc(i32 noundef %0) unnamed_addr #3 !prof !381 !PGOFuncName !403 {
  %2 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 4) #19
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_loop_p_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #6 !prof !404 !PGOFuncName !405 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !406

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !290
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !407

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !286
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !286
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_int_base_quick_push(ptr noundef %0, i32 noundef %1) unnamed_addr #6 !prof !408 !PGOFuncName !409 {
  %3 = load i32, ptr %0, align 4, !tbaa !410
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 4, !tbaa !410
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %5
  store i32 %1, ptr %6, align 4, !tbaa !311
  ret void
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_int_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #6 !prof !395 !PGOFuncName !412 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !413

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 4, !tbaa !410
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !414

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !311
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi i32 [ %11, %8 ], [ 0, %5 ], [ 0, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store i32 %13, ptr %2, align 4, !tbaa !311
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_loop(i32 noundef %0) unnamed_addr #0 !prof !408 !PGOFuncName !415 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !286
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !373
  %5 = getelementptr inbounds %struct.loops, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !379
  %7 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %6, i32 noundef %0) #18
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_int_heap_free(ptr nocapture noundef %0) unnamed_addr #7 !prof !381 !PGOFuncName !416 {
  %2 = load ptr, ptr %0, align 8, !tbaa !286
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !385

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #18
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !286
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @flow_loop_free(ptr noundef %0) local_unnamed_addr #3 !prof !417 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  tail call fastcc void @VEC_loop_p_gc_free(ptr noundef nonnull %2) #18
  %3 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 18
  %4 = load ptr, ptr %3, align 8, !tbaa !418
  %5 = getelementptr inbounds %struct.loop_exit, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !419
  %7 = icmp eq ptr %6, %4
  br i1 %7, label %14, label %8, !prof !421

8:                                                ; preds = %1, %8
  %9 = phi ptr [ %11, %8 ], [ %6, %1 ]
  %10 = getelementptr inbounds %struct.loop_exit, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !419
  store ptr %9, ptr %10, align 8, !tbaa !419
  %12 = getelementptr inbounds %struct.loop_exit, ptr %9, i64 0, i32 1
  store ptr %9, ptr %12, align 8, !tbaa !422
  %13 = icmp eq ptr %11, %4
  br i1 %13, label %14, label %8, !prof !423, !llvm.loop !424

14:                                               ; preds = %8, %1
  tail call void @ggc_free(ptr noundef %4) #19
  tail call void @ggc_free(ptr noundef %0) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_loop_p_gc_free(ptr nocapture noundef %0) unnamed_addr #3 !prof !425 !PGOFuncName !426 {
  %2 = load ptr, ptr %0, align 8, !tbaa !286
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !427

4:                                                ; preds = %1
  tail call void @ggc_free(ptr noundef nonnull %2) #19
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !286
  ret void
}

; Function Attrs: optsize
declare void @ggc_free(ptr noundef) #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @flow_loops_free(ptr nocapture noundef %0) local_unnamed_addr #3 !prof !428 {
  %2 = alloca ptr, align 8
  %3 = getelementptr inbounds %struct.loops, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !379
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6, !prof !429

6:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  %7 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef nonnull %4, i32 noundef 0, ptr noundef nonnull %2) #18, !range !301
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %21, label %9, !prof !430

9:                                                ; preds = %6, %16
  %10 = phi ptr [ %17, %16 ], [ %4, %6 ]
  %11 = phi i32 [ %18, %16 ], [ 0, %6 ]
  %12 = load ptr, ptr %2, align 8, !tbaa !286
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14, !prof !431

14:                                               ; preds = %9
  tail call void @flow_loop_free(ptr noundef nonnull %12) #18
  %15 = load ptr, ptr %3, align 8, !tbaa !379
  br label %16

16:                                               ; preds = %9, %14
  %17 = phi ptr [ %10, %9 ], [ %15, %14 ]
  %18 = add i32 %11, 1
  %19 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %17, i32 noundef %18, ptr noundef nonnull %2) #18, !range !301
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %9, !prof !432, !llvm.loop !433

21:                                               ; preds = %16, %6
  tail call fastcc void @VEC_loop_p_gc_free(ptr noundef nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  br label %22

22:                                               ; preds = %21, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @flow_loop_nodes_find(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #3 !prof !434 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.edge_iterator, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  store ptr null, ptr %3, align 8, !tbaa !286
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #20
  %8 = tail call fastcc i32 @loop_depth(ptr noundef %1) #18
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 3
  store ptr %1, ptr %9, align 8, !tbaa !435
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 10
  store i32 %8, ptr %10, align 4, !tbaa !436
  %11 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !296
  %13 = tail call fastcc ptr @ei_start_1(ptr noundef %12) #18
  store i32 0, ptr %5, align 8, !tbaa.struct !310
  %14 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr %13, ptr %14, align 8, !tbaa.struct !312
  %15 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %13, ptr noundef nonnull %4) #18, !range !313
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %73, label %17, !prof !437

17:                                               ; preds = %2, %67
  %18 = phi i32 [ %68, %67 ], [ 1, %2 ]
  %19 = load ptr, ptr %4, align 8, !tbaa !286
  %20 = load ptr, ptr %19, align 8, !tbaa !302
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !435
  %23 = icmp eq ptr %22, %1
  br i1 %23, label %67, label %24, !prof !438

24:                                               ; preds = %17
  %25 = load ptr, ptr %11, align 8, !tbaa !296
  %26 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef nonnull %20, ptr noundef %25) #19
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %67, label %28, !prof !439

28:                                               ; preds = %24
  %29 = add nsw i32 %18, 1
  %30 = load ptr, ptr %19, align 8, !tbaa !302
  call fastcc void @VEC_basic_block_heap_safe_push(ptr noundef nonnull %3, ptr noundef %30) #18
  %31 = load ptr, ptr %19, align 8, !tbaa !302
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 3
  store ptr %1, ptr %32, align 8, !tbaa !435
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 10
  store i32 %8, ptr %33, align 4, !tbaa !436
  %34 = load ptr, ptr %3, align 8
  %35 = tail call fastcc i32 @VEC_basic_block_base_length(ptr noundef %34) #18
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %67, label %37, !prof !440

37:                                               ; preds = %28
  %38 = getelementptr inbounds i8, ptr %7, i64 8
  br label %39

39:                                               ; preds = %37, %62
  %40 = phi ptr [ %64, %62 ], [ %34, %37 ]
  %41 = phi i32 [ %63, %62 ], [ %29, %37 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #20
  %42 = tail call fastcc ptr @VEC_basic_block_base_pop(ptr noundef %40) #18
  %43 = tail call fastcc ptr @ei_start_1(ptr noundef %42) #18
  store i32 0, ptr %7, align 8, !tbaa.struct !310
  store ptr %43, ptr %38, align 8, !tbaa.struct !312
  %44 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %43, ptr noundef nonnull %6) #18, !range !313
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %62, label %46, !prof !441

46:                                               ; preds = %39, %56
  %47 = phi i32 [ %57, %56 ], [ %41, %39 ]
  %48 = load ptr, ptr %6, align 8, !tbaa !286
  %49 = load ptr, ptr %48, align 8, !tbaa !302
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %49, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !435
  %52 = icmp eq ptr %51, %1
  br i1 %52, label %56, label %53, !prof !442

53:                                               ; preds = %46
  store ptr %1, ptr %50, align 8, !tbaa !435
  %54 = getelementptr inbounds %struct.basic_block_def, ptr %49, i64 0, i32 10
  store i32 %8, ptr %54, align 4, !tbaa !436
  %55 = add nsw i32 %47, 1
  call fastcc void @VEC_basic_block_heap_safe_push(ptr noundef nonnull %3, ptr noundef nonnull %49) #18
  br label %56

56:                                               ; preds = %53, %46
  %57 = phi i32 [ %55, %53 ], [ %47, %46 ]
  call fastcc void @ei_next(ptr noundef nonnull %7) #18
  %58 = load i32, ptr %7, align 8
  %59 = load ptr, ptr %38, align 8
  %60 = call fastcc zeroext i8 @ei_cond(i32 %58, ptr %59, ptr noundef nonnull %6) #18, !range !313
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %46, !prof !443, !llvm.loop !444

62:                                               ; preds = %56, %39
  %63 = phi i32 [ %41, %39 ], [ %57, %56 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #20
  %64 = load ptr, ptr %3, align 8
  %65 = tail call fastcc i32 @VEC_basic_block_base_length(ptr noundef %64) #18
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %39, !prof !445, !llvm.loop !446

67:                                               ; preds = %62, %28, %17, %24
  %68 = phi i32 [ %18, %17 ], [ %18, %24 ], [ %29, %28 ], [ %63, %62 ]
  call fastcc void @ei_next(ptr noundef nonnull %5) #18
  %69 = load i32, ptr %5, align 8
  %70 = load ptr, ptr %14, align 8
  %71 = call fastcc zeroext i8 @ei_cond(i32 %69, ptr %70, ptr noundef nonnull %4) #18, !range !313
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %17, !prof !447, !llvm.loop !448

73:                                               ; preds = %67, %2
  %74 = phi i32 [ 1, %2 ], [ %68, %67 ]
  call fastcc void @VEC_basic_block_heap_free(ptr noundef nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  ret i32 %74
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_basic_block_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #3 !prof !449 !PGOFuncName !450 {
  tail call fastcc void @VEC_basic_block_heap_reserve(ptr noundef %0) #18
  %3 = load ptr, ptr %0, align 8, !tbaa !286
  tail call fastcc void @VEC_basic_block_base_quick_push(ptr noundef %3, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_basic_block_base_length(ptr noundef readonly %0) unnamed_addr #2 !prof !451 !PGOFuncName !452 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !453

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !454
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_basic_block_base_pop(ptr nocapture noundef %0) unnamed_addr #6 !prof !449 !PGOFuncName !456 {
  %2 = load i32, ptr %0, align 8, !tbaa !454
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !454
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !286
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_basic_block_heap_free(ptr nocapture noundef %0) unnamed_addr #7 !prof !434 !PGOFuncName !457 {
  %2 = load ptr, ptr %0, align 8, !tbaa !286
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !458

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #18
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !286
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_basic_block_heap_reserve(ptr nocapture noundef %0) unnamed_addr #3 !prof !449 !PGOFuncName !459 {
  %2 = load ptr, ptr %0, align 8, !tbaa !286
  %3 = tail call fastcc i32 @VEC_basic_block_base_space(ptr noundef %2) #18
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !460

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #19
  store ptr %6, ptr %0, align 8, !tbaa !286
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_basic_block_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #6 !prof !449 !PGOFuncName !461 {
  %3 = load i32, ptr %0, align 8, !tbaa !454
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !454
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !286
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_basic_block_base_space(ptr noundef readonly %0) unnamed_addr #2 !prof !449 !PGOFuncName !462 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !463

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !464
  %6 = load i32, ptr %0, align 8, !tbaa !454
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @flow_loop_tree_node_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 !prof !465 {
  %3 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !389
  %5 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 9
  store ptr %4, ptr %5, align 8, !tbaa !391
  store ptr %1, ptr %3, align 8, !tbaa !389
  tail call fastcc void @establish_preds(ptr noundef %1, ptr noundef %0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @establish_preds(ptr noundef %0, ptr noundef %1) unnamed_addr #3 !prof !466 !PGOFuncName !467 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  %4 = tail call fastcc i32 @loop_depth(ptr noundef %1) #18
  %5 = add i32 %4, 1
  %6 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !273
  tail call fastcc void @VEC_loop_p_base_truncate(ptr noundef %7) #18
  tail call fastcc void @VEC_loop_p_gc_reserve(ptr noundef nonnull %6, i32 noundef %5) #18
  %8 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !273
  %10 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %9, i32 noundef 0, ptr noundef nonnull %3) #18, !range !301
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %20, label %12, !prof !468

12:                                               ; preds = %2, %12
  %13 = phi i32 [ %16, %12 ], [ 0, %2 ]
  %14 = load ptr, ptr %6, align 8, !tbaa !273
  %15 = load ptr, ptr %3, align 8, !tbaa !286
  tail call fastcc void @VEC_loop_p_base_quick_push(ptr noundef %14, ptr noundef %15) #18
  %16 = add i32 %13, 1
  %17 = load ptr, ptr %8, align 8, !tbaa !273
  %18 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %17, i32 noundef %16, ptr noundef nonnull %3) #18, !range !301
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %12, !prof !469, !llvm.loop !470

20:                                               ; preds = %12, %2
  %21 = load ptr, ptr %6, align 8, !tbaa !273
  tail call fastcc void @VEC_loop_p_base_quick_push(ptr noundef %21, ptr noundef nonnull %1) #18
  %22 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !286
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25, !prof !471

25:                                               ; preds = %20, %25
  %26 = phi ptr [ %28, %25 ], [ %23, %20 ]
  tail call fastcc void @establish_preds(ptr noundef nonnull %26, ptr noundef %0) #18
  %27 = getelementptr inbounds %struct.loop, ptr %26, i64 0, i32 9
  %28 = load ptr, ptr %27, align 8, !tbaa !286
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %25, !prof !472, !llvm.loop !473

30:                                               ; preds = %25, %20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @VEC_loop_p_base_truncate(ptr noundef writeonly %0) unnamed_addr #10 !prof !474 !PGOFuncName !475 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3, !prof !476

3:                                                ; preds = %1
  store i32 0, ptr %0, align 8, !tbaa !290
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_loop_p_gc_reserve(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #3 !prof !466 !PGOFuncName !477 {
  %3 = load ptr, ptr %0, align 8, !tbaa !286
  %4 = tail call fastcc i32 @VEC_loop_p_base_space(ptr noundef %3, i32 noundef %1) #18, !range !301
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8, !prof !478

6:                                                ; preds = %2
  %7 = tail call ptr @vec_gc_p_reserve(ptr noundef %3, i32 noundef %1) #19
  store ptr %7, ptr %0, align 8, !tbaa !286
  br label %8

8:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_loop_p_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #6 !prof !479 !PGOFuncName !480 {
  %3 = load i32, ptr %0, align 8, !tbaa !290
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !290
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !286
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_loop_p_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #2 !prof !466 !PGOFuncName !481 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4, !prof !482

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !483
  %7 = load i32, ptr %0, align 8, !tbaa !290
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
define dso_local void @flow_loop_tree_node_remove(ptr noundef readonly %0) local_unnamed_addr #11 !prof !484 {
  %2 = tail call fastcc ptr @loop_outer(ptr noundef %0) #18
  %3 = getelementptr inbounds %struct.loop, ptr %2, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !389
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %13, label %6, !prof !485

6:                                                ; preds = %1, %6
  %7 = phi ptr [ %9, %6 ], [ %4, %1 ]
  %8 = getelementptr inbounds %struct.loop, ptr %7, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !391
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %11, label %6, !prof !486, !llvm.loop !487

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.loop, ptr %7, i64 0, i32 9
  br label %13

13:                                               ; preds = %1, %11
  %14 = phi ptr [ %12, %11 ], [ %3, %1 ]
  %15 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !391
  store ptr %16, ptr %14, align 8, !tbaa !286
  %17 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !273
  tail call fastcc void @VEC_loop_p_base_truncate(ptr noundef %18) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @alloc_loop() local_unnamed_addr #3 !prof !488 {
  %1 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 152) #19
  %2 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 32) #19
  %3 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 18
  store ptr %2, ptr %3, align 8, !tbaa !418
  %4 = getelementptr inbounds %struct.loop_exit, ptr %2, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !422
  %5 = getelementptr inbounds %struct.loop_exit, ptr %2, i64 0, i32 2
  store ptr %2, ptr %5, align 8, !tbaa !419
  %6 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 19
  store i8 0, ptr %6, align 8, !tbaa !489
  %7 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 20
  store ptr null, ptr %7, align 8, !tbaa !490
  ret ptr %1
}

; Function Attrs: optsize
declare ptr @ggc_alloc_cleared_stat(i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @flow_loops_find(ptr nocapture noundef %0) local_unnamed_addr #3 !prof !491 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  tail call void @calculate_dominance_info(i32 noundef 1) #19
  %5 = load ptr, ptr @cfun, align 8, !tbaa !286
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !331
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !335
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %12, !prof !492

11:                                               ; preds = %1
  tail call fastcc void @init_loops_structure(ptr noundef %0, i32 noundef 1) #18
  br label %202

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 5
  %14 = load i32, ptr %13, align 8, !tbaa !493
  %15 = tail call ptr @sbitmap_alloc(i32 noundef %14) #19
  tail call void @sbitmap_zero(ptr noundef %15) #19
  %16 = load ptr, ptr @cfun, align 8, !tbaa !286
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !331
  %19 = load ptr, ptr %18, align 8, !tbaa !336
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !337
  %22 = getelementptr inbounds %struct.control_flow_graph, ptr %18, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !333
  %24 = icmp eq ptr %21, %23
  br i1 %24, label %89, label %25, !prof !494

25:                                               ; preds = %12
  %26 = getelementptr inbounds i8, ptr %3, i64 8
  br label %27

27:                                               ; preds = %25, %79
  %28 = phi ptr [ %21, %25 ], [ %82, %79 ]
  %29 = phi i32 [ 0, %25 ], [ %80, %79 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #20
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 10
  store i32 0, ptr %30, align 4, !tbaa !436
  %31 = tail call fastcc ptr @ei_start_1(ptr noundef %28) #18
  store i32 0, ptr %3, align 8, !tbaa.struct !310
  store ptr %31, ptr %26, align 8, !tbaa.struct !312
  %32 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %31, ptr noundef nonnull %2) #18, !range !313
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %45, label %34, !prof !495

34:                                               ; preds = %27, %40
  %35 = load ptr, ptr %2, align 8, !tbaa !286
  %36 = getelementptr inbounds %struct.edge_def, ptr %35, i64 0, i32 7
  %37 = load i32, ptr %36, align 8, !tbaa !496
  %38 = and i32 %37, 2
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %79, !prof !497

40:                                               ; preds = %34
  call fastcc void @ei_next(ptr noundef nonnull %3) #18
  %41 = load i32, ptr %3, align 8
  %42 = load ptr, ptr %26, align 8
  %43 = call fastcc zeroext i8 @ei_cond(i32 %41, ptr %42, ptr noundef nonnull %2) #18, !range !313
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %34, !prof !498, !llvm.loop !499

45:                                               ; preds = %40, %27
  %46 = load ptr, ptr %2, align 8, !tbaa !286
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %79, !prof !500

48:                                               ; preds = %45
  store i32 0, ptr %3, align 8, !tbaa.struct !310
  store ptr %31, ptr %26, align 8, !tbaa.struct !312
  %49 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %31, ptr noundef nonnull %2) #18, !range !313
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %79, label %51, !prof !495

51:                                               ; preds = %48, %73
  %52 = phi i32 [ %74, %73 ], [ %29, %48 ]
  %53 = load ptr, ptr %2, align 8, !tbaa !286
  %54 = load ptr, ptr %53, align 8, !tbaa !302
  %55 = getelementptr inbounds %struct.edge_def, ptr %53, i64 0, i32 7
  %56 = load i32, ptr %55, align 8, !tbaa !496
  %57 = and i32 %56, 2
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %60, label %59, !prof !497

59:                                               ; preds = %51
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 424, ptr noundef nonnull @.str.1) #19
  br label %60

60:                                               ; preds = %51, %59
  %61 = load ptr, ptr @cfun, align 8, !tbaa !286
  %62 = getelementptr inbounds %struct.function, ptr %61, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !331
  %64 = load ptr, ptr %63, align 8, !tbaa !336
  %65 = icmp eq ptr %54, %64
  br i1 %65, label %73, label %66, !prof !501

66:                                               ; preds = %60
  %67 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %54, ptr noundef %28) #19
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %73, label %69, !prof !502

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 9
  %71 = load i32, ptr %70, align 8, !tbaa !298
  tail call fastcc void @SET_BIT(ptr noundef %15, i32 noundef %71) #18
  %72 = add nsw i32 %52, 1
  br label %73

73:                                               ; preds = %69, %66, %60
  %74 = phi i32 [ %72, %69 ], [ %52, %66 ], [ %52, %60 ]
  call fastcc void @ei_next(ptr noundef nonnull %3) #18
  %75 = load i32, ptr %3, align 8
  %76 = load ptr, ptr %26, align 8
  %77 = call fastcc zeroext i8 @ei_cond(i32 %75, ptr %76, ptr noundef nonnull %2) #18, !range !313
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %51, !prof !498, !llvm.loop !503

79:                                               ; preds = %34, %73, %48, %45
  %80 = phi i32 [ %29, %45 ], [ %29, %48 ], [ %74, %73 ], [ %29, %34 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #20
  %81 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 6
  %82 = load ptr, ptr %81, align 8, !tbaa !337
  %83 = load ptr, ptr @cfun, align 8, !tbaa !286
  %84 = getelementptr inbounds %struct.function, ptr %83, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !331
  %86 = getelementptr inbounds %struct.control_flow_graph, ptr %85, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !333
  %88 = icmp eq ptr %82, %87
  br i1 %88, label %89, label %27, !prof !504, !llvm.loop !505

89:                                               ; preds = %79, %12
  %90 = phi i32 [ 0, %12 ], [ %80, %79 ]
  %91 = add nsw i32 %90, 1
  tail call fastcc void @init_loops_structure(ptr noundef %0, i32 noundef %91) #18
  %92 = load ptr, ptr @cfun, align 8, !tbaa !286
  %93 = getelementptr inbounds %struct.function, ptr %92, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !331
  %95 = load ptr, ptr %94, align 8, !tbaa !336
  %96 = getelementptr inbounds %struct.control_flow_graph, ptr %94, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !333
  %98 = getelementptr inbounds %struct.basic_block_def, ptr %95, i64 0, i32 6
  %99 = load ptr, ptr %98, align 8, !tbaa !337
  %100 = icmp eq ptr %99, %97
  br i1 %100, label %110, label %101, !prof !494

101:                                              ; preds = %89
  %102 = getelementptr inbounds %struct.loops, ptr %0, i64 0, i32 3
  %103 = load ptr, ptr %102, align 8, !tbaa !387
  br label %104

104:                                              ; preds = %101, %104
  %105 = phi ptr [ %99, %101 ], [ %108, %104 ]
  %106 = getelementptr inbounds %struct.basic_block_def, ptr %105, i64 0, i32 3
  store ptr %103, ptr %106, align 8, !tbaa !435
  %107 = getelementptr inbounds %struct.basic_block_def, ptr %105, i64 0, i32 6
  %108 = load ptr, ptr %107, align 8, !tbaa !337
  %109 = icmp eq ptr %108, %97
  br i1 %109, label %110, label %104, !prof !504, !llvm.loop !506

110:                                              ; preds = %104, %89
  %111 = icmp eq i32 %90, 0
  br i1 %111, label %196, label %112, !prof !507

112:                                              ; preds = %110
  %113 = getelementptr inbounds %struct.control_flow_graph, ptr %94, i64 0, i32 3
  %114 = load i32, ptr %113, align 8, !tbaa !335
  %115 = sext i32 %114 to i64
  %116 = shl nsw i64 %115, 2
  %117 = tail call ptr @xmalloc(i64 noundef %116) #19
  %118 = load ptr, ptr @cfun, align 8, !tbaa !286
  %119 = getelementptr inbounds %struct.function, ptr %118, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !331
  %121 = getelementptr inbounds %struct.control_flow_graph, ptr %120, i64 0, i32 3
  %122 = load i32, ptr %121, align 8, !tbaa !335
  %123 = sext i32 %122 to i64
  %124 = shl nsw i64 %123, 2
  %125 = tail call ptr @xmalloc(i64 noundef %124) #19
  %126 = tail call i32 @pre_and_rev_post_order_compute(ptr noundef %117, ptr noundef %125, i8 noundef zeroext 0) #19
  %127 = load ptr, ptr @cfun, align 8, !tbaa !286
  %128 = getelementptr inbounds %struct.function, ptr %127, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !331
  %130 = getelementptr inbounds %struct.control_flow_graph, ptr %129, i64 0, i32 3
  %131 = load i32, ptr %130, align 8, !tbaa !335
  %132 = icmp sgt i32 %131, 2
  br i1 %132, label %133, label %195, !prof !508

133:                                              ; preds = %112
  %134 = getelementptr inbounds %struct.loops, ptr %0, i64 0, i32 1
  %135 = getelementptr inbounds i8, ptr %4, i64 8
  br label %136

136:                                              ; preds = %133, %184
  %137 = phi i64 [ 0, %133 ], [ %186, %184 ]
  %138 = phi ptr [ %129, %133 ], [ %189, %184 ]
  %139 = phi i32 [ 1, %133 ], [ %185, %184 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #20
  %140 = getelementptr inbounds i32, ptr %125, i64 %137
  %141 = load i32, ptr %140, align 4, !tbaa !311
  %142 = lshr i32 %141, 6
  %143 = zext nneg i32 %142 to i64
  %144 = getelementptr inbounds %struct.simple_bitmap_def, ptr %15, i64 0, i32 3, i64 %143
  %145 = load i64, ptr %144, align 8, !tbaa !509
  %146 = and i32 %141, 63
  %147 = zext nneg i32 %146 to i64
  %148 = shl nuw i64 1, %147
  %149 = and i64 %148, %145
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %184, label %151, !prof !510

151:                                              ; preds = %136
  %152 = getelementptr inbounds %struct.control_flow_graph, ptr %138, i64 0, i32 2
  %153 = load ptr, ptr %152, align 8, !tbaa !511
  %154 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %153, i32 noundef %141) #18
  %155 = tail call ptr @alloc_loop() #18
  %156 = load ptr, ptr %134, align 8, !tbaa !379
  tail call fastcc void @VEC_loop_p_base_quick_push(ptr noundef %156, ptr noundef %155) #18
  %157 = getelementptr inbounds %struct.loop, ptr %155, i64 0, i32 2
  store ptr %154, ptr %157, align 8, !tbaa !296
  store i32 %139, ptr %155, align 8, !tbaa !297
  %158 = add nsw i32 %139, 1
  %159 = getelementptr inbounds %struct.basic_block_def, ptr %154, i64 0, i32 3
  %160 = load ptr, ptr %159, align 8, !tbaa !435
  tail call void @flow_loop_tree_node_add(ptr noundef %160, ptr noundef nonnull %155) #18
  %161 = load ptr, ptr %157, align 8, !tbaa !296
  %162 = tail call i32 @flow_loop_nodes_find(ptr noundef %161, ptr noundef nonnull %155) #18
  %163 = getelementptr inbounds %struct.loop, ptr %155, i64 0, i32 6
  store i32 %162, ptr %163, align 4, !tbaa !306
  %164 = tail call fastcc ptr @ei_start_1(ptr noundef %154) #18
  store i32 0, ptr %4, align 8, !tbaa.struct !310
  store ptr %164, ptr %135, align 8, !tbaa.struct !312
  %165 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %164, ptr noundef nonnull %2) #18, !range !313
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %184, label %167, !prof !512

167:                                              ; preds = %151
  %168 = getelementptr inbounds %struct.loop, ptr %155, i64 0, i32 3
  br label %169

169:                                              ; preds = %167, %179
  %170 = load ptr, ptr %2, align 8, !tbaa !286
  %171 = load ptr, ptr %170, align 8, !tbaa !302
  %172 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef nonnull %155, ptr noundef %171) #18, !range !313
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %179, label %174, !prof !513

174:                                              ; preds = %169
  %175 = load ptr, ptr %168, align 8, !tbaa !300
  %176 = icmp eq ptr %175, null
  br i1 %176, label %177, label %178, !prof !514

177:                                              ; preds = %174
  store ptr %171, ptr %168, align 8, !tbaa !300
  br label %179

178:                                              ; preds = %174
  store ptr null, ptr %168, align 8, !tbaa !300
  br label %184

179:                                              ; preds = %177, %169
  call fastcc void @ei_next(ptr noundef nonnull %4) #18
  %180 = load i32, ptr %4, align 8
  %181 = load ptr, ptr %135, align 8
  %182 = call fastcc zeroext i8 @ei_cond(i32 %180, ptr %181, ptr noundef nonnull %2) #18, !range !313
  %183 = icmp eq i8 %182, 0
  br i1 %183, label %184, label %169, !prof !515, !llvm.loop !516

184:                                              ; preds = %179, %151, %178, %136
  %185 = phi i32 [ %139, %136 ], [ %158, %178 ], [ %158, %151 ], [ %158, %179 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #20
  %186 = add nuw nsw i64 %137, 1
  %187 = load ptr, ptr @cfun, align 8, !tbaa !286
  %188 = getelementptr inbounds %struct.function, ptr %187, i64 0, i32 1
  %189 = load ptr, ptr %188, align 8, !tbaa !331
  %190 = getelementptr inbounds %struct.control_flow_graph, ptr %189, i64 0, i32 3
  %191 = load i32, ptr %190, align 8, !tbaa !335
  %192 = add nsw i32 %191, -2
  %193 = sext i32 %192 to i64
  %194 = icmp slt i64 %186, %193
  br i1 %194, label %136, label %195, !prof !517, !llvm.loop !518

195:                                              ; preds = %184, %112
  tail call void @free(ptr noundef %117) #18
  tail call void @free(ptr noundef %125) #18
  br label %196

196:                                              ; preds = %195, %110
  %197 = load ptr, ptr %15, align 8, !tbaa !519
  tail call void @free(ptr noundef %197) #18
  tail call void @free(ptr noundef %15) #18
  %198 = getelementptr inbounds %struct.loops, ptr %0, i64 0, i32 2
  store ptr null, ptr %198, align 8, !tbaa !521
  %199 = getelementptr inbounds %struct.loops, ptr %0, i64 0, i32 1
  %200 = load ptr, ptr %199, align 8, !tbaa !379
  %201 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %200) #18
  br label %202

202:                                              ; preds = %196, %11
  %203 = phi i32 [ 1, %11 ], [ %201, %196 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  ret i32 %203
}

; Function Attrs: optsize
declare void @calculate_dominance_info(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_loops_structure(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #3 !prof !491 !PGOFuncName !522 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %3 = tail call fastcc ptr @VEC_loop_p_gc_alloc(i32 noundef %1) #18
  %4 = getelementptr inbounds %struct.loops, ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !379
  %5 = tail call ptr @alloc_loop() #18
  %6 = load ptr, ptr @cfun, align 8, !tbaa !286
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !331
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !335
  %11 = getelementptr inbounds %struct.loop, ptr %5, i64 0, i32 6
  store i32 %10, ptr %11, align 4, !tbaa !306
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !333
  %14 = getelementptr inbounds %struct.loop, ptr %5, i64 0, i32 3
  store ptr %13, ptr %14, align 8, !tbaa !300
  %15 = load ptr, ptr %8, align 8, !tbaa !336
  %16 = getelementptr inbounds %struct.loop, ptr %5, i64 0, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !296
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 3
  store ptr %5, ptr %17, align 8, !tbaa !435
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 3
  store ptr %5, ptr %18, align 8, !tbaa !435
  %19 = load ptr, ptr %4, align 8, !tbaa !379
  tail call fastcc void @VEC_loop_p_base_quick_push(ptr noundef %19, ptr noundef %5) #18
  %20 = getelementptr inbounds %struct.loops, ptr %0, i64 0, i32 3
  store ptr %5, ptr %20, align 8, !tbaa !387
  ret void
}

; Function Attrs: optsize
declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #12 !prof !523 !PGOFuncName !524 {
  %3 = load ptr, ptr %0, align 8, !tbaa !519
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11, !prof !525

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
  %15 = load i64, ptr %14, align 8, !tbaa !509
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !526
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !526
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !509
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !509
  ret void
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @pre_and_rev_post_order_compute(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 !prof !527 !PGOFuncName !528 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !286
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @flow_bb_inside_loop_p(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #0 !prof !529 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !286
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !331
  %6 = load ptr, ptr %5, align 8, !tbaa !336
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %18, label %8, !prof !530

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !333
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %18, label %12, !prof !531

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !435
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %18, label %16, !prof !532

16:                                               ; preds = %12
  %17 = tail call zeroext i8 @flow_loop_nested_p(ptr noundef %0, ptr noundef %14) #18, !range !313
  br label %18

18:                                               ; preds = %12, %16, %2, %8
  %19 = phi i8 [ 0, %8 ], [ 0, %2 ], [ 1, %12 ], [ %17, %16 ]
  ret i8 %19
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_loop_p_gc_alloc(i32 noundef %0) unnamed_addr #3 !prof !491 !PGOFuncName !533 {
  %2 = tail call ptr @vec_gc_p_reserve_exact(ptr noundef null, i32 noundef %0) #19
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @vec_gc_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @disambiguate_loops_with_multiple_latches() local_unnamed_addr #3 !prof !381 {
  %1 = alloca %struct.loop_iterator, align 8
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  call fastcc void @fel_init(ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef 0) #18
  %3 = load ptr, ptr %2, align 8, !tbaa !286
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5, !prof !534

5:                                                ; preds = %0, %11
  %6 = phi ptr [ %12, %11 ], [ %3, %0 ]
  %7 = getelementptr inbounds %struct.loop, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !300
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11, !prof !535

10:                                               ; preds = %5
  tail call fastcc void @disambiguate_multiple_latches(ptr noundef nonnull %6) #18
  br label %11

11:                                               ; preds = %5, %10
  call fastcc void @fel_next(ptr noundef nonnull %1, ptr noundef nonnull %2) #18
  %12 = load ptr, ptr %2, align 8, !tbaa !286
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %5, !prof !536, !llvm.loop !537

14:                                               ; preds = %11, %0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @disambiguate_multiple_latches(ptr noundef %0) unnamed_addr #3 !prof !538 !PGOFuncName !539 {
  %2 = load ptr, ptr @dump_file, align 8, !tbaa !286
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4, !prof !540

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8, !tbaa !297
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.15, i32 noundef %5) #18
  br label %7

7:                                                ; preds = %4, %1
  %8 = load ptr, ptr @cfun, align 8, !tbaa !286
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !331
  %11 = load ptr, ptr %10, align 8, !tbaa !336
  %12 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !296
  %14 = tail call ptr @find_edge(ptr noundef %11, ptr noundef %13) #19
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16, !prof !541

16:                                               ; preds = %7
  %17 = tail call ptr @split_edge(ptr noundef nonnull %14) #19
  br label %18

18:                                               ; preds = %16, %7
  %19 = tail call fastcc ptr @find_subloop_latch_edge(ptr noundef nonnull %0) #18
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21, !prof !542

21:                                               ; preds = %18, %21
  %22 = phi ptr [ %23, %21 ], [ %19, %18 ]
  tail call fastcc void @form_subloop(ptr noundef %0, ptr noundef nonnull %22) #18
  %23 = tail call fastcc ptr @find_subloop_latch_edge(ptr noundef %0) #18
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %21, !prof !543

25:                                               ; preds = %21, %18
  tail call fastcc void @merge_latch_edges(ptr noundef %0) #18
  ret void
}

; Function Attrs: optsize
declare ptr @find_edge(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @split_edge(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_subloop_latch_edge(ptr noundef %0) unnamed_addr #3 !prof !544 !PGOFuncName !545 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  %3 = tail call fastcc ptr @get_loop_latch_edges(ptr noundef %0) #18
  store ptr %3, ptr %2, align 8, !tbaa !286
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #18
  %5 = icmp ugt i32 %4, 1
  br i1 %5, label %6, label %14, !prof !546

6:                                                ; preds = %1
  %7 = tail call fastcc ptr @find_subloop_latch_edge_by_profile(ptr noundef %3) #18
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %14, !prof !547

9:                                                ; preds = %6
  %10 = tail call i32 @current_ir_type() #19
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14, !prof !548

12:                                               ; preds = %9
  %13 = tail call fastcc ptr @find_subloop_latch_edge_by_ivs(ptr noundef %0, ptr noundef %3) #18
  br label %14

14:                                               ; preds = %6, %9, %12, %1
  %15 = phi ptr [ %7, %6 ], [ %13, %12 ], [ null, %9 ], [ null, %1 ]
  call fastcc void @VEC_edge_heap_free(ptr noundef nonnull %2) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @form_subloop(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #3 !prof !549 !PGOFuncName !550 {
  %3 = alloca %struct.edge_iterator, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  %5 = tail call ptr @pointer_set_create() #19
  store ptr %5, ptr @mfb_reis_set, align 8, !tbaa !286
  %6 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !296
  %8 = tail call fastcc ptr @ei_start_1(ptr noundef %7) #18
  store i32 0, ptr %3, align 8, !tbaa.struct !310
  %9 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %8, ptr %9, align 8, !tbaa.struct !312
  %10 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %8, ptr noundef nonnull %4) #18, !range !313
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %23, label %12, !prof !551

12:                                               ; preds = %2, %18
  %13 = load ptr, ptr %4, align 8, !tbaa !286
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %18, label %15, !prof !552

15:                                               ; preds = %12
  %16 = load ptr, ptr @mfb_reis_set, align 8, !tbaa !286
  %17 = tail call i32 @pointer_set_insert(ptr noundef %16, ptr noundef %13) #19
  br label %18

18:                                               ; preds = %12, %15
  call fastcc void @ei_next(ptr noundef nonnull %3) #18
  %19 = load i32, ptr %3, align 8
  %20 = load ptr, ptr %9, align 8
  %21 = call fastcc zeroext i8 @ei_cond(i32 %19, ptr %20, ptr noundef nonnull %4) #18, !range !313
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %12, !prof !553, !llvm.loop !554

23:                                               ; preds = %18, %2
  %24 = load ptr, ptr %6, align 8, !tbaa !296
  %25 = tail call ptr @make_forwarder_block(ptr noundef %24, ptr noundef nonnull @mfb_redirect_edges_in_set, ptr noundef null) #19
  %26 = load ptr, ptr @mfb_reis_set, align 8, !tbaa !286
  tail call void @pointer_set_destroy(ptr noundef %26) #19
  %27 = load ptr, ptr %25, align 8, !tbaa !302
  store ptr %27, ptr %6, align 8, !tbaa !296
  %28 = tail call ptr @alloc_loop() #18
  %29 = getelementptr inbounds %struct.edge_def, ptr %25, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !400
  %31 = getelementptr inbounds %struct.loop, ptr %28, i64 0, i32 2
  store ptr %30, ptr %31, align 8, !tbaa !296
  %32 = load ptr, ptr %1, align 8, !tbaa !302
  %33 = getelementptr inbounds %struct.loop, ptr %28, i64 0, i32 3
  store ptr %32, ptr %33, align 8, !tbaa !300
  tail call void @add_loop(ptr noundef %28, ptr noundef %0) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @merge_latch_edges(ptr nocapture noundef %0) unnamed_addr #3 !prof !538 !PGOFuncName !555 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  %4 = tail call fastcc ptr @get_loop_latch_edges(ptr noundef %0) #18
  store ptr %4, ptr %2, align 8, !tbaa !286
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  %5 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %4) #18
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8, !prof !556

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 690, ptr noundef nonnull @.str.1) #19
  br label %8

8:                                                ; preds = %1, %7
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %4) #18
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %13, !prof !557

11:                                               ; preds = %8
  %12 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %4, i32 noundef 0) #18
  br label %38

13:                                               ; preds = %8
  %14 = load ptr, ptr @dump_file, align 8, !tbaa !286
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16, !prof !558

16:                                               ; preds = %13
  %17 = load i32, ptr %0, align 8, !tbaa !297
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %14, ptr noundef nonnull @.str.19, i32 noundef %17) #18
  br label %19

19:                                               ; preds = %16, %13
  %20 = tail call ptr @pointer_set_create() #19
  store ptr %20, ptr @mfb_reis_set, align 8, !tbaa !286
  %21 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %3) #18, !range !301
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %31, label %23, !prof !559

23:                                               ; preds = %19, %23
  %24 = phi i32 [ %28, %23 ], [ 0, %19 ]
  %25 = load ptr, ptr @mfb_reis_set, align 8, !tbaa !286
  %26 = load ptr, ptr %3, align 8, !tbaa !286
  %27 = tail call i32 @pointer_set_insert(ptr noundef %25, ptr noundef %26) #19
  %28 = add i32 %24, 1
  %29 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %4, i32 noundef %28, ptr noundef nonnull %3) #18, !range !301
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %23, !prof !560, !llvm.loop !561

31:                                               ; preds = %23, %19
  %32 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !296
  %34 = tail call ptr @make_forwarder_block(ptr noundef %33, ptr noundef nonnull @mfb_redirect_edges_in_set, ptr noundef null) #19
  %35 = load ptr, ptr @mfb_reis_set, align 8, !tbaa !286
  tail call void @pointer_set_destroy(ptr noundef %35) #19
  %36 = getelementptr inbounds %struct.edge_def, ptr %34, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !400
  store ptr %37, ptr %32, align 8, !tbaa !296
  br label %38

38:                                               ; preds = %31, %11
  %39 = phi ptr [ %34, %31 ], [ %12, %11 ]
  %40 = load ptr, ptr %39, align 8, !tbaa !302
  %41 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  store ptr %40, ptr %41, align 8, !tbaa !300
  call fastcc void @VEC_edge_heap_free(ptr noundef nonnull %2) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc ptr @find_subloop_latch_edge_by_profile(ptr noundef %0) unnamed_addr #14 !prof !562 !PGOFuncName !563 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  %3 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #18, !range !301
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %40, label %5, !prof !564

5:                                                ; preds = %1, %15
  %6 = phi i64 [ %18, %15 ], [ 0, %1 ]
  %7 = phi i64 [ %17, %15 ], [ 0, %1 ]
  %8 = phi ptr [ %16, %15 ], [ null, %1 ]
  %9 = phi i32 [ %19, %15 ], [ 0, %1 ]
  %10 = load ptr, ptr %2, align 8, !tbaa !286
  %11 = getelementptr inbounds %struct.edge_def, ptr %10, i64 0, i32 9
  %12 = load i64, ptr %11, align 8, !tbaa !565
  %13 = icmp sgt i64 %12, %7
  br i1 %13, label %14, label %15, !prof !566

14:                                               ; preds = %5
  br label %15

15:                                               ; preds = %14, %5
  %16 = phi ptr [ %10, %14 ], [ %8, %5 ]
  %17 = phi i64 [ %12, %14 ], [ %7, %5 ]
  %18 = add nsw i64 %12, %6
  %19 = add i32 %9, 1
  %20 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %0, i32 noundef %19, ptr noundef nonnull %2) #18, !range !301
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %5, !prof !567, !llvm.loop !568

22:                                               ; preds = %15
  %23 = icmp slt i64 %18, 10
  br i1 %23, label %40, label %24, !prof !569

24:                                               ; preds = %22
  %25 = sub nsw i64 %18, %17
  %26 = shl nsw i64 %25, 3
  %27 = icmp sgt i64 %26, %18
  br i1 %27, label %40, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr @dump_file, align 8, !tbaa !286
  %30 = icmp eq ptr %29, null
  br i1 %30, label %40, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr %16, align 8, !tbaa !302
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 9
  %34 = load i32, ptr %33, align 8, !tbaa !298
  %35 = getelementptr inbounds %struct.edge_def, ptr %16, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !400
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 9
  %38 = load i32, ptr %37, align 8, !tbaa !298
  %39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %29, ptr noundef nonnull @.str.16, i32 noundef %34, i32 noundef %38) #18
  br label %40

40:                                               ; preds = %1, %28, %31, %22, %24
  %41 = phi ptr [ null, %24 ], [ null, %22 ], [ %16, %31 ], [ %16, %28 ], [ null, %1 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  ret ptr %41
}

; Function Attrs: optsize
declare i32 @current_ir_type() local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_subloop_latch_edge_by_ivs(ptr noundef readonly %0, ptr noundef %1) unnamed_addr #3 !prof !570 !PGOFuncName !571 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  %5 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %1, i32 noundef 0) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #20
  %6 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %1, i32 noundef 1, ptr noundef nonnull %3) #18, !range !301
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12, !prof !572

8:                                                ; preds = %12, %2
  %9 = phi ptr [ %5, %2 ], [ %20, %12 ]
  %10 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %3) #18, !range !301
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %35, label %28, !prof !573

12:                                               ; preds = %2, %12
  %13 = phi ptr [ %20, %12 ], [ %5, %2 ]
  %14 = phi i32 [ %21, %12 ], [ 1, %2 ]
  %15 = load ptr, ptr %13, align 8, !tbaa !302
  %16 = load ptr, ptr %3, align 8
  %17 = load ptr, ptr %16, align 8, !tbaa !302
  %18 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %15, ptr noundef %17) #19
  %19 = icmp eq i8 %18, 0
  %20 = select i1 %19, ptr %13, ptr %16, !prof !574
  %21 = add i32 %14, 1
  %22 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %1, i32 noundef %21, ptr noundef nonnull %3) #18, !range !301
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %8, label %12, !prof !575, !llvm.loop !576

24:                                               ; preds = %28
  %25 = add i32 %29, 1
  %26 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %1, i32 noundef %25, ptr noundef nonnull %3) #18, !range !301
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %35, label %28, !prof !577, !llvm.loop !578

28:                                               ; preds = %8, %24
  %29 = phi i32 [ %25, %24 ], [ 0, %8 ]
  %30 = load ptr, ptr %3, align 8, !tbaa !286
  %31 = load ptr, ptr %30, align 8, !tbaa !302
  %32 = load ptr, ptr %9, align 8, !tbaa !302
  %33 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %31, ptr noundef %32) #19
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %92, label %24, !prof !579

35:                                               ; preds = %24, %8
  %36 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !296
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %37) #19
  %38 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #18, !range !313
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %80, !prof !580

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 6
  br label %42

42:                                               ; preds = %40, %77
  %43 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #18
  %44 = load i32, ptr %41, align 4, !tbaa !581
  %45 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %43, i32 noundef %44) #18
  %46 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %45) #18
  %47 = load i64, ptr %46, align 8
  %48 = and i64 %47, 65535
  %49 = icmp eq i64 %48, 141
  br i1 %49, label %50, label %77, !prof !582

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.tree_ssa_name, ptr %46, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !526
  %53 = icmp eq ptr %52, %43
  br i1 %53, label %77, label %54, !prof !583

54:                                               ; preds = %50
  %55 = call fastcc ptr @gimple_bb(ptr noundef %52) #18
  %56 = icmp eq ptr %55, null
  br i1 %56, label %77, label %57, !prof !584

57:                                               ; preds = %54
  %58 = call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %0, ptr noundef nonnull %55) #18, !range !313
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %77, label %60, !prof !584

60:                                               ; preds = %57
  %61 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %3) #18, !range !301
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %77, label %63, !prof !585

63:                                               ; preds = %60, %73
  %64 = phi i32 [ %74, %73 ], [ 0, %60 ]
  %65 = load ptr, ptr %3, align 8, !tbaa !286
  %66 = icmp eq ptr %65, %9
  br i1 %66, label %73, label %67, !prof !586

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.edge_def, ptr %65, i64 0, i32 6
  %69 = load i32, ptr %68, align 4, !tbaa !581
  %70 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %43, i32 noundef %69) #18
  %71 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %70) #18
  %72 = icmp eq ptr %71, %46
  br i1 %72, label %92, label %73, !prof !587

73:                                               ; preds = %63, %67
  %74 = add i32 %64, 1
  %75 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %1, i32 noundef %74, ptr noundef nonnull %3) #18, !range !301
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %63, !prof !588, !llvm.loop !589

77:                                               ; preds = %73, %60, %54, %57, %42, %50
  call fastcc void @gsi_next(ptr noundef nonnull %4) #18
  %78 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #18, !range !313
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %42, label %80, !prof !590, !llvm.loop !591

80:                                               ; preds = %77, %35
  %81 = load ptr, ptr @dump_file, align 8, !tbaa !286
  %82 = icmp eq ptr %81, null
  br i1 %82, label %92, label %83, !prof !592

83:                                               ; preds = %80
  %84 = load ptr, ptr %9, align 8, !tbaa !302
  %85 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 9
  %86 = load i32, ptr %85, align 8, !tbaa !298
  %87 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !400
  %89 = getelementptr inbounds %struct.basic_block_def, ptr %88, i64 0, i32 9
  %90 = load i32, ptr %89, align 8, !tbaa !298
  %91 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %81, ptr noundef nonnull @.str.17, i32 noundef %86, i32 noundef %90) #18
  br label %92

92:                                               ; preds = %28, %67, %80, %83
  %93 = phi ptr [ %9, %83 ], [ %9, %80 ], [ null, %67 ], [ null, %28 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  ret ptr %93
}

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #2 !prof !593 !PGOFuncName !594 {
  %2 = load ptr, ptr %0, align 8, !tbaa !595
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #0 !prof !597 !PGOFuncName !598 {
  %2 = load ptr, ptr %0, align 8, !tbaa !595
  %3 = load ptr, ptr %2, align 8, !tbaa !599
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !601 !PGOFuncName !602 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !603
  %4 = load ptr, ptr %3, align 8, !tbaa !286
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #3 !prof !601 !PGOFuncName !605 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #18
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !606 !PGOFuncName !607 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !526
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #15 !prof !608 !PGOFuncName !609 {
  %2 = load ptr, ptr %0, align 8, !tbaa !595
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !610
  store ptr %4, ptr %0, align 8, !tbaa !595
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !601 !PGOFuncName !611 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !526
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7, !prof !612

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.18, i32 noundef 3103, ptr noundef nonnull @.str.1) #19
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
define internal zeroext i8 @mfb_redirect_edges_in_set(ptr noundef %0) #3 !prof !613 !PGOFuncName !614 {
  %2 = load ptr, ptr @mfb_reis_set, align 8, !tbaa !286
  %3 = tail call i32 @pointer_set_contains(ptr noundef %2, ptr noundef %0) #19
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
define dso_local i32 @get_loop_body_with_size(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 !prof !615 {
  %4 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !296
  %6 = tail call i32 @dfs_enumerate_from(ptr noundef %5, i32 noundef 1, ptr noundef nonnull @glb_enum_p, ptr noundef %1, i32 noundef %2, ptr noundef %0) #19
  ret i32 %6
}

; Function Attrs: optsize
declare i32 @dfs_enumerate_from(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @glb_enum_p(ptr noundef %0, ptr nocapture noundef readonly %1) #3 !prof !616 !PGOFuncName !617 {
  %3 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !296
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %10, label %6, !prof !618

6:                                                ; preds = %2
  %7 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %0, ptr noundef %4) #19
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
define dso_local ptr @get_loop_body_in_dom_order(ptr noundef %0) local_unnamed_addr #3 !prof !619 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #20
  %3 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !306
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8, !prof !620

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 878, ptr noundef nonnull @.str.1) #19
  %7 = load i32, ptr %3, align 4, !tbaa !306
  br label %8

8:                                                ; preds = %1, %6
  %9 = phi i32 [ %4, %1 ], [ %7, %6 ]
  %10 = zext i32 %9 to i64
  %11 = tail call ptr @xcalloc(i64 noundef %10, i64 noundef 8) #19
  %12 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !300
  %14 = load ptr, ptr @cfun, align 8, !tbaa !286
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !331
  %17 = getelementptr inbounds %struct.control_flow_graph, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !333
  %19 = icmp eq ptr %13, %18
  br i1 %19, label %20, label %21, !prof !620

20:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 882, ptr noundef nonnull @.str.1) #19
  br label %21

21:                                               ; preds = %8, %20
  store i32 0, ptr %2, align 4, !tbaa !311
  %22 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !296
  call fastcc void @fill_sons_in_loop(ptr noundef nonnull %0, ptr noundef %23, ptr noundef %11, ptr noundef nonnull %2) #18
  %24 = load i32, ptr %2, align 4, !tbaa !311
  %25 = load i32, ptr %3, align 4, !tbaa !306
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %28, label %27, !prof !621

27:                                               ; preds = %21
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 887, ptr noundef nonnull @.str.1) #19
  br label %28

28:                                               ; preds = %21, %27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #20
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fill_sons_in_loop(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef %3) unnamed_addr #3 !prof !622 !PGOFuncName !623 {
  %5 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  br label %6

6:                                                ; preds = %28, %4
  %7 = phi ptr [ %1, %4 ], [ %25, %28 ]
  %8 = load i32, ptr %3, align 4, !tbaa !311
  %9 = add nsw i32 %8, 1
  store i32 %9, ptr %3, align 4, !tbaa !311
  %10 = sext i32 %8 to i64
  %11 = getelementptr inbounds ptr, ptr %2, i64 %10
  store ptr %7, ptr %11, align 8, !tbaa !286
  %12 = tail call ptr @first_dom_son(i32 noundef 1, ptr noundef %7) #19
  %13 = icmp eq ptr %12, null
  br i1 %13, label %30, label %14, !prof !624

14:                                               ; preds = %6, %24
  %15 = phi ptr [ %25, %24 ], [ null, %6 ]
  %16 = phi ptr [ %26, %24 ], [ %12, %6 ]
  %17 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %0, ptr noundef nonnull %16) #18, !range !313
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %24, label %19, !prof !625

19:                                               ; preds = %14
  %20 = load ptr, ptr %5, align 8, !tbaa !300
  %21 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %20, ptr noundef nonnull %16) #19
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %24, !prof !626

23:                                               ; preds = %19
  tail call fastcc void @fill_sons_in_loop(ptr noundef nonnull %0, ptr noundef nonnull %16, ptr noundef %2, ptr noundef nonnull %3) #18
  br label %24

24:                                               ; preds = %19, %14, %23
  %25 = phi ptr [ %15, %23 ], [ %15, %14 ], [ %16, %19 ]
  %26 = tail call ptr @next_dom_son(i32 noundef 1, ptr noundef nonnull %16) #19
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %14, !prof !627, !llvm.loop !628

28:                                               ; preds = %24
  %29 = icmp eq ptr %25, null
  br i1 %29, label %30, label %6, !prof !629

30:                                               ; preds = %6, %28
  ret void
}

; Function Attrs: optsize
declare ptr @first_dom_son(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @next_dom_son(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @get_loop_body_in_custom_order(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 !prof !295 {
  %3 = tail call ptr @get_loop_body(ptr noundef %0) #18
  %4 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !306
  %6 = zext i32 %5 to i64
  tail call void @spec_qsort(ptr noundef %3, i64 noundef %6, i64 noundef 8, ptr noundef %1) #19
  ret ptr %3
}

; Function Attrs: optsize
declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_loop_body_in_bfs_order(ptr noundef readonly %0) local_unnamed_addr #3 !prof !630 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !306
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8, !prof !631

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 920, ptr noundef nonnull @.str.1) #19
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !300
  %11 = load ptr, ptr @cfun, align 8, !tbaa !286
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !331
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !333
  %16 = icmp eq ptr %10, %15
  br i1 %16, label %17, label %18, !prof !631

17:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 921, ptr noundef nonnull @.str.1) #19
  br label %18

18:                                               ; preds = %8, %17
  %19 = load i32, ptr %4, align 4, !tbaa !306
  %20 = zext i32 %19 to i64
  %21 = tail call ptr @xcalloc(i64 noundef %20, i64 noundef 8) #19
  %22 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  %23 = load i32, ptr %4, align 4, !tbaa !306
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %87, label %25, !prof !632

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !296
  %28 = getelementptr inbounds i8, ptr %3, i64 8
  br label %29

29:                                               ; preds = %25, %80
  %30 = phi ptr [ %27, %25 ], [ %84, %80 ]
  %31 = phi i32 [ 0, %25 ], [ %77, %80 ]
  %32 = phi i32 [ 1, %25 ], [ %81, %80 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #20
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 9
  %34 = load i32, ptr %33, align 8, !tbaa !298
  %35 = tail call i32 @bitmap_bit_p(ptr noundef %22, i32 noundef %34) #19
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %43, !prof !633

37:                                               ; preds = %29
  %38 = load i32, ptr %33, align 8, !tbaa !298
  %39 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %22, i32 noundef %38) #19
  %40 = add nuw i32 %31, 1
  %41 = zext i32 %31 to i64
  %42 = getelementptr inbounds ptr, ptr %21, i64 %41
  store ptr %30, ptr %42, align 8, !tbaa !286
  br label %43

43:                                               ; preds = %37, %29
  %44 = phi i32 [ %31, %29 ], [ %40, %37 ]
  %45 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 1
  %46 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %45) #18
  store i32 0, ptr %3, align 8, !tbaa.struct !310
  store ptr %46, ptr %28, align 8, !tbaa.struct !312
  %47 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %46, ptr noundef nonnull %2) #18, !range !313
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %76, label %49, !prof !634

49:                                               ; preds = %43, %70
  %50 = phi i32 [ %71, %70 ], [ %44, %43 ]
  %51 = load ptr, ptr %2, align 8, !tbaa !286
  %52 = getelementptr inbounds %struct.edge_def, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !400
  %54 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %0, ptr noundef %53) #18, !range !313
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %70, label %56, !prof !635

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.basic_block_def, ptr %53, i64 0, i32 9
  %58 = load i32, ptr %57, align 8, !tbaa !298
  %59 = tail call i32 @bitmap_bit_p(ptr noundef %22, i32 noundef %58) #19
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %70, !prof !636

61:                                               ; preds = %56
  %62 = load ptr, ptr %52, align 8, !tbaa !400
  %63 = getelementptr inbounds %struct.basic_block_def, ptr %62, i64 0, i32 9
  %64 = load i32, ptr %63, align 8, !tbaa !298
  %65 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %22, i32 noundef %64) #19
  %66 = load ptr, ptr %52, align 8, !tbaa !400
  %67 = add i32 %50, 1
  %68 = zext i32 %50 to i64
  %69 = getelementptr inbounds ptr, ptr %21, i64 %68
  store ptr %66, ptr %69, align 8, !tbaa !286
  br label %70

70:                                               ; preds = %49, %61, %56
  %71 = phi i32 [ %50, %56 ], [ %67, %61 ], [ %50, %49 ]
  call fastcc void @ei_next(ptr noundef nonnull %3) #18
  %72 = load i32, ptr %3, align 8
  %73 = load ptr, ptr %28, align 8
  %74 = call fastcc zeroext i8 @ei_cond(i32 %72, ptr %73, ptr noundef nonnull %2) #18, !range !313
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %49, !prof !637, !llvm.loop !638

76:                                               ; preds = %70, %43
  %77 = phi i32 [ %44, %43 ], [ %71, %70 ]
  %78 = icmp ult i32 %77, %32
  br i1 %78, label %79, label %80, !prof !639

79:                                               ; preds = %76
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 951, ptr noundef nonnull @.str.1) #19
  br label %80

80:                                               ; preds = %76, %79
  %81 = add i32 %32, 1
  %82 = zext i32 %32 to i64
  %83 = getelementptr inbounds ptr, ptr %21, i64 %82
  %84 = load ptr, ptr %83, align 8, !tbaa !286
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  %85 = load i32, ptr %4, align 4, !tbaa !306
  %86 = icmp ult i32 %77, %85
  br i1 %86, label %29, label %87, !prof !640, !llvm.loop !641

87:                                               ; preds = %80, %18
  tail call void @bitmap_obstack_free(ptr noundef %22) #19
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
define dso_local void @rescan_loop_exit(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #3 !prof !642 {
  %4 = tail call fastcc zeroext i8 @loops_state_satisfies_p(i32 noundef 8) #18, !range !313
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %68, label %6, !prof !643

6:                                                ; preds = %3
  %7 = icmp eq i8 %2, 0
  br i1 %7, label %8, label %41, !prof !644

8:                                                ; preds = %6
  %9 = load ptr, ptr %0, align 8, !tbaa !302
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !435
  %12 = icmp eq ptr %11, null
  br i1 %12, label %41, label %13, !prof !645

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !400
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !435
  %18 = icmp eq ptr %17, null
  br i1 %18, label %41, label %19, !prof !646

19:                                               ; preds = %13
  %20 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef nonnull %11, ptr noundef nonnull %15) #18, !range !313
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %41, !prof !647

22:                                               ; preds = %19
  %23 = tail call ptr @find_common_loop(ptr noundef nonnull %11, ptr noundef nonnull %17) #18
  %24 = icmp eq ptr %11, %23
  br i1 %24, label %41, label %25, !prof !648

25:                                               ; preds = %22, %25
  %26 = phi ptr [ %28, %25 ], [ null, %22 ]
  %27 = phi ptr [ %39, %25 ], [ %11, %22 ]
  %28 = tail call ptr @ggc_alloc_stat(i64 noundef 32) #19
  store ptr %0, ptr %28, align 8, !tbaa !649
  %29 = getelementptr inbounds %struct.loop, ptr %27, i64 0, i32 18
  %30 = load ptr, ptr %29, align 8, !tbaa !418
  %31 = getelementptr inbounds %struct.loop_exit, ptr %30, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !419
  %33 = getelementptr inbounds %struct.loop_exit, ptr %28, i64 0, i32 2
  store ptr %32, ptr %33, align 8, !tbaa !419
  %34 = getelementptr inbounds %struct.loop_exit, ptr %28, i64 0, i32 1
  store ptr %30, ptr %34, align 8, !tbaa !422
  %35 = getelementptr inbounds %struct.loop_exit, ptr %32, i64 0, i32 1
  store ptr %28, ptr %35, align 8, !tbaa !422
  %36 = load ptr, ptr %34, align 8, !tbaa !422
  %37 = getelementptr inbounds %struct.loop_exit, ptr %36, i64 0, i32 2
  store ptr %28, ptr %37, align 8, !tbaa !419
  %38 = getelementptr inbounds %struct.loop_exit, ptr %28, i64 0, i32 3
  store ptr %26, ptr %38, align 8, !tbaa !650
  %39 = tail call fastcc ptr @loop_outer(ptr noundef %27) #18
  %40 = icmp eq ptr %39, %23
  br i1 %40, label %43, label %25, !prof !651, !llvm.loop !652

41:                                               ; preds = %22, %19, %13, %8, %6
  %42 = icmp eq i8 %1, 0
  br i1 %42, label %43, label %68, !prof !653

43:                                               ; preds = %25, %41
  %44 = phi ptr [ null, %41 ], [ %28, %25 ]
  %45 = load ptr, ptr @cfun, align 8, !tbaa !286
  %46 = getelementptr inbounds %struct.function, ptr %45, i64 0, i32 4
  %47 = load ptr, ptr %46, align 8, !tbaa !373
  %48 = getelementptr inbounds %struct.loops, ptr %47, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !521
  %50 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !286
  %51 = tail call i32 %50(ptr noundef %0) #19
  %52 = icmp ne ptr %44, null
  %53 = zext i1 %52 to i32
  %54 = tail call ptr @htab_find_slot_with_hash(ptr noundef %49, ptr noundef %0, i32 noundef %51, i32 noundef %53) #19
  %55 = icmp eq ptr %54, null
  br i1 %55, label %68, label %56, !prof !654

56:                                               ; preds = %43
  br i1 %52, label %57, label %62, !prof !655

57:                                               ; preds = %56
  %58 = load ptr, ptr %54, align 8, !tbaa !286
  %59 = icmp eq ptr %58, null
  br i1 %59, label %61, label %60, !prof !656

60:                                               ; preds = %57
  tail call void @loop_exit_free(ptr noundef nonnull %58) #18
  br label %61

61:                                               ; preds = %60, %57
  store ptr %44, ptr %54, align 8, !tbaa !286
  br label %68

62:                                               ; preds = %56
  %63 = load ptr, ptr @cfun, align 8, !tbaa !286
  %64 = getelementptr inbounds %struct.function, ptr %63, i64 0, i32 4
  %65 = load ptr, ptr %64, align 8, !tbaa !373
  %66 = getelementptr inbounds %struct.loops, ptr %65, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !521
  tail call void @htab_clear_slot(ptr noundef %67, ptr noundef nonnull %54) #19
  br label %68

68:                                               ; preds = %61, %62, %43, %41, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @loops_state_satisfies_p(i32 noundef %0) unnamed_addr #0 !prof !657 !PGOFuncName !658 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !286
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !373
  %5 = load i32, ptr %4, align 8, !tbaa !659
  %6 = and i32 %5, %0
  %7 = icmp eq i32 %6, %0
  %8 = zext i1 %7 to i8
  ret i8 %8
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @find_common_loop(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #16 !prof !660 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %30, label %4, !prof !661

4:                                                ; preds = %2
  %5 = icmp eq ptr %1, null
  br i1 %5, label %30, label %6, !prof !661

6:                                                ; preds = %4
  %7 = tail call fastcc i32 @loop_depth(ptr noundef nonnull %0) #18
  %8 = tail call fastcc i32 @loop_depth(ptr noundef nonnull %1) #18
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %14, !prof !662

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !273
  %13 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %12, i32 noundef %7) #18
  br label %20

14:                                               ; preds = %6
  %15 = icmp ugt i32 %7, %8
  br i1 %15, label %16, label %20, !prof !663

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !273
  %19 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %18, i32 noundef %8) #18
  br label %20

20:                                               ; preds = %14, %16, %10
  %21 = phi ptr [ %13, %10 ], [ %1, %16 ], [ %1, %14 ]
  %22 = phi ptr [ %0, %10 ], [ %19, %16 ], [ %0, %14 ]
  %23 = icmp eq ptr %22, %21
  br i1 %23, label %30, label %24, !prof !664

24:                                               ; preds = %20, %24
  %25 = phi ptr [ %27, %24 ], [ %22, %20 ]
  %26 = phi ptr [ %28, %24 ], [ %21, %20 ]
  %27 = tail call fastcc ptr @loop_outer(ptr noundef %25) #18
  %28 = tail call fastcc ptr @loop_outer(ptr noundef %26) #18
  %29 = icmp eq ptr %27, %28
  br i1 %29, label %30, label %24, !prof !665, !llvm.loop !666

30:                                               ; preds = %24, %20, %4, %2
  %31 = phi ptr [ %1, %2 ], [ %0, %4 ], [ %21, %20 ], [ %27, %24 ]
  ret ptr %31
}

; Function Attrs: optsize
declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal void @loop_exit_free(ptr noundef %0) #3 !prof !667 !PGOFuncName !668 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3, !prof !669

3:                                                ; preds = %1, %3
  %4 = phi ptr [ %6, %3 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.loop_exit, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !650
  %7 = getelementptr inbounds %struct.loop_exit, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !422
  %9 = getelementptr inbounds %struct.loop_exit, ptr %4, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !419
  %11 = getelementptr inbounds %struct.loop_exit, ptr %10, i64 0, i32 1
  store ptr %8, ptr %11, align 8, !tbaa !422
  %12 = getelementptr inbounds %struct.loop_exit, ptr %8, i64 0, i32 2
  store ptr %10, ptr %12, align 8, !tbaa !419
  tail call void @ggc_free(ptr noundef nonnull %4) #19
  %13 = icmp eq ptr %6, null
  br i1 %13, label %14, label %3, !prof !670, !llvm.loop !671

14:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: optsize
declare void @htab_clear_slot(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @record_loop_exits() local_unnamed_addr #3 !prof !672 {
  %1 = alloca %struct.edge_iterator, align 8
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  %3 = load ptr, ptr @cfun, align 8, !tbaa !286
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !373
  %6 = icmp eq ptr %5, null
  br i1 %6, label %58, label %7, !prof !673

7:                                                ; preds = %0
  %8 = tail call fastcc zeroext i8 @loops_state_satisfies_p(i32 noundef 8) #18, !range !313
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %58, !prof !674

10:                                               ; preds = %7
  tail call fastcc void @loops_state_set() #18
  %11 = load ptr, ptr @cfun, align 8, !tbaa !286
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !373
  %14 = getelementptr inbounds %struct.loops, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !521
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17, !prof !674

17:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1082, ptr noundef nonnull @.str.1) #19
  br label %18

18:                                               ; preds = %10, %17
  %19 = tail call fastcc i32 @number_of_loops() #18
  %20 = shl i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = tail call ptr @htab_create_alloc(i64 noundef %21, ptr noundef nonnull @loop_exit_hash, ptr noundef nonnull @loop_exit_eq, ptr noundef nonnull @loop_exit_free, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #19
  %23 = load ptr, ptr @cfun, align 8, !tbaa !286
  %24 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !373
  %26 = getelementptr inbounds %struct.loops, ptr %25, i64 0, i32 2
  store ptr %22, ptr %26, align 8, !tbaa !521
  %27 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !331
  %29 = load ptr, ptr %28, align 8, !tbaa !336
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !337
  %32 = getelementptr inbounds %struct.control_flow_graph, ptr %28, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !333
  %34 = icmp eq ptr %31, %33
  br i1 %34, label %58, label %35, !prof !675

35:                                               ; preds = %18
  %36 = getelementptr inbounds i8, ptr %1, i64 8
  br label %46

37:                                               ; preds = %52, %46
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %47, i64 0, i32 6
  %39 = load ptr, ptr %38, align 8, !tbaa !337
  %40 = load ptr, ptr @cfun, align 8, !tbaa !286
  %41 = getelementptr inbounds %struct.function, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !331
  %43 = getelementptr inbounds %struct.control_flow_graph, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !333
  %45 = icmp eq ptr %39, %44
  br i1 %45, label %58, label %46, !prof !676, !llvm.loop !677

46:                                               ; preds = %35, %37
  %47 = phi ptr [ %31, %35 ], [ %39, %37 ]
  %48 = getelementptr inbounds %struct.basic_block_def, ptr %47, i64 0, i32 1
  %49 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %48) #18
  store i32 0, ptr %1, align 8, !tbaa.struct !310
  store ptr %49, ptr %36, align 8, !tbaa.struct !312
  %50 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %49, ptr noundef nonnull %2) #18, !range !313
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %37, label %52, !prof !678

52:                                               ; preds = %46, %52
  %53 = load ptr, ptr %2, align 8, !tbaa !286
  tail call void @rescan_loop_exit(ptr noundef %53, i8 noundef zeroext 1, i8 noundef zeroext 0) #18
  call fastcc void @ei_next(ptr noundef nonnull %1) #18
  %54 = load i32, ptr %1, align 8
  %55 = load ptr, ptr %36, align 8
  %56 = call fastcc zeroext i8 @ei_cond(i32 %54, ptr %55, ptr noundef nonnull %2) #18, !range !313
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %37, label %52, !prof !679, !llvm.loop !680

58:                                               ; preds = %37, %18, %7, %0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @loops_state_set() unnamed_addr #12 !prof !681 !PGOFuncName !682 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !286
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !373
  %4 = load i32, ptr %3, align 8, !tbaa !659
  %5 = or i32 %4, 8
  store i32 %5, ptr %3, align 8, !tbaa !659
  ret void
}

; Function Attrs: optsize
declare ptr @htab_create_alloc(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @loop_exit_hash(ptr nocapture noundef readonly %0) #3 !prof !683 !PGOFuncName !684 {
  %2 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !286
  %3 = load ptr, ptr %0, align 8, !tbaa !649
  %4 = tail call i32 %2(ptr noundef %3) #19
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @loop_exit_eq(ptr nocapture noundef readonly %0, ptr noundef readnone %1) #2 !prof !685 !PGOFuncName !686 {
  %3 = load ptr, ptr %0, align 8, !tbaa !649
  %4 = icmp eq ptr %3, %1
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: optsize
declare ptr @ggc_calloc(i64 noundef, i64 noundef) #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_recorded_exits(ptr noundef %0) local_unnamed_addr #3 !prof !295 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !286
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !373
  %5 = getelementptr inbounds %struct.loops, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !521
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void @htab_traverse(ptr noundef nonnull %6, ptr noundef nonnull @dump_recorded_exit, ptr noundef %0) #19
  br label %9

9:                                                ; preds = %1, %8
  ret void
}

; Function Attrs: optsize
declare void @htab_traverse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal noundef i32 @dump_recorded_exit(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #14 !prof !295 !PGOFuncName !687 {
  %3 = load ptr, ptr %0, align 8, !tbaa !286
  %4 = load ptr, ptr %3, align 8, !tbaa !649
  br label %5

5:                                                ; preds = %2, %5
  %6 = phi ptr [ %3, %2 ], [ %10, %5 ]
  %7 = phi i32 [ 0, %2 ], [ %8, %5 ]
  %8 = add i32 %7, 1
  %9 = getelementptr inbounds %struct.loop_exit, ptr %6, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !650
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %5, !llvm.loop !688

12:                                               ; preds = %5
  %13 = load ptr, ptr %4, align 8, !tbaa !302
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 9
  %15 = load i32, ptr %14, align 8, !tbaa !298
  %16 = getelementptr inbounds %struct.edge_def, ptr %4, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !400
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 9
  %19 = load i32, ptr %18, align 8, !tbaa !298
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.20, i32 noundef %15, i32 noundef %19, i32 noundef %8) #18
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @release_recorded_exits() local_unnamed_addr #3 !prof !689 {
  %1 = tail call fastcc zeroext i8 @loops_state_satisfies_p(i32 noundef 8) #18, !range !313
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %3, label %4, !prof !690

3:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1133, ptr noundef nonnull @.str.1) #19
  br label %4

4:                                                ; preds = %0, %3
  %5 = load ptr, ptr @cfun, align 8, !tbaa !286
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !373
  %8 = getelementptr inbounds %struct.loops, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !521
  tail call void @htab_delete(ptr noundef %9) #19
  %10 = load ptr, ptr @cfun, align 8, !tbaa !286
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !373
  %13 = getelementptr inbounds %struct.loops, ptr %12, i64 0, i32 2
  store ptr null, ptr %13, align 8, !tbaa !521
  tail call fastcc void @loops_state_clear() #18
  ret void
}

; Function Attrs: optsize
declare void @htab_delete(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @loops_state_clear() unnamed_addr #12 !prof !689 !PGOFuncName !691 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !286
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !373
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5, !prof !690

5:                                                ; preds = %0
  %6 = load i32, ptr %3, align 8, !tbaa !659
  %7 = and i32 %6, -9
  store i32 %7, ptr %3, align 8, !tbaa !659
  br label %8

8:                                                ; preds = %0, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_loop_exit_edges(ptr noundef %0) local_unnamed_addr #3 !prof !692 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  store ptr null, ptr %2, align 8, !tbaa !286
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #20
  %5 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !300
  %7 = load ptr, ptr @cfun, align 8, !tbaa !286
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !331
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !333
  %12 = icmp eq ptr %6, %11
  br i1 %12, label %13, label %14, !prof !693

13:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1151, ptr noundef nonnull @.str.1) #19
  br label %14

14:                                               ; preds = %1, %13
  %15 = tail call fastcc zeroext i8 @loops_state_satisfies_p(i32 noundef 8) #18, !range !313
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %31, label %17, !prof !694

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 18
  %19 = load ptr, ptr %18, align 8, !tbaa !418
  %20 = getelementptr inbounds %struct.loop_exit, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !419
  %22 = load ptr, ptr %21, align 8, !tbaa !649
  %23 = icmp eq ptr %22, null
  br i1 %23, label %64, label %24, !prof !695

24:                                               ; preds = %17, %24
  %25 = phi ptr [ %29, %24 ], [ %22, %17 ]
  %26 = phi ptr [ %28, %24 ], [ %21, %17 ]
  call fastcc void @VEC_edge_heap_safe_push(ptr noundef nonnull %2, ptr noundef nonnull %25) #18
  %27 = getelementptr inbounds %struct.loop_exit, ptr %26, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !419
  %29 = load ptr, ptr %28, align 8, !tbaa !649
  %30 = icmp eq ptr %29, null
  br i1 %30, label %64, label %24, !prof !696, !llvm.loop !697

31:                                               ; preds = %14
  %32 = tail call ptr @get_loop_body(ptr noundef nonnull %0) #18
  %33 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %34 = load i32, ptr %33, align 4, !tbaa !306
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %63, label %36, !prof !698

36:                                               ; preds = %31
  %37 = getelementptr inbounds i8, ptr %4, i64 8
  br label %38

38:                                               ; preds = %36, %58
  %39 = phi i64 [ 0, %36 ], [ %59, %58 ]
  %40 = getelementptr inbounds ptr, ptr %32, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !286
  %42 = getelementptr inbounds %struct.basic_block_def, ptr %41, i64 0, i32 1
  %43 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %42) #18
  store i32 0, ptr %4, align 8, !tbaa.struct !310
  store ptr %43, ptr %37, align 8, !tbaa.struct !312
  %44 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %43, ptr noundef nonnull %3) #18, !range !313
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %58, label %46, !prof !699

46:                                               ; preds = %38, %53
  %47 = load ptr, ptr %3, align 8, !tbaa !286
  %48 = getelementptr inbounds %struct.edge_def, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !400
  %50 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %0, ptr noundef %49) #18, !range !313
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %53, !prof !700

52:                                               ; preds = %46
  call fastcc void @VEC_edge_heap_safe_push(ptr noundef nonnull %2, ptr noundef nonnull %47) #18
  br label %53

53:                                               ; preds = %46, %52
  call fastcc void @ei_next(ptr noundef nonnull %4) #18
  %54 = load i32, ptr %4, align 8
  %55 = load ptr, ptr %37, align 8
  %56 = call fastcc zeroext i8 @ei_cond(i32 %54, ptr %55, ptr noundef nonnull %3) #18, !range !313
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %46, !prof !701, !llvm.loop !702

58:                                               ; preds = %53, %38
  %59 = add nuw nsw i64 %39, 1
  %60 = load i32, ptr %33, align 4, !tbaa !306
  %61 = zext i32 %60 to i64
  %62 = icmp ult i64 %59, %61
  br i1 %62, label %38, label %63, !prof !703, !llvm.loop !704

63:                                               ; preds = %58, %31
  tail call void @free(ptr noundef %32) #18
  br label %64

64:                                               ; preds = %24, %17, %63
  %65 = load ptr, ptr %2, align 8, !tbaa !286
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  ret ptr %65
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @num_loop_branches(ptr noundef %0) local_unnamed_addr #3 !prof !295 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !300
  %4 = load ptr, ptr @cfun, align 8, !tbaa !286
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !331
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !333
  %9 = icmp eq ptr %3, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1183, ptr noundef nonnull @.str.1) #19
  br label %11

11:                                               ; preds = %1, %10
  %12 = tail call ptr @get_loop_body(ptr noundef nonnull %0) #18
  %13 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %14 = load i32, ptr %13, align 4, !tbaa !306
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %31, label %16

16:                                               ; preds = %11
  %17 = zext i32 %14 to i64
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi i64 [ 0, %16 ], [ %29, %18 ]
  %20 = phi i32 [ 0, %16 ], [ %28, %18 ]
  %21 = getelementptr inbounds ptr, ptr %12, i64 %19
  %22 = load ptr, ptr %21, align 8, !tbaa !286
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !705
  %25 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %24) #18
  %26 = icmp ugt i32 %25, 1
  %27 = zext i1 %26 to i32
  %28 = add i32 %20, %27
  %29 = add nuw nsw i64 %19, 1
  %30 = icmp eq i64 %29, %17
  br i1 %30, label %31, label %18, !llvm.loop !706

31:                                               ; preds = %18, %11
  %32 = phi i32 [ 0, %11 ], [ %28, %18 ]
  tail call void @free(ptr noundef %12) #18
  ret i32 %32
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @add_bb_to_loop(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 !prof !707 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !435
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9, !prof !708

9:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1204, ptr noundef nonnull @.str.1) #19
  br label %10

10:                                               ; preds = %2, %9
  store ptr %1, ptr %6, align 8, !tbaa !435
  %11 = tail call fastcc i32 @loop_depth(ptr noundef %1) #18
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 10
  store i32 %11, ptr %12, align 4, !tbaa !436
  %13 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 6
  %14 = load i32, ptr %13, align 4, !tbaa !306
  %15 = add i32 %14, 1
  store i32 %15, ptr %13, align 4, !tbaa !306
  %16 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !273
  %18 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %17, i32 noundef 0, ptr noundef nonnull %3) #18, !range !301
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %29, label %20, !prof !709

20:                                               ; preds = %10, %20
  %21 = phi i32 [ %26, %20 ], [ 0, %10 ]
  %22 = load ptr, ptr %3, align 8, !tbaa !286
  %23 = getelementptr inbounds %struct.loop, ptr %22, i64 0, i32 6
  %24 = load i32, ptr %23, align 4, !tbaa !306
  %25 = add i32 %24, 1
  store i32 %25, ptr %23, align 4, !tbaa !306
  %26 = add i32 %21, 1
  %27 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %17, i32 noundef %26, ptr noundef nonnull %3) #18, !range !301
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %20, !prof !710, !llvm.loop !711

29:                                               ; preds = %20, %10
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %31 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %30) #18
  store i32 0, ptr %4, align 8, !tbaa.struct !310
  %32 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %31, ptr %32, align 8, !tbaa.struct !312
  %33 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %31, ptr noundef nonnull %5) #18, !range !313
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %41, label %35, !prof !709

35:                                               ; preds = %29, %35
  %36 = load ptr, ptr %5, align 8, !tbaa !286
  tail call void @rescan_loop_exit(ptr noundef %36, i8 noundef zeroext 1, i8 noundef zeroext 0) #18
  call fastcc void @ei_next(ptr noundef nonnull %4) #18
  %37 = load i32, ptr %4, align 8
  %38 = load ptr, ptr %32, align 8
  %39 = call fastcc zeroext i8 @ei_cond(i32 %37, ptr %38, ptr noundef nonnull %5) #18, !range !313
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %35, !prof !712, !llvm.loop !713

41:                                               ; preds = %35, %29
  %42 = tail call fastcc ptr @ei_start_1(ptr noundef %0) #18
  store i32 0, ptr %4, align 8, !tbaa.struct !310
  store ptr %42, ptr %32, align 8, !tbaa.struct !312
  %43 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %42, ptr noundef nonnull %5) #18, !range !313
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %51, label %45, !prof !714

45:                                               ; preds = %41, %45
  %46 = load ptr, ptr %5, align 8, !tbaa !286
  tail call void @rescan_loop_exit(ptr noundef %46, i8 noundef zeroext 1, i8 noundef zeroext 0) #18
  call fastcc void @ei_next(ptr noundef nonnull %4) #18
  %47 = load i32, ptr %4, align 8
  %48 = load ptr, ptr %32, align 8
  %49 = call fastcc zeroext i8 @ei_cond(i32 %47, ptr %48, ptr noundef nonnull %5) #18, !range !313
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %45, !prof !715, !llvm.loop !716

51:                                               ; preds = %45, %41
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @remove_bb_from_loops(ptr noundef %0) local_unnamed_addr #3 !prof !717 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !435
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9, !prof !718

8:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1231, ptr noundef nonnull @.str.1) #19
  br label %9

9:                                                ; preds = %1, %8
  %10 = getelementptr inbounds %struct.loop, ptr %6, i64 0, i32 6
  %11 = load i32, ptr %10, align 4, !tbaa !306
  %12 = add i32 %11, -1
  store i32 %12, ptr %10, align 4, !tbaa !306
  %13 = getelementptr inbounds %struct.loop, ptr %6, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !273
  %15 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %14, i32 noundef 0, ptr noundef nonnull %2) #18, !range !301
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %26, label %17, !prof !719

17:                                               ; preds = %9, %17
  %18 = phi i32 [ %23, %17 ], [ 0, %9 ]
  %19 = load ptr, ptr %2, align 8, !tbaa !286
  %20 = getelementptr inbounds %struct.loop, ptr %19, i64 0, i32 6
  %21 = load i32, ptr %20, align 4, !tbaa !306
  %22 = add i32 %21, -1
  store i32 %22, ptr %20, align 4, !tbaa !306
  %23 = add nuw nsw i32 %18, 1
  %24 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %14, i32 noundef %23, ptr noundef nonnull %2) #18, !range !301
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %17, !prof !720, !llvm.loop !721

26:                                               ; preds = %17, %9
  store ptr null, ptr %5, align 8, !tbaa !435
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 10
  store i32 0, ptr %27, align 4, !tbaa !436
  %28 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %29 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %28) #18
  store i32 0, ptr %3, align 8, !tbaa.struct !310
  %30 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %29, ptr %30, align 8, !tbaa.struct !312
  %31 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %29, ptr noundef nonnull %4) #18, !range !313
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %39, label %33, !prof !722

33:                                               ; preds = %26, %33
  %34 = load ptr, ptr %4, align 8, !tbaa !286
  tail call void @rescan_loop_exit(ptr noundef %34, i8 noundef zeroext 0, i8 noundef zeroext 1) #18
  call fastcc void @ei_next(ptr noundef nonnull %3) #18
  %35 = load i32, ptr %3, align 8
  %36 = load ptr, ptr %30, align 8
  %37 = call fastcc zeroext i8 @ei_cond(i32 %35, ptr %36, ptr noundef nonnull %4) #18, !range !313
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %33, !prof !723, !llvm.loop !724

39:                                               ; preds = %33, %26
  %40 = tail call fastcc ptr @ei_start_1(ptr noundef %0) #18
  store i32 0, ptr %3, align 8, !tbaa.struct !310
  store ptr %40, ptr %30, align 8, !tbaa.struct !312
  %41 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %40, ptr noundef nonnull %4) #18, !range !313
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %49, label %43, !prof !725

43:                                               ; preds = %39, %43
  %44 = load ptr, ptr %4, align 8, !tbaa !286
  tail call void @rescan_loop_exit(ptr noundef %44, i8 noundef zeroext 0, i8 noundef zeroext 1) #18
  call fastcc void @ei_next(ptr noundef nonnull %3) #18
  %45 = load i32, ptr %3, align 8
  %46 = load ptr, ptr %30, align 8
  %47 = call fastcc zeroext i8 @ei_cond(i32 %45, ptr %46, ptr noundef nonnull %4) #18, !range !313
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %43, !prof !726, !llvm.loop !727

49:                                               ; preds = %43, %39
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @delete_loop(ptr noundef %0) local_unnamed_addr #3 !prof !728 {
  tail call void @flow_loop_tree_node_remove(ptr noundef %0) #18
  %2 = load ptr, ptr @cfun, align 8, !tbaa !286
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !373
  %5 = getelementptr inbounds %struct.loops, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !379
  %7 = load i32, ptr %0, align 8, !tbaa !297
  tail call fastcc void @VEC_loop_p_base_replace(ptr noundef %6, i32 noundef %7) #18
  tail call void @flow_loop_free(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_loop_p_base_replace(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #6 !prof !728 !PGOFuncName !729 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  store ptr null, ptr %4, align 8, !tbaa !286
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cancel_loop_tree(ptr noundef %0) local_unnamed_addr #3 !prof !295 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !389
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %1 ]
  tail call void @cancel_loop_tree(ptr noundef nonnull %6) #18
  %7 = load ptr, ptr %2, align 8, !tbaa !389
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !llvm.loop !730

9:                                                ; preds = %5, %1
  tail call fastcc void @cancel_loop(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cancel_loop(ptr noundef %0) unnamed_addr #3 !prof !295 !PGOFuncName !731 {
  %2 = tail call fastcc ptr @loop_outer(ptr noundef %0) #18
  %3 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !389
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1297, ptr noundef nonnull @.str.1) #19
  br label %7

7:                                                ; preds = %1, %6
  %8 = tail call ptr @get_loop_body(ptr noundef nonnull %0) #18
  %9 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !306
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %7
  %13 = zext i32 %10 to i64
  br label %14

14:                                               ; preds = %12, %14
  %15 = phi i64 [ 0, %12 ], [ %19, %14 ]
  %16 = getelementptr inbounds ptr, ptr %8, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !286
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 3
  store ptr %2, ptr %18, align 8, !tbaa !435
  %19 = add nuw nsw i64 %15, 1
  %20 = icmp eq i64 %19, %13
  br i1 %20, label %21, label %14, !llvm.loop !732

21:                                               ; preds = %14, %7
  tail call void @delete_loop(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @verify_loop_structure() local_unnamed_addr #3 !prof !295 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = alloca %struct.loop_iterator, align 8
  %4 = alloca %struct.edge_iterator, align 8
  %5 = alloca %struct.edge_iterator, align 8
  %6 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  %7 = tail call fastcc i32 @number_of_loops() #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #20
  %8 = zext i32 %7 to i64
  %9 = tail call ptr @xcalloc(i64 noundef %8, i64 noundef 4) #19
  store i32 2, ptr %9, align 4, !tbaa !311
  %10 = load ptr, ptr @cfun, align 8, !tbaa !286
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !331
  %13 = load ptr, ptr %12, align 8, !tbaa !336
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %12, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !333
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !337
  %18 = icmp eq ptr %17, %15
  br i1 %18, label %37, label %23

19:                                               ; preds = %28, %23
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !337
  %22 = icmp eq ptr %21, %15
  br i1 %22, label %37, label %23, !llvm.loop !733

23:                                               ; preds = %0, %19
  %24 = phi ptr [ %21, %19 ], [ %17, %0 ]
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !435
  %27 = icmp eq ptr %26, null
  br i1 %27, label %19, label %28

28:                                               ; preds = %23, %28
  %29 = phi ptr [ %35, %28 ], [ %26, %23 ]
  %30 = load i32, ptr %29, align 8, !tbaa !297
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, ptr %9, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !311
  %34 = add i32 %33, 1
  store i32 %34, ptr %32, align 4, !tbaa !311
  %35 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %29) #18
  %36 = icmp eq ptr %35, null
  br i1 %36, label %19, label %28, !llvm.loop !734

37:                                               ; preds = %19, %0
  store ptr null, ptr %1, align 8, !tbaa !286
  call fastcc void @fel_init(ptr noundef nonnull %3, ptr noundef nonnull %1, i32 noundef 1) #18
  %38 = load ptr, ptr %1, align 8, !tbaa !286
  %39 = icmp eq ptr %38, null
  br i1 %39, label %55, label %40

40:                                               ; preds = %37, %51
  %41 = phi ptr [ %53, %51 ], [ %38, %37 ]
  %42 = phi i32 [ %52, %51 ], [ 0, %37 ]
  %43 = load i32, ptr %41, align 8, !tbaa !297
  %44 = getelementptr inbounds %struct.loop, ptr %41, i64 0, i32 6
  %45 = load i32, ptr %44, align 4, !tbaa !306
  %46 = zext i32 %43 to i64
  %47 = getelementptr inbounds i32, ptr %9, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !311
  %49 = icmp eq i32 %45, %48
  br i1 %49, label %51, label %50

50:                                               ; preds = %40
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.21, i32 noundef %43, i32 noundef %48, i32 noundef %45) #19
  br label %51

51:                                               ; preds = %40, %50
  %52 = phi i32 [ 1, %50 ], [ %42, %40 ]
  call fastcc void @fel_next(ptr noundef nonnull %3, ptr noundef nonnull %1) #18
  %53 = load ptr, ptr %1, align 8, !tbaa !286
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %40, !llvm.loop !735

55:                                               ; preds = %51, %37
  %56 = phi i32 [ 0, %37 ], [ %52, %51 ]
  call fastcc void @fel_init(ptr noundef nonnull %3, ptr noundef nonnull %1, i32 noundef 0) #18
  %57 = load ptr, ptr %1, align 8, !tbaa !286
  %58 = icmp eq ptr %57, null
  br i1 %58, label %89, label %59

59:                                               ; preds = %55, %85
  %60 = phi ptr [ %87, %85 ], [ %57, %55 ]
  %61 = phi i32 [ %86, %85 ], [ %56, %55 ]
  %62 = tail call ptr @get_loop_body(ptr noundef nonnull %60) #18
  %63 = getelementptr inbounds %struct.loop, ptr %60, i64 0, i32 6
  %64 = load i32, ptr %63, align 4, !tbaa !306
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %85, label %66

66:                                               ; preds = %59, %79
  %67 = phi i32 [ %80, %79 ], [ %64, %59 ]
  %68 = phi i64 [ %82, %79 ], [ 0, %59 ]
  %69 = phi i32 [ %81, %79 ], [ %61, %59 ]
  %70 = getelementptr inbounds ptr, ptr %62, i64 %68
  %71 = load ptr, ptr %70, align 8, !tbaa !286
  %72 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef nonnull %60, ptr noundef %71) #18, !range !313
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %66
  %75 = getelementptr inbounds %struct.basic_block_def, ptr %71, i64 0, i32 9
  %76 = load i32, ptr %75, align 8, !tbaa !298
  %77 = load i32, ptr %60, align 8, !tbaa !297
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.22, i32 noundef %76, i32 noundef %77) #19
  %78 = load i32, ptr %63, align 4, !tbaa !306
  br label %79

79:                                               ; preds = %66, %74
  %80 = phi i32 [ %67, %66 ], [ %78, %74 ]
  %81 = phi i32 [ %69, %66 ], [ 1, %74 ]
  %82 = add nuw nsw i64 %68, 1
  %83 = zext i32 %80 to i64
  %84 = icmp ult i64 %82, %83
  br i1 %84, label %66, label %85, !llvm.loop !736

85:                                               ; preds = %79, %59
  %86 = phi i32 [ %61, %59 ], [ %81, %79 ]
  tail call void @free(ptr noundef %62) #18
  call fastcc void @fel_next(ptr noundef nonnull %3, ptr noundef nonnull %1) #18
  %87 = load ptr, ptr %1, align 8, !tbaa !286
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %59, !llvm.loop !737

89:                                               ; preds = %85, %55
  %90 = phi i32 [ %56, %55 ], [ %86, %85 ]
  call fastcc void @fel_init(ptr noundef nonnull %3, ptr noundef nonnull %1, i32 noundef 0) #18
  %91 = load ptr, ptr %1, align 8, !tbaa !286
  %92 = icmp eq ptr %91, null
  br i1 %92, label %155, label %93

93:                                               ; preds = %89, %151
  %94 = phi ptr [ %153, %151 ], [ %91, %89 ]
  %95 = phi i32 [ %152, %151 ], [ %90, %89 ]
  %96 = load i32, ptr %94, align 8, !tbaa !297
  %97 = tail call fastcc zeroext i8 @loops_state_satisfies_p(i32 noundef 1) #18, !range !313
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %106, label %99

99:                                               ; preds = %93
  %100 = getelementptr inbounds %struct.loop, ptr %94, i64 0, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !296
  %102 = load ptr, ptr %101, align 8, !tbaa !738
  %103 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %102) #18
  %104 = icmp eq i32 %103, 2
  br i1 %104, label %106, label %105

105:                                              ; preds = %99
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.23, i32 noundef %96) #19
  br label %106

106:                                              ; preds = %105, %99, %93
  %107 = phi i32 [ 1, %105 ], [ %95, %99 ], [ %95, %93 ]
  %108 = tail call fastcc zeroext i8 @loops_state_satisfies_p(i32 noundef 2) #18, !range !313
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %132, label %110

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.loop, ptr %94, i64 0, i32 3
  %112 = load ptr, ptr %111, align 8, !tbaa !300
  %113 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %112) #18, !range !313
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.24, i32 noundef %96) #19
  %116 = load ptr, ptr %111, align 8, !tbaa !300
  br label %117

117:                                              ; preds = %115, %110
  %118 = phi ptr [ %112, %110 ], [ %116, %115 ]
  %119 = phi i32 [ %107, %110 ], [ 1, %115 ]
  %120 = tail call fastcc ptr @single_succ(ptr noundef %118) #18
  %121 = getelementptr inbounds %struct.loop, ptr %94, i64 0, i32 2
  %122 = load ptr, ptr %121, align 8, !tbaa !296
  %123 = icmp eq ptr %120, %122
  br i1 %123, label %125, label %124

124:                                              ; preds = %117
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.25, i32 noundef %96) #19
  br label %125

125:                                              ; preds = %124, %117
  %126 = phi i32 [ 1, %124 ], [ %119, %117 ]
  %127 = load ptr, ptr %111, align 8, !tbaa !300
  %128 = getelementptr inbounds %struct.basic_block_def, ptr %127, i64 0, i32 3
  %129 = load ptr, ptr %128, align 8, !tbaa !435
  %130 = icmp eq ptr %129, %94
  br i1 %130, label %132, label %131

131:                                              ; preds = %125
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.26, i32 noundef %96) #19
  br label %132

132:                                              ; preds = %125, %131, %106
  %133 = phi i32 [ 1, %131 ], [ %126, %125 ], [ %107, %106 ]
  %134 = getelementptr inbounds %struct.loop, ptr %94, i64 0, i32 2
  %135 = load ptr, ptr %134, align 8, !tbaa !296
  %136 = getelementptr inbounds %struct.basic_block_def, ptr %135, i64 0, i32 3
  %137 = load ptr, ptr %136, align 8, !tbaa !435
  %138 = icmp eq ptr %137, %94
  br i1 %138, label %140, label %139

139:                                              ; preds = %132
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.27, i32 noundef %96) #19
  br label %140

140:                                              ; preds = %139, %132
  %141 = phi i32 [ 1, %139 ], [ %133, %132 ]
  %142 = tail call fastcc zeroext i8 @loops_state_satisfies_p(i32 noundef 4) #18, !range !313
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %151, label %144

144:                                              ; preds = %140
  %145 = tail call ptr @loop_latch_edge(ptr noundef nonnull %94) #18
  %146 = getelementptr inbounds %struct.edge_def, ptr %145, i64 0, i32 7
  %147 = load i32, ptr %146, align 8, !tbaa !496
  %148 = and i32 %147, 128
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %144
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.28, i32 noundef %96) #19
  br label %151

151:                                              ; preds = %140, %144, %150
  %152 = phi i32 [ 1, %150 ], [ %141, %144 ], [ %141, %140 ]
  call fastcc void @fel_next(ptr noundef nonnull %3, ptr noundef nonnull %1) #18
  %153 = load ptr, ptr %1, align 8, !tbaa !286
  %154 = icmp eq ptr %153, null
  br i1 %154, label %155, label %93, !llvm.loop !739

155:                                              ; preds = %151, %89
  %156 = phi i32 [ %90, %89 ], [ %152, %151 ]
  %157 = tail call fastcc zeroext i8 @loops_state_satisfies_p(i32 noundef 4) #18, !range !313
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %291, label %159

159:                                              ; preds = %155
  %160 = load ptr, ptr @cfun, align 8, !tbaa !286
  %161 = getelementptr inbounds %struct.function, ptr %160, i64 0, i32 1
  %162 = load ptr, ptr %161, align 8, !tbaa !331
  %163 = getelementptr inbounds %struct.control_flow_graph, ptr %162, i64 0, i32 5
  %164 = load i32, ptr %163, align 8, !tbaa !493
  %165 = tail call ptr @sbitmap_alloc(i32 noundef %164) #19
  %166 = load ptr, ptr @cfun, align 8, !tbaa !286
  %167 = getelementptr inbounds %struct.function, ptr %166, i64 0, i32 1
  %168 = load ptr, ptr %167, align 8, !tbaa !331
  %169 = load ptr, ptr %168, align 8, !tbaa !336
  %170 = getelementptr inbounds %struct.basic_block_def, ptr %169, i64 0, i32 6
  %171 = load ptr, ptr %170, align 8, !tbaa !337
  %172 = getelementptr inbounds %struct.control_flow_graph, ptr %168, i64 0, i32 1
  %173 = load ptr, ptr %172, align 8, !tbaa !333
  %174 = icmp eq ptr %171, %173
  br i1 %174, label %214, label %175

175:                                              ; preds = %159
  %176 = getelementptr inbounds i8, ptr %4, i64 8
  br label %177

177:                                              ; preds = %175, %205
  %178 = phi ptr [ %171, %175 ], [ %207, %205 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #20
  %179 = getelementptr inbounds %struct.basic_block_def, ptr %178, i64 0, i32 13
  %180 = load i32, ptr %179, align 8, !tbaa !740
  %181 = and i32 %180, 4
  %182 = icmp eq i32 %181, 0
  %183 = getelementptr inbounds %struct.basic_block_def, ptr %178, i64 0, i32 9
  %184 = load i32, ptr %183, align 8, !tbaa !298
  br i1 %182, label %186, label %185

185:                                              ; preds = %177
  tail call fastcc void @SET_BIT(ptr noundef %165, i32 noundef %184) #18
  br label %187

186:                                              ; preds = %177
  tail call fastcc void @RESET_BIT(ptr noundef %165, i32 noundef %184) #18
  br label %187

187:                                              ; preds = %186, %185
  %188 = getelementptr inbounds %struct.basic_block_def, ptr %178, i64 0, i32 1
  %189 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %188) #18
  store i32 0, ptr %4, align 8, !tbaa.struct !310
  store ptr %189, ptr %176, align 8, !tbaa.struct !312
  %190 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %189, ptr noundef nonnull %2) #18, !range !313
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %205, label %192

192:                                              ; preds = %187, %200
  %193 = load ptr, ptr %2, align 8, !tbaa !286
  %194 = getelementptr inbounds %struct.edge_def, ptr %193, i64 0, i32 7
  %195 = load i32, ptr %194, align 8, !tbaa !496
  %196 = and i32 %195, 128
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %200, label %198

198:                                              ; preds = %192
  %199 = or i32 %195, 16384
  store i32 %199, ptr %194, align 8, !tbaa !496
  br label %200

200:                                              ; preds = %192, %198
  call fastcc void @ei_next(ptr noundef nonnull %4) #18
  %201 = load i32, ptr %4, align 8
  %202 = load ptr, ptr %176, align 8
  %203 = call fastcc zeroext i8 @ei_cond(i32 %201, ptr %202, ptr noundef nonnull %2) #18, !range !313
  %204 = icmp eq i8 %203, 0
  br i1 %204, label %205, label %192, !llvm.loop !741

205:                                              ; preds = %200, %187
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #20
  %206 = getelementptr inbounds %struct.basic_block_def, ptr %178, i64 0, i32 6
  %207 = load ptr, ptr %206, align 8, !tbaa !337
  %208 = load ptr, ptr @cfun, align 8, !tbaa !286
  %209 = getelementptr inbounds %struct.function, ptr %208, i64 0, i32 1
  %210 = load ptr, ptr %209, align 8, !tbaa !331
  %211 = getelementptr inbounds %struct.control_flow_graph, ptr %210, i64 0, i32 1
  %212 = load ptr, ptr %211, align 8, !tbaa !333
  %213 = icmp eq ptr %207, %212
  br i1 %213, label %214, label %177, !llvm.loop !742

214:                                              ; preds = %205, %159
  %215 = tail call zeroext i8 @mark_irreducible_loops() #19
  %216 = load ptr, ptr @cfun, align 8, !tbaa !286
  %217 = getelementptr inbounds %struct.function, ptr %216, i64 0, i32 1
  %218 = load ptr, ptr %217, align 8, !tbaa !331
  %219 = load ptr, ptr %218, align 8, !tbaa !336
  %220 = getelementptr inbounds %struct.basic_block_def, ptr %219, i64 0, i32 6
  %221 = load ptr, ptr %220, align 8, !tbaa !337
  %222 = getelementptr inbounds %struct.control_flow_graph, ptr %218, i64 0, i32 1
  %223 = load ptr, ptr %222, align 8, !tbaa !333
  %224 = icmp eq ptr %221, %223
  br i1 %224, label %289, label %225

225:                                              ; preds = %214
  %226 = getelementptr inbounds i8, ptr %5, i64 8
  br label %227

227:                                              ; preds = %225, %279
  %228 = phi ptr [ %221, %225 ], [ %282, %279 ]
  %229 = phi i32 [ %156, %225 ], [ %280, %279 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #20
  %230 = getelementptr inbounds %struct.basic_block_def, ptr %228, i64 0, i32 13
  %231 = load i32, ptr %230, align 8, !tbaa !740
  %232 = and i32 %231, 4
  %233 = icmp eq i32 %232, 0
  %234 = getelementptr inbounds %struct.basic_block_def, ptr %228, i64 0, i32 9
  %235 = load i32, ptr %234, align 8, !tbaa !298
  %236 = lshr i32 %235, 6
  %237 = zext nneg i32 %236 to i64
  %238 = getelementptr inbounds %struct.simple_bitmap_def, ptr %165, i64 0, i32 3, i64 %237
  %239 = load i64, ptr %238, align 8, !tbaa !509
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
  tail call void (ptr, ...) @error(ptr noundef nonnull %248, i32 noundef %235) #19
  br label %249

249:                                              ; preds = %247, %245, %246
  %250 = phi i32 [ %229, %246 ], [ %229, %245 ], [ 1, %247 ]
  %251 = getelementptr inbounds %struct.basic_block_def, ptr %228, i64 0, i32 1
  %252 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %251) #18
  store i32 0, ptr %5, align 8, !tbaa.struct !310
  store ptr %252, ptr %226, align 8, !tbaa.struct !312
  %253 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %252, ptr noundef nonnull %2) #18, !range !313
  %254 = icmp eq i8 %253, 0
  br i1 %254, label %279, label %255

255:                                              ; preds = %249, %271
  %256 = phi i32 [ %272, %271 ], [ %250, %249 ]
  %257 = load ptr, ptr %2, align 8, !tbaa !286
  %258 = getelementptr inbounds %struct.edge_def, ptr %257, i64 0, i32 7
  %259 = load i32, ptr %258, align 8, !tbaa !496
  %260 = and i32 %259, 16512
  switch i32 %260, label %271 [
    i32 128, label %262
    i32 16384, label %261
  ]

261:                                              ; preds = %255
  br label %262

262:                                              ; preds = %255, %261
  %263 = phi ptr [ @.str.32, %261 ], [ @.str.31, %255 ]
  %264 = load ptr, ptr %257, align 8, !tbaa !302
  %265 = getelementptr inbounds %struct.basic_block_def, ptr %264, i64 0, i32 9
  %266 = load i32, ptr %265, align 8, !tbaa !298
  %267 = getelementptr inbounds %struct.edge_def, ptr %257, i64 0, i32 1
  %268 = load ptr, ptr %267, align 8, !tbaa !400
  %269 = getelementptr inbounds %struct.basic_block_def, ptr %268, i64 0, i32 9
  %270 = load i32, ptr %269, align 8, !tbaa !298
  tail call void (ptr, ...) @error(ptr noundef nonnull %263, i32 noundef %266, i32 noundef %270) #19
  br label %271

271:                                              ; preds = %262, %255
  %272 = phi i32 [ %256, %255 ], [ 1, %262 ]
  %273 = load i32, ptr %258, align 8, !tbaa !496
  %274 = and i32 %273, -16385
  store i32 %274, ptr %258, align 8, !tbaa !496
  call fastcc void @ei_next(ptr noundef nonnull %5) #18
  %275 = load i32, ptr %5, align 8
  %276 = load ptr, ptr %226, align 8
  %277 = call fastcc zeroext i8 @ei_cond(i32 %275, ptr %276, ptr noundef nonnull %2) #18, !range !313
  %278 = icmp eq i8 %277, 0
  br i1 %278, label %279, label %255, !llvm.loop !743

279:                                              ; preds = %271, %249
  %280 = phi i32 [ %250, %249 ], [ %272, %271 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #20
  %281 = getelementptr inbounds %struct.basic_block_def, ptr %228, i64 0, i32 6
  %282 = load ptr, ptr %281, align 8, !tbaa !337
  %283 = load ptr, ptr @cfun, align 8, !tbaa !286
  %284 = getelementptr inbounds %struct.function, ptr %283, i64 0, i32 1
  %285 = load ptr, ptr %284, align 8, !tbaa !331
  %286 = getelementptr inbounds %struct.control_flow_graph, ptr %285, i64 0, i32 1
  %287 = load ptr, ptr %286, align 8, !tbaa !333
  %288 = icmp eq ptr %282, %287
  br i1 %288, label %289, label %227, !llvm.loop !744

289:                                              ; preds = %279, %214
  %290 = phi i32 [ %156, %214 ], [ %280, %279 ]
  tail call void @free(ptr noundef %165) #18
  br label %291

291:                                              ; preds = %289, %155
  %292 = phi i32 [ %290, %289 ], [ %156, %155 ]
  call fastcc void @fel_init(ptr noundef nonnull %3, ptr noundef nonnull %1, i32 noundef 0) #18
  %293 = load ptr, ptr %1, align 8, !tbaa !286
  %294 = icmp eq ptr %293, null
  br i1 %294, label %350, label %295

295:                                              ; preds = %291, %346
  %296 = phi ptr [ %348, %346 ], [ %293, %291 ]
  %297 = phi i32 [ %347, %346 ], [ %292, %291 ]
  %298 = getelementptr inbounds %struct.loop, ptr %296, i64 0, i32 18
  %299 = load ptr, ptr %298, align 8, !tbaa !418
  %300 = icmp eq ptr %299, null
  br i1 %300, label %332, label %301

301:                                              ; preds = %295
  %302 = load ptr, ptr %299, align 8, !tbaa !649
  %303 = icmp eq ptr %302, null
  br i1 %303, label %304, label %332

304:                                              ; preds = %301
  %305 = getelementptr inbounds %struct.loop_exit, ptr %299, i64 0, i32 2
  %306 = load ptr, ptr %305, align 8, !tbaa !419
  %307 = load ptr, ptr %306, align 8, !tbaa !649
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
  %320 = load ptr, ptr %319, align 8, !tbaa !419
  br label %321

321:                                              ; preds = %311, %318
  %322 = phi ptr [ %320, %318 ], [ %314, %311 ]
  %323 = getelementptr inbounds %struct.loop_exit, ptr %312, i64 0, i32 2
  %324 = load ptr, ptr %323, align 8, !tbaa !419
  %325 = load ptr, ptr %324, align 8, !tbaa !649
  %326 = icmp ne ptr %325, null
  %327 = icmp ne ptr %324, %322
  %328 = select i1 %326, i1 %327, i1 false
  br i1 %328, label %311, label %329, !llvm.loop !745

329:                                              ; preds = %321, %304
  %330 = phi ptr [ %306, %304 ], [ %324, %321 ]
  %331 = icmp eq ptr %330, %299
  br i1 %331, label %335, label %332

332:                                              ; preds = %329, %295, %301
  %333 = phi ptr [ @.str.33, %301 ], [ @.str.33, %295 ], [ @.str.34, %329 ]
  %334 = load i32, ptr %296, align 8, !tbaa !297
  tail call void (ptr, ...) @error(ptr noundef nonnull %333, i32 noundef %334) #19
  br label %335

335:                                              ; preds = %332, %329
  %336 = phi i32 [ %297, %329 ], [ 1, %332 ]
  %337 = tail call fastcc zeroext i8 @loops_state_satisfies_p(i32 noundef 8) #18, !range !313
  %338 = icmp eq i8 %337, 0
  br i1 %338, label %339, label %346

339:                                              ; preds = %335
  %340 = load ptr, ptr %298, align 8, !tbaa !418
  %341 = getelementptr inbounds %struct.loop_exit, ptr %340, i64 0, i32 2
  %342 = load ptr, ptr %341, align 8, !tbaa !419
  %343 = icmp eq ptr %342, %340
  br i1 %343, label %346, label %344

344:                                              ; preds = %339
  %345 = load i32, ptr %296, align 8, !tbaa !297
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.35, i32 noundef %345) #19
  br label %346

346:                                              ; preds = %335, %344, %339
  %347 = phi i32 [ %336, %335 ], [ 1, %344 ], [ %336, %339 ]
  call fastcc void @fel_next(ptr noundef nonnull %3, ptr noundef nonnull %1) #18
  %348 = load ptr, ptr %1, align 8, !tbaa !286
  %349 = icmp eq ptr %348, null
  br i1 %349, label %350, label %295, !llvm.loop !746

350:                                              ; preds = %346, %291
  %351 = phi i32 [ %292, %291 ], [ %347, %346 ]
  %352 = tail call fastcc zeroext i8 @loops_state_satisfies_p(i32 noundef 8) #18, !range !313
  %353 = icmp eq i8 %352, 0
  br i1 %353, label %504, label %354

354:                                              ; preds = %350
  %355 = shl nuw nsw i64 %8, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %9, i8 0, i64 %355, i1 false)
  %356 = load ptr, ptr @cfun, align 8, !tbaa !286
  %357 = getelementptr inbounds %struct.function, ptr %356, i64 0, i32 1
  %358 = load ptr, ptr %357, align 8, !tbaa !331
  %359 = load ptr, ptr %358, align 8, !tbaa !336
  %360 = getelementptr inbounds %struct.basic_block_def, ptr %359, i64 0, i32 6
  %361 = load ptr, ptr %360, align 8, !tbaa !337
  %362 = getelementptr inbounds %struct.control_flow_graph, ptr %358, i64 0, i32 1
  %363 = load ptr, ptr %362, align 8, !tbaa !333
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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #20
  %373 = getelementptr inbounds %struct.basic_block_def, ptr %369, i64 0, i32 3
  %374 = load ptr, ptr %373, align 8, !tbaa !435
  %375 = getelementptr inbounds %struct.function, ptr %368, i64 0, i32 4
  %376 = load ptr, ptr %375, align 8, !tbaa !373
  %377 = getelementptr inbounds %struct.loops, ptr %376, i64 0, i32 3
  %378 = load ptr, ptr %377, align 8, !tbaa !387
  %379 = icmp eq ptr %374, %378
  br i1 %379, label %450, label %380

380:                                              ; preds = %367
  %381 = getelementptr inbounds %struct.basic_block_def, ptr %369, i64 0, i32 1
  %382 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %381) #18
  store i32 0, ptr %6, align 8, !tbaa.struct !310
  store ptr %382, ptr %366, align 8, !tbaa.struct !312
  %383 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %382, ptr noundef nonnull %2) #18, !range !313
  %384 = icmp eq i8 %383, 0
  br i1 %384, label %450, label %385

385:                                              ; preds = %380, %442
  %386 = phi i32 [ %445, %442 ], [ %370, %380 ]
  %387 = phi i32 [ %444, %442 ], [ %371, %380 ]
  %388 = phi ptr [ %443, %442 ], [ %372, %380 ]
  %389 = load ptr, ptr %373, align 8, !tbaa !435
  %390 = load ptr, ptr %2, align 8, !tbaa !286
  %391 = getelementptr inbounds %struct.edge_def, ptr %390, i64 0, i32 1
  %392 = load ptr, ptr %391, align 8, !tbaa !400
  %393 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %389, ptr noundef %392) #18, !range !313
  %394 = icmp eq i8 %393, 0
  br i1 %394, label %395, label %442

395:                                              ; preds = %385
  %396 = add i32 %386, 1
  %397 = tail call fastcc ptr @get_exit_descriptions(ptr noundef nonnull %390) #18
  %398 = icmp eq ptr %397, null
  br i1 %398, label %399, label %406

399:                                              ; preds = %395
  %400 = load ptr, ptr %390, align 8, !tbaa !302
  %401 = getelementptr inbounds %struct.basic_block_def, ptr %400, i64 0, i32 9
  %402 = load i32, ptr %401, align 8, !tbaa !298
  %403 = load ptr, ptr %391, align 8, !tbaa !400
  %404 = getelementptr inbounds %struct.basic_block_def, ptr %403, i64 0, i32 9
  %405 = load i32, ptr %404, align 8, !tbaa !298
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.36, i32 noundef %402, i32 noundef %405) #19
  br label %413

406:                                              ; preds = %395, %406
  %407 = phi i32 [ %409, %406 ], [ 0, %395 ]
  %408 = phi ptr [ %411, %406 ], [ %397, %395 ]
  %409 = add i32 %407, 1
  %410 = getelementptr inbounds %struct.loop_exit, ptr %408, i64 0, i32 3
  %411 = load ptr, ptr %410, align 8, !tbaa !650
  %412 = icmp eq ptr %411, null
  br i1 %412, label %413, label %406, !llvm.loop !747

413:                                              ; preds = %406, %399
  %414 = phi i32 [ 1, %399 ], [ %387, %406 ]
  %415 = phi i32 [ 0, %399 ], [ %409, %406 ]
  %416 = load ptr, ptr %373, align 8, !tbaa !435
  %417 = load ptr, ptr %391, align 8, !tbaa !400
  %418 = getelementptr inbounds %struct.basic_block_def, ptr %417, i64 0, i32 3
  %419 = load ptr, ptr %418, align 8, !tbaa !435
  %420 = icmp eq ptr %416, %419
  br i1 %420, label %432, label %421

421:                                              ; preds = %413, %421
  %422 = phi i32 [ %424, %421 ], [ %415, %413 ]
  %423 = phi ptr [ %430, %421 ], [ %416, %413 ]
  %424 = add i32 %422, -1
  %425 = load i32, ptr %423, align 8, !tbaa !297
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds i32, ptr %9, i64 %426
  %428 = load i32, ptr %427, align 4, !tbaa !311
  %429 = add i32 %428, 1
  store i32 %429, ptr %427, align 4, !tbaa !311
  %430 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %423) #18
  %431 = icmp eq ptr %430, %419
  br i1 %431, label %432, label %421, !llvm.loop !748

432:                                              ; preds = %421, %413
  %433 = phi ptr [ %416, %413 ], [ %419, %421 ]
  %434 = phi i32 [ %415, %413 ], [ %424, %421 ]
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %442, label %436

436:                                              ; preds = %432
  %437 = load ptr, ptr %390, align 8, !tbaa !302
  %438 = getelementptr inbounds %struct.basic_block_def, ptr %437, i64 0, i32 9
  %439 = load i32, ptr %438, align 8, !tbaa !298
  %440 = getelementptr inbounds %struct.basic_block_def, ptr %417, i64 0, i32 9
  %441 = load i32, ptr %440, align 8, !tbaa !298
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.37, i32 noundef %439, i32 noundef %441) #19
  br label %442

442:                                              ; preds = %432, %436, %385
  %443 = phi ptr [ %388, %385 ], [ %433, %436 ], [ %433, %432 ]
  %444 = phi i32 [ %387, %385 ], [ 1, %436 ], [ %414, %432 ]
  %445 = phi i32 [ %386, %385 ], [ %396, %436 ], [ %396, %432 ]
  call fastcc void @ei_next(ptr noundef nonnull %6) #18
  %446 = load i32, ptr %6, align 8
  %447 = load ptr, ptr %366, align 8
  %448 = call fastcc zeroext i8 @ei_cond(i32 %446, ptr %447, ptr noundef nonnull %2) #18, !range !313
  %449 = icmp eq i8 %448, 0
  br i1 %449, label %450, label %385, !llvm.loop !749

450:                                              ; preds = %442, %380, %367
  %451 = phi ptr [ %372, %367 ], [ %372, %380 ], [ %443, %442 ]
  %452 = phi i32 [ %371, %367 ], [ %371, %380 ], [ %444, %442 ]
  %453 = phi i32 [ %370, %367 ], [ %370, %380 ], [ %445, %442 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #20
  %454 = getelementptr inbounds %struct.basic_block_def, ptr %369, i64 0, i32 6
  %455 = load ptr, ptr %454, align 8, !tbaa !337
  %456 = load ptr, ptr @cfun, align 8, !tbaa !286
  %457 = getelementptr inbounds %struct.function, ptr %456, i64 0, i32 1
  %458 = load ptr, ptr %457, align 8, !tbaa !331
  %459 = getelementptr inbounds %struct.control_flow_graph, ptr %458, i64 0, i32 1
  %460 = load ptr, ptr %459, align 8, !tbaa !333
  %461 = icmp eq ptr %455, %460
  br i1 %461, label %462, label %367, !llvm.loop !750

462:                                              ; preds = %450
  %463 = zext i32 %453 to i64
  br label %464

464:                                              ; preds = %462, %354
  %465 = phi ptr [ null, %354 ], [ %451, %462 ]
  %466 = phi i32 [ %351, %354 ], [ %452, %462 ]
  %467 = phi i64 [ 0, %354 ], [ %463, %462 ]
  %468 = phi ptr [ %356, %354 ], [ %456, %462 ]
  store ptr %465, ptr %1, align 8, !tbaa !286
  %469 = getelementptr inbounds %struct.function, ptr %468, i64 0, i32 4
  %470 = load ptr, ptr %469, align 8, !tbaa !373
  %471 = getelementptr inbounds %struct.loops, ptr %470, i64 0, i32 2
  %472 = load ptr, ptr %471, align 8, !tbaa !521
  %473 = tail call i64 @htab_elements(ptr noundef %472) #19
  %474 = icmp eq i64 %473, %467
  br i1 %474, label %476, label %475

475:                                              ; preds = %464
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.38) #19
  br label %476

476:                                              ; preds = %475, %464
  %477 = phi i32 [ 1, %475 ], [ %466, %464 ]
  call fastcc void @fel_init(ptr noundef nonnull %3, ptr noundef nonnull %1, i32 noundef 0) #18
  %478 = load ptr, ptr %1, align 8, !tbaa !286
  %479 = icmp eq ptr %478, null
  br i1 %479, label %504, label %480

480:                                              ; preds = %476, %500
  %481 = phi ptr [ %502, %500 ], [ %478, %476 ]
  %482 = phi i32 [ %501, %500 ], [ %477, %476 ]
  %483 = getelementptr inbounds %struct.loop, ptr %481, i64 0, i32 18
  %484 = load ptr, ptr %483, align 8, !tbaa !418
  br label %485

485:                                              ; preds = %485, %480
  %486 = phi ptr [ %484, %480 ], [ %489, %485 ]
  %487 = phi i32 [ 0, %480 ], [ %492, %485 ]
  %488 = getelementptr inbounds %struct.loop_exit, ptr %486, i64 0, i32 2
  %489 = load ptr, ptr %488, align 8, !tbaa !419
  %490 = load ptr, ptr %489, align 8, !tbaa !649
  %491 = icmp eq ptr %490, null
  %492 = add i32 %487, 1
  br i1 %491, label %493, label %485, !llvm.loop !751

493:                                              ; preds = %485
  %494 = load i32, ptr %481, align 8, !tbaa !297
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds i32, ptr %9, i64 %495
  %497 = load i32, ptr %496, align 4, !tbaa !311
  %498 = icmp eq i32 %487, %497
  br i1 %498, label %500, label %499

499:                                              ; preds = %493
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.39, i32 noundef %487, i32 noundef %494, i32 noundef %497) #19
  br label %500

500:                                              ; preds = %493, %499
  %501 = phi i32 [ 1, %499 ], [ %482, %493 ]
  call fastcc void @fel_next(ptr noundef nonnull %3, ptr noundef nonnull %1) #18
  %502 = load ptr, ptr %1, align 8, !tbaa !286
  %503 = icmp eq ptr %502, null
  br i1 %503, label %504, label %480, !llvm.loop !752

504:                                              ; preds = %500, %476, %350
  %505 = phi i32 [ %351, %350 ], [ %477, %476 ], [ %501, %500 ]
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %508, label %507

507:                                              ; preds = %504
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1575, ptr noundef nonnull @.str.1) #19
  br label %508

508:                                              ; preds = %504, %507
  tail call void @free(ptr noundef %9) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #20
  ret void
}

; Function Attrs: optsize
declare void @error(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !295 !PGOFuncName !753 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !705
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #18
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !295 !PGOFuncName !754 {
  %2 = tail call fastcc ptr @single_succ_edge(ptr noundef %0) #18
  %3 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !400
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @loop_latch_edge(ptr nocapture noundef readonly %0) local_unnamed_addr #3 !prof !755 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !300
  %4 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !296
  %6 = tail call ptr @find_edge(ptr noundef %3, ptr noundef %5) #19
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @RESET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #12 !prof !295 !PGOFuncName !756 {
  %3 = load ptr, ptr %0, align 8, !tbaa !519
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
  %15 = load i64, ptr %14, align 8, !tbaa !509
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !526
  %24 = add i8 %23, -1
  store i8 %24, ptr %22, align 1, !tbaa !526
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = xor i64 %27, -1
  %29 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %30 = load i64, ptr %29, align 8, !tbaa !509
  %31 = and i64 %30, %28
  store i64 %31, ptr %29, align 8, !tbaa !509
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @mark_irreducible_loops() local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_exit_descriptions(ptr noundef %0) unnamed_addr #3 !prof !295 !PGOFuncName !757 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !286
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !373
  %5 = getelementptr inbounds %struct.loops, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !521
  %7 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !286
  %8 = tail call i32 %7(ptr noundef %0) #19
  %9 = tail call ptr @htab_find_with_hash(ptr noundef %6, ptr noundef %0, i32 noundef %8) #19
  ret ptr %9
}

; Function Attrs: optsize
declare i64 @htab_elements(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !295 !PGOFuncName !758 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #18, !range !313
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 645, ptr noundef nonnull @.str.1) #19
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !705
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #18
  ret ptr %8
}

; Function Attrs: optsize
declare ptr @htab_find_with_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @loop_preheader_edge(ptr nocapture noundef readonly %0) local_unnamed_addr #3 !prof !759 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #20
  %4 = tail call fastcc zeroext i8 @loops_state_satisfies_p(i32 noundef 1) #18, !range !313
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %7, !prof !760

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1594, ptr noundef nonnull @.str.1) #19
  br label %7

7:                                                ; preds = %1, %6
  %8 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !296
  %10 = tail call fastcc ptr @ei_start_1(ptr noundef %9) #18
  store i32 0, ptr %3, align 8, !tbaa.struct !310
  %11 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %10, ptr %11, align 8, !tbaa.struct !312
  %12 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %10, ptr noundef nonnull %2) #18, !range !313
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %26, label %14, !prof !761

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  br label %16

16:                                               ; preds = %14, %21
  %17 = load ptr, ptr %2, align 8, !tbaa !286
  %18 = load ptr, ptr %17, align 8, !tbaa !302
  %19 = load ptr, ptr %15, align 8, !tbaa !300
  %20 = icmp eq ptr %18, %19
  br i1 %20, label %21, label %26, !prof !762

21:                                               ; preds = %16
  call fastcc void @ei_next(ptr noundef nonnull %3) #18
  %22 = load i32, ptr %3, align 8
  %23 = load ptr, ptr %11, align 8
  %24 = call fastcc zeroext i8 @ei_cond(i32 %22, ptr %23, ptr noundef nonnull %2) #18, !range !313
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %16, !prof !763, !llvm.loop !764

26:                                               ; preds = %21, %16, %7
  %27 = load ptr, ptr %2, align 8, !tbaa !286
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  ret ptr %27
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @loop_exit_edge_p(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !765 {
  %3 = load ptr, ptr %1, align 8, !tbaa !302
  %4 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %0, ptr noundef %3) #18, !range !313
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %11, label %6, !prof !766

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !400
  %9 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %0, ptr noundef %8) #18, !range !313
  %10 = xor i8 %9, 1
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i8 [ 0, %2 ], [ %10, %6 ]
  ret i8 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @single_exit(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !767 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 18
  %3 = load ptr, ptr %2, align 8, !tbaa !418
  %4 = getelementptr inbounds %struct.loop_exit, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !419
  %6 = tail call fastcc zeroext i8 @loops_state_satisfies_p(i32 noundef 8) #18, !range !313
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %16, label %8, !prof !768

8:                                                ; preds = %1
  %9 = load ptr, ptr %5, align 8, !tbaa !649
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11, !prof !769

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.loop_exit, ptr %5, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !419
  %14 = icmp eq ptr %13, %3
  br i1 %14, label %16, label %15, !prof !770

15:                                               ; preds = %11, %8
  br label %16

16:                                               ; preds = %11, %1, %15
  %17 = phi ptr [ null, %15 ], [ null, %1 ], [ %9, %11 ]
  ret ptr %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @is_loop_exit(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #3 !prof !295 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #20
  %5 = tail call fastcc ptr @ei_start_1(ptr noundef %1) #18
  store i32 0, ptr %4, align 8, !tbaa.struct !310
  %6 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %5, ptr %6, align 8, !tbaa.struct !312
  %7 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %5, ptr noundef nonnull %3) #18, !range !313
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %2, %13
  %10 = load ptr, ptr %3, align 8, !tbaa !286
  %11 = tail call zeroext i8 @loop_exit_edge_p(ptr noundef %0, ptr noundef %10) #18, !range !313
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  call fastcc void @ei_next(ptr noundef nonnull %4) #18
  %14 = load i32, ptr %4, align 8
  %15 = load ptr, ptr %6, align 8
  %16 = call fastcc zeroext i8 @ei_cond(i32 %14, ptr %15, ptr noundef nonnull %3) #18, !range !313
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %9, !llvm.loop !771

18:                                               ; preds = %9, %13, %2
  %19 = phi i8 [ 0, %2 ], [ 0, %13 ], [ 1, %9 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  ret i8 %19
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #17

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
attributes #18 = { optsize }
attributes #19 = { nounwind optsize }
attributes #20 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!270}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269}
!36 = !{ptr @flow_loop_nested_p, ptr @loop_depth, i64 19574278}
!37 = !{ptr @flow_loop_nested_p, ptr @VEC_loop_p_base_index, i64 6540999}
!38 = !{ptr @loop_depth, ptr @VEC_loop_p_base_length, i64 24002652}
!39 = !{ptr @superloop_at_depth, ptr @loop_depth, i64 321748}
!40 = !{ptr @superloop_at_depth, ptr @fancy_abort, i64 1}
!41 = !{ptr @superloop_at_depth, ptr @VEC_loop_p_base_index, i64 147240}
!42 = !{ptr @get_loop_latch_edges, ptr @ei_start_1, i64 6702}
!43 = !{ptr @get_loop_latch_edges, ptr @ei_cond, i64 36686}
!44 = !{ptr @get_loop_latch_edges, ptr @dominated_by_p, i64 29984}
!45 = !{ptr @get_loop_latch_edges, ptr @VEC_edge_heap_safe_push, i64 21823}
!46 = !{ptr @get_loop_latch_edges, ptr @ei_next, i64 29984}
!47 = !{ptr @VEC_edge_heap_free, ptr @free, i64 6701}
!48 = !{ptr @loop_outer, ptr @VEC_loop_p_base_length, i64 550389}
!49 = !{ptr @loop_outer, ptr @VEC_loop_p_base_index, i64 441777}
!50 = !{ptr @get_loop_body, ptr @fancy_abort, i64 3}
!51 = !{ptr @get_loop_body, ptr @xcalloc, i64 506300}
!52 = !{ptr @get_loop_body, ptr @get_loop_body_with_size, i64 506299}
!53 = !{ptr @ei_cond, ptr @ei_end_p, i64 77645746}
!54 = !{ptr @ei_cond, ptr @ei_edge, i64 49979021}
!55 = !{ptr @VEC_edge_heap_safe_push, ptr @VEC_edge_heap_reserve, i64 1008214}
!56 = !{ptr @VEC_edge_heap_safe_push, ptr @VEC_edge_base_quick_push, i64 1008214}
!57 = !{ptr @ei_next, ptr @ei_container, i64 91204955}
!58 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 45602478}
!59 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!60 = !{ptr @ei_end_p, ptr @ei_container, i64 155061355}
!61 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 77645746}
!62 = !{ptr @ei_edge, ptr @ei_container, i64 99958041}
!63 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 49979021}
!64 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!65 = !{ptr @VEC_edge_heap_reserve, ptr @VEC_edge_base_space, i64 1008214}
!66 = !{ptr @VEC_edge_heap_reserve, ptr @vec_heap_p_reserve, i64 515879}
!67 = !{ptr @flow_loops_dump, ptr @number_of_loops, i64 1}
!68 = !{ptr @flow_loops_dump, ptr @fprintf, i64 1}
!69 = !{ptr @flow_loops_dump, ptr @fel_init, i64 1}
!70 = !{ptr @flow_loops_dump, ptr @flow_loop_dump, i64 20}
!71 = !{ptr @flow_loops_dump, ptr @fel_next, i64 20}
!72 = !{ptr @flow_loops_dump, ptr @flow_loops_cfg_dump, i64 1}
!73 = !{ptr @number_of_loops, ptr @VEC_loop_p_base_length, i64 168729}
!74 = !{ptr @fel_init, ptr @number_of_loops, i64 108610}
!75 = !{ptr @fel_init, ptr @VEC_int_heap_alloc, i64 108610}
!76 = !{ptr @fel_init, ptr @VEC_int_base_quick_push, i64 435896}
!77 = !{ptr @fel_init, ptr @loop_outer, i64 329603}
!78 = !{ptr @fel_init, ptr @fel_next, i64 108610}
!79 = !{ptr @fel_next, ptr @VEC_int_base_iterate, i64 329609}
!80 = !{ptr @fel_next, ptr @get_loop, i64 220997}
!81 = !{ptr @fel_next, ptr @VEC_int_heap_free, i64 108612}
!82 = !{ptr @VEC_int_heap_alloc, ptr @vec_heap_o_reserve_exact, i64 108611}
!83 = !{ptr @get_loop, ptr @VEC_loop_p_base_index, i64 220997}
!84 = !{ptr @VEC_int_heap_free, ptr @free, i64 108610}
!85 = !{ptr @flow_loop_free, ptr @VEC_loop_p_gc_free, i64 454022}
!86 = !{ptr @flow_loop_free, ptr @ggc_free, i64 908044}
!87 = !{ptr @VEC_loop_p_gc_free, ptr @ggc_free, i64 454021}
!88 = !{ptr @flow_loops_free, ptr @VEC_loop_p_base_iterate, i64 602539}
!89 = !{ptr @flow_loops_free, ptr @flow_loop_free, i64 453599}
!90 = !{ptr @flow_loops_free, ptr @VEC_loop_p_gc_free, i64 148522}
!91 = !{ptr @flow_loop_nodes_find, ptr @loop_depth, i64 344194}
!92 = !{ptr @flow_loop_nodes_find, ptr @ei_start_1, i64 6150727}
!93 = !{ptr @flow_loop_nodes_find, ptr @ei_cond, i64 15701751}
!94 = !{ptr @flow_loop_nodes_find, ptr @dominated_by_p, i64 670987}
!95 = !{ptr @flow_loop_nodes_find, ptr @VEC_basic_block_heap_safe_push, i64 5806534}
!96 = !{ptr @flow_loop_nodes_find, ptr @VEC_basic_block_base_length, i64 6126037}
!97 = !{ptr @flow_loop_nodes_find, ptr @VEC_basic_block_base_pop, i64 5806533}
!98 = !{ptr @flow_loop_nodes_find, ptr @ei_next, i64 9551024}
!99 = !{ptr @flow_loop_nodes_find, ptr @VEC_basic_block_heap_free, i64 344194}
!100 = !{ptr @VEC_basic_block_heap_safe_push, ptr @VEC_basic_block_heap_reserve, i64 5806566}
!101 = !{ptr @VEC_basic_block_heap_safe_push, ptr @VEC_basic_block_base_quick_push, i64 5806566}
!102 = !{ptr @VEC_basic_block_heap_free, ptr @free, i64 309420}
!103 = !{ptr @VEC_basic_block_heap_reserve, ptr @VEC_basic_block_base_space, i64 5806566}
!104 = !{ptr @VEC_basic_block_heap_reserve, ptr @vec_heap_p_reserve, i64 460092}
!105 = !{ptr @flow_loop_tree_node_add, ptr @establish_preds, i64 317780}
!106 = !{ptr @establish_preds, ptr @loop_depth, i64 317808}
!107 = !{ptr @establish_preds, ptr @VEC_loop_p_base_truncate, i64 317808}
!108 = !{ptr @establish_preds, ptr @VEC_loop_p_gc_reserve, i64 317808}
!109 = !{ptr @establish_preds, ptr @VEC_loop_p_base_iterate, i64 832170}
!110 = !{ptr @establish_preds, ptr @VEC_loop_p_base_quick_push, i64 832170}
!111 = !{ptr @establish_preds, ptr @establish_preds, i64 29}
!112 = !{ptr @VEC_loop_p_gc_reserve, ptr @VEC_loop_p_base_space, i64 317808}
!113 = !{ptr @VEC_loop_p_gc_reserve, ptr @vec_gc_p_reserve, i64 317751}
!114 = !{ptr @flow_loop_tree_node_remove, ptr @loop_outer, i64 467}
!115 = !{ptr @flow_loop_tree_node_remove, ptr @VEC_loop_p_base_truncate, i64 467}
!116 = !{ptr @alloc_loop, ptr @ggc_alloc_cleared_stat, i64 935456}
!117 = !{ptr @flow_loops_find, ptr @calculate_dominance_info, i64 149998}
!118 = !{ptr @flow_loops_find, ptr @init_loops_structure, i64 149998}
!119 = !{ptr @flow_loops_find, ptr @sbitmap_alloc, i64 149997}
!120 = !{ptr @flow_loops_find, ptr @sbitmap_zero, i64 149997}
!121 = !{ptr @flow_loops_find, ptr @ei_start_1, i64 6322135}
!122 = !{ptr @flow_loops_find, ptr @ei_cond, i64 31913590}
!123 = !{ptr @flow_loops_find, ptr @ei_next, i64 19586400}
!124 = !{ptr @flow_loops_find, ptr @fancy_abort, i64 1}
!125 = !{ptr @flow_loops_find, ptr @dominated_by_p, i64 9320177}
!126 = !{ptr @flow_loops_find, ptr @SET_BIT, i64 330657}
!127 = !{ptr @flow_loops_find, ptr @xmalloc, i64 121000}
!128 = !{ptr @flow_loops_find, ptr @pre_and_rev_post_order_compute, i64 60500}
!129 = !{ptr @flow_loops_find, ptr @VEC_basic_block_base_index, i64 317079}
!130 = !{ptr @flow_loops_find, ptr @alloc_loop, i64 317079}
!131 = !{ptr @flow_loops_find, ptr @VEC_loop_p_base_quick_push, i64 317079}
!132 = !{ptr @flow_loops_find, ptr @flow_loop_tree_node_add, i64 317079}
!133 = !{ptr @flow_loops_find, ptr @flow_loop_nodes_find, i64 317079}
!134 = !{ptr @flow_loops_find, ptr @flow_bb_inside_loop_p, i64 652014}
!135 = !{ptr @flow_loops_find, ptr @free, i64 420994}
!136 = !{ptr @flow_loops_find, ptr @VEC_loop_p_base_length, i64 149997}
!137 = !{ptr @init_loops_structure, ptr @VEC_loop_p_gc_alloc, i64 149998}
!138 = !{ptr @init_loops_structure, ptr @alloc_loop, i64 149998}
!139 = !{ptr @init_loops_structure, ptr @VEC_loop_p_base_quick_push, i64 149998}
!140 = !{ptr @flow_bb_inside_loop_p, ptr @flow_loop_nested_p, i64 9422149}
!141 = !{ptr @VEC_loop_p_gc_alloc, ptr @vec_gc_p_reserve_exact, i64 149998}
!142 = !{ptr @disambiguate_loops_with_multiple_latches, ptr @fel_init, i64 108611}
!143 = !{ptr @disambiguate_loops_with_multiple_latches, ptr @disambiguate_multiple_latches, i64 3282}
!144 = !{ptr @disambiguate_loops_with_multiple_latches, ptr @fel_next, i64 220996}
!145 = !{ptr @disambiguate_multiple_latches, ptr @fprintf, i64 1}
!146 = !{ptr @disambiguate_multiple_latches, ptr @find_edge, i64 3281}
!147 = !{ptr @disambiguate_multiple_latches, ptr @split_edge, i64 72}
!148 = !{ptr @disambiguate_multiple_latches, ptr @find_subloop_latch_edge, i64 3422}
!149 = !{ptr @disambiguate_multiple_latches, ptr @form_subloop, i64 141}
!150 = !{ptr @disambiguate_multiple_latches, ptr @merge_latch_edges, i64 3281}
!151 = !{ptr @find_subloop_latch_edge, ptr @get_loop_latch_edges, i64 3421}
!152 = !{ptr @find_subloop_latch_edge, ptr @VEC_edge_base_length, i64 3421}
!153 = !{ptr @find_subloop_latch_edge, ptr @find_subloop_latch_edge_by_profile, i64 3307}
!154 = !{ptr @find_subloop_latch_edge, ptr @current_ir_type, i64 3306}
!155 = !{ptr @find_subloop_latch_edge, ptr @find_subloop_latch_edge_by_ivs, i64 1751}
!156 = !{ptr @find_subloop_latch_edge, ptr @VEC_edge_heap_free, i64 3421}
!157 = !{ptr @form_subloop, ptr @pointer_set_create, i64 140}
!158 = !{ptr @form_subloop, ptr @ei_start_1, i64 140}
!159 = !{ptr @form_subloop, ptr @ei_cond, i64 686}
!160 = !{ptr @form_subloop, ptr @pointer_set_insert, i64 406}
!161 = !{ptr @form_subloop, ptr @ei_next, i64 546}
!162 = !{ptr @form_subloop, ptr @make_forwarder_block, i64 140}
!163 = !{ptr @form_subloop, ptr @pointer_set_destroy, i64 140}
!164 = !{ptr @form_subloop, ptr @alloc_loop, i64 140}
!165 = !{ptr @form_subloop, ptr @add_loop, i64 140}
!166 = !{ptr @merge_latch_edges, ptr @get_loop_latch_edges, i64 3281}
!167 = !{ptr @merge_latch_edges, ptr @VEC_edge_base_length, i64 6562}
!168 = !{ptr @merge_latch_edges, ptr @fancy_abort, i64 1}
!169 = !{ptr @merge_latch_edges, ptr @VEC_edge_base_index, i64 114}
!170 = !{ptr @merge_latch_edges, ptr @fprintf, i64 1}
!171 = !{ptr @merge_latch_edges, ptr @pointer_set_create, i64 3167}
!172 = !{ptr @merge_latch_edges, ptr @VEC_edge_base_iterate, i64 13784}
!173 = !{ptr @merge_latch_edges, ptr @pointer_set_insert, i64 10617}
!174 = !{ptr @merge_latch_edges, ptr @make_forwarder_block, i64 3167}
!175 = !{ptr @merge_latch_edges, ptr @pointer_set_destroy, i64 3167}
!176 = !{ptr @merge_latch_edges, ptr @VEC_edge_heap_free, i64 3281}
!177 = !{ptr @find_subloop_latch_edge_by_profile, ptr @VEC_edge_base_iterate, i64 14284}
!178 = !{ptr @find_subloop_latch_edge_by_ivs, ptr @VEC_edge_base_index, i64 1752}
!179 = !{ptr @find_subloop_latch_edge_by_ivs, ptr @VEC_edge_base_iterate, i64 12792}
!180 = !{ptr @find_subloop_latch_edge_by_ivs, ptr @dominated_by_p, i64 8797}
!181 = !{ptr @find_subloop_latch_edge_by_ivs, ptr @gsi_start_phis, i64 747}
!182 = !{ptr @find_subloop_latch_edge_by_ivs, ptr @gsi_end_p, i64 1238}
!183 = !{ptr @find_subloop_latch_edge_by_ivs, ptr @gsi_stmt, i64 1181}
!184 = !{ptr @find_subloop_latch_edge_by_ivs, ptr @gimple_phi_arg_imm_use_ptr, i64 2166}
!185 = !{ptr @find_subloop_latch_edge_by_ivs, ptr @get_use_from_ptr, i64 2166}
!186 = !{ptr @find_subloop_latch_edge_by_ivs, ptr @gimple_bb, i64 795}
!187 = !{ptr @find_subloop_latch_edge_by_ivs, ptr @flow_bb_inside_loop_p, i64 795}
!188 = !{ptr @find_subloop_latch_edge_by_ivs, ptr @gsi_next, i64 491}
!189 = !{ptr @gimple_phi_arg_imm_use_ptr, ptr @gimple_phi_arg, i64 2355}
!190 = !{ptr @gimple_phi_arg, ptr @fancy_abort, i64 1}
!191 = !{ptr @mfb_redirect_edges_in_set, ptr @pointer_set_contains, i64 15005}
!192 = !{ptr @get_loop_body_with_size, ptr @dfs_enumerate_from, i64 506910}
!193 = !{ptr @glb_enum_p, ptr @dominated_by_p, i64 7608142}
!194 = !{ptr @get_loop_body_in_dom_order, ptr @fancy_abort, i64 3}
!195 = !{ptr @get_loop_body_in_dom_order, ptr @xcalloc, i64 50708}
!196 = !{ptr @get_loop_body_in_dom_order, ptr @fill_sons_in_loop, i64 50708}
!197 = !{ptr @fill_sons_in_loop, ptr @first_dom_son, i64 825621}
!198 = !{ptr @fill_sons_in_loop, ptr @flow_bb_inside_loop_p, i64 825112}
!199 = !{ptr @fill_sons_in_loop, ptr @dominated_by_p, i64 766223}
!200 = !{ptr @fill_sons_in_loop, ptr @fill_sons_in_loop, i64 645441}
!201 = !{ptr @fill_sons_in_loop, ptr @next_dom_son, i64 825112}
!202 = !{ptr @get_loop_body_in_bfs_order, ptr @fancy_abort, i64 3}
!203 = !{ptr @get_loop_body_in_bfs_order, ptr @xcalloc, i64 1922}
!204 = !{ptr @get_loop_body_in_bfs_order, ptr @bitmap_obstack_alloc_stat, i64 1922}
!205 = !{ptr @get_loop_body_in_bfs_order, ptr @bitmap_bit_p, i64 34994}
!206 = !{ptr @get_loop_body_in_bfs_order, ptr @bitmap_set_bit, i64 16840}
!207 = !{ptr @get_loop_body_in_bfs_order, ptr @ei_start_1, i64 13772}
!208 = !{ptr @get_loop_body_in_bfs_order, ptr @ei_cond, i64 36880}
!209 = !{ptr @get_loop_body_in_bfs_order, ptr @flow_bb_inside_loop_p, i64 23108}
!210 = !{ptr @get_loop_body_in_bfs_order, ptr @ei_next, i64 23108}
!211 = !{ptr @get_loop_body_in_bfs_order, ptr @bitmap_obstack_free, i64 1922}
!212 = !{ptr @rescan_loop_exit, ptr @loops_state_satisfies_p, i64 5379709}
!213 = !{ptr @rescan_loop_exit, ptr @flow_bb_inside_loop_p, i64 4322972}
!214 = !{ptr @rescan_loop_exit, ptr @find_common_loop, i64 315475}
!215 = !{ptr @rescan_loop_exit, ptr @ggc_alloc_stat, i64 299112}
!216 = !{ptr @rescan_loop_exit, ptr @loop_outer, i64 299112}
!217 = !{ptr @rescan_loop_exit, ptr @htab_find_slot_with_hash, i64 714553}
!218 = !{ptr @rescan_loop_exit, ptr @loop_exit_free, i64 15270}
!219 = !{ptr @rescan_loop_exit, ptr @htab_clear_slot, i64 12266}
!220 = !{ptr @find_common_loop, ptr @loop_depth, i64 3199186}
!221 = !{ptr @find_common_loop, ptr @VEC_loop_p_base_index, i64 756087}
!222 = !{ptr @find_common_loop, ptr @loop_outer, i64 25356}
!223 = !{ptr @loop_exit_free, ptr @ggc_free, i64 273135}
!224 = !{ptr @record_loop_exits, ptr @loops_state_satisfies_p, i64 60118}
!225 = !{ptr @record_loop_exits, ptr @loops_state_set, i64 60117}
!226 = !{ptr @record_loop_exits, ptr @fancy_abort, i64 1}
!227 = !{ptr @record_loop_exits, ptr @number_of_loops, i64 60117}
!228 = !{ptr @record_loop_exits, ptr @htab_create_alloc, i64 60117}
!229 = !{ptr @record_loop_exits, ptr @ei_start_1, i64 2538303}
!230 = !{ptr @record_loop_exits, ptr @ei_cond, i64 6523946}
!231 = !{ptr @record_loop_exits, ptr @rescan_loop_exit, i64 3985643}
!232 = !{ptr @record_loop_exits, ptr @ei_next, i64 3985643}
!233 = !{ptr @release_recorded_exits, ptr @loops_state_satisfies_p, i64 58644}
!234 = !{ptr @release_recorded_exits, ptr @fancy_abort, i64 1}
!235 = !{ptr @release_recorded_exits, ptr @htab_delete, i64 58644}
!236 = !{ptr @release_recorded_exits, ptr @loops_state_clear, i64 58644}
!237 = !{ptr @get_loop_exit_edges, ptr @fancy_abort, i64 1}
!238 = !{ptr @get_loop_exit_edges, ptr @loops_state_satisfies_p, i64 456724}
!239 = !{ptr @get_loop_exit_edges, ptr @VEC_edge_heap_safe_push, i64 986386}
!240 = !{ptr @get_loop_exit_edges, ptr @get_loop_body, i64 340616}
!241 = !{ptr @get_loop_exit_edges, ptr @ei_start_1, i64 5630521}
!242 = !{ptr @get_loop_exit_edges, ptr @ei_cond, i64 15015275}
!243 = !{ptr @get_loop_exit_edges, ptr @flow_bb_inside_loop_p, i64 9384754}
!244 = !{ptr @get_loop_exit_edges, ptr @ei_next, i64 9384754}
!245 = !{ptr @get_loop_exit_edges, ptr @free, i64 340616}
!246 = !{ptr @add_bb_to_loop, ptr @fancy_abort, i64 1}
!247 = !{ptr @add_bb_to_loop, ptr @loop_depth, i64 245434}
!248 = !{ptr @add_bb_to_loop, ptr @VEC_loop_p_base_iterate, i64 700943}
!249 = !{ptr @add_bb_to_loop, ptr @ei_start_1, i64 490868}
!250 = !{ptr @add_bb_to_loop, ptr @ei_cond, i64 986100}
!251 = !{ptr @add_bb_to_loop, ptr @rescan_loop_exit, i64 495232}
!252 = !{ptr @add_bb_to_loop, ptr @ei_next, i64 495232}
!253 = !{ptr @remove_bb_from_loops, ptr @fancy_abort, i64 1}
!254 = !{ptr @remove_bb_from_loops, ptr @VEC_loop_p_base_iterate, i64 384178}
!255 = !{ptr @remove_bb_from_loops, ptr @ei_start_1, i64 363304}
!256 = !{ptr @remove_bb_from_loops, ptr @ei_cond, i64 466013}
!257 = !{ptr @remove_bb_from_loops, ptr @rescan_loop_exit, i64 102709}
!258 = !{ptr @remove_bb_from_loops, ptr @ei_next, i64 102709}
!259 = !{ptr @delete_loop, ptr @flow_loop_tree_node_remove, i64 417}
!260 = !{ptr @delete_loop, ptr @VEC_loop_p_base_replace, i64 417}
!261 = !{ptr @delete_loop, ptr @flow_loop_free, i64 417}
!262 = !{ptr @loop_latch_edge, ptr @find_edge, i64 102242}
!263 = !{ptr @loop_preheader_edge, ptr @loops_state_satisfies_p, i64 4521397}
!264 = !{ptr @loop_preheader_edge, ptr @fancy_abort, i64 1}
!265 = !{ptr @loop_preheader_edge, ptr @ei_start_1, i64 4521397}
!266 = !{ptr @loop_preheader_edge, ptr @ei_cond, i64 7023165}
!267 = !{ptr @loop_preheader_edge, ptr @ei_next, i64 2501768}
!268 = !{ptr @loop_exit_edge_p, ptr @flow_bb_inside_loop_p, i64 2155037}
!269 = !{ptr @single_exit, ptr @loops_state_satisfies_p, i64 265885}
!270 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!271 = !{!"function_entry_count", i64 9787139}
!272 = !{!"branch_weights", i32 6541000, i32 3246141}
!273 = !{!274, !278, i64 40}
!274 = !{!"loop", !275, i64 0, !275, i64 4, !278, i64 8, !278, i64 16, !279, i64 24, !275, i64 32, !275, i64 36, !278, i64 40, !278, i64 48, !278, i64 56, !278, i64 64, !278, i64 72, !280, i64 80, !280, i64 96, !276, i64 112, !276, i64 113, !275, i64 116, !278, i64 120, !278, i64 128, !276, i64 136, !278, i64 144}
!275 = !{!"int", !276, i64 0}
!276 = !{!"omnipotent char", !277, i64 0}
!277 = !{!"Simple C/C++ TBAA"}
!278 = !{!"any pointer", !276, i64 0}
!279 = !{!"lpt_decision", !275, i64 0, !275, i64 4}
!280 = !{!"", !281, i64 0, !281, i64 8}
!281 = !{!"long", !276, i64 0}
!282 = !{!"function_entry_count", i64 24002652}
!283 = !{!"cfgloop.c:loop_depth"}
!284 = !{!"function_entry_count", i64 8107101}
!285 = !{!"cfgloop.c:VEC_loop_p_base_index"}
!286 = !{!278, !278, i64 0}
!287 = !{!"function_entry_count", i64 24871769}
!288 = !{!"cfgloop.c:VEC_loop_p_base_length"}
!289 = !{!"branch_weights", i32 2581867, i32 22289904}
!290 = !{!291, !275, i64 0}
!291 = !{!"VEC_loop_p_base", !275, i64 0, !275, i64 4, !276, i64 8}
!292 = !{!"function_entry_count", i64 321748}
!293 = !{!"branch_weights", i32 1, i32 321749}
!294 = !{!"branch_weights", i32 174509, i32 147241}
!295 = !{!"function_entry_count", i64 0}
!296 = !{!274, !278, i64 8}
!297 = !{!274, !275, i64 0}
!298 = !{!299, !275, i64 80}
!299 = !{!"basic_block_def", !278, i64 0, !278, i64 8, !278, i64 16, !278, i64 24, !276, i64 32, !278, i64 48, !278, i64 56, !276, i64 64, !281, i64 72, !275, i64 80, !275, i64 84, !275, i64 88, !275, i64 92, !275, i64 96}
!300 = !{!274, !278, i64 16}
!301 = !{i32 0, i32 2}
!302 = !{!303, !278, i64 0}
!303 = !{!"edge_def", !278, i64 0, !278, i64 8, !276, i64 16, !278, i64 24, !278, i64 32, !275, i64 40, !275, i64 44, !275, i64 48, !275, i64 52, !281, i64 56}
!304 = distinct !{!304, !305}
!305 = !{!"llvm.loop.mustprogress"}
!306 = !{!274, !275, i64 36}
!307 = distinct !{!307, !305}
!308 = !{!"function_entry_count", i64 6702}
!309 = !{!"cfgloop.c:get_loop_latch_edges"}
!310 = !{i64 0, i64 4, !311, i64 8, i64 8, !286}
!311 = !{!275, !275, i64 0}
!312 = !{i64 0, i64 8, !286}
!313 = !{i8 0, i8 2}
!314 = !{!"branch_weights", i32 1, i32 6702}
!315 = !{!"branch_weights", i32 8162, i32 21827}
!316 = !{!"branch_weights", i32 6702, i32 23286}
!317 = distinct !{!317, !305}
!318 = !{!"function_entry_count", i64 40619}
!319 = !{!"cfgloop.c:VEC_edge_base_iterate"}
!320 = !{!"branch_weights", i32 1, i32 40620}
!321 = !{!322, !275, i64 0}
!322 = !{!"VEC_edge_base", !275, i64 0, !275, i64 4, !276, i64 8}
!323 = !{!"branch_weights", i32 31344, i32 9277}
!324 = !{!"cfgloop.c:VEC_edge_heap_free"}
!325 = !{!"branch_weights", i32 1, i32 6703}
!326 = !{!"function_entry_count", i64 550389}
!327 = !{!"cfgloop.c:loop_outer"}
!328 = !{!"branch_weights", i32 108612, i32 441779}
!329 = !{!"function_entry_count", i64 506300}
!330 = !{!"branch_weights", i32 1, i32 506301}
!331 = !{!332, !278, i64 8}
!332 = !{!"function", !278, i64 0, !278, i64 8, !278, i64 16, !278, i64 24, !278, i64 32, !278, i64 40, !278, i64 48, !278, i64 56, !278, i64 64, !278, i64 72, !278, i64 80, !278, i64 88, !278, i64 96, !275, i64 104, !275, i64 108, !275, i64 112, !275, i64 116, !275, i64 120, !275, i64 124, !278, i64 128, !275, i64 136, !275, i64 137, !275, i64 138, !275, i64 138, !275, i64 138, !275, i64 138, !275, i64 138, !275, i64 138, !275, i64 138, !275, i64 139, !275, i64 139, !275, i64 139, !275, i64 139, !275, i64 139, !275, i64 139, !275, i64 139}
!333 = !{!334, !278, i64 8}
!334 = !{!"control_flow_graph", !278, i64 0, !278, i64 8, !278, i64 16, !275, i64 24, !275, i64 28, !275, i64 32, !278, i64 40, !275, i64 48, !276, i64 52, !276, i64 60, !275, i64 68, !275, i64 72}
!335 = !{!334, !275, i64 24}
!336 = !{!334, !278, i64 0}
!337 = !{!299, !278, i64 56}
!338 = distinct !{!338, !305}
!339 = !{!"branch_weights", i32 506301, i32 1}
!340 = !{!"function_entry_count", i64 32043268}
!341 = !{!"cfgloop.c:ei_start_1"}
!342 = !{!"function_entry_count", i64 77645746}
!343 = !{!"cfgloop.c:ei_cond"}
!344 = !{!"branch_weights", i32 49979022, i32 27666726}
!345 = !{!"function_entry_count", i64 1008214}
!346 = !{!"cfgloop.c:VEC_edge_heap_safe_push"}
!347 = !{!"function_entry_count", i64 45602478}
!348 = !{!"cfgloop.c:ei_next"}
!349 = !{!"branch_weights", i32 1, i32 45602479}
!350 = !{!"branch_weights", i32 45602479, i32 1}
!351 = !{!352, !275, i64 0}
!352 = !{!"", !275, i64 0, !278, i64 8}
!353 = !{!"cfgloop.c:ei_end_p"}
!354 = !{!"branch_weights", i32 230137, i32 77415611}
!355 = !{!"function_entry_count", i64 49979021}
!356 = !{!"cfgloop.c:ei_edge"}
!357 = !{!"branch_weights", i32 1, i32 49979022}
!358 = !{!"function_entry_count", i64 123258207}
!359 = !{!"cfgloop.c:VEC_edge_base_length"}
!360 = !{!"branch_weights", i32 230137, i32 123028072}
!361 = !{!"function_entry_count", i64 346224354}
!362 = !{!"cfgloop.c:ei_container"}
!363 = !{!"branch_weights", i32 1, i32 346224355}
!364 = !{!"function_entry_count", i64 49980886}
!365 = !{!"cfgloop.c:VEC_edge_base_index"}
!366 = !{!"cfgloop.c:VEC_edge_heap_reserve"}
!367 = !{!"branch_weights", i32 515880, i32 492336}
!368 = !{!"cfgloop.c:VEC_edge_base_quick_push"}
!369 = !{!"cfgloop.c:VEC_edge_base_space"}
!370 = !{!"branch_weights", i32 463386, i32 544830}
!371 = !{!322, !275, i64 4}
!372 = !{!"function_entry_count", i64 141871}
!373 = !{!332, !278, i64 32}
!374 = !{!"branch_weights", i32 17734, i32 -1778991514}
!375 = distinct !{!375, !305}
!376 = !{!"function_entry_count", i64 168730}
!377 = !{!"cfgloop.c:number_of_loops"}
!378 = !{!"branch_weights", i32 1, i32 168731}
!379 = !{!380, !278, i64 8}
!380 = !{!"loops", !275, i64 0, !278, i64 8, !278, i64 16, !278, i64 24}
!381 = !{!"function_entry_count", i64 108611}
!382 = !{!"cfgloop.c:fel_init"}
!383 = !{!384, !275, i64 8}
!384 = !{!"", !278, i64 0, !275, i64 8}
!385 = !{!"branch_weights", i32 1, i32 108612}
!386 = !{!384, !278, i64 0}
!387 = !{!380, !278, i64 24}
!388 = !{!"branch_weights", i32 108612, i32 220998}
!389 = !{!274, !278, i64 48}
!390 = !{!"branch_weights", i32 212763, i32 116847}
!391 = !{!274, !278, i64 56}
!392 = !{!"branch_weights", i32 225458, i32 212763}
!393 = !{!"branch_weights", i32 108612, i32 220997}
!394 = distinct !{!394, !305}
!395 = !{!"function_entry_count", i64 329608}
!396 = !{!"cfgloop.c:fel_next"}
!397 = !{!"branch_weights", i32 1, i32 220998}
!398 = distinct !{!398, !305}
!399 = !{!"cfgloop.c:flow_loops_cfg_dump"}
!400 = !{!303, !278, i64 8}
!401 = distinct !{!401, !305}
!402 = distinct !{!402, !305}
!403 = !{!"cfgloop.c:VEC_int_heap_alloc"}
!404 = !{!"function_entry_count", i64 2519838}
!405 = !{!"cfgloop.c:VEC_loop_p_base_iterate"}
!406 = !{!"branch_weights", i32 297669, i32 2222171}
!407 = !{!"branch_weights", i32 1626422, i32 595750}
!408 = !{!"function_entry_count", i64 220997}
!409 = !{!"cfgloop.c:VEC_int_base_quick_push"}
!410 = !{!411, !275, i64 0}
!411 = !{!"VEC_int_base", !275, i64 0, !275, i64 4, !276, i64 8}
!412 = !{!"cfgloop.c:VEC_int_base_iterate"}
!413 = !{!"branch_weights", i32 1, i32 329609}
!414 = !{!"branch_weights", i32 220998, i32 108612}
!415 = !{!"cfgloop.c:get_loop"}
!416 = !{!"cfgloop.c:VEC_int_heap_free"}
!417 = !{!"function_entry_count", i64 454022}
!418 = !{!274, !278, i64 128}
!419 = !{!420, !278, i64 16}
!420 = !{!"loop_exit", !278, i64 0, !278, i64 8, !278, i64 16, !278, i64 24}
!421 = !{!"branch_weights", i32 428046, i32 25977}
!422 = !{!420, !278, i64 8}
!423 = !{!"branch_weights", i32 25977, i32 0}
!424 = distinct !{!424, !305}
!425 = !{!"function_entry_count", i64 602545}
!426 = !{!"cfgloop.c:VEC_loop_p_gc_free"}
!427 = !{!"branch_weights", i32 148524, i32 454023}
!428 = !{!"function_entry_count", i64 148523}
!429 = !{!"branch_weights", i32 1, i32 148524}
!430 = !{!"branch_weights", i32 1, i32 148523}
!431 = !{!"branch_weights", i32 418, i32 453606}
!432 = !{!"branch_weights", i32 148523, i32 305500}
!433 = distinct !{!433, !305}
!434 = !{!"function_entry_count", i64 344194}
!435 = !{!299, !278, i64 24}
!436 = !{!299, !275, i64 84}
!437 = !{!"branch_weights", i32 1, i32 344194}
!438 = !{!"branch_weights", i32 38267, i32 670990}
!439 = !{!"branch_weights", i32 351485, i32 319506}
!440 = !{!"branch_weights", i32 1, i32 319505}
!441 = !{!"branch_weights", i32 1, i32 5806566}
!442 = !{!"branch_weights", i32 3354760, i32 5487062}
!443 = !{!"branch_weights", i32 5806566, i32 3035255}
!444 = distinct !{!444, !305}
!445 = !{!"branch_weights", i32 319505, i32 5487062}
!446 = distinct !{!446, !305}
!447 = !{!"branch_weights", i32 344194, i32 365062}
!448 = distinct !{!448, !305}
!449 = !{!"function_entry_count", i64 5806566}
!450 = !{!"cfgloop.c:VEC_basic_block_heap_safe_push"}
!451 = !{!"function_entry_count", i64 6126071}
!452 = !{!"cfgloop.c:VEC_basic_block_base_length"}
!453 = !{!"branch_weights", i32 1, i32 6126072}
!454 = !{!455, !275, i64 0}
!455 = !{!"VEC_basic_block_base", !275, i64 0, !275, i64 4, !276, i64 8}
!456 = !{!"cfgloop.c:VEC_basic_block_base_pop"}
!457 = !{!"cfgloop.c:VEC_basic_block_heap_free"}
!458 = !{!"branch_weights", i32 34774, i32 309422}
!459 = !{!"cfgloop.c:VEC_basic_block_heap_reserve"}
!460 = !{!"branch_weights", i32 460092, i32 5346476}
!461 = !{!"cfgloop.c:VEC_basic_block_base_quick_push"}
!462 = !{!"cfgloop.c:VEC_basic_block_base_space"}
!463 = !{!"branch_weights", i32 309422, i32 5497146}
!464 = !{!455, !275, i64 4}
!465 = !{!"function_entry_count", i64 317780}
!466 = !{!"function_entry_count", i64 317808}
!467 = !{!"cfgloop.c:establish_preds"}
!468 = !{!"branch_weights", i32 1, i32 317808}
!469 = !{!"branch_weights", i32 317808, i32 196556}
!470 = distinct !{!470, !305}
!471 = !{!"branch_weights", i32 317780, i32 29}
!472 = !{!"branch_weights", i32 29, i32 0}
!473 = distinct !{!473, !305}
!474 = !{!"function_entry_count", i64 318275}
!475 = !{!"cfgloop.c:VEC_loop_p_base_truncate"}
!476 = !{!"branch_weights", i32 317731, i32 546}
!477 = !{!"cfgloop.c:VEC_loop_p_gc_reserve"}
!478 = !{!"branch_weights", i32 317753, i32 57}
!479 = !{!"function_entry_count", i64 1299253}
!480 = !{!"cfgloop.c:VEC_loop_p_base_quick_push"}
!481 = !{!"cfgloop.c:VEC_loop_p_base_space"}
!482 = !{!"branch_weights", i32 317731, i32 79}
!483 = !{!291, !275, i64 4}
!484 = !{!"function_entry_count", i64 467}
!485 = !{!"branch_weights", i32 190, i32 279}
!486 = !{!"branch_weights", i32 279, i32 986}
!487 = distinct !{!487, !305}
!488 = !{!"function_entry_count", i64 467728}
!489 = !{!274, !276, i64 136}
!490 = !{!274, !278, i64 144}
!491 = !{!"function_entry_count", i64 149998}
!492 = !{!"branch_weights", i32 1, i32 149999}
!493 = !{!334, !275, i64 32}
!494 = !{!"branch_weights", i32 1, i32 149998}
!495 = !{!"branch_weights", i32 1, i32 6005135}
!496 = !{!303, !275, i64 48}
!497 = !{!"branch_weights", i32 9470302, i32 1}
!498 = !{!"branch_weights", i32 6005135, i32 3465167}
!499 = distinct !{!499, !305}
!500 = !{!"branch_weights", i32 -2147483648, i32 0}
!501 = !{!"branch_weights", i32 149999, i32 9320304}
!502 = !{!"branch_weights", i32 8989643, i32 330662}
!503 = distinct !{!503, !305}
!504 = !{!"branch_weights", i32 149998, i32 5855138}
!505 = distinct !{!505, !305}
!506 = distinct !{!506, !305}
!507 = !{!"branch_weights", i32 89499, i32 60501}
!508 = !{!"branch_weights", i32 60500, i32 1}
!509 = !{!281, !281, i64 0}
!510 = !{!"branch_weights", i32 3772211, i32 317085}
!511 = !{!334, !278, i64 16}
!512 = !{!"branch_weights", i32 1, i32 311176}
!513 = !{!"branch_weights", i32 323186, i32 322993}
!514 = !{!"branch_weights", i32 317085, i32 5909}
!515 = !{!"branch_weights", i32 311176, i32 335002}
!516 = distinct !{!516, !305}
!517 = !{!"branch_weights", i32 4028795, i32 60500}
!518 = distinct !{!518, !305}
!519 = !{!520, !278, i64 0}
!520 = !{!"simple_bitmap_def", !278, i64 0, !275, i64 8, !275, i64 12, !276, i64 16}
!521 = !{!380, !278, i64 16}
!522 = !{!"cfgloop.c:init_loops_structure"}
!523 = !{!"function_entry_count", i64 330661}
!524 = !{!"cfgloop.c:SET_BIT"}
!525 = !{!"branch_weights", i32 330662, i32 1}
!526 = !{!276, !276, i64 0}
!527 = !{!"function_entry_count", i64 317084}
!528 = !{!"cfgloop.c:VEC_basic_block_base_index"}
!529 = !{!"function_entry_count", i64 31893203}
!530 = !{!"branch_weights", i32 6865, i32 31886340}
!531 = !{!"branch_weights", i32 62872, i32 31823469}
!532 = !{!"branch_weights", i32 22401320, i32 9422150}
!533 = !{!"cfgloop.c:VEC_loop_p_gc_alloc"}
!534 = !{!"branch_weights", i32 1, i32 108611}
!535 = !{!"branch_weights", i32 3282, i32 217717}
!536 = !{!"branch_weights", i32 108611, i32 112387}
!537 = distinct !{!537, !305}
!538 = !{!"function_entry_count", i64 3281}
!539 = !{!"cfgloop.c:disambiguate_multiple_latches"}
!540 = !{!"branch_weights", i32 3282, i32 1}
!541 = !{!"branch_weights", i32 3211, i32 72}
!542 = !{!"branch_weights", i32 3141, i32 141}
!543 = !{!"branch_weights", i32 141, i32 0}
!544 = !{!"function_entry_count", i64 3421}
!545 = !{!"cfgloop.c:find_subloop_latch_edge"}
!546 = !{!"branch_weights", i32 3309, i32 114}
!547 = !{!"branch_weights", i32 3309, i32 1}
!548 = !{!"branch_weights", i32 1753, i32 1557}
!549 = !{!"function_entry_count", i64 140}
!550 = !{!"cfgloop.c:form_subloop"}
!551 = !{!"branch_weights", i32 1, i32 140}
!552 = !{!"branch_weights", i32 141, i32 410}
!553 = !{!"branch_weights", i32 140, i32 410}
!554 = distinct !{!554, !305}
!555 = !{!"cfgloop.c:merge_latch_edges"}
!556 = !{!"branch_weights", i32 1, i32 3282}
!557 = !{!"branch_weights", i32 114, i32 3169}
!558 = !{!"branch_weights", i32 3169, i32 1}
!559 = !{!"branch_weights", i32 1, i32 3168}
!560 = !{!"branch_weights", i32 3168, i32 7455}
!561 = distinct !{!561, !305}
!562 = !{!"function_entry_count", i64 3308}
!563 = !{!"cfgloop.c:find_subloop_latch_edge_by_profile"}
!564 = !{!"branch_weights", i32 1, i32 3308}
!565 = !{!303, !281, i64 56}
!566 = !{!"branch_weights", i32 1, i32 10979}
!567 = !{!"branch_weights", i32 3308, i32 7671}
!568 = distinct !{!568, !305}
!569 = !{!"branch_weights", i32 2146834665, i32 648983}
!570 = !{!"function_entry_count", i64 1752}
!571 = !{!"cfgloop.c:find_subloop_latch_edge_by_ivs"}
!572 = !{!"branch_weights", i32 1, i32 1752}
!573 = !{!"branch_weights", i32 1, i32 847}
!574 = !{!"branch_weights", i32 3299, i32 657}
!575 = !{!"branch_weights", i32 1752, i32 2203}
!576 = distinct !{!576, !305}
!577 = !{!"branch_weights", i32 847, i32 3518}
!578 = distinct !{!578, !305}
!579 = !{!"branch_weights", i32 906, i32 3460}
!580 = !{!"branch_weights", i32 140, i32 1}
!581 = !{!303, !275, i64 44}
!582 = !{!"branch_weights", i32 1300, i32 49}
!583 = !{!"branch_weights", i32 392, i32 909}
!584 = !{!"branch_weights", i32 1, i32 909}
!585 = !{!"branch_weights", i32 1, i32 201}
!586 = !{!"branch_weights", i32 418, i32 1009}
!587 = !{!"branch_weights", i32 708, i32 302}
!588 = !{!"branch_weights", i32 201, i32 1225}
!589 = distinct !{!589, !305}
!590 = !{!"branch_weights", i32 1208, i32 140}
!591 = distinct !{!591, !305}
!592 = !{!"branch_weights", i32 141, i32 1}
!593 = !{!"function_entry_count", i64 1487}
!594 = !{!"cfgloop.c:gsi_end_p"}
!595 = !{!596, !278, i64 0}
!596 = !{!"", !278, i64 0, !278, i64 8, !278, i64 16}
!597 = !{!"function_entry_count", i64 1347}
!598 = !{!"cfgloop.c:gsi_stmt"}
!599 = !{!600, !278, i64 0}
!600 = !{!"gimple_seq_node_d", !278, i64 0, !278, i64 8, !278, i64 16}
!601 = !{!"function_entry_count", i64 2355}
!602 = !{!"cfgloop.c:get_use_from_ptr"}
!603 = !{!604, !278, i64 24}
!604 = !{!"ssa_use_operand_d", !278, i64 0, !278, i64 8, !276, i64 16, !278, i64 24}
!605 = !{!"cfgloop.c:gimple_phi_arg_imm_use_ptr"}
!606 = !{!"function_entry_count", i64 908}
!607 = !{!"cfgloop.c:gimple_bb"}
!608 = !{!"function_entry_count", i64 640}
!609 = !{!"cfgloop.c:gsi_next"}
!610 = !{!600, !278, i64 16}
!611 = !{!"cfgloop.c:gimple_phi_arg"}
!612 = !{!"branch_weights", i32 1, i32 2356}
!613 = !{!"function_entry_count", i64 15005}
!614 = !{!"cfgloop.c:mfb_redirect_edges_in_set"}
!615 = !{!"function_entry_count", i64 506910}
!616 = !{!"function_entry_count", i64 7608143}
!617 = !{!"cfgloop.c:glb_enum_p"}
!618 = !{!"branch_weights", i32 1, i32 7608144}
!619 = !{!"function_entry_count", i64 50708}
!620 = !{!"branch_weights", i32 1, i32 50709}
!621 = !{!"branch_weights", i32 50709, i32 1}
!622 = !{!"function_entry_count", i64 704839}
!623 = !{!"cfgloop.c:fill_sons_in_loop"}
!624 = !{!"branch_weights", i32 435, i32 704405}
!625 = !{!"branch_weights", i32 50274, i32 654132}
!626 = !{!"branch_weights", i32 551020, i32 103113}
!627 = !{!"branch_weights", i32 704405, i32 0}
!628 = distinct !{!628, !305}
!629 = !{!"branch_weights", i32 1833128742, i32 314354906}
!630 = !{!"function_entry_count", i64 1922}
!631 = !{!"branch_weights", i32 1, i32 1923}
!632 = !{!"branch_weights", i32 1, i32 1922}
!633 = !{!"branch_weights", i32 1923, i32 11857}
!634 = !{!"branch_weights", i32 1, i32 13778}
!635 = !{!"branch_weights", i32 1887, i32 21234}
!636 = !{!"branch_weights", i32 14927, i32 6308}
!637 = !{!"branch_weights", i32 13778, i32 9342}
!638 = distinct !{!638, !305}
!639 = !{!"branch_weights", i32 1, i32 13779}
!640 = !{!"branch_weights", i32 11857, i32 1922}
!641 = distinct !{!641, !305}
!642 = !{!"function_entry_count", i64 5379709}
!643 = !{!"branch_weights", i32 735351, i32 4644360}
!644 = !{!"branch_weights", i32 4374063, i32 270298}
!645 = !{!"branch_weights", i32 1, i32 4374063}
!646 = !{!"branch_weights", i32 51087, i32 4322977}
!647 = !{!"branch_weights", i32 315475, i32 4007503}
!648 = !{!"branch_weights", i32 16363, i32 299112}
!649 = !{!420, !278, i64 0}
!650 = !{!420, !278, i64 24}
!651 = !{!"branch_weights", i32 299112, i32 0}
!652 = distinct !{!652, !305}
!653 = !{!"branch_weights", i32 205317365, i32 1942166283}
!654 = !{!"branch_weights", i32 449661, i32 264893}
!655 = !{!"branch_weights", i32 252628, i32 12266}
!656 = !{!"branch_weights", i32 237359, i32 15270}
!657 = !{!"function_entry_count", i64 10742478}
!658 = !{!"cfgloop.c:loops_state_satisfies_p"}
!659 = !{!380, !275, i64 0}
!660 = !{!"function_entry_count", i64 1599595}
!661 = !{!"branch_weights", i32 1, i32 1599596}
!662 = !{!"branch_weights", i32 89374, i32 1510223}
!663 = !{!"branch_weights", i32 666715, i32 843509}
!664 = !{!"branch_weights", i32 1586918, i32 12678}
!665 = !{!"branch_weights", i32 12678, i32 0}
!666 = distinct !{!666, !305}
!667 = !{!"function_entry_count", i64 232412}
!668 = !{!"cfgloop.c:loop_exit_free"}
!669 = !{!"branch_weights", i32 1, i32 232412}
!670 = !{!"branch_weights", i32 232412, i32 40724}
!671 = distinct !{!671, !305}
!672 = !{!"function_entry_count", i64 66771}
!673 = !{!"branch_weights", i32 6653, i32 60120}
!674 = !{!"branch_weights", i32 60120, i32 1}
!675 = !{!"branch_weights", i32 1, i32 60119}
!676 = !{!"branch_weights", i32 60119, i32 2478302}
!677 = distinct !{!677, !305}
!678 = !{!"branch_weights", i32 1, i32 2538420}
!679 = !{!"branch_weights", i32 2538420, i32 1447409}
!680 = distinct !{!680, !305}
!681 = !{!"function_entry_count", i64 60119}
!682 = !{!"cfgloop.c:loops_state_set"}
!683 = !{!"function_entry_count", i64 44140}
!684 = !{!"cfgloop.c:loop_exit_hash"}
!685 = !{!"function_entry_count", i64 422703}
!686 = !{!"cfgloop.c:loop_exit_eq"}
!687 = !{!"cfgloop.c:dump_recorded_exit"}
!688 = distinct !{!688, !305}
!689 = !{!"function_entry_count", i64 58644}
!690 = !{!"branch_weights", i32 1, i32 58645}
!691 = !{!"cfgloop.c:loops_state_clear"}
!692 = !{!"function_entry_count", i64 456724}
!693 = !{!"branch_weights", i32 1, i32 456725}
!694 = !{!"branch_weights", i32 340617, i32 116109}
!695 = !{!"branch_weights", i32 1, i32 116108}
!696 = !{!"branch_weights", i32 116108, i32 119587}
!697 = distinct !{!697, !305}
!698 = !{!"branch_weights", i32 1, i32 340616}
!699 = !{!"branch_weights", i32 1, i32 5630545}
!700 = !{!"branch_weights", i32 750695, i32 8634101}
!701 = !{!"branch_weights", i32 5630545, i32 3754250}
!702 = distinct !{!702, !305}
!703 = !{!"branch_weights", i32 5289930, i32 340616}
!704 = distinct !{!704, !305}
!705 = !{!299, !278, i64 8}
!706 = distinct !{!706, !305}
!707 = !{!"function_entry_count", i64 245434}
!708 = !{!"branch_weights", i32 245435, i32 1}
!709 = !{!"branch_weights", i32 1, i32 245434}
!710 = !{!"branch_weights", i32 245434, i32 210077}
!711 = distinct !{!711, !305}
!712 = !{!"branch_weights", i32 245434, i32 73345}
!713 = distinct !{!713, !305}
!714 = !{!"branch_weights", i32 68980, i32 176455}
!715 = !{!"branch_weights", i32 176455, i32 0}
!716 = distinct !{!716, !305}
!717 = !{!"function_entry_count", i64 181652}
!718 = !{!"branch_weights", i32 1, i32 181653}
!719 = !{!"branch_weights", i32 1, i32 181652}
!720 = !{!"branch_weights", i32 181652, i32 20875}
!721 = distinct !{!721, !305}
!722 = !{!"branch_weights", i32 130987, i32 50666}
!723 = !{!"branch_weights", i32 50666, i32 0}
!724 = distinct !{!724, !305}
!725 = !{!"branch_weights", i32 129610, i32 52043}
!726 = !{!"branch_weights", i32 52043, i32 0}
!727 = distinct !{!727, !305}
!728 = !{!"function_entry_count", i64 417}
!729 = !{!"cfgloop.c:VEC_loop_p_base_replace"}
!730 = distinct !{!730, !305}
!731 = !{!"cfgloop.c:cancel_loop"}
!732 = distinct !{!732, !305}
!733 = distinct !{!733, !305}
!734 = distinct !{!734, !305}
!735 = distinct !{!735, !305}
!736 = distinct !{!736, !305}
!737 = distinct !{!737, !305}
!738 = !{!299, !278, i64 0}
!739 = distinct !{!739, !305}
!740 = !{!299, !275, i64 96}
!741 = distinct !{!741, !305}
!742 = distinct !{!742, !305}
!743 = distinct !{!743, !305}
!744 = distinct !{!744, !305}
!745 = distinct !{!745, !305}
!746 = distinct !{!746, !305}
!747 = distinct !{!747, !305}
!748 = distinct !{!748, !305}
!749 = distinct !{!749, !305}
!750 = distinct !{!750, !305}
!751 = distinct !{!751, !305}
!752 = distinct !{!752, !305}
!753 = !{!"cfgloop.c:single_succ_p"}
!754 = !{!"cfgloop.c:single_succ"}
!755 = !{!"function_entry_count", i64 102242}
!756 = !{!"cfgloop.c:RESET_BIT"}
!757 = !{!"cfgloop.c:get_exit_descriptions"}
!758 = !{!"cfgloop.c:single_succ_edge"}
!759 = !{!"function_entry_count", i64 4521397}
!760 = !{!"branch_weights", i32 1, i32 4521398}
!761 = !{!"branch_weights", i32 1, i32 150762}
!762 = !{!"branch_weights", i32 2448317, i32 4370636}
!763 = !{!"branch_weights", i32 150762, i32 6668190}
!764 = distinct !{!764, !305}
!765 = !{!"function_entry_count", i64 1080845}
!766 = !{!"branch_weights", i32 6653, i32 1074194}
!767 = !{!"function_entry_count", i64 265885}
!768 = !{!"branch_weights", i32 10, i32 265877}
!769 = !{!"branch_weights", i32 31, i32 265847}
!770 = !{!"branch_weights", i32 163443, i32 102405}
!771 = distinct !{!771, !305}
