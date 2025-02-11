; ModuleID = 'magick/channel.c'
source_filename = "magick/channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%struct._MagickPixelPacket = type { i32, i32, i32, double, i64, float, float, float, float, float }

@.str = private unnamed_addr constant [17 x i8] c"magick/channel.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"ImagesAreNotTheSameSize\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Combine/Image\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"Separate/Image\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CombineImages(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 122, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #8
  br label %10

10:                                               ; preds = %3, %7
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  br label %13

13:                                               ; preds = %10, %27
  %14 = phi ptr [ %0, %10 ], [ %28, %27 ]
  %15 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 7
  %16 = load i64, ptr %15, align 8, !tbaa !24
  %17 = load i64, ptr %11, align 8, !tbaa !24
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 8
  %21 = load i64, ptr %20, align 8, !tbaa !25
  %22 = load i64, ptr %12, align 8, !tbaa !25
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %27, label %24

24:                                               ; preds = %19, %13
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %26 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 128, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %25) #8
  br label %254

27:                                               ; preds = %19
  %28 = tail call ptr @GetNextImageInList(ptr noundef nonnull %14) #8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %13, !llvm.loop !26

30:                                               ; preds = %27
  %31 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %254, label %33

33:                                               ; preds = %30
  %34 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %31, i32 noundef 1) #8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct._Image, ptr %31, i64 0, i32 58
  tail call void @InheritException(ptr noundef %2, ptr noundef nonnull %37) #8
  %38 = tail call ptr @DestroyImage(ptr noundef nonnull %31) #8
  br label %254

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %41 = load i32, ptr %40, align 4, !tbaa !28
  %42 = tail call fastcc i32 @IssRGBCompatibleColorspace(i32 noundef %41) #9, !range !29
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %39
  %45 = tail call i32 @SetImageColorspace(ptr noundef nonnull %31, i32 noundef 13) #8
  br label %46

46:                                               ; preds = %44, %39
  %47 = and i32 %1, 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct._Image, ptr %31, i64 0, i32 6
  store i32 1, ptr %50, align 8, !tbaa !30
  br label %51

51:                                               ; preds = %49, %46
  %52 = tail call i32 @SetImageBackgroundColor(ptr noundef nonnull %31) #8
  %53 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %31, ptr noundef %2) #8
  %54 = getelementptr inbounds %struct._Image, ptr %31, i64 0, i32 8
  %55 = load i64, ptr %54, align 8, !tbaa !25
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %57, label %242

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct._Image, ptr %31, i64 0, i32 7
  %59 = and i32 %1, 1
  %60 = icmp eq i32 %59, 0
  %61 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %62 = and i32 %1, 2
  %63 = icmp ne i32 %62, 0
  %64 = and i32 %1, 4
  %65 = icmp ne i32 %64, 0
  %66 = and i32 %1, 32
  %67 = icmp eq i32 %66, 0
  %68 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %69

69:                                               ; preds = %57, %234
  %70 = phi i64 [ 0, %57 ], [ %237, %234 ]
  %71 = phi i64 [ 0, %57 ], [ %236, %234 ]
  %72 = phi i32 [ 1, %57 ], [ %235, %234 ]
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %234, label %74

74:                                               ; preds = %69
  %75 = load i64, ptr %58, align 8, !tbaa !24
  %76 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %53, i64 noundef 0, i64 noundef %70, i64 noundef %75, i64 noundef 1, ptr noundef %2) #10
  %77 = icmp eq ptr %76, null
  br i1 %77, label %234, label %78

78:                                               ; preds = %74
  br i1 %60, label %102, label %79

79:                                               ; preds = %78
  %80 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %2) #8
  %81 = load i64, ptr %61, align 8, !tbaa !24
  %82 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %80, i64 noundef 0, i64 noundef %70, i64 noundef %81, i64 noundef 1, ptr noundef %2) #10
  %83 = icmp eq ptr %82, null
  br i1 %83, label %234, label %84

84:                                               ; preds = %79
  %85 = load i64, ptr %58, align 8, !tbaa !24
  %86 = icmp sgt i64 %85, 0
  br i1 %86, label %87, label %99

87:                                               ; preds = %84, %87
  %88 = phi i64 [ %96, %87 ], [ 0, %84 ]
  %89 = phi ptr [ %95, %87 ], [ %76, %84 ]
  %90 = phi ptr [ %94, %87 ], [ %82, %84 ]
  %91 = tail call float @GetPixelIntensity(ptr noundef nonnull %0, ptr noundef nonnull %90) #10
  %92 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %91) #9
  %93 = getelementptr inbounds %struct._PixelPacket, ptr %89, i64 0, i32 2
  store i16 %92, ptr %93, align 2, !tbaa !31
  %94 = getelementptr inbounds %struct._PixelPacket, ptr %90, i64 1
  %95 = getelementptr inbounds %struct._PixelPacket, ptr %89, i64 1
  %96 = add nuw nsw i64 %88, 1
  %97 = load i64, ptr %58, align 8, !tbaa !24
  %98 = icmp slt i64 %96, %97
  br i1 %98, label %87, label %99, !llvm.loop !32

99:                                               ; preds = %87, %84
  %100 = tail call ptr @DestroyCacheView(ptr noundef %80) #8
  %101 = tail call ptr @GetNextImageInList(ptr noundef nonnull %0) #8
  br label %102

102:                                              ; preds = %99, %78
  %103 = phi ptr [ %101, %99 ], [ %0, %78 ]
  %104 = icmp ne ptr %103, null
  %105 = select i1 %63, i1 %104, i1 false
  br i1 %105, label %106, label %130

106:                                              ; preds = %102
  %107 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %103, ptr noundef %2) #8
  %108 = getelementptr inbounds %struct._Image, ptr %103, i64 0, i32 7
  %109 = load i64, ptr %108, align 8, !tbaa !24
  %110 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %107, i64 noundef 0, i64 noundef %70, i64 noundef %109, i64 noundef 1, ptr noundef %2) #10
  %111 = icmp eq ptr %110, null
  br i1 %111, label %234, label %112

112:                                              ; preds = %106
  %113 = load i64, ptr %58, align 8, !tbaa !24
  %114 = icmp sgt i64 %113, 0
  br i1 %114, label %115, label %127

115:                                              ; preds = %112, %115
  %116 = phi i64 [ %124, %115 ], [ 0, %112 ]
  %117 = phi ptr [ %123, %115 ], [ %76, %112 ]
  %118 = phi ptr [ %122, %115 ], [ %110, %112 ]
  %119 = tail call float @GetPixelIntensity(ptr noundef %0, ptr noundef nonnull %118) #10
  %120 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %119) #9
  %121 = getelementptr inbounds %struct._PixelPacket, ptr %117, i64 0, i32 1
  store i16 %120, ptr %121, align 2, !tbaa !33
  %122 = getelementptr inbounds %struct._PixelPacket, ptr %118, i64 1
  %123 = getelementptr inbounds %struct._PixelPacket, ptr %117, i64 1
  %124 = add nuw nsw i64 %116, 1
  %125 = load i64, ptr %58, align 8, !tbaa !24
  %126 = icmp slt i64 %124, %125
  br i1 %126, label %115, label %127, !llvm.loop !34

127:                                              ; preds = %115, %112
  %128 = tail call ptr @DestroyCacheView(ptr noundef %107) #8
  %129 = tail call ptr @GetNextImageInList(ptr noundef nonnull %103) #8
  br label %130

130:                                              ; preds = %127, %102
  %131 = phi ptr [ %129, %127 ], [ %103, %102 ]
  %132 = icmp ne ptr %131, null
  %133 = select i1 %65, i1 %132, i1 false
  br i1 %133, label %134, label %157

134:                                              ; preds = %130
  %135 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %131, ptr noundef %2) #8
  %136 = getelementptr inbounds %struct._Image, ptr %131, i64 0, i32 7
  %137 = load i64, ptr %136, align 8, !tbaa !24
  %138 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %135, i64 noundef 0, i64 noundef %70, i64 noundef %137, i64 noundef 1, ptr noundef %2) #10
  %139 = icmp eq ptr %138, null
  br i1 %139, label %234, label %140

140:                                              ; preds = %134
  %141 = load i64, ptr %58, align 8, !tbaa !24
  %142 = icmp sgt i64 %141, 0
  br i1 %142, label %143, label %154

143:                                              ; preds = %140, %143
  %144 = phi i64 [ %151, %143 ], [ 0, %140 ]
  %145 = phi ptr [ %150, %143 ], [ %76, %140 ]
  %146 = phi ptr [ %149, %143 ], [ %138, %140 ]
  %147 = tail call float @GetPixelIntensity(ptr noundef %0, ptr noundef nonnull %146) #10
  %148 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %147) #9
  store i16 %148, ptr %145, align 2, !tbaa !35
  %149 = getelementptr inbounds %struct._PixelPacket, ptr %146, i64 1
  %150 = getelementptr inbounds %struct._PixelPacket, ptr %145, i64 1
  %151 = add nuw nsw i64 %144, 1
  %152 = load i64, ptr %58, align 8, !tbaa !24
  %153 = icmp slt i64 %151, %152
  br i1 %153, label %143, label %154, !llvm.loop !36

154:                                              ; preds = %143, %140
  %155 = tail call ptr @DestroyCacheView(ptr noundef %135) #8
  %156 = tail call ptr @GetNextImageInList(ptr noundef nonnull %131) #8
  br label %157

157:                                              ; preds = %154, %130
  %158 = phi ptr [ %156, %154 ], [ %131, %130 ]
  %159 = icmp ne ptr %158, null
  %160 = select i1 %48, i1 %159, i1 false
  br i1 %160, label %161, label %186

161:                                              ; preds = %157
  %162 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %158, ptr noundef %2) #8
  %163 = getelementptr inbounds %struct._Image, ptr %158, i64 0, i32 7
  %164 = load i64, ptr %163, align 8, !tbaa !24
  %165 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %162, i64 noundef 0, i64 noundef %70, i64 noundef %164, i64 noundef 1, ptr noundef %2) #10
  %166 = icmp eq ptr %165, null
  br i1 %166, label %234, label %167

167:                                              ; preds = %161
  %168 = load i64, ptr %58, align 8, !tbaa !24
  %169 = icmp sgt i64 %168, 0
  br i1 %169, label %170, label %183

170:                                              ; preds = %167, %170
  %171 = phi i64 [ %180, %170 ], [ 0, %167 ]
  %172 = phi ptr [ %179, %170 ], [ %76, %167 ]
  %173 = phi ptr [ %178, %170 ], [ %165, %167 ]
  %174 = tail call float @GetPixelIntensity(ptr noundef %0, ptr noundef nonnull %173) #10
  %175 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %174) #9
  %176 = xor i16 %175, -1
  %177 = getelementptr inbounds %struct._PixelPacket, ptr %172, i64 0, i32 3
  store i16 %176, ptr %177, align 2, !tbaa !37
  %178 = getelementptr inbounds %struct._PixelPacket, ptr %173, i64 1
  %179 = getelementptr inbounds %struct._PixelPacket, ptr %172, i64 1
  %180 = add nuw nsw i64 %171, 1
  %181 = load i64, ptr %58, align 8, !tbaa !24
  %182 = icmp slt i64 %180, %181
  br i1 %182, label %170, label %183, !llvm.loop !38

183:                                              ; preds = %170, %167
  %184 = tail call ptr @DestroyCacheView(ptr noundef %162) #8
  %185 = tail call ptr @GetNextImageInList(ptr noundef nonnull %158) #8
  br label %186

186:                                              ; preds = %183, %157
  %187 = phi ptr [ %185, %183 ], [ %158, %157 ]
  br i1 %67, label %222, label %188

188:                                              ; preds = %186
  %189 = load i32, ptr %40, align 4, !tbaa !28
  %190 = icmp eq i32 %189, 12
  %191 = icmp ne ptr %187, null
  %192 = select i1 %190, i1 %191, i1 false
  br i1 %192, label %193, label %222

193:                                              ; preds = %188
  %194 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %187, ptr noundef %2) #8
  %195 = getelementptr inbounds %struct._Image, ptr %187, i64 0, i32 7
  %196 = load i64, ptr %195, align 8, !tbaa !24
  %197 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %194, i64 noundef 0, i64 noundef %70, i64 noundef %196, i64 noundef 1, ptr noundef %2) #10
  %198 = icmp eq ptr %197, null
  br i1 %198, label %234, label %199

199:                                              ; preds = %193
  %200 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %53) #8
  %201 = load i64, ptr %58, align 8, !tbaa !24
  %202 = icmp sgt i64 %201, 0
  br i1 %202, label %203, label %219

203:                                              ; preds = %199
  %204 = icmp eq ptr %200, null
  br label %205

205:                                              ; preds = %203, %214
  %206 = phi i64 [ %201, %203 ], [ %215, %214 ]
  %207 = phi i64 [ 0, %203 ], [ %217, %214 ]
  %208 = phi ptr [ %197, %203 ], [ %216, %214 ]
  br i1 %204, label %214, label %209

209:                                              ; preds = %205
  %210 = getelementptr inbounds i16, ptr %200, i64 %207
  %211 = tail call float @GetPixelIntensity(ptr noundef %0, ptr noundef nonnull %208) #10
  %212 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %211) #9
  store i16 %212, ptr %210, align 2, !tbaa !39
  %213 = load i64, ptr %58, align 8, !tbaa !24
  br label %214

214:                                              ; preds = %209, %205
  %215 = phi i64 [ %213, %209 ], [ %206, %205 ]
  %216 = getelementptr inbounds %struct._PixelPacket, ptr %208, i64 1
  %217 = add nuw nsw i64 %207, 1
  %218 = icmp slt i64 %217, %215
  br i1 %218, label %205, label %219, !llvm.loop !40

219:                                              ; preds = %214, %199
  %220 = tail call ptr @DestroyCacheView(ptr noundef %194) #8
  %221 = tail call ptr @GetNextImageInList(ptr noundef nonnull %187) #8
  br label %222

222:                                              ; preds = %219, %188, %186
  %223 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %53, ptr noundef %2) #10
  %224 = icmp ne i32 %223, 0
  %225 = zext i1 %224 to i32
  %226 = load ptr, ptr %68, align 8, !tbaa !41
  %227 = icmp eq ptr %226, null
  br i1 %227, label %234, label %228

228:                                              ; preds = %222
  %229 = add nsw i64 %71, 1
  %230 = load i64, ptr %54, align 8, !tbaa !25
  %231 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, i64 noundef %71, i64 noundef %230) #9
  %232 = icmp eq i32 %231, 0
  %233 = select i1 %232, i32 0, i32 %225
  br label %234

234:                                              ; preds = %193, %222, %228, %161, %134, %106, %79, %74, %69
  %235 = phi i32 [ 0, %69 ], [ 0, %74 ], [ 1, %79 ], [ 1, %106 ], [ 1, %134 ], [ 1, %161 ], [ %233, %228 ], [ %225, %222 ], [ 1, %193 ]
  %236 = phi i64 [ %71, %69 ], [ %71, %74 ], [ %71, %79 ], [ %71, %106 ], [ %71, %134 ], [ %71, %161 ], [ %229, %228 ], [ %71, %222 ], [ %71, %193 ]
  %237 = add nuw nsw i64 %70, 1
  %238 = load i64, ptr %54, align 8, !tbaa !25
  %239 = icmp slt i64 %237, %238
  br i1 %239, label %69, label %240, !llvm.loop !42

240:                                              ; preds = %234
  %241 = icmp eq i32 %235, 0
  br label %242

242:                                              ; preds = %240, %51
  %243 = phi i1 [ false, %51 ], [ %241, %240 ]
  %244 = tail call ptr @DestroyCacheView(ptr noundef %53) #8
  %245 = getelementptr inbounds %struct._Image, ptr %31, i64 0, i32 1
  %246 = load i32, ptr %245, align 4, !tbaa !28
  %247 = tail call fastcc i32 @IsGrayColorspace(i32 noundef %246) #9, !range !29
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %251, label %249

249:                                              ; preds = %242
  %250 = tail call i32 @TransformImageColorspace(ptr noundef nonnull %31, i32 noundef 13) #8
  br label %251

251:                                              ; preds = %249, %242
  br i1 %243, label %252, label %254

252:                                              ; preds = %251
  %253 = tail call ptr @DestroyImage(ptr noundef nonnull %31) #8
  br label %254

254:                                              ; preds = %251, %252, %30, %36, %24
  %255 = phi ptr [ null, %24 ], [ null, %36 ], [ null, %30 ], [ %253, %252 ], [ %31, %251 ]
  ret ptr %255
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetNextImageInList(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @SetImageStorageClass(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @InheritException(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyImage(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @IssRGBCompatibleColorspace(i32 noundef %0) unnamed_addr #3 {
  switch i32 %0, label %2 [
    i32 29, label %4
    i32 13, label %4
    i32 3, label %4
    i32 1, label %4
  ]

2:                                                ; preds = %1
  %3 = tail call fastcc i32 @IsGrayColorspace(i32 noundef %0) #9, !range !29
  br label %4

4:                                                ; preds = %2, %1, %1, %1, %1
  %5 = phi i32 [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ %3, %2 ]
  ret i32 %5
}

; Function Attrs: optsize
declare i32 @SetImageColorspace(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @SetImageBackgroundColor(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: hot optsize
declare ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: hot optsize
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

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

; Function Attrs: hot optsize
declare float @GetPixelIntensity(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: hot optsize
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @SetImageProgress(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #11
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %7 = load ptr, ptr %6, align 8, !tbaa !41
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.8, ptr noundef %1, ptr noundef nonnull %10) #8
  %12 = load ptr, ptr %6, align 8, !tbaa !41
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  %14 = load ptr, ptr %13, align 8, !tbaa !43
  %15 = call i32 %12(ptr noundef nonnull %5, i64 noundef %2, i64 noundef %3, ptr noundef %14) #8
  br label %16

16:                                               ; preds = %4, %9
  %17 = phi i32 [ %15, %9 ], [ 1, %4 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #11
  ret i32 %17
}

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
declare i32 @TransformImageColorspace(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @GetImageAlphaChannel(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 312, ptr noundef nonnull @.str.6) #8
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !30
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @SeparateImage(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 362, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #8
  br label %10

10:                                               ; preds = %7, %3
  %11 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %10
  %14 = tail call i32 @SeparateImageChannel(ptr noundef nonnull %11, i32 noundef %1) #9, !range !29
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = tail call ptr @DestroyImage(ptr noundef nonnull %11) #8
  br label %18

18:                                               ; preds = %13, %16, %10
  %19 = phi ptr [ null, %10 ], [ %17, %16 ], [ %11, %13 ]
  ret ptr %19
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @SeparateImageChannel(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 397, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #8
  br label %9

9:                                                ; preds = %6, %2
  %10 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %0, i32 noundef 1) #8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %167, label %12

12:                                               ; preds = %9
  %13 = icmp eq i32 %1, 128
  br i1 %13, label %14, label %16

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  store i32 1, ptr %15, align 8, !tbaa !30
  br label %16

16:                                               ; preds = %14, %12
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %18 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %17) #8
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %20 = load i64, ptr %19, align 8, !tbaa !25
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %160

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %26

26:                                               ; preds = %22, %154
  %27 = phi i64 [ 0, %22 ], [ %157, %154 ]
  %28 = phi i64 [ 0, %22 ], [ %156, %154 ]
  %29 = phi i32 [ 1, %22 ], [ %155, %154 ]
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %154, label %31

31:                                               ; preds = %26
  %32 = load i64, ptr %23, align 8, !tbaa !24
  %33 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %18, i64 noundef 0, i64 noundef %27, i64 noundef %32, i64 noundef 1, ptr noundef nonnull %17) #10
  %34 = icmp eq ptr %33, null
  br i1 %34, label %154, label %35

35:                                               ; preds = %31
  %36 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %18) #8
  switch i32 %1, label %142 [
    i32 1, label %52
    i32 2, label %49
    i32 4, label %46
    i32 8, label %43
    i32 32, label %92
    i32 64, label %40
    i32 128, label %37
  ]

37:                                               ; preds = %35
  %38 = load i64, ptr %23, align 8, !tbaa !24
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %131, label %142

40:                                               ; preds = %35
  %41 = load i64, ptr %23, align 8, !tbaa !24
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %120, label %142

43:                                               ; preds = %35
  %44 = load i64, ptr %23, align 8, !tbaa !24
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %82, label %142

46:                                               ; preds = %35
  %47 = load i64, ptr %23, align 8, !tbaa !24
  %48 = icmp sgt i64 %47, 0
  br i1 %48, label %73, label %142

49:                                               ; preds = %35
  %50 = load i64, ptr %23, align 8, !tbaa !24
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %64, label %142

52:                                               ; preds = %35
  %53 = load i64, ptr %23, align 8, !tbaa !24
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %142

55:                                               ; preds = %52, %55
  %56 = phi i64 [ %62, %55 ], [ 0, %52 ]
  %57 = phi ptr [ %61, %55 ], [ %33, %52 ]
  %58 = getelementptr inbounds %struct._PixelPacket, ptr %57, i64 0, i32 2
  %59 = load i16, ptr %58, align 2, !tbaa !31
  %60 = getelementptr inbounds %struct._PixelPacket, ptr %57, i64 0, i32 1
  store i16 %59, ptr %60, align 2, !tbaa !33
  store i16 %59, ptr %57, align 2, !tbaa !35
  %61 = getelementptr inbounds %struct._PixelPacket, ptr %57, i64 1
  %62 = add nuw nsw i64 %56, 1
  %63 = icmp eq i64 %62, %53
  br i1 %63, label %142, label %55, !llvm.loop !44

64:                                               ; preds = %49, %64
  %65 = phi i64 [ %71, %64 ], [ 0, %49 ]
  %66 = phi ptr [ %70, %64 ], [ %33, %49 ]
  %67 = getelementptr inbounds %struct._PixelPacket, ptr %66, i64 0, i32 1
  %68 = load i16, ptr %67, align 2, !tbaa !33
  %69 = getelementptr inbounds %struct._PixelPacket, ptr %66, i64 0, i32 2
  store i16 %68, ptr %69, align 2, !tbaa !31
  store i16 %68, ptr %66, align 2, !tbaa !35
  %70 = getelementptr inbounds %struct._PixelPacket, ptr %66, i64 1
  %71 = add nuw nsw i64 %65, 1
  %72 = icmp eq i64 %71, %50
  br i1 %72, label %142, label %64, !llvm.loop !45

73:                                               ; preds = %46, %73
  %74 = phi i64 [ %80, %73 ], [ 0, %46 ]
  %75 = phi ptr [ %79, %73 ], [ %33, %46 ]
  %76 = load i16, ptr %75, align 2, !tbaa !35
  %77 = getelementptr inbounds %struct._PixelPacket, ptr %75, i64 0, i32 2
  store i16 %76, ptr %77, align 2, !tbaa !31
  %78 = getelementptr inbounds %struct._PixelPacket, ptr %75, i64 0, i32 1
  store i16 %76, ptr %78, align 2, !tbaa !33
  %79 = getelementptr inbounds %struct._PixelPacket, ptr %75, i64 1
  %80 = add nuw nsw i64 %74, 1
  %81 = icmp eq i64 %80, %47
  br i1 %81, label %142, label %73, !llvm.loop !46

82:                                               ; preds = %43, %82
  %83 = phi i64 [ %90, %82 ], [ 0, %43 ]
  %84 = phi ptr [ %89, %82 ], [ %33, %43 ]
  %85 = getelementptr inbounds %struct._PixelPacket, ptr %84, i64 0, i32 3
  %86 = load i16, ptr %85, align 2, !tbaa !37
  %87 = getelementptr inbounds %struct._PixelPacket, ptr %84, i64 0, i32 2
  store i16 %86, ptr %87, align 2, !tbaa !31
  %88 = getelementptr inbounds %struct._PixelPacket, ptr %84, i64 0, i32 1
  store i16 %86, ptr %88, align 2, !tbaa !33
  store i16 %86, ptr %84, align 2, !tbaa !35
  %89 = getelementptr inbounds %struct._PixelPacket, ptr %84, i64 1
  %90 = add nuw nsw i64 %83, 1
  %91 = icmp eq i64 %90, %44
  br i1 %91, label %142, label %82, !llvm.loop !47

92:                                               ; preds = %35
  %93 = load i32, ptr %0, align 8, !tbaa !48
  %94 = icmp eq i32 %93, 2
  br i1 %94, label %98, label %95

95:                                               ; preds = %92
  %96 = load i32, ptr %24, align 4, !tbaa !28
  %97 = icmp eq i32 %96, 12
  br i1 %97, label %98, label %142

98:                                               ; preds = %95, %92
  %99 = load i64, ptr %23, align 8, !tbaa !24
  %100 = icmp sgt i64 %99, 0
  br i1 %100, label %101, label %142

101:                                              ; preds = %98
  %102 = icmp eq ptr %36, null
  br label %103

103:                                              ; preds = %101, %115
  %104 = phi i64 [ 0, %101 ], [ %118, %115 ]
  %105 = phi ptr [ %33, %101 ], [ %117, %115 ]
  br i1 %102, label %106, label %109

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct._PixelPacket, ptr %105, i64 0, i32 2
  store i16 0, ptr %107, align 2, !tbaa !31
  %108 = getelementptr inbounds %struct._PixelPacket, ptr %105, i64 0, i32 1
  store i16 0, ptr %108, align 2, !tbaa !33
  br label %115

109:                                              ; preds = %103
  %110 = getelementptr inbounds i16, ptr %36, i64 %104
  %111 = load i16, ptr %110, align 2, !tbaa !39
  %112 = getelementptr inbounds %struct._PixelPacket, ptr %105, i64 0, i32 2
  store i16 %111, ptr %112, align 2, !tbaa !31
  %113 = getelementptr inbounds %struct._PixelPacket, ptr %105, i64 0, i32 1
  store i16 %111, ptr %113, align 2, !tbaa !33
  %114 = load i16, ptr %110, align 2, !tbaa !39
  br label %115

115:                                              ; preds = %106, %109
  %116 = phi i16 [ %114, %109 ], [ 0, %106 ]
  store i16 %116, ptr %105, align 2, !tbaa !35
  %117 = getelementptr inbounds %struct._PixelPacket, ptr %105, i64 1
  %118 = add nuw nsw i64 %104, 1
  %119 = icmp eq i64 %118, %99
  br i1 %119, label %142, label %103, !llvm.loop !49

120:                                              ; preds = %40, %120
  %121 = phi i64 [ %129, %120 ], [ 0, %40 ]
  %122 = phi ptr [ %128, %120 ], [ %33, %40 ]
  %123 = getelementptr inbounds %struct._PixelPacket, ptr %122, i64 0, i32 3
  %124 = load i16, ptr %123, align 2, !tbaa !37
  %125 = xor i16 %124, -1
  %126 = getelementptr inbounds %struct._PixelPacket, ptr %122, i64 0, i32 2
  store i16 %125, ptr %126, align 2, !tbaa !31
  %127 = getelementptr inbounds %struct._PixelPacket, ptr %122, i64 0, i32 1
  store i16 %125, ptr %127, align 2, !tbaa !33
  store i16 %125, ptr %122, align 2, !tbaa !35
  %128 = getelementptr inbounds %struct._PixelPacket, ptr %122, i64 1
  %129 = add nuw nsw i64 %121, 1
  %130 = icmp eq i64 %129, %41
  br i1 %130, label %142, label %120, !llvm.loop !50

131:                                              ; preds = %37, %131
  %132 = phi i64 [ %139, %131 ], [ 0, %37 ]
  %133 = phi ptr [ %138, %131 ], [ %33, %37 ]
  %134 = tail call float @GetPixelIntensity(ptr noundef nonnull %0, ptr noundef nonnull %133) #10
  %135 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %134) #9
  %136 = xor i16 %135, -1
  %137 = getelementptr inbounds %struct._PixelPacket, ptr %133, i64 0, i32 3
  store i16 %136, ptr %137, align 2, !tbaa !37
  %138 = getelementptr inbounds %struct._PixelPacket, ptr %133, i64 1
  %139 = add nuw nsw i64 %132, 1
  %140 = load i64, ptr %23, align 8, !tbaa !24
  %141 = icmp slt i64 %139, %140
  br i1 %141, label %131, label %142, !llvm.loop !51

142:                                              ; preds = %131, %120, %115, %82, %73, %64, %55, %37, %40, %98, %43, %46, %49, %52, %35, %95
  %143 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %18, ptr noundef nonnull %17) #10
  %144 = icmp ne i32 %143, 0
  %145 = zext i1 %144 to i32
  %146 = load ptr, ptr %25, align 8, !tbaa !41
  %147 = icmp eq ptr %146, null
  br i1 %147, label %154, label %148

148:                                              ; preds = %142
  %149 = add nsw i64 %28, 1
  %150 = load i64, ptr %19, align 8, !tbaa !25
  %151 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.7, i64 noundef %28, i64 noundef %150) #9
  %152 = icmp eq i32 %151, 0
  %153 = select i1 %152, i32 0, i32 %145
  br label %154

154:                                              ; preds = %142, %148, %31, %26
  %155 = phi i32 [ 0, %26 ], [ 0, %31 ], [ %153, %148 ], [ %145, %142 ]
  %156 = phi i64 [ %28, %26 ], [ %28, %31 ], [ %149, %148 ], [ %28, %142 ]
  %157 = add nuw nsw i64 %27, 1
  %158 = load i64, ptr %19, align 8, !tbaa !25
  %159 = icmp slt i64 %157, %158
  br i1 %159, label %26, label %160, !llvm.loop !52

160:                                              ; preds = %154, %16
  %161 = phi i32 [ 1, %16 ], [ %155, %154 ]
  %162 = tail call ptr @DestroyCacheView(ptr noundef %18) #8
  br i1 %13, label %165, label %163

163:                                              ; preds = %160
  %164 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  store i32 0, ptr %164, align 8, !tbaa !30
  br label %165

165:                                              ; preds = %163, %160
  %166 = tail call i32 @SetImageColorspace(ptr noundef nonnull %0, i32 noundef 2) #8
  br label %167

167:                                              ; preds = %9, %165
  %168 = phi i32 [ %161, %165 ], [ 0, %9 ]
  ret i32 %168
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @SeparateImages(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 575, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #8
  br label %11

11:                                               ; preds = %8, %3
  %12 = tail call ptr @NewImageList() #8
  store ptr %12, ptr %4, align 8, !tbaa !53
  %13 = and i32 %1, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #8
  %17 = tail call i32 @SeparateImageChannel(ptr noundef %16, i32 noundef 1) #9, !range !29
  call void @AppendImageToList(ptr noundef nonnull %4, ptr noundef %16) #8
  br label %18

18:                                               ; preds = %15, %11
  %19 = and i32 %1, 2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #8
  %23 = call i32 @SeparateImageChannel(ptr noundef %22, i32 noundef 2) #9, !range !29
  call void @AppendImageToList(ptr noundef nonnull %4, ptr noundef %22) #8
  br label %24

24:                                               ; preds = %21, %18
  %25 = and i32 %1, 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #8
  %29 = call i32 @SeparateImageChannel(ptr noundef %28, i32 noundef 4) #9, !range !29
  call void @AppendImageToList(ptr noundef nonnull %4, ptr noundef %28) #8
  br label %30

30:                                               ; preds = %27, %24
  %31 = and i32 %1, 32
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %35 = load i32, ptr %34, align 4, !tbaa !28
  %36 = icmp eq i32 %35, 12
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #8
  %39 = call i32 @SeparateImageChannel(ptr noundef %38, i32 noundef 32) #9, !range !29
  call void @AppendImageToList(ptr noundef nonnull %4, ptr noundef %38) #8
  br label %40

40:                                               ; preds = %37, %33, %30
  %41 = and i32 %1, 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #8
  %45 = call i32 @SeparateImageChannel(ptr noundef %44, i32 noundef 64) #9, !range !29
  call void @AppendImageToList(ptr noundef nonnull %4, ptr noundef %44) #8
  br label %46

46:                                               ; preds = %43, %40
  %47 = load ptr, ptr %4, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  ret ptr %47
}

; Function Attrs: optsize
declare ptr @NewImageList() local_unnamed_addr #2

; Function Attrs: optsize
declare void @AppendImageToList(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @SetImageAlphaChannel(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i16, align 2
  %4 = alloca %struct._MagickPixelPacket, align 8
  %5 = alloca %struct._PixelPacket, align 4
  %6 = alloca %struct._MagickPixelPacket, align 8
  %7 = alloca i16, align 2
  %8 = alloca %struct._MagickPixelPacket, align 8
  %9 = alloca %struct._PixelPacket, align 2
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %11 = load i32, ptr %10, align 8, !tbaa !5
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 647, ptr noundef nonnull @.str.6) #8
  br label %15

15:                                               ; preds = %13, %2
  switch i32 %1, label %236 [
    i32 1, label %16
    i32 2, label %18
    i32 3, label %95
    i32 9, label %95
    i32 4, label %102
    i32 5, label %104
    i32 12, label %107
    i32 11, label %107
    i32 7, label %223
    i32 6, label %223
    i32 8, label %225
    i32 10, label %231
  ]

16:                                               ; preds = %15
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  store i32 1, ptr %17, align 8, !tbaa !30
  br label %236

18:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %20 = load i32, ptr %19, align 8, !tbaa !30
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %91, label %22

22:                                               ; preds = %18
  %23 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %0, i32 noundef 1) #8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %91, label %25

25:                                               ; preds = %22
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %4) #8
  %26 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12
  call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %26, ptr noundef nonnull %4) #9
  %27 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !28
  %29 = icmp eq i32 %28, 12
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  call fastcc void @ConvertRGBToCMYK(ptr noundef nonnull %4) #9
  br label %31

31:                                               ; preds = %30, %25
  store i16 0, ptr %3, align 2, !tbaa !39
  call fastcc void @SetPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %3) #9
  %32 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %33 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %32) #8
  %34 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %35 = load i64, ptr %34, align 8, !tbaa !25
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %92

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %39 = getelementptr inbounds %struct._PixelPacket, ptr %5, i64 0, i32 2
  %40 = load i16, ptr %39, align 4
  %41 = load <2 x i16>, ptr %5, align 4
  br label %42

42:                                               ; preds = %37, %86
  %43 = phi i32 [ 1, %37 ], [ %87, %86 ]
  %44 = phi i64 [ 0, %37 ], [ %88, %86 ]
  %45 = icmp eq i32 %43, 0
  br i1 %45, label %86, label %46

46:                                               ; preds = %42
  %47 = load i64, ptr %38, align 8, !tbaa !24
  %48 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %33, i64 noundef 0, i64 noundef %44, i64 noundef %47, i64 noundef 1, ptr noundef nonnull %32) #10
  %49 = icmp eq ptr %48, null
  br i1 %49, label %86, label %50

50:                                               ; preds = %46
  %51 = load i64, ptr %38, align 8, !tbaa !24
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %50, %61
  %54 = phi i64 [ %63, %61 ], [ 0, %50 ]
  %55 = phi ptr [ %62, %61 ], [ %48, %50 ]
  %56 = getelementptr inbounds %struct._PixelPacket, ptr %55, i64 0, i32 3
  %57 = load i16, ptr %56, align 2, !tbaa !37
  %58 = icmp eq i16 %57, -1
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct._PixelPacket, ptr %55, i64 0, i32 2
  store i16 %40, ptr %60, align 2, !tbaa !31
  store <2 x i16> %41, ptr %55, align 2, !tbaa !39
  br label %61

61:                                               ; preds = %59, %53
  %62 = getelementptr inbounds %struct._PixelPacket, ptr %55, i64 1
  %63 = add nuw nsw i64 %54, 1
  %64 = icmp eq i64 %63, %51
  br i1 %64, label %65, label %53, !llvm.loop !54

65:                                               ; preds = %61, %50
  %66 = load i32, ptr %27, align 4, !tbaa !28
  %67 = icmp eq i32 %66, 12
  br i1 %67, label %68, label %82

68:                                               ; preds = %65
  %69 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %33) #8
  %70 = load i64, ptr %38, align 8, !tbaa !24
  %71 = icmp sgt i64 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %68
  %73 = icmp eq ptr %69, null
  br label %74

74:                                               ; preds = %72, %79
  %75 = phi i64 [ 0, %72 ], [ %80, %79 ]
  br i1 %73, label %79, label %76

76:                                               ; preds = %74
  %77 = getelementptr inbounds i16, ptr %69, i64 %75
  %78 = load i16, ptr %3, align 2, !tbaa !39
  store i16 %78, ptr %77, align 2, !tbaa !39
  br label %79

79:                                               ; preds = %74, %76
  %80 = add nuw nsw i64 %75, 1
  %81 = icmp eq i64 %80, %70
  br i1 %81, label %82, label %74, !llvm.loop !55

82:                                               ; preds = %79, %68, %65
  %83 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %33, ptr noundef nonnull %32) #10
  %84 = icmp ne i32 %83, 0
  %85 = zext i1 %84 to i32
  br label %86

86:                                               ; preds = %46, %42, %82
  %87 = phi i32 [ %85, %82 ], [ 0, %42 ], [ 0, %46 ]
  %88 = add nuw nsw i64 %44, 1
  %89 = load i64, ptr %34, align 8, !tbaa !25
  %90 = icmp slt i64 %88, %89
  br i1 %90, label %42, label %92, !llvm.loop !56

91:                                               ; preds = %18, %22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #11
  br label %236

92:                                               ; preds = %86, %31
  %93 = phi i32 [ 1, %31 ], [ %87, %86 ]
  %94 = call ptr @DestroyCacheView(ptr noundef %33) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #11
  br label %239

95:                                               ; preds = %15, %15
  %96 = tail call i32 @SeparateImageChannel(ptr noundef nonnull %0, i32 noundef 128) #9, !range !29
  %97 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  store i32 1, ptr %97, align 8, !tbaa !30
  %98 = icmp eq i32 %1, 9
  br i1 %98, label %99, label %233

99:                                               ; preds = %95
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #11
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %6) #8
  %100 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12
  call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %100, ptr noundef nonnull %6) #9
  %101 = call i32 @LevelColorsImage(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef nonnull %6, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #11
  br label %233

102:                                              ; preds = %15
  %103 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  store i32 0, ptr %103, align 8, !tbaa !30
  br label %236

104:                                              ; preds = %15
  %105 = tail call i32 @SeparateImageChannel(ptr noundef nonnull %0, i32 noundef 64) #9, !range !29
  %106 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  store i32 0, ptr %106, align 8, !tbaa !30
  br label %233

107:                                              ; preds = %15, %15
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #11
  %108 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %109 = load i32, ptr %108, align 8, !tbaa !30
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %219, label %111

111:                                              ; preds = %107
  %112 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %0, i32 noundef 1) #8
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %219, label %114

114:                                              ; preds = %111
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %8) #8
  %115 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12
  call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %115, ptr noundef nonnull %8) #9
  %116 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %117 = load i32, ptr %116, align 4, !tbaa !28
  %118 = icmp eq i32 %117, 12
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  call fastcc void @ConvertRGBToCMYK(ptr noundef nonnull %8) #9
  br label %120

120:                                              ; preds = %119, %114
  store i16 0, ptr %7, align 2, !tbaa !39
  call fastcc void @SetPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %7) #9
  %121 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %122 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %121) #8
  %123 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %124 = load i64, ptr %123, align 8, !tbaa !25
  %125 = icmp sgt i64 %124, 0
  br i1 %125, label %126, label %220

126:                                              ; preds = %120
  %127 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %128 = getelementptr inbounds %struct._PixelPacket, ptr %9, i64 0, i32 3
  %129 = load i16, ptr %128, align 2
  %130 = uitofp i16 %129 to double
  %131 = getelementptr inbounds %struct._PixelPacket, ptr %9, i64 0, i32 2
  %132 = load i16, ptr %131, align 2
  %133 = uitofp i16 %132 to float
  %134 = uitofp i16 %129 to float
  %135 = getelementptr inbounds %struct._PixelPacket, ptr %9, i64 0, i32 1
  %136 = load i16, ptr %135, align 2
  %137 = uitofp i16 %136 to float
  %138 = load i16, ptr %9, align 2
  %139 = uitofp i16 %138 to float
  br label %140

140:                                              ; preds = %126, %214
  %141 = phi i64 [ 0, %126 ], [ %216, %214 ]
  %142 = phi i32 [ 1, %126 ], [ %215, %214 ]
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %214, label %144

144:                                              ; preds = %140
  %145 = load i64, ptr %127, align 8, !tbaa !24
  %146 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %122, i64 noundef 0, i64 noundef %141, i64 noundef %145, i64 noundef 1, ptr noundef nonnull %121) #10
  %147 = icmp eq ptr %146, null
  br i1 %147, label %214, label %148

148:                                              ; preds = %144
  %149 = load i64, ptr %127, align 8, !tbaa !24
  %150 = icmp sgt i64 %149, 0
  br i1 %150, label %151, label %193

151:                                              ; preds = %148, %151
  %152 = phi i64 [ %191, %151 ], [ 0, %148 ]
  %153 = phi ptr [ %190, %151 ], [ %146, %148 ]
  %154 = getelementptr inbounds %struct._PixelPacket, ptr %153, i64 0, i32 3
  %155 = load i16, ptr %154, align 2, !tbaa !37
  %156 = uitofp i16 %155 to double
  %157 = fmul double %156, 0xBDF0002000300040
  %158 = call double @llvm.fmuladd.f64(double %157, double %130, double 1.000000e+00)
  %159 = fcmp olt double %158, 0.000000e+00
  %160 = select i1 %159, double 0.000000e+00, double %158
  %161 = fsub double 1.000000e+00, %160
  %162 = fmul double %161, 6.553500e+04
  %163 = call fastcc double @PerceptibleReciprocal(double noundef %160) #9
  %164 = getelementptr inbounds %struct._PixelPacket, ptr %153, i64 0, i32 2
  %165 = load i16, ptr %164, align 2, !tbaa !31
  %166 = uitofp i16 %165 to float
  %167 = uitofp i16 %155 to float
  %168 = call fastcc float @MagickOver_(float noundef %166, float noundef %167, float noundef %133, float noundef %134) #9
  %169 = fpext float %168 to double
  %170 = fmul double %163, %169
  %171 = fptrunc double %170 to float
  %172 = call fastcc zeroext i16 @ClampToQuantum(float noundef %171) #9
  store i16 %172, ptr %164, align 2, !tbaa !31
  %173 = getelementptr inbounds %struct._PixelPacket, ptr %153, i64 0, i32 1
  %174 = load i16, ptr %173, align 2, !tbaa !33
  %175 = uitofp i16 %174 to float
  %176 = call fastcc float @MagickOver_(float noundef %175, float noundef %167, float noundef %137, float noundef %134) #9
  %177 = fpext float %176 to double
  %178 = fmul double %163, %177
  %179 = fptrunc double %178 to float
  %180 = call fastcc zeroext i16 @ClampToQuantum(float noundef %179) #9
  store i16 %180, ptr %173, align 2, !tbaa !33
  %181 = load i16, ptr %153, align 2, !tbaa !35
  %182 = uitofp i16 %181 to float
  %183 = call fastcc float @MagickOver_(float noundef %182, float noundef %167, float noundef %139, float noundef %134) #9
  %184 = fpext float %183 to double
  %185 = fmul double %163, %184
  %186 = fptrunc double %185 to float
  %187 = call fastcc zeroext i16 @ClampToQuantum(float noundef %186) #9
  store i16 %187, ptr %153, align 2, !tbaa !35
  %188 = fptrunc double %162 to float
  %189 = call fastcc zeroext i16 @ClampToQuantum(float noundef %188) #9
  store i16 %189, ptr %154, align 2, !tbaa !37
  %190 = getelementptr inbounds %struct._PixelPacket, ptr %153, i64 1
  %191 = add nuw nsw i64 %152, 1
  %192 = icmp eq i64 %191, %149
  br i1 %192, label %193, label %151, !llvm.loop !57

193:                                              ; preds = %151, %148
  %194 = load i32, ptr %116, align 4, !tbaa !28
  %195 = icmp eq i32 %194, 12
  br i1 %195, label %196, label %210

196:                                              ; preds = %193
  %197 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %122) #8
  %198 = load i64, ptr %127, align 8, !tbaa !24
  %199 = icmp sgt i64 %198, 0
  br i1 %199, label %200, label %210

200:                                              ; preds = %196
  %201 = icmp eq ptr %197, null
  br label %202

202:                                              ; preds = %200, %207
  %203 = phi i64 [ 0, %200 ], [ %208, %207 ]
  br i1 %201, label %207, label %204

204:                                              ; preds = %202
  %205 = getelementptr inbounds i16, ptr %197, i64 %203
  %206 = load i16, ptr %7, align 2, !tbaa !39
  store i16 %206, ptr %205, align 2, !tbaa !39
  br label %207

207:                                              ; preds = %202, %204
  %208 = add nuw nsw i64 %203, 1
  %209 = icmp eq i64 %208, %198
  br i1 %209, label %210, label %202, !llvm.loop !58

210:                                              ; preds = %207, %196, %193
  %211 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %122, ptr noundef nonnull %121) #10
  %212 = icmp ne i32 %211, 0
  %213 = zext i1 %212 to i32
  br label %214

214:                                              ; preds = %144, %140, %210
  %215 = phi i32 [ %213, %210 ], [ 0, %140 ], [ 0, %144 ]
  %216 = add nuw nsw i64 %141, 1
  %217 = load i64, ptr %123, align 8, !tbaa !25
  %218 = icmp slt i64 %216, %217
  br i1 %218, label %140, label %220, !llvm.loop !59

219:                                              ; preds = %107, %111
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #11
  br label %236

220:                                              ; preds = %214, %120
  %221 = phi i32 [ 1, %120 ], [ %215, %214 ]
  %222 = call ptr @DestroyCacheView(ptr noundef %122) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #11
  br label %239

223:                                              ; preds = %15, %15
  %224 = tail call i32 @SetImageOpacity(ptr noundef nonnull %0, i16 noundef zeroext 0) #8
  br label %233

225:                                              ; preds = %15
  %226 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %227 = load i32, ptr %226, align 8, !tbaa !30
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %236

229:                                              ; preds = %225
  %230 = tail call i32 @SetImageOpacity(ptr noundef nonnull %0, i16 noundef zeroext 0) #8
  br label %233

231:                                              ; preds = %15
  %232 = tail call i32 @SetImageOpacity(ptr noundef nonnull %0, i16 noundef zeroext -1) #8
  br label %233

233:                                              ; preds = %229, %95, %99, %231, %223, %104
  %234 = phi i32 [ %232, %231 ], [ %230, %229 ], [ %224, %223 ], [ %105, %104 ], [ %96, %99 ], [ %96, %95 ]
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %239, label %236

236:                                              ; preds = %219, %91, %16, %102, %225, %15, %233
  %237 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %238 = call i32 @SyncImagePixelCache(ptr noundef nonnull %0, ptr noundef nonnull %237) #8
  br label %239

239:                                              ; preds = %220, %92, %233, %236
  %240 = phi i32 [ %238, %236 ], [ %221, %220 ], [ %93, %92 ], [ 0, %233 ]
  ret i32 %240
}

; Function Attrs: optsize
declare void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @SetMagickPixelPacket(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #5 {
  %3 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %4 = load <4 x i16>, ptr %0, align 2, !tbaa !39
  %5 = uitofp <4 x i16> %4 to <4 x float>
  %6 = shufflevector <4 x float> %5, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  store <4 x float> %6, ptr %3, align 8, !tbaa !60
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ConvertRGBToCMYK(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !62
  %4 = icmp eq i32 %3, 13
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %6 = load float, ptr %5, align 8, !tbaa !64
  br i1 %4, label %20, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %9 = load float, ptr %8, align 4, !tbaa !65
  %10 = insertelement <2 x float> poison, float %6, i64 0
  %11 = insertelement <2 x float> %10, float %9, i64 1
  %12 = fpext <2 x float> %11 to <2 x double>
  %13 = fmul <2 x double> %12, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  %14 = fptrunc <2 x double> %13 to <2 x float>
  %15 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %16 = load float, ptr %15, align 8, !tbaa !66
  %17 = fpext float %16 to double
  %18 = fmul double %17, 0x3EF0001000100010
  %19 = fptrunc double %18 to float
  br label %30

20:                                               ; preds = %1
  %21 = tail call float @DecodePixelGamma(float noundef %6) #10
  %22 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %23 = load float, ptr %22, align 4, !tbaa !65
  %24 = tail call float @DecodePixelGamma(float noundef %23) #10
  %25 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %26 = load float, ptr %25, align 8, !tbaa !66
  %27 = tail call float @DecodePixelGamma(float noundef %26) #10
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
  store i32 12, ptr %2, align 4, !tbaa !62
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
  store float %71, ptr %72, align 8, !tbaa !66
  %73 = fmul float %54, 6.553500e+04
  br label %74

74:                                               ; preds = %42, %46
  %75 = phi float [ %73, %46 ], [ 6.553500e+04, %42 ]
  %76 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  store float %75, ptr %76, align 8, !tbaa !67
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @SetPixelPacket(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr noundef writeonly %3) unnamed_addr #5 {
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %6 = load float, ptr %5, align 8, !tbaa !64
  %7 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %6) #9
  %8 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 2
  store i16 %7, ptr %8, align 2, !tbaa !31
  %9 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %10 = load float, ptr %9, align 4, !tbaa !65
  %11 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %10) #9
  %12 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 1
  store i16 %11, ptr %12, align 2, !tbaa !33
  %13 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %14 = load float, ptr %13, align 8, !tbaa !66
  %15 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %14) #9
  store i16 %15, ptr %2, align 2, !tbaa !35
  %16 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %17 = load float, ptr %16, align 4, !tbaa !68
  %18 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %17) #9
  %19 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 3
  store i16 %18, ptr %19, align 2, !tbaa !37
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !28
  %22 = icmp eq i32 %21, 12
  br i1 %22, label %28, label %23

23:                                               ; preds = %4
  %24 = load i32, ptr %0, align 8, !tbaa !48
  %25 = icmp eq i32 %24, 2
  %26 = icmp ne ptr %3, null
  %27 = and i1 %26, %25
  br i1 %27, label %30, label %34

28:                                               ; preds = %4
  %29 = icmp eq ptr %3, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %23, %28
  %31 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %32 = load float, ptr %31, align 8, !tbaa !67
  %33 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %32) #9
  store i16 %33, ptr %3, align 2, !tbaa !39
  br label %34

34:                                               ; preds = %28, %30, %23
  ret void
}

; Function Attrs: optsize
declare i32 @LevelColorsImage(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

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

; Function Attrs: optsize
declare i32 @SetImageOpacity(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden i32 @SyncImagePixelCache(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: hot optsize
declare float @DecodePixelGamma(float noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { hot optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }
attributes #10 = { hot nounwind optsize }
attributes #11 = { nounwind }

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
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!6, !7, i64 4}
!29 = !{i32 0, i32 2}
!30 = !{!6, !7, i64 32}
!31 = !{!12, !13, i64 4}
!32 = distinct !{!32, !27}
!33 = !{!12, !13, i64 2}
!34 = distinct !{!34, !27}
!35 = !{!12, !13, i64 0}
!36 = distinct !{!36, !27}
!37 = !{!12, !13, i64 6}
!38 = distinct !{!38, !27}
!39 = !{!13, !13, i64 0}
!40 = distinct !{!40, !27}
!41 = !{!6, !11, i64 568}
!42 = distinct !{!42, !27}
!43 = !{!6, !11, i64 576}
!44 = distinct !{!44, !27}
!45 = distinct !{!45, !27}
!46 = distinct !{!46, !27}
!47 = distinct !{!47, !27}
!48 = !{!6, !7, i64 0}
!49 = distinct !{!49, !27}
!50 = distinct !{!50, !27}
!51 = distinct !{!51, !27}
!52 = distinct !{!52, !27}
!53 = !{!11, !11, i64 0}
!54 = distinct !{!54, !27}
!55 = distinct !{!55, !27}
!56 = distinct !{!56, !27}
!57 = distinct !{!57, !27}
!58 = distinct !{!58, !27}
!59 = distinct !{!59, !27}
!60 = !{!61, !61, i64 0}
!61 = !{!"float", !8, i64 0}
!62 = !{!63, !7, i64 4}
!63 = !{!"_MagickPixelPacket", !7, i64 0, !7, i64 4, !7, i64 8, !14, i64 16, !10, i64 24, !61, i64 32, !61, i64 36, !61, i64 40, !61, i64 44, !61, i64 48}
!64 = !{!63, !61, i64 32}
!65 = !{!63, !61, i64 36}
!66 = !{!63, !61, i64 40}
!67 = !{!63, !61, i64 48}
!68 = !{!63, !61, i64 44}
