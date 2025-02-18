; ModuleID = 'magick/compare.c'
source_filename = "magick/compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._MagickPixelPacket = type { i32, i32, i32, double, i64, float, float, float, float, float }
%struct._Image = type { i32, i32, i32, i64, i32, i32, i32, i64, i64, i64, i64, ptr, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, double, %struct._ChromaticityInfo, i32, ptr, i32, ptr, ptr, ptr, i64, double, double, %struct._RectangleInfo, %struct._RectangleInfo, %struct._RectangleInfo, double, double, double, i32, i32, i32, i32, i32, i32, ptr, i64, i64, i64, i64, i64, i64, %struct._ErrorInfo, %struct._TimerInfo, ptr, ptr, ptr, ptr, ptr, ptr, [4096 x i8], [4096 x i8], [4096 x i8], i64, i64, %struct._ExceptionInfo, i32, i64, ptr, %struct._ProfileInfo, %struct._ProfileInfo, ptr, i64, i64, ptr, ptr, ptr, i32, i32, %struct._PixelPacket, ptr, %struct._RectangleInfo, ptr, ptr, i32, i32, i64, i32, i64, i64, i32, i64 }
%struct._ChromaticityInfo = type { %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo }
%struct._PrimaryInfo = type { double, double, double }
%struct._ErrorInfo = type { double, double, double }
%struct._TimerInfo = type { %struct._Timer, %struct._Timer, i32, i64 }
%struct._Timer = type { double, double, double }
%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._ProfileInfo = type { ptr, i64, ptr, i64 }
%struct._PixelPacket = type { i16, i16, i16, i16 }
%struct._RectangleInfo = type { i64, i64, i64, i64 }
%struct._ChannelStatistics = type { i64, double, double, double, double, double, double, double, double, double, double, double }
%struct._ChannelPerceptualHash = type { [32 x double], [32 x double] }

@.str = private unnamed_addr constant [17 x i8] c"magick/compare.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"ImageSizeDiffers\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"#f1001ecc\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"highlight-color\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"#ffffffcc\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"lowlight-color\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"distortion\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"%.*g\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"compare:similarity-threshold\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"Similarity/Image\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @CompareImages(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call ptr @CompareImageChannels(ptr noundef %0, ptr noundef %1, i32 noundef 47, i32 noundef %2, ptr noundef %3, ptr noundef %4)
  ret ptr %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @CompareImageChannels(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct._MagickPixelPacket, align 8
  %8 = alloca %struct._MagickPixelPacket, align 8
  %9 = alloca %struct._MagickPixelPacket, align 8
  %10 = alloca %struct._MagickPixelPacket, align 8
  %11 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %9) #12
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %13 = load i32, ptr %12, align 8, !tbaa !34
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %17 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 152, ptr noundef nonnull @.str.2, ptr noundef nonnull %16) #12
  br label %18

18:                                               ; preds = %15, %6
  store double 0.000000e+00, ptr %4, align 8, !tbaa !53
  %19 = load i32, ptr %12, align 8, !tbaa !34
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %23 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 158, ptr noundef nonnull @.str.2, ptr noundef nonnull %22) #12
  br label %24

24:                                               ; preds = %21, %18
  %25 = icmp eq i32 %3, 255
  br i1 %25, label %41, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  %28 = load i64, ptr %27, align 8, !tbaa !54
  %29 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %30 = load i64, ptr %29, align 8, !tbaa !54
  %31 = icmp eq i64 %28, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 8
  %34 = load i64, ptr %33, align 8, !tbaa !55
  %35 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %36 = load i64, ptr %35, align 8, !tbaa !55
  %37 = icmp eq i64 %34, %36
  br i1 %37, label %41, label %38

38:                                               ; preds = %32, %26
  %39 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %40 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 162, i32 noundef 465, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %39) #12
  br label %534

41:                                               ; preds = %32, %24
  %42 = tail call i32 @GetImageChannelDistortion(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %4, ptr noundef %5), !range !56
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %534, label %44

44:                                               ; preds = %41
  %45 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %5) #12
  %46 = icmp eq ptr %45, null
  br i1 %46, label %534, label %47

47:                                               ; preds = %44
  %48 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %45, i32 noundef 6) #12
  %49 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %50 = load i64, ptr %49, align 8, !tbaa !54
  %51 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %52 = load i64, ptr %51, align 8, !tbaa !55
  %53 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef %50, i64 noundef %52, i32 noundef 1, ptr noundef %5) #12
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = tail call ptr @DestroyImage(ptr noundef nonnull %45) #12
  br label %534

57:                                               ; preds = %47
  %58 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %53, i32 noundef 1) #12
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 58
  tail call void @InheritException(ptr noundef %5, ptr noundef nonnull %61) #12
  %62 = tail call ptr @DestroyImage(ptr noundef nonnull %45) #12
  %63 = tail call ptr @DestroyImage(ptr noundef nonnull %53) #12
  br label %534

64:                                               ; preds = %57
  %65 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %53, i32 noundef 6) #12
  %66 = call i32 @QueryMagickColor(ptr noundef nonnull @.str.5, ptr noundef nonnull %7, ptr noundef %5) #12
  %67 = call ptr @GetImageArtifact(ptr noundef %0, ptr noundef nonnull @.str.6) #12
  %68 = icmp eq ptr %67, null
  br i1 %68, label %71, label %69

69:                                               ; preds = %64
  %70 = call i32 @QueryMagickColor(ptr noundef nonnull %67, ptr noundef nonnull %7, ptr noundef %5) #12
  br label %71

71:                                               ; preds = %69, %64
  %72 = call i32 @QueryMagickColor(ptr noundef nonnull @.str.7, ptr noundef nonnull %8, ptr noundef %5) #12
  %73 = call ptr @GetImageArtifact(ptr noundef %0, ptr noundef nonnull @.str.8) #12
  %74 = icmp eq ptr %73, null
  br i1 %74, label %77, label %75

75:                                               ; preds = %71
  %76 = call i32 @QueryMagickColor(ptr noundef nonnull %73, ptr noundef nonnull %8, ptr noundef %5) #12
  br label %77

77:                                               ; preds = %75, %71
  %78 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 1
  %79 = load i32, ptr %78, align 4, !tbaa !57
  %80 = icmp eq i32 %79, 12
  br i1 %80, label %81, label %230

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 1
  %83 = load i32, ptr %82, align 4, !tbaa !58
  %84 = icmp eq i32 %83, 13
  %85 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 5
  %86 = load float, ptr %85, align 8, !tbaa !61
  br i1 %84, label %101, label %87

87:                                               ; preds = %81
  %88 = fpext float %86 to double
  %89 = fmul double %88, 0x3EF0001000100010
  %90 = fptrunc double %89 to float
  %91 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 6
  %92 = load float, ptr %91, align 4, !tbaa !62
  %93 = fpext float %92 to double
  %94 = fmul double %93, 0x3EF0001000100010
  %95 = fptrunc double %94 to float
  %96 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 7
  %97 = load float, ptr %96, align 8, !tbaa !63
  %98 = fpext float %97 to double
  %99 = fmul double %98, 0x3EF0001000100010
  %100 = fptrunc double %99 to float
  br label %109

101:                                              ; preds = %81
  %102 = call float @DecodePixelGamma(float noundef %86) #13
  %103 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 6
  %104 = load float, ptr %103, align 4, !tbaa !62
  %105 = call float @DecodePixelGamma(float noundef %104) #13
  %106 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 7
  %107 = load float, ptr %106, align 8, !tbaa !63
  %108 = call float @DecodePixelGamma(float noundef %107) #13
  br label %109

109:                                              ; preds = %101, %87
  %110 = phi float [ %100, %87 ], [ %108, %101 ]
  %111 = phi float [ %95, %87 ], [ %105, %101 ]
  %112 = phi float [ %90, %87 ], [ %102, %101 ]
  %113 = call float @llvm.fabs.f32(float %112)
  %114 = fpext float %113 to double
  %115 = fcmp olt double %114, 1.000000e-15
  br i1 %115, label %116, label %124

116:                                              ; preds = %109
  %117 = call float @llvm.fabs.f32(float %111)
  %118 = fpext float %117 to double
  %119 = fcmp olt double %118, 1.000000e-15
  br i1 %119, label %120, label %124

120:                                              ; preds = %116
  %121 = call float @llvm.fabs.f32(float %110)
  %122 = fpext float %121 to double
  %123 = fcmp olt double %122, 1.000000e-15
  br i1 %123, label %153, label %124

124:                                              ; preds = %120, %116, %109
  %125 = fsub float 1.000000e+00, %112
  %126 = fsub float 1.000000e+00, %111
  %127 = fsub float 1.000000e+00, %110
  %128 = fcmp olt float %126, %125
  %129 = select i1 %128, float %126, float %125
  %130 = fcmp olt float %127, %129
  %131 = select i1 %130, float %127, float %129
  %132 = fsub float %125, %131
  %133 = fpext float %132 to double
  %134 = fpext float %131 to double
  %135 = fsub double 1.000000e+00, %134
  %136 = fdiv double %133, %135
  %137 = fptrunc double %136 to float
  %138 = fsub float %126, %131
  %139 = fpext float %138 to double
  %140 = fdiv double %139, %135
  %141 = fptrunc double %140 to float
  %142 = fsub float %127, %131
  %143 = fpext float %142 to double
  %144 = fdiv double %143, %135
  %145 = fptrunc double %144 to float
  store i32 12, ptr %82, align 4, !tbaa !58
  %146 = fmul float %137, 6.553500e+04
  %147 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 5
  store float %146, ptr %147, align 8, !tbaa !61
  %148 = fmul float %141, 6.553500e+04
  %149 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 6
  store float %148, ptr %149, align 4, !tbaa !62
  %150 = fmul float %145, 6.553500e+04
  %151 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 7
  store float %150, ptr %151, align 8, !tbaa !63
  %152 = fmul float %131, 6.553500e+04
  br label %153

153:                                              ; preds = %120, %124
  %154 = phi float [ %152, %124 ], [ 6.553500e+04, %120 ]
  %155 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 9
  store float %154, ptr %155, align 8, !tbaa !64
  %156 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 1
  %157 = load i32, ptr %156, align 4, !tbaa !58
  %158 = icmp eq i32 %157, 13
  %159 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 5
  %160 = load float, ptr %159, align 8, !tbaa !61
  br i1 %158, label %175, label %161

161:                                              ; preds = %153
  %162 = fpext float %160 to double
  %163 = fmul double %162, 0x3EF0001000100010
  %164 = fptrunc double %163 to float
  %165 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 6
  %166 = load float, ptr %165, align 4, !tbaa !62
  %167 = fpext float %166 to double
  %168 = fmul double %167, 0x3EF0001000100010
  %169 = fptrunc double %168 to float
  %170 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 7
  %171 = load float, ptr %170, align 8, !tbaa !63
  %172 = fpext float %171 to double
  %173 = fmul double %172, 0x3EF0001000100010
  %174 = fptrunc double %173 to float
  br label %183

175:                                              ; preds = %153
  %176 = call float @DecodePixelGamma(float noundef %160) #13
  %177 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 6
  %178 = load float, ptr %177, align 4, !tbaa !62
  %179 = call float @DecodePixelGamma(float noundef %178) #13
  %180 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 7
  %181 = load float, ptr %180, align 8, !tbaa !63
  %182 = call float @DecodePixelGamma(float noundef %181) #13
  br label %183

183:                                              ; preds = %175, %161
  %184 = phi float [ %174, %161 ], [ %182, %175 ]
  %185 = phi float [ %169, %161 ], [ %179, %175 ]
  %186 = phi float [ %164, %161 ], [ %176, %175 ]
  %187 = call float @llvm.fabs.f32(float %186)
  %188 = fpext float %187 to double
  %189 = fcmp olt double %188, 1.000000e-15
  br i1 %189, label %190, label %198

190:                                              ; preds = %183
  %191 = call float @llvm.fabs.f32(float %185)
  %192 = fpext float %191 to double
  %193 = fcmp olt double %192, 1.000000e-15
  br i1 %193, label %194, label %198

194:                                              ; preds = %190
  %195 = call float @llvm.fabs.f32(float %184)
  %196 = fpext float %195 to double
  %197 = fcmp olt double %196, 1.000000e-15
  br i1 %197, label %227, label %198

198:                                              ; preds = %194, %190, %183
  %199 = fsub float 1.000000e+00, %186
  %200 = fsub float 1.000000e+00, %185
  %201 = fsub float 1.000000e+00, %184
  %202 = fcmp olt float %200, %199
  %203 = select i1 %202, float %200, float %199
  %204 = fcmp olt float %201, %203
  %205 = select i1 %204, float %201, float %203
  %206 = fsub float %199, %205
  %207 = fpext float %206 to double
  %208 = fpext float %205 to double
  %209 = fsub double 1.000000e+00, %208
  %210 = fdiv double %207, %209
  %211 = fptrunc double %210 to float
  %212 = fsub float %200, %205
  %213 = fpext float %212 to double
  %214 = fdiv double %213, %209
  %215 = fptrunc double %214 to float
  %216 = fsub float %201, %205
  %217 = fpext float %216 to double
  %218 = fdiv double %217, %209
  %219 = fptrunc double %218 to float
  store i32 12, ptr %156, align 4, !tbaa !58
  %220 = fmul float %211, 6.553500e+04
  %221 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 5
  store float %220, ptr %221, align 8, !tbaa !61
  %222 = fmul float %215, 6.553500e+04
  %223 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 6
  store float %222, ptr %223, align 4, !tbaa !62
  %224 = fmul float %219, 6.553500e+04
  %225 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 7
  store float %224, ptr %225, align 8, !tbaa !63
  %226 = fmul float %205, 6.553500e+04
  br label %227

227:                                              ; preds = %194, %198
  %228 = phi float [ %226, %198 ], [ 6.553500e+04, %194 ]
  %229 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 9
  store float %228, ptr %229, align 8, !tbaa !64
  br label %230

230:                                              ; preds = %227, %77
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %9) #12
  %231 = call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %5) #12
  %232 = call ptr @AcquireVirtualCacheView(ptr noundef %1, ptr noundef %5) #12
  %233 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %53, ptr noundef %5) #12
  %234 = load i64, ptr %51, align 8, !tbaa !55
  %235 = icmp sgt i64 %234, 0
  br i1 %235, label %236, label %526

236:                                              ; preds = %230
  %237 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 7
  %238 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 5
  %239 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 6
  %240 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 7
  %241 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 8
  %242 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %243 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 9
  %244 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 5
  %245 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 6
  %246 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 7
  %247 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 8
  %248 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %249 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 9
  %250 = icmp eq i32 %2, 47
  %251 = and i32 %2, 1
  %252 = icmp ne i32 %251, 0
  %253 = and i32 %2, 2
  %254 = icmp ne i32 %253, 0
  %255 = and i32 %2, 4
  %256 = icmp ne i32 %255, 0
  %257 = and i32 %2, 8
  %258 = icmp eq i32 %257, 0
  %259 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %260 = and i32 %2, 32
  %261 = icmp ne i32 %260, 0
  %262 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 5
  %263 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 6
  %264 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 7
  %265 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 8
  %266 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 9
  %267 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 5
  %268 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 6
  %269 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 7
  %270 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 8
  %271 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 9
  br label %272

272:                                              ; preds = %236, %510
  %273 = phi i64 [ 0, %236 ], [ %512, %510 ]
  %274 = phi i32 [ 1, %236 ], [ %511, %510 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #12
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %11) #12
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %510, label %276

276:                                              ; preds = %272
  %277 = load i64, ptr %49, align 8, !tbaa !54
  %278 = call ptr @GetCacheViewVirtualPixels(ptr noundef %231, i64 noundef 0, i64 noundef %273, i64 noundef %277, i64 noundef 1, ptr noundef %5) #13
  %279 = load i64, ptr %49, align 8, !tbaa !54
  %280 = call ptr @GetCacheViewVirtualPixels(ptr noundef %232, i64 noundef 0, i64 noundef %273, i64 noundef %279, i64 noundef 1, ptr noundef %5) #13
  %281 = load i64, ptr %237, align 8, !tbaa !54
  %282 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %233, i64 noundef 0, i64 noundef %273, i64 noundef %281, i64 noundef 1, ptr noundef %5) #13
  %283 = icmp eq ptr %278, null
  %284 = icmp eq ptr %280, null
  %285 = select i1 %283, i1 true, i1 %284
  %286 = icmp eq ptr %282, null
  %287 = select i1 %285, i1 true, i1 %286
  br i1 %287, label %510, label %288

288:                                              ; preds = %276
  %289 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %231) #12
  %290 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %232) #12
  %291 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %233) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull align 8 dereferenceable(56) %9, i64 56, i1 false), !tbaa.struct !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %11, ptr noundef nonnull align 8 dereferenceable(56) %9, i64 56, i1 false), !tbaa.struct !65
  %292 = load i64, ptr %49, align 8, !tbaa !54
  %293 = icmp sgt i64 %292, 0
  br i1 %293, label %294, label %506

294:                                              ; preds = %288
  %295 = icmp ne ptr %289, null
  %296 = icmp ne ptr %290, null
  %297 = icmp eq ptr %289, null
  %298 = icmp eq ptr %290, null
  %299 = icmp ne ptr %291, null
  %300 = icmp eq ptr %291, null
  %301 = icmp ne ptr %291, null
  %302 = icmp eq ptr %291, null
  br label %303

303:                                              ; preds = %294, %499
  %304 = phi i64 [ 0, %294 ], [ %503, %499 ]
  %305 = phi ptr [ %282, %294 ], [ %502, %499 ]
  %306 = phi ptr [ %280, %294 ], [ %501, %499 ]
  %307 = phi ptr [ %278, %294 ], [ %500, %499 ]
  %308 = getelementptr inbounds i16, ptr %289, i64 %304
  %309 = getelementptr inbounds %struct._PixelPacket, ptr %307, i64 0, i32 2
  %310 = load i16, ptr %309, align 2, !tbaa !69
  %311 = uitofp i16 %310 to float
  store float %311, ptr %238, align 8, !tbaa !61
  %312 = getelementptr inbounds %struct._PixelPacket, ptr %307, i64 0, i32 1
  %313 = load i16, ptr %312, align 2, !tbaa !70
  %314 = uitofp i16 %313 to float
  store float %314, ptr %239, align 4, !tbaa !62
  %315 = load i16, ptr %307, align 2, !tbaa !71
  %316 = uitofp i16 %315 to float
  store float %316, ptr %240, align 8, !tbaa !63
  %317 = getelementptr inbounds %struct._PixelPacket, ptr %307, i64 0, i32 3
  %318 = load i16, ptr %317, align 2, !tbaa !72
  %319 = uitofp i16 %318 to float
  store float %319, ptr %241, align 4, !tbaa !73
  %320 = load i32, ptr %242, align 4, !tbaa !57
  %321 = icmp eq i32 %320, 12
  %322 = and i1 %295, %321
  br i1 %322, label %323, label %326

323:                                              ; preds = %303
  %324 = load i16, ptr %308, align 2, !tbaa !74
  %325 = uitofp i16 %324 to float
  store float %325, ptr %243, align 8, !tbaa !64
  br label %326

326:                                              ; preds = %303, %323
  %327 = getelementptr inbounds i16, ptr %290, i64 %304
  %328 = getelementptr inbounds %struct._PixelPacket, ptr %306, i64 0, i32 2
  %329 = load i16, ptr %328, align 2, !tbaa !69
  %330 = uitofp i16 %329 to float
  store float %330, ptr %244, align 8, !tbaa !61
  %331 = getelementptr inbounds %struct._PixelPacket, ptr %306, i64 0, i32 1
  %332 = load i16, ptr %331, align 2, !tbaa !70
  %333 = uitofp i16 %332 to float
  store float %333, ptr %245, align 4, !tbaa !62
  %334 = load i16, ptr %306, align 2, !tbaa !71
  %335 = uitofp i16 %334 to float
  store float %335, ptr %246, align 8, !tbaa !63
  %336 = getelementptr inbounds %struct._PixelPacket, ptr %306, i64 0, i32 3
  %337 = load i16, ptr %336, align 2, !tbaa !72
  %338 = uitofp i16 %337 to float
  store float %338, ptr %247, align 4, !tbaa !73
  %339 = load i32, ptr %248, align 4, !tbaa !57
  %340 = icmp eq i32 %339, 12
  %341 = and i1 %296, %340
  br i1 %341, label %342, label %345

342:                                              ; preds = %326
  %343 = load i16, ptr %327, align 2, !tbaa !74
  %344 = uitofp i16 %343 to float
  store float %344, ptr %249, align 8, !tbaa !64
  br label %345

345:                                              ; preds = %326, %342
  br i1 %250, label %346, label %350

346:                                              ; preds = %345
  %347 = call i32 @IsMagickColorSimilar(ptr noundef nonnull %10, ptr noundef nonnull %11) #12
  %348 = icmp eq i32 %347, 0
  %349 = zext i1 %348 to i32
  br label %383

350:                                              ; preds = %345
  %351 = icmp ne i16 %310, %329
  %352 = select i1 %252, i1 %351, i1 false
  %353 = icmp ne i16 %313, %332
  %354 = select i1 %254, i1 %353, i1 false
  %355 = icmp ne i16 %315, %334
  %356 = select i1 %256, i1 %355, i1 false
  %357 = select i1 %356, i1 true, i1 %354
  %358 = select i1 %357, i1 true, i1 %352
  %359 = zext i1 %358 to i32
  br i1 %258, label %366, label %360

360:                                              ; preds = %350
  %361 = load i32, ptr %259, align 8, !tbaa !75
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %366, label %363

363:                                              ; preds = %360
  %364 = icmp eq i16 %318, %337
  %365 = select i1 %364, i32 %359, i32 1
  br label %366

366:                                              ; preds = %363, %360, %350
  %367 = phi i32 [ %359, %360 ], [ %359, %350 ], [ %365, %363 ]
  %368 = and i1 %261, %340
  %369 = and i1 %321, %368
  br i1 %369, label %370, label %383

370:                                              ; preds = %366
  br i1 %297, label %374, label %371

371:                                              ; preds = %370
  %372 = load i16, ptr %308, align 2, !tbaa !74
  %373 = zext i16 %372 to i32
  br label %374

374:                                              ; preds = %370, %371
  %375 = phi i32 [ %373, %371 ], [ 0, %370 ]
  br i1 %298, label %379, label %376

376:                                              ; preds = %374
  %377 = load i16, ptr %327, align 2, !tbaa !74
  %378 = zext i16 %377 to i32
  br label %379

379:                                              ; preds = %374, %376
  %380 = phi i32 [ %378, %376 ], [ 0, %374 ]
  %381 = icmp eq i32 %375, %380
  %382 = select i1 %381, i32 %367, i32 1
  br label %383

383:                                              ; preds = %366, %379, %346
  %384 = phi i32 [ %367, %366 ], [ %349, %346 ], [ %382, %379 ]
  %385 = icmp eq i32 %384, 0
  %386 = getelementptr inbounds i16, ptr %291, i64 %304
  br i1 %385, label %442, label %387

387:                                              ; preds = %383
  %388 = load float, ptr %262, align 8, !tbaa !61
  %389 = fcmp ugt float %388, 0.000000e+00
  br i1 %389, label %390, label %395

390:                                              ; preds = %387
  %391 = fcmp ult float %388, 6.553500e+04
  br i1 %391, label %392, label %395

392:                                              ; preds = %390
  %393 = fadd float %388, 5.000000e-01
  %394 = fptoui float %393 to i16
  br label %395

395:                                              ; preds = %392, %390, %387
  %396 = phi i16 [ %394, %392 ], [ 0, %387 ], [ -1, %390 ]
  %397 = getelementptr inbounds %struct._PixelPacket, ptr %305, i64 0, i32 2
  store i16 %396, ptr %397, align 2, !tbaa !69
  %398 = load float, ptr %263, align 4, !tbaa !62
  %399 = fcmp ugt float %398, 0.000000e+00
  br i1 %399, label %400, label %405

400:                                              ; preds = %395
  %401 = fcmp ult float %398, 6.553500e+04
  br i1 %401, label %402, label %405

402:                                              ; preds = %400
  %403 = fadd float %398, 5.000000e-01
  %404 = fptoui float %403 to i16
  br label %405

405:                                              ; preds = %402, %400, %395
  %406 = phi i16 [ %404, %402 ], [ 0, %395 ], [ -1, %400 ]
  %407 = getelementptr inbounds %struct._PixelPacket, ptr %305, i64 0, i32 1
  store i16 %406, ptr %407, align 2, !tbaa !70
  %408 = load float, ptr %264, align 8, !tbaa !63
  %409 = fcmp ugt float %408, 0.000000e+00
  br i1 %409, label %410, label %415

410:                                              ; preds = %405
  %411 = fcmp ult float %408, 6.553500e+04
  br i1 %411, label %412, label %415

412:                                              ; preds = %410
  %413 = fadd float %408, 5.000000e-01
  %414 = fptoui float %413 to i16
  br label %415

415:                                              ; preds = %412, %410, %405
  %416 = phi i16 [ %414, %412 ], [ 0, %405 ], [ -1, %410 ]
  store i16 %416, ptr %305, align 2, !tbaa !71
  %417 = load float, ptr %265, align 4, !tbaa !73
  %418 = fcmp ugt float %417, 0.000000e+00
  br i1 %418, label %419, label %424

419:                                              ; preds = %415
  %420 = fcmp ult float %417, 6.553500e+04
  br i1 %420, label %421, label %424

421:                                              ; preds = %419
  %422 = fadd float %417, 5.000000e-01
  %423 = fptoui float %422 to i16
  br label %424

424:                                              ; preds = %421, %419, %415
  %425 = phi i16 [ %423, %421 ], [ 0, %415 ], [ -1, %419 ]
  %426 = getelementptr inbounds %struct._PixelPacket, ptr %305, i64 0, i32 3
  store i16 %425, ptr %426, align 2, !tbaa !72
  %427 = load i32, ptr %78, align 4, !tbaa !57
  %428 = icmp eq i32 %427, 12
  br i1 %428, label %433, label %429

429:                                              ; preds = %424
  %430 = load i32, ptr %53, align 8, !tbaa !76
  %431 = icmp eq i32 %430, 2
  %432 = and i1 %299, %431
  br i1 %432, label %434, label %499

433:                                              ; preds = %424
  br i1 %300, label %499, label %434

434:                                              ; preds = %433, %429
  %435 = load float, ptr %266, align 8, !tbaa !64
  %436 = fcmp ugt float %435, 0.000000e+00
  br i1 %436, label %437, label %497

437:                                              ; preds = %434
  %438 = fcmp ult float %435, 6.553500e+04
  br i1 %438, label %439, label %497

439:                                              ; preds = %437
  %440 = fadd float %435, 5.000000e-01
  %441 = fptoui float %440 to i16
  br label %497

442:                                              ; preds = %383
  %443 = load float, ptr %267, align 8, !tbaa !61
  %444 = fcmp ugt float %443, 0.000000e+00
  br i1 %444, label %445, label %450

445:                                              ; preds = %442
  %446 = fcmp ult float %443, 6.553500e+04
  br i1 %446, label %447, label %450

447:                                              ; preds = %445
  %448 = fadd float %443, 5.000000e-01
  %449 = fptoui float %448 to i16
  br label %450

450:                                              ; preds = %447, %445, %442
  %451 = phi i16 [ %449, %447 ], [ 0, %442 ], [ -1, %445 ]
  %452 = getelementptr inbounds %struct._PixelPacket, ptr %305, i64 0, i32 2
  store i16 %451, ptr %452, align 2, !tbaa !69
  %453 = load float, ptr %268, align 4, !tbaa !62
  %454 = fcmp ugt float %453, 0.000000e+00
  br i1 %454, label %455, label %460

455:                                              ; preds = %450
  %456 = fcmp ult float %453, 6.553500e+04
  br i1 %456, label %457, label %460

457:                                              ; preds = %455
  %458 = fadd float %453, 5.000000e-01
  %459 = fptoui float %458 to i16
  br label %460

460:                                              ; preds = %457, %455, %450
  %461 = phi i16 [ %459, %457 ], [ 0, %450 ], [ -1, %455 ]
  %462 = getelementptr inbounds %struct._PixelPacket, ptr %305, i64 0, i32 1
  store i16 %461, ptr %462, align 2, !tbaa !70
  %463 = load float, ptr %269, align 8, !tbaa !63
  %464 = fcmp ugt float %463, 0.000000e+00
  br i1 %464, label %465, label %470

465:                                              ; preds = %460
  %466 = fcmp ult float %463, 6.553500e+04
  br i1 %466, label %467, label %470

467:                                              ; preds = %465
  %468 = fadd float %463, 5.000000e-01
  %469 = fptoui float %468 to i16
  br label %470

470:                                              ; preds = %467, %465, %460
  %471 = phi i16 [ %469, %467 ], [ 0, %460 ], [ -1, %465 ]
  store i16 %471, ptr %305, align 2, !tbaa !71
  %472 = load float, ptr %270, align 4, !tbaa !73
  %473 = fcmp ugt float %472, 0.000000e+00
  br i1 %473, label %474, label %479

474:                                              ; preds = %470
  %475 = fcmp ult float %472, 6.553500e+04
  br i1 %475, label %476, label %479

476:                                              ; preds = %474
  %477 = fadd float %472, 5.000000e-01
  %478 = fptoui float %477 to i16
  br label %479

479:                                              ; preds = %476, %474, %470
  %480 = phi i16 [ %478, %476 ], [ 0, %470 ], [ -1, %474 ]
  %481 = getelementptr inbounds %struct._PixelPacket, ptr %305, i64 0, i32 3
  store i16 %480, ptr %481, align 2, !tbaa !72
  %482 = load i32, ptr %78, align 4, !tbaa !57
  %483 = icmp eq i32 %482, 12
  br i1 %483, label %488, label %484

484:                                              ; preds = %479
  %485 = load i32, ptr %53, align 8, !tbaa !76
  %486 = icmp eq i32 %485, 2
  %487 = and i1 %301, %486
  br i1 %487, label %489, label %499

488:                                              ; preds = %479
  br i1 %302, label %499, label %489

489:                                              ; preds = %488, %484
  %490 = load float, ptr %271, align 8, !tbaa !64
  %491 = fcmp ugt float %490, 0.000000e+00
  br i1 %491, label %492, label %497

492:                                              ; preds = %489
  %493 = fcmp ult float %490, 6.553500e+04
  br i1 %493, label %494, label %497

494:                                              ; preds = %492
  %495 = fadd float %490, 5.000000e-01
  %496 = fptoui float %495 to i16
  br label %497

497:                                              ; preds = %489, %492, %494, %434, %437, %439
  %498 = phi i16 [ %441, %439 ], [ 0, %434 ], [ -1, %437 ], [ %496, %494 ], [ 0, %489 ], [ -1, %492 ]
  store i16 %498, ptr %386, align 2, !tbaa !74
  br label %499

499:                                              ; preds = %497, %488, %484, %433, %429
  %500 = getelementptr inbounds %struct._PixelPacket, ptr %307, i64 1
  %501 = getelementptr inbounds %struct._PixelPacket, ptr %306, i64 1
  %502 = getelementptr inbounds %struct._PixelPacket, ptr %305, i64 1
  %503 = add nuw nsw i64 %304, 1
  %504 = load i64, ptr %49, align 8, !tbaa !54
  %505 = icmp slt i64 %503, %504
  br i1 %505, label %303, label %506, !llvm.loop !77

506:                                              ; preds = %499, %288
  %507 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %233, ptr noundef %5) #13
  %508 = icmp ne i32 %507, 0
  %509 = zext i1 %508 to i32
  br label %510

510:                                              ; preds = %276, %272, %506
  %511 = phi i32 [ %509, %506 ], [ 0, %272 ], [ 0, %276 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #12
  %512 = add nuw nsw i64 %273, 1
  %513 = load i64, ptr %51, align 8, !tbaa !55
  %514 = icmp slt i64 %512, %513
  br i1 %514, label %272, label %515, !llvm.loop !80

515:                                              ; preds = %510
  %516 = icmp eq i32 %511, 0
  %517 = call ptr @DestroyCacheView(ptr noundef %233) #12
  %518 = call ptr @DestroyCacheView(ptr noundef %232) #12
  %519 = call ptr @DestroyCacheView(ptr noundef %231) #12
  %520 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 36
  %521 = load i32, ptr %520, align 8, !tbaa !81
  %522 = call i32 @CompositeImage(ptr noundef nonnull %45, i32 noundef %521, ptr noundef nonnull %53, i64 noundef 0, i64 noundef 0) #12
  %523 = call ptr @DestroyImage(ptr noundef nonnull %53) #12
  br i1 %516, label %524, label %534

524:                                              ; preds = %515
  %525 = call ptr @DestroyImage(ptr noundef nonnull %45) #12
  br label %534

526:                                              ; preds = %230
  %527 = call ptr @DestroyCacheView(ptr noundef %233) #12
  %528 = call ptr @DestroyCacheView(ptr noundef %232) #12
  %529 = call ptr @DestroyCacheView(ptr noundef %231) #12
  %530 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 36
  %531 = load i32, ptr %530, align 8, !tbaa !81
  %532 = call i32 @CompositeImage(ptr noundef nonnull %45, i32 noundef %531, ptr noundef nonnull %53, i64 noundef 0, i64 noundef 0) #12
  %533 = call ptr @DestroyImage(ptr noundef nonnull %53) #12
  br label %534

534:                                              ; preds = %526, %515, %524, %44, %41, %60, %55, %38
  %535 = phi ptr [ null, %38 ], [ null, %55 ], [ null, %60 ], [ null, %41 ], [ null, %44 ], [ %525, %524 ], [ %45, %515 ], [ %45, %526 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #12
  ret ptr %535
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @GetImageChannelDistortion(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct._ExceptionInfo, align 8
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %9 = load i32, ptr %8, align 8, !tbaa !34
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1466, ptr noundef nonnull @.str.2, ptr noundef nonnull %12) #12
  br label %14

14:                                               ; preds = %11, %6
  store double 0.000000e+00, ptr %4, align 8, !tbaa !53
  %15 = load i32, ptr %8, align 8, !tbaa !34
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %19 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1472, ptr noundef nonnull @.str.2, ptr noundef nonnull %18) #12
  br label %20

20:                                               ; preds = %17, %14
  %21 = icmp eq i32 %3, 255
  br i1 %21, label %40, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  %24 = load i64, ptr %23, align 8, !tbaa !54
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %26 = load i64, ptr %25, align 8, !tbaa !54
  %27 = icmp eq i64 %24, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 8
  %30 = load i64, ptr %29, align 8, !tbaa !55
  %31 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %32 = load i64, ptr %31, align 8, !tbaa !55
  %33 = icmp eq i64 %30, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %28, %22
  %35 = icmp eq ptr %0, null
  br i1 %35, label %126, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %38 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %39 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %37, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1476, i32 noundef 465, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %38) #12
  br label %126

40:                                               ; preds = %28, %20
  %41 = tail call dereferenceable_or_null(384) ptr @AcquireQuantumMemory(i64 noundef 48, i64 noundef 8) #14
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #12
  call void @GetExceptionInfo(ptr noundef nonnull %7) #12
  %44 = tail call ptr @__errno_location() #15
  %45 = load i32, ptr %44, align 4, !tbaa !66
  %46 = call ptr @GetExceptionMessage(i32 noundef %45) #12
  %47 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %7, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1484, i32 noundef 700, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.4, ptr noundef %46) #12
  %48 = call ptr @DestroyString(ptr noundef %46) #12
  call void @CatchException(ptr noundef nonnull %7) #12
  %49 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %7) #12
  call void @MagickCoreTerminus() #12
  call void @_exit(i32 noundef 1) #16
  unreachable

50:                                               ; preds = %40
  %51 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %41, i32 noundef 0, i64 noundef 384) #12
  switch i32 %3, label %62 [
    i32 1, label %52
    i32 9, label %54
    i32 2, label %56
    i32 3, label %58
    i32 4, label %60
    i32 7, label %70
    i32 5, label %64
    i32 6, label %66
    i32 255, label %68
  ]

52:                                               ; preds = %50
  %53 = tail call fastcc i32 @GetAbsoluteDistortion(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %41, ptr noundef %5), !range !56
  br label %118

54:                                               ; preds = %50
  %55 = tail call fastcc i32 @GetFuzzDistortion(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %41, ptr noundef %5), !range !56
  br label %118

56:                                               ; preds = %50
  %57 = tail call fastcc i32 @GetMeanAbsoluteDistortion(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %41, ptr noundef %5), !range !56
  br label %118

58:                                               ; preds = %50
  %59 = tail call fastcc i32 @GetMeanErrorPerPixel(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %41, ptr noundef %5), !range !56
  br label %118

60:                                               ; preds = %50
  %61 = tail call fastcc i32 @GetMeanSquaredDistortion(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %41, ptr noundef %5), !range !56
  br label %118

62:                                               ; preds = %50
  %63 = tail call fastcc i32 @GetNormalizedCrossCorrelationDistortion(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %41, ptr noundef %5), !range !56
  br label %118

64:                                               ; preds = %50
  %65 = tail call fastcc i32 @GetPeakAbsoluteDistortion(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %41, ptr noundef %5), !range !56
  br label %118

66:                                               ; preds = %50
  %67 = tail call fastcc i32 @GetPeakSignalToNoiseRatio(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %41, ptr noundef %5), !range !56
  br label %118

68:                                               ; preds = %50
  %69 = tail call fastcc i32 @GetPerceptualHashDistortion(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %41, ptr noundef %5), !range !56
  br label %118

70:                                               ; preds = %50
  %71 = tail call fastcc i32 @GetMeanSquaredDistortion(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %41, ptr noundef %5), !range !56
  %72 = and i32 %2, 1
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds double, ptr %41, i64 1
  %76 = load double, ptr %75, align 8, !tbaa !53
  %77 = tail call double @sqrt(double noundef %76) #12
  store double %77, ptr %75, align 8, !tbaa !53
  br label %78

78:                                               ; preds = %74, %70
  %79 = and i32 %2, 2
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %78
  %82 = getelementptr inbounds double, ptr %41, i64 2
  %83 = load double, ptr %82, align 8, !tbaa !53
  %84 = tail call double @sqrt(double noundef %83) #12
  store double %84, ptr %82, align 8, !tbaa !53
  br label %85

85:                                               ; preds = %81, %78
  %86 = and i32 %2, 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %85
  %89 = getelementptr inbounds double, ptr %41, i64 4
  %90 = load double, ptr %89, align 8, !tbaa !53
  %91 = tail call double @sqrt(double noundef %90) #12
  store double %91, ptr %89, align 8, !tbaa !53
  br label %92

92:                                               ; preds = %88, %85
  %93 = and i32 %2, 8
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %103, label %95

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %97 = load i32, ptr %96, align 8, !tbaa !75
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %95
  %100 = getelementptr inbounds double, ptr %41, i64 8
  %101 = load double, ptr %100, align 8, !tbaa !53
  %102 = tail call double @sqrt(double noundef %101) #12
  store double %102, ptr %100, align 8, !tbaa !53
  br label %103

103:                                              ; preds = %99, %95, %92
  %104 = and i32 %2, 32
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %114, label %106

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %108 = load i32, ptr %107, align 4, !tbaa !57
  %109 = icmp eq i32 %108, 12
  br i1 %109, label %110, label %114

110:                                              ; preds = %106
  %111 = getelementptr inbounds double, ptr %41, i64 32
  %112 = load double, ptr %111, align 8, !tbaa !53
  %113 = tail call double @sqrt(double noundef %112) #12
  store double %113, ptr %111, align 8, !tbaa !53
  br label %114

114:                                              ; preds = %103, %106, %110
  %115 = getelementptr inbounds double, ptr %41, i64 47
  %116 = load double, ptr %115, align 8, !tbaa !53
  %117 = tail call double @sqrt(double noundef %116) #12
  store double %117, ptr %115, align 8, !tbaa !53
  br label %118

118:                                              ; preds = %114, %68, %66, %64, %62, %60, %58, %56, %54, %52
  %119 = phi i32 [ %63, %62 ], [ %69, %68 ], [ %67, %66 ], [ %65, %64 ], [ %71, %114 ], [ %61, %60 ], [ %59, %58 ], [ %57, %56 ], [ %55, %54 ], [ %53, %52 ]
  %120 = getelementptr inbounds double, ptr %41, i64 47
  %121 = load double, ptr %120, align 8, !tbaa !53
  store double %121, ptr %4, align 8, !tbaa !53
  %122 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %41) #12
  %123 = tail call i32 @GetMagickPrecision() #12
  %124 = load double, ptr %4, align 8, !tbaa !53
  %125 = tail call i32 (ptr, ptr, ptr, ...) @FormatImageProperty(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef %123, double noundef %124) #12
  br label %126

126:                                              ; preds = %34, %36, %118
  %127 = phi i32 [ %119, %118 ], [ 0, %36 ], [ 0, %34 ]
  ret i32 %127
}

declare ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SetImageAlphaChannel(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @DestroyImage(ptr noundef) local_unnamed_addr #2

declare i32 @SetImageStorageClass(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @InheritException(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @QueryMagickColor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @GetImageArtifact(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: hot
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: hot
declare ptr @QueueCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #2

declare ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare i32 @IsMagickColorSimilar(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: hot
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #2

declare i32 @CompositeImage(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @GetImageDistortion(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call i32 @GetImageChannelDistortion(ptr noundef %0, ptr noundef %1, i32 noundef 47, i32 noundef %2, ptr noundef %3, ptr noundef %4), !range !56
  ret i32 %6
}

; Function Attrs: allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #5

declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #2

declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #6

declare ptr @DestroyString(ptr noundef) local_unnamed_addr #2

declare void @CatchException(ptr noundef) local_unnamed_addr #2

declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #2

declare void @MagickCoreTerminus() local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #7

declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @GetAbsoluteDistortion(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca %struct._MagickPixelPacket, align 8
  %7 = alloca [48 x double], align 16
  %8 = alloca %struct._MagickPixelPacket, align 8
  %9 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #12
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %6) #12
  %10 = call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %4) #12
  %11 = call ptr @AcquireVirtualCacheView(ptr noundef %1, ptr noundef %4) #12
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %13 = load i64, ptr %12, align 8, !tbaa !55
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %162

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %17 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  %18 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 5
  %19 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 6
  %20 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 7
  %21 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 8
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %23 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 9
  %24 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 5
  %25 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 6
  %26 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 7
  %27 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 8
  %28 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %29 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 9
  %30 = and i32 %2, 1
  %31 = icmp eq i32 %30, 0
  %32 = getelementptr inbounds [48 x double], ptr %7, i64 0, i64 1
  %33 = and i32 %2, 2
  %34 = icmp eq i32 %33, 0
  %35 = getelementptr inbounds [48 x double], ptr %7, i64 0, i64 2
  %36 = and i32 %2, 4
  %37 = icmp eq i32 %36, 0
  %38 = getelementptr inbounds [48 x double], ptr %7, i64 0, i64 4
  %39 = and i32 %2, 8
  %40 = icmp eq i32 %39, 0
  %41 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %42 = getelementptr inbounds [48 x double], ptr %7, i64 0, i64 8
  %43 = and i32 %2, 32
  %44 = icmp eq i32 %43, 0
  %45 = getelementptr inbounds [48 x double], ptr %7, i64 0, i64 32
  %46 = getelementptr inbounds [48 x double], ptr %7, i64 0, i64 47
  br label %47

47:                                               ; preds = %15, %157
  %48 = phi i64 [ 0, %15 ], [ %159, %157 ]
  %49 = phi i32 [ 1, %15 ], [ %158, %157 ]
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %9) #12
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %157, label %51

51:                                               ; preds = %47
  %52 = load i64, ptr %16, align 8, !tbaa !54
  %53 = call ptr @GetCacheViewVirtualPixels(ptr noundef %10, i64 noundef 0, i64 noundef %48, i64 noundef %52, i64 noundef 1, ptr noundef %4) #13
  %54 = load i64, ptr %17, align 8, !tbaa !54
  %55 = call ptr @GetCacheViewVirtualPixels(ptr noundef %11, i64 noundef 0, i64 noundef %48, i64 noundef %54, i64 noundef 1, ptr noundef %4) #13
  %56 = icmp eq ptr %53, null
  %57 = icmp eq ptr %55, null
  %58 = select i1 %56, i1 true, i1 %57
  br i1 %58, label %157, label %59

59:                                               ; preds = %51
  %60 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %10) #12
  %61 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %11) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(56) %6, i64 56, i1 false), !tbaa.struct !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef nonnull align 8 dereferenceable(56) %6, i64 56, i1 false)
  %62 = call ptr @ResetMagickMemory(ptr noundef nonnull %7, i32 noundef 0, i64 noundef 384) #12
  %63 = load i64, ptr %16, align 8, !tbaa !54
  %64 = icmp sgt i64 %63, 0
  br i1 %64, label %65, label %147

65:                                               ; preds = %59
  %66 = icmp ne ptr %60, null
  %67 = icmp ne ptr %61, null
  br label %68

68:                                               ; preds = %65, %141
  %69 = phi i64 [ 0, %65 ], [ %144, %141 ]
  %70 = phi ptr [ %55, %65 ], [ %143, %141 ]
  %71 = phi ptr [ %53, %65 ], [ %142, %141 ]
  %72 = getelementptr inbounds %struct._PixelPacket, ptr %71, i64 0, i32 2
  %73 = load i16, ptr %72, align 2, !tbaa !69
  %74 = uitofp i16 %73 to float
  store float %74, ptr %18, align 8, !tbaa !61
  %75 = getelementptr inbounds %struct._PixelPacket, ptr %71, i64 0, i32 1
  %76 = load i16, ptr %75, align 2, !tbaa !70
  %77 = uitofp i16 %76 to float
  store float %77, ptr %19, align 4, !tbaa !62
  %78 = load i16, ptr %71, align 2, !tbaa !71
  %79 = uitofp i16 %78 to float
  store float %79, ptr %20, align 8, !tbaa !63
  %80 = getelementptr inbounds %struct._PixelPacket, ptr %71, i64 0, i32 3
  %81 = load i16, ptr %80, align 2, !tbaa !72
  %82 = uitofp i16 %81 to float
  store float %82, ptr %21, align 4, !tbaa !73
  %83 = load i32, ptr %22, align 4, !tbaa !57
  %84 = icmp eq i32 %83, 12
  %85 = and i1 %66, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %68
  %87 = getelementptr inbounds i16, ptr %60, i64 %69
  %88 = load i16, ptr %87, align 2, !tbaa !74
  %89 = uitofp i16 %88 to float
  store float %89, ptr %23, align 8, !tbaa !64
  br label %90

90:                                               ; preds = %68, %86
  %91 = getelementptr inbounds %struct._PixelPacket, ptr %70, i64 0, i32 2
  %92 = load i16, ptr %91, align 2, !tbaa !69
  %93 = uitofp i16 %92 to float
  store float %93, ptr %24, align 8, !tbaa !61
  %94 = getelementptr inbounds %struct._PixelPacket, ptr %70, i64 0, i32 1
  %95 = load i16, ptr %94, align 2, !tbaa !70
  %96 = uitofp i16 %95 to float
  store float %96, ptr %25, align 4, !tbaa !62
  %97 = load i16, ptr %70, align 2, !tbaa !71
  %98 = uitofp i16 %97 to float
  store float %98, ptr %26, align 8, !tbaa !63
  %99 = getelementptr inbounds %struct._PixelPacket, ptr %70, i64 0, i32 3
  %100 = load i16, ptr %99, align 2, !tbaa !72
  %101 = uitofp i16 %100 to float
  store float %101, ptr %27, align 4, !tbaa !73
  %102 = load i32, ptr %28, align 4, !tbaa !57
  %103 = icmp eq i32 %102, 12
  %104 = and i1 %67, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %90
  %106 = getelementptr inbounds i16, ptr %61, i64 %69
  %107 = load i16, ptr %106, align 2, !tbaa !74
  %108 = uitofp i16 %107 to float
  store float %108, ptr %29, align 8, !tbaa !64
  br label %109

109:                                              ; preds = %90, %105
  %110 = call i32 @IsMagickColorSimilar(ptr noundef nonnull %8, ptr noundef nonnull %9) #12
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %141

112:                                              ; preds = %109
  br i1 %31, label %116, label %113

113:                                              ; preds = %112
  %114 = load double, ptr %32, align 8, !tbaa !53
  %115 = fadd double %114, 1.000000e+00
  store double %115, ptr %32, align 8, !tbaa !53
  br label %116

116:                                              ; preds = %113, %112
  br i1 %34, label %120, label %117

117:                                              ; preds = %116
  %118 = load double, ptr %35, align 16, !tbaa !53
  %119 = fadd double %118, 1.000000e+00
  store double %119, ptr %35, align 16, !tbaa !53
  br label %120

120:                                              ; preds = %117, %116
  br i1 %37, label %124, label %121

121:                                              ; preds = %120
  %122 = load double, ptr %38, align 16, !tbaa !53
  %123 = fadd double %122, 1.000000e+00
  store double %123, ptr %38, align 16, !tbaa !53
  br label %124

124:                                              ; preds = %121, %120
  br i1 %40, label %131, label %125

125:                                              ; preds = %124
  %126 = load i32, ptr %41, align 8, !tbaa !75
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %125
  %129 = load double, ptr %42, align 16, !tbaa !53
  %130 = fadd double %129, 1.000000e+00
  store double %130, ptr %42, align 16, !tbaa !53
  br label %131

131:                                              ; preds = %128, %125, %124
  br i1 %44, label %138, label %132

132:                                              ; preds = %131
  %133 = load i32, ptr %22, align 4, !tbaa !57
  %134 = icmp eq i32 %133, 12
  br i1 %134, label %135, label %138

135:                                              ; preds = %132
  %136 = load double, ptr %45, align 16, !tbaa !53
  %137 = fadd double %136, 1.000000e+00
  store double %137, ptr %45, align 16, !tbaa !53
  br label %138

138:                                              ; preds = %135, %132, %131
  %139 = load double, ptr %46, align 8, !tbaa !53
  %140 = fadd double %139, 1.000000e+00
  store double %140, ptr %46, align 8, !tbaa !53
  br label %141

141:                                              ; preds = %138, %109
  %142 = getelementptr inbounds %struct._PixelPacket, ptr %71, i64 1
  %143 = getelementptr inbounds %struct._PixelPacket, ptr %70, i64 1
  %144 = add nuw nsw i64 %69, 1
  %145 = load i64, ptr %16, align 8, !tbaa !54
  %146 = icmp slt i64 %144, %145
  br i1 %146, label %68, label %147, !llvm.loop !82

147:                                              ; preds = %141, %59
  br label %148

148:                                              ; preds = %147, %148
  %149 = phi i64 [ %155, %148 ], [ 0, %147 ]
  %150 = getelementptr inbounds [48 x double], ptr %7, i64 0, i64 %149
  %151 = load double, ptr %150, align 8, !tbaa !53
  %152 = getelementptr inbounds double, ptr %3, i64 %149
  %153 = load double, ptr %152, align 8, !tbaa !53
  %154 = fadd double %151, %153
  store double %154, ptr %152, align 8, !tbaa !53
  %155 = add nuw nsw i64 %149, 1
  %156 = icmp eq i64 %155, 48
  br i1 %156, label %157, label %148, !llvm.loop !83

157:                                              ; preds = %148, %51, %47
  %158 = phi i32 [ 0, %47 ], [ 0, %51 ], [ 1, %148 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %7) #12
  %159 = add nuw nsw i64 %48, 1
  %160 = load i64, ptr %12, align 8, !tbaa !55
  %161 = icmp slt i64 %159, %160
  br i1 %161, label %47, label %162, !llvm.loop !84

162:                                              ; preds = %157, %5
  %163 = phi i32 [ 1, %5 ], [ %158, %157 ]
  %164 = call ptr @DestroyCacheView(ptr noundef %11) #12
  %165 = call ptr @DestroyCacheView(ptr noundef %10) #12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #12
  ret i32 %163
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @GetFuzzDistortion(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca [48 x double], align 16
  %7 = tail call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %4) #12
  %8 = tail call ptr @AcquireVirtualCacheView(ptr noundef %1, ptr noundef %4) #12
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %10 = load i64, ptr %9, align 8, !tbaa !55
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %238

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %14 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %16 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 6
  %17 = and i32 %2, 1
  %18 = icmp eq i32 %17, 0
  %19 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 1
  %20 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 47
  %21 = and i32 %2, 2
  %22 = icmp eq i32 %21, 0
  %23 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 2
  %24 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 47
  %25 = and i32 %2, 4
  %26 = icmp eq i32 %25, 0
  %27 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 4
  %28 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 47
  %29 = and i32 %2, 8
  %30 = icmp eq i32 %29, 0
  %31 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 8
  %32 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 47
  %33 = and i32 %2, 32
  %34 = icmp eq i32 %33, 0
  %35 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %36 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %37 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 32
  %38 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 47
  br label %39

39:                                               ; preds = %12, %233
  %40 = phi i32 [ 1, %12 ], [ %234, %233 ]
  %41 = phi i64 [ 0, %12 ], [ %235, %233 ]
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %6) #12
  %42 = icmp eq i32 %40, 0
  br i1 %42, label %233, label %43

43:                                               ; preds = %39
  %44 = load i64, ptr %13, align 8, !tbaa !54
  %45 = call ptr @GetCacheViewVirtualPixels(ptr noundef %7, i64 noundef 0, i64 noundef %41, i64 noundef %44, i64 noundef 1, ptr noundef %4) #13
  %46 = load i64, ptr %14, align 8, !tbaa !54
  %47 = call ptr @GetCacheViewVirtualPixels(ptr noundef %8, i64 noundef 0, i64 noundef %41, i64 noundef %46, i64 noundef 1, ptr noundef %4) #13
  %48 = icmp eq ptr %45, null
  %49 = icmp eq ptr %47, null
  %50 = select i1 %48, i1 true, i1 %49
  br i1 %50, label %233, label %51

51:                                               ; preds = %43
  %52 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %7) #12
  %53 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %8) #12
  %54 = call ptr @ResetMagickMemory(ptr noundef nonnull %6, i32 noundef 0, i64 noundef 384) #12
  %55 = load i64, ptr %13, align 8, !tbaa !54
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %57, label %223

57:                                               ; preds = %51
  %58 = load i32, ptr %15, align 8, !tbaa !75
  %59 = icmp eq i32 %58, 0
  %60 = load i32, ptr %16, align 8, !tbaa !75
  %61 = icmp eq i32 %60, 0
  %62 = or i32 %60, %58
  %63 = icmp eq i32 %62, 0
  %64 = or i1 %30, %63
  %65 = icmp eq ptr %52, null
  %66 = icmp eq ptr %53, null
  %67 = load double, ptr %19, align 8, !tbaa !53
  %68 = load double, ptr %20, align 8, !tbaa !53
  %69 = load double, ptr %23, align 16, !tbaa !53
  %70 = load double, ptr %27, align 16, !tbaa !53
  %71 = load double, ptr %31, align 16, !tbaa !53
  %72 = load double, ptr %37, align 16, !tbaa !53
  br label %73

73:                                               ; preds = %57, %216
  %74 = phi double [ %72, %57 ], [ %217, %216 ]
  %75 = phi double [ %71, %57 ], [ %183, %216 ]
  %76 = phi double [ %70, %57 ], [ %159, %216 ]
  %77 = phi double [ %69, %57 ], [ %141, %216 ]
  %78 = phi double [ %68, %57 ], [ %218, %216 ]
  %79 = phi double [ %67, %57 ], [ %122, %216 ]
  %80 = phi i64 [ 0, %57 ], [ %221, %216 ]
  %81 = phi ptr [ %47, %57 ], [ %220, %216 ]
  %82 = phi ptr [ %45, %57 ], [ %219, %216 ]
  br i1 %59, label %88, label %83

83:                                               ; preds = %73
  %84 = getelementptr inbounds %struct._PixelPacket, ptr %82, i64 0, i32 3
  %85 = load i16, ptr %84, align 2, !tbaa !72
  %86 = xor i16 %85, -1
  %87 = zext i16 %86 to i32
  br label %88

88:                                               ; preds = %73, %83
  %89 = phi i32 [ %87, %83 ], [ 65535, %73 ]
  %90 = sitofp i32 %89 to double
  %91 = fmul double %90, 0x3EF0001000100010
  %92 = fptrunc double %91 to float
  br i1 %61, label %98, label %93

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct._PixelPacket, ptr %81, i64 0, i32 3
  %95 = load i16, ptr %94, align 2, !tbaa !72
  %96 = xor i16 %95, -1
  %97 = zext i16 %96 to i32
  br label %98

98:                                               ; preds = %88, %93
  %99 = phi i32 [ %97, %93 ], [ 65535, %88 ]
  %100 = sitofp i32 %99 to double
  %101 = fmul double %100, 0x3EF0001000100010
  %102 = fptrunc double %101 to float
  br i1 %18, label %120, label %103

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct._PixelPacket, ptr %82, i64 0, i32 2
  %105 = load i16, ptr %104, align 2, !tbaa !69
  %106 = uitofp i16 %105 to float
  %107 = getelementptr inbounds %struct._PixelPacket, ptr %81, i64 0, i32 2
  %108 = load i16, ptr %107, align 2, !tbaa !69
  %109 = uitofp i16 %108 to float
  %110 = fneg float %102
  %111 = fmul float %110, %109
  %112 = call float @llvm.fmuladd.f32(float %92, float %106, float %111)
  %113 = fpext float %112 to double
  %114 = fmul double %113, 0x3EF0001000100010
  %115 = fptrunc double %114 to float
  %116 = fmul float %115, %115
  %117 = fpext float %116 to double
  %118 = fadd double %79, %117
  store double %118, ptr %19, align 8, !tbaa !53
  %119 = fadd double %78, %117
  store double %119, ptr %20, align 8, !tbaa !53
  br label %120

120:                                              ; preds = %103, %98
  %121 = phi double [ %119, %103 ], [ %78, %98 ]
  %122 = phi double [ %118, %103 ], [ %79, %98 ]
  br i1 %22, label %140, label %123

123:                                              ; preds = %120
  %124 = getelementptr inbounds %struct._PixelPacket, ptr %82, i64 0, i32 1
  %125 = load i16, ptr %124, align 2, !tbaa !70
  %126 = uitofp i16 %125 to float
  %127 = getelementptr inbounds %struct._PixelPacket, ptr %81, i64 0, i32 1
  %128 = load i16, ptr %127, align 2, !tbaa !70
  %129 = uitofp i16 %128 to float
  %130 = fneg float %102
  %131 = fmul float %130, %129
  %132 = call float @llvm.fmuladd.f32(float %92, float %126, float %131)
  %133 = fpext float %132 to double
  %134 = fmul double %133, 0x3EF0001000100010
  %135 = fptrunc double %134 to float
  %136 = fmul float %135, %135
  %137 = fpext float %136 to double
  %138 = fadd double %77, %137
  store double %138, ptr %23, align 16, !tbaa !53
  %139 = fadd double %121, %137
  store double %139, ptr %24, align 8, !tbaa !53
  br label %140

140:                                              ; preds = %123, %120
  %141 = phi double [ %138, %123 ], [ %77, %120 ]
  %142 = phi double [ %139, %123 ], [ %121, %120 ]
  br i1 %26, label %158, label %143

143:                                              ; preds = %140
  %144 = load i16, ptr %82, align 2, !tbaa !71
  %145 = uitofp i16 %144 to float
  %146 = load i16, ptr %81, align 2, !tbaa !71
  %147 = uitofp i16 %146 to float
  %148 = fneg float %102
  %149 = fmul float %148, %147
  %150 = call float @llvm.fmuladd.f32(float %92, float %145, float %149)
  %151 = fpext float %150 to double
  %152 = fmul double %151, 0x3EF0001000100010
  %153 = fptrunc double %152 to float
  %154 = fmul float %153, %153
  %155 = fpext float %154 to double
  %156 = fadd double %76, %155
  store double %156, ptr %27, align 16, !tbaa !53
  %157 = fadd double %142, %155
  store double %157, ptr %28, align 8, !tbaa !53
  br label %158

158:                                              ; preds = %143, %140
  %159 = phi double [ %156, %143 ], [ %76, %140 ]
  %160 = phi double [ %157, %143 ], [ %142, %140 ]
  br i1 %64, label %182, label %161

161:                                              ; preds = %158
  br i1 %59, label %166, label %162

162:                                              ; preds = %161
  %163 = getelementptr inbounds %struct._PixelPacket, ptr %82, i64 0, i32 3
  %164 = load i16, ptr %163, align 2, !tbaa !72
  %165 = zext i16 %164 to i32
  br label %166

166:                                              ; preds = %161, %162
  %167 = phi i32 [ %165, %162 ], [ 0, %161 ]
  br i1 %61, label %172, label %168

168:                                              ; preds = %166
  %169 = getelementptr inbounds %struct._PixelPacket, ptr %81, i64 0, i32 3
  %170 = load i16, ptr %169, align 2, !tbaa !72
  %171 = zext i16 %170 to i32
  br label %172

172:                                              ; preds = %166, %168
  %173 = phi i32 [ %171, %168 ], [ 0, %166 ]
  %174 = sub nsw i32 %167, %173
  %175 = sitofp i32 %174 to double
  %176 = fmul double %175, 0x3EF0001000100010
  %177 = fptrunc double %176 to float
  %178 = fmul float %177, %177
  %179 = fpext float %178 to double
  %180 = fadd double %75, %179
  store double %180, ptr %31, align 16, !tbaa !53
  %181 = fadd double %160, %179
  store double %181, ptr %32, align 8, !tbaa !53
  br label %182

182:                                              ; preds = %172, %158
  %183 = phi double [ %180, %172 ], [ %75, %158 ]
  %184 = phi double [ %181, %172 ], [ %160, %158 ]
  br i1 %34, label %216, label %185

185:                                              ; preds = %182
  %186 = load i32, ptr %35, align 4, !tbaa !57
  %187 = icmp eq i32 %186, 12
  br i1 %187, label %188, label %216

188:                                              ; preds = %185
  %189 = load i32, ptr %36, align 4, !tbaa !57
  %190 = icmp eq i32 %189, 12
  br i1 %190, label %191, label %216

191:                                              ; preds = %188
  br i1 %65, label %196, label %192

192:                                              ; preds = %191
  %193 = getelementptr inbounds i16, ptr %52, i64 %80
  %194 = load i16, ptr %193, align 2, !tbaa !74
  %195 = zext i16 %194 to i32
  br label %196

196:                                              ; preds = %191, %192
  %197 = phi i32 [ %195, %192 ], [ 0, %191 ]
  %198 = sitofp i32 %197 to float
  br i1 %66, label %203, label %199

199:                                              ; preds = %196
  %200 = getelementptr inbounds i16, ptr %53, i64 %80
  %201 = load i16, ptr %200, align 2, !tbaa !74
  %202 = zext i16 %201 to i32
  br label %203

203:                                              ; preds = %196, %199
  %204 = phi i32 [ %202, %199 ], [ 0, %196 ]
  %205 = sitofp i32 %204 to float
  %206 = fneg float %102
  %207 = fmul float %206, %205
  %208 = call float @llvm.fmuladd.f32(float %92, float %198, float %207)
  %209 = fpext float %208 to double
  %210 = fmul double %209, 0x3EF0001000100010
  %211 = fptrunc double %210 to float
  %212 = fmul float %211, %211
  %213 = fpext float %212 to double
  %214 = fadd double %74, %213
  store double %214, ptr %37, align 16, !tbaa !53
  %215 = fadd double %184, %213
  store double %215, ptr %38, align 8, !tbaa !53
  br label %216

216:                                              ; preds = %203, %188, %185, %182
  %217 = phi double [ %214, %203 ], [ %74, %188 ], [ %74, %185 ], [ %74, %182 ]
  %218 = phi double [ %215, %203 ], [ %184, %188 ], [ %184, %185 ], [ %184, %182 ]
  %219 = getelementptr inbounds %struct._PixelPacket, ptr %82, i64 1
  %220 = getelementptr inbounds %struct._PixelPacket, ptr %81, i64 1
  %221 = add nuw nsw i64 %80, 1
  %222 = icmp eq i64 %221, %55
  br i1 %222, label %223, label %73, !llvm.loop !85

223:                                              ; preds = %216, %51
  br label %224

224:                                              ; preds = %223, %224
  %225 = phi i64 [ %231, %224 ], [ 0, %223 ]
  %226 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 %225
  %227 = load double, ptr %226, align 8, !tbaa !53
  %228 = getelementptr inbounds double, ptr %3, i64 %225
  %229 = load double, ptr %228, align 8, !tbaa !53
  %230 = fadd double %227, %229
  store double %230, ptr %228, align 8, !tbaa !53
  %231 = add nuw nsw i64 %225, 1
  %232 = icmp eq i64 %231, 48
  br i1 %232, label %233, label %224, !llvm.loop !86

233:                                              ; preds = %224, %43, %39
  %234 = phi i32 [ 0, %39 ], [ 0, %43 ], [ 1, %224 ]
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %6) #12
  %235 = add nuw nsw i64 %41, 1
  %236 = load i64, ptr %9, align 8, !tbaa !55
  %237 = icmp slt i64 %235, %236
  br i1 %237, label %39, label %238, !llvm.loop !87

238:                                              ; preds = %233, %5
  %239 = phi i32 [ 1, %5 ], [ %234, %233 ]
  %240 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %241 = call ptr @DestroyCacheView(ptr noundef %8) #12
  %242 = call ptr @DestroyCacheView(ptr noundef %7) #12
  %243 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %244 = load i64, ptr %243, align 8, !tbaa !54
  %245 = uitofp i64 %244 to double
  %246 = load i64, ptr %240, align 8, !tbaa !55
  %247 = uitofp i64 %246 to double
  %248 = fmul double %245, %247
  br label %249

249:                                              ; preds = %238, %249
  %250 = phi i64 [ 0, %238 ], [ %254, %249 ]
  %251 = getelementptr inbounds double, ptr %3, i64 %250
  %252 = load double, ptr %251, align 8, !tbaa !53
  %253 = fdiv double %252, %248
  store double %253, ptr %251, align 8, !tbaa !53
  %254 = add nuw nsw i64 %250, 1
  %255 = icmp eq i64 %254, 48
  br i1 %255, label %256, label %249, !llvm.loop !88

256:                                              ; preds = %249
  %257 = and i32 %2, 8
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %290, label %259

259:                                              ; preds = %256
  %260 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %261 = load i32, ptr %260, align 8, !tbaa !75
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %267

263:                                              ; preds = %259
  %264 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 6
  %265 = load i32, ptr %264, align 8, !tbaa !75
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %290, label %267

267:                                              ; preds = %263, %259
  %268 = and i32 %2, 1
  %269 = lshr i32 %2, 1
  %270 = and i32 %269, 1
  %271 = add nuw nsw i32 %270, %268
  %272 = lshr i32 %2, 2
  %273 = and i32 %272, 1
  %274 = add nuw nsw i32 %271, %273
  %275 = zext nneg i32 %274 to i64
  %276 = icmp ne i32 %261, 0
  %277 = zext i1 %276 to i64
  %278 = add nuw nsw i64 %277, %275
  %279 = and i32 %2, 32
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %287, label %281

281:                                              ; preds = %267
  %282 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %283 = load i32, ptr %282, align 4, !tbaa !57
  %284 = icmp eq i32 %283, 12
  %285 = zext i1 %284 to i64
  %286 = add nuw nsw i64 %278, %285
  br label %287

287:                                              ; preds = %267, %281
  %288 = phi i64 [ %278, %267 ], [ %286, %281 ]
  %289 = add nsw i64 %288, -1
  br label %315

290:                                              ; preds = %263, %256
  %291 = and i32 %2, 1
  %292 = lshr i32 %2, 1
  %293 = and i32 %292, 1
  %294 = add nuw nsw i32 %293, %291
  %295 = lshr i32 %2, 2
  %296 = and i32 %295, 1
  %297 = add nuw nsw i32 %294, %296
  %298 = zext nneg i32 %297 to i64
  br i1 %258, label %305, label %299

299:                                              ; preds = %290
  %300 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %301 = load i32, ptr %300, align 8, !tbaa !75
  %302 = icmp ne i32 %301, 0
  %303 = zext i1 %302 to i64
  %304 = add nuw nsw i64 %303, %298
  br label %305

305:                                              ; preds = %299, %290
  %306 = phi i64 [ %298, %290 ], [ %304, %299 ]
  %307 = and i32 %2, 32
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %315, label %309

309:                                              ; preds = %305
  %310 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %311 = load i32, ptr %310, align 4, !tbaa !57
  %312 = icmp eq i32 %311, 12
  %313 = zext i1 %312 to i64
  %314 = add nuw nsw i64 %306, %313
  br label %315

315:                                              ; preds = %309, %305, %287
  %316 = phi i64 [ %289, %287 ], [ %306, %305 ], [ %314, %309 ]
  %317 = uitofp i64 %316 to double
  %318 = getelementptr inbounds double, ptr %3, i64 47
  %319 = load double, ptr %318, align 8, !tbaa !53
  %320 = fdiv double %319, %317
  store double %320, ptr %318, align 8, !tbaa !53
  %321 = getelementptr inbounds double, ptr %3, i64 47
  %322 = call double @sqrt(double noundef %320) #12
  store double %322, ptr %321, align 8, !tbaa !53
  ret i32 %239
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @GetMeanAbsoluteDistortion(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca [48 x double], align 16
  %7 = tail call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %4) #12
  %8 = tail call ptr @AcquireVirtualCacheView(ptr noundef %1, ptr noundef %4) #12
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %10 = load i64, ptr %9, align 8, !tbaa !55
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %225

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %14 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %16 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 6
  %17 = and i32 %2, 1
  %18 = icmp eq i32 %17, 0
  %19 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 1
  %20 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 47
  %21 = and i32 %2, 2
  %22 = icmp eq i32 %21, 0
  %23 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 2
  %24 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 47
  %25 = and i32 %2, 4
  %26 = icmp eq i32 %25, 0
  %27 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 4
  %28 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 47
  %29 = and i32 %2, 8
  %30 = icmp eq i32 %29, 0
  %31 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 8
  %32 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 47
  %33 = and i32 %2, 32
  %34 = icmp eq i32 %33, 0
  %35 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %36 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 32
  %37 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 47
  br label %38

38:                                               ; preds = %12, %220
  %39 = phi i32 [ 1, %12 ], [ %221, %220 ]
  %40 = phi i64 [ 0, %12 ], [ %222, %220 ]
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %6) #12
  %41 = icmp eq i32 %39, 0
  br i1 %41, label %220, label %42

42:                                               ; preds = %38
  %43 = load i64, ptr %13, align 8, !tbaa !54
  %44 = call ptr @GetCacheViewVirtualPixels(ptr noundef %7, i64 noundef 0, i64 noundef %40, i64 noundef %43, i64 noundef 1, ptr noundef %4) #13
  %45 = load i64, ptr %14, align 8, !tbaa !54
  %46 = call ptr @GetCacheViewVirtualPixels(ptr noundef %8, i64 noundef 0, i64 noundef %40, i64 noundef %45, i64 noundef 1, ptr noundef %4) #13
  %47 = icmp eq ptr %44, null
  %48 = icmp eq ptr %46, null
  %49 = select i1 %47, i1 true, i1 %48
  br i1 %49, label %220, label %50

50:                                               ; preds = %42
  %51 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %7) #12
  %52 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %8) #12
  %53 = call ptr @ResetMagickMemory(ptr noundef nonnull %6, i32 noundef 0, i64 noundef 384) #12
  %54 = load i64, ptr %13, align 8, !tbaa !54
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %210

56:                                               ; preds = %50
  %57 = load i32, ptr %15, align 8, !tbaa !75
  %58 = icmp eq i32 %57, 0
  %59 = load i32, ptr %16, align 8, !tbaa !75
  %60 = icmp eq i32 %59, 0
  %61 = or i1 %30, %58
  %62 = icmp eq ptr %51, null
  %63 = icmp eq ptr %52, null
  %64 = load double, ptr %19, align 8, !tbaa !53
  %65 = load double, ptr %20, align 8, !tbaa !53
  %66 = load double, ptr %23, align 16, !tbaa !53
  %67 = load double, ptr %27, align 16, !tbaa !53
  %68 = load double, ptr %31, align 16, !tbaa !53
  %69 = load double, ptr %36, align 16, !tbaa !53
  br label %70

70:                                               ; preds = %56, %203
  %71 = phi double [ %69, %56 ], [ %204, %203 ]
  %72 = phi double [ %68, %56 ], [ %173, %203 ]
  %73 = phi double [ %67, %56 ], [ %156, %203 ]
  %74 = phi double [ %66, %56 ], [ %138, %203 ]
  %75 = phi double [ %65, %56 ], [ %205, %203 ]
  %76 = phi double [ %64, %56 ], [ %119, %203 ]
  %77 = phi i64 [ 0, %56 ], [ %208, %203 ]
  %78 = phi ptr [ %46, %56 ], [ %207, %203 ]
  %79 = phi ptr [ %44, %56 ], [ %206, %203 ]
  br i1 %58, label %85, label %80

80:                                               ; preds = %70
  %81 = getelementptr inbounds %struct._PixelPacket, ptr %79, i64 0, i32 3
  %82 = load i16, ptr %81, align 2, !tbaa !72
  %83 = xor i16 %82, -1
  %84 = zext i16 %83 to i32
  br label %85

85:                                               ; preds = %70, %80
  %86 = phi i32 [ %84, %80 ], [ 65535, %70 ]
  %87 = sitofp i32 %86 to double
  %88 = fmul double %87, 0x3EF0001000100010
  %89 = fptrunc double %88 to float
  br i1 %60, label %95, label %90

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct._PixelPacket, ptr %78, i64 0, i32 3
  %92 = load i16, ptr %91, align 2, !tbaa !72
  %93 = xor i16 %92, -1
  %94 = zext i16 %93 to i32
  br label %95

95:                                               ; preds = %85, %90
  %96 = phi i32 [ %94, %90 ], [ 65535, %85 ]
  %97 = sitofp i32 %96 to double
  %98 = fmul double %97, 0x3EF0001000100010
  %99 = fptrunc double %98 to float
  br i1 %18, label %117, label %100

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct._PixelPacket, ptr %79, i64 0, i32 2
  %102 = load i16, ptr %101, align 2, !tbaa !69
  %103 = uitofp i16 %102 to float
  %104 = getelementptr inbounds %struct._PixelPacket, ptr %78, i64 0, i32 2
  %105 = load i16, ptr %104, align 2, !tbaa !69
  %106 = uitofp i16 %105 to float
  %107 = fneg float %99
  %108 = fmul float %107, %106
  %109 = call float @llvm.fmuladd.f32(float %89, float %103, float %108)
  %110 = call float @llvm.fabs.f32(float %109)
  %111 = fpext float %110 to double
  %112 = fmul double %111, 0x3EF0001000100010
  %113 = fptrunc double %112 to float
  %114 = fpext float %113 to double
  %115 = fadd double %76, %114
  store double %115, ptr %19, align 8, !tbaa !53
  %116 = fadd double %75, %114
  store double %116, ptr %20, align 8, !tbaa !53
  br label %117

117:                                              ; preds = %100, %95
  %118 = phi double [ %116, %100 ], [ %75, %95 ]
  %119 = phi double [ %115, %100 ], [ %76, %95 ]
  br i1 %22, label %137, label %120

120:                                              ; preds = %117
  %121 = getelementptr inbounds %struct._PixelPacket, ptr %79, i64 0, i32 1
  %122 = load i16, ptr %121, align 2, !tbaa !70
  %123 = uitofp i16 %122 to float
  %124 = getelementptr inbounds %struct._PixelPacket, ptr %78, i64 0, i32 1
  %125 = load i16, ptr %124, align 2, !tbaa !70
  %126 = uitofp i16 %125 to float
  %127 = fneg float %99
  %128 = fmul float %127, %126
  %129 = call float @llvm.fmuladd.f32(float %89, float %123, float %128)
  %130 = call float @llvm.fabs.f32(float %129)
  %131 = fpext float %130 to double
  %132 = fmul double %131, 0x3EF0001000100010
  %133 = fptrunc double %132 to float
  %134 = fpext float %133 to double
  %135 = fadd double %74, %134
  store double %135, ptr %23, align 16, !tbaa !53
  %136 = fadd double %118, %134
  store double %136, ptr %24, align 8, !tbaa !53
  br label %137

137:                                              ; preds = %120, %117
  %138 = phi double [ %135, %120 ], [ %74, %117 ]
  %139 = phi double [ %136, %120 ], [ %118, %117 ]
  br i1 %26, label %155, label %140

140:                                              ; preds = %137
  %141 = load i16, ptr %79, align 2, !tbaa !71
  %142 = uitofp i16 %141 to float
  %143 = load i16, ptr %78, align 2, !tbaa !71
  %144 = uitofp i16 %143 to float
  %145 = fneg float %99
  %146 = fmul float %145, %144
  %147 = call float @llvm.fmuladd.f32(float %89, float %142, float %146)
  %148 = call float @llvm.fabs.f32(float %147)
  %149 = fpext float %148 to double
  %150 = fmul double %149, 0x3EF0001000100010
  %151 = fptrunc double %150 to float
  %152 = fpext float %151 to double
  %153 = fadd double %73, %152
  store double %153, ptr %27, align 16, !tbaa !53
  %154 = fadd double %139, %152
  store double %154, ptr %28, align 8, !tbaa !53
  br label %155

155:                                              ; preds = %140, %137
  %156 = phi double [ %153, %140 ], [ %73, %137 ]
  %157 = phi double [ %154, %140 ], [ %139, %137 ]
  br i1 %61, label %172, label %158

158:                                              ; preds = %155
  %159 = getelementptr inbounds %struct._PixelPacket, ptr %79, i64 0, i32 3
  %160 = load i16, ptr %159, align 2, !tbaa !72
  %161 = uitofp i16 %160 to double
  %162 = getelementptr inbounds %struct._PixelPacket, ptr %78, i64 0, i32 3
  %163 = load i16, ptr %162, align 2, !tbaa !72
  %164 = uitofp i16 %163 to double
  %165 = fsub double %161, %164
  %166 = call double @llvm.fabs.f64(double %165)
  %167 = fmul double %166, 0x3EF0001000100010
  %168 = fptrunc double %167 to float
  %169 = fpext float %168 to double
  %170 = fadd double %72, %169
  store double %170, ptr %31, align 16, !tbaa !53
  %171 = fadd double %157, %169
  store double %171, ptr %32, align 8, !tbaa !53
  br label %172

172:                                              ; preds = %155, %158
  %173 = phi double [ %72, %155 ], [ %170, %158 ]
  %174 = phi double [ %157, %155 ], [ %171, %158 ]
  br i1 %34, label %203, label %175

175:                                              ; preds = %172
  %176 = load i32, ptr %35, align 4, !tbaa !57
  %177 = icmp eq i32 %176, 12
  br i1 %177, label %178, label %203

178:                                              ; preds = %175
  br i1 %62, label %183, label %179

179:                                              ; preds = %178
  %180 = getelementptr inbounds i16, ptr %51, i64 %77
  %181 = load i16, ptr %180, align 2, !tbaa !74
  %182 = zext i16 %181 to i32
  br label %183

183:                                              ; preds = %178, %179
  %184 = phi i32 [ %182, %179 ], [ 0, %178 ]
  %185 = sitofp i32 %184 to float
  br i1 %63, label %190, label %186

186:                                              ; preds = %183
  %187 = getelementptr inbounds i16, ptr %52, i64 %77
  %188 = load i16, ptr %187, align 2, !tbaa !74
  %189 = zext i16 %188 to i32
  br label %190

190:                                              ; preds = %183, %186
  %191 = phi i32 [ %189, %186 ], [ 0, %183 ]
  %192 = sitofp i32 %191 to float
  %193 = fneg float %99
  %194 = fmul float %193, %192
  %195 = call float @llvm.fmuladd.f32(float %89, float %185, float %194)
  %196 = call float @llvm.fabs.f32(float %195)
  %197 = fpext float %196 to double
  %198 = fmul double %197, 0x3EF0001000100010
  %199 = fptrunc double %198 to float
  %200 = fpext float %199 to double
  %201 = fadd double %71, %200
  store double %201, ptr %36, align 16, !tbaa !53
  %202 = fadd double %174, %200
  store double %202, ptr %37, align 8, !tbaa !53
  br label %203

203:                                              ; preds = %190, %175, %172
  %204 = phi double [ %201, %190 ], [ %71, %175 ], [ %71, %172 ]
  %205 = phi double [ %202, %190 ], [ %174, %175 ], [ %174, %172 ]
  %206 = getelementptr inbounds %struct._PixelPacket, ptr %79, i64 1
  %207 = getelementptr inbounds %struct._PixelPacket, ptr %78, i64 1
  %208 = add nuw nsw i64 %77, 1
  %209 = icmp eq i64 %208, %54
  br i1 %209, label %210, label %70, !llvm.loop !89

210:                                              ; preds = %203, %50
  br label %211

211:                                              ; preds = %210, %211
  %212 = phi i64 [ %218, %211 ], [ 0, %210 ]
  %213 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 %212
  %214 = load double, ptr %213, align 8, !tbaa !53
  %215 = getelementptr inbounds double, ptr %3, i64 %212
  %216 = load double, ptr %215, align 8, !tbaa !53
  %217 = fadd double %214, %216
  store double %217, ptr %215, align 8, !tbaa !53
  %218 = add nuw nsw i64 %212, 1
  %219 = icmp eq i64 %218, 48
  br i1 %219, label %220, label %211, !llvm.loop !90

220:                                              ; preds = %211, %42, %38
  %221 = phi i32 [ 0, %38 ], [ 0, %42 ], [ 1, %211 ]
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %6) #12
  %222 = add nuw nsw i64 %40, 1
  %223 = load i64, ptr %9, align 8, !tbaa !55
  %224 = icmp slt i64 %222, %223
  br i1 %224, label %38, label %225, !llvm.loop !91

225:                                              ; preds = %220, %5
  %226 = phi i32 [ 1, %5 ], [ %221, %220 ]
  %227 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %228 = call ptr @DestroyCacheView(ptr noundef %8) #12
  %229 = call ptr @DestroyCacheView(ptr noundef %7) #12
  %230 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %231 = load i64, ptr %230, align 8, !tbaa !54
  %232 = uitofp i64 %231 to double
  %233 = load i64, ptr %227, align 8, !tbaa !55
  %234 = uitofp i64 %233 to double
  %235 = fmul double %232, %234
  br label %236

236:                                              ; preds = %225, %236
  %237 = phi i64 [ 0, %225 ], [ %241, %236 ]
  %238 = getelementptr inbounds double, ptr %3, i64 %237
  %239 = load double, ptr %238, align 8, !tbaa !53
  %240 = fdiv double %239, %235
  store double %240, ptr %238, align 8, !tbaa !53
  %241 = add nuw nsw i64 %237, 1
  %242 = icmp eq i64 %241, 48
  br i1 %242, label %243, label %236, !llvm.loop !92

243:                                              ; preds = %236
  %244 = and i32 %2, 1
  %245 = lshr i32 %2, 1
  %246 = and i32 %245, 1
  %247 = add nuw nsw i32 %246, %244
  %248 = lshr i32 %2, 2
  %249 = and i32 %248, 1
  %250 = add nuw nsw i32 %247, %249
  %251 = zext nneg i32 %250 to i64
  %252 = and i32 %2, 8
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %260, label %254

254:                                              ; preds = %243
  %255 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %256 = load i32, ptr %255, align 8, !tbaa !75
  %257 = icmp ne i32 %256, 0
  %258 = zext i1 %257 to i64
  %259 = add nuw nsw i64 %258, %251
  br label %260

260:                                              ; preds = %254, %243
  %261 = phi i64 [ %251, %243 ], [ %259, %254 ]
  %262 = and i32 %2, 32
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %270, label %264

264:                                              ; preds = %260
  %265 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %266 = load i32, ptr %265, align 4, !tbaa !57
  %267 = icmp eq i32 %266, 12
  %268 = zext i1 %267 to i64
  %269 = add nuw nsw i64 %261, %268
  br label %270

270:                                              ; preds = %260, %264
  %271 = phi i64 [ %261, %260 ], [ %269, %264 ]
  %272 = uitofp i64 %271 to double
  %273 = getelementptr inbounds double, ptr %3, i64 47
  %274 = load double, ptr %273, align 8, !tbaa !53
  %275 = fdiv double %274, %272
  store double %275, ptr %273, align 8, !tbaa !53
  ret i32 %226
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @GetMeanErrorPerPixel(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = tail call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %4) #12
  %7 = tail call ptr @AcquireVirtualCacheView(ptr noundef %1, ptr noundef %4) #12
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %9 = load i64, ptr %8, align 8, !tbaa !55
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %241

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %13 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %15 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 6
  %16 = and i32 %2, 1
  %17 = icmp eq i32 %16, 0
  %18 = getelementptr inbounds double, ptr %3, i64 1
  %19 = getelementptr inbounds double, ptr %3, i64 47
  %20 = and i32 %2, 2
  %21 = icmp eq i32 %20, 0
  %22 = getelementptr inbounds double, ptr %3, i64 2
  %23 = getelementptr inbounds double, ptr %3, i64 47
  %24 = and i32 %2, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds double, ptr %3, i64 4
  %27 = getelementptr inbounds double, ptr %3, i64 47
  %28 = and i32 %2, 8
  %29 = icmp eq i32 %28, 0
  %30 = getelementptr inbounds double, ptr %3, i64 8
  %31 = getelementptr inbounds double, ptr %3, i64 47
  %32 = and i32 %2, 32
  %33 = icmp eq i32 %32, 0
  %34 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %35 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %36 = getelementptr inbounds double, ptr %3, i64 32
  %37 = getelementptr inbounds double, ptr %3, i64 47
  br label %42

38:                                               ; preds = %230
  %39 = add nuw nsw i64 %45, 1
  %40 = load i64, ptr %8, align 8, !tbaa !55
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %235, !llvm.loop !93

42:                                               ; preds = %11, %38
  %43 = phi i32 [ 1, %11 ], [ %234, %38 ]
  %44 = phi float [ 0.000000e+00, %11 ], [ %233, %38 ]
  %45 = phi i64 [ 0, %11 ], [ %39, %38 ]
  %46 = phi float [ 0.000000e+00, %11 ], [ %232, %38 ]
  %47 = phi float [ 0.000000e+00, %11 ], [ %231, %38 ]
  %48 = load i64, ptr %12, align 8, !tbaa !54
  %49 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %6, i64 noundef 0, i64 noundef %45, i64 noundef %48, i64 noundef 1, ptr noundef %4) #13
  %50 = load i64, ptr %13, align 8, !tbaa !54
  %51 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %7, i64 noundef 0, i64 noundef %45, i64 noundef %50, i64 noundef 1, ptr noundef %4) #13
  %52 = icmp ne ptr %49, null
  %53 = icmp ne ptr %51, null
  %54 = select i1 %52, i1 %53, i1 false
  br i1 %54, label %55, label %230

55:                                               ; preds = %42
  %56 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %6) #12
  %57 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %7) #12
  %58 = load i64, ptr %12, align 8, !tbaa !54
  %59 = icmp sgt i64 %58, 0
  br i1 %59, label %60, label %230

60:                                               ; preds = %55
  %61 = load i32, ptr %14, align 8, !tbaa !75
  %62 = icmp eq i32 %61, 0
  %63 = load i32, ptr %15, align 8, !tbaa !75
  %64 = icmp eq i32 %63, 0
  %65 = or i1 %29, %62
  %66 = icmp eq ptr %56, null
  %67 = icmp eq ptr %57, null
  br label %68

68:                                               ; preds = %60, %222
  %69 = phi i64 [ 0, %60 ], [ %228, %222 ]
  %70 = phi ptr [ %51, %60 ], [ %227, %222 ]
  %71 = phi ptr [ %49, %60 ], [ %226, %222 ]
  %72 = phi float [ %44, %60 ], [ %225, %222 ]
  %73 = phi float [ %46, %60 ], [ %224, %222 ]
  %74 = phi float [ %47, %60 ], [ %223, %222 ]
  br i1 %62, label %80, label %75

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct._PixelPacket, ptr %71, i64 0, i32 3
  %77 = load i16, ptr %76, align 2, !tbaa !72
  %78 = xor i16 %77, -1
  %79 = zext i16 %78 to i32
  br label %80

80:                                               ; preds = %68, %75
  %81 = phi i32 [ %79, %75 ], [ 65535, %68 ]
  %82 = sitofp i32 %81 to double
  %83 = fmul double %82, 0x3EF0001000100010
  %84 = fptrunc double %83 to float
  br i1 %64, label %90, label %85

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct._PixelPacket, ptr %70, i64 0, i32 3
  %87 = load i16, ptr %86, align 2, !tbaa !72
  %88 = xor i16 %87, -1
  %89 = zext i16 %88 to i32
  br label %90

90:                                               ; preds = %80, %85
  %91 = phi i32 [ %89, %85 ], [ 65535, %80 ]
  %92 = sitofp i32 %91 to double
  %93 = fmul double %92, 0x3EF0001000100010
  %94 = fptrunc double %93 to float
  br i1 %17, label %115, label %95

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct._PixelPacket, ptr %71, i64 0, i32 2
  %97 = load i16, ptr %96, align 2, !tbaa !69
  %98 = uitofp i16 %97 to float
  %99 = getelementptr inbounds %struct._PixelPacket, ptr %70, i64 0, i32 2
  %100 = load i16, ptr %99, align 2, !tbaa !69
  %101 = uitofp i16 %100 to float
  %102 = fneg float %94
  %103 = fmul float %102, %101
  %104 = tail call float @llvm.fmuladd.f32(float %84, float %98, float %103)
  %105 = tail call float @llvm.fabs.f32(float %104)
  %106 = fpext float %105 to double
  %107 = load double, ptr %18, align 8, !tbaa !53
  %108 = fadd double %107, %106
  store double %108, ptr %18, align 8, !tbaa !53
  %109 = load double, ptr %19, align 8, !tbaa !53
  %110 = fadd double %109, %106
  store double %110, ptr %19, align 8, !tbaa !53
  %111 = tail call float @llvm.fmuladd.f32(float %104, float %104, float %73)
  %112 = fcmp ogt float %105, %74
  %113 = select i1 %112, float %105, float %74
  %114 = fadd float %72, 1.000000e+00
  br label %115

115:                                              ; preds = %95, %90
  %116 = phi float [ %113, %95 ], [ %74, %90 ]
  %117 = phi float [ %111, %95 ], [ %73, %90 ]
  %118 = phi float [ %114, %95 ], [ %72, %90 ]
  br i1 %21, label %139, label %119

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct._PixelPacket, ptr %71, i64 0, i32 1
  %121 = load i16, ptr %120, align 2, !tbaa !70
  %122 = uitofp i16 %121 to float
  %123 = getelementptr inbounds %struct._PixelPacket, ptr %70, i64 0, i32 1
  %124 = load i16, ptr %123, align 2, !tbaa !70
  %125 = uitofp i16 %124 to float
  %126 = fneg float %94
  %127 = fmul float %126, %125
  %128 = tail call float @llvm.fmuladd.f32(float %84, float %122, float %127)
  %129 = tail call float @llvm.fabs.f32(float %128)
  %130 = fpext float %129 to double
  %131 = load double, ptr %22, align 8, !tbaa !53
  %132 = fadd double %131, %130
  store double %132, ptr %22, align 8, !tbaa !53
  %133 = load double, ptr %23, align 8, !tbaa !53
  %134 = fadd double %133, %130
  store double %134, ptr %23, align 8, !tbaa !53
  %135 = tail call float @llvm.fmuladd.f32(float %128, float %128, float %117)
  %136 = fcmp ogt float %129, %116
  %137 = select i1 %136, float %129, float %116
  %138 = fadd float %118, 1.000000e+00
  br label %139

139:                                              ; preds = %119, %115
  %140 = phi float [ %137, %119 ], [ %116, %115 ]
  %141 = phi float [ %135, %119 ], [ %117, %115 ]
  %142 = phi float [ %138, %119 ], [ %118, %115 ]
  br i1 %25, label %161, label %143

143:                                              ; preds = %139
  %144 = load i16, ptr %71, align 2, !tbaa !71
  %145 = uitofp i16 %144 to float
  %146 = load i16, ptr %70, align 2, !tbaa !71
  %147 = uitofp i16 %146 to float
  %148 = fneg float %94
  %149 = fmul float %148, %147
  %150 = tail call float @llvm.fmuladd.f32(float %84, float %145, float %149)
  %151 = tail call float @llvm.fabs.f32(float %150)
  %152 = fpext float %151 to double
  %153 = load double, ptr %26, align 8, !tbaa !53
  %154 = fadd double %153, %152
  store double %154, ptr %26, align 8, !tbaa !53
  %155 = load double, ptr %27, align 8, !tbaa !53
  %156 = fadd double %155, %152
  store double %156, ptr %27, align 8, !tbaa !53
  %157 = tail call float @llvm.fmuladd.f32(float %150, float %150, float %141)
  %158 = fcmp ogt float %151, %140
  %159 = select i1 %158, float %151, float %140
  %160 = fadd float %142, 1.000000e+00
  br label %161

161:                                              ; preds = %143, %139
  %162 = phi float [ %159, %143 ], [ %140, %139 ]
  %163 = phi float [ %157, %143 ], [ %141, %139 ]
  %164 = phi float [ %160, %143 ], [ %142, %139 ]
  br i1 %65, label %184, label %165

165:                                              ; preds = %161
  %166 = getelementptr inbounds %struct._PixelPacket, ptr %71, i64 0, i32 3
  %167 = load i16, ptr %166, align 2, !tbaa !72
  %168 = uitofp i16 %167 to double
  %169 = getelementptr inbounds %struct._PixelPacket, ptr %70, i64 0, i32 3
  %170 = load i16, ptr %169, align 2, !tbaa !72
  %171 = uitofp i16 %170 to double
  %172 = fsub double %168, %171
  %173 = fptrunc double %172 to float
  %174 = tail call float @llvm.fabs.f32(float %173)
  %175 = fpext float %174 to double
  %176 = load double, ptr %30, align 8, !tbaa !53
  %177 = fadd double %176, %175
  store double %177, ptr %30, align 8, !tbaa !53
  %178 = load double, ptr %31, align 8, !tbaa !53
  %179 = fadd double %178, %175
  store double %179, ptr %31, align 8, !tbaa !53
  %180 = tail call float @llvm.fmuladd.f32(float %173, float %173, float %163)
  %181 = fcmp ogt float %174, %162
  %182 = select i1 %181, float %174, float %162
  %183 = fadd float %164, 1.000000e+00
  br label %184

184:                                              ; preds = %161, %165
  %185 = phi float [ %182, %165 ], [ %162, %161 ]
  %186 = phi float [ %180, %165 ], [ %163, %161 ]
  %187 = phi float [ %183, %165 ], [ %164, %161 ]
  br i1 %33, label %222, label %188

188:                                              ; preds = %184
  %189 = load i32, ptr %34, align 4, !tbaa !57
  %190 = icmp eq i32 %189, 12
  br i1 %190, label %191, label %222

191:                                              ; preds = %188
  %192 = load i32, ptr %35, align 4, !tbaa !57
  %193 = icmp eq i32 %192, 12
  br i1 %193, label %194, label %222

194:                                              ; preds = %191
  br i1 %66, label %199, label %195

195:                                              ; preds = %194
  %196 = getelementptr inbounds i16, ptr %56, i64 %69
  %197 = load i16, ptr %196, align 2, !tbaa !74
  %198 = zext i16 %197 to i32
  br label %199

199:                                              ; preds = %194, %195
  %200 = phi i32 [ %198, %195 ], [ 0, %194 ]
  %201 = sitofp i32 %200 to float
  br i1 %67, label %206, label %202

202:                                              ; preds = %199
  %203 = getelementptr inbounds i16, ptr %57, i64 %69
  %204 = load i16, ptr %203, align 2, !tbaa !74
  %205 = zext i16 %204 to i32
  br label %206

206:                                              ; preds = %199, %202
  %207 = phi i32 [ %205, %202 ], [ 0, %199 ]
  %208 = sitofp i32 %207 to float
  %209 = fneg float %94
  %210 = fmul float %209, %208
  %211 = tail call float @llvm.fmuladd.f32(float %84, float %201, float %210)
  %212 = tail call float @llvm.fabs.f32(float %211)
  %213 = fpext float %212 to double
  %214 = load double, ptr %36, align 8, !tbaa !53
  %215 = fadd double %214, %213
  store double %215, ptr %36, align 8, !tbaa !53
  %216 = load double, ptr %37, align 8, !tbaa !53
  %217 = fadd double %216, %213
  store double %217, ptr %37, align 8, !tbaa !53
  %218 = tail call float @llvm.fmuladd.f32(float %211, float %211, float %186)
  %219 = fcmp ogt float %212, %185
  %220 = select i1 %219, float %212, float %185
  %221 = fadd float %187, 1.000000e+00
  br label %222

222:                                              ; preds = %206, %191, %188, %184
  %223 = phi float [ %220, %206 ], [ %185, %191 ], [ %185, %188 ], [ %185, %184 ]
  %224 = phi float [ %218, %206 ], [ %186, %191 ], [ %186, %188 ], [ %186, %184 ]
  %225 = phi float [ %221, %206 ], [ %187, %191 ], [ %187, %188 ], [ %187, %184 ]
  %226 = getelementptr inbounds %struct._PixelPacket, ptr %71, i64 1
  %227 = getelementptr inbounds %struct._PixelPacket, ptr %70, i64 1
  %228 = add nuw nsw i64 %69, 1
  %229 = icmp eq i64 %228, %58
  br i1 %229, label %230, label %68, !llvm.loop !94

230:                                              ; preds = %222, %55, %42
  %231 = phi float [ %47, %42 ], [ %47, %55 ], [ %223, %222 ]
  %232 = phi float [ %46, %42 ], [ %46, %55 ], [ %224, %222 ]
  %233 = phi float [ %44, %42 ], [ %44, %55 ], [ %225, %222 ]
  %234 = phi i32 [ 0, %42 ], [ %43, %55 ], [ %43, %222 ]
  br i1 %54, label %38, label %235

235:                                              ; preds = %230, %38
  %236 = fpext float %233 to double
  %237 = fpext float %232 to double
  %238 = fmul double %237, 0x3DF0002000300040
  %239 = fpext float %231 to double
  %240 = fmul double %239, 0x3EF0001000100010
  br label %241

241:                                              ; preds = %235, %5
  %242 = phi double [ 0.000000e+00, %5 ], [ %240, %235 ]
  %243 = phi double [ 0.000000e+00, %5 ], [ %238, %235 ]
  %244 = phi double [ 0.000000e+00, %5 ], [ %236, %235 ]
  %245 = phi i32 [ 1, %5 ], [ %234, %235 ]
  %246 = tail call ptr @DestroyCacheView(ptr noundef %7) #12
  %247 = tail call ptr @DestroyCacheView(ptr noundef %6) #12
  %248 = getelementptr inbounds double, ptr %3, i64 47
  %249 = load double, ptr %248, align 8, !tbaa !53
  %250 = fdiv double %249, %244
  %251 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 45
  store double %250, ptr %251, align 8, !tbaa !95
  %252 = fdiv double %243, %244
  %253 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 45, i32 1
  store double %252, ptr %253, align 8, !tbaa !96
  %254 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 45, i32 2
  store double %242, ptr %254, align 8, !tbaa !97
  ret i32 %245
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @GetMeanSquaredDistortion(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca [48 x double], align 16
  %7 = tail call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %4) #12
  %8 = tail call ptr @AcquireVirtualCacheView(ptr noundef %1, ptr noundef %4) #12
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %10 = load i64, ptr %9, align 8, !tbaa !55
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %230

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %14 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %16 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 6
  %17 = and i32 %2, 1
  %18 = icmp eq i32 %17, 0
  %19 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 1
  %20 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 47
  %21 = and i32 %2, 2
  %22 = icmp eq i32 %21, 0
  %23 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 2
  %24 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 47
  %25 = and i32 %2, 4
  %26 = icmp eq i32 %25, 0
  %27 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 4
  %28 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 47
  %29 = and i32 %2, 8
  %30 = icmp eq i32 %29, 0
  %31 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 8
  %32 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 47
  %33 = and i32 %2, 32
  %34 = icmp eq i32 %33, 0
  %35 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %36 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %37 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 32
  %38 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 47
  br label %39

39:                                               ; preds = %12, %225
  %40 = phi i32 [ 1, %12 ], [ %226, %225 ]
  %41 = phi i64 [ 0, %12 ], [ %227, %225 ]
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %6) #12
  %42 = icmp eq i32 %40, 0
  br i1 %42, label %225, label %43

43:                                               ; preds = %39
  %44 = load i64, ptr %13, align 8, !tbaa !54
  %45 = call ptr @GetCacheViewVirtualPixels(ptr noundef %7, i64 noundef 0, i64 noundef %41, i64 noundef %44, i64 noundef 1, ptr noundef %4) #13
  %46 = load i64, ptr %14, align 8, !tbaa !54
  %47 = call ptr @GetCacheViewVirtualPixels(ptr noundef %8, i64 noundef 0, i64 noundef %41, i64 noundef %46, i64 noundef 1, ptr noundef %4) #13
  %48 = icmp eq ptr %45, null
  %49 = icmp eq ptr %47, null
  %50 = select i1 %48, i1 true, i1 %49
  br i1 %50, label %225, label %51

51:                                               ; preds = %43
  %52 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %7) #12
  %53 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %8) #12
  %54 = call ptr @ResetMagickMemory(ptr noundef nonnull %6, i32 noundef 0, i64 noundef 384) #12
  %55 = load i64, ptr %13, align 8, !tbaa !54
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %57, label %215

57:                                               ; preds = %51
  %58 = load i32, ptr %15, align 8, !tbaa !75
  %59 = icmp eq i32 %58, 0
  %60 = load i32, ptr %16, align 8, !tbaa !75
  %61 = icmp eq i32 %60, 0
  %62 = or i1 %30, %59
  %63 = icmp eq ptr %52, null
  %64 = icmp eq ptr %53, null
  %65 = load double, ptr %19, align 8, !tbaa !53
  %66 = load double, ptr %20, align 8, !tbaa !53
  %67 = load double, ptr %23, align 16, !tbaa !53
  %68 = load double, ptr %27, align 16, !tbaa !53
  %69 = load double, ptr %31, align 16, !tbaa !53
  %70 = load double, ptr %37, align 16, !tbaa !53
  br label %71

71:                                               ; preds = %57, %208
  %72 = phi double [ %70, %57 ], [ %209, %208 ]
  %73 = phi double [ %69, %57 ], [ %175, %208 ]
  %74 = phi double [ %68, %57 ], [ %157, %208 ]
  %75 = phi double [ %67, %57 ], [ %139, %208 ]
  %76 = phi double [ %66, %57 ], [ %210, %208 ]
  %77 = phi double [ %65, %57 ], [ %120, %208 ]
  %78 = phi i64 [ 0, %57 ], [ %213, %208 ]
  %79 = phi ptr [ %47, %57 ], [ %212, %208 ]
  %80 = phi ptr [ %45, %57 ], [ %211, %208 ]
  br i1 %59, label %86, label %81

81:                                               ; preds = %71
  %82 = getelementptr inbounds %struct._PixelPacket, ptr %80, i64 0, i32 3
  %83 = load i16, ptr %82, align 2, !tbaa !72
  %84 = xor i16 %83, -1
  %85 = zext i16 %84 to i32
  br label %86

86:                                               ; preds = %71, %81
  %87 = phi i32 [ %85, %81 ], [ 65535, %71 ]
  %88 = sitofp i32 %87 to double
  %89 = fmul double %88, 0x3EF0001000100010
  %90 = fptrunc double %89 to float
  br i1 %61, label %96, label %91

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct._PixelPacket, ptr %79, i64 0, i32 3
  %93 = load i16, ptr %92, align 2, !tbaa !72
  %94 = xor i16 %93, -1
  %95 = zext i16 %94 to i32
  br label %96

96:                                               ; preds = %86, %91
  %97 = phi i32 [ %95, %91 ], [ 65535, %86 ]
  %98 = sitofp i32 %97 to double
  %99 = fmul double %98, 0x3EF0001000100010
  %100 = fptrunc double %99 to float
  br i1 %18, label %118, label %101

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct._PixelPacket, ptr %80, i64 0, i32 2
  %103 = load i16, ptr %102, align 2, !tbaa !69
  %104 = uitofp i16 %103 to float
  %105 = getelementptr inbounds %struct._PixelPacket, ptr %79, i64 0, i32 2
  %106 = load i16, ptr %105, align 2, !tbaa !69
  %107 = uitofp i16 %106 to float
  %108 = fneg float %100
  %109 = fmul float %108, %107
  %110 = call float @llvm.fmuladd.f32(float %90, float %104, float %109)
  %111 = fpext float %110 to double
  %112 = fmul double %111, 0x3EF0001000100010
  %113 = fptrunc double %112 to float
  %114 = fmul float %113, %113
  %115 = fpext float %114 to double
  %116 = fadd double %77, %115
  store double %116, ptr %19, align 8, !tbaa !53
  %117 = fadd double %76, %115
  store double %117, ptr %20, align 8, !tbaa !53
  br label %118

118:                                              ; preds = %101, %96
  %119 = phi double [ %117, %101 ], [ %76, %96 ]
  %120 = phi double [ %116, %101 ], [ %77, %96 ]
  br i1 %22, label %138, label %121

121:                                              ; preds = %118
  %122 = getelementptr inbounds %struct._PixelPacket, ptr %80, i64 0, i32 1
  %123 = load i16, ptr %122, align 2, !tbaa !70
  %124 = uitofp i16 %123 to float
  %125 = getelementptr inbounds %struct._PixelPacket, ptr %79, i64 0, i32 1
  %126 = load i16, ptr %125, align 2, !tbaa !70
  %127 = uitofp i16 %126 to float
  %128 = fneg float %100
  %129 = fmul float %128, %127
  %130 = call float @llvm.fmuladd.f32(float %90, float %124, float %129)
  %131 = fpext float %130 to double
  %132 = fmul double %131, 0x3EF0001000100010
  %133 = fptrunc double %132 to float
  %134 = fmul float %133, %133
  %135 = fpext float %134 to double
  %136 = fadd double %75, %135
  store double %136, ptr %23, align 16, !tbaa !53
  %137 = fadd double %119, %135
  store double %137, ptr %24, align 8, !tbaa !53
  br label %138

138:                                              ; preds = %121, %118
  %139 = phi double [ %136, %121 ], [ %75, %118 ]
  %140 = phi double [ %137, %121 ], [ %119, %118 ]
  br i1 %26, label %156, label %141

141:                                              ; preds = %138
  %142 = load i16, ptr %80, align 2, !tbaa !71
  %143 = uitofp i16 %142 to float
  %144 = load i16, ptr %79, align 2, !tbaa !71
  %145 = uitofp i16 %144 to float
  %146 = fneg float %100
  %147 = fmul float %146, %145
  %148 = call float @llvm.fmuladd.f32(float %90, float %143, float %147)
  %149 = fpext float %148 to double
  %150 = fmul double %149, 0x3EF0001000100010
  %151 = fptrunc double %150 to float
  %152 = fmul float %151, %151
  %153 = fpext float %152 to double
  %154 = fadd double %74, %153
  store double %154, ptr %27, align 16, !tbaa !53
  %155 = fadd double %140, %153
  store double %155, ptr %28, align 8, !tbaa !53
  br label %156

156:                                              ; preds = %141, %138
  %157 = phi double [ %154, %141 ], [ %74, %138 ]
  %158 = phi double [ %155, %141 ], [ %140, %138 ]
  br i1 %62, label %174, label %159

159:                                              ; preds = %156
  %160 = getelementptr inbounds %struct._PixelPacket, ptr %80, i64 0, i32 3
  %161 = load i16, ptr %160, align 2, !tbaa !72
  %162 = uitofp i16 %161 to float
  %163 = getelementptr inbounds %struct._PixelPacket, ptr %79, i64 0, i32 3
  %164 = load i16, ptr %163, align 2, !tbaa !72
  %165 = uitofp i16 %164 to float
  %166 = fsub float %162, %165
  %167 = fpext float %166 to double
  %168 = fmul double %167, 0x3EF0001000100010
  %169 = fptrunc double %168 to float
  %170 = fmul float %169, %169
  %171 = fpext float %170 to double
  %172 = fadd double %73, %171
  store double %172, ptr %31, align 16, !tbaa !53
  %173 = fadd double %158, %171
  store double %173, ptr %32, align 8, !tbaa !53
  br label %174

174:                                              ; preds = %156, %159
  %175 = phi double [ %73, %156 ], [ %172, %159 ]
  %176 = phi double [ %158, %156 ], [ %173, %159 ]
  br i1 %34, label %208, label %177

177:                                              ; preds = %174
  %178 = load i32, ptr %35, align 4, !tbaa !57
  %179 = icmp eq i32 %178, 12
  br i1 %179, label %180, label %208

180:                                              ; preds = %177
  %181 = load i32, ptr %36, align 4, !tbaa !57
  %182 = icmp eq i32 %181, 12
  br i1 %182, label %183, label %208

183:                                              ; preds = %180
  br i1 %63, label %188, label %184

184:                                              ; preds = %183
  %185 = getelementptr inbounds i16, ptr %52, i64 %78
  %186 = load i16, ptr %185, align 2, !tbaa !74
  %187 = zext i16 %186 to i32
  br label %188

188:                                              ; preds = %183, %184
  %189 = phi i32 [ %187, %184 ], [ 0, %183 ]
  %190 = sitofp i32 %189 to float
  br i1 %64, label %195, label %191

191:                                              ; preds = %188
  %192 = getelementptr inbounds i16, ptr %53, i64 %78
  %193 = load i16, ptr %192, align 2, !tbaa !74
  %194 = zext i16 %193 to i32
  br label %195

195:                                              ; preds = %188, %191
  %196 = phi i32 [ %194, %191 ], [ 0, %188 ]
  %197 = sitofp i32 %196 to float
  %198 = fneg float %100
  %199 = fmul float %198, %197
  %200 = call float @llvm.fmuladd.f32(float %90, float %190, float %199)
  %201 = fpext float %200 to double
  %202 = fmul double %201, 0x3EF0001000100010
  %203 = fptrunc double %202 to float
  %204 = fmul float %203, %203
  %205 = fpext float %204 to double
  %206 = fadd double %72, %205
  store double %206, ptr %37, align 16, !tbaa !53
  %207 = fadd double %176, %205
  store double %207, ptr %38, align 8, !tbaa !53
  br label %208

208:                                              ; preds = %195, %180, %177, %174
  %209 = phi double [ %206, %195 ], [ %72, %180 ], [ %72, %177 ], [ %72, %174 ]
  %210 = phi double [ %207, %195 ], [ %176, %180 ], [ %176, %177 ], [ %176, %174 ]
  %211 = getelementptr inbounds %struct._PixelPacket, ptr %80, i64 1
  %212 = getelementptr inbounds %struct._PixelPacket, ptr %79, i64 1
  %213 = add nuw nsw i64 %78, 1
  %214 = icmp eq i64 %213, %55
  br i1 %214, label %215, label %71, !llvm.loop !98

215:                                              ; preds = %208, %51
  br label %216

216:                                              ; preds = %215, %216
  %217 = phi i64 [ %223, %216 ], [ 0, %215 ]
  %218 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 %217
  %219 = load double, ptr %218, align 8, !tbaa !53
  %220 = getelementptr inbounds double, ptr %3, i64 %217
  %221 = load double, ptr %220, align 8, !tbaa !53
  %222 = fadd double %219, %221
  store double %222, ptr %220, align 8, !tbaa !53
  %223 = add nuw nsw i64 %217, 1
  %224 = icmp eq i64 %223, 48
  br i1 %224, label %225, label %216, !llvm.loop !99

225:                                              ; preds = %216, %43, %39
  %226 = phi i32 [ 0, %39 ], [ 0, %43 ], [ 1, %216 ]
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %6) #12
  %227 = add nuw nsw i64 %41, 1
  %228 = load i64, ptr %9, align 8, !tbaa !55
  %229 = icmp slt i64 %227, %228
  br i1 %229, label %39, label %230, !llvm.loop !100

230:                                              ; preds = %225, %5
  %231 = phi i32 [ 1, %5 ], [ %226, %225 ]
  %232 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %233 = call ptr @DestroyCacheView(ptr noundef %8) #12
  %234 = call ptr @DestroyCacheView(ptr noundef %7) #12
  %235 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %236 = load i64, ptr %235, align 8, !tbaa !54
  %237 = uitofp i64 %236 to double
  %238 = load i64, ptr %232, align 8, !tbaa !55
  %239 = uitofp i64 %238 to double
  %240 = fmul double %237, %239
  br label %241

241:                                              ; preds = %230, %241
  %242 = phi i64 [ 0, %230 ], [ %246, %241 ]
  %243 = getelementptr inbounds double, ptr %3, i64 %242
  %244 = load double, ptr %243, align 8, !tbaa !53
  %245 = fdiv double %244, %240
  store double %245, ptr %243, align 8, !tbaa !53
  %246 = add nuw nsw i64 %242, 1
  %247 = icmp eq i64 %246, 48
  br i1 %247, label %248, label %241, !llvm.loop !101

248:                                              ; preds = %241
  %249 = and i32 %2, 1
  %250 = lshr i32 %2, 1
  %251 = and i32 %250, 1
  %252 = add nuw nsw i32 %251, %249
  %253 = lshr i32 %2, 2
  %254 = and i32 %253, 1
  %255 = add nuw nsw i32 %252, %254
  %256 = zext nneg i32 %255 to i64
  %257 = and i32 %2, 8
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %265, label %259

259:                                              ; preds = %248
  %260 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %261 = load i32, ptr %260, align 8, !tbaa !75
  %262 = icmp ne i32 %261, 0
  %263 = zext i1 %262 to i64
  %264 = add nuw nsw i64 %263, %256
  br label %265

265:                                              ; preds = %259, %248
  %266 = phi i64 [ %256, %248 ], [ %264, %259 ]
  %267 = and i32 %2, 32
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %275, label %269

269:                                              ; preds = %265
  %270 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %271 = load i32, ptr %270, align 4, !tbaa !57
  %272 = icmp eq i32 %271, 12
  %273 = zext i1 %272 to i64
  %274 = add nuw nsw i64 %266, %273
  br label %275

275:                                              ; preds = %265, %269
  %276 = phi i64 [ %266, %265 ], [ %274, %269 ]
  %277 = uitofp i64 %276 to double
  %278 = getelementptr inbounds double, ptr %3, i64 47
  %279 = load double, ptr %278, align 8, !tbaa !53
  %280 = fdiv double %279, %277
  store double %280, ptr %278, align 8, !tbaa !53
  ret i32 %231
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @GetNormalizedCrossCorrelationDistortion(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca [4096 x i8], align 16
  %7 = tail call ptr @GetImageChannelStatistics(ptr noundef %0, ptr noundef %4) #12
  %8 = tail call ptr @GetImageChannelStatistics(ptr noundef %1, ptr noundef %4) #12
  %9 = icmp eq ptr %7, null
  %10 = icmp eq ptr %8, null
  %11 = select i1 %9, i1 true, i1 %10
  br i1 %11, label %21, label %12

12:                                               ; preds = %5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %3, i8 0, i64 384, i1 false), !tbaa !53
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %14 = load i64, ptr %13, align 8, !tbaa !54
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %16 = load i64, ptr %15, align 8, !tbaa !55
  %17 = tail call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %4) #12
  %18 = tail call ptr @AcquireVirtualCacheView(ptr noundef %1, ptr noundef %4) #12
  %19 = load i64, ptr %15, align 8, !tbaa !55
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %27, label %250

21:                                               ; preds = %5
  br i1 %9, label %24, label %22

22:                                               ; preds = %21
  %23 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %7) #12
  br label %24

24:                                               ; preds = %22, %21
  br i1 %10, label %350, label %25

25:                                               ; preds = %24
  %26 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %8) #12
  br label %350

27:                                               ; preds = %12
  %28 = uitofp i64 %14 to float
  %29 = uitofp i64 %16 to float
  %30 = tail call float @llvm.fmuladd.f32(float %28, float %29, float -1.000000e+00)
  %31 = fdiv float 1.000000e+00, %30
  %32 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  %33 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %34 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 6
  %35 = and i32 %2, 1
  %36 = icmp eq i32 %35, 0
  %37 = fpext float %31 to double
  %38 = fmul double %37, 0x3EF0001000100010
  %39 = getelementptr inbounds %struct._ChannelStatistics, ptr %7, i64 1, i32 7
  %40 = getelementptr inbounds %struct._ChannelStatistics, ptr %8, i64 1, i32 7
  %41 = getelementptr inbounds double, ptr %3, i64 1
  %42 = and i32 %2, 2
  %43 = icmp eq i32 %42, 0
  %44 = fpext float %31 to double
  %45 = fmul double %44, 0x3EF0001000100010
  %46 = getelementptr inbounds %struct._ChannelStatistics, ptr %7, i64 2, i32 7
  %47 = getelementptr inbounds %struct._ChannelStatistics, ptr %8, i64 2, i32 7
  %48 = getelementptr inbounds double, ptr %3, i64 2
  %49 = and i32 %2, 4
  %50 = icmp eq i32 %49, 0
  %51 = fpext float %31 to double
  %52 = fmul double %51, 0x3EF0001000100010
  %53 = getelementptr inbounds %struct._ChannelStatistics, ptr %7, i64 4, i32 7
  %54 = getelementptr inbounds %struct._ChannelStatistics, ptr %8, i64 4, i32 7
  %55 = getelementptr inbounds double, ptr %3, i64 4
  %56 = and i32 %2, 8
  %57 = icmp eq i32 %56, 0
  %58 = fpext float %31 to double
  %59 = fmul double %58, 0x3EF0001000100010
  %60 = getelementptr inbounds %struct._ChannelStatistics, ptr %7, i64 8, i32 7
  %61 = getelementptr inbounds %struct._ChannelStatistics, ptr %8, i64 8, i32 7
  %62 = getelementptr inbounds double, ptr %3, i64 8
  %63 = and i32 %2, 32
  %64 = icmp eq i32 %63, 0
  %65 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %66 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %67 = fpext float %31 to double
  %68 = fmul double %67, 0x3EF0001000100010
  %69 = getelementptr inbounds %struct._ChannelStatistics, ptr %7, i64 32, i32 7
  %70 = getelementptr inbounds %struct._ChannelStatistics, ptr %8, i64 32, i32 7
  %71 = getelementptr inbounds double, ptr %3, i64 32
  %72 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %73 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %74 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %75

75:                                               ; preds = %27, %244
  %76 = phi i64 [ 0, %27 ], [ %247, %244 ]
  %77 = phi i32 [ 1, %27 ], [ %246, %244 ]
  %78 = phi i64 [ 0, %27 ], [ %245, %244 ]
  %79 = icmp eq i32 %77, 0
  br i1 %79, label %244, label %80

80:                                               ; preds = %75
  %81 = load i64, ptr %13, align 8, !tbaa !54
  %82 = call ptr @GetCacheViewVirtualPixels(ptr noundef %17, i64 noundef 0, i64 noundef %76, i64 noundef %81, i64 noundef 1, ptr noundef %4) #13
  %83 = load i64, ptr %32, align 8, !tbaa !54
  %84 = call ptr @GetCacheViewVirtualPixels(ptr noundef %18, i64 noundef 0, i64 noundef %76, i64 noundef %83, i64 noundef 1, ptr noundef %4) #13
  %85 = icmp eq ptr %82, null
  %86 = icmp eq ptr %84, null
  %87 = select i1 %85, i1 true, i1 %86
  br i1 %87, label %244, label %88

88:                                               ; preds = %80
  %89 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %17) #12
  %90 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %18) #12
  %91 = load i64, ptr %13, align 8, !tbaa !54
  %92 = icmp sgt i64 %91, 0
  br i1 %92, label %93, label %232

93:                                               ; preds = %88
  %94 = load i32, ptr %33, align 8, !tbaa !75
  %95 = icmp eq i32 %94, 0
  %96 = load i32, ptr %34, align 8, !tbaa !75
  %97 = icmp eq i32 %96, 0
  %98 = or i1 %57, %95
  %99 = icmp eq ptr %89, null
  %100 = icmp eq ptr %90, null
  br label %101

101:                                              ; preds = %93, %227
  %102 = phi i64 [ 0, %93 ], [ %230, %227 ]
  %103 = phi ptr [ %84, %93 ], [ %229, %227 ]
  %104 = phi ptr [ %82, %93 ], [ %228, %227 ]
  br i1 %95, label %110, label %105

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct._PixelPacket, ptr %104, i64 0, i32 3
  %107 = load i16, ptr %106, align 2, !tbaa !72
  %108 = xor i16 %107, -1
  %109 = zext i16 %108 to i32
  br label %110

110:                                              ; preds = %101, %105
  %111 = phi i32 [ %109, %105 ], [ 65535, %101 ]
  %112 = sitofp i32 %111 to double
  %113 = fmul double %112, 0x3EF0001000100010
  %114 = fptrunc double %113 to float
  br i1 %97, label %120, label %115

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct._PixelPacket, ptr %103, i64 0, i32 3
  %117 = load i16, ptr %116, align 2, !tbaa !72
  %118 = xor i16 %117, -1
  %119 = zext i16 %118 to i32
  br label %120

120:                                              ; preds = %110, %115
  %121 = phi i32 [ %119, %115 ], [ 65535, %110 ]
  %122 = sitofp i32 %121 to double
  %123 = fmul double %122, 0x3EF0001000100010
  %124 = fptrunc double %123 to float
  br i1 %36, label %143, label %125

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct._PixelPacket, ptr %104, i64 0, i32 2
  %127 = load i16, ptr %126, align 2, !tbaa !69
  %128 = uitofp i16 %127 to float
  %129 = fmul float %114, %128
  %130 = fpext float %129 to double
  %131 = load double, ptr %39, align 8, !tbaa !102
  %132 = fsub double %130, %131
  %133 = fmul double %38, %132
  %134 = getelementptr inbounds %struct._PixelPacket, ptr %103, i64 0, i32 2
  %135 = load i16, ptr %134, align 2, !tbaa !69
  %136 = uitofp i16 %135 to float
  %137 = fmul float %124, %136
  %138 = fpext float %137 to double
  %139 = load double, ptr %40, align 8, !tbaa !102
  %140 = fsub double %138, %139
  %141 = load double, ptr %41, align 8, !tbaa !53
  %142 = call double @llvm.fmuladd.f64(double %133, double %140, double %141)
  store double %142, ptr %41, align 8, !tbaa !53
  br label %143

143:                                              ; preds = %125, %120
  br i1 %43, label %162, label %144

144:                                              ; preds = %143
  %145 = getelementptr inbounds %struct._PixelPacket, ptr %104, i64 0, i32 1
  %146 = load i16, ptr %145, align 2, !tbaa !70
  %147 = uitofp i16 %146 to float
  %148 = fmul float %114, %147
  %149 = fpext float %148 to double
  %150 = load double, ptr %46, align 8, !tbaa !102
  %151 = fsub double %149, %150
  %152 = fmul double %45, %151
  %153 = getelementptr inbounds %struct._PixelPacket, ptr %103, i64 0, i32 1
  %154 = load i16, ptr %153, align 2, !tbaa !70
  %155 = uitofp i16 %154 to float
  %156 = fmul float %124, %155
  %157 = fpext float %156 to double
  %158 = load double, ptr %47, align 8, !tbaa !102
  %159 = fsub double %157, %158
  %160 = load double, ptr %48, align 8, !tbaa !53
  %161 = call double @llvm.fmuladd.f64(double %152, double %159, double %160)
  store double %161, ptr %48, align 8, !tbaa !53
  br label %162

162:                                              ; preds = %144, %143
  br i1 %50, label %179, label %163

163:                                              ; preds = %162
  %164 = load i16, ptr %104, align 2, !tbaa !71
  %165 = uitofp i16 %164 to float
  %166 = fmul float %114, %165
  %167 = fpext float %166 to double
  %168 = load double, ptr %53, align 8, !tbaa !102
  %169 = fsub double %167, %168
  %170 = fmul double %52, %169
  %171 = load i16, ptr %103, align 2, !tbaa !71
  %172 = uitofp i16 %171 to float
  %173 = fmul float %124, %172
  %174 = fpext float %173 to double
  %175 = load double, ptr %54, align 8, !tbaa !102
  %176 = fsub double %174, %175
  %177 = load double, ptr %55, align 8, !tbaa !53
  %178 = call double @llvm.fmuladd.f64(double %170, double %176, double %177)
  store double %178, ptr %55, align 8, !tbaa !53
  br label %179

179:                                              ; preds = %163, %162
  br i1 %98, label %194, label %180

180:                                              ; preds = %179
  %181 = getelementptr inbounds %struct._PixelPacket, ptr %104, i64 0, i32 3
  %182 = load i16, ptr %181, align 2, !tbaa !72
  %183 = uitofp i16 %182 to double
  %184 = load double, ptr %60, align 8, !tbaa !102
  %185 = fsub double %183, %184
  %186 = fmul double %59, %185
  %187 = getelementptr inbounds %struct._PixelPacket, ptr %103, i64 0, i32 3
  %188 = load i16, ptr %187, align 2, !tbaa !72
  %189 = uitofp i16 %188 to double
  %190 = load double, ptr %61, align 8, !tbaa !102
  %191 = fsub double %189, %190
  %192 = load double, ptr %62, align 8, !tbaa !53
  %193 = call double @llvm.fmuladd.f64(double %186, double %191, double %192)
  store double %193, ptr %62, align 8, !tbaa !53
  br label %194

194:                                              ; preds = %179, %180
  br i1 %64, label %227, label %195

195:                                              ; preds = %194
  %196 = load i32, ptr %65, align 4, !tbaa !57
  %197 = icmp eq i32 %196, 12
  br i1 %197, label %198, label %227

198:                                              ; preds = %195
  %199 = load i32, ptr %66, align 4, !tbaa !57
  %200 = icmp eq i32 %199, 12
  br i1 %200, label %201, label %227

201:                                              ; preds = %198
  br i1 %99, label %206, label %202

202:                                              ; preds = %201
  %203 = getelementptr inbounds i16, ptr %89, i64 %102
  %204 = load i16, ptr %203, align 2, !tbaa !74
  %205 = zext i16 %204 to i32
  br label %206

206:                                              ; preds = %201, %202
  %207 = phi i32 [ %205, %202 ], [ 0, %201 ]
  %208 = sitofp i32 %207 to float
  %209 = fmul float %114, %208
  %210 = fpext float %209 to double
  %211 = load double, ptr %69, align 8, !tbaa !102
  %212 = fsub double %210, %211
  %213 = fmul double %68, %212
  br i1 %100, label %218, label %214

214:                                              ; preds = %206
  %215 = getelementptr inbounds i16, ptr %90, i64 %102
  %216 = load i16, ptr %215, align 2, !tbaa !74
  %217 = zext i16 %216 to i32
  br label %218

218:                                              ; preds = %206, %214
  %219 = phi i32 [ %217, %214 ], [ 0, %206 ]
  %220 = sitofp i32 %219 to float
  %221 = fmul float %124, %220
  %222 = fpext float %221 to double
  %223 = load double, ptr %70, align 8, !tbaa !102
  %224 = fsub double %222, %223
  %225 = load double, ptr %71, align 8, !tbaa !53
  %226 = call double @llvm.fmuladd.f64(double %213, double %224, double %225)
  store double %226, ptr %71, align 8, !tbaa !53
  br label %227

227:                                              ; preds = %218, %198, %195, %194
  %228 = getelementptr inbounds %struct._PixelPacket, ptr %104, i64 1
  %229 = getelementptr inbounds %struct._PixelPacket, ptr %103, i64 1
  %230 = add nuw nsw i64 %102, 1
  %231 = icmp eq i64 %230, %91
  br i1 %231, label %232, label %101, !llvm.loop !104

232:                                              ; preds = %227, %88
  %233 = load ptr, ptr %72, align 8, !tbaa !105
  %234 = icmp eq ptr %233, null
  br i1 %234, label %244, label %235

235:                                              ; preds = %232
  %236 = add nsw i64 %78, 1
  %237 = load i64, ptr %15, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #12
  %238 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.13, ptr noundef nonnull %73) #12
  %239 = load ptr, ptr %72, align 8, !tbaa !105
  %240 = load ptr, ptr %74, align 8, !tbaa !106
  %241 = call i32 %239(ptr noundef nonnull %6, i64 noundef %78, i64 noundef %237, ptr noundef %240) #12
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #12
  %242 = icmp ne i32 %241, 0
  %243 = zext i1 %242 to i32
  br label %244

244:                                              ; preds = %232, %235, %80, %75
  %245 = phi i64 [ %78, %75 ], [ %78, %80 ], [ %236, %235 ], [ %78, %232 ]
  %246 = phi i32 [ 0, %75 ], [ 0, %80 ], [ %243, %235 ], [ 1, %232 ]
  %247 = add nuw nsw i64 %76, 1
  %248 = load i64, ptr %15, align 8, !tbaa !55
  %249 = icmp slt i64 %247, %248
  br i1 %249, label %75, label %250, !llvm.loop !107

250:                                              ; preds = %244, %12
  %251 = phi i32 [ 1, %12 ], [ %246, %244 ]
  %252 = call ptr @DestroyCacheView(ptr noundef %18) #12
  %253 = call ptr @DestroyCacheView(ptr noundef %17) #12
  br label %254

254:                                              ; preds = %250, %254
  %255 = phi i64 [ 0, %250 ], [ %270, %254 ]
  %256 = getelementptr inbounds %struct._ChannelStatistics, ptr %7, i64 %255, i32 9
  %257 = load double, ptr %256, align 8, !tbaa !108
  %258 = getelementptr inbounds %struct._ChannelStatistics, ptr %8, i64 %255, i32 9
  %259 = load double, ptr %258, align 8, !tbaa !108
  %260 = fmul double %257, %259
  %261 = fcmp olt double %260, 0.000000e+00
  %262 = select i1 %261, double 0.000000e+00, double %260
  %263 = fcmp ult double %262, 1.000000e-15
  %264 = fdiv double 1.000000e+00, %262
  %265 = fmul double %264, 6.553500e+04
  %266 = select i1 %263, double 0x440C6BD8BA3ED9CB, double %265
  %267 = getelementptr inbounds double, ptr %3, i64 %255
  %268 = load double, ptr %267, align 8, !tbaa !53
  %269 = fmul double %268, %266
  store double %269, ptr %267, align 8, !tbaa !53
  %270 = add nuw nsw i64 %255, 1
  %271 = icmp eq i64 %270, 47
  br i1 %271, label %272, label %254, !llvm.loop !109

272:                                              ; preds = %254
  %273 = getelementptr inbounds double, ptr %3, i64 47
  store double 0.000000e+00, ptr %273, align 8, !tbaa !53
  %274 = and i32 %2, 1
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %280, label %276

276:                                              ; preds = %272
  %277 = getelementptr inbounds double, ptr %3, i64 1
  %278 = load double, ptr %277, align 8, !tbaa !53
  %279 = call double @llvm.fmuladd.f64(double %278, double %278, double 0.000000e+00)
  store double %279, ptr %273, align 8, !tbaa !53
  br label %280

280:                                              ; preds = %276, %272
  %281 = and i32 %2, 2
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %288, label %283

283:                                              ; preds = %280
  %284 = getelementptr inbounds double, ptr %3, i64 2
  %285 = load double, ptr %284, align 8, !tbaa !53
  %286 = load double, ptr %273, align 8, !tbaa !53
  %287 = call double @llvm.fmuladd.f64(double %285, double %285, double %286)
  store double %287, ptr %273, align 8, !tbaa !53
  br label %288

288:                                              ; preds = %283, %280
  %289 = and i32 %2, 4
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %296, label %291

291:                                              ; preds = %288
  %292 = getelementptr inbounds double, ptr %3, i64 4
  %293 = load double, ptr %292, align 8, !tbaa !53
  %294 = load double, ptr %273, align 8, !tbaa !53
  %295 = call double @llvm.fmuladd.f64(double %293, double %293, double %294)
  store double %295, ptr %273, align 8, !tbaa !53
  br label %296

296:                                              ; preds = %291, %288
  %297 = and i32 %2, 8
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %308, label %299

299:                                              ; preds = %296
  %300 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %301 = load i32, ptr %300, align 8, !tbaa !75
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %308, label %303

303:                                              ; preds = %299
  %304 = getelementptr inbounds double, ptr %3, i64 8
  %305 = load double, ptr %304, align 8, !tbaa !53
  %306 = load double, ptr %273, align 8, !tbaa !53
  %307 = call double @llvm.fmuladd.f64(double %305, double %305, double %306)
  store double %307, ptr %273, align 8, !tbaa !53
  br label %308

308:                                              ; preds = %303, %299, %296
  %309 = and i32 %2, 32
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %320, label %311

311:                                              ; preds = %308
  %312 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %313 = load i32, ptr %312, align 4, !tbaa !57
  %314 = icmp eq i32 %313, 12
  br i1 %314, label %315, label %320

315:                                              ; preds = %311
  %316 = getelementptr inbounds double, ptr %3, i64 32
  %317 = load double, ptr %316, align 8, !tbaa !53
  %318 = load double, ptr %273, align 8, !tbaa !53
  %319 = call double @llvm.fmuladd.f64(double %317, double %317, double %318)
  store double %319, ptr %273, align 8, !tbaa !53
  br label %320

320:                                              ; preds = %315, %311, %308
  %321 = load double, ptr %273, align 8, !tbaa !53
  %322 = lshr i32 %2, 1
  %323 = and i32 %322, 1
  %324 = add nuw nsw i32 %323, %274
  %325 = lshr i32 %2, 2
  %326 = and i32 %325, 1
  %327 = add nuw nsw i32 %324, %326
  %328 = zext nneg i32 %327 to i64
  br i1 %298, label %335, label %329

329:                                              ; preds = %320
  %330 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %331 = load i32, ptr %330, align 8, !tbaa !75
  %332 = icmp ne i32 %331, 0
  %333 = zext i1 %332 to i64
  %334 = add nuw nsw i64 %333, %328
  br label %335

335:                                              ; preds = %329, %320
  %336 = phi i64 [ %328, %320 ], [ %334, %329 ]
  br i1 %310, label %343, label %337

337:                                              ; preds = %335
  %338 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %339 = load i32, ptr %338, align 4, !tbaa !57
  %340 = icmp eq i32 %339, 12
  %341 = zext i1 %340 to i64
  %342 = add nuw nsw i64 %336, %341
  br label %343

343:                                              ; preds = %335, %337
  %344 = phi i64 [ %336, %335 ], [ %342, %337 ]
  %345 = uitofp i64 %344 to double
  %346 = fdiv double %321, %345
  %347 = call double @sqrt(double noundef %346) #12
  store double %347, ptr %273, align 8, !tbaa !53
  %348 = call ptr @RelinquishMagickMemory(ptr noundef %8) #12
  %349 = call ptr @RelinquishMagickMemory(ptr noundef %7) #12
  br label %350

350:                                              ; preds = %24, %25, %343
  %351 = phi i32 [ %251, %343 ], [ 0, %25 ], [ 0, %24 ]
  ret i32 %351
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @GetPeakAbsoluteDistortion(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca [48 x double], align 16
  %7 = tail call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %4) #12
  %8 = tail call ptr @AcquireVirtualCacheView(ptr noundef %1, ptr noundef %4) #12
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %10 = load i64, ptr %9, align 8, !tbaa !55
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %251

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %14 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %16 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 6
  %17 = and i32 %2, 1
  %18 = icmp eq i32 %17, 0
  %19 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 1
  %20 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 47
  %21 = and i32 %2, 2
  %22 = icmp eq i32 %21, 0
  %23 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 2
  %24 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 47
  %25 = and i32 %2, 4
  %26 = icmp eq i32 %25, 0
  %27 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 4
  %28 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 47
  %29 = and i32 %2, 8
  %30 = icmp eq i32 %29, 0
  %31 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 8
  %32 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 47
  %33 = and i32 %2, 32
  %34 = icmp eq i32 %33, 0
  %35 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %36 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %37 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 32
  %38 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 47
  br label %39

39:                                               ; preds = %12, %246
  %40 = phi i32 [ 1, %12 ], [ %247, %246 ]
  %41 = phi i64 [ 0, %12 ], [ %248, %246 ]
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %6) #12
  %42 = icmp eq i32 %40, 0
  br i1 %42, label %246, label %43

43:                                               ; preds = %39
  %44 = load i64, ptr %13, align 8, !tbaa !54
  %45 = call ptr @GetCacheViewVirtualPixels(ptr noundef %7, i64 noundef 0, i64 noundef %41, i64 noundef %44, i64 noundef 1, ptr noundef %4) #13
  %46 = load i64, ptr %14, align 8, !tbaa !54
  %47 = call ptr @GetCacheViewVirtualPixels(ptr noundef %8, i64 noundef 0, i64 noundef %41, i64 noundef %46, i64 noundef 1, ptr noundef %4) #13
  %48 = icmp eq ptr %45, null
  %49 = icmp eq ptr %47, null
  %50 = select i1 %48, i1 true, i1 %49
  br i1 %50, label %246, label %51

51:                                               ; preds = %43
  %52 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %7) #12
  %53 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %8) #12
  %54 = call ptr @ResetMagickMemory(ptr noundef nonnull %6, i32 noundef 0, i64 noundef 384) #12
  %55 = load i64, ptr %13, align 8, !tbaa !54
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %57, label %234

57:                                               ; preds = %51
  %58 = load i32, ptr %15, align 8, !tbaa !75
  %59 = icmp eq i32 %58, 0
  %60 = load i32, ptr %16, align 8, !tbaa !75
  %61 = icmp eq i32 %60, 0
  %62 = or i1 %30, %59
  %63 = icmp eq ptr %52, null
  %64 = icmp eq ptr %53, null
  %65 = load double, ptr %19, align 8, !tbaa !53
  %66 = load double, ptr %20, align 8, !tbaa !53
  %67 = load double, ptr %23, align 16, !tbaa !53
  %68 = load double, ptr %27, align 16, !tbaa !53
  %69 = load double, ptr %31, align 16, !tbaa !53
  %70 = load double, ptr %37, align 16, !tbaa !53
  br label %71

71:                                               ; preds = %57, %227
  %72 = phi double [ %70, %57 ], [ %228, %227 ]
  %73 = phi double [ %69, %57 ], [ %190, %227 ]
  %74 = phi double [ %68, %57 ], [ %169, %227 ]
  %75 = phi double [ %67, %57 ], [ %147, %227 ]
  %76 = phi double [ %66, %57 ], [ %229, %227 ]
  %77 = phi double [ %65, %57 ], [ %124, %227 ]
  %78 = phi i64 [ 0, %57 ], [ %232, %227 ]
  %79 = phi ptr [ %47, %57 ], [ %231, %227 ]
  %80 = phi ptr [ %45, %57 ], [ %230, %227 ]
  br i1 %59, label %86, label %81

81:                                               ; preds = %71
  %82 = getelementptr inbounds %struct._PixelPacket, ptr %80, i64 0, i32 3
  %83 = load i16, ptr %82, align 2, !tbaa !72
  %84 = xor i16 %83, -1
  %85 = zext i16 %84 to i32
  br label %86

86:                                               ; preds = %71, %81
  %87 = phi i32 [ %85, %81 ], [ 65535, %71 ]
  %88 = sitofp i32 %87 to double
  %89 = fmul double %88, 0x3EF0001000100010
  %90 = fptrunc double %89 to float
  br i1 %61, label %96, label %91

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct._PixelPacket, ptr %79, i64 0, i32 3
  %93 = load i16, ptr %92, align 2, !tbaa !72
  %94 = xor i16 %93, -1
  %95 = zext i16 %94 to i32
  br label %96

96:                                               ; preds = %86, %91
  %97 = phi i32 [ %95, %91 ], [ 65535, %86 ]
  %98 = sitofp i32 %97 to double
  %99 = fmul double %98, 0x3EF0001000100010
  %100 = fptrunc double %99 to float
  br i1 %18, label %122, label %101

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct._PixelPacket, ptr %80, i64 0, i32 2
  %103 = load i16, ptr %102, align 2, !tbaa !69
  %104 = uitofp i16 %103 to float
  %105 = getelementptr inbounds %struct._PixelPacket, ptr %79, i64 0, i32 2
  %106 = load i16, ptr %105, align 2, !tbaa !69
  %107 = uitofp i16 %106 to float
  %108 = fneg float %100
  %109 = fmul float %108, %107
  %110 = call float @llvm.fmuladd.f32(float %90, float %104, float %109)
  %111 = call float @llvm.fabs.f32(float %110)
  %112 = fpext float %111 to double
  %113 = fmul double %112, 0x3EF0001000100010
  %114 = fptrunc double %113 to float
  %115 = fpext float %114 to double
  %116 = fcmp olt double %77, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %101
  store double %115, ptr %19, align 8, !tbaa !53
  br label %118

118:                                              ; preds = %117, %101
  %119 = phi double [ %115, %117 ], [ %77, %101 ]
  %120 = fcmp olt double %76, %115
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  store double %115, ptr %20, align 8, !tbaa !53
  br label %122

122:                                              ; preds = %118, %121, %96
  %123 = phi double [ %76, %118 ], [ %115, %121 ], [ %76, %96 ]
  %124 = phi double [ %119, %118 ], [ %119, %121 ], [ %77, %96 ]
  br i1 %22, label %146, label %125

125:                                              ; preds = %122
  %126 = getelementptr inbounds %struct._PixelPacket, ptr %80, i64 0, i32 1
  %127 = load i16, ptr %126, align 2, !tbaa !70
  %128 = uitofp i16 %127 to float
  %129 = getelementptr inbounds %struct._PixelPacket, ptr %79, i64 0, i32 1
  %130 = load i16, ptr %129, align 2, !tbaa !70
  %131 = uitofp i16 %130 to float
  %132 = fneg float %100
  %133 = fmul float %132, %131
  %134 = call float @llvm.fmuladd.f32(float %90, float %128, float %133)
  %135 = call float @llvm.fabs.f32(float %134)
  %136 = fpext float %135 to double
  %137 = fmul double %136, 0x3EF0001000100010
  %138 = fptrunc double %137 to float
  %139 = fpext float %138 to double
  %140 = fcmp olt double %75, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %125
  store double %139, ptr %23, align 16, !tbaa !53
  br label %142

142:                                              ; preds = %141, %125
  %143 = phi double [ %139, %141 ], [ %75, %125 ]
  %144 = fcmp olt double %123, %139
  br i1 %144, label %145, label %146

145:                                              ; preds = %142
  store double %139, ptr %24, align 8, !tbaa !53
  br label %146

146:                                              ; preds = %142, %145, %122
  %147 = phi double [ %143, %142 ], [ %143, %145 ], [ %75, %122 ]
  %148 = phi double [ %123, %142 ], [ %139, %145 ], [ %123, %122 ]
  br i1 %26, label %168, label %149

149:                                              ; preds = %146
  %150 = load i16, ptr %80, align 2, !tbaa !71
  %151 = uitofp i16 %150 to float
  %152 = load i16, ptr %79, align 2, !tbaa !71
  %153 = uitofp i16 %152 to float
  %154 = fneg float %100
  %155 = fmul float %154, %153
  %156 = call float @llvm.fmuladd.f32(float %90, float %151, float %155)
  %157 = call float @llvm.fabs.f32(float %156)
  %158 = fpext float %157 to double
  %159 = fmul double %158, 0x3EF0001000100010
  %160 = fptrunc double %159 to float
  %161 = fpext float %160 to double
  %162 = fcmp olt double %74, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %149
  store double %161, ptr %27, align 16, !tbaa !53
  br label %164

164:                                              ; preds = %163, %149
  %165 = phi double [ %161, %163 ], [ %74, %149 ]
  %166 = fcmp olt double %148, %161
  br i1 %166, label %167, label %168

167:                                              ; preds = %164
  store double %161, ptr %28, align 8, !tbaa !53
  br label %168

168:                                              ; preds = %164, %167, %146
  %169 = phi double [ %165, %164 ], [ %165, %167 ], [ %74, %146 ]
  %170 = phi double [ %148, %164 ], [ %161, %167 ], [ %148, %146 ]
  br i1 %62, label %189, label %171

171:                                              ; preds = %168
  %172 = getelementptr inbounds %struct._PixelPacket, ptr %80, i64 0, i32 3
  %173 = load i16, ptr %172, align 2, !tbaa !72
  %174 = uitofp i16 %173 to double
  %175 = getelementptr inbounds %struct._PixelPacket, ptr %79, i64 0, i32 3
  %176 = load i16, ptr %175, align 2, !tbaa !72
  %177 = uitofp i16 %176 to double
  %178 = fsub double %174, %177
  %179 = call double @llvm.fabs.f64(double %178)
  %180 = fmul double %179, 0x3EF0001000100010
  %181 = fptrunc double %180 to float
  %182 = fpext float %181 to double
  %183 = fcmp olt double %73, %182
  br i1 %183, label %184, label %185

184:                                              ; preds = %171
  store double %182, ptr %31, align 16, !tbaa !53
  br label %185

185:                                              ; preds = %184, %171
  %186 = phi double [ %182, %184 ], [ %73, %171 ]
  %187 = fcmp olt double %170, %182
  br i1 %187, label %188, label %189

188:                                              ; preds = %185
  store double %182, ptr %32, align 8, !tbaa !53
  br label %189

189:                                              ; preds = %168, %185, %188
  %190 = phi double [ %73, %168 ], [ %186, %185 ], [ %186, %188 ]
  %191 = phi double [ %170, %168 ], [ %170, %185 ], [ %182, %188 ]
  br i1 %34, label %227, label %192

192:                                              ; preds = %189
  %193 = load i32, ptr %35, align 4, !tbaa !57
  %194 = icmp eq i32 %193, 12
  br i1 %194, label %195, label %227

195:                                              ; preds = %192
  %196 = load i32, ptr %36, align 4, !tbaa !57
  %197 = icmp eq i32 %196, 12
  br i1 %197, label %198, label %227

198:                                              ; preds = %195
  br i1 %63, label %203, label %199

199:                                              ; preds = %198
  %200 = getelementptr inbounds i16, ptr %52, i64 %78
  %201 = load i16, ptr %200, align 2, !tbaa !74
  %202 = zext i16 %201 to i32
  br label %203

203:                                              ; preds = %198, %199
  %204 = phi i32 [ %202, %199 ], [ 0, %198 ]
  %205 = sitofp i32 %204 to float
  br i1 %64, label %210, label %206

206:                                              ; preds = %203
  %207 = getelementptr inbounds i16, ptr %53, i64 %78
  %208 = load i16, ptr %207, align 2, !tbaa !74
  %209 = zext i16 %208 to i32
  br label %210

210:                                              ; preds = %203, %206
  %211 = phi i32 [ %209, %206 ], [ 0, %203 ]
  %212 = sitofp i32 %211 to float
  %213 = fneg float %100
  %214 = fmul float %213, %212
  %215 = call float @llvm.fmuladd.f32(float %90, float %205, float %214)
  %216 = call float @llvm.fabs.f32(float %215)
  %217 = fpext float %216 to double
  %218 = fmul double %217, 0x3EF0001000100010
  %219 = fptrunc double %218 to float
  %220 = fpext float %219 to double
  %221 = fcmp olt double %72, %220
  br i1 %221, label %222, label %223

222:                                              ; preds = %210
  store double %220, ptr %37, align 16, !tbaa !53
  br label %223

223:                                              ; preds = %222, %210
  %224 = phi double [ %220, %222 ], [ %72, %210 ]
  %225 = fcmp olt double %191, %220
  br i1 %225, label %226, label %227

226:                                              ; preds = %223
  store double %220, ptr %38, align 8, !tbaa !53
  br label %227

227:                                              ; preds = %223, %226, %195, %192, %189
  %228 = phi double [ %224, %223 ], [ %224, %226 ], [ %72, %195 ], [ %72, %192 ], [ %72, %189 ]
  %229 = phi double [ %191, %223 ], [ %220, %226 ], [ %191, %195 ], [ %191, %192 ], [ %191, %189 ]
  %230 = getelementptr inbounds %struct._PixelPacket, ptr %80, i64 1
  %231 = getelementptr inbounds %struct._PixelPacket, ptr %79, i64 1
  %232 = add nuw nsw i64 %78, 1
  %233 = icmp eq i64 %232, %55
  br i1 %233, label %234, label %71, !llvm.loop !110

234:                                              ; preds = %227, %51
  br label %235

235:                                              ; preds = %234, %243
  %236 = phi i64 [ %244, %243 ], [ 0, %234 ]
  %237 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 %236
  %238 = load double, ptr %237, align 8, !tbaa !53
  %239 = getelementptr inbounds double, ptr %3, i64 %236
  %240 = load double, ptr %239, align 8, !tbaa !53
  %241 = fcmp ogt double %238, %240
  br i1 %241, label %242, label %243

242:                                              ; preds = %235
  store double %238, ptr %239, align 8, !tbaa !53
  br label %243

243:                                              ; preds = %235, %242
  %244 = add nuw nsw i64 %236, 1
  %245 = icmp eq i64 %244, 48
  br i1 %245, label %246, label %235, !llvm.loop !111

246:                                              ; preds = %243, %43, %39
  %247 = phi i32 [ 0, %39 ], [ 0, %43 ], [ 1, %243 ]
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %6) #12
  %248 = add nuw nsw i64 %41, 1
  %249 = load i64, ptr %9, align 8, !tbaa !55
  %250 = icmp slt i64 %248, %249
  br i1 %250, label %39, label %251, !llvm.loop !112

251:                                              ; preds = %246, %5
  %252 = phi i32 [ 1, %5 ], [ %247, %246 ]
  %253 = call ptr @DestroyCacheView(ptr noundef %8) #12
  %254 = call ptr @DestroyCacheView(ptr noundef %7) #12
  ret i32 %252
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @GetPeakSignalToNoiseRatio(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = tail call fastcc i32 @GetMeanSquaredDistortion(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4), !range !56
  %7 = and i32 %2, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds double, ptr %3, i64 1
  %11 = load double, ptr %10, align 8, !tbaa !53
  %12 = tail call double @sqrt(double noundef %11) #12
  %13 = fdiv double 1.000000e+00, %12
  %14 = tail call double @llvm.fabs.f64(double %13)
  %15 = fcmp olt double %14, 0x3DA5FD7FE1796495
  br i1 %15, label %19, label %16

16:                                               ; preds = %9
  %17 = tail call double @log10(double noundef %14) #12
  %18 = fmul double %17, 2.000000e+01
  br label %19

19:                                               ; preds = %9, %16
  %20 = phi double [ %18, %16 ], [ -2.200000e+02, %9 ]
  store double %20, ptr %10, align 8, !tbaa !53
  br label %21

21:                                               ; preds = %19, %5
  %22 = and i32 %2, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %36, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds double, ptr %3, i64 2
  %26 = load double, ptr %25, align 8, !tbaa !53
  %27 = tail call double @sqrt(double noundef %26) #12
  %28 = fdiv double 1.000000e+00, %27
  %29 = tail call double @llvm.fabs.f64(double %28)
  %30 = fcmp olt double %29, 0x3DA5FD7FE1796495
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = tail call double @log10(double noundef %29) #12
  %33 = fmul double %32, 2.000000e+01
  br label %34

34:                                               ; preds = %24, %31
  %35 = phi double [ %33, %31 ], [ -2.200000e+02, %24 ]
  store double %35, ptr %25, align 8, !tbaa !53
  br label %36

36:                                               ; preds = %34, %21
  %37 = and i32 %2, 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %51, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds double, ptr %3, i64 4
  %41 = load double, ptr %40, align 8, !tbaa !53
  %42 = tail call double @sqrt(double noundef %41) #12
  %43 = fdiv double 1.000000e+00, %42
  %44 = tail call double @llvm.fabs.f64(double %43)
  %45 = fcmp olt double %44, 0x3DA5FD7FE1796495
  br i1 %45, label %49, label %46

46:                                               ; preds = %39
  %47 = tail call double @log10(double noundef %44) #12
  %48 = fmul double %47, 2.000000e+01
  br label %49

49:                                               ; preds = %39, %46
  %50 = phi double [ %48, %46 ], [ -2.200000e+02, %39 ]
  store double %50, ptr %40, align 8, !tbaa !53
  br label %51

51:                                               ; preds = %49, %36
  %52 = and i32 %2, 8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %70, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %56 = load i32, ptr %55, align 8, !tbaa !75
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %70, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds double, ptr %3, i64 8
  %60 = load double, ptr %59, align 8, !tbaa !53
  %61 = tail call double @sqrt(double noundef %60) #12
  %62 = fdiv double 1.000000e+00, %61
  %63 = tail call double @llvm.fabs.f64(double %62)
  %64 = fcmp olt double %63, 0x3DA5FD7FE1796495
  br i1 %64, label %68, label %65

65:                                               ; preds = %58
  %66 = tail call double @log10(double noundef %63) #12
  %67 = fmul double %66, 2.000000e+01
  br label %68

68:                                               ; preds = %58, %65
  %69 = phi double [ %67, %65 ], [ -2.200000e+02, %58 ]
  store double %69, ptr %59, align 8, !tbaa !53
  br label %70

70:                                               ; preds = %68, %54, %51
  %71 = and i32 %2, 32
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %89, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %75 = load i32, ptr %74, align 4, !tbaa !57
  %76 = icmp eq i32 %75, 12
  br i1 %76, label %77, label %89

77:                                               ; preds = %73
  %78 = getelementptr inbounds double, ptr %3, i64 32
  %79 = load double, ptr %78, align 8, !tbaa !53
  %80 = tail call double @sqrt(double noundef %79) #12
  %81 = fdiv double 1.000000e+00, %80
  %82 = tail call double @llvm.fabs.f64(double %81)
  %83 = fcmp olt double %82, 0x3DA5FD7FE1796495
  br i1 %83, label %87, label %84

84:                                               ; preds = %77
  %85 = tail call double @log10(double noundef %82) #12
  %86 = fmul double %85, 2.000000e+01
  br label %87

87:                                               ; preds = %77, %84
  %88 = phi double [ %86, %84 ], [ -2.200000e+02, %77 ]
  store double %88, ptr %78, align 8, !tbaa !53
  br label %89

89:                                               ; preds = %87, %73, %70
  %90 = getelementptr inbounds double, ptr %3, i64 47
  %91 = load double, ptr %90, align 8, !tbaa !53
  %92 = tail call double @sqrt(double noundef %91) #12
  %93 = fdiv double 1.000000e+00, %92
  %94 = tail call double @llvm.fabs.f64(double %93)
  %95 = fcmp olt double %94, 0x3DA5FD7FE1796495
  br i1 %95, label %99, label %96

96:                                               ; preds = %89
  %97 = tail call double @log10(double noundef %94) #12
  %98 = fmul double %97, 2.000000e+01
  br label %99

99:                                               ; preds = %89, %96
  %100 = phi double [ %98, %96 ], [ -2.200000e+02, %89 ]
  store double %100, ptr %90, align 8, !tbaa !53
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @GetPerceptualHashDistortion(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = tail call ptr @GetImageChannelPerceptualHash(ptr noundef %0, ptr noundef %4) #12
  %7 = icmp eq ptr %6, null
  br i1 %7, label %218, label %8

8:                                                ; preds = %5
  %9 = tail call ptr @GetImageChannelPerceptualHash(ptr noundef %1, ptr noundef %4) #12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %215, label %11

11:                                               ; preds = %8
  %12 = and i32 %2, 1
  %13 = icmp eq i32 %12, 0
  %14 = and i32 %2, 2
  %15 = icmp eq i32 %14, 0
  %16 = and i32 %2, 4
  %17 = icmp eq i32 %16, 0
  %18 = and i32 %2, 8
  %19 = icmp eq i32 %18, 0
  %20 = and i32 %2, 32
  %21 = icmp eq i32 %20, 0
  %22 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %9, i64 1
  %23 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %6, i64 1
  %24 = getelementptr inbounds double, ptr %3, i64 1
  %25 = getelementptr inbounds double, ptr %3, i64 47
  %26 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %9, i64 2
  %27 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %6, i64 2
  %28 = getelementptr inbounds double, ptr %3, i64 2
  %29 = getelementptr inbounds double, ptr %3, i64 47
  %30 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %9, i64 4
  %31 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %6, i64 4
  %32 = getelementptr inbounds double, ptr %3, i64 4
  %33 = getelementptr inbounds double, ptr %3, i64 47
  %34 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %35 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 6
  %36 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %9, i64 8
  %37 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %6, i64 8
  %38 = getelementptr inbounds double, ptr %3, i64 8
  %39 = getelementptr inbounds double, ptr %3, i64 47
  %40 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %41 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %42 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %9, i64 32
  %43 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %6, i64 32
  %44 = getelementptr inbounds double, ptr %3, i64 32
  %45 = getelementptr inbounds double, ptr %3, i64 47
  br label %71

46:                                               ; preds = %139
  %47 = and i32 %2, 1
  %48 = icmp eq i32 %47, 0
  %49 = and i32 %2, 2
  %50 = icmp eq i32 %49, 0
  %51 = and i32 %2, 4
  %52 = icmp eq i32 %51, 0
  %53 = and i32 %2, 8
  %54 = icmp eq i32 %53, 0
  %55 = and i32 %2, 32
  %56 = icmp eq i32 %55, 0
  %57 = getelementptr inbounds double, ptr %3, i64 1
  %58 = getelementptr inbounds double, ptr %3, i64 47
  %59 = getelementptr inbounds double, ptr %3, i64 2
  %60 = getelementptr inbounds double, ptr %3, i64 47
  %61 = getelementptr inbounds double, ptr %3, i64 4
  %62 = getelementptr inbounds double, ptr %3, i64 47
  %63 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %64 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 6
  %65 = getelementptr inbounds double, ptr %3, i64 8
  %66 = getelementptr inbounds double, ptr %3, i64 47
  %67 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %68 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %69 = getelementptr inbounds double, ptr %3, i64 32
  %70 = getelementptr inbounds double, ptr %3, i64 47
  br label %142

71:                                               ; preds = %11, %139
  %72 = phi i64 [ 0, %11 ], [ %140, %139 ]
  br i1 %13, label %83, label %73

73:                                               ; preds = %71
  %74 = getelementptr inbounds [32 x double], ptr %22, i64 0, i64 %72
  %75 = load double, ptr %74, align 8, !tbaa !53
  %76 = getelementptr inbounds [32 x double], ptr %23, i64 0, i64 %72
  %77 = load double, ptr %76, align 8, !tbaa !53
  %78 = fsub double %75, %77
  %79 = load double, ptr %24, align 8, !tbaa !53
  %80 = tail call double @llvm.fmuladd.f64(double %78, double %78, double %79)
  store double %80, ptr %24, align 8, !tbaa !53
  %81 = load double, ptr %25, align 8, !tbaa !53
  %82 = tail call double @llvm.fmuladd.f64(double %78, double %78, double %81)
  store double %82, ptr %25, align 8, !tbaa !53
  br label %83

83:                                               ; preds = %73, %71
  br i1 %15, label %94, label %84

84:                                               ; preds = %83
  %85 = getelementptr inbounds [32 x double], ptr %26, i64 0, i64 %72
  %86 = load double, ptr %85, align 8, !tbaa !53
  %87 = getelementptr inbounds [32 x double], ptr %27, i64 0, i64 %72
  %88 = load double, ptr %87, align 8, !tbaa !53
  %89 = fsub double %86, %88
  %90 = load double, ptr %28, align 8, !tbaa !53
  %91 = tail call double @llvm.fmuladd.f64(double %89, double %89, double %90)
  store double %91, ptr %28, align 8, !tbaa !53
  %92 = load double, ptr %29, align 8, !tbaa !53
  %93 = tail call double @llvm.fmuladd.f64(double %89, double %89, double %92)
  store double %93, ptr %29, align 8, !tbaa !53
  br label %94

94:                                               ; preds = %84, %83
  br i1 %17, label %105, label %95

95:                                               ; preds = %94
  %96 = getelementptr inbounds [32 x double], ptr %30, i64 0, i64 %72
  %97 = load double, ptr %96, align 8, !tbaa !53
  %98 = getelementptr inbounds [32 x double], ptr %31, i64 0, i64 %72
  %99 = load double, ptr %98, align 8, !tbaa !53
  %100 = fsub double %97, %99
  %101 = load double, ptr %32, align 8, !tbaa !53
  %102 = tail call double @llvm.fmuladd.f64(double %100, double %100, double %101)
  store double %102, ptr %32, align 8, !tbaa !53
  %103 = load double, ptr %33, align 8, !tbaa !53
  %104 = tail call double @llvm.fmuladd.f64(double %100, double %100, double %103)
  store double %104, ptr %33, align 8, !tbaa !53
  br label %105

105:                                              ; preds = %95, %94
  br i1 %19, label %122, label %106

106:                                              ; preds = %105
  %107 = load i32, ptr %34, align 8, !tbaa !75
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %122, label %109

109:                                              ; preds = %106
  %110 = load i32, ptr %35, align 8, !tbaa !75
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %122, label %112

112:                                              ; preds = %109
  %113 = getelementptr inbounds [32 x double], ptr %36, i64 0, i64 %72
  %114 = load double, ptr %113, align 8, !tbaa !53
  %115 = getelementptr inbounds [32 x double], ptr %37, i64 0, i64 %72
  %116 = load double, ptr %115, align 8, !tbaa !53
  %117 = fsub double %114, %116
  %118 = load double, ptr %38, align 8, !tbaa !53
  %119 = tail call double @llvm.fmuladd.f64(double %117, double %117, double %118)
  store double %119, ptr %38, align 8, !tbaa !53
  %120 = load double, ptr %39, align 8, !tbaa !53
  %121 = tail call double @llvm.fmuladd.f64(double %117, double %117, double %120)
  store double %121, ptr %39, align 8, !tbaa !53
  br label %122

122:                                              ; preds = %112, %109, %106, %105
  br i1 %21, label %139, label %123

123:                                              ; preds = %122
  %124 = load i32, ptr %40, align 4, !tbaa !57
  %125 = icmp eq i32 %124, 12
  br i1 %125, label %126, label %139

126:                                              ; preds = %123
  %127 = load i32, ptr %41, align 4, !tbaa !57
  %128 = icmp eq i32 %127, 12
  br i1 %128, label %129, label %139

129:                                              ; preds = %126
  %130 = getelementptr inbounds [32 x double], ptr %42, i64 0, i64 %72
  %131 = load double, ptr %130, align 8, !tbaa !53
  %132 = getelementptr inbounds [32 x double], ptr %43, i64 0, i64 %72
  %133 = load double, ptr %132, align 8, !tbaa !53
  %134 = fsub double %131, %133
  %135 = load double, ptr %44, align 8, !tbaa !53
  %136 = tail call double @llvm.fmuladd.f64(double %134, double %134, double %135)
  store double %136, ptr %44, align 8, !tbaa !53
  %137 = load double, ptr %45, align 8, !tbaa !53
  %138 = tail call double @llvm.fmuladd.f64(double %134, double %134, double %137)
  store double %138, ptr %45, align 8, !tbaa !53
  br label %139

139:                                              ; preds = %122, %123, %126, %129
  %140 = add nuw nsw i64 %72, 1
  %141 = icmp eq i64 %140, 7
  br i1 %141, label %46, label %71, !llvm.loop !113

142:                                              ; preds = %46, %210
  %143 = phi i64 [ 0, %46 ], [ %211, %210 ]
  br i1 %48, label %154, label %144

144:                                              ; preds = %142
  %145 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %9, i64 1, i32 1, i64 %143
  %146 = load double, ptr %145, align 8, !tbaa !53
  %147 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %6, i64 1, i32 1, i64 %143
  %148 = load double, ptr %147, align 8, !tbaa !53
  %149 = fsub double %146, %148
  %150 = load double, ptr %57, align 8, !tbaa !53
  %151 = tail call double @llvm.fmuladd.f64(double %149, double %149, double %150)
  store double %151, ptr %57, align 8, !tbaa !53
  %152 = load double, ptr %58, align 8, !tbaa !53
  %153 = tail call double @llvm.fmuladd.f64(double %149, double %149, double %152)
  store double %153, ptr %58, align 8, !tbaa !53
  br label %154

154:                                              ; preds = %144, %142
  br i1 %50, label %165, label %155

155:                                              ; preds = %154
  %156 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %9, i64 2, i32 1, i64 %143
  %157 = load double, ptr %156, align 8, !tbaa !53
  %158 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %6, i64 2, i32 1, i64 %143
  %159 = load double, ptr %158, align 8, !tbaa !53
  %160 = fsub double %157, %159
  %161 = load double, ptr %59, align 8, !tbaa !53
  %162 = tail call double @llvm.fmuladd.f64(double %160, double %160, double %161)
  store double %162, ptr %59, align 8, !tbaa !53
  %163 = load double, ptr %60, align 8, !tbaa !53
  %164 = tail call double @llvm.fmuladd.f64(double %160, double %160, double %163)
  store double %164, ptr %60, align 8, !tbaa !53
  br label %165

165:                                              ; preds = %155, %154
  br i1 %52, label %176, label %166

166:                                              ; preds = %165
  %167 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %9, i64 4, i32 1, i64 %143
  %168 = load double, ptr %167, align 8, !tbaa !53
  %169 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %6, i64 4, i32 1, i64 %143
  %170 = load double, ptr %169, align 8, !tbaa !53
  %171 = fsub double %168, %170
  %172 = load double, ptr %61, align 8, !tbaa !53
  %173 = tail call double @llvm.fmuladd.f64(double %171, double %171, double %172)
  store double %173, ptr %61, align 8, !tbaa !53
  %174 = load double, ptr %62, align 8, !tbaa !53
  %175 = tail call double @llvm.fmuladd.f64(double %171, double %171, double %174)
  store double %175, ptr %62, align 8, !tbaa !53
  br label %176

176:                                              ; preds = %166, %165
  br i1 %54, label %193, label %177

177:                                              ; preds = %176
  %178 = load i32, ptr %63, align 8, !tbaa !75
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %193, label %180

180:                                              ; preds = %177
  %181 = load i32, ptr %64, align 8, !tbaa !75
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %193, label %183

183:                                              ; preds = %180
  %184 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %9, i64 8, i32 1, i64 %143
  %185 = load double, ptr %184, align 8, !tbaa !53
  %186 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %6, i64 8, i32 1, i64 %143
  %187 = load double, ptr %186, align 8, !tbaa !53
  %188 = fsub double %185, %187
  %189 = load double, ptr %65, align 8, !tbaa !53
  %190 = tail call double @llvm.fmuladd.f64(double %188, double %188, double %189)
  store double %190, ptr %65, align 8, !tbaa !53
  %191 = load double, ptr %66, align 8, !tbaa !53
  %192 = tail call double @llvm.fmuladd.f64(double %188, double %188, double %191)
  store double %192, ptr %66, align 8, !tbaa !53
  br label %193

193:                                              ; preds = %183, %180, %177, %176
  br i1 %56, label %210, label %194

194:                                              ; preds = %193
  %195 = load i32, ptr %67, align 4, !tbaa !57
  %196 = icmp eq i32 %195, 12
  br i1 %196, label %197, label %210

197:                                              ; preds = %194
  %198 = load i32, ptr %68, align 4, !tbaa !57
  %199 = icmp eq i32 %198, 12
  br i1 %199, label %200, label %210

200:                                              ; preds = %197
  %201 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %9, i64 32, i32 1, i64 %143
  %202 = load double, ptr %201, align 8, !tbaa !53
  %203 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %6, i64 32, i32 1, i64 %143
  %204 = load double, ptr %203, align 8, !tbaa !53
  %205 = fsub double %202, %204
  %206 = load double, ptr %69, align 8, !tbaa !53
  %207 = tail call double @llvm.fmuladd.f64(double %205, double %205, double %206)
  store double %207, ptr %69, align 8, !tbaa !53
  %208 = load double, ptr %70, align 8, !tbaa !53
  %209 = tail call double @llvm.fmuladd.f64(double %205, double %205, double %208)
  store double %209, ptr %70, align 8, !tbaa !53
  br label %210

210:                                              ; preds = %193, %194, %197, %200
  %211 = add nuw nsw i64 %143, 1
  %212 = icmp eq i64 %211, 7
  br i1 %212, label %213, label %142, !llvm.loop !114

213:                                              ; preds = %210
  %214 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %9) #12
  br label %215

215:                                              ; preds = %8, %213
  %216 = phi i32 [ 1, %213 ], [ 0, %8 ]
  %217 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %6) #12
  br label %218

218:                                              ; preds = %215, %5
  %219 = phi i32 [ 0, %5 ], [ %216, %215 ]
  ret i32 %219
}

declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #2

declare i32 @FormatImageProperty(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @GetMagickPrecision() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @GetImageChannelDistortions(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct._ExceptionInfo, align 8
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !34
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1606, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #12
  br label %12

12:                                               ; preds = %9, %4
  %13 = load i32, ptr %6, align 8, !tbaa !34
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %17 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1610, ptr noundef nonnull @.str.2, ptr noundef nonnull %16) #12
  br label %18

18:                                               ; preds = %15, %12
  %19 = icmp eq i32 %2, 255
  br i1 %19, label %36, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  %22 = load i64, ptr %21, align 8, !tbaa !54
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %24 = load i64, ptr %23, align 8, !tbaa !54
  %25 = icmp eq i64 %22, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 8
  %28 = load i64, ptr %27, align 8, !tbaa !55
  %29 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %30 = load i64, ptr %29, align 8, !tbaa !55
  %31 = icmp eq i64 %28, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %26, %20
  %33 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %34 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %35 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %33, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1615, i32 noundef 465, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %34) #12
  br label %101

36:                                               ; preds = %26, %18
  %37 = tail call dereferenceable_or_null(384) ptr @AcquireQuantumMemory(i64 noundef 48, i64 noundef 8) #14
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #12
  call void @GetExceptionInfo(ptr noundef nonnull %5) #12
  %40 = tail call ptr @__errno_location() #15
  %41 = load i32, ptr %40, align 4, !tbaa !66
  %42 = call ptr @GetExceptionMessage(i32 noundef %41) #12
  %43 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1626, i32 noundef 700, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.4, ptr noundef %42) #12
  %44 = call ptr @DestroyString(ptr noundef %42) #12
  call void @CatchException(ptr noundef nonnull %5) #12
  %45 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %5) #12
  call void @MagickCoreTerminus() #12
  call void @_exit(i32 noundef 1) #16
  unreachable

46:                                               ; preds = %36
  %47 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %37, i32 noundef 0, i64 noundef 384) #12
  switch i32 %2, label %58 [
    i32 1, label %48
    i32 9, label %50
    i32 2, label %52
    i32 3, label %54
    i32 4, label %56
    i32 7, label %66
    i32 5, label %60
    i32 6, label %62
    i32 255, label %64
  ]

48:                                               ; preds = %46
  %49 = tail call fastcc i32 @GetAbsoluteDistortion(ptr noundef %0, ptr noundef %1, i32 noundef 47, ptr noundef nonnull %37, ptr noundef %3), !range !56
  br label %96

50:                                               ; preds = %46
  %51 = tail call fastcc i32 @GetFuzzDistortion(ptr noundef %0, ptr noundef %1, i32 noundef 47, ptr noundef nonnull %37, ptr noundef %3), !range !56
  br label %96

52:                                               ; preds = %46
  %53 = tail call fastcc i32 @GetMeanAbsoluteDistortion(ptr noundef %0, ptr noundef %1, i32 noundef 47, ptr noundef nonnull %37, ptr noundef %3), !range !56
  br label %96

54:                                               ; preds = %46
  %55 = tail call fastcc i32 @GetMeanErrorPerPixel(ptr noundef %0, ptr noundef %1, i32 noundef 47, ptr noundef nonnull %37, ptr noundef %3), !range !56
  br label %96

56:                                               ; preds = %46
  %57 = tail call fastcc i32 @GetMeanSquaredDistortion(ptr noundef %0, ptr noundef %1, i32 noundef 47, ptr noundef nonnull %37, ptr noundef %3), !range !56
  br label %96

58:                                               ; preds = %46
  %59 = tail call fastcc i32 @GetNormalizedCrossCorrelationDistortion(ptr noundef %0, ptr noundef %1, i32 noundef 47, ptr noundef nonnull %37, ptr noundef %3), !range !56
  br label %96

60:                                               ; preds = %46
  %61 = tail call fastcc i32 @GetPeakAbsoluteDistortion(ptr noundef %0, ptr noundef %1, i32 noundef 47, ptr noundef nonnull %37, ptr noundef %3), !range !56
  br label %96

62:                                               ; preds = %46
  %63 = tail call fastcc i32 @GetPeakSignalToNoiseRatio(ptr noundef %0, ptr noundef %1, i32 noundef 47, ptr noundef nonnull %37, ptr noundef %3), !range !56
  br label %96

64:                                               ; preds = %46
  %65 = tail call fastcc i32 @GetPerceptualHashDistortion(ptr noundef %0, ptr noundef %1, i32 noundef 47, ptr noundef nonnull %37, ptr noundef %3), !range !56
  br label %96

66:                                               ; preds = %46
  %67 = tail call fastcc i32 @GetMeanSquaredDistortion(ptr noundef %0, ptr noundef %1, i32 noundef 47, ptr noundef nonnull %37, ptr noundef %3), !range !56
  %68 = getelementptr inbounds double, ptr %37, i64 1
  %69 = load double, ptr %68, align 8, !tbaa !53
  %70 = tail call double @sqrt(double noundef %69) #12
  store double %70, ptr %68, align 8, !tbaa !53
  %71 = getelementptr inbounds double, ptr %37, i64 2
  %72 = load double, ptr %71, align 8, !tbaa !53
  %73 = tail call double @sqrt(double noundef %72) #12
  store double %73, ptr %71, align 8, !tbaa !53
  %74 = getelementptr inbounds double, ptr %37, i64 4
  %75 = load double, ptr %74, align 8, !tbaa !53
  %76 = tail call double @sqrt(double noundef %75) #12
  store double %76, ptr %74, align 8, !tbaa !53
  %77 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %78 = load i32, ptr %77, align 8, !tbaa !75
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %66
  %81 = getelementptr inbounds double, ptr %37, i64 8
  %82 = load double, ptr %81, align 8, !tbaa !53
  %83 = tail call double @sqrt(double noundef %82) #12
  store double %83, ptr %81, align 8, !tbaa !53
  br label %84

84:                                               ; preds = %80, %66
  %85 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %86 = load i32, ptr %85, align 4, !tbaa !57
  %87 = icmp eq i32 %86, 12
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = getelementptr inbounds double, ptr %37, i64 32
  %90 = load double, ptr %89, align 8, !tbaa !53
  %91 = tail call double @sqrt(double noundef %90) #12
  store double %91, ptr %89, align 8, !tbaa !53
  br label %92

92:                                               ; preds = %84, %88
  %93 = getelementptr inbounds double, ptr %37, i64 47
  %94 = load double, ptr %93, align 8, !tbaa !53
  %95 = tail call double @sqrt(double noundef %94) #12
  store double %95, ptr %93, align 8, !tbaa !53
  br label %96

96:                                               ; preds = %92, %64, %62, %60, %58, %56, %54, %52, %50, %48
  %97 = phi i32 [ %59, %58 ], [ %65, %64 ], [ %63, %62 ], [ %61, %60 ], [ %67, %92 ], [ %57, %56 ], [ %55, %54 ], [ %53, %52 ], [ %51, %50 ], [ %49, %48 ]
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %37) #12
  br label %101

101:                                              ; preds = %96, %99, %32
  %102 = phi ptr [ null, %32 ], [ null, %99 ], [ %37, %96 ]
  ret ptr %102
}

; Function Attrs: nounwind uwtable
define dso_local i32 @IsImagesEqual(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  %4 = load i64, ptr %3, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %6 = load i64, ptr %5, align 8, !tbaa !54
  %7 = icmp eq i64 %4, %6
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 8
  %10 = load i64, ptr %9, align 8, !tbaa !55
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %12 = load i64, ptr %11, align 8, !tbaa !55
  %13 = icmp eq i64 %10, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %8, %2
  %15 = icmp eq ptr %0, null
  br i1 %15, label %188, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %19 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %17, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1777, i32 noundef 465, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %18) #12
  br label %188

20:                                               ; preds = %8
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %22 = tail call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef nonnull %21) #12
  %23 = tail call ptr @AcquireVirtualCacheView(ptr noundef %1, ptr noundef nonnull %21) #12
  %24 = load i64, ptr %11, align 8, !tbaa !55
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %172

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %28 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %29 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  br label %34

30:                                               ; preds = %162
  %31 = add nuw nsw i64 %35, 1
  %32 = load i64, ptr %11, align 8, !tbaa !55
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %167, !llvm.loop !115

34:                                               ; preds = %26, %30
  %35 = phi i64 [ 0, %26 ], [ %31, %30 ]
  %36 = phi float [ 0.000000e+00, %26 ], [ %166, %30 ]
  %37 = phi float [ 0.000000e+00, %26 ], [ %165, %30 ]
  %38 = phi float [ 0.000000e+00, %26 ], [ %164, %30 ]
  %39 = phi float [ 0.000000e+00, %26 ], [ %163, %30 ]
  %40 = load i64, ptr %5, align 8, !tbaa !54
  %41 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %22, i64 noundef 0, i64 noundef %35, i64 noundef %40, i64 noundef 1, ptr noundef nonnull %21) #13
  %42 = load i64, ptr %3, align 8, !tbaa !54
  %43 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %23, i64 noundef 0, i64 noundef %35, i64 noundef %42, i64 noundef 1, ptr noundef nonnull %21) #13
  %44 = icmp ne ptr %41, null
  %45 = icmp ne ptr %43, null
  %46 = select i1 %44, i1 %45, i1 false
  br i1 %46, label %47, label %162

47:                                               ; preds = %34
  %48 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %22) #12
  %49 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %23) #12
  %50 = load i64, ptr %5, align 8, !tbaa !54
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %52, label %162

52:                                               ; preds = %47
  %53 = load i32, ptr %27, align 8, !tbaa !75
  %54 = icmp eq i32 %53, 0
  %55 = load i32, ptr %28, align 4, !tbaa !57
  %56 = icmp eq i32 %55, 12
  %57 = icmp eq ptr %48, null
  %58 = icmp eq ptr %49, null
  br label %59

59:                                               ; preds = %52, %153
  %60 = phi i64 [ 0, %52 ], [ %160, %153 ]
  %61 = phi ptr [ %43, %52 ], [ %159, %153 ]
  %62 = phi ptr [ %41, %52 ], [ %158, %153 ]
  %63 = phi float [ %36, %52 ], [ %157, %153 ]
  %64 = phi float [ %37, %52 ], [ %156, %153 ]
  %65 = phi float [ %38, %52 ], [ %155, %153 ]
  %66 = phi float [ %39, %52 ], [ %154, %153 ]
  %67 = getelementptr inbounds %struct._PixelPacket, ptr %62, i64 0, i32 2
  %68 = load i16, ptr %67, align 2, !tbaa !69
  %69 = uitofp i16 %68 to double
  %70 = getelementptr inbounds %struct._PixelPacket, ptr %61, i64 0, i32 2
  %71 = load i16, ptr %70, align 2, !tbaa !69
  %72 = uitofp i16 %71 to double
  %73 = fsub double %69, %72
  %74 = fptrunc double %73 to float
  %75 = tail call float @llvm.fabs.f32(float %74)
  %76 = fadd float %63, %75
  %77 = tail call float @llvm.fmuladd.f32(float %74, float %74, float %64)
  %78 = fcmp ogt float %75, %65
  %79 = select i1 %78, float %75, float %65
  %80 = fadd float %66, 1.000000e+00
  %81 = getelementptr inbounds %struct._PixelPacket, ptr %62, i64 0, i32 1
  %82 = load i16, ptr %81, align 2, !tbaa !70
  %83 = uitofp i16 %82 to double
  %84 = getelementptr inbounds %struct._PixelPacket, ptr %61, i64 0, i32 1
  %85 = load i16, ptr %84, align 2, !tbaa !70
  %86 = uitofp i16 %85 to double
  %87 = fsub double %83, %86
  %88 = fptrunc double %87 to float
  %89 = tail call float @llvm.fabs.f32(float %88)
  %90 = fadd float %76, %89
  %91 = tail call float @llvm.fmuladd.f32(float %88, float %88, float %77)
  %92 = fcmp ogt float %89, %79
  %93 = select i1 %92, float %89, float %79
  %94 = fadd float %80, 1.000000e+00
  %95 = load i16, ptr %62, align 2, !tbaa !71
  %96 = uitofp i16 %95 to double
  %97 = load i16, ptr %61, align 2, !tbaa !71
  %98 = uitofp i16 %97 to double
  %99 = fsub double %96, %98
  %100 = fptrunc double %99 to float
  %101 = tail call float @llvm.fabs.f32(float %100)
  %102 = fadd float %90, %101
  %103 = tail call float @llvm.fmuladd.f32(float %100, float %100, float %91)
  %104 = fcmp ogt float %101, %93
  %105 = select i1 %104, float %101, float %93
  %106 = fadd float %94, 1.000000e+00
  br i1 %54, label %122, label %107

107:                                              ; preds = %59
  %108 = getelementptr inbounds %struct._PixelPacket, ptr %62, i64 0, i32 3
  %109 = load i16, ptr %108, align 2, !tbaa !72
  %110 = uitofp i16 %109 to double
  %111 = getelementptr inbounds %struct._PixelPacket, ptr %61, i64 0, i32 3
  %112 = load i16, ptr %111, align 2, !tbaa !72
  %113 = uitofp i16 %112 to double
  %114 = fsub double %110, %113
  %115 = fptrunc double %114 to float
  %116 = tail call float @llvm.fabs.f32(float %115)
  %117 = fadd float %102, %116
  %118 = tail call float @llvm.fmuladd.f32(float %115, float %115, float %103)
  %119 = fcmp ogt float %116, %105
  %120 = select i1 %119, float %116, float %105
  %121 = fadd float %106, 1.000000e+00
  br label %122

122:                                              ; preds = %107, %59
  %123 = phi float [ %121, %107 ], [ %106, %59 ]
  %124 = phi float [ %120, %107 ], [ %105, %59 ]
  %125 = phi float [ %118, %107 ], [ %103, %59 ]
  %126 = phi float [ %117, %107 ], [ %102, %59 ]
  br i1 %56, label %127, label %153

127:                                              ; preds = %122
  %128 = load i32, ptr %29, align 4, !tbaa !57
  %129 = icmp eq i32 %128, 12
  br i1 %129, label %130, label %153

130:                                              ; preds = %127
  br i1 %57, label %135, label %131

131:                                              ; preds = %130
  %132 = getelementptr inbounds i16, ptr %48, i64 %60
  %133 = load i16, ptr %132, align 2, !tbaa !74
  %134 = zext i16 %133 to i32
  br label %135

135:                                              ; preds = %130, %131
  %136 = phi i32 [ %134, %131 ], [ 0, %130 ]
  %137 = sitofp i32 %136 to double
  br i1 %58, label %142, label %138

138:                                              ; preds = %135
  %139 = getelementptr inbounds i16, ptr %49, i64 %60
  %140 = load i16, ptr %139, align 2, !tbaa !74
  %141 = zext i16 %140 to i32
  br label %142

142:                                              ; preds = %135, %138
  %143 = phi i32 [ %141, %138 ], [ 0, %135 ]
  %144 = sitofp i32 %143 to double
  %145 = fsub double %137, %144
  %146 = fptrunc double %145 to float
  %147 = tail call float @llvm.fabs.f32(float %146)
  %148 = fadd float %126, %147
  %149 = tail call float @llvm.fmuladd.f32(float %146, float %146, float %125)
  %150 = fcmp ogt float %147, %124
  %151 = select i1 %150, float %147, float %124
  %152 = fadd float %123, 1.000000e+00
  br label %153

153:                                              ; preds = %142, %127, %122
  %154 = phi float [ %152, %142 ], [ %123, %127 ], [ %123, %122 ]
  %155 = phi float [ %151, %142 ], [ %124, %127 ], [ %124, %122 ]
  %156 = phi float [ %149, %142 ], [ %125, %127 ], [ %125, %122 ]
  %157 = phi float [ %148, %142 ], [ %126, %127 ], [ %126, %122 ]
  %158 = getelementptr inbounds %struct._PixelPacket, ptr %62, i64 1
  %159 = getelementptr inbounds %struct._PixelPacket, ptr %61, i64 1
  %160 = add nuw nsw i64 %60, 1
  %161 = icmp eq i64 %160, %50
  br i1 %161, label %162, label %59, !llvm.loop !116

162:                                              ; preds = %153, %47, %34
  %163 = phi float [ %39, %34 ], [ %39, %47 ], [ %154, %153 ]
  %164 = phi float [ %38, %34 ], [ %38, %47 ], [ %155, %153 ]
  %165 = phi float [ %37, %34 ], [ %37, %47 ], [ %156, %153 ]
  %166 = phi float [ %36, %34 ], [ %36, %47 ], [ %157, %153 ]
  br i1 %46, label %30, label %167

167:                                              ; preds = %162, %30
  %168 = fpext float %165 to double
  %169 = fmul double %168, 0x3DF0002000300040
  %170 = fpext float %164 to double
  %171 = fmul double %170, 0x3EF0001000100010
  br label %172

172:                                              ; preds = %167, %20
  %173 = phi float [ 0.000000e+00, %20 ], [ %163, %167 ]
  %174 = phi double [ 0.000000e+00, %20 ], [ %171, %167 ]
  %175 = phi double [ 0.000000e+00, %20 ], [ %169, %167 ]
  %176 = phi float [ 0.000000e+00, %20 ], [ %166, %167 ]
  %177 = tail call ptr @DestroyCacheView(ptr noundef %23) #12
  %178 = tail call ptr @DestroyCacheView(ptr noundef %22) #12
  %179 = fdiv float %176, %173
  %180 = fpext float %179 to double
  %181 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 45
  store double %180, ptr %181, align 8, !tbaa !95
  %182 = fpext float %173 to double
  %183 = fdiv double %175, %182
  %184 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 45, i32 1
  store double %183, ptr %184, align 8, !tbaa !96
  %185 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 45, i32 2
  store double %174, ptr %185, align 8, !tbaa !97
  %186 = fcmp oeq float %179, 0.000000e+00
  %187 = zext i1 %186 to i32
  br label %188

188:                                              ; preds = %14, %16, %172
  %189 = phi i32 [ %187, %172 ], [ 0, %16 ], [ 0, %14 ]
  ret i32 %189
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: nounwind uwtable
define dso_local ptr @SimilarityImage(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call ptr @SimilarityMetricImage(ptr noundef %0, ptr noundef %1, i32 noundef 7, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define dso_local ptr @SimilarityMetricImage(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr nocapture noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca [4096 x i8], align 16
  %8 = alloca double, align 8
  %9 = alloca %struct._RectangleInfo, align 8
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %11 = load i32, ptr %10, align 8, !tbaa !34
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %15 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1975, ptr noundef nonnull @.str.2, ptr noundef nonnull %14) #12
  br label %16

16:                                               ; preds = %13, %6
  tail call void @SetGeometry(ptr noundef %1, ptr noundef %3) #12
  store double 0x7FEFFFFFFFFFFFFF, ptr %4, align 8, !tbaa !53
  %17 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  %18 = load i64, ptr %17, align 8, !tbaa !54
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %20 = load i64, ptr %19, align 8, !tbaa !54
  %21 = icmp ugt i64 %18, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 8
  %24 = load i64, ptr %23, align 8, !tbaa !55
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %26 = load i64, ptr %25, align 8, !tbaa !55
  %27 = icmp ugt i64 %24, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22, %16
  %29 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %30 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1982, i32 noundef 465, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %29) #12
  br label %160

31:                                               ; preds = %22
  %32 = sub i64 %20, %18
  %33 = add i64 %32, 1
  %34 = sub i64 %26, %24
  %35 = add i64 %34, 1
  %36 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef %33, i64 noundef %35, i32 noundef 1, ptr noundef %5) #12
  %37 = icmp eq ptr %36, null
  br i1 %37, label %160, label %38

38:                                               ; preds = %31
  %39 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %36, i32 noundef 1) #12
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct._Image, ptr %36, i64 0, i32 58
  tail call void @InheritException(ptr noundef %5, ptr noundef nonnull %42) #12
  %43 = tail call ptr @DestroyImage(ptr noundef nonnull %36) #12
  br label %160

44:                                               ; preds = %38
  %45 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %36, i32 noundef 4) #12
  %46 = tail call ptr @GetImageArtifact(ptr noundef %0, ptr noundef nonnull @.str.12) #12
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = tail call double @InterpretLocaleValue(ptr noundef nonnull %46, ptr noundef null) #12
  br label %50

50:                                               ; preds = %48, %44
  %51 = phi double [ %49, %48 ], [ -1.000000e+00, %44 ]
  %52 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %36, ptr noundef %5) #12
  %53 = load i64, ptr %25, align 8, !tbaa !55
  %54 = load i64, ptr %23, align 8, !tbaa !55
  %55 = add i64 %53, 1
  %56 = sub i64 %55, %54
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %158

58:                                               ; preds = %50
  %59 = getelementptr inbounds %struct._Image, ptr %36, i64 0, i32 7
  %60 = getelementptr inbounds %struct._RectangleInfo, ptr %9, i64 0, i32 2
  %61 = getelementptr inbounds %struct._RectangleInfo, ptr %9, i64 0, i32 3
  %62 = getelementptr inbounds %struct._RectangleInfo, ptr %3, i64 0, i32 2
  %63 = getelementptr inbounds %struct._RectangleInfo, ptr %3, i64 0, i32 3
  %64 = icmp eq i32 %2, 255
  %65 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %66 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %67 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %68

68:                                               ; preds = %58, %144
  %69 = phi i64 [ 0, %58 ], [ %147, %144 ]
  %70 = phi i64 [ 0, %58 ], [ %146, %144 ]
  %71 = phi i32 [ 1, %58 ], [ %145, %144 ]
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %144, label %73

73:                                               ; preds = %68
  %74 = load double, ptr %4, align 8, !tbaa !53
  %75 = fcmp ugt double %74, %51
  br i1 %75, label %76, label %144

76:                                               ; preds = %73
  %77 = load i64, ptr %59, align 8, !tbaa !54
  %78 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %52, i64 noundef 0, i64 noundef %69, i64 noundef %77, i64 noundef 1, ptr noundef %5) #13
  %79 = icmp eq ptr %78, null
  br i1 %79, label %144, label %80

80:                                               ; preds = %76
  %81 = load i64, ptr %19, align 8, !tbaa !54
  %82 = load i64, ptr %17, align 8, !tbaa !54
  %83 = add i64 %81, 1
  %84 = sub i64 %83, %82
  %85 = icmp sgt i64 %84, 0
  br i1 %85, label %86, label %129

86:                                               ; preds = %80, %118
  %87 = phi ptr [ %122, %118 ], [ %78, %80 ]
  %88 = phi i64 [ %123, %118 ], [ 0, %80 ]
  %89 = load double, ptr %4, align 8, !tbaa !53
  %90 = fcmp ugt double %89, %51
  br i1 %90, label %91, label %129

91:                                               ; preds = %86
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #12
  call void @SetGeometry(ptr noundef %1, ptr noundef nonnull %9) #12
  store i64 %88, ptr %60, align 8, !tbaa !117
  store i64 %69, ptr %61, align 8, !tbaa !118
  %92 = call ptr @CropImage(ptr noundef %0, ptr noundef nonnull %9, ptr noundef %5) #12
  %93 = icmp eq ptr %92, null
  br i1 %93, label %98, label %94

94:                                               ; preds = %91
  store double 0.000000e+00, ptr %8, align 8, !tbaa !53
  %95 = call i32 @GetImageChannelDistortion(ptr noundef nonnull %92, ptr noundef %1, i32 noundef 47, i32 noundef %2, ptr noundef nonnull %8, ptr noundef %5), !range !56
  %96 = call ptr @DestroyImage(ptr noundef nonnull %92) #12
  %97 = load double, ptr %8, align 8, !tbaa !53
  br label %98

98:                                               ; preds = %91, %94
  %99 = phi double [ %97, %94 ], [ 0.000000e+00, %91 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #12
  %100 = load double, ptr %4, align 8, !tbaa !53
  %101 = fcmp olt double %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  store double %99, ptr %4, align 8, !tbaa !53
  store i64 %88, ptr %62, align 8, !tbaa !117
  store i64 %69, ptr %63, align 8, !tbaa !118
  br label %103

103:                                              ; preds = %102, %98
  br i1 %64, label %104, label %108

104:                                              ; preds = %103
  %105 = fmul double %99, 1.000000e-02
  %106 = fcmp olt double %105, 1.000000e+00
  %107 = select i1 %106, double %105, double 1.000000e+00
  br label %108

108:                                              ; preds = %104, %103
  %109 = phi double [ %107, %104 ], [ %99, %103 ]
  %110 = call double @llvm.fmuladd.f64(double %109, double -6.553500e+04, double 6.553500e+04)
  %111 = fptrunc double %110 to float
  %112 = fcmp ugt float %111, 0.000000e+00
  br i1 %112, label %113, label %118

113:                                              ; preds = %108
  %114 = fcmp ult float %111, 6.553500e+04
  br i1 %114, label %115, label %118

115:                                              ; preds = %113
  %116 = fadd float %111, 5.000000e-01
  %117 = fptoui float %116 to i16
  br label %118

118:                                              ; preds = %108, %113, %115
  %119 = phi i16 [ %117, %115 ], [ 0, %108 ], [ -1, %113 ]
  %120 = getelementptr inbounds %struct._PixelPacket, ptr %87, i64 0, i32 2
  store i16 %119, ptr %120, align 2, !tbaa !69
  %121 = getelementptr inbounds %struct._PixelPacket, ptr %87, i64 0, i32 1
  store i16 %119, ptr %121, align 2, !tbaa !70
  store i16 %119, ptr %87, align 2, !tbaa !71
  %122 = getelementptr inbounds %struct._PixelPacket, ptr %87, i64 1
  %123 = add nuw nsw i64 %88, 1
  %124 = load i64, ptr %19, align 8, !tbaa !54
  %125 = load i64, ptr %17, align 8, !tbaa !54
  %126 = add i64 %124, 1
  %127 = sub i64 %126, %125
  %128 = icmp slt i64 %123, %127
  br i1 %128, label %86, label %129, !llvm.loop !119

129:                                              ; preds = %118, %86, %80
  %130 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %52, ptr noundef %5) #13
  %131 = icmp ne i32 %130, 0
  %132 = zext i1 %131 to i32
  %133 = load ptr, ptr %65, align 8, !tbaa !105
  %134 = icmp eq ptr %133, null
  br i1 %134, label %144, label %135

135:                                              ; preds = %129
  %136 = add nsw i64 %70, 1
  %137 = load i64, ptr %25, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %7) #12
  %138 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %7, i64 noundef 4096, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.13, ptr noundef nonnull %66) #12
  %139 = load ptr, ptr %65, align 8, !tbaa !105
  %140 = load ptr, ptr %67, align 8, !tbaa !106
  %141 = call i32 %139(ptr noundef nonnull %7, i64 noundef %70, i64 noundef %137, ptr noundef %140) #12
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %7) #12
  %142 = icmp eq i32 %141, 0
  %143 = select i1 %142, i32 0, i32 %132
  br label %144

144:                                              ; preds = %129, %135, %76, %73, %68
  %145 = phi i32 [ 0, %68 ], [ 1, %73 ], [ 0, %76 ], [ %143, %135 ], [ %132, %129 ]
  %146 = phi i64 [ %70, %68 ], [ %70, %73 ], [ %70, %76 ], [ %136, %135 ], [ %70, %129 ]
  %147 = add nuw nsw i64 %69, 1
  %148 = load i64, ptr %25, align 8, !tbaa !55
  %149 = load i64, ptr %23, align 8, !tbaa !55
  %150 = add i64 %148, 1
  %151 = sub i64 %150, %149
  %152 = icmp slt i64 %147, %151
  br i1 %152, label %68, label %153, !llvm.loop !120

153:                                              ; preds = %144
  %154 = icmp eq i32 %145, 0
  %155 = call ptr @DestroyCacheView(ptr noundef %52) #12
  br i1 %154, label %156, label %160

156:                                              ; preds = %153
  %157 = call ptr @DestroyImage(ptr noundef nonnull %36) #12
  br label %160

158:                                              ; preds = %50
  %159 = tail call ptr @DestroyCacheView(ptr noundef %52) #12
  br label %160

160:                                              ; preds = %158, %153, %156, %31, %41, %28
  %161 = phi ptr [ null, %28 ], [ null, %41 ], [ null, %31 ], [ %157, %156 ], [ %36, %153 ], [ %36, %158 ]
  ret ptr %161
}

declare void @SetGeometry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: hot
declare ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: hot
declare float @DecodePixelGamma(float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #9

declare ptr @GetImageChannelStatistics(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @log10(double noundef) local_unnamed_addr #9

declare ptr @GetImageChannelPerceptualHash(ptr noundef, ptr noundef) local_unnamed_addr #2

declare double @InterpretLocaleValue(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CropImage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { hot "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind }
attributes #13 = { hot nounwind }
attributes #14 = { nounwind allocsize(0,1) }
attributes #15 = { nounwind willreturn memory(none) }
attributes #16 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 13301818}
!8 = !{!"MaxCount", i64 3247920}
!9 = !{!"MaxInternalCount", i64 3247920}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 3247920, i32 1}
!18 = !{i32 100000, i64 3247920, i32 1}
!19 = !{i32 200000, i64 3247920, i32 1}
!20 = !{i32 300000, i64 1623960, i32 7}
!21 = !{i32 400000, i64 1623960, i32 7}
!22 = !{i32 500000, i64 1623960, i32 7}
!23 = !{i32 600000, i64 1623960, i32 7}
!24 = !{i32 700000, i64 1623960, i32 7}
!25 = !{i32 800000, i64 1623960, i32 7}
!26 = !{i32 900000, i64 1623960, i32 7}
!27 = !{i32 950000, i64 1623960, i32 7}
!28 = !{i32 990000, i64 204360, i32 8}
!29 = !{i32 999000, i64 25545, i32 12}
!30 = !{i32 999900, i64 3120, i32 13}
!31 = !{i32 999990, i64 195, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !36, i64 12976}
!35 = !{!"_Image", !36, i64 0, !36, i64 4, !36, i64 8, !39, i64 16, !36, i64 24, !36, i64 28, !36, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !40, i64 72, !41, i64 80, !41, i64 88, !41, i64 96, !43, i64 104, !44, i64 112, !36, i64 208, !40, i64 216, !36, i64 224, !40, i64 232, !40, i64 240, !40, i64 248, !39, i64 256, !43, i64 264, !43, i64 272, !46, i64 280, !46, i64 312, !46, i64 344, !43, i64 376, !43, i64 384, !43, i64 392, !36, i64 400, !36, i64 404, !36, i64 408, !36, i64 412, !36, i64 416, !36, i64 420, !40, i64 424, !39, i64 432, !39, i64 440, !39, i64 448, !39, i64 456, !39, i64 464, !39, i64 472, !47, i64 480, !48, i64 504, !40, i64 568, !40, i64 576, !40, i64 584, !40, i64 592, !40, i64 600, !40, i64 608, !37, i64 616, !37, i64 4712, !37, i64 8808, !39, i64 12904, !39, i64 12912, !50, i64 12920, !36, i64 12976, !39, i64 12984, !40, i64 12992, !51, i64 13000, !51, i64 13032, !40, i64 13064, !39, i64 13072, !39, i64 13080, !40, i64 13088, !40, i64 13096, !40, i64 13104, !36, i64 13112, !36, i64 13116, !41, i64 13120, !40, i64 13128, !46, i64 13136, !40, i64 13168, !40, i64 13176, !36, i64 13184, !36, i64 13188, !52, i64 13192, !36, i64 13200, !39, i64 13208, !39, i64 13216, !36, i64 13224, !39, i64 13232}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"long", !37, i64 0}
!40 = !{!"any pointer", !37, i64 0}
!41 = !{!"_PixelPacket", !42, i64 0, !42, i64 2, !42, i64 4, !42, i64 6}
!42 = !{!"short", !37, i64 0}
!43 = !{!"double", !37, i64 0}
!44 = !{!"_ChromaticityInfo", !45, i64 0, !45, i64 24, !45, i64 48, !45, i64 72}
!45 = !{!"_PrimaryInfo", !43, i64 0, !43, i64 8, !43, i64 16}
!46 = !{!"_RectangleInfo", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24}
!47 = !{!"_ErrorInfo", !43, i64 0, !43, i64 8, !43, i64 16}
!48 = !{!"_TimerInfo", !49, i64 0, !49, i64 24, !36, i64 48, !39, i64 56}
!49 = !{!"_Timer", !43, i64 0, !43, i64 8, !43, i64 16}
!50 = !{!"_ExceptionInfo", !36, i64 0, !36, i64 4, !40, i64 8, !40, i64 16, !40, i64 24, !36, i64 32, !40, i64 40, !39, i64 48}
!51 = !{!"_ProfileInfo", !40, i64 0, !39, i64 8, !40, i64 16, !39, i64 24}
!52 = !{!"long long", !37, i64 0}
!53 = !{!43, !43, i64 0}
!54 = !{!35, !39, i64 40}
!55 = !{!35, !39, i64 48}
!56 = !{i32 0, i32 2}
!57 = !{!35, !36, i64 4}
!58 = !{!59, !36, i64 4}
!59 = !{!"_MagickPixelPacket", !36, i64 0, !36, i64 4, !36, i64 8, !43, i64 16, !39, i64 24, !60, i64 32, !60, i64 36, !60, i64 40, !60, i64 44, !60, i64 48}
!60 = !{!"float", !37, i64 0}
!61 = !{!59, !60, i64 32}
!62 = !{!59, !60, i64 36}
!63 = !{!59, !60, i64 40}
!64 = !{!59, !60, i64 48}
!65 = !{i64 0, i64 4, !66, i64 4, i64 4, !66, i64 8, i64 4, !66, i64 16, i64 8, !53, i64 24, i64 8, !67, i64 32, i64 4, !68, i64 36, i64 4, !68, i64 40, i64 4, !68, i64 44, i64 4, !68, i64 48, i64 4, !68}
!66 = !{!36, !36, i64 0}
!67 = !{!39, !39, i64 0}
!68 = !{!60, !60, i64 0}
!69 = !{!41, !42, i64 4}
!70 = !{!41, !42, i64 2}
!71 = !{!41, !42, i64 0}
!72 = !{!41, !42, i64 6}
!73 = !{!59, !60, i64 44}
!74 = !{!42, !42, i64 0}
!75 = !{!35, !36, i64 32}
!76 = !{!35, !36, i64 0}
!77 = distinct !{!77, !78, !79}
!78 = !{!"llvm.loop.mustprogress"}
!79 = !{!"llvm.loop.unroll.disable"}
!80 = distinct !{!80, !78, !79}
!81 = !{!35, !36, i64 416}
!82 = distinct !{!82, !78, !79}
!83 = distinct !{!83, !78, !79}
!84 = distinct !{!84, !78, !79}
!85 = distinct !{!85, !78, !79}
!86 = distinct !{!86, !78, !79}
!87 = distinct !{!87, !78, !79}
!88 = distinct !{!88, !78, !79}
!89 = distinct !{!89, !78, !79}
!90 = distinct !{!90, !78, !79}
!91 = distinct !{!91, !78, !79}
!92 = distinct !{!92, !78, !79}
!93 = distinct !{!93, !78, !79}
!94 = distinct !{!94, !78, !79}
!95 = !{!35, !43, i64 480}
!96 = !{!35, !43, i64 488}
!97 = !{!35, !43, i64 496}
!98 = distinct !{!98, !78, !79}
!99 = distinct !{!99, !78, !79}
!100 = distinct !{!100, !78, !79}
!101 = distinct !{!101, !78, !79}
!102 = !{!103, !43, i64 56}
!103 = !{!"_ChannelStatistics", !39, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !43, i64 48, !43, i64 56, !43, i64 64, !43, i64 72, !43, i64 80, !43, i64 88}
!104 = distinct !{!104, !78, !79}
!105 = !{!35, !40, i64 568}
!106 = !{!35, !40, i64 576}
!107 = distinct !{!107, !78, !79}
!108 = !{!103, !43, i64 72}
!109 = distinct !{!109, !78, !79}
!110 = distinct !{!110, !78, !79}
!111 = distinct !{!111, !78, !79}
!112 = distinct !{!112, !78, !79}
!113 = distinct !{!113, !78, !79}
!114 = distinct !{!114, !78, !79}
!115 = distinct !{!115, !78, !79}
!116 = distinct !{!116, !78, !79}
!117 = !{!46, !39, i64 16}
!118 = !{!46, !39, i64 24}
!119 = distinct !{!119, !78, !79}
!120 = distinct !{!120, !78, !79}
