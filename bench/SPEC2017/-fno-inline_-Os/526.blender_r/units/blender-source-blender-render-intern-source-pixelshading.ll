; ModuleID = 'blender/source/blender/render/intern/source/pixelshading.c'
source_filename = "blender/source/blender/render/intern/source/pixelshading.c"
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
%struct.HaloRen = type { i16, i16, float, float, float, float, float, float, float, [3 x float], [3 x float], float, float, float, float, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i16, float, i32, i32, ptr, ptr }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.ShadeInput = type { ptr, ptr, ptr, ptr, ptr, i32, [3 x float], i16, ptr, ptr, ptr, i16, i16, i16, i16, i16, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, float, float, float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], float, [3 x float], [3 x float], [4 x float], float, [4 x float], [3 x float], [3 x float], [8 x %struct.ShadeInputUV], [8 x %struct.ShadeInputCol], i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, [3 x float], [3 x float], [3 x float], i32, i32, i32, [3 x float], i32, i32, i32, [3 x float], float, i8, i8, i16, i16, i16, i32, i32, i32, i32, ptr, ptr }
%struct.ShadeInputUV = type { [3 x float], [3 x float], [3 x float], ptr }
%struct.ShadeInputCol = type { [4 x float], ptr }
%struct.GroupObject = type { ptr, ptr, ptr, ptr, i16, [6 x i8] }
%struct.LampRen = type { ptr, ptr, float, float, float, [3 x float], i16, i32, float, float, float, float, float, float, float, float, float, i32, float, float, [3 x float], float, float, float, float, float, float, i16, float, float, ptr, i16, i16, float, i16, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, [1 x i16], [1 x i16], float, float, float, float, ptr, ptr, ptr, [3 x [3 x float]], float, [3 x float], float, [4 x [4 x float]], [3 x [3 x float]], [8 x [3 x float]], float, ptr, [1 x ptr], [18 x ptr], i32, i32 }
%struct.SunSky = type { i16, i16, i16, float, float, float, [3 x float], float, float, float, float, [5 x float], [5 x float], [5 x float], float, float, float, float, float, float, float, float, float, float, float, float, float, float, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float] }

@R = external global %struct.Render, align 8
@hashvectf = external local_unnamed_addr constant [0 x float], align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @shadeHaloFloat(ptr noundef %0, ptr noundef %1, i32 noundef %2, float noundef %3, float noundef %4, float noundef %5, i16 noundef signext %6) local_unnamed_addr #0 {
  %8 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 23), align 2, !tbaa !34
  %9 = and i16 %8, 1
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %28, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 19
  %13 = load i8, ptr %12, align 1, !tbaa !56
  %14 = and i8 %13, 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 2
  %18 = load float, ptr %17, align 4, !tbaa !58
  br label %31

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 9
  %21 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 9, i64 2
  %22 = load float, ptr %21, align 8, !tbaa !59
  %23 = fneg float %22
  %24 = tail call float @mistfactor(float noundef %23, ptr noundef nonnull %20) #14
  %25 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 2
  %26 = load float, ptr %25, align 4, !tbaa !58
  %27 = fmul float %24, %26
  br label %31

28:                                               ; preds = %7
  %29 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 2
  %30 = load float, ptr %29, align 4, !tbaa !58
  br label %31

31:                                               ; preds = %16, %19, %28
  %32 = phi float [ %18, %16 ], [ %27, %19 ], [ %30, %28 ]
  %33 = fcmp oeq float %32, 0.000000e+00
  br i1 %33, label %374, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 29
  %36 = load ptr, ptr %35, align 8, !tbaa !60
  %37 = icmp eq ptr %36, null
  br i1 %37, label %69, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.Material, ptr %36, i64 0, i32 51
  %40 = load i32, ptr %39, align 4, !tbaa !61
  %41 = and i32 %40, 16
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %69, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 26
  %45 = load float, ptr %44, align 8, !tbaa !65
  %46 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 5
  %47 = load float, ptr %46, align 8, !tbaa !66
  %48 = fmul float %47, %47
  %49 = fdiv float %3, %48
  %50 = fsub float 1.000000e+00, %49
  %51 = tail call fastcc float @sasqrt(float noundef %50) #15
  %52 = fmul float %45, %51
  %53 = fmul float %52, 2.000000e+00
  %54 = fcmp olt float %53, 0x3E80000000000000
  br i1 %54, label %374, label %55

55:                                               ; preds = %43
  %56 = tail call fastcc float @haloZtoDist(i32 noundef %2) #15
  %57 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 15
  %58 = load i32, ptr %57, align 8, !tbaa !67
  %59 = tail call fastcc float @haloZtoDist(i32 noundef %58) #15
  %60 = fsub float %56, %59
  %61 = fcmp olt float %60, %52
  br i1 %61, label %62, label %84

62:                                               ; preds = %55
  %63 = fadd float %52, %60
  %64 = fdiv float %63, %53
  %65 = fcmp olt float %64, 1.000000e+00
  %66 = select i1 %65, float %64, float 1.000000e+00
  %67 = fmul float %32, %66
  %68 = fcmp ugt float %67, 0.000000e+00
  br i1 %68, label %84, label %374

69:                                               ; preds = %38, %34
  %70 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 15
  %71 = load i32, ptr %70, align 8, !tbaa !67
  %72 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 16
  %73 = load i32, ptr %72, align 4, !tbaa !68
  %74 = sub nsw i32 %2, %73
  %75 = icmp sgt i32 %71, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %69
  %77 = sub nsw i32 %2, %71
  %78 = sitofp i32 %77 to float
  %79 = sitofp i32 %73 to float
  %80 = fdiv float %78, %79
  %81 = tail call float @sqrtf(float noundef %80) #14
  %82 = tail call float @sqrtf(float noundef %81) #14
  %83 = fmul float %32, %82
  br label %84

84:                                               ; preds = %62, %55, %69, %76
  %85 = phi float [ %83, %76 ], [ %32, %69 ], [ %32, %55 ], [ %67, %62 ]
  %86 = tail call float @sqrtf(float noundef %3) #14
  %87 = icmp eq i16 %6, 0
  br i1 %87, label %96, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 5
  %90 = load float, ptr %89, align 8, !tbaa !66
  %91 = fsub float %90, %86
  %92 = fptosi float %91 to i32
  %93 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 27
  %94 = load i32, ptr %93, align 4, !tbaa !69
  %95 = add nsw i32 %94, %92
  store i32 %95, ptr %93, align 4, !tbaa !69
  br label %96

96:                                               ; preds = %88, %84
  %97 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 23
  %98 = load i8, ptr %97, align 1, !tbaa !70
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %127, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 24
  %102 = load i8, ptr %101, align 2, !tbaa !71
  %103 = zext i8 %98 to i32
  %104 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 5
  %105 = load float, ptr %104, align 8, !tbaa !66
  %106 = fneg float %86
  %107 = zext i8 %102 to i64
  br label %108

108:                                              ; preds = %100, %108
  %109 = phi i64 [ %107, %100 ], [ %125, %108 ]
  %110 = phi float [ 0.000000e+00, %100 ], [ %123, %108 ]
  %111 = phi i32 [ %103, %100 ], [ %124, %108 ]
  %112 = getelementptr inbounds float, ptr @hashvectf, i64 %109
  %113 = getelementptr inbounds float, ptr %112, i64 1
  %114 = load float, ptr %113, align 4, !tbaa !59
  %115 = load float, ptr %112, align 4, !tbaa !59
  %116 = tail call float @llvm.fabs.f32(float %115)
  %117 = tail call float @llvm.fmuladd.f32(float %105, float %116, float %106)
  %118 = fmul float %114, %117
  %119 = tail call float @llvm.fabs.f32(float %118)
  %120 = fcmp olt float %119, 1.000000e+00
  %121 = fsub float 1.000000e+00, %119
  %122 = select i1 %120, float %121, float -0.000000e+00
  %123 = fadd float %110, %122
  %124 = add nsw i32 %111, -1
  %125 = add nuw nsw i64 %109, 2
  %126 = icmp ugt i32 %111, 1
  br i1 %126, label %108, label %127, !llvm.loop !72

127:                                              ; preds = %108, %96
  %128 = phi float [ 0.000000e+00, %96 ], [ %123, %108 ]
  %129 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 19
  %130 = load i8, ptr %129, align 1, !tbaa !56
  %131 = and i8 %130, 2
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %156, label %133

133:                                              ; preds = %127
  %134 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 8
  %135 = load float, ptr %134, align 4, !tbaa !74
  %136 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 7
  %137 = load float, ptr %136, align 8, !tbaa !75
  %138 = fneg float %137
  %139 = fmul float %138, %4
  %140 = tail call float @llvm.fmuladd.f32(float %135, float %5, float %139)
  %141 = tail call float @llvm.fabs.f32(float %140)
  %142 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 5
  %143 = load float, ptr %142, align 8, !tbaa !66
  %144 = fdiv float %141, %143
  %145 = fcmp ogt float %144, 1.000000e+00
  %146 = select i1 %145, float 1.000000e+00, float %144
  %147 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 21
  %148 = load i8, ptr %147, align 1, !tbaa !76
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %160, label %150

150:                                              ; preds = %133
  %151 = fneg float %135
  %152 = fmul float %151, %5
  %153 = tail call float @llvm.fmuladd.f32(float %137, float %4, float %152)
  %154 = fmul float %137, %5
  %155 = tail call float @llvm.fmuladd.f32(float %135, float %4, float %154)
  br label %160

156:                                              ; preds = %127
  %157 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 6
  %158 = load float, ptr %157, align 4, !tbaa !77
  %159 = fdiv float %3, %158
  br label %160

160:                                              ; preds = %133, %150, %156
  %161 = phi float [ %155, %150 ], [ %5, %133 ], [ %5, %156 ]
  %162 = phi float [ %153, %150 ], [ %4, %133 ], [ %4, %156 ]
  %163 = phi float [ %146, %150 ], [ %146, %133 ], [ %159, %156 ]
  %164 = and i8 %130, 8
  %165 = icmp eq i8 %164, 0
  %166 = fadd float %163, -5.000000e-01
  %167 = tail call float @llvm.fabs.f32(float %166)
  %168 = fadd float %167, 5.000000e-01
  %169 = select i1 %165, float %163, float %168
  %170 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 11
  %171 = load float, ptr %170, align 8, !tbaa !78
  %172 = fcmp ult float %171, 3.000000e+01
  br i1 %172, label %184, label %173

173:                                              ; preds = %160
  %174 = tail call float @sqrtf(float noundef %169) #14
  %175 = load float, ptr %170, align 8, !tbaa !78
  %176 = fcmp ult float %175, 4.000000e+01
  br i1 %176, label %188, label %177

177:                                              ; preds = %173
  %178 = fmul float %174, 0x3FF921FB60000000
  %179 = tail call float @sinf(float noundef %178) #14
  %180 = load float, ptr %170, align 8, !tbaa !78
  %181 = fcmp ult float %180, 5.000000e+01
  br i1 %181, label %188, label %182

182:                                              ; preds = %177
  %183 = tail call float @sqrtf(float noundef %179) #14
  br label %188

184:                                              ; preds = %160
  %185 = fcmp olt float %171, 2.000000e+01
  br i1 %185, label %186, label %188

186:                                              ; preds = %184
  %187 = fmul float %169, %169
  br label %188

188:                                              ; preds = %184, %186, %173, %182, %177
  %189 = phi float [ %183, %182 ], [ %179, %177 ], [ %174, %173 ], [ %187, %186 ], [ %169, %184 ]
  %190 = fcmp olt float %189, 1.000000e+00
  %191 = fsub float 1.000000e+00, %189
  %192 = select i1 %190, float %191, float 0.000000e+00
  %193 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 22
  %194 = load i8, ptr %193, align 8, !tbaa !79
  %195 = icmp eq i8 %194, 0
  br i1 %195, label %223, label %196

196:                                              ; preds = %188
  %197 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 24
  %198 = load i8, ptr %197, align 2, !tbaa !71
  %199 = zext i8 %198 to i32
  %200 = zext i8 %194 to i32
  br label %201

201:                                              ; preds = %196, %201
  %202 = phi i32 [ %199, %196 ], [ %219, %201 ]
  %203 = phi float [ 0.000000e+00, %196 ], [ %217, %201 ]
  %204 = phi i32 [ %200, %196 ], [ %218, %201 ]
  %205 = urem i32 %202, 768
  %206 = zext nneg i32 %205 to i64
  %207 = getelementptr inbounds float, ptr @hashvectf, i64 %206
  %208 = load float, ptr %207, align 4, !tbaa !59
  %209 = getelementptr inbounds float, ptr %207, i64 1
  %210 = load float, ptr %209, align 4, !tbaa !59
  %211 = fmul float %161, %210
  %212 = tail call float @llvm.fmuladd.f32(float %162, float %208, float %211)
  %213 = tail call float @llvm.fabs.f32(float %212)
  %214 = fcmp olt float %213, 1.000000e+00
  %215 = fsub float 1.000000e+00, %213
  %216 = select i1 %214, float %215, float -0.000000e+00
  %217 = fadd float %203, %216
  %218 = add nsw i32 %204, -1
  %219 = add nuw nsw i32 %202, 3
  %220 = icmp ugt i32 %204, 1
  br i1 %220, label %201, label %221, !llvm.loop !80

221:                                              ; preds = %201
  %222 = fmul float %192, %217
  br label %223

223:                                              ; preds = %221, %188
  %224 = phi float [ %222, %221 ], [ 0.000000e+00, %188 ]
  %225 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 18
  %226 = load i8, ptr %225, align 4, !tbaa !81
  %227 = icmp eq i8 %226, 0
  br i1 %227, label %252, label %228

228:                                              ; preds = %223
  %229 = tail call float @atan2f(float noundef %161, float noundef %162) #14
  %230 = load i8, ptr %225, align 4, !tbaa !81
  %231 = uitofp i8 %230 to float
  %232 = tail call float @llvm.fmuladd.f32(float %231, float 2.500000e-01, float 1.000000e+00)
  %233 = fmul float %229, %232
  %234 = tail call float @cosf(float noundef %233) #14
  %235 = tail call float @sinf(float noundef %233) #14
  %236 = fmul float %161, %235
  %237 = tail call float @llvm.fmuladd.f32(float %234, float %162, float %236)
  %238 = fneg float %235
  %239 = fmul float %162, %238
  %240 = tail call float @llvm.fmuladd.f32(float %234, float %161, float %239)
  %241 = fmul float %237, %240
  %242 = tail call float @llvm.fabs.f32(float %241)
  %243 = fcmp ogt float %242, 1.000000e+00
  br i1 %243, label %244, label %252

244:                                              ; preds = %228
  %245 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 5
  %246 = load float, ptr %245, align 8, !tbaa !66
  %247 = fdiv float %246, %242
  %248 = fcmp olt float %247, 1.000000e+00
  br i1 %248, label %249, label %252

249:                                              ; preds = %244
  %250 = tail call float @sqrtf(float noundef %247) #14
  %251 = fmul float %192, %250
  br label %252

252:                                              ; preds = %228, %249, %244, %223
  %253 = phi float [ %192, %223 ], [ %251, %249 ], [ %192, %244 ], [ %192, %228 ]
  %254 = fcmp ugt float %253, 0x3EE4F8B580000000
  br i1 %254, label %255, label %374

255:                                              ; preds = %252
  %256 = fmul float %85, %253
  %257 = fmul float %128, %256
  %258 = fmul float %85, %224
  %259 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 21
  %260 = load i8, ptr %259, align 1, !tbaa !76
  %261 = icmp eq i8 %260, 0
  %262 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 14
  %263 = load float, ptr %262, align 4, !tbaa !82
  br i1 %261, label %282, label %264

264:                                              ; preds = %255
  store float %263, ptr %1, align 4, !tbaa !59
  %265 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 13
  %266 = load float, ptr %265, align 8, !tbaa !83
  %267 = getelementptr inbounds float, ptr %1, i64 1
  store float %266, ptr %267, align 4, !tbaa !59
  %268 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 12
  %269 = load float, ptr %268, align 4, !tbaa !84
  %270 = getelementptr inbounds float, ptr %1, i64 2
  store float %269, ptr %270, align 4, !tbaa !59
  %271 = getelementptr inbounds float, ptr %1, i64 3
  store float %256, ptr %271, align 4, !tbaa !59
  tail call void @do_halo_tex(ptr noundef nonnull %0, float noundef %162, float noundef %161, ptr noundef nonnull %1) #14
  %272 = load float, ptr %271, align 4, !tbaa !59
  %273 = load float, ptr %1, align 4, !tbaa !59
  %274 = load float, ptr %267, align 4, !tbaa !59
  %275 = insertelement <2 x float> poison, float %273, i64 0
  %276 = insertelement <2 x float> %275, float %272, i64 1
  %277 = insertelement <2 x float> poison, float %272, i64 0
  %278 = insertelement <2 x float> %277, float %274, i64 1
  %279 = fmul <2 x float> %276, %278
  store <2 x float> %279, ptr %1, align 4, !tbaa !59
  %280 = load float, ptr %270, align 4, !tbaa !59
  %281 = fmul float %272, %280
  store float %281, ptr %270, align 4, !tbaa !59
  br label %300

282:                                              ; preds = %255
  %283 = fmul float %256, %263
  store float %283, ptr %1, align 4, !tbaa !59
  %284 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 13
  %285 = load float, ptr %284, align 8, !tbaa !83
  %286 = fmul float %256, %285
  %287 = getelementptr inbounds float, ptr %1, i64 1
  store float %286, ptr %287, align 4, !tbaa !59
  %288 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 12
  %289 = load float, ptr %288, align 4, !tbaa !84
  %290 = fmul float %256, %289
  %291 = getelementptr inbounds float, ptr %1, i64 2
  store float %290, ptr %291, align 4, !tbaa !59
  %292 = load i8, ptr %129, align 1, !tbaa !56
  %293 = and i8 %292, 4
  %294 = icmp eq i8 %293, 0
  br i1 %294, label %298, label %295

295:                                              ; preds = %282
  %296 = fmul float %256, %256
  %297 = getelementptr inbounds float, ptr %1, i64 3
  store float %296, ptr %297, align 4, !tbaa !59
  br label %300

298:                                              ; preds = %282
  %299 = getelementptr inbounds float, ptr %1, i64 3
  store float %256, ptr %299, align 4, !tbaa !59
  br label %300

300:                                              ; preds = %295, %298, %264
  %301 = phi float [ %296, %295 ], [ %256, %298 ], [ %272, %264 ]
  %302 = load ptr, ptr %35, align 8, !tbaa !60
  %303 = icmp eq ptr %302, null
  br i1 %303, label %369, label %304

304:                                              ; preds = %300
  %305 = getelementptr inbounds %struct.Material, ptr %302, i64 0, i32 51
  %306 = load i32, ptr %305, align 4, !tbaa !61
  %307 = and i32 %306, 16384
  %308 = icmp ne i32 %307, 0
  %309 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 66), align 8
  %310 = icmp ne ptr %309, null
  %311 = select i1 %308, i1 %310, i1 false
  br i1 %311, label %312, label %313

312:                                              ; preds = %304
  tail call fastcc void @render_lighting_halo(ptr noundef nonnull %0, ptr noundef nonnull %1) #15
  br label %313

313:                                              ; preds = %312, %304
  %314 = fcmp une float %258, 0.000000e+00
  br i1 %314, label %315, label %339

315:                                              ; preds = %313
  %316 = load ptr, ptr %35, align 8, !tbaa !60
  %317 = getelementptr inbounds %struct.Material, ptr %316, i64 0, i32 7
  %318 = load float, ptr %317, align 8, !tbaa !85
  %319 = load float, ptr %1, align 4, !tbaa !59
  %320 = tail call float @llvm.fmuladd.f32(float %258, float %318, float %319)
  store float %320, ptr %1, align 4, !tbaa !59
  %321 = getelementptr inbounds %struct.Material, ptr %316, i64 0, i32 8
  %322 = load float, ptr %321, align 4, !tbaa !86
  %323 = getelementptr inbounds float, ptr %1, i64 1
  %324 = load float, ptr %323, align 4, !tbaa !59
  %325 = tail call float @llvm.fmuladd.f32(float %258, float %322, float %324)
  store float %325, ptr %323, align 4, !tbaa !59
  %326 = getelementptr inbounds %struct.Material, ptr %316, i64 0, i32 9
  %327 = load float, ptr %326, align 8, !tbaa !87
  %328 = getelementptr inbounds float, ptr %1, i64 2
  %329 = load float, ptr %328, align 4, !tbaa !59
  %330 = tail call float @llvm.fmuladd.f32(float %258, float %327, float %329)
  store float %330, ptr %328, align 4, !tbaa !59
  %331 = load i8, ptr %129, align 1, !tbaa !56
  %332 = and i8 %331, 4
  %333 = icmp eq i8 %332, 0
  %334 = getelementptr inbounds float, ptr %1, i64 3
  %335 = load float, ptr %334, align 4, !tbaa !59
  %336 = tail call float @llvm.fmuladd.f32(float %258, float %258, float %335)
  %337 = fadd float %258, %335
  %338 = select i1 %333, float %337, float %336
  store float %338, ptr %334, align 4, !tbaa !59
  br label %339

339:                                              ; preds = %315, %313
  %340 = fcmp une float %257, 0.000000e+00
  br i1 %340, label %344, label %341

341:                                              ; preds = %339
  %342 = getelementptr inbounds float, ptr %1, i64 3
  %343 = load float, ptr %342, align 4, !tbaa !59
  br label %369

344:                                              ; preds = %339
  %345 = load ptr, ptr %35, align 8, !tbaa !60
  %346 = getelementptr inbounds %struct.Material, ptr %345, i64 0, i32 10
  %347 = load float, ptr %346, align 4, !tbaa !88
  %348 = load float, ptr %1, align 4, !tbaa !59
  %349 = tail call float @llvm.fmuladd.f32(float %257, float %347, float %348)
  store float %349, ptr %1, align 4, !tbaa !59
  %350 = getelementptr inbounds %struct.Material, ptr %345, i64 0, i32 11
  %351 = load float, ptr %350, align 8, !tbaa !89
  %352 = getelementptr inbounds float, ptr %1, i64 1
  %353 = load float, ptr %352, align 4, !tbaa !59
  %354 = tail call float @llvm.fmuladd.f32(float %257, float %351, float %353)
  store float %354, ptr %352, align 4, !tbaa !59
  %355 = getelementptr inbounds %struct.Material, ptr %345, i64 0, i32 12
  %356 = load float, ptr %355, align 4, !tbaa !90
  %357 = getelementptr inbounds float, ptr %1, i64 2
  %358 = load float, ptr %357, align 4, !tbaa !59
  %359 = tail call float @llvm.fmuladd.f32(float %257, float %356, float %358)
  store float %359, ptr %357, align 4, !tbaa !59
  %360 = load i8, ptr %129, align 1, !tbaa !56
  %361 = and i8 %360, 4
  %362 = icmp eq i8 %361, 0
  %363 = getelementptr inbounds float, ptr %1, i64 3
  %364 = load float, ptr %363, align 4, !tbaa !59
  br i1 %362, label %367, label %365

365:                                              ; preds = %344
  %366 = tail call float @llvm.fmuladd.f32(float %257, float %257, float %364)
  store float %366, ptr %363, align 4, !tbaa !59
  br label %369

367:                                              ; preds = %344
  %368 = fadd float %257, %364
  store float %368, ptr %363, align 4, !tbaa !59
  br label %369

369:                                              ; preds = %341, %365, %367, %300
  %370 = phi float [ %343, %341 ], [ %366, %365 ], [ %368, %367 ], [ %301, %300 ]
  %371 = fcmp ogt float %370, 1.000000e+00
  br i1 %371, label %372, label %374

372:                                              ; preds = %369
  %373 = getelementptr inbounds float, ptr %1, i64 3
  store float 1.000000e+00, ptr %373, align 4, !tbaa !59
  br label %374

374:                                              ; preds = %43, %62, %369, %372, %252, %31
  %375 = phi i32 [ 0, %31 ], [ 0, %252 ], [ 1, %372 ], [ 1, %369 ], [ 0, %62 ], [ 0, %43 ]
  ret i32 %375
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare float @mistfactor(float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc float @sasqrt(float noundef %0) unnamed_addr #3 !PGOFuncName !91 {
  %2 = fcmp ugt float %0, 0.000000e+00
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = tail call float @sqrtf(float noundef %0) #14
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi float [ %4, %3 ], [ 0.000000e+00, %1 ]
  ret float %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc float @haloZtoDist(i32 noundef %0) unnamed_addr #4 !PGOFuncName !92 {
  %2 = icmp sgt i32 %0, 8388606
  br i1 %2, label %22, label %3

3:                                                ; preds = %1
  %4 = sitofp i32 %0 to float
  %5 = fdiv float %4, 0x415FFFFFC0000000
  %6 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !93
  %7 = and i32 %6, 8
  %8 = icmp eq i32 %7, 0
  %9 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 35, i64 3, i64 2), align 8, !tbaa !59
  br i1 %8, label %16, label %10

10:                                               ; preds = %3
  %11 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 35, i64 3, i64 3), align 4, !tbaa !59
  %12 = fneg float %5
  %13 = tail call float @llvm.fmuladd.f32(float %12, float %11, float %9)
  %14 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 35, i64 2, i64 2), align 8, !tbaa !59
  %15 = fdiv float %13, %14
  br label %22

16:                                               ; preds = %3
  %17 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 35, i64 2, i64 2), align 8, !tbaa !59
  %18 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 35, i64 2, i64 3), align 4, !tbaa !59
  %19 = fneg float %18
  %20 = tail call float @llvm.fmuladd.f32(float %19, float %5, float %17)
  %21 = fdiv float %9, %20
  br label %22

22:                                               ; preds = %1, %16, %10
  %23 = phi float [ %15, %10 ], [ %21, %16 ], [ 0x42374876E0000000, %1 ]
  ret float %23
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @do_halo_tex(ptr noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @render_lighting_halo(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #0 !PGOFuncName !94 {
  %3 = alloca [3 x float], align 8
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 8
  %6 = alloca [3 x float], align 8
  %7 = alloca %struct.ShadeInput, align 8
  %8 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #16
  %9 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 9
  call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %9) #15
  %10 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 5
  %11 = load float, ptr %10, align 8, !tbaa !66
  %12 = fdiv float 1.000000e+00, %11
  %13 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  store float %12, ptr %13, align 4, !tbaa !59
  %14 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  store float %12, ptr %14, align 4, !tbaa !59
  store float %12, ptr %4, align 4, !tbaa !59
  %15 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 10
  %16 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 66), align 8, !tbaa !95
  %17 = icmp eq ptr %16, null
  br i1 %17, label %250, label %18

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 28
  %20 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %21 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  %22 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %23 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %24 = getelementptr inbounds %struct.ShadeInput, ptr %7, i64 0, i32 29
  %25 = getelementptr inbounds %struct.ShadeInput, ptr %7, i64 0, i32 15
  %26 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  %27 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  %28 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 10, i64 1
  %29 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 10, i64 2
  br label %30

30:                                               ; preds = %18, %245
  %31 = phi ptr [ %16, %18 ], [ %248, %245 ]
  %32 = phi float [ 0.000000e+00, %18 ], [ %246, %245 ]
  %33 = phi <2 x float> [ zeroinitializer, %18 ], [ %247, %245 ]
  %34 = getelementptr inbounds %struct.GroupObject, ptr %31, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !96
  %36 = getelementptr inbounds %struct.LampRen, ptr %35, i64 0, i32 7
  %37 = load i32, ptr %36, align 4, !tbaa !98
  %38 = and i32 %37, 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %30
  %41 = getelementptr inbounds %struct.LampRen, ptr %35, i64 0, i32 17
  %42 = load i32, ptr %41, align 4, !tbaa !100
  %43 = load i32, ptr %19, align 8, !tbaa !101
  %44 = and i32 %43, %42
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %245, label %46

46:                                               ; preds = %40, %30
  %47 = getelementptr inbounds %struct.LampRen, ptr %35, i64 0, i32 6
  %48 = load i16, ptr %47, align 8, !tbaa !102
  switch i16 %48, label %52 [
    i16 1, label %49
    i16 3, label %49
  ]

49:                                               ; preds = %46, %46
  %50 = getelementptr inbounds %struct.LampRen, ptr %35, i64 0, i32 20
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %50) #15
  %51 = load i32, ptr %36, align 4, !tbaa !98
  br label %109

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.LampRen, ptr %35, i64 0, i32 5
  %54 = load <2 x float>, ptr %3, align 8, !tbaa !59
  %55 = load <2 x float>, ptr %53, align 4, !tbaa !59
  %56 = fsub <2 x float> %54, %55
  store <2 x float> %56, ptr %5, align 8, !tbaa !59
  %57 = load float, ptr %21, align 8, !tbaa !59
  %58 = getelementptr inbounds %struct.LampRen, ptr %35, i64 0, i32 5, i64 2
  %59 = load float, ptr %58, align 4, !tbaa !59
  %60 = fsub float %57, %59
  store float %60, ptr %22, align 8, !tbaa !59
  %61 = call fastcc float @len_v3(ptr noundef nonnull %5) #15
  %62 = load <2 x float>, ptr %5, align 8, !tbaa !59
  %63 = insertelement <2 x float> poison, float %61, i64 0
  %64 = shufflevector <2 x float> %63, <2 x float> poison, <2 x i32> zeroinitializer
  %65 = fdiv <2 x float> %62, %64
  store <2 x float> %65, ptr %5, align 8, !tbaa !59
  %66 = load float, ptr %22, align 8, !tbaa !59
  %67 = fdiv float %66, %61
  store float %67, ptr %22, align 8, !tbaa !59
  %68 = load i32, ptr %36, align 4, !tbaa !98
  %69 = and i32 %68, 8
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %92, label %71

71:                                               ; preds = %52
  %72 = getelementptr inbounds %struct.LampRen, ptr %35, i64 0, i32 28
  %73 = load float, ptr %72, align 8, !tbaa !103
  %74 = fcmp ogt float %73, 0.000000e+00
  br i1 %74, label %75, label %80

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.LampRen, ptr %35, i64 0, i32 4
  %77 = load float, ptr %76, align 8, !tbaa !104
  %78 = call float @llvm.fmuladd.f32(float %73, float %61, float %77)
  %79 = fdiv float %77, %78
  br label %80

80:                                               ; preds = %75, %71
  %81 = phi float [ %79, %75 ], [ 1.000000e+00, %71 ]
  %82 = getelementptr inbounds %struct.LampRen, ptr %35, i64 0, i32 29
  %83 = load float, ptr %82, align 4, !tbaa !105
  %84 = fcmp ogt float %83, 0.000000e+00
  br i1 %84, label %85, label %97

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.LampRen, ptr %35, i64 0, i32 23
  %87 = load float, ptr %86, align 4, !tbaa !106
  %88 = fmul float %61, %83
  %89 = call float @llvm.fmuladd.f32(float %88, float %61, float %87)
  %90 = fdiv float %87, %89
  %91 = fmul float %81, %90
  br label %97

92:                                               ; preds = %52
  %93 = getelementptr inbounds %struct.LampRen, ptr %35, i64 0, i32 4
  %94 = load float, ptr %93, align 8, !tbaa !104
  %95 = fadd float %61, %94
  %96 = fdiv float %94, %95
  br label %97

97:                                               ; preds = %80, %85, %92
  %98 = phi float [ %96, %92 ], [ %91, %85 ], [ %81, %80 ]
  %99 = and i32 %68, 64
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %109, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.LampRen, ptr %35, i64 0, i32 4
  %103 = load float, ptr %102, align 8, !tbaa !104
  %104 = fsub float %103, %61
  %105 = fcmp olt float %104, 0.000000e+00
  br i1 %105, label %245, label %106

106:                                              ; preds = %101
  %107 = fdiv float %104, %103
  %108 = fmul float %98, %107
  br label %109

109:                                              ; preds = %97, %106, %49
  %110 = phi i32 [ %51, %49 ], [ %68, %106 ], [ %68, %97 ]
  %111 = phi float [ 1.000000e+00, %49 ], [ %108, %106 ], [ %98, %97 ]
  %112 = getelementptr inbounds %struct.LampRen, ptr %35, i64 0, i32 8
  %113 = load <2 x float>, ptr %112, align 8, !tbaa !59
  store <2 x float> %113, ptr %6, align 8, !tbaa !59
  %114 = getelementptr inbounds %struct.LampRen, ptr %35, i64 0, i32 10
  %115 = load float, ptr %114, align 8, !tbaa !107
  store float %115, ptr %23, align 8, !tbaa !59
  %116 = and i32 %110, 256
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %109
  call void @llvm.lifetime.start.p0(i64 1472, ptr nonnull %7) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1472) %7, i8 0, i64 1472, i1 false)
  call fastcc void @copy_v3_v3(ptr noundef nonnull %24, ptr noundef nonnull %3) #15
  store i16 0, ptr %25, align 8, !tbaa !108
  call void @do_lamp_tex(ptr noundef nonnull %35, ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %6, i32 noundef 256) #14
  call void @llvm.lifetime.end.p0(i64 1472, ptr nonnull %7) #16
  br label %119

119:                                              ; preds = %118, %109
  %120 = load i16, ptr %47, align 8, !tbaa !102
  %121 = icmp eq i16 %120, 2
  br i1 %121, label %122, label %213

122:                                              ; preds = %119
  %123 = load i32, ptr %36, align 4, !tbaa !98
  %124 = and i32 %123, 128
  %125 = icmp eq i32 %124, 0
  %126 = load float, ptr %5, align 8, !tbaa !59
  %127 = getelementptr inbounds %struct.LampRen, ptr %35, i64 0, i32 20
  %128 = load float, ptr %127, align 8, !tbaa !59
  %129 = load float, ptr %20, align 4, !tbaa !59
  %130 = getelementptr inbounds %struct.LampRen, ptr %35, i64 0, i32 20, i64 1
  %131 = load float, ptr %130, align 4, !tbaa !59
  %132 = fmul float %129, %131
  %133 = call float @llvm.fmuladd.f32(float %126, float %128, float %132)
  %134 = load float, ptr %22, align 8, !tbaa !59
  %135 = getelementptr inbounds %struct.LampRen, ptr %35, i64 0, i32 20, i64 2
  %136 = load float, ptr %135, align 8, !tbaa !59
  %137 = call float @llvm.fmuladd.f32(float %134, float %136, float %133)
  br i1 %125, label %153, label %138

138:                                              ; preds = %122
  %139 = fcmp ogt float %137, 0.000000e+00
  br i1 %139, label %140, label %153

140:                                              ; preds = %138
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #16
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %5) #15
  %141 = getelementptr inbounds %struct.LampRen, ptr %35, i64 0, i32 59
  call void @mul_m3_v3(ptr noundef nonnull %141, ptr noundef nonnull %8) #14
  %142 = load float, ptr %8, align 4, !tbaa !59
  %143 = load float, ptr %26, align 4, !tbaa !59
  %144 = fdiv float %142, %143
  %145 = call float @llvm.fabs.f32(float %144)
  %146 = load float, ptr %27, align 4, !tbaa !59
  %147 = fdiv float %146, %143
  %148 = call float @llvm.fabs.f32(float %147)
  %149 = call fastcc float @max_ff(float noundef %145, float noundef %148) #15
  %150 = call float @llvm.fmuladd.f32(float %149, float %149, float 1.000000e+00)
  %151 = call float @llvm.sqrt.f32(float %150)
  %152 = fdiv float 1.000000e+00, %151
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #16
  br label %153

153:                                              ; preds = %122, %138, %140
  %154 = phi float [ %152, %140 ], [ 0.000000e+00, %138 ], [ %137, %122 ]
  %155 = getelementptr inbounds %struct.LampRen, ptr %35, i64 0, i32 18
  %156 = load float, ptr %155, align 8, !tbaa !110
  %157 = fcmp olt float %154, %156
  br i1 %157, label %245, label %158

158:                                              ; preds = %153
  %159 = fsub float %154, %156
  %160 = getelementptr inbounds %struct.LampRen, ptr %35, i64 0, i32 19
  %161 = load float, ptr %160, align 4, !tbaa !111
  %162 = fcmp olt float %159, %161
  %163 = fcmp une float %161, 0.000000e+00
  %164 = and i1 %162, %163
  br i1 %164, label %165, label %172

165:                                              ; preds = %158
  %166 = fdiv float %159, %161
  %167 = fmul float %166, %166
  %168 = fmul float %167, -2.000000e+00
  %169 = fmul float %166, %168
  %170 = call float @llvm.fmuladd.f32(float %167, float 3.000000e+00, float %169)
  %171 = fmul float %154, %170
  br label %172

172:                                              ; preds = %165, %158
  %173 = phi float [ %171, %165 ], [ %154, %158 ]
  %174 = phi float [ %170, %165 ], [ 1.000000e+00, %158 ]
  %175 = load i32, ptr %36, align 4, !tbaa !98
  %176 = and i32 %175, 32
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %206, label %178

178:                                              ; preds = %172
  %179 = load float, ptr %15, align 4, !tbaa !59
  %180 = load float, ptr %5, align 8, !tbaa !59
  %181 = load float, ptr %28, align 4, !tbaa !59
  %182 = load float, ptr %20, align 4, !tbaa !59
  %183 = fmul float %181, %182
  %184 = call float @llvm.fmuladd.f32(float %179, float %180, float %183)
  %185 = load float, ptr %29, align 4, !tbaa !59
  %186 = load float, ptr %22, align 8, !tbaa !59
  %187 = call float @llvm.fmuladd.f32(float %185, float %186, float %184)
  %188 = fcmp ogt float %187, 0.000000e+00
  br i1 %188, label %189, label %206

189:                                              ; preds = %178
  %190 = getelementptr inbounds %struct.LampRen, ptr %35, i64 0, i32 57
  %191 = load ptr, ptr %190, align 8, !tbaa !112
  %192 = call float @testshadowbuf(ptr noundef nonnull @R, ptr noundef %191, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %4, float noundef %187, float noundef 0.000000e+00) #14
  %193 = fcmp ogt float %192, 0.000000e+00
  br i1 %193, label %196, label %194

194:                                              ; preds = %189
  %195 = load i32, ptr %36, align 4, !tbaa !98
  br label %206

196:                                              ; preds = %189
  %197 = fmul float %174, %187
  %198 = getelementptr inbounds %struct.LampRen, ptr %35, i64 0, i32 15
  %199 = load float, ptr %198, align 4, !tbaa !113
  %200 = fmul float %197, %199
  %201 = fmul float %192, %200
  %202 = insertelement <2 x float> poison, float %201, i64 0
  %203 = shufflevector <2 x float> %202, <2 x float> poison, <2 x i32> zeroinitializer
  %204 = fsub <2 x float> %33, %203
  %205 = fsub float %32, %201
  br label %245

206:                                              ; preds = %194, %178, %172
  %207 = phi i32 [ %195, %194 ], [ %175, %178 ], [ %175, %172 ]
  %208 = and i32 %207, 32
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %245

210:                                              ; preds = %206
  %211 = fmul float %111, %173
  %212 = load i16, ptr %47, align 8, !tbaa !102
  br label %213

213:                                              ; preds = %210, %119
  %214 = phi i16 [ %212, %210 ], [ %120, %119 ]
  %215 = phi float [ %211, %210 ], [ %111, %119 ]
  %216 = call fastcc float @dot_v3v3(ptr noundef nonnull %15, ptr noundef nonnull %5) #15
  %217 = call float @llvm.fabs.f32(float %216)
  %218 = fsub float 1.000000e+00, %217
  %219 = icmp eq i16 %214, 3
  %220 = call float @llvm.fmuladd.f32(float %218, float 5.000000e-01, float 5.000000e-01)
  %221 = select i1 %219, float %220, float %218
  %222 = fcmp ogt float %221, 0.000000e+00
  %223 = select i1 %222, float %215, float 1.000000e+00
  %224 = fmul float %221, %223
  %225 = fcmp ogt float %224, 0xBFDA3D70A0000000
  br i1 %225, label %226, label %235

226:                                              ; preds = %213
  %227 = getelementptr inbounds %struct.LampRen, ptr %35, i64 0, i32 57
  %228 = load ptr, ptr %227, align 8, !tbaa !112
  %229 = icmp eq ptr %228, null
  br i1 %229, label %235, label %230

230:                                              ; preds = %226
  %231 = call float @testshadowbuf(ptr noundef nonnull @R, ptr noundef nonnull %228, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %4, float noundef %218, float noundef 0.000000e+00) #14
  %232 = fcmp oeq float %231, 0.000000e+00
  br i1 %232, label %245, label %233

233:                                              ; preds = %230
  %234 = fmul float %224, %231
  br label %235

235:                                              ; preds = %226, %233, %213
  %236 = phi float [ %234, %233 ], [ %224, %226 ], [ %224, %213 ]
  %237 = fcmp ogt float %236, 0.000000e+00
  br i1 %237, label %238, label %245

238:                                              ; preds = %235
  %239 = load <2 x float>, ptr %6, align 8, !tbaa !59
  %240 = insertelement <2 x float> poison, float %236, i64 0
  %241 = shufflevector <2 x float> %240, <2 x float> poison, <2 x i32> zeroinitializer
  %242 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %241, <2 x float> %239, <2 x float> %33)
  %243 = load float, ptr %23, align 8, !tbaa !59
  %244 = call float @llvm.fmuladd.f32(float %236, float %243, float %32)
  br label %245

245:                                              ; preds = %235, %238, %230, %206, %153, %101, %40, %196
  %246 = phi float [ %32, %40 ], [ %32, %153 ], [ %205, %196 ], [ %32, %206 ], [ %32, %230 ], [ %244, %238 ], [ %32, %235 ], [ %32, %101 ]
  %247 = phi <2 x float> [ %33, %40 ], [ %33, %153 ], [ %204, %196 ], [ %33, %206 ], [ %33, %230 ], [ %242, %238 ], [ %33, %235 ], [ %33, %101 ]
  %248 = load ptr, ptr %31, align 8, !tbaa !95
  %249 = icmp eq ptr %248, null
  br i1 %249, label %250, label %30, !llvm.loop !114

250:                                              ; preds = %245, %2
  %251 = phi float [ 0.000000e+00, %2 ], [ %246, %245 ]
  %252 = phi <2 x float> [ zeroinitializer, %2 ], [ %247, %245 ]
  %253 = fcmp olt <2 x float> %252, zeroinitializer
  %254 = fcmp olt float %251, 0.000000e+00
  %255 = select i1 %254, float 0.000000e+00, float %251
  %256 = select <2 x i1> %253, <2 x float> zeroinitializer, <2 x float> %252
  %257 = load <2 x float>, ptr %1, align 4, !tbaa !59
  %258 = fmul <2 x float> %256, %257
  store <2 x float> %258, ptr %1, align 4, !tbaa !59
  %259 = getelementptr inbounds float, ptr %1, i64 2
  %260 = load float, ptr %259, align 4, !tbaa !59
  %261 = fmul float %255, %260
  store float %261, ptr %259, align 4, !tbaa !59
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @shadeSkyView(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i16 noundef signext %4) local_unnamed_addr #0 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 8
  %8 = alloca [3 x float], align 8
  %9 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #16
  %10 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 22), align 8, !tbaa !115
  %11 = zext i16 %10 to i32
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %5
  %15 = tail call fastcc float @dot_v3v3(ptr noundef %2, ptr noundef nonnull getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 30)) #15
  %16 = fcmp olt float %15, 0.000000e+00
  %17 = select i1 %16, i32 0, i32 16
  %18 = tail call float @llvm.fabs.f32(float %15)
  store float %18, ptr %9, align 4, !tbaa !59
  br label %29

19:                                               ; preds = %5
  %20 = and i32 %11, 4
  %21 = icmp eq i32 %20, 0
  %22 = getelementptr inbounds float, ptr %2, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !59
  br i1 %21, label %26, label %24

24:                                               ; preds = %19
  %25 = tail call float @llvm.fmuladd.f32(float %23, float 5.000000e-01, float 5.000000e-01)
  store float %25, ptr %9, align 4, !tbaa !59
  br label %29

26:                                               ; preds = %19
  %27 = fadd float %23, 5.000000e-01
  %28 = tail call float @llvm.fabs.f32(float %27)
  store float %28, ptr %9, align 4, !tbaa !59
  br label %29

29:                                               ; preds = %24, %26, %14
  %30 = phi float [ %18, %14 ], [ %25, %24 ], [ %28, %26 ]
  %31 = phi i32 [ %17, %14 ], [ 16, %24 ], [ 16, %26 ]
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 6)) #15
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 9)) #15
  %32 = and i16 %10, 8
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %29
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef %2) #15
  %35 = and i16 %10, 2
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  call void @mul_m3_v3(ptr noundef nonnull getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 31), ptr noundef nonnull %6) #14
  %38 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %39 = load <2 x float>, ptr %38, align 4, !tbaa !59
  %40 = shufflevector <2 x float> %39, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %40, ptr %38, align 4, !tbaa !59
  br label %41

41:                                               ; preds = %37, %34
  call void @do_sky_tex(ptr noundef %1, ptr noundef nonnull %6, ptr noundef %3, ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull %9, i32 noundef %31, i16 noundef signext %4) #14
  %42 = load float, ptr %9, align 4, !tbaa !59
  br label %43

43:                                               ; preds = %41, %29
  %44 = phi float [ %42, %41 ], [ %30, %29 ]
  %45 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 22), align 8, !tbaa !115
  %46 = and i16 %45, 1
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %66, label %48

48:                                               ; preds = %43
  %49 = fcmp ogt float %44, 1.000000e+00
  %50 = select i1 %49, float 1.000000e+00, float %44
  %51 = fsub float 1.000000e+00, %50
  %52 = load <2 x float>, ptr %8, align 8, !tbaa !59
  %53 = load <2 x float>, ptr %7, align 8, !tbaa !59
  %54 = insertelement <2 x float> poison, float %50, i64 0
  %55 = shufflevector <2 x float> %54, <2 x float> poison, <2 x i32> zeroinitializer
  %56 = fmul <2 x float> %55, %53
  %57 = insertelement <2 x float> poison, float %51, i64 0
  %58 = shufflevector <2 x float> %57, <2 x float> poison, <2 x i32> zeroinitializer
  %59 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %58, <2 x float> %52, <2 x float> %56)
  %60 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  %61 = load float, ptr %60, align 8, !tbaa !59
  %62 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %63 = load float, ptr %62, align 8, !tbaa !59
  %64 = fmul float %50, %63
  %65 = call float @llvm.fmuladd.f32(float %51, float %61, float %64)
  br label %70

66:                                               ; preds = %43
  %67 = load <2 x float>, ptr %8, align 8, !tbaa !59
  %68 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  %69 = load float, ptr %68, align 8, !tbaa !59
  br label %70

70:                                               ; preds = %66, %48
  %71 = phi float [ %69, %66 ], [ %65, %48 ]
  %72 = phi <2 x float> [ %67, %66 ], [ %59, %48 ]
  store <2 x float> %72, ptr %0, align 4
  %73 = getelementptr inbounds float, ptr %0, i64 2
  store float %71, ptr %73, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !116 {
  %3 = load float, ptr %0, align 4, !tbaa !59
  %4 = load float, ptr %1, align 4, !tbaa !59
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !59
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !59
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !59
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !59
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !117 {
  %3 = load float, ptr %1, align 4, !tbaa !59
  store float %3, ptr %0, align 4, !tbaa !59
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !59
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !59
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !59
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !59
  ret void
}

; Function Attrs: optsize
declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @do_sky_tex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @shadeSunView(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #16
  %6 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 66), align 8, !tbaa !95
  %7 = icmp eq ptr %6, null
  br i1 %7, label %59, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  %10 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %11 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %12 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %13 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  br label %14

14:                                               ; preds = %8, %55
  %15 = phi ptr [ %6, %8 ], [ %57, %55 ]
  %16 = phi i8 [ 1, %8 ], [ %56, %55 ]
  %17 = getelementptr inbounds %struct.GroupObject, ptr %15, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !96
  %19 = getelementptr inbounds %struct.LampRen, ptr %18, i64 0, i32 6
  %20 = load i16, ptr %19, align 8, !tbaa !102
  %21 = icmp eq i16 %20, 1
  br i1 %21, label %22, label %55

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.LampRen, ptr %18, i64 0, i32 56
  %24 = load ptr, ptr %23, align 8, !tbaa !118
  %25 = icmp eq ptr %24, null
  br i1 %25, label %55, label %26

26:                                               ; preds = %22
  %27 = load i16, ptr %24, align 4, !tbaa !119
  %28 = and i16 %27, 1
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %55, label %30

30:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #16
  %31 = icmp eq i8 %16, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %30
  %33 = call fastcc float @normalize_v3_v3(ptr noundef nonnull %3, ptr noundef %1) #15
  call void @mul_m3_v3(ptr noundef nonnull getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 31), ptr noundef nonnull %3) #14
  %34 = load float, ptr %9, align 4, !tbaa !59
  %35 = fcmp olt float %34, 0.000000e+00
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store float 0.000000e+00, ptr %9, align 4, !tbaa !59
  br label %37

37:                                               ; preds = %36, %32
  %38 = call fastcc float @normalize_v3(ptr noundef nonnull %3) #15
  %39 = load ptr, ptr %23, align 8, !tbaa !118
  br label %40

40:                                               ; preds = %37, %30
  %41 = phi ptr [ %39, %37 ], [ %24, %30 ]
  call void @GetSkyXYZRadiancef(ptr noundef %41, ptr noundef nonnull %3, ptr noundef nonnull %5) #14
  %42 = load float, ptr %5, align 4, !tbaa !59
  %43 = load float, ptr %10, align 4, !tbaa !59
  %44 = load float, ptr %11, align 4, !tbaa !59
  %45 = load ptr, ptr %23, align 8, !tbaa !118
  %46 = getelementptr inbounds %struct.SunSky, ptr %45, i64 0, i32 2
  %47 = load i16, ptr %46, align 4, !tbaa !121
  %48 = sext i16 %47 to i32
  call void @xyz_to_rgb(float noundef %42, float noundef %43, float noundef %44, ptr noundef nonnull %4, ptr noundef nonnull %12, ptr noundef nonnull %13, i32 noundef %48) #14
  %49 = load ptr, ptr %23, align 8, !tbaa !118
  %50 = getelementptr inbounds %struct.SunSky, ptr %49, i64 0, i32 1
  %51 = load i16, ptr %50, align 2, !tbaa !122
  %52 = sext i16 %51 to i32
  %53 = getelementptr inbounds %struct.SunSky, ptr %49, i64 0, i32 19
  %54 = load float, ptr %53, align 4, !tbaa !123
  call void @ramp_blend(i32 noundef %52, ptr noundef %0, float noundef %54, ptr noundef nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #16
  br label %55

55:                                               ; preds = %14, %22, %26, %40
  %56 = phi i8 [ 0, %40 ], [ %16, %26 ], [ %16, %22 ], [ %16, %14 ]
  %57 = load ptr, ptr %15, align 8, !tbaa !95
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %14, !llvm.loop !124

59:                                               ; preds = %55, %2
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !125 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #15
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #14
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #15
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #15
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi float [ %6, %5 ], [ 0.000000e+00, %8 ]
  ret float %10
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3(ptr nocapture noundef %0) unnamed_addr #9 !PGOFuncName !126 {
  %2 = tail call fastcc float @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #15
  ret float %2
}

; Function Attrs: optsize
declare void @GetSkyXYZRadiancef(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @xyz_to_rgb(float noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ramp_blend(i32 noundef, ptr noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @shadeSkyPixel(ptr noundef %0, float noundef %1, float noundef %2, i16 noundef signext %3) local_unnamed_addr #0 {
  %5 = alloca [3 x float], align 8
  %6 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  %7 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 22), align 8, !tbaa !115
  %8 = zext i16 %7 to i32
  %9 = and i32 %8, 9
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  tail call fastcc void @copy_v3_v3(ptr noundef %0, ptr noundef nonnull getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 6)) #15
  br label %43

12:                                               ; preds = %4
  %13 = and i32 %8, 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %12
  %16 = load <2 x i32>, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 13), align 4, !tbaa !127
  %17 = sitofp <2 x i32> %16 to <2 x float>
  %18 = insertelement <2 x float> poison, float %1, i64 0
  %19 = insertelement <2 x float> %18, float %2, i64 1
  %20 = fdiv <2 x float> %19, %17
  %21 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %20, <2 x float> <float 2.000000e+00, float 2.000000e+00>, <2 x float> <float -1.000000e+00, float -1.000000e+00>)
  store <2 x float> %21, ptr %5, align 8, !tbaa !59
  %22 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  store float 0.000000e+00, ptr %22, align 8, !tbaa !59
  %23 = extractelement <2 x float> %17, i64 0
  %24 = fdiv float 1.000000e+00, %23
  store float %24, ptr %6, align 4, !tbaa !59
  %25 = extractelement <2 x float> %17, i64 1
  %26 = fdiv float 1.000000e+00, %25
  br label %39

27:                                               ; preds = %12
  call void @calc_view_vector(ptr noundef nonnull %5, float noundef %1, float noundef %2) #14
  %28 = call fastcc float @normalize_v3(ptr noundef nonnull %5) #15
  %29 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 22), align 8, !tbaa !115
  %30 = and i16 %29, 8
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %27
  %33 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 17), align 4, !tbaa !128
  %34 = fneg float %33
  %35 = fdiv float %34, %28
  store float %35, ptr %6, align 4, !tbaa !59
  %36 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 18), align 8, !tbaa !129
  %37 = fneg float %36
  %38 = fdiv float %37, %28
  br label %39

39:                                               ; preds = %15, %32
  %40 = phi float [ %38, %32 ], [ %26, %15 ]
  %41 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  store float %40, ptr %41, align 4, !tbaa !59
  br label %42

42:                                               ; preds = %39, %27
  call void @shadeSkyView(ptr noundef %0, ptr noundef null, ptr noundef nonnull %5, ptr noundef nonnull %6, i16 noundef signext %3) #15
  br label %43

43:                                               ; preds = %42, %11
  %44 = getelementptr inbounds float, ptr %0, i64 3
  store float 0.000000e+00, ptr %44, align 4, !tbaa !59
  call void @calc_view_vector(ptr noundef nonnull %5, float noundef %1, float noundef %2) #14
  call void @shadeSunView(ptr noundef nonnull %0, ptr noundef nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #16
  ret void
}

; Function Attrs: optsize
declare void @calc_view_vector(ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @shadeAtmPixel(ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #0 {
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #16
  call void @calc_view_vector(ptr noundef nonnull %6, float noundef %2, float noundef %3) #14
  %7 = call fastcc float @normalize_v3(ptr noundef nonnull %6) #15
  call void @AtmospherePixleShader(ptr noundef %0, ptr noundef nonnull %6, float noundef %4, ptr noundef %1) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #16
  ret void
}

; Function Attrs: optsize
declare void @AtmospherePixleShader(ptr noundef, ptr noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #9 !PGOFuncName !130 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #15
  %3 = tail call float @sqrtf(float noundef %2) #14
  ret float %3
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: optsize
declare void @do_lamp_tex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0, float noundef %1) unnamed_addr #11 !PGOFuncName !131 {
  %3 = fcmp ogt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: optsize
declare float @testshadowbuf(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #8 !PGOFuncName !132 {
  %4 = load float, ptr %1, align 4, !tbaa !59
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !59
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !59
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !59
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !59
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !59
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #12 !PGOFuncName !133 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !59
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !59
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #13

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind optsize }
attributes #15 = { optsize }
attributes #16 = { nounwind }

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
!34 = !{!35, !40, i64 5290}
!35 = !{!"Render", !36, i64 0, !36, i64 8, !37, i64 16, !39, i64 92, !40, i64 96, !40, i64 98, !40, i64 100, !40, i64 102, !37, i64 104, !36, i64 112, !36, i64 120, !41, i64 128, !39, i64 144, !39, i64 148, !39, i64 152, !42, i64 156, !43, i64 172, !44, i64 188, !44, i64 192, !44, i64 196, !39, i64 200, !39, i64 204, !39, i64 208, !39, i64 212, !44, i64 216, !44, i64 220, !44, i64 224, !44, i64 228, !44, i64 232, !44, i64 236, !37, i64 240, !37, i64 252, !37, i64 288, !37, i64 352, !37, i64 416, !37, i64 480, !44, i64 544, !44, i64 548, !36, i64 552, !37, i64 560, !37, i64 816, !36, i64 1072, !37, i64 1080, !36, i64 1088, !36, i64 1096, !45, i64 1104, !52, i64 5088, !36, i64 5616, !39, i64 5624, !39, i64 5628, !41, i64 5632, !36, i64 5648, !36, i64 5656, !36, i64 5664, !36, i64 5672, !44, i64 5680, !36, i64 5688, !41, i64 5696, !44, i64 5712, !44, i64 5716, !39, i64 5720, !39, i64 5724, !39, i64 5728, !39, i64 5732, !39, i64 5736, !36, i64 5744, !41, i64 5752, !41, i64 5768, !41, i64 5784, !36, i64 5800, !41, i64 5808, !39, i64 5824, !36, i64 5832, !36, i64 5840, !36, i64 5848, !36, i64 5856, !36, i64 5864, !41, i64 5872, !36, i64 5888, !41, i64 5896, !41, i64 5912, !36, i64 5928, !36, i64 5936, !36, i64 5944, !36, i64 5952, !36, i64 5960, !36, i64 5968, !36, i64 5976, !36, i64 5984, !36, i64 5992, !36, i64 6000, !36, i64 6008, !36, i64 6016, !36, i64 6024, !36, i64 6032, !36, i64 6040, !36, i64 6048, !36, i64 6056, !54, i64 6064, !36, i64 6216, !36, i64 6224, !36, i64 6232}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"short", !37, i64 0}
!41 = !{!"ListBase", !36, i64 0, !36, i64 8}
!42 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!43 = !{!"rctf", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12}
!44 = !{!"float", !37, i64 0}
!45 = !{!"RenderData", !46, i64 0, !36, i64 248, !36, i64 256, !49, i64 264, !50, i64 328, !39, i64 400, !39, i64 404, !39, i64 408, !44, i64 412, !39, i64 416, !39, i64 420, !39, i64 424, !39, i64 428, !40, i64 432, !40, i64 434, !44, i64 436, !44, i64 440, !44, i64 444, !44, i64 448, !44, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !39, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !39, i64 484, !39, i64 488, !40, i64 492, !40, i64 494, !39, i64 496, !39, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !37, i64 514, !37, i64 515, !39, i64 516, !39, i64 520, !39, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !43, i64 544, !43, i64 560, !42, i64 576, !41, i64 592, !40, i64 608, !40, i64 610, !44, i64 612, !44, i64 616, !44, i64 620, !44, i64 624, !39, i64 628, !44, i64 632, !44, i64 636, !44, i64 640, !44, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !44, i64 660, !44, i64 664, !40, i64 668, !40, i64 670, !44, i64 672, !44, i64 676, !37, i64 680, !39, i64 1704, !40, i64 1708, !40, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !39, i64 2520, !40, i64 2524, !40, i64 2526, !44, i64 2528, !44, i64 2532, !40, i64 2536, !40, i64 2538, !44, i64 2540, !40, i64 2544, !40, i64 2546, !39, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !44, i64 2560, !44, i64 2564, !36, i64 2568, !39, i64 2576, !44, i64 2580, !37, i64 2584, !51, i64 2616, !39, i64 3976, !39, i64 3980}
!46 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !40, i64 8, !40, i64 10, !44, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !47, i64 24, !48, i64 184}
!47 = !{!"ColorManagedViewSettings", !39, i64 0, !39, i64 4, !37, i64 8, !37, i64 72, !44, i64 136, !44, i64 140, !36, i64 144, !36, i64 152}
!48 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!49 = !{!"QuicktimeCodecSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !40, i64 48, !40, i64 50, !39, i64 52, !39, i64 56, !39, i64 60}
!50 = !{!"FFMpegCodecData", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !44, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !36, i64 64}
!51 = !{!"BakeData", !46, i64 0, !37, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !44, i64 1280, !44, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!52 = !{!"World", !53, i64 0, !36, i64 120, !40, i64 128, !40, i64 130, !40, i64 132, !40, i64 134, !44, i64 136, !44, i64 140, !44, i64 144, !44, i64 148, !44, i64 152, !44, i64 156, !44, i64 160, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180, !44, i64 184, !44, i64 188, !44, i64 192, !44, i64 196, !40, i64 200, !40, i64 202, !40, i64 204, !40, i64 206, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !44, i64 216, !44, i64 220, !44, i64 224, !44, i64 228, !44, i64 232, !44, i64 236, !44, i64 240, !44, i64 244, !44, i64 248, !44, i64 252, !44, i64 256, !44, i64 260, !40, i64 264, !40, i64 266, !40, i64 268, !40, i64 270, !44, i64 272, !44, i64 276, !44, i64 280, !44, i64 284, !40, i64 288, !40, i64 290, !40, i64 292, !40, i64 294, !44, i64 296, !44, i64 300, !44, i64 304, !44, i64 308, !44, i64 312, !44, i64 316, !44, i64 320, !40, i64 324, !40, i64 326, !40, i64 328, !40, i64 330, !40, i64 332, !40, i64 334, !36, i64 336, !36, i64 344, !36, i64 352, !37, i64 360, !40, i64 504, !40, i64 506, !37, i64 508, !36, i64 512, !36, i64 520}
!53 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !40, i64 98, !39, i64 100, !39, i64 104, !39, i64 108, !36, i64 112}
!54 = !{!"RenderStats", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !40, i64 28, !40, i64 30, !40, i64 32, !40, i64 34, !40, i64 36, !40, i64 38, !37, i64 40, !55, i64 48, !55, i64 56, !36, i64 64, !36, i64 72, !37, i64 80, !44, i64 144, !44, i64 148}
!55 = !{!"double", !37, i64 0}
!56 = !{!57, !37, i64 85}
!57 = !{!"HaloRen", !40, i64 0, !40, i64 2, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !37, i64 32, !37, i64 44, !44, i64 56, !44, i64 60, !44, i64 64, !44, i64 68, !39, i64 72, !39, i64 76, !39, i64 80, !37, i64 84, !37, i64 85, !37, i64 86, !37, i64 87, !37, i64 88, !37, i64 89, !37, i64 90, !40, i64 92, !44, i64 96, !39, i64 100, !39, i64 104, !36, i64 112, !36, i64 120}
!58 = !{!57, !44, i64 4}
!59 = !{!44, !44, i64 0}
!60 = !{!57, !36, i64 112}
!61 = !{!62, !39, i64 396}
!62 = !{!"Material", !53, i64 0, !36, i64 120, !40, i64 128, !40, i64 130, !44, i64 132, !44, i64 136, !44, i64 140, !44, i64 144, !44, i64 148, !44, i64 152, !44, i64 156, !44, i64 160, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180, !44, i64 184, !44, i64 188, !44, i64 192, !44, i64 196, !44, i64 200, !44, i64 204, !44, i64 208, !44, i64 212, !44, i64 216, !44, i64 220, !63, i64 224, !64, i64 312, !44, i64 328, !44, i64 332, !44, i64 336, !44, i64 340, !44, i64 344, !44, i64 348, !44, i64 352, !40, i64 356, !40, i64 358, !40, i64 360, !37, i64 362, !37, i64 363, !44, i64 364, !44, i64 368, !40, i64 372, !40, i64 374, !44, i64 376, !44, i64 380, !44, i64 384, !44, i64 388, !40, i64 392, !40, i64 394, !39, i64 396, !39, i64 400, !39, i64 404, !39, i64 408, !40, i64 412, !40, i64 414, !40, i64 416, !40, i64 418, !44, i64 420, !44, i64 424, !44, i64 428, !44, i64 432, !44, i64 436, !44, i64 440, !44, i64 444, !44, i64 448, !44, i64 452, !44, i64 456, !37, i64 460, !44, i64 524, !44, i64 528, !44, i64 532, !39, i64 536, !37, i64 540, !37, i64 541, !37, i64 542, !37, i64 543, !40, i64 544, !40, i64 546, !40, i64 548, !37, i64 550, !37, i64 551, !40, i64 552, !40, i64 554, !44, i64 556, !44, i64 560, !37, i64 564, !44, i64 580, !44, i64 584, !40, i64 588, !40, i64 590, !36, i64 592, !36, i64 600, !37, i64 608, !37, i64 609, !37, i64 610, !37, i64 611, !40, i64 612, !40, i64 614, !44, i64 616, !44, i64 620, !37, i64 624, !36, i64 768, !36, i64 776, !36, i64 784, !36, i64 792, !44, i64 800, !44, i64 804, !44, i64 808, !44, i64 812, !44, i64 816, !40, i64 820, !40, i64 822, !37, i64 824, !37, i64 836, !44, i64 848, !44, i64 852, !44, i64 856, !44, i64 860, !44, i64 864, !44, i64 868, !44, i64 872, !40, i64 876, !40, i64 878, !39, i64 880, !40, i64 884, !40, i64 886, !37, i64 888, !40, i64 904, !40, i64 906, !40, i64 908, !40, i64 910, !40, i64 912, !37, i64 914, !36, i64 920, !41, i64 928}
!63 = !{!"VolumeSettings", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !37, i64 16, !37, i64 28, !37, i64 40, !44, i64 52, !44, i64 56, !44, i64 60, !40, i64 64, !40, i64 66, !40, i64 68, !40, i64 70, !44, i64 72, !44, i64 76, !44, i64 80, !44, i64 84}
!64 = !{!"GameSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!65 = !{!57, !44, i64 96}
!66 = !{!57, !44, i64 16}
!67 = !{!57, !39, i64 72}
!68 = !{!57, !39, i64 76}
!69 = !{!57, !39, i64 100}
!70 = !{!57, !37, i64 89}
!71 = !{!57, !37, i64 90}
!72 = distinct !{!72, !73}
!73 = !{!"llvm.loop.mustprogress"}
!74 = !{!57, !44, i64 28}
!75 = !{!57, !44, i64 24}
!76 = !{!57, !37, i64 87}
!77 = !{!57, !44, i64 20}
!78 = !{!57, !44, i64 56}
!79 = !{!57, !37, i64 88}
!80 = distinct !{!80, !73}
!81 = !{!57, !37, i64 84}
!82 = !{!57, !44, i64 68}
!83 = !{!57, !44, i64 64}
!84 = !{!57, !44, i64 60}
!85 = !{!62, !44, i64 144}
!86 = !{!62, !44, i64 148}
!87 = !{!62, !44, i64 152}
!88 = !{!62, !44, i64 156}
!89 = !{!62, !44, i64 160}
!90 = !{!62, !44, i64 164}
!91 = !{!"pixelshading.c:sasqrt"}
!92 = !{!"pixelshading.c:haloZtoDist"}
!93 = !{!35, !39, i64 1624}
!94 = !{!"pixelshading.c:render_lighting_halo"}
!95 = !{!36, !36, i64 0}
!96 = !{!97, !36, i64 24}
!97 = !{!"GroupObject", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !40, i64 32, !37, i64 34}
!98 = !{!99, !39, i64 44}
!99 = !{!"LampRen", !36, i64 0, !36, i64 8, !44, i64 16, !44, i64 20, !44, i64 24, !37, i64 28, !40, i64 40, !39, i64 44, !44, i64 48, !44, i64 52, !44, i64 56, !44, i64 60, !44, i64 64, !44, i64 68, !44, i64 72, !44, i64 76, !44, i64 80, !39, i64 84, !44, i64 88, !44, i64 92, !37, i64 96, !44, i64 108, !44, i64 112, !44, i64 116, !44, i64 120, !44, i64 124, !44, i64 128, !40, i64 132, !44, i64 136, !44, i64 140, !36, i64 144, !40, i64 152, !40, i64 154, !44, i64 156, !40, i64 160, !40, i64 162, !40, i64 164, !40, i64 166, !40, i64 168, !44, i64 172, !44, i64 176, !44, i64 180, !44, i64 184, !40, i64 188, !40, i64 190, !40, i64 192, !40, i64 194, !40, i64 196, !40, i64 198, !40, i64 200, !37, i64 202, !37, i64 204, !44, i64 208, !44, i64 212, !44, i64 216, !44, i64 220, !36, i64 224, !36, i64 232, !36, i64 240, !37, i64 248, !44, i64 284, !37, i64 288, !44, i64 300, !37, i64 304, !37, i64 368, !37, i64 404, !44, i64 500, !36, i64 504, !37, i64 512, !37, i64 520, !39, i64 664, !39, i64 668}
!100 = !{!99, !39, i64 84}
!101 = !{!57, !39, i64 104}
!102 = !{!99, !40, i64 40}
!103 = !{!99, !44, i64 136}
!104 = !{!99, !44, i64 24}
!105 = !{!99, !44, i64 140}
!106 = !{!99, !44, i64 116}
!107 = !{!99, !44, i64 56}
!108 = !{!109, !40, i64 96}
!109 = !{!"ShadeInput", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !39, i64 40, !37, i64 44, !40, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !40, i64 88, !40, i64 90, !40, i64 92, !40, i64 94, !40, i64 96, !37, i64 100, !37, i64 112, !37, i64 124, !37, i64 136, !37, i64 148, !39, i64 160, !39, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180, !44, i64 184, !44, i64 188, !37, i64 192, !37, i64 204, !37, i64 216, !44, i64 228, !44, i64 232, !44, i64 236, !44, i64 240, !44, i64 244, !44, i64 248, !44, i64 252, !44, i64 256, !44, i64 260, !44, i64 264, !44, i64 268, !44, i64 272, !44, i64 276, !44, i64 280, !44, i64 284, !44, i64 288, !44, i64 292, !44, i64 296, !44, i64 300, !44, i64 304, !44, i64 308, !44, i64 312, !44, i64 316, !39, i64 320, !37, i64 324, !37, i64 336, !37, i64 348, !37, i64 360, !37, i64 372, !37, i64 384, !37, i64 400, !37, i64 416, !44, i64 428, !37, i64 432, !37, i64 444, !37, i64 456, !44, i64 472, !37, i64 476, !37, i64 492, !37, i64 504, !37, i64 520, !37, i64 904, !39, i64 1096, !39, i64 1100, !39, i64 1104, !39, i64 1108, !37, i64 1112, !37, i64 1124, !37, i64 1136, !37, i64 1148, !37, i64 1160, !37, i64 1172, !37, i64 1184, !37, i64 1196, !37, i64 1208, !37, i64 1220, !37, i64 1232, !37, i64 1244, !44, i64 1256, !44, i64 1260, !37, i64 1264, !37, i64 1276, !37, i64 1288, !37, i64 1300, !37, i64 1312, !37, i64 1324, !44, i64 1336, !44, i64 1340, !37, i64 1344, !37, i64 1356, !37, i64 1368, !39, i64 1380, !39, i64 1384, !39, i64 1388, !37, i64 1392, !39, i64 1404, !39, i64 1408, !39, i64 1412, !37, i64 1416, !44, i64 1428, !37, i64 1432, !37, i64 1433, !40, i64 1434, !40, i64 1436, !40, i64 1438, !39, i64 1440, !39, i64 1444, !39, i64 1448, !39, i64 1452, !36, i64 1456, !36, i64 1464}
!110 = !{!99, !44, i64 88}
!111 = !{!99, !44, i64 92}
!112 = !{!99, !36, i64 232}
!113 = !{!99, !44, i64 76}
!114 = distinct !{!114, !73}
!115 = !{!35, !40, i64 5288}
!116 = !{!"pixelshading.c:dot_v3v3"}
!117 = !{!"pixelshading.c:copy_v3_v3"}
!118 = !{!99, !36, i64 224}
!119 = !{!120, !40, i64 0}
!120 = !{!"SunSky", !40, i64 0, !40, i64 2, !40, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !37, i64 20, !44, i64 32, !44, i64 36, !44, i64 40, !44, i64 44, !37, i64 48, !37, i64 68, !37, i64 88, !44, i64 108, !44, i64 112, !44, i64 116, !44, i64 120, !44, i64 124, !44, i64 128, !44, i64 132, !44, i64 136, !44, i64 140, !44, i64 144, !44, i64 148, !44, i64 152, !44, i64 156, !44, i64 160, !37, i64 164, !37, i64 176, !37, i64 188, !37, i64 200, !37, i64 212}
!121 = !{!120, !40, i64 4}
!122 = !{!120, !40, i64 2}
!123 = !{!120, !44, i64 128}
!124 = distinct !{!124, !73}
!125 = !{!"pixelshading.c:normalize_v3_v3"}
!126 = !{!"pixelshading.c:normalize_v3"}
!127 = !{!39, !39, i64 0}
!128 = !{!35, !44, i64 188}
!129 = !{!35, !44, i64 192}
!130 = !{!"pixelshading.c:len_v3"}
!131 = !{!"pixelshading.c:max_ff"}
!132 = !{!"pixelshading.c:mul_v3_v3fl"}
!133 = !{!"pixelshading.c:zero_v3"}
