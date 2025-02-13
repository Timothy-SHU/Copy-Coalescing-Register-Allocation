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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_uvproject_from_camera(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4 x float], align 16
  %5 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef %1) #10
  %6 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 3
  store float 1.000000e+00, ptr %6, align 4, !tbaa !34
  %7 = getelementptr inbounds %struct.ProjCameraInfo, ptr %2, i64 0, i32 10
  %8 = load i8, ptr %7, align 2, !tbaa !38
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.ProjCameraInfo, ptr %2, i64 0, i32 6
  call void @mul_m4_v4(ptr noundef nonnull %11, ptr noundef nonnull %4) #11
  br label %12

12:                                               ; preds = %10, %3
  %13 = getelementptr inbounds %struct.ProjCameraInfo, ptr %2, i64 0, i32 7
  call void @mul_m4_v4(ptr noundef nonnull %13, ptr noundef nonnull %4) #11
  %14 = getelementptr inbounds %struct.ProjCameraInfo, ptr %2, i64 0, i32 9
  %15 = load i8, ptr %14, align 1, !tbaa !40
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %50, label %17

17:                                               ; preds = %12
  %18 = load float, ptr %4, align 16, !tbaa !34
  %19 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 2
  %20 = load float, ptr %19, align 8, !tbaa !34
  %21 = fneg float %20
  %22 = call float @atan2f(float noundef %18, float noundef %21) #11
  %23 = fdiv float %22, 0x401921FB60000000
  %24 = getelementptr inbounds %struct.ProjCameraInfo, ptr %2, i64 0, i32 8
  %25 = load i8, ptr %24, align 4, !tbaa !41
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %17
  store float %23, ptr %0, align 4, !tbaa !34
  %28 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !34
  %30 = getelementptr inbounds %struct.ProjCameraInfo, ptr %2, i64 0, i32 1
  %31 = load float, ptr %30, align 4, !tbaa !42
  %32 = fdiv float %29, %31
  %33 = getelementptr inbounds float, ptr %0, i64 1
  store float %32, ptr %33, align 4, !tbaa !34
  br label %85

34:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  %35 = load float, ptr %4, align 16, !tbaa !34
  store float %35, ptr %5, align 4, !tbaa !34
  %36 = load float, ptr %19, align 8, !tbaa !34
  %37 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  store float %36, ptr %37, align 4, !tbaa !34
  %38 = load float, ptr %2, align 4, !tbaa !43
  %39 = fdiv float 0x400921FB60000000, %38
  %40 = fmul float %23, %39
  store float %40, ptr %0, align 4, !tbaa !34
  %41 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 1
  %42 = load float, ptr %41, align 4, !tbaa !34
  %43 = call fastcc float @len_v2(ptr noundef nonnull %5) #10
  %44 = getelementptr inbounds %struct.ProjCameraInfo, ptr %2, i64 0, i32 1
  %45 = load float, ptr %44, align 4, !tbaa !42
  %46 = fmul float %45, 2.000000e+00
  %47 = fmul float %43, %46
  %48 = fdiv float %42, %47
  %49 = getelementptr inbounds float, ptr %0, i64 1
  store float %48, ptr %49, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %85

50:                                               ; preds = %12
  %51 = getelementptr inbounds %struct.ProjCameraInfo, ptr %2, i64 0, i32 8
  %52 = load i8, ptr %51, align 4, !tbaa !41
  %53 = icmp eq i8 %52, 0
  %54 = load float, ptr %4, align 16, !tbaa !34
  br i1 %53, label %55, label %64

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.ProjCameraInfo, ptr %2, i64 0, i32 1
  %57 = load float, ptr %56, align 4, !tbaa !42
  %58 = fdiv float %54, %57
  store float %58, ptr %0, align 4, !tbaa !34
  %59 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 1
  %60 = load float, ptr %59, align 4, !tbaa !34
  %61 = load float, ptr %56, align 4, !tbaa !42
  %62 = fdiv float %60, %61
  %63 = getelementptr inbounds float, ptr %0, i64 1
  store float %62, ptr %63, align 4, !tbaa !34
  br label %85

64:                                               ; preds = %50
  %65 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 2
  %66 = load float, ptr %65, align 8, !tbaa !34
  %67 = fcmp oeq float %66, 0.000000e+00
  %68 = select i1 %67, float 0x3EE4F8B580000000, float %66
  %69 = fneg float %54
  %70 = getelementptr inbounds %struct.ProjCameraInfo, ptr %2, i64 0, i32 1
  %71 = load float, ptr %70, align 4, !tbaa !42
  %72 = fdiv float 1.000000e+00, %71
  %73 = fdiv float %72, %68
  %74 = fmul float %73, %69
  %75 = fmul float %74, 5.000000e-01
  store float %75, ptr %0, align 4, !tbaa !34
  %76 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 1
  %77 = load float, ptr %76, align 4, !tbaa !34
  %78 = fneg float %77
  %79 = load float, ptr %70, align 4, !tbaa !42
  %80 = fdiv float 1.000000e+00, %79
  %81 = fdiv float %80, %68
  %82 = fmul float %81, %78
  %83 = fmul float %82, 5.000000e-01
  %84 = getelementptr inbounds float, ptr %0, i64 1
  store float %83, ptr %84, align 4, !tbaa !34
  br label %85

85:                                               ; preds = %27, %34, %55, %64
  %86 = phi float [ %32, %27 ], [ %48, %34 ], [ %62, %55 ], [ %83, %64 ]
  %87 = phi float [ %23, %27 ], [ %40, %34 ], [ %58, %55 ], [ %75, %64 ]
  %88 = getelementptr inbounds %struct.ProjCameraInfo, ptr %2, i64 0, i32 2
  %89 = load float, ptr %88, align 4, !tbaa !44
  %90 = fmul float %89, %87
  store float %90, ptr %0, align 4, !tbaa !34
  %91 = getelementptr inbounds %struct.ProjCameraInfo, ptr %2, i64 0, i32 3
  %92 = load float, ptr %91, align 4, !tbaa !45
  %93 = getelementptr inbounds float, ptr %0, i64 1
  %94 = fmul float %92, %86
  store float %94, ptr %93, align 4, !tbaa !34
  %95 = getelementptr inbounds %struct.ProjCameraInfo, ptr %2, i64 0, i32 4
  %96 = load float, ptr %95, align 4, !tbaa !46
  %97 = fadd float %90, %96
  store float %97, ptr %0, align 4, !tbaa !34
  %98 = getelementptr inbounds %struct.ProjCameraInfo, ptr %2, i64 0, i32 5
  %99 = load float, ptr %98, align 4, !tbaa !47
  %100 = fadd float %94, %99
  store float %100, ptr %93, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !PGOFuncName !48 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  store float %3, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !34
  ret void
}

; Function Attrs: optsize
declare void @mul_m4_v4(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_v2(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !49 {
  %2 = load float, ptr %0, align 4, !tbaa !34
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !34
  %5 = fmul float %4, %4
  %6 = tail call float @llvm.fmuladd.f32(float %2, float %2, float %5)
  %7 = tail call float @llvm.sqrt.f32(float %6)
  ret float %7
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_uvproject_from_view(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, float noundef %4, float noundef %5) local_unnamed_addr #0 {
  %7 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #9
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef %1) #10
  %8 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 3
  store float 1.000000e+00, ptr %8, align 4, !tbaa !34
  call void @mul_m4_v4(ptr noundef %3, ptr noundef nonnull %7) #11
  call void @mul_m4_v4(ptr noundef %2, ptr noundef nonnull %7) #11
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = call float @llvm.fabs.f32(float %9)
  %11 = fcmp ogt float %10, 0x3EE4F8B580000000
  %12 = fmul float %4, 5.000000e-01
  %13 = load float, ptr %7, align 16, !tbaa !34
  br i1 %11, label %14, label %27

14:                                               ; preds = %6
  %15 = fmul float %5, 5.000000e-01
  %16 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = insertelement <2 x float> poison, float %12, i64 0
  %19 = insertelement <2 x float> %18, float %15, i64 1
  %20 = insertelement <2 x float> poison, float %13, i64 0
  %21 = insertelement <2 x float> %20, float %17, i64 1
  %22 = fmul <2 x float> %19, %21
  %23 = insertelement <2 x float> poison, float %9, i64 0
  %24 = shufflevector <2 x float> %23, <2 x float> poison, <2 x i32> zeroinitializer
  %25 = fdiv <2 x float> %22, %24
  %26 = fadd <2 x float> %19, %25
  br label %36

27:                                               ; preds = %6
  %28 = fmul float %5, 5.000000e-01
  %29 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !34
  %31 = insertelement <2 x float> poison, float %12, i64 0
  %32 = insertelement <2 x float> %31, float %28, i64 1
  %33 = insertelement <2 x float> poison, float %13, i64 0
  %34 = insertelement <2 x float> %33, float %30, i64 1
  %35 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %32, <2 x float> %34, <2 x float> %32)
  br label %36

36:                                               ; preds = %27, %14
  %37 = phi <2 x float> [ %26, %14 ], [ %35, %27 ]
  %38 = fcmp ogt float %4, %5
  %39 = fsub float %4, %5
  %40 = fmul float %39, 5.000000e-01
  %41 = fsub float %5, %4
  %42 = fmul float %41, 5.000000e-01
  %43 = select i1 %38, float %4, float %5
  %44 = insertelement <2 x i1> poison, i1 %38, i64 0
  %45 = shufflevector <2 x i1> %44, <2 x i1> poison, <2 x i32> zeroinitializer
  %46 = insertelement <2 x float> <float 0.000000e+00, float poison>, float %40, i64 1
  %47 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %42, i64 0
  %48 = select <2 x i1> %45, <2 x float> %46, <2 x float> %47
  %49 = fadd <2 x float> %48, %37
  %50 = insertelement <2 x float> poison, float %43, i64 0
  %51 = shufflevector <2 x float> %50, <2 x float> poison, <2 x i32> zeroinitializer
  %52 = fdiv <2 x float> %49, %51
  store <2 x float> %52, ptr %0, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BLI_uvproject_camera_info(ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.ProjCameraInfo, align 4
  call void @llvm.lifetime.start.p0(i64 156, ptr nonnull %5) #9
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  %8 = getelementptr inbounds %struct.Camera, ptr %7, i64 0, i32 2
  %9 = load i8, ptr %8, align 8, !tbaa !59
  %10 = icmp eq i8 %9, 2
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.ProjCameraInfo, ptr %5, i64 0, i32 9
  store i8 %11, ptr %12, align 1, !tbaa !40
  %13 = icmp eq i8 %9, 0
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.ProjCameraInfo, ptr %5, i64 0, i32 8
  store i8 %14, ptr %15, align 4, !tbaa !41
  %16 = getelementptr inbounds %struct.Camera, ptr %7, i64 0, i32 8
  %17 = load float, ptr %16, align 8, !tbaa !61
  %18 = getelementptr inbounds %struct.Camera, ptr %7, i64 0, i32 11
  %19 = load float, ptr %18, align 4, !tbaa !62
  %20 = tail call float @focallength_to_fov(float noundef %17, float noundef %19) #11
  %21 = fmul float %20, 5.000000e-01
  store float %21, ptr %5, align 4, !tbaa !43
  br i1 %13, label %22, label %24

22:                                               ; preds = %4
  %23 = tail call float @tanf(float noundef %21) #11
  br label %27

24:                                               ; preds = %4
  %25 = getelementptr inbounds %struct.Camera, ptr %7, i64 0, i32 9
  %26 = load float, ptr %25, align 4, !tbaa !63
  br label %27

27:                                               ; preds = %24, %22
  %28 = phi float [ %23, %22 ], [ %26, %24 ]
  %29 = getelementptr inbounds %struct.ProjCameraInfo, ptr %5, i64 0, i32 1
  store float %28, ptr %29, align 4, !tbaa !42
  %30 = getelementptr inbounds %struct.ProjCameraInfo, ptr %5, i64 0, i32 7
  %31 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  call void @copy_m4_m4(ptr noundef nonnull %30, ptr noundef nonnull %31) #11
  call void @normalize_m4(ptr noundef nonnull %30) #11
  %32 = call zeroext i8 @invert_m4(ptr noundef nonnull %30) #11
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %57, label %34

34:                                               ; preds = %27
  %35 = icmp eq ptr %1, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.ProjCameraInfo, ptr %5, i64 0, i32 6
  call void @copy_m4_m4(ptr noundef nonnull %37, ptr noundef nonnull %1) #11
  br label %38

38:                                               ; preds = %34, %36
  %39 = phi i8 [ 1, %36 ], [ 0, %34 ]
  %40 = getelementptr inbounds %struct.ProjCameraInfo, ptr %5, i64 0, i32 10
  store i8 %39, ptr %40, align 2
  %41 = fcmp ogt float %2, %3
  %42 = fdiv float %2, %3
  %43 = fdiv float %3, %2
  %44 = getelementptr inbounds %struct.ProjCameraInfo, ptr %5, i64 0, i32 2
  %45 = getelementptr inbounds %struct.Camera, ptr %7, i64 0, i32 13
  %46 = getelementptr inbounds %struct.ProjCameraInfo, ptr %5, i64 0, i32 4
  %47 = insertelement <2 x i1> poison, i1 %41, i64 0
  %48 = shufflevector <2 x i1> %47, <2 x i1> poison, <2 x i32> zeroinitializer
  %49 = insertelement <2 x float> <float 1.000000e+00, float poison>, float %42, i64 1
  %50 = insertelement <2 x float> <float poison, float 1.000000e+00>, float %43, i64 0
  %51 = select <2 x i1> %48, <2 x float> %49, <2 x float> %50
  store <2 x float> %51, ptr %44, align 4
  %52 = load <2 x float>, ptr %45, align 4, !tbaa !34
  %53 = fneg <2 x float> %52
  %54 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %53, <2 x float> %51, <2 x float> <float 5.000000e-01, float 5.000000e-01>)
  store <2 x float> %54, ptr %46, align 4, !tbaa !34
  %55 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !64
  %56 = call ptr %55(i64 noundef 156, ptr noundef nonnull @.str) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(156) %56, ptr noundef nonnull align 4 dereferenceable(156) %5, i64 156, i1 false), !tbaa.struct !65
  br label %57

57:                                               ; preds = %27, %38
  %58 = phi ptr [ %56, %38 ], [ null, %27 ]
  call void @llvm.lifetime.end.p0(i64 156, ptr nonnull %5) #9
  ret ptr %58
}

; Function Attrs: optsize
declare float @focallength_to_fov(float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @tanf(float noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @normalize_m4(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @invert_m4(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_uvproject_from_view_ortho(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  call void @mul_v3_m4v3(ptr noundef nonnull %4, ptr noundef %2, ptr noundef %1) #11
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = fneg float %5
  store float %6, ptr %0, align 4, !tbaa !34
  %7 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  ret void
}

; Function Attrs: optsize
declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BLI_uvproject_camera_info_scale(ptr nocapture noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.ProjCameraInfo, ptr %0, i64 0, i32 2
  %5 = load <2 x float>, ptr %4, align 4, !tbaa !34
  %6 = insertelement <2 x float> poison, float %1, i64 0
  %7 = insertelement <2 x float> %6, float %2, i64 1
  %8 = fmul <2 x float> %5, %7
  store <2 x float> %8, ptr %4, align 4, !tbaa !34
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #8

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { optsize }
attributes #11 = { nounwind optsize }

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
!48 = !{!"uvproject.c:copy_v3_v3"}
!49 = !{!"uvproject.c:len_v2"}
!50 = !{!51, !53, i64 296}
!51 = !{!"Object", !52, i64 0, !53, i64 120, !53, i64 128, !54, i64 136, !54, i64 138, !55, i64 140, !55, i64 144, !55, i64 148, !36, i64 152, !53, i64 216, !53, i64 224, !53, i64 232, !53, i64 240, !53, i64 248, !53, i64 256, !53, i64 264, !53, i64 272, !53, i64 280, !53, i64 288, !53, i64 296, !53, i64 304, !56, i64 312, !53, i64 360, !57, i64 368, !57, i64 384, !57, i64 400, !57, i64 416, !55, i64 432, !55, i64 436, !53, i64 440, !53, i64 448, !55, i64 456, !55, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !35, i64 616, !35, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !55, i64 944, !54, i64 948, !54, i64 950, !54, i64 952, !54, i64 954, !54, i64 956, !54, i64 958, !54, i64 960, !54, i64 962, !54, i64 964, !36, i64 966, !36, i64 967, !55, i64 968, !55, i64 972, !55, i64 976, !55, i64 980, !55, i64 984, !35, i64 988, !35, i64 992, !35, i64 996, !35, i64 1000, !35, i64 1004, !35, i64 1008, !35, i64 1012, !35, i64 1016, !35, i64 1020, !35, i64 1024, !35, i64 1028, !35, i64 1032, !54, i64 1036, !54, i64 1038, !54, i64 1040, !36, i64 1042, !36, i64 1043, !54, i64 1044, !36, i64 1046, !36, i64 1047, !35, i64 1048, !35, i64 1052, !57, i64 1056, !57, i64 1072, !57, i64 1088, !57, i64 1104, !35, i64 1120, !54, i64 1124, !54, i64 1126, !36, i64 1128, !55, i64 1144, !55, i64 1148, !53, i64 1152, !36, i64 1160, !36, i64 1161, !54, i64 1162, !36, i64 1164, !57, i64 1176, !57, i64 1192, !57, i64 1208, !57, i64 1224, !53, i64 1240, !53, i64 1248, !53, i64 1256, !36, i64 1264, !36, i64 1265, !54, i64 1266, !35, i64 1268, !53, i64 1272, !53, i64 1280, !53, i64 1288, !53, i64 1296, !58, i64 1304, !58, i64 1312, !55, i64 1320, !55, i64 1324, !57, i64 1328, !57, i64 1344, !53, i64 1360, !53, i64 1368, !53, i64 1376, !36, i64 1384, !53, i64 1392, !57, i64 1400, !53, i64 1416}
!52 = !{!"ID", !53, i64 0, !53, i64 8, !53, i64 16, !53, i64 24, !36, i64 32, !54, i64 98, !55, i64 100, !55, i64 104, !55, i64 108, !53, i64 112}
!53 = !{!"any pointer", !36, i64 0}
!54 = !{!"short", !36, i64 0}
!55 = !{!"int", !36, i64 0}
!56 = !{!"bAnimVizSettings", !55, i64 0, !55, i64 4, !55, i64 8, !55, i64 12, !54, i64 16, !54, i64 18, !54, i64 20, !54, i64 22, !54, i64 24, !54, i64 26, !54, i64 28, !54, i64 30, !55, i64 32, !55, i64 36, !55, i64 40, !55, i64 44}
!57 = !{!"ListBase", !53, i64 0, !53, i64 8}
!58 = !{!"long", !36, i64 0}
!59 = !{!60, !36, i64 128}
!60 = !{!"Camera", !52, i64 0, !53, i64 120, !36, i64 128, !36, i64 129, !54, i64 130, !35, i64 132, !35, i64 136, !35, i64 140, !35, i64 144, !35, i64 148, !35, i64 152, !35, i64 156, !35, i64 160, !35, i64 164, !35, i64 168, !35, i64 172, !53, i64 176, !53, i64 184, !36, i64 192, !36, i64 193}
!61 = !{!60, !35, i64 144}
!62 = !{!60, !35, i64 156}
!63 = !{!60, !35, i64 148}
!64 = !{!53, !53, i64 0}
!65 = !{i64 0, i64 4, !34, i64 4, i64 4, !34, i64 8, i64 4, !34, i64 12, i64 4, !34, i64 16, i64 4, !34, i64 20, i64 4, !34, i64 24, i64 64, !66, i64 88, i64 64, !66, i64 152, i64 1, !66, i64 153, i64 1, !66, i64 154, i64 1, !66}
!66 = !{!36, !36, i64 0}
