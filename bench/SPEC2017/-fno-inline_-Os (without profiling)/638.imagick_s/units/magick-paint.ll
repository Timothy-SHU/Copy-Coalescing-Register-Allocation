; ModuleID = 'magick/paint.c'
source_filename = "magick/paint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }
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
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@.gomp_critical_user_MagickCore_OilPaintImage.var = common global [8 x i32] zeroinitializer, align 8
@.str.6 = private unnamed_addr constant [15 x i8] c"OilPaint/Image\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.gomp_critical_user_MagickCore_OpaquePaintImageChannel.var = common global [8 x i32] zeroinitializer, align 8
@.str.8 = private unnamed_addr constant [13 x i8] c"Opaque/Image\00", align 1
@.gomp_critical_user_MagickCore_TransparentPaintImage.var = common global [8 x i32] zeroinitializer, align 8
@.str.9 = private unnamed_addr constant [18 x i8] c"Transparent/Image\00", align 1
@.gomp_critical_user_MagickCore_TransparentPaintImageChroma.var = common global [8 x i32] zeroinitializer, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @FloodfillPaintImage(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i64 noundef %4, i64 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = alloca %struct._MagickPixelPacket, align 8
  %9 = alloca %struct._MagickPixelPacket, align 8
  %10 = alloca %struct._PixelPacket, align 2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %9) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #9
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %12 = load i32, ptr %11, align 8, !tbaa !6
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %16 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 173, ptr noundef nonnull @.str.2, ptr noundef nonnull %15) #15
  br label %17

17:                                               ; preds = %14, %7
  %18 = icmp slt i64 %4, 0
  br i1 %18, label %395, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %21 = load i64, ptr %20, align 8, !tbaa !25
  %22 = icmp sle i64 %21, %4
  %23 = icmp slt i64 %5, 0
  %24 = or i1 %23, %22
  br i1 %24, label %395, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %27 = load i64, ptr %26, align 8, !tbaa !26
  %28 = icmp sgt i64 %27, %5
  br i1 %28, label %29, label %395

29:                                               ; preds = %25
  %30 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %0, i32 noundef 1) #15
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %395, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %34 = load i32, ptr %33, align 4, !tbaa !27
  %35 = tail call fastcc i32 @IsGrayColorspace(i32 noundef %34) #16, !range !28
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  %38 = tail call i32 @SetImageColorspace(ptr noundef nonnull %0, i32 noundef 13) #15
  br label %39

39:                                               ; preds = %37, %32
  %40 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %41 = load i32, ptr %40, align 8, !tbaa !29
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct._DrawInfo, ptr %2, i64 0, i32 5, i32 3
  %45 = load i16, ptr %44, align 2, !tbaa !30
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %0, i32 noundef 6) #15
  br label %49

49:                                               ; preds = %47, %43, %39
  %50 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %51 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef nonnull %50) #15
  %52 = icmp eq ptr %51, null
  br i1 %52, label %395, label %53

53:                                               ; preds = %49
  %54 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %51, i32 noundef 6) #15
  %55 = tail call dereferenceable_or_null(4194304) ptr @AcquireVirtualMemory(i64 noundef 131072, i64 noundef 32) #17
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = tail call ptr @DestroyImage(ptr noundef nonnull %51) #15
  %59 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %60 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %50, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 199, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %59) #15
  br label %395

61:                                               ; preds = %53
  %62 = tail call ptr @GetVirtualMemoryBlob(ptr noundef nonnull %55) #15
  %63 = add nuw nsw i64 %5, 1
  %64 = load i64, ptr %26, align 8, !tbaa !26
  %65 = icmp slt i64 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = sitofp i64 %4 to double
  store double %67, ptr %62, align 8, !tbaa !38
  %68 = sitofp i64 %5 to double
  %69 = getelementptr inbounds %struct._SegmentInfo, ptr %62, i64 0, i32 1
  store double %68, ptr %69, align 8, !tbaa !39
  %70 = getelementptr inbounds %struct._SegmentInfo, ptr %62, i64 0, i32 2
  store double %67, ptr %70, align 8, !tbaa !40
  %71 = getelementptr inbounds %struct._SegmentInfo, ptr %62, i64 0, i32 3
  store double 1.000000e+00, ptr %71, align 8, !tbaa !41
  br label %72

72:                                               ; preds = %61, %66
  %73 = phi i64 [ 32, %66 ], [ 0, %61 ]
  %74 = icmp sgt i64 %64, %5
  br i1 %74, label %75, label %83

75:                                               ; preds = %72
  %76 = getelementptr inbounds i8, ptr %62, i64 %73
  %77 = sitofp i64 %4 to double
  store double %77, ptr %76, align 8, !tbaa !38
  %78 = sitofp i64 %63 to double
  %79 = getelementptr inbounds %struct._SegmentInfo, ptr %76, i64 0, i32 1
  store double %78, ptr %79, align 8, !tbaa !39
  %80 = getelementptr inbounds %struct._SegmentInfo, ptr %76, i64 0, i32 2
  store double %77, ptr %80, align 8, !tbaa !40
  %81 = getelementptr inbounds %struct._SegmentInfo, ptr %76, i64 0, i32 3
  store double -1.000000e+00, ptr %81, align 8, !tbaa !41
  %82 = add nuw nsw i64 %73, 32
  br label %83

83:                                               ; preds = %72, %75
  %84 = phi i64 [ %82, %75 ], [ %73, %72 ]
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %8) #15
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %9) #15
  %85 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef nonnull %50) #15
  %86 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %51, ptr noundef nonnull %50) #15
  %87 = icmp eq i64 %84, 0
  br i1 %87, label %296, label %88

88:                                               ; preds = %83, %292
  %89 = phi i64 [ %294, %292 ], [ 0, %83 ]
  %90 = phi i64 [ %293, %292 ], [ %84, %83 ]
  %91 = getelementptr inbounds i8, ptr %62, i64 %90
  %92 = add nsw i64 %90, -32
  %93 = getelementptr inbounds i8, ptr %62, i64 %92
  %94 = load double, ptr %93, align 8, !tbaa !38
  %95 = fptosi double %94 to i64
  %96 = getelementptr %struct._SegmentInfo, ptr %91, i64 -1, i32 2
  %97 = load double, ptr %96, align 8, !tbaa !40
  %98 = fptosi double %97 to i64
  %99 = getelementptr %struct._SegmentInfo, ptr %91, i64 -1, i32 3
  %100 = load double, ptr %99, align 8, !tbaa !41
  %101 = fptosi double %100 to i64
  %102 = getelementptr %struct._SegmentInfo, ptr %91, i64 -1, i32 1
  %103 = load double, ptr %102, align 8, !tbaa !39
  %104 = fptosi double %103 to i64
  %105 = add nsw i64 %104, %101
  %106 = add nsw i64 %95, 1
  %107 = call ptr @GetCacheViewVirtualPixels(ptr noundef %85, i64 noundef 0, i64 noundef %105, i64 noundef %106, i64 noundef 1, ptr noundef nonnull %50) #18
  %108 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %86, i64 noundef 0, i64 noundef %105, i64 noundef %106, i64 noundef 1, ptr noundef nonnull %50) #18
  %109 = icmp eq ptr %107, null
  %110 = icmp eq ptr %108, null
  %111 = select i1 %109, i1 true, i1 %110
  br i1 %111, label %296, label %112

112:                                              ; preds = %88
  %113 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %85) #15
  %114 = icmp sgt i64 %95, -1
  br i1 %114, label %115, label %134

115:                                              ; preds = %112
  %116 = getelementptr inbounds %struct._PixelPacket, ptr %108, i64 %95
  %117 = getelementptr inbounds %struct._PixelPacket, ptr %107, i64 %95
  br label %118

118:                                              ; preds = %115, %129
  %119 = phi ptr [ %131, %129 ], [ %116, %115 ]
  %120 = phi i64 [ %132, %129 ], [ %95, %115 ]
  %121 = phi ptr [ %130, %129 ], [ %117, %115 ]
  %122 = getelementptr inbounds %struct._PixelPacket, ptr %119, i64 0, i32 3
  %123 = load i16, ptr %122, align 2, !tbaa !42
  %124 = icmp eq i16 %123, -1
  br i1 %124, label %134, label %125

125:                                              ; preds = %118
  %126 = getelementptr inbounds i16, ptr %113, i64 %120
  call fastcc void @SetMagickPixelPacket(ptr noundef %0, ptr noundef %121, ptr noundef %126, ptr noundef nonnull %9) #16
  %127 = call i32 @IsMagickColorSimilar(ptr noundef nonnull %9, ptr noundef %3) #15
  %128 = icmp eq i32 %127, %6
  br i1 %128, label %134, label %129

129:                                              ; preds = %125
  store i16 -1, ptr %122, align 2, !tbaa !42
  %130 = getelementptr inbounds %struct._PixelPacket, ptr %121, i64 -1
  %131 = getelementptr inbounds %struct._PixelPacket, ptr %119, i64 -1
  %132 = add nsw i64 %120, -1
  %133 = icmp sgt i64 %120, 0
  br i1 %133, label %118, label %134, !llvm.loop !43

134:                                              ; preds = %129, %118, %125, %112
  %135 = phi i64 [ %95, %112 ], [ %120, %125 ], [ %120, %118 ], [ -1, %129 ]
  %136 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %86, ptr noundef nonnull %50) #18
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %296, label %138

138:                                              ; preds = %134
  %139 = icmp sge i64 %135, %95
  %140 = zext i1 %139 to i32
  br i1 %139, label %163, label %141

141:                                              ; preds = %138
  %142 = add nsw i64 %135, 1
  %143 = icmp slt i64 %142, %95
  br i1 %143, label %144, label %163

144:                                              ; preds = %141
  %145 = icmp ult i64 %90, 4194336
  br i1 %145, label %151, label %146

146:                                              ; preds = %144
  %147 = icmp eq ptr %0, null
  br i1 %147, label %395, label %148

148:                                              ; preds = %146
  %149 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %150 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %50, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 267, i32 noundef 460, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, ptr noundef nonnull %149) #15
  br label %395

151:                                              ; preds = %144
  %152 = sub nsw i64 0, %101
  %153 = icmp sgt i64 %104, -1
  br i1 %153, label %154, label %163

154:                                              ; preds = %151
  %155 = load i64, ptr %26, align 8, !tbaa !26
  %156 = icmp sgt i64 %155, %104
  br i1 %156, label %157, label %163

157:                                              ; preds = %154
  %158 = sitofp i64 %142 to double
  store double %158, ptr %93, align 8, !tbaa !38
  %159 = sitofp i64 %105 to double
  store double %159, ptr %102, align 8, !tbaa !39
  %160 = add nsw i64 %95, -1
  %161 = sitofp i64 %160 to double
  store double %161, ptr %96, align 8, !tbaa !40
  %162 = sitofp i64 %152 to double
  store double %162, ptr %99, align 8, !tbaa !41
  br label %163

163:                                              ; preds = %141, %151, %154, %157, %138
  %164 = phi i64 [ %92, %138 ], [ %90, %157 ], [ %92, %154 ], [ %92, %151 ], [ %92, %141 ]
  %165 = phi i64 [ %89, %138 ], [ %142, %157 ], [ %142, %154 ], [ %142, %151 ], [ %142, %141 ]
  %166 = phi i64 [ %135, %138 ], [ %106, %157 ], [ %106, %154 ], [ %106, %151 ], [ %106, %141 ]
  %167 = add nsw i64 %105, %101
  %168 = icmp sgt i64 %167, -1
  %169 = sitofp i64 %105 to double
  %170 = sitofp i64 %101 to double
  %171 = add i64 %98, 1
  %172 = sub nsw i64 0, %101
  %173 = icmp sgt i64 %104, -1
  %174 = sitofp i64 %171 to double
  %175 = sitofp i64 %172 to double
  br label %176

176:                                              ; preds = %289, %163
  %177 = phi i64 [ %164, %163 ], [ %259, %289 ]
  %178 = phi i32 [ %140, %163 ], [ 0, %289 ]
  %179 = phi i64 [ %165, %163 ], [ %290, %289 ]
  %180 = phi i64 [ %166, %163 ], [ %290, %289 ]
  %181 = getelementptr inbounds i8, ptr %62, i64 %177
  %182 = icmp eq i32 %178, 0
  br i1 %182, label %183, label %258

183:                                              ; preds = %176
  %184 = load i64, ptr %20, align 8, !tbaa !25
  %185 = icmp slt i64 %180, %184
  br i1 %185, label %186, label %220

186:                                              ; preds = %183
  %187 = sub i64 %184, %180
  %188 = call ptr @GetCacheViewVirtualPixels(ptr noundef %85, i64 noundef %180, i64 noundef %105, i64 noundef %187, i64 noundef 1, ptr noundef nonnull %50) #18
  %189 = load i64, ptr %20, align 8, !tbaa !25
  %190 = sub i64 %189, %180
  %191 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %86, i64 noundef %180, i64 noundef %105, i64 noundef %190, i64 noundef 1, ptr noundef nonnull %50) #18
  %192 = icmp eq ptr %188, null
  %193 = icmp eq ptr %191, null
  %194 = select i1 %192, i1 true, i1 %193
  br i1 %194, label %292, label %195

195:                                              ; preds = %186
  %196 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %85) #15
  %197 = load i64, ptr %20, align 8, !tbaa !25
  %198 = icmp slt i64 %180, %197
  br i1 %198, label %199, label %216

199:                                              ; preds = %195, %210
  %200 = phi ptr [ %212, %210 ], [ %191, %195 ]
  %201 = phi i64 [ %213, %210 ], [ %180, %195 ]
  %202 = phi ptr [ %211, %210 ], [ %188, %195 ]
  %203 = getelementptr inbounds %struct._PixelPacket, ptr %200, i64 0, i32 3
  %204 = load i16, ptr %203, align 2, !tbaa !42
  %205 = icmp eq i16 %204, -1
  br i1 %205, label %216, label %206

206:                                              ; preds = %199
  %207 = getelementptr inbounds i16, ptr %196, i64 %201
  call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %202, ptr noundef %207, ptr noundef nonnull %9) #16
  %208 = call i32 @IsMagickColorSimilar(ptr noundef nonnull %9, ptr noundef %3) #15
  %209 = icmp eq i32 %208, %6
  br i1 %209, label %216, label %210

210:                                              ; preds = %206
  store i16 -1, ptr %203, align 2, !tbaa !42
  %211 = getelementptr inbounds %struct._PixelPacket, ptr %202, i64 1
  %212 = getelementptr inbounds %struct._PixelPacket, ptr %200, i64 1
  %213 = add nsw i64 %201, 1
  %214 = load i64, ptr %20, align 8, !tbaa !25
  %215 = icmp slt i64 %213, %214
  br i1 %215, label %199, label %216, !llvm.loop !45

216:                                              ; preds = %210, %199, %206, %195
  %217 = phi i64 [ %180, %195 ], [ %201, %206 ], [ %201, %199 ], [ %213, %210 ]
  %218 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %86, ptr noundef nonnull %50) #18
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %292, label %220

220:                                              ; preds = %216, %183
  %221 = phi i64 [ %217, %216 ], [ %180, %183 ]
  %222 = icmp slt i64 %177, 4194304
  br i1 %222, label %226, label %223

223:                                              ; preds = %220
  %224 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %225 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %50, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 298, i32 noundef 460, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, ptr noundef nonnull %224) #15
  br label %395

226:                                              ; preds = %220
  br i1 %168, label %227, label %238

227:                                              ; preds = %226
  %228 = load i64, ptr %26, align 8, !tbaa !26
  %229 = icmp slt i64 %167, %228
  br i1 %229, label %230, label %238

230:                                              ; preds = %227
  %231 = sitofp i64 %179 to double
  store double %231, ptr %181, align 8, !tbaa !38
  %232 = getelementptr inbounds %struct._SegmentInfo, ptr %181, i64 0, i32 1
  store double %169, ptr %232, align 8, !tbaa !39
  %233 = add nsw i64 %221, -1
  %234 = sitofp i64 %233 to double
  %235 = getelementptr inbounds %struct._SegmentInfo, ptr %181, i64 0, i32 2
  store double %234, ptr %235, align 8, !tbaa !40
  %236 = getelementptr inbounds %struct._SegmentInfo, ptr %181, i64 0, i32 3
  store double %170, ptr %236, align 8, !tbaa !41
  %237 = add nsw i64 %177, 32
  br label %238

238:                                              ; preds = %226, %227, %230
  %239 = phi i64 [ %237, %230 ], [ %177, %227 ], [ %177, %226 ]
  %240 = getelementptr inbounds i8, ptr %62, i64 %239
  %241 = icmp sgt i64 %221, %171
  br i1 %241, label %242, label %258

242:                                              ; preds = %238
  %243 = icmp slt i64 %239, 4194304
  br i1 %243, label %247, label %244

244:                                              ; preds = %242
  %245 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %246 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %50, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 300, i32 noundef 460, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, ptr noundef nonnull %245) #15
  br label %395

247:                                              ; preds = %242
  br i1 %173, label %248, label %258

248:                                              ; preds = %247
  %249 = load i64, ptr %26, align 8, !tbaa !26
  %250 = icmp sgt i64 %249, %104
  br i1 %250, label %251, label %258

251:                                              ; preds = %248
  store double %174, ptr %240, align 8, !tbaa !38
  %252 = getelementptr inbounds %struct._SegmentInfo, ptr %240, i64 0, i32 1
  store double %169, ptr %252, align 8, !tbaa !39
  %253 = add nsw i64 %221, -1
  %254 = sitofp i64 %253 to double
  %255 = getelementptr inbounds %struct._SegmentInfo, ptr %240, i64 0, i32 2
  store double %254, ptr %255, align 8, !tbaa !40
  %256 = getelementptr inbounds %struct._SegmentInfo, ptr %240, i64 0, i32 3
  store double %175, ptr %256, align 8, !tbaa !41
  %257 = add nsw i64 %239, 32
  br label %258

258:                                              ; preds = %238, %247, %248, %251, %176
  %259 = phi i64 [ %257, %251 ], [ %239, %248 ], [ %239, %247 ], [ %239, %238 ], [ %177, %176 ]
  %260 = phi i64 [ %221, %251 ], [ %221, %248 ], [ %221, %247 ], [ %221, %238 ], [ %180, %176 ]
  %261 = add nsw i64 %260, 1
  %262 = icmp slt i64 %260, %98
  br i1 %262, label %263, label %289

263:                                              ; preds = %258
  %264 = sub nsw i64 %98, %261
  %265 = add nsw i64 %264, 1
  %266 = call ptr @GetCacheViewVirtualPixels(ptr noundef %85, i64 noundef %261, i64 noundef %105, i64 noundef %265, i64 noundef 1, ptr noundef nonnull %50) #18
  %267 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %86, i64 noundef %261, i64 noundef %105, i64 noundef %265, i64 noundef 1, ptr noundef nonnull %50) #18
  %268 = icmp eq ptr %266, null
  %269 = icmp eq ptr %267, null
  %270 = select i1 %268, i1 true, i1 %269
  br i1 %270, label %292, label %271

271:                                              ; preds = %263
  %272 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %85) #15
  br label %273

273:                                              ; preds = %271, %284
  %274 = phi ptr [ %286, %284 ], [ %267, %271 ]
  %275 = phi i64 [ %287, %284 ], [ %261, %271 ]
  %276 = phi ptr [ %285, %284 ], [ %266, %271 ]
  %277 = getelementptr inbounds %struct._PixelPacket, ptr %274, i64 0, i32 3
  %278 = load i16, ptr %277, align 2, !tbaa !42
  %279 = icmp eq i16 %278, -1
  br i1 %279, label %289, label %280

280:                                              ; preds = %273
  %281 = getelementptr inbounds i16, ptr %272, i64 %275
  call fastcc void @SetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %276, ptr noundef %281, ptr noundef nonnull %9) #16
  %282 = call i32 @IsMagickColorSimilar(ptr noundef nonnull %9, ptr noundef %3) #15
  %283 = icmp eq i32 %282, %6
  br i1 %283, label %284, label %289

284:                                              ; preds = %280
  %285 = getelementptr inbounds %struct._PixelPacket, ptr %276, i64 1
  %286 = getelementptr inbounds %struct._PixelPacket, ptr %274, i64 1
  %287 = add i64 %275, 1
  %288 = icmp eq i64 %275, %98
  br i1 %288, label %289, label %273, !llvm.loop !46

289:                                              ; preds = %280, %273, %284, %258
  %290 = phi i64 [ %261, %258 ], [ %275, %280 ], [ %275, %273 ], [ %171, %284 ]
  %291 = icmp sgt i64 %290, %98
  br i1 %291, label %292, label %176, !llvm.loop !47

292:                                              ; preds = %289, %186, %216, %263
  %293 = phi i64 [ %177, %186 ], [ %177, %216 ], [ %259, %263 ], [ %259, %289 ]
  %294 = phi i64 [ %179, %186 ], [ %179, %216 ], [ %179, %263 ], [ %290, %289 ]
  %295 = icmp sgt i64 %293, 0
  br i1 %295, label %88, label %296

296:                                              ; preds = %292, %88, %134, %83
  %297 = load i64, ptr %26, align 8, !tbaa !26
  %298 = icmp sgt i64 %297, 0
  br i1 %298, label %299, label %386

299:                                              ; preds = %296
  %300 = and i32 %1, 1
  %301 = icmp eq i32 %300, 0
  %302 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 5
  %303 = and i32 %1, 2
  %304 = icmp eq i32 %303, 0
  %305 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 6
  %306 = and i32 %1, 4
  %307 = icmp eq i32 %306, 0
  %308 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 7
  %309 = and i32 %1, 8
  %310 = icmp eq i32 %309, 0
  %311 = getelementptr inbounds %struct._DrawInfo, ptr %2, i64 0, i32 5, i32 3
  %312 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 8
  %313 = and i32 %1, 32
  %314 = icmp eq i32 %313, 0
  %315 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 9
  br label %316

316:                                              ; preds = %299, %382
  %317 = phi i64 [ 0, %299 ], [ %383, %382 ]
  %318 = load i64, ptr %20, align 8, !tbaa !25
  %319 = call ptr @GetCacheViewVirtualPixels(ptr noundef %86, i64 noundef 0, i64 noundef %317, i64 noundef %318, i64 noundef 1, ptr noundef nonnull %50) #18
  %320 = load i64, ptr %20, align 8, !tbaa !25
  %321 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %85, i64 noundef 0, i64 noundef %317, i64 noundef %320, i64 noundef 1, ptr noundef nonnull %50) #18
  %322 = icmp eq ptr %319, null
  %323 = icmp eq ptr %321, null
  %324 = select i1 %322, i1 true, i1 %323
  br i1 %324, label %386, label %325

325:                                              ; preds = %316
  %326 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %85) #15
  %327 = load i64, ptr %20, align 8, !tbaa !25
  %328 = icmp sgt i64 %327, 0
  br i1 %328, label %329, label %379

329:                                              ; preds = %325
  %330 = icmp eq ptr %326, null
  br label %331

331:                                              ; preds = %329, %373
  %332 = phi ptr [ %321, %329 ], [ %375, %373 ]
  %333 = phi i64 [ 0, %329 ], [ %376, %373 ]
  %334 = phi ptr [ %319, %329 ], [ %374, %373 ]
  %335 = getelementptr inbounds %struct._PixelPacket, ptr %334, i64 0, i32 3
  %336 = load i16, ptr %335, align 2, !tbaa !42
  %337 = icmp eq i16 %336, 0
  br i1 %337, label %373, label %338

338:                                              ; preds = %331
  call fastcc void @GetFillColor(ptr noundef %2, i64 noundef %333, i64 noundef %317, ptr noundef nonnull %10) #16
  call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %10, ptr noundef null, ptr noundef nonnull %8) #16
  %339 = load i32, ptr %33, align 4, !tbaa !27
  %340 = icmp eq i32 %339, 12
  br i1 %340, label %341, label %342

341:                                              ; preds = %338
  call fastcc void @ConvertRGBToCMYK(ptr noundef nonnull %8) #16
  br label %342

342:                                              ; preds = %341, %338
  br i1 %301, label %347, label %343

343:                                              ; preds = %342
  %344 = load float, ptr %302, align 8, !tbaa !48
  %345 = call fastcc zeroext i16 @ClampToQuantum(float noundef %344) #16
  %346 = getelementptr inbounds %struct._PixelPacket, ptr %332, i64 0, i32 2
  store i16 %345, ptr %346, align 2, !tbaa !50
  br label %347

347:                                              ; preds = %343, %342
  br i1 %304, label %352, label %348

348:                                              ; preds = %347
  %349 = load float, ptr %305, align 4, !tbaa !51
  %350 = call fastcc zeroext i16 @ClampToQuantum(float noundef %349) #16
  %351 = getelementptr inbounds %struct._PixelPacket, ptr %332, i64 0, i32 1
  store i16 %350, ptr %351, align 2, !tbaa !52
  br label %352

352:                                              ; preds = %348, %347
  br i1 %307, label %356, label %353

353:                                              ; preds = %352
  %354 = load float, ptr %308, align 8, !tbaa !53
  %355 = call fastcc zeroext i16 @ClampToQuantum(float noundef %354) #16
  store i16 %355, ptr %332, align 2, !tbaa !54
  br label %356

356:                                              ; preds = %353, %352
  br i1 %310, label %357, label %360

357:                                              ; preds = %356
  %358 = load i16, ptr %311, align 2, !tbaa !30
  %359 = icmp eq i16 %358, 0
  br i1 %359, label %364, label %360

360:                                              ; preds = %357, %356
  %361 = load float, ptr %312, align 4, !tbaa !55
  %362 = call fastcc zeroext i16 @ClampToQuantum(float noundef %361) #16
  %363 = getelementptr inbounds %struct._PixelPacket, ptr %332, i64 0, i32 3
  store i16 %362, ptr %363, align 2, !tbaa !42
  br label %364

364:                                              ; preds = %360, %357
  br i1 %314, label %373, label %365

365:                                              ; preds = %364
  %366 = load i32, ptr %33, align 4, !tbaa !27
  %367 = icmp ne i32 %366, 12
  %368 = select i1 %367, i1 true, i1 %330
  br i1 %368, label %373, label %369

369:                                              ; preds = %365
  %370 = getelementptr inbounds i16, ptr %326, i64 %333
  %371 = load float, ptr %315, align 8, !tbaa !56
  %372 = call fastcc zeroext i16 @ClampToQuantum(float noundef %371) #16
  store i16 %372, ptr %370, align 2, !tbaa !57
  br label %373

373:                                              ; preds = %364, %365, %369, %331
  %374 = getelementptr inbounds %struct._PixelPacket, ptr %334, i64 1
  %375 = getelementptr inbounds %struct._PixelPacket, ptr %332, i64 1
  %376 = add nuw nsw i64 %333, 1
  %377 = load i64, ptr %20, align 8, !tbaa !25
  %378 = icmp slt i64 %376, %377
  br i1 %378, label %331, label %379, !llvm.loop !58

379:                                              ; preds = %373, %325
  %380 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %85, ptr noundef nonnull %50) #18
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %386, label %382

382:                                              ; preds = %379
  %383 = add nuw nsw i64 %317, 1
  %384 = load i64, ptr %26, align 8, !tbaa !26
  %385 = icmp slt i64 %383, %384
  br i1 %385, label %316, label %386, !llvm.loop !59

386:                                              ; preds = %382, %316, %379, %296
  %387 = phi i64 [ 0, %296 ], [ %317, %379 ], [ %317, %316 ], [ %383, %382 ]
  %388 = call ptr @DestroyCacheView(ptr noundef %86) #15
  %389 = call ptr @DestroyCacheView(ptr noundef %85) #15
  %390 = call ptr @RelinquishVirtualMemory(ptr noundef nonnull %55) #15
  %391 = call ptr @DestroyImage(ptr noundef nonnull %51) #15
  %392 = load i64, ptr %26, align 8, !tbaa !26
  %393 = icmp eq i64 %387, %392
  %394 = zext i1 %393 to i32
  br label %395

395:                                              ; preds = %244, %223, %146, %148, %57, %49, %29, %25, %17, %19, %386
  %396 = phi i32 [ %394, %386 ], [ 0, %19 ], [ 0, %17 ], [ 0, %25 ], [ 0, %29 ], [ 0, %49 ], [ 0, %57 ], [ 0, %148 ], [ 0, %146 ], [ 0, %223 ], [ 0, %244 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #9
  ret i32 %396
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @SetImageStorageClass(ptr noundef, i32 noundef) local_unnamed_addr #2

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
declare i32 @SetImageAlphaChannel(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireVirtualMemory(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @DestroyImage(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetVirtualMemoryBlob(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: hot optsize
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: hot optsize
declare ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @SetMagickPixelPacket(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #6 {
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  %6 = load <4 x i16>, ptr %1, align 2, !tbaa !57
  %7 = uitofp <4 x i16> %6 to <4 x float>
  %8 = shufflevector <4 x float> %7, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  store <4 x float> %8, ptr %5, align 8, !tbaa !60
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !27
  %11 = icmp eq i32 %10, 12
  %12 = icmp ne ptr %2, null
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load i16, ptr %2, align 2, !tbaa !57
  %16 = uitofp i16 %15 to float
  %17 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  store float %16, ptr %17, align 8, !tbaa !56
  br label %18

18:                                               ; preds = %14, %4
  ret void
}

; Function Attrs: optsize
declare i32 @IsMagickColorSimilar(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: hot optsize
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @GetFillColor(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._DrawInfo, ptr %0, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !61
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._DrawInfo, ptr %0, i64 0, i32 5
  %10 = load i64, ptr %9, align 4
  store i64 %10, ptr %3, align 2
  br label %25

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct._Image, ptr %6, i64 0, i32 74, i32 2
  %13 = load i64, ptr %12, align 8, !tbaa !62
  %14 = add nsw i64 %13, %1
  %15 = getelementptr inbounds %struct._Image, ptr %6, i64 0, i32 74, i32 3
  %16 = load i64, ptr %15, align 8, !tbaa !63
  %17 = add nsw i64 %16, %2
  %18 = getelementptr inbounds %struct._Image, ptr %6, i64 0, i32 58
  %19 = tail call i32 @GetOneVirtualMethodPixel(ptr noundef nonnull %6, i32 noundef 7, i64 noundef %14, i64 noundef %17, ptr noundef %3, ptr noundef nonnull %18) #15
  %20 = getelementptr inbounds %struct._Image, ptr %6, i64 0, i32 6
  %21 = load i32, ptr %20, align 8, !tbaa !29
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %11
  %24 = getelementptr inbounds %struct._PixelPacket, ptr %3, i64 0, i32 3
  store i16 0, ptr %24, align 2, !tbaa !42
  br label %25

25:                                               ; preds = %11, %23, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ConvertRGBToCMYK(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !64
  %4 = icmp eq i32 %3, 13
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %6 = load float, ptr %5, align 8, !tbaa !48
  br i1 %4, label %20, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %9 = load float, ptr %8, align 4, !tbaa !51
  %10 = insertelement <2 x float> poison, float %6, i64 0
  %11 = insertelement <2 x float> %10, float %9, i64 1
  %12 = fpext <2 x float> %11 to <2 x double>
  %13 = fmul <2 x double> %12, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  %14 = fptrunc <2 x double> %13 to <2 x float>
  %15 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %16 = load float, ptr %15, align 8, !tbaa !53
  %17 = fpext float %16 to double
  %18 = fmul double %17, 0x3EF0001000100010
  %19 = fptrunc double %18 to float
  br label %30

20:                                               ; preds = %1
  %21 = tail call float @DecodePixelGamma(float noundef %6) #18
  %22 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %23 = load float, ptr %22, align 4, !tbaa !51
  %24 = tail call float @DecodePixelGamma(float noundef %23) #18
  %25 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %26 = load float, ptr %25, align 8, !tbaa !53
  %27 = tail call float @DecodePixelGamma(float noundef %26) #18
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
  store i32 12, ptr %2, align 4, !tbaa !64
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
  store <2 x float> %70, ptr %61, align 8, !tbaa !60
  %71 = fmul float %60, 6.553500e+04
  %72 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  store float %71, ptr %72, align 8, !tbaa !53
  %73 = fmul float %54, 6.553500e+04
  br label %74

74:                                               ; preds = %42, %46
  %75 = phi float [ %73, %46 ], [ 6.553500e+04, %42 ]
  %76 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  store float %75, ptr %76, align 8, !tbaa !56
  ret void
}

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

; Function Attrs: optsize
declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RelinquishVirtualMemory(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: optsize
declare i32 @GetOneVirtualMethodPixel(ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: hot optsize
declare float @DecodePixelGamma(float noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @GradientImage(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 450, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #15
  br label %12

12:                                               ; preds = %9, %5
  %13 = tail call ptr @AcquireDrawInfo() #15
  %14 = getelementptr inbounds %struct._DrawInfo, ptr %13, i64 0, i32 8
  store i32 %1, ptr %14, align 8, !tbaa !65
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %16 = getelementptr inbounds %struct._DrawInfo, ptr %13, i64 0, i32 8, i32 1
  %17 = getelementptr inbounds %struct._DrawInfo, ptr %13, i64 0, i32 8, i32 2, i32 2
  %18 = load <2 x i64>, ptr %15, align 8, !tbaa !66
  store <2 x i64> %18, ptr %16, align 8, !tbaa !66
  %19 = uitofp <2 x i64> %18 to <2 x double>
  %20 = fadd <2 x double> %19, <double -1.000000e+00, double -1.000000e+00>
  store <2 x double> %20, ptr %17, align 8, !tbaa !67
  %21 = icmp eq i32 %1, 1
  %22 = extractelement <2 x double> %20, i64 1
  %23 = fcmp une double %22, 0.000000e+00
  %24 = select i1 %21, i1 %23, i1 false
  %25 = extractelement <2 x double> %20, i64 0
  br i1 %24, label %26, label %27

26:                                               ; preds = %12
  store double 0.000000e+00, ptr %17, align 8, !tbaa !68
  br label %27

27:                                               ; preds = %26, %12
  %28 = phi double [ 0.000000e+00, %26 ], [ %25, %12 ]
  %29 = insertelement <2 x double> %20, double %28, i64 0
  %30 = fmul <2 x double> %29, <double 5.000000e-01, double 5.000000e-01>
  %31 = getelementptr inbounds %struct._DrawInfo, ptr %13, i64 0, i32 8, i32 8
  store <2 x double> %30, ptr %31, align 8, !tbaa !67
  %32 = extractelement <2 x double> %30, i64 0
  %33 = extractelement <2 x double> %30, i64 1
  %34 = tail call fastcc double @MagickMax(double noundef %32, double noundef %33) #16
  %35 = fptrunc double %34 to float
  %36 = getelementptr inbounds %struct._DrawInfo, ptr %13, i64 0, i32 8, i32 9
  store float %35, ptr %36, align 8, !tbaa !69
  %37 = getelementptr inbounds %struct._DrawInfo, ptr %13, i64 0, i32 8, i32 5
  store i32 %2, ptr %37, align 8, !tbaa !70
  %38 = getelementptr inbounds %struct._DrawInfo, ptr %13, i64 0, i32 8, i32 4
  store i64 2, ptr %38, align 8, !tbaa !71
  %39 = tail call dereferenceable_or_null(128) ptr @AcquireQuantumMemory(i64 noundef 2, i64 noundef 64) #17
  %40 = getelementptr inbounds %struct._DrawInfo, ptr %13, i64 0, i32 8, i32 3
  store ptr %39, ptr %40, align 8, !tbaa !72
  %41 = icmp eq ptr %39, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %27
  %43 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %44 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %45 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %43, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 474, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %44) #15
  br label %68

46:                                               ; preds = %27
  %47 = load i64, ptr %38, align 8, !tbaa !71
  %48 = shl i64 %47, 6
  %49 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %39, i32 noundef 0, i64 noundef %48) #15
  %50 = load i64, ptr %38, align 8, !tbaa !71
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %46, %52
  %53 = phi i64 [ %56, %52 ], [ 0, %46 ]
  %54 = load ptr, ptr %40, align 8, !tbaa !72
  %55 = getelementptr inbounds %struct._StopInfo, ptr %54, i64 %53
  tail call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef %55) #15
  %56 = add nuw nsw i64 %53, 1
  %57 = load i64, ptr %38, align 8, !tbaa !71
  %58 = icmp slt i64 %56, %57
  br i1 %58, label %52, label %59, !llvm.loop !73

59:                                               ; preds = %52, %46
  %60 = load ptr, ptr %40, align 8, !tbaa !72
  tail call fastcc void @SetMagickPixelPacket(ptr noundef %0, ptr noundef %3, ptr noundef null, ptr noundef %60) #16
  %61 = load ptr, ptr %40, align 8, !tbaa !72
  %62 = getelementptr inbounds %struct._StopInfo, ptr %61, i64 0, i32 1
  store float 0.000000e+00, ptr %62, align 8, !tbaa !74
  %63 = getelementptr inbounds %struct._StopInfo, ptr %61, i64 1
  tail call fastcc void @SetMagickPixelPacket(ptr noundef %0, ptr noundef %4, ptr noundef null, ptr noundef nonnull %63) #16
  %64 = load ptr, ptr %40, align 8, !tbaa !72
  %65 = getelementptr inbounds %struct._StopInfo, ptr %64, i64 1, i32 1
  store float 1.000000e+00, ptr %65, align 8, !tbaa !74
  %66 = tail call i32 @DrawGradientImage(ptr noundef %0, ptr noundef nonnull %13) #15
  %67 = tail call ptr @DestroyDrawInfo(ptr noundef nonnull %13) #15
  br label %68

68:                                               ; preds = %42, %59
  %69 = phi i32 [ %66, %59 ], [ 0, %42 ]
  ret i32 %69
}

; Function Attrs: optsize
declare ptr @AcquireDrawInfo() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @MagickMax(double noundef %0, double noundef %1) unnamed_addr #3 {
  %3 = fcmp ogt double %0, %1
  %4 = select i1 %3, double %0, double %1
  ret double %4
}

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @DrawGradientImage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyDrawInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @OilPaintImage(ptr noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i64, align 8
  %14 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %4, align 8, !tbaa !76
  store ptr %2, ptr %5, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #9
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %16 = load i32, ptr %15, align 8, !tbaa !6
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %20 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 594, ptr noundef nonnull @.str.2, ptr noundef nonnull %19) #15
  br label %21

21:                                               ; preds = %18, %3
  %22 = tail call i64 @GetOptimalKernelWidth2D(double noundef %1, double noundef 5.000000e-01) #15
  store i64 %22, ptr %13, align 8, !tbaa !66
  %23 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #15
  store ptr %23, ptr %8, align 8, !tbaa !76
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %25 = load i64, ptr %24, align 8, !tbaa !25
  %26 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %27 = load i64, ptr %26, align 8, !tbaa !26
  %28 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %25, i64 noundef %27, i32 noundef 1, ptr noundef %2) #15
  store ptr %28, ptr %9, align 8, !tbaa !76
  %29 = icmp eq ptr %23, null
  %30 = icmp eq ptr %28, null
  %31 = select i1 %29, i1 true, i1 %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %21
  br i1 %29, label %35, label %33

33:                                               ; preds = %32
  %34 = tail call ptr @DestroyImage(ptr noundef nonnull %23) #15
  br label %35

35:                                               ; preds = %33, %32
  br i1 %30, label %89, label %36

36:                                               ; preds = %35
  %37 = tail call ptr @DestroyImage(ptr noundef nonnull %28) #15
  br label %89

38:                                               ; preds = %21
  %39 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %28, i32 noundef 1) #15
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct._Image, ptr %28, i64 0, i32 58
  tail call void @InheritException(ptr noundef %2, ptr noundef nonnull %42) #15
  %43 = tail call ptr @DestroyImage(ptr noundef nonnull %23) #15
  %44 = tail call ptr @DestroyImage(ptr noundef nonnull %28) #15
  br label %89

45:                                               ; preds = %38
  %46 = tail call fastcc ptr @AcquireHistogramThreadSet() #16
  store ptr %46, ptr %12, align 8, !tbaa !76
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = tail call ptr @DestroyImage(ptr noundef nonnull %23) #15
  %50 = tail call ptr @DestroyImage(ptr noundef nonnull %28) #15
  %51 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %52 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 620, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %51) #15
  br label %89

53:                                               ; preds = %45
  store i32 1, ptr %10, align 4, !tbaa !77
  store i64 0, ptr %11, align 8, !tbaa !78
  %54 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %23, ptr noundef %2) #15
  store ptr %54, ptr %6, align 8, !tbaa !76
  %55 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %28, ptr noundef %2) #15
  store ptr %55, ptr %7, align 8, !tbaa !76
  %56 = getelementptr inbounds %struct._Image, ptr %23, i64 0, i32 8
  %57 = load i64, ptr %56, align 8, !tbaa !26
  %58 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #15
  %59 = shl i64 %58, 5
  %60 = icmp ugt i64 %57, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %53
  %62 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %23) #15
  %63 = icmp eq i32 %62, 3
  br i1 %63, label %69, label %64

64:                                               ; preds = %61
  %65 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %28) #15
  %66 = icmp eq i32 %65, 3
  br i1 %66, label %69, label %67

67:                                               ; preds = %64
  %68 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #15
  br label %73

69:                                               ; preds = %64, %61, %53
  %70 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #15
  %71 = icmp ult i64 %70, 2
  %72 = select i1 %71, i64 1, i64 2
  br label %73

73:                                               ; preds = %69, %67
  %74 = phi i64 [ %68, %67 ], [ %72, %69 ]
  %75 = trunc i64 %74 to i32
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %14, i32 %75)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 10, ptr nonnull @OilPaintImage.omp_outlined, ptr nonnull %8, ptr nonnull %10, ptr nonnull %6, ptr nonnull %13, ptr nonnull %5, ptr nonnull %7, ptr nonnull %9, ptr nonnull %12, ptr nonnull %4, ptr nonnull %11)
  %76 = load ptr, ptr %7, align 8, !tbaa !76
  %77 = call ptr @DestroyCacheView(ptr noundef %76) #15
  store ptr %77, ptr %7, align 8, !tbaa !76
  %78 = load ptr, ptr %6, align 8, !tbaa !76
  %79 = call ptr @DestroyCacheView(ptr noundef %78) #15
  store ptr %79, ptr %6, align 8, !tbaa !76
  %80 = load ptr, ptr %12, align 8, !tbaa !76
  %81 = call fastcc ptr @DestroyHistogramThreadSet(ptr noundef %80) #16
  store ptr %81, ptr %12, align 8, !tbaa !76
  %82 = load ptr, ptr %8, align 8, !tbaa !76
  %83 = call ptr @DestroyImage(ptr noundef %82) #15
  store ptr %83, ptr %8, align 8, !tbaa !76
  %84 = load i32, ptr %10, align 4, !tbaa !77
  %85 = icmp eq i32 %84, 0
  %86 = load ptr, ptr %9, align 8, !tbaa !76
  br i1 %85, label %87, label %89

87:                                               ; preds = %73
  %88 = call ptr @DestroyImage(ptr noundef %86) #15
  br label %89

89:                                               ; preds = %73, %87, %35, %36, %48, %41
  %90 = phi ptr [ null, %41 ], [ null, %48 ], [ null, %36 ], [ null, %35 ], [ %88, %87 ], [ %86, %73 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  ret ptr %90
}

; Function Attrs: optsize
declare i64 @GetOptimalKernelWidth2D(double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @InheritException(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @AcquireHistogramThreadSet() unnamed_addr #0 {
  %1 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #15
  %2 = tail call ptr @AcquireQuantumMemory(i64 noundef %1, i64 noundef 8) #17
  %3 = icmp eq ptr %2, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %0
  %5 = shl i64 %1, 3
  %6 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %2, i32 noundef 0, i64 noundef %5) #15
  %7 = icmp sgt i64 %1, 0
  br i1 %7, label %11, label %18

8:                                                ; preds = %11
  %9 = add nuw nsw i64 %12, 1
  %10 = icmp eq i64 %9, %1
  br i1 %10, label %18, label %11, !llvm.loop !79

11:                                               ; preds = %4, %8
  %12 = phi i64 [ %9, %8 ], [ 0, %4 ]
  %13 = tail call dereferenceable_or_null(2048) ptr @AcquireQuantumMemory(i64 noundef 256, i64 noundef 8) #17
  %14 = getelementptr inbounds ptr, ptr %2, i64 %12
  store ptr %13, ptr %14, align 8, !tbaa !76
  %15 = icmp eq ptr %13, null
  br i1 %15, label %16, label %8

16:                                               ; preds = %11
  %17 = tail call fastcc ptr @DestroyHistogramThreadSet(ptr noundef nonnull %2) #16
  br label %18

18:                                               ; preds = %8, %4, %0, %16
  %19 = phi ptr [ %17, %16 ], [ null, %0 ], [ %2, %4 ], [ %2, %8 ]
  ret ptr %19
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @OilPaintImage.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %8, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %9, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %10, ptr nocapture noundef nonnull align 8 dereferenceable(8) %11) #8 {
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = load ptr, ptr %2, align 8, !tbaa !76
  %18 = getelementptr inbounds %struct._Image, ptr %17, i64 0, i32 8
  %19 = load i64, ptr %18, align 8, !tbaa !26
  %20 = add nsw i64 %19, -1
  %21 = icmp sgt i64 %19, 0
  br i1 %21, label %22, label %179

22:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #9
  store i64 0, ptr %13, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #9
  store i64 %20, ptr %14, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #9
  store i64 1, ptr %15, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #9
  store i32 0, ptr %16, align 4, !tbaa !77
  %23 = load i32, ptr %0, align 4, !tbaa !77
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %23, i32 33, ptr nonnull %16, ptr nonnull %13, ptr nonnull %14, ptr nonnull %15, i64 1, i64 4)
  %24 = load i64, ptr %14, align 8
  %25 = call i64 @llvm.smin.i64(i64 %24, i64 %20)
  store i64 %25, ptr %14, align 8, !tbaa !66
  %26 = load i64, ptr %13, align 8, !tbaa !66
  %27 = icmp sgt i64 %26, %25
  br i1 %27, label %178, label %28

28:                                               ; preds = %22, %170
  %29 = phi i64 [ %176, %170 ], [ %25, %22 ]
  %30 = phi i64 [ %174, %170 ], [ %26, %22 ]
  %31 = icmp sgt i64 %30, %29
  br i1 %31, label %170, label %32

32:                                               ; preds = %28, %164
  %33 = phi i64 [ %165, %164 ], [ %30, %28 ]
  %34 = load i32, ptr %3, align 4, !tbaa !77
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %164, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr %4, align 8, !tbaa !76
  %38 = load i64, ptr %5, align 8, !tbaa !66
  %39 = sdiv i64 %38, -2
  %40 = lshr i64 %38, 1
  %41 = sub nsw i64 %33, %40
  %42 = load ptr, ptr %2, align 8, !tbaa !76
  %43 = getelementptr inbounds %struct._Image, ptr %42, i64 0, i32 7
  %44 = load i64, ptr %43, align 8, !tbaa !25
  %45 = add i64 %44, %38
  %46 = load ptr, ptr %6, align 8, !tbaa !76
  %47 = call ptr @GetCacheViewVirtualPixels(ptr noundef %37, i64 noundef %39, i64 noundef %41, i64 noundef %45, i64 noundef %38, ptr noundef %46) #18
  %48 = load ptr, ptr %7, align 8, !tbaa !76
  %49 = load ptr, ptr %8, align 8, !tbaa !76
  %50 = getelementptr inbounds %struct._Image, ptr %49, i64 0, i32 7
  %51 = load i64, ptr %50, align 8, !tbaa !25
  %52 = load ptr, ptr %6, align 8, !tbaa !76
  %53 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %48, i64 noundef 0, i64 noundef %33, i64 noundef %51, i64 noundef 1, ptr noundef %52) #18
  %54 = icmp eq ptr %47, null
  %55 = icmp eq ptr %53, null
  %56 = select i1 %54, i1 true, i1 %55
  br i1 %56, label %163, label %57

57:                                               ; preds = %36
  %58 = load ptr, ptr %4, align 8, !tbaa !76
  %59 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %58) #15
  %60 = load ptr, ptr %7, align 8, !tbaa !76
  %61 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %60) #15
  %62 = load ptr, ptr %9, align 8, !tbaa !76
  %63 = call fastcc i32 @GetOpenMPThreadId() #16
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds ptr, ptr %62, i64 %64
  %66 = load ptr, ptr %65, align 8, !tbaa !76
  %67 = load ptr, ptr %2, align 8, !tbaa !76
  %68 = getelementptr inbounds %struct._Image, ptr %67, i64 0, i32 7
  %69 = load i64, ptr %68, align 8, !tbaa !25
  %70 = icmp sgt i64 %69, 0
  br i1 %70, label %71, label %144

71:                                               ; preds = %57
  %72 = icmp eq ptr %61, null
  %73 = icmp eq ptr %59, null
  br label %74

74:                                               ; preds = %71, %137
  %75 = phi ptr [ %47, %71 ], [ %138, %137 ]
  %76 = phi i64 [ 0, %71 ], [ %140, %137 ]
  %77 = phi ptr [ %53, %71 ], [ %139, %137 ]
  %78 = call ptr @ResetMagickMemory(ptr noundef %66, i32 noundef 0, i64 noundef 2048) #15
  %79 = load i64, ptr %5, align 8, !tbaa !66
  %80 = icmp sgt i64 %79, 0
  br i1 %80, label %81, label %120

81:                                               ; preds = %74, %109
  %82 = phi i64 [ %110, %109 ], [ %79, %74 ]
  %83 = phi i64 [ %118, %109 ], [ 0, %74 ]
  %84 = phi i64 [ %112, %109 ], [ 0, %74 ]
  %85 = phi i64 [ %111, %109 ], [ 0, %74 ]
  %86 = phi i64 [ %117, %109 ], [ 0, %74 ]
  %87 = getelementptr %struct._PixelPacket, ptr %75, i64 %86
  %88 = icmp sgt i64 %82, 0
  br i1 %88, label %89, label %109

89:                                               ; preds = %81, %89
  %90 = phi i64 [ %105, %89 ], [ %84, %81 ]
  %91 = phi i64 [ %104, %89 ], [ %85, %81 ]
  %92 = phi i64 [ %106, %89 ], [ 0, %81 ]
  %93 = load ptr, ptr %2, align 8, !tbaa !76
  %94 = getelementptr %struct._PixelPacket, ptr %87, i64 %92
  %95 = call float @GetPixelIntensity(ptr noundef %93, ptr noundef %94) #18
  %96 = call fastcc zeroext i16 @ClampToQuantum(float noundef %95) #16
  %97 = call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %96) #16
  %98 = zext i8 %97 to i64
  %99 = getelementptr inbounds i64, ptr %66, i64 %98
  %100 = load i64, ptr %99, align 8, !tbaa !66
  %101 = add i64 %100, 1
  store i64 %101, ptr %99, align 8, !tbaa !66
  %102 = icmp ugt i64 %101, %91
  %103 = add nsw i64 %92, %86
  %104 = call i64 @llvm.umax.i64(i64 %101, i64 %91)
  %105 = select i1 %102, i64 %103, i64 %90
  %106 = add nuw nsw i64 %92, 1
  %107 = load i64, ptr %5, align 8, !tbaa !66
  %108 = icmp slt i64 %106, %107
  br i1 %108, label %89, label %109, !llvm.loop !80

109:                                              ; preds = %89, %81
  %110 = phi i64 [ %82, %81 ], [ %107, %89 ]
  %111 = phi i64 [ %85, %81 ], [ %104, %89 ]
  %112 = phi i64 [ %84, %81 ], [ %105, %89 ]
  %113 = load ptr, ptr %2, align 8, !tbaa !76
  %114 = getelementptr inbounds %struct._Image, ptr %113, i64 0, i32 7
  %115 = load i64, ptr %114, align 8, !tbaa !25
  %116 = add i64 %110, %86
  %117 = add i64 %116, %115
  %118 = add nuw nsw i64 %83, 1
  %119 = icmp slt i64 %118, %110
  br i1 %119, label %81, label %120, !llvm.loop !81

120:                                              ; preds = %109, %74
  %121 = phi i64 [ 0, %74 ], [ %112, %109 ]
  %122 = getelementptr inbounds %struct._PixelPacket, ptr %75, i64 %121
  %123 = load i64, ptr %122, align 2
  store i64 %123, ptr %77, align 2
  %124 = load ptr, ptr %2, align 8, !tbaa !76
  %125 = getelementptr inbounds %struct._Image, ptr %124, i64 0, i32 1
  %126 = load i32, ptr %125, align 4, !tbaa !27
  %127 = icmp eq i32 %126, 12
  br i1 %127, label %128, label %137

128:                                              ; preds = %120
  %129 = getelementptr inbounds i16, ptr %61, i64 %76
  br i1 %72, label %137, label %130

130:                                              ; preds = %128
  br i1 %73, label %135, label %131

131:                                              ; preds = %130
  %132 = getelementptr inbounds i16, ptr %59, i64 %76
  %133 = getelementptr inbounds i16, ptr %132, i64 %121
  %134 = load i16, ptr %133, align 2, !tbaa !57
  br label %135

135:                                              ; preds = %130, %131
  %136 = phi i16 [ %134, %131 ], [ 0, %130 ]
  store i16 %136, ptr %129, align 2, !tbaa !57
  br label %137

137:                                              ; preds = %128, %135, %120
  %138 = getelementptr inbounds %struct._PixelPacket, ptr %75, i64 1
  %139 = getelementptr inbounds %struct._PixelPacket, ptr %77, i64 1
  %140 = add nuw nsw i64 %76, 1
  %141 = getelementptr inbounds %struct._Image, ptr %124, i64 0, i32 7
  %142 = load i64, ptr %141, align 8, !tbaa !25
  %143 = icmp slt i64 %140, %142
  br i1 %143, label %74, label %144, !llvm.loop !82

144:                                              ; preds = %137, %57
  %145 = load ptr, ptr %7, align 8, !tbaa !76
  %146 = load ptr, ptr %6, align 8, !tbaa !76
  %147 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %145, ptr noundef %146) #18
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %144
  store i32 0, ptr %3, align 4, !tbaa !77
  br label %150

150:                                              ; preds = %149, %144
  %151 = load ptr, ptr %10, align 8, !tbaa !76
  %152 = getelementptr inbounds %struct._Image, ptr %151, i64 0, i32 47
  %153 = load ptr, ptr %152, align 8, !tbaa !83
  %154 = icmp eq ptr %153, null
  br i1 %154, label %164, label %155

155:                                              ; preds = %150
  call void @__kmpc_critical(ptr nonnull @2, i32 %23, ptr nonnull @.gomp_critical_user_MagickCore_OilPaintImage.var)
  %156 = load ptr, ptr %10, align 8, !tbaa !76
  %157 = load i64, ptr %11, align 8, !tbaa !78
  %158 = add nsw i64 %157, 1
  store i64 %158, ptr %11, align 8, !tbaa !78
  %159 = getelementptr inbounds %struct._Image, ptr %156, i64 0, i32 8
  %160 = load i64, ptr %159, align 8, !tbaa !26
  %161 = call fastcc i32 @SetImageProgress(ptr noundef %156, ptr noundef nonnull @.str.6, i64 noundef %157, i64 noundef %160) #16
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %23, ptr nonnull @.gomp_critical_user_MagickCore_OilPaintImage.var)
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %155, %36
  store i32 0, ptr %3, align 4, !tbaa !77
  br label %164

164:                                              ; preds = %163, %150, %155, %32
  %165 = add nsw i64 %33, 1
  %166 = load i64, ptr %14, align 8, !tbaa !66
  %167 = icmp slt i64 %33, %166
  br i1 %167, label %32, label %168

168:                                              ; preds = %164
  %169 = load i64, ptr %13, align 8, !tbaa !66
  br label %170

170:                                              ; preds = %168, %28
  %171 = phi i64 [ %30, %28 ], [ %169, %168 ]
  %172 = phi i64 [ %29, %28 ], [ %166, %168 ]
  %173 = load i64, ptr %15, align 8, !tbaa !66
  %174 = add nsw i64 %173, %171
  store i64 %174, ptr %13, align 8, !tbaa !66
  %175 = add nsw i64 %173, %172
  %176 = call i64 @llvm.smin.i64(i64 %175, i64 %20)
  store i64 %176, ptr %14, align 8, !tbaa !66
  %177 = icmp sgt i64 %174, %176
  br i1 %177, label %178, label %28

178:                                              ; preds = %170, %22
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %23)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #9
  br label %179

179:                                              ; preds = %178, %12
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_8(ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i64) local_unnamed_addr #9

; Function Attrs: hot optsize
declare ptr @QueueCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline norecurse nounwind optsize uwtable
define internal fastcc i32 @GetOpenMPThreadId() unnamed_addr #10 {
  %1 = tail call i32 @omp_get_thread_num() #16
  ret i32 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %0) unnamed_addr #3 {
  %2 = zext i16 %0 to i64
  %3 = add nuw nsw i64 %2, 128
  %4 = lshr i64 %3, 8
  %5 = sub nsw i64 %3, %4
  %6 = lshr i64 %5, 8
  %7 = trunc i64 %6 to i8
  ret i8 %7
}

; Function Attrs: hot optsize
declare float @GetPixelIntensity(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: convergent nounwind
declare void @__kmpc_critical(ptr, i32, ptr) local_unnamed_addr #11

; Function Attrs: convergent nounwind
declare void @__kmpc_end_critical(ptr, i32, ptr) local_unnamed_addr #11

; Function Attrs: noinline norecurse nounwind optsize uwtable
define internal fastcc i32 @SetImageProgress(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #10 {
  %5 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #9
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %7 = load ptr, ptr %6, align 8, !tbaa !83
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.7, ptr noundef %1, ptr noundef nonnull %10) #15
  %12 = load ptr, ptr %6, align 8, !tbaa !83
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  %14 = load ptr, ptr %13, align 8, !tbaa !84
  %15 = call i32 %12(ptr noundef nonnull %5, i64 noundef %2, i64 noundef %3, ptr noundef %14) #15
  br label %16

16:                                               ; preds = %4, %9
  %17 = phi i32 [ %15, %9 ], [ 1, %4 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #9
  ret i32 %17
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #9

; Function Attrs: optsize
declare i64 @GetMagickResourceLimit(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @GetImagePixelCacheType(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare !callback !85 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @DestroyHistogramThreadSet(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #15
  %3 = icmp sgt i64 %2, 0
  br i1 %3, label %4, label %15

4:                                                ; preds = %1, %11
  %5 = phi i64 [ %12, %11 ], [ 0, %1 ]
  %6 = getelementptr inbounds ptr, ptr %0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !76
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %7) #15
  store ptr %10, ptr %6, align 8, !tbaa !76
  br label %11

11:                                               ; preds = %4, %9
  %12 = add nuw nsw i64 %5, 1
  %13 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #15
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %4, label %15, !llvm.loop !87

15:                                               ; preds = %11, %1
  %16 = tail call ptr @RelinquishMagickMemory(ptr noundef %0) #15
  ret ptr %16
}

; Function Attrs: nounwind optsize
declare i32 @omp_get_thread_num() local_unnamed_addr #12

; Function Attrs: optsize
declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @OpaquePaintImage(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @OpaquePaintImageChannel(ptr noundef %0, i32 noundef 47, ptr noundef %1, ptr noundef %2, i32 noundef %3) #16
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @OpaquePaintImageChannel(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct._MagickPixelPacket, align 8
  %16 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %6, align 8, !tbaa !76
  store i32 %1, ptr %7, align 4, !tbaa !77
  store ptr %2, ptr %8, align 8, !tbaa !76
  store ptr %3, ptr %9, align 8, !tbaa !76
  store i32 %4, ptr %10, align 4, !tbaa !77
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #9
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %15) #9
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %18 = load i32, ptr %17, align 8, !tbaa !6
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %5
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %22 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 812, ptr noundef nonnull @.str.2, ptr noundef nonnull %21) #15
  br label %23

23:                                               ; preds = %20, %5
  %24 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %0, i32 noundef 1) #15
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %72, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !27
  %29 = tail call fastcc i32 @IsGrayColorspace(i32 noundef %28) #16, !range !28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = tail call fastcc i32 @IsMagickGray(ptr noundef %3) #16, !range !28
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = tail call i32 @SetImageColorspace(ptr noundef nonnull %0, i32 noundef 13) #15
  br label %36

36:                                               ; preds = %34, %31, %26
  %37 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  %38 = load float, ptr %37, align 4, !tbaa !55
  %39 = fcmp une float %38, 0.000000e+00
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %42 = load i32, ptr %41, align 8, !tbaa !29
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %0, i32 noundef 6) #15
  br label %46

46:                                               ; preds = %44, %40, %36
  store i32 1, ptr %13, align 4, !tbaa !77
  store i64 0, ptr %14, align 8, !tbaa !78
  %47 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  store ptr %47, ptr %12, align 8, !tbaa !76
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %15) #15
  %48 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %47) #15
  store ptr %48, ptr %11, align 8, !tbaa !76
  %49 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %50 = load i64, ptr %49, align 8, !tbaa !26
  %51 = call i64 @GetMagickResourceLimit(i32 noundef 6) #15
  %52 = shl i64 %51, 5
  %53 = icmp ugt i64 %50, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %46
  %55 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #15
  %56 = icmp eq i32 %55, 3
  br i1 %56, label %62, label %57

57:                                               ; preds = %54
  %58 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #15
  %59 = icmp eq i32 %58, 3
  br i1 %59, label %62, label %60

60:                                               ; preds = %57
  %61 = call i64 @GetMagickResourceLimit(i32 noundef 6) #15
  br label %66

62:                                               ; preds = %57, %54, %46
  %63 = call i64 @GetMagickResourceLimit(i32 noundef 6) #15
  %64 = icmp ult i64 %63, 2
  %65 = select i1 %64, i64 1, i64 2
  br label %66

66:                                               ; preds = %62, %60
  %67 = phi i64 [ %61, %60 ], [ %65, %62 ]
  %68 = trunc i64 %67 to i32
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %16, i32 %68)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 10, ptr nonnull @OpaquePaintImageChannel.omp_outlined, ptr nonnull %6, ptr nonnull %13, ptr nonnull %11, ptr nonnull %12, ptr nonnull %15, ptr nonnull %8, ptr nonnull %10, ptr nonnull %7, ptr nonnull %9, ptr nonnull %14)
  %69 = load ptr, ptr %11, align 8, !tbaa !76
  %70 = call ptr @DestroyCacheView(ptr noundef %69) #15
  %71 = load i32, ptr %13, align 4, !tbaa !77
  br label %72

72:                                               ; preds = %23, %66
  %73 = phi i32 [ %71, %66 ], [ 0, %23 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #9
  ret i32 %73
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef i32 @IsMagickGray(ptr nocapture noundef readonly %0) unnamed_addr #13 {
  %2 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !64
  %4 = add i32 %3, -1
  %5 = icmp ult i32 %4, 2
  br i1 %5, label %6, label %23

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %8 = load float, ptr %7, align 8, !tbaa !48
  %9 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %10 = load float, ptr %9, align 4, !tbaa !51
  %11 = fsub float %8, %10
  %12 = tail call float @llvm.fabs.f32(float %11)
  %13 = fpext float %12 to double
  %14 = fcmp olt double %13, 1.000000e-15
  br i1 %14, label %15, label %22

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %17 = load float, ptr %16, align 8, !tbaa !53
  %18 = fsub float %10, %17
  %19 = tail call float @llvm.fabs.f32(float %18)
  %20 = fpext float %19 to double
  %21 = fcmp olt double %20, 1.000000e-15
  br i1 %21, label %23, label %22

22:                                               ; preds = %15, %6
  br label %23

23:                                               ; preds = %1, %15, %22
  %24 = phi i32 [ 0, %22 ], [ 0, %1 ], [ 1, %15 ]
  ret i32 %24
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @OpaquePaintImageChannel.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %8, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %9, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %10, ptr nocapture noundef nonnull align 8 dereferenceable(8) %11) #8 {
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct._MagickPixelPacket, align 8
  %18 = load ptr, ptr %2, align 8, !tbaa !76
  %19 = getelementptr inbounds %struct._Image, ptr %18, i64 0, i32 8
  %20 = load i64, ptr %19, align 8, !tbaa !26
  %21 = add nsw i64 %20, -1
  %22 = icmp sgt i64 %20, 0
  br i1 %22, label %23, label %157

23:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #9
  store i64 0, ptr %13, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #9
  store i64 %21, ptr %14, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #9
  store i64 1, ptr %15, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #9
  store i32 0, ptr %16, align 4, !tbaa !77
  %24 = load i32, ptr %0, align 4, !tbaa !77
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %24, i32 33, ptr nonnull %16, ptr nonnull %13, ptr nonnull %14, ptr nonnull %15, i64 1, i64 4)
  %25 = load i64, ptr %14, align 8
  %26 = call i64 @llvm.smin.i64(i64 %25, i64 %21)
  store i64 %26, ptr %14, align 8, !tbaa !66
  %27 = load i64, ptr %13, align 8, !tbaa !66
  %28 = icmp sgt i64 %27, %26
  br i1 %28, label %156, label %29

29:                                               ; preds = %23, %148
  %30 = phi i64 [ %154, %148 ], [ %26, %23 ]
  %31 = phi i64 [ %152, %148 ], [ %27, %23 ]
  %32 = icmp sgt i64 %31, %30
  br i1 %32, label %148, label %33

33:                                               ; preds = %29, %142
  %34 = phi i64 [ %143, %142 ], [ %31, %29 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %17) #9
  %35 = load i32, ptr %3, align 4, !tbaa !77
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %142, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr %4, align 8, !tbaa !76
  %39 = load ptr, ptr %2, align 8, !tbaa !76
  %40 = getelementptr inbounds %struct._Image, ptr %39, i64 0, i32 7
  %41 = load i64, ptr %40, align 8, !tbaa !25
  %42 = load ptr, ptr %5, align 8, !tbaa !76
  %43 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %38, i64 noundef 0, i64 noundef %34, i64 noundef %41, i64 noundef 1, ptr noundef %42) #18
  %44 = icmp eq ptr %43, null
  br i1 %44, label %141, label %45

45:                                               ; preds = %37
  %46 = load ptr, ptr %4, align 8, !tbaa !76
  %47 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %46) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %17, ptr noundef nonnull align 8 dereferenceable(56) %6, i64 56, i1 false), !tbaa.struct !88
  %48 = load ptr, ptr %2, align 8, !tbaa !76
  %49 = getelementptr inbounds %struct._Image, ptr %48, i64 0, i32 7
  %50 = load i64, ptr %49, align 8, !tbaa !25
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %52, label %122

52:                                               ; preds = %45
  %53 = icmp eq ptr %47, null
  br label %54

54:                                               ; preds = %52, %115
  %55 = phi ptr [ %48, %52 ], [ %116, %115 ]
  %56 = phi ptr [ %43, %52 ], [ %117, %115 ]
  %57 = phi i64 [ 0, %52 ], [ %118, %115 ]
  %58 = getelementptr inbounds i16, ptr %47, i64 %57
  call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %55, ptr noundef nonnull %56, ptr noundef %58, ptr noundef nonnull %17) #16
  %59 = load ptr, ptr %7, align 8, !tbaa !76
  %60 = call i32 @IsMagickColorSimilar(ptr noundef nonnull %17, ptr noundef %59) #15
  %61 = load i32, ptr %8, align 4, !tbaa !77
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %54
  %64 = load ptr, ptr %2, align 8, !tbaa !76
  br label %115

65:                                               ; preds = %54
  %66 = load i32, ptr %9, align 4, !tbaa !77
  %67 = and i32 %66, 1
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %65
  %70 = load ptr, ptr %10, align 8, !tbaa !76
  %71 = getelementptr inbounds %struct._MagickPixelPacket, ptr %70, i64 0, i32 5
  %72 = load float, ptr %71, align 8, !tbaa !48
  %73 = call fastcc zeroext i16 @ClampToQuantum(float noundef %72) #16
  %74 = getelementptr inbounds %struct._PixelPacket, ptr %56, i64 0, i32 2
  store i16 %73, ptr %74, align 2, !tbaa !50
  br label %75

75:                                               ; preds = %69, %65
  %76 = and i32 %66, 2
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %75
  %79 = load ptr, ptr %10, align 8, !tbaa !76
  %80 = getelementptr inbounds %struct._MagickPixelPacket, ptr %79, i64 0, i32 6
  %81 = load float, ptr %80, align 4, !tbaa !51
  %82 = call fastcc zeroext i16 @ClampToQuantum(float noundef %81) #16
  %83 = getelementptr inbounds %struct._PixelPacket, ptr %56, i64 0, i32 1
  store i16 %82, ptr %83, align 2, !tbaa !52
  br label %84

84:                                               ; preds = %78, %75
  %85 = and i32 %66, 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %84
  %88 = load ptr, ptr %10, align 8, !tbaa !76
  %89 = getelementptr inbounds %struct._MagickPixelPacket, ptr %88, i64 0, i32 7
  %90 = load float, ptr %89, align 8, !tbaa !53
  %91 = call fastcc zeroext i16 @ClampToQuantum(float noundef %90) #16
  store i16 %91, ptr %56, align 2, !tbaa !54
  br label %92

92:                                               ; preds = %87, %84
  %93 = and i32 %66, 8
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %92
  %96 = load ptr, ptr %10, align 8, !tbaa !76
  %97 = getelementptr inbounds %struct._MagickPixelPacket, ptr %96, i64 0, i32 8
  %98 = load float, ptr %97, align 4, !tbaa !55
  %99 = call fastcc zeroext i16 @ClampToQuantum(float noundef %98) #16
  %100 = getelementptr inbounds %struct._PixelPacket, ptr %56, i64 0, i32 3
  store i16 %99, ptr %100, align 2, !tbaa !42
  br label %101

101:                                              ; preds = %95, %92
  %102 = and i32 %66, 32
  %103 = icmp eq i32 %102, 0
  %104 = load ptr, ptr %2, align 8, !tbaa !76
  br i1 %103, label %115, label %105

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct._Image, ptr %104, i64 0, i32 1
  %107 = load i32, ptr %106, align 4, !tbaa !27
  %108 = icmp ne i32 %107, 12
  %109 = select i1 %108, i1 true, i1 %53
  br i1 %109, label %115, label %110

110:                                              ; preds = %105
  %111 = load ptr, ptr %10, align 8, !tbaa !76
  %112 = getelementptr inbounds %struct._MagickPixelPacket, ptr %111, i64 0, i32 9
  %113 = load float, ptr %112, align 8, !tbaa !56
  %114 = call fastcc zeroext i16 @ClampToQuantum(float noundef %113) #16
  store i16 %114, ptr %58, align 2, !tbaa !57
  br label %115

115:                                              ; preds = %63, %101, %105, %110
  %116 = phi ptr [ %64, %63 ], [ %104, %101 ], [ %104, %105 ], [ %104, %110 ]
  %117 = getelementptr inbounds %struct._PixelPacket, ptr %56, i64 1
  %118 = add nuw nsw i64 %57, 1
  %119 = getelementptr inbounds %struct._Image, ptr %116, i64 0, i32 7
  %120 = load i64, ptr %119, align 8, !tbaa !25
  %121 = icmp slt i64 %118, %120
  br i1 %121, label %54, label %122, !llvm.loop !89

122:                                              ; preds = %115, %45
  %123 = load ptr, ptr %4, align 8, !tbaa !76
  %124 = load ptr, ptr %5, align 8, !tbaa !76
  %125 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %123, ptr noundef %124) #18
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %122
  store i32 0, ptr %3, align 4, !tbaa !77
  br label %128

128:                                              ; preds = %127, %122
  %129 = load ptr, ptr %2, align 8, !tbaa !76
  %130 = getelementptr inbounds %struct._Image, ptr %129, i64 0, i32 47
  %131 = load ptr, ptr %130, align 8, !tbaa !83
  %132 = icmp eq ptr %131, null
  br i1 %132, label %142, label %133

133:                                              ; preds = %128
  call void @__kmpc_critical(ptr nonnull @2, i32 %24, ptr nonnull @.gomp_critical_user_MagickCore_OpaquePaintImageChannel.var)
  %134 = load ptr, ptr %2, align 8, !tbaa !76
  %135 = load i64, ptr %11, align 8, !tbaa !78
  %136 = add nsw i64 %135, 1
  store i64 %136, ptr %11, align 8, !tbaa !78
  %137 = getelementptr inbounds %struct._Image, ptr %134, i64 0, i32 8
  %138 = load i64, ptr %137, align 8, !tbaa !26
  %139 = call fastcc i32 @SetImageProgress(ptr noundef %134, ptr noundef nonnull @.str.8, i64 noundef %135, i64 noundef %138) #16
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %24, ptr nonnull @.gomp_critical_user_MagickCore_OpaquePaintImageChannel.var)
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %133, %37
  store i32 0, ptr %3, align 4, !tbaa !77
  br label %142

142:                                              ; preds = %141, %128, %133, %33
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %17) #9
  %143 = add nsw i64 %34, 1
  %144 = load i64, ptr %14, align 8, !tbaa !66
  %145 = icmp slt i64 %34, %144
  br i1 %145, label %33, label %146

146:                                              ; preds = %142
  %147 = load i64, ptr %13, align 8, !tbaa !66
  br label %148

148:                                              ; preds = %146, %29
  %149 = phi i64 [ %31, %29 ], [ %147, %146 ]
  %150 = phi i64 [ %30, %29 ], [ %144, %146 ]
  %151 = load i64, ptr %15, align 8, !tbaa !66
  %152 = add nsw i64 %151, %149
  store i64 %152, ptr %13, align 8, !tbaa !66
  %153 = add nsw i64 %151, %150
  %154 = call i64 @llvm.smin.i64(i64 %153, i64 %21)
  store i64 %154, ptr %14, align 8, !tbaa !66
  %155 = icmp sgt i64 %152, %154
  br i1 %155, label %156, label %29

156:                                              ; preds = %148, %23
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %24)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #9
  br label %157

157:                                              ; preds = %156, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @TransparentPaintImage(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct._MagickPixelPacket, align 8
  %14 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %5, align 8, !tbaa !76
  store ptr %1, ptr %6, align 8, !tbaa !76
  store i16 %2, ptr %7, align 2, !tbaa !57
  store i32 %3, ptr %8, align 4, !tbaa !77
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #9
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %13) #9
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %16 = load i32, ptr %15, align 8, !tbaa !6
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %20 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 960, ptr noundef nonnull @.str.2, ptr noundef nonnull %19) #15
  br label %21

21:                                               ; preds = %18, %4
  %22 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %0, i32 noundef 1) #15
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %56, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %26 = load i32, ptr %25, align 8, !tbaa !29
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %0, i32 noundef 6) #15
  br label %30

30:                                               ; preds = %28, %24
  store i32 1, ptr %11, align 4, !tbaa !77
  store i64 0, ptr %12, align 8, !tbaa !78
  %31 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  store ptr %31, ptr %10, align 8, !tbaa !76
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %13) #15
  %32 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %31) #15
  store ptr %32, ptr %9, align 8, !tbaa !76
  %33 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %34 = load i64, ptr %33, align 8, !tbaa !26
  %35 = call i64 @GetMagickResourceLimit(i32 noundef 6) #15
  %36 = shl i64 %35, 5
  %37 = icmp ugt i64 %34, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %30
  %39 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #15
  %40 = icmp eq i32 %39, 3
  br i1 %40, label %46, label %41

41:                                               ; preds = %38
  %42 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #15
  %43 = icmp eq i32 %42, 3
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = call i64 @GetMagickResourceLimit(i32 noundef 6) #15
  br label %50

46:                                               ; preds = %41, %38, %30
  %47 = call i64 @GetMagickResourceLimit(i32 noundef 6) #15
  %48 = icmp ult i64 %47, 2
  %49 = select i1 %48, i64 1, i64 2
  br label %50

50:                                               ; preds = %46, %44
  %51 = phi i64 [ %45, %44 ], [ %49, %46 ]
  %52 = trunc i64 %51 to i32
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %14, i32 %52)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @TransparentPaintImage.omp_outlined, ptr nonnull %5, ptr nonnull %11, ptr nonnull %9, ptr nonnull %10, ptr nonnull %13, ptr nonnull %6, ptr nonnull %8, ptr nonnull %7, ptr nonnull %12)
  %53 = load ptr, ptr %9, align 8, !tbaa !76
  %54 = call ptr @DestroyCacheView(ptr noundef %53) #15
  %55 = load i32, ptr %11, align 4, !tbaa !77
  br label %56

56:                                               ; preds = %21, %50
  %57 = phi i32 [ %55, %50 ], [ 0, %21 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #9
  ret i32 %57
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @TransparentPaintImage.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %8, ptr nocapture noundef nonnull readonly align 2 dereferenceable(2) %9, ptr nocapture noundef nonnull align 8 dereferenceable(8) %10) #8 {
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct._MagickPixelPacket, align 8
  %17 = load ptr, ptr %2, align 8, !tbaa !76
  %18 = getelementptr inbounds %struct._Image, ptr %17, i64 0, i32 8
  %19 = load i64, ptr %18, align 8, !tbaa !26
  %20 = add nsw i64 %19, -1
  %21 = icmp sgt i64 %19, 0
  br i1 %21, label %22, label %105

22:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #9
  store i64 0, ptr %12, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #9
  store i64 %20, ptr %13, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #9
  store i64 1, ptr %14, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #9
  store i32 0, ptr %15, align 4, !tbaa !77
  %23 = load i32, ptr %0, align 4, !tbaa !77
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %23, i32 33, ptr nonnull %15, ptr nonnull %12, ptr nonnull %13, ptr nonnull %14, i64 1, i64 4)
  %24 = load i64, ptr %13, align 8
  %25 = call i64 @llvm.smin.i64(i64 %24, i64 %20)
  store i64 %25, ptr %13, align 8, !tbaa !66
  %26 = load i64, ptr %12, align 8, !tbaa !66
  %27 = icmp sgt i64 %26, %25
  br i1 %27, label %104, label %28

28:                                               ; preds = %22, %96
  %29 = phi i64 [ %102, %96 ], [ %25, %22 ]
  %30 = phi i64 [ %100, %96 ], [ %26, %22 ]
  %31 = icmp sgt i64 %30, %29
  br i1 %31, label %96, label %32

32:                                               ; preds = %28, %90
  %33 = phi i64 [ %91, %90 ], [ %30, %28 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %16) #9
  %34 = load i32, ptr %3, align 4, !tbaa !77
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %90, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr %4, align 8, !tbaa !76
  %38 = load ptr, ptr %2, align 8, !tbaa !76
  %39 = getelementptr inbounds %struct._Image, ptr %38, i64 0, i32 7
  %40 = load i64, ptr %39, align 8, !tbaa !25
  %41 = load ptr, ptr %5, align 8, !tbaa !76
  %42 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %37, i64 noundef 0, i64 noundef %33, i64 noundef %40, i64 noundef 1, ptr noundef %41) #18
  %43 = icmp eq ptr %42, null
  br i1 %43, label %89, label %44

44:                                               ; preds = %36
  %45 = load ptr, ptr %4, align 8, !tbaa !76
  %46 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %45) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %16, ptr noundef nonnull align 8 dereferenceable(56) %6, i64 56, i1 false), !tbaa.struct !88
  %47 = load ptr, ptr %2, align 8, !tbaa !76
  %48 = getelementptr inbounds %struct._Image, ptr %47, i64 0, i32 7
  %49 = load i64, ptr %48, align 8, !tbaa !25
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %51, label %70

51:                                               ; preds = %44, %63
  %52 = phi ptr [ %66, %63 ], [ %47, %44 ]
  %53 = phi ptr [ %64, %63 ], [ %42, %44 ]
  %54 = phi i64 [ %65, %63 ], [ 0, %44 ]
  %55 = getelementptr inbounds i16, ptr %46, i64 %54
  call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %52, ptr noundef nonnull %53, ptr noundef %55, ptr noundef nonnull %16) #16
  %56 = load ptr, ptr %7, align 8, !tbaa !76
  %57 = call i32 @IsMagickColorSimilar(ptr noundef nonnull %16, ptr noundef %56) #15
  %58 = load i32, ptr %8, align 4, !tbaa !77
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %63, label %60

60:                                               ; preds = %51
  %61 = load i16, ptr %9, align 2, !tbaa !57
  %62 = getelementptr inbounds %struct._PixelPacket, ptr %53, i64 0, i32 3
  store i16 %61, ptr %62, align 2, !tbaa !42
  br label %63

63:                                               ; preds = %60, %51
  %64 = getelementptr inbounds %struct._PixelPacket, ptr %53, i64 1
  %65 = add nuw nsw i64 %54, 1
  %66 = load ptr, ptr %2, align 8, !tbaa !76
  %67 = getelementptr inbounds %struct._Image, ptr %66, i64 0, i32 7
  %68 = load i64, ptr %67, align 8, !tbaa !25
  %69 = icmp slt i64 %65, %68
  br i1 %69, label %51, label %70, !llvm.loop !90

70:                                               ; preds = %63, %44
  %71 = load ptr, ptr %4, align 8, !tbaa !76
  %72 = load ptr, ptr %5, align 8, !tbaa !76
  %73 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %71, ptr noundef %72) #18
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  store i32 0, ptr %3, align 4, !tbaa !77
  br label %76

76:                                               ; preds = %75, %70
  %77 = load ptr, ptr %2, align 8, !tbaa !76
  %78 = getelementptr inbounds %struct._Image, ptr %77, i64 0, i32 47
  %79 = load ptr, ptr %78, align 8, !tbaa !83
  %80 = icmp eq ptr %79, null
  br i1 %80, label %90, label %81

81:                                               ; preds = %76
  call void @__kmpc_critical(ptr nonnull @2, i32 %23, ptr nonnull @.gomp_critical_user_MagickCore_TransparentPaintImage.var)
  %82 = load ptr, ptr %2, align 8, !tbaa !76
  %83 = load i64, ptr %10, align 8, !tbaa !78
  %84 = add nsw i64 %83, 1
  store i64 %84, ptr %10, align 8, !tbaa !78
  %85 = getelementptr inbounds %struct._Image, ptr %82, i64 0, i32 8
  %86 = load i64, ptr %85, align 8, !tbaa !26
  %87 = call fastcc i32 @SetImageProgress(ptr noundef %82, ptr noundef nonnull @.str.9, i64 noundef %83, i64 noundef %86) #16
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %23, ptr nonnull @.gomp_critical_user_MagickCore_TransparentPaintImage.var)
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %81, %36
  store i32 0, ptr %3, align 4, !tbaa !77
  br label %90

90:                                               ; preds = %89, %76, %81, %32
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %16) #9
  %91 = add nsw i64 %33, 1
  %92 = load i64, ptr %13, align 8, !tbaa !66
  %93 = icmp slt i64 %33, %92
  br i1 %93, label %32, label %94

94:                                               ; preds = %90
  %95 = load i64, ptr %12, align 8, !tbaa !66
  br label %96

96:                                               ; preds = %94, %28
  %97 = phi i64 [ %30, %28 ], [ %95, %94 ]
  %98 = phi i64 [ %29, %28 ], [ %92, %94 ]
  %99 = load i64, ptr %14, align 8, !tbaa !66
  %100 = add nsw i64 %99, %97
  store i64 %100, ptr %12, align 8, !tbaa !66
  %101 = add nsw i64 %99, %98
  %102 = call i64 @llvm.smin.i64(i64 %101, i64 %20)
  store i64 %102, ptr %13, align 8, !tbaa !66
  %103 = icmp sgt i64 %100, %102
  br i1 %103, label %104, label %28

104:                                              ; preds = %96, %22
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %23)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #9
  br label %105

105:                                              ; preds = %104, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @TransparentPaintImageChroma(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %6, align 8, !tbaa !76
  store ptr %1, ptr %7, align 8, !tbaa !76
  store ptr %2, ptr %8, align 8, !tbaa !76
  store i16 %3, ptr %9, align 2, !tbaa !57
  store i32 %4, ptr %10, align 4, !tbaa !77
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #9
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %17 = load i32, ptr %16, align 8, !tbaa !6
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %21 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1094, ptr noundef nonnull @.str.2, ptr noundef nonnull %20) #15
  br label %22

22:                                               ; preds = %19, %5
  %23 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %0, i32 noundef 1) #15
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %57, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %27 = load i32, ptr %26, align 8, !tbaa !29
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %0, i32 noundef 7) #15
  br label %31

31:                                               ; preds = %29, %25
  store i32 1, ptr %13, align 4, !tbaa !77
  store i64 0, ptr %14, align 8, !tbaa !78
  %32 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  store ptr %32, ptr %12, align 8, !tbaa !76
  %33 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %32) #15
  store ptr %33, ptr %11, align 8, !tbaa !76
  %34 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %35 = load i64, ptr %34, align 8, !tbaa !26
  %36 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #15
  %37 = shl i64 %36, 5
  %38 = icmp ugt i64 %35, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %31
  %40 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #15
  %41 = icmp eq i32 %40, 3
  br i1 %41, label %47, label %42

42:                                               ; preds = %39
  %43 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #15
  %44 = icmp eq i32 %43, 3
  br i1 %44, label %47, label %45

45:                                               ; preds = %42
  %46 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #15
  br label %51

47:                                               ; preds = %42, %39, %31
  %48 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #15
  %49 = icmp ult i64 %48, 2
  %50 = select i1 %49, i64 1, i64 2
  br label %51

51:                                               ; preds = %47, %45
  %52 = phi i64 [ %46, %45 ], [ %50, %47 ]
  %53 = trunc i64 %52 to i32
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %15, i32 %53)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @TransparentPaintImageChroma.omp_outlined, ptr nonnull %6, ptr nonnull %13, ptr nonnull %11, ptr nonnull %12, ptr nonnull %7, ptr nonnull %8, ptr nonnull %10, ptr nonnull %9, ptr nonnull %14)
  %54 = load ptr, ptr %11, align 8, !tbaa !76
  %55 = call ptr @DestroyCacheView(ptr noundef %54) #15
  %56 = load i32, ptr %13, align 4, !tbaa !77
  br label %57

57:                                               ; preds = %22, %51
  %58 = phi i32 [ %56, %51 ], [ 0, %22 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #9
  ret i32 %58
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @TransparentPaintImageChroma.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %8, ptr nocapture noundef nonnull readonly align 2 dereferenceable(2) %9, ptr nocapture noundef nonnull align 8 dereferenceable(8) %10) #8 {
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct._MagickPixelPacket, align 8
  %17 = load ptr, ptr %2, align 8, !tbaa !76
  %18 = getelementptr inbounds %struct._Image, ptr %17, i64 0, i32 8
  %19 = load i64, ptr %18, align 8, !tbaa !26
  %20 = add nsw i64 %19, -1
  %21 = icmp sgt i64 %19, 0
  br i1 %21, label %22, label %137

22:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #9
  store i64 0, ptr %12, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #9
  store i64 %20, ptr %13, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #9
  store i64 1, ptr %14, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #9
  store i32 0, ptr %15, align 4, !tbaa !77
  %23 = load i32, ptr %0, align 4, !tbaa !77
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %23, i32 33, ptr nonnull %15, ptr nonnull %12, ptr nonnull %13, ptr nonnull %14, i64 1, i64 4)
  %24 = load i64, ptr %13, align 8
  %25 = call i64 @llvm.smin.i64(i64 %24, i64 %20)
  store i64 %25, ptr %13, align 8, !tbaa !66
  %26 = load i64, ptr %12, align 8, !tbaa !66
  %27 = icmp sgt i64 %26, %25
  br i1 %27, label %136, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 0, i32 5
  %30 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 0, i32 6
  %31 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 0, i32 7
  br label %32

32:                                               ; preds = %28, %128
  %33 = phi i64 [ %25, %28 ], [ %134, %128 ]
  %34 = phi i64 [ %26, %28 ], [ %132, %128 ]
  %35 = icmp sgt i64 %34, %33
  br i1 %35, label %128, label %36

36:                                               ; preds = %32, %122
  %37 = phi i64 [ %123, %122 ], [ %34, %32 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %16) #9
  %38 = load i32, ptr %3, align 4, !tbaa !77
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %122, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr %4, align 8, !tbaa !76
  %42 = load ptr, ptr %2, align 8, !tbaa !76
  %43 = getelementptr inbounds %struct._Image, ptr %42, i64 0, i32 7
  %44 = load i64, ptr %43, align 8, !tbaa !25
  %45 = load ptr, ptr %5, align 8, !tbaa !76
  %46 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %41, i64 noundef 0, i64 noundef %37, i64 noundef %44, i64 noundef 1, ptr noundef %45) #18
  %47 = icmp eq ptr %46, null
  br i1 %47, label %121, label %48

48:                                               ; preds = %40
  %49 = load ptr, ptr %4, align 8, !tbaa !76
  %50 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %49) #15
  %51 = load ptr, ptr %2, align 8, !tbaa !76
  call void @GetMagickPixelPacket(ptr noundef %51, ptr noundef nonnull %16) #15
  %52 = load ptr, ptr %2, align 8, !tbaa !76
  %53 = getelementptr inbounds %struct._Image, ptr %52, i64 0, i32 7
  %54 = load i64, ptr %53, align 8, !tbaa !25
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %102

56:                                               ; preds = %48
  %57 = load ptr, ptr %6, align 8, !tbaa !76
  %58 = getelementptr inbounds %struct._MagickPixelPacket, ptr %57, i64 0, i32 5
  %59 = load ptr, ptr %7, align 8
  %60 = getelementptr inbounds %struct._MagickPixelPacket, ptr %59, i64 0, i32 5
  %61 = getelementptr inbounds %struct._MagickPixelPacket, ptr %57, i64 0, i32 6
  %62 = getelementptr inbounds %struct._MagickPixelPacket, ptr %59, i64 0, i32 6
  %63 = getelementptr inbounds %struct._MagickPixelPacket, ptr %57, i64 0, i32 7
  %64 = getelementptr inbounds %struct._MagickPixelPacket, ptr %59, i64 0, i32 7
  %65 = load i32, ptr %8, align 4, !tbaa !77
  br label %66

66:                                               ; preds = %56, %97
  %67 = phi ptr [ %46, %56 ], [ %98, %97 ]
  %68 = phi i64 [ 0, %56 ], [ %99, %97 ]
  %69 = getelementptr inbounds i16, ptr %50, i64 %68
  call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %52, ptr noundef nonnull %67, ptr noundef %69, ptr noundef nonnull %16) #16
  %70 = load float, ptr %29, align 8, !tbaa !48
  %71 = load float, ptr %58, align 8, !tbaa !48
  %72 = fcmp ult float %70, %71
  br i1 %72, label %90, label %73

73:                                               ; preds = %66
  %74 = load float, ptr %60, align 8, !tbaa !48
  %75 = fcmp ugt float %70, %74
  br i1 %75, label %90, label %76

76:                                               ; preds = %73
  %77 = load float, ptr %30, align 4, !tbaa !51
  %78 = load float, ptr %61, align 4, !tbaa !51
  %79 = fcmp ult float %77, %78
  br i1 %79, label %90, label %80

80:                                               ; preds = %76
  %81 = load float, ptr %62, align 4, !tbaa !51
  %82 = fcmp ugt float %77, %81
  br i1 %82, label %90, label %83

83:                                               ; preds = %80
  %84 = load float, ptr %31, align 8, !tbaa !53
  %85 = load float, ptr %63, align 8, !tbaa !53
  %86 = fcmp ult float %84, %85
  br i1 %86, label %90, label %87

87:                                               ; preds = %83
  %88 = load float, ptr %64, align 8, !tbaa !53
  %89 = fcmp ole float %84, %88
  br label %90

90:                                               ; preds = %87, %83, %80, %76, %73, %66
  %91 = phi i1 [ false, %83 ], [ false, %80 ], [ false, %76 ], [ false, %73 ], [ false, %66 ], [ %89, %87 ]
  %92 = zext i1 %91 to i32
  %93 = icmp eq i32 %65, %92
  br i1 %93, label %97, label %94

94:                                               ; preds = %90
  %95 = load i16, ptr %9, align 2, !tbaa !57
  %96 = getelementptr inbounds %struct._PixelPacket, ptr %67, i64 0, i32 3
  store i16 %95, ptr %96, align 2, !tbaa !42
  br label %97

97:                                               ; preds = %94, %90
  %98 = getelementptr inbounds %struct._PixelPacket, ptr %67, i64 1
  %99 = add nuw nsw i64 %68, 1
  %100 = load i64, ptr %53, align 8, !tbaa !25
  %101 = icmp slt i64 %99, %100
  br i1 %101, label %66, label %102, !llvm.loop !91

102:                                              ; preds = %97, %48
  %103 = load ptr, ptr %4, align 8, !tbaa !76
  %104 = load ptr, ptr %5, align 8, !tbaa !76
  %105 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %103, ptr noundef %104) #18
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  store i32 0, ptr %3, align 4, !tbaa !77
  br label %108

108:                                              ; preds = %107, %102
  %109 = load ptr, ptr %2, align 8, !tbaa !76
  %110 = getelementptr inbounds %struct._Image, ptr %109, i64 0, i32 47
  %111 = load ptr, ptr %110, align 8, !tbaa !83
  %112 = icmp eq ptr %111, null
  br i1 %112, label %122, label %113

113:                                              ; preds = %108
  call void @__kmpc_critical(ptr nonnull @2, i32 %23, ptr nonnull @.gomp_critical_user_MagickCore_TransparentPaintImageChroma.var)
  %114 = load ptr, ptr %2, align 8, !tbaa !76
  %115 = load i64, ptr %10, align 8, !tbaa !78
  %116 = add nsw i64 %115, 1
  store i64 %116, ptr %10, align 8, !tbaa !78
  %117 = getelementptr inbounds %struct._Image, ptr %114, i64 0, i32 8
  %118 = load i64, ptr %117, align 8, !tbaa !26
  %119 = call fastcc i32 @SetImageProgress(ptr noundef %114, ptr noundef nonnull @.str.9, i64 noundef %115, i64 noundef %118) #16
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %23, ptr nonnull @.gomp_critical_user_MagickCore_TransparentPaintImageChroma.var)
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %113, %40
  store i32 0, ptr %3, align 4, !tbaa !77
  br label %122

122:                                              ; preds = %121, %108, %113, %36
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %16) #9
  %123 = add nsw i64 %37, 1
  %124 = load i64, ptr %13, align 8, !tbaa !66
  %125 = icmp slt i64 %37, %124
  br i1 %125, label %36, label %126

126:                                              ; preds = %122
  %127 = load i64, ptr %12, align 8, !tbaa !66
  br label %128

128:                                              ; preds = %126, %32
  %129 = phi i64 [ %34, %32 ], [ %127, %126 ]
  %130 = phi i64 [ %33, %32 ], [ %124, %126 ]
  %131 = load i64, ptr %14, align 8, !tbaa !66
  %132 = add nsw i64 %131, %129
  store i64 %132, ptr %12, align 8, !tbaa !66
  %133 = add nsw i64 %131, %130
  %134 = call i64 @llvm.smin.i64(i64 %133, i64 %20)
  store i64 %134, ptr %13, align 8, !tbaa !66
  %135 = icmp sgt i64 %132, %134
  br i1 %135, label %136, label %32

136:                                              ; preds = %128, %22
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %23)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #9
  br label %137

137:                                              ; preds = %136, %11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { hot optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { alwaysinline norecurse nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { noinline norecurse nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { convergent nounwind }
attributes #12 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind optsize }
attributes #16 = { optsize }
attributes #17 = { nounwind optsize allocsize(0,1) }
attributes #18 = { hot nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
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
!25 = !{!7, !11, i64 40}
!26 = !{!7, !11, i64 48}
!27 = !{!7, !8, i64 4}
!28 = !{i32 0, i32 2}
!29 = !{!7, !8, i64 32}
!30 = !{!31, !14, i64 106}
!31 = !{!"_DrawInfo", !12, i64 0, !12, i64 8, !18, i64 16, !32, i64 48, !8, i64 96, !13, i64 100, !13, i64 108, !15, i64 120, !33, i64 128, !12, i64 256, !12, i64 264, !12, i64 272, !8, i64 280, !8, i64 284, !8, i64 288, !8, i64 292, !8, i64 296, !11, i64 304, !15, i64 312, !8, i64 320, !8, i64 324, !12, i64 328, !11, i64 336, !12, i64 344, !12, i64 352, !12, i64 360, !8, i64 368, !8, i64 372, !11, i64 376, !12, i64 384, !15, i64 392, !12, i64 400, !8, i64 408, !13, i64 412, !13, i64 420, !12, i64 432, !12, i64 440, !12, i64 448, !34, i64 456, !8, i64 488, !14, i64 492, !8, i64 496, !37, i64 504, !8, i64 672, !11, i64 680, !15, i64 688, !15, i64 696, !15, i64 704, !8, i64 712}
!32 = !{!"_AffineMatrix", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40}
!33 = !{!"_GradientInfo", !8, i64 0, !18, i64 8, !34, i64 40, !12, i64 72, !11, i64 80, !8, i64 88, !8, i64 92, !11, i64 96, !35, i64 104, !36, i64 120}
!34 = !{!"_SegmentInfo", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24}
!35 = !{!"_PointInfo", !15, i64 0, !15, i64 8}
!36 = !{!"float", !9, i64 0}
!37 = !{!"_ElementReference", !12, i64 0, !8, i64 8, !33, i64 16, !11, i64 144, !12, i64 152, !12, i64 160}
!38 = !{!34, !15, i64 0}
!39 = !{!34, !15, i64 8}
!40 = !{!34, !15, i64 16}
!41 = !{!34, !15, i64 24}
!42 = !{!13, !14, i64 6}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.mustprogress"}
!45 = distinct !{!45, !44}
!46 = distinct !{!46, !44}
!47 = distinct !{!47, !44}
!48 = !{!49, !36, i64 32}
!49 = !{!"_MagickPixelPacket", !8, i64 0, !8, i64 4, !8, i64 8, !15, i64 16, !11, i64 24, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !36, i64 48}
!50 = !{!13, !14, i64 4}
!51 = !{!49, !36, i64 36}
!52 = !{!13, !14, i64 2}
!53 = !{!49, !36, i64 40}
!54 = !{!13, !14, i64 0}
!55 = !{!49, !36, i64 44}
!56 = !{!49, !36, i64 48}
!57 = !{!14, !14, i64 0}
!58 = distinct !{!58, !44}
!59 = distinct !{!59, !44}
!60 = !{!36, !36, i64 0}
!61 = !{!31, !12, i64 256}
!62 = !{!7, !11, i64 13152}
!63 = !{!7, !11, i64 13160}
!64 = !{!49, !8, i64 4}
!65 = !{!33, !8, i64 0}
!66 = !{!11, !11, i64 0}
!67 = !{!15, !15, i64 0}
!68 = !{!33, !15, i64 56}
!69 = !{!33, !36, i64 120}
!70 = !{!33, !8, i64 88}
!71 = !{!33, !11, i64 80}
!72 = !{!33, !12, i64 72}
!73 = distinct !{!73, !44}
!74 = !{!75, !36, i64 56}
!75 = !{!"_StopInfo", !49, i64 0, !36, i64 56}
!76 = !{!12, !12, i64 0}
!77 = !{!8, !8, i64 0}
!78 = !{!24, !24, i64 0}
!79 = distinct !{!79, !44}
!80 = distinct !{!80, !44}
!81 = distinct !{!81, !44}
!82 = distinct !{!82, !44}
!83 = !{!7, !12, i64 568}
!84 = !{!7, !12, i64 576}
!85 = !{!86}
!86 = !{i64 2, i64 -1, i64 -1, i1 true}
!87 = distinct !{!87, !44}
!88 = !{i64 0, i64 4, !77, i64 4, i64 4, !77, i64 8, i64 4, !77, i64 16, i64 8, !67, i64 24, i64 8, !66, i64 32, i64 4, !60, i64 36, i64 4, !60, i64 40, i64 4, !60, i64 44, i64 4, !60, i64 48, i64 4, !60}
!89 = distinct !{!89, !44}
!90 = distinct !{!90, !44}
!91 = distinct !{!91, !44}
