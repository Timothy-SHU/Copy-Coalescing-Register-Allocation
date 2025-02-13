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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @FloodfillPaintImage(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i64 noundef %4, i64 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = alloca %struct._MagickPixelPacket, align 8
  %9 = alloca %struct._MagickPixelPacket, align 8
  %10 = alloca %struct._PixelPacket, align 2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #10
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %12 = load i32, ptr %11, align 8, !tbaa !5
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %16 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 173, ptr noundef nonnull @.str.2, ptr noundef nonnull %15) #11
  br label %17

17:                                               ; preds = %14, %7
  %18 = icmp slt i64 %4, 0
  br i1 %18, label %395, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %21 = load i64, ptr %20, align 8, !tbaa !24
  %22 = icmp sle i64 %21, %4
  %23 = icmp slt i64 %5, 0
  %24 = or i1 %23, %22
  br i1 %24, label %395, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %27 = load i64, ptr %26, align 8, !tbaa !25
  %28 = icmp sgt i64 %27, %5
  br i1 %28, label %29, label %395

29:                                               ; preds = %25
  %30 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %0, i32 noundef 1) #11
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %395, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %34 = load i32, ptr %33, align 4, !tbaa !26
  %35 = tail call fastcc i32 @IsGrayColorspace(i32 noundef %34) #12, !range !27
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  %38 = tail call i32 @SetImageColorspace(ptr noundef nonnull %0, i32 noundef 13) #11
  br label %39

39:                                               ; preds = %37, %32
  %40 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %41 = load i32, ptr %40, align 8, !tbaa !28
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct._DrawInfo, ptr %2, i64 0, i32 5, i32 3
  %45 = load i16, ptr %44, align 2, !tbaa !29
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %0, i32 noundef 6) #11
  br label %49

49:                                               ; preds = %47, %43, %39
  %50 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %51 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef nonnull %50) #11
  %52 = icmp eq ptr %51, null
  br i1 %52, label %395, label %53

53:                                               ; preds = %49
  %54 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %51, i32 noundef 6) #11
  %55 = tail call dereferenceable_or_null(4194304) ptr @AcquireVirtualMemory(i64 noundef 131072, i64 noundef 32) #13
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = tail call ptr @DestroyImage(ptr noundef nonnull %51) #11
  %59 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %60 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %50, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 199, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %59) #11
  br label %395

61:                                               ; preds = %53
  %62 = tail call ptr @GetVirtualMemoryBlob(ptr noundef nonnull %55) #11
  %63 = add nuw nsw i64 %5, 1
  %64 = load i64, ptr %26, align 8, !tbaa !25
  %65 = icmp slt i64 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = sitofp i64 %4 to double
  store double %67, ptr %62, align 8, !tbaa !37
  %68 = sitofp i64 %5 to double
  %69 = getelementptr inbounds %struct._SegmentInfo, ptr %62, i64 0, i32 1
  store double %68, ptr %69, align 8, !tbaa !38
  %70 = getelementptr inbounds %struct._SegmentInfo, ptr %62, i64 0, i32 2
  store double %67, ptr %70, align 8, !tbaa !39
  %71 = getelementptr inbounds %struct._SegmentInfo, ptr %62, i64 0, i32 3
  store double 1.000000e+00, ptr %71, align 8, !tbaa !40
  br label %72

72:                                               ; preds = %61, %66
  %73 = phi i64 [ 32, %66 ], [ 0, %61 ]
  %74 = icmp sgt i64 %64, %5
  br i1 %74, label %75, label %83

75:                                               ; preds = %72
  %76 = getelementptr inbounds i8, ptr %62, i64 %73
  %77 = sitofp i64 %4 to double
  store double %77, ptr %76, align 8, !tbaa !37
  %78 = sitofp i64 %63 to double
  %79 = getelementptr inbounds %struct._SegmentInfo, ptr %76, i64 0, i32 1
  store double %78, ptr %79, align 8, !tbaa !38
  %80 = getelementptr inbounds %struct._SegmentInfo, ptr %76, i64 0, i32 2
  store double %77, ptr %80, align 8, !tbaa !39
  %81 = getelementptr inbounds %struct._SegmentInfo, ptr %76, i64 0, i32 3
  store double -1.000000e+00, ptr %81, align 8, !tbaa !40
  %82 = add nuw nsw i64 %73, 32
  br label %83

83:                                               ; preds = %72, %75
  %84 = phi i64 [ %82, %75 ], [ %73, %72 ]
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %8) #11
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %9) #11
  %85 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef nonnull %50) #11
  %86 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %51, ptr noundef nonnull %50) #11
  %87 = icmp eq i64 %84, 0
  br i1 %87, label %296, label %88

88:                                               ; preds = %83, %292
  %89 = phi i64 [ %294, %292 ], [ 0, %83 ]
  %90 = phi i64 [ %293, %292 ], [ %84, %83 ]
  %91 = getelementptr inbounds i8, ptr %62, i64 %90
  %92 = add nsw i64 %90, -32
  %93 = getelementptr inbounds i8, ptr %62, i64 %92
  %94 = load double, ptr %93, align 8, !tbaa !37
  %95 = fptosi double %94 to i64
  %96 = getelementptr %struct._SegmentInfo, ptr %91, i64 -1, i32 2
  %97 = load double, ptr %96, align 8, !tbaa !39
  %98 = fptosi double %97 to i64
  %99 = getelementptr %struct._SegmentInfo, ptr %91, i64 -1, i32 3
  %100 = load double, ptr %99, align 8, !tbaa !40
  %101 = fptosi double %100 to i64
  %102 = getelementptr %struct._SegmentInfo, ptr %91, i64 -1, i32 1
  %103 = load double, ptr %102, align 8, !tbaa !38
  %104 = fptosi double %103 to i64
  %105 = add nsw i64 %104, %101
  %106 = add nsw i64 %95, 1
  %107 = call ptr @GetCacheViewVirtualPixels(ptr noundef %85, i64 noundef 0, i64 noundef %105, i64 noundef %106, i64 noundef 1, ptr noundef nonnull %50) #14
  %108 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %86, i64 noundef 0, i64 noundef %105, i64 noundef %106, i64 noundef 1, ptr noundef nonnull %50) #14
  %109 = icmp eq ptr %107, null
  %110 = icmp eq ptr %108, null
  %111 = select i1 %109, i1 true, i1 %110
  br i1 %111, label %296, label %112

112:                                              ; preds = %88
  %113 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %85) #11
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
  %123 = load i16, ptr %122, align 2, !tbaa !41
  %124 = icmp eq i16 %123, -1
  br i1 %124, label %134, label %125

125:                                              ; preds = %118
  %126 = getelementptr inbounds i16, ptr %113, i64 %120
  call fastcc void @SetMagickPixelPacket(ptr noundef %0, ptr noundef %121, ptr noundef %126, ptr noundef nonnull %9) #12
  %127 = call i32 @IsMagickColorSimilar(ptr noundef nonnull %9, ptr noundef %3) #11
  %128 = icmp eq i32 %127, %6
  br i1 %128, label %134, label %129

129:                                              ; preds = %125
  store i16 -1, ptr %122, align 2, !tbaa !41
  %130 = getelementptr inbounds %struct._PixelPacket, ptr %121, i64 -1
  %131 = getelementptr inbounds %struct._PixelPacket, ptr %119, i64 -1
  %132 = add nsw i64 %120, -1
  %133 = icmp sgt i64 %120, 0
  br i1 %133, label %118, label %134, !llvm.loop !42

134:                                              ; preds = %129, %118, %125, %112
  %135 = phi i64 [ %95, %112 ], [ %120, %125 ], [ %120, %118 ], [ -1, %129 ]
  %136 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %86, ptr noundef nonnull %50) #14
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
  %150 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %50, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 267, i32 noundef 460, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, ptr noundef nonnull %149) #11
  br label %395

151:                                              ; preds = %144
  %152 = sub nsw i64 0, %101
  %153 = icmp sgt i64 %104, -1
  br i1 %153, label %154, label %163

154:                                              ; preds = %151
  %155 = load i64, ptr %26, align 8, !tbaa !25
  %156 = icmp sgt i64 %155, %104
  br i1 %156, label %157, label %163

157:                                              ; preds = %154
  %158 = sitofp i64 %142 to double
  store double %158, ptr %93, align 8, !tbaa !37
  %159 = sitofp i64 %105 to double
  store double %159, ptr %102, align 8, !tbaa !38
  %160 = add nsw i64 %95, -1
  %161 = sitofp i64 %160 to double
  store double %161, ptr %96, align 8, !tbaa !39
  %162 = sitofp i64 %152 to double
  store double %162, ptr %99, align 8, !tbaa !40
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
  %184 = load i64, ptr %20, align 8, !tbaa !24
  %185 = icmp slt i64 %180, %184
  br i1 %185, label %186, label %220

186:                                              ; preds = %183
  %187 = sub i64 %184, %180
  %188 = call ptr @GetCacheViewVirtualPixels(ptr noundef %85, i64 noundef %180, i64 noundef %105, i64 noundef %187, i64 noundef 1, ptr noundef nonnull %50) #14
  %189 = load i64, ptr %20, align 8, !tbaa !24
  %190 = sub i64 %189, %180
  %191 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %86, i64 noundef %180, i64 noundef %105, i64 noundef %190, i64 noundef 1, ptr noundef nonnull %50) #14
  %192 = icmp eq ptr %188, null
  %193 = icmp eq ptr %191, null
  %194 = select i1 %192, i1 true, i1 %193
  br i1 %194, label %292, label %195

195:                                              ; preds = %186
  %196 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %85) #11
  %197 = load i64, ptr %20, align 8, !tbaa !24
  %198 = icmp slt i64 %180, %197
  br i1 %198, label %199, label %216

199:                                              ; preds = %195, %210
  %200 = phi ptr [ %212, %210 ], [ %191, %195 ]
  %201 = phi i64 [ %213, %210 ], [ %180, %195 ]
  %202 = phi ptr [ %211, %210 ], [ %188, %195 ]
  %203 = getelementptr inbounds %struct._PixelPacket, ptr %200, i64 0, i32 3
  %204 = load i16, ptr %203, align 2, !tbaa !41
  %205 = icmp eq i16 %204, -1
  br i1 %205, label %216, label %206

206:                                              ; preds = %199
  %207 = getelementptr inbounds i16, ptr %196, i64 %201
  call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %202, ptr noundef %207, ptr noundef nonnull %9) #12
  %208 = call i32 @IsMagickColorSimilar(ptr noundef nonnull %9, ptr noundef %3) #11
  %209 = icmp eq i32 %208, %6
  br i1 %209, label %216, label %210

210:                                              ; preds = %206
  store i16 -1, ptr %203, align 2, !tbaa !41
  %211 = getelementptr inbounds %struct._PixelPacket, ptr %202, i64 1
  %212 = getelementptr inbounds %struct._PixelPacket, ptr %200, i64 1
  %213 = add nsw i64 %201, 1
  %214 = load i64, ptr %20, align 8, !tbaa !24
  %215 = icmp slt i64 %213, %214
  br i1 %215, label %199, label %216, !llvm.loop !44

216:                                              ; preds = %210, %199, %206, %195
  %217 = phi i64 [ %180, %195 ], [ %201, %206 ], [ %201, %199 ], [ %213, %210 ]
  %218 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %86, ptr noundef nonnull %50) #14
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %292, label %220

220:                                              ; preds = %216, %183
  %221 = phi i64 [ %217, %216 ], [ %180, %183 ]
  %222 = icmp slt i64 %177, 4194304
  br i1 %222, label %226, label %223

223:                                              ; preds = %220
  %224 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %225 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %50, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 298, i32 noundef 460, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, ptr noundef nonnull %224) #11
  br label %395

226:                                              ; preds = %220
  br i1 %168, label %227, label %238

227:                                              ; preds = %226
  %228 = load i64, ptr %26, align 8, !tbaa !25
  %229 = icmp slt i64 %167, %228
  br i1 %229, label %230, label %238

230:                                              ; preds = %227
  %231 = sitofp i64 %179 to double
  store double %231, ptr %181, align 8, !tbaa !37
  %232 = getelementptr inbounds %struct._SegmentInfo, ptr %181, i64 0, i32 1
  store double %169, ptr %232, align 8, !tbaa !38
  %233 = add nsw i64 %221, -1
  %234 = sitofp i64 %233 to double
  %235 = getelementptr inbounds %struct._SegmentInfo, ptr %181, i64 0, i32 2
  store double %234, ptr %235, align 8, !tbaa !39
  %236 = getelementptr inbounds %struct._SegmentInfo, ptr %181, i64 0, i32 3
  store double %170, ptr %236, align 8, !tbaa !40
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
  %246 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %50, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 300, i32 noundef 460, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, ptr noundef nonnull %245) #11
  br label %395

247:                                              ; preds = %242
  br i1 %173, label %248, label %258

248:                                              ; preds = %247
  %249 = load i64, ptr %26, align 8, !tbaa !25
  %250 = icmp sgt i64 %249, %104
  br i1 %250, label %251, label %258

251:                                              ; preds = %248
  store double %174, ptr %240, align 8, !tbaa !37
  %252 = getelementptr inbounds %struct._SegmentInfo, ptr %240, i64 0, i32 1
  store double %169, ptr %252, align 8, !tbaa !38
  %253 = add nsw i64 %221, -1
  %254 = sitofp i64 %253 to double
  %255 = getelementptr inbounds %struct._SegmentInfo, ptr %240, i64 0, i32 2
  store double %254, ptr %255, align 8, !tbaa !39
  %256 = getelementptr inbounds %struct._SegmentInfo, ptr %240, i64 0, i32 3
  store double %175, ptr %256, align 8, !tbaa !40
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
  %266 = call ptr @GetCacheViewVirtualPixels(ptr noundef %85, i64 noundef %261, i64 noundef %105, i64 noundef %265, i64 noundef 1, ptr noundef nonnull %50) #14
  %267 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %86, i64 noundef %261, i64 noundef %105, i64 noundef %265, i64 noundef 1, ptr noundef nonnull %50) #14
  %268 = icmp eq ptr %266, null
  %269 = icmp eq ptr %267, null
  %270 = select i1 %268, i1 true, i1 %269
  br i1 %270, label %292, label %271

271:                                              ; preds = %263
  %272 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %85) #11
  br label %273

273:                                              ; preds = %271, %284
  %274 = phi ptr [ %286, %284 ], [ %267, %271 ]
  %275 = phi i64 [ %287, %284 ], [ %261, %271 ]
  %276 = phi ptr [ %285, %284 ], [ %266, %271 ]
  %277 = getelementptr inbounds %struct._PixelPacket, ptr %274, i64 0, i32 3
  %278 = load i16, ptr %277, align 2, !tbaa !41
  %279 = icmp eq i16 %278, -1
  br i1 %279, label %289, label %280

280:                                              ; preds = %273
  %281 = getelementptr inbounds i16, ptr %272, i64 %275
  call fastcc void @SetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %276, ptr noundef %281, ptr noundef nonnull %9) #12
  %282 = call i32 @IsMagickColorSimilar(ptr noundef nonnull %9, ptr noundef %3) #11
  %283 = icmp eq i32 %282, %6
  br i1 %283, label %284, label %289

284:                                              ; preds = %280
  %285 = getelementptr inbounds %struct._PixelPacket, ptr %276, i64 1
  %286 = getelementptr inbounds %struct._PixelPacket, ptr %274, i64 1
  %287 = add i64 %275, 1
  %288 = icmp eq i64 %275, %98
  br i1 %288, label %289, label %273, !llvm.loop !45

289:                                              ; preds = %280, %273, %284, %258
  %290 = phi i64 [ %261, %258 ], [ %275, %280 ], [ %275, %273 ], [ %171, %284 ]
  %291 = icmp sgt i64 %290, %98
  br i1 %291, label %292, label %176, !llvm.loop !46

292:                                              ; preds = %289, %186, %216, %263
  %293 = phi i64 [ %177, %186 ], [ %177, %216 ], [ %259, %263 ], [ %259, %289 ]
  %294 = phi i64 [ %179, %186 ], [ %179, %216 ], [ %179, %263 ], [ %290, %289 ]
  %295 = icmp sgt i64 %293, 0
  br i1 %295, label %88, label %296

296:                                              ; preds = %292, %88, %134, %83
  %297 = load i64, ptr %26, align 8, !tbaa !25
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
  %318 = load i64, ptr %20, align 8, !tbaa !24
  %319 = call ptr @GetCacheViewVirtualPixels(ptr noundef %86, i64 noundef 0, i64 noundef %317, i64 noundef %318, i64 noundef 1, ptr noundef nonnull %50) #14
  %320 = load i64, ptr %20, align 8, !tbaa !24
  %321 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %85, i64 noundef 0, i64 noundef %317, i64 noundef %320, i64 noundef 1, ptr noundef nonnull %50) #14
  %322 = icmp eq ptr %319, null
  %323 = icmp eq ptr %321, null
  %324 = select i1 %322, i1 true, i1 %323
  br i1 %324, label %386, label %325

325:                                              ; preds = %316
  %326 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %85) #11
  %327 = load i64, ptr %20, align 8, !tbaa !24
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
  %336 = load i16, ptr %335, align 2, !tbaa !41
  %337 = icmp eq i16 %336, 0
  br i1 %337, label %373, label %338

338:                                              ; preds = %331
  call fastcc void @GetFillColor(ptr noundef %2, i64 noundef %333, i64 noundef %317, ptr noundef nonnull %10) #12
  call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %10, ptr noundef null, ptr noundef nonnull %8) #12
  %339 = load i32, ptr %33, align 4, !tbaa !26
  %340 = icmp eq i32 %339, 12
  br i1 %340, label %341, label %342

341:                                              ; preds = %338
  call fastcc void @ConvertRGBToCMYK(ptr noundef nonnull %8) #12
  br label %342

342:                                              ; preds = %341, %338
  br i1 %301, label %347, label %343

343:                                              ; preds = %342
  %344 = load float, ptr %302, align 8, !tbaa !47
  %345 = call fastcc zeroext i16 @ClampToQuantum(float noundef %344) #12
  %346 = getelementptr inbounds %struct._PixelPacket, ptr %332, i64 0, i32 2
  store i16 %345, ptr %346, align 2, !tbaa !49
  br label %347

347:                                              ; preds = %343, %342
  br i1 %304, label %352, label %348

348:                                              ; preds = %347
  %349 = load float, ptr %305, align 4, !tbaa !50
  %350 = call fastcc zeroext i16 @ClampToQuantum(float noundef %349) #12
  %351 = getelementptr inbounds %struct._PixelPacket, ptr %332, i64 0, i32 1
  store i16 %350, ptr %351, align 2, !tbaa !51
  br label %352

352:                                              ; preds = %348, %347
  br i1 %307, label %356, label %353

353:                                              ; preds = %352
  %354 = load float, ptr %308, align 8, !tbaa !52
  %355 = call fastcc zeroext i16 @ClampToQuantum(float noundef %354) #12
  store i16 %355, ptr %332, align 2, !tbaa !53
  br label %356

356:                                              ; preds = %353, %352
  br i1 %310, label %357, label %360

357:                                              ; preds = %356
  %358 = load i16, ptr %311, align 2, !tbaa !29
  %359 = icmp eq i16 %358, 0
  br i1 %359, label %364, label %360

360:                                              ; preds = %357, %356
  %361 = load float, ptr %312, align 4, !tbaa !54
  %362 = call fastcc zeroext i16 @ClampToQuantum(float noundef %361) #12
  %363 = getelementptr inbounds %struct._PixelPacket, ptr %332, i64 0, i32 3
  store i16 %362, ptr %363, align 2, !tbaa !41
  br label %364

364:                                              ; preds = %360, %357
  br i1 %314, label %373, label %365

365:                                              ; preds = %364
  %366 = load i32, ptr %33, align 4, !tbaa !26
  %367 = icmp ne i32 %366, 12
  %368 = select i1 %367, i1 true, i1 %330
  br i1 %368, label %373, label %369

369:                                              ; preds = %365
  %370 = getelementptr inbounds i16, ptr %326, i64 %333
  %371 = load float, ptr %315, align 8, !tbaa !55
  %372 = call fastcc zeroext i16 @ClampToQuantum(float noundef %371) #12
  store i16 %372, ptr %370, align 2, !tbaa !56
  br label %373

373:                                              ; preds = %364, %365, %369, %331
  %374 = getelementptr inbounds %struct._PixelPacket, ptr %334, i64 1
  %375 = getelementptr inbounds %struct._PixelPacket, ptr %332, i64 1
  %376 = add nuw nsw i64 %333, 1
  %377 = load i64, ptr %20, align 8, !tbaa !24
  %378 = icmp slt i64 %376, %377
  br i1 %378, label %331, label %379, !llvm.loop !57

379:                                              ; preds = %373, %325
  %380 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %85, ptr noundef nonnull %50) #14
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %386, label %382

382:                                              ; preds = %379
  %383 = add nuw nsw i64 %317, 1
  %384 = load i64, ptr %26, align 8, !tbaa !25
  %385 = icmp slt i64 %383, %384
  br i1 %385, label %316, label %386, !llvm.loop !58

386:                                              ; preds = %382, %316, %379, %296
  %387 = phi i64 [ 0, %296 ], [ %317, %379 ], [ %317, %316 ], [ %383, %382 ]
  %388 = call ptr @DestroyCacheView(ptr noundef %86) #11
  %389 = call ptr @DestroyCacheView(ptr noundef %85) #11
  %390 = call ptr @RelinquishVirtualMemory(ptr noundef nonnull %55) #11
  %391 = call ptr @DestroyImage(ptr noundef nonnull %51) #11
  %392 = load i64, ptr %26, align 8, !tbaa !25
  %393 = icmp eq i64 %387, %392
  %394 = zext i1 %393 to i32
  br label %395

395:                                              ; preds = %244, %223, %146, %148, %57, %49, %29, %25, %17, %19, %386
  %396 = phi i32 [ %394, %386 ], [ 0, %19 ], [ 0, %17 ], [ 0, %25 ], [ 0, %29 ], [ 0, %49 ], [ 0, %57 ], [ 0, %148 ], [ 0, %146 ], [ 0, %223 ], [ 0, %244 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #10
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
  %6 = load <4 x i16>, ptr %1, align 2, !tbaa !56
  %7 = uitofp <4 x i16> %6 to <4 x float>
  %8 = shufflevector <4 x float> %7, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  store <4 x float> %8, ptr %5, align 8, !tbaa !59
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !26
  %11 = icmp eq i32 %10, 12
  %12 = icmp ne ptr %2, null
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load i16, ptr %2, align 2, !tbaa !56
  %16 = uitofp i16 %15 to float
  %17 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  store float %16, ptr %17, align 8, !tbaa !55
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
  %6 = load ptr, ptr %5, align 8, !tbaa !60
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._DrawInfo, ptr %0, i64 0, i32 5
  %10 = load i64, ptr %9, align 4
  store i64 %10, ptr %3, align 2
  br label %25

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct._Image, ptr %6, i64 0, i32 74, i32 2
  %13 = load i64, ptr %12, align 8, !tbaa !61
  %14 = add nsw i64 %13, %1
  %15 = getelementptr inbounds %struct._Image, ptr %6, i64 0, i32 74, i32 3
  %16 = load i64, ptr %15, align 8, !tbaa !62
  %17 = add nsw i64 %16, %2
  %18 = getelementptr inbounds %struct._Image, ptr %6, i64 0, i32 58
  %19 = tail call i32 @GetOneVirtualMethodPixel(ptr noundef nonnull %6, i32 noundef 7, i64 noundef %14, i64 noundef %17, ptr noundef %3, ptr noundef nonnull %18) #11
  %20 = getelementptr inbounds %struct._Image, ptr %6, i64 0, i32 6
  %21 = load i32, ptr %20, align 8, !tbaa !28
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %11
  %24 = getelementptr inbounds %struct._PixelPacket, ptr %3, i64 0, i32 3
  store i16 0, ptr %24, align 2, !tbaa !41
  br label %25

25:                                               ; preds = %11, %23, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ConvertRGBToCMYK(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !63
  %4 = icmp eq i32 %3, 13
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %6 = load float, ptr %5, align 8, !tbaa !47
  br i1 %4, label %20, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %9 = load float, ptr %8, align 4, !tbaa !50
  %10 = insertelement <2 x float> poison, float %6, i64 0
  %11 = insertelement <2 x float> %10, float %9, i64 1
  %12 = fpext <2 x float> %11 to <2 x double>
  %13 = fmul <2 x double> %12, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  %14 = fptrunc <2 x double> %13 to <2 x float>
  %15 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %16 = load float, ptr %15, align 8, !tbaa !52
  %17 = fpext float %16 to double
  %18 = fmul double %17, 0x3EF0001000100010
  %19 = fptrunc double %18 to float
  br label %30

20:                                               ; preds = %1
  %21 = tail call float @DecodePixelGamma(float noundef %6) #14
  %22 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %23 = load float, ptr %22, align 4, !tbaa !50
  %24 = tail call float @DecodePixelGamma(float noundef %23) #14
  %25 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %26 = load float, ptr %25, align 8, !tbaa !52
  %27 = tail call float @DecodePixelGamma(float noundef %26) #14
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
  store i32 12, ptr %2, align 4, !tbaa !63
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
  store <2 x float> %70, ptr %61, align 8, !tbaa !59
  %71 = fmul float %60, 6.553500e+04
  %72 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  store float %71, ptr %72, align 8, !tbaa !52
  %73 = fmul float %54, 6.553500e+04
  br label %74

74:                                               ; preds = %42, %46
  %75 = phi float [ %73, %46 ], [ 6.553500e+04, %42 ]
  %76 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  store float %75, ptr %76, align 8, !tbaa !55
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @GradientImage(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 450, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #11
  br label %12

12:                                               ; preds = %9, %5
  %13 = tail call ptr @AcquireDrawInfo() #11
  %14 = getelementptr inbounds %struct._DrawInfo, ptr %13, i64 0, i32 8
  store i32 %1, ptr %14, align 8, !tbaa !64
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %16 = getelementptr inbounds %struct._DrawInfo, ptr %13, i64 0, i32 8, i32 1
  %17 = getelementptr inbounds %struct._DrawInfo, ptr %13, i64 0, i32 8, i32 2, i32 2
  %18 = load <2 x i64>, ptr %15, align 8, !tbaa !65
  store <2 x i64> %18, ptr %16, align 8, !tbaa !65
  %19 = uitofp <2 x i64> %18 to <2 x double>
  %20 = fadd <2 x double> %19, <double -1.000000e+00, double -1.000000e+00>
  store <2 x double> %20, ptr %17, align 8, !tbaa !66
  %21 = icmp eq i32 %1, 1
  %22 = extractelement <2 x double> %20, i64 1
  %23 = fcmp une double %22, 0.000000e+00
  %24 = select i1 %21, i1 %23, i1 false
  %25 = extractelement <2 x double> %20, i64 0
  br i1 %24, label %26, label %27

26:                                               ; preds = %12
  store double 0.000000e+00, ptr %17, align 8, !tbaa !67
  br label %27

27:                                               ; preds = %26, %12
  %28 = phi double [ 0.000000e+00, %26 ], [ %25, %12 ]
  %29 = insertelement <2 x double> %20, double %28, i64 0
  %30 = fmul <2 x double> %29, <double 5.000000e-01, double 5.000000e-01>
  %31 = getelementptr inbounds %struct._DrawInfo, ptr %13, i64 0, i32 8, i32 8
  store <2 x double> %30, ptr %31, align 8, !tbaa !66
  %32 = extractelement <2 x double> %30, i64 0
  %33 = extractelement <2 x double> %30, i64 1
  %34 = tail call fastcc double @MagickMax(double noundef %32, double noundef %33) #12
  %35 = fptrunc double %34 to float
  %36 = getelementptr inbounds %struct._DrawInfo, ptr %13, i64 0, i32 8, i32 9
  store float %35, ptr %36, align 8, !tbaa !68
  %37 = getelementptr inbounds %struct._DrawInfo, ptr %13, i64 0, i32 8, i32 5
  store i32 %2, ptr %37, align 8, !tbaa !69
  %38 = getelementptr inbounds %struct._DrawInfo, ptr %13, i64 0, i32 8, i32 4
  store i64 2, ptr %38, align 8, !tbaa !70
  %39 = tail call dereferenceable_or_null(128) ptr @AcquireQuantumMemory(i64 noundef 2, i64 noundef 64) #13
  %40 = getelementptr inbounds %struct._DrawInfo, ptr %13, i64 0, i32 8, i32 3
  store ptr %39, ptr %40, align 8, !tbaa !71
  %41 = icmp eq ptr %39, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %27
  %43 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %44 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %45 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %43, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 474, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %44) #11
  br label %68

46:                                               ; preds = %27
  %47 = load i64, ptr %38, align 8, !tbaa !70
  %48 = shl i64 %47, 6
  %49 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %39, i32 noundef 0, i64 noundef %48) #11
  %50 = load i64, ptr %38, align 8, !tbaa !70
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %46, %52
  %53 = phi i64 [ %56, %52 ], [ 0, %46 ]
  %54 = load ptr, ptr %40, align 8, !tbaa !71
  %55 = getelementptr inbounds %struct._StopInfo, ptr %54, i64 %53
  tail call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef %55) #11
  %56 = add nuw nsw i64 %53, 1
  %57 = load i64, ptr %38, align 8, !tbaa !70
  %58 = icmp slt i64 %56, %57
  br i1 %58, label %52, label %59, !llvm.loop !72

59:                                               ; preds = %52, %46
  %60 = load ptr, ptr %40, align 8, !tbaa !71
  tail call fastcc void @SetMagickPixelPacket(ptr noundef %0, ptr noundef %3, ptr noundef null, ptr noundef %60) #12
  %61 = load ptr, ptr %40, align 8, !tbaa !71
  %62 = getelementptr inbounds %struct._StopInfo, ptr %61, i64 0, i32 1
  store float 0.000000e+00, ptr %62, align 8, !tbaa !73
  %63 = getelementptr inbounds %struct._StopInfo, ptr %61, i64 1
  tail call fastcc void @SetMagickPixelPacket(ptr noundef %0, ptr noundef %4, ptr noundef null, ptr noundef nonnull %63) #12
  %64 = load ptr, ptr %40, align 8, !tbaa !71
  %65 = getelementptr inbounds %struct._StopInfo, ptr %64, i64 1, i32 1
  store float 1.000000e+00, ptr %65, align 8, !tbaa !73
  %66 = tail call i32 @DrawGradientImage(ptr noundef %0, ptr noundef nonnull %13) #11
  %67 = tail call ptr @DestroyDrawInfo(ptr noundef nonnull %13) #11
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
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 594, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #11
  br label %10

10:                                               ; preds = %7, %3
  %11 = tail call i64 @GetOptimalKernelWidth2D(double noundef %1, double noundef 5.000000e-01) #11
  %12 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #11
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %14 = load i64, ptr %13, align 8, !tbaa !24
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %16 = load i64, ptr %15, align 8, !tbaa !25
  %17 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %14, i64 noundef %16, i32 noundef 1, ptr noundef %2) #11
  %18 = icmp eq ptr %12, null
  %19 = icmp eq ptr %17, null
  %20 = select i1 %18, i1 true, i1 %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %10
  br i1 %18, label %24, label %22

22:                                               ; preds = %21
  %23 = tail call ptr @DestroyImage(ptr noundef nonnull %12) #11
  br label %24

24:                                               ; preds = %22, %21
  br i1 %19, label %167, label %25

25:                                               ; preds = %24
  %26 = tail call ptr @DestroyImage(ptr noundef nonnull %17) #11
  br label %167

27:                                               ; preds = %10
  %28 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %17, i32 noundef 1) #11
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct._Image, ptr %17, i64 0, i32 58
  tail call void @InheritException(ptr noundef %2, ptr noundef nonnull %31) #11
  %32 = tail call ptr @DestroyImage(ptr noundef nonnull %12) #11
  %33 = tail call ptr @DestroyImage(ptr noundef nonnull %17) #11
  br label %167

34:                                               ; preds = %27
  %35 = tail call fastcc ptr @AcquireHistogramThreadSet() #12
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = tail call ptr @DestroyImage(ptr noundef nonnull %12) #11
  %39 = tail call ptr @DestroyImage(ptr noundef nonnull %17) #11
  %40 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %41 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 620, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %40) #11
  br label %167

42:                                               ; preds = %34
  %43 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %12, ptr noundef %2) #11
  %44 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %17, ptr noundef %2) #11
  %45 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 8
  %46 = load i64, ptr %45, align 8, !tbaa !25
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %162

48:                                               ; preds = %42
  %49 = sdiv i64 %11, -2
  %50 = lshr i64 %11, 1
  %51 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 7
  %52 = getelementptr inbounds %struct._Image, ptr %17, i64 0, i32 7
  %53 = icmp sgt i64 %11, 0
  %54 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 1
  %55 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %56

56:                                               ; preds = %48, %148
  %57 = phi i64 [ 0, %48 ], [ %151, %148 ]
  %58 = phi i32 [ 1, %48 ], [ %150, %148 ]
  %59 = phi i64 [ 0, %48 ], [ %149, %148 ]
  %60 = icmp eq i32 %58, 0
  br i1 %60, label %148, label %61

61:                                               ; preds = %56
  %62 = sub nsw i64 %57, %50
  %63 = load i64, ptr %51, align 8, !tbaa !24
  %64 = add i64 %63, %11
  %65 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %43, i64 noundef %49, i64 noundef %62, i64 noundef %64, i64 noundef %11, ptr noundef %2) #14
  %66 = load i64, ptr %52, align 8, !tbaa !24
  %67 = tail call ptr @QueueCacheViewAuthenticPixels(ptr noundef %44, i64 noundef 0, i64 noundef %57, i64 noundef %66, i64 noundef 1, ptr noundef %2) #14
  %68 = icmp eq ptr %65, null
  %69 = icmp eq ptr %67, null
  %70 = select i1 %68, i1 true, i1 %69
  br i1 %70, label %148, label %71

71:                                               ; preds = %61
  %72 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %43) #11
  %73 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %44) #11
  %74 = load ptr, ptr %35, align 8, !tbaa !75
  %75 = load i64, ptr %51, align 8, !tbaa !24
  %76 = icmp sgt i64 %75, 0
  br i1 %76, label %77, label %136

77:                                               ; preds = %71
  %78 = icmp eq ptr %73, null
  %79 = icmp eq ptr %72, null
  br label %80

80:                                               ; preds = %77, %130
  %81 = phi ptr [ %67, %77 ], [ %132, %130 ]
  %82 = phi i64 [ 0, %77 ], [ %133, %130 ]
  %83 = phi ptr [ %65, %77 ], [ %131, %130 ]
  %84 = tail call ptr @ResetMagickMemory(ptr noundef %74, i32 noundef 0, i64 noundef 2048) #11
  br i1 %53, label %85, label %115

85:                                               ; preds = %80, %109
  %86 = phi i64 [ %113, %109 ], [ 0, %80 ]
  %87 = phi i64 [ %106, %109 ], [ 0, %80 ]
  %88 = phi i64 [ %105, %109 ], [ 0, %80 ]
  %89 = phi i64 [ %112, %109 ], [ 0, %80 ]
  %90 = getelementptr %struct._PixelPacket, ptr %83, i64 %89
  br label %91

91:                                               ; preds = %85, %91
  %92 = phi i64 [ %87, %85 ], [ %106, %91 ]
  %93 = phi i64 [ %88, %85 ], [ %105, %91 ]
  %94 = phi i64 [ 0, %85 ], [ %107, %91 ]
  %95 = getelementptr %struct._PixelPacket, ptr %90, i64 %94
  %96 = tail call float @GetPixelIntensity(ptr noundef %12, ptr noundef %95) #14
  %97 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %96) #12
  %98 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %97) #12
  %99 = zext i8 %98 to i64
  %100 = getelementptr inbounds i64, ptr %74, i64 %99
  %101 = load i64, ptr %100, align 8, !tbaa !65
  %102 = add i64 %101, 1
  store i64 %102, ptr %100, align 8, !tbaa !65
  %103 = icmp ugt i64 %102, %93
  %104 = add nsw i64 %94, %89
  %105 = tail call i64 @llvm.umax.i64(i64 %102, i64 %93)
  %106 = select i1 %103, i64 %104, i64 %92
  %107 = add nuw nsw i64 %94, 1
  %108 = icmp eq i64 %107, %11
  br i1 %108, label %109, label %91, !llvm.loop !76

109:                                              ; preds = %91
  %110 = load i64, ptr %51, align 8, !tbaa !24
  %111 = add i64 %89, %11
  %112 = add i64 %111, %110
  %113 = add nuw nsw i64 %86, 1
  %114 = icmp eq i64 %113, %11
  br i1 %114, label %115, label %85, !llvm.loop !77

115:                                              ; preds = %109, %80
  %116 = phi i64 [ 0, %80 ], [ %106, %109 ]
  %117 = getelementptr inbounds %struct._PixelPacket, ptr %83, i64 %116
  %118 = load i64, ptr %117, align 2
  store i64 %118, ptr %81, align 2
  %119 = load i32, ptr %54, align 4, !tbaa !26
  %120 = icmp eq i32 %119, 12
  br i1 %120, label %121, label %130

121:                                              ; preds = %115
  %122 = getelementptr inbounds i16, ptr %73, i64 %82
  br i1 %78, label %130, label %123

123:                                              ; preds = %121
  br i1 %79, label %128, label %124

124:                                              ; preds = %123
  %125 = getelementptr inbounds i16, ptr %72, i64 %82
  %126 = getelementptr inbounds i16, ptr %125, i64 %116
  %127 = load i16, ptr %126, align 2, !tbaa !56
  br label %128

128:                                              ; preds = %123, %124
  %129 = phi i16 [ %127, %124 ], [ 0, %123 ]
  store i16 %129, ptr %122, align 2, !tbaa !56
  br label %130

130:                                              ; preds = %121, %128, %115
  %131 = getelementptr inbounds %struct._PixelPacket, ptr %83, i64 1
  %132 = getelementptr inbounds %struct._PixelPacket, ptr %81, i64 1
  %133 = add nuw nsw i64 %82, 1
  %134 = load i64, ptr %51, align 8, !tbaa !24
  %135 = icmp slt i64 %133, %134
  br i1 %135, label %80, label %136, !llvm.loop !78

136:                                              ; preds = %130, %71
  %137 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %44, ptr noundef %2) #14
  %138 = icmp ne i32 %137, 0
  %139 = zext i1 %138 to i32
  %140 = load ptr, ptr %55, align 8, !tbaa !79
  %141 = icmp eq ptr %140, null
  br i1 %141, label %148, label %142

142:                                              ; preds = %136
  %143 = add nsw i64 %59, 1
  %144 = load i64, ptr %15, align 8, !tbaa !25
  %145 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.6, i64 noundef %59, i64 noundef %144) #12
  %146 = icmp eq i32 %145, 0
  %147 = select i1 %146, i32 0, i32 %139
  br label %148

148:                                              ; preds = %136, %142, %61, %56
  %149 = phi i64 [ %59, %56 ], [ %59, %61 ], [ %143, %142 ], [ %59, %136 ]
  %150 = phi i32 [ 0, %56 ], [ 0, %61 ], [ %147, %142 ], [ %139, %136 ]
  %151 = add nuw nsw i64 %57, 1
  %152 = load i64, ptr %45, align 8, !tbaa !25
  %153 = icmp slt i64 %151, %152
  br i1 %153, label %56, label %154, !llvm.loop !80

154:                                              ; preds = %148
  %155 = icmp eq i32 %150, 0
  %156 = tail call ptr @DestroyCacheView(ptr noundef %44) #11
  %157 = tail call ptr @DestroyCacheView(ptr noundef %43) #11
  %158 = tail call fastcc ptr @DestroyHistogramThreadSet(ptr noundef nonnull %35) #12
  %159 = tail call ptr @DestroyImage(ptr noundef nonnull %12) #11
  br i1 %155, label %160, label %167

160:                                              ; preds = %154
  %161 = tail call ptr @DestroyImage(ptr noundef %17) #11
  br label %167

162:                                              ; preds = %42
  %163 = tail call ptr @DestroyCacheView(ptr noundef %44) #11
  %164 = tail call ptr @DestroyCacheView(ptr noundef %43) #11
  %165 = tail call fastcc ptr @DestroyHistogramThreadSet(ptr noundef nonnull %35) #12
  %166 = tail call ptr @DestroyImage(ptr noundef nonnull %12) #11
  br label %167

167:                                              ; preds = %162, %154, %160, %24, %25, %37, %30
  %168 = phi ptr [ null, %30 ], [ null, %37 ], [ null, %25 ], [ null, %24 ], [ %161, %160 ], [ %17, %154 ], [ %17, %162 ]
  ret ptr %168
}

; Function Attrs: optsize
declare i64 @GetOptimalKernelWidth2D(double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @InheritException(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @AcquireHistogramThreadSet() unnamed_addr #0 {
  %1 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #11
  %2 = tail call ptr @AcquireQuantumMemory(i64 noundef %1, i64 noundef 8) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %0
  %5 = shl i64 %1, 3
  %6 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %2, i32 noundef 0, i64 noundef %5) #11
  %7 = icmp sgt i64 %1, 0
  br i1 %7, label %11, label %18

8:                                                ; preds = %11
  %9 = add nuw nsw i64 %12, 1
  %10 = icmp eq i64 %9, %1
  br i1 %10, label %18, label %11, !llvm.loop !81

11:                                               ; preds = %4, %8
  %12 = phi i64 [ %9, %8 ], [ 0, %4 ]
  %13 = tail call dereferenceable_or_null(2048) ptr @AcquireQuantumMemory(i64 noundef 256, i64 noundef 8) #13
  %14 = getelementptr inbounds ptr, ptr %2, i64 %12
  store ptr %13, ptr %14, align 8, !tbaa !75
  %15 = icmp eq ptr %13, null
  br i1 %15, label %16, label %8

16:                                               ; preds = %11
  %17 = tail call fastcc ptr @DestroyHistogramThreadSet(ptr noundef nonnull %2) #12
  br label %18

18:                                               ; preds = %8, %4, %0, %16
  %19 = phi ptr [ %17, %16 ], [ null, %0 ], [ %2, %4 ], [ %2, %8 ]
  ret ptr %19
}

; Function Attrs: hot optsize
declare ptr @QueueCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

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

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @SetImageProgress(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #10
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %7 = load ptr, ptr %6, align 8, !tbaa !79
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.9, ptr noundef %1, ptr noundef nonnull %10) #11
  %12 = load ptr, ptr %6, align 8, !tbaa !79
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  %14 = load ptr, ptr %13, align 8, !tbaa !82
  %15 = call i32 %12(ptr noundef nonnull %5, i64 noundef %2, i64 noundef %3, ptr noundef %14) #11
  br label %16

16:                                               ; preds = %4, %9
  %17 = phi i32 [ %15, %9 ], [ 1, %4 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #10
  ret i32 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @DestroyHistogramThreadSet(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #11
  %3 = icmp sgt i64 %2, 0
  br i1 %3, label %4, label %15

4:                                                ; preds = %1, %11
  %5 = phi i64 [ %12, %11 ], [ 0, %1 ]
  %6 = getelementptr inbounds ptr, ptr %0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !75
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %7) #11
  store ptr %10, ptr %6, align 8, !tbaa !75
  br label %11

11:                                               ; preds = %4, %9
  %12 = add nuw nsw i64 %5, 1
  %13 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #11
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %4, label %15, !llvm.loop !83

15:                                               ; preds = %11, %1
  %16 = tail call ptr @RelinquishMagickMemory(ptr noundef %0) #11
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @OpaquePaintImage(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @OpaquePaintImageChannel(ptr noundef %0, i32 noundef 47, ptr noundef %1, ptr noundef %2, i32 noundef %3) #12, !range !27
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @OpaquePaintImageChannel(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct._MagickPixelPacket, align 8
  %7 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #10
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %9 = load i32, ptr %8, align 8, !tbaa !5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 812, ptr noundef nonnull @.str.2, ptr noundef nonnull %12) #11
  br label %14

14:                                               ; preds = %11, %5
  %15 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %0, i32 noundef 1) #11
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %134, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !26
  %20 = tail call fastcc i32 @IsGrayColorspace(i32 noundef %19) #12, !range !27
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = tail call fastcc i32 @IsMagickGray(ptr noundef %3) #12, !range !27
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = tail call i32 @SetImageColorspace(ptr noundef nonnull %0, i32 noundef 13) #11
  br label %27

27:                                               ; preds = %25, %22, %17
  %28 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  %29 = load float, ptr %28, align 4, !tbaa !54
  %30 = fcmp une float %29, 0.000000e+00
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %33 = load i32, ptr %32, align 8, !tbaa !28
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %0, i32 noundef 6) #11
  br label %37

37:                                               ; preds = %35, %31, %27
  %38 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %6) #11
  %39 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %38) #11
  %40 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %41 = load i64, ptr %40, align 8, !tbaa !25
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %131

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %45 = and i32 %1, 1
  %46 = icmp eq i32 %45, 0
  %47 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  %48 = and i32 %1, 2
  %49 = icmp eq i32 %48, 0
  %50 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 6
  %51 = and i32 %1, 4
  %52 = icmp eq i32 %51, 0
  %53 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  %54 = and i32 %1, 8
  %55 = icmp eq i32 %54, 0
  %56 = and i32 %1, 32
  %57 = icmp eq i32 %56, 0
  %58 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  %59 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %60

60:                                               ; preds = %43, %125
  %61 = phi i64 [ 0, %43 ], [ %128, %125 ]
  %62 = phi i64 [ 0, %43 ], [ %127, %125 ]
  %63 = phi i32 [ 1, %43 ], [ %126, %125 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #10
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %125, label %65

65:                                               ; preds = %60
  %66 = load i64, ptr %44, align 8, !tbaa !24
  %67 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %39, i64 noundef 0, i64 noundef %61, i64 noundef %66, i64 noundef 1, ptr noundef nonnull %38) #14
  %68 = icmp eq ptr %67, null
  br i1 %68, label %125, label %69

69:                                               ; preds = %65
  %70 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %39) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(56) %6, i64 56, i1 false), !tbaa.struct !84
  %71 = load i64, ptr %44, align 8, !tbaa !24
  %72 = icmp sgt i64 %71, 0
  br i1 %72, label %73, label %113

73:                                               ; preds = %69
  %74 = icmp eq ptr %70, null
  br label %75

75:                                               ; preds = %73, %108
  %76 = phi ptr [ %67, %73 ], [ %109, %108 ]
  %77 = phi i64 [ 0, %73 ], [ %110, %108 ]
  %78 = getelementptr inbounds i16, ptr %70, i64 %77
  call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %76, ptr noundef %78, ptr noundef nonnull %7) #12
  %79 = call i32 @IsMagickColorSimilar(ptr noundef nonnull %7, ptr noundef %2) #11
  %80 = icmp eq i32 %79, %4
  br i1 %80, label %108, label %81

81:                                               ; preds = %75
  br i1 %46, label %86, label %82

82:                                               ; preds = %81
  %83 = load float, ptr %47, align 8, !tbaa !47
  %84 = call fastcc zeroext i16 @ClampToQuantum(float noundef %83) #12
  %85 = getelementptr inbounds %struct._PixelPacket, ptr %76, i64 0, i32 2
  store i16 %84, ptr %85, align 2, !tbaa !49
  br label %86

86:                                               ; preds = %82, %81
  br i1 %49, label %91, label %87

87:                                               ; preds = %86
  %88 = load float, ptr %50, align 4, !tbaa !50
  %89 = call fastcc zeroext i16 @ClampToQuantum(float noundef %88) #12
  %90 = getelementptr inbounds %struct._PixelPacket, ptr %76, i64 0, i32 1
  store i16 %89, ptr %90, align 2, !tbaa !51
  br label %91

91:                                               ; preds = %87, %86
  br i1 %52, label %95, label %92

92:                                               ; preds = %91
  %93 = load float, ptr %53, align 8, !tbaa !52
  %94 = call fastcc zeroext i16 @ClampToQuantum(float noundef %93) #12
  store i16 %94, ptr %76, align 2, !tbaa !53
  br label %95

95:                                               ; preds = %92, %91
  br i1 %55, label %100, label %96

96:                                               ; preds = %95
  %97 = load float, ptr %28, align 4, !tbaa !54
  %98 = call fastcc zeroext i16 @ClampToQuantum(float noundef %97) #12
  %99 = getelementptr inbounds %struct._PixelPacket, ptr %76, i64 0, i32 3
  store i16 %98, ptr %99, align 2, !tbaa !41
  br label %100

100:                                              ; preds = %96, %95
  br i1 %57, label %108, label %101

101:                                              ; preds = %100
  %102 = load i32, ptr %18, align 4, !tbaa !26
  %103 = icmp ne i32 %102, 12
  %104 = select i1 %103, i1 true, i1 %74
  br i1 %104, label %108, label %105

105:                                              ; preds = %101
  %106 = load float, ptr %58, align 8, !tbaa !55
  %107 = call fastcc zeroext i16 @ClampToQuantum(float noundef %106) #12
  store i16 %107, ptr %78, align 2, !tbaa !56
  br label %108

108:                                              ; preds = %100, %101, %105, %75
  %109 = getelementptr inbounds %struct._PixelPacket, ptr %76, i64 1
  %110 = add nuw nsw i64 %77, 1
  %111 = load i64, ptr %44, align 8, !tbaa !24
  %112 = icmp slt i64 %110, %111
  br i1 %112, label %75, label %113, !llvm.loop !86

113:                                              ; preds = %108, %69
  %114 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %39, ptr noundef nonnull %38) #14
  %115 = icmp ne i32 %114, 0
  %116 = zext i1 %115 to i32
  %117 = load ptr, ptr %59, align 8, !tbaa !79
  %118 = icmp eq ptr %117, null
  br i1 %118, label %125, label %119

119:                                              ; preds = %113
  %120 = add nsw i64 %62, 1
  %121 = load i64, ptr %40, align 8, !tbaa !25
  %122 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.7, i64 noundef %62, i64 noundef %121) #12
  %123 = icmp eq i32 %122, 0
  %124 = select i1 %123, i32 0, i32 %116
  br label %125

125:                                              ; preds = %113, %119, %65, %60
  %126 = phi i32 [ 0, %60 ], [ 0, %65 ], [ %124, %119 ], [ %116, %113 ]
  %127 = phi i64 [ %62, %60 ], [ %62, %65 ], [ %120, %119 ], [ %62, %113 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #10
  %128 = add nuw nsw i64 %61, 1
  %129 = load i64, ptr %40, align 8, !tbaa !25
  %130 = icmp slt i64 %128, %129
  br i1 %130, label %60, label %131, !llvm.loop !87

131:                                              ; preds = %125, %37
  %132 = phi i32 [ 1, %37 ], [ %126, %125 ]
  %133 = call ptr @DestroyCacheView(ptr noundef %39) #11
  br label %134

134:                                              ; preds = %14, %131
  %135 = phi i32 [ %132, %131 ], [ 0, %14 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #10
  ret i32 %135
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef i32 @IsMagickGray(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !63
  %4 = add i32 %3, -1
  %5 = icmp ult i32 %4, 2
  br i1 %5, label %6, label %23

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %8 = load float, ptr %7, align 8, !tbaa !47
  %9 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %10 = load float, ptr %9, align 4, !tbaa !50
  %11 = fsub float %8, %10
  %12 = tail call float @llvm.fabs.f32(float %11)
  %13 = fpext float %12 to double
  %14 = fcmp olt double %13, 1.000000e-15
  br i1 %14, label %15, label %22

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %17 = load float, ptr %16, align 8, !tbaa !52
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @TransparentPaintImage(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct._MagickPixelPacket, align 8
  %6 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #10
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 960, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #11
  br label %13

13:                                               ; preds = %10, %4
  %14 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %0, i32 noundef 1) #11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %78, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %18 = load i32, ptr %17, align 8, !tbaa !28
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %0, i32 noundef 6) #11
  br label %22

22:                                               ; preds = %20, %16
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %5) #11
  %24 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %23) #11
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %26 = load i64, ptr %25, align 8, !tbaa !25
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %75

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %30 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %31

31:                                               ; preds = %28, %69
  %32 = phi i64 [ 0, %28 ], [ %72, %69 ]
  %33 = phi i64 [ 0, %28 ], [ %71, %69 ]
  %34 = phi i32 [ 1, %28 ], [ %70, %69 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #10
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %69, label %36

36:                                               ; preds = %31
  %37 = load i64, ptr %29, align 8, !tbaa !24
  %38 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %24, i64 noundef 0, i64 noundef %32, i64 noundef %37, i64 noundef 1, ptr noundef nonnull %23) #14
  %39 = icmp eq ptr %38, null
  br i1 %39, label %69, label %40

40:                                               ; preds = %36
  %41 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %24) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) %5, i64 56, i1 false), !tbaa.struct !84
  %42 = load i64, ptr %29, align 8, !tbaa !24
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %40, %52
  %45 = phi ptr [ %53, %52 ], [ %38, %40 ]
  %46 = phi i64 [ %54, %52 ], [ 0, %40 ]
  %47 = getelementptr inbounds i16, ptr %41, i64 %46
  call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %45, ptr noundef %47, ptr noundef nonnull %6) #12
  %48 = call i32 @IsMagickColorSimilar(ptr noundef nonnull %6, ptr noundef %1) #11
  %49 = icmp eq i32 %48, %3
  br i1 %49, label %52, label %50

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct._PixelPacket, ptr %45, i64 0, i32 3
  store i16 %2, ptr %51, align 2, !tbaa !41
  br label %52

52:                                               ; preds = %50, %44
  %53 = getelementptr inbounds %struct._PixelPacket, ptr %45, i64 1
  %54 = add nuw nsw i64 %46, 1
  %55 = load i64, ptr %29, align 8, !tbaa !24
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %44, label %57, !llvm.loop !88

57:                                               ; preds = %52, %40
  %58 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %24, ptr noundef nonnull %23) #14
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i32
  %61 = load ptr, ptr %30, align 8, !tbaa !79
  %62 = icmp eq ptr %61, null
  br i1 %62, label %69, label %63

63:                                               ; preds = %57
  %64 = add nsw i64 %33, 1
  %65 = load i64, ptr %25, align 8, !tbaa !25
  %66 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.8, i64 noundef %33, i64 noundef %65) #12
  %67 = icmp eq i32 %66, 0
  %68 = select i1 %67, i32 0, i32 %60
  br label %69

69:                                               ; preds = %57, %63, %36, %31
  %70 = phi i32 [ 0, %31 ], [ 0, %36 ], [ %68, %63 ], [ %60, %57 ]
  %71 = phi i64 [ %33, %31 ], [ %33, %36 ], [ %64, %63 ], [ %33, %57 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #10
  %72 = add nuw nsw i64 %32, 1
  %73 = load i64, ptr %25, align 8, !tbaa !25
  %74 = icmp slt i64 %72, %73
  br i1 %74, label %31, label %75, !llvm.loop !89

75:                                               ; preds = %69, %22
  %76 = phi i32 [ 1, %22 ], [ %70, %69 ]
  %77 = call ptr @DestroyCacheView(ptr noundef %24) #11
  br label %78

78:                                               ; preds = %13, %75
  %79 = phi i32 [ %76, %75 ], [ 0, %13 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #10
  ret i32 %79
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @TransparentPaintImageChroma(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i16 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct._MagickPixelPacket, align 8
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1094, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #11
  br label %13

13:                                               ; preds = %10, %5
  %14 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %0, i32 noundef 1) #11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %109, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %18 = load i32, ptr %17, align 8, !tbaa !28
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %0, i32 noundef 7) #11
  br label %22

22:                                               ; preds = %20, %16
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %24 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %23) #11
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %26 = load i64, ptr %25, align 8, !tbaa !25
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %106

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %30 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 5
  %31 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %32 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 5
  %33 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 6
  %34 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %35 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 6
  %36 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 7
  %37 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %38 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 7
  %39 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %40

40:                                               ; preds = %28, %100
  %41 = phi i32 [ 1, %28 ], [ %102, %100 ]
  %42 = phi i64 [ 0, %28 ], [ %103, %100 ]
  %43 = phi i64 [ 0, %28 ], [ %101, %100 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #10
  %44 = icmp eq i32 %41, 0
  br i1 %44, label %100, label %45

45:                                               ; preds = %40
  %46 = load i64, ptr %29, align 8, !tbaa !24
  %47 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %24, i64 noundef 0, i64 noundef %42, i64 noundef %46, i64 noundef 1, ptr noundef nonnull %23) #14
  %48 = icmp eq ptr %47, null
  br i1 %48, label %100, label %49

49:                                               ; preds = %45
  %50 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %24) #11
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %6) #11
  %51 = load i64, ptr %29, align 8, !tbaa !24
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %88

53:                                               ; preds = %49
  %54 = load float, ptr %31, align 8, !tbaa !47
  br label %55

55:                                               ; preds = %53, %84
  %56 = phi ptr [ %47, %53 ], [ %85, %84 ]
  %57 = phi i64 [ 0, %53 ], [ %86, %84 ]
  %58 = getelementptr inbounds i16, ptr %50, i64 %57
  call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %56, ptr noundef %58, ptr noundef nonnull %6) #12
  %59 = load float, ptr %30, align 8, !tbaa !47
  %60 = fcmp ult float %59, %54
  br i1 %60, label %78, label %61

61:                                               ; preds = %55
  %62 = load float, ptr %32, align 8, !tbaa !47
  %63 = fcmp ugt float %59, %62
  br i1 %63, label %78, label %64

64:                                               ; preds = %61
  %65 = load float, ptr %33, align 4, !tbaa !50
  %66 = load float, ptr %34, align 4, !tbaa !50
  %67 = fcmp ult float %65, %66
  br i1 %67, label %78, label %68

68:                                               ; preds = %64
  %69 = load float, ptr %35, align 4, !tbaa !50
  %70 = fcmp ugt float %65, %69
  br i1 %70, label %78, label %71

71:                                               ; preds = %68
  %72 = load float, ptr %36, align 8, !tbaa !52
  %73 = load float, ptr %37, align 8, !tbaa !52
  %74 = fcmp ult float %72, %73
  br i1 %74, label %78, label %75

75:                                               ; preds = %71
  %76 = load float, ptr %38, align 8, !tbaa !52
  %77 = fcmp ole float %72, %76
  br label %78

78:                                               ; preds = %75, %71, %68, %64, %61, %55
  %79 = phi i1 [ false, %71 ], [ false, %68 ], [ false, %64 ], [ false, %61 ], [ false, %55 ], [ %77, %75 ]
  %80 = zext i1 %79 to i32
  %81 = icmp eq i32 %80, %4
  br i1 %81, label %84, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct._PixelPacket, ptr %56, i64 0, i32 3
  store i16 %3, ptr %83, align 2, !tbaa !41
  br label %84

84:                                               ; preds = %82, %78
  %85 = getelementptr inbounds %struct._PixelPacket, ptr %56, i64 1
  %86 = add nuw nsw i64 %57, 1
  %87 = icmp eq i64 %86, %51
  br i1 %87, label %88, label %55, !llvm.loop !90

88:                                               ; preds = %84, %49
  %89 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %24, ptr noundef nonnull %23) #14
  %90 = icmp ne i32 %89, 0
  %91 = zext i1 %90 to i32
  %92 = load ptr, ptr %39, align 8, !tbaa !79
  %93 = icmp eq ptr %92, null
  br i1 %93, label %100, label %94

94:                                               ; preds = %88
  %95 = add nsw i64 %43, 1
  %96 = load i64, ptr %25, align 8, !tbaa !25
  %97 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.8, i64 noundef %43, i64 noundef %96) #12
  %98 = icmp eq i32 %97, 0
  %99 = select i1 %98, i32 0, i32 %91
  br label %100

100:                                              ; preds = %88, %94, %45, %40
  %101 = phi i64 [ %43, %40 ], [ %43, %45 ], [ %95, %94 ], [ %43, %88 ]
  %102 = phi i32 [ 0, %40 ], [ 0, %45 ], [ %99, %94 ], [ %91, %88 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #10
  %103 = add nuw nsw i64 %42, 1
  %104 = load i64, ptr %25, align 8, !tbaa !25
  %105 = icmp slt i64 %103, %104
  br i1 %105, label %40, label %106, !llvm.loop !91

106:                                              ; preds = %100, %22
  %107 = phi i32 [ 1, %22 ], [ %102, %100 ]
  %108 = call ptr @DestroyCacheView(ptr noundef %24) #11
  br label %109

109:                                              ; preds = %13, %106
  %110 = phi i32 [ %107, %106 ], [ 0, %13 ]
  ret i32 %110
}

; Function Attrs: optsize
declare i32 @GetOneVirtualMethodPixel(ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: hot optsize
declare float @DecodePixelGamma(float noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i64 @GetMagickResourceLimit(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { hot optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { nounwind optsize }
attributes #12 = { optsize }
attributes #13 = { nounwind optsize allocsize(0,1) }
attributes #14 = { hot nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 12976}
!6 = !{!"_Image", !7, i64 0, !7, i64 4, !7, i64 8, !10, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !11, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !14, i64 104, !15, i64 112, !7, i64 208, !11, i64 216, !7, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !10, i64 256, !14, i64 264, !14, i64 272, !17, i64 280, !17, i64 312, !17, i64 344, !14, i64 376, !14, i64 384, !14, i64 392, !7, i64 400, !7, i64 404, !7, i64 408, !7, i64 412, !7, i64 416, !7, i64 420, !11, i64 424, !10, i64 432, !10, i64 440, !10, i64 448, !10, i64 456, !10, i64 464, !10, i64 472, !18, i64 480, !19, i64 504, !11, i64 568, !11, i64 576, !11, i64 584, !11, i64 592, !11, i64 600, !11, i64 608, !8, i64 616, !8, i64 4712, !8, i64 8808, !10, i64 12904, !10, i64 12912, !21, i64 12920, !7, i64 12976, !10, i64 12984, !11, i64 12992, !22, i64 13000, !22, i64 13032, !11, i64 13064, !10, i64 13072, !10, i64 13080, !11, i64 13088, !11, i64 13096, !11, i64 13104, !7, i64 13112, !7, i64 13116, !12, i64 13120, !11, i64 13128, !17, i64 13136, !11, i64 13168, !11, i64 13176, !7, i64 13184, !7, i64 13188, !23, i64 13192, !7, i64 13200, !10, i64 13208, !10, i64 13216, !7, i64 13224, !10, i64 13232}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"long", !8, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!"_PixelPacket", !13, i64 0, !13, i64 2, !13, i64 4, !13, i64 6}
!13 = !{!"short", !8, i64 0}
!14 = !{!"double", !8, i64 0}
!15 = !{!"_ChromaticityInfo", !16, i64 0, !16, i64 24, !16, i64 48, !16, i64 72}
!16 = !{!"_PrimaryInfo", !14, i64 0, !14, i64 8, !14, i64 16}
!17 = !{!"_RectangleInfo", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!18 = !{!"_ErrorInfo", !14, i64 0, !14, i64 8, !14, i64 16}
!19 = !{!"_TimerInfo", !20, i64 0, !20, i64 24, !7, i64 48, !10, i64 56}
!20 = !{!"_Timer", !14, i64 0, !14, i64 8, !14, i64 16}
!21 = !{!"_ExceptionInfo", !7, i64 0, !7, i64 4, !11, i64 8, !11, i64 16, !11, i64 24, !7, i64 32, !11, i64 40, !10, i64 48}
!22 = !{!"_ProfileInfo", !11, i64 0, !10, i64 8, !11, i64 16, !10, i64 24}
!23 = !{!"long long", !8, i64 0}
!24 = !{!6, !10, i64 40}
!25 = !{!6, !10, i64 48}
!26 = !{!6, !7, i64 4}
!27 = !{i32 0, i32 2}
!28 = !{!6, !7, i64 32}
!29 = !{!30, !13, i64 106}
!30 = !{!"_DrawInfo", !11, i64 0, !11, i64 8, !17, i64 16, !31, i64 48, !7, i64 96, !12, i64 100, !12, i64 108, !14, i64 120, !32, i64 128, !11, i64 256, !11, i64 264, !11, i64 272, !7, i64 280, !7, i64 284, !7, i64 288, !7, i64 292, !7, i64 296, !10, i64 304, !14, i64 312, !7, i64 320, !7, i64 324, !11, i64 328, !10, i64 336, !11, i64 344, !11, i64 352, !11, i64 360, !7, i64 368, !7, i64 372, !10, i64 376, !11, i64 384, !14, i64 392, !11, i64 400, !7, i64 408, !12, i64 412, !12, i64 420, !11, i64 432, !11, i64 440, !11, i64 448, !33, i64 456, !7, i64 488, !13, i64 492, !7, i64 496, !36, i64 504, !7, i64 672, !10, i64 680, !14, i64 688, !14, i64 696, !14, i64 704, !7, i64 712}
!31 = !{!"_AffineMatrix", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40}
!32 = !{!"_GradientInfo", !7, i64 0, !17, i64 8, !33, i64 40, !11, i64 72, !10, i64 80, !7, i64 88, !7, i64 92, !10, i64 96, !34, i64 104, !35, i64 120}
!33 = !{!"_SegmentInfo", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24}
!34 = !{!"_PointInfo", !14, i64 0, !14, i64 8}
!35 = !{!"float", !8, i64 0}
!36 = !{!"_ElementReference", !11, i64 0, !7, i64 8, !32, i64 16, !10, i64 144, !11, i64 152, !11, i64 160}
!37 = !{!33, !14, i64 0}
!38 = !{!33, !14, i64 8}
!39 = !{!33, !14, i64 16}
!40 = !{!33, !14, i64 24}
!41 = !{!12, !13, i64 6}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.mustprogress"}
!44 = distinct !{!44, !43}
!45 = distinct !{!45, !43}
!46 = distinct !{!46, !43}
!47 = !{!48, !35, i64 32}
!48 = !{!"_MagickPixelPacket", !7, i64 0, !7, i64 4, !7, i64 8, !14, i64 16, !10, i64 24, !35, i64 32, !35, i64 36, !35, i64 40, !35, i64 44, !35, i64 48}
!49 = !{!12, !13, i64 4}
!50 = !{!48, !35, i64 36}
!51 = !{!12, !13, i64 2}
!52 = !{!48, !35, i64 40}
!53 = !{!12, !13, i64 0}
!54 = !{!48, !35, i64 44}
!55 = !{!48, !35, i64 48}
!56 = !{!13, !13, i64 0}
!57 = distinct !{!57, !43}
!58 = distinct !{!58, !43}
!59 = !{!35, !35, i64 0}
!60 = !{!30, !11, i64 256}
!61 = !{!6, !10, i64 13152}
!62 = !{!6, !10, i64 13160}
!63 = !{!48, !7, i64 4}
!64 = !{!32, !7, i64 0}
!65 = !{!10, !10, i64 0}
!66 = !{!14, !14, i64 0}
!67 = !{!32, !14, i64 56}
!68 = !{!32, !35, i64 120}
!69 = !{!32, !7, i64 88}
!70 = !{!32, !10, i64 80}
!71 = !{!32, !11, i64 72}
!72 = distinct !{!72, !43}
!73 = !{!74, !35, i64 56}
!74 = !{!"_StopInfo", !48, i64 0, !35, i64 56}
!75 = !{!11, !11, i64 0}
!76 = distinct !{!76, !43}
!77 = distinct !{!77, !43}
!78 = distinct !{!78, !43}
!79 = !{!6, !11, i64 568}
!80 = distinct !{!80, !43}
!81 = distinct !{!81, !43}
!82 = !{!6, !11, i64 576}
!83 = distinct !{!83, !43}
!84 = !{i64 0, i64 4, !85, i64 4, i64 4, !85, i64 8, i64 4, !85, i64 16, i64 8, !66, i64 24, i64 8, !65, i64 32, i64 4, !59, i64 36, i64 4, !59, i64 40, i64 4, !59, i64 44, i64 4, !59, i64 48, i64 4, !59}
!85 = !{!7, !7, i64 0}
!86 = distinct !{!86, !43}
!87 = distinct !{!87, !43}
!88 = distinct !{!88, !43}
!89 = distinct !{!89, !43}
!90 = distinct !{!90, !43}
!91 = distinct !{!91, !43}
