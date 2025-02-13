; ModuleID = 'blender/source/blender/editors/transform/transform_input.c'
source_filename = "blender/source/blender/editors/transform/transform_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.MouseInput = type { ptr, ptr, [2 x i32], i8, [2 x i32], [2 x float], float, ptr }
%struct.TransInfo = type { i32, i32, i32, i16, i32, float, float, ptr, ptr, i32, ptr, ptr, ptr, %struct.TransCon, %struct.TransSnap, %struct.NumInput, %struct.MouseInput, i32, float, [20 x i8], [3 x float], [2 x float], [2 x i32], i16, i16, [3 x float], i8, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i16, i16, i8, i8, [3 x float], [3 x [3 x float]], [3 x [3 x float]], [64 x i8], ptr, ptr, ptr, i16, i16, i16, i16, i16, [4 x float], [4 x float], [3 x float], [3 x float], i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i32], float, ptr, [3 x [3 x float]], ptr, ptr, ptr, ptr }
%struct.TransCon = type { i16, [50 x i8], [3 x [3 x float]], [3 x [3 x float]], [3 x [3 x float]], [3 x float], [2 x i32], i32, ptr, ptr, ptr, ptr }
%struct.TransSnap = type { i16, i16, i16, i16, i8, i8, i8, i8, i16, [3 x float], [3 x float], [3 x float], [3 x float], i8, %struct.ListBase, ptr, float, double, ptr, ptr, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.NumInput = type { i16, i32, [3 x i32], i8, i16, [3 x i16], [3 x float], [3 x float], [3 x float], i16, [64 x i8], i32 }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }

@MEM_reallocN_id = external local_unnamed_addr global ptr, align 8
@__func__.setCustomPoints = private unnamed_addr constant [16 x i8] c"setCustomPoints\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [18 x i8] c"angle accumulator\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @setCustomPoints(ptr nocapture noundef readnone %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !9
  %8 = tail call ptr %5(ptr noundef %7, i64 noundef 16, ptr noundef nonnull @__func__.setCustomPoints) #13
  store ptr %8, ptr %6, align 8, !tbaa !9
  %9 = load i32, ptr %2, align 4, !tbaa !12
  store i32 %9, ptr %8, align 4, !tbaa !12
  %10 = getelementptr inbounds i32, ptr %2, i64 1
  %11 = load i32, ptr %10, align 4, !tbaa !12
  %12 = getelementptr inbounds i32, ptr %8, i64 1
  store i32 %11, ptr %12, align 4, !tbaa !12
  %13 = load i32, ptr %3, align 4, !tbaa !12
  %14 = getelementptr inbounds i32, ptr %8, i64 2
  store i32 %13, ptr %14, align 4, !tbaa !12
  %15 = getelementptr inbounds i32, ptr %3, i64 1
  %16 = load i32, ptr %15, align 4, !tbaa !12
  %17 = getelementptr inbounds i32, ptr %8, i64 3
  store i32 %16, ptr %17, align 4, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @initMouseInput(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 6
  store float 0.000000e+00, ptr %5, align 4, !tbaa !14
  %6 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 3
  store i8 0, ptr %6, align 8, !tbaa !15
  %7 = load float, ptr %2, align 4, !tbaa !16
  %8 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 5
  store float %7, ptr %8, align 4, !tbaa !16
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !16
  %11 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 5, i64 1
  store float %10, ptr %11, align 4, !tbaa !16
  %12 = load i32, ptr %3, align 4, !tbaa !12
  %13 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 2
  store i32 %12, ptr %13, align 8, !tbaa !12
  %14 = getelementptr inbounds i32, ptr %3, i64 1
  %15 = load i32, ptr %14, align 4, !tbaa !12
  %16 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 2, i64 1
  store i32 %15, ptr %16, align 4, !tbaa !12
  %17 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 1
  store ptr null, ptr %17, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @initMouseInputMode(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !9
  switch i32 %2, label %44 [
    i32 1, label %6
    i32 2, label %8
    i32 3, label %10
    i32 4, label %12
    i32 5, label %14
    i32 6, label %18
    i32 7, label %22
    i32 8, label %25
    i32 9, label %34
    i32 10, label %36
    i32 11, label %38
    i32 12, label %40
    i32 13, label %42
  ]

6:                                                ; preds = %3
  store ptr @InputVector, ptr %1, align 8, !tbaa !18
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 34
  store i8 0, ptr %7, align 1, !tbaa !19
  br label %45

8:                                                ; preds = %3
  tail call fastcc void @calcSpringFactor(ptr noundef nonnull %1) #14
  store ptr @InputSpring, ptr %1, align 8, !tbaa !18
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 34
  store i8 1, ptr %9, align 1, !tbaa !19
  br label %45

10:                                               ; preds = %3
  tail call fastcc void @calcSpringFactor(ptr noundef nonnull %1) #14
  store ptr @InputSpringFlip, ptr %1, align 8, !tbaa !18
  %11 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 34
  store i8 1, ptr %11, align 1, !tbaa !19
  br label %45

12:                                               ; preds = %3
  tail call fastcc void @calcSpringFactor(ptr noundef nonnull %1) #14
  store ptr @InputSpringDelta, ptr %1, align 8, !tbaa !18
  %13 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 34
  store i8 1, ptr %13, align 1, !tbaa !19
  br label %45

14:                                               ; preds = %3
  %15 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %16 = tail call ptr %15(i64 noundef 8, ptr noundef nonnull @.str) #13
  store ptr %16, ptr %4, align 8, !tbaa !9
  store ptr @InputAngle, ptr %1, align 8, !tbaa !18
  %17 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 34
  store i8 2, ptr %17, align 1, !tbaa !19
  br label %45

18:                                               ; preds = %3
  tail call fastcc void @calcSpringFactor(ptr noundef nonnull %1) #14
  %19 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %20 = tail call ptr %19(i64 noundef 8, ptr noundef nonnull @.str) #13
  store ptr %20, ptr %4, align 8, !tbaa !9
  store ptr @InputAngleSpring, ptr %1, align 8, !tbaa !18
  %21 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 34
  store i8 2, ptr %21, align 1, !tbaa !19
  br label %45

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 6
  store float 0x3F847AE140000000, ptr %23, align 4, !tbaa !14
  store ptr @InputTrackBall, ptr %1, align 8, !tbaa !18
  %24 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 34
  store i8 5, ptr %24, align 1, !tbaa !19
  br label %45

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 5
  %27 = load float, ptr %26, align 4, !tbaa !16
  %28 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 2
  %29 = load i32, ptr %28, align 8, !tbaa !12
  %30 = sitofp i32 %29 to float
  %31 = fsub float %27, %30
  %32 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 6
  store float %31, ptr %32, align 4, !tbaa !14
  store ptr @InputHorizontalRatio, ptr %1, align 8, !tbaa !18
  %33 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 34
  store i8 3, ptr %33, align 1, !tbaa !19
  br label %45

34:                                               ; preds = %3
  store ptr @InputHorizontalAbsolute, ptr %1, align 8, !tbaa !18
  %35 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 34
  store i8 3, ptr %35, align 1, !tbaa !19
  br label %45

36:                                               ; preds = %3
  store ptr @InputVerticalRatio, ptr %1, align 8, !tbaa !18
  %37 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 34
  store i8 4, ptr %37, align 1, !tbaa !19
  br label %45

38:                                               ; preds = %3
  store ptr @InputVerticalAbsolute, ptr %1, align 8, !tbaa !18
  %39 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 34
  store i8 4, ptr %39, align 1, !tbaa !19
  br label %45

40:                                               ; preds = %3
  store ptr @InputCustomRatio, ptr %1, align 8, !tbaa !18
  %41 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 34
  store i8 0, ptr %41, align 1, !tbaa !19
  br label %45

42:                                               ; preds = %3
  store ptr @InputCustomRatioFlip, ptr %1, align 8, !tbaa !18
  %43 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 34
  store i8 0, ptr %43, align 1, !tbaa !19
  br label %45

44:                                               ; preds = %3
  store ptr null, ptr %1, align 8, !tbaa !18
  br label %45

45:                                               ; preds = %44, %42, %40, %38, %36, %34, %25, %22, %18, %14, %12, %10, %8, %6
  %46 = icmp eq ptr %5, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %45
  %48 = load ptr, ptr %4, align 8, !tbaa !9
  %49 = icmp eq ptr %5, %48
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  %51 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  tail call void %51(ptr noundef nonnull %5) #13
  br label %52

52:                                               ; preds = %50, %47, %45
  %53 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 2
  %54 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47
  tail call void @applyMouseInput(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %53, ptr noundef nonnull %54) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @InputVector(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #15
  %7 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 3
  %8 = load i8, ptr %7, align 8, !tbaa !15
  %9 = icmp eq i8 %8, 0
  %10 = load i32, ptr %2, align 4, !tbaa !12
  %11 = getelementptr inbounds i32, ptr %2, i64 1
  %12 = load i32, ptr %11, align 4, !tbaa !12
  br i1 %9, label %28, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 4
  %15 = load i32, ptr %14, align 4, !tbaa !12
  %16 = sub nsw i32 %10, %15
  %17 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 4, i64 1
  %18 = load i32, ptr %17, align 4, !tbaa !12
  %19 = sub nsw i32 %12, %18
  call void @convertViewVec(ptr noundef %0, ptr noundef nonnull %6, i32 noundef %16, i32 noundef %19) #13
  call fastcc void @mul_v3_fl(ptr noundef nonnull %6) #14
  %20 = load i32, ptr %14, align 4, !tbaa !12
  %21 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 22
  %22 = load i32, ptr %21, align 8, !tbaa !12
  %23 = sub nsw i32 %20, %22
  %24 = load i32, ptr %17, align 4, !tbaa !12
  %25 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 22, i64 1
  %26 = load i32, ptr %25, align 4, !tbaa !12
  %27 = sub nsw i32 %24, %26
  call void @convertViewVec(ptr noundef %0, ptr noundef nonnull %5, i32 noundef %23, i32 noundef %27) #13
  call fastcc void @add_v3_v3v3(ptr noundef %3, ptr noundef nonnull %5, ptr noundef nonnull %6) #14
  br label %35

28:                                               ; preds = %4
  %29 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 22
  %30 = load i32, ptr %29, align 8, !tbaa !12
  %31 = sub nsw i32 %10, %30
  %32 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 22, i64 1
  %33 = load i32, ptr %32, align 4, !tbaa !12
  %34 = sub nsw i32 %12, %33
  tail call void @convertViewVec(ptr noundef %0, ptr noundef %3, i32 noundef %31, i32 noundef %34) #13
  br label %35

35:                                               ; preds = %28, %13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @calcSpringFactor(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.MouseInput, ptr %0, i64 0, i32 5
  %3 = getelementptr inbounds %struct.MouseInput, ptr %0, i64 0, i32 5, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !16
  %5 = getelementptr inbounds %struct.MouseInput, ptr %0, i64 0, i32 2
  %6 = getelementptr inbounds %struct.MouseInput, ptr %0, i64 0, i32 2, i64 1
  %7 = load i32, ptr %6, align 4, !tbaa !12
  %8 = sitofp i32 %7 to float
  %9 = fsub float %4, %8
  %10 = load float, ptr %2, align 4, !tbaa !16
  %11 = load i32, ptr %5, align 8, !tbaa !12
  %12 = sitofp i32 %11 to float
  %13 = fsub float %10, %12
  %14 = fmul float %13, %13
  %15 = tail call float @llvm.fmuladd.f32(float %9, float %9, float %14)
  %16 = tail call float @llvm.sqrt.f32(float %15)
  %17 = fcmp oeq float %16, 0.000000e+00
  %18 = select i1 %17, float 1.000000e+00, float %16
  %19 = getelementptr inbounds %struct.MouseInput, ptr %0, i64 0, i32 6
  store float %18, ptr %19, align 4, !tbaa !14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @InputSpring(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 3
  %6 = load i8, ptr %5, align 8, !tbaa !15
  %7 = icmp eq i8 %6, 0
  %8 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 5
  %9 = load float, ptr %8, align 4, !tbaa !16
  br i1 %7, label %35, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 4
  %12 = load i32, ptr %11, align 4, !tbaa !12
  %13 = sitofp i32 %12 to float
  %14 = fsub float %9, %13
  %15 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 5, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !16
  %17 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 4, i64 1
  %18 = load i32, ptr %17, align 4, !tbaa !12
  %19 = sitofp i32 %18 to float
  %20 = fsub float %16, %19
  %21 = tail call float @hypotf(float noundef %14, float noundef %20) #13
  %22 = load float, ptr %8, align 4, !tbaa !16
  %23 = load i32, ptr %2, align 4, !tbaa !12
  %24 = sitofp i32 %23 to float
  %25 = fsub float %22, %24
  %26 = load float, ptr %15, align 4, !tbaa !16
  %27 = getelementptr inbounds i32, ptr %2, i64 1
  %28 = load i32, ptr %27, align 4, !tbaa !12
  %29 = sitofp i32 %28 to float
  %30 = fsub float %26, %29
  %31 = tail call float @hypotf(float noundef %25, float noundef %30) #13
  %32 = fsub float %31, %21
  %33 = fdiv float %32, 1.000000e+01
  %34 = fadd float %21, %33
  br label %46

35:                                               ; preds = %4
  %36 = load i32, ptr %2, align 4, !tbaa !12
  %37 = sitofp i32 %36 to float
  %38 = fsub float %9, %37
  %39 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 5, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !16
  %41 = getelementptr inbounds i32, ptr %2, i64 1
  %42 = load i32, ptr %41, align 4, !tbaa !12
  %43 = sitofp i32 %42 to float
  %44 = fsub float %40, %43
  %45 = tail call float @hypotf(float noundef %38, float noundef %44) #13
  br label %46

46:                                               ; preds = %35, %10
  %47 = phi float [ %45, %35 ], [ %34, %10 ]
  %48 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 6
  %49 = load float, ptr %48, align 4, !tbaa !14
  %50 = fdiv float %47, %49
  store float %50, ptr %3, align 4, !tbaa !16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @InputSpringFlip(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3) #0 {
  tail call void @InputSpring(ptr poison, ptr noundef %1, ptr noundef %2, ptr noundef %3) #14
  %5 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 5
  %6 = load float, ptr %5, align 4, !tbaa !16
  %7 = load i32, ptr %2, align 4, !tbaa !12
  %8 = sitofp i32 %7 to float
  %9 = fsub float %6, %8
  %10 = fptosi float %9 to i64
  %11 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !12
  %13 = sitofp i32 %12 to float
  %14 = fsub float %6, %13
  %15 = fptosi float %14 to i64
  %16 = mul nsw i64 %15, %10
  %17 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 5, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !16
  %19 = getelementptr inbounds i32, ptr %2, i64 1
  %20 = load i32, ptr %19, align 4, !tbaa !12
  %21 = sitofp i32 %20 to float
  %22 = fsub float %18, %21
  %23 = fptosi float %22 to i64
  %24 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 2, i64 1
  %25 = load i32, ptr %24, align 4, !tbaa !12
  %26 = sitofp i32 %25 to float
  %27 = fsub float %18, %26
  %28 = fptosi float %27 to i64
  %29 = mul nsw i64 %28, %23
  %30 = add nsw i64 %29, %16
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %4
  %33 = load float, ptr %3, align 4, !tbaa !16
  %34 = fneg float %33
  store float %34, ptr %3, align 4, !tbaa !16
  br label %35

35:                                               ; preds = %32, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @InputSpringDelta(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3) #0 {
  tail call void @InputSpring(ptr poison, ptr noundef %1, ptr noundef %2, ptr noundef %3) #14
  %5 = load float, ptr %3, align 4, !tbaa !16
  %6 = fadd float %5, -1.000000e+00
  store float %6, ptr %3, align 4, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable
define internal void @InputAngle(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) #3 {
  %5 = load i32, ptr %2, align 4, !tbaa !12
  %6 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 5
  %7 = load float, ptr %6, align 4, !tbaa !16
  %8 = getelementptr inbounds i32, ptr %2, i64 1
  %9 = load i32, ptr %8, align 4, !tbaa !12
  %10 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 5, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !16
  %12 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !12
  %14 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 2, i64 1
  %15 = load i32, ptr %14, align 4, !tbaa !12
  %16 = insertelement <2 x i32> poison, i32 %13, i64 0
  %17 = insertelement <2 x i32> %16, i32 %5, i64 1
  %18 = sitofp <2 x i32> %17 to <2 x float>
  %19 = insertelement <2 x float> poison, float %7, i64 0
  %20 = shufflevector <2 x float> %19, <2 x float> poison, <2 x i32> zeroinitializer
  %21 = fsub <2 x float> %18, %20
  %22 = fpext <2 x float> %21 to <2 x double>
  %23 = insertelement <2 x i32> poison, i32 %9, i64 0
  %24 = insertelement <2 x i32> %23, i32 %15, i64 1
  %25 = sitofp <2 x i32> %24 to <2 x float>
  %26 = insertelement <2 x float> poison, float %11, i64 0
  %27 = shufflevector <2 x float> %26, <2 x float> poison, <2 x i32> zeroinitializer
  %28 = fsub <2 x float> %25, %27
  %29 = fpext <2 x float> %28 to <2 x double>
  %30 = fmul <2 x double> %29, %29
  %31 = shufflevector <2 x double> %22, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %32 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %31, <2 x double> %31, <2 x double> %30)
  %33 = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %32)
  %34 = sub nsw i32 %5, %13
  %35 = sitofp i32 %34 to double
  %36 = sub nsw i32 %9, %15
  %37 = sitofp i32 %36 to double
  %38 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 7
  %39 = load ptr, ptr %38, align 8, !tbaa !9
  %40 = shufflevector <2 x double> %32, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %41 = fadd <2 x double> %32, %40
  %42 = extractelement <2 x double> %41, i64 0
  %43 = fmul double %37, %37
  %44 = tail call double @llvm.fmuladd.f64(double %35, double %35, double %43)
  %45 = fsub double %42, %44
  %46 = shufflevector <2 x double> %33, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %47 = fmul <2 x double> %33, %46
  %48 = extractelement <2 x double> %47, i64 0
  %49 = fcmp une double %48, 0.000000e+00
  %50 = fmul double %48, 2.000000e+00
  %51 = select i1 %49, double %50, double 2.000000e+00
  %52 = fdiv double %45, %51
  %53 = fptrunc double %52 to float
  %54 = tail call fastcc float @saacos(float noundef %53) #14
  %55 = extractelement <2 x double> %22, i64 1
  %56 = fneg double %55
  %57 = extractelement <2 x double> %29, i64 1
  %58 = fmul double %57, %56
  %59 = extractelement <2 x double> %22, i64 0
  %60 = extractelement <2 x double> %29, i64 0
  %61 = tail call double @llvm.fmuladd.f64(double %59, double %60, double %58)
  %62 = fcmp ogt double %61, 0.000000e+00
  %63 = fneg float %54
  %64 = select i1 %62, float %63, float %54
  %65 = fcmp oeq float %64, 0.000000e+00
  br i1 %65, label %66, label %86

66:                                               ; preds = %4
  %67 = fdiv <2 x double> %22, %33
  %68 = shufflevector <2 x double> %29, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %69 = fdiv <2 x double> %68, %33
  %70 = extractelement <2 x double> %67, i64 0
  %71 = extractelement <2 x double> %67, i64 1
  %72 = fsub double %70, %71
  %73 = extractelement <2 x double> %69, i64 0
  %74 = extractelement <2 x double> %69, i64 1
  %75 = fsub double %73, %74
  %76 = fmul double %75, %75
  %77 = tail call double @llvm.fmuladd.f64(double %72, double %72, double %76)
  %78 = tail call double @llvm.sqrt.f64(double %77)
  %79 = fptrunc double %78 to float
  %80 = fneg double %71
  %81 = fmul double %73, %80
  %82 = tail call double @llvm.fmuladd.f64(double %70, double %74, double %81)
  %83 = fcmp ogt double %82, 0.000000e+00
  %84 = fneg float %79
  %85 = select i1 %83, float %84, float %79
  br label %86

86:                                               ; preds = %66, %4
  %87 = phi float [ %85, %66 ], [ %64, %4 ]
  %88 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 3
  %89 = load i8, ptr %88, align 8, !tbaa !15
  %90 = icmp eq i8 %89, 0
  %91 = fdiv float %87, 3.000000e+01
  %92 = select i1 %90, float %87, float %91
  %93 = fcmp une float %92, 0.000000e+00
  br i1 %93, label %94, label %97

94:                                               ; preds = %86
  %95 = load i32, ptr %2, align 4, !tbaa !12
  store i32 %95, ptr %12, align 8, !tbaa !12
  %96 = load i32, ptr %8, align 4, !tbaa !12
  store i32 %96, ptr %14, align 4, !tbaa !12
  br label %97

97:                                               ; preds = %94, %86
  %98 = fpext float %92 to double
  %99 = load double, ptr %39, align 8, !tbaa !27
  %100 = fadd double %99, %98
  store double %100, ptr %39, align 8, !tbaa !27
  %101 = fptrunc double %100 to float
  store float %101, ptr %3, align 4, !tbaa !16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @InputAngleSpring(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #15
  tail call void @InputAngle(ptr poison, ptr noundef %1, ptr noundef %2, ptr noundef %3) #14
  call void @InputSpring(ptr poison, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %5) #14
  %6 = load float, ptr %5, align 4, !tbaa !16
  %7 = getelementptr inbounds float, ptr %3, i64 1
  store float %6, ptr %7, align 4, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @InputTrackBall(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 3
  %6 = load i8, ptr %5, align 8, !tbaa !15
  %7 = icmp eq i8 %6, 0
  %8 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 2
  %9 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 2, i64 1
  %10 = load i32, ptr %9, align 4, !tbaa !12
  br i1 %7, label %30, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 4
  %13 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 4, i64 1
  %14 = load i32, ptr %13, align 4, !tbaa !12
  %15 = sub nsw i32 %10, %14
  %16 = sitofp i32 %15 to float
  %17 = getelementptr inbounds i32, ptr %2, i64 1
  %18 = load i32, ptr %17, align 4, !tbaa !12
  %19 = sub nsw i32 %14, %18
  %20 = sitofp i32 %19 to float
  %21 = tail call float @llvm.fmuladd.f32(float %20, float 0x3FB99999A0000000, float %16)
  %22 = load i32, ptr %12, align 4, !tbaa !12
  %23 = load i32, ptr %8, align 8, !tbaa !12
  %24 = sub nsw i32 %22, %23
  %25 = sitofp i32 %24 to float
  %26 = load i32, ptr %2, align 4, !tbaa !12
  %27 = sub nsw i32 %26, %22
  %28 = sitofp i32 %27 to float
  %29 = tail call float @llvm.fmuladd.f32(float %28, float 0x3FB99999A0000000, float %25)
  br label %39

30:                                               ; preds = %4
  %31 = getelementptr inbounds i32, ptr %2, i64 1
  %32 = load i32, ptr %31, align 4, !tbaa !12
  %33 = sub nsw i32 %10, %32
  %34 = sitofp i32 %33 to float
  %35 = load i32, ptr %2, align 4, !tbaa !12
  %36 = load i32, ptr %8, align 8, !tbaa !12
  %37 = sub nsw i32 %35, %36
  %38 = sitofp i32 %37 to float
  br label %39

39:                                               ; preds = %30, %11
  %40 = phi float [ %34, %30 ], [ %21, %11 ]
  %41 = phi float [ %38, %30 ], [ %29, %11 ]
  store float %40, ptr %3, align 4
  %42 = getelementptr inbounds float, ptr %3, i64 1
  store float %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 6
  %44 = load float, ptr %43, align 4, !tbaa !14
  %45 = fmul float %44, %40
  store float %45, ptr %3, align 4, !tbaa !16
  %46 = load float, ptr %43, align 4, !tbaa !14
  %47 = fmul float %46, %41
  store float %47, ptr %42, align 4, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @InputHorizontalRatio(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) #4 {
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 55
  %6 = load ptr, ptr %5, align 8, !tbaa !28
  %7 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 5
  %8 = load i16, ptr %7, align 8, !tbaa !29
  %9 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 3
  %10 = load i8, ptr %9, align 8, !tbaa !15
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 4
  %14 = load i32, ptr %13, align 4, !tbaa !12
  %15 = sitofp i32 %14 to float
  %16 = load i32, ptr %2, align 4, !tbaa !12
  %17 = sub nsw i32 %16, %14
  %18 = sitofp i32 %17 to float
  %19 = fdiv float %18, 1.000000e+01
  %20 = fadd float %19, %15
  br label %24

21:                                               ; preds = %4
  %22 = load i32, ptr %2, align 4, !tbaa !12
  %23 = sitofp i32 %22 to float
  br label %24

24:                                               ; preds = %21, %12
  %25 = phi float [ %20, %12 ], [ %23, %21 ]
  %26 = sdiv i16 %8, 10
  %27 = sitofp i16 %26 to float
  %28 = fsub float %25, %27
  %29 = sitofp i16 %8 to float
  %30 = tail call float @llvm.fmuladd.f32(float %27, float -2.000000e+00, float %29)
  %31 = fdiv float %28, %30
  store float %31, ptr %3, align 4, !tbaa !16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @InputHorizontalAbsolute(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #15
  call void @InputVector(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %5) #14
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 28
  call void @project_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull %6) #13
  %7 = call fastcc float @dot_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %5) #14
  %8 = fmul float %7, 2.000000e+00
  store float %8, ptr %3, align 4, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @InputVerticalRatio(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) #4 {
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 55
  %6 = load ptr, ptr %5, align 8, !tbaa !28
  %7 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 6
  %8 = load i16, ptr %7, align 2, !tbaa !34
  %9 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 3
  %10 = load i8, ptr %9, align 8, !tbaa !15
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 4, i64 1
  %14 = load i32, ptr %13, align 4, !tbaa !12
  %15 = sitofp i32 %14 to float
  %16 = getelementptr inbounds i32, ptr %2, i64 1
  %17 = load i32, ptr %16, align 4, !tbaa !12
  %18 = sub nsw i32 %17, %14
  %19 = sitofp i32 %18 to float
  %20 = fdiv float %19, 1.000000e+01
  %21 = fadd float %20, %15
  br label %25

22:                                               ; preds = %4
  %23 = load i32, ptr %2, align 4, !tbaa !12
  %24 = sitofp i32 %23 to float
  br label %25

25:                                               ; preds = %22, %12
  %26 = phi float [ %21, %12 ], [ %24, %22 ]
  %27 = sdiv i16 %8, 10
  %28 = sitofp i16 %27 to float
  %29 = fsub float %26, %28
  %30 = sitofp i16 %8 to float
  %31 = tail call float @llvm.fmuladd.f32(float %28, float -2.000000e+00, float %30)
  %32 = fdiv float %29, %31
  store float %32, ptr %3, align 4, !tbaa !16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @InputVerticalAbsolute(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #15
  call void @InputVector(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %5) #14
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 28, i64 1
  call void @project_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull %6) #13
  %7 = call fastcc float @dot_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %5) #14
  %8 = fmul float %7, 2.000000e+00
  store float %8, ptr %3, align 4, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @InputCustomRatio(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3) #0 {
  tail call void @InputCustomRatioFlip(ptr poison, ptr noundef %1, ptr noundef %2, ptr noundef %3) #14
  %5 = load float, ptr %3, align 4, !tbaa !16
  %6 = fneg float %5
  store float %6, ptr %3, align 4, !tbaa !16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @InputCustomRatioFlip(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %77, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds i32, ptr %6, i64 2
  %10 = load i32, ptr %9, align 4, !tbaa !12
  %11 = load i32, ptr %6, align 4, !tbaa !12
  %12 = sub nsw i32 %10, %11
  %13 = sitofp i32 %12 to double
  %14 = getelementptr inbounds i32, ptr %6, i64 3
  %15 = load i32, ptr %14, align 4, !tbaa !12
  %16 = getelementptr inbounds i32, ptr %6, i64 1
  %17 = load i32, ptr %16, align 4, !tbaa !12
  %18 = sub nsw i32 %15, %17
  %19 = sitofp i32 %18 to double
  %20 = tail call double @hypot(double noundef %13, double noundef %19) #13
  %21 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 3
  %22 = load i8, ptr %21, align 8, !tbaa !15
  %23 = icmp eq i8 %22, 0
  %24 = fcmp une double %20, 0.000000e+00
  br i1 %23, label %57, label %25

25:                                               ; preds = %8
  br i1 %24, label %26, label %71

26:                                               ; preds = %25
  %27 = getelementptr inbounds i32, ptr %2, i64 1
  %28 = load i32, ptr %27, align 4, !tbaa !12
  %29 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 4, i64 1
  %30 = load i32, ptr %29, align 4, !tbaa !12
  %31 = sub nsw i32 %28, %30
  %32 = sitofp i32 %31 to float
  %33 = fdiv float %32, 1.000000e+01
  %34 = sitofp i32 %30 to float
  %35 = fadd float %33, %34
  %36 = load i32, ptr %14, align 4, !tbaa !12
  %37 = sitofp i32 %36 to float
  %38 = fsub float %35, %37
  %39 = fptosi float %38 to i32
  %40 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 4
  %41 = load i32, ptr %2, align 4, !tbaa !12
  %42 = load i32, ptr %40, align 4, !tbaa !12
  %43 = sub nsw i32 %41, %42
  %44 = sitofp i32 %43 to float
  %45 = fdiv float %44, 1.000000e+01
  %46 = sitofp i32 %42 to float
  %47 = fadd float %45, %46
  %48 = load i32, ptr %9, align 4, !tbaa !12
  %49 = sitofp i32 %48 to float
  %50 = fsub float %47, %49
  %51 = fptosi float %50 to i32
  %52 = sitofp i32 %51 to double
  %53 = sitofp i32 %39 to double
  %54 = fmul double %19, %53
  %55 = tail call double @llvm.fmuladd.f64(double %52, double %13, double %54)
  %56 = fdiv double %55, %20
  br label %71

57:                                               ; preds = %8
  br i1 %24, label %58, label %71

58:                                               ; preds = %57
  %59 = getelementptr inbounds i32, ptr %2, i64 1
  %60 = load i32, ptr %59, align 4, !tbaa !12
  %61 = load i32, ptr %14, align 4, !tbaa !12
  %62 = sub nsw i32 %60, %61
  %63 = load i32, ptr %2, align 4, !tbaa !12
  %64 = load i32, ptr %9, align 4, !tbaa !12
  %65 = sub nsw i32 %63, %64
  %66 = sitofp i32 %65 to double
  %67 = sitofp i32 %62 to double
  %68 = fmul double %19, %67
  %69 = tail call double @llvm.fmuladd.f64(double %66, double %13, double %68)
  %70 = fdiv double %69, %20
  br label %71

71:                                               ; preds = %58, %57, %26, %25
  %72 = phi double [ %56, %26 ], [ 0.000000e+00, %25 ], [ %70, %58 ], [ 0.000000e+00, %57 ]
  %73 = fcmp une double %20, 0.000000e+00
  %74 = fdiv double %72, %20
  %75 = select i1 %73, double %74, double 0.000000e+00
  %76 = fptrunc double %75 to float
  store float %76, ptr %3, align 4, !tbaa !16
  br label %77

77:                                               ; preds = %71, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @applyMouseInput(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr %1, align 8, !tbaa !18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void %5(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #13
  br label %8

8:                                                ; preds = %7, %4
  %9 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !17
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void %10(ptr noundef %0, ptr noundef %3) #13
  br label %13

13:                                               ; preds = %12, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @setInputPostFct(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.MouseInput, ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @handleMouseInput(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !35
  %6 = and i16 %5, -2
  %7 = icmp eq i16 %6, 216
  br i1 %7, label %8, label %24

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %10 = load i16, ptr %9, align 2, !tbaa !37
  switch i16 %10, label %24 [
    i16 1, label %11
    i16 2, label %17
  ]

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !38
  %14 = or i32 %13, 2
  store i32 %14, ptr %12, align 8, !tbaa !38
  %15 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 4
  %16 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  tail call fastcc void @copy_v2_v2_int(ptr noundef nonnull %15, ptr noundef nonnull %16) #14
  br label %21

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !38
  %20 = and i32 %19, -3
  store i32 %20, ptr %18, align 8, !tbaa !38
  br label %21

21:                                               ; preds = %17, %11
  %22 = phi i8 [ 1, %11 ], [ 0, %17 ]
  %23 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 3
  store i8 %22, ptr %23, align 8, !tbaa !15
  br label %24

24:                                               ; preds = %21, %8, %3
  %25 = phi i32 [ 0, %3 ], [ 0, %8 ], [ 1, %21 ]
  ret i32 %25
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2_int(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = load i32, ptr %1, align 4, !tbaa !12
  store i32 %3, ptr %0, align 4, !tbaa !12
  %4 = getelementptr inbounds i32, ptr %1, i64 1
  %5 = load i32, ptr %4, align 4, !tbaa !12
  %6 = getelementptr inbounds i32, ptr %0, i64 1
  store i32 %5, ptr %6, align 4, !tbaa !12
  ret void
}

; Function Attrs: optsize
declare void @convertViewVec(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !16
  %3 = fmul <2 x float> %2, <float 0x3FB99999A0000000, float 0x3FB99999A0000000>
  store <2 x float> %3, ptr %0, align 4, !tbaa !16
  %4 = getelementptr inbounds float, ptr %0, i64 2
  %5 = load float, ptr %4, align 4, !tbaa !16
  %6 = fmul float %5, 0x3FB99999A0000000
  store float %6, ptr %4, align 4, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 {
  %4 = load float, ptr %1, align 4, !tbaa !16
  %5 = load float, ptr %2, align 4, !tbaa !16
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !16
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !16
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !16
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !16
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !16
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !16
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: nounwind optsize
declare float @hypotf(float noundef, float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc float @saacos(float noundef %0) unnamed_addr #9 {
  %2 = fcmp ugt float %0, -1.000000e+00
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = fcmp ult float %0, 1.000000e+00
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call float @acosf(float noundef %0) #13
  br label %7

7:                                                ; preds = %3, %1, %5
  %8 = phi float [ %6, %5 ], [ 0x400921FB60000000, %1 ], [ 0.000000e+00, %3 ]
  ret float %8
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @acosf(float noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare void @project_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #11 {
  %3 = load float, ptr %0, align 4, !tbaa !16
  %4 = load float, ptr %1, align 4, !tbaa !16
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !16
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !16
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !16
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !16
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: nounwind optsize
declare double @hypot(double noundef, double noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #12

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind optsize }
attributes #14 = { optsize }
attributes #15 = { nounwind }

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
!9 = !{!10, !6, i64 48}
!10 = !{!"MouseInput", !6, i64 0, !6, i64 8, !7, i64 16, !7, i64 24, !7, i64 28, !7, i64 36, !11, i64 44, !6, i64 48}
!11 = !{!"float", !7, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !7, i64 0}
!14 = !{!10, !11, i64 44}
!15 = !{!10, !7, i64 24}
!16 = !{!11, !11, i64 0}
!17 = !{!10, !6, i64 8}
!18 = !{!10, !6, i64 0}
!19 = !{!20, !7, i64 977}
!20 = !{!"TransInfo", !13, i64 0, !13, i64 4, !13, i64 8, !21, i64 12, !13, i64 16, !11, i64 20, !11, i64 24, !6, i64 32, !6, i64 40, !13, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !22, i64 80, !23, i64 296, !26, i64 440, !10, i64 584, !13, i64 640, !11, i64 644, !7, i64 648, !7, i64 668, !7, i64 680, !7, i64 688, !21, i64 696, !21, i64 698, !7, i64 700, !7, i64 712, !7, i64 716, !7, i64 780, !7, i64 844, !7, i64 908, !21, i64 972, !21, i64 974, !7, i64 976, !7, i64 977, !7, i64 980, !7, i64 992, !7, i64 1028, !7, i64 1064, !6, i64 1128, !6, i64 1136, !6, i64 1144, !21, i64 1152, !21, i64 1154, !21, i64 1156, !21, i64 1158, !21, i64 1160, !7, i64 1164, !7, i64 1180, !7, i64 1196, !7, i64 1208, !7, i64 1220, !6, i64 1224, !6, i64 1232, !6, i64 1240, !6, i64 1248, !6, i64 1256, !6, i64 1264, !6, i64 1272, !6, i64 1280, !6, i64 1288, !7, i64 1296, !11, i64 1304, !6, i64 1312, !7, i64 1320, !6, i64 1360, !6, i64 1368, !6, i64 1376, !6, i64 1384}
!21 = !{!"short", !7, i64 0}
!22 = !{!"TransCon", !21, i64 0, !7, i64 2, !7, i64 52, !7, i64 88, !7, i64 124, !7, i64 160, !7, i64 172, !13, i64 180, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208}
!23 = !{!"TransSnap", !21, i64 0, !21, i64 2, !21, i64 4, !21, i64 6, !7, i64 8, !7, i64 9, !7, i64 10, !7, i64 11, !21, i64 12, !7, i64 16, !7, i64 28, !7, i64 40, !7, i64 52, !7, i64 64, !24, i64 72, !6, i64 88, !11, i64 96, !25, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136}
!24 = !{!"ListBase", !6, i64 0, !6, i64 8}
!25 = !{!"double", !7, i64 0}
!26 = !{!"NumInput", !21, i64 0, !13, i64 4, !7, i64 8, !7, i64 20, !21, i64 22, !7, i64 24, !7, i64 32, !7, i64 44, !7, i64 56, !21, i64 68, !7, i64 70, !13, i64 136}
!27 = !{!25, !25, i64 0}
!28 = !{!20, !6, i64 1248}
!29 = !{!30, !21, i64 208}
!30 = !{!"ARegion", !6, i64 0, !6, i64 8, !31, i64 16, !33, i64 176, !33, i64 192, !21, i64 208, !21, i64 210, !21, i64 212, !21, i64 214, !21, i64 216, !21, i64 218, !11, i64 220, !21, i64 224, !21, i64 226, !21, i64 228, !21, i64 230, !21, i64 232, !21, i64 234, !21, i64 236, !21, i64 238, !6, i64 240, !24, i64 248, !24, i64 264, !24, i64 280, !24, i64 296, !24, i64 312, !24, i64 328, !24, i64 344, !6, i64 360, !6, i64 368, !6, i64 376}
!31 = !{!"View2D", !32, i64 0, !32, i64 16, !33, i64 32, !33, i64 48, !33, i64 64, !7, i64 80, !7, i64 88, !11, i64 96, !11, i64 100, !21, i64 104, !21, i64 106, !21, i64 108, !21, i64 110, !21, i64 112, !21, i64 114, !21, i64 116, !21, i64 118, !21, i64 120, !21, i64 122, !21, i64 124, !21, i64 126, !6, i64 128, !13, i64 136, !13, i64 140, !6, i64 144, !6, i64 152}
!32 = !{!"rctf", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12}
!33 = !{!"rcti", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12}
!34 = !{!30, !21, i64 210}
!35 = !{!36, !21, i64 16}
!36 = !{!"wmEvent", !6, i64 0, !6, i64 8, !21, i64 16, !21, i64 18, !13, i64 20, !13, i64 24, !7, i64 28, !7, i64 36, !7, i64 42, !7, i64 43, !21, i64 44, !21, i64 46, !13, i64 48, !13, i64 52, !25, i64 56, !13, i64 64, !13, i64 68, !21, i64 72, !21, i64 74, !21, i64 76, !21, i64 78, !21, i64 80, !21, i64 82, !6, i64 88, !6, i64 96, !21, i64 104, !21, i64 106, !13, i64 108, !6, i64 112}
!37 = !{!36, !21, i64 18}
!38 = !{!20, !13, i64 8}
