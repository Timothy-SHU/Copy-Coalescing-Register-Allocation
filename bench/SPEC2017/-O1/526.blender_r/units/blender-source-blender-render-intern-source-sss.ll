; ModuleID = 'blender/source/blender/render/intern/source/sss.c'
source_filename = "blender/source/blender/render/intern/source/sss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.ScatterSettings = type { float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, ptr }
%struct.ScatterTree = type { ptr, [3 x ptr], float, float, ptr, ptr, ptr, ptr, i32, [3 x float], [3 x float] }
%struct.ScatterPoint = type { [3 x float], [3 x float], float, i32 }
%struct.ScatterNode = type { [3 x float], [3 x float], [3 x float], float, float, i32, ptr, [3 x float], [8 x ptr] }
%struct.ScatterResult = type { [3 x float], [3 x float], [3 x float], [3 x float] }
%struct.SSSPoints = type { ptr, ptr, ptr, ptr, ptr, i32 }
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
%struct.RenderStats = type { i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, double, double, ptr, ptr, [64 x i8], float, float }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct._gh_Entry = type { ptr, ptr, ptr }
%struct.SSSData = type { ptr, [3 x ptr] }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [16 x i8] c"ScatterSettings\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"ScatterTree\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"ScatterPoints\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"ScatterRefPoints\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"ScatterTmpPoints\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"sss tree arena\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"SSSPoints\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"make_sss_tree gh\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"SSS preprocessing\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [15 x i8] c"scatterTableRd\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"SSSCo\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"SSSColor\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"SSSArea\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"SSSData\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @scatter_settings_new(float noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5) local_unnamed_addr #0 {
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %8 = tail call ptr %7(i64 noundef 88, ptr noundef nonnull @.str) #11
  store float %2, ptr %8, align 8, !tbaa !38
  %9 = fdiv float 0xBFF70A3D80000000, %2
  %10 = fdiv float 0x3FE6B851E0000000, %2
  %11 = tail call float @llvm.fmuladd.f32(float %9, float %2, float %10)
  %12 = fadd float %11, 0x3FE5604180000000
  %13 = tail call float @llvm.fmuladd.f32(float %2, float 0x3FB0481700000000, float %12)
  %14 = getelementptr inbounds %struct.ScatterSettings, ptr %8, i64 0, i32 5
  store float %13, ptr %14, align 4, !tbaa !41
  %15 = fadd float %13, 1.000000e+00
  %16 = fsub float 1.000000e+00, %13
  %17 = fdiv float %15, %16
  %18 = getelementptr inbounds %struct.ScatterSettings, ptr %8, i64 0, i32 7
  store float %17, ptr %18, align 4, !tbaa !42
  %19 = getelementptr inbounds %struct.ScatterSettings, ptr %8, i64 0, i32 11
  store float %1, ptr %19, align 4, !tbaa !43
  %20 = fcmp olt float %0, 0x3FEFAE1480000000
  %21 = select i1 %20, float %0, float 0x3FEFAE1480000000
  %22 = getelementptr inbounds %struct.ScatterSettings, ptr %8, i64 0, i32 12
  store float %21, ptr %22, align 8, !tbaa !44
  %23 = fsub float 1.000000e+00, %3
  %24 = tail call float @llvm.fmuladd.f32(float %21, float %3, float %23)
  %25 = getelementptr inbounds %struct.ScatterSettings, ptr %8, i64 0, i32 13
  store float %24, ptr %25, align 4, !tbaa !45
  %26 = fmul float %17, 0xBFF5555560000000
  %27 = fmul float %26, 0.000000e+00
  %28 = tail call float @expf(float noundef %27) #11
  %29 = fadd float %28, 1.000000e+00
  %30 = fmul float %29, 5.000000e-01
  %31 = fsub float %30, %21
  %32 = load float, ptr %18, align 4, !tbaa !42
  %33 = load float, ptr %22, align 8, !tbaa !44
  %34 = fmul float %32, 0xBFF5555560000000
  %35 = fmul float %34, 0x3FFBB67AE0000000
  %36 = tail call float @expf(float noundef %35) #11
  %37 = fadd float %36, 1.000000e+00
  %38 = fmul float %37, 0.000000e+00
  %39 = fneg float %33
  %40 = tail call float @llvm.fmuladd.f32(float %38, float 0x3FC6A55AC0000000, float %39)
  br label %41

41:                                               ; preds = %6, %56
  %42 = phi i32 [ 0, %6 ], [ %75, %56 ]
  %43 = phi float [ %40, %6 ], [ %44, %56 ]
  %44 = phi float [ %31, %6 ], [ %74, %56 ]
  %45 = phi float [ 1.000000e+00, %6 ], [ %59, %56 ]
  %46 = phi float [ 0.000000e+00, %6 ], [ %45, %56 ]
  %47 = fsub float %44, %43
  %48 = tail call float @llvm.fabs.f32(float %47)
  %49 = fcmp olt float %48, 0x3E45798EE0000000
  br i1 %49, label %77, label %50

50:                                               ; preds = %41
  %51 = fsub float %45, %46
  %52 = fdiv float %51, %47
  %53 = fmul float %44, %52
  %54 = tail call float @llvm.fabs.f32(float %53)
  %55 = fcmp olt float %54, 0x3E45798EE0000000
  br i1 %55, label %77, label %56

56:                                               ; preds = %50
  %57 = fsub float %45, %53
  %58 = fcmp ogt float %57, 1.000000e+00
  %59 = select i1 %58, float 1.000000e+00, float %57
  %60 = load float, ptr %18, align 4, !tbaa !42
  %61 = load float, ptr %22, align 8, !tbaa !44
  %62 = fsub float 1.000000e+00, %59
  %63 = fmul float %62, 3.000000e+00
  %64 = tail call float @sqrtf(float noundef %63) #11
  %65 = fmul float %59, 5.000000e-01
  %66 = fmul float %60, 0xBFF5555560000000
  %67 = fmul float %66, %64
  %68 = tail call float @expf(float noundef %67) #11
  %69 = fadd float %68, 1.000000e+00
  %70 = fmul float %65, %69
  %71 = fneg float %64
  %72 = tail call float @expf(float noundef %71) #11
  %73 = fneg float %61
  %74 = tail call float @llvm.fmuladd.f32(float %70, float %72, float %73)
  %75 = add nuw nsw i32 %42, 1
  %76 = icmp eq i32 %75, 20
  br i1 %76, label %77, label %41, !llvm.loop !46

77:                                               ; preds = %56, %41, %50
  %78 = phi float [ %59, %56 ], [ %45, %41 ], [ %45, %50 ]
  %79 = fcmp ugt float %78, 0.000000e+00
  %80 = select i1 %79, float %78, float 0x3EE4F8B580000000
  %81 = getelementptr inbounds %struct.ScatterSettings, ptr %8, i64 0, i32 8
  store float %80, ptr %81, align 8, !tbaa !49
  %82 = load float, ptr %19, align 4, !tbaa !43
  %83 = fdiv float 1.000000e+00, %82
  %84 = getelementptr inbounds %struct.ScatterSettings, ptr %8, i64 0, i32 4
  store float %83, ptr %84, align 8, !tbaa !50
  %85 = fsub float 1.000000e+00, %80
  %86 = fmul float %85, 3.000000e+00
  %87 = tail call float @sqrtf(float noundef %86) #11
  %88 = fdiv float %83, %87
  %89 = getelementptr inbounds %struct.ScatterSettings, ptr %8, i64 0, i32 3
  store float %88, ptr %89, align 4, !tbaa !51
  %90 = load float, ptr %81, align 8, !tbaa !49
  %91 = fmul float %88, %90
  %92 = getelementptr inbounds %struct.ScatterSettings, ptr %8, i64 0, i32 2
  store float %91, ptr %92, align 8, !tbaa !52
  %93 = fsub float %88, %91
  %94 = getelementptr inbounds %struct.ScatterSettings, ptr %8, i64 0, i32 1
  store float %93, ptr %94, align 4, !tbaa !53
  %95 = fmul float %88, 3.000000e+00
  %96 = fdiv float 1.000000e+00, %95
  %97 = getelementptr inbounds %struct.ScatterSettings, ptr %8, i64 0, i32 6
  store float %96, ptr %97, align 8, !tbaa !54
  %98 = fdiv float 1.000000e+00, %88
  %99 = getelementptr inbounds %struct.ScatterSettings, ptr %8, i64 0, i32 9
  store float %98, ptr %99, align 4, !tbaa !55
  %100 = load float, ptr %18, align 4, !tbaa !42
  %101 = fmul float %100, 4.000000e+00
  %102 = tail call float @llvm.fmuladd.f32(float %101, float %96, float %98)
  %103 = getelementptr inbounds %struct.ScatterSettings, ptr %8, i64 0, i32 10
  store float %102, ptr %103, align 8, !tbaa !56
  %104 = getelementptr inbounds %struct.ScatterSettings, ptr %8, i64 0, i32 14
  store float %98, ptr %104, align 8, !tbaa !57
  %105 = getelementptr inbounds %struct.ScatterSettings, ptr %8, i64 0, i32 15
  store float %4, ptr %105, align 4, !tbaa !58
  %106 = getelementptr inbounds %struct.ScatterSettings, ptr %8, i64 0, i32 16
  store float %5, ptr %106, align 8, !tbaa !59
  %107 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %108 = tail call ptr %107(i64 noundef 40004, ptr noundef nonnull @.str.9) #11
  %109 = getelementptr inbounds %struct.ScatterSettings, ptr %8, i64 0, i32 17
  store ptr %108, ptr %109, align 8, !tbaa !60
  %110 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %111 = tail call ptr %110(i64 noundef 40004, ptr noundef nonnull @.str.9) #11
  %112 = getelementptr inbounds %struct.ScatterSettings, ptr %8, i64 0, i32 18
  store ptr %111, ptr %112, align 8, !tbaa !61
  br label %113

113:                                              ; preds = %77, %113
  %114 = phi i64 [ 0, %77 ], [ %185, %113 ]
  %115 = trunc i64 %114 to i32
  %116 = sitofp i32 %115 to float
  %117 = fmul float %116, 0x3F847AE140000000
  %118 = tail call float @sqrtf(float noundef %117) #11
  %119 = fmul float %118, %118
  %120 = load float, ptr %99, align 4, !tbaa !55
  %121 = tail call float @llvm.fmuladd.f32(float %120, float %120, float %119)
  %122 = tail call float @sqrtf(float noundef %121) #11
  %123 = load float, ptr %103, align 8, !tbaa !56
  %124 = tail call float @llvm.fmuladd.f32(float %123, float %123, float %119)
  %125 = tail call float @sqrtf(float noundef %124) #11
  %126 = load float, ptr %99, align 4, !tbaa !55
  %127 = load float, ptr %84, align 8, !tbaa !50
  %128 = tail call float @llvm.fmuladd.f32(float %127, float %122, float 1.000000e+00)
  %129 = fmul float %126, %128
  %130 = fneg float %127
  %131 = fmul float %122, %130
  %132 = tail call float @expf(float noundef %131) #11
  %133 = fmul float %132, %129
  %134 = fmul float %122, %122
  %135 = fmul float %122, %134
  %136 = fdiv float %133, %135
  %137 = load float, ptr %103, align 8, !tbaa !56
  %138 = load float, ptr %84, align 8, !tbaa !50
  %139 = tail call float @llvm.fmuladd.f32(float %138, float %125, float 1.000000e+00)
  %140 = fmul float %137, %139
  %141 = fneg float %138
  %142 = fmul float %125, %141
  %143 = tail call float @expf(float noundef %142) #11
  %144 = fmul float %143, %140
  %145 = fmul float %125, %125
  %146 = fmul float %125, %145
  %147 = fdiv float %144, %146
  %148 = fadd float %136, %147
  %149 = fmul float %148, 0x3FB45F3060000000
  %150 = load ptr, ptr %109, align 8, !tbaa !60
  %151 = getelementptr inbounds float, ptr %150, i64 %114
  store float %149, ptr %151, align 4, !tbaa !62
  %152 = fmul float %116, %116
  %153 = load float, ptr %99, align 4, !tbaa !55
  %154 = tail call float @llvm.fmuladd.f32(float %153, float %153, float %152)
  %155 = tail call float @sqrtf(float noundef %154) #11
  %156 = load float, ptr %103, align 8, !tbaa !56
  %157 = tail call float @llvm.fmuladd.f32(float %156, float %156, float %152)
  %158 = tail call float @sqrtf(float noundef %157) #11
  %159 = load float, ptr %99, align 4, !tbaa !55
  %160 = load float, ptr %84, align 8, !tbaa !50
  %161 = tail call float @llvm.fmuladd.f32(float %160, float %155, float 1.000000e+00)
  %162 = fmul float %159, %161
  %163 = fneg float %160
  %164 = fmul float %155, %163
  %165 = tail call float @expf(float noundef %164) #11
  %166 = fmul float %165, %162
  %167 = fmul float %155, %155
  %168 = fmul float %155, %167
  %169 = fdiv float %166, %168
  %170 = load float, ptr %103, align 8, !tbaa !56
  %171 = load float, ptr %84, align 8, !tbaa !50
  %172 = tail call float @llvm.fmuladd.f32(float %171, float %158, float 1.000000e+00)
  %173 = fmul float %170, %172
  %174 = fneg float %171
  %175 = fmul float %158, %174
  %176 = tail call float @expf(float noundef %175) #11
  %177 = fmul float %176, %173
  %178 = fmul float %158, %158
  %179 = fmul float %158, %178
  %180 = fdiv float %177, %179
  %181 = fadd float %169, %180
  %182 = fmul float %181, 0x3FB45F3060000000
  %183 = load ptr, ptr %112, align 8, !tbaa !61
  %184 = getelementptr inbounds float, ptr %183, i64 %114
  store float %182, ptr %184, align 4, !tbaa !62
  %185 = add nuw nsw i64 %114, 1
  %186 = icmp eq i64 %185, 10001
  br i1 %186, label %187, label %113, !llvm.loop !63

187:                                              ; preds = %113
  ret ptr %8
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @scatter_settings_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %3 = getelementptr inbounds %struct.ScatterSettings, ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  tail call void %2(ptr noundef %4) #11
  %5 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.ScatterSettings, ptr %0, i64 0, i32 18
  %7 = load ptr, ptr %6, align 8, !tbaa !61
  tail call void %5(ptr noundef %7) #11
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %8(ptr noundef %0) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @scatter_tree_new(ptr nocapture noundef readonly %0, float noundef %1, float noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %9 = tail call ptr %8(i64 noundef 104, ptr noundef nonnull @.str.1) #11
  %10 = getelementptr inbounds %struct.ScatterTree, ptr %9, i64 0, i32 3
  store float %1, ptr %10, align 4, !tbaa !64
  %11 = getelementptr inbounds %struct.ScatterTree, ptr %9, i64 0, i32 2
  store float %2, ptr %11, align 8, !tbaa !67
  %12 = getelementptr inbounds %struct.ScatterTree, ptr %9, i64 0, i32 8
  store i32 %6, ptr %12, align 8, !tbaa !68
  %13 = load ptr, ptr %0, align 8, !tbaa !34
  %14 = getelementptr inbounds %struct.ScatterTree, ptr %9, i64 0, i32 1
  store ptr %13, ptr %14, align 8, !tbaa !34
  %15 = getelementptr inbounds ptr, ptr %0, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = getelementptr inbounds %struct.ScatterTree, ptr %9, i64 0, i32 1, i64 1
  store ptr %16, ptr %17, align 8, !tbaa !34
  %18 = getelementptr inbounds ptr, ptr %0, i64 2
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  %20 = getelementptr inbounds %struct.ScatterTree, ptr %9, i64 0, i32 1, i64 2
  store ptr %19, ptr %20, align 8, !tbaa !34
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %22 = sext i32 %6 to i64
  %23 = shl nsw i64 %22, 5
  %24 = tail call ptr %21(i64 noundef %23, ptr noundef nonnull @.str.2) #11
  %25 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %26 = shl nsw i64 %22, 3
  %27 = tail call ptr %25(i64 noundef %26, ptr noundef nonnull @.str.3) #11
  %28 = getelementptr inbounds %struct.ScatterTree, ptr %9, i64 0, i32 5
  store ptr %24, ptr %28, align 8, !tbaa !69
  %29 = getelementptr inbounds %struct.ScatterTree, ptr %9, i64 0, i32 6
  store ptr %27, ptr %29, align 8, !tbaa !70
  %30 = getelementptr inbounds %struct.ScatterTree, ptr %9, i64 0, i32 9
  %31 = getelementptr inbounds %struct.ScatterTree, ptr %9, i64 0, i32 9, i64 2
  store float 0x46293E5940000000, ptr %31, align 4, !tbaa !62
  %32 = getelementptr inbounds %struct.ScatterTree, ptr %9, i64 0, i32 9, i64 1
  store float 0x46293E5940000000, ptr %32, align 4, !tbaa !62
  store float 0x46293E5940000000, ptr %30, align 4, !tbaa !62
  %33 = getelementptr inbounds %struct.ScatterTree, ptr %9, i64 0, i32 10
  %34 = getelementptr inbounds %struct.ScatterTree, ptr %9, i64 0, i32 10, i64 2
  store float 0xC6293E5940000000, ptr %34, align 8, !tbaa !62
  %35 = getelementptr inbounds %struct.ScatterTree, ptr %9, i64 0, i32 10, i64 1
  store float 0xC6293E5940000000, ptr %35, align 4, !tbaa !62
  store float 0xC6293E5940000000, ptr %33, align 8, !tbaa !62
  %36 = icmp sgt i32 %6, 0
  br i1 %36, label %37, label %77

37:                                               ; preds = %7
  %38 = zext nneg i32 %6 to i64
  br label %39

39:                                               ; preds = %37, %39
  %40 = phi i64 [ 0, %37 ], [ %75, %39 ]
  %41 = getelementptr inbounds %struct.ScatterPoint, ptr %24, i64 %40
  %42 = getelementptr inbounds [3 x float], ptr %3, i64 %40
  %43 = load float, ptr %42, align 4, !tbaa !62
  store float %43, ptr %41, align 4, !tbaa !62
  %44 = getelementptr inbounds float, ptr %42, i64 1
  %45 = load float, ptr %44, align 4, !tbaa !62
  %46 = getelementptr inbounds float, ptr %41, i64 1
  store float %45, ptr %46, align 4, !tbaa !62
  %47 = getelementptr inbounds float, ptr %42, i64 2
  %48 = load float, ptr %47, align 4, !tbaa !62
  %49 = getelementptr inbounds float, ptr %41, i64 2
  store float %48, ptr %49, align 4, !tbaa !62
  %50 = getelementptr inbounds %struct.ScatterPoint, ptr %24, i64 %40, i32 1
  %51 = getelementptr inbounds [3 x float], ptr %4, i64 %40
  %52 = load float, ptr %51, align 4, !tbaa !62
  store float %52, ptr %50, align 4, !tbaa !62
  %53 = getelementptr inbounds float, ptr %51, i64 1
  %54 = load float, ptr %53, align 4, !tbaa !62
  %55 = getelementptr inbounds float, ptr %50, i64 1
  store float %54, ptr %55, align 4, !tbaa !62
  %56 = getelementptr inbounds float, ptr %51, i64 2
  %57 = load float, ptr %56, align 4, !tbaa !62
  %58 = getelementptr inbounds float, ptr %50, i64 2
  store float %57, ptr %58, align 4, !tbaa !62
  %59 = getelementptr inbounds float, ptr %5, i64 %40
  %60 = load float, ptr %59, align 4, !tbaa !62
  %61 = tail call float @llvm.fabs.f32(float %60)
  %62 = load float, ptr %10, align 4, !tbaa !64
  %63 = fmul float %62, %62
  %64 = fdiv float %61, %63
  %65 = getelementptr inbounds %struct.ScatterPoint, ptr %24, i64 %40, i32 2
  store float %64, ptr %65, align 4, !tbaa !71
  %66 = load float, ptr %59, align 4, !tbaa !62
  %67 = fcmp olt float %66, 0.000000e+00
  %68 = zext i1 %67 to i32
  %69 = getelementptr inbounds %struct.ScatterPoint, ptr %24, i64 %40, i32 3
  store i32 %68, ptr %69, align 4, !tbaa !73
  %70 = fdiv float 1.000000e+00, %62
  %71 = fmul float %43, %70
  store float %71, ptr %41, align 4, !tbaa !62
  %72 = fmul float %45, %70
  store float %72, ptr %46, align 4, !tbaa !62
  %73 = fmul float %48, %70
  store float %73, ptr %49, align 4, !tbaa !62
  tail call void @minmax_v3v3_v3(ptr noundef nonnull %30, ptr noundef nonnull %33, ptr noundef nonnull %41) #11
  %74 = getelementptr inbounds ptr, ptr %27, i64 %40
  store ptr %41, ptr %74, align 8, !tbaa !34
  %75 = add nuw nsw i64 %40, 1
  %76 = icmp eq i64 %75, %38
  br i1 %76, label %77, label %39, !llvm.loop !74

77:                                               ; preds = %39, %7
  ret ptr %9
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #2

declare void @minmax_v3v3_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @scatter_tree_build(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [3 x float], align 4
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #11
  %4 = getelementptr inbounds %struct.ScatterTree, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !68
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %7 = sext i32 %5 to i64
  %8 = shl nsw i64 %7, 5
  %9 = tail call ptr %6(i64 noundef %8, ptr noundef nonnull @.str.2) #11
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %11 = shl nsw i64 %7, 3
  %12 = tail call ptr %10(i64 noundef %11, ptr noundef nonnull @.str.4) #11
  %13 = getelementptr inbounds %struct.ScatterTree, ptr %0, i64 0, i32 7
  store ptr %12, ptr %13, align 8, !tbaa !75
  %14 = tail call ptr @BLI_memarena_new(i64 noundef 4456448, ptr noundef nonnull @.str.5) #11
  store ptr %14, ptr %0, align 8, !tbaa !76
  tail call void @BLI_memarena_use_calloc(ptr noundef %14) #11
  %15 = load ptr, ptr %0, align 8, !tbaa !76
  %16 = tail call ptr @BLI_memarena_alloc(ptr noundef %15, i64 noundef 136) #11
  %17 = getelementptr inbounds %struct.ScatterTree, ptr %0, i64 0, i32 4
  store ptr %16, ptr %17, align 8, !tbaa !77
  %18 = getelementptr inbounds %struct.ScatterNode, ptr %16, i64 0, i32 6
  store ptr %9, ptr %18, align 8, !tbaa !78
  %19 = getelementptr inbounds %struct.ScatterNode, ptr %16, i64 0, i32 5
  store i32 %5, ptr %19, align 4, !tbaa !80
  %20 = getelementptr inbounds %struct.ScatterTree, ptr %0, i64 0, i32 9
  %21 = load float, ptr %20, align 4, !tbaa !62
  %22 = getelementptr inbounds %struct.ScatterTree, ptr %0, i64 0, i32 10
  %23 = load float, ptr %22, align 8, !tbaa !62
  %24 = fadd float %21, %23
  %25 = fmul float %24, 5.000000e-01
  store float %25, ptr %2, align 4, !tbaa !62
  %26 = getelementptr inbounds %struct.ScatterTree, ptr %0, i64 0, i32 9, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !62
  %28 = getelementptr inbounds %struct.ScatterTree, ptr %0, i64 0, i32 10, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !62
  %30 = fadd float %27, %29
  %31 = fmul float %30, 5.000000e-01
  %32 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 1
  store float %31, ptr %32, align 4, !tbaa !62
  %33 = getelementptr inbounds %struct.ScatterTree, ptr %0, i64 0, i32 9, i64 2
  %34 = load float, ptr %33, align 4, !tbaa !62
  %35 = getelementptr inbounds %struct.ScatterTree, ptr %0, i64 0, i32 10, i64 2
  %36 = load float, ptr %35, align 8, !tbaa !62
  %37 = fadd float %34, %36
  %38 = fmul float %37, 5.000000e-01
  %39 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 2
  store float %38, ptr %39, align 4, !tbaa !62
  %40 = fsub float %23, %21
  %41 = fmul float %40, 5.000000e-01
  store float %41, ptr %3, align 4, !tbaa !62
  %42 = fsub float %29, %27
  %43 = fmul float %42, 5.000000e-01
  %44 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  store float %43, ptr %44, align 4, !tbaa !62
  %45 = fsub float %36, %34
  %46 = fmul float %45, 5.000000e-01
  %47 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  store float %46, ptr %47, align 4, !tbaa !62
  %48 = getelementptr inbounds %struct.ScatterTree, ptr %0, i64 0, i32 6
  %49 = load ptr, ptr %48, align 8, !tbaa !70
  call fastcc void @create_octree_node(ptr noundef nonnull %0, ptr noundef %16, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %49, i32 noundef 0)
  %50 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %51 = getelementptr inbounds %struct.ScatterTree, ptr %0, i64 0, i32 5
  %52 = load ptr, ptr %51, align 8, !tbaa !69
  tail call void %50(ptr noundef %52) #11
  %53 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %54 = load ptr, ptr %48, align 8, !tbaa !70
  tail call void %53(ptr noundef %54) #11
  %55 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %56 = load ptr, ptr %13, align 8, !tbaa !75
  tail call void %55(ptr noundef %56) #11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %48, i8 0, i64 16, i1 false)
  store ptr %9, ptr %51, align 8, !tbaa !69
  %57 = load ptr, ptr %17, align 8, !tbaa !77
  tail call fastcc void @sum_radiance(ptr noundef %57)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #11
  ret void
}

declare ptr @BLI_memarena_new(i64 noundef, ptr noundef) local_unnamed_addr #4

declare void @BLI_memarena_use_calloc(ptr noundef) local_unnamed_addr #4

declare ptr @BLI_memarena_alloc(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @create_octree_node(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = alloca [8 x i32], align 16
  %8 = alloca [8 x i32], align 16
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = getelementptr inbounds %struct.ScatterTree, ptr %0, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #11
  %13 = getelementptr inbounds %struct.ScatterNode, ptr %1, i64 0, i32 5
  %14 = load i32, ptr %13, align 4, !tbaa !80
  %15 = icmp slt i32 %14, 9
  %16 = icmp eq i32 %5, 15
  %17 = or i1 %16, %15
  br i1 %17, label %18, label %33

18:                                               ; preds = %6
  %19 = load i32, ptr %13, align 4, !tbaa !80
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %197

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.ScatterNode, ptr %1, i64 0, i32 6
  br label %23

23:                                               ; preds = %21, %23
  %24 = phi i64 [ 0, %21 ], [ %29, %23 ]
  %25 = load ptr, ptr %22, align 8, !tbaa !78
  %26 = getelementptr inbounds %struct.ScatterPoint, ptr %25, i64 %24
  %27 = getelementptr inbounds ptr, ptr %4, i64 %24
  %28 = load ptr, ptr %27, align 8, !tbaa !34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %26, ptr noundef nonnull align 4 dereferenceable(32) %28, i64 32, i1 false), !tbaa.struct !81
  %29 = add nuw nsw i64 %24, 1
  %30 = load i32, ptr %13, align 4, !tbaa !80
  %31 = sext i32 %30 to i64
  %32 = icmp slt i64 %29, %31
  br i1 %32, label %23, label %197, !llvm.loop !84

33:                                               ; preds = %6
  %34 = load float, ptr %3, align 4, !tbaa !62
  %35 = fmul float %34, 5.000000e-01
  store float %35, ptr %10, align 4, !tbaa !62
  %36 = getelementptr inbounds float, ptr %3, i64 1
  %37 = load float, ptr %36, align 4, !tbaa !62
  %38 = fmul float %37, 5.000000e-01
  %39 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 1
  store float %38, ptr %39, align 4, !tbaa !62
  %40 = getelementptr inbounds float, ptr %3, i64 2
  %41 = load float, ptr %40, align 4, !tbaa !62
  %42 = fmul float %41, 5.000000e-01
  %43 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  store float %42, ptr %43, align 4, !tbaa !62
  %44 = load float, ptr %2, align 4, !tbaa !62
  %45 = getelementptr inbounds %struct.ScatterNode, ptr %1, i64 0, i32 7
  store float %44, ptr %45, align 8, !tbaa !62
  %46 = getelementptr inbounds float, ptr %2, i64 1
  %47 = load float, ptr %46, align 4, !tbaa !62
  %48 = getelementptr inbounds %struct.ScatterNode, ptr %1, i64 0, i32 7, i64 1
  store float %47, ptr %48, align 4, !tbaa !62
  %49 = getelementptr inbounds float, ptr %2, i64 2
  %50 = load float, ptr %49, align 4, !tbaa !62
  %51 = getelementptr inbounds %struct.ScatterNode, ptr %1, i64 0, i32 7, i64 2
  store float %50, ptr %51, align 8, !tbaa !62
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %8, i8 0, i64 32, i1 false)
  %52 = zext i32 %14 to i64
  br label %53

53:                                               ; preds = %33, %53
  %54 = phi i64 [ 0, %33 ], [ %74, %53 ]
  %55 = getelementptr inbounds ptr, ptr %4, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !34
  %57 = load float, ptr %56, align 4, !tbaa !62
  %58 = fcmp oge float %57, %44
  %59 = zext i1 %58 to i64
  %60 = getelementptr inbounds [3 x float], ptr %56, i64 0, i64 1
  %61 = load float, ptr %60, align 4, !tbaa !62
  %62 = fcmp oge float %61, %47
  %63 = select i1 %62, i64 2, i64 0
  %64 = or disjoint i64 %63, %59
  %65 = getelementptr inbounds [3 x float], ptr %56, i64 0, i64 2
  %66 = load float, ptr %65, align 4, !tbaa !62
  %67 = fcmp oge float %66, %50
  %68 = select i1 %67, i64 4, i64 0
  %69 = or disjoint i64 %64, %68
  %70 = getelementptr inbounds ptr, ptr %12, i64 %54
  store ptr %56, ptr %70, align 8, !tbaa !34
  %71 = getelementptr inbounds [8 x i32], ptr %7, i64 0, i64 %69
  %72 = load i32, ptr %71, align 4, !tbaa !83
  %73 = add nsw i32 %72, 1
  store i32 %73, ptr %71, align 4, !tbaa !83
  %74 = add nuw nsw i64 %54, 1
  %75 = icmp eq i64 %74, %52
  br i1 %75, label %76, label %53, !llvm.loop !85

76:                                               ; preds = %53, %96
  %77 = phi i64 [ %97, %96 ], [ 0, %53 ]
  %78 = phi i32 [ %86, %96 ], [ 0, %53 ]
  %79 = phi i32 [ %84, %96 ], [ 0, %53 ]
  %80 = getelementptr inbounds [8 x i32], ptr %7, i64 0, i64 %77
  %81 = load i32, ptr %80, align 4, !tbaa !83
  %82 = icmp ne i32 %81, 0
  %83 = zext i1 %82 to i32
  %84 = add nuw nsw i32 %79, %83
  %85 = trunc i64 %77 to i32
  %86 = select i1 %82, i32 %85, i32 %78
  %87 = icmp eq i64 %77, 0
  br i1 %87, label %96, label %88

88:                                               ; preds = %76
  %89 = add nsw i64 %77, -1
  %90 = getelementptr inbounds [8 x i32], ptr %8, i64 0, i64 %89
  %91 = load i32, ptr %90, align 4, !tbaa !83
  %92 = getelementptr inbounds [8 x i32], ptr %7, i64 0, i64 %89
  %93 = load i32, ptr %92, align 4, !tbaa !83
  %94 = add nsw i32 %93, %91
  %95 = getelementptr inbounds [8 x i32], ptr %8, i64 0, i64 %77
  store i32 %94, ptr %95, align 4, !tbaa !83
  br label %96

96:                                               ; preds = %76, %88
  %97 = add nuw nsw i64 %77, 1
  %98 = icmp eq i64 %97, 8
  br i1 %98, label %99, label %76, !llvm.loop !86

99:                                               ; preds = %96
  %100 = icmp ult i32 %84, 2
  br i1 %100, label %105, label %101

101:                                              ; preds = %99
  %102 = icmp sgt i32 %14, 0
  br i1 %102, label %103, label %127

103:                                              ; preds = %101
  %104 = zext nneg i32 %14 to i64
  br label %135

105:                                              ; preds = %99
  %106 = and i32 %86, 1
  %107 = and i32 %86, 2
  %108 = and i32 %86, 4
  %109 = load float, ptr %2, align 4, !tbaa !62
  %110 = icmp eq i32 %106, 0
  %111 = fneg float %35
  %112 = select i1 %110, float %111, float %35
  %113 = fadd float %112, %109
  store float %113, ptr %9, align 4, !tbaa !62
  %114 = load float, ptr %46, align 4, !tbaa !62
  %115 = icmp eq i32 %107, 0
  %116 = fneg float %38
  %117 = select i1 %115, float %116, float %38
  %118 = fadd float %117, %114
  %119 = getelementptr inbounds float, ptr %9, i64 1
  store float %118, ptr %119, align 4, !tbaa !62
  %120 = load float, ptr %49, align 4, !tbaa !62
  %121 = icmp eq i32 %108, 0
  %122 = fneg float %42
  %123 = select i1 %121, float %122, float %42
  %124 = fadd float %123, %120
  %125 = getelementptr inbounds float, ptr %9, i64 2
  store float %124, ptr %125, align 4, !tbaa !62
  %126 = add nsw i32 %5, 1
  call fastcc void @create_octree_node(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef %4, i32 noundef %126)
  br label %197

127:                                              ; preds = %135, %101
  %128 = getelementptr inbounds %struct.ScatterNode, ptr %1, i64 0, i32 6
  %129 = fneg float %35
  %130 = fneg float %38
  %131 = getelementptr inbounds float, ptr %9, i64 1
  %132 = fneg float %42
  %133 = getelementptr inbounds float, ptr %9, i64 2
  %134 = add nsw i32 %5, 1
  br label %159

135:                                              ; preds = %103, %135
  %136 = phi i64 [ 0, %103 ], [ %157, %135 ]
  %137 = getelementptr inbounds ptr, ptr %12, i64 %136
  %138 = load ptr, ptr %137, align 8, !tbaa !34
  %139 = load float, ptr %138, align 4, !tbaa !62
  %140 = fcmp oge float %139, %44
  %141 = zext i1 %140 to i64
  %142 = getelementptr inbounds [3 x float], ptr %138, i64 0, i64 1
  %143 = load float, ptr %142, align 4, !tbaa !62
  %144 = fcmp oge float %143, %47
  %145 = select i1 %144, i64 2, i64 0
  %146 = or disjoint i64 %145, %141
  %147 = getelementptr inbounds [3 x float], ptr %138, i64 0, i64 2
  %148 = load float, ptr %147, align 4, !tbaa !62
  %149 = fcmp oge float %148, %50
  %150 = select i1 %149, i64 4, i64 0
  %151 = or disjoint i64 %146, %150
  %152 = getelementptr inbounds [8 x i32], ptr %8, i64 0, i64 %151
  %153 = load i32, ptr %152, align 4, !tbaa !83
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds ptr, ptr %4, i64 %154
  store ptr %138, ptr %155, align 8, !tbaa !34
  %156 = add nsw i32 %153, 1
  store i32 %156, ptr %152, align 4, !tbaa !83
  %157 = add nuw nsw i64 %136, 1
  %158 = icmp eq i64 %157, %104
  br i1 %158, label %127, label %135, !llvm.loop !87

159:                                              ; preds = %127, %191
  %160 = phi i64 [ 0, %127 ], [ %193, %191 ]
  %161 = phi i32 [ 0, %127 ], [ %192, %191 ]
  %162 = getelementptr inbounds [8 x i32], ptr %7, i64 0, i64 %160
  %163 = load i32, ptr %162, align 4, !tbaa !83
  %164 = icmp sgt i32 %163, 0
  br i1 %164, label %165, label %189

165:                                              ; preds = %159
  %166 = load ptr, ptr %0, align 8, !tbaa !76
  %167 = tail call ptr @BLI_memarena_alloc(ptr noundef %166, i64 noundef 136) #11
  %168 = getelementptr inbounds %struct.ScatterNode, ptr %1, i64 0, i32 8, i64 %160
  store ptr %167, ptr %168, align 8, !tbaa !34
  %169 = load ptr, ptr %128, align 8, !tbaa !78
  %170 = sext i32 %161 to i64
  %171 = getelementptr inbounds %struct.ScatterPoint, ptr %169, i64 %170
  %172 = getelementptr inbounds %struct.ScatterNode, ptr %167, i64 0, i32 6
  store ptr %171, ptr %172, align 8, !tbaa !78
  %173 = getelementptr inbounds %struct.ScatterNode, ptr %167, i64 0, i32 5
  store i32 %163, ptr %173, align 4, !tbaa !80
  %174 = getelementptr inbounds ptr, ptr %4, i64 %170
  %175 = load float, ptr %2, align 4, !tbaa !62
  %176 = and i64 %160, 1
  %177 = icmp eq i64 %176, 0
  %178 = select i1 %177, float %129, float %35
  %179 = fadd float %178, %175
  store float %179, ptr %9, align 4, !tbaa !62
  %180 = load float, ptr %46, align 4, !tbaa !62
  %181 = and i64 %160, 2
  %182 = icmp eq i64 %181, 0
  %183 = select i1 %182, float %130, float %38
  %184 = fadd float %183, %180
  store float %184, ptr %131, align 4, !tbaa !62
  %185 = load float, ptr %49, align 4, !tbaa !62
  %186 = icmp ult i64 %160, 4
  %187 = select i1 %186, float %132, float %42
  %188 = fadd float %187, %185
  store float %188, ptr %133, align 4, !tbaa !62
  call fastcc void @create_octree_node(ptr noundef nonnull %0, ptr noundef %167, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef %174, i32 noundef %134)
  br label %191

189:                                              ; preds = %159
  %190 = getelementptr inbounds %struct.ScatterNode, ptr %1, i64 0, i32 8, i64 %160
  store ptr null, ptr %190, align 8, !tbaa !34
  br label %191

191:                                              ; preds = %165, %189
  %192 = add nsw i32 %163, %161
  %193 = add nuw nsw i64 %160, 1
  %194 = icmp eq i64 %193, 8
  br i1 %194, label %195, label %159, !llvm.loop !88

195:                                              ; preds = %191
  %196 = getelementptr inbounds %struct.ScatterNode, ptr %1, i64 0, i32 6
  store ptr null, ptr %196, align 8, !tbaa !78
  store i32 0, ptr %13, align 4, !tbaa !80
  br label %197

197:                                              ; preds = %23, %18, %195, %105
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #11
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @sum_radiance(ptr noundef %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.ScatterNode, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 4, !tbaa !80
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %153

5:                                                ; preds = %1
  %6 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 2
  %7 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 1
  %8 = getelementptr inbounds %struct.ScatterNode, ptr %0, i64 0, i32 1
  %9 = getelementptr inbounds %struct.ScatterNode, ptr %0, i64 0, i32 1, i64 2
  %10 = getelementptr inbounds %struct.ScatterNode, ptr %0, i64 0, i32 1, i64 1
  %11 = getelementptr inbounds %struct.ScatterNode, ptr %0, i64 0, i32 2
  %12 = getelementptr inbounds %struct.ScatterNode, ptr %0, i64 0, i32 2, i64 2
  %13 = getelementptr inbounds %struct.ScatterNode, ptr %0, i64 0, i32 2, i64 1
  %14 = getelementptr inbounds %struct.ScatterNode, ptr %0, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %0, i8 0, i64 36, i1 false)
  %15 = load ptr, ptr %14, align 8, !tbaa !78
  %16 = getelementptr inbounds %struct.ScatterNode, ptr %0, i64 0, i32 4
  %17 = getelementptr inbounds %struct.ScatterNode, ptr %0, i64 0, i32 3
  %18 = load float, ptr %7, align 4, !tbaa !62
  %19 = load float, ptr %6, align 8, !tbaa !62
  %20 = zext nneg i32 %3 to i64
  br label %21

21:                                               ; preds = %5, %82
  %22 = phi i64 [ 0, %5 ], [ %83, %82 ]
  %23 = phi float [ %19, %5 ], [ %48, %82 ]
  %24 = phi float [ %18, %5 ], [ %45, %82 ]
  %25 = phi float [ 0.000000e+00, %5 ], [ %42, %82 ]
  %26 = phi float [ 0.000000e+00, %5 ], [ %40, %82 ]
  %27 = getelementptr inbounds %struct.ScatterPoint, ptr %15, i64 %22
  %28 = getelementptr inbounds %struct.ScatterPoint, ptr %15, i64 %22, i32 2
  %29 = load float, ptr %28, align 4, !tbaa !71
  %30 = getelementptr inbounds %struct.ScatterPoint, ptr %15, i64 %22, i32 1
  %31 = load float, ptr %30, align 4, !tbaa !62
  %32 = getelementptr inbounds %struct.ScatterPoint, ptr %15, i64 %22, i32 1, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !62
  %34 = fadd float %31, %33
  %35 = getelementptr inbounds %struct.ScatterPoint, ptr %15, i64 %22, i32 1, i64 2
  %36 = load float, ptr %35, align 4, !tbaa !62
  %37 = fadd float %34, %36
  %38 = tail call float @llvm.fabs.f32(float %37)
  %39 = fmul float %29, %38
  %40 = fadd float %26, %39
  %41 = load float, ptr %27, align 4, !tbaa !62
  %42 = tail call float @llvm.fmuladd.f32(float %39, float %41, float %25)
  store float %42, ptr %0, align 8, !tbaa !62
  %43 = getelementptr inbounds [3 x float], ptr %27, i64 0, i64 1
  %44 = load float, ptr %43, align 4, !tbaa !62
  %45 = tail call float @llvm.fmuladd.f32(float %39, float %44, float %24)
  store float %45, ptr %7, align 4, !tbaa !62
  %46 = getelementptr inbounds [3 x float], ptr %27, i64 0, i64 2
  %47 = load float, ptr %46, align 4, !tbaa !62
  %48 = tail call float @llvm.fmuladd.f32(float %39, float %47, float %23)
  store float %48, ptr %6, align 8, !tbaa !62
  %49 = getelementptr inbounds %struct.ScatterPoint, ptr %15, i64 %22, i32 3
  %50 = load i32, ptr %49, align 4, !tbaa !73
  %51 = icmp eq i32 %50, 0
  %52 = load float, ptr %30, align 4, !tbaa !62
  %53 = load float, ptr %28, align 4, !tbaa !71
  br i1 %51, label %68, label %54

54:                                               ; preds = %21
  %55 = load float, ptr %11, align 8, !tbaa !62
  %56 = tail call float @llvm.fmuladd.f32(float %52, float %53, float %55)
  store float %56, ptr %11, align 8, !tbaa !62
  %57 = load float, ptr %32, align 4, !tbaa !62
  %58 = load float, ptr %28, align 4, !tbaa !71
  %59 = load float, ptr %13, align 4, !tbaa !62
  %60 = tail call float @llvm.fmuladd.f32(float %57, float %58, float %59)
  store float %60, ptr %13, align 4, !tbaa !62
  %61 = load float, ptr %35, align 4, !tbaa !62
  %62 = load float, ptr %28, align 4, !tbaa !71
  %63 = load float, ptr %12, align 8, !tbaa !62
  %64 = tail call float @llvm.fmuladd.f32(float %61, float %62, float %63)
  store float %64, ptr %12, align 8, !tbaa !62
  %65 = load float, ptr %28, align 4, !tbaa !71
  %66 = load float, ptr %16, align 8, !tbaa !89
  %67 = fadd float %65, %66
  store float %67, ptr %16, align 8, !tbaa !89
  br label %82

68:                                               ; preds = %21
  %69 = load float, ptr %8, align 4, !tbaa !62
  %70 = tail call float @llvm.fmuladd.f32(float %52, float %53, float %69)
  store float %70, ptr %8, align 4, !tbaa !62
  %71 = load float, ptr %32, align 4, !tbaa !62
  %72 = load float, ptr %28, align 4, !tbaa !71
  %73 = load float, ptr %10, align 4, !tbaa !62
  %74 = tail call float @llvm.fmuladd.f32(float %71, float %72, float %73)
  store float %74, ptr %10, align 4, !tbaa !62
  %75 = load float, ptr %35, align 4, !tbaa !62
  %76 = load float, ptr %28, align 4, !tbaa !71
  %77 = load float, ptr %9, align 4, !tbaa !62
  %78 = tail call float @llvm.fmuladd.f32(float %75, float %76, float %77)
  store float %78, ptr %9, align 4, !tbaa !62
  %79 = load float, ptr %28, align 4, !tbaa !71
  %80 = load float, ptr %17, align 4, !tbaa !90
  %81 = fadd float %79, %80
  store float %81, ptr %17, align 4, !tbaa !90
  br label %82

82:                                               ; preds = %68, %54
  %83 = add nuw nsw i64 %22, 1
  %84 = icmp eq i64 %83, %20
  br i1 %84, label %85, label %21, !llvm.loop !91

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.ScatterNode, ptr %0, i64 0, i32 3
  %87 = load float, ptr %86, align 4, !tbaa !90
  %88 = fcmp ogt float %87, 0x3C9CD2B2A0000000
  br i1 %88, label %89, label %97

89:                                               ; preds = %85
  %90 = fdiv float 1.000000e+00, %87
  %91 = load float, ptr %8, align 4, !tbaa !62
  %92 = fmul float %90, %91
  store float %92, ptr %8, align 4, !tbaa !62
  %93 = load float, ptr %10, align 4, !tbaa !62
  %94 = fmul float %90, %93
  store float %94, ptr %10, align 4, !tbaa !62
  %95 = load float, ptr %9, align 4, !tbaa !62
  %96 = fmul float %90, %95
  store float %96, ptr %9, align 4, !tbaa !62
  br label %97

97:                                               ; preds = %89, %85
  %98 = getelementptr inbounds %struct.ScatterNode, ptr %0, i64 0, i32 4
  %99 = load float, ptr %98, align 8, !tbaa !89
  %100 = fcmp ogt float %99, 0x3C9CD2B2A0000000
  br i1 %100, label %101, label %109

101:                                              ; preds = %97
  %102 = fdiv float 1.000000e+00, %99
  %103 = load float, ptr %11, align 8, !tbaa !62
  %104 = fmul float %102, %103
  store float %104, ptr %11, align 8, !tbaa !62
  %105 = load float, ptr %13, align 4, !tbaa !62
  %106 = fmul float %102, %105
  store float %106, ptr %13, align 4, !tbaa !62
  %107 = load float, ptr %12, align 8, !tbaa !62
  %108 = fmul float %102, %107
  store float %108, ptr %12, align 8, !tbaa !62
  br label %109

109:                                              ; preds = %101, %97
  %110 = fcmp ogt float %40, 0x3C9CD2B2A0000000
  br i1 %110, label %119, label %111

111:                                              ; preds = %109
  %112 = getelementptr inbounds %struct.ScatterNode, ptr %0, i64 0, i32 6
  %113 = load ptr, ptr %112, align 8, !tbaa !78
  %114 = load float, ptr %0, align 8, !tbaa !62
  %115 = load float, ptr %7, align 4, !tbaa !62
  %116 = load float, ptr %6, align 8, !tbaa !62
  %117 = tail call i32 @llvm.smax.i32(i32 %3, i32 1)
  %118 = zext nneg i32 %117 to i64
  br label %127

119:                                              ; preds = %109
  %120 = fdiv float 1.000000e+00, %40
  %121 = load float, ptr %0, align 8, !tbaa !62
  %122 = fmul float %120, %121
  store float %122, ptr %0, align 8, !tbaa !62
  %123 = load float, ptr %7, align 4, !tbaa !62
  %124 = fmul float %120, %123
  store float %124, ptr %7, align 4, !tbaa !62
  %125 = load float, ptr %6, align 8, !tbaa !62
  %126 = fmul float %120, %125
  br label %151

127:                                              ; preds = %111, %127
  %128 = phi i64 [ 0, %111 ], [ %141, %127 ]
  %129 = phi float [ %116, %111 ], [ %140, %127 ]
  %130 = phi float [ %115, %111 ], [ %137, %127 ]
  %131 = phi float [ %114, %111 ], [ %134, %127 ]
  %132 = getelementptr inbounds %struct.ScatterPoint, ptr %113, i64 %128
  %133 = load float, ptr %132, align 4, !tbaa !62
  %134 = fadd float %133, %131
  store float %134, ptr %0, align 8, !tbaa !62
  %135 = getelementptr inbounds [3 x float], ptr %132, i64 0, i64 1
  %136 = load float, ptr %135, align 4, !tbaa !62
  %137 = fadd float %136, %130
  store float %137, ptr %7, align 4, !tbaa !62
  %138 = getelementptr inbounds [3 x float], ptr %132, i64 0, i64 2
  %139 = load float, ptr %138, align 4, !tbaa !62
  %140 = fadd float %139, %129
  store float %140, ptr %6, align 8, !tbaa !62
  %141 = add nuw nsw i64 %128, 1
  %142 = icmp eq i64 %141, %118
  br i1 %142, label %143, label %127, !llvm.loop !92

143:                                              ; preds = %127
  %144 = sitofp i32 %3 to float
  %145 = load float, ptr %0, align 8, !tbaa !62
  %146 = fdiv float %145, %144
  store float %146, ptr %0, align 8, !tbaa !62
  %147 = load float, ptr %7, align 4, !tbaa !62
  %148 = fdiv float %147, %144
  store float %148, ptr %7, align 4, !tbaa !62
  %149 = load float, ptr %6, align 8, !tbaa !62
  %150 = fdiv float %149, %144
  br label %151

151:                                              ; preds = %119, %143
  %152 = phi float [ %150, %143 ], [ %126, %119 ]
  store float %152, ptr %6, align 8, !tbaa !62
  br label %317

153:                                              ; preds = %1, %159
  %154 = phi i64 [ %160, %159 ], [ 0, %1 ]
  %155 = getelementptr inbounds %struct.ScatterNode, ptr %0, i64 0, i32 8, i64 %154
  %156 = load ptr, ptr %155, align 8, !tbaa !34
  %157 = icmp eq ptr %156, null
  br i1 %157, label %159, label %158

158:                                              ; preds = %153
  tail call fastcc void @sum_radiance(ptr noundef nonnull %156)
  br label %159

159:                                              ; preds = %153, %158
  %160 = add nuw nsw i64 %154, 1
  %161 = icmp eq i64 %160, 8
  br i1 %161, label %162, label %153, !llvm.loop !93

162:                                              ; preds = %159
  %163 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 2
  %164 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 1
  %165 = getelementptr inbounds %struct.ScatterNode, ptr %0, i64 0, i32 1
  %166 = getelementptr inbounds %struct.ScatterNode, ptr %0, i64 0, i32 1, i64 2
  %167 = getelementptr inbounds %struct.ScatterNode, ptr %0, i64 0, i32 1, i64 1
  %168 = getelementptr inbounds %struct.ScatterNode, ptr %0, i64 0, i32 2
  %169 = getelementptr inbounds %struct.ScatterNode, ptr %0, i64 0, i32 2, i64 2
  %170 = getelementptr inbounds %struct.ScatterNode, ptr %0, i64 0, i32 2, i64 1
  %171 = getelementptr inbounds %struct.ScatterNode, ptr %0, i64 0, i32 3
  %172 = getelementptr inbounds %struct.ScatterNode, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %0, i8 0, i64 36, i1 false)
  br label %173

173:                                              ; preds = %162, %246
  %174 = phi i64 [ 0, %162 ], [ %248, %246 ]
  %175 = phi float [ 0.000000e+00, %162 ], [ %247, %246 ]
  %176 = getelementptr inbounds %struct.ScatterNode, ptr %0, i64 0, i32 8, i64 %174
  %177 = load ptr, ptr %176, align 8, !tbaa !34
  %178 = icmp eq ptr %177, null
  br i1 %178, label %246, label %179

179:                                              ; preds = %173
  %180 = getelementptr inbounds %struct.ScatterNode, ptr %177, i64 0, i32 3
  %181 = load float, ptr %180, align 4, !tbaa !90
  %182 = getelementptr inbounds %struct.ScatterNode, ptr %177, i64 0, i32 1
  %183 = load float, ptr %182, align 4, !tbaa !62
  %184 = getelementptr inbounds %struct.ScatterNode, ptr %177, i64 0, i32 1, i64 1
  %185 = load float, ptr %184, align 4, !tbaa !62
  %186 = fadd float %183, %185
  %187 = getelementptr inbounds %struct.ScatterNode, ptr %177, i64 0, i32 1, i64 2
  %188 = load float, ptr %187, align 4, !tbaa !62
  %189 = fadd float %186, %188
  %190 = tail call float @llvm.fabs.f32(float %189)
  %191 = fmul float %181, %190
  %192 = getelementptr inbounds %struct.ScatterNode, ptr %177, i64 0, i32 4
  %193 = load float, ptr %192, align 8, !tbaa !89
  %194 = getelementptr inbounds %struct.ScatterNode, ptr %177, i64 0, i32 2
  %195 = load float, ptr %194, align 8, !tbaa !62
  %196 = getelementptr inbounds %struct.ScatterNode, ptr %177, i64 0, i32 2, i64 1
  %197 = load float, ptr %196, align 4, !tbaa !62
  %198 = fadd float %195, %197
  %199 = getelementptr inbounds %struct.ScatterNode, ptr %177, i64 0, i32 2, i64 2
  %200 = load float, ptr %199, align 8, !tbaa !62
  %201 = fadd float %198, %200
  %202 = tail call float @llvm.fabs.f32(float %201)
  %203 = tail call float @llvm.fmuladd.f32(float %193, float %202, float %191)
  %204 = fadd float %175, %203
  %205 = load float, ptr %177, align 8, !tbaa !62
  %206 = load float, ptr %0, align 8, !tbaa !62
  %207 = tail call float @llvm.fmuladd.f32(float %203, float %205, float %206)
  store float %207, ptr %0, align 8, !tbaa !62
  %208 = getelementptr inbounds [3 x float], ptr %177, i64 0, i64 1
  %209 = load float, ptr %208, align 4, !tbaa !62
  %210 = load float, ptr %164, align 4, !tbaa !62
  %211 = tail call float @llvm.fmuladd.f32(float %203, float %209, float %210)
  store float %211, ptr %164, align 4, !tbaa !62
  %212 = getelementptr inbounds [3 x float], ptr %177, i64 0, i64 2
  %213 = load float, ptr %212, align 8, !tbaa !62
  %214 = load float, ptr %163, align 8, !tbaa !62
  %215 = tail call float @llvm.fmuladd.f32(float %203, float %213, float %214)
  store float %215, ptr %163, align 8, !tbaa !62
  %216 = load float, ptr %182, align 4, !tbaa !62
  %217 = load float, ptr %180, align 4, !tbaa !90
  %218 = load float, ptr %165, align 4, !tbaa !62
  %219 = tail call float @llvm.fmuladd.f32(float %216, float %217, float %218)
  store float %219, ptr %165, align 4, !tbaa !62
  %220 = load float, ptr %184, align 4, !tbaa !62
  %221 = load float, ptr %180, align 4, !tbaa !90
  %222 = load float, ptr %167, align 4, !tbaa !62
  %223 = tail call float @llvm.fmuladd.f32(float %220, float %221, float %222)
  store float %223, ptr %167, align 4, !tbaa !62
  %224 = load float, ptr %187, align 4, !tbaa !62
  %225 = load float, ptr %180, align 4, !tbaa !90
  %226 = load float, ptr %166, align 4, !tbaa !62
  %227 = tail call float @llvm.fmuladd.f32(float %224, float %225, float %226)
  store float %227, ptr %166, align 4, !tbaa !62
  %228 = load float, ptr %194, align 8, !tbaa !62
  %229 = load float, ptr %192, align 8, !tbaa !89
  %230 = load float, ptr %168, align 8, !tbaa !62
  %231 = tail call float @llvm.fmuladd.f32(float %228, float %229, float %230)
  store float %231, ptr %168, align 8, !tbaa !62
  %232 = load float, ptr %196, align 4, !tbaa !62
  %233 = load float, ptr %192, align 8, !tbaa !89
  %234 = load float, ptr %170, align 4, !tbaa !62
  %235 = tail call float @llvm.fmuladd.f32(float %232, float %233, float %234)
  store float %235, ptr %170, align 4, !tbaa !62
  %236 = load float, ptr %199, align 8, !tbaa !62
  %237 = load float, ptr %192, align 8, !tbaa !89
  %238 = load float, ptr %169, align 8, !tbaa !62
  %239 = tail call float @llvm.fmuladd.f32(float %236, float %237, float %238)
  store float %239, ptr %169, align 8, !tbaa !62
  %240 = load float, ptr %180, align 4, !tbaa !90
  %241 = load float, ptr %171, align 4, !tbaa !90
  %242 = fadd float %240, %241
  store float %242, ptr %171, align 4, !tbaa !90
  %243 = load float, ptr %192, align 8, !tbaa !89
  %244 = load float, ptr %172, align 8, !tbaa !89
  %245 = fadd float %243, %244
  store float %245, ptr %172, align 8, !tbaa !89
  br label %246

246:                                              ; preds = %179, %173
  %247 = phi float [ %175, %173 ], [ %204, %179 ]
  %248 = add nuw nsw i64 %174, 1
  %249 = icmp eq i64 %248, 8
  br i1 %249, label %250, label %173, !llvm.loop !94

250:                                              ; preds = %246
  %251 = getelementptr inbounds %struct.ScatterNode, ptr %0, i64 0, i32 3
  %252 = load float, ptr %251, align 4, !tbaa !90
  %253 = fcmp ogt float %252, 0x3C9CD2B2A0000000
  br i1 %253, label %254, label %262

254:                                              ; preds = %250
  %255 = fdiv float 1.000000e+00, %252
  %256 = load float, ptr %165, align 4, !tbaa !62
  %257 = fmul float %255, %256
  store float %257, ptr %165, align 4, !tbaa !62
  %258 = load float, ptr %167, align 4, !tbaa !62
  %259 = fmul float %255, %258
  store float %259, ptr %167, align 4, !tbaa !62
  %260 = load float, ptr %166, align 4, !tbaa !62
  %261 = fmul float %255, %260
  store float %261, ptr %166, align 4, !tbaa !62
  br label %262

262:                                              ; preds = %254, %250
  %263 = getelementptr inbounds %struct.ScatterNode, ptr %0, i64 0, i32 4
  %264 = load float, ptr %263, align 8, !tbaa !89
  %265 = fcmp ogt float %264, 0x3C9CD2B2A0000000
  br i1 %265, label %266, label %274

266:                                              ; preds = %262
  %267 = fdiv float 1.000000e+00, %264
  %268 = load float, ptr %168, align 8, !tbaa !62
  %269 = fmul float %267, %268
  store float %269, ptr %168, align 8, !tbaa !62
  %270 = load float, ptr %170, align 4, !tbaa !62
  %271 = fmul float %267, %270
  store float %271, ptr %170, align 4, !tbaa !62
  %272 = load float, ptr %169, align 8, !tbaa !62
  %273 = fmul float %267, %272
  store float %273, ptr %169, align 8, !tbaa !62
  br label %274

274:                                              ; preds = %266, %262
  %275 = fcmp ogt float %247, 0x3C9CD2B2A0000000
  br i1 %275, label %276, label %284

276:                                              ; preds = %274
  %277 = fdiv float 1.000000e+00, %247
  %278 = load float, ptr %0, align 8, !tbaa !62
  %279 = fmul float %277, %278
  store float %279, ptr %0, align 8, !tbaa !62
  %280 = load float, ptr %164, align 4, !tbaa !62
  %281 = fmul float %277, %280
  store float %281, ptr %164, align 4, !tbaa !62
  %282 = load float, ptr %163, align 8, !tbaa !62
  %283 = fmul float %277, %282
  br label %315

284:                                              ; preds = %274, %303
  %285 = phi i64 [ %305, %303 ], [ 0, %274 ]
  %286 = phi i32 [ %304, %303 ], [ 0, %274 ]
  %287 = getelementptr inbounds %struct.ScatterNode, ptr %0, i64 0, i32 8, i64 %285
  %288 = load ptr, ptr %287, align 8, !tbaa !34
  %289 = icmp eq ptr %288, null
  br i1 %289, label %303, label %290

290:                                              ; preds = %284
  %291 = load float, ptr %288, align 8, !tbaa !62
  %292 = load float, ptr %0, align 8, !tbaa !62
  %293 = fadd float %291, %292
  store float %293, ptr %0, align 8, !tbaa !62
  %294 = getelementptr inbounds [3 x float], ptr %288, i64 0, i64 1
  %295 = load float, ptr %294, align 4, !tbaa !62
  %296 = load float, ptr %164, align 4, !tbaa !62
  %297 = fadd float %295, %296
  store float %297, ptr %164, align 4, !tbaa !62
  %298 = getelementptr inbounds [3 x float], ptr %288, i64 0, i64 2
  %299 = load float, ptr %298, align 8, !tbaa !62
  %300 = load float, ptr %163, align 8, !tbaa !62
  %301 = fadd float %299, %300
  store float %301, ptr %163, align 8, !tbaa !62
  %302 = add nsw i32 %286, 1
  br label %303

303:                                              ; preds = %290, %284
  %304 = phi i32 [ %302, %290 ], [ %286, %284 ]
  %305 = add nuw nsw i64 %285, 1
  %306 = icmp eq i64 %305, 8
  br i1 %306, label %307, label %284, !llvm.loop !95

307:                                              ; preds = %303
  %308 = sitofp i32 %304 to float
  %309 = load float, ptr %0, align 8, !tbaa !62
  %310 = fdiv float %309, %308
  store float %310, ptr %0, align 8, !tbaa !62
  %311 = load float, ptr %164, align 4, !tbaa !62
  %312 = fdiv float %311, %308
  store float %312, ptr %164, align 4, !tbaa !62
  %313 = load float, ptr %163, align 8, !tbaa !62
  %314 = fdiv float %313, %308
  br label %315

315:                                              ; preds = %276, %307
  %316 = phi float [ %314, %307 ], [ %283, %276 ]
  store float %316, ptr %163, align 8, !tbaa !62
  br label %317

317:                                              ; preds = %315, %151
  ret void
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @scatter_tree_sample(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) local_unnamed_addr #6 {
  %4 = alloca %struct.ScatterResult, align 4
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  %6 = load float, ptr %1, align 4, !tbaa !62
  store float %6, ptr %5, align 4, !tbaa !62
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !62
  %9 = getelementptr inbounds float, ptr %5, i64 1
  store float %8, ptr %9, align 4, !tbaa !62
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !62
  %12 = getelementptr inbounds float, ptr %5, i64 2
  store float %11, ptr %12, align 4, !tbaa !62
  %13 = getelementptr inbounds %struct.ScatterTree, ptr %0, i64 0, i32 3
  %14 = load float, ptr %13, align 4, !tbaa !64
  %15 = fdiv float 1.000000e+00, %14
  %16 = fmul float %6, %15
  store float %16, ptr %5, align 4, !tbaa !62
  %17 = fmul float %8, %15
  store float %17, ptr %9, align 4, !tbaa !62
  %18 = fmul float %11, %15
  store float %18, ptr %12, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %4, i8 0, i64 48, i1 false)
  %19 = getelementptr inbounds %struct.ScatterTree, ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !77
  call fastcc void @traverse_octree(ptr noundef %0, ptr noundef %20, ptr noundef nonnull %5, i32 noundef 1, ptr noundef nonnull %4)
  %21 = getelementptr inbounds %struct.ScatterTree, ptr %0, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !34
  %23 = getelementptr inbounds %struct.ScatterSettings, ptr %22, i64 0, i32 15
  %24 = load float, ptr %23, align 4, !tbaa !58
  %25 = load float, ptr %4, align 4, !tbaa !62
  %26 = fmul float %24, %25
  store float %26, ptr %4, align 4, !tbaa !62
  %27 = getelementptr inbounds float, ptr %4, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !62
  %29 = fmul float %24, %28
  store float %29, ptr %27, align 4, !tbaa !62
  %30 = getelementptr inbounds float, ptr %4, i64 2
  %31 = load float, ptr %30, align 4, !tbaa !62
  %32 = fmul float %24, %31
  store float %32, ptr %30, align 4, !tbaa !62
  %33 = getelementptr inbounds %struct.ScatterResult, ptr %4, i64 0, i32 1
  %34 = getelementptr inbounds %struct.ScatterSettings, ptr %22, i64 0, i32 16
  %35 = load float, ptr %34, align 8, !tbaa !59
  %36 = load float, ptr %33, align 4, !tbaa !62
  %37 = fmul float %35, %36
  store float %37, ptr %33, align 4, !tbaa !62
  %38 = getelementptr inbounds %struct.ScatterResult, ptr %4, i64 0, i32 1, i64 1
  %39 = load float, ptr %38, align 4, !tbaa !62
  %40 = fmul float %35, %39
  store float %40, ptr %38, align 4, !tbaa !62
  %41 = getelementptr inbounds %struct.ScatterResult, ptr %4, i64 0, i32 1, i64 2
  %42 = load float, ptr %41, align 4, !tbaa !62
  %43 = fmul float %35, %42
  store float %43, ptr %41, align 4, !tbaa !62
  store float %26, ptr %2, align 4, !tbaa !62
  %44 = getelementptr inbounds float, ptr %2, i64 1
  store float %29, ptr %44, align 4, !tbaa !62
  %45 = getelementptr inbounds float, ptr %2, i64 2
  store float %32, ptr %45, align 4, !tbaa !62
  %46 = fadd float %26, %37
  %47 = fadd float %29, %40
  %48 = fadd float %32, %43
  %49 = getelementptr inbounds %struct.ScatterResult, ptr %4, i64 0, i32 2
  %50 = load float, ptr %49, align 4, !tbaa !62
  %51 = getelementptr inbounds %struct.ScatterResult, ptr %4, i64 0, i32 2, i64 1
  %52 = load float, ptr %51, align 4, !tbaa !62
  %53 = getelementptr inbounds %struct.ScatterResult, ptr %4, i64 0, i32 2, i64 2
  %54 = load float, ptr %53, align 4, !tbaa !62
  %55 = getelementptr inbounds %struct.ScatterResult, ptr %4, i64 0, i32 3
  %56 = load float, ptr %55, align 4, !tbaa !62
  %57 = fadd float %50, %56
  %58 = getelementptr inbounds %struct.ScatterResult, ptr %4, i64 0, i32 3, i64 1
  %59 = load float, ptr %58, align 4, !tbaa !62
  %60 = fadd float %52, %59
  %61 = getelementptr inbounds %struct.ScatterResult, ptr %4, i64 0, i32 3, i64 2
  %62 = load float, ptr %61, align 4, !tbaa !62
  %63 = fadd float %54, %62
  %64 = fcmp ogt float %50, 0x3C9CD2B2A0000000
  br i1 %64, label %65, label %70

65:                                               ; preds = %3
  %66 = getelementptr inbounds %struct.ScatterSettings, ptr %22, i64 0, i32 13
  %67 = load float, ptr %66, align 4, !tbaa !45
  %68 = fmul float %26, %67
  %69 = fdiv float %68, %50
  store float %69, ptr %2, align 4, !tbaa !62
  br label %70

70:                                               ; preds = %65, %3
  %71 = fcmp ogt float %52, 0x3C9CD2B2A0000000
  br i1 %71, label %72, label %79

72:                                               ; preds = %70
  %73 = getelementptr inbounds %struct.ScatterTree, ptr %0, i64 0, i32 1, i64 1
  %74 = load ptr, ptr %73, align 8, !tbaa !34
  %75 = getelementptr inbounds %struct.ScatterSettings, ptr %74, i64 0, i32 13
  %76 = load float, ptr %75, align 4, !tbaa !45
  %77 = fmul float %29, %76
  %78 = fdiv float %77, %52
  store float %78, ptr %44, align 4, !tbaa !62
  br label %79

79:                                               ; preds = %72, %70
  %80 = fcmp ogt float %54, 0x3C9CD2B2A0000000
  br i1 %80, label %81, label %88

81:                                               ; preds = %79
  %82 = getelementptr inbounds %struct.ScatterTree, ptr %0, i64 0, i32 1, i64 2
  %83 = load ptr, ptr %82, align 8, !tbaa !34
  %84 = getelementptr inbounds %struct.ScatterSettings, ptr %83, i64 0, i32 13
  %85 = load float, ptr %84, align 4, !tbaa !45
  %86 = fmul float %32, %85
  %87 = fdiv float %86, %54
  store float %87, ptr %45, align 4, !tbaa !62
  br label %88

88:                                               ; preds = %81, %79
  %89 = fcmp ogt float %57, 0x3C9CD2B2A0000000
  br i1 %89, label %90, label %95

90:                                               ; preds = %88
  %91 = getelementptr inbounds %struct.ScatterSettings, ptr %22, i64 0, i32 13
  %92 = load float, ptr %91, align 4, !tbaa !45
  %93 = fmul float %46, %92
  %94 = fdiv float %93, %57
  br label %95

95:                                               ; preds = %90, %88
  %96 = phi float [ %94, %90 ], [ %46, %88 ]
  %97 = fcmp ogt float %60, 0x3C9CD2B2A0000000
  br i1 %97, label %98, label %105

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.ScatterTree, ptr %0, i64 0, i32 1, i64 1
  %100 = load ptr, ptr %99, align 8, !tbaa !34
  %101 = getelementptr inbounds %struct.ScatterSettings, ptr %100, i64 0, i32 13
  %102 = load float, ptr %101, align 4, !tbaa !45
  %103 = fmul float %47, %102
  %104 = fdiv float %103, %60
  br label %105

105:                                              ; preds = %98, %95
  %106 = phi float [ %104, %98 ], [ %47, %95 ]
  %107 = fcmp ogt float %63, 0x3C9CD2B2A0000000
  br i1 %107, label %108, label %115

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.ScatterTree, ptr %0, i64 0, i32 1, i64 2
  %110 = load ptr, ptr %109, align 8, !tbaa !34
  %111 = getelementptr inbounds %struct.ScatterSettings, ptr %110, i64 0, i32 13
  %112 = load float, ptr %111, align 4, !tbaa !45
  %113 = fmul float %48, %112
  %114 = fdiv float %113, %63
  br label %115

115:                                              ; preds = %105, %108
  %116 = phi float [ %114, %108 ], [ %48, %105 ]
  %117 = load float, ptr %2, align 4, !tbaa !62
  %118 = fcmp ogt float %117, %96
  %119 = select i1 %118, float %117, float %96
  store float %119, ptr %2, align 4, !tbaa !62
  %120 = load float, ptr %44, align 4, !tbaa !62
  %121 = fcmp ogt float %120, %106
  %122 = select i1 %121, float %120, float %106
  store float %122, ptr %44, align 4, !tbaa !62
  %123 = load float, ptr %45, align 4, !tbaa !62
  %124 = fcmp ogt float %123, %116
  %125 = select i1 %124, float %123, float %116
  store float %125, ptr %45, align 4, !tbaa !62
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @scatter_tree_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !76
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @BLI_memarena_free(ptr noundef nonnull %2) #11
  br label %5

5:                                                ; preds = %4, %1
  %6 = getelementptr inbounds %struct.ScatterTree, ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !69
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %10(ptr noundef nonnull %7) #11
  br label %11

11:                                               ; preds = %9, %5
  %12 = getelementptr inbounds %struct.ScatterTree, ptr %0, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !70
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %16(ptr noundef nonnull %13) #11
  br label %17

17:                                               ; preds = %15, %11
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %18(ptr noundef nonnull %0) #11
  ret void
}

declare void @BLI_memarena_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @sss_add_points(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = icmp sgt i32 %4, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %5
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %9 = tail call ptr %8(i64 noundef 48, ptr noundef nonnull @.str.6) #11
  %10 = getelementptr inbounds %struct.SSSPoints, ptr %9, i64 0, i32 2
  store ptr %1, ptr %10, align 8, !tbaa !96
  %11 = getelementptr inbounds %struct.SSSPoints, ptr %9, i64 0, i32 3
  store ptr %2, ptr %11, align 8, !tbaa !98
  %12 = getelementptr inbounds %struct.SSSPoints, ptr %9, i64 0, i32 4
  store ptr %3, ptr %12, align 8, !tbaa !99
  %13 = getelementptr inbounds %struct.SSSPoints, ptr %9, i64 0, i32 5
  store i32 %4, ptr %13, align 8, !tbaa !100
  tail call void @BLI_lock_thread(i32 noundef 3) #11
  %14 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 75
  %15 = load ptr, ptr %14, align 8, !tbaa !101
  tail call void @BLI_addtail(ptr noundef %15, ptr noundef %9) #11
  tail call void @BLI_unlock_thread(i32 noundef 3) #11
  br label %16

16:                                               ; preds = %7, %5
  ret void
}

declare void @BLI_lock_thread(i32 noundef) local_unnamed_addr #4

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @BLI_unlock_thread(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @make_sss_tree(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @free_sss(ptr noundef %0)
  %2 = tail call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.7) #11
  %3 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 74
  store ptr %2, ptr %3, align 8, !tbaa !118
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 90
  %5 = load ptr, ptr %4, align 8, !tbaa !119
  %6 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 91
  %7 = load ptr, ptr %6, align 8, !tbaa !120
  %8 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98
  tail call void %5(ptr noundef %7, ptr noundef nonnull %8) #11
  %9 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 43
  %10 = load ptr, ptr %9, align 8, !tbaa !121
  %11 = getelementptr inbounds %struct.Main, ptr %10, i64 0, i32 17
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = icmp eq ptr %12, null
  br i1 %13, label %44, label %14

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 16
  br label %16

16:                                               ; preds = %14, %39
  %17 = phi ptr [ %12, %14 ], [ %42, %39 ]
  %18 = phi ptr [ null, %14 ], [ %41, %39 ]
  %19 = phi i8 [ 0, %14 ], [ %40, %39 ]
  %20 = getelementptr inbounds %struct.ID, ptr %17, i64 0, i32 6
  %21 = load i32, ptr %20, align 4, !tbaa !122
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %39, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.Material, ptr %17, i64 0, i32 3
  %25 = load i16, ptr %24, align 2, !tbaa !126
  %26 = and i16 %25, 1
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.Material, ptr %17, i64 0, i32 123
  %30 = load i16, ptr %29, align 4, !tbaa !127
  %31 = and i16 %30, 1
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %28
  %34 = icmp eq i8 %19, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %33
  %36 = load ptr, ptr %15, align 8, !tbaa !128
  store ptr @.str.8, ptr %15, align 8, !tbaa !128
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi ptr [ %18, %33 ], [ %36, %35 ]
  tail call fastcc void @sss_create_tree_mat(ptr noundef %0, ptr noundef nonnull %17)
  br label %39

39:                                               ; preds = %16, %23, %28, %37
  %40 = phi i8 [ 1, %37 ], [ %19, %28 ], [ %19, %23 ], [ %19, %16 ]
  %41 = phi ptr [ %38, %37 ], [ %18, %28 ], [ %18, %23 ], [ %18, %16 ]
  %42 = load ptr, ptr %17, align 8, !tbaa !34
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %16, !llvm.loop !129

44:                                               ; preds = %39, %1
  %45 = phi i8 [ 0, %1 ], [ %40, %39 ]
  %46 = phi ptr [ null, %1 ], [ %41, %39 ]
  %47 = load ptr, ptr %9, align 8, !tbaa !121
  %48 = load ptr, ptr @G, align 8, !tbaa !130
  %49 = icmp eq ptr %47, %48
  br i1 %49, label %84, label %50

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.Main, ptr %48, i64 0, i32 17
  %52 = load ptr, ptr %51, align 8, !tbaa !34
  %53 = icmp eq ptr %52, null
  br i1 %53, label %84, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 16
  br label %56

56:                                               ; preds = %54, %79
  %57 = phi ptr [ %52, %54 ], [ %82, %79 ]
  %58 = phi ptr [ %46, %54 ], [ %81, %79 ]
  %59 = phi i8 [ %45, %54 ], [ %80, %79 ]
  %60 = getelementptr inbounds %struct.ID, ptr %57, i64 0, i32 6
  %61 = load i32, ptr %60, align 4, !tbaa !122
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %79, label %63

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.Material, ptr %57, i64 0, i32 3
  %65 = load i16, ptr %64, align 2, !tbaa !126
  %66 = and i16 %65, 1
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %79, label %68

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.Material, ptr %57, i64 0, i32 123
  %70 = load i16, ptr %69, align 4, !tbaa !127
  %71 = and i16 %70, 1
  %72 = icmp eq i16 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %68
  %74 = icmp eq i8 %59, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %73
  %76 = load ptr, ptr %55, align 8, !tbaa !128
  store ptr @.str.8, ptr %55, align 8, !tbaa !128
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi ptr [ %58, %73 ], [ %76, %75 ]
  tail call fastcc void @sss_create_tree_mat(ptr noundef %0, ptr noundef nonnull %57)
  br label %79

79:                                               ; preds = %56, %63, %68, %77
  %80 = phi i8 [ 1, %77 ], [ %59, %68 ], [ %59, %63 ], [ %59, %56 ]
  %81 = phi ptr [ %78, %77 ], [ %58, %68 ], [ %58, %63 ], [ %58, %56 ]
  %82 = load ptr, ptr %57, align 8, !tbaa !34
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %56, !llvm.loop !132

84:                                               ; preds = %79, %50, %44
  %85 = phi i8 [ %45, %44 ], [ %45, %50 ], [ %80, %79 ]
  %86 = phi ptr [ %46, %44 ], [ %46, %50 ], [ %81, %79 ]
  %87 = icmp eq i8 %85, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 16
  store ptr %86, ptr %89, align 8, !tbaa !128
  br label %90

90:                                               ; preds = %88, %84
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_sss(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 74
  %3 = load ptr, ptr %2, align 8, !tbaa !118
  %4 = icmp eq ptr %3, null
  br i1 %4, label %64, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @BLI_ghashIterator_new(ptr noundef nonnull %3) #11
  %7 = getelementptr inbounds %struct.GHashIterator, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !133
  %9 = icmp eq ptr %8, null
  br i1 %9, label %62, label %10

10:                                               ; preds = %5, %30
  %11 = phi ptr [ %60, %30 ], [ %8, %5 ]
  %12 = getelementptr inbounds %struct._gh_Entry, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !135
  %14 = load ptr, ptr %13, align 8, !tbaa !137
  %15 = load ptr, ptr %14, align 8, !tbaa !76
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  tail call void @BLI_memarena_free(ptr noundef nonnull %15) #11
  br label %18

18:                                               ; preds = %17, %10
  %19 = getelementptr inbounds %struct.ScatterTree, ptr %14, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !69
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %23(ptr noundef nonnull %20) #11
  br label %24

24:                                               ; preds = %22, %18
  %25 = getelementptr inbounds %struct.ScatterTree, ptr %14, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !70
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %29(ptr noundef nonnull %26) #11
  br label %30

30:                                               ; preds = %24, %28
  %31 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %31(ptr noundef nonnull %14) #11
  %32 = getelementptr inbounds %struct.SSSData, ptr %13, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !34
  %34 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %35 = getelementptr inbounds %struct.ScatterSettings, ptr %33, i64 0, i32 17
  %36 = load ptr, ptr %35, align 8, !tbaa !60
  tail call void %34(ptr noundef %36) #11
  %37 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %38 = getelementptr inbounds %struct.ScatterSettings, ptr %33, i64 0, i32 18
  %39 = load ptr, ptr %38, align 8, !tbaa !61
  tail call void %37(ptr noundef %39) #11
  %40 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %40(ptr noundef %33) #11
  %41 = getelementptr inbounds %struct.SSSData, ptr %13, i64 0, i32 1, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !34
  %43 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %44 = getelementptr inbounds %struct.ScatterSettings, ptr %42, i64 0, i32 17
  %45 = load ptr, ptr %44, align 8, !tbaa !60
  tail call void %43(ptr noundef %45) #11
  %46 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %47 = getelementptr inbounds %struct.ScatterSettings, ptr %42, i64 0, i32 18
  %48 = load ptr, ptr %47, align 8, !tbaa !61
  tail call void %46(ptr noundef %48) #11
  %49 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %49(ptr noundef %42) #11
  %50 = getelementptr inbounds %struct.SSSData, ptr %13, i64 0, i32 1, i64 2
  %51 = load ptr, ptr %50, align 8, !tbaa !34
  %52 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %53 = getelementptr inbounds %struct.ScatterSettings, ptr %51, i64 0, i32 17
  %54 = load ptr, ptr %53, align 8, !tbaa !60
  tail call void %52(ptr noundef %54) #11
  %55 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %56 = getelementptr inbounds %struct.ScatterSettings, ptr %51, i64 0, i32 18
  %57 = load ptr, ptr %56, align 8, !tbaa !61
  tail call void %55(ptr noundef %57) #11
  %58 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %58(ptr noundef %51) #11
  %59 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %59(ptr noundef nonnull %13) #11
  tail call void @BLI_ghashIterator_step(ptr noundef %6) #11
  %60 = load ptr, ptr %7, align 8, !tbaa !133
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %10, !llvm.loop !139

62:                                               ; preds = %30, %5
  tail call void @BLI_ghashIterator_free(ptr noundef %6) #11
  %63 = load ptr, ptr %2, align 8, !tbaa !118
  tail call void @BLI_ghash_free(ptr noundef %63, ptr noundef null, ptr noundef null) #11
  store ptr null, ptr %2, align 8, !tbaa !118
  br label %64

64:                                               ; preds = %62, %1
  ret void
}

declare ptr @BLI_ghash_ptr_new(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @sss_create_tree_mat(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %5 = load ptr, ptr %4, align 8, !tbaa !140
  %6 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  %7 = load ptr, ptr %6, align 8, !tbaa !141
  %8 = tail call i32 %5(ptr noundef %7) #11
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %191

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  tail call void @BLI_rw_mutex_lock(ptr noundef nonnull %11, i32 noundef 2) #11
  %12 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !142
  %14 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 5
  %15 = load i16, ptr %14, align 2, !tbaa !143
  %16 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45
  %17 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %18 = load i32, ptr %17, align 8, !tbaa !144
  %19 = and i32 %18, 1
  %20 = and i32 %18, 33554432
  %21 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 10
  %22 = load i16, ptr %21, align 2, !tbaa !145
  store i16 0, ptr %14, align 2, !tbaa !143
  %23 = and i32 %18, -33554434
  store i32 %23, ptr %17, align 8, !tbaa !144
  %24 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 75
  store ptr %3, ptr %24, align 8, !tbaa !101
  %25 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 76
  store ptr %1, ptr %25, align 8, !tbaa !146
  store i16 0, ptr %21, align 2, !tbaa !145
  %26 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 46
  %27 = load i32, ptr %26, align 4, !tbaa !147
  %28 = and i32 %27, 524296
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %10
  store ptr null, ptr %12, align 8, !tbaa !142
  br label %31

31:                                               ; preds = %30, %10
  call void @BLI_rw_mutex_unlock(ptr noundef nonnull %11) #11
  call void @RE_TileProcessor(ptr noundef %0) #11
  call void @BLI_rw_mutex_lock(ptr noundef nonnull %11, i32 noundef 2) #11
  %32 = load i32, ptr %26, align 4, !tbaa !147
  %33 = and i32 %32, 524296
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load ptr, ptr %12, align 8, !tbaa !142
  call void @RE_FreeRenderResult(ptr noundef %36) #11
  store ptr %13, ptr %12, align 8, !tbaa !142
  br label %37

37:                                               ; preds = %35, %31
  call void @BLI_rw_mutex_unlock(ptr noundef nonnull %11) #11
  store i16 %22, ptr %21, align 2, !tbaa !145
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %24, i8 0, i64 16, i1 false)
  store i16 %15, ptr %14, align 2, !tbaa !143
  %38 = icmp eq i32 %19, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %37
  %40 = load i32, ptr %17, align 8, !tbaa !144
  %41 = or i32 %40, 1
  store i32 %41, ptr %17, align 8, !tbaa !144
  br label %42

42:                                               ; preds = %39, %37
  %43 = icmp eq i32 %20, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %42
  %45 = load i32, ptr %17, align 8, !tbaa !144
  %46 = or i32 %45, 33554432
  store i32 %46, ptr %17, align 8, !tbaa !144
  br label %47

47:                                               ; preds = %44, %42
  %48 = load ptr, ptr %3, align 8, !tbaa !148
  %49 = icmp eq ptr %48, null
  br i1 %49, label %191, label %50

50:                                               ; preds = %47
  %51 = load ptr, ptr %4, align 8, !tbaa !140
  %52 = load ptr, ptr %6, align 8, !tbaa !141
  %53 = call i32 %51(ptr noundef %52) #11
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %107

55:                                               ; preds = %50
  %56 = load ptr, ptr %3, align 8, !tbaa !34
  %57 = icmp eq ptr %56, null
  br i1 %57, label %68, label %58

58:                                               ; preds = %55, %58
  %59 = phi ptr [ %64, %58 ], [ %56, %55 ]
  %60 = phi i32 [ %63, %58 ], [ 0, %55 ]
  %61 = getelementptr inbounds %struct.SSSPoints, ptr %59, i64 0, i32 5
  %62 = load i32, ptr %61, align 8, !tbaa !100
  %63 = add nsw i32 %62, %60
  %64 = load ptr, ptr %59, align 8, !tbaa !34
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %58, !llvm.loop !149

66:                                               ; preds = %58
  %67 = sext i32 %63 to i64
  br label %68

68:                                               ; preds = %66, %55
  %69 = phi i64 [ 0, %55 ], [ %67, %66 ]
  %70 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %71 = mul nsw i64 %69, 12
  %72 = call ptr %70(i64 noundef %71, ptr noundef nonnull @.str.10) #11
  %73 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %74 = call ptr %73(i64 noundef %71, ptr noundef nonnull @.str.11) #11
  %75 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %76 = shl nsw i64 %69, 2
  %77 = call ptr %75(i64 noundef %76, ptr noundef nonnull @.str.12) #11
  %78 = load ptr, ptr %3, align 8, !tbaa !34
  %79 = icmp eq ptr %78, null
  br i1 %79, label %107, label %80

80:                                               ; preds = %68, %80
  %81 = phi ptr [ %105, %80 ], [ %78, %68 ]
  %82 = phi i32 [ %104, %80 ], [ 0, %68 ]
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [3 x float], ptr %72, i64 %83
  %85 = getelementptr inbounds %struct.SSSPoints, ptr %81, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !96
  %87 = getelementptr inbounds %struct.SSSPoints, ptr %81, i64 0, i32 5
  %88 = load i32, ptr %87, align 8, !tbaa !100
  %89 = sext i32 %88 to i64
  %90 = mul nsw i64 %89, 12
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %84, ptr align 4 %86, i64 %90, i1 false)
  %91 = getelementptr inbounds [3 x float], ptr %74, i64 %83
  %92 = getelementptr inbounds %struct.SSSPoints, ptr %81, i64 0, i32 3
  %93 = load ptr, ptr %92, align 8, !tbaa !98
  %94 = load i32, ptr %87, align 8, !tbaa !100
  %95 = sext i32 %94 to i64
  %96 = mul nsw i64 %95, 12
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %91, ptr align 4 %93, i64 %96, i1 false)
  %97 = getelementptr inbounds float, ptr %77, i64 %83
  %98 = getelementptr inbounds %struct.SSSPoints, ptr %81, i64 0, i32 4
  %99 = load ptr, ptr %98, align 8, !tbaa !99
  %100 = load i32, ptr %87, align 8, !tbaa !100
  %101 = sext i32 %100 to i64
  %102 = shl nsw i64 %101, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %97, ptr align 4 %99, i64 %102, i1 false)
  %103 = load i32, ptr %87, align 8, !tbaa !100
  %104 = add nsw i32 %103, %82
  %105 = load ptr, ptr %81, align 8, !tbaa !34
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %80, !llvm.loop !150

107:                                              ; preds = %80, %68, %50
  %108 = phi i32 [ 0, %50 ], [ 0, %68 ], [ %104, %80 ]
  %109 = phi ptr [ null, %50 ], [ %77, %68 ], [ %77, %80 ]
  %110 = phi ptr [ null, %50 ], [ %74, %68 ], [ %74, %80 ]
  %111 = phi ptr [ null, %50 ], [ %72, %68 ], [ %72, %80 ]
  %112 = load ptr, ptr %3, align 8, !tbaa !34
  %113 = icmp eq ptr %112, null
  br i1 %113, label %127, label %114

114:                                              ; preds = %107, %114
  %115 = phi ptr [ %125, %114 ], [ %112, %107 ]
  %116 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %117 = getelementptr inbounds %struct.SSSPoints, ptr %115, i64 0, i32 2
  %118 = load ptr, ptr %117, align 8, !tbaa !96
  call void %116(ptr noundef %118) #11
  %119 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %120 = getelementptr inbounds %struct.SSSPoints, ptr %115, i64 0, i32 3
  %121 = load ptr, ptr %120, align 8, !tbaa !98
  call void %119(ptr noundef %121) #11
  %122 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %123 = getelementptr inbounds %struct.SSSPoints, ptr %115, i64 0, i32 4
  %124 = load ptr, ptr %123, align 8, !tbaa !99
  call void %122(ptr noundef %124) #11
  %125 = load ptr, ptr %115, align 8, !tbaa !34
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %114, !llvm.loop !151

127:                                              ; preds = %114, %107
  call void @BLI_freelistN(ptr noundef nonnull %3) #11
  %128 = load ptr, ptr %4, align 8, !tbaa !140
  %129 = load ptr, ptr %6, align 8, !tbaa !141
  %130 = call i32 %128(ptr noundef %129) #11
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %179

132:                                              ; preds = %127
  %133 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %134 = call ptr %133(i64 noundef 32, ptr noundef nonnull @.str.13) #11
  %135 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 118
  %136 = load float, ptr %135, align 8, !tbaa !152
  %137 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 119
  %138 = load float, ptr %137, align 4, !tbaa !153
  %139 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 114
  %140 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 121
  %141 = load float, ptr %140, align 4, !tbaa !154
  %142 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 122
  %143 = load float, ptr %142, align 8, !tbaa !155
  %144 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 116
  %145 = load float, ptr %144, align 8, !tbaa !156
  %146 = call float @get_render_aosss_error(ptr noundef nonnull %16, float noundef %145) #11
  %147 = load i32, ptr %26, align 4, !tbaa !147
  %148 = and i32 %147, 524296
  %149 = icmp ne i32 %148, 0
  %150 = fcmp olt float %146, 5.000000e-01
  %151 = select i1 %149, i1 %150, i1 false
  %152 = select i1 %151, float 5.000000e-01, float %146
  %153 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 115
  %154 = load float, ptr %153, align 4, !tbaa !62
  %155 = load float, ptr %139, align 4, !tbaa !62
  %156 = call ptr @scatter_settings_new(float noundef %154, float noundef %155, float noundef %136, float noundef %138, float noundef %141, float noundef %143)
  %157 = getelementptr inbounds %struct.SSSData, ptr %134, i64 0, i32 1
  store ptr %156, ptr %157, align 8, !tbaa !34
  %158 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 115, i64 1
  %159 = load float, ptr %158, align 4, !tbaa !62
  %160 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 114, i64 1
  %161 = load float, ptr %160, align 4, !tbaa !62
  %162 = call ptr @scatter_settings_new(float noundef %159, float noundef %161, float noundef %136, float noundef %138, float noundef %141, float noundef %143)
  %163 = getelementptr inbounds %struct.SSSData, ptr %134, i64 0, i32 1, i64 1
  store ptr %162, ptr %163, align 8, !tbaa !34
  %164 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 115, i64 2
  %165 = load float, ptr %164, align 4, !tbaa !62
  %166 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 114, i64 2
  %167 = load float, ptr %166, align 4, !tbaa !62
  %168 = call ptr @scatter_settings_new(float noundef %165, float noundef %167, float noundef %136, float noundef %138, float noundef %141, float noundef %143)
  %169 = getelementptr inbounds %struct.SSSData, ptr %134, i64 0, i32 1, i64 2
  store ptr %168, ptr %169, align 8, !tbaa !34
  %170 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 117
  %171 = load float, ptr %170, align 4, !tbaa !157
  %172 = call ptr @scatter_tree_new(ptr noundef nonnull %157, float noundef %171, float noundef %152, ptr noundef %111, ptr noundef %110, ptr noundef %109, i32 noundef %108)
  store ptr %172, ptr %134, align 8, !tbaa !137
  %173 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %173(ptr noundef %111) #11
  %174 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %174(ptr noundef %110) #11
  %175 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %175(ptr noundef %109) #11
  %176 = load ptr, ptr %134, align 8, !tbaa !137
  call void @scatter_tree_build(ptr noundef %176)
  %177 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 74
  %178 = load ptr, ptr %177, align 8, !tbaa !118
  call void @BLI_ghash_insert(ptr noundef %178, ptr noundef %1, ptr noundef nonnull %134) #11
  br label %191

179:                                              ; preds = %127
  %180 = icmp eq ptr %111, null
  br i1 %180, label %183, label %181

181:                                              ; preds = %179
  %182 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %182(ptr noundef nonnull %111) #11
  br label %183

183:                                              ; preds = %181, %179
  %184 = icmp eq ptr %110, null
  br i1 %184, label %187, label %185

185:                                              ; preds = %183
  %186 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %186(ptr noundef nonnull %110) #11
  br label %187

187:                                              ; preds = %185, %183
  %188 = icmp eq ptr %109, null
  br i1 %188, label %191, label %189

189:                                              ; preds = %187
  %190 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %190(ptr noundef nonnull %109) #11
  br label %191

191:                                              ; preds = %132, %189, %187, %47, %2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  ret void
}

declare ptr @BLI_ghashIterator_new(ptr noundef) local_unnamed_addr #4

declare void @BLI_ghashIterator_step(ptr noundef) local_unnamed_addr #4

declare void @BLI_ghashIterator_free(ptr noundef) local_unnamed_addr #4

declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @sample_sss(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 74
  %6 = load ptr, ptr %5, align 8, !tbaa !118
  %7 = icmp eq ptr %6, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %4
  %9 = tail call ptr @BLI_ghash_lookup(ptr noundef nonnull %6, ptr noundef %1) #11
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr %9, align 8, !tbaa !137
  tail call void @scatter_tree_sample(ptr noundef %12, ptr noundef %2, ptr noundef %3)
  br label %16

13:                                               ; preds = %8
  store float 0.000000e+00, ptr %3, align 4, !tbaa !62
  %14 = getelementptr inbounds float, ptr %3, i64 1
  store float 0.000000e+00, ptr %14, align 4, !tbaa !62
  %15 = getelementptr inbounds float, ptr %3, i64 2
  store float 0.000000e+00, ptr %15, align 4, !tbaa !62
  br label %16

16:                                               ; preds = %13, %11
  br i1 %10, label %17, label %18

17:                                               ; preds = %16, %4
  br label %18

18:                                               ; preds = %16, %17
  %19 = phi i32 [ 1, %16 ], [ 0, %17 ]
  ret i32 %19
}

declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @sss_pass_done(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 4
  %4 = load i16, ptr %3, align 8, !tbaa !158
  %5 = and i16 %4, 64
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %9 = load i32, ptr %8, align 8, !tbaa !144
  %10 = and i32 %9, 2097152
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 74
  %14 = load ptr, ptr %13, align 8, !tbaa !118
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = tail call ptr @BLI_ghash_lookup(ptr noundef nonnull %14, ptr noundef %1) #11
  %18 = icmp ne ptr %17, null
  %19 = zext i1 %18 to i32
  br label %20

20:                                               ; preds = %12, %16, %7, %2
  %21 = phi i32 [ 1, %7 ], [ 1, %2 ], [ 0, %12 ], [ %19, %16 ]
  ret i32 %21
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @expf(float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @traverse_octree(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #6 {
  %6 = getelementptr inbounds %struct.ScatterNode, ptr %1, i64 0, i32 5
  %7 = load i32, ptr %6, align 4, !tbaa !80
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %47

9:                                                ; preds = %5
  %10 = load i32, ptr %6, align 4, !tbaa !80
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %113

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.ScatterNode, ptr %1, i64 0, i32 6
  %14 = getelementptr inbounds float, ptr %2, i64 1
  %15 = getelementptr inbounds float, ptr %2, i64 2
  br label %16

16:                                               ; preds = %12, %42
  %17 = phi i64 [ 0, %12 ], [ %43, %42 ]
  %18 = load ptr, ptr %13, align 8, !tbaa !78
  %19 = getelementptr inbounds %struct.ScatterPoint, ptr %18, i64 %17
  %20 = load float, ptr %2, align 4, !tbaa !62
  %21 = load float, ptr %19, align 4, !tbaa !62
  %22 = fsub float %20, %21
  %23 = load float, ptr %14, align 4, !tbaa !62
  %24 = getelementptr inbounds float, ptr %19, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !62
  %26 = fsub float %23, %25
  %27 = load float, ptr %15, align 4, !tbaa !62
  %28 = getelementptr inbounds float, ptr %19, i64 2
  %29 = load float, ptr %28, align 4, !tbaa !62
  %30 = fsub float %27, %29
  %31 = fmul float %26, %26
  %32 = tail call float @llvm.fmuladd.f32(float %22, float %22, float %31)
  %33 = tail call float @llvm.fmuladd.f32(float %30, float %30, float %32)
  %34 = getelementptr inbounds %struct.ScatterPoint, ptr %18, i64 %17, i32 3
  %35 = load i32, ptr %34, align 4, !tbaa !73
  %36 = icmp eq i32 %35, 0
  %37 = getelementptr inbounds %struct.ScatterPoint, ptr %18, i64 %17, i32 1
  %38 = getelementptr inbounds %struct.ScatterPoint, ptr %18, i64 %17, i32 2
  %39 = load float, ptr %38, align 4, !tbaa !71
  br i1 %36, label %41, label %40

40:                                               ; preds = %16
  tail call fastcc void @add_radiance(ptr noundef %0, ptr noundef null, ptr noundef nonnull %37, float noundef 0.000000e+00, float noundef %39, float noundef %33, ptr noundef %4)
  br label %42

41:                                               ; preds = %16
  tail call fastcc void @add_radiance(ptr noundef %0, ptr noundef nonnull %37, ptr noundef null, float noundef %39, float noundef 0.000000e+00, float noundef %33, ptr noundef %4)
  br label %42

42:                                               ; preds = %41, %40
  %43 = add nuw nsw i64 %17, 1
  %44 = load i32, ptr %6, align 4, !tbaa !80
  %45 = sext i32 %44 to i64
  %46 = icmp slt i64 %43, %45
  br i1 %46, label %16, label %113, !llvm.loop !159

47:                                               ; preds = %5
  %48 = icmp ne i32 %3, 0
  br i1 %48, label %49, label %69

49:                                               ; preds = %47
  %50 = load float, ptr %2, align 4, !tbaa !62
  %51 = getelementptr inbounds %struct.ScatterNode, ptr %1, i64 0, i32 7
  %52 = load float, ptr %51, align 8, !tbaa !62
  %53 = fcmp oge float %50, %52
  %54 = zext i1 %53 to i64
  %55 = getelementptr inbounds float, ptr %2, i64 1
  %56 = load float, ptr %55, align 4, !tbaa !62
  %57 = getelementptr inbounds %struct.ScatterNode, ptr %1, i64 0, i32 7, i64 1
  %58 = load float, ptr %57, align 4, !tbaa !62
  %59 = fcmp oge float %56, %58
  %60 = select i1 %59, i64 2, i64 0
  %61 = or disjoint i64 %60, %54
  %62 = getelementptr inbounds float, ptr %2, i64 2
  %63 = load float, ptr %62, align 4, !tbaa !62
  %64 = getelementptr inbounds %struct.ScatterNode, ptr %1, i64 0, i32 7, i64 2
  %65 = load float, ptr %64, align 8, !tbaa !62
  %66 = fcmp oge float %63, %65
  %67 = select i1 %66, i64 4, i64 0
  %68 = or disjoint i64 %61, %67
  br label %69

69:                                               ; preds = %49, %47
  %70 = phi i64 [ %68, %49 ], [ 0, %47 ]
  %71 = getelementptr inbounds float, ptr %2, i64 1
  %72 = getelementptr inbounds float, ptr %2, i64 2
  %73 = getelementptr inbounds %struct.ScatterTree, ptr %0, i64 0, i32 2
  br label %74

74:                                               ; preds = %69, %110
  %75 = phi i64 [ 0, %69 ], [ %111, %110 ]
  %76 = getelementptr inbounds %struct.ScatterNode, ptr %1, i64 0, i32 8, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !34
  %78 = icmp eq ptr %77, null
  br i1 %78, label %110, label %79

79:                                               ; preds = %74
  %80 = icmp eq i64 %70, %75
  %81 = select i1 %48, i1 %80, i1 false
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  tail call fastcc void @traverse_octree(ptr noundef %0, ptr noundef nonnull %77, ptr noundef %2, i32 noundef 1, ptr noundef %4)
  br label %110

83:                                               ; preds = %79
  %84 = load float, ptr %2, align 4, !tbaa !62
  %85 = load float, ptr %77, align 4, !tbaa !62
  %86 = fsub float %84, %85
  %87 = load float, ptr %71, align 4, !tbaa !62
  %88 = getelementptr inbounds float, ptr %77, i64 1
  %89 = load float, ptr %88, align 4, !tbaa !62
  %90 = fsub float %87, %89
  %91 = load float, ptr %72, align 4, !tbaa !62
  %92 = getelementptr inbounds float, ptr %77, i64 2
  %93 = load float, ptr %92, align 4, !tbaa !62
  %94 = fsub float %91, %93
  %95 = fmul float %90, %90
  %96 = tail call float @llvm.fmuladd.f32(float %86, float %86, float %95)
  %97 = tail call float @llvm.fmuladd.f32(float %94, float %94, float %96)
  %98 = getelementptr inbounds %struct.ScatterNode, ptr %77, i64 0, i32 3
  %99 = load float, ptr %98, align 4, !tbaa !90
  %100 = getelementptr inbounds %struct.ScatterNode, ptr %77, i64 0, i32 4
  %101 = load float, ptr %100, align 8, !tbaa !89
  %102 = fadd float %99, %101
  %103 = load float, ptr %73, align 8, !tbaa !67
  %104 = fmul float %97, %103
  %105 = fcmp ogt float %102, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %83
  tail call fastcc void @traverse_octree(ptr noundef %0, ptr noundef nonnull %77, ptr noundef nonnull %2, i32 noundef 0, ptr noundef %4)
  br label %110

107:                                              ; preds = %83
  %108 = getelementptr inbounds %struct.ScatterNode, ptr %77, i64 0, i32 1
  %109 = getelementptr inbounds %struct.ScatterNode, ptr %77, i64 0, i32 2
  tail call fastcc void @add_radiance(ptr noundef %0, ptr noundef nonnull %108, ptr noundef nonnull %109, float noundef %99, float noundef %101, float noundef %97, ptr noundef %4)
  br label %110

110:                                              ; preds = %82, %107, %106, %74
  %111 = add nuw nsw i64 %75, 1
  %112 = icmp eq i64 %111, 8
  br i1 %112, label %113, label %74, !llvm.loop !160

113:                                              ; preds = %110, %42, %9
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @add_radiance(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef readonly %2, float noundef %3, float noundef %4, float noundef %5, ptr nocapture noundef %6) unnamed_addr #9 {
  %8 = getelementptr inbounds %struct.ScatterTree, ptr %0, i64 0, i32 1
  %9 = fcmp ogt float %5, 1.000000e+08
  br i1 %9, label %92, label %10

10:                                               ; preds = %7
  %11 = fcmp ogt float %5, 1.000000e+02
  br i1 %11, label %12, label %52

12:                                               ; preds = %10
  %13 = tail call float @sqrtf(float noundef %5) #11
  %14 = fptosi float %13 to i32
  %15 = icmp ult i32 %14, 10000
  br i1 %15, label %16, label %92

16:                                               ; preds = %12
  %17 = sitofp i32 %14 to float
  %18 = fsub float %13, %17
  %19 = load ptr, ptr %8, align 8, !tbaa !34
  %20 = getelementptr inbounds %struct.ScatterSettings, ptr %19, i64 0, i32 18
  %21 = load ptr, ptr %20, align 8, !tbaa !61
  %22 = zext nneg i32 %14 to i64
  %23 = getelementptr inbounds float, ptr %21, i64 %22
  %24 = load float, ptr %23, align 4, !tbaa !62
  %25 = fsub float 1.000000e+00, %18
  %26 = add nuw nsw i32 %14, 1
  %27 = zext nneg i32 %26 to i64
  %28 = getelementptr inbounds float, ptr %21, i64 %27
  %29 = load float, ptr %28, align 4, !tbaa !62
  %30 = fmul float %18, %29
  %31 = tail call float @llvm.fmuladd.f32(float %24, float %25, float %30)
  %32 = getelementptr inbounds %struct.ScatterTree, ptr %0, i64 0, i32 1, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !34
  %34 = getelementptr inbounds %struct.ScatterSettings, ptr %33, i64 0, i32 18
  %35 = load ptr, ptr %34, align 8, !tbaa !61
  %36 = getelementptr inbounds float, ptr %35, i64 %22
  %37 = load float, ptr %36, align 4, !tbaa !62
  %38 = getelementptr inbounds float, ptr %35, i64 %27
  %39 = load float, ptr %38, align 4, !tbaa !62
  %40 = fmul float %18, %39
  %41 = tail call float @llvm.fmuladd.f32(float %37, float %25, float %40)
  %42 = getelementptr inbounds %struct.ScatterTree, ptr %0, i64 0, i32 1, i64 2
  %43 = load ptr, ptr %42, align 8, !tbaa !34
  %44 = getelementptr inbounds %struct.ScatterSettings, ptr %43, i64 0, i32 18
  %45 = load ptr, ptr %44, align 8, !tbaa !61
  %46 = getelementptr inbounds float, ptr %45, i64 %22
  %47 = load float, ptr %46, align 4, !tbaa !62
  %48 = getelementptr inbounds float, ptr %45, i64 %27
  %49 = load float, ptr %48, align 4, !tbaa !62
  %50 = fmul float %18, %49
  %51 = tail call float @llvm.fmuladd.f32(float %47, float %25, float %50)
  br label %198

52:                                               ; preds = %10
  %53 = fmul float %5, 1.000000e+02
  %54 = fptosi float %53 to i32
  %55 = icmp ult i32 %54, 10000
  br i1 %55, label %56, label %92

56:                                               ; preds = %52
  %57 = sitofp i32 %54 to float
  %58 = fsub float %53, %57
  %59 = load ptr, ptr %8, align 8, !tbaa !34
  %60 = getelementptr inbounds %struct.ScatterSettings, ptr %59, i64 0, i32 17
  %61 = load ptr, ptr %60, align 8, !tbaa !60
  %62 = zext nneg i32 %54 to i64
  %63 = getelementptr inbounds float, ptr %61, i64 %62
  %64 = load float, ptr %63, align 4, !tbaa !62
  %65 = fsub float 1.000000e+00, %58
  %66 = add nuw nsw i32 %54, 1
  %67 = zext nneg i32 %66 to i64
  %68 = getelementptr inbounds float, ptr %61, i64 %67
  %69 = load float, ptr %68, align 4, !tbaa !62
  %70 = fmul float %58, %69
  %71 = tail call float @llvm.fmuladd.f32(float %64, float %65, float %70)
  %72 = getelementptr inbounds %struct.ScatterTree, ptr %0, i64 0, i32 1, i64 1
  %73 = load ptr, ptr %72, align 8, !tbaa !34
  %74 = getelementptr inbounds %struct.ScatterSettings, ptr %73, i64 0, i32 17
  %75 = load ptr, ptr %74, align 8, !tbaa !60
  %76 = getelementptr inbounds float, ptr %75, i64 %62
  %77 = load float, ptr %76, align 4, !tbaa !62
  %78 = getelementptr inbounds float, ptr %75, i64 %67
  %79 = load float, ptr %78, align 4, !tbaa !62
  %80 = fmul float %58, %79
  %81 = tail call float @llvm.fmuladd.f32(float %77, float %65, float %80)
  %82 = getelementptr inbounds %struct.ScatterTree, ptr %0, i64 0, i32 1, i64 2
  %83 = load ptr, ptr %82, align 8, !tbaa !34
  %84 = getelementptr inbounds %struct.ScatterSettings, ptr %83, i64 0, i32 17
  %85 = load ptr, ptr %84, align 8, !tbaa !60
  %86 = getelementptr inbounds float, ptr %85, i64 %62
  %87 = load float, ptr %86, align 4, !tbaa !62
  %88 = getelementptr inbounds float, ptr %85, i64 %67
  %89 = load float, ptr %88, align 4, !tbaa !62
  %90 = fmul float %58, %89
  %91 = tail call float @llvm.fmuladd.f32(float %87, float %65, float %90)
  br label %198

92:                                               ; preds = %52, %12, %7
  %93 = phi float [ %5, %7 ], [ %13, %12 ], [ %5, %52 ]
  %94 = load ptr, ptr %8, align 8, !tbaa !34
  %95 = getelementptr inbounds %struct.ScatterSettings, ptr %94, i64 0, i32 9
  %96 = load float, ptr %95, align 4, !tbaa !55
  %97 = tail call float @llvm.fmuladd.f32(float %96, float %96, float %93)
  %98 = tail call float @sqrtf(float noundef %97) #11
  %99 = getelementptr inbounds %struct.ScatterSettings, ptr %94, i64 0, i32 10
  %100 = load float, ptr %99, align 8, !tbaa !56
  %101 = tail call float @llvm.fmuladd.f32(float %100, float %100, float %93)
  %102 = tail call float @sqrtf(float noundef %101) #11
  %103 = load float, ptr %95, align 4, !tbaa !55
  %104 = getelementptr inbounds %struct.ScatterSettings, ptr %94, i64 0, i32 4
  %105 = load float, ptr %104, align 8, !tbaa !50
  %106 = tail call float @llvm.fmuladd.f32(float %105, float %98, float 1.000000e+00)
  %107 = fmul float %103, %106
  %108 = fneg float %105
  %109 = fmul float %98, %108
  %110 = tail call float @expf(float noundef %109) #11
  %111 = fmul float %110, %107
  %112 = fmul float %98, %98
  %113 = fmul float %98, %112
  %114 = fdiv float %111, %113
  %115 = load float, ptr %99, align 8, !tbaa !56
  %116 = load float, ptr %104, align 8, !tbaa !50
  %117 = tail call float @llvm.fmuladd.f32(float %116, float %102, float 1.000000e+00)
  %118 = fmul float %115, %117
  %119 = fneg float %116
  %120 = fmul float %102, %119
  %121 = tail call float @expf(float noundef %120) #11
  %122 = fmul float %121, %118
  %123 = fmul float %102, %102
  %124 = fmul float %102, %123
  %125 = fdiv float %122, %124
  %126 = fadd float %114, %125
  %127 = fmul float %126, 0x3FB45F3060000000
  %128 = getelementptr inbounds %struct.ScatterTree, ptr %0, i64 0, i32 1, i64 1
  %129 = load ptr, ptr %128, align 8, !tbaa !34
  %130 = getelementptr inbounds %struct.ScatterSettings, ptr %129, i64 0, i32 9
  %131 = load float, ptr %130, align 4, !tbaa !55
  %132 = tail call float @llvm.fmuladd.f32(float %131, float %131, float %93)
  %133 = tail call float @sqrtf(float noundef %132) #11
  %134 = getelementptr inbounds %struct.ScatterSettings, ptr %129, i64 0, i32 10
  %135 = load float, ptr %134, align 8, !tbaa !56
  %136 = tail call float @llvm.fmuladd.f32(float %135, float %135, float %93)
  %137 = tail call float @sqrtf(float noundef %136) #11
  %138 = load float, ptr %130, align 4, !tbaa !55
  %139 = getelementptr inbounds %struct.ScatterSettings, ptr %129, i64 0, i32 4
  %140 = load float, ptr %139, align 8, !tbaa !50
  %141 = tail call float @llvm.fmuladd.f32(float %140, float %133, float 1.000000e+00)
  %142 = fmul float %138, %141
  %143 = fneg float %140
  %144 = fmul float %133, %143
  %145 = tail call float @expf(float noundef %144) #11
  %146 = fmul float %145, %142
  %147 = fmul float %133, %133
  %148 = fmul float %133, %147
  %149 = fdiv float %146, %148
  %150 = load float, ptr %134, align 8, !tbaa !56
  %151 = load float, ptr %139, align 8, !tbaa !50
  %152 = tail call float @llvm.fmuladd.f32(float %151, float %137, float 1.000000e+00)
  %153 = fmul float %150, %152
  %154 = fneg float %151
  %155 = fmul float %137, %154
  %156 = tail call float @expf(float noundef %155) #11
  %157 = fmul float %156, %153
  %158 = fmul float %137, %137
  %159 = fmul float %137, %158
  %160 = fdiv float %157, %159
  %161 = fadd float %149, %160
  %162 = fmul float %161, 0x3FB45F3060000000
  %163 = getelementptr inbounds %struct.ScatterTree, ptr %0, i64 0, i32 1, i64 2
  %164 = load ptr, ptr %163, align 8, !tbaa !34
  %165 = getelementptr inbounds %struct.ScatterSettings, ptr %164, i64 0, i32 9
  %166 = load float, ptr %165, align 4, !tbaa !55
  %167 = tail call float @llvm.fmuladd.f32(float %166, float %166, float %93)
  %168 = tail call float @sqrtf(float noundef %167) #11
  %169 = getelementptr inbounds %struct.ScatterSettings, ptr %164, i64 0, i32 10
  %170 = load float, ptr %169, align 8, !tbaa !56
  %171 = tail call float @llvm.fmuladd.f32(float %170, float %170, float %93)
  %172 = tail call float @sqrtf(float noundef %171) #11
  %173 = load float, ptr %165, align 4, !tbaa !55
  %174 = getelementptr inbounds %struct.ScatterSettings, ptr %164, i64 0, i32 4
  %175 = load float, ptr %174, align 8, !tbaa !50
  %176 = tail call float @llvm.fmuladd.f32(float %175, float %168, float 1.000000e+00)
  %177 = fmul float %173, %176
  %178 = fneg float %175
  %179 = fmul float %168, %178
  %180 = tail call float @expf(float noundef %179) #11
  %181 = fmul float %180, %177
  %182 = fmul float %168, %168
  %183 = fmul float %168, %182
  %184 = fdiv float %181, %183
  %185 = load float, ptr %169, align 8, !tbaa !56
  %186 = load float, ptr %174, align 8, !tbaa !50
  %187 = tail call float @llvm.fmuladd.f32(float %186, float %172, float 1.000000e+00)
  %188 = fmul float %185, %187
  %189 = fneg float %186
  %190 = fmul float %172, %189
  %191 = tail call float @expf(float noundef %190) #11
  %192 = fmul float %191, %188
  %193 = fmul float %172, %172
  %194 = fmul float %172, %193
  %195 = fdiv float %192, %194
  %196 = fadd float %184, %195
  %197 = fmul float %196, 0x3FB45F3060000000
  br label %198

198:                                              ; preds = %16, %56, %92
  %199 = phi float [ %197, %92 ], [ %51, %16 ], [ %91, %56 ]
  %200 = phi float [ %162, %92 ], [ %41, %16 ], [ %81, %56 ]
  %201 = phi float [ %127, %92 ], [ %31, %16 ], [ %71, %56 ]
  %202 = icmp ne ptr %1, null
  %203 = fcmp une float %3, 0.000000e+00
  %204 = and i1 %202, %203
  br i1 %204, label %205, label %231

205:                                              ; preds = %198
  %206 = fmul float %201, %3
  %207 = fmul float %200, %3
  %208 = fmul float %199, %3
  %209 = load float, ptr %1, align 4, !tbaa !62
  %210 = load float, ptr %6, align 4, !tbaa !62
  %211 = tail call float @llvm.fmuladd.f32(float %209, float %206, float %210)
  store float %211, ptr %6, align 4, !tbaa !62
  %212 = getelementptr inbounds float, ptr %1, i64 1
  %213 = load float, ptr %212, align 4, !tbaa !62
  %214 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %215 = load float, ptr %214, align 4, !tbaa !62
  %216 = tail call float @llvm.fmuladd.f32(float %213, float %207, float %215)
  store float %216, ptr %214, align 4, !tbaa !62
  %217 = getelementptr inbounds float, ptr %1, i64 2
  %218 = load float, ptr %217, align 4, !tbaa !62
  %219 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %220 = load float, ptr %219, align 4, !tbaa !62
  %221 = tail call float @llvm.fmuladd.f32(float %218, float %208, float %220)
  store float %221, ptr %219, align 4, !tbaa !62
  %222 = getelementptr inbounds %struct.ScatterResult, ptr %6, i64 0, i32 2
  %223 = load float, ptr %222, align 4, !tbaa !62
  %224 = fadd float %206, %223
  store float %224, ptr %222, align 4, !tbaa !62
  %225 = getelementptr inbounds %struct.ScatterResult, ptr %6, i64 0, i32 2, i64 1
  %226 = load float, ptr %225, align 4, !tbaa !62
  %227 = fadd float %207, %226
  store float %227, ptr %225, align 4, !tbaa !62
  %228 = getelementptr inbounds %struct.ScatterResult, ptr %6, i64 0, i32 2, i64 2
  %229 = load float, ptr %228, align 4, !tbaa !62
  %230 = fadd float %208, %229
  store float %230, ptr %228, align 4, !tbaa !62
  br label %231

231:                                              ; preds = %205, %198
  %232 = icmp ne ptr %2, null
  %233 = fcmp une float %4, 0.000000e+00
  %234 = and i1 %232, %233
  br i1 %234, label %235, label %262

235:                                              ; preds = %231
  %236 = fmul float %201, %4
  %237 = fmul float %200, %4
  %238 = fmul float %199, %4
  %239 = load float, ptr %2, align 4, !tbaa !62
  %240 = getelementptr inbounds %struct.ScatterResult, ptr %6, i64 0, i32 1
  %241 = load float, ptr %240, align 4, !tbaa !62
  %242 = tail call float @llvm.fmuladd.f32(float %239, float %236, float %241)
  store float %242, ptr %240, align 4, !tbaa !62
  %243 = getelementptr inbounds float, ptr %2, i64 1
  %244 = load float, ptr %243, align 4, !tbaa !62
  %245 = getelementptr inbounds %struct.ScatterResult, ptr %6, i64 0, i32 1, i64 1
  %246 = load float, ptr %245, align 4, !tbaa !62
  %247 = tail call float @llvm.fmuladd.f32(float %244, float %237, float %246)
  store float %247, ptr %245, align 4, !tbaa !62
  %248 = getelementptr inbounds float, ptr %2, i64 2
  %249 = load float, ptr %248, align 4, !tbaa !62
  %250 = getelementptr inbounds %struct.ScatterResult, ptr %6, i64 0, i32 1, i64 2
  %251 = load float, ptr %250, align 4, !tbaa !62
  %252 = tail call float @llvm.fmuladd.f32(float %249, float %238, float %251)
  store float %252, ptr %250, align 4, !tbaa !62
  %253 = getelementptr inbounds %struct.ScatterResult, ptr %6, i64 0, i32 3
  %254 = load float, ptr %253, align 4, !tbaa !62
  %255 = fadd float %236, %254
  store float %255, ptr %253, align 4, !tbaa !62
  %256 = getelementptr inbounds %struct.ScatterResult, ptr %6, i64 0, i32 3, i64 1
  %257 = load float, ptr %256, align 4, !tbaa !62
  %258 = fadd float %237, %257
  store float %258, ptr %256, align 4, !tbaa !62
  %259 = getelementptr inbounds %struct.ScatterResult, ptr %6, i64 0, i32 3, i64 2
  %260 = load float, ptr %259, align 4, !tbaa !62
  %261 = fadd float %238, %260
  store float %261, ptr %259, align 4, !tbaa !62
  br label %262

262:                                              ; preds = %235, %231
  ret void
}

declare void @BLI_rw_mutex_lock(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @BLI_rw_mutex_unlock(ptr noundef) local_unnamed_addr #4

declare void @RE_TileProcessor(ptr noundef) local_unnamed_addr #4

declare void @RE_FreeRenderResult(ptr noundef) local_unnamed_addr #4

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #4

declare float @get_render_aosss_error(ptr noundef, float noundef) local_unnamed_addr #4

declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !40, i64 0}
!39 = !{!"ScatterSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !40, i64 64, !35, i64 72, !35, i64 80}
!40 = !{!"float", !36, i64 0}
!41 = !{!39, !40, i64 20}
!42 = !{!39, !40, i64 28}
!43 = !{!39, !40, i64 44}
!44 = !{!39, !40, i64 48}
!45 = !{!39, !40, i64 52}
!46 = distinct !{!46, !47, !48}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!"llvm.loop.unroll.disable"}
!49 = !{!39, !40, i64 32}
!50 = !{!39, !40, i64 16}
!51 = !{!39, !40, i64 12}
!52 = !{!39, !40, i64 8}
!53 = !{!39, !40, i64 4}
!54 = !{!39, !40, i64 24}
!55 = !{!39, !40, i64 36}
!56 = !{!39, !40, i64 40}
!57 = !{!39, !40, i64 56}
!58 = !{!39, !40, i64 60}
!59 = !{!39, !40, i64 64}
!60 = !{!39, !35, i64 72}
!61 = !{!39, !35, i64 80}
!62 = !{!40, !40, i64 0}
!63 = distinct !{!63, !47, !48}
!64 = !{!65, !40, i64 36}
!65 = !{!"ScatterTree", !35, i64 0, !36, i64 8, !40, i64 32, !40, i64 36, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !66, i64 72, !36, i64 76, !36, i64 88}
!66 = !{!"int", !36, i64 0}
!67 = !{!65, !40, i64 32}
!68 = !{!65, !66, i64 72}
!69 = !{!65, !35, i64 48}
!70 = !{!65, !35, i64 56}
!71 = !{!72, !40, i64 24}
!72 = !{!"ScatterPoint", !36, i64 0, !36, i64 12, !40, i64 24, !66, i64 28}
!73 = !{!72, !66, i64 28}
!74 = distinct !{!74, !47, !48}
!75 = !{!65, !35, i64 64}
!76 = !{!65, !35, i64 0}
!77 = !{!65, !35, i64 40}
!78 = !{!79, !35, i64 48}
!79 = !{!"ScatterNode", !36, i64 0, !36, i64 12, !36, i64 24, !40, i64 36, !40, i64 40, !66, i64 44, !35, i64 48, !36, i64 56, !36, i64 72}
!80 = !{!79, !66, i64 44}
!81 = !{i64 0, i64 12, !82, i64 12, i64 12, !82, i64 24, i64 4, !62, i64 28, i64 4, !83}
!82 = !{!36, !36, i64 0}
!83 = !{!66, !66, i64 0}
!84 = distinct !{!84, !47, !48}
!85 = distinct !{!85, !47, !48}
!86 = distinct !{!86, !47, !48}
!87 = distinct !{!87, !47, !48}
!88 = distinct !{!88, !47, !48}
!89 = !{!79, !40, i64 40}
!90 = !{!79, !40, i64 36}
!91 = distinct !{!91, !47, !48}
!92 = distinct !{!92, !47, !48}
!93 = distinct !{!93, !47, !48}
!94 = distinct !{!94, !47, !48}
!95 = distinct !{!95, !47, !48}
!96 = !{!97, !35, i64 16}
!97 = !{!"SSSPoints", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !66, i64 40}
!98 = !{!97, !35, i64 24}
!99 = !{!97, !35, i64 32}
!100 = !{!97, !66, i64 40}
!101 = !{!102, !35, i64 5856}
!102 = !{!"Render", !35, i64 0, !35, i64 8, !36, i64 16, !66, i64 92, !103, i64 96, !103, i64 98, !103, i64 100, !103, i64 102, !36, i64 104, !35, i64 112, !35, i64 120, !104, i64 128, !66, i64 144, !66, i64 148, !66, i64 152, !105, i64 156, !106, i64 172, !40, i64 188, !40, i64 192, !40, i64 196, !66, i64 200, !66, i64 204, !66, i64 208, !66, i64 212, !40, i64 216, !40, i64 220, !40, i64 224, !40, i64 228, !40, i64 232, !40, i64 236, !36, i64 240, !36, i64 252, !36, i64 288, !36, i64 352, !36, i64 416, !36, i64 480, !40, i64 544, !40, i64 548, !35, i64 552, !36, i64 560, !36, i64 816, !35, i64 1072, !36, i64 1080, !35, i64 1088, !35, i64 1096, !107, i64 1104, !114, i64 5088, !35, i64 5616, !66, i64 5624, !66, i64 5628, !104, i64 5632, !35, i64 5648, !35, i64 5656, !35, i64 5664, !35, i64 5672, !40, i64 5680, !35, i64 5688, !104, i64 5696, !40, i64 5712, !40, i64 5716, !66, i64 5720, !66, i64 5724, !66, i64 5728, !66, i64 5732, !66, i64 5736, !35, i64 5744, !104, i64 5752, !104, i64 5768, !104, i64 5784, !35, i64 5800, !104, i64 5808, !66, i64 5824, !35, i64 5832, !35, i64 5840, !35, i64 5848, !35, i64 5856, !35, i64 5864, !104, i64 5872, !35, i64 5888, !104, i64 5896, !104, i64 5912, !35, i64 5928, !35, i64 5936, !35, i64 5944, !35, i64 5952, !35, i64 5960, !35, i64 5968, !35, i64 5976, !35, i64 5984, !35, i64 5992, !35, i64 6000, !35, i64 6008, !35, i64 6016, !35, i64 6024, !35, i64 6032, !35, i64 6040, !35, i64 6048, !35, i64 6056, !116, i64 6064, !35, i64 6216, !35, i64 6224, !35, i64 6232}
!103 = !{!"short", !36, i64 0}
!104 = !{!"ListBase", !35, i64 0, !35, i64 8}
!105 = !{!"rcti", !66, i64 0, !66, i64 4, !66, i64 8, !66, i64 12}
!106 = !{!"rctf", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!107 = !{!"RenderData", !108, i64 0, !35, i64 248, !35, i64 256, !111, i64 264, !112, i64 328, !66, i64 400, !66, i64 404, !66, i64 408, !40, i64 412, !66, i64 416, !66, i64 420, !66, i64 424, !66, i64 428, !103, i64 432, !103, i64 434, !40, i64 436, !40, i64 440, !40, i64 444, !40, i64 448, !40, i64 452, !103, i64 456, !103, i64 458, !103, i64 460, !103, i64 462, !103, i64 464, !103, i64 466, !66, i64 468, !103, i64 472, !103, i64 474, !103, i64 476, !103, i64 478, !103, i64 480, !103, i64 482, !66, i64 484, !66, i64 488, !103, i64 492, !103, i64 494, !66, i64 496, !66, i64 500, !103, i64 504, !103, i64 506, !103, i64 508, !103, i64 510, !103, i64 512, !36, i64 514, !36, i64 515, !66, i64 516, !66, i64 520, !66, i64 524, !103, i64 528, !103, i64 530, !103, i64 532, !103, i64 534, !103, i64 536, !103, i64 538, !103, i64 540, !103, i64 542, !106, i64 544, !106, i64 560, !105, i64 576, !104, i64 592, !103, i64 608, !103, i64 610, !40, i64 612, !40, i64 616, !40, i64 620, !40, i64 624, !66, i64 628, !40, i64 632, !40, i64 636, !40, i64 640, !40, i64 644, !103, i64 648, !103, i64 650, !103, i64 652, !103, i64 654, !103, i64 656, !103, i64 658, !40, i64 660, !40, i64 664, !103, i64 668, !103, i64 670, !40, i64 672, !40, i64 676, !36, i64 680, !66, i64 1704, !103, i64 1708, !103, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !66, i64 2520, !103, i64 2524, !103, i64 2526, !40, i64 2528, !40, i64 2532, !103, i64 2536, !103, i64 2538, !40, i64 2540, !103, i64 2544, !103, i64 2546, !66, i64 2548, !103, i64 2552, !103, i64 2554, !103, i64 2556, !103, i64 2558, !40, i64 2560, !40, i64 2564, !35, i64 2568, !66, i64 2576, !40, i64 2580, !36, i64 2584, !113, i64 2616, !66, i64 3976, !66, i64 3980}
!108 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !103, i64 8, !103, i64 10, !40, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !109, i64 24, !110, i64 184}
!109 = !{!"ColorManagedViewSettings", !66, i64 0, !66, i64 4, !36, i64 8, !36, i64 72, !40, i64 136, !40, i64 140, !35, i64 144, !35, i64 152}
!110 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!111 = !{!"QuicktimeCodecSettings", !66, i64 0, !66, i64 4, !66, i64 8, !66, i64 12, !66, i64 16, !66, i64 20, !66, i64 24, !66, i64 28, !66, i64 32, !66, i64 36, !66, i64 40, !66, i64 44, !103, i64 48, !103, i64 50, !66, i64 52, !66, i64 56, !66, i64 60}
!112 = !{!"FFMpegCodecData", !66, i64 0, !66, i64 4, !66, i64 8, !66, i64 12, !66, i64 16, !66, i64 20, !66, i64 24, !66, i64 28, !40, i64 32, !66, i64 36, !66, i64 40, !66, i64 44, !66, i64 48, !66, i64 52, !66, i64 56, !66, i64 60, !35, i64 64}
!113 = !{!"BakeData", !108, i64 0, !36, i64 248, !103, i64 1272, !103, i64 1274, !103, i64 1276, !103, i64 1278, !40, i64 1280, !40, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!114 = !{!"World", !115, i64 0, !35, i64 120, !103, i64 128, !103, i64 130, !103, i64 132, !103, i64 134, !40, i64 136, !40, i64 140, !40, i64 144, !40, i64 148, !40, i64 152, !40, i64 156, !40, i64 160, !40, i64 164, !40, i64 168, !40, i64 172, !40, i64 176, !40, i64 180, !40, i64 184, !40, i64 188, !40, i64 192, !40, i64 196, !103, i64 200, !103, i64 202, !103, i64 204, !103, i64 206, !103, i64 208, !103, i64 210, !103, i64 212, !103, i64 214, !40, i64 216, !40, i64 220, !40, i64 224, !40, i64 228, !40, i64 232, !40, i64 236, !40, i64 240, !40, i64 244, !40, i64 248, !40, i64 252, !40, i64 256, !40, i64 260, !103, i64 264, !103, i64 266, !103, i64 268, !103, i64 270, !40, i64 272, !40, i64 276, !40, i64 280, !40, i64 284, !103, i64 288, !103, i64 290, !103, i64 292, !103, i64 294, !40, i64 296, !40, i64 300, !40, i64 304, !40, i64 308, !40, i64 312, !40, i64 316, !40, i64 320, !103, i64 324, !103, i64 326, !103, i64 328, !103, i64 330, !103, i64 332, !103, i64 334, !35, i64 336, !35, i64 344, !35, i64 352, !36, i64 360, !103, i64 504, !103, i64 506, !36, i64 508, !35, i64 512, !35, i64 520}
!115 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !103, i64 98, !66, i64 100, !66, i64 104, !66, i64 108, !35, i64 112}
!116 = !{!"RenderStats", !66, i64 0, !66, i64 4, !66, i64 8, !66, i64 12, !66, i64 16, !66, i64 20, !66, i64 24, !103, i64 28, !103, i64 30, !103, i64 32, !103, i64 34, !103, i64 36, !103, i64 38, !36, i64 40, !117, i64 48, !117, i64 56, !35, i64 64, !35, i64 72, !36, i64 80, !40, i64 144, !40, i64 148}
!117 = !{!"double", !36, i64 0}
!118 = !{!102, !35, i64 5848}
!119 = !{!102, !35, i64 6000}
!120 = !{!102, !35, i64 6008}
!121 = !{!102, !35, i64 1088}
!122 = !{!123, !66, i64 100}
!123 = !{!"Material", !115, i64 0, !35, i64 120, !103, i64 128, !103, i64 130, !40, i64 132, !40, i64 136, !40, i64 140, !40, i64 144, !40, i64 148, !40, i64 152, !40, i64 156, !40, i64 160, !40, i64 164, !40, i64 168, !40, i64 172, !40, i64 176, !40, i64 180, !40, i64 184, !40, i64 188, !40, i64 192, !40, i64 196, !40, i64 200, !40, i64 204, !40, i64 208, !40, i64 212, !40, i64 216, !40, i64 220, !124, i64 224, !125, i64 312, !40, i64 328, !40, i64 332, !40, i64 336, !40, i64 340, !40, i64 344, !40, i64 348, !40, i64 352, !103, i64 356, !103, i64 358, !103, i64 360, !36, i64 362, !36, i64 363, !40, i64 364, !40, i64 368, !103, i64 372, !103, i64 374, !40, i64 376, !40, i64 380, !40, i64 384, !40, i64 388, !103, i64 392, !103, i64 394, !66, i64 396, !66, i64 400, !66, i64 404, !66, i64 408, !103, i64 412, !103, i64 414, !103, i64 416, !103, i64 418, !40, i64 420, !40, i64 424, !40, i64 428, !40, i64 432, !40, i64 436, !40, i64 440, !40, i64 444, !40, i64 448, !40, i64 452, !40, i64 456, !36, i64 460, !40, i64 524, !40, i64 528, !40, i64 532, !66, i64 536, !36, i64 540, !36, i64 541, !36, i64 542, !36, i64 543, !103, i64 544, !103, i64 546, !103, i64 548, !36, i64 550, !36, i64 551, !103, i64 552, !103, i64 554, !40, i64 556, !40, i64 560, !36, i64 564, !40, i64 580, !40, i64 584, !103, i64 588, !103, i64 590, !35, i64 592, !35, i64 600, !36, i64 608, !36, i64 609, !36, i64 610, !36, i64 611, !103, i64 612, !103, i64 614, !40, i64 616, !40, i64 620, !36, i64 624, !35, i64 768, !35, i64 776, !35, i64 784, !35, i64 792, !40, i64 800, !40, i64 804, !40, i64 808, !40, i64 812, !40, i64 816, !103, i64 820, !103, i64 822, !36, i64 824, !36, i64 836, !40, i64 848, !40, i64 852, !40, i64 856, !40, i64 860, !40, i64 864, !40, i64 868, !40, i64 872, !103, i64 876, !103, i64 878, !66, i64 880, !103, i64 884, !103, i64 886, !36, i64 888, !103, i64 904, !103, i64 906, !103, i64 908, !103, i64 910, !103, i64 912, !36, i64 914, !35, i64 920, !104, i64 928}
!124 = !{!"VolumeSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !36, i64 16, !36, i64 28, !36, i64 40, !40, i64 52, !40, i64 56, !40, i64 60, !103, i64 64, !103, i64 66, !103, i64 68, !103, i64 70, !40, i64 72, !40, i64 76, !40, i64 80, !40, i64 84}
!125 = !{!"GameSettings", !66, i64 0, !66, i64 4, !66, i64 8, !66, i64 12}
!126 = !{!123, !103, i64 130}
!127 = !{!123, !103, i64 876}
!128 = !{!102, !35, i64 6128}
!129 = distinct !{!129, !47, !48}
!130 = !{!131, !35, i64 0}
!131 = !{!"Global", !35, i64 0, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 2057, !36, i64 2058, !104, i64 2064, !36, i64 2080, !36, i64 2081, !36, i64 2082, !103, i64 2084, !103, i64 2086, !103, i64 2088, !36, i64 2090, !103, i64 2092, !66, i64 2096, !66, i64 2100, !36, i64 2104, !66, i64 2108, !66, i64 2112, !36, i64 2116}
!132 = distinct !{!132, !47, !48}
!133 = !{!134, !35, i64 8}
!134 = !{!"GHashIterator", !35, i64 0, !35, i64 8, !66, i64 16}
!135 = !{!136, !35, i64 16}
!136 = !{!"_gh_Entry", !35, i64 0, !35, i64 8, !35, i64 16}
!137 = !{!138, !35, i64 0}
!138 = !{!"SSSData", !35, i64 0, !36, i64 8}
!139 = distinct !{!139, !47, !48}
!140 = !{!102, !35, i64 6048}
!141 = !{!102, !35, i64 6056}
!142 = !{!102, !35, i64 112}
!143 = !{!102, !103, i64 98}
!144 = !{!102, !66, i64 1624}
!145 = !{!102, !103, i64 6098}
!146 = !{!102, !35, i64 5864}
!147 = !{!102, !66, i64 1620}
!148 = !{!104, !35, i64 0}
!149 = distinct !{!149, !47, !48}
!150 = distinct !{!150, !47, !48}
!151 = distinct !{!151, !47, !48}
!152 = !{!123, !40, i64 856}
!153 = !{!123, !40, i64 860}
!154 = !{!123, !40, i64 868}
!155 = !{!123, !40, i64 872}
!156 = !{!123, !40, i64 848}
!157 = !{!123, !40, i64 852}
!158 = !{!102, !103, i64 96}
!159 = distinct !{!159, !47, !48}
!160 = distinct !{!160, !47, !48}
