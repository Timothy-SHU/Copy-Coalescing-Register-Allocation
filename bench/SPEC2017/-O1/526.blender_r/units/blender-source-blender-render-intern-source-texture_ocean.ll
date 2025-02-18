; ModuleID = 'blender/source/blender/render/intern/source/texture_ocean.c'
source_filename = "blender/source/blender/render/intern/source/texture_ocean.c"
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
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.OceanResult = type { [3 x float], [3 x float], float, float, float, [3 x float], [3 x float] }
%struct.Tex = type { %struct.ID, ptr, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, float, float, float, %struct.ImageUser, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.OceanModifierData = type { %struct.ModifierData, ptr, ptr, i32, i32, float, float, float, float, float, float, float, float, float, float, i32, i32, [1024 x i8], [64 x i8], i8, i8, i8, i8, i16, i16, i32, float, float, i32 }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.OceanTex = type { ptr, [64 x i8], i32, i32 }
%struct.TexResult = type { float, float, float, float, float, i32, ptr }

@R = external local_unnamed_addr global %struct.Render, align 8
@G = external local_unnamed_addr global %struct.Global, align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @ocean_texture(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.OceanResult, align 4
  %5 = alloca [3 x float], align 4
  %6 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 60
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  store float 0.000000e+00, ptr %2, align 8, !tbaa !44
  %8 = icmp eq ptr %7, null
  br i1 %8, label %210, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr %7, align 8, !tbaa !46
  %11 = icmp eq ptr %10, null
  br i1 %11, label %210, label %12

12:                                               ; preds = %9
  %13 = tail call ptr @modifiers_findByType(ptr noundef nonnull %10, i32 noundef 39) #6
  %14 = icmp eq ptr %13, null
  br i1 %14, label %210, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.OceanModifierData, ptr %13, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !48
  %18 = icmp eq ptr %17, null
  br i1 %18, label %210, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.OceanModifierData, ptr %13, i64 0, i32 21
  %21 = load i8, ptr %20, align 2, !tbaa !51
  %22 = and i8 %21, 2
  %23 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 5), align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %4) #6
  %24 = load float, ptr %1, align 4, !tbaa !67
  %25 = tail call float @llvm.fmuladd.f32(float %24, float 5.000000e-01, float 5.000000e-01)
  %26 = getelementptr inbounds float, ptr %1, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !67
  %28 = tail call float @llvm.fmuladd.f32(float %27, float 5.000000e-01, float 5.000000e-01)
  %29 = getelementptr inbounds %struct.OceanModifierData, ptr %13, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !68
  %31 = icmp eq ptr %30, null
  br i1 %31, label %47, label %32

32:                                               ; preds = %19
  %33 = getelementptr inbounds %struct.OceanModifierData, ptr %13, i64 0, i32 19
  %34 = load i8, ptr %33, align 8, !tbaa !69
  %35 = icmp eq i8 %34, 1
  br i1 %35, label %36, label %47

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.OceanModifierData, ptr %13, i64 0, i32 15
  %38 = load i32, ptr %37, align 8, !tbaa !70
  %39 = icmp slt i32 %23, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.OceanModifierData, ptr %13, i64 0, i32 16
  %42 = load i32, ptr %41, align 4, !tbaa !71
  %43 = tail call i32 @llvm.smin.i32(i32 %23, i32 %42)
  br label %44

44:                                               ; preds = %40, %36
  %45 = phi i32 [ %38, %36 ], [ %43, %40 ]
  %46 = sub nsw i32 %45, %38
  call void @BKE_ocean_cache_eval_uv(ptr noundef nonnull %30, ptr noundef nonnull %4, i32 noundef %46, float noundef %25, float noundef %28) #6
  br label %59

47:                                               ; preds = %32, %19
  %48 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 13), align 2, !tbaa !72
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  call void @BKE_ocean_eval_uv_catrom(ptr noundef nonnull %17, ptr noundef nonnull %4, float noundef %25, float noundef %28) #6
  br label %52

51:                                               ; preds = %47
  call void @BKE_ocean_eval_uv(ptr noundef nonnull %17, ptr noundef nonnull %4, float noundef %25, float noundef %28) #6
  br label %52

52:                                               ; preds = %51, %50
  %53 = getelementptr inbounds %struct.OceanResult, ptr %4, i64 0, i32 3
  %54 = load float, ptr %53, align 4, !tbaa !74
  %55 = getelementptr inbounds %struct.OceanModifierData, ptr %13, i64 0, i32 13
  %56 = load float, ptr %55, align 8, !tbaa !76
  %57 = call float @BKE_ocean_jminus_to_foam(float noundef %54, float noundef %56) #6
  %58 = getelementptr inbounds %struct.OceanResult, ptr %4, i64 0, i32 2
  store float %57, ptr %58, align 4, !tbaa !77
  br label %59

59:                                               ; preds = %52, %44
  %60 = getelementptr inbounds %struct.OceanTex, ptr %7, i64 0, i32 2
  %61 = load i32, ptr %60, align 8, !tbaa !78
  switch i32 %61, label %173 [
    i32 1, label %62
    i32 4, label %130
    i32 5, label %140
    i32 3, label %150
    i32 2, label %153
  ]

62:                                               ; preds = %59
  %63 = load float, ptr %4, align 4, !tbaa !67
  %64 = call float @llvm.fmuladd.f32(float %63, float 5.000000e-01, float 5.000000e-01)
  %65 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 1
  store float %64, ptr %65, align 4, !tbaa !79
  %66 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %67 = load float, ptr %66, align 4, !tbaa !67
  %68 = call float @llvm.fmuladd.f32(float %67, float 5.000000e-01, float 5.000000e-01)
  %69 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 2
  store float %68, ptr %69, align 8, !tbaa !80
  %70 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %71 = load float, ptr %70, align 4, !tbaa !67
  %72 = call float @llvm.fmuladd.f32(float %71, float 5.000000e-01, float 5.000000e-01)
  %73 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 3
  store float %72, ptr %73, align 4, !tbaa !81
  %74 = fcmp olt float %64, 0.000000e+00
  %75 = select i1 %74, float 0.000000e+00, float %64
  store float %75, ptr %65, align 4, !tbaa !79
  %76 = fcmp olt float %68, 0.000000e+00
  %77 = select i1 %76, float 0.000000e+00, float %68
  store float %77, ptr %69, align 8, !tbaa !80
  %78 = fcmp olt float %72, 0.000000e+00
  %79 = select i1 %78, float 0.000000e+00, float %72
  store float %79, ptr %73, align 4, !tbaa !81
  %80 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 7
  %81 = load float, ptr %80, align 4, !tbaa !82
  %82 = fadd float %75, -5.000000e-01
  %83 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 5
  %84 = load float, ptr %83, align 4, !tbaa !83
  %85 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 4
  %86 = load float, ptr %85, align 8, !tbaa !84
  %87 = call float @llvm.fmuladd.f32(float %82, float %84, float %86)
  %88 = fadd float %87, -5.000000e-01
  %89 = fmul float %81, %88
  store float %89, ptr %65, align 4, !tbaa !79
  %90 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 8
  %91 = load float, ptr %90, align 8, !tbaa !85
  %92 = fadd float %77, -5.000000e-01
  %93 = call float @llvm.fmuladd.f32(float %92, float %84, float %86)
  %94 = fadd float %93, -5.000000e-01
  %95 = fmul float %91, %94
  store float %95, ptr %69, align 8, !tbaa !80
  %96 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 9
  %97 = load float, ptr %96, align 4, !tbaa !86
  %98 = fadd float %79, -5.000000e-01
  %99 = call float @llvm.fmuladd.f32(float %98, float %84, float %86)
  %100 = fadd float %99, -5.000000e-01
  %101 = fmul float %100, %97
  store float %101, ptr %73, align 4, !tbaa !81
  %102 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 31
  %103 = load i16, ptr %102, align 2, !tbaa !87
  %104 = and i16 %103, 1024
  %105 = icmp eq i16 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %62
  %107 = fcmp olt float %89, 0.000000e+00
  br i1 %107, label %108, label %109

108:                                              ; preds = %106
  store float 0.000000e+00, ptr %65, align 4, !tbaa !79
  br label %109

109:                                              ; preds = %108, %106
  %110 = fcmp olt float %95, 0.000000e+00
  br i1 %110, label %111, label %112

111:                                              ; preds = %109
  store float 0.000000e+00, ptr %69, align 8, !tbaa !80
  br label %112

112:                                              ; preds = %111, %109
  %113 = fcmp olt float %101, 0.000000e+00
  br i1 %113, label %114, label %115

114:                                              ; preds = %112
  store float 0.000000e+00, ptr %73, align 4, !tbaa !81
  br label %115

115:                                              ; preds = %112, %114, %62
  %116 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 6
  %117 = load float, ptr %116, align 8, !tbaa !88
  %118 = fcmp une float %117, 1.000000e+00
  br i1 %118, label %119, label %173

119:                                              ; preds = %115
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #6
  %120 = load float, ptr %65, align 4, !tbaa !79
  %121 = load float, ptr %69, align 8, !tbaa !80
  %122 = load float, ptr %73, align 4, !tbaa !81
  %123 = getelementptr inbounds float, ptr %5, i64 1
  %124 = getelementptr inbounds float, ptr %5, i64 2
  call void @rgb_to_hsv(float noundef %120, float noundef %121, float noundef %122, ptr noundef nonnull %5, ptr noundef nonnull %123, ptr noundef nonnull %124) #6
  %125 = load float, ptr %116, align 8, !tbaa !88
  %126 = load float, ptr %123, align 4, !tbaa !67
  %127 = fmul float %125, %126
  store float %127, ptr %123, align 4, !tbaa !67
  %128 = load float, ptr %5, align 4, !tbaa !67
  %129 = load float, ptr %124, align 4, !tbaa !67
  call void @hsv_to_rgb(float noundef %128, float noundef %127, float noundef %129, ptr noundef nonnull %65, ptr noundef nonnull %69, ptr noundef nonnull %73) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #6
  br label %173

130:                                              ; preds = %59
  %131 = getelementptr inbounds %struct.OceanResult, ptr %4, i64 0, i32 5
  %132 = load float, ptr %131, align 4, !tbaa !67
  %133 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 1
  store float %132, ptr %133, align 4, !tbaa !79
  %134 = getelementptr inbounds %struct.OceanResult, ptr %4, i64 0, i32 5, i64 2
  %135 = load float, ptr %134, align 4, !tbaa !67
  %136 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 2
  store float %135, ptr %136, align 8, !tbaa !80
  %137 = getelementptr inbounds %struct.OceanResult, ptr %4, i64 0, i32 5, i64 1
  %138 = load float, ptr %137, align 4, !tbaa !67
  %139 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 3
  store float %138, ptr %139, align 4, !tbaa !81
  br label %173

140:                                              ; preds = %59
  %141 = getelementptr inbounds %struct.OceanResult, ptr %4, i64 0, i32 6
  %142 = load float, ptr %141, align 4, !tbaa !67
  %143 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 1
  store float %142, ptr %143, align 4, !tbaa !79
  %144 = getelementptr inbounds %struct.OceanResult, ptr %4, i64 0, i32 6, i64 2
  %145 = load float, ptr %144, align 4, !tbaa !67
  %146 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 2
  store float %145, ptr %146, align 8, !tbaa !80
  %147 = getelementptr inbounds %struct.OceanResult, ptr %4, i64 0, i32 6, i64 1
  %148 = load float, ptr %147, align 4, !tbaa !67
  %149 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 3
  store float %148, ptr %149, align 4, !tbaa !81
  br label %173

150:                                              ; preds = %59
  %151 = getelementptr inbounds %struct.OceanResult, ptr %4, i64 0, i32 4
  %152 = load float, ptr %151, align 4, !tbaa !89
  store float %152, ptr %2, align 8, !tbaa !44
  br label %173

153:                                              ; preds = %59
  %154 = getelementptr inbounds %struct.OceanResult, ptr %4, i64 0, i32 2
  %155 = load float, ptr %154, align 4, !tbaa !77
  store float %155, ptr %2, align 8, !tbaa !44
  %156 = fadd float %155, -5.000000e-01
  %157 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 5
  %158 = load float, ptr %157, align 4, !tbaa !83
  %159 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 4
  %160 = load float, ptr %159, align 8, !tbaa !84
  %161 = call float @llvm.fmuladd.f32(float %156, float %158, float %160)
  %162 = fadd float %161, -5.000000e-01
  store float %162, ptr %2, align 8, !tbaa !44
  %163 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 31
  %164 = load i16, ptr %163, align 2, !tbaa !87
  %165 = and i16 %164, 1024
  %166 = icmp eq i16 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %153
  %168 = fcmp olt float %162, 0.000000e+00
  br i1 %168, label %169, label %170

169:                                              ; preds = %167
  store float 0.000000e+00, ptr %2, align 8, !tbaa !44
  br label %173

170:                                              ; preds = %167
  %171 = fcmp ogt float %162, 1.000000e+00
  br i1 %171, label %172, label %173

172:                                              ; preds = %170
  store float 1.000000e+00, ptr %2, align 8, !tbaa !44
  br label %173

173:                                              ; preds = %153, %170, %172, %169, %115, %119, %59, %150, %140, %130
  %174 = phi i32 [ 0, %59 ], [ 0, %150 ], [ 1, %140 ], [ 1, %130 ], [ 1, %119 ], [ 1, %115 ], [ 0, %169 ], [ 0, %172 ], [ 0, %170 ], [ 0, %153 ]
  %175 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 6
  %176 = load ptr, ptr %175, align 8, !tbaa !90
  %177 = icmp ne ptr %176, null
  %178 = icmp ne i8 %22, 0
  %179 = select i1 %177, i1 %178, i1 false
  br i1 %179, label %180, label %207

180:                                              ; preds = %173
  %181 = getelementptr inbounds %struct.OceanResult, ptr %4, i64 0, i32 1
  %182 = load float, ptr %181, align 4, !tbaa !67
  %183 = getelementptr inbounds %struct.OceanResult, ptr %4, i64 0, i32 1, i64 1
  %184 = load float, ptr %183, align 4, !tbaa !67
  %185 = fmul float %184, %184
  %186 = call float @llvm.fmuladd.f32(float %182, float %182, float %185)
  %187 = getelementptr inbounds %struct.OceanResult, ptr %4, i64 0, i32 1, i64 2
  %188 = load float, ptr %187, align 4, !tbaa !67
  %189 = call float @llvm.fmuladd.f32(float %188, float %188, float %186)
  %190 = fcmp ogt float %189, 0x38AA95A5C0000000
  br i1 %190, label %191, label %201

191:                                              ; preds = %180
  %192 = call float @sqrtf(float noundef %189) #6
  %193 = fdiv float 1.000000e+00, %192
  %194 = load float, ptr %181, align 4, !tbaa !67
  %195 = fmul float %194, %193
  store float %195, ptr %176, align 4, !tbaa !67
  %196 = load float, ptr %183, align 4, !tbaa !67
  %197 = fmul float %193, %196
  %198 = getelementptr inbounds float, ptr %176, i64 1
  store float %197, ptr %198, align 4, !tbaa !67
  %199 = load float, ptr %187, align 4, !tbaa !67
  %200 = fmul float %193, %199
  br label %203

201:                                              ; preds = %180
  store float 0.000000e+00, ptr %176, align 4, !tbaa !67
  %202 = getelementptr inbounds float, ptr %176, i64 1
  store float 0.000000e+00, ptr %202, align 4, !tbaa !67
  br label %203

203:                                              ; preds = %191, %201
  %204 = phi float [ %200, %191 ], [ 0.000000e+00, %201 ]
  %205 = getelementptr inbounds float, ptr %176, i64 2
  store float %204, ptr %205, align 4, !tbaa !67
  %206 = or disjoint i32 %174, 2
  br label %207

207:                                              ; preds = %203, %173
  %208 = phi i32 [ %206, %203 ], [ %174, %173 ]
  %209 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 4
  store float 1.000000e+00, ptr %209, align 8, !tbaa !91
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %4) #6
  br label %210

210:                                              ; preds = %3, %9, %12, %15, %207
  %211 = phi i32 [ %208, %207 ], [ 0, %15 ], [ 0, %12 ], [ 0, %9 ], [ 0, %3 ]
  ret i32 %211
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @modifiers_findByType(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

declare void @BKE_ocean_cache_eval_uv(ptr noundef, ptr noundef, i32 noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @BKE_ocean_eval_uv_catrom(ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @BKE_ocean_eval_uv(ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

declare float @BKE_ocean_jminus_to_foam(float noundef, float noundef) local_unnamed_addr #2

declare void @rgb_to_hsv(float noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @hsv_to_rgb(float noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
!34 = !{!35, !37, i64 400}
!35 = !{!"Tex", !36, i64 0, !37, i64 120, !42, i64 128, !42, i64 132, !42, i64 136, !42, i64 140, !42, i64 144, !42, i64 148, !42, i64 152, !42, i64 156, !42, i64 160, !42, i64 164, !42, i64 168, !42, i64 172, !42, i64 176, !42, i64 180, !42, i64 184, !42, i64 188, !42, i64 192, !42, i64 196, !42, i64 200, !42, i64 204, !42, i64 208, !42, i64 212, !40, i64 216, !40, i64 218, !40, i64 220, !40, i64 222, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !40, i64 232, !40, i64 234, !42, i64 236, !42, i64 240, !42, i64 244, !42, i64 248, !41, i64 252, !41, i64 256, !40, i64 260, !40, i64 262, !40, i64 264, !40, i64 266, !41, i64 268, !41, i64 272, !41, i64 276, !41, i64 280, !42, i64 284, !42, i64 288, !42, i64 292, !43, i64 296, !37, i64 336, !37, i64 344, !37, i64 352, !37, i64 360, !37, i64 368, !37, i64 376, !37, i64 384, !37, i64 392, !37, i64 400, !38, i64 408, !38, i64 409}
!36 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !37, i64 112}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"short", !38, i64 0}
!41 = !{!"int", !38, i64 0}
!42 = !{!"float", !38, i64 0}
!43 = !{!"ImageUser", !37, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !38, i64 24, !38, i64 25, !38, i64 26, !38, i64 27, !40, i64 28, !40, i64 30, !40, i64 32, !40, i64 34, !41, i64 36}
!44 = !{!45, !42, i64 0}
!45 = !{!"TexResult", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !41, i64 20, !37, i64 24}
!46 = !{!47, !37, i64 0}
!47 = !{!"OceanTex", !37, i64 0, !38, i64 8, !41, i64 72, !41, i64 76}
!48 = !{!49, !37, i64 112}
!49 = !{!"OceanModifierData", !50, i64 0, !37, i64 112, !37, i64 120, !41, i64 128, !41, i64 132, !42, i64 136, !42, i64 140, !42, i64 144, !42, i64 148, !42, i64 152, !42, i64 156, !42, i64 160, !42, i64 164, !42, i64 168, !42, i64 172, !41, i64 176, !41, i64 180, !38, i64 184, !38, i64 1208, !38, i64 1272, !38, i64 1273, !38, i64 1274, !38, i64 1275, !40, i64 1276, !40, i64 1278, !41, i64 1280, !42, i64 1284, !42, i64 1288, !41, i64 1292}
!50 = !{!"ModifierData", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !38, i64 32, !37, i64 96, !37, i64 104}
!51 = !{!49, !38, i64 1274}
!52 = !{!53, !41, i64 1504}
!53 = !{!"Render", !37, i64 0, !37, i64 8, !38, i64 16, !41, i64 92, !40, i64 96, !40, i64 98, !40, i64 100, !40, i64 102, !38, i64 104, !37, i64 112, !37, i64 120, !54, i64 128, !41, i64 144, !41, i64 148, !41, i64 152, !55, i64 156, !56, i64 172, !42, i64 188, !42, i64 192, !42, i64 196, !41, i64 200, !41, i64 204, !41, i64 208, !41, i64 212, !42, i64 216, !42, i64 220, !42, i64 224, !42, i64 228, !42, i64 232, !42, i64 236, !38, i64 240, !38, i64 252, !38, i64 288, !38, i64 352, !38, i64 416, !38, i64 480, !42, i64 544, !42, i64 548, !37, i64 552, !38, i64 560, !38, i64 816, !37, i64 1072, !38, i64 1080, !37, i64 1088, !37, i64 1096, !57, i64 1104, !64, i64 5088, !37, i64 5616, !41, i64 5624, !41, i64 5628, !54, i64 5632, !37, i64 5648, !37, i64 5656, !37, i64 5664, !37, i64 5672, !42, i64 5680, !37, i64 5688, !54, i64 5696, !42, i64 5712, !42, i64 5716, !41, i64 5720, !41, i64 5724, !41, i64 5728, !41, i64 5732, !41, i64 5736, !37, i64 5744, !54, i64 5752, !54, i64 5768, !54, i64 5784, !37, i64 5800, !54, i64 5808, !41, i64 5824, !37, i64 5832, !37, i64 5840, !37, i64 5848, !37, i64 5856, !37, i64 5864, !54, i64 5872, !37, i64 5888, !54, i64 5896, !54, i64 5912, !37, i64 5928, !37, i64 5936, !37, i64 5944, !37, i64 5952, !37, i64 5960, !37, i64 5968, !37, i64 5976, !37, i64 5984, !37, i64 5992, !37, i64 6000, !37, i64 6008, !37, i64 6016, !37, i64 6024, !37, i64 6032, !37, i64 6040, !37, i64 6048, !37, i64 6056, !65, i64 6064, !37, i64 6216, !37, i64 6224, !37, i64 6232}
!54 = !{!"ListBase", !37, i64 0, !37, i64 8}
!55 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!56 = !{!"rctf", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12}
!57 = !{!"RenderData", !58, i64 0, !37, i64 248, !37, i64 256, !61, i64 264, !62, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !42, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !40, i64 432, !40, i64 434, !42, i64 436, !42, i64 440, !42, i64 444, !42, i64 448, !42, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !41, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !41, i64 484, !41, i64 488, !40, i64 492, !40, i64 494, !41, i64 496, !41, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !38, i64 514, !38, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !56, i64 544, !56, i64 560, !55, i64 576, !54, i64 592, !40, i64 608, !40, i64 610, !42, i64 612, !42, i64 616, !42, i64 620, !42, i64 624, !41, i64 628, !42, i64 632, !42, i64 636, !42, i64 640, !42, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !42, i64 660, !42, i64 664, !40, i64 668, !40, i64 670, !42, i64 672, !42, i64 676, !38, i64 680, !41, i64 1704, !40, i64 1708, !40, i64 1710, !38, i64 1712, !38, i64 2480, !38, i64 2496, !38, i64 2512, !38, i64 2513, !38, i64 2514, !38, i64 2515, !41, i64 2520, !40, i64 2524, !40, i64 2526, !42, i64 2528, !42, i64 2532, !40, i64 2536, !40, i64 2538, !42, i64 2540, !40, i64 2544, !40, i64 2546, !41, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !42, i64 2560, !42, i64 2564, !37, i64 2568, !41, i64 2576, !42, i64 2580, !38, i64 2584, !63, i64 2616, !41, i64 3976, !41, i64 3980}
!58 = !{!"ImageFormatData", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !40, i64 8, !40, i64 10, !42, i64 12, !38, i64 16, !38, i64 17, !38, i64 18, !59, i64 24, !60, i64 184}
!59 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !38, i64 8, !38, i64 72, !42, i64 136, !42, i64 140, !37, i64 144, !37, i64 152}
!60 = !{!"ColorManagedDisplaySettings", !38, i64 0}
!61 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !40, i64 48, !40, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!62 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !42, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !37, i64 64}
!63 = !{!"BakeData", !58, i64 0, !38, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !42, i64 1280, !42, i64 1284, !38, i64 1288, !38, i64 1291, !38, i64 1292, !38, i64 1293, !38, i64 1296}
!64 = !{!"World", !36, i64 0, !37, i64 120, !40, i64 128, !40, i64 130, !40, i64 132, !40, i64 134, !42, i64 136, !42, i64 140, !42, i64 144, !42, i64 148, !42, i64 152, !42, i64 156, !42, i64 160, !42, i64 164, !42, i64 168, !42, i64 172, !42, i64 176, !42, i64 180, !42, i64 184, !42, i64 188, !42, i64 192, !42, i64 196, !40, i64 200, !40, i64 202, !40, i64 204, !40, i64 206, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !42, i64 216, !42, i64 220, !42, i64 224, !42, i64 228, !42, i64 232, !42, i64 236, !42, i64 240, !42, i64 244, !42, i64 248, !42, i64 252, !42, i64 256, !42, i64 260, !40, i64 264, !40, i64 266, !40, i64 268, !40, i64 270, !42, i64 272, !42, i64 276, !42, i64 280, !42, i64 284, !40, i64 288, !40, i64 290, !40, i64 292, !40, i64 294, !42, i64 296, !42, i64 300, !42, i64 304, !42, i64 308, !42, i64 312, !42, i64 316, !42, i64 320, !40, i64 324, !40, i64 326, !40, i64 328, !40, i64 330, !40, i64 332, !40, i64 334, !37, i64 336, !37, i64 344, !37, i64 352, !38, i64 360, !40, i64 504, !40, i64 506, !38, i64 508, !37, i64 512, !37, i64 520}
!65 = !{!"RenderStats", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !40, i64 28, !40, i64 30, !40, i64 32, !40, i64 34, !40, i64 36, !40, i64 38, !38, i64 40, !66, i64 48, !66, i64 56, !37, i64 64, !37, i64 72, !38, i64 80, !42, i64 144, !42, i64 148}
!66 = !{!"double", !38, i64 0}
!67 = !{!42, !42, i64 0}
!68 = !{!49, !37, i64 120}
!69 = !{!49, !38, i64 1272}
!70 = !{!49, !41, i64 176}
!71 = !{!49, !41, i64 180}
!72 = !{!73, !38, i64 2090}
!73 = !{!"Global", !37, i64 0, !38, i64 8, !38, i64 1032, !38, i64 2056, !38, i64 2057, !38, i64 2058, !54, i64 2064, !38, i64 2080, !38, i64 2081, !38, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !38, i64 2090, !40, i64 2092, !41, i64 2096, !41, i64 2100, !38, i64 2104, !41, i64 2108, !41, i64 2112, !38, i64 2116}
!74 = !{!75, !42, i64 28}
!75 = !{!"OceanResult", !38, i64 0, !38, i64 12, !42, i64 24, !42, i64 28, !42, i64 32, !38, i64 36, !38, i64 48}
!76 = !{!49, !42, i64 168}
!77 = !{!75, !42, i64 24}
!78 = !{!47, !41, i64 72}
!79 = !{!45, !42, i64 4}
!80 = !{!45, !42, i64 8}
!81 = !{!45, !42, i64 12}
!82 = !{!35, !42, i64 148}
!83 = !{!35, !42, i64 140}
!84 = !{!35, !42, i64 136}
!85 = !{!35, !42, i64 152}
!86 = !{!35, !42, i64 156}
!87 = !{!35, !40, i64 230}
!88 = !{!35, !42, i64 144}
!89 = !{!75, !42, i64 32}
!90 = !{!45, !37, i64 24}
!91 = !{!45, !42, i64 16}
