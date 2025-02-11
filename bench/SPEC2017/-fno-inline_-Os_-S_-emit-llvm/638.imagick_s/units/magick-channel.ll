; ModuleID = 'magick/channel.c'
source_filename = "magick/channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }
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
@.str.6 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@.gomp_critical_user_MagickCore_SeparateImageChannel.var = common global [8 x i32] zeroinitializer, align 8
@.str.8 = private unnamed_addr constant [15 x i8] c"Separate/Image\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CombineImages(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 122, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #11
  br label %10

10:                                               ; preds = %3, %7
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  br label %13

13:                                               ; preds = %10, %27
  %14 = phi ptr [ %0, %10 ], [ %28, %27 ]
  %15 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 7
  %16 = load i64, ptr %15, align 8, !tbaa !25
  %17 = load i64, ptr %11, align 8, !tbaa !25
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 8
  %21 = load i64, ptr %20, align 8, !tbaa !26
  %22 = load i64, ptr %12, align 8, !tbaa !26
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %27, label %24

24:                                               ; preds = %19, %13
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %26 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 128, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %25) #11
  br label %254

27:                                               ; preds = %19
  %28 = tail call ptr @GetNextImageInList(ptr noundef nonnull %14) #11
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %13, !llvm.loop !27

30:                                               ; preds = %27
  %31 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #11
  %32 = icmp eq ptr %31, null
  br i1 %32, label %254, label %33

33:                                               ; preds = %30
  %34 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %31, i32 noundef 1) #11
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct._Image, ptr %31, i64 0, i32 58
  tail call void @InheritException(ptr noundef %2, ptr noundef nonnull %37) #11
  %38 = tail call ptr @DestroyImage(ptr noundef nonnull %31) #11
  br label %254

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %41 = load i32, ptr %40, align 4, !tbaa !29
  %42 = tail call fastcc i32 @IssRGBCompatibleColorspace(i32 noundef %41) #12, !range !30
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %39
  %45 = tail call i32 @SetImageColorspace(ptr noundef nonnull %31, i32 noundef 13) #11
  br label %46

46:                                               ; preds = %44, %39
  %47 = and i32 %1, 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct._Image, ptr %31, i64 0, i32 6
  store i32 1, ptr %50, align 8, !tbaa !31
  br label %51

51:                                               ; preds = %49, %46
  %52 = tail call i32 @SetImageBackgroundColor(ptr noundef nonnull %31) #11
  %53 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %31, ptr noundef %2) #11
  %54 = getelementptr inbounds %struct._Image, ptr %31, i64 0, i32 8
  %55 = load i64, ptr %54, align 8, !tbaa !26
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
  %75 = load i64, ptr %58, align 8, !tbaa !25
  %76 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %53, i64 noundef 0, i64 noundef %70, i64 noundef %75, i64 noundef 1, ptr noundef %2) #13
  %77 = icmp eq ptr %76, null
  br i1 %77, label %234, label %78

78:                                               ; preds = %74
  br i1 %60, label %102, label %79

79:                                               ; preds = %78
  %80 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %2) #11
  %81 = load i64, ptr %61, align 8, !tbaa !25
  %82 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %80, i64 noundef 0, i64 noundef %70, i64 noundef %81, i64 noundef 1, ptr noundef %2) #13
  %83 = icmp eq ptr %82, null
  br i1 %83, label %234, label %84

84:                                               ; preds = %79
  %85 = load i64, ptr %58, align 8, !tbaa !25
  %86 = icmp sgt i64 %85, 0
  br i1 %86, label %87, label %99

87:                                               ; preds = %84, %87
  %88 = phi i64 [ %96, %87 ], [ 0, %84 ]
  %89 = phi ptr [ %95, %87 ], [ %76, %84 ]
  %90 = phi ptr [ %94, %87 ], [ %82, %84 ]
  %91 = tail call float @GetPixelIntensity(ptr noundef nonnull %0, ptr noundef nonnull %90) #13
  %92 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %91) #12
  %93 = getelementptr inbounds %struct._PixelPacket, ptr %89, i64 0, i32 2
  store i16 %92, ptr %93, align 2, !tbaa !32
  %94 = getelementptr inbounds %struct._PixelPacket, ptr %90, i64 1
  %95 = getelementptr inbounds %struct._PixelPacket, ptr %89, i64 1
  %96 = add nuw nsw i64 %88, 1
  %97 = load i64, ptr %58, align 8, !tbaa !25
  %98 = icmp slt i64 %96, %97
  br i1 %98, label %87, label %99, !llvm.loop !33

99:                                               ; preds = %87, %84
  %100 = tail call ptr @DestroyCacheView(ptr noundef %80) #11
  %101 = tail call ptr @GetNextImageInList(ptr noundef nonnull %0) #11
  br label %102

102:                                              ; preds = %99, %78
  %103 = phi ptr [ %101, %99 ], [ %0, %78 ]
  %104 = icmp ne ptr %103, null
  %105 = select i1 %63, i1 %104, i1 false
  br i1 %105, label %106, label %130

106:                                              ; preds = %102
  %107 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %103, ptr noundef %2) #11
  %108 = getelementptr inbounds %struct._Image, ptr %103, i64 0, i32 7
  %109 = load i64, ptr %108, align 8, !tbaa !25
  %110 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %107, i64 noundef 0, i64 noundef %70, i64 noundef %109, i64 noundef 1, ptr noundef %2) #13
  %111 = icmp eq ptr %110, null
  br i1 %111, label %234, label %112

112:                                              ; preds = %106
  %113 = load i64, ptr %58, align 8, !tbaa !25
  %114 = icmp sgt i64 %113, 0
  br i1 %114, label %115, label %127

115:                                              ; preds = %112, %115
  %116 = phi i64 [ %124, %115 ], [ 0, %112 ]
  %117 = phi ptr [ %123, %115 ], [ %76, %112 ]
  %118 = phi ptr [ %122, %115 ], [ %110, %112 ]
  %119 = tail call float @GetPixelIntensity(ptr noundef %0, ptr noundef nonnull %118) #13
  %120 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %119) #12
  %121 = getelementptr inbounds %struct._PixelPacket, ptr %117, i64 0, i32 1
  store i16 %120, ptr %121, align 2, !tbaa !34
  %122 = getelementptr inbounds %struct._PixelPacket, ptr %118, i64 1
  %123 = getelementptr inbounds %struct._PixelPacket, ptr %117, i64 1
  %124 = add nuw nsw i64 %116, 1
  %125 = load i64, ptr %58, align 8, !tbaa !25
  %126 = icmp slt i64 %124, %125
  br i1 %126, label %115, label %127, !llvm.loop !35

127:                                              ; preds = %115, %112
  %128 = tail call ptr @DestroyCacheView(ptr noundef %107) #11
  %129 = tail call ptr @GetNextImageInList(ptr noundef nonnull %103) #11
  br label %130

130:                                              ; preds = %127, %102
  %131 = phi ptr [ %129, %127 ], [ %103, %102 ]
  %132 = icmp ne ptr %131, null
  %133 = select i1 %65, i1 %132, i1 false
  br i1 %133, label %134, label %157

134:                                              ; preds = %130
  %135 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %131, ptr noundef %2) #11
  %136 = getelementptr inbounds %struct._Image, ptr %131, i64 0, i32 7
  %137 = load i64, ptr %136, align 8, !tbaa !25
  %138 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %135, i64 noundef 0, i64 noundef %70, i64 noundef %137, i64 noundef 1, ptr noundef %2) #13
  %139 = icmp eq ptr %138, null
  br i1 %139, label %234, label %140

140:                                              ; preds = %134
  %141 = load i64, ptr %58, align 8, !tbaa !25
  %142 = icmp sgt i64 %141, 0
  br i1 %142, label %143, label %154

143:                                              ; preds = %140, %143
  %144 = phi i64 [ %151, %143 ], [ 0, %140 ]
  %145 = phi ptr [ %150, %143 ], [ %76, %140 ]
  %146 = phi ptr [ %149, %143 ], [ %138, %140 ]
  %147 = tail call float @GetPixelIntensity(ptr noundef %0, ptr noundef nonnull %146) #13
  %148 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %147) #12
  store i16 %148, ptr %145, align 2, !tbaa !36
  %149 = getelementptr inbounds %struct._PixelPacket, ptr %146, i64 1
  %150 = getelementptr inbounds %struct._PixelPacket, ptr %145, i64 1
  %151 = add nuw nsw i64 %144, 1
  %152 = load i64, ptr %58, align 8, !tbaa !25
  %153 = icmp slt i64 %151, %152
  br i1 %153, label %143, label %154, !llvm.loop !37

154:                                              ; preds = %143, %140
  %155 = tail call ptr @DestroyCacheView(ptr noundef %135) #11
  %156 = tail call ptr @GetNextImageInList(ptr noundef nonnull %131) #11
  br label %157

157:                                              ; preds = %154, %130
  %158 = phi ptr [ %156, %154 ], [ %131, %130 ]
  %159 = icmp ne ptr %158, null
  %160 = select i1 %48, i1 %159, i1 false
  br i1 %160, label %161, label %186

161:                                              ; preds = %157
  %162 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %158, ptr noundef %2) #11
  %163 = getelementptr inbounds %struct._Image, ptr %158, i64 0, i32 7
  %164 = load i64, ptr %163, align 8, !tbaa !25
  %165 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %162, i64 noundef 0, i64 noundef %70, i64 noundef %164, i64 noundef 1, ptr noundef %2) #13
  %166 = icmp eq ptr %165, null
  br i1 %166, label %234, label %167

167:                                              ; preds = %161
  %168 = load i64, ptr %58, align 8, !tbaa !25
  %169 = icmp sgt i64 %168, 0
  br i1 %169, label %170, label %183

170:                                              ; preds = %167, %170
  %171 = phi i64 [ %180, %170 ], [ 0, %167 ]
  %172 = phi ptr [ %179, %170 ], [ %76, %167 ]
  %173 = phi ptr [ %178, %170 ], [ %165, %167 ]
  %174 = tail call float @GetPixelIntensity(ptr noundef %0, ptr noundef nonnull %173) #13
  %175 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %174) #12
  %176 = xor i16 %175, -1
  %177 = getelementptr inbounds %struct._PixelPacket, ptr %172, i64 0, i32 3
  store i16 %176, ptr %177, align 2, !tbaa !38
  %178 = getelementptr inbounds %struct._PixelPacket, ptr %173, i64 1
  %179 = getelementptr inbounds %struct._PixelPacket, ptr %172, i64 1
  %180 = add nuw nsw i64 %171, 1
  %181 = load i64, ptr %58, align 8, !tbaa !25
  %182 = icmp slt i64 %180, %181
  br i1 %182, label %170, label %183, !llvm.loop !39

183:                                              ; preds = %170, %167
  %184 = tail call ptr @DestroyCacheView(ptr noundef %162) #11
  %185 = tail call ptr @GetNextImageInList(ptr noundef nonnull %158) #11
  br label %186

186:                                              ; preds = %183, %157
  %187 = phi ptr [ %185, %183 ], [ %158, %157 ]
  br i1 %67, label %222, label %188

188:                                              ; preds = %186
  %189 = load i32, ptr %40, align 4, !tbaa !29
  %190 = icmp eq i32 %189, 12
  %191 = icmp ne ptr %187, null
  %192 = select i1 %190, i1 %191, i1 false
  br i1 %192, label %193, label %222

193:                                              ; preds = %188
  %194 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %187, ptr noundef %2) #11
  %195 = getelementptr inbounds %struct._Image, ptr %187, i64 0, i32 7
  %196 = load i64, ptr %195, align 8, !tbaa !25
  %197 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %194, i64 noundef 0, i64 noundef %70, i64 noundef %196, i64 noundef 1, ptr noundef %2) #13
  %198 = icmp eq ptr %197, null
  br i1 %198, label %234, label %199

199:                                              ; preds = %193
  %200 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %53) #11
  %201 = load i64, ptr %58, align 8, !tbaa !25
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
  %211 = tail call float @GetPixelIntensity(ptr noundef %0, ptr noundef nonnull %208) #13
  %212 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %211) #12
  store i16 %212, ptr %210, align 2, !tbaa !40
  %213 = load i64, ptr %58, align 8, !tbaa !25
  br label %214

214:                                              ; preds = %209, %205
  %215 = phi i64 [ %213, %209 ], [ %206, %205 ]
  %216 = getelementptr inbounds %struct._PixelPacket, ptr %208, i64 1
  %217 = add nuw nsw i64 %207, 1
  %218 = icmp slt i64 %217, %215
  br i1 %218, label %205, label %219, !llvm.loop !41

219:                                              ; preds = %214, %199
  %220 = tail call ptr @DestroyCacheView(ptr noundef %194) #11
  %221 = tail call ptr @GetNextImageInList(ptr noundef nonnull %187) #11
  br label %222

222:                                              ; preds = %219, %188, %186
  %223 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %53, ptr noundef %2) #13
  %224 = icmp ne i32 %223, 0
  %225 = zext i1 %224 to i32
  %226 = load ptr, ptr %68, align 8, !tbaa !42
  %227 = icmp eq ptr %226, null
  br i1 %227, label %234, label %228

228:                                              ; preds = %222
  %229 = add nsw i64 %71, 1
  %230 = load i64, ptr %54, align 8, !tbaa !26
  %231 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, i64 noundef %71, i64 noundef %230) #12
  %232 = icmp eq i32 %231, 0
  %233 = select i1 %232, i32 0, i32 %225
  br label %234

234:                                              ; preds = %193, %222, %228, %161, %134, %106, %79, %74, %69
  %235 = phi i32 [ 0, %69 ], [ 0, %74 ], [ 1, %79 ], [ 1, %106 ], [ 1, %134 ], [ 1, %161 ], [ %233, %228 ], [ %225, %222 ], [ 1, %193 ]
  %236 = phi i64 [ %71, %69 ], [ %71, %74 ], [ %71, %79 ], [ %71, %106 ], [ %71, %134 ], [ %71, %161 ], [ %229, %228 ], [ %71, %222 ], [ %71, %193 ]
  %237 = add nuw nsw i64 %70, 1
  %238 = load i64, ptr %54, align 8, !tbaa !26
  %239 = icmp slt i64 %237, %238
  br i1 %239, label %69, label %240, !llvm.loop !43

240:                                              ; preds = %234
  %241 = icmp eq i32 %235, 0
  br label %242

242:                                              ; preds = %240, %51
  %243 = phi i1 [ false, %51 ], [ %241, %240 ]
  %244 = tail call ptr @DestroyCacheView(ptr noundef %53) #11
  %245 = getelementptr inbounds %struct._Image, ptr %31, i64 0, i32 1
  %246 = load i32, ptr %245, align 4, !tbaa !29
  %247 = tail call fastcc i32 @IsGrayColorspace(i32 noundef %246) #12, !range !30
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %251, label %249

249:                                              ; preds = %242
  %250 = tail call i32 @TransformImageColorspace(ptr noundef nonnull %31, i32 noundef 13) #11
  br label %251

251:                                              ; preds = %249, %242
  br i1 %243, label %252, label %254

252:                                              ; preds = %251
  %253 = tail call ptr @DestroyImage(ptr noundef nonnull %31) #11
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
  %3 = tail call fastcc i32 @IsGrayColorspace(i32 noundef %0) #12, !range !30
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
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #6
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %7 = load ptr, ptr %6, align 8, !tbaa !42
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.6, ptr noundef %1, ptr noundef nonnull %10) #11
  %12 = load ptr, ptr %6, align 8, !tbaa !42
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  %15 = call i32 %12(ptr noundef nonnull %5, i64 noundef %2, i64 noundef %3, ptr noundef %14) #11
  br label %16

16:                                               ; preds = %4, %9
  %17 = phi i32 [ %15, %9 ], [ 1, %4 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #6
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

; Function Attrs: optsize
declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @GetImageAlphaChannel(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !6
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 312, ptr noundef nonnull @.str.7) #11
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !31
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @SeparateImage(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 362, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #11
  br label %10

10:                                               ; preds = %7, %3
  %11 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #11
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %10
  %14 = tail call i32 @SeparateImageChannel(ptr noundef nonnull %11, i32 noundef %1) #12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = tail call ptr @DestroyImage(ptr noundef nonnull %11) #11
  br label %18

18:                                               ; preds = %13, %16, %10
  %19 = phi ptr [ null, %10 ], [ %17, %16 ], [ %11, %13 ]
  ret ptr %19
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @SeparateImageChannel(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %3, align 8, !tbaa !45
  store i32 %1, ptr %4, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #6
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %11 = load i32, ptr %10, align 8, !tbaa !6
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %15 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 397, ptr noundef nonnull @.str.2, ptr noundef nonnull %14) #11
  br label %16

16:                                               ; preds = %13, %2
  %17 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %0, i32 noundef 1) #11
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %56, label %19

19:                                               ; preds = %16
  %20 = icmp eq i32 %1, 128
  br i1 %20, label %21, label %23

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  store i32 1, ptr %22, align 8, !tbaa !31
  br label %23

23:                                               ; preds = %21, %19
  store i32 1, ptr %7, align 4, !tbaa !46
  store i64 0, ptr %8, align 8, !tbaa !47
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  store ptr %24, ptr %6, align 8, !tbaa !45
  %25 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %24) #11
  store ptr %25, ptr %5, align 8, !tbaa !45
  %26 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %27 = load i64, ptr %26, align 8, !tbaa !26
  %28 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #11
  %29 = shl i64 %28, 5
  %30 = icmp ugt i64 %27, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %23
  %32 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #11
  %33 = icmp eq i32 %32, 3
  br i1 %33, label %39, label %34

34:                                               ; preds = %31
  %35 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #11
  %36 = icmp eq i32 %35, 3
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #11
  br label %43

39:                                               ; preds = %34, %31, %23
  %40 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #11
  %41 = icmp ult i64 %40, 2
  %42 = select i1 %41, i64 1, i64 2
  br label %43

43:                                               ; preds = %39, %37
  %44 = phi i64 [ %38, %37 ], [ %42, %39 ]
  %45 = trunc i64 %44 to i32
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %9, i32 %45)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 6, ptr nonnull @SeparateImageChannel.omp_outlined, ptr nonnull %3, ptr nonnull %7, ptr nonnull %5, ptr nonnull %6, ptr nonnull %4, ptr nonnull %8)
  %46 = load ptr, ptr %5, align 8, !tbaa !45
  %47 = call ptr @DestroyCacheView(ptr noundef %46) #11
  store ptr %47, ptr %5, align 8, !tbaa !45
  %48 = load i32, ptr %4, align 4, !tbaa !46
  %49 = icmp eq i32 %48, 128
  %50 = load ptr, ptr %3, align 8, !tbaa !45
  br i1 %49, label %53, label %51

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct._Image, ptr %50, i64 0, i32 6
  store i32 0, ptr %52, align 8, !tbaa !31
  br label %53

53:                                               ; preds = %51, %43
  %54 = call i32 @SetImageColorspace(ptr noundef %50, i32 noundef 2) #11
  %55 = load i32, ptr %7, align 4, !tbaa !46
  br label %56

56:                                               ; preds = %16, %53
  %57 = phi i32 [ %55, %53 ], [ 0, %16 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  ret i32 %57
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @SeparateImageChannel.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %6, ptr nocapture noundef nonnull align 8 dereferenceable(8) %7) #5 {
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = load ptr, ptr %2, align 8, !tbaa !45
  %14 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 8
  %15 = load i64, ptr %14, align 8, !tbaa !26
  %16 = add nsw i64 %15, -1
  %17 = icmp sgt i64 %15, 0
  br i1 %17, label %18, label %202

18:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #6
  store i64 0, ptr %9, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #6
  store i64 %16, ptr %10, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #6
  store i64 1, ptr %11, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #6
  store i32 0, ptr %12, align 4, !tbaa !46
  %19 = load i32, ptr %0, align 4, !tbaa !46
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %19, i32 33, ptr nonnull %12, ptr nonnull %9, ptr nonnull %10, ptr nonnull %11, i64 1, i64 4)
  %20 = load i64, ptr %10, align 8
  %21 = call i64 @llvm.smin.i64(i64 %20, i64 %16)
  store i64 %21, ptr %10, align 8, !tbaa !48
  %22 = load i64, ptr %9, align 8, !tbaa !48
  %23 = icmp sgt i64 %22, %21
  br i1 %23, label %201, label %24

24:                                               ; preds = %18, %193
  %25 = phi i64 [ %199, %193 ], [ %21, %18 ]
  %26 = phi i64 [ %197, %193 ], [ %22, %18 ]
  %27 = icmp sgt i64 %26, %25
  br i1 %27, label %193, label %28

28:                                               ; preds = %24, %187
  %29 = phi i64 [ %188, %187 ], [ %26, %24 ]
  %30 = load i32, ptr %3, align 4, !tbaa !46
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %187, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %4, align 8, !tbaa !45
  %34 = load ptr, ptr %2, align 8, !tbaa !45
  %35 = getelementptr inbounds %struct._Image, ptr %34, i64 0, i32 7
  %36 = load i64, ptr %35, align 8, !tbaa !25
  %37 = load ptr, ptr %5, align 8, !tbaa !45
  %38 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %33, i64 noundef 0, i64 noundef %29, i64 noundef %36, i64 noundef 1, ptr noundef %37) #13
  %39 = icmp eq ptr %38, null
  br i1 %39, label %186, label %40

40:                                               ; preds = %32
  %41 = load ptr, ptr %4, align 8, !tbaa !45
  %42 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %41) #11
  %43 = load i32, ptr %6, align 4, !tbaa !46
  switch i32 %43, label %167 [
    i32 1, label %69
    i32 2, label %64
    i32 4, label %59
    i32 8, label %54
    i32 32, label %111
    i32 64, label %49
    i32 128, label %44
  ]

44:                                               ; preds = %40
  %45 = load ptr, ptr %2, align 8, !tbaa !45
  %46 = getelementptr inbounds %struct._Image, ptr %45, i64 0, i32 7
  %47 = load i64, ptr %46, align 8, !tbaa !25
  %48 = icmp sgt i64 %47, 0
  br i1 %48, label %153, label %167

49:                                               ; preds = %40
  %50 = load ptr, ptr %2, align 8, !tbaa !45
  %51 = getelementptr inbounds %struct._Image, ptr %50, i64 0, i32 7
  %52 = load i64, ptr %51, align 8, !tbaa !25
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %142, label %167

54:                                               ; preds = %40
  %55 = load ptr, ptr %2, align 8, !tbaa !45
  %56 = getelementptr inbounds %struct._Image, ptr %55, i64 0, i32 7
  %57 = load i64, ptr %56, align 8, !tbaa !25
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %101, label %167

59:                                               ; preds = %40
  %60 = load ptr, ptr %2, align 8, !tbaa !45
  %61 = getelementptr inbounds %struct._Image, ptr %60, i64 0, i32 7
  %62 = load i64, ptr %61, align 8, !tbaa !25
  %63 = icmp sgt i64 %62, 0
  br i1 %63, label %92, label %167

64:                                               ; preds = %40
  %65 = load ptr, ptr %2, align 8, !tbaa !45
  %66 = getelementptr inbounds %struct._Image, ptr %65, i64 0, i32 7
  %67 = load i64, ptr %66, align 8, !tbaa !25
  %68 = icmp sgt i64 %67, 0
  br i1 %68, label %83, label %167

69:                                               ; preds = %40
  %70 = load ptr, ptr %2, align 8, !tbaa !45
  %71 = getelementptr inbounds %struct._Image, ptr %70, i64 0, i32 7
  %72 = load i64, ptr %71, align 8, !tbaa !25
  %73 = icmp sgt i64 %72, 0
  br i1 %73, label %74, label %167

74:                                               ; preds = %69, %74
  %75 = phi i64 [ %81, %74 ], [ 0, %69 ]
  %76 = phi ptr [ %80, %74 ], [ %38, %69 ]
  %77 = getelementptr inbounds %struct._PixelPacket, ptr %76, i64 0, i32 2
  %78 = load i16, ptr %77, align 2, !tbaa !32
  %79 = getelementptr inbounds %struct._PixelPacket, ptr %76, i64 0, i32 1
  store i16 %78, ptr %79, align 2, !tbaa !34
  store i16 %78, ptr %76, align 2, !tbaa !36
  %80 = getelementptr inbounds %struct._PixelPacket, ptr %76, i64 1
  %81 = add nuw nsw i64 %75, 1
  %82 = icmp eq i64 %81, %72
  br i1 %82, label %167, label %74, !llvm.loop !49

83:                                               ; preds = %64, %83
  %84 = phi i64 [ %90, %83 ], [ 0, %64 ]
  %85 = phi ptr [ %89, %83 ], [ %38, %64 ]
  %86 = getelementptr inbounds %struct._PixelPacket, ptr %85, i64 0, i32 1
  %87 = load i16, ptr %86, align 2, !tbaa !34
  %88 = getelementptr inbounds %struct._PixelPacket, ptr %85, i64 0, i32 2
  store i16 %87, ptr %88, align 2, !tbaa !32
  store i16 %87, ptr %85, align 2, !tbaa !36
  %89 = getelementptr inbounds %struct._PixelPacket, ptr %85, i64 1
  %90 = add nuw nsw i64 %84, 1
  %91 = icmp eq i64 %90, %67
  br i1 %91, label %167, label %83, !llvm.loop !50

92:                                               ; preds = %59, %92
  %93 = phi i64 [ %99, %92 ], [ 0, %59 ]
  %94 = phi ptr [ %98, %92 ], [ %38, %59 ]
  %95 = load i16, ptr %94, align 2, !tbaa !36
  %96 = getelementptr inbounds %struct._PixelPacket, ptr %94, i64 0, i32 2
  store i16 %95, ptr %96, align 2, !tbaa !32
  %97 = getelementptr inbounds %struct._PixelPacket, ptr %94, i64 0, i32 1
  store i16 %95, ptr %97, align 2, !tbaa !34
  %98 = getelementptr inbounds %struct._PixelPacket, ptr %94, i64 1
  %99 = add nuw nsw i64 %93, 1
  %100 = icmp eq i64 %99, %62
  br i1 %100, label %167, label %92, !llvm.loop !51

101:                                              ; preds = %54, %101
  %102 = phi i64 [ %109, %101 ], [ 0, %54 ]
  %103 = phi ptr [ %108, %101 ], [ %38, %54 ]
  %104 = getelementptr inbounds %struct._PixelPacket, ptr %103, i64 0, i32 3
  %105 = load i16, ptr %104, align 2, !tbaa !38
  %106 = getelementptr inbounds %struct._PixelPacket, ptr %103, i64 0, i32 2
  store i16 %105, ptr %106, align 2, !tbaa !32
  %107 = getelementptr inbounds %struct._PixelPacket, ptr %103, i64 0, i32 1
  store i16 %105, ptr %107, align 2, !tbaa !34
  store i16 %105, ptr %103, align 2, !tbaa !36
  %108 = getelementptr inbounds %struct._PixelPacket, ptr %103, i64 1
  %109 = add nuw nsw i64 %102, 1
  %110 = icmp eq i64 %109, %57
  br i1 %110, label %167, label %101, !llvm.loop !52

111:                                              ; preds = %40
  %112 = load ptr, ptr %2, align 8, !tbaa !45
  %113 = load i32, ptr %112, align 8, !tbaa !53
  %114 = icmp eq i32 %113, 2
  br i1 %114, label %119, label %115

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct._Image, ptr %112, i64 0, i32 1
  %117 = load i32, ptr %116, align 4, !tbaa !29
  %118 = icmp eq i32 %117, 12
  br i1 %118, label %119, label %167

119:                                              ; preds = %115, %111
  %120 = getelementptr inbounds %struct._Image, ptr %112, i64 0, i32 7
  %121 = load i64, ptr %120, align 8, !tbaa !25
  %122 = icmp sgt i64 %121, 0
  br i1 %122, label %123, label %167

123:                                              ; preds = %119
  %124 = icmp eq ptr %42, null
  br label %125

125:                                              ; preds = %123, %137
  %126 = phi i64 [ 0, %123 ], [ %140, %137 ]
  %127 = phi ptr [ %38, %123 ], [ %139, %137 ]
  br i1 %124, label %128, label %131

128:                                              ; preds = %125
  %129 = getelementptr inbounds %struct._PixelPacket, ptr %127, i64 0, i32 2
  store i16 0, ptr %129, align 2, !tbaa !32
  %130 = getelementptr inbounds %struct._PixelPacket, ptr %127, i64 0, i32 1
  store i16 0, ptr %130, align 2, !tbaa !34
  br label %137

131:                                              ; preds = %125
  %132 = getelementptr inbounds i16, ptr %42, i64 %126
  %133 = load i16, ptr %132, align 2, !tbaa !40
  %134 = getelementptr inbounds %struct._PixelPacket, ptr %127, i64 0, i32 2
  store i16 %133, ptr %134, align 2, !tbaa !32
  %135 = getelementptr inbounds %struct._PixelPacket, ptr %127, i64 0, i32 1
  store i16 %133, ptr %135, align 2, !tbaa !34
  %136 = load i16, ptr %132, align 2, !tbaa !40
  br label %137

137:                                              ; preds = %128, %131
  %138 = phi i16 [ %136, %131 ], [ 0, %128 ]
  store i16 %138, ptr %127, align 2, !tbaa !36
  %139 = getelementptr inbounds %struct._PixelPacket, ptr %127, i64 1
  %140 = add nuw nsw i64 %126, 1
  %141 = icmp eq i64 %140, %121
  br i1 %141, label %167, label %125, !llvm.loop !54

142:                                              ; preds = %49, %142
  %143 = phi i64 [ %151, %142 ], [ 0, %49 ]
  %144 = phi ptr [ %150, %142 ], [ %38, %49 ]
  %145 = getelementptr inbounds %struct._PixelPacket, ptr %144, i64 0, i32 3
  %146 = load i16, ptr %145, align 2, !tbaa !38
  %147 = xor i16 %146, -1
  %148 = getelementptr inbounds %struct._PixelPacket, ptr %144, i64 0, i32 2
  store i16 %147, ptr %148, align 2, !tbaa !32
  %149 = getelementptr inbounds %struct._PixelPacket, ptr %144, i64 0, i32 1
  store i16 %147, ptr %149, align 2, !tbaa !34
  store i16 %147, ptr %144, align 2, !tbaa !36
  %150 = getelementptr inbounds %struct._PixelPacket, ptr %144, i64 1
  %151 = add nuw nsw i64 %143, 1
  %152 = icmp eq i64 %151, %52
  br i1 %152, label %167, label %142, !llvm.loop !55

153:                                              ; preds = %44, %153
  %154 = phi ptr [ %163, %153 ], [ %45, %44 ]
  %155 = phi i64 [ %162, %153 ], [ 0, %44 ]
  %156 = phi ptr [ %161, %153 ], [ %38, %44 ]
  %157 = call float @GetPixelIntensity(ptr noundef nonnull %154, ptr noundef nonnull %156) #13
  %158 = call fastcc zeroext i16 @ClampToQuantum(float noundef %157) #12
  %159 = xor i16 %158, -1
  %160 = getelementptr inbounds %struct._PixelPacket, ptr %156, i64 0, i32 3
  store i16 %159, ptr %160, align 2, !tbaa !38
  %161 = getelementptr inbounds %struct._PixelPacket, ptr %156, i64 1
  %162 = add nuw nsw i64 %155, 1
  %163 = load ptr, ptr %2, align 8, !tbaa !45
  %164 = getelementptr inbounds %struct._Image, ptr %163, i64 0, i32 7
  %165 = load i64, ptr %164, align 8, !tbaa !25
  %166 = icmp slt i64 %162, %165
  br i1 %166, label %153, label %167, !llvm.loop !56

167:                                              ; preds = %153, %142, %137, %101, %92, %83, %74, %44, %49, %119, %54, %59, %64, %69, %40, %115
  %168 = load ptr, ptr %4, align 8, !tbaa !45
  %169 = load ptr, ptr %5, align 8, !tbaa !45
  %170 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %168, ptr noundef %169) #13
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %167
  store i32 0, ptr %3, align 4, !tbaa !46
  br label %173

173:                                              ; preds = %172, %167
  %174 = load ptr, ptr %2, align 8, !tbaa !45
  %175 = getelementptr inbounds %struct._Image, ptr %174, i64 0, i32 47
  %176 = load ptr, ptr %175, align 8, !tbaa !42
  %177 = icmp eq ptr %176, null
  br i1 %177, label %187, label %178

178:                                              ; preds = %173
  call void @__kmpc_critical(ptr nonnull @2, i32 %19, ptr nonnull @.gomp_critical_user_MagickCore_SeparateImageChannel.var)
  %179 = load ptr, ptr %2, align 8, !tbaa !45
  %180 = load i64, ptr %7, align 8, !tbaa !47
  %181 = add nsw i64 %180, 1
  store i64 %181, ptr %7, align 8, !tbaa !47
  %182 = getelementptr inbounds %struct._Image, ptr %179, i64 0, i32 8
  %183 = load i64, ptr %182, align 8, !tbaa !26
  %184 = call fastcc i32 @SetImageProgress(ptr noundef %179, ptr noundef nonnull @.str.8, i64 noundef %180, i64 noundef %183) #12
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %19, ptr nonnull @.gomp_critical_user_MagickCore_SeparateImageChannel.var)
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %178, %32
  store i32 0, ptr %3, align 4, !tbaa !46
  br label %187

187:                                              ; preds = %186, %173, %178, %28
  %188 = add nsw i64 %29, 1
  %189 = load i64, ptr %10, align 8, !tbaa !48
  %190 = icmp slt i64 %29, %189
  br i1 %190, label %28, label %191

191:                                              ; preds = %187
  %192 = load i64, ptr %9, align 8, !tbaa !48
  br label %193

193:                                              ; preds = %191, %24
  %194 = phi i64 [ %26, %24 ], [ %192, %191 ]
  %195 = phi i64 [ %25, %24 ], [ %189, %191 ]
  %196 = load i64, ptr %11, align 8, !tbaa !48
  %197 = add nsw i64 %196, %194
  store i64 %197, ptr %9, align 8, !tbaa !48
  %198 = add nsw i64 %196, %195
  %199 = call i64 @llvm.smin.i64(i64 %198, i64 %16)
  store i64 %199, ptr %10, align 8, !tbaa !48
  %200 = icmp sgt i64 %197, %199
  br i1 %200, label %201, label %24

201:                                              ; preds = %193, %18
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %19)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #6
  br label %202

202:                                              ; preds = %201, %8
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_8(ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i64) local_unnamed_addr #6

; Function Attrs: convergent nounwind
declare void @__kmpc_critical(ptr, i32, ptr) local_unnamed_addr #7

; Function Attrs: convergent nounwind
declare void @__kmpc_end_critical(ptr, i32, ptr) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #6

; Function Attrs: optsize
declare i64 @GetMagickResourceLimit(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @GetImagePixelCacheType(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare !callback !57 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @SeparateImages(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 575, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #11
  br label %11

11:                                               ; preds = %8, %3
  %12 = tail call ptr @NewImageList() #11
  store ptr %12, ptr %4, align 8, !tbaa !45
  %13 = and i32 %1, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #11
  %17 = tail call i32 @SeparateImageChannel(ptr noundef %16, i32 noundef 1) #12
  call void @AppendImageToList(ptr noundef nonnull %4, ptr noundef %16) #11
  br label %18

18:                                               ; preds = %15, %11
  %19 = and i32 %1, 2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #11
  %23 = call i32 @SeparateImageChannel(ptr noundef %22, i32 noundef 2) #12
  call void @AppendImageToList(ptr noundef nonnull %4, ptr noundef %22) #11
  br label %24

24:                                               ; preds = %21, %18
  %25 = and i32 %1, 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #11
  %29 = call i32 @SeparateImageChannel(ptr noundef %28, i32 noundef 4) #12
  call void @AppendImageToList(ptr noundef nonnull %4, ptr noundef %28) #11
  br label %30

30:                                               ; preds = %27, %24
  %31 = and i32 %1, 32
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %35 = load i32, ptr %34, align 4, !tbaa !29
  %36 = icmp eq i32 %35, 12
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #11
  %39 = call i32 @SeparateImageChannel(ptr noundef %38, i32 noundef 32) #12
  call void @AppendImageToList(ptr noundef nonnull %4, ptr noundef %38) #11
  br label %40

40:                                               ; preds = %37, %33, %30
  %41 = and i32 %1, 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #11
  %45 = call i32 @SeparateImageChannel(ptr noundef %44, i32 noundef 64) #12
  call void @AppendImageToList(ptr noundef nonnull %4, ptr noundef %44) #11
  br label %46

46:                                               ; preds = %43, %40
  %47 = load ptr, ptr %4, align 8, !tbaa !45
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  ret ptr %47
}

; Function Attrs: optsize
declare ptr @NewImageList() local_unnamed_addr #2

; Function Attrs: optsize
declare void @AppendImageToList(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @SetImageAlphaChannel(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca %struct._MagickPixelPacket, align 8
  %9 = alloca %struct._PixelPacket, align 2
  %10 = alloca %struct._MagickPixelPacket, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i16, align 2
  %14 = alloca i32, align 4
  %15 = alloca %struct._MagickPixelPacket, align 8
  %16 = alloca %struct._PixelPacket, align 2
  %17 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %3, align 8, !tbaa !45
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %19 = load i32, ptr %18, align 8, !tbaa !6
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %2
  %22 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 647, ptr noundef nonnull @.str.7) #11
  br label %23

23:                                               ; preds = %21, %2
  switch i32 %1, label %146 [
    i32 1, label %24
    i32 2, label %26
    i32 3, label %72
    i32 9, label %72
    i32 4, label %80
    i32 5, label %82
    i32 12, label %85
    i32 11, label %85
    i32 7, label %131
    i32 6, label %131
    i32 8, label %133
    i32 10, label %139
  ]

24:                                               ; preds = %23
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  store i32 1, ptr %25, align 8, !tbaa !31
  br label %146

26:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #6
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #6
  %27 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %28 = load i32, ptr %27, align 8, !tbaa !31
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %65, label %30

30:                                               ; preds = %26
  %31 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %0, i32 noundef 1) #11
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %65, label %33

33:                                               ; preds = %30
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %8) #11
  %34 = load ptr, ptr %3, align 8, !tbaa !45
  %35 = getelementptr inbounds %struct._Image, ptr %34, i64 0, i32 12
  call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %35, ptr noundef nonnull %8) #12
  %36 = getelementptr inbounds %struct._Image, ptr %34, i64 0, i32 1
  %37 = load i32, ptr %36, align 4, !tbaa !29
  %38 = icmp eq i32 %37, 12
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  call fastcc void @ConvertRGBToCMYK(ptr noundef nonnull %8) #12
  %40 = load ptr, ptr %3, align 8, !tbaa !45
  br label %41

41:                                               ; preds = %39, %33
  %42 = phi ptr [ %40, %39 ], [ %34, %33 ]
  store i16 0, ptr %6, align 2, !tbaa !40
  call fastcc void @SetPixelPacket(ptr noundef %42, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %6) #12
  store i32 1, ptr %7, align 4, !tbaa !46
  %43 = getelementptr inbounds %struct._Image, ptr %42, i64 0, i32 58
  store ptr %43, ptr %5, align 8, !tbaa !45
  %44 = call ptr @AcquireAuthenticCacheView(ptr noundef %42, ptr noundef nonnull %43) #11
  store ptr %44, ptr %4, align 8, !tbaa !45
  %45 = load ptr, ptr %3, align 8, !tbaa !45
  %46 = getelementptr inbounds %struct._Image, ptr %45, i64 0, i32 8
  %47 = load i64, ptr %46, align 8, !tbaa !26
  %48 = call i64 @GetMagickResourceLimit(i32 noundef 6) #11
  %49 = shl i64 %48, 5
  %50 = icmp ugt i64 %47, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %41
  %52 = load ptr, ptr %3, align 8, !tbaa !45
  %53 = call i32 @GetImagePixelCacheType(ptr noundef %52) #11
  %54 = icmp eq i32 %53, 3
  br i1 %54, label %61, label %55

55:                                               ; preds = %51
  %56 = load ptr, ptr %3, align 8, !tbaa !45
  %57 = call i32 @GetImagePixelCacheType(ptr noundef %56) #11
  %58 = icmp eq i32 %57, 3
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  %60 = call i64 @GetMagickResourceLimit(i32 noundef 6) #11
  br label %66

61:                                               ; preds = %55, %51, %41
  %62 = call i64 @GetMagickResourceLimit(i32 noundef 6) #11
  %63 = icmp ult i64 %62, 2
  %64 = select i1 %63, i64 1, i64 2
  br label %66

65:                                               ; preds = %26, %30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  br label %146

66:                                               ; preds = %59, %61
  %67 = phi i64 [ %60, %59 ], [ %64, %61 ]
  %68 = trunc i64 %67 to i32
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %17, i32 %68)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 6, ptr nonnull @SetImageAlphaChannel.omp_outlined, ptr nonnull %3, ptr nonnull %7, ptr nonnull %4, ptr nonnull %5, ptr nonnull %9, ptr nonnull %6)
  %69 = load ptr, ptr %4, align 8, !tbaa !45
  %70 = call ptr @DestroyCacheView(ptr noundef %69) #11
  %71 = load i32, ptr %7, align 4, !tbaa !46
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  br label %150

72:                                               ; preds = %23, %23
  %73 = tail call i32 @SeparateImageChannel(ptr noundef nonnull %0, i32 noundef 128) #12
  %74 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  store i32 1, ptr %74, align 8, !tbaa !31
  %75 = icmp eq i32 %1, 9
  br i1 %75, label %76, label %141

76:                                               ; preds = %72
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #6
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %10) #11
  %77 = load ptr, ptr %3, align 8, !tbaa !45
  %78 = getelementptr inbounds %struct._Image, ptr %77, i64 0, i32 12
  call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %78, ptr noundef nonnull %10) #12
  %79 = call i32 @LevelColorsImage(ptr noundef %77, ptr noundef nonnull %10, ptr noundef nonnull %10, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #6
  br label %141

80:                                               ; preds = %23
  %81 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  store i32 0, ptr %81, align 8, !tbaa !31
  br label %146

82:                                               ; preds = %23
  %83 = tail call i32 @SeparateImageChannel(ptr noundef nonnull %0, i32 noundef 64) #12
  %84 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  store i32 0, ptr %84, align 8, !tbaa !31
  br label %141

85:                                               ; preds = %23, %23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #6
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %15) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #6
  %86 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %87 = load i32, ptr %86, align 8, !tbaa !31
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %124, label %89

89:                                               ; preds = %85
  %90 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %0, i32 noundef 1) #11
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %124, label %92

92:                                               ; preds = %89
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %15) #11
  %93 = load ptr, ptr %3, align 8, !tbaa !45
  %94 = getelementptr inbounds %struct._Image, ptr %93, i64 0, i32 12
  call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %94, ptr noundef nonnull %15) #12
  %95 = getelementptr inbounds %struct._Image, ptr %93, i64 0, i32 1
  %96 = load i32, ptr %95, align 4, !tbaa !29
  %97 = icmp eq i32 %96, 12
  br i1 %97, label %98, label %100

98:                                               ; preds = %92
  call fastcc void @ConvertRGBToCMYK(ptr noundef nonnull %15) #12
  %99 = load ptr, ptr %3, align 8, !tbaa !45
  br label %100

100:                                              ; preds = %98, %92
  %101 = phi ptr [ %99, %98 ], [ %93, %92 ]
  store i16 0, ptr %13, align 2, !tbaa !40
  call fastcc void @SetPixelPacket(ptr noundef %101, ptr noundef nonnull %15, ptr noundef nonnull %16, ptr noundef nonnull %13) #12
  store i32 1, ptr %14, align 4, !tbaa !46
  %102 = getelementptr inbounds %struct._Image, ptr %101, i64 0, i32 58
  store ptr %102, ptr %12, align 8, !tbaa !45
  %103 = call ptr @AcquireAuthenticCacheView(ptr noundef %101, ptr noundef nonnull %102) #11
  store ptr %103, ptr %11, align 8, !tbaa !45
  %104 = load ptr, ptr %3, align 8, !tbaa !45
  %105 = getelementptr inbounds %struct._Image, ptr %104, i64 0, i32 8
  %106 = load i64, ptr %105, align 8, !tbaa !26
  %107 = call i64 @GetMagickResourceLimit(i32 noundef 6) #11
  %108 = shl i64 %107, 5
  %109 = icmp ugt i64 %106, %108
  br i1 %109, label %110, label %120

110:                                              ; preds = %100
  %111 = load ptr, ptr %3, align 8, !tbaa !45
  %112 = call i32 @GetImagePixelCacheType(ptr noundef %111) #11
  %113 = icmp eq i32 %112, 3
  br i1 %113, label %120, label %114

114:                                              ; preds = %110
  %115 = load ptr, ptr %3, align 8, !tbaa !45
  %116 = call i32 @GetImagePixelCacheType(ptr noundef %115) #11
  %117 = icmp eq i32 %116, 3
  br i1 %117, label %120, label %118

118:                                              ; preds = %114
  %119 = call i64 @GetMagickResourceLimit(i32 noundef 6) #11
  br label %125

120:                                              ; preds = %114, %110, %100
  %121 = call i64 @GetMagickResourceLimit(i32 noundef 6) #11
  %122 = icmp ult i64 %121, 2
  %123 = select i1 %122, i64 1, i64 2
  br label %125

124:                                              ; preds = %85, %89
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %15) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #6
  br label %146

125:                                              ; preds = %118, %120
  %126 = phi i64 [ %119, %118 ], [ %123, %120 ]
  %127 = trunc i64 %126 to i32
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %17, i32 %127)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 6, ptr nonnull @SetImageAlphaChannel.omp_outlined.9, ptr nonnull %3, ptr nonnull %14, ptr nonnull %11, ptr nonnull %12, ptr nonnull %16, ptr nonnull %13)
  %128 = load ptr, ptr %11, align 8, !tbaa !45
  %129 = call ptr @DestroyCacheView(ptr noundef %128) #11
  %130 = load i32, ptr %14, align 4, !tbaa !46
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %15) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #6
  br label %150

131:                                              ; preds = %23, %23
  %132 = tail call i32 @SetImageOpacity(ptr noundef nonnull %0, i16 noundef zeroext 0) #11
  br label %141

133:                                              ; preds = %23
  %134 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %135 = load i32, ptr %134, align 8, !tbaa !31
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %146

137:                                              ; preds = %133
  %138 = tail call i32 @SetImageOpacity(ptr noundef nonnull %0, i16 noundef zeroext 0) #11
  br label %141

139:                                              ; preds = %23
  %140 = tail call i32 @SetImageOpacity(ptr noundef nonnull %0, i16 noundef zeroext -1) #11
  br label %141

141:                                              ; preds = %137, %72, %76, %139, %131, %82
  %142 = phi i32 [ %140, %139 ], [ %138, %137 ], [ %132, %131 ], [ %83, %82 ], [ %73, %76 ], [ %73, %72 ]
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %150, label %144

144:                                              ; preds = %141
  %145 = load ptr, ptr %3, align 8, !tbaa !45
  br label %146

146:                                              ; preds = %144, %124, %65, %24, %80, %133, %23
  %147 = phi ptr [ %145, %144 ], [ %0, %124 ], [ %0, %65 ], [ %0, %24 ], [ %0, %80 ], [ %0, %133 ], [ %0, %23 ]
  %148 = getelementptr inbounds %struct._Image, ptr %147, i64 0, i32 58
  %149 = call i32 @SyncImagePixelCache(ptr noundef %147, ptr noundef nonnull %148) #11
  br label %150

150:                                              ; preds = %125, %66, %141, %146
  %151 = phi i32 [ %149, %146 ], [ %130, %125 ], [ %71, %66 ], [ 0, %141 ]
  ret i32 %151
}

; Function Attrs: optsize
declare void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @SetMagickPixelPacket(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #8 {
  %3 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %4 = load <4 x i16>, ptr %0, align 2, !tbaa !40
  %5 = uitofp <4 x i16> %4 to <4 x float>
  %6 = shufflevector <4 x float> %5, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  store <4 x float> %6, ptr %3, align 8, !tbaa !59
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ConvertRGBToCMYK(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !61
  %4 = icmp eq i32 %3, 13
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %6 = load float, ptr %5, align 8, !tbaa !63
  br i1 %4, label %20, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %9 = load float, ptr %8, align 4, !tbaa !64
  %10 = insertelement <2 x float> poison, float %6, i64 0
  %11 = insertelement <2 x float> %10, float %9, i64 1
  %12 = fpext <2 x float> %11 to <2 x double>
  %13 = fmul <2 x double> %12, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  %14 = fptrunc <2 x double> %13 to <2 x float>
  %15 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %16 = load float, ptr %15, align 8, !tbaa !65
  %17 = fpext float %16 to double
  %18 = fmul double %17, 0x3EF0001000100010
  %19 = fptrunc double %18 to float
  br label %30

20:                                               ; preds = %1
  %21 = tail call float @DecodePixelGamma(float noundef %6) #13
  %22 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %23 = load float, ptr %22, align 4, !tbaa !64
  %24 = tail call float @DecodePixelGamma(float noundef %23) #13
  %25 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %26 = load float, ptr %25, align 8, !tbaa !65
  %27 = tail call float @DecodePixelGamma(float noundef %26) #13
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
  store i32 12, ptr %2, align 4, !tbaa !61
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
  store float %71, ptr %72, align 8, !tbaa !65
  %73 = fmul float %54, 6.553500e+04
  br label %74

74:                                               ; preds = %42, %46
  %75 = phi float [ %73, %46 ], [ 6.553500e+04, %42 ]
  %76 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  store float %75, ptr %76, align 8, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @SetPixelPacket(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr noundef writeonly %3) unnamed_addr #8 {
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %6 = load float, ptr %5, align 8, !tbaa !63
  %7 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %6) #12
  %8 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 2
  store i16 %7, ptr %8, align 2, !tbaa !32
  %9 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %10 = load float, ptr %9, align 4, !tbaa !64
  %11 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %10) #12
  %12 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 1
  store i16 %11, ptr %12, align 2, !tbaa !34
  %13 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %14 = load float, ptr %13, align 8, !tbaa !65
  %15 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %14) #12
  store i16 %15, ptr %2, align 2, !tbaa !36
  %16 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %17 = load float, ptr %16, align 4, !tbaa !67
  %18 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %17) #12
  %19 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 3
  store i16 %18, ptr %19, align 2, !tbaa !38
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !29
  %22 = icmp eq i32 %21, 12
  br i1 %22, label %28, label %23

23:                                               ; preds = %4
  %24 = load i32, ptr %0, align 8, !tbaa !53
  %25 = icmp eq i32 %24, 2
  %26 = icmp ne ptr %3, null
  %27 = and i1 %26, %25
  br i1 %27, label %30, label %34

28:                                               ; preds = %4
  %29 = icmp eq ptr %3, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %23, %28
  %31 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %32 = load float, ptr %31, align 8, !tbaa !66
  %33 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %32) #12
  store i16 %33, ptr %3, align 2, !tbaa !40
  br label %34

34:                                               ; preds = %28, %30, %23
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @SetImageAlphaChannel.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 2 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 2 dereferenceable(2) %7) #5 {
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = load ptr, ptr %2, align 8, !tbaa !45
  %14 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 8
  %15 = load i64, ptr %14, align 8, !tbaa !26
  %16 = add nsw i64 %15, -1
  %17 = icmp sgt i64 %15, 0
  br i1 %17, label %18, label %103

18:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #6
  store i64 0, ptr %9, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #6
  store i64 %16, ptr %10, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #6
  store i64 1, ptr %11, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #6
  store i32 0, ptr %12, align 4, !tbaa !46
  %19 = load i32, ptr %0, align 4, !tbaa !46
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %19, i32 33, ptr nonnull %12, ptr nonnull %9, ptr nonnull %10, ptr nonnull %11, i64 1, i64 4)
  %20 = load i64, ptr %10, align 8
  %21 = call i64 @llvm.smin.i64(i64 %20, i64 %16)
  store i64 %21, ptr %10, align 8, !tbaa !48
  %22 = load i64, ptr %9, align 8, !tbaa !48
  %23 = icmp sgt i64 %22, %21
  br i1 %23, label %102, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct._PixelPacket, ptr %6, i64 0, i32 2
  br label %26

26:                                               ; preds = %24, %94
  %27 = phi i64 [ %21, %24 ], [ %100, %94 ]
  %28 = phi i64 [ %22, %24 ], [ %98, %94 ]
  %29 = icmp sgt i64 %28, %27
  br i1 %29, label %94, label %30

30:                                               ; preds = %26, %88
  %31 = phi i64 [ %89, %88 ], [ %28, %26 ]
  %32 = load i32, ptr %3, align 4, !tbaa !46
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %88, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %4, align 8, !tbaa !45
  %36 = load ptr, ptr %2, align 8, !tbaa !45
  %37 = getelementptr inbounds %struct._Image, ptr %36, i64 0, i32 7
  %38 = load i64, ptr %37, align 8, !tbaa !25
  %39 = load ptr, ptr %5, align 8, !tbaa !45
  %40 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %35, i64 noundef 0, i64 noundef %31, i64 noundef %38, i64 noundef 1, ptr noundef %39) #13
  %41 = icmp eq ptr %40, null
  br i1 %41, label %87, label %42

42:                                               ; preds = %34
  %43 = load ptr, ptr %2, align 8, !tbaa !45
  %44 = getelementptr inbounds %struct._Image, ptr %43, i64 0, i32 7
  %45 = load i64, ptr %44, align 8, !tbaa !25
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %42, %57
  %48 = phi i64 [ %59, %57 ], [ 0, %42 ]
  %49 = phi ptr [ %58, %57 ], [ %40, %42 ]
  %50 = getelementptr inbounds %struct._PixelPacket, ptr %49, i64 0, i32 3
  %51 = load i16, ptr %50, align 2, !tbaa !38
  %52 = icmp eq i16 %51, -1
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load i16, ptr %25, align 2, !tbaa !32
  %55 = getelementptr inbounds %struct._PixelPacket, ptr %49, i64 0, i32 2
  store i16 %54, ptr %55, align 2, !tbaa !32
  %56 = load <2 x i16>, ptr %6, align 2, !tbaa !40
  store <2 x i16> %56, ptr %49, align 2, !tbaa !40
  br label %57

57:                                               ; preds = %53, %47
  %58 = getelementptr inbounds %struct._PixelPacket, ptr %49, i64 1
  %59 = add nuw nsw i64 %48, 1
  %60 = icmp eq i64 %59, %45
  br i1 %60, label %61, label %47, !llvm.loop !68

61:                                               ; preds = %57, %42
  %62 = getelementptr inbounds %struct._Image, ptr %43, i64 0, i32 1
  %63 = load i32, ptr %62, align 4, !tbaa !29
  %64 = icmp eq i32 %63, 12
  br i1 %64, label %65, label %82

65:                                               ; preds = %61
  %66 = load ptr, ptr %4, align 8, !tbaa !45
  %67 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %66) #11
  %68 = load ptr, ptr %2, align 8, !tbaa !45
  %69 = getelementptr inbounds %struct._Image, ptr %68, i64 0, i32 7
  %70 = load i64, ptr %69, align 8, !tbaa !25
  %71 = icmp sgt i64 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %65
  %73 = icmp eq ptr %67, null
  br label %74

74:                                               ; preds = %72, %79
  %75 = phi i64 [ 0, %72 ], [ %80, %79 ]
  br i1 %73, label %79, label %76

76:                                               ; preds = %74
  %77 = getelementptr inbounds i16, ptr %67, i64 %75
  %78 = load i16, ptr %7, align 2, !tbaa !40
  store i16 %78, ptr %77, align 2, !tbaa !40
  br label %79

79:                                               ; preds = %74, %76
  %80 = add nuw nsw i64 %75, 1
  %81 = icmp eq i64 %80, %70
  br i1 %81, label %82, label %74, !llvm.loop !69

82:                                               ; preds = %79, %65, %61
  %83 = load ptr, ptr %4, align 8, !tbaa !45
  %84 = load ptr, ptr %5, align 8, !tbaa !45
  %85 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %83, ptr noundef %84) #13
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82, %34
  store i32 0, ptr %3, align 4, !tbaa !46
  br label %88

88:                                               ; preds = %87, %82, %30
  %89 = add nsw i64 %31, 1
  %90 = load i64, ptr %10, align 8, !tbaa !48
  %91 = icmp slt i64 %31, %90
  br i1 %91, label %30, label %92

92:                                               ; preds = %88
  %93 = load i64, ptr %9, align 8, !tbaa !48
  br label %94

94:                                               ; preds = %92, %26
  %95 = phi i64 [ %28, %26 ], [ %93, %92 ]
  %96 = phi i64 [ %27, %26 ], [ %90, %92 ]
  %97 = load i64, ptr %11, align 8, !tbaa !48
  %98 = add nsw i64 %97, %95
  store i64 %98, ptr %9, align 8, !tbaa !48
  %99 = add nsw i64 %97, %96
  %100 = call i64 @llvm.smin.i64(i64 %99, i64 %16)
  store i64 %100, ptr %10, align 8, !tbaa !48
  %101 = icmp sgt i64 %98, %100
  br i1 %101, label %102, label %26

102:                                              ; preds = %94, %18
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %19)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #6
  br label %103

103:                                              ; preds = %102, %8
  ret void
}

; Function Attrs: optsize
declare i32 @LevelColorsImage(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @SetImageAlphaChannel.omp_outlined.9(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 2 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 2 dereferenceable(2) %7) #5 {
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = load ptr, ptr %2, align 8, !tbaa !45
  %14 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 8
  %15 = load i64, ptr %14, align 8, !tbaa !26
  %16 = add nsw i64 %15, -1
  %17 = icmp sgt i64 %15, 0
  br i1 %17, label %18, label %142

18:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #6
  store i64 0, ptr %9, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #6
  store i64 %16, ptr %10, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #6
  store i64 1, ptr %11, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #6
  store i32 0, ptr %12, align 4, !tbaa !46
  %19 = load i32, ptr %0, align 4, !tbaa !46
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %19, i32 33, ptr nonnull %12, ptr nonnull %9, ptr nonnull %10, ptr nonnull %11, i64 1, i64 4)
  %20 = load i64, ptr %10, align 8
  %21 = call i64 @llvm.smin.i64(i64 %20, i64 %16)
  store i64 %21, ptr %10, align 8, !tbaa !48
  %22 = load i64, ptr %9, align 8, !tbaa !48
  %23 = icmp sgt i64 %22, %21
  br i1 %23, label %141, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct._PixelPacket, ptr %6, i64 0, i32 3
  %26 = getelementptr inbounds %struct._PixelPacket, ptr %6, i64 0, i32 2
  %27 = getelementptr inbounds %struct._PixelPacket, ptr %6, i64 0, i32 1
  br label %28

28:                                               ; preds = %24, %133
  %29 = phi i64 [ %21, %24 ], [ %139, %133 ]
  %30 = phi i64 [ %22, %24 ], [ %137, %133 ]
  %31 = icmp sgt i64 %30, %29
  br i1 %31, label %133, label %32

32:                                               ; preds = %28, %127
  %33 = phi i64 [ %128, %127 ], [ %30, %28 ]
  %34 = load i32, ptr %3, align 4, !tbaa !46
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %127, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr %4, align 8, !tbaa !45
  %38 = load ptr, ptr %2, align 8, !tbaa !45
  %39 = getelementptr inbounds %struct._Image, ptr %38, i64 0, i32 7
  %40 = load i64, ptr %39, align 8, !tbaa !25
  %41 = load ptr, ptr %5, align 8, !tbaa !45
  %42 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %37, i64 noundef 0, i64 noundef %33, i64 noundef %40, i64 noundef 1, ptr noundef %41) #13
  %43 = icmp eq ptr %42, null
  br i1 %43, label %126, label %44

44:                                               ; preds = %36
  %45 = load ptr, ptr %2, align 8, !tbaa !45
  %46 = getelementptr inbounds %struct._Image, ptr %45, i64 0, i32 7
  %47 = load i64, ptr %46, align 8, !tbaa !25
  %48 = icmp sgt i64 %47, 0
  br i1 %48, label %49, label %100

49:                                               ; preds = %44, %49
  %50 = phi i64 [ %98, %49 ], [ 0, %44 ]
  %51 = phi ptr [ %97, %49 ], [ %42, %44 ]
  %52 = getelementptr inbounds %struct._PixelPacket, ptr %51, i64 0, i32 3
  %53 = load i16, ptr %52, align 2, !tbaa !38
  %54 = uitofp i16 %53 to double
  %55 = load i16, ptr %25, align 2, !tbaa !38
  %56 = uitofp i16 %55 to double
  %57 = fmul double %54, 0xBDF0002000300040
  %58 = call double @llvm.fmuladd.f64(double %57, double %56, double 1.000000e+00)
  %59 = fcmp olt double %58, 0.000000e+00
  %60 = select i1 %59, double 0.000000e+00, double %58
  %61 = fsub double 1.000000e+00, %60
  %62 = fmul double %61, 6.553500e+04
  %63 = call fastcc double @PerceptibleReciprocal(double noundef %60) #12
  %64 = getelementptr inbounds %struct._PixelPacket, ptr %51, i64 0, i32 2
  %65 = load i16, ptr %64, align 2, !tbaa !32
  %66 = uitofp i16 %65 to float
  %67 = uitofp i16 %53 to float
  %68 = load i16, ptr %26, align 2, !tbaa !32
  %69 = uitofp i16 %68 to float
  %70 = uitofp i16 %55 to float
  %71 = call fastcc float @MagickOver_(float noundef %66, float noundef %67, float noundef %69, float noundef %70) #12
  %72 = fpext float %71 to double
  %73 = fmul double %63, %72
  %74 = fptrunc double %73 to float
  %75 = call fastcc zeroext i16 @ClampToQuantum(float noundef %74) #12
  store i16 %75, ptr %64, align 2, !tbaa !32
  %76 = getelementptr inbounds %struct._PixelPacket, ptr %51, i64 0, i32 1
  %77 = load i16, ptr %76, align 2, !tbaa !34
  %78 = uitofp i16 %77 to float
  %79 = load i16, ptr %27, align 2, !tbaa !34
  %80 = uitofp i16 %79 to float
  %81 = call fastcc float @MagickOver_(float noundef %78, float noundef %67, float noundef %80, float noundef %70) #12
  %82 = fpext float %81 to double
  %83 = fmul double %63, %82
  %84 = fptrunc double %83 to float
  %85 = call fastcc zeroext i16 @ClampToQuantum(float noundef %84) #12
  store i16 %85, ptr %76, align 2, !tbaa !34
  %86 = load i16, ptr %51, align 2, !tbaa !36
  %87 = uitofp i16 %86 to float
  %88 = load i16, ptr %6, align 2, !tbaa !36
  %89 = uitofp i16 %88 to float
  %90 = call fastcc float @MagickOver_(float noundef %87, float noundef %67, float noundef %89, float noundef %70) #12
  %91 = fpext float %90 to double
  %92 = fmul double %63, %91
  %93 = fptrunc double %92 to float
  %94 = call fastcc zeroext i16 @ClampToQuantum(float noundef %93) #12
  store i16 %94, ptr %51, align 2, !tbaa !36
  %95 = fptrunc double %62 to float
  %96 = call fastcc zeroext i16 @ClampToQuantum(float noundef %95) #12
  store i16 %96, ptr %52, align 2, !tbaa !38
  %97 = getelementptr inbounds %struct._PixelPacket, ptr %51, i64 1
  %98 = add nuw nsw i64 %50, 1
  %99 = icmp eq i64 %98, %47
  br i1 %99, label %100, label %49, !llvm.loop !70

100:                                              ; preds = %49, %44
  %101 = getelementptr inbounds %struct._Image, ptr %45, i64 0, i32 1
  %102 = load i32, ptr %101, align 4, !tbaa !29
  %103 = icmp eq i32 %102, 12
  br i1 %103, label %104, label %121

104:                                              ; preds = %100
  %105 = load ptr, ptr %4, align 8, !tbaa !45
  %106 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %105) #11
  %107 = load ptr, ptr %2, align 8, !tbaa !45
  %108 = getelementptr inbounds %struct._Image, ptr %107, i64 0, i32 7
  %109 = load i64, ptr %108, align 8, !tbaa !25
  %110 = icmp sgt i64 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %104
  %112 = icmp eq ptr %106, null
  br label %113

113:                                              ; preds = %111, %118
  %114 = phi i64 [ 0, %111 ], [ %119, %118 ]
  br i1 %112, label %118, label %115

115:                                              ; preds = %113
  %116 = getelementptr inbounds i16, ptr %106, i64 %114
  %117 = load i16, ptr %7, align 2, !tbaa !40
  store i16 %117, ptr %116, align 2, !tbaa !40
  br label %118

118:                                              ; preds = %113, %115
  %119 = add nuw nsw i64 %114, 1
  %120 = icmp eq i64 %119, %109
  br i1 %120, label %121, label %113, !llvm.loop !71

121:                                              ; preds = %118, %104, %100
  %122 = load ptr, ptr %4, align 8, !tbaa !45
  %123 = load ptr, ptr %5, align 8, !tbaa !45
  %124 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %122, ptr noundef %123) #13
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %121, %36
  store i32 0, ptr %3, align 4, !tbaa !46
  br label %127

127:                                              ; preds = %126, %121, %32
  %128 = add nsw i64 %33, 1
  %129 = load i64, ptr %10, align 8, !tbaa !48
  %130 = icmp slt i64 %33, %129
  br i1 %130, label %32, label %131

131:                                              ; preds = %127
  %132 = load i64, ptr %9, align 8, !tbaa !48
  br label %133

133:                                              ; preds = %131, %28
  %134 = phi i64 [ %30, %28 ], [ %132, %131 ]
  %135 = phi i64 [ %29, %28 ], [ %129, %131 ]
  %136 = load i64, ptr %11, align 8, !tbaa !48
  %137 = add nsw i64 %136, %134
  store i64 %137, ptr %9, align 8, !tbaa !48
  %138 = add nsw i64 %136, %135
  %139 = call i64 @llvm.smin.i64(i64 %138, i64 %16)
  store i64 %139, ptr %10, align 8, !tbaa !48
  %140 = icmp sgt i64 %137, %139
  br i1 %140, label %141, label %28

141:                                              ; preds = %133, %18
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %19)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #6
  br label %142

142:                                              ; preds = %141, %8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #9

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

; Function Attrs: hot optsize
declare float @DecodePixelGamma(float noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #10

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { hot optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { alwaysinline norecurse nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { convergent nounwind }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind optsize }
attributes #12 = { optsize }
attributes #13 = { hot nounwind optsize }

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
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!7, !8, i64 4}
!30 = !{i32 0, i32 2}
!31 = !{!7, !8, i64 32}
!32 = !{!13, !14, i64 4}
!33 = distinct !{!33, !28}
!34 = !{!13, !14, i64 2}
!35 = distinct !{!35, !28}
!36 = !{!13, !14, i64 0}
!37 = distinct !{!37, !28}
!38 = !{!13, !14, i64 6}
!39 = distinct !{!39, !28}
!40 = !{!14, !14, i64 0}
!41 = distinct !{!41, !28}
!42 = !{!7, !12, i64 568}
!43 = distinct !{!43, !28}
!44 = !{!7, !12, i64 576}
!45 = !{!12, !12, i64 0}
!46 = !{!8, !8, i64 0}
!47 = !{!24, !24, i64 0}
!48 = !{!11, !11, i64 0}
!49 = distinct !{!49, !28}
!50 = distinct !{!50, !28}
!51 = distinct !{!51, !28}
!52 = distinct !{!52, !28}
!53 = !{!7, !8, i64 0}
!54 = distinct !{!54, !28}
!55 = distinct !{!55, !28}
!56 = distinct !{!56, !28}
!57 = !{!58}
!58 = !{i64 2, i64 -1, i64 -1, i1 true}
!59 = !{!60, !60, i64 0}
!60 = !{!"float", !9, i64 0}
!61 = !{!62, !8, i64 4}
!62 = !{!"_MagickPixelPacket", !8, i64 0, !8, i64 4, !8, i64 8, !15, i64 16, !11, i64 24, !60, i64 32, !60, i64 36, !60, i64 40, !60, i64 44, !60, i64 48}
!63 = !{!62, !60, i64 32}
!64 = !{!62, !60, i64 36}
!65 = !{!62, !60, i64 40}
!66 = !{!62, !60, i64 48}
!67 = !{!62, !60, i64 44}
!68 = distinct !{!68, !28}
!69 = distinct !{!69, !28}
!70 = distinct !{!70, !28}
!71 = distinct !{!71, !28}
