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

; Function Attrs: nounwind uwtable
define dso_local i32 @CompositeImage(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = tail call i32 @CompositeImageChannel(ptr noundef %0, i32 noundef 134217719, i32 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4), !range !34
  ret i32 %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @CompositeImageChannel(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 {
  %7 = alloca [4096 x i8], align 16
  %8 = alloca [4096 x i8], align 16
  %9 = alloca %struct._GeometryInfo, align 8
  %10 = alloca %struct._MagickPixelPacket, align 8
  %11 = alloca %struct._MagickPixelPacket, align 8
  %12 = alloca %struct._MagickPixelPacket, align 8
  %13 = alloca %struct._MagickPixelPacket, align 8
  %14 = alloca %struct._MagickPixelPacket, align 8
  %15 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #10
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %17 = load i32, ptr %16, align 8, !tbaa !35
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %21 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1685, ptr noundef nonnull @.str.2, ptr noundef nonnull %20) #10
  br label %22

22:                                               ; preds = %19, %6
  %23 = tail call i32 @SetImageStorageClass(ptr noundef %0, i32 noundef 1) #10
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %6388, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %27 = tail call ptr @CloneImage(ptr noundef %3, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef nonnull %26) #10
  %28 = icmp eq ptr %27, null
  br i1 %28, label %6388, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !54
  switch i32 %31, label %34 [
    i32 19, label %32
    i32 17, label %32
    i32 2, label %32
  ]

32:                                               ; preds = %29, %29, %29
  %33 = tail call i32 @SetImageColorspace(ptr noundef %0, i32 noundef 13) #10
  br label %34

34:                                               ; preds = %29, %32
  %35 = load i32, ptr %30, align 4, !tbaa !54
  %36 = tail call i32 @SetImageColorspace(ptr noundef %27, i32 noundef %35) #10
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %10) #10
  switch i32 %2, label %819 [
    i32 7, label %37
    i32 48, label %37
    i32 32, label %37
    i32 49, label %37
    i32 39, label %37
    i32 50, label %37
    i32 23, label %37
    i32 21, label %37
    i32 40, label %38
    i32 13, label %49
    i32 17, label %125
    i32 6, label %125
    i32 57, label %131
    i32 27, label %405
    i32 56, label %405
    i32 28, label %732
    i32 4, label %765
    i32 63, label %785
    i32 37, label %790
    i32 53, label %805
  ]

37:                                               ; preds = %34, %34, %34, %34, %34, %34, %34, %34
  br label %819

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %40 = load i32, ptr %39, align 8, !tbaa !55
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %819

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct._Image, ptr %27, i64 0, i32 6
  %44 = load i32, ptr %43, align 8, !tbaa !55
  %45 = icmp eq i32 %44, 0
  %46 = or i64 %5, %4
  %47 = icmp sgt i64 %46, -1
  %48 = and i1 %47, %45
  br i1 %48, label %52, label %819

49:                                               ; preds = %34
  %50 = or i64 %5, %4
  %51 = icmp sgt i64 %50, -1
  br i1 %51, label %52, label %819

52:                                               ; preds = %42, %49
  %53 = getelementptr inbounds %struct._Image, ptr %27, i64 0, i32 7
  %54 = load i64, ptr %53, align 8, !tbaa !56
  %55 = add nsw i64 %54, %4
  %56 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %57 = load i64, ptr %56, align 8, !tbaa !56
  %58 = icmp slt i64 %55, %57
  br i1 %58, label %59, label %819

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct._Image, ptr %27, i64 0, i32 8
  %61 = load i64, ptr %60, align 8, !tbaa !57
  %62 = add nsw i64 %61, %5
  %63 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %64 = load i64, ptr %63, align 8, !tbaa !57
  %65 = icmp slt i64 %62, %64
  br i1 %65, label %66, label %819

66:                                               ; preds = %59
  %67 = call ptr @AcquireVirtualCacheView(ptr noundef %27, ptr noundef nonnull %26) #10
  %68 = call ptr @AcquireAuthenticCacheView(ptr noundef %0, ptr noundef nonnull %26) #10
  %69 = load i64, ptr %60, align 8, !tbaa !57
  %70 = icmp sgt i64 %69, 0
  br i1 %70, label %71, label %120

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %73 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %74 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %75

75:                                               ; preds = %71, %115
  %76 = phi i32 [ 1, %71 ], [ %116, %115 ]
  %77 = phi i64 [ 0, %71 ], [ %117, %115 ]
  %78 = icmp eq i32 %76, 0
  br i1 %78, label %115, label %79

79:                                               ; preds = %75
  %80 = load i64, ptr %53, align 8, !tbaa !56
  %81 = call ptr @GetCacheViewVirtualPixels(ptr noundef %67, i64 noundef 0, i64 noundef %77, i64 noundef %80, i64 noundef 1, ptr noundef nonnull %26) #11
  %82 = add nsw i64 %77, %5
  %83 = load i64, ptr %53, align 8, !tbaa !56
  %84 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %68, i64 noundef %4, i64 noundef %82, i64 noundef %83, i64 noundef 1, ptr noundef nonnull %26) #11
  %85 = icmp eq ptr %81, null
  %86 = icmp eq ptr %84, null
  %87 = select i1 %85, i1 true, i1 %86
  br i1 %87, label %115, label %88

88:                                               ; preds = %79
  %89 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %67) #10
  %90 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %68) #10
  %91 = load i64, ptr %53, align 8, !tbaa !56
  %92 = shl i64 %91, 3
  %93 = call ptr @CopyMagickMemory(ptr noundef %84, ptr noundef %81, i64 noundef %92) #10
  %94 = icmp ne ptr %90, null
  %95 = icmp ne ptr %89, null
  %96 = select i1 %94, i1 %95, i1 false
  br i1 %96, label %97, label %101

97:                                               ; preds = %88
  %98 = load i64, ptr %53, align 8, !tbaa !56
  %99 = shl i64 %98, 1
  %100 = call ptr @CopyMagickMemory(ptr noundef nonnull %90, ptr noundef nonnull %89, i64 noundef %99) #10
  br label %101

101:                                              ; preds = %97, %88
  %102 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %68, ptr noundef nonnull %26) #11
  %103 = icmp ne i32 %102, 0
  %104 = zext i1 %103 to i32
  %105 = load ptr, ptr %72, align 8, !tbaa !58
  %106 = icmp eq ptr %105, null
  br i1 %106, label %115, label %107

107:                                              ; preds = %101
  %108 = load i64, ptr %63, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %8) #10
  %109 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %8, i64 noundef 4096, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.3, ptr noundef nonnull %73) #10
  %110 = load ptr, ptr %72, align 8, !tbaa !58
  %111 = load ptr, ptr %74, align 8, !tbaa !59
  %112 = call i32 %110(ptr noundef nonnull %8, i64 noundef %77, i64 noundef %108, ptr noundef %111) #10
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %8) #10
  %113 = icmp eq i32 %112, 0
  %114 = select i1 %113, i32 0, i32 %104
  br label %115

115:                                              ; preds = %101, %107, %79, %75
  %116 = phi i32 [ 0, %75 ], [ 0, %79 ], [ %114, %107 ], [ %104, %101 ]
  %117 = add nuw nsw i64 %77, 1
  %118 = load i64, ptr %60, align 8, !tbaa !57
  %119 = icmp slt i64 %117, %118
  br i1 %119, label %75, label %120, !llvm.loop !60

120:                                              ; preds = %115, %66
  %121 = phi i32 [ 1, %66 ], [ %116, %115 ]
  %122 = call ptr @DestroyCacheView(ptr noundef %67) #10
  %123 = call ptr @DestroyCacheView(ptr noundef %68) #10
  %124 = call ptr @DestroyImage(ptr noundef %27) #10
  br label %6388

125:                                              ; preds = %34, %34
  %126 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %127 = load i32, ptr %126, align 8, !tbaa !55
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %819

129:                                              ; preds = %125
  %130 = call i32 @SetImageAlphaChannel(ptr noundef %0, i32 noundef 6) #10
  br label %819

131:                                              ; preds = %34
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %11) #10
  %132 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %133 = load i64, ptr %132, align 8, !tbaa !56
  %134 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %135 = load i64, ptr %134, align 8, !tbaa !57
  %136 = call ptr @CloneImage(ptr noundef %0, i64 noundef %133, i64 noundef %135, i32 noundef 1, ptr noundef nonnull %26) #10
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %140

138:                                              ; preds = %131
  %139 = call ptr @DestroyImage(ptr noundef %27) #10
  br label %401

140:                                              ; preds = %131
  call void @SetGeometryInfo(ptr noundef nonnull %9) #10
  %141 = call ptr @GetImageArtifact(ptr noundef %27, ptr noundef nonnull @.str.4) #10
  %142 = icmp eq ptr %141, null
  br i1 %142, label %145, label %143

143:                                              ; preds = %140
  %144 = call i32 @ParseGeometry(ptr noundef nonnull %141, ptr noundef nonnull %9) #10
  br label %145

145:                                              ; preds = %143, %140
  %146 = phi i32 [ %144, %143 ], [ 0, %140 ]
  %147 = and i32 %146, 4
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %145
  %150 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %26, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1857, i32 noundef 310, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, ptr noundef %141) #10
  %151 = call ptr @DestroyImage(ptr noundef %27) #10
  %152 = call ptr @DestroyImage(ptr noundef nonnull %136) #10
  br label %401

153:                                              ; preds = %145
  %154 = load double, ptr %9, align 8, !tbaa !63
  %155 = fmul double %154, 2.000000e+00
  %156 = fptrunc double %155 to float
  %157 = and i32 %146, 8
  %158 = icmp eq i32 %157, 0
  %159 = getelementptr inbounds %struct._GeometryInfo, ptr %9, i64 0, i32 1
  %160 = load double, ptr %159, align 8
  %161 = fmul double %160, 2.000000e+00
  %162 = fptrunc double %161 to float
  %163 = select i1 %158, float %156, float %162
  %164 = fpext float %156 to double
  %165 = fpext float %163 to double
  %166 = and i32 %146, 1
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %185, label %168

168:                                              ; preds = %153
  %169 = getelementptr inbounds %struct._GeometryInfo, ptr %9, i64 0, i32 2
  %170 = load double, ptr %169, align 8, !tbaa !65
  %171 = fmul double %170, 0x400921FB54442D18
  %172 = fdiv double %171, 1.800000e+02
  %173 = fptrunc double %172 to float
  %174 = fpext float %173 to double
  %175 = call double @cos(double noundef %174) #10
  %176 = fmul double %175, %164
  %177 = call double @sin(double noundef %174) #10
  %178 = fmul double %177, %164
  %179 = fneg float %163
  %180 = fpext float %179 to double
  %181 = call double @sin(double noundef %174) #10
  %182 = fmul double %181, %180
  %183 = call double @cos(double noundef %174) #10
  %184 = fmul double %183, %165
  br label %185

185:                                              ; preds = %168, %153
  %186 = phi double [ %184, %168 ], [ %165, %153 ]
  %187 = phi double [ %178, %168 ], [ 0.000000e+00, %153 ]
  %188 = phi double [ %182, %168 ], [ 0.000000e+00, %153 ]
  %189 = phi double [ %176, %168 ], [ %164, %153 ]
  %190 = and i32 %146, 2
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %207, label %192

192:                                              ; preds = %185
  %193 = getelementptr inbounds %struct._GeometryInfo, ptr %9, i64 0, i32 2
  %194 = load double, ptr %193, align 8, !tbaa !65
  %195 = fmul double %194, 0x400921FB54442D18
  %196 = fdiv double %195, 1.800000e+02
  %197 = fptrunc double %196 to float
  %198 = getelementptr inbounds %struct._GeometryInfo, ptr %9, i64 0, i32 3
  %199 = load double, ptr %198, align 8, !tbaa !66
  %200 = fmul double %199, 0x400921FB54442D18
  %201 = fdiv double %200, 1.800000e+02
  %202 = fpext float %197 to double
  %203 = fsub double %201, %202
  %204 = fptrunc double %203 to float
  %205 = fpext float %204 to double
  %206 = fpext float %197 to double
  br label %207

207:                                              ; preds = %192, %185
  %208 = phi double [ %205, %192 ], [ 0.000000e+00, %185 ]
  %209 = phi double [ %206, %192 ], [ 0.000000e+00, %185 ]
  %210 = call ptr @AcquireResampleFilter(ptr noundef %0, ptr noundef nonnull %26) #10
  call void @SetResampleFilter(ptr noundef %210, i32 noundef 8, double noundef 1.000000e+00) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %11, ptr noundef nonnull align 8 dereferenceable(56) %10, i64 56, i1 false), !tbaa.struct !67
  %211 = call ptr @AcquireVirtualCacheView(ptr noundef %27, ptr noundef nonnull %26) #10
  %212 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %136, ptr noundef nonnull %26) #10
  %213 = getelementptr inbounds %struct._Image, ptr %27, i64 0, i32 8
  %214 = load i64, ptr %213, align 8, !tbaa !57
  %215 = icmp sgt i64 %214, 0
  br i1 %215, label %216, label %396

216:                                              ; preds = %207
  %217 = getelementptr inbounds %struct._Image, ptr %27, i64 0, i32 7
  %218 = getelementptr inbounds %struct._Image, ptr %136, i64 0, i32 7
  %219 = call double @llvm.fabs.f64(double %208)
  %220 = fcmp ogt double %219, 1.000000e-15
  %221 = fmul double %208, 0x3EF0001000100010
  %222 = fneg float %163
  %223 = fpext float %222 to double
  %224 = sitofp i64 %4 to double
  %225 = sitofp i64 %5 to double
  %226 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 5
  %227 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 6
  %228 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 7
  %229 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 8
  %230 = getelementptr inbounds %struct._Image, ptr %136, i64 0, i32 1
  %231 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 9
  br label %236

232:                                              ; preds = %390
  %233 = add nuw nsw i64 %241, 1
  %234 = load i64, ptr %213, align 8, !tbaa !57
  %235 = icmp slt i64 %233, %234
  br i1 %235, label %236, label %396, !llvm.loop !73

236:                                              ; preds = %216, %232
  %237 = phi double [ %189, %216 ], [ %395, %232 ]
  %238 = phi double [ %188, %216 ], [ %394, %232 ]
  %239 = phi double [ %187, %216 ], [ %393, %232 ]
  %240 = phi double [ %186, %216 ], [ %392, %232 ]
  %241 = phi i64 [ 0, %216 ], [ %233, %232 ]
  %242 = add nsw i64 %241, %5
  %243 = icmp slt i64 %242, 0
  br i1 %243, label %390, label %244

244:                                              ; preds = %236
  %245 = load i64, ptr %134, align 8, !tbaa !57
  %246 = icmp slt i64 %242, %245
  br i1 %246, label %247, label %390

247:                                              ; preds = %244
  %248 = load i64, ptr %217, align 8, !tbaa !56
  %249 = call ptr @GetCacheViewVirtualPixels(ptr noundef %211, i64 noundef 0, i64 noundef %241, i64 noundef %248, i64 noundef 1, ptr noundef nonnull %26) #11
  %250 = load i64, ptr %218, align 8, !tbaa !56
  %251 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %212, i64 noundef 0, i64 noundef %241, i64 noundef %250, i64 noundef 1, ptr noundef nonnull %26) #11
  %252 = icmp eq ptr %249, null
  %253 = icmp eq ptr %251, null
  %254 = select i1 %252, i1 true, i1 %253
  br i1 %254, label %390, label %255

255:                                              ; preds = %247
  %256 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %212) #10
  %257 = load i64, ptr %217, align 8, !tbaa !56
  %258 = icmp sgt i64 %257, 0
  br i1 %258, label %259, label %383

259:                                              ; preds = %255
  %260 = sitofp i64 %241 to double
  %261 = fadd double %225, %260
  %262 = icmp ne ptr %256, null
  %263 = icmp eq ptr %256, null
  br label %264

264:                                              ; preds = %259, %373
  %265 = phi i64 [ 0, %259 ], [ %380, %373 ]
  %266 = phi ptr [ %251, %259 ], [ %378, %373 ]
  %267 = phi ptr [ %249, %259 ], [ %379, %373 ]
  %268 = phi double [ %237, %259 ], [ %377, %373 ]
  %269 = phi double [ %238, %259 ], [ %376, %373 ]
  %270 = phi double [ %239, %259 ], [ %375, %373 ]
  %271 = phi double [ %240, %259 ], [ %374, %373 ]
  %272 = add nsw i64 %265, %4
  %273 = icmp slt i64 %272, 0
  br i1 %273, label %373, label %274

274:                                              ; preds = %264
  %275 = load i64, ptr %132, align 8, !tbaa !56
  %276 = icmp slt i64 %272, %275
  br i1 %276, label %277, label %373

277:                                              ; preds = %274
  br i1 %220, label %278, label %292

278:                                              ; preds = %277
  %279 = load i16, ptr %267, align 2, !tbaa !74
  %280 = uitofp i16 %279 to double
  %281 = call double @llvm.fmuladd.f64(double %221, double %280, double %209)
  %282 = fptrunc double %281 to float
  %283 = fpext float %282 to double
  %284 = call double @cos(double noundef %283) #10
  %285 = fmul double %284, %164
  %286 = call double @sin(double noundef %283) #10
  %287 = fmul double %286, %164
  %288 = call double @sin(double noundef %283) #10
  %289 = fmul double %288, %223
  %290 = call double @cos(double noundef %283) #10
  %291 = fmul double %290, %165
  br label %292

292:                                              ; preds = %278, %277
  %293 = phi double [ %291, %278 ], [ %271, %277 ]
  %294 = phi double [ %287, %278 ], [ %270, %277 ]
  %295 = phi double [ %289, %278 ], [ %269, %277 ]
  %296 = phi double [ %285, %278 ], [ %268, %277 ]
  %297 = fmul double %296, 0x3EF0001000100010
  %298 = getelementptr inbounds %struct._PixelPacket, ptr %267, i64 0, i32 2
  %299 = load i16, ptr %298, align 2, !tbaa !75
  %300 = uitofp i16 %299 to double
  %301 = fmul double %297, %300
  %302 = fmul double %295, 0x3EF0001000100010
  %303 = getelementptr inbounds %struct._PixelPacket, ptr %267, i64 0, i32 1
  %304 = load i16, ptr %303, align 2, !tbaa !76
  %305 = uitofp i16 %304 to double
  %306 = fmul double %302, %305
  %307 = fmul double %294, 0x3EF0001000100010
  %308 = fmul double %307, %300
  %309 = fmul double %293, 0x3EF0001000100010
  %310 = fmul double %309, %305
  call void @ScaleResampleFilter(ptr noundef %210, double noundef %301, double noundef %306, double noundef %308, double noundef %310) #10
  %311 = sitofp i64 %265 to double
  %312 = fadd double %224, %311
  %313 = call i32 @ResamplePixelColor(ptr noundef %210, double noundef %312, double noundef %261, ptr noundef nonnull %11) #10
  %314 = getelementptr inbounds i16, ptr %256, i64 %265
  %315 = load float, ptr %226, align 8, !tbaa !77
  %316 = fcmp ugt float %315, 0.000000e+00
  br i1 %316, label %317, label %322

317:                                              ; preds = %292
  %318 = fcmp ult float %315, 6.553500e+04
  br i1 %318, label %319, label %322

319:                                              ; preds = %317
  %320 = fadd float %315, 5.000000e-01
  %321 = fptoui float %320 to i16
  br label %322

322:                                              ; preds = %319, %317, %292
  %323 = phi i16 [ %321, %319 ], [ 0, %292 ], [ -1, %317 ]
  %324 = getelementptr inbounds %struct._PixelPacket, ptr %266, i64 0, i32 2
  store i16 %323, ptr %324, align 2, !tbaa !75
  %325 = load float, ptr %227, align 4, !tbaa !79
  %326 = fcmp ugt float %325, 0.000000e+00
  br i1 %326, label %327, label %332

327:                                              ; preds = %322
  %328 = fcmp ult float %325, 6.553500e+04
  br i1 %328, label %329, label %332

329:                                              ; preds = %327
  %330 = fadd float %325, 5.000000e-01
  %331 = fptoui float %330 to i16
  br label %332

332:                                              ; preds = %329, %327, %322
  %333 = phi i16 [ %331, %329 ], [ 0, %322 ], [ -1, %327 ]
  %334 = getelementptr inbounds %struct._PixelPacket, ptr %266, i64 0, i32 1
  store i16 %333, ptr %334, align 2, !tbaa !76
  %335 = load float, ptr %228, align 8, !tbaa !80
  %336 = fcmp ugt float %335, 0.000000e+00
  br i1 %336, label %337, label %342

337:                                              ; preds = %332
  %338 = fcmp ult float %335, 6.553500e+04
  br i1 %338, label %339, label %342

339:                                              ; preds = %337
  %340 = fadd float %335, 5.000000e-01
  %341 = fptoui float %340 to i16
  br label %342

342:                                              ; preds = %339, %337, %332
  %343 = phi i16 [ %341, %339 ], [ 0, %332 ], [ -1, %337 ]
  store i16 %343, ptr %266, align 2, !tbaa !74
  %344 = load float, ptr %229, align 4, !tbaa !81
  %345 = fcmp ugt float %344, 0.000000e+00
  br i1 %345, label %346, label %351

346:                                              ; preds = %342
  %347 = fcmp ult float %344, 6.553500e+04
  br i1 %347, label %348, label %351

348:                                              ; preds = %346
  %349 = fadd float %344, 5.000000e-01
  %350 = fptoui float %349 to i16
  br label %351

351:                                              ; preds = %348, %346, %342
  %352 = phi i16 [ %350, %348 ], [ 0, %342 ], [ -1, %346 ]
  %353 = getelementptr inbounds %struct._PixelPacket, ptr %266, i64 0, i32 3
  store i16 %352, ptr %353, align 2, !tbaa !82
  %354 = load i32, ptr %230, align 4, !tbaa !54
  %355 = icmp eq i32 %354, 12
  br i1 %355, label %360, label %356

356:                                              ; preds = %351
  %357 = load i32, ptr %136, align 8, !tbaa !83
  %358 = icmp eq i32 %357, 2
  %359 = and i1 %262, %358
  br i1 %359, label %361, label %371

360:                                              ; preds = %351
  br i1 %263, label %371, label %361

361:                                              ; preds = %360, %356
  %362 = load float, ptr %231, align 8, !tbaa !84
  %363 = fcmp ugt float %362, 0.000000e+00
  br i1 %363, label %364, label %369

364:                                              ; preds = %361
  %365 = fcmp ult float %362, 6.553500e+04
  br i1 %365, label %366, label %369

366:                                              ; preds = %364
  %367 = fadd float %362, 5.000000e-01
  %368 = fptoui float %367 to i16
  br label %369

369:                                              ; preds = %366, %364, %361
  %370 = phi i16 [ %368, %366 ], [ 0, %361 ], [ -1, %364 ]
  store i16 %370, ptr %314, align 2, !tbaa !85
  br label %371

371:                                              ; preds = %356, %360, %369
  %372 = getelementptr inbounds %struct._PixelPacket, ptr %266, i64 1
  br label %373

373:                                              ; preds = %264, %274, %371
  %374 = phi double [ %293, %371 ], [ %271, %274 ], [ %271, %264 ]
  %375 = phi double [ %294, %371 ], [ %270, %274 ], [ %270, %264 ]
  %376 = phi double [ %295, %371 ], [ %269, %274 ], [ %269, %264 ]
  %377 = phi double [ %296, %371 ], [ %268, %274 ], [ %268, %264 ]
  %378 = phi ptr [ %372, %371 ], [ %266, %274 ], [ %266, %264 ]
  %379 = getelementptr inbounds %struct._PixelPacket, ptr %267, i64 1
  %380 = add nuw nsw i64 %265, 1
  %381 = load i64, ptr %217, align 8, !tbaa !56
  %382 = icmp slt i64 %380, %381
  br i1 %382, label %264, label %383, !llvm.loop !86

383:                                              ; preds = %373, %255
  %384 = phi double [ %240, %255 ], [ %374, %373 ]
  %385 = phi double [ %239, %255 ], [ %375, %373 ]
  %386 = phi double [ %238, %255 ], [ %376, %373 ]
  %387 = phi double [ %237, %255 ], [ %377, %373 ]
  %388 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %212, ptr noundef nonnull %26) #11
  %389 = icmp eq i32 %388, 0
  br label %390

390:                                              ; preds = %383, %247, %236, %244
  %391 = phi i1 [ false, %244 ], [ false, %236 ], [ true, %247 ], [ %389, %383 ]
  %392 = phi double [ %240, %244 ], [ %240, %236 ], [ %240, %247 ], [ %384, %383 ]
  %393 = phi double [ %239, %244 ], [ %239, %236 ], [ %239, %247 ], [ %385, %383 ]
  %394 = phi double [ %238, %244 ], [ %238, %236 ], [ %238, %247 ], [ %386, %383 ]
  %395 = phi double [ %237, %244 ], [ %237, %236 ], [ %237, %247 ], [ %387, %383 ]
  br i1 %391, label %396, label %232

396:                                              ; preds = %232, %390, %207
  %397 = call ptr @DestroyResampleFilter(ptr noundef %210) #10
  %398 = call ptr @DestroyCacheView(ptr noundef %211) #10
  %399 = call ptr @DestroyCacheView(ptr noundef %212) #10
  %400 = call ptr @DestroyImage(ptr noundef %27) #10
  br label %401

401:                                              ; preds = %396, %149, %138
  %402 = phi i1 [ false, %138 ], [ false, %149 ], [ true, %396 ]
  %403 = phi ptr [ null, %138 ], [ %152, %149 ], [ %136, %396 ]
  %404 = phi ptr [ %139, %138 ], [ %151, %149 ], [ %136, %396 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %11) #10
  br i1 %402, label %819, label %6388

405:                                              ; preds = %34, %34
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %12) #10
  %406 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %407 = load i64, ptr %406, align 8, !tbaa !56
  %408 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %409 = load i64, ptr %408, align 8, !tbaa !57
  %410 = call ptr @CloneImage(ptr noundef %0, i64 noundef %407, i64 noundef %409, i32 noundef 1, ptr noundef nonnull %26) #10
  %411 = icmp eq ptr %410, null
  br i1 %411, label %412, label %414

412:                                              ; preds = %405
  %413 = call ptr @DestroyImage(ptr noundef %27) #10
  br label %730

414:                                              ; preds = %405
  call void @SetGeometryInfo(ptr noundef nonnull %9) #10
  %415 = call ptr @GetImageArtifact(ptr noundef %27, ptr noundef nonnull @.str.4) #10
  %416 = icmp eq ptr %415, null
  br i1 %416, label %419, label %417

417:                                              ; preds = %414
  %418 = call i32 @ParseGeometry(ptr noundef nonnull %415, ptr noundef nonnull %9) #10
  br label %419

419:                                              ; preds = %417, %414
  %420 = phi i32 [ %418, %417 ], [ 0, %414 ]
  %421 = and i32 %420, 12
  %422 = icmp eq i32 %421, 0
  br i1 %422, label %423, label %450

423:                                              ; preds = %419
  %424 = and i32 %420, 8192
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %426, label %439

426:                                              ; preds = %423
  %427 = getelementptr inbounds %struct._Image, ptr %27, i64 0, i32 7
  %428 = load i64, ptr %427, align 8, !tbaa !56
  %429 = uitofp i64 %428 to double
  %430 = fadd double %429, -1.000000e+00
  %431 = fptrunc double %430 to float
  %432 = fmul float %431, 5.000000e-01
  %433 = getelementptr inbounds %struct._Image, ptr %27, i64 0, i32 8
  %434 = load i64, ptr %433, align 8, !tbaa !57
  %435 = uitofp i64 %434 to double
  %436 = fadd double %435, -1.000000e+00
  %437 = fptrunc double %436 to float
  %438 = fmul float %437, 5.000000e-01
  br label %494

439:                                              ; preds = %423
  %440 = load i64, ptr %406, align 8, !tbaa !56
  %441 = uitofp i64 %440 to double
  %442 = fadd double %441, -1.000000e+00
  %443 = fptrunc double %442 to float
  %444 = fmul float %443, 5.000000e-01
  %445 = load i64, ptr %408, align 8, !tbaa !57
  %446 = uitofp i64 %445 to double
  %447 = fadd double %446, -1.000000e+00
  %448 = fptrunc double %447 to float
  %449 = fmul float %448, 5.000000e-01
  br label %494

450:                                              ; preds = %419
  %451 = load double, ptr %9, align 8, !tbaa !63
  %452 = fptrunc double %451 to float
  %453 = getelementptr inbounds %struct._GeometryInfo, ptr %9, i64 0, i32 1
  %454 = load double, ptr %453, align 8, !tbaa !87
  %455 = fptrunc double %454 to float
  %456 = and i32 %420, 4096
  %457 = icmp eq i32 %456, 0
  br i1 %457, label %488, label %458

458:                                              ; preds = %450
  %459 = and i32 %420, 8192
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %461, label %470

461:                                              ; preds = %458
  %462 = getelementptr inbounds %struct._Image, ptr %27, i64 0, i32 7
  %463 = load i64, ptr %462, align 8, !tbaa !56
  %464 = uitofp i64 %463 to double
  %465 = fadd double %464, -1.000000e+00
  %466 = fdiv double %465, 2.000000e+02
  %467 = fpext float %452 to double
  %468 = fmul double %466, %467
  %469 = getelementptr inbounds %struct._Image, ptr %27, i64 0, i32 8
  br label %477

470:                                              ; preds = %458
  %471 = load i64, ptr %406, align 8, !tbaa !56
  %472 = uitofp i64 %471 to double
  %473 = fadd double %472, -1.000000e+00
  %474 = fdiv double %473, 2.000000e+02
  %475 = fpext float %452 to double
  %476 = fmul double %474, %475
  br label %477

477:                                              ; preds = %470, %461
  %478 = phi ptr [ %469, %461 ], [ %408, %470 ]
  %479 = phi double [ %468, %461 ], [ %476, %470 ]
  %480 = fptrunc double %479 to float
  %481 = load i64, ptr %478, align 8, !tbaa !57
  %482 = uitofp i64 %481 to double
  %483 = fadd double %482, -1.000000e+00
  %484 = fdiv double %483, 2.000000e+02
  %485 = fpext float %455 to double
  %486 = fmul double %484, %485
  %487 = fptrunc double %486 to float
  br label %488

488:                                              ; preds = %477, %450
  %489 = phi float [ %452, %450 ], [ %480, %477 ]
  %490 = phi float [ %455, %450 ], [ %487, %477 ]
  %491 = and i32 %420, 8
  %492 = icmp eq i32 %491, 0
  br i1 %492, label %493, label %494

493:                                              ; preds = %488
  br label %494

494:                                              ; preds = %488, %493, %426, %439
  %495 = phi float [ %432, %426 ], [ %444, %439 ], [ %489, %493 ], [ %489, %488 ]
  %496 = phi float [ %438, %426 ], [ %449, %439 ], [ %489, %493 ], [ %490, %488 ]
  %497 = sitofp i64 %4 to float
  %498 = fpext float %497 to double
  %499 = sitofp i64 %5 to float
  %500 = fpext float %499 to double
  %501 = icmp eq i32 %2, 56
  br i1 %501, label %502, label %569

502:                                              ; preds = %494
  %503 = and i32 %420, 1
  %504 = icmp eq i32 %503, 0
  %505 = and i32 %420, 8192
  %506 = icmp eq i32 %505, 0
  br i1 %504, label %507, label %524

507:                                              ; preds = %502
  br i1 %506, label %508, label %518

508:                                              ; preds = %507
  %509 = sitofp i64 %4 to double
  %510 = getelementptr inbounds %struct._Image, ptr %27, i64 0, i32 7
  %511 = load i64, ptr %510, align 8, !tbaa !56
  %512 = add i64 %511, -1
  %513 = uitofp i64 %512 to double
  %514 = fmul double %513, 5.000000e-01
  %515 = fadd double %514, %509
  %516 = fptrunc double %515 to float
  %517 = fpext float %516 to double
  br label %535

518:                                              ; preds = %507
  %519 = load i64, ptr %406, align 8, !tbaa !56
  %520 = uitofp i64 %519 to float
  %521 = fadd float %520, -1.000000e+00
  %522 = fpext float %521 to double
  %523 = fmul double %522, 5.000000e-01
  br label %535

524:                                              ; preds = %502
  br i1 %506, label %525, label %532

525:                                              ; preds = %524
  %526 = sitofp i64 %4 to double
  %527 = getelementptr inbounds %struct._GeometryInfo, ptr %9, i64 0, i32 2
  %528 = load double, ptr %527, align 8, !tbaa !65
  %529 = fadd double %528, %526
  %530 = fptrunc double %529 to float
  %531 = fpext float %530 to double
  br label %535

532:                                              ; preds = %524
  %533 = getelementptr inbounds %struct._GeometryInfo, ptr %9, i64 0, i32 2
  %534 = load double, ptr %533, align 8, !tbaa !65
  br label %535

535:                                              ; preds = %525, %532, %508, %518
  %536 = phi double [ %517, %508 ], [ %523, %518 ], [ %531, %525 ], [ %534, %532 ]
  %537 = and i32 %420, 2
  %538 = icmp eq i32 %537, 0
  %539 = and i32 %420, 8192
  %540 = icmp eq i32 %539, 0
  br i1 %538, label %541, label %558

541:                                              ; preds = %535
  br i1 %540, label %542, label %552

542:                                              ; preds = %541
  %543 = sitofp i64 %5 to double
  %544 = getelementptr inbounds %struct._Image, ptr %27, i64 0, i32 8
  %545 = load i64, ptr %544, align 8, !tbaa !57
  %546 = add i64 %545, -1
  %547 = uitofp i64 %546 to double
  %548 = fmul double %547, 5.000000e-01
  %549 = fadd double %548, %543
  %550 = fptrunc double %549 to float
  %551 = fpext float %550 to double
  br label %569

552:                                              ; preds = %541
  %553 = load i64, ptr %408, align 8, !tbaa !57
  %554 = uitofp i64 %553 to float
  %555 = fadd float %554, -1.000000e+00
  %556 = fpext float %555 to double
  %557 = fmul double %556, 5.000000e-01
  br label %569

558:                                              ; preds = %535
  br i1 %540, label %559, label %566

559:                                              ; preds = %558
  %560 = sitofp i64 %5 to double
  %561 = getelementptr inbounds %struct._GeometryInfo, ptr %9, i64 0, i32 3
  %562 = load double, ptr %561, align 8, !tbaa !66
  %563 = fadd double %562, %560
  %564 = fptrunc double %563 to float
  %565 = fpext float %564 to double
  br label %569

566:                                              ; preds = %558
  %567 = getelementptr inbounds %struct._GeometryInfo, ptr %9, i64 0, i32 3
  %568 = load double, ptr %567, align 8, !tbaa !66
  br label %569

569:                                              ; preds = %552, %542, %566, %559, %494
  %570 = phi double [ %551, %542 ], [ %557, %552 ], [ %565, %559 ], [ %568, %566 ], [ %500, %494 ]
  %571 = phi double [ %536, %542 ], [ %536, %552 ], [ %536, %559 ], [ %536, %566 ], [ %498, %494 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef nonnull align 8 dereferenceable(56) %10, i64 56, i1 false), !tbaa.struct !67
  %572 = call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef nonnull %26) #10
  %573 = call ptr @AcquireVirtualCacheView(ptr noundef %27, ptr noundef nonnull %26) #10
  %574 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %410, ptr noundef nonnull %26) #10
  %575 = getelementptr inbounds %struct._Image, ptr %27, i64 0, i32 8
  %576 = load i64, ptr %575, align 8, !tbaa !57
  %577 = icmp sgt i64 %576, 0
  br i1 %577, label %578, label %725

578:                                              ; preds = %569
  %579 = getelementptr inbounds %struct._Image, ptr %27, i64 0, i32 7
  %580 = getelementptr inbounds %struct._Image, ptr %410, i64 0, i32 7
  %581 = fpext float %495 to double
  %582 = icmp eq i32 %2, 27
  %583 = fpext float %496 to double
  %584 = getelementptr inbounds %struct._MagickPixelPacket, ptr %12, i64 0, i32 8
  %585 = getelementptr inbounds %struct._MagickPixelPacket, ptr %12, i64 0, i32 5
  %586 = getelementptr inbounds %struct._MagickPixelPacket, ptr %12, i64 0, i32 6
  %587 = getelementptr inbounds %struct._MagickPixelPacket, ptr %12, i64 0, i32 7
  %588 = getelementptr inbounds %struct._Image, ptr %410, i64 0, i32 1
  %589 = getelementptr inbounds %struct._MagickPixelPacket, ptr %12, i64 0, i32 9
  br label %590

590:                                              ; preds = %578, %721
  %591 = phi i64 [ 0, %578 ], [ %722, %721 ]
  %592 = add nsw i64 %591, %5
  %593 = icmp slt i64 %592, 0
  br i1 %593, label %721, label %594

594:                                              ; preds = %590
  %595 = load i64, ptr %408, align 8, !tbaa !57
  %596 = icmp slt i64 %592, %595
  br i1 %596, label %597, label %721

597:                                              ; preds = %594
  %598 = load i64, ptr %579, align 8, !tbaa !56
  %599 = call ptr @GetCacheViewVirtualPixels(ptr noundef %573, i64 noundef 0, i64 noundef %591, i64 noundef %598, i64 noundef 1, ptr noundef nonnull %26) #11
  %600 = load i64, ptr %580, align 8, !tbaa !56
  %601 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %574, i64 noundef 0, i64 noundef %591, i64 noundef %600, i64 noundef 1, ptr noundef nonnull %26) #11
  %602 = icmp eq ptr %599, null
  %603 = icmp eq ptr %601, null
  %604 = select i1 %602, i1 true, i1 %603
  br i1 %604, label %725, label %605

605:                                              ; preds = %597
  %606 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %574) #10
  %607 = load i64, ptr %579, align 8, !tbaa !56
  %608 = icmp sgt i64 %607, 0
  br i1 %608, label %609, label %718

609:                                              ; preds = %605
  %610 = sitofp i64 %591 to double
  %611 = select i1 %582, double %610, double 0.000000e+00
  %612 = icmp ne ptr %606, null
  %613 = icmp eq ptr %606, null
  br label %614

614:                                              ; preds = %609, %712
  %615 = phi i64 [ 0, %609 ], [ %715, %712 ]
  %616 = phi ptr [ %599, %609 ], [ %714, %712 ]
  %617 = phi ptr [ %601, %609 ], [ %713, %712 ]
  %618 = add nsw i64 %615, %4
  %619 = icmp slt i64 %618, 0
  br i1 %619, label %712, label %620

620:                                              ; preds = %614
  %621 = load i64, ptr %406, align 8, !tbaa !56
  %622 = icmp slt i64 %618, %621
  br i1 %622, label %623, label %712

623:                                              ; preds = %620
  %624 = getelementptr inbounds %struct._PixelPacket, ptr %616, i64 0, i32 2
  %625 = load i16, ptr %624, align 2, !tbaa !75
  %626 = uitofp i16 %625 to double
  %627 = fadd double %626, -3.276800e+04
  %628 = fmul double %627, %581
  %629 = fmul double %628, 0x3F00000000000000
  %630 = fadd double %571, %629
  %631 = sitofp i64 %615 to double
  %632 = select i1 %582, double %631, double 0.000000e+00
  %633 = fadd double %632, %630
  %634 = getelementptr inbounds %struct._PixelPacket, ptr %616, i64 0, i32 1
  %635 = load i16, ptr %634, align 2, !tbaa !76
  %636 = uitofp i16 %635 to double
  %637 = fadd double %636, -3.276800e+04
  %638 = fmul double %637, %583
  %639 = fmul double %638, 0x3F00000000000000
  %640 = fadd double %570, %639
  %641 = fadd double %611, %640
  %642 = call i32 @InterpolateMagickPixelPacket(ptr noundef %0, ptr noundef %572, i32 noundef 0, double noundef %633, double noundef %641, ptr noundef nonnull %12, ptr noundef nonnull %26) #10
  %643 = load float, ptr %584, align 4, !tbaa !81
  %644 = fpext float %643 to double
  %645 = call double @llvm.fmuladd.f64(double %644, double 0xBEF0001000100010, double 1.000000e+00)
  %646 = getelementptr inbounds %struct._PixelPacket, ptr %616, i64 0, i32 3
  %647 = load i16, ptr %646, align 2, !tbaa !82
  %648 = uitofp i16 %647 to double
  %649 = call double @llvm.fmuladd.f64(double %648, double 0xBEF0001000100010, double 1.000000e+00)
  %650 = fneg double %645
  %651 = call double @llvm.fmuladd.f64(double %650, double %649, double 1.000000e+00)
  %652 = fmul double %651, 6.553500e+04
  %653 = fptrunc double %652 to float
  store float %653, ptr %584, align 4, !tbaa !81
  %654 = getelementptr inbounds i16, ptr %606, i64 %615
  %655 = load float, ptr %585, align 8, !tbaa !77
  %656 = fcmp ugt float %655, 0.000000e+00
  br i1 %656, label %657, label %662

657:                                              ; preds = %623
  %658 = fcmp ult float %655, 6.553500e+04
  br i1 %658, label %659, label %662

659:                                              ; preds = %657
  %660 = fadd float %655, 5.000000e-01
  %661 = fptoui float %660 to i16
  br label %662

662:                                              ; preds = %659, %657, %623
  %663 = phi i16 [ %661, %659 ], [ 0, %623 ], [ -1, %657 ]
  %664 = getelementptr inbounds %struct._PixelPacket, ptr %617, i64 0, i32 2
  store i16 %663, ptr %664, align 2, !tbaa !75
  %665 = load float, ptr %586, align 4, !tbaa !79
  %666 = fcmp ugt float %665, 0.000000e+00
  br i1 %666, label %667, label %672

667:                                              ; preds = %662
  %668 = fcmp ult float %665, 6.553500e+04
  br i1 %668, label %669, label %672

669:                                              ; preds = %667
  %670 = fadd float %665, 5.000000e-01
  %671 = fptoui float %670 to i16
  br label %672

672:                                              ; preds = %669, %667, %662
  %673 = phi i16 [ %671, %669 ], [ 0, %662 ], [ -1, %667 ]
  %674 = getelementptr inbounds %struct._PixelPacket, ptr %617, i64 0, i32 1
  store i16 %673, ptr %674, align 2, !tbaa !76
  %675 = load float, ptr %587, align 8, !tbaa !80
  %676 = fcmp ugt float %675, 0.000000e+00
  br i1 %676, label %677, label %682

677:                                              ; preds = %672
  %678 = fcmp ult float %675, 6.553500e+04
  br i1 %678, label %679, label %682

679:                                              ; preds = %677
  %680 = fadd float %675, 5.000000e-01
  %681 = fptoui float %680 to i16
  br label %682

682:                                              ; preds = %679, %677, %672
  %683 = phi i16 [ %681, %679 ], [ 0, %672 ], [ -1, %677 ]
  store i16 %683, ptr %617, align 2, !tbaa !74
  %684 = fcmp ugt float %653, 0.000000e+00
  br i1 %684, label %685, label %690

685:                                              ; preds = %682
  %686 = fcmp ult float %653, 6.553500e+04
  br i1 %686, label %687, label %690

687:                                              ; preds = %685
  %688 = fadd float %653, 5.000000e-01
  %689 = fptoui float %688 to i16
  br label %690

690:                                              ; preds = %687, %685, %682
  %691 = phi i16 [ %689, %687 ], [ 0, %682 ], [ -1, %685 ]
  %692 = getelementptr inbounds %struct._PixelPacket, ptr %617, i64 0, i32 3
  store i16 %691, ptr %692, align 2, !tbaa !82
  %693 = load i32, ptr %588, align 4, !tbaa !54
  %694 = icmp eq i32 %693, 12
  br i1 %694, label %699, label %695

695:                                              ; preds = %690
  %696 = load i32, ptr %410, align 8, !tbaa !83
  %697 = icmp eq i32 %696, 2
  %698 = and i1 %612, %697
  br i1 %698, label %700, label %710

699:                                              ; preds = %690
  br i1 %613, label %710, label %700

700:                                              ; preds = %699, %695
  %701 = load float, ptr %589, align 8, !tbaa !84
  %702 = fcmp ugt float %701, 0.000000e+00
  br i1 %702, label %703, label %708

703:                                              ; preds = %700
  %704 = fcmp ult float %701, 6.553500e+04
  br i1 %704, label %705, label %708

705:                                              ; preds = %703
  %706 = fadd float %701, 5.000000e-01
  %707 = fptoui float %706 to i16
  br label %708

708:                                              ; preds = %705, %703, %700
  %709 = phi i16 [ %707, %705 ], [ 0, %700 ], [ -1, %703 ]
  store i16 %709, ptr %654, align 2, !tbaa !85
  br label %710

710:                                              ; preds = %695, %699, %708
  %711 = getelementptr inbounds %struct._PixelPacket, ptr %617, i64 1
  br label %712

712:                                              ; preds = %614, %620, %710
  %713 = phi ptr [ %711, %710 ], [ %617, %620 ], [ %617, %614 ]
  %714 = getelementptr inbounds %struct._PixelPacket, ptr %616, i64 1
  %715 = add nuw nsw i64 %615, 1
  %716 = load i64, ptr %579, align 8, !tbaa !56
  %717 = icmp slt i64 %715, %716
  br i1 %717, label %614, label %718, !llvm.loop !88

718:                                              ; preds = %712, %605
  %719 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %574, ptr noundef nonnull %26) #11
  %720 = icmp eq i32 %719, 0
  br i1 %720, label %725, label %721

721:                                              ; preds = %594, %590, %718
  %722 = add nuw nsw i64 %591, 1
  %723 = load i64, ptr %575, align 8, !tbaa !57
  %724 = icmp slt i64 %722, %723
  br i1 %724, label %590, label %725, !llvm.loop !89

725:                                              ; preds = %721, %718, %597, %569
  %726 = call ptr @DestroyCacheView(ptr noundef %574) #10
  %727 = call ptr @DestroyCacheView(ptr noundef %573) #10
  %728 = call ptr @DestroyCacheView(ptr noundef %572) #10
  %729 = call ptr @DestroyImage(ptr noundef %27) #10
  br label %730

730:                                              ; preds = %725, %412
  %731 = phi ptr [ %413, %412 ], [ %410, %725 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %12) #10
  br i1 %411, label %6388, label %819

732:                                              ; preds = %34
  %733 = call ptr @GetImageArtifact(ptr noundef %27, ptr noundef nonnull @.str.4) #10
  %734 = icmp eq ptr %733, null
  br i1 %734, label %819, label %735

735:                                              ; preds = %732
  %736 = call i32 @ParseGeometry(ptr noundef nonnull %733, ptr noundef nonnull %9) #10
  %737 = load double, ptr %9, align 8, !tbaa !63
  %738 = fdiv double %737, 1.000000e+02
  %739 = fptrunc double %738 to float
  %740 = fpext float %739 to double
  %741 = fadd double %740, -1.000000e-15
  %742 = fcmp olt double %741, 0.000000e+00
  %743 = select i1 %742, float 0.000000e+00, float %739
  %744 = fpext float %743 to double
  %745 = fadd double %744, 1.000000e-15
  %746 = fcmp ogt double %745, 1.000000e+00
  %747 = fsub float 2.000000e+00, %743
  %748 = select i1 %746, float 1.000000e+00, float %743
  %749 = select i1 %746, float %747, float 1.000000e+00
  %750 = and i32 %736, 8
  %751 = icmp eq i32 %750, 0
  %752 = getelementptr inbounds %struct._GeometryInfo, ptr %9, i64 0, i32 1
  %753 = load double, ptr %752, align 8
  %754 = fdiv double %753, 1.000000e+02
  %755 = fptrunc double %754 to float
  %756 = select i1 %751, float %749, float %755
  %757 = fpext float %756 to double
  %758 = fadd double %757, -1.000000e-15
  %759 = fcmp olt double %758, 0.000000e+00
  %760 = select i1 %759, float 0.000000e+00, float %756
  %761 = fpext float %760 to double
  %762 = fadd double %761, 1.000000e-15
  %763 = fcmp ogt double %762, 1.000000e+00
  br i1 %763, label %764, label %819

764:                                              ; preds = %735
  br label %819

765:                                              ; preds = %34
  %766 = call ptr @GetImageArtifact(ptr noundef %27, ptr noundef nonnull @.str.4) #10
  %767 = icmp eq ptr %766, null
  br i1 %767, label %819, label %768

768:                                              ; preds = %765
  %769 = call i32 @ParseGeometry(ptr noundef nonnull %766, ptr noundef nonnull %9) #10
  %770 = load double, ptr %9, align 8, !tbaa !63
  %771 = fdiv double %770, 1.000000e+02
  %772 = fptrunc double %771 to float
  %773 = fsub float 1.000000e+00, %772
  %774 = and i32 %769, 8
  %775 = icmp eq i32 %774, 0
  %776 = getelementptr inbounds %struct._GeometryInfo, ptr %9, i64 0, i32 1
  %777 = load double, ptr %776, align 8
  %778 = fdiv double %777, 1.000000e+02
  %779 = fptrunc double %778 to float
  %780 = select i1 %775, float %773, float %779
  %781 = fpext float %780 to double
  %782 = fadd double %781, 1.000000e-15
  %783 = fcmp ogt double %782, 1.000000e+00
  br i1 %783, label %784, label %819

784:                                              ; preds = %768
  br label %819

785:                                              ; preds = %34
  call void @SetGeometryInfo(ptr noundef nonnull %9) #10
  %786 = call ptr @GetImageArtifact(ptr noundef %27, ptr noundef nonnull @.str.4) #10
  %787 = icmp eq ptr %786, null
  br i1 %787, label %819, label %788

788:                                              ; preds = %785
  %789 = call i32 @ParseGeometry(ptr noundef nonnull %786, ptr noundef nonnull %9) #10
  br label %819

790:                                              ; preds = %34
  %791 = call ptr @GetImageArtifact(ptr noundef %27, ptr noundef nonnull @.str.4) #10
  %792 = icmp eq ptr %791, null
  br i1 %792, label %819, label %793

793:                                              ; preds = %790
  %794 = call i32 @ParseGeometry(ptr noundef nonnull %791, ptr noundef nonnull %9) #10
  %795 = load double, ptr %9, align 8, !tbaa !63
  %796 = fptrunc double %795 to float
  %797 = and i32 %794, 8
  %798 = icmp eq i32 %797, 0
  br i1 %798, label %819, label %799

799:                                              ; preds = %793
  %800 = getelementptr inbounds %struct._GeometryInfo, ptr %9, i64 0, i32 1
  %801 = load double, ptr %800, align 8, !tbaa !87
  %802 = fptrunc double %801 to float
  %803 = fpext float %802 to double
  %804 = fmul double %803, 1.000000e-02
  br label %819

805:                                              ; preds = %34
  %806 = call ptr @GetImageArtifact(ptr noundef %27, ptr noundef nonnull @.str.4) #10
  %807 = icmp eq ptr %806, null
  br i1 %807, label %819, label %808

808:                                              ; preds = %805
  %809 = call i32 @ParseGeometry(ptr noundef nonnull %806, ptr noundef nonnull %9) #10
  %810 = load double, ptr %9, align 8, !tbaa !63
  %811 = fptrunc double %810 to float
  %812 = getelementptr inbounds %struct._GeometryInfo, ptr %9, i64 0, i32 1
  %813 = load double, ptr %812, align 8, !tbaa !87
  %814 = fptrunc double %813 to float
  %815 = and i32 %809, 8
  %816 = icmp eq i32 %815, 0
  %817 = fmul float %814, 6.553500e+04
  %818 = select i1 %816, float 3.276750e+03, float %817
  br label %819

819:                                              ; preds = %805, %808, %125, %129, %34, %790, %799, %793, %785, %788, %765, %784, %768, %732, %764, %735, %59, %52, %49, %42, %38, %401, %730, %37
  %820 = phi float [ 0x3FA99999A0000000, %34 ], [ 0x3FA99999A0000000, %799 ], [ 0x3FA99999A0000000, %793 ], [ 0x3FA99999A0000000, %790 ], [ 0x3FA99999A0000000, %788 ], [ 0x3FA99999A0000000, %785 ], [ 0x3FA99999A0000000, %784 ], [ 0x3FA99999A0000000, %768 ], [ 0x3FA99999A0000000, %765 ], [ 0x3FA99999A0000000, %764 ], [ 0x3FA99999A0000000, %735 ], [ 0x3FA99999A0000000, %732 ], [ 0x3FA99999A0000000, %730 ], [ 0x3FA99999A0000000, %401 ], [ 0x3FA99999A0000000, %49 ], [ 0x3FA99999A0000000, %52 ], [ 0x3FA99999A0000000, %59 ], [ 0x3FA99999A0000000, %38 ], [ 0x3FA99999A0000000, %42 ], [ 0x3FA99999A0000000, %37 ], [ 0x3FA99999A0000000, %129 ], [ 0x3FA99999A0000000, %125 ], [ %818, %808 ], [ 3.276750e+03, %805 ]
  %821 = phi float [ 1.000000e+00, %34 ], [ 1.000000e+00, %799 ], [ 1.000000e+00, %793 ], [ 1.000000e+00, %790 ], [ 1.000000e+00, %788 ], [ 1.000000e+00, %785 ], [ %772, %784 ], [ %772, %768 ], [ 1.000000e+00, %765 ], [ %748, %764 ], [ %748, %735 ], [ 1.000000e+00, %732 ], [ 1.000000e+00, %730 ], [ 1.000000e+00, %401 ], [ 1.000000e+00, %49 ], [ 1.000000e+00, %52 ], [ 1.000000e+00, %59 ], [ 1.000000e+00, %38 ], [ 1.000000e+00, %42 ], [ 1.000000e+00, %37 ], [ 1.000000e+00, %129 ], [ 1.000000e+00, %125 ], [ 1.000000e+00, %808 ], [ 1.000000e+00, %805 ]
  %822 = phi double [ 1.000000e+00, %34 ], [ %804, %799 ], [ 1.000000e+00, %793 ], [ 1.000000e+00, %790 ], [ 1.000000e+00, %788 ], [ 1.000000e+00, %785 ], [ 1.000000e+00, %784 ], [ 1.000000e+00, %768 ], [ 1.000000e+00, %765 ], [ 1.000000e+00, %764 ], [ 1.000000e+00, %735 ], [ 1.000000e+00, %732 ], [ 1.000000e+00, %730 ], [ 1.000000e+00, %401 ], [ 1.000000e+00, %49 ], [ 1.000000e+00, %52 ], [ 1.000000e+00, %59 ], [ 1.000000e+00, %38 ], [ 1.000000e+00, %42 ], [ 1.000000e+00, %37 ], [ 1.000000e+00, %129 ], [ 1.000000e+00, %125 ], [ 1.000000e+00, %808 ], [ 1.000000e+00, %805 ]
  %823 = phi float [ 1.000000e+02, %34 ], [ %796, %799 ], [ %796, %793 ], [ 1.000000e+02, %790 ], [ 1.000000e+02, %788 ], [ 1.000000e+02, %785 ], [ 1.000000e+02, %784 ], [ 1.000000e+02, %768 ], [ 1.000000e+02, %765 ], [ 1.000000e+02, %764 ], [ 1.000000e+02, %735 ], [ 1.000000e+02, %732 ], [ 1.000000e+02, %730 ], [ 1.000000e+02, %401 ], [ 1.000000e+02, %49 ], [ 1.000000e+02, %52 ], [ 1.000000e+02, %59 ], [ 1.000000e+02, %38 ], [ 1.000000e+02, %42 ], [ 1.000000e+02, %37 ], [ 1.000000e+02, %129 ], [ 1.000000e+02, %125 ], [ 1.000000e+02, %808 ], [ 1.000000e+02, %805 ]
  %824 = phi float [ 1.000000e+00, %34 ], [ 1.000000e+00, %799 ], [ 1.000000e+00, %793 ], [ 1.000000e+00, %790 ], [ 1.000000e+00, %788 ], [ 1.000000e+00, %785 ], [ %780, %784 ], [ %780, %768 ], [ 1.000000e+00, %765 ], [ 1.000000e+00, %764 ], [ %760, %735 ], [ 1.000000e+00, %732 ], [ 1.000000e+00, %730 ], [ 1.000000e+00, %401 ], [ 1.000000e+00, %49 ], [ 1.000000e+00, %52 ], [ 1.000000e+00, %59 ], [ 1.000000e+00, %38 ], [ 1.000000e+00, %42 ], [ 1.000000e+00, %37 ], [ 1.000000e+00, %129 ], [ 1.000000e+00, %125 ], [ 1.000000e+00, %808 ], [ 1.000000e+00, %805 ]
  %825 = phi float [ 5.000000e-01, %34 ], [ 5.000000e-01, %799 ], [ 5.000000e-01, %793 ], [ 5.000000e-01, %790 ], [ 5.000000e-01, %788 ], [ 5.000000e-01, %785 ], [ 5.000000e-01, %784 ], [ 5.000000e-01, %768 ], [ 5.000000e-01, %765 ], [ 5.000000e-01, %764 ], [ 5.000000e-01, %735 ], [ 5.000000e-01, %732 ], [ 5.000000e-01, %730 ], [ 5.000000e-01, %401 ], [ 5.000000e-01, %49 ], [ 5.000000e-01, %52 ], [ 5.000000e-01, %59 ], [ 5.000000e-01, %38 ], [ 5.000000e-01, %42 ], [ 5.000000e-01, %37 ], [ 5.000000e-01, %129 ], [ 5.000000e-01, %125 ], [ %811, %808 ], [ 5.000000e-01, %805 ]
  %826 = phi i32 [ 1, %34 ], [ 1, %799 ], [ 1, %793 ], [ 1, %790 ], [ 1, %788 ], [ 1, %785 ], [ 1, %784 ], [ 0, %768 ], [ 1, %765 ], [ 1, %764 ], [ 0, %735 ], [ 1, %732 ], [ 1, %730 ], [ 1, %401 ], [ 1, %49 ], [ 1, %52 ], [ 1, %59 ], [ 1, %38 ], [ 1, %42 ], [ 0, %37 ], [ 0, %129 ], [ 0, %125 ], [ 1, %808 ], [ 1, %805 ]
  %827 = phi ptr [ null, %34 ], [ null, %799 ], [ null, %793 ], [ null, %790 ], [ null, %788 ], [ null, %785 ], [ null, %784 ], [ null, %768 ], [ null, %765 ], [ null, %764 ], [ null, %735 ], [ null, %732 ], [ %410, %730 ], [ %403, %401 ], [ null, %49 ], [ null, %52 ], [ null, %59 ], [ null, %38 ], [ null, %42 ], [ null, %37 ], [ null, %129 ], [ null, %125 ], [ null, %808 ], [ null, %805 ]
  %828 = phi ptr [ %27, %34 ], [ %27, %799 ], [ %27, %793 ], [ %27, %790 ], [ %27, %788 ], [ %27, %785 ], [ %27, %784 ], [ %27, %768 ], [ %27, %765 ], [ %27, %764 ], [ %27, %735 ], [ %27, %732 ], [ %731, %730 ], [ %404, %401 ], [ %27, %49 ], [ %27, %52 ], [ %27, %59 ], [ %27, %38 ], [ %27, %42 ], [ %27, %37 ], [ %27, %129 ], [ %27, %125 ], [ %27, %808 ], [ %27, %805 ]
  %829 = call ptr @GetImageArtifact(ptr noundef %828, ptr noundef nonnull @.str.7) #10
  %830 = icmp eq ptr %829, null
  br i1 %830, label %835, label %831

831:                                              ; preds = %819
  %832 = call i32 @IsMagickTrue(ptr noundef nonnull %829) #10
  %833 = icmp eq i32 %832, 0
  %834 = zext i1 %833 to i32
  br label %835

835:                                              ; preds = %831, %819
  %836 = phi i32 [ %834, %831 ], [ %826, %819 ]
  %837 = call i32 @AccelerateCompositeImage(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %828, i64 noundef %4, i64 noundef %5, float noundef %824, float noundef %821, ptr noundef nonnull %26) #10
  %838 = icmp eq i32 %837, 1
  br i1 %838, label %6388, label %839

839:                                              ; preds = %835
  call void @GetMagickPixelPacket(ptr noundef %828, ptr noundef nonnull %10) #10
  %840 = call ptr @AcquireVirtualCacheView(ptr noundef %828, ptr noundef nonnull %26) #10
  %841 = call ptr @AcquireAuthenticCacheView(ptr noundef %0, ptr noundef nonnull %26) #10
  %842 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %843 = load i64, ptr %842, align 8, !tbaa !57
  %844 = icmp sgt i64 %843, 0
  br i1 %844, label %845, label %6379

845:                                              ; preds = %839
  %846 = icmp eq i32 %836, 0
  %847 = getelementptr inbounds %struct._Image, ptr %828, i64 0, i32 8
  %848 = getelementptr inbounds %struct._Image, ptr %828, i64 0, i32 8
  %849 = getelementptr inbounds %struct._Image, ptr %828, i64 0, i32 7
  %850 = icmp slt i64 %4, 0
  %851 = sub i64 0, %4
  %852 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %853 = getelementptr inbounds %struct._Image, ptr %828, i64 0, i32 7
  %854 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 5
  %855 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 6
  %856 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 7
  %857 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %858 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 8
  %859 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 9
  %860 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 9
  %861 = getelementptr inbounds %struct._Image, ptr %828, i64 0, i32 7
  %862 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 5
  %863 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 6
  %864 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 7
  %865 = getelementptr inbounds %struct._Image, ptr %828, i64 0, i32 6
  %866 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 8
  %867 = getelementptr inbounds %struct._Image, ptr %828, i64 0, i32 1
  %868 = sub i64 0, %4
  %869 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 9
  %870 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 9
  %871 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 1
  %872 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 9
  %873 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 9
  %874 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 9
  %875 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 9
  %876 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 2
  %877 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 8
  %878 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 8
  %879 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 1
  %880 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 8
  %881 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 7
  %882 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 6
  %883 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 5
  %884 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 8
  %885 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 8
  %886 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 5
  %887 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 6
  %888 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 7
  %889 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 8
  %890 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 8
  %891 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 8
  %892 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 5
  %893 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 6
  %894 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 7
  %895 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 8
  %896 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 8
  %897 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 8
  %898 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 5
  %899 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 6
  %900 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 7
  %901 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 8
  %902 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 8
  %903 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 8
  %904 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 5
  %905 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 6
  %906 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 7
  %907 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 8
  %908 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 8
  %909 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 1
  %910 = fpext float %823 to double
  %911 = fmul double %910, 1.000000e-02
  %912 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 5
  %913 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 6
  %914 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 7
  %915 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 5
  %916 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 6
  %917 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 7
  %918 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 8
  %919 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 8
  %920 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 8
  %921 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 1
  %922 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 9
  %923 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 9
  %924 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 9
  %925 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 8
  %926 = fneg float %821
  %927 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 8
  %928 = fneg float %824
  %929 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 8
  %930 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 5
  %931 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 6
  %932 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 7
  %933 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 1
  %934 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 9
  %935 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 9
  %936 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 9
  %937 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 8
  %938 = fneg float %821
  %939 = fneg float %824
  %940 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 8
  %941 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 8
  %942 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 5
  %943 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 6
  %944 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 7
  %945 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 1
  %946 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 9
  %947 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 9
  %948 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 9
  %949 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 8
  %950 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 1
  %951 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 5
  %952 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 6
  %953 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 7
  %954 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 8
  %955 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 1
  %956 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 9
  %957 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 9
  %958 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 8
  %959 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 8
  %960 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 8
  %961 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 8
  %962 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 5
  %963 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 6
  %964 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 7
  %965 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 1
  %966 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 9
  %967 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 9
  %968 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 9
  %969 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 8
  %970 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 8
  %971 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 8
  %972 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 5
  %973 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 6
  %974 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 7
  %975 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 1
  %976 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 9
  %977 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 9
  %978 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 9
  %979 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 8
  %980 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 8
  %981 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 8
  %982 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 5
  %983 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 6
  %984 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 7
  %985 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 1
  %986 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 9
  %987 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 9
  %988 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 9
  %989 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 8
  %990 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 8
  %991 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 8
  %992 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 5
  %993 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 6
  %994 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 7
  %995 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 1
  %996 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 9
  %997 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 9
  %998 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 9
  %999 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 8
  %1000 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 8
  %1001 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 8
  %1002 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 5
  %1003 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 6
  %1004 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 7
  %1005 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 1
  %1006 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 9
  %1007 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 9
  %1008 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 9
  %1009 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 8
  %1010 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 8
  %1011 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 8
  %1012 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 5
  %1013 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 6
  %1014 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 7
  %1015 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 1
  %1016 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 9
  %1017 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 9
  %1018 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 9
  %1019 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 8
  %1020 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 8
  %1021 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 8
  %1022 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 5
  %1023 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 6
  %1024 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 7
  %1025 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 1
  %1026 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 9
  %1027 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 9
  %1028 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 9
  %1029 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 8
  %1030 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 8
  %1031 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 8
  %1032 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 5
  %1033 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 6
  %1034 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 7
  %1035 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 1
  %1036 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 9
  %1037 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 9
  %1038 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 9
  %1039 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 8
  %1040 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 8
  %1041 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 8
  %1042 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 5
  %1043 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 6
  %1044 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 7
  %1045 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 1
  %1046 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 9
  %1047 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 9
  %1048 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 9
  %1049 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 8
  %1050 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 8
  %1051 = and i32 %1, 256
  %1052 = icmp eq i32 %1051, 0
  %1053 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 8
  %1054 = getelementptr inbounds %struct._GeometryInfo, ptr %9, i64 0, i32 1
  %1055 = getelementptr inbounds %struct._GeometryInfo, ptr %9, i64 0, i32 2
  %1056 = getelementptr inbounds %struct._GeometryInfo, ptr %9, i64 0, i32 3
  %1057 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 5
  %1058 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 6
  %1059 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 7
  %1060 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 1
  %1061 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 9
  %1062 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 9
  %1063 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 9
  %1064 = and i32 %1, 8
  %1065 = icmp eq i32 %1064, 0
  %1066 = getelementptr inbounds %struct._GeometryInfo, ptr %9, i64 0, i32 1
  %1067 = getelementptr inbounds %struct._GeometryInfo, ptr %9, i64 0, i32 2
  %1068 = getelementptr inbounds %struct._GeometryInfo, ptr %9, i64 0, i32 3
  %1069 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 8
  %1070 = and i32 %1, 1
  %1071 = icmp eq i32 %1070, 0
  %1072 = getelementptr inbounds %struct._GeometryInfo, ptr %9, i64 0, i32 1
  %1073 = getelementptr inbounds %struct._GeometryInfo, ptr %9, i64 0, i32 2
  %1074 = getelementptr inbounds %struct._GeometryInfo, ptr %9, i64 0, i32 3
  %1075 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 5
  %1076 = and i32 %1, 2
  %1077 = icmp eq i32 %1076, 0
  %1078 = getelementptr inbounds %struct._GeometryInfo, ptr %9, i64 0, i32 1
  %1079 = getelementptr inbounds %struct._GeometryInfo, ptr %9, i64 0, i32 2
  %1080 = getelementptr inbounds %struct._GeometryInfo, ptr %9, i64 0, i32 3
  %1081 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 6
  %1082 = and i32 %1, 4
  %1083 = icmp eq i32 %1082, 0
  %1084 = getelementptr inbounds %struct._GeometryInfo, ptr %9, i64 0, i32 1
  %1085 = getelementptr inbounds %struct._GeometryInfo, ptr %9, i64 0, i32 2
  %1086 = getelementptr inbounds %struct._GeometryInfo, ptr %9, i64 0, i32 3
  %1087 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 7
  %1088 = and i32 %1, 32
  %1089 = icmp ne i32 %1088, 0
  %1090 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 1
  %1091 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 9
  %1092 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 9
  %1093 = getelementptr inbounds %struct._GeometryInfo, ptr %9, i64 0, i32 1
  %1094 = getelementptr inbounds %struct._GeometryInfo, ptr %9, i64 0, i32 2
  %1095 = getelementptr inbounds %struct._GeometryInfo, ptr %9, i64 0, i32 3
  %1096 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 9
  %1097 = and i32 %1, 256
  %1098 = icmp eq i32 %1097, 0
  %1099 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 8
  %1100 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 8
  %1101 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 1
  %1102 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 1
  %1103 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 1
  %1104 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 1
  %1105 = and i32 %1, 8
  %1106 = icmp eq i32 %1105, 0
  %1107 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 8
  %1108 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 8
  %1109 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 8
  %1110 = and i32 %1, 1
  %1111 = icmp eq i32 %1110, 0
  %1112 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 5
  %1113 = and i32 %1, 2
  %1114 = icmp eq i32 %1113, 0
  %1115 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 6
  %1116 = and i32 %1, 4
  %1117 = icmp eq i32 %1116, 0
  %1118 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 7
  %1119 = and i32 %1, 32
  %1120 = icmp ne i32 %1119, 0
  %1121 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 9
  %1122 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 9
  %1123 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 9
  %1124 = and i32 %1, 256
  %1125 = icmp eq i32 %1124, 0
  %1126 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 8
  %1127 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 8
  %1128 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 1
  %1129 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 1
  %1130 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 1
  %1131 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 1
  %1132 = and i32 %1, 8
  %1133 = icmp eq i32 %1132, 0
  %1134 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 8
  %1135 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 8
  %1136 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 8
  %1137 = and i32 %1, 1
  %1138 = icmp eq i32 %1137, 0
  %1139 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 5
  %1140 = and i32 %1, 2
  %1141 = icmp eq i32 %1140, 0
  %1142 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 6
  %1143 = and i32 %1, 4
  %1144 = icmp eq i32 %1143, 0
  %1145 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 7
  %1146 = and i32 %1, 32
  %1147 = icmp ne i32 %1146, 0
  %1148 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 9
  %1149 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 9
  %1150 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 9
  %1151 = and i32 %1, 256
  %1152 = icmp eq i32 %1151, 0
  %1153 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 8
  %1154 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 8
  %1155 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 8
  %1156 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 5
  %1157 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 6
  %1158 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 7
  %1159 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 1
  %1160 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 9
  %1161 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 9
  %1162 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 9
  %1163 = and i32 %1, 8
  %1164 = icmp eq i32 %1163, 0
  %1165 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 8
  %1166 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 8
  %1167 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 8
  %1168 = and i32 %1, 1
  %1169 = icmp eq i32 %1168, 0
  %1170 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 5
  %1171 = and i32 %1, 2
  %1172 = icmp eq i32 %1171, 0
  %1173 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 6
  %1174 = and i32 %1, 4
  %1175 = icmp eq i32 %1174, 0
  %1176 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 7
  %1177 = and i32 %1, 32
  %1178 = icmp ne i32 %1177, 0
  %1179 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 1
  %1180 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 9
  %1181 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 9
  %1182 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 9
  %1183 = and i32 %1, 256
  %1184 = icmp eq i32 %1183, 0
  %1185 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 8
  %1186 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 8
  %1187 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 8
  %1188 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 5
  %1189 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 6
  %1190 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 7
  %1191 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 1
  %1192 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 9
  %1193 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 9
  %1194 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 9
  %1195 = and i32 %1, 8
  %1196 = icmp eq i32 %1195, 0
  %1197 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 8
  %1198 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 8
  %1199 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 8
  %1200 = and i32 %1, 1
  %1201 = icmp eq i32 %1200, 0
  %1202 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 5
  %1203 = and i32 %1, 2
  %1204 = icmp eq i32 %1203, 0
  %1205 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 6
  %1206 = and i32 %1, 4
  %1207 = icmp eq i32 %1206, 0
  %1208 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 7
  %1209 = and i32 %1, 32
  %1210 = icmp ne i32 %1209, 0
  %1211 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 1
  %1212 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 9
  %1213 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 9
  %1214 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 9
  %1215 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 8
  %1216 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 8
  %1217 = and i32 %1, 256
  %1218 = icmp eq i32 %1217, 0
  %1219 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 8
  %1220 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 5
  %1221 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 6
  %1222 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 7
  %1223 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 1
  %1224 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 9
  %1225 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 9
  %1226 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 9
  %1227 = and i32 %1, 8
  %1228 = icmp eq i32 %1227, 0
  %1229 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 8
  %1230 = and i32 %1, 1
  %1231 = icmp eq i32 %1230, 0
  %1232 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 5
  %1233 = and i32 %1, 2
  %1234 = icmp eq i32 %1233, 0
  %1235 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 6
  %1236 = and i32 %1, 4
  %1237 = icmp eq i32 %1236, 0
  %1238 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 7
  %1239 = and i32 %1, 32
  %1240 = icmp ne i32 %1239, 0
  %1241 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 1
  %1242 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 9
  %1243 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 9
  %1244 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 9
  %1245 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 8
  %1246 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 8
  %1247 = and i32 %1, 256
  %1248 = icmp eq i32 %1247, 0
  %1249 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 8
  %1250 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 5
  %1251 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 6
  %1252 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 7
  %1253 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 1
  %1254 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 9
  %1255 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 9
  %1256 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 9
  %1257 = and i32 %1, 8
  %1258 = icmp eq i32 %1257, 0
  %1259 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 8
  %1260 = and i32 %1, 1
  %1261 = icmp eq i32 %1260, 0
  %1262 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 5
  %1263 = and i32 %1, 2
  %1264 = icmp eq i32 %1263, 0
  %1265 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 6
  %1266 = and i32 %1, 4
  %1267 = icmp eq i32 %1266, 0
  %1268 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 7
  %1269 = and i32 %1, 32
  %1270 = icmp ne i32 %1269, 0
  %1271 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 1
  %1272 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 9
  %1273 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 9
  %1274 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 9
  %1275 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 8
  %1276 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 8
  %1277 = and i32 %1, 256
  %1278 = icmp eq i32 %1277, 0
  %1279 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 8
  %1280 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 5
  %1281 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 6
  %1282 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 7
  %1283 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 1
  %1284 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 9
  %1285 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 9
  %1286 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 9
  %1287 = and i32 %1, 8
  %1288 = icmp eq i32 %1287, 0
  %1289 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 8
  %1290 = and i32 %1, 1
  %1291 = icmp eq i32 %1290, 0
  %1292 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 5
  %1293 = and i32 %1, 2
  %1294 = icmp eq i32 %1293, 0
  %1295 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 6
  %1296 = and i32 %1, 4
  %1297 = icmp eq i32 %1296, 0
  %1298 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 7
  %1299 = and i32 %1, 32
  %1300 = icmp ne i32 %1299, 0
  %1301 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 1
  %1302 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 9
  %1303 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 9
  %1304 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 9
  %1305 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 8
  %1306 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 8
  %1307 = and i32 %1, 256
  %1308 = icmp eq i32 %1307, 0
  %1309 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 8
  %1310 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 5
  %1311 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 6
  %1312 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 7
  %1313 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 1
  %1314 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 9
  %1315 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 9
  %1316 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 9
  %1317 = and i32 %1, 8
  %1318 = icmp eq i32 %1317, 0
  %1319 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 8
  %1320 = and i32 %1, 1
  %1321 = icmp eq i32 %1320, 0
  %1322 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 5
  %1323 = and i32 %1, 2
  %1324 = icmp eq i32 %1323, 0
  %1325 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 6
  %1326 = and i32 %1, 4
  %1327 = icmp eq i32 %1326, 0
  %1328 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 7
  %1329 = and i32 %1, 32
  %1330 = icmp ne i32 %1329, 0
  %1331 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 1
  %1332 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 9
  %1333 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 9
  %1334 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 9
  %1335 = and i32 %1, 256
  %1336 = icmp eq i32 %1335, 0
  %1337 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 8
  %1338 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 8
  %1339 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 8
  %1340 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 5
  %1341 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 6
  %1342 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 7
  %1343 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 1
  %1344 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 9
  %1345 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 9
  %1346 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 9
  %1347 = and i32 %1, 8
  %1348 = icmp eq i32 %1347, 0
  %1349 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 8
  %1350 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 8
  %1351 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 8
  %1352 = and i32 %1, 1
  %1353 = icmp eq i32 %1352, 0
  %1354 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 5
  %1355 = and i32 %1, 2
  %1356 = icmp eq i32 %1355, 0
  %1357 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 6
  %1358 = and i32 %1, 4
  %1359 = icmp eq i32 %1358, 0
  %1360 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 7
  %1361 = and i32 %1, 32
  %1362 = icmp ne i32 %1361, 0
  %1363 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 1
  %1364 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 9
  %1365 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 9
  %1366 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 9
  %1367 = and i32 %1, 256
  %1368 = icmp eq i32 %1367, 0
  %1369 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 8
  %1370 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 8
  %1371 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 8
  %1372 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 5
  %1373 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 6
  %1374 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 7
  %1375 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 1
  %1376 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 9
  %1377 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 9
  %1378 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 9
  %1379 = and i32 %1, 8
  %1380 = icmp eq i32 %1379, 0
  %1381 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 8
  %1382 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 8
  %1383 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 8
  %1384 = and i32 %1, 1
  %1385 = icmp eq i32 %1384, 0
  %1386 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 5
  %1387 = and i32 %1, 2
  %1388 = icmp eq i32 %1387, 0
  %1389 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 6
  %1390 = and i32 %1, 4
  %1391 = icmp eq i32 %1390, 0
  %1392 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 7
  %1393 = and i32 %1, 32
  %1394 = icmp ne i32 %1393, 0
  %1395 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 1
  %1396 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 9
  %1397 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 9
  %1398 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 9
  %1399 = and i32 %1, 256
  %1400 = icmp eq i32 %1399, 0
  %1401 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 8
  %1402 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 8
  %1403 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 8
  %1404 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 5
  %1405 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 6
  %1406 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 7
  %1407 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 1
  %1408 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 9
  %1409 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 9
  %1410 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 9
  %1411 = and i32 %1, 8
  %1412 = icmp eq i32 %1411, 0
  %1413 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 8
  %1414 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 8
  %1415 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 8
  %1416 = and i32 %1, 1
  %1417 = icmp eq i32 %1416, 0
  %1418 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 5
  %1419 = and i32 %1, 2
  %1420 = icmp eq i32 %1419, 0
  %1421 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 6
  %1422 = and i32 %1, 4
  %1423 = icmp eq i32 %1422, 0
  %1424 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 7
  %1425 = and i32 %1, 32
  %1426 = icmp ne i32 %1425, 0
  %1427 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 1
  %1428 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 9
  %1429 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 9
  %1430 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 9
  %1431 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 8
  %1432 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 8
  %1433 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 8
  %1434 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 5
  %1435 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 6
  %1436 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 7
  %1437 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 1
  %1438 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 9
  %1439 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 9
  %1440 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 9
  %1441 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 8
  %1442 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 8
  %1443 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 8
  %1444 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 5
  %1445 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 6
  %1446 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 7
  %1447 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 1
  %1448 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 9
  %1449 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 9
  %1450 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 9
  %1451 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 8
  %1452 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 8
  %1453 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 8
  %1454 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 5
  %1455 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 6
  %1456 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 7
  %1457 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 1
  %1458 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 9
  %1459 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 9
  %1460 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 9
  %1461 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 8
  %1462 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 8
  %1463 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 8
  %1464 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 5
  %1465 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 6
  %1466 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 7
  %1467 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 1
  %1468 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 9
  %1469 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 9
  %1470 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 8
  %1471 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 8
  %1472 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 8
  %1473 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 5
  %1474 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 6
  %1475 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 7
  %1476 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 1
  %1477 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 9
  %1478 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 9
  %1479 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 8
  %1480 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 8
  %1481 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 8
  %1482 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 5
  %1483 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 6
  %1484 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 7
  %1485 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 1
  %1486 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 9
  %1487 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 9
  %1488 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 8
  %1489 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 8
  %1490 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 8
  %1491 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 5
  %1492 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 6
  %1493 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 7
  %1494 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 1
  %1495 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 9
  %1496 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 9
  %1497 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 8
  %1498 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 8
  %1499 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 8
  %1500 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 5
  %1501 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 6
  %1502 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 7
  %1503 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 1
  %1504 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 9
  %1505 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 9
  %1506 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 9
  %1507 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 8
  %1508 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 8
  %1509 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 8
  %1510 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 5
  %1511 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 6
  %1512 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 7
  %1513 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 1
  %1514 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 9
  %1515 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 9
  %1516 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 9
  %1517 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 8
  %1518 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 5
  %1519 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 6
  %1520 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 7
  %1521 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 1
  %1522 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 9
  %1523 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 5
  %1524 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 6
  %1525 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 7
  %1526 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 9
  %1527 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 5
  %1528 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 6
  %1529 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 7
  %1530 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 8
  %1531 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 9
  %1532 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 8
  %1533 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 8
  %1534 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 5
  %1535 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 6
  %1536 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 7
  %1537 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 1
  %1538 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 9
  %1539 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 8
  %1540 = fneg float %824
  %1541 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 5
  %1542 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 6
  %1543 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 7
  %1544 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 9
  %1545 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 5
  %1546 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 6
  %1547 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 7
  %1548 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 8
  %1549 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 9
  %1550 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %1551 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %1552 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  %1553 = select i1 %850, i64 %851, i64 0
  br label %1554

1554:                                             ; preds = %845, %6373
  %1555 = phi i32 [ 1, %845 ], [ %6375, %6373 ]
  %1556 = phi i64 [ 0, %845 ], [ %6374, %6373 ]
  %1557 = phi i64 [ 0, %845 ], [ %6376, %6373 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %13) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %14) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %15) #10
  %1558 = icmp eq i32 %1555, 0
  br i1 %1558, label %6373, label %1559

1559:                                             ; preds = %1554
  br i1 %846, label %1566, label %1560

1560:                                             ; preds = %1559
  %1561 = icmp slt i64 %1557, %5
  br i1 %1561, label %6373, label %1562

1562:                                             ; preds = %1560
  %1563 = sub nsw i64 %1557, %5
  %1564 = load i64, ptr %847, align 8, !tbaa !57
  %1565 = icmp slt i64 %1563, %1564
  br i1 %1565, label %1566, label %6373

1566:                                             ; preds = %1562, %1559
  %1567 = icmp slt i64 %1557, %5
  br i1 %1567, label %1578, label %1568

1568:                                             ; preds = %1566
  %1569 = sub nsw i64 %1557, %5
  %1570 = load i64, ptr %848, align 8, !tbaa !57
  %1571 = icmp slt i64 %1569, %1570
  br i1 %1571, label %1572, label %1578

1572:                                             ; preds = %1568
  %1573 = load i64, ptr %849, align 8, !tbaa !56
  %1574 = call ptr @GetCacheViewVirtualPixels(ptr noundef %840, i64 noundef 0, i64 noundef %1569, i64 noundef %1573, i64 noundef 1, ptr noundef nonnull %26) #11
  %1575 = icmp eq ptr %1574, null
  br i1 %1575, label %6373, label %1576

1576:                                             ; preds = %1572
  %1577 = getelementptr inbounds %struct._PixelPacket, ptr %1574, i64 %1553
  br label %1578

1578:                                             ; preds = %1576, %1568, %1566
  %1579 = phi ptr [ null, %1568 ], [ null, %1566 ], [ %1574, %1576 ]
  %1580 = phi ptr [ null, %1568 ], [ null, %1566 ], [ %1577, %1576 ]
  %1581 = load i64, ptr %852, align 8, !tbaa !56
  %1582 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %841, i64 noundef 0, i64 noundef %1557, i64 noundef %1581, i64 noundef 1, ptr noundef nonnull %26) #11
  %1583 = icmp eq ptr %1582, null
  br i1 %1583, label %6373, label %1584

1584:                                             ; preds = %1578
  %1585 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %841) #10
  %1586 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %840) #10
  call void @GetMagickPixelPacket(ptr noundef %828, ptr noundef nonnull %15) #10
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %14) #10
  %1587 = load i64, ptr %852, align 8, !tbaa !56
  %1588 = icmp sgt i64 %1587, 0
  br i1 %1588, label %1589, label %6358

1589:                                             ; preds = %1584
  %1590 = icmp eq ptr %1585, null
  %1591 = icmp eq ptr %1579, null
  %1592 = icmp eq ptr %1586, null
  %1593 = getelementptr i16, ptr %1586, i64 %868
  %1594 = icmp eq ptr %1585, null
  %1595 = sub nsw i64 %1557, %5
  %1596 = icmp eq ptr %1585, null
  br label %1597

1597:                                             ; preds = %1589, %6352
  %1598 = phi ptr [ %1582, %1589 ], [ %6354, %6352 ]
  %1599 = phi i64 [ 0, %1589 ], [ %6355, %6352 ]
  %1600 = phi ptr [ %1580, %1589 ], [ %6353, %6352 ]
  br i1 %846, label %1607, label %1601

1601:                                             ; preds = %1597
  %1602 = icmp slt i64 %1599, %4
  br i1 %1602, label %6352, label %1603

1603:                                             ; preds = %1601
  %1604 = sub nsw i64 %1599, %4
  %1605 = load i64, ptr %853, align 8, !tbaa !56
  %1606 = icmp slt i64 %1604, %1605
  br i1 %1606, label %1607, label %6358

1607:                                             ; preds = %1603, %1597
  %1608 = getelementptr inbounds %struct._PixelPacket, ptr %1598, i64 0, i32 2
  %1609 = load i16, ptr %1608, align 2, !tbaa !75
  %1610 = uitofp i16 %1609 to float
  store float %1610, ptr %854, align 8, !tbaa !77
  %1611 = getelementptr inbounds %struct._PixelPacket, ptr %1598, i64 0, i32 1
  %1612 = load i16, ptr %1611, align 2, !tbaa !76
  %1613 = uitofp i16 %1612 to float
  store float %1613, ptr %855, align 4, !tbaa !79
  %1614 = load i16, ptr %1598, align 2, !tbaa !74
  %1615 = uitofp i16 %1614 to float
  store float %1615, ptr %856, align 8, !tbaa !80
  %1616 = load i32, ptr %857, align 8, !tbaa !55
  %1617 = icmp eq i32 %1616, 0
  br i1 %1617, label %1622, label %1618

1618:                                             ; preds = %1607
  %1619 = getelementptr inbounds %struct._PixelPacket, ptr %1598, i64 0, i32 3
  %1620 = load i16, ptr %1619, align 2, !tbaa !82
  %1621 = uitofp i16 %1620 to float
  store float %1621, ptr %858, align 4, !tbaa !81
  br label %1622

1622:                                             ; preds = %1618, %1607
  %1623 = load i32, ptr %30, align 4, !tbaa !54
  %1624 = icmp eq i32 %1623, 12
  br i1 %1624, label %1625, label %1639

1625:                                             ; preds = %1622
  br i1 %1590, label %1630, label %1626

1626:                                             ; preds = %1625
  %1627 = getelementptr inbounds i16, ptr %1585, i64 %1599
  %1628 = load i16, ptr %1627, align 2, !tbaa !85
  %1629 = zext i16 %1628 to i32
  br label %1630

1630:                                             ; preds = %1625, %1626
  %1631 = phi i32 [ %1629, %1626 ], [ 0, %1625 ]
  %1632 = sitofp i32 %1631 to float
  store float %1632, ptr %859, align 8, !tbaa !84
  br i1 %1624, label %1633, label %1639

1633:                                             ; preds = %1630
  %1634 = fsub float 6.553500e+04, %1610
  store float %1634, ptr %854, align 8, !tbaa !77
  %1635 = fsub float 6.553500e+04, %1613
  store float %1635, ptr %855, align 4, !tbaa !79
  %1636 = fsub float 6.553500e+04, %1615
  store float %1636, ptr %856, align 8, !tbaa !80
  %1637 = load float, ptr %860, align 8, !tbaa !84
  %1638 = fsub float 6.553500e+04, %1637
  store float %1638, ptr %860, align 8, !tbaa !84
  br label %1639

1639:                                             ; preds = %1622, %1633, %1630
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %13, ptr noundef nonnull align 8 dereferenceable(56) %14, i64 56, i1 false), !tbaa.struct !67
  %1640 = icmp slt i64 %1599, %4
  %1641 = or i1 %1591, %1640
  br i1 %1641, label %1646, label %1642

1642:                                             ; preds = %1639
  %1643 = sub nsw i64 %1599, %4
  %1644 = load i64, ptr %861, align 8, !tbaa !56
  %1645 = icmp slt i64 %1643, %1644
  br i1 %1645, label %1726, label %1646

1646:                                             ; preds = %1642, %1639
  switch i32 %2, label %1656 [
    i32 28, label %1647
    i32 4, label %1647
    i32 7, label %1651
    i32 48, label %1651
    i32 32, label %1655
    i32 49, label %1655
    i32 39, label %1655
    i32 50, label %1655
    i32 23, label %1655
    i32 21, label %1655
    i32 17, label %1655
    i32 6, label %1655
  ]

1647:                                             ; preds = %1646, %1646
  %1648 = load float, ptr %1539, align 4, !tbaa !81
  %1649 = fsub float 6.553500e+04, %1648
  %1650 = call float @llvm.fmuladd.f32(float %1540, float %1649, float 6.553500e+04)
  store float %1650, ptr %1539, align 4, !tbaa !81
  br label %1659

1651:                                             ; preds = %1646, %1646
  store float 6.553500e+04, ptr %1533, align 4, !tbaa !81
  store float 0.000000e+00, ptr %1534, align 8, !tbaa !77
  store float 0.000000e+00, ptr %1535, align 4, !tbaa !79
  store float 0.000000e+00, ptr %1536, align 8, !tbaa !80
  %1652 = load i32, ptr %1537, align 4, !tbaa !90
  %1653 = icmp eq i32 %1652, 12
  br i1 %1653, label %1654, label %1659

1654:                                             ; preds = %1651
  store float 0.000000e+00, ptr %1538, align 8, !tbaa !84
  br label %1659

1655:                                             ; preds = %1646, %1646, %1646, %1646, %1646, %1646, %1646, %1646
  store float 6.553500e+04, ptr %1532, align 4, !tbaa !81
  br label %1659

1656:                                             ; preds = %1646
  %1657 = sub nsw i64 %1599, %4
  %1658 = call i32 @GetOneVirtualMagickPixel(ptr noundef %828, i64 noundef %1657, i64 noundef %1595, ptr noundef nonnull %13, ptr noundef nonnull %26) #10
  br label %1659

1659:                                             ; preds = %1654, %1651, %1656, %1655, %1647
  %1660 = load i32, ptr %30, align 4, !tbaa !54
  %1661 = icmp eq i32 %1660, 12
  br i1 %1661, label %1662, label %1671

1662:                                             ; preds = %1659
  %1663 = load float, ptr %1541, align 8, !tbaa !77
  %1664 = fsub float 6.553500e+04, %1663
  store float %1664, ptr %1541, align 8, !tbaa !77
  %1665 = load float, ptr %1542, align 4, !tbaa !79
  %1666 = fsub float 6.553500e+04, %1665
  store float %1666, ptr %1542, align 4, !tbaa !79
  %1667 = load float, ptr %1543, align 8, !tbaa !80
  %1668 = fsub float 6.553500e+04, %1667
  store float %1668, ptr %1543, align 8, !tbaa !80
  %1669 = load float, ptr %1544, align 8, !tbaa !84
  %1670 = fsub float 6.553500e+04, %1669
  store float %1670, ptr %1544, align 8, !tbaa !84
  br label %1671

1671:                                             ; preds = %1662, %1659
  %1672 = load float, ptr %1545, align 8, !tbaa !77
  %1673 = fcmp ugt float %1672, 0.000000e+00
  br i1 %1673, label %1674, label %1679

1674:                                             ; preds = %1671
  %1675 = fcmp ult float %1672, 6.553500e+04
  br i1 %1675, label %1676, label %1679

1676:                                             ; preds = %1674
  %1677 = fadd float %1672, 5.000000e-01
  %1678 = fptoui float %1677 to i16
  br label %1679

1679:                                             ; preds = %1671, %1674, %1676
  %1680 = phi i16 [ %1678, %1676 ], [ 0, %1671 ], [ -1, %1674 ]
  store i16 %1680, ptr %1608, align 2, !tbaa !75
  %1681 = load float, ptr %1546, align 4, !tbaa !79
  %1682 = fcmp ugt float %1681, 0.000000e+00
  br i1 %1682, label %1683, label %1688

1683:                                             ; preds = %1679
  %1684 = fcmp ult float %1681, 6.553500e+04
  br i1 %1684, label %1685, label %1688

1685:                                             ; preds = %1683
  %1686 = fadd float %1681, 5.000000e-01
  %1687 = fptoui float %1686 to i16
  br label %1688

1688:                                             ; preds = %1679, %1683, %1685
  %1689 = phi i16 [ %1687, %1685 ], [ 0, %1679 ], [ -1, %1683 ]
  store i16 %1689, ptr %1611, align 2, !tbaa !76
  %1690 = load float, ptr %1547, align 8, !tbaa !80
  %1691 = fcmp ugt float %1690, 0.000000e+00
  br i1 %1691, label %1692, label %1697

1692:                                             ; preds = %1688
  %1693 = fcmp ult float %1690, 6.553500e+04
  br i1 %1693, label %1694, label %1697

1694:                                             ; preds = %1692
  %1695 = fadd float %1690, 5.000000e-01
  %1696 = fptoui float %1695 to i16
  br label %1697

1697:                                             ; preds = %1688, %1692, %1694
  %1698 = phi i16 [ %1696, %1694 ], [ 0, %1688 ], [ -1, %1692 ]
  store i16 %1698, ptr %1598, align 2, !tbaa !74
  %1699 = load i32, ptr %857, align 8, !tbaa !55
  %1700 = icmp eq i32 %1699, 0
  br i1 %1700, label %1712, label %1701

1701:                                             ; preds = %1697
  %1702 = load float, ptr %1548, align 4, !tbaa !81
  %1703 = fcmp ugt float %1702, 0.000000e+00
  br i1 %1703, label %1704, label %1709

1704:                                             ; preds = %1701
  %1705 = fcmp ult float %1702, 6.553500e+04
  br i1 %1705, label %1706, label %1709

1706:                                             ; preds = %1704
  %1707 = fadd float %1702, 5.000000e-01
  %1708 = fptoui float %1707 to i16
  br label %1709

1709:                                             ; preds = %1701, %1704, %1706
  %1710 = phi i16 [ %1708, %1706 ], [ 0, %1701 ], [ -1, %1704 ]
  %1711 = getelementptr inbounds %struct._PixelPacket, ptr %1598, i64 0, i32 3
  store i16 %1710, ptr %1711, align 2, !tbaa !82
  br label %1712

1712:                                             ; preds = %1709, %1697
  %1713 = icmp ne i32 %1660, 12
  %1714 = select i1 %1713, i1 true, i1 %1596
  br i1 %1714, label %6352, label %1715

1715:                                             ; preds = %1712
  %1716 = getelementptr inbounds i16, ptr %1585, i64 %1599
  %1717 = load float, ptr %1549, align 8, !tbaa !84
  %1718 = fcmp ugt float %1717, 0.000000e+00
  br i1 %1718, label %1719, label %1724

1719:                                             ; preds = %1715
  %1720 = fcmp ult float %1717, 6.553500e+04
  br i1 %1720, label %1721, label %1724

1721:                                             ; preds = %1719
  %1722 = fadd float %1717, 5.000000e-01
  %1723 = fptoui float %1722 to i16
  br label %1724

1724:                                             ; preds = %1715, %1719, %1721
  %1725 = phi i16 [ %1723, %1721 ], [ 0, %1715 ], [ -1, %1719 ]
  store i16 %1725, ptr %1716, align 2, !tbaa !85
  br label %6352

1726:                                             ; preds = %1642
  %1727 = getelementptr inbounds %struct._PixelPacket, ptr %1600, i64 0, i32 2
  %1728 = load i16, ptr %1727, align 2, !tbaa !75
  %1729 = uitofp i16 %1728 to float
  store float %1729, ptr %862, align 8, !tbaa !77
  %1730 = getelementptr inbounds %struct._PixelPacket, ptr %1600, i64 0, i32 1
  %1731 = load i16, ptr %1730, align 2, !tbaa !76
  %1732 = uitofp i16 %1731 to float
  store float %1732, ptr %863, align 4, !tbaa !79
  %1733 = load i16, ptr %1600, align 2, !tbaa !74
  %1734 = uitofp i16 %1733 to float
  store float %1734, ptr %864, align 8, !tbaa !80
  %1735 = load i32, ptr %865, align 8, !tbaa !55
  %1736 = icmp eq i32 %1735, 0
  br i1 %1736, label %1741, label %1737

1737:                                             ; preds = %1726
  %1738 = getelementptr inbounds %struct._PixelPacket, ptr %1600, i64 0, i32 3
  %1739 = load i16, ptr %1738, align 2, !tbaa !82
  %1740 = uitofp i16 %1739 to float
  store float %1740, ptr %866, align 4, !tbaa !81
  br label %1741

1741:                                             ; preds = %1737, %1726
  %1742 = load i32, ptr %867, align 4, !tbaa !54
  %1743 = icmp eq i32 %1742, 12
  br i1 %1743, label %1744, label %1758

1744:                                             ; preds = %1741
  br i1 %1592, label %1749, label %1745

1745:                                             ; preds = %1744
  %1746 = getelementptr i16, ptr %1593, i64 %1599
  %1747 = load i16, ptr %1746, align 2, !tbaa !85
  %1748 = zext i16 %1747 to i32
  br label %1749

1749:                                             ; preds = %1744, %1745
  %1750 = phi i32 [ %1748, %1745 ], [ 0, %1744 ]
  %1751 = sitofp i32 %1750 to float
  store float %1751, ptr %869, align 8, !tbaa !84
  br i1 %1743, label %1752, label %1758

1752:                                             ; preds = %1749
  %1753 = fsub float 6.553500e+04, %1729
  store float %1753, ptr %862, align 8, !tbaa !77
  %1754 = fsub float 6.553500e+04, %1732
  store float %1754, ptr %863, align 4, !tbaa !79
  %1755 = fsub float 6.553500e+04, %1734
  store float %1755, ptr %864, align 8, !tbaa !80
  %1756 = load float, ptr %870, align 8, !tbaa !84
  %1757 = fsub float 6.553500e+04, %1756
  store float %1757, ptr %870, align 8, !tbaa !84
  br label %1758

1758:                                             ; preds = %1741, %1752, %1749
  switch i32 %2, label %6283 [
    i32 7, label %1759
    i32 48, label %1763
    i32 13, label %1763
    i32 43, label %1763
    i32 56, label %6282
    i32 27, label %6282
    i32 40, label %1764
    i32 51, label %1764
    i32 25, label %1835
    i32 49, label %1906
    i32 32, label %1906
    i32 23, label %1952
    i32 39, label %1998
    i32 50, label %1998
    i32 24, label %2054
    i32 3, label %2110
    i32 47, label %2110
    i32 21, label %2149
    i32 54, label %2188
    i32 42, label %2257
    i32 36, label %2343
    i32 65, label %2344
    i32 2, label %2345
    i32 52, label %2513
    i32 26, label %2681
    i32 29, label %2799
    i32 38, label %3014
    i32 45, label %3165
    i32 55, label %3303
    i32 64, label %3304
    i32 20, label %3305
    i32 33, label %3435
    i32 66, label %3567
    i32 67, label %3670
    i32 63, label %3773
    i32 9, label %4038
    i32 8, label %4173
    i32 61, label %4403
    i32 62, label %4461
    i32 30, label %4543
    i32 41, label %4544
    i32 46, label %4545
    i32 34, label %4623
    i32 58, label %4709
    i32 59, label %4849
    i32 60, label %5109
    i32 6, label %5299
    i32 5, label %5307
    i32 28, label %5349
    i32 4, label %5424
    i32 53, label %5484
    i32 37, label %5529
    i32 31, label %5661
    i32 44, label %5789
    i32 35, label %5917
    i32 10, label %6045
    i32 18, label %6173
    i32 14, label %6173
    i32 15, label %6175
    i32 16, label %6175
    i32 12, label %6177
    i32 19, label %6177
    i32 17, label %6179
    i32 11, label %6215
    i32 57, label %6282
  ]

1759:                                             ; preds = %1758
  store float 6.553500e+04, ptr %1517, align 4, !tbaa !81
  store float 0.000000e+00, ptr %1518, align 8, !tbaa !77
  store float 0.000000e+00, ptr %1519, align 4, !tbaa !79
  store float 0.000000e+00, ptr %1520, align 8, !tbaa !80
  %1760 = load i32, ptr %1521, align 4, !tbaa !90
  %1761 = icmp eq i32 %1760, 12
  br i1 %1761, label %1762, label %6283

1762:                                             ; preds = %1759
  store float 0.000000e+00, ptr %1522, align 8, !tbaa !84
  br label %6283

1763:                                             ; preds = %1758, %1758, %1758
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %13, ptr noundef nonnull align 8 dereferenceable(56) %15, i64 56, i1 false), !tbaa.struct !67
  br label %6283

1764:                                             ; preds = %1758, %1758
  %1765 = load float, ptr %1507, align 4, !tbaa !81
  %1766 = fcmp oeq float %1765, 0.000000e+00
  br i1 %1766, label %1767, label %1768

1767:                                             ; preds = %1764
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %13, ptr noundef nonnull align 8 dereferenceable(56) %15, i64 56, i1 false), !tbaa.struct !67
  br label %6283

1768:                                             ; preds = %1764
  %1769 = load float, ptr %1508, align 4, !tbaa !81
  %1770 = fpext float %1765 to double
  %1771 = fpext float %1769 to double
  %1772 = fmul double %1770, 0xBDF0002000300040
  %1773 = call double @llvm.fmuladd.f64(double %1772, double %1771, double 1.000000e+00)
  %1774 = fcmp olt double %1773, 0.000000e+00
  %1775 = select i1 %1774, double 0.000000e+00, double %1773
  %1776 = fsub double 1.000000e+00, %1775
  %1777 = fmul double %1776, 6.553500e+04
  %1778 = fptrunc double %1777 to float
  store float %1778, ptr %1509, align 4, !tbaa !81
  %1779 = fcmp ult double %1775, 1.000000e-15
  %1780 = fdiv double 1.000000e+00, %1775
  %1781 = select i1 %1779, double 0x430C6BF52633FFFF, double %1780
  %1782 = load float, ptr %862, align 8, !tbaa !77
  %1783 = load float, ptr %854, align 8, !tbaa !77
  %1784 = call double @llvm.fmuladd.f64(double %1770, double 0xBEF0001000100010, double 1.000000e+00)
  %1785 = fpext float %1782 to double
  %1786 = call double @llvm.fmuladd.f64(double %1771, double 0xBEF0001000100010, double 1.000000e+00)
  %1787 = fpext float %1783 to double
  %1788 = fmul double %1786, %1787
  %1789 = fmul double %1788, 0x3EF0001000100010
  %1790 = fmul double %1789, %1770
  %1791 = call double @llvm.fmuladd.f64(double %1784, double %1785, double %1790)
  %1792 = fptrunc double %1791 to float
  %1793 = fpext float %1792 to double
  %1794 = fmul double %1781, %1793
  %1795 = fptrunc double %1794 to float
  store float %1795, ptr %1510, align 8, !tbaa !77
  %1796 = load float, ptr %863, align 4, !tbaa !79
  %1797 = load float, ptr %855, align 4, !tbaa !79
  %1798 = fpext float %1796 to double
  %1799 = fpext float %1797 to double
  %1800 = fmul double %1786, %1799
  %1801 = fmul double %1800, 0x3EF0001000100010
  %1802 = fmul double %1801, %1770
  %1803 = call double @llvm.fmuladd.f64(double %1784, double %1798, double %1802)
  %1804 = fptrunc double %1803 to float
  %1805 = fpext float %1804 to double
  %1806 = fmul double %1781, %1805
  %1807 = fptrunc double %1806 to float
  store float %1807, ptr %1511, align 4, !tbaa !79
  %1808 = load float, ptr %864, align 8, !tbaa !80
  %1809 = load float, ptr %856, align 8, !tbaa !80
  %1810 = fpext float %1808 to double
  %1811 = fpext float %1809 to double
  %1812 = fmul double %1786, %1811
  %1813 = fmul double %1812, 0x3EF0001000100010
  %1814 = fmul double %1813, %1770
  %1815 = call double @llvm.fmuladd.f64(double %1784, double %1810, double %1814)
  %1816 = fptrunc double %1815 to float
  %1817 = fpext float %1816 to double
  %1818 = fmul double %1781, %1817
  %1819 = fptrunc double %1818 to float
  store float %1819, ptr %1512, align 8, !tbaa !80
  %1820 = load i32, ptr %1513, align 4, !tbaa !90
  %1821 = icmp eq i32 %1820, 12
  br i1 %1821, label %1822, label %6283

1822:                                             ; preds = %1768
  %1823 = load float, ptr %1514, align 8, !tbaa !84
  %1824 = load float, ptr %1515, align 8, !tbaa !84
  %1825 = fpext float %1823 to double
  %1826 = fpext float %1824 to double
  %1827 = fmul double %1786, %1826
  %1828 = fmul double %1827, 0x3EF0001000100010
  %1829 = fmul double %1828, %1770
  %1830 = call double @llvm.fmuladd.f64(double %1784, double %1825, double %1829)
  %1831 = fptrunc double %1830 to float
  %1832 = fpext float %1831 to double
  %1833 = fmul double %1781, %1832
  %1834 = fptrunc double %1833 to float
  store float %1834, ptr %1516, align 8, !tbaa !84
  br label %6283

1835:                                             ; preds = %1758
  %1836 = load float, ptr %1497, align 4, !tbaa !81
  %1837 = fcmp oeq float %1836, 0.000000e+00
  br i1 %1837, label %1838, label %1839

1838:                                             ; preds = %1835
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %13, ptr noundef nonnull align 8 dereferenceable(56) %14, i64 56, i1 false), !tbaa.struct !67
  br label %6283

1839:                                             ; preds = %1835
  %1840 = load float, ptr %1498, align 4, !tbaa !81
  %1841 = fpext float %1836 to double
  %1842 = fpext float %1840 to double
  %1843 = fmul double %1841, 0xBDF0002000300040
  %1844 = call double @llvm.fmuladd.f64(double %1843, double %1842, double 1.000000e+00)
  %1845 = fcmp olt double %1844, 0.000000e+00
  %1846 = select i1 %1845, double 0.000000e+00, double %1844
  %1847 = fsub double 1.000000e+00, %1846
  %1848 = fmul double %1847, 6.553500e+04
  %1849 = fptrunc double %1848 to float
  store float %1849, ptr %1499, align 4, !tbaa !81
  %1850 = fcmp ult double %1846, 1.000000e-15
  %1851 = fdiv double 1.000000e+00, %1846
  %1852 = select i1 %1850, double 0x430C6BF52633FFFF, double %1851
  %1853 = load float, ptr %854, align 8, !tbaa !77
  %1854 = load float, ptr %862, align 8, !tbaa !77
  %1855 = call double @llvm.fmuladd.f64(double %1841, double 0xBEF0001000100010, double 1.000000e+00)
  %1856 = fpext float %1853 to double
  %1857 = call double @llvm.fmuladd.f64(double %1842, double 0xBEF0001000100010, double 1.000000e+00)
  %1858 = fpext float %1854 to double
  %1859 = fmul double %1857, %1858
  %1860 = fmul double %1859, 0x3EF0001000100010
  %1861 = fmul double %1860, %1841
  %1862 = call double @llvm.fmuladd.f64(double %1855, double %1856, double %1861)
  %1863 = fptrunc double %1862 to float
  %1864 = fpext float %1863 to double
  %1865 = fmul double %1852, %1864
  %1866 = fptrunc double %1865 to float
  store float %1866, ptr %1500, align 8, !tbaa !77
  %1867 = load float, ptr %855, align 4, !tbaa !79
  %1868 = load float, ptr %863, align 4, !tbaa !79
  %1869 = fpext float %1867 to double
  %1870 = fpext float %1868 to double
  %1871 = fmul double %1857, %1870
  %1872 = fmul double %1871, 0x3EF0001000100010
  %1873 = fmul double %1872, %1841
  %1874 = call double @llvm.fmuladd.f64(double %1855, double %1869, double %1873)
  %1875 = fptrunc double %1874 to float
  %1876 = fpext float %1875 to double
  %1877 = fmul double %1852, %1876
  %1878 = fptrunc double %1877 to float
  store float %1878, ptr %1501, align 4, !tbaa !79
  %1879 = load float, ptr %856, align 8, !tbaa !80
  %1880 = load float, ptr %864, align 8, !tbaa !80
  %1881 = fpext float %1879 to double
  %1882 = fpext float %1880 to double
  %1883 = fmul double %1857, %1882
  %1884 = fmul double %1883, 0x3EF0001000100010
  %1885 = fmul double %1884, %1841
  %1886 = call double @llvm.fmuladd.f64(double %1855, double %1881, double %1885)
  %1887 = fptrunc double %1886 to float
  %1888 = fpext float %1887 to double
  %1889 = fmul double %1852, %1888
  %1890 = fptrunc double %1889 to float
  store float %1890, ptr %1502, align 8, !tbaa !80
  %1891 = load i32, ptr %1503, align 4, !tbaa !90
  %1892 = icmp eq i32 %1891, 12
  br i1 %1892, label %1893, label %6283

1893:                                             ; preds = %1839
  %1894 = load float, ptr %1504, align 8, !tbaa !84
  %1895 = load float, ptr %1505, align 8, !tbaa !84
  %1896 = fpext float %1894 to double
  %1897 = fpext float %1895 to double
  %1898 = fmul double %1857, %1897
  %1899 = fmul double %1898, 0x3EF0001000100010
  %1900 = fmul double %1899, %1841
  %1901 = call double @llvm.fmuladd.f64(double %1855, double %1896, double %1900)
  %1902 = fptrunc double %1901 to float
  %1903 = fpext float %1902 to double
  %1904 = fmul double %1852, %1903
  %1905 = fptrunc double %1904 to float
  store float %1905, ptr %1506, align 8, !tbaa !84
  br label %6283

1906:                                             ; preds = %1758, %1758
  %1907 = load float, ptr %1488, align 4, !tbaa !81
  %1908 = fpext float %1907 to double
  %1909 = call double @llvm.fmuladd.f64(double %1908, double 0xBEF0001000100010, double 1.000000e+00)
  %1910 = fptrunc double %1909 to float
  %1911 = load float, ptr %1489, align 4, !tbaa !81
  %1912 = fpext float %1911 to double
  %1913 = call double @llvm.fmuladd.f64(double %1912, double 0xBEF0001000100010, double 1.000000e+00)
  %1914 = fptrunc double %1913 to float
  %1915 = fmul float %1910, %1914
  %1916 = fcmp ole float %1915, 0.000000e+00
  %1917 = select i1 %1916, float 0.000000e+00, float %1915
  %1918 = fpext float %1917 to double
  %1919 = fsub double 1.000000e+00, %1918
  %1920 = fmul double %1919, 6.553500e+04
  %1921 = fptrunc double %1920 to float
  store float %1921, ptr %1490, align 4, !tbaa !81
  %1922 = fcmp ult double %1918, 1.000000e-15
  %1923 = fdiv double 1.000000e+00, %1918
  %1924 = select i1 %1922, double 0x430C6BF52633FFFF, double %1923
  %1925 = load float, ptr %862, align 8, !tbaa !77
  %1926 = fmul float %1925, %1910
  %1927 = fmul float %1926, %1914
  %1928 = fpext float %1927 to double
  %1929 = fmul double %1924, %1928
  %1930 = fptrunc double %1929 to float
  store float %1930, ptr %1491, align 8, !tbaa !77
  %1931 = load float, ptr %863, align 4, !tbaa !79
  %1932 = fmul float %1931, %1910
  %1933 = fmul float %1932, %1914
  %1934 = fpext float %1933 to double
  %1935 = fmul double %1924, %1934
  %1936 = fptrunc double %1935 to float
  store float %1936, ptr %1492, align 4, !tbaa !79
  %1937 = load float, ptr %864, align 8, !tbaa !80
  %1938 = fmul float %1937, %1910
  %1939 = fmul float %1938, %1914
  %1940 = fpext float %1939 to double
  %1941 = fmul double %1924, %1940
  %1942 = fptrunc double %1941 to float
  store float %1942, ptr %1493, align 8, !tbaa !80
  %1943 = load i32, ptr %1494, align 4, !tbaa !90
  %1944 = icmp eq i32 %1943, 12
  br i1 %1944, label %1945, label %6283

1945:                                             ; preds = %1906
  %1946 = load float, ptr %1495, align 8, !tbaa !84
  %1947 = fmul float %1946, %1910
  %1948 = fmul float %1947, %1914
  %1949 = fpext float %1948 to double
  %1950 = fmul double %1924, %1949
  %1951 = fptrunc double %1950 to float
  store float %1951, ptr %1496, align 8, !tbaa !84
  br label %6283

1952:                                             ; preds = %1758
  %1953 = load float, ptr %1479, align 4, !tbaa !81
  %1954 = fpext float %1953 to double
  %1955 = call double @llvm.fmuladd.f64(double %1954, double 0xBEF0001000100010, double 1.000000e+00)
  %1956 = fptrunc double %1955 to float
  %1957 = load float, ptr %1480, align 4, !tbaa !81
  %1958 = fpext float %1957 to double
  %1959 = call double @llvm.fmuladd.f64(double %1958, double 0xBEF0001000100010, double 1.000000e+00)
  %1960 = fptrunc double %1959 to float
  %1961 = fmul float %1956, %1960
  %1962 = fcmp ole float %1961, 0.000000e+00
  %1963 = select i1 %1962, float 0.000000e+00, float %1961
  %1964 = fpext float %1963 to double
  %1965 = fsub double 1.000000e+00, %1964
  %1966 = fmul double %1965, 6.553500e+04
  %1967 = fptrunc double %1966 to float
  store float %1967, ptr %1481, align 4, !tbaa !81
  %1968 = fcmp ult double %1964, 1.000000e-15
  %1969 = fdiv double 1.000000e+00, %1964
  %1970 = select i1 %1968, double 0x430C6BF52633FFFF, double %1969
  %1971 = load float, ptr %854, align 8, !tbaa !77
  %1972 = fmul float %1971, %1956
  %1973 = fmul float %1972, %1960
  %1974 = fpext float %1973 to double
  %1975 = fmul double %1970, %1974
  %1976 = fptrunc double %1975 to float
  store float %1976, ptr %1482, align 8, !tbaa !77
  %1977 = load float, ptr %855, align 4, !tbaa !79
  %1978 = fmul float %1977, %1956
  %1979 = fmul float %1978, %1960
  %1980 = fpext float %1979 to double
  %1981 = fmul double %1970, %1980
  %1982 = fptrunc double %1981 to float
  store float %1982, ptr %1483, align 4, !tbaa !79
  %1983 = load float, ptr %856, align 8, !tbaa !80
  %1984 = fmul float %1983, %1956
  %1985 = fmul float %1984, %1960
  %1986 = fpext float %1985 to double
  %1987 = fmul double %1970, %1986
  %1988 = fptrunc double %1987 to float
  store float %1988, ptr %1484, align 8, !tbaa !80
  %1989 = load i32, ptr %1485, align 4, !tbaa !90
  %1990 = icmp eq i32 %1989, 12
  br i1 %1990, label %1991, label %6283

1991:                                             ; preds = %1952
  %1992 = load float, ptr %1486, align 8, !tbaa !84
  %1993 = fmul float %1992, %1956
  %1994 = fmul float %1993, %1960
  %1995 = fpext float %1994 to double
  %1996 = fmul double %1970, %1995
  %1997 = fptrunc double %1996 to float
  store float %1997, ptr %1487, align 8, !tbaa !84
  br label %6283

1998:                                             ; preds = %1758, %1758
  %1999 = load float, ptr %1470, align 4, !tbaa !81
  %2000 = fpext float %1999 to double
  %2001 = call double @llvm.fmuladd.f64(double %2000, double 0xBEF0001000100010, double 1.000000e+00)
  %2002 = fptrunc double %2001 to float
  %2003 = load float, ptr %1471, align 4, !tbaa !81
  %2004 = fpext float %2003 to double
  %2005 = call double @llvm.fmuladd.f64(double %2004, double 0xBEF0001000100010, double 1.000000e+00)
  %2006 = fptrunc double %2005 to float
  %2007 = fpext float %2002 to double
  %2008 = fpext float %2006 to double
  %2009 = fsub double 1.000000e+00, %2008
  %2010 = fmul double %2009, %2007
  %2011 = fcmp olt double %2010, 0.000000e+00
  %2012 = select i1 %2011, double 0.000000e+00, double %2010
  %2013 = fsub double 1.000000e+00, %2012
  %2014 = fmul double %2013, 6.553500e+04
  %2015 = fptrunc double %2014 to float
  store float %2015, ptr %1472, align 4, !tbaa !81
  %2016 = fcmp ult double %2012, 1.000000e-15
  %2017 = fdiv double 1.000000e+00, %2012
  %2018 = select i1 %2016, double 0x430C6BF52633FFFF, double %2017
  %2019 = load float, ptr %862, align 8, !tbaa !77
  %2020 = fmul float %2019, %2002
  %2021 = fpext float %2020 to double
  %2022 = fmul double %2009, %2021
  %2023 = fptrunc double %2022 to float
  %2024 = fpext float %2023 to double
  %2025 = fmul double %2018, %2024
  %2026 = fptrunc double %2025 to float
  store float %2026, ptr %1473, align 8, !tbaa !77
  %2027 = load float, ptr %863, align 4, !tbaa !79
  %2028 = fmul float %2027, %2002
  %2029 = fpext float %2028 to double
  %2030 = fmul double %2009, %2029
  %2031 = fptrunc double %2030 to float
  %2032 = fpext float %2031 to double
  %2033 = fmul double %2018, %2032
  %2034 = fptrunc double %2033 to float
  store float %2034, ptr %1474, align 4, !tbaa !79
  %2035 = load float, ptr %864, align 8, !tbaa !80
  %2036 = fmul float %2035, %2002
  %2037 = fpext float %2036 to double
  %2038 = fmul double %2009, %2037
  %2039 = fptrunc double %2038 to float
  %2040 = fpext float %2039 to double
  %2041 = fmul double %2018, %2040
  %2042 = fptrunc double %2041 to float
  store float %2042, ptr %1475, align 8, !tbaa !80
  %2043 = load i32, ptr %1476, align 4, !tbaa !90
  %2044 = icmp eq i32 %2043, 12
  br i1 %2044, label %2045, label %6283

2045:                                             ; preds = %1998
  %2046 = load float, ptr %1477, align 8, !tbaa !84
  %2047 = fmul float %2046, %2002
  %2048 = fpext float %2047 to double
  %2049 = fmul double %2009, %2048
  %2050 = fptrunc double %2049 to float
  %2051 = fpext float %2050 to double
  %2052 = fmul double %2018, %2051
  %2053 = fptrunc double %2052 to float
  store float %2053, ptr %1478, align 8, !tbaa !84
  br label %6283

2054:                                             ; preds = %1758
  %2055 = load float, ptr %1461, align 4, !tbaa !81
  %2056 = fpext float %2055 to double
  %2057 = call double @llvm.fmuladd.f64(double %2056, double 0xBEF0001000100010, double 1.000000e+00)
  %2058 = fptrunc double %2057 to float
  %2059 = load float, ptr %1462, align 4, !tbaa !81
  %2060 = fpext float %2059 to double
  %2061 = call double @llvm.fmuladd.f64(double %2060, double 0xBEF0001000100010, double 1.000000e+00)
  %2062 = fptrunc double %2061 to float
  %2063 = fpext float %2058 to double
  %2064 = fpext float %2062 to double
  %2065 = fsub double 1.000000e+00, %2064
  %2066 = fmul double %2065, %2063
  %2067 = fcmp olt double %2066, 0.000000e+00
  %2068 = select i1 %2067, double 0.000000e+00, double %2066
  %2069 = fsub double 1.000000e+00, %2068
  %2070 = fmul double %2069, 6.553500e+04
  %2071 = fptrunc double %2070 to float
  store float %2071, ptr %1463, align 4, !tbaa !81
  %2072 = fcmp ult double %2068, 1.000000e-15
  %2073 = fdiv double 1.000000e+00, %2068
  %2074 = select i1 %2072, double 0x430C6BF52633FFFF, double %2073
  %2075 = load float, ptr %854, align 8, !tbaa !77
  %2076 = fmul float %2075, %2058
  %2077 = fpext float %2076 to double
  %2078 = fmul double %2065, %2077
  %2079 = fptrunc double %2078 to float
  %2080 = fpext float %2079 to double
  %2081 = fmul double %2074, %2080
  %2082 = fptrunc double %2081 to float
  store float %2082, ptr %1464, align 8, !tbaa !77
  %2083 = load float, ptr %855, align 4, !tbaa !79
  %2084 = fmul float %2083, %2058
  %2085 = fpext float %2084 to double
  %2086 = fmul double %2065, %2085
  %2087 = fptrunc double %2086 to float
  %2088 = fpext float %2087 to double
  %2089 = fmul double %2074, %2088
  %2090 = fptrunc double %2089 to float
  store float %2090, ptr %1465, align 4, !tbaa !79
  %2091 = load float, ptr %856, align 8, !tbaa !80
  %2092 = fmul float %2091, %2058
  %2093 = fpext float %2092 to double
  %2094 = fmul double %2065, %2093
  %2095 = fptrunc double %2094 to float
  %2096 = fpext float %2095 to double
  %2097 = fmul double %2074, %2096
  %2098 = fptrunc double %2097 to float
  store float %2098, ptr %1466, align 8, !tbaa !80
  %2099 = load i32, ptr %1467, align 4, !tbaa !90
  %2100 = icmp eq i32 %2099, 12
  br i1 %2100, label %2101, label %6283

2101:                                             ; preds = %2054
  %2102 = load float, ptr %1468, align 8, !tbaa !84
  %2103 = fmul float %2102, %2058
  %2104 = fpext float %2103 to double
  %2105 = fmul double %2065, %2104
  %2106 = fptrunc double %2105 to float
  %2107 = fpext float %2106 to double
  %2108 = fmul double %2074, %2107
  %2109 = fptrunc double %2108 to float
  store float %2109, ptr %1469, align 8, !tbaa !84
  br label %6283

2110:                                             ; preds = %1758, %1758
  %2111 = load float, ptr %1451, align 4, !tbaa !81
  %2112 = fpext float %2111 to double
  %2113 = call double @llvm.fmuladd.f64(double %2112, double 0xBEF0001000100010, double 1.000000e+00)
  %2114 = fptrunc double %2113 to float
  %2115 = load float, ptr %1452, align 4, !tbaa !81
  store float %2115, ptr %1453, align 4, !tbaa !81
  %2116 = load float, ptr %862, align 8, !tbaa !77
  %2117 = load float, ptr %854, align 8, !tbaa !77
  %2118 = fmul float %2116, %2114
  %2119 = fpext float %2118 to double
  %2120 = fpext float %2117 to double
  %2121 = fpext float %2114 to double
  %2122 = fsub double 1.000000e+00, %2121
  %2123 = call double @llvm.fmuladd.f64(double %2120, double %2122, double %2119)
  %2124 = fptrunc double %2123 to float
  store float %2124, ptr %1454, align 8, !tbaa !77
  %2125 = load float, ptr %863, align 4, !tbaa !79
  %2126 = load float, ptr %855, align 4, !tbaa !79
  %2127 = fmul float %2125, %2114
  %2128 = fpext float %2127 to double
  %2129 = fpext float %2126 to double
  %2130 = call double @llvm.fmuladd.f64(double %2129, double %2122, double %2128)
  %2131 = fptrunc double %2130 to float
  store float %2131, ptr %1455, align 4, !tbaa !79
  %2132 = load float, ptr %864, align 8, !tbaa !80
  %2133 = load float, ptr %856, align 8, !tbaa !80
  %2134 = fmul float %2132, %2114
  %2135 = fpext float %2134 to double
  %2136 = fpext float %2133 to double
  %2137 = call double @llvm.fmuladd.f64(double %2136, double %2122, double %2135)
  %2138 = fptrunc double %2137 to float
  store float %2138, ptr %1456, align 8, !tbaa !80
  %2139 = load i32, ptr %1457, align 4, !tbaa !90
  %2140 = icmp eq i32 %2139, 12
  br i1 %2140, label %2141, label %6283

2141:                                             ; preds = %2110
  %2142 = load float, ptr %1458, align 8, !tbaa !84
  %2143 = load float, ptr %1459, align 8, !tbaa !84
  %2144 = fmul float %2142, %2114
  %2145 = fpext float %2144 to double
  %2146 = fpext float %2143 to double
  %2147 = call double @llvm.fmuladd.f64(double %2146, double %2122, double %2145)
  %2148 = fptrunc double %2147 to float
  store float %2148, ptr %1460, align 8, !tbaa !84
  br label %6283

2149:                                             ; preds = %1758
  %2150 = load float, ptr %1441, align 4, !tbaa !81
  %2151 = fpext float %2150 to double
  %2152 = call double @llvm.fmuladd.f64(double %2151, double 0xBEF0001000100010, double 1.000000e+00)
  %2153 = fptrunc double %2152 to float
  %2154 = load float, ptr %1442, align 4, !tbaa !81
  store float %2154, ptr %1443, align 4, !tbaa !81
  %2155 = load float, ptr %854, align 8, !tbaa !77
  %2156 = load float, ptr %862, align 8, !tbaa !77
  %2157 = fmul float %2155, %2153
  %2158 = fpext float %2157 to double
  %2159 = fpext float %2156 to double
  %2160 = fpext float %2153 to double
  %2161 = fsub double 1.000000e+00, %2160
  %2162 = call double @llvm.fmuladd.f64(double %2159, double %2161, double %2158)
  %2163 = fptrunc double %2162 to float
  store float %2163, ptr %1444, align 8, !tbaa !77
  %2164 = load float, ptr %855, align 4, !tbaa !79
  %2165 = load float, ptr %863, align 4, !tbaa !79
  %2166 = fmul float %2164, %2153
  %2167 = fpext float %2166 to double
  %2168 = fpext float %2165 to double
  %2169 = call double @llvm.fmuladd.f64(double %2168, double %2161, double %2167)
  %2170 = fptrunc double %2169 to float
  store float %2170, ptr %1445, align 4, !tbaa !79
  %2171 = load float, ptr %856, align 8, !tbaa !80
  %2172 = load float, ptr %864, align 8, !tbaa !80
  %2173 = fmul float %2171, %2153
  %2174 = fpext float %2173 to double
  %2175 = fpext float %2172 to double
  %2176 = call double @llvm.fmuladd.f64(double %2175, double %2161, double %2174)
  %2177 = fptrunc double %2176 to float
  store float %2177, ptr %1446, align 8, !tbaa !80
  %2178 = load i32, ptr %1447, align 4, !tbaa !90
  %2179 = icmp eq i32 %2178, 12
  br i1 %2179, label %2180, label %6283

2180:                                             ; preds = %2149
  %2181 = load float, ptr %1448, align 8, !tbaa !84
  %2182 = load float, ptr %1449, align 8, !tbaa !84
  %2183 = fmul float %2181, %2153
  %2184 = fpext float %2183 to double
  %2185 = fpext float %2182 to double
  %2186 = call double @llvm.fmuladd.f64(double %2185, double %2161, double %2184)
  %2187 = fptrunc double %2186 to float
  store float %2187, ptr %1450, align 8, !tbaa !84
  br label %6283

2188:                                             ; preds = %1758
  %2189 = load float, ptr %1431, align 4, !tbaa !81
  %2190 = fpext float %2189 to double
  %2191 = call double @llvm.fmuladd.f64(double %2190, double 0xBEF0001000100010, double 1.000000e+00)
  %2192 = fptrunc double %2191 to float
  %2193 = load float, ptr %1432, align 4, !tbaa !81
  %2194 = fpext float %2193 to double
  %2195 = call double @llvm.fmuladd.f64(double %2194, double 0xBEF0001000100010, double 1.000000e+00)
  %2196 = fptrunc double %2195 to float
  %2197 = fadd float %2192, %2196
  %2198 = fmul float %2192, -2.000000e+00
  %2199 = call float @llvm.fmuladd.f32(float %2198, float %2196, float %2197)
  %2200 = fcmp olt float %2199, 0.000000e+00
  %2201 = select i1 %2200, float 0.000000e+00, float %2199
  %2202 = fpext float %2201 to double
  %2203 = fsub double 1.000000e+00, %2202
  %2204 = fmul double %2203, 6.553500e+04
  %2205 = fptrunc double %2204 to float
  store float %2205, ptr %1433, align 4, !tbaa !81
  %2206 = fcmp ult double %2202, 1.000000e-15
  %2207 = fdiv double 1.000000e+00, %2202
  %2208 = select i1 %2206, double 0x430C6BF52633FFFF, double %2207
  %2209 = fptrunc double %2208 to float
  %2210 = load float, ptr %862, align 8, !tbaa !77
  %2211 = fmul float %2210, %2192
  %2212 = load float, ptr %854, align 8, !tbaa !77
  %2213 = fmul float %2212, %2196
  %2214 = fpext float %2211 to double
  %2215 = fpext float %2196 to double
  %2216 = fsub double 1.000000e+00, %2215
  %2217 = fpext float %2213 to double
  %2218 = fpext float %2192 to double
  %2219 = fsub double 1.000000e+00, %2218
  %2220 = fmul double %2219, %2217
  %2221 = call double @llvm.fmuladd.f64(double %2214, double %2216, double %2220)
  %2222 = fptrunc double %2221 to float
  %2223 = fmul float %2222, %2209
  store float %2223, ptr %1434, align 8, !tbaa !77
  %2224 = load float, ptr %863, align 4, !tbaa !79
  %2225 = fmul float %2224, %2192
  %2226 = load float, ptr %855, align 4, !tbaa !79
  %2227 = fmul float %2226, %2196
  %2228 = fpext float %2225 to double
  %2229 = fpext float %2227 to double
  %2230 = fmul double %2219, %2229
  %2231 = call double @llvm.fmuladd.f64(double %2228, double %2216, double %2230)
  %2232 = fptrunc double %2231 to float
  %2233 = fmul float %2232, %2209
  store float %2233, ptr %1435, align 4, !tbaa !79
  %2234 = load float, ptr %864, align 8, !tbaa !80
  %2235 = fmul float %2234, %2192
  %2236 = load float, ptr %856, align 8, !tbaa !80
  %2237 = fmul float %2236, %2196
  %2238 = fpext float %2235 to double
  %2239 = fpext float %2237 to double
  %2240 = fmul double %2219, %2239
  %2241 = call double @llvm.fmuladd.f64(double %2238, double %2216, double %2240)
  %2242 = fptrunc double %2241 to float
  %2243 = fmul float %2209, %2242
  store float %2243, ptr %1436, align 8, !tbaa !80
  %2244 = load i32, ptr %1437, align 4, !tbaa !90
  %2245 = icmp eq i32 %2244, 12
  br i1 %2245, label %2246, label %6283

2246:                                             ; preds = %2188
  %2247 = load float, ptr %1438, align 8, !tbaa !84
  %2248 = fmul float %2247, %2192
  %2249 = load float, ptr %1439, align 8, !tbaa !84
  %2250 = fmul float %2249, %2196
  %2251 = fpext float %2248 to double
  %2252 = fpext float %2250 to double
  %2253 = fmul double %2219, %2252
  %2254 = call double @llvm.fmuladd.f64(double %2251, double %2216, double %2253)
  %2255 = fptrunc double %2254 to float
  %2256 = fmul float %2209, %2255
  store float %2256, ptr %1440, align 8, !tbaa !84
  br label %6283

2257:                                             ; preds = %1758
  br i1 %1400, label %2314, label %2258

2258:                                             ; preds = %2257
  %2259 = load float, ptr %1401, align 4, !tbaa !81
  %2260 = load float, ptr %1402, align 4, !tbaa !81
  %2261 = fpext float %2259 to double
  %2262 = call double @llvm.fmuladd.f64(double %2261, double 0xBEF0001000100010, double 1.000000e+00)
  %2263 = fptrunc double %2262 to float
  %2264 = fpext float %2260 to double
  %2265 = call double @llvm.fmuladd.f64(double %2264, double 0xBEF0001000100010, double 1.000000e+00)
  %2266 = fptrunc double %2265 to float
  %2267 = fadd float %2263, %2266
  %2268 = fcmp olt float %2267, 0.000000e+00
  %2269 = fcmp ogt float %2267, 1.000000e+00
  %2270 = select i1 %2269, float 1.000000e+00, float %2267
  %2271 = select i1 %2268, float 0.000000e+00, float %2270
  %2272 = fpext float %2271 to double
  %2273 = fsub double 1.000000e+00, %2272
  %2274 = fmul double %2273, 6.553500e+04
  %2275 = fptrunc double %2274 to float
  store float %2275, ptr %1403, align 4, !tbaa !81
  %2276 = fcmp olt float %2271, 0.000000e+00
  %2277 = select i1 %2276, double -1.000000e+00, double 1.000000e+00
  %2278 = fmul double %2277, %2272
  %2279 = fcmp ult double %2278, 1.000000e-15
  %2280 = fdiv double 1.000000e+00, %2272
  %2281 = fdiv double %2277, 1.000000e-15
  %2282 = select i1 %2279, double %2281, double %2280
  %2283 = load float, ptr %862, align 8, !tbaa !77
  %2284 = load float, ptr %854, align 8, !tbaa !77
  %2285 = fmul float %2284, %2266
  %2286 = call float @llvm.fmuladd.f32(float %2263, float %2283, float %2285)
  %2287 = fpext float %2286 to double
  %2288 = fmul double %2282, %2287
  %2289 = fptrunc double %2288 to float
  store float %2289, ptr %1404, align 8, !tbaa !77
  %2290 = load float, ptr %863, align 4, !tbaa !79
  %2291 = load float, ptr %855, align 4, !tbaa !79
  %2292 = fmul float %2291, %2266
  %2293 = call float @llvm.fmuladd.f32(float %2263, float %2290, float %2292)
  %2294 = fpext float %2293 to double
  %2295 = fmul double %2282, %2294
  %2296 = fptrunc double %2295 to float
  store float %2296, ptr %1405, align 4, !tbaa !79
  %2297 = load float, ptr %864, align 8, !tbaa !80
  %2298 = load float, ptr %856, align 8, !tbaa !80
  %2299 = fmul float %2298, %2266
  %2300 = call float @llvm.fmuladd.f32(float %2263, float %2297, float %2299)
  %2301 = fpext float %2300 to double
  %2302 = fmul double %2282, %2301
  %2303 = fptrunc double %2302 to float
  store float %2303, ptr %1406, align 8, !tbaa !80
  %2304 = load i32, ptr %1407, align 4, !tbaa !90
  %2305 = icmp eq i32 %2304, 12
  br i1 %2305, label %2306, label %6283

2306:                                             ; preds = %2258
  %2307 = load float, ptr %1408, align 8, !tbaa !84
  %2308 = load float, ptr %1409, align 8, !tbaa !84
  %2309 = fmul float %2308, %2266
  %2310 = call float @llvm.fmuladd.f32(float %2263, float %2307, float %2309)
  %2311 = fpext float %2310 to double
  %2312 = fmul double %2282, %2311
  %2313 = fptrunc double %2312 to float
  store float %2313, ptr %1410, align 8, !tbaa !84
  br label %6283

2314:                                             ; preds = %2257
  br i1 %1412, label %2320, label %2315

2315:                                             ; preds = %2314
  %2316 = load float, ptr %1413, align 4, !tbaa !81
  %2317 = load float, ptr %1414, align 4, !tbaa !81
  %2318 = fadd float %2316, %2317
  %2319 = fadd float %2318, -6.553500e+04
  store float %2319, ptr %1415, align 4, !tbaa !81
  br label %2320

2320:                                             ; preds = %2315, %2314
  br i1 %1417, label %2325, label %2321

2321:                                             ; preds = %2320
  %2322 = load float, ptr %862, align 8, !tbaa !77
  %2323 = load float, ptr %854, align 8, !tbaa !77
  %2324 = fadd float %2322, %2323
  store float %2324, ptr %1418, align 8, !tbaa !77
  br label %2325

2325:                                             ; preds = %2321, %2320
  br i1 %1420, label %2330, label %2326

2326:                                             ; preds = %2325
  %2327 = load float, ptr %863, align 4, !tbaa !79
  %2328 = load float, ptr %855, align 4, !tbaa !79
  %2329 = fadd float %2327, %2328
  store float %2329, ptr %1421, align 4, !tbaa !79
  br label %2330

2330:                                             ; preds = %2326, %2325
  br i1 %1423, label %2335, label %2331

2331:                                             ; preds = %2330
  %2332 = load float, ptr %864, align 8, !tbaa !80
  %2333 = load float, ptr %856, align 8, !tbaa !80
  %2334 = fadd float %2332, %2333
  store float %2334, ptr %1424, align 8, !tbaa !80
  br label %2335

2335:                                             ; preds = %2331, %2330
  %2336 = load i32, ptr %1427, align 4
  %2337 = icmp eq i32 %2336, 12
  %2338 = select i1 %1426, i1 %2337, i1 false
  br i1 %2338, label %2339, label %6283

2339:                                             ; preds = %2335
  %2340 = load float, ptr %1428, align 8, !tbaa !84
  %2341 = load float, ptr %1429, align 8, !tbaa !84
  %2342 = fadd float %2340, %2341
  store float %2342, ptr %1430, align 8, !tbaa !84
  br label %6283

2343:                                             ; preds = %1758
  call fastcc void @CompositeMinus(ptr noundef nonnull %15, ptr noundef nonnull %14, i32 noundef %1, ptr noundef nonnull %13)
  br label %6283

2344:                                             ; preds = %1758
  call fastcc void @CompositeMinus(ptr noundef nonnull %14, ptr noundef nonnull %15, i32 noundef %1, ptr noundef nonnull %13)
  br label %6283

2345:                                             ; preds = %1758
  br i1 %1368, label %2437, label %2346

2346:                                             ; preds = %2345
  %2347 = load float, ptr %1369, align 4, !tbaa !81
  %2348 = fpext float %2347 to double
  %2349 = call double @llvm.fmuladd.f64(double %2348, double 0xBEF0001000100010, double 1.000000e+00)
  %2350 = fptrunc double %2349 to float
  %2351 = load float, ptr %1370, align 4, !tbaa !81
  %2352 = fpext float %2351 to double
  %2353 = call double @llvm.fmuladd.f64(double %2352, double 0xBEF0001000100010, double 1.000000e+00)
  %2354 = fptrunc double %2353 to float
  %2355 = fadd float %2350, %2354
  %2356 = fneg float %2350
  %2357 = call float @llvm.fmuladd.f32(float %2356, float %2354, float %2355)
  %2358 = fcmp olt float %2357, 0.000000e+00
  %2359 = fcmp ogt float %2357, 1.000000e+00
  %2360 = select i1 %2359, float 1.000000e+00, float %2357
  %2361 = select i1 %2358, float 0.000000e+00, float %2360
  %2362 = fpext float %2361 to double
  %2363 = fsub double 1.000000e+00, %2362
  %2364 = fmul double %2363, 6.553500e+04
  %2365 = fptrunc double %2364 to float
  store float %2365, ptr %1371, align 4, !tbaa !81
  %2366 = load float, ptr %862, align 8, !tbaa !77
  %2367 = load float, ptr %854, align 8, !tbaa !77
  %2368 = fadd float %2366, %2367
  %2369 = fcmp ogt float %2368, 6.553500e+04
  %2370 = fadd float %2368, -6.553500e+04
  %2371 = select i1 %2369, float %2370, float %2368
  %2372 = fmul float %2371, %2350
  %2373 = fmul float %2372, %2354
  %2374 = fpext float %2373 to double
  %2375 = fmul float %2366, %2350
  %2376 = fpext float %2375 to double
  %2377 = fpext float %2354 to double
  %2378 = fsub double 1.000000e+00, %2377
  %2379 = call double @llvm.fmuladd.f64(double %2376, double %2378, double %2374)
  %2380 = fmul float %2367, %2354
  %2381 = fpext float %2380 to double
  %2382 = fpext float %2350 to double
  %2383 = fsub double 1.000000e+00, %2382
  %2384 = call double @llvm.fmuladd.f64(double %2381, double %2383, double %2379)
  %2385 = fptrunc double %2384 to float
  store float %2385, ptr %1372, align 8, !tbaa !77
  %2386 = load float, ptr %863, align 4, !tbaa !79
  %2387 = load float, ptr %855, align 4, !tbaa !79
  %2388 = fadd float %2386, %2387
  %2389 = fcmp ogt float %2388, 6.553500e+04
  %2390 = fadd float %2388, -6.553500e+04
  %2391 = select i1 %2389, float %2390, float %2388
  %2392 = fmul float %2391, %2350
  %2393 = fmul float %2392, %2354
  %2394 = fpext float %2393 to double
  %2395 = fmul float %2386, %2350
  %2396 = fpext float %2395 to double
  %2397 = call double @llvm.fmuladd.f64(double %2396, double %2378, double %2394)
  %2398 = fmul float %2387, %2354
  %2399 = fpext float %2398 to double
  %2400 = call double @llvm.fmuladd.f64(double %2399, double %2383, double %2397)
  %2401 = fptrunc double %2400 to float
  store float %2401, ptr %1373, align 4, !tbaa !79
  %2402 = load float, ptr %864, align 8, !tbaa !80
  %2403 = load float, ptr %856, align 8, !tbaa !80
  %2404 = fadd float %2402, %2403
  %2405 = fcmp ogt float %2404, 6.553500e+04
  %2406 = fadd float %2404, -6.553500e+04
  %2407 = select i1 %2405, float %2406, float %2404
  %2408 = fmul float %2407, %2350
  %2409 = fmul float %2408, %2354
  %2410 = fpext float %2409 to double
  %2411 = fmul float %2402, %2350
  %2412 = fpext float %2411 to double
  %2413 = call double @llvm.fmuladd.f64(double %2412, double %2378, double %2410)
  %2414 = fmul float %2403, %2354
  %2415 = fpext float %2414 to double
  %2416 = call double @llvm.fmuladd.f64(double %2415, double %2383, double %2413)
  %2417 = fptrunc double %2416 to float
  store float %2417, ptr %1374, align 8, !tbaa !80
  %2418 = load i32, ptr %1375, align 4, !tbaa !90
  %2419 = icmp eq i32 %2418, 12
  br i1 %2419, label %2420, label %6283

2420:                                             ; preds = %2346
  %2421 = load float, ptr %1376, align 8, !tbaa !84
  %2422 = load float, ptr %1377, align 8, !tbaa !84
  %2423 = fadd float %2421, %2422
  %2424 = fcmp ogt float %2423, 6.553500e+04
  %2425 = fadd float %2423, -6.553500e+04
  %2426 = select i1 %2424, float %2425, float %2423
  %2427 = fmul float %2426, %2350
  %2428 = fmul float %2427, %2354
  %2429 = fpext float %2428 to double
  %2430 = fmul float %2421, %2350
  %2431 = fpext float %2430 to double
  %2432 = call double @llvm.fmuladd.f64(double %2431, double %2378, double %2429)
  %2433 = fmul float %2422, %2354
  %2434 = fpext float %2433 to double
  %2435 = call double @llvm.fmuladd.f64(double %2434, double %2383, double %2432)
  %2436 = fptrunc double %2435 to float
  store float %2436, ptr %1378, align 8, !tbaa !84
  br label %6283

2437:                                             ; preds = %2345
  br i1 %1380, label %2454, label %2438

2438:                                             ; preds = %2437
  %2439 = load float, ptr %1381, align 4, !tbaa !81
  %2440 = fsub float 6.553500e+04, %2439
  %2441 = load float, ptr %1382, align 4, !tbaa !81
  %2442 = fsub float 6.553500e+04, %2441
  %2443 = fadd float %2440, %2442
  %2444 = fcmp ogt float %2443, 6.553500e+04
  %2445 = fadd float %2443, -6.553500e+04
  %2446 = select i1 %2444, float %2445, float %2443
  %2447 = fpext float %2446 to double
  %2448 = fpext float %2440 to double
  %2449 = call double @llvm.fmuladd.f64(double %2448, double 0.000000e+00, double %2447)
  %2450 = fpext float %2442 to double
  %2451 = call double @llvm.fmuladd.f64(double %2450, double 0.000000e+00, double %2449)
  %2452 = fptrunc double %2451 to float
  %2453 = fsub float 6.553500e+04, %2452
  store float %2453, ptr %1383, align 4, !tbaa !81
  br label %2454

2454:                                             ; preds = %2438, %2437
  br i1 %1385, label %2468, label %2455

2455:                                             ; preds = %2454
  %2456 = load float, ptr %862, align 8, !tbaa !77
  %2457 = load float, ptr %854, align 8, !tbaa !77
  %2458 = fadd float %2456, %2457
  %2459 = fcmp ogt float %2458, 6.553500e+04
  %2460 = fadd float %2458, -6.553500e+04
  %2461 = select i1 %2459, float %2460, float %2458
  %2462 = fpext float %2461 to double
  %2463 = fpext float %2456 to double
  %2464 = call double @llvm.fmuladd.f64(double %2463, double 0.000000e+00, double %2462)
  %2465 = fpext float %2457 to double
  %2466 = call double @llvm.fmuladd.f64(double %2465, double 0.000000e+00, double %2464)
  %2467 = fptrunc double %2466 to float
  store float %2467, ptr %1386, align 8, !tbaa !77
  br label %2468

2468:                                             ; preds = %2455, %2454
  br i1 %1388, label %2482, label %2469

2469:                                             ; preds = %2468
  %2470 = load float, ptr %863, align 4, !tbaa !79
  %2471 = load float, ptr %855, align 4, !tbaa !79
  %2472 = fadd float %2470, %2471
  %2473 = fcmp ogt float %2472, 6.553500e+04
  %2474 = fadd float %2472, -6.553500e+04
  %2475 = select i1 %2473, float %2474, float %2472
  %2476 = fpext float %2475 to double
  %2477 = fpext float %2470 to double
  %2478 = call double @llvm.fmuladd.f64(double %2477, double 0.000000e+00, double %2476)
  %2479 = fpext float %2471 to double
  %2480 = call double @llvm.fmuladd.f64(double %2479, double 0.000000e+00, double %2478)
  %2481 = fptrunc double %2480 to float
  store float %2481, ptr %1389, align 4, !tbaa !79
  br label %2482

2482:                                             ; preds = %2469, %2468
  br i1 %1391, label %2496, label %2483

2483:                                             ; preds = %2482
  %2484 = load float, ptr %864, align 8, !tbaa !80
  %2485 = load float, ptr %856, align 8, !tbaa !80
  %2486 = fadd float %2484, %2485
  %2487 = fcmp ogt float %2486, 6.553500e+04
  %2488 = fadd float %2486, -6.553500e+04
  %2489 = select i1 %2487, float %2488, float %2486
  %2490 = fpext float %2489 to double
  %2491 = fpext float %2484 to double
  %2492 = call double @llvm.fmuladd.f64(double %2491, double 0.000000e+00, double %2490)
  %2493 = fpext float %2485 to double
  %2494 = call double @llvm.fmuladd.f64(double %2493, double 0.000000e+00, double %2492)
  %2495 = fptrunc double %2494 to float
  store float %2495, ptr %1392, align 8, !tbaa !80
  br label %2496

2496:                                             ; preds = %2483, %2482
  %2497 = load i32, ptr %1395, align 4
  %2498 = icmp eq i32 %2497, 12
  %2499 = select i1 %1394, i1 %2498, i1 false
  br i1 %2499, label %2500, label %6283

2500:                                             ; preds = %2496
  %2501 = load float, ptr %1396, align 8, !tbaa !84
  %2502 = load float, ptr %1397, align 8, !tbaa !84
  %2503 = fadd float %2501, %2502
  %2504 = fcmp ogt float %2503, 6.553500e+04
  %2505 = fadd float %2503, -6.553500e+04
  %2506 = select i1 %2504, float %2505, float %2503
  %2507 = fpext float %2506 to double
  %2508 = fpext float %2501 to double
  %2509 = call double @llvm.fmuladd.f64(double %2508, double 0.000000e+00, double %2507)
  %2510 = fpext float %2502 to double
  %2511 = call double @llvm.fmuladd.f64(double %2510, double 0.000000e+00, double %2509)
  %2512 = fptrunc double %2511 to float
  store float %2512, ptr %1398, align 8, !tbaa !84
  br label %6283

2513:                                             ; preds = %1758
  br i1 %1336, label %2605, label %2514

2514:                                             ; preds = %2513
  %2515 = load float, ptr %1337, align 4, !tbaa !81
  %2516 = fpext float %2515 to double
  %2517 = call double @llvm.fmuladd.f64(double %2516, double 0xBEF0001000100010, double 1.000000e+00)
  %2518 = fptrunc double %2517 to float
  %2519 = load float, ptr %1338, align 4, !tbaa !81
  %2520 = fpext float %2519 to double
  %2521 = call double @llvm.fmuladd.f64(double %2520, double 0xBEF0001000100010, double 1.000000e+00)
  %2522 = fptrunc double %2521 to float
  %2523 = fadd float %2518, %2522
  %2524 = fneg float %2518
  %2525 = call float @llvm.fmuladd.f32(float %2524, float %2522, float %2523)
  %2526 = fcmp olt float %2525, 0.000000e+00
  %2527 = fcmp ogt float %2525, 1.000000e+00
  %2528 = select i1 %2527, float 1.000000e+00, float %2525
  %2529 = select i1 %2526, float 0.000000e+00, float %2528
  %2530 = fpext float %2529 to double
  %2531 = fsub double 1.000000e+00, %2530
  %2532 = fmul double %2531, 6.553500e+04
  %2533 = fptrunc double %2532 to float
  store float %2533, ptr %1339, align 4, !tbaa !81
  %2534 = load float, ptr %862, align 8, !tbaa !77
  %2535 = load float, ptr %854, align 8, !tbaa !77
  %2536 = fsub float %2534, %2535
  %2537 = fcmp olt float %2536, 0.000000e+00
  %2538 = fadd float %2536, 6.553500e+04
  %2539 = select i1 %2537, float %2538, float %2536
  %2540 = fmul float %2539, %2518
  %2541 = fmul float %2540, %2522
  %2542 = fpext float %2541 to double
  %2543 = fmul float %2534, %2518
  %2544 = fpext float %2543 to double
  %2545 = fpext float %2522 to double
  %2546 = fsub double 1.000000e+00, %2545
  %2547 = call double @llvm.fmuladd.f64(double %2544, double %2546, double %2542)
  %2548 = fmul float %2535, %2522
  %2549 = fpext float %2548 to double
  %2550 = fpext float %2518 to double
  %2551 = fsub double 1.000000e+00, %2550
  %2552 = call double @llvm.fmuladd.f64(double %2549, double %2551, double %2547)
  %2553 = fptrunc double %2552 to float
  store float %2553, ptr %1340, align 8, !tbaa !77
  %2554 = load float, ptr %863, align 4, !tbaa !79
  %2555 = load float, ptr %855, align 4, !tbaa !79
  %2556 = fsub float %2554, %2555
  %2557 = fcmp olt float %2556, 0.000000e+00
  %2558 = fadd float %2556, 6.553500e+04
  %2559 = select i1 %2557, float %2558, float %2556
  %2560 = fmul float %2559, %2518
  %2561 = fmul float %2560, %2522
  %2562 = fpext float %2561 to double
  %2563 = fmul float %2554, %2518
  %2564 = fpext float %2563 to double
  %2565 = call double @llvm.fmuladd.f64(double %2564, double %2546, double %2562)
  %2566 = fmul float %2555, %2522
  %2567 = fpext float %2566 to double
  %2568 = call double @llvm.fmuladd.f64(double %2567, double %2551, double %2565)
  %2569 = fptrunc double %2568 to float
  store float %2569, ptr %1341, align 4, !tbaa !79
  %2570 = load float, ptr %864, align 8, !tbaa !80
  %2571 = load float, ptr %856, align 8, !tbaa !80
  %2572 = fsub float %2570, %2571
  %2573 = fcmp olt float %2572, 0.000000e+00
  %2574 = fadd float %2572, 6.553500e+04
  %2575 = select i1 %2573, float %2574, float %2572
  %2576 = fmul float %2575, %2518
  %2577 = fmul float %2576, %2522
  %2578 = fpext float %2577 to double
  %2579 = fmul float %2570, %2518
  %2580 = fpext float %2579 to double
  %2581 = call double @llvm.fmuladd.f64(double %2580, double %2546, double %2578)
  %2582 = fmul float %2571, %2522
  %2583 = fpext float %2582 to double
  %2584 = call double @llvm.fmuladd.f64(double %2583, double %2551, double %2581)
  %2585 = fptrunc double %2584 to float
  store float %2585, ptr %1342, align 8, !tbaa !80
  %2586 = load i32, ptr %1343, align 4, !tbaa !90
  %2587 = icmp eq i32 %2586, 12
  br i1 %2587, label %2588, label %6283

2588:                                             ; preds = %2514
  %2589 = load float, ptr %1344, align 8, !tbaa !84
  %2590 = load float, ptr %1345, align 8, !tbaa !84
  %2591 = fsub float %2589, %2590
  %2592 = fcmp olt float %2591, 0.000000e+00
  %2593 = fadd float %2591, 6.553500e+04
  %2594 = select i1 %2592, float %2593, float %2591
  %2595 = fmul float %2594, %2518
  %2596 = fmul float %2595, %2522
  %2597 = fpext float %2596 to double
  %2598 = fmul float %2589, %2518
  %2599 = fpext float %2598 to double
  %2600 = call double @llvm.fmuladd.f64(double %2599, double %2546, double %2597)
  %2601 = fmul float %2590, %2522
  %2602 = fpext float %2601 to double
  %2603 = call double @llvm.fmuladd.f64(double %2602, double %2551, double %2600)
  %2604 = fptrunc double %2603 to float
  store float %2604, ptr %1346, align 8, !tbaa !84
  br label %6283

2605:                                             ; preds = %2513
  br i1 %1348, label %2622, label %2606

2606:                                             ; preds = %2605
  %2607 = load float, ptr %1349, align 4, !tbaa !81
  %2608 = fsub float 6.553500e+04, %2607
  %2609 = load float, ptr %1350, align 4, !tbaa !81
  %2610 = fsub float 6.553500e+04, %2609
  %2611 = fsub float %2608, %2610
  %2612 = fcmp olt float %2611, 0.000000e+00
  %2613 = fadd float %2611, 6.553500e+04
  %2614 = select i1 %2612, float %2613, float %2611
  %2615 = fpext float %2614 to double
  %2616 = fpext float %2608 to double
  %2617 = call double @llvm.fmuladd.f64(double %2616, double 0.000000e+00, double %2615)
  %2618 = fpext float %2610 to double
  %2619 = call double @llvm.fmuladd.f64(double %2618, double 0.000000e+00, double %2617)
  %2620 = fptrunc double %2619 to float
  %2621 = fsub float 6.553500e+04, %2620
  store float %2621, ptr %1351, align 4, !tbaa !81
  br label %2622

2622:                                             ; preds = %2606, %2605
  br i1 %1353, label %2636, label %2623

2623:                                             ; preds = %2622
  %2624 = load float, ptr %862, align 8, !tbaa !77
  %2625 = load float, ptr %854, align 8, !tbaa !77
  %2626 = fsub float %2624, %2625
  %2627 = fcmp olt float %2626, 0.000000e+00
  %2628 = fadd float %2626, 6.553500e+04
  %2629 = select i1 %2627, float %2628, float %2626
  %2630 = fpext float %2629 to double
  %2631 = fpext float %2624 to double
  %2632 = call double @llvm.fmuladd.f64(double %2631, double 0.000000e+00, double %2630)
  %2633 = fpext float %2625 to double
  %2634 = call double @llvm.fmuladd.f64(double %2633, double 0.000000e+00, double %2632)
  %2635 = fptrunc double %2634 to float
  store float %2635, ptr %1354, align 8, !tbaa !77
  br label %2636

2636:                                             ; preds = %2623, %2622
  br i1 %1356, label %2650, label %2637

2637:                                             ; preds = %2636
  %2638 = load float, ptr %863, align 4, !tbaa !79
  %2639 = load float, ptr %855, align 4, !tbaa !79
  %2640 = fsub float %2638, %2639
  %2641 = fcmp olt float %2640, 0.000000e+00
  %2642 = fadd float %2640, 6.553500e+04
  %2643 = select i1 %2641, float %2642, float %2640
  %2644 = fpext float %2643 to double
  %2645 = fpext float %2638 to double
  %2646 = call double @llvm.fmuladd.f64(double %2645, double 0.000000e+00, double %2644)
  %2647 = fpext float %2639 to double
  %2648 = call double @llvm.fmuladd.f64(double %2647, double 0.000000e+00, double %2646)
  %2649 = fptrunc double %2648 to float
  store float %2649, ptr %1357, align 4, !tbaa !79
  br label %2650

2650:                                             ; preds = %2637, %2636
  br i1 %1359, label %2664, label %2651

2651:                                             ; preds = %2650
  %2652 = load float, ptr %864, align 8, !tbaa !80
  %2653 = load float, ptr %856, align 8, !tbaa !80
  %2654 = fsub float %2652, %2653
  %2655 = fcmp olt float %2654, 0.000000e+00
  %2656 = fadd float %2654, 6.553500e+04
  %2657 = select i1 %2655, float %2656, float %2654
  %2658 = fpext float %2657 to double
  %2659 = fpext float %2652 to double
  %2660 = call double @llvm.fmuladd.f64(double %2659, double 0.000000e+00, double %2658)
  %2661 = fpext float %2653 to double
  %2662 = call double @llvm.fmuladd.f64(double %2661, double 0.000000e+00, double %2660)
  %2663 = fptrunc double %2662 to float
  store float %2663, ptr %1360, align 8, !tbaa !80
  br label %2664

2664:                                             ; preds = %2651, %2650
  %2665 = load i32, ptr %1363, align 4
  %2666 = icmp eq i32 %2665, 12
  %2667 = select i1 %1362, i1 %2666, i1 false
  br i1 %2667, label %2668, label %6283

2668:                                             ; preds = %2664
  %2669 = load float, ptr %1364, align 8, !tbaa !84
  %2670 = load float, ptr %1365, align 8, !tbaa !84
  %2671 = fsub float %2669, %2670
  %2672 = fcmp olt float %2671, 0.000000e+00
  %2673 = fadd float %2671, 6.553500e+04
  %2674 = select i1 %2672, float %2673, float %2671
  %2675 = fpext float %2674 to double
  %2676 = fpext float %2669 to double
  %2677 = call double @llvm.fmuladd.f64(double %2676, double 0.000000e+00, double %2675)
  %2678 = fpext float %2670 to double
  %2679 = call double @llvm.fmuladd.f64(double %2678, double 0.000000e+00, double %2677)
  %2680 = fptrunc double %2679 to float
  store float %2680, ptr %1366, align 8, !tbaa !84
  br label %6283

2681:                                             ; preds = %1758
  %2682 = load float, ptr %1305, align 4, !tbaa !81
  %2683 = fpext float %2682 to double
  %2684 = call double @llvm.fmuladd.f64(double %2683, double 0xBEF0001000100010, double 1.000000e+00)
  %2685 = fptrunc double %2684 to float
  %2686 = load float, ptr %1306, align 4, !tbaa !81
  %2687 = fpext float %2686 to double
  %2688 = call double @llvm.fmuladd.f64(double %2687, double 0xBEF0001000100010, double 1.000000e+00)
  %2689 = fptrunc double %2688 to float
  br i1 %1308, label %2767, label %2690

2690:                                             ; preds = %2681
  %2691 = fadd float %2685, %2689
  %2692 = fneg float %2685
  %2693 = call float @llvm.fmuladd.f32(float %2692, float %2689, float %2691)
  %2694 = fcmp olt float %2693, 0.000000e+00
  %2695 = fcmp ogt float %2693, 1.000000e+00
  %2696 = select i1 %2695, float 1.000000e+00, float %2693
  %2697 = select i1 %2694, float 0.000000e+00, float %2696
  %2698 = fpext float %2697 to double
  %2699 = fsub double 1.000000e+00, %2698
  %2700 = fmul double %2699, 6.553500e+04
  %2701 = fptrunc double %2700 to float
  store float %2701, ptr %1309, align 4, !tbaa !81
  %2702 = fcmp olt float %2697, 0.000000e+00
  %2703 = select i1 %2702, double -1.000000e+00, double 1.000000e+00
  %2704 = fmul double %2703, %2698
  %2705 = fcmp ult double %2704, 1.000000e-15
  %2706 = fdiv double 1.000000e+00, %2698
  %2707 = fdiv double %2703, 1.000000e-15
  %2708 = select i1 %2705, double %2707, double %2706
  %2709 = load float, ptr %862, align 8, !tbaa !77
  %2710 = load float, ptr %854, align 8, !tbaa !77
  %2711 = fmul float %2710, %2689
  %2712 = call float @llvm.fmuladd.f32(float %2685, float %2709, float %2711)
  %2713 = fpext float %2712 to double
  %2714 = fmul float %2685, %2689
  %2715 = fpext float %2714 to double
  %2716 = fcmp olt float %2709, %2710
  %2717 = select i1 %2716, float %2709, float %2710
  %2718 = fpext float %2717 to double
  %2719 = fmul double %2715, -2.000000e+00
  %2720 = call double @llvm.fmuladd.f64(double %2719, double %2718, double %2713)
  %2721 = fptrunc double %2720 to float
  %2722 = fpext float %2721 to double
  %2723 = fmul double %2708, %2722
  %2724 = fptrunc double %2723 to float
  store float %2724, ptr %1310, align 8, !tbaa !77
  %2725 = load float, ptr %863, align 4, !tbaa !79
  %2726 = load float, ptr %855, align 4, !tbaa !79
  %2727 = fmul float %2726, %2689
  %2728 = call float @llvm.fmuladd.f32(float %2685, float %2725, float %2727)
  %2729 = fpext float %2728 to double
  %2730 = fcmp olt float %2725, %2726
  %2731 = select i1 %2730, float %2725, float %2726
  %2732 = fpext float %2731 to double
  %2733 = call double @llvm.fmuladd.f64(double %2719, double %2732, double %2729)
  %2734 = fptrunc double %2733 to float
  %2735 = fpext float %2734 to double
  %2736 = fmul double %2708, %2735
  %2737 = fptrunc double %2736 to float
  store float %2737, ptr %1311, align 4, !tbaa !79
  %2738 = load float, ptr %864, align 8, !tbaa !80
  %2739 = load float, ptr %856, align 8, !tbaa !80
  %2740 = fmul float %2739, %2689
  %2741 = call float @llvm.fmuladd.f32(float %2685, float %2738, float %2740)
  %2742 = fpext float %2741 to double
  %2743 = fcmp olt float %2738, %2739
  %2744 = select i1 %2743, float %2738, float %2739
  %2745 = fpext float %2744 to double
  %2746 = call double @llvm.fmuladd.f64(double %2719, double %2745, double %2742)
  %2747 = fptrunc double %2746 to float
  %2748 = fpext float %2747 to double
  %2749 = fmul double %2708, %2748
  %2750 = fptrunc double %2749 to float
  store float %2750, ptr %1312, align 8, !tbaa !80
  %2751 = load i32, ptr %1313, align 4, !tbaa !90
  %2752 = icmp eq i32 %2751, 12
  br i1 %2752, label %2753, label %6283

2753:                                             ; preds = %2690
  %2754 = load float, ptr %1314, align 8, !tbaa !84
  %2755 = load float, ptr %1315, align 8, !tbaa !84
  %2756 = fmul float %2755, %2689
  %2757 = call float @llvm.fmuladd.f32(float %2685, float %2754, float %2756)
  %2758 = fpext float %2757 to double
  %2759 = fcmp olt float %2754, %2755
  %2760 = select i1 %2759, float %2754, float %2755
  %2761 = fpext float %2760 to double
  %2762 = call double @llvm.fmuladd.f64(double %2719, double %2761, double %2758)
  %2763 = fptrunc double %2762 to float
  %2764 = fpext float %2763 to double
  %2765 = fmul double %2708, %2764
  %2766 = fptrunc double %2765 to float
  store float %2766, ptr %1316, align 8, !tbaa !84
  br label %6283

2767:                                             ; preds = %2681
  br i1 %1318, label %2772, label %2768

2768:                                             ; preds = %2767
  %2769 = fsub float %2682, %2686
  %2770 = call float @llvm.fabs.f32(float %2769)
  %2771 = fsub float 6.553500e+04, %2770
  store float %2771, ptr %1319, align 4, !tbaa !81
  br label %2772

2772:                                             ; preds = %2768, %2767
  br i1 %1321, label %2778, label %2773

2773:                                             ; preds = %2772
  %2774 = load float, ptr %862, align 8, !tbaa !77
  %2775 = load float, ptr %854, align 8, !tbaa !77
  %2776 = fsub float %2774, %2775
  %2777 = call float @llvm.fabs.f32(float %2776)
  store float %2777, ptr %1322, align 8, !tbaa !77
  br label %2778

2778:                                             ; preds = %2773, %2772
  br i1 %1324, label %2784, label %2779

2779:                                             ; preds = %2778
  %2780 = load float, ptr %863, align 4, !tbaa !79
  %2781 = load float, ptr %855, align 4, !tbaa !79
  %2782 = fsub float %2780, %2781
  %2783 = call float @llvm.fabs.f32(float %2782)
  store float %2783, ptr %1325, align 4, !tbaa !79
  br label %2784

2784:                                             ; preds = %2779, %2778
  br i1 %1327, label %2790, label %2785

2785:                                             ; preds = %2784
  %2786 = load float, ptr %864, align 8, !tbaa !80
  %2787 = load float, ptr %856, align 8, !tbaa !80
  %2788 = fsub float %2786, %2787
  %2789 = call float @llvm.fabs.f32(float %2788)
  store float %2789, ptr %1328, align 8, !tbaa !80
  br label %2790

2790:                                             ; preds = %2785, %2784
  %2791 = load i32, ptr %1331, align 4
  %2792 = icmp eq i32 %2791, 12
  %2793 = select i1 %1330, i1 %2792, i1 false
  br i1 %2793, label %2794, label %6283

2794:                                             ; preds = %2790
  %2795 = load float, ptr %1332, align 8, !tbaa !84
  %2796 = load float, ptr %1333, align 8, !tbaa !84
  %2797 = fsub float %2795, %2796
  %2798 = call float @llvm.fabs.f32(float %2797)
  store float %2798, ptr %1334, align 8, !tbaa !84
  br label %6283

2799:                                             ; preds = %1758
  %2800 = load float, ptr %1275, align 4, !tbaa !81
  %2801 = fpext float %2800 to double
  %2802 = call double @llvm.fmuladd.f64(double %2801, double 0xBEF0001000100010, double 1.000000e+00)
  %2803 = fptrunc double %2802 to float
  %2804 = load float, ptr %1276, align 4, !tbaa !81
  %2805 = fpext float %2804 to double
  %2806 = call double @llvm.fmuladd.f64(double %2805, double 0xBEF0001000100010, double 1.000000e+00)
  %2807 = fptrunc double %2806 to float
  br i1 %1278, label %2916, label %2808

2808:                                             ; preds = %2799
  %2809 = fadd float %2803, %2807
  %2810 = fneg float %2803
  %2811 = call float @llvm.fmuladd.f32(float %2810, float %2807, float %2809)
  %2812 = fcmp olt float %2811, 0.000000e+00
  %2813 = fcmp ogt float %2811, 1.000000e+00
  %2814 = select i1 %2813, float 1.000000e+00, float %2811
  %2815 = select i1 %2812, float 0.000000e+00, float %2814
  %2816 = fpext float %2815 to double
  %2817 = fsub double 1.000000e+00, %2816
  %2818 = fmul double %2817, 6.553500e+04
  %2819 = fptrunc double %2818 to float
  store float %2819, ptr %1279, align 4, !tbaa !81
  %2820 = call double @llvm.fabs.f64(double %2816)
  %2821 = fcmp olt double %2820, 1.000000e-15
  %2822 = fdiv double 6.553500e+04, %2816
  %2823 = select i1 %2821, double 0x440C6BD8BA3ED9CB, double %2822
  %2824 = fptrunc double %2823 to float
  %2825 = load float, ptr %862, align 8, !tbaa !77
  %2826 = fpext float %2825 to double
  %2827 = fmul double %2826, 0x3EF0001000100010
  %2828 = fpext float %2803 to double
  %2829 = fmul double %2827, %2828
  %2830 = fptrunc double %2829 to float
  %2831 = load float, ptr %854, align 8, !tbaa !77
  %2832 = fpext float %2831 to double
  %2833 = fmul double %2832, 0x3EF0001000100010
  %2834 = fpext float %2807 to double
  %2835 = fmul double %2833, %2834
  %2836 = fptrunc double %2835 to float
  %2837 = fmul float %2803, %2836
  %2838 = call float @llvm.fmuladd.f32(float %2830, float %2807, float %2837)
  %2839 = fpext float %2838 to double
  %2840 = fpext float %2830 to double
  %2841 = fpext float %2836 to double
  %2842 = fmul double %2840, -2.000000e+00
  %2843 = call double @llvm.fmuladd.f64(double %2842, double %2841, double %2839)
  %2844 = fsub double 1.000000e+00, %2834
  %2845 = call double @llvm.fmuladd.f64(double %2840, double %2844, double %2843)
  %2846 = fsub double 1.000000e+00, %2828
  %2847 = call double @llvm.fmuladd.f64(double %2841, double %2846, double %2845)
  %2848 = fptrunc double %2847 to float
  %2849 = fmul float %2824, %2848
  store float %2849, ptr %1280, align 8, !tbaa !77
  %2850 = load float, ptr %863, align 4, !tbaa !79
  %2851 = fpext float %2850 to double
  %2852 = fmul double %2851, 0x3EF0001000100010
  %2853 = fmul double %2852, %2828
  %2854 = fptrunc double %2853 to float
  %2855 = load float, ptr %855, align 4, !tbaa !79
  %2856 = fpext float %2855 to double
  %2857 = fmul double %2856, 0x3EF0001000100010
  %2858 = fmul double %2857, %2834
  %2859 = fptrunc double %2858 to float
  %2860 = fmul float %2803, %2859
  %2861 = call float @llvm.fmuladd.f32(float %2854, float %2807, float %2860)
  %2862 = fpext float %2861 to double
  %2863 = fpext float %2854 to double
  %2864 = fpext float %2859 to double
  %2865 = fmul double %2863, -2.000000e+00
  %2866 = call double @llvm.fmuladd.f64(double %2865, double %2864, double %2862)
  %2867 = call double @llvm.fmuladd.f64(double %2863, double %2844, double %2866)
  %2868 = call double @llvm.fmuladd.f64(double %2864, double %2846, double %2867)
  %2869 = fptrunc double %2868 to float
  %2870 = fmul float %2824, %2869
  store float %2870, ptr %1281, align 4, !tbaa !79
  %2871 = load float, ptr %864, align 8, !tbaa !80
  %2872 = fpext float %2871 to double
  %2873 = fmul double %2872, 0x3EF0001000100010
  %2874 = fmul double %2873, %2828
  %2875 = fptrunc double %2874 to float
  %2876 = load float, ptr %856, align 8, !tbaa !80
  %2877 = fpext float %2876 to double
  %2878 = fmul double %2877, 0x3EF0001000100010
  %2879 = fmul double %2878, %2834
  %2880 = fptrunc double %2879 to float
  %2881 = fmul float %2803, %2880
  %2882 = call float @llvm.fmuladd.f32(float %2875, float %2807, float %2881)
  %2883 = fpext float %2882 to double
  %2884 = fpext float %2875 to double
  %2885 = fpext float %2880 to double
  %2886 = fmul double %2884, -2.000000e+00
  %2887 = call double @llvm.fmuladd.f64(double %2886, double %2885, double %2883)
  %2888 = call double @llvm.fmuladd.f64(double %2884, double %2844, double %2887)
  %2889 = call double @llvm.fmuladd.f64(double %2885, double %2846, double %2888)
  %2890 = fptrunc double %2889 to float
  %2891 = fmul float %2824, %2890
  store float %2891, ptr %1282, align 8, !tbaa !80
  %2892 = load i32, ptr %1283, align 4, !tbaa !90
  %2893 = icmp eq i32 %2892, 12
  br i1 %2893, label %2894, label %6283

2894:                                             ; preds = %2808
  %2895 = load float, ptr %1284, align 8, !tbaa !84
  %2896 = fpext float %2895 to double
  %2897 = fmul double %2896, 0x3EF0001000100010
  %2898 = fmul double %2897, %2828
  %2899 = fptrunc double %2898 to float
  %2900 = load float, ptr %1285, align 8, !tbaa !84
  %2901 = fpext float %2900 to double
  %2902 = fmul double %2901, 0x3EF0001000100010
  %2903 = fmul double %2902, %2834
  %2904 = fptrunc double %2903 to float
  %2905 = fmul float %2803, %2904
  %2906 = call float @llvm.fmuladd.f32(float %2899, float %2807, float %2905)
  %2907 = fpext float %2906 to double
  %2908 = fpext float %2899 to double
  %2909 = fpext float %2904 to double
  %2910 = fmul double %2908, -2.000000e+00
  %2911 = call double @llvm.fmuladd.f64(double %2910, double %2909, double %2907)
  %2912 = call double @llvm.fmuladd.f64(double %2908, double %2844, double %2911)
  %2913 = call double @llvm.fmuladd.f64(double %2909, double %2846, double %2912)
  %2914 = fptrunc double %2913 to float
  %2915 = fmul float %2824, %2914
  store float %2915, ptr %1286, align 8, !tbaa !84
  br label %6283

2916:                                             ; preds = %2799
  br i1 %1288, label %2931, label %2917

2917:                                             ; preds = %2916
  %2918 = fadd float %2803, %2807
  %2919 = fpext float %2918 to double
  %2920 = fpext float %2803 to double
  %2921 = fpext float %2807 to double
  %2922 = fmul double %2920, -2.000000e+00
  %2923 = call double @llvm.fmuladd.f64(double %2922, double %2921, double %2919)
  %2924 = call double @llvm.fmuladd.f64(double %2920, double 0.000000e+00, double %2923)
  %2925 = call double @llvm.fmuladd.f64(double %2921, double 0.000000e+00, double %2924)
  %2926 = fptrunc double %2925 to float
  %2927 = fpext float %2926 to double
  %2928 = fsub double 1.000000e+00, %2927
  %2929 = fmul double %2928, 6.553500e+04
  %2930 = fptrunc double %2929 to float
  store float %2930, ptr %1289, align 4, !tbaa !81
  br label %2931

2931:                                             ; preds = %2917, %2916
  br i1 %1291, label %2951, label %2932

2932:                                             ; preds = %2931
  %2933 = load float, ptr %862, align 8, !tbaa !77
  %2934 = fpext float %2933 to double
  %2935 = fmul double %2934, 0x3EF0001000100010
  %2936 = fptrunc double %2935 to float
  %2937 = load float, ptr %854, align 8, !tbaa !77
  %2938 = fpext float %2937 to double
  %2939 = fmul double %2938, 0x3EF0001000100010
  %2940 = fptrunc double %2939 to float
  %2941 = fadd float %2936, %2940
  %2942 = fpext float %2941 to double
  %2943 = fpext float %2936 to double
  %2944 = fpext float %2940 to double
  %2945 = fmul double %2943, -2.000000e+00
  %2946 = call double @llvm.fmuladd.f64(double %2945, double %2944, double %2942)
  %2947 = call double @llvm.fmuladd.f64(double %2943, double 0.000000e+00, double %2946)
  %2948 = call double @llvm.fmuladd.f64(double %2944, double 0.000000e+00, double %2947)
  %2949 = fptrunc double %2948 to float
  %2950 = fmul float %2949, 6.553500e+04
  store float %2950, ptr %1292, align 8, !tbaa !77
  br label %2951

2951:                                             ; preds = %2932, %2931
  br i1 %1294, label %2971, label %2952

2952:                                             ; preds = %2951
  %2953 = load float, ptr %863, align 4, !tbaa !79
  %2954 = fpext float %2953 to double
  %2955 = fmul double %2954, 0x3EF0001000100010
  %2956 = fptrunc double %2955 to float
  %2957 = load float, ptr %855, align 4, !tbaa !79
  %2958 = fpext float %2957 to double
  %2959 = fmul double %2958, 0x3EF0001000100010
  %2960 = fptrunc double %2959 to float
  %2961 = fadd float %2956, %2960
  %2962 = fpext float %2961 to double
  %2963 = fpext float %2956 to double
  %2964 = fpext float %2960 to double
  %2965 = fmul double %2963, -2.000000e+00
  %2966 = call double @llvm.fmuladd.f64(double %2965, double %2964, double %2962)
  %2967 = call double @llvm.fmuladd.f64(double %2963, double 0.000000e+00, double %2966)
  %2968 = call double @llvm.fmuladd.f64(double %2964, double 0.000000e+00, double %2967)
  %2969 = fptrunc double %2968 to float
  %2970 = fmul float %2969, 6.553500e+04
  store float %2970, ptr %1295, align 4, !tbaa !79
  br label %2971

2971:                                             ; preds = %2952, %2951
  br i1 %1297, label %2991, label %2972

2972:                                             ; preds = %2971
  %2973 = load float, ptr %864, align 8, !tbaa !80
  %2974 = fpext float %2973 to double
  %2975 = fmul double %2974, 0x3EF0001000100010
  %2976 = fptrunc double %2975 to float
  %2977 = load float, ptr %856, align 8, !tbaa !80
  %2978 = fpext float %2977 to double
  %2979 = fmul double %2978, 0x3EF0001000100010
  %2980 = fptrunc double %2979 to float
  %2981 = fadd float %2976, %2980
  %2982 = fpext float %2981 to double
  %2983 = fpext float %2976 to double
  %2984 = fpext float %2980 to double
  %2985 = fmul double %2983, -2.000000e+00
  %2986 = call double @llvm.fmuladd.f64(double %2985, double %2984, double %2982)
  %2987 = call double @llvm.fmuladd.f64(double %2983, double 0.000000e+00, double %2986)
  %2988 = call double @llvm.fmuladd.f64(double %2984, double 0.000000e+00, double %2987)
  %2989 = fptrunc double %2988 to float
  %2990 = fmul float %2989, 6.553500e+04
  store float %2990, ptr %1298, align 8, !tbaa !80
  br label %2991

2991:                                             ; preds = %2972, %2971
  %2992 = load i32, ptr %1301, align 4
  %2993 = icmp eq i32 %2992, 12
  %2994 = select i1 %1300, i1 %2993, i1 false
  br i1 %2994, label %2995, label %6283

2995:                                             ; preds = %2991
  %2996 = load float, ptr %1302, align 8, !tbaa !84
  %2997 = fpext float %2996 to double
  %2998 = fmul double %2997, 0x3EF0001000100010
  %2999 = fptrunc double %2998 to float
  %3000 = load float, ptr %1303, align 8, !tbaa !84
  %3001 = fpext float %3000 to double
  %3002 = fmul double %3001, 0x3EF0001000100010
  %3003 = fptrunc double %3002 to float
  %3004 = fadd float %2999, %3003
  %3005 = fpext float %3004 to double
  %3006 = fpext float %2999 to double
  %3007 = fpext float %3003 to double
  %3008 = fmul double %3006, -2.000000e+00
  %3009 = call double @llvm.fmuladd.f64(double %3008, double %3007, double %3005)
  %3010 = call double @llvm.fmuladd.f64(double %3006, double 0.000000e+00, double %3009)
  %3011 = call double @llvm.fmuladd.f64(double %3007, double 0.000000e+00, double %3010)
  %3012 = fptrunc double %3011 to float
  %3013 = fmul float %3012, 6.553500e+04
  store float %3013, ptr %1304, align 8, !tbaa !84
  br label %6283

3014:                                             ; preds = %1758
  %3015 = load float, ptr %1245, align 4, !tbaa !81
  %3016 = fpext float %3015 to double
  %3017 = call double @llvm.fmuladd.f64(double %3016, double 0xBEF0001000100010, double 1.000000e+00)
  %3018 = fptrunc double %3017 to float
  %3019 = load float, ptr %1246, align 4, !tbaa !81
  %3020 = fpext float %3019 to double
  %3021 = call double @llvm.fmuladd.f64(double %3020, double 0xBEF0001000100010, double 1.000000e+00)
  %3022 = fptrunc double %3021 to float
  br i1 %1248, label %3119, label %3023

3023:                                             ; preds = %3014
  %3024 = fadd float %3018, %3022
  %3025 = fneg float %3018
  %3026 = call float @llvm.fmuladd.f32(float %3025, float %3022, float %3024)
  %3027 = fcmp olt float %3026, 0.000000e+00
  %3028 = fcmp ogt float %3026, 1.000000e+00
  %3029 = select i1 %3028, float 1.000000e+00, float %3026
  %3030 = select i1 %3027, float 0.000000e+00, float %3029
  %3031 = fpext float %3030 to double
  %3032 = fsub double 1.000000e+00, %3031
  %3033 = fmul double %3032, 6.553500e+04
  %3034 = fptrunc double %3033 to float
  store float %3034, ptr %1249, align 4, !tbaa !81
  %3035 = call double @llvm.fabs.f64(double %3031)
  %3036 = fcmp olt double %3035, 1.000000e-15
  %3037 = fdiv double 6.553500e+04, %3031
  %3038 = select i1 %3036, double 0x440C6BD8BA3ED9CB, double %3037
  %3039 = fptrunc double %3038 to float
  %3040 = load float, ptr %862, align 8, !tbaa !77
  %3041 = fpext float %3040 to double
  %3042 = fmul double %3041, 0x3EF0001000100010
  %3043 = fpext float %3018 to double
  %3044 = fmul double %3042, %3043
  %3045 = fptrunc double %3044 to float
  %3046 = load float, ptr %854, align 8, !tbaa !77
  %3047 = fpext float %3046 to double
  %3048 = fmul double %3047, 0x3EF0001000100010
  %3049 = fpext float %3022 to double
  %3050 = fmul double %3048, %3049
  %3051 = fptrunc double %3050 to float
  %3052 = fmul float %3045, %3051
  %3053 = fpext float %3052 to double
  %3054 = fpext float %3045 to double
  %3055 = fsub double 1.000000e+00, %3049
  %3056 = call double @llvm.fmuladd.f64(double %3054, double %3055, double %3053)
  %3057 = fpext float %3051 to double
  %3058 = fsub double 1.000000e+00, %3043
  %3059 = call double @llvm.fmuladd.f64(double %3057, double %3058, double %3056)
  %3060 = fptrunc double %3059 to float
  %3061 = fmul float %3039, %3060
  store float %3061, ptr %1250, align 8, !tbaa !77
  %3062 = load float, ptr %863, align 4, !tbaa !79
  %3063 = fpext float %3062 to double
  %3064 = fmul double %3063, 0x3EF0001000100010
  %3065 = fmul double %3064, %3043
  %3066 = fptrunc double %3065 to float
  %3067 = load float, ptr %855, align 4, !tbaa !79
  %3068 = fpext float %3067 to double
  %3069 = fmul double %3068, 0x3EF0001000100010
  %3070 = fmul double %3069, %3049
  %3071 = fptrunc double %3070 to float
  %3072 = fmul float %3066, %3071
  %3073 = fpext float %3072 to double
  %3074 = fpext float %3066 to double
  %3075 = call double @llvm.fmuladd.f64(double %3074, double %3055, double %3073)
  %3076 = fpext float %3071 to double
  %3077 = call double @llvm.fmuladd.f64(double %3076, double %3058, double %3075)
  %3078 = fptrunc double %3077 to float
  %3079 = fmul float %3039, %3078
  store float %3079, ptr %1251, align 4, !tbaa !79
  %3080 = load float, ptr %864, align 8, !tbaa !80
  %3081 = fpext float %3080 to double
  %3082 = fmul double %3081, 0x3EF0001000100010
  %3083 = fmul double %3082, %3043
  %3084 = fptrunc double %3083 to float
  %3085 = load float, ptr %856, align 8, !tbaa !80
  %3086 = fpext float %3085 to double
  %3087 = fmul double %3086, 0x3EF0001000100010
  %3088 = fmul double %3087, %3049
  %3089 = fptrunc double %3088 to float
  %3090 = fmul float %3084, %3089
  %3091 = fpext float %3090 to double
  %3092 = fpext float %3084 to double
  %3093 = call double @llvm.fmuladd.f64(double %3092, double %3055, double %3091)
  %3094 = fpext float %3089 to double
  %3095 = call double @llvm.fmuladd.f64(double %3094, double %3058, double %3093)
  %3096 = fptrunc double %3095 to float
  %3097 = fmul float %3039, %3096
  store float %3097, ptr %1252, align 8, !tbaa !80
  %3098 = load i32, ptr %1253, align 4, !tbaa !90
  %3099 = icmp eq i32 %3098, 12
  br i1 %3099, label %3100, label %6283

3100:                                             ; preds = %3023
  %3101 = load float, ptr %1254, align 8, !tbaa !84
  %3102 = fpext float %3101 to double
  %3103 = fmul double %3102, 0x3EF0001000100010
  %3104 = fmul double %3103, %3043
  %3105 = fptrunc double %3104 to float
  %3106 = load float, ptr %1255, align 8, !tbaa !84
  %3107 = fpext float %3106 to double
  %3108 = fmul double %3107, 0x3EF0001000100010
  %3109 = fmul double %3108, %3049
  %3110 = fptrunc double %3109 to float
  %3111 = fmul float %3105, %3110
  %3112 = fpext float %3111 to double
  %3113 = fpext float %3105 to double
  %3114 = call double @llvm.fmuladd.f64(double %3113, double %3055, double %3112)
  %3115 = fpext float %3110 to double
  %3116 = call double @llvm.fmuladd.f64(double %3115, double %3058, double %3114)
  %3117 = fptrunc double %3116 to float
  %3118 = fmul float %3039, %3117
  store float %3118, ptr %1256, align 8, !tbaa !84
  br label %6283

3119:                                             ; preds = %3014
  br i1 %1258, label %3126, label %3120

3120:                                             ; preds = %3119
  %3121 = fmul float %3018, %3022
  %3122 = fpext float %3121 to double
  %3123 = fsub double 1.000000e+00, %3122
  %3124 = fmul double %3123, 6.553500e+04
  %3125 = fptrunc double %3124 to float
  store float %3125, ptr %1259, align 4, !tbaa !81
  br label %3126

3126:                                             ; preds = %3120, %3119
  br i1 %1261, label %3135, label %3127

3127:                                             ; preds = %3126
  %3128 = load float, ptr %862, align 8, !tbaa !77
  %3129 = fpext float %3128 to double
  %3130 = fmul double %3129, 0x3EF0001000100010
  %3131 = load float, ptr %854, align 8, !tbaa !77
  %3132 = fpext float %3131 to double
  %3133 = fmul double %3130, %3132
  %3134 = fptrunc double %3133 to float
  store float %3134, ptr %1262, align 8, !tbaa !77
  br label %3135

3135:                                             ; preds = %3127, %3126
  br i1 %1264, label %3144, label %3136

3136:                                             ; preds = %3135
  %3137 = load float, ptr %863, align 4, !tbaa !79
  %3138 = fpext float %3137 to double
  %3139 = fmul double %3138, 0x3EF0001000100010
  %3140 = load float, ptr %855, align 4, !tbaa !79
  %3141 = fpext float %3140 to double
  %3142 = fmul double %3139, %3141
  %3143 = fptrunc double %3142 to float
  store float %3143, ptr %1265, align 4, !tbaa !79
  br label %3144

3144:                                             ; preds = %3136, %3135
  br i1 %1267, label %3153, label %3145

3145:                                             ; preds = %3144
  %3146 = load float, ptr %864, align 8, !tbaa !80
  %3147 = fpext float %3146 to double
  %3148 = fmul double %3147, 0x3EF0001000100010
  %3149 = load float, ptr %856, align 8, !tbaa !80
  %3150 = fpext float %3149 to double
  %3151 = fmul double %3148, %3150
  %3152 = fptrunc double %3151 to float
  store float %3152, ptr %1268, align 8, !tbaa !80
  br label %3153

3153:                                             ; preds = %3145, %3144
  %3154 = load i32, ptr %1271, align 4
  %3155 = icmp eq i32 %3154, 12
  %3156 = select i1 %1270, i1 %3155, i1 false
  br i1 %3156, label %3157, label %6283

3157:                                             ; preds = %3153
  %3158 = load float, ptr %1272, align 8, !tbaa !84
  %3159 = fpext float %3158 to double
  %3160 = fmul double %3159, 0x3EF0001000100010
  %3161 = load float, ptr %1273, align 8, !tbaa !84
  %3162 = fpext float %3161 to double
  %3163 = fmul double %3160, %3162
  %3164 = fptrunc double %3163 to float
  store float %3164, ptr %1274, align 8, !tbaa !84
  br label %6283

3165:                                             ; preds = %1758
  %3166 = load float, ptr %1215, align 4, !tbaa !81
  %3167 = fpext float %3166 to double
  %3168 = call double @llvm.fmuladd.f64(double %3167, double 0xBEF0001000100010, double 1.000000e+00)
  %3169 = fptrunc double %3168 to float
  %3170 = load float, ptr %1216, align 4, !tbaa !81
  %3171 = fpext float %3170 to double
  %3172 = call double @llvm.fmuladd.f64(double %3171, double 0xBEF0001000100010, double 1.000000e+00)
  %3173 = fptrunc double %3172 to float
  br i1 %1218, label %3235, label %3174

3174:                                             ; preds = %3165
  %3175 = fadd float %3169, %3173
  %3176 = fneg float %3169
  %3177 = call float @llvm.fmuladd.f32(float %3176, float %3173, float %3175)
  %3178 = fcmp olt float %3177, 0.000000e+00
  %3179 = fcmp ogt float %3177, 1.000000e+00
  %3180 = select i1 %3179, float 1.000000e+00, float %3177
  %3181 = select i1 %3178, float 0.000000e+00, float %3180
  %3182 = fpext float %3181 to double
  %3183 = fsub double 1.000000e+00, %3182
  %3184 = fmul double %3183, 6.553500e+04
  %3185 = fptrunc double %3184 to float
  store float %3185, ptr %1219, align 4, !tbaa !81
  %3186 = fmul float %3169, 0x3EF0001000000000
  %3187 = fmul float %3173, 0x3EF0001000000000
  %3188 = call double @llvm.fabs.f64(double %3182)
  %3189 = fcmp olt double %3188, 1.000000e-15
  %3190 = fdiv double 6.553500e+04, %3182
  %3191 = select i1 %3189, double 0x440C6BD8BA3ED9CB, double %3190
  %3192 = load float, ptr %862, align 8, !tbaa !77
  %3193 = fmul float %3186, %3192
  %3194 = load float, ptr %854, align 8, !tbaa !77
  %3195 = fmul float %3187, %3194
  %3196 = fadd float %3193, %3195
  %3197 = fneg float %3193
  %3198 = call float @llvm.fmuladd.f32(float %3197, float %3195, float %3196)
  %3199 = fpext float %3198 to double
  %3200 = fmul double %3191, %3199
  %3201 = fptrunc double %3200 to float
  store float %3201, ptr %1220, align 8, !tbaa !77
  %3202 = load float, ptr %863, align 4, !tbaa !79
  %3203 = fmul float %3186, %3202
  %3204 = load float, ptr %855, align 4, !tbaa !79
  %3205 = fmul float %3187, %3204
  %3206 = fadd float %3203, %3205
  %3207 = fneg float %3203
  %3208 = call float @llvm.fmuladd.f32(float %3207, float %3205, float %3206)
  %3209 = fpext float %3208 to double
  %3210 = fmul double %3191, %3209
  %3211 = fptrunc double %3210 to float
  store float %3211, ptr %1221, align 4, !tbaa !79
  %3212 = load float, ptr %864, align 8, !tbaa !80
  %3213 = fmul float %3186, %3212
  %3214 = load float, ptr %856, align 8, !tbaa !80
  %3215 = fmul float %3187, %3214
  %3216 = fadd float %3213, %3215
  %3217 = fneg float %3213
  %3218 = call float @llvm.fmuladd.f32(float %3217, float %3215, float %3216)
  %3219 = fpext float %3218 to double
  %3220 = fmul double %3191, %3219
  %3221 = fptrunc double %3220 to float
  store float %3221, ptr %1222, align 8, !tbaa !80
  %3222 = load i32, ptr %1223, align 4, !tbaa !90
  %3223 = icmp eq i32 %3222, 12
  br i1 %3223, label %3224, label %6283

3224:                                             ; preds = %3174
  %3225 = load float, ptr %1224, align 8, !tbaa !84
  %3226 = fmul float %3186, %3225
  %3227 = load float, ptr %1225, align 8, !tbaa !84
  %3228 = fmul float %3187, %3227
  %3229 = fadd float %3226, %3228
  %3230 = fneg float %3226
  %3231 = call float @llvm.fmuladd.f32(float %3230, float %3228, float %3229)
  %3232 = fpext float %3231 to double
  %3233 = fmul double %3191, %3232
  %3234 = fptrunc double %3233 to float
  store float %3234, ptr %1226, align 8, !tbaa !84
  br label %6283

3235:                                             ; preds = %3165
  br i1 %1228, label %3244, label %3236

3236:                                             ; preds = %3235
  %3237 = fadd float %3169, %3173
  %3238 = fneg float %3169
  %3239 = call float @llvm.fmuladd.f32(float %3238, float %3173, float %3237)
  %3240 = fpext float %3239 to double
  %3241 = fsub double 1.000000e+00, %3240
  %3242 = fmul double %3241, 6.553500e+04
  %3243 = fptrunc double %3242 to float
  store float %3243, ptr %1229, align 4, !tbaa !81
  br label %3244

3244:                                             ; preds = %3236, %3235
  br i1 %1231, label %3258, label %3245

3245:                                             ; preds = %3244
  %3246 = load float, ptr %862, align 8, !tbaa !77
  %3247 = fpext float %3246 to double
  %3248 = fmul double %3247, 0x3EF0001000100010
  %3249 = fptrunc double %3248 to float
  %3250 = load float, ptr %854, align 8, !tbaa !77
  %3251 = fpext float %3250 to double
  %3252 = fmul double %3251, 0x3EF0001000100010
  %3253 = fptrunc double %3252 to float
  %3254 = fadd float %3249, %3253
  %3255 = fneg float %3249
  %3256 = call float @llvm.fmuladd.f32(float %3255, float %3253, float %3254)
  %3257 = fmul float %3256, 6.553500e+04
  store float %3257, ptr %1232, align 8, !tbaa !77
  br label %3258

3258:                                             ; preds = %3245, %3244
  br i1 %1234, label %3272, label %3259

3259:                                             ; preds = %3258
  %3260 = load float, ptr %863, align 4, !tbaa !79
  %3261 = fpext float %3260 to double
  %3262 = fmul double %3261, 0x3EF0001000100010
  %3263 = fptrunc double %3262 to float
  %3264 = load float, ptr %855, align 4, !tbaa !79
  %3265 = fpext float %3264 to double
  %3266 = fmul double %3265, 0x3EF0001000100010
  %3267 = fptrunc double %3266 to float
  %3268 = fadd float %3263, %3267
  %3269 = fneg float %3263
  %3270 = call float @llvm.fmuladd.f32(float %3269, float %3267, float %3268)
  %3271 = fmul float %3270, 6.553500e+04
  store float %3271, ptr %1235, align 4, !tbaa !79
  br label %3272

3272:                                             ; preds = %3259, %3258
  br i1 %1237, label %3286, label %3273

3273:                                             ; preds = %3272
  %3274 = load float, ptr %864, align 8, !tbaa !80
  %3275 = fpext float %3274 to double
  %3276 = fmul double %3275, 0x3EF0001000100010
  %3277 = fptrunc double %3276 to float
  %3278 = load float, ptr %856, align 8, !tbaa !80
  %3279 = fpext float %3278 to double
  %3280 = fmul double %3279, 0x3EF0001000100010
  %3281 = fptrunc double %3280 to float
  %3282 = fadd float %3277, %3281
  %3283 = fneg float %3277
  %3284 = call float @llvm.fmuladd.f32(float %3283, float %3281, float %3282)
  %3285 = fmul float %3284, 6.553500e+04
  store float %3285, ptr %1238, align 8, !tbaa !80
  br label %3286

3286:                                             ; preds = %3273, %3272
  %3287 = load i32, ptr %1241, align 4
  %3288 = icmp eq i32 %3287, 12
  %3289 = select i1 %1240, i1 %3288, i1 false
  br i1 %3289, label %3290, label %6283

3290:                                             ; preds = %3286
  %3291 = load float, ptr %1242, align 8, !tbaa !84
  %3292 = fpext float %3291 to double
  %3293 = fmul double %3292, 0x3EF0001000100010
  %3294 = fptrunc double %3293 to float
  %3295 = load float, ptr %1243, align 8, !tbaa !84
  %3296 = fpext float %3295 to double
  %3297 = fmul double %3296, 0x3EF0001000100010
  %3298 = fptrunc double %3297 to float
  %3299 = fadd float %3294, %3298
  %3300 = fneg float %3294
  %3301 = call float @llvm.fmuladd.f32(float %3300, float %3298, float %3299)
  %3302 = fmul float %3301, 6.553500e+04
  store float %3302, ptr %1244, align 8, !tbaa !84
  br label %6283

3303:                                             ; preds = %1758
  call fastcc void @CompositeDivide(ptr noundef nonnull %15, ptr noundef nonnull %14, i32 noundef %1, ptr noundef nonnull %13)
  br label %6283

3304:                                             ; preds = %1758
  call fastcc void @CompositeDivide(ptr noundef nonnull %14, ptr noundef nonnull %15, i32 noundef %1, ptr noundef nonnull %13)
  br label %6283

3305:                                             ; preds = %1758
  br i1 %1184, label %3402, label %3306

3306:                                             ; preds = %3305
  %3307 = load float, ptr %1185, align 4, !tbaa !81
  %3308 = fpext float %3307 to double
  %3309 = fmul double %3308, 0x3EF0001000100010
  %3310 = load float, ptr %1186, align 4, !tbaa !81
  %3311 = fpext float %3310 to double
  %3312 = fmul double %3309, %3311
  %3313 = fptrunc double %3312 to float
  store float %3313, ptr %1187, align 4, !tbaa !81
  %3314 = fpext float %3313 to double
  %3315 = call double @llvm.fmuladd.f64(double %3314, double 0xBEF0001000100010, double 1.000000e+00)
  %3316 = fcmp olt double %3315, 0.000000e+00
  %3317 = select i1 %3316, double 0.000000e+00, double %3315
  %3318 = fcmp ult double %3317, 1.000000e-15
  %3319 = fdiv double 1.000000e+00, %3317
  %3320 = select i1 %3318, double 0x430C6BF52633FFFF, double %3319
  %3321 = load float, ptr %862, align 8, !tbaa !77
  %3322 = load float, ptr %854, align 8, !tbaa !77
  %3323 = fcmp olt float %3321, %3322
  %3324 = select i1 %3323, double %3308, double %3311
  %3325 = select i1 %3323, float %3321, float %3322
  %3326 = select i1 %3323, double %3311, double %3308
  %3327 = select i1 %3323, float %3322, float %3321
  %3328 = call double @llvm.fmuladd.f64(double %3324, double 0xBEF0001000100010, double 1.000000e+00)
  %3329 = fpext float %3325 to double
  %3330 = call double @llvm.fmuladd.f64(double %3326, double 0xBEF0001000100010, double 1.000000e+00)
  %3331 = fpext float %3327 to double
  %3332 = fmul double %3330, %3331
  %3333 = fmul double %3332, 0x3EF0001000100010
  %3334 = fmul double %3333, %3324
  %3335 = call double @llvm.fmuladd.f64(double %3328, double %3329, double %3334)
  %3336 = fptrunc double %3335 to float
  %3337 = fpext float %3336 to double
  %3338 = fmul double %3320, %3337
  %3339 = fptrunc double %3338 to float
  store float %3339, ptr %1188, align 8, !tbaa !77
  %3340 = load float, ptr %863, align 4, !tbaa !79
  %3341 = load float, ptr %855, align 4, !tbaa !79
  %3342 = fcmp olt float %3340, %3341
  br i1 %3342, label %3344, label %3343

3343:                                             ; preds = %3306
  br label %3344

3344:                                             ; preds = %3306, %3343
  %3345 = phi double [ %3311, %3343 ], [ %3308, %3306 ]
  %3346 = phi float [ %3341, %3343 ], [ %3340, %3306 ]
  %3347 = phi double [ %3308, %3343 ], [ %3311, %3306 ]
  %3348 = phi float [ %3340, %3343 ], [ %3341, %3306 ]
  %3349 = call double @llvm.fmuladd.f64(double %3345, double 0xBEF0001000100010, double 1.000000e+00)
  %3350 = fpext float %3346 to double
  %3351 = call double @llvm.fmuladd.f64(double %3347, double 0xBEF0001000100010, double 1.000000e+00)
  %3352 = fpext float %3348 to double
  %3353 = fmul double %3351, %3352
  %3354 = fmul double %3353, 0x3EF0001000100010
  %3355 = fmul double %3354, %3345
  %3356 = call double @llvm.fmuladd.f64(double %3349, double %3350, double %3355)
  %3357 = fptrunc double %3356 to float
  %3358 = fpext float %3357 to double
  %3359 = fmul double %3320, %3358
  %3360 = fptrunc double %3359 to float
  store float %3360, ptr %1189, align 4, !tbaa !79
  %3361 = load float, ptr %864, align 8, !tbaa !80
  %3362 = load float, ptr %856, align 8, !tbaa !80
  %3363 = fcmp olt float %3361, %3362
  %3364 = select i1 %3363, double %3308, double %3311
  %3365 = select i1 %3363, float %3361, float %3362
  %3366 = select i1 %3363, double %3311, double %3308
  %3367 = select i1 %3363, float %3362, float %3361
  %3368 = call double @llvm.fmuladd.f64(double %3364, double 0xBEF0001000100010, double 1.000000e+00)
  %3369 = fpext float %3365 to double
  %3370 = call double @llvm.fmuladd.f64(double %3366, double 0xBEF0001000100010, double 1.000000e+00)
  %3371 = fpext float %3367 to double
  %3372 = fmul double %3370, %3371
  %3373 = fmul double %3372, 0x3EF0001000100010
  %3374 = fmul double %3373, %3364
  %3375 = call double @llvm.fmuladd.f64(double %3368, double %3369, double %3374)
  %3376 = fptrunc double %3375 to float
  %3377 = fpext float %3376 to double
  %3378 = fmul double %3320, %3377
  %3379 = fptrunc double %3378 to float
  store float %3379, ptr %1190, align 8, !tbaa !80
  %3380 = load i32, ptr %1191, align 4, !tbaa !90
  %3381 = icmp eq i32 %3380, 12
  br i1 %3381, label %3382, label %6283

3382:                                             ; preds = %3344
  %3383 = load float, ptr %1192, align 8, !tbaa !84
  %3384 = load float, ptr %1193, align 8, !tbaa !84
  %3385 = fcmp olt float %3383, %3384
  %3386 = select i1 %3385, double %3308, double %3311
  %3387 = select i1 %3385, float %3383, float %3384
  %3388 = select i1 %3385, double %3311, double %3308
  %3389 = select i1 %3385, float %3384, float %3383
  %3390 = call double @llvm.fmuladd.f64(double %3386, double 0xBEF0001000100010, double 1.000000e+00)
  %3391 = fpext float %3387 to double
  %3392 = call double @llvm.fmuladd.f64(double %3388, double 0xBEF0001000100010, double 1.000000e+00)
  %3393 = fpext float %3389 to double
  %3394 = fmul double %3392, %3393
  %3395 = fmul double %3394, 0x3EF0001000100010
  %3396 = fmul double %3395, %3386
  %3397 = call double @llvm.fmuladd.f64(double %3390, double %3391, double %3396)
  %3398 = fptrunc double %3397 to float
  %3399 = fpext float %3398 to double
  %3400 = fmul double %3320, %3399
  %3401 = fptrunc double %3400 to float
  store float %3401, ptr %1194, align 8, !tbaa !84
  br label %6283

3402:                                             ; preds = %3305
  br i1 %1196, label %3408, label %3403

3403:                                             ; preds = %3402
  %3404 = load float, ptr %1197, align 4, !tbaa !81
  %3405 = load float, ptr %1198, align 4, !tbaa !81
  %3406 = fcmp ogt float %3404, %3405
  %3407 = select i1 %3406, float %3404, float %3405
  store float %3407, ptr %1199, align 4, !tbaa !81
  br label %3408

3408:                                             ; preds = %3403, %3402
  br i1 %1201, label %3414, label %3409

3409:                                             ; preds = %3408
  %3410 = load float, ptr %862, align 8, !tbaa !77
  %3411 = load float, ptr %854, align 8, !tbaa !77
  %3412 = fcmp olt float %3410, %3411
  %3413 = select i1 %3412, float %3410, float %3411
  store float %3413, ptr %1202, align 8, !tbaa !77
  br label %3414

3414:                                             ; preds = %3409, %3408
  br i1 %1204, label %3420, label %3415

3415:                                             ; preds = %3414
  %3416 = load float, ptr %863, align 4, !tbaa !79
  %3417 = load float, ptr %855, align 4, !tbaa !79
  %3418 = fcmp olt float %3416, %3417
  %3419 = select i1 %3418, float %3416, float %3417
  store float %3419, ptr %1205, align 4, !tbaa !79
  br label %3420

3420:                                             ; preds = %3415, %3414
  br i1 %1207, label %3426, label %3421

3421:                                             ; preds = %3420
  %3422 = load float, ptr %864, align 8, !tbaa !80
  %3423 = load float, ptr %856, align 8, !tbaa !80
  %3424 = fcmp olt float %3422, %3423
  %3425 = select i1 %3424, float %3422, float %3423
  store float %3425, ptr %1208, align 8, !tbaa !80
  br label %3426

3426:                                             ; preds = %3421, %3420
  %3427 = load i32, ptr %1211, align 4
  %3428 = icmp eq i32 %3427, 12
  %3429 = select i1 %1210, i1 %3428, i1 false
  br i1 %3429, label %3430, label %6283

3430:                                             ; preds = %3426
  %3431 = load float, ptr %1212, align 8, !tbaa !84
  %3432 = load float, ptr %1213, align 8, !tbaa !84
  %3433 = fcmp olt float %3431, %3432
  %3434 = select i1 %3433, float %3431, float %3432
  store float %3434, ptr %1214, align 8, !tbaa !84
  br label %6283

3435:                                             ; preds = %1758
  br i1 %1152, label %3534, label %3436

3436:                                             ; preds = %3435
  %3437 = load float, ptr %1153, align 4, !tbaa !81
  %3438 = fpext float %3437 to double
  %3439 = fmul double %3438, 0x3EF0001000100010
  %3440 = load float, ptr %1154, align 4, !tbaa !81
  %3441 = fpext float %3440 to double
  %3442 = fmul double %3439, %3441
  %3443 = fptrunc double %3442 to float
  store float %3443, ptr %1155, align 4, !tbaa !81
  %3444 = fpext float %3443 to double
  %3445 = call double @llvm.fmuladd.f64(double %3444, double 0xBEF0001000100010, double 1.000000e+00)
  %3446 = fcmp olt double %3445, 0.000000e+00
  %3447 = select i1 %3446, double -1.000000e+00, double 1.000000e+00
  %3448 = fmul double %3445, %3447
  %3449 = fcmp ult double %3448, 1.000000e-15
  %3450 = fdiv double 1.000000e+00, %3445
  %3451 = fdiv double %3447, 1.000000e-15
  %3452 = select i1 %3449, double %3451, double %3450
  %3453 = load float, ptr %862, align 8, !tbaa !77
  %3454 = load float, ptr %854, align 8, !tbaa !77
  %3455 = fcmp ogt float %3453, %3454
  %3456 = select i1 %3455, double %3438, double %3441
  %3457 = select i1 %3455, float %3453, float %3454
  %3458 = select i1 %3455, double %3441, double %3438
  %3459 = select i1 %3455, float %3454, float %3453
  %3460 = call double @llvm.fmuladd.f64(double %3456, double 0xBEF0001000100010, double 1.000000e+00)
  %3461 = fpext float %3457 to double
  %3462 = call double @llvm.fmuladd.f64(double %3458, double 0xBEF0001000100010, double 1.000000e+00)
  %3463 = fpext float %3459 to double
  %3464 = fmul double %3462, %3463
  %3465 = fmul double %3464, 0x3EF0001000100010
  %3466 = fmul double %3465, %3456
  %3467 = call double @llvm.fmuladd.f64(double %3460, double %3461, double %3466)
  %3468 = fptrunc double %3467 to float
  %3469 = fpext float %3468 to double
  %3470 = fmul double %3452, %3469
  %3471 = fptrunc double %3470 to float
  store float %3471, ptr %1156, align 8, !tbaa !77
  %3472 = load float, ptr %863, align 4, !tbaa !79
  %3473 = load float, ptr %855, align 4, !tbaa !79
  %3474 = fcmp ogt float %3472, %3473
  br i1 %3474, label %3476, label %3475

3475:                                             ; preds = %3436
  br label %3476

3476:                                             ; preds = %3436, %3475
  %3477 = phi double [ %3441, %3475 ], [ %3438, %3436 ]
  %3478 = phi float [ %3473, %3475 ], [ %3472, %3436 ]
  %3479 = phi double [ %3438, %3475 ], [ %3441, %3436 ]
  %3480 = phi float [ %3472, %3475 ], [ %3473, %3436 ]
  %3481 = call double @llvm.fmuladd.f64(double %3477, double 0xBEF0001000100010, double 1.000000e+00)
  %3482 = fpext float %3478 to double
  %3483 = call double @llvm.fmuladd.f64(double %3479, double 0xBEF0001000100010, double 1.000000e+00)
  %3484 = fpext float %3480 to double
  %3485 = fmul double %3483, %3484
  %3486 = fmul double %3485, 0x3EF0001000100010
  %3487 = fmul double %3486, %3477
  %3488 = call double @llvm.fmuladd.f64(double %3481, double %3482, double %3487)
  %3489 = fptrunc double %3488 to float
  %3490 = fpext float %3489 to double
  %3491 = fmul double %3452, %3490
  %3492 = fptrunc double %3491 to float
  store float %3492, ptr %1157, align 4, !tbaa !79
  %3493 = load float, ptr %864, align 8, !tbaa !80
  %3494 = load float, ptr %856, align 8, !tbaa !80
  %3495 = fcmp ogt float %3493, %3494
  %3496 = select i1 %3495, double %3438, double %3441
  %3497 = select i1 %3495, float %3493, float %3494
  %3498 = select i1 %3495, double %3441, double %3438
  %3499 = select i1 %3495, float %3494, float %3493
  %3500 = call double @llvm.fmuladd.f64(double %3496, double 0xBEF0001000100010, double 1.000000e+00)
  %3501 = fpext float %3497 to double
  %3502 = call double @llvm.fmuladd.f64(double %3498, double 0xBEF0001000100010, double 1.000000e+00)
  %3503 = fpext float %3499 to double
  %3504 = fmul double %3502, %3503
  %3505 = fmul double %3504, 0x3EF0001000100010
  %3506 = fmul double %3505, %3496
  %3507 = call double @llvm.fmuladd.f64(double %3500, double %3501, double %3506)
  %3508 = fptrunc double %3507 to float
  %3509 = fpext float %3508 to double
  %3510 = fmul double %3452, %3509
  %3511 = fptrunc double %3510 to float
  store float %3511, ptr %1158, align 8, !tbaa !80
  %3512 = load i32, ptr %1159, align 4, !tbaa !90
  %3513 = icmp eq i32 %3512, 12
  br i1 %3513, label %3514, label %6283

3514:                                             ; preds = %3476
  %3515 = load float, ptr %1160, align 8, !tbaa !84
  %3516 = load float, ptr %1161, align 8, !tbaa !84
  %3517 = fcmp ogt float %3515, %3516
  %3518 = select i1 %3517, double %3438, double %3441
  %3519 = select i1 %3517, float %3515, float %3516
  %3520 = select i1 %3517, double %3441, double %3438
  %3521 = select i1 %3517, float %3516, float %3515
  %3522 = call double @llvm.fmuladd.f64(double %3518, double 0xBEF0001000100010, double 1.000000e+00)
  %3523 = fpext float %3519 to double
  %3524 = call double @llvm.fmuladd.f64(double %3520, double 0xBEF0001000100010, double 1.000000e+00)
  %3525 = fpext float %3521 to double
  %3526 = fmul double %3524, %3525
  %3527 = fmul double %3526, 0x3EF0001000100010
  %3528 = fmul double %3527, %3518
  %3529 = call double @llvm.fmuladd.f64(double %3522, double %3523, double %3528)
  %3530 = fptrunc double %3529 to float
  %3531 = fpext float %3530 to double
  %3532 = fmul double %3452, %3531
  %3533 = fptrunc double %3532 to float
  store float %3533, ptr %1162, align 8, !tbaa !84
  br label %6283

3534:                                             ; preds = %3435
  br i1 %1164, label %3540, label %3535

3535:                                             ; preds = %3534
  %3536 = load float, ptr %1165, align 4, !tbaa !81
  %3537 = load float, ptr %1166, align 4, !tbaa !81
  %3538 = fcmp olt float %3536, %3537
  %3539 = select i1 %3538, float %3536, float %3537
  store float %3539, ptr %1167, align 4, !tbaa !81
  br label %3540

3540:                                             ; preds = %3535, %3534
  br i1 %1169, label %3546, label %3541

3541:                                             ; preds = %3540
  %3542 = load float, ptr %862, align 8, !tbaa !77
  %3543 = load float, ptr %854, align 8, !tbaa !77
  %3544 = fcmp ogt float %3542, %3543
  %3545 = select i1 %3544, float %3542, float %3543
  store float %3545, ptr %1170, align 8, !tbaa !77
  br label %3546

3546:                                             ; preds = %3541, %3540
  br i1 %1172, label %3552, label %3547

3547:                                             ; preds = %3546
  %3548 = load float, ptr %863, align 4, !tbaa !79
  %3549 = load float, ptr %855, align 4, !tbaa !79
  %3550 = fcmp ogt float %3548, %3549
  %3551 = select i1 %3550, float %3548, float %3549
  store float %3551, ptr %1173, align 4, !tbaa !79
  br label %3552

3552:                                             ; preds = %3547, %3546
  br i1 %1175, label %3558, label %3553

3553:                                             ; preds = %3552
  %3554 = load float, ptr %864, align 8, !tbaa !80
  %3555 = load float, ptr %856, align 8, !tbaa !80
  %3556 = fcmp ogt float %3554, %3555
  %3557 = select i1 %3556, float %3554, float %3555
  store float %3557, ptr %1176, align 8, !tbaa !80
  br label %3558

3558:                                             ; preds = %3553, %3552
  %3559 = load i32, ptr %1179, align 4
  %3560 = icmp eq i32 %3559, 12
  %3561 = select i1 %1178, i1 %3560, i1 false
  br i1 %3561, label %3562, label %6283

3562:                                             ; preds = %3558
  %3563 = load float, ptr %1180, align 8, !tbaa !84
  %3564 = load float, ptr %1181, align 8, !tbaa !84
  %3565 = fcmp ogt float %3563, %3564
  %3566 = select i1 %3565, float %3563, float %3564
  store float %3566, ptr %1182, align 8, !tbaa !84
  br label %6283

3567:                                             ; preds = %1758
  br i1 %1125, label %3612, label %3568

3568:                                             ; preds = %3567
  %3569 = load float, ptr %1126, align 4, !tbaa !81
  %3570 = fpext float %3569 to double
  %3571 = call double @llvm.fmuladd.f64(double %3570, double 0xBEF0001000100010, double 1.000000e+00)
  %3572 = fptrunc double %3571 to float
  %3573 = load float, ptr %1127, align 4, !tbaa !81
  %3574 = fpext float %3573 to double
  %3575 = call double @llvm.fmuladd.f64(double %3574, double 0xBEF0001000100010, double 1.000000e+00)
  %3576 = fptrunc double %3575 to float
  %3577 = load i32, ptr %1128, align 4, !tbaa !90
  %3578 = icmp eq i32 %3577, 2
  %3579 = load float, ptr %862, align 8, !tbaa !77
  br i1 %3578, label %3590, label %3580

3580:                                             ; preds = %3568
  %3581 = fpext float %3579 to double
  %3582 = load float, ptr %863, align 4, !tbaa !79
  %3583 = fpext float %3582 to double
  %3584 = fmul double %3583, 0x3FE6E29307AF20EA
  %3585 = call double @llvm.fmuladd.f64(double %3581, double 2.126560e-01, double %3584)
  %3586 = load float, ptr %864, align 8, !tbaa !80
  %3587 = fpext float %3586 to double
  %3588 = call double @llvm.fmuladd.f64(double %3587, double 7.218600e-02, double %3585)
  %3589 = fptrunc double %3588 to float
  br label %3590

3590:                                             ; preds = %3568, %3580
  %3591 = phi float [ %3589, %3580 ], [ %3579, %3568 ]
  %3592 = fmul float %3591, %3572
  %3593 = load i32, ptr %1129, align 4, !tbaa !90
  %3594 = icmp eq i32 %3593, 2
  %3595 = load float, ptr %854, align 8, !tbaa !77
  br i1 %3594, label %3606, label %3596

3596:                                             ; preds = %3590
  %3597 = fpext float %3595 to double
  %3598 = load float, ptr %855, align 4, !tbaa !79
  %3599 = fpext float %3598 to double
  %3600 = fmul double %3599, 0x3FE6E29307AF20EA
  %3601 = call double @llvm.fmuladd.f64(double %3597, double 2.126560e-01, double %3600)
  %3602 = load float, ptr %856, align 8, !tbaa !80
  %3603 = fpext float %3602 to double
  %3604 = call double @llvm.fmuladd.f64(double %3603, double 7.218600e-02, double %3601)
  %3605 = fptrunc double %3604 to float
  br label %3606

3606:                                             ; preds = %3590, %3596
  %3607 = phi float [ %3605, %3596 ], [ %3595, %3590 ]
  %3608 = fmul float %3607, %3576
  %3609 = fcmp olt float %3592, %3608
  br i1 %3609, label %3610, label %3611

3610:                                             ; preds = %3606
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %13, ptr noundef nonnull align 8 dereferenceable(56) %15, i64 56, i1 false), !tbaa.struct !67
  br label %6283

3611:                                             ; preds = %3606
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %13, ptr noundef nonnull align 8 dereferenceable(56) %14, i64 56, i1 false), !tbaa.struct !67
  br label %6283

3612:                                             ; preds = %3567
  %3613 = load i32, ptr %1130, align 4, !tbaa !90
  %3614 = icmp eq i32 %3613, 2
  %3615 = load float, ptr %862, align 8, !tbaa !77
  br i1 %3614, label %3626, label %3616

3616:                                             ; preds = %3612
  %3617 = fpext float %3615 to double
  %3618 = load float, ptr %863, align 4, !tbaa !79
  %3619 = fpext float %3618 to double
  %3620 = fmul double %3619, 0x3FE6E29307AF20EA
  %3621 = call double @llvm.fmuladd.f64(double %3617, double 2.126560e-01, double %3620)
  %3622 = load float, ptr %864, align 8, !tbaa !80
  %3623 = fpext float %3622 to double
  %3624 = call double @llvm.fmuladd.f64(double %3623, double 7.218600e-02, double %3621)
  %3625 = fptrunc double %3624 to float
  br label %3626

3626:                                             ; preds = %3612, %3616
  %3627 = phi float [ %3625, %3616 ], [ %3615, %3612 ]
  %3628 = load i32, ptr %1131, align 4
  %3629 = icmp eq i32 %3628, 2
  %3630 = load float, ptr %854, align 8, !tbaa !77
  br i1 %3629, label %3641, label %3631

3631:                                             ; preds = %3626
  %3632 = fpext float %3630 to double
  %3633 = load float, ptr %855, align 4, !tbaa !79
  %3634 = fpext float %3633 to double
  %3635 = fmul double %3634, 0x3FE6E29307AF20EA
  %3636 = call double @llvm.fmuladd.f64(double %3632, double 2.126560e-01, double %3635)
  %3637 = load float, ptr %856, align 8, !tbaa !80
  %3638 = fpext float %3637 to double
  %3639 = call double @llvm.fmuladd.f64(double %3638, double 7.218600e-02, double %3636)
  %3640 = fptrunc double %3639 to float
  br label %3641

3641:                                             ; preds = %3626, %3631
  %3642 = phi float [ %3640, %3631 ], [ %3630, %3626 ]
  %3643 = fcmp olt float %3627, %3642
  br i1 %1133, label %3648, label %3644

3644:                                             ; preds = %3641
  %3645 = load float, ptr %1134, align 4
  %3646 = load float, ptr %1135, align 4
  %3647 = select i1 %3643, float %3645, float %3646
  store float %3647, ptr %1136, align 4, !tbaa !81
  br label %3648

3648:                                             ; preds = %3644, %3641
  br i1 %1138, label %3653, label %3649

3649:                                             ; preds = %3648
  %3650 = load float, ptr %862, align 8
  %3651 = load float, ptr %854, align 8
  %3652 = select i1 %3643, float %3650, float %3651
  store float %3652, ptr %1139, align 8, !tbaa !77
  br label %3653

3653:                                             ; preds = %3649, %3648
  br i1 %1141, label %3658, label %3654

3654:                                             ; preds = %3653
  %3655 = load float, ptr %863, align 4
  %3656 = load float, ptr %855, align 4
  %3657 = select i1 %3643, float %3655, float %3656
  store float %3657, ptr %1142, align 4, !tbaa !79
  br label %3658

3658:                                             ; preds = %3654, %3653
  br i1 %1144, label %3663, label %3659

3659:                                             ; preds = %3658
  %3660 = load float, ptr %864, align 8
  %3661 = load float, ptr %856, align 8
  %3662 = select i1 %3643, float %3660, float %3661
  store float %3662, ptr %1145, align 8, !tbaa !80
  br label %3663

3663:                                             ; preds = %3659, %3658
  %3664 = icmp eq i32 %3628, 12
  %3665 = and i1 %1147, %3664
  br i1 %3665, label %3666, label %6283

3666:                                             ; preds = %3663
  %3667 = load float, ptr %1148, align 8
  %3668 = load float, ptr %1149, align 8
  %3669 = select i1 %3643, float %3667, float %3668
  store float %3669, ptr %1150, align 8, !tbaa !84
  br label %6283

3670:                                             ; preds = %1758
  br i1 %1098, label %3715, label %3671

3671:                                             ; preds = %3670
  %3672 = load float, ptr %1099, align 4, !tbaa !81
  %3673 = fpext float %3672 to double
  %3674 = call double @llvm.fmuladd.f64(double %3673, double 0xBEF0001000100010, double 1.000000e+00)
  %3675 = fptrunc double %3674 to float
  %3676 = load float, ptr %1100, align 4, !tbaa !81
  %3677 = fpext float %3676 to double
  %3678 = call double @llvm.fmuladd.f64(double %3677, double 0xBEF0001000100010, double 1.000000e+00)
  %3679 = fptrunc double %3678 to float
  %3680 = load i32, ptr %1101, align 4, !tbaa !90
  %3681 = icmp eq i32 %3680, 2
  %3682 = load float, ptr %862, align 8, !tbaa !77
  br i1 %3681, label %3693, label %3683

3683:                                             ; preds = %3671
  %3684 = fpext float %3682 to double
  %3685 = load float, ptr %863, align 4, !tbaa !79
  %3686 = fpext float %3685 to double
  %3687 = fmul double %3686, 0x3FE6E29307AF20EA
  %3688 = call double @llvm.fmuladd.f64(double %3684, double 2.126560e-01, double %3687)
  %3689 = load float, ptr %864, align 8, !tbaa !80
  %3690 = fpext float %3689 to double
  %3691 = call double @llvm.fmuladd.f64(double %3690, double 7.218600e-02, double %3688)
  %3692 = fptrunc double %3691 to float
  br label %3693

3693:                                             ; preds = %3671, %3683
  %3694 = phi float [ %3692, %3683 ], [ %3682, %3671 ]
  %3695 = fmul float %3694, %3675
  %3696 = load i32, ptr %1102, align 4, !tbaa !90
  %3697 = icmp eq i32 %3696, 2
  %3698 = load float, ptr %854, align 8, !tbaa !77
  br i1 %3697, label %3709, label %3699

3699:                                             ; preds = %3693
  %3700 = fpext float %3698 to double
  %3701 = load float, ptr %855, align 4, !tbaa !79
  %3702 = fpext float %3701 to double
  %3703 = fmul double %3702, 0x3FE6E29307AF20EA
  %3704 = call double @llvm.fmuladd.f64(double %3700, double 2.126560e-01, double %3703)
  %3705 = load float, ptr %856, align 8, !tbaa !80
  %3706 = fpext float %3705 to double
  %3707 = call double @llvm.fmuladd.f64(double %3706, double 7.218600e-02, double %3704)
  %3708 = fptrunc double %3707 to float
  br label %3709

3709:                                             ; preds = %3693, %3699
  %3710 = phi float [ %3708, %3699 ], [ %3698, %3693 ]
  %3711 = fmul float %3710, %3679
  %3712 = fcmp ogt float %3695, %3711
  br i1 %3712, label %3713, label %3714

3713:                                             ; preds = %3709
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %13, ptr noundef nonnull align 8 dereferenceable(56) %15, i64 56, i1 false), !tbaa.struct !67
  br label %6283

3714:                                             ; preds = %3709
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %13, ptr noundef nonnull align 8 dereferenceable(56) %14, i64 56, i1 false), !tbaa.struct !67
  br label %6283

3715:                                             ; preds = %3670
  %3716 = load i32, ptr %1103, align 4, !tbaa !90
  %3717 = icmp eq i32 %3716, 2
  %3718 = load float, ptr %862, align 8, !tbaa !77
  br i1 %3717, label %3729, label %3719

3719:                                             ; preds = %3715
  %3720 = fpext float %3718 to double
  %3721 = load float, ptr %863, align 4, !tbaa !79
  %3722 = fpext float %3721 to double
  %3723 = fmul double %3722, 0x3FE6E29307AF20EA
  %3724 = call double @llvm.fmuladd.f64(double %3720, double 2.126560e-01, double %3723)
  %3725 = load float, ptr %864, align 8, !tbaa !80
  %3726 = fpext float %3725 to double
  %3727 = call double @llvm.fmuladd.f64(double %3726, double 7.218600e-02, double %3724)
  %3728 = fptrunc double %3727 to float
  br label %3729

3729:                                             ; preds = %3715, %3719
  %3730 = phi float [ %3728, %3719 ], [ %3718, %3715 ]
  %3731 = load i32, ptr %1104, align 4
  %3732 = icmp eq i32 %3731, 2
  %3733 = load float, ptr %854, align 8, !tbaa !77
  br i1 %3732, label %3744, label %3734

3734:                                             ; preds = %3729
  %3735 = fpext float %3733 to double
  %3736 = load float, ptr %855, align 4, !tbaa !79
  %3737 = fpext float %3736 to double
  %3738 = fmul double %3737, 0x3FE6E29307AF20EA
  %3739 = call double @llvm.fmuladd.f64(double %3735, double 2.126560e-01, double %3738)
  %3740 = load float, ptr %856, align 8, !tbaa !80
  %3741 = fpext float %3740 to double
  %3742 = call double @llvm.fmuladd.f64(double %3741, double 7.218600e-02, double %3739)
  %3743 = fptrunc double %3742 to float
  br label %3744

3744:                                             ; preds = %3729, %3734
  %3745 = phi float [ %3743, %3734 ], [ %3733, %3729 ]
  %3746 = fcmp ogt float %3730, %3745
  br i1 %1106, label %3751, label %3747

3747:                                             ; preds = %3744
  %3748 = load float, ptr %1107, align 4
  %3749 = load float, ptr %1108, align 4
  %3750 = select i1 %3746, float %3748, float %3749
  store float %3750, ptr %1109, align 4, !tbaa !81
  br label %3751

3751:                                             ; preds = %3747, %3744
  br i1 %1111, label %3756, label %3752

3752:                                             ; preds = %3751
  %3753 = load float, ptr %862, align 8
  %3754 = load float, ptr %854, align 8
  %3755 = select i1 %3746, float %3753, float %3754
  store float %3755, ptr %1112, align 8, !tbaa !77
  br label %3756

3756:                                             ; preds = %3752, %3751
  br i1 %1114, label %3761, label %3757

3757:                                             ; preds = %3756
  %3758 = load float, ptr %863, align 4
  %3759 = load float, ptr %855, align 4
  %3760 = select i1 %3746, float %3758, float %3759
  store float %3760, ptr %1115, align 4, !tbaa !79
  br label %3761

3761:                                             ; preds = %3757, %3756
  br i1 %1117, label %3766, label %3762

3762:                                             ; preds = %3761
  %3763 = load float, ptr %864, align 8
  %3764 = load float, ptr %856, align 8
  %3765 = select i1 %3746, float %3763, float %3764
  store float %3765, ptr %1118, align 8, !tbaa !80
  br label %3766

3766:                                             ; preds = %3762, %3761
  %3767 = icmp eq i32 %3731, 12
  %3768 = and i1 %1120, %3767
  br i1 %3768, label %3769, label %6283

3769:                                             ; preds = %3766
  %3770 = load float, ptr %1121, align 8
  %3771 = load float, ptr %1122, align 8
  %3772 = select i1 %3746, float %3770, float %3771
  store float %3772, ptr %1123, align 8, !tbaa !84
  br label %6283

3773:                                             ; preds = %1758
  %3774 = load float, ptr %1049, align 4, !tbaa !81
  %3775 = fpext float %3774 to double
  %3776 = call double @llvm.fmuladd.f64(double %3775, double 0xBEF0001000100010, double 1.000000e+00)
  %3777 = fptrunc double %3776 to float
  %3778 = load float, ptr %1050, align 4, !tbaa !81
  %3779 = fpext float %3778 to double
  %3780 = call double @llvm.fmuladd.f64(double %3779, double 0xBEF0001000100010, double 1.000000e+00)
  %3781 = fptrunc double %3780 to float
  br i1 %1052, label %3910, label %3782

3782:                                             ; preds = %3773
  %3783 = fadd float %3777, %3781
  %3784 = fneg float %3777
  %3785 = call float @llvm.fmuladd.f32(float %3784, float %3781, float %3783)
  %3786 = fcmp olt float %3785, 0.000000e+00
  %3787 = fcmp ogt float %3785, 1.000000e+00
  %3788 = select i1 %3787, float 1.000000e+00, float %3785
  %3789 = select i1 %3786, float 0.000000e+00, float %3788
  %3790 = fpext float %3789 to double
  %3791 = fsub double 1.000000e+00, %3790
  %3792 = fmul double %3791, 6.553500e+04
  %3793 = fptrunc double %3792 to float
  store float %3793, ptr %1053, align 4, !tbaa !81
  %3794 = call double @llvm.fabs.f64(double %3790)
  %3795 = fcmp olt double %3794, 1.000000e-15
  %3796 = fdiv double 6.553500e+04, %3790
  %3797 = select i1 %3795, double 0x440C6BD8BA3ED9CB, double %3796
  %3798 = load float, ptr %862, align 8, !tbaa !77
  %3799 = fpext float %3798 to double
  %3800 = fmul double %3799, 0x3EF0001000100010
  %3801 = fpext float %3777 to double
  %3802 = fmul double %3800, %3801
  %3803 = fptrunc double %3802 to float
  %3804 = load float, ptr %854, align 8, !tbaa !77
  %3805 = fpext float %3804 to double
  %3806 = fmul double %3805, 0x3EF0001000100010
  %3807 = fpext float %3781 to double
  %3808 = fmul double %3806, %3807
  %3809 = fptrunc double %3808 to float
  %3810 = load double, ptr %9, align 8, !tbaa !63
  %3811 = fpext float %3803 to double
  %3812 = fmul double %3810, %3811
  %3813 = fpext float %3809 to double
  %3814 = load double, ptr %1054, align 8, !tbaa !87
  %3815 = fmul double %3814, %3811
  %3816 = fmul double %3815, %3807
  %3817 = call double @llvm.fmuladd.f64(double %3812, double %3813, double %3816)
  %3818 = load double, ptr %1055, align 8, !tbaa !65
  %3819 = fmul double %3818, %3813
  %3820 = call double @llvm.fmuladd.f64(double %3819, double %3801, double %3817)
  %3821 = load double, ptr %1056, align 8, !tbaa !66
  %3822 = fmul double %3821, %3801
  %3823 = call double @llvm.fmuladd.f64(double %3822, double %3807, double %3820)
  %3824 = fsub double 1.000000e+00, %3807
  %3825 = call double @llvm.fmuladd.f64(double %3811, double %3824, double %3823)
  %3826 = fsub double 1.000000e+00, %3801
  %3827 = call double @llvm.fmuladd.f64(double %3813, double %3826, double %3825)
  %3828 = fptrunc double %3827 to float
  %3829 = fpext float %3828 to double
  %3830 = fmul double %3797, %3829
  %3831 = fptrunc double %3830 to float
  store float %3831, ptr %1057, align 8, !tbaa !77
  %3832 = load float, ptr %863, align 4, !tbaa !79
  %3833 = fpext float %3832 to double
  %3834 = fmul double %3833, 0x3EF0001000100010
  %3835 = fmul double %3834, %3801
  %3836 = fptrunc double %3835 to float
  %3837 = load float, ptr %855, align 4, !tbaa !79
  %3838 = fpext float %3837 to double
  %3839 = fmul double %3838, 0x3EF0001000100010
  %3840 = fmul double %3839, %3807
  %3841 = fptrunc double %3840 to float
  %3842 = fpext float %3836 to double
  %3843 = fmul double %3810, %3842
  %3844 = fpext float %3841 to double
  %3845 = fmul double %3814, %3842
  %3846 = fmul double %3845, %3807
  %3847 = call double @llvm.fmuladd.f64(double %3843, double %3844, double %3846)
  %3848 = fmul double %3818, %3844
  %3849 = call double @llvm.fmuladd.f64(double %3848, double %3801, double %3847)
  %3850 = call double @llvm.fmuladd.f64(double %3822, double %3807, double %3849)
  %3851 = call double @llvm.fmuladd.f64(double %3842, double %3824, double %3850)
  %3852 = call double @llvm.fmuladd.f64(double %3844, double %3826, double %3851)
  %3853 = fptrunc double %3852 to float
  %3854 = fpext float %3853 to double
  %3855 = fmul double %3797, %3854
  %3856 = fptrunc double %3855 to float
  store float %3856, ptr %1058, align 4, !tbaa !79
  %3857 = load float, ptr %864, align 8, !tbaa !80
  %3858 = fpext float %3857 to double
  %3859 = fmul double %3858, 0x3EF0001000100010
  %3860 = fmul double %3859, %3801
  %3861 = fptrunc double %3860 to float
  %3862 = load float, ptr %856, align 8, !tbaa !80
  %3863 = fpext float %3862 to double
  %3864 = fmul double %3863, 0x3EF0001000100010
  %3865 = fmul double %3864, %3807
  %3866 = fptrunc double %3865 to float
  %3867 = fpext float %3861 to double
  %3868 = fmul double %3810, %3867
  %3869 = fpext float %3866 to double
  %3870 = fmul double %3814, %3867
  %3871 = fmul double %3870, %3807
  %3872 = call double @llvm.fmuladd.f64(double %3868, double %3869, double %3871)
  %3873 = fmul double %3818, %3869
  %3874 = call double @llvm.fmuladd.f64(double %3873, double %3801, double %3872)
  %3875 = call double @llvm.fmuladd.f64(double %3822, double %3807, double %3874)
  %3876 = call double @llvm.fmuladd.f64(double %3867, double %3824, double %3875)
  %3877 = call double @llvm.fmuladd.f64(double %3869, double %3826, double %3876)
  %3878 = fptrunc double %3877 to float
  %3879 = fpext float %3878 to double
  %3880 = fmul double %3797, %3879
  %3881 = fptrunc double %3880 to float
  store float %3881, ptr %1059, align 8, !tbaa !80
  %3882 = load i32, ptr %1060, align 4, !tbaa !90
  %3883 = icmp eq i32 %3882, 12
  br i1 %3883, label %3884, label %6283

3884:                                             ; preds = %3782
  %3885 = load float, ptr %1061, align 8, !tbaa !84
  %3886 = fpext float %3885 to double
  %3887 = fmul double %3886, 0x3EF0001000100010
  %3888 = fmul double %3887, %3801
  %3889 = fptrunc double %3888 to float
  %3890 = load float, ptr %1062, align 8, !tbaa !84
  %3891 = fpext float %3890 to double
  %3892 = fmul double %3891, 0x3EF0001000100010
  %3893 = fmul double %3892, %3807
  %3894 = fptrunc double %3893 to float
  %3895 = fpext float %3889 to double
  %3896 = fmul double %3810, %3895
  %3897 = fpext float %3894 to double
  %3898 = fmul double %3814, %3895
  %3899 = fmul double %3898, %3807
  %3900 = call double @llvm.fmuladd.f64(double %3896, double %3897, double %3899)
  %3901 = fmul double %3818, %3897
  %3902 = call double @llvm.fmuladd.f64(double %3901, double %3801, double %3900)
  %3903 = call double @llvm.fmuladd.f64(double %3822, double %3807, double %3902)
  %3904 = call double @llvm.fmuladd.f64(double %3895, double %3824, double %3903)
  %3905 = call double @llvm.fmuladd.f64(double %3897, double %3826, double %3904)
  %3906 = fptrunc double %3905 to float
  %3907 = fpext float %3906 to double
  %3908 = fmul double %3797, %3907
  %3909 = fptrunc double %3908 to float
  store float %3909, ptr %1063, align 8, !tbaa !84
  br label %6283

3910:                                             ; preds = %3773
  br i1 %1065, label %3931, label %3911

3911:                                             ; preds = %3910
  %3912 = load double, ptr %9, align 8, !tbaa !63
  %3913 = fpext float %3777 to double
  %3914 = fmul double %3912, %3913
  %3915 = fpext float %3781 to double
  %3916 = load double, ptr %1066, align 8, !tbaa !87
  %3917 = fmul double %3916, %3913
  %3918 = call double @llvm.fmuladd.f64(double %3914, double %3915, double %3917)
  %3919 = load double, ptr %1067, align 8, !tbaa !65
  %3920 = fmul double %3919, %3915
  %3921 = fadd double %3920, %3918
  %3922 = load double, ptr %1068, align 8, !tbaa !66
  %3923 = fadd double %3922, %3921
  %3924 = call double @llvm.fmuladd.f64(double %3913, double 0.000000e+00, double %3923)
  %3925 = call double @llvm.fmuladd.f64(double %3915, double 0.000000e+00, double %3924)
  %3926 = fptrunc double %3925 to float
  %3927 = fpext float %3926 to double
  %3928 = fsub double 1.000000e+00, %3927
  %3929 = fmul double %3928, 6.553500e+04
  %3930 = fptrunc double %3929 to float
  store float %3930, ptr %1069, align 4, !tbaa !81
  br label %3931

3931:                                             ; preds = %3911, %3910
  br i1 %1071, label %3957, label %3932

3932:                                             ; preds = %3931
  %3933 = load float, ptr %862, align 8, !tbaa !77
  %3934 = fpext float %3933 to double
  %3935 = fmul double %3934, 0x3EF0001000100010
  %3936 = fptrunc double %3935 to float
  %3937 = load float, ptr %854, align 8, !tbaa !77
  %3938 = fpext float %3937 to double
  %3939 = fmul double %3938, 0x3EF0001000100010
  %3940 = fptrunc double %3939 to float
  %3941 = load double, ptr %9, align 8, !tbaa !63
  %3942 = fpext float %3936 to double
  %3943 = fmul double %3941, %3942
  %3944 = fpext float %3940 to double
  %3945 = load double, ptr %1072, align 8, !tbaa !87
  %3946 = fmul double %3945, %3942
  %3947 = call double @llvm.fmuladd.f64(double %3943, double %3944, double %3946)
  %3948 = load double, ptr %1073, align 8, !tbaa !65
  %3949 = fmul double %3948, %3944
  %3950 = fadd double %3949, %3947
  %3951 = load double, ptr %1074, align 8, !tbaa !66
  %3952 = fadd double %3951, %3950
  %3953 = call double @llvm.fmuladd.f64(double %3942, double 0.000000e+00, double %3952)
  %3954 = call double @llvm.fmuladd.f64(double %3944, double 0.000000e+00, double %3953)
  %3955 = fptrunc double %3954 to float
  %3956 = fmul float %3955, 6.553500e+04
  store float %3956, ptr %1075, align 8, !tbaa !77
  br label %3957

3957:                                             ; preds = %3932, %3931
  br i1 %1077, label %3983, label %3958

3958:                                             ; preds = %3957
  %3959 = load float, ptr %863, align 4, !tbaa !79
  %3960 = fpext float %3959 to double
  %3961 = fmul double %3960, 0x3EF0001000100010
  %3962 = fptrunc double %3961 to float
  %3963 = load float, ptr %855, align 4, !tbaa !79
  %3964 = fpext float %3963 to double
  %3965 = fmul double %3964, 0x3EF0001000100010
  %3966 = fptrunc double %3965 to float
  %3967 = load double, ptr %9, align 8, !tbaa !63
  %3968 = fpext float %3962 to double
  %3969 = fmul double %3967, %3968
  %3970 = fpext float %3966 to double
  %3971 = load double, ptr %1078, align 8, !tbaa !87
  %3972 = fmul double %3971, %3968
  %3973 = call double @llvm.fmuladd.f64(double %3969, double %3970, double %3972)
  %3974 = load double, ptr %1079, align 8, !tbaa !65
  %3975 = fmul double %3974, %3970
  %3976 = fadd double %3975, %3973
  %3977 = load double, ptr %1080, align 8, !tbaa !66
  %3978 = fadd double %3977, %3976
  %3979 = call double @llvm.fmuladd.f64(double %3968, double 0.000000e+00, double %3978)
  %3980 = call double @llvm.fmuladd.f64(double %3970, double 0.000000e+00, double %3979)
  %3981 = fptrunc double %3980 to float
  %3982 = fmul float %3981, 6.553500e+04
  store float %3982, ptr %1081, align 4, !tbaa !79
  br label %3983

3983:                                             ; preds = %3958, %3957
  br i1 %1083, label %4009, label %3984

3984:                                             ; preds = %3983
  %3985 = load float, ptr %864, align 8, !tbaa !80
  %3986 = fpext float %3985 to double
  %3987 = fmul double %3986, 0x3EF0001000100010
  %3988 = fptrunc double %3987 to float
  %3989 = load float, ptr %856, align 8, !tbaa !80
  %3990 = fpext float %3989 to double
  %3991 = fmul double %3990, 0x3EF0001000100010
  %3992 = fptrunc double %3991 to float
  %3993 = load double, ptr %9, align 8, !tbaa !63
  %3994 = fpext float %3988 to double
  %3995 = fmul double %3993, %3994
  %3996 = fpext float %3992 to double
  %3997 = load double, ptr %1084, align 8, !tbaa !87
  %3998 = fmul double %3997, %3994
  %3999 = call double @llvm.fmuladd.f64(double %3995, double %3996, double %3998)
  %4000 = load double, ptr %1085, align 8, !tbaa !65
  %4001 = fmul double %4000, %3996
  %4002 = fadd double %4001, %3999
  %4003 = load double, ptr %1086, align 8, !tbaa !66
  %4004 = fadd double %4003, %4002
  %4005 = call double @llvm.fmuladd.f64(double %3994, double 0.000000e+00, double %4004)
  %4006 = call double @llvm.fmuladd.f64(double %3996, double 0.000000e+00, double %4005)
  %4007 = fptrunc double %4006 to float
  %4008 = fmul float %4007, 6.553500e+04
  store float %4008, ptr %1087, align 8, !tbaa !80
  br label %4009

4009:                                             ; preds = %3984, %3983
  %4010 = load i32, ptr %1090, align 4
  %4011 = icmp eq i32 %4010, 12
  %4012 = select i1 %1089, i1 %4011, i1 false
  br i1 %4012, label %4013, label %6283

4013:                                             ; preds = %4009
  %4014 = load float, ptr %1091, align 8, !tbaa !84
  %4015 = fpext float %4014 to double
  %4016 = fmul double %4015, 0x3EF0001000100010
  %4017 = fptrunc double %4016 to float
  %4018 = load float, ptr %1092, align 8, !tbaa !84
  %4019 = fpext float %4018 to double
  %4020 = fmul double %4019, 0x3EF0001000100010
  %4021 = fptrunc double %4020 to float
  %4022 = load double, ptr %9, align 8, !tbaa !63
  %4023 = fpext float %4017 to double
  %4024 = fmul double %4022, %4023
  %4025 = fpext float %4021 to double
  %4026 = load double, ptr %1093, align 8, !tbaa !87
  %4027 = fmul double %4026, %4023
  %4028 = call double @llvm.fmuladd.f64(double %4024, double %4025, double %4027)
  %4029 = load double, ptr %1094, align 8, !tbaa !65
  %4030 = fmul double %4029, %4025
  %4031 = fadd double %4030, %4028
  %4032 = load double, ptr %1095, align 8, !tbaa !66
  %4033 = fadd double %4032, %4031
  %4034 = call double @llvm.fmuladd.f64(double %4023, double 0.000000e+00, double %4033)
  %4035 = call double @llvm.fmuladd.f64(double %4025, double 0.000000e+00, double %4034)
  %4036 = fptrunc double %4035 to float
  %4037 = fmul float %4036, 6.553500e+04
  store float %4037, ptr %1096, align 8, !tbaa !84
  br label %6283

4038:                                             ; preds = %1758
  %4039 = load float, ptr %1039, align 4, !tbaa !81
  %4040 = fpext float %4039 to double
  %4041 = call double @llvm.fmuladd.f64(double %4040, double 0xBEF0001000100010, double 1.000000e+00)
  %4042 = fptrunc double %4041 to float
  %4043 = load float, ptr %1040, align 4, !tbaa !81
  %4044 = fpext float %4043 to double
  %4045 = call double @llvm.fmuladd.f64(double %4044, double 0xBEF0001000100010, double 1.000000e+00)
  %4046 = fptrunc double %4045 to float
  %4047 = fadd float %4042, %4046
  %4048 = fneg float %4042
  %4049 = call float @llvm.fmuladd.f32(float %4048, float %4046, float %4047)
  %4050 = fcmp olt float %4049, 0.000000e+00
  %4051 = fcmp ogt float %4049, 1.000000e+00
  %4052 = select i1 %4051, float 1.000000e+00, float %4049
  %4053 = select i1 %4050, float 0.000000e+00, float %4052
  %4054 = fpext float %4053 to double
  %4055 = fsub double 1.000000e+00, %4054
  %4056 = fmul double %4055, 6.553500e+04
  %4057 = fptrunc double %4056 to float
  store float %4057, ptr %1041, align 4, !tbaa !81
  %4058 = call double @llvm.fabs.f64(double %4054)
  %4059 = fcmp olt double %4058, 1.000000e-15
  %4060 = fdiv double 6.553500e+04, %4054
  %4061 = select i1 %4059, double 0x440C6BD8BA3ED9CB, double %4060
  %4062 = fptrunc double %4061 to float
  %4063 = load float, ptr %862, align 8, !tbaa !77
  %4064 = fpext float %4063 to double
  %4065 = fmul double %4064, 0x3EF0001000100010
  %4066 = fpext float %4042 to double
  %4067 = fmul double %4065, %4066
  %4068 = fptrunc double %4067 to float
  %4069 = load float, ptr %854, align 8, !tbaa !77
  %4070 = fpext float %4069 to double
  %4071 = fmul double %4070, 0x3EF0001000100010
  %4072 = fpext float %4046 to double
  %4073 = fmul double %4071, %4072
  %4074 = fptrunc double %4073 to float
  %4075 = fmul float %4042, %4074
  %4076 = call float @llvm.fmuladd.f32(float %4068, float %4046, float %4075)
  %4077 = fmul float %4042, %4046
  %4078 = fcmp ult float %4076, %4077
  %4079 = fmul float %4075, %4042
  %4080 = fsub float %4042, %4068
  %4081 = fdiv float %4079, %4080
  %4082 = select i1 %4078, float %4081, float %4077
  %4083 = fpext float %4082 to double
  %4084 = fpext float %4068 to double
  %4085 = fsub double 1.000000e+00, %4072
  %4086 = call double @llvm.fmuladd.f64(double %4084, double %4085, double %4083)
  %4087 = fpext float %4074 to double
  %4088 = fsub double 1.000000e+00, %4066
  %4089 = call double @llvm.fmuladd.f64(double %4087, double %4088, double %4086)
  %4090 = fptrunc double %4089 to float
  %4091 = fmul float %4062, %4090
  store float %4091, ptr %1042, align 8, !tbaa !77
  %4092 = load float, ptr %863, align 4, !tbaa !79
  %4093 = fpext float %4092 to double
  %4094 = fmul double %4093, 0x3EF0001000100010
  %4095 = fmul double %4094, %4066
  %4096 = fptrunc double %4095 to float
  %4097 = load float, ptr %855, align 4, !tbaa !79
  %4098 = fpext float %4097 to double
  %4099 = fmul double %4098, 0x3EF0001000100010
  %4100 = fmul double %4099, %4072
  %4101 = fptrunc double %4100 to float
  %4102 = fmul float %4042, %4101
  %4103 = call float @llvm.fmuladd.f32(float %4096, float %4046, float %4102)
  %4104 = fcmp ult float %4103, %4077
  %4105 = fmul float %4102, %4042
  %4106 = fsub float %4042, %4096
  %4107 = fdiv float %4105, %4106
  %4108 = select i1 %4104, float %4107, float %4077
  %4109 = fpext float %4108 to double
  %4110 = fpext float %4096 to double
  %4111 = fsub double 1.000000e+00, %4072
  %4112 = call double @llvm.fmuladd.f64(double %4110, double %4111, double %4109)
  %4113 = fpext float %4101 to double
  %4114 = fsub double 1.000000e+00, %4066
  %4115 = call double @llvm.fmuladd.f64(double %4113, double %4114, double %4112)
  %4116 = fptrunc double %4115 to float
  %4117 = fmul float %4062, %4116
  store float %4117, ptr %1043, align 4, !tbaa !79
  %4118 = load float, ptr %864, align 8, !tbaa !80
  %4119 = fpext float %4118 to double
  %4120 = fmul double %4119, 0x3EF0001000100010
  %4121 = fmul double %4120, %4066
  %4122 = fptrunc double %4121 to float
  %4123 = load float, ptr %856, align 8, !tbaa !80
  %4124 = fpext float %4123 to double
  %4125 = fmul double %4124, 0x3EF0001000100010
  %4126 = fmul double %4125, %4072
  %4127 = fptrunc double %4126 to float
  %4128 = fmul float %4042, %4127
  %4129 = call float @llvm.fmuladd.f32(float %4122, float %4046, float %4128)
  %4130 = fcmp ult float %4129, %4077
  %4131 = fmul float %4128, %4042
  %4132 = fsub float %4042, %4122
  %4133 = fdiv float %4131, %4132
  %4134 = select i1 %4130, float %4133, float %4077
  %4135 = fpext float %4134 to double
  %4136 = fpext float %4122 to double
  %4137 = fsub double 1.000000e+00, %4072
  %4138 = call double @llvm.fmuladd.f64(double %4136, double %4137, double %4135)
  %4139 = fpext float %4127 to double
  %4140 = fsub double 1.000000e+00, %4066
  %4141 = call double @llvm.fmuladd.f64(double %4139, double %4140, double %4138)
  %4142 = fptrunc double %4141 to float
  %4143 = fmul float %4062, %4142
  store float %4143, ptr %1044, align 8, !tbaa !80
  %4144 = load i32, ptr %1045, align 4, !tbaa !90
  %4145 = icmp eq i32 %4144, 12
  br i1 %4145, label %4146, label %6283

4146:                                             ; preds = %4038
  %4147 = load float, ptr %1046, align 8, !tbaa !84
  %4148 = fpext float %4147 to double
  %4149 = fmul double %4148, 0x3EF0001000100010
  %4150 = fmul double %4149, %4066
  %4151 = fptrunc double %4150 to float
  %4152 = load float, ptr %1047, align 8, !tbaa !84
  %4153 = fpext float %4152 to double
  %4154 = fmul double %4153, 0x3EF0001000100010
  %4155 = fmul double %4154, %4072
  %4156 = fptrunc double %4155 to float
  %4157 = fmul float %4042, %4156
  %4158 = call float @llvm.fmuladd.f32(float %4151, float %4046, float %4157)
  %4159 = fcmp ult float %4158, %4077
  %4160 = fmul float %4157, %4042
  %4161 = fsub float %4042, %4151
  %4162 = fdiv float %4160, %4161
  %4163 = select i1 %4159, float %4162, float %4077
  %4164 = fpext float %4163 to double
  %4165 = fpext float %4151 to double
  %4166 = fsub double 1.000000e+00, %4072
  %4167 = call double @llvm.fmuladd.f64(double %4165, double %4166, double %4164)
  %4168 = fpext float %4156 to double
  %4169 = fsub double 1.000000e+00, %4066
  %4170 = call double @llvm.fmuladd.f64(double %4168, double %4169, double %4167)
  %4171 = fptrunc double %4170 to float
  %4172 = fmul float %4062, %4171
  store float %4172, ptr %1048, align 8, !tbaa !84
  br label %6283

4173:                                             ; preds = %1758
  %4174 = load float, ptr %1029, align 4, !tbaa !81
  %4175 = fpext float %4174 to double
  %4176 = call double @llvm.fmuladd.f64(double %4175, double 0xBEF0001000100010, double 1.000000e+00)
  %4177 = fptrunc double %4176 to float
  %4178 = load float, ptr %1030, align 4, !tbaa !81
  %4179 = fpext float %4178 to double
  %4180 = call double @llvm.fmuladd.f64(double %4179, double 0xBEF0001000100010, double 1.000000e+00)
  %4181 = fptrunc double %4180 to float
  %4182 = fadd float %4177, %4181
  %4183 = fneg float %4177
  %4184 = call float @llvm.fmuladd.f32(float %4183, float %4181, float %4182)
  %4185 = fcmp olt float %4184, 0.000000e+00
  %4186 = fcmp ogt float %4184, 1.000000e+00
  %4187 = select i1 %4186, float 1.000000e+00, float %4184
  %4188 = select i1 %4185, float 0.000000e+00, float %4187
  %4189 = fpext float %4188 to double
  %4190 = fsub double 1.000000e+00, %4189
  %4191 = fmul double %4190, 6.553500e+04
  %4192 = fptrunc double %4191 to float
  store float %4192, ptr %1031, align 4, !tbaa !81
  %4193 = call double @llvm.fabs.f64(double %4189)
  %4194 = fcmp olt double %4193, 1.000000e-15
  %4195 = fdiv double 6.553500e+04, %4189
  %4196 = select i1 %4194, double 0x440C6BD8BA3ED9CB, double %4195
  %4197 = fptrunc double %4196 to float
  %4198 = load float, ptr %862, align 8, !tbaa !77
  %4199 = fpext float %4198 to double
  %4200 = fmul double %4199, 0x3EF0001000100010
  %4201 = fpext float %4177 to double
  %4202 = fmul double %4200, %4201
  %4203 = fptrunc double %4202 to float
  %4204 = load float, ptr %854, align 8, !tbaa !77
  %4205 = fpext float %4204 to double
  %4206 = fmul double %4205, 0x3EF0001000100010
  %4207 = fpext float %4181 to double
  %4208 = fmul double %4206, %4207
  %4209 = fptrunc double %4208 to float
  %4210 = fpext float %4203 to double
  %4211 = call double @llvm.fabs.f64(double %4210)
  %4212 = fcmp olt double %4211, 1.000000e-15
  br i1 %4212, label %4213, label %4224

4213:                                             ; preds = %4173
  %4214 = fsub float %4209, %4181
  %4215 = call float @llvm.fabs.f32(float %4214)
  %4216 = fpext float %4215 to double
  %4217 = fcmp olt double %4216, 1.000000e-15
  br i1 %4217, label %4218, label %4224

4218:                                             ; preds = %4213
  %4219 = fmul float %4177, %4181
  %4220 = fpext float %4219 to double
  %4221 = fpext float %4209 to double
  %4222 = fsub double 1.000000e+00, %4201
  %4223 = call double @llvm.fmuladd.f64(double %4221, double %4222, double %4220)
  br label %4246

4224:                                             ; preds = %4213, %4173
  %4225 = fcmp olt double %4210, 1.000000e-15
  br i1 %4225, label %4226, label %4230

4226:                                             ; preds = %4224
  %4227 = fpext float %4209 to double
  %4228 = fsub double 1.000000e+00, %4201
  %4229 = fmul double %4228, %4227
  br label %4246

4230:                                             ; preds = %4224
  %4231 = fmul float %4177, %4181
  %4232 = fpext float %4231 to double
  %4233 = fsub float %4181, %4209
  %4234 = fmul float %4233, %4177
  %4235 = fdiv float %4234, %4203
  %4236 = fpext float %4235 to double
  %4237 = fcmp ogt float %4235, %4181
  %4238 = select i1 %4237, double %4207, double %4236
  %4239 = fneg double %4201
  %4240 = call double @llvm.fmuladd.f64(double %4239, double %4238, double %4232)
  %4241 = fsub double 1.000000e+00, %4207
  %4242 = call double @llvm.fmuladd.f64(double %4210, double %4241, double %4240)
  %4243 = fpext float %4209 to double
  %4244 = fsub double 1.000000e+00, %4201
  %4245 = call double @llvm.fmuladd.f64(double %4243, double %4244, double %4242)
  br label %4246

4246:                                             ; preds = %4218, %4226, %4230
  %4247 = phi double [ %4223, %4218 ], [ %4229, %4226 ], [ %4245, %4230 ]
  %4248 = fptrunc double %4247 to float
  %4249 = fmul float %4197, %4248
  store float %4249, ptr %1032, align 8, !tbaa !77
  %4250 = load float, ptr %863, align 4, !tbaa !79
  %4251 = fpext float %4250 to double
  %4252 = fmul double %4251, 0x3EF0001000100010
  %4253 = fmul double %4252, %4201
  %4254 = fptrunc double %4253 to float
  %4255 = load float, ptr %855, align 4, !tbaa !79
  %4256 = fpext float %4255 to double
  %4257 = fmul double %4256, 0x3EF0001000100010
  %4258 = fmul double %4257, %4207
  %4259 = fptrunc double %4258 to float
  %4260 = fpext float %4254 to double
  %4261 = call double @llvm.fabs.f64(double %4260)
  %4262 = fcmp olt double %4261, 1.000000e-15
  br i1 %4262, label %4263, label %4274

4263:                                             ; preds = %4246
  %4264 = fsub float %4259, %4181
  %4265 = call float @llvm.fabs.f32(float %4264)
  %4266 = fpext float %4265 to double
  %4267 = fcmp olt double %4266, 1.000000e-15
  br i1 %4267, label %4268, label %4274

4268:                                             ; preds = %4263
  %4269 = fmul float %4177, %4181
  %4270 = fpext float %4269 to double
  %4271 = fpext float %4259 to double
  %4272 = fsub double 1.000000e+00, %4201
  %4273 = call double @llvm.fmuladd.f64(double %4271, double %4272, double %4270)
  br label %4296

4274:                                             ; preds = %4263, %4246
  %4275 = fcmp olt double %4260, 1.000000e-15
  br i1 %4275, label %4276, label %4280

4276:                                             ; preds = %4274
  %4277 = fpext float %4259 to double
  %4278 = fsub double 1.000000e+00, %4201
  %4279 = fmul double %4278, %4277
  br label %4296

4280:                                             ; preds = %4274
  %4281 = fmul float %4177, %4181
  %4282 = fpext float %4281 to double
  %4283 = fsub float %4181, %4259
  %4284 = fmul float %4283, %4177
  %4285 = fdiv float %4284, %4254
  %4286 = fpext float %4285 to double
  %4287 = fcmp ogt float %4285, %4181
  %4288 = select i1 %4287, double %4207, double %4286
  %4289 = fneg double %4201
  %4290 = call double @llvm.fmuladd.f64(double %4289, double %4288, double %4282)
  %4291 = fsub double 1.000000e+00, %4207
  %4292 = call double @llvm.fmuladd.f64(double %4260, double %4291, double %4290)
  %4293 = fpext float %4259 to double
  %4294 = fsub double 1.000000e+00, %4201
  %4295 = call double @llvm.fmuladd.f64(double %4293, double %4294, double %4292)
  br label %4296

4296:                                             ; preds = %4268, %4276, %4280
  %4297 = phi double [ %4273, %4268 ], [ %4279, %4276 ], [ %4295, %4280 ]
  %4298 = fptrunc double %4297 to float
  %4299 = fmul float %4197, %4298
  store float %4299, ptr %1033, align 4, !tbaa !79
  %4300 = load float, ptr %864, align 8, !tbaa !80
  %4301 = fpext float %4300 to double
  %4302 = fmul double %4301, 0x3EF0001000100010
  %4303 = fmul double %4302, %4201
  %4304 = fptrunc double %4303 to float
  %4305 = load float, ptr %856, align 8, !tbaa !80
  %4306 = fpext float %4305 to double
  %4307 = fmul double %4306, 0x3EF0001000100010
  %4308 = fmul double %4307, %4207
  %4309 = fptrunc double %4308 to float
  %4310 = fpext float %4304 to double
  %4311 = call double @llvm.fabs.f64(double %4310)
  %4312 = fcmp olt double %4311, 1.000000e-15
  br i1 %4312, label %4313, label %4324

4313:                                             ; preds = %4296
  %4314 = fsub float %4309, %4181
  %4315 = call float @llvm.fabs.f32(float %4314)
  %4316 = fpext float %4315 to double
  %4317 = fcmp olt double %4316, 1.000000e-15
  br i1 %4317, label %4318, label %4324

4318:                                             ; preds = %4313
  %4319 = fmul float %4177, %4181
  %4320 = fpext float %4319 to double
  %4321 = fpext float %4309 to double
  %4322 = fsub double 1.000000e+00, %4201
  %4323 = call double @llvm.fmuladd.f64(double %4321, double %4322, double %4320)
  br label %4346

4324:                                             ; preds = %4313, %4296
  %4325 = fcmp olt double %4310, 1.000000e-15
  br i1 %4325, label %4326, label %4330

4326:                                             ; preds = %4324
  %4327 = fpext float %4309 to double
  %4328 = fsub double 1.000000e+00, %4201
  %4329 = fmul double %4328, %4327
  br label %4346

4330:                                             ; preds = %4324
  %4331 = fmul float %4177, %4181
  %4332 = fpext float %4331 to double
  %4333 = fsub float %4181, %4309
  %4334 = fmul float %4333, %4177
  %4335 = fdiv float %4334, %4304
  %4336 = fpext float %4335 to double
  %4337 = fcmp ogt float %4335, %4181
  %4338 = select i1 %4337, double %4207, double %4336
  %4339 = fneg double %4201
  %4340 = call double @llvm.fmuladd.f64(double %4339, double %4338, double %4332)
  %4341 = fsub double 1.000000e+00, %4207
  %4342 = call double @llvm.fmuladd.f64(double %4310, double %4341, double %4340)
  %4343 = fpext float %4309 to double
  %4344 = fsub double 1.000000e+00, %4201
  %4345 = call double @llvm.fmuladd.f64(double %4343, double %4344, double %4342)
  br label %4346

4346:                                             ; preds = %4318, %4326, %4330
  %4347 = phi double [ %4323, %4318 ], [ %4329, %4326 ], [ %4345, %4330 ]
  %4348 = fptrunc double %4347 to float
  %4349 = fmul float %4197, %4348
  store float %4349, ptr %1034, align 8, !tbaa !80
  %4350 = load i32, ptr %1035, align 4, !tbaa !90
  %4351 = icmp eq i32 %4350, 12
  br i1 %4351, label %4352, label %6283

4352:                                             ; preds = %4346
  %4353 = load float, ptr %1036, align 8, !tbaa !84
  %4354 = fpext float %4353 to double
  %4355 = fmul double %4354, 0x3EF0001000100010
  %4356 = fmul double %4355, %4201
  %4357 = fptrunc double %4356 to float
  %4358 = load float, ptr %1037, align 8, !tbaa !84
  %4359 = fpext float %4358 to double
  %4360 = fmul double %4359, 0x3EF0001000100010
  %4361 = fmul double %4360, %4207
  %4362 = fptrunc double %4361 to float
  %4363 = fpext float %4357 to double
  %4364 = call double @llvm.fabs.f64(double %4363)
  %4365 = fcmp olt double %4364, 1.000000e-15
  br i1 %4365, label %4366, label %4377

4366:                                             ; preds = %4352
  %4367 = fsub float %4362, %4181
  %4368 = call float @llvm.fabs.f32(float %4367)
  %4369 = fpext float %4368 to double
  %4370 = fcmp olt double %4369, 1.000000e-15
  br i1 %4370, label %4371, label %4377

4371:                                             ; preds = %4366
  %4372 = fmul float %4177, %4181
  %4373 = fpext float %4372 to double
  %4374 = fpext float %4362 to double
  %4375 = fsub double 1.000000e+00, %4201
  %4376 = call double @llvm.fmuladd.f64(double %4374, double %4375, double %4373)
  br label %4399

4377:                                             ; preds = %4366, %4352
  %4378 = fcmp olt double %4363, 1.000000e-15
  br i1 %4378, label %4379, label %4383

4379:                                             ; preds = %4377
  %4380 = fpext float %4362 to double
  %4381 = fsub double 1.000000e+00, %4201
  %4382 = fmul double %4381, %4380
  br label %4399

4383:                                             ; preds = %4377
  %4384 = fmul float %4177, %4181
  %4385 = fpext float %4384 to double
  %4386 = fsub float %4181, %4362
  %4387 = fmul float %4386, %4177
  %4388 = fdiv float %4387, %4357
  %4389 = fpext float %4388 to double
  %4390 = fcmp ogt float %4388, %4181
  %4391 = select i1 %4390, double %4207, double %4389
  %4392 = fneg double %4201
  %4393 = call double @llvm.fmuladd.f64(double %4392, double %4391, double %4385)
  %4394 = fsub double 1.000000e+00, %4207
  %4395 = call double @llvm.fmuladd.f64(double %4363, double %4394, double %4393)
  %4396 = fpext float %4362 to double
  %4397 = fsub double 1.000000e+00, %4201
  %4398 = call double @llvm.fmuladd.f64(double %4396, double %4397, double %4395)
  br label %4399

4399:                                             ; preds = %4371, %4379, %4383
  %4400 = phi double [ %4376, %4371 ], [ %4382, %4379 ], [ %4398, %4383 ]
  %4401 = fptrunc double %4400 to float
  %4402 = fmul float %4197, %4401
  store float %4402, ptr %1038, align 8, !tbaa !84
  br label %6283

4403:                                             ; preds = %1758
  %4404 = load float, ptr %1019, align 4, !tbaa !81
  %4405 = fpext float %4404 to double
  %4406 = call double @llvm.fmuladd.f64(double %4405, double 0xBEF0001000100010, double 1.000000e+00)
  %4407 = fptrunc double %4406 to float
  %4408 = load float, ptr %1020, align 4, !tbaa !81
  %4409 = fpext float %4408 to double
  %4410 = call double @llvm.fmuladd.f64(double %4409, double 0xBEF0001000100010, double 1.000000e+00)
  %4411 = fptrunc double %4410 to float
  %4412 = fadd float %4407, %4411
  %4413 = fneg float %4407
  %4414 = call float @llvm.fmuladd.f32(float %4413, float %4411, float %4412)
  %4415 = fcmp olt float %4414, 0.000000e+00
  %4416 = fcmp ogt float %4414, 1.000000e+00
  %4417 = select i1 %4416, float 1.000000e+00, float %4414
  %4418 = select i1 %4415, float 0.000000e+00, float %4417
  %4419 = fpext float %4418 to double
  %4420 = fsub double 1.000000e+00, %4419
  %4421 = fmul double %4420, 6.553500e+04
  %4422 = fptrunc double %4421 to float
  store float %4422, ptr %1021, align 4, !tbaa !81
  %4423 = fcmp olt float %4418, 0.000000e+00
  %4424 = select i1 %4423, double -1.000000e+00, double 1.000000e+00
  %4425 = fmul double %4424, %4419
  %4426 = fcmp ult double %4425, 1.000000e-15
  %4427 = fdiv double 1.000000e+00, %4419
  %4428 = fdiv double %4424, 1.000000e-15
  %4429 = select i1 %4426, double %4428, double %4427
  %4430 = load float, ptr %862, align 8, !tbaa !77
  %4431 = load float, ptr %854, align 8, !tbaa !77
  %4432 = fmul float %4431, %4411
  %4433 = call float @llvm.fmuladd.f32(float %4430, float %4407, float %4432)
  %4434 = fpext float %4433 to double
  %4435 = fmul double %4429, %4434
  %4436 = fptrunc double %4435 to float
  store float %4436, ptr %1022, align 8, !tbaa !77
  %4437 = load float, ptr %863, align 4, !tbaa !79
  %4438 = load float, ptr %855, align 4, !tbaa !79
  %4439 = fmul float %4438, %4411
  %4440 = call float @llvm.fmuladd.f32(float %4437, float %4407, float %4439)
  %4441 = fpext float %4440 to double
  %4442 = fmul double %4429, %4441
  %4443 = fptrunc double %4442 to float
  store float %4443, ptr %1023, align 4, !tbaa !79
  %4444 = load float, ptr %864, align 8, !tbaa !80
  %4445 = load float, ptr %856, align 8, !tbaa !80
  %4446 = fmul float %4445, %4411
  %4447 = call float @llvm.fmuladd.f32(float %4444, float %4407, float %4446)
  %4448 = fpext float %4447 to double
  %4449 = fmul double %4429, %4448
  %4450 = fptrunc double %4449 to float
  store float %4450, ptr %1024, align 8, !tbaa !80
  %4451 = load i32, ptr %1025, align 4, !tbaa !90
  %4452 = icmp eq i32 %4451, 12
  br i1 %4452, label %4453, label %6283

4453:                                             ; preds = %4403
  %4454 = load float, ptr %1026, align 8, !tbaa !84
  %4455 = load float, ptr %1027, align 8, !tbaa !84
  %4456 = fmul float %4455, %4411
  %4457 = call float @llvm.fmuladd.f32(float %4454, float %4407, float %4456)
  %4458 = fpext float %4457 to double
  %4459 = fmul double %4429, %4458
  %4460 = fptrunc double %4459 to float
  store float %4460, ptr %1028, align 8, !tbaa !84
  br label %6283

4461:                                             ; preds = %1758
  %4462 = load float, ptr %1009, align 4, !tbaa !81
  %4463 = fpext float %4462 to double
  %4464 = call double @llvm.fmuladd.f64(double %4463, double 0xBEF0001000100010, double 1.000000e+00)
  %4465 = fptrunc double %4464 to float
  %4466 = load float, ptr %1010, align 4, !tbaa !81
  %4467 = fpext float %4466 to double
  %4468 = call double @llvm.fmuladd.f64(double %4467, double 0xBEF0001000100010, double 1.000000e+00)
  %4469 = fptrunc double %4468 to float
  %4470 = fadd float %4465, %4469
  %4471 = fneg float %4465
  %4472 = call float @llvm.fmuladd.f32(float %4471, float %4469, float %4470)
  %4473 = fcmp olt float %4472, 0.000000e+00
  %4474 = fcmp ogt float %4472, 1.000000e+00
  %4475 = select i1 %4474, float 1.000000e+00, float %4472
  %4476 = select i1 %4473, float 0.000000e+00, float %4475
  %4477 = fpext float %4476 to double
  %4478 = fsub double 1.000000e+00, %4477
  %4479 = fmul double %4478, 6.553500e+04
  %4480 = fptrunc double %4479 to float
  store float %4480, ptr %1011, align 4, !tbaa !81
  %4481 = call double @llvm.fabs.f64(double %4477)
  %4482 = fcmp olt double %4481, 1.000000e-15
  %4483 = fdiv double 6.553500e+04, %4477
  %4484 = select i1 %4482, double 0x440C6BD8BA3ED9CB, double %4483
  %4485 = fptrunc double %4484 to float
  %4486 = load float, ptr %862, align 8, !tbaa !77
  %4487 = fpext float %4486 to double
  %4488 = fmul double %4487, 0x3EF0001000100010
  %4489 = fpext float %4465 to double
  %4490 = fmul double %4488, %4489
  %4491 = fptrunc double %4490 to float
  %4492 = load float, ptr %854, align 8, !tbaa !77
  %4493 = fpext float %4492 to double
  %4494 = fmul double %4493, 0x3EF0001000100010
  %4495 = fpext float %4469 to double
  %4496 = fmul double %4494, %4495
  %4497 = fptrunc double %4496 to float
  %4498 = fadd float %4491, %4497
  %4499 = call float @llvm.fmuladd.f32(float %4471, float %4469, float %4498)
  %4500 = fmul float %4499, %4485
  store float %4500, ptr %1012, align 8, !tbaa !77
  %4501 = load float, ptr %863, align 4, !tbaa !79
  %4502 = fpext float %4501 to double
  %4503 = fmul double %4502, 0x3EF0001000100010
  %4504 = fmul double %4503, %4489
  %4505 = fptrunc double %4504 to float
  %4506 = load float, ptr %855, align 4, !tbaa !79
  %4507 = fpext float %4506 to double
  %4508 = fmul double %4507, 0x3EF0001000100010
  %4509 = fmul double %4508, %4495
  %4510 = fptrunc double %4509 to float
  %4511 = fadd float %4505, %4510
  %4512 = call float @llvm.fmuladd.f32(float %4471, float %4469, float %4511)
  %4513 = fmul float %4512, %4485
  store float %4513, ptr %1013, align 4, !tbaa !79
  %4514 = load float, ptr %864, align 8, !tbaa !80
  %4515 = fpext float %4514 to double
  %4516 = fmul double %4515, 0x3EF0001000100010
  %4517 = fmul double %4516, %4489
  %4518 = fptrunc double %4517 to float
  %4519 = load float, ptr %856, align 8, !tbaa !80
  %4520 = fpext float %4519 to double
  %4521 = fmul double %4520, 0x3EF0001000100010
  %4522 = fmul double %4521, %4495
  %4523 = fptrunc double %4522 to float
  %4524 = fadd float %4518, %4523
  %4525 = call float @llvm.fmuladd.f32(float %4471, float %4469, float %4524)
  %4526 = fmul float %4525, %4485
  store float %4526, ptr %1014, align 8, !tbaa !80
  %4527 = load i32, ptr %1015, align 4, !tbaa !90
  %4528 = icmp eq i32 %4527, 12
  br i1 %4528, label %4529, label %6283

4529:                                             ; preds = %4461
  %4530 = load float, ptr %1016, align 8, !tbaa !84
  %4531 = fpext float %4530 to double
  %4532 = fmul double %4531, 0x3EF0001000100010
  %4533 = fmul double %4532, %4489
  %4534 = fptrunc double %4533 to float
  %4535 = load float, ptr %1017, align 8, !tbaa !84
  %4536 = fpext float %4535 to double
  %4537 = fmul double %4536, 0x3EF0001000100010
  %4538 = fmul double %4537, %4495
  %4539 = fptrunc double %4538 to float
  %4540 = fadd float %4534, %4539
  %4541 = call float @llvm.fmuladd.f32(float %4471, float %4469, float %4540)
  %4542 = fmul float %4541, %4485
  store float %4542, ptr %1018, align 8, !tbaa !84
  br label %6283

4543:                                             ; preds = %1758
  call fastcc void @CompositeHardLight(ptr noundef nonnull %15, ptr noundef nonnull %14, ptr noundef nonnull %13)
  br label %6283

4544:                                             ; preds = %1758
  call fastcc void @CompositeHardLight(ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %13)
  br label %6283

4545:                                             ; preds = %1758
  %4546 = load float, ptr %999, align 4, !tbaa !81
  %4547 = fpext float %4546 to double
  %4548 = call double @llvm.fmuladd.f64(double %4547, double 0xBEF0001000100010, double 1.000000e+00)
  %4549 = fptrunc double %4548 to float
  %4550 = load float, ptr %1000, align 4, !tbaa !81
  %4551 = fpext float %4550 to double
  %4552 = call double @llvm.fmuladd.f64(double %4551, double 0xBEF0001000100010, double 1.000000e+00)
  %4553 = fptrunc double %4552 to float
  %4554 = fadd float %4549, %4553
  %4555 = fneg float %4549
  %4556 = call float @llvm.fmuladd.f32(float %4555, float %4553, float %4554)
  %4557 = fcmp olt float %4556, 0.000000e+00
  %4558 = fcmp ogt float %4556, 1.000000e+00
  %4559 = select i1 %4558, float 1.000000e+00, float %4556
  %4560 = select i1 %4557, float 0.000000e+00, float %4559
  %4561 = fpext float %4560 to double
  %4562 = fsub double 1.000000e+00, %4561
  %4563 = fmul double %4562, 6.553500e+04
  %4564 = fptrunc double %4563 to float
  store float %4564, ptr %1001, align 4, !tbaa !81
  %4565 = call double @llvm.fabs.f64(double %4561)
  %4566 = fcmp olt double %4565, 1.000000e-15
  %4567 = fdiv double 6.553500e+04, %4561
  %4568 = select i1 %4566, double 0x440C6BD8BA3ED9CB, double %4567
  %4569 = fptrunc double %4568 to float
  %4570 = load float, ptr %862, align 8, !tbaa !77
  %4571 = fpext float %4570 to double
  %4572 = fmul double %4571, 0x3EF0001000100010
  %4573 = fpext float %4549 to double
  %4574 = fmul double %4572, %4573
  %4575 = fptrunc double %4574 to float
  %4576 = load float, ptr %854, align 8, !tbaa !77
  %4577 = fpext float %4576 to double
  %4578 = fmul double %4577, 0x3EF0001000100010
  %4579 = fpext float %4553 to double
  %4580 = fmul double %4578, %4579
  %4581 = fptrunc double %4580 to float
  %4582 = call fastcc float @SoftLight(float noundef %4575, float noundef %4549, float noundef %4581, float noundef %4553)
  %4583 = fmul float %4582, %4569
  store float %4583, ptr %1002, align 8, !tbaa !77
  %4584 = load float, ptr %863, align 4, !tbaa !79
  %4585 = fpext float %4584 to double
  %4586 = fmul double %4585, 0x3EF0001000100010
  %4587 = fmul double %4586, %4573
  %4588 = fptrunc double %4587 to float
  %4589 = load float, ptr %855, align 4, !tbaa !79
  %4590 = fpext float %4589 to double
  %4591 = fmul double %4590, 0x3EF0001000100010
  %4592 = fmul double %4591, %4579
  %4593 = fptrunc double %4592 to float
  %4594 = call fastcc float @SoftLight(float noundef %4588, float noundef %4549, float noundef %4593, float noundef %4553)
  %4595 = fmul float %4594, %4569
  store float %4595, ptr %1003, align 4, !tbaa !79
  %4596 = load float, ptr %864, align 8, !tbaa !80
  %4597 = fpext float %4596 to double
  %4598 = fmul double %4597, 0x3EF0001000100010
  %4599 = fmul double %4598, %4573
  %4600 = fptrunc double %4599 to float
  %4601 = load float, ptr %856, align 8, !tbaa !80
  %4602 = fpext float %4601 to double
  %4603 = fmul double %4602, 0x3EF0001000100010
  %4604 = fmul double %4603, %4579
  %4605 = fptrunc double %4604 to float
  %4606 = call fastcc float @SoftLight(float noundef %4600, float noundef %4549, float noundef %4605, float noundef %4553)
  %4607 = fmul float %4606, %4569
  store float %4607, ptr %1004, align 8, !tbaa !80
  %4608 = load i32, ptr %1005, align 4, !tbaa !90
  %4609 = icmp eq i32 %4608, 12
  br i1 %4609, label %4610, label %6283

4610:                                             ; preds = %4545
  %4611 = load float, ptr %1006, align 8, !tbaa !84
  %4612 = fpext float %4611 to double
  %4613 = fmul double %4612, 0x3EF0001000100010
  %4614 = fmul double %4613, %4573
  %4615 = fptrunc double %4614 to float
  %4616 = load float, ptr %1007, align 8, !tbaa !84
  %4617 = fpext float %4616 to double
  %4618 = fmul double %4617, 0x3EF0001000100010
  %4619 = fmul double %4618, %4579
  %4620 = fptrunc double %4619 to float
  %4621 = call fastcc float @SoftLight(float noundef %4615, float noundef %4549, float noundef %4620, float noundef %4553)
  %4622 = fmul float %4621, %4569
  store float %4622, ptr %1008, align 8, !tbaa !84
  br label %6283

4623:                                             ; preds = %1758
  %4624 = load float, ptr %989, align 4, !tbaa !81
  %4625 = fpext float %4624 to double
  %4626 = call double @llvm.fmuladd.f64(double %4625, double 0xBEF0001000100010, double 1.000000e+00)
  %4627 = fptrunc double %4626 to float
  %4628 = load float, ptr %990, align 4, !tbaa !81
  %4629 = fpext float %4628 to double
  %4630 = call double @llvm.fmuladd.f64(double %4629, double 0xBEF0001000100010, double 1.000000e+00)
  %4631 = fptrunc double %4630 to float
  %4632 = fadd float %4627, %4631
  %4633 = fneg float %4627
  %4634 = call float @llvm.fmuladd.f32(float %4633, float %4631, float %4632)
  %4635 = fcmp olt float %4634, 0.000000e+00
  %4636 = fcmp ogt float %4634, 1.000000e+00
  %4637 = select i1 %4636, float 1.000000e+00, float %4634
  %4638 = select i1 %4635, float 0.000000e+00, float %4637
  %4639 = fpext float %4638 to double
  %4640 = fsub double 1.000000e+00, %4639
  %4641 = fmul double %4640, 6.553500e+04
  %4642 = fptrunc double %4641 to float
  store float %4642, ptr %991, align 4, !tbaa !81
  %4643 = call double @llvm.fabs.f64(double %4639)
  %4644 = fcmp olt double %4643, 1.000000e-15
  %4645 = fdiv double 6.553500e+04, %4639
  %4646 = select i1 %4644, double 0x440C6BD8BA3ED9CB, double %4645
  %4647 = fptrunc double %4646 to float
  %4648 = load float, ptr %862, align 8, !tbaa !77
  %4649 = fpext float %4648 to double
  %4650 = fmul double %4649, 0x3EF0001000100010
  %4651 = fpext float %4627 to double
  %4652 = fmul double %4650, %4651
  %4653 = fptrunc double %4652 to float
  %4654 = load float, ptr %854, align 8, !tbaa !77
  %4655 = fpext float %4654 to double
  %4656 = fmul double %4655, 0x3EF0001000100010
  %4657 = fpext float %4631 to double
  %4658 = fmul double %4656, %4657
  %4659 = fptrunc double %4658 to float
  %4660 = fsub float %4653, %4627
  %4661 = call float @llvm.fmuladd.f32(float %4660, float %4631, float %4653)
  %4662 = fadd float %4661, %4659
  %4663 = fmul float %4662, %4647
  store float %4663, ptr %992, align 8, !tbaa !77
  %4664 = load float, ptr %863, align 4, !tbaa !79
  %4665 = fpext float %4664 to double
  %4666 = fmul double %4665, 0x3EF0001000100010
  %4667 = fmul double %4666, %4651
  %4668 = fptrunc double %4667 to float
  %4669 = load float, ptr %855, align 4, !tbaa !79
  %4670 = fpext float %4669 to double
  %4671 = fmul double %4670, 0x3EF0001000100010
  %4672 = fmul double %4671, %4657
  %4673 = fptrunc double %4672 to float
  %4674 = fsub float %4668, %4627
  %4675 = call float @llvm.fmuladd.f32(float %4674, float %4631, float %4668)
  %4676 = fadd float %4675, %4673
  %4677 = fmul float %4676, %4647
  store float %4677, ptr %993, align 4, !tbaa !79
  %4678 = load float, ptr %864, align 8, !tbaa !80
  %4679 = fpext float %4678 to double
  %4680 = fmul double %4679, 0x3EF0001000100010
  %4681 = fmul double %4680, %4651
  %4682 = fptrunc double %4681 to float
  %4683 = load float, ptr %856, align 8, !tbaa !80
  %4684 = fpext float %4683 to double
  %4685 = fmul double %4684, 0x3EF0001000100010
  %4686 = fmul double %4685, %4657
  %4687 = fptrunc double %4686 to float
  %4688 = fsub float %4682, %4627
  %4689 = call float @llvm.fmuladd.f32(float %4688, float %4631, float %4682)
  %4690 = fadd float %4689, %4687
  %4691 = fmul float %4690, %4647
  store float %4691, ptr %994, align 8, !tbaa !80
  %4692 = load i32, ptr %995, align 4, !tbaa !90
  %4693 = icmp eq i32 %4692, 12
  br i1 %4693, label %4694, label %6283

4694:                                             ; preds = %4623
  %4695 = load float, ptr %996, align 8, !tbaa !84
  %4696 = fpext float %4695 to double
  %4697 = fmul double %4696, 0x3EF0001000100010
  %4698 = fmul double %4697, %4651
  %4699 = fptrunc double %4698 to float
  %4700 = load float, ptr %997, align 8, !tbaa !84
  %4701 = fpext float %4700 to double
  %4702 = fmul double %4701, 0x3EF0001000100010
  %4703 = fmul double %4702, %4657
  %4704 = fptrunc double %4703 to float
  %4705 = fsub float %4699, %4627
  %4706 = call float @llvm.fmuladd.f32(float %4705, float %4631, float %4699)
  %4707 = fadd float %4706, %4704
  %4708 = fmul float %4707, %4647
  store float %4708, ptr %998, align 8, !tbaa !84
  br label %6283

4709:                                             ; preds = %1758
  %4710 = load float, ptr %979, align 4, !tbaa !81
  %4711 = fpext float %4710 to double
  %4712 = call double @llvm.fmuladd.f64(double %4711, double 0xBEF0001000100010, double 1.000000e+00)
  %4713 = fptrunc double %4712 to float
  %4714 = load float, ptr %980, align 4, !tbaa !81
  %4715 = fpext float %4714 to double
  %4716 = call double @llvm.fmuladd.f64(double %4715, double 0xBEF0001000100010, double 1.000000e+00)
  %4717 = fptrunc double %4716 to float
  %4718 = fadd float %4713, %4717
  %4719 = fneg float %4713
  %4720 = call float @llvm.fmuladd.f32(float %4719, float %4717, float %4718)
  %4721 = fcmp olt float %4720, 0.000000e+00
  %4722 = fcmp ogt float %4720, 1.000000e+00
  %4723 = select i1 %4722, float 1.000000e+00, float %4720
  %4724 = select i1 %4721, float 0.000000e+00, float %4723
  %4725 = fpext float %4724 to double
  %4726 = fsub double 1.000000e+00, %4725
  %4727 = fmul double %4726, 6.553500e+04
  %4728 = fptrunc double %4727 to float
  store float %4728, ptr %981, align 4, !tbaa !81
  %4729 = call double @llvm.fabs.f64(double %4725)
  %4730 = fcmp olt double %4729, 1.000000e-15
  %4731 = fdiv double 6.553500e+04, %4725
  %4732 = select i1 %4730, double 0x440C6BD8BA3ED9CB, double %4731
  %4733 = fptrunc double %4732 to float
  %4734 = load float, ptr %862, align 8, !tbaa !77
  %4735 = fpext float %4734 to double
  %4736 = fmul double %4735, 0x3EF0001000100010
  %4737 = fpext float %4713 to double
  %4738 = fmul double %4736, %4737
  %4739 = fptrunc double %4738 to float
  %4740 = fpext float %4717 to double
  %4741 = call double @llvm.fabs.f64(double %4740)
  %4742 = fcmp olt double %4741, 1.000000e-15
  br i1 %4742, label %4762, label %4743

4743:                                             ; preds = %4709
  %4744 = load float, ptr %854, align 8, !tbaa !77
  %4745 = fpext float %4744 to double
  %4746 = fmul double %4745, 0x3EF0001000100010
  %4747 = fmul double %4746, %4740
  %4748 = fptrunc double %4747 to float
  %4749 = fmul float %4748, %4748
  %4750 = fpext float %4749 to double
  %4751 = fpext float %4739 to double
  %4752 = call double @llvm.fmuladd.f64(double %4751, double -2.000000e+00, double %4737)
  %4753 = fmul double %4752, %4750
  %4754 = fdiv double %4753, %4740
  %4755 = fpext float %4748 to double
  %4756 = call double @llvm.fmuladd.f64(double %4755, double 2.000000e+00, double 1.000000e+00)
  %4757 = fsub double %4756, %4740
  %4758 = call double @llvm.fmuladd.f64(double %4751, double %4757, double %4754)
  %4759 = fsub double 1.000000e+00, %4737
  %4760 = call double @llvm.fmuladd.f64(double %4755, double %4759, double %4758)
  %4761 = fptrunc double %4760 to float
  br label %4762

4762:                                             ; preds = %4743, %4709
  %4763 = phi float [ %4761, %4743 ], [ %4739, %4709 ]
  %4764 = fmul float %4763, %4733
  store float %4764, ptr %982, align 8, !tbaa !77
  %4765 = load float, ptr %863, align 4, !tbaa !79
  %4766 = fpext float %4765 to double
  %4767 = fmul double %4766, 0x3EF0001000100010
  %4768 = fmul double %4767, %4737
  %4769 = fptrunc double %4768 to float
  br i1 %4742, label %4789, label %4770

4770:                                             ; preds = %4762
  %4771 = load float, ptr %855, align 4, !tbaa !79
  %4772 = fpext float %4771 to double
  %4773 = fmul double %4772, 0x3EF0001000100010
  %4774 = fmul double %4773, %4740
  %4775 = fptrunc double %4774 to float
  %4776 = fmul float %4775, %4775
  %4777 = fpext float %4776 to double
  %4778 = fpext float %4769 to double
  %4779 = call double @llvm.fmuladd.f64(double %4778, double -2.000000e+00, double %4737)
  %4780 = fmul double %4779, %4777
  %4781 = fdiv double %4780, %4740
  %4782 = fpext float %4775 to double
  %4783 = call double @llvm.fmuladd.f64(double %4782, double 2.000000e+00, double 1.000000e+00)
  %4784 = fsub double %4783, %4740
  %4785 = call double @llvm.fmuladd.f64(double %4778, double %4784, double %4781)
  %4786 = fsub double 1.000000e+00, %4737
  %4787 = call double @llvm.fmuladd.f64(double %4782, double %4786, double %4785)
  %4788 = fptrunc double %4787 to float
  br label %4789

4789:                                             ; preds = %4770, %4762
  %4790 = phi float [ %4788, %4770 ], [ %4769, %4762 ]
  %4791 = fmul float %4790, %4733
  store float %4791, ptr %983, align 4, !tbaa !79
  %4792 = load float, ptr %864, align 8, !tbaa !80
  %4793 = fpext float %4792 to double
  %4794 = fmul double %4793, 0x3EF0001000100010
  %4795 = fmul double %4794, %4737
  %4796 = fptrunc double %4795 to float
  br i1 %4742, label %4816, label %4797

4797:                                             ; preds = %4789
  %4798 = load float, ptr %856, align 8, !tbaa !80
  %4799 = fpext float %4798 to double
  %4800 = fmul double %4799, 0x3EF0001000100010
  %4801 = fmul double %4800, %4740
  %4802 = fptrunc double %4801 to float
  %4803 = fmul float %4802, %4802
  %4804 = fpext float %4803 to double
  %4805 = fpext float %4796 to double
  %4806 = call double @llvm.fmuladd.f64(double %4805, double -2.000000e+00, double %4737)
  %4807 = fmul double %4806, %4804
  %4808 = fdiv double %4807, %4740
  %4809 = fpext float %4802 to double
  %4810 = call double @llvm.fmuladd.f64(double %4809, double 2.000000e+00, double 1.000000e+00)
  %4811 = fsub double %4810, %4740
  %4812 = call double @llvm.fmuladd.f64(double %4805, double %4811, double %4808)
  %4813 = fsub double 1.000000e+00, %4737
  %4814 = call double @llvm.fmuladd.f64(double %4809, double %4813, double %4812)
  %4815 = fptrunc double %4814 to float
  br label %4816

4816:                                             ; preds = %4797, %4789
  %4817 = phi float [ %4815, %4797 ], [ %4796, %4789 ]
  %4818 = fmul float %4817, %4733
  store float %4818, ptr %984, align 8, !tbaa !80
  %4819 = load i32, ptr %985, align 4, !tbaa !90
  %4820 = icmp eq i32 %4819, 12
  br i1 %4820, label %4821, label %6283

4821:                                             ; preds = %4816
  %4822 = load float, ptr %986, align 8, !tbaa !84
  %4823 = fpext float %4822 to double
  %4824 = fmul double %4823, 0x3EF0001000100010
  %4825 = fmul double %4824, %4737
  %4826 = fptrunc double %4825 to float
  br i1 %4742, label %4846, label %4827

4827:                                             ; preds = %4821
  %4828 = load float, ptr %987, align 8, !tbaa !84
  %4829 = fpext float %4828 to double
  %4830 = fmul double %4829, 0x3EF0001000100010
  %4831 = fmul double %4830, %4740
  %4832 = fptrunc double %4831 to float
  %4833 = fmul float %4832, %4832
  %4834 = fpext float %4833 to double
  %4835 = fpext float %4826 to double
  %4836 = call double @llvm.fmuladd.f64(double %4835, double -2.000000e+00, double %4737)
  %4837 = fmul double %4836, %4834
  %4838 = fdiv double %4837, %4740
  %4839 = fpext float %4832 to double
  %4840 = call double @llvm.fmuladd.f64(double %4839, double 2.000000e+00, double 1.000000e+00)
  %4841 = fsub double %4840, %4740
  %4842 = call double @llvm.fmuladd.f64(double %4835, double %4841, double %4838)
  %4843 = fsub double 1.000000e+00, %4737
  %4844 = call double @llvm.fmuladd.f64(double %4839, double %4843, double %4842)
  %4845 = fptrunc double %4844 to float
  br label %4846

4846:                                             ; preds = %4827, %4821
  %4847 = phi float [ %4845, %4827 ], [ %4826, %4821 ]
  %4848 = fmul float %4847, %4733
  store float %4848, ptr %988, align 8, !tbaa !84
  br label %6283

4849:                                             ; preds = %1758
  %4850 = load float, ptr %969, align 4, !tbaa !81
  %4851 = fpext float %4850 to double
  %4852 = call double @llvm.fmuladd.f64(double %4851, double 0xBEF0001000100010, double 1.000000e+00)
  %4853 = fptrunc double %4852 to float
  %4854 = load float, ptr %970, align 4, !tbaa !81
  %4855 = fpext float %4854 to double
  %4856 = call double @llvm.fmuladd.f64(double %4855, double 0xBEF0001000100010, double 1.000000e+00)
  %4857 = fptrunc double %4856 to float
  %4858 = fadd float %4853, %4857
  %4859 = fneg float %4853
  %4860 = call float @llvm.fmuladd.f32(float %4859, float %4857, float %4858)
  %4861 = fcmp olt float %4860, 0.000000e+00
  %4862 = fcmp ogt float %4860, 1.000000e+00
  %4863 = select i1 %4862, float 1.000000e+00, float %4860
  %4864 = select i1 %4861, float 0.000000e+00, float %4863
  %4865 = fpext float %4864 to double
  %4866 = fsub double 1.000000e+00, %4865
  %4867 = fmul double %4866, 6.553500e+04
  %4868 = fptrunc double %4867 to float
  store float %4868, ptr %971, align 4, !tbaa !81
  %4869 = call double @llvm.fabs.f64(double %4865)
  %4870 = fcmp olt double %4869, 1.000000e-15
  %4871 = fdiv double 6.553500e+04, %4865
  %4872 = select i1 %4870, double 0x440C6BD8BA3ED9CB, double %4871
  %4873 = fptrunc double %4872 to float
  %4874 = load float, ptr %862, align 8, !tbaa !77
  %4875 = fpext float %4874 to double
  %4876 = fmul double %4875, 0x3EF0001000100010
  %4877 = fpext float %4853 to double
  %4878 = fmul double %4876, %4877
  %4879 = fptrunc double %4878 to float
  %4880 = load float, ptr %854, align 8, !tbaa !77
  %4881 = fpext float %4880 to double
  %4882 = fmul double %4881, 0x3EF0001000100010
  %4883 = fpext float %4857 to double
  %4884 = fmul double %4882, %4883
  %4885 = fptrunc double %4884 to float
  %4886 = call double @llvm.fabs.f64(double %4877)
  %4887 = fcmp olt double %4886, 1.000000e-15
  br i1 %4887, label %4893, label %4888

4888:                                             ; preds = %4849
  %4889 = fsub float %4879, %4853
  %4890 = call float @llvm.fabs.f32(float %4889)
  %4891 = fpext float %4890 to double
  %4892 = fcmp olt double %4891, 1.000000e-15
  br i1 %4892, label %4893, label %4902

4893:                                             ; preds = %4888, %4849
  %4894 = fmul float %4853, %4857
  %4895 = fpext float %4894 to double
  %4896 = fpext float %4879 to double
  %4897 = fsub double 1.000000e+00, %4883
  %4898 = call double @llvm.fmuladd.f64(double %4896, double %4897, double %4895)
  %4899 = fpext float %4885 to double
  %4900 = fsub double 1.000000e+00, %4877
  %4901 = call double @llvm.fmuladd.f64(double %4899, double %4900, double %4898)
  br label %4931

4902:                                             ; preds = %4888
  %4903 = fmul float %4879, 2.000000e+00
  %4904 = fcmp ugt float %4903, %4853
  %4905 = fpext float %4885 to double
  %4906 = fsub double 1.000000e+00, %4877
  br i1 %4904, label %4919, label %4907

4907:                                             ; preds = %4902
  %4908 = fsub float %4885, %4857
  %4909 = fmul float %4908, %4853
  %4910 = fpext float %4909 to double
  %4911 = fpext float %4879 to double
  %4912 = fmul double %4911, 2.000000e+00
  %4913 = fdiv double %4910, %4912
  %4914 = fadd double %4913, %4883
  %4915 = fsub double 1.000000e+00, %4883
  %4916 = fmul double %4915, %4911
  %4917 = call double @llvm.fmuladd.f64(double %4877, double %4914, double %4916)
  %4918 = call double @llvm.fmuladd.f64(double %4905, double %4906, double %4917)
  br label %4931

4919:                                             ; preds = %4902
  %4920 = fmul float %4853, %4885
  %4921 = fmul float %4920, %4853
  %4922 = fpext float %4921 to double
  %4923 = fsub float %4853, %4879
  %4924 = fpext float %4923 to double
  %4925 = fmul double %4924, 2.000000e+00
  %4926 = fdiv double %4922, %4925
  %4927 = fpext float %4879 to double
  %4928 = fsub double 1.000000e+00, %4883
  %4929 = call double @llvm.fmuladd.f64(double %4927, double %4928, double %4926)
  %4930 = call double @llvm.fmuladd.f64(double %4905, double %4906, double %4929)
  br label %4931

4931:                                             ; preds = %4893, %4907, %4919
  %4932 = phi double [ %4901, %4893 ], [ %4918, %4907 ], [ %4930, %4919 ]
  %4933 = fptrunc double %4932 to float
  %4934 = fmul float %4873, %4933
  store float %4934, ptr %972, align 8, !tbaa !77
  %4935 = load float, ptr %863, align 4, !tbaa !79
  %4936 = fpext float %4935 to double
  %4937 = fmul double %4936, 0x3EF0001000100010
  %4938 = fmul double %4937, %4877
  %4939 = fptrunc double %4938 to float
  %4940 = load float, ptr %855, align 4, !tbaa !79
  %4941 = fpext float %4940 to double
  %4942 = fmul double %4941, 0x3EF0001000100010
  %4943 = fmul double %4942, %4883
  %4944 = fptrunc double %4943 to float
  br i1 %4887, label %4950, label %4945

4945:                                             ; preds = %4931
  %4946 = fsub float %4939, %4853
  %4947 = call float @llvm.fabs.f32(float %4946)
  %4948 = fpext float %4947 to double
  %4949 = fcmp olt double %4948, 1.000000e-15
  br i1 %4949, label %4950, label %4959

4950:                                             ; preds = %4945, %4931
  %4951 = fmul float %4853, %4857
  %4952 = fpext float %4951 to double
  %4953 = fpext float %4939 to double
  %4954 = fsub double 1.000000e+00, %4883
  %4955 = call double @llvm.fmuladd.f64(double %4953, double %4954, double %4952)
  %4956 = fpext float %4944 to double
  %4957 = fsub double 1.000000e+00, %4877
  %4958 = call double @llvm.fmuladd.f64(double %4956, double %4957, double %4955)
  br label %4988

4959:                                             ; preds = %4945
  %4960 = fmul float %4939, 2.000000e+00
  %4961 = fcmp ugt float %4960, %4853
  %4962 = fpext float %4944 to double
  %4963 = fsub double 1.000000e+00, %4877
  br i1 %4961, label %4976, label %4964

4964:                                             ; preds = %4959
  %4965 = fsub float %4944, %4857
  %4966 = fmul float %4965, %4853
  %4967 = fpext float %4966 to double
  %4968 = fpext float %4939 to double
  %4969 = fmul double %4968, 2.000000e+00
  %4970 = fdiv double %4967, %4969
  %4971 = fadd double %4970, %4883
  %4972 = fsub double 1.000000e+00, %4883
  %4973 = fmul double %4972, %4968
  %4974 = call double @llvm.fmuladd.f64(double %4877, double %4971, double %4973)
  %4975 = call double @llvm.fmuladd.f64(double %4962, double %4963, double %4974)
  br label %4988

4976:                                             ; preds = %4959
  %4977 = fmul float %4853, %4944
  %4978 = fmul float %4977, %4853
  %4979 = fpext float %4978 to double
  %4980 = fsub float %4853, %4939
  %4981 = fpext float %4980 to double
  %4982 = fmul double %4981, 2.000000e+00
  %4983 = fdiv double %4979, %4982
  %4984 = fpext float %4939 to double
  %4985 = fsub double 1.000000e+00, %4883
  %4986 = call double @llvm.fmuladd.f64(double %4984, double %4985, double %4983)
  %4987 = call double @llvm.fmuladd.f64(double %4962, double %4963, double %4986)
  br label %4988

4988:                                             ; preds = %4950, %4964, %4976
  %4989 = phi double [ %4958, %4950 ], [ %4975, %4964 ], [ %4987, %4976 ]
  %4990 = fptrunc double %4989 to float
  %4991 = fmul float %4873, %4990
  store float %4991, ptr %973, align 4, !tbaa !79
  %4992 = load float, ptr %864, align 8, !tbaa !80
  %4993 = fpext float %4992 to double
  %4994 = fmul double %4993, 0x3EF0001000100010
  %4995 = fmul double %4994, %4877
  %4996 = fptrunc double %4995 to float
  %4997 = load float, ptr %856, align 8, !tbaa !80
  %4998 = fpext float %4997 to double
  %4999 = fmul double %4998, 0x3EF0001000100010
  %5000 = fmul double %4999, %4883
  %5001 = fptrunc double %5000 to float
  br i1 %4887, label %5007, label %5002

5002:                                             ; preds = %4988
  %5003 = fsub float %4996, %4853
  %5004 = call float @llvm.fabs.f32(float %5003)
  %5005 = fpext float %5004 to double
  %5006 = fcmp olt double %5005, 1.000000e-15
  br i1 %5006, label %5007, label %5016

5007:                                             ; preds = %5002, %4988
  %5008 = fmul float %4853, %4857
  %5009 = fpext float %5008 to double
  %5010 = fpext float %4996 to double
  %5011 = fsub double 1.000000e+00, %4883
  %5012 = call double @llvm.fmuladd.f64(double %5010, double %5011, double %5009)
  %5013 = fpext float %5001 to double
  %5014 = fsub double 1.000000e+00, %4877
  %5015 = call double @llvm.fmuladd.f64(double %5013, double %5014, double %5012)
  br label %5045

5016:                                             ; preds = %5002
  %5017 = fmul float %4996, 2.000000e+00
  %5018 = fcmp ugt float %5017, %4853
  %5019 = fpext float %5001 to double
  %5020 = fsub double 1.000000e+00, %4877
  br i1 %5018, label %5033, label %5021

5021:                                             ; preds = %5016
  %5022 = fsub float %5001, %4857
  %5023 = fmul float %5022, %4853
  %5024 = fpext float %5023 to double
  %5025 = fpext float %4996 to double
  %5026 = fmul double %5025, 2.000000e+00
  %5027 = fdiv double %5024, %5026
  %5028 = fadd double %5027, %4883
  %5029 = fsub double 1.000000e+00, %4883
  %5030 = fmul double %5029, %5025
  %5031 = call double @llvm.fmuladd.f64(double %4877, double %5028, double %5030)
  %5032 = call double @llvm.fmuladd.f64(double %5019, double %5020, double %5031)
  br label %5045

5033:                                             ; preds = %5016
  %5034 = fmul float %4853, %5001
  %5035 = fmul float %5034, %4853
  %5036 = fpext float %5035 to double
  %5037 = fsub float %4853, %4996
  %5038 = fpext float %5037 to double
  %5039 = fmul double %5038, 2.000000e+00
  %5040 = fdiv double %5036, %5039
  %5041 = fpext float %4996 to double
  %5042 = fsub double 1.000000e+00, %4883
  %5043 = call double @llvm.fmuladd.f64(double %5041, double %5042, double %5040)
  %5044 = call double @llvm.fmuladd.f64(double %5019, double %5020, double %5043)
  br label %5045

5045:                                             ; preds = %5007, %5021, %5033
  %5046 = phi double [ %5015, %5007 ], [ %5032, %5021 ], [ %5044, %5033 ]
  %5047 = fptrunc double %5046 to float
  %5048 = fmul float %4873, %5047
  store float %5048, ptr %974, align 8, !tbaa !80
  %5049 = load i32, ptr %975, align 4, !tbaa !90
  %5050 = icmp eq i32 %5049, 12
  br i1 %5050, label %5051, label %6283

5051:                                             ; preds = %5045
  %5052 = load float, ptr %976, align 8, !tbaa !84
  %5053 = fpext float %5052 to double
  %5054 = fmul double %5053, 0x3EF0001000100010
  %5055 = fmul double %5054, %4877
  %5056 = fptrunc double %5055 to float
  %5057 = load float, ptr %977, align 8, !tbaa !84
  %5058 = fpext float %5057 to double
  %5059 = fmul double %5058, 0x3EF0001000100010
  %5060 = fmul double %5059, %4883
  %5061 = fptrunc double %5060 to float
  br i1 %4887, label %5067, label %5062

5062:                                             ; preds = %5051
  %5063 = fsub float %5056, %4853
  %5064 = call float @llvm.fabs.f32(float %5063)
  %5065 = fpext float %5064 to double
  %5066 = fcmp olt double %5065, 1.000000e-15
  br i1 %5066, label %5067, label %5076

5067:                                             ; preds = %5062, %5051
  %5068 = fmul float %4853, %4857
  %5069 = fpext float %5068 to double
  %5070 = fpext float %5056 to double
  %5071 = fsub double 1.000000e+00, %4883
  %5072 = call double @llvm.fmuladd.f64(double %5070, double %5071, double %5069)
  %5073 = fpext float %5061 to double
  %5074 = fsub double 1.000000e+00, %4877
  %5075 = call double @llvm.fmuladd.f64(double %5073, double %5074, double %5072)
  br label %5105

5076:                                             ; preds = %5062
  %5077 = fmul float %5056, 2.000000e+00
  %5078 = fcmp ugt float %5077, %4853
  %5079 = fpext float %5061 to double
  %5080 = fsub double 1.000000e+00, %4877
  br i1 %5078, label %5093, label %5081

5081:                                             ; preds = %5076
  %5082 = fsub float %5061, %4857
  %5083 = fmul float %5082, %4853
  %5084 = fpext float %5083 to double
  %5085 = fpext float %5056 to double
  %5086 = fmul double %5085, 2.000000e+00
  %5087 = fdiv double %5084, %5086
  %5088 = fadd double %5087, %4883
  %5089 = fsub double 1.000000e+00, %4883
  %5090 = fmul double %5089, %5085
  %5091 = call double @llvm.fmuladd.f64(double %4877, double %5088, double %5090)
  %5092 = call double @llvm.fmuladd.f64(double %5079, double %5080, double %5091)
  br label %5105

5093:                                             ; preds = %5076
  %5094 = fmul float %4853, %5061
  %5095 = fmul float %5094, %4853
  %5096 = fpext float %5095 to double
  %5097 = fsub float %4853, %5056
  %5098 = fpext float %5097 to double
  %5099 = fmul double %5098, 2.000000e+00
  %5100 = fdiv double %5096, %5099
  %5101 = fpext float %5056 to double
  %5102 = fsub double 1.000000e+00, %4883
  %5103 = call double @llvm.fmuladd.f64(double %5101, double %5102, double %5100)
  %5104 = call double @llvm.fmuladd.f64(double %5079, double %5080, double %5103)
  br label %5105

5105:                                             ; preds = %5067, %5081, %5093
  %5106 = phi double [ %5075, %5067 ], [ %5092, %5081 ], [ %5104, %5093 ]
  %5107 = fptrunc double %5106 to float
  %5108 = fmul float %4873, %5107
  store float %5108, ptr %978, align 8, !tbaa !84
  br label %6283

5109:                                             ; preds = %1758
  %5110 = load float, ptr %959, align 4, !tbaa !81
  %5111 = fpext float %5110 to double
  %5112 = call double @llvm.fmuladd.f64(double %5111, double 0xBEF0001000100010, double 1.000000e+00)
  %5113 = fptrunc double %5112 to float
  %5114 = load float, ptr %960, align 4, !tbaa !81
  %5115 = fpext float %5114 to double
  %5116 = call double @llvm.fmuladd.f64(double %5115, double 0xBEF0001000100010, double 1.000000e+00)
  %5117 = fptrunc double %5116 to float
  %5118 = fadd float %5113, %5117
  %5119 = fneg float %5113
  %5120 = call float @llvm.fmuladd.f32(float %5119, float %5117, float %5118)
  %5121 = fcmp olt float %5120, 0.000000e+00
  %5122 = fcmp ogt float %5120, 1.000000e+00
  %5123 = select i1 %5122, float 1.000000e+00, float %5120
  %5124 = select i1 %5121, float 0.000000e+00, float %5123
  %5125 = fpext float %5124 to double
  %5126 = fsub double 1.000000e+00, %5125
  %5127 = fmul double %5126, 6.553500e+04
  %5128 = fptrunc double %5127 to float
  store float %5128, ptr %961, align 4, !tbaa !81
  %5129 = call double @llvm.fabs.f64(double %5125)
  %5130 = fcmp olt double %5129, 1.000000e-15
  %5131 = fdiv double 6.553500e+04, %5125
  %5132 = select i1 %5130, double 0x440C6BD8BA3ED9CB, double %5131
  %5133 = fptrunc double %5132 to float
  %5134 = load float, ptr %862, align 8, !tbaa !77
  %5135 = fpext float %5134 to double
  %5136 = fmul double %5135, 0x3EF0001000100010
  %5137 = fpext float %5113 to double
  %5138 = fmul double %5136, %5137
  %5139 = fptrunc double %5138 to float
  %5140 = load float, ptr %854, align 8, !tbaa !77
  %5141 = fpext float %5140 to double
  %5142 = fmul double %5141, 0x3EF0001000100010
  %5143 = fpext float %5117 to double
  %5144 = fmul double %5142, %5143
  %5145 = fptrunc double %5144 to float
  %5146 = fmul float %5113, %5145
  %5147 = call float @llvm.fmuladd.f32(float %5139, float 2.000000e+00, float %5119)
  %5148 = fmul float %5147, %5117
  %5149 = fcmp olt float %5146, %5148
  br i1 %5149, label %5150, label %5158

5150:                                             ; preds = %5109
  %5151 = fpext float %5139 to double
  %5152 = fadd double %5143, 1.000000e+00
  %5153 = fmul float %5113, %5117
  %5154 = fpext float %5153 to double
  %5155 = fneg double %5154
  %5156 = call double @llvm.fmuladd.f64(double %5151, double %5152, double %5155)
  %5157 = fpext float %5145 to double
  br label %5168

5158:                                             ; preds = %5109
  %5159 = fmul float %5139, 2.000000e+00
  %5160 = fmul float %5159, %5117
  %5161 = fcmp ogt float %5146, %5160
  %5162 = fpext float %5145 to double
  br i1 %5161, label %5163, label %5166

5163:                                             ; preds = %5158
  %5164 = call float @llvm.fmuladd.f32(float %5139, float %5117, float %5139)
  %5165 = fpext float %5164 to double
  br label %5168

5166:                                             ; preds = %5158
  %5167 = fpext float %5139 to double
  br label %5168

5168:                                             ; preds = %5150, %5163, %5166
  %5169 = phi double [ %5137, %5150 ], [ %5137, %5163 ], [ %5143, %5166 ]
  %5170 = phi double [ %5156, %5150 ], [ %5165, %5163 ], [ %5162, %5166 ]
  %5171 = phi double [ %5157, %5150 ], [ %5162, %5163 ], [ %5167, %5166 ]
  %5172 = fsub double 1.000000e+00, %5169
  %5173 = call double @llvm.fmuladd.f64(double %5171, double %5172, double %5170)
  %5174 = fptrunc double %5173 to float
  %5175 = fmul float %5133, %5174
  store float %5175, ptr %962, align 8, !tbaa !77
  %5176 = load float, ptr %863, align 4, !tbaa !79
  %5177 = fpext float %5176 to double
  %5178 = fmul double %5177, 0x3EF0001000100010
  %5179 = fmul double %5178, %5137
  %5180 = fptrunc double %5179 to float
  %5181 = load float, ptr %855, align 4, !tbaa !79
  %5182 = fpext float %5181 to double
  %5183 = fmul double %5182, 0x3EF0001000100010
  %5184 = fmul double %5183, %5143
  %5185 = fptrunc double %5184 to float
  %5186 = fmul float %5113, %5185
  %5187 = call float @llvm.fmuladd.f32(float %5180, float 2.000000e+00, float %5119)
  %5188 = fmul float %5187, %5117
  %5189 = fcmp olt float %5186, %5188
  br i1 %5189, label %5190, label %5198

5190:                                             ; preds = %5168
  %5191 = fpext float %5180 to double
  %5192 = fadd double %5143, 1.000000e+00
  %5193 = fmul float %5113, %5117
  %5194 = fpext float %5193 to double
  %5195 = fneg double %5194
  %5196 = call double @llvm.fmuladd.f64(double %5191, double %5192, double %5195)
  %5197 = fpext float %5185 to double
  br label %5208

5198:                                             ; preds = %5168
  %5199 = fmul float %5180, 2.000000e+00
  %5200 = fmul float %5199, %5117
  %5201 = fcmp ogt float %5186, %5200
  %5202 = fpext float %5185 to double
  br i1 %5201, label %5203, label %5206

5203:                                             ; preds = %5198
  %5204 = call float @llvm.fmuladd.f32(float %5180, float %5117, float %5180)
  %5205 = fpext float %5204 to double
  br label %5208

5206:                                             ; preds = %5198
  %5207 = fpext float %5180 to double
  br label %5208

5208:                                             ; preds = %5190, %5203, %5206
  %5209 = phi double [ %5137, %5190 ], [ %5137, %5203 ], [ %5143, %5206 ]
  %5210 = phi double [ %5196, %5190 ], [ %5205, %5203 ], [ %5202, %5206 ]
  %5211 = phi double [ %5197, %5190 ], [ %5202, %5203 ], [ %5207, %5206 ]
  %5212 = fsub double 1.000000e+00, %5209
  %5213 = call double @llvm.fmuladd.f64(double %5211, double %5212, double %5210)
  %5214 = fptrunc double %5213 to float
  %5215 = fmul float %5133, %5214
  store float %5215, ptr %963, align 4, !tbaa !79
  %5216 = load float, ptr %864, align 8, !tbaa !80
  %5217 = fpext float %5216 to double
  %5218 = fmul double %5217, 0x3EF0001000100010
  %5219 = fmul double %5218, %5137
  %5220 = fptrunc double %5219 to float
  %5221 = load float, ptr %856, align 8, !tbaa !80
  %5222 = fpext float %5221 to double
  %5223 = fmul double %5222, 0x3EF0001000100010
  %5224 = fmul double %5223, %5143
  %5225 = fptrunc double %5224 to float
  %5226 = fmul float %5113, %5225
  %5227 = call float @llvm.fmuladd.f32(float %5220, float 2.000000e+00, float %5119)
  %5228 = fmul float %5227, %5117
  %5229 = fcmp olt float %5226, %5228
  br i1 %5229, label %5230, label %5238

5230:                                             ; preds = %5208
  %5231 = fpext float %5220 to double
  %5232 = fadd double %5143, 1.000000e+00
  %5233 = fmul float %5113, %5117
  %5234 = fpext float %5233 to double
  %5235 = fneg double %5234
  %5236 = call double @llvm.fmuladd.f64(double %5231, double %5232, double %5235)
  %5237 = fpext float %5225 to double
  br label %5248

5238:                                             ; preds = %5208
  %5239 = fmul float %5220, 2.000000e+00
  %5240 = fmul float %5239, %5117
  %5241 = fcmp ogt float %5226, %5240
  %5242 = fpext float %5225 to double
  br i1 %5241, label %5243, label %5246

5243:                                             ; preds = %5238
  %5244 = call float @llvm.fmuladd.f32(float %5220, float %5117, float %5220)
  %5245 = fpext float %5244 to double
  br label %5248

5246:                                             ; preds = %5238
  %5247 = fpext float %5220 to double
  br label %5248

5248:                                             ; preds = %5230, %5243, %5246
  %5249 = phi double [ %5137, %5230 ], [ %5137, %5243 ], [ %5143, %5246 ]
  %5250 = phi double [ %5236, %5230 ], [ %5245, %5243 ], [ %5242, %5246 ]
  %5251 = phi double [ %5237, %5230 ], [ %5242, %5243 ], [ %5247, %5246 ]
  %5252 = fsub double 1.000000e+00, %5249
  %5253 = call double @llvm.fmuladd.f64(double %5251, double %5252, double %5250)
  %5254 = fptrunc double %5253 to float
  %5255 = fmul float %5133, %5254
  store float %5255, ptr %964, align 8, !tbaa !80
  %5256 = load i32, ptr %965, align 4, !tbaa !90
  %5257 = icmp eq i32 %5256, 12
  br i1 %5257, label %5258, label %6283

5258:                                             ; preds = %5248
  %5259 = load float, ptr %966, align 8, !tbaa !84
  %5260 = fpext float %5259 to double
  %5261 = fmul double %5260, 0x3EF0001000100010
  %5262 = fmul double %5261, %5137
  %5263 = fptrunc double %5262 to float
  %5264 = load float, ptr %967, align 8, !tbaa !84
  %5265 = fpext float %5264 to double
  %5266 = fmul double %5265, 0x3EF0001000100010
  %5267 = fmul double %5266, %5143
  %5268 = fptrunc double %5267 to float
  %5269 = fmul float %5113, %5268
  %5270 = call float @llvm.fmuladd.f32(float %5263, float 2.000000e+00, float %5119)
  %5271 = fmul float %5270, %5117
  %5272 = fcmp olt float %5269, %5271
  br i1 %5272, label %5273, label %5281

5273:                                             ; preds = %5258
  %5274 = fpext float %5263 to double
  %5275 = fadd double %5143, 1.000000e+00
  %5276 = fmul float %5113, %5117
  %5277 = fpext float %5276 to double
  %5278 = fneg double %5277
  %5279 = call double @llvm.fmuladd.f64(double %5274, double %5275, double %5278)
  %5280 = fpext float %5268 to double
  br label %5291

5281:                                             ; preds = %5258
  %5282 = fmul float %5263, 2.000000e+00
  %5283 = fmul float %5282, %5117
  %5284 = fcmp ogt float %5269, %5283
  %5285 = fpext float %5268 to double
  br i1 %5284, label %5286, label %5289

5286:                                             ; preds = %5281
  %5287 = call float @llvm.fmuladd.f32(float %5263, float %5117, float %5263)
  %5288 = fpext float %5287 to double
  br label %5291

5289:                                             ; preds = %5281
  %5290 = fpext float %5263 to double
  br label %5291

5291:                                             ; preds = %5273, %5286, %5289
  %5292 = phi double [ %5137, %5273 ], [ %5137, %5286 ], [ %5143, %5289 ]
  %5293 = phi double [ %5279, %5273 ], [ %5288, %5286 ], [ %5285, %5289 ]
  %5294 = phi double [ %5280, %5273 ], [ %5285, %5286 ], [ %5290, %5289 ]
  %5295 = fsub double 1.000000e+00, %5292
  %5296 = call double @llvm.fmuladd.f64(double %5294, double %5295, double %5293)
  %5297 = fptrunc double %5296 to float
  %5298 = fmul float %5133, %5297
  store float %5298, ptr %968, align 8, !tbaa !84
  br label %6283

5299:                                             ; preds = %1758
  %5300 = load float, ptr %958, align 4, !tbaa !81
  %5301 = fcmp ogt float %5300, 3.276750e+04
  br i1 %5301, label %5305, label %5302

5302:                                             ; preds = %5299
  %5303 = call i32 @IsMagickColorSimilar(ptr noundef nonnull %15, ptr noundef nonnull %14) #10
  %5304 = icmp eq i32 %5303, 0
  br i1 %5304, label %5306, label %5305

5305:                                             ; preds = %5302, %5299
  store float 6.553500e+04, ptr %958, align 4, !tbaa !81
  br label %6283

5306:                                             ; preds = %5302
  store float 0.000000e+00, ptr %958, align 4, !tbaa !81
  br label %6283

5307:                                             ; preds = %1758
  %5308 = load float, ptr %949, align 4, !tbaa !81
  %5309 = fcmp oeq float %5308, 6.553500e+04
  br i1 %5309, label %6283, label %5310

5310:                                             ; preds = %5307
  %5311 = load i32, ptr %950, align 4, !tbaa !90
  %5312 = icmp eq i32 %5311, 2
  %5313 = load float, ptr %862, align 8, !tbaa !77
  br i1 %5312, label %5324, label %5314

5314:                                             ; preds = %5310
  %5315 = fpext float %5313 to double
  %5316 = load float, ptr %863, align 4, !tbaa !79
  %5317 = fpext float %5316 to double
  %5318 = fmul double %5317, 0x3FE6E29307AF20EA
  %5319 = call double @llvm.fmuladd.f64(double %5315, double 2.126560e-01, double %5318)
  %5320 = load float, ptr %864, align 8, !tbaa !80
  %5321 = fpext float %5320 to double
  %5322 = call double @llvm.fmuladd.f64(double %5321, double 7.218600e-02, double %5319)
  %5323 = fptrunc double %5322 to float
  br label %5324

5324:                                             ; preds = %5310, %5314
  %5325 = phi float [ %5323, %5314 ], [ %5313, %5310 ]
  %5326 = fpext float %5325 to double
  %5327 = fmul double %5326, 0x3EF0001000100010
  %5328 = load float, ptr %854, align 8, !tbaa !77
  %5329 = fpext float %5328 to double
  %5330 = fmul double %5327, %5329
  %5331 = fptrunc double %5330 to float
  store float %5331, ptr %951, align 8, !tbaa !77
  %5332 = load float, ptr %855, align 4, !tbaa !79
  %5333 = fpext float %5332 to double
  %5334 = fmul double %5327, %5333
  %5335 = fptrunc double %5334 to float
  store float %5335, ptr %952, align 4, !tbaa !79
  %5336 = load float, ptr %856, align 8, !tbaa !80
  %5337 = fpext float %5336 to double
  %5338 = fmul double %5327, %5337
  %5339 = fptrunc double %5338 to float
  store float %5339, ptr %953, align 8, !tbaa !80
  %5340 = fmul float %5325, 0x3EF0001000000000
  %5341 = fmul float %5308, %5340
  store float %5341, ptr %954, align 4, !tbaa !81
  %5342 = load i32, ptr %955, align 4, !tbaa !90
  %5343 = icmp eq i32 %5342, 12
  br i1 %5343, label %5344, label %6283

5344:                                             ; preds = %5324
  %5345 = load float, ptr %956, align 8, !tbaa !84
  %5346 = fpext float %5345 to double
  %5347 = fmul double %5327, %5346
  %5348 = fptrunc double %5347 to float
  store float %5348, ptr %957, align 8, !tbaa !84
  br label %6283

5349:                                             ; preds = %1758
  %5350 = load float, ptr %937, align 4, !tbaa !81
  %5351 = fsub float 6.553500e+04, %5350
  %5352 = call float @llvm.fmuladd.f32(float %938, float %5351, float 6.553500e+04)
  %5353 = fcmp oeq float %5352, 0.000000e+00
  br i1 %5353, label %5354, label %5355

5354:                                             ; preds = %5349
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %13, ptr noundef nonnull align 8 dereferenceable(56) %15, i64 56, i1 false), !tbaa.struct !67
  br label %6283

5355:                                             ; preds = %5349
  %5356 = load float, ptr %940, align 4, !tbaa !81
  %5357 = fsub float 6.553500e+04, %5356
  %5358 = call float @llvm.fmuladd.f32(float %939, float %5357, float 6.553500e+04)
  %5359 = fpext float %5352 to double
  %5360 = fpext float %5358 to double
  %5361 = fmul double %5359, 0xBDF0002000300040
  %5362 = call double @llvm.fmuladd.f64(double %5361, double %5360, double 1.000000e+00)
  %5363 = fcmp olt double %5362, 0.000000e+00
  %5364 = select i1 %5363, double 0.000000e+00, double %5362
  %5365 = fsub double 1.000000e+00, %5364
  %5366 = fmul double %5365, 6.553500e+04
  %5367 = fptrunc double %5366 to float
  store float %5367, ptr %941, align 4, !tbaa !81
  %5368 = fcmp ult double %5364, 1.000000e-15
  %5369 = fdiv double 1.000000e+00, %5364
  %5370 = select i1 %5368, double 0x430C6BF52633FFFF, double %5369
  %5371 = load float, ptr %862, align 8, !tbaa !77
  %5372 = load float, ptr %854, align 8, !tbaa !77
  %5373 = call double @llvm.fmuladd.f64(double %5359, double 0xBEF0001000100010, double 1.000000e+00)
  %5374 = fpext float %5371 to double
  %5375 = call double @llvm.fmuladd.f64(double %5360, double 0xBEF0001000100010, double 1.000000e+00)
  %5376 = fpext float %5372 to double
  %5377 = fmul double %5375, %5376
  %5378 = fmul double %5377, 0x3EF0001000100010
  %5379 = fmul double %5378, %5359
  %5380 = call double @llvm.fmuladd.f64(double %5373, double %5374, double %5379)
  %5381 = fptrunc double %5380 to float
  %5382 = fpext float %5381 to double
  %5383 = fmul double %5370, %5382
  %5384 = fptrunc double %5383 to float
  store float %5384, ptr %942, align 8, !tbaa !77
  %5385 = load float, ptr %863, align 4, !tbaa !79
  %5386 = load float, ptr %855, align 4, !tbaa !79
  %5387 = fpext float %5385 to double
  %5388 = fpext float %5386 to double
  %5389 = fmul double %5375, %5388
  %5390 = fmul double %5389, 0x3EF0001000100010
  %5391 = fmul double %5390, %5359
  %5392 = call double @llvm.fmuladd.f64(double %5373, double %5387, double %5391)
  %5393 = fptrunc double %5392 to float
  %5394 = fpext float %5393 to double
  %5395 = fmul double %5370, %5394
  %5396 = fptrunc double %5395 to float
  store float %5396, ptr %943, align 4, !tbaa !79
  %5397 = load float, ptr %864, align 8, !tbaa !80
  %5398 = load float, ptr %856, align 8, !tbaa !80
  %5399 = fpext float %5397 to double
  %5400 = fpext float %5398 to double
  %5401 = fmul double %5375, %5400
  %5402 = fmul double %5401, 0x3EF0001000100010
  %5403 = fmul double %5402, %5359
  %5404 = call double @llvm.fmuladd.f64(double %5373, double %5399, double %5403)
  %5405 = fptrunc double %5404 to float
  %5406 = fpext float %5405 to double
  %5407 = fmul double %5370, %5406
  %5408 = fptrunc double %5407 to float
  store float %5408, ptr %944, align 8, !tbaa !80
  %5409 = load i32, ptr %945, align 4, !tbaa !90
  %5410 = icmp eq i32 %5409, 12
  br i1 %5410, label %5411, label %6283

5411:                                             ; preds = %5355
  %5412 = load float, ptr %946, align 8, !tbaa !84
  %5413 = load float, ptr %947, align 8, !tbaa !84
  %5414 = fpext float %5412 to double
  %5415 = fpext float %5413 to double
  %5416 = fmul double %5375, %5415
  %5417 = fmul double %5416, 0x3EF0001000100010
  %5418 = fmul double %5417, %5359
  %5419 = call double @llvm.fmuladd.f64(double %5373, double %5414, double %5418)
  %5420 = fptrunc double %5419 to float
  %5421 = fpext float %5420 to double
  %5422 = fmul double %5370, %5421
  %5423 = fptrunc double %5422 to float
  store float %5423, ptr %948, align 8, !tbaa !84
  br label %6283

5424:                                             ; preds = %1758
  %5425 = load float, ptr %925, align 4, !tbaa !81
  %5426 = fsub float 6.553500e+04, %5425
  %5427 = call float @llvm.fmuladd.f32(float %926, float %5426, float 6.553500e+04)
  %5428 = load float, ptr %927, align 4, !tbaa !81
  %5429 = fsub float 6.553500e+04, %5428
  %5430 = call float @llvm.fmuladd.f32(float %928, float %5429, float 6.553500e+04)
  %5431 = fpext float %5427 to double
  %5432 = call double @llvm.fmuladd.f64(double %5431, double 0xBEF0001000100010, double 1.000000e+00)
  %5433 = fptrunc double %5432 to float
  %5434 = fpext float %5430 to double
  %5435 = call double @llvm.fmuladd.f64(double %5434, double 0xBEF0001000100010, double 1.000000e+00)
  %5436 = fptrunc double %5435 to float
  %5437 = fadd float %5433, %5436
  %5438 = fcmp olt float %5437, 0.000000e+00
  %5439 = fcmp ogt float %5437, 1.000000e+00
  %5440 = select i1 %5439, float 1.000000e+00, float %5437
  %5441 = select i1 %5438, float 0.000000e+00, float %5440
  %5442 = fpext float %5441 to double
  %5443 = fsub double 1.000000e+00, %5442
  %5444 = fmul double %5443, 6.553500e+04
  %5445 = fptrunc double %5444 to float
  store float %5445, ptr %929, align 4, !tbaa !81
  %5446 = fcmp olt float %5441, 0.000000e+00
  %5447 = select i1 %5446, double -1.000000e+00, double 1.000000e+00
  %5448 = fmul double %5447, %5442
  %5449 = fcmp ult double %5448, 1.000000e-15
  %5450 = fdiv double 1.000000e+00, %5442
  %5451 = fdiv double %5447, 1.000000e-15
  %5452 = select i1 %5449, double %5451, double %5450
  %5453 = load float, ptr %862, align 8, !tbaa !77
  %5454 = load float, ptr %854, align 8, !tbaa !77
  %5455 = fmul float %5454, %5436
  %5456 = call float @llvm.fmuladd.f32(float %5433, float %5453, float %5455)
  %5457 = fpext float %5456 to double
  %5458 = fmul double %5452, %5457
  %5459 = fptrunc double %5458 to float
  store float %5459, ptr %930, align 8, !tbaa !77
  %5460 = load float, ptr %863, align 4, !tbaa !79
  %5461 = load float, ptr %855, align 4, !tbaa !79
  %5462 = fmul float %5461, %5436
  %5463 = call float @llvm.fmuladd.f32(float %5433, float %5460, float %5462)
  %5464 = fpext float %5463 to double
  %5465 = fmul double %5452, %5464
  %5466 = fptrunc double %5465 to float
  store float %5466, ptr %931, align 4, !tbaa !79
  %5467 = load float, ptr %864, align 8, !tbaa !80
  %5468 = load float, ptr %856, align 8, !tbaa !80
  %5469 = fmul float %5468, %5436
  %5470 = call float @llvm.fmuladd.f32(float %5433, float %5467, float %5469)
  %5471 = fpext float %5470 to double
  %5472 = fmul double %5452, %5471
  %5473 = fptrunc double %5472 to float
  store float %5473, ptr %932, align 8, !tbaa !80
  %5474 = load i32, ptr %933, align 4, !tbaa !90
  %5475 = icmp eq i32 %5474, 12
  br i1 %5475, label %5476, label %6283

5476:                                             ; preds = %5424
  %5477 = load float, ptr %934, align 8, !tbaa !84
  %5478 = load float, ptr %935, align 8, !tbaa !84
  %5479 = fmul float %5478, %5436
  %5480 = call float @llvm.fmuladd.f32(float %5433, float %5477, float %5479)
  %5481 = fpext float %5480 to double
  %5482 = fmul double %5452, %5481
  %5483 = fptrunc double %5482 to float
  store float %5483, ptr %936, align 8, !tbaa !84
  br label %6283

5484:                                             ; preds = %1758
  %5485 = load float, ptr %862, align 8, !tbaa !77
  %5486 = load float, ptr %854, align 8, !tbaa !77
  %5487 = fsub float %5485, %5486
  %5488 = fmul float %5487, 2.000000e+00
  %5489 = call float @llvm.fabs.f32(float %5488)
  %5490 = fcmp olt float %5489, %820
  %5491 = call float @llvm.fmuladd.f32(float %5487, float %825, float %5486)
  %5492 = select i1 %5490, float %5486, float %5491
  store float %5492, ptr %915, align 8, !tbaa !77
  %5493 = load float, ptr %863, align 4, !tbaa !79
  %5494 = load float, ptr %855, align 4, !tbaa !79
  %5495 = fsub float %5493, %5494
  %5496 = fmul float %5495, 2.000000e+00
  %5497 = call float @llvm.fabs.f32(float %5496)
  %5498 = fcmp olt float %5497, %820
  %5499 = call float @llvm.fmuladd.f32(float %5495, float %825, float %5494)
  %5500 = select i1 %5498, float %5494, float %5499
  store float %5500, ptr %916, align 4, !tbaa !79
  %5501 = load float, ptr %864, align 8, !tbaa !80
  %5502 = load float, ptr %856, align 8, !tbaa !80
  %5503 = fsub float %5501, %5502
  %5504 = fmul float %5503, 2.000000e+00
  %5505 = call float @llvm.fabs.f32(float %5504)
  %5506 = fcmp olt float %5505, %820
  %5507 = call float @llvm.fmuladd.f32(float %5503, float %825, float %5502)
  %5508 = select i1 %5506, float %5502, float %5507
  store float %5508, ptr %917, align 8, !tbaa !80
  %5509 = load float, ptr %918, align 4, !tbaa !81
  %5510 = load float, ptr %919, align 4, !tbaa !81
  %5511 = fsub float %5509, %5510
  %5512 = fmul float %5511, 2.000000e+00
  %5513 = call float @llvm.fabs.f32(float %5512)
  %5514 = fcmp olt float %5513, %820
  %5515 = call float @llvm.fmuladd.f32(float %5511, float %825, float %5510)
  %5516 = select i1 %5514, float %5510, float %5515
  %5517 = fsub float 6.553500e+04, %5516
  store float %5517, ptr %920, align 4, !tbaa !81
  %5518 = load i32, ptr %921, align 4, !tbaa !90
  %5519 = icmp eq i32 %5518, 12
  br i1 %5519, label %5520, label %6283

5520:                                             ; preds = %5484
  %5521 = load float, ptr %922, align 8, !tbaa !84
  %5522 = load float, ptr %923, align 8, !tbaa !84
  %5523 = fsub float %5521, %5522
  %5524 = fmul float %5523, 2.000000e+00
  %5525 = call float @llvm.fabs.f32(float %5524)
  %5526 = fcmp olt float %5525, %820
  %5527 = call float @llvm.fmuladd.f32(float %5523, float %825, float %5522)
  %5528 = select i1 %5526, float %5522, float %5527
  store float %5528, ptr %924, align 8, !tbaa !84
  br label %6283

5529:                                             ; preds = %1758
  %5530 = load float, ptr %908, align 4, !tbaa !81
  %5531 = fcmp oeq float %5530, 6.553500e+04
  br i1 %5531, label %6283, label %5532

5532:                                             ; preds = %5529
  %5533 = load i32, ptr %909, align 4, !tbaa !90
  %5534 = icmp eq i32 %5533, 2
  %5535 = load float, ptr %862, align 8, !tbaa !77
  br i1 %5534, label %5536, label %5543

5536:                                             ; preds = %5532
  %5537 = fcmp ugt float %5535, 0.000000e+00
  br i1 %5537, label %5538, label %5559

5538:                                             ; preds = %5536
  %5539 = fcmp ult float %5535, 6.553500e+04
  br i1 %5539, label %5540, label %5559

5540:                                             ; preds = %5538
  %5541 = fadd float %5535, 5.000000e-01
  %5542 = fptoui float %5541 to i16
  br label %5559

5543:                                             ; preds = %5532
  %5544 = fpext float %5535 to double
  %5545 = load float, ptr %863, align 4, !tbaa !79
  %5546 = fpext float %5545 to double
  %5547 = fmul double %5546, 0x3FE6E29307AF20EA
  %5548 = call double @llvm.fmuladd.f64(double %5544, double 2.126560e-01, double %5547)
  %5549 = load float, ptr %864, align 8, !tbaa !80
  %5550 = fpext float %5549 to double
  %5551 = call double @llvm.fmuladd.f64(double %5550, double 7.218600e-02, double %5548)
  %5552 = fptrunc double %5551 to float
  %5553 = fcmp ugt float %5552, 0.000000e+00
  br i1 %5553, label %5554, label %5559

5554:                                             ; preds = %5543
  %5555 = fcmp ult float %5552, 6.553500e+04
  br i1 %5555, label %5556, label %5559

5556:                                             ; preds = %5554
  %5557 = fadd float %5552, 5.000000e-01
  %5558 = fptoui float %5557 to i16
  br label %5559

5559:                                             ; preds = %5536, %5538, %5540, %5543, %5554, %5556
  %5560 = phi i16 [ %5542, %5540 ], [ 0, %5536 ], [ -1, %5538 ], [ %5558, %5556 ], [ 0, %5543 ], [ -1, %5554 ]
  %5561 = zext i16 %5560 to i64
  %5562 = add nsw i64 %5561, -32768
  %5563 = icmp eq i64 %5562, 0
  br i1 %5563, label %6283, label %5564

5564:                                             ; preds = %5559
  %5565 = load float, ptr %854, align 8, !tbaa !77
  %5566 = load float, ptr %855, align 4, !tbaa !79
  %5567 = load float, ptr %856, align 8, !tbaa !80
  %5568 = fpext float %5565 to double
  %5569 = fpext float %5566 to double
  %5570 = fpext float %5567 to double
  %5571 = fcmp ogt float %5566, %5567
  %5572 = select i1 %5571, double %5569, double %5570
  %5573 = fcmp olt double %5572, %5568
  %5574 = select i1 %5573, double %5568, double %5572
  %5575 = fcmp olt float %5566, %5567
  %5576 = select i1 %5575, double %5569, double %5570
  %5577 = fcmp ogt double %5576, %5568
  %5578 = select i1 %5577, double %5568, double %5576
  %5579 = fsub double %5574, %5578
  %5580 = fcmp oeq double %5579, 0.000000e+00
  br i1 %5580, label %5601, label %5581

5581:                                             ; preds = %5564
  %5582 = fptrunc double %5574 to float
  %5583 = fcmp oeq float %5565, %5582
  br i1 %5583, label %5584, label %5589

5584:                                             ; preds = %5581
  %5585 = fsub double %5569, %5570
  %5586 = fdiv double %5585, %5579
  %5587 = fadd double %5586, 6.000000e+00
  %5588 = call double @fmod(double noundef %5587, double noundef 6.000000e+00) #10
  br label %5601

5589:                                             ; preds = %5581
  %5590 = fcmp oeq float %5566, %5582
  br i1 %5590, label %5591, label %5595

5591:                                             ; preds = %5589
  %5592 = fsub double %5570, %5568
  %5593 = fdiv double %5592, %5579
  %5594 = fadd double %5593, 2.000000e+00
  br label %5601

5595:                                             ; preds = %5589
  %5596 = fcmp oeq float %5567, %5582
  br i1 %5596, label %5597, label %5601

5597:                                             ; preds = %5595
  %5598 = fsub double %5568, %5569
  %5599 = fdiv double %5598, %5579
  %5600 = fadd double %5599, 4.000000e+00
  br label %5601

5601:                                             ; preds = %5564, %5584, %5591, %5595, %5597
  %5602 = phi double [ %5588, %5584 ], [ %5594, %5591 ], [ %5600, %5597 ], [ 0.000000e+00, %5595 ], [ 0.000000e+00, %5564 ]
  %5603 = fdiv double %5602, 6.000000e+00
  %5604 = fmul double %5579, 0x3EF0001000100010
  %5605 = fmul double %5569, 5.868110e-01
  %5606 = call double @llvm.fmuladd.f64(double %5568, double 2.988390e-01, double %5605)
  %5607 = call double @llvm.fmuladd.f64(double %5570, double 1.143500e-01, double %5606)
  %5608 = fmul double %5607, 0x3EF0001000100010
  %5609 = sitofp i64 %5562 to double
  %5610 = fmul double %911, %5609
  %5611 = fmul double %5610, 0x3F00000000000000
  %5612 = fadd double %5611, %5608
  %5613 = fmul double %822, %5604
  %5614 = fmul double %5603, 6.000000e+00
  %5615 = call double @fmod(double noundef %5614, double noundef 2.000000e+00) #10
  %5616 = fadd double %5615, -1.000000e+00
  %5617 = call double @llvm.fabs.f64(double %5616)
  %5618 = fsub double 1.000000e+00, %5617
  %5619 = fmul double %5613, %5618
  %5620 = fcmp oge double %5614, 0.000000e+00
  %5621 = fcmp olt double %5614, 1.000000e+00
  %5622 = and i1 %5620, %5621
  br i1 %5622, label %5644, label %5623

5623:                                             ; preds = %5601
  %5624 = fcmp oge double %5614, 1.000000e+00
  %5625 = fcmp olt double %5614, 2.000000e+00
  %5626 = and i1 %5624, %5625
  br i1 %5626, label %5644, label %5627

5627:                                             ; preds = %5623
  %5628 = fcmp oge double %5614, 2.000000e+00
  %5629 = fcmp olt double %5614, 3.000000e+00
  %5630 = and i1 %5628, %5629
  br i1 %5630, label %5644, label %5631

5631:                                             ; preds = %5627
  %5632 = fcmp oge double %5614, 3.000000e+00
  %5633 = fcmp olt double %5614, 4.000000e+00
  %5634 = and i1 %5632, %5633
  br i1 %5634, label %5644, label %5635

5635:                                             ; preds = %5631
  %5636 = fcmp oge double %5614, 4.000000e+00
  %5637 = fcmp olt double %5614, 5.000000e+00
  %5638 = and i1 %5636, %5637
  br i1 %5638, label %5644, label %5639

5639:                                             ; preds = %5635
  %5640 = fcmp oge double %5614, 5.000000e+00
  %5641 = fcmp olt double %5614, 6.000000e+00
  %5642 = and i1 %5640, %5641
  br i1 %5642, label %5643, label %5644

5643:                                             ; preds = %5639
  br label %5644

5644:                                             ; preds = %5601, %5623, %5627, %5631, %5635, %5639, %5643
  %5645 = phi double [ 0.000000e+00, %5643 ], [ 0.000000e+00, %5639 ], [ %5619, %5601 ], [ %5613, %5623 ], [ %5613, %5627 ], [ %5619, %5631 ], [ 0.000000e+00, %5635 ]
  %5646 = phi double [ %5613, %5643 ], [ 0.000000e+00, %5639 ], [ %5613, %5601 ], [ %5619, %5623 ], [ 0.000000e+00, %5627 ], [ 0.000000e+00, %5631 ], [ %5619, %5635 ]
  %5647 = phi double [ %5619, %5643 ], [ 0.000000e+00, %5639 ], [ 0.000000e+00, %5601 ], [ 0.000000e+00, %5623 ], [ %5619, %5627 ], [ %5613, %5631 ], [ %5613, %5635 ]
  %5648 = fmul double %5645, 5.868110e-01
  %5649 = call double @llvm.fmuladd.f64(double %5646, double 2.988390e-01, double %5648)
  %5650 = call double @llvm.fmuladd.f64(double %5647, double 1.143500e-01, double %5649)
  %5651 = fsub double %5612, %5650
  %5652 = fadd double %5646, %5651
  %5653 = fmul double %5652, 6.553500e+04
  %5654 = fptrunc double %5653 to float
  store float %5654, ptr %912, align 8, !tbaa !71
  %5655 = fadd double %5645, %5651
  %5656 = fmul double %5655, 6.553500e+04
  %5657 = fptrunc double %5656 to float
  store float %5657, ptr %913, align 4, !tbaa !71
  %5658 = fadd double %5647, %5651
  %5659 = fmul double %5658, 6.553500e+04
  %5660 = fptrunc double %5659 to float
  store float %5660, ptr %914, align 8, !tbaa !71
  br label %6283

5661:                                             ; preds = %1758
  %5662 = load float, ptr %902, align 4, !tbaa !81
  %5663 = fcmp oeq float %5662, 6.553500e+04
  br i1 %5663, label %6283, label %5664

5664:                                             ; preds = %5661
  %5665 = load float, ptr %903, align 4, !tbaa !81
  %5666 = fcmp oeq float %5665, 6.553500e+04
  br i1 %5666, label %5667, label %5668

5667:                                             ; preds = %5664
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %13, ptr noundef nonnull align 8 dereferenceable(56) %15, i64 56, i1 false), !tbaa.struct !67
  br label %6283

5668:                                             ; preds = %5664
  %5669 = load float, ptr %854, align 8, !tbaa !77
  %5670 = load float, ptr %855, align 4, !tbaa !79
  %5671 = load float, ptr %856, align 8, !tbaa !80
  %5672 = fpext float %5669 to double
  %5673 = fpext float %5670 to double
  %5674 = fpext float %5671 to double
  %5675 = fcmp ogt float %5670, %5671
  %5676 = select i1 %5675, double %5673, double %5674
  %5677 = fcmp olt double %5676, %5672
  %5678 = select i1 %5677, double %5672, double %5676
  %5679 = fcmp olt float %5670, %5671
  %5680 = select i1 %5679, double %5673, double %5674
  %5681 = fcmp ogt double %5680, %5672
  %5682 = select i1 %5681, double %5672, double %5680
  %5683 = fsub double %5678, %5682
  %5684 = fcmp une double %5683, 0.000000e+00
  %5685 = fptrunc double %5678 to float
  %5686 = fcmp oeq float %5669, %5685
  %5687 = and i1 %5684, %5686
  br i1 %5687, label %5688, label %5693

5688:                                             ; preds = %5668
  %5689 = fsub double %5673, %5674
  %5690 = fdiv double %5689, %5683
  %5691 = fadd double %5690, 6.000000e+00
  %5692 = call double @fmod(double noundef %5691, double noundef 6.000000e+00) #10
  br label %5693

5693:                                             ; preds = %5668, %5688
  %5694 = fmul double %5683, 0x3EF0001000100010
  %5695 = fmul double %5673, 5.868110e-01
  %5696 = call double @llvm.fmuladd.f64(double %5672, double 2.988390e-01, double %5695)
  %5697 = call double @llvm.fmuladd.f64(double %5674, double 1.143500e-01, double %5696)
  %5698 = fmul double %5697, 0x3EF0001000100010
  %5699 = load float, ptr %862, align 8, !tbaa !77
  %5700 = load float, ptr %863, align 4, !tbaa !79
  %5701 = load float, ptr %864, align 8, !tbaa !80
  %5702 = fpext float %5699 to double
  %5703 = fpext float %5700 to double
  %5704 = fpext float %5701 to double
  %5705 = fcmp ogt float %5700, %5701
  %5706 = select i1 %5705, double %5703, double %5704
  %5707 = fcmp olt double %5706, %5702
  %5708 = select i1 %5707, double %5702, double %5706
  %5709 = fcmp olt float %5700, %5701
  %5710 = select i1 %5709, double %5703, double %5704
  %5711 = fcmp ogt double %5710, %5702
  %5712 = select i1 %5711, double %5702, double %5710
  %5713 = fsub double %5708, %5712
  %5714 = fcmp oeq double %5713, 0.000000e+00
  br i1 %5714, label %5735, label %5715

5715:                                             ; preds = %5693
  %5716 = fptrunc double %5708 to float
  %5717 = fcmp oeq float %5699, %5716
  br i1 %5717, label %5718, label %5723

5718:                                             ; preds = %5715
  %5719 = fsub double %5703, %5704
  %5720 = fdiv double %5719, %5713
  %5721 = fadd double %5720, 6.000000e+00
  %5722 = call double @fmod(double noundef %5721, double noundef 6.000000e+00) #10
  br label %5735

5723:                                             ; preds = %5715
  %5724 = fcmp oeq float %5700, %5716
  br i1 %5724, label %5725, label %5729

5725:                                             ; preds = %5723
  %5726 = fsub double %5704, %5702
  %5727 = fdiv double %5726, %5713
  %5728 = fadd double %5727, 2.000000e+00
  br label %5735

5729:                                             ; preds = %5723
  %5730 = fcmp oeq float %5701, %5716
  br i1 %5730, label %5731, label %5735

5731:                                             ; preds = %5729
  %5732 = fsub double %5702, %5703
  %5733 = fdiv double %5732, %5713
  %5734 = fadd double %5733, 4.000000e+00
  br label %5735

5735:                                             ; preds = %5693, %5718, %5725, %5729, %5731
  %5736 = phi double [ %5722, %5718 ], [ %5728, %5725 ], [ %5734, %5731 ], [ 0.000000e+00, %5729 ], [ 0.000000e+00, %5693 ]
  %5737 = fdiv double %5736, 6.000000e+00
  %5738 = fmul double %5737, 6.000000e+00
  %5739 = call double @fmod(double noundef %5738, double noundef 2.000000e+00) #10
  %5740 = fadd double %5739, -1.000000e+00
  %5741 = call double @llvm.fabs.f64(double %5740)
  %5742 = fsub double 1.000000e+00, %5741
  %5743 = fmul double %5694, %5742
  %5744 = fcmp oge double %5738, 0.000000e+00
  %5745 = fcmp olt double %5738, 1.000000e+00
  %5746 = and i1 %5744, %5745
  br i1 %5746, label %5768, label %5747

5747:                                             ; preds = %5735
  %5748 = fcmp oge double %5738, 1.000000e+00
  %5749 = fcmp olt double %5738, 2.000000e+00
  %5750 = and i1 %5748, %5749
  br i1 %5750, label %5768, label %5751

5751:                                             ; preds = %5747
  %5752 = fcmp oge double %5738, 2.000000e+00
  %5753 = fcmp olt double %5738, 3.000000e+00
  %5754 = and i1 %5752, %5753
  br i1 %5754, label %5768, label %5755

5755:                                             ; preds = %5751
  %5756 = fcmp oge double %5738, 3.000000e+00
  %5757 = fcmp olt double %5738, 4.000000e+00
  %5758 = and i1 %5756, %5757
  br i1 %5758, label %5768, label %5759

5759:                                             ; preds = %5755
  %5760 = fcmp oge double %5738, 4.000000e+00
  %5761 = fcmp olt double %5738, 5.000000e+00
  %5762 = and i1 %5760, %5761
  br i1 %5762, label %5768, label %5763

5763:                                             ; preds = %5759
  %5764 = fcmp oge double %5738, 5.000000e+00
  %5765 = fcmp olt double %5738, 6.000000e+00
  %5766 = and i1 %5764, %5765
  br i1 %5766, label %5767, label %5768

5767:                                             ; preds = %5763
  br label %5768

5768:                                             ; preds = %5735, %5747, %5751, %5755, %5759, %5763, %5767
  %5769 = phi double [ 0.000000e+00, %5767 ], [ 0.000000e+00, %5763 ], [ %5743, %5735 ], [ %5694, %5747 ], [ %5694, %5751 ], [ %5743, %5755 ], [ 0.000000e+00, %5759 ]
  %5770 = phi double [ %5694, %5767 ], [ 0.000000e+00, %5763 ], [ %5694, %5735 ], [ %5743, %5747 ], [ 0.000000e+00, %5751 ], [ 0.000000e+00, %5755 ], [ %5743, %5759 ]
  %5771 = phi double [ %5743, %5767 ], [ 0.000000e+00, %5763 ], [ 0.000000e+00, %5735 ], [ 0.000000e+00, %5747 ], [ %5743, %5751 ], [ %5694, %5755 ], [ %5694, %5759 ]
  %5772 = fmul double %5769, 5.868110e-01
  %5773 = call double @llvm.fmuladd.f64(double %5770, double 2.988390e-01, double %5772)
  %5774 = call double @llvm.fmuladd.f64(double %5771, double 1.143500e-01, double %5773)
  %5775 = fsub double %5698, %5774
  %5776 = fadd double %5770, %5775
  %5777 = fmul double %5776, 6.553500e+04
  %5778 = fptrunc double %5777 to float
  store float %5778, ptr %904, align 8, !tbaa !71
  %5779 = fadd double %5769, %5775
  %5780 = fmul double %5779, 6.553500e+04
  %5781 = fptrunc double %5780 to float
  store float %5781, ptr %905, align 4, !tbaa !71
  %5782 = fadd double %5771, %5775
  %5783 = fmul double %5782, 6.553500e+04
  %5784 = fptrunc double %5783 to float
  store float %5784, ptr %906, align 8, !tbaa !71
  %5785 = load float, ptr %902, align 4, !tbaa !81
  %5786 = load float, ptr %903, align 4, !tbaa !81
  %5787 = fcmp olt float %5785, %5786
  br i1 %5787, label %5788, label %6283

5788:                                             ; preds = %5768
  store float %5785, ptr %907, align 4, !tbaa !81
  br label %6283

5789:                                             ; preds = %1758
  %5790 = load float, ptr %896, align 4, !tbaa !81
  %5791 = fcmp oeq float %5790, 6.553500e+04
  br i1 %5791, label %6283, label %5792

5792:                                             ; preds = %5789
  %5793 = load float, ptr %897, align 4, !tbaa !81
  %5794 = fcmp oeq float %5793, 6.553500e+04
  br i1 %5794, label %5795, label %5796

5795:                                             ; preds = %5792
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %13, ptr noundef nonnull align 8 dereferenceable(56) %15, i64 56, i1 false), !tbaa.struct !67
  br label %6283

5796:                                             ; preds = %5792
  %5797 = load float, ptr %854, align 8, !tbaa !77
  %5798 = load float, ptr %855, align 4, !tbaa !79
  %5799 = load float, ptr %856, align 8, !tbaa !80
  %5800 = fpext float %5797 to double
  %5801 = fpext float %5798 to double
  %5802 = fpext float %5799 to double
  %5803 = fcmp ogt float %5798, %5799
  %5804 = select i1 %5803, double %5801, double %5802
  %5805 = fcmp olt double %5804, %5800
  %5806 = select i1 %5805, double %5800, double %5804
  %5807 = fcmp olt float %5798, %5799
  %5808 = select i1 %5807, double %5801, double %5802
  %5809 = fcmp ogt double %5808, %5800
  %5810 = select i1 %5809, double %5800, double %5808
  %5811 = fsub double %5806, %5810
  %5812 = fcmp oeq double %5811, 0.000000e+00
  br i1 %5812, label %5833, label %5813

5813:                                             ; preds = %5796
  %5814 = fptrunc double %5806 to float
  %5815 = fcmp oeq float %5797, %5814
  br i1 %5815, label %5816, label %5821

5816:                                             ; preds = %5813
  %5817 = fsub double %5801, %5802
  %5818 = fdiv double %5817, %5811
  %5819 = fadd double %5818, 6.000000e+00
  %5820 = call double @fmod(double noundef %5819, double noundef 6.000000e+00) #10
  br label %5833

5821:                                             ; preds = %5813
  %5822 = fcmp oeq float %5798, %5814
  br i1 %5822, label %5823, label %5827

5823:                                             ; preds = %5821
  %5824 = fsub double %5802, %5800
  %5825 = fdiv double %5824, %5811
  %5826 = fadd double %5825, 2.000000e+00
  br label %5833

5827:                                             ; preds = %5821
  %5828 = fcmp oeq float %5799, %5814
  br i1 %5828, label %5829, label %5833

5829:                                             ; preds = %5827
  %5830 = fsub double %5800, %5801
  %5831 = fdiv double %5830, %5811
  %5832 = fadd double %5831, 4.000000e+00
  br label %5833

5833:                                             ; preds = %5796, %5816, %5823, %5827, %5829
  %5834 = phi double [ %5820, %5816 ], [ %5826, %5823 ], [ %5832, %5829 ], [ 0.000000e+00, %5827 ], [ 0.000000e+00, %5796 ]
  %5835 = fdiv double %5834, 6.000000e+00
  %5836 = fmul double %5801, 5.868110e-01
  %5837 = call double @llvm.fmuladd.f64(double %5800, double 2.988390e-01, double %5836)
  %5838 = call double @llvm.fmuladd.f64(double %5802, double 1.143500e-01, double %5837)
  %5839 = fmul double %5838, 0x3EF0001000100010
  %5840 = load float, ptr %862, align 8, !tbaa !77
  %5841 = load float, ptr %863, align 4, !tbaa !79
  %5842 = load float, ptr %864, align 8, !tbaa !80
  %5843 = fpext float %5840 to double
  %5844 = fpext float %5841 to double
  %5845 = fpext float %5842 to double
  %5846 = fcmp ogt float %5841, %5842
  %5847 = select i1 %5846, double %5844, double %5845
  %5848 = fcmp olt double %5847, %5843
  %5849 = select i1 %5848, double %5843, double %5847
  %5850 = fcmp olt float %5841, %5842
  %5851 = select i1 %5850, double %5844, double %5845
  %5852 = fcmp ogt double %5851, %5843
  %5853 = select i1 %5852, double %5843, double %5851
  %5854 = fsub double %5849, %5853
  %5855 = fcmp une double %5854, 0.000000e+00
  %5856 = fptrunc double %5849 to float
  %5857 = fcmp oeq float %5840, %5856
  %5858 = and i1 %5855, %5857
  br i1 %5858, label %5859, label %5864

5859:                                             ; preds = %5833
  %5860 = fsub double %5844, %5845
  %5861 = fdiv double %5860, %5854
  %5862 = fadd double %5861, 6.000000e+00
  %5863 = call double @fmod(double noundef %5862, double noundef 6.000000e+00) #10
  br label %5864

5864:                                             ; preds = %5833, %5859
  %5865 = fmul double %5854, 0x3EF0001000100010
  %5866 = fmul double %5835, 6.000000e+00
  %5867 = call double @fmod(double noundef %5866, double noundef 2.000000e+00) #10
  %5868 = fadd double %5867, -1.000000e+00
  %5869 = call double @llvm.fabs.f64(double %5868)
  %5870 = fsub double 1.000000e+00, %5869
  %5871 = fmul double %5865, %5870
  %5872 = fcmp oge double %5866, 0.000000e+00
  %5873 = fcmp olt double %5866, 1.000000e+00
  %5874 = and i1 %5872, %5873
  br i1 %5874, label %5896, label %5875

5875:                                             ; preds = %5864
  %5876 = fcmp oge double %5866, 1.000000e+00
  %5877 = fcmp olt double %5866, 2.000000e+00
  %5878 = and i1 %5876, %5877
  br i1 %5878, label %5896, label %5879

5879:                                             ; preds = %5875
  %5880 = fcmp oge double %5866, 2.000000e+00
  %5881 = fcmp olt double %5866, 3.000000e+00
  %5882 = and i1 %5880, %5881
  br i1 %5882, label %5896, label %5883

5883:                                             ; preds = %5879
  %5884 = fcmp oge double %5866, 3.000000e+00
  %5885 = fcmp olt double %5866, 4.000000e+00
  %5886 = and i1 %5884, %5885
  br i1 %5886, label %5896, label %5887

5887:                                             ; preds = %5883
  %5888 = fcmp oge double %5866, 4.000000e+00
  %5889 = fcmp olt double %5866, 5.000000e+00
  %5890 = and i1 %5888, %5889
  br i1 %5890, label %5896, label %5891

5891:                                             ; preds = %5887
  %5892 = fcmp oge double %5866, 5.000000e+00
  %5893 = fcmp olt double %5866, 6.000000e+00
  %5894 = and i1 %5892, %5893
  br i1 %5894, label %5895, label %5896

5895:                                             ; preds = %5891
  br label %5896

5896:                                             ; preds = %5864, %5875, %5879, %5883, %5887, %5891, %5895
  %5897 = phi double [ 0.000000e+00, %5895 ], [ 0.000000e+00, %5891 ], [ %5871, %5864 ], [ %5865, %5875 ], [ %5865, %5879 ], [ %5871, %5883 ], [ 0.000000e+00, %5887 ]
  %5898 = phi double [ %5865, %5895 ], [ 0.000000e+00, %5891 ], [ %5865, %5864 ], [ %5871, %5875 ], [ 0.000000e+00, %5879 ], [ 0.000000e+00, %5883 ], [ %5871, %5887 ]
  %5899 = phi double [ %5871, %5895 ], [ 0.000000e+00, %5891 ], [ 0.000000e+00, %5864 ], [ 0.000000e+00, %5875 ], [ %5871, %5879 ], [ %5865, %5883 ], [ %5865, %5887 ]
  %5900 = fmul double %5897, 5.868110e-01
  %5901 = call double @llvm.fmuladd.f64(double %5898, double 2.988390e-01, double %5900)
  %5902 = call double @llvm.fmuladd.f64(double %5899, double 1.143500e-01, double %5901)
  %5903 = fsub double %5839, %5902
  %5904 = fadd double %5898, %5903
  %5905 = fmul double %5904, 6.553500e+04
  %5906 = fptrunc double %5905 to float
  store float %5906, ptr %898, align 8, !tbaa !71
  %5907 = fadd double %5897, %5903
  %5908 = fmul double %5907, 6.553500e+04
  %5909 = fptrunc double %5908 to float
  store float %5909, ptr %899, align 4, !tbaa !71
  %5910 = fadd double %5899, %5903
  %5911 = fmul double %5910, 6.553500e+04
  %5912 = fptrunc double %5911 to float
  store float %5912, ptr %900, align 8, !tbaa !71
  %5913 = load float, ptr %896, align 4, !tbaa !81
  %5914 = load float, ptr %897, align 4, !tbaa !81
  %5915 = fcmp olt float %5913, %5914
  br i1 %5915, label %5916, label %6283

5916:                                             ; preds = %5896
  store float %5913, ptr %901, align 4, !tbaa !81
  br label %6283

5917:                                             ; preds = %1758
  %5918 = load float, ptr %890, align 4, !tbaa !81
  %5919 = fcmp oeq float %5918, 6.553500e+04
  br i1 %5919, label %6283, label %5920

5920:                                             ; preds = %5917
  %5921 = load float, ptr %891, align 4, !tbaa !81
  %5922 = fcmp oeq float %5921, 6.553500e+04
  br i1 %5922, label %5923, label %5924

5923:                                             ; preds = %5920
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %13, ptr noundef nonnull align 8 dereferenceable(56) %15, i64 56, i1 false), !tbaa.struct !67
  br label %6283

5924:                                             ; preds = %5920
  %5925 = load float, ptr %854, align 8, !tbaa !77
  %5926 = load float, ptr %855, align 4, !tbaa !79
  %5927 = load float, ptr %856, align 8, !tbaa !80
  %5928 = fpext float %5925 to double
  %5929 = fpext float %5926 to double
  %5930 = fpext float %5927 to double
  %5931 = fcmp ogt float %5926, %5927
  %5932 = select i1 %5931, double %5929, double %5930
  %5933 = fcmp olt double %5932, %5928
  %5934 = select i1 %5933, double %5928, double %5932
  %5935 = fcmp olt float %5926, %5927
  %5936 = select i1 %5935, double %5929, double %5930
  %5937 = fcmp ogt double %5936, %5928
  %5938 = select i1 %5937, double %5928, double %5936
  %5939 = fsub double %5934, %5938
  %5940 = fcmp oeq double %5939, 0.000000e+00
  br i1 %5940, label %5961, label %5941

5941:                                             ; preds = %5924
  %5942 = fptrunc double %5934 to float
  %5943 = fcmp oeq float %5925, %5942
  br i1 %5943, label %5944, label %5949

5944:                                             ; preds = %5941
  %5945 = fsub double %5929, %5930
  %5946 = fdiv double %5945, %5939
  %5947 = fadd double %5946, 6.000000e+00
  %5948 = call double @fmod(double noundef %5947, double noundef 6.000000e+00) #10
  br label %5961

5949:                                             ; preds = %5941
  %5950 = fcmp oeq float %5926, %5942
  br i1 %5950, label %5951, label %5955

5951:                                             ; preds = %5949
  %5952 = fsub double %5930, %5928
  %5953 = fdiv double %5952, %5939
  %5954 = fadd double %5953, 2.000000e+00
  br label %5961

5955:                                             ; preds = %5949
  %5956 = fcmp oeq float %5927, %5942
  br i1 %5956, label %5957, label %5961

5957:                                             ; preds = %5955
  %5958 = fsub double %5928, %5929
  %5959 = fdiv double %5958, %5939
  %5960 = fadd double %5959, 4.000000e+00
  br label %5961

5961:                                             ; preds = %5924, %5944, %5951, %5955, %5957
  %5962 = phi double [ %5948, %5944 ], [ %5954, %5951 ], [ %5960, %5957 ], [ 0.000000e+00, %5955 ], [ 0.000000e+00, %5924 ]
  %5963 = fdiv double %5962, 6.000000e+00
  %5964 = fmul double %5939, 0x3EF0001000100010
  %5965 = load float, ptr %862, align 8, !tbaa !77
  %5966 = load float, ptr %863, align 4, !tbaa !79
  %5967 = load float, ptr %864, align 8, !tbaa !80
  %5968 = fpext float %5965 to double
  %5969 = fpext float %5966 to double
  %5970 = fpext float %5967 to double
  %5971 = fcmp ogt float %5966, %5967
  %5972 = select i1 %5971, double %5969, double %5970
  %5973 = fcmp olt double %5972, %5968
  %5974 = select i1 %5973, double %5968, double %5972
  %5975 = fcmp olt float %5966, %5967
  %5976 = select i1 %5975, double %5969, double %5970
  %5977 = fcmp ogt double %5976, %5968
  %5978 = select i1 %5977, double %5968, double %5976
  %5979 = fsub double %5974, %5978
  %5980 = fcmp une double %5979, 0.000000e+00
  %5981 = fptrunc double %5974 to float
  %5982 = fcmp oeq float %5965, %5981
  %5983 = and i1 %5980, %5982
  br i1 %5983, label %5984, label %5989

5984:                                             ; preds = %5961
  %5985 = fsub double %5969, %5970
  %5986 = fdiv double %5985, %5979
  %5987 = fadd double %5986, 6.000000e+00
  %5988 = call double @fmod(double noundef %5987, double noundef 6.000000e+00) #10
  br label %5989

5989:                                             ; preds = %5961, %5984
  %5990 = fmul double %5969, 5.868110e-01
  %5991 = call double @llvm.fmuladd.f64(double %5968, double 2.988390e-01, double %5990)
  %5992 = call double @llvm.fmuladd.f64(double %5970, double 1.143500e-01, double %5991)
  %5993 = fmul double %5992, 0x3EF0001000100010
  %5994 = fmul double %5963, 6.000000e+00
  %5995 = call double @fmod(double noundef %5994, double noundef 2.000000e+00) #10
  %5996 = fadd double %5995, -1.000000e+00
  %5997 = call double @llvm.fabs.f64(double %5996)
  %5998 = fsub double 1.000000e+00, %5997
  %5999 = fmul double %5964, %5998
  %6000 = fcmp oge double %5994, 0.000000e+00
  %6001 = fcmp olt double %5994, 1.000000e+00
  %6002 = and i1 %6000, %6001
  br i1 %6002, label %6024, label %6003

6003:                                             ; preds = %5989
  %6004 = fcmp oge double %5994, 1.000000e+00
  %6005 = fcmp olt double %5994, 2.000000e+00
  %6006 = and i1 %6004, %6005
  br i1 %6006, label %6024, label %6007

6007:                                             ; preds = %6003
  %6008 = fcmp oge double %5994, 2.000000e+00
  %6009 = fcmp olt double %5994, 3.000000e+00
  %6010 = and i1 %6008, %6009
  br i1 %6010, label %6024, label %6011

6011:                                             ; preds = %6007
  %6012 = fcmp oge double %5994, 3.000000e+00
  %6013 = fcmp olt double %5994, 4.000000e+00
  %6014 = and i1 %6012, %6013
  br i1 %6014, label %6024, label %6015

6015:                                             ; preds = %6011
  %6016 = fcmp oge double %5994, 4.000000e+00
  %6017 = fcmp olt double %5994, 5.000000e+00
  %6018 = and i1 %6016, %6017
  br i1 %6018, label %6024, label %6019

6019:                                             ; preds = %6015
  %6020 = fcmp oge double %5994, 5.000000e+00
  %6021 = fcmp olt double %5994, 6.000000e+00
  %6022 = and i1 %6020, %6021
  br i1 %6022, label %6023, label %6024

6023:                                             ; preds = %6019
  br label %6024

6024:                                             ; preds = %5989, %6003, %6007, %6011, %6015, %6019, %6023
  %6025 = phi double [ 0.000000e+00, %6023 ], [ 0.000000e+00, %6019 ], [ %5999, %5989 ], [ %5964, %6003 ], [ %5964, %6007 ], [ %5999, %6011 ], [ 0.000000e+00, %6015 ]
  %6026 = phi double [ %5964, %6023 ], [ 0.000000e+00, %6019 ], [ %5964, %5989 ], [ %5999, %6003 ], [ 0.000000e+00, %6007 ], [ 0.000000e+00, %6011 ], [ %5999, %6015 ]
  %6027 = phi double [ %5999, %6023 ], [ 0.000000e+00, %6019 ], [ 0.000000e+00, %5989 ], [ 0.000000e+00, %6003 ], [ %5999, %6007 ], [ %5964, %6011 ], [ %5964, %6015 ]
  %6028 = fmul double %6025, 5.868110e-01
  %6029 = call double @llvm.fmuladd.f64(double %6026, double 2.988390e-01, double %6028)
  %6030 = call double @llvm.fmuladd.f64(double %6027, double 1.143500e-01, double %6029)
  %6031 = fsub double %5993, %6030
  %6032 = fadd double %6026, %6031
  %6033 = fmul double %6032, 6.553500e+04
  %6034 = fptrunc double %6033 to float
  store float %6034, ptr %892, align 8, !tbaa !71
  %6035 = fadd double %6025, %6031
  %6036 = fmul double %6035, 6.553500e+04
  %6037 = fptrunc double %6036 to float
  store float %6037, ptr %893, align 4, !tbaa !71
  %6038 = fadd double %6027, %6031
  %6039 = fmul double %6038, 6.553500e+04
  %6040 = fptrunc double %6039 to float
  store float %6040, ptr %894, align 8, !tbaa !71
  %6041 = load float, ptr %890, align 4, !tbaa !81
  %6042 = load float, ptr %891, align 4, !tbaa !81
  %6043 = fcmp olt float %6041, %6042
  br i1 %6043, label %6044, label %6283

6044:                                             ; preds = %6024
  store float %6041, ptr %895, align 4, !tbaa !81
  br label %6283

6045:                                             ; preds = %1758
  %6046 = load float, ptr %884, align 4, !tbaa !81
  %6047 = fcmp oeq float %6046, 6.553500e+04
  br i1 %6047, label %6283, label %6048

6048:                                             ; preds = %6045
  %6049 = load float, ptr %885, align 4, !tbaa !81
  %6050 = fcmp oeq float %6049, 6.553500e+04
  br i1 %6050, label %6051, label %6052

6051:                                             ; preds = %6048
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %13, ptr noundef nonnull align 8 dereferenceable(56) %15, i64 56, i1 false), !tbaa.struct !67
  br label %6283

6052:                                             ; preds = %6048
  %6053 = load float, ptr %854, align 8, !tbaa !77
  %6054 = load float, ptr %855, align 4, !tbaa !79
  %6055 = load float, ptr %856, align 8, !tbaa !80
  %6056 = fpext float %6053 to double
  %6057 = fpext float %6054 to double
  %6058 = fpext float %6055 to double
  %6059 = fcmp ogt float %6054, %6055
  %6060 = select i1 %6059, double %6057, double %6058
  %6061 = fcmp olt double %6060, %6056
  %6062 = select i1 %6061, double %6056, double %6060
  %6063 = fcmp olt float %6054, %6055
  %6064 = select i1 %6063, double %6057, double %6058
  %6065 = fcmp ogt double %6064, %6056
  %6066 = select i1 %6065, double %6056, double %6064
  %6067 = fsub double %6062, %6066
  %6068 = fcmp une double %6067, 0.000000e+00
  %6069 = fptrunc double %6062 to float
  %6070 = fcmp oeq float %6053, %6069
  %6071 = and i1 %6068, %6070
  br i1 %6071, label %6072, label %6077

6072:                                             ; preds = %6052
  %6073 = fsub double %6057, %6058
  %6074 = fdiv double %6073, %6067
  %6075 = fadd double %6074, 6.000000e+00
  %6076 = call double @fmod(double noundef %6075, double noundef 6.000000e+00) #10
  br label %6077

6077:                                             ; preds = %6052, %6072
  %6078 = fmul double %6057, 5.868110e-01
  %6079 = call double @llvm.fmuladd.f64(double %6056, double 2.988390e-01, double %6078)
  %6080 = call double @llvm.fmuladd.f64(double %6058, double 1.143500e-01, double %6079)
  %6081 = fmul double %6080, 0x3EF0001000100010
  %6082 = load float, ptr %862, align 8, !tbaa !77
  %6083 = load float, ptr %863, align 4, !tbaa !79
  %6084 = load float, ptr %864, align 8, !tbaa !80
  %6085 = fpext float %6082 to double
  %6086 = fpext float %6083 to double
  %6087 = fpext float %6084 to double
  %6088 = fcmp ogt float %6083, %6084
  %6089 = select i1 %6088, double %6086, double %6087
  %6090 = fcmp olt double %6089, %6085
  %6091 = select i1 %6090, double %6085, double %6089
  %6092 = fcmp olt float %6083, %6084
  %6093 = select i1 %6092, double %6086, double %6087
  %6094 = fcmp ogt double %6093, %6085
  %6095 = select i1 %6094, double %6085, double %6093
  %6096 = fsub double %6091, %6095
  %6097 = fcmp oeq double %6096, 0.000000e+00
  br i1 %6097, label %6118, label %6098

6098:                                             ; preds = %6077
  %6099 = fptrunc double %6091 to float
  %6100 = fcmp oeq float %6082, %6099
  br i1 %6100, label %6101, label %6106

6101:                                             ; preds = %6098
  %6102 = fsub double %6086, %6087
  %6103 = fdiv double %6102, %6096
  %6104 = fadd double %6103, 6.000000e+00
  %6105 = call double @fmod(double noundef %6104, double noundef 6.000000e+00) #10
  br label %6118

6106:                                             ; preds = %6098
  %6107 = fcmp oeq float %6083, %6099
  br i1 %6107, label %6108, label %6112

6108:                                             ; preds = %6106
  %6109 = fsub double %6087, %6085
  %6110 = fdiv double %6109, %6096
  %6111 = fadd double %6110, 2.000000e+00
  br label %6118

6112:                                             ; preds = %6106
  %6113 = fcmp oeq float %6084, %6099
  br i1 %6113, label %6114, label %6118

6114:                                             ; preds = %6112
  %6115 = fsub double %6085, %6086
  %6116 = fdiv double %6115, %6096
  %6117 = fadd double %6116, 4.000000e+00
  br label %6118

6118:                                             ; preds = %6077, %6101, %6108, %6112, %6114
  %6119 = phi double [ %6105, %6101 ], [ %6111, %6108 ], [ %6117, %6114 ], [ 0.000000e+00, %6112 ], [ 0.000000e+00, %6077 ]
  %6120 = fdiv double %6119, 6.000000e+00
  %6121 = fmul double %6096, 0x3EF0001000100010
  %6122 = fmul double %6120, 6.000000e+00
  %6123 = call double @fmod(double noundef %6122, double noundef 2.000000e+00) #10
  %6124 = fadd double %6123, -1.000000e+00
  %6125 = call double @llvm.fabs.f64(double %6124)
  %6126 = fsub double 1.000000e+00, %6125
  %6127 = fmul double %6121, %6126
  %6128 = fcmp oge double %6122, 0.000000e+00
  %6129 = fcmp olt double %6122, 1.000000e+00
  %6130 = and i1 %6128, %6129
  br i1 %6130, label %6152, label %6131

6131:                                             ; preds = %6118
  %6132 = fcmp oge double %6122, 1.000000e+00
  %6133 = fcmp olt double %6122, 2.000000e+00
  %6134 = and i1 %6132, %6133
  br i1 %6134, label %6152, label %6135

6135:                                             ; preds = %6131
  %6136 = fcmp oge double %6122, 2.000000e+00
  %6137 = fcmp olt double %6122, 3.000000e+00
  %6138 = and i1 %6136, %6137
  br i1 %6138, label %6152, label %6139

6139:                                             ; preds = %6135
  %6140 = fcmp oge double %6122, 3.000000e+00
  %6141 = fcmp olt double %6122, 4.000000e+00
  %6142 = and i1 %6140, %6141
  br i1 %6142, label %6152, label %6143

6143:                                             ; preds = %6139
  %6144 = fcmp oge double %6122, 4.000000e+00
  %6145 = fcmp olt double %6122, 5.000000e+00
  %6146 = and i1 %6144, %6145
  br i1 %6146, label %6152, label %6147

6147:                                             ; preds = %6143
  %6148 = fcmp oge double %6122, 5.000000e+00
  %6149 = fcmp olt double %6122, 6.000000e+00
  %6150 = and i1 %6148, %6149
  br i1 %6150, label %6151, label %6152

6151:                                             ; preds = %6147
  br label %6152

6152:                                             ; preds = %6118, %6131, %6135, %6139, %6143, %6147, %6151
  %6153 = phi double [ 0.000000e+00, %6151 ], [ 0.000000e+00, %6147 ], [ %6127, %6118 ], [ %6121, %6131 ], [ %6121, %6135 ], [ %6127, %6139 ], [ 0.000000e+00, %6143 ]
  %6154 = phi double [ %6121, %6151 ], [ 0.000000e+00, %6147 ], [ %6121, %6118 ], [ %6127, %6131 ], [ 0.000000e+00, %6135 ], [ 0.000000e+00, %6139 ], [ %6127, %6143 ]
  %6155 = phi double [ %6127, %6151 ], [ 0.000000e+00, %6147 ], [ 0.000000e+00, %6118 ], [ 0.000000e+00, %6131 ], [ %6127, %6135 ], [ %6121, %6139 ], [ %6121, %6143 ]
  %6156 = fmul double %6153, 5.868110e-01
  %6157 = call double @llvm.fmuladd.f64(double %6154, double 2.988390e-01, double %6156)
  %6158 = call double @llvm.fmuladd.f64(double %6155, double 1.143500e-01, double %6157)
  %6159 = fsub double %6081, %6158
  %6160 = fadd double %6154, %6159
  %6161 = fmul double %6160, 6.553500e+04
  %6162 = fptrunc double %6161 to float
  store float %6162, ptr %886, align 8, !tbaa !71
  %6163 = fadd double %6153, %6159
  %6164 = fmul double %6163, 6.553500e+04
  %6165 = fptrunc double %6164 to float
  store float %6165, ptr %887, align 4, !tbaa !71
  %6166 = fadd double %6155, %6159
  %6167 = fmul double %6166, 6.553500e+04
  %6168 = fptrunc double %6167 to float
  store float %6168, ptr %888, align 8, !tbaa !71
  %6169 = load float, ptr %884, align 4, !tbaa !81
  %6170 = load float, ptr %885, align 4, !tbaa !81
  %6171 = fcmp olt float %6169, %6170
  br i1 %6171, label %6172, label %6283

6172:                                             ; preds = %6152
  store float %6169, ptr %889, align 4, !tbaa !81
  br label %6283

6173:                                             ; preds = %1758, %1758
  %6174 = load float, ptr %862, align 8, !tbaa !77
  store float %6174, ptr %883, align 8, !tbaa !77
  br label %6283

6175:                                             ; preds = %1758, %1758
  %6176 = load float, ptr %863, align 4, !tbaa !79
  store float %6176, ptr %882, align 4, !tbaa !79
  br label %6283

6177:                                             ; preds = %1758, %1758
  %6178 = load float, ptr %864, align 8, !tbaa !80
  store float %6178, ptr %881, align 8, !tbaa !80
  br label %6283

6179:                                             ; preds = %1758
  %6180 = load i32, ptr %876, align 8, !tbaa !91
  %6181 = icmp eq i32 %6180, 0
  br i1 %6181, label %6182, label %6213

6182:                                             ; preds = %6179
  %6183 = load i32, ptr %879, align 4, !tbaa !90
  %6184 = icmp eq i32 %6183, 2
  %6185 = load float, ptr %862, align 8, !tbaa !77
  br i1 %6184, label %6186, label %6193

6186:                                             ; preds = %6182
  %6187 = fcmp ugt float %6185, 0.000000e+00
  br i1 %6187, label %6188, label %6209

6188:                                             ; preds = %6186
  %6189 = fcmp ult float %6185, 6.553500e+04
  br i1 %6189, label %6190, label %6209

6190:                                             ; preds = %6188
  %6191 = fadd float %6185, 5.000000e-01
  %6192 = fptoui float %6191 to i16
  br label %6209

6193:                                             ; preds = %6182
  %6194 = fpext float %6185 to double
  %6195 = load float, ptr %863, align 4, !tbaa !79
  %6196 = fpext float %6195 to double
  %6197 = fmul double %6196, 0x3FE6E29307AF20EA
  %6198 = call double @llvm.fmuladd.f64(double %6194, double 2.126560e-01, double %6197)
  %6199 = load float, ptr %864, align 8, !tbaa !80
  %6200 = fpext float %6199 to double
  %6201 = call double @llvm.fmuladd.f64(double %6200, double 7.218600e-02, double %6198)
  %6202 = fptrunc double %6201 to float
  %6203 = fcmp ugt float %6202, 0.000000e+00
  br i1 %6203, label %6204, label %6209

6204:                                             ; preds = %6193
  %6205 = fcmp ult float %6202, 6.553500e+04
  br i1 %6205, label %6206, label %6209

6206:                                             ; preds = %6204
  %6207 = fadd float %6202, 5.000000e-01
  %6208 = fptoui float %6207 to i16
  br label %6209

6209:                                             ; preds = %6186, %6188, %6190, %6193, %6204, %6206
  %6210 = phi i16 [ %6192, %6190 ], [ 0, %6186 ], [ -1, %6188 ], [ %6208, %6206 ], [ 0, %6193 ], [ -1, %6204 ]
  %6211 = xor i16 %6210, -1
  %6212 = uitofp i16 %6211 to float
  store float %6212, ptr %880, align 4, !tbaa !81
  br label %6283

6213:                                             ; preds = %6179
  %6214 = load float, ptr %877, align 4, !tbaa !81
  store float %6214, ptr %878, align 4, !tbaa !81
  br label %6283

6215:                                             ; preds = %1758
  %6216 = load i32, ptr %871, align 4, !tbaa !90
  switch i32 %6216, label %6217 [
    i32 12, label %6279
    i32 13, label %6230
  ]

6217:                                             ; preds = %6215
  %6218 = load float, ptr %862, align 8, !tbaa !77
  %6219 = fpext float %6218 to double
  %6220 = fmul double %6219, 0x3EF0001000100010
  %6221 = fptrunc double %6220 to float
  %6222 = load float, ptr %863, align 4, !tbaa !79
  %6223 = fpext float %6222 to double
  %6224 = fmul double %6223, 0x3EF0001000100010
  %6225 = fptrunc double %6224 to float
  %6226 = load float, ptr %864, align 8, !tbaa !80
  %6227 = fpext float %6226 to double
  %6228 = fmul double %6227, 0x3EF0001000100010
  %6229 = fptrunc double %6228 to float
  br label %6237

6230:                                             ; preds = %6215
  %6231 = load float, ptr %862, align 8, !tbaa !77
  %6232 = call float @DecodePixelGamma(float noundef %6231) #11
  %6233 = load float, ptr %863, align 4, !tbaa !79
  %6234 = call float @DecodePixelGamma(float noundef %6233) #11
  %6235 = load float, ptr %864, align 8, !tbaa !80
  %6236 = call float @DecodePixelGamma(float noundef %6235) #11
  br label %6237

6237:                                             ; preds = %6230, %6217
  %6238 = phi float [ %6229, %6217 ], [ %6236, %6230 ]
  %6239 = phi float [ %6225, %6217 ], [ %6234, %6230 ]
  %6240 = phi float [ %6221, %6217 ], [ %6232, %6230 ]
  %6241 = call float @llvm.fabs.f32(float %6240)
  %6242 = fpext float %6241 to double
  %6243 = fcmp olt double %6242, 1.000000e-15
  br i1 %6243, label %6244, label %6253

6244:                                             ; preds = %6237
  %6245 = call float @llvm.fabs.f32(float %6239)
  %6246 = fpext float %6245 to double
  %6247 = fcmp olt double %6246, 1.000000e-15
  br i1 %6247, label %6248, label %6253

6248:                                             ; preds = %6244
  %6249 = call float @llvm.fabs.f32(float %6238)
  %6250 = fpext float %6249 to double
  %6251 = fcmp olt double %6250, 1.000000e-15
  br i1 %6251, label %6252, label %6253

6252:                                             ; preds = %6248
  store float 6.553500e+04, ptr %873, align 8, !tbaa !84
  br label %6279

6253:                                             ; preds = %6248, %6244, %6237
  %6254 = fsub float 1.000000e+00, %6240
  %6255 = fsub float 1.000000e+00, %6239
  %6256 = fsub float 1.000000e+00, %6238
  %6257 = fcmp olt float %6255, %6254
  %6258 = select i1 %6257, float %6255, float %6254
  %6259 = fcmp olt float %6256, %6258
  %6260 = select i1 %6259, float %6256, float %6258
  %6261 = fsub float %6254, %6260
  %6262 = fpext float %6261 to double
  %6263 = fpext float %6260 to double
  %6264 = fsub double 1.000000e+00, %6263
  %6265 = fdiv double %6262, %6264
  %6266 = fptrunc double %6265 to float
  %6267 = fsub float %6255, %6260
  %6268 = fpext float %6267 to double
  %6269 = fdiv double %6268, %6264
  %6270 = fptrunc double %6269 to float
  %6271 = fsub float %6256, %6260
  %6272 = fpext float %6271 to double
  %6273 = fdiv double %6272, %6264
  %6274 = fptrunc double %6273 to float
  store i32 12, ptr %871, align 4, !tbaa !90
  %6275 = fmul float %6266, 6.553500e+04
  store float %6275, ptr %862, align 8, !tbaa !77
  %6276 = fmul float %6270, 6.553500e+04
  store float %6276, ptr %863, align 4, !tbaa !79
  %6277 = fmul float %6274, 6.553500e+04
  store float %6277, ptr %864, align 8, !tbaa !80
  %6278 = fmul float %6260, 6.553500e+04
  store float %6278, ptr %872, align 8, !tbaa !84
  br label %6279

6279:                                             ; preds = %6253, %6252, %6215
  %6280 = load float, ptr %874, align 8, !tbaa !84
  %6281 = fsub float 6.553500e+04, %6280
  store float %6281, ptr %875, align 8, !tbaa !84
  br label %6283

6282:                                             ; preds = %1758, %1758, %1758
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %13, ptr noundef nonnull align 8 dereferenceable(56) %15, i64 56, i1 false), !tbaa.struct !67
  br label %6283

6283:                                             ; preds = %5520, %5484, %5476, %5424, %5411, %5355, %5354, %5344, %5324, %5291, %5248, %5105, %5045, %4846, %4816, %4694, %4623, %4610, %4545, %4529, %4461, %4453, %4403, %4399, %4346, %4146, %4038, %4013, %4009, %3884, %3782, %3769, %3766, %3714, %3713, %3666, %3663, %3611, %3610, %3562, %3558, %3514, %3476, %3430, %3426, %3382, %3344, %3290, %3286, %3224, %3174, %3157, %3153, %3100, %3023, %2995, %2991, %2894, %2808, %2794, %2790, %2753, %2690, %2668, %2664, %2588, %2514, %2500, %2496, %2420, %2346, %2339, %2335, %2306, %2258, %2246, %2188, %2180, %2149, %2141, %2110, %2101, %2054, %2045, %1998, %1991, %1952, %1945, %1906, %1893, %1839, %1838, %1822, %1768, %1767, %1762, %1759, %5644, %5529, %5559, %1758, %6152, %6172, %6045, %6024, %6044, %5917, %5896, %5916, %5789, %5768, %5788, %5661, %5307, %5305, %5306, %6282, %6279, %6213, %6209, %6177, %6175, %6173, %6051, %5923, %5795, %5667, %4544, %4543, %3304, %3303, %2344, %2343, %1763
  %6284 = load i32, ptr %30, align 4, !tbaa !54
  %6285 = icmp eq i32 %6284, 12
  br i1 %6285, label %6286, label %6295

6286:                                             ; preds = %6283
  %6287 = load float, ptr %1523, align 8, !tbaa !77
  %6288 = fsub float 6.553500e+04, %6287
  store float %6288, ptr %1523, align 8, !tbaa !77
  %6289 = load float, ptr %1524, align 4, !tbaa !79
  %6290 = fsub float 6.553500e+04, %6289
  store float %6290, ptr %1524, align 4, !tbaa !79
  %6291 = load float, ptr %1525, align 8, !tbaa !80
  %6292 = fsub float 6.553500e+04, %6291
  store float %6292, ptr %1525, align 8, !tbaa !80
  %6293 = load float, ptr %1526, align 8, !tbaa !84
  %6294 = fsub float 6.553500e+04, %6293
  store float %6294, ptr %1526, align 8, !tbaa !84
  br label %6295

6295:                                             ; preds = %6286, %6283
  %6296 = load float, ptr %1527, align 8, !tbaa !77
  %6297 = fcmp ugt float %6296, 0.000000e+00
  br i1 %6297, label %6298, label %6303

6298:                                             ; preds = %6295
  %6299 = fcmp ult float %6296, 6.553500e+04
  br i1 %6299, label %6300, label %6303

6300:                                             ; preds = %6298
  %6301 = fadd float %6296, 5.000000e-01
  %6302 = fptoui float %6301 to i16
  br label %6303

6303:                                             ; preds = %6295, %6298, %6300
  %6304 = phi i16 [ %6302, %6300 ], [ 0, %6295 ], [ -1, %6298 ]
  store i16 %6304, ptr %1608, align 2, !tbaa !75
  %6305 = load float, ptr %1528, align 4, !tbaa !79
  %6306 = fcmp ugt float %6305, 0.000000e+00
  br i1 %6306, label %6307, label %6312

6307:                                             ; preds = %6303
  %6308 = fcmp ult float %6305, 6.553500e+04
  br i1 %6308, label %6309, label %6312

6309:                                             ; preds = %6307
  %6310 = fadd float %6305, 5.000000e-01
  %6311 = fptoui float %6310 to i16
  br label %6312

6312:                                             ; preds = %6303, %6307, %6309
  %6313 = phi i16 [ %6311, %6309 ], [ 0, %6303 ], [ -1, %6307 ]
  store i16 %6313, ptr %1611, align 2, !tbaa !76
  %6314 = load float, ptr %1529, align 8, !tbaa !80
  %6315 = fcmp ugt float %6314, 0.000000e+00
  br i1 %6315, label %6316, label %6321

6316:                                             ; preds = %6312
  %6317 = fcmp ult float %6314, 6.553500e+04
  br i1 %6317, label %6318, label %6321

6318:                                             ; preds = %6316
  %6319 = fadd float %6314, 5.000000e-01
  %6320 = fptoui float %6319 to i16
  br label %6321

6321:                                             ; preds = %6312, %6316, %6318
  %6322 = phi i16 [ %6320, %6318 ], [ 0, %6312 ], [ -1, %6316 ]
  store i16 %6322, ptr %1598, align 2, !tbaa !74
  %6323 = load float, ptr %1530, align 4, !tbaa !81
  %6324 = fcmp ugt float %6323, 0.000000e+00
  br i1 %6324, label %6325, label %6330

6325:                                             ; preds = %6321
  %6326 = fcmp ult float %6323, 6.553500e+04
  br i1 %6326, label %6327, label %6330

6327:                                             ; preds = %6325
  %6328 = fadd float %6323, 5.000000e-01
  %6329 = fptoui float %6328 to i16
  br label %6330

6330:                                             ; preds = %6321, %6325, %6327
  %6331 = phi i16 [ %6329, %6327 ], [ 0, %6321 ], [ -1, %6325 ]
  %6332 = getelementptr inbounds %struct._PixelPacket, ptr %1598, i64 0, i32 3
  store i16 %6331, ptr %6332, align 2, !tbaa !82
  %6333 = icmp ne i32 %6284, 12
  %6334 = select i1 %6333, i1 true, i1 %1594
  br i1 %6334, label %6346, label %6335

6335:                                             ; preds = %6330
  %6336 = getelementptr inbounds i16, ptr %1585, i64 %1599
  %6337 = load float, ptr %1531, align 8, !tbaa !84
  %6338 = fcmp ugt float %6337, 0.000000e+00
  br i1 %6338, label %6339, label %6344

6339:                                             ; preds = %6335
  %6340 = fcmp ult float %6337, 6.553500e+04
  br i1 %6340, label %6341, label %6344

6341:                                             ; preds = %6339
  %6342 = fadd float %6337, 5.000000e-01
  %6343 = fptoui float %6342 to i16
  br label %6344

6344:                                             ; preds = %6335, %6339, %6341
  %6345 = phi i16 [ %6343, %6341 ], [ 0, %6335 ], [ -1, %6339 ]
  store i16 %6345, ptr %6336, align 2, !tbaa !85
  br label %6346

6346:                                             ; preds = %6344, %6330
  %6347 = getelementptr inbounds %struct._PixelPacket, ptr %1600, i64 1
  %6348 = load i64, ptr %861, align 8, !tbaa !56
  %6349 = getelementptr inbounds %struct._PixelPacket, ptr %1579, i64 %6348
  %6350 = icmp ult ptr %6347, %6349
  %6351 = select i1 %6350, ptr %6347, ptr %1579
  br label %6352

6352:                                             ; preds = %1712, %1724, %1601, %6346
  %6353 = phi ptr [ %6351, %6346 ], [ %1600, %1601 ], [ %1600, %1724 ], [ %1600, %1712 ]
  %6354 = getelementptr inbounds %struct._PixelPacket, ptr %1598, i64 1
  %6355 = add nuw nsw i64 %1599, 1
  %6356 = load i64, ptr %852, align 8, !tbaa !56
  %6357 = icmp slt i64 %6355, %6356
  br i1 %6357, label %1597, label %6358, !llvm.loop !92

6358:                                             ; preds = %6352, %1603, %1584
  %6359 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %841, ptr noundef nonnull %26) #11
  %6360 = icmp ne i32 %6359, 0
  %6361 = zext i1 %6360 to i32
  %6362 = load ptr, ptr %1550, align 8, !tbaa !58
  %6363 = icmp eq ptr %6362, null
  br i1 %6363, label %6373, label %6364

6364:                                             ; preds = %6358
  %6365 = add nsw i64 %1556, 1
  %6366 = load i64, ptr %842, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %7) #10
  %6367 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %7, i64 noundef 4096, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.3, ptr noundef nonnull %1551) #10
  %6368 = load ptr, ptr %1550, align 8, !tbaa !58
  %6369 = load ptr, ptr %1552, align 8, !tbaa !59
  %6370 = call i32 %6368(ptr noundef nonnull %7, i64 noundef %1556, i64 noundef %6366, ptr noundef %6369) #10
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %7) #10
  %6371 = icmp eq i32 %6370, 0
  %6372 = select i1 %6371, i32 0, i32 %6361
  br label %6373

6373:                                             ; preds = %6358, %6364, %1578, %1572, %1562, %1560, %1554
  %6374 = phi i64 [ %1556, %1554 ], [ %1556, %1560 ], [ %1556, %1562 ], [ %1556, %1572 ], [ %1556, %1578 ], [ %6365, %6364 ], [ %1556, %6358 ]
  %6375 = phi i32 [ 0, %1554 ], [ 1, %1560 ], [ 1, %1562 ], [ 0, %1572 ], [ 0, %1578 ], [ %6372, %6364 ], [ %6361, %6358 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %13) #10
  %6376 = add nuw nsw i64 %1557, 1
  %6377 = load i64, ptr %842, align 8, !tbaa !57
  %6378 = icmp slt i64 %6376, %6377
  br i1 %6378, label %1554, label %6379, !llvm.loop !93

6379:                                             ; preds = %6373, %839
  %6380 = phi i32 [ 1, %839 ], [ %6375, %6373 ]
  %6381 = call ptr @DestroyCacheView(ptr noundef %840) #10
  %6382 = call ptr @DestroyCacheView(ptr noundef %841) #10
  %6383 = icmp eq ptr %827, null
  br i1 %6383, label %6386, label %6384

6384:                                             ; preds = %6379
  %6385 = call ptr @DestroyImage(ptr noundef nonnull %827) #10
  br label %6388

6386:                                             ; preds = %6379
  %6387 = call ptr @DestroyImage(ptr noundef %828) #10
  br label %6388

6388:                                             ; preds = %6384, %6386, %835, %25, %22, %401, %730, %120
  %6389 = phi i32 [ 0, %730 ], [ 0, %401 ], [ %121, %120 ], [ 0, %22 ], [ 0, %25 ], [ 1, %835 ], [ %6380, %6386 ], [ %6380, %6384 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %9) #10
  ret i32 %6389
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @SetImageStorageClass(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SetImageColorspace(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: hot
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: hot
declare ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #2

declare ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #2

declare ptr @CopyMagickMemory(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: hot
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #2

declare ptr @DestroyImage(ptr noundef) local_unnamed_addr #2

declare i32 @SetImageAlphaChannel(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @SetGeometryInfo(ptr noundef) local_unnamed_addr #2

declare ptr @GetImageArtifact(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ParseGeometry(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #4

declare ptr @AcquireResampleFilter(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @SetResampleFilter(ptr noundef, i32 noundef, double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: hot
declare ptr @QueueCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

declare void @ScaleResampleFilter(ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #2

declare i32 @ResamplePixelColor(ptr noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #2

declare ptr @DestroyResampleFilter(ptr noundef) local_unnamed_addr #2

declare i32 @InterpolateMagickPixelPacket(ptr noundef, ptr noundef, i32 noundef, double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IsMagickTrue(ptr noundef) local_unnamed_addr #2

declare i32 @AccelerateCompositeImage(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

declare i32 @GetOneVirtualMagickPixel(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @CompositeMinus(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #7 {
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %6 = load float, ptr %5, align 4, !tbaa !81
  %7 = fpext float %6 to double
  %8 = tail call double @llvm.fmuladd.f64(double %7, double 0xBEF0001000100010, double 1.000000e+00)
  %9 = fptrunc double %8 to float
  %10 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %11 = load float, ptr %10, align 4, !tbaa !81
  %12 = fpext float %11 to double
  %13 = tail call double @llvm.fmuladd.f64(double %12, double 0xBEF0001000100010, double 1.000000e+00)
  %14 = fptrunc double %13 to float
  %15 = and i32 %2, 256
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %92, label %17

17:                                               ; preds = %4
  %18 = fadd float %9, %14
  %19 = fneg float %9
  %20 = tail call float @llvm.fmuladd.f32(float %19, float %14, float %18)
  %21 = fcmp olt float %20, 0.000000e+00
  %22 = fcmp ogt float %20, 1.000000e+00
  %23 = select i1 %22, float 1.000000e+00, float %20
  %24 = select i1 %21, float 0.000000e+00, float %23
  %25 = fpext float %24 to double
  %26 = fsub double 1.000000e+00, %25
  %27 = fmul double %26, 6.553500e+04
  %28 = fptrunc double %27 to float
  %29 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  store float %28, ptr %29, align 4, !tbaa !81
  %30 = fcmp olt float %24, 0.000000e+00
  %31 = select i1 %30, double -1.000000e+00, double 1.000000e+00
  %32 = fmul double %31, %25
  %33 = fcmp ult double %32, 1.000000e-15
  %34 = fdiv double 1.000000e+00, %25
  %35 = fdiv double %31, 1.000000e-15
  %36 = select i1 %33, double %35, double %34
  %37 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %38 = load float, ptr %37, align 8, !tbaa !77
  %39 = fmul float %38, %9
  %40 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %41 = load float, ptr %40, align 8, !tbaa !77
  %42 = fmul float %41, %14
  %43 = fadd float %39, %42
  %44 = fmul float %42, -2.000000e+00
  %45 = tail call float @llvm.fmuladd.f32(float %44, float %9, float %43)
  %46 = fpext float %45 to double
  %47 = fmul double %36, %46
  %48 = fptrunc double %47 to float
  %49 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  store float %48, ptr %49, align 8, !tbaa !77
  %50 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %51 = load float, ptr %50, align 4, !tbaa !79
  %52 = fmul float %51, %9
  %53 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %54 = load float, ptr %53, align 4, !tbaa !79
  %55 = fmul float %54, %14
  %56 = fadd float %52, %55
  %57 = fmul float %55, -2.000000e+00
  %58 = tail call float @llvm.fmuladd.f32(float %57, float %9, float %56)
  %59 = fpext float %58 to double
  %60 = fmul double %36, %59
  %61 = fptrunc double %60 to float
  %62 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 6
  store float %61, ptr %62, align 4, !tbaa !79
  %63 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %64 = load float, ptr %63, align 8, !tbaa !80
  %65 = fmul float %64, %9
  %66 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %67 = load float, ptr %66, align 8, !tbaa !80
  %68 = fmul float %67, %14
  %69 = fadd float %65, %68
  %70 = fmul float %68, -2.000000e+00
  %71 = tail call float @llvm.fmuladd.f32(float %70, float %9, float %69)
  %72 = fpext float %71 to double
  %73 = fmul double %36, %72
  %74 = fptrunc double %73 to float
  %75 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  store float %74, ptr %75, align 8, !tbaa !80
  %76 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %77 = load i32, ptr %76, align 4, !tbaa !90
  %78 = icmp eq i32 %77, 12
  br i1 %78, label %79, label %148

79:                                               ; preds = %17
  %80 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %81 = load float, ptr %80, align 8, !tbaa !84
  %82 = fmul float %81, %9
  %83 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %84 = load float, ptr %83, align 8, !tbaa !84
  %85 = fmul float %84, %14
  %86 = fadd float %82, %85
  %87 = fmul float %85, -2.000000e+00
  %88 = tail call float @llvm.fmuladd.f32(float %87, float %9, float %86)
  %89 = fpext float %88 to double
  %90 = fmul double %36, %89
  %91 = fptrunc double %90 to float
  br label %145

92:                                               ; preds = %4
  %93 = and i32 %2, 8
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %102, label %95

95:                                               ; preds = %92
  %96 = fsub float %9, %14
  %97 = fpext float %96 to double
  %98 = fsub double 1.000000e+00, %97
  %99 = fmul double %98, 6.553500e+04
  %100 = fptrunc double %99 to float
  %101 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  store float %100, ptr %101, align 4, !tbaa !81
  br label %102

102:                                              ; preds = %95, %92
  %103 = and i32 %2, 1
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %112, label %105

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %107 = load float, ptr %106, align 8, !tbaa !77
  %108 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %109 = load float, ptr %108, align 8, !tbaa !77
  %110 = fsub float %107, %109
  %111 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  store float %110, ptr %111, align 8, !tbaa !77
  br label %112

112:                                              ; preds = %105, %102
  %113 = and i32 %2, 2
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %122, label %115

115:                                              ; preds = %112
  %116 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %117 = load float, ptr %116, align 4, !tbaa !79
  %118 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %119 = load float, ptr %118, align 4, !tbaa !79
  %120 = fsub float %117, %119
  %121 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 6
  store float %120, ptr %121, align 4, !tbaa !79
  br label %122

122:                                              ; preds = %115, %112
  %123 = and i32 %2, 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %132, label %125

125:                                              ; preds = %122
  %126 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %127 = load float, ptr %126, align 8, !tbaa !80
  %128 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %129 = load float, ptr %128, align 8, !tbaa !80
  %130 = fsub float %127, %129
  %131 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  store float %130, ptr %131, align 8, !tbaa !80
  br label %132

132:                                              ; preds = %125, %122
  %133 = and i32 %2, 32
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %148, label %135

135:                                              ; preds = %132
  %136 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %137 = load i32, ptr %136, align 4, !tbaa !90
  %138 = icmp eq i32 %137, 12
  br i1 %138, label %139, label %148

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %141 = load float, ptr %140, align 8, !tbaa !84
  %142 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %143 = load float, ptr %142, align 8, !tbaa !84
  %144 = fsub float %141, %143
  br label %145

145:                                              ; preds = %79, %139
  %146 = phi float [ %144, %139 ], [ %91, %79 ]
  %147 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  store float %146, ptr %147, align 8, !tbaa !84
  br label %148

148:                                              ; preds = %145, %132, %135, %17
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @CompositeDivide(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #7 {
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %6 = load float, ptr %5, align 4, !tbaa !81
  %7 = fpext float %6 to double
  %8 = tail call double @llvm.fmuladd.f64(double %7, double 0xBEF0001000100010, double 1.000000e+00)
  %9 = fptrunc double %8 to float
  %10 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %11 = load float, ptr %10, align 4, !tbaa !81
  %12 = fpext float %11 to double
  %13 = tail call double @llvm.fmuladd.f64(double %12, double 0xBEF0001000100010, double 1.000000e+00)
  %14 = fptrunc double %13 to float
  %15 = and i32 %2, 256
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %235, label %17

17:                                               ; preds = %4
  %18 = fadd float %9, %14
  %19 = fneg float %9
  %20 = tail call float @llvm.fmuladd.f32(float %19, float %14, float %18)
  %21 = fcmp olt float %20, 0.000000e+00
  %22 = fcmp ogt float %20, 1.000000e+00
  %23 = select i1 %22, float 1.000000e+00, float %20
  %24 = select i1 %21, float 0.000000e+00, float %23
  %25 = fpext float %24 to double
  %26 = fsub double 1.000000e+00, %25
  %27 = fmul double %26, 6.553500e+04
  %28 = fptrunc double %27 to float
  %29 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  store float %28, ptr %29, align 4, !tbaa !81
  %30 = tail call double @llvm.fabs.f64(double %25)
  %31 = fcmp olt double %30, 1.000000e-15
  %32 = fdiv double 6.553500e+04, %25
  %33 = select i1 %31, double 0x440C6BD8BA3ED9CB, double %32
  %34 = fptrunc double %33 to float
  %35 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %36 = load float, ptr %35, align 8, !tbaa !77
  %37 = fpext float %36 to double
  %38 = fmul double %37, 0x3EF0001000100010
  %39 = fpext float %9 to double
  %40 = fmul double %38, %39
  %41 = fptrunc double %40 to float
  %42 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %43 = load float, ptr %42, align 8, !tbaa !77
  %44 = fpext float %43 to double
  %45 = fmul double %44, 0x3EF0001000100010
  %46 = fpext float %14 to double
  %47 = fmul double %45, %46
  %48 = fptrunc double %47 to float
  %49 = fpext float %41 to double
  %50 = tail call double @llvm.fabs.f64(double %49)
  %51 = fcmp olt double %50, 1.000000e-15
  br i1 %51, label %52, label %61

52:                                               ; preds = %17
  %53 = fpext float %48 to double
  %54 = tail call double @llvm.fabs.f64(double %53)
  %55 = fcmp olt double %54, 1.000000e-15
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = fsub double 1.000000e+00, %46
  %58 = fsub double 1.000000e+00, %39
  %59 = fmul double %58, %53
  %60 = tail call double @llvm.fmuladd.f64(double %49, double %57, double %59)
  br label %81

61:                                               ; preds = %52, %17
  %62 = fpext float %48 to double
  %63 = tail call double @llvm.fabs.f64(double %62)
  %64 = fcmp olt double %63, 1.000000e-15
  br i1 %64, label %65, label %72

65:                                               ; preds = %61
  %66 = fmul float %9, %14
  %67 = fpext float %66 to double
  %68 = fsub double 1.000000e+00, %46
  %69 = tail call double @llvm.fmuladd.f64(double %49, double %68, double %67)
  %70 = fsub double 1.000000e+00, %39
  %71 = tail call double @llvm.fmuladd.f64(double %62, double %70, double %69)
  br label %81

72:                                               ; preds = %61
  %73 = fmul float %14, %41
  %74 = fmul float %73, %14
  %75 = fdiv float %74, %48
  %76 = fpext float %75 to double
  %77 = fsub double 1.000000e+00, %46
  %78 = tail call double @llvm.fmuladd.f64(double %49, double %77, double %76)
  %79 = fsub double 1.000000e+00, %39
  %80 = tail call double @llvm.fmuladd.f64(double %62, double %79, double %78)
  br label %81

81:                                               ; preds = %56, %65, %72
  %82 = phi double [ %60, %56 ], [ %71, %65 ], [ %80, %72 ]
  %83 = fptrunc double %82 to float
  %84 = fmul float %34, %83
  %85 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  store float %84, ptr %85, align 8, !tbaa !77
  %86 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %87 = load float, ptr %86, align 4, !tbaa !79
  %88 = fpext float %87 to double
  %89 = fmul double %88, 0x3EF0001000100010
  %90 = fmul double %89, %39
  %91 = fptrunc double %90 to float
  %92 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %93 = load float, ptr %92, align 4, !tbaa !79
  %94 = fpext float %93 to double
  %95 = fmul double %94, 0x3EF0001000100010
  %96 = fmul double %95, %46
  %97 = fptrunc double %96 to float
  %98 = fpext float %91 to double
  %99 = tail call double @llvm.fabs.f64(double %98)
  %100 = fcmp olt double %99, 1.000000e-15
  br i1 %100, label %101, label %110

101:                                              ; preds = %81
  %102 = fpext float %97 to double
  %103 = tail call double @llvm.fabs.f64(double %102)
  %104 = fcmp olt double %103, 1.000000e-15
  br i1 %104, label %105, label %110

105:                                              ; preds = %101
  %106 = fsub double 1.000000e+00, %46
  %107 = fsub double 1.000000e+00, %39
  %108 = fmul double %107, %102
  %109 = tail call double @llvm.fmuladd.f64(double %98, double %106, double %108)
  br label %130

110:                                              ; preds = %101, %81
  %111 = fpext float %97 to double
  %112 = tail call double @llvm.fabs.f64(double %111)
  %113 = fcmp olt double %112, 1.000000e-15
  br i1 %113, label %114, label %121

114:                                              ; preds = %110
  %115 = fmul float %9, %14
  %116 = fpext float %115 to double
  %117 = fsub double 1.000000e+00, %46
  %118 = tail call double @llvm.fmuladd.f64(double %98, double %117, double %116)
  %119 = fsub double 1.000000e+00, %39
  %120 = tail call double @llvm.fmuladd.f64(double %111, double %119, double %118)
  br label %130

121:                                              ; preds = %110
  %122 = fmul float %14, %91
  %123 = fmul float %122, %14
  %124 = fdiv float %123, %97
  %125 = fpext float %124 to double
  %126 = fsub double 1.000000e+00, %46
  %127 = tail call double @llvm.fmuladd.f64(double %98, double %126, double %125)
  %128 = fsub double 1.000000e+00, %39
  %129 = tail call double @llvm.fmuladd.f64(double %111, double %128, double %127)
  br label %130

130:                                              ; preds = %105, %114, %121
  %131 = phi double [ %109, %105 ], [ %120, %114 ], [ %129, %121 ]
  %132 = fptrunc double %131 to float
  %133 = fmul float %34, %132
  %134 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 6
  store float %133, ptr %134, align 4, !tbaa !79
  %135 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %136 = load float, ptr %135, align 8, !tbaa !80
  %137 = fpext float %136 to double
  %138 = fmul double %137, 0x3EF0001000100010
  %139 = fmul double %138, %39
  %140 = fptrunc double %139 to float
  %141 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %142 = load float, ptr %141, align 8, !tbaa !80
  %143 = fpext float %142 to double
  %144 = fmul double %143, 0x3EF0001000100010
  %145 = fmul double %144, %46
  %146 = fptrunc double %145 to float
  %147 = fpext float %140 to double
  %148 = tail call double @llvm.fabs.f64(double %147)
  %149 = fcmp olt double %148, 1.000000e-15
  br i1 %149, label %150, label %159

150:                                              ; preds = %130
  %151 = fpext float %146 to double
  %152 = tail call double @llvm.fabs.f64(double %151)
  %153 = fcmp olt double %152, 1.000000e-15
  br i1 %153, label %154, label %159

154:                                              ; preds = %150
  %155 = fsub double 1.000000e+00, %46
  %156 = fsub double 1.000000e+00, %39
  %157 = fmul double %156, %151
  %158 = tail call double @llvm.fmuladd.f64(double %147, double %155, double %157)
  br label %179

159:                                              ; preds = %150, %130
  %160 = fpext float %146 to double
  %161 = tail call double @llvm.fabs.f64(double %160)
  %162 = fcmp olt double %161, 1.000000e-15
  br i1 %162, label %163, label %170

163:                                              ; preds = %159
  %164 = fmul float %9, %14
  %165 = fpext float %164 to double
  %166 = fsub double 1.000000e+00, %46
  %167 = tail call double @llvm.fmuladd.f64(double %147, double %166, double %165)
  %168 = fsub double 1.000000e+00, %39
  %169 = tail call double @llvm.fmuladd.f64(double %160, double %168, double %167)
  br label %179

170:                                              ; preds = %159
  %171 = fmul float %14, %140
  %172 = fmul float %171, %14
  %173 = fdiv float %172, %146
  %174 = fpext float %173 to double
  %175 = fsub double 1.000000e+00, %46
  %176 = tail call double @llvm.fmuladd.f64(double %147, double %175, double %174)
  %177 = fsub double 1.000000e+00, %39
  %178 = tail call double @llvm.fmuladd.f64(double %160, double %177, double %176)
  br label %179

179:                                              ; preds = %154, %163, %170
  %180 = phi double [ %158, %154 ], [ %169, %163 ], [ %178, %170 ]
  %181 = fptrunc double %180 to float
  %182 = fmul float %34, %181
  %183 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  store float %182, ptr %183, align 8, !tbaa !80
  %184 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %185 = load i32, ptr %184, align 4, !tbaa !90
  %186 = icmp eq i32 %185, 12
  br i1 %186, label %187, label %440

187:                                              ; preds = %179
  %188 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %189 = load float, ptr %188, align 8, !tbaa !84
  %190 = fpext float %189 to double
  %191 = fmul double %190, 0x3EF0001000100010
  %192 = fmul double %191, %39
  %193 = fptrunc double %192 to float
  %194 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %195 = load float, ptr %194, align 8, !tbaa !84
  %196 = fpext float %195 to double
  %197 = fmul double %196, 0x3EF0001000100010
  %198 = fmul double %197, %46
  %199 = fptrunc double %198 to float
  %200 = fpext float %193 to double
  %201 = tail call double @llvm.fabs.f64(double %200)
  %202 = fcmp olt double %201, 1.000000e-15
  br i1 %202, label %203, label %212

203:                                              ; preds = %187
  %204 = fpext float %199 to double
  %205 = tail call double @llvm.fabs.f64(double %204)
  %206 = fcmp olt double %205, 1.000000e-15
  br i1 %206, label %207, label %212

207:                                              ; preds = %203
  %208 = fsub double 1.000000e+00, %46
  %209 = fsub double 1.000000e+00, %39
  %210 = fmul double %209, %204
  %211 = tail call double @llvm.fmuladd.f64(double %200, double %208, double %210)
  br label %232

212:                                              ; preds = %203, %187
  %213 = fpext float %199 to double
  %214 = tail call double @llvm.fabs.f64(double %213)
  %215 = fcmp olt double %214, 1.000000e-15
  br i1 %215, label %216, label %223

216:                                              ; preds = %212
  %217 = fmul float %9, %14
  %218 = fpext float %217 to double
  %219 = fsub double 1.000000e+00, %46
  %220 = tail call double @llvm.fmuladd.f64(double %200, double %219, double %218)
  %221 = fsub double 1.000000e+00, %39
  %222 = tail call double @llvm.fmuladd.f64(double %213, double %221, double %220)
  br label %232

223:                                              ; preds = %212
  %224 = fmul float %14, %193
  %225 = fmul float %224, %14
  %226 = fdiv float %225, %199
  %227 = fpext float %226 to double
  %228 = fsub double 1.000000e+00, %46
  %229 = tail call double @llvm.fmuladd.f64(double %200, double %228, double %227)
  %230 = fsub double 1.000000e+00, %39
  %231 = tail call double @llvm.fmuladd.f64(double %213, double %230, double %229)
  br label %232

232:                                              ; preds = %207, %216, %223
  %233 = phi double [ %211, %207 ], [ %222, %216 ], [ %231, %223 ]
  %234 = fptrunc double %233 to float
  br label %435

235:                                              ; preds = %4
  %236 = and i32 %2, 8
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %269, label %238

238:                                              ; preds = %235
  %239 = fpext float %9 to double
  %240 = tail call double @llvm.fabs.f64(double %239)
  %241 = fcmp olt double %240, 1.000000e-15
  br i1 %241, label %242, label %249

242:                                              ; preds = %238
  %243 = fpext float %14 to double
  %244 = tail call double @llvm.fabs.f64(double %243)
  %245 = fcmp olt double %244, 1.000000e-15
  br i1 %245, label %246, label %249

246:                                              ; preds = %242
  %247 = fmul double %243, 0.000000e+00
  %248 = tail call double @llvm.fmuladd.f64(double %239, double 0.000000e+00, double %247)
  br label %261

249:                                              ; preds = %242, %238
  %250 = fpext float %14 to double
  %251 = tail call double @llvm.fabs.f64(double %250)
  %252 = fcmp olt double %251, 1.000000e-15
  br i1 %252, label %253, label %256

253:                                              ; preds = %249
  %254 = tail call double @llvm.fmuladd.f64(double %239, double 0.000000e+00, double 1.000000e+00)
  %255 = tail call double @llvm.fmuladd.f64(double %250, double 0.000000e+00, double %254)
  br label %261

256:                                              ; preds = %249
  %257 = fdiv float %9, %14
  %258 = fpext float %257 to double
  %259 = tail call double @llvm.fmuladd.f64(double %239, double 0.000000e+00, double %258)
  %260 = tail call double @llvm.fmuladd.f64(double %250, double 0.000000e+00, double %259)
  br label %261

261:                                              ; preds = %246, %253, %256
  %262 = phi double [ %248, %246 ], [ %255, %253 ], [ %260, %256 ]
  %263 = fptrunc double %262 to float
  %264 = fpext float %263 to double
  %265 = fsub double 1.000000e+00, %264
  %266 = fmul double %265, 6.553500e+04
  %267 = fptrunc double %266 to float
  %268 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  store float %267, ptr %268, align 4, !tbaa !81
  br label %269

269:                                              ; preds = %261, %235
  %270 = and i32 %2, 1
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %310, label %272

272:                                              ; preds = %269
  %273 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %274 = load float, ptr %273, align 8, !tbaa !77
  %275 = fpext float %274 to double
  %276 = fmul double %275, 0x3EF0001000100010
  %277 = fptrunc double %276 to float
  %278 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %279 = load float, ptr %278, align 8, !tbaa !77
  %280 = fpext float %279 to double
  %281 = fmul double %280, 0x3EF0001000100010
  %282 = fptrunc double %281 to float
  %283 = fpext float %277 to double
  %284 = tail call double @llvm.fabs.f64(double %283)
  %285 = fcmp olt double %284, 1.000000e-15
  br i1 %285, label %286, label %293

286:                                              ; preds = %272
  %287 = fpext float %282 to double
  %288 = tail call double @llvm.fabs.f64(double %287)
  %289 = fcmp olt double %288, 1.000000e-15
  br i1 %289, label %290, label %293

290:                                              ; preds = %286
  %291 = fmul double %287, 0.000000e+00
  %292 = tail call double @llvm.fmuladd.f64(double %283, double 0.000000e+00, double %291)
  br label %305

293:                                              ; preds = %286, %272
  %294 = fpext float %282 to double
  %295 = tail call double @llvm.fabs.f64(double %294)
  %296 = fcmp olt double %295, 1.000000e-15
  br i1 %296, label %297, label %300

297:                                              ; preds = %293
  %298 = tail call double @llvm.fmuladd.f64(double %283, double 0.000000e+00, double 1.000000e+00)
  %299 = tail call double @llvm.fmuladd.f64(double %294, double 0.000000e+00, double %298)
  br label %305

300:                                              ; preds = %293
  %301 = fdiv float %277, %282
  %302 = fpext float %301 to double
  %303 = tail call double @llvm.fmuladd.f64(double %283, double 0.000000e+00, double %302)
  %304 = tail call double @llvm.fmuladd.f64(double %294, double 0.000000e+00, double %303)
  br label %305

305:                                              ; preds = %290, %297, %300
  %306 = phi double [ %292, %290 ], [ %299, %297 ], [ %304, %300 ]
  %307 = fptrunc double %306 to float
  %308 = fmul float %307, 6.553500e+04
  %309 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  store float %308, ptr %309, align 8, !tbaa !77
  br label %310

310:                                              ; preds = %305, %269
  %311 = and i32 %2, 2
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %351, label %313

313:                                              ; preds = %310
  %314 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %315 = load float, ptr %314, align 4, !tbaa !79
  %316 = fpext float %315 to double
  %317 = fmul double %316, 0x3EF0001000100010
  %318 = fptrunc double %317 to float
  %319 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %320 = load float, ptr %319, align 4, !tbaa !79
  %321 = fpext float %320 to double
  %322 = fmul double %321, 0x3EF0001000100010
  %323 = fptrunc double %322 to float
  %324 = fpext float %318 to double
  %325 = tail call double @llvm.fabs.f64(double %324)
  %326 = fcmp olt double %325, 1.000000e-15
  br i1 %326, label %327, label %334

327:                                              ; preds = %313
  %328 = fpext float %323 to double
  %329 = tail call double @llvm.fabs.f64(double %328)
  %330 = fcmp olt double %329, 1.000000e-15
  br i1 %330, label %331, label %334

331:                                              ; preds = %327
  %332 = fmul double %328, 0.000000e+00
  %333 = tail call double @llvm.fmuladd.f64(double %324, double 0.000000e+00, double %332)
  br label %346

334:                                              ; preds = %327, %313
  %335 = fpext float %323 to double
  %336 = tail call double @llvm.fabs.f64(double %335)
  %337 = fcmp olt double %336, 1.000000e-15
  br i1 %337, label %338, label %341

338:                                              ; preds = %334
  %339 = tail call double @llvm.fmuladd.f64(double %324, double 0.000000e+00, double 1.000000e+00)
  %340 = tail call double @llvm.fmuladd.f64(double %335, double 0.000000e+00, double %339)
  br label %346

341:                                              ; preds = %334
  %342 = fdiv float %318, %323
  %343 = fpext float %342 to double
  %344 = tail call double @llvm.fmuladd.f64(double %324, double 0.000000e+00, double %343)
  %345 = tail call double @llvm.fmuladd.f64(double %335, double 0.000000e+00, double %344)
  br label %346

346:                                              ; preds = %331, %338, %341
  %347 = phi double [ %333, %331 ], [ %340, %338 ], [ %345, %341 ]
  %348 = fptrunc double %347 to float
  %349 = fmul float %348, 6.553500e+04
  %350 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 6
  store float %349, ptr %350, align 4, !tbaa !79
  br label %351

351:                                              ; preds = %346, %310
  %352 = and i32 %2, 4
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %392, label %354

354:                                              ; preds = %351
  %355 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %356 = load float, ptr %355, align 8, !tbaa !80
  %357 = fpext float %356 to double
  %358 = fmul double %357, 0x3EF0001000100010
  %359 = fptrunc double %358 to float
  %360 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %361 = load float, ptr %360, align 8, !tbaa !80
  %362 = fpext float %361 to double
  %363 = fmul double %362, 0x3EF0001000100010
  %364 = fptrunc double %363 to float
  %365 = fpext float %359 to double
  %366 = tail call double @llvm.fabs.f64(double %365)
  %367 = fcmp olt double %366, 1.000000e-15
  br i1 %367, label %368, label %375

368:                                              ; preds = %354
  %369 = fpext float %364 to double
  %370 = tail call double @llvm.fabs.f64(double %369)
  %371 = fcmp olt double %370, 1.000000e-15
  br i1 %371, label %372, label %375

372:                                              ; preds = %368
  %373 = fmul double %369, 0.000000e+00
  %374 = tail call double @llvm.fmuladd.f64(double %365, double 0.000000e+00, double %373)
  br label %387

375:                                              ; preds = %368, %354
  %376 = fpext float %364 to double
  %377 = tail call double @llvm.fabs.f64(double %376)
  %378 = fcmp olt double %377, 1.000000e-15
  br i1 %378, label %379, label %382

379:                                              ; preds = %375
  %380 = tail call double @llvm.fmuladd.f64(double %365, double 0.000000e+00, double 1.000000e+00)
  %381 = tail call double @llvm.fmuladd.f64(double %376, double 0.000000e+00, double %380)
  br label %387

382:                                              ; preds = %375
  %383 = fdiv float %359, %364
  %384 = fpext float %383 to double
  %385 = tail call double @llvm.fmuladd.f64(double %365, double 0.000000e+00, double %384)
  %386 = tail call double @llvm.fmuladd.f64(double %376, double 0.000000e+00, double %385)
  br label %387

387:                                              ; preds = %372, %379, %382
  %388 = phi double [ %374, %372 ], [ %381, %379 ], [ %386, %382 ]
  %389 = fptrunc double %388 to float
  %390 = fmul float %389, 6.553500e+04
  %391 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  store float %390, ptr %391, align 8, !tbaa !80
  br label %392

392:                                              ; preds = %387, %351
  %393 = and i32 %2, 32
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %440, label %395

395:                                              ; preds = %392
  %396 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %397 = load i32, ptr %396, align 4, !tbaa !90
  %398 = icmp eq i32 %397, 12
  br i1 %398, label %399, label %440

399:                                              ; preds = %395
  %400 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %401 = load float, ptr %400, align 8, !tbaa !84
  %402 = fpext float %401 to double
  %403 = fmul double %402, 0x3EF0001000100010
  %404 = fptrunc double %403 to float
  %405 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %406 = load float, ptr %405, align 8, !tbaa !84
  %407 = fpext float %406 to double
  %408 = fmul double %407, 0x3EF0001000100010
  %409 = fptrunc double %408 to float
  %410 = fpext float %404 to double
  %411 = tail call double @llvm.fabs.f64(double %410)
  %412 = fcmp olt double %411, 1.000000e-15
  br i1 %412, label %413, label %420

413:                                              ; preds = %399
  %414 = fpext float %409 to double
  %415 = tail call double @llvm.fabs.f64(double %414)
  %416 = fcmp olt double %415, 1.000000e-15
  br i1 %416, label %417, label %420

417:                                              ; preds = %413
  %418 = fmul double %414, 0.000000e+00
  %419 = tail call double @llvm.fmuladd.f64(double %410, double 0.000000e+00, double %418)
  br label %432

420:                                              ; preds = %413, %399
  %421 = fpext float %409 to double
  %422 = tail call double @llvm.fabs.f64(double %421)
  %423 = fcmp olt double %422, 1.000000e-15
  br i1 %423, label %424, label %427

424:                                              ; preds = %420
  %425 = tail call double @llvm.fmuladd.f64(double %410, double 0.000000e+00, double 1.000000e+00)
  %426 = tail call double @llvm.fmuladd.f64(double %421, double 0.000000e+00, double %425)
  br label %432

427:                                              ; preds = %420
  %428 = fdiv float %404, %409
  %429 = fpext float %428 to double
  %430 = tail call double @llvm.fmuladd.f64(double %410, double 0.000000e+00, double %429)
  %431 = tail call double @llvm.fmuladd.f64(double %421, double 0.000000e+00, double %430)
  br label %432

432:                                              ; preds = %417, %424, %427
  %433 = phi double [ %419, %417 ], [ %426, %424 ], [ %431, %427 ]
  %434 = fptrunc double %433 to float
  br label %435

435:                                              ; preds = %232, %432
  %436 = phi float [ 6.553500e+04, %432 ], [ %234, %232 ]
  %437 = phi float [ %434, %432 ], [ %34, %232 ]
  %438 = fmul float %437, %436
  %439 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  store float %438, ptr %439, align 8, !tbaa !84
  br label %440

440:                                              ; preds = %435, %392, %395, %179
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @CompositeHardLight(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #7 {
  %4 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %5 = load float, ptr %4, align 4, !tbaa !81
  %6 = fpext float %5 to double
  %7 = tail call double @llvm.fmuladd.f64(double %6, double 0xBEF0001000100010, double 1.000000e+00)
  %8 = fptrunc double %7 to float
  %9 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %10 = load float, ptr %9, align 4, !tbaa !81
  %11 = fpext float %10 to double
  %12 = tail call double @llvm.fmuladd.f64(double %11, double 0xBEF0001000100010, double 1.000000e+00)
  %13 = fptrunc double %12 to float
  %14 = fadd float %8, %13
  %15 = fneg float %8
  %16 = tail call float @llvm.fmuladd.f32(float %15, float %13, float %14)
  %17 = fcmp olt float %16, 0.000000e+00
  %18 = fcmp ogt float %16, 1.000000e+00
  %19 = select i1 %18, float 1.000000e+00, float %16
  %20 = select i1 %17, float 0.000000e+00, float %19
  %21 = fpext float %20 to double
  %22 = fsub double 1.000000e+00, %21
  %23 = fmul double %22, 6.553500e+04
  %24 = fptrunc double %23 to float
  %25 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 8
  store float %24, ptr %25, align 4, !tbaa !81
  %26 = tail call double @llvm.fabs.f64(double %21)
  %27 = fcmp olt double %26, 1.000000e-15
  %28 = fdiv double 6.553500e+04, %21
  %29 = select i1 %27, double 0x440C6BD8BA3ED9CB, double %28
  %30 = fptrunc double %29 to float
  %31 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %32 = load float, ptr %31, align 8, !tbaa !77
  %33 = fpext float %32 to double
  %34 = fmul double %33, 0x3EF0001000100010
  %35 = fpext float %8 to double
  %36 = fmul double %34, %35
  %37 = fptrunc double %36 to float
  %38 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %39 = load float, ptr %38, align 8, !tbaa !77
  %40 = fpext float %39 to double
  %41 = fmul double %40, 0x3EF0001000100010
  %42 = fpext float %13 to double
  %43 = fmul double %41, %42
  %44 = fptrunc double %43 to float
  %45 = fpext float %37 to double
  %46 = fmul double %45, 2.000000e+00
  %47 = fcmp olt double %46, %35
  br i1 %47, label %48, label %55

48:                                               ; preds = %3
  %49 = fpext float %44 to double
  %50 = fsub double 1.000000e+00, %42
  %51 = fmul double %50, %45
  %52 = tail call double @llvm.fmuladd.f64(double %46, double %49, double %51)
  %53 = fsub double 1.000000e+00, %35
  %54 = tail call double @llvm.fmuladd.f64(double %49, double %53, double %52)
  br label %69

55:                                               ; preds = %3
  %56 = fmul float %8, %13
  %57 = fpext float %56 to double
  %58 = fsub float %13, %44
  %59 = fpext float %58 to double
  %60 = fsub float %8, %37
  %61 = fpext float %60 to double
  %62 = fmul double %59, -2.000000e+00
  %63 = tail call double @llvm.fmuladd.f64(double %62, double %61, double %57)
  %64 = fsub double 1.000000e+00, %42
  %65 = tail call double @llvm.fmuladd.f64(double %45, double %64, double %63)
  %66 = fpext float %44 to double
  %67 = fsub double 1.000000e+00, %35
  %68 = tail call double @llvm.fmuladd.f64(double %66, double %67, double %65)
  br label %69

69:                                               ; preds = %48, %55
  %70 = phi double [ %54, %48 ], [ %68, %55 ]
  %71 = fptrunc double %70 to float
  %72 = fmul float %30, %71
  %73 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 5
  store float %72, ptr %73, align 8, !tbaa !77
  %74 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %75 = load float, ptr %74, align 4, !tbaa !79
  %76 = fpext float %75 to double
  %77 = fmul double %76, 0x3EF0001000100010
  %78 = fmul double %77, %35
  %79 = fptrunc double %78 to float
  %80 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %81 = load float, ptr %80, align 4, !tbaa !79
  %82 = fpext float %81 to double
  %83 = fmul double %82, 0x3EF0001000100010
  %84 = fmul double %83, %42
  %85 = fptrunc double %84 to float
  %86 = fpext float %79 to double
  %87 = fmul double %86, 2.000000e+00
  %88 = fcmp olt double %87, %35
  br i1 %88, label %89, label %96

89:                                               ; preds = %69
  %90 = fpext float %85 to double
  %91 = fsub double 1.000000e+00, %42
  %92 = fmul double %91, %86
  %93 = tail call double @llvm.fmuladd.f64(double %87, double %90, double %92)
  %94 = fsub double 1.000000e+00, %35
  %95 = tail call double @llvm.fmuladd.f64(double %90, double %94, double %93)
  br label %110

96:                                               ; preds = %69
  %97 = fmul float %8, %13
  %98 = fpext float %97 to double
  %99 = fsub float %13, %85
  %100 = fpext float %99 to double
  %101 = fsub float %8, %79
  %102 = fpext float %101 to double
  %103 = fmul double %100, -2.000000e+00
  %104 = tail call double @llvm.fmuladd.f64(double %103, double %102, double %98)
  %105 = fsub double 1.000000e+00, %42
  %106 = tail call double @llvm.fmuladd.f64(double %86, double %105, double %104)
  %107 = fpext float %85 to double
  %108 = fsub double 1.000000e+00, %35
  %109 = tail call double @llvm.fmuladd.f64(double %107, double %108, double %106)
  br label %110

110:                                              ; preds = %89, %96
  %111 = phi double [ %95, %89 ], [ %109, %96 ]
  %112 = fptrunc double %111 to float
  %113 = fmul float %30, %112
  %114 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 6
  store float %113, ptr %114, align 4, !tbaa !79
  %115 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %116 = load float, ptr %115, align 8, !tbaa !80
  %117 = fpext float %116 to double
  %118 = fmul double %117, 0x3EF0001000100010
  %119 = fmul double %118, %35
  %120 = fptrunc double %119 to float
  %121 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %122 = load float, ptr %121, align 8, !tbaa !80
  %123 = fpext float %122 to double
  %124 = fmul double %123, 0x3EF0001000100010
  %125 = fmul double %124, %42
  %126 = fptrunc double %125 to float
  %127 = fpext float %120 to double
  %128 = fmul double %127, 2.000000e+00
  %129 = fcmp olt double %128, %35
  br i1 %129, label %130, label %137

130:                                              ; preds = %110
  %131 = fpext float %126 to double
  %132 = fsub double 1.000000e+00, %42
  %133 = fmul double %132, %127
  %134 = tail call double @llvm.fmuladd.f64(double %128, double %131, double %133)
  %135 = fsub double 1.000000e+00, %35
  %136 = tail call double @llvm.fmuladd.f64(double %131, double %135, double %134)
  br label %151

137:                                              ; preds = %110
  %138 = fmul float %8, %13
  %139 = fpext float %138 to double
  %140 = fsub float %13, %126
  %141 = fpext float %140 to double
  %142 = fsub float %8, %120
  %143 = fpext float %142 to double
  %144 = fmul double %141, -2.000000e+00
  %145 = tail call double @llvm.fmuladd.f64(double %144, double %143, double %139)
  %146 = fsub double 1.000000e+00, %42
  %147 = tail call double @llvm.fmuladd.f64(double %127, double %146, double %145)
  %148 = fpext float %126 to double
  %149 = fsub double 1.000000e+00, %35
  %150 = tail call double @llvm.fmuladd.f64(double %148, double %149, double %147)
  br label %151

151:                                              ; preds = %130, %137
  %152 = phi double [ %136, %130 ], [ %150, %137 ]
  %153 = fptrunc double %152 to float
  %154 = fmul float %30, %153
  %155 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 7
  store float %154, ptr %155, align 8, !tbaa !80
  %156 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %157 = load i32, ptr %156, align 4, !tbaa !90
  %158 = icmp eq i32 %157, 12
  br i1 %158, label %159, label %201

159:                                              ; preds = %151
  %160 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %161 = load float, ptr %160, align 8, !tbaa !84
  %162 = fpext float %161 to double
  %163 = fmul double %162, 0x3EF0001000100010
  %164 = fmul double %163, %35
  %165 = fptrunc double %164 to float
  %166 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %167 = load float, ptr %166, align 8, !tbaa !84
  %168 = fpext float %167 to double
  %169 = fmul double %168, 0x3EF0001000100010
  %170 = fmul double %169, %42
  %171 = fptrunc double %170 to float
  %172 = fpext float %165 to double
  %173 = fmul double %172, 2.000000e+00
  %174 = fcmp olt double %173, %35
  br i1 %174, label %175, label %182

175:                                              ; preds = %159
  %176 = fpext float %171 to double
  %177 = fsub double 1.000000e+00, %42
  %178 = fmul double %177, %172
  %179 = tail call double @llvm.fmuladd.f64(double %173, double %176, double %178)
  %180 = fsub double 1.000000e+00, %35
  %181 = tail call double @llvm.fmuladd.f64(double %176, double %180, double %179)
  br label %196

182:                                              ; preds = %159
  %183 = fmul float %8, %13
  %184 = fpext float %183 to double
  %185 = fsub float %13, %171
  %186 = fpext float %185 to double
  %187 = fsub float %8, %165
  %188 = fpext float %187 to double
  %189 = fmul double %186, -2.000000e+00
  %190 = tail call double @llvm.fmuladd.f64(double %189, double %188, double %184)
  %191 = fsub double 1.000000e+00, %42
  %192 = tail call double @llvm.fmuladd.f64(double %172, double %191, double %190)
  %193 = fpext float %171 to double
  %194 = fsub double 1.000000e+00, %35
  %195 = tail call double @llvm.fmuladd.f64(double %193, double %194, double %192)
  br label %196

196:                                              ; preds = %175, %182
  %197 = phi double [ %181, %175 ], [ %195, %182 ]
  %198 = fptrunc double %197 to float
  %199 = fmul float %30, %198
  %200 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 9
  store float %199, ptr %200, align 8, !tbaa !84
  br label %201

201:                                              ; preds = %196, %151
  ret void
}

declare i32 @IsMagickColorSimilar(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @TextureImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  %4 = alloca [4096 x i8], align 16
  %5 = alloca [4096 x i8], align 16
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !35
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2939, ptr noundef nonnull @.str.8) #10
  br label %11

11:                                               ; preds = %9, %2
  %12 = icmp eq ptr %1, null
  br i1 %12, label %195, label %13

13:                                               ; preds = %11
  %14 = tail call i32 @SetImageStorageClass(ptr noundef %0, i32 noundef 1) #10
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %195, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %18 = tail call ptr @CloneImage(ptr noundef nonnull %1, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef nonnull %17) #10
  %19 = icmp eq ptr %18, null
  br i1 %19, label %195, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !54
  %23 = tail call i32 @TransformImageColorspace(ptr noundef nonnull %18, i32 noundef %22) #10
  %24 = tail call i32 @SetImageVirtualPixelMethod(ptr noundef nonnull %18, i32 noundef 7) #10
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 36
  %26 = load i32, ptr %25, align 8, !tbaa !94
  switch i32 %26, label %35 [
    i32 13, label %103
    i32 40, label %27
  ]

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %29 = load i32, ptr %28, align 8, !tbaa !55
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct._Image, ptr %18, i64 0, i32 6
  %33 = load i32, ptr %32, align 8, !tbaa !55
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %103, label %35

35:                                               ; preds = %20, %31, %27
  %36 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %37 = load i64, ptr %36, align 8, !tbaa !57
  %38 = icmp sgt i64 %37, 0
  br i1 %38, label %39, label %89

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %41 = getelementptr inbounds %struct._Image, ptr %18, i64 0, i32 74, i32 2
  %42 = getelementptr inbounds %struct._Image, ptr %18, i64 0, i32 74, i32 3
  %43 = getelementptr inbounds %struct._Image, ptr %18, i64 0, i32 7
  %44 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %45 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %46 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  %47 = getelementptr inbounds %struct._Image, ptr %18, i64 0, i32 8
  br label %48

48:                                               ; preds = %39, %83
  %49 = phi i32 [ 1, %39 ], [ %84, %83 ]
  %50 = phi i64 [ 0, %39 ], [ %86, %83 ]
  %51 = icmp eq i32 %49, 0
  br i1 %51, label %83, label %52

52:                                               ; preds = %48
  %53 = load i64, ptr %40, align 8, !tbaa !56
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %52, %66
  %56 = phi i32 [ %65, %66 ], [ 1, %52 ]
  %57 = phi i64 [ %68, %66 ], [ 0, %52 ]
  %58 = load i32, ptr %25, align 8, !tbaa !94
  %59 = load i64, ptr %41, align 8, !tbaa !95
  %60 = add nsw i64 %59, %57
  %61 = load i64, ptr %42, align 8, !tbaa !96
  %62 = add nsw i64 %61, %50
  %63 = call i32 @CompositeImageChannel(ptr noundef %0, i32 noundef 134217719, i32 noundef %58, ptr noundef nonnull %18, i64 noundef %60, i64 noundef %62), !range !34
  %64 = icmp eq i32 %63, 0
  %65 = select i1 %64, i32 0, i32 %56
  br i1 %64, label %71, label %66

66:                                               ; preds = %55
  %67 = load i64, ptr %43, align 8, !tbaa !56
  %68 = add nsw i64 %67, %57
  %69 = load i64, ptr %40, align 8, !tbaa !56
  %70 = icmp slt i64 %68, %69
  br i1 %70, label %55, label %71, !llvm.loop !97

71:                                               ; preds = %66, %55, %52
  %72 = phi i32 [ 1, %52 ], [ %65, %55 ], [ %65, %66 ]
  %73 = load ptr, ptr %44, align 8, !tbaa !58
  %74 = icmp eq ptr %73, null
  br i1 %74, label %83, label %75

75:                                               ; preds = %71
  %76 = load i64, ptr %36, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #10
  %77 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9, ptr noundef nonnull %45) #10
  %78 = load ptr, ptr %44, align 8, !tbaa !58
  %79 = load ptr, ptr %46, align 8, !tbaa !59
  %80 = call i32 %78(ptr noundef nonnull %5, i64 noundef %50, i64 noundef %76, ptr noundef %79) #10
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #10
  %81 = icmp eq i32 %80, 0
  %82 = select i1 %81, i32 0, i32 %72
  br label %83

83:                                               ; preds = %71, %75, %48
  %84 = phi i32 [ 0, %48 ], [ %82, %75 ], [ %72, %71 ]
  %85 = load i64, ptr %47, align 8, !tbaa !57
  %86 = add nsw i64 %85, %50
  %87 = load i64, ptr %36, align 8, !tbaa !57
  %88 = icmp slt i64 %86, %87
  br i1 %88, label %48, label %89, !llvm.loop !98

89:                                               ; preds = %83, %35
  %90 = phi i32 [ 1, %35 ], [ %84, %83 ]
  %91 = phi i64 [ %37, %35 ], [ %87, %83 ]
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #10
  %92 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %93 = load ptr, ptr %92, align 8, !tbaa !58
  %94 = icmp eq ptr %93, null
  br i1 %94, label %102, label %95

95:                                               ; preds = %89
  %96 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %97 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9, ptr noundef nonnull %96) #10
  %98 = load ptr, ptr %92, align 8, !tbaa !58
  %99 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  %100 = load ptr, ptr %99, align 8, !tbaa !59
  %101 = call i32 %98(ptr noundef nonnull %4, i64 noundef %91, i64 noundef %91, ptr noundef %100) #10
  br label %102

102:                                              ; preds = %89, %95
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #10
  br label %192

103:                                              ; preds = %20, %31
  %104 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %18, ptr noundef nonnull %17) #10
  %105 = tail call ptr @AcquireAuthenticCacheView(ptr noundef %0, ptr noundef nonnull %17) #10
  %106 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %107 = load i64, ptr %106, align 8, !tbaa !57
  %108 = icmp sgt i64 %107, 0
  br i1 %108, label %109, label %188

109:                                              ; preds = %103
  %110 = getelementptr inbounds %struct._Image, ptr %18, i64 0, i32 74, i32 2
  %111 = getelementptr inbounds %struct._Image, ptr %18, i64 0, i32 74, i32 3
  %112 = getelementptr inbounds %struct._Image, ptr %18, i64 0, i32 8
  %113 = getelementptr inbounds %struct._Image, ptr %18, i64 0, i32 7
  %114 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %115 = getelementptr inbounds %struct._Image, ptr %18, i64 0, i32 1
  %116 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %117 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %118 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %119

119:                                              ; preds = %109, %183
  %120 = phi i32 [ 1, %109 ], [ %184, %183 ]
  %121 = phi i64 [ 0, %109 ], [ %185, %183 ]
  %122 = icmp eq i32 %120, 0
  br i1 %122, label %183, label %123

123:                                              ; preds = %119
  %124 = load i64, ptr %110, align 8, !tbaa !95
  %125 = load i64, ptr %111, align 8, !tbaa !96
  %126 = add nsw i64 %125, %121
  %127 = load i64, ptr %112, align 8, !tbaa !57
  %128 = urem i64 %126, %127
  %129 = load i64, ptr %113, align 8, !tbaa !56
  %130 = call ptr @GetCacheViewVirtualPixels(ptr noundef %104, i64 noundef %124, i64 noundef %128, i64 noundef %129, i64 noundef 1, ptr noundef nonnull %17) #11
  %131 = load i64, ptr %114, align 8, !tbaa !56
  %132 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %105, i64 noundef 0, i64 noundef %121, i64 noundef %131, i64 noundef 1, ptr noundef nonnull %17) #11
  %133 = icmp eq ptr %130, null
  %134 = icmp eq ptr %132, null
  %135 = select i1 %133, i1 true, i1 %134
  br i1 %135, label %183, label %136

136:                                              ; preds = %123
  %137 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %104) #10
  %138 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %105) #10
  %139 = load i64, ptr %114, align 8, !tbaa !56
  %140 = icmp sgt i64 %139, 0
  br i1 %140, label %141, label %169

141:                                              ; preds = %136, %162
  %142 = phi i64 [ %167, %162 ], [ %139, %136 ]
  %143 = phi ptr [ %164, %162 ], [ %132, %136 ]
  %144 = phi i64 [ %166, %162 ], [ 0, %136 ]
  %145 = phi ptr [ %163, %162 ], [ %138, %136 ]
  %146 = load i64, ptr %113, align 8, !tbaa !56
  %147 = add nsw i64 %146, %144
  %148 = icmp sgt i64 %147, %142
  %149 = sub i64 %142, %144
  %150 = select i1 %148, i64 %149, i64 %146
  %151 = shl i64 %150, 3
  %152 = call ptr @CopyMagickMemory(ptr noundef %143, ptr noundef %130, i64 noundef %151) #10
  %153 = load i32, ptr %21, align 4, !tbaa !54
  %154 = icmp eq i32 %153, 12
  br i1 %154, label %155, label %162

155:                                              ; preds = %141
  %156 = load i32, ptr %115, align 4, !tbaa !54
  %157 = icmp eq i32 %156, 12
  br i1 %157, label %158, label %162

158:                                              ; preds = %155
  %159 = shl i64 %150, 1
  %160 = call ptr @CopyMagickMemory(ptr noundef %145, ptr noundef %137, i64 noundef %159) #10
  %161 = getelementptr inbounds i16, ptr %145, i64 %150
  br label %162

162:                                              ; preds = %158, %155, %141
  %163 = phi ptr [ %161, %158 ], [ %145, %155 ], [ %145, %141 ]
  %164 = getelementptr inbounds %struct._PixelPacket, ptr %143, i64 %150
  %165 = load i64, ptr %113, align 8, !tbaa !56
  %166 = add nsw i64 %165, %144
  %167 = load i64, ptr %114, align 8, !tbaa !56
  %168 = icmp slt i64 %166, %167
  br i1 %168, label %141, label %169, !llvm.loop !99

169:                                              ; preds = %162, %136
  %170 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %105, ptr noundef nonnull %17) #11
  %171 = icmp ne i32 %170, 0
  %172 = zext i1 %171 to i32
  %173 = load ptr, ptr %116, align 8, !tbaa !58
  %174 = icmp eq ptr %173, null
  br i1 %174, label %183, label %175

175:                                              ; preds = %169
  %176 = load i64, ptr %106, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #10
  %177 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %3, i64 noundef 4096, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9, ptr noundef nonnull %117) #10
  %178 = load ptr, ptr %116, align 8, !tbaa !58
  %179 = load ptr, ptr %118, align 8, !tbaa !59
  %180 = call i32 %178(ptr noundef nonnull %3, i64 noundef %121, i64 noundef %176, ptr noundef %179) #10
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #10
  %181 = icmp eq i32 %180, 0
  %182 = select i1 %181, i32 0, i32 %172
  br label %183

183:                                              ; preds = %169, %175, %123, %119
  %184 = phi i32 [ 0, %119 ], [ 0, %123 ], [ %182, %175 ], [ %172, %169 ]
  %185 = add nuw nsw i64 %121, 1
  %186 = load i64, ptr %106, align 8, !tbaa !57
  %187 = icmp slt i64 %185, %186
  br i1 %187, label %119, label %188, !llvm.loop !100

188:                                              ; preds = %183, %103
  %189 = phi i32 [ 1, %103 ], [ %184, %183 ]
  %190 = call ptr @DestroyCacheView(ptr noundef %104) #10
  %191 = call ptr @DestroyCacheView(ptr noundef %105) #10
  br label %192

192:                                              ; preds = %102, %188
  %193 = phi i32 [ %189, %188 ], [ %90, %102 ]
  %194 = call ptr @DestroyImage(ptr noundef nonnull %18) #10
  br label %195

195:                                              ; preds = %192, %16, %13, %11
  %196 = phi i32 [ 0, %11 ], [ 0, %13 ], [ 0, %16 ], [ %193, %192 ]
  ret i32 %196
}

declare i32 @TransformImageColorspace(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @SetImageVirtualPixelMethod(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define internal fastcc float @SoftLight(float noundef %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #8 {
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
  br label %64

23:                                               ; preds = %4
  %24 = fcmp ogt double %7, %8
  br i1 %24, label %25, label %48

25:                                               ; preds = %23
  %26 = fpext float %2 to double
  %27 = fmul double %26, 4.000000e+00
  %28 = fpext float %3 to double
  %29 = fcmp ugt double %27, %28
  br i1 %29, label %48, label %30

30:                                               ; preds = %25
  %31 = fmul float %1, %2
  %32 = fpext float %31 to double
  %33 = fneg double %8
  %34 = tail call double @llvm.fmuladd.f64(double %6, double 2.000000e+00, double %33)
  %35 = fmul double %34, %28
  %36 = fpext float %5 to double
  %37 = fmul double %36, 4.000000e+00
  %38 = tail call double @llvm.fmuladd.f64(double %36, double 4.000000e+00, double 1.000000e+00)
  %39 = fmul double %37, %38
  %40 = fadd double %36, -1.000000e+00
  %41 = fmul double %36, 7.000000e+00
  %42 = tail call double @llvm.fmuladd.f64(double %39, double %40, double %41)
  %43 = tail call double @llvm.fmuladd.f64(double %35, double %42, double %32)
  %44 = fsub double 1.000000e+00, %28
  %45 = tail call double @llvm.fmuladd.f64(double %6, double %44, double %43)
  %46 = fsub double 1.000000e+00, %8
  %47 = tail call double @llvm.fmuladd.f64(double %26, double %46, double %45)
  br label %64

48:                                               ; preds = %25, %23
  %49 = fmul float %1, %2
  %50 = fpext float %49 to double
  %51 = fpext float %3 to double
  %52 = fneg double %8
  %53 = tail call double @llvm.fmuladd.f64(double %6, double 2.000000e+00, double %52)
  %54 = fmul double %53, %51
  %55 = fpext float %5 to double
  %56 = tail call double @pow(double noundef %55, double noundef 5.000000e-01) #10
  %57 = fsub double %56, %55
  %58 = tail call double @llvm.fmuladd.f64(double %54, double %57, double %50)
  %59 = fsub double 1.000000e+00, %51
  %60 = tail call double @llvm.fmuladd.f64(double %6, double %59, double %58)
  %61 = fpext float %2 to double
  %62 = fsub double 1.000000e+00, %8
  %63 = tail call double @llvm.fmuladd.f64(double %61, double %62, double %60)
  br label %64

64:                                               ; preds = %48, %30, %10
  %65 = phi double [ %22, %10 ], [ %47, %30 ], [ %63, %48 ]
  %66 = fptrunc double %65 to float
  ret float %66
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #4

; Function Attrs: hot
declare float @DecodePixelGamma(float noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { hot "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { hot nounwind }

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
!34 = !{i32 0, i32 2}
!35 = !{!36, !37, i64 12976}
!36 = !{!"_Image", !37, i64 0, !37, i64 4, !37, i64 8, !40, i64 16, !37, i64 24, !37, i64 28, !37, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !41, i64 72, !42, i64 80, !42, i64 88, !42, i64 96, !44, i64 104, !45, i64 112, !37, i64 208, !41, i64 216, !37, i64 224, !41, i64 232, !41, i64 240, !41, i64 248, !40, i64 256, !44, i64 264, !44, i64 272, !47, i64 280, !47, i64 312, !47, i64 344, !44, i64 376, !44, i64 384, !44, i64 392, !37, i64 400, !37, i64 404, !37, i64 408, !37, i64 412, !37, i64 416, !37, i64 420, !41, i64 424, !40, i64 432, !40, i64 440, !40, i64 448, !40, i64 456, !40, i64 464, !40, i64 472, !48, i64 480, !49, i64 504, !41, i64 568, !41, i64 576, !41, i64 584, !41, i64 592, !41, i64 600, !41, i64 608, !38, i64 616, !38, i64 4712, !38, i64 8808, !40, i64 12904, !40, i64 12912, !51, i64 12920, !37, i64 12976, !40, i64 12984, !41, i64 12992, !52, i64 13000, !52, i64 13032, !41, i64 13064, !40, i64 13072, !40, i64 13080, !41, i64 13088, !41, i64 13096, !41, i64 13104, !37, i64 13112, !37, i64 13116, !42, i64 13120, !41, i64 13128, !47, i64 13136, !41, i64 13168, !41, i64 13176, !37, i64 13184, !37, i64 13188, !53, i64 13192, !37, i64 13200, !40, i64 13208, !40, i64 13216, !37, i64 13224, !40, i64 13232}
!37 = !{!"int", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"long", !38, i64 0}
!41 = !{!"any pointer", !38, i64 0}
!42 = !{!"_PixelPacket", !43, i64 0, !43, i64 2, !43, i64 4, !43, i64 6}
!43 = !{!"short", !38, i64 0}
!44 = !{!"double", !38, i64 0}
!45 = !{!"_ChromaticityInfo", !46, i64 0, !46, i64 24, !46, i64 48, !46, i64 72}
!46 = !{!"_PrimaryInfo", !44, i64 0, !44, i64 8, !44, i64 16}
!47 = !{!"_RectangleInfo", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24}
!48 = !{!"_ErrorInfo", !44, i64 0, !44, i64 8, !44, i64 16}
!49 = !{!"_TimerInfo", !50, i64 0, !50, i64 24, !37, i64 48, !40, i64 56}
!50 = !{!"_Timer", !44, i64 0, !44, i64 8, !44, i64 16}
!51 = !{!"_ExceptionInfo", !37, i64 0, !37, i64 4, !41, i64 8, !41, i64 16, !41, i64 24, !37, i64 32, !41, i64 40, !40, i64 48}
!52 = !{!"_ProfileInfo", !41, i64 0, !40, i64 8, !41, i64 16, !40, i64 24}
!53 = !{!"long long", !38, i64 0}
!54 = !{!36, !37, i64 4}
!55 = !{!36, !37, i64 32}
!56 = !{!36, !40, i64 40}
!57 = !{!36, !40, i64 48}
!58 = !{!36, !41, i64 568}
!59 = !{!36, !41, i64 576}
!60 = distinct !{!60, !61, !62}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!"llvm.loop.unroll.disable"}
!63 = !{!64, !44, i64 0}
!64 = !{!"_GeometryInfo", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !44, i64 32}
!65 = !{!64, !44, i64 16}
!66 = !{!64, !44, i64 24}
!67 = !{i64 0, i64 4, !68, i64 4, i64 4, !68, i64 8, i64 4, !68, i64 16, i64 8, !69, i64 24, i64 8, !70, i64 32, i64 4, !71, i64 36, i64 4, !71, i64 40, i64 4, !71, i64 44, i64 4, !71, i64 48, i64 4, !71}
!68 = !{!37, !37, i64 0}
!69 = !{!44, !44, i64 0}
!70 = !{!40, !40, i64 0}
!71 = !{!72, !72, i64 0}
!72 = !{!"float", !38, i64 0}
!73 = distinct !{!73, !61, !62}
!74 = !{!42, !43, i64 0}
!75 = !{!42, !43, i64 4}
!76 = !{!42, !43, i64 2}
!77 = !{!78, !72, i64 32}
!78 = !{!"_MagickPixelPacket", !37, i64 0, !37, i64 4, !37, i64 8, !44, i64 16, !40, i64 24, !72, i64 32, !72, i64 36, !72, i64 40, !72, i64 44, !72, i64 48}
!79 = !{!78, !72, i64 36}
!80 = !{!78, !72, i64 40}
!81 = !{!78, !72, i64 44}
!82 = !{!42, !43, i64 6}
!83 = !{!36, !37, i64 0}
!84 = !{!78, !72, i64 48}
!85 = !{!43, !43, i64 0}
!86 = distinct !{!86, !61, !62}
!87 = !{!64, !44, i64 8}
!88 = distinct !{!88, !61, !62}
!89 = distinct !{!89, !61, !62}
!90 = !{!78, !37, i64 4}
!91 = !{!78, !37, i64 8}
!92 = distinct !{!92, !61, !62}
!93 = distinct !{!93, !61, !62}
!94 = !{!36, !37, i64 416}
!95 = !{!36, !40, i64 13152}
!96 = !{!36, !40, i64 13160}
!97 = distinct !{!97, !61, !62}
!98 = distinct !{!98, !61, !62}
!99 = distinct !{!99, !61, !62}
!100 = distinct !{!100, !61, !62}
