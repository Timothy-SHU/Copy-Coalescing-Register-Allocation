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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @constraintNumInput(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %4 = load i32, ptr %3, align 4, !tbaa !34
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %47, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !48
  %10 = and i32 %9, 512
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, float 0.000000e+00, float 1.000000e+00
  %13 = tail call i32 @getConstraintSpaceDimension(ptr noundef nonnull %0) #13
  switch i32 %13, label %47 [
    i32 2, label %14
    i32 1, label %25
  ]

14:                                               ; preds = %7
  %15 = and i32 %4, 14
  switch i32 %15, label %47 [
    i32 6, label %16
    i32 12, label %18
    i32 10, label %21
  ]

16:                                               ; preds = %14
  %17 = getelementptr inbounds float, ptr %1, i64 2
  br label %45

18:                                               ; preds = %14
  %19 = getelementptr inbounds float, ptr %1, i64 1
  %20 = load <2 x float>, ptr %1, align 4, !tbaa !49
  store <2 x float> %20, ptr %19, align 4, !tbaa !49
  br label %45

21:                                               ; preds = %14
  %22 = getelementptr inbounds float, ptr %1, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !49
  %24 = getelementptr inbounds float, ptr %1, i64 2
  store float %23, ptr %24, align 4, !tbaa !49
  br label %45

25:                                               ; preds = %7
  %26 = and i32 %4, 2
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds float, ptr %1, i64 1
  store float %12, ptr %29, align 4, !tbaa !49
  %30 = getelementptr inbounds float, ptr %1, i64 2
  br label %45

31:                                               ; preds = %25
  %32 = and i32 %4, 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = load float, ptr %1, align 4, !tbaa !49
  %36 = getelementptr inbounds float, ptr %1, i64 1
  store float %35, ptr %36, align 4, !tbaa !49
  store float %12, ptr %1, align 4, !tbaa !49
  %37 = getelementptr inbounds float, ptr %1, i64 2
  br label %45

38:                                               ; preds = %31
  %39 = and i32 %4, 8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = load float, ptr %1, align 4, !tbaa !49
  %43 = getelementptr inbounds float, ptr %1, i64 2
  store float %42, ptr %43, align 4, !tbaa !49
  store float %12, ptr %1, align 4, !tbaa !49
  %44 = getelementptr inbounds float, ptr %1, i64 1
  br label %45

45:                                               ; preds = %16, %21, %18, %34, %41, %28
  %46 = phi ptr [ %30, %28 ], [ %44, %41 ], [ %37, %34 ], [ %1, %18 ], [ %22, %21 ], [ %17, %16 ]
  store float %12, ptr %46, align 4, !tbaa !49
  br label %47

47:                                               ; preds = %45, %7, %38, %14, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @setConstraint(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #3 {
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1, i64 1
  %6 = tail call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef %3, i64 noundef 49) #14
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 2
  tail call void @copy_m3_m3(ptr noundef nonnull %7, ptr noundef %1) #14
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  store i32 %2, ptr %8, align 4, !tbaa !34
  tail call void @getConstraintMatrix(ptr noundef %0) #13
  tail call void @startConstraint(ptr noundef %0) #13
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 8
  store ptr null, ptr %9, align 8, !tbaa !50
  %10 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 9
  store ptr @applyAxisConstraintVec, ptr %10, align 8, !tbaa !51
  %11 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 10
  store ptr @applyAxisConstraintSize, ptr %11, align 8, !tbaa !52
  %12 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 11
  store ptr @applyAxisConstraintRot, ptr %12, align 8, !tbaa !53
  %13 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 17
  store i32 1, ptr %13, align 8, !tbaa !54
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @copy_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @getConstraintMatrix(ptr noundef %0) local_unnamed_addr #3 {
  %2 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %2) #15
  %3 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 3
  %4 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 2
  %5 = tail call zeroext i8 @invert_m3_m3(ptr noundef nonnull %3, ptr noundef nonnull %4) #14
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 4
  tail call void @unit_m3(ptr noundef nonnull %6) #14
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %8 = load i32, ptr %7, align 4, !tbaa !34
  %9 = and i32 %8, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 4, i64 0, i64 2
  store float 0.000000e+00, ptr %12, align 4, !tbaa !49
  store <2 x float> zeroinitializer, ptr %6, align 4, !tbaa !49
  br label %13

13:                                               ; preds = %11, %1
  %14 = and i32 %8, 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 4, i64 1
  %18 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 4, i64 1, i64 2
  store float 0.000000e+00, ptr %18, align 4, !tbaa !49
  store <2 x float> zeroinitializer, ptr %17, align 4, !tbaa !49
  br label %19

19:                                               ; preds = %16, %13
  %20 = and i32 %8, 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 4, i64 2
  %24 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 4, i64 2, i64 2
  store float 0.000000e+00, ptr %24, align 4, !tbaa !49
  store <2 x float> zeroinitializer, ptr %23, align 4, !tbaa !49
  br label %25

25:                                               ; preds = %22, %19
  call void @mul_m3_m3m3(ptr noundef nonnull %2, ptr noundef nonnull %6, ptr noundef nonnull %3) #14
  call void @mul_m3_m3m3(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %2) #14
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %2) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @startConstraint(ptr nocapture noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %3 = load i32, ptr %2, align 4, !tbaa !34
  %4 = or i32 %3, 1
  store i32 %4, ptr %2, align 4, !tbaa !34
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1
  store i8 32, ptr %5, align 2, !tbaa !55
  %6 = tail call i32 @getConstraintSpaceDimension(ptr noundef %0) #13
  %7 = add nsw i32 %6, -1
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 24
  %9 = load i16, ptr %8, align 2, !tbaa !56
  %10 = sext i16 %9 to i32
  %11 = tail call fastcc i32 @min_ii(i32 noundef %7, i32 noundef %10) #13
  %12 = trunc i32 %11 to i16
  %13 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  store i16 %12, ptr %13, align 8, !tbaa !57
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @applyAxisConstraintVec(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef writeonly %4) #3 !PGOFuncName !58 {
  %6 = alloca [3 x float], align 4
  tail call fastcc void @copy_v3_v3(ptr noundef %3, ptr noundef %2) #13
  %7 = icmp eq ptr %1, null
  br i1 %7, label %8, label %55

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %10 = load i32, ptr %9, align 4, !tbaa !34
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %55, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 4
  tail call void @mul_m3_v3(ptr noundef nonnull %14, ptr noundef %3) #14
  %15 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14
  %16 = load i16, ptr %15, align 8, !tbaa !59
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = tail call zeroext i8 @activeSnap(ptr noundef nonnull %0) #14
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %54

21:                                               ; preds = %18, %13
  %22 = tail call i32 @getConstraintSpaceDimension(ptr noundef nonnull %0) #13
  switch i32 %22, label %54 [
    i32 2, label %23
    i32 1, label %35
  ]

23:                                               ; preds = %21
  %24 = load float, ptr %3, align 4, !tbaa !49
  %25 = fcmp une float %24, 0.000000e+00
  br i1 %25, label %34, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds float, ptr %3, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !49
  %29 = fcmp une float %28, 0.000000e+00
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds float, ptr %3, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !49
  %33 = fcmp une float %32, 0.000000e+00
  br i1 %33, label %34, label %54

34:                                               ; preds = %30, %26, %23
  tail call fastcc void @planeProjection(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull %3) #13
  br label %54

35:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #15
  %36 = load i32, ptr %9, align 4, !tbaa !34
  %37 = and i32 %36, 2
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 2
  br label %51

41:                                               ; preds = %35
  %42 = and i32 %36, 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 2, i64 1
  br label %51

46:                                               ; preds = %41
  %47 = and i32 %36, 8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 2, i64 2
  br label %51

51:                                               ; preds = %39, %49, %44
  %52 = phi ptr [ %45, %44 ], [ %50, %49 ], [ %40, %39 ]
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %52) #13
  br label %53

53:                                               ; preds = %51, %46
  call fastcc void @axisProjection(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef %2, ptr noundef %3) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #15
  br label %54

54:                                               ; preds = %21, %34, %30, %53, %18
  call fastcc void @postConstraintChecks(ptr noundef nonnull %0, ptr noundef %3, ptr noundef %4) #13
  br label %55

55:                                               ; preds = %54, %8, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @applyAxisConstraintSize(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2) #3 !PGOFuncName !60 {
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
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #15
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
  call void @mul_m3_m3m3(ptr noundef nonnull %4, ptr noundef %2, ptr noundef nonnull %26) #14
  %27 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 2
  call void @mul_m3_m3m3(ptr noundef %2, ptr noundef nonnull %27, ptr noundef nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #15
  br label %28

28:                                               ; preds = %25, %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @applyAxisConstraintRot(ptr noundef %0, ptr noundef readnone %1, ptr nocapture noundef %2, ptr noundef %3) #3 !PGOFuncName !61 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %34

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %8 = load i32, ptr %7, align 4, !tbaa !34
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %34, label %11

11:                                               ; preds = %6
  %12 = and i32 %8, 14
  switch i32 %12, label %21 [
    i32 2, label %13
    i32 12, label %13
    i32 4, label %15
    i32 10, label %15
    i32 8, label %17
    i32 6, label %17
  ]

13:                                               ; preds = %11, %11
  %14 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 2
  br label %19

15:                                               ; preds = %11, %11
  %16 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 2, i64 1
  br label %19

17:                                               ; preds = %11, %11
  %18 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 2, i64 2
  br label %19

19:                                               ; preds = %13, %15, %17
  %20 = phi ptr [ %18, %17 ], [ %16, %15 ], [ %14, %13 ]
  tail call fastcc void @copy_v3_v3(ptr noundef %2, ptr noundef nonnull %20) #13
  br label %21

21:                                               ; preds = %19, %11
  %22 = icmp eq ptr %3, null
  br i1 %22, label %34, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %25 = tail call zeroext i8 @hasNumInput(ptr noundef nonnull %24) #14
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 28, i64 2
  %29 = tail call fastcc float @dot_v3v3(ptr noundef %2, ptr noundef nonnull %28) #13
  %30 = fcmp ogt float %29, 0.000000e+00
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load float, ptr %3, align 4, !tbaa !49
  %33 = fneg float %32
  store float %33, ptr %3, align 4, !tbaa !49
  br label %34

34:                                               ; preds = %21, %23, %31, %27, %6, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @setAxisMatrixConstraint(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #3 {
  %4 = alloca [3 x [3 x float]], align 16
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %6 = load i32, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %23

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #15
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !48
  %11 = and i32 %10, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 64
  %15 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %16 = load ptr, ptr %15, align 8, !tbaa !63
  %17 = getelementptr inbounds %struct.TransData, ptr %16, i64 0, i32 10
  call void @mul_m3_m3m3(ptr noundef nonnull %4, ptr noundef nonnull %14, ptr noundef nonnull %17) #14
  br label %22

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %20 = load ptr, ptr %19, align 8, !tbaa !63
  %21 = getelementptr inbounds %struct.TransData, ptr %20, i64 0, i32 10
  call void @copy_m3_m3(ptr noundef nonnull %4, ptr noundef nonnull %21) #14
  br label %22

22:                                               ; preds = %18, %13
  call void @setConstraint(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef %1, ptr noundef %2) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #15
  br label %36

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1, i64 1
  %25 = tail call ptr @BLI_strncpy(ptr noundef nonnull %24, ptr noundef %2, i64 noundef 49) #14
  %26 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 2
  %27 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %28 = load ptr, ptr %27, align 8, !tbaa !63
  %29 = getelementptr inbounds %struct.TransData, ptr %28, i64 0, i32 10
  tail call void @copy_m3_m3(ptr noundef nonnull %26, ptr noundef nonnull %29) #14
  %30 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  store i32 %1, ptr %30, align 4, !tbaa !34
  tail call void @getConstraintMatrix(ptr noundef nonnull %0) #13
  tail call void @startConstraint(ptr noundef nonnull %0) #13
  %31 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 8
  store ptr @drawObjectConstraint, ptr %31, align 8, !tbaa !50
  %32 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 9
  store ptr @applyObjectConstraintVec, ptr %32, align 8, !tbaa !51
  %33 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 10
  store ptr @applyObjectConstraintSize, ptr %33, align 8, !tbaa !52
  %34 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 11
  store ptr @applyObjectConstraintRot, ptr %34, align 8, !tbaa !53
  %35 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 17
  store i32 1, ptr %35, align 8, !tbaa !54
  br label %36

36:                                               ; preds = %23, %22
  ret void
}

; Function Attrs: optsize
declare void @mul_m3_m3m3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal void @drawObjectConstraint(ptr noundef %0) #3 !PGOFuncName !64 {
  %2 = alloca [3 x [3 x float]], align 16
  %3 = alloca [3 x float], align 4
  %4 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %2) #15
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %7 = load i32, ptr %6, align 8, !tbaa !62
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %79

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %11 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %12 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 64
  %13 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 39
  %14 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  br label %15

15:                                               ; preds = %9, %74
  %16 = phi i32 [ 0, %9 ], [ %75, %74 ]
  %17 = phi ptr [ %5, %9 ], [ %76, %74 ]
  %18 = phi i16 [ 1, %9 ], [ 0, %74 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #15
  %19 = load i32, ptr %10, align 4, !tbaa !48
  %20 = and i32 %19, 2048
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.TransData, ptr %17, i64 0, i32 2
  %24 = load float, ptr %23, align 8, !tbaa !65
  %25 = fcmp oeq float %24, 0.000000e+00
  br i1 %25, label %73, label %26

26:                                               ; preds = %22, %15
  %27 = and i32 %19, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.TransData, ptr %17, i64 0, i32 11
  %31 = load ptr, ptr %30, align 8, !tbaa !67
  %32 = getelementptr inbounds %struct.Object, ptr %31, i64 0, i32 47, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %32) #13
  %33 = getelementptr inbounds %struct.TransData, ptr %17, i64 0, i32 10
  br label %53

34:                                               ; preds = %26
  %35 = and i32 %19, 2
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %34
  %38 = load ptr, ptr %11, align 8, !tbaa !68
  %39 = getelementptr inbounds %struct.Object, ptr %38, i64 0, i32 47
  %40 = getelementptr inbounds %struct.TransData, ptr %17, i64 0, i32 7
  call void @mul_v3_m4v3(ptr noundef nonnull %3, ptr noundef nonnull %39, ptr noundef nonnull %40) #14
  %41 = getelementptr inbounds %struct.TransData, ptr %17, i64 0, i32 10
  call void @mul_m3_m3m3(ptr noundef nonnull %2, ptr noundef nonnull %12, ptr noundef nonnull %41) #14
  br label %53

42:                                               ; preds = %34
  %43 = and i32 %19, 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %42
  %46 = load ptr, ptr %13, align 8, !tbaa !69
  %47 = getelementptr inbounds %struct.Object, ptr %46, i64 0, i32 47
  %48 = getelementptr inbounds %struct.TransData, ptr %17, i64 0, i32 7
  call void @mul_v3_m4v3(ptr noundef nonnull %3, ptr noundef nonnull %47, ptr noundef nonnull %48) #14
  %49 = getelementptr inbounds %struct.TransData, ptr %17, i64 0, i32 10
  br label %53

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.TransData, ptr %17, i64 0, i32 7
  call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %51) #13
  %52 = getelementptr inbounds %struct.TransData, ptr %17, i64 0, i32 10
  br label %53

53:                                               ; preds = %37, %50, %45, %29
  %54 = phi ptr [ %33, %29 ], [ %2, %37 ], [ %49, %45 ], [ %52, %50 ]
  %55 = load i32, ptr %14, align 4, !tbaa !34
  %56 = and i32 %55, 2
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %53
  call void @drawLine(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %54, i8 noundef zeroext 88, i16 noundef signext %18) #14
  %59 = load i32, ptr %14, align 4, !tbaa !34
  br label %60

60:                                               ; preds = %58, %53
  %61 = phi i32 [ %59, %58 ], [ %55, %53 ]
  %62 = and i32 %61, 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds [3 x float], ptr %54, i64 1
  call void @drawLine(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %65, i8 noundef zeroext 89, i16 noundef signext %18) #14
  %66 = load i32, ptr %14, align 4, !tbaa !34
  br label %67

67:                                               ; preds = %64, %60
  %68 = phi i32 [ %66, %64 ], [ %61, %60 ]
  %69 = and i32 %68, 8
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds [3 x float], ptr %54, i64 2
  call void @drawLine(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %72, i8 noundef zeroext 90, i16 noundef signext %18) #14
  br label %74

73:                                               ; preds = %22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #15
  br label %79

74:                                               ; preds = %71, %67
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #15
  %75 = add nuw nsw i32 %16, 1
  %76 = getelementptr inbounds %struct.TransData, ptr %17, i64 1
  %77 = load i32, ptr %6, align 8, !tbaa !62
  %78 = icmp slt i32 %75, %77
  br i1 %78, label %15, label %79, !llvm.loop !70

79:                                               ; preds = %74, %1, %73
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %2) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @applyObjectConstraintVec(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) #3 !PGOFuncName !72 {
  %6 = alloca [3 x float], align 4
  tail call fastcc void @copy_v3_v3(ptr noundef %3, ptr noundef %2) #13
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %8 = load i32, ptr %7, align 4, !tbaa !34
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %80, label %11

11:                                               ; preds = %5
  %12 = icmp eq ptr %1, null
  br i1 %12, label %13, label %48

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 4
  tail call void @mul_m3_v3(ptr noundef nonnull %14, ptr noundef %3) #14
  %15 = tail call i32 @getConstraintSpaceDimension(ptr noundef nonnull %0) #13
  switch i32 %15, label %47 [
    i32 2, label %16
    i32 1, label %28
  ]

16:                                               ; preds = %13
  %17 = load float, ptr %3, align 4, !tbaa !49
  %18 = fcmp une float %17, 0.000000e+00
  br i1 %18, label %27, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds float, ptr %3, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !49
  %22 = fcmp une float %21, 0.000000e+00
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds float, ptr %3, i64 2
  %25 = load float, ptr %24, align 4, !tbaa !49
  %26 = fcmp une float %25, 0.000000e+00
  br i1 %26, label %27, label %47

27:                                               ; preds = %23, %19, %16
  tail call fastcc void @planeProjection(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull %3) #13
  br label %47

28:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #15
  %29 = load i32, ptr %7, align 4, !tbaa !34
  %30 = and i32 %29, 2
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 2
  br label %44

34:                                               ; preds = %28
  %35 = and i32 %29, 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 2, i64 1
  br label %44

39:                                               ; preds = %34
  %40 = and i32 %29, 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 2, i64 2
  br label %44

44:                                               ; preds = %32, %42, %37
  %45 = phi ptr [ %38, %37 ], [ %43, %42 ], [ %33, %32 ]
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %45) #13
  br label %46

46:                                               ; preds = %44, %39
  call fastcc void @axisProjection(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef %2, ptr noundef %3) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #15
  br label %47

47:                                               ; preds = %13, %46, %23, %27
  call fastcc void @postConstraintChecks(ptr noundef nonnull %0, ptr noundef %3, ptr noundef %4) #13
  call fastcc void @copy_v3_v3(ptr noundef %3, ptr noundef %4) #13
  br label %80

48:                                               ; preds = %11
  %49 = getelementptr inbounds float, ptr %3, i64 2
  store float 0.000000e+00, ptr %49, align 4, !tbaa !49
  %50 = getelementptr inbounds float, ptr %3, i64 1
  store <2 x float> zeroinitializer, ptr %3, align 4, !tbaa !49
  %51 = and i32 %8, 2
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %48
  %54 = load float, ptr %2, align 4, !tbaa !49
  store float %54, ptr %3, align 4, !tbaa !49
  br label %55

55:                                               ; preds = %53, %48
  %56 = phi i32 [ 1, %53 ], [ 0, %48 ]
  %57 = and i32 %8, 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %55
  %60 = add nuw nsw i32 %56, 1
  %61 = zext nneg i32 %56 to i64
  %62 = getelementptr inbounds float, ptr %2, i64 %61
  %63 = load float, ptr %62, align 4, !tbaa !49
  store float %63, ptr %50, align 4, !tbaa !49
  br label %64

64:                                               ; preds = %59, %55
  %65 = phi i32 [ %60, %59 ], [ %56, %55 ]
  %66 = and i32 %8, 8
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = zext nneg i32 %65 to i64
  %70 = getelementptr inbounds float, ptr %2, i64 %69
  %71 = load float, ptr %70, align 4, !tbaa !49
  store float %71, ptr %49, align 4, !tbaa !49
  br label %72

72:                                               ; preds = %68, %64
  %73 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 10
  tail call void @mul_m3_v3(ptr noundef nonnull %73, ptr noundef nonnull %3) #14
  %74 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %75 = load i32, ptr %74, align 4, !tbaa !48
  %76 = and i32 %75, 2
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 64
  tail call void @mul_m3_v3(ptr noundef nonnull %79, ptr noundef nonnull %3) #14
  br label %80

80:                                               ; preds = %72, %78, %47, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @applyObjectConstraintSize(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3 !PGOFuncName !73 {
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
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #15
  %13 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 10
  %14 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %5, ptr noundef nonnull %13) #14
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
  call void @mul_m3_m3m3(ptr noundef nonnull %4, ptr noundef %2, ptr noundef nonnull %5) #14
  %30 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !48
  %32 = and i32 %31, 2
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 64
  call void @mul_m3_m3m3(ptr noundef %2, ptr noundef nonnull %35, ptr noundef %2) #14
  br label %36

36:                                               ; preds = %34, %29
  call void @mul_m3_m3m3(ptr noundef %2, ptr noundef nonnull %13, ptr noundef nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #15
  br label %37

37:                                               ; preds = %36, %7, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @applyObjectConstraintRot(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr noundef %3) #3 !PGOFuncName !74 {
  %5 = alloca [3 x [3 x float]], align 16
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %7 = load i32, ptr %6, align 4, !tbaa !34
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %49, label %10

10:                                               ; preds = %4
  %11 = and i32 %7, 14
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #15
  %12 = icmp eq ptr %1, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %15 = load ptr, ptr %14, align 8, !tbaa !63
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
  call void @mul_m3_m3m3(ptr noundef nonnull %5, ptr noundef nonnull %23, ptr noundef nonnull %24) #14
  br label %27

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.TransData, ptr %17, i64 0, i32 10
  br label %27

27:                                               ; preds = %25, %22
  %28 = phi ptr [ %5, %22 ], [ %26, %25 ]
  switch i32 %11, label %35 [
    i32 2, label %33
    i32 12, label %33
    i32 4, label %29
    i32 10, label %29
    i32 8, label %31
    i32 6, label %31
  ]

29:                                               ; preds = %27, %27
  %30 = getelementptr inbounds [3 x float], ptr %28, i64 1
  br label %33

31:                                               ; preds = %27, %27
  %32 = getelementptr inbounds [3 x float], ptr %28, i64 2
  br label %33

33:                                               ; preds = %27, %27, %29, %31
  %34 = phi ptr [ %32, %31 ], [ %30, %29 ], [ %28, %27 ], [ %28, %27 ]
  call fastcc void @copy_v3_v3(ptr noundef %2, ptr noundef nonnull %34) #13
  br label %35

35:                                               ; preds = %33, %27
  %36 = icmp eq ptr %3, null
  br i1 %36, label %48, label %37

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %39 = call zeroext i8 @hasNumInput(ptr noundef nonnull %38) #14
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 28, i64 2
  %43 = call fastcc float @dot_v3v3(ptr noundef %2, ptr noundef nonnull %42) #13
  %44 = fcmp ogt float %43, 0.000000e+00
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load float, ptr %3, align 4, !tbaa !49
  %47 = fneg float %46
  store float %47, ptr %3, align 4, !tbaa !49
  br label %48

48:                                               ; preds = %41, %45, %37, %35
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #15
  br label %49

49:                                               ; preds = %48, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @setLocalConstraint(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !48
  %6 = and i32 %5, 2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 64
  tail call void @setConstraint(ptr noundef nonnull %0, ptr noundef nonnull %9, i32 noundef %1, ptr noundef %2) #13
  br label %11

10:                                               ; preds = %3
  tail call void @setAxisMatrixConstraint(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2) #13
  br label %11

11:                                               ; preds = %10, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @setUserConstraint(ptr noundef %0, i16 noundef signext %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #3 {
  %5 = alloca [40 x i8], align 16
  %6 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #15
  switch i16 %1, label %24 [
    i16 0, label %7
    i16 1, label %9
    i16 2, label %11
    i16 3, label %18
    i16 4, label %21
  ]

7:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #15
  %8 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 40, ptr noundef %3, ptr noundef nonnull @.str) #14
  call void @unit_m3(ptr noundef nonnull %6) #14
  call void @setConstraint(ptr noundef %0, ptr noundef nonnull %6, i32 noundef %2, ptr noundef nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #15
  br label %28

9:                                                ; preds = %4
  %10 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 40, ptr noundef %3, ptr noundef nonnull @.str.1) #14
  call void @setLocalConstraint(ptr noundef %0, i32 noundef %2, ptr noundef nonnull %5) #13
  br label %28

11:                                               ; preds = %4
  %12 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 40, ptr noundef %3, ptr noundef nonnull @.str.2) #14
  %13 = call zeroext i8 @checkUseAxisMatrix(ptr noundef %0) #14
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  call void @setAxisMatrixConstraint(ptr noundef %0, i32 noundef %2, ptr noundef nonnull %5) #13
  br label %28

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 37
  call void @setConstraint(ptr noundef %0, ptr noundef nonnull %17, i32 noundef %2, ptr noundef nonnull %5) #13
  br label %28

18:                                               ; preds = %4
  %19 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 40, ptr noundef %3, ptr noundef nonnull @.str.3) #14
  %20 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 37
  call void @setConstraint(ptr noundef %0, ptr noundef nonnull %20, i32 noundef %2, ptr noundef nonnull %5) #13
  br label %28

21:                                               ; preds = %4
  %22 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 40, ptr noundef %3, ptr noundef nonnull @.str.4) #14
  %23 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 37
  call void @setConstraint(ptr noundef %0, ptr noundef nonnull %23, i32 noundef %2, ptr noundef nonnull %5) #13
  br label %28

24:                                               ; preds = %4
  %25 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 38
  %26 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 40, ptr noundef %3, ptr noundef nonnull %25) #14
  %27 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 37
  call void @setConstraint(ptr noundef %0, ptr noundef nonnull %27, i32 noundef %2, ptr noundef nonnull %5) #13
  br label %28

28:                                               ; preds = %15, %16, %24, %21, %18, %9, %7
  %29 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13
  store i16 %1, ptr %29, align 8, !tbaa !75
  %30 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %31 = load i32, ptr %30, align 4, !tbaa !34
  %32 = or i32 %31, 64
  store i32 %32, ptr %30, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #15
  ret void
}

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: optsize
declare void @unit_m3(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @checkUseAxisMatrix(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @drawConstraint(ptr noundef %0) local_unnamed_addr #3 {
  %2 = alloca [3 x float], align 4
  %3 = alloca [3 x i8], align 1
  %4 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %5 = load i8, ptr %4, align 8, !tbaa !76
  switch i8 %5, label %68 [
    i8 1, label %6
    i8 6, label %6
    i8 16, label %6
  ]

6:                                                ; preds = %1, %1, %1
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %8 = load i32, ptr %7, align 4, !tbaa !77
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %68, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !48
  %14 = and i32 %13, 384
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %68

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !78
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void %18(ptr noundef nonnull %0) #14
  br label %68

21:                                               ; preds = %16
  %22 = and i32 %8, 16
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %45, label %24

24:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %3, i8 -1, i64 3, i1 false)
  %25 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 61
  %26 = load i32, ptr %25, align 8, !tbaa !79
  %27 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 6
  %28 = load i32, ptr %27, align 4, !tbaa !79
  %29 = sub nsw i32 %26, %28
  %30 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 61, i64 1
  %31 = load i32, ptr %30, align 4, !tbaa !79
  %32 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 6, i64 1
  %33 = load i32, ptr %32, align 4, !tbaa !79
  %34 = sub nsw i32 %31, %33
  call void @convertViewVec(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef %29, i32 noundef %34) #14
  %35 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 5
  call fastcc void @add_v3_v3(ptr noundef nonnull %2, ptr noundef nonnull %35) #13
  %36 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 2
  call void @drawLine(ptr noundef nonnull %0, ptr noundef nonnull %35, ptr noundef nonnull %36, i8 noundef zeroext 88, i16 noundef signext 0) #14
  %37 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 2, i64 1
  call void @drawLine(ptr noundef nonnull %0, ptr noundef nonnull %35, ptr noundef nonnull %37, i8 noundef zeroext 89, i16 noundef signext 0) #14
  %38 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 2, i64 2
  call void @drawLine(ptr noundef nonnull %0, ptr noundef nonnull %35, ptr noundef nonnull %38, i8 noundef zeroext 90, i16 noundef signext 0) #14
  call void @glColor3ubv(ptr noundef nonnull %3) #14
  %39 = call zeroext i8 @glIsEnabled(i32 noundef 2929) #14
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %24
  call void @glDisable(i32 noundef 2929) #14
  call void @setlinestyle(i32 noundef 1) #14
  call void @glBegin(i32 noundef 3) #14
  call void @glVertex3fv(ptr noundef nonnull %35) #14
  call void @glVertex3fv(ptr noundef nonnull %2) #14
  call void @glEnd() #14
  call void @setlinestyle(i32 noundef 0) #14
  call void @glEnable(i32 noundef 2929) #14
  br label %43

42:                                               ; preds = %24
  call void @setlinestyle(i32 noundef 1) #14
  call void @glBegin(i32 noundef 3) #14
  call void @glVertex3fv(ptr noundef nonnull %35) #14
  call void @glVertex3fv(ptr noundef nonnull %2) #14
  call void @glEnd() #14
  call void @setlinestyle(i32 noundef 0) #14
  br label %43

43:                                               ; preds = %42, %41
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #15
  %44 = load i32, ptr %7, align 4, !tbaa !77
  br label %45

45:                                               ; preds = %43, %21
  %46 = phi i32 [ %44, %43 ], [ %8, %21 ]
  %47 = and i32 %46, 2
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 5
  %51 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 2
  call void @drawLine(ptr noundef nonnull %0, ptr noundef nonnull %50, ptr noundef nonnull %51, i8 noundef zeroext 88, i16 noundef signext 1) #14
  %52 = load i32, ptr %7, align 4, !tbaa !77
  br label %53

53:                                               ; preds = %49, %45
  %54 = phi i32 [ %52, %49 ], [ %46, %45 ]
  %55 = and i32 %54, 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 5
  %59 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 2, i64 1
  call void @drawLine(ptr noundef nonnull %0, ptr noundef nonnull %58, ptr noundef nonnull %59, i8 noundef zeroext 89, i16 noundef signext 1) #14
  %60 = load i32, ptr %7, align 4, !tbaa !77
  br label %61

61:                                               ; preds = %57, %53
  %62 = phi i32 [ %60, %57 ], [ %54, %53 ]
  %63 = and i32 %62, 8
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 5
  %67 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 2, i64 2
  call void @drawLine(ptr noundef nonnull %0, ptr noundef nonnull %66, ptr noundef nonnull %67, i8 noundef zeroext 90, i16 noundef signext 1) #14
  br label %68

68:                                               ; preds = %20, %65, %61, %11, %6, %1
  ret void
}

; Function Attrs: optsize
declare void @convertViewVec(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !80 {
  %3 = load float, ptr %1, align 4, !tbaa !49
  %4 = load float, ptr %0, align 4, !tbaa !49
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !49
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !49
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !49
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !49
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !49
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !49
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !49
  ret void
}

; Function Attrs: optsize
declare void @drawLine(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: optsize
declare void @glColor3ubv(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @glIsEnabled(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @glDisable(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @setlinestyle(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @glBegin(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @glVertex3fv(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @glEnd() local_unnamed_addr #4

; Function Attrs: optsize
declare void @glEnable(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
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
  br i1 %11, label %66, label %12

12:                                               ; preds = %2
  %13 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #15
  tail call void @UI_ThemeColor(i32 noundef 24) #14
  %14 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 33
  %15 = load i8, ptr %14, align 8, !tbaa !76
  %16 = icmp eq i8 %15, 1
  %17 = icmp ne ptr %13, null
  %18 = select i1 %16, i1 %17, i1 false
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.RegionView3D, ptr %13, i64 0, i32 1
  call void @copy_m4_m4(ptr noundef nonnull %3, ptr noundef nonnull %20) #14
  %21 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %4, ptr noundef nonnull %3) #14
  br label %23

22:                                               ; preds = %12
  call void @unit_m4(ptr noundef nonnull %3) #14
  call void @unit_m4(ptr noundef nonnull %4) #14
  br label %23

23:                                               ; preds = %22, %19
  call void @glPushMatrix() #14
  %24 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 20
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %24) #13
  %25 = load i8, ptr %14, align 8, !tbaa !76
  switch i8 %25, label %56 [
    i8 1, label %26
    i8 6, label %32
  ]

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 63
  %28 = load ptr, ptr %27, align 8, !tbaa !68
  %29 = icmp eq ptr %28, null
  br i1 %29, label %56, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.Object, ptr %28, i64 0, i32 47
  call void @mul_m4_v3(ptr noundef nonnull %31, ptr noundef nonnull %5) #14
  br label %56

32:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #15
  %33 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 4
  %34 = load i32, ptr %33, align 8, !tbaa !81
  %35 = and i32 %34, 128
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 54
  %39 = load ptr, ptr %38, align 8, !tbaa !82
  %40 = getelementptr inbounds %struct.ScrArea, ptr %39, i64 0, i32 19
  %41 = load ptr, ptr %40, align 8, !tbaa !83
  call void @ED_space_image_get_aspect(ptr noundef %41, ptr noundef nonnull %6, ptr noundef nonnull %7) #14
  br label %51

42:                                               ; preds = %32
  %43 = and i32 %34, 256
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  store float 1.000000e+00, ptr %7, align 4, !tbaa !49
  store float 1.000000e+00, ptr %6, align 4, !tbaa !49
  br label %51

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 54
  %48 = load ptr, ptr %47, align 8, !tbaa !82
  %49 = getelementptr inbounds %struct.ScrArea, ptr %48, i64 0, i32 19
  %50 = load ptr, ptr %49, align 8, !tbaa !83
  call void @ED_space_image_get_uv_aspect(ptr noundef %50, ptr noundef nonnull %6, ptr noundef nonnull %7) #14
  br label %51

51:                                               ; preds = %45, %46, %37
  %52 = load float, ptr %6, align 4, !tbaa !49
  %53 = fdiv float 1.000000e+00, %52
  %54 = load float, ptr %7, align 4, !tbaa !49
  %55 = fdiv float 1.000000e+00, %54
  call void @glScalef(float noundef %53, float noundef %55, float noundef 1.000000e+00) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  br label %56

56:                                               ; preds = %23, %26, %51, %30
  %57 = call zeroext i8 @glIsEnabled(i32 noundef 2929) #14
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  call void @glDisable(i32 noundef 2929) #14
  call void @set_inverted_drawing(i32 noundef 1) #14
  %60 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 18
  %61 = load float, ptr %60, align 4, !tbaa !86
  call void @drawcircball(i32 noundef 2, ptr noundef nonnull %5, float noundef %61, ptr noundef nonnull %4) #14
  call void @set_inverted_drawing(i32 noundef 0) #14
  call void @glEnable(i32 noundef 2929) #14
  br label %65

62:                                               ; preds = %56
  call void @set_inverted_drawing(i32 noundef 1) #14
  %63 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 18
  %64 = load float, ptr %63, align 4, !tbaa !86
  call void @drawcircball(i32 noundef 2, ptr noundef nonnull %5, float noundef %64, ptr noundef nonnull %4) #14
  call void @set_inverted_drawing(i32 noundef 0) #14
  br label %65

65:                                               ; preds = %62, %59
  call void @glPopMatrix() #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #15
  br label %66

66:                                               ; preds = %65, %2
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_wm_region_view3d(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @UI_ThemeColor(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @unit_m4(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @glPushMatrix() local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !87 {
  %3 = load float, ptr %1, align 4, !tbaa !49
  store float %3, ptr %0, align 4, !tbaa !49
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !49
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !49
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !49
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !49
  ret void
}

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ED_space_image_get_aspect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ED_space_image_get_uv_aspect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @glScalef(float noundef, float noundef, float noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @set_inverted_drawing(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @drawcircball(i32 noundef, ptr noundef, float noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @glPopMatrix() local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @min_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #6 !PGOFuncName !88 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @stopConstraint(ptr nocapture noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %3 = load i32, ptr %2, align 4, !tbaa !34
  %4 = and i32 %3, -18
  store i32 %4, ptr %2, align 4, !tbaa !34
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1
  store i8 0, ptr %5, align 2, !tbaa !55
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 24
  %7 = load i16, ptr %6, align 2, !tbaa !56
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  store i16 %7, ptr %8, align 8, !tbaa !57
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @invert_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @initSelectConstraint(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 2
  tail call void @copy_m3_m3(ptr noundef nonnull %3, ptr noundef %1) #14
  %4 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %5 = load i32, ptr %4, align 4, !tbaa !34
  %6 = or i32 %5, 17
  store i32 %6, ptr %4, align 4, !tbaa !34
  tail call void @setNearestAxis(ptr noundef %0) #13
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 8
  store ptr null, ptr %7, align 8, !tbaa !50
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 9
  store ptr @applyAxisConstraintVec, ptr %8, align 8, !tbaa !51
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 10
  store ptr @applyAxisConstraintSize, ptr %9, align 8, !tbaa !52
  %10 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 11
  store ptr @applyAxisConstraintRot, ptr %10, align 8, !tbaa !53
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @setNearestAxis(ptr noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %3 = load i32, ptr %2, align 4, !tbaa !34
  %4 = and i32 %3, -15
  store i32 %4, ptr %2, align 4, !tbaa !34
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %6 = load i8, ptr %5, align 8, !tbaa !76
  %7 = icmp eq i8 %6, 1
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call fastcc void @setNearestAxis3d(ptr noundef nonnull %0) #13
  br label %10

9:                                                ; preds = %1
  tail call fastcc void @setNearestAxis2d(ptr noundef nonnull %0) #13
  br label %10

10:                                               ; preds = %9, %8
  tail call void @getConstraintMatrix(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @selectConstraint(ptr noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %3 = load i32, ptr %2, align 4, !tbaa !34
  %4 = and i32 %3, 16
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @setNearestAxis(ptr noundef nonnull %0) #13
  tail call void @startConstraint(ptr noundef nonnull %0) #13
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @postSelectConstraint(ptr noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %3 = load i32, ptr %2, align 4, !tbaa !34
  %4 = and i32 %3, 16
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = and i32 %3, -31
  store i32 %7, ptr %2, align 4, !tbaa !34
  tail call void @setNearestAxis(ptr noundef nonnull %0) #13
  tail call void @startConstraint(ptr noundef nonnull %0) #13
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 17
  store i32 1, ptr %8, align 8, !tbaa !54
  br label %9

9:                                                ; preds = %1, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @setNearestAxis3d(ptr noundef %0) unnamed_addr #3 !PGOFuncName !89 {
  %2 = alloca [3 x float], align 8
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #15
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 61
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 6
  %9 = load <2 x i32>, ptr %7, align 8, !tbaa !79
  %10 = load <2 x i32>, ptr %8, align 4, !tbaa !79
  %11 = sub nsw <2 x i32> %9, %10
  %12 = sitofp <2 x i32> %11 to <2 x float>
  store <2 x float> %12, ptr %2, align 8, !tbaa !49
  %13 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 2
  store float 0.000000e+00, ptr %13, align 8, !tbaa !49
  %14 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 29
  %15 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20
  %16 = tail call fastcc float @mul_project_m4_v3_zfac(ptr noundef nonnull %14, ptr noundef nonnull %15) #13
  %17 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 30
  %18 = tail call fastcc float @len_v3(ptr noundef nonnull %17) #13
  %19 = fmul float %18, 2.000000e+00
  %20 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 55
  %21 = load ptr, ptr %20, align 8, !tbaa !90
  %22 = getelementptr inbounds %struct.ARegion, ptr %21, i64 0, i32 5
  %23 = load i16, ptr %22, align 8, !tbaa !91
  %24 = sitofp i16 %23 to float
  %25 = fdiv float %19, %24
  %26 = fmul float %16, %25
  %27 = fmul float %26, 3.000000e+01
  %28 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 5
  %29 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 21
  %30 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  br label %31

31:                                               ; preds = %1, %38
  %32 = phi i64 [ 0, %1 ], [ %41, %38 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #15
  %33 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 2, i64 %32
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %33) #13
  call fastcc void @mul_v3_fl(ptr noundef nonnull %5, float noundef %27) #13
  call fastcc void @add_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %28) #13
  call void @projectFloatView(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #14
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %29) #13
  store float 0.000000e+00, ptr %30, align 4, !tbaa !49
  %34 = call fastcc float @normalize_v3(ptr noundef nonnull %5) #13
  %35 = fcmp ogt float %34, 0x3F50624DE0000000
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  call void @project_v3_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef nonnull %5) #14
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %2, ptr noundef nonnull %3) #13
  %37 = call fastcc float @normalize_v3(ptr noundef nonnull %5) #13
  br label %38

38:                                               ; preds = %31, %36
  %39 = phi float [ %37, %36 ], [ 1.000000e+10, %31 ]
  %40 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 %32
  store float %39, ptr %40, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #15
  %41 = add nuw nsw i64 %32, 1
  %42 = icmp eq i64 %41, 3
  br i1 %42, label %43, label %31, !llvm.loop !95

43:                                               ; preds = %38
  %44 = load float, ptr %4, align 4
  %45 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %46 = load float, ptr %45, align 4, !tbaa !49
  %47 = fcmp ugt float %44, %46
  %48 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %49 = load float, ptr %48, align 4
  %50 = fcmp ugt float %44, %49
  %51 = select i1 %47, i1 true, i1 %50
  br i1 %51, label %67, label %52

52:                                               ; preds = %43
  %53 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 2
  %54 = load i32, ptr %53, align 8, !tbaa !96
  %55 = and i32 %54, 16
  %56 = icmp eq i32 %55, 0
  %57 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %58 = load i32, ptr %57, align 4, !tbaa !34
  %59 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1
  %60 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 38
  br i1 %56, label %64, label %61

61:                                               ; preds = %52
  %62 = or i32 %58, 12
  store i32 %62, ptr %57, align 4, !tbaa !34
  %63 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %59, i64 noundef 50, ptr noundef nonnull @.str.5, ptr noundef nonnull %60) #14
  br label %105

64:                                               ; preds = %52
  %65 = or i32 %58, 2
  store i32 %65, ptr %57, align 4, !tbaa !34
  %66 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %59, i64 noundef 50, ptr noundef nonnull @.str.6, ptr noundef nonnull %60) #14
  br label %105

67:                                               ; preds = %43
  %68 = fcmp ugt float %46, %44
  %69 = fcmp ugt float %46, %49
  %70 = select i1 %68, i1 true, i1 %69
  br i1 %70, label %86, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 2
  %73 = load i32, ptr %72, align 8, !tbaa !96
  %74 = and i32 %73, 16
  %75 = icmp eq i32 %74, 0
  %76 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %77 = load i32, ptr %76, align 4, !tbaa !34
  %78 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1
  %79 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 38
  br i1 %75, label %83, label %80

80:                                               ; preds = %71
  %81 = or i32 %77, 10
  store i32 %81, ptr %76, align 4, !tbaa !34
  %82 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %78, i64 noundef 50, ptr noundef nonnull @.str.7, ptr noundef nonnull %79) #14
  br label %105

83:                                               ; preds = %71
  %84 = or i32 %77, 4
  store i32 %84, ptr %76, align 4, !tbaa !34
  %85 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %78, i64 noundef 50, ptr noundef nonnull @.str.8, ptr noundef nonnull %79) #14
  br label %105

86:                                               ; preds = %67
  %87 = fcmp ugt float %49, %46
  %88 = fcmp ugt float %49, %44
  %89 = or i1 %87, %88
  br i1 %89, label %105, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 2
  %92 = load i32, ptr %91, align 8, !tbaa !96
  %93 = and i32 %92, 16
  %94 = icmp eq i32 %93, 0
  %95 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %96 = load i32, ptr %95, align 4, !tbaa !34
  %97 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1
  %98 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 38
  br i1 %94, label %102, label %99

99:                                               ; preds = %90
  %100 = or i32 %96, 6
  store i32 %100, ptr %95, align 4, !tbaa !34
  %101 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %97, i64 noundef 50, ptr noundef nonnull @.str.9, ptr noundef nonnull %98) #14
  br label %105

102:                                              ; preds = %90
  %103 = or i32 %96, 8
  store i32 %103, ptr %95, align 4, !tbaa !34
  %104 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %97, i64 noundef 50, ptr noundef nonnull @.str.10, ptr noundef nonnull %98) #14
  br label %105

105:                                              ; preds = %83, %80, %99, %102, %86, %61, %64
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @setNearestAxis2d(ptr noundef %0) unnamed_addr #3 !PGOFuncName !97 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 61
  %3 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 6
  %4 = load <2 x i32>, ptr %2, align 8, !tbaa !79
  %5 = load <2 x i32>, ptr %3, align 4, !tbaa !79
  %6 = sub nsw <2 x i32> %4, %5
  %7 = tail call <2 x i32> @llvm.abs.v2i32(<2 x i32> %6, i1 true)
  %8 = extractelement <2 x i32> %7, i64 0
  %9 = extractelement <2 x i32> %7, i64 1
  %10 = icmp ult i32 %8, %9
  %11 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %12 = load i32, ptr %11, align 4, !tbaa !34
  %13 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1
  %14 = select i1 %10, i32 4, i32 2
  %15 = select i1 %10, ptr @.str.11, ptr @.str.12
  %16 = or i32 %12, %14
  store i32 %16, ptr %11, align 4, !tbaa !34
  %17 = tail call ptr @BLI_strncpy(ptr noundef nonnull %13, ptr noundef nonnull %15, i64 noundef 50) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
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

; Function Attrs: optsize
declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @activeSnap(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @planeProjection(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #3 !PGOFuncName !98 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #15
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 5
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull %6) #13
  call void @getViewVector(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5) #14
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %4, ptr noundef %2, ptr noundef %1) #13
  %7 = call fastcc float @dot_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %5) #13
  %8 = call float @llvm.fabs.f32(float %7)
  %9 = fcmp ugt float %8, 0x3F50624DE0000000
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = call fastcc float @dot_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %4) #13
  %12 = fdiv float %11, %7
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %5) #13
  call fastcc void @mul_v3_fl(ptr noundef nonnull %4, float noundef %12) #13
  call fastcc void @add_v3_v3v3(ptr noundef %2, ptr noundef %1, ptr noundef nonnull %4) #13
  br label %13

13:                                               ; preds = %3, %10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @axisProjection(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3) unnamed_addr #3 !PGOFuncName !99 {
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
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #15
  %15 = tail call fastcc zeroext i8 @is_zero_v3(ptr noundef %2) #13, !range !100
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %64

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 5
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %18) #13
  call fastcc void @viewAxisCorrectCenter(ptr noundef %0, ptr noundef nonnull %7) #13
  %19 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 28, i64 2
  %20 = tail call float @angle_v3v3(ptr noundef %1, ptr noundef nonnull %19) #14
  %21 = tail call float @llvm.fabs.f32(float %20)
  %22 = fcmp ogt float %21, 0x3FF921FB60000000
  %23 = fsub float 0x400921FB60000000, %21
  %24 = select i1 %22, float %23, float %21
  %25 = fmul float %24, 0x404CA5DC20000000
  %26 = fcmp olt float %25, 5.000000e+00
  br i1 %26, label %27, label %36

27:                                               ; preds = %17
  %28 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 28, i64 1
  call void @project_v3_v3v3(ptr noundef nonnull %6, ptr noundef %2, ptr noundef nonnull %28) #14
  %29 = call fastcc float @dot_v3v3(ptr noundef nonnull %28, ptr noundef nonnull %6) #13
  %30 = fmul float %29, 2.000000e+00
  %31 = fcmp olt float %30, 0.000000e+00
  %32 = fneg float %30
  %33 = select i1 %31, float %32, float %30
  call fastcc void @copy_v3_v3(ptr noundef %3, ptr noundef %1) #13
  %34 = call fastcc float @normalize_v3(ptr noundef %3) #13
  %35 = fmul float %33, %32
  call fastcc void @mul_v3_fl(ptr noundef %3, float noundef %35) #13
  br label %64

36:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #15
  call void @getViewVector(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %13) #14
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %14, ptr noundef nonnull %13, ptr noundef %1) #13
  call void @project_v3_v3v3(ptr noundef nonnull %6, ptr noundef %2, ptr noundef nonnull %14) #14
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %6, ptr noundef %2, ptr noundef nonnull %6) #13
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef nonnull %7) #13
  call void @getViewVector(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %5) #14
  %37 = call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef nonnull %5) #13
  %38 = call float @llvm.fabs.f32(float %37)
  %39 = fsub float 1.000000e+00, %38
  %40 = fcmp olt float %39, 0x3F2A36E2E0000000
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  call fastcc void @copy_v3_v3(ptr noundef %3, ptr noundef %1) #13
  %42 = fcmp ogt float %37, 0.000000e+00
  br i1 %42, label %43, label %44

43:                                               ; preds = %41
  call fastcc void @mul_v3_fl(ptr noundef %3, float noundef 1.000000e+09) #13
  br label %63

44:                                               ; preds = %41
  call fastcc void @mul_v3_fl(ptr noundef %3, float noundef -1.000000e+09) #13
  br label %63

45:                                               ; preds = %36
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %7, ptr noundef %1) #13
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %8, ptr noundef nonnull %5) #13
  %46 = call i32 @isect_line_line_v3(ptr noundef nonnull %7, ptr noundef nonnull %11, ptr noundef nonnull %8, ptr noundef nonnull %12, ptr noundef nonnull %9, ptr noundef nonnull %10) #14
  call fastcc void @sub_v3_v3v3(ptr noundef %3, ptr noundef nonnull %9, ptr noundef nonnull %7) #13
  %47 = load float, ptr %3, align 4, !tbaa !49
  %48 = call float @llvm.fabs.f32(float %47)
  %49 = fcmp ueq float %48, 0x7FF0000000000000
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store float 0.000000e+00, ptr %3, align 4, !tbaa !49
  br label %51

51:                                               ; preds = %50, %45
  %52 = getelementptr inbounds float, ptr %3, i64 1
  %53 = load float, ptr %52, align 4, !tbaa !49
  %54 = call float @llvm.fabs.f32(float %53)
  %55 = fcmp ueq float %54, 0x7FF0000000000000
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  store float 0.000000e+00, ptr %52, align 4, !tbaa !49
  br label %57

57:                                               ; preds = %56, %51
  %58 = getelementptr inbounds float, ptr %3, i64 2
  %59 = load float, ptr %58, align 4, !tbaa !49
  %60 = call float @llvm.fabs.f32(float %59)
  %61 = fcmp ueq float %60, 0x7FF0000000000000
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  store float 0.000000e+00, ptr %58, align 4, !tbaa !49
  br label %63

63:                                               ; preds = %57, %62, %43, %44
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #15
  br label %64

64:                                               ; preds = %27, %63, %4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @postConstraintChecks(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #3 !PGOFuncName !101 {
  %4 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 3
  tail call void @mul_m3_v3(ptr noundef nonnull %4, ptr noundef %1) #14
  tail call void @snapGridIncrement(ptr noundef %0, ptr noundef %1) #14
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
  %27 = tail call zeroext i8 @applyNumInput(ptr noundef nonnull %26, ptr noundef %1) #14
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void @constraintNumInput(ptr noundef nonnull %0, ptr noundef %1) #13
  tail call void @removeAspectRatio(ptr noundef nonnull %0, ptr noundef %1) #14
  br label %30

30:                                               ; preds = %29, %25
  %31 = load i32, ptr %5, align 4, !tbaa !48
  %32 = and i32 %31, 1048576
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 8
  %36 = load i16, ptr %35, align 4, !tbaa !102
  %37 = and i16 %36, 1
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 48
  tail call void @mul_v3_m3v3(ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %40) #14
  tail call fastcc void @constraintAutoValues(ptr noundef nonnull %0, ptr noundef %1) #13
  br label %41

41:                                               ; preds = %39, %34, %30
  %42 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %43 = load i32, ptr %42, align 4, !tbaa !34
  %44 = and i32 %43, 2
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %41
  %47 = load float, ptr %1, align 4, !tbaa !49
  store float %47, ptr %2, align 4, !tbaa !49
  br label %48

48:                                               ; preds = %46, %41
  %49 = phi i32 [ 1, %46 ], [ 0, %41 ]
  %50 = and i32 %43, 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds float, ptr %1, i64 1
  %54 = load float, ptr %53, align 4, !tbaa !49
  %55 = add nuw nsw i32 %49, 1
  %56 = zext nneg i32 %49 to i64
  %57 = getelementptr inbounds float, ptr %2, i64 %56
  store float %54, ptr %57, align 4, !tbaa !49
  br label %58

58:                                               ; preds = %52, %48
  %59 = phi i32 [ %55, %52 ], [ %49, %48 ]
  %60 = and i32 %43, 8
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds float, ptr %1, i64 2
  %64 = load float, ptr %63, align 4, !tbaa !49
  %65 = zext nneg i32 %59 to i64
  %66 = getelementptr inbounds float, ptr %2, i64 %65
  store float %64, ptr %66, align 4, !tbaa !49
  br label %67

67:                                               ; preds = %62, %58
  %68 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 2
  tail call void @mul_m3_v3(ptr noundef nonnull %68, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #5 !PGOFuncName !103 {
  %4 = load float, ptr %1, align 4, !tbaa !49
  %5 = load float, ptr %2, align 4, !tbaa !49
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !49
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !49
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !49
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !49
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !49
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !49
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !49
  ret void
}

; Function Attrs: optsize
declare void @getViewVector(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #5 !PGOFuncName !104 {
  %4 = load float, ptr %1, align 4, !tbaa !49
  %5 = load float, ptr %2, align 4, !tbaa !49
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !49
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !49
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !49
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !49
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !49
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !49
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !PGOFuncName !105 {
  %3 = load float, ptr %0, align 4, !tbaa !49
  %4 = load float, ptr %1, align 4, !tbaa !49
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !49
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !49
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !49
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !49
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #5 !PGOFuncName !106 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !49
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !49
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !49
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_zero_v3(ptr nocapture noundef readonly %0) unnamed_addr #2 !PGOFuncName !107 {
  %2 = load float, ptr %0, align 4, !tbaa !49
  %3 = fcmp oeq float %2, 0.000000e+00
  br i1 %3, label %4, label %13

4:                                                ; preds = %1
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !49
  %7 = fcmp oeq float %6, 0.000000e+00
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr inbounds float, ptr %0, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !49
  %11 = fcmp oeq float %10, 0.000000e+00
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %8, %4, %1
  %14 = phi i8 [ 0, %4 ], [ 0, %1 ], [ %12, %8 ]
  ret i8 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @viewAxisCorrectCenter(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #3 !PGOFuncName !108 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %6 = load i8, ptr %5, align 8, !tbaa !76
  %7 = icmp eq i8 %6, 1
  br i1 %7, label %8, label %21

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #15
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 28, i64 3
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull %9) #13
  %10 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 28, i64 2
  %11 = call fastcc float @dot_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %10) #13
  %12 = fcmp olt float %11, 0.000000e+00
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  call fastcc void @negate_v3(ptr noundef nonnull %3) #13
  br label %14

14:                                               ; preds = %13, %8
  call void @project_v3_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %3, ptr noundef nonnull %10) #14
  %15 = call fastcc float @len_v3(ptr noundef nonnull %3) #13
  %16 = fcmp olt float %15, 1.000000e+00
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #15
  %18 = call fastcc float @normalize_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %10) #13
  %19 = fsub float 1.000000e+00, %15
  call fastcc void @mul_v3_fl(ptr noundef nonnull %4, float noundef %19) #13
  call fastcc void @sub_v3_v3(ptr noundef %1, ptr noundef nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #15
  br label %20

20:                                               ; preds = %17, %14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #15
  br label %21

21:                                               ; preds = %20, %2
  ret void
}

; Function Attrs: optsize
declare float @angle_v3v3(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @project_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3(ptr nocapture noundef %0) unnamed_addr #8 !PGOFuncName !109 {
  %2 = tail call fastcc float @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #13
  ret float %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cross_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #5 !PGOFuncName !110 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !49
  %6 = getelementptr inbounds float, ptr %2, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !49
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !49
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !49
  %12 = fneg float %9
  %13 = fmul float %11, %12
  %14 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %13)
  store float %14, ptr %0, align 4, !tbaa !49
  %15 = load float, ptr %8, align 4, !tbaa !49
  %16 = load float, ptr %2, align 4, !tbaa !49
  %17 = load float, ptr %1, align 4, !tbaa !49
  %18 = load float, ptr %6, align 4, !tbaa !49
  %19 = fneg float %17
  %20 = fmul float %18, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %16, float %20)
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !49
  %23 = load float, ptr %1, align 4, !tbaa !49
  %24 = load float, ptr %10, align 4, !tbaa !49
  %25 = load float, ptr %4, align 4, !tbaa !49
  %26 = load float, ptr %2, align 4, !tbaa !49
  %27 = fneg float %25
  %28 = fmul float %26, %27
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 2
  store float %29, ptr %30, align 4, !tbaa !49
  ret void
}

; Function Attrs: optsize
declare i32 @isect_line_line_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3(ptr nocapture noundef %0) unnamed_addr #5 !PGOFuncName !111 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !49
  %3 = fneg <2 x float> %2
  store <2 x float> %3, ptr %0, align 4, !tbaa !49
  %4 = getelementptr inbounds float, ptr %0, i64 2
  %5 = load float, ptr %4, align 4, !tbaa !49
  %6 = fneg float %5
  store float %6, ptr %4, align 4, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #8 !PGOFuncName !112 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #13
  %3 = tail call float @sqrtf(float noundef %2) #14
  ret float %3
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !113 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #13
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #14
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #13
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #13
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi float [ %6, %5 ], [ 0.000000e+00, %8 ]
  ret float %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !114 {
  %3 = load float, ptr %1, align 4, !tbaa !49
  %4 = load float, ptr %0, align 4, !tbaa !49
  %5 = fsub float %4, %3
  store float %5, ptr %0, align 4, !tbaa !49
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !49
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !49
  %10 = fsub float %9, %7
  store float %10, ptr %8, align 4, !tbaa !49
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !49
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !49
  %15 = fsub float %14, %12
  store float %15, ptr %13, align 4, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #5 !PGOFuncName !115 {
  %4 = load float, ptr %1, align 4, !tbaa !49
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !49
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !49
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !49
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !49
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #10 !PGOFuncName !116 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !49
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !49
  ret void
}

; Function Attrs: optsize
declare void @snapGridIncrement(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @applyNumInput(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @removeAspectRatio(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @mul_v3_m3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @constraintAutoValues(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #5 !PGOFuncName !117 {
  %3 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %4 = load i32, ptr %3, align 4, !tbaa !34
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %26, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !48
  %10 = and i32 %9, 512
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, float 0.000000e+00, float 1.000000e+00
  %13 = and i32 %4, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %7
  store float %12, ptr %1, align 4, !tbaa !49
  br label %16

16:                                               ; preds = %15, %7
  %17 = and i32 %4, 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = getelementptr inbounds float, ptr %1, i64 1
  store float %12, ptr %20, align 4, !tbaa !49
  br label %21

21:                                               ; preds = %19, %16
  %22 = and i32 %4, 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = getelementptr inbounds float, ptr %1, i64 2
  store float %12, ptr %25, align 4, !tbaa !49
  br label %26

26:                                               ; preds = %21, %24, %2
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @hasNumInput(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @mul_project_m4_v3_zfac(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !PGOFuncName !118 {
  %3 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 3
  %4 = load float, ptr %3, align 4, !tbaa !49
  %5 = load float, ptr %1, align 4, !tbaa !49
  %6 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 3
  %7 = load float, ptr %6, align 4, !tbaa !49
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !49
  %10 = fmul float %7, %9
  %11 = tail call float @llvm.fmuladd.f32(float %4, float %5, float %10)
  %12 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 3
  %13 = load float, ptr %12, align 4, !tbaa !49
  %14 = getelementptr inbounds float, ptr %1, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !49
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %15, float %11)
  %17 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 3
  %18 = load float, ptr %17, align 4, !tbaa !49
  %19 = fadd float %16, %18
  ret float %19
}

; Function Attrs: optsize
declare void @projectFloatView(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #5 !PGOFuncName !119 {
  %4 = load float, ptr %1, align 4, !tbaa !49
  %5 = load float, ptr %2, align 4, !tbaa !49
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !49
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !49
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !49
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !49
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.abs.v2i32(<2 x i32>, i1 immarg) #11

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { optsize }
attributes #14 = { nounwind optsize }
attributes #15 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 6524701}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 3}
!14 = !{i32 100000, i64 1843200, i32 3}
!15 = !{i32 200000, i64 1843200, i32 3}
!16 = !{i32 300000, i64 1843200, i32 3}
!17 = !{i32 400000, i64 1843200, i32 3}
!18 = !{i32 500000, i64 1843200, i32 3}
!19 = !{i32 600000, i64 1843200, i32 3}
!20 = !{i32 700000, i64 1843200, i32 3}
!21 = !{i32 800000, i64 1843200, i32 3}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 1440, i32 8}
!27 = !{i32 999990, i64 1440, i32 8}
!28 = !{i32 999999, i64 1, i32 37}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
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
!50 = !{!35, !41, i64 264}
!51 = !{!35, !41, i64 272}
!52 = !{!35, !41, i64 280}
!53 = !{!35, !41, i64 288}
!54 = !{!35, !36, i64 640}
!55 = !{!37, !37, i64 0}
!56 = !{!35, !39, i64 698}
!57 = !{!35, !39, i64 440}
!58 = !{!"transform_constraints.c:applyAxisConstraintVec"}
!59 = !{!35, !39, i64 296}
!60 = !{!"transform_constraints.c:applyAxisConstraintSize"}
!61 = !{!"transform_constraints.c:applyAxisConstraintRot"}
!62 = !{!35, !36, i64 48}
!63 = !{!35, !41, i64 56}
!64 = !{!"transform_constraints.c:drawObjectConstraint"}
!65 = !{!66, !40, i64 8}
!66 = !{!"TransData", !40, i64 0, !40, i64 4, !40, i64 8, !41, i64 16, !37, i64 24, !41, i64 40, !40, i64 48, !37, i64 52, !37, i64 64, !37, i64 100, !37, i64 136, !41, i64 176, !41, i64 184, !41, i64 192, !41, i64 200, !41, i64 208, !36, i64 216, !39, i64 220}
!67 = !{!66, !41, i64 176}
!68 = !{!35, !41, i64 1312}
!69 = !{!35, !41, i64 1128}
!70 = distinct !{!70, !71}
!71 = !{!"llvm.loop.mustprogress"}
!72 = !{!"transform_constraints.c:applyObjectConstraintVec"}
!73 = !{!"transform_constraints.c:applyObjectConstraintSize"}
!74 = !{!"transform_constraints.c:applyObjectConstraintRot"}
!75 = !{!35, !39, i64 80}
!76 = !{!35, !37, i64 976}
!77 = !{!42, !36, i64 180}
!78 = !{!42, !41, i64 184}
!79 = !{!36, !36, i64 0}
!80 = !{!"transform_constraints.c:add_v3_v3"}
!81 = !{!35, !36, i64 16}
!82 = !{!35, !41, i64 1240}
!83 = !{!84, !41, i64 96}
!84 = !{!"ScrArea", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !41, i64 48, !85, i64 56, !37, i64 72, !37, i64 73, !39, i64 74, !39, i64 76, !39, i64 78, !39, i64 80, !39, i64 82, !39, i64 84, !37, i64 86, !37, i64 87, !41, i64 88, !44, i64 96, !44, i64 112, !44, i64 128, !44, i64 144}
!85 = !{!"rcti", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12}
!86 = !{!35, !40, i64 644}
!87 = !{!"transform_constraints.c:copy_v3_v3"}
!88 = !{!"transform_constraints.c:min_ii"}
!89 = !{!"transform_constraints.c:setNearestAxis3d"}
!90 = !{!35, !41, i64 1248}
!91 = !{!92, !39, i64 208}
!92 = !{!"ARegion", !41, i64 0, !41, i64 8, !93, i64 16, !85, i64 176, !85, i64 192, !39, i64 208, !39, i64 210, !39, i64 212, !39, i64 214, !39, i64 216, !39, i64 218, !40, i64 220, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !39, i64 232, !39, i64 234, !39, i64 236, !39, i64 238, !41, i64 240, !44, i64 248, !44, i64 264, !44, i64 280, !44, i64 296, !44, i64 312, !44, i64 328, !44, i64 344, !41, i64 360, !41, i64 368, !41, i64 376}
!93 = !{!"View2D", !94, i64 0, !94, i64 16, !85, i64 32, !85, i64 48, !85, i64 64, !37, i64 80, !37, i64 88, !40, i64 96, !40, i64 100, !39, i64 104, !39, i64 106, !39, i64 108, !39, i64 110, !39, i64 112, !39, i64 114, !39, i64 116, !39, i64 118, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126, !41, i64 128, !36, i64 136, !36, i64 140, !41, i64 144, !41, i64 152}
!94 = !{!"rctf", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!95 = distinct !{!95, !71}
!96 = !{!35, !36, i64 8}
!97 = !{!"transform_constraints.c:setNearestAxis2d"}
!98 = !{!"transform_constraints.c:planeProjection"}
!99 = !{!"transform_constraints.c:axisProjection"}
!100 = !{i8 0, i8 2}
!101 = !{!"transform_constraints.c:postConstraintChecks"}
!102 = !{!35, !39, i64 308}
!103 = !{!"transform_constraints.c:add_v3_v3v3"}
!104 = !{!"transform_constraints.c:sub_v3_v3v3"}
!105 = !{!"transform_constraints.c:dot_v3v3"}
!106 = !{!"transform_constraints.c:mul_v3_fl"}
!107 = !{!"transform_constraints.c:is_zero_v3"}
!108 = !{!"transform_constraints.c:viewAxisCorrectCenter"}
!109 = !{!"transform_constraints.c:normalize_v3"}
!110 = !{!"transform_constraints.c:cross_v3_v3v3"}
!111 = !{!"transform_constraints.c:negate_v3"}
!112 = !{!"transform_constraints.c:len_v3"}
!113 = !{!"transform_constraints.c:normalize_v3_v3"}
!114 = !{!"transform_constraints.c:sub_v3_v3"}
!115 = !{!"transform_constraints.c:mul_v3_v3fl"}
!116 = !{!"transform_constraints.c:zero_v3"}
!117 = !{!"transform_constraints.c:constraintAutoValues"}
!118 = !{!"transform_constraints.c:mul_project_m4_v3_zfac"}
!119 = !{!"transform_constraints.c:sub_v2_v2v2"}
