; ModuleID = 'magick/paint.c'
source_filename = "magick/paint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._MagickPixelPacket = type { i32, i32, i32, double, i64, float, float, float, float, float }
%struct._PixelPacket = type { i16, i16, i16, i16 }
%struct._Image = type { i32, i32, i32, i64, i32, i32, i32, i64, i64, i64, i64, ptr, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, double, %struct._ChromaticityInfo, i32, ptr, i32, ptr, ptr, ptr, i64, double, double, %struct._RectangleInfo, %struct._RectangleInfo, %struct._RectangleInfo, double, double, double, i32, i32, i32, i32, i32, i32, ptr, i64, i64, i64, i64, i64, i64, %struct._ErrorInfo, %struct._TimerInfo, ptr, ptr, ptr, ptr, ptr, ptr, [4096 x i8], [4096 x i8], [4096 x i8], i64, i64, %struct._ExceptionInfo, i32, i64, ptr, %struct._ProfileInfo, %struct._ProfileInfo, ptr, i64, i64, ptr, ptr, ptr, i32, i32, %struct._PixelPacket, ptr, %struct._RectangleInfo, ptr, ptr, i32, i32, i64, i32, i64, i64, i32, i64 }
%struct._ChromaticityInfo = type { %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo }
%struct._PrimaryInfo = type { double, double, double }
%struct._ErrorInfo = type { double, double, double }
%struct._TimerInfo = type { %struct._Timer, %struct._Timer, i32, i64 }
%struct._Timer = type { double, double, double }
%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._ProfileInfo = type { ptr, i64, ptr, i64 }
%struct._RectangleInfo = type { i64, i64, i64, i64 }
%struct._DrawInfo = type { ptr, ptr, %struct._RectangleInfo, %struct._AffineMatrix, i32, %struct._PixelPacket, %struct._PixelPacket, double, %struct._GradientInfo, ptr, ptr, ptr, i32, i32, i32, i32, i32, i64, double, i32, i32, ptr, i64, ptr, ptr, ptr, i32, i32, i64, ptr, double, ptr, i32, %struct._PixelPacket, %struct._PixelPacket, ptr, ptr, ptr, %struct._SegmentInfo, i32, i16, i32, %struct._ElementReference, i32, i64, double, double, double, i32 }
%struct._AffineMatrix = type { double, double, double, double, double, double }
%struct._GradientInfo = type { i32, %struct._RectangleInfo, %struct._SegmentInfo, ptr, i64, i32, i32, i64, %struct._PointInfo, float }
%struct._PointInfo = type { double, double }
%struct._SegmentInfo = type { double, double, double, double }
%struct._ElementReference = type { ptr, i32, %struct._GradientInfo, i64, ptr, ptr }
%struct._StopInfo = type { %struct._MagickPixelPacket, float }

@.str = private unnamed_addr constant [15 x i8] c"magick/paint.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"SegmentStackOverflow\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"OilPaint/Image\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Opaque/Image\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"Transparent/Image\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @FloodfillPaintImage(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i64 noundef %4, i64 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = alloca %struct._MagickPixelPacket, align 8
  %9 = alloca %struct._MagickPixelPacket, align 8
  %10 = alloca %struct._PixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #7
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %9) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #7
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %12 = load i32, ptr %11, align 8, !tbaa !34
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %16 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 173, ptr noundef nonnull @.str.2, ptr noundef nonnull %15) #7
  br label %17

17:                                               ; preds = %14, %7
  %18 = icmp slt i64 %4, 0
  br i1 %18, label %610, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %21 = load i64, ptr %20, align 8, !tbaa !53
  %22 = icmp sle i64 %21, %4
  %23 = icmp slt i64 %5, 0
  %24 = or i1 %23, %22
  br i1 %24, label %610, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %27 = load i64, ptr %26, align 8, !tbaa !54
  %28 = icmp sgt i64 %27, %5
  br i1 %28, label %29, label %610

29:                                               ; preds = %25
  %30 = tail call i32 @SetImageStorageClass(ptr noundef %0, i32 noundef 1) #7
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %610, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %34 = load i32, ptr %33, align 4, !tbaa !55
  switch i32 %34, label %37 [
    i32 19, label %35
    i32 17, label %35
    i32 2, label %35
  ]

35:                                               ; preds = %32, %32, %32
  %36 = tail call i32 @SetImageColorspace(ptr noundef %0, i32 noundef 13) #7
  br label %37

37:                                               ; preds = %32, %35
  %38 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %39 = load i32, ptr %38, align 8, !tbaa !56
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct._DrawInfo, ptr %2, i64 0, i32 5, i32 3
  %43 = load i16, ptr %42, align 2, !tbaa !57
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %41
  %46 = tail call i32 @SetImageAlphaChannel(ptr noundef %0, i32 noundef 6) #7
  br label %47

47:                                               ; preds = %45, %41, %37
  %48 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %49 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef nonnull %48) #7
  %50 = icmp eq ptr %49, null
  br i1 %50, label %610, label %51

51:                                               ; preds = %47
  %52 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %49, i32 noundef 6) #7
  %53 = tail call dereferenceable_or_null(4194304) ptr @AcquireVirtualMemory(i64 noundef 131072, i64 noundef 32) #8
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = tail call ptr @DestroyImage(ptr noundef nonnull %49) #7
  %57 = icmp eq ptr %0, null
  br i1 %57, label %610, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %60 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %48, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 199, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %59) #7
  br label %610

61:                                               ; preds = %51
  %62 = tail call ptr @GetVirtualMemoryBlob(ptr noundef nonnull %53) #7
  %63 = add nuw nsw i64 %5, 1
  %64 = load i64, ptr %26, align 8, !tbaa !54
  %65 = icmp slt i64 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = sitofp i64 %4 to double
  store double %67, ptr %62, align 8, !tbaa !65
  %68 = sitofp i64 %5 to double
  %69 = getelementptr inbounds %struct._SegmentInfo, ptr %62, i64 0, i32 1
  store double %68, ptr %69, align 8, !tbaa !66
  %70 = getelementptr inbounds %struct._SegmentInfo, ptr %62, i64 0, i32 2
  store double %67, ptr %70, align 8, !tbaa !67
  %71 = getelementptr inbounds %struct._SegmentInfo, ptr %62, i64 0, i32 3
  store double 1.000000e+00, ptr %71, align 8, !tbaa !68
  br label %72

72:                                               ; preds = %61, %66
  %73 = phi i64 [ 32, %66 ], [ 0, %61 ]
  %74 = icmp sgt i64 %64, %5
  br i1 %74, label %75, label %83

75:                                               ; preds = %72
  %76 = getelementptr inbounds i8, ptr %62, i64 %73
  %77 = sitofp i64 %4 to double
  store double %77, ptr %76, align 8, !tbaa !65
  %78 = sitofp i64 %63 to double
  %79 = getelementptr inbounds %struct._SegmentInfo, ptr %76, i64 0, i32 1
  store double %78, ptr %79, align 8, !tbaa !66
  %80 = getelementptr inbounds %struct._SegmentInfo, ptr %76, i64 0, i32 2
  store double %77, ptr %80, align 8, !tbaa !67
  %81 = getelementptr inbounds %struct._SegmentInfo, ptr %76, i64 0, i32 3
  store double -1.000000e+00, ptr %81, align 8, !tbaa !68
  %82 = add nuw nsw i64 %73, 32
  br label %83

83:                                               ; preds = %72, %75
  %84 = phi i64 [ %82, %75 ], [ %73, %72 ]
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %8) #7
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %9) #7
  %85 = call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef nonnull %48) #7
  %86 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %49, ptr noundef nonnull %48) #7
  %87 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 5
  %88 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 6
  %89 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 7
  %90 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 8
  %91 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 9
  %92 = icmp eq ptr %0, null
  %93 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %94 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 5
  %95 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 6
  %96 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 7
  %97 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 8
  %98 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 9
  %99 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 5
  %100 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 6
  %101 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 7
  %102 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 8
  %103 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 9
  %104 = icmp eq ptr %0, null
  %105 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %106 = icmp eq ptr %0, null
  %107 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  br label %108

108:                                              ; preds = %373, %83
  %109 = phi i64 [ %84, %83 ], [ %374, %373 ]
  %110 = phi i64 [ 0, %83 ], [ %375, %373 ]
  %111 = icmp sgt i64 %109, 0
  br i1 %111, label %112, label %377

112:                                              ; preds = %108
  %113 = getelementptr inbounds i8, ptr %62, i64 %109
  %114 = add nsw i64 %109, -32
  %115 = getelementptr inbounds i8, ptr %62, i64 %114
  %116 = load double, ptr %115, align 8, !tbaa !65
  %117 = fptosi double %116 to i64
  %118 = getelementptr %struct._SegmentInfo, ptr %113, i64 -1, i32 2
  %119 = load double, ptr %118, align 8, !tbaa !67
  %120 = fptosi double %119 to i64
  %121 = getelementptr %struct._SegmentInfo, ptr %113, i64 -1, i32 3
  %122 = load double, ptr %121, align 8, !tbaa !68
  %123 = fptosi double %122 to i64
  %124 = getelementptr %struct._SegmentInfo, ptr %113, i64 -1, i32 1
  %125 = load double, ptr %124, align 8, !tbaa !66
  %126 = fptosi double %125 to i64
  %127 = add nsw i64 %126, %123
  %128 = add nsw i64 %117, 1
  %129 = call ptr @GetCacheViewVirtualPixels(ptr noundef %85, i64 noundef 0, i64 noundef %127, i64 noundef %128, i64 noundef 1, ptr noundef nonnull %48) #9
  %130 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %86, i64 noundef 0, i64 noundef %127, i64 noundef %128, i64 noundef 1, ptr noundef nonnull %48) #9
  %131 = icmp eq ptr %129, null
  %132 = icmp eq ptr %130, null
  %133 = select i1 %131, i1 true, i1 %132
  br i1 %133, label %373, label %134

134:                                              ; preds = %112
  %135 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %85) #7
  %136 = icmp sgt i64 %117, -1
  br i1 %136, label %137, label %175

137:                                              ; preds = %134
  %138 = getelementptr inbounds %struct._PixelPacket, ptr %130, i64 %117
  %139 = getelementptr inbounds %struct._PixelPacket, ptr %129, i64 %117
  %140 = icmp ne ptr %135, null
  br label %141

141:                                              ; preds = %137, %170
  %142 = phi ptr [ %138, %137 ], [ %172, %170 ]
  %143 = phi i64 [ %117, %137 ], [ %173, %170 ]
  %144 = phi ptr [ %139, %137 ], [ %171, %170 ]
  %145 = getelementptr inbounds %struct._PixelPacket, ptr %142, i64 0, i32 3
  %146 = load i16, ptr %145, align 2, !tbaa !69
  %147 = icmp eq i16 %146, -1
  br i1 %147, label %175, label %148

148:                                              ; preds = %141
  %149 = getelementptr inbounds %struct._PixelPacket, ptr %144, i64 0, i32 2
  %150 = load i16, ptr %149, align 2, !tbaa !70
  %151 = uitofp i16 %150 to float
  store float %151, ptr %87, align 8, !tbaa !71
  %152 = getelementptr inbounds %struct._PixelPacket, ptr %144, i64 0, i32 1
  %153 = load i16, ptr %152, align 2, !tbaa !73
  %154 = uitofp i16 %153 to float
  store float %154, ptr %88, align 4, !tbaa !74
  %155 = load i16, ptr %144, align 2, !tbaa !75
  %156 = uitofp i16 %155 to float
  store float %156, ptr %89, align 8, !tbaa !76
  %157 = getelementptr inbounds %struct._PixelPacket, ptr %144, i64 0, i32 3
  %158 = load i16, ptr %157, align 2, !tbaa !69
  %159 = uitofp i16 %158 to float
  store float %159, ptr %90, align 4, !tbaa !77
  %160 = load i32, ptr %33, align 4, !tbaa !55
  %161 = icmp eq i32 %160, 12
  %162 = and i1 %140, %161
  br i1 %162, label %163, label %167

163:                                              ; preds = %148
  %164 = getelementptr inbounds i16, ptr %135, i64 %143
  %165 = load i16, ptr %164, align 2, !tbaa !78
  %166 = uitofp i16 %165 to float
  store float %166, ptr %91, align 8, !tbaa !79
  br label %167

167:                                              ; preds = %148, %163
  %168 = call i32 @IsMagickColorSimilar(ptr noundef nonnull %9, ptr noundef %3) #7
  %169 = icmp eq i32 %168, %6
  br i1 %169, label %175, label %170

170:                                              ; preds = %167
  store i16 -1, ptr %145, align 2, !tbaa !69
  %171 = getelementptr inbounds %struct._PixelPacket, ptr %144, i64 -1
  %172 = getelementptr inbounds %struct._PixelPacket, ptr %142, i64 -1
  %173 = add nsw i64 %143, -1
  %174 = icmp sgt i64 %143, 0
  br i1 %174, label %141, label %175, !llvm.loop !80

175:                                              ; preds = %170, %141, %167, %134
  %176 = phi i64 [ %117, %134 ], [ -1, %170 ], [ %143, %141 ], [ %143, %167 ]
  %177 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %86, ptr noundef nonnull %48) #9
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %373, label %179

179:                                              ; preds = %175
  %180 = icmp sge i64 %176, %117
  %181 = zext i1 %180 to i32
  br i1 %180, label %202, label %182

182:                                              ; preds = %179
  %183 = add nsw i64 %176, 1
  %184 = icmp slt i64 %183, %117
  br i1 %184, label %185, label %202

185:                                              ; preds = %182
  %186 = icmp slt i64 %109, 4194336
  br i1 %186, label %190, label %187

187:                                              ; preds = %185
  br i1 %92, label %373, label %188

188:                                              ; preds = %187
  %189 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %48, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 267, i32 noundef 460, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, ptr noundef nonnull %93) #7
  br label %373

190:                                              ; preds = %185
  %191 = sub nsw i64 0, %123
  %192 = icmp sgt i64 %126, -1
  br i1 %192, label %193, label %202

193:                                              ; preds = %190
  %194 = load i64, ptr %26, align 8, !tbaa !54
  %195 = icmp sgt i64 %194, %126
  br i1 %195, label %196, label %202

196:                                              ; preds = %193
  %197 = sitofp i64 %183 to double
  store double %197, ptr %115, align 8, !tbaa !65
  %198 = sitofp i64 %127 to double
  store double %198, ptr %124, align 8, !tbaa !66
  %199 = add nsw i64 %117, -1
  %200 = sitofp i64 %199 to double
  store double %200, ptr %118, align 8, !tbaa !67
  %201 = sitofp i64 %191 to double
  store double %201, ptr %121, align 8, !tbaa !68
  br label %202

202:                                              ; preds = %182, %190, %193, %196, %179
  %203 = phi i64 [ %114, %179 ], [ %109, %196 ], [ %114, %193 ], [ %114, %190 ], [ %114, %182 ]
  %204 = phi i64 [ %110, %179 ], [ %183, %196 ], [ %183, %193 ], [ %183, %190 ], [ %183, %182 ]
  %205 = phi i64 [ %176, %179 ], [ %128, %196 ], [ %128, %193 ], [ %128, %190 ], [ %128, %182 ]
  %206 = add nsw i64 %127, %123
  %207 = icmp sgt i64 %206, -1
  %208 = sitofp i64 %127 to double
  %209 = sitofp i64 %123 to double
  %210 = add nsw i64 %120, 1
  %211 = sub nsw i64 0, %123
  %212 = icmp sgt i64 %126, -1
  %213 = sitofp i64 %210 to double
  %214 = sitofp i64 %127 to double
  %215 = sitofp i64 %211 to double
  br label %216

216:                                              ; preds = %370, %202
  %217 = phi i64 [ %203, %202 ], [ %319, %370 ]
  %218 = phi i32 [ %181, %202 ], [ 0, %370 ]
  %219 = phi i64 [ %204, %202 ], [ %371, %370 ]
  %220 = phi i64 [ %205, %202 ], [ %371, %370 ]
  %221 = getelementptr inbounds i8, ptr %62, i64 %217
  %222 = icmp eq i32 %218, 0
  br i1 %222, label %223, label %318

223:                                              ; preds = %216
  %224 = load i64, ptr %20, align 8, !tbaa !53
  %225 = icmp slt i64 %220, %224
  br i1 %225, label %226, label %280

226:                                              ; preds = %223
  %227 = sub i64 %224, %220
  %228 = call ptr @GetCacheViewVirtualPixels(ptr noundef %85, i64 noundef %220, i64 noundef %127, i64 noundef %227, i64 noundef 1, ptr noundef nonnull %48) #9
  %229 = load i64, ptr %20, align 8, !tbaa !53
  %230 = sub i64 %229, %220
  %231 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %86, i64 noundef %220, i64 noundef %127, i64 noundef %230, i64 noundef 1, ptr noundef nonnull %48) #9
  %232 = icmp eq ptr %228, null
  %233 = icmp eq ptr %231, null
  %234 = select i1 %232, i1 true, i1 %233
  br i1 %234, label %373, label %235

235:                                              ; preds = %226
  %236 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %85) #7
  %237 = load i64, ptr %20, align 8, !tbaa !53
  %238 = icmp slt i64 %220, %237
  br i1 %238, label %239, label %276

239:                                              ; preds = %235
  %240 = icmp ne ptr %236, null
  br label %241

241:                                              ; preds = %239, %270
  %242 = phi ptr [ %231, %239 ], [ %272, %270 ]
  %243 = phi i64 [ %220, %239 ], [ %273, %270 ]
  %244 = phi ptr [ %228, %239 ], [ %271, %270 ]
  %245 = getelementptr inbounds %struct._PixelPacket, ptr %242, i64 0, i32 3
  %246 = load i16, ptr %245, align 2, !tbaa !69
  %247 = icmp eq i16 %246, -1
  br i1 %247, label %276, label %248

248:                                              ; preds = %241
  %249 = getelementptr inbounds %struct._PixelPacket, ptr %244, i64 0, i32 2
  %250 = load i16, ptr %249, align 2, !tbaa !70
  %251 = uitofp i16 %250 to float
  store float %251, ptr %94, align 8, !tbaa !71
  %252 = getelementptr inbounds %struct._PixelPacket, ptr %244, i64 0, i32 1
  %253 = load i16, ptr %252, align 2, !tbaa !73
  %254 = uitofp i16 %253 to float
  store float %254, ptr %95, align 4, !tbaa !74
  %255 = load i16, ptr %244, align 2, !tbaa !75
  %256 = uitofp i16 %255 to float
  store float %256, ptr %96, align 8, !tbaa !76
  %257 = getelementptr inbounds %struct._PixelPacket, ptr %244, i64 0, i32 3
  %258 = load i16, ptr %257, align 2, !tbaa !69
  %259 = uitofp i16 %258 to float
  store float %259, ptr %97, align 4, !tbaa !77
  %260 = load i32, ptr %33, align 4, !tbaa !55
  %261 = icmp eq i32 %260, 12
  %262 = and i1 %240, %261
  br i1 %262, label %263, label %267

263:                                              ; preds = %248
  %264 = getelementptr inbounds i16, ptr %236, i64 %243
  %265 = load i16, ptr %264, align 2, !tbaa !78
  %266 = uitofp i16 %265 to float
  store float %266, ptr %98, align 8, !tbaa !79
  br label %267

267:                                              ; preds = %248, %263
  %268 = call i32 @IsMagickColorSimilar(ptr noundef nonnull %9, ptr noundef %3) #7
  %269 = icmp eq i32 %268, %6
  br i1 %269, label %276, label %270

270:                                              ; preds = %267
  store i16 -1, ptr %245, align 2, !tbaa !69
  %271 = getelementptr inbounds %struct._PixelPacket, ptr %244, i64 1
  %272 = getelementptr inbounds %struct._PixelPacket, ptr %242, i64 1
  %273 = add nsw i64 %243, 1
  %274 = load i64, ptr %20, align 8, !tbaa !53
  %275 = icmp slt i64 %273, %274
  br i1 %275, label %241, label %276, !llvm.loop !83

276:                                              ; preds = %270, %241, %267, %235
  %277 = phi i64 [ %220, %235 ], [ %273, %270 ], [ %243, %241 ], [ %243, %267 ]
  %278 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %86, ptr noundef nonnull %48) #9
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %373, label %280

280:                                              ; preds = %276, %223
  %281 = phi i64 [ %277, %276 ], [ %220, %223 ]
  %282 = icmp slt i64 %217, 4194304
  br i1 %282, label %286, label %283

283:                                              ; preds = %280
  br i1 %104, label %373, label %284

284:                                              ; preds = %283
  %285 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %48, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 298, i32 noundef 460, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, ptr noundef nonnull %105) #7
  br label %373

286:                                              ; preds = %280
  br i1 %207, label %287, label %298

287:                                              ; preds = %286
  %288 = load i64, ptr %26, align 8, !tbaa !54
  %289 = icmp slt i64 %206, %288
  br i1 %289, label %290, label %298

290:                                              ; preds = %287
  %291 = sitofp i64 %219 to double
  store double %291, ptr %221, align 8, !tbaa !65
  %292 = getelementptr inbounds %struct._SegmentInfo, ptr %221, i64 0, i32 1
  store double %208, ptr %292, align 8, !tbaa !66
  %293 = add nsw i64 %281, -1
  %294 = sitofp i64 %293 to double
  %295 = getelementptr inbounds %struct._SegmentInfo, ptr %221, i64 0, i32 2
  store double %294, ptr %295, align 8, !tbaa !67
  %296 = getelementptr inbounds %struct._SegmentInfo, ptr %221, i64 0, i32 3
  store double %209, ptr %296, align 8, !tbaa !68
  %297 = add nsw i64 %217, 32
  br label %298

298:                                              ; preds = %286, %287, %290
  %299 = phi i64 [ %297, %290 ], [ %217, %287 ], [ %217, %286 ]
  %300 = getelementptr inbounds i8, ptr %62, i64 %299
  %301 = icmp sgt i64 %281, %210
  br i1 %301, label %302, label %318

302:                                              ; preds = %298
  %303 = icmp slt i64 %299, 4194304
  br i1 %303, label %307, label %304

304:                                              ; preds = %302
  br i1 %106, label %373, label %305

305:                                              ; preds = %304
  %306 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %48, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 300, i32 noundef 460, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, ptr noundef nonnull %107) #7
  br label %373

307:                                              ; preds = %302
  br i1 %212, label %308, label %318

308:                                              ; preds = %307
  %309 = load i64, ptr %26, align 8, !tbaa !54
  %310 = icmp sgt i64 %309, %126
  br i1 %310, label %311, label %318

311:                                              ; preds = %308
  store double %213, ptr %300, align 8, !tbaa !65
  %312 = getelementptr inbounds %struct._SegmentInfo, ptr %300, i64 0, i32 1
  store double %214, ptr %312, align 8, !tbaa !66
  %313 = add nsw i64 %281, -1
  %314 = sitofp i64 %313 to double
  %315 = getelementptr inbounds %struct._SegmentInfo, ptr %300, i64 0, i32 2
  store double %314, ptr %315, align 8, !tbaa !67
  %316 = getelementptr inbounds %struct._SegmentInfo, ptr %300, i64 0, i32 3
  store double %215, ptr %316, align 8, !tbaa !68
  %317 = add nsw i64 %299, 32
  br label %318

318:                                              ; preds = %298, %307, %308, %311, %216
  %319 = phi i64 [ %317, %311 ], [ %299, %308 ], [ %299, %307 ], [ %299, %298 ], [ %217, %216 ]
  %320 = phi i64 [ %281, %311 ], [ %281, %308 ], [ %281, %307 ], [ %281, %298 ], [ %220, %216 ]
  %321 = add nsw i64 %320, 1
  %322 = icmp slt i64 %320, %120
  br i1 %322, label %323, label %370

323:                                              ; preds = %318
  %324 = sub nsw i64 %120, %321
  %325 = add nsw i64 %324, 1
  %326 = call ptr @GetCacheViewVirtualPixels(ptr noundef %85, i64 noundef %321, i64 noundef %127, i64 noundef %325, i64 noundef 1, ptr noundef nonnull %48) #9
  %327 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %86, i64 noundef %321, i64 noundef %127, i64 noundef %325, i64 noundef 1, ptr noundef nonnull %48) #9
  %328 = icmp eq ptr %326, null
  %329 = icmp eq ptr %327, null
  %330 = select i1 %328, i1 true, i1 %329
  br i1 %330, label %373, label %331

331:                                              ; preds = %323
  %332 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %85) #7
  %333 = icmp slt i64 %320, %120
  br i1 %333, label %334, label %370

334:                                              ; preds = %331
  %335 = icmp ne ptr %332, null
  br label %336

336:                                              ; preds = %334, %365
  %337 = phi ptr [ %327, %334 ], [ %367, %365 ]
  %338 = phi i64 [ %321, %334 ], [ %368, %365 ]
  %339 = phi ptr [ %326, %334 ], [ %366, %365 ]
  %340 = getelementptr inbounds %struct._PixelPacket, ptr %337, i64 0, i32 3
  %341 = load i16, ptr %340, align 2, !tbaa !69
  %342 = icmp eq i16 %341, -1
  br i1 %342, label %370, label %343

343:                                              ; preds = %336
  %344 = getelementptr inbounds %struct._PixelPacket, ptr %339, i64 0, i32 2
  %345 = load i16, ptr %344, align 2, !tbaa !70
  %346 = uitofp i16 %345 to float
  store float %346, ptr %99, align 8, !tbaa !71
  %347 = getelementptr inbounds %struct._PixelPacket, ptr %339, i64 0, i32 1
  %348 = load i16, ptr %347, align 2, !tbaa !73
  %349 = uitofp i16 %348 to float
  store float %349, ptr %100, align 4, !tbaa !74
  %350 = load i16, ptr %339, align 2, !tbaa !75
  %351 = uitofp i16 %350 to float
  store float %351, ptr %101, align 8, !tbaa !76
  %352 = getelementptr inbounds %struct._PixelPacket, ptr %339, i64 0, i32 3
  %353 = load i16, ptr %352, align 2, !tbaa !69
  %354 = uitofp i16 %353 to float
  store float %354, ptr %102, align 4, !tbaa !77
  %355 = load i32, ptr %33, align 4, !tbaa !55
  %356 = icmp eq i32 %355, 12
  %357 = and i1 %335, %356
  br i1 %357, label %358, label %362

358:                                              ; preds = %343
  %359 = getelementptr inbounds i16, ptr %332, i64 %338
  %360 = load i16, ptr %359, align 2, !tbaa !78
  %361 = uitofp i16 %360 to float
  store float %361, ptr %103, align 8, !tbaa !79
  br label %362

362:                                              ; preds = %343, %358
  %363 = call i32 @IsMagickColorSimilar(ptr noundef nonnull %9, ptr noundef %3) #7
  %364 = icmp eq i32 %363, %6
  br i1 %364, label %365, label %370

365:                                              ; preds = %362
  %366 = getelementptr inbounds %struct._PixelPacket, ptr %339, i64 1
  %367 = getelementptr inbounds %struct._PixelPacket, ptr %337, i64 1
  %368 = add i64 %338, 1
  %369 = icmp eq i64 %338, %120
  br i1 %369, label %370, label %336, !llvm.loop !84

370:                                              ; preds = %362, %336, %365, %331, %318
  %371 = phi i64 [ %321, %318 ], [ %321, %331 ], [ %368, %365 ], [ %338, %336 ], [ %338, %362 ]
  %372 = icmp sgt i64 %371, %120
  br i1 %372, label %373, label %216, !llvm.loop !85

373:                                              ; preds = %370, %226, %276, %323, %304, %305, %283, %284, %187, %188, %175, %112
  %374 = phi i64 [ %114, %112 ], [ %114, %175 ], [ %114, %188 ], [ %114, %187 ], [ %217, %284 ], [ %217, %283 ], [ %299, %305 ], [ %299, %304 ], [ %217, %226 ], [ %217, %276 ], [ %319, %323 ], [ %319, %370 ]
  %375 = phi i64 [ %110, %112 ], [ %110, %175 ], [ %183, %188 ], [ %183, %187 ], [ %219, %284 ], [ %219, %283 ], [ %219, %305 ], [ %219, %304 ], [ %219, %226 ], [ %219, %276 ], [ %219, %323 ], [ %371, %370 ]
  %376 = phi i32 [ 3, %112 ], [ 3, %175 ], [ 1, %188 ], [ 1, %187 ], [ 1, %284 ], [ 1, %283 ], [ 1, %305 ], [ 1, %304 ], [ 0, %323 ], [ 0, %276 ], [ 0, %226 ], [ 0, %370 ]
  switch i32 %376, label %610 [
    i32 0, label %108
    i32 3, label %377
  ], !llvm.loop !86

377:                                              ; preds = %373, %108
  %378 = load i64, ptr %26, align 8, !tbaa !54
  %379 = icmp sgt i64 %378, 0
  br i1 %379, label %380, label %601

380:                                              ; preds = %377
  %381 = getelementptr inbounds %struct._DrawInfo, ptr %2, i64 0, i32 9
  %382 = getelementptr inbounds %struct._PixelPacket, ptr %10, i64 0, i32 3
  %383 = getelementptr inbounds %struct._DrawInfo, ptr %2, i64 0, i32 5
  %384 = getelementptr inbounds %struct._PixelPacket, ptr %10, i64 0, i32 2
  %385 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 5
  %386 = getelementptr inbounds %struct._PixelPacket, ptr %10, i64 0, i32 1
  %387 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 6
  %388 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 7
  %389 = getelementptr inbounds %struct._PixelPacket, ptr %10, i64 0, i32 3
  %390 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 8
  %391 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 1
  %392 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 9
  %393 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 9
  %394 = and i32 %1, 1
  %395 = icmp eq i32 %394, 0
  %396 = and i32 %1, 2
  %397 = icmp eq i32 %396, 0
  %398 = and i32 %1, 4
  %399 = icmp eq i32 %398, 0
  %400 = and i32 %1, 8
  %401 = icmp eq i32 %400, 0
  %402 = getelementptr inbounds %struct._DrawInfo, ptr %2, i64 0, i32 5, i32 3
  %403 = and i32 %1, 32
  %404 = icmp eq i32 %403, 0
  %405 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 9
  br label %406

406:                                              ; preds = %380, %597
  %407 = phi i64 [ 0, %380 ], [ %598, %597 ]
  %408 = load i64, ptr %20, align 8, !tbaa !53
  %409 = call ptr @GetCacheViewVirtualPixels(ptr noundef %86, i64 noundef 0, i64 noundef %407, i64 noundef %408, i64 noundef 1, ptr noundef nonnull %48) #9
  %410 = load i64, ptr %20, align 8, !tbaa !53
  %411 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %85, i64 noundef 0, i64 noundef %407, i64 noundef %410, i64 noundef 1, ptr noundef nonnull %48) #9
  %412 = icmp eq ptr %409, null
  %413 = icmp eq ptr %411, null
  %414 = select i1 %412, i1 true, i1 %413
  br i1 %414, label %594, label %415

415:                                              ; preds = %406
  %416 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %85) #7
  %417 = load i64, ptr %20, align 8, !tbaa !53
  %418 = icmp sgt i64 %417, 0
  br i1 %418, label %419, label %590

419:                                              ; preds = %415
  %420 = icmp eq ptr %416, null
  br label %421

421:                                              ; preds = %419, %584
  %422 = phi ptr [ %411, %419 ], [ %586, %584 ]
  %423 = phi i64 [ 0, %419 ], [ %587, %584 ]
  %424 = phi ptr [ %409, %419 ], [ %585, %584 ]
  %425 = getelementptr inbounds %struct._PixelPacket, ptr %424, i64 0, i32 3
  %426 = load i16, ptr %425, align 2, !tbaa !69
  %427 = icmp eq i16 %426, 0
  br i1 %427, label %584, label %428

428:                                              ; preds = %421
  %429 = load ptr, ptr %381, align 8, !tbaa !87
  %430 = icmp eq ptr %429, null
  br i1 %430, label %431, label %433

431:                                              ; preds = %428
  %432 = load i64, ptr %383, align 4
  store i64 %432, ptr %10, align 8
  br label %446

433:                                              ; preds = %428
  %434 = getelementptr inbounds %struct._Image, ptr %429, i64 0, i32 74, i32 2
  %435 = load i64, ptr %434, align 8, !tbaa !88
  %436 = add nsw i64 %435, %423
  %437 = getelementptr inbounds %struct._Image, ptr %429, i64 0, i32 74, i32 3
  %438 = load i64, ptr %437, align 8, !tbaa !89
  %439 = add nsw i64 %438, %407
  %440 = getelementptr inbounds %struct._Image, ptr %429, i64 0, i32 58
  %441 = call i32 @GetOneVirtualMethodPixel(ptr noundef nonnull %429, i32 noundef 7, i64 noundef %436, i64 noundef %439, ptr noundef nonnull %10, ptr noundef nonnull %440) #7
  %442 = getelementptr inbounds %struct._Image, ptr %429, i64 0, i32 6
  %443 = load i32, ptr %442, align 8, !tbaa !56
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %445, label %446

445:                                              ; preds = %433
  store i16 0, ptr %382, align 2, !tbaa !69
  br label %446

446:                                              ; preds = %431, %433, %445
  %447 = load i16, ptr %384, align 4, !tbaa !70
  %448 = uitofp i16 %447 to float
  store float %448, ptr %385, align 8, !tbaa !71
  %449 = load i16, ptr %386, align 2, !tbaa !73
  %450 = uitofp i16 %449 to float
  store float %450, ptr %387, align 4, !tbaa !74
  %451 = load i16, ptr %10, align 8, !tbaa !75
  %452 = uitofp i16 %451 to float
  store float %452, ptr %388, align 8, !tbaa !76
  %453 = load i16, ptr %389, align 2, !tbaa !69
  %454 = uitofp i16 %453 to float
  store float %454, ptr %390, align 4, !tbaa !77
  %455 = load i32, ptr %33, align 4, !tbaa !55
  %456 = icmp eq i32 %455, 12
  br i1 %456, label %457, label %518

457:                                              ; preds = %446
  %458 = load i32, ptr %391, align 4, !tbaa !90
  %459 = icmp eq i32 %458, 13
  br i1 %459, label %470, label %460

460:                                              ; preds = %457
  %461 = uitofp i16 %447 to double
  %462 = fmul double %461, 0x3EF0001000100010
  %463 = fptrunc double %462 to float
  %464 = uitofp i16 %449 to double
  %465 = fmul double %464, 0x3EF0001000100010
  %466 = fptrunc double %465 to float
  %467 = uitofp i16 %451 to double
  %468 = fmul double %467, 0x3EF0001000100010
  %469 = fptrunc double %468 to float
  br label %476

470:                                              ; preds = %457
  %471 = call float @DecodePixelGamma(float noundef %448) #9
  %472 = load float, ptr %387, align 4, !tbaa !74
  %473 = call float @DecodePixelGamma(float noundef %472) #9
  %474 = load float, ptr %388, align 8, !tbaa !76
  %475 = call float @DecodePixelGamma(float noundef %474) #9
  br label %476

476:                                              ; preds = %470, %460
  %477 = phi float [ %469, %460 ], [ %475, %470 ]
  %478 = phi float [ %466, %460 ], [ %473, %470 ]
  %479 = phi float [ %463, %460 ], [ %471, %470 ]
  %480 = call float @llvm.fabs.f32(float %479)
  %481 = fpext float %480 to double
  %482 = fcmp olt double %481, 1.000000e-15
  br i1 %482, label %483, label %492

483:                                              ; preds = %476
  %484 = call float @llvm.fabs.f32(float %478)
  %485 = fpext float %484 to double
  %486 = fcmp olt double %485, 1.000000e-15
  br i1 %486, label %487, label %492

487:                                              ; preds = %483
  %488 = call float @llvm.fabs.f32(float %477)
  %489 = fpext float %488 to double
  %490 = fcmp olt double %489, 1.000000e-15
  br i1 %490, label %491, label %492

491:                                              ; preds = %487
  store float 6.553500e+04, ptr %393, align 8, !tbaa !79
  br label %518

492:                                              ; preds = %487, %483, %476
  %493 = fsub float 1.000000e+00, %479
  %494 = fsub float 1.000000e+00, %478
  %495 = fsub float 1.000000e+00, %477
  %496 = fcmp olt float %494, %493
  %497 = select i1 %496, float %494, float %493
  %498 = fcmp olt float %495, %497
  %499 = select i1 %498, float %495, float %497
  %500 = fsub float %493, %499
  %501 = fpext float %500 to double
  %502 = fpext float %499 to double
  %503 = fsub double 1.000000e+00, %502
  %504 = fdiv double %501, %503
  %505 = fptrunc double %504 to float
  %506 = fsub float %494, %499
  %507 = fpext float %506 to double
  %508 = fdiv double %507, %503
  %509 = fptrunc double %508 to float
  %510 = fsub float %495, %499
  %511 = fpext float %510 to double
  %512 = fdiv double %511, %503
  %513 = fptrunc double %512 to float
  store i32 12, ptr %391, align 4, !tbaa !90
  %514 = fmul float %505, 6.553500e+04
  store float %514, ptr %385, align 8, !tbaa !71
  %515 = fmul float %509, 6.553500e+04
  store float %515, ptr %387, align 4, !tbaa !74
  %516 = fmul float %513, 6.553500e+04
  store float %516, ptr %388, align 8, !tbaa !76
  %517 = fmul float %499, 6.553500e+04
  store float %517, ptr %392, align 8, !tbaa !79
  br label %518

518:                                              ; preds = %492, %491, %446
  br i1 %395, label %530, label %519

519:                                              ; preds = %518
  %520 = load float, ptr %385, align 8, !tbaa !71
  %521 = fcmp ugt float %520, 0.000000e+00
  br i1 %521, label %522, label %527

522:                                              ; preds = %519
  %523 = fcmp ult float %520, 6.553500e+04
  br i1 %523, label %524, label %527

524:                                              ; preds = %522
  %525 = fadd float %520, 5.000000e-01
  %526 = fptoui float %525 to i16
  br label %527

527:                                              ; preds = %519, %522, %524
  %528 = phi i16 [ %526, %524 ], [ 0, %519 ], [ -1, %522 ]
  %529 = getelementptr inbounds %struct._PixelPacket, ptr %422, i64 0, i32 2
  store i16 %528, ptr %529, align 2, !tbaa !70
  br label %530

530:                                              ; preds = %527, %518
  br i1 %397, label %542, label %531

531:                                              ; preds = %530
  %532 = load float, ptr %387, align 4, !tbaa !74
  %533 = fcmp ugt float %532, 0.000000e+00
  br i1 %533, label %534, label %539

534:                                              ; preds = %531
  %535 = fcmp ult float %532, 6.553500e+04
  br i1 %535, label %536, label %539

536:                                              ; preds = %534
  %537 = fadd float %532, 5.000000e-01
  %538 = fptoui float %537 to i16
  br label %539

539:                                              ; preds = %531, %534, %536
  %540 = phi i16 [ %538, %536 ], [ 0, %531 ], [ -1, %534 ]
  %541 = getelementptr inbounds %struct._PixelPacket, ptr %422, i64 0, i32 1
  store i16 %540, ptr %541, align 2, !tbaa !73
  br label %542

542:                                              ; preds = %539, %530
  br i1 %399, label %553, label %543

543:                                              ; preds = %542
  %544 = load float, ptr %388, align 8, !tbaa !76
  %545 = fcmp ugt float %544, 0.000000e+00
  br i1 %545, label %546, label %551

546:                                              ; preds = %543
  %547 = fcmp ult float %544, 6.553500e+04
  br i1 %547, label %548, label %551

548:                                              ; preds = %546
  %549 = fadd float %544, 5.000000e-01
  %550 = fptoui float %549 to i16
  br label %551

551:                                              ; preds = %543, %546, %548
  %552 = phi i16 [ %550, %548 ], [ 0, %543 ], [ -1, %546 ]
  store i16 %552, ptr %422, align 2, !tbaa !75
  br label %553

553:                                              ; preds = %551, %542
  br i1 %401, label %554, label %557

554:                                              ; preds = %553
  %555 = load i16, ptr %402, align 2, !tbaa !57
  %556 = icmp eq i16 %555, 0
  br i1 %556, label %568, label %557

557:                                              ; preds = %554, %553
  %558 = load float, ptr %390, align 4, !tbaa !77
  %559 = fcmp ugt float %558, 0.000000e+00
  br i1 %559, label %560, label %565

560:                                              ; preds = %557
  %561 = fcmp ult float %558, 6.553500e+04
  br i1 %561, label %562, label %565

562:                                              ; preds = %560
  %563 = fadd float %558, 5.000000e-01
  %564 = fptoui float %563 to i16
  br label %565

565:                                              ; preds = %557, %560, %562
  %566 = phi i16 [ %564, %562 ], [ 0, %557 ], [ -1, %560 ]
  %567 = getelementptr inbounds %struct._PixelPacket, ptr %422, i64 0, i32 3
  store i16 %566, ptr %567, align 2, !tbaa !69
  br label %568

568:                                              ; preds = %565, %554
  br i1 %404, label %584, label %569

569:                                              ; preds = %568
  %570 = load i32, ptr %33, align 4, !tbaa !55
  %571 = icmp ne i32 %570, 12
  %572 = select i1 %571, i1 true, i1 %420
  br i1 %572, label %584, label %573

573:                                              ; preds = %569
  %574 = getelementptr inbounds i16, ptr %416, i64 %423
  %575 = load float, ptr %405, align 8, !tbaa !79
  %576 = fcmp ugt float %575, 0.000000e+00
  br i1 %576, label %577, label %582

577:                                              ; preds = %573
  %578 = fcmp ult float %575, 6.553500e+04
  br i1 %578, label %579, label %582

579:                                              ; preds = %577
  %580 = fadd float %575, 5.000000e-01
  %581 = fptoui float %580 to i16
  br label %582

582:                                              ; preds = %573, %577, %579
  %583 = phi i16 [ %581, %579 ], [ 0, %573 ], [ -1, %577 ]
  store i16 %583, ptr %574, align 2, !tbaa !78
  br label %584

584:                                              ; preds = %568, %569, %582, %421
  %585 = getelementptr inbounds %struct._PixelPacket, ptr %424, i64 1
  %586 = getelementptr inbounds %struct._PixelPacket, ptr %422, i64 1
  %587 = add nuw nsw i64 %423, 1
  %588 = load i64, ptr %20, align 8, !tbaa !53
  %589 = icmp slt i64 %587, %588
  br i1 %589, label %421, label %590, !llvm.loop !91

590:                                              ; preds = %584, %415
  %591 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %85, ptr noundef nonnull %48) #9
  %592 = icmp eq i32 %591, 0
  %593 = select i1 %592, i32 15, i32 0
  br label %594

594:                                              ; preds = %590, %406
  %595 = phi i32 [ 15, %406 ], [ %593, %590 ]
  %596 = icmp eq i32 %595, 0
  br i1 %596, label %597, label %601

597:                                              ; preds = %594
  %598 = add nuw nsw i64 %407, 1
  %599 = load i64, ptr %26, align 8, !tbaa !54
  %600 = icmp slt i64 %598, %599
  br i1 %600, label %406, label %601, !llvm.loop !92

601:                                              ; preds = %597, %594, %377
  %602 = phi i64 [ 0, %377 ], [ %598, %597 ], [ %407, %594 ]
  %603 = call ptr @DestroyCacheView(ptr noundef %86) #7
  %604 = call ptr @DestroyCacheView(ptr noundef %85) #7
  %605 = call ptr @RelinquishVirtualMemory(ptr noundef nonnull %53) #7
  %606 = call ptr @DestroyImage(ptr noundef nonnull %49) #7
  %607 = load i64, ptr %26, align 8, !tbaa !54
  %608 = icmp eq i64 %602, %607
  %609 = zext i1 %608 to i32
  br label %610

610:                                              ; preds = %373, %55, %58, %47, %29, %25, %17, %19, %601
  %611 = phi i32 [ %609, %601 ], [ 0, %19 ], [ 0, %17 ], [ 0, %25 ], [ 0, %29 ], [ 0, %47 ], [ 0, %58 ], [ 0, %55 ], [ 0, %373 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #7
  ret i32 %611
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @SetImageStorageClass(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @SetImageColorspace(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @SetImageAlphaChannel(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: allocsize(0,1)
declare ptr @AcquireVirtualMemory(i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @DestroyImage(ptr noundef) local_unnamed_addr #2

declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @GetVirtualMemoryBlob(ptr noundef) local_unnamed_addr #2

declare void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: hot
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: hot
declare ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #2

declare i32 @IsMagickColorSimilar(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: hot
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #2

declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #2

declare ptr @RelinquishVirtualMemory(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @GradientImage(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !34
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 450, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #7
  br label %12

12:                                               ; preds = %9, %5
  %13 = tail call ptr @AcquireDrawInfo() #7
  %14 = getelementptr inbounds %struct._DrawInfo, ptr %13, i64 0, i32 8
  store i32 %1, ptr %14, align 8, !tbaa !93
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %16 = load i64, ptr %15, align 8, !tbaa !53
  %17 = getelementptr inbounds %struct._DrawInfo, ptr %13, i64 0, i32 8, i32 1
  store i64 %16, ptr %17, align 8, !tbaa !94
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %19 = load i64, ptr %18, align 8, !tbaa !54
  %20 = getelementptr inbounds %struct._DrawInfo, ptr %13, i64 0, i32 8, i32 1, i32 1
  store i64 %19, ptr %20, align 8, !tbaa !95
  %21 = uitofp i64 %16 to double
  %22 = fadd double %21, -1.000000e+00
  %23 = getelementptr inbounds %struct._DrawInfo, ptr %13, i64 0, i32 8, i32 2, i32 2
  store double %22, ptr %23, align 8, !tbaa !96
  %24 = uitofp i64 %19 to double
  %25 = fadd double %24, -1.000000e+00
  %26 = getelementptr inbounds %struct._DrawInfo, ptr %13, i64 0, i32 8, i32 2, i32 3
  store double %25, ptr %26, align 8, !tbaa !97
  %27 = icmp eq i32 %1, 1
  %28 = fcmp une double %25, 0.000000e+00
  %29 = select i1 %27, i1 %28, i1 false
  br i1 %29, label %30, label %31

30:                                               ; preds = %12
  store double 0.000000e+00, ptr %23, align 8, !tbaa !96
  br label %31

31:                                               ; preds = %30, %12
  %32 = load double, ptr %23, align 8, !tbaa !96
  %33 = fmul double %32, 5.000000e-01
  %34 = getelementptr inbounds %struct._DrawInfo, ptr %13, i64 0, i32 8, i32 8
  store double %33, ptr %34, align 8, !tbaa !98
  %35 = fmul double %25, 5.000000e-01
  %36 = getelementptr inbounds %struct._DrawInfo, ptr %13, i64 0, i32 8, i32 8, i32 1
  store double %35, ptr %36, align 8, !tbaa !99
  %37 = fcmp ogt double %33, %35
  %38 = select i1 %37, double %33, double %35
  %39 = fptrunc double %38 to float
  %40 = getelementptr inbounds %struct._DrawInfo, ptr %13, i64 0, i32 8, i32 9
  store float %39, ptr %40, align 8, !tbaa !100
  %41 = getelementptr inbounds %struct._DrawInfo, ptr %13, i64 0, i32 8, i32 5
  store i32 %2, ptr %41, align 8, !tbaa !101
  %42 = getelementptr inbounds %struct._DrawInfo, ptr %13, i64 0, i32 8, i32 4
  store i64 2, ptr %42, align 8, !tbaa !102
  %43 = tail call dereferenceable_or_null(128) ptr @AcquireQuantumMemory(i64 noundef 2, i64 noundef 64) #8
  %44 = getelementptr inbounds %struct._DrawInfo, ptr %13, i64 0, i32 8, i32 3
  store ptr %43, ptr %44, align 8, !tbaa !103
  %45 = icmp eq ptr %43, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %31
  %47 = icmp eq ptr %0, null
  br i1 %47, label %101, label %48

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %50 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %51 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %49, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 474, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %50) #7
  br label %101

52:                                               ; preds = %31
  %53 = load i64, ptr %42, align 8, !tbaa !102
  %54 = shl i64 %53, 6
  %55 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %43, i32 noundef 0, i64 noundef %54) #7
  %56 = load i64, ptr %42, align 8, !tbaa !102
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %52, %58
  %59 = phi i64 [ %62, %58 ], [ 0, %52 ]
  %60 = load ptr, ptr %44, align 8, !tbaa !103
  %61 = getelementptr inbounds %struct._StopInfo, ptr %60, i64 %59
  tail call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef %61) #7
  %62 = add nuw nsw i64 %59, 1
  %63 = load i64, ptr %42, align 8, !tbaa !102
  %64 = icmp slt i64 %62, %63
  br i1 %64, label %58, label %65, !llvm.loop !104

65:                                               ; preds = %58, %52
  %66 = load ptr, ptr %44, align 8, !tbaa !103
  %67 = getelementptr inbounds %struct._PixelPacket, ptr %3, i64 0, i32 2
  %68 = load i16, ptr %67, align 2, !tbaa !70
  %69 = uitofp i16 %68 to float
  %70 = getelementptr inbounds %struct._MagickPixelPacket, ptr %66, i64 0, i32 5
  store float %69, ptr %70, align 8, !tbaa !71
  %71 = getelementptr inbounds %struct._PixelPacket, ptr %3, i64 0, i32 1
  %72 = load i16, ptr %71, align 2, !tbaa !73
  %73 = uitofp i16 %72 to float
  %74 = getelementptr inbounds %struct._MagickPixelPacket, ptr %66, i64 0, i32 6
  store float %73, ptr %74, align 4, !tbaa !74
  %75 = load i16, ptr %3, align 2, !tbaa !75
  %76 = uitofp i16 %75 to float
  %77 = getelementptr inbounds %struct._MagickPixelPacket, ptr %66, i64 0, i32 7
  store float %76, ptr %77, align 8, !tbaa !76
  %78 = getelementptr inbounds %struct._PixelPacket, ptr %3, i64 0, i32 3
  %79 = load i16, ptr %78, align 2, !tbaa !69
  %80 = uitofp i16 %79 to float
  %81 = getelementptr inbounds %struct._MagickPixelPacket, ptr %66, i64 0, i32 8
  store float %80, ptr %81, align 4, !tbaa !77
  %82 = getelementptr inbounds %struct._StopInfo, ptr %66, i64 0, i32 1
  store float 0.000000e+00, ptr %82, align 8, !tbaa !105
  %83 = getelementptr inbounds %struct._PixelPacket, ptr %4, i64 0, i32 2
  %84 = load i16, ptr %83, align 2, !tbaa !70
  %85 = uitofp i16 %84 to float
  %86 = getelementptr inbounds %struct._StopInfo, ptr %66, i64 1, i32 0, i32 5
  store float %85, ptr %86, align 8, !tbaa !71
  %87 = getelementptr inbounds %struct._PixelPacket, ptr %4, i64 0, i32 1
  %88 = load i16, ptr %87, align 2, !tbaa !73
  %89 = uitofp i16 %88 to float
  %90 = getelementptr inbounds %struct._StopInfo, ptr %66, i64 1, i32 0, i32 6
  store float %89, ptr %90, align 4, !tbaa !74
  %91 = load i16, ptr %4, align 2, !tbaa !75
  %92 = uitofp i16 %91 to float
  %93 = getelementptr inbounds %struct._StopInfo, ptr %66, i64 1, i32 0, i32 7
  store float %92, ptr %93, align 8, !tbaa !76
  %94 = getelementptr inbounds %struct._PixelPacket, ptr %4, i64 0, i32 3
  %95 = load i16, ptr %94, align 2, !tbaa !69
  %96 = uitofp i16 %95 to float
  %97 = getelementptr inbounds %struct._StopInfo, ptr %66, i64 1, i32 0, i32 8
  store float %96, ptr %97, align 4, !tbaa !77
  %98 = getelementptr inbounds %struct._StopInfo, ptr %66, i64 1, i32 1
  store float 1.000000e+00, ptr %98, align 8, !tbaa !105
  %99 = tail call i32 @DrawGradientImage(ptr noundef %0, ptr noundef %13) #7
  %100 = tail call ptr @DestroyDrawInfo(ptr noundef %13) #7
  br label %101

101:                                              ; preds = %46, %48, %65
  %102 = phi i32 [ %99, %65 ], [ 0, %48 ], [ 0, %46 ]
  ret i32 %102
}

declare ptr @AcquireDrawInfo() local_unnamed_addr #2

; Function Attrs: allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @DrawGradientImage(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @DestroyDrawInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @OilPaintImage(ptr noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 594, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #7
  br label %11

11:                                               ; preds = %8, %3
  %12 = tail call i64 @GetOptimalKernelWidth2D(double noundef %1, double noundef 5.000000e-01) #7
  %13 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #7
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %15 = load i64, ptr %14, align 8, !tbaa !53
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %17 = load i64, ptr %16, align 8, !tbaa !54
  %18 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef %15, i64 noundef %17, i32 noundef 1, ptr noundef %2) #7
  %19 = icmp eq ptr %13, null
  %20 = icmp eq ptr %18, null
  %21 = select i1 %19, i1 true, i1 %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %11
  br i1 %19, label %25, label %23

23:                                               ; preds = %22
  %24 = tail call ptr @DestroyImage(ptr noundef nonnull %13) #7
  br label %25

25:                                               ; preds = %23, %22
  br i1 %20, label %227, label %26

26:                                               ; preds = %25
  %27 = tail call ptr @DestroyImage(ptr noundef nonnull %18) #7
  br label %227

28:                                               ; preds = %11
  %29 = tail call i32 @SetImageStorageClass(ptr noundef %18, i32 noundef 1) #7
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct._Image, ptr %18, i64 0, i32 58
  tail call void @InheritException(ptr noundef %2, ptr noundef nonnull %32) #7
  %33 = tail call ptr @DestroyImage(ptr noundef %13) #7
  %34 = tail call ptr @DestroyImage(ptr noundef %18) #7
  br label %227

35:                                               ; preds = %28
  %36 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #7
  %37 = tail call ptr @AcquireQuantumMemory(i64 noundef %36, i64 noundef 8) #8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %67, label %39

39:                                               ; preds = %35
  %40 = shl i64 %36, 3
  %41 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %37, i32 noundef 0, i64 noundef %40) #7
  %42 = icmp sgt i64 %36, 0
  br i1 %42, label %46, label %67

43:                                               ; preds = %46
  %44 = add nuw nsw i64 %47, 1
  %45 = icmp eq i64 %44, %36
  br i1 %45, label %67, label %46, !llvm.loop !107

46:                                               ; preds = %39, %43
  %47 = phi i64 [ %44, %43 ], [ 0, %39 ]
  %48 = tail call dereferenceable_or_null(2048) ptr @AcquireQuantumMemory(i64 noundef 256, i64 noundef 8) #8
  %49 = getelementptr inbounds ptr, ptr %37, i64 %47
  store ptr %48, ptr %49, align 8, !tbaa !108
  %50 = icmp eq ptr %48, null
  br i1 %50, label %51, label %43

51:                                               ; preds = %46
  %52 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #7
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %51, %61
  %55 = phi i64 [ %62, %61 ], [ 0, %51 ]
  %56 = getelementptr inbounds ptr, ptr %37, i64 %55
  %57 = load ptr, ptr %56, align 8, !tbaa !108
  %58 = icmp eq ptr %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %54
  %60 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %57) #7
  store ptr %60, ptr %56, align 8, !tbaa !108
  br label %61

61:                                               ; preds = %59, %54
  %62 = add nuw nsw i64 %55, 1
  %63 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #7
  %64 = icmp slt i64 %62, %63
  br i1 %64, label %54, label %65, !llvm.loop !109

65:                                               ; preds = %61, %51
  %66 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %37) #7
  br label %67

67:                                               ; preds = %43, %39, %35, %65
  %68 = phi ptr [ %66, %65 ], [ null, %35 ], [ %37, %39 ], [ %37, %43 ]
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = tail call ptr @DestroyImage(ptr noundef %13) #7
  %72 = tail call ptr @DestroyImage(ptr noundef %18) #7
  %73 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %74 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 620, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %73) #7
  br label %227

75:                                               ; preds = %67
  %76 = tail call ptr @AcquireVirtualCacheView(ptr noundef %13, ptr noundef %2) #7
  %77 = tail call ptr @AcquireAuthenticCacheView(ptr noundef %18, ptr noundef %2) #7
  %78 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 8
  %79 = load i64, ptr %78, align 8, !tbaa !54
  %80 = icmp sgt i64 %79, 0
  br i1 %80, label %81, label %205

81:                                               ; preds = %75
  %82 = sdiv i64 %12, -2
  %83 = lshr i64 %12, 1
  %84 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 7
  %85 = getelementptr inbounds %struct._Image, ptr %18, i64 0, i32 7
  %86 = icmp sgt i64 %12, 0
  %87 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 1
  %88 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %89 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %90 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %91

91:                                               ; preds = %81, %197
  %92 = phi i64 [ 0, %81 ], [ %200, %197 ]
  %93 = phi i32 [ 1, %81 ], [ %199, %197 ]
  %94 = phi i64 [ 0, %81 ], [ %198, %197 ]
  %95 = icmp eq i32 %93, 0
  br i1 %95, label %197, label %96

96:                                               ; preds = %91
  %97 = sub nsw i64 %92, %83
  %98 = load i64, ptr %84, align 8, !tbaa !53
  %99 = add i64 %98, %12
  %100 = call ptr @GetCacheViewVirtualPixels(ptr noundef %76, i64 noundef %82, i64 noundef %97, i64 noundef %99, i64 noundef %12, ptr noundef %2) #9
  %101 = load i64, ptr %85, align 8, !tbaa !53
  %102 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %77, i64 noundef 0, i64 noundef %92, i64 noundef %101, i64 noundef 1, ptr noundef %2) #9
  %103 = icmp eq ptr %100, null
  %104 = icmp eq ptr %102, null
  %105 = select i1 %103, i1 true, i1 %104
  br i1 %105, label %197, label %106

106:                                              ; preds = %96
  %107 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %76) #7
  %108 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %77) #7
  %109 = load ptr, ptr %68, align 8, !tbaa !108
  %110 = load i64, ptr %84, align 8, !tbaa !53
  %111 = icmp sgt i64 %110, 0
  br i1 %111, label %112, label %182

112:                                              ; preds = %106
  %113 = icmp eq ptr %108, null
  %114 = icmp eq ptr %107, null
  br label %115

115:                                              ; preds = %112, %176
  %116 = phi ptr [ %102, %112 ], [ %178, %176 ]
  %117 = phi i64 [ 0, %112 ], [ %179, %176 ]
  %118 = phi ptr [ %100, %112 ], [ %177, %176 ]
  %119 = call ptr @ResetMagickMemory(ptr noundef %109, i32 noundef 0, i64 noundef 2048) #7
  br i1 %86, label %120, label %161

120:                                              ; preds = %115, %155
  %121 = phi i64 [ %159, %155 ], [ 0, %115 ]
  %122 = phi i64 [ %152, %155 ], [ 0, %115 ]
  %123 = phi i64 [ %151, %155 ], [ 0, %115 ]
  %124 = phi i64 [ %158, %155 ], [ 0, %115 ]
  %125 = getelementptr %struct._PixelPacket, ptr %118, i64 %124
  br label %126

126:                                              ; preds = %120, %138
  %127 = phi i64 [ %122, %120 ], [ %152, %138 ]
  %128 = phi i64 [ %123, %120 ], [ %151, %138 ]
  %129 = phi i64 [ 0, %120 ], [ %153, %138 ]
  %130 = getelementptr %struct._PixelPacket, ptr %125, i64 %129
  %131 = call float @GetPixelIntensity(ptr noundef %13, ptr noundef %130) #9
  %132 = fcmp ugt float %131, 0.000000e+00
  br i1 %132, label %133, label %138

133:                                              ; preds = %126
  %134 = fcmp ult float %131, 6.553500e+04
  br i1 %134, label %135, label %138

135:                                              ; preds = %133
  %136 = fadd float %131, 5.000000e-01
  %137 = fptoui float %136 to i16
  br label %138

138:                                              ; preds = %126, %133, %135
  %139 = phi i16 [ %137, %135 ], [ 0, %126 ], [ -1, %133 ]
  %140 = zext i16 %139 to i64
  %141 = add nuw nsw i64 %140, 128
  %142 = lshr i64 %141, 8
  %143 = sub nsw i64 %141, %142
  %144 = lshr i64 %143, 8
  %145 = and i64 %144, 255
  %146 = getelementptr inbounds i64, ptr %109, i64 %145
  %147 = load i64, ptr %146, align 8, !tbaa !110
  %148 = add i64 %147, 1
  store i64 %148, ptr %146, align 8, !tbaa !110
  %149 = icmp ugt i64 %148, %128
  %150 = add nsw i64 %129, %124
  %151 = call i64 @llvm.umax.i64(i64 %148, i64 %128)
  %152 = select i1 %149, i64 %150, i64 %127
  %153 = add nuw nsw i64 %129, 1
  %154 = icmp eq i64 %153, %12
  br i1 %154, label %155, label %126, !llvm.loop !111

155:                                              ; preds = %138
  %156 = load i64, ptr %84, align 8, !tbaa !53
  %157 = add i64 %124, %12
  %158 = add i64 %157, %156
  %159 = add nuw nsw i64 %121, 1
  %160 = icmp eq i64 %159, %12
  br i1 %160, label %161, label %120, !llvm.loop !112

161:                                              ; preds = %155, %115
  %162 = phi i64 [ 0, %115 ], [ %152, %155 ]
  %163 = getelementptr inbounds %struct._PixelPacket, ptr %118, i64 %162
  %164 = load i64, ptr %163, align 2
  store i64 %164, ptr %116, align 2
  %165 = load i32, ptr %87, align 4, !tbaa !55
  %166 = icmp eq i32 %165, 12
  br i1 %166, label %167, label %176

167:                                              ; preds = %161
  %168 = getelementptr inbounds i16, ptr %108, i64 %117
  br i1 %113, label %176, label %169

169:                                              ; preds = %167
  br i1 %114, label %174, label %170

170:                                              ; preds = %169
  %171 = getelementptr inbounds i16, ptr %107, i64 %117
  %172 = getelementptr inbounds i16, ptr %171, i64 %162
  %173 = load i16, ptr %172, align 2, !tbaa !78
  br label %174

174:                                              ; preds = %169, %170
  %175 = phi i16 [ %173, %170 ], [ 0, %169 ]
  store i16 %175, ptr %168, align 2, !tbaa !78
  br label %176

176:                                              ; preds = %167, %174, %161
  %177 = getelementptr inbounds %struct._PixelPacket, ptr %118, i64 1
  %178 = getelementptr inbounds %struct._PixelPacket, ptr %116, i64 1
  %179 = add nuw nsw i64 %117, 1
  %180 = load i64, ptr %84, align 8, !tbaa !53
  %181 = icmp slt i64 %179, %180
  br i1 %181, label %115, label %182, !llvm.loop !113

182:                                              ; preds = %176, %106
  %183 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %77, ptr noundef %2) #9
  %184 = icmp ne i32 %183, 0
  %185 = zext i1 %184 to i32
  %186 = load ptr, ptr %88, align 8, !tbaa !114
  %187 = icmp eq ptr %186, null
  br i1 %187, label %197, label %188

188:                                              ; preds = %182
  %189 = add nsw i64 %94, 1
  %190 = load i64, ptr %16, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #7
  %191 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.6, ptr noundef nonnull %89) #7
  %192 = load ptr, ptr %88, align 8, !tbaa !114
  %193 = load ptr, ptr %90, align 8, !tbaa !115
  %194 = call i32 %192(ptr noundef nonnull %4, i64 noundef %94, i64 noundef %190, ptr noundef %193) #7
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #7
  %195 = icmp eq i32 %194, 0
  %196 = select i1 %195, i32 0, i32 %185
  br label %197

197:                                              ; preds = %182, %188, %96, %91
  %198 = phi i64 [ %94, %91 ], [ %94, %96 ], [ %189, %188 ], [ %94, %182 ]
  %199 = phi i32 [ 0, %91 ], [ 0, %96 ], [ %196, %188 ], [ %185, %182 ]
  %200 = add nuw nsw i64 %92, 1
  %201 = load i64, ptr %78, align 8, !tbaa !54
  %202 = icmp slt i64 %200, %201
  br i1 %202, label %91, label %203, !llvm.loop !116

203:                                              ; preds = %197
  %204 = icmp eq i32 %199, 0
  br label %205

205:                                              ; preds = %203, %75
  %206 = phi i1 [ false, %75 ], [ %204, %203 ]
  %207 = call ptr @DestroyCacheView(ptr noundef %77) #7
  %208 = call ptr @DestroyCacheView(ptr noundef %76) #7
  %209 = call i64 @GetMagickResourceLimit(i32 noundef 6) #7
  %210 = icmp sgt i64 %209, 0
  br i1 %210, label %211, label %222

211:                                              ; preds = %205, %218
  %212 = phi i64 [ %219, %218 ], [ 0, %205 ]
  %213 = getelementptr inbounds ptr, ptr %68, i64 %212
  %214 = load ptr, ptr %213, align 8, !tbaa !108
  %215 = icmp eq ptr %214, null
  br i1 %215, label %218, label %216

216:                                              ; preds = %211
  %217 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %214) #7
  store ptr %217, ptr %213, align 8, !tbaa !108
  br label %218

218:                                              ; preds = %216, %211
  %219 = add nuw nsw i64 %212, 1
  %220 = call i64 @GetMagickResourceLimit(i32 noundef 6) #7
  %221 = icmp slt i64 %219, %220
  br i1 %221, label %211, label %222, !llvm.loop !109

222:                                              ; preds = %218, %205
  %223 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %68) #7
  %224 = call ptr @DestroyImage(ptr noundef %13) #7
  br i1 %206, label %225, label %227

225:                                              ; preds = %222
  %226 = call ptr @DestroyImage(ptr noundef %18) #7
  br label %227

227:                                              ; preds = %222, %225, %25, %26, %70, %31
  %228 = phi ptr [ null, %31 ], [ null, %70 ], [ null, %26 ], [ null, %25 ], [ %226, %225 ], [ %18, %222 ]
  ret ptr %228
}

declare i64 @GetOptimalKernelWidth2D(double noundef, double noundef) local_unnamed_addr #2

declare void @InheritException(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: hot
declare ptr @QueueCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: hot
declare float @GetPixelIntensity(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define dso_local i32 @OpaquePaintImage(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @OpaquePaintImageChannel(ptr noundef %0, i32 noundef 47, ptr noundef %1, ptr noundef %2, i32 noundef %3), !range !117
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local i32 @OpaquePaintImageChannel(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca [4096 x i8], align 16
  %7 = alloca %struct._MagickPixelPacket, align 8
  %8 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #7
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %10 = load i32, ptr %9, align 8, !tbaa !34
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %14 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 812, ptr noundef nonnull @.str.2, ptr noundef nonnull %13) #7
  br label %15

15:                                               ; preds = %12, %5
  %16 = tail call i32 @SetImageStorageClass(ptr noundef %0, i32 noundef 1) #7
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %212, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !55
  switch i32 %20, label %44 [
    i32 19, label %21
    i32 17, label %21
    i32 2, label %21
  ]

21:                                               ; preds = %18, %18, %18
  %22 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !90
  %24 = add i32 %23, -1
  %25 = icmp ult i32 %24, 2
  br i1 %25, label %26, label %42

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  %28 = load float, ptr %27, align 8, !tbaa !71
  %29 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 6
  %30 = load float, ptr %29, align 4, !tbaa !74
  %31 = fsub float %28, %30
  %32 = tail call float @llvm.fabs.f32(float %31)
  %33 = fpext float %32 to double
  %34 = fcmp olt double %33, 1.000000e-15
  br i1 %34, label %35, label %42

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  %37 = load float, ptr %36, align 8, !tbaa !76
  %38 = fsub float %30, %37
  %39 = tail call float @llvm.fabs.f32(float %38)
  %40 = fpext float %39 to double
  %41 = fcmp olt double %40, 1.000000e-15
  br i1 %41, label %44, label %42

42:                                               ; preds = %26, %35, %21
  %43 = tail call i32 @SetImageColorspace(ptr noundef %0, i32 noundef 13) #7
  br label %44

44:                                               ; preds = %18, %35, %42
  %45 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  %46 = load float, ptr %45, align 4, !tbaa !77
  %47 = fcmp une float %46, 0.000000e+00
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %50 = load i32, ptr %49, align 8, !tbaa !56
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = tail call i32 @SetImageAlphaChannel(ptr noundef %0, i32 noundef 6) #7
  br label %54

54:                                               ; preds = %52, %48, %44
  %55 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %7) #7
  %56 = call ptr @AcquireAuthenticCacheView(ptr noundef %0, ptr noundef nonnull %55) #7
  %57 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %58 = load i64, ptr %57, align 8, !tbaa !54
  %59 = icmp sgt i64 %58, 0
  br i1 %59, label %60, label %209

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %62 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 5
  %63 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 6
  %64 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 7
  %65 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 8
  %66 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 9
  %67 = and i32 %1, 1
  %68 = icmp eq i32 %67, 0
  %69 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  %70 = and i32 %1, 2
  %71 = icmp eq i32 %70, 0
  %72 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 6
  %73 = and i32 %1, 4
  %74 = icmp eq i32 %73, 0
  %75 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  %76 = and i32 %1, 8
  %77 = icmp eq i32 %76, 0
  %78 = and i32 %1, 32
  %79 = icmp eq i32 %78, 0
  %80 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  %81 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %82 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %83 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %84

84:                                               ; preds = %60, %203
  %85 = phi i64 [ 0, %60 ], [ %206, %203 ]
  %86 = phi i64 [ 0, %60 ], [ %205, %203 ]
  %87 = phi i32 [ 1, %60 ], [ %204, %203 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #7
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %203, label %89

89:                                               ; preds = %84
  %90 = load i64, ptr %61, align 8, !tbaa !53
  %91 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %56, i64 noundef 0, i64 noundef %85, i64 noundef %90, i64 noundef 1, ptr noundef nonnull %55) #9
  %92 = icmp eq ptr %91, null
  br i1 %92, label %203, label %93

93:                                               ; preds = %89
  %94 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %56) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(56) %7, i64 56, i1 false), !tbaa.struct !118
  %95 = load i64, ptr %61, align 8, !tbaa !53
  %96 = icmp sgt i64 %95, 0
  br i1 %96, label %97, label %188

97:                                               ; preds = %93
  %98 = icmp ne ptr %94, null
  %99 = icmp eq ptr %94, null
  br label %100

100:                                              ; preds = %97, %183
  %101 = phi ptr [ %91, %97 ], [ %184, %183 ]
  %102 = phi i64 [ 0, %97 ], [ %185, %183 ]
  %103 = getelementptr inbounds i16, ptr %94, i64 %102
  %104 = getelementptr inbounds %struct._PixelPacket, ptr %101, i64 0, i32 2
  %105 = load i16, ptr %104, align 2, !tbaa !70
  %106 = uitofp i16 %105 to float
  store float %106, ptr %62, align 8, !tbaa !71
  %107 = getelementptr inbounds %struct._PixelPacket, ptr %101, i64 0, i32 1
  %108 = load i16, ptr %107, align 2, !tbaa !73
  %109 = uitofp i16 %108 to float
  store float %109, ptr %63, align 4, !tbaa !74
  %110 = load i16, ptr %101, align 2, !tbaa !75
  %111 = uitofp i16 %110 to float
  store float %111, ptr %64, align 8, !tbaa !76
  %112 = getelementptr inbounds %struct._PixelPacket, ptr %101, i64 0, i32 3
  %113 = load i16, ptr %112, align 2, !tbaa !69
  %114 = uitofp i16 %113 to float
  store float %114, ptr %65, align 4, !tbaa !77
  %115 = load i32, ptr %19, align 4, !tbaa !55
  %116 = icmp eq i32 %115, 12
  %117 = and i1 %98, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %100
  %119 = load i16, ptr %103, align 2, !tbaa !78
  %120 = uitofp i16 %119 to float
  store float %120, ptr %66, align 8, !tbaa !79
  br label %121

121:                                              ; preds = %100, %118
  %122 = call i32 @IsMagickColorSimilar(ptr noundef nonnull %8, ptr noundef %2) #7
  %123 = icmp eq i32 %122, %4
  br i1 %123, label %183, label %124

124:                                              ; preds = %121
  br i1 %68, label %135, label %125

125:                                              ; preds = %124
  %126 = load float, ptr %69, align 8, !tbaa !71
  %127 = fcmp ugt float %126, 0.000000e+00
  br i1 %127, label %128, label %133

128:                                              ; preds = %125
  %129 = fcmp ult float %126, 6.553500e+04
  br i1 %129, label %130, label %133

130:                                              ; preds = %128
  %131 = fadd float %126, 5.000000e-01
  %132 = fptoui float %131 to i16
  br label %133

133:                                              ; preds = %125, %128, %130
  %134 = phi i16 [ %132, %130 ], [ 0, %125 ], [ -1, %128 ]
  store i16 %134, ptr %104, align 2, !tbaa !70
  br label %135

135:                                              ; preds = %133, %124
  br i1 %71, label %146, label %136

136:                                              ; preds = %135
  %137 = load float, ptr %72, align 4, !tbaa !74
  %138 = fcmp ugt float %137, 0.000000e+00
  br i1 %138, label %139, label %144

139:                                              ; preds = %136
  %140 = fcmp ult float %137, 6.553500e+04
  br i1 %140, label %141, label %144

141:                                              ; preds = %139
  %142 = fadd float %137, 5.000000e-01
  %143 = fptoui float %142 to i16
  br label %144

144:                                              ; preds = %136, %139, %141
  %145 = phi i16 [ %143, %141 ], [ 0, %136 ], [ -1, %139 ]
  store i16 %145, ptr %107, align 2, !tbaa !73
  br label %146

146:                                              ; preds = %144, %135
  br i1 %74, label %157, label %147

147:                                              ; preds = %146
  %148 = load float, ptr %75, align 8, !tbaa !76
  %149 = fcmp ugt float %148, 0.000000e+00
  br i1 %149, label %150, label %155

150:                                              ; preds = %147
  %151 = fcmp ult float %148, 6.553500e+04
  br i1 %151, label %152, label %155

152:                                              ; preds = %150
  %153 = fadd float %148, 5.000000e-01
  %154 = fptoui float %153 to i16
  br label %155

155:                                              ; preds = %147, %150, %152
  %156 = phi i16 [ %154, %152 ], [ 0, %147 ], [ -1, %150 ]
  store i16 %156, ptr %101, align 2, !tbaa !75
  br label %157

157:                                              ; preds = %155, %146
  br i1 %77, label %168, label %158

158:                                              ; preds = %157
  %159 = load float, ptr %45, align 4, !tbaa !77
  %160 = fcmp ugt float %159, 0.000000e+00
  br i1 %160, label %161, label %166

161:                                              ; preds = %158
  %162 = fcmp ult float %159, 6.553500e+04
  br i1 %162, label %163, label %166

163:                                              ; preds = %161
  %164 = fadd float %159, 5.000000e-01
  %165 = fptoui float %164 to i16
  br label %166

166:                                              ; preds = %158, %161, %163
  %167 = phi i16 [ %165, %163 ], [ 0, %158 ], [ -1, %161 ]
  store i16 %167, ptr %112, align 2, !tbaa !69
  br label %168

168:                                              ; preds = %166, %157
  br i1 %79, label %183, label %169

169:                                              ; preds = %168
  %170 = load i32, ptr %19, align 4, !tbaa !55
  %171 = icmp ne i32 %170, 12
  %172 = select i1 %171, i1 true, i1 %99
  br i1 %172, label %183, label %173

173:                                              ; preds = %169
  %174 = load float, ptr %80, align 8, !tbaa !79
  %175 = fcmp ugt float %174, 0.000000e+00
  br i1 %175, label %176, label %181

176:                                              ; preds = %173
  %177 = fcmp ult float %174, 6.553500e+04
  br i1 %177, label %178, label %181

178:                                              ; preds = %176
  %179 = fadd float %174, 5.000000e-01
  %180 = fptoui float %179 to i16
  br label %181

181:                                              ; preds = %173, %176, %178
  %182 = phi i16 [ %180, %178 ], [ 0, %173 ], [ -1, %176 ]
  store i16 %182, ptr %103, align 2, !tbaa !78
  br label %183

183:                                              ; preds = %168, %169, %181, %121
  %184 = getelementptr inbounds %struct._PixelPacket, ptr %101, i64 1
  %185 = add nuw nsw i64 %102, 1
  %186 = load i64, ptr %61, align 8, !tbaa !53
  %187 = icmp slt i64 %185, %186
  br i1 %187, label %100, label %188, !llvm.loop !122

188:                                              ; preds = %183, %93
  %189 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %56, ptr noundef nonnull %55) #9
  %190 = icmp ne i32 %189, 0
  %191 = zext i1 %190 to i32
  %192 = load ptr, ptr %81, align 8, !tbaa !114
  %193 = icmp eq ptr %192, null
  br i1 %193, label %203, label %194

194:                                              ; preds = %188
  %195 = add nsw i64 %86, 1
  %196 = load i64, ptr %57, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #7
  %197 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7, ptr noundef nonnull %82) #7
  %198 = load ptr, ptr %81, align 8, !tbaa !114
  %199 = load ptr, ptr %83, align 8, !tbaa !115
  %200 = call i32 %198(ptr noundef nonnull %6, i64 noundef %86, i64 noundef %196, ptr noundef %199) #7
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #7
  %201 = icmp eq i32 %200, 0
  %202 = select i1 %201, i32 0, i32 %191
  br label %203

203:                                              ; preds = %188, %194, %89, %84
  %204 = phi i32 [ 0, %84 ], [ 0, %89 ], [ %202, %194 ], [ %191, %188 ]
  %205 = phi i64 [ %86, %84 ], [ %86, %89 ], [ %195, %194 ], [ %86, %188 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #7
  %206 = add nuw nsw i64 %85, 1
  %207 = load i64, ptr %57, align 8, !tbaa !54
  %208 = icmp slt i64 %206, %207
  br i1 %208, label %84, label %209, !llvm.loop !123

209:                                              ; preds = %203, %54
  %210 = phi i32 [ 1, %54 ], [ %204, %203 ]
  %211 = call ptr @DestroyCacheView(ptr noundef %56) #7
  br label %212

212:                                              ; preds = %15, %209
  %213 = phi i32 [ %210, %209 ], [ 0, %15 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #7
  ret i32 %213
}

; Function Attrs: nounwind uwtable
define dso_local i32 @TransparentPaintImage(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  %6 = alloca %struct._MagickPixelPacket, align 8
  %7 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #7
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %9 = load i32, ptr %8, align 8, !tbaa !34
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 960, ptr noundef nonnull @.str.2, ptr noundef nonnull %12) #7
  br label %14

14:                                               ; preds = %11, %4
  %15 = tail call i32 @SetImageStorageClass(ptr noundef %0, i32 noundef 1) #7
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %109, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %19 = load i32, ptr %18, align 8, !tbaa !56
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = tail call i32 @SetImageAlphaChannel(ptr noundef %0, i32 noundef 6) #7
  br label %23

23:                                               ; preds = %21, %17
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %6) #7
  %25 = call ptr @AcquireAuthenticCacheView(ptr noundef %0, ptr noundef nonnull %24) #7
  %26 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %27 = load i64, ptr %26, align 8, !tbaa !54
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %106

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %31 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 5
  %32 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 6
  %33 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 7
  %34 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 8
  %35 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %36 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 9
  %37 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %38 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %39 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %40

40:                                               ; preds = %29, %100
  %41 = phi i64 [ 0, %29 ], [ %103, %100 ]
  %42 = phi i64 [ 0, %29 ], [ %102, %100 ]
  %43 = phi i32 [ 1, %29 ], [ %101, %100 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #7
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %100, label %45

45:                                               ; preds = %40
  %46 = load i64, ptr %30, align 8, !tbaa !53
  %47 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %25, i64 noundef 0, i64 noundef %41, i64 noundef %46, i64 noundef 1, ptr noundef nonnull %24) #9
  %48 = icmp eq ptr %47, null
  br i1 %48, label %100, label %49

49:                                               ; preds = %45
  %50 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %25) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(56) %6, i64 56, i1 false), !tbaa.struct !118
  %51 = load i64, ptr %30, align 8, !tbaa !53
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %85

53:                                               ; preds = %49
  %54 = icmp ne ptr %50, null
  br label %55

55:                                               ; preds = %53, %80
  %56 = phi ptr [ %47, %53 ], [ %81, %80 ]
  %57 = phi i64 [ 0, %53 ], [ %82, %80 ]
  %58 = getelementptr inbounds %struct._PixelPacket, ptr %56, i64 0, i32 2
  %59 = load i16, ptr %58, align 2, !tbaa !70
  %60 = uitofp i16 %59 to float
  store float %60, ptr %31, align 8, !tbaa !71
  %61 = getelementptr inbounds %struct._PixelPacket, ptr %56, i64 0, i32 1
  %62 = load i16, ptr %61, align 2, !tbaa !73
  %63 = uitofp i16 %62 to float
  store float %63, ptr %32, align 4, !tbaa !74
  %64 = load i16, ptr %56, align 2, !tbaa !75
  %65 = uitofp i16 %64 to float
  store float %65, ptr %33, align 8, !tbaa !76
  %66 = getelementptr inbounds %struct._PixelPacket, ptr %56, i64 0, i32 3
  %67 = load i16, ptr %66, align 2, !tbaa !69
  %68 = uitofp i16 %67 to float
  store float %68, ptr %34, align 4, !tbaa !77
  %69 = load i32, ptr %35, align 4, !tbaa !55
  %70 = icmp eq i32 %69, 12
  %71 = and i1 %54, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %55
  %73 = getelementptr inbounds i16, ptr %50, i64 %57
  %74 = load i16, ptr %73, align 2, !tbaa !78
  %75 = uitofp i16 %74 to float
  store float %75, ptr %36, align 8, !tbaa !79
  br label %76

76:                                               ; preds = %55, %72
  %77 = call i32 @IsMagickColorSimilar(ptr noundef nonnull %7, ptr noundef %1) #7
  %78 = icmp eq i32 %77, %3
  br i1 %78, label %80, label %79

79:                                               ; preds = %76
  store i16 %2, ptr %66, align 2, !tbaa !69
  br label %80

80:                                               ; preds = %79, %76
  %81 = getelementptr inbounds %struct._PixelPacket, ptr %56, i64 1
  %82 = add nuw nsw i64 %57, 1
  %83 = load i64, ptr %30, align 8, !tbaa !53
  %84 = icmp slt i64 %82, %83
  br i1 %84, label %55, label %85, !llvm.loop !124

85:                                               ; preds = %80, %49
  %86 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %25, ptr noundef nonnull %24) #9
  %87 = icmp ne i32 %86, 0
  %88 = zext i1 %87 to i32
  %89 = load ptr, ptr %37, align 8, !tbaa !114
  %90 = icmp eq ptr %89, null
  br i1 %90, label %100, label %91

91:                                               ; preds = %85
  %92 = add nsw i64 %42, 1
  %93 = load i64, ptr %26, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #7
  %94 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8, ptr noundef nonnull %38) #7
  %95 = load ptr, ptr %37, align 8, !tbaa !114
  %96 = load ptr, ptr %39, align 8, !tbaa !115
  %97 = call i32 %95(ptr noundef nonnull %5, i64 noundef %42, i64 noundef %93, ptr noundef %96) #7
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #7
  %98 = icmp eq i32 %97, 0
  %99 = select i1 %98, i32 0, i32 %88
  br label %100

100:                                              ; preds = %85, %91, %45, %40
  %101 = phi i32 [ 0, %40 ], [ 0, %45 ], [ %99, %91 ], [ %88, %85 ]
  %102 = phi i64 [ %42, %40 ], [ %42, %45 ], [ %92, %91 ], [ %42, %85 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #7
  %103 = add nuw nsw i64 %41, 1
  %104 = load i64, ptr %26, align 8, !tbaa !54
  %105 = icmp slt i64 %103, %104
  br i1 %105, label %40, label %106, !llvm.loop !125

106:                                              ; preds = %100, %23
  %107 = phi i32 [ 1, %23 ], [ %101, %100 ]
  %108 = call ptr @DestroyCacheView(ptr noundef %25) #7
  br label %109

109:                                              ; preds = %14, %106
  %110 = phi i32 [ %107, %106 ], [ 0, %14 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #7
  ret i32 %110
}

; Function Attrs: nounwind uwtable
define dso_local i32 @TransparentPaintImageChroma(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i16 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca [4096 x i8], align 16
  %7 = alloca %struct._MagickPixelPacket, align 8
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %9 = load i32, ptr %8, align 8, !tbaa !34
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1094, ptr noundef nonnull @.str.2, ptr noundef nonnull %12) #7
  br label %14

14:                                               ; preds = %11, %5
  %15 = tail call i32 @SetImageStorageClass(ptr noundef %0, i32 noundef 1) #7
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %134, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %19 = load i32, ptr %18, align 8, !tbaa !56
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = tail call i32 @SetImageAlphaChannel(ptr noundef %0, i32 noundef 7) #7
  br label %23

23:                                               ; preds = %21, %17
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %25 = tail call ptr @AcquireAuthenticCacheView(ptr noundef %0, ptr noundef nonnull %24) #7
  %26 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %27 = load i64, ptr %26, align 8, !tbaa !54
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %131

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %31 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 5
  %32 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 6
  %33 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 7
  %34 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 8
  %35 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %36 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 9
  %37 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %38 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 5
  %39 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %40 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 6
  %41 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %42 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 7
  %43 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %44 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %45 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %46

46:                                               ; preds = %29, %125
  %47 = phi i32 [ 1, %29 ], [ %127, %125 ]
  %48 = phi i64 [ 0, %29 ], [ %128, %125 ]
  %49 = phi i64 [ 0, %29 ], [ %126, %125 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #7
  %50 = icmp eq i32 %47, 0
  br i1 %50, label %125, label %51

51:                                               ; preds = %46
  %52 = load i64, ptr %30, align 8, !tbaa !53
  %53 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %25, i64 noundef 0, i64 noundef %48, i64 noundef %52, i64 noundef 1, ptr noundef nonnull %24) #9
  %54 = icmp eq ptr %53, null
  br i1 %54, label %125, label %55

55:                                               ; preds = %51
  %56 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %25) #7
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %7) #7
  %57 = load i64, ptr %30, align 8, !tbaa !53
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %59, label %110

59:                                               ; preds = %55
  %60 = load i32, ptr %35, align 4, !tbaa !55
  %61 = icmp eq i32 %60, 12
  %62 = icmp ne ptr %56, null
  %63 = and i1 %62, %61
  %64 = load float, ptr %37, align 8, !tbaa !71
  br label %65

65:                                               ; preds = %59, %104
  %66 = phi ptr [ %53, %59 ], [ %105, %104 ]
  %67 = phi i64 [ 0, %59 ], [ %106, %104 ]
  %68 = getelementptr inbounds %struct._PixelPacket, ptr %66, i64 0, i32 2
  %69 = load i16, ptr %68, align 2, !tbaa !70
  %70 = uitofp i16 %69 to float
  %71 = getelementptr inbounds %struct._PixelPacket, ptr %66, i64 0, i32 1
  %72 = load i16, ptr %71, align 2, !tbaa !73
  %73 = uitofp i16 %72 to float
  %74 = load i16, ptr %66, align 2, !tbaa !75
  %75 = uitofp i16 %74 to float
  %76 = getelementptr inbounds %struct._PixelPacket, ptr %66, i64 0, i32 3
  %77 = load i16, ptr %76, align 2, !tbaa !69
  br i1 %63, label %78, label %82

78:                                               ; preds = %65
  %79 = getelementptr inbounds i16, ptr %56, i64 %67
  %80 = load i16, ptr %79, align 2, !tbaa !78
  %81 = uitofp i16 %80 to float
  store float %81, ptr %36, align 8, !tbaa !79
  br label %82

82:                                               ; preds = %65, %78
  %83 = fcmp ugt float %64, %70
  br i1 %83, label %99, label %84

84:                                               ; preds = %82
  %85 = load float, ptr %38, align 8, !tbaa !71
  %86 = fcmp ult float %85, %70
  br i1 %86, label %99, label %87

87:                                               ; preds = %84
  %88 = load float, ptr %39, align 4, !tbaa !74
  %89 = fcmp ugt float %88, %73
  br i1 %89, label %99, label %90

90:                                               ; preds = %87
  %91 = load float, ptr %40, align 4, !tbaa !74
  %92 = fcmp ult float %91, %73
  br i1 %92, label %99, label %93

93:                                               ; preds = %90
  %94 = load float, ptr %41, align 8, !tbaa !76
  %95 = fcmp ugt float %94, %75
  br i1 %95, label %99, label %96

96:                                               ; preds = %93
  %97 = load float, ptr %42, align 8, !tbaa !76
  %98 = fcmp oge float %97, %75
  br label %99

99:                                               ; preds = %96, %93, %90, %87, %84, %82
  %100 = phi i1 [ false, %93 ], [ false, %90 ], [ false, %87 ], [ false, %84 ], [ false, %82 ], [ %98, %96 ]
  %101 = zext i1 %100 to i32
  %102 = icmp eq i32 %101, %4
  br i1 %102, label %104, label %103

103:                                              ; preds = %99
  store i16 %3, ptr %76, align 2, !tbaa !69
  br label %104

104:                                              ; preds = %103, %99
  %105 = getelementptr inbounds %struct._PixelPacket, ptr %66, i64 1
  %106 = add nuw nsw i64 %67, 1
  %107 = icmp eq i64 %106, %57
  br i1 %107, label %108, label %65, !llvm.loop !126

108:                                              ; preds = %104
  %109 = uitofp i16 %77 to float
  store float %70, ptr %31, align 8, !tbaa !71
  store float %73, ptr %32, align 4, !tbaa !74
  store float %75, ptr %33, align 8, !tbaa !76
  store float %109, ptr %34, align 4, !tbaa !77
  br label %110

110:                                              ; preds = %108, %55
  %111 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %25, ptr noundef nonnull %24) #9
  %112 = icmp ne i32 %111, 0
  %113 = zext i1 %112 to i32
  %114 = load ptr, ptr %43, align 8, !tbaa !114
  %115 = icmp eq ptr %114, null
  br i1 %115, label %125, label %116

116:                                              ; preds = %110
  %117 = add nsw i64 %49, 1
  %118 = load i64, ptr %26, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #7
  %119 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8, ptr noundef nonnull %44) #7
  %120 = load ptr, ptr %43, align 8, !tbaa !114
  %121 = load ptr, ptr %45, align 8, !tbaa !115
  %122 = call i32 %120(ptr noundef nonnull %6, i64 noundef %49, i64 noundef %118, ptr noundef %121) #7
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #7
  %123 = icmp eq i32 %122, 0
  %124 = select i1 %123, i32 0, i32 %113
  br label %125

125:                                              ; preds = %110, %116, %51, %46
  %126 = phi i64 [ %49, %46 ], [ %49, %51 ], [ %117, %116 ], [ %49, %110 ]
  %127 = phi i32 [ 0, %46 ], [ 0, %51 ], [ %124, %116 ], [ %113, %110 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #7
  %128 = add nuw nsw i64 %48, 1
  %129 = load i64, ptr %26, align 8, !tbaa !54
  %130 = icmp slt i64 %128, %129
  br i1 %130, label %46, label %131, !llvm.loop !127

131:                                              ; preds = %125, %23
  %132 = phi i32 [ 1, %23 ], [ %127, %125 ]
  %133 = call ptr @DestroyCacheView(ptr noundef %25) #7
  br label %134

134:                                              ; preds = %14, %131
  %135 = phi i32 [ %132, %131 ], [ 0, %14 ]
  ret i32 %135
}

declare i32 @GetOneVirtualMethodPixel(ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: hot
declare float @DecodePixelGamma(float noundef) local_unnamed_addr #4

declare i64 @GetMagickResourceLimit(i32 noundef) local_unnamed_addr #2

declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { hot "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0,1) }
attributes #9 = { hot nounwind }

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
!53 = !{!35, !39, i64 40}
!54 = !{!35, !39, i64 48}
!55 = !{!35, !36, i64 4}
!56 = !{!35, !36, i64 32}
!57 = !{!58, !42, i64 106}
!58 = !{!"_DrawInfo", !40, i64 0, !40, i64 8, !46, i64 16, !59, i64 48, !36, i64 96, !41, i64 100, !41, i64 108, !43, i64 120, !60, i64 128, !40, i64 256, !40, i64 264, !40, i64 272, !36, i64 280, !36, i64 284, !36, i64 288, !36, i64 292, !36, i64 296, !39, i64 304, !43, i64 312, !36, i64 320, !36, i64 324, !40, i64 328, !39, i64 336, !40, i64 344, !40, i64 352, !40, i64 360, !36, i64 368, !36, i64 372, !39, i64 376, !40, i64 384, !43, i64 392, !40, i64 400, !36, i64 408, !41, i64 412, !41, i64 420, !40, i64 432, !40, i64 440, !40, i64 448, !61, i64 456, !36, i64 488, !42, i64 492, !36, i64 496, !64, i64 504, !36, i64 672, !39, i64 680, !43, i64 688, !43, i64 696, !43, i64 704, !36, i64 712}
!59 = !{!"_AffineMatrix", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40}
!60 = !{!"_GradientInfo", !36, i64 0, !46, i64 8, !61, i64 40, !40, i64 72, !39, i64 80, !36, i64 88, !36, i64 92, !39, i64 96, !62, i64 104, !63, i64 120}
!61 = !{!"_SegmentInfo", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24}
!62 = !{!"_PointInfo", !43, i64 0, !43, i64 8}
!63 = !{!"float", !37, i64 0}
!64 = !{!"_ElementReference", !40, i64 0, !36, i64 8, !60, i64 16, !39, i64 144, !40, i64 152, !40, i64 160}
!65 = !{!61, !43, i64 0}
!66 = !{!61, !43, i64 8}
!67 = !{!61, !43, i64 16}
!68 = !{!61, !43, i64 24}
!69 = !{!41, !42, i64 6}
!70 = !{!41, !42, i64 4}
!71 = !{!72, !63, i64 32}
!72 = !{!"_MagickPixelPacket", !36, i64 0, !36, i64 4, !36, i64 8, !43, i64 16, !39, i64 24, !63, i64 32, !63, i64 36, !63, i64 40, !63, i64 44, !63, i64 48}
!73 = !{!41, !42, i64 2}
!74 = !{!72, !63, i64 36}
!75 = !{!41, !42, i64 0}
!76 = !{!72, !63, i64 40}
!77 = !{!72, !63, i64 44}
!78 = !{!42, !42, i64 0}
!79 = !{!72, !63, i64 48}
!80 = distinct !{!80, !81, !82}
!81 = !{!"llvm.loop.mustprogress"}
!82 = !{!"llvm.loop.unroll.disable"}
!83 = distinct !{!83, !81, !82}
!84 = distinct !{!84, !81, !82}
!85 = distinct !{!85, !81, !82}
!86 = distinct !{!86, !81, !82}
!87 = !{!58, !40, i64 256}
!88 = !{!35, !39, i64 13152}
!89 = !{!35, !39, i64 13160}
!90 = !{!72, !36, i64 4}
!91 = distinct !{!91, !81, !82}
!92 = distinct !{!92, !81, !82}
!93 = !{!60, !36, i64 0}
!94 = !{!60, !39, i64 8}
!95 = !{!60, !39, i64 16}
!96 = !{!60, !43, i64 56}
!97 = !{!60, !43, i64 64}
!98 = !{!60, !43, i64 104}
!99 = !{!60, !43, i64 112}
!100 = !{!60, !63, i64 120}
!101 = !{!60, !36, i64 88}
!102 = !{!60, !39, i64 80}
!103 = !{!60, !40, i64 72}
!104 = distinct !{!104, !81, !82}
!105 = !{!106, !63, i64 56}
!106 = !{!"_StopInfo", !72, i64 0, !63, i64 56}
!107 = distinct !{!107, !81, !82}
!108 = !{!40, !40, i64 0}
!109 = distinct !{!109, !81, !82}
!110 = !{!39, !39, i64 0}
!111 = distinct !{!111, !81, !82}
!112 = distinct !{!112, !81, !82}
!113 = distinct !{!113, !81, !82}
!114 = !{!35, !40, i64 568}
!115 = !{!35, !40, i64 576}
!116 = distinct !{!116, !81, !82}
!117 = !{i32 0, i32 2}
!118 = !{i64 0, i64 4, !119, i64 4, i64 4, !119, i64 8, i64 4, !119, i64 16, i64 8, !120, i64 24, i64 8, !110, i64 32, i64 4, !121, i64 36, i64 4, !121, i64 40, i64 4, !121, i64 44, i64 4, !121, i64 48, i64 4, !121}
!119 = !{!36, !36, i64 0}
!120 = !{!43, !43, i64 0}
!121 = !{!63, !63, i64 0}
!122 = distinct !{!122, !81, !82}
!123 = distinct !{!123, !81, !82}
!124 = distinct !{!124, !81, !82}
!125 = distinct !{!125, !81, !82}
!126 = distinct !{!126, !81, !82}
!127 = distinct !{!127, !81, !82}
