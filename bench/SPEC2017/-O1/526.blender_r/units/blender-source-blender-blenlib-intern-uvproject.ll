; ModuleID = 'blender/source/blender/blenlib/intern/uvproject.c'
source_filename = "blender/source/blender/blenlib/intern/uvproject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ProjCameraInfo = type { float, float, float, float, float, float, [4 x [4 x float]], [4 x [4 x float]], i8, i8, i8 }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.Camera = type { %struct.ID, ptr, i8, i8, i16, float, float, float, float, float, float, float, float, float, float, float, ptr, ptr, i8, [7 x i8] }

@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [15 x i8] c"ProjCameraInfo\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @BLI_uvproject_from_camera(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7
  %5 = load float, ptr %1, align 4, !tbaa !34
  store float %5, ptr %4, align 16, !tbaa !34
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %4, i64 1
  store float %7, ptr %8, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = getelementptr inbounds float, ptr %4, i64 2
  store float %10, ptr %11, align 8, !tbaa !34
  %12 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 3
  store float 1.000000e+00, ptr %12, align 4, !tbaa !34
  %13 = getelementptr inbounds %struct.ProjCameraInfo, ptr %2, i64 0, i32 10
  %14 = load i8, ptr %13, align 2, !tbaa !38
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.ProjCameraInfo, ptr %2, i64 0, i32 6
  call void @mul_m4_v4(ptr noundef nonnull %17, ptr noundef nonnull %4) #7
  br label %18

18:                                               ; preds = %16, %3
  %19 = getelementptr inbounds %struct.ProjCameraInfo, ptr %2, i64 0, i32 7
  call void @mul_m4_v4(ptr noundef nonnull %19, ptr noundef nonnull %4) #7
  %20 = getelementptr inbounds %struct.ProjCameraInfo, ptr %2, i64 0, i32 9
  %21 = load i8, ptr %20, align 1, !tbaa !40
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %52, label %23

23:                                               ; preds = %18
  %24 = load float, ptr %4, align 16, !tbaa !34
  %25 = load float, ptr %11, align 8, !tbaa !34
  %26 = fneg float %25
  %27 = call float @atan2f(float noundef %24, float noundef %26) #7
  %28 = fdiv float %27, 0x401921FB60000000
  %29 = getelementptr inbounds %struct.ProjCameraInfo, ptr %2, i64 0, i32 8
  %30 = load i8, ptr %29, align 4, !tbaa !41
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %23
  store float %28, ptr %0, align 4, !tbaa !34
  %33 = load float, ptr %8, align 4, !tbaa !34
  %34 = getelementptr inbounds %struct.ProjCameraInfo, ptr %2, i64 0, i32 1
  %35 = load float, ptr %34, align 4, !tbaa !42
  %36 = fdiv float %33, %35
  br label %84

37:                                               ; preds = %23
  %38 = load float, ptr %4, align 16, !tbaa !34
  %39 = load float, ptr %11, align 8, !tbaa !34
  %40 = load float, ptr %2, align 4, !tbaa !43
  %41 = fdiv float 0x400921FB60000000, %40
  %42 = fmul float %28, %41
  store float %42, ptr %0, align 4, !tbaa !34
  %43 = load float, ptr %8, align 4, !tbaa !34
  %44 = fmul float %39, %39
  %45 = call float @llvm.fmuladd.f32(float %38, float %38, float %44)
  %46 = call float @sqrtf(float noundef %45) #7
  %47 = getelementptr inbounds %struct.ProjCameraInfo, ptr %2, i64 0, i32 1
  %48 = load float, ptr %47, align 4, !tbaa !42
  %49 = fmul float %48, 2.000000e+00
  %50 = fmul float %46, %49
  %51 = fdiv float %43, %50
  br label %84

52:                                               ; preds = %18
  %53 = load float, ptr %11, align 8, !tbaa !34
  %54 = fcmp oeq float %53, 0.000000e+00
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store float 0x3EE4F8B580000000, ptr %11, align 8, !tbaa !34
  br label %56

56:                                               ; preds = %55, %52
  %57 = getelementptr inbounds %struct.ProjCameraInfo, ptr %2, i64 0, i32 8
  %58 = load i8, ptr %57, align 4, !tbaa !41
  %59 = icmp eq i8 %58, 0
  %60 = load float, ptr %4, align 16, !tbaa !34
  br i1 %59, label %61, label %68

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.ProjCameraInfo, ptr %2, i64 0, i32 1
  %63 = load float, ptr %62, align 4, !tbaa !42
  %64 = fdiv float %60, %63
  store float %64, ptr %0, align 4, !tbaa !34
  %65 = load float, ptr %8, align 4, !tbaa !34
  %66 = load float, ptr %62, align 4, !tbaa !42
  %67 = fdiv float %65, %66
  br label %84

68:                                               ; preds = %56
  %69 = fneg float %60
  %70 = getelementptr inbounds %struct.ProjCameraInfo, ptr %2, i64 0, i32 1
  %71 = load float, ptr %70, align 4, !tbaa !42
  %72 = fdiv float 1.000000e+00, %71
  %73 = load float, ptr %11, align 8, !tbaa !34
  %74 = fdiv float %72, %73
  %75 = fmul float %74, %69
  %76 = fmul float %75, 5.000000e-01
  store float %76, ptr %0, align 4, !tbaa !34
  %77 = load float, ptr %8, align 4, !tbaa !34
  %78 = fneg float %77
  %79 = load float, ptr %70, align 4, !tbaa !42
  %80 = fdiv float 1.000000e+00, %79
  %81 = fdiv float %80, %73
  %82 = fmul float %81, %78
  %83 = fmul float %82, 5.000000e-01
  br label %84

84:                                               ; preds = %32, %37, %61, %68
  %85 = phi float [ %36, %32 ], [ %51, %37 ], [ %67, %61 ], [ %83, %68 ]
  %86 = getelementptr inbounds float, ptr %0, i64 1
  store float %85, ptr %86, align 4, !tbaa !34
  %87 = getelementptr inbounds %struct.ProjCameraInfo, ptr %2, i64 0, i32 2
  %88 = load float, ptr %87, align 4, !tbaa !44
  %89 = load float, ptr %0, align 4, !tbaa !34
  %90 = fmul float %88, %89
  store float %90, ptr %0, align 4, !tbaa !34
  %91 = getelementptr inbounds %struct.ProjCameraInfo, ptr %2, i64 0, i32 3
  %92 = load float, ptr %91, align 4, !tbaa !45
  %93 = getelementptr inbounds float, ptr %0, i64 1
  %94 = load float, ptr %93, align 4, !tbaa !34
  %95 = fmul float %92, %94
  store float %95, ptr %93, align 4, !tbaa !34
  %96 = getelementptr inbounds %struct.ProjCameraInfo, ptr %2, i64 0, i32 4
  %97 = load float, ptr %96, align 4, !tbaa !46
  %98 = fadd float %90, %97
  store float %98, ptr %0, align 4, !tbaa !34
  %99 = getelementptr inbounds %struct.ProjCameraInfo, ptr %2, i64 0, i32 5
  %100 = load float, ptr %99, align 4, !tbaa !47
  %101 = fadd float %95, %100
  store float %101, ptr %93, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @mul_m4_v4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @BLI_uvproject_from_view(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, float noundef %4, float noundef %5) local_unnamed_addr #0 {
  %7 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7
  %8 = load float, ptr %1, align 4, !tbaa !34
  store float %8, ptr %7, align 16, !tbaa !34
  %9 = getelementptr inbounds float, ptr %1, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = getelementptr inbounds float, ptr %7, i64 1
  store float %10, ptr %11, align 4, !tbaa !34
  %12 = getelementptr inbounds float, ptr %1, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = getelementptr inbounds float, ptr %7, i64 2
  store float %13, ptr %14, align 8, !tbaa !34
  %15 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 3
  store float 1.000000e+00, ptr %15, align 4, !tbaa !34
  call void @mul_m4_v4(ptr noundef %3, ptr noundef nonnull %7) #7
  call void @mul_m4_v4(ptr noundef %2, ptr noundef nonnull %7) #7
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = call float @llvm.fabs.f32(float %16)
  %18 = fcmp ogt float %17, 0x3EE4F8B580000000
  %19 = fmul float %4, 5.000000e-01
  %20 = load float, ptr %7, align 16, !tbaa !34
  br i1 %18, label %21, label %30

21:                                               ; preds = %6
  %22 = fmul float %19, %20
  %23 = fdiv float %22, %16
  %24 = fadd float %19, %23
  store float %24, ptr %0, align 4, !tbaa !34
  %25 = fmul float %5, 5.000000e-01
  %26 = load float, ptr %11, align 4, !tbaa !34
  %27 = fmul float %25, %26
  %28 = fdiv float %27, %16
  %29 = fadd float %25, %28
  br label %35

30:                                               ; preds = %6
  %31 = call float @llvm.fmuladd.f32(float %19, float %20, float %19)
  store float %31, ptr %0, align 4, !tbaa !34
  %32 = fmul float %5, 5.000000e-01
  %33 = load float, ptr %11, align 4, !tbaa !34
  %34 = call float @llvm.fmuladd.f32(float %32, float %33, float %32)
  br label %35

35:                                               ; preds = %30, %21
  %36 = phi float [ %34, %30 ], [ %29, %21 ]
  %37 = getelementptr inbounds float, ptr %0, i64 1
  store float %36, ptr %37, align 4, !tbaa !34
  %38 = fcmp ogt float %4, %5
  %39 = fsub float %4, %5
  %40 = fmul float %39, 5.000000e-01
  %41 = fsub float %5, %4
  %42 = fmul float %41, 5.000000e-01
  %43 = select i1 %38, float %4, float %5
  %44 = select i1 %38, float 0.000000e+00, float %42
  %45 = select i1 %38, float %40, float 0.000000e+00
  %46 = load float, ptr %0, align 4, !tbaa !34
  %47 = fadd float %44, %46
  %48 = fdiv float %47, %43
  store float %48, ptr %0, align 4, !tbaa !34
  %49 = getelementptr inbounds float, ptr %0, i64 1
  %50 = load float, ptr %49, align 4, !tbaa !34
  %51 = fadd float %45, %50
  %52 = fdiv float %51, %43
  store float %52, ptr %49, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @BLI_uvproject_camera_info(ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.ProjCameraInfo, align 4
  call void @llvm.lifetime.start.p0(i64 156, ptr nonnull %5) #7
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = getelementptr inbounds %struct.Camera, ptr %7, i64 0, i32 2
  %9 = load i8, ptr %8, align 8, !tbaa !57
  %10 = icmp eq i8 %9, 2
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.ProjCameraInfo, ptr %5, i64 0, i32 9
  store i8 %11, ptr %12, align 1, !tbaa !40
  %13 = icmp eq i8 %9, 0
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.ProjCameraInfo, ptr %5, i64 0, i32 8
  store i8 %14, ptr %15, align 4, !tbaa !41
  %16 = getelementptr inbounds %struct.Camera, ptr %7, i64 0, i32 8
  %17 = load float, ptr %16, align 8, !tbaa !59
  %18 = getelementptr inbounds %struct.Camera, ptr %7, i64 0, i32 11
  %19 = load float, ptr %18, align 4, !tbaa !60
  %20 = tail call float @focallength_to_fov(float noundef %17, float noundef %19) #7
  %21 = fmul float %20, 5.000000e-01
  store float %21, ptr %5, align 4, !tbaa !43
  %22 = load i8, ptr %15, align 4, !tbaa !41
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %4
  %25 = tail call float @tanf(float noundef %21) #7
  br label %29

26:                                               ; preds = %4
  %27 = getelementptr inbounds %struct.Camera, ptr %7, i64 0, i32 9
  %28 = load float, ptr %27, align 4, !tbaa !61
  br label %29

29:                                               ; preds = %26, %24
  %30 = phi float [ %25, %24 ], [ %28, %26 ]
  %31 = getelementptr inbounds %struct.ProjCameraInfo, ptr %5, i64 0, i32 1
  store float %30, ptr %31, align 4, !tbaa !42
  %32 = getelementptr inbounds %struct.ProjCameraInfo, ptr %5, i64 0, i32 7
  %33 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  call void @copy_m4_m4(ptr noundef nonnull %32, ptr noundef nonnull %33) #7
  call void @normalize_m4(ptr noundef nonnull %32) #7
  %34 = call zeroext i8 @invert_m4(ptr noundef nonnull %32) #7
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %69, label %36

36:                                               ; preds = %29
  %37 = icmp eq ptr %1, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.ProjCameraInfo, ptr %5, i64 0, i32 6
  call void @copy_m4_m4(ptr noundef nonnull %39, ptr noundef nonnull %1) #7
  br label %40

40:                                               ; preds = %36, %38
  %41 = phi i8 [ 1, %38 ], [ 0, %36 ]
  %42 = getelementptr inbounds %struct.ProjCameraInfo, ptr %5, i64 0, i32 10
  store i8 %41, ptr %42, align 2, !tbaa !38
  %43 = fcmp ogt float %2, %3
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.ProjCameraInfo, ptr %5, i64 0, i32 2
  store float 1.000000e+00, ptr %45, align 4, !tbaa !44
  %46 = fdiv float %2, %3
  br label %50

47:                                               ; preds = %40
  %48 = fdiv float %3, %2
  %49 = getelementptr inbounds %struct.ProjCameraInfo, ptr %5, i64 0, i32 2
  store float %48, ptr %49, align 4, !tbaa !44
  br label %50

50:                                               ; preds = %47, %44
  %51 = phi float [ 1.000000e+00, %47 ], [ %46, %44 ]
  %52 = getelementptr inbounds %struct.ProjCameraInfo, ptr %5, i64 0, i32 3
  store float %51, ptr %52, align 4, !tbaa !45
  %53 = getelementptr inbounds %struct.Camera, ptr %7, i64 0, i32 13
  %54 = load float, ptr %53, align 4, !tbaa !62
  %55 = getelementptr inbounds %struct.ProjCameraInfo, ptr %5, i64 0, i32 2
  %56 = load float, ptr %55, align 4, !tbaa !44
  %57 = fneg float %54
  %58 = call float @llvm.fmuladd.f32(float %57, float %56, float 5.000000e-01)
  %59 = getelementptr inbounds %struct.ProjCameraInfo, ptr %5, i64 0, i32 4
  store float %58, ptr %59, align 4, !tbaa !46
  %60 = getelementptr inbounds %struct.Camera, ptr %7, i64 0, i32 14
  %61 = load float, ptr %60, align 8, !tbaa !63
  %62 = getelementptr inbounds %struct.ProjCameraInfo, ptr %5, i64 0, i32 3
  %63 = load float, ptr %62, align 4, !tbaa !45
  %64 = fneg float %61
  %65 = call float @llvm.fmuladd.f32(float %64, float %63, float 5.000000e-01)
  %66 = getelementptr inbounds %struct.ProjCameraInfo, ptr %5, i64 0, i32 5
  store float %65, ptr %66, align 4, !tbaa !47
  %67 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !64
  %68 = call ptr %67(i64 noundef 156, ptr noundef nonnull @.str) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(156) %68, ptr noundef nonnull align 4 dereferenceable(156) %5, i64 156, i1 false), !tbaa.struct !65
  br label %69

69:                                               ; preds = %29, %50
  %70 = phi ptr [ %68, %50 ], [ null, %29 ]
  call void @llvm.lifetime.end.p0(i64 156, ptr nonnull %5) #7
  ret ptr %70
}

declare float @focallength_to_fov(float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @tanf(float noundef) local_unnamed_addr #3

declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @normalize_m4(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @invert_m4(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define dso_local void @BLI_uvproject_from_view_ortho(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #7
  call void @mul_v3_m4v3(ptr noundef nonnull %4, ptr noundef %2, ptr noundef %1) #7
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = fneg float %5
  store float %6, ptr %0, align 4, !tbaa !34
  %7 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #7
  ret void
}

declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BLI_uvproject_camera_info_scale(ptr nocapture noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.ProjCameraInfo, ptr %0, i64 0, i32 2
  %5 = load float, ptr %4, align 4, !tbaa !44
  %6 = fmul float %5, %1
  store float %6, ptr %4, align 4, !tbaa !44
  %7 = getelementptr inbounds %struct.ProjCameraInfo, ptr %0, i64 0, i32 3
  %8 = load float, ptr %7, align 4, !tbaa !45
  %9 = fmul float %8, %2
  store float %9, ptr %7, align 4, !tbaa !45
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"float", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !36, i64 154}
!39 = !{!"ProjCameraInfo", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !36, i64 24, !36, i64 88, !36, i64 152, !36, i64 153, !36, i64 154}
!40 = !{!39, !36, i64 153}
!41 = !{!39, !36, i64 152}
!42 = !{!39, !35, i64 4}
!43 = !{!39, !35, i64 0}
!44 = !{!39, !35, i64 8}
!45 = !{!39, !35, i64 12}
!46 = !{!39, !35, i64 16}
!47 = !{!39, !35, i64 20}
!48 = !{!49, !51, i64 296}
!49 = !{!"Object", !50, i64 0, !51, i64 120, !51, i64 128, !52, i64 136, !52, i64 138, !53, i64 140, !53, i64 144, !53, i64 148, !36, i64 152, !51, i64 216, !51, i64 224, !51, i64 232, !51, i64 240, !51, i64 248, !51, i64 256, !51, i64 264, !51, i64 272, !51, i64 280, !51, i64 288, !51, i64 296, !51, i64 304, !54, i64 312, !51, i64 360, !55, i64 368, !55, i64 384, !55, i64 400, !55, i64 416, !53, i64 432, !53, i64 436, !51, i64 440, !51, i64 448, !53, i64 456, !53, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !35, i64 616, !35, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !53, i64 944, !52, i64 948, !52, i64 950, !52, i64 952, !52, i64 954, !52, i64 956, !52, i64 958, !52, i64 960, !52, i64 962, !52, i64 964, !36, i64 966, !36, i64 967, !53, i64 968, !53, i64 972, !53, i64 976, !53, i64 980, !53, i64 984, !35, i64 988, !35, i64 992, !35, i64 996, !35, i64 1000, !35, i64 1004, !35, i64 1008, !35, i64 1012, !35, i64 1016, !35, i64 1020, !35, i64 1024, !35, i64 1028, !35, i64 1032, !52, i64 1036, !52, i64 1038, !52, i64 1040, !36, i64 1042, !36, i64 1043, !52, i64 1044, !36, i64 1046, !36, i64 1047, !35, i64 1048, !35, i64 1052, !55, i64 1056, !55, i64 1072, !55, i64 1088, !55, i64 1104, !35, i64 1120, !52, i64 1124, !52, i64 1126, !36, i64 1128, !53, i64 1144, !53, i64 1148, !51, i64 1152, !36, i64 1160, !36, i64 1161, !52, i64 1162, !36, i64 1164, !55, i64 1176, !55, i64 1192, !55, i64 1208, !55, i64 1224, !51, i64 1240, !51, i64 1248, !51, i64 1256, !36, i64 1264, !36, i64 1265, !52, i64 1266, !35, i64 1268, !51, i64 1272, !51, i64 1280, !51, i64 1288, !51, i64 1296, !56, i64 1304, !56, i64 1312, !53, i64 1320, !53, i64 1324, !55, i64 1328, !55, i64 1344, !51, i64 1360, !51, i64 1368, !51, i64 1376, !36, i64 1384, !51, i64 1392, !55, i64 1400, !51, i64 1416}
!50 = !{!"ID", !51, i64 0, !51, i64 8, !51, i64 16, !51, i64 24, !36, i64 32, !52, i64 98, !53, i64 100, !53, i64 104, !53, i64 108, !51, i64 112}
!51 = !{!"any pointer", !36, i64 0}
!52 = !{!"short", !36, i64 0}
!53 = !{!"int", !36, i64 0}
!54 = !{!"bAnimVizSettings", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !52, i64 16, !52, i64 18, !52, i64 20, !52, i64 22, !52, i64 24, !52, i64 26, !52, i64 28, !52, i64 30, !53, i64 32, !53, i64 36, !53, i64 40, !53, i64 44}
!55 = !{!"ListBase", !51, i64 0, !51, i64 8}
!56 = !{!"long", !36, i64 0}
!57 = !{!58, !36, i64 128}
!58 = !{!"Camera", !50, i64 0, !51, i64 120, !36, i64 128, !36, i64 129, !52, i64 130, !35, i64 132, !35, i64 136, !35, i64 140, !35, i64 144, !35, i64 148, !35, i64 152, !35, i64 156, !35, i64 160, !35, i64 164, !35, i64 168, !35, i64 172, !51, i64 176, !51, i64 184, !36, i64 192, !36, i64 193}
!59 = !{!58, !35, i64 144}
!60 = !{!58, !35, i64 156}
!61 = !{!58, !35, i64 148}
!62 = !{!58, !35, i64 164}
!63 = !{!58, !35, i64 168}
!64 = !{!51, !51, i64 0}
!65 = !{i64 0, i64 4, !34, i64 4, i64 4, !34, i64 8, i64 4, !34, i64 12, i64 4, !34, i64 16, i64 4, !34, i64 20, i64 4, !34, i64 24, i64 64, !66, i64 88, i64 64, !66, i64 152, i64 1, !66, i64 153, i64 1, !66, i64 154, i64 1, !66}
!66 = !{!36, !36, i64 0}
