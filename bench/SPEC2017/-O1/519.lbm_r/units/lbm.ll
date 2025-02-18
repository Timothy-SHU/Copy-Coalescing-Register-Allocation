; ModuleID = 'lbm.c'
source_filename = "lbm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [49 x i8] c"LBM_allocateGrid: could not allocate %.1f MByte\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [148 x i8] c"LBM_showGridStatistics:\0A\09nObstacleCells: %7i nAccelCells: %7i nFluidCells: %7i\0A\09minRho: %8.6f maxRho: %8.6f Mass: %e\0A\09minU  : %8.6f maxU  : %8.6f\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"%e %e %e\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"%f %f %f\0A\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"LBM_compareVelocityField: maxDiff = %e  \0A\0A\00", align 1

; Function Attrs: cold nounwind uwtable
define dso_local void @LBM_allocateGrid(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 !prof !42 {
  %2 = tail call noalias dereferenceable_or_null(214400000) ptr @malloc(i64 noundef 214400000) #16
  store ptr %2, ptr %0, align 8, !tbaa !43
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6, !prof !47

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef 0x40698EF800000000)
  tail call void @exit(i32 noundef 1) #17
  unreachable

6:                                                ; preds = %1
  %7 = getelementptr inbounds double, ptr %2, i64 400000
  store ptr %7, ptr %0, align 8, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold mustprogress nounwind willreturn uwtable
define dso_local void @LBM_freeGrid(ptr nocapture noundef %0) local_unnamed_addr #5 !prof !42 {
  %2 = load ptr, ptr %0, align 8, !tbaa !43
  %3 = getelementptr inbounds double, ptr %2, i64 -400000
  tail call void @free(ptr noundef %3) #18
  store ptr null, ptr %0, align 8, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define dso_local void @LBM_initializeGrid(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 !prof !42 {
  br label %2

2:                                                ; preds = %1, %2
  %3 = phi i64 [ -400000, %1 ], [ %27, %2 ]
  %4 = getelementptr inbounds double, ptr %0, i64 %3
  store double 0x3FD5555555555555, ptr %4, align 8, !tbaa !48
  %5 = or disjoint i64 %3, 1
  %6 = getelementptr inbounds double, ptr %0, i64 %5
  store double 0x3FAC71C71C71C71C, ptr %6, align 8, !tbaa !48
  %7 = or disjoint i64 %3, 2
  %8 = getelementptr inbounds double, ptr %0, i64 %7
  store double 0x3FAC71C71C71C71C, ptr %8, align 8, !tbaa !48
  %9 = or disjoint i64 %3, 3
  %10 = getelementptr inbounds double, ptr %0, i64 %9
  store double 0x3FAC71C71C71C71C, ptr %10, align 8, !tbaa !48
  %11 = getelementptr double, ptr %4, i64 4
  store double 0x3FAC71C71C71C71C, ptr %11, align 8, !tbaa !48
  %12 = getelementptr double, ptr %4, i64 5
  store double 0x3FAC71C71C71C71C, ptr %12, align 8, !tbaa !48
  %13 = getelementptr double, ptr %4, i64 6
  store double 0x3FAC71C71C71C71C, ptr %13, align 8, !tbaa !48
  %14 = getelementptr double, ptr %4, i64 7
  store double 0x3F9C71C71C71C71C, ptr %14, align 8, !tbaa !48
  %15 = getelementptr double, ptr %4, i64 8
  store double 0x3F9C71C71C71C71C, ptr %15, align 8, !tbaa !48
  %16 = getelementptr double, ptr %4, i64 9
  store double 0x3F9C71C71C71C71C, ptr %16, align 8, !tbaa !48
  %17 = getelementptr double, ptr %4, i64 10
  store double 0x3F9C71C71C71C71C, ptr %17, align 8, !tbaa !48
  %18 = getelementptr double, ptr %4, i64 11
  store double 0x3F9C71C71C71C71C, ptr %18, align 8, !tbaa !48
  %19 = getelementptr double, ptr %4, i64 12
  store double 0x3F9C71C71C71C71C, ptr %19, align 8, !tbaa !48
  %20 = getelementptr double, ptr %4, i64 13
  store double 0x3F9C71C71C71C71C, ptr %20, align 8, !tbaa !48
  %21 = getelementptr double, ptr %4, i64 14
  store double 0x3F9C71C71C71C71C, ptr %21, align 8, !tbaa !48
  %22 = getelementptr double, ptr %4, i64 15
  store double 0x3F9C71C71C71C71C, ptr %22, align 8, !tbaa !48
  %23 = getelementptr double, ptr %4, i64 16
  store double 0x3F9C71C71C71C71C, ptr %23, align 8, !tbaa !48
  %24 = getelementptr double, ptr %4, i64 17
  store double 0x3F9C71C71C71C71C, ptr %24, align 8, !tbaa !48
  %25 = getelementptr double, ptr %4, i64 18
  store double 0x3F9C71C71C71C71C, ptr %25, align 8, !tbaa !48
  %26 = getelementptr double, ptr %4, i64 19
  store i32 0, ptr %26, align 4, !tbaa !50
  %27 = add nsw i64 %3, 20
  %28 = icmp slt i64 %3, 26399980
  br i1 %28, label %2, label %29, !prof !52, !llvm.loop !53

29:                                               ; preds = %2
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @LBM_swapGrids(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #8 !prof !56 {
  %3 = load ptr, ptr %0, align 8, !tbaa !43
  %4 = load ptr, ptr %1, align 8, !tbaa !43
  store ptr %4, ptr %0, align 8, !tbaa !43
  store ptr %3, ptr %1, align 8, !tbaa !43
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @LBM_loadObstacleFile(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 !prof !42 {
  %3 = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.1)
  %4 = getelementptr double, ptr %0, i64 19
  br label %5

5:                                                ; preds = %2, %29
  %6 = phi i64 [ 0, %2 ], [ %31, %29 ]
  %7 = mul nuw nsw i64 %6, 10000
  br label %8

8:                                                ; preds = %5, %25
  %9 = phi i64 [ 0, %5 ], [ %27, %25 ]
  %10 = mul nuw nsw i64 %9, 100
  %11 = add nuw nsw i64 %10, %7
  br label %12

12:                                               ; preds = %8, %22
  %13 = phi i64 [ 0, %8 ], [ %23, %22 ]
  %14 = tail call i32 @fgetc(ptr noundef %3)
  %15 = icmp eq i32 %14, 46
  br i1 %15, label %22, label %16, !prof !57

16:                                               ; preds = %12
  %17 = add nuw nsw i64 %11, %13
  %18 = mul nuw nsw i64 %17, 20
  %19 = getelementptr double, ptr %4, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !50
  %21 = or i32 %20, 1
  store i32 %21, ptr %19, align 4, !tbaa !50
  br label %22

22:                                               ; preds = %12, %16
  %23 = add nuw nsw i64 %13, 1
  %24 = icmp eq i64 %23, 100
  br i1 %24, label %25, label %12, !prof !58, !llvm.loop !59

25:                                               ; preds = %22
  %26 = tail call i32 @fgetc(ptr noundef %3)
  %27 = add nuw nsw i64 %9, 1
  %28 = icmp eq i64 %27, 100
  br i1 %28, label %29, label %8, !prof !60, !llvm.loop !61

29:                                               ; preds = %25
  %30 = tail call i32 @fgetc(ptr noundef %3)
  %31 = add nuw nsw i64 %6, 1
  %32 = icmp eq i64 %31, 130
  br i1 %32, label %33, label %5, !prof !62, !llvm.loop !63

33:                                               ; preds = %29
  %34 = tail call i32 @fclose(ptr noundef %3)
  ret void
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fgetc(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @LBM_initializeSpecialCellsForLDC(ptr nocapture noundef %0) local_unnamed_addr #10 !prof !42 {
  %2 = getelementptr double, ptr %0, i64 19
  br label %3

3:                                                ; preds = %1, %52
  %4 = phi i64 [ -2, %1 ], [ %53, %52 ]
  %5 = icmp eq i64 %4, 0
  %6 = icmp eq i64 %4, 129
  %7 = icmp eq i64 %4, 1
  %8 = icmp eq i64 %4, 128
  %9 = or i1 %7, %8
  %10 = mul nsw i64 %4, 10000
  %11 = mul nsw i64 %4, 10000
  br label %12

12:                                               ; preds = %3, %49
  %13 = phi i64 [ 0, %3 ], [ %50, %49 ]
  %14 = icmp eq i64 %13, 0
  %15 = icmp eq i64 %13, 99
  %16 = trunc i64 %13 to i32
  %17 = add i32 %16, -2
  %18 = icmp ult i32 %17, 96
  %19 = mul nuw nsw i64 %13, 100
  %20 = add nsw i64 %19, %10
  %21 = mul nuw nsw i64 %13, 100
  %22 = add nsw i64 %21, %11
  br label %23

23:                                               ; preds = %12, %46
  %24 = phi i64 [ 0, %12 ], [ %47, %46 ]
  %25 = icmp eq i64 %24, 0
  %26 = icmp eq i64 %24, 99
  %27 = or i1 %25, %26
  %28 = or i1 %14, %27
  %29 = or i1 %15, %28
  %30 = or i1 %5, %29
  %31 = or i1 %6, %30
  br i1 %31, label %38, label %32, !prof !64

32:                                               ; preds = %23
  %33 = trunc i64 %24 to i32
  %34 = add i32 %33, -2
  %35 = icmp ult i32 %34, 96
  %36 = and i1 %9, %35
  %37 = and i1 %18, %36
  br i1 %37, label %38, label %46, !prof !65

38:                                               ; preds = %32, %23
  %39 = phi i64 [ %22, %23 ], [ %20, %32 ]
  %40 = phi i32 [ 1, %23 ], [ 2, %32 ]
  %41 = add nsw i64 %39, %24
  %42 = mul nsw i64 %41, 20
  %43 = getelementptr double, ptr %2, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !50
  %45 = or i32 %44, %40
  store i32 %45, ptr %43, align 4, !tbaa !50
  br label %46

46:                                               ; preds = %38, %32
  %47 = add nuw nsw i64 %24, 1
  %48 = icmp eq i64 %47, 100
  br i1 %48, label %49, label %23, !prof !66, !llvm.loop !67

49:                                               ; preds = %46
  %50 = add nuw nsw i64 %13, 1
  %51 = icmp eq i64 %50, 100
  br i1 %51, label %52, label %12, !prof !68, !llvm.loop !69

52:                                               ; preds = %49
  %53 = add nsw i64 %4, 1
  %54 = icmp eq i64 %53, 132
  br i1 %54, label %55, label %3, !prof !70, !llvm.loop !71

55:                                               ; preds = %52
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @LBM_initializeSpecialCellsForChannel(ptr nocapture noundef %0) local_unnamed_addr #11 !prof !72 {
  %2 = getelementptr double, ptr %0, i64 19
  br label %3

3:                                                ; preds = %1, %31
  %4 = phi i64 [ -2, %1 ], [ %32, %31 ]
  %5 = mul nsw i64 %4, 10000
  br label %6

6:                                                ; preds = %3, %28
  %7 = phi i64 [ 0, %3 ], [ %29, %28 ]
  %8 = icmp eq i64 %7, 0
  %9 = icmp eq i64 %7, 99
  %10 = mul nuw nsw i64 %7, 100
  %11 = add nsw i64 %10, %5
  br label %12

12:                                               ; preds = %6, %25
  %13 = phi i64 [ 0, %6 ], [ %26, %25 ]
  %14 = icmp eq i64 %13, 0
  %15 = icmp eq i64 %13, 99
  %16 = or i1 %14, %15
  %17 = or i1 %8, %16
  %18 = or i1 %9, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %12
  %20 = add nsw i64 %11, %13
  %21 = mul nsw i64 %20, 20
  %22 = getelementptr double, ptr %2, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !50
  %24 = or i32 %23, 1
  store i32 %24, ptr %22, align 4, !tbaa !50
  br label %25

25:                                               ; preds = %19, %12
  %26 = add nuw nsw i64 %13, 1
  %27 = icmp eq i64 %26, 100
  br i1 %27, label %28, label %12, !llvm.loop !73

28:                                               ; preds = %25
  %29 = add nuw nsw i64 %7, 1
  %30 = icmp eq i64 %29, 100
  br i1 %30, label %31, label %6, !llvm.loop !74

31:                                               ; preds = %28
  %32 = add nsw i64 %4, 1
  %33 = icmp eq i64 %32, 132
  br i1 %33, label %34, label %3, !llvm.loop !75

34:                                               ; preds = %31
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @LBM_performStreamCollideBGK(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #11 !prof !72 {
  br label %3

3:                                                ; preds = %2, %314
  %4 = phi i64 [ 0, %2 ], [ %315, %314 ]
  %5 = getelementptr double, ptr %0, i64 %4
  %6 = getelementptr double, ptr %5, i64 19
  %7 = load i32, ptr %6, align 4, !tbaa !50
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  %10 = load double, ptr %5, align 8, !tbaa !48
  br i1 %9, label %70, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds double, ptr %1, i64 %4
  store double %10, ptr %12, align 8, !tbaa !48
  %13 = or disjoint i64 %4, 1
  %14 = getelementptr inbounds double, ptr %0, i64 %13
  %15 = load double, ptr %14, align 8, !tbaa !48
  %16 = getelementptr double, ptr %12, i64 -1998
  store double %15, ptr %16, align 8, !tbaa !48
  %17 = or disjoint i64 %4, 2
  %18 = getelementptr inbounds double, ptr %0, i64 %17
  %19 = load double, ptr %18, align 8, !tbaa !48
  %20 = getelementptr double, ptr %12, i64 2001
  store double %19, ptr %20, align 8, !tbaa !48
  %21 = or disjoint i64 %4, 3
  %22 = getelementptr inbounds double, ptr %0, i64 %21
  %23 = load double, ptr %22, align 8, !tbaa !48
  %24 = getelementptr double, ptr %12, i64 -16
  store double %23, ptr %24, align 8, !tbaa !48
  %25 = getelementptr double, ptr %5, i64 4
  %26 = load double, ptr %25, align 8, !tbaa !48
  %27 = getelementptr double, ptr %12, i64 23
  store double %26, ptr %27, align 8, !tbaa !48
  %28 = getelementptr double, ptr %5, i64 5
  %29 = load double, ptr %28, align 8, !tbaa !48
  %30 = getelementptr double, ptr %12, i64 -199994
  store double %29, ptr %30, align 8, !tbaa !48
  %31 = getelementptr double, ptr %5, i64 6
  %32 = load double, ptr %31, align 8, !tbaa !48
  %33 = getelementptr double, ptr %12, i64 200005
  store double %32, ptr %33, align 8, !tbaa !48
  %34 = getelementptr double, ptr %5, i64 7
  %35 = load double, ptr %34, align 8, !tbaa !48
  %36 = getelementptr double, ptr %12, i64 -2010
  store double %35, ptr %36, align 8, !tbaa !48
  %37 = getelementptr double, ptr %5, i64 8
  %38 = load double, ptr %37, align 8, !tbaa !48
  %39 = getelementptr double, ptr %12, i64 -1971
  store double %38, ptr %39, align 8, !tbaa !48
  %40 = getelementptr double, ptr %5, i64 9
  %41 = load double, ptr %40, align 8, !tbaa !48
  %42 = getelementptr double, ptr %12, i64 1988
  store double %41, ptr %42, align 8, !tbaa !48
  %43 = getelementptr double, ptr %5, i64 10
  %44 = load double, ptr %43, align 8, !tbaa !48
  %45 = getelementptr double, ptr %12, i64 2027
  store double %44, ptr %45, align 8, !tbaa !48
  %46 = getelementptr double, ptr %5, i64 11
  %47 = load double, ptr %46, align 8, !tbaa !48
  %48 = getelementptr double, ptr %12, i64 -201986
  store double %47, ptr %48, align 8, !tbaa !48
  %49 = getelementptr double, ptr %5, i64 12
  %50 = load double, ptr %49, align 8, !tbaa !48
  %51 = getelementptr double, ptr %12, i64 198013
  store double %50, ptr %51, align 8, !tbaa !48
  %52 = getelementptr double, ptr %5, i64 13
  %53 = load double, ptr %52, align 8, !tbaa !48
  %54 = getelementptr double, ptr %12, i64 -197988
  store double %53, ptr %54, align 8, !tbaa !48
  %55 = getelementptr double, ptr %5, i64 14
  %56 = load double, ptr %55, align 8, !tbaa !48
  %57 = getelementptr double, ptr %12, i64 202011
  store double %56, ptr %57, align 8, !tbaa !48
  %58 = getelementptr double, ptr %5, i64 15
  %59 = load double, ptr %58, align 8, !tbaa !48
  %60 = getelementptr double, ptr %12, i64 -200002
  store double %59, ptr %60, align 8, !tbaa !48
  %61 = getelementptr double, ptr %5, i64 16
  %62 = load double, ptr %61, align 8, !tbaa !48
  %63 = getelementptr double, ptr %12, i64 199997
  store double %62, ptr %63, align 8, !tbaa !48
  %64 = getelementptr double, ptr %5, i64 17
  %65 = load double, ptr %64, align 8, !tbaa !48
  %66 = getelementptr double, ptr %12, i64 -199964
  store double %65, ptr %66, align 8, !tbaa !48
  %67 = getelementptr double, ptr %5, i64 18
  %68 = load double, ptr %67, align 8, !tbaa !48
  %69 = getelementptr double, ptr %12, i64 200035
  store double %68, ptr %69, align 8, !tbaa !48
  br label %314

70:                                               ; preds = %3
  %71 = or disjoint i64 %4, 1
  %72 = getelementptr inbounds double, ptr %0, i64 %71
  %73 = load double, ptr %72, align 8, !tbaa !48
  %74 = fadd double %10, %73
  %75 = or disjoint i64 %4, 2
  %76 = getelementptr inbounds double, ptr %0, i64 %75
  %77 = load double, ptr %76, align 8, !tbaa !48
  %78 = fadd double %74, %77
  %79 = or disjoint i64 %4, 3
  %80 = getelementptr inbounds double, ptr %0, i64 %79
  %81 = load double, ptr %80, align 8, !tbaa !48
  %82 = fadd double %78, %81
  %83 = getelementptr double, ptr %5, i64 4
  %84 = load double, ptr %83, align 8, !tbaa !48
  %85 = fadd double %82, %84
  %86 = getelementptr double, ptr %5, i64 5
  %87 = load double, ptr %86, align 8, !tbaa !48
  %88 = fadd double %85, %87
  %89 = getelementptr double, ptr %5, i64 6
  %90 = load double, ptr %89, align 8, !tbaa !48
  %91 = fadd double %88, %90
  %92 = getelementptr double, ptr %5, i64 7
  %93 = load double, ptr %92, align 8, !tbaa !48
  %94 = fadd double %91, %93
  %95 = getelementptr double, ptr %5, i64 8
  %96 = load double, ptr %95, align 8, !tbaa !48
  %97 = fadd double %94, %96
  %98 = getelementptr double, ptr %5, i64 9
  %99 = load double, ptr %98, align 8, !tbaa !48
  %100 = fadd double %97, %99
  %101 = getelementptr double, ptr %5, i64 10
  %102 = load double, ptr %101, align 8, !tbaa !48
  %103 = fadd double %100, %102
  %104 = getelementptr double, ptr %5, i64 11
  %105 = load double, ptr %104, align 8, !tbaa !48
  %106 = fadd double %103, %105
  %107 = getelementptr double, ptr %5, i64 12
  %108 = load double, ptr %107, align 8, !tbaa !48
  %109 = fadd double %106, %108
  %110 = getelementptr double, ptr %5, i64 13
  %111 = load double, ptr %110, align 8, !tbaa !48
  %112 = fadd double %109, %111
  %113 = getelementptr double, ptr %5, i64 14
  %114 = load double, ptr %113, align 8, !tbaa !48
  %115 = fadd double %112, %114
  %116 = getelementptr double, ptr %5, i64 15
  %117 = load double, ptr %116, align 8, !tbaa !48
  %118 = fadd double %115, %117
  %119 = getelementptr double, ptr %5, i64 16
  %120 = load double, ptr %119, align 8, !tbaa !48
  %121 = fadd double %118, %120
  %122 = getelementptr double, ptr %5, i64 17
  %123 = load double, ptr %122, align 8, !tbaa !48
  %124 = fadd double %121, %123
  %125 = getelementptr double, ptr %5, i64 18
  %126 = load double, ptr %125, align 8, !tbaa !48
  %127 = fadd double %124, %126
  %128 = fsub double %81, %84
  %129 = fadd double %128, %93
  %130 = fsub double %129, %96
  %131 = fadd double %130, %99
  %132 = fsub double %131, %102
  %133 = fadd double %132, %117
  %134 = fadd double %133, %120
  %135 = fsub double %134, %123
  %136 = fsub double %135, %126
  %137 = fsub double %73, %77
  %138 = fadd double %137, %93
  %139 = fadd double %138, %96
  %140 = fsub double %139, %99
  %141 = fsub double %140, %102
  %142 = fadd double %141, %105
  %143 = fadd double %142, %108
  %144 = fsub double %143, %111
  %145 = fsub double %144, %114
  %146 = fsub double %87, %90
  %147 = fadd double %146, %105
  %148 = fsub double %147, %108
  %149 = fadd double %148, %111
  %150 = fsub double %149, %114
  %151 = fadd double %150, %117
  %152 = fsub double %151, %120
  %153 = fadd double %152, %123
  %154 = fsub double %153, %126
  %155 = fdiv double %136, %127
  %156 = fdiv double %145, %127
  %157 = fdiv double %154, %127
  %158 = and i32 %7, 2
  %159 = icmp eq i32 %158, 0
  %160 = select i1 %159, double %156, double 2.000000e-03
  %161 = select i1 %159, double %157, double 0.000000e+00
  %162 = select i1 %159, double %155, double 5.000000e-03
  %163 = fmul double %160, %160
  %164 = tail call double @llvm.fmuladd.f64(double %162, double %162, double %163)
  %165 = tail call double @llvm.fmuladd.f64(double %161, double %161, double %164)
  %166 = fmul double %165, 1.500000e+00
  %167 = fmul double %127, 0x3FE4CCCCCCCCCCCC
  %168 = fsub double 1.000000e+00, %166
  %169 = fmul double %167, %168
  %170 = tail call double @llvm.fmuladd.f64(double %10, double 0xBFEE666666666666, double %169)
  %171 = getelementptr inbounds double, ptr %1, i64 %4
  store double %170, ptr %171, align 8, !tbaa !48
  %172 = load double, ptr %72, align 8, !tbaa !48
  %173 = fmul double %127, 0x3FBBBBBBBBBBBBBB
  %174 = tail call double @llvm.fmuladd.f64(double %160, double 4.500000e+00, double 3.000000e+00)
  %175 = tail call double @llvm.fmuladd.f64(double %160, double %174, double 1.000000e+00)
  %176 = fsub double %175, %166
  %177 = fmul double %173, %176
  %178 = tail call double @llvm.fmuladd.f64(double %172, double 0xBFEE666666666666, double %177)
  %179 = getelementptr double, ptr %171, i64 2001
  store double %178, ptr %179, align 8, !tbaa !48
  %180 = load double, ptr %76, align 8, !tbaa !48
  %181 = tail call double @llvm.fmuladd.f64(double %160, double 4.500000e+00, double -3.000000e+00)
  %182 = tail call double @llvm.fmuladd.f64(double %160, double %181, double 1.000000e+00)
  %183 = fsub double %182, %166
  %184 = fmul double %173, %183
  %185 = tail call double @llvm.fmuladd.f64(double %180, double 0xBFEE666666666666, double %184)
  %186 = getelementptr double, ptr %171, i64 -1998
  store double %185, ptr %186, align 8, !tbaa !48
  %187 = load double, ptr %80, align 8, !tbaa !48
  %188 = tail call double @llvm.fmuladd.f64(double %162, double 4.500000e+00, double 3.000000e+00)
  %189 = tail call double @llvm.fmuladd.f64(double %162, double %188, double 1.000000e+00)
  %190 = fsub double %189, %166
  %191 = fmul double %173, %190
  %192 = tail call double @llvm.fmuladd.f64(double %187, double 0xBFEE666666666666, double %191)
  %193 = getelementptr double, ptr %171, i64 23
  store double %192, ptr %193, align 8, !tbaa !48
  %194 = load double, ptr %83, align 8, !tbaa !48
  %195 = tail call double @llvm.fmuladd.f64(double %162, double 4.500000e+00, double -3.000000e+00)
  %196 = tail call double @llvm.fmuladd.f64(double %162, double %195, double 1.000000e+00)
  %197 = fsub double %196, %166
  %198 = fmul double %173, %197
  %199 = tail call double @llvm.fmuladd.f64(double %194, double 0xBFEE666666666666, double %198)
  %200 = getelementptr double, ptr %171, i64 -16
  store double %199, ptr %200, align 8, !tbaa !48
  %201 = load double, ptr %86, align 8, !tbaa !48
  %202 = tail call double @llvm.fmuladd.f64(double %161, double 4.500000e+00, double 3.000000e+00)
  %203 = tail call double @llvm.fmuladd.f64(double %161, double %202, double 1.000000e+00)
  %204 = fsub double %203, %166
  %205 = fmul double %173, %204
  %206 = tail call double @llvm.fmuladd.f64(double %201, double 0xBFEE666666666666, double %205)
  %207 = getelementptr double, ptr %171, i64 200005
  store double %206, ptr %207, align 8, !tbaa !48
  %208 = load double, ptr %89, align 8, !tbaa !48
  %209 = tail call double @llvm.fmuladd.f64(double %161, double 4.500000e+00, double -3.000000e+00)
  %210 = tail call double @llvm.fmuladd.f64(double %161, double %209, double 1.000000e+00)
  %211 = fsub double %210, %166
  %212 = fmul double %173, %211
  %213 = tail call double @llvm.fmuladd.f64(double %208, double 0xBFEE666666666666, double %212)
  %214 = getelementptr double, ptr %171, i64 -199994
  store double %213, ptr %214, align 8, !tbaa !48
  %215 = load double, ptr %92, align 8, !tbaa !48
  %216 = fmul double %127, 0x3FABBBBBBBBBBBBB
  %217 = fadd double %162, %160
  %218 = tail call double @llvm.fmuladd.f64(double %217, double 4.500000e+00, double 3.000000e+00)
  %219 = tail call double @llvm.fmuladd.f64(double %217, double %218, double 1.000000e+00)
  %220 = fsub double %219, %166
  %221 = fmul double %216, %220
  %222 = tail call double @llvm.fmuladd.f64(double %215, double 0xBFEE666666666666, double %221)
  %223 = getelementptr double, ptr %171, i64 2027
  store double %222, ptr %223, align 8, !tbaa !48
  %224 = load double, ptr %95, align 8, !tbaa !48
  %225 = fneg double %162
  %226 = fsub double %160, %162
  %227 = tail call double @llvm.fmuladd.f64(double %226, double 4.500000e+00, double 3.000000e+00)
  %228 = tail call double @llvm.fmuladd.f64(double %226, double %227, double 1.000000e+00)
  %229 = fsub double %228, %166
  %230 = fmul double %216, %229
  %231 = tail call double @llvm.fmuladd.f64(double %224, double 0xBFEE666666666666, double %230)
  %232 = getelementptr double, ptr %171, i64 1988
  store double %231, ptr %232, align 8, !tbaa !48
  %233 = load double, ptr %98, align 8, !tbaa !48
  %234 = fsub double %162, %160
  %235 = tail call double @llvm.fmuladd.f64(double %234, double 4.500000e+00, double 3.000000e+00)
  %236 = tail call double @llvm.fmuladd.f64(double %234, double %235, double 1.000000e+00)
  %237 = fsub double %236, %166
  %238 = fmul double %216, %237
  %239 = tail call double @llvm.fmuladd.f64(double %233, double 0xBFEE666666666666, double %238)
  %240 = getelementptr double, ptr %171, i64 -1971
  store double %239, ptr %240, align 8, !tbaa !48
  %241 = load double, ptr %101, align 8, !tbaa !48
  %242 = fsub double %225, %160
  %243 = tail call double @llvm.fmuladd.f64(double %242, double 4.500000e+00, double 3.000000e+00)
  %244 = tail call double @llvm.fmuladd.f64(double %242, double %243, double 1.000000e+00)
  %245 = fsub double %244, %166
  %246 = fmul double %216, %245
  %247 = tail call double @llvm.fmuladd.f64(double %241, double 0xBFEE666666666666, double %246)
  %248 = getelementptr double, ptr %171, i64 -2010
  store double %247, ptr %248, align 8, !tbaa !48
  %249 = load double, ptr %104, align 8, !tbaa !48
  %250 = fadd double %160, %161
  %251 = tail call double @llvm.fmuladd.f64(double %250, double 4.500000e+00, double 3.000000e+00)
  %252 = tail call double @llvm.fmuladd.f64(double %250, double %251, double 1.000000e+00)
  %253 = fsub double %252, %166
  %254 = fmul double %216, %253
  %255 = tail call double @llvm.fmuladd.f64(double %249, double 0xBFEE666666666666, double %254)
  %256 = getelementptr double, ptr %171, i64 202011
  store double %255, ptr %256, align 8, !tbaa !48
  %257 = load double, ptr %107, align 8, !tbaa !48
  %258 = fsub double %160, %161
  %259 = tail call double @llvm.fmuladd.f64(double %258, double 4.500000e+00, double 3.000000e+00)
  %260 = tail call double @llvm.fmuladd.f64(double %258, double %259, double 1.000000e+00)
  %261 = fsub double %260, %166
  %262 = fmul double %216, %261
  %263 = tail call double @llvm.fmuladd.f64(double %257, double 0xBFEE666666666666, double %262)
  %264 = getelementptr double, ptr %171, i64 -197988
  store double %263, ptr %264, align 8, !tbaa !48
  %265 = load double, ptr %110, align 8, !tbaa !48
  %266 = fneg double %160
  %267 = fsub double %161, %160
  %268 = tail call double @llvm.fmuladd.f64(double %267, double 4.500000e+00, double 3.000000e+00)
  %269 = tail call double @llvm.fmuladd.f64(double %267, double %268, double 1.000000e+00)
  %270 = fsub double %269, %166
  %271 = fmul double %216, %270
  %272 = tail call double @llvm.fmuladd.f64(double %265, double 0xBFEE666666666666, double %271)
  %273 = getelementptr double, ptr %171, i64 198013
  store double %272, ptr %273, align 8, !tbaa !48
  %274 = load double, ptr %113, align 8, !tbaa !48
  %275 = fsub double %266, %161
  %276 = tail call double @llvm.fmuladd.f64(double %275, double 4.500000e+00, double 3.000000e+00)
  %277 = tail call double @llvm.fmuladd.f64(double %275, double %276, double 1.000000e+00)
  %278 = fsub double %277, %166
  %279 = fmul double %216, %278
  %280 = tail call double @llvm.fmuladd.f64(double %274, double 0xBFEE666666666666, double %279)
  %281 = getelementptr double, ptr %171, i64 -201986
  store double %280, ptr %281, align 8, !tbaa !48
  %282 = load double, ptr %116, align 8, !tbaa !48
  %283 = fadd double %162, %161
  %284 = tail call double @llvm.fmuladd.f64(double %283, double 4.500000e+00, double 3.000000e+00)
  %285 = tail call double @llvm.fmuladd.f64(double %283, double %284, double 1.000000e+00)
  %286 = fsub double %285, %166
  %287 = fmul double %216, %286
  %288 = tail call double @llvm.fmuladd.f64(double %282, double 0xBFEE666666666666, double %287)
  %289 = getelementptr double, ptr %171, i64 200035
  store double %288, ptr %289, align 8, !tbaa !48
  %290 = load double, ptr %119, align 8, !tbaa !48
  %291 = fsub double %162, %161
  %292 = tail call double @llvm.fmuladd.f64(double %291, double 4.500000e+00, double 3.000000e+00)
  %293 = tail call double @llvm.fmuladd.f64(double %291, double %292, double 1.000000e+00)
  %294 = fsub double %293, %166
  %295 = fmul double %216, %294
  %296 = tail call double @llvm.fmuladd.f64(double %290, double 0xBFEE666666666666, double %295)
  %297 = getelementptr double, ptr %171, i64 -199964
  store double %296, ptr %297, align 8, !tbaa !48
  %298 = load double, ptr %122, align 8, !tbaa !48
  %299 = fsub double %161, %162
  %300 = tail call double @llvm.fmuladd.f64(double %299, double 4.500000e+00, double 3.000000e+00)
  %301 = tail call double @llvm.fmuladd.f64(double %299, double %300, double 1.000000e+00)
  %302 = fsub double %301, %166
  %303 = fmul double %216, %302
  %304 = tail call double @llvm.fmuladd.f64(double %298, double 0xBFEE666666666666, double %303)
  %305 = getelementptr double, ptr %171, i64 199997
  store double %304, ptr %305, align 8, !tbaa !48
  %306 = load double, ptr %125, align 8, !tbaa !48
  %307 = fsub double %225, %161
  %308 = tail call double @llvm.fmuladd.f64(double %307, double 4.500000e+00, double 3.000000e+00)
  %309 = tail call double @llvm.fmuladd.f64(double %307, double %308, double 1.000000e+00)
  %310 = fsub double %309, %166
  %311 = fmul double %216, %310
  %312 = tail call double @llvm.fmuladd.f64(double %306, double 0xBFEE666666666666, double %311)
  %313 = getelementptr double, ptr %171, i64 -200002
  store double %312, ptr %313, align 8, !tbaa !48
  br label %314

314:                                              ; preds = %70, %11
  %315 = add nuw nsw i64 %4, 20
  %316 = icmp ult i64 %4, 25999980
  br i1 %316, label %3, label %317, !llvm.loop !76

317:                                              ; preds = %314
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #12

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @LBM_performStreamCollideTRT(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #10 !prof !56 {
  br label %3

3:                                                ; preds = %2, %360
  %4 = phi i64 [ 0, %2 ], [ %361, %360 ]
  %5 = getelementptr double, ptr %0, i64 %4
  %6 = getelementptr double, ptr %5, i64 19
  %7 = load i32, ptr %6, align 4, !tbaa !50
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  %10 = load double, ptr %5, align 8, !tbaa !48
  br i1 %9, label %70, label %11, !prof !77

11:                                               ; preds = %3
  %12 = getelementptr inbounds double, ptr %1, i64 %4
  store double %10, ptr %12, align 8, !tbaa !48
  %13 = or disjoint i64 %4, 1
  %14 = getelementptr inbounds double, ptr %0, i64 %13
  %15 = load double, ptr %14, align 8, !tbaa !48
  %16 = getelementptr double, ptr %12, i64 -1998
  store double %15, ptr %16, align 8, !tbaa !48
  %17 = or disjoint i64 %4, 2
  %18 = getelementptr inbounds double, ptr %0, i64 %17
  %19 = load double, ptr %18, align 8, !tbaa !48
  %20 = getelementptr double, ptr %12, i64 2001
  store double %19, ptr %20, align 8, !tbaa !48
  %21 = or disjoint i64 %4, 3
  %22 = getelementptr inbounds double, ptr %0, i64 %21
  %23 = load double, ptr %22, align 8, !tbaa !48
  %24 = getelementptr double, ptr %12, i64 -16
  store double %23, ptr %24, align 8, !tbaa !48
  %25 = getelementptr double, ptr %5, i64 4
  %26 = load double, ptr %25, align 8, !tbaa !48
  %27 = getelementptr double, ptr %12, i64 23
  store double %26, ptr %27, align 8, !tbaa !48
  %28 = getelementptr double, ptr %5, i64 5
  %29 = load double, ptr %28, align 8, !tbaa !48
  %30 = getelementptr double, ptr %12, i64 -199994
  store double %29, ptr %30, align 8, !tbaa !48
  %31 = getelementptr double, ptr %5, i64 6
  %32 = load double, ptr %31, align 8, !tbaa !48
  %33 = getelementptr double, ptr %12, i64 200005
  store double %32, ptr %33, align 8, !tbaa !48
  %34 = getelementptr double, ptr %5, i64 7
  %35 = load double, ptr %34, align 8, !tbaa !48
  %36 = getelementptr double, ptr %12, i64 -2010
  store double %35, ptr %36, align 8, !tbaa !48
  %37 = getelementptr double, ptr %5, i64 8
  %38 = load double, ptr %37, align 8, !tbaa !48
  %39 = getelementptr double, ptr %12, i64 -1971
  store double %38, ptr %39, align 8, !tbaa !48
  %40 = getelementptr double, ptr %5, i64 9
  %41 = load double, ptr %40, align 8, !tbaa !48
  %42 = getelementptr double, ptr %12, i64 1988
  store double %41, ptr %42, align 8, !tbaa !48
  %43 = getelementptr double, ptr %5, i64 10
  %44 = load double, ptr %43, align 8, !tbaa !48
  %45 = getelementptr double, ptr %12, i64 2027
  store double %44, ptr %45, align 8, !tbaa !48
  %46 = getelementptr double, ptr %5, i64 11
  %47 = load double, ptr %46, align 8, !tbaa !48
  %48 = getelementptr double, ptr %12, i64 -201986
  store double %47, ptr %48, align 8, !tbaa !48
  %49 = getelementptr double, ptr %5, i64 12
  %50 = load double, ptr %49, align 8, !tbaa !48
  %51 = getelementptr double, ptr %12, i64 198013
  store double %50, ptr %51, align 8, !tbaa !48
  %52 = getelementptr double, ptr %5, i64 13
  %53 = load double, ptr %52, align 8, !tbaa !48
  %54 = getelementptr double, ptr %12, i64 -197988
  store double %53, ptr %54, align 8, !tbaa !48
  %55 = getelementptr double, ptr %5, i64 14
  %56 = load double, ptr %55, align 8, !tbaa !48
  %57 = getelementptr double, ptr %12, i64 202011
  store double %56, ptr %57, align 8, !tbaa !48
  %58 = getelementptr double, ptr %5, i64 15
  %59 = load double, ptr %58, align 8, !tbaa !48
  %60 = getelementptr double, ptr %12, i64 -200002
  store double %59, ptr %60, align 8, !tbaa !48
  %61 = getelementptr double, ptr %5, i64 16
  %62 = load double, ptr %61, align 8, !tbaa !48
  %63 = getelementptr double, ptr %12, i64 199997
  store double %62, ptr %63, align 8, !tbaa !48
  %64 = getelementptr double, ptr %5, i64 17
  %65 = load double, ptr %64, align 8, !tbaa !48
  %66 = getelementptr double, ptr %12, i64 -199964
  store double %65, ptr %66, align 8, !tbaa !48
  %67 = getelementptr double, ptr %5, i64 18
  %68 = load double, ptr %67, align 8, !tbaa !48
  %69 = getelementptr double, ptr %12, i64 200035
  store double %68, ptr %69, align 8, !tbaa !48
  br label %360

70:                                               ; preds = %3
  %71 = or disjoint i64 %4, 1
  %72 = getelementptr inbounds double, ptr %0, i64 %71
  %73 = load double, ptr %72, align 8, !tbaa !48
  %74 = fadd double %10, %73
  %75 = or disjoint i64 %4, 2
  %76 = getelementptr inbounds double, ptr %0, i64 %75
  %77 = load double, ptr %76, align 8, !tbaa !48
  %78 = fadd double %74, %77
  %79 = or disjoint i64 %4, 3
  %80 = getelementptr inbounds double, ptr %0, i64 %79
  %81 = load double, ptr %80, align 8, !tbaa !48
  %82 = fadd double %78, %81
  %83 = getelementptr double, ptr %5, i64 4
  %84 = load double, ptr %83, align 8, !tbaa !48
  %85 = fadd double %82, %84
  %86 = getelementptr double, ptr %5, i64 5
  %87 = load double, ptr %86, align 8, !tbaa !48
  %88 = fadd double %85, %87
  %89 = getelementptr double, ptr %5, i64 6
  %90 = load double, ptr %89, align 8, !tbaa !48
  %91 = fadd double %88, %90
  %92 = getelementptr double, ptr %5, i64 7
  %93 = load double, ptr %92, align 8, !tbaa !48
  %94 = fadd double %91, %93
  %95 = getelementptr double, ptr %5, i64 8
  %96 = load double, ptr %95, align 8, !tbaa !48
  %97 = fadd double %94, %96
  %98 = getelementptr double, ptr %5, i64 9
  %99 = load double, ptr %98, align 8, !tbaa !48
  %100 = fadd double %97, %99
  %101 = getelementptr double, ptr %5, i64 10
  %102 = load double, ptr %101, align 8, !tbaa !48
  %103 = fadd double %100, %102
  %104 = getelementptr double, ptr %5, i64 11
  %105 = load double, ptr %104, align 8, !tbaa !48
  %106 = fadd double %103, %105
  %107 = getelementptr double, ptr %5, i64 12
  %108 = load double, ptr %107, align 8, !tbaa !48
  %109 = fadd double %106, %108
  %110 = getelementptr double, ptr %5, i64 13
  %111 = load double, ptr %110, align 8, !tbaa !48
  %112 = fadd double %109, %111
  %113 = getelementptr double, ptr %5, i64 14
  %114 = load double, ptr %113, align 8, !tbaa !48
  %115 = fadd double %112, %114
  %116 = getelementptr double, ptr %5, i64 15
  %117 = load double, ptr %116, align 8, !tbaa !48
  %118 = fadd double %115, %117
  %119 = getelementptr double, ptr %5, i64 16
  %120 = load double, ptr %119, align 8, !tbaa !48
  %121 = fadd double %118, %120
  %122 = getelementptr double, ptr %5, i64 17
  %123 = load double, ptr %122, align 8, !tbaa !48
  %124 = fadd double %121, %123
  %125 = getelementptr double, ptr %5, i64 18
  %126 = load double, ptr %125, align 8, !tbaa !48
  %127 = fadd double %124, %126
  %128 = fsub double %81, %84
  %129 = fadd double %128, %93
  %130 = fsub double %129, %96
  %131 = fadd double %130, %99
  %132 = fsub double %131, %102
  %133 = fadd double %132, %117
  %134 = fadd double %133, %120
  %135 = fsub double %134, %123
  %136 = fsub double %135, %126
  %137 = fsub double %73, %77
  %138 = fadd double %137, %93
  %139 = fadd double %138, %96
  %140 = fsub double %139, %99
  %141 = fsub double %140, %102
  %142 = fadd double %141, %105
  %143 = fadd double %142, %108
  %144 = fsub double %143, %111
  %145 = fsub double %144, %114
  %146 = fsub double %87, %90
  %147 = fadd double %146, %105
  %148 = fsub double %147, %108
  %149 = fadd double %148, %111
  %150 = fsub double %149, %114
  %151 = fadd double %150, %117
  %152 = fsub double %151, %120
  %153 = fadd double %152, %123
  %154 = fsub double %153, %126
  %155 = fdiv double %136, %127
  %156 = fdiv double %145, %127
  %157 = fdiv double %154, %127
  %158 = and i32 %7, 2
  %159 = icmp eq i32 %158, 0
  %160 = select i1 %159, double %157, double 0.000000e+00, !prof !78
  %161 = select i1 %159, double %156, double 2.000000e-03, !prof !78
  %162 = select i1 %159, double %155, double 5.000000e-03, !prof !78
  %163 = fmul double %161, %161
  %164 = tail call double @llvm.fmuladd.f64(double %162, double %162, double %163)
  %165 = tail call double @llvm.fmuladd.f64(double %160, double %160, double %164)
  %166 = fmul double %165, 1.500000e+00
  %167 = fmul double %127, 0x3FD5555555555555
  %168 = fsub double 1.000000e+00, %166
  %169 = fmul double %167, %168
  %170 = fmul double %127, 0x3FAC71C71C71C71C
  %171 = fmul double %161, 4.500000e+00
  %172 = tail call double @llvm.fmuladd.f64(double %171, double %161, double 1.000000e+00)
  %173 = fsub double %172, %166
  %174 = fmul double %170, %173
  %175 = fmul double %162, 4.500000e+00
  %176 = tail call double @llvm.fmuladd.f64(double %175, double %162, double 1.000000e+00)
  %177 = fsub double %176, %166
  %178 = fmul double %170, %177
  %179 = fmul double %160, 4.500000e+00
  %180 = tail call double @llvm.fmuladd.f64(double %179, double %160, double 1.000000e+00)
  %181 = fsub double %180, %166
  %182 = fmul double %170, %181
  %183 = fmul double %127, 0x3F9C71C71C71C71C
  %184 = fadd double %162, %161
  %185 = fmul double %184, 4.500000e+00
  %186 = tail call double @llvm.fmuladd.f64(double %185, double %184, double 1.000000e+00)
  %187 = fsub double %186, %166
  %188 = fmul double %183, %187
  %189 = fsub double %161, %162
  %190 = fmul double %189, 4.500000e+00
  %191 = tail call double @llvm.fmuladd.f64(double %190, double %189, double 1.000000e+00)
  %192 = fsub double %191, %166
  %193 = fmul double %183, %192
  %194 = fadd double %161, %160
  %195 = fmul double %194, 4.500000e+00
  %196 = tail call double @llvm.fmuladd.f64(double %195, double %194, double 1.000000e+00)
  %197 = fsub double %196, %166
  %198 = fmul double %183, %197
  %199 = fsub double %161, %160
  %200 = fmul double %199, 4.500000e+00
  %201 = tail call double @llvm.fmuladd.f64(double %200, double %199, double 1.000000e+00)
  %202 = fsub double %201, %166
  %203 = fmul double %183, %202
  %204 = fadd double %162, %160
  %205 = fmul double %204, 4.500000e+00
  %206 = tail call double @llvm.fmuladd.f64(double %205, double %204, double 1.000000e+00)
  %207 = fsub double %206, %166
  %208 = fmul double %183, %207
  %209 = fsub double %162, %160
  %210 = fmul double %209, 4.500000e+00
  %211 = tail call double @llvm.fmuladd.f64(double %210, double %209, double 1.000000e+00)
  %212 = fsub double %211, %166
  %213 = fmul double %183, %212
  %214 = fmul double %170, 3.000000e+00
  %215 = fmul double %214, %161
  %216 = fmul double %214, %162
  %217 = fmul double %214, %160
  %218 = fmul double %183, 3.000000e+00
  %219 = fmul double %218, %184
  %220 = fmul double %218, %189
  %221 = fmul double %218, %194
  %222 = fmul double %218, %199
  %223 = fmul double %218, %204
  %224 = fmul double %218, %209
  %225 = fadd double %73, %77
  %226 = fmul double %225, 5.000000e-01
  %227 = fadd double %81, %84
  %228 = fmul double %227, 5.000000e-01
  %229 = fadd double %87, %90
  %230 = fmul double %229, 5.000000e-01
  %231 = fadd double %93, %102
  %232 = fmul double %231, 5.000000e-01
  %233 = fadd double %96, %99
  %234 = fmul double %233, 5.000000e-01
  %235 = fadd double %105, %114
  %236 = fmul double %235, 5.000000e-01
  %237 = fadd double %108, %111
  %238 = fmul double %237, 5.000000e-01
  %239 = fadd double %117, %126
  %240 = fmul double %239, 5.000000e-01
  %241 = fadd double %120, %123
  %242 = fmul double %241, 5.000000e-01
  %243 = fmul double %137, 5.000000e-01
  %244 = fmul double %128, 5.000000e-01
  %245 = fmul double %146, 5.000000e-01
  %246 = fsub double %93, %102
  %247 = fmul double %246, 5.000000e-01
  %248 = fsub double %96, %99
  %249 = fmul double %248, 5.000000e-01
  %250 = fsub double %105, %114
  %251 = fmul double %250, 5.000000e-01
  %252 = fsub double %108, %111
  %253 = fmul double %252, 5.000000e-01
  %254 = fsub double %117, %126
  %255 = fmul double %254, 5.000000e-01
  %256 = fsub double %120, %123
  %257 = fmul double %256, 5.000000e-01
  %258 = fsub double %10, %169
  %259 = tail call double @llvm.fmuladd.f64(double %258, double -1.950000e+00, double %10)
  %260 = getelementptr inbounds double, ptr %1, i64 %4
  store double %259, ptr %260, align 8, !tbaa !48
  %261 = load double, ptr %72, align 8, !tbaa !48
  %262 = fsub double %226, %174
  %263 = tail call double @llvm.fmuladd.f64(double %262, double -1.950000e+00, double %261)
  %264 = fsub double %243, %215
  %265 = tail call double @llvm.fmuladd.f64(double %264, double 0xBFB0ECF56BE69CA7, double %263)
  %266 = getelementptr double, ptr %260, i64 2001
  store double %265, ptr %266, align 8, !tbaa !48
  %267 = load double, ptr %76, align 8, !tbaa !48
  %268 = tail call double @llvm.fmuladd.f64(double %262, double -1.950000e+00, double %267)
  %269 = fsub double %215, %243
  %270 = tail call double @llvm.fmuladd.f64(double %269, double 0xBFB0ECF56BE69CA7, double %268)
  %271 = getelementptr double, ptr %260, i64 -1998
  store double %270, ptr %271, align 8, !tbaa !48
  %272 = load double, ptr %80, align 8, !tbaa !48
  %273 = fsub double %228, %178
  %274 = tail call double @llvm.fmuladd.f64(double %273, double -1.950000e+00, double %272)
  %275 = fsub double %244, %216
  %276 = tail call double @llvm.fmuladd.f64(double %275, double 0xBFB0ECF56BE69CA7, double %274)
  %277 = getelementptr double, ptr %260, i64 23
  store double %276, ptr %277, align 8, !tbaa !48
  %278 = load double, ptr %83, align 8, !tbaa !48
  %279 = tail call double @llvm.fmuladd.f64(double %273, double -1.950000e+00, double %278)
  %280 = fsub double %216, %244
  %281 = tail call double @llvm.fmuladd.f64(double %280, double 0xBFB0ECF56BE69CA7, double %279)
  %282 = getelementptr double, ptr %260, i64 -16
  store double %281, ptr %282, align 8, !tbaa !48
  %283 = load double, ptr %86, align 8, !tbaa !48
  %284 = fsub double %230, %182
  %285 = tail call double @llvm.fmuladd.f64(double %284, double -1.950000e+00, double %283)
  %286 = fsub double %245, %217
  %287 = tail call double @llvm.fmuladd.f64(double %286, double 0xBFB0ECF56BE69CA7, double %285)
  %288 = getelementptr double, ptr %260, i64 200005
  store double %287, ptr %288, align 8, !tbaa !48
  %289 = load double, ptr %89, align 8, !tbaa !48
  %290 = tail call double @llvm.fmuladd.f64(double %284, double -1.950000e+00, double %289)
  %291 = fsub double %217, %245
  %292 = tail call double @llvm.fmuladd.f64(double %291, double 0xBFB0ECF56BE69CA7, double %290)
  %293 = getelementptr double, ptr %260, i64 -199994
  store double %292, ptr %293, align 8, !tbaa !48
  %294 = load double, ptr %92, align 8, !tbaa !48
  %295 = fsub double %232, %188
  %296 = tail call double @llvm.fmuladd.f64(double %295, double -1.950000e+00, double %294)
  %297 = fsub double %247, %219
  %298 = tail call double @llvm.fmuladd.f64(double %297, double 0xBFB0ECF56BE69CA7, double %296)
  %299 = getelementptr double, ptr %260, i64 2027
  store double %298, ptr %299, align 8, !tbaa !48
  %300 = load double, ptr %95, align 8, !tbaa !48
  %301 = fsub double %234, %193
  %302 = tail call double @llvm.fmuladd.f64(double %301, double -1.950000e+00, double %300)
  %303 = fsub double %249, %220
  %304 = tail call double @llvm.fmuladd.f64(double %303, double 0xBFB0ECF56BE69CA7, double %302)
  %305 = getelementptr double, ptr %260, i64 1988
  store double %304, ptr %305, align 8, !tbaa !48
  %306 = load double, ptr %98, align 8, !tbaa !48
  %307 = tail call double @llvm.fmuladd.f64(double %301, double -1.950000e+00, double %306)
  %308 = fsub double %220, %249
  %309 = tail call double @llvm.fmuladd.f64(double %308, double 0xBFB0ECF56BE69CA7, double %307)
  %310 = getelementptr double, ptr %260, i64 -1971
  store double %309, ptr %310, align 8, !tbaa !48
  %311 = load double, ptr %101, align 8, !tbaa !48
  %312 = tail call double @llvm.fmuladd.f64(double %295, double -1.950000e+00, double %311)
  %313 = fsub double %219, %247
  %314 = tail call double @llvm.fmuladd.f64(double %313, double 0xBFB0ECF56BE69CA7, double %312)
  %315 = getelementptr double, ptr %260, i64 -2010
  store double %314, ptr %315, align 8, !tbaa !48
  %316 = load double, ptr %104, align 8, !tbaa !48
  %317 = fsub double %236, %198
  %318 = tail call double @llvm.fmuladd.f64(double %317, double -1.950000e+00, double %316)
  %319 = fsub double %251, %221
  %320 = tail call double @llvm.fmuladd.f64(double %319, double 0xBFB0ECF56BE69CA7, double %318)
  %321 = getelementptr double, ptr %260, i64 202011
  store double %320, ptr %321, align 8, !tbaa !48
  %322 = load double, ptr %107, align 8, !tbaa !48
  %323 = fsub double %238, %203
  %324 = tail call double @llvm.fmuladd.f64(double %323, double -1.950000e+00, double %322)
  %325 = fsub double %253, %222
  %326 = tail call double @llvm.fmuladd.f64(double %325, double 0xBFB0ECF56BE69CA7, double %324)
  %327 = getelementptr double, ptr %260, i64 -197988
  store double %326, ptr %327, align 8, !tbaa !48
  %328 = load double, ptr %110, align 8, !tbaa !48
  %329 = tail call double @llvm.fmuladd.f64(double %323, double -1.950000e+00, double %328)
  %330 = fsub double %222, %253
  %331 = tail call double @llvm.fmuladd.f64(double %330, double 0xBFB0ECF56BE69CA7, double %329)
  %332 = getelementptr double, ptr %260, i64 198013
  store double %331, ptr %332, align 8, !tbaa !48
  %333 = load double, ptr %113, align 8, !tbaa !48
  %334 = tail call double @llvm.fmuladd.f64(double %317, double -1.950000e+00, double %333)
  %335 = fsub double %221, %251
  %336 = tail call double @llvm.fmuladd.f64(double %335, double 0xBFB0ECF56BE69CA7, double %334)
  %337 = getelementptr double, ptr %260, i64 -201986
  store double %336, ptr %337, align 8, !tbaa !48
  %338 = load double, ptr %116, align 8, !tbaa !48
  %339 = fsub double %240, %208
  %340 = tail call double @llvm.fmuladd.f64(double %339, double -1.950000e+00, double %338)
  %341 = fsub double %255, %223
  %342 = tail call double @llvm.fmuladd.f64(double %341, double 0xBFB0ECF56BE69CA7, double %340)
  %343 = getelementptr double, ptr %260, i64 200035
  store double %342, ptr %343, align 8, !tbaa !48
  %344 = load double, ptr %119, align 8, !tbaa !48
  %345 = fsub double %242, %213
  %346 = tail call double @llvm.fmuladd.f64(double %345, double -1.950000e+00, double %344)
  %347 = fsub double %257, %224
  %348 = tail call double @llvm.fmuladd.f64(double %347, double 0xBFB0ECF56BE69CA7, double %346)
  %349 = getelementptr double, ptr %260, i64 -199964
  store double %348, ptr %349, align 8, !tbaa !48
  %350 = load double, ptr %122, align 8, !tbaa !48
  %351 = tail call double @llvm.fmuladd.f64(double %345, double -1.950000e+00, double %350)
  %352 = fsub double %224, %257
  %353 = tail call double @llvm.fmuladd.f64(double %352, double 0xBFB0ECF56BE69CA7, double %351)
  %354 = getelementptr double, ptr %260, i64 199997
  store double %353, ptr %354, align 8, !tbaa !48
  %355 = load double, ptr %125, align 8, !tbaa !48
  %356 = tail call double @llvm.fmuladd.f64(double %339, double -1.950000e+00, double %355)
  %357 = fsub double %223, %255
  %358 = tail call double @llvm.fmuladd.f64(double %357, double 0xBFB0ECF56BE69CA7, double %356)
  %359 = getelementptr double, ptr %260, i64 -200002
  store double %358, ptr %359, align 8, !tbaa !48
  br label %360

360:                                              ; preds = %70, %11
  %361 = add nuw nsw i64 %4, 20
  %362 = icmp ult i64 %4, 25999980
  br i1 %362, label %3, label %363, !prof !79, !llvm.loop !80

363:                                              ; preds = %360
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @LBM_handleInOutFlow(ptr noundef %0) local_unnamed_addr #11 !prof !72 {
  br label %2

2:                                                ; preds = %1, %2
  %3 = phi i64 [ 0, %1 ], [ %191, %2 ]
  %4 = getelementptr double, ptr %0, i64 %3
  %5 = getelementptr double, ptr %4, i64 200000
  %6 = load double, ptr %5, align 8, !tbaa !48
  %7 = getelementptr double, ptr %4, i64 200001
  %8 = load double, ptr %7, align 8, !tbaa !48
  %9 = fadd double %6, %8
  %10 = getelementptr double, ptr %4, i64 200002
  %11 = load double, ptr %10, align 8, !tbaa !48
  %12 = fadd double %9, %11
  %13 = getelementptr double, ptr %4, i64 200003
  %14 = load double, ptr %13, align 8, !tbaa !48
  %15 = fadd double %12, %14
  %16 = getelementptr double, ptr %4, i64 200004
  %17 = load double, ptr %16, align 8, !tbaa !48
  %18 = fadd double %15, %17
  %19 = getelementptr double, ptr %4, i64 200005
  %20 = load double, ptr %19, align 8, !tbaa !48
  %21 = fadd double %18, %20
  %22 = getelementptr double, ptr %4, i64 200006
  %23 = load double, ptr %22, align 8, !tbaa !48
  %24 = fadd double %21, %23
  %25 = getelementptr double, ptr %4, i64 200007
  %26 = load double, ptr %25, align 8, !tbaa !48
  %27 = fadd double %24, %26
  %28 = getelementptr double, ptr %4, i64 200008
  %29 = load double, ptr %28, align 8, !tbaa !48
  %30 = fadd double %27, %29
  %31 = getelementptr double, ptr %4, i64 200009
  %32 = load double, ptr %31, align 8, !tbaa !48
  %33 = fadd double %30, %32
  %34 = getelementptr double, ptr %4, i64 200010
  %35 = load double, ptr %34, align 8, !tbaa !48
  %36 = fadd double %33, %35
  %37 = getelementptr double, ptr %4, i64 200011
  %38 = load double, ptr %37, align 8, !tbaa !48
  %39 = fadd double %36, %38
  %40 = getelementptr double, ptr %4, i64 200012
  %41 = load double, ptr %40, align 8, !tbaa !48
  %42 = fadd double %39, %41
  %43 = getelementptr double, ptr %4, i64 200013
  %44 = load double, ptr %43, align 8, !tbaa !48
  %45 = fadd double %42, %44
  %46 = getelementptr double, ptr %4, i64 200014
  %47 = load double, ptr %46, align 8, !tbaa !48
  %48 = fadd double %45, %47
  %49 = getelementptr double, ptr %4, i64 200015
  %50 = load double, ptr %49, align 8, !tbaa !48
  %51 = fadd double %48, %50
  %52 = getelementptr double, ptr %4, i64 200016
  %53 = load double, ptr %52, align 8, !tbaa !48
  %54 = fadd double %51, %53
  %55 = getelementptr double, ptr %4, i64 200017
  %56 = load double, ptr %55, align 8, !tbaa !48
  %57 = fadd double %54, %56
  %58 = getelementptr double, ptr %4, i64 200018
  %59 = load double, ptr %58, align 8, !tbaa !48
  %60 = fadd double %57, %59
  %61 = getelementptr double, ptr %4, i64 400000
  %62 = load double, ptr %61, align 8, !tbaa !48
  %63 = getelementptr double, ptr %4, i64 400001
  %64 = load double, ptr %63, align 8, !tbaa !48
  %65 = fadd double %62, %64
  %66 = getelementptr double, ptr %4, i64 400002
  %67 = load double, ptr %66, align 8, !tbaa !48
  %68 = fadd double %65, %67
  %69 = getelementptr double, ptr %4, i64 400003
  %70 = load double, ptr %69, align 8, !tbaa !48
  %71 = fadd double %68, %70
  %72 = getelementptr double, ptr %4, i64 400004
  %73 = load double, ptr %72, align 8, !tbaa !48
  %74 = fadd double %71, %73
  %75 = getelementptr double, ptr %4, i64 400005
  %76 = load double, ptr %75, align 8, !tbaa !48
  %77 = fadd double %74, %76
  %78 = getelementptr double, ptr %4, i64 400006
  %79 = load double, ptr %78, align 8, !tbaa !48
  %80 = fadd double %77, %79
  %81 = getelementptr double, ptr %4, i64 400007
  %82 = load double, ptr %81, align 8, !tbaa !48
  %83 = fadd double %80, %82
  %84 = getelementptr double, ptr %4, i64 400008
  %85 = load double, ptr %84, align 8, !tbaa !48
  %86 = fadd double %83, %85
  %87 = getelementptr double, ptr %4, i64 400009
  %88 = load double, ptr %87, align 8, !tbaa !48
  %89 = fadd double %86, %88
  %90 = getelementptr double, ptr %4, i64 400010
  %91 = load double, ptr %90, align 8, !tbaa !48
  %92 = fadd double %89, %91
  %93 = getelementptr double, ptr %4, i64 400011
  %94 = load double, ptr %93, align 8, !tbaa !48
  %95 = fadd double %92, %94
  %96 = getelementptr double, ptr %4, i64 400012
  %97 = load double, ptr %96, align 8, !tbaa !48
  %98 = fadd double %95, %97
  %99 = getelementptr double, ptr %4, i64 400013
  %100 = load double, ptr %99, align 8, !tbaa !48
  %101 = fadd double %98, %100
  %102 = getelementptr double, ptr %4, i64 400014
  %103 = load double, ptr %102, align 8, !tbaa !48
  %104 = fadd double %101, %103
  %105 = getelementptr double, ptr %4, i64 400015
  %106 = load double, ptr %105, align 8, !tbaa !48
  %107 = fadd double %104, %106
  %108 = getelementptr double, ptr %4, i64 400016
  %109 = load double, ptr %108, align 8, !tbaa !48
  %110 = fadd double %107, %109
  %111 = getelementptr double, ptr %4, i64 400017
  %112 = load double, ptr %111, align 8, !tbaa !48
  %113 = fadd double %110, %112
  %114 = getelementptr double, ptr %4, i64 400018
  %115 = load double, ptr %114, align 8, !tbaa !48
  %116 = fadd double %113, %115
  %117 = fneg double %116
  %118 = tail call double @llvm.fmuladd.f64(double %60, double 2.000000e+00, double %117)
  %119 = udiv i64 %3, 20
  %120 = trunc i64 %119 to i32
  %121 = urem i32 %120, 100
  %122 = sitofp i32 %121 to double
  %123 = fdiv double %122, 4.950000e+01
  %124 = fadd double %123, -1.000000e+00
  %125 = trunc i64 %3 to i32
  %126 = udiv i32 %125, 2000
  %127 = urem i32 %126, 100
  %128 = sitofp i32 %127 to double
  %129 = fdiv double %128, 4.950000e+01
  %130 = fadd double %129, -1.000000e+00
  %131 = fneg double %124
  %132 = tail call double @llvm.fmuladd.f64(double %131, double %124, double 1.000000e+00)
  %133 = fmul double %132, 1.000000e-02
  %134 = fneg double %130
  %135 = tail call double @llvm.fmuladd.f64(double %134, double %130, double 1.000000e+00)
  %136 = fmul double %135, %133
  %137 = tail call double @llvm.fmuladd.f64(double %136, double %136, double 0.000000e+00)
  %138 = fmul double %137, 1.500000e+00
  %139 = fmul double %118, 0x3FD5555555555555
  %140 = fsub double 1.000000e+00, %138
  %141 = fmul double %140, %139
  store double %141, ptr %4, align 8, !tbaa !48
  %142 = fmul double %118, 0x3FAC71C71C71C71C
  %143 = fmul double %140, %142
  %144 = or disjoint i64 %3, 1
  %145 = getelementptr inbounds double, ptr %0, i64 %144
  store double %143, ptr %145, align 8, !tbaa !48
  %146 = or disjoint i64 %3, 2
  %147 = getelementptr inbounds double, ptr %0, i64 %146
  store double %143, ptr %147, align 8, !tbaa !48
  %148 = or disjoint i64 %3, 3
  %149 = getelementptr inbounds double, ptr %0, i64 %148
  store double %143, ptr %149, align 8, !tbaa !48
  %150 = getelementptr double, ptr %4, i64 4
  store double %143, ptr %150, align 8, !tbaa !48
  %151 = tail call double @llvm.fmuladd.f64(double %136, double 4.500000e+00, double 3.000000e+00)
  %152 = tail call double @llvm.fmuladd.f64(double %136, double %151, double 1.000000e+00)
  %153 = fsub double %152, %138
  %154 = fmul double %153, %142
  %155 = getelementptr double, ptr %4, i64 5
  store double %154, ptr %155, align 8, !tbaa !48
  %156 = tail call double @llvm.fmuladd.f64(double %136, double 4.500000e+00, double -3.000000e+00)
  %157 = tail call double @llvm.fmuladd.f64(double %136, double %156, double 1.000000e+00)
  %158 = fsub double %157, %138
  %159 = fmul double %158, %142
  %160 = getelementptr double, ptr %4, i64 6
  store double %159, ptr %160, align 8, !tbaa !48
  %161 = fmul double %118, 0x3F9C71C71C71C71C
  %162 = fmul double %140, %161
  %163 = getelementptr double, ptr %4, i64 7
  store double %162, ptr %163, align 8, !tbaa !48
  %164 = getelementptr double, ptr %4, i64 8
  store double %162, ptr %164, align 8, !tbaa !48
  %165 = getelementptr double, ptr %4, i64 9
  store double %162, ptr %165, align 8, !tbaa !48
  %166 = getelementptr double, ptr %4, i64 10
  store double %162, ptr %166, align 8, !tbaa !48
  %167 = fadd double %136, 0.000000e+00
  %168 = tail call double @llvm.fmuladd.f64(double %167, double 4.500000e+00, double 3.000000e+00)
  %169 = tail call double @llvm.fmuladd.f64(double %167, double %168, double 1.000000e+00)
  %170 = fsub double %169, %138
  %171 = fmul double %170, %161
  %172 = getelementptr double, ptr %4, i64 11
  store double %171, ptr %172, align 8, !tbaa !48
  %173 = fsub double 0.000000e+00, %136
  %174 = tail call double @llvm.fmuladd.f64(double %173, double 4.500000e+00, double 3.000000e+00)
  %175 = tail call double @llvm.fmuladd.f64(double %173, double %174, double 1.000000e+00)
  %176 = fsub double %175, %138
  %177 = fmul double %176, %161
  %178 = getelementptr double, ptr %4, i64 12
  store double %177, ptr %178, align 8, !tbaa !48
  %179 = fmul double %153, %161
  %180 = getelementptr double, ptr %4, i64 13
  store double %179, ptr %180, align 8, !tbaa !48
  %181 = fneg double %136
  %182 = tail call double @llvm.fmuladd.f64(double %181, double 4.500000e+00, double 3.000000e+00)
  %183 = tail call double @llvm.fmuladd.f64(double %181, double %182, double 1.000000e+00)
  %184 = fsub double %183, %138
  %185 = fmul double %184, %161
  %186 = getelementptr double, ptr %4, i64 14
  store double %185, ptr %186, align 8, !tbaa !48
  %187 = getelementptr double, ptr %4, i64 15
  store double %171, ptr %187, align 8, !tbaa !48
  %188 = getelementptr double, ptr %4, i64 16
  store double %177, ptr %188, align 8, !tbaa !48
  %189 = getelementptr double, ptr %4, i64 17
  store double %179, ptr %189, align 8, !tbaa !48
  %190 = getelementptr double, ptr %4, i64 18
  store double %185, ptr %190, align 8, !tbaa !48
  %191 = add nuw nsw i64 %3, 20
  %192 = icmp ult i64 %3, 199980
  br i1 %192, label %2, label %193, !llvm.loop !81

193:                                              ; preds = %2, %193
  %194 = phi i64 [ %487, %193 ], [ 25800000, %2 ]
  %195 = getelementptr double, ptr %0, i64 %194
  %196 = getelementptr double, ptr %195, i64 -200000
  %197 = load double, ptr %196, align 8, !tbaa !48
  %198 = getelementptr double, ptr %195, i64 -199999
  %199 = load double, ptr %198, align 8, !tbaa !48
  %200 = fadd double %197, %199
  %201 = getelementptr double, ptr %195, i64 -199998
  %202 = load double, ptr %201, align 8, !tbaa !48
  %203 = fadd double %200, %202
  %204 = getelementptr double, ptr %195, i64 -199997
  %205 = load double, ptr %204, align 8, !tbaa !48
  %206 = fadd double %203, %205
  %207 = getelementptr double, ptr %195, i64 -199996
  %208 = load double, ptr %207, align 8, !tbaa !48
  %209 = fadd double %206, %208
  %210 = getelementptr double, ptr %195, i64 -199995
  %211 = load double, ptr %210, align 8, !tbaa !48
  %212 = fadd double %209, %211
  %213 = getelementptr double, ptr %195, i64 -199994
  %214 = load double, ptr %213, align 8, !tbaa !48
  %215 = fadd double %212, %214
  %216 = getelementptr double, ptr %195, i64 -199993
  %217 = load double, ptr %216, align 8, !tbaa !48
  %218 = fadd double %215, %217
  %219 = getelementptr double, ptr %195, i64 -199992
  %220 = load double, ptr %219, align 8, !tbaa !48
  %221 = fadd double %218, %220
  %222 = getelementptr double, ptr %195, i64 -199991
  %223 = load double, ptr %222, align 8, !tbaa !48
  %224 = fadd double %221, %223
  %225 = getelementptr double, ptr %195, i64 -199990
  %226 = load double, ptr %225, align 8, !tbaa !48
  %227 = fadd double %224, %226
  %228 = getelementptr double, ptr %195, i64 -199989
  %229 = load double, ptr %228, align 8, !tbaa !48
  %230 = fadd double %227, %229
  %231 = getelementptr double, ptr %195, i64 -199988
  %232 = load double, ptr %231, align 8, !tbaa !48
  %233 = fadd double %230, %232
  %234 = getelementptr double, ptr %195, i64 -199987
  %235 = load double, ptr %234, align 8, !tbaa !48
  %236 = fadd double %233, %235
  %237 = getelementptr double, ptr %195, i64 -199986
  %238 = load double, ptr %237, align 8, !tbaa !48
  %239 = fadd double %236, %238
  %240 = getelementptr double, ptr %195, i64 -199985
  %241 = load double, ptr %240, align 8, !tbaa !48
  %242 = fadd double %239, %241
  %243 = getelementptr double, ptr %195, i64 -199984
  %244 = load double, ptr %243, align 8, !tbaa !48
  %245 = fadd double %242, %244
  %246 = getelementptr double, ptr %195, i64 -199983
  %247 = load double, ptr %246, align 8, !tbaa !48
  %248 = fadd double %245, %247
  %249 = getelementptr double, ptr %195, i64 -199982
  %250 = load double, ptr %249, align 8, !tbaa !48
  %251 = fadd double %248, %250
  %252 = fsub double %205, %208
  %253 = fadd double %252, %217
  %254 = fsub double %253, %220
  %255 = fadd double %254, %223
  %256 = fsub double %255, %226
  %257 = fadd double %256, %241
  %258 = fadd double %257, %244
  %259 = fsub double %258, %247
  %260 = fsub double %259, %250
  %261 = fsub double %199, %202
  %262 = fadd double %261, %217
  %263 = fadd double %262, %220
  %264 = fsub double %263, %223
  %265 = fsub double %264, %226
  %266 = fadd double %265, %229
  %267 = fadd double %266, %232
  %268 = fsub double %267, %235
  %269 = fsub double %268, %238
  %270 = fsub double %211, %214
  %271 = fadd double %270, %229
  %272 = fsub double %271, %232
  %273 = fadd double %272, %235
  %274 = fsub double %273, %238
  %275 = fadd double %274, %241
  %276 = fsub double %275, %244
  %277 = fadd double %276, %247
  %278 = fsub double %277, %250
  %279 = fdiv double %260, %251
  %280 = fdiv double %269, %251
  %281 = fdiv double %278, %251
  %282 = getelementptr double, ptr %195, i64 -400000
  %283 = load double, ptr %282, align 8, !tbaa !48
  %284 = getelementptr double, ptr %195, i64 -399999
  %285 = load double, ptr %284, align 8, !tbaa !48
  %286 = fadd double %283, %285
  %287 = getelementptr double, ptr %195, i64 -399998
  %288 = load double, ptr %287, align 8, !tbaa !48
  %289 = fadd double %286, %288
  %290 = getelementptr double, ptr %195, i64 -399997
  %291 = load double, ptr %290, align 8, !tbaa !48
  %292 = fadd double %289, %291
  %293 = getelementptr double, ptr %195, i64 -399996
  %294 = load double, ptr %293, align 8, !tbaa !48
  %295 = fadd double %292, %294
  %296 = getelementptr double, ptr %195, i64 -399995
  %297 = load double, ptr %296, align 8, !tbaa !48
  %298 = fadd double %295, %297
  %299 = getelementptr double, ptr %195, i64 -399994
  %300 = load double, ptr %299, align 8, !tbaa !48
  %301 = fadd double %298, %300
  %302 = getelementptr double, ptr %195, i64 -399993
  %303 = load double, ptr %302, align 8, !tbaa !48
  %304 = fadd double %301, %303
  %305 = getelementptr double, ptr %195, i64 -399992
  %306 = load double, ptr %305, align 8, !tbaa !48
  %307 = fadd double %304, %306
  %308 = getelementptr double, ptr %195, i64 -399991
  %309 = load double, ptr %308, align 8, !tbaa !48
  %310 = fadd double %307, %309
  %311 = getelementptr double, ptr %195, i64 -399990
  %312 = load double, ptr %311, align 8, !tbaa !48
  %313 = fadd double %310, %312
  %314 = getelementptr double, ptr %195, i64 -399989
  %315 = load double, ptr %314, align 8, !tbaa !48
  %316 = fadd double %313, %315
  %317 = getelementptr double, ptr %195, i64 -399988
  %318 = load double, ptr %317, align 8, !tbaa !48
  %319 = fadd double %316, %318
  %320 = getelementptr double, ptr %195, i64 -399987
  %321 = load double, ptr %320, align 8, !tbaa !48
  %322 = fadd double %319, %321
  %323 = getelementptr double, ptr %195, i64 -399986
  %324 = load double, ptr %323, align 8, !tbaa !48
  %325 = fadd double %322, %324
  %326 = getelementptr double, ptr %195, i64 -399985
  %327 = load double, ptr %326, align 8, !tbaa !48
  %328 = fadd double %325, %327
  %329 = getelementptr double, ptr %195, i64 -399984
  %330 = load double, ptr %329, align 8, !tbaa !48
  %331 = fadd double %328, %330
  %332 = getelementptr double, ptr %195, i64 -399983
  %333 = load double, ptr %332, align 8, !tbaa !48
  %334 = fadd double %331, %333
  %335 = getelementptr double, ptr %195, i64 -399982
  %336 = load double, ptr %335, align 8, !tbaa !48
  %337 = fadd double %334, %336
  %338 = fsub double %291, %294
  %339 = fadd double %338, %303
  %340 = fsub double %339, %306
  %341 = fadd double %340, %309
  %342 = fsub double %341, %312
  %343 = fadd double %342, %327
  %344 = fadd double %343, %330
  %345 = fsub double %344, %333
  %346 = fsub double %345, %336
  %347 = fsub double %285, %288
  %348 = fadd double %347, %303
  %349 = fadd double %348, %306
  %350 = fsub double %349, %309
  %351 = fsub double %350, %312
  %352 = fadd double %351, %315
  %353 = fadd double %352, %318
  %354 = fsub double %353, %321
  %355 = fsub double %354, %324
  %356 = fsub double %297, %300
  %357 = fadd double %356, %315
  %358 = fsub double %357, %318
  %359 = fadd double %358, %321
  %360 = fsub double %359, %324
  %361 = fadd double %360, %327
  %362 = fsub double %361, %330
  %363 = fadd double %362, %333
  %364 = fsub double %363, %336
  %365 = fneg double %346
  %366 = fdiv double %365, %337
  %367 = tail call double @llvm.fmuladd.f64(double %279, double 2.000000e+00, double %366)
  %368 = fneg double %355
  %369 = fdiv double %368, %337
  %370 = tail call double @llvm.fmuladd.f64(double %280, double 2.000000e+00, double %369)
  %371 = fneg double %364
  %372 = fdiv double %371, %337
  %373 = tail call double @llvm.fmuladd.f64(double %281, double 2.000000e+00, double %372)
  %374 = fmul double %370, %370
  %375 = tail call double @llvm.fmuladd.f64(double %367, double %367, double %374)
  %376 = tail call double @llvm.fmuladd.f64(double %373, double %373, double %375)
  %377 = fmul double %376, 1.500000e+00
  %378 = fsub double 1.000000e+00, %377
  %379 = fmul double %378, 0x3FD5555555555555
  store double %379, ptr %195, align 8, !tbaa !48
  %380 = tail call double @llvm.fmuladd.f64(double %370, double 4.500000e+00, double 3.000000e+00)
  %381 = tail call double @llvm.fmuladd.f64(double %370, double %380, double 1.000000e+00)
  %382 = fsub double %381, %377
  %383 = fmul double %382, 0x3FAC71C71C71C71C
  %384 = or disjoint i64 %194, 1
  %385 = getelementptr inbounds double, ptr %0, i64 %384
  store double %383, ptr %385, align 8, !tbaa !48
  %386 = tail call double @llvm.fmuladd.f64(double %370, double 4.500000e+00, double -3.000000e+00)
  %387 = tail call double @llvm.fmuladd.f64(double %370, double %386, double 1.000000e+00)
  %388 = fsub double %387, %377
  %389 = fmul double %388, 0x3FAC71C71C71C71C
  %390 = or disjoint i64 %194, 2
  %391 = getelementptr inbounds double, ptr %0, i64 %390
  store double %389, ptr %391, align 8, !tbaa !48
  %392 = tail call double @llvm.fmuladd.f64(double %367, double 4.500000e+00, double 3.000000e+00)
  %393 = tail call double @llvm.fmuladd.f64(double %367, double %392, double 1.000000e+00)
  %394 = fsub double %393, %377
  %395 = fmul double %394, 0x3FAC71C71C71C71C
  %396 = or disjoint i64 %194, 3
  %397 = getelementptr inbounds double, ptr %0, i64 %396
  store double %395, ptr %397, align 8, !tbaa !48
  %398 = tail call double @llvm.fmuladd.f64(double %367, double 4.500000e+00, double -3.000000e+00)
  %399 = tail call double @llvm.fmuladd.f64(double %367, double %398, double 1.000000e+00)
  %400 = fsub double %399, %377
  %401 = fmul double %400, 0x3FAC71C71C71C71C
  %402 = getelementptr double, ptr %195, i64 4
  store double %401, ptr %402, align 8, !tbaa !48
  %403 = tail call double @llvm.fmuladd.f64(double %373, double 4.500000e+00, double 3.000000e+00)
  %404 = tail call double @llvm.fmuladd.f64(double %373, double %403, double 1.000000e+00)
  %405 = fsub double %404, %377
  %406 = fmul double %405, 0x3FAC71C71C71C71C
  %407 = getelementptr double, ptr %195, i64 5
  store double %406, ptr %407, align 8, !tbaa !48
  %408 = tail call double @llvm.fmuladd.f64(double %373, double 4.500000e+00, double -3.000000e+00)
  %409 = tail call double @llvm.fmuladd.f64(double %373, double %408, double 1.000000e+00)
  %410 = fsub double %409, %377
  %411 = fmul double %410, 0x3FAC71C71C71C71C
  %412 = getelementptr double, ptr %195, i64 6
  store double %411, ptr %412, align 8, !tbaa !48
  %413 = fadd double %367, %370
  %414 = tail call double @llvm.fmuladd.f64(double %413, double 4.500000e+00, double 3.000000e+00)
  %415 = tail call double @llvm.fmuladd.f64(double %413, double %414, double 1.000000e+00)
  %416 = fsub double %415, %377
  %417 = fmul double %416, 0x3F9C71C71C71C71C
  %418 = getelementptr double, ptr %195, i64 7
  store double %417, ptr %418, align 8, !tbaa !48
  %419 = fneg double %367
  %420 = fsub double %370, %367
  %421 = tail call double @llvm.fmuladd.f64(double %420, double 4.500000e+00, double 3.000000e+00)
  %422 = tail call double @llvm.fmuladd.f64(double %420, double %421, double 1.000000e+00)
  %423 = fsub double %422, %377
  %424 = fmul double %423, 0x3F9C71C71C71C71C
  %425 = getelementptr double, ptr %195, i64 8
  store double %424, ptr %425, align 8, !tbaa !48
  %426 = fsub double %367, %370
  %427 = tail call double @llvm.fmuladd.f64(double %426, double 4.500000e+00, double 3.000000e+00)
  %428 = tail call double @llvm.fmuladd.f64(double %426, double %427, double 1.000000e+00)
  %429 = fsub double %428, %377
  %430 = fmul double %429, 0x3F9C71C71C71C71C
  %431 = getelementptr double, ptr %195, i64 9
  store double %430, ptr %431, align 8, !tbaa !48
  %432 = fsub double %419, %370
  %433 = tail call double @llvm.fmuladd.f64(double %432, double 4.500000e+00, double 3.000000e+00)
  %434 = tail call double @llvm.fmuladd.f64(double %432, double %433, double 1.000000e+00)
  %435 = fsub double %434, %377
  %436 = fmul double %435, 0x3F9C71C71C71C71C
  %437 = getelementptr double, ptr %195, i64 10
  store double %436, ptr %437, align 8, !tbaa !48
  %438 = fadd double %370, %373
  %439 = tail call double @llvm.fmuladd.f64(double %438, double 4.500000e+00, double 3.000000e+00)
  %440 = tail call double @llvm.fmuladd.f64(double %438, double %439, double 1.000000e+00)
  %441 = fsub double %440, %377
  %442 = fmul double %441, 0x3F9C71C71C71C71C
  %443 = getelementptr double, ptr %195, i64 11
  store double %442, ptr %443, align 8, !tbaa !48
  %444 = fsub double %370, %373
  %445 = tail call double @llvm.fmuladd.f64(double %444, double 4.500000e+00, double 3.000000e+00)
  %446 = tail call double @llvm.fmuladd.f64(double %444, double %445, double 1.000000e+00)
  %447 = fsub double %446, %377
  %448 = fmul double %447, 0x3F9C71C71C71C71C
  %449 = getelementptr double, ptr %195, i64 12
  store double %448, ptr %449, align 8, !tbaa !48
  %450 = fneg double %370
  %451 = fsub double %373, %370
  %452 = tail call double @llvm.fmuladd.f64(double %451, double 4.500000e+00, double 3.000000e+00)
  %453 = tail call double @llvm.fmuladd.f64(double %451, double %452, double 1.000000e+00)
  %454 = fsub double %453, %377
  %455 = fmul double %454, 0x3F9C71C71C71C71C
  %456 = getelementptr double, ptr %195, i64 13
  store double %455, ptr %456, align 8, !tbaa !48
  %457 = fsub double %450, %373
  %458 = tail call double @llvm.fmuladd.f64(double %457, double 4.500000e+00, double 3.000000e+00)
  %459 = tail call double @llvm.fmuladd.f64(double %457, double %458, double 1.000000e+00)
  %460 = fsub double %459, %377
  %461 = fmul double %460, 0x3F9C71C71C71C71C
  %462 = getelementptr double, ptr %195, i64 14
  store double %461, ptr %462, align 8, !tbaa !48
  %463 = fadd double %367, %373
  %464 = tail call double @llvm.fmuladd.f64(double %463, double 4.500000e+00, double 3.000000e+00)
  %465 = tail call double @llvm.fmuladd.f64(double %463, double %464, double 1.000000e+00)
  %466 = fsub double %465, %377
  %467 = fmul double %466, 0x3F9C71C71C71C71C
  %468 = getelementptr double, ptr %195, i64 15
  store double %467, ptr %468, align 8, !tbaa !48
  %469 = fsub double %367, %373
  %470 = tail call double @llvm.fmuladd.f64(double %469, double 4.500000e+00, double 3.000000e+00)
  %471 = tail call double @llvm.fmuladd.f64(double %469, double %470, double 1.000000e+00)
  %472 = fsub double %471, %377
  %473 = fmul double %472, 0x3F9C71C71C71C71C
  %474 = getelementptr double, ptr %195, i64 16
  store double %473, ptr %474, align 8, !tbaa !48
  %475 = fsub double %373, %367
  %476 = tail call double @llvm.fmuladd.f64(double %475, double 4.500000e+00, double 3.000000e+00)
  %477 = tail call double @llvm.fmuladd.f64(double %475, double %476, double 1.000000e+00)
  %478 = fsub double %477, %377
  %479 = fmul double %478, 0x3F9C71C71C71C71C
  %480 = getelementptr double, ptr %195, i64 17
  store double %479, ptr %480, align 8, !tbaa !48
  %481 = fsub double %419, %373
  %482 = tail call double @llvm.fmuladd.f64(double %481, double 4.500000e+00, double 3.000000e+00)
  %483 = tail call double @llvm.fmuladd.f64(double %481, double %482, double 1.000000e+00)
  %484 = fsub double %483, %377
  %485 = fmul double %484, 0x3F9C71C71C71C71C
  %486 = getelementptr double, ptr %195, i64 18
  store double %485, ptr %486, align 8, !tbaa !48
  %487 = add nuw nsw i64 %194, 20
  %488 = icmp ult i64 %194, 25999980
  br i1 %488, label %193, label %489, !llvm.loop !82

489:                                              ; preds = %193
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @LBM_showGridStatistics(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !83 {
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
  %13 = load double, ptr %12, align 8, !tbaa !48
  %14 = or disjoint i64 %3, 1
  %15 = getelementptr inbounds double, ptr %0, i64 %14
  %16 = load double, ptr %15, align 8, !tbaa !48
  %17 = fadd double %13, %16
  %18 = or disjoint i64 %3, 2
  %19 = getelementptr inbounds double, ptr %0, i64 %18
  %20 = load double, ptr %19, align 8, !tbaa !48
  %21 = fadd double %17, %20
  %22 = or disjoint i64 %3, 3
  %23 = getelementptr inbounds double, ptr %0, i64 %22
  %24 = load double, ptr %23, align 8, !tbaa !48
  %25 = fadd double %21, %24
  %26 = getelementptr double, ptr %12, i64 4
  %27 = load double, ptr %26, align 8, !tbaa !48
  %28 = fadd double %25, %27
  %29 = getelementptr double, ptr %12, i64 5
  %30 = load double, ptr %29, align 8, !tbaa !48
  %31 = fadd double %28, %30
  %32 = getelementptr double, ptr %12, i64 6
  %33 = load double, ptr %32, align 8, !tbaa !48
  %34 = fadd double %31, %33
  %35 = getelementptr double, ptr %12, i64 7
  %36 = load double, ptr %35, align 8, !tbaa !48
  %37 = fadd double %34, %36
  %38 = getelementptr double, ptr %12, i64 8
  %39 = load double, ptr %38, align 8, !tbaa !48
  %40 = fadd double %37, %39
  %41 = getelementptr double, ptr %12, i64 9
  %42 = load double, ptr %41, align 8, !tbaa !48
  %43 = fadd double %40, %42
  %44 = getelementptr double, ptr %12, i64 10
  %45 = load double, ptr %44, align 8, !tbaa !48
  %46 = fadd double %43, %45
  %47 = getelementptr double, ptr %12, i64 11
  %48 = load double, ptr %47, align 8, !tbaa !48
  %49 = fadd double %46, %48
  %50 = getelementptr double, ptr %12, i64 12
  %51 = load double, ptr %50, align 8, !tbaa !48
  %52 = fadd double %49, %51
  %53 = getelementptr double, ptr %12, i64 13
  %54 = load double, ptr %53, align 8, !tbaa !48
  %55 = fadd double %52, %54
  %56 = getelementptr double, ptr %12, i64 14
  %57 = load double, ptr %56, align 8, !tbaa !48
  %58 = fadd double %55, %57
  %59 = getelementptr double, ptr %12, i64 15
  %60 = load double, ptr %59, align 8, !tbaa !48
  %61 = fadd double %58, %60
  %62 = getelementptr double, ptr %12, i64 16
  %63 = load double, ptr %62, align 8, !tbaa !48
  %64 = fadd double %61, %63
  %65 = getelementptr double, ptr %12, i64 17
  %66 = load double, ptr %65, align 8, !tbaa !48
  %67 = fadd double %64, %66
  %68 = getelementptr double, ptr %12, i64 18
  %69 = load double, ptr %68, align 8, !tbaa !48
  %70 = fadd double %67, %69
  %71 = fcmp olt double %70, %7
  %72 = select i1 %71, double %70, double %7, !prof !84
  %73 = fcmp ogt double %70, %6
  %74 = select i1 %73, double %70, double %6, !prof !85
  %75 = fadd double %4, %70
  %76 = getelementptr double, ptr %12, i64 19
  %77 = load i32, ptr %76, align 4, !tbaa !50
  %78 = and i32 %77, 1
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %82, label %80, !prof !86

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
  %121 = select i1 %120, double %119, double %10, !prof !87
  %122 = fcmp ogt double %119, %9
  br i1 %122, label %123, label %124, !prof !88

123:                                              ; preds = %82
  br label %124

124:                                              ; preds = %80, %123, %82
  %125 = phi i32 [ %11, %80 ], [ %86, %123 ], [ %86, %82 ]
  %126 = phi double [ %10, %80 ], [ %121, %123 ], [ %121, %82 ]
  %127 = phi double [ %9, %80 ], [ %119, %123 ], [ %9, %82 ]
  %128 = phi i32 [ %8, %80 ], [ %87, %123 ], [ %87, %82 ]
  %129 = phi i32 [ %81, %80 ], [ %5, %123 ], [ %5, %82 ]
  %130 = add nuw nsw i64 %3, 20
  %131 = icmp ult i64 %3, 25999980
  br i1 %131, label %2, label %132, !prof !89, !llvm.loop !90

132:                                              ; preds = %124
  %133 = tail call double @sqrt(double noundef %126) #18
  %134 = tail call double @sqrt(double noundef %127) #18
  %135 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %129, i32 noundef %128, i32 noundef %125, double noundef %72, double noundef %74, double noundef %75, double noundef %133, double noundef %134)
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #13

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @LBM_storeVelocityField(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #14 !prof !72 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #18
  %7 = icmp eq i32 %2, 0
  %8 = select i1 %7, ptr @.str.4, ptr @.str.3
  %9 = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull %8)
  br label %10

10:                                               ; preds = %3, %129
  %11 = phi i64 [ 0, %3 ], [ %130, %129 ]
  %12 = mul nuw nsw i64 %11, 10000
  br label %13

13:                                               ; preds = %10, %126
  %14 = phi i64 [ 0, %10 ], [ %127, %126 ]
  %15 = mul nuw nsw i64 %14, 100
  %16 = add nuw nsw i64 %15, %12
  br label %17

17:                                               ; preds = %13, %123
  %18 = phi i64 [ 0, %13 ], [ %124, %123 ]
  %19 = add nuw nsw i64 %16, %18
  %20 = mul nuw nsw i64 %19, 20
  %21 = getelementptr inbounds double, ptr %0, i64 %20
  %22 = load double, ptr %21, align 8, !tbaa !48
  %23 = or disjoint i64 %20, 1
  %24 = getelementptr inbounds double, ptr %0, i64 %23
  %25 = load double, ptr %24, align 8, !tbaa !48
  %26 = fadd double %22, %25
  %27 = or disjoint i64 %20, 2
  %28 = getelementptr inbounds double, ptr %0, i64 %27
  %29 = load double, ptr %28, align 8, !tbaa !48
  %30 = fadd double %26, %29
  %31 = or disjoint i64 %20, 3
  %32 = getelementptr inbounds double, ptr %0, i64 %31
  %33 = load double, ptr %32, align 8, !tbaa !48
  %34 = fadd double %30, %33
  %35 = getelementptr double, ptr %21, i64 4
  %36 = load double, ptr %35, align 8, !tbaa !48
  %37 = fadd double %34, %36
  %38 = getelementptr double, ptr %21, i64 5
  %39 = load double, ptr %38, align 8, !tbaa !48
  %40 = fadd double %37, %39
  %41 = getelementptr double, ptr %21, i64 6
  %42 = load double, ptr %41, align 8, !tbaa !48
  %43 = fadd double %40, %42
  %44 = getelementptr double, ptr %21, i64 7
  %45 = load double, ptr %44, align 8, !tbaa !48
  %46 = fadd double %43, %45
  %47 = getelementptr double, ptr %21, i64 8
  %48 = load double, ptr %47, align 8, !tbaa !48
  %49 = fadd double %46, %48
  %50 = getelementptr double, ptr %21, i64 9
  %51 = load double, ptr %50, align 8, !tbaa !48
  %52 = fadd double %49, %51
  %53 = getelementptr double, ptr %21, i64 10
  %54 = load double, ptr %53, align 8, !tbaa !48
  %55 = fadd double %52, %54
  %56 = getelementptr double, ptr %21, i64 11
  %57 = load double, ptr %56, align 8, !tbaa !48
  %58 = fadd double %55, %57
  %59 = getelementptr double, ptr %21, i64 12
  %60 = load double, ptr %59, align 8, !tbaa !48
  %61 = fadd double %58, %60
  %62 = getelementptr double, ptr %21, i64 13
  %63 = load double, ptr %62, align 8, !tbaa !48
  %64 = fadd double %61, %63
  %65 = getelementptr double, ptr %21, i64 14
  %66 = load double, ptr %65, align 8, !tbaa !48
  %67 = fadd double %64, %66
  %68 = getelementptr double, ptr %21, i64 15
  %69 = load double, ptr %68, align 8, !tbaa !48
  %70 = fadd double %67, %69
  %71 = getelementptr double, ptr %21, i64 16
  %72 = load double, ptr %71, align 8, !tbaa !48
  %73 = fadd double %70, %72
  %74 = getelementptr double, ptr %21, i64 17
  %75 = load double, ptr %74, align 8, !tbaa !48
  %76 = fadd double %73, %75
  %77 = getelementptr double, ptr %21, i64 18
  %78 = load double, ptr %77, align 8, !tbaa !48
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
  store float %90, ptr %4, align 4, !tbaa !91
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
  store float %100, ptr %5, align 4, !tbaa !91
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
  store float %110, ptr %6, align 4, !tbaa !91
  %111 = fdiv float %90, %80
  store float %111, ptr %4, align 4, !tbaa !91
  %112 = fdiv float %100, %80
  store float %112, ptr %5, align 4, !tbaa !91
  %113 = fdiv float %110, %80
  store float %113, ptr %6, align 4, !tbaa !91
  br i1 %7, label %118, label %114

114:                                              ; preds = %17
  %115 = call i64 @fwrite(ptr noundef nonnull %4, i64 noundef 4, i64 noundef 1, ptr noundef %9)
  %116 = call i64 @fwrite(ptr noundef nonnull %5, i64 noundef 4, i64 noundef 1, ptr noundef %9)
  %117 = call i64 @fwrite(ptr noundef nonnull %6, i64 noundef 4, i64 noundef 1, ptr noundef %9)
  br label %123

118:                                              ; preds = %17
  %119 = fpext float %111 to double
  %120 = fpext float %112 to double
  %121 = fpext float %113 to double
  %122 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.5, double noundef %119, double noundef %120, double noundef %121)
  br label %123

123:                                              ; preds = %114, %118
  %124 = add nuw nsw i64 %18, 1
  %125 = icmp eq i64 %124, 100
  br i1 %125, label %126, label %17, !llvm.loop !93

126:                                              ; preds = %123
  %127 = add nuw nsw i64 %14, 1
  %128 = icmp eq i64 %127, 100
  br i1 %128, label %129, label %13, !llvm.loop !94

129:                                              ; preds = %126
  %130 = add nuw nsw i64 %11, 1
  %131 = icmp eq i64 %130, 130
  br i1 %131, label %132, label %10, !llvm.loop !95

132:                                              ; preds = %129
  %133 = tail call i32 @fclose(ptr noundef %9)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @LBM_compareVelocityField(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 !prof !72 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #18
  %7 = icmp eq i32 %2, 0
  %8 = select i1 %7, ptr @.str.6, ptr @.str.1
  %9 = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull %8)
  br label %10

10:                                               ; preds = %3, %142
  %11 = phi i64 [ 0, %3 ], [ %143, %142 ]
  %12 = phi float [ 0xC6293E5940000000, %3 ], [ %136, %142 ]
  %13 = mul nuw nsw i64 %11, 10000
  br label %14

14:                                               ; preds = %10, %139
  %15 = phi i64 [ 0, %10 ], [ %140, %139 ]
  %16 = phi float [ %12, %10 ], [ %136, %139 ]
  %17 = mul nuw nsw i64 %15, 100
  %18 = add nuw nsw i64 %17, %13
  br label %19

19:                                               ; preds = %14, %119
  %20 = phi i64 [ 0, %14 ], [ %137, %119 ]
  %21 = phi float [ %16, %14 ], [ %136, %119 ]
  %22 = add nuw nsw i64 %18, %20
  %23 = mul nuw nsw i64 %22, 20
  %24 = getelementptr inbounds double, ptr %0, i64 %23
  %25 = load double, ptr %24, align 8, !tbaa !48
  %26 = or disjoint i64 %23, 1
  %27 = getelementptr inbounds double, ptr %0, i64 %26
  %28 = load double, ptr %27, align 8, !tbaa !48
  %29 = fadd double %25, %28
  %30 = or disjoint i64 %23, 2
  %31 = getelementptr inbounds double, ptr %0, i64 %30
  %32 = load double, ptr %31, align 8, !tbaa !48
  %33 = fadd double %29, %32
  %34 = or disjoint i64 %23, 3
  %35 = getelementptr inbounds double, ptr %0, i64 %34
  %36 = load double, ptr %35, align 8, !tbaa !48
  %37 = fadd double %33, %36
  %38 = getelementptr double, ptr %24, i64 4
  %39 = load double, ptr %38, align 8, !tbaa !48
  %40 = fadd double %37, %39
  %41 = getelementptr double, ptr %24, i64 5
  %42 = load double, ptr %41, align 8, !tbaa !48
  %43 = fadd double %40, %42
  %44 = getelementptr double, ptr %24, i64 6
  %45 = load double, ptr %44, align 8, !tbaa !48
  %46 = fadd double %43, %45
  %47 = getelementptr double, ptr %24, i64 7
  %48 = load double, ptr %47, align 8, !tbaa !48
  %49 = fadd double %46, %48
  %50 = getelementptr double, ptr %24, i64 8
  %51 = load double, ptr %50, align 8, !tbaa !48
  %52 = fadd double %49, %51
  %53 = getelementptr double, ptr %24, i64 9
  %54 = load double, ptr %53, align 8, !tbaa !48
  %55 = fadd double %52, %54
  %56 = getelementptr double, ptr %24, i64 10
  %57 = load double, ptr %56, align 8, !tbaa !48
  %58 = fadd double %55, %57
  %59 = getelementptr double, ptr %24, i64 11
  %60 = load double, ptr %59, align 8, !tbaa !48
  %61 = fadd double %58, %60
  %62 = getelementptr double, ptr %24, i64 12
  %63 = load double, ptr %62, align 8, !tbaa !48
  %64 = fadd double %61, %63
  %65 = getelementptr double, ptr %24, i64 13
  %66 = load double, ptr %65, align 8, !tbaa !48
  %67 = fadd double %64, %66
  %68 = getelementptr double, ptr %24, i64 14
  %69 = load double, ptr %68, align 8, !tbaa !48
  %70 = fadd double %67, %69
  %71 = getelementptr double, ptr %24, i64 15
  %72 = load double, ptr %71, align 8, !tbaa !48
  %73 = fadd double %70, %72
  %74 = getelementptr double, ptr %24, i64 16
  %75 = load double, ptr %74, align 8, !tbaa !48
  %76 = fadd double %73, %75
  %77 = getelementptr double, ptr %24, i64 17
  %78 = load double, ptr %77, align 8, !tbaa !48
  %79 = fadd double %76, %78
  %80 = getelementptr double, ptr %24, i64 18
  %81 = load double, ptr %80, align 8, !tbaa !48
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
  br i1 %7, label %117, label %113

113:                                              ; preds = %19
  %114 = call i64 @fread(ptr noundef nonnull %4, i64 noundef 4, i64 noundef 1, ptr noundef %9)
  %115 = call i64 @fread(ptr noundef nonnull %5, i64 noundef 4, i64 noundef 1, ptr noundef %9)
  %116 = call i64 @fread(ptr noundef nonnull %6, i64 noundef 4, i64 noundef 1, ptr noundef %9)
  br label %119

117:                                              ; preds = %19
  %118 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %9, ptr noundef nonnull @.str.7, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #18
  br label %119

119:                                              ; preds = %117, %113
  %120 = load float, ptr %4, align 4, !tbaa !91
  %121 = fpext float %120 to double
  %122 = fsub double %110, %121
  %123 = fptrunc double %122 to float
  %124 = load float, ptr %5, align 4, !tbaa !91
  %125 = fpext float %124 to double
  %126 = fsub double %111, %125
  %127 = fptrunc double %126 to float
  %128 = load float, ptr %6, align 4, !tbaa !91
  %129 = fpext float %128 to double
  %130 = fsub double %112, %129
  %131 = fptrunc double %130 to float
  %132 = fmul float %127, %127
  %133 = call float @llvm.fmuladd.f32(float %123, float %123, float %132)
  %134 = call float @llvm.fmuladd.f32(float %131, float %131, float %133)
  %135 = fcmp ogt float %134, %21
  %136 = select i1 %135, float %134, float %21
  %137 = add nuw nsw i64 %20, 1
  %138 = icmp eq i64 %137, 100
  br i1 %138, label %139, label %19, !llvm.loop !96

139:                                              ; preds = %119
  %140 = add nuw nsw i64 %15, 1
  %141 = icmp eq i64 %140, 100
  br i1 %141, label %142, label %14, !llvm.loop !97

142:                                              ; preds = %139
  %143 = add nuw nsw i64 %11, 1
  %144 = icmp eq i64 %143, 130
  br i1 %144, label %145, label %10, !llvm.loop !98

145:                                              ; preds = %142
  %146 = fpext float %136 to double
  %147 = call double @sqrt(double noundef %146) #18
  %148 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %147)
  %149 = call i32 @fclose(ptr noundef %9)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  ret void
}

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #12

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #3

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { noreturn nounwind }
attributes #18 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!41}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 14491839199}
!8 = !{!"MaxCount", i64 3562383000}
!9 = !{!"MaxInternalCount", i64 3562383000}
!10 = !{!"MaxFunctionCount", i64 337617000}
!11 = !{!"NumCounts", i64 77}
!12 = !{!"NumFunctions", i64 18}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 3562383000, i32 1}
!18 = !{i32 100000, i64 3562383000, i32 1}
!19 = !{i32 200000, i64 3562383000, i32 1}
!20 = !{i32 300000, i64 3507087000, i32 4}
!21 = !{i32 400000, i64 3507087000, i32 4}
!22 = !{i32 500000, i64 3507087000, i32 4}
!23 = !{i32 600000, i64 3507087000, i32 4}
!24 = !{i32 700000, i64 3507087000, i32 4}
!25 = !{i32 800000, i64 3507087000, i32 4}
!26 = !{i32 900000, i64 3507087000, i32 4}
!27 = !{i32 950000, i64 3507087000, i32 4}
!28 = !{i32 990000, i64 337617000, i32 5}
!29 = !{i32 999000, i64 56998128, i32 6}
!30 = !{i32 999900, i64 2535456, i32 10}
!31 = !{i32 999990, i64 83702, i32 12}
!32 = !{i32 999999, i64 4095, i32 18}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40}
!35 = !{ptr @LBM_allocateGrid, ptr @malloc, i64 2}
!36 = !{ptr @LBM_freeGrid, ptr @free, i64 2}
!37 = !{ptr @LBM_loadObstacleFile, ptr @fopen, i64 2}
!38 = !{ptr @LBM_loadObstacleFile, ptr @fgetc, i64 2626260}
!39 = !{ptr @LBM_loadObstacleFile, ptr @fclose, i64 2}
!40 = !{ptr @LBM_showGridStatistics, ptr @printf, i64 48}
!41 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!42 = !{!"function_entry_count", i64 2}
!43 = !{!44, !44, i64 0}
!44 = !{!"any pointer", !45, i64 0}
!45 = !{!"omnipotent char", !46, i64 0}
!46 = !{!"Simple C/C++ TBAA"}
!47 = !{!"branch_weights", i32 0, i32 2}
!48 = !{!49, !49, i64 0}
!49 = !{!"double", !45, i64 0}
!50 = !{!51, !51, i64 0}
!51 = !{!"int", !45, i64 0}
!52 = !{!"branch_weights", i32 2679998, i32 2}
!53 = distinct !{!53, !54, !55}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{!"llvm.loop.unroll.disable"}
!56 = !{!"function_entry_count", i64 3000}
!57 = !{!"branch_weights", i32 2516298, i32 83702}
!58 = !{!"branch_weights", i32 26000, i32 2574000}
!59 = distinct !{!59, !54, !55}
!60 = !{!"branch_weights", i32 260, i32 25740}
!61 = distinct !{!61, !54, !55}
!62 = !{!"branch_weights", i32 2, i32 258}
!63 = distinct !{!63, !54, !55}
!64 = !{!"branch_weights", i32 144544, i32 2535456}
!65 = !{!"branch_weights", i32 36864, i32 2498592}
!66 = !{!"branch_weights", i32 26800, i32 2653200}
!67 = distinct !{!67, !54, !55}
!68 = !{!"branch_weights", i32 268, i32 26532}
!69 = distinct !{!69, !54, !55}
!70 = !{!"branch_weights", i32 2, i32 266}
!71 = distinct !{!71, !54, !55}
!72 = !{!"function_entry_count", i64 0}
!73 = distinct !{!73, !54, !55}
!74 = distinct !{!74, !54, !55}
!75 = distinct !{!75, !54, !55}
!76 = distinct !{!76, !54, !55}
!77 = !{!"branch_weights", i32 -732584296, i32 337617000}
!78 = !{!"branch_weights", i32 -787880296, i32 55296000}
!79 = !{!"branch_weights", i32 -394970296, i32 3000}
!80 = distinct !{!80, !54, !55}
!81 = distinct !{!81, !54, !55}
!82 = distinct !{!82, !54, !55}
!83 = !{!"function_entry_count", i64 48}
!84 = !{!"branch_weights", i32 4095, i32 62395905}
!85 = !{!"branch_weights", i32 5637, i32 62394363}
!86 = !{!"branch_weights", i32 56998128, i32 5401872}
!87 = !{!"branch_weights", i32 2144, i32 56995984}
!88 = !{!"branch_weights", i32 23320, i32 56974808}
!89 = !{!"branch_weights", i32 62399952, i32 48}
!90 = distinct !{!90, !54, !55}
!91 = !{!92, !92, i64 0}
!92 = !{!"float", !45, i64 0}
!93 = distinct !{!93, !54, !55}
!94 = distinct !{!94, !54, !55}
!95 = distinct !{!95, !54, !55}
!96 = distinct !{!96, !54, !55}
!97 = distinct !{!97, !54, !55}
!98 = distinct !{!98, !54, !55}
