; ModuleID = 'cfganal.c'
source_filename = "cfganal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.edge_iterator = type { i32, ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.edge_list = type { i32, i32, ptr }
%struct.sbitmap_iterator = type { ptr, i32, i32, i32, i64 }
%struct.depth_first_search_dsS = type { ptr, i32, ptr }
%struct.bitmap_iterator = type { ptr, ptr, i32, i64 }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }

@cfun = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [59 x i8] c"Compressed edge list, %d BBs + entry & exit, and %d edges\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c" %-4d - edge(\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"entry,\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"exit)\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"*p* No index for edge from %d to %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"*p* Pred for index %d should be %d not %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"*p* Succ for index %d should be %d not %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"*** Edge (%d, %d) appears to not have an index\0A\00", align 1
@.str.10 = private unnamed_addr constant [54 x i8] c"*** Edge (%d, %d) has index %d, but there is no edge\0A\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"%s { \00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"%d->%d \00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"cfganal.c\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@dfs_enumerate_from.visited = internal unnamed_addr global ptr null, align 8
@dfs_enumerate_from.v_size = internal unnamed_addr global i32 0, align 4
@timevar_enable = external local_unnamed_addr global i8, align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @forwarder_block_p(ptr noundef readonly %0) local_unnamed_addr #0 !prof !179 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !180
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !184
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !187
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %54, label %8, !prof !189

8:                                                ; preds = %1
  %9 = load ptr, ptr %4, align 8, !tbaa !190
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %54, label %11, !prof !189

11:                                               ; preds = %8
  %12 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #17, !range !191
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %54, label %14, !prof !192

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !193
  %17 = load ptr, ptr %16, align 8, !tbaa !193
  %18 = getelementptr inbounds %struct.rtl_bb_info, ptr %16, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !194
  %20 = icmp eq ptr %17, %19
  br i1 %20, label %40, label %21, !prof !196

21:                                               ; preds = %14, %33
  %22 = phi ptr [ %34, %33 ], [ %16, %14 ]
  %23 = phi ptr [ %36, %33 ], [ %17, %14 ]
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 65535
  %26 = add nsw i32 %25, -7
  %27 = icmp ult i32 %26, 4
  br i1 %27, label %28, label %33, !prof !197

28:                                               ; preds = %21
  %29 = tail call fastcc zeroext i8 @flow_active_insn_p(ptr noundef nonnull %23) #17, !range !191
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %54, !prof !198

31:                                               ; preds = %28
  %32 = load ptr, ptr %15, align 8, !tbaa !193
  br label %33

33:                                               ; preds = %31, %21
  %34 = phi ptr [ %32, %31 ], [ %22, %21 ]
  %35 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1, i32 0, i32 0, i64 2
  %36 = load ptr, ptr %35, align 8, !tbaa !193
  %37 = getelementptr inbounds %struct.rtl_bb_info, ptr %34, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !194
  %39 = icmp eq ptr %36, %38
  br i1 %39, label %40, label %21, !prof !199, !llvm.loop !200

40:                                               ; preds = %33, %14
  %41 = phi ptr [ %17, %14 ], [ %36, %33 ]
  %42 = load i32, ptr %41, align 8
  %43 = and i32 %42, 65535
  %44 = add nsw i32 %43, -7
  %45 = icmp ult i32 %44, 4
  br i1 %45, label %46, label %54, !prof !202

46:                                               ; preds = %40
  %47 = icmp eq i32 %43, 9
  br i1 %47, label %48, label %51, !prof !203

48:                                               ; preds = %46
  %49 = tail call i32 @simplejump_p(ptr noundef nonnull %41) #18
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %54, !prof !204

51:                                               ; preds = %48, %46
  %52 = tail call fastcc zeroext i8 @flow_active_insn_p(ptr noundef nonnull %41) #17, !range !191
  %53 = xor i8 %52, 1
  br label %54

54:                                               ; preds = %28, %40, %48, %51, %1, %8, %11
  %55 = phi i8 [ 0, %11 ], [ 0, %8 ], [ 0, %1 ], [ 1, %48 ], [ %53, %51 ], [ 1, %40 ], [ 0, %28 ]
  ret i8 %55
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !179 !PGOFuncName !205 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !206
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #17
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @flow_active_insn_p(ptr noundef %0) unnamed_addr #0 !prof !209 !PGOFuncName !210 {
  %2 = tail call i32 @active_insn_p(ptr noundef %0) #18
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %17, !prof !211

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !193
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 25
  br i1 %9, label %10, label %16, !prof !212

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !193
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, -2147418113
  %15 = icmp eq i32 %14, -2147483611
  br i1 %15, label %17, label %16

16:                                               ; preds = %10, %4
  br label %17

17:                                               ; preds = %10, %1, %16
  %18 = phi i8 [ 0, %16 ], [ 1, %1 ], [ 1, %10 ]
  ret i8 %18
}

; Function Attrs: optsize
declare i32 @simplejump_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @can_fallthru(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 !prof !213 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !193
  %7 = getelementptr inbounds %struct.rtl_bb_info, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #19
  %9 = load ptr, ptr @cfun, align 8, !tbaa !180
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !184
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !187
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %60, label %15, !prof !214

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !215
  %18 = icmp eq ptr %17, %1
  br i1 %18, label %19, label %60, !prof !216

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %21 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %20) #17
  store i32 0, ptr %4, align 8, !tbaa.struct !217
  %22 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %21, ptr %22, align 8, !tbaa.struct !219
  %23 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %21, ptr noundef nonnull %3) #17, !range !191
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %45, label %25, !prof !220

25:                                               ; preds = %19, %40
  %26 = load ptr, ptr %3, align 8, !tbaa !180
  %27 = getelementptr inbounds %struct.edge_def, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !221
  %29 = load ptr, ptr @cfun, align 8, !tbaa !180
  %30 = getelementptr inbounds %struct.function, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !184
  %32 = getelementptr inbounds %struct.control_flow_graph, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !187
  %34 = icmp eq ptr %28, %33
  br i1 %34, label %35, label %40, !prof !223

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.edge_def, ptr %26, i64 0, i32 7
  %37 = load i32, ptr %36, align 8, !tbaa !224
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %60

40:                                               ; preds = %25, %35
  call fastcc void @ei_next(ptr noundef nonnull %4) #17
  %41 = load i32, ptr %4, align 8
  %42 = load ptr, ptr %22, align 8
  %43 = call fastcc zeroext i8 @ei_cond(i32 %41, ptr %42, ptr noundef nonnull %3) #17, !range !191
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %25, !prof !225, !llvm.loop !226

45:                                               ; preds = %40, %19
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %47 = load ptr, ptr %46, align 8, !tbaa !193
  %48 = load ptr, ptr %47, align 8, !tbaa !227
  %49 = icmp eq ptr %48, null
  br i1 %49, label %55, label %50, !prof !228

50:                                               ; preds = %45
  %51 = tail call i32 @active_insn_p(ptr noundef nonnull %48) #18
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %55, !prof !229

53:                                               ; preds = %50
  %54 = tail call ptr @next_active_insn(ptr noundef nonnull %48) #18
  br label %55

55:                                               ; preds = %53, %50, %45
  %56 = phi ptr [ %48, %50 ], [ %54, %53 ], [ null, %45 ]
  %57 = tail call ptr @next_active_insn(ptr noundef %8) #18
  %58 = icmp eq ptr %57, %56
  %59 = zext i1 %58 to i8
  br label %60

60:                                               ; preds = %35, %15, %2, %55
  %61 = phi i8 [ %59, %55 ], [ 1, %2 ], [ 0, %15 ], [ 0, %35 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  ret i8 %61
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #4 !prof !230 !PGOFuncName !231 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !232 !PGOFuncName !233 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #17, !range !191
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !234

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #17
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !180
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !235 !PGOFuncName !236 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #17
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !237

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #17
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #17
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !238

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 738, ptr noundef nonnull @.str.16) #18
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !239
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !239
  ret void
}

; Function Attrs: optsize
declare i32 @active_insn_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @next_active_insn(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @could_fall_through(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #0 !prof !241 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #19
  %5 = load ptr, ptr @cfun, align 8, !tbaa !180
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !184
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !187
  %10 = icmp eq ptr %9, %1
  br i1 %10, label %37, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %13 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %12) #17
  store i32 0, ptr %4, align 8, !tbaa.struct !217
  %14 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %13, ptr %14, align 8, !tbaa.struct !219
  %15 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %13, ptr noundef nonnull %3) #17, !range !191
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %37, label %17

17:                                               ; preds = %11, %32
  %18 = load ptr, ptr %3, align 8, !tbaa !180
  %19 = getelementptr inbounds %struct.edge_def, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !221
  %21 = load ptr, ptr @cfun, align 8, !tbaa !180
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !184
  %24 = getelementptr inbounds %struct.control_flow_graph, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !187
  %26 = icmp eq ptr %20, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %17
  %28 = getelementptr inbounds %struct.edge_def, ptr %18, i64 0, i32 7
  %29 = load i32, ptr %28, align 8, !tbaa !224
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %17, %27
  call fastcc void @ei_next(ptr noundef nonnull %4) #17
  %33 = load i32, ptr %4, align 8
  %34 = load ptr, ptr %14, align 8
  %35 = call fastcc zeroext i8 @ei_cond(i32 %33, ptr %34, ptr noundef nonnull %3) #17, !range !191
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %17, !llvm.loop !242

37:                                               ; preds = %27, %32, %11, %2
  %38 = phi i8 [ 1, %2 ], [ 1, %11 ], [ 0, %27 ], [ 1, %32 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  ret i8 %38
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @mark_dfs_back_edges() local_unnamed_addr #0 !prof !243 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !180
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !184
  %4 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !244
  %6 = sext i32 %5 to i64
  %7 = tail call ptr @xcalloc(i64 noundef %6, i64 noundef 4) #18
  %8 = load ptr, ptr @cfun, align 8, !tbaa !180
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !184
  %11 = getelementptr inbounds %struct.control_flow_graph, ptr %10, i64 0, i32 5
  %12 = load i32, ptr %11, align 8, !tbaa !244
  %13 = sext i32 %12 to i64
  %14 = tail call ptr @xcalloc(i64 noundef %13, i64 noundef 4) #18
  %15 = load ptr, ptr @cfun, align 8, !tbaa !180
  %16 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !184
  %18 = getelementptr inbounds %struct.control_flow_graph, ptr %17, i64 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !245
  %20 = add nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = shl nsw i64 %21, 4
  %23 = tail call ptr @xmalloc(i64 noundef %22) #18
  %24 = load ptr, ptr @cfun, align 8, !tbaa !180
  %25 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !184
  %27 = getelementptr inbounds %struct.control_flow_graph, ptr %26, i64 0, i32 5
  %28 = load i32, ptr %27, align 8, !tbaa !244
  %29 = tail call ptr @sbitmap_alloc(i32 noundef %28) #18
  tail call void @sbitmap_zero(ptr noundef %29) #18
  %30 = load ptr, ptr @cfun, align 8, !tbaa !180
  %31 = getelementptr inbounds %struct.function, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !184
  %33 = load ptr, ptr %32, align 8, !tbaa !190
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 1
  %35 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %34) #17
  store i32 0, ptr %23, align 8, !tbaa.struct !217
  %36 = getelementptr inbounds i8, ptr %23, i64 8
  store ptr %35, ptr %36, align 8, !tbaa.struct !219
  br label %37

37:                                               ; preds = %0, %138
  %38 = phi i32 [ 1, %0 ], [ %142, %138 ]
  %39 = phi i32 [ 1, %0 ], [ %141, %138 ]
  %40 = phi i32 [ 1, %0 ], [ %140, %138 ]
  %41 = phi i8 [ 0, %0 ], [ %139, %138 ]
  %42 = sext i32 %38 to i64
  %43 = getelementptr %struct.edge_iterator, ptr %23, i64 %42
  %44 = getelementptr %struct.edge_iterator, ptr %43, i64 -1
  %45 = load i32, ptr %44, align 8, !tbaa.struct !217
  %46 = getelementptr %struct.edge_iterator, ptr %43, i64 -1, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa.struct !219
  %48 = tail call fastcc ptr @ei_edge(i32 %45, ptr %47) #17
  %49 = load ptr, ptr %48, align 8, !tbaa !246
  %50 = tail call fastcc ptr @ei_edge(i32 %45, ptr %47) #17
  %51 = getelementptr inbounds %struct.edge_def, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !221
  %53 = tail call fastcc ptr @ei_edge(i32 %45, ptr %47) #17
  %54 = getelementptr inbounds %struct.edge_def, ptr %53, i64 0, i32 7
  %55 = load i32, ptr %54, align 8, !tbaa !224
  %56 = and i32 %55, -33
  store i32 %56, ptr %54, align 8, !tbaa !224
  %57 = load ptr, ptr @cfun, align 8, !tbaa !180
  %58 = getelementptr inbounds %struct.function, ptr %57, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !184
  %60 = getelementptr inbounds %struct.control_flow_graph, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !187
  %62 = icmp eq ptr %52, %61
  br i1 %62, label %115, label %63, !prof !247

63:                                               ; preds = %37
  %64 = getelementptr inbounds %struct.basic_block_def, ptr %52, i64 0, i32 9
  %65 = load i32, ptr %64, align 8, !tbaa !248
  %66 = lshr i32 %65, 6
  %67 = zext nneg i32 %66 to i64
  %68 = getelementptr inbounds %struct.simple_bitmap_def, ptr %29, i64 0, i32 3, i64 %67
  %69 = load i64, ptr %68, align 8, !tbaa !249
  %70 = and i32 %65, 63
  %71 = zext nneg i32 %70 to i64
  %72 = shl nuw i64 1, %71
  %73 = and i64 %72, %69
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %93, !prof !250

75:                                               ; preds = %63
  tail call fastcc void @SET_BIT(ptr noundef nonnull %29, i32 noundef %65) #17
  %76 = add nsw i32 %39, 1
  %77 = load i32, ptr %64, align 8, !tbaa !248
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, ptr %7, i64 %78
  store i32 %39, ptr %79, align 4, !tbaa !218
  %80 = getelementptr inbounds %struct.basic_block_def, ptr %52, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !206
  %82 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %81) #17
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %88, label %84, !prof !251

84:                                               ; preds = %75
  %85 = add nsw i32 %38, 1
  %86 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %80) #17
  store i32 0, ptr %43, align 8, !tbaa.struct !217
  %87 = getelementptr inbounds i8, ptr %43, i64 8
  store ptr %86, ptr %87, align 8, !tbaa.struct !219
  br label %138

88:                                               ; preds = %75
  %89 = add nsw i32 %40, 1
  %90 = load i32, ptr %64, align 8, !tbaa !248
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, ptr %14, i64 %91
  store i32 %40, ptr %92, align 4, !tbaa !218
  br label %138

93:                                               ; preds = %63
  %94 = load ptr, ptr %59, align 8, !tbaa !190
  %95 = icmp eq ptr %49, %94
  br i1 %95, label %115, label %96, !prof !252

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.basic_block_def, ptr %49, i64 0, i32 9
  %98 = load i32, ptr %97, align 8, !tbaa !248
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, ptr %7, i64 %99
  %101 = load i32, ptr %100, align 4, !tbaa !218
  %102 = sext i32 %65 to i64
  %103 = getelementptr inbounds i32, ptr %7, i64 %102
  %104 = load i32, ptr %103, align 4, !tbaa !218
  %105 = icmp slt i32 %101, %104
  br i1 %105, label %115, label %106, !prof !253

106:                                              ; preds = %96
  %107 = getelementptr inbounds i32, ptr %14, i64 %102
  %108 = load i32, ptr %107, align 4, !tbaa !218
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %115, !prof !254

110:                                              ; preds = %106
  %111 = tail call fastcc ptr @ei_edge(i32 %45, ptr %47) #17
  %112 = getelementptr inbounds %struct.edge_def, ptr %111, i64 0, i32 7
  %113 = load i32, ptr %112, align 8, !tbaa !224
  %114 = or i32 %113, 32
  store i32 %114, ptr %112, align 8, !tbaa !224
  br label %115

115:                                              ; preds = %37, %110, %106, %96, %93
  %116 = phi i8 [ 1, %110 ], [ %41, %106 ], [ %41, %96 ], [ %41, %93 ], [ %41, %37 ]
  %117 = tail call fastcc zeroext i8 @ei_one_before_end_p(i32 %45, ptr %47) #17, !range !191
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %131, label %119, !prof !255

119:                                              ; preds = %115
  %120 = load ptr, ptr @cfun, align 8, !tbaa !180
  %121 = getelementptr inbounds %struct.function, ptr %120, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !184
  %123 = load ptr, ptr %122, align 8, !tbaa !190
  %124 = icmp eq ptr %49, %123
  br i1 %124, label %131, label %125, !prof !256

125:                                              ; preds = %119
  %126 = add nsw i32 %40, 1
  %127 = getelementptr inbounds %struct.basic_block_def, ptr %49, i64 0, i32 9
  %128 = load i32, ptr %127, align 8, !tbaa !248
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, ptr %14, i64 %129
  store i32 %40, ptr %130, align 4, !tbaa !218
  br label %131

131:                                              ; preds = %125, %119, %115
  %132 = phi i32 [ %126, %125 ], [ %40, %119 ], [ %40, %115 ]
  %133 = tail call fastcc zeroext i8 @ei_one_before_end_p(i32 %45, ptr %47) #17, !range !191
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %135, label %136, !prof !255

135:                                              ; preds = %131
  tail call fastcc void @ei_next(ptr noundef nonnull %44) #17
  br label %138

136:                                              ; preds = %131
  %137 = add nsw i32 %38, -1
  br label %138

138:                                              ; preds = %135, %136, %84, %88
  %139 = phi i8 [ %116, %136 ], [ %116, %135 ], [ %41, %84 ], [ %41, %88 ]
  %140 = phi i32 [ %132, %136 ], [ %132, %135 ], [ %40, %84 ], [ %89, %88 ]
  %141 = phi i32 [ %39, %136 ], [ %39, %135 ], [ %76, %84 ], [ %76, %88 ]
  %142 = phi i32 [ %137, %136 ], [ %38, %135 ], [ %85, %84 ], [ %38, %88 ]
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %37, !prof !257, !llvm.loop !258

144:                                              ; preds = %138
  tail call void @free(ptr noundef %7) #17
  tail call void @free(ptr noundef %14) #17
  tail call void @free(ptr noundef nonnull %23) #17
  %145 = load ptr, ptr %29, align 8, !tbaa !259
  tail call void @free(ptr noundef %145) #17
  tail call void @free(ptr noundef %29) #17
  ret i8 %139
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !261 !PGOFuncName !262 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !263

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #17
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #17
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #5 !prof !264 !PGOFuncName !265 {
  %3 = load ptr, ptr %0, align 8, !tbaa !259
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11, !prof !266

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
  %15 = load i64, ptr %14, align 8, !tbaa !249
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !193
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !193
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !249
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !249
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #6 !prof !267 !PGOFuncName !268 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !269

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !270
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_one_before_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !272 !PGOFuncName !273 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !274

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #17
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = add i32 %0, 1
  %10 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #17
  %11 = icmp eq i32 %9, %10
  %12 = zext i1 %11 to i8
  ret i8 %12
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_edge_can_fallthru_flag() local_unnamed_addr #0 !prof !275 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.edge_iterator, align 8
  %3 = load ptr, ptr @cfun, align 8, !tbaa !180
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !184
  %6 = load ptr, ptr %5, align 8, !tbaa !190
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !215
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !187
  %11 = icmp eq ptr %8, %10
  br i1 %11, label %76, label %12, !prof !276

12:                                               ; preds = %0
  %13 = getelementptr inbounds i8, ptr %2, i64 8
  br label %14

14:                                               ; preds = %12, %67
  %15 = phi ptr [ %8, %12 ], [ %69, %67 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #19
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 1
  %17 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %16) #17
  store i32 0, ptr %2, align 8, !tbaa.struct !217
  store ptr %17, ptr %13, align 8, !tbaa.struct !219
  %18 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %17, ptr noundef nonnull %1) #17, !range !191
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %32, label %20, !prof !277

20:                                               ; preds = %14, %20
  %21 = load ptr, ptr %1, align 8, !tbaa !180
  %22 = getelementptr inbounds %struct.edge_def, ptr %21, i64 0, i32 7
  %23 = load i32, ptr %22, align 8, !tbaa !224
  %24 = and i32 %23, -65
  %25 = shl i32 %23, 6
  %26 = and i32 %25, 64
  %27 = or disjoint i32 %24, %26
  store i32 %27, ptr %22, align 8, !tbaa !224
  call fastcc void @ei_next(ptr noundef nonnull %2) #17
  %28 = load i32, ptr %2, align 8
  %29 = load ptr, ptr %13, align 8
  %30 = call fastcc zeroext i8 @ei_cond(i32 %28, ptr %29, ptr noundef nonnull %1) #17, !range !191
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %20, !prof !278, !llvm.loop !279

32:                                               ; preds = %20, %14
  %33 = load ptr, ptr %16, align 8, !tbaa !206
  %34 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %33) #17
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %67, !prof !280

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 7
  %38 = load ptr, ptr %37, align 8, !tbaa !193
  %39 = getelementptr inbounds %struct.rtl_bb_info, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !194
  %41 = tail call i32 @any_condjump_p(ptr noundef %40) #18
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %67, label %43, !prof !281

43:                                               ; preds = %36
  %44 = load ptr, ptr %37, align 8, !tbaa !193
  %45 = getelementptr inbounds %struct.rtl_bb_info, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !194
  %47 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 1, i32 1, i32 0, i32 0, i64 2
  %48 = load ptr, ptr %47, align 8, !tbaa !193
  %49 = tail call i32 @invert_jump(ptr noundef %46, ptr noundef %48, i32 noundef 0) #18
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %67, label %51, !prof !281

51:                                               ; preds = %43
  %52 = load ptr, ptr %37, align 8, !tbaa !193
  %53 = getelementptr inbounds %struct.rtl_bb_info, ptr %52, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !194
  %55 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 1, i32 1, i32 0, i32 0, i64 2
  %56 = load ptr, ptr %55, align 8, !tbaa !193
  %57 = tail call i32 @invert_jump(ptr noundef %54, ptr noundef %56, i32 noundef 0) #18
  %58 = load ptr, ptr %16, align 8, !tbaa !206
  %59 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %58, i32 noundef 0) #17
  %60 = getelementptr inbounds %struct.edge_def, ptr %59, i64 0, i32 7
  %61 = load i32, ptr %60, align 8, !tbaa !224
  %62 = or i32 %61, 64
  store i32 %62, ptr %60, align 8, !tbaa !224
  %63 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %58, i32 noundef 1) #17
  %64 = getelementptr inbounds %struct.edge_def, ptr %63, i64 0, i32 7
  %65 = load i32, ptr %64, align 8, !tbaa !224
  %66 = or i32 %65, 64
  store i32 %66, ptr %64, align 8, !tbaa !224
  br label %67

67:                                               ; preds = %43, %36, %32, %51
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #19
  %68 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 6
  %69 = load ptr, ptr %68, align 8, !tbaa !215
  %70 = load ptr, ptr @cfun, align 8, !tbaa !180
  %71 = getelementptr inbounds %struct.function, ptr %70, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !184
  %73 = getelementptr inbounds %struct.control_flow_graph, ptr %72, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !187
  %75 = icmp eq ptr %69, %74
  br i1 %75, label %76, label %14, !prof !282, !llvm.loop !283

76:                                               ; preds = %67, %0
  ret void
}

; Function Attrs: optsize
declare i32 @any_condjump_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @invert_jump(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 !prof !284 !PGOFuncName !285 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !180
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @find_unreachable_blocks() local_unnamed_addr #0 !prof !286 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #19
  %3 = load ptr, ptr @cfun, align 8, !tbaa !180
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !184
  %6 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !245
  %8 = sext i32 %7 to i64
  %9 = shl nsw i64 %8, 3
  %10 = tail call ptr @xmalloc(i64 noundef %9) #18
  %11 = load ptr, ptr @cfun, align 8, !tbaa !180
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !184
  %14 = load ptr, ptr %13, align 8, !tbaa !190
  %15 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !187
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !215
  %19 = icmp eq ptr %18, %16
  br i1 %19, label %28, label %20, !prof !287

20:                                               ; preds = %0, %20
  %21 = phi ptr [ %26, %20 ], [ %18, %0 ]
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 13
  %23 = load i32, ptr %22, align 8, !tbaa !288
  %24 = and i32 %23, -3
  store i32 %24, ptr %22, align 8, !tbaa !288
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !215
  %27 = icmp eq ptr %26, %16
  br i1 %27, label %28, label %20, !prof !289, !llvm.loop !290

28:                                               ; preds = %20, %0
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 1
  %30 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %29) #17
  store i32 0, ptr %2, align 8, !tbaa.struct !217
  %31 = getelementptr inbounds i8, ptr %2, i64 8
  store ptr %30, ptr %31, align 8, !tbaa.struct !219
  %32 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %30, ptr noundef nonnull %1) #17, !range !191
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %76, label %34, !prof !287

34:                                               ; preds = %28, %34
  %35 = phi ptr [ %39, %34 ], [ %10, %28 ]
  %36 = load ptr, ptr %1, align 8, !tbaa !180
  %37 = getelementptr inbounds %struct.edge_def, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !221
  %39 = getelementptr inbounds ptr, ptr %35, i64 1
  store ptr %38, ptr %35, align 8, !tbaa !180
  %40 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 13
  %41 = load i32, ptr %40, align 8, !tbaa !288
  %42 = or i32 %41, 2
  store i32 %42, ptr %40, align 8, !tbaa !288
  call fastcc void @ei_next(ptr noundef nonnull %2) #17
  %43 = load i32, ptr %2, align 8
  %44 = load ptr, ptr %31, align 8
  %45 = call fastcc zeroext i8 @ei_cond(i32 %43, ptr %44, ptr noundef nonnull %1) #17, !range !191
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %50, label %34, !prof !291, !llvm.loop !292

47:                                               ; preds = %70, %50
  %48 = phi ptr [ %52, %50 ], [ %71, %70 ]
  %49 = icmp eq ptr %48, %10
  br i1 %49, label %76, label %50, !prof !293, !llvm.loop !294

50:                                               ; preds = %34, %47
  %51 = phi ptr [ %48, %47 ], [ %39, %34 ]
  %52 = getelementptr inbounds ptr, ptr %51, i64 -1
  %53 = load ptr, ptr %52, align 8, !tbaa !180
  %54 = getelementptr inbounds %struct.basic_block_def, ptr %53, i64 0, i32 1
  %55 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %54) #17
  store i32 0, ptr %2, align 8, !tbaa.struct !217
  store ptr %55, ptr %31, align 8, !tbaa.struct !219
  %56 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %55, ptr noundef nonnull %1) #17, !range !191
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %47, label %58, !prof !295

58:                                               ; preds = %50, %70
  %59 = phi ptr [ %71, %70 ], [ %52, %50 ]
  %60 = load ptr, ptr %1, align 8, !tbaa !180
  %61 = getelementptr inbounds %struct.edge_def, ptr %60, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !221
  %63 = getelementptr inbounds %struct.basic_block_def, ptr %62, i64 0, i32 13
  %64 = load i32, ptr %63, align 8, !tbaa !288
  %65 = and i32 %64, 2
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %70, !prof !296

67:                                               ; preds = %58
  %68 = getelementptr inbounds ptr, ptr %59, i64 1
  store ptr %62, ptr %59, align 8, !tbaa !180
  %69 = or disjoint i32 %64, 2
  store i32 %69, ptr %63, align 8, !tbaa !288
  br label %70

70:                                               ; preds = %67, %58
  %71 = phi ptr [ %59, %58 ], [ %68, %67 ]
  call fastcc void @ei_next(ptr noundef nonnull %2) #17
  %72 = load i32, ptr %2, align 8
  %73 = load ptr, ptr %31, align 8
  %74 = call fastcc zeroext i8 @ei_cond(i32 %72, ptr %73, ptr noundef nonnull %1) #17, !range !191
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %47, label %58, !prof !297, !llvm.loop !298

76:                                               ; preds = %47, %28
  tail call void @free(ptr noundef %10) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @create_edge_list() local_unnamed_addr #0 !prof !299 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #19
  %3 = load ptr, ptr @cfun, align 8, !tbaa !180
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !184
  %6 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !245
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !187
  %10 = load ptr, ptr %5, align 8, !tbaa !180
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %22, label %12, !prof !300

12:                                               ; preds = %0, %12
  %13 = phi ptr [ %20, %12 ], [ %10, %0 ]
  %14 = phi i32 [ %18, %12 ], [ 0, %0 ]
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !206
  %17 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %16) #17
  %18 = add i32 %17, %14
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !180
  %21 = icmp eq ptr %20, %9
  br i1 %21, label %22, label %12, !prof !301, !llvm.loop !302

22:                                               ; preds = %12, %0
  %23 = phi i32 [ 0, %0 ], [ %18, %12 ]
  %24 = tail call ptr @xmalloc(i64 noundef 16) #18
  store i32 %7, ptr %24, align 8, !tbaa !303
  %25 = getelementptr inbounds %struct.edge_list, ptr %24, i64 0, i32 1
  store i32 %23, ptr %25, align 4, !tbaa !305
  %26 = sext i32 %23 to i64
  %27 = shl nsw i64 %26, 3
  %28 = tail call ptr @xmalloc(i64 noundef %27) #18
  %29 = getelementptr inbounds %struct.edge_list, ptr %24, i64 0, i32 2
  store ptr %28, ptr %29, align 8, !tbaa !306
  %30 = load ptr, ptr @cfun, align 8, !tbaa !180
  %31 = getelementptr inbounds %struct.function, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !184
  %33 = load ptr, ptr %32, align 8, !tbaa !180
  %34 = getelementptr inbounds %struct.control_flow_graph, ptr %32, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !187
  %36 = icmp eq ptr %33, %35
  br i1 %36, label %70, label %37, !prof !300

37:                                               ; preds = %22
  %38 = getelementptr inbounds i8, ptr %2, i64 8
  br label %39

39:                                               ; preds = %37, %60
  %40 = phi ptr [ %33, %37 ], [ %63, %60 ]
  %41 = phi i32 [ 0, %37 ], [ %61, %60 ]
  %42 = getelementptr inbounds %struct.basic_block_def, ptr %40, i64 0, i32 1
  %43 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %42) #17
  store i32 0, ptr %2, align 8, !tbaa.struct !217
  store ptr %43, ptr %38, align 8, !tbaa.struct !219
  %44 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %43, ptr noundef nonnull %1) #17, !range !191
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %60, label %46, !prof !307

46:                                               ; preds = %39
  %47 = sext i32 %41 to i64
  br label %48

48:                                               ; preds = %46, %48
  %49 = phi i64 [ %47, %46 ], [ %52, %48 ]
  %50 = load ptr, ptr %1, align 8, !tbaa !180
  %51 = load ptr, ptr %29, align 8, !tbaa !306
  %52 = add i64 %49, 1
  %53 = getelementptr inbounds ptr, ptr %51, i64 %49
  store ptr %50, ptr %53, align 8, !tbaa !180
  call fastcc void @ei_next(ptr noundef nonnull %2) #17
  %54 = load i32, ptr %2, align 8
  %55 = load ptr, ptr %38, align 8
  %56 = call fastcc zeroext i8 @ei_cond(i32 %54, ptr %55, ptr noundef nonnull %1) #17, !range !191
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %48, !prof !308, !llvm.loop !309

58:                                               ; preds = %48
  %59 = trunc i64 %52 to i32
  br label %60

60:                                               ; preds = %58, %39
  %61 = phi i32 [ %41, %39 ], [ %59, %58 ]
  %62 = getelementptr inbounds %struct.basic_block_def, ptr %40, i64 0, i32 6
  %63 = load ptr, ptr %62, align 8, !tbaa !180
  %64 = load ptr, ptr @cfun, align 8, !tbaa !180
  %65 = getelementptr inbounds %struct.function, ptr %64, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !184
  %67 = getelementptr inbounds %struct.control_flow_graph, ptr %66, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !187
  %69 = icmp eq ptr %63, %68
  br i1 %69, label %70, label %39, !prof !301, !llvm.loop !310

70:                                               ; preds = %60, %22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #19
  ret ptr %24
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define dso_local void @free_edge_list(ptr noundef %0) local_unnamed_addr #8 !prof !311 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3, !prof !312

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.edge_list, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !306
  tail call void @free(ptr noundef %5) #17
  tail call void @free(ptr noundef nonnull %0) #17
  br label %6

6:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @print_edge_list(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 !prof !241 {
  %3 = load i32, ptr %1, align 8, !tbaa !303
  %4 = getelementptr inbounds %struct.edge_list, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !305
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %3, i32 noundef %5) #17
  %7 = load i32, ptr %4, align 4, !tbaa !305
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %53

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.edge_list, ptr %1, i64 0, i32 2
  br label %11

11:                                               ; preds = %9, %48
  %12 = phi i64 [ 0, %9 ], [ %49, %48 ]
  %13 = trunc i64 %12 to i32
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %13) #17
  %15 = load ptr, ptr %10, align 8, !tbaa !306
  %16 = getelementptr inbounds ptr, ptr %15, i64 %12
  %17 = load ptr, ptr %16, align 8, !tbaa !180
  %18 = load ptr, ptr %17, align 8, !tbaa !246
  %19 = load ptr, ptr @cfun, align 8, !tbaa !180
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !184
  %22 = load ptr, ptr %21, align 8, !tbaa !190
  %23 = icmp eq ptr %18, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %11
  %25 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 6, i64 1, ptr %0)
  br label %30

26:                                               ; preds = %11
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 9
  %28 = load i32, ptr %27, align 8, !tbaa !248
  %29 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef %28) #17
  br label %30

30:                                               ; preds = %26, %24
  %31 = load ptr, ptr %10, align 8, !tbaa !306
  %32 = getelementptr inbounds ptr, ptr %31, i64 %12
  %33 = load ptr, ptr %32, align 8, !tbaa !180
  %34 = getelementptr inbounds %struct.edge_def, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !221
  %36 = load ptr, ptr @cfun, align 8, !tbaa !180
  %37 = getelementptr inbounds %struct.function, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !184
  %39 = getelementptr inbounds %struct.control_flow_graph, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !187
  %41 = icmp eq ptr %35, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %30
  %43 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 6, i64 1, ptr %0)
  br label %48

44:                                               ; preds = %30
  %45 = getelementptr inbounds %struct.basic_block_def, ptr %35, i64 0, i32 9
  %46 = load i32, ptr %45, align 8, !tbaa !248
  %47 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %46) #17
  br label %48

48:                                               ; preds = %42, %44
  %49 = add nuw nsw i64 %12, 1
  %50 = load i32, ptr %4, align 4, !tbaa !305
  %51 = sext i32 %50 to i64
  %52 = icmp slt i64 %49, %51
  br i1 %52, label %11, label %53, !llvm.loop !313

53:                                               ; preds = %48, %2
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @verify_edge_list(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !241 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #19
  %5 = load ptr, ptr @cfun, align 8, !tbaa !180
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !184
  %8 = load ptr, ptr %7, align 8, !tbaa !180
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !187
  %11 = icmp eq ptr %8, %10
  br i1 %11, label %152, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds i8, ptr %4, i64 8
  %14 = getelementptr inbounds %struct.edge_list, ptr %1, i64 0, i32 2
  br label %20

15:                                               ; preds = %67
  %16 = load ptr, ptr %72, align 8, !tbaa !180
  %17 = icmp eq ptr %16, %69
  br i1 %17, label %152, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds i8, ptr %4, i64 8
  br label %76

20:                                               ; preds = %12, %67
  %21 = phi ptr [ %8, %12 ], [ %69, %67 ]
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 1
  %23 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %22) #17
  store i32 0, ptr %4, align 8, !tbaa.struct !217
  store ptr %23, ptr %13, align 8, !tbaa.struct !219
  %24 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %23, ptr noundef nonnull %3) #17, !range !191
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %67, label %26

26:                                               ; preds = %20, %62
  %27 = load ptr, ptr %3, align 8, !tbaa !180
  %28 = load ptr, ptr %27, align 8, !tbaa !246
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 9
  %30 = load i32, ptr %29, align 8, !tbaa !248
  %31 = getelementptr inbounds %struct.edge_def, ptr %27, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !221
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 9
  %34 = load i32, ptr %33, align 8, !tbaa !248
  %35 = tail call i32 @find_edge_index(ptr noundef %1, ptr noundef %28, ptr noundef %32) #17
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %39

37:                                               ; preds = %26
  %38 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %30, i32 noundef %34) #17
  br label %62

39:                                               ; preds = %26
  %40 = load ptr, ptr %14, align 8, !tbaa !306
  %41 = sext i32 %35 to i64
  %42 = getelementptr inbounds ptr, ptr %40, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !180
  %44 = load ptr, ptr %43, align 8, !tbaa !246
  %45 = getelementptr inbounds %struct.basic_block_def, ptr %44, i64 0, i32 9
  %46 = load i32, ptr %45, align 8, !tbaa !248
  %47 = icmp eq i32 %46, %30
  br i1 %47, label %53, label %48

48:                                               ; preds = %39
  %49 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %35, i32 noundef %30, i32 noundef %46) #17
  %50 = load ptr, ptr %14, align 8, !tbaa !306
  %51 = getelementptr inbounds ptr, ptr %50, i64 %41
  %52 = load ptr, ptr %51, align 8, !tbaa !180
  br label %53

53:                                               ; preds = %48, %39
  %54 = phi ptr [ %52, %48 ], [ %43, %39 ]
  %55 = getelementptr inbounds %struct.edge_def, ptr %54, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !221
  %57 = getelementptr inbounds %struct.basic_block_def, ptr %56, i64 0, i32 9
  %58 = load i32, ptr %57, align 8, !tbaa !248
  %59 = icmp eq i32 %58, %34
  br i1 %59, label %62, label %60

60:                                               ; preds = %53
  %61 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %35, i32 noundef %34, i32 noundef %58) #17
  br label %62

62:                                               ; preds = %53, %60, %37
  call fastcc void @ei_next(ptr noundef nonnull %4) #17
  %63 = load i32, ptr %4, align 8
  %64 = load ptr, ptr %13, align 8
  %65 = call fastcc zeroext i8 @ei_cond(i32 %63, ptr %64, ptr noundef nonnull %3) #17, !range !191
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %26, !llvm.loop !314

67:                                               ; preds = %62, %20
  %68 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 6
  %69 = load ptr, ptr %68, align 8, !tbaa !180
  %70 = load ptr, ptr @cfun, align 8, !tbaa !180
  %71 = getelementptr inbounds %struct.function, ptr %70, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !184
  %73 = getelementptr inbounds %struct.control_flow_graph, ptr %72, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !187
  %75 = icmp eq ptr %69, %74
  br i1 %75, label %15, label %20, !llvm.loop !315

76:                                               ; preds = %18, %143
  %77 = phi ptr [ %70, %18 ], [ %144, %143 ]
  %78 = phi ptr [ %72, %18 ], [ %148, %143 ]
  %79 = phi ptr [ %16, %18 ], [ %146, %143 ]
  %80 = load ptr, ptr %78, align 8, !tbaa !190
  %81 = getelementptr inbounds %struct.basic_block_def, ptr %80, i64 0, i32 6
  %82 = load ptr, ptr %81, align 8, !tbaa !215
  %83 = icmp eq ptr %82, null
  br i1 %83, label %143, label %84

84:                                               ; preds = %76
  %85 = getelementptr inbounds %struct.basic_block_def, ptr %79, i64 0, i32 1
  %86 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %85) #17
  %87 = getelementptr inbounds %struct.basic_block_def, ptr %79, i64 0, i32 9
  br label %88

88:                                               ; preds = %84, %137
  %89 = phi ptr [ %82, %84 ], [ %139, %137 ]
  store i32 0, ptr %4, align 8, !tbaa.struct !217
  store ptr %86, ptr %19, align 8, !tbaa.struct !219
  %90 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %86, ptr noundef nonnull %3) #17, !range !191
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %102, label %92

92:                                               ; preds = %88, %97
  %93 = load ptr, ptr %3, align 8, !tbaa !180
  %94 = getelementptr inbounds %struct.edge_def, ptr %93, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !221
  %96 = icmp eq ptr %95, %89
  br i1 %96, label %102, label %97

97:                                               ; preds = %92
  call fastcc void @ei_next(ptr noundef nonnull %4) #17
  %98 = load i32, ptr %4, align 8
  %99 = load ptr, ptr %19, align 8
  %100 = call fastcc zeroext i8 @ei_cond(i32 %98, ptr %99, ptr noundef nonnull %3) #17, !range !191
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %102, label %92, !llvm.loop !316

102:                                              ; preds = %97, %92, %88
  %103 = phi i32 [ 0, %88 ], [ 1, %92 ], [ 0, %97 ]
  %104 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %89) #17
  store i32 0, ptr %4, align 8, !tbaa.struct !217
  store ptr %104, ptr %19, align 8, !tbaa.struct !219
  %105 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %104, ptr noundef nonnull %3) #17, !range !191
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %116, label %107

107:                                              ; preds = %102, %111
  %108 = load ptr, ptr %3, align 8, !tbaa !180
  %109 = load ptr, ptr %108, align 8, !tbaa !246
  %110 = icmp eq ptr %109, %79
  br i1 %110, label %116, label %111

111:                                              ; preds = %107
  call fastcc void @ei_next(ptr noundef nonnull %4) #17
  %112 = load i32, ptr %4, align 8
  %113 = load ptr, ptr %19, align 8
  %114 = call fastcc zeroext i8 @ei_cond(i32 %112, ptr %113, ptr noundef nonnull %3) #17, !range !191
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %116, label %107, !llvm.loop !317

116:                                              ; preds = %111, %107, %102
  %117 = phi i32 [ %103, %102 ], [ 1, %107 ], [ %103, %111 ]
  %118 = tail call i32 @find_edge_index(ptr noundef %1, ptr noundef %79, ptr noundef nonnull %89) #17
  %119 = icmp eq i32 %118, -1
  %120 = icmp ne i32 %117, 0
  %121 = and i1 %120, %119
  br i1 %121, label %122, label %127

122:                                              ; preds = %116
  %123 = load i32, ptr %87, align 8, !tbaa !248
  %124 = getelementptr inbounds %struct.basic_block_def, ptr %89, i64 0, i32 9
  %125 = load i32, ptr %124, align 8, !tbaa !248
  %126 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %123, i32 noundef %125) #17
  br label %127

127:                                              ; preds = %122, %116
  %128 = tail call i32 @find_edge_index(ptr noundef %1, ptr noundef %79, ptr noundef nonnull %89) #17
  %129 = icmp ne i32 %128, -1
  %130 = icmp eq i32 %117, 0
  %131 = and i1 %130, %129
  br i1 %131, label %132, label %137

132:                                              ; preds = %127
  %133 = load i32, ptr %87, align 8, !tbaa !248
  %134 = getelementptr inbounds %struct.basic_block_def, ptr %89, i64 0, i32 9
  %135 = load i32, ptr %134, align 8, !tbaa !248
  %136 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %133, i32 noundef %135, i32 noundef %128) #17
  br label %137

137:                                              ; preds = %132, %127
  %138 = getelementptr inbounds %struct.basic_block_def, ptr %89, i64 0, i32 6
  %139 = load ptr, ptr %138, align 8, !tbaa !215
  %140 = icmp eq ptr %139, null
  br i1 %140, label %141, label %88, !llvm.loop !318

141:                                              ; preds = %137
  %142 = load ptr, ptr @cfun, align 8, !tbaa !180
  br label %143

143:                                              ; preds = %141, %76
  %144 = phi ptr [ %142, %141 ], [ %77, %76 ]
  %145 = getelementptr inbounds %struct.basic_block_def, ptr %79, i64 0, i32 6
  %146 = load ptr, ptr %145, align 8, !tbaa !180
  %147 = getelementptr inbounds %struct.function, ptr %144, i64 0, i32 1
  %148 = load ptr, ptr %147, align 8, !tbaa !184
  %149 = getelementptr inbounds %struct.control_flow_graph, ptr %148, i64 0, i32 1
  %150 = load ptr, ptr %149, align 8, !tbaa !187
  %151 = icmp eq ptr %146, %150
  br i1 %151, label %152, label %76, !llvm.loop !319

152:                                              ; preds = %143, %2, %15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @find_edge_index(ptr nocapture noundef readonly %0, ptr noundef readnone %1, ptr noundef readnone %2) local_unnamed_addr #11 !prof !241 {
  %4 = getelementptr inbounds %struct.edge_list, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !305
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %26

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.edge_list, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !306
  %10 = zext nneg i32 %5 to i64
  br label %11

11:                                               ; preds = %7, %21
  %12 = phi i64 [ 0, %7 ], [ %22, %21 ]
  %13 = getelementptr inbounds ptr, ptr %9, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !180
  %15 = load ptr, ptr %14, align 8, !tbaa !246
  %16 = icmp eq ptr %15, %1
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.edge_def, ptr %14, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !221
  %20 = icmp eq ptr %19, %2
  br i1 %20, label %24, label %21

21:                                               ; preds = %11, %17
  %22 = add nuw nsw i64 %12, 1
  %23 = icmp eq i64 %22, %10
  br i1 %23, label %26, label %11, !llvm.loop !320

24:                                               ; preds = %17
  %25 = trunc i64 %12 to i32
  br label %26

26:                                               ; preds = %21, %24, %3
  %27 = phi i32 [ -1, %3 ], [ %25, %24 ], [ -1, %21 ]
  ret i32 %27
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @find_edge(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !321 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #19
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !206
  %7 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %6) #17
  %8 = load ptr, ptr %1, align 8, !tbaa !322
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #17
  %10 = icmp ugt i32 %7, %9
  store i32 0, ptr %4, align 8
  %11 = getelementptr inbounds i8, ptr %4, i64 8
  br i1 %10, label %26, label %12, !prof !323

12:                                               ; preds = %2
  %13 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %5) #17
  store ptr %13, ptr %11, align 8, !tbaa.struct !219
  %14 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %13, ptr noundef nonnull %3) #17, !range !191
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %39, label %16, !prof !324

16:                                               ; preds = %12, %21
  %17 = load ptr, ptr %3, align 8, !tbaa !180
  %18 = getelementptr inbounds %struct.edge_def, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !221
  %20 = icmp eq ptr %19, %1
  br i1 %20, label %39, label %21, !prof !325

21:                                               ; preds = %16
  call fastcc void @ei_next(ptr noundef nonnull %4) #17
  %22 = load i32, ptr %4, align 8
  %23 = load ptr, ptr %11, align 8
  %24 = call fastcc zeroext i8 @ei_cond(i32 %22, ptr %23, ptr noundef nonnull %3) #17, !range !191
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %39, label %16, !prof !326, !llvm.loop !327

26:                                               ; preds = %2
  %27 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %1) #17
  store ptr %27, ptr %11, align 8, !tbaa.struct !219
  %28 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %27, ptr noundef nonnull %3) #17, !range !191
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %39, label %30, !prof !328

30:                                               ; preds = %26, %34
  %31 = load ptr, ptr %3, align 8, !tbaa !180
  %32 = load ptr, ptr %31, align 8, !tbaa !246
  %33 = icmp eq ptr %32, %0
  br i1 %33, label %39, label %34, !prof !329

34:                                               ; preds = %30
  call fastcc void @ei_next(ptr noundef nonnull %4) #17
  %35 = load i32, ptr %4, align 8
  %36 = load ptr, ptr %11, align 8
  %37 = call fastcc zeroext i8 @ei_cond(i32 %35, ptr %36, ptr noundef nonnull %3) #17, !range !191
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %30, !prof !330, !llvm.loop !331

39:                                               ; preds = %16, %21, %30, %34, %12, %26
  %40 = phi ptr [ null, %26 ], [ null, %12 ], [ %31, %30 ], [ null, %34 ], [ %17, %16 ], [ null, %21 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  ret ptr %40
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @flow_nodes_print(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #9 !prof !241 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sbitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  store i32 0, ptr %4, align 4, !tbaa !218
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  %6 = icmp eq ptr %1, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %3
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.11, ptr noundef %0) #17
  call fastcc void @sbitmap_iter_init(ptr noundef nonnull %5, ptr noundef nonnull %1) #17
  %9 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %5, ptr noundef nonnull %4) #17, !range !191
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %7, %11
  %12 = load i32, ptr %4, align 4, !tbaa !218
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef %12) #17
  call fastcc void @sbitmap_iter_next(ptr noundef nonnull %5) #17
  %14 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %5, ptr noundef nonnull %4) #17, !range !191
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %11, !llvm.loop !332

16:                                               ; preds = %11, %7
  %17 = tail call i32 @fputs(ptr noundef nonnull @.str.13, ptr noundef %2) #17
  br label %18

18:                                               ; preds = %3, %16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sbitmap_iter_init(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #12 !prof !241 !PGOFuncName !333 {
  %3 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %3, align 4, !tbaa !334
  %4 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 3
  store i32 0, ptr %4, align 8, !tbaa !336
  %5 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !337
  %7 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 1
  store i32 %6, ptr %7, align 8, !tbaa !338
  %8 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3
  store ptr %8, ptr %0, align 8, !tbaa !339
  %9 = icmp eq i32 %6, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = load i64, ptr %8, align 8, !tbaa !249
  br label %12

12:                                               ; preds = %2, %10
  %13 = phi i64 [ %11, %10 ], [ 0, %2 ]
  %14 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 4
  store i64 %13, ptr %14, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @sbitmap_iter_cond(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #13 !prof !241 !PGOFuncName !340 {
  %3 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 4
  %4 = load i64, ptr %3, align 8, !tbaa !341
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !338
  %10 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 3
  %11 = load i32, ptr %7, align 4, !tbaa !334
  br label %19

12:                                               ; preds = %23
  store i32 %21, ptr %7, align 4, !tbaa !334
  br label %13

13:                                               ; preds = %12, %2
  %14 = phi i64 [ %28, %12 ], [ %4, %2 ]
  %15 = and i64 %14, 1
  %16 = icmp eq i64 %15, 0
  %17 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !336
  br i1 %16, label %30, label %38

19:                                               ; preds = %6, %23
  %20 = phi i32 [ %11, %6 ], [ %21, %23 ]
  %21 = add i32 %20, 1
  %22 = icmp ult i32 %21, %9
  br i1 %22, label %23, label %40

23:                                               ; preds = %19
  %24 = shl i32 %21, 6
  store i32 %24, ptr %10, align 8, !tbaa !336
  %25 = load ptr, ptr %0, align 8, !tbaa !339
  %26 = zext i32 %21 to i64
  %27 = getelementptr inbounds i64, ptr %25, i64 %26
  %28 = load i64, ptr %27, align 8, !tbaa !249
  store i64 %28, ptr %3, align 8, !tbaa !341
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %19, label %12, !llvm.loop !342

30:                                               ; preds = %13, %30
  %31 = phi i32 [ %33, %30 ], [ %18, %13 ]
  %32 = phi i64 [ %34, %30 ], [ %14, %13 ]
  %33 = add i32 %31, 1
  %34 = lshr exact i64 %32, 1
  %35 = and i64 %32, 2
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %30, label %37, !llvm.loop !343

37:                                               ; preds = %30
  store i32 %33, ptr %17, align 8, !tbaa !336
  store i64 %34, ptr %3, align 8, !tbaa !341
  br label %38

38:                                               ; preds = %13, %37
  %39 = phi i32 [ %33, %37 ], [ %18, %13 ]
  store i32 %39, ptr %1, align 4, !tbaa !218
  br label %41

40:                                               ; preds = %19
  store i32 %21, ptr %7, align 4, !tbaa !334
  br label %41

41:                                               ; preds = %40, %38
  %42 = phi i8 [ 1, %38 ], [ 0, %40 ]
  ret i8 %42
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sbitmap_iter_next(ptr nocapture noundef %0) unnamed_addr #12 !prof !241 !PGOFuncName !344 {
  %2 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 4
  %3 = load i64, ptr %2, align 8, !tbaa !341
  %4 = lshr i64 %3, 1
  store i64 %4, ptr %2, align 8, !tbaa !341
  %5 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !336
  %7 = add i32 %6, 1
  store i32 %7, ptr %5, align 8, !tbaa !336
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @flow_edge_list_print(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, ptr nocapture noundef %3) local_unnamed_addr #9 !prof !241 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %27, label %6

6:                                                ; preds = %4
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.11, ptr noundef %0) #17
  %8 = icmp sgt i32 %2, 0
  br i1 %8, label %9, label %25

9:                                                ; preds = %6
  %10 = zext nneg i32 %2 to i64
  br label %11

11:                                               ; preds = %9, %11
  %12 = phi i64 [ 0, %9 ], [ %23, %11 ]
  %13 = getelementptr inbounds ptr, ptr %1, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !180
  %15 = load ptr, ptr %14, align 8, !tbaa !246
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 9
  %17 = load i32, ptr %16, align 8, !tbaa !248
  %18 = getelementptr inbounds %struct.edge_def, ptr %14, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !221
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 9
  %21 = load i32, ptr %20, align 8, !tbaa !248
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.14, i32 noundef %17, i32 noundef %21) #17
  %23 = add nuw nsw i64 %12, 1
  %24 = icmp eq i64 %23, %10
  br i1 %24, label %25, label %11, !llvm.loop !345

25:                                               ; preds = %11, %6
  %26 = tail call i32 @fputs(ptr noundef nonnull @.str.13, ptr noundef %3) #17
  br label %27

27:                                               ; preds = %4, %25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @remove_fake_edges() local_unnamed_addr #0 !prof !241 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !180
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !184
  %4 = load ptr, ptr %3, align 8, !tbaa !190
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !215
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %0, %8
  %9 = phi ptr [ %11, %8 ], [ %6, %0 ]
  tail call fastcc void @remove_fake_predecessors(ptr noundef nonnull %9) #17
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !215
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %8, !llvm.loop !346

13:                                               ; preds = %8, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_fake_predecessors(ptr noundef %0) unnamed_addr #0 !prof !311 !PGOFuncName !347 {
  %2 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #19
  %3 = tail call fastcc ptr @ei_start_1(ptr noundef %0) #17
  store i32 0, ptr %2, align 8, !tbaa.struct !217
  %4 = getelementptr inbounds i8, ptr %2, i64 8
  store ptr %3, ptr %4, align 8, !tbaa.struct !219
  %5 = tail call fastcc ptr @ei_safe_edge(i32 0, ptr %3) #17
  %6 = icmp eq ptr %5, null
  br i1 %6, label %24, label %7, !prof !348

7:                                                ; preds = %1, %19
  %8 = phi ptr [ %20, %19 ], [ %3, %1 ]
  %9 = phi i32 [ %21, %19 ], [ 0, %1 ]
  %10 = phi ptr [ %22, %19 ], [ %5, %1 ]
  %11 = getelementptr inbounds %struct.edge_def, ptr %10, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !224
  %13 = and i32 %12, 16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15, !prof !349

15:                                               ; preds = %7
  tail call void @remove_edge(ptr noundef nonnull %10) #18
  br label %19

16:                                               ; preds = %7
  call fastcc void @ei_next(ptr noundef nonnull %2) #17
  %17 = load i32, ptr %2, align 8
  %18 = load ptr, ptr %4, align 8
  br label %19

19:                                               ; preds = %16, %15
  %20 = phi ptr [ %18, %16 ], [ %8, %15 ]
  %21 = phi i32 [ %17, %16 ], [ %9, %15 ]
  %22 = tail call fastcc ptr @ei_safe_edge(i32 %21, ptr %20) #17
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %7, !prof !350, !llvm.loop !351

24:                                               ; preds = %19, %1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @remove_fake_exit_edges() local_unnamed_addr #0 !prof !311 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !180
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !184
  %4 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !187
  tail call fastcc void @remove_fake_predecessors(ptr noundef %5) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @add_noreturn_fake_exit_edges() local_unnamed_addr #0 !prof !352 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !180
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !184
  %4 = load ptr, ptr %3, align 8, !tbaa !190
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !215
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !187
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %30, label %10, !prof !353

10:                                               ; preds = %0, %21
  %11 = phi ptr [ %22, %21 ], [ %1, %0 ]
  %12 = phi ptr [ %28, %21 ], [ %8, %0 ]
  %13 = phi ptr [ %24, %21 ], [ %6, %0 ]
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !206
  %16 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %15) #17
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21, !prof !354

18:                                               ; preds = %10
  %19 = tail call ptr @make_single_succ_edge(ptr noundef nonnull %13, ptr noundef %12, i32 noundef 16) #18
  %20 = load ptr, ptr @cfun, align 8, !tbaa !180
  br label %21

21:                                               ; preds = %10, %18
  %22 = phi ptr [ %11, %10 ], [ %20, %18 ]
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !215
  %25 = getelementptr inbounds %struct.function, ptr %22, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !184
  %27 = getelementptr inbounds %struct.control_flow_graph, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !187
  %29 = icmp eq ptr %24, %28
  br i1 %29, label %30, label %10, !prof !355, !llvm.loop !356

30:                                               ; preds = %21, %0
  ret void
}

; Function Attrs: optsize
declare ptr @make_single_succ_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @connect_infinite_loops_to_exit() local_unnamed_addr #0 !prof !357 {
  %1 = alloca %struct.depth_first_search_dsS, align 8
  %2 = load ptr, ptr @cfun, align 8, !tbaa !180
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !184
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !187
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #19
  call fastcc void @flow_dfs_compute_reverse_init(ptr noundef nonnull %1) #17
  %7 = load ptr, ptr @cfun, align 8, !tbaa !180
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !184
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !187
  call fastcc void @flow_dfs_compute_reverse_add_bb(ptr noundef nonnull %1, ptr noundef %11) #17
  %12 = call fastcc ptr @flow_dfs_compute_reverse_execute(ptr noundef nonnull %1, ptr noundef %6) #17
  %13 = icmp eq ptr %12, null
  br i1 %13, label %24, label %14, !prof !358

14:                                               ; preds = %0, %14
  %15 = phi ptr [ %22, %14 ], [ %12, %0 ]
  %16 = load ptr, ptr @cfun, align 8, !tbaa !180
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !184
  %19 = getelementptr inbounds %struct.control_flow_graph, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !187
  %21 = tail call ptr @make_edge(ptr noundef nonnull %15, ptr noundef %20, i32 noundef 16) #18
  call fastcc void @flow_dfs_compute_reverse_add_bb(ptr noundef nonnull %1, ptr noundef nonnull %15) #17
  %22 = call fastcc ptr @flow_dfs_compute_reverse_execute(ptr noundef nonnull %1, ptr noundef nonnull %15) #17
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %14, !prof !359

24:                                               ; preds = %14, %0
  call fastcc void @flow_dfs_compute_reverse_finish(ptr noundef nonnull %1) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @flow_dfs_compute_reverse_init(ptr nocapture noundef writeonly %0) unnamed_addr #0 !prof !357 !PGOFuncName !360 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !180
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !184
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !245
  %7 = sext i32 %6 to i64
  %8 = shl nsw i64 %7, 3
  %9 = tail call ptr @xmalloc(i64 noundef %8) #18
  store ptr %9, ptr %0, align 8, !tbaa !361
  %10 = getelementptr inbounds %struct.depth_first_search_dsS, ptr %0, i64 0, i32 1
  store i32 0, ptr %10, align 8, !tbaa !363
  %11 = load ptr, ptr @cfun, align 8, !tbaa !180
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !184
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !244
  %16 = tail call ptr @sbitmap_alloc(i32 noundef %15) #18
  %17 = getelementptr inbounds %struct.depth_first_search_dsS, ptr %0, i64 0, i32 2
  store ptr %16, ptr %17, align 8, !tbaa !364
  tail call void @sbitmap_zero(ptr noundef %16) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @flow_dfs_compute_reverse_add_bb(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #5 !prof !365 !PGOFuncName !366 {
  %3 = load ptr, ptr %0, align 8, !tbaa !361
  %4 = getelementptr inbounds %struct.depth_first_search_dsS, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !363
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 8, !tbaa !363
  %7 = zext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %3, i64 %7
  store ptr %1, ptr %8, align 8, !tbaa !180
  %9 = getelementptr inbounds %struct.depth_first_search_dsS, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !364
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !248
  tail call fastcc void @SET_BIT(ptr noundef %10, i32 noundef %12) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @flow_dfs_compute_reverse_execute(ptr nocapture noundef %0, ptr noundef readonly %1) unnamed_addr #0 !prof !367 !PGOFuncName !368 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #19
  %5 = getelementptr inbounds %struct.depth_first_search_dsS, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !363
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %14, label %8, !prof !369

8:                                                ; preds = %2
  %9 = getelementptr inbounds i8, ptr %4, i64 8
  %10 = getelementptr inbounds %struct.depth_first_search_dsS, ptr %0, i64 0, i32 2
  br label %19

11:                                               ; preds = %45, %19
  %12 = load i32, ptr %5, align 8, !tbaa !363
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19, !prof !370, !llvm.loop !371

14:                                               ; preds = %11, %2
  %15 = icmp eq ptr %1, null
  br i1 %15, label %67, label %16, !prof !372

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.depth_first_search_dsS, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !364
  br label %50

19:                                               ; preds = %8, %11
  %20 = phi i32 [ %6, %8 ], [ %12, %11 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !361
  %22 = add i32 %20, -1
  store i32 %22, ptr %5, align 8, !tbaa !363
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds ptr, ptr %21, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !180
  %26 = tail call fastcc ptr @ei_start_1(ptr noundef %25) #17
  store i32 0, ptr %4, align 8, !tbaa.struct !217
  store ptr %26, ptr %9, align 8, !tbaa.struct !219
  %27 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %26, ptr noundef nonnull %3) #17, !range !191
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %11, label %29, !prof !373

29:                                               ; preds = %19, %45
  %30 = load ptr, ptr %10, align 8, !tbaa !364
  %31 = load ptr, ptr %3, align 8, !tbaa !180
  %32 = load ptr, ptr %31, align 8, !tbaa !246
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 9
  %34 = load i32, ptr %33, align 8, !tbaa !248
  %35 = lshr i32 %34, 6
  %36 = zext nneg i32 %35 to i64
  %37 = getelementptr inbounds %struct.simple_bitmap_def, ptr %30, i64 0, i32 3, i64 %36
  %38 = load i64, ptr %37, align 8, !tbaa !249
  %39 = and i32 %34, 63
  %40 = zext nneg i32 %39 to i64
  %41 = shl nuw i64 1, %40
  %42 = and i64 %41, %38
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45, !prof !374

44:                                               ; preds = %29
  tail call fastcc void @flow_dfs_compute_reverse_add_bb(ptr noundef nonnull %0, ptr noundef nonnull %32) #17
  br label %45

45:                                               ; preds = %29, %44
  call fastcc void @ei_next(ptr noundef nonnull %4) #17
  %46 = load i32, ptr %4, align 8
  %47 = load ptr, ptr %9, align 8
  %48 = call fastcc zeroext i8 @ei_cond(i32 %46, ptr %47, ptr noundef nonnull %3) #17, !range !191
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %11, label %29, !prof !375, !llvm.loop !376

50:                                               ; preds = %16, %63
  %51 = phi ptr [ %1, %16 ], [ %65, %63 ]
  %52 = getelementptr inbounds %struct.basic_block_def, ptr %51, i64 0, i32 9
  %53 = load i32, ptr %52, align 8, !tbaa !248
  %54 = lshr i32 %53, 6
  %55 = zext nneg i32 %54 to i64
  %56 = getelementptr inbounds %struct.simple_bitmap_def, ptr %18, i64 0, i32 3, i64 %55
  %57 = load i64, ptr %56, align 8, !tbaa !249
  %58 = and i32 %53, 63
  %59 = zext nneg i32 %58 to i64
  %60 = shl nuw i64 1, %59
  %61 = and i64 %60, %57
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %67, label %63, !prof !377

63:                                               ; preds = %50
  %64 = getelementptr inbounds %struct.basic_block_def, ptr %51, i64 0, i32 5
  %65 = load ptr, ptr %64, align 8, !tbaa !378
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %50, !prof !379, !llvm.loop !380

67:                                               ; preds = %50, %63, %14
  %68 = phi ptr [ null, %14 ], [ null, %63 ], [ %51, %50 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  ret ptr %68
}

; Function Attrs: optsize
declare ptr @make_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @flow_dfs_compute_reverse_finish(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !357 !PGOFuncName !381 {
  %2 = load ptr, ptr %0, align 8, !tbaa !361
  tail call void @free(ptr noundef %2) #17
  %3 = getelementptr inbounds %struct.depth_first_search_dsS, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !364
  %5 = load ptr, ptr %4, align 8, !tbaa !259
  tail call void @free(ptr noundef %5) #17
  %6 = load ptr, ptr %3, align 8, !tbaa !364
  tail call void @free(ptr noundef %6) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @post_order_compute(ptr nocapture noundef writeonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #0 !prof !382 {
  %4 = icmp eq i8 %1, 0
  br i1 %4, label %6, label %5, !prof !383

5:                                                ; preds = %3
  store i32 1, ptr %0, align 4, !tbaa !218
  br label %6

6:                                                ; preds = %5, %3
  %7 = phi i32 [ 1, %5 ], [ 0, %3 ]
  %8 = load ptr, ptr @cfun, align 8, !tbaa !180
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !184
  %11 = getelementptr inbounds %struct.control_flow_graph, ptr %10, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !245
  %13 = add nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = shl nsw i64 %14, 4
  %16 = tail call ptr @xmalloc(i64 noundef %15) #18
  %17 = load ptr, ptr @cfun, align 8, !tbaa !180
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !184
  %20 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 5
  %21 = load i32, ptr %20, align 8, !tbaa !244
  %22 = tail call ptr @sbitmap_alloc(i32 noundef %21) #18
  tail call void @sbitmap_zero(ptr noundef %22) #18
  %23 = load ptr, ptr @cfun, align 8, !tbaa !180
  %24 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !184
  %26 = load ptr, ptr %25, align 8, !tbaa !190
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 1
  %28 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %27) #17
  store i32 0, ptr %16, align 8, !tbaa.struct !217
  %29 = getelementptr inbounds i8, ptr %16, i64 8
  store ptr %28, ptr %29, align 8, !tbaa.struct !219
  br label %30

30:                                               ; preds = %6, %98
  %31 = phi i32 [ 1, %6 ], [ %100, %98 ]
  %32 = phi i32 [ %7, %6 ], [ %99, %98 ]
  %33 = sext i32 %31 to i64
  %34 = getelementptr %struct.edge_iterator, ptr %16, i64 %33
  %35 = getelementptr %struct.edge_iterator, ptr %34, i64 -1
  %36 = load i32, ptr %35, align 8, !tbaa.struct !217
  %37 = getelementptr %struct.edge_iterator, ptr %34, i64 -1, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa.struct !219
  %39 = tail call fastcc ptr @ei_edge(i32 %36, ptr %38) #17
  %40 = load ptr, ptr %39, align 8, !tbaa !246
  %41 = tail call fastcc ptr @ei_edge(i32 %36, ptr %38) #17
  %42 = getelementptr inbounds %struct.edge_def, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !221
  %44 = load ptr, ptr @cfun, align 8, !tbaa !180
  %45 = getelementptr inbounds %struct.function, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !184
  %47 = getelementptr inbounds %struct.control_flow_graph, ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !187
  %49 = icmp eq ptr %43, %48
  br i1 %49, label %76, label %50, !prof !384

50:                                               ; preds = %30
  %51 = getelementptr inbounds %struct.basic_block_def, ptr %43, i64 0, i32 9
  %52 = load i32, ptr %51, align 8, !tbaa !248
  %53 = lshr i32 %52, 6
  %54 = zext nneg i32 %53 to i64
  %55 = getelementptr inbounds %struct.simple_bitmap_def, ptr %22, i64 0, i32 3, i64 %54
  %56 = load i64, ptr %55, align 8, !tbaa !249
  %57 = and i32 %52, 63
  %58 = zext nneg i32 %57 to i64
  %59 = shl nuw i64 1, %58
  %60 = and i64 %59, %56
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %76, !prof !385

62:                                               ; preds = %50
  tail call fastcc void @SET_BIT(ptr noundef nonnull %22, i32 noundef %52) #17
  %63 = getelementptr inbounds %struct.basic_block_def, ptr %43, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !206
  %65 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %64) #17
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %71, label %67, !prof !386

67:                                               ; preds = %62
  %68 = add nsw i32 %31, 1
  %69 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %63) #17
  store i32 0, ptr %34, align 8, !tbaa.struct !217
  %70 = getelementptr inbounds i8, ptr %34, i64 8
  store ptr %69, ptr %70, align 8, !tbaa.struct !219
  br label %98

71:                                               ; preds = %62
  %72 = load i32, ptr %51, align 8, !tbaa !248
  %73 = add nsw i32 %32, 1
  %74 = sext i32 %32 to i64
  %75 = getelementptr inbounds i32, ptr %0, i64 %74
  store i32 %72, ptr %75, align 4, !tbaa !218
  br label %98

76:                                               ; preds = %50, %30
  %77 = tail call fastcc zeroext i8 @ei_one_before_end_p(i32 %36, ptr %38) #17, !range !191
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %91, label %79, !prof !387

79:                                               ; preds = %76
  %80 = load ptr, ptr @cfun, align 8, !tbaa !180
  %81 = getelementptr inbounds %struct.function, ptr %80, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !184
  %83 = load ptr, ptr %82, align 8, !tbaa !190
  %84 = icmp eq ptr %40, %83
  br i1 %84, label %91, label %85, !prof !388

85:                                               ; preds = %79
  %86 = getelementptr inbounds %struct.basic_block_def, ptr %40, i64 0, i32 9
  %87 = load i32, ptr %86, align 8, !tbaa !248
  %88 = add nsw i32 %32, 1
  %89 = sext i32 %32 to i64
  %90 = getelementptr inbounds i32, ptr %0, i64 %89
  store i32 %87, ptr %90, align 4, !tbaa !218
  br label %91

91:                                               ; preds = %85, %79, %76
  %92 = phi i32 [ %88, %85 ], [ %32, %79 ], [ %32, %76 ]
  %93 = tail call fastcc zeroext i8 @ei_one_before_end_p(i32 %36, ptr %38) #17, !range !191
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %95, label %96, !prof !387

95:                                               ; preds = %91
  tail call fastcc void @ei_next(ptr noundef nonnull %35) #17
  br label %98

96:                                               ; preds = %91
  %97 = add nsw i32 %31, -1
  br label %98

98:                                               ; preds = %95, %96, %67, %71
  %99 = phi i32 [ %92, %96 ], [ %92, %95 ], [ %32, %67 ], [ %73, %71 ]
  %100 = phi i32 [ %97, %96 ], [ %31, %95 ], [ %68, %67 ], [ %31, %71 ]
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %30, !prof !389, !llvm.loop !390

102:                                              ; preds = %98
  br i1 %4, label %107, label %103, !prof !383

103:                                              ; preds = %102
  %104 = add nsw i32 %99, 1
  %105 = sext i32 %99 to i64
  %106 = getelementptr inbounds i32, ptr %0, i64 %105
  store i32 0, ptr %106, align 4, !tbaa !218
  br label %109

107:                                              ; preds = %102
  %108 = add nsw i32 %99, 2
  br label %109

109:                                              ; preds = %107, %103
  %110 = phi i32 [ %104, %103 ], [ %108, %107 ]
  %111 = phi i32 [ %104, %103 ], [ %99, %107 ]
  %112 = icmp eq i8 %2, 0
  br i1 %112, label %153, label %113, !prof !383

113:                                              ; preds = %109
  %114 = load ptr, ptr @cfun, align 8, !tbaa !180
  %115 = getelementptr inbounds %struct.function, ptr %114, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !184
  %117 = getelementptr inbounds %struct.control_flow_graph, ptr %116, i64 0, i32 3
  %118 = load i32, ptr %117, align 8, !tbaa !245
  %119 = icmp eq i32 %110, %118
  br i1 %119, label %153, label %120, !prof !391

120:                                              ; preds = %113
  %121 = load ptr, ptr %116, align 8, !tbaa !190
  %122 = getelementptr inbounds %struct.basic_block_def, ptr %121, i64 0, i32 6
  %123 = load ptr, ptr %122, align 8, !tbaa !215
  %124 = getelementptr inbounds %struct.control_flow_graph, ptr %116, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !187
  %126 = icmp eq ptr %123, %125
  br i1 %126, label %152, label %127

127:                                              ; preds = %120, %145
  %128 = phi ptr [ %146, %145 ], [ %114, %120 ]
  %129 = phi ptr [ %131, %145 ], [ %123, %120 ]
  %130 = getelementptr inbounds %struct.basic_block_def, ptr %129, i64 0, i32 6
  %131 = load ptr, ptr %130, align 8, !tbaa !215
  %132 = getelementptr inbounds %struct.basic_block_def, ptr %129, i64 0, i32 9
  %133 = load i32, ptr %132, align 8, !tbaa !248
  %134 = lshr i32 %133, 6
  %135 = zext nneg i32 %134 to i64
  %136 = getelementptr inbounds %struct.simple_bitmap_def, ptr %22, i64 0, i32 3, i64 %135
  %137 = load i64, ptr %136, align 8, !tbaa !249
  %138 = and i32 %133, 63
  %139 = zext nneg i32 %138 to i64
  %140 = shl nuw i64 1, %139
  %141 = and i64 %140, %137
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %127
  tail call void @delete_basic_block(ptr noundef nonnull %129) #18
  %144 = load ptr, ptr @cfun, align 8, !tbaa !180
  br label %145

145:                                              ; preds = %127, %143
  %146 = phi ptr [ %128, %127 ], [ %144, %143 ]
  %147 = getelementptr inbounds %struct.function, ptr %146, i64 0, i32 1
  %148 = load ptr, ptr %147, align 8, !tbaa !184
  %149 = getelementptr inbounds %struct.control_flow_graph, ptr %148, i64 0, i32 1
  %150 = load ptr, ptr %149, align 8, !tbaa !187
  %151 = icmp eq ptr %131, %150
  br i1 %151, label %152, label %127, !llvm.loop !392

152:                                              ; preds = %145, %120
  tail call void @tidy_fallthru_edges() #18
  br label %153

153:                                              ; preds = %152, %113, %109
  tail call void @free(ptr noundef %16) #17
  %154 = load ptr, ptr %22, align 8, !tbaa !259
  tail call void @free(ptr noundef %154) #17
  tail call void @free(ptr noundef %22) #17
  ret i32 %111
}

; Function Attrs: optsize
declare void @delete_basic_block(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @tidy_fallthru_edges() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @inverted_post_order_compute(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 !prof !382 {
  %2 = alloca %struct.edge_iterator, align 8
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr @cfun, align 8, !tbaa !180
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !184
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !245
  %9 = add nsw i32 %8, 1
  %10 = sext i32 %9 to i64
  %11 = shl nsw i64 %10, 4
  %12 = tail call ptr @xmalloc(i64 noundef %11) #18
  %13 = load ptr, ptr @cfun, align 8, !tbaa !180
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !184
  %16 = getelementptr inbounds %struct.control_flow_graph, ptr %15, i64 0, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !244
  %18 = tail call ptr @sbitmap_alloc(i32 noundef %17) #18
  tail call void @sbitmap_zero(ptr noundef %18) #18
  %19 = load ptr, ptr @cfun, align 8, !tbaa !180
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !184
  %22 = load ptr, ptr %21, align 8, !tbaa !180
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %26, !prof !393

24:                                               ; preds = %45, %1
  %25 = phi i32 [ 0, %1 ], [ %46, %45 ]
  br label %50

26:                                               ; preds = %1, %45
  %27 = phi ptr [ %48, %45 ], [ %22, %1 ]
  %28 = phi i32 [ %46, %45 ], [ 0, %1 ]
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %27, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !206
  %31 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %30) #17
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %45, !prof !394

33:                                               ; preds = %26
  %34 = load ptr, ptr %27, align 8, !tbaa !322
  %35 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %34) #17
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %45, label %37, !prof !395

37:                                               ; preds = %33
  %38 = add nsw i32 %28, 1
  %39 = sext i32 %28 to i64
  %40 = getelementptr inbounds %struct.edge_iterator, ptr %12, i64 %39
  %41 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %27) #17
  store i32 0, ptr %40, align 8, !tbaa.struct !217
  %42 = getelementptr inbounds i8, ptr %40, i64 8
  store ptr %41, ptr %42, align 8, !tbaa.struct !219
  %43 = getelementptr inbounds %struct.basic_block_def, ptr %27, i64 0, i32 9
  %44 = load i32, ptr %43, align 8, !tbaa !248
  tail call fastcc void @SET_BIT(ptr noundef %18, i32 noundef %44) #17
  br label %45

45:                                               ; preds = %26, %37, %33
  %46 = phi i32 [ %38, %37 ], [ %28, %33 ], [ %28, %26 ]
  %47 = getelementptr inbounds %struct.basic_block_def, ptr %27, i64 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !180
  %49 = icmp eq ptr %48, null
  br i1 %49, label %24, label %26, !prof !396, !llvm.loop !397

50:                                               ; preds = %197, %24
  %51 = phi i32 [ 0, %24 ], [ %120, %197 ]
  %52 = phi i32 [ %25, %24 ], [ 1, %197 ]
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %119, label %54, !prof !393

54:                                               ; preds = %50, %115
  %55 = phi i32 [ %117, %115 ], [ %52, %50 ]
  %56 = phi i32 [ %116, %115 ], [ %51, %50 ]
  %57 = sext i32 %55 to i64
  %58 = getelementptr %struct.edge_iterator, ptr %12, i64 %57
  %59 = getelementptr %struct.edge_iterator, ptr %58, i64 -1
  %60 = load i32, ptr %59, align 8, !tbaa.struct !217
  %61 = getelementptr %struct.edge_iterator, ptr %58, i64 -1, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa.struct !219
  %63 = tail call fastcc ptr @ei_edge(i32 %60, ptr %62) #17
  %64 = getelementptr inbounds %struct.edge_def, ptr %63, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !221
  %66 = tail call fastcc ptr @ei_edge(i32 %60, ptr %62) #17
  %67 = load ptr, ptr %66, align 8, !tbaa !246
  %68 = getelementptr inbounds %struct.basic_block_def, ptr %67, i64 0, i32 9
  %69 = load i32, ptr %68, align 8, !tbaa !248
  %70 = lshr i32 %69, 6
  %71 = zext nneg i32 %70 to i64
  %72 = getelementptr inbounds %struct.simple_bitmap_def, ptr %18, i64 0, i32 3, i64 %71
  %73 = load i64, ptr %72, align 8, !tbaa !249
  %74 = and i32 %69, 63
  %75 = zext nneg i32 %74 to i64
  %76 = shl nuw i64 1, %75
  %77 = and i64 %76, %73
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %92, !prof !398

79:                                               ; preds = %54
  tail call fastcc void @SET_BIT(ptr noundef nonnull %18, i32 noundef %69) #17
  %80 = load ptr, ptr %67, align 8, !tbaa !322
  %81 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %80) #17
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %87, label %83, !prof !388

83:                                               ; preds = %79
  %84 = add nsw i32 %55, 1
  %85 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %67) #17
  store i32 0, ptr %58, align 8, !tbaa.struct !217
  %86 = getelementptr inbounds i8, ptr %58, i64 8
  store ptr %85, ptr %86, align 8, !tbaa.struct !219
  br label %115

87:                                               ; preds = %79
  %88 = load i32, ptr %68, align 8, !tbaa !248
  %89 = add nsw i32 %56, 1
  %90 = sext i32 %56 to i64
  %91 = getelementptr inbounds i32, ptr %0, i64 %90
  store i32 %88, ptr %91, align 4, !tbaa !218
  br label %115

92:                                               ; preds = %54
  %93 = load ptr, ptr @cfun, align 8, !tbaa !180
  %94 = getelementptr inbounds %struct.function, ptr %93, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !184
  %96 = getelementptr inbounds %struct.control_flow_graph, ptr %95, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !187
  %98 = icmp eq ptr %65, %97
  br i1 %98, label %108, label %99, !prof !399

99:                                               ; preds = %92
  %100 = tail call fastcc zeroext i8 @ei_one_before_end_p(i32 %60, ptr %62) #17, !range !191
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %108, label %102, !prof !400

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.basic_block_def, ptr %65, i64 0, i32 9
  %104 = load i32, ptr %103, align 8, !tbaa !248
  %105 = add nsw i32 %56, 1
  %106 = sext i32 %56 to i64
  %107 = getelementptr inbounds i32, ptr %0, i64 %106
  store i32 %104, ptr %107, align 4, !tbaa !218
  br label %108

108:                                              ; preds = %102, %99, %92
  %109 = phi i32 [ %105, %102 ], [ %56, %99 ], [ %56, %92 ]
  %110 = tail call fastcc zeroext i8 @ei_one_before_end_p(i32 %60, ptr %62) #17, !range !191
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %112, label %113, !prof !401

112:                                              ; preds = %108
  tail call fastcc void @ei_next(ptr noundef nonnull %59) #17
  br label %115

113:                                              ; preds = %108
  %114 = add nsw i32 %55, -1
  br label %115

115:                                              ; preds = %112, %113, %83, %87
  %116 = phi i32 [ %109, %113 ], [ %109, %112 ], [ %56, %83 ], [ %89, %87 ]
  %117 = phi i32 [ %114, %113 ], [ %55, %112 ], [ %84, %83 ], [ %55, %87 ]
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %54, !prof !402, !llvm.loop !403

119:                                              ; preds = %115, %50
  %120 = phi i32 [ %51, %50 ], [ %116, %115 ]
  %121 = load ptr, ptr @cfun, align 8, !tbaa !180
  %122 = getelementptr inbounds %struct.function, ptr %121, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !184
  %124 = load ptr, ptr %123, align 8, !tbaa !180
  %125 = getelementptr inbounds %struct.control_flow_graph, ptr %123, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !187
  %127 = icmp eq ptr %124, %126
  br i1 %127, label %208, label %128, !prof !393

128:                                              ; preds = %119, %180
  %129 = phi ptr [ %181, %180 ], [ %121, %119 ]
  %130 = phi ptr [ %184, %180 ], [ %124, %119 ]
  %131 = phi i8 [ %182, %180 ], [ 0, %119 ]
  %132 = getelementptr inbounds %struct.basic_block_def, ptr %130, i64 0, i32 9
  %133 = load i32, ptr %132, align 8, !tbaa !248
  %134 = lshr i32 %133, 6
  %135 = zext nneg i32 %134 to i64
  %136 = getelementptr inbounds %struct.simple_bitmap_def, ptr %18, i64 0, i32 3, i64 %135
  %137 = load i64, ptr %136, align 8, !tbaa !249
  %138 = and i32 %133, 63
  %139 = zext nneg i32 %138 to i64
  %140 = shl nuw i64 1, %139
  %141 = and i64 %140, %137
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %180, !prof !404

143:                                              ; preds = %128
  %144 = load ptr, ptr %130, align 8, !tbaa !322
  %145 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %144) #17
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %180, label %147

147:                                              ; preds = %143
  %148 = getelementptr inbounds i8, ptr %2, i64 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  %149 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %130) #17
  store i32 0, ptr %2, align 8, !tbaa.struct !217
  store ptr %149, ptr %148, align 8, !tbaa.struct !219
  %150 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %149, ptr noundef nonnull %3) #17, !range !191
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %174, label %152

152:                                              ; preds = %147, %152
  %153 = phi ptr [ %167, %152 ], [ null, %147 ]
  %154 = load ptr, ptr %3, align 8, !tbaa !180
  %155 = load ptr, ptr %154, align 8, !tbaa !246
  %156 = getelementptr inbounds %struct.basic_block_def, ptr %155, i64 0, i32 9
  %157 = load i32, ptr %156, align 8, !tbaa !248
  %158 = lshr i32 %157, 6
  %159 = zext nneg i32 %158 to i64
  %160 = getelementptr inbounds %struct.simple_bitmap_def, ptr %18, i64 0, i32 3, i64 %159
  %161 = load i64, ptr %160, align 8, !tbaa !249
  %162 = and i32 %157, 63
  %163 = zext nneg i32 %162 to i64
  %164 = shl nuw i64 1, %163
  %165 = and i64 %164, %161
  %166 = icmp eq i64 %165, 0
  %167 = select i1 %166, ptr %153, ptr %155
  call fastcc void @ei_next(ptr noundef nonnull %2) #17
  %168 = load i32, ptr %2, align 8
  %169 = load ptr, ptr %148, align 8
  %170 = call fastcc zeroext i8 @ei_cond(i32 %168, ptr %169, ptr noundef nonnull %3) #17, !range !191
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %172, label %152, !llvm.loop !405

172:                                              ; preds = %152
  %173 = icmp eq ptr %167, null
  br i1 %173, label %174, label %176

174:                                              ; preds = %147, %172
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #19
  %175 = load ptr, ptr @cfun, align 8, !tbaa !180
  br label %180

176:                                              ; preds = %172
  %177 = tail call fastcc ptr @dfs_find_deadend(ptr noundef nonnull %130) #17
  %178 = icmp eq ptr %177, null
  br i1 %178, label %179, label %192

179:                                              ; preds = %176
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 907, ptr noundef nonnull @.str.16) #18
  br label %192

180:                                              ; preds = %174, %128, %143
  %181 = phi ptr [ %129, %128 ], [ %129, %143 ], [ %175, %174 ]
  %182 = phi i8 [ %131, %128 ], [ 1, %143 ], [ 1, %174 ]
  %183 = getelementptr inbounds %struct.basic_block_def, ptr %130, i64 0, i32 6
  %184 = load ptr, ptr %183, align 8, !tbaa !180
  %185 = getelementptr inbounds %struct.function, ptr %181, i64 0, i32 1
  %186 = load ptr, ptr %185, align 8, !tbaa !184
  %187 = getelementptr inbounds %struct.control_flow_graph, ptr %186, i64 0, i32 1
  %188 = load ptr, ptr %187, align 8, !tbaa !187
  %189 = icmp eq ptr %184, %188
  br i1 %189, label %190, label %128, !prof !406, !llvm.loop !407

190:                                              ; preds = %180
  %191 = icmp eq i8 %182, 0
  br i1 %191, label %208, label %198, !prof !408

192:                                              ; preds = %176, %179
  %193 = getelementptr inbounds i8, ptr %12, i64 8
  %194 = getelementptr inbounds %struct.basic_block_def, ptr %177, i64 0, i32 9
  %195 = load i32, ptr %194, align 8, !tbaa !248
  tail call fastcc void @SET_BIT(ptr noundef nonnull %18, i32 noundef %195) #17
  %196 = tail call fastcc ptr @ei_start_1(ptr noundef %177) #17
  store i32 0, ptr %12, align 8, !tbaa.struct !217
  store ptr %196, ptr %193, align 8, !tbaa.struct !219
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #19
  br label %197

197:                                              ; preds = %192, %203
  br label %50

198:                                              ; preds = %190
  %199 = load ptr, ptr %186, align 8, !tbaa !190
  %200 = tail call fastcc ptr @dfs_find_deadend(ptr noundef %199) #17
  %201 = icmp eq ptr %200, null
  br i1 %201, label %202, label %203

202:                                              ; preds = %198
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 920, ptr noundef nonnull @.str.16) #18
  br label %203

203:                                              ; preds = %198, %202
  %204 = getelementptr inbounds i8, ptr %12, i64 8
  %205 = getelementptr inbounds %struct.basic_block_def, ptr %200, i64 0, i32 9
  %206 = load i32, ptr %205, align 8, !tbaa !248
  tail call fastcc void @SET_BIT(ptr noundef nonnull %18, i32 noundef %206) #17
  %207 = tail call fastcc ptr @ei_start_1(ptr noundef %200) #17
  store i32 0, ptr %12, align 8, !tbaa.struct !217
  store ptr %207, ptr %204, align 8, !tbaa.struct !219
  br label %197

208:                                              ; preds = %119, %190
  %209 = add nsw i32 %120, 1
  %210 = sext i32 %120 to i64
  %211 = getelementptr inbounds i32, ptr %0, i64 %210
  store i32 1, ptr %211, align 4, !tbaa !218
  tail call void @free(ptr noundef %12) #17
  %212 = load ptr, ptr %18, align 8, !tbaa !259
  tail call void @free(ptr noundef %212) #17
  tail call void @free(ptr noundef %18) #17
  ret i32 %209
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @dfs_find_deadend(ptr noundef readonly %0) unnamed_addr #0 !prof !241 !PGOFuncName !409 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !180
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !184
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !244
  %7 = tail call ptr @sbitmap_alloc(i32 noundef %6) #18
  tail call void @sbitmap_zero(ptr noundef %7) #18
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !248
  br label %10

10:                                               ; preds = %17, %1
  %11 = phi i32 [ %9, %1 ], [ %22, %17 ]
  %12 = phi ptr [ %0, %1 ], [ %20, %17 ]
  tail call fastcc void @SET_BIT(ptr noundef %7, i32 noundef %11) #17
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !206
  %15 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %14) #17
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %32, label %17

17:                                               ; preds = %10
  %18 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %14, i32 noundef 0) #17
  %19 = getelementptr inbounds %struct.edge_def, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !221
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 9
  %22 = load i32, ptr %21, align 8, !tbaa !248
  %23 = lshr i32 %22, 6
  %24 = zext nneg i32 %23 to i64
  %25 = getelementptr inbounds %struct.simple_bitmap_def, ptr %7, i64 0, i32 3, i64 %24
  %26 = load i64, ptr %25, align 8, !tbaa !249
  %27 = and i32 %22, 63
  %28 = zext nneg i32 %27 to i64
  %29 = shl nuw i64 1, %28
  %30 = and i64 %29, %26
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %10, label %32

32:                                               ; preds = %17, %10
  %33 = load ptr, ptr %7, align 8, !tbaa !259
  tail call void @free(ptr noundef %33) #17
  tail call void @free(ptr noundef %7) #17
  ret ptr %12
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @pre_and_rev_post_order_compute(ptr noundef writeonly %0, ptr noundef writeonly %1, i8 noundef zeroext %2) local_unnamed_addr #0 !prof !410 {
  %4 = load ptr, ptr @cfun, align 8, !tbaa !180
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !184
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !245
  %9 = add nsw i32 %8, -1
  %10 = add nsw i32 %8, 1
  %11 = sext i32 %10 to i64
  %12 = shl nsw i64 %11, 4
  %13 = tail call ptr @xmalloc(i64 noundef %12) #18
  %14 = icmp eq i8 %2, 0
  br i1 %14, label %24, label %15, !prof !411

15:                                               ; preds = %3
  %16 = icmp eq ptr %0, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %15
  store i32 0, ptr %0, align 4, !tbaa !218
  br label %18

18:                                               ; preds = %17, %15
  %19 = icmp eq ptr %1, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %18
  %21 = add nsw i32 %8, -2
  %22 = sext i32 %9 to i64
  %23 = getelementptr inbounds i32, ptr %1, i64 %22
  store i32 0, ptr %23, align 4, !tbaa !218
  br label %26

24:                                               ; preds = %3
  %25 = add nsw i32 %8, -3
  br label %26

26:                                               ; preds = %18, %20, %24
  %27 = phi i32 [ %21, %20 ], [ %9, %18 ], [ %25, %24 ]
  %28 = phi i32 [ 1, %20 ], [ 1, %18 ], [ 0, %24 ]
  %29 = load ptr, ptr @cfun, align 8, !tbaa !180
  %30 = getelementptr inbounds %struct.function, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !184
  %32 = getelementptr inbounds %struct.control_flow_graph, ptr %31, i64 0, i32 5
  %33 = load i32, ptr %32, align 8, !tbaa !244
  %34 = tail call ptr @sbitmap_alloc(i32 noundef %33) #18
  tail call void @sbitmap_zero(ptr noundef %34) #18
  %35 = load ptr, ptr @cfun, align 8, !tbaa !180
  %36 = getelementptr inbounds %struct.function, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !184
  %38 = load ptr, ptr %37, align 8, !tbaa !190
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 1
  %40 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %39) #17
  store i32 0, ptr %13, align 8, !tbaa.struct !217
  %41 = getelementptr inbounds i8, ptr %13, i64 8
  store ptr %40, ptr %41, align 8, !tbaa.struct !219
  %42 = icmp eq ptr %0, null
  %43 = icmp eq ptr %1, null
  %44 = icmp ne ptr %1, null
  br label %45

45:                                               ; preds = %26, %122
  %46 = phi i32 [ 1, %26 ], [ %125, %122 ]
  %47 = phi i32 [ %28, %26 ], [ %124, %122 ]
  %48 = phi i32 [ %27, %26 ], [ %123, %122 ]
  %49 = sext i32 %46 to i64
  %50 = getelementptr %struct.edge_iterator, ptr %13, i64 %49
  %51 = getelementptr %struct.edge_iterator, ptr %50, i64 -1
  %52 = load i32, ptr %51, align 8, !tbaa.struct !217
  %53 = getelementptr %struct.edge_iterator, ptr %50, i64 -1, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa.struct !219
  %55 = tail call fastcc ptr @ei_edge(i32 %52, ptr %54) #17
  %56 = load ptr, ptr %55, align 8, !tbaa !246
  %57 = tail call fastcc ptr @ei_edge(i32 %52, ptr %54) #17
  %58 = getelementptr inbounds %struct.edge_def, ptr %57, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !221
  %60 = load ptr, ptr @cfun, align 8, !tbaa !180
  %61 = getelementptr inbounds %struct.function, ptr %60, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !184
  %63 = getelementptr inbounds %struct.control_flow_graph, ptr %62, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !187
  %65 = icmp eq ptr %59, %64
  br i1 %65, label %99, label %66, !prof !412

66:                                               ; preds = %45
  %67 = getelementptr inbounds %struct.basic_block_def, ptr %59, i64 0, i32 9
  %68 = load i32, ptr %67, align 8, !tbaa !248
  %69 = lshr i32 %68, 6
  %70 = zext nneg i32 %69 to i64
  %71 = getelementptr inbounds %struct.simple_bitmap_def, ptr %34, i64 0, i32 3, i64 %70
  %72 = load i64, ptr %71, align 8, !tbaa !249
  %73 = and i32 %68, 63
  %74 = zext nneg i32 %73 to i64
  %75 = shl nuw i64 1, %74
  %76 = and i64 %75, %72
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %99, !prof !413

78:                                               ; preds = %66
  tail call fastcc void @SET_BIT(ptr noundef nonnull %34, i32 noundef %68) #17
  br i1 %42, label %83, label %79, !prof !414

79:                                               ; preds = %78
  %80 = load i32, ptr %67, align 8, !tbaa !248
  %81 = sext i32 %47 to i64
  %82 = getelementptr inbounds i32, ptr %0, i64 %81
  store i32 %80, ptr %82, align 4, !tbaa !218
  br label %83

83:                                               ; preds = %79, %78
  %84 = add nsw i32 %47, 1
  %85 = getelementptr inbounds %struct.basic_block_def, ptr %59, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !206
  %87 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %86) #17
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %93, label %89, !prof !415

89:                                               ; preds = %83
  %90 = add nsw i32 %46, 1
  %91 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %85) #17
  store i32 0, ptr %50, align 8, !tbaa.struct !217
  %92 = getelementptr inbounds i8, ptr %50, i64 8
  store ptr %91, ptr %92, align 8, !tbaa.struct !219
  br label %122

93:                                               ; preds = %83
  br i1 %43, label %122, label %94, !prof !416

94:                                               ; preds = %93
  %95 = load i32, ptr %67, align 8, !tbaa !248
  %96 = add nsw i32 %48, -1
  %97 = sext i32 %48 to i64
  %98 = getelementptr inbounds i32, ptr %1, i64 %97
  store i32 %95, ptr %98, align 4, !tbaa !218
  br label %122

99:                                               ; preds = %66, %45
  %100 = tail call fastcc zeroext i8 @ei_one_before_end_p(i32 %52, ptr %54) #17, !range !191
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %115, label %102, !prof !417

102:                                              ; preds = %99
  %103 = load ptr, ptr @cfun, align 8, !tbaa !180
  %104 = getelementptr inbounds %struct.function, ptr %103, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !184
  %106 = load ptr, ptr %105, align 8, !tbaa !190
  %107 = icmp ne ptr %56, %106
  %108 = and i1 %44, %107
  br i1 %108, label %109, label %115, !prof !418

109:                                              ; preds = %102
  %110 = getelementptr inbounds %struct.basic_block_def, ptr %56, i64 0, i32 9
  %111 = load i32, ptr %110, align 8, !tbaa !248
  %112 = add nsw i32 %48, -1
  %113 = sext i32 %48 to i64
  %114 = getelementptr inbounds i32, ptr %1, i64 %113
  store i32 %111, ptr %114, align 4, !tbaa !218
  br label %115

115:                                              ; preds = %109, %102, %99
  %116 = phi i32 [ %112, %109 ], [ %48, %102 ], [ %48, %99 ]
  %117 = tail call fastcc zeroext i8 @ei_one_before_end_p(i32 %52, ptr %54) #17, !range !191
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %119, label %120, !prof !417

119:                                              ; preds = %115
  tail call fastcc void @ei_next(ptr noundef nonnull %51) #17
  br label %122

120:                                              ; preds = %115
  %121 = add nsw i32 %46, -1
  br label %122

122:                                              ; preds = %119, %120, %89, %94, %93
  %123 = phi i32 [ %116, %120 ], [ %116, %119 ], [ %48, %89 ], [ %96, %94 ], [ %48, %93 ]
  %124 = phi i32 [ %47, %120 ], [ %47, %119 ], [ %84, %89 ], [ %84, %94 ], [ %84, %93 ]
  %125 = phi i32 [ %121, %120 ], [ %46, %119 ], [ %90, %89 ], [ %46, %94 ], [ %46, %93 ]
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %45, !prof !419, !llvm.loop !420

127:                                              ; preds = %122
  tail call void @free(ptr noundef nonnull %13) #17
  %128 = load ptr, ptr %34, align 8, !tbaa !259
  tail call void @free(ptr noundef %128) #17
  tail call void @free(ptr noundef %34) #17
  br i1 %14, label %145, label %129, !prof !411

129:                                              ; preds = %127
  br i1 %42, label %133, label %130

130:                                              ; preds = %129
  %131 = sext i32 %124 to i64
  %132 = getelementptr inbounds i32, ptr %0, i64 %131
  store i32 1, ptr %132, align 4, !tbaa !218
  br label %133

133:                                              ; preds = %130, %129
  %134 = add nsw i32 %124, 1
  br i1 %43, label %138, label %135

135:                                              ; preds = %133
  %136 = sext i32 %123 to i64
  %137 = getelementptr inbounds i32, ptr %1, i64 %136
  store i32 1, ptr %137, align 4, !tbaa !218
  br label %138

138:                                              ; preds = %135, %133
  %139 = load ptr, ptr @cfun, align 8, !tbaa !180
  %140 = getelementptr inbounds %struct.function, ptr %139, i64 0, i32 1
  %141 = load ptr, ptr %140, align 8, !tbaa !184
  %142 = getelementptr inbounds %struct.control_flow_graph, ptr %141, i64 0, i32 3
  %143 = load i32, ptr %142, align 8, !tbaa !245
  %144 = icmp eq i32 %134, %143
  br i1 %144, label %156, label %153

145:                                              ; preds = %127
  %146 = load ptr, ptr @cfun, align 8, !tbaa !180
  %147 = getelementptr inbounds %struct.function, ptr %146, i64 0, i32 1
  %148 = load ptr, ptr %147, align 8, !tbaa !184
  %149 = getelementptr inbounds %struct.control_flow_graph, ptr %148, i64 0, i32 3
  %150 = load i32, ptr %149, align 8, !tbaa !245
  %151 = add nsw i32 %150, -2
  %152 = icmp eq i32 %124, %151
  br i1 %152, label %156, label %153, !prof !411

153:                                              ; preds = %145, %138
  %154 = phi i32 [ 1040, %138 ], [ 1045, %145 ]
  %155 = phi i32 [ %134, %138 ], [ %124, %145 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef %154, ptr noundef nonnull @.str.16) #18
  br label %156

156:                                              ; preds = %153, %138, %145
  %157 = phi i32 [ %134, %138 ], [ %124, %145 ], [ %155, %153 ]
  ret i32 %157
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @dfs_enumerate_from(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 !prof !241 {
  %7 = alloca ptr, align 8
  %8 = alloca %struct.edge_iterator, align 8
  %9 = load ptr, ptr @cfun, align 8, !tbaa !180
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !184
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %11, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !244
  %14 = tail call i32 @llvm.umax.i32(i32 %13, i32 10)
  %15 = load ptr, ptr @dfs_enumerate_from.visited, align 8, !tbaa !180
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %6
  %18 = tail call ptr @sbitmap_alloc(i32 noundef %14) #18
  store ptr %18, ptr @dfs_enumerate_from.visited, align 8, !tbaa !180
  tail call void @sbitmap_zero(ptr noundef %18) #18
  br label %26

19:                                               ; preds = %6
  %20 = load i32, ptr @dfs_enumerate_from.v_size, align 4, !tbaa !218
  %21 = icmp ult i32 %20, %14
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = shl i32 %20, 1
  %24 = tail call i32 @llvm.umax.i32(i32 %23, i32 %14)
  %25 = tail call ptr @sbitmap_resize(ptr noundef nonnull %15, i32 noundef %24, i32 noundef 0) #18
  store ptr %25, ptr @dfs_enumerate_from.visited, align 8, !tbaa !180
  br label %26

26:                                               ; preds = %17, %22
  %27 = phi i32 [ %24, %22 ], [ %14, %17 ]
  store i32 %27, ptr @dfs_enumerate_from.v_size, align 4, !tbaa !218
  br label %28

28:                                               ; preds = %26, %19
  %29 = sext i32 %4 to i64
  %30 = tail call ptr @xcalloc(i64 noundef %29, i64 noundef 8) #18
  store ptr %0, ptr %30, align 8, !tbaa !180
  store ptr %0, ptr %3, align 8, !tbaa !180
  %31 = load ptr, ptr @dfs_enumerate_from.visited, align 8, !tbaa !180
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %33 = load i32, ptr %32, align 8, !tbaa !248
  tail call fastcc void @SET_BIT(ptr noundef %31, i32 noundef %33) #17
  %34 = icmp eq i32 %1, 0
  %35 = getelementptr inbounds i8, ptr %8, i64 8
  br label %36

36:                                               ; preds = %28, %137
  %37 = phi i32 [ 1, %28 ], [ %139, %137 ]
  %38 = phi i32 [ 1, %28 ], [ %138, %137 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #19
  %39 = add nsw i32 %37, -1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds ptr, ptr %30, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !180
  br i1 %34, label %89, label %43

43:                                               ; preds = %36
  %44 = tail call fastcc ptr @ei_start_1(ptr noundef %42) #17
  store i32 0, ptr %8, align 8, !tbaa.struct !217
  store ptr %44, ptr %35, align 8, !tbaa.struct !219
  %45 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %44, ptr noundef nonnull %7) #17, !range !191
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %137, label %47

47:                                               ; preds = %43, %82
  %48 = phi i32 [ %84, %82 ], [ %39, %43 ]
  %49 = phi i32 [ %83, %82 ], [ %38, %43 ]
  %50 = load ptr, ptr @dfs_enumerate_from.visited, align 8, !tbaa !180
  %51 = load ptr, ptr %7, align 8, !tbaa !180
  %52 = load ptr, ptr %51, align 8, !tbaa !246
  %53 = getelementptr inbounds %struct.basic_block_def, ptr %52, i64 0, i32 9
  %54 = load i32, ptr %53, align 8, !tbaa !248
  %55 = lshr i32 %54, 6
  %56 = zext nneg i32 %55 to i64
  %57 = getelementptr inbounds %struct.simple_bitmap_def, ptr %50, i64 0, i32 3, i64 %56
  %58 = load i64, ptr %57, align 8, !tbaa !249
  %59 = and i32 %54, 63
  %60 = zext nneg i32 %59 to i64
  %61 = shl nuw i64 1, %60
  %62 = and i64 %61, %58
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %82

64:                                               ; preds = %47
  %65 = tail call zeroext i8 %2(ptr noundef nonnull %52, ptr noundef %5) #18
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %82, label %67

67:                                               ; preds = %64
  %68 = icmp eq i32 %49, %4
  br i1 %68, label %69, label %70

69:                                               ; preds = %67
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1207, ptr noundef nonnull @.str.16) #18
  br label %70

70:                                               ; preds = %67, %69
  %71 = load ptr, ptr %51, align 8, !tbaa !246
  %72 = add nsw i32 %48, 1
  %73 = sext i32 %48 to i64
  %74 = getelementptr inbounds ptr, ptr %30, i64 %73
  store ptr %71, ptr %74, align 8, !tbaa !180
  %75 = add nsw i32 %49, 1
  %76 = sext i32 %49 to i64
  %77 = getelementptr inbounds ptr, ptr %3, i64 %76
  store ptr %71, ptr %77, align 8, !tbaa !180
  %78 = load ptr, ptr @dfs_enumerate_from.visited, align 8, !tbaa !180
  %79 = load ptr, ptr %51, align 8, !tbaa !246
  %80 = getelementptr inbounds %struct.basic_block_def, ptr %79, i64 0, i32 9
  %81 = load i32, ptr %80, align 8, !tbaa !248
  tail call fastcc void @SET_BIT(ptr noundef %78, i32 noundef %81) #17
  br label %82

82:                                               ; preds = %47, %64, %70
  %83 = phi i32 [ %49, %47 ], [ %75, %70 ], [ %49, %64 ]
  %84 = phi i32 [ %48, %47 ], [ %72, %70 ], [ %48, %64 ]
  call fastcc void @ei_next(ptr noundef nonnull %8) #17
  %85 = load i32, ptr %8, align 8
  %86 = load ptr, ptr %35, align 8
  %87 = call fastcc zeroext i8 @ei_cond(i32 %85, ptr %86, ptr noundef nonnull %7) #17, !range !191
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %137, label %47, !llvm.loop !421

89:                                               ; preds = %36
  %90 = getelementptr inbounds %struct.basic_block_def, ptr %42, i64 0, i32 1
  %91 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %90) #17
  store i32 0, ptr %8, align 8, !tbaa.struct !217
  store ptr %91, ptr %35, align 8, !tbaa.struct !219
  %92 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %91, ptr noundef nonnull %7) #17, !range !191
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %137, label %94

94:                                               ; preds = %89, %130
  %95 = phi i32 [ %132, %130 ], [ %39, %89 ]
  %96 = phi i32 [ %131, %130 ], [ %38, %89 ]
  %97 = load ptr, ptr @dfs_enumerate_from.visited, align 8, !tbaa !180
  %98 = load ptr, ptr %7, align 8, !tbaa !180
  %99 = getelementptr inbounds %struct.edge_def, ptr %98, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !221
  %101 = getelementptr inbounds %struct.basic_block_def, ptr %100, i64 0, i32 9
  %102 = load i32, ptr %101, align 8, !tbaa !248
  %103 = lshr i32 %102, 6
  %104 = zext nneg i32 %103 to i64
  %105 = getelementptr inbounds %struct.simple_bitmap_def, ptr %97, i64 0, i32 3, i64 %104
  %106 = load i64, ptr %105, align 8, !tbaa !249
  %107 = and i32 %102, 63
  %108 = zext nneg i32 %107 to i64
  %109 = shl nuw i64 1, %108
  %110 = and i64 %109, %106
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %130

112:                                              ; preds = %94
  %113 = tail call zeroext i8 %2(ptr noundef nonnull %100, ptr noundef %5) #18
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %130, label %115

115:                                              ; preds = %112
  %116 = icmp eq i32 %96, %4
  br i1 %116, label %117, label %118

117:                                              ; preds = %115
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1217, ptr noundef nonnull @.str.16) #18
  br label %118

118:                                              ; preds = %115, %117
  %119 = load ptr, ptr %99, align 8, !tbaa !221
  %120 = add nsw i32 %95, 1
  %121 = sext i32 %95 to i64
  %122 = getelementptr inbounds ptr, ptr %30, i64 %121
  store ptr %119, ptr %122, align 8, !tbaa !180
  %123 = add nsw i32 %96, 1
  %124 = sext i32 %96 to i64
  %125 = getelementptr inbounds ptr, ptr %3, i64 %124
  store ptr %119, ptr %125, align 8, !tbaa !180
  %126 = load ptr, ptr @dfs_enumerate_from.visited, align 8, !tbaa !180
  %127 = load ptr, ptr %99, align 8, !tbaa !221
  %128 = getelementptr inbounds %struct.basic_block_def, ptr %127, i64 0, i32 9
  %129 = load i32, ptr %128, align 8, !tbaa !248
  tail call fastcc void @SET_BIT(ptr noundef %126, i32 noundef %129) #17
  br label %130

130:                                              ; preds = %94, %112, %118
  %131 = phi i32 [ %96, %94 ], [ %123, %118 ], [ %96, %112 ]
  %132 = phi i32 [ %95, %94 ], [ %120, %118 ], [ %95, %112 ]
  call fastcc void @ei_next(ptr noundef nonnull %8) #17
  %133 = load i32, ptr %8, align 8
  %134 = load ptr, ptr %35, align 8
  %135 = call fastcc zeroext i8 @ei_cond(i32 %133, ptr %134, ptr noundef nonnull %7) #17, !range !191
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %137, label %94, !llvm.loop !422

137:                                              ; preds = %82, %130, %43, %89
  %138 = phi i32 [ %38, %89 ], [ %38, %43 ], [ %131, %130 ], [ %83, %82 ]
  %139 = phi i32 [ %39, %89 ], [ %39, %43 ], [ %132, %130 ], [ %84, %82 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %36, !llvm.loop !423

141:                                              ; preds = %137
  tail call void @free(ptr noundef %30) #17
  %142 = icmp sgt i32 %138, 0
  br i1 %142, label %143, label %154

143:                                              ; preds = %141
  %144 = load ptr, ptr @dfs_enumerate_from.visited, align 8, !tbaa !180
  %145 = zext nneg i32 %138 to i64
  br label %146

146:                                              ; preds = %143, %146
  %147 = phi i64 [ 0, %143 ], [ %152, %146 ]
  %148 = getelementptr inbounds ptr, ptr %3, i64 %147
  %149 = load ptr, ptr %148, align 8, !tbaa !180
  %150 = getelementptr inbounds %struct.basic_block_def, ptr %149, i64 0, i32 9
  %151 = load i32, ptr %150, align 8, !tbaa !248
  tail call fastcc void @RESET_BIT(ptr noundef %144, i32 noundef %151) #17
  %152 = add nuw nsw i64 %147, 1
  %153 = icmp eq i64 %152, %145
  br i1 %153, label %154, label %146, !llvm.loop !424

154:                                              ; preds = %146, %141
  ret i32 %138
}

; Function Attrs: optsize
declare ptr @sbitmap_resize(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @RESET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #5 !prof !241 !PGOFuncName !425 {
  %3 = load ptr, ptr %0, align 8, !tbaa !259
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
  %15 = load i64, ptr %14, align 8, !tbaa !249
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !193
  %24 = add i8 %23, -1
  store i8 %24, ptr %22, align 1, !tbaa !193
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = xor i64 %27, -1
  %29 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %30 = load i64, ptr %29, align 8, !tbaa !249
  %31 = and i64 %30, %28
  store i64 %31, ptr %29, align 8, !tbaa !249
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @compute_dominance_frontiers(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !426 {
  %2 = load i8, ptr @timevar_enable, align 1, !tbaa !193
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4, !prof !427

4:                                                ; preds = %1
  tail call void @timevar_push_1(i32 noundef 111) #18
  br label %5

5:                                                ; preds = %1, %4
  tail call fastcc void @compute_dominance_frontiers_1(ptr noundef %0) #17
  %6 = load i8, ptr @timevar_enable, align 1, !tbaa !193
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %9, label %8, !prof !427

8:                                                ; preds = %5
  tail call void @timevar_pop_1(i32 noundef 111) #18
  br label %9

9:                                                ; preds = %5, %8
  ret void
}

; Function Attrs: optsize
declare void @timevar_push_1(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_dominance_frontiers_1(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !426 !PGOFuncName !428 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #19
  %4 = load ptr, ptr @cfun, align 8, !tbaa !180
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !184
  %7 = load ptr, ptr %6, align 8, !tbaa !190
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !215
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !187
  %12 = icmp eq ptr %9, %11
  br i1 %12, label %70, label %13, !prof !429

13:                                               ; preds = %1
  %14 = getelementptr inbounds i8, ptr %3, i64 8
  br label %15

15:                                               ; preds = %13, %61
  %16 = phi ptr [ %9, %13 ], [ %63, %61 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !322
  %18 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %17) #17
  %19 = icmp ugt i32 %18, 1
  br i1 %19, label %20, label %61, !prof !430

20:                                               ; preds = %15
  %21 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %16) #17
  store i32 0, ptr %3, align 8, !tbaa.struct !217
  store ptr %21, ptr %14, align 8, !tbaa.struct !219
  %22 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %21, ptr noundef nonnull %2) #17, !range !191
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %61, label %24, !prof !431

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 9
  br label %26

26:                                               ; preds = %24, %56
  %27 = load ptr, ptr %2, align 8, !tbaa !180
  %28 = load ptr, ptr %27, align 8, !tbaa !246
  %29 = load ptr, ptr @cfun, align 8, !tbaa !180
  %30 = getelementptr inbounds %struct.function, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !184
  %32 = load ptr, ptr %31, align 8, !tbaa !190
  %33 = icmp eq ptr %28, %32
  br i1 %33, label %56, label %34, !prof !432

34:                                               ; preds = %26
  %35 = tail call ptr @get_immediate_dominator(i32 noundef 1, ptr noundef nonnull %16) #18
  %36 = icmp eq ptr %28, %35
  br i1 %36, label %56, label %37, !prof !433

37:                                               ; preds = %34, %47
  %38 = phi ptr [ %54, %47 ], [ %28, %34 ]
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 9
  %40 = load i32, ptr %39, align 8, !tbaa !248
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds ptr, ptr %0, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !180
  %44 = load i32, ptr %25, align 8, !tbaa !248
  %45 = tail call i32 @bitmap_bit_p(ptr noundef %43, i32 noundef %44) #18
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %56, !prof !434

47:                                               ; preds = %37
  %48 = load i32, ptr %39, align 8, !tbaa !248
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds ptr, ptr %0, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !180
  %52 = load i32, ptr %25, align 8, !tbaa !248
  %53 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %51, i32 noundef %52) #18
  %54 = tail call ptr @get_immediate_dominator(i32 noundef 1, ptr noundef nonnull %38) #18
  %55 = icmp eq ptr %54, %35
  br i1 %55, label %56, label %37, !prof !435, !llvm.loop !436

56:                                               ; preds = %37, %47, %34, %26
  call fastcc void @ei_next(ptr noundef nonnull %3) #17
  %57 = load i32, ptr %3, align 8
  %58 = load ptr, ptr %14, align 8
  %59 = call fastcc zeroext i8 @ei_cond(i32 %57, ptr %58, ptr noundef nonnull %2) #17, !range !191
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %26, !prof !437, !llvm.loop !438

61:                                               ; preds = %56, %20, %15
  %62 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 6
  %63 = load ptr, ptr %62, align 8, !tbaa !215
  %64 = load ptr, ptr @cfun, align 8, !tbaa !180
  %65 = getelementptr inbounds %struct.function, ptr %64, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !184
  %67 = getelementptr inbounds %struct.control_flow_graph, ptr %66, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !187
  %69 = icmp eq ptr %63, %68
  br i1 %69, label %70, label %15, !prof !439, !llvm.loop !440

70:                                               ; preds = %61, %1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  ret void
}

; Function Attrs: optsize
declare void @timevar_pop_1(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @compute_idf(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !441 {
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  %7 = load ptr, ptr @cfun, align 8, !tbaa !180
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !184
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !245
  %12 = tail call fastcc ptr @VEC_int_heap_alloc(i32 noundef %11) #17
  store ptr %12, ptr %6, align 8, !tbaa !180
  %13 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %0, ptr noundef nonnull %4) #17
  %14 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #17, !range !191
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %19, !prof !442

16:                                               ; preds = %19, %2
  %17 = tail call fastcc i32 @VEC_int_base_length(ptr noundef %12) #17
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %50, label %29, !prof !442

19:                                               ; preds = %2, %19
  %20 = load i32, ptr %4, align 4, !tbaa !218
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %12, i32 noundef %20) #17
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %4) #17
  %21 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #17, !range !191
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %16, label %19, !prof !443, !llvm.loop !444

23:                                               ; preds = %45
  %24 = load ptr, ptr %6, align 8
  br label %25

25:                                               ; preds = %23, %39
  %26 = phi ptr [ %24, %23 ], [ %30, %39 ]
  %27 = tail call fastcc i32 @VEC_int_base_length(ptr noundef %26) #17
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %50, label %29, !prof !445, !llvm.loop !446

29:                                               ; preds = %16, %25
  %30 = phi ptr [ %26, %25 ], [ %12, %16 ]
  %31 = tail call fastcc i32 @VEC_int_base_pop(ptr noundef %30) #17
  %32 = load ptr, ptr @cfun, align 8, !tbaa !180
  %33 = getelementptr inbounds %struct.function, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !184
  %35 = getelementptr inbounds %struct.control_flow_graph, ptr %34, i64 0, i32 5
  %36 = load i32, ptr %35, align 8, !tbaa !244
  %37 = icmp ult i32 %31, %36
  br i1 %37, label %39, label %38, !prof !447

38:                                               ; preds = %29
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1340, ptr noundef nonnull @.str.16) #18
  br label %39

39:                                               ; preds = %29, %38
  %40 = zext i32 %31 to i64
  %41 = getelementptr inbounds ptr, ptr %1, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !180
  call fastcc void @bmp_iter_and_compl_init(ptr noundef nonnull %3, ptr noundef %42, ptr noundef %13, ptr noundef nonnull %5) #17
  %43 = call fastcc zeroext i8 @bmp_iter_and_compl(ptr noundef nonnull %3, ptr noundef nonnull %5) #17, !range !191
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %25, label %45, !prof !448

45:                                               ; preds = %39, %45
  %46 = load i32, ptr %5, align 4, !tbaa !218
  call fastcc void @VEC_int_heap_safe_push(ptr noundef nonnull %6, i32 noundef %46) #17
  %47 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %13, i32 noundef %46) #18
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %5) #17
  %48 = call fastcc zeroext i8 @bmp_iter_and_compl(ptr noundef nonnull %3, ptr noundef nonnull %5) #17, !range !191
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %23, label %45, !prof !449, !llvm.loop !450

50:                                               ; preds = %25, %16
  call fastcc void @VEC_int_heap_free(ptr noundef nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_int_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !441 !PGOFuncName !451 {
  %2 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 4) #18
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #14 !prof !441 !PGOFuncName !452 {
  %4 = load ptr, ptr %1, align 8, !tbaa !453
  store ptr %4, ptr %0, align 8, !tbaa !455
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !457
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8, !prof !458

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !455
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !459
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !461
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !249
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !462
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !218
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #13 !prof !463 !PGOFuncName !464 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !462
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !465

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51, !prof !466

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !218
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !prof !467, !llvm.loop !468

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !218
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !218
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !461
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !455
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !461
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31, !prof !469

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !249
  store i64 %35, ptr %3, align 8, !tbaa !462
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6, !prof !470

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !218
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !218
  %40 = load i32, ptr %23, align 8, !tbaa !461
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !461
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !prof !471, !llvm.loop !472

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !473
  store ptr %44, ptr %0, align 8, !tbaa !455
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46, !prof !474

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !459
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !218
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !462
  store i32 %16, ptr %1, align 4, !tbaa !218
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_int_base_quick_push(ptr noundef %0, i32 noundef %1) unnamed_addr #12 !prof !475 !PGOFuncName !476 {
  %3 = load i32, ptr %0, align 4, !tbaa !477
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 4, !tbaa !477
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %5
  store i32 %1, ptr %6, align 4, !tbaa !218
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #12 !prof !475 !PGOFuncName !479 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !462
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !462
  %6 = load i32, ptr %1, align 4, !tbaa !218
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !218
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_int_base_length(ptr noundef readonly %0) unnamed_addr #6 !prof !480 !PGOFuncName !481 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !482

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 4, !tbaa !477
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc i32 @VEC_int_base_pop(ptr nocapture noundef %0) unnamed_addr #12 !prof !475 !PGOFuncName !483 {
  %2 = load i32, ptr %0, align 4, !tbaa !477
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 4, !tbaa !477
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !218
  ret i32 %6
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_and_compl_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #13 !prof !475 !PGOFuncName !484 {
  %5 = load ptr, ptr %1, align 8, !tbaa !453
  store ptr %5, ptr %0, align 8, !tbaa !455
  %6 = load ptr, ptr %2, align 8, !tbaa !453
  %7 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !457
  %8 = icmp eq ptr %5, null
  br i1 %8, label %9, label %10, !prof !485

9:                                                ; preds = %4
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !455
  br label %10

10:                                               ; preds = %4, %9
  %11 = phi ptr [ %5, %4 ], [ @bitmap_zero_bits, %9 ]
  %12 = icmp eq ptr %6, null
  %13 = getelementptr inbounds %struct.bitmap_element_def, ptr %11, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !459
  br i1 %12, label %23, label %15, !prof !486

15:                                               ; preds = %10, %20
  %16 = phi ptr [ %21, %20 ], [ %6, %10 ]
  %17 = getelementptr inbounds %struct.bitmap_element_def, ptr %16, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !459
  %19 = icmp ult i32 %18, %14
  br i1 %19, label %20, label %28, !prof !487

20:                                               ; preds = %15
  %21 = load ptr, ptr %16, align 8, !tbaa !473
  store ptr %21, ptr %7, align 8, !tbaa !457
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %15, !prof !488, !llvm.loop !489

23:                                               ; preds = %20, %10
  %24 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %24, align 8, !tbaa !461
  %25 = getelementptr inbounds %struct.bitmap_element_def, ptr %11, i64 0, i32 3
  %26 = load i64, ptr %25, align 8, !tbaa !249
  %27 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %26, ptr %27, align 8, !tbaa !462
  br label %41

28:                                               ; preds = %15
  %29 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %29, align 8, !tbaa !461
  %30 = getelementptr inbounds %struct.bitmap_element_def, ptr %11, i64 0, i32 3
  %31 = load i64, ptr %30, align 8, !tbaa !249
  %32 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %31, ptr %32, align 8, !tbaa !462
  %33 = getelementptr inbounds %struct.bitmap_element_def, ptr %16, i64 0, i32 2
  %34 = load i32, ptr %33, align 8, !tbaa !459
  %35 = icmp eq i32 %14, %34
  br i1 %35, label %36, label %41, !prof !490

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.bitmap_element_def, ptr %16, i64 0, i32 3, i64 0
  %38 = load i64, ptr %37, align 8, !tbaa !249
  %39 = xor i64 %38, -1
  %40 = and i64 %31, %39
  store i64 %40, ptr %32, align 8, !tbaa !462
  br label %41

41:                                               ; preds = %23, %36, %28
  %42 = phi i64 [ %40, %36 ], [ %31, %28 ], [ %26, %23 ]
  %43 = shl i32 %14, 7
  %44 = icmp eq i64 %42, 0
  %45 = zext i1 %44 to i32
  %46 = or disjoint i32 %43, %45
  store i32 %46, ptr %3, align 4, !tbaa !218
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_and_compl(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #13 !prof !491 !PGOFuncName !492 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !462
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !493

6:                                                ; preds = %51, %2
  %7 = phi i64 [ %4, %2 ], [ %52, %51 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %79, !prof !494

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !218
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %78, !prof !495, !llvm.loop !496

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !218
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !218
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !461
  %25 = add i32 %24, 1
  %26 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  %27 = load ptr, ptr %0, align 8, !tbaa !455
  br label %28

28:                                               ; preds = %19, %76
  %29 = phi ptr [ %27, %19 ], [ %61, %76 ]
  %30 = phi i32 [ %25, %19 ], [ 0, %76 ]
  store i32 %30, ptr %23, align 8, !tbaa !461
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %60, label %32, !prof !497

32:                                               ; preds = %28
  %33 = load ptr, ptr %26, align 8, !tbaa !457
  %34 = icmp eq ptr %33, null
  %35 = getelementptr inbounds %struct.bitmap_element_def, ptr %33, i64 0, i32 2
  %36 = getelementptr inbounds %struct.bitmap_element_def, ptr %29, i64 0, i32 2
  br label %37

37:                                               ; preds = %32, %54
  %38 = phi i32 [ %30, %32 ], [ %58, %54 ]
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.bitmap_element_def, ptr %29, i64 0, i32 3, i64 %39
  %41 = load i64, ptr %40, align 8, !tbaa !249
  store i64 %41, ptr %3, align 8, !tbaa !462
  br i1 %34, label %51, label %42, !prof !498

42:                                               ; preds = %37
  %43 = load i32, ptr %35, align 8, !tbaa !459
  %44 = load i32, ptr %36, align 8, !tbaa !459
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %51, !prof !499

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %33, i64 0, i32 3, i64 %39
  %48 = load i64, ptr %47, align 8, !tbaa !249
  %49 = xor i64 %48, -1
  %50 = and i64 %41, %49
  store i64 %50, ptr %3, align 8, !tbaa !462
  br label %51

51:                                               ; preds = %42, %46, %37
  %52 = phi i64 [ %50, %46 ], [ %41, %37 ], [ %41, %42 ]
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %6, !prof !500

54:                                               ; preds = %51
  %55 = load i32, ptr %1, align 4, !tbaa !218
  %56 = add i32 %55, 64
  store i32 %56, ptr %1, align 4, !tbaa !218
  %57 = load i32, ptr %23, align 8, !tbaa !461
  %58 = add i32 %57, 1
  store i32 %58, ptr %23, align 8, !tbaa !461
  %59 = icmp eq i32 %58, 2
  br i1 %59, label %60, label %37, !prof !501, !llvm.loop !502

60:                                               ; preds = %54, %28
  %61 = load ptr, ptr %29, align 8, !tbaa !473
  store ptr %61, ptr %0, align 8, !tbaa !455
  %62 = icmp eq ptr %61, null
  br i1 %62, label %79, label %63, !prof !503

63:                                               ; preds = %60
  %64 = load ptr, ptr %26, align 8, !tbaa !457
  %65 = icmp eq ptr %64, null
  %66 = getelementptr inbounds %struct.bitmap_element_def, ptr %61, i64 0, i32 2
  %67 = load i32, ptr %66, align 8, !tbaa !459
  br i1 %65, label %76, label %68, !prof !504

68:                                               ; preds = %63, %73
  %69 = phi ptr [ %74, %73 ], [ %64, %63 ]
  %70 = getelementptr inbounds %struct.bitmap_element_def, ptr %69, i64 0, i32 2
  %71 = load i32, ptr %70, align 8, !tbaa !459
  %72 = icmp ult i32 %71, %67
  br i1 %72, label %73, label %76, !prof !505

73:                                               ; preds = %68
  %74 = load ptr, ptr %69, align 8, !tbaa !473
  store ptr %74, ptr %26, align 8, !tbaa !457
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %68, !prof !506, !llvm.loop !507

76:                                               ; preds = %68, %73, %63
  %77 = shl i32 %67, 7
  store i32 %77, ptr %1, align 4, !tbaa !218
  br label %28

78:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !462
  store i32 %16, ptr %1, align 4, !tbaa !218
  br label %79

79:                                               ; preds = %60, %6, %78
  %80 = phi i8 [ 1, %78 ], [ 1, %6 ], [ 0, %60 ]
  ret i8 %80
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_int_heap_safe_push(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !508 !PGOFuncName !509 {
  tail call fastcc void @VEC_int_heap_reserve(ptr noundef %0) #17
  %3 = load ptr, ptr %0, align 8, !tbaa !180
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %3, i32 noundef %1) #17
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_int_heap_free(ptr nocapture noundef %0) unnamed_addr #8 !prof !441 !PGOFuncName !510 {
  %2 = load ptr, ptr %0, align 8, !tbaa !180
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !511

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #17
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !180
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !512 !PGOFuncName !513 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !514

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #17
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #17
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !515 !PGOFuncName !516 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !517

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 687, ptr noundef nonnull @.str.16) #18
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !180
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_safe_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !518 !PGOFuncName !519 {
  %3 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #17, !range !191
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %7, !prof !520

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #17
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  ret ptr %8
}

; Function Attrs: optsize
declare void @remove_edge(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @get_immediate_dominator(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_int_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !508 !PGOFuncName !521 {
  %2 = load ptr, ptr %0, align 8, !tbaa !180
  %3 = tail call fastcc i32 @VEC_int_base_space(ptr noundef %2) #17
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !522

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_o_reserve(ptr noundef %2, i32 noundef 1, i64 noundef 8, i64 noundef 4) #18
  store ptr %6, ptr %0, align 8, !tbaa !180
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_int_base_space(ptr noundef readonly %0) unnamed_addr #6 !prof !508 !PGOFuncName !523 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !522

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !524
  %6 = load i32, ptr %0, align 4, !tbaa !477
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #16

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { optsize }
attributes #18 = { nounwind optsize }
attributes #19 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!178}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177}
!35 = !{ptr @forwarder_block_p, ptr @single_succ_p, i64 3659368}
!36 = !{ptr @forwarder_block_p, ptr @flow_active_insn_p, i64 554346}
!37 = !{ptr @forwarder_block_p, ptr @simplejump_p, i64 50623}
!38 = !{ptr @single_succ_p, ptr @VEC_edge_base_length, i64 3659370}
!39 = !{ptr @flow_active_insn_p, ptr @active_insn_p, i64 552615}
!40 = !{ptr @can_fallthru, ptr @ei_start_1, i64 445122}
!41 = !{ptr @can_fallthru, ptr @ei_cond, i64 1334659}
!42 = !{ptr @can_fallthru, ptr @ei_next, i64 889537}
!43 = !{ptr @can_fallthru, ptr @active_insn_p, i64 445121}
!44 = !{ptr @can_fallthru, ptr @next_active_insn, i64 890242}
!45 = !{ptr @ei_cond, ptr @ei_end_p, i64 31443850}
!46 = !{ptr @ei_cond, ptr @ei_edge, i64 20414835}
!47 = !{ptr @ei_next, ptr @ei_container, i64 61091153}
!48 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 30545577}
!49 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!50 = !{ptr @mark_dfs_back_edges, ptr @xcalloc, i64 1018}
!51 = !{ptr @mark_dfs_back_edges, ptr @xmalloc, i64 509}
!52 = !{ptr @mark_dfs_back_edges, ptr @sbitmap_alloc, i64 509}
!53 = !{ptr @mark_dfs_back_edges, ptr @sbitmap_zero, i64 509}
!54 = !{ptr @mark_dfs_back_edges, ptr @ei_start_1, i64 1534128}
!55 = !{ptr @mark_dfs_back_edges, ptr @ei_edge, i64 13612489}
!56 = !{ptr @mark_dfs_back_edges, ptr @SET_BIT, i64 1534265}
!57 = !{ptr @mark_dfs_back_edges, ptr @VEC_edge_base_length, i64 1534265}
!58 = !{ptr @mark_dfs_back_edges, ptr @ei_one_before_end_p, i64 6006462}
!59 = !{ptr @mark_dfs_back_edges, ptr @ei_next, i64 1469103}
!60 = !{ptr @mark_dfs_back_edges, ptr @free, i64 2545}
!61 = !{ptr @ei_edge, ptr @ei_container, i64 199229029}
!62 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 99614515}
!63 = !{ptr @ei_one_before_end_p, ptr @ei_container, i64 97491737}
!64 = !{ptr @ei_one_before_end_p, ptr @VEC_edge_base_length, i64 48745869}
!65 = !{ptr @set_edge_can_fallthru_flag, ptr @ei_start_1, i64 149408}
!66 = !{ptr @set_edge_can_fallthru_flag, ptr @ei_cond, i64 445722}
!67 = !{ptr @set_edge_can_fallthru_flag, ptr @ei_next, i64 296314}
!68 = !{ptr @set_edge_can_fallthru_flag, ptr @VEC_edge_base_length, i64 149408}
!69 = !{ptr @set_edge_can_fallthru_flag, ptr @any_condjump_p, i64 144321}
!70 = !{ptr @set_edge_can_fallthru_flag, ptr @invert_jump, i64 288639}
!71 = !{ptr @set_edge_can_fallthru_flag, ptr @VEC_edge_base_index, i64 288638}
!72 = !{ptr @find_unreachable_blocks, ptr @xmalloc, i64 1122}
!73 = !{ptr @find_unreachable_blocks, ptr @ei_start_1, i64 6150116}
!74 = !{ptr @find_unreachable_blocks, ptr @ei_cond, i64 17512570}
!75 = !{ptr @find_unreachable_blocks, ptr @ei_next, i64 11362454}
!76 = !{ptr @find_unreachable_blocks, ptr @free, i64 1122}
!77 = !{ptr @create_edge_list, ptr @VEC_edge_base_length, i64 310167}
!78 = !{ptr @create_edge_list, ptr @xmalloc, i64 218}
!79 = !{ptr @create_edge_list, ptr @ei_start_1, i64 310167}
!80 = !{ptr @create_edge_list, ptr @ei_cond, i64 911042}
!81 = !{ptr @create_edge_list, ptr @ei_next, i64 600875}
!82 = !{ptr @free_edge_list, ptr @free, i64 218}
!83 = !{ptr @find_edge, ptr @VEC_edge_base_length, i64 7167846}
!84 = !{ptr @find_edge, ptr @ei_start_1, i64 3583923}
!85 = !{ptr @find_edge, ptr @ei_cond, i64 6193574}
!86 = !{ptr @find_edge, ptr @ei_next, i64 2609651}
!87 = !{ptr @remove_fake_predecessors, ptr @ei_start_1, i64 261}
!88 = !{ptr @remove_fake_predecessors, ptr @ei_safe_edge, i64 951}
!89 = !{ptr @remove_fake_predecessors, ptr @remove_edge, i64 409}
!90 = !{ptr @remove_fake_predecessors, ptr @ei_next, i64 282}
!91 = !{ptr @remove_fake_exit_edges, ptr @remove_fake_predecessors, i64 261}
!92 = !{ptr @add_noreturn_fake_exit_edges, ptr @VEC_edge_base_length, i64 451790}
!93 = !{ptr @add_noreturn_fake_exit_edges, ptr @make_single_succ_edge, i64 242}
!94 = !{ptr @connect_infinite_loops_to_exit, ptr @flow_dfs_compute_reverse_init, i64 192}
!95 = !{ptr @connect_infinite_loops_to_exit, ptr @flow_dfs_compute_reverse_add_bb, i64 381}
!96 = !{ptr @connect_infinite_loops_to_exit, ptr @flow_dfs_compute_reverse_execute, i64 381}
!97 = !{ptr @connect_infinite_loops_to_exit, ptr @make_edge, i64 189}
!98 = !{ptr @connect_infinite_loops_to_exit, ptr @flow_dfs_compute_reverse_finish, i64 192}
!99 = !{ptr @flow_dfs_compute_reverse_init, ptr @xmalloc, i64 192}
!100 = !{ptr @flow_dfs_compute_reverse_init, ptr @sbitmap_alloc, i64 192}
!101 = !{ptr @flow_dfs_compute_reverse_init, ptr @sbitmap_zero, i64 192}
!102 = !{ptr @flow_dfs_compute_reverse_add_bb, ptr @SET_BIT, i64 1124124}
!103 = !{ptr @flow_dfs_compute_reverse_execute, ptr @ei_start_1, i64 1121183}
!104 = !{ptr @flow_dfs_compute_reverse_execute, ptr @ei_cond, i64 2966529}
!105 = !{ptr @flow_dfs_compute_reverse_execute, ptr @flow_dfs_compute_reverse_add_bb, i64 1120802}
!106 = !{ptr @flow_dfs_compute_reverse_execute, ptr @ei_next, i64 1845346}
!107 = !{ptr @flow_dfs_compute_reverse_finish, ptr @free, i64 576}
!108 = !{ptr @post_order_compute, ptr @xmalloc, i64 1071}
!109 = !{ptr @post_order_compute, ptr @sbitmap_alloc, i64 1071}
!110 = !{ptr @post_order_compute, ptr @sbitmap_zero, i64 1071}
!111 = !{ptr @post_order_compute, ptr @ei_start_1, i64 4957969}
!112 = !{ptr @post_order_compute, ptr @ei_edge, i64 28602314}
!113 = !{ptr @post_order_compute, ptr @SET_BIT, i64 4958524}
!114 = !{ptr @post_order_compute, ptr @VEC_edge_base_length, i64 4958524}
!115 = !{ptr @post_order_compute, ptr @ei_one_before_end_p, i64 18685268}
!116 = !{ptr @post_order_compute, ptr @ei_next, i64 4384664}
!117 = !{ptr @post_order_compute, ptr @delete_basic_block, i64 7}
!118 = !{ptr @post_order_compute, ptr @tidy_fallthru_edges, i64 1}
!119 = !{ptr @post_order_compute, ptr @free, i64 3213}
!120 = !{ptr @inverted_post_order_compute, ptr @xmalloc, i64 1071}
!121 = !{ptr @inverted_post_order_compute, ptr @sbitmap_alloc, i64 1071}
!122 = !{ptr @inverted_post_order_compute, ptr @sbitmap_zero, i64 1071}
!123 = !{ptr @inverted_post_order_compute, ptr @VEC_edge_base_length, i64 9925927}
!124 = !{ptr @inverted_post_order_compute, ptr @ei_start_1, i64 4964191}
!125 = !{ptr @inverted_post_order_compute, ptr @SET_BIT, i64 4965262}
!126 = !{ptr @inverted_post_order_compute, ptr @ei_edge, i64 28627726}
!127 = !{ptr @inverted_post_order_compute, ptr @ei_one_before_end_p, i64 18701011}
!128 = !{ptr @inverted_post_order_compute, ptr @ei_next, i64 4387117}
!129 = !{ptr @inverted_post_order_compute, ptr @ei_cond, i64 14}
!130 = !{ptr @inverted_post_order_compute, ptr @dfs_find_deadend, i64 1}
!131 = !{ptr @inverted_post_order_compute, ptr @free, i64 3213}
!132 = !{ptr @pre_and_rev_post_order_compute, ptr @xmalloc, i64 306}
!133 = !{ptr @pre_and_rev_post_order_compute, ptr @sbitmap_alloc, i64 306}
!134 = !{ptr @pre_and_rev_post_order_compute, ptr @sbitmap_zero, i64 306}
!135 = !{ptr @pre_and_rev_post_order_compute, ptr @ei_start_1, i64 1484481}
!136 = !{ptr @pre_and_rev_post_order_compute, ptr @ei_edge, i64 8275780}
!137 = !{ptr @pre_and_rev_post_order_compute, ptr @SET_BIT, i64 1484681}
!138 = !{ptr @pre_and_rev_post_order_compute, ptr @VEC_edge_base_length, i64 1484681}
!139 = !{ptr @pre_and_rev_post_order_compute, ptr @ei_one_before_end_p, i64 5306418}
!140 = !{ptr @pre_and_rev_post_order_compute, ptr @ei_next, i64 1168728}
!141 = !{ptr @pre_and_rev_post_order_compute, ptr @free, i64 918}
!142 = !{ptr @pre_and_rev_post_order_compute, ptr @fancy_abort, i64 1}
!143 = !{ptr @compute_dominance_frontiers, ptr @timevar_push_1, i64 1}
!144 = !{ptr @compute_dominance_frontiers, ptr @compute_dominance_frontiers_1, i64 265}
!145 = !{ptr @compute_dominance_frontiers, ptr @timevar_pop_1, i64 1}
!146 = !{ptr @compute_dominance_frontiers_1, ptr @VEC_edge_base_length, i64 1669170}
!147 = !{ptr @compute_dominance_frontiers_1, ptr @ei_start_1, i64 541819}
!148 = !{ptr @compute_dominance_frontiers_1, ptr @ei_cond, i64 2529748}
!149 = !{ptr @compute_dominance_frontiers_1, ptr @get_immediate_dominator, i64 5783090}
!150 = !{ptr @compute_dominance_frontiers_1, ptr @bitmap_bit_p, i64 4794528}
!151 = !{ptr @compute_dominance_frontiers_1, ptr @bitmap_set_bit, i64 3795162}
!152 = !{ptr @compute_dominance_frontiers_1, ptr @ei_next, i64 1987929}
!153 = !{ptr @compute_idf, ptr @VEC_int_heap_alloc, i64 91941}
!154 = !{ptr @compute_idf, ptr @bitmap_obstack_alloc_stat, i64 91941}
!155 = !{ptr @compute_idf, ptr @bmp_iter_set_init, i64 91941}
!156 = !{ptr @compute_idf, ptr @bmp_iter_set, i64 708131}
!157 = !{ptr @compute_idf, ptr @VEC_int_base_length, i64 1378049}
!158 = !{ptr @compute_idf, ptr @VEC_int_base_quick_push, i64 616190}
!159 = !{ptr @compute_idf, ptr @bmp_iter_next, i64 1286109}
!160 = !{ptr @compute_idf, ptr @VEC_int_base_pop, i64 1286108}
!161 = !{ptr @compute_idf, ptr @fancy_abort, i64 1}
!162 = !{ptr @compute_idf, ptr @bmp_iter_and_compl_init, i64 1286108}
!163 = !{ptr @compute_idf, ptr @bmp_iter_and_compl, i64 1956027}
!164 = !{ptr @compute_idf, ptr @VEC_int_heap_safe_push, i64 669919}
!165 = !{ptr @compute_idf, ptr @bitmap_set_bit, i64 669919}
!166 = !{ptr @compute_idf, ptr @VEC_int_heap_free, i64 91941}
!167 = !{ptr @VEC_int_heap_alloc, ptr @vec_heap_o_reserve_exact, i64 91941}
!168 = !{ptr @VEC_int_heap_safe_push, ptr @VEC_int_heap_reserve, i64 669925}
!169 = !{ptr @VEC_int_heap_safe_push, ptr @VEC_int_base_quick_push, i64 669925}
!170 = !{ptr @VEC_int_heap_free, ptr @free, i64 91940}
!171 = !{ptr @ei_end_p, ptr @ei_container, i64 61686810}
!172 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 31444803}
!173 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!174 = !{ptr @ei_safe_edge, ptr @ei_end_p, i64 953}
!175 = !{ptr @ei_safe_edge, ptr @ei_edge, i64 692}
!176 = !{ptr @VEC_int_heap_reserve, ptr @VEC_int_base_space, i64 669925}
!177 = !{ptr @VEC_int_heap_reserve, ptr @vec_heap_o_reserve, i64 1}
!178 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!179 = !{!"function_entry_count", i64 3659370}
!180 = !{!181, !181, i64 0}
!181 = !{!"any pointer", !182, i64 0}
!182 = !{!"omnipotent char", !183, i64 0}
!183 = !{!"Simple C/C++ TBAA"}
!184 = !{!185, !181, i64 8}
!185 = !{!"function", !181, i64 0, !181, i64 8, !181, i64 16, !181, i64 24, !181, i64 32, !181, i64 40, !181, i64 48, !181, i64 56, !181, i64 64, !181, i64 72, !181, i64 80, !181, i64 88, !181, i64 96, !186, i64 104, !186, i64 108, !186, i64 112, !186, i64 116, !186, i64 120, !186, i64 124, !181, i64 128, !186, i64 136, !186, i64 137, !186, i64 138, !186, i64 138, !186, i64 138, !186, i64 138, !186, i64 138, !186, i64 138, !186, i64 138, !186, i64 139, !186, i64 139, !186, i64 139, !186, i64 139, !186, i64 139, !186, i64 139, !186, i64 139}
!186 = !{!"int", !182, i64 0}
!187 = !{!188, !181, i64 8}
!188 = !{!"control_flow_graph", !181, i64 0, !181, i64 8, !181, i64 16, !186, i64 24, !186, i64 28, !186, i64 32, !181, i64 40, !186, i64 48, !182, i64 52, !182, i64 60, !186, i64 68, !186, i64 72}
!189 = !{!"branch_weights", i32 1, i32 3659371}
!190 = !{!188, !181, i64 0}
!191 = !{i8 0, i8 2}
!192 = !{!"branch_weights", i32 3040840, i32 618532}
!193 = !{!182, !182, i64 0}
!194 = !{!195, !181, i64 8}
!195 = !{!"rtl_bb_info", !181, i64 0, !181, i64 8, !181, i64 16, !181, i64 24, !186, i64 32}
!196 = !{!"branch_weights", i32 1, i32 482458}
!197 = !{!"branch_weights", i32 337921664, i32 -1520462069}
!198 = !{!"branch_weights", i32 82, i32 136074}
!199 = !{!"branch_weights", i32 482458, i32 771624}
!200 = distinct !{!200, !201}
!201 = !{!"llvm.loop.mustprogress"}
!202 = !{!"branch_weights", i32 -964392927, i32 99670747}
!203 = !{!"branch_weights", i32 51979, i32 416462}
!204 = !{!"branch_weights", i32 1, i32 51979}
!205 = !{!"cfganal.c:single_succ_p"}
!206 = !{!207, !181, i64 8}
!207 = !{!"basic_block_def", !181, i64 0, !181, i64 8, !181, i64 16, !181, i64 24, !182, i64 32, !181, i64 48, !181, i64 56, !182, i64 64, !208, i64 72, !186, i64 80, !186, i64 84, !186, i64 88, !186, i64 92, !186, i64 96}
!208 = !{!"long", !182, i64 0}
!209 = !{!"function_entry_count", i64 552615}
!210 = !{!"cfganal.c:flow_active_insn_p"}
!211 = !{!"branch_weights", i32 102, i32 552515}
!212 = !{!"branch_weights", i32 1, i32 102}
!213 = !{!"function_entry_count", i64 491941}
!214 = !{!"branch_weights", i32 39, i32 491904}
!215 = !{!207, !181, i64 56}
!216 = !{!"branch_weights", i32 445125, i32 46780}
!217 = !{i64 0, i64 4, !218, i64 8, i64 8, !180}
!218 = !{!186, !186, i64 0}
!219 = !{i64 0, i64 8, !180}
!220 = !{!"branch_weights", i32 1, i32 445124}
!221 = !{!222, !181, i64 8}
!222 = !{!"edge_def", !181, i64 0, !181, i64 8, !182, i64 16, !181, i64 24, !181, i64 32, !186, i64 40, !186, i64 44, !186, i64 48, !186, i64 52, !208, i64 56}
!223 = !{!"branch_weights", i32 1, i32 889542}
!224 = !{!222, !186, i64 48}
!225 = !{!"branch_weights", i32 445124, i32 444418}
!226 = distinct !{!226, !201}
!227 = !{!195, !181, i64 0}
!228 = !{!"branch_weights", i32 1, i32 445125}
!229 = !{!"branch_weights", i32 445125, i32 1}
!230 = !{!"function_entry_count", i64 25272541}
!231 = !{!"cfganal.c:ei_start_1"}
!232 = !{!"function_entry_count", i64 31443850}
!233 = !{!"cfganal.c:ei_cond"}
!234 = !{!"branch_weights", i32 20414836, i32 11029016}
!235 = !{!"function_entry_count", i64 30545577}
!236 = !{!"cfganal.c:ei_next"}
!237 = !{!"branch_weights", i32 1, i32 30545578}
!238 = !{!"branch_weights", i32 30545578, i32 1}
!239 = !{!240, !186, i64 0}
!240 = !{!"", !186, i64 0, !181, i64 8}
!241 = !{!"function_entry_count", i64 0}
!242 = distinct !{!242, !201}
!243 = !{!"function_entry_count", i64 509}
!244 = !{!188, !186, i64 32}
!245 = !{!188, !186, i64 24}
!246 = !{!222, !181, i64 0}
!247 = !{!"branch_weights", i32 749, i32 4545663}
!248 = !{!207, !186, i64 80}
!249 = !{!208, !208, i64 0}
!250 = !{!"branch_weights", i32 1537280, i32 3008384}
!251 = !{!"branch_weights", i32 647, i32 1536634}
!252 = !{!"branch_weights", i32 510, i32 3007875}
!253 = !{!"branch_weights", i32 2128124, i32 879752}
!254 = !{!"branch_weights", i32 1, i32 879752}
!255 = !{!"branch_weights", i32 1471990, i32 1537143}
!256 = !{!"branch_weights", i32 510, i32 1536634}
!257 = !{!"branch_weights", i32 510, i32 4545901}
!258 = distinct !{!258, !201}
!259 = !{!260, !181, i64 0}
!260 = !{!"simple_bitmap_def", !181, i64 0, !186, i64 8, !186, i64 12, !182, i64 16}
!261 = !{!"function_entry_count", i64 99614515}
!262 = !{!"cfganal.c:ei_edge"}
!263 = !{!"branch_weights", i32 1, i32 99614516}
!264 = !{!"function_entry_count", i64 14079385}
!265 = !{!"cfganal.c:SET_BIT"}
!266 = !{!"branch_weights", i32 14079386, i32 1}
!267 = !{!"function_entry_count", i64 142080701}
!268 = !{!"cfganal.c:VEC_edge_base_length"}
!269 = !{!"branch_weights", i32 2543628, i32 139537075}
!270 = !{!271, !186, i64 0}
!271 = !{!"VEC_edge_base", !186, i64 0, !186, i64 4, !182, i64 8}
!272 = !{!"function_entry_count", i64 48745869}
!273 = !{!"cfganal.c:ei_one_before_end_p"}
!274 = !{!"branch_weights", i32 1, i32 48745870}
!275 = !{!"function_entry_count", i64 38}
!276 = !{!"branch_weights", i32 1, i32 155}
!277 = !{!"branch_weights", i32 1, i32 153339}
!278 = !{!"branch_weights", i32 153339, i32 150773}
!279 = distinct !{!279, !201}
!280 = !{!"branch_weights", i32 148120, i32 5221}
!281 = !{!"branch_weights", i32 1, i32 148120}
!282 = !{!"branch_weights", i32 155, i32 613205}
!283 = distinct !{!283, !201}
!284 = !{!"function_entry_count", i64 99910753}
!285 = !{!"cfganal.c:VEC_edge_base_index"}
!286 = !{!"function_entry_count", i64 1122}
!287 = !{!"branch_weights", i32 1, i32 1122}
!288 = !{!207, !186, i64 96}
!289 = !{!"branch_weights", i32 1122, i32 6153345}
!290 = distinct !{!290, !201}
!291 = !{!"branch_weights", i32 1122, i32 1}
!292 = distinct !{!292, !201}
!293 = !{!"branch_weights", i32 1122, i32 6153355}
!294 = distinct !{!294, !201}
!295 = !{!"branch_weights", i32 1, i32 6154476}
!296 = !{!"branch_weights", i32 6153355, i32 5218109}
!297 = !{!"branch_weights", i32 6154476, i32 5216987}
!298 = distinct !{!298, !201}
!299 = !{!"function_entry_count", i64 109}
!300 = !{!"branch_weights", i32 1, i32 219}
!301 = !{!"branch_weights", i32 219, i32 625807}
!302 = distinct !{!302, !201}
!303 = !{!304, !186, i64 0}
!304 = !{!"edge_list", !186, i64 0, !186, i64 4, !181, i64 8}
!305 = !{!304, !186, i64 4}
!306 = !{!304, !181, i64 8}
!307 = !{!"branch_weights", i32 1, i32 313012}
!308 = !{!"branch_weights", i32 313012, i32 293376}
!309 = distinct !{!309, !201}
!310 = distinct !{!310, !201}
!311 = !{!"function_entry_count", i64 261}
!312 = !{!"branch_weights", i32 153, i32 110}
!313 = distinct !{!313, !201}
!314 = distinct !{!314, !201}
!315 = distinct !{!315, !201}
!316 = distinct !{!316, !201}
!317 = distinct !{!317, !201}
!318 = distinct !{!318, !201}
!319 = distinct !{!319, !201}
!320 = distinct !{!320, !201}
!321 = !{!"function_entry_count", i64 3583923}
!322 = !{!207, !181, i64 0}
!323 = !{!"branch_weights", i32 1627532, i32 1956393}
!324 = !{!"branch_weights", i32 1, i32 1397973}
!325 = !{!"branch_weights", i32 558420, i32 1942191}
!326 = !{!"branch_weights", i32 1397973, i32 1102637}
!327 = distinct !{!327, !201}
!328 = !{!"branch_weights", i32 1, i32 895983}
!329 = !{!"branch_weights", i32 731549, i32 164440}
!330 = !{!"branch_weights", i32 895983, i32 5}
!331 = distinct !{!331, !201}
!332 = distinct !{!332, !201}
!333 = !{!"cfganal.c:sbitmap_iter_init"}
!334 = !{!335, !186, i64 12}
!335 = !{!"", !181, i64 0, !186, i64 8, !186, i64 12, !186, i64 16, !208, i64 24}
!336 = !{!335, !186, i64 16}
!337 = !{!260, !186, i64 12}
!338 = !{!335, !186, i64 8}
!339 = !{!335, !181, i64 0}
!340 = !{!"cfganal.c:sbitmap_iter_cond"}
!341 = !{!335, !208, i64 24}
!342 = distinct !{!342, !201}
!343 = distinct !{!343, !201}
!344 = !{!"cfganal.c:sbitmap_iter_next"}
!345 = distinct !{!345, !201}
!346 = distinct !{!346, !201}
!347 = !{!"cfganal.c:remove_fake_predecessors"}
!348 = !{!"branch_weights", i32 1, i32 261}
!349 = !{!"branch_weights", i32 283, i32 411}
!350 = !{!"branch_weights", i32 261, i32 432}
!351 = distinct !{!351, !201}
!352 = !{!"function_entry_count", i64 147}
!353 = !{!"branch_weights", i32 1, i32 147}
!354 = !{!"branch_weights", i32 244, i32 454621}
!355 = !{!"branch_weights", i32 147, i32 454717}
!356 = distinct !{!356, !201}
!357 = !{!"function_entry_count", i64 192}
!358 = !{!"branch_weights", i32 3, i32 190}
!359 = !{!"branch_weights", i32 190, i32 0}
!360 = !{!"cfganal.c:flow_dfs_compute_reverse_init"}
!361 = !{!362, !181, i64 0}
!362 = !{!"depth_first_search_dsS", !181, i64 0, !186, i64 8, !181, i64 16}
!363 = !{!362, !186, i64 8}
!364 = !{!362, !181, i64 16}
!365 = !{!"function_entry_count", i64 1124124}
!366 = !{!"cfganal.c:flow_dfs_compute_reverse_add_bb"}
!367 = !{!"function_entry_count", i64 381}
!368 = !{!"cfganal.c:flow_dfs_compute_reverse_execute"}
!369 = !{!"branch_weights", i32 1, i32 381}
!370 = !{!"branch_weights", i32 381, i32 1123744}
!371 = distinct !{!371, !201}
!372 = !{!"branch_weights", i32 1, i32 192}
!373 = !{!"branch_weights", i32 1, i32 1124124}
!374 = !{!"branch_weights", i32 1123744, i32 726446}
!375 = !{!"branch_weights", i32 1124124, i32 726065}
!376 = distinct !{!376, !201}
!377 = !{!"branch_weights", i32 190, i32 1124125}
!378 = !{!207, !181, i64 48}
!379 = !{!"branch_weights", i32 192, i32 1124122}
!380 = distinct !{!380, !201}
!381 = !{!"cfganal.c:flow_dfs_compute_reverse_finish"}
!382 = !{!"function_entry_count", i64 1071}
!383 = !{!"branch_weights", i32 1, i32 1072}
!384 = !{!"branch_weights", i32 1582, i32 14312929}
!385 = !{!"branch_weights", i32 4963154, i32 9349776}
!386 = !{!"branch_weights", i32 1627, i32 4961528}
!387 = !{!"branch_weights", i32 4388759, i32 4962599}
!388 = !{!"branch_weights", i32 1072, i32 4961528}
!389 = !{!"branch_weights", i32 1072, i32 14313438}
!390 = distinct !{!390, !201}
!391 = !{!"branch_weights", i32 1072, i32 1}
!392 = distinct !{!392, !201}
!393 = !{!"branch_weights", i32 1, i32 1071}
!394 = !{!"branch_weights", i32 2698, i32 4962599}
!395 = !{!"branch_weights", i32 1, i32 2698}
!396 = !{!"branch_weights", i32 1071, i32 4964225}
!397 = distinct !{!397, !201}
!398 = !{!"branch_weights", i32 4962599, i32 9351357}
!399 = !{!"branch_weights", i32 1582, i32 9349776}
!400 = !{!"branch_weights", i32 4386623, i32 4963154}
!401 = !{!"branch_weights", i32 4387133, i32 4964225}
!402 = !{!"branch_weights", i32 1071, i32 14312884}
!403 = distinct !{!403, !201}
!404 = !{!"branch_weights", i32 1, i32 4964225}
!405 = distinct !{!405, !201}
!406 = !{!"branch_weights", i32 1071, i32 4963154}
!407 = distinct !{!407, !201}
!408 = !{!"branch_weights", i32 2145519561, i32 1964087}
!409 = !{!"cfganal.c:dfs_find_deadend"}
!410 = !{!"function_entry_count", i64 306}
!411 = !{!"branch_weights", i32 307, i32 1}
!412 = !{!"branch_weights", i32 345, i32 4151073}
!413 = !{!"branch_weights", i32 1489535, i32 2661539}
!414 = !{!"branch_weights", i32 1489535, i32 1}
!415 = !{!"branch_weights", i32 507, i32 1489029}
!416 = !{!"branch_weights", i32 1, i32 507}
!417 = !{!"branch_weights", i32 1172549, i32 1489335}
!418 = !{!"branch_weights", i32 -2129725731, i32 447872}
!419 = !{!"branch_weights", i32 307, i32 4151110}
!420 = distinct !{!420, !201}
!421 = distinct !{!421, !201}
!422 = distinct !{!422, !201}
!423 = distinct !{!423, !201}
!424 = distinct !{!424, !201}
!425 = !{!"cfganal.c:RESET_BIT"}
!426 = !{!"function_entry_count", i64 265}
!427 = !{!"branch_weights", i32 266, i32 1}
!428 = !{!"cfganal.c:compute_dominance_frontiers_1"}
!429 = !{!"branch_weights", i32 1, i32 265}
!430 = !{!"branch_weights", i32 543863, i32 1131605}
!431 = !{!"branch_weights", i32 1, i32 543862}
!432 = !{!"branch_weights", i32 1, i32 1995429}
!433 = !{!"branch_weights", i32 1, i32 1108440}
!434 = !{!"branch_weights", i32 3368403, i32 886989}
!435 = !{!"branch_weights", i32 1108440, i32 3146951}
!436 = distinct !{!436, !201}
!437 = !{!"branch_weights", i32 543862, i32 1451567}
!438 = distinct !{!438, !201}
!439 = !{!"branch_weights", i32 265, i32 1675202}
!440 = distinct !{!440, !201}
!441 = !{!"function_entry_count", i64 91941}
!442 = !{!"branch_weights", i32 1, i32 91941}
!443 = !{!"branch_weights", i32 91941, i32 524256}
!444 = distinct !{!444, !201}
!445 = !{!"branch_weights", i32 91941, i32 1194181}
!446 = distinct !{!446, !201}
!447 = !{!"branch_weights", i32 1286122, i32 1}
!448 = !{!"branch_weights", i32 616196, i32 669926}
!449 = !{!"branch_weights", i32 669926, i32 0}
!450 = distinct !{!450, !201}
!451 = !{!"cfganal.c:VEC_int_heap_alloc"}
!452 = !{!"cfganal.c:bmp_iter_set_init"}
!453 = !{!454, !181, i64 0}
!454 = !{!"bitmap_head_def", !181, i64 0, !181, i64 8, !186, i64 16, !181, i64 24}
!455 = !{!456, !181, i64 0}
!456 = !{!"", !181, i64 0, !181, i64 8, !186, i64 16, !208, i64 24}
!457 = !{!456, !181, i64 8}
!458 = !{!"branch_weights", i32 41, i32 91902}
!459 = !{!460, !186, i64 16}
!460 = !{!"bitmap_element_def", !181, i64 0, !181, i64 8, !186, i64 16, !182, i64 24}
!461 = !{!456, !186, i64 16}
!462 = !{!456, !208, i64 24}
!463 = !{!"function_entry_count", i64 708137}
!464 = !{!"cfganal.c:bmp_iter_set"}
!465 = !{!"branch_weights", i32 243275, i32 464864}
!466 = !{!"branch_weights", i32 616196, i32 1}
!467 = !{!"branch_weights", i32 5773172, i32 616196}
!468 = distinct !{!468, !201}
!469 = !{!"branch_weights", i32 1, i32 187027}
!470 = !{!"branch_weights", i32 130781, i32 151334}
!471 = !{!"branch_weights", i32 187027, i32 95087}
!472 = distinct !{!472, !201}
!473 = !{!460, !181, i64 0}
!474 = !{!"branch_weights", i32 91942, i32 95087}
!475 = !{!"function_entry_count", i64 1286121}
!476 = !{!"cfganal.c:VEC_int_base_quick_push"}
!477 = !{!478, !186, i64 0}
!478 = !{!"VEC_int_base", !186, i64 0, !186, i64 4, !182, i64 8}
!479 = !{!"cfganal.c:bmp_iter_next"}
!480 = !{!"function_entry_count", i64 1378062}
!481 = !{!"cfganal.c:VEC_int_base_length"}
!482 = !{!"branch_weights", i32 1, i32 1378063}
!483 = !{!"cfganal.c:VEC_int_base_pop"}
!484 = !{!"cfganal.c:bmp_iter_and_compl_init"}
!485 = !{!"branch_weights", i32 92029, i32 1194094}
!486 = !{!"branch_weights", i32 1, i32 130226}
!487 = !{!"branch_weights", i32 30063010, i32 1286122}
!488 = !{!"branch_weights", i32 130226, i32 31088679}
!489 = distinct !{!489, !201}
!490 = !{!"branch_weights", i32 1002911, i32 152986}
!491 = !{!"function_entry_count", i64 1956046}
!492 = !{!"cfganal.c:bmp_iter_and_compl"}
!493 = !{!"branch_weights", i32 1628193, i32 327855}
!494 = !{!"branch_weights", i32 669925, i32 1}
!495 = !{!"branch_weights", i32 19159125, i32 669925}
!496 = distinct !{!496, !201}
!497 = !{!"branch_weights", i32 1, i32 1756861}
!498 = !{!"branch_weights", i32 208261, i32 2019342}
!499 = !{!"branch_weights", i32 1855675, i32 163668}
!500 = !{!"branch_weights", i32 1885531, i32 342072}
!501 = !{!"branch_weights", i32 1756861, i32 470741}
!502 = distinct !{!502, !201}
!503 = !{!"branch_weights", i32 1286122, i32 470741}
!504 = !{!"branch_weights", i32 1, i32 39017}
!505 = !{!"branch_weights", i32 18531524, i32 470741}
!506 = !{!"branch_weights", i32 39017, i32 18924230}
!507 = distinct !{!507, !201}
!508 = !{!"function_entry_count", i64 669925}
!509 = !{!"cfganal.c:VEC_int_heap_safe_push"}
!510 = !{!"cfganal.c:VEC_int_heap_free"}
!511 = !{!"branch_weights", i32 1, i32 91942}
!512 = !{!"function_entry_count", i64 31444803}
!513 = !{!"cfganal.c:ei_end_p"}
!514 = !{!"branch_weights", i32 1202796, i32 30242009}
!515 = !{!"function_entry_count", i64 419498733}
!516 = !{!"cfganal.c:ei_container"}
!517 = !{!"branch_weights", i32 1, i32 419498734}
!518 = !{!"function_entry_count", i64 953}
!519 = !{!"cfganal.c:ei_safe_edge"}
!520 = !{!"branch_weights", i32 693, i32 262}
!521 = !{!"cfganal.c:VEC_int_heap_reserve"}
!522 = !{!"branch_weights", i32 1, i32 669926}
!523 = !{!"cfganal.c:VEC_int_base_space"}
!524 = !{!478, !186, i64 4}
