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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @LBM_allocateGrid(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = tail call noalias dereferenceable_or_null(214400000) ptr @malloc(i64 noundef 214400000) #15
  store ptr %2, ptr %0, align 8, !tbaa !5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef 0x40698EF800000000) #16
  tail call void @exit(i32 noundef 1) #17
  unreachable

6:                                                ; preds = %1
  %7 = getelementptr inbounds double, ptr %2, i64 400000
  store ptr %7, ptr %0, align 8, !tbaa !5
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
  %2 = load ptr, ptr %0, align 8, !tbaa !5
  %3 = getelementptr inbounds double, ptr %2, i64 -400000
  tail call void @free(ptr noundef nonnull %3) #18
  store ptr null, ptr %0, align 8, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: write) uwtable
define dso_local void @LBM_initializeGrid(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  br label %2

2:                                                ; preds = %1, %2
  %3 = phi i64 [ -400000, %1 ], [ %16, %2 ]
  %4 = getelementptr inbounds double, ptr %0, i64 %3
  store <2 x double> <double 0x3FD5555555555555, double 0x3FAC71C71C71C71C>, ptr %4, align 8, !tbaa !9
  %5 = or disjoint i64 %3, 2
  %6 = getelementptr inbounds double, ptr %0, i64 %5
  store <2 x double> <double 0x3FAC71C71C71C71C, double 0x3FAC71C71C71C71C>, ptr %6, align 8, !tbaa !9
  %7 = getelementptr double, ptr %4, i64 4
  store <2 x double> <double 0x3FAC71C71C71C71C, double 0x3FAC71C71C71C71C>, ptr %7, align 8, !tbaa !9
  %8 = getelementptr double, ptr %4, i64 6
  store <2 x double> <double 0x3FAC71C71C71C71C, double 0x3F9C71C71C71C71C>, ptr %8, align 8, !tbaa !9
  %9 = getelementptr double, ptr %4, i64 8
  store <2 x double> <double 0x3F9C71C71C71C71C, double 0x3F9C71C71C71C71C>, ptr %9, align 8, !tbaa !9
  %10 = getelementptr double, ptr %4, i64 10
  store <2 x double> <double 0x3F9C71C71C71C71C, double 0x3F9C71C71C71C71C>, ptr %10, align 8, !tbaa !9
  %11 = getelementptr double, ptr %4, i64 12
  store <2 x double> <double 0x3F9C71C71C71C71C, double 0x3F9C71C71C71C71C>, ptr %11, align 8, !tbaa !9
  %12 = getelementptr double, ptr %4, i64 14
  store <2 x double> <double 0x3F9C71C71C71C71C, double 0x3F9C71C71C71C71C>, ptr %12, align 8, !tbaa !9
  %13 = getelementptr double, ptr %4, i64 16
  store <2 x double> <double 0x3F9C71C71C71C71C, double 0x3F9C71C71C71C71C>, ptr %13, align 8, !tbaa !9
  %14 = getelementptr double, ptr %4, i64 18
  store double 0x3F9C71C71C71C71C, ptr %14, align 8, !tbaa !9
  %15 = getelementptr double, ptr %4, i64 19
  store i32 0, ptr %15, align 4, !tbaa !11
  %16 = add nsw i64 %3, 20
  %17 = icmp slt i64 %3, 26399980
  br i1 %17, label %2, label %18, !llvm.loop !13

18:                                               ; preds = %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @LBM_swapGrids(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #8 {
  %3 = load ptr, ptr %0, align 8, !tbaa !5
  %4 = load ptr, ptr %1, align 8, !tbaa !5
  store ptr %4, ptr %0, align 8, !tbaa !5
  store ptr %3, ptr %1, align 8, !tbaa !5
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @LBM_loadObstacleFile(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 {
  %3 = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.1) #16
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
  %14 = tail call i32 @fgetc(ptr noundef %3) #16
  %15 = icmp eq i32 %14, 46
  br i1 %15, label %22, label %16

16:                                               ; preds = %12
  %17 = add nuw nsw i64 %11, %13
  %18 = mul nuw nsw i64 %17, 20
  %19 = getelementptr double, ptr %4, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !11
  %21 = or i32 %20, 1
  store i32 %21, ptr %19, align 4, !tbaa !11
  br label %22

22:                                               ; preds = %12, %16
  %23 = add nuw nsw i64 %13, 1
  %24 = icmp eq i64 %23, 100
  br i1 %24, label %25, label %12, !llvm.loop !15

25:                                               ; preds = %22
  %26 = tail call i32 @fgetc(ptr noundef %3) #16
  %27 = add nuw nsw i64 %9, 1
  %28 = icmp eq i64 %27, 100
  br i1 %28, label %29, label %8, !llvm.loop !16

29:                                               ; preds = %25
  %30 = tail call i32 @fgetc(ptr noundef %3) #16
  %31 = add nuw nsw i64 %6, 1
  %32 = icmp eq i64 %31, 130
  br i1 %32, label %33, label %5, !llvm.loop !17

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

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local void @LBM_initializeSpecialCellsForLDC(ptr nocapture noundef %0) local_unnamed_addr #10 {
  %2 = getelementptr double, ptr %0, i64 19
  br label %3

3:                                                ; preds = %1, %48
  %4 = phi i64 [ -2, %1 ], [ %49, %48 ]
  %5 = icmp eq i64 %4, 0
  %6 = icmp eq i64 %4, 129
  %7 = icmp eq i64 %4, 1
  %8 = icmp eq i64 %4, 128
  %9 = or i1 %7, %8
  %10 = mul nsw i64 %4, 10000
  br label %11

11:                                               ; preds = %3, %45
  %12 = phi i64 [ 0, %3 ], [ %46, %45 ]
  %13 = icmp eq i64 %12, 0
  %14 = icmp eq i64 %12, 99
  %15 = trunc i64 %12 to i32
  %16 = add i32 %15, -2
  %17 = icmp ult i32 %16, 96
  %18 = mul nuw nsw i64 %12, 100
  %19 = add nsw i64 %18, %10
  br label %20

20:                                               ; preds = %11, %42
  %21 = phi i64 [ 0, %11 ], [ %43, %42 ]
  %22 = icmp eq i64 %21, 0
  %23 = icmp eq i64 %21, 99
  %24 = or i1 %22, %23
  %25 = or i1 %13, %24
  %26 = or i1 %14, %25
  %27 = or i1 %5, %26
  %28 = or i1 %6, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %20
  %30 = trunc i64 %21 to i32
  %31 = add i32 %30, -2
  %32 = icmp ult i32 %31, 96
  %33 = and i1 %9, %32
  %34 = and i1 %17, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %29, %20
  %36 = phi i32 [ 1, %20 ], [ 2, %29 ]
  %37 = add nsw i64 %19, %21
  %38 = mul nsw i64 %37, 20
  %39 = getelementptr double, ptr %2, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !11
  %41 = or i32 %40, %36
  store i32 %41, ptr %39, align 4, !tbaa !11
  br label %42

42:                                               ; preds = %35, %29
  %43 = add nuw nsw i64 %21, 1
  %44 = icmp eq i64 %43, 100
  br i1 %44, label %45, label %20, !llvm.loop !18

45:                                               ; preds = %42
  %46 = add nuw nsw i64 %12, 1
  %47 = icmp eq i64 %46, 100
  br i1 %47, label %48, label %11, !llvm.loop !19

48:                                               ; preds = %45
  %49 = add nsw i64 %4, 1
  %50 = icmp eq i64 %49, 132
  br i1 %50, label %51, label %3, !llvm.loop !20

51:                                               ; preds = %48
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local void @LBM_initializeSpecialCellsForChannel(ptr nocapture noundef %0) local_unnamed_addr #10 {
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
  %23 = load i32, ptr %22, align 4, !tbaa !11
  %24 = or i32 %23, 1
  store i32 %24, ptr %22, align 4, !tbaa !11
  br label %25

25:                                               ; preds = %19, %12
  %26 = add nuw nsw i64 %13, 1
  %27 = icmp eq i64 %26, 100
  br i1 %27, label %28, label %12, !llvm.loop !21

28:                                               ; preds = %25
  %29 = add nuw nsw i64 %7, 1
  %30 = icmp eq i64 %29, 100
  br i1 %30, label %31, label %6, !llvm.loop !22

31:                                               ; preds = %28
  %32 = add nsw i64 %4, 1
  %33 = icmp eq i64 %32, 132
  br i1 %33, label %34, label %3, !llvm.loop !23

34:                                               ; preds = %31
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local void @LBM_performStreamCollideBGK(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #10 {
  br label %3

3:                                                ; preds = %2, %314
  %4 = phi i64 [ 0, %2 ], [ %315, %314 ]
  %5 = getelementptr double, ptr %0, i64 %4
  %6 = getelementptr double, ptr %5, i64 19
  %7 = load i32, ptr %6, align 4, !tbaa !11
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  %10 = load double, ptr %5, align 8, !tbaa !9
  br i1 %9, label %70, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds double, ptr %1, i64 %4
  store double %10, ptr %12, align 8, !tbaa !9
  %13 = or disjoint i64 %4, 1
  %14 = getelementptr inbounds double, ptr %0, i64 %13
  %15 = load double, ptr %14, align 8, !tbaa !9
  %16 = getelementptr double, ptr %12, i64 -1998
  store double %15, ptr %16, align 8, !tbaa !9
  %17 = or disjoint i64 %4, 2
  %18 = getelementptr inbounds double, ptr %0, i64 %17
  %19 = load double, ptr %18, align 8, !tbaa !9
  %20 = getelementptr double, ptr %12, i64 2001
  store double %19, ptr %20, align 8, !tbaa !9
  %21 = or disjoint i64 %4, 3
  %22 = getelementptr inbounds double, ptr %0, i64 %21
  %23 = load double, ptr %22, align 8, !tbaa !9
  %24 = getelementptr double, ptr %12, i64 -16
  store double %23, ptr %24, align 8, !tbaa !9
  %25 = getelementptr double, ptr %5, i64 4
  %26 = load double, ptr %25, align 8, !tbaa !9
  %27 = getelementptr double, ptr %12, i64 23
  store double %26, ptr %27, align 8, !tbaa !9
  %28 = getelementptr double, ptr %5, i64 5
  %29 = load double, ptr %28, align 8, !tbaa !9
  %30 = getelementptr double, ptr %12, i64 -199994
  store double %29, ptr %30, align 8, !tbaa !9
  %31 = getelementptr double, ptr %5, i64 6
  %32 = load double, ptr %31, align 8, !tbaa !9
  %33 = getelementptr double, ptr %12, i64 200005
  store double %32, ptr %33, align 8, !tbaa !9
  %34 = getelementptr double, ptr %5, i64 7
  %35 = load double, ptr %34, align 8, !tbaa !9
  %36 = getelementptr double, ptr %12, i64 -2010
  store double %35, ptr %36, align 8, !tbaa !9
  %37 = getelementptr double, ptr %5, i64 8
  %38 = load double, ptr %37, align 8, !tbaa !9
  %39 = getelementptr double, ptr %12, i64 -1971
  store double %38, ptr %39, align 8, !tbaa !9
  %40 = getelementptr double, ptr %5, i64 9
  %41 = load double, ptr %40, align 8, !tbaa !9
  %42 = getelementptr double, ptr %12, i64 1988
  store double %41, ptr %42, align 8, !tbaa !9
  %43 = getelementptr double, ptr %5, i64 10
  %44 = load double, ptr %43, align 8, !tbaa !9
  %45 = getelementptr double, ptr %12, i64 2027
  store double %44, ptr %45, align 8, !tbaa !9
  %46 = getelementptr double, ptr %5, i64 11
  %47 = load double, ptr %46, align 8, !tbaa !9
  %48 = getelementptr double, ptr %12, i64 -201986
  store double %47, ptr %48, align 8, !tbaa !9
  %49 = getelementptr double, ptr %5, i64 12
  %50 = load double, ptr %49, align 8, !tbaa !9
  %51 = getelementptr double, ptr %12, i64 198013
  store double %50, ptr %51, align 8, !tbaa !9
  %52 = getelementptr double, ptr %5, i64 13
  %53 = load double, ptr %52, align 8, !tbaa !9
  %54 = getelementptr double, ptr %12, i64 -197988
  store double %53, ptr %54, align 8, !tbaa !9
  %55 = getelementptr double, ptr %5, i64 14
  %56 = load double, ptr %55, align 8, !tbaa !9
  %57 = getelementptr double, ptr %12, i64 202011
  store double %56, ptr %57, align 8, !tbaa !9
  %58 = getelementptr double, ptr %5, i64 15
  %59 = load double, ptr %58, align 8, !tbaa !9
  %60 = getelementptr double, ptr %12, i64 -200002
  store double %59, ptr %60, align 8, !tbaa !9
  %61 = getelementptr double, ptr %5, i64 16
  %62 = load double, ptr %61, align 8, !tbaa !9
  %63 = getelementptr double, ptr %12, i64 199997
  store double %62, ptr %63, align 8, !tbaa !9
  %64 = getelementptr double, ptr %5, i64 17
  %65 = load double, ptr %64, align 8, !tbaa !9
  %66 = getelementptr double, ptr %12, i64 -199964
  store double %65, ptr %66, align 8, !tbaa !9
  %67 = getelementptr double, ptr %5, i64 18
  %68 = load double, ptr %67, align 8, !tbaa !9
  %69 = getelementptr double, ptr %12, i64 200035
  store double %68, ptr %69, align 8, !tbaa !9
  br label %314

70:                                               ; preds = %3
  %71 = or disjoint i64 %4, 1
  %72 = getelementptr inbounds double, ptr %0, i64 %71
  %73 = load double, ptr %72, align 8, !tbaa !9
  %74 = fadd double %10, %73
  %75 = or disjoint i64 %4, 2
  %76 = getelementptr inbounds double, ptr %0, i64 %75
  %77 = load double, ptr %76, align 8, !tbaa !9
  %78 = fadd double %74, %77
  %79 = or disjoint i64 %4, 3
  %80 = getelementptr inbounds double, ptr %0, i64 %79
  %81 = load double, ptr %80, align 8, !tbaa !9
  %82 = fadd double %78, %81
  %83 = getelementptr double, ptr %5, i64 4
  %84 = load double, ptr %83, align 8, !tbaa !9
  %85 = fadd double %82, %84
  %86 = getelementptr double, ptr %5, i64 5
  %87 = load double, ptr %86, align 8, !tbaa !9
  %88 = fadd double %85, %87
  %89 = getelementptr double, ptr %5, i64 6
  %90 = load double, ptr %89, align 8, !tbaa !9
  %91 = fadd double %88, %90
  %92 = getelementptr double, ptr %5, i64 7
  %93 = load double, ptr %92, align 8, !tbaa !9
  %94 = fadd double %91, %93
  %95 = getelementptr double, ptr %5, i64 8
  %96 = load double, ptr %95, align 8, !tbaa !9
  %97 = fadd double %94, %96
  %98 = getelementptr double, ptr %5, i64 9
  %99 = load double, ptr %98, align 8, !tbaa !9
  %100 = fadd double %97, %99
  %101 = getelementptr double, ptr %5, i64 10
  %102 = load double, ptr %101, align 8, !tbaa !9
  %103 = fadd double %100, %102
  %104 = getelementptr double, ptr %5, i64 11
  %105 = load double, ptr %104, align 8, !tbaa !9
  %106 = fadd double %103, %105
  %107 = getelementptr double, ptr %5, i64 12
  %108 = load double, ptr %107, align 8, !tbaa !9
  %109 = fadd double %106, %108
  %110 = getelementptr double, ptr %5, i64 13
  %111 = load double, ptr %110, align 8, !tbaa !9
  %112 = fadd double %109, %111
  %113 = getelementptr double, ptr %5, i64 14
  %114 = load double, ptr %113, align 8, !tbaa !9
  %115 = fadd double %112, %114
  %116 = getelementptr double, ptr %5, i64 15
  %117 = load double, ptr %116, align 8, !tbaa !9
  %118 = fadd double %115, %117
  %119 = getelementptr double, ptr %5, i64 16
  %120 = load double, ptr %119, align 8, !tbaa !9
  %121 = fadd double %118, %120
  %122 = getelementptr double, ptr %5, i64 17
  %123 = load double, ptr %122, align 8, !tbaa !9
  %124 = fadd double %121, %123
  %125 = getelementptr double, ptr %5, i64 18
  %126 = load double, ptr %125, align 8, !tbaa !9
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
  store double %170, ptr %171, align 8, !tbaa !9
  %172 = load double, ptr %72, align 8, !tbaa !9
  %173 = fmul double %127, 0x3FBBBBBBBBBBBBBB
  %174 = tail call double @llvm.fmuladd.f64(double %160, double 4.500000e+00, double 3.000000e+00)
  %175 = tail call double @llvm.fmuladd.f64(double %160, double %174, double 1.000000e+00)
  %176 = fsub double %175, %166
  %177 = fmul double %173, %176
  %178 = tail call double @llvm.fmuladd.f64(double %172, double 0xBFEE666666666666, double %177)
  %179 = getelementptr double, ptr %171, i64 2001
  store double %178, ptr %179, align 8, !tbaa !9
  %180 = load double, ptr %76, align 8, !tbaa !9
  %181 = tail call double @llvm.fmuladd.f64(double %160, double 4.500000e+00, double -3.000000e+00)
  %182 = tail call double @llvm.fmuladd.f64(double %160, double %181, double 1.000000e+00)
  %183 = fsub double %182, %166
  %184 = fmul double %173, %183
  %185 = tail call double @llvm.fmuladd.f64(double %180, double 0xBFEE666666666666, double %184)
  %186 = getelementptr double, ptr %171, i64 -1998
  store double %185, ptr %186, align 8, !tbaa !9
  %187 = load double, ptr %80, align 8, !tbaa !9
  %188 = tail call double @llvm.fmuladd.f64(double %162, double 4.500000e+00, double 3.000000e+00)
  %189 = tail call double @llvm.fmuladd.f64(double %162, double %188, double 1.000000e+00)
  %190 = fsub double %189, %166
  %191 = fmul double %173, %190
  %192 = tail call double @llvm.fmuladd.f64(double %187, double 0xBFEE666666666666, double %191)
  %193 = getelementptr double, ptr %171, i64 23
  store double %192, ptr %193, align 8, !tbaa !9
  %194 = load double, ptr %83, align 8, !tbaa !9
  %195 = tail call double @llvm.fmuladd.f64(double %162, double 4.500000e+00, double -3.000000e+00)
  %196 = tail call double @llvm.fmuladd.f64(double %162, double %195, double 1.000000e+00)
  %197 = fsub double %196, %166
  %198 = fmul double %173, %197
  %199 = tail call double @llvm.fmuladd.f64(double %194, double 0xBFEE666666666666, double %198)
  %200 = getelementptr double, ptr %171, i64 -16
  store double %199, ptr %200, align 8, !tbaa !9
  %201 = load double, ptr %86, align 8, !tbaa !9
  %202 = tail call double @llvm.fmuladd.f64(double %161, double 4.500000e+00, double 3.000000e+00)
  %203 = tail call double @llvm.fmuladd.f64(double %161, double %202, double 1.000000e+00)
  %204 = fsub double %203, %166
  %205 = fmul double %173, %204
  %206 = tail call double @llvm.fmuladd.f64(double %201, double 0xBFEE666666666666, double %205)
  %207 = getelementptr double, ptr %171, i64 200005
  store double %206, ptr %207, align 8, !tbaa !9
  %208 = load double, ptr %89, align 8, !tbaa !9
  %209 = tail call double @llvm.fmuladd.f64(double %161, double 4.500000e+00, double -3.000000e+00)
  %210 = tail call double @llvm.fmuladd.f64(double %161, double %209, double 1.000000e+00)
  %211 = fsub double %210, %166
  %212 = fmul double %173, %211
  %213 = tail call double @llvm.fmuladd.f64(double %208, double 0xBFEE666666666666, double %212)
  %214 = getelementptr double, ptr %171, i64 -199994
  store double %213, ptr %214, align 8, !tbaa !9
  %215 = load double, ptr %92, align 8, !tbaa !9
  %216 = fmul double %127, 0x3FABBBBBBBBBBBBB
  %217 = fadd double %162, %160
  %218 = tail call double @llvm.fmuladd.f64(double %217, double 4.500000e+00, double 3.000000e+00)
  %219 = tail call double @llvm.fmuladd.f64(double %217, double %218, double 1.000000e+00)
  %220 = fsub double %219, %166
  %221 = fmul double %216, %220
  %222 = tail call double @llvm.fmuladd.f64(double %215, double 0xBFEE666666666666, double %221)
  %223 = getelementptr double, ptr %171, i64 2027
  store double %222, ptr %223, align 8, !tbaa !9
  %224 = load double, ptr %95, align 8, !tbaa !9
  %225 = fneg double %162
  %226 = fsub double %160, %162
  %227 = tail call double @llvm.fmuladd.f64(double %226, double 4.500000e+00, double 3.000000e+00)
  %228 = tail call double @llvm.fmuladd.f64(double %226, double %227, double 1.000000e+00)
  %229 = fsub double %228, %166
  %230 = fmul double %216, %229
  %231 = tail call double @llvm.fmuladd.f64(double %224, double 0xBFEE666666666666, double %230)
  %232 = getelementptr double, ptr %171, i64 1988
  store double %231, ptr %232, align 8, !tbaa !9
  %233 = load double, ptr %98, align 8, !tbaa !9
  %234 = fsub double %162, %160
  %235 = tail call double @llvm.fmuladd.f64(double %234, double 4.500000e+00, double 3.000000e+00)
  %236 = tail call double @llvm.fmuladd.f64(double %234, double %235, double 1.000000e+00)
  %237 = fsub double %236, %166
  %238 = fmul double %216, %237
  %239 = tail call double @llvm.fmuladd.f64(double %233, double 0xBFEE666666666666, double %238)
  %240 = getelementptr double, ptr %171, i64 -1971
  store double %239, ptr %240, align 8, !tbaa !9
  %241 = load double, ptr %101, align 8, !tbaa !9
  %242 = fsub double %225, %160
  %243 = tail call double @llvm.fmuladd.f64(double %242, double 4.500000e+00, double 3.000000e+00)
  %244 = tail call double @llvm.fmuladd.f64(double %242, double %243, double 1.000000e+00)
  %245 = fsub double %244, %166
  %246 = fmul double %216, %245
  %247 = tail call double @llvm.fmuladd.f64(double %241, double 0xBFEE666666666666, double %246)
  %248 = getelementptr double, ptr %171, i64 -2010
  store double %247, ptr %248, align 8, !tbaa !9
  %249 = load double, ptr %104, align 8, !tbaa !9
  %250 = fadd double %160, %161
  %251 = tail call double @llvm.fmuladd.f64(double %250, double 4.500000e+00, double 3.000000e+00)
  %252 = tail call double @llvm.fmuladd.f64(double %250, double %251, double 1.000000e+00)
  %253 = fsub double %252, %166
  %254 = fmul double %216, %253
  %255 = tail call double @llvm.fmuladd.f64(double %249, double 0xBFEE666666666666, double %254)
  %256 = getelementptr double, ptr %171, i64 202011
  store double %255, ptr %256, align 8, !tbaa !9
  %257 = load double, ptr %107, align 8, !tbaa !9
  %258 = fsub double %160, %161
  %259 = tail call double @llvm.fmuladd.f64(double %258, double 4.500000e+00, double 3.000000e+00)
  %260 = tail call double @llvm.fmuladd.f64(double %258, double %259, double 1.000000e+00)
  %261 = fsub double %260, %166
  %262 = fmul double %216, %261
  %263 = tail call double @llvm.fmuladd.f64(double %257, double 0xBFEE666666666666, double %262)
  %264 = getelementptr double, ptr %171, i64 -197988
  store double %263, ptr %264, align 8, !tbaa !9
  %265 = load double, ptr %110, align 8, !tbaa !9
  %266 = fneg double %160
  %267 = fsub double %161, %160
  %268 = tail call double @llvm.fmuladd.f64(double %267, double 4.500000e+00, double 3.000000e+00)
  %269 = tail call double @llvm.fmuladd.f64(double %267, double %268, double 1.000000e+00)
  %270 = fsub double %269, %166
  %271 = fmul double %216, %270
  %272 = tail call double @llvm.fmuladd.f64(double %265, double 0xBFEE666666666666, double %271)
  %273 = getelementptr double, ptr %171, i64 198013
  store double %272, ptr %273, align 8, !tbaa !9
  %274 = load double, ptr %113, align 8, !tbaa !9
  %275 = fsub double %266, %161
  %276 = tail call double @llvm.fmuladd.f64(double %275, double 4.500000e+00, double 3.000000e+00)
  %277 = tail call double @llvm.fmuladd.f64(double %275, double %276, double 1.000000e+00)
  %278 = fsub double %277, %166
  %279 = fmul double %216, %278
  %280 = tail call double @llvm.fmuladd.f64(double %274, double 0xBFEE666666666666, double %279)
  %281 = getelementptr double, ptr %171, i64 -201986
  store double %280, ptr %281, align 8, !tbaa !9
  %282 = load double, ptr %116, align 8, !tbaa !9
  %283 = fadd double %162, %161
  %284 = tail call double @llvm.fmuladd.f64(double %283, double 4.500000e+00, double 3.000000e+00)
  %285 = tail call double @llvm.fmuladd.f64(double %283, double %284, double 1.000000e+00)
  %286 = fsub double %285, %166
  %287 = fmul double %216, %286
  %288 = tail call double @llvm.fmuladd.f64(double %282, double 0xBFEE666666666666, double %287)
  %289 = getelementptr double, ptr %171, i64 200035
  store double %288, ptr %289, align 8, !tbaa !9
  %290 = load double, ptr %119, align 8, !tbaa !9
  %291 = fsub double %162, %161
  %292 = tail call double @llvm.fmuladd.f64(double %291, double 4.500000e+00, double 3.000000e+00)
  %293 = tail call double @llvm.fmuladd.f64(double %291, double %292, double 1.000000e+00)
  %294 = fsub double %293, %166
  %295 = fmul double %216, %294
  %296 = tail call double @llvm.fmuladd.f64(double %290, double 0xBFEE666666666666, double %295)
  %297 = getelementptr double, ptr %171, i64 -199964
  store double %296, ptr %297, align 8, !tbaa !9
  %298 = load double, ptr %122, align 8, !tbaa !9
  %299 = fsub double %161, %162
  %300 = tail call double @llvm.fmuladd.f64(double %299, double 4.500000e+00, double 3.000000e+00)
  %301 = tail call double @llvm.fmuladd.f64(double %299, double %300, double 1.000000e+00)
  %302 = fsub double %301, %166
  %303 = fmul double %216, %302
  %304 = tail call double @llvm.fmuladd.f64(double %298, double 0xBFEE666666666666, double %303)
  %305 = getelementptr double, ptr %171, i64 199997
  store double %304, ptr %305, align 8, !tbaa !9
  %306 = load double, ptr %125, align 8, !tbaa !9
  %307 = fsub double %225, %161
  %308 = tail call double @llvm.fmuladd.f64(double %307, double 4.500000e+00, double 3.000000e+00)
  %309 = tail call double @llvm.fmuladd.f64(double %307, double %308, double 1.000000e+00)
  %310 = fsub double %309, %166
  %311 = fmul double %216, %310
  %312 = tail call double @llvm.fmuladd.f64(double %306, double 0xBFEE666666666666, double %311)
  %313 = getelementptr double, ptr %171, i64 -200002
  store double %312, ptr %313, align 8, !tbaa !9
  br label %314

314:                                              ; preds = %70, %11
  %315 = add nuw nsw i64 %4, 20
  %316 = icmp ult i64 %4, 25999980
  br i1 %316, label %3, label %317, !llvm.loop !24

317:                                              ; preds = %314
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #11

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local void @LBM_performStreamCollideTRT(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #10 {
  br label %3

3:                                                ; preds = %2, %360
  %4 = phi i64 [ 0, %2 ], [ %361, %360 ]
  %5 = getelementptr double, ptr %0, i64 %4
  %6 = getelementptr double, ptr %5, i64 19
  %7 = load i32, ptr %6, align 4, !tbaa !11
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  %10 = load double, ptr %5, align 8, !tbaa !9
  br i1 %9, label %70, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds double, ptr %1, i64 %4
  store double %10, ptr %12, align 8, !tbaa !9
  %13 = or disjoint i64 %4, 1
  %14 = getelementptr inbounds double, ptr %0, i64 %13
  %15 = load double, ptr %14, align 8, !tbaa !9
  %16 = getelementptr double, ptr %12, i64 -1998
  store double %15, ptr %16, align 8, !tbaa !9
  %17 = or disjoint i64 %4, 2
  %18 = getelementptr inbounds double, ptr %0, i64 %17
  %19 = load double, ptr %18, align 8, !tbaa !9
  %20 = getelementptr double, ptr %12, i64 2001
  store double %19, ptr %20, align 8, !tbaa !9
  %21 = or disjoint i64 %4, 3
  %22 = getelementptr inbounds double, ptr %0, i64 %21
  %23 = load double, ptr %22, align 8, !tbaa !9
  %24 = getelementptr double, ptr %12, i64 -16
  store double %23, ptr %24, align 8, !tbaa !9
  %25 = getelementptr double, ptr %5, i64 4
  %26 = load double, ptr %25, align 8, !tbaa !9
  %27 = getelementptr double, ptr %12, i64 23
  store double %26, ptr %27, align 8, !tbaa !9
  %28 = getelementptr double, ptr %5, i64 5
  %29 = load double, ptr %28, align 8, !tbaa !9
  %30 = getelementptr double, ptr %12, i64 -199994
  store double %29, ptr %30, align 8, !tbaa !9
  %31 = getelementptr double, ptr %5, i64 6
  %32 = load double, ptr %31, align 8, !tbaa !9
  %33 = getelementptr double, ptr %12, i64 200005
  store double %32, ptr %33, align 8, !tbaa !9
  %34 = getelementptr double, ptr %5, i64 7
  %35 = load double, ptr %34, align 8, !tbaa !9
  %36 = getelementptr double, ptr %12, i64 -2010
  store double %35, ptr %36, align 8, !tbaa !9
  %37 = getelementptr double, ptr %5, i64 8
  %38 = load double, ptr %37, align 8, !tbaa !9
  %39 = getelementptr double, ptr %12, i64 -1971
  store double %38, ptr %39, align 8, !tbaa !9
  %40 = getelementptr double, ptr %5, i64 9
  %41 = load double, ptr %40, align 8, !tbaa !9
  %42 = getelementptr double, ptr %12, i64 1988
  store double %41, ptr %42, align 8, !tbaa !9
  %43 = getelementptr double, ptr %5, i64 10
  %44 = load double, ptr %43, align 8, !tbaa !9
  %45 = getelementptr double, ptr %12, i64 2027
  store double %44, ptr %45, align 8, !tbaa !9
  %46 = getelementptr double, ptr %5, i64 11
  %47 = load double, ptr %46, align 8, !tbaa !9
  %48 = getelementptr double, ptr %12, i64 -201986
  store double %47, ptr %48, align 8, !tbaa !9
  %49 = getelementptr double, ptr %5, i64 12
  %50 = load double, ptr %49, align 8, !tbaa !9
  %51 = getelementptr double, ptr %12, i64 198013
  store double %50, ptr %51, align 8, !tbaa !9
  %52 = getelementptr double, ptr %5, i64 13
  %53 = load double, ptr %52, align 8, !tbaa !9
  %54 = getelementptr double, ptr %12, i64 -197988
  store double %53, ptr %54, align 8, !tbaa !9
  %55 = getelementptr double, ptr %5, i64 14
  %56 = load double, ptr %55, align 8, !tbaa !9
  %57 = getelementptr double, ptr %12, i64 202011
  store double %56, ptr %57, align 8, !tbaa !9
  %58 = getelementptr double, ptr %5, i64 15
  %59 = load double, ptr %58, align 8, !tbaa !9
  %60 = getelementptr double, ptr %12, i64 -200002
  store double %59, ptr %60, align 8, !tbaa !9
  %61 = getelementptr double, ptr %5, i64 16
  %62 = load double, ptr %61, align 8, !tbaa !9
  %63 = getelementptr double, ptr %12, i64 199997
  store double %62, ptr %63, align 8, !tbaa !9
  %64 = getelementptr double, ptr %5, i64 17
  %65 = load double, ptr %64, align 8, !tbaa !9
  %66 = getelementptr double, ptr %12, i64 -199964
  store double %65, ptr %66, align 8, !tbaa !9
  %67 = getelementptr double, ptr %5, i64 18
  %68 = load double, ptr %67, align 8, !tbaa !9
  %69 = getelementptr double, ptr %12, i64 200035
  store double %68, ptr %69, align 8, !tbaa !9
  br label %360

70:                                               ; preds = %3
  %71 = or disjoint i64 %4, 1
  %72 = getelementptr inbounds double, ptr %0, i64 %71
  %73 = load double, ptr %72, align 8, !tbaa !9
  %74 = fadd double %10, %73
  %75 = or disjoint i64 %4, 2
  %76 = getelementptr inbounds double, ptr %0, i64 %75
  %77 = load double, ptr %76, align 8, !tbaa !9
  %78 = fadd double %74, %77
  %79 = or disjoint i64 %4, 3
  %80 = getelementptr inbounds double, ptr %0, i64 %79
  %81 = load double, ptr %80, align 8, !tbaa !9
  %82 = fadd double %78, %81
  %83 = getelementptr double, ptr %5, i64 4
  %84 = load double, ptr %83, align 8, !tbaa !9
  %85 = fadd double %82, %84
  %86 = getelementptr double, ptr %5, i64 5
  %87 = load double, ptr %86, align 8, !tbaa !9
  %88 = fadd double %85, %87
  %89 = getelementptr double, ptr %5, i64 6
  %90 = load double, ptr %89, align 8, !tbaa !9
  %91 = fadd double %88, %90
  %92 = getelementptr double, ptr %5, i64 7
  %93 = load double, ptr %92, align 8, !tbaa !9
  %94 = fadd double %91, %93
  %95 = getelementptr double, ptr %5, i64 8
  %96 = load double, ptr %95, align 8, !tbaa !9
  %97 = fadd double %94, %96
  %98 = getelementptr double, ptr %5, i64 9
  %99 = load double, ptr %98, align 8, !tbaa !9
  %100 = fadd double %97, %99
  %101 = getelementptr double, ptr %5, i64 10
  %102 = load double, ptr %101, align 8, !tbaa !9
  %103 = fadd double %100, %102
  %104 = getelementptr double, ptr %5, i64 11
  %105 = load double, ptr %104, align 8, !tbaa !9
  %106 = fadd double %103, %105
  %107 = getelementptr double, ptr %5, i64 12
  %108 = load double, ptr %107, align 8, !tbaa !9
  %109 = fadd double %106, %108
  %110 = getelementptr double, ptr %5, i64 13
  %111 = load double, ptr %110, align 8, !tbaa !9
  %112 = fadd double %109, %111
  %113 = getelementptr double, ptr %5, i64 14
  %114 = load double, ptr %113, align 8, !tbaa !9
  %115 = fadd double %112, %114
  %116 = getelementptr double, ptr %5, i64 15
  %117 = load double, ptr %116, align 8, !tbaa !9
  %118 = fadd double %115, %117
  %119 = getelementptr double, ptr %5, i64 16
  %120 = load double, ptr %119, align 8, !tbaa !9
  %121 = fadd double %118, %120
  %122 = getelementptr double, ptr %5, i64 17
  %123 = load double, ptr %122, align 8, !tbaa !9
  %124 = fadd double %121, %123
  %125 = getelementptr double, ptr %5, i64 18
  %126 = load double, ptr %125, align 8, !tbaa !9
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
  %160 = select i1 %159, double %157, double 0.000000e+00
  %161 = select i1 %159, double %156, double 2.000000e-03
  %162 = select i1 %159, double %155, double 5.000000e-03
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
  store double %259, ptr %260, align 8, !tbaa !9
  %261 = load double, ptr %72, align 8, !tbaa !9
  %262 = fsub double %226, %174
  %263 = tail call double @llvm.fmuladd.f64(double %262, double -1.950000e+00, double %261)
  %264 = fsub double %243, %215
  %265 = tail call double @llvm.fmuladd.f64(double %264, double 0xBFB0ECF56BE69CA7, double %263)
  %266 = getelementptr double, ptr %260, i64 2001
  store double %265, ptr %266, align 8, !tbaa !9
  %267 = load double, ptr %76, align 8, !tbaa !9
  %268 = tail call double @llvm.fmuladd.f64(double %262, double -1.950000e+00, double %267)
  %269 = fsub double %215, %243
  %270 = tail call double @llvm.fmuladd.f64(double %269, double 0xBFB0ECF56BE69CA7, double %268)
  %271 = getelementptr double, ptr %260, i64 -1998
  store double %270, ptr %271, align 8, !tbaa !9
  %272 = load double, ptr %80, align 8, !tbaa !9
  %273 = fsub double %228, %178
  %274 = tail call double @llvm.fmuladd.f64(double %273, double -1.950000e+00, double %272)
  %275 = fsub double %244, %216
  %276 = tail call double @llvm.fmuladd.f64(double %275, double 0xBFB0ECF56BE69CA7, double %274)
  %277 = getelementptr double, ptr %260, i64 23
  store double %276, ptr %277, align 8, !tbaa !9
  %278 = load double, ptr %83, align 8, !tbaa !9
  %279 = tail call double @llvm.fmuladd.f64(double %273, double -1.950000e+00, double %278)
  %280 = fsub double %216, %244
  %281 = tail call double @llvm.fmuladd.f64(double %280, double 0xBFB0ECF56BE69CA7, double %279)
  %282 = getelementptr double, ptr %260, i64 -16
  store double %281, ptr %282, align 8, !tbaa !9
  %283 = load double, ptr %86, align 8, !tbaa !9
  %284 = fsub double %230, %182
  %285 = tail call double @llvm.fmuladd.f64(double %284, double -1.950000e+00, double %283)
  %286 = fsub double %245, %217
  %287 = tail call double @llvm.fmuladd.f64(double %286, double 0xBFB0ECF56BE69CA7, double %285)
  %288 = getelementptr double, ptr %260, i64 200005
  store double %287, ptr %288, align 8, !tbaa !9
  %289 = load double, ptr %89, align 8, !tbaa !9
  %290 = tail call double @llvm.fmuladd.f64(double %284, double -1.950000e+00, double %289)
  %291 = fsub double %217, %245
  %292 = tail call double @llvm.fmuladd.f64(double %291, double 0xBFB0ECF56BE69CA7, double %290)
  %293 = getelementptr double, ptr %260, i64 -199994
  store double %292, ptr %293, align 8, !tbaa !9
  %294 = load double, ptr %92, align 8, !tbaa !9
  %295 = fsub double %232, %188
  %296 = tail call double @llvm.fmuladd.f64(double %295, double -1.950000e+00, double %294)
  %297 = fsub double %247, %219
  %298 = tail call double @llvm.fmuladd.f64(double %297, double 0xBFB0ECF56BE69CA7, double %296)
  %299 = getelementptr double, ptr %260, i64 2027
  store double %298, ptr %299, align 8, !tbaa !9
  %300 = load double, ptr %95, align 8, !tbaa !9
  %301 = fsub double %234, %193
  %302 = tail call double @llvm.fmuladd.f64(double %301, double -1.950000e+00, double %300)
  %303 = fsub double %249, %220
  %304 = tail call double @llvm.fmuladd.f64(double %303, double 0xBFB0ECF56BE69CA7, double %302)
  %305 = getelementptr double, ptr %260, i64 1988
  store double %304, ptr %305, align 8, !tbaa !9
  %306 = load double, ptr %98, align 8, !tbaa !9
  %307 = tail call double @llvm.fmuladd.f64(double %301, double -1.950000e+00, double %306)
  %308 = fsub double %220, %249
  %309 = tail call double @llvm.fmuladd.f64(double %308, double 0xBFB0ECF56BE69CA7, double %307)
  %310 = getelementptr double, ptr %260, i64 -1971
  store double %309, ptr %310, align 8, !tbaa !9
  %311 = load double, ptr %101, align 8, !tbaa !9
  %312 = tail call double @llvm.fmuladd.f64(double %295, double -1.950000e+00, double %311)
  %313 = fsub double %219, %247
  %314 = tail call double @llvm.fmuladd.f64(double %313, double 0xBFB0ECF56BE69CA7, double %312)
  %315 = getelementptr double, ptr %260, i64 -2010
  store double %314, ptr %315, align 8, !tbaa !9
  %316 = load double, ptr %104, align 8, !tbaa !9
  %317 = fsub double %236, %198
  %318 = tail call double @llvm.fmuladd.f64(double %317, double -1.950000e+00, double %316)
  %319 = fsub double %251, %221
  %320 = tail call double @llvm.fmuladd.f64(double %319, double 0xBFB0ECF56BE69CA7, double %318)
  %321 = getelementptr double, ptr %260, i64 202011
  store double %320, ptr %321, align 8, !tbaa !9
  %322 = load double, ptr %107, align 8, !tbaa !9
  %323 = fsub double %238, %203
  %324 = tail call double @llvm.fmuladd.f64(double %323, double -1.950000e+00, double %322)
  %325 = fsub double %253, %222
  %326 = tail call double @llvm.fmuladd.f64(double %325, double 0xBFB0ECF56BE69CA7, double %324)
  %327 = getelementptr double, ptr %260, i64 -197988
  store double %326, ptr %327, align 8, !tbaa !9
  %328 = load double, ptr %110, align 8, !tbaa !9
  %329 = tail call double @llvm.fmuladd.f64(double %323, double -1.950000e+00, double %328)
  %330 = fsub double %222, %253
  %331 = tail call double @llvm.fmuladd.f64(double %330, double 0xBFB0ECF56BE69CA7, double %329)
  %332 = getelementptr double, ptr %260, i64 198013
  store double %331, ptr %332, align 8, !tbaa !9
  %333 = load double, ptr %113, align 8, !tbaa !9
  %334 = tail call double @llvm.fmuladd.f64(double %317, double -1.950000e+00, double %333)
  %335 = fsub double %221, %251
  %336 = tail call double @llvm.fmuladd.f64(double %335, double 0xBFB0ECF56BE69CA7, double %334)
  %337 = getelementptr double, ptr %260, i64 -201986
  store double %336, ptr %337, align 8, !tbaa !9
  %338 = load double, ptr %116, align 8, !tbaa !9
  %339 = fsub double %240, %208
  %340 = tail call double @llvm.fmuladd.f64(double %339, double -1.950000e+00, double %338)
  %341 = fsub double %255, %223
  %342 = tail call double @llvm.fmuladd.f64(double %341, double 0xBFB0ECF56BE69CA7, double %340)
  %343 = getelementptr double, ptr %260, i64 200035
  store double %342, ptr %343, align 8, !tbaa !9
  %344 = load double, ptr %119, align 8, !tbaa !9
  %345 = fsub double %242, %213
  %346 = tail call double @llvm.fmuladd.f64(double %345, double -1.950000e+00, double %344)
  %347 = fsub double %257, %224
  %348 = tail call double @llvm.fmuladd.f64(double %347, double 0xBFB0ECF56BE69CA7, double %346)
  %349 = getelementptr double, ptr %260, i64 -199964
  store double %348, ptr %349, align 8, !tbaa !9
  %350 = load double, ptr %122, align 8, !tbaa !9
  %351 = tail call double @llvm.fmuladd.f64(double %345, double -1.950000e+00, double %350)
  %352 = fsub double %224, %257
  %353 = tail call double @llvm.fmuladd.f64(double %352, double 0xBFB0ECF56BE69CA7, double %351)
  %354 = getelementptr double, ptr %260, i64 199997
  store double %353, ptr %354, align 8, !tbaa !9
  %355 = load double, ptr %125, align 8, !tbaa !9
  %356 = tail call double @llvm.fmuladd.f64(double %339, double -1.950000e+00, double %355)
  %357 = fsub double %223, %255
  %358 = tail call double @llvm.fmuladd.f64(double %357, double 0xBFB0ECF56BE69CA7, double %356)
  %359 = getelementptr double, ptr %260, i64 -200002
  store double %358, ptr %359, align 8, !tbaa !9
  br label %360

360:                                              ; preds = %70, %11
  %361 = add nuw nsw i64 %4, 20
  %362 = icmp ult i64 %4, 25999980
  br i1 %362, label %3, label %363, !llvm.loop !25

363:                                              ; preds = %360
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local void @LBM_handleInOutFlow(ptr noundef %0) local_unnamed_addr #10 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i64 [ 0, %1 ], [ %381, %2 ]
  %4 = phi <2 x i32> [ <i32 0, i32 20>, %1 ], [ %382, %2 ]
  %5 = phi <2 x i32> [ <i32 0, i32 20>, %1 ], [ %383, %2 ]
  %6 = mul i64 %3, 20
  %7 = add i64 %6, 20
  %8 = getelementptr double, ptr %0, i64 %6
  %9 = getelementptr double, ptr %0, i64 %7
  %10 = getelementptr double, ptr %8, i64 200000
  %11 = getelementptr double, ptr %9, i64 200000
  %12 = load double, ptr %10, align 8, !tbaa !9
  %13 = load double, ptr %11, align 8, !tbaa !9
  %14 = insertelement <2 x double> poison, double %12, i64 0
  %15 = insertelement <2 x double> %14, double %13, i64 1
  %16 = getelementptr double, ptr %8, i64 200001
  %17 = getelementptr double, ptr %9, i64 200001
  %18 = load double, ptr %16, align 8, !tbaa !9
  %19 = load double, ptr %17, align 8, !tbaa !9
  %20 = insertelement <2 x double> poison, double %18, i64 0
  %21 = insertelement <2 x double> %20, double %19, i64 1
  %22 = fadd <2 x double> %15, %21
  %23 = getelementptr double, ptr %8, i64 200002
  %24 = getelementptr double, ptr %9, i64 200002
  %25 = load double, ptr %23, align 8, !tbaa !9
  %26 = load double, ptr %24, align 8, !tbaa !9
  %27 = insertelement <2 x double> poison, double %25, i64 0
  %28 = insertelement <2 x double> %27, double %26, i64 1
  %29 = fadd <2 x double> %22, %28
  %30 = getelementptr double, ptr %8, i64 200003
  %31 = getelementptr double, ptr %9, i64 200003
  %32 = load double, ptr %30, align 8, !tbaa !9
  %33 = load double, ptr %31, align 8, !tbaa !9
  %34 = insertelement <2 x double> poison, double %32, i64 0
  %35 = insertelement <2 x double> %34, double %33, i64 1
  %36 = fadd <2 x double> %29, %35
  %37 = getelementptr double, ptr %8, i64 200004
  %38 = getelementptr double, ptr %9, i64 200004
  %39 = load double, ptr %37, align 8, !tbaa !9
  %40 = load double, ptr %38, align 8, !tbaa !9
  %41 = insertelement <2 x double> poison, double %39, i64 0
  %42 = insertelement <2 x double> %41, double %40, i64 1
  %43 = fadd <2 x double> %36, %42
  %44 = getelementptr double, ptr %8, i64 200005
  %45 = getelementptr double, ptr %9, i64 200005
  %46 = load double, ptr %44, align 8, !tbaa !9
  %47 = load double, ptr %45, align 8, !tbaa !9
  %48 = insertelement <2 x double> poison, double %46, i64 0
  %49 = insertelement <2 x double> %48, double %47, i64 1
  %50 = fadd <2 x double> %43, %49
  %51 = getelementptr double, ptr %8, i64 200006
  %52 = getelementptr double, ptr %9, i64 200006
  %53 = load double, ptr %51, align 8, !tbaa !9
  %54 = load double, ptr %52, align 8, !tbaa !9
  %55 = insertelement <2 x double> poison, double %53, i64 0
  %56 = insertelement <2 x double> %55, double %54, i64 1
  %57 = fadd <2 x double> %50, %56
  %58 = getelementptr double, ptr %8, i64 200007
  %59 = getelementptr double, ptr %9, i64 200007
  %60 = load double, ptr %58, align 8, !tbaa !9
  %61 = load double, ptr %59, align 8, !tbaa !9
  %62 = insertelement <2 x double> poison, double %60, i64 0
  %63 = insertelement <2 x double> %62, double %61, i64 1
  %64 = fadd <2 x double> %57, %63
  %65 = getelementptr double, ptr %8, i64 200008
  %66 = getelementptr double, ptr %9, i64 200008
  %67 = load double, ptr %65, align 8, !tbaa !9
  %68 = load double, ptr %66, align 8, !tbaa !9
  %69 = insertelement <2 x double> poison, double %67, i64 0
  %70 = insertelement <2 x double> %69, double %68, i64 1
  %71 = fadd <2 x double> %64, %70
  %72 = getelementptr double, ptr %8, i64 200009
  %73 = getelementptr double, ptr %9, i64 200009
  %74 = load double, ptr %72, align 8, !tbaa !9
  %75 = load double, ptr %73, align 8, !tbaa !9
  %76 = insertelement <2 x double> poison, double %74, i64 0
  %77 = insertelement <2 x double> %76, double %75, i64 1
  %78 = fadd <2 x double> %71, %77
  %79 = getelementptr double, ptr %8, i64 200010
  %80 = getelementptr double, ptr %9, i64 200010
  %81 = load double, ptr %79, align 8, !tbaa !9
  %82 = load double, ptr %80, align 8, !tbaa !9
  %83 = insertelement <2 x double> poison, double %81, i64 0
  %84 = insertelement <2 x double> %83, double %82, i64 1
  %85 = fadd <2 x double> %78, %84
  %86 = getelementptr double, ptr %8, i64 200011
  %87 = getelementptr double, ptr %9, i64 200011
  %88 = load double, ptr %86, align 8, !tbaa !9
  %89 = load double, ptr %87, align 8, !tbaa !9
  %90 = insertelement <2 x double> poison, double %88, i64 0
  %91 = insertelement <2 x double> %90, double %89, i64 1
  %92 = fadd <2 x double> %85, %91
  %93 = getelementptr double, ptr %8, i64 200012
  %94 = getelementptr double, ptr %9, i64 200012
  %95 = load double, ptr %93, align 8, !tbaa !9
  %96 = load double, ptr %94, align 8, !tbaa !9
  %97 = insertelement <2 x double> poison, double %95, i64 0
  %98 = insertelement <2 x double> %97, double %96, i64 1
  %99 = fadd <2 x double> %92, %98
  %100 = getelementptr double, ptr %8, i64 200013
  %101 = getelementptr double, ptr %9, i64 200013
  %102 = load double, ptr %100, align 8, !tbaa !9
  %103 = load double, ptr %101, align 8, !tbaa !9
  %104 = insertelement <2 x double> poison, double %102, i64 0
  %105 = insertelement <2 x double> %104, double %103, i64 1
  %106 = fadd <2 x double> %99, %105
  %107 = getelementptr double, ptr %8, i64 200014
  %108 = getelementptr double, ptr %9, i64 200014
  %109 = load double, ptr %107, align 8, !tbaa !9
  %110 = load double, ptr %108, align 8, !tbaa !9
  %111 = insertelement <2 x double> poison, double %109, i64 0
  %112 = insertelement <2 x double> %111, double %110, i64 1
  %113 = fadd <2 x double> %106, %112
  %114 = getelementptr double, ptr %8, i64 200015
  %115 = getelementptr double, ptr %9, i64 200015
  %116 = load double, ptr %114, align 8, !tbaa !9
  %117 = load double, ptr %115, align 8, !tbaa !9
  %118 = insertelement <2 x double> poison, double %116, i64 0
  %119 = insertelement <2 x double> %118, double %117, i64 1
  %120 = fadd <2 x double> %113, %119
  %121 = getelementptr double, ptr %8, i64 200016
  %122 = getelementptr double, ptr %9, i64 200016
  %123 = load double, ptr %121, align 8, !tbaa !9
  %124 = load double, ptr %122, align 8, !tbaa !9
  %125 = insertelement <2 x double> poison, double %123, i64 0
  %126 = insertelement <2 x double> %125, double %124, i64 1
  %127 = fadd <2 x double> %120, %126
  %128 = getelementptr double, ptr %8, i64 200017
  %129 = getelementptr double, ptr %9, i64 200017
  %130 = load double, ptr %128, align 8, !tbaa !9
  %131 = load double, ptr %129, align 8, !tbaa !9
  %132 = insertelement <2 x double> poison, double %130, i64 0
  %133 = insertelement <2 x double> %132, double %131, i64 1
  %134 = fadd <2 x double> %127, %133
  %135 = getelementptr double, ptr %8, i64 200018
  %136 = getelementptr double, ptr %9, i64 200018
  %137 = load double, ptr %135, align 8, !tbaa !9
  %138 = load double, ptr %136, align 8, !tbaa !9
  %139 = insertelement <2 x double> poison, double %137, i64 0
  %140 = insertelement <2 x double> %139, double %138, i64 1
  %141 = fadd <2 x double> %134, %140
  %142 = getelementptr double, ptr %8, i64 400000
  %143 = getelementptr double, ptr %9, i64 400000
  %144 = load double, ptr %142, align 8, !tbaa !9
  %145 = load double, ptr %143, align 8, !tbaa !9
  %146 = insertelement <2 x double> poison, double %144, i64 0
  %147 = insertelement <2 x double> %146, double %145, i64 1
  %148 = getelementptr double, ptr %8, i64 400001
  %149 = getelementptr double, ptr %9, i64 400001
  %150 = load double, ptr %148, align 8, !tbaa !9
  %151 = load double, ptr %149, align 8, !tbaa !9
  %152 = insertelement <2 x double> poison, double %150, i64 0
  %153 = insertelement <2 x double> %152, double %151, i64 1
  %154 = fadd <2 x double> %147, %153
  %155 = getelementptr double, ptr %8, i64 400002
  %156 = getelementptr double, ptr %9, i64 400002
  %157 = load double, ptr %155, align 8, !tbaa !9
  %158 = load double, ptr %156, align 8, !tbaa !9
  %159 = insertelement <2 x double> poison, double %157, i64 0
  %160 = insertelement <2 x double> %159, double %158, i64 1
  %161 = fadd <2 x double> %154, %160
  %162 = getelementptr double, ptr %8, i64 400003
  %163 = getelementptr double, ptr %9, i64 400003
  %164 = load double, ptr %162, align 8, !tbaa !9
  %165 = load double, ptr %163, align 8, !tbaa !9
  %166 = insertelement <2 x double> poison, double %164, i64 0
  %167 = insertelement <2 x double> %166, double %165, i64 1
  %168 = fadd <2 x double> %161, %167
  %169 = getelementptr double, ptr %8, i64 400004
  %170 = getelementptr double, ptr %9, i64 400004
  %171 = load double, ptr %169, align 8, !tbaa !9
  %172 = load double, ptr %170, align 8, !tbaa !9
  %173 = insertelement <2 x double> poison, double %171, i64 0
  %174 = insertelement <2 x double> %173, double %172, i64 1
  %175 = fadd <2 x double> %168, %174
  %176 = getelementptr double, ptr %8, i64 400005
  %177 = getelementptr double, ptr %9, i64 400005
  %178 = load double, ptr %176, align 8, !tbaa !9
  %179 = load double, ptr %177, align 8, !tbaa !9
  %180 = insertelement <2 x double> poison, double %178, i64 0
  %181 = insertelement <2 x double> %180, double %179, i64 1
  %182 = fadd <2 x double> %175, %181
  %183 = getelementptr double, ptr %8, i64 400006
  %184 = getelementptr double, ptr %9, i64 400006
  %185 = load double, ptr %183, align 8, !tbaa !9
  %186 = load double, ptr %184, align 8, !tbaa !9
  %187 = insertelement <2 x double> poison, double %185, i64 0
  %188 = insertelement <2 x double> %187, double %186, i64 1
  %189 = fadd <2 x double> %182, %188
  %190 = getelementptr double, ptr %8, i64 400007
  %191 = getelementptr double, ptr %9, i64 400007
  %192 = load double, ptr %190, align 8, !tbaa !9
  %193 = load double, ptr %191, align 8, !tbaa !9
  %194 = insertelement <2 x double> poison, double %192, i64 0
  %195 = insertelement <2 x double> %194, double %193, i64 1
  %196 = fadd <2 x double> %189, %195
  %197 = getelementptr double, ptr %8, i64 400008
  %198 = getelementptr double, ptr %9, i64 400008
  %199 = load double, ptr %197, align 8, !tbaa !9
  %200 = load double, ptr %198, align 8, !tbaa !9
  %201 = insertelement <2 x double> poison, double %199, i64 0
  %202 = insertelement <2 x double> %201, double %200, i64 1
  %203 = fadd <2 x double> %196, %202
  %204 = getelementptr double, ptr %8, i64 400009
  %205 = getelementptr double, ptr %9, i64 400009
  %206 = load double, ptr %204, align 8, !tbaa !9
  %207 = load double, ptr %205, align 8, !tbaa !9
  %208 = insertelement <2 x double> poison, double %206, i64 0
  %209 = insertelement <2 x double> %208, double %207, i64 1
  %210 = fadd <2 x double> %203, %209
  %211 = getelementptr double, ptr %8, i64 400010
  %212 = getelementptr double, ptr %9, i64 400010
  %213 = load double, ptr %211, align 8, !tbaa !9
  %214 = load double, ptr %212, align 8, !tbaa !9
  %215 = insertelement <2 x double> poison, double %213, i64 0
  %216 = insertelement <2 x double> %215, double %214, i64 1
  %217 = fadd <2 x double> %210, %216
  %218 = getelementptr double, ptr %8, i64 400011
  %219 = getelementptr double, ptr %9, i64 400011
  %220 = load double, ptr %218, align 8, !tbaa !9
  %221 = load double, ptr %219, align 8, !tbaa !9
  %222 = insertelement <2 x double> poison, double %220, i64 0
  %223 = insertelement <2 x double> %222, double %221, i64 1
  %224 = fadd <2 x double> %217, %223
  %225 = getelementptr double, ptr %8, i64 400012
  %226 = getelementptr double, ptr %9, i64 400012
  %227 = load double, ptr %225, align 8, !tbaa !9
  %228 = load double, ptr %226, align 8, !tbaa !9
  %229 = insertelement <2 x double> poison, double %227, i64 0
  %230 = insertelement <2 x double> %229, double %228, i64 1
  %231 = fadd <2 x double> %224, %230
  %232 = getelementptr double, ptr %8, i64 400013
  %233 = getelementptr double, ptr %9, i64 400013
  %234 = load double, ptr %232, align 8, !tbaa !9
  %235 = load double, ptr %233, align 8, !tbaa !9
  %236 = insertelement <2 x double> poison, double %234, i64 0
  %237 = insertelement <2 x double> %236, double %235, i64 1
  %238 = fadd <2 x double> %231, %237
  %239 = getelementptr double, ptr %8, i64 400014
  %240 = getelementptr double, ptr %9, i64 400014
  %241 = load double, ptr %239, align 8, !tbaa !9
  %242 = load double, ptr %240, align 8, !tbaa !9
  %243 = insertelement <2 x double> poison, double %241, i64 0
  %244 = insertelement <2 x double> %243, double %242, i64 1
  %245 = fadd <2 x double> %238, %244
  %246 = getelementptr double, ptr %8, i64 400015
  %247 = getelementptr double, ptr %9, i64 400015
  %248 = load double, ptr %246, align 8, !tbaa !9
  %249 = load double, ptr %247, align 8, !tbaa !9
  %250 = insertelement <2 x double> poison, double %248, i64 0
  %251 = insertelement <2 x double> %250, double %249, i64 1
  %252 = fadd <2 x double> %245, %251
  %253 = getelementptr double, ptr %8, i64 400016
  %254 = getelementptr double, ptr %9, i64 400016
  %255 = load double, ptr %253, align 8, !tbaa !9
  %256 = load double, ptr %254, align 8, !tbaa !9
  %257 = insertelement <2 x double> poison, double %255, i64 0
  %258 = insertelement <2 x double> %257, double %256, i64 1
  %259 = fadd <2 x double> %252, %258
  %260 = getelementptr double, ptr %8, i64 400017
  %261 = getelementptr double, ptr %9, i64 400017
  %262 = load double, ptr %260, align 8, !tbaa !9
  %263 = load double, ptr %261, align 8, !tbaa !9
  %264 = insertelement <2 x double> poison, double %262, i64 0
  %265 = insertelement <2 x double> %264, double %263, i64 1
  %266 = fadd <2 x double> %259, %265
  %267 = getelementptr double, ptr %8, i64 400018
  %268 = getelementptr double, ptr %9, i64 400018
  %269 = load double, ptr %267, align 8, !tbaa !9
  %270 = load double, ptr %268, align 8, !tbaa !9
  %271 = insertelement <2 x double> poison, double %269, i64 0
  %272 = insertelement <2 x double> %271, double %270, i64 1
  %273 = fadd <2 x double> %266, %272
  %274 = fneg <2 x double> %273
  %275 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %141, <2 x double> <double 2.000000e+00, double 2.000000e+00>, <2 x double> %274)
  %276 = udiv <2 x i32> %4, <i32 20, i32 20>
  %277 = trunc <2 x i32> %276 to <2 x i16>
  %278 = urem <2 x i16> %277, <i16 100, i16 100>
  %279 = uitofp <2 x i16> %278 to <2 x double>
  %280 = fdiv <2 x double> %279, <double 4.950000e+01, double 4.950000e+01>
  %281 = fadd <2 x double> %280, <double -1.000000e+00, double -1.000000e+00>
  %282 = udiv <2 x i32> %5, <i32 2000, i32 2000>
  %283 = sitofp <2 x i32> %282 to <2 x double>
  %284 = fdiv <2 x double> %283, <double 4.950000e+01, double 4.950000e+01>
  %285 = fadd <2 x double> %284, <double -1.000000e+00, double -1.000000e+00>
  %286 = fneg <2 x double> %281
  %287 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %286, <2 x double> %281, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %288 = fmul <2 x double> %287, <double 1.000000e-02, double 1.000000e-02>
  %289 = fneg <2 x double> %285
  %290 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %289, <2 x double> %285, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %291 = fmul <2 x double> %290, %288
  %292 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %291, <2 x double> %291, <2 x double> zeroinitializer)
  %293 = fmul <2 x double> %292, <double 1.500000e+00, double 1.500000e+00>
  %294 = fmul <2 x double> %275, <double 0x3FD5555555555555, double 0x3FD5555555555555>
  %295 = fsub <2 x double> <double 1.000000e+00, double 1.000000e+00>, %293
  %296 = fmul <2 x double> %295, %294
  %297 = extractelement <2 x double> %296, i64 0
  store double %297, ptr %8, align 8, !tbaa !9
  %298 = fmul <2 x double> %275, <double 0x3FAC71C71C71C71C, double 0x3FAC71C71C71C71C>
  %299 = fmul <2 x double> %295, %298
  %300 = or disjoint i64 %6, 1
  %301 = getelementptr inbounds double, ptr %0, i64 %300
  %302 = extractelement <2 x double> %299, i64 0
  store double %302, ptr %301, align 8, !tbaa !9
  %303 = extractelement <2 x double> %299, i64 1
  %304 = shufflevector <2 x double> %296, <2 x double> %299, <2 x i32> <i32 1, i32 3>
  store <2 x double> %304, ptr %9, align 8, !tbaa !9
  %305 = or disjoint i64 %6, 2
  %306 = or disjoint i64 %7, 2
  %307 = getelementptr inbounds double, ptr %0, i64 %305
  %308 = getelementptr inbounds double, ptr %0, i64 %306
  store double %302, ptr %307, align 8, !tbaa !9
  store double %303, ptr %308, align 8, !tbaa !9
  %309 = or disjoint i64 %6, 3
  %310 = or disjoint i64 %7, 3
  %311 = getelementptr inbounds double, ptr %0, i64 %309
  %312 = getelementptr inbounds double, ptr %0, i64 %310
  store double %302, ptr %311, align 8, !tbaa !9
  store double %303, ptr %312, align 8, !tbaa !9
  %313 = getelementptr double, ptr %8, i64 4
  %314 = getelementptr double, ptr %9, i64 4
  store double %302, ptr %313, align 8, !tbaa !9
  %315 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %291, <2 x double> <double 4.500000e+00, double 4.500000e+00>, <2 x double> <double 3.000000e+00, double 3.000000e+00>)
  %316 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %291, <2 x double> %315, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %317 = fsub <2 x double> %316, %293
  %318 = fmul <2 x double> %317, %298
  %319 = getelementptr double, ptr %8, i64 5
  %320 = extractelement <2 x double> %318, i64 0
  store double %320, ptr %319, align 8, !tbaa !9
  %321 = shufflevector <2 x double> %299, <2 x double> %318, <2 x i32> <i32 1, i32 3>
  store <2 x double> %321, ptr %314, align 8, !tbaa !9
  %322 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %291, <2 x double> <double 4.500000e+00, double 4.500000e+00>, <2 x double> <double -3.000000e+00, double -3.000000e+00>)
  %323 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %291, <2 x double> %322, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %324 = fsub <2 x double> %323, %293
  %325 = fmul <2 x double> %324, %298
  %326 = getelementptr double, ptr %8, i64 6
  %327 = getelementptr double, ptr %9, i64 6
  %328 = extractelement <2 x double> %325, i64 0
  store double %328, ptr %326, align 8, !tbaa !9
  %329 = fmul <2 x double> %275, <double 0x3F9C71C71C71C71C, double 0x3F9C71C71C71C71C>
  %330 = fmul <2 x double> %295, %329
  %331 = getelementptr double, ptr %8, i64 7
  %332 = extractelement <2 x double> %330, i64 0
  store double %332, ptr %331, align 8, !tbaa !9
  %333 = extractelement <2 x double> %330, i64 1
  %334 = shufflevector <2 x double> %325, <2 x double> %330, <2 x i32> <i32 1, i32 3>
  store <2 x double> %334, ptr %327, align 8, !tbaa !9
  %335 = getelementptr double, ptr %8, i64 8
  %336 = getelementptr double, ptr %9, i64 8
  store double %332, ptr %335, align 8, !tbaa !9
  store double %333, ptr %336, align 8, !tbaa !9
  %337 = getelementptr double, ptr %8, i64 9
  %338 = getelementptr double, ptr %9, i64 9
  store double %332, ptr %337, align 8, !tbaa !9
  store double %333, ptr %338, align 8, !tbaa !9
  %339 = getelementptr double, ptr %8, i64 10
  %340 = getelementptr double, ptr %9, i64 10
  store double %332, ptr %339, align 8, !tbaa !9
  store double %333, ptr %340, align 8, !tbaa !9
  %341 = fadd <2 x double> %291, zeroinitializer
  %342 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %341, <2 x double> <double 4.500000e+00, double 4.500000e+00>, <2 x double> <double 3.000000e+00, double 3.000000e+00>)
  %343 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %341, <2 x double> %342, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %344 = fsub <2 x double> %343, %293
  %345 = fmul <2 x double> %344, %329
  %346 = getelementptr double, ptr %8, i64 11
  %347 = getelementptr double, ptr %9, i64 11
  %348 = extractelement <2 x double> %345, i64 0
  store double %348, ptr %346, align 8, !tbaa !9
  %349 = extractelement <2 x double> %345, i64 1
  store double %349, ptr %347, align 8, !tbaa !9
  %350 = fsub <2 x double> zeroinitializer, %291
  %351 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %350, <2 x double> <double 4.500000e+00, double 4.500000e+00>, <2 x double> <double 3.000000e+00, double 3.000000e+00>)
  %352 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %350, <2 x double> %351, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %353 = fsub <2 x double> %352, %293
  %354 = fmul <2 x double> %353, %329
  %355 = getelementptr double, ptr %8, i64 12
  %356 = getelementptr double, ptr %9, i64 12
  %357 = extractelement <2 x double> %354, i64 0
  store double %357, ptr %355, align 8, !tbaa !9
  %358 = extractelement <2 x double> %354, i64 1
  store double %358, ptr %356, align 8, !tbaa !9
  %359 = fmul <2 x double> %317, %329
  %360 = getelementptr double, ptr %8, i64 13
  %361 = getelementptr double, ptr %9, i64 13
  %362 = extractelement <2 x double> %359, i64 0
  store double %362, ptr %360, align 8, !tbaa !9
  %363 = extractelement <2 x double> %359, i64 1
  store double %363, ptr %361, align 8, !tbaa !9
  %364 = fneg <2 x double> %291
  %365 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %364, <2 x double> <double 4.500000e+00, double 4.500000e+00>, <2 x double> <double 3.000000e+00, double 3.000000e+00>)
  %366 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %364, <2 x double> %365, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %367 = fsub <2 x double> %366, %293
  %368 = fmul <2 x double> %367, %329
  %369 = getelementptr double, ptr %8, i64 14
  %370 = getelementptr double, ptr %9, i64 14
  %371 = extractelement <2 x double> %368, i64 0
  store double %371, ptr %369, align 8, !tbaa !9
  %372 = extractelement <2 x double> %368, i64 1
  store double %372, ptr %370, align 8, !tbaa !9
  %373 = getelementptr double, ptr %8, i64 15
  %374 = getelementptr double, ptr %9, i64 15
  store double %348, ptr %373, align 8, !tbaa !9
  store double %349, ptr %374, align 8, !tbaa !9
  %375 = getelementptr double, ptr %8, i64 16
  %376 = getelementptr double, ptr %9, i64 16
  store double %357, ptr %375, align 8, !tbaa !9
  store double %358, ptr %376, align 8, !tbaa !9
  %377 = getelementptr double, ptr %8, i64 17
  %378 = getelementptr double, ptr %9, i64 17
  store double %362, ptr %377, align 8, !tbaa !9
  store double %363, ptr %378, align 8, !tbaa !9
  %379 = getelementptr double, ptr %8, i64 18
  %380 = getelementptr double, ptr %9, i64 18
  store double %371, ptr %379, align 8, !tbaa !9
  store double %372, ptr %380, align 8, !tbaa !9
  %381 = add nuw i64 %3, 2
  %382 = add <2 x i32> %4, <i32 40, i32 40>
  %383 = add <2 x i32> %5, <i32 40, i32 40>
  %384 = icmp eq i64 %381, 10000
  br i1 %384, label %385, label %2, !llvm.loop !26

385:                                              ; preds = %2, %385
  %386 = phi i64 [ %874, %385 ], [ 0, %2 ]
  %387 = mul i64 %386, 20
  %388 = add i64 %387, 25800000
  %389 = add i64 %387, 25800020
  %390 = getelementptr double, ptr %0, i64 %388
  %391 = getelementptr double, ptr %0, i64 %389
  %392 = getelementptr double, ptr %390, i64 -200000
  %393 = getelementptr double, ptr %391, i64 -200000
  %394 = load double, ptr %392, align 8, !tbaa !9
  %395 = load double, ptr %393, align 8, !tbaa !9
  %396 = insertelement <2 x double> poison, double %394, i64 0
  %397 = insertelement <2 x double> %396, double %395, i64 1
  %398 = getelementptr double, ptr %390, i64 -199999
  %399 = getelementptr double, ptr %391, i64 -199999
  %400 = load double, ptr %398, align 8, !tbaa !9
  %401 = load double, ptr %399, align 8, !tbaa !9
  %402 = insertelement <2 x double> poison, double %400, i64 0
  %403 = insertelement <2 x double> %402, double %401, i64 1
  %404 = fadd <2 x double> %397, %403
  %405 = getelementptr double, ptr %390, i64 -199998
  %406 = getelementptr double, ptr %391, i64 -199998
  %407 = load double, ptr %405, align 8, !tbaa !9
  %408 = load double, ptr %406, align 8, !tbaa !9
  %409 = insertelement <2 x double> poison, double %407, i64 0
  %410 = insertelement <2 x double> %409, double %408, i64 1
  %411 = fadd <2 x double> %404, %410
  %412 = getelementptr double, ptr %390, i64 -199997
  %413 = getelementptr double, ptr %391, i64 -199997
  %414 = load double, ptr %412, align 8, !tbaa !9
  %415 = load double, ptr %413, align 8, !tbaa !9
  %416 = insertelement <2 x double> poison, double %414, i64 0
  %417 = insertelement <2 x double> %416, double %415, i64 1
  %418 = fadd <2 x double> %411, %417
  %419 = getelementptr double, ptr %390, i64 -199996
  %420 = getelementptr double, ptr %391, i64 -199996
  %421 = load double, ptr %419, align 8, !tbaa !9
  %422 = load double, ptr %420, align 8, !tbaa !9
  %423 = insertelement <2 x double> poison, double %421, i64 0
  %424 = insertelement <2 x double> %423, double %422, i64 1
  %425 = fadd <2 x double> %418, %424
  %426 = getelementptr double, ptr %390, i64 -199995
  %427 = getelementptr double, ptr %391, i64 -199995
  %428 = load double, ptr %426, align 8, !tbaa !9
  %429 = load double, ptr %427, align 8, !tbaa !9
  %430 = insertelement <2 x double> poison, double %428, i64 0
  %431 = insertelement <2 x double> %430, double %429, i64 1
  %432 = fadd <2 x double> %425, %431
  %433 = getelementptr double, ptr %390, i64 -199994
  %434 = getelementptr double, ptr %391, i64 -199994
  %435 = load double, ptr %433, align 8, !tbaa !9
  %436 = load double, ptr %434, align 8, !tbaa !9
  %437 = insertelement <2 x double> poison, double %435, i64 0
  %438 = insertelement <2 x double> %437, double %436, i64 1
  %439 = fadd <2 x double> %432, %438
  %440 = getelementptr double, ptr %390, i64 -199993
  %441 = getelementptr double, ptr %391, i64 -199993
  %442 = load double, ptr %440, align 8, !tbaa !9
  %443 = load double, ptr %441, align 8, !tbaa !9
  %444 = insertelement <2 x double> poison, double %442, i64 0
  %445 = insertelement <2 x double> %444, double %443, i64 1
  %446 = fadd <2 x double> %439, %445
  %447 = getelementptr double, ptr %390, i64 -199992
  %448 = getelementptr double, ptr %391, i64 -199992
  %449 = load double, ptr %447, align 8, !tbaa !9
  %450 = load double, ptr %448, align 8, !tbaa !9
  %451 = insertelement <2 x double> poison, double %449, i64 0
  %452 = insertelement <2 x double> %451, double %450, i64 1
  %453 = fadd <2 x double> %446, %452
  %454 = getelementptr double, ptr %390, i64 -199991
  %455 = getelementptr double, ptr %391, i64 -199991
  %456 = load double, ptr %454, align 8, !tbaa !9
  %457 = load double, ptr %455, align 8, !tbaa !9
  %458 = insertelement <2 x double> poison, double %456, i64 0
  %459 = insertelement <2 x double> %458, double %457, i64 1
  %460 = fadd <2 x double> %453, %459
  %461 = getelementptr double, ptr %390, i64 -199990
  %462 = getelementptr double, ptr %391, i64 -199990
  %463 = load double, ptr %461, align 8, !tbaa !9
  %464 = load double, ptr %462, align 8, !tbaa !9
  %465 = insertelement <2 x double> poison, double %463, i64 0
  %466 = insertelement <2 x double> %465, double %464, i64 1
  %467 = fadd <2 x double> %460, %466
  %468 = getelementptr double, ptr %390, i64 -199989
  %469 = getelementptr double, ptr %391, i64 -199989
  %470 = load double, ptr %468, align 8, !tbaa !9
  %471 = load double, ptr %469, align 8, !tbaa !9
  %472 = insertelement <2 x double> poison, double %470, i64 0
  %473 = insertelement <2 x double> %472, double %471, i64 1
  %474 = fadd <2 x double> %467, %473
  %475 = getelementptr double, ptr %390, i64 -199988
  %476 = getelementptr double, ptr %391, i64 -199988
  %477 = load double, ptr %475, align 8, !tbaa !9
  %478 = load double, ptr %476, align 8, !tbaa !9
  %479 = insertelement <2 x double> poison, double %477, i64 0
  %480 = insertelement <2 x double> %479, double %478, i64 1
  %481 = fadd <2 x double> %474, %480
  %482 = getelementptr double, ptr %390, i64 -199987
  %483 = getelementptr double, ptr %391, i64 -199987
  %484 = load double, ptr %482, align 8, !tbaa !9
  %485 = load double, ptr %483, align 8, !tbaa !9
  %486 = insertelement <2 x double> poison, double %484, i64 0
  %487 = insertelement <2 x double> %486, double %485, i64 1
  %488 = fadd <2 x double> %481, %487
  %489 = getelementptr double, ptr %390, i64 -199986
  %490 = getelementptr double, ptr %391, i64 -199986
  %491 = load double, ptr %489, align 8, !tbaa !9
  %492 = load double, ptr %490, align 8, !tbaa !9
  %493 = insertelement <2 x double> poison, double %491, i64 0
  %494 = insertelement <2 x double> %493, double %492, i64 1
  %495 = fadd <2 x double> %488, %494
  %496 = getelementptr double, ptr %390, i64 -199985
  %497 = getelementptr double, ptr %391, i64 -199985
  %498 = load double, ptr %496, align 8, !tbaa !9
  %499 = load double, ptr %497, align 8, !tbaa !9
  %500 = insertelement <2 x double> poison, double %498, i64 0
  %501 = insertelement <2 x double> %500, double %499, i64 1
  %502 = fadd <2 x double> %495, %501
  %503 = getelementptr double, ptr %390, i64 -199984
  %504 = getelementptr double, ptr %391, i64 -199984
  %505 = load double, ptr %503, align 8, !tbaa !9
  %506 = load double, ptr %504, align 8, !tbaa !9
  %507 = insertelement <2 x double> poison, double %505, i64 0
  %508 = insertelement <2 x double> %507, double %506, i64 1
  %509 = fadd <2 x double> %502, %508
  %510 = getelementptr double, ptr %390, i64 -199983
  %511 = getelementptr double, ptr %391, i64 -199983
  %512 = load double, ptr %510, align 8, !tbaa !9
  %513 = load double, ptr %511, align 8, !tbaa !9
  %514 = insertelement <2 x double> poison, double %512, i64 0
  %515 = insertelement <2 x double> %514, double %513, i64 1
  %516 = fadd <2 x double> %509, %515
  %517 = getelementptr double, ptr %390, i64 -199982
  %518 = getelementptr double, ptr %391, i64 -199982
  %519 = load double, ptr %517, align 8, !tbaa !9
  %520 = load double, ptr %518, align 8, !tbaa !9
  %521 = insertelement <2 x double> poison, double %519, i64 0
  %522 = insertelement <2 x double> %521, double %520, i64 1
  %523 = fadd <2 x double> %516, %522
  %524 = fsub <2 x double> %417, %424
  %525 = fadd <2 x double> %524, %445
  %526 = fsub <2 x double> %525, %452
  %527 = fadd <2 x double> %526, %459
  %528 = fsub <2 x double> %527, %466
  %529 = fadd <2 x double> %528, %501
  %530 = fadd <2 x double> %529, %508
  %531 = fsub <2 x double> %530, %515
  %532 = fsub <2 x double> %531, %522
  %533 = fsub <2 x double> %403, %410
  %534 = fadd <2 x double> %533, %445
  %535 = fadd <2 x double> %534, %452
  %536 = fsub <2 x double> %535, %459
  %537 = fsub <2 x double> %536, %466
  %538 = fadd <2 x double> %537, %473
  %539 = fadd <2 x double> %538, %480
  %540 = fsub <2 x double> %539, %487
  %541 = fsub <2 x double> %540, %494
  %542 = fsub <2 x double> %431, %438
  %543 = fadd <2 x double> %542, %473
  %544 = fsub <2 x double> %543, %480
  %545 = fadd <2 x double> %544, %487
  %546 = fsub <2 x double> %545, %494
  %547 = fadd <2 x double> %546, %501
  %548 = fsub <2 x double> %547, %508
  %549 = fadd <2 x double> %548, %515
  %550 = fsub <2 x double> %549, %522
  %551 = fdiv <2 x double> %532, %523
  %552 = fdiv <2 x double> %541, %523
  %553 = fdiv <2 x double> %550, %523
  %554 = getelementptr double, ptr %390, i64 -400000
  %555 = getelementptr double, ptr %391, i64 -400000
  %556 = load double, ptr %554, align 8, !tbaa !9
  %557 = load double, ptr %555, align 8, !tbaa !9
  %558 = insertelement <2 x double> poison, double %556, i64 0
  %559 = insertelement <2 x double> %558, double %557, i64 1
  %560 = getelementptr double, ptr %390, i64 -399999
  %561 = getelementptr double, ptr %391, i64 -399999
  %562 = load double, ptr %560, align 8, !tbaa !9
  %563 = load double, ptr %561, align 8, !tbaa !9
  %564 = insertelement <2 x double> poison, double %562, i64 0
  %565 = insertelement <2 x double> %564, double %563, i64 1
  %566 = fadd <2 x double> %559, %565
  %567 = getelementptr double, ptr %390, i64 -399998
  %568 = getelementptr double, ptr %391, i64 -399998
  %569 = load double, ptr %567, align 8, !tbaa !9
  %570 = load double, ptr %568, align 8, !tbaa !9
  %571 = insertelement <2 x double> poison, double %569, i64 0
  %572 = insertelement <2 x double> %571, double %570, i64 1
  %573 = fadd <2 x double> %566, %572
  %574 = getelementptr double, ptr %390, i64 -399997
  %575 = getelementptr double, ptr %391, i64 -399997
  %576 = load double, ptr %574, align 8, !tbaa !9
  %577 = load double, ptr %575, align 8, !tbaa !9
  %578 = insertelement <2 x double> poison, double %576, i64 0
  %579 = insertelement <2 x double> %578, double %577, i64 1
  %580 = fadd <2 x double> %573, %579
  %581 = getelementptr double, ptr %390, i64 -399996
  %582 = getelementptr double, ptr %391, i64 -399996
  %583 = load double, ptr %581, align 8, !tbaa !9
  %584 = load double, ptr %582, align 8, !tbaa !9
  %585 = insertelement <2 x double> poison, double %583, i64 0
  %586 = insertelement <2 x double> %585, double %584, i64 1
  %587 = fadd <2 x double> %580, %586
  %588 = getelementptr double, ptr %390, i64 -399995
  %589 = getelementptr double, ptr %391, i64 -399995
  %590 = load double, ptr %588, align 8, !tbaa !9
  %591 = load double, ptr %589, align 8, !tbaa !9
  %592 = insertelement <2 x double> poison, double %590, i64 0
  %593 = insertelement <2 x double> %592, double %591, i64 1
  %594 = fadd <2 x double> %587, %593
  %595 = getelementptr double, ptr %390, i64 -399994
  %596 = getelementptr double, ptr %391, i64 -399994
  %597 = load double, ptr %595, align 8, !tbaa !9
  %598 = load double, ptr %596, align 8, !tbaa !9
  %599 = insertelement <2 x double> poison, double %597, i64 0
  %600 = insertelement <2 x double> %599, double %598, i64 1
  %601 = fadd <2 x double> %594, %600
  %602 = getelementptr double, ptr %390, i64 -399993
  %603 = getelementptr double, ptr %391, i64 -399993
  %604 = load double, ptr %602, align 8, !tbaa !9
  %605 = load double, ptr %603, align 8, !tbaa !9
  %606 = insertelement <2 x double> poison, double %604, i64 0
  %607 = insertelement <2 x double> %606, double %605, i64 1
  %608 = fadd <2 x double> %601, %607
  %609 = getelementptr double, ptr %390, i64 -399992
  %610 = getelementptr double, ptr %391, i64 -399992
  %611 = load double, ptr %609, align 8, !tbaa !9
  %612 = load double, ptr %610, align 8, !tbaa !9
  %613 = insertelement <2 x double> poison, double %611, i64 0
  %614 = insertelement <2 x double> %613, double %612, i64 1
  %615 = fadd <2 x double> %608, %614
  %616 = getelementptr double, ptr %390, i64 -399991
  %617 = getelementptr double, ptr %391, i64 -399991
  %618 = load double, ptr %616, align 8, !tbaa !9
  %619 = load double, ptr %617, align 8, !tbaa !9
  %620 = insertelement <2 x double> poison, double %618, i64 0
  %621 = insertelement <2 x double> %620, double %619, i64 1
  %622 = fadd <2 x double> %615, %621
  %623 = getelementptr double, ptr %390, i64 -399990
  %624 = getelementptr double, ptr %391, i64 -399990
  %625 = load double, ptr %623, align 8, !tbaa !9
  %626 = load double, ptr %624, align 8, !tbaa !9
  %627 = insertelement <2 x double> poison, double %625, i64 0
  %628 = insertelement <2 x double> %627, double %626, i64 1
  %629 = fadd <2 x double> %622, %628
  %630 = getelementptr double, ptr %390, i64 -399989
  %631 = getelementptr double, ptr %391, i64 -399989
  %632 = load double, ptr %630, align 8, !tbaa !9
  %633 = load double, ptr %631, align 8, !tbaa !9
  %634 = insertelement <2 x double> poison, double %632, i64 0
  %635 = insertelement <2 x double> %634, double %633, i64 1
  %636 = fadd <2 x double> %629, %635
  %637 = getelementptr double, ptr %390, i64 -399988
  %638 = getelementptr double, ptr %391, i64 -399988
  %639 = load double, ptr %637, align 8, !tbaa !9
  %640 = load double, ptr %638, align 8, !tbaa !9
  %641 = insertelement <2 x double> poison, double %639, i64 0
  %642 = insertelement <2 x double> %641, double %640, i64 1
  %643 = fadd <2 x double> %636, %642
  %644 = getelementptr double, ptr %390, i64 -399987
  %645 = getelementptr double, ptr %391, i64 -399987
  %646 = load double, ptr %644, align 8, !tbaa !9
  %647 = load double, ptr %645, align 8, !tbaa !9
  %648 = insertelement <2 x double> poison, double %646, i64 0
  %649 = insertelement <2 x double> %648, double %647, i64 1
  %650 = fadd <2 x double> %643, %649
  %651 = getelementptr double, ptr %390, i64 -399986
  %652 = getelementptr double, ptr %391, i64 -399986
  %653 = load double, ptr %651, align 8, !tbaa !9
  %654 = load double, ptr %652, align 8, !tbaa !9
  %655 = insertelement <2 x double> poison, double %653, i64 0
  %656 = insertelement <2 x double> %655, double %654, i64 1
  %657 = fadd <2 x double> %650, %656
  %658 = getelementptr double, ptr %390, i64 -399985
  %659 = getelementptr double, ptr %391, i64 -399985
  %660 = load double, ptr %658, align 8, !tbaa !9
  %661 = load double, ptr %659, align 8, !tbaa !9
  %662 = insertelement <2 x double> poison, double %660, i64 0
  %663 = insertelement <2 x double> %662, double %661, i64 1
  %664 = fadd <2 x double> %657, %663
  %665 = getelementptr double, ptr %390, i64 -399984
  %666 = getelementptr double, ptr %391, i64 -399984
  %667 = load double, ptr %665, align 8, !tbaa !9
  %668 = load double, ptr %666, align 8, !tbaa !9
  %669 = insertelement <2 x double> poison, double %667, i64 0
  %670 = insertelement <2 x double> %669, double %668, i64 1
  %671 = fadd <2 x double> %664, %670
  %672 = getelementptr double, ptr %390, i64 -399983
  %673 = getelementptr double, ptr %391, i64 -399983
  %674 = load double, ptr %672, align 8, !tbaa !9
  %675 = load double, ptr %673, align 8, !tbaa !9
  %676 = insertelement <2 x double> poison, double %674, i64 0
  %677 = insertelement <2 x double> %676, double %675, i64 1
  %678 = fadd <2 x double> %671, %677
  %679 = getelementptr double, ptr %390, i64 -399982
  %680 = getelementptr double, ptr %391, i64 -399982
  %681 = load double, ptr %679, align 8, !tbaa !9
  %682 = load double, ptr %680, align 8, !tbaa !9
  %683 = insertelement <2 x double> poison, double %681, i64 0
  %684 = insertelement <2 x double> %683, double %682, i64 1
  %685 = fadd <2 x double> %678, %684
  %686 = fsub <2 x double> %579, %586
  %687 = fadd <2 x double> %686, %607
  %688 = fsub <2 x double> %687, %614
  %689 = fadd <2 x double> %688, %621
  %690 = fsub <2 x double> %689, %628
  %691 = fadd <2 x double> %690, %663
  %692 = fadd <2 x double> %691, %670
  %693 = fsub <2 x double> %692, %677
  %694 = fsub <2 x double> %693, %684
  %695 = fsub <2 x double> %565, %572
  %696 = fadd <2 x double> %695, %607
  %697 = fadd <2 x double> %696, %614
  %698 = fsub <2 x double> %697, %621
  %699 = fsub <2 x double> %698, %628
  %700 = fadd <2 x double> %699, %635
  %701 = fadd <2 x double> %700, %642
  %702 = fsub <2 x double> %701, %649
  %703 = fsub <2 x double> %702, %656
  %704 = fsub <2 x double> %593, %600
  %705 = fadd <2 x double> %704, %635
  %706 = fsub <2 x double> %705, %642
  %707 = fadd <2 x double> %706, %649
  %708 = fsub <2 x double> %707, %656
  %709 = fadd <2 x double> %708, %663
  %710 = fsub <2 x double> %709, %670
  %711 = fadd <2 x double> %710, %677
  %712 = fsub <2 x double> %711, %684
  %713 = fneg <2 x double> %694
  %714 = fdiv <2 x double> %713, %685
  %715 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %551, <2 x double> <double 2.000000e+00, double 2.000000e+00>, <2 x double> %714)
  %716 = fneg <2 x double> %703
  %717 = fdiv <2 x double> %716, %685
  %718 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %552, <2 x double> <double 2.000000e+00, double 2.000000e+00>, <2 x double> %717)
  %719 = fneg <2 x double> %712
  %720 = fdiv <2 x double> %719, %685
  %721 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %553, <2 x double> <double 2.000000e+00, double 2.000000e+00>, <2 x double> %720)
  %722 = fmul <2 x double> %718, %718
  %723 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %715, <2 x double> %715, <2 x double> %722)
  %724 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %721, <2 x double> %721, <2 x double> %723)
  %725 = fmul <2 x double> %724, <double 1.500000e+00, double 1.500000e+00>
  %726 = fsub <2 x double> <double 1.000000e+00, double 1.000000e+00>, %725
  %727 = fmul <2 x double> %726, <double 0x3FD5555555555555, double 0x3FD5555555555555>
  %728 = extractelement <2 x double> %727, i64 0
  store double %728, ptr %390, align 8, !tbaa !9
  %729 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %718, <2 x double> <double 4.500000e+00, double 4.500000e+00>, <2 x double> <double 3.000000e+00, double 3.000000e+00>)
  %730 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %718, <2 x double> %729, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %731 = fsub <2 x double> %730, %725
  %732 = fmul <2 x double> %731, <double 0x3FAC71C71C71C71C, double 0x3FAC71C71C71C71C>
  %733 = or disjoint i64 %388, 1
  %734 = getelementptr inbounds double, ptr %0, i64 %733
  %735 = extractelement <2 x double> %732, i64 0
  store double %735, ptr %734, align 8, !tbaa !9
  %736 = shufflevector <2 x double> %727, <2 x double> %732, <2 x i32> <i32 1, i32 3>
  store <2 x double> %736, ptr %391, align 8, !tbaa !9
  %737 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %718, <2 x double> <double 4.500000e+00, double 4.500000e+00>, <2 x double> <double -3.000000e+00, double -3.000000e+00>)
  %738 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %718, <2 x double> %737, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %739 = fsub <2 x double> %738, %725
  %740 = fmul <2 x double> %739, <double 0x3FAC71C71C71C71C, double 0x3FAC71C71C71C71C>
  %741 = or disjoint i64 %388, 2
  %742 = or disjoint i64 %389, 2
  %743 = getelementptr inbounds double, ptr %0, i64 %741
  %744 = getelementptr inbounds double, ptr %0, i64 %742
  %745 = extractelement <2 x double> %740, i64 0
  store double %745, ptr %743, align 8, !tbaa !9
  %746 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %715, <2 x double> <double 4.500000e+00, double 4.500000e+00>, <2 x double> <double 3.000000e+00, double 3.000000e+00>)
  %747 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %715, <2 x double> %746, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %748 = fsub <2 x double> %747, %725
  %749 = fmul <2 x double> %748, <double 0x3FAC71C71C71C71C, double 0x3FAC71C71C71C71C>
  %750 = or disjoint i64 %388, 3
  %751 = getelementptr inbounds double, ptr %0, i64 %750
  %752 = extractelement <2 x double> %749, i64 0
  store double %752, ptr %751, align 8, !tbaa !9
  %753 = shufflevector <2 x double> %740, <2 x double> %749, <2 x i32> <i32 1, i32 3>
  store <2 x double> %753, ptr %744, align 8, !tbaa !9
  %754 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %715, <2 x double> <double 4.500000e+00, double 4.500000e+00>, <2 x double> <double -3.000000e+00, double -3.000000e+00>)
  %755 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %715, <2 x double> %754, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %756 = fsub <2 x double> %755, %725
  %757 = fmul <2 x double> %756, <double 0x3FAC71C71C71C71C, double 0x3FAC71C71C71C71C>
  %758 = getelementptr double, ptr %390, i64 4
  %759 = getelementptr double, ptr %391, i64 4
  %760 = extractelement <2 x double> %757, i64 0
  store double %760, ptr %758, align 8, !tbaa !9
  %761 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %721, <2 x double> <double 4.500000e+00, double 4.500000e+00>, <2 x double> <double 3.000000e+00, double 3.000000e+00>)
  %762 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %721, <2 x double> %761, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %763 = fsub <2 x double> %762, %725
  %764 = fmul <2 x double> %763, <double 0x3FAC71C71C71C71C, double 0x3FAC71C71C71C71C>
  %765 = getelementptr double, ptr %390, i64 5
  %766 = extractelement <2 x double> %764, i64 0
  store double %766, ptr %765, align 8, !tbaa !9
  %767 = shufflevector <2 x double> %757, <2 x double> %764, <2 x i32> <i32 1, i32 3>
  store <2 x double> %767, ptr %759, align 8, !tbaa !9
  %768 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %721, <2 x double> <double 4.500000e+00, double 4.500000e+00>, <2 x double> <double -3.000000e+00, double -3.000000e+00>)
  %769 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %721, <2 x double> %768, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %770 = fsub <2 x double> %769, %725
  %771 = fmul <2 x double> %770, <double 0x3FAC71C71C71C71C, double 0x3FAC71C71C71C71C>
  %772 = getelementptr double, ptr %390, i64 6
  %773 = getelementptr double, ptr %391, i64 6
  %774 = extractelement <2 x double> %771, i64 0
  store double %774, ptr %772, align 8, !tbaa !9
  %775 = fadd <2 x double> %715, %718
  %776 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %775, <2 x double> <double 4.500000e+00, double 4.500000e+00>, <2 x double> <double 3.000000e+00, double 3.000000e+00>)
  %777 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %775, <2 x double> %776, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %778 = fsub <2 x double> %777, %725
  %779 = fmul <2 x double> %778, <double 0x3F9C71C71C71C71C, double 0x3F9C71C71C71C71C>
  %780 = getelementptr double, ptr %390, i64 7
  %781 = extractelement <2 x double> %779, i64 0
  store double %781, ptr %780, align 8, !tbaa !9
  %782 = shufflevector <2 x double> %771, <2 x double> %779, <2 x i32> <i32 1, i32 3>
  store <2 x double> %782, ptr %773, align 8, !tbaa !9
  %783 = fneg <2 x double> %715
  %784 = fsub <2 x double> %718, %715
  %785 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %784, <2 x double> <double 4.500000e+00, double 4.500000e+00>, <2 x double> <double 3.000000e+00, double 3.000000e+00>)
  %786 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %784, <2 x double> %785, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %787 = fsub <2 x double> %786, %725
  %788 = fmul <2 x double> %787, <double 0x3F9C71C71C71C71C, double 0x3F9C71C71C71C71C>
  %789 = getelementptr double, ptr %390, i64 8
  %790 = getelementptr double, ptr %391, i64 8
  %791 = extractelement <2 x double> %788, i64 0
  store double %791, ptr %789, align 8, !tbaa !9
  %792 = fsub <2 x double> %715, %718
  %793 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %792, <2 x double> <double 4.500000e+00, double 4.500000e+00>, <2 x double> <double 3.000000e+00, double 3.000000e+00>)
  %794 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %792, <2 x double> %793, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %795 = fsub <2 x double> %794, %725
  %796 = fmul <2 x double> %795, <double 0x3F9C71C71C71C71C, double 0x3F9C71C71C71C71C>
  %797 = getelementptr double, ptr %390, i64 9
  %798 = extractelement <2 x double> %796, i64 0
  store double %798, ptr %797, align 8, !tbaa !9
  %799 = shufflevector <2 x double> %788, <2 x double> %796, <2 x i32> <i32 1, i32 3>
  store <2 x double> %799, ptr %790, align 8, !tbaa !9
  %800 = fsub <2 x double> %783, %718
  %801 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %800, <2 x double> <double 4.500000e+00, double 4.500000e+00>, <2 x double> <double 3.000000e+00, double 3.000000e+00>)
  %802 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %800, <2 x double> %801, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %803 = fsub <2 x double> %802, %725
  %804 = fmul <2 x double> %803, <double 0x3F9C71C71C71C71C, double 0x3F9C71C71C71C71C>
  %805 = getelementptr double, ptr %390, i64 10
  %806 = getelementptr double, ptr %391, i64 10
  %807 = extractelement <2 x double> %804, i64 0
  store double %807, ptr %805, align 8, !tbaa !9
  %808 = fadd <2 x double> %718, %721
  %809 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %808, <2 x double> <double 4.500000e+00, double 4.500000e+00>, <2 x double> <double 3.000000e+00, double 3.000000e+00>)
  %810 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %808, <2 x double> %809, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %811 = fsub <2 x double> %810, %725
  %812 = fmul <2 x double> %811, <double 0x3F9C71C71C71C71C, double 0x3F9C71C71C71C71C>
  %813 = getelementptr double, ptr %390, i64 11
  %814 = extractelement <2 x double> %812, i64 0
  store double %814, ptr %813, align 8, !tbaa !9
  %815 = shufflevector <2 x double> %804, <2 x double> %812, <2 x i32> <i32 1, i32 3>
  store <2 x double> %815, ptr %806, align 8, !tbaa !9
  %816 = fsub <2 x double> %718, %721
  %817 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %816, <2 x double> <double 4.500000e+00, double 4.500000e+00>, <2 x double> <double 3.000000e+00, double 3.000000e+00>)
  %818 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %816, <2 x double> %817, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %819 = fsub <2 x double> %818, %725
  %820 = fmul <2 x double> %819, <double 0x3F9C71C71C71C71C, double 0x3F9C71C71C71C71C>
  %821 = getelementptr double, ptr %390, i64 12
  %822 = getelementptr double, ptr %391, i64 12
  %823 = extractelement <2 x double> %820, i64 0
  store double %823, ptr %821, align 8, !tbaa !9
  %824 = fneg <2 x double> %718
  %825 = fsub <2 x double> %721, %718
  %826 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %825, <2 x double> <double 4.500000e+00, double 4.500000e+00>, <2 x double> <double 3.000000e+00, double 3.000000e+00>)
  %827 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %825, <2 x double> %826, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %828 = fsub <2 x double> %827, %725
  %829 = fmul <2 x double> %828, <double 0x3F9C71C71C71C71C, double 0x3F9C71C71C71C71C>
  %830 = getelementptr double, ptr %390, i64 13
  %831 = extractelement <2 x double> %829, i64 0
  store double %831, ptr %830, align 8, !tbaa !9
  %832 = shufflevector <2 x double> %820, <2 x double> %829, <2 x i32> <i32 1, i32 3>
  store <2 x double> %832, ptr %822, align 8, !tbaa !9
  %833 = fsub <2 x double> %824, %721
  %834 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %833, <2 x double> <double 4.500000e+00, double 4.500000e+00>, <2 x double> <double 3.000000e+00, double 3.000000e+00>)
  %835 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %833, <2 x double> %834, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %836 = fsub <2 x double> %835, %725
  %837 = fmul <2 x double> %836, <double 0x3F9C71C71C71C71C, double 0x3F9C71C71C71C71C>
  %838 = getelementptr double, ptr %390, i64 14
  %839 = getelementptr double, ptr %391, i64 14
  %840 = extractelement <2 x double> %837, i64 0
  store double %840, ptr %838, align 8, !tbaa !9
  %841 = fadd <2 x double> %715, %721
  %842 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %841, <2 x double> <double 4.500000e+00, double 4.500000e+00>, <2 x double> <double 3.000000e+00, double 3.000000e+00>)
  %843 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %841, <2 x double> %842, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %844 = fsub <2 x double> %843, %725
  %845 = fmul <2 x double> %844, <double 0x3F9C71C71C71C71C, double 0x3F9C71C71C71C71C>
  %846 = getelementptr double, ptr %390, i64 15
  %847 = extractelement <2 x double> %845, i64 0
  store double %847, ptr %846, align 8, !tbaa !9
  %848 = shufflevector <2 x double> %837, <2 x double> %845, <2 x i32> <i32 1, i32 3>
  store <2 x double> %848, ptr %839, align 8, !tbaa !9
  %849 = fsub <2 x double> %715, %721
  %850 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %849, <2 x double> <double 4.500000e+00, double 4.500000e+00>, <2 x double> <double 3.000000e+00, double 3.000000e+00>)
  %851 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %849, <2 x double> %850, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %852 = fsub <2 x double> %851, %725
  %853 = fmul <2 x double> %852, <double 0x3F9C71C71C71C71C, double 0x3F9C71C71C71C71C>
  %854 = getelementptr double, ptr %390, i64 16
  %855 = getelementptr double, ptr %391, i64 16
  %856 = extractelement <2 x double> %853, i64 0
  store double %856, ptr %854, align 8, !tbaa !9
  %857 = fsub <2 x double> %721, %715
  %858 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %857, <2 x double> <double 4.500000e+00, double 4.500000e+00>, <2 x double> <double 3.000000e+00, double 3.000000e+00>)
  %859 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %857, <2 x double> %858, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %860 = fsub <2 x double> %859, %725
  %861 = fmul <2 x double> %860, <double 0x3F9C71C71C71C71C, double 0x3F9C71C71C71C71C>
  %862 = getelementptr double, ptr %390, i64 17
  %863 = extractelement <2 x double> %861, i64 0
  store double %863, ptr %862, align 8, !tbaa !9
  %864 = shufflevector <2 x double> %853, <2 x double> %861, <2 x i32> <i32 1, i32 3>
  store <2 x double> %864, ptr %855, align 8, !tbaa !9
  %865 = fsub <2 x double> %783, %721
  %866 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %865, <2 x double> <double 4.500000e+00, double 4.500000e+00>, <2 x double> <double 3.000000e+00, double 3.000000e+00>)
  %867 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %865, <2 x double> %866, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %868 = fsub <2 x double> %867, %725
  %869 = fmul <2 x double> %868, <double 0x3F9C71C71C71C71C, double 0x3F9C71C71C71C71C>
  %870 = getelementptr double, ptr %390, i64 18
  %871 = getelementptr double, ptr %391, i64 18
  %872 = extractelement <2 x double> %869, i64 0
  store double %872, ptr %870, align 8, !tbaa !9
  %873 = extractelement <2 x double> %869, i64 1
  store double %873, ptr %871, align 8, !tbaa !9
  %874 = add nuw i64 %386, 2
  %875 = icmp eq i64 %874, 10000
  br i1 %875, label %876, label %385, !llvm.loop !29

876:                                              ; preds = %385
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @LBM_showGridStatistics(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
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
  %13 = load double, ptr %12, align 8, !tbaa !9
  %14 = or disjoint i64 %3, 1
  %15 = getelementptr inbounds double, ptr %0, i64 %14
  %16 = load double, ptr %15, align 8, !tbaa !9
  %17 = fadd double %13, %16
  %18 = or disjoint i64 %3, 2
  %19 = getelementptr inbounds double, ptr %0, i64 %18
  %20 = load double, ptr %19, align 8, !tbaa !9
  %21 = fadd double %17, %20
  %22 = or disjoint i64 %3, 3
  %23 = getelementptr inbounds double, ptr %0, i64 %22
  %24 = load double, ptr %23, align 8, !tbaa !9
  %25 = fadd double %21, %24
  %26 = getelementptr double, ptr %12, i64 4
  %27 = load double, ptr %26, align 8, !tbaa !9
  %28 = fadd double %25, %27
  %29 = getelementptr double, ptr %12, i64 5
  %30 = load double, ptr %29, align 8, !tbaa !9
  %31 = fadd double %28, %30
  %32 = getelementptr double, ptr %12, i64 6
  %33 = load double, ptr %32, align 8, !tbaa !9
  %34 = fadd double %31, %33
  %35 = getelementptr double, ptr %12, i64 7
  %36 = load double, ptr %35, align 8, !tbaa !9
  %37 = fadd double %34, %36
  %38 = getelementptr double, ptr %12, i64 8
  %39 = load double, ptr %38, align 8, !tbaa !9
  %40 = fadd double %37, %39
  %41 = getelementptr double, ptr %12, i64 9
  %42 = load double, ptr %41, align 8, !tbaa !9
  %43 = fadd double %40, %42
  %44 = getelementptr double, ptr %12, i64 10
  %45 = load double, ptr %44, align 8, !tbaa !9
  %46 = fadd double %43, %45
  %47 = getelementptr double, ptr %12, i64 11
  %48 = load double, ptr %47, align 8, !tbaa !9
  %49 = fadd double %46, %48
  %50 = getelementptr double, ptr %12, i64 12
  %51 = load double, ptr %50, align 8, !tbaa !9
  %52 = fadd double %49, %51
  %53 = getelementptr double, ptr %12, i64 13
  %54 = load double, ptr %53, align 8, !tbaa !9
  %55 = fadd double %52, %54
  %56 = getelementptr double, ptr %12, i64 14
  %57 = load double, ptr %56, align 8, !tbaa !9
  %58 = fadd double %55, %57
  %59 = getelementptr double, ptr %12, i64 15
  %60 = load double, ptr %59, align 8, !tbaa !9
  %61 = fadd double %58, %60
  %62 = getelementptr double, ptr %12, i64 16
  %63 = load double, ptr %62, align 8, !tbaa !9
  %64 = fadd double %61, %63
  %65 = getelementptr double, ptr %12, i64 17
  %66 = load double, ptr %65, align 8, !tbaa !9
  %67 = fadd double %64, %66
  %68 = getelementptr double, ptr %12, i64 18
  %69 = load double, ptr %68, align 8, !tbaa !9
  %70 = fadd double %67, %69
  %71 = fcmp olt double %70, %7
  %72 = select i1 %71, double %70, double %7
  %73 = fcmp ogt double %70, %6
  %74 = select i1 %73, double %70, double %6
  %75 = fadd double %4, %70
  %76 = getelementptr double, ptr %12, i64 19
  %77 = load i32, ptr %76, align 4, !tbaa !11
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
  %131 = icmp ult i64 %3, 25999980
  br i1 %131, label %2, label %132, !llvm.loop !30

132:                                              ; preds = %124
  %133 = tail call double @sqrt(double noundef %126) #18
  %134 = tail call double @sqrt(double noundef %127) #18
  %135 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %129, i32 noundef %128, i32 noundef %125, double noundef %72, double noundef %74, double noundef %75, double noundef %133, double noundef %134) #16
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #12

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @LBM_storeVelocityField(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #9 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #19
  %7 = icmp eq i32 %2, 0
  %8 = select i1 %7, ptr @.str.4, ptr @.str.3
  %9 = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull %8) #16
  br label %10

10:                                               ; preds = %3, %126
  %11 = phi i64 [ 0, %3 ], [ %127, %126 ]
  %12 = mul nuw nsw i64 %11, 10000
  br label %13

13:                                               ; preds = %10, %123
  %14 = phi i64 [ 0, %10 ], [ %124, %123 ]
  %15 = mul nuw nsw i64 %14, 100
  %16 = add nuw nsw i64 %15, %12
  br label %17

17:                                               ; preds = %13, %120
  %18 = phi i64 [ 0, %13 ], [ %121, %120 ]
  %19 = add nuw nsw i64 %16, %18
  %20 = mul nuw nsw i64 %19, 20
  %21 = getelementptr inbounds double, ptr %0, i64 %20
  %22 = load double, ptr %21, align 8, !tbaa !9
  %23 = or disjoint i64 %20, 1
  %24 = getelementptr inbounds double, ptr %0, i64 %23
  %25 = load double, ptr %24, align 8, !tbaa !9
  %26 = fadd double %22, %25
  %27 = or disjoint i64 %20, 2
  %28 = getelementptr inbounds double, ptr %0, i64 %27
  %29 = load double, ptr %28, align 8, !tbaa !9
  %30 = fadd double %26, %29
  %31 = or disjoint i64 %20, 3
  %32 = getelementptr inbounds double, ptr %0, i64 %31
  %33 = load double, ptr %32, align 8, !tbaa !9
  %34 = fadd double %30, %33
  %35 = getelementptr double, ptr %21, i64 4
  %36 = load double, ptr %35, align 8, !tbaa !9
  %37 = fadd double %34, %36
  %38 = getelementptr double, ptr %21, i64 5
  %39 = load double, ptr %38, align 8, !tbaa !9
  %40 = fadd double %37, %39
  %41 = getelementptr double, ptr %21, i64 6
  %42 = load double, ptr %41, align 8, !tbaa !9
  %43 = fadd double %40, %42
  %44 = getelementptr double, ptr %21, i64 7
  %45 = load double, ptr %44, align 8, !tbaa !9
  %46 = fadd double %43, %45
  %47 = getelementptr double, ptr %21, i64 8
  %48 = load double, ptr %47, align 8, !tbaa !9
  %49 = fadd double %46, %48
  %50 = getelementptr double, ptr %21, i64 9
  %51 = load double, ptr %50, align 8, !tbaa !9
  %52 = fadd double %49, %51
  %53 = getelementptr double, ptr %21, i64 10
  %54 = load double, ptr %53, align 8, !tbaa !9
  %55 = fadd double %52, %54
  %56 = getelementptr double, ptr %21, i64 11
  %57 = load double, ptr %56, align 8, !tbaa !9
  %58 = fadd double %55, %57
  %59 = getelementptr double, ptr %21, i64 12
  %60 = load double, ptr %59, align 8, !tbaa !9
  %61 = fadd double %58, %60
  %62 = getelementptr double, ptr %21, i64 13
  %63 = load double, ptr %62, align 8, !tbaa !9
  %64 = fadd double %61, %63
  %65 = getelementptr double, ptr %21, i64 14
  %66 = load double, ptr %65, align 8, !tbaa !9
  %67 = fadd double %64, %66
  %68 = getelementptr double, ptr %21, i64 15
  %69 = load double, ptr %68, align 8, !tbaa !9
  %70 = fadd double %67, %69
  %71 = getelementptr double, ptr %21, i64 16
  %72 = load double, ptr %71, align 8, !tbaa !9
  %73 = fadd double %70, %72
  %74 = getelementptr double, ptr %21, i64 17
  %75 = load double, ptr %74, align 8, !tbaa !9
  %76 = fadd double %73, %75
  %77 = getelementptr double, ptr %21, i64 18
  %78 = load double, ptr %77, align 8, !tbaa !9
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
  store float %111, ptr %4, align 4, !tbaa !31
  %112 = fdiv float %100, %80
  store float %112, ptr %5, align 4, !tbaa !31
  %113 = fdiv float %110, %80
  store float %113, ptr %6, align 4, !tbaa !31
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
  %119 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.5, double noundef %116, double noundef %117, double noundef %118) #16
  br label %120

120:                                              ; preds = %114, %115
  %121 = add nuw nsw i64 %18, 1
  %122 = icmp eq i64 %121, 100
  br i1 %122, label %123, label %17, !llvm.loop !33

123:                                              ; preds = %120
  %124 = add nuw nsw i64 %14, 1
  %125 = icmp eq i64 %124, 100
  br i1 %125, label %126, label %13, !llvm.loop !34

126:                                              ; preds = %123
  %127 = add nuw nsw i64 %11, 1
  %128 = icmp eq i64 %127, 130
  br i1 %128, label %129, label %10, !llvm.loop !35

129:                                              ; preds = %126
  %130 = tail call i32 @fclose(ptr noundef %9) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @storeValue(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #9 {
  %3 = tail call i64 @fwrite(ptr noundef %1, i64 noundef 4, i64 noundef 1, ptr noundef %0) #16
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @LBM_compareVelocityField(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #19
  %7 = icmp eq i32 %2, 0
  %8 = select i1 %7, ptr @.str.6, ptr @.str.1
  %9 = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull %8) #16
  br label %10

10:                                               ; preds = %3, %139
  %11 = phi i64 [ 0, %3 ], [ %140, %139 ]
  %12 = phi float [ 0xC6293E5940000000, %3 ], [ %133, %139 ]
  %13 = mul nuw nsw i64 %11, 10000
  br label %14

14:                                               ; preds = %10, %136
  %15 = phi i64 [ 0, %10 ], [ %137, %136 ]
  %16 = phi float [ %12, %10 ], [ %133, %136 ]
  %17 = mul nuw nsw i64 %15, 100
  %18 = add nuw nsw i64 %17, %13
  br label %19

19:                                               ; preds = %14, %116
  %20 = phi i64 [ 0, %14 ], [ %134, %116 ]
  %21 = phi float [ %16, %14 ], [ %133, %116 ]
  %22 = add nuw nsw i64 %18, %20
  %23 = mul nuw nsw i64 %22, 20
  %24 = getelementptr inbounds double, ptr %0, i64 %23
  %25 = load double, ptr %24, align 8, !tbaa !9
  %26 = or disjoint i64 %23, 1
  %27 = getelementptr inbounds double, ptr %0, i64 %26
  %28 = load double, ptr %27, align 8, !tbaa !9
  %29 = fadd double %25, %28
  %30 = or disjoint i64 %23, 2
  %31 = getelementptr inbounds double, ptr %0, i64 %30
  %32 = load double, ptr %31, align 8, !tbaa !9
  %33 = fadd double %29, %32
  %34 = or disjoint i64 %23, 3
  %35 = getelementptr inbounds double, ptr %0, i64 %34
  %36 = load double, ptr %35, align 8, !tbaa !9
  %37 = fadd double %33, %36
  %38 = getelementptr double, ptr %24, i64 4
  %39 = load double, ptr %38, align 8, !tbaa !9
  %40 = fadd double %37, %39
  %41 = getelementptr double, ptr %24, i64 5
  %42 = load double, ptr %41, align 8, !tbaa !9
  %43 = fadd double %40, %42
  %44 = getelementptr double, ptr %24, i64 6
  %45 = load double, ptr %44, align 8, !tbaa !9
  %46 = fadd double %43, %45
  %47 = getelementptr double, ptr %24, i64 7
  %48 = load double, ptr %47, align 8, !tbaa !9
  %49 = fadd double %46, %48
  %50 = getelementptr double, ptr %24, i64 8
  %51 = load double, ptr %50, align 8, !tbaa !9
  %52 = fadd double %49, %51
  %53 = getelementptr double, ptr %24, i64 9
  %54 = load double, ptr %53, align 8, !tbaa !9
  %55 = fadd double %52, %54
  %56 = getelementptr double, ptr %24, i64 10
  %57 = load double, ptr %56, align 8, !tbaa !9
  %58 = fadd double %55, %57
  %59 = getelementptr double, ptr %24, i64 11
  %60 = load double, ptr %59, align 8, !tbaa !9
  %61 = fadd double %58, %60
  %62 = getelementptr double, ptr %24, i64 12
  %63 = load double, ptr %62, align 8, !tbaa !9
  %64 = fadd double %61, %63
  %65 = getelementptr double, ptr %24, i64 13
  %66 = load double, ptr %65, align 8, !tbaa !9
  %67 = fadd double %64, %66
  %68 = getelementptr double, ptr %24, i64 14
  %69 = load double, ptr %68, align 8, !tbaa !9
  %70 = fadd double %67, %69
  %71 = getelementptr double, ptr %24, i64 15
  %72 = load double, ptr %71, align 8, !tbaa !9
  %73 = fadd double %70, %72
  %74 = getelementptr double, ptr %24, i64 16
  %75 = load double, ptr %74, align 8, !tbaa !9
  %76 = fadd double %73, %75
  %77 = getelementptr double, ptr %24, i64 17
  %78 = load double, ptr %77, align 8, !tbaa !9
  %79 = fadd double %76, %78
  %80 = getelementptr double, ptr %24, i64 18
  %81 = load double, ptr %80, align 8, !tbaa !9
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
  %115 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %9, ptr noundef nonnull @.str.7, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #18
  br label %116

116:                                              ; preds = %114, %113
  %117 = load float, ptr %4, align 4, !tbaa !31
  %118 = fpext float %117 to double
  %119 = fsub double %110, %118
  %120 = fptrunc double %119 to float
  %121 = load float, ptr %5, align 4, !tbaa !31
  %122 = fpext float %121 to double
  %123 = fsub double %111, %122
  %124 = fptrunc double %123 to float
  %125 = load float, ptr %6, align 4, !tbaa !31
  %126 = fpext float %125 to double
  %127 = fsub double %112, %126
  %128 = fptrunc double %127 to float
  %129 = fmul float %124, %124
  %130 = call float @llvm.fmuladd.f32(float %120, float %120, float %129)
  %131 = call float @llvm.fmuladd.f32(float %128, float %128, float %130)
  %132 = fcmp ogt float %131, %21
  %133 = select i1 %132, float %131, float %21
  %134 = add nuw nsw i64 %20, 1
  %135 = icmp eq i64 %134, 100
  br i1 %135, label %136, label %19, !llvm.loop !36

136:                                              ; preds = %116
  %137 = add nuw nsw i64 %15, 1
  %138 = icmp eq i64 %137, 100
  br i1 %138, label %139, label %14, !llvm.loop !37

139:                                              ; preds = %136
  %140 = add nuw nsw i64 %11, 1
  %141 = icmp eq i64 %140, 130
  br i1 %141, label %142, label %10, !llvm.loop !38

142:                                              ; preds = %139
  %143 = fpext float %133 to double
  %144 = call double @sqrt(double noundef %143) #18
  %145 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %144) #16
  %146 = call i32 @fclose(ptr noundef %9) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @loadValue(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #9 {
  %3 = tail call i64 @fread(ptr noundef %1, i64 noundef 4, i64 noundef 1, ptr noundef %0) #16
  ret void
}

; Function Attrs: optsize
declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #11

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #14

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind optsize allocsize(0) }
attributes #16 = { optsize }
attributes #17 = { noreturn nounwind optsize }
attributes #18 = { nounwind optsize }
attributes #19 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"double", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !7, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = distinct !{!16, !14}
!17 = distinct !{!17, !14}
!18 = distinct !{!18, !14}
!19 = distinct !{!19, !14}
!20 = distinct !{!20, !14}
!21 = distinct !{!21, !14}
!22 = distinct !{!22, !14}
!23 = distinct !{!23, !14}
!24 = distinct !{!24, !14}
!25 = distinct !{!25, !14}
!26 = distinct !{!26, !14, !27, !28}
!27 = !{!"llvm.loop.isvectorized", i32 1}
!28 = !{!"llvm.loop.unroll.runtime.disable"}
!29 = distinct !{!29, !14, !27, !28}
!30 = distinct !{!30, !14}
!31 = !{!32, !32, i64 0}
!32 = !{!"float", !7, i64 0}
!33 = distinct !{!33, !14}
!34 = distinct !{!34, !14}
!35 = distinct !{!35, !14}
!36 = distinct !{!36, !14}
!37 = distinct !{!37, !14}
!38 = distinct !{!38, !14}
