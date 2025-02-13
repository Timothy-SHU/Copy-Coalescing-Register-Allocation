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
define dso_local void @LBM_allocateGrid(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 !prof !54 {
  %2 = tail call noalias dereferenceable_or_null(1689600000) ptr @malloc(i64 noundef 1689600000) #15
  store ptr %2, ptr %0, align 8, !tbaa !55
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6, !prof !59

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef 0x40992D5000000000) #16
  tail call void @exit(i32 noundef 1) #17
  unreachable

6:                                                ; preds = %1
  %7 = getelementptr inbounds double, ptr %2, i64 1600000
  store ptr %7, ptr %0, align 8, !tbaa !55
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
define dso_local void @LBM_freeGrid(ptr nocapture noundef %0) local_unnamed_addr #5 !prof !54 {
  %2 = load ptr, ptr %0, align 8, !tbaa !55
  %3 = getelementptr inbounds double, ptr %2, i64 -1600000
  tail call void @free(ptr noundef nonnull %3) #18
  store ptr null, ptr %0, align 8, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @LBM_initializeGrid(ptr noundef %0) local_unnamed_addr #0 !prof !54 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !55
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 1, ptr nonnull @LBM_initializeGrid.omp_outlined, ptr nonnull %2)
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @LBM_initializeGrid.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2) #7 !prof !60 !PGOFuncName !61 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 10559999, ptr %5, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 1, ptr %6, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  store i32 0, ptr %7, align 4, !tbaa !62
  %8 = load i32, ptr %0, align 4, !tbaa !62
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %8, i32 34, ptr nonnull %7, ptr nonnull %4, ptr nonnull %5, ptr nonnull %6, i32 1, i32 1)
  %9 = load i32, ptr %5, align 4
  %10 = call i32 @llvm.smin.i32(i32 %9, i32 10559999)
  store i32 %10, ptr %5, align 4, !tbaa !62
  %11 = load i32, ptr %4, align 4, !tbaa !62
  %12 = icmp sgt i32 %11, %10
  br i1 %12, label %36, label %13, !prof !64

13:                                               ; preds = %3
  %14 = load ptr, ptr %2, align 8, !tbaa !55
  %15 = getelementptr double, ptr %14, i64 -1600000
  %16 = sext i32 %11 to i64
  br label %17

17:                                               ; preds = %13, %17
  %18 = phi i64 [ %16, %13 ], [ %32, %17 ]
  %19 = mul nsw i64 %18, 20
  %20 = getelementptr double, ptr %15, i64 %19
  %21 = getelementptr double, ptr %14, i64 %19
  store <2 x double> <double 0x3FD5555555555555, double 0x3FAC71C71C71C71C>, ptr %20, align 8, !tbaa !65
  %22 = getelementptr double, ptr %21, i64 -1599998
  store <2 x double> <double 0x3FAC71C71C71C71C, double 0x3FAC71C71C71C71C>, ptr %22, align 8, !tbaa !65
  %23 = getelementptr double, ptr %21, i64 -1599996
  store <2 x double> <double 0x3FAC71C71C71C71C, double 0x3FAC71C71C71C71C>, ptr %23, align 8, !tbaa !65
  %24 = getelementptr double, ptr %21, i64 -1599994
  store <2 x double> <double 0x3FAC71C71C71C71C, double 0x3F9C71C71C71C71C>, ptr %24, align 8, !tbaa !65
  %25 = getelementptr double, ptr %21, i64 -1599992
  store <2 x double> <double 0x3F9C71C71C71C71C, double 0x3F9C71C71C71C71C>, ptr %25, align 8, !tbaa !65
  %26 = getelementptr double, ptr %21, i64 -1599990
  store <2 x double> <double 0x3F9C71C71C71C71C, double 0x3F9C71C71C71C71C>, ptr %26, align 8, !tbaa !65
  %27 = getelementptr double, ptr %21, i64 -1599988
  store <2 x double> <double 0x3F9C71C71C71C71C, double 0x3F9C71C71C71C71C>, ptr %27, align 8, !tbaa !65
  %28 = getelementptr double, ptr %21, i64 -1599986
  store <2 x double> <double 0x3F9C71C71C71C71C, double 0x3F9C71C71C71C71C>, ptr %28, align 8, !tbaa !65
  %29 = getelementptr double, ptr %21, i64 -1599984
  store <2 x double> <double 0x3F9C71C71C71C71C, double 0x3F9C71C71C71C71C>, ptr %29, align 8, !tbaa !65
  %30 = getelementptr double, ptr %21, i64 -1599982
  store double 0x3F9C71C71C71C71C, ptr %30, align 8, !tbaa !65
  %31 = getelementptr double, ptr %21, i64 -1599981
  store i32 0, ptr %31, align 4, !tbaa !62
  %32 = add nsw i64 %18, 1
  %33 = load i32, ptr %5, align 4, !tbaa !62
  %34 = sext i32 %33 to i64
  %35 = icmp slt i64 %18, %34
  br i1 %35, label %17, label %36, !prof !67

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
declare !callback !68 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @LBM_swapGrids(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #9 !prof !70 {
  %3 = load ptr, ptr %0, align 8, !tbaa !55
  %4 = load ptr, ptr %1, align 8, !tbaa !55
  store ptr %4, ptr %0, align 8, !tbaa !55
  store ptr %3, ptr %1, align 8, !tbaa !55
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @LBM_loadObstacleFile(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #10 !prof !54 {
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
  br i1 %15, label %22, label %16, !prof !71

16:                                               ; preds = %12
  %17 = add nuw nsw i64 %11, %13
  %18 = mul nuw nsw i64 %17, 20
  %19 = getelementptr double, ptr %4, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !62
  %21 = or i32 %20, 1
  store i32 %21, ptr %19, align 4, !tbaa !62
  br label %22

22:                                               ; preds = %12, %16
  %23 = add nuw nsw i64 %13, 1
  %24 = icmp eq i64 %23, 200
  br i1 %24, label %25, label %12, !prof !72, !llvm.loop !73

25:                                               ; preds = %22
  %26 = tail call i32 @fgetc(ptr noundef %3) #16
  %27 = add nuw nsw i64 %9, 1
  %28 = icmp eq i64 %27, 200
  br i1 %28, label %29, label %8, !prof !75, !llvm.loop !76

29:                                               ; preds = %25
  %30 = tail call i32 @fgetc(ptr noundef %3) #16
  %31 = add nuw nsw i64 %6, 1
  %32 = icmp eq i64 %31, 260
  br i1 %32, label %33, label %5, !prof !77, !llvm.loop !78

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
define dso_local void @LBM_initializeSpecialCellsForLDC(ptr noundef %0) local_unnamed_addr #0 !prof !54 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !55
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 1, ptr nonnull @LBM_initializeSpecialCellsForLDC.omp_outlined, ptr nonnull %2)
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @LBM_initializeSpecialCellsForLDC.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2) #7 !prof !79 !PGOFuncName !80 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 263, ptr %5, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 1, ptr %6, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  store i32 0, ptr %7, align 4, !tbaa !62
  %8 = load i32, ptr %0, align 4, !tbaa !62
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %8, i32 34, ptr nonnull %7, ptr nonnull %4, ptr nonnull %5, ptr nonnull %6, i32 1, i32 1)
  %9 = load i32, ptr %5, align 4
  %10 = call i32 @llvm.smin.i32(i32 %9, i32 263)
  store i32 %10, ptr %5, align 4, !tbaa !62
  %11 = load i32, ptr %4, align 4, !tbaa !62
  %12 = icmp sgt i32 %11, %10
  br i1 %12, label %74, label %13, !prof !81

13:                                               ; preds = %3, %70
  %14 = phi i32 [ %71, %70 ], [ %11, %3 ]
  %15 = add nsw i32 %14, -2
  %16 = mul i32 %15, 40000
  br label %17

17:                                               ; preds = %13, %67
  %18 = phi i64 [ 0, %13 ], [ %68, %67 ]
  %19 = icmp eq i64 %18, 0
  %20 = load ptr, ptr %2, align 8
  %21 = mul nuw nsw i64 %18, 200
  %22 = getelementptr double, ptr %20, i64 19
  %23 = trunc i64 %21 to i32
  %24 = add i32 %16, %23
  br label %25

25:                                               ; preds = %17, %64
  %26 = phi i64 [ 0, %17 ], [ %65, %64 ]
  %27 = trunc i64 %26 to i32
  %28 = trunc i64 %26 to i8
  switch i8 %28, label %29 [
    i8 -57, label %36
    i8 0, label %36
  ]

29:                                               ; preds = %25
  br i1 %19, label %36, label %30, !prof !82

30:                                               ; preds = %29
  %31 = icmp eq i32 %15, 0
  %32 = icmp eq i32 %15, 259
  %33 = icmp eq i64 %18, 199
  %34 = select i1 %33, i1 true, i1 %31
  %35 = select i1 %34, i1 true, i1 %32
  br i1 %35, label %36, label %40, !prof !83

36:                                               ; preds = %25, %25, %30, %29
  %37 = add i32 %24, %27
  %38 = mul nsw i32 %37, 20
  %39 = sext i32 %38 to i64
  br label %58

40:                                               ; preds = %30
  %41 = icmp eq i32 %15, 1
  %42 = icmp ugt i64 %26, 1
  br i1 %41, label %46, label %43, !prof !82

43:                                               ; preds = %40
  %44 = icmp eq i32 %15, 258
  %45 = and i1 %44, %42
  br i1 %45, label %47, label %64, !prof !84

46:                                               ; preds = %40
  br i1 %42, label %47, label %64, !prof !85

47:                                               ; preds = %43, %46
  %48 = icmp ne i64 %18, 1
  %49 = icmp ult i64 %18, 198
  %50 = icmp ult i64 %26, 198
  %51 = and i1 %48, %50
  %52 = and i1 %49, %51
  br i1 %52, label %53, label %64, !prof !86

53:                                               ; preds = %47
  %54 = zext i32 %16 to i64
  %55 = add nuw nsw i64 %21, %54
  %56 = add nuw nsw i64 %55, %26
  %57 = mul nuw nsw i64 %56, 20
  br label %58

58:                                               ; preds = %53, %36
  %59 = phi i64 [ %57, %53 ], [ %39, %36 ]
  %60 = phi i32 [ 2, %53 ], [ 1, %36 ]
  %61 = getelementptr double, ptr %22, i64 %59
  %62 = load i32, ptr %61, align 4, !tbaa !62
  %63 = or i32 %62, %60
  store i32 %63, ptr %61, align 4, !tbaa !62
  br label %64

64:                                               ; preds = %58, %47, %46, %43
  %65 = add nuw nsw i64 %26, 1
  %66 = icmp eq i64 %65, 200
  br i1 %66, label %67, label %25, !prof !87, !llvm.loop !88

67:                                               ; preds = %64
  %68 = add nuw nsw i64 %18, 1
  %69 = icmp eq i64 %68, 200
  br i1 %69, label %70, label %17, !prof !89, !llvm.loop !90

70:                                               ; preds = %67
  %71 = add nsw i32 %14, 1
  %72 = load i32, ptr %5, align 4, !tbaa !62
  %73 = icmp slt i32 %14, %72
  br i1 %73, label %13, label %74, !prof !67

74:                                               ; preds = %70, %3
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %8)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @LBM_initializeSpecialCellsForChannel(ptr noundef %0) local_unnamed_addr #0 !prof !91 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !55
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 1, ptr nonnull @LBM_initializeSpecialCellsForChannel.omp_outlined, ptr nonnull %2)
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @LBM_initializeSpecialCellsForChannel.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2) #7 !prof !91 !PGOFuncName !92 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 263, ptr %5, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 1, ptr %6, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  store i32 0, ptr %7, align 4, !tbaa !62
  %8 = load i32, ptr %0, align 4, !tbaa !62
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %8, i32 34, ptr nonnull %7, ptr nonnull %4, ptr nonnull %5, ptr nonnull %6, i32 1, i32 1)
  %9 = load i32, ptr %5, align 4
  %10 = call i32 @llvm.smin.i32(i32 %9, i32 263)
  store i32 %10, ptr %5, align 4, !tbaa !62
  %11 = load i32, ptr %4, align 4, !tbaa !62
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
  %38 = load i32, ptr %37, align 4, !tbaa !62
  %39 = or i32 %38, 1
  store i32 %39, ptr %37, align 4, !tbaa !62
  br label %40

40:                                               ; preds = %32, %25
  %41 = add nuw nsw i64 %26, 1
  %42 = icmp eq i64 %41, 200
  br i1 %42, label %43, label %25, !llvm.loop !93

43:                                               ; preds = %40
  %44 = add nuw nsw i32 %18, 1
  %45 = icmp eq i32 %44, 200
  br i1 %45, label %46, label %17, !llvm.loop !94

46:                                               ; preds = %43
  %47 = add nsw i32 %14, 1
  %48 = load i32, ptr %5, align 4, !tbaa !62
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
define dso_local void @LBM_performStreamCollideBGK(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !91 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !55
  store ptr %1, ptr %4, align 8, !tbaa !55
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 2, ptr nonnull @LBM_performStreamCollideBGK.omp_outlined, ptr nonnull %3, ptr nonnull %4)
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @LBM_performStreamCollideBGK.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %3) #7 !prof !91 !PGOFuncName !95 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 10399999, ptr %6, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  store i32 1, ptr %7, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #8
  store i32 0, ptr %8, align 4, !tbaa !62
  %9 = load i32, ptr %0, align 4, !tbaa !62
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %9, i32 34, ptr nonnull %8, ptr nonnull %5, ptr nonnull %6, ptr nonnull %7, i32 1, i32 1)
  %10 = load i32, ptr %6, align 4
  %11 = call i32 @llvm.smin.i32(i32 %10, i32 10399999)
  store i32 %11, ptr %6, align 4, !tbaa !62
  %12 = load i32, ptr %5, align 4, !tbaa !62
  %13 = icmp sgt i32 %12, %11
  br i1 %13, label %362, label %14

14:                                               ; preds = %4
  %15 = load ptr, ptr %2, align 8, !tbaa !55
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
  %39 = load i32, ptr %38, align 4, !tbaa !62
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  %42 = load double, ptr %37, align 8, !tbaa !65
  br i1 %41, label %108, label %43

43:                                               ; preds = %34
  %44 = getelementptr inbounds double, ptr %16, i64 %36
  store double %42, ptr %44, align 8, !tbaa !65
  %45 = mul i64 %35, 85899345920
  %46 = ashr exact i64 %45, 32
  %47 = or disjoint i64 %46, 1
  %48 = getelementptr inbounds double, ptr %15, i64 %47
  %49 = load double, ptr %48, align 8, !tbaa !65
  %50 = getelementptr double, ptr %44, i64 -3998
  store double %49, ptr %50, align 8, !tbaa !65
  %51 = mul i64 %35, 85899345920
  %52 = ashr exact i64 %51, 32
  %53 = or disjoint i64 %52, 2
  %54 = getelementptr inbounds double, ptr %15, i64 %53
  %55 = load double, ptr %54, align 8, !tbaa !65
  %56 = getelementptr double, ptr %44, i64 4001
  store double %55, ptr %56, align 8, !tbaa !65
  %57 = mul i64 %35, 85899345920
  %58 = ashr exact i64 %57, 32
  %59 = or disjoint i64 %58, 3
  %60 = getelementptr inbounds double, ptr %15, i64 %59
  %61 = load double, ptr %60, align 8, !tbaa !65
  %62 = getelementptr double, ptr %44, i64 -16
  store double %61, ptr %62, align 8, !tbaa !65
  %63 = getelementptr double, ptr %37, i64 4
  %64 = load double, ptr %63, align 8, !tbaa !65
  %65 = getelementptr double, ptr %44, i64 23
  store double %64, ptr %65, align 8, !tbaa !65
  %66 = getelementptr double, ptr %37, i64 5
  %67 = load double, ptr %66, align 8, !tbaa !65
  %68 = getelementptr double, ptr %44, i64 -799994
  store double %67, ptr %68, align 8, !tbaa !65
  %69 = getelementptr double, ptr %37, i64 6
  %70 = load double, ptr %69, align 8, !tbaa !65
  %71 = getelementptr double, ptr %44, i64 800005
  store double %70, ptr %71, align 8, !tbaa !65
  %72 = getelementptr double, ptr %37, i64 7
  %73 = load double, ptr %72, align 8, !tbaa !65
  %74 = getelementptr double, ptr %44, i64 -4010
  store double %73, ptr %74, align 8, !tbaa !65
  %75 = getelementptr double, ptr %37, i64 8
  %76 = load double, ptr %75, align 8, !tbaa !65
  %77 = getelementptr double, ptr %44, i64 -3971
  store double %76, ptr %77, align 8, !tbaa !65
  %78 = getelementptr double, ptr %37, i64 9
  %79 = load double, ptr %78, align 8, !tbaa !65
  %80 = getelementptr double, ptr %44, i64 3988
  store double %79, ptr %80, align 8, !tbaa !65
  %81 = getelementptr double, ptr %37, i64 10
  %82 = load double, ptr %81, align 8, !tbaa !65
  %83 = getelementptr double, ptr %44, i64 4027
  store double %82, ptr %83, align 8, !tbaa !65
  %84 = getelementptr double, ptr %37, i64 11
  %85 = load double, ptr %84, align 8, !tbaa !65
  %86 = getelementptr double, ptr %44, i64 -803986
  store double %85, ptr %86, align 8, !tbaa !65
  %87 = getelementptr double, ptr %37, i64 12
  %88 = load double, ptr %87, align 8, !tbaa !65
  %89 = getelementptr double, ptr %44, i64 796013
  store double %88, ptr %89, align 8, !tbaa !65
  %90 = getelementptr double, ptr %37, i64 13
  %91 = load double, ptr %90, align 8, !tbaa !65
  %92 = getelementptr double, ptr %44, i64 -795988
  store double %91, ptr %92, align 8, !tbaa !65
  %93 = getelementptr double, ptr %37, i64 14
  %94 = load double, ptr %93, align 8, !tbaa !65
  %95 = getelementptr double, ptr %44, i64 804011
  store double %94, ptr %95, align 8, !tbaa !65
  %96 = getelementptr double, ptr %37, i64 15
  %97 = load double, ptr %96, align 8, !tbaa !65
  %98 = getelementptr double, ptr %44, i64 -800002
  store double %97, ptr %98, align 8, !tbaa !65
  %99 = getelementptr double, ptr %37, i64 16
  %100 = load double, ptr %99, align 8, !tbaa !65
  %101 = getelementptr double, ptr %44, i64 799997
  store double %100, ptr %101, align 8, !tbaa !65
  %102 = getelementptr double, ptr %37, i64 17
  %103 = load double, ptr %102, align 8, !tbaa !65
  %104 = getelementptr double, ptr %44, i64 -799964
  store double %103, ptr %104, align 8, !tbaa !65
  %105 = getelementptr double, ptr %37, i64 18
  %106 = load double, ptr %105, align 8, !tbaa !65
  %107 = getelementptr double, ptr %44, i64 800035
  store double %106, ptr %107, align 8, !tbaa !65
  br label %358

108:                                              ; preds = %34
  %109 = mul i64 %35, 85899345920
  %110 = ashr exact i64 %109, 32
  %111 = or disjoint i64 %110, 1
  %112 = getelementptr inbounds double, ptr %15, i64 %111
  %113 = load double, ptr %112, align 8, !tbaa !65
  %114 = fadd double %42, %113
  %115 = mul i64 %35, 85899345920
  %116 = ashr exact i64 %115, 32
  %117 = or disjoint i64 %116, 2
  %118 = getelementptr inbounds double, ptr %15, i64 %117
  %119 = load double, ptr %118, align 8, !tbaa !65
  %120 = fadd double %114, %119
  %121 = mul i64 %35, 85899345920
  %122 = ashr exact i64 %121, 32
  %123 = or disjoint i64 %122, 3
  %124 = getelementptr inbounds double, ptr %15, i64 %123
  %125 = load double, ptr %124, align 8, !tbaa !65
  %126 = fadd double %120, %125
  %127 = getelementptr double, ptr %17, i64 %36
  %128 = load double, ptr %127, align 8, !tbaa !65
  %129 = fadd double %126, %128
  %130 = getelementptr double, ptr %18, i64 %36
  %131 = load double, ptr %130, align 8, !tbaa !65
  %132 = fadd double %129, %131
  %133 = getelementptr double, ptr %19, i64 %36
  %134 = load double, ptr %133, align 8, !tbaa !65
  %135 = fadd double %132, %134
  %136 = getelementptr double, ptr %20, i64 %36
  %137 = load double, ptr %136, align 8, !tbaa !65
  %138 = fadd double %135, %137
  %139 = getelementptr double, ptr %21, i64 %36
  %140 = load double, ptr %139, align 8, !tbaa !65
  %141 = fadd double %138, %140
  %142 = getelementptr double, ptr %22, i64 %36
  %143 = load double, ptr %142, align 8, !tbaa !65
  %144 = fadd double %141, %143
  %145 = getelementptr double, ptr %23, i64 %36
  %146 = load double, ptr %145, align 8, !tbaa !65
  %147 = fadd double %144, %146
  %148 = getelementptr double, ptr %24, i64 %36
  %149 = load double, ptr %148, align 8, !tbaa !65
  %150 = fadd double %147, %149
  %151 = getelementptr double, ptr %25, i64 %36
  %152 = load double, ptr %151, align 8, !tbaa !65
  %153 = fadd double %150, %152
  %154 = getelementptr double, ptr %26, i64 %36
  %155 = load double, ptr %154, align 8, !tbaa !65
  %156 = fadd double %153, %155
  %157 = getelementptr double, ptr %27, i64 %36
  %158 = load double, ptr %157, align 8, !tbaa !65
  %159 = fadd double %156, %158
  %160 = getelementptr double, ptr %28, i64 %36
  %161 = load double, ptr %160, align 8, !tbaa !65
  %162 = fadd double %159, %161
  %163 = getelementptr double, ptr %29, i64 %36
  %164 = load double, ptr %163, align 8, !tbaa !65
  %165 = fadd double %162, %164
  %166 = getelementptr double, ptr %30, i64 %36
  %167 = load double, ptr %166, align 8, !tbaa !65
  %168 = fadd double %165, %167
  %169 = getelementptr double, ptr %31, i64 %36
  %170 = load double, ptr %169, align 8, !tbaa !65
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
  store double %214, ptr %215, align 8, !tbaa !65
  %216 = load double, ptr %112, align 8, !tbaa !65
  %217 = fmul double %171, 0x3FBBBBBBBBBBBBBB
  %218 = call double @llvm.fmuladd.f64(double %205, double 4.500000e+00, double 3.000000e+00)
  %219 = call double @llvm.fmuladd.f64(double %205, double %218, double 1.000000e+00)
  %220 = fsub double %219, %210
  %221 = fmul double %217, %220
  %222 = call double @llvm.fmuladd.f64(double %216, double 0xBFEE666666666666, double %221)
  %223 = getelementptr double, ptr %215, i64 4001
  store double %222, ptr %223, align 8, !tbaa !65
  %224 = load double, ptr %118, align 8, !tbaa !65
  %225 = call double @llvm.fmuladd.f64(double %205, double 4.500000e+00, double -3.000000e+00)
  %226 = call double @llvm.fmuladd.f64(double %205, double %225, double 1.000000e+00)
  %227 = fsub double %226, %210
  %228 = fmul double %217, %227
  %229 = call double @llvm.fmuladd.f64(double %224, double 0xBFEE666666666666, double %228)
  %230 = getelementptr double, ptr %215, i64 -3998
  store double %229, ptr %230, align 8, !tbaa !65
  %231 = load double, ptr %124, align 8, !tbaa !65
  %232 = call double @llvm.fmuladd.f64(double %206, double 4.500000e+00, double 3.000000e+00)
  %233 = call double @llvm.fmuladd.f64(double %206, double %232, double 1.000000e+00)
  %234 = fsub double %233, %210
  %235 = fmul double %217, %234
  %236 = call double @llvm.fmuladd.f64(double %231, double 0xBFEE666666666666, double %235)
  %237 = getelementptr double, ptr %215, i64 23
  store double %236, ptr %237, align 8, !tbaa !65
  %238 = load double, ptr %127, align 8, !tbaa !65
  %239 = call double @llvm.fmuladd.f64(double %206, double 4.500000e+00, double -3.000000e+00)
  %240 = call double @llvm.fmuladd.f64(double %206, double %239, double 1.000000e+00)
  %241 = fsub double %240, %210
  %242 = fmul double %217, %241
  %243 = call double @llvm.fmuladd.f64(double %238, double 0xBFEE666666666666, double %242)
  %244 = getelementptr double, ptr %215, i64 -16
  store double %243, ptr %244, align 8, !tbaa !65
  %245 = load double, ptr %130, align 8, !tbaa !65
  %246 = call double @llvm.fmuladd.f64(double %204, double 4.500000e+00, double 3.000000e+00)
  %247 = call double @llvm.fmuladd.f64(double %204, double %246, double 1.000000e+00)
  %248 = fsub double %247, %210
  %249 = fmul double %217, %248
  %250 = call double @llvm.fmuladd.f64(double %245, double 0xBFEE666666666666, double %249)
  %251 = getelementptr double, ptr %215, i64 800005
  store double %250, ptr %251, align 8, !tbaa !65
  %252 = load double, ptr %133, align 8, !tbaa !65
  %253 = call double @llvm.fmuladd.f64(double %204, double 4.500000e+00, double -3.000000e+00)
  %254 = call double @llvm.fmuladd.f64(double %204, double %253, double 1.000000e+00)
  %255 = fsub double %254, %210
  %256 = fmul double %217, %255
  %257 = call double @llvm.fmuladd.f64(double %252, double 0xBFEE666666666666, double %256)
  %258 = getelementptr double, ptr %215, i64 -799994
  store double %257, ptr %258, align 8, !tbaa !65
  %259 = load double, ptr %136, align 8, !tbaa !65
  %260 = fmul double %171, 0x3FABBBBBBBBBBBBB
  %261 = fadd double %206, %205
  %262 = call double @llvm.fmuladd.f64(double %261, double 4.500000e+00, double 3.000000e+00)
  %263 = call double @llvm.fmuladd.f64(double %261, double %262, double 1.000000e+00)
  %264 = fsub double %263, %210
  %265 = fmul double %260, %264
  %266 = call double @llvm.fmuladd.f64(double %259, double 0xBFEE666666666666, double %265)
  %267 = getelementptr double, ptr %215, i64 4027
  store double %266, ptr %267, align 8, !tbaa !65
  %268 = load double, ptr %139, align 8, !tbaa !65
  %269 = fneg double %206
  %270 = fsub double %205, %206
  %271 = call double @llvm.fmuladd.f64(double %270, double 4.500000e+00, double 3.000000e+00)
  %272 = call double @llvm.fmuladd.f64(double %270, double %271, double 1.000000e+00)
  %273 = fsub double %272, %210
  %274 = fmul double %260, %273
  %275 = call double @llvm.fmuladd.f64(double %268, double 0xBFEE666666666666, double %274)
  %276 = getelementptr double, ptr %215, i64 3988
  store double %275, ptr %276, align 8, !tbaa !65
  %277 = load double, ptr %142, align 8, !tbaa !65
  %278 = fsub double %206, %205
  %279 = call double @llvm.fmuladd.f64(double %278, double 4.500000e+00, double 3.000000e+00)
  %280 = call double @llvm.fmuladd.f64(double %278, double %279, double 1.000000e+00)
  %281 = fsub double %280, %210
  %282 = fmul double %260, %281
  %283 = call double @llvm.fmuladd.f64(double %277, double 0xBFEE666666666666, double %282)
  %284 = getelementptr double, ptr %215, i64 -3971
  store double %283, ptr %284, align 8, !tbaa !65
  %285 = load double, ptr %145, align 8, !tbaa !65
  %286 = fsub double %269, %205
  %287 = call double @llvm.fmuladd.f64(double %286, double 4.500000e+00, double 3.000000e+00)
  %288 = call double @llvm.fmuladd.f64(double %286, double %287, double 1.000000e+00)
  %289 = fsub double %288, %210
  %290 = fmul double %260, %289
  %291 = call double @llvm.fmuladd.f64(double %285, double 0xBFEE666666666666, double %290)
  %292 = getelementptr double, ptr %215, i64 -4010
  store double %291, ptr %292, align 8, !tbaa !65
  %293 = load double, ptr %148, align 8, !tbaa !65
  %294 = fadd double %205, %204
  %295 = call double @llvm.fmuladd.f64(double %294, double 4.500000e+00, double 3.000000e+00)
  %296 = call double @llvm.fmuladd.f64(double %294, double %295, double 1.000000e+00)
  %297 = fsub double %296, %210
  %298 = fmul double %260, %297
  %299 = call double @llvm.fmuladd.f64(double %293, double 0xBFEE666666666666, double %298)
  %300 = getelementptr double, ptr %215, i64 804011
  store double %299, ptr %300, align 8, !tbaa !65
  %301 = load double, ptr %151, align 8, !tbaa !65
  %302 = fsub double %205, %204
  %303 = call double @llvm.fmuladd.f64(double %302, double 4.500000e+00, double 3.000000e+00)
  %304 = call double @llvm.fmuladd.f64(double %302, double %303, double 1.000000e+00)
  %305 = fsub double %304, %210
  %306 = fmul double %260, %305
  %307 = call double @llvm.fmuladd.f64(double %301, double 0xBFEE666666666666, double %306)
  %308 = getelementptr double, ptr %215, i64 -795988
  store double %307, ptr %308, align 8, !tbaa !65
  %309 = load double, ptr %154, align 8, !tbaa !65
  %310 = fneg double %205
  %311 = fsub double %204, %205
  %312 = call double @llvm.fmuladd.f64(double %311, double 4.500000e+00, double 3.000000e+00)
  %313 = call double @llvm.fmuladd.f64(double %311, double %312, double 1.000000e+00)
  %314 = fsub double %313, %210
  %315 = fmul double %260, %314
  %316 = call double @llvm.fmuladd.f64(double %309, double 0xBFEE666666666666, double %315)
  %317 = getelementptr double, ptr %215, i64 796013
  store double %316, ptr %317, align 8, !tbaa !65
  %318 = load double, ptr %157, align 8, !tbaa !65
  %319 = fsub double %310, %204
  %320 = call double @llvm.fmuladd.f64(double %319, double 4.500000e+00, double 3.000000e+00)
  %321 = call double @llvm.fmuladd.f64(double %319, double %320, double 1.000000e+00)
  %322 = fsub double %321, %210
  %323 = fmul double %260, %322
  %324 = call double @llvm.fmuladd.f64(double %318, double 0xBFEE666666666666, double %323)
  %325 = getelementptr double, ptr %215, i64 -803986
  store double %324, ptr %325, align 8, !tbaa !65
  %326 = load double, ptr %160, align 8, !tbaa !65
  %327 = fadd double %206, %204
  %328 = call double @llvm.fmuladd.f64(double %327, double 4.500000e+00, double 3.000000e+00)
  %329 = call double @llvm.fmuladd.f64(double %327, double %328, double 1.000000e+00)
  %330 = fsub double %329, %210
  %331 = fmul double %260, %330
  %332 = call double @llvm.fmuladd.f64(double %326, double 0xBFEE666666666666, double %331)
  %333 = getelementptr double, ptr %215, i64 800035
  store double %332, ptr %333, align 8, !tbaa !65
  %334 = load double, ptr %163, align 8, !tbaa !65
  %335 = fsub double %206, %204
  %336 = call double @llvm.fmuladd.f64(double %335, double 4.500000e+00, double 3.000000e+00)
  %337 = call double @llvm.fmuladd.f64(double %335, double %336, double 1.000000e+00)
  %338 = fsub double %337, %210
  %339 = fmul double %260, %338
  %340 = call double @llvm.fmuladd.f64(double %334, double 0xBFEE666666666666, double %339)
  %341 = getelementptr double, ptr %215, i64 -799964
  store double %340, ptr %341, align 8, !tbaa !65
  %342 = load double, ptr %166, align 8, !tbaa !65
  %343 = fsub double %204, %206
  %344 = call double @llvm.fmuladd.f64(double %343, double 4.500000e+00, double 3.000000e+00)
  %345 = call double @llvm.fmuladd.f64(double %343, double %344, double 1.000000e+00)
  %346 = fsub double %345, %210
  %347 = fmul double %260, %346
  %348 = call double @llvm.fmuladd.f64(double %342, double 0xBFEE666666666666, double %347)
  %349 = getelementptr double, ptr %215, i64 799997
  store double %348, ptr %349, align 8, !tbaa !65
  %350 = load double, ptr %169, align 8, !tbaa !65
  %351 = fsub double %269, %204
  %352 = call double @llvm.fmuladd.f64(double %351, double 4.500000e+00, double 3.000000e+00)
  %353 = call double @llvm.fmuladd.f64(double %351, double %352, double 1.000000e+00)
  %354 = fsub double %353, %210
  %355 = fmul double %260, %354
  %356 = call double @llvm.fmuladd.f64(double %350, double 0xBFEE666666666666, double %355)
  %357 = getelementptr double, ptr %215, i64 -800002
  store double %356, ptr %357, align 8, !tbaa !65
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
define dso_local void @LBM_performStreamCollideTRT(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !70 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca double, align 8
  store ptr %0, ptr %3, align 8, !tbaa !55
  store ptr %1, ptr %4, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  store double 0x3FB0ECF56BE69CA7, ptr %5, align 8, !tbaa !65
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 3, ptr nonnull @LBM_performStreamCollideTRT.omp_outlined, ptr nonnull %3, ptr nonnull %4, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @LBM_performStreamCollideTRT.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %3, ptr nocapture nonnull readnone align 8 %4) #7 !prof !96 !PGOFuncName !97 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 0, ptr %6, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  store i32 10399999, ptr %7, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #8
  store i32 1, ptr %8, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #8
  store i32 0, ptr %9, align 4, !tbaa !62
  %10 = load i32, ptr %0, align 4, !tbaa !62
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %10, i32 34, ptr nonnull %9, ptr nonnull %6, ptr nonnull %7, ptr nonnull %8, i32 1, i32 1)
  %11 = load i32, ptr %7, align 4
  %12 = call i32 @llvm.smin.i32(i32 %11, i32 10399999)
  store i32 %12, ptr %7, align 4, !tbaa !62
  %13 = load i32, ptr %6, align 4, !tbaa !62
  %14 = icmp sgt i32 %13, %12
  br i1 %14, label %431, label %15, !prof !98

15:                                               ; preds = %5
  %16 = load ptr, ptr %2, align 8, !tbaa !55
  %17 = load ptr, ptr %3, align 8
  %18 = sext i32 %13 to i64
  %19 = add nsw i32 %12, 1
  br label %20

20:                                               ; preds = %15, %427
  %21 = phi i64 [ %18, %15 ], [ %428, %427 ]
  %22 = mul nsw i64 %21, 20
  %23 = getelementptr double, ptr %16, i64 %22
  %24 = getelementptr double, ptr %23, i64 19
  %25 = load i32, ptr %24, align 4, !tbaa !62
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  %28 = load double, ptr %23, align 8, !tbaa !65
  br i1 %27, label %94, label %29, !prof !99

29:                                               ; preds = %20
  %30 = getelementptr inbounds double, ptr %17, i64 %22
  store double %28, ptr %30, align 8, !tbaa !65
  %31 = mul i64 %21, 85899345920
  %32 = ashr exact i64 %31, 32
  %33 = or disjoint i64 %32, 1
  %34 = getelementptr inbounds double, ptr %16, i64 %33
  %35 = load double, ptr %34, align 8, !tbaa !65
  %36 = getelementptr double, ptr %30, i64 -3998
  store double %35, ptr %36, align 8, !tbaa !65
  %37 = mul i64 %21, 85899345920
  %38 = ashr exact i64 %37, 32
  %39 = or disjoint i64 %38, 2
  %40 = getelementptr inbounds double, ptr %16, i64 %39
  %41 = load double, ptr %40, align 8, !tbaa !65
  %42 = getelementptr double, ptr %30, i64 4001
  store double %41, ptr %42, align 8, !tbaa !65
  %43 = mul i64 %21, 85899345920
  %44 = ashr exact i64 %43, 32
  %45 = or disjoint i64 %44, 3
  %46 = getelementptr inbounds double, ptr %16, i64 %45
  %47 = load double, ptr %46, align 8, !tbaa !65
  %48 = getelementptr double, ptr %30, i64 -16
  store double %47, ptr %48, align 8, !tbaa !65
  %49 = getelementptr double, ptr %23, i64 4
  %50 = load double, ptr %49, align 8, !tbaa !65
  %51 = getelementptr double, ptr %30, i64 23
  store double %50, ptr %51, align 8, !tbaa !65
  %52 = getelementptr double, ptr %23, i64 5
  %53 = load double, ptr %52, align 8, !tbaa !65
  %54 = getelementptr double, ptr %30, i64 -799994
  store double %53, ptr %54, align 8, !tbaa !65
  %55 = getelementptr double, ptr %23, i64 6
  %56 = load double, ptr %55, align 8, !tbaa !65
  %57 = getelementptr double, ptr %30, i64 800005
  store double %56, ptr %57, align 8, !tbaa !65
  %58 = getelementptr double, ptr %23, i64 7
  %59 = load double, ptr %58, align 8, !tbaa !65
  %60 = getelementptr double, ptr %30, i64 -4010
  store double %59, ptr %60, align 8, !tbaa !65
  %61 = getelementptr double, ptr %23, i64 8
  %62 = load double, ptr %61, align 8, !tbaa !65
  %63 = getelementptr double, ptr %30, i64 -3971
  store double %62, ptr %63, align 8, !tbaa !65
  %64 = getelementptr double, ptr %23, i64 9
  %65 = load double, ptr %64, align 8, !tbaa !65
  %66 = getelementptr double, ptr %30, i64 3988
  store double %65, ptr %66, align 8, !tbaa !65
  %67 = getelementptr double, ptr %23, i64 10
  %68 = load double, ptr %67, align 8, !tbaa !65
  %69 = getelementptr double, ptr %30, i64 4027
  store double %68, ptr %69, align 8, !tbaa !65
  %70 = getelementptr double, ptr %23, i64 11
  %71 = load double, ptr %70, align 8, !tbaa !65
  %72 = getelementptr double, ptr %30, i64 -803986
  store double %71, ptr %72, align 8, !tbaa !65
  %73 = getelementptr double, ptr %23, i64 12
  %74 = load double, ptr %73, align 8, !tbaa !65
  %75 = getelementptr double, ptr %30, i64 796013
  store double %74, ptr %75, align 8, !tbaa !65
  %76 = getelementptr double, ptr %23, i64 13
  %77 = load double, ptr %76, align 8, !tbaa !65
  %78 = getelementptr double, ptr %30, i64 -795988
  store double %77, ptr %78, align 8, !tbaa !65
  %79 = getelementptr double, ptr %23, i64 14
  %80 = load double, ptr %79, align 8, !tbaa !65
  %81 = getelementptr double, ptr %30, i64 804011
  store double %80, ptr %81, align 8, !tbaa !65
  %82 = getelementptr double, ptr %23, i64 15
  %83 = load double, ptr %82, align 8, !tbaa !65
  %84 = getelementptr double, ptr %30, i64 -800002
  store double %83, ptr %84, align 8, !tbaa !65
  %85 = getelementptr double, ptr %23, i64 16
  %86 = load double, ptr %85, align 8, !tbaa !65
  %87 = getelementptr double, ptr %30, i64 799997
  store double %86, ptr %87, align 8, !tbaa !65
  %88 = getelementptr double, ptr %23, i64 17
  %89 = load double, ptr %88, align 8, !tbaa !65
  %90 = getelementptr double, ptr %30, i64 -799964
  store double %89, ptr %90, align 8, !tbaa !65
  %91 = getelementptr double, ptr %23, i64 18
  %92 = load double, ptr %91, align 8, !tbaa !65
  %93 = getelementptr double, ptr %30, i64 800035
  store double %92, ptr %93, align 8, !tbaa !65
  br label %427

94:                                               ; preds = %20
  %95 = getelementptr double, ptr %16, i64 4
  %96 = getelementptr double, ptr %16, i64 5
  %97 = getelementptr double, ptr %16, i64 6
  %98 = getelementptr double, ptr %16, i64 7
  %99 = getelementptr double, ptr %16, i64 8
  %100 = getelementptr double, ptr %16, i64 9
  %101 = getelementptr double, ptr %16, i64 10
  %102 = getelementptr double, ptr %16, i64 11
  %103 = getelementptr double, ptr %16, i64 12
  %104 = getelementptr double, ptr %16, i64 13
  %105 = getelementptr double, ptr %16, i64 14
  %106 = getelementptr double, ptr %16, i64 15
  %107 = getelementptr double, ptr %16, i64 16
  %108 = getelementptr double, ptr %16, i64 17
  %109 = getelementptr double, ptr %16, i64 18
  %110 = mul i64 %21, 85899345920
  %111 = ashr exact i64 %110, 32
  %112 = or disjoint i64 %111, 1
  %113 = getelementptr inbounds double, ptr %16, i64 %112
  %114 = load double, ptr %113, align 8, !tbaa !65
  %115 = fadd double %28, %114
  %116 = mul i64 %21, 85899345920
  %117 = ashr exact i64 %116, 32
  %118 = or disjoint i64 %117, 2
  %119 = getelementptr inbounds double, ptr %16, i64 %118
  %120 = load double, ptr %119, align 8, !tbaa !65
  %121 = fadd double %115, %120
  %122 = mul i64 %21, 85899345920
  %123 = ashr exact i64 %122, 32
  %124 = or disjoint i64 %123, 3
  %125 = getelementptr inbounds double, ptr %16, i64 %124
  %126 = load double, ptr %125, align 8, !tbaa !65
  %127 = fadd double %121, %126
  %128 = getelementptr double, ptr %95, i64 %22
  %129 = load double, ptr %128, align 8, !tbaa !65
  %130 = fadd double %127, %129
  %131 = getelementptr double, ptr %96, i64 %22
  %132 = load double, ptr %131, align 8, !tbaa !65
  %133 = fadd double %130, %132
  %134 = getelementptr double, ptr %97, i64 %22
  %135 = load double, ptr %134, align 8, !tbaa !65
  %136 = fadd double %133, %135
  %137 = getelementptr double, ptr %98, i64 %22
  %138 = load double, ptr %137, align 8, !tbaa !65
  %139 = fadd double %136, %138
  %140 = getelementptr double, ptr %99, i64 %22
  %141 = load double, ptr %140, align 8, !tbaa !65
  %142 = fadd double %139, %141
  %143 = getelementptr double, ptr %100, i64 %22
  %144 = load double, ptr %143, align 8, !tbaa !65
  %145 = fadd double %142, %144
  %146 = getelementptr double, ptr %101, i64 %22
  %147 = load double, ptr %146, align 8, !tbaa !65
  %148 = fadd double %145, %147
  %149 = getelementptr double, ptr %102, i64 %22
  %150 = load double, ptr %149, align 8, !tbaa !65
  %151 = fadd double %148, %150
  %152 = getelementptr double, ptr %103, i64 %22
  %153 = load double, ptr %152, align 8, !tbaa !65
  %154 = fadd double %151, %153
  %155 = getelementptr double, ptr %104, i64 %22
  %156 = load double, ptr %155, align 8, !tbaa !65
  %157 = fadd double %154, %156
  %158 = getelementptr double, ptr %105, i64 %22
  %159 = load double, ptr %158, align 8, !tbaa !65
  %160 = fadd double %157, %159
  %161 = getelementptr double, ptr %106, i64 %22
  %162 = load double, ptr %161, align 8, !tbaa !65
  %163 = fadd double %160, %162
  %164 = getelementptr double, ptr %107, i64 %22
  %165 = load double, ptr %164, align 8, !tbaa !65
  %166 = fadd double %163, %165
  %167 = getelementptr double, ptr %108, i64 %22
  %168 = load double, ptr %167, align 8, !tbaa !65
  %169 = fadd double %166, %168
  %170 = getelementptr double, ptr %109, i64 %22
  %171 = load double, ptr %170, align 8, !tbaa !65
  %172 = fadd double %169, %171
  %173 = insertelement <2 x double> poison, double %114, i64 0
  %174 = insertelement <2 x double> %173, double %126, i64 1
  %175 = insertelement <2 x double> poison, double %120, i64 0
  %176 = insertelement <2 x double> %175, double %129, i64 1
  %177 = fsub <2 x double> %174, %176
  %178 = insertelement <2 x double> poison, double %138, i64 0
  %179 = shufflevector <2 x double> %178, <2 x double> poison, <2 x i32> zeroinitializer
  %180 = fadd <2 x double> %177, %179
  %181 = insertelement <2 x double> poison, double %141, i64 0
  %182 = shufflevector <2 x double> %181, <2 x double> poison, <2 x i32> zeroinitializer
  %183 = fadd <2 x double> %180, %182
  %184 = fsub <2 x double> %180, %182
  %185 = shufflevector <2 x double> %183, <2 x double> %184, <2 x i32> <i32 0, i32 3>
  %186 = insertelement <2 x double> poison, double %144, i64 0
  %187 = shufflevector <2 x double> %186, <2 x double> poison, <2 x i32> zeroinitializer
  %188 = fsub <2 x double> %185, %187
  %189 = fadd <2 x double> %185, %187
  %190 = shufflevector <2 x double> %188, <2 x double> %189, <2 x i32> <i32 0, i32 3>
  %191 = insertelement <2 x double> poison, double %147, i64 0
  %192 = shufflevector <2 x double> %191, <2 x double> poison, <2 x i32> zeroinitializer
  %193 = fsub <2 x double> %190, %192
  %194 = insertelement <2 x double> poison, double %150, i64 0
  %195 = insertelement <2 x double> %194, double %162, i64 1
  %196 = fadd <2 x double> %193, %195
  %197 = insertelement <2 x double> poison, double %153, i64 0
  %198 = insertelement <2 x double> %197, double %165, i64 1
  %199 = fadd <2 x double> %196, %198
  %200 = insertelement <2 x double> poison, double %156, i64 0
  %201 = insertelement <2 x double> %200, double %168, i64 1
  %202 = fsub <2 x double> %199, %201
  %203 = insertelement <2 x double> poison, double %159, i64 0
  %204 = insertelement <2 x double> %203, double %171, i64 1
  %205 = fsub <2 x double> %202, %204
  %206 = fsub double %132, %135
  %207 = fadd double %206, %150
  %208 = fsub double %207, %153
  %209 = fadd double %208, %156
  %210 = fsub double %209, %159
  %211 = fadd double %210, %162
  %212 = fsub double %211, %165
  %213 = fadd double %212, %168
  %214 = fsub double %213, %171
  %215 = insertelement <2 x double> poison, double %172, i64 0
  %216 = shufflevector <2 x double> %215, <2 x double> poison, <2 x i32> zeroinitializer
  %217 = fdiv <2 x double> %205, %216
  %218 = fdiv double %214, %172
  %219 = and i32 %25, 2
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %222, label %221, !prof !82

221:                                              ; preds = %94
  br label %222

222:                                              ; preds = %221, %94
  %223 = phi double [ 0.000000e+00, %221 ], [ %218, %94 ]
  %224 = phi <2 x double> [ <double 2.000000e-03, double 5.000000e-03>, %221 ], [ %217, %94 ]
  %225 = extractelement <2 x double> %224, i64 0
  %226 = fmul <2 x double> %224, %224
  %227 = extractelement <2 x double> %226, i64 0
  %228 = extractelement <2 x double> %224, i64 1
  %229 = call double @llvm.fmuladd.f64(double %228, double %228, double %227)
  %230 = call double @llvm.fmuladd.f64(double %223, double %223, double %229)
  %231 = fmul double %230, 1.500000e+00
  %232 = fmul double %172, 0x3FD5555555555555
  %233 = fsub double 1.000000e+00, %231
  %234 = fmul double %232, %233
  %235 = fmul double %172, 0x3FAC71C71C71C71C
  %236 = fmul double %225, 4.500000e+00
  %237 = call double @llvm.fmuladd.f64(double %236, double %225, double 1.000000e+00)
  %238 = fsub double %237, %231
  %239 = fmul double %235, %238
  %240 = fmul double %228, 4.500000e+00
  %241 = call double @llvm.fmuladd.f64(double %240, double %228, double 1.000000e+00)
  %242 = fsub double %241, %231
  %243 = fmul double %235, %242
  %244 = fmul double %223, 4.500000e+00
  %245 = call double @llvm.fmuladd.f64(double %244, double %223, double 1.000000e+00)
  %246 = fsub double %245, %231
  %247 = fmul double %235, %246
  %248 = fmul double %172, 0x3F9C71C71C71C71C
  %249 = fadd double %225, %228
  %250 = fmul double %249, 4.500000e+00
  %251 = call double @llvm.fmuladd.f64(double %250, double %249, double 1.000000e+00)
  %252 = fsub double %251, %231
  %253 = fmul double %248, %252
  %254 = fsub double %225, %228
  %255 = fmul double %254, 4.500000e+00
  %256 = call double @llvm.fmuladd.f64(double %255, double %254, double 1.000000e+00)
  %257 = fsub double %256, %231
  %258 = fmul double %248, %257
  %259 = fadd double %223, %225
  %260 = fmul double %259, 4.500000e+00
  %261 = call double @llvm.fmuladd.f64(double %260, double %259, double 1.000000e+00)
  %262 = fsub double %261, %231
  %263 = fmul double %248, %262
  %264 = fsub double %225, %223
  %265 = fmul double %264, 4.500000e+00
  %266 = call double @llvm.fmuladd.f64(double %265, double %264, double 1.000000e+00)
  %267 = fsub double %266, %231
  %268 = fmul double %248, %267
  %269 = fadd double %223, %228
  %270 = fmul double %269, 4.500000e+00
  %271 = call double @llvm.fmuladd.f64(double %270, double %269, double 1.000000e+00)
  %272 = fsub double %271, %231
  %273 = fmul double %248, %272
  %274 = fsub double %228, %223
  %275 = fmul double %274, 4.500000e+00
  %276 = call double @llvm.fmuladd.f64(double %275, double %274, double 1.000000e+00)
  %277 = fsub double %276, %231
  %278 = fmul double %248, %277
  %279 = fmul double %235, 3.000000e+00
  %280 = fmul double %279, %225
  %281 = fmul double %279, %228
  %282 = fmul double %279, %223
  %283 = fmul double %248, 3.000000e+00
  %284 = fmul double %283, %249
  %285 = fmul double %283, %254
  %286 = fmul double %283, %259
  %287 = fmul double %283, %264
  %288 = fmul double %283, %269
  %289 = fmul double %283, %274
  %290 = fadd double %114, %120
  %291 = fmul double %290, 5.000000e-01
  %292 = fadd double %126, %129
  %293 = fmul double %292, 5.000000e-01
  %294 = fadd double %132, %135
  %295 = fmul double %294, 5.000000e-01
  %296 = fadd double %138, %147
  %297 = fmul double %296, 5.000000e-01
  %298 = fadd double %141, %144
  %299 = fmul double %298, 5.000000e-01
  %300 = fadd double %150, %159
  %301 = fmul double %300, 5.000000e-01
  %302 = fadd double %153, %156
  %303 = fmul double %302, 5.000000e-01
  %304 = fadd double %162, %171
  %305 = fmul double %304, 5.000000e-01
  %306 = fadd double %165, %168
  %307 = fmul double %306, 5.000000e-01
  %308 = extractelement <2 x double> %177, i64 0
  %309 = fmul double %308, 5.000000e-01
  %310 = extractelement <2 x double> %177, i64 1
  %311 = fmul double %310, 5.000000e-01
  %312 = fmul double %206, 5.000000e-01
  %313 = fsub double %138, %147
  %314 = fmul double %313, 5.000000e-01
  %315 = fsub double %141, %144
  %316 = fmul double %315, 5.000000e-01
  %317 = fsub double %150, %159
  %318 = fmul double %317, 5.000000e-01
  %319 = fsub double %153, %156
  %320 = fmul double %319, 5.000000e-01
  %321 = fsub double %162, %171
  %322 = fmul double %321, 5.000000e-01
  %323 = fsub double %165, %168
  %324 = fmul double %323, 5.000000e-01
  %325 = fsub double %28, %234
  %326 = call double @llvm.fmuladd.f64(double %325, double -1.950000e+00, double %28)
  %327 = getelementptr inbounds double, ptr %17, i64 %22
  store double %326, ptr %327, align 8, !tbaa !65
  %328 = load double, ptr %113, align 8, !tbaa !65
  %329 = fsub double %291, %239
  %330 = call double @llvm.fmuladd.f64(double %329, double -1.950000e+00, double %328)
  %331 = fsub double %309, %280
  %332 = call double @llvm.fmuladd.f64(double %331, double 0xBFB0ECF56BE69CA7, double %330)
  %333 = getelementptr double, ptr %327, i64 4001
  store double %332, ptr %333, align 8, !tbaa !65
  %334 = load double, ptr %119, align 8, !tbaa !65
  %335 = call double @llvm.fmuladd.f64(double %329, double -1.950000e+00, double %334)
  %336 = fsub double %280, %309
  %337 = call double @llvm.fmuladd.f64(double %336, double 0xBFB0ECF56BE69CA7, double %335)
  %338 = getelementptr double, ptr %327, i64 -3998
  store double %337, ptr %338, align 8, !tbaa !65
  %339 = load double, ptr %125, align 8, !tbaa !65
  %340 = fsub double %293, %243
  %341 = call double @llvm.fmuladd.f64(double %340, double -1.950000e+00, double %339)
  %342 = fsub double %311, %281
  %343 = call double @llvm.fmuladd.f64(double %342, double 0xBFB0ECF56BE69CA7, double %341)
  %344 = getelementptr double, ptr %327, i64 23
  store double %343, ptr %344, align 8, !tbaa !65
  %345 = load double, ptr %128, align 8, !tbaa !65
  %346 = call double @llvm.fmuladd.f64(double %340, double -1.950000e+00, double %345)
  %347 = fsub double %281, %311
  %348 = call double @llvm.fmuladd.f64(double %347, double 0xBFB0ECF56BE69CA7, double %346)
  %349 = getelementptr double, ptr %327, i64 -16
  store double %348, ptr %349, align 8, !tbaa !65
  %350 = load double, ptr %131, align 8, !tbaa !65
  %351 = fsub double %295, %247
  %352 = call double @llvm.fmuladd.f64(double %351, double -1.950000e+00, double %350)
  %353 = fsub double %312, %282
  %354 = call double @llvm.fmuladd.f64(double %353, double 0xBFB0ECF56BE69CA7, double %352)
  %355 = getelementptr double, ptr %327, i64 800005
  store double %354, ptr %355, align 8, !tbaa !65
  %356 = load double, ptr %134, align 8, !tbaa !65
  %357 = call double @llvm.fmuladd.f64(double %351, double -1.950000e+00, double %356)
  %358 = fsub double %282, %312
  %359 = call double @llvm.fmuladd.f64(double %358, double 0xBFB0ECF56BE69CA7, double %357)
  %360 = getelementptr double, ptr %327, i64 -799994
  store double %359, ptr %360, align 8, !tbaa !65
  %361 = load double, ptr %137, align 8, !tbaa !65
  %362 = fsub double %297, %253
  %363 = call double @llvm.fmuladd.f64(double %362, double -1.950000e+00, double %361)
  %364 = fsub double %314, %284
  %365 = call double @llvm.fmuladd.f64(double %364, double 0xBFB0ECF56BE69CA7, double %363)
  %366 = getelementptr double, ptr %327, i64 4027
  store double %365, ptr %366, align 8, !tbaa !65
  %367 = load double, ptr %140, align 8, !tbaa !65
  %368 = fsub double %299, %258
  %369 = call double @llvm.fmuladd.f64(double %368, double -1.950000e+00, double %367)
  %370 = fsub double %316, %285
  %371 = call double @llvm.fmuladd.f64(double %370, double 0xBFB0ECF56BE69CA7, double %369)
  %372 = getelementptr double, ptr %327, i64 3988
  store double %371, ptr %372, align 8, !tbaa !65
  %373 = load double, ptr %143, align 8, !tbaa !65
  %374 = call double @llvm.fmuladd.f64(double %368, double -1.950000e+00, double %373)
  %375 = fsub double %285, %316
  %376 = call double @llvm.fmuladd.f64(double %375, double 0xBFB0ECF56BE69CA7, double %374)
  %377 = getelementptr double, ptr %327, i64 -3971
  store double %376, ptr %377, align 8, !tbaa !65
  %378 = load double, ptr %146, align 8, !tbaa !65
  %379 = call double @llvm.fmuladd.f64(double %362, double -1.950000e+00, double %378)
  %380 = fsub double %284, %314
  %381 = call double @llvm.fmuladd.f64(double %380, double 0xBFB0ECF56BE69CA7, double %379)
  %382 = getelementptr double, ptr %327, i64 -4010
  store double %381, ptr %382, align 8, !tbaa !65
  %383 = load double, ptr %149, align 8, !tbaa !65
  %384 = fsub double %301, %263
  %385 = call double @llvm.fmuladd.f64(double %384, double -1.950000e+00, double %383)
  %386 = fsub double %318, %286
  %387 = call double @llvm.fmuladd.f64(double %386, double 0xBFB0ECF56BE69CA7, double %385)
  %388 = getelementptr double, ptr %327, i64 804011
  store double %387, ptr %388, align 8, !tbaa !65
  %389 = load double, ptr %152, align 8, !tbaa !65
  %390 = fsub double %303, %268
  %391 = call double @llvm.fmuladd.f64(double %390, double -1.950000e+00, double %389)
  %392 = fsub double %320, %287
  %393 = call double @llvm.fmuladd.f64(double %392, double 0xBFB0ECF56BE69CA7, double %391)
  %394 = getelementptr double, ptr %327, i64 -795988
  store double %393, ptr %394, align 8, !tbaa !65
  %395 = load double, ptr %155, align 8, !tbaa !65
  %396 = call double @llvm.fmuladd.f64(double %390, double -1.950000e+00, double %395)
  %397 = fsub double %287, %320
  %398 = call double @llvm.fmuladd.f64(double %397, double 0xBFB0ECF56BE69CA7, double %396)
  %399 = getelementptr double, ptr %327, i64 796013
  store double %398, ptr %399, align 8, !tbaa !65
  %400 = load double, ptr %158, align 8, !tbaa !65
  %401 = call double @llvm.fmuladd.f64(double %384, double -1.950000e+00, double %400)
  %402 = fsub double %286, %318
  %403 = call double @llvm.fmuladd.f64(double %402, double 0xBFB0ECF56BE69CA7, double %401)
  %404 = getelementptr double, ptr %327, i64 -803986
  store double %403, ptr %404, align 8, !tbaa !65
  %405 = load double, ptr %161, align 8, !tbaa !65
  %406 = fsub double %305, %273
  %407 = call double @llvm.fmuladd.f64(double %406, double -1.950000e+00, double %405)
  %408 = fsub double %322, %288
  %409 = call double @llvm.fmuladd.f64(double %408, double 0xBFB0ECF56BE69CA7, double %407)
  %410 = getelementptr double, ptr %327, i64 800035
  store double %409, ptr %410, align 8, !tbaa !65
  %411 = load double, ptr %164, align 8, !tbaa !65
  %412 = fsub double %307, %278
  %413 = call double @llvm.fmuladd.f64(double %412, double -1.950000e+00, double %411)
  %414 = fsub double %324, %289
  %415 = call double @llvm.fmuladd.f64(double %414, double 0xBFB0ECF56BE69CA7, double %413)
  %416 = getelementptr double, ptr %327, i64 -799964
  store double %415, ptr %416, align 8, !tbaa !65
  %417 = load double, ptr %167, align 8, !tbaa !65
  %418 = call double @llvm.fmuladd.f64(double %412, double -1.950000e+00, double %417)
  %419 = fsub double %289, %324
  %420 = call double @llvm.fmuladd.f64(double %419, double 0xBFB0ECF56BE69CA7, double %418)
  %421 = getelementptr double, ptr %327, i64 799997
  store double %420, ptr %421, align 8, !tbaa !65
  %422 = load double, ptr %170, align 8, !tbaa !65
  %423 = call double @llvm.fmuladd.f64(double %406, double -1.950000e+00, double %422)
  %424 = fsub double %288, %322
  %425 = call double @llvm.fmuladd.f64(double %424, double 0xBFB0ECF56BE69CA7, double %423)
  %426 = getelementptr double, ptr %327, i64 -800002
  store double %425, ptr %426, align 8, !tbaa !65
  br label %427

427:                                              ; preds = %29, %222
  %428 = add nsw i64 %21, 1
  %429 = trunc i64 %428 to i32
  %430 = icmp eq i32 %19, %429
  br i1 %430, label %431, label %20, !prof !100

431:                                              ; preds = %427, %5
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %10)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @LBM_handleInOutFlow(ptr noundef %0) local_unnamed_addr #0 !prof !91 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !55
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 1, ptr nonnull @LBM_handleInOutFlow.omp_outlined, ptr nonnull %2)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 1, ptr nonnull @LBM_handleInOutFlow.omp_outlined.2, ptr nonnull %2)
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @LBM_handleInOutFlow.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2) #7 !prof !91 !PGOFuncName !101 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 39999, ptr %5, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 1, ptr %6, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  store i32 0, ptr %7, align 4, !tbaa !62
  %8 = load i32, ptr %0, align 4, !tbaa !62
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %8, i32 34, ptr nonnull %7, ptr nonnull %4, ptr nonnull %5, ptr nonnull %6, i32 1, i32 1)
  %9 = load i32, ptr %5, align 4
  %10 = call i32 @llvm.smin.i32(i32 %9, i32 39999)
  store i32 %10, ptr %5, align 4, !tbaa !62
  %11 = load i32, ptr %4, align 4, !tbaa !62
  %12 = icmp sgt i32 %11, %10
  br i1 %12, label %218, label %13

13:                                               ; preds = %3
  %14 = load ptr, ptr %2, align 8, !tbaa !55
  %15 = sext i32 %11 to i64
  %16 = add nsw i32 %10, 1
  br label %17

17:                                               ; preds = %13, %17
  %18 = phi i64 [ %15, %13 ], [ %215, %17 ]
  %19 = mul nsw i64 %18, 20
  %20 = getelementptr double, ptr %14, i64 %19
  %21 = getelementptr double, ptr %20, i64 800000
  %22 = load double, ptr %21, align 8, !tbaa !65
  %23 = getelementptr double, ptr %20, i64 800001
  %24 = load double, ptr %23, align 8, !tbaa !65
  %25 = fadd double %22, %24
  %26 = getelementptr double, ptr %20, i64 800002
  %27 = load double, ptr %26, align 8, !tbaa !65
  %28 = fadd double %25, %27
  %29 = getelementptr double, ptr %20, i64 800003
  %30 = load double, ptr %29, align 8, !tbaa !65
  %31 = fadd double %28, %30
  %32 = getelementptr double, ptr %20, i64 800004
  %33 = load double, ptr %32, align 8, !tbaa !65
  %34 = fadd double %31, %33
  %35 = getelementptr double, ptr %20, i64 800005
  %36 = load double, ptr %35, align 8, !tbaa !65
  %37 = fadd double %34, %36
  %38 = getelementptr double, ptr %20, i64 800006
  %39 = load double, ptr %38, align 8, !tbaa !65
  %40 = fadd double %37, %39
  %41 = getelementptr double, ptr %20, i64 800007
  %42 = load double, ptr %41, align 8, !tbaa !65
  %43 = fadd double %40, %42
  %44 = getelementptr double, ptr %20, i64 800008
  %45 = load double, ptr %44, align 8, !tbaa !65
  %46 = fadd double %43, %45
  %47 = getelementptr double, ptr %20, i64 800009
  %48 = load double, ptr %47, align 8, !tbaa !65
  %49 = fadd double %46, %48
  %50 = getelementptr double, ptr %20, i64 800010
  %51 = load double, ptr %50, align 8, !tbaa !65
  %52 = fadd double %49, %51
  %53 = getelementptr double, ptr %20, i64 800011
  %54 = load double, ptr %53, align 8, !tbaa !65
  %55 = fadd double %52, %54
  %56 = getelementptr double, ptr %20, i64 800012
  %57 = load double, ptr %56, align 8, !tbaa !65
  %58 = fadd double %55, %57
  %59 = getelementptr double, ptr %20, i64 800013
  %60 = load double, ptr %59, align 8, !tbaa !65
  %61 = fadd double %58, %60
  %62 = getelementptr double, ptr %20, i64 800014
  %63 = load double, ptr %62, align 8, !tbaa !65
  %64 = fadd double %61, %63
  %65 = getelementptr double, ptr %20, i64 800015
  %66 = load double, ptr %65, align 8, !tbaa !65
  %67 = fadd double %64, %66
  %68 = getelementptr double, ptr %20, i64 800016
  %69 = load double, ptr %68, align 8, !tbaa !65
  %70 = fadd double %67, %69
  %71 = getelementptr double, ptr %20, i64 800017
  %72 = load double, ptr %71, align 8, !tbaa !65
  %73 = fadd double %70, %72
  %74 = getelementptr double, ptr %20, i64 800018
  %75 = load double, ptr %74, align 8, !tbaa !65
  %76 = fadd double %73, %75
  %77 = getelementptr double, ptr %20, i64 1600000
  %78 = load double, ptr %77, align 8, !tbaa !65
  %79 = getelementptr double, ptr %20, i64 1600001
  %80 = load double, ptr %79, align 8, !tbaa !65
  %81 = fadd double %78, %80
  %82 = getelementptr double, ptr %20, i64 1600002
  %83 = load double, ptr %82, align 8, !tbaa !65
  %84 = fadd double %81, %83
  %85 = getelementptr double, ptr %20, i64 1600003
  %86 = load double, ptr %85, align 8, !tbaa !65
  %87 = fadd double %84, %86
  %88 = getelementptr double, ptr %20, i64 1600004
  %89 = load double, ptr %88, align 8, !tbaa !65
  %90 = fadd double %87, %89
  %91 = getelementptr double, ptr %20, i64 1600005
  %92 = load double, ptr %91, align 8, !tbaa !65
  %93 = fadd double %90, %92
  %94 = getelementptr double, ptr %20, i64 1600006
  %95 = load double, ptr %94, align 8, !tbaa !65
  %96 = fadd double %93, %95
  %97 = getelementptr double, ptr %20, i64 1600007
  %98 = load double, ptr %97, align 8, !tbaa !65
  %99 = fadd double %96, %98
  %100 = getelementptr double, ptr %20, i64 1600008
  %101 = load double, ptr %100, align 8, !tbaa !65
  %102 = fadd double %99, %101
  %103 = getelementptr double, ptr %20, i64 1600009
  %104 = load double, ptr %103, align 8, !tbaa !65
  %105 = fadd double %102, %104
  %106 = getelementptr double, ptr %20, i64 1600010
  %107 = load double, ptr %106, align 8, !tbaa !65
  %108 = fadd double %105, %107
  %109 = getelementptr double, ptr %20, i64 1600011
  %110 = load double, ptr %109, align 8, !tbaa !65
  %111 = fadd double %108, %110
  %112 = getelementptr double, ptr %20, i64 1600012
  %113 = load double, ptr %112, align 8, !tbaa !65
  %114 = fadd double %111, %113
  %115 = getelementptr double, ptr %20, i64 1600013
  %116 = load double, ptr %115, align 8, !tbaa !65
  %117 = fadd double %114, %116
  %118 = getelementptr double, ptr %20, i64 1600014
  %119 = load double, ptr %118, align 8, !tbaa !65
  %120 = fadd double %117, %119
  %121 = getelementptr double, ptr %20, i64 1600015
  %122 = load double, ptr %121, align 8, !tbaa !65
  %123 = fadd double %120, %122
  %124 = getelementptr double, ptr %20, i64 1600016
  %125 = load double, ptr %124, align 8, !tbaa !65
  %126 = fadd double %123, %125
  %127 = getelementptr double, ptr %20, i64 1600017
  %128 = load double, ptr %127, align 8, !tbaa !65
  %129 = fadd double %126, %128
  %130 = getelementptr double, ptr %20, i64 1600018
  %131 = load double, ptr %130, align 8, !tbaa !65
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
  store double %174, ptr %20, align 8, !tbaa !65
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
  store double %184, ptr %157, align 8, !tbaa !65
  store double %184, ptr %161, align 8, !tbaa !65
  store double %184, ptr %165, align 8, !tbaa !65
  store <2 x double> %183, ptr %166, align 8, !tbaa !65
  %185 = shufflevector <2 x double> %172, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %186 = insertelement <2 x double> %185, double %177, i64 0
  %187 = fmul <2 x double> %186, %181
  store <2 x double> %187, ptr %178, align 8, !tbaa !65
  %188 = getelementptr double, ptr %20, i64 8
  %189 = extractelement <2 x double> %187, i64 1
  store double %189, ptr %188, align 8, !tbaa !65
  %190 = getelementptr double, ptr %20, i64 9
  store double %189, ptr %190, align 8, !tbaa !65
  %191 = getelementptr double, ptr %20, i64 10
  store double %189, ptr %191, align 8, !tbaa !65
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
  store <2 x double> %202, ptr %194, align 8, !tbaa !65
  %203 = fmul <2 x double> %172, %181
  %204 = extractelement <2 x double> %203, i64 1
  %205 = getelementptr double, ptr %20, i64 13
  store double %204, ptr %205, align 8, !tbaa !65
  %206 = fneg double %150
  %207 = call double @llvm.fmuladd.f64(double %206, double 4.500000e+00, double 3.000000e+00)
  %208 = call double @llvm.fmuladd.f64(double %206, double %207, double 1.000000e+00)
  %209 = fsub double %208, %152
  %210 = fmul double %209, %193
  %211 = getelementptr double, ptr %20, i64 14
  store double %210, ptr %211, align 8, !tbaa !65
  %212 = getelementptr double, ptr %20, i64 15
  store <2 x double> %202, ptr %212, align 8, !tbaa !65
  %213 = getelementptr double, ptr %20, i64 17
  store double %204, ptr %213, align 8, !tbaa !65
  %214 = getelementptr double, ptr %20, i64 18
  store double %210, ptr %214, align 8, !tbaa !65
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
define internal void @LBM_handleInOutFlow.omp_outlined.2(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2) #7 !prof !91 !PGOFuncName !102 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 39999, ptr %5, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 1, ptr %6, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  store i32 0, ptr %7, align 4, !tbaa !62
  %8 = load i32, ptr %0, align 4, !tbaa !62
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %8, i32 34, ptr nonnull %7, ptr nonnull %4, ptr nonnull %5, ptr nonnull %6, i32 1, i32 1)
  %9 = load i32, ptr %5, align 4
  %10 = call i32 @llvm.smin.i32(i32 %9, i32 39999)
  store i32 %10, ptr %5, align 4, !tbaa !62
  %11 = load i32, ptr %4, align 4, !tbaa !62
  %12 = icmp sgt i32 %11, %10
  br i1 %12, label %299, label %13

13:                                               ; preds = %3
  %14 = load ptr, ptr %2, align 8, !tbaa !55
  %15 = getelementptr double, ptr %14, i64 207200000
  %16 = sext i32 %11 to i64
  %17 = add nsw i32 %10, 1
  br label %18

18:                                               ; preds = %13, %18
  %19 = phi i64 [ %16, %13 ], [ %296, %18 ]
  %20 = mul nsw i64 %19, 20
  %21 = getelementptr double, ptr %14, i64 %20
  %22 = getelementptr double, ptr %21, i64 206400000
  %23 = load double, ptr %22, align 8, !tbaa !65
  %24 = getelementptr double, ptr %21, i64 206400001
  %25 = load double, ptr %24, align 8, !tbaa !65
  %26 = fadd double %23, %25
  %27 = getelementptr double, ptr %21, i64 206400002
  %28 = load double, ptr %27, align 8, !tbaa !65
  %29 = fadd double %26, %28
  %30 = getelementptr double, ptr %21, i64 206400003
  %31 = load double, ptr %30, align 8, !tbaa !65
  %32 = fadd double %29, %31
  %33 = getelementptr double, ptr %21, i64 206400004
  %34 = load double, ptr %33, align 8, !tbaa !65
  %35 = fadd double %32, %34
  %36 = getelementptr double, ptr %21, i64 206400005
  %37 = load double, ptr %36, align 8, !tbaa !65
  %38 = fadd double %35, %37
  %39 = getelementptr double, ptr %21, i64 206400006
  %40 = load double, ptr %39, align 8, !tbaa !65
  %41 = fadd double %38, %40
  %42 = getelementptr double, ptr %21, i64 206400007
  %43 = load double, ptr %42, align 8, !tbaa !65
  %44 = fadd double %41, %43
  %45 = getelementptr double, ptr %21, i64 206400008
  %46 = load double, ptr %45, align 8, !tbaa !65
  %47 = fadd double %44, %46
  %48 = getelementptr double, ptr %21, i64 206400009
  %49 = load double, ptr %48, align 8, !tbaa !65
  %50 = fadd double %47, %49
  %51 = getelementptr double, ptr %21, i64 206400010
  %52 = load double, ptr %51, align 8, !tbaa !65
  %53 = fadd double %50, %52
  %54 = getelementptr double, ptr %21, i64 206400011
  %55 = load double, ptr %54, align 8, !tbaa !65
  %56 = fadd double %53, %55
  %57 = getelementptr double, ptr %21, i64 206400012
  %58 = load double, ptr %57, align 8, !tbaa !65
  %59 = fadd double %56, %58
  %60 = getelementptr double, ptr %21, i64 206400013
  %61 = load double, ptr %60, align 8, !tbaa !65
  %62 = fadd double %59, %61
  %63 = getelementptr double, ptr %21, i64 206400014
  %64 = load double, ptr %63, align 8, !tbaa !65
  %65 = fadd double %62, %64
  %66 = getelementptr double, ptr %21, i64 206400015
  %67 = load double, ptr %66, align 8, !tbaa !65
  %68 = fadd double %65, %67
  %69 = getelementptr double, ptr %21, i64 206400016
  %70 = load double, ptr %69, align 8, !tbaa !65
  %71 = fadd double %68, %70
  %72 = getelementptr double, ptr %21, i64 206400017
  %73 = load double, ptr %72, align 8, !tbaa !65
  %74 = fadd double %71, %73
  %75 = getelementptr double, ptr %21, i64 206400018
  %76 = load double, ptr %75, align 8, !tbaa !65
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
  %97 = load double, ptr %96, align 8, !tbaa !65
  %98 = getelementptr double, ptr %21, i64 205600001
  %99 = load double, ptr %98, align 8, !tbaa !65
  %100 = fadd double %97, %99
  %101 = getelementptr double, ptr %21, i64 205600002
  %102 = load double, ptr %101, align 8, !tbaa !65
  %103 = fadd double %100, %102
  %104 = getelementptr double, ptr %21, i64 205600003
  %105 = load double, ptr %104, align 8, !tbaa !65
  %106 = fadd double %103, %105
  %107 = getelementptr double, ptr %21, i64 205600004
  %108 = load double, ptr %107, align 8, !tbaa !65
  %109 = fadd double %106, %108
  %110 = getelementptr double, ptr %21, i64 205600005
  %111 = load double, ptr %110, align 8, !tbaa !65
  %112 = fadd double %109, %111
  %113 = getelementptr double, ptr %21, i64 205600006
  %114 = load double, ptr %113, align 8, !tbaa !65
  %115 = fadd double %112, %114
  %116 = getelementptr double, ptr %21, i64 205600007
  %117 = load double, ptr %116, align 8, !tbaa !65
  %118 = fadd double %115, %117
  %119 = getelementptr double, ptr %21, i64 205600008
  %120 = load double, ptr %119, align 8, !tbaa !65
  %121 = fadd double %118, %120
  %122 = getelementptr double, ptr %21, i64 205600009
  %123 = load double, ptr %122, align 8, !tbaa !65
  %124 = fadd double %121, %123
  %125 = getelementptr double, ptr %21, i64 205600010
  %126 = load double, ptr %125, align 8, !tbaa !65
  %127 = fadd double %124, %126
  %128 = getelementptr double, ptr %21, i64 205600011
  %129 = load double, ptr %128, align 8, !tbaa !65
  %130 = fadd double %127, %129
  %131 = getelementptr double, ptr %21, i64 205600012
  %132 = load double, ptr %131, align 8, !tbaa !65
  %133 = fadd double %130, %132
  %134 = getelementptr double, ptr %21, i64 205600013
  %135 = load double, ptr %134, align 8, !tbaa !65
  %136 = fadd double %133, %135
  %137 = getelementptr double, ptr %21, i64 205600014
  %138 = load double, ptr %137, align 8, !tbaa !65
  %139 = fadd double %136, %138
  %140 = getelementptr double, ptr %21, i64 205600015
  %141 = load double, ptr %140, align 8, !tbaa !65
  %142 = fadd double %139, %141
  %143 = getelementptr double, ptr %21, i64 205600016
  %144 = load double, ptr %143, align 8, !tbaa !65
  %145 = fadd double %142, %144
  %146 = getelementptr double, ptr %21, i64 205600017
  %147 = load double, ptr %146, align 8, !tbaa !65
  %148 = fadd double %145, %147
  %149 = getelementptr double, ptr %21, i64 205600018
  %150 = load double, ptr %149, align 8, !tbaa !65
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
  store <2 x double> %229, ptr %172, align 8, !tbaa !65
  %230 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %215, <2 x double> <double 4.500000e+00, double 4.500000e+00>, <2 x double> <double -3.000000e+00, double 3.000000e+00>)
  %231 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %215, <2 x double> %230, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %232 = fsub <2 x double> %231, %227
  %233 = fmul <2 x double> %232, <double 0x3FAC71C71C71C71C, double 0x3FAC71C71C71C71C>
  store <2 x double> %233, ptr %173, align 8, !tbaa !65
  %234 = getelementptr double, ptr %21, i64 207200004
  %235 = shufflevector <2 x double> %215, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %236 = insertelement <2 x double> %235, double %171, i64 1
  %237 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %236, <2 x double> <double 4.500000e+00, double 4.500000e+00>, <2 x double> <double -3.000000e+00, double 3.000000e+00>)
  %238 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %236, <2 x double> %237, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %239 = fsub <2 x double> %238, %227
  %240 = fmul <2 x double> %239, <double 0x3FAC71C71C71C71C, double 0x3FAC71C71C71C71C>
  store <2 x double> %240, ptr %234, align 8, !tbaa !65
  %241 = getelementptr double, ptr %21, i64 207200006
  %242 = fadd double %219, %216
  %243 = insertelement <2 x double> poison, double %171, i64 0
  %244 = insertelement <2 x double> %243, double %242, i64 1
  %245 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %244, <2 x double> <double 4.500000e+00, double 4.500000e+00>, <2 x double> <double -3.000000e+00, double 3.000000e+00>)
  %246 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %244, <2 x double> %245, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %247 = fsub <2 x double> %246, %227
  %248 = fmul <2 x double> %247, <double 0x3FAC71C71C71C71C, double 0x3F9C71C71C71C71C>
  store <2 x double> %248, ptr %241, align 8, !tbaa !65
  %249 = fneg double %219
  %250 = getelementptr double, ptr %21, i64 207200008
  %251 = fsub <2 x double> %215, %235
  %252 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %251, <2 x double> <double 4.500000e+00, double 4.500000e+00>, <2 x double> <double 3.000000e+00, double 3.000000e+00>)
  %253 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %251, <2 x double> %252, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %254 = fsub <2 x double> %253, %227
  %255 = fmul <2 x double> %254, <double 0x3F9C71C71C71C71C, double 0x3F9C71C71C71C71C>
  store <2 x double> %255, ptr %250, align 8, !tbaa !65
  %256 = fsub double %249, %216
  %257 = getelementptr double, ptr %21, i64 207200010
  %258 = fadd double %216, %171
  %259 = insertelement <2 x double> poison, double %256, i64 0
  %260 = insertelement <2 x double> %259, double %258, i64 1
  %261 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %260, <2 x double> <double 4.500000e+00, double 4.500000e+00>, <2 x double> <double 3.000000e+00, double 3.000000e+00>)
  %262 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %260, <2 x double> %261, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %263 = fsub <2 x double> %262, %227
  %264 = fmul <2 x double> %263, <double 0x3F9C71C71C71C71C, double 0x3F9C71C71C71C71C>
  store <2 x double> %264, ptr %257, align 8, !tbaa !65
  %265 = getelementptr double, ptr %21, i64 207200012
  %266 = fneg double %216
  %267 = insertelement <2 x double> %215, double %171, i64 1
  %268 = insertelement <2 x double> %235, double %171, i64 0
  %269 = fsub <2 x double> %267, %268
  %270 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %269, <2 x double> <double 4.500000e+00, double 4.500000e+00>, <2 x double> <double 3.000000e+00, double 3.000000e+00>)
  %271 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %269, <2 x double> %270, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %272 = fsub <2 x double> %271, %227
  %273 = fmul <2 x double> %272, <double 0x3F9C71C71C71C71C, double 0x3F9C71C71C71C71C>
  store <2 x double> %273, ptr %265, align 8, !tbaa !65
  %274 = fsub double %266, %171
  %275 = getelementptr double, ptr %21, i64 207200014
  %276 = fadd double %219, %171
  %277 = insertelement <2 x double> poison, double %274, i64 0
  %278 = insertelement <2 x double> %277, double %276, i64 1
  %279 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %278, <2 x double> <double 4.500000e+00, double 4.500000e+00>, <2 x double> <double 3.000000e+00, double 3.000000e+00>)
  %280 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %278, <2 x double> %279, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %281 = fsub <2 x double> %280, %227
  %282 = fmul <2 x double> %281, <double 0x3F9C71C71C71C71C, double 0x3F9C71C71C71C71C>
  store <2 x double> %282, ptr %275, align 8, !tbaa !65
  %283 = getelementptr double, ptr %21, i64 207200016
  %284 = insertelement <2 x double> %215, double %171, i64 0
  %285 = fsub <2 x double> %236, %284
  %286 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %285, <2 x double> <double 4.500000e+00, double 4.500000e+00>, <2 x double> <double 3.000000e+00, double 3.000000e+00>)
  %287 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %285, <2 x double> %286, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %288 = fsub <2 x double> %287, %227
  %289 = fmul <2 x double> %288, <double 0x3F9C71C71C71C71C, double 0x3F9C71C71C71C71C>
  store <2 x double> %289, ptr %283, align 8, !tbaa !65
  %290 = fsub double %249, %171
  %291 = call double @llvm.fmuladd.f64(double %290, double 4.500000e+00, double 3.000000e+00)
  %292 = call double @llvm.fmuladd.f64(double %290, double %291, double 1.000000e+00)
  %293 = fsub double %292, %222
  %294 = fmul double %293, 0x3F9C71C71C71C71C
  %295 = getelementptr double, ptr %21, i64 207200018
  store double %294, ptr %295, align 8, !tbaa !65
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
define dso_local void @LBM_showGridStatistics(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !prof !103 {
  br label %2

2:                                                ; preds = %1, %130
  %3 = phi i64 [ 0, %1 ], [ %136, %130 ]
  %4 = phi double [ 0.000000e+00, %1 ], [ %79, %130 ]
  %5 = phi i32 [ 0, %1 ], [ %135, %130 ]
  %6 = phi double [ -1.000000e+30, %1 ], [ %78, %130 ]
  %7 = phi double [ 1.000000e+30, %1 ], [ %74, %130 ]
  %8 = phi i32 [ 0, %1 ], [ %134, %130 ]
  %9 = phi double [ -1.000000e+30, %1 ], [ %133, %130 ]
  %10 = phi double [ 1.000000e+30, %1 ], [ %132, %130 ]
  %11 = phi i32 [ 0, %1 ], [ %131, %130 ]
  %12 = getelementptr inbounds double, ptr %0, i64 %3
  %13 = load double, ptr %12, align 8, !tbaa !65
  %14 = or disjoint i64 %3, 1
  %15 = getelementptr inbounds double, ptr %0, i64 %14
  %16 = load double, ptr %15, align 8, !tbaa !65
  %17 = fadd double %13, %16
  %18 = or disjoint i64 %3, 2
  %19 = getelementptr inbounds double, ptr %0, i64 %18
  %20 = load double, ptr %19, align 8, !tbaa !65
  %21 = fadd double %17, %20
  %22 = or disjoint i64 %3, 3
  %23 = getelementptr inbounds double, ptr %0, i64 %22
  %24 = load double, ptr %23, align 8, !tbaa !65
  %25 = fadd double %21, %24
  %26 = getelementptr double, ptr %12, i64 4
  %27 = load double, ptr %26, align 8, !tbaa !65
  %28 = fadd double %25, %27
  %29 = getelementptr double, ptr %12, i64 5
  %30 = load double, ptr %29, align 8, !tbaa !65
  %31 = fadd double %28, %30
  %32 = getelementptr double, ptr %12, i64 6
  %33 = load double, ptr %32, align 8, !tbaa !65
  %34 = fadd double %31, %33
  %35 = getelementptr double, ptr %12, i64 7
  %36 = load double, ptr %35, align 8, !tbaa !65
  %37 = fadd double %34, %36
  %38 = getelementptr double, ptr %12, i64 8
  %39 = load double, ptr %38, align 8, !tbaa !65
  %40 = fadd double %37, %39
  %41 = getelementptr double, ptr %12, i64 9
  %42 = load double, ptr %41, align 8, !tbaa !65
  %43 = fadd double %40, %42
  %44 = getelementptr double, ptr %12, i64 10
  %45 = load double, ptr %44, align 8, !tbaa !65
  %46 = fadd double %43, %45
  %47 = getelementptr double, ptr %12, i64 11
  %48 = load double, ptr %47, align 8, !tbaa !65
  %49 = fadd double %46, %48
  %50 = getelementptr double, ptr %12, i64 12
  %51 = load double, ptr %50, align 8, !tbaa !65
  %52 = fadd double %49, %51
  %53 = getelementptr double, ptr %12, i64 13
  %54 = load double, ptr %53, align 8, !tbaa !65
  %55 = fadd double %52, %54
  %56 = getelementptr double, ptr %12, i64 14
  %57 = load double, ptr %56, align 8, !tbaa !65
  %58 = fadd double %55, %57
  %59 = getelementptr double, ptr %12, i64 15
  %60 = load double, ptr %59, align 8, !tbaa !65
  %61 = fadd double %58, %60
  %62 = getelementptr double, ptr %12, i64 16
  %63 = load double, ptr %62, align 8, !tbaa !65
  %64 = fadd double %61, %63
  %65 = getelementptr double, ptr %12, i64 17
  %66 = load double, ptr %65, align 8, !tbaa !65
  %67 = fadd double %64, %66
  %68 = getelementptr double, ptr %12, i64 18
  %69 = load double, ptr %68, align 8, !tbaa !65
  %70 = fadd double %67, %69
  %71 = fcmp olt double %70, %7
  br i1 %71, label %72, label %73, !prof !104

72:                                               ; preds = %2
  br label %73

73:                                               ; preds = %72, %2
  %74 = phi double [ %70, %72 ], [ %7, %2 ]
  %75 = fcmp ogt double %70, %6
  br i1 %75, label %76, label %77, !prof !105

76:                                               ; preds = %73
  br label %77

77:                                               ; preds = %76, %73
  %78 = phi double [ %70, %76 ], [ %6, %73 ]
  %79 = fadd double %4, %70
  %80 = getelementptr double, ptr %12, i64 19
  %81 = load i32, ptr %80, align 4, !tbaa !62
  %82 = and i32 %81, 1
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %86, label %84, !prof !106

84:                                               ; preds = %77
  %85 = add nsw i32 %5, 1
  br label %130

86:                                               ; preds = %77
  %87 = lshr exact i32 %81, 1
  %88 = and i32 %87, 1
  %89 = xor i32 %88, 1
  %90 = add nsw i32 %89, %11
  %91 = add i32 %88, %8
  %92 = fsub double %24, %27
  %93 = fadd double %92, %36
  %94 = fsub double %93, %39
  %95 = fadd double %94, %42
  %96 = fsub double %95, %45
  %97 = fadd double %96, %60
  %98 = fadd double %97, %63
  %99 = fsub double %98, %66
  %100 = fsub double %99, %69
  %101 = fsub double %16, %20
  %102 = fadd double %101, %36
  %103 = fadd double %102, %39
  %104 = fsub double %103, %42
  %105 = fsub double %104, %45
  %106 = fadd double %105, %48
  %107 = fadd double %106, %51
  %108 = fsub double %107, %54
  %109 = fsub double %108, %57
  %110 = fsub double %30, %33
  %111 = fadd double %110, %48
  %112 = fsub double %111, %51
  %113 = fadd double %112, %54
  %114 = fsub double %113, %57
  %115 = fadd double %114, %60
  %116 = fsub double %115, %63
  %117 = fadd double %116, %66
  %118 = fsub double %117, %69
  %119 = fmul double %109, %109
  %120 = tail call double @llvm.fmuladd.f64(double %100, double %100, double %119)
  %121 = tail call double @llvm.fmuladd.f64(double %118, double %118, double %120)
  %122 = fmul double %70, %70
  %123 = fdiv double %121, %122
  %124 = fcmp olt double %123, %10
  br i1 %124, label %125, label %126, !prof !107

125:                                              ; preds = %86
  br label %126

126:                                              ; preds = %125, %86
  %127 = phi double [ %123, %125 ], [ %10, %86 ]
  %128 = fcmp ogt double %123, %9
  br i1 %128, label %129, label %130, !prof !108

129:                                              ; preds = %126
  br label %130

130:                                              ; preds = %84, %129, %126
  %131 = phi i32 [ %11, %84 ], [ %90, %129 ], [ %90, %126 ]
  %132 = phi double [ %10, %84 ], [ %127, %129 ], [ %127, %126 ]
  %133 = phi double [ %9, %84 ], [ %123, %129 ], [ %9, %126 ]
  %134 = phi i32 [ %8, %84 ], [ %91, %129 ], [ %91, %126 ]
  %135 = phi i32 [ %85, %84 ], [ %5, %129 ], [ %5, %126 ]
  %136 = add nuw nsw i64 %3, 20
  %137 = icmp ult i64 %3, 207999980
  br i1 %137, label %2, label %138, !prof !109, !llvm.loop !110

138:                                              ; preds = %130
  %139 = tail call double @sqrt(double noundef %132) #18
  %140 = tail call double @sqrt(double noundef %133) #18
  %141 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %135, i32 noundef %134, i32 noundef %131, double noundef %74, double noundef %78, double noundef %79, double noundef %139, double noundef %140) #16
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #12

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @LBM_storeVelocityField(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #10 !prof !91 {
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
  %22 = load double, ptr %21, align 8, !tbaa !65
  %23 = or disjoint i64 %20, 1
  %24 = getelementptr inbounds double, ptr %0, i64 %23
  %25 = load double, ptr %24, align 8, !tbaa !65
  %26 = fadd double %22, %25
  %27 = or disjoint i64 %20, 2
  %28 = getelementptr inbounds double, ptr %0, i64 %27
  %29 = load double, ptr %28, align 8, !tbaa !65
  %30 = fadd double %26, %29
  %31 = or disjoint i64 %20, 3
  %32 = getelementptr inbounds double, ptr %0, i64 %31
  %33 = load double, ptr %32, align 8, !tbaa !65
  %34 = fadd double %30, %33
  %35 = getelementptr double, ptr %21, i64 4
  %36 = load double, ptr %35, align 8, !tbaa !65
  %37 = fadd double %34, %36
  %38 = getelementptr double, ptr %21, i64 5
  %39 = load double, ptr %38, align 8, !tbaa !65
  %40 = fadd double %37, %39
  %41 = getelementptr double, ptr %21, i64 6
  %42 = load double, ptr %41, align 8, !tbaa !65
  %43 = fadd double %40, %42
  %44 = getelementptr double, ptr %21, i64 7
  %45 = load double, ptr %44, align 8, !tbaa !65
  %46 = fadd double %43, %45
  %47 = getelementptr double, ptr %21, i64 8
  %48 = load double, ptr %47, align 8, !tbaa !65
  %49 = fadd double %46, %48
  %50 = getelementptr double, ptr %21, i64 9
  %51 = load double, ptr %50, align 8, !tbaa !65
  %52 = fadd double %49, %51
  %53 = getelementptr double, ptr %21, i64 10
  %54 = load double, ptr %53, align 8, !tbaa !65
  %55 = fadd double %52, %54
  %56 = getelementptr double, ptr %21, i64 11
  %57 = load double, ptr %56, align 8, !tbaa !65
  %58 = fadd double %55, %57
  %59 = getelementptr double, ptr %21, i64 12
  %60 = load double, ptr %59, align 8, !tbaa !65
  %61 = fadd double %58, %60
  %62 = getelementptr double, ptr %21, i64 13
  %63 = load double, ptr %62, align 8, !tbaa !65
  %64 = fadd double %61, %63
  %65 = getelementptr double, ptr %21, i64 14
  %66 = load double, ptr %65, align 8, !tbaa !65
  %67 = fadd double %64, %66
  %68 = getelementptr double, ptr %21, i64 15
  %69 = load double, ptr %68, align 8, !tbaa !65
  %70 = fadd double %67, %69
  %71 = getelementptr double, ptr %21, i64 16
  %72 = load double, ptr %71, align 8, !tbaa !65
  %73 = fadd double %70, %72
  %74 = getelementptr double, ptr %21, i64 17
  %75 = load double, ptr %74, align 8, !tbaa !65
  %76 = fadd double %73, %75
  %77 = getelementptr double, ptr %21, i64 18
  %78 = load double, ptr %77, align 8, !tbaa !65
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
  store float %111, ptr %4, align 4, !tbaa !111
  %112 = fdiv float %100, %80
  store float %112, ptr %5, align 4, !tbaa !111
  %113 = fdiv float %110, %80
  store float %113, ptr %6, align 4, !tbaa !111
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
  br i1 %122, label %123, label %17, !llvm.loop !113

123:                                              ; preds = %120
  %124 = add nuw nsw i64 %14, 1
  %125 = icmp eq i64 %124, 200
  br i1 %125, label %126, label %13, !llvm.loop !114

126:                                              ; preds = %123
  %127 = add nuw nsw i64 %11, 1
  %128 = icmp eq i64 %127, 260
  br i1 %128, label %129, label %10, !llvm.loop !115

129:                                              ; preds = %126
  %130 = tail call i32 @fclose(ptr noundef %9) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @storeValue(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #10 !prof !91 !PGOFuncName !116 {
  %3 = tail call i64 @fwrite(ptr noundef %1, i64 noundef 4, i64 noundef 1, ptr noundef %0) #16
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @LBM_compareVelocityField(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 !prof !91 {
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
  %25 = load double, ptr %24, align 8, !tbaa !65
  %26 = or disjoint i64 %23, 1
  %27 = getelementptr inbounds double, ptr %0, i64 %26
  %28 = load double, ptr %27, align 8, !tbaa !65
  %29 = fadd double %25, %28
  %30 = or disjoint i64 %23, 2
  %31 = getelementptr inbounds double, ptr %0, i64 %30
  %32 = load double, ptr %31, align 8, !tbaa !65
  %33 = fadd double %29, %32
  %34 = or disjoint i64 %23, 3
  %35 = getelementptr inbounds double, ptr %0, i64 %34
  %36 = load double, ptr %35, align 8, !tbaa !65
  %37 = fadd double %33, %36
  %38 = getelementptr double, ptr %24, i64 4
  %39 = load double, ptr %38, align 8, !tbaa !65
  %40 = fadd double %37, %39
  %41 = getelementptr double, ptr %24, i64 5
  %42 = load double, ptr %41, align 8, !tbaa !65
  %43 = fadd double %40, %42
  %44 = getelementptr double, ptr %24, i64 6
  %45 = load double, ptr %44, align 8, !tbaa !65
  %46 = fadd double %43, %45
  %47 = getelementptr double, ptr %24, i64 7
  %48 = load double, ptr %47, align 8, !tbaa !65
  %49 = fadd double %46, %48
  %50 = getelementptr double, ptr %24, i64 8
  %51 = load double, ptr %50, align 8, !tbaa !65
  %52 = fadd double %49, %51
  %53 = getelementptr double, ptr %24, i64 9
  %54 = load double, ptr %53, align 8, !tbaa !65
  %55 = fadd double %52, %54
  %56 = getelementptr double, ptr %24, i64 10
  %57 = load double, ptr %56, align 8, !tbaa !65
  %58 = fadd double %55, %57
  %59 = getelementptr double, ptr %24, i64 11
  %60 = load double, ptr %59, align 8, !tbaa !65
  %61 = fadd double %58, %60
  %62 = getelementptr double, ptr %24, i64 12
  %63 = load double, ptr %62, align 8, !tbaa !65
  %64 = fadd double %61, %63
  %65 = getelementptr double, ptr %24, i64 13
  %66 = load double, ptr %65, align 8, !tbaa !65
  %67 = fadd double %64, %66
  %68 = getelementptr double, ptr %24, i64 14
  %69 = load double, ptr %68, align 8, !tbaa !65
  %70 = fadd double %67, %69
  %71 = getelementptr double, ptr %24, i64 15
  %72 = load double, ptr %71, align 8, !tbaa !65
  %73 = fadd double %70, %72
  %74 = getelementptr double, ptr %24, i64 16
  %75 = load double, ptr %74, align 8, !tbaa !65
  %76 = fadd double %73, %75
  %77 = getelementptr double, ptr %24, i64 17
  %78 = load double, ptr %77, align 8, !tbaa !65
  %79 = fadd double %76, %78
  %80 = getelementptr double, ptr %24, i64 18
  %81 = load double, ptr %80, align 8, !tbaa !65
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
  %117 = load float, ptr %4, align 4, !tbaa !111
  %118 = fpext float %117 to double
  %119 = fsub double %110, %118
  %120 = fptrunc double %119 to float
  %121 = load float, ptr %5, align 4, !tbaa !111
  %122 = fpext float %121 to double
  %123 = fsub double %111, %122
  %124 = fptrunc double %123 to float
  %125 = load float, ptr %6, align 4, !tbaa !111
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
  br i1 %135, label %136, label %19, !llvm.loop !117

136:                                              ; preds = %116
  %137 = add nuw nsw i64 %15, 1
  %138 = icmp eq i64 %137, 200
  br i1 %138, label %139, label %14, !llvm.loop !118

139:                                              ; preds = %136
  %140 = add nuw nsw i64 %11, 1
  %141 = icmp eq i64 %140, 260
  br i1 %141, label %142, label %10, !llvm.loop !119

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
define internal fastcc void @loadValue(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #10 !prof !91 !PGOFuncName !120 {
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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!53}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 2894064441}
!4 = !{!"MaxCount", i64 1490762975}
!5 = !{!"MaxInternalCount", i64 1205682524}
!6 = !{!"MaxFunctionCount", i64 1490762975}
!7 = !{!"NumCounts", i64 85}
!8 = !{!"NumFunctions", i64 23}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1490762975, i32 1}
!14 = !{i32 100000, i64 1490762975, i32 1}
!15 = !{i32 200000, i64 1490762975, i32 1}
!16 = !{i32 300000, i64 1490762975, i32 1}
!17 = !{i32 400000, i64 1490762975, i32 1}
!18 = !{i32 500000, i64 1490762975, i32 1}
!19 = !{i32 600000, i64 1205682524, i32 2}
!20 = !{i32 700000, i64 1205682524, i32 2}
!21 = !{i32 800000, i64 1205682524, i32 2}
!22 = !{i32 900000, i64 1205682524, i32 2}
!23 = !{i32 950000, i64 153664000, i32 3}
!24 = !{i32 990000, i64 2792867, i32 8}
!25 = !{i32 999000, i64 2605703, i32 17}
!26 = !{i32 999900, i64 153664, i32 27}
!27 = !{i32 999990, i64 60140, i32 29}
!28 = !{i32 999999, i64 2000, i32 32}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52}
!36 = !{ptr @LBM_allocateGrid, ptr @malloc, i64 2}
!37 = !{ptr @LBM_allocateGrid, ptr @printf, i64 1}
!38 = !{ptr @LBM_allocateGrid, ptr @exit, i64 1}
!39 = !{ptr @LBM_freeGrid, ptr @free, i64 2}
!40 = !{ptr @LBM_initializeGrid, ptr @__kmpc_fork_call, i64 2}
!41 = !{ptr @LBM_initializeGrid.omp_outlined, ptr @__kmpc_for_static_init_4, i64 6420992}
!42 = !{ptr @LBM_initializeGrid.omp_outlined, ptr @__kmpc_for_static_fini, i64 6420992}
!43 = !{ptr @LBM_loadObstacleFile, ptr @fopen, i64 2}
!44 = !{ptr @LBM_loadObstacleFile, ptr @fgetc, i64 13936348}
!45 = !{ptr @LBM_loadObstacleFile, ptr @fclose, i64 2}
!46 = !{ptr @LBM_initializeSpecialCellsForLDC, ptr @__kmpc_fork_call, i64 2}
!47 = !{ptr @LBM_initializeSpecialCellsForLDC.omp_outlined, ptr @__kmpc_for_static_init_4, i64 517}
!48 = !{ptr @LBM_initializeSpecialCellsForLDC.omp_outlined, ptr @__kmpc_for_static_fini, i64 517}
!49 = !{ptr @LBM_performStreamCollideTRT, ptr @__kmpc_fork_call, i64 2000}
!50 = !{ptr @LBM_performStreamCollideTRT.omp_outlined, ptr @__kmpc_for_static_init_4, i64 1490762975}
!51 = !{ptr @LBM_performStreamCollideTRT.omp_outlined, ptr @__kmpc_for_static_fini, i64 1490762975}
!52 = !{ptr @LBM_showGridStatistics, ptr @printf, i64 33}
!53 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!54 = !{!"function_entry_count", i64 2}
!55 = !{!56, !56, i64 0}
!56 = !{!"any pointer", !57, i64 0}
!57 = !{!"omnipotent char", !58, i64 0}
!58 = !{!"Simple C/C++ TBAA"}
!59 = !{!"branch_weights", i32 1, i32 3}
!60 = !{!"function_entry_count", i64 6420992}
!61 = !{!"lbm.c:LBM_initializeGrid.omp_outlined"}
!62 = !{!63, !63, i64 0}
!63 = !{!"int", !57, i64 0}
!64 = !{!"branch_weights", i32 60, i32 1}
!65 = !{!66, !66, i64 0}
!66 = !{!"double", !57, i64 0}
!67 = !{!"branch_weights", i32 0, i32 1}
!68 = !{!69}
!69 = !{i64 2, i64 -1, i64 -1, i1 true}
!70 = !{!"function_entry_count", i64 2000}
!71 = !{!"branch_weights", i32 10109265, i32 10690737}
!72 = !{!"branch_weights", i32 104001, i32 20696000}
!73 = distinct !{!73, !74}
!74 = !{!"llvm.loop.mustprogress"}
!75 = !{!"branch_weights", i32 521, i32 103480}
!76 = distinct !{!76, !74}
!77 = !{!"branch_weights", i32 3, i32 518}
!78 = distinct !{!78, !74}
!79 = !{!"function_entry_count", i64 517}
!80 = !{!"lbm.c:LBM_initializeSpecialCellsForLDC.omp_outlined"}
!81 = !{!"branch_weights", i32 52, i32 1}
!82 = !{!"branch_weights", i32 -1, i32 1}
!83 = !{!"branch_weights", i32 965629380, i32 -692622451}
!84 = !{!"branch_weights", i32 706053350, i32 -1777325272}
!85 = !{!"branch_weights", i32 156025, i32 793}
!86 = !{!"branch_weights", i32 -781432990, i32 54030100}
!87 = !{!"branch_weights", i32 94687, i32 2622054}
!88 = distinct !{!88, !74}
!89 = !{!"branch_weights", i32 53, i32 94634}
!90 = distinct !{!90, !74}
!91 = !{!"function_entry_count", i64 0}
!92 = !{!"lbm.c:LBM_initializeSpecialCellsForChannel.omp_outlined"}
!93 = distinct !{!93, !74}
!94 = distinct !{!94, !74}
!95 = !{!"lbm.c:LBM_performStreamCollideBGK.omp_outlined"}
!96 = !{!"function_entry_count", i64 1490762975}
!97 = !{!"lbm.c:LBM_performStreamCollideTRT.omp_outlined"}
!98 = !{!"branch_weights", i32 60140, i32 1}
!99 = !{!"branch_weights", i32 1, i32 1205682525}
!100 = !{!"branch_weights", i32 1, i32 0}
!101 = !{!"lbm.c:LBM_handleInOutFlow.omp_outlined"}
!102 = !{!"lbm.c:LBM_handleInOutFlow.omp_outlined.2"}
!103 = !{!"function_entry_count", i64 33}
!104 = !{!"branch_weights", i32 333, i32 343199669}
!105 = !{!"branch_weights", i32 13119, i32 343186883}
!106 = !{!"branch_weights", i32 157385713, i32 185814289}
!107 = !{!"branch_weights", i32 1507, i32 157384207}
!108 = !{!"branch_weights", i32 13216, i32 157372498}
!109 = !{!"branch_weights", i32 343199967, i32 34}
!110 = distinct !{!110, !74}
!111 = !{!112, !112, i64 0}
!112 = !{!"float", !57, i64 0}
!113 = distinct !{!113, !74}
!114 = distinct !{!114, !74}
!115 = distinct !{!115, !74}
!116 = !{!"lbm.c:storeValue"}
!117 = distinct !{!117, !74}
!118 = distinct !{!118, !74}
!119 = distinct !{!119, !74}
!120 = !{!"lbm.c:loadValue"}
