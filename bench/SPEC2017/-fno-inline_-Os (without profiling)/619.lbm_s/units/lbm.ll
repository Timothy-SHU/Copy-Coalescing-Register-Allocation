; ModuleID = 'lbm.c'
source_filename = "lbm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }

@.str = private unnamed_addr constant [49 x i8] c"LBM_allocateGrid: could not allocate %.1f MByte\0A\00", align 1
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.3 = private unnamed_addr constant [148 x i8] c"LBM_showGridStatistics:\0A\09nObstacleCells: %7i nAccelCells: %7i nFluidCells: %7i\0A\09minRho: %8.6f maxRho: %8.6f Mass: %e\0A\09minU  : %8.6f maxU  : %8.6f\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"%e %e %e\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"%f %f %f\0A\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"LBM_compareVelocityField: maxDiff = %e  \0A\0A\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @LBM_allocateGrid(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = tail call noalias dereferenceable_or_null(1689600000) ptr @malloc(i64 noundef 1689600000) #15
  store ptr %2, ptr %0, align 8, !tbaa !6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef 0x40992D5000000000) #16
  tail call void @exit(i32 noundef 1) #17
  unreachable

6:                                                ; preds = %1
  %7 = getelementptr inbounds double, ptr %2, i64 1600000
  store ptr %7, ptr %0, align 8, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define dso_local void @LBM_freeGrid(ptr nocapture noundef %0) local_unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !6
  %3 = getelementptr inbounds double, ptr %2, i64 -1600000
  tail call void @free(ptr noundef nonnull %3) #18
  store ptr null, ptr %0, align 8, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @LBM_initializeGrid(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !6
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 1, ptr nonnull @LBM_initializeGrid.omp_outlined, ptr nonnull %2)
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @LBM_initializeGrid.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2) #7 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 10559999, ptr %5, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 1, ptr %6, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  store i32 0, ptr %7, align 4, !tbaa !10
  %8 = load i32, ptr %0, align 4, !tbaa !10
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %8, i32 34, ptr nonnull %7, ptr nonnull %4, ptr nonnull %5, ptr nonnull %6, i32 1, i32 1)
  %9 = load i32, ptr %5, align 4
  %10 = call i32 @llvm.smin.i32(i32 %9, i32 10559999)
  store i32 %10, ptr %5, align 4, !tbaa !10
  %11 = load i32, ptr %4, align 4, !tbaa !10
  %12 = icmp sgt i32 %11, %10
  br i1 %12, label %36, label %13

13:                                               ; preds = %3
  %14 = load ptr, ptr %2, align 8, !tbaa !6
  %15 = getelementptr double, ptr %14, i64 -1600000
  %16 = sext i32 %11 to i64
  br label %17

17:                                               ; preds = %13, %17
  %18 = phi i64 [ %16, %13 ], [ %32, %17 ]
  %19 = mul nsw i64 %18, 20
  %20 = getelementptr double, ptr %15, i64 %19
  %21 = getelementptr double, ptr %14, i64 %19
  store <2 x double> <double 0x3FD5555555555555, double 0x3FAC71C71C71C71C>, ptr %20, align 8, !tbaa !12
  %22 = getelementptr double, ptr %21, i64 -1599998
  store <2 x double> <double 0x3FAC71C71C71C71C, double 0x3FAC71C71C71C71C>, ptr %22, align 8, !tbaa !12
  %23 = getelementptr double, ptr %21, i64 -1599996
  store <2 x double> <double 0x3FAC71C71C71C71C, double 0x3FAC71C71C71C71C>, ptr %23, align 8, !tbaa !12
  %24 = getelementptr double, ptr %21, i64 -1599994
  store <2 x double> <double 0x3FAC71C71C71C71C, double 0x3F9C71C71C71C71C>, ptr %24, align 8, !tbaa !12
  %25 = getelementptr double, ptr %21, i64 -1599992
  store <2 x double> <double 0x3F9C71C71C71C71C, double 0x3F9C71C71C71C71C>, ptr %25, align 8, !tbaa !12
  %26 = getelementptr double, ptr %21, i64 -1599990
  store <2 x double> <double 0x3F9C71C71C71C71C, double 0x3F9C71C71C71C71C>, ptr %26, align 8, !tbaa !12
  %27 = getelementptr double, ptr %21, i64 -1599988
  store <2 x double> <double 0x3F9C71C71C71C71C, double 0x3F9C71C71C71C71C>, ptr %27, align 8, !tbaa !12
  %28 = getelementptr double, ptr %21, i64 -1599986
  store <2 x double> <double 0x3F9C71C71C71C71C, double 0x3F9C71C71C71C71C>, ptr %28, align 8, !tbaa !12
  %29 = getelementptr double, ptr %21, i64 -1599984
  store <2 x double> <double 0x3F9C71C71C71C71C, double 0x3F9C71C71C71C71C>, ptr %29, align 8, !tbaa !12
  %30 = getelementptr double, ptr %21, i64 -1599982
  store double 0x3F9C71C71C71C71C, ptr %30, align 8, !tbaa !12
  %31 = getelementptr double, ptr %21, i64 -1599981
  store i32 0, ptr %31, align 4, !tbaa !10
  %32 = add nsw i64 %18, 1
  %33 = load i32, ptr %5, align 4, !tbaa !10
  %34 = sext i32 %33 to i64
  %35 = icmp slt i64 %18, %34
  br i1 %35, label %17, label %36

36:                                               ; preds = %17, %3
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %8)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #8

; Function Attrs: nounwind
declare !callback !14 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @LBM_swapGrids(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #9 {
  %3 = load ptr, ptr %0, align 8, !tbaa !6
  %4 = load ptr, ptr %1, align 8, !tbaa !6
  store ptr %4, ptr %0, align 8, !tbaa !6
  store ptr %3, ptr %1, align 8, !tbaa !6
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @LBM_loadObstacleFile(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #10 {
  %3 = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.1) #16
  %4 = getelementptr double, ptr %0, i64 19
  br label %5

5:                                                ; preds = %2, %29
  %6 = phi i64 [ 0, %2 ], [ %31, %29 ]
  %7 = mul nuw nsw i64 %6, 40000
  br label %8

8:                                                ; preds = %5, %25
  %9 = phi i64 [ 0, %5 ], [ %27, %25 ]
  %10 = mul nuw nsw i64 %9, 200
  %11 = add nuw nsw i64 %10, %7
  br label %12

12:                                               ; preds = %8, %22
  %13 = phi i64 [ 0, %8 ], [ %23, %22 ]
  %14 = tail call i32 @fgetc(ptr noundef %3) #16
  %15 = icmp eq i32 %14, 46
  br i1 %15, label %22, label %16

16:                                               ; preds = %12
  %17 = add nuw nsw i64 %11, %13
  %18 = mul nuw nsw i64 %17, 20
  %19 = getelementptr double, ptr %4, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !10
  %21 = or i32 %20, 1
  store i32 %21, ptr %19, align 4, !tbaa !10
  br label %22

22:                                               ; preds = %12, %16
  %23 = add nuw nsw i64 %13, 1
  %24 = icmp eq i64 %23, 200
  br i1 %24, label %25, label %12, !llvm.loop !16

25:                                               ; preds = %22
  %26 = tail call i32 @fgetc(ptr noundef %3) #16
  %27 = add nuw nsw i64 %9, 1
  %28 = icmp eq i64 %27, 200
  br i1 %28, label %29, label %8, !llvm.loop !18

29:                                               ; preds = %25
  %30 = tail call i32 @fgetc(ptr noundef %3) #16
  %31 = add nuw nsw i64 %6, 1
  %32 = icmp eq i64 %31, 260
  br i1 %32, label %33, label %5, !llvm.loop !19

33:                                               ; preds = %29
  %34 = tail call i32 @fclose(ptr noundef %3) #16
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fgetc(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @LBM_initializeSpecialCellsForLDC(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !6
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 1, ptr nonnull @LBM_initializeSpecialCellsForLDC.omp_outlined, ptr nonnull %2)
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @LBM_initializeSpecialCellsForLDC.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2) #7 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 263, ptr %5, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 1, ptr %6, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  store i32 0, ptr %7, align 4, !tbaa !10
  %8 = load i32, ptr %0, align 4, !tbaa !10
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %8, i32 34, ptr nonnull %7, ptr nonnull %4, ptr nonnull %5, ptr nonnull %6, i32 1, i32 1)
  %9 = load i32, ptr %5, align 4
  %10 = call i32 @llvm.smin.i32(i32 %9, i32 263)
  store i32 %10, ptr %5, align 4, !tbaa !10
  %11 = load i32, ptr %4, align 4, !tbaa !10
  %12 = icmp sgt i32 %11, %10
  br i1 %12, label %74, label %13

13:                                               ; preds = %3, %70
  %14 = phi i32 [ %71, %70 ], [ %11, %3 ]
  %15 = add nsw i32 %14, -2
  %16 = icmp eq i32 %15, 0
  %17 = icmp eq i32 %15, 259
  %18 = icmp eq i32 %15, 1
  %19 = icmp eq i32 %15, 258
  %20 = or i1 %18, %19
  %21 = mul i32 %15, 40000
  %22 = zext i32 %21 to i64
  br label %23

23:                                               ; preds = %13, %67
  %24 = phi i64 [ 0, %13 ], [ %68, %67 ]
  %25 = icmp eq i64 %24, 0
  %26 = icmp eq i64 %24, 199
  %27 = trunc i64 %24 to i32
  %28 = add i32 %27, -2
  %29 = icmp ult i32 %28, 196
  %30 = load ptr, ptr %2, align 8
  %31 = mul nuw nsw i64 %24, 200
  %32 = add nuw nsw i64 %31, %22
  %33 = getelementptr double, ptr %30, i64 19
  %34 = trunc i64 %31 to i32
  %35 = add i32 %21, %34
  br label %36

36:                                               ; preds = %23, %64
  %37 = phi i64 [ 0, %23 ], [ %65, %64 ]
  %38 = icmp eq i64 %37, 0
  %39 = icmp eq i64 %37, 199
  %40 = or i1 %38, %39
  %41 = or i1 %25, %40
  %42 = or i1 %26, %41
  %43 = select i1 %42, i1 true, i1 %16
  %44 = select i1 %43, i1 true, i1 %17
  %45 = trunc i64 %37 to i32
  br i1 %44, label %46, label %50

46:                                               ; preds = %36
  %47 = add i32 %35, %45
  %48 = mul nsw i32 %47, 20
  %49 = sext i32 %48 to i64
  br label %58

50:                                               ; preds = %36
  %51 = add i32 %45, -2
  %52 = icmp ult i32 %51, 196
  %53 = and i1 %20, %52
  %54 = and i1 %29, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %50
  %56 = add nuw nsw i64 %32, %37
  %57 = mul nuw nsw i64 %56, 20
  br label %58

58:                                               ; preds = %55, %46
  %59 = phi i64 [ %57, %55 ], [ %49, %46 ]
  %60 = phi i32 [ 2, %55 ], [ 1, %46 ]
  %61 = getelementptr double, ptr %33, i64 %59
  %62 = load i32, ptr %61, align 4, !tbaa !10
  %63 = or i32 %62, %60
  store i32 %63, ptr %61, align 4, !tbaa !10
  br label %64

64:                                               ; preds = %58, %50
  %65 = add nuw nsw i64 %37, 1
  %66 = icmp eq i64 %65, 200
  br i1 %66, label %67, label %36, !llvm.loop !20

67:                                               ; preds = %64
  %68 = add nuw nsw i64 %24, 1
  %69 = icmp eq i64 %68, 200
  br i1 %69, label %70, label %23, !llvm.loop !21

70:                                               ; preds = %67
  %71 = add nsw i32 %14, 1
  %72 = load i32, ptr %5, align 4, !tbaa !10
  %73 = icmp slt i32 %14, %72
  br i1 %73, label %13, label %74

74:                                               ; preds = %70, %3
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %8)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @LBM_initializeSpecialCellsForChannel(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !6
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 1, ptr nonnull @LBM_initializeSpecialCellsForChannel.omp_outlined, ptr nonnull %2)
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @LBM_initializeSpecialCellsForChannel.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2) #7 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 263, ptr %5, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 1, ptr %6, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  store i32 0, ptr %7, align 4, !tbaa !10
  %8 = load i32, ptr %0, align 4, !tbaa !10
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %8, i32 34, ptr nonnull %7, ptr nonnull %4, ptr nonnull %5, ptr nonnull %6, i32 1, i32 1)
  %9 = load i32, ptr %5, align 4
  %10 = call i32 @llvm.smin.i32(i32 %9, i32 263)
  store i32 %10, ptr %5, align 4, !tbaa !10
  %11 = load i32, ptr %4, align 4, !tbaa !10
  %12 = icmp sgt i32 %11, %10
  br i1 %12, label %50, label %13

13:                                               ; preds = %3, %46
  %14 = phi i32 [ %47, %46 ], [ %11, %3 ]
  %15 = mul i32 %14, 40000
  %16 = add i32 %15, -80000
  br label %17

17:                                               ; preds = %13, %43
  %18 = phi i32 [ 0, %13 ], [ %44, %43 ]
  %19 = icmp eq i32 %18, 0
  %20 = icmp eq i32 %18, 199
  %21 = load ptr, ptr %2, align 8
  %22 = mul nuw nsw i32 %18, 200
  %23 = add i32 %16, %22
  %24 = getelementptr double, ptr %21, i64 19
  br label %25

25:                                               ; preds = %17, %40
  %26 = phi i64 [ 0, %17 ], [ %41, %40 ]
  %27 = icmp eq i64 %26, 0
  %28 = icmp eq i64 %26, 199
  %29 = or i1 %27, %28
  %30 = or i1 %19, %29
  %31 = or i1 %20, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %25
  %33 = trunc i64 %26 to i32
  %34 = add i32 %23, %33
  %35 = mul nsw i32 %34, 20
  %36 = sext i32 %35 to i64
  %37 = getelementptr double, ptr %24, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !10
  %39 = or i32 %38, 1
  store i32 %39, ptr %37, align 4, !tbaa !10
  br label %40

40:                                               ; preds = %32, %25
  %41 = add nuw nsw i64 %26, 1
  %42 = icmp eq i64 %41, 200
  br i1 %42, label %43, label %25, !llvm.loop !22

43:                                               ; preds = %40
  %44 = add nuw nsw i32 %18, 1
  %45 = icmp eq i32 %44, 200
  br i1 %45, label %46, label %17, !llvm.loop !23

46:                                               ; preds = %43
  %47 = add nsw i32 %14, 1
  %48 = load i32, ptr %5, align 4, !tbaa !10
  %49 = icmp slt i32 %14, %48
  br i1 %49, label %13, label %50

50:                                               ; preds = %46, %3
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %8)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @LBM_performStreamCollideBGK(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !6
  store ptr %1, ptr %4, align 8, !tbaa !6
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 2, ptr nonnull @LBM_performStreamCollideBGK.omp_outlined, ptr nonnull %3, ptr nonnull %4)
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @LBM_performStreamCollideBGK.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %3) #7 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 10399999, ptr %6, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  store i32 1, ptr %7, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #8
  store i32 0, ptr %8, align 4, !tbaa !10
  %9 = load i32, ptr %0, align 4, !tbaa !10
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %9, i32 34, ptr nonnull %8, ptr nonnull %5, ptr nonnull %6, ptr nonnull %7, i32 1, i32 1)
  %10 = load i32, ptr %6, align 4
  %11 = call i32 @llvm.smin.i32(i32 %10, i32 10399999)
  store i32 %11, ptr %6, align 4, !tbaa !10
  %12 = load i32, ptr %5, align 4, !tbaa !10
  %13 = icmp sgt i32 %12, %11
  br i1 %13, label %362, label %14

14:                                               ; preds = %4
  %15 = load ptr, ptr %2, align 8, !tbaa !6
  %16 = load ptr, ptr %3, align 8
  %17 = getelementptr double, ptr %15, i64 4
  %18 = getelementptr double, ptr %15, i64 5
  %19 = getelementptr double, ptr %15, i64 6
  %20 = getelementptr double, ptr %15, i64 7
  %21 = getelementptr double, ptr %15, i64 8
  %22 = getelementptr double, ptr %15, i64 9
  %23 = getelementptr double, ptr %15, i64 10
  %24 = getelementptr double, ptr %15, i64 11
  %25 = getelementptr double, ptr %15, i64 12
  %26 = getelementptr double, ptr %15, i64 13
  %27 = getelementptr double, ptr %15, i64 14
  %28 = getelementptr double, ptr %15, i64 15
  %29 = getelementptr double, ptr %15, i64 16
  %30 = getelementptr double, ptr %15, i64 17
  %31 = getelementptr double, ptr %15, i64 18
  %32 = sext i32 %12 to i64
  %33 = add nsw i32 %11, 1
  br label %34

34:                                               ; preds = %14, %358
  %35 = phi i64 [ %32, %14 ], [ %359, %358 ]
  %36 = mul nsw i64 %35, 20
  %37 = getelementptr double, ptr %15, i64 %36
  %38 = getelementptr double, ptr %37, i64 19
  %39 = load i32, ptr %38, align 4, !tbaa !10
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  %42 = load double, ptr %37, align 8, !tbaa !12
  br i1 %41, label %108, label %43

43:                                               ; preds = %34
  %44 = getelementptr inbounds double, ptr %16, i64 %36
  store double %42, ptr %44, align 8, !tbaa !12
  %45 = mul i64 %35, 85899345920
  %46 = ashr exact i64 %45, 32
  %47 = or disjoint i64 %46, 1
  %48 = getelementptr inbounds double, ptr %15, i64 %47
  %49 = load double, ptr %48, align 8, !tbaa !12
  %50 = getelementptr double, ptr %44, i64 -3998
  store double %49, ptr %50, align 8, !tbaa !12
  %51 = mul i64 %35, 85899345920
  %52 = ashr exact i64 %51, 32
  %53 = or disjoint i64 %52, 2
  %54 = getelementptr inbounds double, ptr %15, i64 %53
  %55 = load double, ptr %54, align 8, !tbaa !12
  %56 = getelementptr double, ptr %44, i64 4001
  store double %55, ptr %56, align 8, !tbaa !12
  %57 = mul i64 %35, 85899345920
  %58 = ashr exact i64 %57, 32
  %59 = or disjoint i64 %58, 3
  %60 = getelementptr inbounds double, ptr %15, i64 %59
  %61 = load double, ptr %60, align 8, !tbaa !12
  %62 = getelementptr double, ptr %44, i64 -16
  store double %61, ptr %62, align 8, !tbaa !12
  %63 = getelementptr double, ptr %37, i64 4
  %64 = load double, ptr %63, align 8, !tbaa !12
  %65 = getelementptr double, ptr %44, i64 23
  store double %64, ptr %65, align 8, !tbaa !12
  %66 = getelementptr double, ptr %37, i64 5
  %67 = load double, ptr %66, align 8, !tbaa !12
  %68 = getelementptr double, ptr %44, i64 -799994
  store double %67, ptr %68, align 8, !tbaa !12
  %69 = getelementptr double, ptr %37, i64 6
  %70 = load double, ptr %69, align 8, !tbaa !12
  %71 = getelementptr double, ptr %44, i64 800005
  store double %70, ptr %71, align 8, !tbaa !12
  %72 = getelementptr double, ptr %37, i64 7
  %73 = load double, ptr %72, align 8, !tbaa !12
  %74 = getelementptr double, ptr %44, i64 -4010
  store double %73, ptr %74, align 8, !tbaa !12
  %75 = getelementptr double, ptr %37, i64 8
  %76 = load double, ptr %75, align 8, !tbaa !12
  %77 = getelementptr double, ptr %44, i64 -3971
  store double %76, ptr %77, align 8, !tbaa !12
  %78 = getelementptr double, ptr %37, i64 9
  %79 = load double, ptr %78, align 8, !tbaa !12
  %80 = getelementptr double, ptr %44, i64 3988
  store double %79, ptr %80, align 8, !tbaa !12
  %81 = getelementptr double, ptr %37, i64 10
  %82 = load double, ptr %81, align 8, !tbaa !12
  %83 = getelementptr double, ptr %44, i64 4027
  store double %82, ptr %83, align 8, !tbaa !12
  %84 = getelementptr double, ptr %37, i64 11
  %85 = load double, ptr %84, align 8, !tbaa !12
  %86 = getelementptr double, ptr %44, i64 -803986
  store double %85, ptr %86, align 8, !tbaa !12
  %87 = getelementptr double, ptr %37, i64 12
  %88 = load double, ptr %87, align 8, !tbaa !12
  %89 = getelementptr double, ptr %44, i64 796013
  store double %88, ptr %89, align 8, !tbaa !12
  %90 = getelementptr double, ptr %37, i64 13
  %91 = load double, ptr %90, align 8, !tbaa !12
  %92 = getelementptr double, ptr %44, i64 -795988
  store double %91, ptr %92, align 8, !tbaa !12
  %93 = getelementptr double, ptr %37, i64 14
  %94 = load double, ptr %93, align 8, !tbaa !12
  %95 = getelementptr double, ptr %44, i64 804011
  store double %94, ptr %95, align 8, !tbaa !12
  %96 = getelementptr double, ptr %37, i64 15
  %97 = load double, ptr %96, align 8, !tbaa !12
  %98 = getelementptr double, ptr %44, i64 -800002
  store double %97, ptr %98, align 8, !tbaa !12
  %99 = getelementptr double, ptr %37, i64 16
  %100 = load double, ptr %99, align 8, !tbaa !12
  %101 = getelementptr double, ptr %44, i64 799997
  store double %100, ptr %101, align 8, !tbaa !12
  %102 = getelementptr double, ptr %37, i64 17
  %103 = load double, ptr %102, align 8, !tbaa !12
  %104 = getelementptr double, ptr %44, i64 -799964
  store double %103, ptr %104, align 8, !tbaa !12
  %105 = getelementptr double, ptr %37, i64 18
  %106 = load double, ptr %105, align 8, !tbaa !12
  %107 = getelementptr double, ptr %44, i64 800035
  store double %106, ptr %107, align 8, !tbaa !12
  br label %358

108:                                              ; preds = %34
  %109 = mul i64 %35, 85899345920
  %110 = ashr exact i64 %109, 32
  %111 = or disjoint i64 %110, 1
  %112 = getelementptr inbounds double, ptr %15, i64 %111
  %113 = load double, ptr %112, align 8, !tbaa !12
  %114 = fadd double %42, %113
  %115 = mul i64 %35, 85899345920
  %116 = ashr exact i64 %115, 32
  %117 = or disjoint i64 %116, 2
  %118 = getelementptr inbounds double, ptr %15, i64 %117
  %119 = load double, ptr %118, align 8, !tbaa !12
  %120 = fadd double %114, %119
  %121 = mul i64 %35, 85899345920
  %122 = ashr exact i64 %121, 32
  %123 = or disjoint i64 %122, 3
  %124 = getelementptr inbounds double, ptr %15, i64 %123
  %125 = load double, ptr %124, align 8, !tbaa !12
  %126 = fadd double %120, %125
  %127 = getelementptr double, ptr %17, i64 %36
  %128 = load double, ptr %127, align 8, !tbaa !12
  %129 = fadd double %126, %128
  %130 = getelementptr double, ptr %18, i64 %36
  %131 = load double, ptr %130, align 8, !tbaa !12
  %132 = fadd double %129, %131
  %133 = getelementptr double, ptr %19, i64 %36
  %134 = load double, ptr %133, align 8, !tbaa !12
  %135 = fadd double %132, %134
  %136 = getelementptr double, ptr %20, i64 %36
  %137 = load double, ptr %136, align 8, !tbaa !12
  %138 = fadd double %135, %137
  %139 = getelementptr double, ptr %21, i64 %36
  %140 = load double, ptr %139, align 8, !tbaa !12
  %141 = fadd double %138, %140
  %142 = getelementptr double, ptr %22, i64 %36
  %143 = load double, ptr %142, align 8, !tbaa !12
  %144 = fadd double %141, %143
  %145 = getelementptr double, ptr %23, i64 %36
  %146 = load double, ptr %145, align 8, !tbaa !12
  %147 = fadd double %144, %146
  %148 = getelementptr double, ptr %24, i64 %36
  %149 = load double, ptr %148, align 8, !tbaa !12
  %150 = fadd double %147, %149
  %151 = getelementptr double, ptr %25, i64 %36
  %152 = load double, ptr %151, align 8, !tbaa !12
  %153 = fadd double %150, %152
  %154 = getelementptr double, ptr %26, i64 %36
  %155 = load double, ptr %154, align 8, !tbaa !12
  %156 = fadd double %153, %155
  %157 = getelementptr double, ptr %27, i64 %36
  %158 = load double, ptr %157, align 8, !tbaa !12
  %159 = fadd double %156, %158
  %160 = getelementptr double, ptr %28, i64 %36
  %161 = load double, ptr %160, align 8, !tbaa !12
  %162 = fadd double %159, %161
  %163 = getelementptr double, ptr %29, i64 %36
  %164 = load double, ptr %163, align 8, !tbaa !12
  %165 = fadd double %162, %164
  %166 = getelementptr double, ptr %30, i64 %36
  %167 = load double, ptr %166, align 8, !tbaa !12
  %168 = fadd double %165, %167
  %169 = getelementptr double, ptr %31, i64 %36
  %170 = load double, ptr %169, align 8, !tbaa !12
  %171 = fadd double %168, %170
  %172 = fsub double %125, %128
  %173 = fadd double %172, %137
  %174 = fsub double %173, %140
  %175 = fadd double %174, %143
  %176 = fsub double %175, %146
  %177 = fadd double %176, %161
  %178 = fadd double %177, %164
  %179 = fsub double %178, %167
  %180 = fsub double %179, %170
  %181 = fsub double %113, %119
  %182 = fadd double %181, %137
  %183 = fadd double %182, %140
  %184 = fsub double %183, %143
  %185 = fsub double %184, %146
  %186 = fadd double %185, %149
  %187 = fadd double %186, %152
  %188 = fsub double %187, %155
  %189 = fsub double %188, %158
  %190 = fsub double %131, %134
  %191 = fadd double %190, %149
  %192 = fsub double %191, %152
  %193 = fadd double %192, %155
  %194 = fsub double %193, %158
  %195 = fadd double %194, %161
  %196 = fsub double %195, %164
  %197 = fadd double %196, %167
  %198 = fsub double %197, %170
  %199 = fdiv double %180, %171
  %200 = fdiv double %189, %171
  %201 = fdiv double %198, %171
  %202 = and i32 %39, 2
  %203 = icmp eq i32 %202, 0
  %204 = select i1 %203, double %201, double 0.000000e+00
  %205 = select i1 %203, double %200, double 2.000000e-03
  %206 = select i1 %203, double %199, double 5.000000e-03
  %207 = fmul double %205, %205
  %208 = call double @llvm.fmuladd.f64(double %206, double %206, double %207)
  %209 = call double @llvm.fmuladd.f64(double %204, double %204, double %208)
  %210 = fmul double %209, 1.500000e+00
  %211 = fmul double %171, 0x3FE4CCCCCCCCCCCC
  %212 = fsub double 1.000000e+00, %210
  %213 = fmul double %211, %212
  %214 = call double @llvm.fmuladd.f64(double %42, double 0xBFEE666666666666, double %213)
  %215 = getelementptr inbounds double, ptr %16, i64 %36
  store double %214, ptr %215, align 8, !tbaa !12
  %216 = load double, ptr %112, align 8, !tbaa !12
  %217 = fmul double %171, 0x3FBBBBBBBBBBBBBB
  %218 = call double @llvm.fmuladd.f64(double %205, double 4.500000e+00, double 3.000000e+00)
  %219 = call double @llvm.fmuladd.f64(double %205, double %218, double 1.000000e+00)
  %220 = fsub double %219, %210
  %221 = fmul double %217, %220
  %222 = call double @llvm.fmuladd.f64(double %216, double 0xBFEE666666666666, double %221)
  %223 = getelementptr double, ptr %215, i64 4001
  store double %222, ptr %223, align 8, !tbaa !12
  %224 = load double, ptr %118, align 8, !tbaa !12
  %225 = call double @llvm.fmuladd.f64(double %205, double 4.500000e+00, double -3.000000e+00)
  %226 = call double @llvm.fmuladd.f64(double %205, double %225, double 1.000000e+00)
  %227 = fsub double %226, %210
  %228 = fmul double %217, %227
  %229 = call double @llvm.fmuladd.f64(double %224, double 0xBFEE666666666666, double %228)
  %230 = getelementptr double, ptr %215, i64 -3998
  store double %229, ptr %230, align 8, !tbaa !12
  %231 = load double, ptr %124, align 8, !tbaa !12
  %232 = call double @llvm.fmuladd.f64(double %206, double 4.500000e+00, double 3.000000e+00)
  %233 = call double @llvm.fmuladd.f64(double %206, double %232, double 1.000000e+00)
  %234 = fsub double %233, %210
  %235 = fmul double %217, %234
  %236 = call double @llvm.fmuladd.f64(double %231, double 0xBFEE666666666666, double %235)
  %237 = getelementptr double, ptr %215, i64 23
  store double %236, ptr %237, align 8, !tbaa !12
  %238 = load double, ptr %127, align 8, !tbaa !12
  %239 = call double @llvm.fmuladd.f64(double %206, double 4.500000e+00, double -3.000000e+00)
  %240 = call double @llvm.fmuladd.f64(double %206, double %239, double 1.000000e+00)
  %241 = fsub double %240, %210
  %242 = fmul double %217, %241
  %243 = call double @llvm.fmuladd.f64(double %238, double 0xBFEE666666666666, double %242)
  %244 = getelementptr double, ptr %215, i64 -16
  store double %243, ptr %244, align 8, !tbaa !12
  %245 = load double, ptr %130, align 8, !tbaa !12
  %246 = call double @llvm.fmuladd.f64(double %204, double 4.500000e+00, double 3.000000e+00)
  %247 = call double @llvm.fmuladd.f64(double %204, double %246, double 1.000000e+00)
  %248 = fsub double %247, %210
  %249 = fmul double %217, %248
  %250 = call double @llvm.fmuladd.f64(double %245, double 0xBFEE666666666666, double %249)
  %251 = getelementptr double, ptr %215, i64 800005
  store double %250, ptr %251, align 8, !tbaa !12
  %252 = load double, ptr %133, align 8, !tbaa !12
  %253 = call double @llvm.fmuladd.f64(double %204, double 4.500000e+00, double -3.000000e+00)
  %254 = call double @llvm.fmuladd.f64(double %204, double %253, double 1.000000e+00)
  %255 = fsub double %254, %210
  %256 = fmul double %217, %255
  %257 = call double @llvm.fmuladd.f64(double %252, double 0xBFEE666666666666, double %256)
  %258 = getelementptr double, ptr %215, i64 -799994
  store double %257, ptr %258, align 8, !tbaa !12
  %259 = load double, ptr %136, align 8, !tbaa !12
  %260 = fmul double %171, 0x3FABBBBBBBBBBBBB
  %261 = fadd double %206, %205
  %262 = call double @llvm.fmuladd.f64(double %261, double 4.500000e+00, double 3.000000e+00)
  %263 = call double @llvm.fmuladd.f64(double %261, double %262, double 1.000000e+00)
  %264 = fsub double %263, %210
  %265 = fmul double %260, %264
  %266 = call double @llvm.fmuladd.f64(double %259, double 0xBFEE666666666666, double %265)
  %267 = getelementptr double, ptr %215, i64 4027
  store double %266, ptr %267, align 8, !tbaa !12
  %268 = load double, ptr %139, align 8, !tbaa !12
  %269 = fneg double %206
  %270 = fsub double %205, %206
  %271 = call double @llvm.fmuladd.f64(double %270, double 4.500000e+00, double 3.000000e+00)
  %272 = call double @llvm.fmuladd.f64(double %270, double %271, double 1.000000e+00)
  %273 = fsub double %272, %210
  %274 = fmul double %260, %273
  %275 = call double @llvm.fmuladd.f64(double %268, double 0xBFEE666666666666, double %274)
  %276 = getelementptr double, ptr %215, i64 3988
  store double %275, ptr %276, align 8, !tbaa !12
  %277 = load double, ptr %142, align 8, !tbaa !12
  %278 = fsub double %206, %205
  %279 = call double @llvm.fmuladd.f64(double %278, double 4.500000e+00, double 3.000000e+00)
  %280 = call double @llvm.fmuladd.f64(double %278, double %279, double 1.000000e+00)
  %281 = fsub double %280, %210
  %282 = fmul double %260, %281
  %283 = call double @llvm.fmuladd.f64(double %277, double 0xBFEE666666666666, double %282)
  %284 = getelementptr double, ptr %215, i64 -3971
  store double %283, ptr %284, align 8, !tbaa !12
  %285 = load double, ptr %145, align 8, !tbaa !12
  %286 = fsub double %269, %205
  %287 = call double @llvm.fmuladd.f64(double %286, double 4.500000e+00, double 3.000000e+00)
  %288 = call double @llvm.fmuladd.f64(double %286, double %287, double 1.000000e+00)
  %289 = fsub double %288, %210
  %290 = fmul double %260, %289
  %291 = call double @llvm.fmuladd.f64(double %285, double 0xBFEE666666666666, double %290)
  %292 = getelementptr double, ptr %215, i64 -4010
  store double %291, ptr %292, align 8, !tbaa !12
  %293 = load double, ptr %148, align 8, !tbaa !12
  %294 = fadd double %205, %204
  %295 = call double @llvm.fmuladd.f64(double %294, double 4.500000e+00, double 3.000000e+00)
  %296 = call double @llvm.fmuladd.f64(double %294, double %295, double 1.000000e+00)
  %297 = fsub double %296, %210
  %298 = fmul double %260, %297
  %299 = call double @llvm.fmuladd.f64(double %293, double 0xBFEE666666666666, double %298)
  %300 = getelementptr double, ptr %215, i64 804011
  store double %299, ptr %300, align 8, !tbaa !12
  %301 = load double, ptr %151, align 8, !tbaa !12
  %302 = fsub double %205, %204
  %303 = call double @llvm.fmuladd.f64(double %302, double 4.500000e+00, double 3.000000e+00)
  %304 = call double @llvm.fmuladd.f64(double %302, double %303, double 1.000000e+00)
  %305 = fsub double %304, %210
  %306 = fmul double %260, %305
  %307 = call double @llvm.fmuladd.f64(double %301, double 0xBFEE666666666666, double %306)
  %308 = getelementptr double, ptr %215, i64 -795988
  store double %307, ptr %308, align 8, !tbaa !12
  %309 = load double, ptr %154, align 8, !tbaa !12
  %310 = fneg double %205
  %311 = fsub double %204, %205
  %312 = call double @llvm.fmuladd.f64(double %311, double 4.500000e+00, double 3.000000e+00)
  %313 = call double @llvm.fmuladd.f64(double %311, double %312, double 1.000000e+00)
  %314 = fsub double %313, %210
  %315 = fmul double %260, %314
  %316 = call double @llvm.fmuladd.f64(double %309, double 0xBFEE666666666666, double %315)
  %317 = getelementptr double, ptr %215, i64 796013
  store double %316, ptr %317, align 8, !tbaa !12
  %318 = load double, ptr %157, align 8, !tbaa !12
  %319 = fsub double %310, %204
  %320 = call double @llvm.fmuladd.f64(double %319, double 4.500000e+00, double 3.000000e+00)
  %321 = call double @llvm.fmuladd.f64(double %319, double %320, double 1.000000e+00)
  %322 = fsub double %321, %210
  %323 = fmul double %260, %322
  %324 = call double @llvm.fmuladd.f64(double %318, double 0xBFEE666666666666, double %323)
  %325 = getelementptr double, ptr %215, i64 -803986
  store double %324, ptr %325, align 8, !tbaa !12
  %326 = load double, ptr %160, align 8, !tbaa !12
  %327 = fadd double %206, %204
  %328 = call double @llvm.fmuladd.f64(double %327, double 4.500000e+00, double 3.000000e+00)
  %329 = call double @llvm.fmuladd.f64(double %327, double %328, double 1.000000e+00)
  %330 = fsub double %329, %210
  %331 = fmul double %260, %330
  %332 = call double @llvm.fmuladd.f64(double %326, double 0xBFEE666666666666, double %331)
  %333 = getelementptr double, ptr %215, i64 800035
  store double %332, ptr %333, align 8, !tbaa !12
  %334 = load double, ptr %163, align 8, !tbaa !12
  %335 = fsub double %206, %204
  %336 = call double @llvm.fmuladd.f64(double %335, double 4.500000e+00, double 3.000000e+00)
  %337 = call double @llvm.fmuladd.f64(double %335, double %336, double 1.000000e+00)
  %338 = fsub double %337, %210
  %339 = fmul double %260, %338
  %340 = call double @llvm.fmuladd.f64(double %334, double 0xBFEE666666666666, double %339)
  %341 = getelementptr double, ptr %215, i64 -799964
  store double %340, ptr %341, align 8, !tbaa !12
  %342 = load double, ptr %166, align 8, !tbaa !12
  %343 = fsub double %204, %206
  %344 = call double @llvm.fmuladd.f64(double %343, double 4.500000e+00, double 3.000000e+00)
  %345 = call double @llvm.fmuladd.f64(double %343, double %344, double 1.000000e+00)
  %346 = fsub double %345, %210
  %347 = fmul double %260, %346
  %348 = call double @llvm.fmuladd.f64(double %342, double 0xBFEE666666666666, double %347)
  %349 = getelementptr double, ptr %215, i64 799997
  store double %348, ptr %349, align 8, !tbaa !12
  %350 = load double, ptr %169, align 8, !tbaa !12
  %351 = fsub double %269, %204
  %352 = call double @llvm.fmuladd.f64(double %351, double 4.500000e+00, double 3.000000e+00)
  %353 = call double @llvm.fmuladd.f64(double %351, double %352, double 1.000000e+00)
  %354 = fsub double %353, %210
  %355 = fmul double %260, %354
  %356 = call double @llvm.fmuladd.f64(double %350, double 0xBFEE666666666666, double %355)
  %357 = getelementptr double, ptr %215, i64 -800002
  store double %356, ptr %357, align 8, !tbaa !12
  br label %358

358:                                              ; preds = %43, %108
  %359 = add nsw i64 %35, 1
  %360 = trunc i64 %359 to i32
  %361 = icmp eq i32 %33, %360
  br i1 %361, label %362, label %34

362:                                              ; preds = %358, %4
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %9)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #11

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @LBM_performStreamCollideTRT(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca double, align 8
  store ptr %0, ptr %3, align 8, !tbaa !6
  store ptr %1, ptr %4, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  store double 0x3FB0ECF56BE69CA7, ptr %5, align 8, !tbaa !12
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 3, ptr nonnull @LBM_performStreamCollideTRT.omp_outlined, ptr nonnull %3, ptr nonnull %4, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @LBM_performStreamCollideTRT.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %3, ptr nocapture nonnull readnone align 8 %4) #7 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 0, ptr %6, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  store i32 10399999, ptr %7, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #8
  store i32 1, ptr %8, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #8
  store i32 0, ptr %9, align 4, !tbaa !10
  %10 = load i32, ptr %0, align 4, !tbaa !10
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %10, i32 34, ptr nonnull %9, ptr nonnull %6, ptr nonnull %7, ptr nonnull %8, i32 1, i32 1)
  %11 = load i32, ptr %7, align 4
  %12 = call i32 @llvm.smin.i32(i32 %11, i32 10399999)
  store i32 %12, ptr %7, align 4, !tbaa !10
  %13 = load i32, ptr %6, align 4, !tbaa !10
  %14 = icmp sgt i32 %13, %12
  br i1 %14, label %409, label %15

15:                                               ; preds = %5
  %16 = load ptr, ptr %2, align 8, !tbaa !6
  %17 = load ptr, ptr %3, align 8
  %18 = getelementptr double, ptr %16, i64 4
  %19 = getelementptr double, ptr %16, i64 5
  %20 = getelementptr double, ptr %16, i64 6
  %21 = getelementptr double, ptr %16, i64 7
  %22 = getelementptr double, ptr %16, i64 8
  %23 = getelementptr double, ptr %16, i64 9
  %24 = getelementptr double, ptr %16, i64 10
  %25 = getelementptr double, ptr %16, i64 11
  %26 = getelementptr double, ptr %16, i64 12
  %27 = getelementptr double, ptr %16, i64 13
  %28 = getelementptr double, ptr %16, i64 14
  %29 = getelementptr double, ptr %16, i64 15
  %30 = getelementptr double, ptr %16, i64 16
  %31 = getelementptr double, ptr %16, i64 17
  %32 = getelementptr double, ptr %16, i64 18
  %33 = sext i32 %13 to i64
  %34 = add nsw i32 %12, 1
  br label %35

35:                                               ; preds = %15, %405
  %36 = phi i64 [ %33, %15 ], [ %406, %405 ]
  %37 = mul nsw i64 %36, 20
  %38 = getelementptr double, ptr %16, i64 %37
  %39 = getelementptr double, ptr %38, i64 19
  %40 = load i32, ptr %39, align 4, !tbaa !10
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  %43 = load double, ptr %38, align 8, !tbaa !12
  br i1 %42, label %109, label %44

44:                                               ; preds = %35
  %45 = getelementptr inbounds double, ptr %17, i64 %37
  store double %43, ptr %45, align 8, !tbaa !12
  %46 = mul i64 %36, 85899345920
  %47 = ashr exact i64 %46, 32
  %48 = or disjoint i64 %47, 1
  %49 = getelementptr inbounds double, ptr %16, i64 %48
  %50 = load double, ptr %49, align 8, !tbaa !12
  %51 = getelementptr double, ptr %45, i64 -3998
  store double %50, ptr %51, align 8, !tbaa !12
  %52 = mul i64 %36, 85899345920
  %53 = ashr exact i64 %52, 32
  %54 = or disjoint i64 %53, 2
  %55 = getelementptr inbounds double, ptr %16, i64 %54
  %56 = load double, ptr %55, align 8, !tbaa !12
  %57 = getelementptr double, ptr %45, i64 4001
  store double %56, ptr %57, align 8, !tbaa !12
  %58 = mul i64 %36, 85899345920
  %59 = ashr exact i64 %58, 32
  %60 = or disjoint i64 %59, 3
  %61 = getelementptr inbounds double, ptr %16, i64 %60
  %62 = load double, ptr %61, align 8, !tbaa !12
  %63 = getelementptr double, ptr %45, i64 -16
  store double %62, ptr %63, align 8, !tbaa !12
  %64 = getelementptr double, ptr %38, i64 4
  %65 = load double, ptr %64, align 8, !tbaa !12
  %66 = getelementptr double, ptr %45, i64 23
  store double %65, ptr %66, align 8, !tbaa !12
  %67 = getelementptr double, ptr %38, i64 5
  %68 = load double, ptr %67, align 8, !tbaa !12
  %69 = getelementptr double, ptr %45, i64 -799994
  store double %68, ptr %69, align 8, !tbaa !12
  %70 = getelementptr double, ptr %38, i64 6
  %71 = load double, ptr %70, align 8, !tbaa !12
  %72 = getelementptr double, ptr %45, i64 800005
  store double %71, ptr %72, align 8, !tbaa !12
  %73 = getelementptr double, ptr %38, i64 7
  %74 = load double, ptr %73, align 8, !tbaa !12
  %75 = getelementptr double, ptr %45, i64 -4010
  store double %74, ptr %75, align 8, !tbaa !12
  %76 = getelementptr double, ptr %38, i64 8
  %77 = load double, ptr %76, align 8, !tbaa !12
  %78 = getelementptr double, ptr %45, i64 -3971
  store double %77, ptr %78, align 8, !tbaa !12
  %79 = getelementptr double, ptr %38, i64 9
  %80 = load double, ptr %79, align 8, !tbaa !12
  %81 = getelementptr double, ptr %45, i64 3988
  store double %80, ptr %81, align 8, !tbaa !12
  %82 = getelementptr double, ptr %38, i64 10
  %83 = load double, ptr %82, align 8, !tbaa !12
  %84 = getelementptr double, ptr %45, i64 4027
  store double %83, ptr %84, align 8, !tbaa !12
  %85 = getelementptr double, ptr %38, i64 11
  %86 = load double, ptr %85, align 8, !tbaa !12
  %87 = getelementptr double, ptr %45, i64 -803986
  store double %86, ptr %87, align 8, !tbaa !12
  %88 = getelementptr double, ptr %38, i64 12
  %89 = load double, ptr %88, align 8, !tbaa !12
  %90 = getelementptr double, ptr %45, i64 796013
  store double %89, ptr %90, align 8, !tbaa !12
  %91 = getelementptr double, ptr %38, i64 13
  %92 = load double, ptr %91, align 8, !tbaa !12
  %93 = getelementptr double, ptr %45, i64 -795988
  store double %92, ptr %93, align 8, !tbaa !12
  %94 = getelementptr double, ptr %38, i64 14
  %95 = load double, ptr %94, align 8, !tbaa !12
  %96 = getelementptr double, ptr %45, i64 804011
  store double %95, ptr %96, align 8, !tbaa !12
  %97 = getelementptr double, ptr %38, i64 15
  %98 = load double, ptr %97, align 8, !tbaa !12
  %99 = getelementptr double, ptr %45, i64 -800002
  store double %98, ptr %99, align 8, !tbaa !12
  %100 = getelementptr double, ptr %38, i64 16
  %101 = load double, ptr %100, align 8, !tbaa !12
  %102 = getelementptr double, ptr %45, i64 799997
  store double %101, ptr %102, align 8, !tbaa !12
  %103 = getelementptr double, ptr %38, i64 17
  %104 = load double, ptr %103, align 8, !tbaa !12
  %105 = getelementptr double, ptr %45, i64 -799964
  store double %104, ptr %105, align 8, !tbaa !12
  %106 = getelementptr double, ptr %38, i64 18
  %107 = load double, ptr %106, align 8, !tbaa !12
  %108 = getelementptr double, ptr %45, i64 800035
  store double %107, ptr %108, align 8, !tbaa !12
  br label %405

109:                                              ; preds = %35
  %110 = mul i64 %36, 85899345920
  %111 = ashr exact i64 %110, 32
  %112 = or disjoint i64 %111, 1
  %113 = getelementptr inbounds double, ptr %16, i64 %112
  %114 = load double, ptr %113, align 8, !tbaa !12
  %115 = fadd double %43, %114
  %116 = mul i64 %36, 85899345920
  %117 = ashr exact i64 %116, 32
  %118 = or disjoint i64 %117, 2
  %119 = getelementptr inbounds double, ptr %16, i64 %118
  %120 = load double, ptr %119, align 8, !tbaa !12
  %121 = fadd double %115, %120
  %122 = mul i64 %36, 85899345920
  %123 = ashr exact i64 %122, 32
  %124 = or disjoint i64 %123, 3
  %125 = getelementptr inbounds double, ptr %16, i64 %124
  %126 = load double, ptr %125, align 8, !tbaa !12
  %127 = fadd double %121, %126
  %128 = getelementptr double, ptr %18, i64 %37
  %129 = load double, ptr %128, align 8, !tbaa !12
  %130 = fadd double %127, %129
  %131 = getelementptr double, ptr %19, i64 %37
  %132 = load double, ptr %131, align 8, !tbaa !12
  %133 = fadd double %130, %132
  %134 = getelementptr double, ptr %20, i64 %37
  %135 = load double, ptr %134, align 8, !tbaa !12
  %136 = fadd double %133, %135
  %137 = getelementptr double, ptr %21, i64 %37
  %138 = load double, ptr %137, align 8, !tbaa !12
  %139 = fadd double %136, %138
  %140 = getelementptr double, ptr %22, i64 %37
  %141 = load double, ptr %140, align 8, !tbaa !12
  %142 = fadd double %139, %141
  %143 = getelementptr double, ptr %23, i64 %37
  %144 = load double, ptr %143, align 8, !tbaa !12
  %145 = fadd double %142, %144
  %146 = getelementptr double, ptr %24, i64 %37
  %147 = load double, ptr %146, align 8, !tbaa !12
  %148 = fadd double %145, %147
  %149 = getelementptr double, ptr %25, i64 %37
  %150 = load double, ptr %149, align 8, !tbaa !12
  %151 = fadd double %148, %150
  %152 = getelementptr double, ptr %26, i64 %37
  %153 = load double, ptr %152, align 8, !tbaa !12
  %154 = fadd double %151, %153
  %155 = getelementptr double, ptr %27, i64 %37
  %156 = load double, ptr %155, align 8, !tbaa !12
  %157 = fadd double %154, %156
  %158 = getelementptr double, ptr %28, i64 %37
  %159 = load double, ptr %158, align 8, !tbaa !12
  %160 = fadd double %157, %159
  %161 = getelementptr double, ptr %29, i64 %37
  %162 = load double, ptr %161, align 8, !tbaa !12
  %163 = fadd double %160, %162
  %164 = getelementptr double, ptr %30, i64 %37
  %165 = load double, ptr %164, align 8, !tbaa !12
  %166 = fadd double %163, %165
  %167 = getelementptr double, ptr %31, i64 %37
  %168 = load double, ptr %167, align 8, !tbaa !12
  %169 = fadd double %166, %168
  %170 = getelementptr double, ptr %32, i64 %37
  %171 = load double, ptr %170, align 8, !tbaa !12
  %172 = fadd double %169, %171
  %173 = fsub double %126, %129
  %174 = fadd double %173, %138
  %175 = fsub double %174, %141
  %176 = fadd double %175, %144
  %177 = fsub double %176, %147
  %178 = fadd double %177, %162
  %179 = fadd double %178, %165
  %180 = fsub double %179, %168
  %181 = fsub double %180, %171
  %182 = fsub double %114, %120
  %183 = fadd double %182, %138
  %184 = fadd double %183, %141
  %185 = fsub double %184, %144
  %186 = fsub double %185, %147
  %187 = fadd double %186, %150
  %188 = fadd double %187, %153
  %189 = fsub double %188, %156
  %190 = fsub double %189, %159
  %191 = fsub double %132, %135
  %192 = fadd double %191, %150
  %193 = fsub double %192, %153
  %194 = fadd double %193, %156
  %195 = fsub double %194, %159
  %196 = fadd double %195, %162
  %197 = fsub double %196, %165
  %198 = fadd double %197, %168
  %199 = fsub double %198, %171
  %200 = fdiv double %181, %172
  %201 = fdiv double %190, %172
  %202 = fdiv double %199, %172
  %203 = and i32 %40, 2
  %204 = icmp eq i32 %203, 0
  %205 = select i1 %204, double %202, double 0.000000e+00
  %206 = select i1 %204, double %201, double 2.000000e-03
  %207 = select i1 %204, double %200, double 5.000000e-03
  %208 = fmul double %206, %206
  %209 = call double @llvm.fmuladd.f64(double %207, double %207, double %208)
  %210 = call double @llvm.fmuladd.f64(double %205, double %205, double %209)
  %211 = fmul double %210, 1.500000e+00
  %212 = fmul double %172, 0x3FD5555555555555
  %213 = fsub double 1.000000e+00, %211
  %214 = fmul double %212, %213
  %215 = fmul double %172, 0x3FAC71C71C71C71C
  %216 = fmul double %206, 4.500000e+00
  %217 = call double @llvm.fmuladd.f64(double %216, double %206, double 1.000000e+00)
  %218 = fsub double %217, %211
  %219 = fmul double %215, %218
  %220 = fmul double %207, 4.500000e+00
  %221 = call double @llvm.fmuladd.f64(double %220, double %207, double 1.000000e+00)
  %222 = fsub double %221, %211
  %223 = fmul double %215, %222
  %224 = fmul double %205, 4.500000e+00
  %225 = call double @llvm.fmuladd.f64(double %224, double %205, double 1.000000e+00)
  %226 = fsub double %225, %211
  %227 = fmul double %215, %226
  %228 = fmul double %172, 0x3F9C71C71C71C71C
  %229 = fadd double %207, %206
  %230 = fmul double %229, 4.500000e+00
  %231 = call double @llvm.fmuladd.f64(double %230, double %229, double 1.000000e+00)
  %232 = fsub double %231, %211
  %233 = fmul double %228, %232
  %234 = fsub double %206, %207
  %235 = fmul double %234, 4.500000e+00
  %236 = call double @llvm.fmuladd.f64(double %235, double %234, double 1.000000e+00)
  %237 = fsub double %236, %211
  %238 = fmul double %228, %237
  %239 = fadd double %206, %205
  %240 = fmul double %239, 4.500000e+00
  %241 = call double @llvm.fmuladd.f64(double %240, double %239, double 1.000000e+00)
  %242 = fsub double %241, %211
  %243 = fmul double %228, %242
  %244 = fsub double %206, %205
  %245 = fmul double %244, 4.500000e+00
  %246 = call double @llvm.fmuladd.f64(double %245, double %244, double 1.000000e+00)
  %247 = fsub double %246, %211
  %248 = fmul double %228, %247
  %249 = fadd double %207, %205
  %250 = fmul double %249, 4.500000e+00
  %251 = call double @llvm.fmuladd.f64(double %250, double %249, double 1.000000e+00)
  %252 = fsub double %251, %211
  %253 = fmul double %228, %252
  %254 = fsub double %207, %205
  %255 = fmul double %254, 4.500000e+00
  %256 = call double @llvm.fmuladd.f64(double %255, double %254, double 1.000000e+00)
  %257 = fsub double %256, %211
  %258 = fmul double %228, %257
  %259 = fmul double %215, 3.000000e+00
  %260 = fmul double %259, %206
  %261 = fmul double %259, %207
  %262 = fmul double %259, %205
  %263 = fmul double %228, 3.000000e+00
  %264 = fmul double %263, %229
  %265 = fmul double %263, %234
  %266 = fmul double %263, %239
  %267 = fmul double %263, %244
  %268 = fmul double %263, %249
  %269 = fmul double %263, %254
  %270 = fadd double %114, %120
  %271 = fmul double %270, 5.000000e-01
  %272 = fadd double %126, %129
  %273 = fmul double %272, 5.000000e-01
  %274 = fadd double %132, %135
  %275 = fmul double %274, 5.000000e-01
  %276 = fadd double %138, %147
  %277 = fmul double %276, 5.000000e-01
  %278 = fadd double %141, %144
  %279 = fmul double %278, 5.000000e-01
  %280 = fadd double %150, %159
  %281 = fmul double %280, 5.000000e-01
  %282 = fadd double %153, %156
  %283 = fmul double %282, 5.000000e-01
  %284 = fadd double %162, %171
  %285 = fmul double %284, 5.000000e-01
  %286 = fadd double %165, %168
  %287 = fmul double %286, 5.000000e-01
  %288 = fmul double %182, 5.000000e-01
  %289 = fmul double %173, 5.000000e-01
  %290 = fmul double %191, 5.000000e-01
  %291 = fsub double %138, %147
  %292 = fmul double %291, 5.000000e-01
  %293 = fsub double %141, %144
  %294 = fmul double %293, 5.000000e-01
  %295 = fsub double %150, %159
  %296 = fmul double %295, 5.000000e-01
  %297 = fsub double %153, %156
  %298 = fmul double %297, 5.000000e-01
  %299 = fsub double %162, %171
  %300 = fmul double %299, 5.000000e-01
  %301 = fsub double %165, %168
  %302 = fmul double %301, 5.000000e-01
  %303 = fsub double %43, %214
  %304 = call double @llvm.fmuladd.f64(double %303, double -1.950000e+00, double %43)
  %305 = getelementptr inbounds double, ptr %17, i64 %37
  store double %304, ptr %305, align 8, !tbaa !12
  %306 = load double, ptr %113, align 8, !tbaa !12
  %307 = fsub double %271, %219
  %308 = call double @llvm.fmuladd.f64(double %307, double -1.950000e+00, double %306)
  %309 = fsub double %288, %260
  %310 = call double @llvm.fmuladd.f64(double %309, double 0xBFB0ECF56BE69CA7, double %308)
  %311 = getelementptr double, ptr %305, i64 4001
  store double %310, ptr %311, align 8, !tbaa !12
  %312 = load double, ptr %119, align 8, !tbaa !12
  %313 = call double @llvm.fmuladd.f64(double %307, double -1.950000e+00, double %312)
  %314 = fsub double %260, %288
  %315 = call double @llvm.fmuladd.f64(double %314, double 0xBFB0ECF56BE69CA7, double %313)
  %316 = getelementptr double, ptr %305, i64 -3998
  store double %315, ptr %316, align 8, !tbaa !12
  %317 = load double, ptr %125, align 8, !tbaa !12
  %318 = fsub double %273, %223
  %319 = call double @llvm.fmuladd.f64(double %318, double -1.950000e+00, double %317)
  %320 = fsub double %289, %261
  %321 = call double @llvm.fmuladd.f64(double %320, double 0xBFB0ECF56BE69CA7, double %319)
  %322 = getelementptr double, ptr %305, i64 23
  store double %321, ptr %322, align 8, !tbaa !12
  %323 = load double, ptr %128, align 8, !tbaa !12
  %324 = call double @llvm.fmuladd.f64(double %318, double -1.950000e+00, double %323)
  %325 = fsub double %261, %289
  %326 = call double @llvm.fmuladd.f64(double %325, double 0xBFB0ECF56BE69CA7, double %324)
  %327 = getelementptr double, ptr %305, i64 -16
  store double %326, ptr %327, align 8, !tbaa !12
  %328 = load double, ptr %131, align 8, !tbaa !12
  %329 = fsub double %275, %227
  %330 = call double @llvm.fmuladd.f64(double %329, double -1.950000e+00, double %328)
  %331 = fsub double %290, %262
  %332 = call double @llvm.fmuladd.f64(double %331, double 0xBFB0ECF56BE69CA7, double %330)
  %333 = getelementptr double, ptr %305, i64 800005
  store double %332, ptr %333, align 8, !tbaa !12
  %334 = load double, ptr %134, align 8, !tbaa !12
  %335 = call double @llvm.fmuladd.f64(double %329, double -1.950000e+00, double %334)
  %336 = fsub double %262, %290
  %337 = call double @llvm.fmuladd.f64(double %336, double 0xBFB0ECF56BE69CA7, double %335)
  %338 = getelementptr double, ptr %305, i64 -799994
  store double %337, ptr %338, align 8, !tbaa !12
  %339 = load double, ptr %137, align 8, !tbaa !12
  %340 = fsub double %277, %233
  %341 = call double @llvm.fmuladd.f64(double %340, double -1.950000e+00, double %339)
  %342 = fsub double %292, %264
  %343 = call double @llvm.fmuladd.f64(double %342, double 0xBFB0ECF56BE69CA7, double %341)
  %344 = getelementptr double, ptr %305, i64 4027
  store double %343, ptr %344, align 8, !tbaa !12
  %345 = load double, ptr %140, align 8, !tbaa !12
  %346 = fsub double %279, %238
  %347 = call double @llvm.fmuladd.f64(double %346, double -1.950000e+00, double %345)
  %348 = fsub double %294, %265
  %349 = call double @llvm.fmuladd.f64(double %348, double 0xBFB0ECF56BE69CA7, double %347)
  %350 = getelementptr double, ptr %305, i64 3988
  store double %349, ptr %350, align 8, !tbaa !12
  %351 = load double, ptr %143, align 8, !tbaa !12
  %352 = call double @llvm.fmuladd.f64(double %346, double -1.950000e+00, double %351)
  %353 = fsub double %265, %294
  %354 = call double @llvm.fmuladd.f64(double %353, double 0xBFB0ECF56BE69CA7, double %352)
  %355 = getelementptr double, ptr %305, i64 -3971
  store double %354, ptr %355, align 8, !tbaa !12
  %356 = load double, ptr %146, align 8, !tbaa !12
  %357 = call double @llvm.fmuladd.f64(double %340, double -1.950000e+00, double %356)
  %358 = fsub double %264, %292
  %359 = call double @llvm.fmuladd.f64(double %358, double 0xBFB0ECF56BE69CA7, double %357)
  %360 = getelementptr double, ptr %305, i64 -4010
  store double %359, ptr %360, align 8, !tbaa !12
  %361 = load double, ptr %149, align 8, !tbaa !12
  %362 = fsub double %281, %243
  %363 = call double @llvm.fmuladd.f64(double %362, double -1.950000e+00, double %361)
  %364 = fsub double %296, %266
  %365 = call double @llvm.fmuladd.f64(double %364, double 0xBFB0ECF56BE69CA7, double %363)
  %366 = getelementptr double, ptr %305, i64 804011
  store double %365, ptr %366, align 8, !tbaa !12
  %367 = load double, ptr %152, align 8, !tbaa !12
  %368 = fsub double %283, %248
  %369 = call double @llvm.fmuladd.f64(double %368, double -1.950000e+00, double %367)
  %370 = fsub double %298, %267
  %371 = call double @llvm.fmuladd.f64(double %370, double 0xBFB0ECF56BE69CA7, double %369)
  %372 = getelementptr double, ptr %305, i64 -795988
  store double %371, ptr %372, align 8, !tbaa !12
  %373 = load double, ptr %155, align 8, !tbaa !12
  %374 = call double @llvm.fmuladd.f64(double %368, double -1.950000e+00, double %373)
  %375 = fsub double %267, %298
  %376 = call double @llvm.fmuladd.f64(double %375, double 0xBFB0ECF56BE69CA7, double %374)
  %377 = getelementptr double, ptr %305, i64 796013
  store double %376, ptr %377, align 8, !tbaa !12
  %378 = load double, ptr %158, align 8, !tbaa !12
  %379 = call double @llvm.fmuladd.f64(double %362, double -1.950000e+00, double %378)
  %380 = fsub double %266, %296
  %381 = call double @llvm.fmuladd.f64(double %380, double 0xBFB0ECF56BE69CA7, double %379)
  %382 = getelementptr double, ptr %305, i64 -803986
  store double %381, ptr %382, align 8, !tbaa !12
  %383 = load double, ptr %161, align 8, !tbaa !12
  %384 = fsub double %285, %253
  %385 = call double @llvm.fmuladd.f64(double %384, double -1.950000e+00, double %383)
  %386 = fsub double %300, %268
  %387 = call double @llvm.fmuladd.f64(double %386, double 0xBFB0ECF56BE69CA7, double %385)
  %388 = getelementptr double, ptr %305, i64 800035
  store double %387, ptr %388, align 8, !tbaa !12
  %389 = load double, ptr %164, align 8, !tbaa !12
  %390 = fsub double %287, %258
  %391 = call double @llvm.fmuladd.f64(double %390, double -1.950000e+00, double %389)
  %392 = fsub double %302, %269
  %393 = call double @llvm.fmuladd.f64(double %392, double 0xBFB0ECF56BE69CA7, double %391)
  %394 = getelementptr double, ptr %305, i64 -799964
  store double %393, ptr %394, align 8, !tbaa !12
  %395 = load double, ptr %167, align 8, !tbaa !12
  %396 = call double @llvm.fmuladd.f64(double %390, double -1.950000e+00, double %395)
  %397 = fsub double %269, %302
  %398 = call double @llvm.fmuladd.f64(double %397, double 0xBFB0ECF56BE69CA7, double %396)
  %399 = getelementptr double, ptr %305, i64 799997
  store double %398, ptr %399, align 8, !tbaa !12
  %400 = load double, ptr %170, align 8, !tbaa !12
  %401 = call double @llvm.fmuladd.f64(double %384, double -1.950000e+00, double %400)
  %402 = fsub double %268, %300
  %403 = call double @llvm.fmuladd.f64(double %402, double 0xBFB0ECF56BE69CA7, double %401)
  %404 = getelementptr double, ptr %305, i64 -800002
  store double %403, ptr %404, align 8, !tbaa !12
  br label %405

405:                                              ; preds = %44, %109
  %406 = add nsw i64 %36, 1
  %407 = trunc i64 %406 to i32
  %408 = icmp eq i32 %34, %407
  br i1 %408, label %409, label %35

409:                                              ; preds = %405, %5
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %10)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @LBM_handleInOutFlow(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !6
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 1, ptr nonnull @LBM_handleInOutFlow.omp_outlined, ptr nonnull %2)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 1, ptr nonnull @LBM_handleInOutFlow.omp_outlined.2, ptr nonnull %2)
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @LBM_handleInOutFlow.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2) #7 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 39999, ptr %5, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 1, ptr %6, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  store i32 0, ptr %7, align 4, !tbaa !10
  %8 = load i32, ptr %0, align 4, !tbaa !10
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %8, i32 34, ptr nonnull %7, ptr nonnull %4, ptr nonnull %5, ptr nonnull %6, i32 1, i32 1)
  %9 = load i32, ptr %5, align 4
  %10 = call i32 @llvm.smin.i32(i32 %9, i32 39999)
  store i32 %10, ptr %5, align 4, !tbaa !10
  %11 = load i32, ptr %4, align 4, !tbaa !10
  %12 = icmp sgt i32 %11, %10
  br i1 %12, label %218, label %13

13:                                               ; preds = %3
  %14 = load ptr, ptr %2, align 8, !tbaa !6
  %15 = sext i32 %11 to i64
  %16 = add nsw i32 %10, 1
  br label %17

17:                                               ; preds = %13, %17
  %18 = phi i64 [ %15, %13 ], [ %215, %17 ]
  %19 = mul nsw i64 %18, 20
  %20 = getelementptr double, ptr %14, i64 %19
  %21 = getelementptr double, ptr %20, i64 800000
  %22 = load double, ptr %21, align 8, !tbaa !12
  %23 = getelementptr double, ptr %20, i64 800001
  %24 = load double, ptr %23, align 8, !tbaa !12
  %25 = fadd double %22, %24
  %26 = getelementptr double, ptr %20, i64 800002
  %27 = load double, ptr %26, align 8, !tbaa !12
  %28 = fadd double %25, %27
  %29 = getelementptr double, ptr %20, i64 800003
  %30 = load double, ptr %29, align 8, !tbaa !12
  %31 = fadd double %28, %30
  %32 = getelementptr double, ptr %20, i64 800004
  %33 = load double, ptr %32, align 8, !tbaa !12
  %34 = fadd double %31, %33
  %35 = getelementptr double, ptr %20, i64 800005
  %36 = load double, ptr %35, align 8, !tbaa !12
  %37 = fadd double %34, %36
  %38 = getelementptr double, ptr %20, i64 800006
  %39 = load double, ptr %38, align 8, !tbaa !12
  %40 = fadd double %37, %39
  %41 = getelementptr double, ptr %20, i64 800007
  %42 = load double, ptr %41, align 8, !tbaa !12
  %43 = fadd double %40, %42
  %44 = getelementptr double, ptr %20, i64 800008
  %45 = load double, ptr %44, align 8, !tbaa !12
  %46 = fadd double %43, %45
  %47 = getelementptr double, ptr %20, i64 800009
  %48 = load double, ptr %47, align 8, !tbaa !12
  %49 = fadd double %46, %48
  %50 = getelementptr double, ptr %20, i64 800010
  %51 = load double, ptr %50, align 8, !tbaa !12
  %52 = fadd double %49, %51
  %53 = getelementptr double, ptr %20, i64 800011
  %54 = load double, ptr %53, align 8, !tbaa !12
  %55 = fadd double %52, %54
  %56 = getelementptr double, ptr %20, i64 800012
  %57 = load double, ptr %56, align 8, !tbaa !12
  %58 = fadd double %55, %57
  %59 = getelementptr double, ptr %20, i64 800013
  %60 = load double, ptr %59, align 8, !tbaa !12
  %61 = fadd double %58, %60
  %62 = getelementptr double, ptr %20, i64 800014
  %63 = load double, ptr %62, align 8, !tbaa !12
  %64 = fadd double %61, %63
  %65 = getelementptr double, ptr %20, i64 800015
  %66 = load double, ptr %65, align 8, !tbaa !12
  %67 = fadd double %64, %66
  %68 = getelementptr double, ptr %20, i64 800016
  %69 = load double, ptr %68, align 8, !tbaa !12
  %70 = fadd double %67, %69
  %71 = getelementptr double, ptr %20, i64 800017
  %72 = load double, ptr %71, align 8, !tbaa !12
  %73 = fadd double %70, %72
  %74 = getelementptr double, ptr %20, i64 800018
  %75 = load double, ptr %74, align 8, !tbaa !12
  %76 = fadd double %73, %75
  %77 = getelementptr double, ptr %20, i64 1600000
  %78 = load double, ptr %77, align 8, !tbaa !12
  %79 = getelementptr double, ptr %20, i64 1600001
  %80 = load double, ptr %79, align 8, !tbaa !12
  %81 = fadd double %78, %80
  %82 = getelementptr double, ptr %20, i64 1600002
  %83 = load double, ptr %82, align 8, !tbaa !12
  %84 = fadd double %81, %83
  %85 = getelementptr double, ptr %20, i64 1600003
  %86 = load double, ptr %85, align 8, !tbaa !12
  %87 = fadd double %84, %86
  %88 = getelementptr double, ptr %20, i64 1600004
  %89 = load double, ptr %88, align 8, !tbaa !12
  %90 = fadd double %87, %89
  %91 = getelementptr double, ptr %20, i64 1600005
  %92 = load double, ptr %91, align 8, !tbaa !12
  %93 = fadd double %90, %92
  %94 = getelementptr double, ptr %20, i64 1600006
  %95 = load double, ptr %94, align 8, !tbaa !12
  %96 = fadd double %93, %95
  %97 = getelementptr double, ptr %20, i64 1600007
  %98 = load double, ptr %97, align 8, !tbaa !12
  %99 = fadd double %96, %98
  %100 = getelementptr double, ptr %20, i64 1600008
  %101 = load double, ptr %100, align 8, !tbaa !12
  %102 = fadd double %99, %101
  %103 = getelementptr double, ptr %20, i64 1600009
  %104 = load double, ptr %103, align 8, !tbaa !12
  %105 = fadd double %102, %104
  %106 = getelementptr double, ptr %20, i64 1600010
  %107 = load double, ptr %106, align 8, !tbaa !12
  %108 = fadd double %105, %107
  %109 = getelementptr double, ptr %20, i64 1600011
  %110 = load double, ptr %109, align 8, !tbaa !12
  %111 = fadd double %108, %110
  %112 = getelementptr double, ptr %20, i64 1600012
  %113 = load double, ptr %112, align 8, !tbaa !12
  %114 = fadd double %111, %113
  %115 = getelementptr double, ptr %20, i64 1600013
  %116 = load double, ptr %115, align 8, !tbaa !12
  %117 = fadd double %114, %116
  %118 = getelementptr double, ptr %20, i64 1600014
  %119 = load double, ptr %118, align 8, !tbaa !12
  %120 = fadd double %117, %119
  %121 = getelementptr double, ptr %20, i64 1600015
  %122 = load double, ptr %121, align 8, !tbaa !12
  %123 = fadd double %120, %122
  %124 = getelementptr double, ptr %20, i64 1600016
  %125 = load double, ptr %124, align 8, !tbaa !12
  %126 = fadd double %123, %125
  %127 = getelementptr double, ptr %20, i64 1600017
  %128 = load double, ptr %127, align 8, !tbaa !12
  %129 = fadd double %126, %128
  %130 = getelementptr double, ptr %20, i64 1600018
  %131 = load double, ptr %130, align 8, !tbaa !12
  %132 = fadd double %129, %131
  %133 = fneg double %132
  %134 = call double @llvm.fmuladd.f64(double %76, double 2.000000e+00, double %133)
  %135 = trunc i64 %18 to i32
  %136 = srem i32 %135, 200
  %137 = sitofp i32 %136 to double
  %138 = fdiv double %137, 9.950000e+01
  %139 = fadd double %138, -1.000000e+00
  %140 = sdiv i32 %135, 200
  %141 = srem i32 %140, 200
  %142 = sitofp i32 %141 to double
  %143 = fdiv double %142, 9.950000e+01
  %144 = fadd double %143, -1.000000e+00
  %145 = fneg double %139
  %146 = call double @llvm.fmuladd.f64(double %145, double %139, double 1.000000e+00)
  %147 = fmul double %146, 1.000000e-02
  %148 = fneg double %144
  %149 = call double @llvm.fmuladd.f64(double %148, double %144, double 1.000000e+00)
  %150 = fmul double %147, %149
  %151 = call double @llvm.fmuladd.f64(double %150, double %150, double 0.000000e+00)
  %152 = fmul double %151, 1.500000e+00
  %153 = fmul double %134, 0x3FD5555555555555
  %154 = mul i64 %18, 85899345920
  %155 = ashr exact i64 %154, 32
  %156 = or disjoint i64 %155, 1
  %157 = getelementptr inbounds double, ptr %14, i64 %156
  %158 = mul i64 %18, 85899345920
  %159 = ashr exact i64 %158, 32
  %160 = or disjoint i64 %159, 2
  %161 = getelementptr inbounds double, ptr %14, i64 %160
  %162 = mul i64 %18, 85899345920
  %163 = ashr exact i64 %162, 32
  %164 = or disjoint i64 %163, 3
  %165 = getelementptr inbounds double, ptr %14, i64 %164
  %166 = getelementptr double, ptr %20, i64 4
  %167 = call double @llvm.fmuladd.f64(double %150, double 4.500000e+00, double 3.000000e+00)
  %168 = call double @llvm.fmuladd.f64(double %150, double %167, double 1.000000e+00)
  %169 = insertelement <2 x double> <double 1.000000e+00, double poison>, double %168, i64 1
  %170 = insertelement <2 x double> poison, double %152, i64 0
  %171 = shufflevector <2 x double> %170, <2 x double> poison, <2 x i32> zeroinitializer
  %172 = fsub <2 x double> %169, %171
  %173 = extractelement <2 x double> %172, i64 0
  %174 = fmul double %173, %153
  store double %174, ptr %20, align 8, !tbaa !12
  %175 = call double @llvm.fmuladd.f64(double %150, double 4.500000e+00, double -3.000000e+00)
  %176 = call double @llvm.fmuladd.f64(double %150, double %175, double 1.000000e+00)
  %177 = fsub double %176, %152
  %178 = getelementptr double, ptr %20, i64 6
  %179 = insertelement <2 x double> poison, double %134, i64 0
  %180 = shufflevector <2 x double> %179, <2 x double> poison, <2 x i32> zeroinitializer
  %181 = fmul <2 x double> %180, <double 0x3FAC71C71C71C71C, double 0x3F9C71C71C71C71C>
  %182 = shufflevector <2 x double> %181, <2 x double> poison, <2 x i32> zeroinitializer
  %183 = fmul <2 x double> %172, %182
  %184 = extractelement <2 x double> %183, i64 0
  store double %184, ptr %157, align 8, !tbaa !12
  store double %184, ptr %161, align 8, !tbaa !12
  store double %184, ptr %165, align 8, !tbaa !12
  store <2 x double> %183, ptr %166, align 8, !tbaa !12
  %185 = shufflevector <2 x double> %172, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %186 = insertelement <2 x double> %185, double %177, i64 0
  %187 = fmul <2 x double> %186, %181
  store <2 x double> %187, ptr %178, align 8, !tbaa !12
  %188 = getelementptr double, ptr %20, i64 8
  %189 = extractelement <2 x double> %187, i64 1
  store double %189, ptr %188, align 8, !tbaa !12
  %190 = getelementptr double, ptr %20, i64 9
  store double %189, ptr %190, align 8, !tbaa !12
  %191 = getelementptr double, ptr %20, i64 10
  store double %189, ptr %191, align 8, !tbaa !12
  %192 = fadd double %150, 0.000000e+00
  %193 = extractelement <2 x double> %181, i64 1
  %194 = getelementptr double, ptr %20, i64 11
  %195 = fsub double 0.000000e+00, %150
  %196 = insertelement <2 x double> poison, double %192, i64 0
  %197 = insertelement <2 x double> %196, double %195, i64 1
  %198 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %197, <2 x double> <double 4.500000e+00, double 4.500000e+00>, <2 x double> <double 3.000000e+00, double 3.000000e+00>)
  %199 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %197, <2 x double> %198, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %200 = fsub <2 x double> %199, %171
  %201 = shufflevector <2 x double> %181, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %202 = fmul <2 x double> %200, %201
  store <2 x double> %202, ptr %194, align 8, !tbaa !12
  %203 = fmul <2 x double> %172, %181
  %204 = extractelement <2 x double> %203, i64 1
  %205 = getelementptr double, ptr %20, i64 13
  store double %204, ptr %205, align 8, !tbaa !12
  %206 = fneg double %150
  %207 = call double @llvm.fmuladd.f64(double %206, double 4.500000e+00, double 3.000000e+00)
  %208 = call double @llvm.fmuladd.f64(double %206, double %207, double 1.000000e+00)
  %209 = fsub double %208, %152
  %210 = fmul double %209, %193
  %211 = getelementptr double, ptr %20, i64 14
  store double %210, ptr %211, align 8, !tbaa !12
  %212 = getelementptr double, ptr %20, i64 15
  store <2 x double> %202, ptr %212, align 8, !tbaa !12
  %213 = getelementptr double, ptr %20, i64 17
  store double %204, ptr %213, align 8, !tbaa !12
  %214 = getelementptr double, ptr %20, i64 18
  store double %210, ptr %214, align 8, !tbaa !12
  %215 = add nsw i64 %18, 1
  %216 = trunc i64 %215 to i32
  %217 = icmp eq i32 %16, %216
  br i1 %217, label %218, label %17

218:                                              ; preds = %17, %3
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %8)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @LBM_handleInOutFlow.omp_outlined.2(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2) #7 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 39999, ptr %5, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 1, ptr %6, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  store i32 0, ptr %7, align 4, !tbaa !10
  %8 = load i32, ptr %0, align 4, !tbaa !10
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %8, i32 34, ptr nonnull %7, ptr nonnull %4, ptr nonnull %5, ptr nonnull %6, i32 1, i32 1)
  %9 = load i32, ptr %5, align 4
  %10 = call i32 @llvm.smin.i32(i32 %9, i32 39999)
  store i32 %10, ptr %5, align 4, !tbaa !10
  %11 = load i32, ptr %4, align 4, !tbaa !10
  %12 = icmp sgt i32 %11, %10
  br i1 %12, label %299, label %13

13:                                               ; preds = %3
  %14 = load ptr, ptr %2, align 8, !tbaa !6
  %15 = getelementptr double, ptr %14, i64 207200000
  %16 = sext i32 %11 to i64
  %17 = add nsw i32 %10, 1
  br label %18

18:                                               ; preds = %13, %18
  %19 = phi i64 [ %16, %13 ], [ %296, %18 ]
  %20 = mul nsw i64 %19, 20
  %21 = getelementptr double, ptr %14, i64 %20
  %22 = getelementptr double, ptr %21, i64 206400000
  %23 = load double, ptr %22, align 8, !tbaa !12
  %24 = getelementptr double, ptr %21, i64 206400001
  %25 = load double, ptr %24, align 8, !tbaa !12
  %26 = fadd double %23, %25
  %27 = getelementptr double, ptr %21, i64 206400002
  %28 = load double, ptr %27, align 8, !tbaa !12
  %29 = fadd double %26, %28
  %30 = getelementptr double, ptr %21, i64 206400003
  %31 = load double, ptr %30, align 8, !tbaa !12
  %32 = fadd double %29, %31
  %33 = getelementptr double, ptr %21, i64 206400004
  %34 = load double, ptr %33, align 8, !tbaa !12
  %35 = fadd double %32, %34
  %36 = getelementptr double, ptr %21, i64 206400005
  %37 = load double, ptr %36, align 8, !tbaa !12
  %38 = fadd double %35, %37
  %39 = getelementptr double, ptr %21, i64 206400006
  %40 = load double, ptr %39, align 8, !tbaa !12
  %41 = fadd double %38, %40
  %42 = getelementptr double, ptr %21, i64 206400007
  %43 = load double, ptr %42, align 8, !tbaa !12
  %44 = fadd double %41, %43
  %45 = getelementptr double, ptr %21, i64 206400008
  %46 = load double, ptr %45, align 8, !tbaa !12
  %47 = fadd double %44, %46
  %48 = getelementptr double, ptr %21, i64 206400009
  %49 = load double, ptr %48, align 8, !tbaa !12
  %50 = fadd double %47, %49
  %51 = getelementptr double, ptr %21, i64 206400010
  %52 = load double, ptr %51, align 8, !tbaa !12
  %53 = fadd double %50, %52
  %54 = getelementptr double, ptr %21, i64 206400011
  %55 = load double, ptr %54, align 8, !tbaa !12
  %56 = fadd double %53, %55
  %57 = getelementptr double, ptr %21, i64 206400012
  %58 = load double, ptr %57, align 8, !tbaa !12
  %59 = fadd double %56, %58
  %60 = getelementptr double, ptr %21, i64 206400013
  %61 = load double, ptr %60, align 8, !tbaa !12
  %62 = fadd double %59, %61
  %63 = getelementptr double, ptr %21, i64 206400014
  %64 = load double, ptr %63, align 8, !tbaa !12
  %65 = fadd double %62, %64
  %66 = getelementptr double, ptr %21, i64 206400015
  %67 = load double, ptr %66, align 8, !tbaa !12
  %68 = fadd double %65, %67
  %69 = getelementptr double, ptr %21, i64 206400016
  %70 = load double, ptr %69, align 8, !tbaa !12
  %71 = fadd double %68, %70
  %72 = getelementptr double, ptr %21, i64 206400017
  %73 = load double, ptr %72, align 8, !tbaa !12
  %74 = fadd double %71, %73
  %75 = getelementptr double, ptr %21, i64 206400018
  %76 = load double, ptr %75, align 8, !tbaa !12
  %77 = fadd double %74, %76
  %78 = fsub double %31, %34
  %79 = fadd double %78, %43
  %80 = fsub double %79, %46
  %81 = fadd double %80, %49
  %82 = fsub double %25, %28
  %83 = fadd double %82, %43
  %84 = fadd double %83, %46
  %85 = fsub double %84, %49
  %86 = fsub double %37, %40
  %87 = fadd double %86, %55
  %88 = fsub double %87, %58
  %89 = fadd double %88, %61
  %90 = fsub double %89, %64
  %91 = fadd double %90, %67
  %92 = fsub double %91, %70
  %93 = fadd double %92, %73
  %94 = fsub double %93, %76
  %95 = fdiv double %94, %77
  %96 = getelementptr double, ptr %21, i64 205600000
  %97 = load double, ptr %96, align 8, !tbaa !12
  %98 = getelementptr double, ptr %21, i64 205600001
  %99 = load double, ptr %98, align 8, !tbaa !12
  %100 = fadd double %97, %99
  %101 = getelementptr double, ptr %21, i64 205600002
  %102 = load double, ptr %101, align 8, !tbaa !12
  %103 = fadd double %100, %102
  %104 = getelementptr double, ptr %21, i64 205600003
  %105 = load double, ptr %104, align 8, !tbaa !12
  %106 = fadd double %103, %105
  %107 = getelementptr double, ptr %21, i64 205600004
  %108 = load double, ptr %107, align 8, !tbaa !12
  %109 = fadd double %106, %108
  %110 = getelementptr double, ptr %21, i64 205600005
  %111 = load double, ptr %110, align 8, !tbaa !12
  %112 = fadd double %109, %111
  %113 = getelementptr double, ptr %21, i64 205600006
  %114 = load double, ptr %113, align 8, !tbaa !12
  %115 = fadd double %112, %114
  %116 = getelementptr double, ptr %21, i64 205600007
  %117 = load double, ptr %116, align 8, !tbaa !12
  %118 = fadd double %115, %117
  %119 = getelementptr double, ptr %21, i64 205600008
  %120 = load double, ptr %119, align 8, !tbaa !12
  %121 = fadd double %118, %120
  %122 = getelementptr double, ptr %21, i64 205600009
  %123 = load double, ptr %122, align 8, !tbaa !12
  %124 = fadd double %121, %123
  %125 = getelementptr double, ptr %21, i64 205600010
  %126 = load double, ptr %125, align 8, !tbaa !12
  %127 = fadd double %124, %126
  %128 = getelementptr double, ptr %21, i64 205600011
  %129 = load double, ptr %128, align 8, !tbaa !12
  %130 = fadd double %127, %129
  %131 = getelementptr double, ptr %21, i64 205600012
  %132 = load double, ptr %131, align 8, !tbaa !12
  %133 = fadd double %130, %132
  %134 = getelementptr double, ptr %21, i64 205600013
  %135 = load double, ptr %134, align 8, !tbaa !12
  %136 = fadd double %133, %135
  %137 = getelementptr double, ptr %21, i64 205600014
  %138 = load double, ptr %137, align 8, !tbaa !12
  %139 = fadd double %136, %138
  %140 = getelementptr double, ptr %21, i64 205600015
  %141 = load double, ptr %140, align 8, !tbaa !12
  %142 = fadd double %139, %141
  %143 = getelementptr double, ptr %21, i64 205600016
  %144 = load double, ptr %143, align 8, !tbaa !12
  %145 = fadd double %142, %144
  %146 = getelementptr double, ptr %21, i64 205600017
  %147 = load double, ptr %146, align 8, !tbaa !12
  %148 = fadd double %145, %147
  %149 = getelementptr double, ptr %21, i64 205600018
  %150 = load double, ptr %149, align 8, !tbaa !12
  %151 = fadd double %148, %150
  %152 = fsub double %105, %108
  %153 = fadd double %152, %117
  %154 = fsub double %153, %120
  %155 = fadd double %154, %123
  %156 = fsub double %99, %102
  %157 = fadd double %156, %117
  %158 = fadd double %157, %120
  %159 = fsub double %158, %123
  %160 = fsub double %111, %114
  %161 = fadd double %160, %129
  %162 = fsub double %161, %132
  %163 = fadd double %162, %135
  %164 = fsub double %163, %138
  %165 = fadd double %164, %141
  %166 = fsub double %165, %144
  %167 = fadd double %166, %147
  %168 = fsub double %167, %150
  %169 = fneg double %168
  %170 = fdiv double %169, %151
  %171 = call double @llvm.fmuladd.f64(double %95, double 2.000000e+00, double %170)
  %172 = getelementptr double, ptr %15, i64 %20
  %173 = getelementptr double, ptr %21, i64 207200002
  %174 = insertelement <2 x double> poison, double %85, i64 0
  %175 = insertelement <2 x double> %174, double %81, i64 1
  %176 = insertelement <2 x double> poison, double %52, i64 0
  %177 = shufflevector <2 x double> %176, <2 x double> poison, <2 x i32> zeroinitializer
  %178 = fsub <2 x double> %175, %177
  %179 = insertelement <2 x double> poison, double %55, i64 0
  %180 = insertelement <2 x double> %179, double %67, i64 1
  %181 = fadd <2 x double> %178, %180
  %182 = insertelement <2 x double> poison, double %58, i64 0
  %183 = insertelement <2 x double> %182, double %70, i64 1
  %184 = fadd <2 x double> %181, %183
  %185 = insertelement <2 x double> poison, double %61, i64 0
  %186 = insertelement <2 x double> %185, double %73, i64 1
  %187 = fsub <2 x double> %184, %186
  %188 = insertelement <2 x double> poison, double %64, i64 0
  %189 = insertelement <2 x double> %188, double %76, i64 1
  %190 = fsub <2 x double> %187, %189
  %191 = insertelement <2 x double> poison, double %77, i64 0
  %192 = shufflevector <2 x double> %191, <2 x double> poison, <2 x i32> zeroinitializer
  %193 = fdiv <2 x double> %190, %192
  %194 = insertelement <2 x double> poison, double %159, i64 0
  %195 = insertelement <2 x double> %194, double %155, i64 1
  %196 = insertelement <2 x double> poison, double %126, i64 0
  %197 = shufflevector <2 x double> %196, <2 x double> poison, <2 x i32> zeroinitializer
  %198 = fsub <2 x double> %195, %197
  %199 = insertelement <2 x double> poison, double %129, i64 0
  %200 = insertelement <2 x double> %199, double %141, i64 1
  %201 = fadd <2 x double> %198, %200
  %202 = insertelement <2 x double> poison, double %132, i64 0
  %203 = insertelement <2 x double> %202, double %144, i64 1
  %204 = fadd <2 x double> %201, %203
  %205 = insertelement <2 x double> poison, double %135, i64 0
  %206 = insertelement <2 x double> %205, double %147, i64 1
  %207 = fsub <2 x double> %204, %206
  %208 = insertelement <2 x double> poison, double %138, i64 0
  %209 = insertelement <2 x double> %208, double %150, i64 1
  %210 = fsub <2 x double> %207, %209
  %211 = fneg <2 x double> %210
  %212 = insertelement <2 x double> poison, double %151, i64 0
  %213 = shufflevector <2 x double> %212, <2 x double> poison, <2 x i32> zeroinitializer
  %214 = fdiv <2 x double> %211, %213
  %215 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %193, <2 x double> <double 2.000000e+00, double 2.000000e+00>, <2 x double> %214)
  %216 = extractelement <2 x double> %215, i64 0
  %217 = fmul <2 x double> %215, %215
  %218 = extractelement <2 x double> %217, i64 0
  %219 = extractelement <2 x double> %215, i64 1
  %220 = call double @llvm.fmuladd.f64(double %219, double %219, double %218)
  %221 = call double @llvm.fmuladd.f64(double %171, double %171, double %220)
  %222 = fmul double %221, 1.500000e+00
  %223 = call double @llvm.fmuladd.f64(double %216, double 4.500000e+00, double 3.000000e+00)
  %224 = call double @llvm.fmuladd.f64(double %216, double %223, double 1.000000e+00)
  %225 = insertelement <2 x double> <double 1.000000e+00, double poison>, double %224, i64 1
  %226 = insertelement <2 x double> poison, double %222, i64 0
  %227 = shufflevector <2 x double> %226, <2 x double> poison, <2 x i32> zeroinitializer
  %228 = fsub <2 x double> %225, %227
  %229 = fmul <2 x double> %228, <double 0x3FD5555555555555, double 0x3FAC71C71C71C71C>
  store <2 x double> %229, ptr %172, align 8, !tbaa !12
  %230 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %215, <2 x double> <double 4.500000e+00, double 4.500000e+00>, <2 x double> <double -3.000000e+00, double 3.000000e+00>)
  %231 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %215, <2 x double> %230, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %232 = fsub <2 x double> %231, %227
  %233 = fmul <2 x double> %232, <double 0x3FAC71C71C71C71C, double 0x3FAC71C71C71C71C>
  store <2 x double> %233, ptr %173, align 8, !tbaa !12
  %234 = getelementptr double, ptr %21, i64 207200004
  %235 = shufflevector <2 x double> %215, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %236 = insertelement <2 x double> %235, double %171, i64 1
  %237 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %236, <2 x double> <double 4.500000e+00, double 4.500000e+00>, <2 x double> <double -3.000000e+00, double 3.000000e+00>)
  %238 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %236, <2 x double> %237, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %239 = fsub <2 x double> %238, %227
  %240 = fmul <2 x double> %239, <double 0x3FAC71C71C71C71C, double 0x3FAC71C71C71C71C>
  store <2 x double> %240, ptr %234, align 8, !tbaa !12
  %241 = getelementptr double, ptr %21, i64 207200006
  %242 = fadd double %219, %216
  %243 = insertelement <2 x double> poison, double %171, i64 0
  %244 = insertelement <2 x double> %243, double %242, i64 1
  %245 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %244, <2 x double> <double 4.500000e+00, double 4.500000e+00>, <2 x double> <double -3.000000e+00, double 3.000000e+00>)
  %246 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %244, <2 x double> %245, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %247 = fsub <2 x double> %246, %227
  %248 = fmul <2 x double> %247, <double 0x3FAC71C71C71C71C, double 0x3F9C71C71C71C71C>
  store <2 x double> %248, ptr %241, align 8, !tbaa !12
  %249 = fneg double %219
  %250 = getelementptr double, ptr %21, i64 207200008
  %251 = fsub <2 x double> %215, %235
  %252 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %251, <2 x double> <double 4.500000e+00, double 4.500000e+00>, <2 x double> <double 3.000000e+00, double 3.000000e+00>)
  %253 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %251, <2 x double> %252, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %254 = fsub <2 x double> %253, %227
  %255 = fmul <2 x double> %254, <double 0x3F9C71C71C71C71C, double 0x3F9C71C71C71C71C>
  store <2 x double> %255, ptr %250, align 8, !tbaa !12
  %256 = fsub double %249, %216
  %257 = getelementptr double, ptr %21, i64 207200010
  %258 = fadd double %216, %171
  %259 = insertelement <2 x double> poison, double %256, i64 0
  %260 = insertelement <2 x double> %259, double %258, i64 1
  %261 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %260, <2 x double> <double 4.500000e+00, double 4.500000e+00>, <2 x double> <double 3.000000e+00, double 3.000000e+00>)
  %262 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %260, <2 x double> %261, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %263 = fsub <2 x double> %262, %227
  %264 = fmul <2 x double> %263, <double 0x3F9C71C71C71C71C, double 0x3F9C71C71C71C71C>
  store <2 x double> %264, ptr %257, align 8, !tbaa !12
  %265 = getelementptr double, ptr %21, i64 207200012
  %266 = fneg double %216
  %267 = insertelement <2 x double> %215, double %171, i64 1
  %268 = insertelement <2 x double> %235, double %171, i64 0
  %269 = fsub <2 x double> %267, %268
  %270 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %269, <2 x double> <double 4.500000e+00, double 4.500000e+00>, <2 x double> <double 3.000000e+00, double 3.000000e+00>)
  %271 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %269, <2 x double> %270, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %272 = fsub <2 x double> %271, %227
  %273 = fmul <2 x double> %272, <double 0x3F9C71C71C71C71C, double 0x3F9C71C71C71C71C>
  store <2 x double> %273, ptr %265, align 8, !tbaa !12
  %274 = fsub double %266, %171
  %275 = getelementptr double, ptr %21, i64 207200014
  %276 = fadd double %219, %171
  %277 = insertelement <2 x double> poison, double %274, i64 0
  %278 = insertelement <2 x double> %277, double %276, i64 1
  %279 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %278, <2 x double> <double 4.500000e+00, double 4.500000e+00>, <2 x double> <double 3.000000e+00, double 3.000000e+00>)
  %280 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %278, <2 x double> %279, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %281 = fsub <2 x double> %280, %227
  %282 = fmul <2 x double> %281, <double 0x3F9C71C71C71C71C, double 0x3F9C71C71C71C71C>
  store <2 x double> %282, ptr %275, align 8, !tbaa !12
  %283 = getelementptr double, ptr %21, i64 207200016
  %284 = insertelement <2 x double> %215, double %171, i64 0
  %285 = fsub <2 x double> %236, %284
  %286 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %285, <2 x double> <double 4.500000e+00, double 4.500000e+00>, <2 x double> <double 3.000000e+00, double 3.000000e+00>)
  %287 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %285, <2 x double> %286, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %288 = fsub <2 x double> %287, %227
  %289 = fmul <2 x double> %288, <double 0x3F9C71C71C71C71C, double 0x3F9C71C71C71C71C>
  store <2 x double> %289, ptr %283, align 8, !tbaa !12
  %290 = fsub double %249, %171
  %291 = call double @llvm.fmuladd.f64(double %290, double 4.500000e+00, double 3.000000e+00)
  %292 = call double @llvm.fmuladd.f64(double %290, double %291, double 1.000000e+00)
  %293 = fsub double %292, %222
  %294 = fmul double %293, 0x3F9C71C71C71C71C
  %295 = getelementptr double, ptr %21, i64 207200018
  store double %294, ptr %295, align 8, !tbaa !12
  %296 = add nsw i64 %19, 1
  %297 = trunc i64 %296 to i32
  %298 = icmp eq i32 %17, %297
  br i1 %298, label %299, label %18

299:                                              ; preds = %18, %3
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %8)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @LBM_showGridStatistics(ptr nocapture noundef readonly %0) local_unnamed_addr #10 {
  br label %2

2:                                                ; preds = %1, %124
  %3 = phi i64 [ 0, %1 ], [ %130, %124 ]
  %4 = phi double [ 0.000000e+00, %1 ], [ %75, %124 ]
  %5 = phi i32 [ 0, %1 ], [ %129, %124 ]
  %6 = phi double [ -1.000000e+30, %1 ], [ %74, %124 ]
  %7 = phi double [ 1.000000e+30, %1 ], [ %72, %124 ]
  %8 = phi i32 [ 0, %1 ], [ %128, %124 ]
  %9 = phi double [ -1.000000e+30, %1 ], [ %127, %124 ]
  %10 = phi double [ 1.000000e+30, %1 ], [ %126, %124 ]
  %11 = phi i32 [ 0, %1 ], [ %125, %124 ]
  %12 = getelementptr inbounds double, ptr %0, i64 %3
  %13 = load double, ptr %12, align 8, !tbaa !12
  %14 = or disjoint i64 %3, 1
  %15 = getelementptr inbounds double, ptr %0, i64 %14
  %16 = load double, ptr %15, align 8, !tbaa !12
  %17 = fadd double %13, %16
  %18 = or disjoint i64 %3, 2
  %19 = getelementptr inbounds double, ptr %0, i64 %18
  %20 = load double, ptr %19, align 8, !tbaa !12
  %21 = fadd double %17, %20
  %22 = or disjoint i64 %3, 3
  %23 = getelementptr inbounds double, ptr %0, i64 %22
  %24 = load double, ptr %23, align 8, !tbaa !12
  %25 = fadd double %21, %24
  %26 = getelementptr double, ptr %12, i64 4
  %27 = load double, ptr %26, align 8, !tbaa !12
  %28 = fadd double %25, %27
  %29 = getelementptr double, ptr %12, i64 5
  %30 = load double, ptr %29, align 8, !tbaa !12
  %31 = fadd double %28, %30
  %32 = getelementptr double, ptr %12, i64 6
  %33 = load double, ptr %32, align 8, !tbaa !12
  %34 = fadd double %31, %33
  %35 = getelementptr double, ptr %12, i64 7
  %36 = load double, ptr %35, align 8, !tbaa !12
  %37 = fadd double %34, %36
  %38 = getelementptr double, ptr %12, i64 8
  %39 = load double, ptr %38, align 8, !tbaa !12
  %40 = fadd double %37, %39
  %41 = getelementptr double, ptr %12, i64 9
  %42 = load double, ptr %41, align 8, !tbaa !12
  %43 = fadd double %40, %42
  %44 = getelementptr double, ptr %12, i64 10
  %45 = load double, ptr %44, align 8, !tbaa !12
  %46 = fadd double %43, %45
  %47 = getelementptr double, ptr %12, i64 11
  %48 = load double, ptr %47, align 8, !tbaa !12
  %49 = fadd double %46, %48
  %50 = getelementptr double, ptr %12, i64 12
  %51 = load double, ptr %50, align 8, !tbaa !12
  %52 = fadd double %49, %51
  %53 = getelementptr double, ptr %12, i64 13
  %54 = load double, ptr %53, align 8, !tbaa !12
  %55 = fadd double %52, %54
  %56 = getelementptr double, ptr %12, i64 14
  %57 = load double, ptr %56, align 8, !tbaa !12
  %58 = fadd double %55, %57
  %59 = getelementptr double, ptr %12, i64 15
  %60 = load double, ptr %59, align 8, !tbaa !12
  %61 = fadd double %58, %60
  %62 = getelementptr double, ptr %12, i64 16
  %63 = load double, ptr %62, align 8, !tbaa !12
  %64 = fadd double %61, %63
  %65 = getelementptr double, ptr %12, i64 17
  %66 = load double, ptr %65, align 8, !tbaa !12
  %67 = fadd double %64, %66
  %68 = getelementptr double, ptr %12, i64 18
  %69 = load double, ptr %68, align 8, !tbaa !12
  %70 = fadd double %67, %69
  %71 = fcmp olt double %70, %7
  %72 = select i1 %71, double %70, double %7
  %73 = fcmp ogt double %70, %6
  %74 = select i1 %73, double %70, double %6
  %75 = fadd double %4, %70
  %76 = getelementptr double, ptr %12, i64 19
  %77 = load i32, ptr %76, align 4, !tbaa !10
  %78 = and i32 %77, 1
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %2
  %81 = add nsw i32 %5, 1
  br label %124

82:                                               ; preds = %2
  %83 = lshr exact i32 %77, 1
  %84 = and i32 %83, 1
  %85 = xor i32 %84, 1
  %86 = add nsw i32 %85, %11
  %87 = add i32 %84, %8
  %88 = fsub double %24, %27
  %89 = fadd double %88, %36
  %90 = fsub double %89, %39
  %91 = fadd double %90, %42
  %92 = fsub double %91, %45
  %93 = fadd double %92, %60
  %94 = fadd double %93, %63
  %95 = fsub double %94, %66
  %96 = fsub double %95, %69
  %97 = fsub double %16, %20
  %98 = fadd double %97, %36
  %99 = fadd double %98, %39
  %100 = fsub double %99, %42
  %101 = fsub double %100, %45
  %102 = fadd double %101, %48
  %103 = fadd double %102, %51
  %104 = fsub double %103, %54
  %105 = fsub double %104, %57
  %106 = fsub double %30, %33
  %107 = fadd double %106, %48
  %108 = fsub double %107, %51
  %109 = fadd double %108, %54
  %110 = fsub double %109, %57
  %111 = fadd double %110, %60
  %112 = fsub double %111, %63
  %113 = fadd double %112, %66
  %114 = fsub double %113, %69
  %115 = fmul double %105, %105
  %116 = tail call double @llvm.fmuladd.f64(double %96, double %96, double %115)
  %117 = tail call double @llvm.fmuladd.f64(double %114, double %114, double %116)
  %118 = fmul double %70, %70
  %119 = fdiv double %117, %118
  %120 = fcmp olt double %119, %10
  %121 = select i1 %120, double %119, double %10
  %122 = fcmp ogt double %119, %9
  br i1 %122, label %123, label %124

123:                                              ; preds = %82
  br label %124

124:                                              ; preds = %80, %123, %82
  %125 = phi i32 [ %11, %80 ], [ %86, %123 ], [ %86, %82 ]
  %126 = phi double [ %10, %80 ], [ %121, %123 ], [ %121, %82 ]
  %127 = phi double [ %9, %80 ], [ %119, %123 ], [ %9, %82 ]
  %128 = phi i32 [ %8, %80 ], [ %87, %123 ], [ %87, %82 ]
  %129 = phi i32 [ %81, %80 ], [ %5, %123 ], [ %5, %82 ]
  %130 = add nuw nsw i64 %3, 20
  %131 = icmp ult i64 %3, 207999980
  br i1 %131, label %2, label %132, !llvm.loop !24

132:                                              ; preds = %124
  %133 = tail call double @sqrt(double noundef %126) #18
  %134 = tail call double @sqrt(double noundef %127) #18
  %135 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %129, i32 noundef %128, i32 noundef %125, double noundef %72, double noundef %74, double noundef %75, double noundef %133, double noundef %134) #16
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #12

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @LBM_storeVelocityField(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #10 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  %7 = icmp eq i32 %2, 0
  %8 = select i1 %7, ptr @.str.5, ptr @.str.4
  %9 = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull %8) #16
  br label %10

10:                                               ; preds = %3, %126
  %11 = phi i64 [ 0, %3 ], [ %127, %126 ]
  %12 = mul nuw nsw i64 %11, 40000
  br label %13

13:                                               ; preds = %10, %123
  %14 = phi i64 [ 0, %10 ], [ %124, %123 ]
  %15 = mul nuw nsw i64 %14, 200
  %16 = add nuw nsw i64 %15, %12
  br label %17

17:                                               ; preds = %13, %120
  %18 = phi i64 [ 0, %13 ], [ %121, %120 ]
  %19 = add nuw nsw i64 %16, %18
  %20 = mul nuw nsw i64 %19, 20
  %21 = getelementptr inbounds double, ptr %0, i64 %20
  %22 = load double, ptr %21, align 8, !tbaa !12
  %23 = or disjoint i64 %20, 1
  %24 = getelementptr inbounds double, ptr %0, i64 %23
  %25 = load double, ptr %24, align 8, !tbaa !12
  %26 = fadd double %22, %25
  %27 = or disjoint i64 %20, 2
  %28 = getelementptr inbounds double, ptr %0, i64 %27
  %29 = load double, ptr %28, align 8, !tbaa !12
  %30 = fadd double %26, %29
  %31 = or disjoint i64 %20, 3
  %32 = getelementptr inbounds double, ptr %0, i64 %31
  %33 = load double, ptr %32, align 8, !tbaa !12
  %34 = fadd double %30, %33
  %35 = getelementptr double, ptr %21, i64 4
  %36 = load double, ptr %35, align 8, !tbaa !12
  %37 = fadd double %34, %36
  %38 = getelementptr double, ptr %21, i64 5
  %39 = load double, ptr %38, align 8, !tbaa !12
  %40 = fadd double %37, %39
  %41 = getelementptr double, ptr %21, i64 6
  %42 = load double, ptr %41, align 8, !tbaa !12
  %43 = fadd double %40, %42
  %44 = getelementptr double, ptr %21, i64 7
  %45 = load double, ptr %44, align 8, !tbaa !12
  %46 = fadd double %43, %45
  %47 = getelementptr double, ptr %21, i64 8
  %48 = load double, ptr %47, align 8, !tbaa !12
  %49 = fadd double %46, %48
  %50 = getelementptr double, ptr %21, i64 9
  %51 = load double, ptr %50, align 8, !tbaa !12
  %52 = fadd double %49, %51
  %53 = getelementptr double, ptr %21, i64 10
  %54 = load double, ptr %53, align 8, !tbaa !12
  %55 = fadd double %52, %54
  %56 = getelementptr double, ptr %21, i64 11
  %57 = load double, ptr %56, align 8, !tbaa !12
  %58 = fadd double %55, %57
  %59 = getelementptr double, ptr %21, i64 12
  %60 = load double, ptr %59, align 8, !tbaa !12
  %61 = fadd double %58, %60
  %62 = getelementptr double, ptr %21, i64 13
  %63 = load double, ptr %62, align 8, !tbaa !12
  %64 = fadd double %61, %63
  %65 = getelementptr double, ptr %21, i64 14
  %66 = load double, ptr %65, align 8, !tbaa !12
  %67 = fadd double %64, %66
  %68 = getelementptr double, ptr %21, i64 15
  %69 = load double, ptr %68, align 8, !tbaa !12
  %70 = fadd double %67, %69
  %71 = getelementptr double, ptr %21, i64 16
  %72 = load double, ptr %71, align 8, !tbaa !12
  %73 = fadd double %70, %72
  %74 = getelementptr double, ptr %21, i64 17
  %75 = load double, ptr %74, align 8, !tbaa !12
  %76 = fadd double %73, %75
  %77 = getelementptr double, ptr %21, i64 18
  %78 = load double, ptr %77, align 8, !tbaa !12
  %79 = fadd double %76, %78
  %80 = fptrunc double %79 to float
  %81 = fsub double %33, %36
  %82 = fadd double %81, %45
  %83 = fsub double %82, %48
  %84 = fadd double %83, %51
  %85 = fsub double %84, %54
  %86 = fadd double %85, %69
  %87 = fadd double %86, %72
  %88 = fsub double %87, %75
  %89 = fsub double %88, %78
  %90 = fptrunc double %89 to float
  %91 = fsub double %25, %29
  %92 = fadd double %91, %45
  %93 = fadd double %92, %48
  %94 = fsub double %93, %51
  %95 = fsub double %94, %54
  %96 = fadd double %95, %57
  %97 = fadd double %96, %60
  %98 = fsub double %97, %63
  %99 = fsub double %98, %66
  %100 = fptrunc double %99 to float
  %101 = fsub double %39, %42
  %102 = fadd double %101, %57
  %103 = fsub double %102, %60
  %104 = fadd double %103, %63
  %105 = fsub double %104, %66
  %106 = fadd double %105, %69
  %107 = fsub double %106, %72
  %108 = fadd double %107, %75
  %109 = fsub double %108, %78
  %110 = fptrunc double %109 to float
  %111 = fdiv float %90, %80
  store float %111, ptr %4, align 4, !tbaa !25
  %112 = fdiv float %100, %80
  store float %112, ptr %5, align 4, !tbaa !25
  %113 = fdiv float %110, %80
  store float %113, ptr %6, align 4, !tbaa !25
  br i1 %7, label %115, label %114

114:                                              ; preds = %17
  call fastcc void @storeValue(ptr noundef %9, ptr noundef nonnull %4) #16
  call fastcc void @storeValue(ptr noundef %9, ptr noundef nonnull %5) #16
  call fastcc void @storeValue(ptr noundef %9, ptr noundef nonnull %6) #16
  br label %120

115:                                              ; preds = %17
  %116 = fpext float %111 to double
  %117 = fpext float %112 to double
  %118 = fpext float %113 to double
  %119 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.6, double noundef %116, double noundef %117, double noundef %118) #16
  br label %120

120:                                              ; preds = %114, %115
  %121 = add nuw nsw i64 %18, 1
  %122 = icmp eq i64 %121, 200
  br i1 %122, label %123, label %17, !llvm.loop !27

123:                                              ; preds = %120
  %124 = add nuw nsw i64 %14, 1
  %125 = icmp eq i64 %124, 200
  br i1 %125, label %126, label %13, !llvm.loop !28

126:                                              ; preds = %123
  %127 = add nuw nsw i64 %11, 1
  %128 = icmp eq i64 %127, 260
  br i1 %128, label %129, label %10, !llvm.loop !29

129:                                              ; preds = %126
  %130 = tail call i32 @fclose(ptr noundef %9) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @storeValue(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #10 {
  %3 = tail call i64 @fwrite(ptr noundef %1, i64 noundef 4, i64 noundef 1, ptr noundef %0) #16
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @LBM_compareVelocityField(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  %7 = icmp eq i32 %2, 0
  %8 = select i1 %7, ptr @.str.7, ptr @.str.1
  %9 = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull %8) #16
  br label %10

10:                                               ; preds = %3, %139
  %11 = phi i64 [ 0, %3 ], [ %140, %139 ]
  %12 = phi float [ 0xC6293E5940000000, %3 ], [ %133, %139 ]
  %13 = mul nuw nsw i64 %11, 40000
  br label %14

14:                                               ; preds = %10, %136
  %15 = phi i64 [ 0, %10 ], [ %137, %136 ]
  %16 = phi float [ %12, %10 ], [ %133, %136 ]
  %17 = mul nuw nsw i64 %15, 200
  %18 = add nuw nsw i64 %17, %13
  br label %19

19:                                               ; preds = %14, %116
  %20 = phi i64 [ 0, %14 ], [ %134, %116 ]
  %21 = phi float [ %16, %14 ], [ %133, %116 ]
  %22 = add nuw nsw i64 %18, %20
  %23 = mul nuw nsw i64 %22, 20
  %24 = getelementptr inbounds double, ptr %0, i64 %23
  %25 = load double, ptr %24, align 8, !tbaa !12
  %26 = or disjoint i64 %23, 1
  %27 = getelementptr inbounds double, ptr %0, i64 %26
  %28 = load double, ptr %27, align 8, !tbaa !12
  %29 = fadd double %25, %28
  %30 = or disjoint i64 %23, 2
  %31 = getelementptr inbounds double, ptr %0, i64 %30
  %32 = load double, ptr %31, align 8, !tbaa !12
  %33 = fadd double %29, %32
  %34 = or disjoint i64 %23, 3
  %35 = getelementptr inbounds double, ptr %0, i64 %34
  %36 = load double, ptr %35, align 8, !tbaa !12
  %37 = fadd double %33, %36
  %38 = getelementptr double, ptr %24, i64 4
  %39 = load double, ptr %38, align 8, !tbaa !12
  %40 = fadd double %37, %39
  %41 = getelementptr double, ptr %24, i64 5
  %42 = load double, ptr %41, align 8, !tbaa !12
  %43 = fadd double %40, %42
  %44 = getelementptr double, ptr %24, i64 6
  %45 = load double, ptr %44, align 8, !tbaa !12
  %46 = fadd double %43, %45
  %47 = getelementptr double, ptr %24, i64 7
  %48 = load double, ptr %47, align 8, !tbaa !12
  %49 = fadd double %46, %48
  %50 = getelementptr double, ptr %24, i64 8
  %51 = load double, ptr %50, align 8, !tbaa !12
  %52 = fadd double %49, %51
  %53 = getelementptr double, ptr %24, i64 9
  %54 = load double, ptr %53, align 8, !tbaa !12
  %55 = fadd double %52, %54
  %56 = getelementptr double, ptr %24, i64 10
  %57 = load double, ptr %56, align 8, !tbaa !12
  %58 = fadd double %55, %57
  %59 = getelementptr double, ptr %24, i64 11
  %60 = load double, ptr %59, align 8, !tbaa !12
  %61 = fadd double %58, %60
  %62 = getelementptr double, ptr %24, i64 12
  %63 = load double, ptr %62, align 8, !tbaa !12
  %64 = fadd double %61, %63
  %65 = getelementptr double, ptr %24, i64 13
  %66 = load double, ptr %65, align 8, !tbaa !12
  %67 = fadd double %64, %66
  %68 = getelementptr double, ptr %24, i64 14
  %69 = load double, ptr %68, align 8, !tbaa !12
  %70 = fadd double %67, %69
  %71 = getelementptr double, ptr %24, i64 15
  %72 = load double, ptr %71, align 8, !tbaa !12
  %73 = fadd double %70, %72
  %74 = getelementptr double, ptr %24, i64 16
  %75 = load double, ptr %74, align 8, !tbaa !12
  %76 = fadd double %73, %75
  %77 = getelementptr double, ptr %24, i64 17
  %78 = load double, ptr %77, align 8, !tbaa !12
  %79 = fadd double %76, %78
  %80 = getelementptr double, ptr %24, i64 18
  %81 = load double, ptr %80, align 8, !tbaa !12
  %82 = fadd double %79, %81
  %83 = fsub double %36, %39
  %84 = fadd double %83, %48
  %85 = fsub double %84, %51
  %86 = fadd double %85, %54
  %87 = fsub double %86, %57
  %88 = fadd double %87, %72
  %89 = fadd double %88, %75
  %90 = fsub double %89, %78
  %91 = fsub double %90, %81
  %92 = fsub double %28, %32
  %93 = fadd double %92, %48
  %94 = fadd double %93, %51
  %95 = fsub double %94, %54
  %96 = fsub double %95, %57
  %97 = fadd double %96, %60
  %98 = fadd double %97, %63
  %99 = fsub double %98, %66
  %100 = fsub double %99, %69
  %101 = fsub double %42, %45
  %102 = fadd double %101, %60
  %103 = fsub double %102, %63
  %104 = fadd double %103, %66
  %105 = fsub double %104, %69
  %106 = fadd double %105, %72
  %107 = fsub double %106, %75
  %108 = fadd double %107, %78
  %109 = fsub double %108, %81
  %110 = fdiv double %91, %82
  %111 = fdiv double %100, %82
  %112 = fdiv double %109, %82
  br i1 %7, label %114, label %113

113:                                              ; preds = %19
  call fastcc void @loadValue(ptr noundef %9, ptr noundef nonnull %4) #16
  call fastcc void @loadValue(ptr noundef %9, ptr noundef nonnull %5) #16
  call fastcc void @loadValue(ptr noundef %9, ptr noundef nonnull %6) #16
  br label %116

114:                                              ; preds = %19
  %115 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %9, ptr noundef nonnull @.str.8, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #18
  br label %116

116:                                              ; preds = %114, %113
  %117 = load float, ptr %4, align 4, !tbaa !25
  %118 = fpext float %117 to double
  %119 = fsub double %110, %118
  %120 = fptrunc double %119 to float
  %121 = load float, ptr %5, align 4, !tbaa !25
  %122 = fpext float %121 to double
  %123 = fsub double %111, %122
  %124 = fptrunc double %123 to float
  %125 = load float, ptr %6, align 4, !tbaa !25
  %126 = fpext float %125 to double
  %127 = fsub double %112, %126
  %128 = fptrunc double %127 to float
  %129 = fmul float %124, %124
  %130 = call float @llvm.fmuladd.f32(float %120, float %120, float %129)
  %131 = call float @llvm.fmuladd.f32(float %128, float %128, float %130)
  %132 = fcmp ogt float %131, %21
  %133 = select i1 %132, float %131, float %21
  %134 = add nuw nsw i64 %20, 1
  %135 = icmp eq i64 %134, 200
  br i1 %135, label %136, label %19, !llvm.loop !30

136:                                              ; preds = %116
  %137 = add nuw nsw i64 %15, 1
  %138 = icmp eq i64 %137, 200
  br i1 %138, label %139, label %14, !llvm.loop !31

139:                                              ; preds = %136
  %140 = add nuw nsw i64 %11, 1
  %141 = icmp eq i64 %140, 260
  br i1 %141, label %142, label %10, !llvm.loop !32

142:                                              ; preds = %139
  %143 = fpext float %133 to double
  %144 = call double @sqrt(double noundef %143) #18
  %145 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %144) #16
  %146 = call i32 @fclose(ptr noundef %9) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @loadValue(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #10 {
  %3 = tail call i64 @fread(ptr noundef %1, i64 noundef 4, i64 noundef 1, ptr noundef %0) #16
  ret void
}

; Function Attrs: optsize
declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #11

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #14

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { alwaysinline norecurse nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind optsize allocsize(0) }
attributes #16 = { optsize }
attributes #17 = { noreturn nounwind optsize }
attributes #18 = { nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !8, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"double", !8, i64 0}
!14 = !{!15}
!15 = !{i64 2, i64 -1, i64 -1, i1 true}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = distinct !{!18, !17}
!19 = distinct !{!19, !17}
!20 = distinct !{!20, !17}
!21 = distinct !{!21, !17}
!22 = distinct !{!22, !17}
!23 = distinct !{!23, !17}
!24 = distinct !{!24, !17}
!25 = !{!26, !26, i64 0}
!26 = !{!"float", !8, i64 0}
!27 = distinct !{!27, !17}
!28 = distinct !{!28, !17}
!29 = distinct !{!29, !17}
!30 = distinct !{!30, !17}
!31 = distinct !{!31, !17}
!32 = distinct !{!32, !17}
