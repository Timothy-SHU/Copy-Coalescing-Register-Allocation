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

; Function Attrs: nounwind uwtable
define dso_local ptr @CombineImages(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 122, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #6
  br label %11

11:                                               ; preds = %8, %3
  %12 = icmp eq ptr %0, null
  br i1 %12, label %33, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  br label %16

16:                                               ; preds = %13, %30
  %17 = phi ptr [ %0, %13 ], [ %31, %30 ]
  %18 = getelementptr inbounds %struct._Image, ptr %17, i64 0, i32 7
  %19 = load i64, ptr %18, align 8, !tbaa !53
  %20 = load i64, ptr %14, align 8, !tbaa !53
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct._Image, ptr %17, i64 0, i32 8
  %24 = load i64, ptr %23, align 8, !tbaa !54
  %25 = load i64, ptr %15, align 8, !tbaa !54
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %30, label %27

27:                                               ; preds = %22, %16
  %28 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %29 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 128, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %28) #6
  br label %293

30:                                               ; preds = %22
  %31 = tail call ptr @GetNextImageInList(ptr noundef nonnull %17) #6
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %16, !llvm.loop !55

33:                                               ; preds = %30, %11
  %34 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #6
  %35 = icmp eq ptr %34, null
  br i1 %35, label %293, label %36

36:                                               ; preds = %33
  %37 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %34, i32 noundef 1) #6
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct._Image, ptr %34, i64 0, i32 58
  tail call void @InheritException(ptr noundef %2, ptr noundef nonnull %40) #6
  %41 = tail call ptr @DestroyImage(ptr noundef nonnull %34) #6
  br label %293

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %44 = load i32, ptr %43, align 4, !tbaa !58
  switch i32 %44, label %47 [
    i32 29, label %45
    i32 13, label %45
    i32 3, label %45
    i32 1, label %45
    i32 19, label %45
    i32 17, label %45
    i32 2, label %45
  ]

45:                                               ; preds = %42, %42, %42, %42, %42, %42, %42
  %46 = tail call i32 @SetImageColorspace(ptr noundef nonnull %34, i32 noundef 13) #6
  br label %47

47:                                               ; preds = %42, %45
  %48 = and i32 %1, 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct._Image, ptr %34, i64 0, i32 6
  store i32 1, ptr %51, align 8, !tbaa !59
  br label %52

52:                                               ; preds = %50, %47
  %53 = tail call i32 @SetImageBackgroundColor(ptr noundef nonnull %34) #6
  %54 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %34, ptr noundef %2) #6
  %55 = getelementptr inbounds %struct._Image, ptr %34, i64 0, i32 8
  %56 = load i64, ptr %55, align 8, !tbaa !54
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %283

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct._Image, ptr %34, i64 0, i32 7
  %60 = and i32 %1, 1
  %61 = icmp ne i32 %60, 0
  %62 = icmp ne ptr %0, null
  %63 = and i1 %62, %61
  %64 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %65 = and i32 %1, 2
  %66 = icmp ne i32 %65, 0
  %67 = and i32 %1, 4
  %68 = icmp ne i32 %67, 0
  %69 = and i32 %1, 32
  %70 = icmp eq i32 %69, 0
  %71 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %72 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %73 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %74

74:                                               ; preds = %58, %275
  %75 = phi i64 [ 0, %58 ], [ %278, %275 ]
  %76 = phi i64 [ 0, %58 ], [ %277, %275 ]
  %77 = phi i32 [ 1, %58 ], [ %276, %275 ]
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %275, label %79

79:                                               ; preds = %74
  %80 = load i64, ptr %59, align 8, !tbaa !53
  %81 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %54, i64 noundef 0, i64 noundef %75, i64 noundef %80, i64 noundef 1, ptr noundef %2) #7
  %82 = icmp eq ptr %81, null
  br i1 %82, label %275, label %83

83:                                               ; preds = %79
  br i1 %63, label %84, label %114

84:                                               ; preds = %83
  %85 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %2) #6
  %86 = load i64, ptr %64, align 8, !tbaa !53
  %87 = call ptr @GetCacheViewVirtualPixels(ptr noundef %85, i64 noundef 0, i64 noundef %75, i64 noundef %86, i64 noundef 1, ptr noundef %2) #7
  %88 = icmp eq ptr %87, null
  br i1 %88, label %275, label %89

89:                                               ; preds = %84
  %90 = load i64, ptr %59, align 8, !tbaa !53
  %91 = icmp sgt i64 %90, 0
  br i1 %91, label %92, label %111

92:                                               ; preds = %89, %103
  %93 = phi i64 [ %108, %103 ], [ 0, %89 ]
  %94 = phi ptr [ %107, %103 ], [ %81, %89 ]
  %95 = phi ptr [ %106, %103 ], [ %87, %89 ]
  %96 = call float @GetPixelIntensity(ptr noundef nonnull %0, ptr noundef nonnull %95) #7
  %97 = fcmp ugt float %96, 0.000000e+00
  br i1 %97, label %98, label %103

98:                                               ; preds = %92
  %99 = fcmp ult float %96, 6.553500e+04
  br i1 %99, label %100, label %103

100:                                              ; preds = %98
  %101 = fadd float %96, 5.000000e-01
  %102 = fptoui float %101 to i16
  br label %103

103:                                              ; preds = %92, %98, %100
  %104 = phi i16 [ %102, %100 ], [ 0, %92 ], [ -1, %98 ]
  %105 = getelementptr inbounds %struct._PixelPacket, ptr %94, i64 0, i32 2
  store i16 %104, ptr %105, align 2, !tbaa !60
  %106 = getelementptr inbounds %struct._PixelPacket, ptr %95, i64 1
  %107 = getelementptr inbounds %struct._PixelPacket, ptr %94, i64 1
  %108 = add nuw nsw i64 %93, 1
  %109 = load i64, ptr %59, align 8, !tbaa !53
  %110 = icmp slt i64 %108, %109
  br i1 %110, label %92, label %111, !llvm.loop !61

111:                                              ; preds = %103, %89
  %112 = call ptr @DestroyCacheView(ptr noundef %85) #6
  %113 = call ptr @GetNextImageInList(ptr noundef nonnull %0) #6
  br label %114

114:                                              ; preds = %111, %83
  %115 = phi ptr [ %113, %111 ], [ %0, %83 ]
  %116 = icmp ne ptr %115, null
  %117 = select i1 %66, i1 %116, i1 false
  br i1 %117, label %118, label %149

118:                                              ; preds = %114
  %119 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %115, ptr noundef %2) #6
  %120 = getelementptr inbounds %struct._Image, ptr %115, i64 0, i32 7
  %121 = load i64, ptr %120, align 8, !tbaa !53
  %122 = call ptr @GetCacheViewVirtualPixels(ptr noundef %119, i64 noundef 0, i64 noundef %75, i64 noundef %121, i64 noundef 1, ptr noundef %2) #7
  %123 = icmp eq ptr %122, null
  br i1 %123, label %275, label %124

124:                                              ; preds = %118
  %125 = load i64, ptr %59, align 8, !tbaa !53
  %126 = icmp sgt i64 %125, 0
  br i1 %126, label %127, label %146

127:                                              ; preds = %124, %138
  %128 = phi i64 [ %143, %138 ], [ 0, %124 ]
  %129 = phi ptr [ %142, %138 ], [ %81, %124 ]
  %130 = phi ptr [ %141, %138 ], [ %122, %124 ]
  %131 = call float @GetPixelIntensity(ptr noundef %0, ptr noundef nonnull %130) #7
  %132 = fcmp ugt float %131, 0.000000e+00
  br i1 %132, label %133, label %138

133:                                              ; preds = %127
  %134 = fcmp ult float %131, 6.553500e+04
  br i1 %134, label %135, label %138

135:                                              ; preds = %133
  %136 = fadd float %131, 5.000000e-01
  %137 = fptoui float %136 to i16
  br label %138

138:                                              ; preds = %127, %133, %135
  %139 = phi i16 [ %137, %135 ], [ 0, %127 ], [ -1, %133 ]
  %140 = getelementptr inbounds %struct._PixelPacket, ptr %129, i64 0, i32 1
  store i16 %139, ptr %140, align 2, !tbaa !62
  %141 = getelementptr inbounds %struct._PixelPacket, ptr %130, i64 1
  %142 = getelementptr inbounds %struct._PixelPacket, ptr %129, i64 1
  %143 = add nuw nsw i64 %128, 1
  %144 = load i64, ptr %59, align 8, !tbaa !53
  %145 = icmp slt i64 %143, %144
  br i1 %145, label %127, label %146, !llvm.loop !63

146:                                              ; preds = %138, %124
  %147 = call ptr @DestroyCacheView(ptr noundef %119) #6
  %148 = call ptr @GetNextImageInList(ptr noundef nonnull %115) #6
  br label %149

149:                                              ; preds = %146, %114
  %150 = phi ptr [ %148, %146 ], [ %115, %114 ]
  %151 = icmp ne ptr %150, null
  %152 = select i1 %68, i1 %151, i1 false
  br i1 %152, label %153, label %183

153:                                              ; preds = %149
  %154 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %150, ptr noundef %2) #6
  %155 = getelementptr inbounds %struct._Image, ptr %150, i64 0, i32 7
  %156 = load i64, ptr %155, align 8, !tbaa !53
  %157 = call ptr @GetCacheViewVirtualPixels(ptr noundef %154, i64 noundef 0, i64 noundef %75, i64 noundef %156, i64 noundef 1, ptr noundef %2) #7
  %158 = icmp eq ptr %157, null
  br i1 %158, label %275, label %159

159:                                              ; preds = %153
  %160 = load i64, ptr %59, align 8, !tbaa !53
  %161 = icmp sgt i64 %160, 0
  br i1 %161, label %162, label %180

162:                                              ; preds = %159, %173
  %163 = phi i64 [ %177, %173 ], [ 0, %159 ]
  %164 = phi ptr [ %176, %173 ], [ %81, %159 ]
  %165 = phi ptr [ %175, %173 ], [ %157, %159 ]
  %166 = call float @GetPixelIntensity(ptr noundef %0, ptr noundef nonnull %165) #7
  %167 = fcmp ugt float %166, 0.000000e+00
  br i1 %167, label %168, label %173

168:                                              ; preds = %162
  %169 = fcmp ult float %166, 6.553500e+04
  br i1 %169, label %170, label %173

170:                                              ; preds = %168
  %171 = fadd float %166, 5.000000e-01
  %172 = fptoui float %171 to i16
  br label %173

173:                                              ; preds = %162, %168, %170
  %174 = phi i16 [ %172, %170 ], [ 0, %162 ], [ -1, %168 ]
  store i16 %174, ptr %164, align 2, !tbaa !64
  %175 = getelementptr inbounds %struct._PixelPacket, ptr %165, i64 1
  %176 = getelementptr inbounds %struct._PixelPacket, ptr %164, i64 1
  %177 = add nuw nsw i64 %163, 1
  %178 = load i64, ptr %59, align 8, !tbaa !53
  %179 = icmp slt i64 %177, %178
  br i1 %179, label %162, label %180, !llvm.loop !65

180:                                              ; preds = %173, %159
  %181 = call ptr @DestroyCacheView(ptr noundef %154) #6
  %182 = call ptr @GetNextImageInList(ptr noundef nonnull %150) #6
  br label %183

183:                                              ; preds = %180, %149
  %184 = phi ptr [ %182, %180 ], [ %150, %149 ]
  %185 = icmp ne ptr %184, null
  %186 = select i1 %49, i1 %185, i1 false
  br i1 %186, label %187, label %219

187:                                              ; preds = %183
  %188 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %184, ptr noundef %2) #6
  %189 = getelementptr inbounds %struct._Image, ptr %184, i64 0, i32 7
  %190 = load i64, ptr %189, align 8, !tbaa !53
  %191 = call ptr @GetCacheViewVirtualPixels(ptr noundef %188, i64 noundef 0, i64 noundef %75, i64 noundef %190, i64 noundef 1, ptr noundef %2) #7
  %192 = icmp eq ptr %191, null
  br i1 %192, label %275, label %193

193:                                              ; preds = %187
  %194 = load i64, ptr %59, align 8, !tbaa !53
  %195 = icmp sgt i64 %194, 0
  br i1 %195, label %196, label %216

196:                                              ; preds = %193, %207
  %197 = phi i64 [ %213, %207 ], [ 0, %193 ]
  %198 = phi ptr [ %212, %207 ], [ %81, %193 ]
  %199 = phi ptr [ %211, %207 ], [ %191, %193 ]
  %200 = call float @GetPixelIntensity(ptr noundef %0, ptr noundef nonnull %199) #7
  %201 = fcmp ugt float %200, 0.000000e+00
  br i1 %201, label %202, label %207

202:                                              ; preds = %196
  %203 = fcmp ult float %200, 6.553500e+04
  br i1 %203, label %204, label %207

204:                                              ; preds = %202
  %205 = fadd float %200, 5.000000e-01
  %206 = fptoui float %205 to i16
  br label %207

207:                                              ; preds = %196, %202, %204
  %208 = phi i16 [ %206, %204 ], [ 0, %196 ], [ -1, %202 ]
  %209 = xor i16 %208, -1
  %210 = getelementptr inbounds %struct._PixelPacket, ptr %198, i64 0, i32 3
  store i16 %209, ptr %210, align 2, !tbaa !66
  %211 = getelementptr inbounds %struct._PixelPacket, ptr %199, i64 1
  %212 = getelementptr inbounds %struct._PixelPacket, ptr %198, i64 1
  %213 = add nuw nsw i64 %197, 1
  %214 = load i64, ptr %59, align 8, !tbaa !53
  %215 = icmp slt i64 %213, %214
  br i1 %215, label %196, label %216, !llvm.loop !67

216:                                              ; preds = %207, %193
  %217 = call ptr @DestroyCacheView(ptr noundef %188) #6
  %218 = call ptr @GetNextImageInList(ptr noundef nonnull %184) #6
  br label %219

219:                                              ; preds = %216, %183
  %220 = phi ptr [ %218, %216 ], [ %184, %183 ]
  br i1 %70, label %260, label %221

221:                                              ; preds = %219
  %222 = load i32, ptr %43, align 4, !tbaa !58
  %223 = icmp eq i32 %222, 12
  %224 = icmp ne ptr %220, null
  %225 = select i1 %223, i1 %224, i1 false
  br i1 %225, label %226, label %260

226:                                              ; preds = %221
  %227 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %220, ptr noundef %2) #6
  %228 = getelementptr inbounds %struct._Image, ptr %220, i64 0, i32 7
  %229 = load i64, ptr %228, align 8, !tbaa !53
  %230 = call ptr @GetCacheViewVirtualPixels(ptr noundef %227, i64 noundef 0, i64 noundef %75, i64 noundef %229, i64 noundef 1, ptr noundef %2) #7
  %231 = icmp eq ptr %230, null
  br i1 %231, label %275, label %232

232:                                              ; preds = %226
  %233 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %54) #6
  %234 = load i64, ptr %59, align 8, !tbaa !53
  %235 = icmp sgt i64 %234, 0
  br i1 %235, label %236, label %257

236:                                              ; preds = %232
  %237 = icmp eq ptr %233, null
  br label %238

238:                                              ; preds = %236, %252
  %239 = phi i64 [ 0, %236 ], [ %254, %252 ]
  %240 = phi ptr [ %230, %236 ], [ %253, %252 ]
  br i1 %237, label %252, label %241

241:                                              ; preds = %238
  %242 = getelementptr inbounds i16, ptr %233, i64 %239
  %243 = call float @GetPixelIntensity(ptr noundef %0, ptr noundef nonnull %240) #7
  %244 = fcmp ugt float %243, 0.000000e+00
  br i1 %244, label %245, label %250

245:                                              ; preds = %241
  %246 = fcmp ult float %243, 6.553500e+04
  br i1 %246, label %247, label %250

247:                                              ; preds = %245
  %248 = fadd float %243, 5.000000e-01
  %249 = fptoui float %248 to i16
  br label %250

250:                                              ; preds = %241, %245, %247
  %251 = phi i16 [ %249, %247 ], [ 0, %241 ], [ -1, %245 ]
  store i16 %251, ptr %242, align 2, !tbaa !68
  br label %252

252:                                              ; preds = %250, %238
  %253 = getelementptr inbounds %struct._PixelPacket, ptr %240, i64 1
  %254 = add nuw nsw i64 %239, 1
  %255 = load i64, ptr %59, align 8, !tbaa !53
  %256 = icmp slt i64 %254, %255
  br i1 %256, label %238, label %257, !llvm.loop !69

257:                                              ; preds = %252, %232
  %258 = call ptr @DestroyCacheView(ptr noundef %227) #6
  %259 = call ptr @GetNextImageInList(ptr noundef nonnull %220) #6
  br label %260

260:                                              ; preds = %257, %221, %219
  %261 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %54, ptr noundef %2) #7
  %262 = icmp ne i32 %261, 0
  %263 = zext i1 %262 to i32
  %264 = load ptr, ptr %71, align 8, !tbaa !70
  %265 = icmp eq ptr %264, null
  br i1 %265, label %275, label %266

266:                                              ; preds = %260
  %267 = add nsw i64 %76, 1
  %268 = load i64, ptr %55, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #6
  %269 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.5, ptr noundef nonnull %72) #6
  %270 = load ptr, ptr %71, align 8, !tbaa !70
  %271 = load ptr, ptr %73, align 8, !tbaa !71
  %272 = call i32 %270(ptr noundef nonnull %4, i64 noundef %76, i64 noundef %268, ptr noundef %271) #6
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #6
  %273 = icmp eq i32 %272, 0
  %274 = select i1 %273, i32 0, i32 %263
  br label %275

275:                                              ; preds = %226, %260, %266, %187, %153, %118, %84, %79, %74
  %276 = phi i32 [ 0, %74 ], [ 0, %79 ], [ 1, %84 ], [ 1, %118 ], [ 1, %153 ], [ 1, %187 ], [ %274, %266 ], [ %263, %260 ], [ 1, %226 ]
  %277 = phi i64 [ %76, %74 ], [ %76, %79 ], [ %76, %84 ], [ %76, %118 ], [ %76, %153 ], [ %76, %187 ], [ %267, %266 ], [ %76, %260 ], [ %76, %226 ]
  %278 = add nuw nsw i64 %75, 1
  %279 = load i64, ptr %55, align 8, !tbaa !54
  %280 = icmp slt i64 %278, %279
  br i1 %280, label %74, label %281, !llvm.loop !72

281:                                              ; preds = %275
  %282 = icmp eq i32 %276, 0
  br label %283

283:                                              ; preds = %281, %52
  %284 = phi i1 [ false, %52 ], [ %282, %281 ]
  %285 = call ptr @DestroyCacheView(ptr noundef %54) #6
  %286 = getelementptr inbounds %struct._Image, ptr %34, i64 0, i32 1
  %287 = load i32, ptr %286, align 4, !tbaa !58
  switch i32 %287, label %290 [
    i32 19, label %288
    i32 17, label %288
    i32 2, label %288
  ]

288:                                              ; preds = %283, %283, %283
  %289 = call i32 @TransformImageColorspace(ptr noundef nonnull %34, i32 noundef 13) #6
  br label %290

290:                                              ; preds = %283, %288
  br i1 %284, label %291, label %293

291:                                              ; preds = %290
  %292 = call ptr @DestroyImage(ptr noundef nonnull %34) #6
  br label %293

293:                                              ; preds = %290, %291, %33, %39, %27
  %294 = phi ptr [ null, %27 ], [ null, %39 ], [ null, %33 ], [ %292, %291 ], [ %34, %290 ]
  ret ptr %294
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @GetNextImageInList(ptr noundef) local_unnamed_addr #2

declare ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SetImageStorageClass(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @InheritException(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @DestroyImage(ptr noundef) local_unnamed_addr #2

declare i32 @SetImageColorspace(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @SetImageBackgroundColor(ptr noundef) local_unnamed_addr #2

declare ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: hot
declare ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: hot
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: hot
declare float @GetPixelIntensity(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #2

declare ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: hot
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @TransformImageColorspace(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @GetImageAlphaChannel(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 312, ptr noundef nonnull @.str.6) #6
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !59
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define dso_local ptr @SeparateImage(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 362, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #6
  br label %10

10:                                               ; preds = %7, %3
  %11 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #6
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %10
  %14 = tail call i32 @SeparateImageChannel(ptr noundef nonnull %11, i32 noundef %1), !range !73
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = tail call ptr @DestroyImage(ptr noundef nonnull %11) #6
  br label %18

18:                                               ; preds = %13, %16, %10
  %19 = phi ptr [ null, %10 ], [ %17, %16 ], [ %11, %13 ]
  ret ptr %19
}

; Function Attrs: nounwind uwtable
define dso_local i32 @SeparateImageChannel(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 397, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #6
  br label %10

10:                                               ; preds = %7, %2
  %11 = tail call i32 @SetImageStorageClass(ptr noundef %0, i32 noundef 1) #6
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %183, label %13

13:                                               ; preds = %10
  %14 = icmp eq i32 %1, 128
  br i1 %14, label %15, label %17

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  store i32 1, ptr %16, align 8, !tbaa !59
  br label %17

17:                                               ; preds = %15, %13
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %19 = tail call ptr @AcquireAuthenticCacheView(ptr noundef %0, ptr noundef nonnull %18) #6
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %21 = load i64, ptr %20, align 8, !tbaa !54
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %176

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %26 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %27 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %28 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %29

29:                                               ; preds = %23, %170
  %30 = phi i64 [ 0, %23 ], [ %173, %170 ]
  %31 = phi i64 [ 0, %23 ], [ %172, %170 ]
  %32 = phi i32 [ 1, %23 ], [ %171, %170 ]
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %170, label %34

34:                                               ; preds = %29
  %35 = load i64, ptr %24, align 8, !tbaa !53
  %36 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %19, i64 noundef 0, i64 noundef %30, i64 noundef %35, i64 noundef 1, ptr noundef nonnull %18) #7
  %37 = icmp eq ptr %36, null
  br i1 %37, label %170, label %38

38:                                               ; preds = %34
  %39 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %19) #6
  switch i32 %1, label %155 [
    i32 1, label %55
    i32 2, label %52
    i32 4, label %49
    i32 8, label %46
    i32 32, label %95
    i32 64, label %43
    i32 128, label %40
  ]

40:                                               ; preds = %38
  %41 = load i64, ptr %24, align 8, !tbaa !53
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %137, label %155

43:                                               ; preds = %38
  %44 = load i64, ptr %24, align 8, !tbaa !53
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %126, label %155

46:                                               ; preds = %38
  %47 = load i64, ptr %24, align 8, !tbaa !53
  %48 = icmp sgt i64 %47, 0
  br i1 %48, label %85, label %155

49:                                               ; preds = %38
  %50 = load i64, ptr %24, align 8, !tbaa !53
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %76, label %155

52:                                               ; preds = %38
  %53 = load i64, ptr %24, align 8, !tbaa !53
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %67, label %155

55:                                               ; preds = %38
  %56 = load i64, ptr %24, align 8, !tbaa !53
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %155

58:                                               ; preds = %55, %58
  %59 = phi i64 [ %65, %58 ], [ 0, %55 ]
  %60 = phi ptr [ %64, %58 ], [ %36, %55 ]
  %61 = getelementptr inbounds %struct._PixelPacket, ptr %60, i64 0, i32 2
  %62 = load i16, ptr %61, align 2, !tbaa !60
  %63 = getelementptr inbounds %struct._PixelPacket, ptr %60, i64 0, i32 1
  store i16 %62, ptr %63, align 2, !tbaa !62
  store i16 %62, ptr %60, align 2, !tbaa !64
  %64 = getelementptr inbounds %struct._PixelPacket, ptr %60, i64 1
  %65 = add nuw nsw i64 %59, 1
  %66 = icmp eq i64 %65, %56
  br i1 %66, label %155, label %58, !llvm.loop !74

67:                                               ; preds = %52, %67
  %68 = phi i64 [ %74, %67 ], [ 0, %52 ]
  %69 = phi ptr [ %73, %67 ], [ %36, %52 ]
  %70 = getelementptr inbounds %struct._PixelPacket, ptr %69, i64 0, i32 1
  %71 = load i16, ptr %70, align 2, !tbaa !62
  %72 = getelementptr inbounds %struct._PixelPacket, ptr %69, i64 0, i32 2
  store i16 %71, ptr %72, align 2, !tbaa !60
  store i16 %71, ptr %69, align 2, !tbaa !64
  %73 = getelementptr inbounds %struct._PixelPacket, ptr %69, i64 1
  %74 = add nuw nsw i64 %68, 1
  %75 = icmp eq i64 %74, %53
  br i1 %75, label %155, label %67, !llvm.loop !75

76:                                               ; preds = %49, %76
  %77 = phi i64 [ %83, %76 ], [ 0, %49 ]
  %78 = phi ptr [ %82, %76 ], [ %36, %49 ]
  %79 = load i16, ptr %78, align 2, !tbaa !64
  %80 = getelementptr inbounds %struct._PixelPacket, ptr %78, i64 0, i32 2
  store i16 %79, ptr %80, align 2, !tbaa !60
  %81 = getelementptr inbounds %struct._PixelPacket, ptr %78, i64 0, i32 1
  store i16 %79, ptr %81, align 2, !tbaa !62
  %82 = getelementptr inbounds %struct._PixelPacket, ptr %78, i64 1
  %83 = add nuw nsw i64 %77, 1
  %84 = icmp eq i64 %83, %50
  br i1 %84, label %155, label %76, !llvm.loop !76

85:                                               ; preds = %46, %85
  %86 = phi i64 [ %93, %85 ], [ 0, %46 ]
  %87 = phi ptr [ %92, %85 ], [ %36, %46 ]
  %88 = getelementptr inbounds %struct._PixelPacket, ptr %87, i64 0, i32 3
  %89 = load i16, ptr %88, align 2, !tbaa !66
  %90 = getelementptr inbounds %struct._PixelPacket, ptr %87, i64 0, i32 2
  store i16 %89, ptr %90, align 2, !tbaa !60
  %91 = getelementptr inbounds %struct._PixelPacket, ptr %87, i64 0, i32 1
  store i16 %89, ptr %91, align 2, !tbaa !62
  store i16 %89, ptr %87, align 2, !tbaa !64
  %92 = getelementptr inbounds %struct._PixelPacket, ptr %87, i64 1
  %93 = add nuw nsw i64 %86, 1
  %94 = icmp eq i64 %93, %47
  br i1 %94, label %155, label %85, !llvm.loop !77

95:                                               ; preds = %38
  %96 = load i32, ptr %0, align 8, !tbaa !78
  %97 = icmp eq i32 %96, 2
  br i1 %97, label %101, label %98

98:                                               ; preds = %95
  %99 = load i32, ptr %25, align 4, !tbaa !58
  %100 = icmp eq i32 %99, 12
  br i1 %100, label %101, label %155

101:                                              ; preds = %98, %95
  %102 = load i64, ptr %24, align 8, !tbaa !53
  %103 = icmp sgt i64 %102, 0
  br i1 %103, label %104, label %155

104:                                              ; preds = %101
  %105 = icmp eq ptr %39, null
  br label %106

106:                                              ; preds = %104, %121
  %107 = phi i64 [ 0, %104 ], [ %124, %121 ]
  %108 = phi ptr [ %36, %104 ], [ %123, %121 ]
  %109 = getelementptr inbounds i16, ptr %39, i64 %107
  br i1 %105, label %114, label %110

110:                                              ; preds = %106
  %111 = load i16, ptr %109, align 2, !tbaa !68
  %112 = getelementptr inbounds %struct._PixelPacket, ptr %108, i64 0, i32 2
  store i16 %111, ptr %112, align 2, !tbaa !60
  %113 = load i16, ptr %109, align 2, !tbaa !68
  br label %116

114:                                              ; preds = %106
  %115 = getelementptr inbounds %struct._PixelPacket, ptr %108, i64 0, i32 2
  store i16 0, ptr %115, align 2, !tbaa !60
  br label %116

116:                                              ; preds = %114, %110
  %117 = phi i16 [ %113, %110 ], [ 0, %114 ]
  %118 = getelementptr inbounds %struct._PixelPacket, ptr %108, i64 0, i32 1
  store i16 %117, ptr %118, align 2, !tbaa !62
  br i1 %105, label %121, label %119

119:                                              ; preds = %116
  %120 = load i16, ptr %109, align 2, !tbaa !68
  br label %121

121:                                              ; preds = %116, %119
  %122 = phi i16 [ %120, %119 ], [ 0, %116 ]
  store i16 %122, ptr %108, align 2, !tbaa !64
  %123 = getelementptr inbounds %struct._PixelPacket, ptr %108, i64 1
  %124 = add nuw nsw i64 %107, 1
  %125 = icmp eq i64 %124, %102
  br i1 %125, label %155, label %106, !llvm.loop !79

126:                                              ; preds = %43, %126
  %127 = phi i64 [ %135, %126 ], [ 0, %43 ]
  %128 = phi ptr [ %134, %126 ], [ %36, %43 ]
  %129 = getelementptr inbounds %struct._PixelPacket, ptr %128, i64 0, i32 3
  %130 = load i16, ptr %129, align 2, !tbaa !66
  %131 = xor i16 %130, -1
  %132 = getelementptr inbounds %struct._PixelPacket, ptr %128, i64 0, i32 2
  store i16 %131, ptr %132, align 2, !tbaa !60
  %133 = getelementptr inbounds %struct._PixelPacket, ptr %128, i64 0, i32 1
  store i16 %131, ptr %133, align 2, !tbaa !62
  store i16 %131, ptr %128, align 2, !tbaa !64
  %134 = getelementptr inbounds %struct._PixelPacket, ptr %128, i64 1
  %135 = add nuw nsw i64 %127, 1
  %136 = icmp eq i64 %135, %44
  br i1 %136, label %155, label %126, !llvm.loop !80

137:                                              ; preds = %40, %147
  %138 = phi i64 [ %152, %147 ], [ 0, %40 ]
  %139 = phi ptr [ %151, %147 ], [ %36, %40 ]
  %140 = call float @GetPixelIntensity(ptr noundef %0, ptr noundef nonnull %139) #7
  %141 = fcmp ugt float %140, 0.000000e+00
  br i1 %141, label %142, label %147

142:                                              ; preds = %137
  %143 = fcmp ult float %140, 6.553500e+04
  br i1 %143, label %144, label %147

144:                                              ; preds = %142
  %145 = fadd float %140, 5.000000e-01
  %146 = fptoui float %145 to i16
  br label %147

147:                                              ; preds = %137, %142, %144
  %148 = phi i16 [ %146, %144 ], [ 0, %137 ], [ -1, %142 ]
  %149 = xor i16 %148, -1
  %150 = getelementptr inbounds %struct._PixelPacket, ptr %139, i64 0, i32 3
  store i16 %149, ptr %150, align 2, !tbaa !66
  %151 = getelementptr inbounds %struct._PixelPacket, ptr %139, i64 1
  %152 = add nuw nsw i64 %138, 1
  %153 = load i64, ptr %24, align 8, !tbaa !53
  %154 = icmp slt i64 %152, %153
  br i1 %154, label %137, label %155, !llvm.loop !81

155:                                              ; preds = %147, %126, %121, %85, %76, %67, %58, %40, %43, %101, %46, %49, %52, %55, %38, %98
  %156 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %19, ptr noundef nonnull %18) #7
  %157 = icmp ne i32 %156, 0
  %158 = zext i1 %157 to i32
  %159 = load ptr, ptr %26, align 8, !tbaa !70
  %160 = icmp eq ptr %159, null
  br i1 %160, label %170, label %161

161:                                              ; preds = %155
  %162 = add nsw i64 %31, 1
  %163 = load i64, ptr %20, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #6
  %164 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %3, i64 noundef 4096, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7, ptr noundef nonnull %27) #6
  %165 = load ptr, ptr %26, align 8, !tbaa !70
  %166 = load ptr, ptr %28, align 8, !tbaa !71
  %167 = call i32 %165(ptr noundef nonnull %3, i64 noundef %31, i64 noundef %163, ptr noundef %166) #6
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #6
  %168 = icmp eq i32 %167, 0
  %169 = select i1 %168, i32 0, i32 %158
  br label %170

170:                                              ; preds = %155, %161, %34, %29
  %171 = phi i32 [ 0, %29 ], [ 0, %34 ], [ %169, %161 ], [ %158, %155 ]
  %172 = phi i64 [ %31, %29 ], [ %31, %34 ], [ %162, %161 ], [ %31, %155 ]
  %173 = add nuw nsw i64 %30, 1
  %174 = load i64, ptr %20, align 8, !tbaa !54
  %175 = icmp slt i64 %173, %174
  br i1 %175, label %29, label %176, !llvm.loop !82

176:                                              ; preds = %170, %17
  %177 = phi i32 [ 1, %17 ], [ %171, %170 ]
  %178 = call ptr @DestroyCacheView(ptr noundef %19) #6
  br i1 %14, label %181, label %179

179:                                              ; preds = %176
  %180 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  store i32 0, ptr %180, align 8, !tbaa !59
  br label %181

181:                                              ; preds = %179, %176
  %182 = call i32 @SetImageColorspace(ptr noundef %0, i32 noundef 2) #6
  br label %183

183:                                              ; preds = %10, %181
  %184 = phi i32 [ %177, %181 ], [ 0, %10 ]
  ret i32 %184
}

; Function Attrs: nounwind uwtable
define dso_local ptr @SeparateImages(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 575, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #6
  br label %11

11:                                               ; preds = %8, %3
  %12 = tail call ptr @NewImageList() #6
  store ptr %12, ptr %4, align 8, !tbaa !83
  %13 = and i32 %1, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #6
  %17 = tail call i32 @SeparateImageChannel(ptr noundef %16, i32 noundef 1), !range !73
  call void @AppendImageToList(ptr noundef nonnull %4, ptr noundef %16) #6
  br label %18

18:                                               ; preds = %15, %11
  %19 = and i32 %1, 2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = call ptr @CloneImage(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #6
  %23 = call i32 @SeparateImageChannel(ptr noundef %22, i32 noundef 2), !range !73
  call void @AppendImageToList(ptr noundef nonnull %4, ptr noundef %22) #6
  br label %24

24:                                               ; preds = %21, %18
  %25 = and i32 %1, 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = call ptr @CloneImage(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #6
  %29 = call i32 @SeparateImageChannel(ptr noundef %28, i32 noundef 4), !range !73
  call void @AppendImageToList(ptr noundef nonnull %4, ptr noundef %28) #6
  br label %30

30:                                               ; preds = %27, %24
  %31 = and i32 %1, 32
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %35 = load i32, ptr %34, align 4, !tbaa !58
  %36 = icmp eq i32 %35, 12
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = call ptr @CloneImage(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #6
  %39 = call i32 @SeparateImageChannel(ptr noundef %38, i32 noundef 32), !range !73
  call void @AppendImageToList(ptr noundef nonnull %4, ptr noundef %38) #6
  br label %40

40:                                               ; preds = %37, %33, %30
  %41 = and i32 %1, 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = call ptr @CloneImage(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #6
  %45 = call i32 @SeparateImageChannel(ptr noundef %44, i32 noundef 64), !range !73
  call void @AppendImageToList(ptr noundef nonnull %4, ptr noundef %44) #6
  br label %46

46:                                               ; preds = %43, %40
  %47 = load ptr, ptr %4, align 8, !tbaa !83
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  ret ptr %47
}

declare ptr @NewImageList() local_unnamed_addr #2

declare void @AppendImageToList(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @SetImageAlphaChannel(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct._MagickPixelPacket, align 8
  %4 = alloca %struct._MagickPixelPacket, align 8
  %5 = alloca %struct._MagickPixelPacket, align 8
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !34
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 647, ptr noundef nonnull @.str.6) #6
  br label %11

11:                                               ; preds = %9, %2
  switch i32 %1, label %530 [
    i32 1, label %12
    i32 2, label %14
    i32 3, label %211
    i32 9, label %211
    i32 4, label %233
    i32 5, label %235
    i32 12, label %238
    i32 11, label %238
    i32 7, label %520
    i32 6, label %520
    i32 8, label %522
    i32 10, label %528
  ]

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  store i32 1, ptr %13, align 8, !tbaa !59
  br label %530

14:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #6
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %16 = load i32, ptr %15, align 8, !tbaa !59
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %208, label %18

18:                                               ; preds = %14
  %19 = tail call i32 @SetImageStorageClass(ptr noundef %0, i32 noundef 1) #6
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %208, label %21

21:                                               ; preds = %18
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %3) #6
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12, i32 2
  %24 = load i16, ptr %23, align 2, !tbaa !60
  %25 = uitofp i16 %24 to float
  %26 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  store float %25, ptr %26, align 8, !tbaa !84
  %27 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12, i32 1
  %28 = load i16, ptr %27, align 2, !tbaa !62
  %29 = uitofp i16 %28 to float
  %30 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 6
  store float %29, ptr %30, align 4, !tbaa !87
  %31 = load i16, ptr %22, align 2, !tbaa !64
  %32 = uitofp i16 %31 to float
  %33 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  store float %32, ptr %33, align 8, !tbaa !88
  %34 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12, i32 3
  %35 = load i16, ptr %34, align 2, !tbaa !66
  %36 = uitofp i16 %35 to float
  %37 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  store float %36, ptr %37, align 4, !tbaa !89
  %38 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %39 = load i32, ptr %38, align 4, !tbaa !58
  %40 = icmp eq i32 %39, 12
  br i1 %40, label %41, label %105

41:                                               ; preds = %21
  %42 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 1
  %43 = load i32, ptr %42, align 4, !tbaa !90
  %44 = icmp eq i32 %43, 13
  br i1 %44, label %55, label %45

45:                                               ; preds = %41
  %46 = uitofp i16 %24 to double
  %47 = fmul double %46, 0x3EF0001000100010
  %48 = fptrunc double %47 to float
  %49 = uitofp i16 %28 to double
  %50 = fmul double %49, 0x3EF0001000100010
  %51 = fptrunc double %50 to float
  %52 = uitofp i16 %31 to double
  %53 = fmul double %52, 0x3EF0001000100010
  %54 = fptrunc double %53 to float
  br label %61

55:                                               ; preds = %41
  %56 = call float @DecodePixelGamma(float noundef %25) #7
  %57 = load float, ptr %30, align 4, !tbaa !87
  %58 = call float @DecodePixelGamma(float noundef %57) #7
  %59 = load float, ptr %33, align 8, !tbaa !88
  %60 = call float @DecodePixelGamma(float noundef %59) #7
  br label %61

61:                                               ; preds = %55, %45
  %62 = phi float [ %54, %45 ], [ %60, %55 ]
  %63 = phi float [ %51, %45 ], [ %58, %55 ]
  %64 = phi float [ %48, %45 ], [ %56, %55 ]
  %65 = call float @llvm.fabs.f32(float %64)
  %66 = fpext float %65 to double
  %67 = fcmp olt double %66, 1.000000e-15
  br i1 %67, label %68, label %76

68:                                               ; preds = %61
  %69 = call float @llvm.fabs.f32(float %63)
  %70 = fpext float %69 to double
  %71 = fcmp olt double %70, 1.000000e-15
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = call float @llvm.fabs.f32(float %62)
  %74 = fpext float %73 to double
  %75 = fcmp olt double %74, 1.000000e-15
  br i1 %75, label %102, label %76

76:                                               ; preds = %72, %68, %61
  %77 = fsub float 1.000000e+00, %64
  %78 = fsub float 1.000000e+00, %63
  %79 = fsub float 1.000000e+00, %62
  %80 = fcmp olt float %78, %77
  %81 = select i1 %80, float %78, float %77
  %82 = fcmp olt float %79, %81
  %83 = select i1 %82, float %79, float %81
  %84 = fsub float %77, %83
  %85 = fpext float %84 to double
  %86 = fpext float %83 to double
  %87 = fsub double 1.000000e+00, %86
  %88 = fdiv double %85, %87
  %89 = fptrunc double %88 to float
  %90 = fsub float %78, %83
  %91 = fpext float %90 to double
  %92 = fdiv double %91, %87
  %93 = fptrunc double %92 to float
  %94 = fsub float %79, %83
  %95 = fpext float %94 to double
  %96 = fdiv double %95, %87
  %97 = fptrunc double %96 to float
  store i32 12, ptr %42, align 4, !tbaa !90
  %98 = fmul float %89, 6.553500e+04
  store float %98, ptr %26, align 8, !tbaa !84
  %99 = fmul float %93, 6.553500e+04
  store float %99, ptr %30, align 4, !tbaa !87
  %100 = fmul float %97, 6.553500e+04
  store float %100, ptr %33, align 8, !tbaa !88
  %101 = fmul float %83, 6.553500e+04
  br label %102

102:                                              ; preds = %72, %76
  %103 = phi float [ %101, %76 ], [ 6.553500e+04, %72 ]
  %104 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  store float %103, ptr %104, align 8, !tbaa !91
  br label %105

105:                                              ; preds = %102, %21
  %106 = load float, ptr %26, align 8, !tbaa !84
  %107 = fcmp ugt float %106, 0.000000e+00
  br i1 %107, label %108, label %113

108:                                              ; preds = %105
  %109 = fcmp ult float %106, 6.553500e+04
  br i1 %109, label %110, label %113

110:                                              ; preds = %108
  %111 = fadd float %106, 5.000000e-01
  %112 = fptoui float %111 to i16
  br label %113

113:                                              ; preds = %110, %108, %105
  %114 = phi i16 [ %112, %110 ], [ 0, %105 ], [ -1, %108 ]
  %115 = load float, ptr %30, align 4, !tbaa !87
  %116 = fcmp ugt float %115, 0.000000e+00
  br i1 %116, label %117, label %122

117:                                              ; preds = %113
  %118 = fcmp ult float %115, 6.553500e+04
  br i1 %118, label %119, label %122

119:                                              ; preds = %117
  %120 = fadd float %115, 5.000000e-01
  %121 = fptoui float %120 to i16
  br label %122

122:                                              ; preds = %119, %117, %113
  %123 = phi i16 [ %121, %119 ], [ 0, %113 ], [ -1, %117 ]
  %124 = load float, ptr %33, align 8, !tbaa !88
  %125 = fcmp ugt float %124, 0.000000e+00
  br i1 %125, label %126, label %131

126:                                              ; preds = %122
  %127 = fcmp ult float %124, 6.553500e+04
  br i1 %127, label %128, label %131

128:                                              ; preds = %126
  %129 = fadd float %124, 5.000000e-01
  %130 = fptoui float %129 to i16
  br label %131

131:                                              ; preds = %128, %126, %122
  %132 = phi i16 [ %130, %128 ], [ 0, %122 ], [ -1, %126 ]
  %133 = load i32, ptr %38, align 4, !tbaa !58
  %134 = icmp eq i32 %133, 12
  br i1 %134, label %138, label %135

135:                                              ; preds = %131
  %136 = load i32, ptr %0, align 8, !tbaa !78
  %137 = icmp eq i32 %136, 2
  br i1 %137, label %138, label %147

138:                                              ; preds = %131, %135
  %139 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  %140 = load float, ptr %139, align 8, !tbaa !91
  %141 = fcmp ugt float %140, 0.000000e+00
  br i1 %141, label %142, label %147

142:                                              ; preds = %138
  %143 = fcmp ult float %140, 6.553500e+04
  br i1 %143, label %144, label %147

144:                                              ; preds = %142
  %145 = fadd float %140, 5.000000e-01
  %146 = fptoui float %145 to i16
  br label %147

147:                                              ; preds = %138, %142, %144, %135
  %148 = phi i16 [ 0, %135 ], [ %146, %144 ], [ 0, %138 ], [ -1, %142 ]
  %149 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %150 = call ptr @AcquireAuthenticCacheView(ptr noundef %0, ptr noundef nonnull %149) #6
  %151 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %152 = load i64, ptr %151, align 8, !tbaa !54
  %153 = icmp sgt i64 %152, 0
  br i1 %153, label %154, label %205

154:                                              ; preds = %147
  %155 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  br label %156

156:                                              ; preds = %154, %200
  %157 = phi i32 [ 1, %154 ], [ %201, %200 ]
  %158 = phi i64 [ 0, %154 ], [ %202, %200 ]
  %159 = icmp eq i32 %157, 0
  br i1 %159, label %200, label %160

160:                                              ; preds = %156
  %161 = load i64, ptr %155, align 8, !tbaa !53
  %162 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %150, i64 noundef 0, i64 noundef %158, i64 noundef %161, i64 noundef 1, ptr noundef nonnull %149) #7
  %163 = icmp eq ptr %162, null
  br i1 %163, label %200, label %164

164:                                              ; preds = %160
  %165 = load i64, ptr %155, align 8, !tbaa !53
  %166 = icmp sgt i64 %165, 0
  br i1 %166, label %167, label %180

167:                                              ; preds = %164, %176
  %168 = phi i64 [ %178, %176 ], [ 0, %164 ]
  %169 = phi ptr [ %177, %176 ], [ %162, %164 ]
  %170 = getelementptr inbounds %struct._PixelPacket, ptr %169, i64 0, i32 3
  %171 = load i16, ptr %170, align 2, !tbaa !66
  %172 = icmp eq i16 %171, -1
  br i1 %172, label %173, label %176

173:                                              ; preds = %167
  %174 = getelementptr inbounds %struct._PixelPacket, ptr %169, i64 0, i32 2
  store i16 %114, ptr %174, align 2, !tbaa !60
  %175 = getelementptr inbounds %struct._PixelPacket, ptr %169, i64 0, i32 1
  store i16 %123, ptr %175, align 2, !tbaa !62
  store i16 %132, ptr %169, align 2, !tbaa !64
  br label %176

176:                                              ; preds = %173, %167
  %177 = getelementptr inbounds %struct._PixelPacket, ptr %169, i64 1
  %178 = add nuw nsw i64 %168, 1
  %179 = icmp eq i64 %178, %165
  br i1 %179, label %180, label %167, !llvm.loop !92

180:                                              ; preds = %176, %164
  %181 = load i32, ptr %38, align 4, !tbaa !58
  %182 = icmp eq i32 %181, 12
  br i1 %182, label %183, label %196

183:                                              ; preds = %180
  %184 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %150) #6
  %185 = load i64, ptr %155, align 8, !tbaa !53
  %186 = icmp sgt i64 %185, 0
  br i1 %186, label %187, label %196

187:                                              ; preds = %183
  %188 = icmp eq ptr %184, null
  br label %189

189:                                              ; preds = %187, %193
  %190 = phi i64 [ 0, %187 ], [ %194, %193 ]
  br i1 %188, label %193, label %191

191:                                              ; preds = %189
  %192 = getelementptr inbounds i16, ptr %184, i64 %190
  store i16 %148, ptr %192, align 2, !tbaa !68
  br label %193

193:                                              ; preds = %189, %191
  %194 = add nuw nsw i64 %190, 1
  %195 = icmp eq i64 %194, %185
  br i1 %195, label %196, label %189, !llvm.loop !93

196:                                              ; preds = %193, %183, %180
  %197 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %150, ptr noundef nonnull %149) #7
  %198 = icmp ne i32 %197, 0
  %199 = zext i1 %198 to i32
  br label %200

200:                                              ; preds = %160, %156, %196
  %201 = phi i32 [ %199, %196 ], [ 0, %156 ], [ 0, %160 ]
  %202 = add nuw nsw i64 %158, 1
  %203 = load i64, ptr %151, align 8, !tbaa !54
  %204 = icmp slt i64 %202, %203
  br i1 %204, label %156, label %205, !llvm.loop !94

205:                                              ; preds = %200, %147
  %206 = phi i32 [ 1, %147 ], [ %201, %200 ]
  %207 = call ptr @DestroyCacheView(ptr noundef %150) #6
  br label %208

208:                                              ; preds = %18, %14, %205
  %209 = phi i1 [ false, %205 ], [ true, %14 ], [ true, %18 ]
  %210 = phi i32 [ %206, %205 ], [ undef, %14 ], [ undef, %18 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #6
  br i1 %209, label %530, label %536

211:                                              ; preds = %11, %11
  %212 = tail call i32 @SeparateImageChannel(ptr noundef %0, i32 noundef 128), !range !73
  %213 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  store i32 1, ptr %213, align 8, !tbaa !59
  %214 = icmp eq i32 %1, 9
  br i1 %214, label %215, label %530

215:                                              ; preds = %211
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #6
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %4) #6
  %216 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12
  %217 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12, i32 2
  %218 = load i16, ptr %217, align 2, !tbaa !60
  %219 = uitofp i16 %218 to float
  %220 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 5
  store float %219, ptr %220, align 8, !tbaa !84
  %221 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12, i32 1
  %222 = load i16, ptr %221, align 2, !tbaa !62
  %223 = uitofp i16 %222 to float
  %224 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 6
  store float %223, ptr %224, align 4, !tbaa !87
  %225 = load i16, ptr %216, align 2, !tbaa !64
  %226 = uitofp i16 %225 to float
  %227 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 7
  store float %226, ptr %227, align 8, !tbaa !88
  %228 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12, i32 3
  %229 = load i16, ptr %228, align 2, !tbaa !66
  %230 = uitofp i16 %229 to float
  %231 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 8
  store float %230, ptr %231, align 4, !tbaa !89
  %232 = call i32 @LevelColorsImage(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %4, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #6
  br label %530

233:                                              ; preds = %11
  %234 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  store i32 0, ptr %234, align 8, !tbaa !59
  br label %530

235:                                              ; preds = %11
  %236 = tail call i32 @SeparateImageChannel(ptr noundef %0, i32 noundef 64), !range !73
  %237 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  store i32 0, ptr %237, align 8, !tbaa !59
  br label %530

238:                                              ; preds = %11, %11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #6
  %239 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %240 = load i32, ptr %239, align 8, !tbaa !59
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %517, label %242

242:                                              ; preds = %238
  %243 = tail call i32 @SetImageStorageClass(ptr noundef %0, i32 noundef 1) #6
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %517, label %245

245:                                              ; preds = %242
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %5) #6
  %246 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12
  %247 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12, i32 2
  %248 = load i16, ptr %247, align 2, !tbaa !60
  %249 = uitofp i16 %248 to float
  %250 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 5
  store float %249, ptr %250, align 8, !tbaa !84
  %251 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12, i32 1
  %252 = load i16, ptr %251, align 2, !tbaa !62
  %253 = uitofp i16 %252 to float
  %254 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 6
  store float %253, ptr %254, align 4, !tbaa !87
  %255 = load i16, ptr %246, align 2, !tbaa !64
  %256 = uitofp i16 %255 to float
  %257 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 7
  store float %256, ptr %257, align 8, !tbaa !88
  %258 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12, i32 3
  %259 = load i16, ptr %258, align 2, !tbaa !66
  %260 = uitofp i16 %259 to float
  %261 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 8
  store float %260, ptr %261, align 4, !tbaa !89
  %262 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %263 = load i32, ptr %262, align 4, !tbaa !58
  %264 = icmp eq i32 %263, 12
  br i1 %264, label %265, label %329

265:                                              ; preds = %245
  %266 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 1
  %267 = load i32, ptr %266, align 4, !tbaa !90
  %268 = icmp eq i32 %267, 13
  br i1 %268, label %279, label %269

269:                                              ; preds = %265
  %270 = uitofp i16 %248 to double
  %271 = fmul double %270, 0x3EF0001000100010
  %272 = fptrunc double %271 to float
  %273 = uitofp i16 %252 to double
  %274 = fmul double %273, 0x3EF0001000100010
  %275 = fptrunc double %274 to float
  %276 = uitofp i16 %255 to double
  %277 = fmul double %276, 0x3EF0001000100010
  %278 = fptrunc double %277 to float
  br label %285

279:                                              ; preds = %265
  %280 = call float @DecodePixelGamma(float noundef %249) #7
  %281 = load float, ptr %254, align 4, !tbaa !87
  %282 = call float @DecodePixelGamma(float noundef %281) #7
  %283 = load float, ptr %257, align 8, !tbaa !88
  %284 = call float @DecodePixelGamma(float noundef %283) #7
  br label %285

285:                                              ; preds = %279, %269
  %286 = phi float [ %278, %269 ], [ %284, %279 ]
  %287 = phi float [ %275, %269 ], [ %282, %279 ]
  %288 = phi float [ %272, %269 ], [ %280, %279 ]
  %289 = call float @llvm.fabs.f32(float %288)
  %290 = fpext float %289 to double
  %291 = fcmp olt double %290, 1.000000e-15
  br i1 %291, label %292, label %300

292:                                              ; preds = %285
  %293 = call float @llvm.fabs.f32(float %287)
  %294 = fpext float %293 to double
  %295 = fcmp olt double %294, 1.000000e-15
  br i1 %295, label %296, label %300

296:                                              ; preds = %292
  %297 = call float @llvm.fabs.f32(float %286)
  %298 = fpext float %297 to double
  %299 = fcmp olt double %298, 1.000000e-15
  br i1 %299, label %326, label %300

300:                                              ; preds = %296, %292, %285
  %301 = fsub float 1.000000e+00, %288
  %302 = fsub float 1.000000e+00, %287
  %303 = fsub float 1.000000e+00, %286
  %304 = fcmp olt float %302, %301
  %305 = select i1 %304, float %302, float %301
  %306 = fcmp olt float %303, %305
  %307 = select i1 %306, float %303, float %305
  %308 = fsub float %301, %307
  %309 = fpext float %308 to double
  %310 = fpext float %307 to double
  %311 = fsub double 1.000000e+00, %310
  %312 = fdiv double %309, %311
  %313 = fptrunc double %312 to float
  %314 = fsub float %302, %307
  %315 = fpext float %314 to double
  %316 = fdiv double %315, %311
  %317 = fptrunc double %316 to float
  %318 = fsub float %303, %307
  %319 = fpext float %318 to double
  %320 = fdiv double %319, %311
  %321 = fptrunc double %320 to float
  store i32 12, ptr %266, align 4, !tbaa !90
  %322 = fmul float %313, 6.553500e+04
  store float %322, ptr %250, align 8, !tbaa !84
  %323 = fmul float %317, 6.553500e+04
  store float %323, ptr %254, align 4, !tbaa !87
  %324 = fmul float %321, 6.553500e+04
  store float %324, ptr %257, align 8, !tbaa !88
  %325 = fmul float %307, 6.553500e+04
  br label %326

326:                                              ; preds = %296, %300
  %327 = phi float [ %325, %300 ], [ 6.553500e+04, %296 ]
  %328 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 9
  store float %327, ptr %328, align 8, !tbaa !91
  br label %329

329:                                              ; preds = %326, %245
  %330 = load float, ptr %250, align 8, !tbaa !84
  %331 = fcmp ugt float %330, 0.000000e+00
  br i1 %331, label %332, label %338

332:                                              ; preds = %329
  %333 = fcmp ult float %330, 6.553500e+04
  br i1 %333, label %334, label %338

334:                                              ; preds = %332
  %335 = fadd float %330, 5.000000e-01
  %336 = fptoui float %335 to i16
  %337 = uitofp i16 %336 to double
  br label %338

338:                                              ; preds = %334, %332, %329
  %339 = phi double [ %337, %334 ], [ 0.000000e+00, %329 ], [ 6.553500e+04, %332 ]
  %340 = load float, ptr %254, align 4, !tbaa !87
  %341 = fcmp ugt float %340, 0.000000e+00
  br i1 %341, label %342, label %348

342:                                              ; preds = %338
  %343 = fcmp ult float %340, 6.553500e+04
  br i1 %343, label %344, label %348

344:                                              ; preds = %342
  %345 = fadd float %340, 5.000000e-01
  %346 = fptoui float %345 to i16
  %347 = uitofp i16 %346 to double
  br label %348

348:                                              ; preds = %344, %342, %338
  %349 = phi double [ %347, %344 ], [ 0.000000e+00, %338 ], [ 6.553500e+04, %342 ]
  %350 = load float, ptr %257, align 8, !tbaa !88
  %351 = fcmp ugt float %350, 0.000000e+00
  br i1 %351, label %352, label %358

352:                                              ; preds = %348
  %353 = fcmp ult float %350, 6.553500e+04
  br i1 %353, label %354, label %358

354:                                              ; preds = %352
  %355 = fadd float %350, 5.000000e-01
  %356 = fptoui float %355 to i16
  %357 = uitofp i16 %356 to double
  br label %358

358:                                              ; preds = %354, %352, %348
  %359 = phi double [ %357, %354 ], [ 0.000000e+00, %348 ], [ 6.553500e+04, %352 ]
  %360 = load float, ptr %261, align 4, !tbaa !89
  %361 = fcmp ugt float %360, 0.000000e+00
  br i1 %361, label %362, label %368

362:                                              ; preds = %358
  %363 = fcmp ult float %360, 6.553500e+04
  br i1 %363, label %364, label %368

364:                                              ; preds = %362
  %365 = fadd float %360, 5.000000e-01
  %366 = fptoui float %365 to i16
  %367 = uitofp i16 %366 to double
  br label %368

368:                                              ; preds = %364, %362, %358
  %369 = phi double [ %367, %364 ], [ 0.000000e+00, %358 ], [ 6.553500e+04, %362 ]
  %370 = load i32, ptr %262, align 4, !tbaa !58
  %371 = icmp eq i32 %370, 12
  br i1 %371, label %375, label %372

372:                                              ; preds = %368
  %373 = load i32, ptr %0, align 8, !tbaa !78
  %374 = icmp eq i32 %373, 2
  br i1 %374, label %375, label %384

375:                                              ; preds = %368, %372
  %376 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 9
  %377 = load float, ptr %376, align 8, !tbaa !91
  %378 = fcmp ugt float %377, 0.000000e+00
  br i1 %378, label %379, label %384

379:                                              ; preds = %375
  %380 = fcmp ult float %377, 6.553500e+04
  br i1 %380, label %381, label %384

381:                                              ; preds = %379
  %382 = fadd float %377, 5.000000e-01
  %383 = fptoui float %382 to i16
  br label %384

384:                                              ; preds = %375, %379, %381, %372
  %385 = phi i16 [ 0, %372 ], [ %383, %381 ], [ 0, %375 ], [ -1, %379 ]
  %386 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %387 = call ptr @AcquireAuthenticCacheView(ptr noundef %0, ptr noundef nonnull %386) #6
  %388 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %389 = load i64, ptr %388, align 8, !tbaa !54
  %390 = icmp sgt i64 %389, 0
  br i1 %390, label %391, label %514

391:                                              ; preds = %384
  %392 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %393 = call double @llvm.fmuladd.f64(double %369, double 0xBEF0001000100010, double 1.000000e+00)
  %394 = fmul double %393, %339
  %395 = fmul double %394, 0x3EF0001000100010
  %396 = fmul double %393, %349
  %397 = fmul double %396, 0x3EF0001000100010
  %398 = fmul double %393, %359
  %399 = fmul double %398, 0x3EF0001000100010
  br label %400

400:                                              ; preds = %391, %509
  %401 = phi i64 [ 0, %391 ], [ %511, %509 ]
  %402 = phi i32 [ 1, %391 ], [ %510, %509 ]
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %509, label %404

404:                                              ; preds = %400
  %405 = load i64, ptr %392, align 8, !tbaa !53
  %406 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %387, i64 noundef 0, i64 noundef %401, i64 noundef %405, i64 noundef 1, ptr noundef nonnull %386) #7
  %407 = icmp eq ptr %406, null
  br i1 %407, label %509, label %408

408:                                              ; preds = %404
  %409 = load i64, ptr %392, align 8, !tbaa !53
  %410 = icmp sgt i64 %409, 0
  br i1 %410, label %411, label %489

411:                                              ; preds = %408, %484
  %412 = phi i64 [ %487, %484 ], [ 0, %408 ]
  %413 = phi ptr [ %486, %484 ], [ %406, %408 ]
  %414 = getelementptr inbounds %struct._PixelPacket, ptr %413, i64 0, i32 3
  %415 = load i16, ptr %414, align 2, !tbaa !66
  %416 = uitofp i16 %415 to double
  %417 = fmul double %416, 0xBDF0002000300040
  %418 = call double @llvm.fmuladd.f64(double %417, double %369, double 1.000000e+00)
  %419 = fcmp olt double %418, 0.000000e+00
  %420 = select i1 %419, double 0.000000e+00, double %418
  %421 = fsub double 1.000000e+00, %420
  %422 = fmul double %421, 6.553500e+04
  %423 = fcmp ult double %420, 1.000000e-15
  %424 = fdiv double 1.000000e+00, %420
  %425 = select i1 %423, double 0x430C6BF52633FFFF, double %424
  %426 = getelementptr inbounds %struct._PixelPacket, ptr %413, i64 0, i32 2
  %427 = load i16, ptr %426, align 2, !tbaa !60
  %428 = call double @llvm.fmuladd.f64(double %416, double 0xBEF0001000100010, double 1.000000e+00)
  %429 = uitofp i16 %427 to double
  %430 = fmul double %395, %416
  %431 = call double @llvm.fmuladd.f64(double %428, double %429, double %430)
  %432 = fptrunc double %431 to float
  %433 = fpext float %432 to double
  %434 = fmul double %425, %433
  %435 = fptrunc double %434 to float
  %436 = fcmp ugt float %435, 0.000000e+00
  br i1 %436, label %437, label %442

437:                                              ; preds = %411
  %438 = fcmp ult float %435, 6.553500e+04
  br i1 %438, label %439, label %442

439:                                              ; preds = %437
  %440 = fadd float %435, 5.000000e-01
  %441 = fptoui float %440 to i16
  br label %442

442:                                              ; preds = %411, %437, %439
  %443 = phi i16 [ %441, %439 ], [ 0, %411 ], [ -1, %437 ]
  store i16 %443, ptr %426, align 2, !tbaa !60
  %444 = getelementptr inbounds %struct._PixelPacket, ptr %413, i64 0, i32 1
  %445 = load i16, ptr %444, align 2, !tbaa !62
  %446 = uitofp i16 %445 to double
  %447 = fmul double %397, %416
  %448 = call double @llvm.fmuladd.f64(double %428, double %446, double %447)
  %449 = fptrunc double %448 to float
  %450 = fpext float %449 to double
  %451 = fmul double %425, %450
  %452 = fptrunc double %451 to float
  %453 = fcmp ugt float %452, 0.000000e+00
  br i1 %453, label %454, label %459

454:                                              ; preds = %442
  %455 = fcmp ult float %452, 6.553500e+04
  br i1 %455, label %456, label %459

456:                                              ; preds = %454
  %457 = fadd float %452, 5.000000e-01
  %458 = fptoui float %457 to i16
  br label %459

459:                                              ; preds = %442, %454, %456
  %460 = phi i16 [ %458, %456 ], [ 0, %442 ], [ -1, %454 ]
  store i16 %460, ptr %444, align 2, !tbaa !62
  %461 = load i16, ptr %413, align 2, !tbaa !64
  %462 = uitofp i16 %461 to double
  %463 = fmul double %399, %416
  %464 = call double @llvm.fmuladd.f64(double %428, double %462, double %463)
  %465 = fptrunc double %464 to float
  %466 = fpext float %465 to double
  %467 = fmul double %425, %466
  %468 = fptrunc double %467 to float
  %469 = fcmp ugt float %468, 0.000000e+00
  br i1 %469, label %470, label %475

470:                                              ; preds = %459
  %471 = fcmp ult float %468, 6.553500e+04
  br i1 %471, label %472, label %475

472:                                              ; preds = %470
  %473 = fadd float %468, 5.000000e-01
  %474 = fptoui float %473 to i16
  br label %475

475:                                              ; preds = %459, %470, %472
  %476 = phi i16 [ %474, %472 ], [ 0, %459 ], [ -1, %470 ]
  store i16 %476, ptr %413, align 2, !tbaa !64
  %477 = fptrunc double %422 to float
  %478 = fcmp ugt float %477, 0.000000e+00
  br i1 %478, label %479, label %484

479:                                              ; preds = %475
  %480 = fcmp ult float %477, 6.553500e+04
  br i1 %480, label %481, label %484

481:                                              ; preds = %479
  %482 = fadd float %477, 5.000000e-01
  %483 = fptoui float %482 to i16
  br label %484

484:                                              ; preds = %475, %479, %481
  %485 = phi i16 [ %483, %481 ], [ 0, %475 ], [ -1, %479 ]
  store i16 %485, ptr %414, align 2, !tbaa !66
  %486 = getelementptr inbounds %struct._PixelPacket, ptr %413, i64 1
  %487 = add nuw nsw i64 %412, 1
  %488 = icmp eq i64 %487, %409
  br i1 %488, label %489, label %411, !llvm.loop !95

489:                                              ; preds = %484, %408
  %490 = load i32, ptr %262, align 4, !tbaa !58
  %491 = icmp eq i32 %490, 12
  br i1 %491, label %492, label %505

492:                                              ; preds = %489
  %493 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %387) #6
  %494 = load i64, ptr %392, align 8, !tbaa !53
  %495 = icmp sgt i64 %494, 0
  br i1 %495, label %496, label %505

496:                                              ; preds = %492
  %497 = icmp eq ptr %493, null
  br label %498

498:                                              ; preds = %496, %502
  %499 = phi i64 [ 0, %496 ], [ %503, %502 ]
  br i1 %497, label %502, label %500

500:                                              ; preds = %498
  %501 = getelementptr inbounds i16, ptr %493, i64 %499
  store i16 %385, ptr %501, align 2, !tbaa !68
  br label %502

502:                                              ; preds = %498, %500
  %503 = add nuw nsw i64 %499, 1
  %504 = icmp eq i64 %503, %494
  br i1 %504, label %505, label %498, !llvm.loop !96

505:                                              ; preds = %502, %492, %489
  %506 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %387, ptr noundef nonnull %386) #7
  %507 = icmp ne i32 %506, 0
  %508 = zext i1 %507 to i32
  br label %509

509:                                              ; preds = %404, %400, %505
  %510 = phi i32 [ %508, %505 ], [ 0, %400 ], [ 0, %404 ]
  %511 = add nuw nsw i64 %401, 1
  %512 = load i64, ptr %388, align 8, !tbaa !54
  %513 = icmp slt i64 %511, %512
  br i1 %513, label %400, label %514, !llvm.loop !97

514:                                              ; preds = %509, %384
  %515 = phi i32 [ 1, %384 ], [ %510, %509 ]
  %516 = call ptr @DestroyCacheView(ptr noundef %387) #6
  br label %517

517:                                              ; preds = %242, %238, %514
  %518 = phi i1 [ false, %514 ], [ true, %238 ], [ true, %242 ]
  %519 = phi i32 [ %515, %514 ], [ undef, %238 ], [ undef, %242 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #6
  br i1 %518, label %530, label %536

520:                                              ; preds = %11, %11
  %521 = tail call i32 @SetImageOpacity(ptr noundef %0, i16 noundef zeroext 0) #6
  br label %530

522:                                              ; preds = %11
  %523 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %524 = load i32, ptr %523, align 8, !tbaa !59
  %525 = icmp eq i32 %524, 0
  br i1 %525, label %526, label %530

526:                                              ; preds = %522
  %527 = tail call i32 @SetImageOpacity(ptr noundef %0, i16 noundef zeroext 0) #6
  br label %530

528:                                              ; preds = %11
  %529 = tail call i32 @SetImageOpacity(ptr noundef %0, i16 noundef zeroext -1) #6
  br label %530

530:                                              ; preds = %522, %526, %211, %215, %208, %517, %11, %528, %520, %235, %233, %12
  %531 = phi i32 [ 1, %11 ], [ %529, %528 ], [ %527, %526 ], [ 1, %522 ], [ %521, %520 ], [ 1, %517 ], [ %236, %235 ], [ 1, %233 ], [ %212, %215 ], [ %212, %211 ], [ 1, %208 ], [ 1, %12 ]
  %532 = icmp eq i32 %531, 0
  br i1 %532, label %536, label %533

533:                                              ; preds = %530
  %534 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %535 = call i32 @SyncImagePixelCache(ptr noundef %0, ptr noundef nonnull %534) #6
  br label %536

536:                                              ; preds = %530, %208, %517, %533
  %537 = phi i32 [ %535, %533 ], [ %519, %517 ], [ %210, %208 ], [ 0, %530 ]
  ret i32 %537
}

declare void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @LevelColorsImage(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

declare i32 @SetImageOpacity(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

declare hidden i32 @SyncImagePixelCache(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: hot
declare float @DecodePixelGamma(float noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { hot "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { hot nounwind }

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
!55 = distinct !{!55, !56, !57}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!"llvm.loop.unroll.disable"}
!58 = !{!35, !36, i64 4}
!59 = !{!35, !36, i64 32}
!60 = !{!41, !42, i64 4}
!61 = distinct !{!61, !56, !57}
!62 = !{!41, !42, i64 2}
!63 = distinct !{!63, !56, !57}
!64 = !{!41, !42, i64 0}
!65 = distinct !{!65, !56, !57}
!66 = !{!41, !42, i64 6}
!67 = distinct !{!67, !56, !57}
!68 = !{!42, !42, i64 0}
!69 = distinct !{!69, !56, !57}
!70 = !{!35, !40, i64 568}
!71 = !{!35, !40, i64 576}
!72 = distinct !{!72, !56, !57}
!73 = !{i32 0, i32 2}
!74 = distinct !{!74, !56, !57}
!75 = distinct !{!75, !56, !57}
!76 = distinct !{!76, !56, !57}
!77 = distinct !{!77, !56, !57}
!78 = !{!35, !36, i64 0}
!79 = distinct !{!79, !56, !57}
!80 = distinct !{!80, !56, !57}
!81 = distinct !{!81, !56, !57}
!82 = distinct !{!82, !56, !57}
!83 = !{!40, !40, i64 0}
!84 = !{!85, !86, i64 32}
!85 = !{!"_MagickPixelPacket", !36, i64 0, !36, i64 4, !36, i64 8, !43, i64 16, !39, i64 24, !86, i64 32, !86, i64 36, !86, i64 40, !86, i64 44, !86, i64 48}
!86 = !{!"float", !37, i64 0}
!87 = !{!85, !86, i64 36}
!88 = !{!85, !86, i64 40}
!89 = !{!85, !86, i64 44}
!90 = !{!85, !36, i64 4}
!91 = !{!85, !86, i64 48}
!92 = distinct !{!92, !56, !57}
!93 = distinct !{!93, !56, !57}
!94 = distinct !{!94, !56, !57}
!95 = distinct !{!95, !56, !57}
!96 = distinct !{!96, !56, !57}
!97 = distinct !{!97, !56, !57}
