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
%struct.Isect = type { [3 x float], [3 x float], float, [3 x float], [3 x float], [6 x i32], [3 x float], i32, i32, i32, i32, ptr, float, float, i32, %struct.anon, %struct.anon, ptr, ptr }
%struct.anon = type { ptr, ptr }
%struct.GroupObject = type { ptr, ptr, ptr, ptr, i16, [6 x i8] }
%struct.LampRen = type { ptr, ptr, float, float, float, [3 x float], i16, i32, float, float, float, float, float, float, float, float, float, i32, float, float, [3 x float], float, float, float, float, float, float, i16, float, float, ptr, i16, i16, float, i16, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, [1 x i16], [1 x i16], float, float, float, float, ptr, ptr, ptr, [3 x [3 x float]], float, [3 x float], float, [4 x [4 x float]], [3 x [3 x float]], [8 x [3 x float]], float, ptr, [1 x ptr], [18 x ptr], i32, i32 }
%struct.VlakRen = type { ptr, ptr, ptr, ptr, [3 x float], ptr, i8, i8, i8, i32 }
%struct.ShadeResult = type { [4 x float], [4 x float], float, float, float, [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float] }
%struct.MatInside = type { ptr, ptr, ptr, ptr }
%struct.VolumePrecache = type { [3 x i32], ptr, ptr, ptr, ptr, ptr }

@R = external global %struct.Render, align 8
@__const.vol_shade_one_lamp.tr = private unnamed_addr constant [3 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00], align 4

; Function Attrs: nounwind uwtable
define dso_local float @vol_get_density(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4 x [4 x float]], align 16
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x [3 x float]], align 16
  %7 = alloca [3 x float], align 4
  %8 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #7
  %9 = load ptr, ptr %0, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.Material, ptr %9, i64 0, i32 27
  %11 = load float, ptr %10, align 8, !tbaa !42
  store float %11, ptr %8, align 4, !tbaa !48
  %12 = getelementptr inbounds %struct.Material, ptr %9, i64 0, i32 27, i32 7
  %13 = load float, ptr %12, align 4, !tbaa !49
  %14 = getelementptr inbounds %struct.Material, ptr %9, i64 0, i32 125
  %15 = load i32, ptr %14, align 8, !tbaa !50
  %16 = and i32 %15, 128
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  call void @do_volume_tex(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 128, ptr noundef null, ptr noundef nonnull %8, ptr noundef nonnull @R) #7
  br label %19

19:                                               ; preds = %18, %2
  %20 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !51
  %22 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !52
  %24 = getelementptr inbounds %struct.ObjectRen, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !54
  %26 = getelementptr inbounds %struct.Object, ptr %25, i64 0, i32 3
  %27 = load i16, ptr %26, align 8, !tbaa !56
  %28 = icmp eq i16 %27, 5
  br i1 %28, label %29, label %161

29:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #7
  %30 = getelementptr inbounds %struct.Object, ptr %25, i64 0, i32 19
  %31 = load ptr, ptr %30, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #7
  %32 = load float, ptr %1, align 4, !tbaa !48
  store float %32, ptr %5, align 4, !tbaa !48
  %33 = getelementptr inbounds float, ptr %5, i64 1
  %34 = getelementptr inbounds float, ptr %1, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !48
  store float %35, ptr %33, align 4, !tbaa !48
  %36 = getelementptr inbounds float, ptr %5, i64 2
  %37 = getelementptr inbounds float, ptr %1, i64 2
  %38 = load float, ptr %37, align 4, !tbaa !48
  store float %38, ptr %36, align 4, !tbaa !48
  %39 = getelementptr inbounds %struct.Object, ptr %25, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %3, ptr noundef nonnull getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 32), ptr noundef nonnull %39) #7
  %40 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %4, ptr noundef nonnull %3) #7
  call void @mul_m4_v3(ptr noundef nonnull %4, ptr noundef nonnull %5) #7
  %41 = getelementptr inbounds %struct.MetaBall, ptr %31, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !61
  %43 = icmp eq ptr %42, null
  br i1 %43, label %150, label %44

44:                                               ; preds = %29
  %45 = getelementptr inbounds float, ptr %7, i64 1
  %46 = getelementptr inbounds float, ptr %7, i64 2
  br label %47

47:                                               ; preds = %44, %146
  %48 = phi ptr [ %42, %44 ], [ %148, %146 ]
  %49 = phi float [ 0.000000e+00, %44 ], [ %147, %146 ]
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #7
  %50 = getelementptr inbounds %struct.MetaElem, ptr %48, i64 0, i32 7
  %51 = load float, ptr %50, align 8, !tbaa !62
  %52 = load float, ptr %5, align 4, !tbaa !48
  %53 = fsub float %51, %52
  store float %53, ptr %7, align 4, !tbaa !48
  %54 = getelementptr inbounds %struct.MetaElem, ptr %48, i64 0, i32 8
  %55 = load float, ptr %54, align 4, !tbaa !64
  %56 = load float, ptr %33, align 4, !tbaa !48
  %57 = fsub float %55, %56
  store float %57, ptr %45, align 4, !tbaa !48
  %58 = getelementptr inbounds %struct.MetaElem, ptr %48, i64 0, i32 9
  %59 = load float, ptr %58, align 8, !tbaa !65
  %60 = load float, ptr %36, align 4, !tbaa !48
  %61 = fsub float %59, %60
  store float %61, ptr %46, align 4, !tbaa !48
  %62 = getelementptr inbounds %struct.MetaElem, ptr %48, i64 0, i32 10
  call void @quat_to_mat3(ptr noundef nonnull %6, ptr noundef nonnull %62) #7
  call void @transpose_m3(ptr noundef nonnull %6) #7
  call void @mul_m3_v3(ptr noundef nonnull %6, ptr noundef nonnull %7) #7
  %63 = getelementptr inbounds %struct.MetaElem, ptr %48, i64 0, i32 3
  %64 = load i16, ptr %63, align 8, !tbaa !66
  switch i16 %64, label %120 [
    i16 6, label %65
    i16 7, label %78
    i16 5, label %92
    i16 4, label %106
  ]

65:                                               ; preds = %47
  %66 = getelementptr inbounds %struct.MetaElem, ptr %48, i64 0, i32 11
  %67 = load float, ptr %66, align 4, !tbaa !67
  %68 = load float, ptr %7, align 4, !tbaa !48
  %69 = fdiv float %68, %67
  store float %69, ptr %7, align 4, !tbaa !48
  %70 = getelementptr inbounds %struct.MetaElem, ptr %48, i64 0, i32 12
  %71 = load float, ptr %70, align 8, !tbaa !68
  %72 = load float, ptr %45, align 4, !tbaa !48
  %73 = fdiv float %72, %71
  store float %73, ptr %45, align 4, !tbaa !48
  %74 = getelementptr inbounds %struct.MetaElem, ptr %48, i64 0, i32 13
  %75 = load float, ptr %74, align 4, !tbaa !69
  %76 = load float, ptr %46, align 4, !tbaa !48
  %77 = fdiv float %76, %75
  store float %77, ptr %46, align 4, !tbaa !48
  br label %120

78:                                               ; preds = %47
  %79 = load float, ptr %46, align 4, !tbaa !48
  %80 = getelementptr inbounds %struct.MetaElem, ptr %48, i64 0, i32 13
  %81 = load float, ptr %80, align 4, !tbaa !69
  %82 = fcmp ogt float %79, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = fsub float %79, %81
  br label %90

85:                                               ; preds = %78
  %86 = fneg float %81
  %87 = fcmp olt float %79, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = fadd float %79, %81
  br label %90

90:                                               ; preds = %88, %85, %83
  %91 = phi float [ %84, %83 ], [ %89, %88 ], [ 0.000000e+00, %85 ]
  store float %91, ptr %46, align 4, !tbaa !48
  br label %92

92:                                               ; preds = %90, %47
  %93 = load float, ptr %45, align 4, !tbaa !48
  %94 = getelementptr inbounds %struct.MetaElem, ptr %48, i64 0, i32 12
  %95 = load float, ptr %94, align 8, !tbaa !68
  %96 = fcmp ogt float %93, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = fsub float %93, %95
  br label %104

99:                                               ; preds = %92
  %100 = fneg float %95
  %101 = fcmp olt float %93, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = fadd float %93, %95
  br label %104

104:                                              ; preds = %102, %99, %97
  %105 = phi float [ %98, %97 ], [ %103, %102 ], [ 0.000000e+00, %99 ]
  store float %105, ptr %45, align 4, !tbaa !48
  br label %106

106:                                              ; preds = %104, %47
  %107 = load float, ptr %7, align 4, !tbaa !48
  %108 = getelementptr inbounds %struct.MetaElem, ptr %48, i64 0, i32 11
  %109 = load float, ptr %108, align 4, !tbaa !67
  %110 = fcmp ogt float %107, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %106
  %112 = fsub float %107, %109
  br label %118

113:                                              ; preds = %106
  %114 = fneg float %109
  %115 = fcmp olt float %107, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  %117 = fadd float %107, %109
  br label %118

118:                                              ; preds = %116, %113, %111
  %119 = phi float [ %112, %111 ], [ %117, %116 ], [ 0.000000e+00, %113 ]
  store float %119, ptr %7, align 4, !tbaa !48
  br label %120

120:                                              ; preds = %118, %65, %47
  %121 = load float, ptr %7, align 4, !tbaa !48
  %122 = load float, ptr %45, align 4, !tbaa !48
  %123 = fmul float %122, %122
  %124 = call float @llvm.fmuladd.f32(float %121, float %121, float %123)
  %125 = load float, ptr %46, align 4, !tbaa !48
  %126 = call float @llvm.fmuladd.f32(float %125, float %125, float %124)
  %127 = getelementptr inbounds %struct.MetaElem, ptr %48, i64 0, i32 14
  %128 = load float, ptr %127, align 8, !tbaa !70
  %129 = fmul float %128, %128
  %130 = fdiv float %126, %129
  %131 = fsub float 1.000000e+00, %130
  %132 = fcmp ogt float %131, 0.000000e+00
  br i1 %132, label %133, label %146

133:                                              ; preds = %120
  %134 = getelementptr inbounds %struct.MetaElem, ptr %48, i64 0, i32 4
  %135 = load i16, ptr %134, align 2, !tbaa !71
  %136 = and i16 %135, 2
  %137 = icmp eq i16 %136, 0
  %138 = getelementptr inbounds %struct.MetaElem, ptr %48, i64 0, i32 16
  %139 = load float, ptr %138, align 8, !tbaa !72
  %140 = fneg float %139
  %141 = select i1 %137, float %139, float %140
  %142 = fmul float %131, %141
  %143 = fmul float %131, %142
  %144 = fmul float %131, %143
  %145 = fadd float %49, %144
  br label %146

146:                                              ; preds = %133, %120
  %147 = phi float [ %145, %133 ], [ %49, %120 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #7
  %148 = load ptr, ptr %48, align 8, !tbaa !61
  %149 = icmp eq ptr %148, null
  br i1 %149, label %150, label %47, !llvm.loop !73

150:                                              ; preds = %146, %29
  %151 = phi float [ 0.000000e+00, %29 ], [ %147, %146 ]
  %152 = getelementptr inbounds %struct.MetaBall, ptr %31, i64 0, i32 17
  %153 = load float, ptr %152, align 4, !tbaa !76
  %154 = fsub float %151, %153
  %155 = fcmp olt float %154, 0.000000e+00
  %156 = select i1 %155, float 0.000000e+00, float %154
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #7
  %157 = fcmp olt float %156, 1.000000e+00
  br i1 %157, label %158, label %161

158:                                              ; preds = %150
  %159 = load float, ptr %8, align 4, !tbaa !48
  %160 = fmul float %156, %159
  store float %160, ptr %8, align 4, !tbaa !48
  br label %161

161:                                              ; preds = %150, %158, %19
  %162 = load float, ptr %8, align 4, !tbaa !48
  %163 = fmul float %13, %162
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #7
  ret float %163
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @do_volume_tex(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @vol_get_scattering(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca float, align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca %struct.Isect, align 8
  %13 = alloca [3 x float], align 4
  store float 0.000000e+00, ptr %1, align 4, !tbaa !48
  %14 = getelementptr inbounds float, ptr %1, i64 1
  store float 0.000000e+00, ptr %14, align 4, !tbaa !48
  %15 = getelementptr inbounds float, ptr %1, i64 2
  store float 0.000000e+00, ptr %15, align 4, !tbaa !48
  %16 = tail call ptr @get_lights(ptr noundef %0) #7
  %17 = load ptr, ptr %16, align 8, !tbaa !61
  %18 = icmp eq ptr %17, null
  br i1 %18, label %290, label %19

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 3
  %21 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 117
  %22 = getelementptr inbounds float, ptr %13, i64 1
  %23 = getelementptr inbounds float, ptr %13, i64 2
  %24 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 15
  %25 = getelementptr inbounds float, ptr %7, i64 1
  %26 = getelementptr inbounds float, ptr %7, i64 2
  %27 = getelementptr inbounds float, ptr %7, i64 1
  %28 = getelementptr inbounds float, ptr %7, i64 2
  %29 = getelementptr inbounds float, ptr %10, i64 1
  %30 = getelementptr inbounds float, ptr %2, i64 1
  %31 = getelementptr inbounds float, ptr %10, i64 2
  %32 = getelementptr inbounds float, ptr %2, i64 2
  %33 = getelementptr inbounds %struct.Isect, ptr %12, i64 0, i32 15, i32 1
  %34 = getelementptr inbounds float, ptr %9, i64 1
  %35 = getelementptr inbounds float, ptr %9, i64 2
  %36 = getelementptr inbounds float, ptr %3, i64 1
  %37 = getelementptr inbounds float, ptr %3, i64 2
  %38 = getelementptr inbounds float, ptr %11, i64 1
  %39 = getelementptr inbounds float, ptr %11, i64 2
  %40 = getelementptr inbounds float, ptr %13, i64 1
  %41 = getelementptr inbounds float, ptr %13, i64 2
  br label %42

42:                                               ; preds = %19, %287
  %43 = phi ptr [ %17, %19 ], [ %288, %287 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %13, i8 0, i64 12, i1 false)
  %44 = getelementptr inbounds %struct.GroupObject, ptr %43, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !78
  %46 = icmp eq ptr %45, null
  br i1 %46, label %287, label %47

47:                                               ; preds = %42
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %9, ptr noundef nonnull align 4 dereferenceable(12) @__const.vol_shade_one_lamp.tr, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #7
  %48 = getelementptr inbounds %struct.LampRen, ptr %45, i64 0, i32 7
  %49 = load i32, ptr %48, align 4, !tbaa !80
  %50 = and i32 %49, 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.LampRen, ptr %45, i64 0, i32 17
  %54 = load i32, ptr %53, align 4, !tbaa !82
  %55 = load ptr, ptr %20, align 8, !tbaa !51
  %56 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %55, i64 0, i32 7
  %57 = load i32, ptr %56, align 8, !tbaa !83
  %58 = and i32 %57, %54
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %277, label %60

60:                                               ; preds = %52, %47
  %61 = getelementptr inbounds %struct.LampRen, ptr %45, i64 0, i32 17
  %62 = load i32, ptr %61, align 4, !tbaa !82
  %63 = load i32, ptr %21, align 8, !tbaa !84
  %64 = and i32 %63, %62
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %277, label %66

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.LampRen, ptr %45, i64 0, i32 15
  %68 = load float, ptr %67, align 4, !tbaa !85
  %69 = fcmp oeq float %68, 0.000000e+00
  br i1 %69, label %277, label %70

70:                                               ; preds = %66
  %71 = call float @lamp_get_visibility(ptr noundef nonnull %45, ptr noundef %2, ptr noundef nonnull %7, ptr noundef nonnull %8) #7
  %72 = fcmp oeq float %71, 0.000000e+00
  br i1 %72, label %277, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.LampRen, ptr %45, i64 0, i32 8
  %75 = load float, ptr %74, align 4, !tbaa !48
  store float %75, ptr %13, align 4, !tbaa !48
  %76 = getelementptr inbounds %struct.LampRen, ptr %45, i64 0, i32 9
  %77 = load float, ptr %76, align 4, !tbaa !48
  store float %77, ptr %22, align 4, !tbaa !48
  %78 = getelementptr inbounds %struct.LampRen, ptr %45, i64 0, i32 10
  %79 = load float, ptr %78, align 4, !tbaa !48
  store float %79, ptr %23, align 4, !tbaa !48
  %80 = load i32, ptr %48, align 4, !tbaa !80
  %81 = and i32 %80, 256
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %73
  store i16 0, ptr %24, align 8, !tbaa !86
  call void @do_lamp_tex(ptr noundef nonnull %45, ptr noundef nonnull %7, ptr noundef %0, ptr noundef nonnull %13, i32 noundef 256) #7
  br label %84

84:                                               ; preds = %83, %73
  %85 = load float, ptr %13, align 4, !tbaa !48
  %86 = fmul float %71, %85
  store float %86, ptr %13, align 4, !tbaa !48
  %87 = load float, ptr %22, align 4, !tbaa !48
  %88 = fmul float %71, %87
  store float %88, ptr %22, align 4, !tbaa !48
  %89 = load float, ptr %23, align 4, !tbaa !48
  %90 = fmul float %71, %89
  store float %90, ptr %23, align 4, !tbaa !48
  %91 = getelementptr inbounds %struct.LampRen, ptr %45, i64 0, i32 6
  %92 = load i16, ptr %91, align 8, !tbaa !87
  switch i16 %92, label %100 [
    i16 1, label %93
    i16 3, label %93
  ]

93:                                               ; preds = %84, %84
  %94 = getelementptr inbounds %struct.LampRen, ptr %45, i64 0, i32 20
  %95 = load float, ptr %94, align 4, !tbaa !48
  store float %95, ptr %7, align 4, !tbaa !48
  %96 = getelementptr inbounds %struct.LampRen, ptr %45, i64 0, i32 20, i64 1
  %97 = load float, ptr %96, align 4, !tbaa !48
  store float %97, ptr %25, align 4, !tbaa !48
  %98 = getelementptr inbounds %struct.LampRen, ptr %45, i64 0, i32 20, i64 2
  %99 = load float, ptr %98, align 4, !tbaa !48
  store float %99, ptr %26, align 4, !tbaa !48
  br label %100

100:                                              ; preds = %93, %84
  %101 = load float, ptr %7, align 4, !tbaa !48
  %102 = fneg float %101
  store float %102, ptr %7, align 4, !tbaa !48
  %103 = load float, ptr %27, align 4, !tbaa !48
  %104 = fneg float %103
  store float %104, ptr %27, align 4, !tbaa !48
  %105 = load float, ptr %28, align 4, !tbaa !48
  %106 = fneg float %105
  store float %106, ptr %28, align 4, !tbaa !48
  %107 = load ptr, ptr %0, align 8, !tbaa !34
  %108 = getelementptr inbounds %struct.Material, ptr %107, i64 0, i32 27, i32 12
  %109 = load i16, ptr %108, align 4, !tbaa !88
  switch i16 %109, label %180 [
    i16 2, label %110
    i16 1, label %118
    i16 3, label %118
    i16 4, label %118
  ]

110:                                              ; preds = %100
  %111 = call fastcc float @vol_get_shadow(ptr noundef nonnull %0, ptr noundef nonnull %45, ptr noundef %2)
  %112 = load float, ptr %13, align 4, !tbaa !48
  %113 = fmul float %111, %112
  store float %113, ptr %13, align 4, !tbaa !48
  %114 = load float, ptr %22, align 4, !tbaa !48
  %115 = fmul float %111, %114
  store float %115, ptr %22, align 4, !tbaa !48
  %116 = load float, ptr %23, align 4, !tbaa !48
  %117 = fmul float %111, %116
  store float %117, ptr %23, align 4, !tbaa !48
  br label %180

118:                                              ; preds = %100, %100, %100
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %12) #7
  %119 = getelementptr inbounds %struct.Material, ptr %107, i64 0, i32 27, i32 11
  %120 = load i16, ptr %119, align 2, !tbaa !89
  %121 = and i16 %120, 1
  %122 = icmp eq i16 %121, 0
  br i1 %122, label %135, label %123

123:                                              ; preds = %118
  %124 = call fastcc float @vol_get_shadow(ptr noundef nonnull %0, ptr noundef nonnull %45, ptr noundef %2)
  %125 = load float, ptr %13, align 4, !tbaa !48
  %126 = fmul float %124, %125
  store float %126, ptr %13, align 4, !tbaa !48
  %127 = load float, ptr %22, align 4, !tbaa !48
  %128 = fmul float %124, %127
  store float %128, ptr %22, align 4, !tbaa !48
  %129 = load float, ptr %23, align 4, !tbaa !48
  %130 = fmul float %124, %129
  store float %130, ptr %23, align 4, !tbaa !48
  %131 = fmul float %128, 0x3FE6E29740000000
  %132 = call float @llvm.fmuladd.f32(float %126, float 0x3FCB38CDA0000000, float %131)
  %133 = call float @llvm.fmuladd.f32(float %130, float 0x3FB279AAE0000000, float %132)
  %134 = fcmp olt float %133, 0x3F50624DE0000000
  br i1 %134, label %179, label %135

135:                                              ; preds = %123, %118
  %136 = call fastcc i32 @vol_get_bounds(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull %7, ptr noundef nonnull %10, ptr noundef nonnull %12, i32 noundef 1), !range !90
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %178, label %138

138:                                              ; preds = %135
  %139 = load float, ptr %10, align 4, !tbaa !48
  %140 = load float, ptr %2, align 4, !tbaa !48
  %141 = fsub float %139, %140
  %142 = load float, ptr %29, align 4, !tbaa !48
  %143 = load float, ptr %30, align 4, !tbaa !48
  %144 = fsub float %142, %143
  %145 = load float, ptr %31, align 4, !tbaa !48
  %146 = load float, ptr %32, align 4, !tbaa !48
  %147 = fsub float %145, %146
  %148 = fmul float %144, %144
  %149 = call float @llvm.fmuladd.f32(float %141, float %141, float %148)
  %150 = call float @llvm.fmuladd.f32(float %147, float %147, float %149)
  %151 = call float @sqrtf(float noundef %150) #7
  %152 = load ptr, ptr %33, align 8, !tbaa !91
  %153 = getelementptr inbounds %struct.VlakRen, ptr %152, i64 0, i32 5
  %154 = load ptr, ptr %153, align 8, !tbaa !94
  %155 = getelementptr inbounds %struct.Material, ptr %154, i64 0, i32 2
  %156 = load i16, ptr %155, align 8, !tbaa !96
  %157 = icmp eq i16 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %138
  store float 0.000000e+00, ptr %23, align 4, !tbaa !48
  store float 0.000000e+00, ptr %22, align 4, !tbaa !48
  store float 0.000000e+00, ptr %13, align 4, !tbaa !48
  br label %177

159:                                              ; preds = %138
  %160 = load i16, ptr %91, align 8, !tbaa !87
  switch i16 %160, label %161 [
    i16 1, label %166
    i16 3, label %166
  ]

161:                                              ; preds = %159
  %162 = load float, ptr %8, align 4, !tbaa !48
  %163 = fcmp olt float %162, %151
  br i1 %163, label %164, label %166

164:                                              ; preds = %161
  %165 = getelementptr inbounds %struct.LampRen, ptr %45, i64 0, i32 5
  br label %166

166:                                              ; preds = %164, %161, %159, %159
  %167 = phi ptr [ %165, %164 ], [ %10, %159 ], [ %10, %159 ], [ %10, %161 ]
  call fastcc void @vol_get_transmittance(ptr noundef nonnull %0, ptr noundef nonnull %9, ptr noundef nonnull %2, ptr noundef nonnull %167)
  %168 = load float, ptr %13, align 4, !tbaa !48
  %169 = load float, ptr %9, align 4, !tbaa !48
  %170 = fmul float %168, %169
  store float %170, ptr %13, align 4, !tbaa !48
  %171 = load float, ptr %22, align 4, !tbaa !48
  %172 = load float, ptr %34, align 4, !tbaa !48
  %173 = fmul float %171, %172
  store float %173, ptr %22, align 4, !tbaa !48
  %174 = load float, ptr %23, align 4, !tbaa !48
  %175 = load float, ptr %35, align 4, !tbaa !48
  %176 = fmul float %174, %175
  store float %176, ptr %23, align 4, !tbaa !48
  br label %177

177:                                              ; preds = %166, %158
  br i1 %157, label %179, label %178

178:                                              ; preds = %177, %135
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %12) #7
  br label %180

179:                                              ; preds = %177, %123
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %12) #7
  br label %277

180:                                              ; preds = %178, %110, %100
  %181 = load float, ptr %13, align 4, !tbaa !48
  %182 = load float, ptr %22, align 4, !tbaa !48
  %183 = fmul float %182, 0x3FE6E29740000000
  %184 = call float @llvm.fmuladd.f32(float %181, float 0x3FCB38CDA0000000, float %183)
  %185 = load float, ptr %23, align 4, !tbaa !48
  %186 = call float @llvm.fmuladd.f32(float %185, float 0x3FB279AAE0000000, float %184)
  %187 = fcmp olt float %186, 0x3F50624DE0000000
  br i1 %187, label %277, label %188

188:                                              ; preds = %180
  %189 = load float, ptr %7, align 4, !tbaa !48
  %190 = load float, ptr %27, align 4, !tbaa !48
  %191 = fmul float %190, %190
  %192 = call float @llvm.fmuladd.f32(float %189, float %189, float %191)
  %193 = load float, ptr %28, align 4, !tbaa !48
  %194 = call float @llvm.fmuladd.f32(float %193, float %193, float %192)
  %195 = fcmp ogt float %194, 0x38AA95A5C0000000
  br i1 %195, label %196, label %205

196:                                              ; preds = %188
  %197 = call float @sqrtf(float noundef %194) #7
  %198 = fdiv float 1.000000e+00, %197
  %199 = load float, ptr %7, align 4, !tbaa !48
  %200 = fmul float %199, %198
  store float %200, ptr %7, align 4, !tbaa !48
  %201 = load float, ptr %27, align 4, !tbaa !48
  %202 = fmul float %198, %201
  store float %202, ptr %27, align 4, !tbaa !48
  %203 = load float, ptr %28, align 4, !tbaa !48
  %204 = fmul float %198, %203
  br label %206

205:                                              ; preds = %188
  store float 0.000000e+00, ptr %7, align 4, !tbaa !48
  store float 0.000000e+00, ptr %27, align 4, !tbaa !48
  br label %206

206:                                              ; preds = %205, %196
  %207 = phi float [ 0.000000e+00, %205 ], [ %204, %196 ]
  store float %207, ptr %28, align 4, !tbaa !48
  %208 = load ptr, ptr %0, align 8, !tbaa !34
  %209 = getelementptr inbounds %struct.Material, ptr %208, i64 0, i32 27, i32 9
  %210 = load float, ptr %209, align 4, !tbaa !97
  %211 = fcmp oeq float %210, 0.000000e+00
  br i1 %211, label %232, label %212

212:                                              ; preds = %206
  %213 = fmul float %210, 0xBFE19999A0000000
  %214 = fmul float %210, %213
  %215 = fmul float %210, %214
  %216 = call float @llvm.fmuladd.f32(float %210, float 0x3FF8CCCCC0000000, float %215)
  %217 = load float, ptr %3, align 4, !tbaa !48
  %218 = load float, ptr %7, align 4, !tbaa !48
  %219 = load float, ptr %36, align 4, !tbaa !48
  %220 = load float, ptr %27, align 4, !tbaa !48
  %221 = fmul float %219, %220
  %222 = call float @llvm.fmuladd.f32(float %217, float %218, float %221)
  %223 = load float, ptr %37, align 4, !tbaa !48
  %224 = call float @llvm.fmuladd.f32(float %223, float %207, float %222)
  %225 = fmul float %216, %224
  %226 = fneg float %216
  %227 = call float @llvm.fmuladd.f32(float %226, float %216, float 1.000000e+00)
  %228 = fmul float %227, 2.500000e-01
  %229 = fsub float 1.000000e+00, %225
  %230 = fmul float %229, %229
  %231 = fdiv float %228, %230
  br label %232

232:                                              ; preds = %212, %206
  %233 = phi float [ %231, %212 ], [ 2.500000e-01, %206 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  %234 = getelementptr inbounds %struct.Material, ptr %208, i64 0, i32 27, i32 2
  %235 = load float, ptr %234, align 8, !tbaa !98
  store float %235, ptr %5, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  %236 = getelementptr inbounds %struct.Material, ptr %208, i64 0, i32 27, i32 3
  %237 = load float, ptr %236, align 4, !tbaa !99
  store float %237, ptr %6, align 4, !tbaa !48
  %238 = getelementptr inbounds %struct.Material, ptr %208, i64 0, i32 27, i32 6
  %239 = load float, ptr %238, align 4, !tbaa !48
  store float %239, ptr %11, align 4, !tbaa !48
  %240 = getelementptr inbounds %struct.Material, ptr %208, i64 0, i32 27, i32 6, i64 1
  %241 = load float, ptr %240, align 4, !tbaa !48
  store float %241, ptr %38, align 4, !tbaa !48
  %242 = getelementptr inbounds %struct.Material, ptr %208, i64 0, i32 27, i32 6, i64 2
  %243 = load float, ptr %242, align 4, !tbaa !48
  store float %243, ptr %39, align 4, !tbaa !48
  %244 = getelementptr inbounds %struct.Material, ptr %208, i64 0, i32 125
  %245 = load i32, ptr %244, align 8, !tbaa !50
  %246 = and i32 %245, 20
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %249, label %248

248:                                              ; preds = %232
  call void @do_volume_tex(ptr noundef nonnull %0, ptr noundef %2, i32 noundef 20, ptr noundef nonnull %11, ptr noundef nonnull %5, ptr noundef nonnull @R) #7
  br label %249

249:                                              ; preds = %248, %232
  %250 = load ptr, ptr %0, align 8, !tbaa !34
  %251 = getelementptr inbounds %struct.Material, ptr %250, i64 0, i32 125
  %252 = load i32, ptr %251, align 8, !tbaa !50
  %253 = and i32 %252, 32
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %256, label %255

255:                                              ; preds = %249
  call void @do_volume_tex(ptr noundef nonnull %0, ptr noundef %2, i32 noundef 32, ptr noundef null, ptr noundef nonnull %6, ptr noundef nonnull @R) #7
  br label %256

256:                                              ; preds = %255, %249
  %257 = load float, ptr %6, align 4, !tbaa !48
  %258 = load float, ptr %11, align 4, !tbaa !48
  %259 = fmul float %257, %258
  %260 = load float, ptr %5, align 4, !tbaa !48
  %261 = fmul float %259, %260
  store float %261, ptr %11, align 4, !tbaa !48
  %262 = load float, ptr %38, align 4, !tbaa !48
  %263 = fmul float %257, %262
  %264 = fmul float %260, %263
  store float %264, ptr %38, align 4, !tbaa !48
  %265 = load float, ptr %39, align 4, !tbaa !48
  %266 = fmul float %257, %265
  %267 = fmul float %260, %266
  store float %267, ptr %39, align 4, !tbaa !48
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  %268 = fmul float %233, %261
  %269 = load float, ptr %13, align 4, !tbaa !48
  %270 = fmul float %268, %269
  store float %270, ptr %13, align 4, !tbaa !48
  %271 = fmul float %233, %264
  %272 = load float, ptr %22, align 4, !tbaa !48
  %273 = fmul float %271, %272
  store float %273, ptr %22, align 4, !tbaa !48
  %274 = fmul float %233, %267
  %275 = load float, ptr %23, align 4, !tbaa !48
  %276 = fmul float %274, %275
  store float %276, ptr %23, align 4, !tbaa !48
  br label %277

277:                                              ; preds = %52, %60, %66, %70, %179, %180, %256
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #7
  %278 = load float, ptr %13, align 4, !tbaa !48
  %279 = load float, ptr %1, align 4, !tbaa !48
  %280 = fadd float %278, %279
  store float %280, ptr %1, align 4, !tbaa !48
  %281 = load float, ptr %40, align 4, !tbaa !48
  %282 = load float, ptr %14, align 4, !tbaa !48
  %283 = fadd float %281, %282
  store float %283, ptr %14, align 4, !tbaa !48
  %284 = load float, ptr %41, align 4, !tbaa !48
  %285 = load float, ptr %15, align 4, !tbaa !48
  %286 = fadd float %284, %285
  store float %286, ptr %15, align 4, !tbaa !48
  br label %287

287:                                              ; preds = %277, %42
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #7
  %288 = load ptr, ptr %43, align 8, !tbaa !61
  %289 = icmp eq ptr %288, null
  br i1 %289, label %290, label %42, !llvm.loop !100

290:                                              ; preds = %287, %4
  ret void
}

declare ptr @get_lights(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define dso_local void @shade_volume_shadow(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca %struct.Isect, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 4 dereferenceable(12) @__const.vol_shade_one_lamp.tr, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %6) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %6, i8 0, i64 176, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(212) %1, i8 0, i64 212, i1 false)
  %7 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 7
  %8 = load i16, ptr %7, align 8, !tbaa !101
  %9 = icmp eq i16 %8, 0
  %10 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29
  br i1 %9, label %11, label %18

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30
  %13 = call fastcc i32 @vol_get_bounds(ptr noundef %0, ptr noundef nonnull %10, ptr noundef nonnull %12, ptr noundef nonnull %4, ptr noundef nonnull %6, i32 noundef 0), !range !90
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 2
  store float 0.000000e+00, ptr %16, align 4, !tbaa !48
  %17 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 1
  store float 0.000000e+00, ptr %17, align 4, !tbaa !48
  store float 0.000000e+00, ptr %1, align 4, !tbaa !48
  br label %55

18:                                               ; preds = %3, %11
  %19 = phi ptr [ %10, %11 ], [ %2, %3 ]
  %20 = phi ptr [ %4, %11 ], [ %10, %3 ]
  call fastcc void @vol_get_transmittance(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %19, ptr noundef nonnull %20)
  %21 = getelementptr inbounds %struct.Isect, ptr %6, i64 0, i32 15
  %22 = load ptr, ptr %21, align 8, !tbaa !102
  %23 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !51
  %25 = icmp eq ptr %22, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29
  %28 = load float, ptr %4, align 4, !tbaa !48
  store float %28, ptr %27, align 4, !tbaa !48
  %29 = getelementptr inbounds float, ptr %4, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !48
  %31 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29, i64 1
  store float %30, ptr %31, align 4, !tbaa !48
  %32 = getelementptr inbounds float, ptr %4, i64 2
  %33 = load float, ptr %32, align 4, !tbaa !48
  %34 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29, i64 2
  store float %33, ptr %34, align 4, !tbaa !48
  %35 = getelementptr inbounds %struct.Isect, ptr %6, i64 0, i32 2
  %36 = load float, ptr %35, align 8, !tbaa !103
  %37 = getelementptr inbounds %struct.Isect, ptr %2, i64 0, i32 2
  %38 = load float, ptr %37, align 8, !tbaa !103
  %39 = fadd float %36, %38
  store float %39, ptr %37, align 8, !tbaa !103
  %40 = getelementptr inbounds %struct.Isect, ptr %6, i64 0, i32 15, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !91
  %42 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 1
  store ptr %41, ptr %42, align 8, !tbaa !104
  br label %43

43:                                               ; preds = %26, %18
  %44 = load float, ptr %5, align 4, !tbaa !48
  store float %44, ptr %1, align 4, !tbaa !48
  %45 = getelementptr inbounds float, ptr %5, i64 1
  %46 = load float, ptr %45, align 4, !tbaa !48
  %47 = getelementptr inbounds float, ptr %1, i64 1
  store float %46, ptr %47, align 4, !tbaa !48
  %48 = getelementptr inbounds float, ptr %5, i64 2
  %49 = load float, ptr %48, align 4, !tbaa !48
  %50 = getelementptr inbounds float, ptr %1, i64 2
  store float %49, ptr %50, align 4, !tbaa !48
  %51 = fmul float %46, 0x3FE6E29740000000
  %52 = call float @llvm.fmuladd.f32(float %44, float 0x3FCB38CDA0000000, float %51)
  %53 = call float @llvm.fmuladd.f32(float %49, float 0x3FB279AAE0000000, float %52)
  %54 = fsub float 1.000000e+00, %53
  br label %55

55:                                               ; preds = %43, %15
  %56 = phi float [ %54, %43 ], [ 1.000000e+00, %15 ]
  %57 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 3
  store float %56, ptr %57, align 4, !tbaa !48
  %58 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 2
  store float %56, ptr %58, align 4, !tbaa !105
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @vol_get_bounds(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = load float, ptr %1, align 4, !tbaa !48
  store float %7, ptr %4, align 4, !tbaa !48
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !48
  %10 = getelementptr inbounds float, ptr %4, i64 1
  store float %9, ptr %10, align 4, !tbaa !48
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !48
  %13 = getelementptr inbounds float, ptr %4, i64 2
  store float %12, ptr %13, align 4, !tbaa !48
  %14 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 1
  %15 = load float, ptr %2, align 4, !tbaa !48
  store float %15, ptr %14, align 4, !tbaa !48
  %16 = getelementptr inbounds float, ptr %2, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !48
  %18 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 1, i64 1
  store float %17, ptr %18, align 4, !tbaa !48
  %19 = getelementptr inbounds float, ptr %2, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !48
  %21 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 1, i64 2
  store float %20, ptr %21, align 4, !tbaa !48
  %22 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 2
  store float 0x47EFFFFFE0000000, ptr %22, align 8, !tbaa !103
  %23 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 7
  store i32 1, ptr %23, align 8, !tbaa !107
  %24 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 17
  store ptr null, ptr %24, align 8, !tbaa !108
  %25 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 8
  store i32 -1, ptr %25, align 4, !tbaa !109
  %26 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 10
  store i32 0, ptr %26, align 4, !tbaa !110
  %27 = icmp eq i32 %5, 0
  %28 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 9
  br i1 %27, label %29, label %36

29:                                               ; preds = %6
  store i32 2, ptr %28, align 8, !tbaa !111
  %30 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !104
  %32 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 16
  %33 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 16, i32 1
  store ptr %31, ptr %33, align 8, !tbaa !112
  %34 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !51
  store ptr %35, ptr %32, align 8, !tbaa !113
  br label %38

36:                                               ; preds = %6
  store i32 0, ptr %28, align 8, !tbaa !111
  %37 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %37, i8 0, i64 16, i1 false)
  br label %38

38:                                               ; preds = %36, %29
  %39 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !51
  tail call void @RE_instance_rotate_ray(ptr noundef %40, ptr noundef nonnull %4) #7
  %41 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 52), align 8, !tbaa !114
  %42 = tail call i32 @RE_rayobject_raycast(ptr noundef %41, ptr noundef nonnull %4) #7
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %60, label %44

44:                                               ; preds = %38
  %45 = load ptr, ptr %39, align 8, !tbaa !51
  tail call void @RE_instance_rotate_ray_restore(ptr noundef %45, ptr noundef nonnull %4) #7
  %46 = load float, ptr %4, align 8, !tbaa !48
  %47 = load float, ptr %22, align 8, !tbaa !103
  %48 = load float, ptr %14, align 4, !tbaa !48
  %49 = tail call float @llvm.fmuladd.f32(float %47, float %48, float %46)
  store float %49, ptr %3, align 4, !tbaa !48
  %50 = load float, ptr %10, align 4, !tbaa !48
  %51 = load float, ptr %22, align 8, !tbaa !103
  %52 = load float, ptr %18, align 4, !tbaa !48
  %53 = tail call float @llvm.fmuladd.f32(float %51, float %52, float %50)
  %54 = getelementptr inbounds float, ptr %3, i64 1
  store float %53, ptr %54, align 4, !tbaa !48
  %55 = load float, ptr %13, align 8, !tbaa !48
  %56 = load float, ptr %22, align 8, !tbaa !103
  %57 = load float, ptr %21, align 4, !tbaa !48
  %58 = tail call float @llvm.fmuladd.f32(float %56, float %57, float %55)
  %59 = getelementptr inbounds float, ptr %3, i64 2
  store float %58, ptr %59, align 4, !tbaa !48
  br label %60

60:                                               ; preds = %38, %44
  %61 = phi i32 [ 1, %44 ], [ 0, %38 ]
  ret i32 %61
}

; Function Attrs: nounwind uwtable
define internal fastcc void @vol_get_transmittance(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = alloca [3 x float], align 4
  %6 = alloca float, align 4
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #7
  %8 = load float, ptr %2, align 4, !tbaa !48
  store float %8, ptr %7, align 4, !tbaa !48
  %9 = getelementptr inbounds float, ptr %7, i64 1
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !48
  store float %11, ptr %9, align 4, !tbaa !48
  %12 = getelementptr inbounds float, ptr %7, i64 2
  %13 = getelementptr inbounds float, ptr %2, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !48
  store float %14, ptr %12, align 4, !tbaa !48
  %15 = load float, ptr %3, align 4, !tbaa !48
  %16 = fsub float %15, %8
  %17 = getelementptr inbounds float, ptr %3, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !48
  %19 = fsub float %18, %11
  %20 = getelementptr inbounds float, ptr %3, i64 2
  %21 = load float, ptr %20, align 4, !tbaa !48
  %22 = fsub float %21, %14
  %23 = fmul float %19, %19
  %24 = tail call float @llvm.fmuladd.f32(float %16, float %16, float %23)
  %25 = tail call float @llvm.fmuladd.f32(float %22, float %22, float %24)
  %26 = fcmp ogt float %25, 0x38AA95A5C0000000
  br i1 %26, label %27, label %33

27:                                               ; preds = %4
  %28 = tail call float @sqrtf(float noundef %25) #7
  %29 = fdiv float 1.000000e+00, %28
  %30 = fmul float %16, %29
  %31 = fmul float %19, %29
  %32 = fmul float %22, %29
  br label %33

33:                                               ; preds = %4, %27
  %34 = phi float [ %31, %27 ], [ 0.000000e+00, %4 ]
  %35 = phi float [ %30, %27 ], [ 0.000000e+00, %4 ]
  %36 = phi float [ %32, %27 ], [ 0.000000e+00, %4 ]
  %37 = phi float [ %28, %27 ], [ 0.000000e+00, %4 ]
  %38 = load ptr, ptr %0, align 8, !tbaa !34
  %39 = getelementptr inbounds %struct.Material, ptr %38, i64 0, i32 27, i32 14
  %40 = load float, ptr %39, align 8, !tbaa !128
  %41 = getelementptr inbounds %struct.Material, ptr %38, i64 0, i32 27, i32 10
  %42 = load i16, ptr %41, align 8, !tbaa !129
  %43 = icmp eq i16 %42, 1
  br i1 %43, label %49, label %44

44:                                               ; preds = %33
  %45 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %46 = load i16, ptr %45, align 2, !tbaa !130
  %47 = sext i16 %46 to i32
  %48 = tail call float @BLI_thread_frand(i32 noundef %47) #7
  br label %49

49:                                               ; preds = %33, %44
  %50 = phi float [ %48, %44 ], [ 5.000000e-01, %33 ]
  %51 = tail call float @llvm.fmuladd.f32(float %40, float %50, float 0.000000e+00)
  %52 = load float, ptr %7, align 4, !tbaa !48
  %53 = tail call float @llvm.fmuladd.f32(float %51, float %35, float %52)
  store float %53, ptr %7, align 4, !tbaa !48
  %54 = load float, ptr %9, align 4, !tbaa !48
  %55 = tail call float @llvm.fmuladd.f32(float %51, float %34, float %54)
  store float %55, ptr %9, align 4, !tbaa !48
  %56 = load float, ptr %12, align 4, !tbaa !48
  %57 = tail call float @llvm.fmuladd.f32(float %51, float %36, float %56)
  store float %57, ptr %12, align 4, !tbaa !48
  %58 = load ptr, ptr %0, align 8, !tbaa !34
  %59 = getelementptr inbounds %struct.Material, ptr %58, i64 0, i32 27, i32 14
  %60 = load float, ptr %59, align 8, !tbaa !128
  %61 = fmul float %35, %60
  %62 = fmul float %34, %60
  %63 = fmul float %36, %60
  %64 = fcmp olt float %51, %37
  br i1 %64, label %65, label %116

65:                                               ; preds = %49
  %66 = getelementptr inbounds float, ptr %5, i64 1
  %67 = getelementptr inbounds float, ptr %5, i64 2
  br label %68

68:                                               ; preds = %65, %91
  %69 = phi float [ 0.000000e+00, %65 ], [ %102, %91 ]
  %70 = phi float [ 0.000000e+00, %65 ], [ %103, %91 ]
  %71 = phi float [ 0.000000e+00, %65 ], [ %73, %91 ]
  %72 = phi float [ 0.000000e+00, %65 ], [ %104, %91 ]
  %73 = phi float [ %51, %65 ], [ %114, %91 ]
  %74 = call float @vol_get_density(ptr noundef nonnull %0, ptr noundef nonnull %7)
  %75 = fsub float %73, %71
  %76 = fmul float %75, %74
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #7
  %77 = load ptr, ptr %0, align 8, !tbaa !34
  %78 = getelementptr inbounds %struct.Material, ptr %77, i64 0, i32 27, i32 5
  %79 = load float, ptr %78, align 4, !tbaa !48
  store float %79, ptr %5, align 4, !tbaa !48
  %80 = getelementptr inbounds %struct.Material, ptr %77, i64 0, i32 27, i32 5, i64 1
  %81 = load float, ptr %80, align 4, !tbaa !48
  store float %81, ptr %66, align 4, !tbaa !48
  %82 = getelementptr inbounds %struct.Material, ptr %77, i64 0, i32 27, i32 5, i64 2
  %83 = load float, ptr %82, align 4, !tbaa !48
  store float %83, ptr %67, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  %84 = getelementptr inbounds %struct.Material, ptr %77, i64 0, i32 27, i32 2
  %85 = load float, ptr %84, align 8, !tbaa !98
  store float %85, ptr %6, align 4, !tbaa !48
  %86 = getelementptr inbounds %struct.Material, ptr %77, i64 0, i32 125
  %87 = load i32, ptr %86, align 8, !tbaa !50
  %88 = and i32 %87, 24
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %68
  call void @do_volume_tex(ptr noundef nonnull %0, ptr noundef nonnull %7, i32 noundef 24, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @R) #7
  br label %91

91:                                               ; preds = %68, %90
  %92 = load float, ptr %5, align 4, !tbaa !48
  %93 = fsub float 1.000000e+00, %92
  %94 = load float, ptr %6, align 4, !tbaa !48
  %95 = fadd float %93, %94
  %96 = load float, ptr %66, align 4, !tbaa !48
  %97 = fsub float 1.000000e+00, %96
  %98 = fadd float %94, %97
  %99 = load float, ptr %67, align 4, !tbaa !48
  %100 = fsub float 1.000000e+00, %99
  %101 = fadd float %94, %100
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #7
  %102 = call float @llvm.fmuladd.f32(float %76, float %95, float %69)
  %103 = call float @llvm.fmuladd.f32(float %76, float %98, float %70)
  %104 = call float @llvm.fmuladd.f32(float %76, float %101, float %72)
  %105 = load float, ptr %7, align 4, !tbaa !48
  %106 = fadd float %61, %105
  store float %106, ptr %7, align 4, !tbaa !48
  %107 = load float, ptr %9, align 4, !tbaa !48
  %108 = fadd float %62, %107
  store float %108, ptr %9, align 4, !tbaa !48
  %109 = load float, ptr %12, align 4, !tbaa !48
  %110 = fadd float %63, %109
  store float %110, ptr %12, align 4, !tbaa !48
  %111 = load ptr, ptr %0, align 8, !tbaa !34
  %112 = getelementptr inbounds %struct.Material, ptr %111, i64 0, i32 27, i32 14
  %113 = load float, ptr %112, align 8, !tbaa !128
  %114 = fadd float %73, %113
  %115 = fcmp olt float %114, %37
  br i1 %115, label %68, label %116, !llvm.loop !131

116:                                              ; preds = %91, %49
  %117 = phi float [ 0.000000e+00, %49 ], [ %104, %91 ]
  %118 = phi float [ 0.000000e+00, %49 ], [ %103, %91 ]
  %119 = phi float [ 0.000000e+00, %49 ], [ %102, %91 ]
  %120 = fneg float %119
  %121 = call float @expf(float noundef %120) #7
  store float %121, ptr %1, align 4, !tbaa !48
  %122 = fneg float %118
  %123 = call float @expf(float noundef %122) #7
  %124 = getelementptr inbounds float, ptr %1, i64 1
  store float %123, ptr %124, align 4, !tbaa !48
  %125 = fneg float %117
  %126 = call float @expf(float noundef %125) #7
  %127 = getelementptr inbounds float, ptr %1, i64 2
  store float %126, ptr %127, align 4, !tbaa !48
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #7
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @shade_volume_outside(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(212) %1, i8 0, i64 212, i1 false)
  tail call fastcc void @volume_trace(ptr noundef %0, ptr noundef %1, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @volume_trace(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.ShadeInput, align 8
  %5 = alloca %struct.ShadeResult, align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [4 x float], align 16
  %8 = alloca %struct.Isect, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %9 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 108
  %10 = load i32, ptr %9, align 8, !tbaa !132
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %3
  %13 = load ptr, ptr %0, align 8, !tbaa !34
  %14 = getelementptr inbounds %struct.Material, ptr %13, i64 0, i32 51
  %15 = load i32, ptr %14, align 4, !tbaa !133
  %16 = and i32 %15, 65536
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = and i32 %15, 64
  %20 = icmp ne i32 %19, 0
  br label %21

21:                                               ; preds = %18, %12, %3
  %22 = phi i1 [ false, %12 ], [ false, %3 ], [ %20, %18 ]
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %8) #7
  %23 = icmp eq i32 %2, 1
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 7
  %26 = load i16, ptr %25, align 8, !tbaa !101
  %27 = icmp ne i16 %26, 0
  br label %28

28:                                               ; preds = %24, %21
  %29 = phi i1 [ true, %21 ], [ %27, %24 ]
  %30 = and i1 %22, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %28
  %32 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 79), align 8, !tbaa !61
  %33 = icmp eq ptr %32, null
  br i1 %33, label %161, label %34

34:                                               ; preds = %31
  %35 = load ptr, ptr %0, align 8, !tbaa !34
  br label %36

36:                                               ; preds = %34, %36
  %37 = phi ptr [ %32, %34 ], [ %43, %36 ]
  %38 = phi i32 [ 0, %34 ], [ %42, %36 ]
  %39 = getelementptr inbounds %struct.MatInside, ptr %37, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !134
  %41 = icmp eq ptr %40, %35
  %42 = select i1 %41, i32 1, i32 %38
  %43 = load ptr, ptr %37, align 8, !tbaa !61
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %36, !llvm.loop !136

45:                                               ; preds = %36
  %46 = icmp eq i32 %42, 0
  br i1 %46, label %161, label %47

47:                                               ; preds = %45, %28
  br i1 %29, label %48, label %67

48:                                               ; preds = %47
  %49 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 31
  %50 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29
  br i1 %23, label %55, label %51

51:                                               ; preds = %48
  br i1 %22, label %66, label %52

52:                                               ; preds = %51
  %53 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !104
  call fastcc void @vol_trace_behind(ptr noundef %0, ptr noundef %54, ptr noundef nonnull %50, ptr noundef nonnull %7)
  br label %66

55:                                               ; preds = %48
  %56 = load float, ptr %1, align 4, !tbaa !48
  store float %56, ptr %7, align 16, !tbaa !48
  %57 = getelementptr inbounds float, ptr %1, i64 1
  %58 = load float, ptr %57, align 4, !tbaa !48
  %59 = getelementptr inbounds float, ptr %7, i64 1
  store float %58, ptr %59, align 4, !tbaa !48
  %60 = getelementptr inbounds float, ptr %1, i64 2
  %61 = load float, ptr %60, align 4, !tbaa !48
  %62 = getelementptr inbounds float, ptr %7, i64 2
  store float %61, ptr %62, align 8, !tbaa !48
  %63 = getelementptr inbounds float, ptr %1, i64 3
  %64 = load float, ptr %63, align 4, !tbaa !48
  %65 = getelementptr inbounds float, ptr %7, i64 3
  store float %64, ptr %65, align 4, !tbaa !48
  br label %66

66:                                               ; preds = %51, %52, %55
  call fastcc void @volumeintegrate(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %49, ptr noundef nonnull %50)
  br label %137

67:                                               ; preds = %47
  %68 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29
  %69 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30
  %70 = call fastcc i32 @vol_get_bounds(ptr noundef %0, ptr noundef nonnull %68, ptr noundef nonnull %69, ptr noundef nonnull %6, ptr noundef nonnull %8, i32 noundef 0), !range !90
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %137, label %72

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.Isect, ptr %8, i64 0, i32 15, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !91
  br i1 %22, label %136, label %75

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.VlakRen, ptr %74, i64 0, i32 5
  %77 = load ptr, ptr %76, align 8, !tbaa !94
  %78 = load ptr, ptr %0, align 8, !tbaa !34
  %79 = icmp eq ptr %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  call fastcc void @vol_trace_behind(ptr noundef nonnull %0, ptr noundef %74, ptr noundef nonnull %6, ptr noundef nonnull %7)
  br label %136

81:                                               ; preds = %75
  call void @llvm.lifetime.start.p0(i64 1472, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 212, ptr nonnull %5) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1472) %4, i8 0, i64 1472, i1 false)
  %82 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 105
  %83 = load i32, ptr %82, align 4, !tbaa !137
  %84 = getelementptr inbounds %struct.ShadeInput, ptr %4, i64 0, i32 105
  store i32 %83, ptr %84, align 4, !tbaa !137
  %85 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 15
  %86 = load i16, ptr %85, align 8, !tbaa !86
  %87 = getelementptr inbounds %struct.ShadeInput, ptr %4, i64 0, i32 15
  store i16 %86, ptr %87, align 8, !tbaa !86
  %88 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %89 = load i16, ptr %88, align 2, !tbaa !130
  %90 = getelementptr inbounds %struct.ShadeInput, ptr %4, i64 0, i32 114
  store i16 %89, ptr %90, align 2, !tbaa !130
  %91 = load i32, ptr %9, align 8, !tbaa !132
  %92 = add nsw i32 %91, 1
  %93 = getelementptr inbounds %struct.ShadeInput, ptr %4, i64 0, i32 108
  store i32 %92, ptr %93, align 8, !tbaa !132
  %94 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 109
  %95 = load i32, ptr %94, align 4, !tbaa !138
  %96 = add nsw i32 %95, 1
  %97 = getelementptr inbounds %struct.ShadeInput, ptr %4, i64 0, i32 109
  store i32 %96, ptr %97, align 4, !tbaa !138
  %98 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 103
  %99 = load i32, ptr %98, align 4, !tbaa !139
  %100 = getelementptr inbounds %struct.ShadeInput, ptr %4, i64 0, i32 103
  store i32 %99, ptr %100, align 4, !tbaa !139
  %101 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 104
  %102 = load i32, ptr %101, align 8, !tbaa !140
  %103 = getelementptr inbounds %struct.ShadeInput, ptr %4, i64 0, i32 104
  store i32 %102, ptr %103, align 8, !tbaa !140
  %104 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 117
  %105 = load i32, ptr %104, align 8, !tbaa !84
  %106 = getelementptr inbounds %struct.ShadeInput, ptr %4, i64 0, i32 117
  store i32 %105, ptr %106, align 8, !tbaa !84
  %107 = getelementptr inbounds %struct.ShadeInput, ptr %4, i64 0, i32 119
  store i32 1, ptr %107, align 8, !tbaa !141
  %108 = getelementptr inbounds %struct.ShadeInput, ptr %4, i64 0, i32 120
  store i32 16777215, ptr %108, align 4, !tbaa !142
  %109 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 121
  %110 = load ptr, ptr %109, align 8, !tbaa !143
  %111 = getelementptr inbounds %struct.ShadeInput, ptr %4, i64 0, i32 121
  store ptr %110, ptr %111, align 8, !tbaa !143
  %112 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 122
  %113 = load ptr, ptr %112, align 8, !tbaa !144
  %114 = getelementptr inbounds %struct.ShadeInput, ptr %4, i64 0, i32 122
  store ptr %113, ptr %114, align 8, !tbaa !144
  %115 = getelementptr inbounds %struct.ShadeInput, ptr %4, i64 0, i32 31
  %116 = load float, ptr %8, align 8, !tbaa !48
  store float %116, ptr %115, align 8, !tbaa !48
  %117 = getelementptr inbounds float, ptr %8, i64 1
  %118 = load float, ptr %117, align 4, !tbaa !48
  %119 = getelementptr inbounds %struct.ShadeInput, ptr %4, i64 0, i32 31, i64 1
  store float %118, ptr %119, align 4, !tbaa !48
  %120 = getelementptr inbounds float, ptr %8, i64 2
  %121 = load float, ptr %120, align 8, !tbaa !48
  %122 = getelementptr inbounds %struct.ShadeInput, ptr %4, i64 0, i32 31, i64 2
  store float %121, ptr %122, align 8, !tbaa !48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(212) %5, i8 0, i64 212, i1 false)
  %123 = icmp slt i32 %95, 100
  br i1 %123, label %124, label %125

124:                                              ; preds = %81
  call void @shade_ray(ptr noundef nonnull %8, ptr noundef nonnull %4, ptr noundef nonnull %5) #7
  br label %125

125:                                              ; preds = %81, %124
  %126 = load float, ptr %5, align 4, !tbaa !48
  store float %126, ptr %7, align 16, !tbaa !48
  %127 = getelementptr inbounds float, ptr %5, i64 1
  %128 = load float, ptr %127, align 4, !tbaa !48
  %129 = getelementptr inbounds float, ptr %7, i64 1
  store float %128, ptr %129, align 4, !tbaa !48
  %130 = getelementptr inbounds float, ptr %5, i64 2
  %131 = load float, ptr %130, align 4, !tbaa !48
  %132 = getelementptr inbounds float, ptr %7, i64 2
  store float %131, ptr %132, align 8, !tbaa !48
  %133 = getelementptr inbounds %struct.ShadeResult, ptr %5, i64 0, i32 2
  %134 = load float, ptr %133, align 4, !tbaa !105
  %135 = getelementptr inbounds float, ptr %7, i64 3
  store float %134, ptr %135, align 4, !tbaa !48
  call void @llvm.lifetime.end.p0(i64 212, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 1472, ptr nonnull %4) #7
  br label %136

136:                                              ; preds = %80, %125, %72
  call fastcc void @volumeintegrate(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %68, ptr noundef nonnull %6)
  br label %137

137:                                              ; preds = %67, %136, %66
  %138 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 3
  br i1 %22, label %139, label %143

139:                                              ; preds = %137
  %140 = load float, ptr %138, align 4
  %141 = fcmp ogt float %140, 1.000000e+00
  %142 = select i1 %141, float 1.000000e+00, float %140
  br label %143

143:                                              ; preds = %137, %139
  %144 = phi float [ %142, %139 ], [ 1.000000e+00, %137 ]
  store float %144, ptr %138, align 4, !tbaa !48
  %145 = load float, ptr %7, align 16, !tbaa !48
  store float %145, ptr %1, align 4, !tbaa !48
  %146 = getelementptr inbounds float, ptr %7, i64 1
  %147 = load float, ptr %146, align 4, !tbaa !48
  %148 = getelementptr inbounds float, ptr %1, i64 1
  store float %147, ptr %148, align 4, !tbaa !48
  %149 = getelementptr inbounds float, ptr %7, i64 2
  %150 = load float, ptr %149, align 8, !tbaa !48
  %151 = getelementptr inbounds float, ptr %1, i64 2
  store float %150, ptr %151, align 4, !tbaa !48
  %152 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 3
  %153 = load float, ptr %152, align 4, !tbaa !48
  %154 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 2
  store float %153, ptr %154, align 4, !tbaa !105
  %155 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 6
  store float %145, ptr %155, align 4, !tbaa !48
  %156 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 6, i64 1
  store float %147, ptr %156, align 4, !tbaa !48
  %157 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 6, i64 2
  store float %150, ptr %157, align 4, !tbaa !48
  %158 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 7
  store float %145, ptr %158, align 4, !tbaa !48
  %159 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 7, i64 1
  store float %147, ptr %159, align 4, !tbaa !48
  %160 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 7, i64 2
  store float %150, ptr %160, align 4, !tbaa !48
  br label %161

161:                                              ; preds = %31, %45, %143
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #7
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @shade_volume_inside(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 2
  %4 = load float, ptr %3, align 4, !tbaa !105
  %5 = load ptr, ptr %0, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !51
  %8 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 79), align 8, !tbaa !145
  %9 = getelementptr inbounds %struct.MatInside, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !134
  store ptr %10, ptr %0, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct.MatInside, ptr %8, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !146
  store ptr %12, ptr %6, align 8, !tbaa !51
  %13 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !52
  %15 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 4
  store ptr %14, ptr %15, align 8, !tbaa !147
  tail call fastcc void @volume_trace(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 1)
  %16 = load float, ptr %3, align 4, !tbaa !105
  %17 = fadd float %4, %16
  store float %17, ptr %3, align 4, !tbaa !105
  %18 = fcmp olt float %17, 0.000000e+00
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = fcmp ogt float %17, 1.000000e+00
  br i1 %20, label %21, label %23

21:                                               ; preds = %19, %2
  %22 = phi float [ 0.000000e+00, %2 ], [ 1.000000e+00, %19 ]
  store float %22, ptr %3, align 4, !tbaa !105
  br label %23

23:                                               ; preds = %21, %19
  store ptr %5, ptr %0, align 8, !tbaa !34
  store ptr %7, ptr %6, align 8, !tbaa !51
  %24 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %7, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !52
  store ptr %25, ptr %15, align 8, !tbaa !147
  ret void
}

declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @quat_to_mat3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @transpose_m3(ptr noundef) local_unnamed_addr #2

declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

declare float @lamp_get_visibility(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @do_lamp_tex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc float @vol_get_shadow(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca %struct.Isect, align 8
  %7 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 57
  %8 = load ptr, ptr %7, align 8, !tbaa !148
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i64 12, i1 false)
  %11 = call float @testshadowbuf(ptr noundef nonnull @R, ptr noundef nonnull %8, ptr noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %5, float noundef 1.000000e+00, float noundef 0.000000e+00) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #7
  br label %106

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 7
  %14 = load i32, ptr %13, align 4, !tbaa !80
  %15 = and i32 %14, 8192
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %106, label %17

17:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %6) #7
  %18 = load float, ptr %2, align 4, !tbaa !48
  store float %18, ptr %6, align 8, !tbaa !48
  %19 = getelementptr inbounds float, ptr %2, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !48
  %21 = getelementptr inbounds float, ptr %6, i64 1
  store float %20, ptr %21, align 4, !tbaa !48
  %22 = getelementptr inbounds float, ptr %2, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !48
  %24 = getelementptr inbounds float, ptr %6, i64 2
  store float %23, ptr %24, align 8, !tbaa !48
  %25 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 6
  %26 = load i16, ptr %25, align 8, !tbaa !87
  switch i16 %26, label %41 [
    i16 1, label %27
    i16 3, label %27
  ]

27:                                               ; preds = %17, %17
  %28 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 20
  %29 = load float, ptr %28, align 8, !tbaa !48
  %30 = fneg float %29
  %31 = getelementptr inbounds %struct.Isect, ptr %6, i64 0, i32 1
  store float %30, ptr %31, align 4, !tbaa !48
  %32 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 20, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !48
  %34 = fneg float %33
  %35 = getelementptr inbounds %struct.Isect, ptr %6, i64 0, i32 1, i64 1
  store float %34, ptr %35, align 8, !tbaa !48
  %36 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 20, i64 2
  %37 = load float, ptr %36, align 8, !tbaa !48
  %38 = fneg float %37
  %39 = getelementptr inbounds %struct.Isect, ptr %6, i64 0, i32 1, i64 2
  store float %38, ptr %39, align 4, !tbaa !48
  %40 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 55), align 8, !tbaa !149
  br label %71

41:                                               ; preds = %17
  %42 = getelementptr inbounds %struct.Isect, ptr %6, i64 0, i32 1
  %43 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 5
  %44 = load float, ptr %43, align 4, !tbaa !48
  %45 = fsub float %44, %18
  store float %45, ptr %42, align 4, !tbaa !48
  %46 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 5, i64 1
  %47 = load float, ptr %46, align 4, !tbaa !48
  %48 = fsub float %47, %20
  %49 = getelementptr inbounds %struct.Isect, ptr %6, i64 0, i32 1, i64 1
  store float %48, ptr %49, align 8, !tbaa !48
  %50 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 5, i64 2
  %51 = load float, ptr %50, align 4, !tbaa !48
  %52 = fsub float %51, %23
  %53 = getelementptr inbounds %struct.Isect, ptr %6, i64 0, i32 1, i64 2
  store float %52, ptr %53, align 4, !tbaa !48
  %54 = fmul float %48, %48
  %55 = tail call float @llvm.fmuladd.f32(float %45, float %45, float %54)
  %56 = tail call float @llvm.fmuladd.f32(float %52, float %52, float %55)
  %57 = fcmp ogt float %56, 0x38AA95A5C0000000
  br i1 %57, label %58, label %67

58:                                               ; preds = %41
  %59 = tail call float @sqrtf(float noundef %56) #7
  %60 = fdiv float 1.000000e+00, %59
  %61 = load float, ptr %42, align 4, !tbaa !48
  %62 = fmul float %61, %60
  store float %62, ptr %42, align 4, !tbaa !48
  %63 = load float, ptr %49, align 8, !tbaa !48
  %64 = fmul float %60, %63
  store float %64, ptr %49, align 8, !tbaa !48
  %65 = load float, ptr %53, align 4, !tbaa !48
  %66 = fmul float %60, %65
  br label %68

67:                                               ; preds = %41
  store float 0.000000e+00, ptr %42, align 4, !tbaa !48
  store float 0.000000e+00, ptr %49, align 8, !tbaa !48
  br label %68

68:                                               ; preds = %58, %67
  %69 = phi float [ 0.000000e+00, %67 ], [ %66, %58 ]
  %70 = phi float [ 0.000000e+00, %67 ], [ %59, %58 ]
  store float %69, ptr %53, align 4, !tbaa !48
  br label %71

71:                                               ; preds = %68, %27
  %72 = phi float [ %70, %68 ], [ %40, %27 ]
  %73 = getelementptr inbounds %struct.Isect, ptr %6, i64 0, i32 2
  store float %72, ptr %73, align 8, !tbaa !103
  %74 = getelementptr inbounds %struct.Isect, ptr %6, i64 0, i32 7
  store i32 1, ptr %74, align 8, !tbaa !107
  %75 = getelementptr inbounds %struct.Isect, ptr %6, i64 0, i32 10
  store i32 2, ptr %75, align 4, !tbaa !110
  %76 = getelementptr inbounds %struct.Isect, ptr %6, i64 0, i32 9
  store i32 0, ptr %76, align 8, !tbaa !111
  %77 = load i32, ptr %13, align 4, !tbaa !80
  %78 = and i32 %77, 32772
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %71
  %81 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 17
  %82 = load i32, ptr %81, align 4, !tbaa !82
  br label %83

83:                                               ; preds = %71, %80
  %84 = phi i32 [ %82, %80 ], [ -1, %71 ]
  %85 = getelementptr inbounds %struct.Isect, ptr %6, i64 0, i32 8
  store i32 %84, ptr %85, align 4, !tbaa !109
  %86 = getelementptr inbounds %struct.Isect, ptr %6, i64 0, i32 16
  %87 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %86, i8 0, i64 16, i1 false)
  %88 = load i16, ptr %87, align 2, !tbaa !130
  %89 = sext i16 %88 to i64
  %90 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 68, i64 %89
  %91 = load ptr, ptr %90, align 8, !tbaa !61
  %92 = getelementptr inbounds %struct.Isect, ptr %6, i64 0, i32 17
  store ptr %91, ptr %92, align 8, !tbaa !108
  %93 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !51
  call void @RE_instance_rotate_ray(ptr noundef %94, ptr noundef nonnull %6) #7
  %95 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 52), align 8, !tbaa !114
  %96 = call i32 @RE_rayobject_raycast(ptr noundef %95, ptr noundef nonnull %6) #7
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %83
  %99 = load ptr, ptr %93, align 8, !tbaa !51
  call void @RE_instance_rotate_ray_restore(ptr noundef %99, ptr noundef nonnull %6) #7
  br label %100

100:                                              ; preds = %98, %83
  %101 = phi float [ 0.000000e+00, %98 ], [ 1.000000e+00, %83 ]
  %102 = load ptr, ptr %92, align 8, !tbaa !108
  %103 = load i16, ptr %87, align 2, !tbaa !130
  %104 = sext i16 %103 to i64
  %105 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 68, i64 %104
  store ptr %102, ptr %105, align 8, !tbaa !61
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %6) #7
  br label %106

106:                                              ; preds = %12, %100, %10
  %107 = phi float [ %11, %10 ], [ %101, %100 ], [ 1.000000e+00, %12 ]
  ret float %107
}

declare float @testshadowbuf(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @RE_instance_rotate_ray(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RE_rayobject_raycast(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RE_instance_rotate_ray_restore(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #6

declare float @BLI_thread_frand(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @expf(float noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @vol_trace_behind(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.ShadeInput, align 8
  %6 = alloca %struct.ShadeResult, align 4
  %7 = alloca %struct.Isect, align 8
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %7) #7
  %8 = load float, ptr %2, align 4, !tbaa !48
  store float %8, ptr %7, align 8, !tbaa !48
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !48
  %11 = getelementptr inbounds float, ptr %7, i64 1
  store float %10, ptr %11, align 4, !tbaa !48
  %12 = getelementptr inbounds float, ptr %2, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !48
  %14 = getelementptr inbounds float, ptr %7, i64 2
  store float %13, ptr %14, align 8, !tbaa !48
  %15 = getelementptr inbounds %struct.Isect, ptr %7, i64 0, i32 1
  %16 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30
  %17 = load float, ptr %16, align 4, !tbaa !48
  store float %17, ptr %15, align 4, !tbaa !48
  %18 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !48
  %20 = getelementptr inbounds %struct.Isect, ptr %7, i64 0, i32 1, i64 1
  store float %19, ptr %20, align 8, !tbaa !48
  %21 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30, i64 2
  %22 = load float, ptr %21, align 4, !tbaa !48
  %23 = getelementptr inbounds %struct.Isect, ptr %7, i64 0, i32 1, i64 2
  store float %22, ptr %23, align 4, !tbaa !48
  %24 = getelementptr inbounds %struct.Isect, ptr %7, i64 0, i32 2
  store float 0x47EFFFFFE0000000, ptr %24, align 8, !tbaa !103
  %25 = getelementptr inbounds %struct.Isect, ptr %7, i64 0, i32 7
  store i32 1, ptr %25, align 8, !tbaa !107
  %26 = getelementptr inbounds %struct.Isect, ptr %7, i64 0, i32 10
  store i32 0, ptr %26, align 4, !tbaa !110
  %27 = getelementptr inbounds %struct.Isect, ptr %7, i64 0, i32 9
  store i32 2, ptr %27, align 8, !tbaa !111
  %28 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !51
  %30 = getelementptr inbounds %struct.Isect, ptr %7, i64 0, i32 16
  store ptr %29, ptr %30, align 8, !tbaa !113
  %31 = getelementptr inbounds %struct.Isect, ptr %7, i64 0, i32 16, i32 1
  store ptr %1, ptr %31, align 8, !tbaa !112
  %32 = getelementptr inbounds %struct.Isect, ptr %7, i64 0, i32 17
  store ptr null, ptr %32, align 8, !tbaa !108
  %33 = getelementptr inbounds %struct.Isect, ptr %7, i64 0, i32 8
  store i32 -1, ptr %33, align 4, !tbaa !109
  call void @RE_instance_rotate_ray(ptr noundef %29, ptr noundef nonnull %7) #7
  %34 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 52), align 8, !tbaa !114
  %35 = call i32 @RE_rayobject_raycast(ptr noundef %34, ptr noundef nonnull %7) #7
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %92, label %37

37:                                               ; preds = %4
  %38 = load ptr, ptr %28, align 8, !tbaa !51
  call void @RE_instance_rotate_ray_restore(ptr noundef %38, ptr noundef nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 1472, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 212, ptr nonnull %6) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1472) %5, i8 0, i64 1472, i1 false)
  %39 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 105
  %40 = load i32, ptr %39, align 4, !tbaa !137
  %41 = getelementptr inbounds %struct.ShadeInput, ptr %5, i64 0, i32 105
  store i32 %40, ptr %41, align 4, !tbaa !137
  %42 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 15
  %43 = load i16, ptr %42, align 8, !tbaa !86
  %44 = getelementptr inbounds %struct.ShadeInput, ptr %5, i64 0, i32 15
  store i16 %43, ptr %44, align 8, !tbaa !86
  %45 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %46 = load i16, ptr %45, align 2, !tbaa !130
  %47 = getelementptr inbounds %struct.ShadeInput, ptr %5, i64 0, i32 114
  store i16 %46, ptr %47, align 2, !tbaa !130
  %48 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 108
  %49 = load i32, ptr %48, align 8, !tbaa !132
  %50 = add nsw i32 %49, 1
  %51 = getelementptr inbounds %struct.ShadeInput, ptr %5, i64 0, i32 108
  store i32 %50, ptr %51, align 8, !tbaa !132
  %52 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 109
  %53 = load i32, ptr %52, align 4, !tbaa !138
  %54 = add nsw i32 %53, 1
  %55 = getelementptr inbounds %struct.ShadeInput, ptr %5, i64 0, i32 109
  store i32 %54, ptr %55, align 4, !tbaa !138
  %56 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 103
  %57 = load i32, ptr %56, align 4, !tbaa !139
  %58 = getelementptr inbounds %struct.ShadeInput, ptr %5, i64 0, i32 103
  store i32 %57, ptr %58, align 4, !tbaa !139
  %59 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 104
  %60 = load i32, ptr %59, align 8, !tbaa !140
  %61 = getelementptr inbounds %struct.ShadeInput, ptr %5, i64 0, i32 104
  store i32 %60, ptr %61, align 8, !tbaa !140
  %62 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 117
  %63 = load i32, ptr %62, align 8, !tbaa !84
  %64 = getelementptr inbounds %struct.ShadeInput, ptr %5, i64 0, i32 117
  store i32 %63, ptr %64, align 8, !tbaa !84
  %65 = getelementptr inbounds %struct.ShadeInput, ptr %5, i64 0, i32 119
  store i32 1, ptr %65, align 8, !tbaa !141
  %66 = getelementptr inbounds %struct.ShadeInput, ptr %5, i64 0, i32 120
  store i32 16777215, ptr %66, align 4, !tbaa !142
  %67 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 121
  %68 = load ptr, ptr %67, align 8, !tbaa !143
  %69 = getelementptr inbounds %struct.ShadeInput, ptr %5, i64 0, i32 121
  store ptr %68, ptr %69, align 8, !tbaa !143
  %70 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 122
  %71 = load ptr, ptr %70, align 8, !tbaa !144
  %72 = getelementptr inbounds %struct.ShadeInput, ptr %5, i64 0, i32 122
  store ptr %71, ptr %72, align 8, !tbaa !144
  %73 = getelementptr inbounds %struct.ShadeInput, ptr %5, i64 0, i32 31
  %74 = load float, ptr %7, align 8, !tbaa !48
  store float %74, ptr %73, align 8, !tbaa !48
  %75 = load float, ptr %11, align 4, !tbaa !48
  %76 = getelementptr inbounds %struct.ShadeInput, ptr %5, i64 0, i32 31, i64 1
  store float %75, ptr %76, align 4, !tbaa !48
  %77 = load float, ptr %14, align 8, !tbaa !48
  %78 = getelementptr inbounds %struct.ShadeInput, ptr %5, i64 0, i32 31, i64 2
  store float %77, ptr %78, align 8, !tbaa !48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(212) %6, i8 0, i64 212, i1 false)
  %79 = icmp slt i32 %53, 100
  br i1 %79, label %80, label %81

80:                                               ; preds = %37
  call void @shade_ray(ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef nonnull %6) #7
  br label %81

81:                                               ; preds = %37, %80
  %82 = load float, ptr %6, align 4, !tbaa !48
  store float %82, ptr %3, align 4, !tbaa !48
  %83 = getelementptr inbounds float, ptr %6, i64 1
  %84 = load float, ptr %83, align 4, !tbaa !48
  %85 = getelementptr inbounds float, ptr %3, i64 1
  store float %84, ptr %85, align 4, !tbaa !48
  %86 = getelementptr inbounds float, ptr %6, i64 2
  %87 = load float, ptr %86, align 4, !tbaa !48
  %88 = getelementptr inbounds float, ptr %3, i64 2
  store float %87, ptr %88, align 4, !tbaa !48
  %89 = getelementptr inbounds %struct.ShadeResult, ptr %6, i64 0, i32 2
  %90 = load float, ptr %89, align 4, !tbaa !105
  %91 = getelementptr inbounds float, ptr %3, i64 3
  store float %90, ptr %91, align 4, !tbaa !48
  call void @llvm.lifetime.end.p0(i64 212, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 1472, ptr nonnull %5) #7
  br label %95

92:                                               ; preds = %4
  %93 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %94 = load i16, ptr %93, align 2, !tbaa !130
  call void @shadeSkyView(ptr noundef %3, ptr noundef nonnull %2, ptr noundef nonnull %16, ptr noundef null, i16 noundef signext %94) #7
  call void @shadeSunView(ptr noundef %3, ptr noundef nonnull %16) #7
  br label %95

95:                                               ; preds = %92, %81
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %7) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @volumeintegrate(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = alloca [3 x float], align 4
  %6 = alloca float, align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca float, align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #7
  %16 = load float, ptr %2, align 4, !tbaa !48
  store float %16, ptr %12, align 4, !tbaa !48
  %17 = getelementptr inbounds float, ptr %12, i64 1
  %18 = getelementptr inbounds float, ptr %2, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !48
  store float %19, ptr %17, align 4, !tbaa !48
  %20 = getelementptr inbounds float, ptr %12, i64 2
  %21 = getelementptr inbounds float, ptr %2, i64 2
  %22 = load float, ptr %21, align 4, !tbaa !48
  store float %22, ptr %20, align 4, !tbaa !48
  %23 = load float, ptr %3, align 4, !tbaa !48
  %24 = fsub float %23, %16
  %25 = getelementptr inbounds float, ptr %3, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !48
  %27 = fsub float %26, %19
  %28 = getelementptr inbounds float, ptr %3, i64 2
  %29 = load float, ptr %28, align 4, !tbaa !48
  %30 = fsub float %29, %22
  %31 = load ptr, ptr %0, align 8, !tbaa !34
  %32 = getelementptr inbounds %struct.Material, ptr %31, i64 0, i32 27, i32 14
  %33 = load float, ptr %32, align 8, !tbaa !128
  %34 = fmul float %27, %27
  %35 = tail call float @llvm.fmuladd.f32(float %24, float %24, float %34)
  %36 = tail call float @llvm.fmuladd.f32(float %30, float %30, float %35)
  %37 = fcmp ogt float %36, 0x38AA95A5C0000000
  br i1 %37, label %38, label %44

38:                                               ; preds = %4
  %39 = tail call float @sqrtf(float noundef %36) #7
  %40 = fdiv float 1.000000e+00, %39
  %41 = fmul float %24, %40
  %42 = fmul float %27, %40
  %43 = fmul float %30, %40
  br label %44

44:                                               ; preds = %4, %38
  %45 = phi float [ %42, %38 ], [ 0.000000e+00, %4 ]
  %46 = phi float [ %41, %38 ], [ 0.000000e+00, %4 ]
  %47 = phi float [ %43, %38 ], [ 0.000000e+00, %4 ]
  %48 = phi float [ %39, %38 ], [ 0.000000e+00, %4 ]
  %49 = load ptr, ptr %0, align 8, !tbaa !34
  %50 = getelementptr inbounds %struct.Material, ptr %49, i64 0, i32 27, i32 10
  %51 = load i16, ptr %50, align 8, !tbaa !129
  %52 = icmp eq i16 %51, 1
  br i1 %52, label %58, label %53

53:                                               ; preds = %44
  %54 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %55 = load i16, ptr %54, align 2, !tbaa !130
  %56 = sext i16 %55 to i32
  %57 = tail call float @BLI_thread_frand(i32 noundef %56) #7
  br label %58

58:                                               ; preds = %44, %53
  %59 = phi float [ %57, %53 ], [ 5.000000e-01, %44 ]
  %60 = tail call float @llvm.fmuladd.f32(float %33, float %59, float 0.000000e+00)
  %61 = load float, ptr %12, align 4, !tbaa !48
  %62 = tail call float @llvm.fmuladd.f32(float %60, float %46, float %61)
  store float %62, ptr %12, align 4, !tbaa !48
  %63 = load float, ptr %17, align 4, !tbaa !48
  %64 = tail call float @llvm.fmuladd.f32(float %60, float %45, float %63)
  store float %64, ptr %17, align 4, !tbaa !48
  %65 = load float, ptr %20, align 4, !tbaa !48
  %66 = tail call float @llvm.fmuladd.f32(float %60, float %47, float %65)
  store float %66, ptr %20, align 4, !tbaa !48
  %67 = fmul float %33, %46
  %68 = fmul float %33, %45
  %69 = fmul float %33, %47
  %70 = fcmp olt float %60, %48
  br i1 %70, label %71, label %266

71:                                               ; preds = %58
  %72 = getelementptr inbounds float, ptr %5, i64 1
  %73 = getelementptr inbounds float, ptr %5, i64 2
  %74 = fmul float %48, 2.500000e-01
  %75 = getelementptr inbounds float, ptr %14, i64 1
  %76 = getelementptr inbounds float, ptr %14, i64 2
  %77 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 3
  %78 = getelementptr inbounds [3 x float], ptr %15, i64 0, i64 1
  %79 = getelementptr inbounds [3 x float], ptr %15, i64 0, i64 2
  %80 = getelementptr inbounds float, ptr %8, i64 1
  %81 = getelementptr inbounds float, ptr %7, i64 1
  %82 = getelementptr inbounds float, ptr %8, i64 2
  %83 = getelementptr inbounds float, ptr %7, i64 2
  %84 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  %85 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 1
  %86 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  %87 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  %88 = getelementptr inbounds float, ptr %13, i64 1
  %89 = getelementptr inbounds float, ptr %13, i64 2
  %90 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30
  %91 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 1
  %92 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 2
  br label %93

93:                                               ; preds = %254, %71
  %94 = phi float [ %60, %71 ], [ %263, %254 ]
  %95 = phi float [ 0.000000e+00, %71 ], [ %94, %254 ]
  %96 = phi float [ 1.000000e+00, %71 ], [ %260, %254 ]
  %97 = phi float [ 1.000000e+00, %71 ], [ %259, %254 ]
  %98 = phi float [ 1.000000e+00, %71 ], [ %258, %254 ]
  %99 = phi float [ 0.000000e+00, %71 ], [ %257, %254 ]
  %100 = phi float [ 0.000000e+00, %71 ], [ %256, %254 ]
  %101 = phi float [ 0.000000e+00, %71 ], [ %255, %254 ]
  %102 = call float @vol_get_density(ptr noundef nonnull %0, ptr noundef nonnull %12)
  %103 = fcmp ogt float %102, 0x3EE4F8B580000000
  br i1 %103, label %104, label %241

104:                                              ; preds = %93
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %13, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #7
  %105 = fsub float %94, %95
  %106 = fmul float %105, %102
  %107 = fmul float %33, %102
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #7
  %108 = load ptr, ptr %0, align 8, !tbaa !34
  %109 = getelementptr inbounds %struct.Material, ptr %108, i64 0, i32 27, i32 5
  %110 = load float, ptr %109, align 4, !tbaa !48
  store float %110, ptr %5, align 4, !tbaa !48
  %111 = getelementptr inbounds %struct.Material, ptr %108, i64 0, i32 27, i32 5, i64 1
  %112 = load float, ptr %111, align 4, !tbaa !48
  store float %112, ptr %72, align 4, !tbaa !48
  %113 = getelementptr inbounds %struct.Material, ptr %108, i64 0, i32 27, i32 5, i64 2
  %114 = load float, ptr %113, align 4, !tbaa !48
  store float %114, ptr %73, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  %115 = getelementptr inbounds %struct.Material, ptr %108, i64 0, i32 27, i32 2
  %116 = load float, ptr %115, align 8, !tbaa !98
  store float %116, ptr %6, align 4, !tbaa !48
  %117 = getelementptr inbounds %struct.Material, ptr %108, i64 0, i32 125
  %118 = load i32, ptr %117, align 8, !tbaa !50
  %119 = and i32 %118, 24
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %104
  call void @do_volume_tex(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 24, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @R) #7
  br label %122

122:                                              ; preds = %104, %121
  %123 = load float, ptr %5, align 4, !tbaa !48
  %124 = fsub float 1.000000e+00, %123
  %125 = load float, ptr %6, align 4, !tbaa !48
  %126 = fadd float %124, %125
  %127 = load float, ptr %72, align 4, !tbaa !48
  %128 = fsub float 1.000000e+00, %127
  %129 = fadd float %125, %128
  %130 = load float, ptr %73, align 4, !tbaa !48
  %131 = fsub float 1.000000e+00, %130
  %132 = fadd float %125, %131
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #7
  %133 = call float @llvm.fmuladd.f32(float %107, float %126, float 0.000000e+00)
  %134 = call float @llvm.fmuladd.f32(float %107, float %129, float 0.000000e+00)
  %135 = call float @llvm.fmuladd.f32(float %107, float %132, float 0.000000e+00)
  %136 = fneg float %133
  %137 = call float @expf(float noundef %136) #7
  %138 = fmul float %96, %137
  %139 = fneg float %134
  %140 = call float @expf(float noundef %139) #7
  %141 = fmul float %97, %140
  %142 = fneg float %135
  %143 = call float @expf(float noundef %142) #7
  %144 = fmul float %98, %143
  %145 = fcmp ogt float %94, %74
  br i1 %145, label %146, label %154

146:                                              ; preds = %122
  %147 = fmul float %141, 0x3FE6E29740000000
  %148 = call float @llvm.fmuladd.f32(float %138, float 0x3FCB38CDA0000000, float %147)
  %149 = call float @llvm.fmuladd.f32(float %144, float 0x3FB279AAE0000000, float %148)
  %150 = load ptr, ptr %0, align 8, !tbaa !34
  %151 = getelementptr inbounds %struct.Material, ptr %150, i64 0, i32 27, i32 8
  %152 = load float, ptr %151, align 8, !tbaa !150
  %153 = fcmp olt float %149, %152
  br i1 %153, label %235, label %154

154:                                              ; preds = %146, %122
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #7
  %155 = load ptr, ptr %0, align 8, !tbaa !34
  %156 = getelementptr inbounds %struct.Material, ptr %155, i64 0, i32 27, i32 1
  %157 = load float, ptr %156, align 4, !tbaa !151
  store float %157, ptr %11, align 4, !tbaa !48
  %158 = getelementptr inbounds %struct.Material, ptr %155, i64 0, i32 27, i32 4
  %159 = load float, ptr %158, align 4, !tbaa !48
  store float %159, ptr %14, align 4, !tbaa !48
  %160 = getelementptr inbounds %struct.Material, ptr %155, i64 0, i32 27, i32 4, i64 1
  %161 = load float, ptr %160, align 4, !tbaa !48
  store float %161, ptr %75, align 4, !tbaa !48
  %162 = getelementptr inbounds %struct.Material, ptr %155, i64 0, i32 27, i32 4, i64 2
  %163 = load float, ptr %162, align 4, !tbaa !48
  store float %163, ptr %76, align 4, !tbaa !48
  %164 = getelementptr inbounds %struct.Material, ptr %155, i64 0, i32 125
  %165 = load i32, ptr %164, align 8, !tbaa !50
  %166 = and i32 %165, 65
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %169, label %168

168:                                              ; preds = %154
  call void @do_volume_tex(ptr noundef nonnull %0, ptr noundef nonnull %12, i32 noundef 65, ptr noundef nonnull %14, ptr noundef nonnull %11, ptr noundef nonnull @R) #7
  br label %169

169:                                              ; preds = %154, %168
  %170 = load float, ptr %14, align 4, !tbaa !48
  %171 = load float, ptr %11, align 4, !tbaa !48
  %172 = fmul float %170, %171
  store float %172, ptr %14, align 4, !tbaa !48
  %173 = load float, ptr %75, align 4, !tbaa !48
  %174 = fmul float %171, %173
  store float %174, ptr %75, align 4, !tbaa !48
  %175 = load float, ptr %76, align 4, !tbaa !48
  %176 = fmul float %171, %175
  store float %176, ptr %76, align 4, !tbaa !48
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #7
  %177 = load ptr, ptr %77, align 8, !tbaa !51
  %178 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %177, i64 0, i32 15
  %179 = load ptr, ptr %178, align 8, !tbaa !152
  %180 = icmp eq ptr %179, null
  br i1 %180, label %218, label %181

181:                                              ; preds = %169
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #7
  %182 = load float, ptr %12, align 4, !tbaa !48
  %183 = call float @llvm.fmuladd.f32(float %67, float 5.000000e-01, float %182)
  store float %183, ptr %15, align 4, !tbaa !48
  %184 = load float, ptr %17, align 4, !tbaa !48
  %185 = call float @llvm.fmuladd.f32(float %68, float 5.000000e-01, float %184)
  store float %185, ptr %78, align 4, !tbaa !48
  %186 = load float, ptr %20, align 4, !tbaa !48
  %187 = call float @llvm.fmuladd.f32(float %69, float 5.000000e-01, float %186)
  store float %187, ptr %79, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #7
  call void @global_bounds_obi(ptr noundef nonnull @R, ptr noundef %177, ptr noundef nonnull %7, ptr noundef nonnull %8) #7
  %188 = load float, ptr %8, align 4, !tbaa !48
  %189 = load float, ptr %7, align 4, !tbaa !48
  %190 = fsub float %188, %189
  %191 = load float, ptr %80, align 4, !tbaa !48
  %192 = load float, ptr %81, align 4, !tbaa !48
  %193 = fsub float %191, %192
  %194 = load float, ptr %82, align 4, !tbaa !48
  %195 = load float, ptr %83, align 4, !tbaa !48
  %196 = fsub float %194, %195
  call void @mul_v3_m4v3(ptr noundef nonnull %9, ptr noundef nonnull getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 33), ptr noundef nonnull %15) #7
  %197 = load float, ptr %9, align 4, !tbaa !48
  %198 = load float, ptr %7, align 4, !tbaa !48
  %199 = fsub float %197, %198
  %200 = fdiv float %199, %190
  store float %200, ptr %10, align 4, !tbaa !48
  %201 = load float, ptr %84, align 4, !tbaa !48
  %202 = load float, ptr %81, align 4, !tbaa !48
  %203 = fsub float %201, %202
  %204 = fdiv float %203, %193
  store float %204, ptr %85, align 4, !tbaa !48
  %205 = load float, ptr %86, align 4, !tbaa !48
  %206 = load float, ptr %83, align 4, !tbaa !48
  %207 = fsub float %205, %206
  %208 = fdiv float %207, %196
  store float %208, ptr %87, align 4, !tbaa !48
  %209 = getelementptr inbounds %struct.VolumePrecache, ptr %179, i64 0, i32 3
  %210 = load ptr, ptr %209, align 8, !tbaa !153
  %211 = call float @BLI_voxel_sample_triquadratic(ptr noundef %210, ptr noundef nonnull %179, ptr noundef nonnull %10) #7
  store float %211, ptr %13, align 4, !tbaa !48
  %212 = getelementptr inbounds %struct.VolumePrecache, ptr %179, i64 0, i32 4
  %213 = load ptr, ptr %212, align 8, !tbaa !155
  %214 = call float @BLI_voxel_sample_triquadratic(ptr noundef %213, ptr noundef nonnull %179, ptr noundef nonnull %10) #7
  store float %214, ptr %88, align 4, !tbaa !48
  %215 = getelementptr inbounds %struct.VolumePrecache, ptr %179, i64 0, i32 5
  %216 = load ptr, ptr %215, align 8, !tbaa !156
  %217 = call float @BLI_voxel_sample_triquadratic(ptr noundef %216, ptr noundef nonnull %179, ptr noundef nonnull %10) #7
  store float %217, ptr %89, align 4, !tbaa !48
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #7
  br label %219

218:                                              ; preds = %169
  call void @vol_get_scattering(ptr noundef nonnull %0, ptr noundef nonnull %13, ptr noundef nonnull %12, ptr noundef nonnull %90)
  br label %219

219:                                              ; preds = %218, %181
  %220 = fmul float %106, %138
  %221 = load float, ptr %14, align 4, !tbaa !48
  %222 = load float, ptr %13, align 4, !tbaa !48
  %223 = fadd float %221, %222
  %224 = call float @llvm.fmuladd.f32(float %220, float %223, float %101)
  %225 = fmul float %106, %141
  %226 = load float, ptr %75, align 4, !tbaa !48
  %227 = load float, ptr %91, align 4, !tbaa !48
  %228 = fadd float %226, %227
  %229 = call float @llvm.fmuladd.f32(float %225, float %228, float %100)
  %230 = fmul float %106, %144
  %231 = load float, ptr %76, align 4, !tbaa !48
  %232 = load float, ptr %92, align 4, !tbaa !48
  %233 = fadd float %231, %232
  %234 = call float @llvm.fmuladd.f32(float %230, float %233, float %99)
  br label %235

235:                                              ; preds = %146, %219
  %236 = phi float [ %101, %146 ], [ %224, %219 ]
  %237 = phi float [ %100, %146 ], [ %229, %219 ]
  %238 = phi float [ %99, %146 ], [ %234, %219 ]
  %239 = phi i1 [ false, %146 ], [ true, %219 ]
  %240 = phi i32 [ 2, %146 ], [ 0, %219 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #7
  br i1 %239, label %241, label %254

241:                                              ; preds = %235, %93
  %242 = phi float [ %236, %235 ], [ %101, %93 ]
  %243 = phi float [ %237, %235 ], [ %100, %93 ]
  %244 = phi float [ %238, %235 ], [ %99, %93 ]
  %245 = phi float [ %144, %235 ], [ %98, %93 ]
  %246 = phi float [ %141, %235 ], [ %97, %93 ]
  %247 = phi float [ %138, %235 ], [ %96, %93 ]
  %248 = load float, ptr %12, align 4, !tbaa !48
  %249 = fadd float %67, %248
  store float %249, ptr %12, align 4, !tbaa !48
  %250 = load float, ptr %17, align 4, !tbaa !48
  %251 = fadd float %68, %250
  store float %251, ptr %17, align 4, !tbaa !48
  %252 = load float, ptr %20, align 4, !tbaa !48
  %253 = fadd float %69, %252
  store float %253, ptr %20, align 4, !tbaa !48
  br label %254

254:                                              ; preds = %235, %241
  %255 = phi float [ %242, %241 ], [ %236, %235 ]
  %256 = phi float [ %243, %241 ], [ %237, %235 ]
  %257 = phi float [ %244, %241 ], [ %238, %235 ]
  %258 = phi float [ %245, %241 ], [ %144, %235 ]
  %259 = phi float [ %246, %241 ], [ %141, %235 ]
  %260 = phi float [ %247, %241 ], [ %138, %235 ]
  %261 = phi i32 [ 0, %241 ], [ %240, %235 ]
  %262 = icmp eq i32 %261, 0
  %263 = fadd float %33, %94
  %264 = fcmp olt float %263, %48
  %265 = select i1 %262, i1 %264, i1 false
  br i1 %265, label %93, label %266, !llvm.loop !157

266:                                              ; preds = %254, %58
  %267 = phi float [ 0.000000e+00, %58 ], [ %255, %254 ]
  %268 = phi float [ 0.000000e+00, %58 ], [ %256, %254 ]
  %269 = phi float [ 0.000000e+00, %58 ], [ %257, %254 ]
  %270 = phi float [ 1.000000e+00, %58 ], [ %258, %254 ]
  %271 = phi float [ 1.000000e+00, %58 ], [ %259, %254 ]
  %272 = phi float [ 1.000000e+00, %58 ], [ %260, %254 ]
  %273 = load float, ptr %1, align 4, !tbaa !48
  %274 = fmul float %272, %273
  store float %274, ptr %1, align 4, !tbaa !48
  %275 = getelementptr inbounds float, ptr %1, i64 1
  %276 = load float, ptr %275, align 4, !tbaa !48
  %277 = fmul float %271, %276
  store float %277, ptr %275, align 4, !tbaa !48
  %278 = getelementptr inbounds float, ptr %1, i64 2
  %279 = load float, ptr %278, align 4, !tbaa !48
  %280 = fmul float %270, %279
  store float %280, ptr %278, align 4, !tbaa !48
  %281 = fadd float %267, %274
  store float %281, ptr %1, align 4, !tbaa !48
  %282 = fadd float %268, %277
  store float %282, ptr %275, align 4, !tbaa !48
  %283 = fadd float %269, %280
  store float %283, ptr %278, align 4, !tbaa !48
  %284 = fmul float %271, 0x3FE6E29740000000
  %285 = call float @llvm.fmuladd.f32(float %272, float 0x3FCB38CDA0000000, float %284)
  %286 = call float @llvm.fmuladd.f32(float %270, float 0x3FB279AAE0000000, float %285)
  %287 = fsub float 1.000000e+00, %286
  %288 = getelementptr inbounds float, ptr %1, i64 3
  store float %287, ptr %288, align 4, !tbaa !48
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #7
  ret void
}

declare void @shadeSkyView(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare void @shadeSunView(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @global_bounds_obi(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @BLI_voxel_sample_triquadratic(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @shade_ray(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!60 = !{!57, !36, i64 296}
!61 = !{!36, !36, i64 0}
!62 = !{!63, !41, i64 32}
!63 = !{!"MetaElem", !36, i64 0, !36, i64 8, !36, i64 16, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !37, i64 44, !41, i64 60, !41, i64 64, !41, i64 68, !41, i64 72, !41, i64 76, !41, i64 80, !41, i64 84, !36, i64 88, !36, i64 96}
!64 = !{!63, !41, i64 36}
!65 = !{!63, !41, i64 40}
!66 = !{!63, !40, i64 24}
!67 = !{!63, !41, i64 60}
!68 = !{!63, !41, i64 64}
!69 = !{!63, !41, i64 68}
!70 = !{!63, !41, i64 72}
!71 = !{!63, !40, i64 26}
!72 = !{!63, !41, i64 80}
!73 = distinct !{!73, !74, !75}
!74 = !{!"llvm.loop.mustprogress"}
!75 = !{!"llvm.loop.unroll.disable"}
!76 = !{!77, !41, i64 236}
!77 = !{!"MetaBall", !44, i64 0, !36, i64 120, !47, i64 128, !47, i64 144, !36, i64 160, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 185, !40, i64 186, !40, i64 188, !40, i64 190, !37, i64 192, !37, i64 204, !37, i64 216, !41, i64 228, !41, i64 232, !41, i64 236, !36, i64 240}
!78 = !{!79, !36, i64 24}
!79 = !{!"GroupObject", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !40, i64 32, !37, i64 34}
!80 = !{!81, !39, i64 44}
!81 = !{!"LampRen", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !37, i64 28, !40, i64 40, !39, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !41, i64 64, !41, i64 68, !41, i64 72, !41, i64 76, !41, i64 80, !39, i64 84, !41, i64 88, !41, i64 92, !37, i64 96, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !41, i64 128, !40, i64 132, !41, i64 136, !41, i64 140, !36, i64 144, !40, i64 152, !40, i64 154, !41, i64 156, !40, i64 160, !40, i64 162, !40, i64 164, !40, i64 166, !40, i64 168, !41, i64 172, !41, i64 176, !41, i64 180, !41, i64 184, !40, i64 188, !40, i64 190, !40, i64 192, !40, i64 194, !40, i64 196, !40, i64 198, !40, i64 200, !37, i64 202, !37, i64 204, !41, i64 208, !41, i64 212, !41, i64 216, !41, i64 220, !36, i64 224, !36, i64 232, !36, i64 240, !37, i64 248, !41, i64 284, !37, i64 288, !41, i64 300, !37, i64 304, !37, i64 368, !37, i64 404, !41, i64 500, !36, i64 504, !37, i64 512, !37, i64 520, !39, i64 664, !39, i64 668}
!82 = !{!81, !39, i64 84}
!83 = !{!53, !39, i64 48}
!84 = !{!35, !39, i64 1440}
!85 = !{!81, !41, i64 76}
!86 = !{!35, !40, i64 96}
!87 = !{!81, !40, i64 40}
!88 = !{!43, !40, i64 292}
!89 = !{!43, !40, i64 290}
!90 = !{i32 0, i32 2}
!91 = !{!92, !36, i64 136}
!92 = !{!"Isect", !37, i64 0, !37, i64 12, !41, i64 24, !37, i64 28, !37, i64 40, !37, i64 52, !37, i64 76, !39, i64 88, !39, i64 92, !39, i64 96, !39, i64 100, !36, i64 104, !41, i64 112, !41, i64 116, !39, i64 120, !93, i64 128, !93, i64 144, !36, i64 160, !36, i64 168}
!93 = !{!"", !36, i64 0, !36, i64 8}
!94 = !{!95, !36, i64 48}
!95 = !{!"VlakRen", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !36, i64 48, !37, i64 56, !37, i64 57, !37, i64 58, !39, i64 60}
!96 = !{!43, !40, i64 128}
!97 = !{!43, !41, i64 284}
!98 = !{!43, !41, i64 232}
!99 = !{!43, !41, i64 236}
!100 = distinct !{!100, !74, !75}
!101 = !{!35, !40, i64 56}
!102 = !{!92, !36, i64 128}
!103 = !{!92, !41, i64 24}
!104 = !{!35, !36, i64 8}
!105 = !{!106, !41, i64 32}
!106 = !{!"ShadeResult", !37, i64 0, !37, i64 16, !41, i64 32, !41, i64 36, !41, i64 40, !37, i64 44, !37, i64 56, !37, i64 68, !37, i64 80, !37, i64 92, !37, i64 108, !37, i64 120, !37, i64 132, !37, i64 144, !37, i64 156, !37, i64 168, !37, i64 180, !37, i64 196}
!107 = !{!92, !39, i64 88}
!108 = !{!92, !36, i64 160}
!109 = !{!92, !39, i64 92}
!110 = !{!92, !39, i64 100}
!111 = !{!92, !39, i64 96}
!112 = !{!92, !36, i64 152}
!113 = !{!92, !36, i64 144}
!114 = !{!115, !36, i64 5656}
!115 = !{!"Render", !36, i64 0, !36, i64 8, !37, i64 16, !39, i64 92, !40, i64 96, !40, i64 98, !40, i64 100, !40, i64 102, !37, i64 104, !36, i64 112, !36, i64 120, !47, i64 128, !39, i64 144, !39, i64 148, !39, i64 152, !116, i64 156, !117, i64 172, !41, i64 188, !41, i64 192, !41, i64 196, !39, i64 200, !39, i64 204, !39, i64 208, !39, i64 212, !41, i64 216, !41, i64 220, !41, i64 224, !41, i64 228, !41, i64 232, !41, i64 236, !37, i64 240, !37, i64 252, !37, i64 288, !37, i64 352, !37, i64 416, !37, i64 480, !41, i64 544, !41, i64 548, !36, i64 552, !37, i64 560, !37, i64 816, !36, i64 1072, !37, i64 1080, !36, i64 1088, !36, i64 1096, !118, i64 1104, !125, i64 5088, !36, i64 5616, !39, i64 5624, !39, i64 5628, !47, i64 5632, !36, i64 5648, !36, i64 5656, !36, i64 5664, !36, i64 5672, !41, i64 5680, !36, i64 5688, !47, i64 5696, !41, i64 5712, !41, i64 5716, !39, i64 5720, !39, i64 5724, !39, i64 5728, !39, i64 5732, !39, i64 5736, !36, i64 5744, !47, i64 5752, !47, i64 5768, !47, i64 5784, !36, i64 5800, !47, i64 5808, !39, i64 5824, !36, i64 5832, !36, i64 5840, !36, i64 5848, !36, i64 5856, !36, i64 5864, !47, i64 5872, !36, i64 5888, !47, i64 5896, !47, i64 5912, !36, i64 5928, !36, i64 5936, !36, i64 5944, !36, i64 5952, !36, i64 5960, !36, i64 5968, !36, i64 5976, !36, i64 5984, !36, i64 5992, !36, i64 6000, !36, i64 6008, !36, i64 6016, !36, i64 6024, !36, i64 6032, !36, i64 6040, !36, i64 6048, !36, i64 6056, !126, i64 6064, !36, i64 6216, !36, i64 6224, !36, i64 6232}
!116 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!117 = !{!"rctf", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!118 = !{!"RenderData", !119, i64 0, !36, i64 248, !36, i64 256, !122, i64 264, !123, i64 328, !39, i64 400, !39, i64 404, !39, i64 408, !41, i64 412, !39, i64 416, !39, i64 420, !39, i64 424, !39, i64 428, !40, i64 432, !40, i64 434, !41, i64 436, !41, i64 440, !41, i64 444, !41, i64 448, !41, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !39, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !39, i64 484, !39, i64 488, !40, i64 492, !40, i64 494, !39, i64 496, !39, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !37, i64 514, !37, i64 515, !39, i64 516, !39, i64 520, !39, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !117, i64 544, !117, i64 560, !116, i64 576, !47, i64 592, !40, i64 608, !40, i64 610, !41, i64 612, !41, i64 616, !41, i64 620, !41, i64 624, !39, i64 628, !41, i64 632, !41, i64 636, !41, i64 640, !41, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !41, i64 660, !41, i64 664, !40, i64 668, !40, i64 670, !41, i64 672, !41, i64 676, !37, i64 680, !39, i64 1704, !40, i64 1708, !40, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !39, i64 2520, !40, i64 2524, !40, i64 2526, !41, i64 2528, !41, i64 2532, !40, i64 2536, !40, i64 2538, !41, i64 2540, !40, i64 2544, !40, i64 2546, !39, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !41, i64 2560, !41, i64 2564, !36, i64 2568, !39, i64 2576, !41, i64 2580, !37, i64 2584, !124, i64 2616, !39, i64 3976, !39, i64 3980}
!119 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !40, i64 8, !40, i64 10, !41, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !120, i64 24, !121, i64 184}
!120 = !{!"ColorManagedViewSettings", !39, i64 0, !39, i64 4, !37, i64 8, !37, i64 72, !41, i64 136, !41, i64 140, !36, i64 144, !36, i64 152}
!121 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!122 = !{!"QuicktimeCodecSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !40, i64 48, !40, i64 50, !39, i64 52, !39, i64 56, !39, i64 60}
!123 = !{!"FFMpegCodecData", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !41, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !36, i64 64}
!124 = !{!"BakeData", !119, i64 0, !37, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !41, i64 1280, !41, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!125 = !{!"World", !44, i64 0, !36, i64 120, !40, i64 128, !40, i64 130, !40, i64 132, !40, i64 134, !41, i64 136, !41, i64 140, !41, i64 144, !41, i64 148, !41, i64 152, !41, i64 156, !41, i64 160, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180, !41, i64 184, !41, i64 188, !41, i64 192, !41, i64 196, !40, i64 200, !40, i64 202, !40, i64 204, !40, i64 206, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !41, i64 216, !41, i64 220, !41, i64 224, !41, i64 228, !41, i64 232, !41, i64 236, !41, i64 240, !41, i64 244, !41, i64 248, !41, i64 252, !41, i64 256, !41, i64 260, !40, i64 264, !40, i64 266, !40, i64 268, !40, i64 270, !41, i64 272, !41, i64 276, !41, i64 280, !41, i64 284, !40, i64 288, !40, i64 290, !40, i64 292, !40, i64 294, !41, i64 296, !41, i64 300, !41, i64 304, !41, i64 308, !41, i64 312, !41, i64 316, !41, i64 320, !40, i64 324, !40, i64 326, !40, i64 328, !40, i64 330, !40, i64 332, !40, i64 334, !36, i64 336, !36, i64 344, !36, i64 352, !37, i64 360, !40, i64 504, !40, i64 506, !37, i64 508, !36, i64 512, !36, i64 520}
!126 = !{!"RenderStats", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !40, i64 28, !40, i64 30, !40, i64 32, !40, i64 34, !40, i64 36, !40, i64 38, !37, i64 40, !127, i64 48, !127, i64 56, !36, i64 64, !36, i64 72, !37, i64 80, !41, i64 144, !41, i64 148}
!127 = !{!"double", !37, i64 0}
!128 = !{!43, !41, i64 296}
!129 = !{!43, !40, i64 288}
!130 = !{!35, !40, i64 1434}
!131 = distinct !{!131, !74, !75}
!132 = !{!35, !39, i64 1408}
!133 = !{!43, !39, i64 396}
!134 = !{!135, !36, i64 16}
!135 = !{!"MatInside", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!136 = distinct !{!136, !74, !75}
!137 = !{!35, !39, i64 1388}
!138 = !{!35, !39, i64 1412}
!139 = !{!35, !39, i64 1380}
!140 = !{!35, !39, i64 1384}
!141 = !{!35, !39, i64 1448}
!142 = !{!35, !39, i64 1452}
!143 = !{!35, !36, i64 1456}
!144 = !{!35, !36, i64 1464}
!145 = !{!115, !36, i64 5896}
!146 = !{!135, !36, i64 24}
!147 = !{!35, !36, i64 32}
!148 = !{!81, !36, i64 232}
!149 = !{!115, !41, i64 5680}
!150 = !{!43, !41, i64 280}
!151 = !{!43, !41, i64 228}
!152 = !{!53, !36, i64 248}
!153 = !{!154, !36, i64 32}
!154 = !{!"VolumePrecache", !37, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48}
!155 = !{!154, !36, i64 40}
!156 = !{!154, !36, i64 48}
!157 = distinct !{!157, !74, !75}
