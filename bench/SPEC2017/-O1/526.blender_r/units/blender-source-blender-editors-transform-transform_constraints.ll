; ModuleID = 'blender/source/blender/editors/transform/transform_constraints.c'
source_filename = "blender/source/blender/editors/transform/transform_constraints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.TransInfo = type { i32, i32, i32, i16, i32, float, float, ptr, ptr, i32, ptr, ptr, ptr, %struct.TransCon, %struct.TransSnap, %struct.NumInput, %struct.MouseInput, i32, float, [20 x i8], [3 x float], [2 x float], [2 x i32], i16, i16, [3 x float], i8, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i16, i16, i8, i8, [3 x float], [3 x [3 x float]], [3 x [3 x float]], [64 x i8], ptr, ptr, ptr, i16, i16, i16, i16, i16, [4 x float], [4 x float], [3 x float], [3 x float], i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i32], float, ptr, [3 x [3 x float]], ptr, ptr, ptr, ptr }
%struct.TransCon = type { i16, [50 x i8], [3 x [3 x float]], [3 x [3 x float]], [3 x [3 x float]], [3 x float], [2 x i32], i32, ptr, ptr, ptr, ptr }
%struct.TransSnap = type { i16, i16, i16, i16, i8, i8, i8, i8, i16, [3 x float], [3 x float], [3 x float], [3 x float], i8, %struct.ListBase, ptr, float, double, ptr, ptr, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.NumInput = type { i16, i32, [3 x i32], i8, i16, [3 x i16], [3 x float], [3 x float], [3 x float], i16, [64 x i8], i32 }
%struct.MouseInput = type { ptr, ptr, [2 x i32], i8, [2 x i32], [2 x float], float, ptr }
%struct.TransData = type { float, float, float, ptr, [3 x float], ptr, float, [3 x float], [3 x [3 x float]], [3 x [3 x float]], [3 x [3 x float]], ptr, ptr, ptr, ptr, ptr, i32, i16 }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.RegionView3D = type { [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [6 x [4 x float]], [6 x [4 x float]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [4 x float]], [4 x float], float, float, float, float, [3 x float], float, i8, i8, i8, i8, i8, [3 x i8], [2 x float], i16, i16, [4 x float], i16, i16, float, [3 x float], float, [3 x float] }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }

@.str = private unnamed_addr constant [7 x i8] c"global\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"view\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"gimbal\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c" locking %s X axis\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c" along %s X axis\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c" locking %s Y axis\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c" along %s Y axis\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c" locking %s Z axis\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c" along %s Z axis\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c" along Y axis\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c" along X axis\00", align 1
@switch.table.constraintModeToChar = private unnamed_addr constant [11 x i8] c"X\00Y\00Z\00Z\00Y\00X", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @constraintNumInput(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %4 = load i32, ptr %3, align 4, !tbaa !34
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %56, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !48
  %10 = and i32 %9, 512
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, float 0.000000e+00, float 1.000000e+00
  %13 = lshr i32 %4, 1
  %14 = and i32 %13, 1
  %15 = lshr i32 %4, 2
  %16 = and i32 %15, 1
  %17 = add nuw nsw i32 %14, %16
  %18 = lshr i32 %4, 3
  %19 = and i32 %18, 1
  %20 = add nuw nsw i32 %17, %19
  switch i32 %20, label %56 [
    i32 2, label %21
    i32 1, label %34
  ]

21:                                               ; preds = %7
  %22 = and i32 %4, 14
  switch i32 %22, label %56 [
    i32 6, label %23
    i32 12, label %25
    i32 10, label %30
  ]

23:                                               ; preds = %21
  %24 = getelementptr inbounds float, ptr %1, i64 2
  br label %54

25:                                               ; preds = %21
  %26 = getelementptr inbounds float, ptr %1, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !49
  %28 = getelementptr inbounds float, ptr %1, i64 2
  store float %27, ptr %28, align 4, !tbaa !49
  %29 = load float, ptr %1, align 4, !tbaa !49
  store float %29, ptr %26, align 4, !tbaa !49
  br label %54

30:                                               ; preds = %21
  %31 = getelementptr inbounds float, ptr %1, i64 1
  %32 = load float, ptr %31, align 4, !tbaa !49
  %33 = getelementptr inbounds float, ptr %1, i64 2
  store float %32, ptr %33, align 4, !tbaa !49
  br label %54

34:                                               ; preds = %7
  %35 = and i32 %4, 2
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds float, ptr %1, i64 1
  store float %12, ptr %38, align 4, !tbaa !49
  %39 = getelementptr inbounds float, ptr %1, i64 2
  br label %54

40:                                               ; preds = %34
  %41 = and i32 %4, 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = load float, ptr %1, align 4, !tbaa !49
  %45 = getelementptr inbounds float, ptr %1, i64 1
  store float %44, ptr %45, align 4, !tbaa !49
  store float %12, ptr %1, align 4, !tbaa !49
  %46 = getelementptr inbounds float, ptr %1, i64 2
  br label %54

47:                                               ; preds = %40
  %48 = and i32 %4, 8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %47
  %51 = load float, ptr %1, align 4, !tbaa !49
  %52 = getelementptr inbounds float, ptr %1, i64 2
  store float %51, ptr %52, align 4, !tbaa !49
  store float %12, ptr %1, align 4, !tbaa !49
  %53 = getelementptr inbounds float, ptr %1, i64 1
  br label %54

54:                                               ; preds = %23, %30, %25, %43, %50, %37
  %55 = phi ptr [ %39, %37 ], [ %53, %50 ], [ %46, %43 ], [ %1, %25 ], [ %31, %30 ], [ %24, %23 ]
  store float %12, ptr %55, align 4, !tbaa !49
  br label %56

56:                                               ; preds = %54, %7, %47, %21, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @getConstraintSpaceDimension(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %3 = load i32, ptr %2, align 4, !tbaa !34
  %4 = lshr i32 %3, 1
  %5 = and i32 %4, 1
  %6 = lshr i32 %3, 2
  %7 = and i32 %6, 1
  %8 = add nuw nsw i32 %5, %7
  %9 = lshr i32 %3, 3
  %10 = and i32 %9, 1
  %11 = add nuw nsw i32 %8, %10
  ret i32 %11
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @setConstraint(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #3 {
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1, i64 1
  %6 = tail call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef %3, i64 noundef 49) #9
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 2
  tail call void @copy_m3_m3(ptr noundef nonnull %7, ptr noundef %1) #9
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  store i32 %2, ptr %8, align 4, !tbaa !34
  tail call void @getConstraintMatrix(ptr noundef %0)
  %9 = load i32, ptr %8, align 4, !tbaa !34
  %10 = or i32 %9, 1
  store i32 %10, ptr %8, align 4, !tbaa !34
  %11 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1
  store i8 32, ptr %11, align 2, !tbaa !50
  %12 = lshr i32 %9, 1
  %13 = and i32 %12, 1
  %14 = lshr i32 %9, 2
  %15 = and i32 %14, 1
  %16 = lshr i32 %9, 3
  %17 = and i32 %16, 1
  %18 = add nsw i32 %15, -1
  %19 = add nsw i32 %18, %13
  %20 = add nsw i32 %19, %17
  %21 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 24
  %22 = load i16, ptr %21, align 2, !tbaa !51
  %23 = sext i16 %22 to i32
  %24 = tail call i32 @llvm.smin.i32(i32 %20, i32 %23)
  %25 = trunc i32 %24 to i16
  %26 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  store i16 %25, ptr %26, align 8, !tbaa !52
  %27 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 8
  store ptr null, ptr %27, align 8, !tbaa !53
  %28 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 9
  store ptr @applyAxisConstraintVec, ptr %28, align 8, !tbaa !54
  %29 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 10
  store ptr @applyAxisConstraintSize, ptr %29, align 8, !tbaa !55
  %30 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 11
  store ptr @applyAxisConstraintRot, ptr %30, align 8, !tbaa !56
  %31 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 17
  store i32 1, ptr %31, align 8, !tbaa !57
  ret void
}

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @copy_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @getConstraintMatrix(ptr noundef %0) local_unnamed_addr #3 {
  %2 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %2) #9
  %3 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 3
  %4 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 2
  %5 = tail call zeroext i8 @invert_m3_m3(ptr noundef nonnull %3, ptr noundef nonnull %4) #9
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 4
  tail call void @unit_m3(ptr noundef nonnull %6) #9
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %8 = load i32, ptr %7, align 4, !tbaa !34
  %9 = and i32 %8, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 4, i64 0, i64 2
  store float 0.000000e+00, ptr %12, align 4, !tbaa !49
  %13 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 4, i64 0, i64 1
  store float 0.000000e+00, ptr %13, align 4, !tbaa !49
  store float 0.000000e+00, ptr %6, align 4, !tbaa !49
  br label %14

14:                                               ; preds = %11, %1
  %15 = and i32 %8, 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 4, i64 1
  %19 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 4, i64 1, i64 2
  store float 0.000000e+00, ptr %19, align 4, !tbaa !49
  %20 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 4, i64 1, i64 1
  store float 0.000000e+00, ptr %20, align 4, !tbaa !49
  store float 0.000000e+00, ptr %18, align 4, !tbaa !49
  br label %21

21:                                               ; preds = %17, %14
  %22 = and i32 %8, 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 4, i64 2
  %26 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 4, i64 2, i64 2
  store float 0.000000e+00, ptr %26, align 4, !tbaa !49
  %27 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 4, i64 2, i64 1
  store float 0.000000e+00, ptr %27, align 4, !tbaa !49
  store float 0.000000e+00, ptr %25, align 4, !tbaa !49
  br label %28

28:                                               ; preds = %24, %21
  call void @mul_m3_m3m3(ptr noundef nonnull %2, ptr noundef nonnull %6, ptr noundef nonnull %3) #9
  call void @mul_m3_m3m3(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %2) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @startConstraint(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %3 = load i32, ptr %2, align 4, !tbaa !34
  %4 = or i32 %3, 1
  store i32 %4, ptr %2, align 4, !tbaa !34
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1
  store i8 32, ptr %5, align 2, !tbaa !50
  %6 = lshr i32 %3, 1
  %7 = and i32 %6, 1
  %8 = lshr i32 %3, 2
  %9 = and i32 %8, 1
  %10 = lshr i32 %3, 3
  %11 = and i32 %10, 1
  %12 = add nsw i32 %9, -1
  %13 = add nsw i32 %12, %7
  %14 = add nsw i32 %13, %11
  %15 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 24
  %16 = load i16, ptr %15, align 2, !tbaa !51
  %17 = sext i16 %16 to i32
  %18 = tail call i32 @llvm.smin.i32(i32 %14, i32 %17)
  %19 = trunc i32 %18 to i16
  %20 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  store i16 %19, ptr %20, align 8, !tbaa !52
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @applyAxisConstraintVec(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef writeonly %4) #3 {
  %6 = alloca [3 x float], align 4
  %7 = load float, ptr %2, align 4, !tbaa !49
  store float %7, ptr %3, align 4, !tbaa !49
  %8 = getelementptr inbounds float, ptr %2, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !49
  %10 = getelementptr inbounds float, ptr %3, i64 1
  store float %9, ptr %10, align 4, !tbaa !49
  %11 = getelementptr inbounds float, ptr %2, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !49
  %13 = getelementptr inbounds float, ptr %3, i64 2
  store float %12, ptr %13, align 4, !tbaa !49
  %14 = icmp eq ptr %1, null
  br i1 %14, label %15, label %84

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %17 = load i32, ptr %16, align 4, !tbaa !34
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %84, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 4
  tail call void @mul_m3_v3(ptr noundef nonnull %21, ptr noundef nonnull %3) #9
  %22 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14
  %23 = load i16, ptr %22, align 8, !tbaa !58
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = tail call zeroext i8 @activeSnap(ptr noundef %0) #9
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %83

28:                                               ; preds = %25, %20
  %29 = load i32, ptr %16, align 4, !tbaa !34
  %30 = lshr i32 %29, 1
  %31 = and i32 %30, 1
  %32 = lshr i32 %29, 2
  %33 = and i32 %32, 1
  %34 = add nuw nsw i32 %31, %33
  %35 = lshr i32 %29, 3
  %36 = and i32 %35, 1
  %37 = add nuw nsw i32 %34, %36
  switch i32 %37, label %83 [
    i32 2, label %38
    i32 1, label %48
  ]

38:                                               ; preds = %28
  %39 = load float, ptr %3, align 4, !tbaa !49
  %40 = fcmp une float %39, 0.000000e+00
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = load float, ptr %10, align 4, !tbaa !49
  %43 = fcmp une float %42, 0.000000e+00
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load float, ptr %13, align 4, !tbaa !49
  %46 = fcmp une float %45, 0.000000e+00
  br i1 %46, label %47, label %83

47:                                               ; preds = %44, %41, %38
  tail call fastcc void @planeProjection(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3)
  br label %83

48:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #9
  %49 = and i32 %29, 2
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 2
  %53 = load float, ptr %52, align 4, !tbaa !49
  store float %53, ptr %6, align 4, !tbaa !49
  %54 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 2, i64 0, i64 1
  %55 = load float, ptr %54, align 4, !tbaa !49
  %56 = getelementptr inbounds float, ptr %6, i64 1
  store float %55, ptr %56, align 4, !tbaa !49
  %57 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 2, i64 0, i64 2
  br label %78

58:                                               ; preds = %48
  %59 = and i32 %29, 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 2, i64 1
  %63 = load float, ptr %62, align 4, !tbaa !49
  store float %63, ptr %6, align 4, !tbaa !49
  %64 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 2, i64 1, i64 1
  %65 = load float, ptr %64, align 4, !tbaa !49
  %66 = getelementptr inbounds float, ptr %6, i64 1
  store float %65, ptr %66, align 4, !tbaa !49
  %67 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 2, i64 1, i64 2
  br label %78

68:                                               ; preds = %58
  %69 = and i32 %29, 8
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %82, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 2, i64 2
  %73 = load float, ptr %72, align 4, !tbaa !49
  store float %73, ptr %6, align 4, !tbaa !49
  %74 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 2, i64 2, i64 1
  %75 = load float, ptr %74, align 4, !tbaa !49
  %76 = getelementptr inbounds float, ptr %6, i64 1
  store float %75, ptr %76, align 4, !tbaa !49
  %77 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 2, i64 2, i64 2
  br label %78

78:                                               ; preds = %51, %71, %61
  %79 = phi ptr [ %67, %61 ], [ %77, %71 ], [ %57, %51 ]
  %80 = load float, ptr %79, align 4, !tbaa !49
  %81 = getelementptr inbounds float, ptr %6, i64 2
  store float %80, ptr %81, align 4, !tbaa !49
  br label %82

82:                                               ; preds = %78, %68
  call fastcc void @axisProjection(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %2, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #9
  br label %83

83:                                               ; preds = %28, %47, %44, %82, %25
  call fastcc void @postConstraintChecks(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %4)
  br label %84

84:                                               ; preds = %83, %15, %5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @applyAxisConstraintSize(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2) #3 {
  %4 = alloca [3 x [3 x float]], align 16
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %28

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %8 = load i32, ptr %7, align 4, !tbaa !34
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %28, label %11

11:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #9
  %12 = and i32 %8, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store float 1.000000e+00, ptr %2, align 4, !tbaa !49
  br label %15

15:                                               ; preds = %14, %11
  %16 = and i32 %8, 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = getelementptr inbounds [3 x float], ptr %2, i64 1, i64 1
  store float 1.000000e+00, ptr %19, align 4, !tbaa !49
  br label %20

20:                                               ; preds = %18, %15
  %21 = and i32 %8, 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = getelementptr inbounds [3 x float], ptr %2, i64 2, i64 2
  store float 1.000000e+00, ptr %24, align 4, !tbaa !49
  br label %25

25:                                               ; preds = %23, %20
  %26 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 3
  call void @mul_m3_m3m3(ptr noundef nonnull %4, ptr noundef %2, ptr noundef nonnull %26) #9
  %27 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 2
  call void @mul_m3_m3m3(ptr noundef %2, ptr noundef nonnull %27, ptr noundef nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #9
  br label %28

28:                                               ; preds = %25, %6, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @applyAxisConstraintRot(ptr noundef %0, ptr noundef readnone %1, ptr nocapture noundef %2, ptr noundef %3) #3 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %63

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %8 = load i32, ptr %7, align 4, !tbaa !34
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %63, label %11

11:                                               ; preds = %6
  %12 = and i32 %8, 14
  switch i32 %12, label %38 [
    i32 2, label %13
    i32 12, label %13
    i32 4, label %20
    i32 10, label %20
    i32 8, label %27
    i32 6, label %27
  ]

13:                                               ; preds = %11, %11
  %14 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 2
  %15 = load float, ptr %14, align 4, !tbaa !49
  store float %15, ptr %2, align 4, !tbaa !49
  %16 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 2, i64 0, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !49
  %18 = getelementptr inbounds float, ptr %2, i64 1
  store float %17, ptr %18, align 4, !tbaa !49
  %19 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 2, i64 0, i64 2
  br label %34

20:                                               ; preds = %11, %11
  %21 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 2, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !49
  store float %22, ptr %2, align 4, !tbaa !49
  %23 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 2, i64 1, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !49
  %25 = getelementptr inbounds float, ptr %2, i64 1
  store float %24, ptr %25, align 4, !tbaa !49
  %26 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 2, i64 1, i64 2
  br label %34

27:                                               ; preds = %11, %11
  %28 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 2, i64 2
  %29 = load float, ptr %28, align 4, !tbaa !49
  store float %29, ptr %2, align 4, !tbaa !49
  %30 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 2, i64 2, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !49
  %32 = getelementptr inbounds float, ptr %2, i64 1
  store float %31, ptr %32, align 4, !tbaa !49
  %33 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 2, i64 2, i64 2
  br label %34

34:                                               ; preds = %13, %20, %27
  %35 = phi ptr [ %33, %27 ], [ %26, %20 ], [ %19, %13 ]
  %36 = load float, ptr %35, align 4, !tbaa !49
  %37 = getelementptr inbounds float, ptr %2, i64 2
  store float %36, ptr %37, align 4, !tbaa !49
  br label %38

38:                                               ; preds = %34, %11
  %39 = icmp eq ptr %3, null
  br i1 %39, label %63, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %42 = tail call zeroext i8 @hasNumInput(ptr noundef nonnull %41) #9
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 28, i64 2
  %46 = load float, ptr %2, align 4, !tbaa !49
  %47 = load float, ptr %45, align 4, !tbaa !49
  %48 = getelementptr inbounds float, ptr %2, i64 1
  %49 = load float, ptr %48, align 4, !tbaa !49
  %50 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 28, i64 2, i64 1
  %51 = load float, ptr %50, align 4, !tbaa !49
  %52 = fmul float %49, %51
  %53 = tail call float @llvm.fmuladd.f32(float %46, float %47, float %52)
  %54 = getelementptr inbounds float, ptr %2, i64 2
  %55 = load float, ptr %54, align 4, !tbaa !49
  %56 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 28, i64 2, i64 2
  %57 = load float, ptr %56, align 4, !tbaa !49
  %58 = tail call float @llvm.fmuladd.f32(float %55, float %57, float %53)
  %59 = fcmp ogt float %58, 0.000000e+00
  br i1 %59, label %60, label %63

60:                                               ; preds = %44
  %61 = load float, ptr %3, align 4, !tbaa !49
  %62 = fneg float %61
  store float %62, ptr %3, align 4, !tbaa !49
  br label %63

63:                                               ; preds = %38, %40, %60, %44, %6, %4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @setAxisMatrixConstraint(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #3 {
  %4 = alloca [3 x [3 x float]], align 16
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %6 = load i32, ptr %5, align 8, !tbaa !59
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %50

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #9
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !48
  %11 = and i32 %10, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 64
  %15 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %16 = load ptr, ptr %15, align 8, !tbaa !60
  %17 = getelementptr inbounds %struct.TransData, ptr %16, i64 0, i32 10
  call void @mul_m3_m3m3(ptr noundef nonnull %4, ptr noundef nonnull %14, ptr noundef nonnull %17) #9
  br label %22

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %20 = load ptr, ptr %19, align 8, !tbaa !60
  %21 = getelementptr inbounds %struct.TransData, ptr %20, i64 0, i32 10
  call void @copy_m3_m3(ptr noundef nonnull %4, ptr noundef nonnull %21) #9
  br label %22

22:                                               ; preds = %18, %13
  %23 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1, i64 1
  %24 = call ptr @BLI_strncpy(ptr noundef nonnull %23, ptr noundef %2, i64 noundef 49) #9
  %25 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 2
  call void @copy_m3_m3(ptr noundef nonnull %25, ptr noundef nonnull %4) #9
  %26 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  store i32 %1, ptr %26, align 4, !tbaa !34
  call void @getConstraintMatrix(ptr noundef %0)
  %27 = load i32, ptr %26, align 4, !tbaa !34
  %28 = or i32 %27, 1
  store i32 %28, ptr %26, align 4, !tbaa !34
  %29 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1
  store i8 32, ptr %29, align 2, !tbaa !50
  %30 = lshr i32 %27, 1
  %31 = and i32 %30, 1
  %32 = lshr i32 %27, 2
  %33 = and i32 %32, 1
  %34 = lshr i32 %27, 3
  %35 = and i32 %34, 1
  %36 = add nsw i32 %33, -1
  %37 = add nsw i32 %36, %31
  %38 = add nsw i32 %37, %35
  %39 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 24
  %40 = load i16, ptr %39, align 2, !tbaa !51
  %41 = sext i16 %40 to i32
  %42 = call i32 @llvm.smin.i32(i32 %38, i32 %41)
  %43 = trunc i32 %42 to i16
  %44 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  store i16 %43, ptr %44, align 8, !tbaa !52
  %45 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 8
  store ptr null, ptr %45, align 8, !tbaa !53
  %46 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 9
  store ptr @applyAxisConstraintVec, ptr %46, align 8, !tbaa !54
  %47 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 10
  store ptr @applyAxisConstraintSize, ptr %47, align 8, !tbaa !55
  %48 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 11
  store ptr @applyAxisConstraintRot, ptr %48, align 8, !tbaa !56
  %49 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 17
  store i32 1, ptr %49, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #9
  br label %81

50:                                               ; preds = %3
  %51 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1, i64 1
  %52 = tail call ptr @BLI_strncpy(ptr noundef nonnull %51, ptr noundef %2, i64 noundef 49) #9
  %53 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 2
  %54 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %55 = load ptr, ptr %54, align 8, !tbaa !60
  %56 = getelementptr inbounds %struct.TransData, ptr %55, i64 0, i32 10
  tail call void @copy_m3_m3(ptr noundef nonnull %53, ptr noundef nonnull %56) #9
  %57 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  store i32 %1, ptr %57, align 4, !tbaa !34
  tail call void @getConstraintMatrix(ptr noundef %0)
  %58 = load i32, ptr %57, align 4, !tbaa !34
  %59 = or i32 %58, 1
  store i32 %59, ptr %57, align 4, !tbaa !34
  %60 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1
  store i8 32, ptr %60, align 2, !tbaa !50
  %61 = lshr i32 %58, 1
  %62 = and i32 %61, 1
  %63 = lshr i32 %58, 2
  %64 = and i32 %63, 1
  %65 = lshr i32 %58, 3
  %66 = and i32 %65, 1
  %67 = add nsw i32 %64, -1
  %68 = add nsw i32 %67, %62
  %69 = add nsw i32 %68, %66
  %70 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 24
  %71 = load i16, ptr %70, align 2, !tbaa !51
  %72 = sext i16 %71 to i32
  %73 = tail call i32 @llvm.smin.i32(i32 %69, i32 %72)
  %74 = trunc i32 %73 to i16
  %75 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  store i16 %74, ptr %75, align 8, !tbaa !52
  %76 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 8
  store ptr @drawObjectConstraint, ptr %76, align 8, !tbaa !53
  %77 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 9
  store ptr @applyObjectConstraintVec, ptr %77, align 8, !tbaa !54
  %78 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 10
  store ptr @applyObjectConstraintSize, ptr %78, align 8, !tbaa !55
  %79 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 11
  store ptr @applyObjectConstraintRot, ptr %79, align 8, !tbaa !56
  %80 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 17
  store i32 1, ptr %80, align 8, !tbaa !57
  br label %81

81:                                               ; preds = %50, %22
  ret void
}

declare void @mul_m3_m3m3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal void @drawObjectConstraint(ptr noundef %0) #3 {
  %2 = alloca [3 x [3 x float]], align 16
  %3 = alloca [3 x float], align 4
  %4 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %2) #9
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %7 = load i32, ptr %6, align 8, !tbaa !59
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %93

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %11 = getelementptr inbounds float, ptr %3, i64 1
  %12 = getelementptr inbounds float, ptr %3, i64 2
  %13 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %14 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 64
  %15 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 39
  %16 = getelementptr inbounds float, ptr %3, i64 1
  %17 = getelementptr inbounds float, ptr %3, i64 2
  %18 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  br label %19

19:                                               ; preds = %9, %88
  %20 = phi i32 [ 0, %9 ], [ %89, %88 ]
  %21 = phi ptr [ %5, %9 ], [ %90, %88 ]
  %22 = phi i16 [ 1, %9 ], [ %86, %88 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  %23 = load i32, ptr %10, align 4, !tbaa !48
  %24 = and i32 %23, 2048
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.TransData, ptr %21, i64 0, i32 2
  %28 = load float, ptr %27, align 8, !tbaa !61
  %29 = fcmp oeq float %28, 0.000000e+00
  br i1 %29, label %85, label %30

30:                                               ; preds = %26, %19
  %31 = and i32 %23, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.TransData, ptr %21, i64 0, i32 11
  %35 = load ptr, ptr %34, align 8, !tbaa !63
  %36 = getelementptr inbounds %struct.Object, ptr %35, i64 0, i32 47, i64 3
  %37 = load float, ptr %36, align 4, !tbaa !49
  store float %37, ptr %3, align 4, !tbaa !49
  %38 = getelementptr inbounds %struct.Object, ptr %35, i64 0, i32 47, i64 3, i64 1
  %39 = load float, ptr %38, align 4, !tbaa !49
  store float %39, ptr %11, align 4, !tbaa !49
  %40 = getelementptr inbounds %struct.Object, ptr %35, i64 0, i32 47, i64 3, i64 2
  %41 = load float, ptr %40, align 4, !tbaa !49
  store float %41, ptr %12, align 4, !tbaa !49
  %42 = getelementptr inbounds %struct.TransData, ptr %21, i64 0, i32 10
  br label %67

43:                                               ; preds = %30
  %44 = and i32 %23, 2
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = load ptr, ptr %13, align 8, !tbaa !64
  %48 = getelementptr inbounds %struct.Object, ptr %47, i64 0, i32 47
  %49 = getelementptr inbounds %struct.TransData, ptr %21, i64 0, i32 7
  call void @mul_v3_m4v3(ptr noundef nonnull %3, ptr noundef nonnull %48, ptr noundef nonnull %49) #9
  %50 = getelementptr inbounds %struct.TransData, ptr %21, i64 0, i32 10
  call void @mul_m3_m3m3(ptr noundef nonnull %2, ptr noundef nonnull %14, ptr noundef nonnull %50) #9
  br label %67

51:                                               ; preds = %43
  %52 = and i32 %23, 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %51
  %55 = load ptr, ptr %15, align 8, !tbaa !65
  %56 = getelementptr inbounds %struct.Object, ptr %55, i64 0, i32 47
  %57 = getelementptr inbounds %struct.TransData, ptr %21, i64 0, i32 7
  call void @mul_v3_m4v3(ptr noundef nonnull %3, ptr noundef nonnull %56, ptr noundef nonnull %57) #9
  %58 = getelementptr inbounds %struct.TransData, ptr %21, i64 0, i32 10
  br label %67

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.TransData, ptr %21, i64 0, i32 7
  %61 = load float, ptr %60, align 4, !tbaa !49
  store float %61, ptr %3, align 4, !tbaa !49
  %62 = getelementptr inbounds %struct.TransData, ptr %21, i64 0, i32 7, i64 1
  %63 = load float, ptr %62, align 4, !tbaa !49
  store float %63, ptr %16, align 4, !tbaa !49
  %64 = getelementptr inbounds %struct.TransData, ptr %21, i64 0, i32 7, i64 2
  %65 = load float, ptr %64, align 4, !tbaa !49
  store float %65, ptr %17, align 4, !tbaa !49
  %66 = getelementptr inbounds %struct.TransData, ptr %21, i64 0, i32 10
  br label %67

67:                                               ; preds = %46, %59, %54, %33
  %68 = phi ptr [ %42, %33 ], [ %2, %46 ], [ %58, %54 ], [ %66, %59 ]
  %69 = load i32, ptr %18, align 4, !tbaa !34
  %70 = and i32 %69, 2
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %67
  call void @drawLine(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %68, i8 noundef zeroext 88, i16 noundef signext %22) #9
  br label %73

73:                                               ; preds = %72, %67
  %74 = load i32, ptr %18, align 4, !tbaa !34
  %75 = and i32 %74, 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds [3 x float], ptr %68, i64 1
  call void @drawLine(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %78, i8 noundef zeroext 89, i16 noundef signext %22) #9
  br label %79

79:                                               ; preds = %77, %73
  %80 = load i32, ptr %18, align 4, !tbaa !34
  %81 = and i32 %80, 8
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds [3 x float], ptr %68, i64 2
  call void @drawLine(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %84, i8 noundef zeroext 90, i16 noundef signext %22) #9
  br label %85

85:                                               ; preds = %79, %83, %26
  %86 = phi i16 [ %22, %26 ], [ 0, %83 ], [ 0, %79 ]
  %87 = phi i1 [ false, %26 ], [ true, %83 ], [ true, %79 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = add nuw nsw i32 %20, 1
  %90 = getelementptr inbounds %struct.TransData, ptr %21, i64 1
  %91 = load i32, ptr %6, align 8, !tbaa !59
  %92 = icmp slt i32 %89, %91
  br i1 %92, label %19, label %93, !llvm.loop !66

93:                                               ; preds = %88, %85, %1
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %2) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @applyObjectConstraintVec(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) #3 {
  %6 = alloca [3 x float], align 4
  %7 = load float, ptr %2, align 4, !tbaa !49
  store float %7, ptr %3, align 4, !tbaa !49
  %8 = getelementptr inbounds float, ptr %2, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !49
  %10 = getelementptr inbounds float, ptr %3, i64 1
  store float %9, ptr %10, align 4, !tbaa !49
  %11 = getelementptr inbounds float, ptr %2, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !49
  %13 = getelementptr inbounds float, ptr %3, i64 2
  store float %12, ptr %13, align 4, !tbaa !49
  %14 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %15 = load i32, ptr %14, align 4, !tbaa !34
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %112, label %18

18:                                               ; preds = %5
  %19 = icmp eq ptr %1, null
  br i1 %19, label %20, label %82

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 4
  tail call void @mul_m3_v3(ptr noundef nonnull %21, ptr noundef nonnull %3) #9
  %22 = load i32, ptr %14, align 4, !tbaa !34
  %23 = lshr i32 %22, 1
  %24 = and i32 %23, 1
  %25 = lshr i32 %22, 2
  %26 = and i32 %25, 1
  %27 = add nuw nsw i32 %24, %26
  %28 = lshr i32 %22, 3
  %29 = and i32 %28, 1
  %30 = add nuw nsw i32 %27, %29
  switch i32 %30, label %76 [
    i32 2, label %31
    i32 1, label %41
  ]

31:                                               ; preds = %20
  %32 = load float, ptr %3, align 4, !tbaa !49
  %33 = fcmp une float %32, 0.000000e+00
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  %35 = load float, ptr %10, align 4, !tbaa !49
  %36 = fcmp une float %35, 0.000000e+00
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load float, ptr %13, align 4, !tbaa !49
  %39 = fcmp une float %38, 0.000000e+00
  br i1 %39, label %40, label %76

40:                                               ; preds = %37, %34, %31
  tail call fastcc void @planeProjection(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3)
  br label %76

41:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #9
  %42 = and i32 %22, 2
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 2
  %46 = load float, ptr %45, align 4, !tbaa !49
  store float %46, ptr %6, align 4, !tbaa !49
  %47 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 2, i64 0, i64 1
  %48 = load float, ptr %47, align 4, !tbaa !49
  %49 = getelementptr inbounds float, ptr %6, i64 1
  store float %48, ptr %49, align 4, !tbaa !49
  %50 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 2, i64 0, i64 2
  br label %71

51:                                               ; preds = %41
  %52 = and i32 %22, 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 2, i64 1
  %56 = load float, ptr %55, align 4, !tbaa !49
  store float %56, ptr %6, align 4, !tbaa !49
  %57 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 2, i64 1, i64 1
  %58 = load float, ptr %57, align 4, !tbaa !49
  %59 = getelementptr inbounds float, ptr %6, i64 1
  store float %58, ptr %59, align 4, !tbaa !49
  %60 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 2, i64 1, i64 2
  br label %71

61:                                               ; preds = %51
  %62 = and i32 %22, 8
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %75, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 2, i64 2
  %66 = load float, ptr %65, align 4, !tbaa !49
  store float %66, ptr %6, align 4, !tbaa !49
  %67 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 2, i64 2, i64 1
  %68 = load float, ptr %67, align 4, !tbaa !49
  %69 = getelementptr inbounds float, ptr %6, i64 1
  store float %68, ptr %69, align 4, !tbaa !49
  %70 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 2, i64 2, i64 2
  br label %71

71:                                               ; preds = %44, %64, %54
  %72 = phi ptr [ %60, %54 ], [ %70, %64 ], [ %50, %44 ]
  %73 = load float, ptr %72, align 4, !tbaa !49
  %74 = getelementptr inbounds float, ptr %6, i64 2
  store float %73, ptr %74, align 4, !tbaa !49
  br label %75

75:                                               ; preds = %71, %61
  call fastcc void @axisProjection(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %2, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #9
  br label %76

76:                                               ; preds = %20, %75, %37, %40
  call fastcc void @postConstraintChecks(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %4)
  %77 = load float, ptr %4, align 4, !tbaa !49
  store float %77, ptr %3, align 4, !tbaa !49
  %78 = getelementptr inbounds float, ptr %4, i64 1
  %79 = load float, ptr %78, align 4, !tbaa !49
  store float %79, ptr %10, align 4, !tbaa !49
  %80 = getelementptr inbounds float, ptr %4, i64 2
  %81 = load float, ptr %80, align 4, !tbaa !49
  store float %81, ptr %13, align 4, !tbaa !49
  br label %112

82:                                               ; preds = %18
  store float 0.000000e+00, ptr %13, align 4, !tbaa !49
  store float 0.000000e+00, ptr %10, align 4, !tbaa !49
  store float 0.000000e+00, ptr %3, align 4, !tbaa !49
  %83 = and i32 %15, 2
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %82
  %86 = load float, ptr %2, align 4, !tbaa !49
  store float %86, ptr %3, align 4, !tbaa !49
  br label %87

87:                                               ; preds = %85, %82
  %88 = phi i32 [ 1, %85 ], [ 0, %82 ]
  %89 = and i32 %15, 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %87
  %92 = add nuw nsw i32 %88, 1
  %93 = zext nneg i32 %88 to i64
  %94 = getelementptr inbounds float, ptr %2, i64 %93
  %95 = load float, ptr %94, align 4, !tbaa !49
  store float %95, ptr %10, align 4, !tbaa !49
  br label %96

96:                                               ; preds = %91, %87
  %97 = phi i32 [ %92, %91 ], [ %88, %87 ]
  %98 = and i32 %15, 8
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %96
  %101 = zext nneg i32 %97 to i64
  %102 = getelementptr inbounds float, ptr %2, i64 %101
  %103 = load float, ptr %102, align 4, !tbaa !49
  store float %103, ptr %13, align 4, !tbaa !49
  br label %104

104:                                              ; preds = %100, %96
  %105 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 10
  tail call void @mul_m3_v3(ptr noundef nonnull %105, ptr noundef nonnull %3) #9
  %106 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %107 = load i32, ptr %106, align 4, !tbaa !48
  %108 = and i32 %107, 2
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %104
  %111 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 64
  tail call void @mul_m3_v3(ptr noundef nonnull %111, ptr noundef nonnull %3) #9
  br label %112

112:                                              ; preds = %104, %110, %76, %5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @applyObjectConstraintSize(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3 {
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca [3 x [3 x float]], align 16
  %6 = icmp eq ptr %1, null
  br i1 %6, label %37, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %9 = load i32, ptr %8, align 4, !tbaa !34
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %37, label %12

12:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #9
  %13 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 10
  %14 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %5, ptr noundef nonnull %13) #9
  %15 = load i32, ptr %8, align 4, !tbaa !34
  %16 = and i32 %15, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store float 1.000000e+00, ptr %2, align 4, !tbaa !49
  br label %19

19:                                               ; preds = %18, %12
  %20 = and i32 %15, 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = getelementptr inbounds [3 x float], ptr %2, i64 1, i64 1
  store float 1.000000e+00, ptr %23, align 4, !tbaa !49
  br label %24

24:                                               ; preds = %22, %19
  %25 = and i32 %15, 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = getelementptr inbounds [3 x float], ptr %2, i64 2, i64 2
  store float 1.000000e+00, ptr %28, align 4, !tbaa !49
  br label %29

29:                                               ; preds = %27, %24
  call void @mul_m3_m3m3(ptr noundef nonnull %4, ptr noundef %2, ptr noundef nonnull %5) #9
  %30 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !48
  %32 = and i32 %31, 2
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 64
  call void @mul_m3_m3m3(ptr noundef %2, ptr noundef nonnull %35, ptr noundef %2) #9
  br label %36

36:                                               ; preds = %34, %29
  call void @mul_m3_m3m3(ptr noundef %2, ptr noundef nonnull %13, ptr noundef nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #9
  br label %37

37:                                               ; preds = %36, %7, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @applyObjectConstraintRot(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr noundef %3) #3 {
  %5 = alloca [3 x [3 x float]], align 16
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %7 = load i32, ptr %6, align 4, !tbaa !34
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %79, label %10

10:                                               ; preds = %4
  %11 = and i32 %7, 14
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #9
  %12 = icmp eq ptr %1, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %15 = load ptr, ptr %14, align 8, !tbaa !60
  br label %16

16:                                               ; preds = %13, %10
  %17 = phi ptr [ %15, %13 ], [ %1, %10 ]
  %18 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !48
  %20 = and i32 %19, 2
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 64
  %24 = getelementptr inbounds %struct.TransData, ptr %17, i64 0, i32 10
  call void @mul_m3_m3m3(ptr noundef nonnull %5, ptr noundef nonnull %23, ptr noundef nonnull %24) #9
  br label %27

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.TransData, ptr %17, i64 0, i32 10
  br label %27

27:                                               ; preds = %25, %22
  %28 = phi ptr [ %5, %22 ], [ %26, %25 ]
  switch i32 %11, label %53 [
    i32 2, label %29
    i32 12, label %29
    i32 4, label %35
    i32 10, label %35
    i32 8, label %42
    i32 6, label %42
  ]

29:                                               ; preds = %27, %27
  %30 = load float, ptr %28, align 4, !tbaa !49
  store float %30, ptr %2, align 4, !tbaa !49
  %31 = getelementptr inbounds float, ptr %28, i64 1
  %32 = load float, ptr %31, align 4, !tbaa !49
  %33 = getelementptr inbounds float, ptr %2, i64 1
  store float %32, ptr %33, align 4, !tbaa !49
  %34 = getelementptr inbounds float, ptr %28, i64 2
  br label %49

35:                                               ; preds = %27, %27
  %36 = getelementptr inbounds [3 x float], ptr %28, i64 1
  %37 = load float, ptr %36, align 4, !tbaa !49
  store float %37, ptr %2, align 4, !tbaa !49
  %38 = getelementptr inbounds [3 x float], ptr %28, i64 1, i64 1
  %39 = load float, ptr %38, align 4, !tbaa !49
  %40 = getelementptr inbounds float, ptr %2, i64 1
  store float %39, ptr %40, align 4, !tbaa !49
  %41 = getelementptr inbounds [3 x float], ptr %28, i64 1, i64 2
  br label %49

42:                                               ; preds = %27, %27
  %43 = getelementptr inbounds [3 x float], ptr %28, i64 2
  %44 = load float, ptr %43, align 4, !tbaa !49
  store float %44, ptr %2, align 4, !tbaa !49
  %45 = getelementptr inbounds [3 x float], ptr %28, i64 2, i64 1
  %46 = load float, ptr %45, align 4, !tbaa !49
  %47 = getelementptr inbounds float, ptr %2, i64 1
  store float %46, ptr %47, align 4, !tbaa !49
  %48 = getelementptr inbounds [3 x float], ptr %28, i64 2, i64 2
  br label %49

49:                                               ; preds = %29, %35, %42
  %50 = phi ptr [ %48, %42 ], [ %41, %35 ], [ %34, %29 ]
  %51 = load float, ptr %50, align 4, !tbaa !49
  %52 = getelementptr inbounds float, ptr %2, i64 2
  store float %51, ptr %52, align 4, !tbaa !49
  br label %53

53:                                               ; preds = %49, %27
  %54 = icmp eq ptr %3, null
  br i1 %54, label %78, label %55

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %57 = call zeroext i8 @hasNumInput(ptr noundef nonnull %56) #9
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %78

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 28, i64 2
  %61 = load float, ptr %2, align 4, !tbaa !49
  %62 = load float, ptr %60, align 4, !tbaa !49
  %63 = getelementptr inbounds float, ptr %2, i64 1
  %64 = load float, ptr %63, align 4, !tbaa !49
  %65 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 28, i64 2, i64 1
  %66 = load float, ptr %65, align 4, !tbaa !49
  %67 = fmul float %64, %66
  %68 = call float @llvm.fmuladd.f32(float %61, float %62, float %67)
  %69 = getelementptr inbounds float, ptr %2, i64 2
  %70 = load float, ptr %69, align 4, !tbaa !49
  %71 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 28, i64 2, i64 2
  %72 = load float, ptr %71, align 4, !tbaa !49
  %73 = call float @llvm.fmuladd.f32(float %70, float %72, float %68)
  %74 = fcmp ogt float %73, 0.000000e+00
  br i1 %74, label %75, label %78

75:                                               ; preds = %59
  %76 = load float, ptr %3, align 4, !tbaa !49
  %77 = fneg float %76
  store float %77, ptr %3, align 4, !tbaa !49
  br label %78

78:                                               ; preds = %59, %75, %55, %53
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #9
  br label %79

79:                                               ; preds = %78, %4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @setLocalConstraint(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !48
  %6 = and i32 %5, 2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %37, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 64
  %10 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1, i64 1
  %11 = tail call ptr @BLI_strncpy(ptr noundef nonnull %10, ptr noundef %2, i64 noundef 49) #9
  %12 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 2
  tail call void @copy_m3_m3(ptr noundef nonnull %12, ptr noundef nonnull %9) #9
  %13 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  store i32 %1, ptr %13, align 4, !tbaa !34
  tail call void @getConstraintMatrix(ptr noundef %0)
  %14 = load i32, ptr %13, align 4, !tbaa !34
  %15 = or i32 %14, 1
  store i32 %15, ptr %13, align 4, !tbaa !34
  %16 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1
  store i8 32, ptr %16, align 2, !tbaa !50
  %17 = lshr i32 %14, 1
  %18 = and i32 %17, 1
  %19 = lshr i32 %14, 2
  %20 = and i32 %19, 1
  %21 = lshr i32 %14, 3
  %22 = and i32 %21, 1
  %23 = add nsw i32 %20, -1
  %24 = add nsw i32 %23, %18
  %25 = add nsw i32 %24, %22
  %26 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 24
  %27 = load i16, ptr %26, align 2, !tbaa !51
  %28 = sext i16 %27 to i32
  %29 = tail call i32 @llvm.smin.i32(i32 %25, i32 %28)
  %30 = trunc i32 %29 to i16
  %31 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  store i16 %30, ptr %31, align 8, !tbaa !52
  %32 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 8
  store ptr null, ptr %32, align 8, !tbaa !53
  %33 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 9
  store ptr @applyAxisConstraintVec, ptr %33, align 8, !tbaa !54
  %34 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 10
  store ptr @applyAxisConstraintSize, ptr %34, align 8, !tbaa !55
  %35 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 11
  store ptr @applyAxisConstraintRot, ptr %35, align 8, !tbaa !56
  %36 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 17
  store i32 1, ptr %36, align 8, !tbaa !57
  br label %38

37:                                               ; preds = %3
  tail call void @setAxisMatrixConstraint(ptr noundef %0, i32 noundef %1, ptr noundef %2)
  br label %38

38:                                               ; preds = %37, %8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @setUserConstraint(ptr noundef %0, i16 noundef signext %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #3 {
  %5 = alloca [40 x i8], align 16
  %6 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #9
  switch i16 %1, label %166 [
    i16 0, label %7
    i16 1, label %36
    i16 2, label %72
    i16 3, label %106
    i16 4, label %136
  ]

7:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #9
  %8 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 40, ptr noundef %3, ptr noundef nonnull @.str) #9
  call void @unit_m3(ptr noundef nonnull %6) #9
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1, i64 1
  %10 = call ptr @BLI_strncpy(ptr noundef nonnull %9, ptr noundef nonnull %5, i64 noundef 49) #9
  %11 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 2
  call void @copy_m3_m3(ptr noundef nonnull %11, ptr noundef nonnull %6) #9
  %12 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  store i32 %2, ptr %12, align 4, !tbaa !34
  call void @getConstraintMatrix(ptr noundef %0)
  %13 = load i32, ptr %12, align 4, !tbaa !34
  %14 = or i32 %13, 1
  store i32 %14, ptr %12, align 4, !tbaa !34
  %15 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1
  store i8 32, ptr %15, align 2, !tbaa !50
  %16 = lshr i32 %13, 1
  %17 = and i32 %16, 1
  %18 = lshr i32 %13, 2
  %19 = and i32 %18, 1
  %20 = lshr i32 %13, 3
  %21 = and i32 %20, 1
  %22 = add nsw i32 %19, -1
  %23 = add nsw i32 %22, %17
  %24 = add nsw i32 %23, %21
  %25 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 24
  %26 = load i16, ptr %25, align 2, !tbaa !51
  %27 = sext i16 %26 to i32
  %28 = call i32 @llvm.smin.i32(i32 %24, i32 %27)
  %29 = trunc i32 %28 to i16
  %30 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  store i16 %29, ptr %30, align 8, !tbaa !52
  %31 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 8
  store ptr null, ptr %31, align 8, !tbaa !53
  %32 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 9
  store ptr @applyAxisConstraintVec, ptr %32, align 8, !tbaa !54
  %33 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 10
  store ptr @applyAxisConstraintSize, ptr %33, align 8, !tbaa !55
  %34 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 11
  store ptr @applyAxisConstraintRot, ptr %34, align 8, !tbaa !56
  %35 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 17
  store i32 1, ptr %35, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #9
  br label %197

36:                                               ; preds = %4
  %37 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 40, ptr noundef %3, ptr noundef nonnull @.str.1) #9
  %38 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %39 = load i32, ptr %38, align 4, !tbaa !48
  %40 = and i32 %39, 2
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %71, label %42

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 64
  %44 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1, i64 1
  %45 = call ptr @BLI_strncpy(ptr noundef nonnull %44, ptr noundef nonnull %5, i64 noundef 49) #9
  %46 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 2
  call void @copy_m3_m3(ptr noundef nonnull %46, ptr noundef nonnull %43) #9
  %47 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  store i32 %2, ptr %47, align 4, !tbaa !34
  call void @getConstraintMatrix(ptr noundef %0)
  %48 = load i32, ptr %47, align 4, !tbaa !34
  %49 = or i32 %48, 1
  store i32 %49, ptr %47, align 4, !tbaa !34
  %50 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1
  store i8 32, ptr %50, align 2, !tbaa !50
  %51 = lshr i32 %48, 1
  %52 = and i32 %51, 1
  %53 = lshr i32 %48, 2
  %54 = and i32 %53, 1
  %55 = lshr i32 %48, 3
  %56 = and i32 %55, 1
  %57 = add nsw i32 %54, -1
  %58 = add nsw i32 %57, %52
  %59 = add nsw i32 %58, %56
  %60 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 24
  %61 = load i16, ptr %60, align 2, !tbaa !51
  %62 = sext i16 %61 to i32
  %63 = call i32 @llvm.smin.i32(i32 %59, i32 %62)
  %64 = trunc i32 %63 to i16
  %65 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  store i16 %64, ptr %65, align 8, !tbaa !52
  %66 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 8
  store ptr null, ptr %66, align 8, !tbaa !53
  %67 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 9
  store ptr @applyAxisConstraintVec, ptr %67, align 8, !tbaa !54
  %68 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 10
  store ptr @applyAxisConstraintSize, ptr %68, align 8, !tbaa !55
  %69 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 11
  store ptr @applyAxisConstraintRot, ptr %69, align 8, !tbaa !56
  %70 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 17
  store i32 1, ptr %70, align 8, !tbaa !57
  br label %197

71:                                               ; preds = %36
  call void @setAxisMatrixConstraint(ptr noundef %0, i32 noundef %2, ptr noundef nonnull %5)
  br label %197

72:                                               ; preds = %4
  %73 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 40, ptr noundef %3, ptr noundef nonnull @.str.2) #9
  %74 = call zeroext i8 @checkUseAxisMatrix(ptr noundef %0) #9
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %72
  call void @setAxisMatrixConstraint(ptr noundef %0, i32 noundef %2, ptr noundef nonnull %5)
  br label %197

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 37
  %79 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1, i64 1
  %80 = call ptr @BLI_strncpy(ptr noundef nonnull %79, ptr noundef nonnull %5, i64 noundef 49) #9
  %81 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 2
  call void @copy_m3_m3(ptr noundef nonnull %81, ptr noundef nonnull %78) #9
  %82 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  store i32 %2, ptr %82, align 4, !tbaa !34
  call void @getConstraintMatrix(ptr noundef %0)
  %83 = load i32, ptr %82, align 4, !tbaa !34
  %84 = or i32 %83, 1
  store i32 %84, ptr %82, align 4, !tbaa !34
  %85 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1
  store i8 32, ptr %85, align 2, !tbaa !50
  %86 = lshr i32 %83, 1
  %87 = and i32 %86, 1
  %88 = lshr i32 %83, 2
  %89 = and i32 %88, 1
  %90 = lshr i32 %83, 3
  %91 = and i32 %90, 1
  %92 = add nsw i32 %89, -1
  %93 = add nsw i32 %92, %87
  %94 = add nsw i32 %93, %91
  %95 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 24
  %96 = load i16, ptr %95, align 2, !tbaa !51
  %97 = sext i16 %96 to i32
  %98 = call i32 @llvm.smin.i32(i32 %94, i32 %97)
  %99 = trunc i32 %98 to i16
  %100 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  store i16 %99, ptr %100, align 8, !tbaa !52
  %101 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 8
  store ptr null, ptr %101, align 8, !tbaa !53
  %102 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 9
  store ptr @applyAxisConstraintVec, ptr %102, align 8, !tbaa !54
  %103 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 10
  store ptr @applyAxisConstraintSize, ptr %103, align 8, !tbaa !55
  %104 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 11
  store ptr @applyAxisConstraintRot, ptr %104, align 8, !tbaa !56
  %105 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 17
  store i32 1, ptr %105, align 8, !tbaa !57
  br label %197

106:                                              ; preds = %4
  %107 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 40, ptr noundef %3, ptr noundef nonnull @.str.3) #9
  %108 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 37
  %109 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1, i64 1
  %110 = call ptr @BLI_strncpy(ptr noundef nonnull %109, ptr noundef nonnull %5, i64 noundef 49) #9
  %111 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 2
  call void @copy_m3_m3(ptr noundef nonnull %111, ptr noundef nonnull %108) #9
  %112 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  store i32 %2, ptr %112, align 4, !tbaa !34
  call void @getConstraintMatrix(ptr noundef %0)
  %113 = load i32, ptr %112, align 4, !tbaa !34
  %114 = or i32 %113, 1
  store i32 %114, ptr %112, align 4, !tbaa !34
  %115 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1
  store i8 32, ptr %115, align 2, !tbaa !50
  %116 = lshr i32 %113, 1
  %117 = and i32 %116, 1
  %118 = lshr i32 %113, 2
  %119 = and i32 %118, 1
  %120 = lshr i32 %113, 3
  %121 = and i32 %120, 1
  %122 = add nsw i32 %119, -1
  %123 = add nsw i32 %122, %117
  %124 = add nsw i32 %123, %121
  %125 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 24
  %126 = load i16, ptr %125, align 2, !tbaa !51
  %127 = sext i16 %126 to i32
  %128 = call i32 @llvm.smin.i32(i32 %124, i32 %127)
  %129 = trunc i32 %128 to i16
  %130 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  store i16 %129, ptr %130, align 8, !tbaa !52
  %131 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 8
  store ptr null, ptr %131, align 8, !tbaa !53
  %132 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 9
  store ptr @applyAxisConstraintVec, ptr %132, align 8, !tbaa !54
  %133 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 10
  store ptr @applyAxisConstraintSize, ptr %133, align 8, !tbaa !55
  %134 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 11
  store ptr @applyAxisConstraintRot, ptr %134, align 8, !tbaa !56
  %135 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 17
  store i32 1, ptr %135, align 8, !tbaa !57
  br label %197

136:                                              ; preds = %4
  %137 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 40, ptr noundef %3, ptr noundef nonnull @.str.4) #9
  %138 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 37
  %139 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1, i64 1
  %140 = call ptr @BLI_strncpy(ptr noundef nonnull %139, ptr noundef nonnull %5, i64 noundef 49) #9
  %141 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 2
  call void @copy_m3_m3(ptr noundef nonnull %141, ptr noundef nonnull %138) #9
  %142 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  store i32 %2, ptr %142, align 4, !tbaa !34
  call void @getConstraintMatrix(ptr noundef %0)
  %143 = load i32, ptr %142, align 4, !tbaa !34
  %144 = or i32 %143, 1
  store i32 %144, ptr %142, align 4, !tbaa !34
  %145 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1
  store i8 32, ptr %145, align 2, !tbaa !50
  %146 = lshr i32 %143, 1
  %147 = and i32 %146, 1
  %148 = lshr i32 %143, 2
  %149 = and i32 %148, 1
  %150 = lshr i32 %143, 3
  %151 = and i32 %150, 1
  %152 = add nsw i32 %149, -1
  %153 = add nsw i32 %152, %147
  %154 = add nsw i32 %153, %151
  %155 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 24
  %156 = load i16, ptr %155, align 2, !tbaa !51
  %157 = sext i16 %156 to i32
  %158 = call i32 @llvm.smin.i32(i32 %154, i32 %157)
  %159 = trunc i32 %158 to i16
  %160 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  store i16 %159, ptr %160, align 8, !tbaa !52
  %161 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 8
  store ptr null, ptr %161, align 8, !tbaa !53
  %162 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 9
  store ptr @applyAxisConstraintVec, ptr %162, align 8, !tbaa !54
  %163 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 10
  store ptr @applyAxisConstraintSize, ptr %163, align 8, !tbaa !55
  %164 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 11
  store ptr @applyAxisConstraintRot, ptr %164, align 8, !tbaa !56
  %165 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 17
  store i32 1, ptr %165, align 8, !tbaa !57
  br label %197

166:                                              ; preds = %4
  %167 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 38
  %168 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 40, ptr noundef %3, ptr noundef nonnull %167) #9
  %169 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 37
  %170 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1, i64 1
  %171 = call ptr @BLI_strncpy(ptr noundef nonnull %170, ptr noundef nonnull %5, i64 noundef 49) #9
  %172 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 2
  call void @copy_m3_m3(ptr noundef nonnull %172, ptr noundef nonnull %169) #9
  %173 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  store i32 %2, ptr %173, align 4, !tbaa !34
  call void @getConstraintMatrix(ptr noundef %0)
  %174 = load i32, ptr %173, align 4, !tbaa !34
  %175 = or i32 %174, 1
  store i32 %175, ptr %173, align 4, !tbaa !34
  %176 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1
  store i8 32, ptr %176, align 2, !tbaa !50
  %177 = lshr i32 %174, 1
  %178 = and i32 %177, 1
  %179 = lshr i32 %174, 2
  %180 = and i32 %179, 1
  %181 = lshr i32 %174, 3
  %182 = and i32 %181, 1
  %183 = add nsw i32 %180, -1
  %184 = add nsw i32 %183, %178
  %185 = add nsw i32 %184, %182
  %186 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 24
  %187 = load i16, ptr %186, align 2, !tbaa !51
  %188 = sext i16 %187 to i32
  %189 = call i32 @llvm.smin.i32(i32 %185, i32 %188)
  %190 = trunc i32 %189 to i16
  %191 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  store i16 %190, ptr %191, align 8, !tbaa !52
  %192 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 8
  store ptr null, ptr %192, align 8, !tbaa !53
  %193 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 9
  store ptr @applyAxisConstraintVec, ptr %193, align 8, !tbaa !54
  %194 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 10
  store ptr @applyAxisConstraintSize, ptr %194, align 8, !tbaa !55
  %195 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 11
  store ptr @applyAxisConstraintRot, ptr %195, align 8, !tbaa !56
  %196 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 17
  store i32 1, ptr %196, align 8, !tbaa !57
  br label %197

197:                                              ; preds = %71, %42, %76, %77, %166, %136, %106, %7
  %198 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13
  store i16 %1, ptr %198, align 8, !tbaa !69
  %199 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %200 = load i32, ptr %199, align 4, !tbaa !34
  %201 = or i32 %200, 64
  store i32 %201, ptr %199, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #9
  ret void
}

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

declare void @unit_m3(ptr noundef) local_unnamed_addr #4

declare zeroext i8 @checkUseAxisMatrix(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @drawConstraint(ptr noundef %0) local_unnamed_addr #3 {
  %2 = alloca [3 x float], align 4
  %3 = alloca [3 x i8], align 1
  %4 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %5 = load i8, ptr %4, align 8, !tbaa !70
  switch i8 %5, label %78 [
    i8 1, label %6
    i8 6, label %6
    i8 16, label %6
  ]

6:                                                ; preds = %1, %1, %1
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %8 = load i32, ptr %7, align 4, !tbaa !71
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %78, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !48
  %14 = and i32 %13, 384
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %78

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !72
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void %18(ptr noundef %0) #9
  br label %78

21:                                               ; preds = %16
  %22 = and i32 %8, 16
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %57, label %24

24:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #9
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %3, i8 -1, i64 3, i1 false)
  %25 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 61
  %26 = load i32, ptr %25, align 8, !tbaa !73
  %27 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 6
  %28 = load i32, ptr %27, align 4, !tbaa !73
  %29 = sub nsw i32 %26, %28
  %30 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 61, i64 1
  %31 = load i32, ptr %30, align 4, !tbaa !73
  %32 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 6, i64 1
  %33 = load i32, ptr %32, align 4, !tbaa !73
  %34 = sub nsw i32 %31, %33
  call void @convertViewVec(ptr noundef %0, ptr noundef nonnull %2, i32 noundef %29, i32 noundef %34) #9
  %35 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 5
  %36 = load float, ptr %35, align 4, !tbaa !49
  %37 = load float, ptr %2, align 4, !tbaa !49
  %38 = fadd float %36, %37
  store float %38, ptr %2, align 4, !tbaa !49
  %39 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 5, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !49
  %41 = getelementptr inbounds float, ptr %2, i64 1
  %42 = load float, ptr %41, align 4, !tbaa !49
  %43 = fadd float %40, %42
  store float %43, ptr %41, align 4, !tbaa !49
  %44 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 5, i64 2
  %45 = load float, ptr %44, align 4, !tbaa !49
  %46 = getelementptr inbounds float, ptr %2, i64 2
  %47 = load float, ptr %46, align 4, !tbaa !49
  %48 = fadd float %45, %47
  store float %48, ptr %46, align 4, !tbaa !49
  %49 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 2
  call void @drawLine(ptr noundef %0, ptr noundef nonnull %35, ptr noundef nonnull %49, i8 noundef zeroext 88, i16 noundef signext 0) #9
  %50 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 2, i64 1
  call void @drawLine(ptr noundef %0, ptr noundef nonnull %35, ptr noundef nonnull %50, i8 noundef zeroext 89, i16 noundef signext 0) #9
  %51 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 2, i64 2
  call void @drawLine(ptr noundef %0, ptr noundef nonnull %35, ptr noundef nonnull %51, i8 noundef zeroext 90, i16 noundef signext 0) #9
  call void @glColor3ubv(ptr noundef nonnull %3) #9
  %52 = call zeroext i8 @glIsEnabled(i32 noundef 2929) #9
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %24
  call void @glDisable(i32 noundef 2929) #9
  call void @setlinestyle(i32 noundef 1) #9
  call void @glBegin(i32 noundef 3) #9
  call void @glVertex3fv(ptr noundef nonnull %35) #9
  call void @glVertex3fv(ptr noundef nonnull %2) #9
  call void @glEnd() #9
  call void @setlinestyle(i32 noundef 0) #9
  call void @glEnable(i32 noundef 2929) #9
  br label %56

55:                                               ; preds = %24
  call void @setlinestyle(i32 noundef 1) #9
  call void @glBegin(i32 noundef 3) #9
  call void @glVertex3fv(ptr noundef nonnull %35) #9
  call void @glVertex3fv(ptr noundef nonnull %2) #9
  call void @glEnd() #9
  call void @setlinestyle(i32 noundef 0) #9
  br label %56

56:                                               ; preds = %55, %54
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #9
  br label %57

57:                                               ; preds = %56, %21
  %58 = load i32, ptr %7, align 4, !tbaa !71
  %59 = and i32 %58, 2
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 5
  %63 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 2
  call void @drawLine(ptr noundef %0, ptr noundef nonnull %62, ptr noundef nonnull %63, i8 noundef zeroext 88, i16 noundef signext 1) #9
  br label %64

64:                                               ; preds = %61, %57
  %65 = load i32, ptr %7, align 4, !tbaa !71
  %66 = and i32 %65, 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 5
  %70 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 2, i64 1
  call void @drawLine(ptr noundef %0, ptr noundef nonnull %69, ptr noundef nonnull %70, i8 noundef zeroext 89, i16 noundef signext 1) #9
  br label %71

71:                                               ; preds = %68, %64
  %72 = load i32, ptr %7, align 4, !tbaa !71
  %73 = and i32 %72, 8
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 5
  %77 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 2, i64 2
  call void @drawLine(ptr noundef %0, ptr noundef nonnull %76, ptr noundef nonnull %77, i8 noundef zeroext 90, i16 noundef signext 1) #9
  br label %78

78:                                               ; preds = %20, %75, %71, %11, %6, %1
  ret void
}

declare void @convertViewVec(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @drawLine(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #4

declare void @glColor3ubv(ptr noundef) local_unnamed_addr #4

declare zeroext i8 @glIsEnabled(i32 noundef) local_unnamed_addr #4

declare void @glDisable(i32 noundef) local_unnamed_addr #4

declare void @setlinestyle(i32 noundef) local_unnamed_addr #4

declare void @glBegin(i32 noundef) local_unnamed_addr #4

declare void @glVertex3fv(ptr noundef) local_unnamed_addr #4

declare void @glEnd() local_unnamed_addr #4

declare void @glEnable(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @drawPropCircle(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = alloca [4 x [4 x float]], align 16
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [3 x float], align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !48
  %10 = and i32 %9, 2048
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %75, label %12

12:                                               ; preds = %2
  %13 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  tail call void @UI_ThemeColor(i32 noundef 24) #9
  %14 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 33
  %15 = load i8, ptr %14, align 8, !tbaa !70
  %16 = icmp eq i8 %15, 1
  %17 = icmp ne ptr %13, null
  %18 = select i1 %16, i1 %17, i1 false
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.RegionView3D, ptr %13, i64 0, i32 1
  call void @copy_m4_m4(ptr noundef nonnull %3, ptr noundef nonnull %20) #9
  %21 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %4, ptr noundef nonnull %3) #9
  br label %23

22:                                               ; preds = %12
  call void @unit_m4(ptr noundef nonnull %3) #9
  call void @unit_m4(ptr noundef nonnull %4) #9
  br label %23

23:                                               ; preds = %22, %19
  call void @glPushMatrix() #9
  %24 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 20
  %25 = load float, ptr %24, align 4, !tbaa !49
  store float %25, ptr %5, align 4, !tbaa !49
  %26 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 20, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !49
  %28 = getelementptr inbounds float, ptr %5, i64 1
  store float %27, ptr %28, align 4, !tbaa !49
  %29 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 20, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !49
  %31 = getelementptr inbounds float, ptr %5, i64 2
  store float %30, ptr %31, align 4, !tbaa !49
  %32 = load i8, ptr %14, align 8, !tbaa !70
  switch i8 %32, label %65 [
    i8 1, label %33
    i8 6, label %41
  ]

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 63
  %35 = load ptr, ptr %34, align 8, !tbaa !64
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.Object, ptr %35, i64 0, i32 47
  call void @mul_m4_v3(ptr noundef nonnull %38, ptr noundef nonnull %5) #9
  br label %65

39:                                               ; preds = %33
  %40 = icmp eq i8 %32, 6
  br i1 %40, label %41, label %65

41:                                               ; preds = %23, %39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  %42 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 4
  %43 = load i32, ptr %42, align 8, !tbaa !74
  %44 = and i32 %43, 128
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 54
  %48 = load ptr, ptr %47, align 8, !tbaa !75
  %49 = getelementptr inbounds %struct.ScrArea, ptr %48, i64 0, i32 19
  %50 = load ptr, ptr %49, align 8, !tbaa !76
  call void @ED_space_image_get_aspect(ptr noundef %50, ptr noundef nonnull %6, ptr noundef nonnull %7) #9
  br label %60

51:                                               ; preds = %41
  %52 = and i32 %43, 256
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  store float 1.000000e+00, ptr %7, align 4, !tbaa !49
  store float 1.000000e+00, ptr %6, align 4, !tbaa !49
  br label %60

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 54
  %57 = load ptr, ptr %56, align 8, !tbaa !75
  %58 = getelementptr inbounds %struct.ScrArea, ptr %57, i64 0, i32 19
  %59 = load ptr, ptr %58, align 8, !tbaa !76
  call void @ED_space_image_get_uv_aspect(ptr noundef %59, ptr noundef nonnull %6, ptr noundef nonnull %7) #9
  br label %60

60:                                               ; preds = %54, %55, %46
  %61 = load float, ptr %6, align 4, !tbaa !49
  %62 = fdiv float 1.000000e+00, %61
  %63 = load float, ptr %7, align 4, !tbaa !49
  %64 = fdiv float 1.000000e+00, %63
  call void @glScalef(float noundef %62, float noundef %64, float noundef 1.000000e+00) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  br label %65

65:                                               ; preds = %23, %39, %60, %37
  %66 = call zeroext i8 @glIsEnabled(i32 noundef 2929) #9
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  call void @glDisable(i32 noundef 2929) #9
  call void @set_inverted_drawing(i32 noundef 1) #9
  %69 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 18
  %70 = load float, ptr %69, align 4, !tbaa !79
  call void @drawcircball(i32 noundef 2, ptr noundef nonnull %5, float noundef %70, ptr noundef nonnull %4) #9
  call void @set_inverted_drawing(i32 noundef 0) #9
  call void @glEnable(i32 noundef 2929) #9
  br label %74

71:                                               ; preds = %65
  call void @set_inverted_drawing(i32 noundef 1) #9
  %72 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 18
  %73 = load float, ptr %72, align 4, !tbaa !79
  call void @drawcircball(i32 noundef 2, ptr noundef nonnull %5, float noundef %73, ptr noundef nonnull %4) #9
  call void @set_inverted_drawing(i32 noundef 0) #9
  br label %74

74:                                               ; preds = %71, %68
  call void @glPopMatrix() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #9
  br label %75

75:                                               ; preds = %74, %2
  ret void
}

declare ptr @CTX_wm_region_view3d(ptr noundef) local_unnamed_addr #4

declare void @UI_ThemeColor(i32 noundef) local_unnamed_addr #4

declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #4

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @unit_m4(ptr noundef) local_unnamed_addr #4

declare void @glPushMatrix() local_unnamed_addr #4

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @ED_space_image_get_aspect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @ED_space_image_get_uv_aspect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @glScalef(float noundef, float noundef, float noundef) local_unnamed_addr #4

declare void @set_inverted_drawing(i32 noundef) local_unnamed_addr #4

declare void @drawcircball(i32 noundef, ptr noundef, float noundef, ptr noundef) local_unnamed_addr #4

declare void @glPopMatrix() local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @stopConstraint(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %3 = load i32, ptr %2, align 4, !tbaa !34
  %4 = and i32 %3, -18
  store i32 %4, ptr %2, align 4, !tbaa !34
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1
  store i8 0, ptr %5, align 2, !tbaa !50
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 24
  %7 = load i16, ptr %6, align 2, !tbaa !51
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  store i16 %7, ptr %8, align 8, !tbaa !52
  ret void
}

declare zeroext i8 @invert_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @initSelectConstraint(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 2
  tail call void @copy_m3_m3(ptr noundef nonnull %3, ptr noundef %1) #9
  %4 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %5 = load i32, ptr %4, align 4, !tbaa !34
  %6 = or i32 %5, 17
  store i32 %6, ptr %4, align 4, !tbaa !34
  tail call void @setNearestAxis(ptr noundef %0)
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 8
  store ptr null, ptr %7, align 8, !tbaa !53
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 9
  store ptr @applyAxisConstraintVec, ptr %8, align 8, !tbaa !54
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 10
  store ptr @applyAxisConstraintSize, ptr %9, align 8, !tbaa !55
  %10 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 11
  store ptr @applyAxisConstraintRot, ptr %10, align 8, !tbaa !56
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @setNearestAxis(ptr noundef %0) local_unnamed_addr #3 {
  %2 = alloca [3 x float], align 4
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [2 x float], align 4
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %8 = load i32, ptr %7, align 4, !tbaa !34
  %9 = and i32 %8, -15
  store i32 %9, ptr %7, align 4, !tbaa !34
  %10 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %11 = load i8, ptr %10, align 8, !tbaa !70
  %12 = icmp eq i8 %11, 1
  br i1 %12, label %13, label %207

13:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  %14 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 61
  %15 = load i32, ptr %14, align 8, !tbaa !73
  %16 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 6
  %17 = load i32, ptr %16, align 4, !tbaa !73
  %18 = sub nsw i32 %15, %17
  %19 = sitofp i32 %18 to float
  store float %19, ptr %2, align 4, !tbaa !49
  %20 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 61, i64 1
  %21 = load i32, ptr %20, align 4, !tbaa !73
  %22 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 6, i64 1
  %23 = load i32, ptr %22, align 4, !tbaa !73
  %24 = sub nsw i32 %21, %23
  %25 = sitofp i32 %24 to float
  %26 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 1
  store float %25, ptr %26, align 4, !tbaa !49
  %27 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 2
  store float 0.000000e+00, ptr %27, align 4, !tbaa !49
  %28 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20
  %29 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 29, i64 0, i64 3
  %30 = load float, ptr %29, align 4, !tbaa !49
  %31 = load float, ptr %28, align 4, !tbaa !49
  %32 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 29, i64 1, i64 3
  %33 = load float, ptr %32, align 4, !tbaa !49
  %34 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !49
  %36 = fmul float %33, %35
  %37 = tail call float @llvm.fmuladd.f32(float %30, float %31, float %36)
  %38 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 29, i64 2, i64 3
  %39 = load float, ptr %38, align 4, !tbaa !49
  %40 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20, i64 2
  %41 = load float, ptr %40, align 4, !tbaa !49
  %42 = tail call float @llvm.fmuladd.f32(float %39, float %41, float %37)
  %43 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 29, i64 3, i64 3
  %44 = load float, ptr %43, align 4, !tbaa !49
  %45 = fadd float %42, %44
  %46 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 30
  %47 = load float, ptr %46, align 4, !tbaa !49
  %48 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 30, i64 0, i64 1
  %49 = load float, ptr %48, align 4, !tbaa !49
  %50 = fmul float %49, %49
  %51 = tail call float @llvm.fmuladd.f32(float %47, float %47, float %50)
  %52 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 30, i64 0, i64 2
  %53 = load float, ptr %52, align 4, !tbaa !49
  %54 = tail call float @llvm.fmuladd.f32(float %53, float %53, float %51)
  %55 = tail call float @sqrtf(float noundef %54) #9
  %56 = fmul float %55, 2.000000e+00
  %57 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 55
  %58 = load ptr, ptr %57, align 8, !tbaa !80
  %59 = getelementptr inbounds %struct.ARegion, ptr %58, i64 0, i32 5
  %60 = load i16, ptr %59, align 8, !tbaa !81
  %61 = sitofp i16 %60 to float
  %62 = fdiv float %56, %61
  %63 = fmul float %45, %62
  %64 = fmul float %63, 3.000000e+01
  %65 = getelementptr inbounds float, ptr %5, i64 1
  %66 = getelementptr inbounds float, ptr %5, i64 2
  %67 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 5
  %68 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 5, i64 1
  %69 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 5, i64 2
  %70 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 21
  %71 = getelementptr inbounds float, ptr %6, i64 1
  %72 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 21, i64 1
  %73 = getelementptr inbounds float, ptr %3, i64 1
  %74 = getelementptr inbounds float, ptr %3, i64 2
  br label %75

75:                                               ; preds = %13, %142
  %76 = phi i64 [ 0, %13 ], [ %145, %142 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  %77 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 2, i64 %76
  %78 = load float, ptr %77, align 4, !tbaa !49
  store float %78, ptr %5, align 4, !tbaa !49
  %79 = getelementptr inbounds float, ptr %77, i64 1
  %80 = load float, ptr %79, align 4, !tbaa !49
  store float %80, ptr %65, align 4, !tbaa !49
  %81 = getelementptr inbounds float, ptr %77, i64 2
  %82 = load float, ptr %81, align 4, !tbaa !49
  store float %82, ptr %66, align 4, !tbaa !49
  %83 = fmul float %64, %78
  store float %83, ptr %5, align 4, !tbaa !49
  %84 = fmul float %64, %80
  store float %84, ptr %65, align 4, !tbaa !49
  %85 = fmul float %64, %82
  store float %85, ptr %66, align 4, !tbaa !49
  %86 = load float, ptr %67, align 4, !tbaa !49
  %87 = fadd float %83, %86
  store float %87, ptr %5, align 4, !tbaa !49
  %88 = load float, ptr %68, align 4, !tbaa !49
  %89 = fadd float %84, %88
  store float %89, ptr %65, align 4, !tbaa !49
  %90 = load float, ptr %69, align 4, !tbaa !49
  %91 = fadd float %85, %90
  store float %91, ptr %66, align 4, !tbaa !49
  call void @projectFloatView(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #9
  %92 = load float, ptr %6, align 4, !tbaa !49
  %93 = load float, ptr %70, align 4, !tbaa !49
  %94 = fsub float %92, %93
  store float %94, ptr %5, align 4, !tbaa !49
  %95 = load float, ptr %71, align 4, !tbaa !49
  %96 = load float, ptr %72, align 4, !tbaa !49
  %97 = fsub float %95, %96
  store float %97, ptr %65, align 4, !tbaa !49
  store float 0.000000e+00, ptr %66, align 4, !tbaa !49
  %98 = fmul float %97, %97
  %99 = call float @llvm.fmuladd.f32(float %94, float %94, float %98)
  %100 = fcmp ogt float %99, 0x38AA95A5C0000000
  br i1 %100, label %101, label %110

101:                                              ; preds = %75
  %102 = call float @sqrtf(float noundef %99) #9
  %103 = fdiv float 1.000000e+00, %102
  %104 = load float, ptr %5, align 4, !tbaa !49
  %105 = fmul float %104, %103
  store float %105, ptr %5, align 4, !tbaa !49
  %106 = load float, ptr %65, align 4, !tbaa !49
  %107 = fmul float %103, %106
  store float %107, ptr %65, align 4, !tbaa !49
  %108 = load float, ptr %66, align 4, !tbaa !49
  %109 = fmul float %103, %108
  br label %111

110:                                              ; preds = %75
  store float 0.000000e+00, ptr %5, align 4, !tbaa !49
  store float 0.000000e+00, ptr %65, align 4, !tbaa !49
  br label %111

111:                                              ; preds = %110, %101
  %112 = phi float [ 0.000000e+00, %110 ], [ %109, %101 ]
  %113 = phi float [ 0.000000e+00, %110 ], [ %102, %101 ]
  store float %112, ptr %66, align 4, !tbaa !49
  %114 = fcmp ogt float %113, 0x3F50624DE0000000
  br i1 %114, label %115, label %142

115:                                              ; preds = %111
  call void @project_v3_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef nonnull %5) #9
  %116 = load float, ptr %2, align 4, !tbaa !49
  %117 = load float, ptr %3, align 4, !tbaa !49
  %118 = fsub float %116, %117
  store float %118, ptr %5, align 4, !tbaa !49
  %119 = load float, ptr %26, align 4, !tbaa !49
  %120 = load float, ptr %73, align 4, !tbaa !49
  %121 = fsub float %119, %120
  store float %121, ptr %65, align 4, !tbaa !49
  %122 = load float, ptr %27, align 4, !tbaa !49
  %123 = load float, ptr %74, align 4, !tbaa !49
  %124 = fsub float %122, %123
  store float %124, ptr %66, align 4, !tbaa !49
  %125 = fmul float %121, %121
  %126 = call float @llvm.fmuladd.f32(float %118, float %118, float %125)
  %127 = call float @llvm.fmuladd.f32(float %124, float %124, float %126)
  %128 = fcmp ogt float %127, 0x38AA95A5C0000000
  br i1 %128, label %129, label %138

129:                                              ; preds = %115
  %130 = call float @sqrtf(float noundef %127) #9
  %131 = fdiv float 1.000000e+00, %130
  %132 = load float, ptr %5, align 4, !tbaa !49
  %133 = fmul float %132, %131
  store float %133, ptr %5, align 4, !tbaa !49
  %134 = load float, ptr %65, align 4, !tbaa !49
  %135 = fmul float %131, %134
  store float %135, ptr %65, align 4, !tbaa !49
  %136 = load float, ptr %66, align 4, !tbaa !49
  %137 = fmul float %131, %136
  br label %139

138:                                              ; preds = %115
  store float 0.000000e+00, ptr %5, align 4, !tbaa !49
  store float 0.000000e+00, ptr %65, align 4, !tbaa !49
  br label %139

139:                                              ; preds = %138, %129
  %140 = phi float [ 0.000000e+00, %138 ], [ %137, %129 ]
  %141 = phi float [ 0.000000e+00, %138 ], [ %130, %129 ]
  store float %140, ptr %66, align 4, !tbaa !49
  br label %142

142:                                              ; preds = %111, %139
  %143 = phi float [ %141, %139 ], [ 1.000000e+10, %111 ]
  %144 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 %76
  store float %143, ptr %144, align 4, !tbaa !49
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  %145 = add nuw nsw i64 %76, 1
  %146 = icmp eq i64 %145, 3
  br i1 %146, label %147, label %75, !llvm.loop !85

147:                                              ; preds = %142
  %148 = load float, ptr %4, align 4
  %149 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %150 = load float, ptr %149, align 4, !tbaa !49
  %151 = fcmp ugt float %148, %150
  %152 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %153 = load float, ptr %152, align 4
  %154 = fcmp ugt float %148, %153
  %155 = select i1 %151, i1 true, i1 %154
  br i1 %155, label %170, label %156

156:                                              ; preds = %147
  %157 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 2
  %158 = load i32, ptr %157, align 8, !tbaa !86
  %159 = and i32 %158, 16
  %160 = icmp eq i32 %159, 0
  %161 = load i32, ptr %7, align 4, !tbaa !34
  %162 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1
  %163 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 38
  br i1 %160, label %167, label %164

164:                                              ; preds = %156
  %165 = or i32 %161, 12
  store i32 %165, ptr %7, align 4, !tbaa !34
  %166 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %162, i64 noundef 50, ptr noundef nonnull @.str.5, ptr noundef nonnull %163) #9
  br label %206

167:                                              ; preds = %156
  %168 = or i32 %161, 2
  store i32 %168, ptr %7, align 4, !tbaa !34
  %169 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %162, i64 noundef 50, ptr noundef nonnull @.str.6, ptr noundef nonnull %163) #9
  br label %206

170:                                              ; preds = %147
  %171 = fcmp ugt float %150, %148
  %172 = fcmp ugt float %150, %153
  %173 = select i1 %171, i1 true, i1 %172
  br i1 %173, label %188, label %174

174:                                              ; preds = %170
  %175 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 2
  %176 = load i32, ptr %175, align 8, !tbaa !86
  %177 = and i32 %176, 16
  %178 = icmp eq i32 %177, 0
  %179 = load i32, ptr %7, align 4, !tbaa !34
  %180 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1
  %181 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 38
  br i1 %178, label %185, label %182

182:                                              ; preds = %174
  %183 = or i32 %179, 10
  store i32 %183, ptr %7, align 4, !tbaa !34
  %184 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %180, i64 noundef 50, ptr noundef nonnull @.str.7, ptr noundef nonnull %181) #9
  br label %206

185:                                              ; preds = %174
  %186 = or i32 %179, 4
  store i32 %186, ptr %7, align 4, !tbaa !34
  %187 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %180, i64 noundef 50, ptr noundef nonnull @.str.8, ptr noundef nonnull %181) #9
  br label %206

188:                                              ; preds = %170
  %189 = fcmp ugt float %153, %150
  %190 = fcmp ugt float %153, %148
  %191 = or i1 %189, %190
  br i1 %191, label %206, label %192

192:                                              ; preds = %188
  %193 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 2
  %194 = load i32, ptr %193, align 8, !tbaa !86
  %195 = and i32 %194, 16
  %196 = icmp eq i32 %195, 0
  %197 = load i32, ptr %7, align 4, !tbaa !34
  %198 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1
  %199 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 38
  br i1 %196, label %203, label %200

200:                                              ; preds = %192
  %201 = or i32 %197, 6
  store i32 %201, ptr %7, align 4, !tbaa !34
  %202 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %198, i64 noundef 50, ptr noundef nonnull @.str.9, ptr noundef nonnull %199) #9
  br label %206

203:                                              ; preds = %192
  %204 = or i32 %197, 8
  store i32 %204, ptr %7, align 4, !tbaa !34
  %205 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %198, i64 noundef 50, ptr noundef nonnull @.str.10, ptr noundef nonnull %199) #9
  br label %206

206:                                              ; preds = %164, %167, %182, %185, %188, %200, %203
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #9
  br label %228

207:                                              ; preds = %1
  %208 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 61
  %209 = load i32, ptr %208, align 8, !tbaa !73
  %210 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 6
  %211 = load i32, ptr %210, align 4, !tbaa !73
  %212 = sub nsw i32 %209, %211
  %213 = tail call i32 @llvm.abs.i32(i32 %212, i1 true)
  %214 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 61, i64 1
  %215 = load i32, ptr %214, align 4, !tbaa !73
  %216 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 6, i64 1
  %217 = load i32, ptr %216, align 4, !tbaa !73
  %218 = sub nsw i32 %215, %217
  %219 = tail call i32 @llvm.abs.i32(i32 %218, i1 true)
  %220 = icmp ult i32 %213, %219
  %221 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1
  br i1 %220, label %222, label %225

222:                                              ; preds = %207
  %223 = or disjoint i32 %9, 4
  store i32 %223, ptr %7, align 4, !tbaa !34
  %224 = tail call ptr @BLI_strncpy(ptr noundef nonnull %221, ptr noundef nonnull @.str.11, i64 noundef 50) #9
  br label %228

225:                                              ; preds = %207
  %226 = or disjoint i32 %9, 2
  store i32 %226, ptr %7, align 4, !tbaa !34
  %227 = tail call ptr @BLI_strncpy(ptr noundef nonnull %221, ptr noundef nonnull @.str.12, i64 noundef 50) #9
  br label %228

228:                                              ; preds = %225, %222, %206
  call void @getConstraintMatrix(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @selectConstraint(ptr noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %3 = load i32, ptr %2, align 4, !tbaa !34
  %4 = and i32 %3, 16
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %25, label %6

6:                                                ; preds = %1
  tail call void @setNearestAxis(ptr noundef %0)
  %7 = load i32, ptr %2, align 4, !tbaa !34
  %8 = or i32 %7, 1
  store i32 %8, ptr %2, align 4, !tbaa !34
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1
  store i8 32, ptr %9, align 2, !tbaa !50
  %10 = lshr i32 %7, 1
  %11 = and i32 %10, 1
  %12 = lshr i32 %7, 2
  %13 = and i32 %12, 1
  %14 = lshr i32 %7, 3
  %15 = and i32 %14, 1
  %16 = add nsw i32 %13, -1
  %17 = add nsw i32 %16, %11
  %18 = add nsw i32 %17, %15
  %19 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 24
  %20 = load i16, ptr %19, align 2, !tbaa !51
  %21 = sext i16 %20 to i32
  %22 = tail call i32 @llvm.smin.i32(i32 %18, i32 %21)
  %23 = trunc i32 %22 to i16
  %24 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  store i16 %23, ptr %24, align 8, !tbaa !52
  br label %25

25:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @postSelectConstraint(ptr noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %3 = load i32, ptr %2, align 4, !tbaa !34
  %4 = and i32 %3, 16
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %27, label %6

6:                                                ; preds = %1
  %7 = and i32 %3, -31
  store i32 %7, ptr %2, align 4, !tbaa !34
  tail call void @setNearestAxis(ptr noundef %0)
  %8 = load i32, ptr %2, align 4, !tbaa !34
  %9 = or i32 %8, 1
  store i32 %9, ptr %2, align 4, !tbaa !34
  %10 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1
  store i8 32, ptr %10, align 2, !tbaa !50
  %11 = lshr i32 %8, 1
  %12 = and i32 %11, 1
  %13 = lshr i32 %8, 2
  %14 = and i32 %13, 1
  %15 = lshr i32 %8, 3
  %16 = and i32 %15, 1
  %17 = add nsw i32 %14, -1
  %18 = add nsw i32 %17, %12
  %19 = add nsw i32 %18, %16
  %20 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 24
  %21 = load i16, ptr %20, align 2, !tbaa !51
  %22 = sext i16 %21 to i32
  %23 = tail call i32 @llvm.smin.i32(i32 %19, i32 %22)
  %24 = trunc i32 %23 to i16
  %25 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  store i16 %24, ptr %25, align 8, !tbaa !52
  %26 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 17
  store i32 1, ptr %26, align 8, !tbaa !57
  br label %27

27:                                               ; preds = %1, %6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i8 @constraintModeToChar(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %3 = load i32, ptr %2, align 4, !tbaa !34
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %1
  %7 = and i32 %3, 14
  %8 = add nsw i32 %7, -2
  %9 = icmp ult i32 %8, 11
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = zext nneg i32 %8 to i64
  %12 = getelementptr inbounds [11 x i8], ptr @switch.table.constraintModeToChar, i64 0, i64 %11
  %13 = load i8, ptr %12, align 1
  br label %14

14:                                               ; preds = %6, %10, %1
  %15 = phi i8 [ 0, %1 ], [ %13, %10 ], [ 0, %6 ]
  ret i8 %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @isLockConstraint(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %3 = load i32, ptr %2, align 4, !tbaa !34
  %4 = and i32 %3, 6
  %5 = icmp eq i32 %4, 6
  %6 = and i32 %3, 12
  %7 = icmp eq i32 %6, 12
  %8 = or i1 %5, %7
  %9 = and i32 %3, 10
  %10 = icmp eq i32 %9, 10
  %11 = select i1 %8, i1 true, i1 %10
  %12 = zext i1 %11 to i8
  ret i8 %12
}

declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #4

declare zeroext i8 @activeSnap(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @planeProjection(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #3 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 5
  %7 = load float, ptr %1, align 4, !tbaa !49
  %8 = load float, ptr %6, align 4, !tbaa !49
  %9 = fadd float %7, %8
  store float %9, ptr %4, align 4, !tbaa !49
  %10 = getelementptr inbounds float, ptr %1, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !49
  %12 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 5, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !49
  %14 = fadd float %11, %13
  %15 = getelementptr inbounds float, ptr %4, i64 1
  store float %14, ptr %15, align 4, !tbaa !49
  %16 = getelementptr inbounds float, ptr %1, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !49
  %18 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 5, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !49
  %20 = fadd float %17, %19
  %21 = getelementptr inbounds float, ptr %4, i64 2
  store float %20, ptr %21, align 4, !tbaa !49
  call void @getViewVector(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5) #9
  %22 = load float, ptr %2, align 4, !tbaa !49
  %23 = load float, ptr %1, align 4, !tbaa !49
  %24 = fsub float %22, %23
  store float %24, ptr %4, align 4, !tbaa !49
  %25 = getelementptr inbounds float, ptr %2, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !49
  %27 = load float, ptr %10, align 4, !tbaa !49
  %28 = fsub float %26, %27
  store float %28, ptr %15, align 4, !tbaa !49
  %29 = getelementptr inbounds float, ptr %2, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !49
  %31 = load float, ptr %16, align 4, !tbaa !49
  %32 = fsub float %30, %31
  store float %32, ptr %21, align 4, !tbaa !49
  %33 = load float, ptr %5, align 4, !tbaa !49
  %34 = getelementptr inbounds float, ptr %5, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !49
  %36 = fmul float %28, %35
  %37 = call float @llvm.fmuladd.f32(float %24, float %33, float %36)
  %38 = getelementptr inbounds float, ptr %5, i64 2
  %39 = load float, ptr %38, align 4, !tbaa !49
  %40 = call float @llvm.fmuladd.f32(float %32, float %39, float %37)
  %41 = call float @llvm.fabs.f32(float %40)
  %42 = fcmp ugt float %41, 0x3F50624DE0000000
  br i1 %42, label %43, label %56

43:                                               ; preds = %3
  %44 = fmul float %28, %28
  %45 = call float @llvm.fmuladd.f32(float %24, float %24, float %44)
  %46 = call float @llvm.fmuladd.f32(float %32, float %32, float %45)
  %47 = fdiv float %46, %40
  store float %33, ptr %4, align 4, !tbaa !49
  store float %35, ptr %15, align 4, !tbaa !49
  store float %39, ptr %21, align 4, !tbaa !49
  %48 = fmul float %33, %47
  store float %48, ptr %4, align 4, !tbaa !49
  %49 = fmul float %35, %47
  store float %49, ptr %15, align 4, !tbaa !49
  %50 = fmul float %39, %47
  store float %50, ptr %21, align 4, !tbaa !49
  %51 = fadd float %23, %48
  store float %51, ptr %2, align 4, !tbaa !49
  %52 = load float, ptr %10, align 4, !tbaa !49
  %53 = fadd float %49, %52
  store float %53, ptr %25, align 4, !tbaa !49
  %54 = load float, ptr %16, align 4, !tbaa !49
  %55 = fadd float %50, %54
  store float %55, ptr %29, align 4, !tbaa !49
  br label %56

56:                                               ; preds = %3, %43
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @axisProjection(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3) unnamed_addr #3 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #9
  %16 = load float, ptr %2, align 4, !tbaa !49
  %17 = fcmp oeq float %16, 0.000000e+00
  br i1 %17, label %18, label %26

18:                                               ; preds = %4
  %19 = getelementptr inbounds float, ptr %2, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !49
  %21 = fcmp oeq float %20, 0.000000e+00
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = getelementptr inbounds float, ptr %2, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !49
  %25 = fcmp une float %24, 0.000000e+00
  br i1 %25, label %26, label %287

26:                                               ; preds = %18, %4, %22
  %27 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 5
  %28 = load float, ptr %27, align 4, !tbaa !49
  store float %28, ptr %8, align 4, !tbaa !49
  %29 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 5, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !49
  %31 = getelementptr inbounds float, ptr %8, i64 1
  store float %30, ptr %31, align 4, !tbaa !49
  %32 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 5, i64 2
  %33 = load float, ptr %32, align 4, !tbaa !49
  %34 = getelementptr inbounds float, ptr %8, i64 2
  store float %33, ptr %34, align 4, !tbaa !49
  %35 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %36 = load i8, ptr %35, align 8, !tbaa !70
  %37 = icmp eq i8 %36, 1
  br i1 %37, label %38, label %105

38:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  %39 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 28, i64 3
  %40 = load float, ptr %39, align 4, !tbaa !49
  %41 = fsub float %28, %40
  store float %41, ptr %5, align 4, !tbaa !49
  %42 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 28, i64 3, i64 1
  %43 = load float, ptr %42, align 4, !tbaa !49
  %44 = fsub float %30, %43
  %45 = getelementptr inbounds float, ptr %5, i64 1
  store float %44, ptr %45, align 4, !tbaa !49
  %46 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 28, i64 3, i64 2
  %47 = load float, ptr %46, align 4, !tbaa !49
  %48 = fsub float %33, %47
  %49 = getelementptr inbounds float, ptr %5, i64 2
  store float %48, ptr %49, align 4, !tbaa !49
  %50 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 28, i64 2
  %51 = load float, ptr %50, align 4, !tbaa !49
  %52 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 28, i64 2, i64 1
  %53 = load float, ptr %52, align 4, !tbaa !49
  %54 = fmul float %44, %53
  %55 = tail call float @llvm.fmuladd.f32(float %41, float %51, float %54)
  %56 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 28, i64 2, i64 2
  %57 = load float, ptr %56, align 4, !tbaa !49
  %58 = tail call float @llvm.fmuladd.f32(float %48, float %57, float %55)
  %59 = fcmp olt float %58, 0.000000e+00
  br i1 %59, label %60, label %64

60:                                               ; preds = %38
  %61 = fneg float %41
  store float %61, ptr %5, align 4, !tbaa !49
  %62 = fneg float %44
  store float %62, ptr %45, align 4, !tbaa !49
  %63 = fneg float %48
  store float %63, ptr %49, align 4, !tbaa !49
  br label %64

64:                                               ; preds = %60, %38
  call void @project_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull %50) #9
  %65 = load float, ptr %5, align 4, !tbaa !49
  %66 = load float, ptr %45, align 4, !tbaa !49
  %67 = fmul float %66, %66
  %68 = call float @llvm.fmuladd.f32(float %65, float %65, float %67)
  %69 = load float, ptr %49, align 4, !tbaa !49
  %70 = call float @llvm.fmuladd.f32(float %69, float %69, float %68)
  %71 = call float @sqrtf(float noundef %70) #9
  %72 = fcmp olt float %71, 1.000000e+00
  br i1 %72, label %73, label %104

73:                                               ; preds = %64
  %74 = load float, ptr %50, align 4, !tbaa !49
  %75 = load float, ptr %52, align 4, !tbaa !49
  %76 = fmul float %75, %75
  %77 = call float @llvm.fmuladd.f32(float %74, float %74, float %76)
  %78 = load float, ptr %56, align 4, !tbaa !49
  %79 = call float @llvm.fmuladd.f32(float %78, float %78, float %77)
  %80 = fcmp ogt float %79, 0x38AA95A5C0000000
  br i1 %80, label %81, label %90

81:                                               ; preds = %73
  %82 = call float @sqrtf(float noundef %79) #9
  %83 = fdiv float 1.000000e+00, %82
  %84 = load float, ptr %50, align 4, !tbaa !49
  %85 = fmul float %84, %83
  %86 = load float, ptr %52, align 4, !tbaa !49
  %87 = fmul float %83, %86
  %88 = load float, ptr %56, align 4, !tbaa !49
  %89 = fmul float %83, %88
  br label %90

90:                                               ; preds = %81, %73
  %91 = phi float [ %89, %81 ], [ 0.000000e+00, %73 ]
  %92 = phi float [ %87, %81 ], [ 0.000000e+00, %73 ]
  %93 = phi float [ %85, %81 ], [ 0.000000e+00, %73 ]
  %94 = fsub float 1.000000e+00, %71
  %95 = fmul float %94, %93
  %96 = fmul float %94, %92
  %97 = fmul float %94, %91
  %98 = load float, ptr %8, align 4, !tbaa !49
  %99 = fsub float %98, %95
  store float %99, ptr %8, align 4, !tbaa !49
  %100 = load float, ptr %31, align 4, !tbaa !49
  %101 = fsub float %100, %96
  store float %101, ptr %31, align 4, !tbaa !49
  %102 = load float, ptr %34, align 4, !tbaa !49
  %103 = fsub float %102, %97
  store float %103, ptr %34, align 4, !tbaa !49
  br label %104

104:                                              ; preds = %90, %64
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  br label %105

105:                                              ; preds = %26, %104
  %106 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 28, i64 2
  %107 = call float @angle_v3v3(ptr noundef %1, ptr noundef nonnull %106) #9
  %108 = call float @llvm.fabs.f32(float %107)
  %109 = fcmp ogt float %108, 0x3FF921FB60000000
  %110 = fsub float 0x400921FB60000000, %108
  %111 = select i1 %109, float %110, float %108
  %112 = fmul float %111, 0x404CA5DC20000000
  %113 = fcmp olt float %112, 5.000000e+00
  br i1 %113, label %114, label %162

114:                                              ; preds = %105
  %115 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 28, i64 1
  call void @project_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %2, ptr noundef nonnull %115) #9
  %116 = load float, ptr %115, align 4, !tbaa !49
  %117 = load float, ptr %7, align 4, !tbaa !49
  %118 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 28, i64 1, i64 1
  %119 = load float, ptr %118, align 4, !tbaa !49
  %120 = getelementptr inbounds float, ptr %7, i64 1
  %121 = load float, ptr %120, align 4, !tbaa !49
  %122 = fmul float %119, %121
  %123 = call float @llvm.fmuladd.f32(float %116, float %117, float %122)
  %124 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 28, i64 1, i64 2
  %125 = load float, ptr %124, align 4, !tbaa !49
  %126 = getelementptr inbounds float, ptr %7, i64 2
  %127 = load float, ptr %126, align 4, !tbaa !49
  %128 = call float @llvm.fmuladd.f32(float %125, float %127, float %123)
  %129 = fmul float %128, 2.000000e+00
  %130 = fcmp olt float %129, 0.000000e+00
  %131 = fneg float %129
  %132 = select i1 %130, float %131, float %129
  %133 = load float, ptr %1, align 4, !tbaa !49
  store float %133, ptr %3, align 4, !tbaa !49
  %134 = getelementptr inbounds float, ptr %1, i64 1
  %135 = load float, ptr %134, align 4, !tbaa !49
  %136 = getelementptr inbounds float, ptr %3, i64 1
  store float %135, ptr %136, align 4, !tbaa !49
  %137 = getelementptr inbounds float, ptr %1, i64 2
  %138 = load float, ptr %137, align 4, !tbaa !49
  %139 = getelementptr inbounds float, ptr %3, i64 2
  store float %138, ptr %139, align 4, !tbaa !49
  %140 = fmul float %135, %135
  %141 = call float @llvm.fmuladd.f32(float %133, float %133, float %140)
  %142 = call float @llvm.fmuladd.f32(float %138, float %138, float %141)
  %143 = fcmp ogt float %142, 0x38AA95A5C0000000
  br i1 %143, label %144, label %153

144:                                              ; preds = %114
  %145 = call float @sqrtf(float noundef %142) #9
  %146 = fdiv float 1.000000e+00, %145
  %147 = load float, ptr %3, align 4, !tbaa !49
  %148 = fmul float %147, %146
  store float %148, ptr %3, align 4, !tbaa !49
  %149 = load float, ptr %136, align 4, !tbaa !49
  %150 = fmul float %146, %149
  store float %150, ptr %136, align 4, !tbaa !49
  %151 = load float, ptr %139, align 4, !tbaa !49
  %152 = fmul float %146, %151
  br label %154

153:                                              ; preds = %114
  store float 0.000000e+00, ptr %3, align 4, !tbaa !49
  store float 0.000000e+00, ptr %136, align 4, !tbaa !49
  br label %154

154:                                              ; preds = %144, %153
  %155 = phi float [ 0.000000e+00, %153 ], [ %152, %144 ]
  store float %155, ptr %139, align 4, !tbaa !49
  %156 = fmul float %132, %131
  %157 = load float, ptr %3, align 4, !tbaa !49
  %158 = fmul float %156, %157
  store float %158, ptr %3, align 4, !tbaa !49
  %159 = load float, ptr %136, align 4, !tbaa !49
  %160 = fmul float %156, %159
  store float %160, ptr %136, align 4, !tbaa !49
  %161 = fmul float %156, %155
  store float %161, ptr %139, align 4, !tbaa !49
  br label %287

162:                                              ; preds = %105
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #9
  call void @getViewVector(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %14) #9
  %163 = getelementptr inbounds float, ptr %14, i64 1
  %164 = load float, ptr %163, align 4, !tbaa !49
  %165 = getelementptr inbounds float, ptr %1, i64 2
  %166 = load float, ptr %165, align 4, !tbaa !49
  %167 = getelementptr inbounds float, ptr %14, i64 2
  %168 = load float, ptr %167, align 4, !tbaa !49
  %169 = getelementptr inbounds float, ptr %1, i64 1
  %170 = load float, ptr %169, align 4, !tbaa !49
  %171 = fneg float %168
  %172 = fmul float %170, %171
  %173 = call float @llvm.fmuladd.f32(float %164, float %166, float %172)
  store float %173, ptr %15, align 4, !tbaa !49
  %174 = load float, ptr %1, align 4, !tbaa !49
  %175 = load float, ptr %14, align 4, !tbaa !49
  %176 = fneg float %175
  %177 = fmul float %166, %176
  %178 = call float @llvm.fmuladd.f32(float %168, float %174, float %177)
  %179 = getelementptr inbounds float, ptr %15, i64 1
  store float %178, ptr %179, align 4, !tbaa !49
  %180 = fneg float %164
  %181 = fmul float %174, %180
  %182 = call float @llvm.fmuladd.f32(float %175, float %170, float %181)
  %183 = getelementptr inbounds float, ptr %15, i64 2
  store float %182, ptr %183, align 4, !tbaa !49
  call void @project_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %2, ptr noundef nonnull %15) #9
  %184 = load float, ptr %2, align 4, !tbaa !49
  %185 = load float, ptr %7, align 4, !tbaa !49
  %186 = fsub float %184, %185
  store float %186, ptr %7, align 4, !tbaa !49
  %187 = getelementptr inbounds float, ptr %2, i64 1
  %188 = load float, ptr %187, align 4, !tbaa !49
  %189 = getelementptr inbounds float, ptr %7, i64 1
  %190 = load float, ptr %189, align 4, !tbaa !49
  %191 = fsub float %188, %190
  store float %191, ptr %189, align 4, !tbaa !49
  %192 = getelementptr inbounds float, ptr %2, i64 2
  %193 = load float, ptr %192, align 4, !tbaa !49
  %194 = getelementptr inbounds float, ptr %7, i64 2
  %195 = load float, ptr %194, align 4, !tbaa !49
  %196 = fsub float %193, %195
  store float %196, ptr %194, align 4, !tbaa !49
  %197 = load float, ptr %8, align 4, !tbaa !49
  %198 = fadd float %186, %197
  store float %198, ptr %9, align 4, !tbaa !49
  %199 = load float, ptr %31, align 4, !tbaa !49
  %200 = fadd float %191, %199
  %201 = getelementptr inbounds float, ptr %9, i64 1
  store float %200, ptr %201, align 4, !tbaa !49
  %202 = load float, ptr %34, align 4, !tbaa !49
  %203 = fadd float %196, %202
  %204 = getelementptr inbounds float, ptr %9, i64 2
  store float %203, ptr %204, align 4, !tbaa !49
  call void @getViewVector(ptr noundef %0, ptr noundef nonnull %9, ptr noundef nonnull %6) #9
  %205 = load float, ptr %1, align 4, !tbaa !49
  %206 = load float, ptr %6, align 4, !tbaa !49
  %207 = load float, ptr %169, align 4, !tbaa !49
  %208 = getelementptr inbounds float, ptr %6, i64 1
  %209 = load float, ptr %208, align 4, !tbaa !49
  %210 = fmul float %207, %209
  %211 = call float @llvm.fmuladd.f32(float %205, float %206, float %210)
  %212 = load float, ptr %165, align 4, !tbaa !49
  %213 = getelementptr inbounds float, ptr %6, i64 2
  %214 = load float, ptr %213, align 4, !tbaa !49
  %215 = call float @llvm.fmuladd.f32(float %212, float %214, float %211)
  %216 = call float @llvm.fabs.f32(float %215)
  %217 = fsub float 1.000000e+00, %216
  %218 = fcmp olt float %217, 0x3F2A36E2E0000000
  br i1 %218, label %219, label %233

219:                                              ; preds = %162
  store float %205, ptr %3, align 4, !tbaa !49
  %220 = load float, ptr %169, align 4, !tbaa !49
  %221 = getelementptr inbounds float, ptr %3, i64 1
  store float %220, ptr %221, align 4, !tbaa !49
  %222 = load float, ptr %165, align 4, !tbaa !49
  %223 = getelementptr inbounds float, ptr %3, i64 2
  store float %222, ptr %223, align 4, !tbaa !49
  %224 = fcmp ogt float %215, 0.000000e+00
  br i1 %224, label %225, label %229

225:                                              ; preds = %219
  %226 = fmul float %205, 1.000000e+09
  store float %226, ptr %3, align 4, !tbaa !49
  %227 = fmul float %220, 1.000000e+09
  store float %227, ptr %221, align 4, !tbaa !49
  %228 = fmul float %222, 1.000000e+09
  store float %228, ptr %223, align 4, !tbaa !49
  br label %286

229:                                              ; preds = %219
  %230 = fmul float %205, -1.000000e+09
  store float %230, ptr %3, align 4, !tbaa !49
  %231 = fmul float %220, -1.000000e+09
  store float %231, ptr %221, align 4, !tbaa !49
  %232 = fmul float %222, -1.000000e+09
  store float %232, ptr %223, align 4, !tbaa !49
  br label %286

233:                                              ; preds = %162
  %234 = load float, ptr %8, align 4, !tbaa !49
  %235 = fadd float %205, %234
  store float %235, ptr %12, align 4, !tbaa !49
  %236 = load float, ptr %31, align 4, !tbaa !49
  %237 = fadd float %207, %236
  %238 = getelementptr inbounds float, ptr %12, i64 1
  store float %237, ptr %238, align 4, !tbaa !49
  %239 = load float, ptr %34, align 4, !tbaa !49
  %240 = fadd float %212, %239
  %241 = getelementptr inbounds float, ptr %12, i64 2
  store float %240, ptr %241, align 4, !tbaa !49
  %242 = load float, ptr %9, align 4, !tbaa !49
  %243 = fadd float %206, %242
  store float %243, ptr %13, align 4, !tbaa !49
  %244 = load float, ptr %201, align 4, !tbaa !49
  %245 = fadd float %209, %244
  %246 = getelementptr inbounds float, ptr %13, i64 1
  store float %245, ptr %246, align 4, !tbaa !49
  %247 = load float, ptr %204, align 4, !tbaa !49
  %248 = fadd float %214, %247
  %249 = getelementptr inbounds float, ptr %13, i64 2
  store float %248, ptr %249, align 4, !tbaa !49
  %250 = call i32 @isect_line_line_v3(ptr noundef nonnull %8, ptr noundef nonnull %12, ptr noundef nonnull %9, ptr noundef nonnull %13, ptr noundef nonnull %10, ptr noundef nonnull %11) #9
  %251 = load float, ptr %11, align 4, !tbaa !49
  %252 = load float, ptr %9, align 4, !tbaa !49
  %253 = fsub float %251, %252
  store float %253, ptr %9, align 4, !tbaa !49
  %254 = getelementptr inbounds float, ptr %11, i64 1
  %255 = load float, ptr %254, align 4, !tbaa !49
  %256 = load float, ptr %201, align 4, !tbaa !49
  %257 = fsub float %255, %256
  store float %257, ptr %201, align 4, !tbaa !49
  %258 = getelementptr inbounds float, ptr %11, i64 2
  %259 = load float, ptr %258, align 4, !tbaa !49
  %260 = load float, ptr %204, align 4, !tbaa !49
  %261 = fsub float %259, %260
  store float %261, ptr %204, align 4, !tbaa !49
  %262 = load float, ptr %10, align 4, !tbaa !49
  %263 = load float, ptr %8, align 4, !tbaa !49
  %264 = fsub float %262, %263
  store float %264, ptr %3, align 4, !tbaa !49
  %265 = getelementptr inbounds float, ptr %10, i64 1
  %266 = load float, ptr %265, align 4, !tbaa !49
  %267 = load float, ptr %31, align 4, !tbaa !49
  %268 = fsub float %266, %267
  %269 = getelementptr inbounds float, ptr %3, i64 1
  store float %268, ptr %269, align 4, !tbaa !49
  %270 = getelementptr inbounds float, ptr %10, i64 2
  %271 = load float, ptr %270, align 4, !tbaa !49
  %272 = load float, ptr %34, align 4, !tbaa !49
  %273 = fsub float %271, %272
  %274 = getelementptr inbounds float, ptr %3, i64 2
  store float %273, ptr %274, align 4, !tbaa !49
  %275 = call float @llvm.fabs.f32(float %264)
  %276 = fcmp ueq float %275, 0x7FF0000000000000
  br i1 %276, label %277, label %278

277:                                              ; preds = %233
  store float 0.000000e+00, ptr %3, align 4, !tbaa !49
  br label %278

278:                                              ; preds = %277, %233
  %279 = call float @llvm.fabs.f32(float %268)
  %280 = fcmp ueq float %279, 0x7FF0000000000000
  br i1 %280, label %281, label %282

281:                                              ; preds = %278
  store float 0.000000e+00, ptr %269, align 4, !tbaa !49
  br label %282

282:                                              ; preds = %281, %278
  %283 = call float @llvm.fabs.f32(float %273)
  %284 = fcmp ueq float %283, 0x7FF0000000000000
  br i1 %284, label %285, label %286

285:                                              ; preds = %282
  store float 0.000000e+00, ptr %274, align 4, !tbaa !49
  br label %286

286:                                              ; preds = %282, %285, %225, %229
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #9
  br label %287

287:                                              ; preds = %154, %286, %22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @postConstraintChecks(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 3
  tail call void @mul_m3_v3(ptr noundef nonnull %4, ptr noundef %1) #9
  tail call void @snapGridIncrement(ptr noundef %0, ptr noundef %1) #9
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !48
  %7 = and i32 %6, 512
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %11 = load i32, ptr %10, align 4, !tbaa !34
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  store float 1.000000e+00, ptr %1, align 4, !tbaa !49
  br label %15

15:                                               ; preds = %14, %9
  %16 = and i32 %11, 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = getelementptr inbounds float, ptr %1, i64 1
  store float 1.000000e+00, ptr %19, align 4, !tbaa !49
  br label %20

20:                                               ; preds = %18, %15
  %21 = and i32 %11, 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = getelementptr inbounds float, ptr %1, i64 2
  store float 1.000000e+00, ptr %24, align 4, !tbaa !49
  br label %25

25:                                               ; preds = %20, %23, %3
  %26 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %27 = tail call zeroext i8 @applyNumInput(ptr noundef nonnull %26, ptr noundef %1) #9
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void @constraintNumInput(ptr noundef %0, ptr noundef %1)
  tail call void @removeAspectRatio(ptr noundef %0, ptr noundef %1) #9
  br label %30

30:                                               ; preds = %29, %25
  %31 = load i32, ptr %5, align 4, !tbaa !48
  %32 = and i32 %31, 1048576
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %63, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 8
  %36 = load i16, ptr %35, align 4, !tbaa !87
  %37 = and i16 %36, 1
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %39, label %63

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 48
  tail call void @mul_v3_m3v3(ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %40) #9
  %41 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %42 = load i32, ptr %41, align 4, !tbaa !34
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %63, label %45

45:                                               ; preds = %39
  %46 = load i32, ptr %5, align 4, !tbaa !48
  %47 = and i32 %46, 512
  %48 = icmp eq i32 %47, 0
  %49 = select i1 %48, float 0.000000e+00, float 1.000000e+00
  %50 = and i32 %42, 2
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  store float %49, ptr %1, align 4, !tbaa !49
  br label %53

53:                                               ; preds = %52, %45
  %54 = and i32 %42, 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = getelementptr inbounds float, ptr %1, i64 1
  store float %49, ptr %57, align 4, !tbaa !49
  br label %58

58:                                               ; preds = %56, %53
  %59 = and i32 %42, 8
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = getelementptr inbounds float, ptr %1, i64 2
  store float %49, ptr %62, align 4, !tbaa !49
  br label %63

63:                                               ; preds = %61, %58, %39, %34, %30
  %64 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %65 = load i32, ptr %64, align 4, !tbaa !34
  %66 = and i32 %65, 2
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %63
  %69 = load float, ptr %1, align 4, !tbaa !49
  store float %69, ptr %2, align 4, !tbaa !49
  br label %70

70:                                               ; preds = %68, %63
  %71 = phi i32 [ 1, %68 ], [ 0, %63 ]
  %72 = and i32 %65, 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds float, ptr %1, i64 1
  %76 = load float, ptr %75, align 4, !tbaa !49
  %77 = add nuw nsw i32 %71, 1
  %78 = zext nneg i32 %71 to i64
  %79 = getelementptr inbounds float, ptr %2, i64 %78
  store float %76, ptr %79, align 4, !tbaa !49
  br label %80

80:                                               ; preds = %74, %70
  %81 = phi i32 [ %77, %74 ], [ %71, %70 ]
  %82 = and i32 %65, 8
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds float, ptr %1, i64 2
  %86 = load float, ptr %85, align 4, !tbaa !49
  %87 = zext nneg i32 %81 to i64
  %88 = getelementptr inbounds float, ptr %2, i64 %87
  store float %86, ptr %88, align 4, !tbaa !49
  br label %89

89:                                               ; preds = %84, %80
  %90 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 2
  tail call void @mul_m3_v3(ptr noundef nonnull %90, ptr noundef %1) #9
  ret void
}

declare void @getViewVector(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

declare float @angle_v3v3(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @project_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @isect_line_line_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #6

declare void @snapGridIncrement(ptr noundef, ptr noundef) local_unnamed_addr #4

declare zeroext i8 @applyNumInput(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @removeAspectRatio(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @mul_v3_m3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare zeroext i8 @hasNumInput(ptr noundef) local_unnamed_addr #4

declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @projectFloatView(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 7547212}
!8 = !{!"MaxCount", i64 1843200}
!9 = !{!"MaxInternalCount", i64 1843200}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1843200, i32 1}
!18 = !{i32 100000, i64 1843200, i32 1}
!19 = !{i32 200000, i64 1843200, i32 1}
!20 = !{i32 300000, i64 921600, i32 7}
!21 = !{i32 400000, i64 921600, i32 7}
!22 = !{i32 500000, i64 921600, i32 7}
!23 = !{i32 600000, i64 921600, i32 7}
!24 = !{i32 700000, i64 921600, i32 7}
!25 = !{i32 800000, i64 921600, i32 7}
!26 = !{i32 900000, i64 921600, i32 7}
!27 = !{i32 950000, i64 921600, i32 7}
!28 = !{i32 990000, i64 115200, i32 8}
!29 = !{i32 999000, i64 14400, i32 12}
!30 = !{i32 999900, i64 1440, i32 13}
!31 = !{i32 999990, i64 21, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !36, i64 260}
!35 = !{!"TransInfo", !36, i64 0, !36, i64 4, !36, i64 8, !39, i64 12, !36, i64 16, !40, i64 20, !40, i64 24, !41, i64 32, !41, i64 40, !36, i64 48, !41, i64 56, !41, i64 64, !41, i64 72, !42, i64 80, !43, i64 296, !46, i64 440, !47, i64 584, !36, i64 640, !40, i64 644, !37, i64 648, !37, i64 668, !37, i64 680, !37, i64 688, !39, i64 696, !39, i64 698, !37, i64 700, !37, i64 712, !37, i64 716, !37, i64 780, !37, i64 844, !37, i64 908, !39, i64 972, !39, i64 974, !37, i64 976, !37, i64 977, !37, i64 980, !37, i64 992, !37, i64 1028, !37, i64 1064, !41, i64 1128, !41, i64 1136, !41, i64 1144, !39, i64 1152, !39, i64 1154, !39, i64 1156, !39, i64 1158, !39, i64 1160, !37, i64 1164, !37, i64 1180, !37, i64 1196, !37, i64 1208, !37, i64 1220, !41, i64 1224, !41, i64 1232, !41, i64 1240, !41, i64 1248, !41, i64 1256, !41, i64 1264, !41, i64 1272, !41, i64 1280, !41, i64 1288, !37, i64 1296, !40, i64 1304, !41, i64 1312, !37, i64 1320, !41, i64 1360, !41, i64 1368, !41, i64 1376, !41, i64 1384}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"short", !37, i64 0}
!40 = !{!"float", !37, i64 0}
!41 = !{!"any pointer", !37, i64 0}
!42 = !{!"TransCon", !39, i64 0, !37, i64 2, !37, i64 52, !37, i64 88, !37, i64 124, !37, i64 160, !37, i64 172, !36, i64 180, !41, i64 184, !41, i64 192, !41, i64 200, !41, i64 208}
!43 = !{!"TransSnap", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !37, i64 8, !37, i64 9, !37, i64 10, !37, i64 11, !39, i64 12, !37, i64 16, !37, i64 28, !37, i64 40, !37, i64 52, !37, i64 64, !44, i64 72, !41, i64 88, !40, i64 96, !45, i64 104, !41, i64 112, !41, i64 120, !41, i64 128, !41, i64 136}
!44 = !{!"ListBase", !41, i64 0, !41, i64 8}
!45 = !{!"double", !37, i64 0}
!46 = !{!"NumInput", !39, i64 0, !36, i64 4, !37, i64 8, !37, i64 20, !39, i64 22, !37, i64 24, !37, i64 32, !37, i64 44, !37, i64 56, !39, i64 68, !37, i64 70, !36, i64 136}
!47 = !{!"MouseInput", !41, i64 0, !41, i64 8, !37, i64 16, !37, i64 24, !37, i64 28, !37, i64 36, !40, i64 44, !41, i64 48}
!48 = !{!35, !36, i64 4}
!49 = !{!40, !40, i64 0}
!50 = !{!37, !37, i64 0}
!51 = !{!35, !39, i64 698}
!52 = !{!35, !39, i64 440}
!53 = !{!35, !41, i64 264}
!54 = !{!35, !41, i64 272}
!55 = !{!35, !41, i64 280}
!56 = !{!35, !41, i64 288}
!57 = !{!35, !36, i64 640}
!58 = !{!35, !39, i64 296}
!59 = !{!35, !36, i64 48}
!60 = !{!35, !41, i64 56}
!61 = !{!62, !40, i64 8}
!62 = !{!"TransData", !40, i64 0, !40, i64 4, !40, i64 8, !41, i64 16, !37, i64 24, !41, i64 40, !40, i64 48, !37, i64 52, !37, i64 64, !37, i64 100, !37, i64 136, !41, i64 176, !41, i64 184, !41, i64 192, !41, i64 200, !41, i64 208, !36, i64 216, !39, i64 220}
!63 = !{!62, !41, i64 176}
!64 = !{!35, !41, i64 1312}
!65 = !{!35, !41, i64 1128}
!66 = distinct !{!66, !67, !68}
!67 = !{!"llvm.loop.mustprogress"}
!68 = !{!"llvm.loop.unroll.disable"}
!69 = !{!35, !39, i64 80}
!70 = !{!35, !37, i64 976}
!71 = !{!42, !36, i64 180}
!72 = !{!42, !41, i64 184}
!73 = !{!36, !36, i64 0}
!74 = !{!35, !36, i64 16}
!75 = !{!35, !41, i64 1240}
!76 = !{!77, !41, i64 96}
!77 = !{!"ScrArea", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !41, i64 48, !78, i64 56, !37, i64 72, !37, i64 73, !39, i64 74, !39, i64 76, !39, i64 78, !39, i64 80, !39, i64 82, !39, i64 84, !37, i64 86, !37, i64 87, !41, i64 88, !44, i64 96, !44, i64 112, !44, i64 128, !44, i64 144}
!78 = !{!"rcti", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12}
!79 = !{!35, !40, i64 644}
!80 = !{!35, !41, i64 1248}
!81 = !{!82, !39, i64 208}
!82 = !{!"ARegion", !41, i64 0, !41, i64 8, !83, i64 16, !78, i64 176, !78, i64 192, !39, i64 208, !39, i64 210, !39, i64 212, !39, i64 214, !39, i64 216, !39, i64 218, !40, i64 220, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !39, i64 232, !39, i64 234, !39, i64 236, !39, i64 238, !41, i64 240, !44, i64 248, !44, i64 264, !44, i64 280, !44, i64 296, !44, i64 312, !44, i64 328, !44, i64 344, !41, i64 360, !41, i64 368, !41, i64 376}
!83 = !{!"View2D", !84, i64 0, !84, i64 16, !78, i64 32, !78, i64 48, !78, i64 64, !37, i64 80, !37, i64 88, !40, i64 96, !40, i64 100, !39, i64 104, !39, i64 106, !39, i64 108, !39, i64 110, !39, i64 112, !39, i64 114, !39, i64 116, !39, i64 118, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126, !41, i64 128, !36, i64 136, !36, i64 140, !41, i64 144, !41, i64 152}
!84 = !{!"rctf", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!85 = distinct !{!85, !67, !68}
!86 = !{!35, !36, i64 8}
!87 = !{!35, !39, i64 308}
