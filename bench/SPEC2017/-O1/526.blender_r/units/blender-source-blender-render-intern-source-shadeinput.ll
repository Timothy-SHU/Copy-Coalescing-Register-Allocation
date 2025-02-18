; ModuleID = 'blender/source/blender/render/intern/source/shadeinput.c'
source_filename = "blender/source/blender/render/intern/source/shadeinput.c"
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
%struct.ShadeInput = type { ptr, ptr, ptr, ptr, ptr, i32, [3 x float], i16, ptr, ptr, ptr, i16, i16, i16, i16, i16, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, float, float, float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], float, [3 x float], [3 x float], [4 x float], float, [4 x float], [3 x float], [3 x float], [8 x %struct.ShadeInputUV], [8 x %struct.ShadeInputCol], i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, [3 x float], [3 x float], [3 x float], i32, i32, i32, [3 x float], i32, i32, i32, [3 x float], float, i8, i8, i16, i16, i16, i32, i32, i32, i32, ptr, ptr }
%struct.ShadeInputUV = type { [3 x float], [3 x float], [3 x float], ptr }
%struct.ShadeInputCol = type { [4 x float], ptr }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.ShadeResult = type { [4 x float], [4 x float], float, float, float, [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float] }
%struct.VlakRen = type { ptr, ptr, ptr, ptr, [3 x float], ptr, i8, i8, i8, i32 }
%struct.ObjectInstanceRen = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [4 x [4 x float]], [4 x [4 x float]], [3 x [3 x float]], i16, [3 x float], [2 x float], ptr, ptr, ptr, i32, ptr, i32 }
%struct.VertRen = type { [3 x float], [3 x float], ptr, i32, float, i32 }
%struct.ObjectRen = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, [2 x [3 x float]], i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [4 x [4 x float]], ptr, ptr, ptr, ptr }
%struct.StrandRen = type { ptr, ptr, i32, i32, i32, i32, [3 x float] }
%struct.StrandBuffer = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, float, float, float, float, [4 x [4 x float]], i32, i32 }
%struct.StrandPoint = type { float, [3 x float], [3 x float], [3 x float], float, float, [3 x float], [3 x float], float, [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], i32, i32, [4 x float], float, float, float }
%struct.StrandVert = type { [3 x float], float }
%struct.MCol = type { i8, i8, i8, i8 }
%struct.MTFace = type { [4 x [2 x float]], ptr, i8, i8, i16, i16, i16 }
%struct.RenderPart = type { ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i32, i32, i32, i16, i16, i16, i16, ptr }
%struct.RenderLayer = type { ptr, ptr, [74 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.ListBase }
%struct.ShadeSample = type { i32, [16 x ptr], [16 x %struct.ShadeInput], [16 x %struct.ShadeResult] }
%struct.PixStr = type { ptr, i32, i32, i32, i32, i16, i16 }
%struct.SampleTables = type { [16 x float], [9 x ptr], [9 x ptr], [256 x i8], ptr }

@R = external global %struct.Render, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @shade_input_init_material(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 32
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %2, ptr noundef nonnull align 4 dereferenceable(92) %4, i64 92, i1 false)
  %5 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 38
  %6 = load i16, ptr %5, align 8, !tbaa !42
  %7 = sext i16 %6 to i32
  %8 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 55
  store i32 %7, ptr %8, align 8, !tbaa !48
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local void @shade_material_loop(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = alloca %struct.ShadeResult, align 4
  tail call void @shade_lamp_loop(ptr noundef %0, ptr noundef %1) #11
  %4 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 54
  %5 = load float, ptr %4, align 4, !tbaa !49
  %6 = fcmp une float %5, 0.000000e+00
  br i1 %6, label %7, label %140

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 212, ptr nonnull %3) #11
  %8 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 32
  %9 = load ptr, ptr %0, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.Material, ptr %9, i64 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %8, ptr noundef nonnull align 4 dereferenceable(92) %10, i64 92, i1 false)
  %11 = getelementptr inbounds %struct.Material, ptr %9, i64 0, i32 38
  %12 = load i16, ptr %11, align 8, !tbaa !42
  %13 = sext i16 %12 to i32
  %14 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 55
  store i32 %13, ptr %14, align 8, !tbaa !48
  %15 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16
  %16 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 17
  %17 = load float, ptr %16, align 4, !tbaa !50
  %18 = fneg float %17
  store float %18, ptr %15, align 4, !tbaa !50
  %19 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 17, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !50
  %21 = fneg float %20
  %22 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 1
  store float %21, ptr %22, align 4, !tbaa !50
  %23 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 17, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !50
  %25 = fneg float %24
  %26 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 2
  store float %25, ptr %26, align 4, !tbaa !50
  %27 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 6
  %28 = load float, ptr %27, align 4, !tbaa !50
  %29 = fneg float %28
  store float %29, ptr %27, align 4, !tbaa !50
  %30 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 6, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !50
  %32 = fneg float %31
  store float %32, ptr %30, align 4, !tbaa !50
  %33 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 6, i64 2
  %34 = load float, ptr %33, align 4, !tbaa !50
  %35 = fneg float %34
  store float %35, ptr %33, align 4, !tbaa !50
  %36 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 108
  %37 = load i32, ptr %36, align 8, !tbaa !51
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr %36, align 8, !tbaa !51
  call void @shade_lamp_loop(ptr noundef nonnull %0, ptr noundef nonnull %3) #11
  %39 = load i32, ptr %36, align 8, !tbaa !51
  %40 = add nsw i32 %39, -1
  store i32 %40, ptr %36, align 8, !tbaa !51
  %41 = load float, ptr %3, align 4, !tbaa !50
  %42 = load float, ptr %1, align 4, !tbaa !50
  %43 = call float @llvm.fmuladd.f32(float %41, float %5, float %42)
  store float %43, ptr %1, align 4, !tbaa !50
  %44 = getelementptr inbounds float, ptr %3, i64 1
  %45 = load float, ptr %44, align 4, !tbaa !50
  %46 = getelementptr inbounds float, ptr %1, i64 1
  %47 = load float, ptr %46, align 4, !tbaa !50
  %48 = call float @llvm.fmuladd.f32(float %45, float %5, float %47)
  store float %48, ptr %46, align 4, !tbaa !50
  %49 = getelementptr inbounds float, ptr %3, i64 2
  %50 = load float, ptr %49, align 4, !tbaa !50
  %51 = getelementptr inbounds float, ptr %1, i64 2
  %52 = load float, ptr %51, align 4, !tbaa !50
  %53 = call float @llvm.fmuladd.f32(float %50, float %5, float %52)
  store float %53, ptr %51, align 4, !tbaa !50
  %54 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 119
  %55 = load i32, ptr %54, align 8, !tbaa !52
  %56 = and i32 %55, 16
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %74, label %58

58:                                               ; preds = %7
  %59 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 8
  %60 = getelementptr inbounds %struct.ShadeResult, ptr %3, i64 0, i32 8
  %61 = load float, ptr %60, align 4, !tbaa !50
  %62 = load float, ptr %59, align 4, !tbaa !50
  %63 = call float @llvm.fmuladd.f32(float %61, float %5, float %62)
  store float %63, ptr %59, align 4, !tbaa !50
  %64 = getelementptr inbounds %struct.ShadeResult, ptr %3, i64 0, i32 8, i64 1
  %65 = load float, ptr %64, align 4, !tbaa !50
  %66 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 8, i64 1
  %67 = load float, ptr %66, align 4, !tbaa !50
  %68 = call float @llvm.fmuladd.f32(float %65, float %5, float %67)
  store float %68, ptr %66, align 4, !tbaa !50
  %69 = getelementptr inbounds %struct.ShadeResult, ptr %3, i64 0, i32 8, i64 2
  %70 = load float, ptr %69, align 4, !tbaa !50
  %71 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 8, i64 2
  %72 = load float, ptr %71, align 4, !tbaa !50
  %73 = call float @llvm.fmuladd.f32(float %70, float %5, float %72)
  store float %73, ptr %71, align 4, !tbaa !50
  br label %74

74:                                               ; preds = %58, %7
  %75 = and i32 %55, 8
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %108, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 6
  %79 = getelementptr inbounds %struct.ShadeResult, ptr %3, i64 0, i32 6
  %80 = load float, ptr %79, align 4, !tbaa !50
  %81 = load float, ptr %78, align 4, !tbaa !50
  %82 = call float @llvm.fmuladd.f32(float %80, float %5, float %81)
  store float %82, ptr %78, align 4, !tbaa !50
  %83 = getelementptr inbounds %struct.ShadeResult, ptr %3, i64 0, i32 6, i64 1
  %84 = load float, ptr %83, align 4, !tbaa !50
  %85 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 6, i64 1
  %86 = load float, ptr %85, align 4, !tbaa !50
  %87 = call float @llvm.fmuladd.f32(float %84, float %5, float %86)
  store float %87, ptr %85, align 4, !tbaa !50
  %88 = getelementptr inbounds %struct.ShadeResult, ptr %3, i64 0, i32 6, i64 2
  %89 = load float, ptr %88, align 4, !tbaa !50
  %90 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 6, i64 2
  %91 = load float, ptr %90, align 4, !tbaa !50
  %92 = call float @llvm.fmuladd.f32(float %89, float %5, float %91)
  store float %92, ptr %90, align 4, !tbaa !50
  %93 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 7
  %94 = getelementptr inbounds %struct.ShadeResult, ptr %3, i64 0, i32 7
  %95 = load float, ptr %94, align 4, !tbaa !50
  %96 = load float, ptr %93, align 4, !tbaa !50
  %97 = call float @llvm.fmuladd.f32(float %95, float %5, float %96)
  store float %97, ptr %93, align 4, !tbaa !50
  %98 = getelementptr inbounds %struct.ShadeResult, ptr %3, i64 0, i32 7, i64 1
  %99 = load float, ptr %98, align 4, !tbaa !50
  %100 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 7, i64 1
  %101 = load float, ptr %100, align 4, !tbaa !50
  %102 = call float @llvm.fmuladd.f32(float %99, float %5, float %101)
  store float %102, ptr %100, align 4, !tbaa !50
  %103 = getelementptr inbounds %struct.ShadeResult, ptr %3, i64 0, i32 7, i64 2
  %104 = load float, ptr %103, align 4, !tbaa !50
  %105 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 7, i64 2
  %106 = load float, ptr %105, align 4, !tbaa !50
  %107 = call float @llvm.fmuladd.f32(float %104, float %5, float %106)
  store float %107, ptr %105, align 4, !tbaa !50
  br label %108

108:                                              ; preds = %77, %74
  %109 = and i32 %55, 32
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %127, label %111

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 9
  %113 = getelementptr inbounds %struct.ShadeResult, ptr %3, i64 0, i32 9
  %114 = load float, ptr %113, align 4, !tbaa !50
  %115 = load float, ptr %112, align 4, !tbaa !50
  %116 = call float @llvm.fmuladd.f32(float %114, float %5, float %115)
  store float %116, ptr %112, align 4, !tbaa !50
  %117 = getelementptr inbounds %struct.ShadeResult, ptr %3, i64 0, i32 9, i64 1
  %118 = load float, ptr %117, align 4, !tbaa !50
  %119 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 9, i64 1
  %120 = load float, ptr %119, align 4, !tbaa !50
  %121 = call float @llvm.fmuladd.f32(float %118, float %5, float %120)
  store float %121, ptr %119, align 4, !tbaa !50
  %122 = getelementptr inbounds %struct.ShadeResult, ptr %3, i64 0, i32 9, i64 2
  %123 = load float, ptr %122, align 4, !tbaa !50
  %124 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 9, i64 2
  %125 = load float, ptr %124, align 4, !tbaa !50
  %126 = call float @llvm.fmuladd.f32(float %123, float %5, float %125)
  store float %126, ptr %124, align 4, !tbaa !50
  br label %127

127:                                              ; preds = %111, %108
  %128 = load float, ptr %15, align 4, !tbaa !50
  %129 = fneg float %128
  store float %129, ptr %15, align 4, !tbaa !50
  %130 = load float, ptr %22, align 4, !tbaa !50
  %131 = fneg float %130
  store float %131, ptr %22, align 4, !tbaa !50
  %132 = load float, ptr %26, align 4, !tbaa !50
  %133 = fneg float %132
  store float %133, ptr %26, align 4, !tbaa !50
  %134 = load float, ptr %27, align 4, !tbaa !50
  %135 = fneg float %134
  store float %135, ptr %27, align 4, !tbaa !50
  %136 = load float, ptr %30, align 4, !tbaa !50
  %137 = fneg float %136
  store float %137, ptr %30, align 4, !tbaa !50
  %138 = load float, ptr %33, align 4, !tbaa !50
  %139 = fneg float %138
  store float %139, ptr %33, align 4, !tbaa !50
  call void @llvm.lifetime.end.p0(i64 212, ptr nonnull %3) #11
  br label %140

140:                                              ; preds = %127, %2
  %141 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 108
  %142 = load i32, ptr %141, align 8, !tbaa !51
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %148, label %144

144:                                              ; preds = %140
  %145 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 109
  %146 = load i32, ptr %145, align 4, !tbaa !53
  %147 = icmp sgt i32 %146, 0
  br i1 %147, label %148, label %181

148:                                              ; preds = %144, %140
  %149 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !54
  %150 = and i32 %149, 65536
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %166, label %152

152:                                              ; preds = %148
  %153 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 48
  %154 = load float, ptr %153, align 4, !tbaa !68
  %155 = fcmp une float %154, 0.000000e+00
  br i1 %155, label %165, label %156

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 21
  %158 = load i32, ptr %157, align 8, !tbaa !69
  %159 = and i32 %158, 196608
  %160 = icmp eq i32 %159, 196608
  br i1 %160, label %161, label %166

161:                                              ; preds = %156
  %162 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 2
  %163 = load float, ptr %162, align 4, !tbaa !70
  %164 = fcmp une float %163, 1.000000e+00
  br i1 %164, label %165, label %166

165:                                              ; preds = %161, %152
  call void @ray_trace(ptr noundef %0, ptr noundef %1) #11
  br label %166

166:                                              ; preds = %156, %161, %165, %148
  %167 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 21
  %168 = load i32, ptr %167, align 8, !tbaa !69
  %169 = and i32 %168, 196608
  %170 = icmp eq i32 %169, 196608
  br i1 %170, label %171, label %181

171:                                              ; preds = %166
  %172 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 118
  %173 = load i32, ptr %172, align 4, !tbaa !72
  %174 = and i32 %173, 16
  %175 = icmp ne i32 %174, 0
  %176 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 53), align 8
  %177 = icmp eq i16 %176, 0
  %178 = select i1 %175, i1 %177, i1 false
  br i1 %178, label %179, label %181

179:                                              ; preds = %171
  %180 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 2
  store float 1.000000e+00, ptr %180, align 4, !tbaa !70
  br label %181

181:                                              ; preds = %166, %179, %171, %144
  %182 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !54
  %183 = and i32 %182, 65536
  %184 = icmp ne i32 %183, 0
  %185 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 79), align 8
  %186 = icmp ne ptr %185, null
  %187 = select i1 %184, i1 %186, i1 false
  br i1 %187, label %188, label %189

188:                                              ; preds = %181
  call void @shade_volume_inside(ptr noundef %0, ptr noundef %1) #11
  br label %189

189:                                              ; preds = %188, %181
  ret void
}

declare void @shade_lamp_loop(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

declare void @ray_trace(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @shade_volume_inside(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @shade_input_do_shade(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 103
  %5 = load ptr, ptr %4, align 8, !tbaa !73
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 77
  %9 = load i8, ptr %8, align 1, !tbaa !74
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = tail call zeroext i8 @ntreeShaderExecTree(ptr noundef nonnull %5, ptr noundef nonnull %0, ptr noundef %1) #11
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %7, %2, %11
  %15 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 32
  %16 = load ptr, ptr %0, align 8, !tbaa !34
  %17 = getelementptr inbounds %struct.Material, ptr %16, i64 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %15, ptr noundef nonnull align 4 dereferenceable(92) %17, i64 92, i1 false)
  %18 = getelementptr inbounds %struct.Material, ptr %16, i64 0, i32 38
  %19 = load i16, ptr %18, align 8, !tbaa !42
  %20 = sext i16 %19 to i32
  %21 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 55
  store i32 %20, ptr %21, align 8, !tbaa !48
  %22 = getelementptr inbounds %struct.Material, ptr %16, i64 0, i32 2
  %23 = load i16, ptr %22, align 8, !tbaa !75
  %24 = icmp eq i16 %23, 2
  br i1 %24, label %25, label %30

25:                                               ; preds = %14
  %26 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !54
  %27 = and i32 %26, 65536
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  tail call void @shade_volume_outside(ptr noundef nonnull %0, ptr noundef %1) #11
  br label %31

30:                                               ; preds = %14
  tail call void @shade_material_loop(ptr noundef nonnull %0, ptr noundef %1)
  br label %31

31:                                               ; preds = %30, %29, %25, %11
  %32 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 119
  %33 = load i32, ptr %32, align 8, !tbaa !52
  %34 = and i32 %33, 768
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %58, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 16
  %38 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 69
  %39 = load float, ptr %38, align 4, !tbaa !50
  store float %39, ptr %37, align 4, !tbaa !50
  %40 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 69, i64 1
  %41 = load float, ptr %40, align 4, !tbaa !50
  %42 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 16, i64 1
  store float %41, ptr %42, align 4, !tbaa !50
  %43 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 69, i64 2
  %44 = load float, ptr %43, align 4, !tbaa !50
  %45 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 16, i64 2
  store float %44, ptr %45, align 4, !tbaa !50
  %46 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 69, i64 3
  %47 = load float, ptr %46, align 4, !tbaa !50
  %48 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 16, i64 3
  store float %47, ptr %48, align 4, !tbaa !50
  %49 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 15
  %50 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16
  %51 = load float, ptr %50, align 4, !tbaa !50
  store float %51, ptr %49, align 4, !tbaa !50
  %52 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 1
  %53 = load float, ptr %52, align 4, !tbaa !50
  %54 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 15, i64 1
  store float %53, ptr %54, align 4, !tbaa !50
  %55 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 2
  %56 = load float, ptr %55, align 4, !tbaa !50
  %57 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 15, i64 2
  store float %56, ptr %57, align 4, !tbaa !50
  br label %58

58:                                               ; preds = %36, %31
  %59 = and i32 %33, 16384
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %58
  %62 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 23), align 2, !tbaa !76
  %63 = and i16 %62, 1
  %64 = icmp eq i16 %63, 0
  br i1 %64, label %93, label %65

65:                                               ; preds = %61
  %66 = load ptr, ptr %0, align 8, !tbaa !34
  %67 = getelementptr inbounds %struct.Material, ptr %66, i64 0, i32 51
  %68 = load i32, ptr %67, align 4, !tbaa !77
  %69 = and i32 %68, 16384
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %93

71:                                               ; preds = %65, %58
  %72 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !54
  %73 = and i32 %72, 8
  %74 = icmp eq i32 %73, 0
  %75 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29
  br i1 %74, label %80, label %76

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29, i64 2
  %78 = load float, ptr %77, align 8, !tbaa !50
  %79 = fneg float %78
  br label %90

80:                                               ; preds = %71
  %81 = load float, ptr %75, align 4, !tbaa !50
  %82 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29, i64 1
  %83 = load float, ptr %82, align 4, !tbaa !50
  %84 = fmul float %83, %83
  %85 = tail call float @llvm.fmuladd.f32(float %81, float %81, float %84)
  %86 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29, i64 2
  %87 = load float, ptr %86, align 4, !tbaa !50
  %88 = tail call float @llvm.fmuladd.f32(float %87, float %87, float %85)
  %89 = tail call float @sqrtf(float noundef %88) #11
  br label %90

90:                                               ; preds = %80, %76
  %91 = phi float [ %79, %76 ], [ %89, %80 ]
  %92 = tail call float @mistfactor(float noundef %91, ptr noundef nonnull %75) #11
  br label %93

93:                                               ; preds = %90, %61, %65
  %94 = phi float [ 0.000000e+00, %65 ], [ 0.000000e+00, %61 ], [ %92, %90 ]
  %95 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 3
  store float %94, ptr %95, align 4, !tbaa !78
  %96 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 23), align 2, !tbaa !76
  %97 = and i16 %96, 1
  %98 = icmp eq i16 %97, 0
  br i1 %98, label %108, label %99

99:                                               ; preds = %93
  %100 = load ptr, ptr %0, align 8, !tbaa !34
  %101 = getelementptr inbounds %struct.Material, ptr %100, i64 0, i32 51
  %102 = load i32, ptr %101, align 4, !tbaa !77
  %103 = and i32 %102, 16384
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %99
  %106 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 3
  %107 = load float, ptr %106, align 4, !tbaa !78
  br label %108

108:                                              ; preds = %93, %99, %105
  %109 = phi float [ %107, %105 ], [ 1.000000e+00, %99 ], [ 1.000000e+00, %93 ]
  %110 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 2
  %111 = load float, ptr %110, align 4, !tbaa !70
  %112 = fcmp une float %111, 1.000000e+00
  %113 = fcmp une float %109, 1.000000e+00
  %114 = select i1 %112, i1 true, i1 %113
  br i1 %114, label %115, label %131

115:                                              ; preds = %108
  %116 = fmul float %109, %111
  %117 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 3
  store float %116, ptr %117, align 4, !tbaa !50
  %118 = load ptr, ptr %0, align 8, !tbaa !34
  %119 = getelementptr inbounds %struct.Material, ptr %118, i64 0, i32 2
  %120 = load i16, ptr %119, align 8, !tbaa !75
  %121 = icmp eq i16 %120, 2
  br i1 %121, label %133, label %122

122:                                              ; preds = %115
  %123 = load float, ptr %1, align 4, !tbaa !50
  %124 = fmul float %116, %123
  store float %124, ptr %1, align 4, !tbaa !50
  %125 = getelementptr inbounds float, ptr %1, i64 1
  %126 = load float, ptr %125, align 4, !tbaa !50
  %127 = fmul float %116, %126
  store float %127, ptr %125, align 4, !tbaa !50
  %128 = getelementptr inbounds float, ptr %1, i64 2
  %129 = load float, ptr %128, align 4, !tbaa !50
  %130 = fmul float %116, %129
  store float %130, ptr %128, align 4, !tbaa !50
  br label %133

131:                                              ; preds = %108
  %132 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 3
  store float 1.000000e+00, ptr %132, align 4, !tbaa !50
  br label %133

133:                                              ; preds = %115, %122, %131
  %134 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29, i64 2
  %135 = load float, ptr %134, align 8, !tbaa !50
  %136 = fneg float %135
  %137 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 4
  store float %136, ptr %137, align 4, !tbaa !79
  ret void
}

declare zeroext i8 @ntreeShaderExecTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @shade_volume_outside(ptr noundef, ptr noundef) local_unnamed_addr #3

declare float @mistfactor(float noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @vlr_set_uv_indices(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) local_unnamed_addr #5 {
  %5 = getelementptr inbounds %struct.VlakRen, ptr %0, i64 0, i32 7
  %6 = load i8, ptr %5, align 1, !tbaa !80
  %7 = zext i8 %6 to i32
  %8 = and i32 %7, 32
  %9 = icmp eq i32 %8, 0
  %10 = and i32 %7, 16
  %11 = icmp eq i32 %10, 0
  br i1 %9, label %16, label %12

12:                                               ; preds = %4
  br i1 %11, label %20, label %13

13:                                               ; preds = %12
  %14 = load i32, ptr %1, align 4, !tbaa !82
  %15 = add nsw i32 %14, 1
  store i32 %15, ptr %1, align 4, !tbaa !82
  br label %17

16:                                               ; preds = %4
  br i1 %11, label %23, label %17

17:                                               ; preds = %16, %13
  %18 = load i32, ptr %2, align 4, !tbaa !82
  %19 = add nsw i32 %18, 1
  store i32 %19, ptr %2, align 4, !tbaa !82
  br label %20

20:                                               ; preds = %17, %12
  %21 = load i32, ptr %3, align 4, !tbaa !82
  %22 = add nsw i32 %21, 1
  store i32 %22, ptr %3, align 4, !tbaa !82
  br label %23

23:                                               ; preds = %20, %16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @shade_input_set_triangle_i(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef signext %3, i16 noundef signext %4, i16 noundef signext %5) local_unnamed_addr #2 {
  %7 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 1
  store ptr %2, ptr %7, align 8, !tbaa !83
  %8 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 3
  store ptr %1, ptr %8, align 8, !tbaa !84
  %9 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !85
  %11 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 4
  store ptr %10, ptr %11, align 8, !tbaa !87
  %12 = sext i16 %3 to i64
  %13 = getelementptr inbounds ptr, ptr %2, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !88
  %15 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 8
  store ptr %14, ptr %15, align 8, !tbaa !89
  %16 = sext i16 %4 to i64
  %17 = getelementptr inbounds ptr, ptr %2, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !88
  %19 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 9
  store ptr %18, ptr %19, align 8, !tbaa !90
  %20 = sext i16 %5 to i64
  %21 = getelementptr inbounds ptr, ptr %2, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !88
  %23 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 10
  store ptr %22, ptr %23, align 8, !tbaa !91
  %24 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 11
  store i16 %3, ptr %24, align 8, !tbaa !92
  %25 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 12
  store i16 %4, ptr %25, align 2, !tbaa !93
  %26 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 13
  store i16 %5, ptr %26, align 4, !tbaa !94
  %27 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 122
  %28 = load ptr, ptr %27, align 8, !tbaa !95
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %6
  %31 = getelementptr inbounds %struct.VlakRen, ptr %2, i64 0, i32 5
  %32 = load ptr, ptr %31, align 8, !tbaa !96
  br label %33

33:                                               ; preds = %6, %30
  %34 = phi ptr [ %32, %30 ], [ %28, %6 ]
  store ptr %34, ptr %0, align 8, !tbaa !34
  %35 = getelementptr inbounds %struct.Material, ptr %34, i64 0, i32 90
  %36 = load i16, ptr %35, align 4, !tbaa !97
  %37 = and i16 %36, 512
  %38 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 15
  store i16 %37, ptr %38, align 8, !tbaa !98
  %39 = getelementptr inbounds %struct.Material, ptr %34, i64 0, i32 52
  %40 = load i32, ptr %39, align 8, !tbaa !99
  %41 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 21
  store i32 %40, ptr %41, align 8, !tbaa !69
  %42 = getelementptr inbounds %struct.Material, ptr %34, i64 0, i32 54
  %43 = load i32, ptr %42, align 8, !tbaa !100
  %44 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 22
  store i32 %43, ptr %44, align 4, !tbaa !101
  %45 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 7
  store i16 0, ptr %45, align 8, !tbaa !102
  %46 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 6
  tail call void @RE_vlakren_get_normal(ptr noundef nonnull @R, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %46) #11
  %47 = getelementptr inbounds %struct.VlakRen, ptr %2, i64 0, i32 7
  %48 = load i8, ptr %47, align 1, !tbaa !80
  %49 = and i8 %48, 1
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %145, label %51

51:                                               ; preds = %33
  %52 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 18
  %53 = load ptr, ptr %15, align 8, !tbaa !89
  %54 = getelementptr inbounds %struct.VertRen, ptr %53, i64 0, i32 1
  %55 = load float, ptr %54, align 4, !tbaa !50
  store float %55, ptr %52, align 4, !tbaa !50
  %56 = getelementptr inbounds %struct.VertRen, ptr %53, i64 0, i32 1, i64 1
  %57 = load float, ptr %56, align 4, !tbaa !50
  %58 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 18, i64 1
  store float %57, ptr %58, align 4, !tbaa !50
  %59 = getelementptr inbounds %struct.VertRen, ptr %53, i64 0, i32 1, i64 2
  %60 = load float, ptr %59, align 4, !tbaa !50
  %61 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 18, i64 2
  store float %60, ptr %61, align 4, !tbaa !50
  %62 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 19
  %63 = load ptr, ptr %19, align 8, !tbaa !90
  %64 = getelementptr inbounds %struct.VertRen, ptr %63, i64 0, i32 1
  %65 = load float, ptr %64, align 4, !tbaa !50
  store float %65, ptr %62, align 4, !tbaa !50
  %66 = getelementptr inbounds %struct.VertRen, ptr %63, i64 0, i32 1, i64 1
  %67 = load float, ptr %66, align 4, !tbaa !50
  %68 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 19, i64 1
  store float %67, ptr %68, align 4, !tbaa !50
  %69 = getelementptr inbounds %struct.VertRen, ptr %63, i64 0, i32 1, i64 2
  %70 = load float, ptr %69, align 4, !tbaa !50
  %71 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 19, i64 2
  store float %70, ptr %71, align 4, !tbaa !50
  %72 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 20
  %73 = load ptr, ptr %23, align 8, !tbaa !91
  %74 = getelementptr inbounds %struct.VertRen, ptr %73, i64 0, i32 1
  %75 = load float, ptr %74, align 4, !tbaa !50
  store float %75, ptr %72, align 4, !tbaa !50
  %76 = getelementptr inbounds %struct.VertRen, ptr %73, i64 0, i32 1, i64 1
  %77 = load float, ptr %76, align 4, !tbaa !50
  %78 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 20, i64 1
  store float %77, ptr %78, align 4, !tbaa !50
  %79 = getelementptr inbounds %struct.VertRen, ptr %73, i64 0, i32 1, i64 2
  %80 = load float, ptr %79, align 4, !tbaa !50
  %81 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 20, i64 2
  store float %80, ptr %81, align 4, !tbaa !50
  %82 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %1, i64 0, i32 11
  %83 = load i16, ptr %82, align 8, !tbaa !103
  %84 = and i16 %83, 3
  %85 = icmp eq i16 %84, 0
  br i1 %85, label %145, label %86

86:                                               ; preds = %51
  %87 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %1, i64 0, i32 10
  tail call void @mul_m3_v3(ptr noundef nonnull %87, ptr noundef nonnull %52) #11
  %88 = load float, ptr %52, align 4, !tbaa !50
  %89 = load float, ptr %58, align 4, !tbaa !50
  %90 = fmul float %89, %89
  %91 = tail call float @llvm.fmuladd.f32(float %88, float %88, float %90)
  %92 = load float, ptr %61, align 4, !tbaa !50
  %93 = tail call float @llvm.fmuladd.f32(float %92, float %92, float %91)
  %94 = fcmp ogt float %93, 0x38AA95A5C0000000
  br i1 %94, label %95, label %104

95:                                               ; preds = %86
  %96 = tail call float @sqrtf(float noundef %93) #11
  %97 = fdiv float 1.000000e+00, %96
  %98 = load float, ptr %52, align 4, !tbaa !50
  %99 = fmul float %98, %97
  store float %99, ptr %52, align 4, !tbaa !50
  %100 = load float, ptr %58, align 4, !tbaa !50
  %101 = fmul float %97, %100
  store float %101, ptr %58, align 4, !tbaa !50
  %102 = load float, ptr %61, align 4, !tbaa !50
  %103 = fmul float %97, %102
  br label %105

104:                                              ; preds = %86
  store float 0.000000e+00, ptr %52, align 4, !tbaa !50
  store float 0.000000e+00, ptr %58, align 4, !tbaa !50
  br label %105

105:                                              ; preds = %95, %104
  %106 = phi float [ 0.000000e+00, %104 ], [ %103, %95 ]
  store float %106, ptr %61, align 4, !tbaa !50
  tail call void @mul_m3_v3(ptr noundef nonnull %87, ptr noundef nonnull %62) #11
  %107 = load float, ptr %62, align 4, !tbaa !50
  %108 = load float, ptr %68, align 4, !tbaa !50
  %109 = fmul float %108, %108
  %110 = tail call float @llvm.fmuladd.f32(float %107, float %107, float %109)
  %111 = load float, ptr %71, align 4, !tbaa !50
  %112 = tail call float @llvm.fmuladd.f32(float %111, float %111, float %110)
  %113 = fcmp ogt float %112, 0x38AA95A5C0000000
  br i1 %113, label %114, label %123

114:                                              ; preds = %105
  %115 = tail call float @sqrtf(float noundef %112) #11
  %116 = fdiv float 1.000000e+00, %115
  %117 = load float, ptr %62, align 4, !tbaa !50
  %118 = fmul float %117, %116
  store float %118, ptr %62, align 4, !tbaa !50
  %119 = load float, ptr %68, align 4, !tbaa !50
  %120 = fmul float %116, %119
  store float %120, ptr %68, align 4, !tbaa !50
  %121 = load float, ptr %71, align 4, !tbaa !50
  %122 = fmul float %116, %121
  br label %124

123:                                              ; preds = %105
  store float 0.000000e+00, ptr %62, align 4, !tbaa !50
  store float 0.000000e+00, ptr %68, align 4, !tbaa !50
  br label %124

124:                                              ; preds = %114, %123
  %125 = phi float [ 0.000000e+00, %123 ], [ %122, %114 ]
  store float %125, ptr %71, align 4, !tbaa !50
  tail call void @mul_m3_v3(ptr noundef nonnull %87, ptr noundef nonnull %72) #11
  %126 = load float, ptr %72, align 4, !tbaa !50
  %127 = load float, ptr %78, align 4, !tbaa !50
  %128 = fmul float %127, %127
  %129 = tail call float @llvm.fmuladd.f32(float %126, float %126, float %128)
  %130 = load float, ptr %81, align 4, !tbaa !50
  %131 = tail call float @llvm.fmuladd.f32(float %130, float %130, float %129)
  %132 = fcmp ogt float %131, 0x38AA95A5C0000000
  br i1 %132, label %133, label %142

133:                                              ; preds = %124
  %134 = tail call float @sqrtf(float noundef %131) #11
  %135 = fdiv float 1.000000e+00, %134
  %136 = load float, ptr %72, align 4, !tbaa !50
  %137 = fmul float %136, %135
  store float %137, ptr %72, align 4, !tbaa !50
  %138 = load float, ptr %78, align 4, !tbaa !50
  %139 = fmul float %135, %138
  store float %139, ptr %78, align 4, !tbaa !50
  %140 = load float, ptr %81, align 4, !tbaa !50
  %141 = fmul float %135, %140
  br label %143

142:                                              ; preds = %124
  store float 0.000000e+00, ptr %72, align 4, !tbaa !50
  store float 0.000000e+00, ptr %78, align 4, !tbaa !50
  br label %143

143:                                              ; preds = %133, %142
  %144 = phi float [ 0.000000e+00, %142 ], [ %141, %133 ]
  store float %144, ptr %81, align 4, !tbaa !50
  br label %145

145:                                              ; preds = %51, %143, %33
  ret void
}

declare void @RE_vlakren_get_normal(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @shade_input_set_triangle(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 %3) local_unnamed_addr #2 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store volatile i32 %1, ptr %5, align 4, !tbaa !82
  store volatile i32 %2, ptr %6, align 4, !tbaa !82
  %7 = load volatile i32, ptr %6, align 4, !tbaa !82
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %35

9:                                                ; preds = %4
  %10 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 69), align 8, !tbaa !104
  %11 = load volatile i32, ptr %5, align 4, !tbaa !82
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %10, i64 %12
  %14 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 3
  store ptr %13, ptr %14, align 8, !tbaa !84
  %15 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %10, i64 %12, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !85
  %17 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 4
  store ptr %16, ptr %17, align 8, !tbaa !87
  %18 = load volatile i32, ptr %6, align 4, !tbaa !82
  %19 = add i32 %18, 134217727
  %20 = and i32 %19, 134217727
  %21 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 5
  store i32 %20, ptr %21, align 8, !tbaa !105
  %22 = getelementptr inbounds %struct.ObjectRen, ptr %16, i64 0, i32 11
  %23 = load i32, ptr %22, align 4, !tbaa !106
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %9
  %26 = tail call ptr @RE_findOrAddVlak(ptr noundef %16, i32 noundef %20) #11
  %27 = load volatile i32, ptr %6, align 4, !tbaa !82
  %28 = and i32 %27, 134217728
  %29 = icmp eq i32 %28, 0
  %30 = load ptr, ptr %14, align 8, !tbaa !84
  br i1 %29, label %32, label %31

31:                                               ; preds = %25
  tail call void @shade_input_set_triangle_i(ptr noundef %0, ptr noundef %30, ptr noundef %26, i16 noundef signext 0, i16 noundef signext 2, i16 noundef signext 3)
  br label %37

32:                                               ; preds = %25
  tail call void @shade_input_set_triangle_i(ptr noundef %0, ptr noundef %30, ptr noundef %26, i16 noundef signext 0, i16 noundef signext 1, i16 noundef signext 2)
  br label %37

33:                                               ; preds = %9
  %34 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 1
  store ptr null, ptr %34, align 8, !tbaa !83
  br label %37

35:                                               ; preds = %4
  %36 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 1
  store ptr null, ptr %36, align 8, !tbaa !83
  br label %37

37:                                               ; preds = %31, %32, %33, %35
  ret void
}

declare ptr @RE_findOrAddVlak(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @shade_input_copy_triangle(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(168) %1, i64 168, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @shade_input_set_strand(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 122
  %5 = load ptr, ptr %4, align 8, !tbaa !95
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.StrandRen, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !108
  %10 = getelementptr inbounds %struct.StrandBuffer, ptr %9, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !110
  br label %12

12:                                               ; preds = %3, %7
  %13 = phi ptr [ %11, %7 ], [ %5, %3 ]
  store ptr %13, ptr %0, align 8, !tbaa !34
  %14 = getelementptr inbounds %struct.Material, ptr %13, i64 0, i32 90
  %15 = load i16, ptr %14, align 4, !tbaa !97
  %16 = and i16 %15, 512
  %17 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 15
  store i16 %16, ptr %17, align 8, !tbaa !98
  %18 = getelementptr inbounds %struct.Material, ptr %13, i64 0, i32 52
  %19 = load i32, ptr %18, align 8, !tbaa !99
  %20 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 21
  store i32 %19, ptr %20, align 8, !tbaa !69
  %21 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29
  %22 = getelementptr inbounds %struct.StrandPoint, ptr %2, i64 0, i32 1
  %23 = load float, ptr %22, align 4, !tbaa !50
  store float %23, ptr %21, align 4, !tbaa !50
  %24 = getelementptr inbounds %struct.StrandPoint, ptr %2, i64 0, i32 1, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !50
  %26 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29, i64 1
  store float %25, ptr %26, align 4, !tbaa !50
  %27 = getelementptr inbounds %struct.StrandPoint, ptr %2, i64 0, i32 1, i64 2
  %28 = load float, ptr %27, align 4, !tbaa !50
  %29 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29, i64 2
  store float %28, ptr %29, align 4, !tbaa !50
  %30 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30
  store float %23, ptr %30, align 4, !tbaa !50
  %31 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30, i64 1
  store float %25, ptr %31, align 4, !tbaa !50
  %32 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30, i64 2
  store float %28, ptr %32, align 4, !tbaa !50
  %33 = fmul float %25, %25
  %34 = tail call float @llvm.fmuladd.f32(float %23, float %23, float %33)
  %35 = tail call float @llvm.fmuladd.f32(float %28, float %28, float %34)
  %36 = fcmp ogt float %35, 0x38AA95A5C0000000
  br i1 %36, label %37, label %46

37:                                               ; preds = %12
  %38 = tail call float @sqrtf(float noundef %35) #11
  %39 = fdiv float 1.000000e+00, %38
  %40 = load float, ptr %30, align 4, !tbaa !50
  %41 = fmul float %40, %39
  store float %41, ptr %30, align 4, !tbaa !50
  %42 = load float, ptr %31, align 4, !tbaa !50
  %43 = fmul float %39, %42
  store float %43, ptr %31, align 4, !tbaa !50
  %44 = load float, ptr %32, align 4, !tbaa !50
  %45 = fmul float %39, %44
  br label %47

46:                                               ; preds = %12
  store float 0.000000e+00, ptr %30, align 4, !tbaa !50
  store float 0.000000e+00, ptr %31, align 4, !tbaa !50
  br label %47

47:                                               ; preds = %37, %46
  %48 = phi float [ 0.000000e+00, %46 ], [ %45, %37 ]
  store float %48, ptr %32, align 4, !tbaa !50
  %49 = getelementptr inbounds %struct.StrandPoint, ptr %2, i64 0, i32 18
  %50 = load float, ptr %49, align 4, !tbaa !112
  %51 = fptosi float %50 to i32
  %52 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 103
  store i32 %51, ptr %52, align 4, !tbaa !114
  %53 = getelementptr inbounds %struct.StrandPoint, ptr %2, i64 0, i32 19
  %54 = load float, ptr %53, align 4, !tbaa !115
  %55 = fptosi float %54 to i32
  %56 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 104
  store i32 %55, ptr %56, align 8, !tbaa !116
  %57 = load i16, ptr %17, align 8, !tbaa !98
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %47
  %60 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !54
  %61 = and i32 %60, 2
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %82, label %63

63:                                               ; preds = %59, %47
  %64 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 78
  %65 = getelementptr inbounds %struct.StrandPoint, ptr %2, i64 0, i32 6
  %66 = load float, ptr %65, align 4, !tbaa !50
  store float %66, ptr %64, align 4, !tbaa !50
  %67 = getelementptr inbounds %struct.StrandPoint, ptr %2, i64 0, i32 6, i64 1
  %68 = load float, ptr %67, align 4, !tbaa !50
  %69 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 78, i64 1
  store float %68, ptr %69, align 4, !tbaa !50
  %70 = getelementptr inbounds %struct.StrandPoint, ptr %2, i64 0, i32 6, i64 2
  %71 = load float, ptr %70, align 4, !tbaa !50
  %72 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 78, i64 2
  store float %71, ptr %72, align 4, !tbaa !50
  %73 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 79
  %74 = getelementptr inbounds %struct.StrandPoint, ptr %2, i64 0, i32 7
  %75 = load float, ptr %74, align 4, !tbaa !50
  store float %75, ptr %73, align 4, !tbaa !50
  %76 = getelementptr inbounds %struct.StrandPoint, ptr %2, i64 0, i32 7, i64 1
  %77 = load float, ptr %76, align 4, !tbaa !50
  %78 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 79, i64 1
  store float %77, ptr %78, align 4, !tbaa !50
  %79 = getelementptr inbounds %struct.StrandPoint, ptr %2, i64 0, i32 7, i64 2
  %80 = load float, ptr %79, align 4, !tbaa !50
  %81 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 79, i64 2
  store float %80, ptr %81, align 4, !tbaa !50
  br label %82

82:                                               ; preds = %63, %59
  %83 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 6
  %84 = getelementptr inbounds %struct.StrandPoint, ptr %2, i64 0, i32 2
  %85 = load float, ptr %84, align 4, !tbaa !50
  store float %85, ptr %83, align 4, !tbaa !50
  %86 = getelementptr inbounds %struct.StrandPoint, ptr %2, i64 0, i32 2, i64 1
  %87 = load float, ptr %86, align 4, !tbaa !50
  %88 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 6, i64 1
  store float %87, ptr %88, align 4, !tbaa !50
  %89 = getelementptr inbounds %struct.StrandPoint, ptr %2, i64 0, i32 2, i64 2
  %90 = load float, ptr %89, align 4, !tbaa !50
  %91 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 6, i64 2
  store float %90, ptr %91, align 4, !tbaa !50
  %92 = load ptr, ptr %0, align 8, !tbaa !34
  %93 = getelementptr inbounds %struct.Material, ptr %92, i64 0, i32 51
  %94 = load i32, ptr %93, align 4, !tbaa !77
  %95 = and i32 %94, 16777216
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %107, label %97

97:                                               ; preds = %82
  %98 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16
  %99 = getelementptr inbounds %struct.StrandPoint, ptr %2, i64 0, i32 3
  %100 = load float, ptr %99, align 4, !tbaa !50
  store float %100, ptr %98, align 4, !tbaa !50
  %101 = getelementptr inbounds %struct.StrandPoint, ptr %2, i64 0, i32 3, i64 1
  %102 = load float, ptr %101, align 4, !tbaa !50
  %103 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 1
  store float %102, ptr %103, align 4, !tbaa !50
  %104 = getelementptr inbounds %struct.StrandPoint, ptr %2, i64 0, i32 3, i64 2
  %105 = load float, ptr %104, align 4, !tbaa !50
  %106 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 2
  store float %105, ptr %106, align 4, !tbaa !50
  br label %171

107:                                              ; preds = %82
  %108 = getelementptr inbounds %struct.StrandPoint, ptr %2, i64 0, i32 3
  %109 = load float, ptr %24, align 4, !tbaa !50
  %110 = getelementptr inbounds %struct.StrandPoint, ptr %2, i64 0, i32 3, i64 2
  %111 = load float, ptr %110, align 4, !tbaa !50
  %112 = load float, ptr %27, align 4, !tbaa !50
  %113 = getelementptr inbounds %struct.StrandPoint, ptr %2, i64 0, i32 3, i64 1
  %114 = load float, ptr %113, align 4, !tbaa !50
  %115 = fneg float %112
  %116 = fmul float %114, %115
  %117 = tail call float @llvm.fmuladd.f32(float %109, float %111, float %116)
  %118 = load float, ptr %108, align 4, !tbaa !50
  %119 = load float, ptr %22, align 4, !tbaa !50
  %120 = fneg float %119
  %121 = fmul float %111, %120
  %122 = tail call float @llvm.fmuladd.f32(float %112, float %118, float %121)
  %123 = fneg float %109
  %124 = fmul float %118, %123
  %125 = tail call float @llvm.fmuladd.f32(float %119, float %114, float %124)
  %126 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16
  %127 = fneg float %125
  %128 = fmul float %114, %127
  %129 = tail call float @llvm.fmuladd.f32(float %122, float %111, float %128)
  store float %129, ptr %126, align 4, !tbaa !50
  %130 = load float, ptr %108, align 4, !tbaa !50
  %131 = load float, ptr %110, align 4, !tbaa !50
  %132 = fneg float %117
  %133 = fmul float %131, %132
  %134 = tail call float @llvm.fmuladd.f32(float %125, float %130, float %133)
  %135 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 1
  store float %134, ptr %135, align 4, !tbaa !50
  %136 = load float, ptr %113, align 4, !tbaa !50
  %137 = load float, ptr %108, align 4, !tbaa !50
  %138 = fneg float %122
  %139 = fmul float %137, %138
  %140 = tail call float @llvm.fmuladd.f32(float %117, float %136, float %139)
  %141 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 2
  store float %140, ptr %141, align 4, !tbaa !50
  %142 = fmul float %134, %134
  %143 = tail call float @llvm.fmuladd.f32(float %129, float %129, float %142)
  %144 = tail call float @llvm.fmuladd.f32(float %140, float %140, float %143)
  %145 = fcmp ogt float %144, 0x38AA95A5C0000000
  br i1 %145, label %146, label %155

146:                                              ; preds = %107
  %147 = tail call float @sqrtf(float noundef %144) #11
  %148 = fdiv float 1.000000e+00, %147
  %149 = load float, ptr %126, align 4, !tbaa !50
  %150 = fmul float %149, %148
  store float %150, ptr %126, align 4, !tbaa !50
  %151 = load float, ptr %135, align 4, !tbaa !50
  %152 = fmul float %148, %151
  store float %152, ptr %135, align 4, !tbaa !50
  %153 = load float, ptr %141, align 4, !tbaa !50
  %154 = fmul float %148, %153
  br label %156

155:                                              ; preds = %107
  store float 0.000000e+00, ptr %126, align 4, !tbaa !50
  store float 0.000000e+00, ptr %135, align 4, !tbaa !50
  br label %156

156:                                              ; preds = %146, %155
  %157 = phi float [ 0.000000e+00, %155 ], [ %154, %146 ]
  store float %157, ptr %141, align 4, !tbaa !50
  %158 = load float, ptr %126, align 4, !tbaa !50
  %159 = load float, ptr %30, align 4, !tbaa !50
  %160 = load float, ptr %135, align 4, !tbaa !50
  %161 = load float, ptr %31, align 4, !tbaa !50
  %162 = fmul float %160, %161
  %163 = tail call float @llvm.fmuladd.f32(float %158, float %159, float %162)
  %164 = load float, ptr %32, align 4, !tbaa !50
  %165 = tail call float @llvm.fmuladd.f32(float %157, float %164, float %163)
  %166 = fcmp olt float %165, 0.000000e+00
  br i1 %166, label %167, label %171

167:                                              ; preds = %156
  %168 = fneg float %158
  store float %168, ptr %126, align 4, !tbaa !50
  %169 = fneg float %160
  store float %169, ptr %135, align 4, !tbaa !50
  %170 = fneg float %157
  store float %170, ptr %141, align 4, !tbaa !50
  br label %171

171:                                              ; preds = %156, %167, %97
  %172 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 17
  %173 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16
  %174 = load float, ptr %173, align 4, !tbaa !50
  store float %174, ptr %172, align 4, !tbaa !50
  %175 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 1
  %176 = load float, ptr %175, align 4, !tbaa !50
  %177 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 17, i64 1
  store float %176, ptr %177, align 4, !tbaa !50
  %178 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 2
  %179 = load float, ptr %178, align 4, !tbaa !50
  %180 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 17, i64 2
  store float %179, ptr %180, align 4, !tbaa !50
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @shade_input_set_strand_texco(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2, ptr nocapture noundef readonly %3) local_unnamed_addr #2 {
  %5 = alloca ptr, align 8
  %6 = getelementptr inbounds %struct.StrandRen, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !108
  %8 = getelementptr inbounds %struct.StrandBuffer, ptr %7, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !117
  %10 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 21
  %11 = load i32, ptr %10, align 8, !tbaa !69
  %12 = load ptr, ptr %0, align 8, !tbaa !34
  %13 = getelementptr inbounds %struct.Material, ptr %12, i64 0, i32 90
  %14 = load i16, ptr %13, align 4, !tbaa !97
  %15 = zext i16 %14 to i32
  %16 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 15
  %17 = and i32 %11, 201326592
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %35, label %19

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 65
  %21 = getelementptr inbounds %struct.StrandPoint, ptr %3, i64 0, i32 3
  %22 = load float, ptr %21, align 4, !tbaa !50
  store float %22, ptr %20, align 4, !tbaa !50
  %23 = getelementptr inbounds %struct.StrandPoint, ptr %3, i64 0, i32 3, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !50
  %25 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 65, i64 1
  store float %24, ptr %25, align 4, !tbaa !50
  %26 = getelementptr inbounds %struct.StrandPoint, ptr %3, i64 0, i32 3, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !50
  %28 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 65, i64 2
  store float %27, ptr %28, align 4, !tbaa !50
  %29 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 67
  %30 = load float, ptr %21, align 4, !tbaa !50
  store float %30, ptr %29, align 4, !tbaa !50
  %31 = load float, ptr %23, align 4, !tbaa !50
  %32 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 67, i64 1
  store float %31, ptr %32, align 4, !tbaa !50
  %33 = load float, ptr %26, align 4, !tbaa !50
  %34 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 67, i64 2
  store float %33, ptr %34, align 4, !tbaa !50
  br label %35

35:                                               ; preds = %19, %4
  %36 = icmp sgt i32 %11, -1
  br i1 %36, label %112, label %37

37:                                               ; preds = %35
  %38 = tail call ptr @RE_strandren_get_surfnor(ptr noundef %9, ptr noundef %1, i32 noundef 0) #11
  %39 = icmp eq ptr %38, null
  %40 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 110
  br i1 %39, label %47, label %41

41:                                               ; preds = %37
  %42 = load float, ptr %38, align 4, !tbaa !50
  store float %42, ptr %40, align 4, !tbaa !50
  %43 = getelementptr inbounds float, ptr %38, i64 1
  %44 = load float, ptr %43, align 4, !tbaa !50
  %45 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 110, i64 1
  store float %44, ptr %45, align 4, !tbaa !50
  %46 = getelementptr inbounds float, ptr %38, i64 2
  br label %54

47:                                               ; preds = %37
  %48 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16
  %49 = load float, ptr %48, align 4, !tbaa !50
  store float %49, ptr %40, align 4, !tbaa !50
  %50 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 1
  %51 = load float, ptr %50, align 4, !tbaa !50
  %52 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 110, i64 1
  store float %51, ptr %52, align 4, !tbaa !50
  %53 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 2
  br label %54

54:                                               ; preds = %47, %41
  %55 = phi ptr [ %53, %47 ], [ %46, %41 ]
  %56 = load float, ptr %55, align 4, !tbaa !50
  %57 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 110, i64 2
  store float %56, ptr %57, align 4, !tbaa !50
  %58 = load ptr, ptr %0, align 8, !tbaa !34
  %59 = getelementptr inbounds %struct.Material, ptr %58, i64 0, i32 66
  %60 = load float, ptr %59, align 8, !tbaa !118
  %61 = fcmp ogt float %60, 0.000000e+00
  br i1 %61, label %62, label %112

62:                                               ; preds = %54
  %63 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 111
  store float 0.000000e+00, ptr %63, align 4, !tbaa !119
  %64 = load ptr, ptr %1, align 8, !tbaa !120
  %65 = icmp eq ptr %64, %2
  br i1 %65, label %89, label %66

66:                                               ; preds = %62, %66
  %67 = phi ptr [ %68, %66 ], [ %64, %62 ]
  %68 = getelementptr inbounds %struct.StrandVert, ptr %67, i64 1
  %69 = load float, ptr %68, align 4, !tbaa !50
  %70 = load float, ptr %67, align 4, !tbaa !50
  %71 = fsub float %69, %70
  %72 = getelementptr inbounds %struct.StrandVert, ptr %67, i64 1, i32 0, i64 1
  %73 = load float, ptr %72, align 4, !tbaa !50
  %74 = getelementptr inbounds float, ptr %67, i64 1
  %75 = load float, ptr %74, align 4, !tbaa !50
  %76 = fsub float %73, %75
  %77 = getelementptr inbounds %struct.StrandVert, ptr %67, i64 1, i32 0, i64 2
  %78 = load float, ptr %77, align 4, !tbaa !50
  %79 = getelementptr inbounds float, ptr %67, i64 2
  %80 = load float, ptr %79, align 4, !tbaa !50
  %81 = fsub float %78, %80
  %82 = fmul float %76, %76
  %83 = tail call float @llvm.fmuladd.f32(float %71, float %71, float %82)
  %84 = tail call float @llvm.fmuladd.f32(float %81, float %81, float %83)
  %85 = tail call float @sqrtf(float noundef %84) #11
  %86 = load float, ptr %63, align 4, !tbaa !119
  %87 = fadd float %85, %86
  store float %87, ptr %63, align 4, !tbaa !119
  %88 = icmp eq ptr %68, %2
  br i1 %88, label %89, label %66, !llvm.loop !121

89:                                               ; preds = %66, %62
  %90 = phi ptr [ %64, %62 ], [ %68, %66 ]
  %91 = load float, ptr %3, align 4, !tbaa !124
  %92 = getelementptr inbounds %struct.StrandVert, ptr %90, i64 1
  %93 = load float, ptr %92, align 4, !tbaa !50
  %94 = load float, ptr %90, align 4, !tbaa !50
  %95 = fsub float %93, %94
  %96 = getelementptr inbounds %struct.StrandVert, ptr %90, i64 1, i32 0, i64 1
  %97 = load float, ptr %96, align 4, !tbaa !50
  %98 = getelementptr inbounds float, ptr %90, i64 1
  %99 = load float, ptr %98, align 4, !tbaa !50
  %100 = fsub float %97, %99
  %101 = getelementptr inbounds %struct.StrandVert, ptr %90, i64 1, i32 0, i64 2
  %102 = load float, ptr %101, align 4, !tbaa !50
  %103 = getelementptr inbounds float, ptr %90, i64 2
  %104 = load float, ptr %103, align 4, !tbaa !50
  %105 = fsub float %102, %104
  %106 = fmul float %100, %100
  %107 = tail call float @llvm.fmuladd.f32(float %95, float %95, float %106)
  %108 = tail call float @llvm.fmuladd.f32(float %105, float %105, float %107)
  %109 = tail call float @sqrtf(float noundef %108) #11
  %110 = load float, ptr %63, align 4, !tbaa !119
  %111 = tail call float @llvm.fmuladd.f32(float %91, float %109, float %110)
  store float %111, ptr %63, align 4, !tbaa !119
  br label %112

112:                                              ; preds = %54, %89, %35
  %113 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !54
  %114 = and i32 %113, 1048576
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %134, label %116

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 3
  %118 = load ptr, ptr %117, align 8, !tbaa !84
  %119 = tail call ptr @RE_strandren_get_winspeed(ptr noundef %118, ptr noundef %1, i32 noundef 0) #11
  %120 = icmp eq ptr %119, null
  %121 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 69
  br i1 %120, label %133, label %122

122:                                              ; preds = %116
  %123 = load float, ptr %119, align 4, !tbaa !50
  store float %123, ptr %121, align 4, !tbaa !50
  %124 = getelementptr inbounds float, ptr %119, i64 1
  %125 = load float, ptr %124, align 4, !tbaa !50
  %126 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 69, i64 1
  store float %125, ptr %126, align 4, !tbaa !50
  %127 = getelementptr inbounds float, ptr %119, i64 2
  %128 = load float, ptr %127, align 4, !tbaa !50
  %129 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 69, i64 2
  store float %128, ptr %129, align 4, !tbaa !50
  %130 = getelementptr inbounds float, ptr %119, i64 3
  %131 = load float, ptr %130, align 4, !tbaa !50
  %132 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 69, i64 3
  store float %131, ptr %132, align 4, !tbaa !50
  br label %134

133:                                              ; preds = %116
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %121, i8 0, i64 16, i1 false)
  br label %134

134:                                              ; preds = %122, %133, %112
  %135 = and i32 %15, 2048
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %368, label %137

137:                                              ; preds = %134
  %138 = and i32 %15, 1
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %150, label %140

140:                                              ; preds = %137
  %141 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 56
  %142 = getelementptr inbounds %struct.StrandRen, ptr %1, i64 0, i32 6
  %143 = load float, ptr %142, align 4, !tbaa !50
  store float %143, ptr %141, align 4, !tbaa !50
  %144 = getelementptr inbounds %struct.StrandRen, ptr %1, i64 0, i32 6, i64 1
  %145 = load float, ptr %144, align 4, !tbaa !50
  %146 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 56, i64 1
  store float %145, ptr %146, align 4, !tbaa !50
  %147 = getelementptr inbounds %struct.StrandRen, ptr %1, i64 0, i32 6, i64 2
  %148 = load float, ptr %147, align 4, !tbaa !50
  %149 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 56, i64 2
  store float %148, ptr %149, align 4, !tbaa !50
  br label %150

150:                                              ; preds = %140, %137
  %151 = and i32 %15, 8
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %184, label %153

153:                                              ; preds = %150
  %154 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 57
  %155 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29
  %156 = load float, ptr %155, align 4, !tbaa !50
  store float %156, ptr %154, align 4, !tbaa !50
  %157 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29, i64 1
  %158 = load float, ptr %157, align 4, !tbaa !50
  %159 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 57, i64 1
  store float %158, ptr %159, align 4, !tbaa !50
  %160 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29, i64 2
  %161 = load float, ptr %160, align 4, !tbaa !50
  %162 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 57, i64 2
  store float %161, ptr %162, align 4, !tbaa !50
  tail call void @mul_m4_v3(ptr noundef nonnull getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 33), ptr noundef nonnull %154) #11
  %163 = load i16, ptr %16, align 8, !tbaa !98
  %164 = icmp eq i16 %163, 0
  br i1 %164, label %184, label %165

165:                                              ; preds = %153
  %166 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 82
  %167 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 78
  %168 = load float, ptr %167, align 4, !tbaa !50
  store float %168, ptr %166, align 4, !tbaa !50
  %169 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 78, i64 1
  %170 = load float, ptr %169, align 4, !tbaa !50
  %171 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 82, i64 1
  store float %170, ptr %171, align 4, !tbaa !50
  %172 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 78, i64 2
  %173 = load float, ptr %172, align 4, !tbaa !50
  %174 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 82, i64 2
  store float %173, ptr %174, align 4, !tbaa !50
  tail call void @mul_mat3_m4_v3(ptr noundef nonnull getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 33), ptr noundef nonnull %166) #11
  %175 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 83
  %176 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 79
  %177 = load float, ptr %176, align 4, !tbaa !50
  store float %177, ptr %175, align 4, !tbaa !50
  %178 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 79, i64 1
  %179 = load float, ptr %178, align 4, !tbaa !50
  %180 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 83, i64 1
  store float %179, ptr %180, align 4, !tbaa !50
  %181 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 79, i64 2
  %182 = load float, ptr %181, align 4, !tbaa !50
  %183 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 83, i64 2
  store float %182, ptr %183, align 4, !tbaa !50
  tail call void @mul_mat3_m4_v3(ptr noundef nonnull getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 33), ptr noundef nonnull %175) #11
  br label %184

184:                                              ; preds = %153, %165, %150
  %185 = and i32 %15, 8192
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %198, label %187

187:                                              ; preds = %184
  %188 = getelementptr inbounds %struct.StrandPoint, ptr %3, i64 0, i32 4
  %189 = load float, ptr %188, align 4, !tbaa !125
  %190 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 64
  store float %189, ptr %190, align 4, !tbaa !126
  %191 = load i16, ptr %16, align 8, !tbaa !98
  %192 = icmp eq i16 %191, 0
  br i1 %192, label %198, label %193

193:                                              ; preds = %187
  %194 = getelementptr inbounds %struct.StrandPoint, ptr %3, i64 0, i32 8
  %195 = load float, ptr %194, align 4, !tbaa !127
  %196 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 98
  store float %195, ptr %196, align 8, !tbaa !128
  %197 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 99
  store float 0.000000e+00, ptr %197, align 4, !tbaa !129
  br label %198

198:                                              ; preds = %187, %193, %184
  %199 = and i32 %15, 16
  %200 = and i32 %11, 2192
  %201 = or i32 %199, %200
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %339, label %203

203:                                              ; preds = %198
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  %204 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 74
  store i32 0, ptr %204, align 8, !tbaa !130
  %205 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 75
  store i32 0, ptr %205, align 4, !tbaa !131
  %206 = getelementptr inbounds %struct.ObjectRen, ptr %9, i64 0, i32 25
  %207 = load i32, ptr %206, align 8, !tbaa !132
  %208 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 76
  store i32 %207, ptr %208, align 8, !tbaa !133
  %209 = getelementptr inbounds %struct.ObjectRen, ptr %9, i64 0, i32 26
  %210 = load i32, ptr %209, align 4, !tbaa !134
  %211 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 77
  store i32 %210, ptr %211, align 4, !tbaa !135
  %212 = and i32 %11, 144
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %267, label %214

214:                                              ; preds = %203
  %215 = call ptr @RE_strandren_get_mcol(ptr noundef %9, ptr noundef %1, i32 noundef 0, ptr noundef nonnull %5, i32 noundef 0) #11
  %216 = icmp eq ptr %215, null
  br i1 %216, label %247, label %217

217:                                              ; preds = %214, %217
  %218 = phi i64 [ %243, %217 ], [ 0, %214 ]
  %219 = phi ptr [ %245, %217 ], [ %215, %214 ]
  %220 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 73, i64 %218
  %221 = load i32, ptr %205, align 4, !tbaa !131
  %222 = add nsw i32 %221, 1
  store i32 %222, ptr %205, align 4, !tbaa !131
  %223 = load ptr, ptr %5, align 8, !tbaa !88
  %224 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 73, i64 %218, i32 1
  store ptr %223, ptr %224, align 8, !tbaa !136
  %225 = getelementptr inbounds i8, ptr %219, i64 3
  %226 = load i8, ptr %225, align 1, !tbaa !138
  %227 = uitofp i8 %226 to float
  %228 = fdiv float %227, 2.550000e+02
  store float %228, ptr %220, align 8, !tbaa !50
  %229 = getelementptr inbounds i8, ptr %219, i64 2
  %230 = load i8, ptr %229, align 1, !tbaa !138
  %231 = uitofp i8 %230 to float
  %232 = fdiv float %231, 2.550000e+02
  %233 = getelementptr inbounds [4 x float], ptr %220, i64 0, i64 1
  store float %232, ptr %233, align 4, !tbaa !50
  %234 = getelementptr inbounds i8, ptr %219, i64 1
  %235 = load i8, ptr %234, align 1, !tbaa !138
  %236 = uitofp i8 %235 to float
  %237 = fdiv float %236, 2.550000e+02
  %238 = getelementptr inbounds [4 x float], ptr %220, i64 0, i64 2
  store float %237, ptr %238, align 8, !tbaa !50
  %239 = load i8, ptr %219, align 1, !tbaa !138
  %240 = uitofp i8 %239 to float
  %241 = fdiv float %240, 2.550000e+02
  %242 = getelementptr inbounds [4 x float], ptr %220, i64 0, i64 3
  store float %241, ptr %242, align 4, !tbaa !50
  %243 = add nuw i64 %218, 1
  %244 = trunc i64 %243 to i32
  %245 = call ptr @RE_strandren_get_mcol(ptr noundef %9, ptr noundef %1, i32 noundef %244, ptr noundef nonnull %5, i32 noundef 0) #11
  %246 = icmp eq ptr %245, null
  br i1 %246, label %247, label %217, !llvm.loop !139

247:                                              ; preds = %217, %214
  %248 = load i32, ptr %205, align 4, !tbaa !131
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %265, label %250

250:                                              ; preds = %247
  %251 = load i32, ptr %211, align 4, !tbaa !135
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 73, i64 %252
  %254 = load float, ptr %253, align 8, !tbaa !50
  %255 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61
  store float %254, ptr %255, align 8, !tbaa !50
  %256 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 73, i64 %252, i32 0, i64 1
  %257 = load float, ptr %256, align 4, !tbaa !50
  %258 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61, i64 1
  store float %257, ptr %258, align 4, !tbaa !50
  %259 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 73, i64 %252, i32 0, i64 2
  %260 = load float, ptr %259, align 8, !tbaa !50
  %261 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61, i64 2
  store float %260, ptr %261, align 8, !tbaa !50
  %262 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 73, i64 %252, i32 0, i64 3
  %263 = load float, ptr %262, align 4, !tbaa !50
  %264 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61, i64 3
  store float %263, ptr %264, align 4, !tbaa !50
  br label %267

265:                                              ; preds = %247
  %266 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %266, i8 0, i64 16, i1 false)
  br label %267

267:                                              ; preds = %250, %265, %203
  %268 = call ptr @RE_strandren_get_uv(ptr noundef %9, ptr noundef %1, i32 noundef 0, ptr noundef nonnull %5, i32 noundef 0) #11
  %269 = icmp eq ptr %268, null
  br i1 %269, label %322, label %270

270:                                              ; preds = %267
  %271 = getelementptr inbounds %struct.StrandBuffer, ptr %7, i64 0, i32 10
  %272 = getelementptr inbounds %struct.StrandPoint, ptr %3, i64 0, i32 4
  %273 = and i32 %11, 2048
  %274 = icmp eq i32 %273, 0
  %275 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61
  %276 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61, i64 1
  %277 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61, i64 2
  %278 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61, i64 3
  br label %279

279:                                              ; preds = %270, %317
  %280 = phi i64 [ 0, %270 ], [ %318, %317 ]
  %281 = phi ptr [ %268, %270 ], [ %320, %317 ]
  %282 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 72, i64 %280
  %283 = load i32, ptr %204, align 8, !tbaa !130
  %284 = add nsw i32 %283, 1
  store i32 %284, ptr %204, align 8, !tbaa !130
  %285 = load ptr, ptr %5, align 8, !tbaa !88
  %286 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 72, i64 %280, i32 3
  store ptr %285, ptr %286, align 8, !tbaa !140
  %287 = load i32, ptr %271, align 4, !tbaa !142
  %288 = zext i32 %287 to i64
  %289 = icmp eq i64 %280, %288
  br i1 %289, label %290, label %293

290:                                              ; preds = %279
  %291 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 72, i64 %280, i32 2
  store float -1.000000e+00, ptr %291, align 8, !tbaa !50
  %292 = load float, ptr %272, align 4, !tbaa !125
  br label %300

293:                                              ; preds = %279
  %294 = load float, ptr %281, align 4, !tbaa !50
  %295 = call float @llvm.fmuladd.f32(float %294, float 2.000000e+00, float -1.000000e+00)
  %296 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 72, i64 %280, i32 2
  store float %295, ptr %296, align 8, !tbaa !50
  %297 = getelementptr inbounds float, ptr %281, i64 1
  %298 = load float, ptr %297, align 4, !tbaa !50
  %299 = call float @llvm.fmuladd.f32(float %298, float 2.000000e+00, float -1.000000e+00)
  br label %300

300:                                              ; preds = %293, %290
  %301 = phi float [ %299, %293 ], [ %292, %290 ]
  %302 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 72, i64 %280, i32 2, i64 1
  store float %301, ptr %302, align 4, !tbaa !50
  %303 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 72, i64 %280, i32 2, i64 2
  store float 0.000000e+00, ptr %303, align 8, !tbaa !50
  %304 = load i16, ptr %16, align 8, !tbaa !98
  %305 = icmp eq i16 %304, 0
  br i1 %305, label %310, label %306

306:                                              ; preds = %300
  store float 0.000000e+00, ptr %282, align 8, !tbaa !50
  %307 = getelementptr inbounds [3 x float], ptr %282, i64 0, i64 1
  store float 0.000000e+00, ptr %307, align 4, !tbaa !50
  %308 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 72, i64 %280, i32 1
  store float 0.000000e+00, ptr %308, align 4, !tbaa !50
  %309 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 72, i64 %280, i32 1, i64 1
  store float 0.000000e+00, ptr %309, align 4, !tbaa !50
  br label %310

310:                                              ; preds = %306, %300
  br i1 %274, label %317, label %311

311:                                              ; preds = %310
  %312 = load i32, ptr %206, align 8, !tbaa !132
  %313 = zext i32 %312 to i64
  %314 = icmp eq i64 %280, %313
  %315 = and i1 %213, %314
  br i1 %315, label %316, label %317

316:                                              ; preds = %311
  store float 1.000000e+00, ptr %275, align 8, !tbaa !50
  store float 1.000000e+00, ptr %276, align 4, !tbaa !50
  store float 1.000000e+00, ptr %277, align 8, !tbaa !50
  store float 1.000000e+00, ptr %278, align 4, !tbaa !50
  br label %317

317:                                              ; preds = %316, %311, %310
  %318 = add nuw i64 %280, 1
  %319 = trunc i64 %318 to i32
  %320 = call ptr @RE_strandren_get_uv(ptr noundef %9, ptr noundef %1, i32 noundef %319, ptr noundef nonnull %5, i32 noundef 0) #11
  %321 = icmp eq ptr %320, null
  br i1 %321, label %322, label %279, !llvm.loop !143

322:                                              ; preds = %317, %267
  %323 = load i32, ptr %204, align 8, !tbaa !130
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %325, label %338

325:                                              ; preds = %322
  %326 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 72, i64 0, i32 2
  store float 0.000000e+00, ptr %326, align 8, !tbaa !50
  %327 = getelementptr inbounds %struct.StrandPoint, ptr %3, i64 0, i32 4
  %328 = load float, ptr %327, align 4, !tbaa !125
  %329 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 72, i64 0, i32 2, i64 1
  store float %328, ptr %329, align 4, !tbaa !50
  %330 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 72, i64 0, i32 2, i64 2
  store float 0.000000e+00, ptr %330, align 8, !tbaa !50
  %331 = and i32 %11, 2048
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %338, label %333

333:                                              ; preds = %325
  %334 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61
  store float 1.000000e+00, ptr %334, align 8, !tbaa !50
  %335 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61, i64 1
  store float 1.000000e+00, ptr %335, align 4, !tbaa !50
  %336 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61, i64 2
  store float 1.000000e+00, ptr %336, align 8, !tbaa !50
  %337 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61, i64 3
  store float 1.000000e+00, ptr %337, align 4, !tbaa !50
  br label %338

338:                                              ; preds = %325, %333, %322
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %339

339:                                              ; preds = %198, %338
  %340 = and i32 %15, 4
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %355, label %342

342:                                              ; preds = %339
  %343 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16
  %344 = load float, ptr %343, align 4, !tbaa !50
  %345 = fneg float %344
  %346 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 59
  store float %345, ptr %346, align 8, !tbaa !50
  %347 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 1
  %348 = load float, ptr %347, align 4, !tbaa !50
  %349 = fneg float %348
  %350 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 59, i64 1
  store float %349, ptr %350, align 4, !tbaa !50
  %351 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 2
  %352 = load float, ptr %351, align 4, !tbaa !50
  %353 = fneg float %352
  %354 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 59, i64 2
  store float %353, ptr %354, align 8, !tbaa !50
  br label %355

355:                                              ; preds = %342, %339
  %356 = and i32 %15, 4096
  %357 = icmp ne i32 %356, 0
  %358 = and i32 %11, 67108864
  %359 = icmp eq i32 %358, 0
  %360 = and i1 %359, %357
  br i1 %360, label %361, label %368

361:                                              ; preds = %355
  %362 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 65
  %363 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 65, i64 2
  store float 0.000000e+00, ptr %363, align 8, !tbaa !50
  %364 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 65, i64 1
  store float 0.000000e+00, ptr %364, align 4, !tbaa !50
  store float 0.000000e+00, ptr %362, align 8, !tbaa !50
  %365 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 67
  %366 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 67, i64 2
  store float 0.000000e+00, ptr %366, align 8, !tbaa !50
  %367 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 67, i64 1
  store float 0.000000e+00, ptr %367, align 4, !tbaa !50
  store float 0.000000e+00, ptr %365, align 8, !tbaa !50
  br label %368

368:                                              ; preds = %355, %361, %134
  %369 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 108
  %370 = load i32, ptr %369, align 8, !tbaa !51
  %371 = icmp ne i32 %370, 0
  %372 = and i32 %15, 1024
  %373 = icmp eq i32 %372, 0
  %374 = select i1 %371, i1 true, i1 %373
  br i1 %374, label %398, label %375

375:                                              ; preds = %368
  %376 = getelementptr inbounds %struct.StrandPoint, ptr %3, i64 0, i32 18
  %377 = load float, ptr %376, align 4, !tbaa !112
  %378 = fmul float %377, 2.000000e+00
  %379 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 13), align 4, !tbaa !144
  %380 = sitofp i32 %379 to float
  %381 = fdiv float %378, %380
  %382 = fadd float %381, -1.000000e+00
  %383 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 60
  store float %382, ptr %383, align 4, !tbaa !50
  %384 = getelementptr inbounds %struct.StrandPoint, ptr %3, i64 0, i32 19
  %385 = load float, ptr %384, align 4, !tbaa !115
  %386 = fmul float %385, 2.000000e+00
  %387 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 14), align 8, !tbaa !145
  %388 = sitofp i32 %387 to float
  %389 = fdiv float %386, %388
  %390 = fadd float %389, -1.000000e+00
  %391 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 60, i64 1
  store float %390, ptr %391, align 4, !tbaa !50
  %392 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 60, i64 2
  store float 0.000000e+00, ptr %392, align 4, !tbaa !50
  %393 = load i16, ptr %16, align 8, !tbaa !98
  %394 = icmp eq i16 %393, 0
  br i1 %394, label %398, label %395

395:                                              ; preds = %375
  %396 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 94
  store float 0.000000e+00, ptr %396, align 8, !tbaa !50
  %397 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 95, i64 1
  store float 0.000000e+00, ptr %397, align 4, !tbaa !50
  store float 0.000000e+00, ptr %396, align 8, !tbaa !50
  store float 0.000000e+00, ptr %397, align 4, !tbaa !50
  br label %398

398:                                              ; preds = %395, %375, %368
  %399 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 113
  %400 = load i8, ptr %399, align 1, !tbaa !146
  %401 = icmp eq i8 %400, 0
  %402 = and i32 %11, 2192
  %403 = icmp eq i32 %402, 0
  %404 = or i1 %403, %401
  br i1 %404, label %415, label %405

405:                                              ; preds = %398
  %406 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61
  %407 = load float, ptr %406, align 4, !tbaa !50
  %408 = call float @srgb_to_linearrgb(float noundef %407) #11
  store float %408, ptr %406, align 4, !tbaa !50
  %409 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61, i64 1
  %410 = load float, ptr %409, align 4, !tbaa !50
  %411 = call float @srgb_to_linearrgb(float noundef %410) #11
  store float %411, ptr %409, align 4, !tbaa !50
  %412 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61, i64 2
  %413 = load float, ptr %412, align 4, !tbaa !50
  %414 = call float @srgb_to_linearrgb(float noundef %413) #11
  store float %414, ptr %412, align 4, !tbaa !50
  br label %415

415:                                              ; preds = %405, %398
  ret void
}

declare ptr @RE_strandren_get_surfnor(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

declare ptr @RE_strandren_get_winspeed(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @mul_mat3_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @RE_strandren_get_mcol(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @RE_strandren_get_uv(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @shade_input_calc_viewco(ptr nocapture noundef %0, float noundef %1, float noundef %2, float noundef %3, ptr noundef %4, ptr noundef writeonly %5, ptr noundef %6, ptr noundef writeonly %7, ptr noundef writeonly %8) local_unnamed_addr #2 {
  %10 = alloca [3 x float], align 4
  tail call void @calc_view_vector(ptr noundef %4, float noundef %1, float noundef %2) #11
  %11 = load ptr, ptr %0, align 8, !tbaa !34
  %12 = getelementptr inbounds %struct.Material, ptr %11, i64 0, i32 2
  %13 = load i16, ptr %12, align 8, !tbaa !75
  %14 = icmp eq i16 %13, 3
  br i1 %14, label %15, label %22

15:                                               ; preds = %9
  %16 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !54
  %17 = and i32 %16, 8
  %18 = icmp eq i32 %17, 0
  %19 = fptosi float %3 to i32
  br i1 %18, label %21, label %20

20:                                               ; preds = %15
  tail call void @calc_renderco_ortho(ptr noundef %6, float noundef %1, float noundef %2, i32 noundef %19) #11
  br label %200

21:                                               ; preds = %15
  tail call void @calc_renderco_zbuf(ptr noundef %6, ptr noundef %4, i32 noundef %19) #11
  br label %200

22:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #11
  %23 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 8
  %24 = load ptr, ptr %23, align 8, !tbaa !89
  %25 = load float, ptr %24, align 4, !tbaa !50
  store float %25, ptr %10, align 4, !tbaa !50
  %26 = getelementptr inbounds float, ptr %24, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !50
  %28 = getelementptr inbounds float, ptr %10, i64 1
  store float %27, ptr %28, align 4, !tbaa !50
  %29 = getelementptr inbounds float, ptr %24, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !50
  %31 = getelementptr inbounds float, ptr %10, i64 2
  store float %30, ptr %31, align 4, !tbaa !50
  %32 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !84
  %34 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %33, i64 0, i32 11
  %35 = load i16, ptr %34, align 8, !tbaa !103
  %36 = and i16 %35, 3
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %22
  %39 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %33, i64 0, i32 8
  call void @mul_m4_v3(ptr noundef nonnull %39, ptr noundef nonnull %10) #11
  br label %40

40:                                               ; preds = %38, %22
  %41 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 6
  %42 = load float, ptr %10, align 4, !tbaa !50
  %43 = load float, ptr %41, align 4, !tbaa !50
  %44 = load float, ptr %28, align 4, !tbaa !50
  %45 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 6, i64 1
  %46 = load float, ptr %45, align 4, !tbaa !50
  %47 = fmul float %44, %46
  %48 = call float @llvm.fmuladd.f32(float %42, float %43, float %47)
  %49 = load float, ptr %31, align 4, !tbaa !50
  %50 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 6, i64 2
  %51 = load float, ptr %50, align 4, !tbaa !50
  %52 = call float @llvm.fmuladd.f32(float %49, float %51, float %48)
  %53 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !54
  %54 = and i32 %53, 8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %122, label %56

56:                                               ; preds = %40
  %57 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 13), align 4, !tbaa !144
  %58 = sitofp i32 %57 to float
  %59 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 35), align 8, !tbaa !50
  %60 = fmul float %59, %58
  %61 = fdiv float 2.000000e+00, %60
  %62 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 14), align 8, !tbaa !145
  %63 = sitofp i32 %62 to float
  %64 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 35, i64 1, i64 1), align 4, !tbaa !50
  %65 = fmul float %64, %63
  %66 = fdiv float 2.000000e+00, %65
  %67 = call float @llvm.fmuladd.f32(float %58, float -5.000000e-01, float %1)
  %68 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 35, i64 3), align 8, !tbaa !50
  %69 = fneg float %68
  %70 = fdiv float %69, %59
  %71 = call float @llvm.fmuladd.f32(float %67, float %61, float %70)
  store float %71, ptr %6, align 4, !tbaa !50
  %72 = call float @llvm.fmuladd.f32(float %63, float -5.000000e-01, float %2)
  %73 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 35, i64 3, i64 1), align 4, !tbaa !50
  %74 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 35, i64 1, i64 1), align 4, !tbaa !50
  %75 = fneg float %73
  %76 = fdiv float %75, %74
  %77 = call float @llvm.fmuladd.f32(float %72, float %66, float %76)
  %78 = getelementptr inbounds float, ptr %6, i64 1
  store float %77, ptr %78, align 4, !tbaa !50
  %79 = load float, ptr %50, align 4, !tbaa !50
  %80 = fcmp une float %79, 0.000000e+00
  br i1 %80, label %81, label %89

81:                                               ; preds = %56
  %82 = load float, ptr %41, align 4, !tbaa !50
  %83 = fneg float %82
  %84 = call float @llvm.fmuladd.f32(float %83, float %71, float %52)
  %85 = load float, ptr %45, align 4, !tbaa !50
  %86 = fneg float %85
  %87 = call float @llvm.fmuladd.f32(float %86, float %77, float %84)
  %88 = fdiv float %87, %79
  br label %89

89:                                               ; preds = %56, %81
  %90 = phi float [ %88, %81 ], [ 0.000000e+00, %56 ]
  %91 = getelementptr inbounds float, ptr %6, i64 2
  store float %90, ptr %91, align 4, !tbaa !50
  %92 = icmp ne ptr %7, null
  %93 = icmp ne ptr %8, null
  %94 = and i1 %92, %93
  br i1 %94, label %95, label %199

95:                                               ; preds = %89
  store float %61, ptr %7, align 4, !tbaa !50
  %96 = getelementptr inbounds float, ptr %7, i64 1
  store float 0.000000e+00, ptr %96, align 4, !tbaa !50
  %97 = load float, ptr %50, align 4, !tbaa !50
  %98 = fcmp une float %97, 0.000000e+00
  br i1 %98, label %99, label %104

99:                                               ; preds = %95
  %100 = load float, ptr %41, align 4, !tbaa !50
  %101 = fneg float %100
  %102 = fmul float %61, %101
  %103 = fdiv float %102, %97
  br label %104

104:                                              ; preds = %95, %99
  %105 = phi float [ %103, %99 ], [ 0.000000e+00, %95 ]
  %106 = getelementptr inbounds float, ptr %7, i64 2
  store float %105, ptr %106, align 4, !tbaa !50
  store float 0.000000e+00, ptr %8, align 4, !tbaa !50
  %107 = getelementptr inbounds float, ptr %8, i64 1
  store float %66, ptr %107, align 4, !tbaa !50
  %108 = load float, ptr %50, align 4, !tbaa !50
  %109 = fcmp une float %108, 0.000000e+00
  br i1 %109, label %110, label %115

110:                                              ; preds = %104
  %111 = load float, ptr %45, align 4, !tbaa !50
  %112 = fneg float %111
  %113 = fmul float %66, %112
  %114 = fdiv float %113, %108
  br label %115

115:                                              ; preds = %104, %110
  %116 = phi float [ %114, %110 ], [ 0.000000e+00, %104 ]
  %117 = getelementptr inbounds float, ptr %8, i64 2
  store float %116, ptr %117, align 4, !tbaa !50
  %118 = icmp eq ptr %5, null
  br i1 %118, label %199, label %119

119:                                              ; preds = %115
  %120 = getelementptr inbounds float, ptr %6, i64 2
  %121 = load float, ptr %120, align 4, !tbaa !50
  br label %186

122:                                              ; preds = %40
  %123 = load float, ptr %4, align 4, !tbaa !50
  %124 = getelementptr inbounds float, ptr %4, i64 1
  %125 = load float, ptr %124, align 4, !tbaa !50
  %126 = fmul float %46, %125
  %127 = call float @llvm.fmuladd.f32(float %43, float %123, float %126)
  %128 = getelementptr inbounds float, ptr %4, i64 2
  %129 = load float, ptr %128, align 4, !tbaa !50
  %130 = call float @llvm.fmuladd.f32(float %51, float %129, float %127)
  %131 = fcmp une float %130, 0.000000e+00
  %132 = fdiv float %52, %130
  %133 = select i1 %131, float %132, float 0.000000e+00
  %134 = fmul float %123, %133
  store float %134, ptr %6, align 4, !tbaa !50
  %135 = load float, ptr %124, align 4, !tbaa !50
  %136 = fmul float %135, %133
  %137 = getelementptr inbounds float, ptr %6, i64 1
  store float %136, ptr %137, align 4, !tbaa !50
  %138 = load float, ptr %128, align 4, !tbaa !50
  %139 = fmul float %133, %138
  %140 = getelementptr inbounds float, ptr %6, i64 2
  store float %139, ptr %140, align 4, !tbaa !50
  %141 = icmp ne ptr %7, null
  %142 = icmp ne ptr %8, null
  %143 = and i1 %141, %142
  br i1 %143, label %144, label %199

144:                                              ; preds = %122
  %145 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 17), align 4, !tbaa !147
  %146 = load float, ptr %41, align 4, !tbaa !50
  %147 = fneg float %145
  %148 = call float @llvm.fmuladd.f32(float %147, float %146, float %130)
  %149 = fdiv float %52, %148
  %150 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 18), align 8, !tbaa !148
  %151 = load float, ptr %45, align 4, !tbaa !50
  %152 = fneg float %150
  %153 = call float @llvm.fmuladd.f32(float %152, float %151, float %130)
  %154 = fdiv float %52, %153
  %155 = load float, ptr %4, align 4, !tbaa !50
  %156 = fsub float %155, %145
  %157 = fneg float %156
  %158 = call float @llvm.fmuladd.f32(float %157, float %149, float %134)
  store float %158, ptr %7, align 4, !tbaa !50
  %159 = load float, ptr %137, align 4, !tbaa !50
  %160 = load float, ptr %124, align 4, !tbaa !50
  %161 = fneg float %160
  %162 = call float @llvm.fmuladd.f32(float %161, float %149, float %159)
  %163 = getelementptr inbounds float, ptr %7, i64 1
  store float %162, ptr %163, align 4, !tbaa !50
  %164 = load float, ptr %140, align 4, !tbaa !50
  %165 = load float, ptr %128, align 4, !tbaa !50
  %166 = fneg float %165
  %167 = call float @llvm.fmuladd.f32(float %166, float %149, float %164)
  %168 = getelementptr inbounds float, ptr %7, i64 2
  store float %167, ptr %168, align 4, !tbaa !50
  %169 = load float, ptr %6, align 4, !tbaa !50
  %170 = load float, ptr %4, align 4, !tbaa !50
  %171 = fneg float %170
  %172 = call float @llvm.fmuladd.f32(float %171, float %154, float %169)
  store float %172, ptr %8, align 4, !tbaa !50
  %173 = load float, ptr %137, align 4, !tbaa !50
  %174 = load float, ptr %124, align 4, !tbaa !50
  %175 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 18), align 8, !tbaa !148
  %176 = fsub float %174, %175
  %177 = fneg float %176
  %178 = call float @llvm.fmuladd.f32(float %177, float %154, float %173)
  %179 = getelementptr inbounds float, ptr %8, i64 1
  store float %178, ptr %179, align 4, !tbaa !50
  %180 = load float, ptr %140, align 4, !tbaa !50
  %181 = load float, ptr %128, align 4, !tbaa !50
  %182 = fneg float %181
  %183 = call float @llvm.fmuladd.f32(float %182, float %154, float %180)
  %184 = getelementptr inbounds float, ptr %8, i64 2
  store float %183, ptr %184, align 4, !tbaa !50
  %185 = icmp eq ptr %5, null
  br i1 %185, label %199, label %186

186:                                              ; preds = %144, %119
  %187 = phi float [ %121, %119 ], [ %133, %144 ]
  %188 = phi float [ 0.000000e+00, %119 ], [ %133, %144 ]
  %189 = fcmp une float %187, 0.000000e+00
  %190 = fdiv float 1.000000e+00, %187
  %191 = select i1 %189, float %190, float %188
  %192 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 17), align 4, !tbaa !147
  %193 = fneg float %192
  %194 = fmul float %191, %193
  store float %194, ptr %5, align 4, !tbaa !50
  %195 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 18), align 8, !tbaa !148
  %196 = fneg float %195
  %197 = fmul float %191, %196
  %198 = getelementptr inbounds float, ptr %5, i64 1
  store float %197, ptr %198, align 4, !tbaa !50
  br label %199

199:                                              ; preds = %186, %122, %144, %89, %115
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #11
  br label %200

200:                                              ; preds = %20, %21, %199
  %201 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 31
  %202 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 31, i64 2
  store float 0.000000e+00, ptr %202, align 8, !tbaa !50
  %203 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 31, i64 1
  store float 0.000000e+00, ptr %203, align 4, !tbaa !50
  store float 0.000000e+00, ptr %201, align 8, !tbaa !50
  %204 = load float, ptr %4, align 4, !tbaa !50
  %205 = getelementptr inbounds float, ptr %4, i64 1
  %206 = load float, ptr %205, align 4, !tbaa !50
  %207 = fmul float %206, %206
  %208 = call float @llvm.fmuladd.f32(float %204, float %204, float %207)
  %209 = getelementptr inbounds float, ptr %4, i64 2
  %210 = load float, ptr %209, align 4, !tbaa !50
  %211 = call float @llvm.fmuladd.f32(float %210, float %210, float %208)
  %212 = fcmp ogt float %211, 0x38AA95A5C0000000
  br i1 %212, label %213, label %222

213:                                              ; preds = %200
  %214 = call float @sqrtf(float noundef %211) #11
  %215 = fdiv float 1.000000e+00, %214
  %216 = load float, ptr %4, align 4, !tbaa !50
  %217 = fmul float %216, %215
  store float %217, ptr %4, align 4, !tbaa !50
  %218 = load float, ptr %205, align 4, !tbaa !50
  %219 = fmul float %215, %218
  store float %219, ptr %205, align 4, !tbaa !50
  %220 = load float, ptr %209, align 4, !tbaa !50
  %221 = fmul float %215, %220
  br label %223

222:                                              ; preds = %200
  store float 0.000000e+00, ptr %4, align 4, !tbaa !50
  store float 0.000000e+00, ptr %205, align 4, !tbaa !50
  br label %223

223:                                              ; preds = %213, %222
  %224 = phi float [ 0.000000e+00, %222 ], [ %221, %213 ]
  store float %224, ptr %209, align 4, !tbaa !50
  ret void
}

declare void @calc_view_vector(ptr noundef, float noundef, float noundef) local_unnamed_addr #3

declare void @calc_renderco_ortho(ptr noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #3

declare void @calc_renderco_zbuf(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @shade_input_set_viewco(ptr noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5) local_unnamed_addr #2 {
  %7 = fptosi float %3 to i32
  %8 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 103
  store i32 %7, ptr %8, align 4, !tbaa !114
  %9 = fptosi float %4 to i32
  %10 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 104
  store i32 %9, ptr %10, align 8, !tbaa !116
  %11 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 106
  store float %1, ptr %11, align 8, !tbaa !50
  %12 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 106, i64 1
  store float %2, ptr %12, align 4, !tbaa !50
  %13 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 106, i64 2
  store float %5, ptr %13, align 8, !tbaa !50
  %14 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 15
  %15 = load i16, ptr %14, align 8, !tbaa !98
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %6
  %18 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !54
  %19 = and i32 %18, 2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %17, %6
  %22 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 78
  %23 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 79
  %24 = load ptr, ptr %0, align 8, !tbaa !34
  %25 = getelementptr inbounds %struct.Material, ptr %24, i64 0, i32 90
  %26 = load i16, ptr %25, align 4, !tbaa !97
  %27 = and i16 %26, 2
  %28 = icmp eq i16 %27, 0
  %29 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 90
  %30 = select i1 %28, ptr null, ptr %29
  br label %31

31:                                               ; preds = %21, %17
  %32 = phi ptr [ null, %17 ], [ %30, %21 ]
  %33 = phi ptr [ null, %17 ], [ %22, %21 ]
  %34 = phi ptr [ null, %17 ], [ %23, %21 ]
  %35 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30
  %36 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29
  tail call void @shade_input_calc_viewco(ptr noundef %0, float noundef %3, float noundef %4, float noundef %5, ptr noundef nonnull %35, ptr noundef %32, ptr noundef nonnull %36, ptr noundef %33, ptr noundef %34)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @shade_input_set_uv(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = alloca [3 x float], align 4
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !83
  %7 = getelementptr inbounds %struct.VlakRen, ptr %6, i64 0, i32 7
  %8 = load i8, ptr %7, align 1, !tbaa !80
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  %12 = load ptr, ptr %0, align 8, !tbaa !34
  %13 = getelementptr inbounds %struct.Material, ptr %12, i64 0, i32 90
  %14 = load i16, ptr %13, align 4, !tbaa !97
  %15 = and i16 %14, 2048
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 119
  %19 = load i32, ptr %18, align 8, !tbaa !52
  %20 = and i32 %19, 4096
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %214, label %22

22:                                               ; preds = %17, %11, %1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #11
  %23 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 8
  %24 = load ptr, ptr %23, align 8, !tbaa !89
  %25 = load float, ptr %24, align 4, !tbaa !50
  store float %25, ptr %2, align 4, !tbaa !50
  %26 = getelementptr inbounds float, ptr %24, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !50
  %28 = getelementptr inbounds float, ptr %2, i64 1
  store float %27, ptr %28, align 4, !tbaa !50
  %29 = getelementptr inbounds float, ptr %24, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !50
  %31 = getelementptr inbounds float, ptr %2, i64 2
  store float %30, ptr %31, align 4, !tbaa !50
  %32 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 9
  %33 = load ptr, ptr %32, align 8, !tbaa !90
  %34 = load float, ptr %33, align 4, !tbaa !50
  store float %34, ptr %3, align 4, !tbaa !50
  %35 = getelementptr inbounds float, ptr %33, i64 1
  %36 = load float, ptr %35, align 4, !tbaa !50
  %37 = getelementptr inbounds float, ptr %3, i64 1
  store float %36, ptr %37, align 4, !tbaa !50
  %38 = getelementptr inbounds float, ptr %33, i64 2
  %39 = load float, ptr %38, align 4, !tbaa !50
  %40 = getelementptr inbounds float, ptr %3, i64 2
  store float %39, ptr %40, align 4, !tbaa !50
  %41 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 10
  %42 = load ptr, ptr %41, align 8, !tbaa !91
  %43 = load float, ptr %42, align 4, !tbaa !50
  store float %43, ptr %4, align 4, !tbaa !50
  %44 = getelementptr inbounds float, ptr %42, i64 1
  %45 = load float, ptr %44, align 4, !tbaa !50
  %46 = getelementptr inbounds float, ptr %4, i64 1
  store float %45, ptr %46, align 4, !tbaa !50
  %47 = getelementptr inbounds float, ptr %42, i64 2
  %48 = load float, ptr %47, align 4, !tbaa !50
  %49 = getelementptr inbounds float, ptr %4, i64 2
  store float %48, ptr %49, align 4, !tbaa !50
  %50 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !84
  %52 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %51, i64 0, i32 11
  %53 = load i16, ptr %52, align 8, !tbaa !103
  %54 = and i16 %53, 3
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %22
  %57 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %51, i64 0, i32 8
  call void @mul_m4_v3(ptr noundef nonnull %57, ptr noundef nonnull %2) #11
  %58 = load ptr, ptr %50, align 8, !tbaa !84
  %59 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %58, i64 0, i32 8
  call void @mul_m4_v3(ptr noundef nonnull %59, ptr noundef nonnull %3) #11
  %60 = load ptr, ptr %50, align 8, !tbaa !84
  %61 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %60, i64 0, i32 8
  call void @mul_m4_v3(ptr noundef nonnull %61, ptr noundef nonnull %4) #11
  br label %62

62:                                               ; preds = %56, %22
  %63 = getelementptr inbounds %struct.VlakRen, ptr %6, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !149
  %65 = getelementptr inbounds %struct.VlakRen, ptr %6, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !150
  %67 = icmp eq ptr %64, %66
  br i1 %67, label %68, label %114

68:                                               ; preds = %62
  %69 = load float, ptr %2, align 4, !tbaa !50
  %70 = load float, ptr %3, align 4, !tbaa !50
  %71 = fsub float %69, %70
  %72 = load float, ptr %28, align 4, !tbaa !50
  %73 = load float, ptr %37, align 4, !tbaa !50
  %74 = fsub float %72, %73
  %75 = load float, ptr %31, align 4, !tbaa !50
  %76 = load float, ptr %40, align 4, !tbaa !50
  %77 = fsub float %75, %76
  %78 = fmul float %74, %74
  %79 = call float @llvm.fmuladd.f32(float %71, float %71, float %78)
  %80 = call float @llvm.fmuladd.f32(float %77, float %77, float %79)
  %81 = call float @sqrtf(float noundef %80) #11
  %82 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29
  %83 = load float, ptr %2, align 4, !tbaa !50
  %84 = load float, ptr %82, align 4, !tbaa !50
  %85 = fsub float %83, %84
  %86 = load float, ptr %28, align 4, !tbaa !50
  %87 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29, i64 1
  %88 = load float, ptr %87, align 4, !tbaa !50
  %89 = fsub float %86, %88
  %90 = load float, ptr %31, align 4, !tbaa !50
  %91 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29, i64 2
  %92 = load float, ptr %91, align 4, !tbaa !50
  %93 = fsub float %90, %92
  %94 = fmul float %89, %89
  %95 = call float @llvm.fmuladd.f32(float %85, float %85, float %94)
  %96 = call float @llvm.fmuladd.f32(float %93, float %93, float %95)
  %97 = call float @sqrtf(float noundef %96) #11
  %98 = fcmp oeq float %81, 0.000000e+00
  br i1 %98, label %99, label %102

99:                                               ; preds = %68
  %100 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 24
  store float 0.000000e+00, ptr %100, align 4, !tbaa !151
  %101 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 23
  store float 0.000000e+00, ptr %101, align 8, !tbaa !152
  br label %108

102:                                              ; preds = %68
  %103 = fdiv float %97, %81
  %104 = fsub float 1.000000e+00, %103
  %105 = fneg float %104
  %106 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 23
  store float %105, ptr %106, align 8, !tbaa !152
  %107 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 24
  store float 0.000000e+00, ptr %107, align 4, !tbaa !151
  br label %108

108:                                              ; preds = %102, %99
  %109 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 15
  %110 = load i16, ptr %109, align 8, !tbaa !98
  %111 = icmp eq i16 %110, 0
  br i1 %111, label %213, label %112

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %113, i8 0, i64 16, i1 false)
  br label %213

114:                                              ; preds = %62
  %115 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 6
  %116 = load float, ptr %115, align 4, !tbaa !50
  %117 = call float @llvm.fabs.f32(float %116)
  %118 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 6, i64 1
  %119 = load float, ptr %118, align 4, !tbaa !50
  %120 = call float @llvm.fabs.f32(float %119)
  %121 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 6, i64 2
  %122 = load float, ptr %121, align 4, !tbaa !50
  %123 = call float @llvm.fabs.f32(float %122)
  %124 = fcmp ult float %123, %117
  %125 = fcmp ult float %123, %120
  %126 = select i1 %124, i1 true, i1 %125
  %127 = fcmp ult float %120, %117
  %128 = fcmp ult float %120, %123
  %129 = or i1 %127, %128
  %130 = select i1 %126, i1 %129, i1 false
  %131 = zext i1 %130 to i64
  %132 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 %131
  %133 = load float, ptr %132, align 4, !tbaa !50
  %134 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 %131
  %135 = load float, ptr %134, align 4, !tbaa !50
  %136 = fsub float %133, %135
  %137 = select i1 %126, i64 2, i64 1
  %138 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 %137
  %139 = load float, ptr %138, align 4, !tbaa !50
  %140 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 %137
  %141 = load float, ptr %140, align 4, !tbaa !50
  %142 = fsub float %139, %141
  %143 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 %131
  %144 = load float, ptr %143, align 4, !tbaa !50
  %145 = fsub float %133, %144
  %146 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 %137
  %147 = load float, ptr %146, align 4, !tbaa !50
  %148 = fsub float %139, %147
  %149 = fneg float %145
  %150 = fmul float %142, %149
  %151 = call float @llvm.fmuladd.f32(float %136, float %148, float %150)
  %152 = fcmp une float %151, 0.000000e+00
  %153 = fdiv float 1.000000e+00, %151
  %154 = select i1 %152, float %153, float 0.000000e+00
  %155 = fmul float %136, %154
  %156 = fmul float %142, %154
  %157 = fmul float %145, %154
  %158 = fmul float %148, %154
  %159 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29, i64 %131
  %160 = load float, ptr %159, align 4, !tbaa !50
  %161 = fsub float %160, %133
  %162 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29, i64 %137
  %163 = load float, ptr %162, align 4, !tbaa !50
  %164 = fsub float %163, %139
  %165 = fneg float %164
  %166 = fmul float %157, %165
  %167 = call float @llvm.fmuladd.f32(float %161, float %158, float %166)
  %168 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 23
  store float %167, ptr %168, align 8, !tbaa !152
  %169 = fneg float %161
  %170 = fmul float %156, %169
  %171 = call float @llvm.fmuladd.f32(float %164, float %155, float %170)
  %172 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 24
  store float %171, ptr %172, align 4, !tbaa !151
  %173 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 15
  %174 = load i16, ptr %173, align 8, !tbaa !98
  %175 = icmp eq i16 %174, 0
  br i1 %175, label %201, label %176

176:                                              ; preds = %114
  %177 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 78, i64 %131
  %178 = load float, ptr %177, align 4, !tbaa !50
  %179 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 78, i64 %137
  %180 = load float, ptr %179, align 4, !tbaa !50
  %181 = fneg float %180
  %182 = fmul float %157, %181
  %183 = call float @llvm.fmuladd.f32(float %178, float %158, float %182)
  %184 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 25
  store float %183, ptr %184, align 8, !tbaa !153
  %185 = fneg float %178
  %186 = fmul float %156, %185
  %187 = call float @llvm.fmuladd.f32(float %180, float %155, float %186)
  %188 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 26
  store float %187, ptr %188, align 4, !tbaa !154
  %189 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 79, i64 %131
  %190 = load float, ptr %189, align 4, !tbaa !50
  %191 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 79, i64 %137
  %192 = load float, ptr %191, align 4, !tbaa !50
  %193 = fneg float %192
  %194 = fmul float %157, %193
  %195 = call float @llvm.fmuladd.f32(float %190, float %158, float %194)
  %196 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 27
  store float %195, ptr %196, align 8, !tbaa !155
  %197 = fneg float %190
  %198 = fmul float %156, %197
  %199 = call float @llvm.fmuladd.f32(float %192, float %155, float %198)
  %200 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 28
  store float %199, ptr %200, align 4, !tbaa !156
  br label %201

201:                                              ; preds = %176, %114
  %202 = fcmp olt float %167, -2.000000e+00
  br i1 %202, label %205, label %203

203:                                              ; preds = %201
  %204 = fcmp ogt float %167, 1.000000e+00
  br i1 %204, label %205, label %207

205:                                              ; preds = %203, %201
  %206 = phi float [ -2.000000e+00, %201 ], [ 1.000000e+00, %203 ]
  store float %206, ptr %168, align 8, !tbaa !152
  br label %207

207:                                              ; preds = %205, %203
  %208 = fcmp olt float %171, -2.000000e+00
  br i1 %208, label %209, label %210

209:                                              ; preds = %207
  store float -2.000000e+00, ptr %172, align 4, !tbaa !151
  br label %213

210:                                              ; preds = %207
  %211 = fcmp ogt float %171, 1.000000e+00
  br i1 %211, label %212, label %213

212:                                              ; preds = %210
  store float 1.000000e+00, ptr %172, align 4, !tbaa !151
  br label %213

213:                                              ; preds = %209, %212, %210, %108, %112
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #11
  br label %214

214:                                              ; preds = %213, %17
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @shade_input_set_normals(ptr noundef %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 23
  %3 = load float, ptr %2, align 8, !tbaa !152
  %4 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 24
  %5 = load float, ptr %4, align 4, !tbaa !151
  %6 = fadd float %3, 1.000000e+00
  %7 = fadd float %6, %5
  %8 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 7
  store i16 0, ptr %8, align 8, !tbaa !102
  %9 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !83
  %11 = getelementptr inbounds %struct.VlakRen, ptr %10, i64 0, i32 7
  %12 = load i8, ptr %11, align 1, !tbaa !80
  %13 = and i8 %12, 64
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %36

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 6
  %17 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30
  %18 = load float, ptr %16, align 4, !tbaa !50
  %19 = load float, ptr %17, align 4, !tbaa !50
  %20 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 6, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !50
  %22 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !50
  %24 = fmul float %21, %23
  %25 = tail call float @llvm.fmuladd.f32(float %18, float %19, float %24)
  %26 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 6, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !50
  %28 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30, i64 2
  %29 = load float, ptr %28, align 4, !tbaa !50
  %30 = tail call float @llvm.fmuladd.f32(float %27, float %29, float %25)
  %31 = fcmp olt float %30, 0.000000e+00
  br i1 %31, label %32, label %36

32:                                               ; preds = %15
  %33 = fneg float %18
  store float %33, ptr %16, align 4, !tbaa !50
  %34 = fneg float %21
  store float %34, ptr %20, align 4, !tbaa !50
  %35 = fneg float %27
  store float %35, ptr %26, align 4, !tbaa !50
  store i16 1, ptr %8, align 8, !tbaa !102
  br label %36

36:                                               ; preds = %15, %32, %1
  %37 = and i8 %12, 1
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %119, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 18
  %41 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 19
  %42 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 20
  %43 = load i16, ptr %8, align 8, !tbaa !102
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %70, label %45

45:                                               ; preds = %39
  %46 = load float, ptr %40, align 4, !tbaa !50
  %47 = fneg float %46
  store float %47, ptr %40, align 4, !tbaa !50
  %48 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 18, i64 1
  %49 = load float, ptr %48, align 4, !tbaa !50
  %50 = fneg float %49
  store float %50, ptr %48, align 4, !tbaa !50
  %51 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 18, i64 2
  %52 = load float, ptr %51, align 4, !tbaa !50
  %53 = fneg float %52
  store float %53, ptr %51, align 4, !tbaa !50
  %54 = load float, ptr %41, align 4, !tbaa !50
  %55 = fneg float %54
  store float %55, ptr %41, align 4, !tbaa !50
  %56 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 19, i64 1
  %57 = load float, ptr %56, align 4, !tbaa !50
  %58 = fneg float %57
  store float %58, ptr %56, align 4, !tbaa !50
  %59 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 19, i64 2
  %60 = load float, ptr %59, align 4, !tbaa !50
  %61 = fneg float %60
  store float %61, ptr %59, align 4, !tbaa !50
  %62 = load float, ptr %42, align 4, !tbaa !50
  %63 = fneg float %62
  store float %63, ptr %42, align 4, !tbaa !50
  %64 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 20, i64 1
  %65 = load float, ptr %64, align 4, !tbaa !50
  %66 = fneg float %65
  store float %66, ptr %64, align 4, !tbaa !50
  %67 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 20, i64 2
  %68 = load float, ptr %67, align 4, !tbaa !50
  %69 = fneg float %68
  store float %69, ptr %67, align 4, !tbaa !50
  br label %70

70:                                               ; preds = %45, %39
  %71 = load float, ptr %42, align 4, !tbaa !50
  %72 = load float, ptr %40, align 4, !tbaa !50
  %73 = fneg float %3
  %74 = fmul float %72, %73
  %75 = tail call float @llvm.fmuladd.f32(float %7, float %71, float %74)
  %76 = load float, ptr %41, align 4, !tbaa !50
  %77 = fneg float %5
  %78 = tail call float @llvm.fmuladd.f32(float %77, float %76, float %75)
  %79 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16
  store float %78, ptr %79, align 4, !tbaa !50
  %80 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 20, i64 1
  %81 = load float, ptr %80, align 4, !tbaa !50
  %82 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 18, i64 1
  %83 = load float, ptr %82, align 4, !tbaa !50
  %84 = fmul float %83, %73
  %85 = tail call float @llvm.fmuladd.f32(float %7, float %81, float %84)
  %86 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 19, i64 1
  %87 = load float, ptr %86, align 4, !tbaa !50
  %88 = tail call float @llvm.fmuladd.f32(float %77, float %87, float %85)
  %89 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 1
  store float %88, ptr %89, align 4, !tbaa !50
  %90 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 20, i64 2
  %91 = load float, ptr %90, align 4, !tbaa !50
  %92 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 18, i64 2
  %93 = load float, ptr %92, align 4, !tbaa !50
  %94 = fmul float %93, %73
  %95 = tail call float @llvm.fmuladd.f32(float %7, float %91, float %94)
  %96 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 19, i64 2
  %97 = load float, ptr %96, align 4, !tbaa !50
  %98 = tail call float @llvm.fmuladd.f32(float %77, float %97, float %95)
  %99 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 2
  store float %98, ptr %99, align 4, !tbaa !50
  %100 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 66
  store float %78, ptr %100, align 4, !tbaa !50
  %101 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 66, i64 1
  store float %88, ptr %101, align 4, !tbaa !50
  %102 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 66, i64 2
  store float %98, ptr %102, align 4, !tbaa !50
  %103 = fmul float %88, %88
  %104 = tail call float @llvm.fmuladd.f32(float %78, float %78, float %103)
  %105 = tail call float @llvm.fmuladd.f32(float %98, float %98, float %104)
  %106 = fcmp ogt float %105, 0x38AA95A5C0000000
  br i1 %106, label %107, label %116

107:                                              ; preds = %70
  %108 = tail call float @sqrtf(float noundef %105) #11
  %109 = fdiv float 1.000000e+00, %108
  %110 = load float, ptr %79, align 4, !tbaa !50
  %111 = fmul float %110, %109
  store float %111, ptr %79, align 4, !tbaa !50
  %112 = load float, ptr %89, align 4, !tbaa !50
  %113 = fmul float %109, %112
  store float %113, ptr %89, align 4, !tbaa !50
  %114 = load float, ptr %99, align 4, !tbaa !50
  %115 = fmul float %109, %114
  br label %117

116:                                              ; preds = %70
  store float 0.000000e+00, ptr %79, align 4, !tbaa !50
  store float 0.000000e+00, ptr %89, align 4, !tbaa !50
  br label %117

117:                                              ; preds = %107, %116
  %118 = phi float [ 0.000000e+00, %116 ], [ %115, %107 ]
  store float %118, ptr %99, align 4, !tbaa !50
  br label %132

119:                                              ; preds = %36
  %120 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16
  %121 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 6
  %122 = load float, ptr %121, align 4, !tbaa !50
  store float %122, ptr %120, align 4, !tbaa !50
  %123 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 6, i64 1
  %124 = load float, ptr %123, align 4, !tbaa !50
  %125 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 1
  store float %124, ptr %125, align 4, !tbaa !50
  %126 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 6, i64 2
  %127 = load float, ptr %126, align 4, !tbaa !50
  %128 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 2
  store float %127, ptr %128, align 4, !tbaa !50
  %129 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 66
  store float %122, ptr %129, align 4, !tbaa !50
  %130 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 66, i64 1
  store float %124, ptr %130, align 4, !tbaa !50
  %131 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 66, i64 2
  store float %127, ptr %131, align 4, !tbaa !50
  br label %132

132:                                              ; preds = %119, %117
  %133 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 17
  %134 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16
  %135 = load float, ptr %134, align 4, !tbaa !50
  store float %135, ptr %133, align 4, !tbaa !50
  %136 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 1
  %137 = load float, ptr %136, align 4, !tbaa !50
  %138 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 17, i64 1
  store float %137, ptr %138, align 4, !tbaa !50
  %139 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 2
  %140 = load float, ptr %139, align 4, !tbaa !50
  %141 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 17, i64 2
  store float %140, ptr %141, align 4, !tbaa !50
  %142 = load ptr, ptr %9, align 8, !tbaa !83
  %143 = getelementptr inbounds %struct.VlakRen, ptr %142, i64 0, i32 7
  %144 = load i8, ptr %143, align 1, !tbaa !80
  %145 = and i8 %144, 64
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %147, label %183

147:                                              ; preds = %132
  %148 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 6
  %149 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30
  %150 = load float, ptr %148, align 4, !tbaa !50
  %151 = load float, ptr %149, align 4, !tbaa !50
  %152 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 6, i64 1
  %153 = load float, ptr %152, align 4, !tbaa !50
  %154 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30, i64 1
  %155 = load float, ptr %154, align 4, !tbaa !50
  %156 = fmul float %153, %155
  %157 = tail call float @llvm.fmuladd.f32(float %150, float %151, float %156)
  %158 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 6, i64 2
  %159 = load float, ptr %158, align 4, !tbaa !50
  %160 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30, i64 2
  %161 = load float, ptr %160, align 4, !tbaa !50
  %162 = tail call float @llvm.fmuladd.f32(float %159, float %161, float %157)
  %163 = fcmp olt float %162, 0.000000e+00
  br i1 %163, label %164, label %183

164:                                              ; preds = %147
  %165 = fneg float %150
  store float %165, ptr %148, align 4, !tbaa !50
  %166 = fneg float %153
  store float %166, ptr %152, align 4, !tbaa !50
  %167 = fneg float %159
  store float %167, ptr %158, align 4, !tbaa !50
  %168 = fneg float %135
  store float %168, ptr %134, align 4, !tbaa !50
  %169 = fneg float %137
  store float %169, ptr %136, align 4, !tbaa !50
  %170 = fneg float %140
  store float %170, ptr %139, align 4, !tbaa !50
  store float %168, ptr %133, align 4, !tbaa !50
  store float %169, ptr %138, align 4, !tbaa !50
  store float %170, ptr %141, align 4, !tbaa !50
  %171 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 66
  %172 = load float, ptr %171, align 4, !tbaa !50
  %173 = fneg float %172
  store float %173, ptr %171, align 4, !tbaa !50
  %174 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 66, i64 1
  %175 = load float, ptr %174, align 4, !tbaa !50
  %176 = fneg float %175
  store float %176, ptr %174, align 4, !tbaa !50
  %177 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 66, i64 2
  %178 = load float, ptr %177, align 4, !tbaa !50
  %179 = fneg float %178
  store float %179, ptr %177, align 4, !tbaa !50
  %180 = load i16, ptr %8, align 8, !tbaa !102
  %181 = icmp eq i16 %180, 0
  %182 = zext i1 %181 to i16
  store i16 %182, ptr %8, align 8, !tbaa !102
  br label %183

183:                                              ; preds = %147, %164, %132
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @shade_input_flip_normals(ptr nocapture noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 6
  %3 = load float, ptr %2, align 4, !tbaa !50
  %4 = fneg float %3
  store float %4, ptr %2, align 4, !tbaa !50
  %5 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 6, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !50
  %7 = fneg float %6
  store float %7, ptr %5, align 4, !tbaa !50
  %8 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 6, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !50
  %10 = fneg float %9
  store float %10, ptr %8, align 4, !tbaa !50
  %11 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16
  %12 = load float, ptr %11, align 4, !tbaa !50
  %13 = fneg float %12
  store float %13, ptr %11, align 4, !tbaa !50
  %14 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !50
  %16 = fneg float %15
  store float %16, ptr %14, align 4, !tbaa !50
  %17 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !50
  %19 = fneg float %18
  store float %19, ptr %17, align 4, !tbaa !50
  %20 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 17
  %21 = load float, ptr %20, align 4, !tbaa !50
  %22 = fneg float %21
  store float %22, ptr %20, align 4, !tbaa !50
  %23 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 17, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !50
  %25 = fneg float %24
  store float %25, ptr %23, align 4, !tbaa !50
  %26 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 17, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !50
  %28 = fneg float %27
  store float %28, ptr %26, align 4, !tbaa !50
  %29 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 66
  %30 = load float, ptr %29, align 4, !tbaa !50
  %31 = fneg float %30
  store float %31, ptr %29, align 4, !tbaa !50
  %32 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 66, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !50
  %34 = fneg float %33
  store float %34, ptr %32, align 4, !tbaa !50
  %35 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 66, i64 2
  %36 = load float, ptr %35, align 4, !tbaa !50
  %37 = fneg float %36
  store float %37, ptr %35, align 4, !tbaa !50
  %38 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 7
  %39 = load i16, ptr %38, align 8, !tbaa !102
  %40 = icmp eq i16 %39, 0
  %41 = zext i1 %40 to i16
  store i16 %41, ptr %38, align 8, !tbaa !102
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @shade_input_set_vertex_normals(ptr nocapture noundef %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !83
  %4 = getelementptr inbounds %struct.VlakRen, ptr %3, i64 0, i32 7
  %5 = load i8, ptr %4, align 1, !tbaa !80
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %66, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 23
  %10 = load float, ptr %9, align 8, !tbaa !152
  %11 = fadd float %10, 1.000000e+00
  %12 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 24
  %13 = load float, ptr %12, align 4, !tbaa !151
  %14 = fadd float %11, %13
  %15 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 18
  %16 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 19
  %17 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 20
  %18 = load float, ptr %17, align 4, !tbaa !50
  %19 = load float, ptr %15, align 4, !tbaa !50
  %20 = fneg float %10
  %21 = fmul float %19, %20
  %22 = tail call float @llvm.fmuladd.f32(float %14, float %18, float %21)
  %23 = load float, ptr %16, align 4, !tbaa !50
  %24 = fneg float %13
  %25 = tail call float @llvm.fmuladd.f32(float %24, float %23, float %22)
  %26 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16
  store float %25, ptr %26, align 4, !tbaa !50
  %27 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 20, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !50
  %29 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 18, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !50
  %31 = fmul float %30, %20
  %32 = tail call float @llvm.fmuladd.f32(float %14, float %28, float %31)
  %33 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 19, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !50
  %35 = tail call float @llvm.fmuladd.f32(float %24, float %34, float %32)
  %36 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 1
  store float %35, ptr %36, align 4, !tbaa !50
  %37 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 20, i64 2
  %38 = load float, ptr %37, align 4, !tbaa !50
  %39 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 18, i64 2
  %40 = load float, ptr %39, align 4, !tbaa !50
  %41 = fmul float %40, %20
  %42 = tail call float @llvm.fmuladd.f32(float %14, float %38, float %41)
  %43 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 19, i64 2
  %44 = load float, ptr %43, align 4, !tbaa !50
  %45 = tail call float @llvm.fmuladd.f32(float %24, float %44, float %42)
  %46 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 2
  store float %45, ptr %46, align 4, !tbaa !50
  %47 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 66
  store float %25, ptr %47, align 4, !tbaa !50
  %48 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 66, i64 1
  store float %35, ptr %48, align 4, !tbaa !50
  %49 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 66, i64 2
  store float %45, ptr %49, align 4, !tbaa !50
  %50 = fmul float %35, %35
  %51 = tail call float @llvm.fmuladd.f32(float %25, float %25, float %50)
  %52 = tail call float @llvm.fmuladd.f32(float %45, float %45, float %51)
  %53 = fcmp ogt float %52, 0x38AA95A5C0000000
  br i1 %53, label %54, label %63

54:                                               ; preds = %8
  %55 = tail call float @sqrtf(float noundef %52) #11
  %56 = fdiv float 1.000000e+00, %55
  %57 = load float, ptr %26, align 4, !tbaa !50
  %58 = fmul float %57, %56
  store float %58, ptr %26, align 4, !tbaa !50
  %59 = load float, ptr %36, align 4, !tbaa !50
  %60 = fmul float %56, %59
  store float %60, ptr %36, align 4, !tbaa !50
  %61 = load float, ptr %46, align 4, !tbaa !50
  %62 = fmul float %56, %61
  br label %64

63:                                               ; preds = %8
  store float 0.000000e+00, ptr %26, align 4, !tbaa !50
  store float 0.000000e+00, ptr %36, align 4, !tbaa !50
  br label %64

64:                                               ; preds = %54, %63
  %65 = phi float [ 0.000000e+00, %63 ], [ %62, %54 ]
  store float %65, ptr %46, align 4, !tbaa !50
  br label %79

66:                                               ; preds = %1
  %67 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16
  %68 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 6
  %69 = load float, ptr %68, align 4, !tbaa !50
  store float %69, ptr %67, align 4, !tbaa !50
  %70 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 6, i64 1
  %71 = load float, ptr %70, align 4, !tbaa !50
  %72 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 1
  store float %71, ptr %72, align 4, !tbaa !50
  %73 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 6, i64 2
  %74 = load float, ptr %73, align 4, !tbaa !50
  %75 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 2
  store float %74, ptr %75, align 4, !tbaa !50
  %76 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 66
  store float %69, ptr %76, align 4, !tbaa !50
  %77 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 66, i64 1
  store float %71, ptr %77, align 4, !tbaa !50
  %78 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 66, i64 2
  store float %74, ptr %78, align 4, !tbaa !50
  br label %79

79:                                               ; preds = %66, %64
  %80 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 17
  %81 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16
  %82 = load float, ptr %81, align 4, !tbaa !50
  store float %82, ptr %80, align 4, !tbaa !50
  %83 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 1
  %84 = load float, ptr %83, align 4, !tbaa !50
  %85 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 17, i64 1
  store float %84, ptr %85, align 4, !tbaa !50
  %86 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 2
  %87 = load float, ptr %86, align 4, !tbaa !50
  %88 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 17, i64 2
  store float %87, ptr %88, align 4, !tbaa !50
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @shade_input_set_shade_texco(ptr noundef %0) local_unnamed_addr #2 {
  %2 = alloca [3 x float], align 4
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca ptr, align 8
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca [4 x float], align 16
  %9 = alloca [4 x float], align 16
  %10 = alloca [4 x float], align 16
  %11 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !84
  %13 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !87
  %15 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !89
  %17 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 9
  %18 = load ptr, ptr %17, align 8, !tbaa !90
  %19 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 10
  %20 = load ptr, ptr %19, align 8, !tbaa !91
  %21 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 23
  %22 = load float, ptr %21, align 8, !tbaa !152
  %23 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 24
  %24 = load float, ptr %23, align 4, !tbaa !151
  %25 = fadd float %22, 1.000000e+00
  %26 = fadd float %25, %24
  %27 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 21
  %28 = load i32, ptr %27, align 8, !tbaa !69
  %29 = load ptr, ptr %0, align 8, !tbaa !34
  %30 = getelementptr inbounds %struct.Material, ptr %29, i64 0, i32 90
  %31 = load i16, ptr %30, align 4, !tbaa !97
  %32 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !83
  %34 = getelementptr inbounds %struct.VlakRen, ptr %33, i64 0, i32 7
  %35 = load i8, ptr %34, align 1, !tbaa !80
  %36 = and i8 %35, 1
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %102, label %38

38:                                               ; preds = %1
  %39 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 15
  %40 = load i16, ptr %39, align 8, !tbaa !98
  %41 = icmp eq i16 %40, 0
  %42 = and i16 %31, 6
  %43 = icmp eq i16 %42, 0
  %44 = select i1 %41, i1 true, i1 %43
  br i1 %44, label %102, label %45

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 18
  %47 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 19
  %48 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 20
  %49 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 25
  %50 = load float, ptr %49, align 8, !tbaa !153
  %51 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 26
  %52 = load float, ptr %51, align 4, !tbaa !154
  %53 = fadd float %50, %52
  %54 = load float, ptr %48, align 4, !tbaa !50
  %55 = load float, ptr %46, align 4, !tbaa !50
  %56 = fneg float %50
  %57 = fmul float %55, %56
  %58 = tail call float @llvm.fmuladd.f32(float %53, float %54, float %57)
  %59 = load float, ptr %47, align 4, !tbaa !50
  %60 = fneg float %52
  %61 = tail call float @llvm.fmuladd.f32(float %60, float %59, float %58)
  %62 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 88
  store float %61, ptr %62, align 8, !tbaa !50
  %63 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 20, i64 1
  %64 = load float, ptr %63, align 4, !tbaa !50
  %65 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 18, i64 1
  %66 = load float, ptr %65, align 4, !tbaa !50
  %67 = fmul float %66, %56
  %68 = tail call float @llvm.fmuladd.f32(float %53, float %64, float %67)
  %69 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 19, i64 1
  %70 = load float, ptr %69, align 4, !tbaa !50
  %71 = tail call float @llvm.fmuladd.f32(float %60, float %70, float %68)
  %72 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 88, i64 1
  store float %71, ptr %72, align 4, !tbaa !50
  %73 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 20, i64 2
  %74 = load float, ptr %73, align 4, !tbaa !50
  %75 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 18, i64 2
  %76 = load float, ptr %75, align 4, !tbaa !50
  %77 = fmul float %76, %56
  %78 = tail call float @llvm.fmuladd.f32(float %53, float %74, float %77)
  %79 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 19, i64 2
  %80 = load float, ptr %79, align 4, !tbaa !50
  %81 = tail call float @llvm.fmuladd.f32(float %60, float %80, float %78)
  %82 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 88, i64 2
  store float %81, ptr %82, align 8, !tbaa !50
  %83 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 27
  %84 = load float, ptr %83, align 8, !tbaa !155
  %85 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 28
  %86 = load float, ptr %85, align 4, !tbaa !156
  %87 = fadd float %84, %86
  %88 = fneg float %84
  %89 = fmul float %55, %88
  %90 = tail call float @llvm.fmuladd.f32(float %87, float %54, float %89)
  %91 = fneg float %86
  %92 = tail call float @llvm.fmuladd.f32(float %91, float %59, float %90)
  %93 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 89
  store float %92, ptr %93, align 4, !tbaa !50
  %94 = fmul float %66, %88
  %95 = tail call float @llvm.fmuladd.f32(float %87, float %64, float %94)
  %96 = tail call float @llvm.fmuladd.f32(float %91, float %70, float %95)
  %97 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 89, i64 1
  store float %96, ptr %97, align 4, !tbaa !50
  %98 = fmul float %76, %88
  %99 = tail call float @llvm.fmuladd.f32(float %87, float %74, float %98)
  %100 = tail call float @llvm.fmuladd.f32(float %91, float %80, float %99)
  %101 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 89, i64 2
  store float %100, ptr %101, align 4, !tbaa !50
  br label %102

102:                                              ; preds = %38, %45, %1
  %103 = and i32 %28, 201326592
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %102
  %106 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 4), align 8, !tbaa !157
  %107 = and i16 %106, 16
  %108 = icmp eq i16 %107, 0
  br i1 %108, label %348, label %109

109:                                              ; preds = %105, %102
  %110 = select i1 %37, float 0xBFD5555560000000, float %24
  %111 = select i1 %37, float 0xBFD5555560000000, float %22
  %112 = select i1 %37, float 0x3FD5555560000000, float %26
  %113 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 65
  %114 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 65, i64 2
  store float 0.000000e+00, ptr %114, align 8, !tbaa !50
  %115 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 65, i64 1
  store float 0.000000e+00, ptr %115, align 4, !tbaa !50
  store float 0.000000e+00, ptr %113, align 8, !tbaa !50
  %116 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 67
  %117 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 67, i64 2
  store float 0.000000e+00, ptr %117, align 8, !tbaa !50
  %118 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 67, i64 1
  store float 0.000000e+00, ptr %118, align 4, !tbaa !50
  store float 0.000000e+00, ptr %116, align 8, !tbaa !50
  %119 = and i32 %28, 67108864
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %185, label %121

121:                                              ; preds = %109
  %122 = tail call ptr @RE_vertren_get_tangent(ptr noundef %14, ptr noundef %16, i32 noundef 0) #11
  %123 = tail call ptr @RE_vertren_get_tangent(ptr noundef %14, ptr noundef %18, i32 noundef 0) #11
  %124 = tail call ptr @RE_vertren_get_tangent(ptr noundef %14, ptr noundef %20, i32 noundef 0) #11
  %125 = icmp ne ptr %122, null
  %126 = icmp ne ptr %123, null
  %127 = select i1 %125, i1 %126, i1 false
  %128 = icmp ne ptr %124, null
  %129 = select i1 %127, i1 %128, i1 false
  br i1 %129, label %130, label %185

130:                                              ; preds = %121
  %131 = load float, ptr %124, align 4, !tbaa !50
  %132 = load float, ptr %122, align 4, !tbaa !50
  %133 = fneg float %111
  %134 = fmul float %132, %133
  %135 = tail call float @llvm.fmuladd.f32(float %112, float %131, float %134)
  %136 = load float, ptr %123, align 4, !tbaa !50
  %137 = fneg float %110
  %138 = tail call float @llvm.fmuladd.f32(float %137, float %136, float %135)
  store float %138, ptr %113, align 8, !tbaa !50
  %139 = getelementptr inbounds float, ptr %124, i64 1
  %140 = load float, ptr %139, align 4, !tbaa !50
  %141 = getelementptr inbounds float, ptr %122, i64 1
  %142 = load float, ptr %141, align 4, !tbaa !50
  %143 = fmul float %142, %133
  %144 = tail call float @llvm.fmuladd.f32(float %112, float %140, float %143)
  %145 = getelementptr inbounds float, ptr %123, i64 1
  %146 = load float, ptr %145, align 4, !tbaa !50
  %147 = tail call float @llvm.fmuladd.f32(float %137, float %146, float %144)
  store float %147, ptr %115, align 4, !tbaa !50
  %148 = getelementptr inbounds float, ptr %124, i64 2
  %149 = load float, ptr %148, align 4, !tbaa !50
  %150 = getelementptr inbounds float, ptr %122, i64 2
  %151 = load float, ptr %150, align 4, !tbaa !50
  %152 = fmul float %151, %133
  %153 = tail call float @llvm.fmuladd.f32(float %112, float %149, float %152)
  %154 = getelementptr inbounds float, ptr %123, i64 2
  %155 = load float, ptr %154, align 4, !tbaa !50
  %156 = tail call float @llvm.fmuladd.f32(float %137, float %155, float %153)
  store float %156, ptr %114, align 8, !tbaa !50
  %157 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %12, i64 0, i32 11
  %158 = load i16, ptr %157, align 8, !tbaa !103
  %159 = and i16 %158, 3
  %160 = icmp eq i16 %159, 0
  br i1 %160, label %163, label %161

161:                                              ; preds = %130
  %162 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %12, i64 0, i32 10
  tail call void @mul_m3_v3(ptr noundef nonnull %162, ptr noundef nonnull %113) #11
  br label %163

163:                                              ; preds = %161, %130
  %164 = load float, ptr %113, align 4, !tbaa !50
  %165 = load float, ptr %115, align 4, !tbaa !50
  %166 = fmul float %165, %165
  %167 = tail call float @llvm.fmuladd.f32(float %164, float %164, float %166)
  %168 = load float, ptr %114, align 4, !tbaa !50
  %169 = tail call float @llvm.fmuladd.f32(float %168, float %168, float %167)
  %170 = fcmp ogt float %169, 0x38AA95A5C0000000
  br i1 %170, label %171, label %180

171:                                              ; preds = %163
  %172 = tail call float @sqrtf(float noundef %169) #11
  %173 = fdiv float 1.000000e+00, %172
  %174 = load float, ptr %113, align 4, !tbaa !50
  %175 = fmul float %174, %173
  store float %175, ptr %113, align 4, !tbaa !50
  %176 = load float, ptr %115, align 4, !tbaa !50
  %177 = fmul float %173, %176
  store float %177, ptr %115, align 4, !tbaa !50
  %178 = load float, ptr %114, align 4, !tbaa !50
  %179 = fmul float %173, %178
  br label %181

180:                                              ; preds = %163
  store float 0.000000e+00, ptr %113, align 4, !tbaa !50
  store float 0.000000e+00, ptr %115, align 4, !tbaa !50
  br label %181

181:                                              ; preds = %171, %180
  %182 = phi float [ 0.000000e+00, %180 ], [ %179, %171 ]
  store float %182, ptr %114, align 4, !tbaa !50
  %183 = load float, ptr %113, align 4, !tbaa !50
  store float %183, ptr %116, align 4, !tbaa !50
  %184 = load float, ptr %115, align 4, !tbaa !50
  store float %184, ptr %118, align 4, !tbaa !50
  store float %182, ptr %117, align 4, !tbaa !50
  br label %185

185:                                              ; preds = %121, %181, %109
  %186 = and i32 %28, 134217728
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %185
  %189 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 4), align 8, !tbaa !157
  %190 = and i16 %189, 16
  %191 = icmp eq i16 %190, 0
  br i1 %191, label %348, label %192

192:                                              ; preds = %188, %185
  %193 = load ptr, ptr %32, align 8, !tbaa !83
  %194 = tail call ptr @RE_vlakren_get_nmap_tangent(ptr noundef %14, ptr noundef %193, i32 noundef 0) #11
  %195 = icmp eq ptr %194, null
  br i1 %195, label %348, label %196

196:                                              ; preds = %192
  %197 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 11
  %198 = load i16, ptr %197, align 8, !tbaa !92
  %199 = sext i16 %198 to i32
  %200 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 12
  %201 = load i16, ptr %200, align 2, !tbaa !93
  %202 = sext i16 %201 to i32
  %203 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 13
  %204 = load i16, ptr %203, align 4, !tbaa !94
  %205 = sext i16 %204 to i32
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #11
  %206 = load ptr, ptr %32, align 8, !tbaa !83
  %207 = getelementptr inbounds %struct.VlakRen, ptr %206, i64 0, i32 7
  %208 = load i8, ptr %207, align 1, !tbaa !80
  %209 = zext i8 %208 to i32
  %210 = and i32 %209, 32
  %211 = icmp eq i32 %210, 0
  %212 = and i32 %209, 16
  %213 = icmp eq i32 %212, 0
  br i1 %211, label %221, label %214

214:                                              ; preds = %196
  br i1 %213, label %219, label %215

215:                                              ; preds = %214
  %216 = add nsw i32 %199, 1
  %217 = add nsw i32 %202, 1
  %218 = add nsw i32 %205, 1
  br label %225

219:                                              ; preds = %214
  %220 = add nsw i32 %205, 1
  br label %225

221:                                              ; preds = %196
  br i1 %213, label %225, label %222

222:                                              ; preds = %221
  %223 = add nsw i32 %202, 1
  %224 = add nsw i32 %205, 1
  br label %225

225:                                              ; preds = %215, %219, %221, %222
  %226 = phi i32 [ %199, %221 ], [ %199, %222 ], [ %199, %219 ], [ %216, %215 ]
  %227 = phi i32 [ %202, %221 ], [ %223, %222 ], [ %202, %219 ], [ %217, %215 ]
  %228 = phi i32 [ %205, %221 ], [ %224, %222 ], [ %220, %219 ], [ %218, %215 ]
  %229 = shl nsw i32 %226, 2
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds float, ptr %194, i64 %230
  %232 = load float, ptr %231, align 4, !tbaa !50
  store float %232, ptr %2, align 4, !tbaa !50
  %233 = getelementptr inbounds float, ptr %231, i64 1
  %234 = load float, ptr %233, align 4, !tbaa !50
  %235 = getelementptr inbounds float, ptr %2, i64 1
  store float %234, ptr %235, align 4, !tbaa !50
  %236 = getelementptr inbounds float, ptr %231, i64 2
  %237 = load float, ptr %236, align 4, !tbaa !50
  %238 = getelementptr inbounds float, ptr %2, i64 2
  store float %237, ptr %238, align 4, !tbaa !50
  %239 = shl nsw i32 %227, 2
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds float, ptr %194, i64 %240
  %242 = load float, ptr %241, align 4, !tbaa !50
  store float %242, ptr %3, align 4, !tbaa !50
  %243 = getelementptr inbounds float, ptr %241, i64 1
  %244 = load float, ptr %243, align 4, !tbaa !50
  %245 = getelementptr inbounds float, ptr %3, i64 1
  store float %244, ptr %245, align 4, !tbaa !50
  %246 = getelementptr inbounds float, ptr %241, i64 2
  %247 = load float, ptr %246, align 4, !tbaa !50
  %248 = getelementptr inbounds float, ptr %3, i64 2
  store float %247, ptr %248, align 4, !tbaa !50
  %249 = shl nsw i32 %228, 2
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds float, ptr %194, i64 %250
  %252 = load float, ptr %251, align 4, !tbaa !50
  store float %252, ptr %4, align 4, !tbaa !50
  %253 = getelementptr inbounds float, ptr %251, i64 1
  %254 = load float, ptr %253, align 4, !tbaa !50
  %255 = getelementptr inbounds float, ptr %4, i64 1
  store float %254, ptr %255, align 4, !tbaa !50
  %256 = getelementptr inbounds float, ptr %251, i64 2
  %257 = load float, ptr %256, align 4, !tbaa !50
  %258 = getelementptr inbounds float, ptr %4, i64 2
  store float %257, ptr %258, align 4, !tbaa !50
  %259 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %12, i64 0, i32 11
  %260 = load i16, ptr %259, align 8, !tbaa !103
  %261 = and i16 %260, 3
  %262 = icmp eq i16 %261, 0
  br i1 %262, label %322, label %263

263:                                              ; preds = %225
  %264 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %12, i64 0, i32 8
  call void @mul_mat3_m4_v3(ptr noundef nonnull %264, ptr noundef nonnull %2) #11
  %265 = load float, ptr %2, align 4, !tbaa !50
  %266 = load float, ptr %235, align 4, !tbaa !50
  %267 = fmul float %266, %266
  %268 = call float @llvm.fmuladd.f32(float %265, float %265, float %267)
  %269 = load float, ptr %238, align 4, !tbaa !50
  %270 = call float @llvm.fmuladd.f32(float %269, float %269, float %268)
  %271 = fcmp ogt float %270, 0x38AA95A5C0000000
  br i1 %271, label %272, label %281

272:                                              ; preds = %263
  %273 = call float @sqrtf(float noundef %270) #11
  %274 = fdiv float 1.000000e+00, %273
  %275 = load float, ptr %2, align 4, !tbaa !50
  %276 = fmul float %275, %274
  store float %276, ptr %2, align 4, !tbaa !50
  %277 = load float, ptr %235, align 4, !tbaa !50
  %278 = fmul float %274, %277
  store float %278, ptr %235, align 4, !tbaa !50
  %279 = load float, ptr %238, align 4, !tbaa !50
  %280 = fmul float %274, %279
  br label %282

281:                                              ; preds = %263
  store float 0.000000e+00, ptr %2, align 4, !tbaa !50
  store float 0.000000e+00, ptr %235, align 4, !tbaa !50
  br label %282

282:                                              ; preds = %272, %281
  %283 = phi float [ 0.000000e+00, %281 ], [ %280, %272 ]
  store float %283, ptr %238, align 4, !tbaa !50
  call void @mul_mat3_m4_v3(ptr noundef nonnull %264, ptr noundef nonnull %3) #11
  %284 = load float, ptr %3, align 4, !tbaa !50
  %285 = load float, ptr %245, align 4, !tbaa !50
  %286 = fmul float %285, %285
  %287 = call float @llvm.fmuladd.f32(float %284, float %284, float %286)
  %288 = load float, ptr %248, align 4, !tbaa !50
  %289 = call float @llvm.fmuladd.f32(float %288, float %288, float %287)
  %290 = fcmp ogt float %289, 0x38AA95A5C0000000
  br i1 %290, label %291, label %300

291:                                              ; preds = %282
  %292 = call float @sqrtf(float noundef %289) #11
  %293 = fdiv float 1.000000e+00, %292
  %294 = load float, ptr %3, align 4, !tbaa !50
  %295 = fmul float %294, %293
  store float %295, ptr %3, align 4, !tbaa !50
  %296 = load float, ptr %245, align 4, !tbaa !50
  %297 = fmul float %293, %296
  store float %297, ptr %245, align 4, !tbaa !50
  %298 = load float, ptr %248, align 4, !tbaa !50
  %299 = fmul float %293, %298
  br label %301

300:                                              ; preds = %282
  store float 0.000000e+00, ptr %3, align 4, !tbaa !50
  store float 0.000000e+00, ptr %245, align 4, !tbaa !50
  br label %301

301:                                              ; preds = %291, %300
  %302 = phi float [ 0.000000e+00, %300 ], [ %299, %291 ]
  store float %302, ptr %248, align 4, !tbaa !50
  call void @mul_mat3_m4_v3(ptr noundef nonnull %264, ptr noundef nonnull %4) #11
  %303 = load float, ptr %4, align 4, !tbaa !50
  %304 = load float, ptr %255, align 4, !tbaa !50
  %305 = fmul float %304, %304
  %306 = call float @llvm.fmuladd.f32(float %303, float %303, float %305)
  %307 = load float, ptr %258, align 4, !tbaa !50
  %308 = call float @llvm.fmuladd.f32(float %307, float %307, float %306)
  %309 = fcmp ogt float %308, 0x38AA95A5C0000000
  br i1 %309, label %310, label %319

310:                                              ; preds = %301
  %311 = call float @sqrtf(float noundef %308) #11
  %312 = fdiv float 1.000000e+00, %311
  %313 = load float, ptr %4, align 4, !tbaa !50
  %314 = fmul float %313, %312
  store float %314, ptr %4, align 4, !tbaa !50
  %315 = load float, ptr %255, align 4, !tbaa !50
  %316 = fmul float %312, %315
  store float %316, ptr %255, align 4, !tbaa !50
  %317 = load float, ptr %258, align 4, !tbaa !50
  %318 = fmul float %312, %317
  br label %320

319:                                              ; preds = %301
  store float 0.000000e+00, ptr %4, align 4, !tbaa !50
  store float 0.000000e+00, ptr %255, align 4, !tbaa !50
  br label %320

320:                                              ; preds = %310, %319
  %321 = phi float [ 0.000000e+00, %319 ], [ %318, %310 ]
  store float %321, ptr %258, align 4, !tbaa !50
  br label %322

322:                                              ; preds = %320, %225
  %323 = load float, ptr %4, align 4, !tbaa !50
  %324 = load float, ptr %2, align 4, !tbaa !50
  %325 = fneg float %111
  %326 = fmul float %324, %325
  %327 = call float @llvm.fmuladd.f32(float %112, float %323, float %326)
  %328 = load float, ptr %3, align 4, !tbaa !50
  %329 = fneg float %110
  %330 = call float @llvm.fmuladd.f32(float %329, float %328, float %327)
  store float %330, ptr %116, align 8, !tbaa !50
  %331 = load float, ptr %255, align 4, !tbaa !50
  %332 = load float, ptr %235, align 4, !tbaa !50
  %333 = fmul float %332, %325
  %334 = call float @llvm.fmuladd.f32(float %112, float %331, float %333)
  %335 = load float, ptr %245, align 4, !tbaa !50
  %336 = call float @llvm.fmuladd.f32(float %329, float %335, float %334)
  store float %336, ptr %118, align 4, !tbaa !50
  %337 = load float, ptr %258, align 4, !tbaa !50
  %338 = load float, ptr %238, align 4, !tbaa !50
  %339 = fmul float %338, %325
  %340 = call float @llvm.fmuladd.f32(float %112, float %337, float %339)
  %341 = load float, ptr %248, align 4, !tbaa !50
  %342 = call float @llvm.fmuladd.f32(float %329, float %341, float %340)
  store float %342, ptr %117, align 8, !tbaa !50
  %343 = or disjoint i32 %229, 3
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds float, ptr %194, i64 %344
  %346 = load float, ptr %345, align 4, !tbaa !50
  %347 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 67, i64 3
  store float %346, ptr %347, align 4, !tbaa !50
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #11
  br label %348

348:                                              ; preds = %188, %322, %192, %105
  %349 = icmp sgt i32 %28, -1
  br i1 %349, label %380, label %350

350:                                              ; preds = %348
  %351 = load ptr, ptr %32, align 8, !tbaa !83
  %352 = call ptr @RE_vlakren_get_surfnor(ptr noundef %14, ptr noundef %351, i32 noundef 0) #11
  %353 = icmp eq ptr %352, null
  %354 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 110
  br i1 %353, label %369, label %355

355:                                              ; preds = %350
  %356 = load float, ptr %352, align 4, !tbaa !50
  store float %356, ptr %354, align 4, !tbaa !50
  %357 = getelementptr inbounds float, ptr %352, i64 1
  %358 = load float, ptr %357, align 4, !tbaa !50
  %359 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 110, i64 1
  store float %358, ptr %359, align 4, !tbaa !50
  %360 = getelementptr inbounds float, ptr %352, i64 2
  %361 = load float, ptr %360, align 4, !tbaa !50
  %362 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 110, i64 2
  store float %361, ptr %362, align 4, !tbaa !50
  %363 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %12, i64 0, i32 11
  %364 = load i16, ptr %363, align 8, !tbaa !103
  %365 = and i16 %364, 3
  %366 = icmp eq i16 %365, 0
  br i1 %366, label %378, label %367

367:                                              ; preds = %355
  %368 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %12, i64 0, i32 10
  call void @mul_m3_v3(ptr noundef nonnull %368, ptr noundef nonnull %354) #11
  br label %378

369:                                              ; preds = %350
  %370 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16
  %371 = load float, ptr %370, align 4, !tbaa !50
  store float %371, ptr %354, align 4, !tbaa !50
  %372 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 1
  %373 = load float, ptr %372, align 4, !tbaa !50
  %374 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 110, i64 1
  store float %373, ptr %374, align 4, !tbaa !50
  %375 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 2
  %376 = load float, ptr %375, align 4, !tbaa !50
  %377 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 110, i64 2
  store float %376, ptr %377, align 4, !tbaa !50
  br label %378

378:                                              ; preds = %355, %367, %369
  %379 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 111
  store float 0.000000e+00, ptr %379, align 4, !tbaa !119
  br label %380

380:                                              ; preds = %378, %348
  %381 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !54
  %382 = and i32 %381, 1048576
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %435, label %384

384:                                              ; preds = %380
  %385 = call ptr @RE_vertren_get_winspeed(ptr noundef %12, ptr noundef %16, i32 noundef 0) #11
  %386 = call ptr @RE_vertren_get_winspeed(ptr noundef %12, ptr noundef %18, i32 noundef 0) #11
  %387 = call ptr @RE_vertren_get_winspeed(ptr noundef %12, ptr noundef %20, i32 noundef 0) #11
  %388 = icmp ne ptr %385, null
  %389 = icmp ne ptr %386, null
  %390 = select i1 %388, i1 %389, i1 false
  %391 = icmp ne ptr %387, null
  %392 = select i1 %390, i1 %391, i1 false
  br i1 %392, label %393, label %433

393:                                              ; preds = %384
  %394 = load float, ptr %387, align 4, !tbaa !50
  %395 = load float, ptr %385, align 4, !tbaa !50
  %396 = fneg float %22
  %397 = fmul float %395, %396
  %398 = call float @llvm.fmuladd.f32(float %26, float %394, float %397)
  %399 = load float, ptr %386, align 4, !tbaa !50
  %400 = fneg float %24
  %401 = call float @llvm.fmuladd.f32(float %400, float %399, float %398)
  %402 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 69
  store float %401, ptr %402, align 4, !tbaa !50
  %403 = getelementptr inbounds float, ptr %387, i64 1
  %404 = load float, ptr %403, align 4, !tbaa !50
  %405 = getelementptr inbounds float, ptr %385, i64 1
  %406 = load float, ptr %405, align 4, !tbaa !50
  %407 = fmul float %406, %396
  %408 = call float @llvm.fmuladd.f32(float %26, float %404, float %407)
  %409 = getelementptr inbounds float, ptr %386, i64 1
  %410 = load float, ptr %409, align 4, !tbaa !50
  %411 = call float @llvm.fmuladd.f32(float %400, float %410, float %408)
  %412 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 69, i64 1
  store float %411, ptr %412, align 4, !tbaa !50
  %413 = getelementptr inbounds float, ptr %387, i64 2
  %414 = load float, ptr %413, align 4, !tbaa !50
  %415 = getelementptr inbounds float, ptr %385, i64 2
  %416 = load float, ptr %415, align 4, !tbaa !50
  %417 = fmul float %416, %396
  %418 = call float @llvm.fmuladd.f32(float %26, float %414, float %417)
  %419 = getelementptr inbounds float, ptr %386, i64 2
  %420 = load float, ptr %419, align 4, !tbaa !50
  %421 = call float @llvm.fmuladd.f32(float %400, float %420, float %418)
  %422 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 69, i64 2
  store float %421, ptr %422, align 4, !tbaa !50
  %423 = getelementptr inbounds float, ptr %387, i64 3
  %424 = load float, ptr %423, align 4, !tbaa !50
  %425 = getelementptr inbounds float, ptr %385, i64 3
  %426 = load float, ptr %425, align 4, !tbaa !50
  %427 = fmul float %426, %396
  %428 = call float @llvm.fmuladd.f32(float %26, float %424, float %427)
  %429 = getelementptr inbounds float, ptr %386, i64 3
  %430 = load float, ptr %429, align 4, !tbaa !50
  %431 = call float @llvm.fmuladd.f32(float %400, float %430, float %428)
  %432 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 69, i64 3
  store float %431, ptr %432, align 4, !tbaa !50
  br label %435

433:                                              ; preds = %384
  %434 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 69
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %434, i8 0, i64 16, i1 false)
  br label %435

435:                                              ; preds = %393, %433, %380
  %436 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 119
  %437 = load i32, ptr %436, align 8, !tbaa !52
  %438 = and i32 %437, 4096
  %439 = icmp eq i32 %438, 0
  br i1 %439, label %440, label %444

440:                                              ; preds = %435
  %441 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 4), align 8, !tbaa !157
  %442 = and i16 %441, 256
  %443 = icmp eq i16 %442, 0
  br i1 %443, label %446, label %444

444:                                              ; preds = %440, %435
  %445 = or i16 %31, 2064
  br label %446

446:                                              ; preds = %444, %440
  %447 = phi i16 [ %445, %444 ], [ %31, %440 ]
  %448 = zext i16 %447 to i32
  %449 = and i32 %448, 2048
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %1155, label %451

451:                                              ; preds = %446
  %452 = and i32 %448, 1
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %562, label %454

454:                                              ; preds = %451
  %455 = getelementptr inbounds %struct.VertRen, ptr %16, i64 0, i32 2
  %456 = load ptr, ptr %455, align 8, !tbaa !158
  %457 = icmp eq ptr %456, null
  br i1 %457, label %552, label %458

458:                                              ; preds = %454
  %459 = getelementptr inbounds %struct.VertRen, ptr %18, i64 0, i32 2
  %460 = load ptr, ptr %459, align 8, !tbaa !158
  %461 = getelementptr inbounds %struct.VertRen, ptr %20, i64 0, i32 2
  %462 = load ptr, ptr %461, align 8, !tbaa !158
  %463 = load float, ptr %462, align 4, !tbaa !50
  %464 = load float, ptr %456, align 4, !tbaa !50
  %465 = fneg float %22
  %466 = fmul float %464, %465
  %467 = call float @llvm.fmuladd.f32(float %26, float %463, float %466)
  %468 = load float, ptr %460, align 4, !tbaa !50
  %469 = fneg float %24
  %470 = call float @llvm.fmuladd.f32(float %469, float %468, float %467)
  %471 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 56
  store float %470, ptr %471, align 4, !tbaa !50
  %472 = getelementptr inbounds float, ptr %462, i64 1
  %473 = load float, ptr %472, align 4, !tbaa !50
  %474 = getelementptr inbounds float, ptr %456, i64 1
  %475 = load float, ptr %474, align 4, !tbaa !50
  %476 = fmul float %475, %465
  %477 = call float @llvm.fmuladd.f32(float %26, float %473, float %476)
  %478 = getelementptr inbounds float, ptr %460, i64 1
  %479 = load float, ptr %478, align 4, !tbaa !50
  %480 = call float @llvm.fmuladd.f32(float %469, float %479, float %477)
  %481 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 56, i64 1
  store float %480, ptr %481, align 4, !tbaa !50
  %482 = getelementptr inbounds float, ptr %462, i64 2
  %483 = load float, ptr %482, align 4, !tbaa !50
  %484 = getelementptr inbounds float, ptr %456, i64 2
  %485 = load float, ptr %484, align 4, !tbaa !50
  %486 = fmul float %485, %465
  %487 = call float @llvm.fmuladd.f32(float %26, float %483, float %486)
  %488 = getelementptr inbounds float, ptr %460, i64 2
  %489 = load float, ptr %488, align 4, !tbaa !50
  %490 = call float @llvm.fmuladd.f32(float %469, float %489, float %487)
  %491 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 56, i64 2
  store float %490, ptr %491, align 4, !tbaa !50
  %492 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 15
  %493 = load i16, ptr %492, align 8, !tbaa !98
  %494 = icmp eq i16 %493, 0
  br i1 %494, label %552, label %495

495:                                              ; preds = %458
  %496 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 25
  %497 = load float, ptr %496, align 8, !tbaa !153
  %498 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 26
  %499 = load float, ptr %498, align 4, !tbaa !154
  %500 = fadd float %497, %499
  %501 = load float, ptr %462, align 4, !tbaa !50
  %502 = load float, ptr %456, align 4, !tbaa !50
  %503 = fneg float %497
  %504 = fmul float %502, %503
  %505 = call float @llvm.fmuladd.f32(float %500, float %501, float %504)
  %506 = load float, ptr %460, align 4, !tbaa !50
  %507 = fneg float %499
  %508 = call float @llvm.fmuladd.f32(float %507, float %506, float %505)
  %509 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 80
  store float %508, ptr %509, align 8, !tbaa !50
  %510 = load float, ptr %472, align 4, !tbaa !50
  %511 = load float, ptr %474, align 4, !tbaa !50
  %512 = fmul float %511, %503
  %513 = call float @llvm.fmuladd.f32(float %500, float %510, float %512)
  %514 = load float, ptr %478, align 4, !tbaa !50
  %515 = call float @llvm.fmuladd.f32(float %507, float %514, float %513)
  %516 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 80, i64 1
  store float %515, ptr %516, align 4, !tbaa !50
  %517 = load float, ptr %482, align 4, !tbaa !50
  %518 = load float, ptr %484, align 4, !tbaa !50
  %519 = fmul float %518, %503
  %520 = call float @llvm.fmuladd.f32(float %500, float %517, float %519)
  %521 = load float, ptr %488, align 4, !tbaa !50
  %522 = call float @llvm.fmuladd.f32(float %507, float %521, float %520)
  %523 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 80, i64 2
  store float %522, ptr %523, align 8, !tbaa !50
  %524 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 27
  %525 = load float, ptr %524, align 8, !tbaa !155
  %526 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 28
  %527 = load float, ptr %526, align 4, !tbaa !156
  %528 = fadd float %525, %527
  %529 = load float, ptr %462, align 4, !tbaa !50
  %530 = load float, ptr %456, align 4, !tbaa !50
  %531 = fneg float %525
  %532 = fmul float %530, %531
  %533 = call float @llvm.fmuladd.f32(float %528, float %529, float %532)
  %534 = load float, ptr %460, align 4, !tbaa !50
  %535 = fneg float %527
  %536 = call float @llvm.fmuladd.f32(float %535, float %534, float %533)
  %537 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 81
  store float %536, ptr %537, align 4, !tbaa !50
  %538 = load float, ptr %472, align 4, !tbaa !50
  %539 = load float, ptr %474, align 4, !tbaa !50
  %540 = fmul float %539, %531
  %541 = call float @llvm.fmuladd.f32(float %528, float %538, float %540)
  %542 = load float, ptr %478, align 4, !tbaa !50
  %543 = call float @llvm.fmuladd.f32(float %535, float %542, float %541)
  %544 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 81, i64 1
  store float %543, ptr %544, align 4, !tbaa !50
  %545 = load float, ptr %482, align 4, !tbaa !50
  %546 = load float, ptr %484, align 4, !tbaa !50
  %547 = fmul float %546, %531
  %548 = call float @llvm.fmuladd.f32(float %528, float %545, float %547)
  %549 = load float, ptr %488, align 4, !tbaa !50
  %550 = call float @llvm.fmuladd.f32(float %535, float %549, float %548)
  %551 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 81, i64 2
  store float %550, ptr %551, align 4, !tbaa !50
  br label %552

552:                                              ; preds = %458, %495, %454
  %553 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 70
  %554 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %12, i64 0, i32 12
  %555 = load float, ptr %554, align 4, !tbaa !50
  store float %555, ptr %553, align 4, !tbaa !50
  %556 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %12, i64 0, i32 12, i64 1
  %557 = load float, ptr %556, align 4, !tbaa !50
  %558 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 70, i64 1
  store float %557, ptr %558, align 4, !tbaa !50
  %559 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %12, i64 0, i32 12, i64 2
  %560 = load float, ptr %559, align 4, !tbaa !50
  %561 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 70, i64 2
  store float %560, ptr %561, align 4, !tbaa !50
  br label %562

562:                                              ; preds = %552, %451
  %563 = and i32 %448, 8
  %564 = icmp eq i32 %563, 0
  br i1 %564, label %597, label %565

565:                                              ; preds = %562
  %566 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 57
  %567 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29
  %568 = load float, ptr %567, align 4, !tbaa !50
  store float %568, ptr %566, align 4, !tbaa !50
  %569 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29, i64 1
  %570 = load float, ptr %569, align 4, !tbaa !50
  %571 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 57, i64 1
  store float %570, ptr %571, align 4, !tbaa !50
  %572 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29, i64 2
  %573 = load float, ptr %572, align 4, !tbaa !50
  %574 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 57, i64 2
  store float %573, ptr %574, align 4, !tbaa !50
  call void @mul_m4_v3(ptr noundef nonnull getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 33), ptr noundef nonnull %566) #11
  %575 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 15
  %576 = load i16, ptr %575, align 8, !tbaa !98
  %577 = icmp eq i16 %576, 0
  br i1 %577, label %597, label %578

578:                                              ; preds = %565
  %579 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 82
  %580 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 78
  %581 = load float, ptr %580, align 4, !tbaa !50
  store float %581, ptr %579, align 4, !tbaa !50
  %582 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 78, i64 1
  %583 = load float, ptr %582, align 4, !tbaa !50
  %584 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 82, i64 1
  store float %583, ptr %584, align 4, !tbaa !50
  %585 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 78, i64 2
  %586 = load float, ptr %585, align 4, !tbaa !50
  %587 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 82, i64 2
  store float %586, ptr %587, align 4, !tbaa !50
  call void @mul_mat3_m4_v3(ptr noundef nonnull getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 33), ptr noundef nonnull %579) #11
  %588 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 83
  %589 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 79
  %590 = load float, ptr %589, align 4, !tbaa !50
  store float %590, ptr %588, align 4, !tbaa !50
  %591 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 79, i64 1
  %592 = load float, ptr %591, align 4, !tbaa !50
  %593 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 83, i64 1
  store float %592, ptr %593, align 4, !tbaa !50
  %594 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 79, i64 2
  %595 = load float, ptr %594, align 4, !tbaa !50
  %596 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 83, i64 2
  store float %595, ptr %596, align 4, !tbaa !50
  call void @mul_mat3_m4_v3(ptr noundef nonnull getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 33), ptr noundef nonnull %588) #11
  br label %597

597:                                              ; preds = %565, %578, %562
  %598 = and i32 %448, 8192
  %599 = icmp eq i32 %598, 0
  br i1 %599, label %639, label %600

600:                                              ; preds = %597
  %601 = getelementptr inbounds %struct.VertRen, ptr %20, i64 0, i32 4
  %602 = load float, ptr %601, align 4, !tbaa !160
  %603 = getelementptr inbounds %struct.VertRen, ptr %16, i64 0, i32 4
  %604 = load float, ptr %603, align 4, !tbaa !160
  %605 = fneg float %22
  %606 = fmul float %604, %605
  %607 = call float @llvm.fmuladd.f32(float %26, float %602, float %606)
  %608 = getelementptr inbounds %struct.VertRen, ptr %18, i64 0, i32 4
  %609 = load float, ptr %608, align 4, !tbaa !160
  %610 = fneg float %24
  %611 = call float @llvm.fmuladd.f32(float %610, float %609, float %607)
  %612 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 64
  store float %611, ptr %612, align 4, !tbaa !126
  %613 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 15
  %614 = load i16, ptr %613, align 8, !tbaa !98
  %615 = icmp eq i16 %614, 0
  br i1 %615, label %639, label %616

616:                                              ; preds = %600
  %617 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 25
  %618 = load float, ptr %617, align 8, !tbaa !153
  %619 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 26
  %620 = load float, ptr %619, align 4, !tbaa !154
  %621 = fadd float %618, %620
  %622 = fneg float %618
  %623 = fmul float %604, %622
  %624 = call float @llvm.fmuladd.f32(float %621, float %602, float %623)
  %625 = fneg float %620
  %626 = call float @llvm.fmuladd.f32(float %625, float %609, float %624)
  %627 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 98
  store float %626, ptr %627, align 8, !tbaa !128
  %628 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 27
  %629 = load float, ptr %628, align 8, !tbaa !155
  %630 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 28
  %631 = load float, ptr %630, align 4, !tbaa !156
  %632 = fadd float %629, %631
  %633 = fneg float %629
  %634 = fmul float %604, %633
  %635 = call float @llvm.fmuladd.f32(float %632, float %602, float %634)
  %636 = fneg float %631
  %637 = call float @llvm.fmuladd.f32(float %636, float %609, float %635)
  %638 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 99
  store float %637, ptr %638, align 4, !tbaa !129
  br label %639

639:                                              ; preds = %600, %616, %597
  %640 = and i32 %448, 16
  %641 = icmp eq i32 %640, 0
  %642 = and i32 %28, 2192
  %643 = icmp eq i32 %642, 0
  %644 = select i1 %641, i1 %643, i1 false
  br i1 %644, label %645, label %649

645:                                              ; preds = %639
  %646 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 4), align 8, !tbaa !157
  %647 = and i16 %646, 256
  %648 = icmp eq i16 %647, 0
  br i1 %648, label %1097, label %649

649:                                              ; preds = %645, %639
  %650 = load ptr, ptr %32, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  %651 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 11
  %652 = load i16, ptr %651, align 8, !tbaa !92
  %653 = sext i16 %652 to i32
  %654 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 12
  %655 = load i16, ptr %654, align 2, !tbaa !93
  %656 = sext i16 %655 to i32
  %657 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 13
  %658 = load i16, ptr %657, align 4, !tbaa !94
  %659 = sext i16 %658 to i32
  %660 = getelementptr inbounds %struct.VlakRen, ptr %650, i64 0, i32 7
  %661 = load i8, ptr %660, align 1, !tbaa !80
  %662 = zext i8 %661 to i32
  %663 = and i32 %662, 32
  %664 = icmp eq i32 %663, 0
  %665 = and i32 %662, 16
  %666 = icmp eq i32 %665, 0
  br i1 %664, label %674, label %667

667:                                              ; preds = %649
  br i1 %666, label %672, label %668

668:                                              ; preds = %667
  %669 = add nsw i32 %653, 1
  %670 = add nsw i32 %656, 1
  %671 = add nsw i32 %659, 1
  br label %678

672:                                              ; preds = %667
  %673 = add nsw i32 %659, 1
  br label %678

674:                                              ; preds = %649
  br i1 %666, label %678, label %675

675:                                              ; preds = %674
  %676 = add nsw i32 %656, 1
  %677 = add nsw i32 %659, 1
  br label %678

678:                                              ; preds = %668, %672, %674, %675
  %679 = phi i32 [ %653, %674 ], [ %653, %675 ], [ %653, %672 ], [ %669, %668 ]
  %680 = phi i32 [ %656, %674 ], [ %676, %675 ], [ %656, %672 ], [ %670, %668 ]
  %681 = phi i32 [ %659, %674 ], [ %677, %675 ], [ %673, %672 ], [ %671, %668 ]
  %682 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 74
  store i32 0, ptr %682, align 8, !tbaa !130
  %683 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 75
  store i32 0, ptr %683, align 4, !tbaa !131
  %684 = getelementptr inbounds %struct.ObjectRen, ptr %14, i64 0, i32 25
  %685 = load i32, ptr %684, align 8, !tbaa !132
  %686 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 76
  store i32 %685, ptr %686, align 8, !tbaa !133
  %687 = getelementptr inbounds %struct.ObjectRen, ptr %14, i64 0, i32 26
  %688 = load i32, ptr %687, align 4, !tbaa !134
  %689 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 77
  store i32 %688, ptr %689, align 4, !tbaa !135
  %690 = and i32 %28, 144
  %691 = icmp eq i32 %690, 0
  br i1 %691, label %692, label %696

692:                                              ; preds = %678
  %693 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 4), align 8, !tbaa !157
  %694 = and i16 %693, 256
  %695 = icmp eq i16 %694, 0
  br i1 %695, label %814, label %696

696:                                              ; preds = %692, %678
  %697 = call ptr @RE_vlakren_get_mcol(ptr noundef %14, ptr noundef %650, i32 noundef 0, ptr noundef nonnull %5, i32 noundef 0) #11
  %698 = icmp eq ptr %697, null
  br i1 %698, label %790, label %699

699:                                              ; preds = %696
  %700 = sext i32 %679 to i64
  %701 = sext i32 %680 to i64
  %702 = sext i32 %681 to i64
  %703 = fneg float %22
  %704 = fneg float %24
  br label %705

705:                                              ; preds = %699, %785
  %706 = phi i64 [ 0, %699 ], [ %786, %785 ]
  %707 = phi ptr [ %697, %699 ], [ %788, %785 ]
  %708 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 73, i64 %706
  %709 = load i32, ptr %683, align 4, !tbaa !131
  %710 = add nsw i32 %709, 1
  store i32 %710, ptr %683, align 4, !tbaa !131
  %711 = load ptr, ptr %5, align 8, !tbaa !88
  %712 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 73, i64 %706, i32 1
  store ptr %711, ptr %712, align 8, !tbaa !136
  %713 = getelementptr inbounds %struct.MCol, ptr %707, i64 %700
  %714 = getelementptr inbounds %struct.MCol, ptr %707, i64 %701
  %715 = getelementptr inbounds %struct.MCol, ptr %707, i64 %702
  %716 = load i8, ptr %713, align 1, !tbaa !138
  %717 = uitofp i8 %716 to float
  %718 = fdiv float %717, 2.550000e+02
  %719 = load i8, ptr %714, align 1, !tbaa !138
  %720 = uitofp i8 %719 to float
  %721 = fdiv float %720, 2.550000e+02
  %722 = load i8, ptr %715, align 1, !tbaa !138
  %723 = uitofp i8 %722 to float
  %724 = fdiv float %723, 2.550000e+02
  %725 = fmul float %718, %703
  %726 = call float @llvm.fmuladd.f32(float %26, float %724, float %725)
  %727 = call float @llvm.fmuladd.f32(float %704, float %721, float %726)
  %728 = getelementptr inbounds [4 x float], ptr %708, i64 0, i64 3
  store float %727, ptr %728, align 4, !tbaa !50
  %729 = getelementptr inbounds i8, ptr %715, i64 3
  %730 = load i8, ptr %729, align 1, !tbaa !138
  %731 = uitofp i8 %730 to float
  %732 = fmul float %26, %731
  %733 = getelementptr inbounds i8, ptr %713, i64 3
  %734 = load i8, ptr %733, align 1, !tbaa !138
  %735 = uitofp i8 %734 to float
  %736 = fmul float %703, %735
  %737 = fmul float %718, %736
  %738 = call float @llvm.fmuladd.f32(float %732, float %724, float %737)
  %739 = getelementptr inbounds i8, ptr %714, i64 3
  %740 = load i8, ptr %739, align 1, !tbaa !138
  %741 = uitofp i8 %740 to float
  %742 = fmul float %704, %741
  %743 = call float @llvm.fmuladd.f32(float %742, float %721, float %738)
  %744 = fdiv float %743, 2.550000e+02
  store float %744, ptr %708, align 8, !tbaa !50
  %745 = getelementptr inbounds i8, ptr %715, i64 2
  %746 = load i8, ptr %745, align 1, !tbaa !138
  %747 = uitofp i8 %746 to float
  %748 = fmul float %26, %747
  %749 = getelementptr inbounds i8, ptr %713, i64 2
  %750 = load i8, ptr %749, align 1, !tbaa !138
  %751 = uitofp i8 %750 to float
  %752 = fmul float %703, %751
  %753 = fmul float %718, %752
  %754 = call float @llvm.fmuladd.f32(float %748, float %724, float %753)
  %755 = getelementptr inbounds i8, ptr %714, i64 2
  %756 = load i8, ptr %755, align 1, !tbaa !138
  %757 = uitofp i8 %756 to float
  %758 = fmul float %704, %757
  %759 = call float @llvm.fmuladd.f32(float %758, float %721, float %754)
  %760 = fdiv float %759, 2.550000e+02
  %761 = getelementptr inbounds [4 x float], ptr %708, i64 0, i64 1
  store float %760, ptr %761, align 4, !tbaa !50
  %762 = getelementptr inbounds i8, ptr %715, i64 1
  %763 = load i8, ptr %762, align 1, !tbaa !138
  %764 = uitofp i8 %763 to float
  %765 = fmul float %26, %764
  %766 = getelementptr inbounds i8, ptr %713, i64 1
  %767 = load i8, ptr %766, align 1, !tbaa !138
  %768 = uitofp i8 %767 to float
  %769 = fmul float %703, %768
  %770 = fmul float %718, %769
  %771 = call float @llvm.fmuladd.f32(float %765, float %724, float %770)
  %772 = getelementptr inbounds i8, ptr %714, i64 1
  %773 = load i8, ptr %772, align 1, !tbaa !138
  %774 = uitofp i8 %773 to float
  %775 = fmul float %704, %774
  %776 = call float @llvm.fmuladd.f32(float %775, float %721, float %771)
  %777 = fdiv float %776, 2.550000e+02
  %778 = getelementptr inbounds [4 x float], ptr %708, i64 0, i64 2
  store float %777, ptr %778, align 8, !tbaa !50
  %779 = fcmp une float %727, 0.000000e+00
  br i1 %779, label %780, label %785

780:                                              ; preds = %705
  %781 = fdiv float 1.000000e+00, %727
  %782 = fmul float %781, %744
  store float %782, ptr %708, align 4, !tbaa !50
  %783 = fmul float %781, %760
  store float %783, ptr %761, align 4, !tbaa !50
  %784 = fmul float %781, %777
  store float %784, ptr %778, align 4, !tbaa !50
  br label %785

785:                                              ; preds = %780, %705
  %786 = add nuw i64 %706, 1
  %787 = trunc i64 %786 to i32
  %788 = call ptr @RE_vlakren_get_mcol(ptr noundef %14, ptr noundef %650, i32 noundef %787, ptr noundef nonnull %5, i32 noundef 0) #11
  %789 = icmp eq ptr %788, null
  br i1 %789, label %790, label %705, !llvm.loop !161

790:                                              ; preds = %785, %696
  %791 = load i32, ptr %683, align 4, !tbaa !131
  %792 = icmp eq i32 %791, 0
  br i1 %792, label %807, label %793

793:                                              ; preds = %790
  %794 = load i32, ptr %689, align 4, !tbaa !135
  %795 = sext i32 %794 to i64
  %796 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 73, i64 %795
  %797 = load float, ptr %796, align 8, !tbaa !50
  %798 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61
  store float %797, ptr %798, align 8, !tbaa !50
  %799 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 73, i64 %795, i32 0, i64 1
  %800 = load float, ptr %799, align 4, !tbaa !50
  %801 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61, i64 1
  store float %800, ptr %801, align 4, !tbaa !50
  %802 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 73, i64 %795, i32 0, i64 2
  %803 = load float, ptr %802, align 8, !tbaa !50
  %804 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61, i64 2
  store float %803, ptr %804, align 8, !tbaa !50
  %805 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 73, i64 %795, i32 0, i64 3
  %806 = load float, ptr %805, align 4, !tbaa !50
  br label %811

807:                                              ; preds = %790
  %808 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61
  store float 0.000000e+00, ptr %808, align 8, !tbaa !50
  %809 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61, i64 1
  store float 0.000000e+00, ptr %809, align 4, !tbaa !50
  %810 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61, i64 2
  store float 0.000000e+00, ptr %810, align 8, !tbaa !50
  br label %811

811:                                              ; preds = %807, %793
  %812 = phi float [ %806, %793 ], [ 1.000000e+00, %807 ]
  %813 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61, i64 3
  store float %812, ptr %813, align 4, !tbaa !50
  br label %814

814:                                              ; preds = %811, %692
  %815 = call ptr @RE_vlakren_get_tface(ptr noundef %14, ptr noundef %650, i32 noundef 0, ptr noundef nonnull %5, i32 noundef 0) #11
  %816 = icmp eq ptr %815, null
  br i1 %816, label %1069, label %817

817:                                              ; preds = %814
  %818 = sext i32 %679 to i64
  %819 = sext i32 %680 to i64
  %820 = sext i32 %681 to i64
  %821 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 108
  %822 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 103
  %823 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 104
  %824 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %12, i64 0, i32 8
  %825 = getelementptr inbounds [4 x float], ptr %10, i64 0, i64 3
  %826 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 3
  %827 = getelementptr inbounds [4 x float], ptr %10, i64 0, i64 1
  %828 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 1
  %829 = getelementptr inbounds [4 x float], ptr %9, i64 0, i64 3
  %830 = getelementptr inbounds [4 x float], ptr %9, i64 0, i64 1
  %831 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 15
  %832 = fneg float %22
  %833 = fneg float %24
  %834 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 15
  %835 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 25
  %836 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 26
  %837 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 27
  %838 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 28
  %839 = and i32 %28, 2048
  %840 = icmp eq i32 %839, 0
  %841 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61
  %842 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61, i64 1
  %843 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61, i64 2
  %844 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61, i64 3
  br label %845

845:                                              ; preds = %817, %1064
  %846 = phi i64 [ 0, %817 ], [ %1065, %1064 ]
  %847 = phi ptr [ %815, %817 ], [ %1067, %1064 ]
  %848 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 72, i64 %846
  %849 = getelementptr inbounds [4 x [2 x float]], ptr %847, i64 0, i64 %818
  %850 = getelementptr inbounds [4 x [2 x float]], ptr %847, i64 0, i64 %819
  %851 = getelementptr inbounds [4 x [2 x float]], ptr %847, i64 0, i64 %820
  %852 = load i32, ptr %682, align 8, !tbaa !130
  %853 = add nsw i32 %852, 1
  store i32 %853, ptr %682, align 8, !tbaa !130
  %854 = load ptr, ptr %5, align 8, !tbaa !88
  %855 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 72, i64 %846, i32 3
  store ptr %854, ptr %855, align 8, !tbaa !140
  %856 = load ptr, ptr %0, align 8, !tbaa !34
  %857 = getelementptr inbounds %struct.Material, ptr %856, i64 0, i32 81
  %858 = load i8, ptr %857, align 2, !tbaa !162
  %859 = and i8 %858, 1
  %860 = icmp eq i8 %859, 0
  br i1 %860, label %983, label %861

861:                                              ; preds = %845
  %862 = load i32, ptr %821, align 8, !tbaa !51
  %863 = icmp eq i32 %862, 0
  br i1 %863, label %864, label %983

864:                                              ; preds = %861
  %865 = load i32, ptr %822, align 4, !tbaa !114
  %866 = sitofp i32 %865 to float
  %867 = load i32, ptr %823, align 8, !tbaa !116
  %868 = sitofp i32 %867 to float
  %869 = load float, ptr %849, align 4, !tbaa !50
  %870 = call float @llvm.fmuladd.f32(float %869, float 2.000000e+00, float -1.000000e+00)
  %871 = getelementptr inbounds float, ptr %849, i64 1
  %872 = load float, ptr %871, align 4, !tbaa !50
  %873 = call float @llvm.fmuladd.f32(float %872, float 2.000000e+00, float -1.000000e+00)
  %874 = load float, ptr %850, align 4, !tbaa !50
  %875 = call float @llvm.fmuladd.f32(float %874, float 2.000000e+00, float -1.000000e+00)
  %876 = getelementptr inbounds float, ptr %850, i64 1
  %877 = load float, ptr %876, align 4, !tbaa !50
  %878 = call float @llvm.fmuladd.f32(float %877, float 2.000000e+00, float -1.000000e+00)
  %879 = load float, ptr %851, align 4, !tbaa !50
  %880 = call float @llvm.fmuladd.f32(float %879, float 2.000000e+00, float -1.000000e+00)
  %881 = getelementptr inbounds float, ptr %851, i64 1
  %882 = load float, ptr %881, align 4, !tbaa !50
  %883 = call float @llvm.fmuladd.f32(float %882, float 2.000000e+00, float -1.000000e+00)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #11
  %884 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 13), align 4, !tbaa !144
  %885 = sitofp i32 %884 to float
  %886 = fmul float %885, 5.000000e-01
  %887 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 14), align 8, !tbaa !145
  %888 = sitofp i32 %887 to float
  %889 = fmul float %888, 5.000000e-01
  call void @zbuf_make_winmat(ptr noundef nonnull @R, ptr noundef nonnull %7) #11
  %890 = load ptr, ptr %11, align 8, !tbaa !84
  %891 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %890, i64 0, i32 11
  %892 = load i16, ptr %891, align 8, !tbaa !103
  %893 = and i16 %892, 3
  %894 = icmp eq i16 %893, 0
  br i1 %894, label %896, label %895

895:                                              ; preds = %864
  call void @mul_m4_m4m4(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %824) #11
  br label %897

896:                                              ; preds = %864
  call void @copy_m4_m4(ptr noundef nonnull %6, ptr noundef nonnull %7) #11
  br label %897

897:                                              ; preds = %896, %895
  call void @zbuf_render_project(ptr noundef nonnull %6, ptr noundef %16, ptr noundef nonnull %8) #11
  call void @zbuf_render_project(ptr noundef nonnull %6, ptr noundef %18, ptr noundef nonnull %9) #11
  call void @zbuf_render_project(ptr noundef nonnull %6, ptr noundef %20, ptr noundef nonnull %10) #11
  %898 = load float, ptr %10, align 16, !tbaa !50
  %899 = load float, ptr %825, align 4, !tbaa !50
  %900 = fdiv float %898, %899
  %901 = load float, ptr %8, align 16, !tbaa !50
  %902 = load float, ptr %826, align 4, !tbaa !50
  %903 = fdiv float %901, %902
  %904 = fsub float %900, %903
  %905 = load float, ptr %827, align 4, !tbaa !50
  %906 = fdiv float %905, %899
  %907 = load float, ptr %828, align 4, !tbaa !50
  %908 = fdiv float %907, %902
  %909 = fsub float %906, %908
  %910 = load float, ptr %9, align 16, !tbaa !50
  %911 = load float, ptr %829, align 4, !tbaa !50
  %912 = fdiv float %910, %911
  %913 = fsub float %900, %912
  %914 = load float, ptr %830, align 4, !tbaa !50
  %915 = fdiv float %914, %911
  %916 = fsub float %906, %915
  %917 = fneg float %913
  %918 = fmul float %909, %917
  %919 = call float @llvm.fmuladd.f32(float %904, float %916, float %918)
  %920 = fcmp une float %919, 0.000000e+00
  %921 = fdiv float 1.000000e+00, %919
  %922 = select i1 %920, float %921, float 0.000000e+00
  %923 = fmul float %904, %922
  %924 = fmul float %909, %922
  %925 = fmul float %913, %922
  %926 = fmul float %916, %922
  %927 = fdiv float %866, %886
  %928 = fadd float %927, -1.000000e+00
  %929 = fdiv float %868, %889
  %930 = fadd float %929, -1.000000e+00
  %931 = fsub float %928, %900
  %932 = fsub float %930, %906
  %933 = fneg float %932
  %934 = fmul float %925, %933
  %935 = call float @llvm.fmuladd.f32(float %931, float %926, float %934)
  %936 = fneg float %931
  %937 = fmul float %924, %936
  %938 = call float @llvm.fmuladd.f32(float %932, float %923, float %937)
  %939 = fadd float %935, 1.000000e+00
  %940 = fadd float %938, %939
  %941 = fneg float %935
  %942 = fmul float %870, %941
  %943 = call float @llvm.fmuladd.f32(float %940, float %880, float %942)
  %944 = fneg float %938
  %945 = call float @llvm.fmuladd.f32(float %944, float %875, float %943)
  %946 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 72, i64 %846, i32 2
  store float %945, ptr %946, align 8, !tbaa !50
  %947 = fmul float %873, %941
  %948 = call float @llvm.fmuladd.f32(float %940, float %883, float %947)
  %949 = call float @llvm.fmuladd.f32(float %944, float %878, float %948)
  %950 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 72, i64 %846, i32 2, i64 1
  store float %949, ptr %950, align 4, !tbaa !50
  %951 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 72, i64 %846, i32 2, i64 2
  store float 0.000000e+00, ptr %951, align 8, !tbaa !50
  %952 = load i16, ptr %831, align 8, !tbaa !98
  %953 = icmp eq i16 %952, 0
  br i1 %953, label %982, label %954

954:                                              ; preds = %897
  %955 = fdiv float %926, %886
  %956 = fneg float %924
  %957 = fdiv float %956, %886
  %958 = fneg float %925
  %959 = fdiv float %958, %889
  %960 = fdiv float %923, %889
  %961 = fadd float %955, %957
  %962 = fneg float %955
  %963 = fmul float %870, %962
  %964 = call float @llvm.fmuladd.f32(float %961, float %880, float %963)
  %965 = fneg float %957
  %966 = call float @llvm.fmuladd.f32(float %965, float %875, float %964)
  store float %966, ptr %848, align 8, !tbaa !50
  %967 = fmul float %873, %962
  %968 = call float @llvm.fmuladd.f32(float %961, float %883, float %967)
  %969 = call float @llvm.fmuladd.f32(float %965, float %878, float %968)
  %970 = getelementptr inbounds [3 x float], ptr %848, i64 0, i64 1
  store float %969, ptr %970, align 4, !tbaa !50
  %971 = fadd float %959, %960
  %972 = fneg float %959
  %973 = fmul float %870, %972
  %974 = call float @llvm.fmuladd.f32(float %971, float %880, float %973)
  %975 = fneg float %960
  %976 = call float @llvm.fmuladd.f32(float %975, float %875, float %974)
  %977 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 72, i64 %846, i32 1
  store float %976, ptr %977, align 4, !tbaa !50
  %978 = fmul float %873, %972
  %979 = call float @llvm.fmuladd.f32(float %971, float %883, float %978)
  %980 = call float @llvm.fmuladd.f32(float %975, float %878, float %979)
  %981 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 72, i64 %846, i32 1, i64 1
  store float %980, ptr %981, align 4, !tbaa !50
  br label %982

982:                                              ; preds = %954, %897
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #11
  br label %1064

983:                                              ; preds = %861, %845
  %984 = load float, ptr %851, align 4, !tbaa !50
  %985 = load float, ptr %849, align 4, !tbaa !50
  %986 = fmul float %985, %832
  %987 = call float @llvm.fmuladd.f32(float %26, float %984, float %986)
  %988 = load float, ptr %850, align 4, !tbaa !50
  %989 = call float @llvm.fmuladd.f32(float %833, float %988, float %987)
  %990 = call float @llvm.fmuladd.f32(float %989, float 2.000000e+00, float -1.000000e+00)
  %991 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 72, i64 %846, i32 2
  store float %990, ptr %991, align 8, !tbaa !50
  %992 = getelementptr inbounds float, ptr %851, i64 1
  %993 = load float, ptr %992, align 4, !tbaa !50
  %994 = getelementptr inbounds float, ptr %849, i64 1
  %995 = load float, ptr %994, align 4, !tbaa !50
  %996 = fmul float %995, %832
  %997 = call float @llvm.fmuladd.f32(float %26, float %993, float %996)
  %998 = getelementptr inbounds float, ptr %850, i64 1
  %999 = load float, ptr %998, align 4, !tbaa !50
  %1000 = call float @llvm.fmuladd.f32(float %833, float %999, float %997)
  %1001 = call float @llvm.fmuladd.f32(float %1000, float 2.000000e+00, float -1.000000e+00)
  %1002 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 72, i64 %846, i32 2, i64 1
  store float %1001, ptr %1002, align 4, !tbaa !50
  %1003 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 72, i64 %846, i32 2, i64 2
  store float 0.000000e+00, ptr %1003, align 8, !tbaa !50
  %1004 = load i16, ptr %834, align 8, !tbaa !98
  %1005 = icmp eq i16 %1004, 0
  br i1 %1005, label %1048, label %1006

1006:                                             ; preds = %983
  %1007 = load float, ptr %835, align 8, !tbaa !153
  %1008 = load float, ptr %836, align 4, !tbaa !154
  %1009 = fadd float %1007, %1008
  %1010 = load float, ptr %851, align 4, !tbaa !50
  %1011 = load float, ptr %849, align 4, !tbaa !50
  %1012 = fneg float %1007
  %1013 = fmul float %1011, %1012
  %1014 = call float @llvm.fmuladd.f32(float %1009, float %1010, float %1013)
  %1015 = load float, ptr %850, align 4, !tbaa !50
  %1016 = fneg float %1008
  %1017 = call float @llvm.fmuladd.f32(float %1016, float %1015, float %1014)
  %1018 = fmul float %1017, 2.000000e+00
  store float %1018, ptr %848, align 8, !tbaa !50
  %1019 = load float, ptr %992, align 4, !tbaa !50
  %1020 = load float, ptr %994, align 4, !tbaa !50
  %1021 = fmul float %1020, %1012
  %1022 = call float @llvm.fmuladd.f32(float %1009, float %1019, float %1021)
  %1023 = load float, ptr %998, align 4, !tbaa !50
  %1024 = call float @llvm.fmuladd.f32(float %1016, float %1023, float %1022)
  %1025 = fmul float %1024, 2.000000e+00
  %1026 = getelementptr inbounds [3 x float], ptr %848, i64 0, i64 1
  store float %1025, ptr %1026, align 4, !tbaa !50
  %1027 = load float, ptr %837, align 8, !tbaa !155
  %1028 = load float, ptr %838, align 4, !tbaa !156
  %1029 = fadd float %1027, %1028
  %1030 = load float, ptr %851, align 4, !tbaa !50
  %1031 = load float, ptr %849, align 4, !tbaa !50
  %1032 = fneg float %1027
  %1033 = fmul float %1031, %1032
  %1034 = call float @llvm.fmuladd.f32(float %1029, float %1030, float %1033)
  %1035 = load float, ptr %850, align 4, !tbaa !50
  %1036 = fneg float %1028
  %1037 = call float @llvm.fmuladd.f32(float %1036, float %1035, float %1034)
  %1038 = fmul float %1037, 2.000000e+00
  %1039 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 72, i64 %846, i32 1
  store float %1038, ptr %1039, align 4, !tbaa !50
  %1040 = load float, ptr %992, align 4, !tbaa !50
  %1041 = load float, ptr %994, align 4, !tbaa !50
  %1042 = fmul float %1041, %1032
  %1043 = call float @llvm.fmuladd.f32(float %1029, float %1040, float %1042)
  %1044 = load float, ptr %998, align 4, !tbaa !50
  %1045 = call float @llvm.fmuladd.f32(float %1036, float %1044, float %1043)
  %1046 = fmul float %1045, 2.000000e+00
  %1047 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 72, i64 %846, i32 1, i64 1
  store float %1046, ptr %1047, align 4, !tbaa !50
  br label %1048

1048:                                             ; preds = %1006, %983
  br i1 %840, label %1064, label %1049

1049:                                             ; preds = %1048
  %1050 = load i32, ptr %684, align 8, !tbaa !132
  %1051 = zext i32 %1050 to i64
  %1052 = icmp eq i64 %846, %1051
  br i1 %1052, label %1053, label %1064

1053:                                             ; preds = %1049
  br i1 %691, label %1054, label %1059

1054:                                             ; preds = %1053
  %1055 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 4), align 8, !tbaa !157
  %1056 = and i16 %1055, 256
  %1057 = icmp eq i16 %1056, 0
  br i1 %1057, label %1058, label %1059

1058:                                             ; preds = %1054
  store float 1.000000e+00, ptr %841, align 8, !tbaa !50
  store float 1.000000e+00, ptr %842, align 4, !tbaa !50
  store float 1.000000e+00, ptr %843, align 8, !tbaa !50
  store float 1.000000e+00, ptr %844, align 4, !tbaa !50
  br label %1059

1059:                                             ; preds = %1058, %1054, %1053
  %1060 = getelementptr inbounds %struct.MTFace, ptr %847, i64 0, i32 1
  %1061 = load ptr, ptr %1060, align 8, !tbaa !163
  %1062 = icmp eq ptr %1061, null
  br i1 %1062, label %1064, label %1063

1063:                                             ; preds = %1059
  call void @render_realtime_texture(ptr noundef %0, ptr noundef nonnull %1061) #11
  br label %1064

1064:                                             ; preds = %1048, %1049, %1063, %1059, %982
  %1065 = add nuw i64 %846, 1
  %1066 = trunc i64 %1065 to i32
  %1067 = call ptr @RE_vlakren_get_tface(ptr noundef %14, ptr noundef %650, i32 noundef %1066, ptr noundef nonnull %5, i32 noundef 0) #11
  %1068 = icmp eq ptr %1067, null
  br i1 %1068, label %1069, label %845, !llvm.loop !165

1069:                                             ; preds = %1064, %814
  %1070 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %12, i64 0, i32 13
  %1071 = load float, ptr %1070, align 8, !tbaa !50
  %1072 = call float @llvm.fmuladd.f32(float %1071, float 2.000000e+00, float -1.000000e+00)
  %1073 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 71
  store float %1072, ptr %1073, align 8, !tbaa !50
  %1074 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %12, i64 0, i32 13, i64 1
  %1075 = load float, ptr %1074, align 4, !tbaa !50
  %1076 = call float @llvm.fmuladd.f32(float %1075, float 2.000000e+00, float -1.000000e+00)
  %1077 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 71, i64 1
  store float %1076, ptr %1077, align 4, !tbaa !50
  %1078 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 71, i64 2
  store float 0.000000e+00, ptr %1078, align 8, !tbaa !50
  %1079 = load i32, ptr %682, align 8, !tbaa !130
  %1080 = icmp eq i32 %1079, 0
  br i1 %1080, label %1081, label %1096

1081:                                             ; preds = %1069
  %1082 = fadd float %22, 5.000000e-01
  %1083 = fmul float %1082, 2.000000e+00
  %1084 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 72, i64 0, i32 2
  store float %1083, ptr %1084, align 8, !tbaa !50
  %1085 = fadd float %24, 5.000000e-01
  %1086 = fmul float %1085, 2.000000e+00
  %1087 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 72, i64 0, i32 2, i64 1
  store float %1086, ptr %1087, align 4, !tbaa !50
  %1088 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 72, i64 0, i32 2, i64 2
  store float 0.000000e+00, ptr %1088, align 8, !tbaa !50
  %1089 = and i32 %28, 2048
  %1090 = icmp eq i32 %1089, 0
  br i1 %1090, label %1096, label %1091

1091:                                             ; preds = %1081
  %1092 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61
  store float 1.000000e+00, ptr %1092, align 8, !tbaa !50
  %1093 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61, i64 1
  store float 1.000000e+00, ptr %1093, align 4, !tbaa !50
  %1094 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61, i64 2
  store float 1.000000e+00, ptr %1094, align 8, !tbaa !50
  %1095 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61, i64 3
  store float 1.000000e+00, ptr %1095, align 4, !tbaa !50
  br label %1096

1096:                                             ; preds = %1081, %1091, %1069
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %1097

1097:                                             ; preds = %1096, %645
  %1098 = and i32 %448, 4
  %1099 = icmp eq i32 %1098, 0
  br i1 %1099, label %1113, label %1100

1100:                                             ; preds = %1097
  %1101 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16
  %1102 = load float, ptr %1101, align 4, !tbaa !50
  %1103 = fneg float %1102
  %1104 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 59
  store float %1103, ptr %1104, align 8, !tbaa !50
  %1105 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 1
  %1106 = load float, ptr %1105, align 4, !tbaa !50
  %1107 = fneg float %1106
  %1108 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 59, i64 1
  store float %1107, ptr %1108, align 4, !tbaa !50
  %1109 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 2
  %1110 = load float, ptr %1109, align 4, !tbaa !50
  %1111 = fneg float %1110
  %1112 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 59, i64 2
  store float %1111, ptr %1112, align 8, !tbaa !50
  br label %1113

1113:                                             ; preds = %1100, %1097
  %1114 = and i32 %448, 16384
  %1115 = icmp eq i32 %1114, 0
  br i1 %1115, label %1142, label %1116

1116:                                             ; preds = %1113
  %1117 = call ptr @RE_vertren_get_stress(ptr noundef %14, ptr noundef %16, i32 noundef 0) #11
  %1118 = call ptr @RE_vertren_get_stress(ptr noundef %14, ptr noundef %18, i32 noundef 0) #11
  %1119 = call ptr @RE_vertren_get_stress(ptr noundef %14, ptr noundef %20, i32 noundef 0) #11
  %1120 = icmp ne ptr %1117, null
  %1121 = icmp ne ptr %1118, null
  %1122 = select i1 %1120, i1 %1121, i1 false
  %1123 = icmp ne ptr %1119, null
  %1124 = select i1 %1122, i1 %1123, i1 false
  br i1 %1124, label %1125, label %1140

1125:                                             ; preds = %1116
  %1126 = load float, ptr %1119, align 4, !tbaa !50
  %1127 = load float, ptr %1117, align 4, !tbaa !50
  %1128 = fneg float %22
  %1129 = fmul float %1127, %1128
  %1130 = call float @llvm.fmuladd.f32(float %26, float %1126, float %1129)
  %1131 = load float, ptr %1118, align 4, !tbaa !50
  %1132 = fneg float %24
  %1133 = call float @llvm.fmuladd.f32(float %1132, float %1131, float %1130)
  %1134 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 68
  store float %1133, ptr %1134, align 8, !tbaa !166
  %1135 = fcmp olt float %1133, 1.000000e+00
  %1136 = fadd float %1133, -1.000000e+00
  br i1 %1135, label %1137, label %1138

1137:                                             ; preds = %1125
  store float %1136, ptr %1134, align 8, !tbaa !166
  br label %1142

1138:                                             ; preds = %1125
  %1139 = fdiv float %1136, %1133
  store float %1139, ptr %1134, align 8, !tbaa !166
  br label %1142

1140:                                             ; preds = %1116
  %1141 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 68
  store float 0.000000e+00, ptr %1141, align 8, !tbaa !166
  br label %1142

1142:                                             ; preds = %1140, %1138, %1137, %1113
  %1143 = and i32 %448, 4096
  %1144 = icmp ne i32 %1143, 0
  %1145 = and i32 %28, 67108864
  %1146 = icmp eq i32 %1145, 0
  %1147 = select i1 %1144, i1 %1146, i1 false
  br i1 %1147, label %1148, label %1155

1148:                                             ; preds = %1142
  %1149 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 65
  %1150 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 65, i64 2
  store float 0.000000e+00, ptr %1150, align 8, !tbaa !50
  %1151 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 65, i64 1
  store float 0.000000e+00, ptr %1151, align 4, !tbaa !50
  store float 0.000000e+00, ptr %1149, align 8, !tbaa !50
  %1152 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 67
  %1153 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 67, i64 2
  store float 0.000000e+00, ptr %1153, align 8, !tbaa !50
  %1154 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 67, i64 1
  store float 0.000000e+00, ptr %1154, align 4, !tbaa !50
  store float 0.000000e+00, ptr %1152, align 8, !tbaa !50
  br label %1155

1155:                                             ; preds = %1142, %1148, %446
  %1156 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 108
  %1157 = load i32, ptr %1156, align 8, !tbaa !51
  %1158 = icmp ne i32 %1157, 0
  %1159 = and i32 %448, 1024
  %1160 = icmp eq i32 %1159, 0
  %1161 = or i1 %1160, %1158
  br i1 %1161, label %1194, label %1162

1162:                                             ; preds = %1155
  %1163 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 104
  %1164 = load i32, ptr %1163, align 8, !tbaa !116
  %1165 = sitofp i32 %1164 to float
  %1166 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 103
  %1167 = load i32, ptr %1166, align 4, !tbaa !114
  %1168 = sitofp i32 %1167 to float
  %1169 = fmul float %1168, 2.000000e+00
  %1170 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 13), align 4, !tbaa !144
  %1171 = sitofp i32 %1170 to float
  %1172 = fdiv float %1169, %1171
  %1173 = fadd float %1172, -1.000000e+00
  %1174 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 60
  store float %1173, ptr %1174, align 4, !tbaa !50
  %1175 = fmul float %1165, 2.000000e+00
  %1176 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 14), align 8, !tbaa !145
  %1177 = sitofp i32 %1176 to float
  %1178 = fdiv float %1175, %1177
  %1179 = fadd float %1178, -1.000000e+00
  %1180 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 60, i64 1
  store float %1179, ptr %1180, align 4, !tbaa !50
  %1181 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 60, i64 2
  store float 0.000000e+00, ptr %1181, align 4, !tbaa !50
  %1182 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 15
  %1183 = load i16, ptr %1182, align 8, !tbaa !98
  %1184 = icmp eq i16 %1183, 0
  br i1 %1184, label %1194, label %1185

1185:                                             ; preds = %1162
  %1186 = fdiv float 2.000000e+00, %1171
  %1187 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 94
  store float %1186, ptr %1187, align 8, !tbaa !50
  %1188 = fdiv float 2.000000e+00, %1177
  %1189 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 95
  %1190 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 95, i64 1
  store float %1188, ptr %1190, align 4, !tbaa !50
  %1191 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 94, i64 2
  store float 0.000000e+00, ptr %1191, align 8, !tbaa !50
  %1192 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 94, i64 1
  store float 0.000000e+00, ptr %1192, align 4, !tbaa !50
  %1193 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 95, i64 2
  store float 0.000000e+00, ptr %1193, align 4, !tbaa !50
  store float 0.000000e+00, ptr %1189, align 4, !tbaa !50
  br label %1194

1194:                                             ; preds = %1185, %1162, %1155
  %1195 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 113
  %1196 = load i8, ptr %1195, align 1, !tbaa !146
  %1197 = icmp eq i8 %1196, 0
  br i1 %1197, label %1215, label %1198

1198:                                             ; preds = %1194
  %1199 = and i32 %28, 2192
  %1200 = icmp eq i32 %1199, 0
  br i1 %1200, label %1201, label %1205

1201:                                             ; preds = %1198
  %1202 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 4), align 8, !tbaa !157
  %1203 = and i16 %1202, 256
  %1204 = icmp eq i16 %1203, 0
  br i1 %1204, label %1215, label %1205

1205:                                             ; preds = %1201, %1198
  %1206 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61
  %1207 = load float, ptr %1206, align 4, !tbaa !50
  %1208 = call float @srgb_to_linearrgb(float noundef %1207) #11
  store float %1208, ptr %1206, align 4, !tbaa !50
  %1209 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61, i64 1
  %1210 = load float, ptr %1209, align 4, !tbaa !50
  %1211 = call float @srgb_to_linearrgb(float noundef %1210) #11
  store float %1211, ptr %1209, align 4, !tbaa !50
  %1212 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61, i64 2
  %1213 = load float, ptr %1212, align 4, !tbaa !50
  %1214 = call float @srgb_to_linearrgb(float noundef %1213) #11
  store float %1214, ptr %1212, align 4, !tbaa !50
  br label %1215

1215:                                             ; preds = %1201, %1205, %1194
  ret void
}

declare ptr @RE_vertren_get_tangent(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @RE_vlakren_get_nmap_tangent(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @RE_vlakren_get_surfnor(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @RE_vertren_get_winspeed(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @RE_vlakren_get_mcol(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @RE_vlakren_get_tface(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @zbuf_make_winmat(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @zbuf_render_project(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @render_realtime_texture(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @RE_vertren_get_stress(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @shade_input_initialize(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #2 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1472) %0, i8 0, i64 1472, i1 false)
  %5 = trunc i32 %3 to i16
  %6 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 115
  store i16 %5, ptr %6, align 4, !tbaa !167
  %7 = getelementptr inbounds %struct.RenderPart, ptr %1, i64 0, i32 20
  %8 = load i16, ptr %7, align 2, !tbaa !168
  %9 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  store i16 %8, ptr %9, align 2, !tbaa !170
  %10 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 46), align 4, !tbaa !171
  %11 = trunc i32 %10 to i8
  %12 = lshr i8 %11, 5
  %13 = and i8 %12, 1
  %14 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 112
  store i8 %13, ptr %14, align 8, !tbaa !172
  %15 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 44), align 8, !tbaa !173
  %16 = tail call zeroext i8 @BKE_scene_check_color_management_enabled(ptr noundef %15) #11
  %17 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 113
  store i8 %16, ptr %17, align 1, !tbaa !146
  %18 = getelementptr inbounds %struct.RenderLayer, ptr %2, i64 0, i32 3
  %19 = load i32, ptr %18, align 4, !tbaa !174
  %20 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 117
  store i32 %19, ptr %20, align 8, !tbaa !176
  %21 = getelementptr inbounds %struct.RenderLayer, ptr %2, i64 0, i32 6
  %22 = load i32, ptr %21, align 8, !tbaa !177
  %23 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 118
  store i32 %22, ptr %23, align 4, !tbaa !72
  %24 = getelementptr inbounds %struct.RenderLayer, ptr %2, i64 0, i32 7
  %25 = load i32, ptr %24, align 4, !tbaa !178
  %26 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 119
  store i32 %25, ptr %26, align 8, !tbaa !52
  %27 = getelementptr inbounds %struct.RenderLayer, ptr %2, i64 0, i32 8
  %28 = load i32, ptr %27, align 8, !tbaa !179
  %29 = xor i32 %28, -1
  %30 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 120
  store i32 %29, ptr %30, align 4, !tbaa !180
  %31 = getelementptr inbounds %struct.RenderLayer, ptr %2, i64 0, i32 9
  %32 = load ptr, ptr %31, align 8, !tbaa !181
  %33 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 122
  store ptr %32, ptr %33, align 8, !tbaa !95
  %34 = getelementptr inbounds %struct.RenderLayer, ptr %2, i64 0, i32 10
  %35 = load ptr, ptr %34, align 8, !tbaa !182
  %36 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 121
  store ptr %35, ptr %36, align 8, !tbaa !183
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

declare zeroext i8 @BKE_scene_check_color_management_enabled(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @shade_sample_initialize(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2
  %5 = tail call i16 @llvm.umax.i16(i16 %4, i16 1)
  %6 = icmp sgt i16 %5, 0
  br i1 %6, label %7, label %47

7:                                                ; preds = %3
  %8 = zext nneg i16 %5 to i64
  %9 = getelementptr inbounds %struct.RenderPart, ptr %1, i64 0, i32 20
  %10 = getelementptr inbounds %struct.RenderLayer, ptr %2, i64 0, i32 3
  %11 = getelementptr inbounds %struct.RenderLayer, ptr %2, i64 0, i32 6
  %12 = getelementptr inbounds %struct.RenderLayer, ptr %2, i64 0, i32 7
  %13 = getelementptr inbounds %struct.RenderLayer, ptr %2, i64 0, i32 8
  %14 = getelementptr inbounds %struct.RenderLayer, ptr %2, i64 0, i32 9
  %15 = getelementptr inbounds %struct.RenderLayer, ptr %2, i64 0, i32 10
  br label %16

16:                                               ; preds = %7, %16
  %17 = phi i64 [ 0, %7 ], [ %45, %16 ]
  %18 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 %17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1472) %18, i8 0, i64 1472, i1 false)
  %19 = trunc i64 %17 to i16
  %20 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 %17, i32 115
  store i16 %19, ptr %20, align 4, !tbaa !167
  %21 = load i16, ptr %9, align 2, !tbaa !168
  %22 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 %17, i32 114
  store i16 %21, ptr %22, align 2, !tbaa !170
  %23 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 46), align 4, !tbaa !171
  %24 = trunc i32 %23 to i8
  %25 = lshr i8 %24, 5
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 %17, i32 112
  store i8 %26, ptr %27, align 8, !tbaa !172
  %28 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 44), align 8, !tbaa !173
  %29 = tail call zeroext i8 @BKE_scene_check_color_management_enabled(ptr noundef %28) #11
  %30 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 %17, i32 113
  store i8 %29, ptr %30, align 1, !tbaa !146
  %31 = load i32, ptr %10, align 4, !tbaa !174
  %32 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 %17, i32 117
  store i32 %31, ptr %32, align 8, !tbaa !176
  %33 = load i32, ptr %11, align 8, !tbaa !177
  %34 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 %17, i32 118
  store i32 %33, ptr %34, align 4, !tbaa !72
  %35 = load i32, ptr %12, align 4, !tbaa !178
  %36 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 %17, i32 119
  store i32 %35, ptr %36, align 8, !tbaa !52
  %37 = load i32, ptr %13, align 8, !tbaa !179
  %38 = xor i32 %37, -1
  %39 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 %17, i32 120
  store i32 %38, ptr %39, align 4, !tbaa !180
  %40 = load ptr, ptr %14, align 8, !tbaa !181
  %41 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 %17, i32 122
  store ptr %40, ptr %41, align 8, !tbaa !95
  %42 = load ptr, ptr %15, align 8, !tbaa !182
  %43 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 %17, i32 121
  store ptr %42, ptr %43, align 8, !tbaa !183
  %44 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 3, i64 %17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(212) %44, i8 0, i64 212, i1 false)
  %45 = add nuw nsw i64 %17, 1
  %46 = icmp eq i64 %45, %8
  br i1 %46, label %47, label %16, !llvm.loop !184

47:                                               ; preds = %16, %3
  %48 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 1
  %49 = tail call i32 @get_sample_layers(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %48) #11
  ret void
}

declare i32 @get_sample_layers(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @shade_samples_do_AO(ptr noundef %0) local_unnamed_addr #2 {
  %2 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !54
  %3 = and i32 %2, 2
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %46, label %5

5:                                                ; preds = %1
  %6 = and i32 %2, 65536
  %7 = icmp ne i32 %6, 0
  %8 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 64), align 2
  %9 = icmp eq i16 %8, 1
  %10 = select i1 %7, i1 true, i1 %9
  br i1 %10, label %11, label %46

11:                                               ; preds = %5
  %12 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 23), align 2, !tbaa !76
  %13 = and i16 %12, 208
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %46, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2
  %17 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 119
  %18 = load i32, ptr %17, align 8, !tbaa !52
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 120
  %23 = load i32, ptr %22, align 4, !tbaa !180
  %24 = or i32 %23, %18
  %25 = and i32 %24, 139328
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %46, label %30

27:                                               ; preds = %15
  %28 = and i32 %18, 139328
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %46, label %30

30:                                               ; preds = %27, %21
  %31 = load i32, ptr %0, align 8, !tbaa !185
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %30, %41
  %34 = phi i32 [ %43, %41 ], [ 0, %30 ]
  %35 = phi ptr [ %42, %41 ], [ %16, %30 ]
  %36 = getelementptr inbounds %struct.ShadeInput, ptr %35, i64 0, i32 21
  %37 = load i32, ptr %36, align 8, !tbaa !69
  %38 = and i32 %37, 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  tail call void @ambient_occlusion(ptr noundef nonnull %35) #11
  br label %41

41:                                               ; preds = %33, %40
  %42 = getelementptr inbounds %struct.ShadeInput, ptr %35, i64 1
  %43 = add nuw nsw i32 %34, 1
  %44 = load i32, ptr %0, align 8, !tbaa !185
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %33, label %46, !llvm.loop !187

46:                                               ; preds = %41, %30, %21, %27, %5, %1, %11
  ret void
}

declare void @ambient_occlusion(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @shade_samples_fill_with_ps(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  store i32 0, ptr %0, align 8, !tbaa !185
  %5 = getelementptr %struct.ShadeInput, ptr %0, i64 -1, i32 115
  %6 = icmp eq ptr %1, null
  br i1 %6, label %209, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, ptr %0, i64 136
  %9 = sitofp i32 %2 to float
  %10 = sitofp i32 %3 to float
  %11 = sitofp i32 %2 to float
  %12 = sitofp i32 %2 to float
  %13 = sitofp i32 %2 to float
  %14 = sitofp i32 %3 to float
  %15 = sitofp i32 %2 to float
  %16 = sitofp i32 %3 to float
  %17 = sitofp i32 %3 to float
  br label %18

18:                                               ; preds = %7, %204
  %19 = phi ptr [ %8, %7 ], [ %207, %204 ]
  %20 = phi ptr [ %1, %7 ], [ %206, %204 ]
  %21 = phi i64 [ 136, %7 ], [ %205, %204 ]
  %22 = getelementptr inbounds %struct.PixStr, ptr %20, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !188
  %24 = getelementptr inbounds %struct.PixStr, ptr %20, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !190
  tail call void @shade_input_set_triangle(ptr noundef nonnull %19, i32 noundef %23, i32 noundef %25, i32 poison)
  %26 = getelementptr inbounds %struct.ShadeInput, ptr %19, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !83
  %28 = icmp eq ptr %27, null
  br i1 %28, label %204, label %29

29:                                               ; preds = %18
  %30 = getelementptr inbounds %struct.PixStr, ptr %20, i64 0, i32 5
  %31 = load i16, ptr %30, align 8, !tbaa !191
  %32 = getelementptr inbounds %struct.VlakRen, ptr %27, i64 0, i32 7
  %33 = load i8, ptr %32, align 1, !tbaa !80
  %34 = and i8 %33, 8
  %35 = icmp eq i8 %34, 0
  %36 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !192
  br i1 %35, label %115, label %37

37:                                               ; preds = %29
  %38 = icmp sgt i16 %36, 0
  br i1 %38, label %39, label %196

39:                                               ; preds = %37
  %40 = zext i16 %31 to i32
  %41 = getelementptr inbounds %struct.PixStr, ptr %20, i64 0, i32 3
  br label %42

42:                                               ; preds = %39, %108
  %43 = phi i64 [ 0, %39 ], [ %111, %108 ]
  %44 = phi i16 [ 0, %39 ], [ %110, %108 ]
  %45 = phi i64 [ %21, %39 ], [ %109, %108 ]
  %46 = getelementptr inbounds i8, ptr %0, i64 %45
  %47 = trunc i64 %43 to i32
  %48 = shl nuw i32 1, %47
  %49 = and i32 %48, %40
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %108, label %51

51:                                               ; preds = %42
  %52 = getelementptr inbounds %struct.Render, ptr @R, i64 0, i32 39, i64 %43
  %53 = load float, ptr %52, align 8, !tbaa !50
  %54 = fadd float %53, %9
  %55 = fadd float %54, 5.000000e-01
  %56 = getelementptr inbounds %struct.Render, ptr @R, i64 0, i32 39, i64 %43, i64 1
  %57 = load float, ptr %56, align 4, !tbaa !50
  %58 = fadd float %57, %10
  %59 = fadd float %58, 5.000000e-01
  %60 = icmp eq i16 %44, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %51
  %62 = getelementptr inbounds %struct.ShadeInput, ptr %46, i64 -1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %46, ptr noundef nonnull align 8 dereferenceable(168) %62, i64 168, i1 false)
  br label %63

63:                                               ; preds = %61, %51
  %64 = getelementptr inbounds %struct.ShadeInput, ptr %46, i64 0, i32 105
  store i32 %48, ptr %64, align 4, !tbaa !193
  %65 = getelementptr inbounds %struct.ShadeInput, ptr %46, i64 0, i32 114
  %66 = load i16, ptr %65, align 2, !tbaa !170
  %67 = sext i16 %66 to i64
  %68 = getelementptr inbounds %struct.Render, ptr @R, i64 0, i32 42, i64 %67
  %69 = load i32, ptr %68, align 4, !tbaa !82
  %70 = add nsw i32 %69, 1
  store i32 %70, ptr %68, align 4, !tbaa !82
  %71 = getelementptr inbounds %struct.ShadeInput, ptr %46, i64 0, i32 107
  store i32 %69, ptr %71, align 4, !tbaa !194
  %72 = load i32, ptr %41, align 8, !tbaa !195
  %73 = sitofp i32 %72 to float
  %74 = fptosi float %55 to i32
  %75 = getelementptr inbounds %struct.ShadeInput, ptr %46, i64 0, i32 103
  store i32 %74, ptr %75, align 4, !tbaa !114
  %76 = fptosi float %59 to i32
  %77 = getelementptr inbounds %struct.ShadeInput, ptr %46, i64 0, i32 104
  store i32 %76, ptr %77, align 8, !tbaa !116
  %78 = getelementptr inbounds %struct.ShadeInput, ptr %46, i64 0, i32 106
  store float %9, ptr %78, align 8, !tbaa !50
  %79 = getelementptr inbounds %struct.ShadeInput, ptr %46, i64 0, i32 106, i64 1
  store float %10, ptr %79, align 4, !tbaa !50
  %80 = getelementptr inbounds %struct.ShadeInput, ptr %46, i64 0, i32 106, i64 2
  store float %73, ptr %80, align 8, !tbaa !50
  %81 = getelementptr inbounds %struct.ShadeInput, ptr %46, i64 0, i32 15
  %82 = load i16, ptr %81, align 8, !tbaa !98
  %83 = icmp eq i16 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %63
  %85 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !54
  %86 = and i32 %85, 2
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %98, label %88

88:                                               ; preds = %84, %63
  %89 = getelementptr inbounds %struct.ShadeInput, ptr %46, i64 0, i32 78
  %90 = getelementptr inbounds %struct.ShadeInput, ptr %46, i64 0, i32 79
  %91 = load ptr, ptr %46, align 8, !tbaa !34
  %92 = getelementptr inbounds %struct.Material, ptr %91, i64 0, i32 90
  %93 = load i16, ptr %92, align 4, !tbaa !97
  %94 = and i16 %93, 2
  %95 = icmp eq i16 %94, 0
  %96 = getelementptr inbounds %struct.ShadeInput, ptr %46, i64 0, i32 90
  %97 = select i1 %95, ptr null, ptr %96
  br label %98

98:                                               ; preds = %84, %88
  %99 = phi ptr [ null, %84 ], [ %97, %88 ]
  %100 = phi ptr [ null, %84 ], [ %89, %88 ]
  %101 = phi ptr [ null, %84 ], [ %90, %88 ]
  %102 = getelementptr inbounds %struct.ShadeInput, ptr %46, i64 0, i32 30
  %103 = getelementptr inbounds %struct.ShadeInput, ptr %46, i64 0, i32 29
  tail call void @shade_input_calc_viewco(ptr noundef nonnull %46, float noundef %55, float noundef %59, float noundef %73, ptr noundef nonnull %102, ptr noundef %99, ptr noundef nonnull %103, ptr noundef %100, ptr noundef %101)
  tail call void @shade_input_set_uv(ptr noundef nonnull %46)
  br i1 %60, label %104, label %105

104:                                              ; preds = %98
  tail call void @shade_input_set_normals(ptr noundef nonnull %46)
  br label %106

105:                                              ; preds = %98
  tail call void @shade_input_set_vertex_normals(ptr noundef nonnull %46)
  br label %106

106:                                              ; preds = %105, %104
  %107 = add nsw i64 %45, 1472
  br label %108

108:                                              ; preds = %42, %106
  %109 = phi i64 [ %107, %106 ], [ %45, %42 ]
  %110 = phi i16 [ 1, %106 ], [ %44, %42 ]
  %111 = add nuw nsw i64 %43, 1
  %112 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !192
  %113 = sext i16 %112 to i64
  %114 = icmp slt i64 %111, %113
  br i1 %114, label %42, label %196, !llvm.loop !196

115:                                              ; preds = %29
  %116 = icmp eq i16 %36, 0
  br i1 %116, label %133, label %117

117:                                              ; preds = %115
  %118 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 38), align 8, !tbaa !197
  %119 = getelementptr inbounds %struct.SampleTables, ptr %118, i64 0, i32 4
  %120 = load ptr, ptr %119, align 8, !tbaa !198
  %121 = zext i16 %31 to i64
  %122 = getelementptr inbounds i8, ptr %120, i64 %121
  %123 = load i8, ptr %122, align 1, !tbaa !138
  %124 = zext i8 %123 to i32
  %125 = and i32 %124, 15
  %126 = zext nneg i32 %125 to i64
  %127 = getelementptr inbounds [16 x float], ptr %118, i64 0, i64 %126
  %128 = load float, ptr %127, align 4, !tbaa !50
  %129 = fadd float %128, %11
  %130 = lshr i32 %124, 4
  %131 = zext nneg i32 %130 to i64
  %132 = getelementptr inbounds [16 x float], ptr %118, i64 0, i64 %131
  br label %143

133:                                              ; preds = %115
  %134 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 98, i32 8), align 2, !tbaa !200
  %135 = icmp eq i16 %134, 0
  br i1 %135, label %148, label %136

136:                                              ; preds = %133
  %137 = sext i16 %134 to i64
  %138 = add nsw i64 %137, -1
  %139 = getelementptr inbounds %struct.Render, ptr @R, i64 0, i32 40, i64 %138
  %140 = load float, ptr %139, align 8, !tbaa !50
  %141 = fadd float %140, %12
  %142 = getelementptr inbounds %struct.Render, ptr @R, i64 0, i32 40, i64 %138, i64 1
  br label %143

143:                                              ; preds = %117, %136
  %144 = phi ptr [ %142, %136 ], [ %132, %117 ]
  %145 = phi float [ %141, %136 ], [ %129, %117 ]
  %146 = load float, ptr %144, align 4, !tbaa !50
  %147 = fadd float %146, %17
  br label %148

148:                                              ; preds = %143, %133
  %149 = phi float [ %13, %133 ], [ %145, %143 ]
  %150 = phi float [ %14, %133 ], [ %147, %143 ]
  %151 = fadd float %150, 5.000000e-01
  %152 = fadd float %149, 5.000000e-01
  %153 = zext i16 %31 to i32
  %154 = getelementptr inbounds %struct.ShadeInput, ptr %19, i64 0, i32 105
  store i32 %153, ptr %154, align 4, !tbaa !193
  %155 = getelementptr inbounds %struct.ShadeInput, ptr %19, i64 0, i32 114
  %156 = load i16, ptr %155, align 2, !tbaa !170
  %157 = sext i16 %156 to i64
  %158 = getelementptr inbounds %struct.Render, ptr @R, i64 0, i32 42, i64 %157
  %159 = load i32, ptr %158, align 4, !tbaa !82
  %160 = add nsw i32 %159, 1
  store i32 %160, ptr %158, align 4, !tbaa !82
  %161 = getelementptr inbounds %struct.ShadeInput, ptr %19, i64 0, i32 107
  store i32 %159, ptr %161, align 4, !tbaa !194
  %162 = getelementptr inbounds %struct.PixStr, ptr %20, i64 0, i32 3
  %163 = load i32, ptr %162, align 8, !tbaa !195
  %164 = sitofp i32 %163 to float
  %165 = fptosi float %152 to i32
  %166 = getelementptr inbounds %struct.ShadeInput, ptr %19, i64 0, i32 103
  store i32 %165, ptr %166, align 4, !tbaa !114
  %167 = fptosi float %151 to i32
  %168 = getelementptr inbounds %struct.ShadeInput, ptr %19, i64 0, i32 104
  store i32 %167, ptr %168, align 8, !tbaa !116
  %169 = getelementptr inbounds %struct.ShadeInput, ptr %19, i64 0, i32 106
  store float %15, ptr %169, align 8, !tbaa !50
  %170 = getelementptr inbounds %struct.ShadeInput, ptr %19, i64 0, i32 106, i64 1
  store float %16, ptr %170, align 4, !tbaa !50
  %171 = getelementptr inbounds %struct.ShadeInput, ptr %19, i64 0, i32 106, i64 2
  store float %164, ptr %171, align 8, !tbaa !50
  %172 = getelementptr inbounds %struct.ShadeInput, ptr %19, i64 0, i32 15
  %173 = load i16, ptr %172, align 8, !tbaa !98
  %174 = icmp eq i16 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %148
  %176 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !54
  %177 = and i32 %176, 2
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %189, label %179

179:                                              ; preds = %175, %148
  %180 = getelementptr inbounds %struct.ShadeInput, ptr %19, i64 0, i32 78
  %181 = getelementptr inbounds %struct.ShadeInput, ptr %19, i64 0, i32 79
  %182 = load ptr, ptr %19, align 8, !tbaa !34
  %183 = getelementptr inbounds %struct.Material, ptr %182, i64 0, i32 90
  %184 = load i16, ptr %183, align 4, !tbaa !97
  %185 = and i16 %184, 2
  %186 = icmp eq i16 %185, 0
  %187 = getelementptr inbounds %struct.ShadeInput, ptr %19, i64 0, i32 90
  %188 = select i1 %186, ptr null, ptr %187
  br label %189

189:                                              ; preds = %175, %179
  %190 = phi ptr [ null, %175 ], [ %188, %179 ]
  %191 = phi ptr [ null, %175 ], [ %180, %179 ]
  %192 = phi ptr [ null, %175 ], [ %181, %179 ]
  %193 = getelementptr inbounds %struct.ShadeInput, ptr %19, i64 0, i32 30
  %194 = getelementptr inbounds %struct.ShadeInput, ptr %19, i64 0, i32 29
  tail call void @shade_input_calc_viewco(ptr noundef nonnull %19, float noundef %152, float noundef %151, float noundef %164, ptr noundef nonnull %193, ptr noundef %190, ptr noundef nonnull %194, ptr noundef %191, ptr noundef %192)
  tail call void @shade_input_set_uv(ptr noundef nonnull %19)
  tail call void @shade_input_set_normals(ptr noundef nonnull %19)
  %195 = add nsw i64 %21, 1472
  br label %196

196:                                              ; preds = %108, %37, %189
  %197 = phi i64 [ %195, %189 ], [ %21, %37 ], [ %109, %108 ]
  %198 = icmp eq i64 %197, 136
  br i1 %198, label %204, label %199

199:                                              ; preds = %196
  %200 = getelementptr i8, ptr %5, i64 %197
  %201 = load i16, ptr %200, align 4, !tbaa !167
  %202 = sext i16 %201 to i32
  %203 = add nsw i32 %202, 1
  store i32 %203, ptr %0, align 8, !tbaa !185
  br label %204

204:                                              ; preds = %196, %199, %18
  %205 = phi i64 [ %21, %18 ], [ %197, %199 ], [ %197, %196 ]
  %206 = load ptr, ptr %20, align 8, !tbaa !201
  %207 = getelementptr inbounds i8, ptr %0, i64 %205
  %208 = icmp eq ptr %206, null
  br i1 %208, label %209, label %18, !llvm.loop !202

209:                                              ; preds = %204, %4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @shade_samples(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  tail call void @shade_samples_fill_with_ps(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  %5 = load i32, ptr %0, align 8, !tbaa !185
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %90, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 3
  %10 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !54
  %11 = and i32 %10, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %55, label %13

13:                                               ; preds = %7
  %14 = and i32 %10, 65536
  %15 = icmp ne i32 %14, 0
  %16 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 64), align 2
  %17 = icmp eq i16 %16, 1
  %18 = select i1 %15, i1 true, i1 %17
  br i1 %18, label %19, label %55

19:                                               ; preds = %13
  %20 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 23), align 2, !tbaa !76
  %21 = and i16 %20, 208
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %55, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 119
  %25 = load i32, ptr %24, align 8, !tbaa !52
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 120
  %30 = load i32, ptr %29, align 4, !tbaa !180
  %31 = or i32 %30, %25
  %32 = and i32 %31, 139328
  %33 = icmp ne i32 %32, 0
  %34 = icmp sgt i32 %5, 0
  %35 = and i1 %34, %33
  br i1 %35, label %41, label %55

36:                                               ; preds = %23
  %37 = and i32 %25, 139328
  %38 = icmp ne i32 %37, 0
  %39 = icmp sgt i32 %5, 0
  %40 = and i1 %39, %38
  br i1 %40, label %41, label %55

41:                                               ; preds = %36, %28
  br label %42

42:                                               ; preds = %41, %50
  %43 = phi i32 [ %52, %50 ], [ 0, %41 ]
  %44 = phi ptr [ %51, %50 ], [ %8, %41 ]
  %45 = getelementptr inbounds %struct.ShadeInput, ptr %44, i64 0, i32 21
  %46 = load i32, ptr %45, align 8, !tbaa !69
  %47 = and i32 %46, 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  tail call void @ambient_occlusion(ptr noundef nonnull %44) #11
  br label %50

50:                                               ; preds = %49, %42
  %51 = getelementptr inbounds %struct.ShadeInput, ptr %44, i64 1
  %52 = add nuw nsw i32 %43, 1
  %53 = load i32, ptr %0, align 8, !tbaa !185
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %42, label %55, !llvm.loop !187

55:                                               ; preds = %50, %7, %13, %19, %28, %36
  %56 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 119
  %57 = load i32, ptr %56, align 8, !tbaa !52
  %58 = and i32 %57, -264195
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %72, label %60

60:                                               ; preds = %55
  %61 = load i32, ptr %0, align 8, !tbaa !185
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %90

63:                                               ; preds = %60, %63
  %64 = phi i32 [ %67, %63 ], [ 0, %60 ]
  %65 = phi ptr [ %69, %63 ], [ %9, %60 ]
  %66 = phi ptr [ %68, %63 ], [ %8, %60 ]
  tail call void @shade_input_set_shade_texco(ptr noundef nonnull %66)
  tail call void @shade_input_do_shade(ptr noundef nonnull %66, ptr noundef nonnull %65)
  %67 = add nuw nsw i32 %64, 1
  %68 = getelementptr inbounds %struct.ShadeInput, ptr %66, i64 1
  %69 = getelementptr inbounds %struct.ShadeResult, ptr %65, i64 1
  %70 = load i32, ptr %0, align 8, !tbaa !185
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %63, label %90, !llvm.loop !203

72:                                               ; preds = %55
  %73 = and i32 %57, 2
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %90, label %75

75:                                               ; preds = %72
  %76 = load i32, ptr %0, align 8, !tbaa !185
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %75, %78
  %79 = phi i32 [ %86, %78 ], [ 0, %75 ]
  %80 = phi ptr [ %88, %78 ], [ %9, %75 ]
  %81 = phi ptr [ %87, %78 ], [ %8, %75 ]
  %82 = getelementptr inbounds %struct.ShadeInput, ptr %81, i64 0, i32 29, i64 2
  %83 = load float, ptr %82, align 8, !tbaa !50
  %84 = fneg float %83
  %85 = getelementptr inbounds %struct.ShadeResult, ptr %80, i64 0, i32 4
  store float %84, ptr %85, align 4, !tbaa !79
  %86 = add nuw nsw i32 %79, 1
  %87 = getelementptr inbounds %struct.ShadeInput, ptr %81, i64 1
  %88 = getelementptr inbounds %struct.ShadeResult, ptr %80, i64 1
  %89 = icmp eq i32 %86, %76
  br i1 %89, label %90, label %78, !llvm.loop !204

90:                                               ; preds = %63, %78, %60, %75, %4, %72
  %91 = phi i32 [ 1, %72 ], [ 0, %4 ], [ 1, %75 ], [ 1, %60 ], [ 1, %78 ], [ 1, %63 ]
  ret i32 %91
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #9

declare float @srgb_to_linearrgb(float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }

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
!42 = !{!43, !40, i64 360}
!43 = !{!"Material", !44, i64 0, !36, i64 120, !40, i64 128, !40, i64 130, !41, i64 132, !41, i64 136, !41, i64 140, !41, i64 144, !41, i64 148, !41, i64 152, !41, i64 156, !41, i64 160, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180, !41, i64 184, !41, i64 188, !41, i64 192, !41, i64 196, !41, i64 200, !41, i64 204, !41, i64 208, !41, i64 212, !41, i64 216, !41, i64 220, !45, i64 224, !46, i64 312, !41, i64 328, !41, i64 332, !41, i64 336, !41, i64 340, !41, i64 344, !41, i64 348, !41, i64 352, !40, i64 356, !40, i64 358, !40, i64 360, !37, i64 362, !37, i64 363, !41, i64 364, !41, i64 368, !40, i64 372, !40, i64 374, !41, i64 376, !41, i64 380, !41, i64 384, !41, i64 388, !40, i64 392, !40, i64 394, !39, i64 396, !39, i64 400, !39, i64 404, !39, i64 408, !40, i64 412, !40, i64 414, !40, i64 416, !40, i64 418, !41, i64 420, !41, i64 424, !41, i64 428, !41, i64 432, !41, i64 436, !41, i64 440, !41, i64 444, !41, i64 448, !41, i64 452, !41, i64 456, !37, i64 460, !41, i64 524, !41, i64 528, !41, i64 532, !39, i64 536, !37, i64 540, !37, i64 541, !37, i64 542, !37, i64 543, !40, i64 544, !40, i64 546, !40, i64 548, !37, i64 550, !37, i64 551, !40, i64 552, !40, i64 554, !41, i64 556, !41, i64 560, !37, i64 564, !41, i64 580, !41, i64 584, !40, i64 588, !40, i64 590, !36, i64 592, !36, i64 600, !37, i64 608, !37, i64 609, !37, i64 610, !37, i64 611, !40, i64 612, !40, i64 614, !41, i64 616, !41, i64 620, !37, i64 624, !36, i64 768, !36, i64 776, !36, i64 784, !36, i64 792, !41, i64 800, !41, i64 804, !41, i64 808, !41, i64 812, !41, i64 816, !40, i64 820, !40, i64 822, !37, i64 824, !37, i64 836, !41, i64 848, !41, i64 852, !41, i64 856, !41, i64 860, !41, i64 864, !41, i64 868, !41, i64 872, !40, i64 876, !40, i64 878, !39, i64 880, !40, i64 884, !40, i64 886, !37, i64 888, !40, i64 904, !40, i64 906, !40, i64 908, !40, i64 910, !40, i64 912, !37, i64 914, !36, i64 920, !47, i64 928}
!44 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !40, i64 98, !39, i64 100, !39, i64 104, !39, i64 108, !36, i64 112}
!45 = !{!"VolumeSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !37, i64 16, !37, i64 28, !37, i64 40, !41, i64 52, !41, i64 56, !41, i64 60, !40, i64 64, !40, i64 66, !40, i64 68, !40, i64 70, !41, i64 72, !41, i64 76, !41, i64 80, !41, i64 84}
!46 = !{!"GameSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!47 = !{!"ListBase", !36, i64 0, !36, i64 8}
!48 = !{!35, !39, i64 320}
!49 = !{!35, !41, i64 316}
!50 = !{!41, !41, i64 0}
!51 = !{!35, !39, i64 1408}
!52 = !{!35, !39, i64 1448}
!53 = !{!35, !39, i64 1412}
!54 = !{!55, !39, i64 1624}
!55 = !{!"Render", !36, i64 0, !36, i64 8, !37, i64 16, !39, i64 92, !40, i64 96, !40, i64 98, !40, i64 100, !40, i64 102, !37, i64 104, !36, i64 112, !36, i64 120, !47, i64 128, !39, i64 144, !39, i64 148, !39, i64 152, !56, i64 156, !57, i64 172, !41, i64 188, !41, i64 192, !41, i64 196, !39, i64 200, !39, i64 204, !39, i64 208, !39, i64 212, !41, i64 216, !41, i64 220, !41, i64 224, !41, i64 228, !41, i64 232, !41, i64 236, !37, i64 240, !37, i64 252, !37, i64 288, !37, i64 352, !37, i64 416, !37, i64 480, !41, i64 544, !41, i64 548, !36, i64 552, !37, i64 560, !37, i64 816, !36, i64 1072, !37, i64 1080, !36, i64 1088, !36, i64 1096, !58, i64 1104, !65, i64 5088, !36, i64 5616, !39, i64 5624, !39, i64 5628, !47, i64 5632, !36, i64 5648, !36, i64 5656, !36, i64 5664, !36, i64 5672, !41, i64 5680, !36, i64 5688, !47, i64 5696, !41, i64 5712, !41, i64 5716, !39, i64 5720, !39, i64 5724, !39, i64 5728, !39, i64 5732, !39, i64 5736, !36, i64 5744, !47, i64 5752, !47, i64 5768, !47, i64 5784, !36, i64 5800, !47, i64 5808, !39, i64 5824, !36, i64 5832, !36, i64 5840, !36, i64 5848, !36, i64 5856, !36, i64 5864, !47, i64 5872, !36, i64 5888, !47, i64 5896, !47, i64 5912, !36, i64 5928, !36, i64 5936, !36, i64 5944, !36, i64 5952, !36, i64 5960, !36, i64 5968, !36, i64 5976, !36, i64 5984, !36, i64 5992, !36, i64 6000, !36, i64 6008, !36, i64 6016, !36, i64 6024, !36, i64 6032, !36, i64 6040, !36, i64 6048, !36, i64 6056, !66, i64 6064, !36, i64 6216, !36, i64 6224, !36, i64 6232}
!56 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!57 = !{!"rctf", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!58 = !{!"RenderData", !59, i64 0, !36, i64 248, !36, i64 256, !62, i64 264, !63, i64 328, !39, i64 400, !39, i64 404, !39, i64 408, !41, i64 412, !39, i64 416, !39, i64 420, !39, i64 424, !39, i64 428, !40, i64 432, !40, i64 434, !41, i64 436, !41, i64 440, !41, i64 444, !41, i64 448, !41, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !39, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !39, i64 484, !39, i64 488, !40, i64 492, !40, i64 494, !39, i64 496, !39, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !37, i64 514, !37, i64 515, !39, i64 516, !39, i64 520, !39, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !57, i64 544, !57, i64 560, !56, i64 576, !47, i64 592, !40, i64 608, !40, i64 610, !41, i64 612, !41, i64 616, !41, i64 620, !41, i64 624, !39, i64 628, !41, i64 632, !41, i64 636, !41, i64 640, !41, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !41, i64 660, !41, i64 664, !40, i64 668, !40, i64 670, !41, i64 672, !41, i64 676, !37, i64 680, !39, i64 1704, !40, i64 1708, !40, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !39, i64 2520, !40, i64 2524, !40, i64 2526, !41, i64 2528, !41, i64 2532, !40, i64 2536, !40, i64 2538, !41, i64 2540, !40, i64 2544, !40, i64 2546, !39, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !41, i64 2560, !41, i64 2564, !36, i64 2568, !39, i64 2576, !41, i64 2580, !37, i64 2584, !64, i64 2616, !39, i64 3976, !39, i64 3980}
!59 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !40, i64 8, !40, i64 10, !41, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !60, i64 24, !61, i64 184}
!60 = !{!"ColorManagedViewSettings", !39, i64 0, !39, i64 4, !37, i64 8, !37, i64 72, !41, i64 136, !41, i64 140, !36, i64 144, !36, i64 152}
!61 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!62 = !{!"QuicktimeCodecSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !40, i64 48, !40, i64 50, !39, i64 52, !39, i64 56, !39, i64 60}
!63 = !{!"FFMpegCodecData", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !41, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !36, i64 64}
!64 = !{!"BakeData", !59, i64 0, !37, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !41, i64 1280, !41, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!65 = !{!"World", !44, i64 0, !36, i64 120, !40, i64 128, !40, i64 130, !40, i64 132, !40, i64 134, !41, i64 136, !41, i64 140, !41, i64 144, !41, i64 148, !41, i64 152, !41, i64 156, !41, i64 160, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180, !41, i64 184, !41, i64 188, !41, i64 192, !41, i64 196, !40, i64 200, !40, i64 202, !40, i64 204, !40, i64 206, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !41, i64 216, !41, i64 220, !41, i64 224, !41, i64 228, !41, i64 232, !41, i64 236, !41, i64 240, !41, i64 244, !41, i64 248, !41, i64 252, !41, i64 256, !41, i64 260, !40, i64 264, !40, i64 266, !40, i64 268, !40, i64 270, !41, i64 272, !41, i64 276, !41, i64 280, !41, i64 284, !40, i64 288, !40, i64 290, !40, i64 292, !40, i64 294, !41, i64 296, !41, i64 300, !41, i64 304, !41, i64 308, !41, i64 312, !41, i64 316, !41, i64 320, !40, i64 324, !40, i64 326, !40, i64 328, !40, i64 330, !40, i64 332, !40, i64 334, !36, i64 336, !36, i64 344, !36, i64 352, !37, i64 360, !40, i64 504, !40, i64 506, !37, i64 508, !36, i64 512, !36, i64 520}
!66 = !{!"RenderStats", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !40, i64 28, !40, i64 30, !40, i64 32, !40, i64 34, !40, i64 36, !40, i64 38, !37, i64 40, !67, i64 48, !67, i64 56, !36, i64 64, !36, i64 72, !37, i64 80, !41, i64 144, !41, i64 148}
!67 = !{!"double", !37, i64 0}
!68 = !{!35, !41, i64 292}
!69 = !{!35, !39, i64 160}
!70 = !{!71, !41, i64 32}
!71 = !{!"ShadeResult", !37, i64 0, !37, i64 16, !41, i64 32, !41, i64 36, !41, i64 40, !37, i64 44, !37, i64 56, !37, i64 68, !37, i64 80, !37, i64 92, !37, i64 108, !37, i64 120, !37, i64 132, !37, i64 144, !37, i64 156, !37, i64 168, !37, i64 180, !37, i64 196}
!72 = !{!35, !39, i64 1444}
!73 = !{!43, !36, i64 768}
!74 = !{!43, !37, i64 543}
!75 = !{!43, !40, i64 128}
!76 = !{!55, !40, i64 5290}
!77 = !{!43, !39, i64 396}
!78 = !{!71, !41, i64 36}
!79 = !{!71, !41, i64 40}
!80 = !{!81, !37, i64 57}
!81 = !{!"VlakRen", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !36, i64 48, !37, i64 56, !37, i64 57, !37, i64 58, !39, i64 60}
!82 = !{!39, !39, i64 0}
!83 = !{!35, !36, i64 8}
!84 = !{!35, !36, i64 24}
!85 = !{!86, !36, i64 16}
!86 = !{!"ObjectInstanceRen", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !39, i64 40, !39, i64 44, !39, i64 48, !37, i64 52, !37, i64 116, !37, i64 180, !40, i64 216, !37, i64 220, !37, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !39, i64 264, !36, i64 272, !39, i64 280}
!87 = !{!35, !36, i64 32}
!88 = !{!36, !36, i64 0}
!89 = !{!35, !36, i64 64}
!90 = !{!35, !36, i64 72}
!91 = !{!35, !36, i64 80}
!92 = !{!35, !40, i64 88}
!93 = !{!35, !40, i64 90}
!94 = !{!35, !40, i64 92}
!95 = !{!35, !36, i64 1464}
!96 = !{!81, !36, i64 48}
!97 = !{!43, !40, i64 588}
!98 = !{!35, !40, i64 96}
!99 = !{!43, !39, i64 400}
!100 = !{!43, !39, i64 408}
!101 = !{!35, !39, i64 164}
!102 = !{!35, !40, i64 56}
!103 = !{!86, !40, i64 216}
!104 = !{!55, !36, i64 5800}
!105 = !{!35, !39, i64 40}
!106 = !{!107, !39, i64 84}
!107 = !{!"ObjectRen", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !37, i64 56, !39, i64 80, !39, i64 84, !39, i64 88, !39, i64 92, !39, i64 96, !39, i64 100, !39, i64 104, !39, i64 108, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !39, i64 168, !39, i64 172, !39, i64 176, !37, i64 180, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272}
!108 = !{!109, !36, i64 8}
!109 = !{!"StrandRen", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !37, i64 32}
!110 = !{!111, !36, i64 48}
!111 = !{!"StrandBuffer", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !39, i64 32, !39, i64 36, !36, i64 40, !36, i64 48, !36, i64 56, !39, i64 64, !39, i64 68, !39, i64 72, !39, i64 76, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !37, i64 96, !39, i64 160, !39, i64 164}
!112 = !{!113, !41, i64 180}
!113 = !{!"StrandPoint", !41, i64 0, !37, i64 4, !37, i64 16, !37, i64 28, !41, i64 40, !41, i64 44, !37, i64 48, !37, i64 60, !41, i64 72, !37, i64 76, !37, i64 88, !37, i64 100, !37, i64 116, !37, i64 132, !37, i64 144, !39, i64 156, !39, i64 160, !37, i64 164, !41, i64 180, !41, i64 184, !41, i64 188}
!114 = !{!35, !39, i64 1380}
!115 = !{!113, !41, i64 184}
!116 = !{!35, !39, i64 1384}
!117 = !{!111, !36, i64 40}
!118 = !{!43, !41, i64 448}
!119 = !{!35, !41, i64 1428}
!120 = !{!109, !36, i64 0}
!121 = distinct !{!121, !122, !123}
!122 = !{!"llvm.loop.mustprogress"}
!123 = !{!"llvm.loop.unroll.disable"}
!124 = !{!113, !41, i64 0}
!125 = !{!113, !41, i64 40}
!126 = !{!35, !41, i64 428}
!127 = !{!113, !41, i64 72}
!128 = !{!35, !41, i64 1336}
!129 = !{!35, !41, i64 1340}
!130 = !{!35, !39, i64 1096}
!131 = !{!35, !39, i64 1100}
!132 = !{!107, !39, i64 168}
!133 = !{!35, !39, i64 1104}
!134 = !{!107, !39, i64 172}
!135 = !{!35, !39, i64 1108}
!136 = !{!137, !36, i64 16}
!137 = !{!"ShadeInputCol", !37, i64 0, !36, i64 16}
!138 = !{!37, !37, i64 0}
!139 = distinct !{!139, !122, !123}
!140 = !{!141, !36, i64 40}
!141 = !{!"ShadeInputUV", !37, i64 0, !37, i64 12, !37, i64 24, !36, i64 40}
!142 = !{!111, !39, i64 68}
!143 = distinct !{!143, !122, !123}
!144 = !{!55, !39, i64 148}
!145 = !{!55, !39, i64 152}
!146 = !{!35, !37, i64 1433}
!147 = !{!55, !41, i64 188}
!148 = !{!55, !41, i64 192}
!149 = !{!81, !36, i64 8}
!150 = !{!81, !36, i64 16}
!151 = !{!35, !41, i64 172}
!152 = !{!35, !41, i64 168}
!153 = !{!35, !41, i64 176}
!154 = !{!35, !41, i64 180}
!155 = !{!35, !41, i64 184}
!156 = !{!35, !41, i64 188}
!157 = !{!55, !40, i64 96}
!158 = !{!159, !36, i64 24}
!159 = !{!"VertRen", !37, i64 0, !37, i64 12, !36, i64 24, !39, i64 32, !41, i64 36, !39, i64 40}
!160 = !{!159, !41, i64 36}
!161 = distinct !{!161, !122, !123}
!162 = !{!43, !37, i64 550}
!163 = !{!164, !36, i64 32}
!164 = !{!"MTFace", !37, i64 0, !36, i64 32, !37, i64 40, !37, i64 41, !40, i64 42, !40, i64 44, !40, i64 46}
!165 = distinct !{!165, !122, !123}
!166 = !{!35, !41, i64 472}
!167 = !{!35, !40, i64 1436}
!168 = !{!169, !40, i64 146}
!169 = !{!"RenderPart", !36, i64 0, !36, i64 8, !36, i64 16, !47, i64 24, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !56, i64 112, !39, i64 128, !39, i64 132, !39, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !36, i64 152}
!170 = !{!35, !40, i64 1434}
!171 = !{!55, !39, i64 1620}
!172 = !{!35, !37, i64 1432}
!173 = !{!55, !36, i64 1096}
!174 = !{!175, !39, i64 92}
!175 = !{!"RenderLayer", !36, i64 0, !36, i64 8, !37, i64 16, !39, i64 92, !39, i64 96, !39, i64 100, !39, i64 104, !39, i64 108, !39, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !39, i64 168, !39, i64 172, !36, i64 176, !47, i64 184}
!176 = !{!35, !39, i64 1440}
!177 = !{!175, !39, i64 104}
!178 = !{!175, !39, i64 108}
!179 = !{!175, !39, i64 112}
!180 = !{!35, !39, i64 1452}
!181 = !{!175, !36, i64 120}
!182 = !{!175, !36, i64 128}
!183 = !{!35, !36, i64 1456}
!184 = distinct !{!184, !122, !123}
!185 = !{!186, !39, i64 0}
!186 = !{!"ShadeSample", !39, i64 0, !37, i64 8, !37, i64 136, !37, i64 23688}
!187 = distinct !{!187, !122, !123}
!188 = !{!189, !39, i64 8}
!189 = !{!"PixStr", !36, i64 0, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !40, i64 24, !40, i64 26}
!190 = !{!189, !39, i64 12}
!191 = !{!189, !40, i64 24}
!192 = !{!55, !40, i64 98}
!193 = !{!35, !39, i64 1388}
!194 = !{!35, !39, i64 1404}
!195 = !{!189, !39, i64 16}
!196 = distinct !{!196, !122, !123}
!197 = !{!55, !36, i64 552}
!198 = !{!199, !36, i64 464}
!199 = !{!"SampleTables", !37, i64 0, !37, i64 64, !37, i64 136, !37, i64 208, !36, i64 464}
!200 = !{!55, !40, i64 6094}
!201 = !{!189, !36, i64 0}
!202 = distinct !{!202, !122, !123}
!203 = distinct !{!203, !122, !123}
!204 = distinct !{!204, !122, !123}
