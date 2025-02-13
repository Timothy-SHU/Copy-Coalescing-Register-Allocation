; ModuleID = 'blender/source/blender/render/intern/source/volumetric.c'
source_filename = "blender/source/blender/render/intern/source/volumetric.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Render = type { ptr, ptr, [74 x i8], i32, i16, i16, i16, i16, i8, ptr, ptr, %struct.ListBase, i32, i32, i32, %struct.rcti, %struct.rctf, float, float, float, i32, i32, i32, i32, float, float, float, float, float, float, [3 x float], [3 x [3 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], float, float, ptr, [32 x [2 x float]], [32 x [2 x float]], ptr, [1 x i32], ptr, ptr, %struct.RenderData, %struct.World, ptr, i32, i32, %struct.ListBase, ptr, ptr, ptr, ptr, float, ptr, %struct.ListBase, float, float, i32, i32, i32, i32, i32, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, %struct.ListBase, i32, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.RenderStats, ptr, ptr, ptr }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.rctf = type { float, float, float, float }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.ColorManagedViewSettings = type { i32, i32, [64 x i8], [64 x i8], float, float, ptr, ptr }
%struct.ColorManagedDisplaySettings = type { [64 x i8] }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.BakeData = type { %struct.ImageFormatData, [1024 x i8], i16, i16, i16, i16, float, float, [3 x i8], i8, i8, [3 x i8], [64 x i8] }
%struct.World = type { %struct.ID, ptr, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, [18 x ptr], i16, i16, [2 x i16], ptr, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.RenderStats = type { i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, double, double, ptr, ptr, [64 x i8], float, float }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.ShadeInput = type { ptr, ptr, ptr, ptr, ptr, i32, [3 x float], i16, ptr, ptr, ptr, i16, i16, i16, i16, i16, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, float, float, float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], float, [3 x float], [3 x float], [4 x float], float, [4 x float], [3 x float], [3 x float], [8 x %struct.ShadeInputUV], [8 x %struct.ShadeInputCol], i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, [3 x float], [3 x float], [3 x float], i32, i32, i32, [3 x float], i32, i32, i32, [3 x float], float, i8, i8, i16, i16, i16, i32, i32, i32, i32, ptr, ptr }
%struct.ShadeInputUV = type { [3 x float], [3 x float], [3 x float], ptr }
%struct.ShadeInputCol = type { [4 x float], ptr }
%struct.ObjectInstanceRen = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [4 x [4 x float]], [4 x [4 x float]], [3 x [3 x float]], i16, [3 x float], [2 x float], ptr, ptr, ptr, i32, ptr, i32 }
%struct.ObjectRen = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, [2 x [3 x float]], i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [4 x [4 x float]], ptr, ptr, ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.MetaBall = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, i16, i16, [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.MetaElem = type { ptr, ptr, ptr, i16, i16, i16, i16, float, float, float, [4 x float], float, float, float, float, float, float, float, ptr, ptr }
%struct.GroupObject = type { ptr, ptr, ptr, ptr, i16, [6 x i8] }
%struct.Isect = type { [3 x float], [3 x float], float, [3 x float], [3 x float], [6 x i32], [3 x float], i32, i32, i32, i32, ptr, float, float, i32, %struct.anon, %struct.anon, ptr, ptr }
%struct.anon = type { ptr, ptr }
%struct.LampRen = type { ptr, ptr, float, float, float, [3 x float], i16, i32, float, float, float, float, float, float, float, float, float, i32, float, float, [3 x float], float, float, float, float, float, float, i16, float, float, ptr, i16, i16, float, i16, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, [1 x i16], [1 x i16], float, float, float, float, ptr, ptr, ptr, [3 x [3 x float]], float, [3 x float], float, [4 x [4 x float]], [3 x [3 x float]], [8 x [3 x float]], float, ptr, [1 x ptr], [18 x ptr], i32, i32 }
%struct.VlakRen = type { ptr, ptr, ptr, ptr, [3 x float], ptr, i8, i8, i8, i32 }
%struct.ShadeResult = type { [4 x float], [4 x float], float, float, float, [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float] }
%struct.MatInside = type { ptr, ptr, ptr, ptr }
%struct.VolumePrecache = type { [3 x i32], ptr, ptr, ptr, ptr, ptr }

@R = external global %struct.Render, align 8
@__const.volumeintegrate.tr = private unnamed_addr constant [3 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00], align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @vol_get_density(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 27
  %6 = load float, ptr %5, align 8, !tbaa !42
  store float %6, ptr %3, align 4, !tbaa !48
  %7 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 27, i32 7
  %8 = load float, ptr %7, align 4, !tbaa !49
  %9 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 125
  %10 = load i32, ptr %9, align 8, !tbaa !50
  %11 = and i32 %10, 128
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  call void @do_volume_tex(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 128, ptr noundef null, ptr noundef nonnull %3, ptr noundef nonnull @R) #13
  br label %14

14:                                               ; preds = %13, %2
  %15 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !51
  %17 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !52
  %19 = getelementptr inbounds %struct.ObjectRen, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !54
  %21 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 3
  %22 = load i16, ptr %21, align 8, !tbaa !56
  %23 = icmp eq i16 %22, 5
  br i1 %23, label %26, label %24

24:                                               ; preds = %14
  %25 = load float, ptr %3, align 4, !tbaa !48
  br label %32

26:                                               ; preds = %14
  %27 = call fastcc float @metadensity(ptr noundef nonnull %20, ptr noundef %1) #14
  %28 = fcmp olt float %27, 1.000000e+00
  %29 = load float, ptr %3, align 4, !tbaa !48
  br i1 %28, label %30, label %32

30:                                               ; preds = %26
  %31 = fmul float %27, %29
  br label %32

32:                                               ; preds = %24, %26, %30
  %33 = phi float [ %25, %24 ], [ %29, %26 ], [ %31, %30 ]
  %34 = fmul float %8, %33
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret float %34
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @do_volume_tex(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @metadensity(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !60 {
  %3 = alloca [4 x [4 x float]], align 16
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [3 x float], align 8
  %6 = alloca [3 x [3 x float]], align 16
  %7 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #12
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #12
  %10 = load <2 x float>, ptr %1, align 4, !tbaa !48
  store <2 x float> %10, ptr %5, align 8, !tbaa !48
  %11 = getelementptr inbounds float, ptr %5, i64 2
  %12 = getelementptr inbounds float, ptr %1, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !48
  store float %13, ptr %11, align 8, !tbaa !48
  %14 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %3, ptr noundef nonnull getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 32), ptr noundef nonnull %14) #13
  %15 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %4, ptr noundef nonnull %3) #13
  call void @mul_m4_v3(ptr noundef nonnull %4, ptr noundef nonnull %5) #13
  %16 = getelementptr inbounds %struct.MetaBall, ptr %9, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !62
  %18 = icmp eq ptr %17, null
  br i1 %18, label %112, label %19

19:                                               ; preds = %2
  %20 = getelementptr inbounds float, ptr %7, i64 1
  %21 = getelementptr inbounds float, ptr %7, i64 2
  br label %22

22:                                               ; preds = %19, %108
  %23 = phi ptr [ %17, %19 ], [ %110, %108 ]
  %24 = phi float [ 0.000000e+00, %19 ], [ %109, %108 ]
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #12
  %25 = getelementptr inbounds %struct.MetaElem, ptr %23, i64 0, i32 7
  %26 = load <2 x float>, ptr %25, align 8, !tbaa !48
  %27 = load <2 x float>, ptr %5, align 8, !tbaa !48
  %28 = fsub <2 x float> %26, %27
  store <2 x float> %28, ptr %7, align 8, !tbaa !48
  %29 = getelementptr inbounds %struct.MetaElem, ptr %23, i64 0, i32 9
  %30 = load float, ptr %29, align 8, !tbaa !63
  %31 = load float, ptr %11, align 8, !tbaa !48
  %32 = fsub float %30, %31
  store float %32, ptr %21, align 8, !tbaa !48
  %33 = getelementptr inbounds %struct.MetaElem, ptr %23, i64 0, i32 10
  call void @quat_to_mat3(ptr noundef nonnull %6, ptr noundef nonnull %33) #13
  call void @transpose_m3(ptr noundef nonnull %6) #13
  call void @mul_m3_v3(ptr noundef nonnull %6, ptr noundef nonnull %7) #13
  %34 = getelementptr inbounds %struct.MetaElem, ptr %23, i64 0, i32 3
  %35 = load i16, ptr %34, align 8, !tbaa !65
  switch i16 %35, label %87 [
    i16 6, label %36
    i16 7, label %45
    i16 5, label %59
    i16 4, label %73
  ]

36:                                               ; preds = %22
  %37 = getelementptr inbounds %struct.MetaElem, ptr %23, i64 0, i32 11
  %38 = load <2 x float>, ptr %37, align 4, !tbaa !48
  %39 = load <2 x float>, ptr %7, align 8, !tbaa !48
  %40 = fdiv <2 x float> %39, %38
  store <2 x float> %40, ptr %7, align 8, !tbaa !48
  %41 = getelementptr inbounds %struct.MetaElem, ptr %23, i64 0, i32 13
  %42 = load float, ptr %41, align 4, !tbaa !66
  %43 = load float, ptr %21, align 8, !tbaa !48
  %44 = fdiv float %43, %42
  store float %44, ptr %21, align 8, !tbaa !48
  br label %87

45:                                               ; preds = %22
  %46 = load float, ptr %21, align 8, !tbaa !48
  %47 = getelementptr inbounds %struct.MetaElem, ptr %23, i64 0, i32 13
  %48 = load float, ptr %47, align 4, !tbaa !66
  %49 = fcmp ogt float %46, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = fsub float %46, %48
  br label %57

52:                                               ; preds = %45
  %53 = fneg float %48
  %54 = fcmp olt float %46, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = fadd float %46, %48
  br label %57

57:                                               ; preds = %55, %52, %50
  %58 = phi float [ %51, %50 ], [ %56, %55 ], [ 0.000000e+00, %52 ]
  store float %58, ptr %21, align 8, !tbaa !48
  br label %59

59:                                               ; preds = %22, %57
  %60 = load float, ptr %20, align 4, !tbaa !48
  %61 = getelementptr inbounds %struct.MetaElem, ptr %23, i64 0, i32 12
  %62 = load float, ptr %61, align 8, !tbaa !67
  %63 = fcmp ogt float %60, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = fsub float %60, %62
  br label %71

66:                                               ; preds = %59
  %67 = fneg float %62
  %68 = fcmp olt float %60, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = fadd float %60, %62
  br label %71

71:                                               ; preds = %69, %66, %64
  %72 = phi float [ %65, %64 ], [ %70, %69 ], [ 0.000000e+00, %66 ]
  store float %72, ptr %20, align 4, !tbaa !48
  br label %73

73:                                               ; preds = %22, %71
  %74 = load float, ptr %7, align 8, !tbaa !48
  %75 = getelementptr inbounds %struct.MetaElem, ptr %23, i64 0, i32 11
  %76 = load float, ptr %75, align 4, !tbaa !68
  %77 = fcmp ogt float %74, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = fsub float %74, %76
  br label %85

80:                                               ; preds = %73
  %81 = fneg float %76
  %82 = fcmp olt float %74, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = fadd float %74, %76
  br label %85

85:                                               ; preds = %83, %80, %78
  %86 = phi float [ %79, %78 ], [ %84, %83 ], [ 0.000000e+00, %80 ]
  store float %86, ptr %7, align 8, !tbaa !48
  br label %87

87:                                               ; preds = %85, %22, %36
  %88 = call fastcc float @dot_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %7) #14
  %89 = getelementptr inbounds %struct.MetaElem, ptr %23, i64 0, i32 14
  %90 = load float, ptr %89, align 8, !tbaa !69
  %91 = fmul float %90, %90
  %92 = fdiv float %88, %91
  %93 = fsub float 1.000000e+00, %92
  %94 = fcmp ogt float %93, 0.000000e+00
  br i1 %94, label %95, label %108

95:                                               ; preds = %87
  %96 = getelementptr inbounds %struct.MetaElem, ptr %23, i64 0, i32 4
  %97 = load i16, ptr %96, align 2, !tbaa !70
  %98 = and i16 %97, 2
  %99 = icmp eq i16 %98, 0
  %100 = getelementptr inbounds %struct.MetaElem, ptr %23, i64 0, i32 16
  %101 = load float, ptr %100, align 8, !tbaa !71
  %102 = fneg float %101
  %103 = select i1 %99, float %101, float %102
  %104 = fmul float %93, %103
  %105 = fmul float %93, %104
  %106 = fmul float %93, %105
  %107 = fadd float %24, %106
  br label %108

108:                                              ; preds = %95, %87
  %109 = phi float [ %107, %95 ], [ %24, %87 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #12
  %110 = load ptr, ptr %23, align 8, !tbaa !62
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %22, !llvm.loop !72

112:                                              ; preds = %108, %2
  %113 = phi float [ 0.000000e+00, %2 ], [ %109, %108 ]
  %114 = getelementptr inbounds %struct.MetaBall, ptr %9, i64 0, i32 17
  %115 = load float, ptr %114, align 4, !tbaa !74
  %116 = fsub float %113, %115
  %117 = fcmp olt float %116, 0.000000e+00
  %118 = select i1 %117, float 0.000000e+00, float %116
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #12
  ret float %118
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @vol_get_scattering(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = alloca [3 x float], align 4
  tail call fastcc void @zero_v3(ptr noundef %1) #14
  %6 = tail call ptr @get_lights(ptr noundef %0) #13
  %7 = load ptr, ptr %6, align 8, !tbaa !62
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %4, %15
  %10 = phi ptr [ %16, %15 ], [ %7, %4 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i64 12, i1 false)
  %11 = getelementptr inbounds %struct.GroupObject, ptr %10, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !76
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  call fastcc void @vol_shade_one_lamp(ptr noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %12, ptr noundef nonnull %5) #14
  call fastcc void @add_v3_v3(ptr noundef %1, ptr noundef nonnull %5) #14
  br label %15

15:                                               ; preds = %14, %9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #12
  %16 = load ptr, ptr %10, align 8, !tbaa !62
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %9, !llvm.loop !78

18:                                               ; preds = %15, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #3 !PGOFuncName !79 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !48
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !48
  ret void
}

; Function Attrs: optsize
declare ptr @get_lights(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vol_shade_one_lamp(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !PGOFuncName !80 {
  %6 = alloca [3 x float], align 4
  %7 = alloca float, align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 8
  %11 = alloca %struct.Isect, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %8, ptr noundef nonnull align 4 dereferenceable(12) @__const.volumeintegrate.tr, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #12
  %12 = getelementptr inbounds %struct.LampRen, ptr %3, i64 0, i32 7
  %13 = load i32, ptr %12, align 4, !tbaa !81
  %14 = and i32 %13, 4
  %15 = icmp eq i32 %14, 0
  %16 = getelementptr inbounds %struct.LampRen, ptr %3, i64 0, i32 17
  %17 = load i32, ptr %16, align 4, !tbaa !83
  br i1 %15, label %25, label %18

18:                                               ; preds = %5
  %19 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !51
  %21 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %20, i64 0, i32 7
  %22 = load i32, ptr %21, align 8, !tbaa !84
  %23 = and i32 %22, %17
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %110, label %25

25:                                               ; preds = %5, %18
  %26 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 117
  %27 = load i32, ptr %26, align 8, !tbaa !85
  %28 = and i32 %27, %17
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %110, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.LampRen, ptr %3, i64 0, i32 15
  %32 = load float, ptr %31, align 4, !tbaa !86
  %33 = fcmp oeq float %32, 0.000000e+00
  br i1 %33, label %110, label %34

34:                                               ; preds = %30
  %35 = call float @lamp_get_visibility(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %7) #13
  %36 = fcmp oeq float %35, 0.000000e+00
  br i1 %36, label %110, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.LampRen, ptr %3, i64 0, i32 8
  call fastcc void @copy_v3_v3(ptr noundef %4, ptr noundef nonnull %38) #14
  %39 = load i32, ptr %12, align 4, !tbaa !81
  %40 = and i32 %39, 256
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 15
  store i16 0, ptr %43, align 8, !tbaa !87
  call void @do_lamp_tex(ptr noundef nonnull %3, ptr noundef nonnull %6, ptr noundef nonnull %0, ptr noundef %4, i32 noundef 256) #13
  br label %44

44:                                               ; preds = %42, %37
  call fastcc void @mul_v3_fl(ptr noundef %4, float noundef %35) #14
  %45 = getelementptr inbounds %struct.LampRen, ptr %3, i64 0, i32 6
  %46 = load i16, ptr %45, align 8, !tbaa !88
  switch i16 %46, label %49 [
    i16 1, label %47
    i16 3, label %47
  ]

47:                                               ; preds = %44, %44
  %48 = getelementptr inbounds %struct.LampRen, ptr %3, i64 0, i32 20
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %48) #14
  br label %49

49:                                               ; preds = %44, %47
  call fastcc void @negate_v3(ptr noundef nonnull %6) #14
  %50 = load ptr, ptr %0, align 8, !tbaa !34
  %51 = getelementptr inbounds %struct.Material, ptr %50, i64 0, i32 27, i32 12
  %52 = load i16, ptr %51, align 4, !tbaa !89
  switch i16 %52, label %89 [
    i16 2, label %53
    i16 1, label %55
    i16 3, label %55
    i16 4, label %55
  ]

53:                                               ; preds = %49
  %54 = call fastcc float @vol_get_shadow(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef %1) #14
  call fastcc void @mul_v3_fl(ptr noundef %4, float noundef %54) #14
  br label %89

55:                                               ; preds = %49, %49, %49
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %11) #12
  %56 = getelementptr inbounds %struct.Material, ptr %50, i64 0, i32 27, i32 11
  %57 = load i16, ptr %56, align 2, !tbaa !90
  %58 = and i16 %57, 1
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %55
  %61 = call fastcc float @vol_get_shadow(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef %1) #14
  call fastcc void @mul_v3_fl(ptr noundef %4, float noundef %61) #14
  %62 = call fastcc float @rgb_to_luma_y(ptr noundef %4) #14
  %63 = fcmp olt float %62, 0x3F50624DE0000000
  br i1 %63, label %88, label %64

64:                                               ; preds = %60, %55
  %65 = call fastcc i32 @vol_get_bounds(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %9, ptr noundef nonnull %11, i32 noundef 1) #14, !range !91
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %87, label %67

67:                                               ; preds = %64
  %68 = call fastcc float @len_v3v3(ptr noundef %1, ptr noundef nonnull %9) #14
  %69 = getelementptr inbounds %struct.Isect, ptr %11, i64 0, i32 15, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !92
  %71 = getelementptr inbounds %struct.VlakRen, ptr %70, i64 0, i32 5
  %72 = load ptr, ptr %71, align 8, !tbaa !95
  %73 = getelementptr inbounds %struct.Material, ptr %72, i64 0, i32 2
  %74 = load i16, ptr %73, align 8, !tbaa !97
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %67
  %77 = getelementptr inbounds float, ptr %4, i64 2
  store float 0.000000e+00, ptr %77, align 4, !tbaa !48
  store <2 x float> zeroinitializer, ptr %4, align 4, !tbaa !48
  br label %88

78:                                               ; preds = %67
  %79 = load i16, ptr %45, align 8, !tbaa !88
  switch i16 %79, label %80 [
    i16 1, label %85
    i16 3, label %85
  ]

80:                                               ; preds = %78
  %81 = load float, ptr %7, align 4, !tbaa !48
  %82 = fcmp olt float %81, %68
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.LampRen, ptr %3, i64 0, i32 5
  br label %85

85:                                               ; preds = %83, %78, %78, %80
  %86 = phi ptr [ %84, %83 ], [ %9, %78 ], [ %9, %78 ], [ %9, %80 ]
  call fastcc void @vol_get_transmittance(ptr noundef nonnull %0, ptr noundef nonnull %8, ptr noundef %1, ptr noundef nonnull %86) #14
  call fastcc void @mul_v3_v3v3(ptr noundef %4, ptr noundef %4, ptr noundef nonnull %8) #14
  br label %87

87:                                               ; preds = %85, %64
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %11) #12
  br label %89

88:                                               ; preds = %76, %60
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %11) #12
  br label %110

89:                                               ; preds = %87, %49, %53
  %90 = call fastcc float @rgb_to_luma_y(ptr noundef %4) #14
  %91 = fcmp olt float %90, 0x3F50624DE0000000
  br i1 %91, label %110, label %92

92:                                               ; preds = %89
  %93 = call fastcc float @normalize_v3(ptr noundef nonnull %6) #14
  %94 = load ptr, ptr %0, align 8, !tbaa !34
  %95 = getelementptr inbounds %struct.Material, ptr %94, i64 0, i32 27, i32 9
  %96 = load float, ptr %95, align 4, !tbaa !98
  %97 = call fastcc float @vol_get_phasefunc(float noundef %96, ptr noundef %2, ptr noundef nonnull %6) #14
  call fastcc void @vol_get_reflection_color(ptr noundef nonnull %0, ptr noundef nonnull %10, ptr noundef %1) #14
  %98 = load <2 x float>, ptr %10, align 8, !tbaa !48
  %99 = insertelement <2 x float> poison, float %97, i64 0
  %100 = shufflevector <2 x float> %99, <2 x float> poison, <2 x i32> zeroinitializer
  %101 = fmul <2 x float> %100, %98
  %102 = load <2 x float>, ptr %4, align 4, !tbaa !48
  %103 = fmul <2 x float> %102, %101
  store <2 x float> %103, ptr %4, align 4, !tbaa !48
  %104 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  %105 = load float, ptr %104, align 8, !tbaa !48
  %106 = fmul float %97, %105
  %107 = getelementptr inbounds float, ptr %4, i64 2
  %108 = load float, ptr %107, align 4, !tbaa !48
  %109 = fmul float %108, %106
  store float %109, ptr %107, align 4, !tbaa !48
  br label %110

110:                                              ; preds = %89, %88, %34, %30, %25, %18, %92
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !99 {
  %3 = load float, ptr %1, align 4, !tbaa !48
  %4 = load float, ptr %0, align 4, !tbaa !48
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !48
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !48
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !48
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !48
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !48
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !48
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !48
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @shade_volume_shadow(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca %struct.Isect, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 4 dereferenceable(12) @__const.volumeintegrate.tr, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %6) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %6, i8 0, i64 176, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(212) %1, i8 0, i64 212, i1 false)
  %7 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 7
  %8 = load i16, ptr %7, align 8, !tbaa !100
  %9 = icmp eq i16 %8, 0
  %10 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29
  br i1 %9, label %11, label %17

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30
  %13 = call fastcc i32 @vol_get_bounds(ptr noundef nonnull %0, ptr noundef nonnull %10, ptr noundef nonnull %12, ptr noundef nonnull %4, ptr noundef nonnull %6, i32 noundef 0) #14, !range !91
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 2
  store float 0.000000e+00, ptr %16, align 4, !tbaa !48
  store <2 x float> zeroinitializer, ptr %1, align 4, !tbaa !48
  br label %38

17:                                               ; preds = %3, %11
  %18 = phi ptr [ %10, %11 ], [ %2, %3 ]
  %19 = phi ptr [ %4, %11 ], [ %10, %3 ]
  call fastcc void @vol_get_transmittance(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef %18, ptr noundef nonnull %19) #14
  %20 = getelementptr inbounds %struct.Isect, ptr %6, i64 0, i32 15
  %21 = load ptr, ptr %20, align 8, !tbaa !101
  %22 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !51
  %24 = icmp eq ptr %21, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29
  call fastcc void @copy_v3_v3(ptr noundef nonnull %26, ptr noundef nonnull %4) #14
  %27 = getelementptr inbounds %struct.Isect, ptr %6, i64 0, i32 2
  %28 = load float, ptr %27, align 8, !tbaa !102
  %29 = getelementptr inbounds %struct.Isect, ptr %2, i64 0, i32 2
  %30 = load float, ptr %29, align 8, !tbaa !102
  %31 = fadd float %28, %30
  store float %31, ptr %29, align 8, !tbaa !102
  %32 = getelementptr inbounds %struct.Isect, ptr %6, i64 0, i32 15, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !92
  %34 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 1
  store ptr %33, ptr %34, align 8, !tbaa !103
  br label %35

35:                                               ; preds = %25, %17
  call fastcc void @copy_v3_v3(ptr noundef nonnull %1, ptr noundef nonnull %5) #14
  %36 = call fastcc float @rgb_to_luma_y(ptr noundef nonnull %5) #14
  %37 = fsub float 1.000000e+00, %36
  br label %38

38:                                               ; preds = %35, %15
  %39 = phi float [ %37, %35 ], [ 1.000000e+00, %15 ]
  %40 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 3
  store float %39, ptr %40, align 4, !tbaa !48
  %41 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 2
  store float %39, ptr %41, align 4, !tbaa !104
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @vol_get_bounds(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 !PGOFuncName !106 {
  tail call fastcc void @copy_v3_v3(ptr noundef %4, ptr noundef %1) #14
  %7 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 1
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef %2) #14
  %8 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 2
  store float 0x47EFFFFFE0000000, ptr %8, align 8, !tbaa !102
  %9 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 7
  store i32 1, ptr %9, align 8, !tbaa !107
  %10 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 17
  store ptr null, ptr %10, align 8, !tbaa !108
  %11 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 8
  store i32 -1, ptr %11, align 4, !tbaa !109
  %12 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 10
  store i32 0, ptr %12, align 4, !tbaa !110
  %13 = icmp eq i32 %5, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !103
  %17 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !51
  br label %19

19:                                               ; preds = %6, %14
  %20 = phi i32 [ 2, %14 ], [ 0, %6 ]
  %21 = phi ptr [ %16, %14 ], [ null, %6 ]
  %22 = phi ptr [ %18, %14 ], [ null, %6 ]
  %23 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 9
  store i32 %20, ptr %23, align 8
  %24 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 16, i32 1
  store ptr %21, ptr %24, align 8
  %25 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 16
  store ptr %22, ptr %25, align 8
  %26 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !51
  tail call void @RE_instance_rotate_ray(ptr noundef %27, ptr noundef nonnull %4) #13
  %28 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 52), align 8, !tbaa !111
  %29 = tail call i32 @RE_rayobject_raycast(ptr noundef %28, ptr noundef nonnull %4) #13
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %51, label %31

31:                                               ; preds = %19
  %32 = load ptr, ptr %26, align 8, !tbaa !51
  tail call void @RE_instance_rotate_ray_restore(ptr noundef %32, ptr noundef nonnull %4) #13
  %33 = load float, ptr %4, align 8, !tbaa !48
  %34 = load float, ptr %8, align 8, !tbaa !102
  %35 = load float, ptr %7, align 4, !tbaa !48
  %36 = tail call float @llvm.fmuladd.f32(float %34, float %35, float %33)
  store float %36, ptr %3, align 4, !tbaa !48
  %37 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !48
  %39 = load float, ptr %8, align 8, !tbaa !102
  %40 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 1, i64 1
  %41 = load float, ptr %40, align 4, !tbaa !48
  %42 = tail call float @llvm.fmuladd.f32(float %39, float %41, float %38)
  %43 = getelementptr inbounds float, ptr %3, i64 1
  store float %42, ptr %43, align 4, !tbaa !48
  %44 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %45 = load float, ptr %44, align 8, !tbaa !48
  %46 = load float, ptr %8, align 8, !tbaa !102
  %47 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 1, i64 2
  %48 = load float, ptr %47, align 4, !tbaa !48
  %49 = tail call float @llvm.fmuladd.f32(float %46, float %48, float %45)
  %50 = getelementptr inbounds float, ptr %3, i64 2
  store float %49, ptr %50, align 4, !tbaa !48
  br label %51

51:                                               ; preds = %19, %31
  %52 = phi i32 [ 1, %31 ], [ 0, %19 ]
  ret i32 %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vol_get_transmittance(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #0 !PGOFuncName !125 {
  %5 = alloca [3 x float], align 8
  %6 = alloca [3 x float], align 8
  %7 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #12
  %8 = load <2 x float>, ptr %2, align 4, !tbaa !48
  %9 = getelementptr inbounds float, ptr %5, i64 2
  %10 = getelementptr inbounds float, ptr %2, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #12
  %12 = load <2 x float>, ptr %3, align 4, !tbaa !48
  %13 = fsub <2 x float> %12, %8
  store <2 x float> %13, ptr %6, align 8, !tbaa !48
  %14 = getelementptr inbounds float, ptr %6, i64 2
  %15 = getelementptr inbounds float, ptr %3, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !48
  %17 = fsub float %16, %11
  store float %17, ptr %14, align 8, !tbaa !48
  %18 = call fastcc float @normalize_v3(ptr noundef nonnull %6) #14
  %19 = load ptr, ptr %0, align 8, !tbaa !34
  %20 = getelementptr inbounds %struct.Material, ptr %19, i64 0, i32 27, i32 14
  %21 = load float, ptr %20, align 8, !tbaa !126
  %22 = getelementptr inbounds %struct.Material, ptr %19, i64 0, i32 27, i32 10
  %23 = load i16, ptr %22, align 8, !tbaa !127
  %24 = icmp eq i16 %23, 1
  br i1 %24, label %33, label %25

25:                                               ; preds = %4
  %26 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %27 = load i16, ptr %26, align 2, !tbaa !128
  %28 = sext i16 %27 to i32
  %29 = tail call float @BLI_thread_frand(i32 noundef %28) #13
  %30 = load ptr, ptr %0, align 8, !tbaa !34
  %31 = getelementptr inbounds %struct.Material, ptr %30, i64 0, i32 27, i32 14
  %32 = load float, ptr %31, align 8, !tbaa !126
  br label %33

33:                                               ; preds = %4, %25
  %34 = phi float [ %32, %25 ], [ %21, %4 ]
  %35 = phi float [ %29, %25 ], [ 5.000000e-01, %4 ]
  %36 = tail call float @llvm.fmuladd.f32(float %21, float %35, float 0.000000e+00)
  %37 = load <2 x float>, ptr %6, align 8, !tbaa !48
  %38 = insertelement <2 x float> poison, float %36, i64 0
  %39 = shufflevector <2 x float> %38, <2 x float> poison, <2 x i32> zeroinitializer
  %40 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %39, <2 x float> %37, <2 x float> %8)
  store <2 x float> %40, ptr %5, align 8, !tbaa !48
  %41 = load float, ptr %14, align 8, !tbaa !48
  %42 = tail call float @llvm.fmuladd.f32(float %36, float %41, float %11)
  store float %42, ptr %9, align 8, !tbaa !48
  call fastcc void @mul_v3_fl(ptr noundef nonnull %6, float noundef %34) #14
  %43 = fcmp olt float %36, %18
  br i1 %43, label %44, label %65

44:                                               ; preds = %33
  %45 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  br label %46

46:                                               ; preds = %44, %46
  %47 = phi float [ 0.000000e+00, %44 ], [ %49, %46 ]
  %48 = phi float [ 0.000000e+00, %44 ], [ %59, %46 ]
  %49 = phi float [ %36, %44 ], [ %63, %46 ]
  %50 = phi <2 x float> [ zeroinitializer, %44 ], [ %57, %46 ]
  %51 = call float @vol_get_density(ptr noundef nonnull %0, ptr noundef nonnull %5) #14
  %52 = fsub float %49, %47
  %53 = fmul float %52, %51
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #12
  call fastcc void @vol_get_sigma_t(ptr noundef nonnull %0, ptr noundef nonnull %7, ptr noundef nonnull %5) #14
  %54 = load <2 x float>, ptr %7, align 8, !tbaa !48
  %55 = insertelement <2 x float> poison, float %53, i64 0
  %56 = shufflevector <2 x float> %55, <2 x float> poison, <2 x i32> zeroinitializer
  %57 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %56, <2 x float> %54, <2 x float> %50)
  %58 = load float, ptr %45, align 8, !tbaa !48
  %59 = call float @llvm.fmuladd.f32(float %53, float %58, float %48)
  call fastcc void @add_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #12
  %60 = load ptr, ptr %0, align 8, !tbaa !34
  %61 = getelementptr inbounds %struct.Material, ptr %60, i64 0, i32 27, i32 14
  %62 = load float, ptr %61, align 8, !tbaa !126
  %63 = fadd float %49, %62
  %64 = fcmp olt float %63, %18
  br i1 %64, label %46, label %65, !llvm.loop !129

65:                                               ; preds = %46, %33
  %66 = phi float [ 0.000000e+00, %33 ], [ %59, %46 ]
  %67 = phi <2 x float> [ zeroinitializer, %33 ], [ %57, %46 ]
  %68 = extractelement <2 x float> %67, i64 0
  %69 = fneg float %68
  %70 = call float @expf(float noundef %69) #13
  store float %70, ptr %1, align 4, !tbaa !48
  %71 = extractelement <2 x float> %67, i64 1
  %72 = fneg float %71
  %73 = call float @expf(float noundef %72) #13
  %74 = getelementptr inbounds float, ptr %1, i64 1
  store float %73, ptr %74, align 4, !tbaa !48
  %75 = fneg float %66
  %76 = call float @expf(float noundef %75) #13
  %77 = getelementptr inbounds float, ptr %1, i64 2
  store float %76, ptr %77, align 4, !tbaa !48
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !130 {
  %3 = load float, ptr %1, align 4, !tbaa !48
  store float %3, ptr %0, align 4, !tbaa !48
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !48
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !48
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !48
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !48
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @rgb_to_luma_y(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !131 {
  %2 = load float, ptr %0, align 4, !tbaa !48
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !48
  %5 = fmul float %4, 0x3FE6E29740000000
  %6 = tail call float @llvm.fmuladd.f32(float %2, float 0x3FCB38CDA0000000, float %5)
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !48
  %9 = tail call float @llvm.fmuladd.f32(float %8, float 0x3FB279AAE0000000, float %6)
  ret float %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @shade_volume_outside(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(212) %1, i8 0, i64 212, i1 false)
  tail call fastcc void @volume_trace(ptr noundef %0, ptr noundef %1, i32 noundef 0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @volume_trace(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !132 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [4 x float], align 16
  %6 = alloca %struct.Isect, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %7 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 108
  %8 = load i32, ptr %7, align 8, !tbaa !133
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %3
  %11 = load ptr, ptr %0, align 8, !tbaa !34
  %12 = getelementptr inbounds %struct.Material, ptr %11, i64 0, i32 51
  %13 = load i32, ptr %12, align 4, !tbaa !134
  %14 = and i32 %13, 65536
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %10
  %17 = and i32 %13, 64
  %18 = icmp ne i32 %17, 0
  br label %19

19:                                               ; preds = %16, %10, %3
  %20 = phi i1 [ false, %10 ], [ false, %3 ], [ %18, %16 ]
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %6) #12
  %21 = icmp eq i32 %2, 1
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 7
  %24 = load i16, ptr %23, align 8, !tbaa !100
  %25 = icmp ne i16 %24, 0
  br label %26

26:                                               ; preds = %22, %19
  %27 = phi i1 [ true, %19 ], [ %25, %22 ]
  %28 = and i1 %20, %27
  br i1 %28, label %29, label %45

29:                                               ; preds = %26
  %30 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 79), align 8, !tbaa !62
  %31 = icmp eq ptr %30, null
  br i1 %31, label %82, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr %0, align 8, !tbaa !34
  br label %34

34:                                               ; preds = %32, %34
  %35 = phi ptr [ %30, %32 ], [ %41, %34 ]
  %36 = phi i32 [ 0, %32 ], [ %40, %34 ]
  %37 = getelementptr inbounds %struct.MatInside, ptr %35, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !135
  %39 = icmp eq ptr %38, %33
  %40 = select i1 %39, i32 1, i32 %36
  %41 = load ptr, ptr %35, align 8, !tbaa !62
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %34, !llvm.loop !137

43:                                               ; preds = %34
  %44 = icmp eq i32 %40, 0
  br i1 %44, label %82, label %45

45:                                               ; preds = %43, %26
  br i1 %27, label %46, label %55

46:                                               ; preds = %45
  %47 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 31
  %48 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29
  br i1 %21, label %53, label %49

49:                                               ; preds = %46
  br i1 %20, label %54, label %50

50:                                               ; preds = %49
  %51 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !103
  call fastcc void @vol_trace_behind(ptr noundef nonnull %0, ptr noundef %52, ptr noundef nonnull %48, ptr noundef nonnull %5) #14
  br label %54

53:                                               ; preds = %46
  call fastcc void @copy_v4_v4(ptr noundef nonnull %5, ptr noundef %1) #14
  br label %54

54:                                               ; preds = %49, %50, %53
  call fastcc void @volumeintegrate(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull %47, ptr noundef nonnull %48) #14
  br label %71

55:                                               ; preds = %45
  %56 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29
  %57 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30
  %58 = call fastcc i32 @vol_get_bounds(ptr noundef nonnull %0, ptr noundef nonnull %56, ptr noundef nonnull %57, ptr noundef nonnull %4, ptr noundef nonnull %6, i32 noundef 0) #14, !range !91
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %71, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.Isect, ptr %6, i64 0, i32 15, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !92
  br i1 %20, label %70, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.VlakRen, ptr %62, i64 0, i32 5
  %65 = load ptr, ptr %64, align 8, !tbaa !95
  %66 = load ptr, ptr %0, align 8, !tbaa !34
  %67 = icmp eq ptr %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  call fastcc void @vol_trace_behind(ptr noundef nonnull %0, ptr noundef nonnull %62, ptr noundef nonnull %4, ptr noundef nonnull %5) #14
  br label %70

69:                                               ; preds = %63
  call fastcc void @shade_intersection(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #14
  br label %70

70:                                               ; preds = %68, %69, %60
  call fastcc void @volumeintegrate(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull %56, ptr noundef nonnull %4) #14
  br label %71

71:                                               ; preds = %55, %70, %54
  %72 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 3
  br i1 %20, label %73, label %77

73:                                               ; preds = %71
  %74 = load float, ptr %72, align 4
  %75 = fcmp ogt float %74, 1.000000e+00
  %76 = select i1 %75, float 1.000000e+00, float %74
  br label %77

77:                                               ; preds = %71, %73
  %78 = phi float [ %76, %73 ], [ 1.000000e+00, %71 ]
  store float %78, ptr %72, align 4, !tbaa !48
  call fastcc void @copy_v3_v3(ptr noundef %1, ptr noundef nonnull %5) #14
  %79 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 2
  store float %78, ptr %79, align 4, !tbaa !104
  %80 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 6
  call fastcc void @copy_v3_v3(ptr noundef nonnull %80, ptr noundef %1) #14
  %81 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 7
  call fastcc void @copy_v3_v3(ptr noundef nonnull %81, ptr noundef nonnull %80) #14
  br label %82

82:                                               ; preds = %29, %43, %77
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @shade_volume_inside(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 2
  %4 = load float, ptr %3, align 4, !tbaa !104
  %5 = load ptr, ptr %0, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !51
  %8 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 79), align 8, !tbaa !138
  %9 = getelementptr inbounds %struct.MatInside, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !135
  store ptr %10, ptr %0, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct.MatInside, ptr %8, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !139
  store ptr %12, ptr %6, align 8, !tbaa !51
  %13 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !52
  %15 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 4
  store ptr %14, ptr %15, align 8, !tbaa !140
  tail call fastcc void @volume_trace(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 1) #14
  %16 = load float, ptr %3, align 4, !tbaa !104
  %17 = fadd float %4, %16
  store float %17, ptr %3, align 4, !tbaa !104
  %18 = fcmp olt float %17, 0.000000e+00
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = fcmp ogt float %17, 1.000000e+00
  br i1 %20, label %21, label %23

21:                                               ; preds = %19, %2
  %22 = phi float [ 0.000000e+00, %2 ], [ 1.000000e+00, %19 ]
  store float %22, ptr %3, align 4, !tbaa !104
  br label %23

23:                                               ; preds = %21, %19
  store ptr %5, ptr %0, align 8, !tbaa !34
  store ptr %7, ptr %6, align 8, !tbaa !51
  %24 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %7, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !52
  store ptr %25, ptr %15, align 8, !tbaa !140
  ret void
}

; Function Attrs: optsize
declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @quat_to_mat3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @transpose_m3(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !141 {
  %3 = load float, ptr %0, align 4, !tbaa !48
  %4 = load float, ptr %1, align 4, !tbaa !48
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !48
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !48
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !48
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !48
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: optsize
declare float @lamp_get_visibility(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @do_lamp_tex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #5 !PGOFuncName !142 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !48
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !48
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !48
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !48
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3(ptr nocapture noundef %0) unnamed_addr #5 !PGOFuncName !143 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !48
  %3 = fneg <2 x float> %2
  store <2 x float> %3, ptr %0, align 4, !tbaa !48
  %4 = getelementptr inbounds float, ptr %0, i64 2
  %5 = load float, ptr %4, align 4, !tbaa !48
  %6 = fneg float %5
  store float %6, ptr %4, align 4, !tbaa !48
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @vol_get_shadow(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !144 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca %struct.Isect, align 8
  %7 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 57
  %8 = load ptr, ptr %7, align 8, !tbaa !145
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i64 12, i1 false)
  %11 = call float @testshadowbuf(ptr noundef nonnull @R, ptr noundef nonnull %8, ptr noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %5, float noundef 1.000000e+00, float noundef 0.000000e+00) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #12
  br label %70

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 7
  %14 = load i32, ptr %13, align 4, !tbaa !81
  %15 = and i32 %14, 8192
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %70, label %17

17:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %6) #12
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef %2) #14
  %18 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 6
  %19 = load i16, ptr %18, align 8, !tbaa !88
  switch i16 %19, label %31 [
    i16 1, label %20
    i16 3, label %20
  ]

20:                                               ; preds = %17, %17
  %21 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 20
  %22 = getelementptr inbounds %struct.Isect, ptr %6, i64 0, i32 1
  %23 = load <2 x float>, ptr %21, align 8, !tbaa !48
  %24 = fneg <2 x float> %23
  store <2 x float> %24, ptr %22, align 4, !tbaa !48
  %25 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 20, i64 2
  %26 = load float, ptr %25, align 8, !tbaa !48
  %27 = fneg float %26
  %28 = getelementptr inbounds %struct.Isect, ptr %6, i64 0, i32 1, i64 2
  store float %27, ptr %28, align 4, !tbaa !48
  %29 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 55), align 8, !tbaa !146
  %30 = getelementptr inbounds %struct.Isect, ptr %6, i64 0, i32 2
  store float %29, ptr %30, align 8, !tbaa !102
  br label %37

31:                                               ; preds = %17
  %32 = getelementptr inbounds %struct.Isect, ptr %6, i64 0, i32 1
  %33 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 5
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %32, ptr noundef nonnull %33, ptr noundef nonnull %6) #14
  %34 = call fastcc float @normalize_v3(ptr noundef nonnull %32) #14
  %35 = getelementptr inbounds %struct.Isect, ptr %6, i64 0, i32 2
  store float %34, ptr %35, align 8, !tbaa !102
  %36 = load i32, ptr %13, align 4, !tbaa !81
  br label %37

37:                                               ; preds = %31, %20
  %38 = phi i32 [ %36, %31 ], [ %14, %20 ]
  %39 = getelementptr inbounds %struct.Isect, ptr %6, i64 0, i32 7
  store i32 1, ptr %39, align 8, !tbaa !107
  %40 = getelementptr inbounds %struct.Isect, ptr %6, i64 0, i32 10
  store i32 2, ptr %40, align 4, !tbaa !110
  %41 = getelementptr inbounds %struct.Isect, ptr %6, i64 0, i32 9
  store i32 0, ptr %41, align 8, !tbaa !147
  %42 = and i32 %38, 32772
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 17
  %46 = load i32, ptr %45, align 4, !tbaa !83
  br label %47

47:                                               ; preds = %37, %44
  %48 = phi i32 [ %46, %44 ], [ -1, %37 ]
  %49 = getelementptr inbounds %struct.Isect, ptr %6, i64 0, i32 8
  store i32 %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.Isect, ptr %6, i64 0, i32 16
  %51 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %50, i8 0, i64 16, i1 false)
  %52 = load i16, ptr %51, align 2, !tbaa !128
  %53 = sext i16 %52 to i64
  %54 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 68, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !62
  %56 = getelementptr inbounds %struct.Isect, ptr %6, i64 0, i32 17
  store ptr %55, ptr %56, align 8, !tbaa !108
  %57 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !51
  call void @RE_instance_rotate_ray(ptr noundef %58, ptr noundef nonnull %6) #13
  %59 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 52), align 8, !tbaa !111
  %60 = call i32 @RE_rayobject_raycast(ptr noundef %59, ptr noundef nonnull %6) #13
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %47
  %63 = load ptr, ptr %57, align 8, !tbaa !51
  call void @RE_instance_rotate_ray_restore(ptr noundef %63, ptr noundef nonnull %6) #13
  br label %64

64:                                               ; preds = %62, %47
  %65 = phi float [ 0.000000e+00, %62 ], [ 1.000000e+00, %47 ]
  %66 = load ptr, ptr %56, align 8, !tbaa !108
  %67 = load i16, ptr %51, align 2, !tbaa !128
  %68 = sext i16 %67 to i64
  %69 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 68, i64 %68
  store ptr %66, ptr %69, align 8, !tbaa !62
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %6) #12
  br label %70

70:                                               ; preds = %12, %64, %10
  %71 = phi float [ %11, %10 ], [ %65, %64 ], [ 1.000000e+00, %12 ]
  ret float %71
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !148 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #12
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #14
  %4 = call fastcc float @len_v3(ptr noundef nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #12
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #5 !PGOFuncName !149 {
  %4 = load float, ptr %1, align 4, !tbaa !48
  %5 = load float, ptr %2, align 4, !tbaa !48
  %6 = fmul float %4, %5
  store float %6, ptr %0, align 4, !tbaa !48
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !48
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !48
  %11 = fmul float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !48
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !48
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !48
  %17 = fmul float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !48
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3(ptr nocapture noundef %0) unnamed_addr #9 !PGOFuncName !150 {
  %2 = tail call fastcc float @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #14
  ret float %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @vol_get_phasefunc(float noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #7 !PGOFuncName !151 {
  %4 = fcmp oeq float %0, 0.000000e+00
  br i1 %4, label %18, label %5

5:                                                ; preds = %3
  %6 = fmul float %0, 0xBFE19999A0000000
  %7 = fmul float %6, %0
  %8 = fmul float %7, %0
  %9 = tail call float @llvm.fmuladd.f32(float %0, float 0x3FF8CCCCC0000000, float %8)
  %10 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %2) #14
  %11 = fmul float %9, %10
  %12 = fneg float %9
  %13 = tail call float @llvm.fmuladd.f32(float %12, float %9, float 1.000000e+00)
  %14 = fmul float %13, 2.500000e-01
  %15 = fsub float 1.000000e+00, %11
  %16 = fmul float %15, %15
  %17 = fdiv float %14, %16
  br label %18

18:                                               ; preds = %3, %5
  %19 = phi float [ %17, %5 ], [ 2.500000e-01, %3 ]
  ret float %19
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vol_get_reflection_color(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !152 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  %6 = load ptr, ptr %0, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.Material, ptr %6, i64 0, i32 27, i32 2
  %8 = load float, ptr %7, align 8, !tbaa !153
  store float %8, ptr %4, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  %9 = getelementptr inbounds %struct.Material, ptr %6, i64 0, i32 27, i32 3
  %10 = load float, ptr %9, align 4, !tbaa !154
  store float %10, ptr %5, align 4, !tbaa !48
  %11 = getelementptr inbounds %struct.Material, ptr %6, i64 0, i32 27, i32 6
  tail call fastcc void @copy_v3_v3(ptr noundef %1, ptr noundef nonnull %11) #14
  %12 = load ptr, ptr %0, align 8, !tbaa !34
  %13 = getelementptr inbounds %struct.Material, ptr %12, i64 0, i32 125
  %14 = load i32, ptr %13, align 8, !tbaa !50
  %15 = and i32 %14, 20
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  call void @do_volume_tex(ptr noundef nonnull %0, ptr noundef %2, i32 noundef 20, ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull @R) #13
  %18 = load ptr, ptr %0, align 8, !tbaa !34
  %19 = getelementptr inbounds %struct.Material, ptr %18, i64 0, i32 125
  %20 = load i32, ptr %19, align 8, !tbaa !50
  br label %21

21:                                               ; preds = %17, %3
  %22 = phi i32 [ %20, %17 ], [ %14, %3 ]
  %23 = and i32 %22, 32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  call void @do_volume_tex(ptr noundef nonnull %0, ptr noundef %2, i32 noundef 32, ptr noundef null, ptr noundef nonnull %5, ptr noundef nonnull @R) #13
  %26 = load float, ptr %5, align 4, !tbaa !48
  br label %27

27:                                               ; preds = %25, %21
  %28 = phi float [ %26, %25 ], [ %10, %21 ]
  %29 = load float, ptr %4, align 4, !tbaa !48
  %30 = load <2 x float>, ptr %1, align 4, !tbaa !48
  %31 = insertelement <2 x float> poison, float %28, i64 0
  %32 = shufflevector <2 x float> %31, <2 x float> poison, <2 x i32> zeroinitializer
  %33 = fmul <2 x float> %32, %30
  %34 = insertelement <2 x float> poison, float %29, i64 0
  %35 = shufflevector <2 x float> %34, <2 x float> poison, <2 x i32> zeroinitializer
  %36 = fmul <2 x float> %33, %35
  store <2 x float> %36, ptr %1, align 4, !tbaa !48
  %37 = getelementptr inbounds float, ptr %1, i64 2
  %38 = load float, ptr %37, align 4, !tbaa !48
  %39 = fmul float %28, %38
  %40 = fmul float %29, %39
  store float %40, ptr %37, align 4, !tbaa !48
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret void
}

; Function Attrs: optsize
declare float @testshadowbuf(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #5 !PGOFuncName !155 {
  %4 = load float, ptr %1, align 4, !tbaa !48
  %5 = load float, ptr %2, align 4, !tbaa !48
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !48
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !48
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !48
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !48
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !48
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !48
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !48
  ret void
}

; Function Attrs: optsize
declare void @RE_instance_rotate_ray(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RE_rayobject_raycast(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RE_instance_rotate_ray_restore(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #9 !PGOFuncName !156 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #14
  %3 = tail call float @sqrtf(float noundef %2) #13
  ret float %3
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !157 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #14
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #13
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #14
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #14
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi float [ %6, %5 ], [ 0.000000e+00, %8 ]
  ret float %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #5 !PGOFuncName !158 {
  %4 = load float, ptr %1, align 4, !tbaa !48
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !48
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !48
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !48
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !48
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !48
  ret void
}

; Function Attrs: optsize
declare float @BLI_thread_frand(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vol_get_sigma_t(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !159 {
  %4 = alloca [3 x float], align 8
  %5 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #12
  %6 = load ptr, ptr %0, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.Material, ptr %6, i64 0, i32 27, i32 5
  %8 = load <2 x float>, ptr %7, align 4, !tbaa !48
  store <2 x float> %8, ptr %4, align 8, !tbaa !48
  %9 = getelementptr inbounds float, ptr %4, i64 2
  %10 = getelementptr inbounds %struct.Material, ptr %6, i64 0, i32 27, i32 5, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !48
  store float %11, ptr %9, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  %12 = getelementptr inbounds %struct.Material, ptr %6, i64 0, i32 27, i32 2
  %13 = load float, ptr %12, align 8, !tbaa !153
  store float %13, ptr %5, align 4, !tbaa !48
  %14 = getelementptr inbounds %struct.Material, ptr %6, i64 0, i32 125
  %15 = load i32, ptr %14, align 8, !tbaa !50
  %16 = and i32 %15, 24
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  call void @do_volume_tex(ptr noundef nonnull %0, ptr noundef %2, i32 noundef 24, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull @R) #13
  %19 = load float, ptr %5, align 4, !tbaa !48
  %20 = load <2 x float>, ptr %4, align 8, !tbaa !48
  %21 = load float, ptr %9, align 8, !tbaa !48
  br label %22

22:                                               ; preds = %18, %3
  %23 = phi float [ %21, %18 ], [ %11, %3 ]
  %24 = phi float [ %19, %18 ], [ %13, %3 ]
  %25 = phi <2 x float> [ %20, %18 ], [ %8, %3 ]
  %26 = fsub <2 x float> <float 1.000000e+00, float 1.000000e+00>, %25
  %27 = insertelement <2 x float> poison, float %24, i64 0
  %28 = shufflevector <2 x float> %27, <2 x float> poison, <2 x i32> zeroinitializer
  %29 = fadd <2 x float> %26, %28
  store <2 x float> %29, ptr %1, align 4, !tbaa !48
  %30 = fsub float 1.000000e+00, %23
  %31 = fadd float %24, %30
  %32 = getelementptr inbounds float, ptr %1, i64 2
  store float %31, ptr %32, align 4, !tbaa !48
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #12
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @expf(float noundef) local_unnamed_addr #10

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vol_trace_behind(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !160 {
  %5 = alloca %struct.Isect, align 8
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %5) #12
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef %2) #14
  %6 = getelementptr inbounds %struct.Isect, ptr %5, i64 0, i32 1
  %7 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %7) #14
  %8 = getelementptr inbounds %struct.Isect, ptr %5, i64 0, i32 2
  store float 0x47EFFFFFE0000000, ptr %8, align 8, !tbaa !102
  %9 = getelementptr inbounds %struct.Isect, ptr %5, i64 0, i32 7
  %10 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !51
  %12 = getelementptr inbounds %struct.Isect, ptr %5, i64 0, i32 16
  store ptr %11, ptr %12, align 8, !tbaa !161
  %13 = getelementptr inbounds %struct.Isect, ptr %5, i64 0, i32 16, i32 1
  store ptr %1, ptr %13, align 8, !tbaa !162
  %14 = getelementptr inbounds %struct.Isect, ptr %5, i64 0, i32 17
  store ptr null, ptr %14, align 8, !tbaa !108
  store <4 x i32> <i32 1, i32 -1, i32 2, i32 0>, ptr %9, align 8, !tbaa !163
  call void @RE_instance_rotate_ray(ptr noundef %11, ptr noundef nonnull %5) #13
  %15 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 52), align 8, !tbaa !111
  %16 = call i32 @RE_rayobject_raycast(ptr noundef %15, ptr noundef nonnull %5) #13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %4
  %19 = load ptr, ptr %10, align 8, !tbaa !51
  call void @RE_instance_rotate_ray_restore(ptr noundef %19, ptr noundef nonnull %5) #13
  call fastcc void @shade_intersection(ptr noundef nonnull %0, ptr noundef %3, ptr noundef nonnull %5) #14
  br label %23

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %22 = load i16, ptr %21, align 2, !tbaa !128
  call void @shadeSkyView(ptr noundef %3, ptr noundef %2, ptr noundef nonnull %7, ptr noundef null, i16 noundef signext %22) #13
  call void @shadeSunView(ptr noundef %3, ptr noundef nonnull %7) #13
  br label %23

23:                                               ; preds = %20, %18
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %5) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v4_v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !164 {
  %3 = load float, ptr %1, align 4, !tbaa !48
  store float %3, ptr %0, align 4, !tbaa !48
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !48
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !48
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !48
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !48
  %10 = getelementptr inbounds float, ptr %1, i64 3
  %11 = load float, ptr %10, align 4, !tbaa !48
  %12 = getelementptr inbounds float, ptr %0, i64 3
  store float %11, ptr %12, align 4, !tbaa !48
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @volumeintegrate(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 !PGOFuncName !165 {
  %5 = alloca [3 x float], align 8
  %6 = alloca [3 x float], align 8
  %7 = alloca [3 x float], align 8
  %8 = alloca [3 x float], align 8
  %9 = alloca [3 x float], align 8
  %10 = alloca [3 x float], align 8
  %11 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %5, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 4 dereferenceable(12) @__const.volumeintegrate.tr, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #12
  %12 = load <2 x float>, ptr %2, align 4, !tbaa !48
  %13 = getelementptr inbounds float, ptr %7, i64 2
  %14 = getelementptr inbounds float, ptr %2, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #12
  %16 = load <2 x float>, ptr %3, align 4, !tbaa !48
  %17 = fsub <2 x float> %16, %12
  store <2 x float> %17, ptr %8, align 8, !tbaa !48
  %18 = getelementptr inbounds float, ptr %8, i64 2
  %19 = getelementptr inbounds float, ptr %3, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !48
  %21 = fsub float %20, %15
  store float %21, ptr %18, align 8, !tbaa !48
  %22 = load ptr, ptr %0, align 8, !tbaa !34
  %23 = getelementptr inbounds %struct.Material, ptr %22, i64 0, i32 27, i32 14
  %24 = load float, ptr %23, align 8, !tbaa !126
  %25 = call fastcc float @normalize_v3(ptr noundef nonnull %8) #14
  %26 = load ptr, ptr %0, align 8, !tbaa !34
  %27 = getelementptr inbounds %struct.Material, ptr %26, i64 0, i32 27, i32 10
  %28 = load i16, ptr %27, align 8, !tbaa !127
  %29 = icmp eq i16 %28, 1
  br i1 %29, label %35, label %30

30:                                               ; preds = %4
  %31 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %32 = load i16, ptr %31, align 2, !tbaa !128
  %33 = sext i16 %32 to i32
  %34 = tail call float @BLI_thread_frand(i32 noundef %33) #13
  br label %35

35:                                               ; preds = %4, %30
  %36 = phi float [ %34, %30 ], [ 5.000000e-01, %4 ]
  %37 = tail call float @llvm.fmuladd.f32(float %24, float %36, float 0.000000e+00)
  %38 = load <2 x float>, ptr %8, align 8, !tbaa !48
  %39 = insertelement <2 x float> poison, float %37, i64 0
  %40 = shufflevector <2 x float> %39, <2 x float> poison, <2 x i32> zeroinitializer
  %41 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %40, <2 x float> %38, <2 x float> %12)
  store <2 x float> %41, ptr %7, align 8, !tbaa !48
  %42 = load float, ptr %18, align 8, !tbaa !48
  %43 = tail call float @llvm.fmuladd.f32(float %37, float %42, float %15)
  store float %43, ptr %13, align 8, !tbaa !48
  call fastcc void @mul_v3_fl(ptr noundef nonnull %8, float noundef %24) #14
  %44 = fcmp olt float %37, %25
  br i1 %44, label %45, label %109

45:                                               ; preds = %35
  %46 = fmul float %25, 2.500000e-01
  %47 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 3
  %48 = load <2 x float>, ptr %8, align 8
  %49 = load float, ptr %18, align 8
  %50 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 2
  %51 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30
  %52 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %53 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %54 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  %55 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  %56 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  br label %57

57:                                               ; preds = %45, %101
  %58 = phi float [ 0.000000e+00, %45 ], [ %102, %101 ]
  %59 = phi float [ %37, %45 ], [ %104, %101 ]
  %60 = phi float [ 0.000000e+00, %45 ], [ %59, %101 ]
  %61 = phi <2 x float> [ zeroinitializer, %45 ], [ %103, %101 ]
  %62 = call float @vol_get_density(ptr noundef nonnull %0, ptr noundef nonnull %7) #14
  %63 = fcmp ogt float %62, 0x3EE4F8B580000000
  br i1 %63, label %64, label %101

64:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %9, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #12
  %65 = fsub float %59, %60
  %66 = fmul float %65, %62
  call fastcc void @vol_get_transmittance_seg(ptr noundef nonnull %0, ptr noundef nonnull %6, float noundef %24, ptr noundef nonnull %2, float noundef %62) #14
  %67 = fcmp ogt float %59, %46
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  %69 = call fastcc float @rgb_to_luma_y(ptr noundef nonnull %6) #14
  %70 = load ptr, ptr %0, align 8, !tbaa !34
  %71 = getelementptr inbounds %struct.Material, ptr %70, i64 0, i32 27, i32 8
  %72 = load float, ptr %71, align 8, !tbaa !166
  %73 = fcmp olt float %69, %72
  br i1 %73, label %100, label %74

74:                                               ; preds = %68, %64
  call fastcc void @vol_get_emission(ptr noundef nonnull %0, ptr noundef nonnull %10, ptr noundef nonnull %7) #14
  %75 = load ptr, ptr %47, align 8, !tbaa !51
  %76 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %75, i64 0, i32 15
  %77 = load ptr, ptr %76, align 8, !tbaa !167
  %78 = icmp eq ptr %77, null
  br i1 %78, label %84, label %79

79:                                               ; preds = %74
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #12
  %80 = load <2 x float>, ptr %7, align 8, !tbaa !48
  %81 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %48, <2 x float> <float 5.000000e-01, float 5.000000e-01>, <2 x float> %80)
  store <2 x float> %81, ptr %11, align 8, !tbaa !48
  %82 = load float, ptr %13, align 8, !tbaa !48
  %83 = call float @llvm.fmuladd.f32(float %49, float 5.000000e-01, float %82)
  store float %83, ptr %50, align 8, !tbaa !48
  call fastcc void @vol_get_precached_scattering(ptr noundef nonnull %0, ptr noundef nonnull %9, ptr noundef nonnull %11) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #12
  br label %85

84:                                               ; preds = %74
  call void @vol_get_scattering(ptr noundef nonnull %0, ptr noundef nonnull %9, ptr noundef nonnull %7, ptr noundef nonnull %51) #14
  br label %85

85:                                               ; preds = %79, %84
  %86 = load <2 x float>, ptr %6, align 8, !tbaa !48
  %87 = insertelement <2 x float> poison, float %66, i64 0
  %88 = shufflevector <2 x float> %87, <2 x float> poison, <2 x i32> zeroinitializer
  %89 = fmul <2 x float> %88, %86
  %90 = load <2 x float>, ptr %10, align 8, !tbaa !48
  %91 = load <2 x float>, ptr %9, align 8, !tbaa !48
  %92 = fadd <2 x float> %90, %91
  %93 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %89, <2 x float> %92, <2 x float> %61)
  %94 = load float, ptr %53, align 8, !tbaa !48
  %95 = fmul float %66, %94
  %96 = load float, ptr %54, align 8, !tbaa !48
  %97 = load float, ptr %55, align 8, !tbaa !48
  %98 = fadd float %96, %97
  %99 = call float @llvm.fmuladd.f32(float %95, float %98, float %58)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #12
  br label %101

100:                                              ; preds = %68
  store float %58, ptr %56, align 8, !tbaa !48
  store <2 x float> %61, ptr %5, align 8, !tbaa !48
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #12
  br label %111

101:                                              ; preds = %57, %85
  %102 = phi float [ %58, %57 ], [ %99, %85 ]
  %103 = phi <2 x float> [ %61, %57 ], [ %93, %85 ]
  call fastcc void @add_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %8) #14
  %104 = fadd float %24, %59
  %105 = fcmp olt float %104, %25
  br i1 %105, label %57, label %106, !llvm.loop !168

106:                                              ; preds = %101
  %107 = extractelement <2 x float> %103, i64 1
  store float %107, ptr %52, align 4, !tbaa !48
  store float %102, ptr %56, align 8, !tbaa !48
  %108 = extractelement <2 x float> %103, i64 0
  br label %109

109:                                              ; preds = %106, %35
  %110 = phi float [ %108, %106 ], [ 0.000000e+00, %35 ]
  store float %110, ptr %5, align 8, !tbaa !48
  br label %111

111:                                              ; preds = %109, %100
  call fastcc void @mul_v3_v3v3(ptr noundef %1, ptr noundef nonnull %6, ptr noundef %1) #14
  call fastcc void @add_v3_v3(ptr noundef %1, ptr noundef nonnull %5) #14
  %112 = call fastcc float @rgb_to_luma_y(ptr noundef nonnull %6) #14
  %113 = fsub float 1.000000e+00, %112
  %114 = getelementptr inbounds float, ptr %1, i64 3
  store float %113, ptr %114, align 4, !tbaa !48
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @shade_intersection(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !169 {
  %4 = alloca %struct.ShadeInput, align 8
  %5 = alloca %struct.ShadeResult, align 4
  call void @llvm.lifetime.start.p0(i64 1472, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 212, ptr nonnull %5) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1472) %4, i8 0, i64 1448, i1 false)
  %6 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 105
  %7 = load i32, ptr %6, align 4, !tbaa !170
  %8 = getelementptr inbounds %struct.ShadeInput, ptr %4, i64 0, i32 105
  store i32 %7, ptr %8, align 4, !tbaa !170
  %9 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 15
  %10 = load i16, ptr %9, align 8, !tbaa !87
  %11 = getelementptr inbounds %struct.ShadeInput, ptr %4, i64 0, i32 15
  store i16 %10, ptr %11, align 8, !tbaa !87
  %12 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %13 = load i16, ptr %12, align 2, !tbaa !128
  %14 = getelementptr inbounds %struct.ShadeInput, ptr %4, i64 0, i32 114
  store i16 %13, ptr %14, align 2, !tbaa !128
  %15 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 108
  %16 = getelementptr inbounds %struct.ShadeInput, ptr %4, i64 0, i32 108
  %17 = load <2 x i32>, ptr %15, align 8, !tbaa !163
  %18 = add nsw <2 x i32> %17, <i32 1, i32 1>
  store <2 x i32> %18, ptr %16, align 8, !tbaa !163
  %19 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 103
  %20 = getelementptr inbounds %struct.ShadeInput, ptr %4, i64 0, i32 103
  %21 = load <2 x i32>, ptr %19, align 4, !tbaa !163
  store <2 x i32> %21, ptr %20, align 4, !tbaa !163
  %22 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 117
  %23 = load i32, ptr %22, align 8, !tbaa !85
  %24 = getelementptr inbounds %struct.ShadeInput, ptr %4, i64 0, i32 117
  store i32 %23, ptr %24, align 8, !tbaa !85
  %25 = getelementptr inbounds %struct.ShadeInput, ptr %4, i64 0, i32 119
  store i32 1, ptr %25, align 8, !tbaa !171
  %26 = getelementptr inbounds %struct.ShadeInput, ptr %4, i64 0, i32 120
  store i32 16777215, ptr %26, align 4, !tbaa !172
  %27 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 121
  %28 = getelementptr inbounds %struct.ShadeInput, ptr %4, i64 0, i32 121
  %29 = load <2 x ptr>, ptr %27, align 8, !tbaa !62
  store <2 x ptr> %29, ptr %28, align 8, !tbaa !62
  %30 = getelementptr inbounds %struct.ShadeInput, ptr %4, i64 0, i32 31
  call fastcc void @copy_v3_v3(ptr noundef nonnull %30, ptr noundef %2) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(212) %5, i8 0, i64 212, i1 false)
  %31 = extractelement <2 x i32> %17, i64 1
  %32 = icmp slt i32 %31, 100
  br i1 %32, label %33, label %36

33:                                               ; preds = %3
  call void @shade_ray(ptr noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %5) #13
  %34 = getelementptr inbounds %struct.ShadeResult, ptr %5, i64 0, i32 2
  %35 = load float, ptr %34, align 4, !tbaa !104
  br label %36

36:                                               ; preds = %33, %3
  %37 = phi float [ %35, %33 ], [ 0.000000e+00, %3 ]
  call fastcc void @copy_v3_v3(ptr noundef %1, ptr noundef nonnull %5) #14
  %38 = getelementptr inbounds float, ptr %1, i64 3
  store float %37, ptr %38, align 4, !tbaa !48
  call void @llvm.lifetime.end.p0(i64 212, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 1472, ptr nonnull %4) #12
  ret void
}

; Function Attrs: optsize
declare void @shadeSkyView(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @shadeSunView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vol_get_transmittance_seg(ptr noundef %0, ptr nocapture noundef %1, float noundef %2, ptr noundef %3, float noundef %4) unnamed_addr #0 !PGOFuncName !173 {
  %6 = alloca [3 x float], align 4
  %7 = fmul float %2, %4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #12
  call fastcc void @vol_get_sigma_t(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %3) #14
  %8 = load float, ptr %6, align 4, !tbaa !48
  %9 = tail call float @llvm.fmuladd.f32(float %7, float %8, float 0.000000e+00)
  %10 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !48
  %12 = tail call float @llvm.fmuladd.f32(float %7, float %11, float 0.000000e+00)
  %13 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !48
  %15 = tail call float @llvm.fmuladd.f32(float %7, float %14, float 0.000000e+00)
  %16 = fneg float %9
  %17 = tail call float @expf(float noundef %16) #13
  %18 = load float, ptr %1, align 4, !tbaa !48
  %19 = fmul float %17, %18
  store float %19, ptr %1, align 4, !tbaa !48
  %20 = fneg float %12
  %21 = tail call float @expf(float noundef %20) #13
  %22 = getelementptr inbounds float, ptr %1, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !48
  %24 = fmul float %21, %23
  store float %24, ptr %22, align 4, !tbaa !48
  %25 = fneg float %15
  %26 = tail call float @expf(float noundef %25) #13
  %27 = getelementptr inbounds float, ptr %1, i64 2
  %28 = load float, ptr %27, align 4, !tbaa !48
  %29 = fmul float %26, %28
  store float %29, ptr %27, align 4, !tbaa !48
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vol_get_emission(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !174 {
  %4 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  %5 = load ptr, ptr %0, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.Material, ptr %5, i64 0, i32 27, i32 1
  %7 = load float, ptr %6, align 4, !tbaa !175
  store float %7, ptr %4, align 4, !tbaa !48
  %8 = getelementptr inbounds %struct.Material, ptr %5, i64 0, i32 27, i32 4
  tail call fastcc void @copy_v3_v3(ptr noundef %1, ptr noundef nonnull %8) #14
  %9 = load ptr, ptr %0, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.Material, ptr %9, i64 0, i32 125
  %11 = load i32, ptr %10, align 8, !tbaa !50
  %12 = and i32 %11, 65
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  call void @do_volume_tex(ptr noundef nonnull %0, ptr noundef %2, i32 noundef 65, ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull @R) #13
  %15 = load float, ptr %4, align 4, !tbaa !48
  br label %16

16:                                               ; preds = %14, %3
  %17 = phi float [ %15, %14 ], [ %7, %3 ]
  %18 = load <2 x float>, ptr %1, align 4, !tbaa !48
  %19 = insertelement <2 x float> poison, float %17, i64 0
  %20 = shufflevector <2 x float> %19, <2 x float> poison, <2 x i32> zeroinitializer
  %21 = fmul <2 x float> %18, %20
  store <2 x float> %21, ptr %1, align 4, !tbaa !48
  %22 = getelementptr inbounds float, ptr %1, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !48
  %24 = fmul float %17, %23
  store float %24, ptr %22, align 4, !tbaa !48
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vol_get_precached_scattering(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !176 {
  %4 = alloca [3 x float], align 8
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 8
  %7 = alloca [3 x float], align 8
  %8 = alloca [3 x float], align 8
  %9 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !51
  %11 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %10, i64 0, i32 15
  %12 = load ptr, ptr %11, align 8, !tbaa !167
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #12
  %13 = icmp eq ptr %12, null
  br i1 %13, label %40, label %14

14:                                               ; preds = %3
  call void @global_bounds_obi(ptr noundef nonnull @R, ptr noundef nonnull %10, ptr noundef nonnull %4, ptr noundef nonnull %5) #13
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %4) #14
  call void @mul_v3_m4v3(ptr noundef nonnull %7, ptr noundef nonnull getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 33), ptr noundef %2) #13
  %15 = load <2 x float>, ptr %7, align 8, !tbaa !48
  %16 = load <2 x float>, ptr %4, align 8, !tbaa !48
  %17 = fsub <2 x float> %15, %16
  %18 = load <2 x float>, ptr %6, align 8, !tbaa !48
  %19 = fdiv <2 x float> %17, %18
  store <2 x float> %19, ptr %8, align 8, !tbaa !48
  %20 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %21 = load float, ptr %20, align 8, !tbaa !48
  %22 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %23 = load float, ptr %22, align 8, !tbaa !48
  %24 = fsub float %21, %23
  %25 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %26 = load float, ptr %25, align 8, !tbaa !48
  %27 = fdiv float %24, %26
  %28 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  store float %27, ptr %28, align 8, !tbaa !48
  %29 = getelementptr inbounds %struct.VolumePrecache, ptr %12, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !177
  %31 = call float @BLI_voxel_sample_triquadratic(ptr noundef %30, ptr noundef nonnull %12, ptr noundef nonnull %8) #13
  store float %31, ptr %1, align 4, !tbaa !48
  %32 = getelementptr inbounds %struct.VolumePrecache, ptr %12, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !179
  %34 = call float @BLI_voxel_sample_triquadratic(ptr noundef %33, ptr noundef nonnull %12, ptr noundef nonnull %8) #13
  %35 = getelementptr inbounds float, ptr %1, i64 1
  store float %34, ptr %35, align 4, !tbaa !48
  %36 = getelementptr inbounds %struct.VolumePrecache, ptr %12, i64 0, i32 5
  %37 = load ptr, ptr %36, align 8, !tbaa !180
  %38 = call float @BLI_voxel_sample_triquadratic(ptr noundef %37, ptr noundef nonnull %12, ptr noundef nonnull %8) #13
  %39 = getelementptr inbounds float, ptr %1, i64 2
  store float %38, ptr %39, align 4, !tbaa !48
  br label %40

40:                                               ; preds = %3, %14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #12
  ret void
}

; Function Attrs: optsize
declare void @global_bounds_obi(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @BLI_voxel_sample_triquadratic(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @shade_ray(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #11

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { nounwind optsize }
attributes #14 = { optsize }

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
!34 = !{!35, !36, i64 0}
!35 = !{!"ShadeInput", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !39, i64 40, !37, i64 44, !40, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !40, i64 88, !40, i64 90, !40, i64 92, !40, i64 94, !40, i64 96, !37, i64 100, !37, i64 112, !37, i64 124, !37, i64 136, !37, i64 148, !39, i64 160, !39, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180, !41, i64 184, !41, i64 188, !37, i64 192, !37, i64 204, !37, i64 216, !41, i64 228, !41, i64 232, !41, i64 236, !41, i64 240, !41, i64 244, !41, i64 248, !41, i64 252, !41, i64 256, !41, i64 260, !41, i64 264, !41, i64 268, !41, i64 272, !41, i64 276, !41, i64 280, !41, i64 284, !41, i64 288, !41, i64 292, !41, i64 296, !41, i64 300, !41, i64 304, !41, i64 308, !41, i64 312, !41, i64 316, !39, i64 320, !37, i64 324, !37, i64 336, !37, i64 348, !37, i64 360, !37, i64 372, !37, i64 384, !37, i64 400, !37, i64 416, !41, i64 428, !37, i64 432, !37, i64 444, !37, i64 456, !41, i64 472, !37, i64 476, !37, i64 492, !37, i64 504, !37, i64 520, !37, i64 904, !39, i64 1096, !39, i64 1100, !39, i64 1104, !39, i64 1108, !37, i64 1112, !37, i64 1124, !37, i64 1136, !37, i64 1148, !37, i64 1160, !37, i64 1172, !37, i64 1184, !37, i64 1196, !37, i64 1208, !37, i64 1220, !37, i64 1232, !37, i64 1244, !41, i64 1256, !41, i64 1260, !37, i64 1264, !37, i64 1276, !37, i64 1288, !37, i64 1300, !37, i64 1312, !37, i64 1324, !41, i64 1336, !41, i64 1340, !37, i64 1344, !37, i64 1356, !37, i64 1368, !39, i64 1380, !39, i64 1384, !39, i64 1388, !37, i64 1392, !39, i64 1404, !39, i64 1408, !39, i64 1412, !37, i64 1416, !41, i64 1428, !37, i64 1432, !37, i64 1433, !40, i64 1434, !40, i64 1436, !40, i64 1438, !39, i64 1440, !39, i64 1444, !39, i64 1448, !39, i64 1452, !36, i64 1456, !36, i64 1464}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"short", !37, i64 0}
!41 = !{!"float", !37, i64 0}
!42 = !{!43, !41, i64 224}
!43 = !{!"Material", !44, i64 0, !36, i64 120, !40, i64 128, !40, i64 130, !41, i64 132, !41, i64 136, !41, i64 140, !41, i64 144, !41, i64 148, !41, i64 152, !41, i64 156, !41, i64 160, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180, !41, i64 184, !41, i64 188, !41, i64 192, !41, i64 196, !41, i64 200, !41, i64 204, !41, i64 208, !41, i64 212, !41, i64 216, !41, i64 220, !45, i64 224, !46, i64 312, !41, i64 328, !41, i64 332, !41, i64 336, !41, i64 340, !41, i64 344, !41, i64 348, !41, i64 352, !40, i64 356, !40, i64 358, !40, i64 360, !37, i64 362, !37, i64 363, !41, i64 364, !41, i64 368, !40, i64 372, !40, i64 374, !41, i64 376, !41, i64 380, !41, i64 384, !41, i64 388, !40, i64 392, !40, i64 394, !39, i64 396, !39, i64 400, !39, i64 404, !39, i64 408, !40, i64 412, !40, i64 414, !40, i64 416, !40, i64 418, !41, i64 420, !41, i64 424, !41, i64 428, !41, i64 432, !41, i64 436, !41, i64 440, !41, i64 444, !41, i64 448, !41, i64 452, !41, i64 456, !37, i64 460, !41, i64 524, !41, i64 528, !41, i64 532, !39, i64 536, !37, i64 540, !37, i64 541, !37, i64 542, !37, i64 543, !40, i64 544, !40, i64 546, !40, i64 548, !37, i64 550, !37, i64 551, !40, i64 552, !40, i64 554, !41, i64 556, !41, i64 560, !37, i64 564, !41, i64 580, !41, i64 584, !40, i64 588, !40, i64 590, !36, i64 592, !36, i64 600, !37, i64 608, !37, i64 609, !37, i64 610, !37, i64 611, !40, i64 612, !40, i64 614, !41, i64 616, !41, i64 620, !37, i64 624, !36, i64 768, !36, i64 776, !36, i64 784, !36, i64 792, !41, i64 800, !41, i64 804, !41, i64 808, !41, i64 812, !41, i64 816, !40, i64 820, !40, i64 822, !37, i64 824, !37, i64 836, !41, i64 848, !41, i64 852, !41, i64 856, !41, i64 860, !41, i64 864, !41, i64 868, !41, i64 872, !40, i64 876, !40, i64 878, !39, i64 880, !40, i64 884, !40, i64 886, !37, i64 888, !40, i64 904, !40, i64 906, !40, i64 908, !40, i64 910, !40, i64 912, !37, i64 914, !36, i64 920, !47, i64 928}
!44 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !40, i64 98, !39, i64 100, !39, i64 104, !39, i64 108, !36, i64 112}
!45 = !{!"VolumeSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !37, i64 16, !37, i64 28, !37, i64 40, !41, i64 52, !41, i64 56, !41, i64 60, !40, i64 64, !40, i64 66, !40, i64 68, !40, i64 70, !41, i64 72, !41, i64 76, !41, i64 80, !41, i64 84}
!46 = !{!"GameSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!47 = !{!"ListBase", !36, i64 0, !36, i64 8}
!48 = !{!41, !41, i64 0}
!49 = !{!43, !41, i64 276}
!50 = !{!43, !39, i64 880}
!51 = !{!35, !36, i64 24}
!52 = !{!53, !36, i64 16}
!53 = !{!"ObjectInstanceRen", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !39, i64 40, !39, i64 44, !39, i64 48, !37, i64 52, !37, i64 116, !37, i64 180, !40, i64 216, !37, i64 220, !37, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !39, i64 264, !36, i64 272, !39, i64 280}
!54 = !{!55, !36, i64 16}
!55 = !{!"ObjectRen", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !37, i64 56, !39, i64 80, !39, i64 84, !39, i64 88, !39, i64 92, !39, i64 96, !39, i64 100, !39, i64 104, !39, i64 108, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !39, i64 168, !39, i64 172, !39, i64 176, !37, i64 180, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272}
!56 = !{!57, !40, i64 136}
!57 = !{!"Object", !44, i64 0, !36, i64 120, !36, i64 128, !40, i64 136, !40, i64 138, !39, i64 140, !39, i64 144, !39, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !58, i64 312, !36, i64 360, !47, i64 368, !47, i64 384, !47, i64 400, !47, i64 416, !39, i64 432, !39, i64 436, !36, i64 440, !36, i64 448, !39, i64 456, !39, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !41, i64 616, !41, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !39, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !37, i64 966, !37, i64 967, !39, i64 968, !39, i64 972, !39, i64 976, !39, i64 980, !39, i64 984, !41, i64 988, !41, i64 992, !41, i64 996, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !41, i64 1028, !41, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !37, i64 1042, !37, i64 1043, !40, i64 1044, !37, i64 1046, !37, i64 1047, !41, i64 1048, !41, i64 1052, !47, i64 1056, !47, i64 1072, !47, i64 1088, !47, i64 1104, !41, i64 1120, !40, i64 1124, !40, i64 1126, !37, i64 1128, !39, i64 1144, !39, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !40, i64 1162, !37, i64 1164, !47, i64 1176, !47, i64 1192, !47, i64 1208, !47, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !40, i64 1266, !41, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !59, i64 1304, !59, i64 1312, !39, i64 1320, !39, i64 1324, !47, i64 1328, !47, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !47, i64 1400, !36, i64 1416}
!58 = !{!"bAnimVizSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44}
!59 = !{!"long", !37, i64 0}
!60 = !{!"volumetric.c:metadensity"}
!61 = !{!57, !36, i64 296}
!62 = !{!36, !36, i64 0}
!63 = !{!64, !41, i64 40}
!64 = !{!"MetaElem", !36, i64 0, !36, i64 8, !36, i64 16, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !37, i64 44, !41, i64 60, !41, i64 64, !41, i64 68, !41, i64 72, !41, i64 76, !41, i64 80, !41, i64 84, !36, i64 88, !36, i64 96}
!65 = !{!64, !40, i64 24}
!66 = !{!64, !41, i64 68}
!67 = !{!64, !41, i64 64}
!68 = !{!64, !41, i64 60}
!69 = !{!64, !41, i64 72}
!70 = !{!64, !40, i64 26}
!71 = !{!64, !41, i64 80}
!72 = distinct !{!72, !73}
!73 = !{!"llvm.loop.mustprogress"}
!74 = !{!75, !41, i64 236}
!75 = !{!"MetaBall", !44, i64 0, !36, i64 120, !47, i64 128, !47, i64 144, !36, i64 160, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 185, !40, i64 186, !40, i64 188, !40, i64 190, !37, i64 192, !37, i64 204, !37, i64 216, !41, i64 228, !41, i64 232, !41, i64 236, !36, i64 240}
!76 = !{!77, !36, i64 24}
!77 = !{!"GroupObject", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !40, i64 32, !37, i64 34}
!78 = distinct !{!78, !73}
!79 = !{!"volumetric.c:zero_v3"}
!80 = !{!"volumetric.c:vol_shade_one_lamp"}
!81 = !{!82, !39, i64 44}
!82 = !{!"LampRen", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !37, i64 28, !40, i64 40, !39, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !41, i64 64, !41, i64 68, !41, i64 72, !41, i64 76, !41, i64 80, !39, i64 84, !41, i64 88, !41, i64 92, !37, i64 96, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !41, i64 128, !40, i64 132, !41, i64 136, !41, i64 140, !36, i64 144, !40, i64 152, !40, i64 154, !41, i64 156, !40, i64 160, !40, i64 162, !40, i64 164, !40, i64 166, !40, i64 168, !41, i64 172, !41, i64 176, !41, i64 180, !41, i64 184, !40, i64 188, !40, i64 190, !40, i64 192, !40, i64 194, !40, i64 196, !40, i64 198, !40, i64 200, !37, i64 202, !37, i64 204, !41, i64 208, !41, i64 212, !41, i64 216, !41, i64 220, !36, i64 224, !36, i64 232, !36, i64 240, !37, i64 248, !41, i64 284, !37, i64 288, !41, i64 300, !37, i64 304, !37, i64 368, !37, i64 404, !41, i64 500, !36, i64 504, !37, i64 512, !37, i64 520, !39, i64 664, !39, i64 668}
!83 = !{!82, !39, i64 84}
!84 = !{!53, !39, i64 48}
!85 = !{!35, !39, i64 1440}
!86 = !{!82, !41, i64 76}
!87 = !{!35, !40, i64 96}
!88 = !{!82, !40, i64 40}
!89 = !{!43, !40, i64 292}
!90 = !{!43, !40, i64 290}
!91 = !{i32 0, i32 2}
!92 = !{!93, !36, i64 136}
!93 = !{!"Isect", !37, i64 0, !37, i64 12, !41, i64 24, !37, i64 28, !37, i64 40, !37, i64 52, !37, i64 76, !39, i64 88, !39, i64 92, !39, i64 96, !39, i64 100, !36, i64 104, !41, i64 112, !41, i64 116, !39, i64 120, !94, i64 128, !94, i64 144, !36, i64 160, !36, i64 168}
!94 = !{!"", !36, i64 0, !36, i64 8}
!95 = !{!96, !36, i64 48}
!96 = !{!"VlakRen", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !36, i64 48, !37, i64 56, !37, i64 57, !37, i64 58, !39, i64 60}
!97 = !{!43, !40, i64 128}
!98 = !{!43, !41, i64 284}
!99 = !{!"volumetric.c:add_v3_v3"}
!100 = !{!35, !40, i64 56}
!101 = !{!93, !36, i64 128}
!102 = !{!93, !41, i64 24}
!103 = !{!35, !36, i64 8}
!104 = !{!105, !41, i64 32}
!105 = !{!"ShadeResult", !37, i64 0, !37, i64 16, !41, i64 32, !41, i64 36, !41, i64 40, !37, i64 44, !37, i64 56, !37, i64 68, !37, i64 80, !37, i64 92, !37, i64 108, !37, i64 120, !37, i64 132, !37, i64 144, !37, i64 156, !37, i64 168, !37, i64 180, !37, i64 196}
!106 = !{!"volumetric.c:vol_get_bounds"}
!107 = !{!93, !39, i64 88}
!108 = !{!93, !36, i64 160}
!109 = !{!93, !39, i64 92}
!110 = !{!93, !39, i64 100}
!111 = !{!112, !36, i64 5656}
!112 = !{!"Render", !36, i64 0, !36, i64 8, !37, i64 16, !39, i64 92, !40, i64 96, !40, i64 98, !40, i64 100, !40, i64 102, !37, i64 104, !36, i64 112, !36, i64 120, !47, i64 128, !39, i64 144, !39, i64 148, !39, i64 152, !113, i64 156, !114, i64 172, !41, i64 188, !41, i64 192, !41, i64 196, !39, i64 200, !39, i64 204, !39, i64 208, !39, i64 212, !41, i64 216, !41, i64 220, !41, i64 224, !41, i64 228, !41, i64 232, !41, i64 236, !37, i64 240, !37, i64 252, !37, i64 288, !37, i64 352, !37, i64 416, !37, i64 480, !41, i64 544, !41, i64 548, !36, i64 552, !37, i64 560, !37, i64 816, !36, i64 1072, !37, i64 1080, !36, i64 1088, !36, i64 1096, !115, i64 1104, !122, i64 5088, !36, i64 5616, !39, i64 5624, !39, i64 5628, !47, i64 5632, !36, i64 5648, !36, i64 5656, !36, i64 5664, !36, i64 5672, !41, i64 5680, !36, i64 5688, !47, i64 5696, !41, i64 5712, !41, i64 5716, !39, i64 5720, !39, i64 5724, !39, i64 5728, !39, i64 5732, !39, i64 5736, !36, i64 5744, !47, i64 5752, !47, i64 5768, !47, i64 5784, !36, i64 5800, !47, i64 5808, !39, i64 5824, !36, i64 5832, !36, i64 5840, !36, i64 5848, !36, i64 5856, !36, i64 5864, !47, i64 5872, !36, i64 5888, !47, i64 5896, !47, i64 5912, !36, i64 5928, !36, i64 5936, !36, i64 5944, !36, i64 5952, !36, i64 5960, !36, i64 5968, !36, i64 5976, !36, i64 5984, !36, i64 5992, !36, i64 6000, !36, i64 6008, !36, i64 6016, !36, i64 6024, !36, i64 6032, !36, i64 6040, !36, i64 6048, !36, i64 6056, !123, i64 6064, !36, i64 6216, !36, i64 6224, !36, i64 6232}
!113 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!114 = !{!"rctf", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!115 = !{!"RenderData", !116, i64 0, !36, i64 248, !36, i64 256, !119, i64 264, !120, i64 328, !39, i64 400, !39, i64 404, !39, i64 408, !41, i64 412, !39, i64 416, !39, i64 420, !39, i64 424, !39, i64 428, !40, i64 432, !40, i64 434, !41, i64 436, !41, i64 440, !41, i64 444, !41, i64 448, !41, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !39, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !39, i64 484, !39, i64 488, !40, i64 492, !40, i64 494, !39, i64 496, !39, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !37, i64 514, !37, i64 515, !39, i64 516, !39, i64 520, !39, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !114, i64 544, !114, i64 560, !113, i64 576, !47, i64 592, !40, i64 608, !40, i64 610, !41, i64 612, !41, i64 616, !41, i64 620, !41, i64 624, !39, i64 628, !41, i64 632, !41, i64 636, !41, i64 640, !41, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !41, i64 660, !41, i64 664, !40, i64 668, !40, i64 670, !41, i64 672, !41, i64 676, !37, i64 680, !39, i64 1704, !40, i64 1708, !40, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !39, i64 2520, !40, i64 2524, !40, i64 2526, !41, i64 2528, !41, i64 2532, !40, i64 2536, !40, i64 2538, !41, i64 2540, !40, i64 2544, !40, i64 2546, !39, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !41, i64 2560, !41, i64 2564, !36, i64 2568, !39, i64 2576, !41, i64 2580, !37, i64 2584, !121, i64 2616, !39, i64 3976, !39, i64 3980}
!116 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !40, i64 8, !40, i64 10, !41, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !117, i64 24, !118, i64 184}
!117 = !{!"ColorManagedViewSettings", !39, i64 0, !39, i64 4, !37, i64 8, !37, i64 72, !41, i64 136, !41, i64 140, !36, i64 144, !36, i64 152}
!118 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!119 = !{!"QuicktimeCodecSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !40, i64 48, !40, i64 50, !39, i64 52, !39, i64 56, !39, i64 60}
!120 = !{!"FFMpegCodecData", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !41, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !36, i64 64}
!121 = !{!"BakeData", !116, i64 0, !37, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !41, i64 1280, !41, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!122 = !{!"World", !44, i64 0, !36, i64 120, !40, i64 128, !40, i64 130, !40, i64 132, !40, i64 134, !41, i64 136, !41, i64 140, !41, i64 144, !41, i64 148, !41, i64 152, !41, i64 156, !41, i64 160, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180, !41, i64 184, !41, i64 188, !41, i64 192, !41, i64 196, !40, i64 200, !40, i64 202, !40, i64 204, !40, i64 206, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !41, i64 216, !41, i64 220, !41, i64 224, !41, i64 228, !41, i64 232, !41, i64 236, !41, i64 240, !41, i64 244, !41, i64 248, !41, i64 252, !41, i64 256, !41, i64 260, !40, i64 264, !40, i64 266, !40, i64 268, !40, i64 270, !41, i64 272, !41, i64 276, !41, i64 280, !41, i64 284, !40, i64 288, !40, i64 290, !40, i64 292, !40, i64 294, !41, i64 296, !41, i64 300, !41, i64 304, !41, i64 308, !41, i64 312, !41, i64 316, !41, i64 320, !40, i64 324, !40, i64 326, !40, i64 328, !40, i64 330, !40, i64 332, !40, i64 334, !36, i64 336, !36, i64 344, !36, i64 352, !37, i64 360, !40, i64 504, !40, i64 506, !37, i64 508, !36, i64 512, !36, i64 520}
!123 = !{!"RenderStats", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !40, i64 28, !40, i64 30, !40, i64 32, !40, i64 34, !40, i64 36, !40, i64 38, !37, i64 40, !124, i64 48, !124, i64 56, !36, i64 64, !36, i64 72, !37, i64 80, !41, i64 144, !41, i64 148}
!124 = !{!"double", !37, i64 0}
!125 = !{!"volumetric.c:vol_get_transmittance"}
!126 = !{!43, !41, i64 296}
!127 = !{!43, !40, i64 288}
!128 = !{!35, !40, i64 1434}
!129 = distinct !{!129, !73}
!130 = !{!"volumetric.c:copy_v3_v3"}
!131 = !{!"volumetric.c:rgb_to_luma_y"}
!132 = !{!"volumetric.c:volume_trace"}
!133 = !{!35, !39, i64 1408}
!134 = !{!43, !39, i64 396}
!135 = !{!136, !36, i64 16}
!136 = !{!"MatInside", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!137 = distinct !{!137, !73}
!138 = !{!112, !36, i64 5896}
!139 = !{!136, !36, i64 24}
!140 = !{!35, !36, i64 32}
!141 = !{!"volumetric.c:dot_v3v3"}
!142 = !{!"volumetric.c:mul_v3_fl"}
!143 = !{!"volumetric.c:negate_v3"}
!144 = !{!"volumetric.c:vol_get_shadow"}
!145 = !{!82, !36, i64 232}
!146 = !{!112, !41, i64 5680}
!147 = !{!93, !39, i64 96}
!148 = !{!"volumetric.c:len_v3v3"}
!149 = !{!"volumetric.c:mul_v3_v3v3"}
!150 = !{!"volumetric.c:normalize_v3"}
!151 = !{!"volumetric.c:vol_get_phasefunc"}
!152 = !{!"volumetric.c:vol_get_reflection_color"}
!153 = !{!43, !41, i64 232}
!154 = !{!43, !41, i64 236}
!155 = !{!"volumetric.c:sub_v3_v3v3"}
!156 = !{!"volumetric.c:len_v3"}
!157 = !{!"volumetric.c:normalize_v3_v3"}
!158 = !{!"volumetric.c:mul_v3_v3fl"}
!159 = !{!"volumetric.c:vol_get_sigma_t"}
!160 = !{!"volumetric.c:vol_trace_behind"}
!161 = !{!93, !36, i64 144}
!162 = !{!93, !36, i64 152}
!163 = !{!39, !39, i64 0}
!164 = !{!"volumetric.c:copy_v4_v4"}
!165 = !{!"volumetric.c:volumeintegrate"}
!166 = !{!43, !41, i64 280}
!167 = !{!53, !36, i64 248}
!168 = distinct !{!168, !73}
!169 = !{!"volumetric.c:shade_intersection"}
!170 = !{!35, !39, i64 1388}
!171 = !{!35, !39, i64 1448}
!172 = !{!35, !39, i64 1452}
!173 = !{!"volumetric.c:vol_get_transmittance_seg"}
!174 = !{!"volumetric.c:vol_get_emission"}
!175 = !{!43, !41, i64 228}
!176 = !{!"volumetric.c:vol_get_precached_scattering"}
!177 = !{!178, !36, i64 32}
!178 = !{!"VolumePrecache", !37, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48}
!179 = !{!178, !36, i64 40}
!180 = !{!178, !36, i64 48}
