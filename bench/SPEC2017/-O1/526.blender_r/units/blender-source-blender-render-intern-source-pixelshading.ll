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
%struct.ShadeInput = type { ptr, ptr, ptr, ptr, ptr, i32, [3 x float], i16, ptr, ptr, ptr, i16, i16, i16, i16, i16, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, float, float, float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], float, [3 x float], [3 x float], [4 x float], float, [4 x float], [3 x float], [3 x float], [8 x %struct.ShadeInputUV], [8 x %struct.ShadeInputCol], i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, [3 x float], [3 x float], [3 x float], i32, i32, i32, [3 x float], i32, i32, i32, [3 x float], float, i8, i8, i16, i16, i16, i32, i32, i32, i32, ptr, ptr }
%struct.ShadeInputUV = type { [3 x float], [3 x float], [3 x float], ptr }
%struct.ShadeInputCol = type { [4 x float], ptr }
%struct.HaloRen = type { i16, i16, float, float, float, float, float, float, float, [3 x float], [3 x float], float, float, float, float, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i16, float, i32, i32, ptr, ptr }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.GroupObject = type { ptr, ptr, ptr, ptr, i16, [6 x i8] }
%struct.LampRen = type { ptr, ptr, float, float, float, [3 x float], i16, i32, float, float, float, float, float, float, float, float, float, i32, float, float, [3 x float], float, float, float, float, float, float, i16, float, float, ptr, i16, i16, float, i16, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, [1 x i16], [1 x i16], float, float, float, float, ptr, ptr, ptr, [3 x [3 x float]], float, [3 x float], float, [4 x [4 x float]], [3 x [3 x float]], [8 x [3 x float]], float, ptr, [1 x ptr], [18 x ptr], i32, i32 }
%struct.SunSky = type { i16, i16, i16, float, float, float, [3 x float], float, float, float, float, [5 x float], [5 x float], [5 x float], float, float, float, float, float, float, float, float, float, float, float, float, float, float, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float] }

@R = external global %struct.Render, align 8
@hashvectf = external local_unnamed_addr constant [0 x float], align 4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @shadeHaloFloat(ptr noundef %0, ptr noundef %1, i32 noundef %2, float noundef %3, float noundef %4, float noundef %5, i16 noundef signext %6) local_unnamed_addr #0 {
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca %struct.ShadeInput, align 8
  %13 = alloca [3 x float], align 4
  %14 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 23), align 2, !tbaa !34
  %15 = and i16 %14, 1
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %34, label %17

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 19
  %19 = load i8, ptr %18, align 1, !tbaa !56
  %20 = and i8 %19, 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 2
  %24 = load float, ptr %23, align 4, !tbaa !58
  br label %37

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 9
  %27 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 9, i64 2
  %28 = load float, ptr %27, align 8, !tbaa !59
  %29 = fneg float %28
  %30 = tail call float @mistfactor(float noundef %29, ptr noundef nonnull %26) #6
  %31 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 2
  %32 = load float, ptr %31, align 4, !tbaa !58
  %33 = fmul float %30, %32
  br label %37

34:                                               ; preds = %7
  %35 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 2
  %36 = load float, ptr %35, align 4, !tbaa !58
  br label %37

37:                                               ; preds = %22, %25, %34
  %38 = phi float [ %24, %22 ], [ %33, %25 ], [ %36, %34 ]
  %39 = fcmp oeq float %38, 0.000000e+00
  br i1 %39, label %730, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 29
  %42 = load ptr, ptr %41, align 8, !tbaa !60
  %43 = icmp eq ptr %42, null
  br i1 %43, label %125, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.Material, ptr %42, i64 0, i32 51
  %46 = load i32, ptr %45, align 4, !tbaa !61
  %47 = and i32 %46, 16
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %125, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 26
  %51 = load float, ptr %50, align 8, !tbaa !65
  %52 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 5
  %53 = load float, ptr %52, align 8, !tbaa !66
  %54 = fmul float %53, %53
  %55 = fdiv float %3, %54
  %56 = fsub float 1.000000e+00, %55
  %57 = fcmp ugt float %56, 0.000000e+00
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = tail call float @sqrtf(float noundef %56) #6
  br label %60

60:                                               ; preds = %49, %58
  %61 = phi float [ %59, %58 ], [ 0.000000e+00, %49 ]
  %62 = fmul float %51, %61
  %63 = fmul float %62, 2.000000e+00
  %64 = fcmp olt float %63, 0x3E80000000000000
  br i1 %64, label %122, label %65

65:                                               ; preds = %60
  %66 = icmp sgt i32 %2, 8388606
  br i1 %66, label %86, label %67

67:                                               ; preds = %65
  %68 = sitofp i32 %2 to float
  %69 = fdiv float %68, 0x415FFFFFC0000000
  %70 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !67
  %71 = and i32 %70, 8
  %72 = icmp eq i32 %71, 0
  %73 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 35, i64 3, i64 2), align 8, !tbaa !59
  br i1 %72, label %80, label %74

74:                                               ; preds = %67
  %75 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 35, i64 3, i64 3), align 4, !tbaa !59
  %76 = fneg float %69
  %77 = tail call float @llvm.fmuladd.f32(float %76, float %75, float %73)
  %78 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 35, i64 2, i64 2), align 8, !tbaa !59
  %79 = fdiv float %77, %78
  br label %86

80:                                               ; preds = %67
  %81 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 35, i64 2, i64 2), align 8, !tbaa !59
  %82 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 35, i64 2, i64 3), align 4, !tbaa !59
  %83 = fneg float %82
  %84 = tail call float @llvm.fmuladd.f32(float %83, float %69, float %81)
  %85 = fdiv float %73, %84
  br label %86

86:                                               ; preds = %65, %74, %80
  %87 = phi float [ %79, %74 ], [ %85, %80 ], [ 0x42374876E0000000, %65 ]
  %88 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 15
  %89 = load i32, ptr %88, align 8, !tbaa !68
  %90 = icmp sgt i32 %89, 8388606
  br i1 %90, label %110, label %91

91:                                               ; preds = %86
  %92 = sitofp i32 %89 to float
  %93 = fdiv float %92, 0x415FFFFFC0000000
  %94 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !67
  %95 = and i32 %94, 8
  %96 = icmp eq i32 %95, 0
  %97 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 35, i64 3, i64 2), align 8, !tbaa !59
  br i1 %96, label %104, label %98

98:                                               ; preds = %91
  %99 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 35, i64 3, i64 3), align 4, !tbaa !59
  %100 = fneg float %93
  %101 = tail call float @llvm.fmuladd.f32(float %100, float %99, float %97)
  %102 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 35, i64 2, i64 2), align 8, !tbaa !59
  %103 = fdiv float %101, %102
  br label %110

104:                                              ; preds = %91
  %105 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 35, i64 2, i64 2), align 8, !tbaa !59
  %106 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 35, i64 2, i64 3), align 4, !tbaa !59
  %107 = fneg float %106
  %108 = tail call float @llvm.fmuladd.f32(float %107, float %93, float %105)
  %109 = fdiv float %97, %108
  br label %110

110:                                              ; preds = %86, %98, %104
  %111 = phi float [ %103, %98 ], [ %109, %104 ], [ 0x42374876E0000000, %86 ]
  %112 = fsub float %87, %111
  %113 = fcmp olt float %112, %62
  br i1 %113, label %114, label %122

114:                                              ; preds = %110
  %115 = fadd float %62, %112
  %116 = fdiv float %115, %63
  %117 = fcmp olt float %116, 1.000000e+00
  %118 = select i1 %117, float %116, float 1.000000e+00
  %119 = fmul float %38, %118
  %120 = fcmp ugt float %119, 0.000000e+00
  br i1 %120, label %121, label %122

121:                                              ; preds = %114
  br label %122

122:                                              ; preds = %110, %114, %60, %121
  %123 = phi i1 [ false, %60 ], [ false, %114 ], [ true, %110 ], [ true, %121 ]
  %124 = phi float [ %38, %60 ], [ %119, %114 ], [ %38, %110 ], [ %119, %121 ]
  br i1 %123, label %140, label %730

125:                                              ; preds = %44, %40
  %126 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 15
  %127 = load i32, ptr %126, align 8, !tbaa !68
  %128 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 16
  %129 = load i32, ptr %128, align 4, !tbaa !69
  %130 = sub nsw i32 %2, %129
  %131 = icmp sgt i32 %127, %130
  br i1 %131, label %132, label %140

132:                                              ; preds = %125
  %133 = sub nsw i32 %2, %127
  %134 = sitofp i32 %133 to float
  %135 = sitofp i32 %129 to float
  %136 = fdiv float %134, %135
  %137 = tail call float @sqrtf(float noundef %136) #6
  %138 = tail call float @sqrtf(float noundef %137) #6
  %139 = fmul float %38, %138
  br label %140

140:                                              ; preds = %125, %132, %122
  %141 = phi float [ %124, %122 ], [ %139, %132 ], [ %38, %125 ]
  %142 = tail call float @sqrtf(float noundef %3) #6
  %143 = icmp eq i16 %6, 0
  br i1 %143, label %152, label %144

144:                                              ; preds = %140
  %145 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 5
  %146 = load float, ptr %145, align 8, !tbaa !66
  %147 = fsub float %146, %142
  %148 = fptosi float %147 to i32
  %149 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 27
  %150 = load i32, ptr %149, align 4, !tbaa !70
  %151 = add nsw i32 %150, %148
  store i32 %151, ptr %149, align 4, !tbaa !70
  br label %152

152:                                              ; preds = %144, %140
  %153 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 23
  %154 = load i8, ptr %153, align 1, !tbaa !71
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %183, label %156

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 24
  %158 = load i8, ptr %157, align 2, !tbaa !72
  %159 = zext i8 %154 to i32
  %160 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 5
  %161 = load float, ptr %160, align 8, !tbaa !66
  %162 = fneg float %142
  %163 = zext i8 %158 to i64
  br label %164

164:                                              ; preds = %156, %164
  %165 = phi i64 [ %163, %156 ], [ %181, %164 ]
  %166 = phi float [ 0.000000e+00, %156 ], [ %179, %164 ]
  %167 = phi i32 [ %159, %156 ], [ %180, %164 ]
  %168 = getelementptr inbounds float, ptr @hashvectf, i64 %165
  %169 = getelementptr inbounds float, ptr %168, i64 1
  %170 = load float, ptr %169, align 4, !tbaa !59
  %171 = load float, ptr %168, align 4, !tbaa !59
  %172 = tail call float @llvm.fabs.f32(float %171)
  %173 = tail call float @llvm.fmuladd.f32(float %161, float %172, float %162)
  %174 = fmul float %170, %173
  %175 = tail call float @llvm.fabs.f32(float %174)
  %176 = fcmp olt float %175, 1.000000e+00
  %177 = fsub float 1.000000e+00, %175
  %178 = select i1 %176, float %177, float -0.000000e+00
  %179 = fadd float %166, %178
  %180 = add nsw i32 %167, -1
  %181 = add nuw nsw i64 %165, 2
  %182 = icmp sgt i32 %167, 1
  br i1 %182, label %164, label %183, !llvm.loop !73

183:                                              ; preds = %164, %152
  %184 = phi float [ 0.000000e+00, %152 ], [ %179, %164 ]
  %185 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 19
  %186 = load i8, ptr %185, align 1, !tbaa !56
  %187 = and i8 %186, 2
  %188 = icmp eq i8 %187, 0
  br i1 %188, label %212, label %189

189:                                              ; preds = %183
  %190 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 8
  %191 = load float, ptr %190, align 4, !tbaa !76
  %192 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 7
  %193 = load float, ptr %192, align 8, !tbaa !77
  %194 = fneg float %193
  %195 = fmul float %194, %4
  %196 = tail call float @llvm.fmuladd.f32(float %191, float %5, float %195)
  %197 = tail call float @llvm.fabs.f32(float %196)
  %198 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 5
  %199 = load float, ptr %198, align 8, !tbaa !66
  %200 = fdiv float %197, %199
  %201 = fcmp ogt float %200, 1.000000e+00
  %202 = select i1 %201, float 1.000000e+00, float %200
  %203 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 21
  %204 = load i8, ptr %203, align 1, !tbaa !78
  %205 = icmp eq i8 %204, 0
  br i1 %205, label %216, label %206

206:                                              ; preds = %189
  %207 = fneg float %191
  %208 = fmul float %207, %5
  %209 = tail call float @llvm.fmuladd.f32(float %193, float %4, float %208)
  %210 = fmul float %193, %5
  %211 = tail call float @llvm.fmuladd.f32(float %191, float %4, float %210)
  br label %216

212:                                              ; preds = %183
  %213 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 6
  %214 = load float, ptr %213, align 4, !tbaa !79
  %215 = fdiv float %3, %214
  br label %216

216:                                              ; preds = %189, %206, %212
  %217 = phi float [ %211, %206 ], [ %5, %189 ], [ %5, %212 ]
  %218 = phi float [ %209, %206 ], [ %4, %189 ], [ %4, %212 ]
  %219 = phi float [ %202, %206 ], [ %202, %189 ], [ %215, %212 ]
  %220 = and i8 %186, 8
  %221 = icmp eq i8 %220, 0
  %222 = fadd float %219, -5.000000e-01
  %223 = tail call float @llvm.fabs.f32(float %222)
  %224 = fadd float %223, 5.000000e-01
  %225 = select i1 %221, float %219, float %224
  %226 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 11
  %227 = load float, ptr %226, align 8, !tbaa !80
  %228 = fcmp ult float %227, 3.000000e+01
  br i1 %228, label %240, label %229

229:                                              ; preds = %216
  %230 = tail call float @sqrtf(float noundef %225) #6
  %231 = load float, ptr %226, align 8, !tbaa !80
  %232 = fcmp ult float %231, 4.000000e+01
  br i1 %232, label %244, label %233

233:                                              ; preds = %229
  %234 = fmul float %230, 0x3FF921FB60000000
  %235 = tail call float @sinf(float noundef %234) #6
  %236 = load float, ptr %226, align 8, !tbaa !80
  %237 = fcmp ult float %236, 5.000000e+01
  br i1 %237, label %244, label %238

238:                                              ; preds = %233
  %239 = tail call float @sqrtf(float noundef %235) #6
  br label %244

240:                                              ; preds = %216
  %241 = fcmp olt float %227, 2.000000e+01
  br i1 %241, label %242, label %244

242:                                              ; preds = %240
  %243 = fmul float %225, %225
  br label %244

244:                                              ; preds = %240, %242, %229, %238, %233
  %245 = phi float [ %239, %238 ], [ %235, %233 ], [ %230, %229 ], [ %243, %242 ], [ %225, %240 ]
  %246 = fcmp olt float %245, 1.000000e+00
  %247 = fsub float 1.000000e+00, %245
  %248 = select i1 %246, float %247, float 0.000000e+00
  %249 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 22
  %250 = load i8, ptr %249, align 8, !tbaa !81
  %251 = icmp eq i8 %250, 0
  br i1 %251, label %279, label %252

252:                                              ; preds = %244
  %253 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 24
  %254 = load i8, ptr %253, align 2, !tbaa !72
  %255 = zext i8 %254 to i32
  %256 = zext i8 %250 to i32
  br label %257

257:                                              ; preds = %252, %257
  %258 = phi i32 [ %255, %252 ], [ %275, %257 ]
  %259 = phi float [ 0.000000e+00, %252 ], [ %273, %257 ]
  %260 = phi i32 [ %256, %252 ], [ %274, %257 ]
  %261 = urem i32 %258, 768
  %262 = zext nneg i32 %261 to i64
  %263 = getelementptr inbounds float, ptr @hashvectf, i64 %262
  %264 = load float, ptr %263, align 4, !tbaa !59
  %265 = getelementptr inbounds float, ptr %263, i64 1
  %266 = load float, ptr %265, align 4, !tbaa !59
  %267 = fmul float %217, %266
  %268 = tail call float @llvm.fmuladd.f32(float %218, float %264, float %267)
  %269 = tail call float @llvm.fabs.f32(float %268)
  %270 = fcmp olt float %269, 1.000000e+00
  %271 = fsub float 1.000000e+00, %269
  %272 = select i1 %270, float %271, float -0.000000e+00
  %273 = fadd float %259, %272
  %274 = add nsw i32 %260, -1
  %275 = add nuw nsw i32 %258, 3
  %276 = icmp sgt i32 %260, 1
  br i1 %276, label %257, label %277, !llvm.loop !82

277:                                              ; preds = %257
  %278 = fmul float %248, %273
  br label %279

279:                                              ; preds = %277, %244
  %280 = phi float [ %278, %277 ], [ 0.000000e+00, %244 ]
  %281 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 18
  %282 = load i8, ptr %281, align 4, !tbaa !83
  %283 = icmp eq i8 %282, 0
  br i1 %283, label %308, label %284

284:                                              ; preds = %279
  %285 = tail call float @atan2f(float noundef %217, float noundef %218) #6
  %286 = load i8, ptr %281, align 4, !tbaa !83
  %287 = uitofp i8 %286 to float
  %288 = tail call float @llvm.fmuladd.f32(float %287, float 2.500000e-01, float 1.000000e+00)
  %289 = fmul float %285, %288
  %290 = tail call float @cosf(float noundef %289) #6
  %291 = tail call float @sinf(float noundef %289) #6
  %292 = fmul float %217, %291
  %293 = tail call float @llvm.fmuladd.f32(float %290, float %218, float %292)
  %294 = fneg float %291
  %295 = fmul float %218, %294
  %296 = tail call float @llvm.fmuladd.f32(float %290, float %217, float %295)
  %297 = fmul float %293, %296
  %298 = tail call float @llvm.fabs.f32(float %297)
  %299 = fcmp ogt float %298, 1.000000e+00
  br i1 %299, label %300, label %308

300:                                              ; preds = %284
  %301 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 5
  %302 = load float, ptr %301, align 8, !tbaa !66
  %303 = fdiv float %302, %298
  %304 = fcmp olt float %303, 1.000000e+00
  br i1 %304, label %305, label %308

305:                                              ; preds = %300
  %306 = tail call float @sqrtf(float noundef %303) #6
  %307 = fmul float %248, %306
  br label %308

308:                                              ; preds = %284, %305, %300, %279
  %309 = phi float [ %248, %279 ], [ %307, %305 ], [ %248, %300 ], [ %248, %284 ]
  %310 = fcmp ugt float %309, 0x3EE4F8B580000000
  br i1 %310, label %311, label %730

311:                                              ; preds = %308
  %312 = fmul float %141, %309
  %313 = fmul float %184, %312
  %314 = fmul float %141, %280
  %315 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 21
  %316 = load i8, ptr %315, align 1, !tbaa !78
  %317 = icmp eq i8 %316, 0
  %318 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 14
  %319 = load float, ptr %318, align 4, !tbaa !84
  br i1 %317, label %335, label %320

320:                                              ; preds = %311
  store float %319, ptr %1, align 4, !tbaa !59
  %321 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 13
  %322 = load float, ptr %321, align 8, !tbaa !85
  %323 = getelementptr inbounds float, ptr %1, i64 1
  store float %322, ptr %323, align 4, !tbaa !59
  %324 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 12
  %325 = load float, ptr %324, align 4, !tbaa !86
  %326 = getelementptr inbounds float, ptr %1, i64 2
  store float %325, ptr %326, align 4, !tbaa !59
  %327 = getelementptr inbounds float, ptr %1, i64 3
  store float %312, ptr %327, align 4, !tbaa !59
  tail call void @do_halo_tex(ptr noundef %0, float noundef %218, float noundef %217, ptr noundef nonnull %1) #6
  %328 = load float, ptr %327, align 4, !tbaa !59
  %329 = load float, ptr %1, align 4, !tbaa !59
  %330 = fmul float %328, %329
  store float %330, ptr %1, align 4, !tbaa !59
  %331 = load float, ptr %323, align 4, !tbaa !59
  %332 = fmul float %328, %331
  store float %332, ptr %323, align 4, !tbaa !59
  %333 = load float, ptr %326, align 4, !tbaa !59
  %334 = fmul float %328, %333
  store float %334, ptr %326, align 4, !tbaa !59
  br label %353

335:                                              ; preds = %311
  %336 = fmul float %312, %319
  store float %336, ptr %1, align 4, !tbaa !59
  %337 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 13
  %338 = load float, ptr %337, align 8, !tbaa !85
  %339 = fmul float %312, %338
  %340 = getelementptr inbounds float, ptr %1, i64 1
  store float %339, ptr %340, align 4, !tbaa !59
  %341 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 12
  %342 = load float, ptr %341, align 4, !tbaa !86
  %343 = fmul float %312, %342
  %344 = getelementptr inbounds float, ptr %1, i64 2
  store float %343, ptr %344, align 4, !tbaa !59
  %345 = load i8, ptr %185, align 1, !tbaa !56
  %346 = and i8 %345, 4
  %347 = icmp eq i8 %346, 0
  br i1 %347, label %351, label %348

348:                                              ; preds = %335
  %349 = fmul float %312, %312
  %350 = getelementptr inbounds float, ptr %1, i64 3
  store float %349, ptr %350, align 4, !tbaa !59
  br label %353

351:                                              ; preds = %335
  %352 = getelementptr inbounds float, ptr %1, i64 3
  store float %312, ptr %352, align 4, !tbaa !59
  br label %353

353:                                              ; preds = %348, %351, %320
  %354 = load ptr, ptr %41, align 8, !tbaa !60
  %355 = icmp eq ptr %354, null
  br i1 %355, label %725, label %356

356:                                              ; preds = %353
  %357 = getelementptr inbounds %struct.Material, ptr %354, i64 0, i32 51
  %358 = load i32, ptr %357, align 4, !tbaa !61
  %359 = and i32 %358, 16384
  %360 = icmp ne i32 %359, 0
  %361 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 66), align 8
  %362 = icmp ne ptr %361, null
  %363 = select i1 %360, i1 %362, i1 false
  br i1 %363, label %364, label %673

364:                                              ; preds = %356
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #6
  %365 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 9
  %366 = load float, ptr %365, align 4, !tbaa !59
  store float %366, ptr %8, align 4, !tbaa !59
  %367 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 9, i64 1
  %368 = load float, ptr %367, align 4, !tbaa !59
  %369 = getelementptr inbounds float, ptr %8, i64 1
  store float %368, ptr %369, align 4, !tbaa !59
  %370 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 9, i64 2
  %371 = load float, ptr %370, align 4, !tbaa !59
  %372 = getelementptr inbounds float, ptr %8, i64 2
  store float %371, ptr %372, align 4, !tbaa !59
  %373 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 5
  %374 = load float, ptr %373, align 8, !tbaa !66
  %375 = fdiv float 1.000000e+00, %374
  %376 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  store float %375, ptr %376, align 4, !tbaa !59
  %377 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  store float %375, ptr %377, align 4, !tbaa !59
  store float %375, ptr %9, align 4, !tbaa !59
  %378 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 10
  %379 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 66), align 8, !tbaa !87
  %380 = icmp eq ptr %379, null
  br i1 %380, label %655, label %381

381:                                              ; preds = %364
  %382 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 28
  %383 = getelementptr inbounds float, ptr %10, i64 1
  %384 = getelementptr inbounds float, ptr %10, i64 2
  %385 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 1
  %386 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  %387 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 1
  %388 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 2
  %389 = getelementptr inbounds %struct.ShadeInput, ptr %12, i64 0, i32 29
  %390 = getelementptr inbounds %struct.ShadeInput, ptr %12, i64 0, i32 29, i64 1
  %391 = getelementptr inbounds %struct.ShadeInput, ptr %12, i64 0, i32 29, i64 2
  %392 = getelementptr inbounds %struct.ShadeInput, ptr %12, i64 0, i32 15
  %393 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 1
  %394 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  %395 = getelementptr inbounds float, ptr %13, i64 1
  %396 = getelementptr inbounds float, ptr %13, i64 2
  %397 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 1
  %398 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  %399 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 10, i64 1
  %400 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 1
  %401 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 10, i64 2
  %402 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  %403 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 10, i64 1
  %404 = getelementptr inbounds float, ptr %10, i64 1
  %405 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 10, i64 2
  %406 = getelementptr inbounds float, ptr %10, i64 2
  br label %407

407:                                              ; preds = %381, %649
  %408 = phi ptr [ %379, %381 ], [ %653, %649 ]
  %409 = phi float [ 0.000000e+00, %381 ], [ %652, %649 ]
  %410 = phi float [ 0.000000e+00, %381 ], [ %651, %649 ]
  %411 = phi float [ 0.000000e+00, %381 ], [ %650, %649 ]
  %412 = getelementptr inbounds %struct.GroupObject, ptr %408, i64 0, i32 3
  %413 = load ptr, ptr %412, align 8, !tbaa !88
  %414 = getelementptr inbounds %struct.LampRen, ptr %413, i64 0, i32 7
  %415 = load i32, ptr %414, align 4, !tbaa !90
  %416 = and i32 %415, 4
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %424, label %418

418:                                              ; preds = %407
  %419 = getelementptr inbounds %struct.LampRen, ptr %413, i64 0, i32 17
  %420 = load i32, ptr %419, align 4, !tbaa !92
  %421 = load i32, ptr %382, align 8, !tbaa !93
  %422 = and i32 %421, %420
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %649, label %424

424:                                              ; preds = %418, %407
  %425 = getelementptr inbounds %struct.LampRen, ptr %413, i64 0, i32 6
  %426 = load i16, ptr %425, align 8, !tbaa !94
  switch i16 %426, label %434 [
    i16 1, label %427
    i16 3, label %427
  ]

427:                                              ; preds = %424, %424
  %428 = getelementptr inbounds %struct.LampRen, ptr %413, i64 0, i32 20
  %429 = load float, ptr %428, align 4, !tbaa !59
  store float %429, ptr %10, align 4, !tbaa !59
  %430 = getelementptr inbounds %struct.LampRen, ptr %413, i64 0, i32 20, i64 1
  %431 = load float, ptr %430, align 4, !tbaa !59
  store float %431, ptr %383, align 4, !tbaa !59
  %432 = getelementptr inbounds %struct.LampRen, ptr %413, i64 0, i32 20, i64 2
  %433 = load float, ptr %432, align 4, !tbaa !59
  store float %433, ptr %384, align 4, !tbaa !59
  br label %498

434:                                              ; preds = %424
  %435 = load float, ptr %8, align 4, !tbaa !59
  %436 = getelementptr inbounds %struct.LampRen, ptr %413, i64 0, i32 5
  %437 = load float, ptr %436, align 4, !tbaa !59
  %438 = fsub float %435, %437
  store float %438, ptr %10, align 4, !tbaa !59
  %439 = load float, ptr %369, align 4, !tbaa !59
  %440 = getelementptr inbounds %struct.LampRen, ptr %413, i64 0, i32 5, i64 1
  %441 = load float, ptr %440, align 4, !tbaa !59
  %442 = fsub float %439, %441
  store float %442, ptr %385, align 4, !tbaa !59
  %443 = load float, ptr %372, align 4, !tbaa !59
  %444 = getelementptr inbounds %struct.LampRen, ptr %413, i64 0, i32 5, i64 2
  %445 = load float, ptr %444, align 4, !tbaa !59
  %446 = fsub float %443, %445
  store float %446, ptr %386, align 4, !tbaa !59
  %447 = fmul float %442, %442
  %448 = call float @llvm.fmuladd.f32(float %438, float %438, float %447)
  %449 = call float @llvm.fmuladd.f32(float %446, float %446, float %448)
  %450 = call float @sqrtf(float noundef %449) #6
  %451 = load float, ptr %10, align 4, !tbaa !59
  %452 = fdiv float %451, %450
  store float %452, ptr %10, align 4, !tbaa !59
  %453 = load float, ptr %385, align 4, !tbaa !59
  %454 = fdiv float %453, %450
  store float %454, ptr %385, align 4, !tbaa !59
  %455 = load float, ptr %386, align 4, !tbaa !59
  %456 = fdiv float %455, %450
  store float %456, ptr %386, align 4, !tbaa !59
  %457 = load i32, ptr %414, align 4, !tbaa !90
  %458 = and i32 %457, 8
  %459 = icmp eq i32 %458, 0
  br i1 %459, label %481, label %460

460:                                              ; preds = %434
  %461 = getelementptr inbounds %struct.LampRen, ptr %413, i64 0, i32 28
  %462 = load float, ptr %461, align 8, !tbaa !95
  %463 = fcmp ogt float %462, 0.000000e+00
  br i1 %463, label %464, label %469

464:                                              ; preds = %460
  %465 = getelementptr inbounds %struct.LampRen, ptr %413, i64 0, i32 4
  %466 = load float, ptr %465, align 8, !tbaa !96
  %467 = call float @llvm.fmuladd.f32(float %462, float %450, float %466)
  %468 = fdiv float %466, %467
  br label %469

469:                                              ; preds = %464, %460
  %470 = phi float [ %468, %464 ], [ 1.000000e+00, %460 ]
  %471 = getelementptr inbounds %struct.LampRen, ptr %413, i64 0, i32 29
  %472 = load float, ptr %471, align 4, !tbaa !97
  %473 = fcmp ogt float %472, 0.000000e+00
  br i1 %473, label %474, label %486

474:                                              ; preds = %469
  %475 = getelementptr inbounds %struct.LampRen, ptr %413, i64 0, i32 23
  %476 = load float, ptr %475, align 4, !tbaa !98
  %477 = fmul float %450, %472
  %478 = call float @llvm.fmuladd.f32(float %477, float %450, float %476)
  %479 = fdiv float %476, %478
  %480 = fmul float %470, %479
  br label %486

481:                                              ; preds = %434
  %482 = getelementptr inbounds %struct.LampRen, ptr %413, i64 0, i32 4
  %483 = load float, ptr %482, align 8, !tbaa !96
  %484 = fadd float %450, %483
  %485 = fdiv float %483, %484
  br label %486

486:                                              ; preds = %481, %474, %469
  %487 = phi float [ %485, %481 ], [ %480, %474 ], [ %470, %469 ]
  %488 = and i32 %457, 64
  %489 = icmp eq i32 %488, 0
  br i1 %489, label %498, label %490

490:                                              ; preds = %486
  %491 = getelementptr inbounds %struct.LampRen, ptr %413, i64 0, i32 4
  %492 = load float, ptr %491, align 8, !tbaa !96
  %493 = fsub float %492, %450
  %494 = fcmp olt float %493, 0.000000e+00
  br i1 %494, label %649, label %495

495:                                              ; preds = %490
  %496 = fdiv float %493, %492
  %497 = fmul float %487, %496
  br label %498

498:                                              ; preds = %495, %486, %427
  %499 = phi float [ 1.000000e+00, %427 ], [ %497, %495 ], [ %487, %486 ]
  %500 = getelementptr inbounds %struct.LampRen, ptr %413, i64 0, i32 8
  %501 = load float, ptr %500, align 8, !tbaa !99
  store float %501, ptr %11, align 4, !tbaa !59
  %502 = getelementptr inbounds %struct.LampRen, ptr %413, i64 0, i32 9
  %503 = load float, ptr %502, align 4, !tbaa !100
  store float %503, ptr %387, align 4, !tbaa !59
  %504 = getelementptr inbounds %struct.LampRen, ptr %413, i64 0, i32 10
  %505 = load float, ptr %504, align 8, !tbaa !101
  store float %505, ptr %388, align 4, !tbaa !59
  %506 = load i32, ptr %414, align 4, !tbaa !90
  %507 = and i32 %506, 256
  %508 = icmp eq i32 %507, 0
  br i1 %508, label %513, label %509

509:                                              ; preds = %498
  call void @llvm.lifetime.start.p0(i64 1472, ptr nonnull %12) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1472) %12, i8 0, i64 1472, i1 false)
  %510 = load float, ptr %8, align 4, !tbaa !59
  store float %510, ptr %389, align 8, !tbaa !59
  %511 = load float, ptr %369, align 4, !tbaa !59
  store float %511, ptr %390, align 4, !tbaa !59
  %512 = load float, ptr %372, align 4, !tbaa !59
  store float %512, ptr %391, align 8, !tbaa !59
  store i16 0, ptr %392, align 8, !tbaa !102
  call void @do_lamp_tex(ptr noundef %413, ptr noundef nonnull %10, ptr noundef nonnull %12, ptr noundef nonnull %11, i32 noundef 256) #6
  call void @llvm.lifetime.end.p0(i64 1472, ptr nonnull %12) #6
  br label %513

513:                                              ; preds = %509, %498
  %514 = load i16, ptr %425, align 8, !tbaa !94
  %515 = icmp eq i16 %514, 2
  br i1 %515, label %516, label %609

516:                                              ; preds = %513
  %517 = load i32, ptr %414, align 4, !tbaa !90
  %518 = and i32 %517, 128
  %519 = icmp eq i32 %518, 0
  %520 = load float, ptr %10, align 4, !tbaa !59
  %521 = getelementptr inbounds %struct.LampRen, ptr %413, i64 0, i32 20
  %522 = load float, ptr %521, align 8, !tbaa !59
  %523 = getelementptr inbounds %struct.LampRen, ptr %413, i64 0, i32 20, i64 1
  %524 = load float, ptr %523, align 4, !tbaa !59
  %525 = getelementptr inbounds %struct.LampRen, ptr %413, i64 0, i32 20, i64 2
  %526 = load float, ptr %525, align 8, !tbaa !59
  br i1 %519, label %548, label %527

527:                                              ; preds = %516
  %528 = load float, ptr %393, align 4, !tbaa !59
  %529 = fmul float %528, %524
  %530 = call float @llvm.fmuladd.f32(float %520, float %522, float %529)
  %531 = load float, ptr %394, align 4, !tbaa !59
  %532 = call float @llvm.fmuladd.f32(float %531, float %526, float %530)
  %533 = fcmp ogt float %532, 0.000000e+00
  br i1 %533, label %534, label %554

534:                                              ; preds = %527
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #6
  store float %520, ptr %13, align 4, !tbaa !59
  store float %528, ptr %395, align 4, !tbaa !59
  store float %531, ptr %396, align 4, !tbaa !59
  %535 = getelementptr inbounds %struct.LampRen, ptr %413, i64 0, i32 59
  call void @mul_m3_v3(ptr noundef nonnull %535, ptr noundef nonnull %13) #6
  %536 = load float, ptr %13, align 4, !tbaa !59
  %537 = load float, ptr %396, align 4, !tbaa !59
  %538 = fdiv float %536, %537
  %539 = call float @llvm.fabs.f32(float %538)
  %540 = load float, ptr %395, align 4, !tbaa !59
  %541 = fdiv float %540, %537
  %542 = call float @llvm.fabs.f32(float %541)
  %543 = fcmp ogt float %539, %542
  %544 = select i1 %543, float %539, float %542
  %545 = call float @llvm.fmuladd.f32(float %544, float %544, float 1.000000e+00)
  %546 = call float @sqrtf(float noundef %545) #6
  %547 = fdiv float 1.000000e+00, %546
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #6
  br label %554

548:                                              ; preds = %516
  %549 = load float, ptr %397, align 4, !tbaa !59
  %550 = fmul float %549, %524
  %551 = call float @llvm.fmuladd.f32(float %520, float %522, float %550)
  %552 = load float, ptr %398, align 4, !tbaa !59
  %553 = call float @llvm.fmuladd.f32(float %552, float %526, float %551)
  br label %554

554:                                              ; preds = %548, %534, %527
  %555 = phi float [ %547, %534 ], [ %553, %548 ], [ 0.000000e+00, %527 ]
  %556 = getelementptr inbounds %struct.LampRen, ptr %413, i64 0, i32 18
  %557 = load float, ptr %556, align 8, !tbaa !104
  %558 = fcmp olt float %555, %557
  br i1 %558, label %649, label %559

559:                                              ; preds = %554
  %560 = fsub float %555, %557
  %561 = getelementptr inbounds %struct.LampRen, ptr %413, i64 0, i32 19
  %562 = load float, ptr %561, align 4, !tbaa !105
  %563 = fcmp olt float %560, %562
  %564 = fcmp une float %562, 0.000000e+00
  %565 = and i1 %563, %564
  br i1 %565, label %566, label %573

566:                                              ; preds = %559
  %567 = fdiv float %560, %562
  %568 = fmul float %567, %567
  %569 = fmul float %568, -2.000000e+00
  %570 = fmul float %567, %569
  %571 = call float @llvm.fmuladd.f32(float %568, float 3.000000e+00, float %570)
  %572 = fmul float %555, %571
  br label %573

573:                                              ; preds = %566, %559
  %574 = phi float [ %572, %566 ], [ %555, %559 ]
  %575 = phi float [ %571, %566 ], [ 1.000000e+00, %559 ]
  %576 = load i32, ptr %414, align 4, !tbaa !90
  %577 = and i32 %576, 32
  %578 = icmp eq i32 %577, 0
  br i1 %578, label %604, label %579

579:                                              ; preds = %573
  %580 = load float, ptr %378, align 4, !tbaa !59
  %581 = load float, ptr %10, align 4, !tbaa !59
  %582 = load float, ptr %399, align 4, !tbaa !59
  %583 = load float, ptr %400, align 4, !tbaa !59
  %584 = fmul float %582, %583
  %585 = call float @llvm.fmuladd.f32(float %580, float %581, float %584)
  %586 = load float, ptr %401, align 4, !tbaa !59
  %587 = load float, ptr %402, align 4, !tbaa !59
  %588 = call float @llvm.fmuladd.f32(float %586, float %587, float %585)
  %589 = fcmp ogt float %588, 0.000000e+00
  br i1 %589, label %590, label %604

590:                                              ; preds = %579
  %591 = getelementptr inbounds %struct.LampRen, ptr %413, i64 0, i32 57
  %592 = load ptr, ptr %591, align 8, !tbaa !106
  %593 = call float @testshadowbuf(ptr noundef nonnull @R, ptr noundef %592, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %9, float noundef %588, float noundef 0.000000e+00) #6
  %594 = fcmp ogt float %593, 0.000000e+00
  br i1 %594, label %595, label %604

595:                                              ; preds = %590
  %596 = fmul float %575, %588
  %597 = getelementptr inbounds %struct.LampRen, ptr %413, i64 0, i32 15
  %598 = load float, ptr %597, align 4, !tbaa !107
  %599 = fmul float %596, %598
  %600 = fmul float %593, %599
  %601 = fsub float %411, %600
  %602 = fsub float %410, %600
  %603 = fsub float %409, %600
  br label %649

604:                                              ; preds = %590, %579, %573
  %605 = fmul float %499, %574
  %606 = load i32, ptr %414, align 4, !tbaa !90
  %607 = and i32 %606, 32
  %608 = icmp eq i32 %607, 0
  br i1 %608, label %609, label %649

609:                                              ; preds = %604, %513
  %610 = phi float [ %605, %604 ], [ %499, %513 ]
  %611 = load float, ptr %378, align 4, !tbaa !59
  %612 = load float, ptr %10, align 4, !tbaa !59
  %613 = load float, ptr %403, align 4, !tbaa !59
  %614 = load float, ptr %404, align 4, !tbaa !59
  %615 = fmul float %613, %614
  %616 = call float @llvm.fmuladd.f32(float %611, float %612, float %615)
  %617 = load float, ptr %405, align 4, !tbaa !59
  %618 = load float, ptr %406, align 4, !tbaa !59
  %619 = call float @llvm.fmuladd.f32(float %617, float %618, float %616)
  %620 = call float @llvm.fabs.f32(float %619)
  %621 = fsub float 1.000000e+00, %620
  %622 = load i16, ptr %425, align 8, !tbaa !94
  %623 = icmp eq i16 %622, 3
  %624 = call float @llvm.fmuladd.f32(float %621, float 5.000000e-01, float 5.000000e-01)
  %625 = select i1 %623, float %624, float %621
  %626 = fcmp ogt float %625, 0.000000e+00
  %627 = select i1 %626, float %610, float 1.000000e+00
  %628 = fmul float %625, %627
  %629 = fcmp ogt float %628, 0xBFDA3D70A0000000
  br i1 %629, label %630, label %639

630:                                              ; preds = %609
  %631 = getelementptr inbounds %struct.LampRen, ptr %413, i64 0, i32 57
  %632 = load ptr, ptr %631, align 8, !tbaa !106
  %633 = icmp eq ptr %632, null
  br i1 %633, label %639, label %634

634:                                              ; preds = %630
  %635 = call float @testshadowbuf(ptr noundef nonnull @R, ptr noundef nonnull %632, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %9, float noundef %621, float noundef 0.000000e+00) #6
  %636 = fcmp oeq float %635, 0.000000e+00
  br i1 %636, label %649, label %637

637:                                              ; preds = %634
  %638 = fmul float %628, %635
  br label %639

639:                                              ; preds = %637, %630, %609
  %640 = phi float [ %638, %637 ], [ %628, %630 ], [ %628, %609 ]
  %641 = fcmp ogt float %640, 0.000000e+00
  br i1 %641, label %642, label %649

642:                                              ; preds = %639
  %643 = load float, ptr %11, align 4, !tbaa !59
  %644 = call float @llvm.fmuladd.f32(float %640, float %643, float %411)
  %645 = load float, ptr %387, align 4, !tbaa !59
  %646 = call float @llvm.fmuladd.f32(float %640, float %645, float %410)
  %647 = load float, ptr %388, align 4, !tbaa !59
  %648 = call float @llvm.fmuladd.f32(float %640, float %647, float %409)
  br label %649

649:                                              ; preds = %642, %639, %634, %604, %595, %554, %490, %418
  %650 = phi float [ %411, %418 ], [ %411, %554 ], [ %601, %595 ], [ %411, %604 ], [ %411, %634 ], [ %644, %642 ], [ %411, %639 ], [ %411, %490 ]
  %651 = phi float [ %410, %418 ], [ %410, %554 ], [ %602, %595 ], [ %410, %604 ], [ %410, %634 ], [ %646, %642 ], [ %410, %639 ], [ %410, %490 ]
  %652 = phi float [ %409, %418 ], [ %409, %554 ], [ %603, %595 ], [ %409, %604 ], [ %409, %634 ], [ %648, %642 ], [ %409, %639 ], [ %409, %490 ]
  %653 = load ptr, ptr %408, align 8, !tbaa !87
  %654 = icmp eq ptr %653, null
  br i1 %654, label %655, label %407, !llvm.loop !108

655:                                              ; preds = %649, %364
  %656 = phi float [ 0.000000e+00, %364 ], [ %650, %649 ]
  %657 = phi float [ 0.000000e+00, %364 ], [ %651, %649 ]
  %658 = phi float [ 0.000000e+00, %364 ], [ %652, %649 ]
  %659 = fcmp olt float %656, 0.000000e+00
  %660 = select i1 %659, float 0.000000e+00, float %656
  %661 = fcmp olt float %657, 0.000000e+00
  %662 = select i1 %661, float 0.000000e+00, float %657
  %663 = fcmp olt float %658, 0.000000e+00
  %664 = select i1 %663, float 0.000000e+00, float %658
  %665 = load float, ptr %1, align 4, !tbaa !59
  %666 = fmul float %660, %665
  store float %666, ptr %1, align 4, !tbaa !59
  %667 = getelementptr inbounds float, ptr %1, i64 1
  %668 = load float, ptr %667, align 4, !tbaa !59
  %669 = fmul float %662, %668
  store float %669, ptr %667, align 4, !tbaa !59
  %670 = getelementptr inbounds float, ptr %1, i64 2
  %671 = load float, ptr %670, align 4, !tbaa !59
  %672 = fmul float %664, %671
  store float %672, ptr %670, align 4, !tbaa !59
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #6
  br label %673

673:                                              ; preds = %655, %356
  %674 = fcmp une float %314, 0.000000e+00
  br i1 %674, label %675, label %699

675:                                              ; preds = %673
  %676 = load ptr, ptr %41, align 8, !tbaa !60
  %677 = getelementptr inbounds %struct.Material, ptr %676, i64 0, i32 7
  %678 = load float, ptr %677, align 8, !tbaa !109
  %679 = load float, ptr %1, align 4, !tbaa !59
  %680 = call float @llvm.fmuladd.f32(float %314, float %678, float %679)
  store float %680, ptr %1, align 4, !tbaa !59
  %681 = getelementptr inbounds %struct.Material, ptr %676, i64 0, i32 8
  %682 = load float, ptr %681, align 4, !tbaa !110
  %683 = getelementptr inbounds float, ptr %1, i64 1
  %684 = load float, ptr %683, align 4, !tbaa !59
  %685 = call float @llvm.fmuladd.f32(float %314, float %682, float %684)
  store float %685, ptr %683, align 4, !tbaa !59
  %686 = getelementptr inbounds %struct.Material, ptr %676, i64 0, i32 9
  %687 = load float, ptr %686, align 8, !tbaa !111
  %688 = getelementptr inbounds float, ptr %1, i64 2
  %689 = load float, ptr %688, align 4, !tbaa !59
  %690 = call float @llvm.fmuladd.f32(float %314, float %687, float %689)
  store float %690, ptr %688, align 4, !tbaa !59
  %691 = load i8, ptr %185, align 1, !tbaa !56
  %692 = and i8 %691, 4
  %693 = icmp eq i8 %692, 0
  %694 = getelementptr inbounds float, ptr %1, i64 3
  %695 = load float, ptr %694, align 4, !tbaa !59
  %696 = call float @llvm.fmuladd.f32(float %314, float %314, float %695)
  %697 = fadd float %314, %695
  %698 = select i1 %693, float %697, float %696
  store float %698, ptr %694, align 4, !tbaa !59
  br label %699

699:                                              ; preds = %675, %673
  %700 = fcmp une float %313, 0.000000e+00
  br i1 %700, label %701, label %725

701:                                              ; preds = %699
  %702 = load ptr, ptr %41, align 8, !tbaa !60
  %703 = getelementptr inbounds %struct.Material, ptr %702, i64 0, i32 10
  %704 = load float, ptr %703, align 4, !tbaa !112
  %705 = load float, ptr %1, align 4, !tbaa !59
  %706 = call float @llvm.fmuladd.f32(float %313, float %704, float %705)
  store float %706, ptr %1, align 4, !tbaa !59
  %707 = getelementptr inbounds %struct.Material, ptr %702, i64 0, i32 11
  %708 = load float, ptr %707, align 8, !tbaa !113
  %709 = getelementptr inbounds float, ptr %1, i64 1
  %710 = load float, ptr %709, align 4, !tbaa !59
  %711 = call float @llvm.fmuladd.f32(float %313, float %708, float %710)
  store float %711, ptr %709, align 4, !tbaa !59
  %712 = getelementptr inbounds %struct.Material, ptr %702, i64 0, i32 12
  %713 = load float, ptr %712, align 4, !tbaa !114
  %714 = getelementptr inbounds float, ptr %1, i64 2
  %715 = load float, ptr %714, align 4, !tbaa !59
  %716 = call float @llvm.fmuladd.f32(float %313, float %713, float %715)
  store float %716, ptr %714, align 4, !tbaa !59
  %717 = load i8, ptr %185, align 1, !tbaa !56
  %718 = and i8 %717, 4
  %719 = icmp eq i8 %718, 0
  %720 = getelementptr inbounds float, ptr %1, i64 3
  %721 = load float, ptr %720, align 4, !tbaa !59
  %722 = call float @llvm.fmuladd.f32(float %313, float %313, float %721)
  %723 = fadd float %313, %721
  %724 = select i1 %719, float %723, float %722
  store float %724, ptr %720, align 4, !tbaa !59
  br label %725

725:                                              ; preds = %701, %699, %353
  %726 = getelementptr inbounds float, ptr %1, i64 3
  %727 = load float, ptr %726, align 4, !tbaa !59
  %728 = fcmp ogt float %727, 1.000000e+00
  br i1 %728, label %729, label %730

729:                                              ; preds = %725
  store float 1.000000e+00, ptr %726, align 4, !tbaa !59
  br label %730

730:                                              ; preds = %725, %729, %308, %37, %122
  %731 = phi i32 [ 0, %122 ], [ 0, %37 ], [ 0, %308 ], [ 1, %729 ], [ 1, %725 ]
  ret i32 %731
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare float @mistfactor(float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #3

declare void @do_halo_tex(ptr noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @shadeSkyView(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i16 noundef signext %4) local_unnamed_addr #0 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #6
  %10 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 22), align 8, !tbaa !115
  %11 = zext i16 %10 to i32
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  %14 = getelementptr inbounds float, ptr %2, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !59
  br i1 %13, label %29, label %16

16:                                               ; preds = %5
  %17 = load float, ptr %2, align 4, !tbaa !59
  %18 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 30), align 8, !tbaa !59
  %19 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 30, i64 1), align 4, !tbaa !59
  %20 = fmul float %15, %19
  %21 = tail call float @llvm.fmuladd.f32(float %17, float %18, float %20)
  %22 = getelementptr inbounds float, ptr %2, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !59
  %24 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 30, i64 2), align 8, !tbaa !59
  %25 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %21)
  %26 = fcmp olt float %25, 0.000000e+00
  %27 = select i1 %26, i32 0, i32 16
  %28 = tail call float @llvm.fabs.f32(float %25)
  store float %28, ptr %9, align 4, !tbaa !59
  br label %37

29:                                               ; preds = %5
  %30 = and i32 %11, 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = tail call float @llvm.fmuladd.f32(float %15, float 5.000000e-01, float 5.000000e-01)
  store float %33, ptr %9, align 4, !tbaa !59
  br label %37

34:                                               ; preds = %29
  %35 = fadd float %15, 5.000000e-01
  %36 = tail call float @llvm.fabs.f32(float %35)
  store float %36, ptr %9, align 4, !tbaa !59
  br label %37

37:                                               ; preds = %32, %34, %16
  %38 = phi i32 [ %27, %16 ], [ 16, %32 ], [ 16, %34 ]
  %39 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 6), align 8, !tbaa !59
  store float %39, ptr %8, align 4, !tbaa !59
  %40 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 7), align 4, !tbaa !59
  %41 = getelementptr inbounds float, ptr %8, i64 1
  store float %40, ptr %41, align 4, !tbaa !59
  %42 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 8), align 8, !tbaa !59
  %43 = getelementptr inbounds float, ptr %8, i64 2
  store float %42, ptr %43, align 4, !tbaa !59
  %44 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 9), align 4, !tbaa !59
  store float %44, ptr %7, align 4, !tbaa !59
  %45 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 10), align 8, !tbaa !59
  %46 = getelementptr inbounds float, ptr %7, i64 1
  store float %45, ptr %46, align 4, !tbaa !59
  %47 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 11), align 4, !tbaa !59
  %48 = getelementptr inbounds float, ptr %7, i64 2
  store float %47, ptr %48, align 4, !tbaa !59
  %49 = and i16 %10, 8
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %65, label %51

51:                                               ; preds = %37
  %52 = load float, ptr %2, align 4, !tbaa !59
  store float %52, ptr %6, align 4, !tbaa !59
  %53 = getelementptr inbounds float, ptr %2, i64 1
  %54 = load float, ptr %53, align 4, !tbaa !59
  %55 = getelementptr inbounds float, ptr %6, i64 1
  store float %54, ptr %55, align 4, !tbaa !59
  %56 = getelementptr inbounds float, ptr %2, i64 2
  %57 = load float, ptr %56, align 4, !tbaa !59
  %58 = getelementptr inbounds float, ptr %6, i64 2
  store float %57, ptr %58, align 4, !tbaa !59
  %59 = and i16 %10, 2
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %51
  call void @mul_m3_v3(ptr noundef nonnull getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 31), ptr noundef nonnull %6) #6
  %62 = load float, ptr %55, align 4, !tbaa !59
  %63 = load float, ptr %58, align 4, !tbaa !59
  store float %63, ptr %55, align 4, !tbaa !59
  store float %62, ptr %58, align 4, !tbaa !59
  br label %64

64:                                               ; preds = %61, %51
  call void @do_sky_tex(ptr noundef %1, ptr noundef nonnull %6, ptr noundef %3, ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull %9, i32 noundef %38, i16 noundef signext %4) #6
  br label %65

65:                                               ; preds = %64, %37
  %66 = load float, ptr %9, align 4, !tbaa !59
  %67 = fcmp ogt float %66, 1.000000e+00
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store float 1.000000e+00, ptr %9, align 4, !tbaa !59
  br label %69

69:                                               ; preds = %68, %65
  %70 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 22), align 8, !tbaa !115
  %71 = and i16 %70, 1
  %72 = icmp eq i16 %71, 0
  br i1 %72, label %89, label %73

73:                                               ; preds = %69
  %74 = load float, ptr %9, align 4, !tbaa !59
  %75 = fsub float 1.000000e+00, %74
  %76 = load float, ptr %8, align 4, !tbaa !59
  %77 = load float, ptr %7, align 4, !tbaa !59
  %78 = fmul float %74, %77
  %79 = call float @llvm.fmuladd.f32(float %75, float %76, float %78)
  store float %79, ptr %0, align 4, !tbaa !59
  %80 = load float, ptr %41, align 4, !tbaa !59
  %81 = load float, ptr %46, align 4, !tbaa !59
  %82 = fmul float %74, %81
  %83 = call float @llvm.fmuladd.f32(float %75, float %80, float %82)
  %84 = getelementptr inbounds float, ptr %0, i64 1
  store float %83, ptr %84, align 4, !tbaa !59
  %85 = load float, ptr %43, align 4, !tbaa !59
  %86 = load float, ptr %48, align 4, !tbaa !59
  %87 = fmul float %74, %86
  %88 = call float @llvm.fmuladd.f32(float %75, float %85, float %87)
  br label %94

89:                                               ; preds = %69
  %90 = load float, ptr %8, align 4, !tbaa !59
  store float %90, ptr %0, align 4, !tbaa !59
  %91 = load float, ptr %41, align 4, !tbaa !59
  %92 = getelementptr inbounds float, ptr %0, i64 1
  store float %91, ptr %92, align 4, !tbaa !59
  %93 = load float, ptr %43, align 4, !tbaa !59
  br label %94

94:                                               ; preds = %89, %73
  %95 = phi float [ %93, %89 ], [ %88, %73 ]
  %96 = getelementptr inbounds float, ptr %0, i64 2
  store float %95, ptr %96, align 4, !tbaa !59
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #6
  ret void
}

declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @do_sky_tex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @shadeSunView(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #6
  %6 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 66), align 8, !tbaa !87
  %7 = icmp eq ptr %6, null
  br i1 %7, label %100, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds float, ptr %1, i64 1
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = getelementptr inbounds float, ptr %3, i64 1
  %12 = getelementptr inbounds float, ptr %3, i64 2
  %13 = getelementptr inbounds float, ptr %3, i64 1
  %14 = getelementptr inbounds float, ptr %3, i64 2
  %15 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  %16 = getelementptr inbounds float, ptr %3, i64 1
  %17 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %18 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %19 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %20 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  br label %21

21:                                               ; preds = %8, %96
  %22 = phi ptr [ %6, %8 ], [ %98, %96 ]
  %23 = phi i8 [ 1, %8 ], [ %97, %96 ]
  %24 = getelementptr inbounds %struct.GroupObject, ptr %22, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !88
  %26 = getelementptr inbounds %struct.LampRen, ptr %25, i64 0, i32 6
  %27 = load i16, ptr %26, align 8, !tbaa !94
  %28 = icmp eq i16 %27, 1
  br i1 %28, label %29, label %96

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.LampRen, ptr %25, i64 0, i32 56
  %31 = load ptr, ptr %30, align 8, !tbaa !116
  %32 = icmp eq ptr %31, null
  br i1 %32, label %96, label %33

33:                                               ; preds = %29
  %34 = load i16, ptr %31, align 4, !tbaa !117
  %35 = and i16 %34, 1
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %96, label %37

37:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #6
  %38 = icmp eq i8 %23, 0
  br i1 %38, label %81, label %39

39:                                               ; preds = %37
  %40 = load float, ptr %1, align 4, !tbaa !59
  %41 = load float, ptr %9, align 4, !tbaa !59
  %42 = fmul float %41, %41
  %43 = call float @llvm.fmuladd.f32(float %40, float %40, float %42)
  %44 = load float, ptr %10, align 4, !tbaa !59
  %45 = call float @llvm.fmuladd.f32(float %44, float %44, float %43)
  %46 = fcmp ogt float %45, 0x38AA95A5C0000000
  br i1 %46, label %47, label %56

47:                                               ; preds = %39
  %48 = call float @sqrtf(float noundef %45) #6
  %49 = fdiv float 1.000000e+00, %48
  %50 = load float, ptr %1, align 4, !tbaa !59
  %51 = fmul float %50, %49
  store float %51, ptr %3, align 4, !tbaa !59
  %52 = load float, ptr %9, align 4, !tbaa !59
  %53 = fmul float %49, %52
  store float %53, ptr %13, align 4, !tbaa !59
  %54 = load float, ptr %10, align 4, !tbaa !59
  %55 = fmul float %49, %54
  store float %55, ptr %14, align 4, !tbaa !59
  br label %57

56:                                               ; preds = %39
  store float 0.000000e+00, ptr %3, align 4, !tbaa !59
  store float 0.000000e+00, ptr %11, align 4, !tbaa !59
  store float 0.000000e+00, ptr %12, align 4, !tbaa !59
  br label %57

57:                                               ; preds = %47, %56
  call void @mul_m3_v3(ptr noundef nonnull getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 31), ptr noundef nonnull %3) #6
  %58 = load float, ptr %15, align 4, !tbaa !59
  %59 = fcmp olt float %58, 0.000000e+00
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store float 0.000000e+00, ptr %15, align 4, !tbaa !59
  br label %61

61:                                               ; preds = %60, %57
  %62 = load float, ptr %3, align 4, !tbaa !59
  %63 = load float, ptr %16, align 4, !tbaa !59
  %64 = fmul float %63, %63
  %65 = call float @llvm.fmuladd.f32(float %62, float %62, float %64)
  %66 = load float, ptr %15, align 4, !tbaa !59
  %67 = call float @llvm.fmuladd.f32(float %66, float %66, float %65)
  %68 = fcmp ogt float %67, 0x38AA95A5C0000000
  br i1 %68, label %69, label %78

69:                                               ; preds = %61
  %70 = call float @sqrtf(float noundef %67) #6
  %71 = fdiv float 1.000000e+00, %70
  %72 = load float, ptr %3, align 4, !tbaa !59
  %73 = fmul float %72, %71
  store float %73, ptr %3, align 4, !tbaa !59
  %74 = load float, ptr %16, align 4, !tbaa !59
  %75 = fmul float %71, %74
  store float %75, ptr %16, align 4, !tbaa !59
  %76 = load float, ptr %15, align 4, !tbaa !59
  %77 = fmul float %71, %76
  br label %79

78:                                               ; preds = %61
  store float 0.000000e+00, ptr %3, align 4, !tbaa !59
  store float 0.000000e+00, ptr %16, align 4, !tbaa !59
  br label %79

79:                                               ; preds = %69, %78
  %80 = phi float [ 0.000000e+00, %78 ], [ %77, %69 ]
  store float %80, ptr %15, align 4, !tbaa !59
  br label %81

81:                                               ; preds = %79, %37
  %82 = load ptr, ptr %30, align 8, !tbaa !116
  call void @GetSkyXYZRadiancef(ptr noundef %82, ptr noundef nonnull %3, ptr noundef nonnull %5) #6
  %83 = load float, ptr %5, align 4, !tbaa !59
  %84 = load float, ptr %17, align 4, !tbaa !59
  %85 = load float, ptr %18, align 4, !tbaa !59
  %86 = load ptr, ptr %30, align 8, !tbaa !116
  %87 = getelementptr inbounds %struct.SunSky, ptr %86, i64 0, i32 2
  %88 = load i16, ptr %87, align 4, !tbaa !119
  %89 = sext i16 %88 to i32
  call void @xyz_to_rgb(float noundef %83, float noundef %84, float noundef %85, ptr noundef nonnull %4, ptr noundef nonnull %19, ptr noundef nonnull %20, i32 noundef %89) #6
  %90 = load ptr, ptr %30, align 8, !tbaa !116
  %91 = getelementptr inbounds %struct.SunSky, ptr %90, i64 0, i32 1
  %92 = load i16, ptr %91, align 2, !tbaa !120
  %93 = sext i16 %92 to i32
  %94 = getelementptr inbounds %struct.SunSky, ptr %90, i64 0, i32 19
  %95 = load float, ptr %94, align 4, !tbaa !121
  call void @ramp_blend(i32 noundef %93, ptr noundef %0, float noundef %95, ptr noundef nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #6
  br label %96

96:                                               ; preds = %21, %29, %33, %81
  %97 = phi i8 [ 0, %81 ], [ %23, %33 ], [ %23, %29 ], [ %23, %21 ]
  %98 = load ptr, ptr %22, align 8, !tbaa !87
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %21, !llvm.loop !122

100:                                              ; preds = %96, %2
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #6
  ret void
}

declare void @GetSkyXYZRadiancef(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @xyz_to_rgb(float noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ramp_blend(i32 noundef, ptr noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @shadeSkyPixel(ptr noundef %0, float noundef %1, float noundef %2, i16 noundef signext %3) local_unnamed_addr #0 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #6
  %7 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 22), align 8, !tbaa !115
  %8 = zext i16 %7 to i32
  %9 = and i32 %8, 9
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %4
  %12 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 6), align 8, !tbaa !59
  store float %12, ptr %0, align 4, !tbaa !59
  %13 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 7), align 4, !tbaa !59
  %14 = getelementptr inbounds float, ptr %0, i64 1
  store float %13, ptr %14, align 4, !tbaa !59
  %15 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 8), align 8, !tbaa !59
  %16 = getelementptr inbounds float, ptr %0, i64 2
  store float %15, ptr %16, align 4, !tbaa !59
  br label %70

17:                                               ; preds = %4
  %18 = and i32 %8, 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %33, label %20

20:                                               ; preds = %17
  %21 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 13), align 4, !tbaa !123
  %22 = sitofp i32 %21 to float
  %23 = fdiv float %1, %22
  %24 = tail call float @llvm.fmuladd.f32(float %23, float 2.000000e+00, float -1.000000e+00)
  store float %24, ptr %5, align 4, !tbaa !59
  %25 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 14), align 8, !tbaa !124
  %26 = sitofp i32 %25 to float
  %27 = fdiv float %2, %26
  %28 = tail call float @llvm.fmuladd.f32(float %27, float 2.000000e+00, float -1.000000e+00)
  %29 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  store float %28, ptr %29, align 4, !tbaa !59
  %30 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  store float 0.000000e+00, ptr %30, align 4, !tbaa !59
  %31 = fdiv float 1.000000e+00, %22
  store float %31, ptr %6, align 4, !tbaa !59
  %32 = fdiv float 1.000000e+00, %26
  br label %66

33:                                               ; preds = %17
  call void @calc_view_vector(ptr noundef nonnull %5, float noundef %1, float noundef %2) #6
  %34 = load float, ptr %5, align 4, !tbaa !59
  %35 = getelementptr inbounds float, ptr %5, i64 1
  %36 = load float, ptr %35, align 4, !tbaa !59
  %37 = fmul float %36, %36
  %38 = call float @llvm.fmuladd.f32(float %34, float %34, float %37)
  %39 = getelementptr inbounds float, ptr %5, i64 2
  %40 = load float, ptr %39, align 4, !tbaa !59
  %41 = call float @llvm.fmuladd.f32(float %40, float %40, float %38)
  %42 = fcmp ogt float %41, 0x38AA95A5C0000000
  br i1 %42, label %43, label %52

43:                                               ; preds = %33
  %44 = call float @sqrtf(float noundef %41) #6
  %45 = fdiv float 1.000000e+00, %44
  %46 = load float, ptr %5, align 4, !tbaa !59
  %47 = fmul float %46, %45
  store float %47, ptr %5, align 4, !tbaa !59
  %48 = load float, ptr %35, align 4, !tbaa !59
  %49 = fmul float %45, %48
  store float %49, ptr %35, align 4, !tbaa !59
  %50 = load float, ptr %39, align 4, !tbaa !59
  %51 = fmul float %45, %50
  br label %53

52:                                               ; preds = %33
  store float 0.000000e+00, ptr %5, align 4, !tbaa !59
  store float 0.000000e+00, ptr %35, align 4, !tbaa !59
  br label %53

53:                                               ; preds = %43, %52
  %54 = phi float [ 0.000000e+00, %52 ], [ %51, %43 ]
  %55 = phi float [ 0.000000e+00, %52 ], [ %44, %43 ]
  store float %54, ptr %39, align 4, !tbaa !59
  %56 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 22), align 8, !tbaa !115
  %57 = and i16 %56, 8
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %69, label %59

59:                                               ; preds = %53
  %60 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 17), align 4, !tbaa !125
  %61 = fneg float %60
  %62 = fdiv float %61, %55
  store float %62, ptr %6, align 4, !tbaa !59
  %63 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 18), align 8, !tbaa !126
  %64 = fneg float %63
  %65 = fdiv float %64, %55
  br label %66

66:                                               ; preds = %20, %59
  %67 = phi float [ %65, %59 ], [ %32, %20 ]
  %68 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  store float %67, ptr %68, align 4, !tbaa !59
  br label %69

69:                                               ; preds = %66, %53
  call void @shadeSkyView(ptr noundef %0, ptr noundef null, ptr noundef nonnull %5, ptr noundef nonnull %6, i16 noundef signext %3)
  br label %70

70:                                               ; preds = %69, %11
  %71 = getelementptr inbounds float, ptr %0, i64 3
  store float 0.000000e+00, ptr %71, align 4, !tbaa !59
  call void @calc_view_vector(ptr noundef nonnull %5, float noundef %1, float noundef %2) #6
  call void @shadeSunView(ptr noundef %0, ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #6
  ret void
}

declare void @calc_view_vector(ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @shadeAtmPixel(ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #0 {
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #6
  call void @calc_view_vector(ptr noundef nonnull %6, float noundef %2, float noundef %3) #6
  %7 = load float, ptr %6, align 4, !tbaa !59
  %8 = getelementptr inbounds float, ptr %6, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !59
  %10 = fmul float %9, %9
  %11 = call float @llvm.fmuladd.f32(float %7, float %7, float %10)
  %12 = getelementptr inbounds float, ptr %6, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !59
  %14 = call float @llvm.fmuladd.f32(float %13, float %13, float %11)
  %15 = fcmp ogt float %14, 0x38AA95A5C0000000
  br i1 %15, label %16, label %25

16:                                               ; preds = %5
  %17 = call float @sqrtf(float noundef %14) #6
  %18 = fdiv float 1.000000e+00, %17
  %19 = load float, ptr %6, align 4, !tbaa !59
  %20 = fmul float %19, %18
  store float %20, ptr %6, align 4, !tbaa !59
  %21 = load float, ptr %8, align 4, !tbaa !59
  %22 = fmul float %18, %21
  store float %22, ptr %8, align 4, !tbaa !59
  %23 = load float, ptr %12, align 4, !tbaa !59
  %24 = fmul float %18, %23
  br label %26

25:                                               ; preds = %5
  store float 0.000000e+00, ptr %6, align 4, !tbaa !59
  store float 0.000000e+00, ptr %8, align 4, !tbaa !59
  br label %26

26:                                               ; preds = %16, %25
  %27 = phi float [ 0.000000e+00, %25 ], [ %24, %16 ]
  store float %27, ptr %12, align 4, !tbaa !59
  call void @AtmospherePixleShader(ptr noundef %0, ptr noundef nonnull %6, float noundef %4, ptr noundef %1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #6
  ret void
}

declare void @AtmospherePixleShader(ptr noundef, ptr noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare void @do_lamp_tex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare float @testshadowbuf(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
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
!67 = !{!35, !39, i64 1624}
!68 = !{!57, !39, i64 72}
!69 = !{!57, !39, i64 76}
!70 = !{!57, !39, i64 100}
!71 = !{!57, !37, i64 89}
!72 = !{!57, !37, i64 90}
!73 = distinct !{!73, !74, !75}
!74 = !{!"llvm.loop.mustprogress"}
!75 = !{!"llvm.loop.unroll.disable"}
!76 = !{!57, !44, i64 28}
!77 = !{!57, !44, i64 24}
!78 = !{!57, !37, i64 87}
!79 = !{!57, !44, i64 20}
!80 = !{!57, !44, i64 56}
!81 = !{!57, !37, i64 88}
!82 = distinct !{!82, !74, !75}
!83 = !{!57, !37, i64 84}
!84 = !{!57, !44, i64 68}
!85 = !{!57, !44, i64 64}
!86 = !{!57, !44, i64 60}
!87 = !{!36, !36, i64 0}
!88 = !{!89, !36, i64 24}
!89 = !{!"GroupObject", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !40, i64 32, !37, i64 34}
!90 = !{!91, !39, i64 44}
!91 = !{!"LampRen", !36, i64 0, !36, i64 8, !44, i64 16, !44, i64 20, !44, i64 24, !37, i64 28, !40, i64 40, !39, i64 44, !44, i64 48, !44, i64 52, !44, i64 56, !44, i64 60, !44, i64 64, !44, i64 68, !44, i64 72, !44, i64 76, !44, i64 80, !39, i64 84, !44, i64 88, !44, i64 92, !37, i64 96, !44, i64 108, !44, i64 112, !44, i64 116, !44, i64 120, !44, i64 124, !44, i64 128, !40, i64 132, !44, i64 136, !44, i64 140, !36, i64 144, !40, i64 152, !40, i64 154, !44, i64 156, !40, i64 160, !40, i64 162, !40, i64 164, !40, i64 166, !40, i64 168, !44, i64 172, !44, i64 176, !44, i64 180, !44, i64 184, !40, i64 188, !40, i64 190, !40, i64 192, !40, i64 194, !40, i64 196, !40, i64 198, !40, i64 200, !37, i64 202, !37, i64 204, !44, i64 208, !44, i64 212, !44, i64 216, !44, i64 220, !36, i64 224, !36, i64 232, !36, i64 240, !37, i64 248, !44, i64 284, !37, i64 288, !44, i64 300, !37, i64 304, !37, i64 368, !37, i64 404, !44, i64 500, !36, i64 504, !37, i64 512, !37, i64 520, !39, i64 664, !39, i64 668}
!92 = !{!91, !39, i64 84}
!93 = !{!57, !39, i64 104}
!94 = !{!91, !40, i64 40}
!95 = !{!91, !44, i64 136}
!96 = !{!91, !44, i64 24}
!97 = !{!91, !44, i64 140}
!98 = !{!91, !44, i64 116}
!99 = !{!91, !44, i64 48}
!100 = !{!91, !44, i64 52}
!101 = !{!91, !44, i64 56}
!102 = !{!103, !40, i64 96}
!103 = !{!"ShadeInput", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !39, i64 40, !37, i64 44, !40, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !40, i64 88, !40, i64 90, !40, i64 92, !40, i64 94, !40, i64 96, !37, i64 100, !37, i64 112, !37, i64 124, !37, i64 136, !37, i64 148, !39, i64 160, !39, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180, !44, i64 184, !44, i64 188, !37, i64 192, !37, i64 204, !37, i64 216, !44, i64 228, !44, i64 232, !44, i64 236, !44, i64 240, !44, i64 244, !44, i64 248, !44, i64 252, !44, i64 256, !44, i64 260, !44, i64 264, !44, i64 268, !44, i64 272, !44, i64 276, !44, i64 280, !44, i64 284, !44, i64 288, !44, i64 292, !44, i64 296, !44, i64 300, !44, i64 304, !44, i64 308, !44, i64 312, !44, i64 316, !39, i64 320, !37, i64 324, !37, i64 336, !37, i64 348, !37, i64 360, !37, i64 372, !37, i64 384, !37, i64 400, !37, i64 416, !44, i64 428, !37, i64 432, !37, i64 444, !37, i64 456, !44, i64 472, !37, i64 476, !37, i64 492, !37, i64 504, !37, i64 520, !37, i64 904, !39, i64 1096, !39, i64 1100, !39, i64 1104, !39, i64 1108, !37, i64 1112, !37, i64 1124, !37, i64 1136, !37, i64 1148, !37, i64 1160, !37, i64 1172, !37, i64 1184, !37, i64 1196, !37, i64 1208, !37, i64 1220, !37, i64 1232, !37, i64 1244, !44, i64 1256, !44, i64 1260, !37, i64 1264, !37, i64 1276, !37, i64 1288, !37, i64 1300, !37, i64 1312, !37, i64 1324, !44, i64 1336, !44, i64 1340, !37, i64 1344, !37, i64 1356, !37, i64 1368, !39, i64 1380, !39, i64 1384, !39, i64 1388, !37, i64 1392, !39, i64 1404, !39, i64 1408, !39, i64 1412, !37, i64 1416, !44, i64 1428, !37, i64 1432, !37, i64 1433, !40, i64 1434, !40, i64 1436, !40, i64 1438, !39, i64 1440, !39, i64 1444, !39, i64 1448, !39, i64 1452, !36, i64 1456, !36, i64 1464}
!104 = !{!91, !44, i64 88}
!105 = !{!91, !44, i64 92}
!106 = !{!91, !36, i64 232}
!107 = !{!91, !44, i64 76}
!108 = distinct !{!108, !74, !75}
!109 = !{!62, !44, i64 144}
!110 = !{!62, !44, i64 148}
!111 = !{!62, !44, i64 152}
!112 = !{!62, !44, i64 156}
!113 = !{!62, !44, i64 160}
!114 = !{!62, !44, i64 164}
!115 = !{!35, !40, i64 5288}
!116 = !{!91, !36, i64 224}
!117 = !{!118, !40, i64 0}
!118 = !{!"SunSky", !40, i64 0, !40, i64 2, !40, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !37, i64 20, !44, i64 32, !44, i64 36, !44, i64 40, !44, i64 44, !37, i64 48, !37, i64 68, !37, i64 88, !44, i64 108, !44, i64 112, !44, i64 116, !44, i64 120, !44, i64 124, !44, i64 128, !44, i64 132, !44, i64 136, !44, i64 140, !44, i64 144, !44, i64 148, !44, i64 152, !44, i64 156, !44, i64 160, !37, i64 164, !37, i64 176, !37, i64 188, !37, i64 200, !37, i64 212}
!119 = !{!118, !40, i64 4}
!120 = !{!118, !40, i64 2}
!121 = !{!118, !44, i64 128}
!122 = distinct !{!122, !74, !75}
!123 = !{!35, !39, i64 148}
!124 = !{!35, !39, i64 152}
!125 = !{!35, !44, i64 188}
!126 = !{!35, !44, i64 192}
