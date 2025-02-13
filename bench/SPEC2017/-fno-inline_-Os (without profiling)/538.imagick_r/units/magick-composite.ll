; ModuleID = 'magick/composite.c'
source_filename = "magick/composite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GeometryInfo = type { double, double, double, double, double }
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

@.str = private unnamed_addr constant [19 x i8] c"magick/composite.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Composite/Image\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"compose:args\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"InvalidGeometry\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"'%s' '%s'\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"compose:outside-overlay\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"Texture/Image\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @CompositeImage(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = tail call i32 @CompositeImageChannel(ptr noundef %0, i32 noundef 134217719, i32 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) #14, !range !5
  ret i32 %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @CompositeImageChannel(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct._GeometryInfo, align 16
  %8 = alloca %struct._MagickPixelPacket, align 8
  %9 = alloca %struct._MagickPixelPacket, align 8
  %10 = alloca %struct._MagickPixelPacket, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca %struct._MagickPixelPacket, align 8
  %16 = alloca %struct._MagickPixelPacket, align 8
  %17 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #15
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %19 = load i32, ptr %18, align 8, !tbaa !6
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %6
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %23 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1685, ptr noundef nonnull @.str.2, ptr noundef nonnull %22) #16
  br label %24

24:                                               ; preds = %21, %6
  %25 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %0, i32 noundef 1) #16
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %1147, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %29 = tail call ptr @CloneImage(ptr noundef %3, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef nonnull %28) #16
  %30 = icmp eq ptr %29, null
  br i1 %30, label %1147, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %33 = load i32, ptr %32, align 4, !tbaa !25
  %34 = tail call fastcc i32 @IsGrayColorspace(i32 noundef %33) #14, !range !5
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = tail call i32 @SetImageColorspace(ptr noundef nonnull %0, i32 noundef 13) #16
  %38 = load i32, ptr %32, align 4, !tbaa !25
  br label %39

39:                                               ; preds = %36, %31
  %40 = phi i32 [ %38, %36 ], [ %33, %31 ]
  %41 = tail call i32 @SetImageColorspace(ptr noundef nonnull %29, i32 noundef %40) #16
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %8) #16
  switch i32 %2, label %679 [
    i32 7, label %42
    i32 48, label %42
    i32 32, label %42
    i32 49, label %42
    i32 39, label %42
    i32 50, label %42
    i32 23, label %42
    i32 21, label %42
    i32 40, label %43
    i32 13, label %54
    i32 17, label %125
    i32 6, label %125
    i32 57, label %131
    i32 27, label %334
    i32 56, label %334
    i32 28, label %592
    i32 4, label %625
    i32 63, label %645
    i32 37, label %650
    i32 53, label %665
  ]

42:                                               ; preds = %39, %39, %39, %39, %39, %39, %39, %39
  br label %679

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %45 = load i32, ptr %44, align 8, !tbaa !26
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %679

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct._Image, ptr %29, i64 0, i32 6
  %49 = load i32, ptr %48, align 8, !tbaa !26
  %50 = icmp eq i32 %49, 0
  %51 = or i64 %5, %4
  %52 = icmp sgt i64 %51, -1
  %53 = and i1 %52, %50
  br i1 %53, label %57, label %679

54:                                               ; preds = %39
  %55 = or i64 %5, %4
  %56 = icmp sgt i64 %55, -1
  br i1 %56, label %57, label %679

57:                                               ; preds = %47, %54
  %58 = getelementptr inbounds %struct._Image, ptr %29, i64 0, i32 7
  %59 = load i64, ptr %58, align 8, !tbaa !27
  %60 = add nsw i64 %59, %4
  %61 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %62 = load i64, ptr %61, align 8, !tbaa !27
  %63 = icmp slt i64 %60, %62
  br i1 %63, label %64, label %679

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct._Image, ptr %29, i64 0, i32 8
  %66 = load i64, ptr %65, align 8, !tbaa !28
  %67 = add nsw i64 %66, %5
  %68 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %69 = load i64, ptr %68, align 8, !tbaa !28
  %70 = icmp slt i64 %67, %69
  br i1 %70, label %71, label %679

71:                                               ; preds = %64
  %72 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %29, ptr noundef nonnull %28) #16
  %73 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %28) #16
  %74 = load i64, ptr %65, align 8, !tbaa !28
  %75 = icmp sgt i64 %74, 0
  br i1 %75, label %76, label %120

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %78

78:                                               ; preds = %76, %115
  %79 = phi i32 [ 1, %76 ], [ %116, %115 ]
  %80 = phi i64 [ 0, %76 ], [ %117, %115 ]
  %81 = icmp eq i32 %79, 0
  br i1 %81, label %115, label %82

82:                                               ; preds = %78
  %83 = load i64, ptr %58, align 8, !tbaa !27
  %84 = call ptr @GetCacheViewVirtualPixels(ptr noundef %72, i64 noundef 0, i64 noundef %80, i64 noundef %83, i64 noundef 1, ptr noundef nonnull %28) #17
  %85 = add nsw i64 %80, %5
  %86 = load i64, ptr %58, align 8, !tbaa !27
  %87 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %73, i64 noundef %4, i64 noundef %85, i64 noundef %86, i64 noundef 1, ptr noundef nonnull %28) #17
  %88 = icmp eq ptr %84, null
  %89 = icmp eq ptr %87, null
  %90 = select i1 %88, i1 true, i1 %89
  br i1 %90, label %115, label %91

91:                                               ; preds = %82
  %92 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %72) #16
  %93 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %73) #16
  %94 = load i64, ptr %58, align 8, !tbaa !27
  %95 = shl i64 %94, 3
  %96 = call ptr @CopyMagickMemory(ptr noundef nonnull %87, ptr noundef nonnull %84, i64 noundef %95) #16
  %97 = icmp ne ptr %93, null
  %98 = icmp ne ptr %92, null
  %99 = select i1 %97, i1 %98, i1 false
  br i1 %99, label %100, label %104

100:                                              ; preds = %91
  %101 = load i64, ptr %58, align 8, !tbaa !27
  %102 = shl i64 %101, 1
  %103 = call ptr @CopyMagickMemory(ptr noundef nonnull %93, ptr noundef nonnull %92, i64 noundef %102) #16
  br label %104

104:                                              ; preds = %100, %91
  %105 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %73, ptr noundef nonnull %28) #17
  %106 = icmp ne i32 %105, 0
  %107 = zext i1 %106 to i32
  %108 = load ptr, ptr %77, align 8, !tbaa !29
  %109 = icmp eq ptr %108, null
  br i1 %109, label %115, label %110

110:                                              ; preds = %104
  %111 = load i64, ptr %68, align 8, !tbaa !28
  %112 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.3, i64 noundef %80, i64 noundef %111) #14
  %113 = icmp eq i32 %112, 0
  %114 = select i1 %113, i32 0, i32 %107
  br label %115

115:                                              ; preds = %104, %110, %82, %78
  %116 = phi i32 [ 0, %78 ], [ 0, %82 ], [ %114, %110 ], [ %107, %104 ]
  %117 = add nuw nsw i64 %80, 1
  %118 = load i64, ptr %65, align 8, !tbaa !28
  %119 = icmp slt i64 %117, %118
  br i1 %119, label %78, label %120, !llvm.loop !30

120:                                              ; preds = %115, %71
  %121 = phi i32 [ 1, %71 ], [ %116, %115 ]
  %122 = call ptr @DestroyCacheView(ptr noundef %72) #16
  %123 = call ptr @DestroyCacheView(ptr noundef %73) #16
  %124 = call ptr @DestroyImage(ptr noundef nonnull %29) #16
  br label %1147

125:                                              ; preds = %39, %39
  %126 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %127 = load i32, ptr %126, align 8, !tbaa !26
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %679

129:                                              ; preds = %125
  %130 = call i32 @SetImageAlphaChannel(ptr noundef nonnull %0, i32 noundef 6) #16
  br label %679

131:                                              ; preds = %39
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %9) #15
  %132 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %133 = load i64, ptr %132, align 8, !tbaa !27
  %134 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %135 = load i64, ptr %134, align 8, !tbaa !28
  %136 = call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %133, i64 noundef %135, i32 noundef 1, ptr noundef nonnull %28) #16
  %137 = icmp eq ptr %136, null
  br i1 %137, label %326, label %138

138:                                              ; preds = %131
  call void @SetGeometryInfo(ptr noundef nonnull %7) #16
  %139 = call ptr @GetImageArtifact(ptr noundef nonnull %29, ptr noundef nonnull @.str.4) #16
  %140 = icmp eq ptr %139, null
  br i1 %140, label %145, label %141

141:                                              ; preds = %138
  %142 = call i32 @ParseGeometry(ptr noundef nonnull %139, ptr noundef nonnull %7) #16
  %143 = and i32 %142, 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %138, %141
  %146 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %28, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1857, i32 noundef 310, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, ptr noundef %139) #16
  %147 = call ptr @DestroyImage(ptr noundef nonnull %29) #16
  br label %326

148:                                              ; preds = %141
  %149 = load double, ptr %7, align 16, !tbaa !32
  %150 = fmul double %149, 2.000000e+00
  %151 = fptrunc double %150 to float
  %152 = and i32 %142, 8
  %153 = icmp eq i32 %152, 0
  %154 = getelementptr inbounds %struct._GeometryInfo, ptr %7, i64 0, i32 1
  %155 = load double, ptr %154, align 8
  %156 = fmul double %155, 2.000000e+00
  %157 = fptrunc double %156 to float
  %158 = select i1 %153, float %151, float %157
  %159 = insertelement <2 x float> poison, float %151, i64 0
  %160 = insertelement <2 x float> %159, float %158, i64 1
  %161 = fpext <2 x float> %160 to <2 x double>
  %162 = and i32 %142, 1
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %182, label %164

164:                                              ; preds = %148
  %165 = getelementptr inbounds %struct._GeometryInfo, ptr %7, i64 0, i32 2
  %166 = load double, ptr %165, align 16, !tbaa !34
  %167 = call fastcc double @DegreesToRadians(double noundef %166) #14
  %168 = fptrunc double %167 to float
  %169 = fpext float %168 to double
  %170 = call double @cos(double noundef %169) #16
  %171 = call double @sin(double noundef %169) #16
  %172 = extractelement <2 x double> %161, i64 0
  %173 = fmul double %171, %172
  %174 = fneg float %158
  %175 = fpext float %174 to double
  %176 = call double @sin(double noundef %169) #16
  %177 = fmul double %176, %175
  %178 = call double @cos(double noundef %169) #16
  %179 = insertelement <2 x double> poison, double %170, i64 0
  %180 = insertelement <2 x double> %179, double %178, i64 1
  %181 = fmul <2 x double> %180, %161
  br label %182

182:                                              ; preds = %164, %148
  %183 = phi double [ %173, %164 ], [ 0.000000e+00, %148 ]
  %184 = phi double [ %177, %164 ], [ 0.000000e+00, %148 ]
  %185 = phi <2 x double> [ %181, %164 ], [ %161, %148 ]
  %186 = and i32 %142, 2
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %201, label %188

188:                                              ; preds = %182
  %189 = getelementptr inbounds %struct._GeometryInfo, ptr %7, i64 0, i32 2
  %190 = load double, ptr %189, align 16, !tbaa !34
  %191 = call fastcc double @DegreesToRadians(double noundef %190) #14
  %192 = fptrunc double %191 to float
  %193 = getelementptr inbounds %struct._GeometryInfo, ptr %7, i64 0, i32 3
  %194 = load double, ptr %193, align 8, !tbaa !35
  %195 = call fastcc double @DegreesToRadians(double noundef %194) #14
  %196 = fpext float %192 to double
  %197 = fsub double %195, %196
  %198 = fptrunc double %197 to float
  %199 = fpext float %198 to double
  %200 = fpext float %192 to double
  br label %201

201:                                              ; preds = %188, %182
  %202 = phi double [ %199, %188 ], [ 0.000000e+00, %182 ]
  %203 = phi double [ %200, %188 ], [ 0.000000e+00, %182 ]
  %204 = call ptr @AcquireResampleFilter(ptr noundef nonnull %0, ptr noundef nonnull %28) #16
  call void @SetResampleFilter(ptr noundef %204, i32 noundef 8, double noundef 1.000000e+00) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef nonnull align 8 dereferenceable(56) %8, i64 56, i1 false), !tbaa.struct !36
  %205 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %29, ptr noundef nonnull %28) #16
  %206 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %136, ptr noundef nonnull %28) #16
  %207 = getelementptr inbounds %struct._Image, ptr %29, i64 0, i32 8
  %208 = load i64, ptr %207, align 8, !tbaa !28
  %209 = icmp sgt i64 %208, 0
  br i1 %209, label %210, label %329

210:                                              ; preds = %201
  %211 = getelementptr inbounds %struct._Image, ptr %29, i64 0, i32 7
  %212 = getelementptr inbounds %struct._Image, ptr %136, i64 0, i32 7
  %213 = call double @llvm.fabs.f64(double %202)
  %214 = fcmp ogt double %213, 1.000000e-15
  %215 = fmul double %202, 0x3EF0001000100010
  %216 = fneg float %158
  %217 = fpext float %216 to double
  %218 = sitofp i64 %4 to double
  %219 = sitofp i64 %5 to double
  %220 = extractelement <2 x double> %161, i64 0
  br label %221

221:                                              ; preds = %210, %319
  %222 = phi i64 [ %208, %210 ], [ %320, %319 ]
  %223 = phi double [ %184, %210 ], [ %321, %319 ]
  %224 = phi double [ %183, %210 ], [ %322, %319 ]
  %225 = phi i64 [ 0, %210 ], [ %324, %319 ]
  %226 = phi <2 x double> [ %185, %210 ], [ %323, %319 ]
  %227 = add nsw i64 %225, %5
  %228 = icmp slt i64 %227, 0
  br i1 %228, label %319, label %229

229:                                              ; preds = %221
  %230 = load i64, ptr %134, align 8, !tbaa !28
  %231 = icmp slt i64 %227, %230
  br i1 %231, label %232, label %319

232:                                              ; preds = %229
  %233 = load i64, ptr %211, align 8, !tbaa !27
  %234 = call ptr @GetCacheViewVirtualPixels(ptr noundef %205, i64 noundef 0, i64 noundef %225, i64 noundef %233, i64 noundef 1, ptr noundef nonnull %28) #17
  %235 = load i64, ptr %212, align 8, !tbaa !27
  %236 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %206, i64 noundef 0, i64 noundef %225, i64 noundef %235, i64 noundef 1, ptr noundef nonnull %28) #17
  %237 = icmp eq ptr %234, null
  %238 = icmp eq ptr %236, null
  %239 = select i1 %237, i1 true, i1 %238
  br i1 %239, label %329, label %240

240:                                              ; preds = %232
  %241 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %206) #16
  %242 = load i64, ptr %211, align 8, !tbaa !27
  %243 = icmp sgt i64 %242, 0
  br i1 %243, label %244, label %311

244:                                              ; preds = %240
  %245 = sitofp i64 %225 to double
  %246 = fadd double %219, %245
  br label %247

247:                                              ; preds = %244, %302
  %248 = phi i64 [ %242, %244 ], [ %303, %302 ]
  %249 = phi i64 [ 0, %244 ], [ %309, %302 ]
  %250 = phi ptr [ %236, %244 ], [ %306, %302 ]
  %251 = phi ptr [ %234, %244 ], [ %308, %302 ]
  %252 = phi double [ %223, %244 ], [ %305, %302 ]
  %253 = phi double [ %224, %244 ], [ %304, %302 ]
  %254 = phi <2 x double> [ %226, %244 ], [ %307, %302 ]
  %255 = add nsw i64 %249, %4
  %256 = icmp slt i64 %255, 0
  br i1 %256, label %302, label %257

257:                                              ; preds = %247
  %258 = load i64, ptr %132, align 8, !tbaa !27
  %259 = icmp slt i64 %255, %258
  br i1 %259, label %260, label %302

260:                                              ; preds = %257
  br i1 %214, label %261, label %276

261:                                              ; preds = %260
  %262 = load i16, ptr %251, align 2, !tbaa !42
  %263 = uitofp i16 %262 to double
  %264 = call double @llvm.fmuladd.f64(double %215, double %263, double %203)
  %265 = fptrunc double %264 to float
  %266 = fpext float %265 to double
  %267 = call double @cos(double noundef %266) #16
  %268 = call double @sin(double noundef %266) #16
  %269 = fmul double %268, %220
  %270 = call double @sin(double noundef %266) #16
  %271 = fmul double %270, %217
  %272 = call double @cos(double noundef %266) #16
  %273 = insertelement <2 x double> poison, double %267, i64 0
  %274 = insertelement <2 x double> %273, double %272, i64 1
  %275 = fmul <2 x double> %274, %161
  br label %276

276:                                              ; preds = %261, %260
  %277 = phi double [ %269, %261 ], [ %253, %260 ]
  %278 = phi double [ %271, %261 ], [ %252, %260 ]
  %279 = phi <2 x double> [ %275, %261 ], [ %254, %260 ]
  %280 = extractelement <2 x double> %279, i64 0
  %281 = fmul double %280, 0x3EF0001000100010
  %282 = getelementptr inbounds %struct._PixelPacket, ptr %251, i64 0, i32 2
  %283 = load i16, ptr %282, align 2, !tbaa !43
  %284 = uitofp i16 %283 to double
  %285 = fmul double %281, %284
  %286 = fmul double %278, 0x3EF0001000100010
  %287 = getelementptr inbounds %struct._PixelPacket, ptr %251, i64 0, i32 1
  %288 = load i16, ptr %287, align 2, !tbaa !44
  %289 = uitofp i16 %288 to double
  %290 = fmul double %286, %289
  %291 = fmul double %277, 0x3EF0001000100010
  %292 = fmul double %291, %284
  %293 = extractelement <2 x double> %279, i64 1
  %294 = fmul double %293, 0x3EF0001000100010
  %295 = fmul double %294, %289
  call void @ScaleResampleFilter(ptr noundef %204, double noundef %285, double noundef %290, double noundef %292, double noundef %295) #16
  %296 = sitofp i64 %249 to double
  %297 = fadd double %218, %296
  %298 = call i32 @ResamplePixelColor(ptr noundef %204, double noundef %297, double noundef %246, ptr noundef nonnull %9) #16
  %299 = getelementptr inbounds i16, ptr %241, i64 %249
  call fastcc void @SetPixelPacket(ptr noundef nonnull %136, ptr noundef nonnull %9, ptr noundef %250, ptr noundef %299) #14
  %300 = getelementptr inbounds %struct._PixelPacket, ptr %250, i64 1
  %301 = load i64, ptr %211, align 8, !tbaa !27
  br label %302

302:                                              ; preds = %247, %257, %276
  %303 = phi i64 [ %301, %276 ], [ %248, %257 ], [ %248, %247 ]
  %304 = phi double [ %277, %276 ], [ %253, %257 ], [ %253, %247 ]
  %305 = phi double [ %278, %276 ], [ %252, %257 ], [ %252, %247 ]
  %306 = phi ptr [ %300, %276 ], [ %250, %257 ], [ %250, %247 ]
  %307 = phi <2 x double> [ %279, %276 ], [ %254, %257 ], [ %254, %247 ]
  %308 = getelementptr inbounds %struct._PixelPacket, ptr %251, i64 1
  %309 = add nuw nsw i64 %249, 1
  %310 = icmp slt i64 %309, %303
  br i1 %310, label %247, label %311, !llvm.loop !45

311:                                              ; preds = %302, %240
  %312 = phi double [ %224, %240 ], [ %304, %302 ]
  %313 = phi double [ %223, %240 ], [ %305, %302 ]
  %314 = phi <2 x double> [ %226, %240 ], [ %307, %302 ]
  %315 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %206, ptr noundef nonnull %28) #17
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %329, label %317

317:                                              ; preds = %311
  %318 = load i64, ptr %207, align 8, !tbaa !28
  br label %319

319:                                              ; preds = %317, %221, %229
  %320 = phi i64 [ %318, %317 ], [ %222, %229 ], [ %222, %221 ]
  %321 = phi double [ %313, %317 ], [ %223, %229 ], [ %223, %221 ]
  %322 = phi double [ %312, %317 ], [ %224, %229 ], [ %224, %221 ]
  %323 = phi <2 x double> [ %314, %317 ], [ %226, %229 ], [ %226, %221 ]
  %324 = add nuw nsw i64 %225, 1
  %325 = icmp slt i64 %324, %320
  br i1 %325, label %221, label %329, !llvm.loop !46

326:                                              ; preds = %131, %145
  %327 = phi ptr [ %136, %145 ], [ %29, %131 ]
  %328 = call ptr @DestroyImage(ptr noundef nonnull %327) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %9) #15
  br label %1147

329:                                              ; preds = %311, %319, %232, %201
  %330 = call ptr @DestroyResampleFilter(ptr noundef %204) #16
  %331 = call ptr @DestroyCacheView(ptr noundef %205) #16
  %332 = call ptr @DestroyCacheView(ptr noundef %206) #16
  %333 = call ptr @DestroyImage(ptr noundef nonnull %29) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %9) #15
  br label %679

334:                                              ; preds = %39, %39
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #15
  %335 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %336 = load i64, ptr %335, align 8, !tbaa !27
  %337 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %338 = load i64, ptr %337, align 8, !tbaa !28
  %339 = call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %336, i64 noundef %338, i32 noundef 1, ptr noundef nonnull %28) #16
  %340 = icmp eq ptr %339, null
  br i1 %340, label %341, label %343

341:                                              ; preds = %334
  %342 = call ptr @DestroyImage(ptr noundef nonnull %29) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #15
  br label %1147

343:                                              ; preds = %334
  call void @SetGeometryInfo(ptr noundef nonnull %7) #16
  %344 = call ptr @GetImageArtifact(ptr noundef nonnull %29, ptr noundef nonnull @.str.4) #16
  %345 = icmp eq ptr %344, null
  br i1 %345, label %353, label %346

346:                                              ; preds = %343
  %347 = call i32 @ParseGeometry(ptr noundef nonnull %344, ptr noundef nonnull %7) #16
  %348 = and i32 %347, 12
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %350, label %367

350:                                              ; preds = %346
  %351 = and i32 %347, 8192
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %353, label %361

353:                                              ; preds = %343, %350
  %354 = phi i32 [ %347, %350 ], [ 0, %343 ]
  %355 = getelementptr inbounds %struct._Image, ptr %29, i64 0, i32 7
  %356 = load <2 x i64>, ptr %355, align 8, !tbaa !39
  %357 = uitofp <2 x i64> %356 to <2 x double>
  %358 = fadd <2 x double> %357, <double -1.000000e+00, double -1.000000e+00>
  %359 = fptrunc <2 x double> %358 to <2 x float>
  %360 = fmul <2 x float> %359, <float 5.000000e-01, float 5.000000e-01>
  br label %412

361:                                              ; preds = %350
  %362 = load <2 x i64>, ptr %335, align 8, !tbaa !39
  %363 = uitofp <2 x i64> %362 to <2 x double>
  %364 = fadd <2 x double> %363, <double -1.000000e+00, double -1.000000e+00>
  %365 = fptrunc <2 x double> %364 to <2 x float>
  %366 = fmul <2 x float> %365, <float 5.000000e-01, float 5.000000e-01>
  br label %412

367:                                              ; preds = %346
  %368 = load <2 x double>, ptr %7, align 16, !tbaa !38
  %369 = fptrunc <2 x double> %368 to <2 x float>
  %370 = and i32 %347, 4096
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %406, label %372

372:                                              ; preds = %367
  %373 = and i32 %347, 8192
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %375, label %385

375:                                              ; preds = %372
  %376 = getelementptr inbounds %struct._Image, ptr %29, i64 0, i32 7
  %377 = load i64, ptr %376, align 8, !tbaa !27
  %378 = uitofp i64 %377 to double
  %379 = fadd double %378, -1.000000e+00
  %380 = fdiv double %379, 2.000000e+02
  %381 = extractelement <2 x float> %369, i64 0
  %382 = fpext float %381 to double
  %383 = fmul double %380, %382
  %384 = getelementptr inbounds %struct._Image, ptr %29, i64 0, i32 8
  br label %393

385:                                              ; preds = %372
  %386 = load i64, ptr %335, align 8, !tbaa !27
  %387 = uitofp i64 %386 to double
  %388 = fadd double %387, -1.000000e+00
  %389 = fdiv double %388, 2.000000e+02
  %390 = extractelement <2 x float> %369, i64 0
  %391 = fpext float %390 to double
  %392 = fmul double %389, %391
  br label %393

393:                                              ; preds = %385, %375
  %394 = phi ptr [ %384, %375 ], [ %337, %385 ]
  %395 = phi double [ %383, %375 ], [ %392, %385 ]
  %396 = load i64, ptr %394, align 8, !tbaa !28
  %397 = uitofp i64 %396 to double
  %398 = fadd double %397, -1.000000e+00
  %399 = fdiv double %398, 2.000000e+02
  %400 = extractelement <2 x float> %369, i64 1
  %401 = fpext float %400 to double
  %402 = fmul double %399, %401
  %403 = insertelement <2 x double> poison, double %395, i64 0
  %404 = insertelement <2 x double> %403, double %402, i64 1
  %405 = fptrunc <2 x double> %404 to <2 x float>
  br label %406

406:                                              ; preds = %393, %367
  %407 = phi <2 x float> [ %369, %367 ], [ %405, %393 ]
  %408 = and i32 %347, 8
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %410, label %412

410:                                              ; preds = %406
  %411 = shufflevector <2 x float> %407, <2 x float> poison, <2 x i32> zeroinitializer
  br label %412

412:                                              ; preds = %406, %410, %353, %361
  %413 = phi i32 [ %354, %353 ], [ %347, %361 ], [ %347, %410 ], [ %347, %406 ]
  %414 = phi <2 x float> [ %360, %353 ], [ %366, %361 ], [ %411, %410 ], [ %407, %406 ]
  %415 = sitofp i64 %4 to float
  %416 = fpext float %415 to double
  %417 = sitofp i64 %5 to float
  %418 = fpext float %417 to double
  %419 = icmp eq i32 %2, 56
  br i1 %419, label %420, label %487

420:                                              ; preds = %412
  %421 = and i32 %413, 1
  %422 = icmp eq i32 %421, 0
  %423 = and i32 %413, 8192
  %424 = icmp eq i32 %423, 0
  br i1 %422, label %425, label %442

425:                                              ; preds = %420
  br i1 %424, label %426, label %436

426:                                              ; preds = %425
  %427 = sitofp i64 %4 to double
  %428 = getelementptr inbounds %struct._Image, ptr %29, i64 0, i32 7
  %429 = load i64, ptr %428, align 8, !tbaa !27
  %430 = add i64 %429, -1
  %431 = uitofp i64 %430 to double
  %432 = fmul double %431, 5.000000e-01
  %433 = fadd double %432, %427
  %434 = fptrunc double %433 to float
  %435 = fpext float %434 to double
  br label %453

436:                                              ; preds = %425
  %437 = load i64, ptr %335, align 8, !tbaa !27
  %438 = uitofp i64 %437 to float
  %439 = fadd float %438, -1.000000e+00
  %440 = fpext float %439 to double
  %441 = fmul double %440, 5.000000e-01
  br label %453

442:                                              ; preds = %420
  br i1 %424, label %443, label %450

443:                                              ; preds = %442
  %444 = sitofp i64 %4 to double
  %445 = getelementptr inbounds %struct._GeometryInfo, ptr %7, i64 0, i32 2
  %446 = load double, ptr %445, align 16, !tbaa !34
  %447 = fadd double %446, %444
  %448 = fptrunc double %447 to float
  %449 = fpext float %448 to double
  br label %453

450:                                              ; preds = %442
  %451 = getelementptr inbounds %struct._GeometryInfo, ptr %7, i64 0, i32 2
  %452 = load double, ptr %451, align 16, !tbaa !34
  br label %453

453:                                              ; preds = %443, %450, %426, %436
  %454 = phi double [ %435, %426 ], [ %441, %436 ], [ %449, %443 ], [ %452, %450 ]
  %455 = and i32 %413, 2
  %456 = icmp eq i32 %455, 0
  %457 = and i32 %413, 8192
  %458 = icmp eq i32 %457, 0
  br i1 %456, label %459, label %476

459:                                              ; preds = %453
  br i1 %458, label %460, label %470

460:                                              ; preds = %459
  %461 = sitofp i64 %5 to double
  %462 = getelementptr inbounds %struct._Image, ptr %29, i64 0, i32 8
  %463 = load i64, ptr %462, align 8, !tbaa !28
  %464 = add i64 %463, -1
  %465 = uitofp i64 %464 to double
  %466 = fmul double %465, 5.000000e-01
  %467 = fadd double %466, %461
  %468 = fptrunc double %467 to float
  %469 = fpext float %468 to double
  br label %487

470:                                              ; preds = %459
  %471 = load i64, ptr %337, align 8, !tbaa !28
  %472 = uitofp i64 %471 to float
  %473 = fadd float %472, -1.000000e+00
  %474 = fpext float %473 to double
  %475 = fmul double %474, 5.000000e-01
  br label %487

476:                                              ; preds = %453
  br i1 %458, label %477, label %484

477:                                              ; preds = %476
  %478 = sitofp i64 %5 to double
  %479 = getelementptr inbounds %struct._GeometryInfo, ptr %7, i64 0, i32 3
  %480 = load double, ptr %479, align 8, !tbaa !35
  %481 = fadd double %480, %478
  %482 = fptrunc double %481 to float
  %483 = fpext float %482 to double
  br label %487

484:                                              ; preds = %476
  %485 = getelementptr inbounds %struct._GeometryInfo, ptr %7, i64 0, i32 3
  %486 = load double, ptr %485, align 8, !tbaa !35
  br label %487

487:                                              ; preds = %470, %460, %484, %477, %412
  %488 = phi double [ %469, %460 ], [ %475, %470 ], [ %483, %477 ], [ %486, %484 ], [ %418, %412 ]
  %489 = phi double [ %454, %460 ], [ %454, %470 ], [ %454, %477 ], [ %454, %484 ], [ %416, %412 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull align 8 dereferenceable(56) %8, i64 56, i1 false), !tbaa.struct !36
  %490 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef nonnull %28) #16
  %491 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %29, ptr noundef nonnull %28) #16
  %492 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %339, ptr noundef nonnull %28) #16
  %493 = getelementptr inbounds %struct._Image, ptr %29, i64 0, i32 8
  %494 = load i64, ptr %493, align 8, !tbaa !28
  %495 = icmp sgt i64 %494, 0
  br i1 %495, label %496, label %587

496:                                              ; preds = %487
  %497 = getelementptr inbounds %struct._Image, ptr %29, i64 0, i32 7
  %498 = getelementptr inbounds %struct._Image, ptr %339, i64 0, i32 7
  %499 = extractelement <2 x float> %414, i64 0
  %500 = fpext float %499 to double
  %501 = icmp eq i32 %2, 27
  %502 = extractelement <2 x float> %414, i64 1
  %503 = fpext float %502 to double
  %504 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 8
  br label %505

505:                                              ; preds = %496, %583
  %506 = phi i64 [ %494, %496 ], [ %584, %583 ]
  %507 = phi i64 [ 0, %496 ], [ %585, %583 ]
  %508 = add nsw i64 %507, %5
  %509 = icmp slt i64 %508, 0
  br i1 %509, label %583, label %510

510:                                              ; preds = %505
  %511 = load i64, ptr %337, align 8, !tbaa !28
  %512 = icmp slt i64 %508, %511
  br i1 %512, label %513, label %583

513:                                              ; preds = %510
  %514 = load i64, ptr %497, align 8, !tbaa !27
  %515 = call ptr @GetCacheViewVirtualPixels(ptr noundef %491, i64 noundef 0, i64 noundef %507, i64 noundef %514, i64 noundef 1, ptr noundef nonnull %28) #17
  %516 = load i64, ptr %498, align 8, !tbaa !27
  %517 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %492, i64 noundef 0, i64 noundef %507, i64 noundef %516, i64 noundef 1, ptr noundef nonnull %28) #17
  %518 = icmp eq ptr %515, null
  %519 = icmp eq ptr %517, null
  %520 = select i1 %518, i1 true, i1 %519
  br i1 %520, label %587, label %521

521:                                              ; preds = %513
  %522 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %492) #16
  %523 = load i64, ptr %497, align 8, !tbaa !27
  %524 = icmp sgt i64 %523, 0
  br i1 %524, label %525, label %578

525:                                              ; preds = %521
  %526 = sitofp i64 %507 to double
  %527 = select i1 %501, double %526, double 0.000000e+00
  br label %528

528:                                              ; preds = %525, %572
  %529 = phi i64 [ %523, %525 ], [ %573, %572 ]
  %530 = phi i64 [ 0, %525 ], [ %576, %572 ]
  %531 = phi ptr [ %515, %525 ], [ %575, %572 ]
  %532 = phi ptr [ %517, %525 ], [ %574, %572 ]
  %533 = add nsw i64 %530, %4
  %534 = icmp slt i64 %533, 0
  br i1 %534, label %572, label %535

535:                                              ; preds = %528
  %536 = load i64, ptr %335, align 8, !tbaa !27
  %537 = icmp slt i64 %533, %536
  br i1 %537, label %538, label %572

538:                                              ; preds = %535
  %539 = getelementptr inbounds %struct._PixelPacket, ptr %531, i64 0, i32 2
  %540 = load i16, ptr %539, align 2, !tbaa !43
  %541 = uitofp i16 %540 to double
  %542 = fadd double %541, -3.276800e+04
  %543 = fmul double %542, %500
  %544 = fmul double %543, 0x3F00000000000000
  %545 = fadd double %489, %544
  %546 = sitofp i64 %530 to double
  %547 = select i1 %501, double %546, double 0.000000e+00
  %548 = fadd double %547, %545
  %549 = getelementptr inbounds %struct._PixelPacket, ptr %531, i64 0, i32 1
  %550 = load i16, ptr %549, align 2, !tbaa !44
  %551 = uitofp i16 %550 to double
  %552 = fadd double %551, -3.276800e+04
  %553 = fmul double %552, %503
  %554 = fmul double %553, 0x3F00000000000000
  %555 = fadd double %488, %554
  %556 = fadd double %527, %555
  %557 = call i32 @InterpolateMagickPixelPacket(ptr noundef nonnull %0, ptr noundef %490, i32 noundef 0, double noundef %548, double noundef %556, ptr noundef nonnull %10, ptr noundef nonnull %28) #16
  %558 = load float, ptr %504, align 4, !tbaa !47
  %559 = fpext float %558 to double
  %560 = call double @llvm.fmuladd.f64(double %559, double 0xBEF0001000100010, double 1.000000e+00)
  %561 = getelementptr inbounds %struct._PixelPacket, ptr %531, i64 0, i32 3
  %562 = load i16, ptr %561, align 2, !tbaa !49
  %563 = uitofp i16 %562 to double
  %564 = call double @llvm.fmuladd.f64(double %563, double 0xBEF0001000100010, double 1.000000e+00)
  %565 = fneg double %560
  %566 = call double @llvm.fmuladd.f64(double %565, double %564, double 1.000000e+00)
  %567 = fmul double %566, 6.553500e+04
  %568 = fptrunc double %567 to float
  store float %568, ptr %504, align 4, !tbaa !47
  %569 = getelementptr inbounds i16, ptr %522, i64 %530
  call fastcc void @SetPixelPacket(ptr noundef nonnull %339, ptr noundef nonnull %10, ptr noundef %532, ptr noundef %569) #14
  %570 = getelementptr inbounds %struct._PixelPacket, ptr %532, i64 1
  %571 = load i64, ptr %497, align 8, !tbaa !27
  br label %572

572:                                              ; preds = %528, %535, %538
  %573 = phi i64 [ %571, %538 ], [ %529, %535 ], [ %529, %528 ]
  %574 = phi ptr [ %570, %538 ], [ %532, %535 ], [ %532, %528 ]
  %575 = getelementptr inbounds %struct._PixelPacket, ptr %531, i64 1
  %576 = add nuw nsw i64 %530, 1
  %577 = icmp slt i64 %576, %573
  br i1 %577, label %528, label %578, !llvm.loop !50

578:                                              ; preds = %572, %521
  %579 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %492, ptr noundef nonnull %28) #17
  %580 = icmp eq i32 %579, 0
  br i1 %580, label %587, label %581

581:                                              ; preds = %578
  %582 = load i64, ptr %493, align 8, !tbaa !28
  br label %583

583:                                              ; preds = %581, %505, %510
  %584 = phi i64 [ %582, %581 ], [ %506, %505 ], [ %506, %510 ]
  %585 = add nuw nsw i64 %507, 1
  %586 = icmp slt i64 %585, %584
  br i1 %586, label %505, label %587, !llvm.loop !51

587:                                              ; preds = %578, %583, %513, %487
  %588 = call ptr @DestroyCacheView(ptr noundef %492) #16
  %589 = call ptr @DestroyCacheView(ptr noundef %491) #16
  %590 = call ptr @DestroyCacheView(ptr noundef %490) #16
  %591 = call ptr @DestroyImage(ptr noundef nonnull %29) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #15
  br label %679

592:                                              ; preds = %39
  %593 = call ptr @GetImageArtifact(ptr noundef nonnull %29, ptr noundef nonnull @.str.4) #16
  %594 = icmp eq ptr %593, null
  br i1 %594, label %679, label %595

595:                                              ; preds = %592
  %596 = call i32 @ParseGeometry(ptr noundef nonnull %593, ptr noundef nonnull %7) #16
  %597 = load double, ptr %7, align 16, !tbaa !32
  %598 = fdiv double %597, 1.000000e+02
  %599 = fptrunc double %598 to float
  %600 = fpext float %599 to double
  %601 = fadd double %600, -1.000000e-15
  %602 = fcmp olt double %601, 0.000000e+00
  %603 = select i1 %602, float 0.000000e+00, float %599
  %604 = fpext float %603 to double
  %605 = fadd double %604, 1.000000e-15
  %606 = fcmp ogt double %605, 1.000000e+00
  %607 = fsub float 2.000000e+00, %603
  %608 = select i1 %606, float 1.000000e+00, float %603
  %609 = select i1 %606, float %607, float 1.000000e+00
  %610 = and i32 %596, 8
  %611 = icmp eq i32 %610, 0
  %612 = getelementptr inbounds %struct._GeometryInfo, ptr %7, i64 0, i32 1
  %613 = load double, ptr %612, align 8
  %614 = fdiv double %613, 1.000000e+02
  %615 = fptrunc double %614 to float
  %616 = select i1 %611, float %609, float %615
  %617 = fpext float %616 to double
  %618 = fadd double %617, -1.000000e-15
  %619 = fcmp olt double %618, 0.000000e+00
  %620 = select i1 %619, float 0.000000e+00, float %616
  %621 = fpext float %620 to double
  %622 = fadd double %621, 1.000000e-15
  %623 = fcmp ogt double %622, 1.000000e+00
  br i1 %623, label %624, label %679

624:                                              ; preds = %595
  br label %679

625:                                              ; preds = %39
  %626 = call ptr @GetImageArtifact(ptr noundef nonnull %29, ptr noundef nonnull @.str.4) #16
  %627 = icmp eq ptr %626, null
  br i1 %627, label %679, label %628

628:                                              ; preds = %625
  %629 = call i32 @ParseGeometry(ptr noundef nonnull %626, ptr noundef nonnull %7) #16
  %630 = load double, ptr %7, align 16, !tbaa !32
  %631 = fdiv double %630, 1.000000e+02
  %632 = fptrunc double %631 to float
  %633 = fsub float 1.000000e+00, %632
  %634 = and i32 %629, 8
  %635 = icmp eq i32 %634, 0
  %636 = getelementptr inbounds %struct._GeometryInfo, ptr %7, i64 0, i32 1
  %637 = load double, ptr %636, align 8
  %638 = fdiv double %637, 1.000000e+02
  %639 = fptrunc double %638 to float
  %640 = select i1 %635, float %633, float %639
  %641 = fpext float %640 to double
  %642 = fadd double %641, 1.000000e-15
  %643 = fcmp ogt double %642, 1.000000e+00
  br i1 %643, label %644, label %679

644:                                              ; preds = %628
  br label %679

645:                                              ; preds = %39
  call void @SetGeometryInfo(ptr noundef nonnull %7) #16
  %646 = call ptr @GetImageArtifact(ptr noundef nonnull %29, ptr noundef nonnull @.str.4) #16
  %647 = icmp eq ptr %646, null
  br i1 %647, label %679, label %648

648:                                              ; preds = %645
  %649 = call i32 @ParseGeometry(ptr noundef nonnull %646, ptr noundef nonnull %7) #16
  br label %679

650:                                              ; preds = %39
  %651 = call ptr @GetImageArtifact(ptr noundef nonnull %29, ptr noundef nonnull @.str.4) #16
  %652 = icmp eq ptr %651, null
  br i1 %652, label %679, label %653

653:                                              ; preds = %650
  %654 = call i32 @ParseGeometry(ptr noundef nonnull %651, ptr noundef nonnull %7) #16
  %655 = load double, ptr %7, align 16, !tbaa !32
  %656 = fptrunc double %655 to float
  %657 = and i32 %654, 8
  %658 = icmp eq i32 %657, 0
  br i1 %658, label %679, label %659

659:                                              ; preds = %653
  %660 = getelementptr inbounds %struct._GeometryInfo, ptr %7, i64 0, i32 1
  %661 = load double, ptr %660, align 8, !tbaa !52
  %662 = fptrunc double %661 to float
  %663 = fpext float %662 to double
  %664 = fmul double %663, 1.000000e-02
  br label %679

665:                                              ; preds = %39
  %666 = call ptr @GetImageArtifact(ptr noundef nonnull %29, ptr noundef nonnull @.str.4) #16
  %667 = icmp eq ptr %666, null
  br i1 %667, label %679, label %668

668:                                              ; preds = %665
  %669 = call i32 @ParseGeometry(ptr noundef nonnull %666, ptr noundef nonnull %7) #16
  %670 = load double, ptr %7, align 16, !tbaa !32
  %671 = fptrunc double %670 to float
  %672 = getelementptr inbounds %struct._GeometryInfo, ptr %7, i64 0, i32 1
  %673 = load double, ptr %672, align 8, !tbaa !52
  %674 = fptrunc double %673 to float
  %675 = and i32 %669, 8
  %676 = icmp eq i32 %675, 0
  %677 = fmul float %674, 6.553500e+04
  %678 = select i1 %676, float 3.276750e+03, float %677
  br label %679

679:                                              ; preds = %665, %668, %587, %329, %125, %129, %39, %650, %659, %653, %645, %648, %625, %644, %628, %592, %624, %595, %64, %57, %54, %47, %43, %42
  %680 = phi float [ 0x3FA99999A0000000, %39 ], [ 0x3FA99999A0000000, %659 ], [ 0x3FA99999A0000000, %653 ], [ 0x3FA99999A0000000, %650 ], [ 0x3FA99999A0000000, %648 ], [ 0x3FA99999A0000000, %645 ], [ 0x3FA99999A0000000, %644 ], [ 0x3FA99999A0000000, %628 ], [ 0x3FA99999A0000000, %625 ], [ 0x3FA99999A0000000, %624 ], [ 0x3FA99999A0000000, %595 ], [ 0x3FA99999A0000000, %592 ], [ 0x3FA99999A0000000, %587 ], [ 0x3FA99999A0000000, %329 ], [ 0x3FA99999A0000000, %54 ], [ 0x3FA99999A0000000, %57 ], [ 0x3FA99999A0000000, %64 ], [ 0x3FA99999A0000000, %43 ], [ 0x3FA99999A0000000, %47 ], [ 0x3FA99999A0000000, %42 ], [ 0x3FA99999A0000000, %129 ], [ 0x3FA99999A0000000, %125 ], [ %678, %668 ], [ 3.276750e+03, %665 ]
  %681 = phi float [ 1.000000e+00, %39 ], [ 1.000000e+00, %659 ], [ 1.000000e+00, %653 ], [ 1.000000e+00, %650 ], [ 1.000000e+00, %648 ], [ 1.000000e+00, %645 ], [ %632, %644 ], [ %632, %628 ], [ 1.000000e+00, %625 ], [ %608, %624 ], [ %608, %595 ], [ 1.000000e+00, %592 ], [ 1.000000e+00, %587 ], [ 1.000000e+00, %329 ], [ 1.000000e+00, %54 ], [ 1.000000e+00, %57 ], [ 1.000000e+00, %64 ], [ 1.000000e+00, %43 ], [ 1.000000e+00, %47 ], [ 1.000000e+00, %42 ], [ 1.000000e+00, %129 ], [ 1.000000e+00, %125 ], [ 1.000000e+00, %668 ], [ 1.000000e+00, %665 ]
  %682 = phi double [ 1.000000e+00, %39 ], [ %664, %659 ], [ 1.000000e+00, %653 ], [ 1.000000e+00, %650 ], [ 1.000000e+00, %648 ], [ 1.000000e+00, %645 ], [ 1.000000e+00, %644 ], [ 1.000000e+00, %628 ], [ 1.000000e+00, %625 ], [ 1.000000e+00, %624 ], [ 1.000000e+00, %595 ], [ 1.000000e+00, %592 ], [ 1.000000e+00, %587 ], [ 1.000000e+00, %329 ], [ 1.000000e+00, %54 ], [ 1.000000e+00, %57 ], [ 1.000000e+00, %64 ], [ 1.000000e+00, %43 ], [ 1.000000e+00, %47 ], [ 1.000000e+00, %42 ], [ 1.000000e+00, %129 ], [ 1.000000e+00, %125 ], [ 1.000000e+00, %668 ], [ 1.000000e+00, %665 ]
  %683 = phi float [ 1.000000e+02, %39 ], [ %656, %659 ], [ %656, %653 ], [ 1.000000e+02, %650 ], [ 1.000000e+02, %648 ], [ 1.000000e+02, %645 ], [ 1.000000e+02, %644 ], [ 1.000000e+02, %628 ], [ 1.000000e+02, %625 ], [ 1.000000e+02, %624 ], [ 1.000000e+02, %595 ], [ 1.000000e+02, %592 ], [ 1.000000e+02, %587 ], [ 1.000000e+02, %329 ], [ 1.000000e+02, %54 ], [ 1.000000e+02, %57 ], [ 1.000000e+02, %64 ], [ 1.000000e+02, %43 ], [ 1.000000e+02, %47 ], [ 1.000000e+02, %42 ], [ 1.000000e+02, %129 ], [ 1.000000e+02, %125 ], [ 1.000000e+02, %668 ], [ 1.000000e+02, %665 ]
  %684 = phi float [ 1.000000e+00, %39 ], [ 1.000000e+00, %659 ], [ 1.000000e+00, %653 ], [ 1.000000e+00, %650 ], [ 1.000000e+00, %648 ], [ 1.000000e+00, %645 ], [ %640, %644 ], [ %640, %628 ], [ 1.000000e+00, %625 ], [ 1.000000e+00, %624 ], [ %620, %595 ], [ 1.000000e+00, %592 ], [ 1.000000e+00, %587 ], [ 1.000000e+00, %329 ], [ 1.000000e+00, %54 ], [ 1.000000e+00, %57 ], [ 1.000000e+00, %64 ], [ 1.000000e+00, %43 ], [ 1.000000e+00, %47 ], [ 1.000000e+00, %42 ], [ 1.000000e+00, %129 ], [ 1.000000e+00, %125 ], [ 1.000000e+00, %668 ], [ 1.000000e+00, %665 ]
  %685 = phi float [ 5.000000e-01, %39 ], [ 5.000000e-01, %659 ], [ 5.000000e-01, %653 ], [ 5.000000e-01, %650 ], [ 5.000000e-01, %648 ], [ 5.000000e-01, %645 ], [ 5.000000e-01, %644 ], [ 5.000000e-01, %628 ], [ 5.000000e-01, %625 ], [ 5.000000e-01, %624 ], [ 5.000000e-01, %595 ], [ 5.000000e-01, %592 ], [ 5.000000e-01, %587 ], [ 5.000000e-01, %329 ], [ 5.000000e-01, %54 ], [ 5.000000e-01, %57 ], [ 5.000000e-01, %64 ], [ 5.000000e-01, %43 ], [ 5.000000e-01, %47 ], [ 5.000000e-01, %42 ], [ 5.000000e-01, %129 ], [ 5.000000e-01, %125 ], [ %671, %668 ], [ 5.000000e-01, %665 ]
  %686 = phi i32 [ 1, %39 ], [ 1, %659 ], [ 1, %653 ], [ 1, %650 ], [ 1, %648 ], [ 1, %645 ], [ 1, %644 ], [ 0, %628 ], [ 1, %625 ], [ 1, %624 ], [ 0, %595 ], [ 1, %592 ], [ 1, %587 ], [ 1, %329 ], [ 1, %54 ], [ 1, %57 ], [ 1, %64 ], [ 1, %43 ], [ 1, %47 ], [ 0, %42 ], [ 0, %129 ], [ 0, %125 ], [ 1, %668 ], [ 1, %665 ]
  %687 = phi ptr [ null, %39 ], [ null, %659 ], [ null, %653 ], [ null, %650 ], [ null, %648 ], [ null, %645 ], [ null, %644 ], [ null, %628 ], [ null, %625 ], [ null, %624 ], [ null, %595 ], [ null, %592 ], [ %339, %587 ], [ %136, %329 ], [ null, %54 ], [ null, %57 ], [ null, %64 ], [ null, %43 ], [ null, %47 ], [ null, %42 ], [ null, %129 ], [ null, %125 ], [ null, %668 ], [ null, %665 ]
  %688 = phi ptr [ %29, %39 ], [ %29, %659 ], [ %29, %653 ], [ %29, %650 ], [ %29, %648 ], [ %29, %645 ], [ %29, %644 ], [ %29, %628 ], [ %29, %625 ], [ %29, %624 ], [ %29, %595 ], [ %29, %592 ], [ %339, %587 ], [ %136, %329 ], [ %29, %54 ], [ %29, %57 ], [ %29, %64 ], [ %29, %43 ], [ %29, %47 ], [ %29, %42 ], [ %29, %129 ], [ %29, %125 ], [ %29, %668 ], [ %29, %665 ]
  %689 = call ptr @GetImageArtifact(ptr noundef %688, ptr noundef nonnull @.str.7) #16
  %690 = icmp eq ptr %689, null
  br i1 %690, label %695, label %691

691:                                              ; preds = %679
  %692 = call i32 @IsMagickTrue(ptr noundef nonnull %689) #16
  %693 = icmp eq i32 %692, 0
  %694 = zext i1 %693 to i32
  br label %695

695:                                              ; preds = %691, %679
  %696 = phi i32 [ %694, %691 ], [ %686, %679 ]
  %697 = call i32 @AccelerateCompositeImage(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %688, i64 noundef %4, i64 noundef %5, float noundef %684, float noundef %681, ptr noundef nonnull %28) #16
  %698 = icmp eq i32 %697, 1
  br i1 %698, label %1147, label %699

699:                                              ; preds = %695
  call void @GetMagickPixelPacket(ptr noundef %688, ptr noundef nonnull %8) #16
  %700 = call ptr @AcquireVirtualCacheView(ptr noundef %688, ptr noundef nonnull %28) #16
  %701 = call ptr @AcquireAuthenticCacheView(ptr noundef %0, ptr noundef nonnull %28) #16
  %702 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %703 = load i64, ptr %702, align 8, !tbaa !28
  %704 = icmp sgt i64 %703, 0
  br i1 %704, label %705, label %1138

705:                                              ; preds = %699
  %706 = icmp eq i32 %696, 0
  %707 = getelementptr inbounds %struct._Image, ptr %688, i64 0, i32 8
  %708 = getelementptr inbounds %struct._Image, ptr %688, i64 0, i32 7
  %709 = icmp slt i64 %4, 0
  %710 = sub i64 0, %4
  %711 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %712 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 0, i32 5
  %713 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 0, i32 7
  %714 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %715 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 0, i32 8
  %716 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 0, i32 9
  %717 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 0, i32 5
  %718 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 0, i32 6
  %719 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 0, i32 7
  %720 = getelementptr inbounds %struct._Image, ptr %688, i64 0, i32 6
  %721 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 0, i32 8
  %722 = getelementptr inbounds %struct._Image, ptr %688, i64 0, i32 1
  %723 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 0, i32 9
  %724 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 0, i32 1
  %725 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 9
  %726 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 0, i32 2
  %727 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 8
  %728 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 7
  %729 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 6
  %730 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 5
  %731 = fpext float %683 to double
  %732 = fmul double %731, 1.000000e-02
  %733 = fneg float %681
  %734 = fneg float %684
  %735 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %736 = select i1 %709, i64 %710, i64 0
  br label %737

737:                                              ; preds = %705, %1132
  %738 = phi i32 [ 1, %705 ], [ %1134, %1132 ]
  %739 = phi i64 [ 0, %705 ], [ %1133, %1132 ]
  %740 = phi i64 [ 0, %705 ], [ %1135, %1132 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #15
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %15) #15
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %16) #15
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %17) #15
  %741 = icmp eq i32 %738, 0
  br i1 %741, label %1132, label %742

742:                                              ; preds = %737
  br i1 %706, label %749, label %743

743:                                              ; preds = %742
  %744 = icmp slt i64 %740, %5
  br i1 %744, label %1132, label %745

745:                                              ; preds = %743
  %746 = sub nsw i64 %740, %5
  %747 = load i64, ptr %707, align 8, !tbaa !28
  %748 = icmp slt i64 %746, %747
  br i1 %748, label %749, label %1132

749:                                              ; preds = %745, %742
  %750 = icmp slt i64 %740, %5
  br i1 %750, label %761, label %751

751:                                              ; preds = %749
  %752 = sub nsw i64 %740, %5
  %753 = load i64, ptr %707, align 8, !tbaa !28
  %754 = icmp slt i64 %752, %753
  br i1 %754, label %755, label %761

755:                                              ; preds = %751
  %756 = load i64, ptr %708, align 8, !tbaa !27
  %757 = call ptr @GetCacheViewVirtualPixels(ptr noundef %700, i64 noundef 0, i64 noundef %752, i64 noundef %756, i64 noundef 1, ptr noundef nonnull %28) #17
  %758 = icmp eq ptr %757, null
  br i1 %758, label %1132, label %759

759:                                              ; preds = %755
  %760 = getelementptr inbounds %struct._PixelPacket, ptr %757, i64 %736
  br label %761

761:                                              ; preds = %759, %751, %749
  %762 = phi ptr [ null, %751 ], [ null, %749 ], [ %757, %759 ]
  %763 = phi ptr [ null, %751 ], [ null, %749 ], [ %760, %759 ]
  %764 = load i64, ptr %711, align 8, !tbaa !27
  %765 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %701, i64 noundef 0, i64 noundef %740, i64 noundef %764, i64 noundef 1, ptr noundef nonnull %28) #17
  %766 = icmp eq ptr %765, null
  br i1 %766, label %1132, label %767

767:                                              ; preds = %761
  %768 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %701) #16
  %769 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %700) #16
  call void @GetMagickPixelPacket(ptr noundef %688, ptr noundef nonnull %17) #16
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %16) #16
  store double 0.000000e+00, ptr %12, align 8, !tbaa !38
  store double 0.000000e+00, ptr %13, align 8, !tbaa !38
  store double 0.000000e+00, ptr %11, align 8, !tbaa !38
  %770 = load i64, ptr %711, align 8, !tbaa !27
  %771 = icmp sgt i64 %770, 0
  br i1 %771, label %772, label %1120

772:                                              ; preds = %767
  %773 = icmp eq ptr %768, null
  %774 = icmp eq ptr %762, null
  %775 = icmp eq ptr %769, null
  %776 = getelementptr i16, ptr %769, i64 %710
  %777 = sub nsw i64 %740, %5
  br label %778

778:                                              ; preds = %772, %1114
  %779 = phi ptr [ %765, %772 ], [ %1116, %1114 ]
  %780 = phi i64 [ 0, %772 ], [ %1117, %1114 ]
  %781 = phi ptr [ %763, %772 ], [ %1115, %1114 ]
  br i1 %706, label %788, label %782

782:                                              ; preds = %778
  %783 = icmp slt i64 %780, %4
  br i1 %783, label %1114, label %784

784:                                              ; preds = %782
  %785 = sub nsw i64 %780, %4
  %786 = load i64, ptr %708, align 8, !tbaa !27
  %787 = icmp slt i64 %785, %786
  br i1 %787, label %788, label %1120

788:                                              ; preds = %784, %778
  %789 = getelementptr inbounds %struct._PixelPacket, ptr %779, i64 0, i32 2
  %790 = getelementptr inbounds %struct._PixelPacket, ptr %779, i64 0, i32 1
  %791 = load <2 x i16>, ptr %790, align 2, !tbaa !53
  %792 = uitofp <2 x i16> %791 to <2 x float>
  %793 = shufflevector <2 x float> %792, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %793, ptr %712, align 8, !tbaa !40
  %794 = load i16, ptr %779, align 2, !tbaa !42
  %795 = uitofp i16 %794 to float
  store float %795, ptr %713, align 8, !tbaa !54
  %796 = load i32, ptr %714, align 8, !tbaa !26
  %797 = icmp eq i32 %796, 0
  br i1 %797, label %802, label %798

798:                                              ; preds = %788
  %799 = getelementptr inbounds %struct._PixelPacket, ptr %779, i64 0, i32 3
  %800 = load i16, ptr %799, align 2, !tbaa !49
  %801 = uitofp i16 %800 to float
  store float %801, ptr %715, align 4, !tbaa !47
  br label %802

802:                                              ; preds = %798, %788
  %803 = load i32, ptr %32, align 4, !tbaa !25
  %804 = icmp eq i32 %803, 12
  br i1 %804, label %805, label %816

805:                                              ; preds = %802
  br i1 %773, label %810, label %806

806:                                              ; preds = %805
  %807 = getelementptr inbounds i16, ptr %768, i64 %780
  %808 = load i16, ptr %807, align 2, !tbaa !53
  %809 = zext i16 %808 to i32
  br label %810

810:                                              ; preds = %806, %805
  %811 = phi i32 [ %809, %806 ], [ 0, %805 ]
  %812 = sitofp i32 %811 to float
  %813 = fsub <2 x float> <float 6.553500e+04, float 6.553500e+04>, %793
  store <2 x float> %813, ptr %712, align 8, !tbaa !40
  %814 = fsub float 6.553500e+04, %795
  store float %814, ptr %713, align 8, !tbaa !54
  %815 = fsub float 6.553500e+04, %812
  store float %815, ptr %716, align 8, !tbaa !55
  br label %816

816:                                              ; preds = %802, %810
  %817 = phi float [ %795, %802 ], [ %814, %810 ]
  %818 = phi <2 x float> [ %793, %802 ], [ %813, %810 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %15, ptr noundef nonnull align 8 dereferenceable(56) %16, i64 56, i1 false), !tbaa.struct !36
  %819 = icmp slt i64 %780, %4
  %820 = or i1 %774, %819
  br i1 %820, label %825, label %821

821:                                              ; preds = %816
  %822 = sub nsw i64 %780, %4
  %823 = load i64, ptr %708, align 8, !tbaa !27
  %824 = icmp slt i64 %822, %823
  br i1 %824, label %867, label %825

825:                                              ; preds = %821, %816
  switch i32 %2, label %832 [
    i32 28, label %826
    i32 4, label %826
    i32 7, label %830
    i32 48, label %830
    i32 32, label %831
    i32 49, label %831
    i32 39, label %831
    i32 50, label %831
    i32 23, label %831
    i32 21, label %831
    i32 17, label %831
    i32 6, label %831
  ]

826:                                              ; preds = %825, %825
  %827 = load float, ptr %727, align 4, !tbaa !47
  %828 = fsub float 6.553500e+04, %827
  %829 = call float @llvm.fmuladd.f32(float %734, float %828, float 6.553500e+04)
  store float %829, ptr %727, align 4, !tbaa !47
  br label %836

830:                                              ; preds = %825, %825
  call fastcc void @CompositeClear(ptr noundef nonnull %16, ptr noundef nonnull %15) #14
  br label %836

831:                                              ; preds = %825, %825, %825, %825, %825, %825, %825, %825
  store float 6.553500e+04, ptr %727, align 4, !tbaa !47
  br label %836

832:                                              ; preds = %825
  %833 = sub nsw i64 %780, %4
  %834 = call i32 @GetOneVirtualMagickPixel(ptr noundef %688, i64 noundef %833, i64 noundef %777, ptr noundef nonnull %15, ptr noundef nonnull %28) #16
  %835 = load i32, ptr %32, align 4, !tbaa !25
  br label %836

836:                                              ; preds = %832, %831, %830, %826
  %837 = phi i32 [ %835, %832 ], [ %803, %831 ], [ %803, %830 ], [ %803, %826 ]
  %838 = icmp eq i32 %837, 12
  %839 = load <2 x float>, ptr %730, align 8, !tbaa !40
  %840 = load float, ptr %728, align 8, !tbaa !54
  br i1 %838, label %841, label %846

841:                                              ; preds = %836
  %842 = fsub <2 x float> <float 6.553500e+04, float 6.553500e+04>, %839
  store <2 x float> %842, ptr %730, align 8, !tbaa !40
  %843 = fsub float 6.553500e+04, %840
  store float %843, ptr %728, align 8, !tbaa !54
  %844 = load float, ptr %725, align 8, !tbaa !55
  %845 = fsub float 6.553500e+04, %844
  store float %845, ptr %725, align 8, !tbaa !55
  br label %846

846:                                              ; preds = %841, %836
  %847 = phi float [ %843, %841 ], [ %840, %836 ]
  %848 = phi <2 x float> [ %842, %841 ], [ %839, %836 ]
  %849 = extractelement <2 x float> %848, i64 0
  %850 = call fastcc zeroext i16 @ClampToQuantum(float noundef %849) #14
  store i16 %850, ptr %789, align 2, !tbaa !43
  %851 = extractelement <2 x float> %848, i64 1
  %852 = call fastcc zeroext i16 @ClampToQuantum(float noundef %851) #14
  store i16 %852, ptr %790, align 2, !tbaa !44
  %853 = call fastcc zeroext i16 @ClampToQuantum(float noundef %847) #14
  store i16 %853, ptr %779, align 2, !tbaa !42
  %854 = load i32, ptr %714, align 8, !tbaa !26
  %855 = icmp eq i32 %854, 0
  br i1 %855, label %860, label %856

856:                                              ; preds = %846
  %857 = load float, ptr %727, align 4, !tbaa !47
  %858 = call fastcc zeroext i16 @ClampToQuantum(float noundef %857) #14
  %859 = getelementptr inbounds %struct._PixelPacket, ptr %779, i64 0, i32 3
  store i16 %858, ptr %859, align 2, !tbaa !49
  br label %860

860:                                              ; preds = %856, %846
  %861 = icmp ne i32 %837, 12
  %862 = select i1 %861, i1 true, i1 %773
  br i1 %862, label %1114, label %863

863:                                              ; preds = %860
  %864 = getelementptr inbounds i16, ptr %768, i64 %780
  %865 = load float, ptr %725, align 8, !tbaa !55
  %866 = call fastcc zeroext i16 @ClampToQuantum(float noundef %865) #14
  store i16 %866, ptr %864, align 2, !tbaa !53
  br label %1114

867:                                              ; preds = %821
  %868 = getelementptr inbounds %struct._PixelPacket, ptr %781, i64 0, i32 2
  %869 = load i16, ptr %868, align 2, !tbaa !43
  %870 = uitofp i16 %869 to float
  store float %870, ptr %717, align 8, !tbaa !56
  %871 = load <2 x i16>, ptr %781, align 2, !tbaa !53
  %872 = uitofp <2 x i16> %871 to <2 x float>
  %873 = shufflevector <2 x float> %872, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %873, ptr %718, align 4, !tbaa !40
  %874 = load i32, ptr %720, align 8, !tbaa !26
  %875 = icmp eq i32 %874, 0
  br i1 %875, label %880, label %876

876:                                              ; preds = %867
  %877 = getelementptr inbounds %struct._PixelPacket, ptr %781, i64 0, i32 3
  %878 = load i16, ptr %877, align 2, !tbaa !49
  %879 = uitofp i16 %878 to float
  store float %879, ptr %721, align 4, !tbaa !47
  br label %880

880:                                              ; preds = %876, %867
  %881 = load i32, ptr %722, align 4, !tbaa !25
  %882 = icmp eq i32 %881, 12
  br i1 %882, label %883, label %894

883:                                              ; preds = %880
  br i1 %775, label %888, label %884

884:                                              ; preds = %883
  %885 = getelementptr i16, ptr %776, i64 %780
  %886 = load i16, ptr %885, align 2, !tbaa !53
  %887 = zext i16 %886 to i32
  br label %888

888:                                              ; preds = %884, %883
  %889 = phi i32 [ %887, %884 ], [ 0, %883 ]
  %890 = sitofp i32 %889 to float
  %891 = fsub float 6.553500e+04, %870
  store float %891, ptr %717, align 8, !tbaa !56
  %892 = fsub <2 x float> <float 6.553500e+04, float 6.553500e+04>, %873
  store <2 x float> %892, ptr %718, align 4, !tbaa !40
  %893 = fsub float 6.553500e+04, %890
  store float %893, ptr %723, align 8, !tbaa !55
  br label %894

894:                                              ; preds = %880, %888
  %895 = phi float [ %870, %880 ], [ %891, %888 ]
  %896 = phi <2 x float> [ %873, %880 ], [ %892, %888 ]
  switch i32 %2, label %1081 [
    i32 7, label %897
    i32 48, label %898
    i32 13, label %898
    i32 43, label %898
    i32 56, label %1080
    i32 27, label %1080
    i32 40, label %899
    i32 51, label %899
    i32 25, label %902
    i32 49, label %905
    i32 32, label %905
    i32 23, label %906
    i32 39, label %907
    i32 50, label %907
    i32 24, label %908
    i32 3, label %909
    i32 47, label %909
    i32 21, label %910
    i32 54, label %911
    i32 42, label %912
    i32 36, label %913
    i32 65, label %914
    i32 2, label %915
    i32 52, label %916
    i32 26, label %917
    i32 29, label %918
    i32 38, label %919
    i32 45, label %920
    i32 55, label %921
    i32 64, label %922
    i32 20, label %923
    i32 33, label %924
    i32 66, label %925
    i32 67, label %926
    i32 63, label %927
    i32 9, label %928
    i32 8, label %929
    i32 61, label %930
    i32 62, label %931
    i32 30, label %932
    i32 41, label %933
    i32 46, label %934
    i32 34, label %935
    i32 58, label %936
    i32 59, label %937
    i32 60, label %938
    i32 6, label %939
    i32 5, label %947
    i32 28, label %951
    i32 4, label %958
    i32 53, label %959
    i32 37, label %960
    i32 31, label %979
    i32 44, label %999
    i32 35, label %1019
    i32 10, label %1039
    i32 18, label %1059
    i32 14, label %1059
    i32 15, label %1060
    i32 16, label %1060
    i32 12, label %1062
    i32 19, label %1062
    i32 17, label %1064
    i32 11, label %1073
    i32 57, label %1080
  ]

897:                                              ; preds = %894
  call fastcc void @CompositeClear(ptr noundef nonnull %16, ptr noundef nonnull %15) #14
  br label %1081

898:                                              ; preds = %894, %894, %894
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %15, ptr noundef nonnull align 8 dereferenceable(56) %17, i64 56, i1 false), !tbaa.struct !36
  br label %1081

899:                                              ; preds = %894, %894
  %900 = load float, ptr %721, align 4, !tbaa !47
  %901 = load float, ptr %715, align 4, !tbaa !47
  call fastcc void @MagickPixelCompositeOver(ptr noundef nonnull %17, float noundef %900, ptr noundef nonnull %16, float noundef %901, ptr noundef nonnull %15) #14
  br label %1081

902:                                              ; preds = %894
  %903 = load float, ptr %715, align 4, !tbaa !47
  %904 = load float, ptr %721, align 4, !tbaa !47
  call fastcc void @MagickPixelCompositeOver(ptr noundef nonnull %16, float noundef %903, ptr noundef nonnull %17, float noundef %904, ptr noundef nonnull %15) #14
  br label %1081

905:                                              ; preds = %894, %894
  call fastcc void @CompositeIn(ptr noundef nonnull %17, ptr noundef nonnull %16, ptr noundef nonnull %15) #14
  br label %1081

906:                                              ; preds = %894
  call fastcc void @CompositeIn(ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef nonnull %15) #14
  br label %1081

907:                                              ; preds = %894, %894
  call fastcc void @CompositeOut(ptr noundef nonnull %17, ptr noundef nonnull %16, ptr noundef nonnull %15) #14
  br label %1081

908:                                              ; preds = %894
  call fastcc void @CompositeOut(ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef nonnull %15) #14
  br label %1081

909:                                              ; preds = %894, %894
  call fastcc void @CompositeAtop(ptr noundef nonnull %17, ptr noundef nonnull %16, ptr noundef nonnull %15) #14
  br label %1081

910:                                              ; preds = %894
  call fastcc void @CompositeAtop(ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef nonnull %15) #14
  br label %1081

911:                                              ; preds = %894
  call fastcc void @CompositeXor(ptr noundef nonnull %17, ptr noundef nonnull %16, ptr noundef nonnull %15) #14
  br label %1081

912:                                              ; preds = %894
  call fastcc void @CompositePlus(ptr noundef nonnull %17, ptr noundef nonnull %16, i32 noundef %1, ptr noundef nonnull %15) #14
  br label %1081

913:                                              ; preds = %894
  call fastcc void @CompositeMinus(ptr noundef nonnull %17, ptr noundef nonnull %16, i32 noundef %1, ptr noundef nonnull %15) #14
  br label %1081

914:                                              ; preds = %894
  call fastcc void @CompositeMinus(ptr noundef nonnull %16, ptr noundef nonnull %17, i32 noundef %1, ptr noundef nonnull %15) #14
  br label %1081

915:                                              ; preds = %894
  call fastcc void @CompositeModulusAdd(ptr noundef nonnull %17, ptr noundef nonnull %16, i32 noundef %1, ptr noundef nonnull %15) #14
  br label %1081

916:                                              ; preds = %894
  call fastcc void @CompositeModulusSubtract(ptr noundef nonnull %17, ptr noundef nonnull %16, i32 noundef %1, ptr noundef nonnull %15) #14
  br label %1081

917:                                              ; preds = %894
  call fastcc void @CompositeDifference(ptr noundef nonnull %17, ptr noundef nonnull %16, i32 noundef %1, ptr noundef nonnull %15) #14
  br label %1081

918:                                              ; preds = %894
  call fastcc void @CompositeExclusion(ptr noundef nonnull %17, ptr noundef nonnull %16, i32 noundef %1, ptr noundef nonnull %15) #14
  br label %1081

919:                                              ; preds = %894
  call fastcc void @CompositeMultiply(ptr noundef nonnull %17, ptr noundef nonnull %16, i32 noundef %1, ptr noundef nonnull %15) #14
  br label %1081

920:                                              ; preds = %894
  call fastcc void @CompositeScreen(ptr noundef nonnull %17, ptr noundef nonnull %16, i32 noundef %1, ptr noundef nonnull %15) #14
  br label %1081

921:                                              ; preds = %894
  call fastcc void @CompositeDivide(ptr noundef nonnull %17, ptr noundef nonnull %16, i32 noundef %1, ptr noundef nonnull %15) #14
  br label %1081

922:                                              ; preds = %894
  call fastcc void @CompositeDivide(ptr noundef nonnull %16, ptr noundef nonnull %17, i32 noundef %1, ptr noundef nonnull %15) #14
  br label %1081

923:                                              ; preds = %894
  call fastcc void @CompositeDarken(ptr noundef nonnull %17, ptr noundef nonnull %16, i32 noundef %1, ptr noundef nonnull %15) #14
  br label %1081

924:                                              ; preds = %894
  call fastcc void @CompositeLighten(ptr noundef nonnull %17, ptr noundef nonnull %16, i32 noundef %1, ptr noundef nonnull %15) #14
  br label %1081

925:                                              ; preds = %894
  call fastcc void @CompositeDarkenIntensity(ptr noundef nonnull %17, ptr noundef nonnull %16, i32 noundef %1, ptr noundef nonnull %15) #14
  br label %1081

926:                                              ; preds = %894
  call fastcc void @CompositeLightenIntensity(ptr noundef nonnull %17, ptr noundef nonnull %16, i32 noundef %1, ptr noundef nonnull %15) #14
  br label %1081

927:                                              ; preds = %894
  call fastcc void @CompositeMathematics(ptr noundef nonnull %17, ptr noundef nonnull %16, i32 noundef %1, ptr noundef nonnull %7, ptr noundef nonnull %15) #14
  br label %1081

928:                                              ; preds = %894
  call fastcc void @CompositeColorDodge(ptr noundef nonnull %17, ptr noundef nonnull %16, ptr noundef nonnull %15) #14
  br label %1081

929:                                              ; preds = %894
  call fastcc void @CompositeColorBurn(ptr noundef nonnull %17, ptr noundef nonnull %16, ptr noundef nonnull %15) #14
  br label %1081

930:                                              ; preds = %894
  call fastcc void @CompositeLinearDodge(ptr noundef nonnull %17, ptr noundef nonnull %16, ptr noundef nonnull %15) #14
  br label %1081

931:                                              ; preds = %894
  call fastcc void @CompositeLinearBurn(ptr noundef nonnull %17, ptr noundef nonnull %16, ptr noundef nonnull %15) #14
  br label %1081

932:                                              ; preds = %894
  call fastcc void @CompositeHardLight(ptr noundef nonnull %17, ptr noundef nonnull %16, ptr noundef nonnull %15) #14
  br label %1081

933:                                              ; preds = %894
  call fastcc void @CompositeHardLight(ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef nonnull %15) #14
  br label %1081

934:                                              ; preds = %894
  call fastcc void @CompositeSoftLight(ptr noundef nonnull %17, ptr noundef nonnull %16, ptr noundef nonnull %15) #14
  br label %1081

935:                                              ; preds = %894
  call fastcc void @CompositeLinearLight(ptr noundef nonnull %17, ptr noundef nonnull %16, ptr noundef nonnull %15) #14
  br label %1081

936:                                              ; preds = %894
  call fastcc void @CompositePegtopLight(ptr noundef nonnull %17, ptr noundef nonnull %16, ptr noundef nonnull %15) #14
  br label %1081

937:                                              ; preds = %894
  call fastcc void @CompositeVividLight(ptr noundef nonnull %17, ptr noundef nonnull %16, ptr noundef nonnull %15) #14
  br label %1081

938:                                              ; preds = %894
  call fastcc void @CompositePinLight(ptr noundef nonnull %17, ptr noundef nonnull %16, ptr noundef nonnull %15) #14
  br label %1081

939:                                              ; preds = %894
  %940 = load float, ptr %727, align 4, !tbaa !47
  %941 = fcmp ogt float %940, 3.276750e+04
  br i1 %941, label %945, label %942

942:                                              ; preds = %939
  %943 = call i32 @IsMagickColorSimilar(ptr noundef nonnull %17, ptr noundef nonnull %16) #16
  %944 = icmp eq i32 %943, 0
  br i1 %944, label %946, label %945

945:                                              ; preds = %942, %939
  store float 6.553500e+04, ptr %727, align 4, !tbaa !47
  br label %1081

946:                                              ; preds = %942
  store float 0.000000e+00, ptr %727, align 4, !tbaa !47
  br label %1081

947:                                              ; preds = %894
  %948 = load float, ptr %721, align 4, !tbaa !47
  %949 = fcmp oeq float %948, 6.553500e+04
  br i1 %949, label %1081, label %950

950:                                              ; preds = %947
  call fastcc void @CompositeBumpmap(ptr noundef nonnull %17, ptr noundef nonnull %16, ptr noundef nonnull %15) #14
  br label %1081

951:                                              ; preds = %894
  %952 = load float, ptr %721, align 4, !tbaa !47
  %953 = fsub float 6.553500e+04, %952
  %954 = call float @llvm.fmuladd.f32(float %733, float %953, float 6.553500e+04)
  %955 = load float, ptr %715, align 4, !tbaa !47
  %956 = fsub float 6.553500e+04, %955
  %957 = call float @llvm.fmuladd.f32(float %734, float %956, float 6.553500e+04)
  call fastcc void @MagickPixelCompositeOver(ptr noundef nonnull %17, float noundef %954, ptr noundef nonnull %16, float noundef %957, ptr noundef nonnull %15) #14
  br label %1081

958:                                              ; preds = %894
  call fastcc void @MagickPixelCompositeBlend(ptr noundef nonnull %17, float noundef %681, ptr noundef nonnull %16, float noundef %684, ptr noundef nonnull %15) #14
  br label %1081

959:                                              ; preds = %894
  call fastcc void @CompositeThreshold(ptr noundef nonnull %17, ptr noundef nonnull %16, float noundef %680, float noundef %685, ptr noundef nonnull %15) #14
  br label %1081

960:                                              ; preds = %894
  %961 = load float, ptr %721, align 4, !tbaa !47
  %962 = fcmp oeq float %961, 6.553500e+04
  br i1 %962, label %1081, label %963

963:                                              ; preds = %960
  %964 = call fastcc zeroext i16 @MagickPixelIntensityToQuantum(ptr noundef nonnull %17) #14
  %965 = zext i16 %964 to i64
  %966 = add nsw i64 %965, -32768
  %967 = icmp eq i64 %966, 0
  br i1 %967, label %1081, label %968

968:                                              ; preds = %963
  %969 = extractelement <2 x float> %818, i64 0
  %970 = extractelement <2 x float> %818, i64 1
  call fastcc void @CompositeHCL(float noundef %969, float noundef %970, float noundef %817, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %11) #14
  %971 = sitofp i64 %966 to double
  %972 = fmul double %732, %971
  %973 = fmul double %972, 0x3F00000000000000
  %974 = load double, ptr %11, align 8, !tbaa !38
  %975 = fadd double %973, %974
  store double %975, ptr %11, align 8, !tbaa !38
  %976 = load double, ptr %13, align 8, !tbaa !38
  %977 = fmul double %682, %976
  store double %977, ptr %13, align 8, !tbaa !38
  %978 = load double, ptr %12, align 8, !tbaa !38
  call fastcc void @HCLComposite(double noundef %978, double noundef %977, double noundef %975, ptr noundef nonnull %730, ptr noundef nonnull %729, ptr noundef nonnull %728) #14
  br label %1081

979:                                              ; preds = %894
  %980 = load float, ptr %721, align 4, !tbaa !47
  %981 = fcmp oeq float %980, 6.553500e+04
  br i1 %981, label %1081, label %982

982:                                              ; preds = %979
  %983 = load float, ptr %715, align 4, !tbaa !47
  %984 = fcmp oeq float %983, 6.553500e+04
  br i1 %984, label %985, label %986

985:                                              ; preds = %982
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %15, ptr noundef nonnull align 8 dereferenceable(56) %17, i64 56, i1 false), !tbaa.struct !36
  br label %1081

986:                                              ; preds = %982
  %987 = extractelement <2 x float> %818, i64 0
  %988 = extractelement <2 x float> %818, i64 1
  call fastcc void @CompositeHCL(float noundef %987, float noundef %988, float noundef %817, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %11) #14
  %989 = load float, ptr %717, align 8, !tbaa !56
  %990 = load float, ptr %718, align 4, !tbaa !57
  %991 = load float, ptr %719, align 8, !tbaa !54
  call fastcc void @CompositeHCL(float noundef %989, float noundef %990, float noundef %991, ptr noundef nonnull %12, ptr noundef nonnull %14, ptr noundef nonnull %14) #14
  %992 = load double, ptr %12, align 8, !tbaa !38
  %993 = load double, ptr %13, align 8, !tbaa !38
  %994 = load double, ptr %11, align 8, !tbaa !38
  call fastcc void @HCLComposite(double noundef %992, double noundef %993, double noundef %994, ptr noundef nonnull %730, ptr noundef nonnull %729, ptr noundef nonnull %728) #14
  %995 = load float, ptr %721, align 4, !tbaa !47
  %996 = load float, ptr %715, align 4, !tbaa !47
  %997 = fcmp olt float %995, %996
  br i1 %997, label %998, label %1081

998:                                              ; preds = %986
  store float %995, ptr %727, align 4, !tbaa !47
  br label %1081

999:                                              ; preds = %894
  %1000 = load float, ptr %721, align 4, !tbaa !47
  %1001 = fcmp oeq float %1000, 6.553500e+04
  br i1 %1001, label %1081, label %1002

1002:                                             ; preds = %999
  %1003 = load float, ptr %715, align 4, !tbaa !47
  %1004 = fcmp oeq float %1003, 6.553500e+04
  br i1 %1004, label %1005, label %1006

1005:                                             ; preds = %1002
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %15, ptr noundef nonnull align 8 dereferenceable(56) %17, i64 56, i1 false), !tbaa.struct !36
  br label %1081

1006:                                             ; preds = %1002
  %1007 = extractelement <2 x float> %818, i64 0
  %1008 = extractelement <2 x float> %818, i64 1
  call fastcc void @CompositeHCL(float noundef %1007, float noundef %1008, float noundef %817, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %11) #14
  %1009 = load float, ptr %717, align 8, !tbaa !56
  %1010 = load float, ptr %718, align 4, !tbaa !57
  %1011 = load float, ptr %719, align 8, !tbaa !54
  call fastcc void @CompositeHCL(float noundef %1009, float noundef %1010, float noundef %1011, ptr noundef nonnull %14, ptr noundef nonnull %13, ptr noundef nonnull %14) #14
  %1012 = load double, ptr %12, align 8, !tbaa !38
  %1013 = load double, ptr %13, align 8, !tbaa !38
  %1014 = load double, ptr %11, align 8, !tbaa !38
  call fastcc void @HCLComposite(double noundef %1012, double noundef %1013, double noundef %1014, ptr noundef nonnull %730, ptr noundef nonnull %729, ptr noundef nonnull %728) #14
  %1015 = load float, ptr %721, align 4, !tbaa !47
  %1016 = load float, ptr %715, align 4, !tbaa !47
  %1017 = fcmp olt float %1015, %1016
  br i1 %1017, label %1018, label %1081

1018:                                             ; preds = %1006
  store float %1015, ptr %727, align 4, !tbaa !47
  br label %1081

1019:                                             ; preds = %894
  %1020 = load float, ptr %721, align 4, !tbaa !47
  %1021 = fcmp oeq float %1020, 6.553500e+04
  br i1 %1021, label %1081, label %1022

1022:                                             ; preds = %1019
  %1023 = load float, ptr %715, align 4, !tbaa !47
  %1024 = fcmp oeq float %1023, 6.553500e+04
  br i1 %1024, label %1025, label %1026

1025:                                             ; preds = %1022
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %15, ptr noundef nonnull align 8 dereferenceable(56) %17, i64 56, i1 false), !tbaa.struct !36
  br label %1081

1026:                                             ; preds = %1022
  %1027 = extractelement <2 x float> %818, i64 0
  %1028 = extractelement <2 x float> %818, i64 1
  call fastcc void @CompositeHCL(float noundef %1027, float noundef %1028, float noundef %817, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %11) #14
  %1029 = load float, ptr %717, align 8, !tbaa !56
  %1030 = load float, ptr %718, align 4, !tbaa !57
  %1031 = load float, ptr %719, align 8, !tbaa !54
  call fastcc void @CompositeHCL(float noundef %1029, float noundef %1030, float noundef %1031, ptr noundef nonnull %14, ptr noundef nonnull %14, ptr noundef nonnull %11) #14
  %1032 = load double, ptr %12, align 8, !tbaa !38
  %1033 = load double, ptr %13, align 8, !tbaa !38
  %1034 = load double, ptr %11, align 8, !tbaa !38
  call fastcc void @HCLComposite(double noundef %1032, double noundef %1033, double noundef %1034, ptr noundef nonnull %730, ptr noundef nonnull %729, ptr noundef nonnull %728) #14
  %1035 = load float, ptr %721, align 4, !tbaa !47
  %1036 = load float, ptr %715, align 4, !tbaa !47
  %1037 = fcmp olt float %1035, %1036
  br i1 %1037, label %1038, label %1081

1038:                                             ; preds = %1026
  store float %1035, ptr %727, align 4, !tbaa !47
  br label %1081

1039:                                             ; preds = %894
  %1040 = load float, ptr %721, align 4, !tbaa !47
  %1041 = fcmp oeq float %1040, 6.553500e+04
  br i1 %1041, label %1081, label %1042

1042:                                             ; preds = %1039
  %1043 = load float, ptr %715, align 4, !tbaa !47
  %1044 = fcmp oeq float %1043, 6.553500e+04
  br i1 %1044, label %1045, label %1046

1045:                                             ; preds = %1042
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %15, ptr noundef nonnull align 8 dereferenceable(56) %17, i64 56, i1 false), !tbaa.struct !36
  br label %1081

1046:                                             ; preds = %1042
  %1047 = extractelement <2 x float> %818, i64 0
  %1048 = extractelement <2 x float> %818, i64 1
  call fastcc void @CompositeHCL(float noundef %1047, float noundef %1048, float noundef %817, ptr noundef nonnull %14, ptr noundef nonnull %14, ptr noundef nonnull %11) #14
  %1049 = load float, ptr %717, align 8, !tbaa !56
  %1050 = load float, ptr %718, align 4, !tbaa !57
  %1051 = load float, ptr %719, align 8, !tbaa !54
  call fastcc void @CompositeHCL(float noundef %1049, float noundef %1050, float noundef %1051, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14) #14
  %1052 = load double, ptr %12, align 8, !tbaa !38
  %1053 = load double, ptr %13, align 8, !tbaa !38
  %1054 = load double, ptr %11, align 8, !tbaa !38
  call fastcc void @HCLComposite(double noundef %1052, double noundef %1053, double noundef %1054, ptr noundef nonnull %730, ptr noundef nonnull %729, ptr noundef nonnull %728) #14
  %1055 = load float, ptr %721, align 4, !tbaa !47
  %1056 = load float, ptr %715, align 4, !tbaa !47
  %1057 = fcmp olt float %1055, %1056
  br i1 %1057, label %1058, label %1081

1058:                                             ; preds = %1046
  store float %1055, ptr %727, align 4, !tbaa !47
  br label %1081

1059:                                             ; preds = %894, %894
  store float %895, ptr %730, align 8, !tbaa !56
  br label %1081

1060:                                             ; preds = %894, %894
  %1061 = extractelement <2 x float> %896, i64 0
  store float %1061, ptr %729, align 4, !tbaa !57
  br label %1081

1062:                                             ; preds = %894, %894
  %1063 = extractelement <2 x float> %896, i64 1
  store float %1063, ptr %728, align 8, !tbaa !54
  br label %1081

1064:                                             ; preds = %894
  %1065 = load i32, ptr %726, align 8, !tbaa !58
  %1066 = icmp eq i32 %1065, 0
  br i1 %1066, label %1067, label %1071

1067:                                             ; preds = %1064
  %1068 = call fastcc zeroext i16 @MagickPixelIntensityToQuantum(ptr noundef nonnull %17) #14
  %1069 = xor i16 %1068, -1
  %1070 = uitofp i16 %1069 to float
  store float %1070, ptr %727, align 4, !tbaa !47
  br label %1081

1071:                                             ; preds = %1064
  %1072 = load float, ptr %721, align 4, !tbaa !47
  store float %1072, ptr %727, align 4, !tbaa !47
  br label %1081

1073:                                             ; preds = %894
  %1074 = load i32, ptr %724, align 4, !tbaa !59
  %1075 = icmp eq i32 %1074, 12
  br i1 %1075, label %1077, label %1076

1076:                                             ; preds = %1073
  call fastcc void @ConvertRGBToCMYK(ptr noundef nonnull %17) #14
  br label %1077

1077:                                             ; preds = %1076, %1073
  %1078 = load float, ptr %723, align 8, !tbaa !55
  %1079 = fsub float 6.553500e+04, %1078
  store float %1079, ptr %725, align 8, !tbaa !55
  br label %1081

1080:                                             ; preds = %894, %894, %894
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %15, ptr noundef nonnull align 8 dereferenceable(56) %17, i64 56, i1 false), !tbaa.struct !36
  br label %1081

1081:                                             ; preds = %968, %960, %963, %894, %1046, %1058, %1039, %1026, %1038, %1019, %1006, %1018, %999, %986, %998, %979, %947, %945, %946, %1080, %1077, %1071, %1067, %1062, %1060, %1059, %1045, %1025, %1005, %985, %959, %958, %951, %950, %938, %937, %936, %935, %934, %933, %932, %931, %930, %929, %928, %927, %926, %925, %924, %923, %922, %921, %920, %919, %918, %917, %916, %915, %914, %913, %912, %911, %910, %909, %908, %907, %906, %905, %902, %899, %898, %897
  %1082 = load i32, ptr %32, align 4, !tbaa !25
  %1083 = icmp eq i32 %1082, 12
  %1084 = load <2 x float>, ptr %730, align 8, !tbaa !40
  %1085 = load float, ptr %728, align 8, !tbaa !54
  br i1 %1083, label %1086, label %1091

1086:                                             ; preds = %1081
  %1087 = fsub <2 x float> <float 6.553500e+04, float 6.553500e+04>, %1084
  store <2 x float> %1087, ptr %730, align 8, !tbaa !40
  %1088 = fsub float 6.553500e+04, %1085
  store float %1088, ptr %728, align 8, !tbaa !54
  %1089 = load float, ptr %725, align 8, !tbaa !55
  %1090 = fsub float 6.553500e+04, %1089
  store float %1090, ptr %725, align 8, !tbaa !55
  br label %1091

1091:                                             ; preds = %1086, %1081
  %1092 = phi float [ %1088, %1086 ], [ %1085, %1081 ]
  %1093 = phi <2 x float> [ %1087, %1086 ], [ %1084, %1081 ]
  %1094 = extractelement <2 x float> %1093, i64 0
  %1095 = call fastcc zeroext i16 @ClampToQuantum(float noundef %1094) #14
  store i16 %1095, ptr %789, align 2, !tbaa !43
  %1096 = extractelement <2 x float> %1093, i64 1
  %1097 = call fastcc zeroext i16 @ClampToQuantum(float noundef %1096) #14
  store i16 %1097, ptr %790, align 2, !tbaa !44
  %1098 = call fastcc zeroext i16 @ClampToQuantum(float noundef %1092) #14
  store i16 %1098, ptr %779, align 2, !tbaa !42
  %1099 = load float, ptr %727, align 4, !tbaa !47
  %1100 = call fastcc zeroext i16 @ClampToQuantum(float noundef %1099) #14
  %1101 = getelementptr inbounds %struct._PixelPacket, ptr %779, i64 0, i32 3
  store i16 %1100, ptr %1101, align 2, !tbaa !49
  %1102 = icmp ne i32 %1082, 12
  %1103 = select i1 %1102, i1 true, i1 %773
  br i1 %1103, label %1108, label %1104

1104:                                             ; preds = %1091
  %1105 = getelementptr inbounds i16, ptr %768, i64 %780
  %1106 = load float, ptr %725, align 8, !tbaa !55
  %1107 = call fastcc zeroext i16 @ClampToQuantum(float noundef %1106) #14
  store i16 %1107, ptr %1105, align 2, !tbaa !53
  br label %1108

1108:                                             ; preds = %1104, %1091
  %1109 = getelementptr inbounds %struct._PixelPacket, ptr %781, i64 1
  %1110 = load i64, ptr %708, align 8, !tbaa !27
  %1111 = getelementptr inbounds %struct._PixelPacket, ptr %762, i64 %1110
  %1112 = icmp ult ptr %1109, %1111
  %1113 = select i1 %1112, ptr %1109, ptr %762
  br label %1114

1114:                                             ; preds = %860, %863, %782, %1108
  %1115 = phi ptr [ %1113, %1108 ], [ %781, %782 ], [ %781, %863 ], [ %781, %860 ]
  %1116 = getelementptr inbounds %struct._PixelPacket, ptr %779, i64 1
  %1117 = add nuw nsw i64 %780, 1
  %1118 = load i64, ptr %711, align 8, !tbaa !27
  %1119 = icmp slt i64 %1117, %1118
  br i1 %1119, label %778, label %1120, !llvm.loop !60

1120:                                             ; preds = %1114, %784, %767
  %1121 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %701, ptr noundef nonnull %28) #17
  %1122 = icmp ne i32 %1121, 0
  %1123 = zext i1 %1122 to i32
  %1124 = load ptr, ptr %735, align 8, !tbaa !29
  %1125 = icmp eq ptr %1124, null
  br i1 %1125, label %1132, label %1126

1126:                                             ; preds = %1120
  %1127 = add nsw i64 %739, 1
  %1128 = load i64, ptr %702, align 8, !tbaa !28
  %1129 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.3, i64 noundef %739, i64 noundef %1128) #14
  %1130 = icmp eq i32 %1129, 0
  %1131 = select i1 %1130, i32 0, i32 %1123
  br label %1132

1132:                                             ; preds = %1120, %1126, %761, %755, %745, %743, %737
  %1133 = phi i64 [ %739, %737 ], [ %739, %743 ], [ %739, %745 ], [ %739, %755 ], [ %739, %761 ], [ %1127, %1126 ], [ %739, %1120 ]
  %1134 = phi i32 [ 0, %737 ], [ 1, %743 ], [ 1, %745 ], [ 0, %755 ], [ 0, %761 ], [ %1131, %1126 ], [ %1123, %1120 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %17) #15
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %16) #15
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %15) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #15
  %1135 = add nuw nsw i64 %740, 1
  %1136 = load i64, ptr %702, align 8, !tbaa !28
  %1137 = icmp slt i64 %1135, %1136
  br i1 %1137, label %737, label %1138, !llvm.loop !61

1138:                                             ; preds = %1132, %699
  %1139 = phi i32 [ 1, %699 ], [ %1134, %1132 ]
  %1140 = call ptr @DestroyCacheView(ptr noundef %700) #16
  %1141 = call ptr @DestroyCacheView(ptr noundef %701) #16
  %1142 = icmp eq ptr %687, null
  br i1 %1142, label %1145, label %1143

1143:                                             ; preds = %1138
  %1144 = call ptr @DestroyImage(ptr noundef nonnull %687) #16
  br label %1147

1145:                                             ; preds = %1138
  %1146 = call ptr @DestroyImage(ptr noundef %688) #16
  br label %1147

1147:                                             ; preds = %341, %326, %1143, %1145, %695, %27, %24, %120
  %1148 = phi i32 [ %121, %120 ], [ 0, %24 ], [ 0, %27 ], [ 1, %695 ], [ %1139, %1145 ], [ %1139, %1143 ], [ 0, %326 ], [ 0, %341 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #15
  ret i32 %1148
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @SetImageStorageClass(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @IsGrayColorspace(i32 noundef %0) unnamed_addr #3 {
  switch i32 %0, label %2 [
    i32 19, label %3
    i32 17, label %3
    i32 2, label %3
  ]

2:                                                ; preds = %1
  br label %3

3:                                                ; preds = %1, %1, %1, %2
  %4 = phi i32 [ 0, %2 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  ret i32 %4
}

; Function Attrs: optsize
declare i32 @SetImageColorspace(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: hot optsize
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: hot optsize
declare ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CopyMagickMemory(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: hot optsize
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @SetImageProgress(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #15
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %7 = load ptr, ptr %6, align 8, !tbaa !29
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.10, ptr noundef %1, ptr noundef nonnull %10) #16
  %12 = load ptr, ptr %6, align 8, !tbaa !29
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  %14 = load ptr, ptr %13, align 8, !tbaa !62
  %15 = call i32 %12(ptr noundef nonnull %5, i64 noundef %2, i64 noundef %3, ptr noundef %14) #16
  br label %16

16:                                               ; preds = %4, %9
  %17 = phi i32 [ %15, %9 ], [ 1, %4 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #15
  ret i32 %17
}

; Function Attrs: optsize
declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyImage(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @SetImageAlphaChannel(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @SetGeometryInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetImageArtifact(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ParseGeometry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @DegreesToRadians(double noundef %0) unnamed_addr #3 {
  %2 = fmul double %0, 0x400921FB54442D18
  %3 = fdiv double %2, 1.800000e+02
  ret double %3
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @AcquireResampleFilter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @SetResampleFilter(ptr noundef, i32 noundef, double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: hot optsize
declare ptr @QueueCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: optsize
declare void @ScaleResampleFilter(ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ResamplePixelColor(ptr noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @SetPixelPacket(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr noundef writeonly %3) unnamed_addr #8 {
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %6 = load float, ptr %5, align 8, !tbaa !56
  %7 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %6) #14
  %8 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 2
  store i16 %7, ptr %8, align 2, !tbaa !43
  %9 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %10 = load float, ptr %9, align 4, !tbaa !57
  %11 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %10) #14
  %12 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 1
  store i16 %11, ptr %12, align 2, !tbaa !44
  %13 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %14 = load float, ptr %13, align 8, !tbaa !54
  %15 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %14) #14
  store i16 %15, ptr %2, align 2, !tbaa !42
  %16 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %17 = load float, ptr %16, align 4, !tbaa !47
  %18 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %17) #14
  %19 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 3
  store i16 %18, ptr %19, align 2, !tbaa !49
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !25
  %22 = icmp eq i32 %21, 12
  br i1 %22, label %28, label %23

23:                                               ; preds = %4
  %24 = load i32, ptr %0, align 8, !tbaa !63
  %25 = icmp eq i32 %24, 2
  %26 = icmp ne ptr %3, null
  %27 = and i1 %26, %25
  br i1 %27, label %30, label %34

28:                                               ; preds = %4
  %29 = icmp eq ptr %3, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %23, %28
  %31 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %32 = load float, ptr %31, align 8, !tbaa !55
  %33 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %32) #14
  store i16 %33, ptr %3, align 2, !tbaa !53
  br label %34

34:                                               ; preds = %28, %30, %23
  ret void
}

; Function Attrs: optsize
declare ptr @DestroyResampleFilter(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @InterpolateMagickPixelPacket(ptr noundef, ptr noundef, i32 noundef, double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @IsMagickTrue(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @AccelerateCompositeImage(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @CompositeClear(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #8 {
  %3 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 6.553500e+04>, ptr %3, align 8, !tbaa !40
  %4 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !59
  %6 = icmp eq i32 %5, 12
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  store float 0.000000e+00, ptr %8, align 8, !tbaa !55
  br label %9

9:                                                ; preds = %7, %2
  ret void
}

; Function Attrs: optsize
declare i32 @GetOneVirtualMagickPixel(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i16 @ClampToQuantum(float noundef %0) unnamed_addr #3 {
  %2 = fcmp ugt float %0, 0.000000e+00
  br i1 %2, label %3, label %8

3:                                                ; preds = %1
  %4 = fcmp ult float %0, 6.553500e+04
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = fadd float %0, 5.000000e-01
  %7 = fptoui float %6 to i16
  br label %8

8:                                                ; preds = %3, %1, %5
  %9 = phi i16 [ %7, %5 ], [ 0, %1 ], [ -1, %3 ]
  ret i16 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @MagickPixelCompositeOver(ptr nocapture noundef readonly %0, float noundef %1, ptr nocapture noundef readonly %2, float noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #8 {
  %6 = fcmp oeq float %1, 0.000000e+00
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false), !tbaa.struct !36
  br label %58

8:                                                ; preds = %5
  %9 = fpext float %1 to double
  %10 = fpext float %3 to double
  %11 = fmul double %9, 0xBDF0002000300040
  %12 = tail call double @llvm.fmuladd.f64(double %11, double %10, double 1.000000e+00)
  %13 = fcmp olt double %12, 0.000000e+00
  %14 = select i1 %13, double 0.000000e+00, double %12
  %15 = fsub double 1.000000e+00, %14
  %16 = tail call fastcc double @PerceptibleReciprocal(double noundef %14) #14
  %17 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %18 = load float, ptr %17, align 8, !tbaa !56
  %19 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 5
  %20 = load float, ptr %19, align 8, !tbaa !56
  %21 = tail call fastcc float @MagickOver_(float noundef %18, float noundef %1, float noundef %20, float noundef %3) #14
  %22 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 5
  %23 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %24 = load float, ptr %23, align 4, !tbaa !57
  %25 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 6
  %26 = load float, ptr %25, align 4, !tbaa !57
  %27 = tail call fastcc float @MagickOver_(float noundef %24, float noundef %1, float noundef %26, float noundef %3) #14
  %28 = insertelement <2 x float> poison, float %21, i64 0
  %29 = insertelement <2 x float> %28, float %27, i64 1
  %30 = fpext <2 x float> %29 to <2 x double>
  %31 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %32 = load float, ptr %31, align 8, !tbaa !54
  %33 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 7
  %34 = load float, ptr %33, align 8, !tbaa !54
  %35 = tail call fastcc float @MagickOver_(float noundef %32, float noundef %1, float noundef %34, float noundef %3) #14
  %36 = fpext float %35 to double
  %37 = insertelement <4 x double> poison, double %16, i64 0
  %38 = insertelement <4 x double> %37, double %15, i64 1
  %39 = shufflevector <4 x double> %38, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %40 = shufflevector <2 x double> %30, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %41 = insertelement <4 x double> %40, double 6.553500e+04, i64 3
  %42 = insertelement <4 x double> %41, double %36, i64 2
  %43 = fmul <4 x double> %39, %42
  %44 = fptrunc <4 x double> %43 to <4 x float>
  store <4 x float> %44, ptr %22, align 8, !tbaa !40
  %45 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 1
  %46 = load i32, ptr %45, align 4, !tbaa !59
  %47 = icmp eq i32 %46, 12
  br i1 %47, label %48, label %58

48:                                               ; preds = %8
  %49 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %50 = load float, ptr %49, align 8, !tbaa !55
  %51 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 9
  %52 = load float, ptr %51, align 8, !tbaa !55
  %53 = tail call fastcc float @MagickOver_(float noundef %50, float noundef %1, float noundef %52, float noundef %3) #14
  %54 = fpext float %53 to double
  %55 = fmul double %16, %54
  %56 = fptrunc double %55 to float
  %57 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 9
  store float %56, ptr %57, align 8, !tbaa !55
  br label %58

58:                                               ; preds = %8, %48, %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @CompositeIn(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #8 {
  %4 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %5 = load float, ptr %4, align 4, !tbaa !47
  %6 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %7 = load float, ptr %6, align 4, !tbaa !47
  %8 = insertelement <2 x float> poison, float %5, i64 0
  %9 = insertelement <2 x float> %8, float %7, i64 1
  %10 = fpext <2 x float> %9 to <2 x double>
  %11 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %10, <2 x double> <double 0xBEF0001000100010, double 0xBEF0001000100010>, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %12 = fptrunc <2 x double> %11 to <2 x float>
  %13 = extractelement <2 x float> %12, i64 0
  %14 = extractelement <2 x float> %12, i64 1
  %15 = fmul float %13, %14
  %16 = fcmp ole float %15, 0.000000e+00
  %17 = select i1 %16, float 0.000000e+00, float %15
  %18 = fpext float %17 to double
  %19 = fsub double 1.000000e+00, %18
  %20 = tail call fastcc double @PerceptibleReciprocal(double noundef %18) #14
  %21 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %22 = load float, ptr %21, align 8, !tbaa !56
  %23 = tail call fastcc float @In(float noundef %22, float noundef %13, float noundef %14) #14
  %24 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 5
  %25 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %26 = load float, ptr %25, align 4, !tbaa !57
  %27 = tail call fastcc float @In(float noundef %26, float noundef %13, float noundef %14) #14
  %28 = insertelement <2 x float> poison, float %23, i64 0
  %29 = insertelement <2 x float> %28, float %27, i64 1
  %30 = fpext <2 x float> %29 to <2 x double>
  %31 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %32 = load float, ptr %31, align 8, !tbaa !54
  %33 = tail call fastcc float @In(float noundef %32, float noundef %13, float noundef %14) #14
  %34 = fpext float %33 to double
  %35 = insertelement <4 x double> poison, double %20, i64 0
  %36 = insertelement <4 x double> %35, double %19, i64 1
  %37 = shufflevector <4 x double> %36, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %38 = shufflevector <2 x double> %30, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %39 = insertelement <4 x double> %38, double 6.553500e+04, i64 3
  %40 = insertelement <4 x double> %39, double %34, i64 2
  %41 = fmul <4 x double> %37, %40
  %42 = fptrunc <4 x double> %41 to <4 x float>
  store <4 x float> %42, ptr %24, align 8, !tbaa !40
  %43 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %44 = load i32, ptr %43, align 4, !tbaa !59
  %45 = icmp eq i32 %44, 12
  br i1 %45, label %46, label %54

46:                                               ; preds = %3
  %47 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %48 = load float, ptr %47, align 8, !tbaa !55
  %49 = tail call fastcc float @In(float noundef %48, float noundef %13, float noundef %14) #14
  %50 = fpext float %49 to double
  %51 = fmul double %20, %50
  %52 = fptrunc double %51 to float
  %53 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 9
  store float %52, ptr %53, align 8, !tbaa !55
  br label %54

54:                                               ; preds = %46, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @CompositeOut(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #8 {
  %4 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %5 = load float, ptr %4, align 4, !tbaa !47
  %6 = fpext float %5 to double
  %7 = tail call double @llvm.fmuladd.f64(double %6, double 0xBEF0001000100010, double 1.000000e+00)
  %8 = fptrunc double %7 to float
  %9 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %10 = load float, ptr %9, align 4, !tbaa !47
  %11 = fpext float %10 to double
  %12 = tail call double @llvm.fmuladd.f64(double %11, double 0xBEF0001000100010, double 1.000000e+00)
  %13 = fptrunc double %12 to float
  %14 = fpext float %8 to double
  %15 = fpext float %13 to double
  %16 = fsub double 1.000000e+00, %15
  %17 = fmul double %16, %14
  %18 = fcmp olt double %17, 0.000000e+00
  %19 = select i1 %18, double 0.000000e+00, double %17
  %20 = fsub double 1.000000e+00, %19
  %21 = tail call fastcc double @PerceptibleReciprocal(double noundef %19) #14
  %22 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %23 = load float, ptr %22, align 8, !tbaa !56
  %24 = tail call fastcc float @Out(float noundef %23, float noundef %8, float noundef %13) #14
  %25 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 5
  %26 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %27 = load float, ptr %26, align 4, !tbaa !57
  %28 = tail call fastcc float @Out(float noundef %27, float noundef %8, float noundef %13) #14
  %29 = insertelement <2 x float> poison, float %24, i64 0
  %30 = insertelement <2 x float> %29, float %28, i64 1
  %31 = fpext <2 x float> %30 to <2 x double>
  %32 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %33 = load float, ptr %32, align 8, !tbaa !54
  %34 = tail call fastcc float @Out(float noundef %33, float noundef %8, float noundef %13) #14
  %35 = fpext float %34 to double
  %36 = insertelement <4 x double> poison, double %21, i64 0
  %37 = insertelement <4 x double> %36, double %20, i64 1
  %38 = shufflevector <4 x double> %37, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %39 = shufflevector <2 x double> %31, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %40 = insertelement <4 x double> %39, double 6.553500e+04, i64 3
  %41 = insertelement <4 x double> %40, double %35, i64 2
  %42 = fmul <4 x double> %38, %41
  %43 = fptrunc <4 x double> %42 to <4 x float>
  store <4 x float> %43, ptr %25, align 8, !tbaa !40
  %44 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %45 = load i32, ptr %44, align 4, !tbaa !59
  %46 = icmp eq i32 %45, 12
  br i1 %46, label %47, label %55

47:                                               ; preds = %3
  %48 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %49 = load float, ptr %48, align 8, !tbaa !55
  %50 = tail call fastcc float @Out(float noundef %49, float noundef %8, float noundef %13) #14
  %51 = fpext float %50 to double
  %52 = fmul double %21, %51
  %53 = fptrunc double %52 to float
  %54 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 9
  store float %53, ptr %54, align 8, !tbaa !55
  br label %55

55:                                               ; preds = %47, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @CompositeAtop(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #8 {
  %4 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %5 = load float, ptr %4, align 4, !tbaa !47
  %6 = fpext float %5 to double
  %7 = tail call double @llvm.fmuladd.f64(double %6, double 0xBEF0001000100010, double 1.000000e+00)
  %8 = fptrunc double %7 to float
  %9 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %10 = load float, ptr %9, align 4, !tbaa !47
  %11 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 8
  store float %10, ptr %11, align 4, !tbaa !47
  %12 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %13 = load float, ptr %12, align 8, !tbaa !56
  %14 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %15 = load float, ptr %14, align 8, !tbaa !56
  %16 = tail call fastcc float @Atop(float noundef %13, float noundef %8, float noundef %15) #14
  %17 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 5
  store float %16, ptr %17, align 8, !tbaa !56
  %18 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %19 = load float, ptr %18, align 4, !tbaa !57
  %20 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %21 = load float, ptr %20, align 4, !tbaa !57
  %22 = tail call fastcc float @Atop(float noundef %19, float noundef %8, float noundef %21) #14
  %23 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 6
  store float %22, ptr %23, align 4, !tbaa !57
  %24 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %25 = load float, ptr %24, align 8, !tbaa !54
  %26 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %27 = load float, ptr %26, align 8, !tbaa !54
  %28 = tail call fastcc float @Atop(float noundef %25, float noundef %8, float noundef %27) #14
  %29 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 7
  store float %28, ptr %29, align 8, !tbaa !54
  %30 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !59
  %32 = icmp eq i32 %31, 12
  br i1 %32, label %33, label %40

33:                                               ; preds = %3
  %34 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %35 = load float, ptr %34, align 8, !tbaa !55
  %36 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %37 = load float, ptr %36, align 8, !tbaa !55
  %38 = tail call fastcc float @Atop(float noundef %35, float noundef %8, float noundef %37) #14
  %39 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 9
  store float %38, ptr %39, align 8, !tbaa !55
  br label %40

40:                                               ; preds = %33, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @CompositeXor(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #8 {
  %4 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %5 = load float, ptr %4, align 4, !tbaa !47
  %6 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %7 = load float, ptr %6, align 4, !tbaa !47
  %8 = insertelement <2 x float> poison, float %5, i64 0
  %9 = insertelement <2 x float> %8, float %7, i64 1
  %10 = fpext <2 x float> %9 to <2 x double>
  %11 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %10, <2 x double> <double 0xBEF0001000100010, double 0xBEF0001000100010>, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %12 = fptrunc <2 x double> %11 to <2 x float>
  %13 = extractelement <2 x float> %12, i64 0
  %14 = extractelement <2 x float> %12, i64 1
  %15 = fadd float %13, %14
  %16 = fmul float %13, -2.000000e+00
  %17 = tail call float @llvm.fmuladd.f32(float %16, float %14, float %15)
  %18 = fcmp olt float %17, 0.000000e+00
  %19 = select i1 %18, float 0.000000e+00, float %17
  %20 = fpext float %19 to double
  %21 = fsub double 1.000000e+00, %20
  %22 = fmul double %21, 6.553500e+04
  %23 = fptrunc double %22 to float
  %24 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 8
  store float %23, ptr %24, align 4, !tbaa !47
  %25 = tail call fastcc double @PerceptibleReciprocal(double noundef %20) #14
  %26 = fptrunc double %25 to float
  %27 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %28 = load float, ptr %27, align 8, !tbaa !56
  %29 = fmul float %28, %13
  %30 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %31 = load float, ptr %30, align 8, !tbaa !56
  %32 = fmul float %31, %14
  %33 = tail call fastcc float @Xor(float noundef %29, float noundef %13, float noundef %32, float noundef %14) #14
  %34 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 5
  %35 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %36 = load float, ptr %35, align 4, !tbaa !57
  %37 = fmul float %36, %13
  %38 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %39 = load float, ptr %38, align 4, !tbaa !57
  %40 = fmul float %39, %14
  %41 = tail call fastcc float @Xor(float noundef %37, float noundef %13, float noundef %40, float noundef %14) #14
  %42 = insertelement <2 x float> poison, float %33, i64 0
  %43 = insertelement <2 x float> %42, float %41, i64 1
  %44 = insertelement <2 x float> poison, float %26, i64 0
  %45 = shufflevector <2 x float> %44, <2 x float> poison, <2 x i32> zeroinitializer
  %46 = fmul <2 x float> %43, %45
  store <2 x float> %46, ptr %34, align 8, !tbaa !40
  %47 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %48 = load float, ptr %47, align 8, !tbaa !54
  %49 = fmul float %48, %13
  %50 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %51 = load float, ptr %50, align 8, !tbaa !54
  %52 = fmul float %51, %14
  %53 = tail call fastcc float @Xor(float noundef %49, float noundef %13, float noundef %52, float noundef %14) #14
  %54 = fmul float %53, %26
  %55 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 7
  store float %54, ptr %55, align 8, !tbaa !54
  %56 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %57 = load i32, ptr %56, align 4, !tbaa !59
  %58 = icmp eq i32 %57, 12
  br i1 %58, label %59, label %69

59:                                               ; preds = %3
  %60 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %61 = load float, ptr %60, align 8, !tbaa !55
  %62 = fmul float %61, %13
  %63 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %64 = load float, ptr %63, align 8, !tbaa !55
  %65 = fmul float %64, %14
  %66 = tail call fastcc float @Xor(float noundef %62, float noundef %13, float noundef %65, float noundef %14) #14
  %67 = fmul float %66, %26
  %68 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 9
  store float %67, ptr %68, align 8, !tbaa !55
  br label %69

69:                                               ; preds = %59, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @CompositePlus(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #8 {
  %5 = and i32 %2, 256
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %9 = load float, ptr %8, align 4, !tbaa !47
  %10 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %11 = load float, ptr %10, align 4, !tbaa !47
  tail call fastcc void @MagickPixelCompositePlus(ptr noundef %0, float noundef %9, ptr noundef %1, float noundef %11, ptr noundef %3) #14
  br label %67

12:                                               ; preds = %4
  %13 = and i32 %2, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %17 = load float, ptr %16, align 4, !tbaa !47
  %18 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %19 = load float, ptr %18, align 4, !tbaa !47
  %20 = fadd float %17, %19
  %21 = fadd float %20, -6.553500e+04
  %22 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  store float %21, ptr %22, align 4, !tbaa !47
  br label %23

23:                                               ; preds = %15, %12
  %24 = and i32 %2, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %28 = load float, ptr %27, align 8, !tbaa !56
  %29 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %30 = load float, ptr %29, align 8, !tbaa !56
  %31 = fadd float %28, %30
  %32 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  store float %31, ptr %32, align 8, !tbaa !56
  br label %33

33:                                               ; preds = %26, %23
  %34 = and i32 %2, 2
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %38 = load float, ptr %37, align 4, !tbaa !57
  %39 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %40 = load float, ptr %39, align 4, !tbaa !57
  %41 = fadd float %38, %40
  %42 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 6
  store float %41, ptr %42, align 4, !tbaa !57
  br label %43

43:                                               ; preds = %36, %33
  %44 = and i32 %2, 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %48 = load float, ptr %47, align 8, !tbaa !54
  %49 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %50 = load float, ptr %49, align 8, !tbaa !54
  %51 = fadd float %48, %50
  %52 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  store float %51, ptr %52, align 8, !tbaa !54
  br label %53

53:                                               ; preds = %46, %43
  %54 = and i32 %2, 32
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %67, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %58 = load i32, ptr %57, align 4, !tbaa !59
  %59 = icmp eq i32 %58, 12
  br i1 %59, label %60, label %67

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %62 = load float, ptr %61, align 8, !tbaa !55
  %63 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %64 = load float, ptr %63, align 8, !tbaa !55
  %65 = fadd float %62, %64
  %66 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  store float %65, ptr %66, align 8, !tbaa !55
  br label %67

67:                                               ; preds = %53, %56, %60, %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @CompositeMinus(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #8 {
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %6 = load float, ptr %5, align 4, !tbaa !47
  %7 = fpext float %6 to double
  %8 = tail call double @llvm.fmuladd.f64(double %7, double 0xBEF0001000100010, double 1.000000e+00)
  %9 = fptrunc double %8 to float
  %10 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %11 = load float, ptr %10, align 4, !tbaa !47
  %12 = fpext float %11 to double
  %13 = tail call double @llvm.fmuladd.f64(double %12, double 0xBEF0001000100010, double 1.000000e+00)
  %14 = fptrunc double %13 to float
  %15 = and i32 %2, 256
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %73, label %17

17:                                               ; preds = %4
  %18 = fadd float %9, %14
  %19 = fneg float %9
  %20 = tail call float @llvm.fmuladd.f32(float %19, float %14, float %18)
  %21 = tail call fastcc float @RoundToUnity(float noundef %20) #14
  %22 = fpext float %21 to double
  %23 = fsub double 1.000000e+00, %22
  %24 = tail call fastcc double @PerceptibleReciprocal(double noundef %22) #14
  %25 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %26 = load float, ptr %25, align 8, !tbaa !56
  %27 = fmul float %26, %9
  %28 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %29 = load float, ptr %28, align 8, !tbaa !56
  %30 = fmul float %29, %14
  %31 = tail call fastcc float @Minus(float noundef %27, float noundef %9, float noundef %30) #14
  %32 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  %33 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %34 = load float, ptr %33, align 4, !tbaa !57
  %35 = fmul float %34, %9
  %36 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %37 = load float, ptr %36, align 4, !tbaa !57
  %38 = fmul float %37, %14
  %39 = tail call fastcc float @Minus(float noundef %35, float noundef %9, float noundef %38) #14
  %40 = insertelement <2 x float> poison, float %31, i64 0
  %41 = insertelement <2 x float> %40, float %39, i64 1
  %42 = fpext <2 x float> %41 to <2 x double>
  %43 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %44 = load float, ptr %43, align 8, !tbaa !54
  %45 = fmul float %44, %9
  %46 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %47 = load float, ptr %46, align 8, !tbaa !54
  %48 = fmul float %47, %14
  %49 = tail call fastcc float @Minus(float noundef %45, float noundef %9, float noundef %48) #14
  %50 = fpext float %49 to double
  %51 = insertelement <4 x double> poison, double %24, i64 0
  %52 = insertelement <4 x double> %51, double %23, i64 1
  %53 = shufflevector <4 x double> %52, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %54 = shufflevector <2 x double> %42, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %55 = insertelement <4 x double> %54, double 6.553500e+04, i64 3
  %56 = insertelement <4 x double> %55, double %50, i64 2
  %57 = fmul <4 x double> %53, %56
  %58 = fptrunc <4 x double> %57 to <4 x float>
  store <4 x float> %58, ptr %32, align 8, !tbaa !40
  %59 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %60 = load i32, ptr %59, align 4, !tbaa !59
  %61 = icmp eq i32 %60, 12
  br i1 %61, label %62, label %129

62:                                               ; preds = %17
  %63 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %64 = load float, ptr %63, align 8, !tbaa !55
  %65 = fmul float %64, %9
  %66 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %67 = load float, ptr %66, align 8, !tbaa !55
  %68 = fmul float %67, %14
  %69 = tail call fastcc float @Minus(float noundef %65, float noundef %9, float noundef %68) #14
  %70 = fpext float %69 to double
  %71 = fmul double %24, %70
  %72 = fptrunc double %71 to float
  br label %126

73:                                               ; preds = %4
  %74 = and i32 %2, 8
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %73
  %77 = fsub float %9, %14
  %78 = fpext float %77 to double
  %79 = fsub double 1.000000e+00, %78
  %80 = fmul double %79, 6.553500e+04
  %81 = fptrunc double %80 to float
  %82 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  store float %81, ptr %82, align 4, !tbaa !47
  br label %83

83:                                               ; preds = %76, %73
  %84 = and i32 %2, 1
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %93, label %86

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %88 = load float, ptr %87, align 8, !tbaa !56
  %89 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %90 = load float, ptr %89, align 8, !tbaa !56
  %91 = fsub float %88, %90
  %92 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  store float %91, ptr %92, align 8, !tbaa !56
  br label %93

93:                                               ; preds = %86, %83
  %94 = and i32 %2, 2
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %103, label %96

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %98 = load float, ptr %97, align 4, !tbaa !57
  %99 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %100 = load float, ptr %99, align 4, !tbaa !57
  %101 = fsub float %98, %100
  %102 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 6
  store float %101, ptr %102, align 4, !tbaa !57
  br label %103

103:                                              ; preds = %96, %93
  %104 = and i32 %2, 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %113, label %106

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %108 = load float, ptr %107, align 8, !tbaa !54
  %109 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %110 = load float, ptr %109, align 8, !tbaa !54
  %111 = fsub float %108, %110
  %112 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  store float %111, ptr %112, align 8, !tbaa !54
  br label %113

113:                                              ; preds = %106, %103
  %114 = and i32 %2, 32
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %129, label %116

116:                                              ; preds = %113
  %117 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %118 = load i32, ptr %117, align 4, !tbaa !59
  %119 = icmp eq i32 %118, 12
  br i1 %119, label %120, label %129

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %122 = load float, ptr %121, align 8, !tbaa !55
  %123 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %124 = load float, ptr %123, align 8, !tbaa !55
  %125 = fsub float %122, %124
  br label %126

126:                                              ; preds = %62, %120
  %127 = phi float [ %125, %120 ], [ %72, %62 ]
  %128 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  store float %127, ptr %128, align 8, !tbaa !55
  br label %129

129:                                              ; preds = %126, %113, %116, %17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @CompositeModulusAdd(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #8 {
  %5 = and i32 %2, 256
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %54, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %9 = load float, ptr %8, align 4, !tbaa !47
  %10 = fpext float %9 to double
  %11 = tail call double @llvm.fmuladd.f64(double %10, double 0xBEF0001000100010, double 1.000000e+00)
  %12 = fptrunc double %11 to float
  %13 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %14 = load float, ptr %13, align 4, !tbaa !47
  %15 = fpext float %14 to double
  %16 = tail call double @llvm.fmuladd.f64(double %15, double 0xBEF0001000100010, double 1.000000e+00)
  %17 = fptrunc double %16 to float
  %18 = fadd float %12, %17
  %19 = fneg float %12
  %20 = tail call float @llvm.fmuladd.f32(float %19, float %17, float %18)
  %21 = tail call fastcc float @RoundToUnity(float noundef %20) #14
  %22 = fpext float %21 to double
  %23 = fsub double 1.000000e+00, %22
  %24 = fmul double %23, 6.553500e+04
  %25 = fptrunc double %24 to float
  %26 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  store float %25, ptr %26, align 4, !tbaa !47
  %27 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %28 = load float, ptr %27, align 8, !tbaa !56
  %29 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %30 = load float, ptr %29, align 8, !tbaa !56
  %31 = tail call fastcc float @ModulusAdd(float noundef %28, float noundef %12, float noundef %30, float noundef %17) #14
  %32 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  store float %31, ptr %32, align 8, !tbaa !56
  %33 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %34 = load float, ptr %33, align 4, !tbaa !57
  %35 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %36 = load float, ptr %35, align 4, !tbaa !57
  %37 = tail call fastcc float @ModulusAdd(float noundef %34, float noundef %12, float noundef %36, float noundef %17) #14
  %38 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 6
  store float %37, ptr %38, align 4, !tbaa !57
  %39 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %40 = load float, ptr %39, align 8, !tbaa !54
  %41 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %42 = load float, ptr %41, align 8, !tbaa !54
  %43 = tail call fastcc float @ModulusAdd(float noundef %40, float noundef %12, float noundef %42, float noundef %17) #14
  %44 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  store float %43, ptr %44, align 8, !tbaa !54
  %45 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %46 = load i32, ptr %45, align 4, !tbaa !59
  %47 = icmp eq i32 %46, 12
  br i1 %47, label %48, label %113

48:                                               ; preds = %7
  %49 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %50 = load float, ptr %49, align 8, !tbaa !55
  %51 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %52 = load float, ptr %51, align 8, !tbaa !55
  %53 = tail call fastcc float @ModulusAdd(float noundef %50, float noundef %12, float noundef %52, float noundef %17) #14
  br label %110

54:                                               ; preds = %4
  %55 = and i32 %2, 8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %67, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %59 = load float, ptr %58, align 4, !tbaa !47
  %60 = fsub float 6.553500e+04, %59
  %61 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %62 = load float, ptr %61, align 4, !tbaa !47
  %63 = fsub float 6.553500e+04, %62
  %64 = tail call fastcc float @ModulusAdd(float noundef %60, float noundef 1.000000e+00, float noundef %63, float noundef 1.000000e+00) #14
  %65 = fsub float 6.553500e+04, %64
  %66 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  store float %65, ptr %66, align 4, !tbaa !47
  br label %67

67:                                               ; preds = %57, %54
  %68 = and i32 %2, 1
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %72 = load float, ptr %71, align 8, !tbaa !56
  %73 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %74 = load float, ptr %73, align 8, !tbaa !56
  %75 = tail call fastcc float @ModulusAdd(float noundef %72, float noundef 1.000000e+00, float noundef %74, float noundef 1.000000e+00) #14
  %76 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  store float %75, ptr %76, align 8, !tbaa !56
  br label %77

77:                                               ; preds = %70, %67
  %78 = and i32 %2, 2
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %82 = load float, ptr %81, align 4, !tbaa !57
  %83 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %84 = load float, ptr %83, align 4, !tbaa !57
  %85 = tail call fastcc float @ModulusAdd(float noundef %82, float noundef 1.000000e+00, float noundef %84, float noundef 1.000000e+00) #14
  %86 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 6
  store float %85, ptr %86, align 4, !tbaa !57
  br label %87

87:                                               ; preds = %80, %77
  %88 = and i32 %2, 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %92 = load float, ptr %91, align 8, !tbaa !54
  %93 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %94 = load float, ptr %93, align 8, !tbaa !54
  %95 = tail call fastcc float @ModulusAdd(float noundef %92, float noundef 1.000000e+00, float noundef %94, float noundef 1.000000e+00) #14
  %96 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  store float %95, ptr %96, align 8, !tbaa !54
  br label %97

97:                                               ; preds = %90, %87
  %98 = and i32 %2, 32
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %113, label %100

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %102 = load i32, ptr %101, align 4, !tbaa !59
  %103 = icmp eq i32 %102, 12
  br i1 %103, label %104, label %113

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %106 = load float, ptr %105, align 8, !tbaa !55
  %107 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %108 = load float, ptr %107, align 8, !tbaa !55
  %109 = tail call fastcc float @ModulusAdd(float noundef %106, float noundef 1.000000e+00, float noundef %108, float noundef 1.000000e+00) #14
  br label %110

110:                                              ; preds = %104, %48
  %111 = phi float [ %53, %48 ], [ %109, %104 ]
  %112 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  store float %111, ptr %112, align 8, !tbaa !55
  br label %113

113:                                              ; preds = %110, %7, %97, %100
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @CompositeModulusSubtract(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #8 {
  %5 = and i32 %2, 256
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %54, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %9 = load float, ptr %8, align 4, !tbaa !47
  %10 = fpext float %9 to double
  %11 = tail call double @llvm.fmuladd.f64(double %10, double 0xBEF0001000100010, double 1.000000e+00)
  %12 = fptrunc double %11 to float
  %13 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %14 = load float, ptr %13, align 4, !tbaa !47
  %15 = fpext float %14 to double
  %16 = tail call double @llvm.fmuladd.f64(double %15, double 0xBEF0001000100010, double 1.000000e+00)
  %17 = fptrunc double %16 to float
  %18 = fadd float %12, %17
  %19 = fneg float %12
  %20 = tail call float @llvm.fmuladd.f32(float %19, float %17, float %18)
  %21 = tail call fastcc float @RoundToUnity(float noundef %20) #14
  %22 = fpext float %21 to double
  %23 = fsub double 1.000000e+00, %22
  %24 = fmul double %23, 6.553500e+04
  %25 = fptrunc double %24 to float
  %26 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  store float %25, ptr %26, align 4, !tbaa !47
  %27 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %28 = load float, ptr %27, align 8, !tbaa !56
  %29 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %30 = load float, ptr %29, align 8, !tbaa !56
  %31 = tail call fastcc float @ModulusSubtract(float noundef %28, float noundef %12, float noundef %30, float noundef %17) #14
  %32 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  store float %31, ptr %32, align 8, !tbaa !56
  %33 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %34 = load float, ptr %33, align 4, !tbaa !57
  %35 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %36 = load float, ptr %35, align 4, !tbaa !57
  %37 = tail call fastcc float @ModulusSubtract(float noundef %34, float noundef %12, float noundef %36, float noundef %17) #14
  %38 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 6
  store float %37, ptr %38, align 4, !tbaa !57
  %39 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %40 = load float, ptr %39, align 8, !tbaa !54
  %41 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %42 = load float, ptr %41, align 8, !tbaa !54
  %43 = tail call fastcc float @ModulusSubtract(float noundef %40, float noundef %12, float noundef %42, float noundef %17) #14
  %44 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  store float %43, ptr %44, align 8, !tbaa !54
  %45 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %46 = load i32, ptr %45, align 4, !tbaa !59
  %47 = icmp eq i32 %46, 12
  br i1 %47, label %48, label %113

48:                                               ; preds = %7
  %49 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %50 = load float, ptr %49, align 8, !tbaa !55
  %51 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %52 = load float, ptr %51, align 8, !tbaa !55
  %53 = tail call fastcc float @ModulusSubtract(float noundef %50, float noundef %12, float noundef %52, float noundef %17) #14
  br label %110

54:                                               ; preds = %4
  %55 = and i32 %2, 8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %67, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %59 = load float, ptr %58, align 4, !tbaa !47
  %60 = fsub float 6.553500e+04, %59
  %61 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %62 = load float, ptr %61, align 4, !tbaa !47
  %63 = fsub float 6.553500e+04, %62
  %64 = tail call fastcc float @ModulusSubtract(float noundef %60, float noundef 1.000000e+00, float noundef %63, float noundef 1.000000e+00) #14
  %65 = fsub float 6.553500e+04, %64
  %66 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  store float %65, ptr %66, align 4, !tbaa !47
  br label %67

67:                                               ; preds = %57, %54
  %68 = and i32 %2, 1
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %72 = load float, ptr %71, align 8, !tbaa !56
  %73 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %74 = load float, ptr %73, align 8, !tbaa !56
  %75 = tail call fastcc float @ModulusSubtract(float noundef %72, float noundef 1.000000e+00, float noundef %74, float noundef 1.000000e+00) #14
  %76 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  store float %75, ptr %76, align 8, !tbaa !56
  br label %77

77:                                               ; preds = %70, %67
  %78 = and i32 %2, 2
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %82 = load float, ptr %81, align 4, !tbaa !57
  %83 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %84 = load float, ptr %83, align 4, !tbaa !57
  %85 = tail call fastcc float @ModulusSubtract(float noundef %82, float noundef 1.000000e+00, float noundef %84, float noundef 1.000000e+00) #14
  %86 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 6
  store float %85, ptr %86, align 4, !tbaa !57
  br label %87

87:                                               ; preds = %80, %77
  %88 = and i32 %2, 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %92 = load float, ptr %91, align 8, !tbaa !54
  %93 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %94 = load float, ptr %93, align 8, !tbaa !54
  %95 = tail call fastcc float @ModulusSubtract(float noundef %92, float noundef 1.000000e+00, float noundef %94, float noundef 1.000000e+00) #14
  %96 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  store float %95, ptr %96, align 8, !tbaa !54
  br label %97

97:                                               ; preds = %90, %87
  %98 = and i32 %2, 32
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %113, label %100

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %102 = load i32, ptr %101, align 4, !tbaa !59
  %103 = icmp eq i32 %102, 12
  br i1 %103, label %104, label %113

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %106 = load float, ptr %105, align 8, !tbaa !55
  %107 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %108 = load float, ptr %107, align 8, !tbaa !55
  %109 = tail call fastcc float @ModulusSubtract(float noundef %106, float noundef 1.000000e+00, float noundef %108, float noundef 1.000000e+00) #14
  br label %110

110:                                              ; preds = %104, %48
  %111 = phi float [ %53, %48 ], [ %109, %104 ]
  %112 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  store float %111, ptr %112, align 8, !tbaa !55
  br label %113

113:                                              ; preds = %110, %7, %97, %100
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @CompositeDifference(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #8 {
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %6 = load float, ptr %5, align 4, !tbaa !47
  %7 = fpext float %6 to double
  %8 = tail call double @llvm.fmuladd.f64(double %7, double 0xBEF0001000100010, double 1.000000e+00)
  %9 = fptrunc double %8 to float
  %10 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %11 = load float, ptr %10, align 4, !tbaa !47
  %12 = fpext float %11 to double
  %13 = tail call double @llvm.fmuladd.f64(double %12, double 0xBEF0001000100010, double 1.000000e+00)
  %14 = fptrunc double %13 to float
  %15 = and i32 %2, 256
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %65, label %17

17:                                               ; preds = %4
  %18 = fadd float %9, %14
  %19 = fneg float %9
  %20 = tail call float @llvm.fmuladd.f32(float %19, float %14, float %18)
  %21 = tail call fastcc float @RoundToUnity(float noundef %20) #14
  %22 = fpext float %21 to double
  %23 = fsub double 1.000000e+00, %22
  %24 = tail call fastcc double @PerceptibleReciprocal(double noundef %22) #14
  %25 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %26 = load float, ptr %25, align 8, !tbaa !56
  %27 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %28 = load float, ptr %27, align 8, !tbaa !56
  %29 = tail call fastcc float @Difference(float noundef %26, float noundef %9, float noundef %28, float noundef %14) #14
  %30 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  %31 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %32 = load float, ptr %31, align 4, !tbaa !57
  %33 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %34 = load float, ptr %33, align 4, !tbaa !57
  %35 = tail call fastcc float @Difference(float noundef %32, float noundef %9, float noundef %34, float noundef %14) #14
  %36 = insertelement <2 x float> poison, float %29, i64 0
  %37 = insertelement <2 x float> %36, float %35, i64 1
  %38 = fpext <2 x float> %37 to <2 x double>
  %39 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %40 = load float, ptr %39, align 8, !tbaa !54
  %41 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %42 = load float, ptr %41, align 8, !tbaa !54
  %43 = tail call fastcc float @Difference(float noundef %40, float noundef %9, float noundef %42, float noundef %14) #14
  %44 = fpext float %43 to double
  %45 = insertelement <4 x double> poison, double %24, i64 0
  %46 = insertelement <4 x double> %45, double %23, i64 1
  %47 = shufflevector <4 x double> %46, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %48 = shufflevector <2 x double> %38, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %49 = insertelement <4 x double> %48, double 6.553500e+04, i64 3
  %50 = insertelement <4 x double> %49, double %44, i64 2
  %51 = fmul <4 x double> %47, %50
  %52 = fptrunc <4 x double> %51 to <4 x float>
  store <4 x float> %52, ptr %30, align 8, !tbaa !40
  %53 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %54 = load i32, ptr %53, align 4, !tbaa !59
  %55 = icmp eq i32 %54, 12
  br i1 %55, label %56, label %123

56:                                               ; preds = %17
  %57 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %58 = load float, ptr %57, align 8, !tbaa !55
  %59 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %60 = load float, ptr %59, align 8, !tbaa !55
  %61 = tail call fastcc float @Difference(float noundef %58, float noundef %9, float noundef %60, float noundef %14) #14
  %62 = fpext float %61 to double
  %63 = fmul double %24, %62
  %64 = fptrunc double %63 to float
  br label %120

65:                                               ; preds = %4
  %66 = and i32 %2, 8
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %65
  %69 = fsub float %6, %11
  %70 = tail call float @llvm.fabs.f32(float %69)
  %71 = fsub float 6.553500e+04, %70
  %72 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  store float %71, ptr %72, align 4, !tbaa !47
  br label %73

73:                                               ; preds = %68, %65
  %74 = and i32 %2, 1
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %84, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %78 = load float, ptr %77, align 8, !tbaa !56
  %79 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %80 = load float, ptr %79, align 8, !tbaa !56
  %81 = fsub float %78, %80
  %82 = tail call float @llvm.fabs.f32(float %81)
  %83 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  store float %82, ptr %83, align 8, !tbaa !56
  br label %84

84:                                               ; preds = %76, %73
  %85 = and i32 %2, 2
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %95, label %87

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %89 = load float, ptr %88, align 4, !tbaa !57
  %90 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %91 = load float, ptr %90, align 4, !tbaa !57
  %92 = fsub float %89, %91
  %93 = tail call float @llvm.fabs.f32(float %92)
  %94 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 6
  store float %93, ptr %94, align 4, !tbaa !57
  br label %95

95:                                               ; preds = %87, %84
  %96 = and i32 %2, 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %106, label %98

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %100 = load float, ptr %99, align 8, !tbaa !54
  %101 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %102 = load float, ptr %101, align 8, !tbaa !54
  %103 = fsub float %100, %102
  %104 = tail call float @llvm.fabs.f32(float %103)
  %105 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  store float %104, ptr %105, align 8, !tbaa !54
  br label %106

106:                                              ; preds = %98, %95
  %107 = and i32 %2, 32
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %123, label %109

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %111 = load i32, ptr %110, align 4, !tbaa !59
  %112 = icmp eq i32 %111, 12
  br i1 %112, label %113, label %123

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %115 = load float, ptr %114, align 8, !tbaa !55
  %116 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %117 = load float, ptr %116, align 8, !tbaa !55
  %118 = fsub float %115, %117
  %119 = tail call float @llvm.fabs.f32(float %118)
  br label %120

120:                                              ; preds = %56, %113
  %121 = phi float [ %119, %113 ], [ %64, %56 ]
  %122 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  store float %121, ptr %122, align 8, !tbaa !55
  br label %123

123:                                              ; preds = %120, %106, %109, %17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @CompositeExclusion(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #8 {
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %6 = load float, ptr %5, align 4, !tbaa !47
  %7 = fpext float %6 to double
  %8 = tail call double @llvm.fmuladd.f64(double %7, double 0xBEF0001000100010, double 1.000000e+00)
  %9 = fptrunc double %8 to float
  %10 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %11 = load float, ptr %10, align 4, !tbaa !47
  %12 = fpext float %11 to double
  %13 = tail call double @llvm.fmuladd.f64(double %12, double 0xBEF0001000100010, double 1.000000e+00)
  %14 = fptrunc double %13 to float
  %15 = and i32 %2, 256
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %99, label %17

17:                                               ; preds = %4
  %18 = fadd float %9, %14
  %19 = fneg float %9
  %20 = tail call float @llvm.fmuladd.f32(float %19, float %14, float %18)
  %21 = tail call fastcc float @RoundToUnity(float noundef %20) #14
  %22 = fpext float %21 to double
  %23 = fsub double 1.000000e+00, %22
  %24 = fmul double %23, 6.553500e+04
  %25 = fptrunc double %24 to float
  %26 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  store float %25, ptr %26, align 4, !tbaa !47
  %27 = tail call double @llvm.fabs.f64(double %22)
  %28 = fcmp olt double %27, 1.000000e-15
  %29 = fdiv double 6.553500e+04, %22
  %30 = select i1 %28, double 0x440C6BD8BA3ED9CB, double %29
  %31 = fptrunc double %30 to float
  %32 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %33 = load float, ptr %32, align 8, !tbaa !56
  %34 = fpext float %33 to double
  %35 = fmul double %34, 0x3EF0001000100010
  %36 = fpext float %9 to double
  %37 = fmul double %35, %36
  %38 = fptrunc double %37 to float
  %39 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %40 = load float, ptr %39, align 8, !tbaa !56
  %41 = fpext float %40 to double
  %42 = fmul double %41, 0x3EF0001000100010
  %43 = fpext float %14 to double
  %44 = fmul double %42, %43
  %45 = fptrunc double %44 to float
  %46 = tail call fastcc float @Exclusion(float noundef %38, float noundef %9, float noundef %45, float noundef %14) #14
  %47 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  %48 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %49 = load float, ptr %48, align 4, !tbaa !57
  %50 = fpext float %49 to double
  %51 = fmul double %50, 0x3EF0001000100010
  %52 = fmul double %51, %36
  %53 = fptrunc double %52 to float
  %54 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %55 = load float, ptr %54, align 4, !tbaa !57
  %56 = fpext float %55 to double
  %57 = fmul double %56, 0x3EF0001000100010
  %58 = fmul double %57, %43
  %59 = fptrunc double %58 to float
  %60 = tail call fastcc float @Exclusion(float noundef %53, float noundef %9, float noundef %59, float noundef %14) #14
  %61 = insertelement <2 x float> poison, float %46, i64 0
  %62 = insertelement <2 x float> %61, float %60, i64 1
  %63 = insertelement <2 x float> poison, float %31, i64 0
  %64 = shufflevector <2 x float> %63, <2 x float> poison, <2 x i32> zeroinitializer
  %65 = fmul <2 x float> %62, %64
  store <2 x float> %65, ptr %47, align 8, !tbaa !40
  %66 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %67 = load float, ptr %66, align 8, !tbaa !54
  %68 = fpext float %67 to double
  %69 = fmul double %68, 0x3EF0001000100010
  %70 = fmul double %69, %36
  %71 = fptrunc double %70 to float
  %72 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %73 = load float, ptr %72, align 8, !tbaa !54
  %74 = fpext float %73 to double
  %75 = fmul double %74, 0x3EF0001000100010
  %76 = fmul double %75, %43
  %77 = fptrunc double %76 to float
  %78 = tail call fastcc float @Exclusion(float noundef %71, float noundef %9, float noundef %77, float noundef %14) #14
  %79 = fmul float %78, %31
  %80 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  store float %79, ptr %80, align 8, !tbaa !54
  %81 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %82 = load i32, ptr %81, align 4, !tbaa !59
  %83 = icmp eq i32 %82, 12
  br i1 %83, label %84, label %183

84:                                               ; preds = %17
  %85 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %86 = load float, ptr %85, align 8, !tbaa !55
  %87 = fpext float %86 to double
  %88 = fmul double %87, 0x3EF0001000100010
  %89 = fmul double %88, %36
  %90 = fptrunc double %89 to float
  %91 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %92 = load float, ptr %91, align 8, !tbaa !55
  %93 = fpext float %92 to double
  %94 = fmul double %93, 0x3EF0001000100010
  %95 = fmul double %94, %43
  %96 = fptrunc double %95 to float
  %97 = tail call fastcc float @Exclusion(float noundef %90, float noundef %9, float noundef %96, float noundef %14) #14
  %98 = fmul float %97, %31
  br label %180

99:                                               ; preds = %4
  %100 = and i32 %2, 8
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %109, label %102

102:                                              ; preds = %99
  %103 = tail call fastcc float @Exclusion(float noundef %9, float noundef 1.000000e+00, float noundef %14, float noundef 1.000000e+00) #14
  %104 = fpext float %103 to double
  %105 = fsub double 1.000000e+00, %104
  %106 = fmul double %105, 6.553500e+04
  %107 = fptrunc double %106 to float
  %108 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  store float %107, ptr %108, align 4, !tbaa !47
  br label %109

109:                                              ; preds = %102, %99
  %110 = and i32 %2, 1
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %126, label %112

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %114 = load float, ptr %113, align 8, !tbaa !56
  %115 = fpext float %114 to double
  %116 = fmul double %115, 0x3EF0001000100010
  %117 = fptrunc double %116 to float
  %118 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %119 = load float, ptr %118, align 8, !tbaa !56
  %120 = fpext float %119 to double
  %121 = fmul double %120, 0x3EF0001000100010
  %122 = fptrunc double %121 to float
  %123 = tail call fastcc float @Exclusion(float noundef %117, float noundef 1.000000e+00, float noundef %122, float noundef 1.000000e+00) #14
  %124 = fmul float %123, 6.553500e+04
  %125 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  store float %124, ptr %125, align 8, !tbaa !56
  br label %126

126:                                              ; preds = %112, %109
  %127 = and i32 %2, 2
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %143, label %129

129:                                              ; preds = %126
  %130 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %131 = load float, ptr %130, align 4, !tbaa !57
  %132 = fpext float %131 to double
  %133 = fmul double %132, 0x3EF0001000100010
  %134 = fptrunc double %133 to float
  %135 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %136 = load float, ptr %135, align 4, !tbaa !57
  %137 = fpext float %136 to double
  %138 = fmul double %137, 0x3EF0001000100010
  %139 = fptrunc double %138 to float
  %140 = tail call fastcc float @Exclusion(float noundef %134, float noundef 1.000000e+00, float noundef %139, float noundef 1.000000e+00) #14
  %141 = fmul float %140, 6.553500e+04
  %142 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 6
  store float %141, ptr %142, align 4, !tbaa !57
  br label %143

143:                                              ; preds = %129, %126
  %144 = and i32 %2, 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %160, label %146

146:                                              ; preds = %143
  %147 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %148 = load float, ptr %147, align 8, !tbaa !54
  %149 = fpext float %148 to double
  %150 = fmul double %149, 0x3EF0001000100010
  %151 = fptrunc double %150 to float
  %152 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %153 = load float, ptr %152, align 8, !tbaa !54
  %154 = fpext float %153 to double
  %155 = fmul double %154, 0x3EF0001000100010
  %156 = fptrunc double %155 to float
  %157 = tail call fastcc float @Exclusion(float noundef %151, float noundef 1.000000e+00, float noundef %156, float noundef 1.000000e+00) #14
  %158 = fmul float %157, 6.553500e+04
  %159 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  store float %158, ptr %159, align 8, !tbaa !54
  br label %160

160:                                              ; preds = %146, %143
  %161 = and i32 %2, 32
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %183, label %163

163:                                              ; preds = %160
  %164 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %165 = load i32, ptr %164, align 4, !tbaa !59
  %166 = icmp eq i32 %165, 12
  br i1 %166, label %167, label %183

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %169 = load float, ptr %168, align 8, !tbaa !55
  %170 = fpext float %169 to double
  %171 = fmul double %170, 0x3EF0001000100010
  %172 = fptrunc double %171 to float
  %173 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %174 = load float, ptr %173, align 8, !tbaa !55
  %175 = fpext float %174 to double
  %176 = fmul double %175, 0x3EF0001000100010
  %177 = fptrunc double %176 to float
  %178 = tail call fastcc float @Exclusion(float noundef %172, float noundef 1.000000e+00, float noundef %177, float noundef 1.000000e+00) #14
  %179 = fmul float %178, 6.553500e+04
  br label %180

180:                                              ; preds = %84, %167
  %181 = phi float [ %179, %167 ], [ %98, %84 ]
  %182 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  store float %181, ptr %182, align 8, !tbaa !55
  br label %183

183:                                              ; preds = %180, %160, %163, %17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @CompositeMultiply(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #8 {
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %6 = load float, ptr %5, align 4, !tbaa !47
  %7 = fpext float %6 to double
  %8 = tail call double @llvm.fmuladd.f64(double %7, double 0xBEF0001000100010, double 1.000000e+00)
  %9 = fptrunc double %8 to float
  %10 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %11 = load float, ptr %10, align 4, !tbaa !47
  %12 = fpext float %11 to double
  %13 = tail call double @llvm.fmuladd.f64(double %12, double 0xBEF0001000100010, double 1.000000e+00)
  %14 = fptrunc double %13 to float
  %15 = and i32 %2, 256
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %99, label %17

17:                                               ; preds = %4
  %18 = fadd float %9, %14
  %19 = fneg float %9
  %20 = tail call float @llvm.fmuladd.f32(float %19, float %14, float %18)
  %21 = tail call fastcc float @RoundToUnity(float noundef %20) #14
  %22 = fpext float %21 to double
  %23 = fsub double 1.000000e+00, %22
  %24 = fmul double %23, 6.553500e+04
  %25 = fptrunc double %24 to float
  %26 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  store float %25, ptr %26, align 4, !tbaa !47
  %27 = tail call double @llvm.fabs.f64(double %22)
  %28 = fcmp olt double %27, 1.000000e-15
  %29 = fdiv double 6.553500e+04, %22
  %30 = select i1 %28, double 0x440C6BD8BA3ED9CB, double %29
  %31 = fptrunc double %30 to float
  %32 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %33 = load float, ptr %32, align 8, !tbaa !56
  %34 = fpext float %33 to double
  %35 = fmul double %34, 0x3EF0001000100010
  %36 = fpext float %9 to double
  %37 = fmul double %35, %36
  %38 = fptrunc double %37 to float
  %39 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %40 = load float, ptr %39, align 8, !tbaa !56
  %41 = fpext float %40 to double
  %42 = fmul double %41, 0x3EF0001000100010
  %43 = fpext float %14 to double
  %44 = fmul double %42, %43
  %45 = fptrunc double %44 to float
  %46 = tail call fastcc float @Multiply(float noundef %38, float noundef %9, float noundef %45, float noundef %14) #14
  %47 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  %48 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %49 = load float, ptr %48, align 4, !tbaa !57
  %50 = fpext float %49 to double
  %51 = fmul double %50, 0x3EF0001000100010
  %52 = fmul double %51, %36
  %53 = fptrunc double %52 to float
  %54 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %55 = load float, ptr %54, align 4, !tbaa !57
  %56 = fpext float %55 to double
  %57 = fmul double %56, 0x3EF0001000100010
  %58 = fmul double %57, %43
  %59 = fptrunc double %58 to float
  %60 = tail call fastcc float @Multiply(float noundef %53, float noundef %9, float noundef %59, float noundef %14) #14
  %61 = insertelement <2 x float> poison, float %46, i64 0
  %62 = insertelement <2 x float> %61, float %60, i64 1
  %63 = insertelement <2 x float> poison, float %31, i64 0
  %64 = shufflevector <2 x float> %63, <2 x float> poison, <2 x i32> zeroinitializer
  %65 = fmul <2 x float> %62, %64
  store <2 x float> %65, ptr %47, align 8, !tbaa !40
  %66 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %67 = load float, ptr %66, align 8, !tbaa !54
  %68 = fpext float %67 to double
  %69 = fmul double %68, 0x3EF0001000100010
  %70 = fmul double %69, %36
  %71 = fptrunc double %70 to float
  %72 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %73 = load float, ptr %72, align 8, !tbaa !54
  %74 = fpext float %73 to double
  %75 = fmul double %74, 0x3EF0001000100010
  %76 = fmul double %75, %43
  %77 = fptrunc double %76 to float
  %78 = tail call fastcc float @Multiply(float noundef %71, float noundef %9, float noundef %77, float noundef %14) #14
  %79 = fmul float %78, %31
  %80 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  store float %79, ptr %80, align 8, !tbaa !54
  %81 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %82 = load i32, ptr %81, align 4, !tbaa !59
  %83 = icmp eq i32 %82, 12
  br i1 %83, label %84, label %171

84:                                               ; preds = %17
  %85 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %86 = load float, ptr %85, align 8, !tbaa !55
  %87 = fpext float %86 to double
  %88 = fmul double %87, 0x3EF0001000100010
  %89 = fmul double %88, %36
  %90 = fptrunc double %89 to float
  %91 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %92 = load float, ptr %91, align 8, !tbaa !55
  %93 = fpext float %92 to double
  %94 = fmul double %93, 0x3EF0001000100010
  %95 = fmul double %94, %43
  %96 = fptrunc double %95 to float
  %97 = tail call fastcc float @Multiply(float noundef %90, float noundef %9, float noundef %96, float noundef %14) #14
  %98 = fmul float %97, %31
  br label %168

99:                                               ; preds = %4
  %100 = and i32 %2, 8
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %109, label %102

102:                                              ; preds = %99
  %103 = fmul float %9, %14
  %104 = fpext float %103 to double
  %105 = fsub double 1.000000e+00, %104
  %106 = fmul double %105, 6.553500e+04
  %107 = fptrunc double %106 to float
  %108 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  store float %107, ptr %108, align 4, !tbaa !47
  br label %109

109:                                              ; preds = %102, %99
  %110 = and i32 %2, 1
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %123, label %112

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %114 = load float, ptr %113, align 8, !tbaa !56
  %115 = fpext float %114 to double
  %116 = fmul double %115, 0x3EF0001000100010
  %117 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %118 = load float, ptr %117, align 8, !tbaa !56
  %119 = fpext float %118 to double
  %120 = fmul double %116, %119
  %121 = fptrunc double %120 to float
  %122 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  store float %121, ptr %122, align 8, !tbaa !56
  br label %123

123:                                              ; preds = %112, %109
  %124 = and i32 %2, 2
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %137, label %126

126:                                              ; preds = %123
  %127 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %128 = load float, ptr %127, align 4, !tbaa !57
  %129 = fpext float %128 to double
  %130 = fmul double %129, 0x3EF0001000100010
  %131 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %132 = load float, ptr %131, align 4, !tbaa !57
  %133 = fpext float %132 to double
  %134 = fmul double %130, %133
  %135 = fptrunc double %134 to float
  %136 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 6
  store float %135, ptr %136, align 4, !tbaa !57
  br label %137

137:                                              ; preds = %126, %123
  %138 = and i32 %2, 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %151, label %140

140:                                              ; preds = %137
  %141 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %142 = load float, ptr %141, align 8, !tbaa !54
  %143 = fpext float %142 to double
  %144 = fmul double %143, 0x3EF0001000100010
  %145 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %146 = load float, ptr %145, align 8, !tbaa !54
  %147 = fpext float %146 to double
  %148 = fmul double %144, %147
  %149 = fptrunc double %148 to float
  %150 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  store float %149, ptr %150, align 8, !tbaa !54
  br label %151

151:                                              ; preds = %140, %137
  %152 = and i32 %2, 32
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %171, label %154

154:                                              ; preds = %151
  %155 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %156 = load i32, ptr %155, align 4, !tbaa !59
  %157 = icmp eq i32 %156, 12
  br i1 %157, label %158, label %171

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %160 = load float, ptr %159, align 8, !tbaa !55
  %161 = fpext float %160 to double
  %162 = fmul double %161, 0x3EF0001000100010
  %163 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %164 = load float, ptr %163, align 8, !tbaa !55
  %165 = fpext float %164 to double
  %166 = fmul double %162, %165
  %167 = fptrunc double %166 to float
  br label %168

168:                                              ; preds = %84, %158
  %169 = phi float [ %167, %158 ], [ %98, %84 ]
  %170 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  store float %169, ptr %170, align 8, !tbaa !55
  br label %171

171:                                              ; preds = %168, %151, %154, %17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @CompositeScreen(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #8 {
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %6 = load float, ptr %5, align 4, !tbaa !47
  %7 = fpext float %6 to double
  %8 = tail call double @llvm.fmuladd.f64(double %7, double 0xBEF0001000100010, double 1.000000e+00)
  %9 = fptrunc double %8 to float
  %10 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %11 = load float, ptr %10, align 4, !tbaa !47
  %12 = fpext float %11 to double
  %13 = tail call double @llvm.fmuladd.f64(double %12, double 0xBEF0001000100010, double 1.000000e+00)
  %14 = fptrunc double %13 to float
  %15 = and i32 %2, 256
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %78, label %17

17:                                               ; preds = %4
  %18 = fadd float %9, %14
  %19 = fneg float %9
  %20 = tail call float @llvm.fmuladd.f32(float %19, float %14, float %18)
  %21 = tail call fastcc float @RoundToUnity(float noundef %20) #14
  %22 = fpext float %21 to double
  %23 = fsub double 1.000000e+00, %22
  %24 = fmul float %9, 0x3EF0001000000000
  %25 = fmul float %14, 0x3EF0001000000000
  %26 = tail call double @llvm.fabs.f64(double %22)
  %27 = fcmp olt double %26, 1.000000e-15
  %28 = fdiv double 6.553500e+04, %22
  %29 = select i1 %27, double 0x440C6BD8BA3ED9CB, double %28
  %30 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %31 = load float, ptr %30, align 8, !tbaa !56
  %32 = fmul float %24, %31
  %33 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %34 = load float, ptr %33, align 8, !tbaa !56
  %35 = fmul float %25, %34
  %36 = tail call fastcc float @Screen(float noundef %32, float noundef %35) #14
  %37 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  %38 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %39 = load float, ptr %38, align 4, !tbaa !57
  %40 = fmul float %24, %39
  %41 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %42 = load float, ptr %41, align 4, !tbaa !57
  %43 = fmul float %25, %42
  %44 = tail call fastcc float @Screen(float noundef %40, float noundef %43) #14
  %45 = insertelement <2 x float> poison, float %36, i64 0
  %46 = insertelement <2 x float> %45, float %44, i64 1
  %47 = fpext <2 x float> %46 to <2 x double>
  %48 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %49 = load float, ptr %48, align 8, !tbaa !54
  %50 = fmul float %24, %49
  %51 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %52 = load float, ptr %51, align 8, !tbaa !54
  %53 = fmul float %25, %52
  %54 = tail call fastcc float @Screen(float noundef %50, float noundef %53) #14
  %55 = fpext float %54 to double
  %56 = insertelement <4 x double> poison, double %29, i64 0
  %57 = insertelement <4 x double> %56, double %23, i64 1
  %58 = shufflevector <4 x double> %57, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %59 = shufflevector <2 x double> %47, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %60 = insertelement <4 x double> %59, double 6.553500e+04, i64 3
  %61 = insertelement <4 x double> %60, double %55, i64 2
  %62 = fmul <4 x double> %58, %61
  %63 = fptrunc <4 x double> %62 to <4 x float>
  store <4 x float> %63, ptr %37, align 8, !tbaa !40
  %64 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %65 = load i32, ptr %64, align 4, !tbaa !59
  %66 = icmp eq i32 %65, 12
  br i1 %66, label %67, label %162

67:                                               ; preds = %17
  %68 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %69 = load float, ptr %68, align 8, !tbaa !55
  %70 = fmul float %24, %69
  %71 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %72 = load float, ptr %71, align 8, !tbaa !55
  %73 = fmul float %25, %72
  %74 = tail call fastcc float @Screen(float noundef %70, float noundef %73) #14
  %75 = fpext float %74 to double
  %76 = fmul double %29, %75
  %77 = fptrunc double %76 to float
  br label %159

78:                                               ; preds = %4
  %79 = and i32 %2, 8
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %88, label %81

81:                                               ; preds = %78
  %82 = tail call fastcc float @Screen(float noundef %9, float noundef %14) #14
  %83 = fpext float %82 to double
  %84 = fsub double 1.000000e+00, %83
  %85 = fmul double %84, 6.553500e+04
  %86 = fptrunc double %85 to float
  %87 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  store float %86, ptr %87, align 4, !tbaa !47
  br label %88

88:                                               ; preds = %81, %78
  %89 = and i32 %2, 1
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %105, label %91

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %93 = load float, ptr %92, align 8, !tbaa !56
  %94 = fpext float %93 to double
  %95 = fmul double %94, 0x3EF0001000100010
  %96 = fptrunc double %95 to float
  %97 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %98 = load float, ptr %97, align 8, !tbaa !56
  %99 = fpext float %98 to double
  %100 = fmul double %99, 0x3EF0001000100010
  %101 = fptrunc double %100 to float
  %102 = tail call fastcc float @Screen(float noundef %96, float noundef %101) #14
  %103 = fmul float %102, 6.553500e+04
  %104 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  store float %103, ptr %104, align 8, !tbaa !56
  br label %105

105:                                              ; preds = %91, %88
  %106 = and i32 %2, 2
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %122, label %108

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %110 = load float, ptr %109, align 4, !tbaa !57
  %111 = fpext float %110 to double
  %112 = fmul double %111, 0x3EF0001000100010
  %113 = fptrunc double %112 to float
  %114 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %115 = load float, ptr %114, align 4, !tbaa !57
  %116 = fpext float %115 to double
  %117 = fmul double %116, 0x3EF0001000100010
  %118 = fptrunc double %117 to float
  %119 = tail call fastcc float @Screen(float noundef %113, float noundef %118) #14
  %120 = fmul float %119, 6.553500e+04
  %121 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 6
  store float %120, ptr %121, align 4, !tbaa !57
  br label %122

122:                                              ; preds = %108, %105
  %123 = and i32 %2, 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %139, label %125

125:                                              ; preds = %122
  %126 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %127 = load float, ptr %126, align 8, !tbaa !54
  %128 = fpext float %127 to double
  %129 = fmul double %128, 0x3EF0001000100010
  %130 = fptrunc double %129 to float
  %131 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %132 = load float, ptr %131, align 8, !tbaa !54
  %133 = fpext float %132 to double
  %134 = fmul double %133, 0x3EF0001000100010
  %135 = fptrunc double %134 to float
  %136 = tail call fastcc float @Screen(float noundef %130, float noundef %135) #14
  %137 = fmul float %136, 6.553500e+04
  %138 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  store float %137, ptr %138, align 8, !tbaa !54
  br label %139

139:                                              ; preds = %125, %122
  %140 = and i32 %2, 32
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %162, label %142

142:                                              ; preds = %139
  %143 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %144 = load i32, ptr %143, align 4, !tbaa !59
  %145 = icmp eq i32 %144, 12
  br i1 %145, label %146, label %162

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %148 = load float, ptr %147, align 8, !tbaa !55
  %149 = fpext float %148 to double
  %150 = fmul double %149, 0x3EF0001000100010
  %151 = fptrunc double %150 to float
  %152 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %153 = load float, ptr %152, align 8, !tbaa !55
  %154 = fpext float %153 to double
  %155 = fmul double %154, 0x3EF0001000100010
  %156 = fptrunc double %155 to float
  %157 = tail call fastcc float @Screen(float noundef %151, float noundef %156) #14
  %158 = fmul float %157, 6.553500e+04
  br label %159

159:                                              ; preds = %67, %146
  %160 = phi float [ %158, %146 ], [ %77, %67 ]
  %161 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  store float %160, ptr %161, align 8, !tbaa !55
  br label %162

162:                                              ; preds = %159, %139, %142, %17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @CompositeDivide(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #8 {
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %6 = load float, ptr %5, align 4, !tbaa !47
  %7 = fpext float %6 to double
  %8 = tail call double @llvm.fmuladd.f64(double %7, double 0xBEF0001000100010, double 1.000000e+00)
  %9 = fptrunc double %8 to float
  %10 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %11 = load float, ptr %10, align 4, !tbaa !47
  %12 = fpext float %11 to double
  %13 = tail call double @llvm.fmuladd.f64(double %12, double 0xBEF0001000100010, double 1.000000e+00)
  %14 = fptrunc double %13 to float
  %15 = and i32 %2, 256
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %99, label %17

17:                                               ; preds = %4
  %18 = fadd float %9, %14
  %19 = fneg float %9
  %20 = tail call float @llvm.fmuladd.f32(float %19, float %14, float %18)
  %21 = tail call fastcc float @RoundToUnity(float noundef %20) #14
  %22 = fpext float %21 to double
  %23 = fsub double 1.000000e+00, %22
  %24 = fmul double %23, 6.553500e+04
  %25 = fptrunc double %24 to float
  %26 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  store float %25, ptr %26, align 4, !tbaa !47
  %27 = tail call double @llvm.fabs.f64(double %22)
  %28 = fcmp olt double %27, 1.000000e-15
  %29 = fdiv double 6.553500e+04, %22
  %30 = select i1 %28, double 0x440C6BD8BA3ED9CB, double %29
  %31 = fptrunc double %30 to float
  %32 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %33 = load float, ptr %32, align 8, !tbaa !56
  %34 = fpext float %33 to double
  %35 = fmul double %34, 0x3EF0001000100010
  %36 = fpext float %9 to double
  %37 = fmul double %35, %36
  %38 = fptrunc double %37 to float
  %39 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %40 = load float, ptr %39, align 8, !tbaa !56
  %41 = fpext float %40 to double
  %42 = fmul double %41, 0x3EF0001000100010
  %43 = fpext float %14 to double
  %44 = fmul double %42, %43
  %45 = fptrunc double %44 to float
  %46 = tail call fastcc float @Divide(float noundef %38, float noundef %9, float noundef %45, float noundef %14) #14
  %47 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  %48 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %49 = load float, ptr %48, align 4, !tbaa !57
  %50 = fpext float %49 to double
  %51 = fmul double %50, 0x3EF0001000100010
  %52 = fmul double %51, %36
  %53 = fptrunc double %52 to float
  %54 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %55 = load float, ptr %54, align 4, !tbaa !57
  %56 = fpext float %55 to double
  %57 = fmul double %56, 0x3EF0001000100010
  %58 = fmul double %57, %43
  %59 = fptrunc double %58 to float
  %60 = tail call fastcc float @Divide(float noundef %53, float noundef %9, float noundef %59, float noundef %14) #14
  %61 = insertelement <2 x float> poison, float %46, i64 0
  %62 = insertelement <2 x float> %61, float %60, i64 1
  %63 = insertelement <2 x float> poison, float %31, i64 0
  %64 = shufflevector <2 x float> %63, <2 x float> poison, <2 x i32> zeroinitializer
  %65 = fmul <2 x float> %62, %64
  store <2 x float> %65, ptr %47, align 8, !tbaa !40
  %66 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %67 = load float, ptr %66, align 8, !tbaa !54
  %68 = fpext float %67 to double
  %69 = fmul double %68, 0x3EF0001000100010
  %70 = fmul double %69, %36
  %71 = fptrunc double %70 to float
  %72 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %73 = load float, ptr %72, align 8, !tbaa !54
  %74 = fpext float %73 to double
  %75 = fmul double %74, 0x3EF0001000100010
  %76 = fmul double %75, %43
  %77 = fptrunc double %76 to float
  %78 = tail call fastcc float @Divide(float noundef %71, float noundef %9, float noundef %77, float noundef %14) #14
  %79 = fmul float %78, %31
  %80 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  store float %79, ptr %80, align 8, !tbaa !54
  %81 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %82 = load i32, ptr %81, align 4, !tbaa !59
  %83 = icmp eq i32 %82, 12
  br i1 %83, label %84, label %183

84:                                               ; preds = %17
  %85 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %86 = load float, ptr %85, align 8, !tbaa !55
  %87 = fpext float %86 to double
  %88 = fmul double %87, 0x3EF0001000100010
  %89 = fmul double %88, %36
  %90 = fptrunc double %89 to float
  %91 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %92 = load float, ptr %91, align 8, !tbaa !55
  %93 = fpext float %92 to double
  %94 = fmul double %93, 0x3EF0001000100010
  %95 = fmul double %94, %43
  %96 = fptrunc double %95 to float
  %97 = tail call fastcc float @Divide(float noundef %90, float noundef %9, float noundef %96, float noundef %14) #14
  %98 = fmul float %97, %31
  br label %180

99:                                               ; preds = %4
  %100 = and i32 %2, 8
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %109, label %102

102:                                              ; preds = %99
  %103 = tail call fastcc float @Divide(float noundef %9, float noundef 1.000000e+00, float noundef %14, float noundef 1.000000e+00) #14
  %104 = fpext float %103 to double
  %105 = fsub double 1.000000e+00, %104
  %106 = fmul double %105, 6.553500e+04
  %107 = fptrunc double %106 to float
  %108 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  store float %107, ptr %108, align 4, !tbaa !47
  br label %109

109:                                              ; preds = %102, %99
  %110 = and i32 %2, 1
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %126, label %112

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %114 = load float, ptr %113, align 8, !tbaa !56
  %115 = fpext float %114 to double
  %116 = fmul double %115, 0x3EF0001000100010
  %117 = fptrunc double %116 to float
  %118 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %119 = load float, ptr %118, align 8, !tbaa !56
  %120 = fpext float %119 to double
  %121 = fmul double %120, 0x3EF0001000100010
  %122 = fptrunc double %121 to float
  %123 = tail call fastcc float @Divide(float noundef %117, float noundef 1.000000e+00, float noundef %122, float noundef 1.000000e+00) #14
  %124 = fmul float %123, 6.553500e+04
  %125 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  store float %124, ptr %125, align 8, !tbaa !56
  br label %126

126:                                              ; preds = %112, %109
  %127 = and i32 %2, 2
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %143, label %129

129:                                              ; preds = %126
  %130 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %131 = load float, ptr %130, align 4, !tbaa !57
  %132 = fpext float %131 to double
  %133 = fmul double %132, 0x3EF0001000100010
  %134 = fptrunc double %133 to float
  %135 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %136 = load float, ptr %135, align 4, !tbaa !57
  %137 = fpext float %136 to double
  %138 = fmul double %137, 0x3EF0001000100010
  %139 = fptrunc double %138 to float
  %140 = tail call fastcc float @Divide(float noundef %134, float noundef 1.000000e+00, float noundef %139, float noundef 1.000000e+00) #14
  %141 = fmul float %140, 6.553500e+04
  %142 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 6
  store float %141, ptr %142, align 4, !tbaa !57
  br label %143

143:                                              ; preds = %129, %126
  %144 = and i32 %2, 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %160, label %146

146:                                              ; preds = %143
  %147 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %148 = load float, ptr %147, align 8, !tbaa !54
  %149 = fpext float %148 to double
  %150 = fmul double %149, 0x3EF0001000100010
  %151 = fptrunc double %150 to float
  %152 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %153 = load float, ptr %152, align 8, !tbaa !54
  %154 = fpext float %153 to double
  %155 = fmul double %154, 0x3EF0001000100010
  %156 = fptrunc double %155 to float
  %157 = tail call fastcc float @Divide(float noundef %151, float noundef 1.000000e+00, float noundef %156, float noundef 1.000000e+00) #14
  %158 = fmul float %157, 6.553500e+04
  %159 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  store float %158, ptr %159, align 8, !tbaa !54
  br label %160

160:                                              ; preds = %146, %143
  %161 = and i32 %2, 32
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %183, label %163

163:                                              ; preds = %160
  %164 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %165 = load i32, ptr %164, align 4, !tbaa !59
  %166 = icmp eq i32 %165, 12
  br i1 %166, label %167, label %183

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %169 = load float, ptr %168, align 8, !tbaa !55
  %170 = fpext float %169 to double
  %171 = fmul double %170, 0x3EF0001000100010
  %172 = fptrunc double %171 to float
  %173 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %174 = load float, ptr %173, align 8, !tbaa !55
  %175 = fpext float %174 to double
  %176 = fmul double %175, 0x3EF0001000100010
  %177 = fptrunc double %176 to float
  %178 = tail call fastcc float @Divide(float noundef %172, float noundef 1.000000e+00, float noundef %177, float noundef 1.000000e+00) #14
  %179 = fmul float %178, 6.553500e+04
  br label %180

180:                                              ; preds = %84, %167
  %181 = phi float [ %179, %167 ], [ %98, %84 ]
  %182 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  store float %181, ptr %182, align 8, !tbaa !55
  br label %183

183:                                              ; preds = %180, %160, %163, %17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @CompositeDarken(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #8 {
  %5 = and i32 %2, 256
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %63, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %9 = load float, ptr %8, align 4, !tbaa !47
  %10 = fpext float %9 to double
  %11 = fmul double %10, 0x3EF0001000100010
  %12 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %13 = load float, ptr %12, align 4, !tbaa !47
  %14 = fpext float %13 to double
  %15 = fmul double %11, %14
  %16 = fptrunc double %15 to float
  %17 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  store float %16, ptr %17, align 4, !tbaa !47
  %18 = fpext float %16 to double
  %19 = tail call double @llvm.fmuladd.f64(double %18, double 0xBEF0001000100010, double 1.000000e+00)
  %20 = fcmp olt double %19, 0.000000e+00
  %21 = select i1 %20, double 0.000000e+00, double %19
  %22 = tail call fastcc double @PerceptibleReciprocal(double noundef %21) #14
  %23 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %24 = load float, ptr %23, align 8, !tbaa !56
  %25 = load float, ptr %8, align 4, !tbaa !47
  %26 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %27 = load float, ptr %26, align 8, !tbaa !56
  %28 = load float, ptr %12, align 4, !tbaa !47
  %29 = tail call fastcc float @Darken(float noundef %24, float noundef %25, float noundef %27, float noundef %28) #14
  %30 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  %31 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %32 = load float, ptr %31, align 4, !tbaa !57
  %33 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %34 = load float, ptr %33, align 4, !tbaa !57
  %35 = tail call fastcc float @Darken(float noundef %32, float noundef %25, float noundef %34, float noundef %28) #14
  %36 = insertelement <2 x float> poison, float %29, i64 0
  %37 = insertelement <2 x float> %36, float %35, i64 1
  %38 = fpext <2 x float> %37 to <2 x double>
  %39 = insertelement <2 x double> poison, double %22, i64 0
  %40 = shufflevector <2 x double> %39, <2 x double> poison, <2 x i32> zeroinitializer
  %41 = fmul <2 x double> %40, %38
  %42 = fptrunc <2 x double> %41 to <2 x float>
  store <2 x float> %42, ptr %30, align 8, !tbaa !40
  %43 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %44 = load float, ptr %43, align 8, !tbaa !54
  %45 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %46 = load float, ptr %45, align 8, !tbaa !54
  %47 = tail call fastcc float @Darken(float noundef %44, float noundef %25, float noundef %46, float noundef %28) #14
  %48 = fpext float %47 to double
  %49 = fmul double %22, %48
  %50 = fptrunc double %49 to float
  %51 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  store float %50, ptr %51, align 8, !tbaa !54
  %52 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %53 = load i32, ptr %52, align 4, !tbaa !59
  %54 = icmp eq i32 %53, 12
  br i1 %54, label %55, label %134

55:                                               ; preds = %7
  %56 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %57 = load float, ptr %56, align 8, !tbaa !55
  %58 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %59 = load float, ptr %58, align 8, !tbaa !55
  %60 = tail call fastcc float @Darken(float noundef %57, float noundef %25, float noundef %59, float noundef %28) #14
  %61 = fpext float %60 to double
  %62 = fmul double %22, %61
  br label %130

63:                                               ; preds = %4
  %64 = and i32 %2, 8
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %76, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %68 = load float, ptr %67, align 4, !tbaa !47
  %69 = fpext float %68 to double
  %70 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %71 = load float, ptr %70, align 4, !tbaa !47
  %72 = fpext float %71 to double
  %73 = tail call fastcc double @MagickMax(double noundef %69, double noundef %72) #14
  %74 = fptrunc double %73 to float
  %75 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  store float %74, ptr %75, align 4, !tbaa !47
  br label %76

76:                                               ; preds = %66, %63
  %77 = and i32 %2, 1
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %89, label %79

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %81 = load float, ptr %80, align 8, !tbaa !56
  %82 = fpext float %81 to double
  %83 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %84 = load float, ptr %83, align 8, !tbaa !56
  %85 = fpext float %84 to double
  %86 = tail call fastcc double @MagickMin(double noundef %82, double noundef %85) #14
  %87 = fptrunc double %86 to float
  %88 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  store float %87, ptr %88, align 8, !tbaa !56
  br label %89

89:                                               ; preds = %79, %76
  %90 = and i32 %2, 2
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %102, label %92

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %94 = load float, ptr %93, align 4, !tbaa !57
  %95 = fpext float %94 to double
  %96 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %97 = load float, ptr %96, align 4, !tbaa !57
  %98 = fpext float %97 to double
  %99 = tail call fastcc double @MagickMin(double noundef %95, double noundef %98) #14
  %100 = fptrunc double %99 to float
  %101 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 6
  store float %100, ptr %101, align 4, !tbaa !57
  br label %102

102:                                              ; preds = %92, %89
  %103 = and i32 %2, 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %115, label %105

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %107 = load float, ptr %106, align 8, !tbaa !54
  %108 = fpext float %107 to double
  %109 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %110 = load float, ptr %109, align 8, !tbaa !54
  %111 = fpext float %110 to double
  %112 = tail call fastcc double @MagickMin(double noundef %108, double noundef %111) #14
  %113 = fptrunc double %112 to float
  %114 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  store float %113, ptr %114, align 8, !tbaa !54
  br label %115

115:                                              ; preds = %105, %102
  %116 = and i32 %2, 32
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %134, label %118

118:                                              ; preds = %115
  %119 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %120 = load i32, ptr %119, align 4, !tbaa !59
  %121 = icmp eq i32 %120, 12
  br i1 %121, label %122, label %134

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %124 = load float, ptr %123, align 8, !tbaa !55
  %125 = fpext float %124 to double
  %126 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %127 = load float, ptr %126, align 8, !tbaa !55
  %128 = fpext float %127 to double
  %129 = tail call fastcc double @MagickMin(double noundef %125, double noundef %128) #14
  br label %130

130:                                              ; preds = %55, %122
  %131 = phi double [ %129, %122 ], [ %62, %55 ]
  %132 = fptrunc double %131 to float
  %133 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  store float %132, ptr %133, align 8, !tbaa !55
  br label %134

134:                                              ; preds = %130, %115, %118, %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @CompositeLighten(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #8 {
  %5 = and i32 %2, 256
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %61, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %9 = load float, ptr %8, align 4, !tbaa !47
  %10 = fpext float %9 to double
  %11 = fmul double %10, 0x3EF0001000100010
  %12 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %13 = load float, ptr %12, align 4, !tbaa !47
  %14 = fpext float %13 to double
  %15 = fmul double %11, %14
  %16 = fptrunc double %15 to float
  %17 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  store float %16, ptr %17, align 4, !tbaa !47
  %18 = fpext float %16 to double
  %19 = tail call double @llvm.fmuladd.f64(double %18, double 0xBEF0001000100010, double 1.000000e+00)
  %20 = tail call fastcc double @PerceptibleReciprocal(double noundef %19) #14
  %21 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %22 = load float, ptr %21, align 8, !tbaa !56
  %23 = load float, ptr %8, align 4, !tbaa !47
  %24 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %25 = load float, ptr %24, align 8, !tbaa !56
  %26 = load float, ptr %12, align 4, !tbaa !47
  %27 = tail call fastcc float @Lighten(float noundef %22, float noundef %23, float noundef %25, float noundef %26) #14
  %28 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  %29 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %30 = load float, ptr %29, align 4, !tbaa !57
  %31 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %32 = load float, ptr %31, align 4, !tbaa !57
  %33 = tail call fastcc float @Lighten(float noundef %30, float noundef %23, float noundef %32, float noundef %26) #14
  %34 = insertelement <2 x float> poison, float %27, i64 0
  %35 = insertelement <2 x float> %34, float %33, i64 1
  %36 = fpext <2 x float> %35 to <2 x double>
  %37 = insertelement <2 x double> poison, double %20, i64 0
  %38 = shufflevector <2 x double> %37, <2 x double> poison, <2 x i32> zeroinitializer
  %39 = fmul <2 x double> %38, %36
  %40 = fptrunc <2 x double> %39 to <2 x float>
  store <2 x float> %40, ptr %28, align 8, !tbaa !40
  %41 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %42 = load float, ptr %41, align 8, !tbaa !54
  %43 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %44 = load float, ptr %43, align 8, !tbaa !54
  %45 = tail call fastcc float @Lighten(float noundef %42, float noundef %23, float noundef %44, float noundef %26) #14
  %46 = fpext float %45 to double
  %47 = fmul double %20, %46
  %48 = fptrunc double %47 to float
  %49 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  store float %48, ptr %49, align 8, !tbaa !54
  %50 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %51 = load i32, ptr %50, align 4, !tbaa !59
  %52 = icmp eq i32 %51, 12
  br i1 %52, label %53, label %132

53:                                               ; preds = %7
  %54 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %55 = load float, ptr %54, align 8, !tbaa !55
  %56 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %57 = load float, ptr %56, align 8, !tbaa !55
  %58 = tail call fastcc float @Lighten(float noundef %55, float noundef %23, float noundef %57, float noundef %26) #14
  %59 = fpext float %58 to double
  %60 = fmul double %20, %59
  br label %128

61:                                               ; preds = %4
  %62 = and i32 %2, 8
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %74, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %66 = load float, ptr %65, align 4, !tbaa !47
  %67 = fpext float %66 to double
  %68 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %69 = load float, ptr %68, align 4, !tbaa !47
  %70 = fpext float %69 to double
  %71 = tail call fastcc double @MagickMin(double noundef %67, double noundef %70) #14
  %72 = fptrunc double %71 to float
  %73 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  store float %72, ptr %73, align 4, !tbaa !47
  br label %74

74:                                               ; preds = %64, %61
  %75 = and i32 %2, 1
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %87, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %79 = load float, ptr %78, align 8, !tbaa !56
  %80 = fpext float %79 to double
  %81 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %82 = load float, ptr %81, align 8, !tbaa !56
  %83 = fpext float %82 to double
  %84 = tail call fastcc double @MagickMax(double noundef %80, double noundef %83) #14
  %85 = fptrunc double %84 to float
  %86 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  store float %85, ptr %86, align 8, !tbaa !56
  br label %87

87:                                               ; preds = %77, %74
  %88 = and i32 %2, 2
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %100, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %92 = load float, ptr %91, align 4, !tbaa !57
  %93 = fpext float %92 to double
  %94 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %95 = load float, ptr %94, align 4, !tbaa !57
  %96 = fpext float %95 to double
  %97 = tail call fastcc double @MagickMax(double noundef %93, double noundef %96) #14
  %98 = fptrunc double %97 to float
  %99 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 6
  store float %98, ptr %99, align 4, !tbaa !57
  br label %100

100:                                              ; preds = %90, %87
  %101 = and i32 %2, 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %113, label %103

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %105 = load float, ptr %104, align 8, !tbaa !54
  %106 = fpext float %105 to double
  %107 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %108 = load float, ptr %107, align 8, !tbaa !54
  %109 = fpext float %108 to double
  %110 = tail call fastcc double @MagickMax(double noundef %106, double noundef %109) #14
  %111 = fptrunc double %110 to float
  %112 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  store float %111, ptr %112, align 8, !tbaa !54
  br label %113

113:                                              ; preds = %103, %100
  %114 = and i32 %2, 32
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %132, label %116

116:                                              ; preds = %113
  %117 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %118 = load i32, ptr %117, align 4, !tbaa !59
  %119 = icmp eq i32 %118, 12
  br i1 %119, label %120, label %132

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %122 = load float, ptr %121, align 8, !tbaa !55
  %123 = fpext float %122 to double
  %124 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %125 = load float, ptr %124, align 8, !tbaa !55
  %126 = fpext float %125 to double
  %127 = tail call fastcc double @MagickMax(double noundef %123, double noundef %126) #14
  br label %128

128:                                              ; preds = %53, %120
  %129 = phi double [ %127, %120 ], [ %60, %53 ]
  %130 = fptrunc double %129 to float
  %131 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  store float %130, ptr %131, align 8, !tbaa !55
  br label %132

132:                                              ; preds = %128, %113, %116, %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @CompositeDarkenIntensity(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #9 {
  %5 = and i32 %2, 256
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %27, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %9 = load float, ptr %8, align 4, !tbaa !47
  %10 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %11 = load float, ptr %10, align 4, !tbaa !47
  %12 = tail call fastcc float @MagickPixelIntensity(ptr noundef %0) #14
  %13 = tail call fastcc float @MagickPixelIntensity(ptr noundef %1) #14
  %14 = insertelement <2 x float> poison, float %9, i64 0
  %15 = insertelement <2 x float> %14, float %11, i64 1
  %16 = fpext <2 x float> %15 to <2 x double>
  %17 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %16, <2 x double> <double 0xBEF0001000100010, double 0xBEF0001000100010>, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %18 = fptrunc <2 x double> %17 to <2 x float>
  %19 = insertelement <2 x float> poison, float %12, i64 0
  %20 = insertelement <2 x float> %19, float %13, i64 1
  %21 = fmul <2 x float> %20, %18
  %22 = extractelement <2 x float> %21, i64 0
  %23 = extractelement <2 x float> %21, i64 1
  %24 = fcmp olt float %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false), !tbaa.struct !36
  br label %74

26:                                               ; preds = %7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false), !tbaa.struct !36
  br label %74

27:                                               ; preds = %4
  %28 = tail call fastcc float @MagickPixelIntensity(ptr noundef %0) #14
  %29 = tail call fastcc float @MagickPixelIntensity(ptr noundef %1) #14
  %30 = fcmp olt float %28, %29
  %31 = and i32 %2, 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %27
  %34 = select i1 %30, ptr %0, ptr %1
  %35 = getelementptr inbounds %struct._MagickPixelPacket, ptr %34, i64 0, i32 8
  %36 = load float, ptr %35, align 4, !tbaa !47
  %37 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  store float %36, ptr %37, align 4, !tbaa !47
  br label %38

38:                                               ; preds = %33, %27
  %39 = and i32 %2, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %38
  %42 = select i1 %30, ptr %0, ptr %1
  %43 = getelementptr inbounds %struct._MagickPixelPacket, ptr %42, i64 0, i32 5
  %44 = load float, ptr %43, align 8, !tbaa !56
  %45 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  store float %44, ptr %45, align 8, !tbaa !56
  br label %46

46:                                               ; preds = %41, %38
  %47 = and i32 %2, 2
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %46
  %50 = select i1 %30, ptr %0, ptr %1
  %51 = getelementptr inbounds %struct._MagickPixelPacket, ptr %50, i64 0, i32 6
  %52 = load float, ptr %51, align 4, !tbaa !57
  %53 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 6
  store float %52, ptr %53, align 4, !tbaa !57
  br label %54

54:                                               ; preds = %49, %46
  %55 = and i32 %2, 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %54
  %58 = select i1 %30, ptr %0, ptr %1
  %59 = getelementptr inbounds %struct._MagickPixelPacket, ptr %58, i64 0, i32 7
  %60 = load float, ptr %59, align 8, !tbaa !54
  %61 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  store float %60, ptr %61, align 8, !tbaa !54
  br label %62

62:                                               ; preds = %57, %54
  %63 = and i32 %2, 32
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %74, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %67 = load i32, ptr %66, align 4, !tbaa !59
  %68 = icmp eq i32 %67, 12
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = select i1 %30, ptr %0, ptr %1
  %71 = getelementptr inbounds %struct._MagickPixelPacket, ptr %70, i64 0, i32 9
  %72 = load float, ptr %71, align 8, !tbaa !55
  %73 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  store float %72, ptr %73, align 8, !tbaa !55
  br label %74

74:                                               ; preds = %62, %65, %69, %25, %26
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @CompositeLightenIntensity(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #9 {
  %5 = and i32 %2, 256
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %27, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %9 = load float, ptr %8, align 4, !tbaa !47
  %10 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %11 = load float, ptr %10, align 4, !tbaa !47
  %12 = tail call fastcc float @MagickPixelIntensity(ptr noundef %0) #14
  %13 = tail call fastcc float @MagickPixelIntensity(ptr noundef %1) #14
  %14 = insertelement <2 x float> poison, float %9, i64 0
  %15 = insertelement <2 x float> %14, float %11, i64 1
  %16 = fpext <2 x float> %15 to <2 x double>
  %17 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %16, <2 x double> <double 0xBEF0001000100010, double 0xBEF0001000100010>, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %18 = fptrunc <2 x double> %17 to <2 x float>
  %19 = insertelement <2 x float> poison, float %12, i64 0
  %20 = insertelement <2 x float> %19, float %13, i64 1
  %21 = fmul <2 x float> %20, %18
  %22 = extractelement <2 x float> %21, i64 0
  %23 = extractelement <2 x float> %21, i64 1
  %24 = fcmp ogt float %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false), !tbaa.struct !36
  br label %74

26:                                               ; preds = %7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false), !tbaa.struct !36
  br label %74

27:                                               ; preds = %4
  %28 = tail call fastcc float @MagickPixelIntensity(ptr noundef %0) #14
  %29 = tail call fastcc float @MagickPixelIntensity(ptr noundef %1) #14
  %30 = fcmp ogt float %28, %29
  %31 = and i32 %2, 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %27
  %34 = select i1 %30, ptr %0, ptr %1
  %35 = getelementptr inbounds %struct._MagickPixelPacket, ptr %34, i64 0, i32 8
  %36 = load float, ptr %35, align 4, !tbaa !47
  %37 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  store float %36, ptr %37, align 4, !tbaa !47
  br label %38

38:                                               ; preds = %33, %27
  %39 = and i32 %2, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %38
  %42 = select i1 %30, ptr %0, ptr %1
  %43 = getelementptr inbounds %struct._MagickPixelPacket, ptr %42, i64 0, i32 5
  %44 = load float, ptr %43, align 8, !tbaa !56
  %45 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  store float %44, ptr %45, align 8, !tbaa !56
  br label %46

46:                                               ; preds = %41, %38
  %47 = and i32 %2, 2
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %46
  %50 = select i1 %30, ptr %0, ptr %1
  %51 = getelementptr inbounds %struct._MagickPixelPacket, ptr %50, i64 0, i32 6
  %52 = load float, ptr %51, align 4, !tbaa !57
  %53 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 6
  store float %52, ptr %53, align 4, !tbaa !57
  br label %54

54:                                               ; preds = %49, %46
  %55 = and i32 %2, 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %54
  %58 = select i1 %30, ptr %0, ptr %1
  %59 = getelementptr inbounds %struct._MagickPixelPacket, ptr %58, i64 0, i32 7
  %60 = load float, ptr %59, align 8, !tbaa !54
  %61 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  store float %60, ptr %61, align 8, !tbaa !54
  br label %62

62:                                               ; preds = %57, %54
  %63 = and i32 %2, 32
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %74, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %67 = load i32, ptr %66, align 4, !tbaa !59
  %68 = icmp eq i32 %67, 12
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = select i1 %30, ptr %0, ptr %1
  %71 = getelementptr inbounds %struct._MagickPixelPacket, ptr %70, i64 0, i32 9
  %72 = load float, ptr %71, align 8, !tbaa !55
  %73 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  store float %72, ptr %73, align 8, !tbaa !55
  br label %74

74:                                               ; preds = %62, %65, %69, %25, %26
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @CompositeMathematics(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef writeonly %4) unnamed_addr #8 {
  %6 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %7 = load float, ptr %6, align 4, !tbaa !47
  %8 = fpext float %7 to double
  %9 = tail call double @llvm.fmuladd.f64(double %8, double 0xBEF0001000100010, double 1.000000e+00)
  %10 = fptrunc double %9 to float
  %11 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %12 = load float, ptr %11, align 4, !tbaa !47
  %13 = fpext float %12 to double
  %14 = tail call double @llvm.fmuladd.f64(double %13, double 0xBEF0001000100010, double 1.000000e+00)
  %15 = fptrunc double %14 to float
  %16 = and i32 %2, 256
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %105, label %18

18:                                               ; preds = %5
  %19 = fadd float %10, %15
  %20 = fneg float %10
  %21 = tail call float @llvm.fmuladd.f32(float %20, float %15, float %19)
  %22 = tail call fastcc float @RoundToUnity(float noundef %21) #14
  %23 = fpext float %22 to double
  %24 = fsub double 1.000000e+00, %23
  %25 = fmul double %24, 6.553500e+04
  %26 = fptrunc double %25 to float
  %27 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 8
  store float %26, ptr %27, align 4, !tbaa !47
  %28 = tail call double @llvm.fabs.f64(double %23)
  %29 = fcmp olt double %28, 1.000000e-15
  %30 = fdiv double 6.553500e+04, %23
  %31 = select i1 %29, double 0x440C6BD8BA3ED9CB, double %30
  %32 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %33 = load float, ptr %32, align 8, !tbaa !56
  %34 = fpext float %33 to double
  %35 = fmul double %34, 0x3EF0001000100010
  %36 = fpext float %10 to double
  %37 = fmul double %35, %36
  %38 = fptrunc double %37 to float
  %39 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %40 = load float, ptr %39, align 8, !tbaa !56
  %41 = fpext float %40 to double
  %42 = fmul double %41, 0x3EF0001000100010
  %43 = fpext float %15 to double
  %44 = fmul double %42, %43
  %45 = fptrunc double %44 to float
  %46 = tail call fastcc float @Mathematics(float noundef %38, float noundef %10, float noundef %45, float noundef %15, ptr noundef %3) #14
  %47 = fpext float %46 to double
  %48 = fmul double %31, %47
  %49 = fptrunc double %48 to float
  %50 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 5
  store float %49, ptr %50, align 8, !tbaa !56
  %51 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %52 = load float, ptr %51, align 4, !tbaa !57
  %53 = fpext float %52 to double
  %54 = fmul double %53, 0x3EF0001000100010
  %55 = fmul double %54, %36
  %56 = fptrunc double %55 to float
  %57 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %58 = load float, ptr %57, align 4, !tbaa !57
  %59 = fpext float %58 to double
  %60 = fmul double %59, 0x3EF0001000100010
  %61 = fmul double %60, %43
  %62 = fptrunc double %61 to float
  %63 = tail call fastcc float @Mathematics(float noundef %56, float noundef %10, float noundef %62, float noundef %15, ptr noundef %3) #14
  %64 = fpext float %63 to double
  %65 = fmul double %31, %64
  %66 = fptrunc double %65 to float
  %67 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 6
  store float %66, ptr %67, align 4, !tbaa !57
  %68 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %69 = load float, ptr %68, align 8, !tbaa !54
  %70 = fpext float %69 to double
  %71 = fmul double %70, 0x3EF0001000100010
  %72 = fmul double %71, %36
  %73 = fptrunc double %72 to float
  %74 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %75 = load float, ptr %74, align 8, !tbaa !54
  %76 = fpext float %75 to double
  %77 = fmul double %76, 0x3EF0001000100010
  %78 = fmul double %77, %43
  %79 = fptrunc double %78 to float
  %80 = tail call fastcc float @Mathematics(float noundef %73, float noundef %10, float noundef %79, float noundef %15, ptr noundef %3) #14
  %81 = fpext float %80 to double
  %82 = fmul double %31, %81
  %83 = fptrunc double %82 to float
  %84 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 7
  store float %83, ptr %84, align 8, !tbaa !54
  %85 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %86 = load i32, ptr %85, align 4, !tbaa !59
  %87 = icmp eq i32 %86, 12
  br i1 %87, label %88, label %189

88:                                               ; preds = %18
  %89 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %90 = load float, ptr %89, align 8, !tbaa !55
  %91 = fpext float %90 to double
  %92 = fmul double %91, 0x3EF0001000100010
  %93 = fmul double %92, %36
  %94 = fptrunc double %93 to float
  %95 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %96 = load float, ptr %95, align 8, !tbaa !55
  %97 = fpext float %96 to double
  %98 = fmul double %97, 0x3EF0001000100010
  %99 = fmul double %98, %43
  %100 = fptrunc double %99 to float
  %101 = tail call fastcc float @Mathematics(float noundef %94, float noundef %10, float noundef %100, float noundef %15, ptr noundef %3) #14
  %102 = fpext float %101 to double
  %103 = fmul double %31, %102
  %104 = fptrunc double %103 to float
  br label %186

105:                                              ; preds = %5
  %106 = and i32 %2, 8
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %115, label %108

108:                                              ; preds = %105
  %109 = tail call fastcc float @Mathematics(float noundef %10, float noundef 1.000000e+00, float noundef %15, float noundef 1.000000e+00, ptr noundef %3) #14
  %110 = fpext float %109 to double
  %111 = fsub double 1.000000e+00, %110
  %112 = fmul double %111, 6.553500e+04
  %113 = fptrunc double %112 to float
  %114 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 8
  store float %113, ptr %114, align 4, !tbaa !47
  br label %115

115:                                              ; preds = %108, %105
  %116 = and i32 %2, 1
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %132, label %118

118:                                              ; preds = %115
  %119 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %120 = load float, ptr %119, align 8, !tbaa !56
  %121 = fpext float %120 to double
  %122 = fmul double %121, 0x3EF0001000100010
  %123 = fptrunc double %122 to float
  %124 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %125 = load float, ptr %124, align 8, !tbaa !56
  %126 = fpext float %125 to double
  %127 = fmul double %126, 0x3EF0001000100010
  %128 = fptrunc double %127 to float
  %129 = tail call fastcc float @Mathematics(float noundef %123, float noundef 1.000000e+00, float noundef %128, float noundef 1.000000e+00, ptr noundef %3) #14
  %130 = fmul float %129, 6.553500e+04
  %131 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 5
  store float %130, ptr %131, align 8, !tbaa !56
  br label %132

132:                                              ; preds = %118, %115
  %133 = and i32 %2, 2
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %149, label %135

135:                                              ; preds = %132
  %136 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %137 = load float, ptr %136, align 4, !tbaa !57
  %138 = fpext float %137 to double
  %139 = fmul double %138, 0x3EF0001000100010
  %140 = fptrunc double %139 to float
  %141 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %142 = load float, ptr %141, align 4, !tbaa !57
  %143 = fpext float %142 to double
  %144 = fmul double %143, 0x3EF0001000100010
  %145 = fptrunc double %144 to float
  %146 = tail call fastcc float @Mathematics(float noundef %140, float noundef 1.000000e+00, float noundef %145, float noundef 1.000000e+00, ptr noundef %3) #14
  %147 = fmul float %146, 6.553500e+04
  %148 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 6
  store float %147, ptr %148, align 4, !tbaa !57
  br label %149

149:                                              ; preds = %135, %132
  %150 = and i32 %2, 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %166, label %152

152:                                              ; preds = %149
  %153 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %154 = load float, ptr %153, align 8, !tbaa !54
  %155 = fpext float %154 to double
  %156 = fmul double %155, 0x3EF0001000100010
  %157 = fptrunc double %156 to float
  %158 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %159 = load float, ptr %158, align 8, !tbaa !54
  %160 = fpext float %159 to double
  %161 = fmul double %160, 0x3EF0001000100010
  %162 = fptrunc double %161 to float
  %163 = tail call fastcc float @Mathematics(float noundef %157, float noundef 1.000000e+00, float noundef %162, float noundef 1.000000e+00, ptr noundef %3) #14
  %164 = fmul float %163, 6.553500e+04
  %165 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 7
  store float %164, ptr %165, align 8, !tbaa !54
  br label %166

166:                                              ; preds = %152, %149
  %167 = and i32 %2, 32
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %189, label %169

169:                                              ; preds = %166
  %170 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %171 = load i32, ptr %170, align 4, !tbaa !59
  %172 = icmp eq i32 %171, 12
  br i1 %172, label %173, label %189

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %175 = load float, ptr %174, align 8, !tbaa !55
  %176 = fpext float %175 to double
  %177 = fmul double %176, 0x3EF0001000100010
  %178 = fptrunc double %177 to float
  %179 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %180 = load float, ptr %179, align 8, !tbaa !55
  %181 = fpext float %180 to double
  %182 = fmul double %181, 0x3EF0001000100010
  %183 = fptrunc double %182 to float
  %184 = tail call fastcc float @Mathematics(float noundef %178, float noundef 1.000000e+00, float noundef %183, float noundef 1.000000e+00, ptr noundef %3) #14
  %185 = fmul float %184, 6.553500e+04
  br label %186

186:                                              ; preds = %88, %173
  %187 = phi float [ %185, %173 ], [ %104, %88 ]
  %188 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 9
  store float %187, ptr %188, align 8, !tbaa !55
  br label %189

189:                                              ; preds = %186, %166, %169, %18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @CompositeColorDodge(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #8 {
  %4 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %5 = load float, ptr %4, align 4, !tbaa !47
  %6 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %7 = load float, ptr %6, align 4, !tbaa !47
  %8 = insertelement <2 x float> poison, float %5, i64 0
  %9 = insertelement <2 x float> %8, float %7, i64 1
  %10 = fpext <2 x float> %9 to <2 x double>
  %11 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %10, <2 x double> <double 0xBEF0001000100010, double 0xBEF0001000100010>, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %12 = fptrunc <2 x double> %11 to <2 x float>
  %13 = extractelement <2 x float> %12, i64 0
  %14 = extractelement <2 x float> %12, i64 1
  %15 = fadd float %13, %14
  %16 = fneg float %13
  %17 = tail call float @llvm.fmuladd.f32(float %16, float %14, float %15)
  %18 = tail call fastcc float @RoundToUnity(float noundef %17) #14
  %19 = fpext float %18 to double
  %20 = fsub double 1.000000e+00, %19
  %21 = fmul double %20, 6.553500e+04
  %22 = fptrunc double %21 to float
  %23 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 8
  store float %22, ptr %23, align 4, !tbaa !47
  %24 = tail call double @llvm.fabs.f64(double %19)
  %25 = fcmp olt double %24, 1.000000e-15
  %26 = fdiv double 6.553500e+04, %19
  %27 = select i1 %25, double 0x440C6BD8BA3ED9CB, double %26
  %28 = fptrunc double %27 to float
  %29 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %30 = load float, ptr %29, align 8, !tbaa !56
  %31 = fpext float %30 to double
  %32 = fmul double %31, 0x3EF0001000100010
  %33 = fpext float %13 to double
  %34 = fmul double %32, %33
  %35 = fptrunc double %34 to float
  %36 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %37 = load float, ptr %36, align 8, !tbaa !56
  %38 = fpext float %37 to double
  %39 = fmul double %38, 0x3EF0001000100010
  %40 = fpext float %14 to double
  %41 = fmul double %39, %40
  %42 = fptrunc double %41 to float
  %43 = tail call fastcc float @ColorDodge(float noundef %35, float noundef %13, float noundef %42, float noundef %14) #14
  %44 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 5
  %45 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %46 = load float, ptr %45, align 4, !tbaa !57
  %47 = fpext float %46 to double
  %48 = fmul double %47, 0x3EF0001000100010
  %49 = fmul double %48, %33
  %50 = fptrunc double %49 to float
  %51 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %52 = load float, ptr %51, align 4, !tbaa !57
  %53 = fpext float %52 to double
  %54 = fmul double %53, 0x3EF0001000100010
  %55 = fmul double %54, %40
  %56 = fptrunc double %55 to float
  %57 = tail call fastcc float @ColorDodge(float noundef %50, float noundef %13, float noundef %56, float noundef %14) #14
  %58 = insertelement <2 x float> poison, float %43, i64 0
  %59 = insertelement <2 x float> %58, float %57, i64 1
  %60 = insertelement <2 x float> poison, float %28, i64 0
  %61 = shufflevector <2 x float> %60, <2 x float> poison, <2 x i32> zeroinitializer
  %62 = fmul <2 x float> %59, %61
  store <2 x float> %62, ptr %44, align 8, !tbaa !40
  %63 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %64 = load float, ptr %63, align 8, !tbaa !54
  %65 = fpext float %64 to double
  %66 = fmul double %65, 0x3EF0001000100010
  %67 = fmul double %66, %33
  %68 = fptrunc double %67 to float
  %69 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %70 = load float, ptr %69, align 8, !tbaa !54
  %71 = fpext float %70 to double
  %72 = fmul double %71, 0x3EF0001000100010
  %73 = fmul double %72, %40
  %74 = fptrunc double %73 to float
  %75 = tail call fastcc float @ColorDodge(float noundef %68, float noundef %13, float noundef %74, float noundef %14) #14
  %76 = fmul float %75, %28
  %77 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 7
  store float %76, ptr %77, align 8, !tbaa !54
  %78 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %79 = load i32, ptr %78, align 4, !tbaa !59
  %80 = icmp eq i32 %79, 12
  br i1 %80, label %81, label %97

81:                                               ; preds = %3
  %82 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %83 = load float, ptr %82, align 8, !tbaa !55
  %84 = fpext float %83 to double
  %85 = fmul double %84, 0x3EF0001000100010
  %86 = fmul double %85, %33
  %87 = fptrunc double %86 to float
  %88 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %89 = load float, ptr %88, align 8, !tbaa !55
  %90 = fpext float %89 to double
  %91 = fmul double %90, 0x3EF0001000100010
  %92 = fmul double %91, %40
  %93 = fptrunc double %92 to float
  %94 = tail call fastcc float @ColorDodge(float noundef %87, float noundef %13, float noundef %93, float noundef %14) #14
  %95 = fmul float %94, %28
  %96 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 9
  store float %95, ptr %96, align 8, !tbaa !55
  br label %97

97:                                               ; preds = %81, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @CompositeColorBurn(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #8 {
  %4 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %5 = load float, ptr %4, align 4, !tbaa !47
  %6 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %7 = load float, ptr %6, align 4, !tbaa !47
  %8 = insertelement <2 x float> poison, float %5, i64 0
  %9 = insertelement <2 x float> %8, float %7, i64 1
  %10 = fpext <2 x float> %9 to <2 x double>
  %11 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %10, <2 x double> <double 0xBEF0001000100010, double 0xBEF0001000100010>, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %12 = fptrunc <2 x double> %11 to <2 x float>
  %13 = extractelement <2 x float> %12, i64 0
  %14 = extractelement <2 x float> %12, i64 1
  %15 = fadd float %13, %14
  %16 = fneg float %13
  %17 = tail call float @llvm.fmuladd.f32(float %16, float %14, float %15)
  %18 = tail call fastcc float @RoundToUnity(float noundef %17) #14
  %19 = fpext float %18 to double
  %20 = fsub double 1.000000e+00, %19
  %21 = fmul double %20, 6.553500e+04
  %22 = fptrunc double %21 to float
  %23 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 8
  store float %22, ptr %23, align 4, !tbaa !47
  %24 = tail call double @llvm.fabs.f64(double %19)
  %25 = fcmp olt double %24, 1.000000e-15
  %26 = fdiv double 6.553500e+04, %19
  %27 = select i1 %25, double 0x440C6BD8BA3ED9CB, double %26
  %28 = fptrunc double %27 to float
  %29 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %30 = load float, ptr %29, align 8, !tbaa !56
  %31 = fpext float %30 to double
  %32 = fmul double %31, 0x3EF0001000100010
  %33 = fpext float %13 to double
  %34 = fmul double %32, %33
  %35 = fptrunc double %34 to float
  %36 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %37 = load float, ptr %36, align 8, !tbaa !56
  %38 = fpext float %37 to double
  %39 = fmul double %38, 0x3EF0001000100010
  %40 = fpext float %14 to double
  %41 = fmul double %39, %40
  %42 = fptrunc double %41 to float
  %43 = tail call fastcc float @ColorBurn(float noundef %35, float noundef %13, float noundef %42, float noundef %14) #14
  %44 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 5
  %45 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %46 = load float, ptr %45, align 4, !tbaa !57
  %47 = fpext float %46 to double
  %48 = fmul double %47, 0x3EF0001000100010
  %49 = fmul double %48, %33
  %50 = fptrunc double %49 to float
  %51 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %52 = load float, ptr %51, align 4, !tbaa !57
  %53 = fpext float %52 to double
  %54 = fmul double %53, 0x3EF0001000100010
  %55 = fmul double %54, %40
  %56 = fptrunc double %55 to float
  %57 = tail call fastcc float @ColorBurn(float noundef %50, float noundef %13, float noundef %56, float noundef %14) #14
  %58 = insertelement <2 x float> poison, float %43, i64 0
  %59 = insertelement <2 x float> %58, float %57, i64 1
  %60 = insertelement <2 x float> poison, float %28, i64 0
  %61 = shufflevector <2 x float> %60, <2 x float> poison, <2 x i32> zeroinitializer
  %62 = fmul <2 x float> %59, %61
  store <2 x float> %62, ptr %44, align 8, !tbaa !40
  %63 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %64 = load float, ptr %63, align 8, !tbaa !54
  %65 = fpext float %64 to double
  %66 = fmul double %65, 0x3EF0001000100010
  %67 = fmul double %66, %33
  %68 = fptrunc double %67 to float
  %69 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %70 = load float, ptr %69, align 8, !tbaa !54
  %71 = fpext float %70 to double
  %72 = fmul double %71, 0x3EF0001000100010
  %73 = fmul double %72, %40
  %74 = fptrunc double %73 to float
  %75 = tail call fastcc float @ColorBurn(float noundef %68, float noundef %13, float noundef %74, float noundef %14) #14
  %76 = fmul float %75, %28
  %77 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 7
  store float %76, ptr %77, align 8, !tbaa !54
  %78 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %79 = load i32, ptr %78, align 4, !tbaa !59
  %80 = icmp eq i32 %79, 12
  br i1 %80, label %81, label %97

81:                                               ; preds = %3
  %82 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %83 = load float, ptr %82, align 8, !tbaa !55
  %84 = fpext float %83 to double
  %85 = fmul double %84, 0x3EF0001000100010
  %86 = fmul double %85, %33
  %87 = fptrunc double %86 to float
  %88 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %89 = load float, ptr %88, align 8, !tbaa !55
  %90 = fpext float %89 to double
  %91 = fmul double %90, 0x3EF0001000100010
  %92 = fmul double %91, %40
  %93 = fptrunc double %92 to float
  %94 = tail call fastcc float @ColorBurn(float noundef %87, float noundef %13, float noundef %93, float noundef %14) #14
  %95 = fmul float %94, %28
  %96 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 9
  store float %95, ptr %96, align 8, !tbaa !55
  br label %97

97:                                               ; preds = %81, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @CompositeLinearDodge(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #8 {
  %4 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %5 = load float, ptr %4, align 4, !tbaa !47
  %6 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %7 = load float, ptr %6, align 4, !tbaa !47
  %8 = insertelement <2 x float> poison, float %5, i64 0
  %9 = insertelement <2 x float> %8, float %7, i64 1
  %10 = fpext <2 x float> %9 to <2 x double>
  %11 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %10, <2 x double> <double 0xBEF0001000100010, double 0xBEF0001000100010>, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %12 = fptrunc <2 x double> %11 to <2 x float>
  %13 = extractelement <2 x float> %12, i64 0
  %14 = extractelement <2 x float> %12, i64 1
  %15 = fadd float %13, %14
  %16 = fneg float %13
  %17 = tail call float @llvm.fmuladd.f32(float %16, float %14, float %15)
  %18 = tail call fastcc float @RoundToUnity(float noundef %17) #14
  %19 = fpext float %18 to double
  %20 = fsub double 1.000000e+00, %19
  %21 = tail call fastcc double @PerceptibleReciprocal(double noundef %19) #14
  %22 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %23 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %24 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 5
  %25 = load <2 x float>, ptr %22, align 8, !tbaa !40
  %26 = load <2 x float>, ptr %23, align 8, !tbaa !40
  %27 = shufflevector <2 x float> %12, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %28 = fmul <2 x float> %26, %27
  %29 = shufflevector <2 x float> %12, <2 x float> poison, <2 x i32> zeroinitializer
  %30 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %25, <2 x float> %29, <2 x float> %28)
  %31 = fpext <2 x float> %30 to <2 x double>
  %32 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %33 = load float, ptr %32, align 8, !tbaa !54
  %34 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %35 = load float, ptr %34, align 8, !tbaa !54
  %36 = fmul float %35, %14
  %37 = tail call float @llvm.fmuladd.f32(float %33, float %13, float %36)
  %38 = fpext float %37 to double
  %39 = insertelement <4 x double> poison, double %21, i64 0
  %40 = insertelement <4 x double> %39, double %20, i64 1
  %41 = shufflevector <4 x double> %40, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %42 = shufflevector <2 x double> %31, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %43 = insertelement <4 x double> %42, double 6.553500e+04, i64 3
  %44 = insertelement <4 x double> %43, double %38, i64 2
  %45 = fmul <4 x double> %41, %44
  %46 = fptrunc <4 x double> %45 to <4 x float>
  store <4 x float> %46, ptr %24, align 8, !tbaa !40
  %47 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %48 = load i32, ptr %47, align 4, !tbaa !59
  %49 = icmp eq i32 %48, 12
  br i1 %49, label %50, label %61

50:                                               ; preds = %3
  %51 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %52 = load float, ptr %51, align 8, !tbaa !55
  %53 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %54 = load float, ptr %53, align 8, !tbaa !55
  %55 = fmul float %54, %14
  %56 = tail call float @llvm.fmuladd.f32(float %52, float %13, float %55)
  %57 = fpext float %56 to double
  %58 = fmul double %21, %57
  %59 = fptrunc double %58 to float
  %60 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 9
  store float %59, ptr %60, align 8, !tbaa !55
  br label %61

61:                                               ; preds = %50, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @CompositeLinearBurn(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #8 {
  %4 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %5 = load float, ptr %4, align 4, !tbaa !47
  %6 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %7 = load float, ptr %6, align 4, !tbaa !47
  %8 = insertelement <2 x float> poison, float %5, i64 0
  %9 = insertelement <2 x float> %8, float %7, i64 1
  %10 = fpext <2 x float> %9 to <2 x double>
  %11 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %10, <2 x double> <double 0xBEF0001000100010, double 0xBEF0001000100010>, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %12 = fptrunc <2 x double> %11 to <2 x float>
  %13 = extractelement <2 x float> %12, i64 0
  %14 = extractelement <2 x float> %12, i64 1
  %15 = fadd float %13, %14
  %16 = fneg float %13
  %17 = tail call float @llvm.fmuladd.f32(float %16, float %14, float %15)
  %18 = tail call fastcc float @RoundToUnity(float noundef %17) #14
  %19 = fpext float %18 to double
  %20 = fsub double 1.000000e+00, %19
  %21 = fmul double %20, 6.553500e+04
  %22 = fptrunc double %21 to float
  %23 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 8
  store float %22, ptr %23, align 4, !tbaa !47
  %24 = tail call double @llvm.fabs.f64(double %19)
  %25 = fcmp olt double %24, 1.000000e-15
  %26 = fdiv double 6.553500e+04, %19
  %27 = select i1 %25, double 0x440C6BD8BA3ED9CB, double %26
  %28 = fptrunc double %27 to float
  %29 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %30 = load float, ptr %29, align 8, !tbaa !56
  %31 = fpext float %30 to double
  %32 = fmul double %31, 0x3EF0001000100010
  %33 = fpext float %13 to double
  %34 = fmul double %32, %33
  %35 = fptrunc double %34 to float
  %36 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %37 = load float, ptr %36, align 8, !tbaa !56
  %38 = fpext float %37 to double
  %39 = fmul double %38, 0x3EF0001000100010
  %40 = fpext float %14 to double
  %41 = fmul double %39, %40
  %42 = fptrunc double %41 to float
  %43 = tail call fastcc float @LinearBurn(float noundef %35, float noundef %13, float noundef %42, float noundef %14) #14
  %44 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 5
  %45 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %46 = load float, ptr %45, align 4, !tbaa !57
  %47 = fpext float %46 to double
  %48 = fmul double %47, 0x3EF0001000100010
  %49 = fmul double %48, %33
  %50 = fptrunc double %49 to float
  %51 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %52 = load float, ptr %51, align 4, !tbaa !57
  %53 = fpext float %52 to double
  %54 = fmul double %53, 0x3EF0001000100010
  %55 = fmul double %54, %40
  %56 = fptrunc double %55 to float
  %57 = tail call fastcc float @LinearBurn(float noundef %50, float noundef %13, float noundef %56, float noundef %14) #14
  %58 = insertelement <2 x float> poison, float %43, i64 0
  %59 = insertelement <2 x float> %58, float %57, i64 1
  %60 = insertelement <2 x float> poison, float %28, i64 0
  %61 = shufflevector <2 x float> %60, <2 x float> poison, <2 x i32> zeroinitializer
  %62 = fmul <2 x float> %59, %61
  store <2 x float> %62, ptr %44, align 8, !tbaa !40
  %63 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %64 = load float, ptr %63, align 8, !tbaa !54
  %65 = fpext float %64 to double
  %66 = fmul double %65, 0x3EF0001000100010
  %67 = fmul double %66, %33
  %68 = fptrunc double %67 to float
  %69 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %70 = load float, ptr %69, align 8, !tbaa !54
  %71 = fpext float %70 to double
  %72 = fmul double %71, 0x3EF0001000100010
  %73 = fmul double %72, %40
  %74 = fptrunc double %73 to float
  %75 = tail call fastcc float @LinearBurn(float noundef %68, float noundef %13, float noundef %74, float noundef %14) #14
  %76 = fmul float %75, %28
  %77 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 7
  store float %76, ptr %77, align 8, !tbaa !54
  %78 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %79 = load i32, ptr %78, align 4, !tbaa !59
  %80 = icmp eq i32 %79, 12
  br i1 %80, label %81, label %97

81:                                               ; preds = %3
  %82 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %83 = load float, ptr %82, align 8, !tbaa !55
  %84 = fpext float %83 to double
  %85 = fmul double %84, 0x3EF0001000100010
  %86 = fmul double %85, %33
  %87 = fptrunc double %86 to float
  %88 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %89 = load float, ptr %88, align 8, !tbaa !55
  %90 = fpext float %89 to double
  %91 = fmul double %90, 0x3EF0001000100010
  %92 = fmul double %91, %40
  %93 = fptrunc double %92 to float
  %94 = tail call fastcc float @LinearBurn(float noundef %87, float noundef %13, float noundef %93, float noundef %14) #14
  %95 = fmul float %94, %28
  %96 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 9
  store float %95, ptr %96, align 8, !tbaa !55
  br label %97

97:                                               ; preds = %81, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @CompositeHardLight(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #8 {
  %4 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %5 = load float, ptr %4, align 4, !tbaa !47
  %6 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %7 = load float, ptr %6, align 4, !tbaa !47
  %8 = insertelement <2 x float> poison, float %5, i64 0
  %9 = insertelement <2 x float> %8, float %7, i64 1
  %10 = fpext <2 x float> %9 to <2 x double>
  %11 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %10, <2 x double> <double 0xBEF0001000100010, double 0xBEF0001000100010>, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %12 = fptrunc <2 x double> %11 to <2 x float>
  %13 = extractelement <2 x float> %12, i64 0
  %14 = extractelement <2 x float> %12, i64 1
  %15 = fadd float %13, %14
  %16 = fneg float %13
  %17 = tail call float @llvm.fmuladd.f32(float %16, float %14, float %15)
  %18 = tail call fastcc float @RoundToUnity(float noundef %17) #14
  %19 = fpext float %18 to double
  %20 = fsub double 1.000000e+00, %19
  %21 = fmul double %20, 6.553500e+04
  %22 = fptrunc double %21 to float
  %23 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 8
  store float %22, ptr %23, align 4, !tbaa !47
  %24 = tail call double @llvm.fabs.f64(double %19)
  %25 = fcmp olt double %24, 1.000000e-15
  %26 = fdiv double 6.553500e+04, %19
  %27 = select i1 %25, double 0x440C6BD8BA3ED9CB, double %26
  %28 = fptrunc double %27 to float
  %29 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %30 = load float, ptr %29, align 8, !tbaa !56
  %31 = fpext float %30 to double
  %32 = fmul double %31, 0x3EF0001000100010
  %33 = fpext float %13 to double
  %34 = fmul double %32, %33
  %35 = fptrunc double %34 to float
  %36 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %37 = load float, ptr %36, align 8, !tbaa !56
  %38 = fpext float %37 to double
  %39 = fmul double %38, 0x3EF0001000100010
  %40 = fpext float %14 to double
  %41 = fmul double %39, %40
  %42 = fptrunc double %41 to float
  %43 = tail call fastcc float @HardLight(float noundef %35, float noundef %13, float noundef %42, float noundef %14) #14
  %44 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 5
  %45 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %46 = load float, ptr %45, align 4, !tbaa !57
  %47 = fpext float %46 to double
  %48 = fmul double %47, 0x3EF0001000100010
  %49 = fmul double %48, %33
  %50 = fptrunc double %49 to float
  %51 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %52 = load float, ptr %51, align 4, !tbaa !57
  %53 = fpext float %52 to double
  %54 = fmul double %53, 0x3EF0001000100010
  %55 = fmul double %54, %40
  %56 = fptrunc double %55 to float
  %57 = tail call fastcc float @HardLight(float noundef %50, float noundef %13, float noundef %56, float noundef %14) #14
  %58 = insertelement <2 x float> poison, float %43, i64 0
  %59 = insertelement <2 x float> %58, float %57, i64 1
  %60 = insertelement <2 x float> poison, float %28, i64 0
  %61 = shufflevector <2 x float> %60, <2 x float> poison, <2 x i32> zeroinitializer
  %62 = fmul <2 x float> %59, %61
  store <2 x float> %62, ptr %44, align 8, !tbaa !40
  %63 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %64 = load float, ptr %63, align 8, !tbaa !54
  %65 = fpext float %64 to double
  %66 = fmul double %65, 0x3EF0001000100010
  %67 = fmul double %66, %33
  %68 = fptrunc double %67 to float
  %69 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %70 = load float, ptr %69, align 8, !tbaa !54
  %71 = fpext float %70 to double
  %72 = fmul double %71, 0x3EF0001000100010
  %73 = fmul double %72, %40
  %74 = fptrunc double %73 to float
  %75 = tail call fastcc float @HardLight(float noundef %68, float noundef %13, float noundef %74, float noundef %14) #14
  %76 = fmul float %75, %28
  %77 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 7
  store float %76, ptr %77, align 8, !tbaa !54
  %78 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %79 = load i32, ptr %78, align 4, !tbaa !59
  %80 = icmp eq i32 %79, 12
  br i1 %80, label %81, label %97

81:                                               ; preds = %3
  %82 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %83 = load float, ptr %82, align 8, !tbaa !55
  %84 = fpext float %83 to double
  %85 = fmul double %84, 0x3EF0001000100010
  %86 = fmul double %85, %33
  %87 = fptrunc double %86 to float
  %88 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %89 = load float, ptr %88, align 8, !tbaa !55
  %90 = fpext float %89 to double
  %91 = fmul double %90, 0x3EF0001000100010
  %92 = fmul double %91, %40
  %93 = fptrunc double %92 to float
  %94 = tail call fastcc float @HardLight(float noundef %87, float noundef %13, float noundef %93, float noundef %14) #14
  %95 = fmul float %94, %28
  %96 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 9
  store float %95, ptr %96, align 8, !tbaa !55
  br label %97

97:                                               ; preds = %81, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @CompositeSoftLight(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #10 {
  %4 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %5 = load float, ptr %4, align 4, !tbaa !47
  %6 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %7 = load float, ptr %6, align 4, !tbaa !47
  %8 = insertelement <2 x float> poison, float %5, i64 0
  %9 = insertelement <2 x float> %8, float %7, i64 1
  %10 = fpext <2 x float> %9 to <2 x double>
  %11 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %10, <2 x double> <double 0xBEF0001000100010, double 0xBEF0001000100010>, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %12 = fptrunc <2 x double> %11 to <2 x float>
  %13 = extractelement <2 x float> %12, i64 0
  %14 = extractelement <2 x float> %12, i64 1
  %15 = fadd float %13, %14
  %16 = fneg float %13
  %17 = tail call float @llvm.fmuladd.f32(float %16, float %14, float %15)
  %18 = tail call fastcc float @RoundToUnity(float noundef %17) #14
  %19 = fpext float %18 to double
  %20 = fsub double 1.000000e+00, %19
  %21 = fmul double %20, 6.553500e+04
  %22 = fptrunc double %21 to float
  %23 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 8
  store float %22, ptr %23, align 4, !tbaa !47
  %24 = tail call double @llvm.fabs.f64(double %19)
  %25 = fcmp olt double %24, 1.000000e-15
  %26 = fdiv double 6.553500e+04, %19
  %27 = select i1 %25, double 0x440C6BD8BA3ED9CB, double %26
  %28 = fptrunc double %27 to float
  %29 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %30 = load float, ptr %29, align 8, !tbaa !56
  %31 = fpext float %30 to double
  %32 = fmul double %31, 0x3EF0001000100010
  %33 = fpext float %13 to double
  %34 = fmul double %32, %33
  %35 = fptrunc double %34 to float
  %36 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %37 = load float, ptr %36, align 8, !tbaa !56
  %38 = fpext float %37 to double
  %39 = fmul double %38, 0x3EF0001000100010
  %40 = fpext float %14 to double
  %41 = fmul double %39, %40
  %42 = fptrunc double %41 to float
  %43 = tail call fastcc float @SoftLight(float noundef %35, float noundef %13, float noundef %42, float noundef %14) #14
  %44 = fmul float %43, %28
  %45 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 5
  store float %44, ptr %45, align 8, !tbaa !56
  %46 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %47 = load float, ptr %46, align 4, !tbaa !57
  %48 = fpext float %47 to double
  %49 = fmul double %48, 0x3EF0001000100010
  %50 = fmul double %49, %33
  %51 = fptrunc double %50 to float
  %52 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %53 = load float, ptr %52, align 4, !tbaa !57
  %54 = fpext float %53 to double
  %55 = fmul double %54, 0x3EF0001000100010
  %56 = fmul double %55, %40
  %57 = fptrunc double %56 to float
  %58 = tail call fastcc float @SoftLight(float noundef %51, float noundef %13, float noundef %57, float noundef %14) #14
  %59 = fmul float %58, %28
  %60 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 6
  store float %59, ptr %60, align 4, !tbaa !57
  %61 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %62 = load float, ptr %61, align 8, !tbaa !54
  %63 = fpext float %62 to double
  %64 = fmul double %63, 0x3EF0001000100010
  %65 = fmul double %64, %33
  %66 = fptrunc double %65 to float
  %67 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %68 = load float, ptr %67, align 8, !tbaa !54
  %69 = fpext float %68 to double
  %70 = fmul double %69, 0x3EF0001000100010
  %71 = fmul double %70, %40
  %72 = fptrunc double %71 to float
  %73 = tail call fastcc float @SoftLight(float noundef %66, float noundef %13, float noundef %72, float noundef %14) #14
  %74 = fmul float %73, %28
  %75 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 7
  store float %74, ptr %75, align 8, !tbaa !54
  %76 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %77 = load i32, ptr %76, align 4, !tbaa !59
  %78 = icmp eq i32 %77, 12
  br i1 %78, label %79, label %95

79:                                               ; preds = %3
  %80 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %81 = load float, ptr %80, align 8, !tbaa !55
  %82 = fpext float %81 to double
  %83 = fmul double %82, 0x3EF0001000100010
  %84 = fmul double %83, %33
  %85 = fptrunc double %84 to float
  %86 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %87 = load float, ptr %86, align 8, !tbaa !55
  %88 = fpext float %87 to double
  %89 = fmul double %88, 0x3EF0001000100010
  %90 = fmul double %89, %40
  %91 = fptrunc double %90 to float
  %92 = tail call fastcc float @SoftLight(float noundef %85, float noundef %13, float noundef %91, float noundef %14) #14
  %93 = fmul float %92, %28
  %94 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 9
  store float %93, ptr %94, align 8, !tbaa !55
  br label %95

95:                                               ; preds = %79, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @CompositeLinearLight(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #8 {
  %4 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %5 = load float, ptr %4, align 4, !tbaa !47
  %6 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %7 = load float, ptr %6, align 4, !tbaa !47
  %8 = insertelement <2 x float> poison, float %5, i64 0
  %9 = insertelement <2 x float> %8, float %7, i64 1
  %10 = fpext <2 x float> %9 to <2 x double>
  %11 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %10, <2 x double> <double 0xBEF0001000100010, double 0xBEF0001000100010>, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %12 = fptrunc <2 x double> %11 to <2 x float>
  %13 = extractelement <2 x float> %12, i64 0
  %14 = extractelement <2 x float> %12, i64 1
  %15 = fadd float %13, %14
  %16 = fneg float %13
  %17 = tail call float @llvm.fmuladd.f32(float %16, float %14, float %15)
  %18 = tail call fastcc float @RoundToUnity(float noundef %17) #14
  %19 = fpext float %18 to double
  %20 = fsub double 1.000000e+00, %19
  %21 = fmul double %20, 6.553500e+04
  %22 = fptrunc double %21 to float
  %23 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 8
  store float %22, ptr %23, align 4, !tbaa !47
  %24 = tail call double @llvm.fabs.f64(double %19)
  %25 = fcmp olt double %24, 1.000000e-15
  %26 = fdiv double 6.553500e+04, %19
  %27 = select i1 %25, double 0x440C6BD8BA3ED9CB, double %26
  %28 = fptrunc double %27 to float
  %29 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %30 = load float, ptr %29, align 8, !tbaa !56
  %31 = fpext float %30 to double
  %32 = fmul double %31, 0x3EF0001000100010
  %33 = fpext float %13 to double
  %34 = fmul double %32, %33
  %35 = fptrunc double %34 to float
  %36 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %37 = load float, ptr %36, align 8, !tbaa !56
  %38 = fpext float %37 to double
  %39 = fmul double %38, 0x3EF0001000100010
  %40 = fpext float %14 to double
  %41 = fmul double %39, %40
  %42 = fptrunc double %41 to float
  %43 = tail call fastcc float @LinearLight(float noundef %35, float noundef %13, float noundef %42, float noundef %14) #14
  %44 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 5
  %45 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %46 = load float, ptr %45, align 4, !tbaa !57
  %47 = fpext float %46 to double
  %48 = fmul double %47, 0x3EF0001000100010
  %49 = fmul double %48, %33
  %50 = fptrunc double %49 to float
  %51 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %52 = load float, ptr %51, align 4, !tbaa !57
  %53 = fpext float %52 to double
  %54 = fmul double %53, 0x3EF0001000100010
  %55 = fmul double %54, %40
  %56 = fptrunc double %55 to float
  %57 = tail call fastcc float @LinearLight(float noundef %50, float noundef %13, float noundef %56, float noundef %14) #14
  %58 = insertelement <2 x float> poison, float %43, i64 0
  %59 = insertelement <2 x float> %58, float %57, i64 1
  %60 = insertelement <2 x float> poison, float %28, i64 0
  %61 = shufflevector <2 x float> %60, <2 x float> poison, <2 x i32> zeroinitializer
  %62 = fmul <2 x float> %59, %61
  store <2 x float> %62, ptr %44, align 8, !tbaa !40
  %63 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %64 = load float, ptr %63, align 8, !tbaa !54
  %65 = fpext float %64 to double
  %66 = fmul double %65, 0x3EF0001000100010
  %67 = fmul double %66, %33
  %68 = fptrunc double %67 to float
  %69 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %70 = load float, ptr %69, align 8, !tbaa !54
  %71 = fpext float %70 to double
  %72 = fmul double %71, 0x3EF0001000100010
  %73 = fmul double %72, %40
  %74 = fptrunc double %73 to float
  %75 = tail call fastcc float @LinearLight(float noundef %68, float noundef %13, float noundef %74, float noundef %14) #14
  %76 = fmul float %75, %28
  %77 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 7
  store float %76, ptr %77, align 8, !tbaa !54
  %78 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %79 = load i32, ptr %78, align 4, !tbaa !59
  %80 = icmp eq i32 %79, 12
  br i1 %80, label %81, label %97

81:                                               ; preds = %3
  %82 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %83 = load float, ptr %82, align 8, !tbaa !55
  %84 = fpext float %83 to double
  %85 = fmul double %84, 0x3EF0001000100010
  %86 = fmul double %85, %33
  %87 = fptrunc double %86 to float
  %88 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %89 = load float, ptr %88, align 8, !tbaa !55
  %90 = fpext float %89 to double
  %91 = fmul double %90, 0x3EF0001000100010
  %92 = fmul double %91, %40
  %93 = fptrunc double %92 to float
  %94 = tail call fastcc float @LinearLight(float noundef %87, float noundef %13, float noundef %93, float noundef %14) #14
  %95 = fmul float %94, %28
  %96 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 9
  store float %95, ptr %96, align 8, !tbaa !55
  br label %97

97:                                               ; preds = %81, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @CompositePegtopLight(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #8 {
  %4 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %5 = load float, ptr %4, align 4, !tbaa !47
  %6 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %7 = load float, ptr %6, align 4, !tbaa !47
  %8 = insertelement <2 x float> poison, float %5, i64 0
  %9 = insertelement <2 x float> %8, float %7, i64 1
  %10 = fpext <2 x float> %9 to <2 x double>
  %11 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %10, <2 x double> <double 0xBEF0001000100010, double 0xBEF0001000100010>, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %12 = fptrunc <2 x double> %11 to <2 x float>
  %13 = extractelement <2 x float> %12, i64 0
  %14 = extractelement <2 x float> %12, i64 1
  %15 = fadd float %13, %14
  %16 = fneg float %13
  %17 = tail call float @llvm.fmuladd.f32(float %16, float %14, float %15)
  %18 = tail call fastcc float @RoundToUnity(float noundef %17) #14
  %19 = fpext float %18 to double
  %20 = fsub double 1.000000e+00, %19
  %21 = fmul double %20, 6.553500e+04
  %22 = fptrunc double %21 to float
  %23 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 8
  store float %22, ptr %23, align 4, !tbaa !47
  %24 = tail call double @llvm.fabs.f64(double %19)
  %25 = fcmp olt double %24, 1.000000e-15
  %26 = fdiv double 6.553500e+04, %19
  %27 = select i1 %25, double 0x440C6BD8BA3ED9CB, double %26
  %28 = fptrunc double %27 to float
  %29 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %30 = load float, ptr %29, align 8, !tbaa !56
  %31 = fpext float %30 to double
  %32 = fmul double %31, 0x3EF0001000100010
  %33 = fpext float %13 to double
  %34 = fmul double %32, %33
  %35 = fptrunc double %34 to float
  %36 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %37 = load float, ptr %36, align 8, !tbaa !56
  %38 = fpext float %37 to double
  %39 = fmul double %38, 0x3EF0001000100010
  %40 = fpext float %14 to double
  %41 = fmul double %39, %40
  %42 = fptrunc double %41 to float
  %43 = tail call fastcc float @PegtopLight(float noundef %35, float noundef %13, float noundef %42, float noundef %14) #14
  %44 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 5
  %45 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %46 = load float, ptr %45, align 4, !tbaa !57
  %47 = fpext float %46 to double
  %48 = fmul double %47, 0x3EF0001000100010
  %49 = fmul double %48, %33
  %50 = fptrunc double %49 to float
  %51 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %52 = load float, ptr %51, align 4, !tbaa !57
  %53 = fpext float %52 to double
  %54 = fmul double %53, 0x3EF0001000100010
  %55 = fmul double %54, %40
  %56 = fptrunc double %55 to float
  %57 = tail call fastcc float @PegtopLight(float noundef %50, float noundef %13, float noundef %56, float noundef %14) #14
  %58 = insertelement <2 x float> poison, float %43, i64 0
  %59 = insertelement <2 x float> %58, float %57, i64 1
  %60 = insertelement <2 x float> poison, float %28, i64 0
  %61 = shufflevector <2 x float> %60, <2 x float> poison, <2 x i32> zeroinitializer
  %62 = fmul <2 x float> %59, %61
  store <2 x float> %62, ptr %44, align 8, !tbaa !40
  %63 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %64 = load float, ptr %63, align 8, !tbaa !54
  %65 = fpext float %64 to double
  %66 = fmul double %65, 0x3EF0001000100010
  %67 = fmul double %66, %33
  %68 = fptrunc double %67 to float
  %69 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %70 = load float, ptr %69, align 8, !tbaa !54
  %71 = fpext float %70 to double
  %72 = fmul double %71, 0x3EF0001000100010
  %73 = fmul double %72, %40
  %74 = fptrunc double %73 to float
  %75 = tail call fastcc float @PegtopLight(float noundef %68, float noundef %13, float noundef %74, float noundef %14) #14
  %76 = fmul float %75, %28
  %77 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 7
  store float %76, ptr %77, align 8, !tbaa !54
  %78 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %79 = load i32, ptr %78, align 4, !tbaa !59
  %80 = icmp eq i32 %79, 12
  br i1 %80, label %81, label %97

81:                                               ; preds = %3
  %82 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %83 = load float, ptr %82, align 8, !tbaa !55
  %84 = fpext float %83 to double
  %85 = fmul double %84, 0x3EF0001000100010
  %86 = fmul double %85, %33
  %87 = fptrunc double %86 to float
  %88 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %89 = load float, ptr %88, align 8, !tbaa !55
  %90 = fpext float %89 to double
  %91 = fmul double %90, 0x3EF0001000100010
  %92 = fmul double %91, %40
  %93 = fptrunc double %92 to float
  %94 = tail call fastcc float @PegtopLight(float noundef %87, float noundef %13, float noundef %93, float noundef %14) #14
  %95 = fmul float %94, %28
  %96 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 9
  store float %95, ptr %96, align 8, !tbaa !55
  br label %97

97:                                               ; preds = %81, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @CompositeVividLight(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #8 {
  %4 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %5 = load float, ptr %4, align 4, !tbaa !47
  %6 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %7 = load float, ptr %6, align 4, !tbaa !47
  %8 = insertelement <2 x float> poison, float %5, i64 0
  %9 = insertelement <2 x float> %8, float %7, i64 1
  %10 = fpext <2 x float> %9 to <2 x double>
  %11 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %10, <2 x double> <double 0xBEF0001000100010, double 0xBEF0001000100010>, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %12 = fptrunc <2 x double> %11 to <2 x float>
  %13 = extractelement <2 x float> %12, i64 0
  %14 = extractelement <2 x float> %12, i64 1
  %15 = fadd float %13, %14
  %16 = fneg float %13
  %17 = tail call float @llvm.fmuladd.f32(float %16, float %14, float %15)
  %18 = tail call fastcc float @RoundToUnity(float noundef %17) #14
  %19 = fpext float %18 to double
  %20 = fsub double 1.000000e+00, %19
  %21 = fmul double %20, 6.553500e+04
  %22 = fptrunc double %21 to float
  %23 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 8
  store float %22, ptr %23, align 4, !tbaa !47
  %24 = tail call double @llvm.fabs.f64(double %19)
  %25 = fcmp olt double %24, 1.000000e-15
  %26 = fdiv double 6.553500e+04, %19
  %27 = select i1 %25, double 0x440C6BD8BA3ED9CB, double %26
  %28 = fptrunc double %27 to float
  %29 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %30 = load float, ptr %29, align 8, !tbaa !56
  %31 = fpext float %30 to double
  %32 = fmul double %31, 0x3EF0001000100010
  %33 = fpext float %13 to double
  %34 = fmul double %32, %33
  %35 = fptrunc double %34 to float
  %36 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %37 = load float, ptr %36, align 8, !tbaa !56
  %38 = fpext float %37 to double
  %39 = fmul double %38, 0x3EF0001000100010
  %40 = fpext float %14 to double
  %41 = fmul double %39, %40
  %42 = fptrunc double %41 to float
  %43 = tail call fastcc float @VividLight(float noundef %35, float noundef %13, float noundef %42, float noundef %14) #14
  %44 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 5
  %45 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %46 = load float, ptr %45, align 4, !tbaa !57
  %47 = fpext float %46 to double
  %48 = fmul double %47, 0x3EF0001000100010
  %49 = fmul double %48, %33
  %50 = fptrunc double %49 to float
  %51 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %52 = load float, ptr %51, align 4, !tbaa !57
  %53 = fpext float %52 to double
  %54 = fmul double %53, 0x3EF0001000100010
  %55 = fmul double %54, %40
  %56 = fptrunc double %55 to float
  %57 = tail call fastcc float @VividLight(float noundef %50, float noundef %13, float noundef %56, float noundef %14) #14
  %58 = insertelement <2 x float> poison, float %43, i64 0
  %59 = insertelement <2 x float> %58, float %57, i64 1
  %60 = insertelement <2 x float> poison, float %28, i64 0
  %61 = shufflevector <2 x float> %60, <2 x float> poison, <2 x i32> zeroinitializer
  %62 = fmul <2 x float> %59, %61
  store <2 x float> %62, ptr %44, align 8, !tbaa !40
  %63 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %64 = load float, ptr %63, align 8, !tbaa !54
  %65 = fpext float %64 to double
  %66 = fmul double %65, 0x3EF0001000100010
  %67 = fmul double %66, %33
  %68 = fptrunc double %67 to float
  %69 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %70 = load float, ptr %69, align 8, !tbaa !54
  %71 = fpext float %70 to double
  %72 = fmul double %71, 0x3EF0001000100010
  %73 = fmul double %72, %40
  %74 = fptrunc double %73 to float
  %75 = tail call fastcc float @VividLight(float noundef %68, float noundef %13, float noundef %74, float noundef %14) #14
  %76 = fmul float %75, %28
  %77 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 7
  store float %76, ptr %77, align 8, !tbaa !54
  %78 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %79 = load i32, ptr %78, align 4, !tbaa !59
  %80 = icmp eq i32 %79, 12
  br i1 %80, label %81, label %97

81:                                               ; preds = %3
  %82 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %83 = load float, ptr %82, align 8, !tbaa !55
  %84 = fpext float %83 to double
  %85 = fmul double %84, 0x3EF0001000100010
  %86 = fmul double %85, %33
  %87 = fptrunc double %86 to float
  %88 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %89 = load float, ptr %88, align 8, !tbaa !55
  %90 = fpext float %89 to double
  %91 = fmul double %90, 0x3EF0001000100010
  %92 = fmul double %91, %40
  %93 = fptrunc double %92 to float
  %94 = tail call fastcc float @VividLight(float noundef %87, float noundef %13, float noundef %93, float noundef %14) #14
  %95 = fmul float %94, %28
  %96 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 9
  store float %95, ptr %96, align 8, !tbaa !55
  br label %97

97:                                               ; preds = %81, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @CompositePinLight(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #8 {
  %4 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %5 = load float, ptr %4, align 4, !tbaa !47
  %6 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %7 = load float, ptr %6, align 4, !tbaa !47
  %8 = insertelement <2 x float> poison, float %5, i64 0
  %9 = insertelement <2 x float> %8, float %7, i64 1
  %10 = fpext <2 x float> %9 to <2 x double>
  %11 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %10, <2 x double> <double 0xBEF0001000100010, double 0xBEF0001000100010>, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %12 = fptrunc <2 x double> %11 to <2 x float>
  %13 = extractelement <2 x float> %12, i64 0
  %14 = extractelement <2 x float> %12, i64 1
  %15 = fadd float %13, %14
  %16 = fneg float %13
  %17 = tail call float @llvm.fmuladd.f32(float %16, float %14, float %15)
  %18 = tail call fastcc float @RoundToUnity(float noundef %17) #14
  %19 = fpext float %18 to double
  %20 = fsub double 1.000000e+00, %19
  %21 = fmul double %20, 6.553500e+04
  %22 = fptrunc double %21 to float
  %23 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 8
  store float %22, ptr %23, align 4, !tbaa !47
  %24 = tail call double @llvm.fabs.f64(double %19)
  %25 = fcmp olt double %24, 1.000000e-15
  %26 = fdiv double 6.553500e+04, %19
  %27 = select i1 %25, double 0x440C6BD8BA3ED9CB, double %26
  %28 = fptrunc double %27 to float
  %29 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %30 = load float, ptr %29, align 8, !tbaa !56
  %31 = fpext float %30 to double
  %32 = fmul double %31, 0x3EF0001000100010
  %33 = fpext float %13 to double
  %34 = fmul double %32, %33
  %35 = fptrunc double %34 to float
  %36 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %37 = load float, ptr %36, align 8, !tbaa !56
  %38 = fpext float %37 to double
  %39 = fmul double %38, 0x3EF0001000100010
  %40 = fpext float %14 to double
  %41 = fmul double %39, %40
  %42 = fptrunc double %41 to float
  %43 = tail call fastcc float @PinLight(float noundef %35, float noundef %13, float noundef %42, float noundef %14) #14
  %44 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 5
  %45 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %46 = load float, ptr %45, align 4, !tbaa !57
  %47 = fpext float %46 to double
  %48 = fmul double %47, 0x3EF0001000100010
  %49 = fmul double %48, %33
  %50 = fptrunc double %49 to float
  %51 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %52 = load float, ptr %51, align 4, !tbaa !57
  %53 = fpext float %52 to double
  %54 = fmul double %53, 0x3EF0001000100010
  %55 = fmul double %54, %40
  %56 = fptrunc double %55 to float
  %57 = tail call fastcc float @PinLight(float noundef %50, float noundef %13, float noundef %56, float noundef %14) #14
  %58 = insertelement <2 x float> poison, float %43, i64 0
  %59 = insertelement <2 x float> %58, float %57, i64 1
  %60 = insertelement <2 x float> poison, float %28, i64 0
  %61 = shufflevector <2 x float> %60, <2 x float> poison, <2 x i32> zeroinitializer
  %62 = fmul <2 x float> %59, %61
  store <2 x float> %62, ptr %44, align 8, !tbaa !40
  %63 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %64 = load float, ptr %63, align 8, !tbaa !54
  %65 = fpext float %64 to double
  %66 = fmul double %65, 0x3EF0001000100010
  %67 = fmul double %66, %33
  %68 = fptrunc double %67 to float
  %69 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %70 = load float, ptr %69, align 8, !tbaa !54
  %71 = fpext float %70 to double
  %72 = fmul double %71, 0x3EF0001000100010
  %73 = fmul double %72, %40
  %74 = fptrunc double %73 to float
  %75 = tail call fastcc float @PinLight(float noundef %68, float noundef %13, float noundef %74, float noundef %14) #14
  %76 = fmul float %75, %28
  %77 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 7
  store float %76, ptr %77, align 8, !tbaa !54
  %78 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %79 = load i32, ptr %78, align 4, !tbaa !59
  %80 = icmp eq i32 %79, 12
  br i1 %80, label %81, label %97

81:                                               ; preds = %3
  %82 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %83 = load float, ptr %82, align 8, !tbaa !55
  %84 = fpext float %83 to double
  %85 = fmul double %84, 0x3EF0001000100010
  %86 = fmul double %85, %33
  %87 = fptrunc double %86 to float
  %88 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %89 = load float, ptr %88, align 8, !tbaa !55
  %90 = fpext float %89 to double
  %91 = fmul double %90, 0x3EF0001000100010
  %92 = fmul double %91, %40
  %93 = fptrunc double %92 to float
  %94 = tail call fastcc float @PinLight(float noundef %87, float noundef %13, float noundef %93, float noundef %14) #14
  %95 = fmul float %94, %28
  %96 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 9
  store float %95, ptr %96, align 8, !tbaa !55
  br label %97

97:                                               ; preds = %81, %3
  ret void
}

; Function Attrs: optsize
declare i32 @IsMagickColorSimilar(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @CompositeBumpmap(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #8 {
  %4 = tail call fastcc float @MagickPixelIntensity(ptr noundef %0) #14
  %5 = fpext float %4 to double
  %6 = fmul double %5, 0x3EF0001000100010
  %7 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %8 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 5
  %9 = load <2 x float>, ptr %7, align 8, !tbaa !40
  %10 = fpext <2 x float> %9 to <2 x double>
  %11 = insertelement <2 x double> poison, double %6, i64 0
  %12 = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> zeroinitializer
  %13 = fmul <2 x double> %12, %10
  %14 = fptrunc <2 x double> %13 to <2 x float>
  store <2 x float> %14, ptr %8, align 8, !tbaa !40
  %15 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %16 = load float, ptr %15, align 8, !tbaa !54
  %17 = fpext float %16 to double
  %18 = fmul double %6, %17
  %19 = fptrunc double %18 to float
  %20 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 7
  store float %19, ptr %20, align 8, !tbaa !54
  %21 = fmul float %4, 0x3EF0001000000000
  %22 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %23 = load float, ptr %22, align 4, !tbaa !47
  %24 = fmul float %21, %23
  %25 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 8
  store float %24, ptr %25, align 4, !tbaa !47
  %26 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !59
  %28 = icmp eq i32 %27, 12
  br i1 %28, label %29, label %36

29:                                               ; preds = %3
  %30 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %31 = load float, ptr %30, align 8, !tbaa !55
  %32 = fpext float %31 to double
  %33 = fmul double %6, %32
  %34 = fptrunc double %33 to float
  %35 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 9
  store float %34, ptr %35, align 8, !tbaa !55
  br label %36

36:                                               ; preds = %29, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @MagickPixelCompositeBlend(ptr nocapture noundef readonly %0, float noundef %1, ptr nocapture noundef readonly %2, float noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #8 {
  %6 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %7 = load float, ptr %6, align 4, !tbaa !47
  %8 = fsub float 6.553500e+04, %7
  %9 = fneg float %1
  %10 = tail call float @llvm.fmuladd.f32(float %9, float %8, float 6.553500e+04)
  %11 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 8
  %12 = load float, ptr %11, align 4, !tbaa !47
  %13 = fsub float 6.553500e+04, %12
  %14 = fneg float %3
  %15 = tail call float @llvm.fmuladd.f32(float %14, float %13, float 6.553500e+04)
  tail call fastcc void @MagickPixelCompositePlus(ptr noundef %0, float noundef %10, ptr noundef %2, float noundef %15, ptr noundef %4) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @CompositeThreshold(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2, float noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #8 {
  %6 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %7 = load float, ptr %6, align 8, !tbaa !56
  %8 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %9 = load float, ptr %8, align 8, !tbaa !56
  %10 = tail call fastcc float @Threshold(float noundef %7, float noundef %9, float noundef %2, float noundef %3) #14
  %11 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 5
  store float %10, ptr %11, align 8, !tbaa !56
  %12 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %13 = load float, ptr %12, align 4, !tbaa !57
  %14 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %15 = load float, ptr %14, align 4, !tbaa !57
  %16 = tail call fastcc float @Threshold(float noundef %13, float noundef %15, float noundef %2, float noundef %3) #14
  %17 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 6
  store float %16, ptr %17, align 4, !tbaa !57
  %18 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %19 = load float, ptr %18, align 8, !tbaa !54
  %20 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %21 = load float, ptr %20, align 8, !tbaa !54
  %22 = tail call fastcc float @Threshold(float noundef %19, float noundef %21, float noundef %2, float noundef %3) #14
  %23 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 7
  store float %22, ptr %23, align 8, !tbaa !54
  %24 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %25 = load float, ptr %24, align 4, !tbaa !47
  %26 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %27 = load float, ptr %26, align 4, !tbaa !47
  %28 = tail call fastcc float @Threshold(float noundef %25, float noundef %27, float noundef %2, float noundef %3) #14
  %29 = fsub float 6.553500e+04, %28
  %30 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 8
  store float %29, ptr %30, align 4, !tbaa !47
  %31 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %32 = load i32, ptr %31, align 4, !tbaa !59
  %33 = icmp eq i32 %32, 12
  br i1 %33, label %34, label %41

34:                                               ; preds = %5
  %35 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %36 = load float, ptr %35, align 8, !tbaa !55
  %37 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %38 = load float, ptr %37, align 8, !tbaa !55
  %39 = tail call fastcc float @Threshold(float noundef %36, float noundef %38, float noundef %2, float noundef %3) #14
  %40 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 9
  store float %39, ptr %40, align 8, !tbaa !55
  br label %41

41:                                               ; preds = %34, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i16 @MagickPixelIntensityToQuantum(ptr nocapture noundef readonly %0) unnamed_addr #11 {
  %2 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !59
  %4 = icmp eq i32 %3, 2
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %6 = load float, ptr %5, align 8, !tbaa !56
  br i1 %4, label %19, label %7

7:                                                ; preds = %1
  %8 = fpext float %6 to double
  %9 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %10 = load float, ptr %9, align 4, !tbaa !57
  %11 = fpext float %10 to double
  %12 = fmul double %11, 0x3FE6E29307AF20EA
  %13 = tail call double @llvm.fmuladd.f64(double %8, double 2.126560e-01, double %12)
  %14 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %15 = load float, ptr %14, align 8, !tbaa !54
  %16 = fpext float %15 to double
  %17 = tail call double @llvm.fmuladd.f64(double %16, double 7.218600e-02, double %13)
  %18 = fptrunc double %17 to float
  br label %19

19:                                               ; preds = %1, %7
  %20 = phi float [ %18, %7 ], [ %6, %1 ]
  %21 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %20) #14
  ret i16 %21
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc void @CompositeHCL(float noundef %0, float noundef %1, float noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) unnamed_addr #12 {
  %7 = fpext float %0 to double
  %8 = fpext float %1 to double
  %9 = fpext float %2 to double
  %10 = tail call fastcc double @MagickMax(double noundef %8, double noundef %9) #14
  %11 = tail call fastcc double @MagickMax(double noundef %7, double noundef %10) #14
  %12 = tail call fastcc double @MagickMin(double noundef %8, double noundef %9) #14
  %13 = tail call fastcc double @MagickMin(double noundef %7, double noundef %12) #14
  %14 = fsub double %11, %13
  %15 = fcmp oeq double %14, 0.000000e+00
  br i1 %15, label %36, label %16

16:                                               ; preds = %6
  %17 = fptrunc double %11 to float
  %18 = fcmp oeq float %17, %0
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = fsub double %8, %9
  %21 = fdiv double %20, %14
  %22 = fadd double %21, 6.000000e+00
  %23 = tail call double @fmod(double noundef %22, double noundef 6.000000e+00) #16
  br label %36

24:                                               ; preds = %16
  %25 = fcmp oeq float %17, %1
  br i1 %25, label %26, label %30

26:                                               ; preds = %24
  %27 = fsub double %9, %7
  %28 = fdiv double %27, %14
  %29 = fadd double %28, 2.000000e+00
  br label %36

30:                                               ; preds = %24
  %31 = fcmp oeq float %17, %2
  br i1 %31, label %32, label %36

32:                                               ; preds = %30
  %33 = fsub double %7, %8
  %34 = fdiv double %33, %14
  %35 = fadd double %34, 4.000000e+00
  br label %36

36:                                               ; preds = %6, %19, %30, %32, %26
  %37 = phi double [ %23, %19 ], [ %29, %26 ], [ %35, %32 ], [ 0.000000e+00, %30 ], [ 0.000000e+00, %6 ]
  %38 = fdiv double %37, 6.000000e+00
  store double %38, ptr %3, align 8, !tbaa !38
  %39 = fmul double %14, 0x3EF0001000100010
  store double %39, ptr %4, align 8, !tbaa !38
  %40 = fmul double %8, 5.868110e-01
  %41 = tail call double @llvm.fmuladd.f64(double %7, double 2.988390e-01, double %40)
  %42 = tail call double @llvm.fmuladd.f64(double %9, double 1.143500e-01, double %41)
  %43 = fmul double %42, 0x3EF0001000100010
  store double %43, ptr %5, align 8, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc void @HCLComposite(double noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) unnamed_addr #12 {
  %7 = fmul double %0, 6.000000e+00
  %8 = tail call double @fmod(double noundef %7, double noundef 2.000000e+00) #16
  %9 = fadd double %8, -1.000000e+00
  %10 = tail call double @llvm.fabs.f64(double %9)
  %11 = fsub double 1.000000e+00, %10
  %12 = fmul double %11, %1
  %13 = fcmp oge double %7, 0.000000e+00
  %14 = fcmp olt double %7, 1.000000e+00
  %15 = and i1 %13, %14
  br i1 %15, label %37, label %16

16:                                               ; preds = %6
  %17 = fcmp oge double %7, 1.000000e+00
  %18 = fcmp olt double %7, 2.000000e+00
  %19 = and i1 %17, %18
  br i1 %19, label %37, label %20

20:                                               ; preds = %16
  %21 = fcmp oge double %7, 2.000000e+00
  %22 = fcmp olt double %7, 3.000000e+00
  %23 = and i1 %21, %22
  br i1 %23, label %37, label %24

24:                                               ; preds = %20
  %25 = fcmp oge double %7, 3.000000e+00
  %26 = fcmp olt double %7, 4.000000e+00
  %27 = and i1 %25, %26
  br i1 %27, label %37, label %28

28:                                               ; preds = %24
  %29 = fcmp oge double %7, 4.000000e+00
  %30 = fcmp olt double %7, 5.000000e+00
  %31 = and i1 %29, %30
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  %33 = fcmp oge double %7, 5.000000e+00
  %34 = fcmp olt double %7, 6.000000e+00
  %35 = and i1 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %37

37:                                               ; preds = %28, %24, %20, %16, %6, %32, %36
  %38 = phi double [ 0.000000e+00, %36 ], [ 0.000000e+00, %32 ], [ %12, %6 ], [ %1, %16 ], [ %1, %20 ], [ %12, %24 ], [ 0.000000e+00, %28 ]
  %39 = phi double [ %1, %36 ], [ 0.000000e+00, %32 ], [ %1, %6 ], [ %12, %16 ], [ 0.000000e+00, %20 ], [ 0.000000e+00, %24 ], [ %12, %28 ]
  %40 = phi double [ %12, %36 ], [ 0.000000e+00, %32 ], [ 0.000000e+00, %6 ], [ 0.000000e+00, %16 ], [ %12, %20 ], [ %1, %24 ], [ %1, %28 ]
  %41 = fmul double %38, 5.868110e-01
  %42 = tail call double @llvm.fmuladd.f64(double %39, double 2.988390e-01, double %41)
  %43 = tail call double @llvm.fmuladd.f64(double %40, double 1.143500e-01, double %42)
  %44 = fsub double %2, %43
  %45 = fadd double %39, %44
  %46 = fmul double %45, 6.553500e+04
  %47 = fptrunc double %46 to float
  store float %47, ptr %3, align 4, !tbaa !40
  %48 = fadd double %38, %44
  %49 = fmul double %48, 6.553500e+04
  %50 = fptrunc double %49 to float
  store float %50, ptr %4, align 4, !tbaa !40
  %51 = fadd double %40, %44
  %52 = fmul double %51, 6.553500e+04
  %53 = fptrunc double %52 to float
  store float %53, ptr %5, align 4, !tbaa !40
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ConvertRGBToCMYK(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !59
  %4 = icmp eq i32 %3, 13
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %6 = load float, ptr %5, align 8, !tbaa !56
  br i1 %4, label %20, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %9 = load float, ptr %8, align 4, !tbaa !57
  %10 = insertelement <2 x float> poison, float %6, i64 0
  %11 = insertelement <2 x float> %10, float %9, i64 1
  %12 = fpext <2 x float> %11 to <2 x double>
  %13 = fmul <2 x double> %12, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  %14 = fptrunc <2 x double> %13 to <2 x float>
  %15 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %16 = load float, ptr %15, align 8, !tbaa !54
  %17 = fpext float %16 to double
  %18 = fmul double %17, 0x3EF0001000100010
  %19 = fptrunc double %18 to float
  br label %30

20:                                               ; preds = %1
  %21 = tail call float @DecodePixelGamma(float noundef %6) #17
  %22 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %23 = load float, ptr %22, align 4, !tbaa !57
  %24 = tail call float @DecodePixelGamma(float noundef %23) #17
  %25 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %26 = load float, ptr %25, align 8, !tbaa !54
  %27 = tail call float @DecodePixelGamma(float noundef %26) #17
  %28 = insertelement <2 x float> poison, float %21, i64 0
  %29 = insertelement <2 x float> %28, float %24, i64 1
  br label %30

30:                                               ; preds = %20, %7
  %31 = phi float [ %19, %7 ], [ %27, %20 ]
  %32 = phi <2 x float> [ %14, %7 ], [ %29, %20 ]
  %33 = extractelement <2 x float> %32, i64 0
  %34 = tail call float @llvm.fabs.f32(float %33)
  %35 = fpext float %34 to double
  %36 = fcmp olt double %35, 1.000000e-15
  br i1 %36, label %37, label %46

37:                                               ; preds = %30
  %38 = extractelement <2 x float> %32, i64 1
  %39 = tail call float @llvm.fabs.f32(float %38)
  %40 = fpext float %39 to double
  %41 = fcmp olt double %40, 1.000000e-15
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = tail call float @llvm.fabs.f32(float %31)
  %44 = fpext float %43 to double
  %45 = fcmp olt double %44, 1.000000e-15
  br i1 %45, label %74, label %46

46:                                               ; preds = %42, %37, %30
  %47 = fsub <2 x float> <float 1.000000e+00, float 1.000000e+00>, %32
  %48 = fsub float 1.000000e+00, %31
  %49 = extractelement <2 x float> %47, i64 0
  %50 = extractelement <2 x float> %47, i64 1
  %51 = fcmp olt float %50, %49
  %52 = select i1 %51, float %50, float %49
  %53 = fcmp olt float %48, %52
  %54 = select i1 %53, float %48, float %52
  %55 = fpext float %54 to double
  %56 = fsub double 1.000000e+00, %55
  %57 = fsub float %48, %54
  %58 = fpext float %57 to double
  %59 = fdiv double %58, %56
  %60 = fptrunc double %59 to float
  store i32 12, ptr %2, align 4, !tbaa !59
  %61 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %62 = insertelement <2 x float> poison, float %54, i64 0
  %63 = shufflevector <2 x float> %62, <2 x float> poison, <2 x i32> zeroinitializer
  %64 = fsub <2 x float> %47, %63
  %65 = fpext <2 x float> %64 to <2 x double>
  %66 = insertelement <2 x double> poison, double %56, i64 0
  %67 = shufflevector <2 x double> %66, <2 x double> poison, <2 x i32> zeroinitializer
  %68 = fdiv <2 x double> %65, %67
  %69 = fptrunc <2 x double> %68 to <2 x float>
  %70 = fmul <2 x float> %69, <float 6.553500e+04, float 6.553500e+04>
  store <2 x float> %70, ptr %61, align 8, !tbaa !40
  %71 = fmul float %60, 6.553500e+04
  %72 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  store float %71, ptr %72, align 8, !tbaa !54
  %73 = fmul float %54, 6.553500e+04
  br label %74

74:                                               ; preds = %42, %46
  %75 = phi float [ %73, %46 ], [ 6.553500e+04, %42 ]
  %76 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  store float %75, ptr %76, align 8, !tbaa !55
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @TextureImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2939, ptr noundef nonnull @.str.8) #16
  br label %8

8:                                                ; preds = %6, %2
  %9 = icmp eq ptr %1, null
  br i1 %9, label %179, label %10

10:                                               ; preds = %8
  %11 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %0, i32 noundef 1) #16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %179, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %15 = tail call ptr @CloneImage(ptr noundef nonnull %1, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef nonnull %14) #16
  %16 = icmp eq ptr %15, null
  br i1 %16, label %179, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !25
  %20 = tail call i32 @TransformImageColorspace(ptr noundef nonnull %15, i32 noundef %19) #16
  %21 = tail call i32 @SetImageVirtualPixelMethod(ptr noundef nonnull %15, i32 noundef 7) #16
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 36
  %23 = load i32, ptr %22, align 8, !tbaa !64
  switch i32 %23, label %32 [
    i32 13, label %90
    i32 40, label %24
  ]

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %26 = load i32, ptr %25, align 8, !tbaa !26
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 6
  %30 = load i32, ptr %29, align 8, !tbaa !26
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %90, label %32

32:                                               ; preds = %17, %28, %24
  %33 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %34 = load i64, ptr %33, align 8, !tbaa !28
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %86

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %38 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 74, i32 2
  %39 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 74, i32 3
  %40 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 7
  %41 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %42 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 8
  br label %43

43:                                               ; preds = %36, %79
  %44 = phi i64 [ %34, %36 ], [ %80, %79 ]
  %45 = phi i64 [ %34, %36 ], [ %81, %79 ]
  %46 = phi i32 [ 1, %36 ], [ %82, %79 ]
  %47 = phi i64 [ 0, %36 ], [ %84, %79 ]
  %48 = icmp eq i32 %46, 0
  br i1 %48, label %79, label %49

49:                                               ; preds = %43
  %50 = load i64, ptr %37, align 8, !tbaa !27
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %52, label %69

52:                                               ; preds = %49, %61
  %53 = phi i64 [ %63, %61 ], [ 0, %49 ]
  %54 = load i32, ptr %22, align 8, !tbaa !64
  %55 = load i64, ptr %38, align 8, !tbaa !65
  %56 = add nsw i64 %55, %53
  %57 = load i64, ptr %39, align 8, !tbaa !66
  %58 = add nsw i64 %57, %47
  %59 = tail call i32 @CompositeImage(ptr noundef nonnull %0, i32 noundef %54, ptr noundef nonnull %15, i64 noundef %56, i64 noundef %58) #14, !range !5
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %52
  %62 = load i64, ptr %40, align 8, !tbaa !27
  %63 = add nsw i64 %62, %53
  %64 = load i64, ptr %37, align 8, !tbaa !27
  %65 = icmp slt i64 %63, %64
  br i1 %65, label %52, label %66, !llvm.loop !67

66:                                               ; preds = %52, %61
  %67 = phi i32 [ 1, %61 ], [ 0, %52 ]
  %68 = load i64, ptr %33, align 8, !tbaa !28
  br label %69

69:                                               ; preds = %66, %49
  %70 = phi i64 [ %44, %49 ], [ %68, %66 ]
  %71 = phi i32 [ 1, %49 ], [ %67, %66 ]
  %72 = load ptr, ptr %41, align 8, !tbaa !29
  %73 = icmp eq ptr %72, null
  br i1 %73, label %79, label %74

74:                                               ; preds = %69
  %75 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.9, i64 noundef %47, i64 noundef %70) #14
  %76 = icmp eq i32 %75, 0
  %77 = select i1 %76, i32 0, i32 %71
  %78 = load i64, ptr %33, align 8, !tbaa !28
  br label %79

79:                                               ; preds = %69, %74, %43
  %80 = phi i64 [ %44, %43 ], [ %78, %74 ], [ %70, %69 ]
  %81 = phi i64 [ %45, %43 ], [ %78, %74 ], [ %70, %69 ]
  %82 = phi i32 [ 0, %43 ], [ %77, %74 ], [ %71, %69 ]
  %83 = load i64, ptr %42, align 8, !tbaa !28
  %84 = add nsw i64 %83, %47
  %85 = icmp slt i64 %84, %81
  br i1 %85, label %43, label %86, !llvm.loop !68

86:                                               ; preds = %79, %32
  %87 = phi i32 [ 1, %32 ], [ %82, %79 ]
  %88 = phi i64 [ %34, %32 ], [ %81, %79 ]
  %89 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.9, i64 noundef %88, i64 noundef %88) #14
  br label %176

90:                                               ; preds = %17, %28
  %91 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %15, ptr noundef nonnull %14) #16
  %92 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %14) #16
  %93 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %94 = load i64, ptr %93, align 8, !tbaa !28
  %95 = icmp sgt i64 %94, 0
  br i1 %95, label %96, label %172

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 74, i32 2
  %98 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 74, i32 3
  %99 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 8
  %100 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 7
  %101 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %102 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 1
  %103 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %104

104:                                              ; preds = %96, %167
  %105 = phi i32 [ 1, %96 ], [ %168, %167 ]
  %106 = phi i64 [ 0, %96 ], [ %169, %167 ]
  %107 = icmp eq i32 %105, 0
  br i1 %107, label %167, label %108

108:                                              ; preds = %104
  %109 = load i64, ptr %97, align 8, !tbaa !65
  %110 = load i64, ptr %98, align 8, !tbaa !66
  %111 = add nsw i64 %110, %106
  %112 = load i64, ptr %99, align 8, !tbaa !28
  %113 = urem i64 %111, %112
  %114 = load i64, ptr %100, align 8, !tbaa !27
  %115 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %91, i64 noundef %109, i64 noundef %113, i64 noundef %114, i64 noundef 1, ptr noundef nonnull %14) #17
  %116 = load i64, ptr %101, align 8, !tbaa !27
  %117 = tail call ptr @QueueCacheViewAuthenticPixels(ptr noundef %92, i64 noundef 0, i64 noundef %106, i64 noundef %116, i64 noundef 1, ptr noundef nonnull %14) #17
  %118 = icmp eq ptr %115, null
  %119 = icmp eq ptr %117, null
  %120 = select i1 %118, i1 true, i1 %119
  br i1 %120, label %167, label %121

121:                                              ; preds = %108
  %122 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %91) #16
  %123 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %92) #16
  %124 = load i64, ptr %101, align 8, !tbaa !27
  %125 = icmp sgt i64 %124, 0
  br i1 %125, label %126, label %156

126:                                              ; preds = %121
  %127 = load i64, ptr %100, align 8, !tbaa !27
  br label %128

128:                                              ; preds = %126, %149
  %129 = phi i64 [ %152, %149 ], [ %127, %126 ]
  %130 = phi i64 [ %154, %149 ], [ %124, %126 ]
  %131 = phi ptr [ %151, %149 ], [ %117, %126 ]
  %132 = phi i64 [ %153, %149 ], [ 0, %126 ]
  %133 = phi ptr [ %150, %149 ], [ %123, %126 ]
  %134 = add nsw i64 %129, %132
  %135 = icmp sgt i64 %134, %130
  %136 = sub i64 %130, %132
  %137 = select i1 %135, i64 %136, i64 %129
  %138 = shl i64 %137, 3
  %139 = tail call ptr @CopyMagickMemory(ptr noundef %131, ptr noundef %115, i64 noundef %138) #16
  %140 = load i32, ptr %18, align 4, !tbaa !25
  %141 = icmp eq i32 %140, 12
  br i1 %141, label %142, label %149

142:                                              ; preds = %128
  %143 = load i32, ptr %102, align 4, !tbaa !25
  %144 = icmp eq i32 %143, 12
  br i1 %144, label %145, label %149

145:                                              ; preds = %142
  %146 = shl i64 %137, 1
  %147 = tail call ptr @CopyMagickMemory(ptr noundef %133, ptr noundef %122, i64 noundef %146) #16
  %148 = getelementptr inbounds i16, ptr %133, i64 %137
  br label %149

149:                                              ; preds = %145, %142, %128
  %150 = phi ptr [ %148, %145 ], [ %133, %142 ], [ %133, %128 ]
  %151 = getelementptr inbounds %struct._PixelPacket, ptr %131, i64 %137
  %152 = load i64, ptr %100, align 8, !tbaa !27
  %153 = add nsw i64 %152, %132
  %154 = load i64, ptr %101, align 8, !tbaa !27
  %155 = icmp slt i64 %153, %154
  br i1 %155, label %128, label %156, !llvm.loop !69

156:                                              ; preds = %149, %121
  %157 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %92, ptr noundef nonnull %14) #17
  %158 = icmp ne i32 %157, 0
  %159 = zext i1 %158 to i32
  %160 = load ptr, ptr %103, align 8, !tbaa !29
  %161 = icmp eq ptr %160, null
  br i1 %161, label %167, label %162

162:                                              ; preds = %156
  %163 = load i64, ptr %93, align 8, !tbaa !28
  %164 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.9, i64 noundef %106, i64 noundef %163) #14
  %165 = icmp eq i32 %164, 0
  %166 = select i1 %165, i32 0, i32 %159
  br label %167

167:                                              ; preds = %156, %162, %108, %104
  %168 = phi i32 [ 0, %104 ], [ 0, %108 ], [ %166, %162 ], [ %159, %156 ]
  %169 = add nuw nsw i64 %106, 1
  %170 = load i64, ptr %93, align 8, !tbaa !28
  %171 = icmp slt i64 %169, %170
  br i1 %171, label %104, label %172, !llvm.loop !70

172:                                              ; preds = %167, %90
  %173 = phi i32 [ 1, %90 ], [ %168, %167 ]
  %174 = tail call ptr @DestroyCacheView(ptr noundef %91) #16
  %175 = tail call ptr @DestroyCacheView(ptr noundef %92) #16
  br label %176

176:                                              ; preds = %86, %172
  %177 = phi i32 [ %173, %172 ], [ %87, %86 ]
  %178 = tail call ptr @DestroyImage(ptr noundef nonnull %15) #16
  br label %179

179:                                              ; preds = %176, %13, %10, %8
  %180 = phi i32 [ 0, %8 ], [ 0, %10 ], [ 0, %13 ], [ %177, %176 ]
  ret i32 %180
}

; Function Attrs: optsize
declare i32 @TransformImageColorspace(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @SetImageVirtualPixelMethod(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @PerceptibleReciprocal(double noundef %0) unnamed_addr #3 {
  %2 = fcmp olt double %0, 0.000000e+00
  %3 = select i1 %2, double -1.000000e+00, double 1.000000e+00
  %4 = fmul double %3, %0
  %5 = fcmp ult double %4, 1.000000e-15
  %6 = fdiv double 1.000000e+00, %0
  %7 = fdiv double %3, 1.000000e-15
  %8 = select i1 %5, double %7, double %6
  ret double %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc float @MagickOver_(float noundef %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #3 {
  %5 = fpext float %1 to double
  %6 = tail call double @llvm.fmuladd.f64(double %5, double 0xBEF0001000100010, double 1.000000e+00)
  %7 = fpext float %0 to double
  %8 = fpext float %3 to double
  %9 = tail call double @llvm.fmuladd.f64(double %8, double 0xBEF0001000100010, double 1.000000e+00)
  %10 = fpext float %2 to double
  %11 = fmul double %9, %10
  %12 = fmul double %11, 0x3EF0001000100010
  %13 = fmul double %12, %5
  %14 = tail call double @llvm.fmuladd.f64(double %6, double %7, double %13)
  %15 = fptrunc double %14 to float
  ret float %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @In(float noundef %0, float noundef %1, float noundef %2) unnamed_addr #3 {
  %4 = fmul float %0, %1
  %5 = fmul float %4, %2
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @Out(float noundef %0, float noundef %1, float noundef %2) unnamed_addr #3 {
  %4 = fmul float %0, %1
  %5 = fpext float %4 to double
  %6 = fpext float %2 to double
  %7 = fsub double 1.000000e+00, %6
  %8 = fmul double %7, %5
  %9 = fptrunc double %8 to float
  ret float %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @Atop(float noundef %0, float noundef %1, float noundef %2) unnamed_addr #3 {
  %4 = fmul float %0, %1
  %5 = fpext float %4 to double
  %6 = fpext float %2 to double
  %7 = fpext float %1 to double
  %8 = fsub double 1.000000e+00, %7
  %9 = tail call double @llvm.fmuladd.f64(double %6, double %8, double %5)
  %10 = fptrunc double %9 to float
  ret float %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @Xor(float noundef %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #3 {
  %5 = fpext float %0 to double
  %6 = fpext float %3 to double
  %7 = fsub double 1.000000e+00, %6
  %8 = fpext float %2 to double
  %9 = fpext float %1 to double
  %10 = fsub double 1.000000e+00, %9
  %11 = fmul double %10, %8
  %12 = tail call double @llvm.fmuladd.f64(double %5, double %7, double %11)
  %13 = fptrunc double %12 to float
  ret float %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @MagickPixelCompositePlus(ptr nocapture noundef readonly %0, float noundef %1, ptr nocapture noundef readonly %2, float noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #8 {
  %6 = insertelement <2 x float> poison, float %1, i64 0
  %7 = insertelement <2 x float> %6, float %3, i64 1
  %8 = fpext <2 x float> %7 to <2 x double>
  %9 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %8, <2 x double> <double 0xBEF0001000100010, double 0xBEF0001000100010>, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %10 = fptrunc <2 x double> %9 to <2 x float>
  %11 = extractelement <2 x float> %10, i64 0
  %12 = extractelement <2 x float> %10, i64 1
  %13 = fadd float %11, %12
  %14 = tail call fastcc float @RoundToUnity(float noundef %13) #14
  %15 = fpext float %14 to double
  %16 = fsub double 1.000000e+00, %15
  %17 = tail call fastcc double @PerceptibleReciprocal(double noundef %15) #14
  %18 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %19 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 5
  %20 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 5
  %21 = load <2 x float>, ptr %18, align 8, !tbaa !40
  %22 = load <2 x float>, ptr %19, align 8, !tbaa !40
  %23 = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %24 = fmul <2 x float> %22, %23
  %25 = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> zeroinitializer
  %26 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %25, <2 x float> %21, <2 x float> %24)
  %27 = fpext <2 x float> %26 to <2 x double>
  %28 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %29 = load float, ptr %28, align 8, !tbaa !54
  %30 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 7
  %31 = load float, ptr %30, align 8, !tbaa !54
  %32 = fmul float %31, %12
  %33 = tail call float @llvm.fmuladd.f32(float %11, float %29, float %32)
  %34 = fpext float %33 to double
  %35 = insertelement <4 x double> poison, double %17, i64 0
  %36 = insertelement <4 x double> %35, double %16, i64 1
  %37 = shufflevector <4 x double> %36, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %38 = shufflevector <2 x double> %27, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %39 = insertelement <4 x double> %38, double 6.553500e+04, i64 3
  %40 = insertelement <4 x double> %39, double %34, i64 2
  %41 = fmul <4 x double> %37, %40
  %42 = fptrunc <4 x double> %41 to <4 x float>
  store <4 x float> %42, ptr %20, align 8, !tbaa !40
  %43 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 1
  %44 = load i32, ptr %43, align 4, !tbaa !59
  %45 = icmp eq i32 %44, 12
  br i1 %45, label %46, label %57

46:                                               ; preds = %5
  %47 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %48 = load float, ptr %47, align 8, !tbaa !55
  %49 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 9
  %50 = load float, ptr %49, align 8, !tbaa !55
  %51 = fmul float %50, %12
  %52 = tail call float @llvm.fmuladd.f32(float %11, float %48, float %51)
  %53 = fpext float %52 to double
  %54 = fmul double %17, %53
  %55 = fptrunc double %54 to float
  %56 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 9
  store float %55, ptr %56, align 8, !tbaa !55
  br label %57

57:                                               ; preds = %46, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @RoundToUnity(float noundef %0) unnamed_addr #3 {
  %2 = fcmp olt float %0, 0.000000e+00
  %3 = fcmp ogt float %0, 1.000000e+00
  %4 = select i1 %3, float 1.000000e+00, float %0
  %5 = select i1 %2, float 0.000000e+00, float %4
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @Minus(float noundef %0, float noundef %1, float noundef %2) unnamed_addr #3 {
  %4 = fadd float %0, %2
  %5 = fmul float %2, -2.000000e+00
  %6 = tail call float @llvm.fmuladd.f32(float %5, float %1, float %4)
  ret float %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc float @ModulusAdd(float noundef %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #3 {
  %5 = fadd float %0, %2
  %6 = fcmp ogt float %5, 6.553500e+04
  %7 = fadd float %5, -6.553500e+04
  %8 = select i1 %6, float %7, float %5
  %9 = fmul float %8, %1
  %10 = fmul float %9, %3
  %11 = fpext float %10 to double
  %12 = fmul float %0, %1
  %13 = fpext float %12 to double
  %14 = fpext float %3 to double
  %15 = fsub double 1.000000e+00, %14
  %16 = tail call double @llvm.fmuladd.f64(double %13, double %15, double %11)
  %17 = fmul float %2, %3
  %18 = fpext float %17 to double
  %19 = fpext float %1 to double
  %20 = fsub double 1.000000e+00, %19
  %21 = tail call double @llvm.fmuladd.f64(double %18, double %20, double %16)
  %22 = fptrunc double %21 to float
  ret float %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc float @ModulusSubtract(float noundef %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #3 {
  %5 = fsub float %0, %2
  %6 = fcmp olt float %5, 0.000000e+00
  %7 = fadd float %5, 6.553500e+04
  %8 = select i1 %6, float %7, float %5
  %9 = fmul float %8, %1
  %10 = fmul float %9, %3
  %11 = fpext float %10 to double
  %12 = fmul float %0, %1
  %13 = fpext float %12 to double
  %14 = fpext float %3 to double
  %15 = fsub double 1.000000e+00, %14
  %16 = tail call double @llvm.fmuladd.f64(double %13, double %15, double %11)
  %17 = fmul float %2, %3
  %18 = fpext float %17 to double
  %19 = fpext float %1 to double
  %20 = fsub double 1.000000e+00, %19
  %21 = tail call double @llvm.fmuladd.f64(double %18, double %20, double %16)
  %22 = fptrunc double %21 to float
  ret float %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @Difference(float noundef %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #3 {
  %5 = fmul float %2, %3
  %6 = tail call float @llvm.fmuladd.f32(float %1, float %0, float %5)
  %7 = fpext float %6 to double
  %8 = fmul float %1, %3
  %9 = fpext float %8 to double
  %10 = fpext float %0 to double
  %11 = fpext float %2 to double
  %12 = tail call fastcc double @MagickMin(double noundef %10, double noundef %11) #14
  %13 = fmul double %9, -2.000000e+00
  %14 = tail call double @llvm.fmuladd.f64(double %13, double %12, double %7)
  %15 = fptrunc double %14 to float
  ret float %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @MagickMin(double noundef %0, double noundef %1) unnamed_addr #3 {
  %3 = fcmp olt double %0, %1
  %4 = select i1 %3, double %0, double %1
  ret double %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc float @Exclusion(float noundef %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #3 {
  %5 = fmul float %1, %2
  %6 = tail call float @llvm.fmuladd.f32(float %0, float %3, float %5)
  %7 = fpext float %6 to double
  %8 = fpext float %0 to double
  %9 = fpext float %2 to double
  %10 = fmul double %8, -2.000000e+00
  %11 = tail call double @llvm.fmuladd.f64(double %10, double %9, double %7)
  %12 = fpext float %3 to double
  %13 = fsub double 1.000000e+00, %12
  %14 = tail call double @llvm.fmuladd.f64(double %8, double %13, double %11)
  %15 = fpext float %1 to double
  %16 = fsub double 1.000000e+00, %15
  %17 = tail call double @llvm.fmuladd.f64(double %9, double %16, double %14)
  %18 = fptrunc double %17 to float
  ret float %18
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @Multiply(float noundef %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #3 {
  %5 = fmul float %0, %2
  %6 = fpext float %5 to double
  %7 = fpext float %0 to double
  %8 = fpext float %3 to double
  %9 = fsub double 1.000000e+00, %8
  %10 = tail call double @llvm.fmuladd.f64(double %7, double %9, double %6)
  %11 = fpext float %2 to double
  %12 = fpext float %1 to double
  %13 = fsub double 1.000000e+00, %12
  %14 = tail call double @llvm.fmuladd.f64(double %11, double %13, double %10)
  %15 = fptrunc double %14 to float
  ret float %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @Screen(float noundef %0, float noundef %1) unnamed_addr #3 {
  %3 = fadd float %0, %1
  %4 = fneg float %0
  %5 = tail call float @llvm.fmuladd.f32(float %4, float %1, float %3)
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc float @Divide(float noundef %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #3 {
  %5 = fpext float %0 to double
  %6 = tail call double @llvm.fabs.f64(double %5)
  %7 = fcmp olt double %6, 1.000000e-15
  %8 = fpext float %2 to double
  %9 = tail call double @llvm.fabs.f64(double %8)
  %10 = fcmp olt double %9, 1.000000e-15
  %11 = and i1 %7, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %4
  %13 = fpext float %3 to double
  %14 = fsub double 1.000000e+00, %13
  %15 = fpext float %1 to double
  %16 = fsub double 1.000000e+00, %15
  %17 = fmul double %16, %8
  %18 = tail call double @llvm.fmuladd.f64(double %5, double %14, double %17)
  br label %41

19:                                               ; preds = %4
  %20 = fcmp olt double %9, 1.000000e-15
  br i1 %20, label %21, label %30

21:                                               ; preds = %19
  %22 = fmul float %1, %3
  %23 = fpext float %22 to double
  %24 = fpext float %3 to double
  %25 = fsub double 1.000000e+00, %24
  %26 = tail call double @llvm.fmuladd.f64(double %5, double %25, double %23)
  %27 = fpext float %1 to double
  %28 = fsub double 1.000000e+00, %27
  %29 = tail call double @llvm.fmuladd.f64(double %8, double %28, double %26)
  br label %41

30:                                               ; preds = %19
  %31 = fmul float %0, %3
  %32 = fmul float %31, %3
  %33 = fdiv float %32, %2
  %34 = fpext float %33 to double
  %35 = fpext float %3 to double
  %36 = fsub double 1.000000e+00, %35
  %37 = tail call double @llvm.fmuladd.f64(double %5, double %36, double %34)
  %38 = fpext float %1 to double
  %39 = fsub double 1.000000e+00, %38
  %40 = tail call double @llvm.fmuladd.f64(double %8, double %39, double %37)
  br label %41

41:                                               ; preds = %30, %21, %12
  %42 = phi double [ %18, %12 ], [ %29, %21 ], [ %40, %30 ]
  %43 = fptrunc double %42 to float
  ret float %43
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc float @Darken(float noundef %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #3 {
  %5 = fcmp olt float %0, %2
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = tail call fastcc float @MagickOver_(float noundef %0, float noundef %1, float noundef %2, float noundef %3) #14
  br label %10

8:                                                ; preds = %4
  %9 = tail call fastcc float @MagickOver_(float noundef %2, float noundef %3, float noundef %0, float noundef %1) #14
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi float [ %7, %6 ], [ %9, %8 ]
  ret float %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @MagickMax(double noundef %0, double noundef %1) unnamed_addr #3 {
  %3 = fcmp ogt double %0, %1
  %4 = select i1 %3, double %0, double %1
  ret double %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc float @Lighten(float noundef %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #3 {
  %5 = fcmp ogt float %0, %2
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = tail call fastcc float @MagickOver_(float noundef %0, float noundef %1, float noundef %2, float noundef %3) #14
  br label %10

8:                                                ; preds = %4
  %9 = tail call fastcc float @MagickOver_(float noundef %2, float noundef %3, float noundef %0, float noundef %1) #14
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi float [ %7, %6 ], [ %9, %8 ]
  ret float %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @MagickPixelIntensity(ptr nocapture noundef readonly %0) unnamed_addr #11 {
  %2 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !59
  %4 = icmp eq i32 %3, 2
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %6 = load float, ptr %5, align 8, !tbaa !56
  br i1 %4, label %19, label %7

7:                                                ; preds = %1
  %8 = fpext float %6 to double
  %9 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %10 = load float, ptr %9, align 4, !tbaa !57
  %11 = fpext float %10 to double
  %12 = fmul double %11, 0x3FE6E29307AF20EA
  %13 = tail call double @llvm.fmuladd.f64(double %8, double 2.126560e-01, double %12)
  %14 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %15 = load float, ptr %14, align 8, !tbaa !54
  %16 = fpext float %15 to double
  %17 = tail call double @llvm.fmuladd.f64(double %16, double 7.218600e-02, double %13)
  %18 = fptrunc double %17 to float
  br label %19

19:                                               ; preds = %1, %7
  %20 = phi float [ %18, %7 ], [ %6, %1 ]
  ret float %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @Mathematics(float noundef %0, float noundef %1, float noundef %2, float noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #11 {
  %6 = load double, ptr %4, align 8, !tbaa !32
  %7 = fpext float %0 to double
  %8 = fmul double %6, %7
  %9 = fpext float %2 to double
  %10 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 1
  %11 = load double, ptr %10, align 8, !tbaa !52
  %12 = fmul double %11, %7
  %13 = fpext float %3 to double
  %14 = fmul double %12, %13
  %15 = tail call double @llvm.fmuladd.f64(double %8, double %9, double %14)
  %16 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 2
  %17 = load double, ptr %16, align 8, !tbaa !34
  %18 = fmul double %17, %9
  %19 = fpext float %1 to double
  %20 = tail call double @llvm.fmuladd.f64(double %18, double %19, double %15)
  %21 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 3
  %22 = load double, ptr %21, align 8, !tbaa !35
  %23 = fmul double %22, %19
  %24 = tail call double @llvm.fmuladd.f64(double %23, double %13, double %20)
  %25 = fsub double 1.000000e+00, %13
  %26 = tail call double @llvm.fmuladd.f64(double %7, double %25, double %24)
  %27 = fsub double 1.000000e+00, %19
  %28 = tail call double @llvm.fmuladd.f64(double %9, double %27, double %26)
  %29 = fptrunc double %28 to float
  ret float %29
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc float @ColorDodge(float noundef %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #3 {
  %5 = fmul float %1, %2
  %6 = tail call float @llvm.fmuladd.f32(float %0, float %3, float %5)
  %7 = fmul float %1, %3
  %8 = fcmp ult float %6, %7
  %9 = fmul float %5, %1
  %10 = fsub float %1, %0
  %11 = fdiv float %9, %10
  %12 = select i1 %8, float %11, float %7
  %13 = fpext float %12 to double
  %14 = fpext float %0 to double
  %15 = fpext float %3 to double
  %16 = fsub double 1.000000e+00, %15
  %17 = tail call double @llvm.fmuladd.f64(double %14, double %16, double %13)
  %18 = fpext float %2 to double
  %19 = fpext float %1 to double
  %20 = fsub double 1.000000e+00, %19
  %21 = tail call double @llvm.fmuladd.f64(double %18, double %20, double %17)
  %22 = fptrunc double %21 to float
  ret float %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc float @ColorBurn(float noundef %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #3 {
  %5 = fpext float %0 to double
  %6 = tail call double @llvm.fabs.f64(double %5)
  %7 = fcmp olt double %6, 1.000000e-15
  br i1 %7, label %8, label %20

8:                                                ; preds = %4
  %9 = fsub float %2, %3
  %10 = tail call float @llvm.fabs.f32(float %9)
  %11 = fpext float %10 to double
  %12 = fcmp olt double %11, 1.000000e-15
  br i1 %12, label %13, label %20

13:                                               ; preds = %8
  %14 = fmul float %1, %3
  %15 = fpext float %14 to double
  %16 = fpext float %2 to double
  %17 = fpext float %1 to double
  %18 = fsub double 1.000000e+00, %17
  %19 = tail call double @llvm.fmuladd.f64(double %16, double %18, double %15)
  br label %44

20:                                               ; preds = %8, %4
  %21 = fcmp olt double %5, 1.000000e-15
  br i1 %21, label %22, label %27

22:                                               ; preds = %20
  %23 = fpext float %2 to double
  %24 = fpext float %1 to double
  %25 = fsub double 1.000000e+00, %24
  %26 = fmul double %25, %23
  br label %44

27:                                               ; preds = %20
  %28 = fmul float %1, %3
  %29 = fpext float %28 to double
  %30 = fpext float %1 to double
  %31 = fpext float %3 to double
  %32 = fsub float %3, %2
  %33 = fmul float %32, %1
  %34 = fdiv float %33, %0
  %35 = fpext float %34 to double
  %36 = tail call fastcc double @MagickMin(double noundef %31, double noundef %35) #14
  %37 = fneg double %30
  %38 = tail call double @llvm.fmuladd.f64(double %37, double %36, double %29)
  %39 = fsub double 1.000000e+00, %31
  %40 = tail call double @llvm.fmuladd.f64(double %5, double %39, double %38)
  %41 = fpext float %2 to double
  %42 = fsub double 1.000000e+00, %30
  %43 = tail call double @llvm.fmuladd.f64(double %41, double %42, double %40)
  br label %44

44:                                               ; preds = %27, %22, %13
  %45 = phi double [ %19, %13 ], [ %26, %22 ], [ %43, %27 ]
  %46 = fptrunc double %45 to float
  ret float %46
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @LinearBurn(float noundef %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #3 {
  %5 = fadd float %0, %2
  %6 = fneg float %1
  %7 = tail call float @llvm.fmuladd.f32(float %6, float %3, float %5)
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc float @HardLight(float noundef %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #3 {
  %5 = fpext float %0 to double
  %6 = fmul double %5, 2.000000e+00
  %7 = fpext float %1 to double
  %8 = fcmp olt double %6, %7
  br i1 %8, label %9, label %17

9:                                                ; preds = %4
  %10 = fpext float %2 to double
  %11 = fpext float %3 to double
  %12 = fsub double 1.000000e+00, %11
  %13 = fmul double %12, %5
  %14 = tail call double @llvm.fmuladd.f64(double %6, double %10, double %13)
  %15 = fsub double 1.000000e+00, %7
  %16 = tail call double @llvm.fmuladd.f64(double %10, double %15, double %14)
  br label %32

17:                                               ; preds = %4
  %18 = fmul float %1, %3
  %19 = fpext float %18 to double
  %20 = fsub float %3, %2
  %21 = fpext float %20 to double
  %22 = fsub float %1, %0
  %23 = fpext float %22 to double
  %24 = fmul double %21, -2.000000e+00
  %25 = tail call double @llvm.fmuladd.f64(double %24, double %23, double %19)
  %26 = fpext float %3 to double
  %27 = fsub double 1.000000e+00, %26
  %28 = tail call double @llvm.fmuladd.f64(double %5, double %27, double %25)
  %29 = fpext float %2 to double
  %30 = fsub double 1.000000e+00, %7
  %31 = tail call double @llvm.fmuladd.f64(double %29, double %30, double %28)
  br label %32

32:                                               ; preds = %17, %9
  %33 = phi double [ %16, %9 ], [ %31, %17 ]
  %34 = fptrunc double %33 to float
  ret float %34
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc float @SoftLight(float noundef %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #12 {
  %5 = fdiv float %2, %3
  %6 = fpext float %0 to double
  %7 = fmul double %6, 2.000000e+00
  %8 = fpext float %1 to double
  %9 = fcmp olt double %7, %8
  br i1 %9, label %10, label %23

10:                                               ; preds = %4
  %11 = fpext float %2 to double
  %12 = fneg double %8
  %13 = tail call double @llvm.fmuladd.f64(double %6, double 2.000000e+00, double %12)
  %14 = fpext float %5 to double
  %15 = fsub double 1.000000e+00, %14
  %16 = tail call double @llvm.fmuladd.f64(double %13, double %15, double %8)
  %17 = fpext float %3 to double
  %18 = fsub double 1.000000e+00, %17
  %19 = fmul double %18, %6
  %20 = tail call double @llvm.fmuladd.f64(double %11, double %16, double %19)
  %21 = fsub double 1.000000e+00, %8
  %22 = tail call double @llvm.fmuladd.f64(double %11, double %21, double %20)
  br label %67

23:                                               ; preds = %4
  %24 = fcmp ogt double %7, %8
  br i1 %24, label %28, label %25

25:                                               ; preds = %23
  %26 = fpext float %3 to double
  %27 = fpext float %2 to double
  br label %51

28:                                               ; preds = %23
  %29 = fpext float %2 to double
  %30 = fmul double %29, 4.000000e+00
  %31 = fpext float %3 to double
  %32 = fcmp ugt double %30, %31
  br i1 %32, label %51, label %33

33:                                               ; preds = %28
  %34 = fmul float %1, %2
  %35 = fpext float %34 to double
  %36 = fneg double %8
  %37 = tail call double @llvm.fmuladd.f64(double %6, double 2.000000e+00, double %36)
  %38 = fmul double %37, %31
  %39 = fpext float %5 to double
  %40 = fmul double %39, 4.000000e+00
  %41 = tail call double @llvm.fmuladd.f64(double %39, double 4.000000e+00, double 1.000000e+00)
  %42 = fmul double %40, %41
  %43 = fadd double %39, -1.000000e+00
  %44 = fmul double %39, 7.000000e+00
  %45 = tail call double @llvm.fmuladd.f64(double %42, double %43, double %44)
  %46 = tail call double @llvm.fmuladd.f64(double %38, double %45, double %35)
  %47 = fsub double 1.000000e+00, %31
  %48 = tail call double @llvm.fmuladd.f64(double %6, double %47, double %46)
  %49 = fsub double 1.000000e+00, %8
  %50 = tail call double @llvm.fmuladd.f64(double %29, double %49, double %48)
  br label %67

51:                                               ; preds = %25, %28
  %52 = phi double [ %27, %25 ], [ %29, %28 ]
  %53 = phi double [ %26, %25 ], [ %31, %28 ]
  %54 = fmul float %1, %2
  %55 = fpext float %54 to double
  %56 = fneg double %8
  %57 = tail call double @llvm.fmuladd.f64(double %6, double 2.000000e+00, double %56)
  %58 = fmul double %57, %53
  %59 = fpext float %5 to double
  %60 = tail call double @pow(double noundef %59, double noundef 5.000000e-01) #16
  %61 = fsub double %60, %59
  %62 = tail call double @llvm.fmuladd.f64(double %58, double %61, double %55)
  %63 = fsub double 1.000000e+00, %53
  %64 = tail call double @llvm.fmuladd.f64(double %6, double %63, double %62)
  %65 = fsub double 1.000000e+00, %8
  %66 = tail call double @llvm.fmuladd.f64(double %52, double %65, double %64)
  br label %67

67:                                               ; preds = %51, %33, %10
  %68 = phi double [ %22, %10 ], [ %50, %33 ], [ %66, %51 ]
  %69 = fptrunc double %68 to float
  ret float %69
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @LinearLight(float noundef %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #3 {
  %5 = fsub float %0, %1
  %6 = tail call float @llvm.fmuladd.f32(float %5, float %3, float %0)
  %7 = fadd float %6, %2
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc float @PegtopLight(float noundef %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #3 {
  %5 = fpext float %3 to double
  %6 = tail call double @llvm.fabs.f64(double %5)
  %7 = fcmp olt double %6, 1.000000e-15
  br i1 %7, label %23, label %8

8:                                                ; preds = %4
  %9 = fmul float %2, %2
  %10 = fpext float %9 to double
  %11 = fpext float %1 to double
  %12 = fpext float %0 to double
  %13 = tail call double @llvm.fmuladd.f64(double %12, double -2.000000e+00, double %11)
  %14 = fmul double %13, %10
  %15 = fdiv double %14, %5
  %16 = fpext float %2 to double
  %17 = tail call double @llvm.fmuladd.f64(double %16, double 2.000000e+00, double 1.000000e+00)
  %18 = fsub double %17, %5
  %19 = tail call double @llvm.fmuladd.f64(double %12, double %18, double %15)
  %20 = fsub double 1.000000e+00, %11
  %21 = tail call double @llvm.fmuladd.f64(double %16, double %20, double %19)
  %22 = fptrunc double %21 to float
  br label %23

23:                                               ; preds = %4, %8
  %24 = phi float [ %22, %8 ], [ %0, %4 ]
  ret float %24
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc float @VividLight(float noundef %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #3 {
  %5 = fpext float %1 to double
  %6 = tail call double @llvm.fabs.f64(double %5)
  %7 = fcmp olt double %6, 1.000000e-15
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = fsub float %0, %1
  %10 = tail call float @llvm.fabs.f32(float %9)
  %11 = fpext float %10 to double
  %12 = fcmp olt double %11, 1.000000e-15
  br i1 %12, label %13, label %23

13:                                               ; preds = %8, %4
  %14 = fmul float %1, %3
  %15 = fpext float %14 to double
  %16 = fpext float %0 to double
  %17 = fpext float %3 to double
  %18 = fsub double 1.000000e+00, %17
  %19 = tail call double @llvm.fmuladd.f64(double %16, double %18, double %15)
  %20 = fpext float %2 to double
  %21 = fsub double 1.000000e+00, %5
  %22 = tail call double @llvm.fmuladd.f64(double %20, double %21, double %19)
  br label %54

23:                                               ; preds = %8
  %24 = fmul float %0, 2.000000e+00
  %25 = fcmp ugt float %24, %1
  %26 = fpext float %2 to double
  %27 = fsub double 1.000000e+00, %5
  br i1 %25, label %41, label %28

28:                                               ; preds = %23
  %29 = fpext float %3 to double
  %30 = fsub float %2, %3
  %31 = fmul float %30, %1
  %32 = fpext float %31 to double
  %33 = fpext float %0 to double
  %34 = fmul double %33, 2.000000e+00
  %35 = fdiv double %32, %34
  %36 = fadd double %35, %29
  %37 = fsub double 1.000000e+00, %29
  %38 = fmul double %37, %33
  %39 = tail call double @llvm.fmuladd.f64(double %5, double %36, double %38)
  %40 = tail call double @llvm.fmuladd.f64(double %26, double %27, double %39)
  br label %54

41:                                               ; preds = %23
  %42 = fmul float %1, %2
  %43 = fmul float %42, %1
  %44 = fpext float %43 to double
  %45 = fsub float %1, %0
  %46 = fpext float %45 to double
  %47 = fmul double %46, 2.000000e+00
  %48 = fdiv double %44, %47
  %49 = fpext float %0 to double
  %50 = fpext float %3 to double
  %51 = fsub double 1.000000e+00, %50
  %52 = tail call double @llvm.fmuladd.f64(double %49, double %51, double %48)
  %53 = tail call double @llvm.fmuladd.f64(double %26, double %27, double %52)
  br label %54

54:                                               ; preds = %41, %28, %13
  %55 = phi double [ %22, %13 ], [ %40, %28 ], [ %53, %41 ]
  %56 = fptrunc double %55 to float
  ret float %56
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc float @PinLight(float noundef %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #3 {
  %5 = fmul float %1, %2
  %6 = fneg float %1
  %7 = tail call float @llvm.fmuladd.f32(float %0, float 2.000000e+00, float %6)
  %8 = fmul float %7, %3
  %9 = fcmp olt float %5, %8
  br i1 %9, label %10, label %22

10:                                               ; preds = %4
  %11 = fpext float %0 to double
  %12 = fpext float %3 to double
  %13 = fadd double %12, 1.000000e+00
  %14 = fmul float %1, %3
  %15 = fpext float %14 to double
  %16 = fneg double %15
  %17 = tail call double @llvm.fmuladd.f64(double %11, double %13, double %16)
  %18 = fpext float %2 to double
  %19 = fpext float %1 to double
  %20 = fsub double 1.000000e+00, %19
  %21 = tail call double @llvm.fmuladd.f64(double %18, double %20, double %17)
  br label %39

22:                                               ; preds = %4
  %23 = fmul float %0, 2.000000e+00
  %24 = fmul float %23, %3
  %25 = fcmp ogt float %5, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = tail call float @llvm.fmuladd.f32(float %0, float %3, float %0)
  %28 = fpext float %27 to double
  %29 = fpext float %2 to double
  %30 = fpext float %1 to double
  %31 = fsub double 1.000000e+00, %30
  %32 = tail call double @llvm.fmuladd.f64(double %29, double %31, double %28)
  br label %39

33:                                               ; preds = %22
  %34 = fpext float %0 to double
  %35 = fpext float %3 to double
  %36 = fsub double 1.000000e+00, %35
  %37 = fpext float %2 to double
  %38 = tail call double @llvm.fmuladd.f64(double %34, double %36, double %37)
  br label %39

39:                                               ; preds = %33, %26, %10
  %40 = phi double [ %21, %10 ], [ %32, %26 ], [ %38, %33 ]
  %41 = fptrunc double %40 to float
  ret float %41
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @Threshold(float noundef %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #3 {
  %5 = fsub float %0, %1
  %6 = fmul float %5, 2.000000e+00
  %7 = tail call float @llvm.fabs.f32(float %6)
  %8 = fcmp olt float %7, %2
  %9 = tail call float @llvm.fmuladd.f32(float %5, float %3, float %1)
  %10 = select i1 %8, float %1, float %9
  ret float %10
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: hot optsize
declare float @DecodePixelGamma(float noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #13

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { hot optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { optsize }
attributes #15 = { nounwind }
attributes #16 = { nounwind optsize }
attributes #17 = { hot nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{i32 0, i32 2}
!6 = !{!7, !8, i64 12976}
!7 = !{!"_Image", !8, i64 0, !8, i64 4, !8, i64 8, !11, i64 16, !8, i64 24, !8, i64 28, !8, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !12, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !15, i64 104, !16, i64 112, !8, i64 208, !12, i64 216, !8, i64 224, !12, i64 232, !12, i64 240, !12, i64 248, !11, i64 256, !15, i64 264, !15, i64 272, !18, i64 280, !18, i64 312, !18, i64 344, !15, i64 376, !15, i64 384, !15, i64 392, !8, i64 400, !8, i64 404, !8, i64 408, !8, i64 412, !8, i64 416, !8, i64 420, !12, i64 424, !11, i64 432, !11, i64 440, !11, i64 448, !11, i64 456, !11, i64 464, !11, i64 472, !19, i64 480, !20, i64 504, !12, i64 568, !12, i64 576, !12, i64 584, !12, i64 592, !12, i64 600, !12, i64 608, !9, i64 616, !9, i64 4712, !9, i64 8808, !11, i64 12904, !11, i64 12912, !22, i64 12920, !8, i64 12976, !11, i64 12984, !12, i64 12992, !23, i64 13000, !23, i64 13032, !12, i64 13064, !11, i64 13072, !11, i64 13080, !12, i64 13088, !12, i64 13096, !12, i64 13104, !8, i64 13112, !8, i64 13116, !13, i64 13120, !12, i64 13128, !18, i64 13136, !12, i64 13168, !12, i64 13176, !8, i64 13184, !8, i64 13188, !24, i64 13192, !8, i64 13200, !11, i64 13208, !11, i64 13216, !8, i64 13224, !11, i64 13232}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"long", !9, i64 0}
!12 = !{!"any pointer", !9, i64 0}
!13 = !{!"_PixelPacket", !14, i64 0, !14, i64 2, !14, i64 4, !14, i64 6}
!14 = !{!"short", !9, i64 0}
!15 = !{!"double", !9, i64 0}
!16 = !{!"_ChromaticityInfo", !17, i64 0, !17, i64 24, !17, i64 48, !17, i64 72}
!17 = !{!"_PrimaryInfo", !15, i64 0, !15, i64 8, !15, i64 16}
!18 = !{!"_RectangleInfo", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!19 = !{!"_ErrorInfo", !15, i64 0, !15, i64 8, !15, i64 16}
!20 = !{!"_TimerInfo", !21, i64 0, !21, i64 24, !8, i64 48, !11, i64 56}
!21 = !{!"_Timer", !15, i64 0, !15, i64 8, !15, i64 16}
!22 = !{!"_ExceptionInfo", !8, i64 0, !8, i64 4, !12, i64 8, !12, i64 16, !12, i64 24, !8, i64 32, !12, i64 40, !11, i64 48}
!23 = !{!"_ProfileInfo", !12, i64 0, !11, i64 8, !12, i64 16, !11, i64 24}
!24 = !{!"long long", !9, i64 0}
!25 = !{!7, !8, i64 4}
!26 = !{!7, !8, i64 32}
!27 = !{!7, !11, i64 40}
!28 = !{!7, !11, i64 48}
!29 = !{!7, !12, i64 568}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!33, !15, i64 0}
!33 = !{!"_GeometryInfo", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32}
!34 = !{!33, !15, i64 16}
!35 = !{!33, !15, i64 24}
!36 = !{i64 0, i64 4, !37, i64 4, i64 4, !37, i64 8, i64 4, !37, i64 16, i64 8, !38, i64 24, i64 8, !39, i64 32, i64 4, !40, i64 36, i64 4, !40, i64 40, i64 4, !40, i64 44, i64 4, !40, i64 48, i64 4, !40}
!37 = !{!8, !8, i64 0}
!38 = !{!15, !15, i64 0}
!39 = !{!11, !11, i64 0}
!40 = !{!41, !41, i64 0}
!41 = !{!"float", !9, i64 0}
!42 = !{!13, !14, i64 0}
!43 = !{!13, !14, i64 4}
!44 = !{!13, !14, i64 2}
!45 = distinct !{!45, !31}
!46 = distinct !{!46, !31}
!47 = !{!48, !41, i64 44}
!48 = !{!"_MagickPixelPacket", !8, i64 0, !8, i64 4, !8, i64 8, !15, i64 16, !11, i64 24, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48}
!49 = !{!13, !14, i64 6}
!50 = distinct !{!50, !31}
!51 = distinct !{!51, !31}
!52 = !{!33, !15, i64 8}
!53 = !{!14, !14, i64 0}
!54 = !{!48, !41, i64 40}
!55 = !{!48, !41, i64 48}
!56 = !{!48, !41, i64 32}
!57 = !{!48, !41, i64 36}
!58 = !{!48, !8, i64 8}
!59 = !{!48, !8, i64 4}
!60 = distinct !{!60, !31}
!61 = distinct !{!61, !31}
!62 = !{!7, !12, i64 576}
!63 = !{!7, !8, i64 0}
!64 = !{!7, !8, i64 416}
!65 = !{!7, !11, i64 13152}
!66 = !{!7, !11, i64 13160}
!67 = distinct !{!67, !31}
!68 = distinct !{!68, !31}
!69 = distinct !{!69, !31}
!70 = distinct !{!70, !31}
