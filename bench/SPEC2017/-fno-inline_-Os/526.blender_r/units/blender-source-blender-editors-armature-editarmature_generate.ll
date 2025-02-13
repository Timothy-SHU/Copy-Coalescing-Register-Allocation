; ModuleID = 'blender/source/blender/editors/armature/editarmature_generate.c'
source_filename = "blender/source/blender/editors/armature/editarmature_generate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EditBone = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], float, [3 x float], [3 x float], i32, i32, float, float, float, float, float, float, float, float, float, float, i16 }
%struct.BArcIterator = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, i32, i32 }
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }

@nextFixedSubdivision.stroke_length = internal unnamed_addr global float 0.000000e+00, align 4
@nextFixedSubdivision.current_length = internal unnamed_addr global float 0.000000e+00, align 4
@nextFixedSubdivision.n = internal unnamed_addr global i8 0, align 1
@.str = private unnamed_addr constant [5 x i8] c"Bone\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @setBoneRollFromNormal(ptr noundef %0, ptr noundef readonly %1, ptr nocapture readnone %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [3 x float], align 4
  %6 = icmp eq ptr %1, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %4
  %8 = tail call fastcc zeroext i8 @is_zero_v3(ptr noundef nonnull %1) #10, !range !34
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %1) #10
  call void @mul_m3_v3(ptr noundef %3, ptr noundef nonnull %5) #12
  %11 = call float @ED_rollBoneToVector(ptr noundef %0, ptr noundef nonnull %5, i8 noundef zeroext 0) #12
  %12 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 6
  store float %11, ptr %12, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  br label %13

13:                                               ; preds = %10, %7, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_zero_v3(ptr nocapture noundef readonly %0) unnamed_addr #1 !PGOFuncName !43 {
  %2 = load float, ptr %0, align 4, !tbaa !44
  %3 = fcmp oeq float %2, 0.000000e+00
  br i1 %3, label %4, label %13

4:                                                ; preds = %1
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !44
  %7 = fcmp oeq float %6, 0.000000e+00
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr inbounds float, ptr %0, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !44
  %11 = fcmp oeq float %10, 0.000000e+00
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %8, %4, %1
  %14 = phi i8 [ 0, %4 ], [ 0, %1 ], [ %12, %8 ]
  ret i8 %14
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !45 {
  %3 = load float, ptr %1, align 4, !tbaa !44
  store float %3, ptr %0, align 4, !tbaa !44
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !44
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !44
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !44
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !44
  ret void
}

; Function Attrs: optsize
declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare float @ED_rollBoneToVector(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @calcArcCorrelation(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = sub nsw i32 %2, %1
  %10 = tail call i32 @llvm.abs.i32(i32 %9, i1 true)
  %11 = add nuw nsw i32 %10, 2
  %12 = icmp eq i32 %2, %1
  br i1 %12, label %57, label %13

13:                                               ; preds = %5
  %14 = icmp sgt i32 %1, %2
  br i1 %14, label %26, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.BArcIterator, ptr %0, i64 0, i32 7
  br label %17

17:                                               ; preds = %15, %17
  %18 = phi i32 [ %1, %15 ], [ %24, %17 ]
  %19 = phi float [ 0.000000e+00, %15 ], [ %23, %17 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #11
  %20 = tail call ptr @IT_peek(ptr noundef %0, i32 noundef %18) #12
  %21 = load ptr, ptr %16, align 8, !tbaa !46
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %6, ptr noundef %21, ptr noundef %3) #10
  %22 = call fastcc float @dot_v3v3(ptr noundef nonnull %6, ptr noundef %4) #10
  %23 = fadd float %19, %22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #11
  %24 = add i32 %18, 1
  %25 = icmp eq i32 %18, %2
  br i1 %25, label %26, label %17, !llvm.loop !48

26:                                               ; preds = %17, %13
  %27 = phi float [ 0.000000e+00, %13 ], [ %23, %17 ]
  %28 = tail call fastcc float @dot_v3v3(ptr noundef %4, ptr noundef %4) #10
  %29 = fdiv float %27, %28
  %30 = fadd float %29, 1.000000e+00
  %31 = sitofp i32 %11 to float
  %32 = fdiv float %30, %31
  br i1 %14, label %48, label %33

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.BArcIterator, ptr %0, i64 0, i32 7
  br label %35

35:                                               ; preds = %33, %35
  %36 = phi i32 [ %1, %33 ], [ %46, %35 ]
  %37 = phi float [ 0.000000e+00, %33 ], [ %45, %35 ]
  %38 = phi float [ 0.000000e+00, %33 ], [ %43, %35 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #11
  %39 = call ptr @IT_peek(ptr noundef %0, i32 noundef %36) #12
  %40 = load ptr, ptr %34, align 8, !tbaa !46
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %7, ptr noundef %40, ptr noundef %3) #10
  call void @project_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef %4) #12
  call fastcc void @sub_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %8) #10
  %41 = call fastcc float @len_v3(ptr noundef nonnull %8) #10
  %42 = fsub float %41, %32
  %43 = call float @llvm.fmuladd.f32(float %42, float %42, float %38)
  %44 = call fastcc float @dot_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %7) #10
  %45 = fadd float %37, %44
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #11
  %46 = add i32 %36, 1
  %47 = icmp eq i32 %36, %2
  br i1 %47, label %48, label %35, !llvm.loop !50

48:                                               ; preds = %35, %26
  %49 = phi float [ 0.000000e+00, %26 ], [ %43, %35 ]
  %50 = phi float [ 0.000000e+00, %26 ], [ %45, %35 ]
  %51 = fsub float 1.000000e+00, %32
  %52 = fmul float %51, %51
  %53 = call float @llvm.fmuladd.f32(float %32, float %32, float %52)
  %54 = fadd float %53, %49
  %55 = fdiv float %50, %54
  %56 = fsub float 1.000000e+00, %55
  br label %57

57:                                               ; preds = %5, %48
  %58 = phi float [ %56, %48 ], [ 1.000000e+00, %5 ]
  ret float %58
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: optsize
declare ptr @IT_peek(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 !PGOFuncName !51 {
  %4 = load float, ptr %1, align 4, !tbaa !44
  %5 = load float, ptr %2, align 4, !tbaa !44
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !44
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !44
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !44
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !44
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !44
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !44
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !PGOFuncName !52 {
  %3 = load float, ptr %0, align 4, !tbaa !44
  %4 = load float, ptr %1, align 4, !tbaa !44
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !44
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !44
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !44
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !44
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: optsize
declare void @project_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !53 {
  %3 = load float, ptr %1, align 4, !tbaa !44
  %4 = load float, ptr %0, align 4, !tbaa !44
  %5 = fsub float %4, %3
  store float %5, ptr %0, align 4, !tbaa !44
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !44
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !44
  %10 = fsub float %9, %7
  store float %10, ptr %8, align 4, !tbaa !44
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !44
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !44
  %15 = fsub float %14, %12
  store float %15, ptr %13, align 4, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !54 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #10
  %3 = tail call float @sqrtf(float noundef %2) #12
  ret float %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @nextFixedSubdivision(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readnone %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = load float, ptr @nextFixedSubdivision.stroke_length, align 4, !tbaa !44
  %8 = fcmp oeq float %7, 0.000000e+00
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = load i8, ptr @nextFixedSubdivision.n, align 1, !tbaa !55
  %11 = add i8 %10, 1
  br label %32

12:                                               ; preds = %6
  store float 0.000000e+00, ptr @nextFixedSubdivision.current_length, align 4, !tbaa !44
  %13 = tail call ptr @IT_peek(ptr noundef %1, i32 noundef %2) #12
  %14 = getelementptr inbounds %struct.BArcIterator, ptr %1, i64 0, i32 7
  %15 = icmp slt i32 %2, %3
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = load float, ptr @nextFixedSubdivision.stroke_length, align 4, !tbaa !44
  br label %30

18:                                               ; preds = %12
  %19 = load ptr, ptr %14, align 8, !tbaa !46
  br label %20

20:                                               ; preds = %18, %20
  %21 = phi i32 [ %23, %20 ], [ %2, %18 ]
  %22 = phi ptr [ %25, %20 ], [ %19, %18 ]
  %23 = add nsw i32 %21, 1
  %24 = tail call ptr @IT_peek(ptr noundef nonnull %1, i32 noundef %23) #12
  %25 = load ptr, ptr %14, align 8, !tbaa !46
  %26 = tail call fastcc float @len_v3v3(ptr noundef %22, ptr noundef %25) #10
  %27 = load float, ptr @nextFixedSubdivision.stroke_length, align 4, !tbaa !44
  %28 = fadd float %26, %27
  store float %28, ptr @nextFixedSubdivision.stroke_length, align 4, !tbaa !44
  %29 = icmp eq i32 %23, %3
  br i1 %29, label %30, label %20, !llvm.loop !56

30:                                               ; preds = %20, %16
  %31 = phi float [ %17, %16 ], [ %28, %20 ]
  store float 0.000000e+00, ptr @nextFixedSubdivision.current_length, align 4, !tbaa !44
  br label %32

32:                                               ; preds = %9, %30
  %33 = phi float [ %7, %9 ], [ %31, %30 ]
  %34 = phi i8 [ %11, %9 ], [ 1, %30 ]
  store i8 %34, ptr @nextFixedSubdivision.n, align 1, !tbaa !55
  %35 = uitofp i8 %34 to float
  %36 = fmul float %33, %35
  %37 = getelementptr inbounds %struct.ToolSettings, ptr %0, i64 0, i32 44
  %38 = load i8, ptr %37, align 2, !tbaa !57
  %39 = uitofp i8 %38 to float
  %40 = fdiv float %36, %39
  %41 = tail call ptr @IT_peek(ptr noundef %1, i32 noundef %2) #12
  %42 = getelementptr inbounds %struct.BArcIterator, ptr %1, i64 0, i32 7
  %43 = load ptr, ptr %42, align 8, !tbaa !46
  br label %44

44:                                               ; preds = %49, %32
  %45 = phi ptr [ %43, %32 ], [ %51, %49 ]
  %46 = phi i32 [ %2, %32 ], [ %47, %49 ]
  %47 = add nsw i32 %46, 1
  %48 = icmp slt i32 %47, %3
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = tail call ptr @IT_peek(ptr noundef nonnull %1, i32 noundef %47) #12
  %51 = load ptr, ptr %42, align 8, !tbaa !46
  %52 = tail call fastcc float @len_v3v3(ptr noundef %45, ptr noundef %51) #10
  %53 = load float, ptr @nextFixedSubdivision.current_length, align 4, !tbaa !44
  %54 = fadd float %52, %53
  store float %54, ptr @nextFixedSubdivision.current_length, align 4, !tbaa !44
  %55 = fcmp ult float %54, %40
  br i1 %55, label %44, label %56, !llvm.loop !64

56:                                               ; preds = %49
  tail call fastcc void @copy_v3_v3(ptr noundef %5, ptr noundef %51) #10
  br label %58

57:                                               ; preds = %44
  store float 0.000000e+00, ptr @nextFixedSubdivision.stroke_length, align 4, !tbaa !44
  br label %58

58:                                               ; preds = %57, %56
  %59 = phi i32 [ %47, %56 ], [ -1, %57 ]
  ret i32 %59
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !65 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #11
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #10
  %4 = call fastcc float @len_v3(ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #11
  ret float %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @nextAdaptativeSubdivision(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = alloca [3 x float], align 4
  %8 = getelementptr inbounds %struct.ToolSettings, ptr %0, i64 0, i32 31
  %9 = load float, ptr %8, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #11
  %10 = tail call ptr @IT_peek(ptr noundef %1, i32 noundef %2) #12
  %11 = getelementptr inbounds %struct.BArcIterator, ptr %1, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = add nsw i32 %2, 2
  %14 = icmp sgt i32 %13, %3
  br i1 %14, label %28, label %15

15:                                               ; preds = %6, %25
  %16 = phi i32 [ %26, %25 ], [ %13, %6 ]
  %17 = call ptr @IT_peek(ptr noundef nonnull %1, i32 noundef %16) #12
  %18 = load ptr, ptr %11, align 8, !tbaa !46
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %7, ptr noundef %18, ptr noundef %4) #10
  %19 = call float @calcArcCorrelation(ptr noundef nonnull %1, i32 noundef %2, i32 noundef %16, ptr noundef %12, ptr noundef nonnull %7) #10
  %20 = fcmp olt float %19, %9
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = add nsw i32 %16, -1
  %23 = call ptr @IT_peek(ptr noundef nonnull %1, i32 noundef %22) #12
  %24 = load ptr, ptr %11, align 8, !tbaa !46
  call fastcc void @copy_v3_v3(ptr noundef %5, ptr noundef %24) #10
  br label %28

25:                                               ; preds = %15
  %26 = add i32 %16, 1
  %27 = icmp eq i32 %16, %3
  br i1 %27, label %28, label %15, !llvm.loop !67

28:                                               ; preds = %25, %6, %21
  %29 = phi i32 [ %22, %21 ], [ -1, %6 ], [ -1, %25 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #11
  ret i32 %29
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @nextLengthSubdivision(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef %5) local_unnamed_addr #0 {
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = getelementptr inbounds %struct.ToolSettings, ptr %0, i64 0, i32 29
  %11 = load float, ptr %10, align 4, !tbaa !68
  %12 = getelementptr inbounds %struct.BArcIterator, ptr %1, i64 0, i32 7
  %13 = tail call i32 @llvm.smax.i32(i32 %3, i32 %2)
  br label %14

14:                                               ; preds = %18, %6
  %15 = phi i32 [ %2, %6 ], [ %19, %18 ]
  %16 = phi i1 [ false, %6 ], [ true, %18 ]
  %17 = icmp eq i32 %15, %13
  br i1 %17, label %48, label %18

18:                                               ; preds = %14
  %19 = add i32 %15, 1
  %20 = tail call ptr @IT_peek(ptr noundef %1, i32 noundef %15) #12
  %21 = load ptr, ptr %12, align 8, !tbaa !46
  %22 = tail call ptr @IT_peek(ptr noundef %1, i32 noundef %19) #12
  %23 = load ptr, ptr %12, align 8, !tbaa !46
  %24 = tail call fastcc float @len_v3v3(ptr noundef %23, ptr noundef %4) #10
  %25 = fcmp ule float %24, %11
  br i1 %25, label %14, label %26

26:                                               ; preds = %18
  br i1 %16, label %27, label %47

27:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #11
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %7, ptr noundef %23, ptr noundef %21) #10
  %28 = call fastcc float @dot_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %7) #10
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %8, ptr noundef %21, ptr noundef %4) #10
  %29 = call fastcc float @dot_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %8) #10
  %30 = fmul float %29, 2.000000e+00
  %31 = call fastcc float @dot_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %8) #10
  %32 = fneg float %11
  %33 = tail call float @llvm.fmuladd.f32(float %32, float %11, float %31)
  %34 = fmul float %28, -4.000000e+00
  %35 = fmul float %34, %33
  %36 = tail call float @llvm.fmuladd.f32(float %30, float %30, float %35)
  %37 = tail call float @sqrtf(float noundef %36) #12
  %38 = fsub float %37, %30
  %39 = fmul float %28, 2.000000e+00
  %40 = fdiv float %38, %39
  %41 = fcmp ord float %40, 0.000000e+00
  %42 = fcmp olt float %40, 1.000000e+00
  %43 = and i1 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %27
  call fastcc void @copy_v3_v3(ptr noundef %5, ptr noundef nonnull %7) #10
  tail call fastcc void @mul_v3_fl(ptr noundef %5, float noundef %40) #10
  tail call fastcc void @add_v3_v3(ptr noundef %5, ptr noundef %21) #10
  br label %46

45:                                               ; preds = %27
  tail call fastcc void @copy_v3_v3(ptr noundef %5, ptr noundef %23) #10
  br label %46

46:                                               ; preds = %45, %44
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #11
  br label %48

47:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #11
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %9, ptr noundef %23, ptr noundef %21) #10
  call fastcc void @normalize_v3(ptr noundef nonnull %9) #10
  call fastcc void @copy_v3_v3(ptr noundef %5, ptr noundef nonnull %9) #10
  tail call fastcc void @mul_v3_fl(ptr noundef %5, float noundef %11) #10
  tail call fastcc void @add_v3_v3(ptr noundef %5, ptr noundef %4) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #11
  br label %48

48:                                               ; preds = %14, %47, %46
  %49 = phi i32 [ %15, %46 ], [ %15, %47 ], [ -1, %14 ]
  ret i32 %49
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #3 !PGOFuncName !69 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !44
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !44
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !44
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !70 {
  %3 = load float, ptr %1, align 4, !tbaa !44
  %4 = load float, ptr %0, align 4, !tbaa !44
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !44
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !44
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !44
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !44
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !44
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !44
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3(ptr nocapture noundef %0) unnamed_addr #6 !PGOFuncName !71 {
  tail call fastcc void @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @subdivideArcBy(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr nocapture noundef readonly %6) local_unnamed_addr #0 {
  %8 = getelementptr inbounds %struct.BArcIterator, ptr %3, i64 0, i32 10
  %9 = load i32, ptr %8, align 4, !tbaa !72
  %10 = tail call ptr @IT_head(ptr noundef %3) #12
  %11 = tail call ptr @ED_armature_edit_bone_add(ptr noundef %1, ptr noundef nonnull @.str) #12
  %12 = getelementptr inbounds %struct.EditBone, ptr %11, i64 0, i32 7
  %13 = getelementptr inbounds %struct.BArcIterator, ptr %3, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %12, ptr noundef %14) #10
  %15 = getelementptr inbounds %struct.BArcIterator, ptr %3, i64 0, i32 9
  %16 = load float, ptr %15, align 8, !tbaa !73
  %17 = fcmp ogt float %16, 0x3E80000000000000
  br i1 %17, label %18, label %21

18:                                               ; preds = %7
  %19 = fmul float %16, 0x3FF3333340000000
  %20 = getelementptr inbounds %struct.EditBone, ptr %11, i64 0, i32 18
  store float %19, ptr %20, align 8, !tbaa !74
  br label %21

21:                                               ; preds = %18, %7
  %22 = getelementptr inbounds %struct.BArcIterator, ptr %3, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !75
  %24 = getelementptr inbounds %struct.EditBone, ptr %11, i64 0, i32 8
  %25 = tail call i32 %6(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 0, i32 noundef %9, ptr noundef nonnull %12, ptr noundef nonnull %24) #12
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %51, label %27

27:                                               ; preds = %21, %45
  %28 = phi i32 [ %49, %45 ], [ %25, %21 ]
  %29 = phi ptr [ %47, %45 ], [ %23, %21 ]
  %30 = phi ptr [ %32, %45 ], [ %11, %21 ]
  %31 = tail call ptr @IT_peek(ptr noundef nonnull %3, i32 noundef %28) #12
  %32 = tail call ptr @ED_armature_edit_bone_add(ptr noundef %1, ptr noundef nonnull @.str) #12
  %33 = getelementptr inbounds %struct.EditBone, ptr %32, i64 0, i32 7
  %34 = getelementptr inbounds %struct.EditBone, ptr %30, i64 0, i32 8
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %33, ptr noundef nonnull %34) #10
  %35 = getelementptr inbounds %struct.EditBone, ptr %32, i64 0, i32 3
  store ptr %30, ptr %35, align 8, !tbaa !76
  %36 = getelementptr inbounds %struct.EditBone, ptr %32, i64 0, i32 9
  %37 = load i32, ptr %36, align 4, !tbaa !77
  %38 = or i32 %37, 16
  store i32 %38, ptr %36, align 4, !tbaa !77
  %39 = load float, ptr %15, align 8, !tbaa !73
  %40 = fcmp ogt float %39, 0x3E80000000000000
  br i1 %40, label %41, label %45

41:                                               ; preds = %27
  %42 = fmul float %39, 0x3FF3333340000000
  %43 = getelementptr inbounds %struct.EditBone, ptr %32, i64 0, i32 18
  store float %42, ptr %43, align 8, !tbaa !74
  %44 = getelementptr inbounds %struct.EditBone, ptr %30, i64 0, i32 19
  store float %42, ptr %44, align 4, !tbaa !78
  br label %45

45:                                               ; preds = %41, %27
  tail call void @mul_m4_v3(ptr noundef %4, ptr noundef nonnull %34) #12
  %46 = getelementptr inbounds %struct.EditBone, ptr %30, i64 0, i32 7
  tail call void @mul_m4_v3(ptr noundef %4, ptr noundef nonnull %46) #12
  tail call void @setBoneRollFromNormal(ptr noundef %30, ptr noundef %29, ptr poison, ptr noundef %5) #10
  %47 = load ptr, ptr %22, align 8, !tbaa !75
  %48 = getelementptr inbounds %struct.EditBone, ptr %32, i64 0, i32 8
  %49 = tail call i32 %6(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %28, i32 noundef %9, ptr noundef nonnull %33, ptr noundef nonnull %48) #12
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %27, !llvm.loop !79

51:                                               ; preds = %45, %21
  %52 = phi ptr [ %11, %21 ], [ %32, %45 ]
  %53 = getelementptr inbounds %struct.BArcIterator, ptr %3, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !80
  %55 = tail call ptr %54(ptr noundef nonnull %3) #12
  %56 = getelementptr inbounds %struct.EditBone, ptr %52, i64 0, i32 8
  %57 = load ptr, ptr %13, align 8, !tbaa !46
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %56, ptr noundef %57) #10
  %58 = load float, ptr %15, align 8, !tbaa !73
  %59 = fcmp ogt float %58, 0x3E80000000000000
  br i1 %59, label %60, label %63

60:                                               ; preds = %51
  %61 = fmul float %58, 0x3FF3333340000000
  %62 = getelementptr inbounds %struct.EditBone, ptr %52, i64 0, i32 19
  store float %61, ptr %62, align 4, !tbaa !78
  br label %63

63:                                               ; preds = %60, %51
  tail call void @mul_m4_v3(ptr noundef %4, ptr noundef nonnull %56) #12
  %64 = getelementptr inbounds %struct.EditBone, ptr %52, i64 0, i32 7
  tail call void @mul_m4_v3(ptr noundef %4, ptr noundef nonnull %64) #12
  %65 = load ptr, ptr %22, align 8, !tbaa !75
  tail call void @setBoneRollFromNormal(ptr noundef %52, ptr noundef %65, ptr poison, ptr noundef %5) #10
  ret ptr %52
}

; Function Attrs: optsize
declare ptr @IT_head(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @ED_armature_edit_bone_add(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !81 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #10
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #12
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #10
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #10
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #3 !PGOFuncName !82 {
  %4 = load float, ptr %1, align 4, !tbaa !44
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !44
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !44
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !44
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !44
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #8 !PGOFuncName !83 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !44
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !44
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { optsize }
attributes #11 = { nounwind }
attributes #12 = { nounwind optsize }

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
!34 = !{i8 0, i8 2}
!35 = !{!36, !40, i64 104}
!36 = !{!"EditBone", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !38, i64 40, !40, i64 104, !38, i64 108, !38, i64 120, !41, i64 132, !41, i64 136, !40, i64 140, !40, i64 144, !40, i64 148, !40, i64 152, !40, i64 156, !40, i64 160, !40, i64 164, !40, i64 168, !40, i64 172, !40, i64 176, !42, i64 180}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"float", !38, i64 0}
!41 = !{!"int", !38, i64 0}
!42 = !{!"short", !38, i64 0}
!43 = !{!"editarmature_generate.c:is_zero_v3"}
!44 = !{!40, !40, i64 0}
!45 = !{!"editarmature_generate.c:copy_v3_v3"}
!46 = !{!47, !37, i64 56}
!47 = !{!"BArcIterator", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !40, i64 72, !41, i64 76, !41, i64 80}
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.mustprogress"}
!50 = distinct !{!50, !49}
!51 = !{!"editarmature_generate.c:sub_v3_v3v3"}
!52 = !{!"editarmature_generate.c:dot_v3v3"}
!53 = !{!"editarmature_generate.c:sub_v3_v3"}
!54 = !{!"editarmature_generate.c:len_v3"}
!55 = !{!38, !38, i64 0}
!56 = distinct !{!56, !49}
!57 = !{!58, !38, i64 410}
!58 = !{!"ToolSettings", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !40, i64 32, !40, i64 36, !40, i64 40, !42, i64 44, !42, i64 46, !38, i64 48, !38, i64 49, !38, i64 50, !38, i64 51, !40, i64 52, !42, i64 56, !38, i64 58, !38, i64 59, !59, i64 64, !61, i64 168, !40, i64 336, !40, i64 340, !42, i64 344, !42, i64 346, !38, i64 348, !38, i64 349, !42, i64 350, !40, i64 352, !40, i64 356, !40, i64 360, !40, i64 364, !40, i64 368, !40, i64 372, !40, i64 376, !40, i64 380, !40, i64 384, !40, i64 388, !42, i64 392, !38, i64 394, !38, i64 395, !38, i64 396, !38, i64 399, !37, i64 400, !38, i64 408, !38, i64 409, !38, i64 410, !38, i64 411, !38, i64 412, !38, i64 413, !38, i64 421, !38, i64 429, !38, i64 430, !38, i64 431, !38, i64 432, !38, i64 433, !42, i64 434, !42, i64 436, !42, i64 438, !42, i64 440, !38, i64 442, !38, i64 443, !38, i64 444, !38, i64 445, !38, i64 446, !38, i64 447, !41, i64 448, !41, i64 452, !41, i64 456, !41, i64 460, !42, i64 464, !42, i64 466, !41, i64 468, !40, i64 472, !40, i64 476, !62, i64 480, !63, i64 608}
!59 = !{!"ImagePaintSettings", !60, i64 0, !42, i64 40, !42, i64 42, !42, i64 44, !42, i64 46, !38, i64 48, !41, i64 52, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !38, i64 88, !40, i64 100}
!60 = !{!"Paint", !37, i64 0, !37, i64 8, !37, i64 16, !38, i64 24, !41, i64 28, !41, i64 32, !41, i64 36}
!61 = !{!"ParticleEditSettings", !42, i64 0, !42, i64 2, !42, i64 4, !42, i64 6, !38, i64 8, !37, i64 120, !40, i64 128, !40, i64 132, !41, i64 136, !41, i64 140, !41, i64 144, !41, i64 148, !37, i64 152, !37, i64 160}
!62 = !{!"UnifiedPaintSettings", !41, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !38, i64 16, !38, i64 28, !41, i64 40, !38, i64 44, !40, i64 52, !41, i64 56, !41, i64 60, !38, i64 64, !38, i64 65, !40, i64 72, !38, i64 76, !41, i64 84, !40, i64 88, !38, i64 92, !38, i64 100, !41, i64 108, !37, i64 112, !40, i64 120, !41, i64 124}
!63 = !{!"MeshStatVis", !38, i64 0, !38, i64 1, !38, i64 3, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !38, i64 20, !38, i64 21, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36}
!64 = distinct !{!64, !49}
!65 = !{!"editarmature_generate.c:len_v3v3"}
!66 = !{!58, !40, i64 372}
!67 = distinct !{!67, !49}
!68 = !{!58, !40, i64 364}
!69 = !{!"editarmature_generate.c:mul_v3_fl"}
!70 = !{!"editarmature_generate.c:add_v3_v3"}
!71 = !{!"editarmature_generate.c:normalize_v3"}
!72 = !{!47, !41, i64 76}
!73 = !{!47, !40, i64 72}
!74 = !{!36, !40, i64 168}
!75 = !{!47, !37, i64 64}
!76 = !{!36, !37, i64 24}
!77 = !{!36, !41, i64 132}
!78 = !{!36, !40, i64 172}
!79 = distinct !{!79, !49}
!80 = !{!47, !37, i64 8}
!81 = !{!"editarmature_generate.c:normalize_v3_v3"}
!82 = !{!"editarmature_generate.c:mul_v3_v3fl"}
!83 = !{!"editarmature_generate.c:zero_v3"}
