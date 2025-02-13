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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CompareImages(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call ptr @CompareImageChannels(ptr noundef %0, ptr noundef %1, i32 noundef 47, i32 noundef %2, ptr noundef %3, ptr noundef %4) #16
  ret ptr %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CompareImageChannels(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct._MagickPixelPacket, align 8
  %8 = alloca %struct._MagickPixelPacket, align 8
  %9 = alloca %struct._MagickPixelPacket, align 8
  %10 = alloca %struct._MagickPixelPacket, align 8
  %11 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %9) #17
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %13 = load i32, ptr %12, align 8, !tbaa !34
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %6
  store double 0.000000e+00, ptr %4, align 8, !tbaa !53
  br label %23

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %18 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 152, ptr noundef nonnull @.str.2, ptr noundef nonnull %17) #18
  %19 = load i32, ptr %12, align 8, !tbaa !34
  store double 0.000000e+00, ptr %4, align 8, !tbaa !53
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 158, ptr noundef nonnull @.str.2, ptr noundef nonnull %17) #18
  br label %23

23:                                               ; preds = %15, %21, %16
  %24 = icmp eq i32 %3, 255
  br i1 %24, label %40, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  %27 = load i64, ptr %26, align 8, !tbaa !54
  %28 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %29 = load i64, ptr %28, align 8, !tbaa !54
  %30 = icmp eq i64 %27, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 8
  %33 = load i64, ptr %32, align 8, !tbaa !55
  %34 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %35 = load i64, ptr %34, align 8, !tbaa !55
  %36 = icmp eq i64 %33, %35
  br i1 %36, label %40, label %37

37:                                               ; preds = %31, %25
  %38 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %39 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 162, i32 noundef 465, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %38) #18
  br label %236

40:                                               ; preds = %31, %23
  %41 = tail call i32 @GetImageChannelDistortion(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %4, ptr noundef %5) #16, !range !56
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %236, label %43

43:                                               ; preds = %40
  %44 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %5) #18
  %45 = icmp eq ptr %44, null
  br i1 %45, label %236, label %46

46:                                               ; preds = %43
  %47 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %44, i32 noundef 6) #18
  %48 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %49 = load i64, ptr %48, align 8, !tbaa !54
  %50 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %51 = load i64, ptr %50, align 8, !tbaa !55
  %52 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %49, i64 noundef %51, i32 noundef 1, ptr noundef %5) #18
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = tail call ptr @DestroyImage(ptr noundef nonnull %44) #18
  br label %236

56:                                               ; preds = %46
  %57 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %52, i32 noundef 1) #18
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct._Image, ptr %52, i64 0, i32 58
  tail call void @InheritException(ptr noundef %5, ptr noundef nonnull %60) #18
  %61 = tail call ptr @DestroyImage(ptr noundef nonnull %44) #18
  %62 = tail call ptr @DestroyImage(ptr noundef nonnull %52) #18
  br label %236

63:                                               ; preds = %56
  %64 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %52, i32 noundef 6) #18
  %65 = call i32 @QueryMagickColor(ptr noundef nonnull @.str.5, ptr noundef nonnull %7, ptr noundef %5) #18
  %66 = call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.6) #18
  %67 = icmp eq ptr %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %63
  %69 = call i32 @QueryMagickColor(ptr noundef nonnull %66, ptr noundef nonnull %7, ptr noundef %5) #18
  br label %70

70:                                               ; preds = %68, %63
  %71 = call i32 @QueryMagickColor(ptr noundef nonnull @.str.7, ptr noundef nonnull %8, ptr noundef %5) #18
  %72 = call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.8) #18
  %73 = icmp eq ptr %72, null
  br i1 %73, label %76, label %74

74:                                               ; preds = %70
  %75 = call i32 @QueryMagickColor(ptr noundef nonnull %72, ptr noundef nonnull %8, ptr noundef %5) #18
  br label %76

76:                                               ; preds = %74, %70
  %77 = getelementptr inbounds %struct._Image, ptr %52, i64 0, i32 1
  %78 = load i32, ptr %77, align 4, !tbaa !57
  %79 = icmp eq i32 %78, 12
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  call fastcc void @ConvertRGBToCMYK(ptr noundef nonnull %7) #16
  call fastcc void @ConvertRGBToCMYK(ptr noundef nonnull %8) #16
  br label %81

81:                                               ; preds = %80, %76
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %9) #18
  %82 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %5) #18
  %83 = call ptr @AcquireVirtualCacheView(ptr noundef %1, ptr noundef %5) #18
  %84 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %52, ptr noundef %5) #18
  %85 = load i64, ptr %50, align 8, !tbaa !55
  %86 = icmp sgt i64 %85, 0
  br i1 %86, label %87, label %228

87:                                               ; preds = %81
  %88 = getelementptr inbounds %struct._Image, ptr %52, i64 0, i32 7
  %89 = icmp eq i32 %2, 47
  %90 = and i32 %2, 1
  %91 = icmp eq i32 %90, 0
  %92 = and i32 %2, 2
  %93 = icmp eq i32 %92, 0
  %94 = and i32 %2, 4
  %95 = icmp eq i32 %94, 0
  %96 = and i32 %2, 8
  %97 = icmp eq i32 %96, 0
  %98 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %99 = and i32 %2, 32
  %100 = icmp eq i32 %99, 0
  %101 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %102 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  br label %103

103:                                              ; preds = %87, %212
  %104 = phi i64 [ 0, %87 ], [ %214, %212 ]
  %105 = phi i32 [ 1, %87 ], [ %213, %212 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %11) #17
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %212, label %107

107:                                              ; preds = %103
  %108 = load i64, ptr %48, align 8, !tbaa !54
  %109 = call ptr @GetCacheViewVirtualPixels(ptr noundef %82, i64 noundef 0, i64 noundef %104, i64 noundef %108, i64 noundef 1, ptr noundef %5) #19
  %110 = load i64, ptr %48, align 8, !tbaa !54
  %111 = call ptr @GetCacheViewVirtualPixels(ptr noundef %83, i64 noundef 0, i64 noundef %104, i64 noundef %110, i64 noundef 1, ptr noundef %5) #19
  %112 = load i64, ptr %88, align 8, !tbaa !54
  %113 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %84, i64 noundef 0, i64 noundef %104, i64 noundef %112, i64 noundef 1, ptr noundef %5) #19
  %114 = icmp eq ptr %109, null
  %115 = icmp eq ptr %111, null
  %116 = select i1 %114, i1 true, i1 %115
  %117 = icmp eq ptr %113, null
  %118 = select i1 %116, i1 true, i1 %117
  br i1 %118, label %212, label %119

119:                                              ; preds = %107
  %120 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %82) #18
  %121 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %83) #18
  %122 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %84) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull align 8 dereferenceable(56) %9, i64 56, i1 false), !tbaa.struct !58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %11, ptr noundef nonnull align 8 dereferenceable(56) %9, i64 56, i1 false), !tbaa.struct !58
  %123 = load i64, ptr %48, align 8, !tbaa !54
  %124 = icmp sgt i64 %123, 0
  br i1 %124, label %125, label %208

125:                                              ; preds = %119
  %126 = icmp eq ptr %120, null
  %127 = icmp eq ptr %121, null
  br label %128

128:                                              ; preds = %125, %199
  %129 = phi i64 [ 0, %125 ], [ %205, %199 ]
  %130 = phi ptr [ %113, %125 ], [ %204, %199 ]
  %131 = phi ptr [ %111, %125 ], [ %203, %199 ]
  %132 = phi ptr [ %109, %125 ], [ %202, %199 ]
  %133 = getelementptr inbounds i16, ptr %120, i64 %129
  call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %132, ptr noundef %133, ptr noundef nonnull %10) #16
  %134 = getelementptr inbounds i16, ptr %121, i64 %129
  call fastcc void @SetMagickPixelPacket(ptr noundef %1, ptr noundef nonnull %131, ptr noundef %134, ptr noundef nonnull %11) #16
  br i1 %89, label %135, label %138

135:                                              ; preds = %128
  %136 = call i32 @IsMagickColorSimilar(ptr noundef nonnull %10, ptr noundef nonnull %11) #18
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %199, label %198

138:                                              ; preds = %128
  br i1 %91, label %146, label %139

139:                                              ; preds = %138
  %140 = getelementptr inbounds %struct._PixelPacket, ptr %132, i64 0, i32 2
  %141 = load i16, ptr %140, align 2, !tbaa !63
  %142 = getelementptr inbounds %struct._PixelPacket, ptr %131, i64 0, i32 2
  %143 = load i16, ptr %142, align 2, !tbaa !63
  %144 = icmp ne i16 %141, %143
  %145 = zext i1 %144 to i32
  br label %146

146:                                              ; preds = %139, %138
  %147 = phi i32 [ 0, %138 ], [ %145, %139 ]
  br i1 %93, label %155, label %148

148:                                              ; preds = %146
  %149 = getelementptr inbounds %struct._PixelPacket, ptr %132, i64 0, i32 1
  %150 = load i16, ptr %149, align 2, !tbaa !64
  %151 = getelementptr inbounds %struct._PixelPacket, ptr %131, i64 0, i32 1
  %152 = load i16, ptr %151, align 2, !tbaa !64
  %153 = icmp eq i16 %150, %152
  %154 = select i1 %153, i32 %147, i32 1
  br label %155

155:                                              ; preds = %148, %146
  %156 = phi i32 [ %147, %146 ], [ %154, %148 ]
  br i1 %95, label %162, label %157

157:                                              ; preds = %155
  %158 = load i16, ptr %132, align 2, !tbaa !65
  %159 = load i16, ptr %131, align 2, !tbaa !65
  %160 = icmp eq i16 %158, %159
  %161 = select i1 %160, i32 %156, i32 1
  br label %162

162:                                              ; preds = %157, %155
  %163 = phi i32 [ %156, %155 ], [ %161, %157 ]
  br i1 %97, label %174, label %164

164:                                              ; preds = %162
  %165 = load i32, ptr %98, align 8, !tbaa !66
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %174, label %167

167:                                              ; preds = %164
  %168 = getelementptr inbounds %struct._PixelPacket, ptr %132, i64 0, i32 3
  %169 = load i16, ptr %168, align 2, !tbaa !67
  %170 = getelementptr inbounds %struct._PixelPacket, ptr %131, i64 0, i32 3
  %171 = load i16, ptr %170, align 2, !tbaa !67
  %172 = icmp eq i16 %169, %171
  %173 = select i1 %172, i32 %163, i32 1
  br label %174

174:                                              ; preds = %167, %164, %162
  %175 = phi i32 [ %163, %164 ], [ %163, %162 ], [ %173, %167 ]
  br i1 %100, label %196, label %176

176:                                              ; preds = %174
  %177 = load i32, ptr %101, align 4, !tbaa !57
  %178 = icmp eq i32 %177, 12
  br i1 %178, label %179, label %196

179:                                              ; preds = %176
  %180 = load i32, ptr %102, align 4, !tbaa !57
  %181 = icmp eq i32 %180, 12
  br i1 %181, label %182, label %196

182:                                              ; preds = %179
  br i1 %126, label %186, label %183

183:                                              ; preds = %182
  %184 = load i16, ptr %133, align 2, !tbaa !68
  %185 = zext i16 %184 to i32
  br label %186

186:                                              ; preds = %182, %183
  %187 = phi i32 [ %185, %183 ], [ 0, %182 ]
  br i1 %127, label %191, label %188

188:                                              ; preds = %186
  %189 = load i16, ptr %134, align 2, !tbaa !68
  %190 = zext i16 %189 to i32
  br label %191

191:                                              ; preds = %186, %188
  %192 = phi i32 [ %190, %188 ], [ 0, %186 ]
  %193 = icmp eq i32 %187, %192
  %194 = icmp eq i32 %175, 0
  %195 = select i1 %193, i1 %194, i1 false
  br i1 %195, label %198, label %199

196:                                              ; preds = %174, %176, %179
  %197 = icmp eq i32 %175, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %191, %135, %196
  br label %199

199:                                              ; preds = %196, %191, %135, %198
  %200 = phi ptr [ %8, %198 ], [ %7, %135 ], [ %7, %191 ], [ %7, %196 ]
  %201 = getelementptr inbounds i16, ptr %122, i64 %129
  call fastcc void @SetPixelPacket(ptr noundef nonnull %52, ptr noundef nonnull %200, ptr noundef nonnull %130, ptr noundef %201) #16
  %202 = getelementptr inbounds %struct._PixelPacket, ptr %132, i64 1
  %203 = getelementptr inbounds %struct._PixelPacket, ptr %131, i64 1
  %204 = getelementptr inbounds %struct._PixelPacket, ptr %130, i64 1
  %205 = add nuw nsw i64 %129, 1
  %206 = load i64, ptr %48, align 8, !tbaa !54
  %207 = icmp slt i64 %205, %206
  br i1 %207, label %128, label %208, !llvm.loop !69

208:                                              ; preds = %199, %119
  %209 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %84, ptr noundef %5) #19
  %210 = icmp ne i32 %209, 0
  %211 = zext i1 %210 to i32
  br label %212

212:                                              ; preds = %107, %103, %208
  %213 = phi i32 [ %211, %208 ], [ 0, %103 ], [ 0, %107 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #17
  %214 = add nuw nsw i64 %104, 1
  %215 = load i64, ptr %50, align 8, !tbaa !55
  %216 = icmp slt i64 %214, %215
  br i1 %216, label %103, label %217, !llvm.loop !71

217:                                              ; preds = %212
  %218 = icmp eq i32 %213, 0
  %219 = call ptr @DestroyCacheView(ptr noundef %84) #18
  %220 = call ptr @DestroyCacheView(ptr noundef %83) #18
  %221 = call ptr @DestroyCacheView(ptr noundef %82) #18
  %222 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 36
  %223 = load i32, ptr %222, align 8, !tbaa !72
  %224 = call i32 @CompositeImage(ptr noundef nonnull %44, i32 noundef %223, ptr noundef nonnull %52, i64 noundef 0, i64 noundef 0) #18
  %225 = call ptr @DestroyImage(ptr noundef nonnull %52) #18
  br i1 %218, label %226, label %236

226:                                              ; preds = %217
  %227 = call ptr @DestroyImage(ptr noundef nonnull %44) #18
  br label %236

228:                                              ; preds = %81
  %229 = call ptr @DestroyCacheView(ptr noundef %84) #18
  %230 = call ptr @DestroyCacheView(ptr noundef %83) #18
  %231 = call ptr @DestroyCacheView(ptr noundef %82) #18
  %232 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 36
  %233 = load i32, ptr %232, align 8, !tbaa !72
  %234 = call i32 @CompositeImage(ptr noundef nonnull %44, i32 noundef %233, ptr noundef nonnull %52, i64 noundef 0, i64 noundef 0) #18
  %235 = call ptr @DestroyImage(ptr noundef nonnull %52) #18
  br label %236

236:                                              ; preds = %228, %217, %226, %43, %40, %59, %54, %37
  %237 = phi ptr [ null, %37 ], [ null, %54 ], [ null, %59 ], [ null, %40 ], [ null, %43 ], [ %227, %226 ], [ %44, %217 ], [ %44, %228 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #17
  ret ptr %237
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @GetImageChannelDistortion(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct._ExceptionInfo, align 8
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %9 = load i32, ptr %8, align 8, !tbaa !34
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  store double 0.000000e+00, ptr %4, align 8, !tbaa !53
  br label %19

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %14 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1466, ptr noundef nonnull @.str.2, ptr noundef nonnull %13) #18
  %15 = load i32, ptr %8, align 8, !tbaa !34
  store double 0.000000e+00, ptr %4, align 8, !tbaa !53
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1472, ptr noundef nonnull @.str.2, ptr noundef nonnull %13) #18
  br label %19

19:                                               ; preds = %11, %17, %12
  %20 = icmp eq i32 %3, 255
  br i1 %20, label %37, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  %23 = load i64, ptr %22, align 8, !tbaa !54
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %25 = load i64, ptr %24, align 8, !tbaa !54
  %26 = icmp eq i64 %23, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 8
  %29 = load i64, ptr %28, align 8, !tbaa !55
  %30 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %31 = load i64, ptr %30, align 8, !tbaa !55
  %32 = icmp eq i64 %29, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %21, %27
  %34 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %35 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %36 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %34, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1476, i32 noundef 465, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %35) #18
  br label %77

37:                                               ; preds = %27, %19
  %38 = tail call dereferenceable_or_null(384) ptr @AcquireQuantumMemory(i64 noundef 48, i64 noundef 8) #20
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #17
  call void @GetExceptionInfo(ptr noundef nonnull %7) #18
  %41 = tail call ptr @__errno_location() #21
  %42 = load i32, ptr %41, align 4, !tbaa !59
  %43 = call ptr @GetExceptionMessage(i32 noundef %42) #18
  %44 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %7, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1484, i32 noundef 700, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.4, ptr noundef %43) #18
  %45 = call ptr @DestroyString(ptr noundef %43) #18
  call void @CatchException(ptr noundef nonnull %7) #18
  %46 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %7) #18
  call void @MagickCoreTerminus() #18
  call void @_exit(i32 noundef 1) #22
  unreachable

47:                                               ; preds = %37
  %48 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %38, i32 noundef 0, i64 noundef 384) #18
  switch i32 %3, label %59 [
    i32 1, label %49
    i32 9, label %51
    i32 2, label %53
    i32 3, label %55
    i32 4, label %57
    i32 7, label %67
    i32 5, label %61
    i32 6, label %63
    i32 255, label %65
  ]

49:                                               ; preds = %47
  %50 = tail call fastcc i32 @GetAbsoluteDistortion(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %38, ptr noundef %5) #16, !range !56
  br label %69

51:                                               ; preds = %47
  %52 = tail call fastcc i32 @GetFuzzDistortion(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %38, ptr noundef %5) #16, !range !56
  br label %69

53:                                               ; preds = %47
  %54 = tail call fastcc i32 @GetMeanAbsoluteDistortion(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %38, ptr noundef %5) #16, !range !56
  br label %69

55:                                               ; preds = %47
  %56 = tail call fastcc i32 @GetMeanErrorPerPixel(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %38, ptr noundef %5) #16, !range !56
  br label %69

57:                                               ; preds = %47
  %58 = tail call fastcc i32 @GetMeanSquaredDistortion(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %38, ptr noundef %5) #16, !range !56
  br label %69

59:                                               ; preds = %47
  %60 = tail call fastcc i32 @GetNormalizedCrossCorrelationDistortion(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %38, ptr noundef %5) #16, !range !56
  br label %69

61:                                               ; preds = %47
  %62 = tail call fastcc i32 @GetPeakAbsoluteDistortion(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %38, ptr noundef %5) #16, !range !56
  br label %69

63:                                               ; preds = %47
  %64 = tail call fastcc i32 @GetPeakSignalToNoiseRatio(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %38, ptr noundef %5) #16, !range !56
  br label %69

65:                                               ; preds = %47
  %66 = tail call fastcc i32 @GetPerceptualHashDistortion(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %38, ptr noundef %5) #16, !range !56
  br label %69

67:                                               ; preds = %47
  %68 = tail call fastcc i32 @GetRootMeanSquaredDistortion(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %38, ptr noundef %5) #16, !range !56
  br label %69

69:                                               ; preds = %67, %65, %63, %61, %59, %57, %55, %53, %51, %49
  %70 = phi i32 [ %60, %59 ], [ %66, %65 ], [ %64, %63 ], [ %62, %61 ], [ %68, %67 ], [ %58, %57 ], [ %56, %55 ], [ %54, %53 ], [ %52, %51 ], [ %50, %49 ]
  %71 = getelementptr inbounds double, ptr %38, i64 47
  %72 = load double, ptr %71, align 8, !tbaa !53
  store double %72, ptr %4, align 8, !tbaa !53
  %73 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %38) #18
  %74 = tail call i32 @GetMagickPrecision() #18
  %75 = load double, ptr %4, align 8, !tbaa !53
  %76 = tail call i32 (ptr, ptr, ptr, ...) @FormatImageProperty(ptr noundef nonnull %0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef %74, double noundef %75) #18
  br label %77

77:                                               ; preds = %33, %69
  %78 = phi i32 [ %70, %69 ], [ 0, %33 ]
  ret i32 %78
}

; Function Attrs: optsize
declare ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @SetImageAlphaChannel(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyImage(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @SetImageStorageClass(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @InheritException(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @QueryMagickColor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetImageArtifact(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ConvertRGBToCMYK(ptr nocapture noundef %0) unnamed_addr #0 !PGOFuncName !73 {
  %2 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !74
  %4 = icmp eq i32 %3, 13
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %6 = load float, ptr %5, align 8, !tbaa !76
  br i1 %4, label %20, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %9 = load float, ptr %8, align 4, !tbaa !77
  %10 = insertelement <2 x float> poison, float %6, i64 0
  %11 = insertelement <2 x float> %10, float %9, i64 1
  %12 = fpext <2 x float> %11 to <2 x double>
  %13 = fmul <2 x double> %12, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  %14 = fptrunc <2 x double> %13 to <2 x float>
  %15 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %16 = load float, ptr %15, align 8, !tbaa !78
  %17 = fpext float %16 to double
  %18 = fmul double %17, 0x3EF0001000100010
  %19 = fptrunc double %18 to float
  br label %30

20:                                               ; preds = %1
  %21 = tail call float @DecodePixelGamma(float noundef %6) #19
  %22 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %23 = load float, ptr %22, align 4, !tbaa !77
  %24 = tail call float @DecodePixelGamma(float noundef %23) #19
  %25 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %26 = load float, ptr %25, align 8, !tbaa !78
  %27 = tail call float @DecodePixelGamma(float noundef %26) #19
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
  store i32 12, ptr %2, align 4, !tbaa !74
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
  store <2 x float> %70, ptr %61, align 8, !tbaa !61
  %71 = fmul float %60, 6.553500e+04
  %72 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  store float %71, ptr %72, align 8, !tbaa !78
  %73 = fmul float %54, 6.553500e+04
  br label %74

74:                                               ; preds = %42, %46
  %75 = phi float [ %73, %46 ], [ 6.553500e+04, %42 ]
  %76 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  store float %75, ptr %76, align 8, !tbaa !79
  ret void
}

; Function Attrs: optsize
declare void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: hot optsize
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: hot optsize
declare ptr @QueueCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @SetMagickPixelPacket(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #5 !PGOFuncName !80 {
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  %6 = load <4 x i16>, ptr %1, align 2, !tbaa !68
  %7 = uitofp <4 x i16> %6 to <4 x float>
  %8 = shufflevector <4 x float> %7, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  store <4 x float> %8, ptr %5, align 8, !tbaa !61
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !57
  %11 = icmp eq i32 %10, 12
  %12 = icmp ne ptr %2, null
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load i16, ptr %2, align 2, !tbaa !68
  %16 = uitofp i16 %15 to float
  %17 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  store float %16, ptr %17, align 8, !tbaa !79
  br label %18

18:                                               ; preds = %14, %4
  ret void
}

; Function Attrs: optsize
declare i32 @IsMagickColorSimilar(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @SetPixelPacket(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr noundef writeonly %3) unnamed_addr #5 !PGOFuncName !81 {
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %6 = load float, ptr %5, align 8, !tbaa !76
  %7 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %6) #16
  %8 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 2
  store i16 %7, ptr %8, align 2, !tbaa !63
  %9 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %10 = load float, ptr %9, align 4, !tbaa !77
  %11 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %10) #16
  %12 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 1
  store i16 %11, ptr %12, align 2, !tbaa !64
  %13 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %14 = load float, ptr %13, align 8, !tbaa !78
  %15 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %14) #16
  store i16 %15, ptr %2, align 2, !tbaa !65
  %16 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %17 = load float, ptr %16, align 4, !tbaa !82
  %18 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %17) #16
  %19 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 3
  store i16 %18, ptr %19, align 2, !tbaa !67
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !57
  %22 = icmp eq i32 %21, 12
  br i1 %22, label %28, label %23

23:                                               ; preds = %4
  %24 = load i32, ptr %0, align 8, !tbaa !83
  %25 = icmp eq i32 %24, 2
  %26 = icmp ne ptr %3, null
  %27 = and i1 %26, %25
  br i1 %27, label %30, label %34

28:                                               ; preds = %4
  %29 = icmp eq ptr %3, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %23, %28
  %31 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %32 = load float, ptr %31, align 8, !tbaa !79
  %33 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %32) #16
  store i16 %33, ptr %3, align 2, !tbaa !68
  br label %34

34:                                               ; preds = %28, %30, %23
  ret void
}

; Function Attrs: hot optsize
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CompositeImage(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @GetImageDistortion(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call i32 @GetImageChannelDistortion(ptr noundef %0, ptr noundef %1, i32 noundef 47, i32 noundef %2, ptr noundef %3, ptr noundef %4) #16, !range !56
  ret i32 %6
}

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @DestroyString(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CatchException(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @MagickCoreTerminus() local_unnamed_addr #2

; Function Attrs: noreturn optsize
declare void @_exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @GetAbsoluteDistortion(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr noundef %4) unnamed_addr #0 !PGOFuncName !84 {
  %6 = alloca %struct._MagickPixelPacket, align 8
  %7 = alloca [48 x double], align 16
  %8 = alloca %struct._MagickPixelPacket, align 8
  %9 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #17
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %6) #18
  %10 = call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %4) #18
  %11 = call ptr @AcquireVirtualCacheView(ptr noundef %1, ptr noundef %4) #18
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %13 = load i64, ptr %12, align 8, !tbaa !55
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %112

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %17 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  %18 = and i32 %2, 1
  %19 = icmp eq i32 %18, 0
  %20 = getelementptr inbounds [48 x double], ptr %7, i64 0, i64 1
  %21 = and i32 %2, 2
  %22 = icmp eq i32 %21, 0
  %23 = getelementptr inbounds [48 x double], ptr %7, i64 0, i64 2
  %24 = and i32 %2, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds [48 x double], ptr %7, i64 0, i64 4
  %27 = and i32 %2, 8
  %28 = icmp eq i32 %27, 0
  %29 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %30 = getelementptr inbounds [48 x double], ptr %7, i64 0, i64 8
  %31 = and i32 %2, 32
  %32 = icmp eq i32 %31, 0
  %33 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %34 = getelementptr inbounds [48 x double], ptr %7, i64 0, i64 32
  %35 = getelementptr inbounds [48 x double], ptr %7, i64 0, i64 47
  br label %36

36:                                               ; preds = %15, %107
  %37 = phi i64 [ 0, %15 ], [ %109, %107 ]
  %38 = phi i32 [ 1, %15 ], [ %108, %107 ]
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %9) #17
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %107, label %40

40:                                               ; preds = %36
  %41 = load i64, ptr %16, align 8, !tbaa !54
  %42 = call ptr @GetCacheViewVirtualPixels(ptr noundef %10, i64 noundef 0, i64 noundef %37, i64 noundef %41, i64 noundef 1, ptr noundef %4) #19
  %43 = load i64, ptr %17, align 8, !tbaa !54
  %44 = call ptr @GetCacheViewVirtualPixels(ptr noundef %11, i64 noundef 0, i64 noundef %37, i64 noundef %43, i64 noundef 1, ptr noundef %4) #19
  %45 = icmp eq ptr %42, null
  %46 = icmp eq ptr %44, null
  %47 = select i1 %45, i1 true, i1 %46
  br i1 %47, label %107, label %48

48:                                               ; preds = %40
  %49 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %10) #18
  %50 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %11) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(56) %6, i64 56, i1 false), !tbaa.struct !58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef nonnull align 8 dereferenceable(56) %6, i64 56, i1 false)
  %51 = call ptr @ResetMagickMemory(ptr noundef nonnull %7, i32 noundef 0, i64 noundef 384) #18
  %52 = load i64, ptr %16, align 8, !tbaa !54
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %64, label %54

54:                                               ; preds = %101, %48
  br label %55

55:                                               ; preds = %54, %55
  %56 = phi i64 [ %62, %55 ], [ 0, %54 ]
  %57 = getelementptr inbounds [48 x double], ptr %7, i64 0, i64 %56
  %58 = load <2 x double>, ptr %57, align 16, !tbaa !53
  %59 = getelementptr inbounds double, ptr %3, i64 %56
  %60 = load <2 x double>, ptr %59, align 8, !tbaa !53
  %61 = fadd <2 x double> %58, %60
  store <2 x double> %61, ptr %59, align 8, !tbaa !53
  %62 = add nuw i64 %56, 2
  %63 = icmp eq i64 %62, 48
  br i1 %63, label %107, label %55, !llvm.loop !85

64:                                               ; preds = %48, %101
  %65 = phi i64 [ %104, %101 ], [ 0, %48 ]
  %66 = phi ptr [ %103, %101 ], [ %44, %48 ]
  %67 = phi ptr [ %102, %101 ], [ %42, %48 ]
  %68 = getelementptr inbounds i16, ptr %49, i64 %65
  call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %67, ptr noundef %68, ptr noundef nonnull %8) #16
  %69 = getelementptr inbounds i16, ptr %50, i64 %65
  call fastcc void @SetMagickPixelPacket(ptr noundef %1, ptr noundef nonnull %66, ptr noundef %69, ptr noundef nonnull %9) #16
  %70 = call i32 @IsMagickColorSimilar(ptr noundef nonnull %8, ptr noundef nonnull %9) #18
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %101

72:                                               ; preds = %64
  br i1 %19, label %76, label %73

73:                                               ; preds = %72
  %74 = load double, ptr %20, align 8, !tbaa !53
  %75 = fadd double %74, 1.000000e+00
  store double %75, ptr %20, align 8, !tbaa !53
  br label %76

76:                                               ; preds = %73, %72
  br i1 %22, label %80, label %77

77:                                               ; preds = %76
  %78 = load double, ptr %23, align 16, !tbaa !53
  %79 = fadd double %78, 1.000000e+00
  store double %79, ptr %23, align 16, !tbaa !53
  br label %80

80:                                               ; preds = %77, %76
  br i1 %25, label %84, label %81

81:                                               ; preds = %80
  %82 = load double, ptr %26, align 16, !tbaa !53
  %83 = fadd double %82, 1.000000e+00
  store double %83, ptr %26, align 16, !tbaa !53
  br label %84

84:                                               ; preds = %81, %80
  br i1 %28, label %91, label %85

85:                                               ; preds = %84
  %86 = load i32, ptr %29, align 8, !tbaa !66
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %85
  %89 = load double, ptr %30, align 16, !tbaa !53
  %90 = fadd double %89, 1.000000e+00
  store double %90, ptr %30, align 16, !tbaa !53
  br label %91

91:                                               ; preds = %88, %85, %84
  br i1 %32, label %98, label %92

92:                                               ; preds = %91
  %93 = load i32, ptr %33, align 4, !tbaa !57
  %94 = icmp eq i32 %93, 12
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load double, ptr %34, align 16, !tbaa !53
  %97 = fadd double %96, 1.000000e+00
  store double %97, ptr %34, align 16, !tbaa !53
  br label %98

98:                                               ; preds = %95, %92, %91
  %99 = load double, ptr %35, align 8, !tbaa !53
  %100 = fadd double %99, 1.000000e+00
  store double %100, ptr %35, align 8, !tbaa !53
  br label %101

101:                                              ; preds = %98, %64
  %102 = getelementptr inbounds %struct._PixelPacket, ptr %67, i64 1
  %103 = getelementptr inbounds %struct._PixelPacket, ptr %66, i64 1
  %104 = add nuw nsw i64 %65, 1
  %105 = load i64, ptr %16, align 8, !tbaa !54
  %106 = icmp slt i64 %104, %105
  br i1 %106, label %64, label %54, !llvm.loop !88

107:                                              ; preds = %55, %40, %36
  %108 = phi i32 [ 0, %36 ], [ 0, %40 ], [ 1, %55 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %7) #17
  %109 = add nuw nsw i64 %37, 1
  %110 = load i64, ptr %12, align 8, !tbaa !55
  %111 = icmp slt i64 %109, %110
  br i1 %111, label %36, label %112, !llvm.loop !89

112:                                              ; preds = %107, %5
  %113 = phi i32 [ 1, %5 ], [ %108, %107 ]
  %114 = call ptr @DestroyCacheView(ptr noundef %11) #18
  %115 = call ptr @DestroyCacheView(ptr noundef %10) #18
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #17
  ret i32 %113
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @GetFuzzDistortion(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr noundef %4) unnamed_addr #0 !PGOFuncName !90 {
  %6 = alloca [48 x double], align 16
  %7 = tail call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %4) #18
  %8 = tail call ptr @AcquireVirtualCacheView(ptr noundef %1, ptr noundef %4) #18
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %10 = load i64, ptr %9, align 8, !tbaa !55
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %232

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
  %24 = and i32 %2, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 4
  %27 = and i32 %2, 8
  %28 = icmp eq i32 %27, 0
  %29 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 8
  %30 = and i32 %2, 32
  %31 = icmp eq i32 %30, 0
  %32 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %33 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %34 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 32
  br label %35

35:                                               ; preds = %12, %227
  %36 = phi i32 [ 1, %12 ], [ %228, %227 ]
  %37 = phi i64 [ 0, %12 ], [ %229, %227 ]
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %6) #17
  %38 = icmp eq i32 %36, 0
  br i1 %38, label %227, label %39

39:                                               ; preds = %35
  %40 = load i64, ptr %13, align 8, !tbaa !54
  %41 = call ptr @GetCacheViewVirtualPixels(ptr noundef %7, i64 noundef 0, i64 noundef %37, i64 noundef %40, i64 noundef 1, ptr noundef %4) #19
  %42 = load i64, ptr %14, align 8, !tbaa !54
  %43 = call ptr @GetCacheViewVirtualPixels(ptr noundef %8, i64 noundef 0, i64 noundef %37, i64 noundef %42, i64 noundef 1, ptr noundef %4) #19
  %44 = icmp eq ptr %41, null
  %45 = icmp eq ptr %43, null
  %46 = select i1 %44, i1 true, i1 %45
  br i1 %46, label %227, label %47

47:                                               ; preds = %39
  %48 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %7) #18
  %49 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %8) #18
  %50 = call ptr @ResetMagickMemory(ptr noundef nonnull %6, i32 noundef 0, i64 noundef 384) #18
  %51 = load i64, ptr %13, align 8, !tbaa !54
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %226

53:                                               ; preds = %47
  %54 = load i32, ptr %15, align 8, !tbaa !66
  %55 = icmp eq i32 %54, 0
  %56 = load i32, ptr %16, align 8, !tbaa !66
  %57 = icmp eq i32 %56, 0
  %58 = icmp eq ptr %48, null
  %59 = icmp eq ptr %49, null
  %60 = load double, ptr %19, align 8, !tbaa !53
  %61 = load double, ptr %20, align 8, !tbaa !53
  %62 = load double, ptr %23, align 16, !tbaa !53
  %63 = load double, ptr %26, align 16, !tbaa !53
  %64 = load double, ptr %29, align 16, !tbaa !53
  %65 = load double, ptr %34, align 16, !tbaa !53
  br label %75

66:                                               ; preds = %226, %66
  %67 = phi i64 [ %73, %66 ], [ 0, %226 ]
  %68 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 %67
  %69 = load <2 x double>, ptr %68, align 16, !tbaa !53
  %70 = getelementptr inbounds double, ptr %3, i64 %67
  %71 = load <2 x double>, ptr %70, align 8, !tbaa !53
  %72 = fadd <2 x double> %69, %71
  store <2 x double> %72, ptr %70, align 8, !tbaa !53
  %73 = add nuw i64 %67, 2
  %74 = icmp eq i64 %73, 48
  br i1 %74, label %227, label %66, !llvm.loop !91

75:                                               ; preds = %53, %219
  %76 = phi double [ %65, %53 ], [ %220, %219 ]
  %77 = phi double [ %64, %53 ], [ %186, %219 ]
  %78 = phi double [ %63, %53 ], [ %161, %219 ]
  %79 = phi double [ %62, %53 ], [ %143, %219 ]
  %80 = phi double [ %61, %53 ], [ %221, %219 ]
  %81 = phi double [ %60, %53 ], [ %124, %219 ]
  %82 = phi i64 [ 0, %53 ], [ %224, %219 ]
  %83 = phi ptr [ %43, %53 ], [ %223, %219 ]
  %84 = phi ptr [ %41, %53 ], [ %222, %219 ]
  br i1 %55, label %90, label %85

85:                                               ; preds = %75
  %86 = getelementptr inbounds %struct._PixelPacket, ptr %84, i64 0, i32 3
  %87 = load i16, ptr %86, align 2, !tbaa !67
  %88 = xor i16 %87, -1
  %89 = zext i16 %88 to i32
  br label %90

90:                                               ; preds = %75, %85
  %91 = phi i32 [ %89, %85 ], [ 65535, %75 ]
  %92 = sitofp i32 %91 to double
  %93 = fmul double %92, 0x3EF0001000100010
  %94 = fptrunc double %93 to float
  br i1 %57, label %100, label %95

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct._PixelPacket, ptr %83, i64 0, i32 3
  %97 = load i16, ptr %96, align 2, !tbaa !67
  %98 = xor i16 %97, -1
  %99 = zext i16 %98 to i32
  br label %100

100:                                              ; preds = %90, %95
  %101 = phi i32 [ %99, %95 ], [ 65535, %90 ]
  %102 = sitofp i32 %101 to double
  %103 = fmul double %102, 0x3EF0001000100010
  %104 = fptrunc double %103 to float
  br i1 %18, label %122, label %105

105:                                              ; preds = %100
  %106 = getelementptr inbounds %struct._PixelPacket, ptr %84, i64 0, i32 2
  %107 = load i16, ptr %106, align 2, !tbaa !63
  %108 = uitofp i16 %107 to float
  %109 = getelementptr inbounds %struct._PixelPacket, ptr %83, i64 0, i32 2
  %110 = load i16, ptr %109, align 2, !tbaa !63
  %111 = uitofp i16 %110 to float
  %112 = fneg float %104
  %113 = fmul float %112, %111
  %114 = call float @llvm.fmuladd.f32(float %94, float %108, float %113)
  %115 = fpext float %114 to double
  %116 = fmul double %115, 0x3EF0001000100010
  %117 = fptrunc double %116 to float
  %118 = fmul float %117, %117
  %119 = fpext float %118 to double
  %120 = fadd double %81, %119
  store double %120, ptr %19, align 8, !tbaa !53
  %121 = fadd double %80, %119
  store double %121, ptr %20, align 8, !tbaa !53
  br label %122

122:                                              ; preds = %105, %100
  %123 = phi double [ %121, %105 ], [ %80, %100 ]
  %124 = phi double [ %120, %105 ], [ %81, %100 ]
  br i1 %22, label %142, label %125

125:                                              ; preds = %122
  %126 = getelementptr inbounds %struct._PixelPacket, ptr %84, i64 0, i32 1
  %127 = load i16, ptr %126, align 2, !tbaa !64
  %128 = uitofp i16 %127 to float
  %129 = getelementptr inbounds %struct._PixelPacket, ptr %83, i64 0, i32 1
  %130 = load i16, ptr %129, align 2, !tbaa !64
  %131 = uitofp i16 %130 to float
  %132 = fneg float %104
  %133 = fmul float %132, %131
  %134 = call float @llvm.fmuladd.f32(float %94, float %128, float %133)
  %135 = fpext float %134 to double
  %136 = fmul double %135, 0x3EF0001000100010
  %137 = fptrunc double %136 to float
  %138 = fmul float %137, %137
  %139 = fpext float %138 to double
  %140 = fadd double %79, %139
  store double %140, ptr %23, align 16, !tbaa !53
  %141 = fadd double %123, %139
  store double %141, ptr %20, align 8, !tbaa !53
  br label %142

142:                                              ; preds = %125, %122
  %143 = phi double [ %140, %125 ], [ %79, %122 ]
  %144 = phi double [ %141, %125 ], [ %123, %122 ]
  br i1 %25, label %160, label %145

145:                                              ; preds = %142
  %146 = load i16, ptr %84, align 2, !tbaa !65
  %147 = uitofp i16 %146 to float
  %148 = load i16, ptr %83, align 2, !tbaa !65
  %149 = uitofp i16 %148 to float
  %150 = fneg float %104
  %151 = fmul float %150, %149
  %152 = call float @llvm.fmuladd.f32(float %94, float %147, float %151)
  %153 = fpext float %152 to double
  %154 = fmul double %153, 0x3EF0001000100010
  %155 = fptrunc double %154 to float
  %156 = fmul float %155, %155
  %157 = fpext float %156 to double
  %158 = fadd double %78, %157
  store double %158, ptr %26, align 16, !tbaa !53
  %159 = fadd double %144, %157
  store double %159, ptr %20, align 8, !tbaa !53
  br label %160

160:                                              ; preds = %145, %142
  %161 = phi double [ %158, %145 ], [ %78, %142 ]
  %162 = phi double [ %159, %145 ], [ %144, %142 ]
  br i1 %28, label %185, label %163

163:                                              ; preds = %160
  br i1 %55, label %164, label %165

164:                                              ; preds = %163
  br i1 %57, label %185, label %169

165:                                              ; preds = %163
  %166 = getelementptr inbounds %struct._PixelPacket, ptr %84, i64 0, i32 3
  %167 = load i16, ptr %166, align 2, !tbaa !67
  %168 = zext i16 %167 to i32
  br i1 %57, label %174, label %169

169:                                              ; preds = %164, %165
  %170 = phi i32 [ %168, %165 ], [ 0, %164 ]
  %171 = getelementptr inbounds %struct._PixelPacket, ptr %83, i64 0, i32 3
  %172 = load i16, ptr %171, align 2, !tbaa !67
  %173 = zext i16 %172 to i32
  br label %174

174:                                              ; preds = %165, %169
  %175 = phi i32 [ %170, %169 ], [ %168, %165 ]
  %176 = phi i32 [ %173, %169 ], [ 0, %165 ]
  %177 = sub nsw i32 %175, %176
  %178 = sitofp i32 %177 to double
  %179 = fmul double %178, 0x3EF0001000100010
  %180 = fptrunc double %179 to float
  %181 = fmul float %180, %180
  %182 = fpext float %181 to double
  %183 = fadd double %77, %182
  store double %183, ptr %29, align 16, !tbaa !53
  %184 = fadd double %162, %182
  store double %184, ptr %20, align 8, !tbaa !53
  br label %185

185:                                              ; preds = %174, %164, %160
  %186 = phi double [ %183, %174 ], [ %77, %164 ], [ %77, %160 ]
  %187 = phi double [ %184, %174 ], [ %162, %164 ], [ %162, %160 ]
  br i1 %31, label %219, label %188

188:                                              ; preds = %185
  %189 = load i32, ptr %32, align 4, !tbaa !57
  %190 = icmp eq i32 %189, 12
  br i1 %190, label %191, label %219

191:                                              ; preds = %188
  %192 = load i32, ptr %33, align 4, !tbaa !57
  %193 = icmp eq i32 %192, 12
  br i1 %193, label %194, label %219

194:                                              ; preds = %191
  br i1 %58, label %199, label %195

195:                                              ; preds = %194
  %196 = getelementptr inbounds i16, ptr %48, i64 %82
  %197 = load i16, ptr %196, align 2, !tbaa !68
  %198 = zext i16 %197 to i32
  br label %199

199:                                              ; preds = %194, %195
  %200 = phi i32 [ %198, %195 ], [ 0, %194 ]
  %201 = sitofp i32 %200 to float
  br i1 %59, label %206, label %202

202:                                              ; preds = %199
  %203 = getelementptr inbounds i16, ptr %49, i64 %82
  %204 = load i16, ptr %203, align 2, !tbaa !68
  %205 = zext i16 %204 to i32
  br label %206

206:                                              ; preds = %199, %202
  %207 = phi i32 [ %205, %202 ], [ 0, %199 ]
  %208 = sitofp i32 %207 to float
  %209 = fneg float %104
  %210 = fmul float %209, %208
  %211 = call float @llvm.fmuladd.f32(float %94, float %201, float %210)
  %212 = fpext float %211 to double
  %213 = fmul double %212, 0x3EF0001000100010
  %214 = fptrunc double %213 to float
  %215 = fmul float %214, %214
  %216 = fpext float %215 to double
  %217 = fadd double %76, %216
  store double %217, ptr %34, align 16, !tbaa !53
  %218 = fadd double %187, %216
  store double %218, ptr %20, align 8, !tbaa !53
  br label %219

219:                                              ; preds = %206, %191, %188, %185
  %220 = phi double [ %217, %206 ], [ %76, %191 ], [ %76, %188 ], [ %76, %185 ]
  %221 = phi double [ %218, %206 ], [ %187, %191 ], [ %187, %188 ], [ %187, %185 ]
  %222 = getelementptr inbounds %struct._PixelPacket, ptr %84, i64 1
  %223 = getelementptr inbounds %struct._PixelPacket, ptr %83, i64 1
  %224 = add nuw nsw i64 %82, 1
  %225 = icmp eq i64 %224, %51
  br i1 %225, label %226, label %75, !llvm.loop !92

226:                                              ; preds = %219, %47
  br label %66

227:                                              ; preds = %66, %39, %35
  %228 = phi i32 [ 0, %35 ], [ 0, %39 ], [ 1, %66 ]
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %6) #17
  %229 = add nuw nsw i64 %37, 1
  %230 = load i64, ptr %9, align 8, !tbaa !55
  %231 = icmp slt i64 %229, %230
  br i1 %231, label %35, label %232, !llvm.loop !93

232:                                              ; preds = %227, %5
  %233 = phi i32 [ 1, %5 ], [ %228, %227 ]
  %234 = call ptr @DestroyCacheView(ptr noundef %8) #18
  %235 = call ptr @DestroyCacheView(ptr noundef %7) #18
  %236 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %237 = load <2 x i64>, ptr %236, align 8, !tbaa !60
  %238 = uitofp <2 x i64> %237 to <2 x double>
  %239 = shufflevector <2 x double> %238, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %240 = fmul <2 x double> %239, %238
  %241 = shufflevector <2 x double> %240, <2 x double> poison, <2 x i32> zeroinitializer
  br label %242

242:                                              ; preds = %242, %232
  %243 = phi i64 [ 0, %232 ], [ %247, %242 ]
  %244 = getelementptr inbounds double, ptr %3, i64 %243
  %245 = load <2 x double>, ptr %244, align 8, !tbaa !53
  %246 = fdiv <2 x double> %245, %241
  store <2 x double> %246, ptr %244, align 8, !tbaa !53
  %247 = add nuw i64 %243, 2
  %248 = icmp eq i64 %247, 48
  br i1 %248, label %249, label %242, !llvm.loop !94

249:                                              ; preds = %242
  %250 = and i32 %2, 8
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %263, label %252

252:                                              ; preds = %249
  %253 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %254 = load i32, ptr %253, align 8, !tbaa !66
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %260

256:                                              ; preds = %252
  %257 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 6
  %258 = load i32, ptr %257, align 8, !tbaa !66
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %263, label %260

260:                                              ; preds = %256, %252
  %261 = call fastcc i64 @GetNumberChannels(ptr noundef nonnull %0, i32 noundef %2) #16
  %262 = add i64 %261, -1
  br label %265

263:                                              ; preds = %256, %249
  %264 = call fastcc i64 @GetNumberChannels(ptr noundef nonnull %0, i32 noundef %2) #16
  br label %265

265:                                              ; preds = %263, %260
  %266 = phi i64 [ %264, %263 ], [ %262, %260 ]
  %267 = uitofp i64 %266 to double
  %268 = getelementptr inbounds double, ptr %3, i64 47
  %269 = load double, ptr %268, align 8, !tbaa !53
  %270 = fdiv double %269, %267
  %271 = getelementptr inbounds double, ptr %3, i64 47
  %272 = call double @sqrt(double noundef %270) #18
  store double %272, ptr %271, align 8, !tbaa !53
  ret i32 %233
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @GetMeanAbsoluteDistortion(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr noundef %4) unnamed_addr #0 !PGOFuncName !95 {
  %6 = alloca [48 x double], align 16
  %7 = tail call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %4) #18
  %8 = tail call ptr @AcquireVirtualCacheView(ptr noundef %1, ptr noundef %4) #18
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %10 = load i64, ptr %9, align 8, !tbaa !55
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %221

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
  %24 = and i32 %2, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 4
  %27 = and i32 %2, 8
  %28 = icmp eq i32 %27, 0
  %29 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 8
  %30 = and i32 %2, 32
  %31 = icmp eq i32 %30, 0
  %32 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %33 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 32
  br label %34

34:                                               ; preds = %12, %216
  %35 = phi i32 [ 1, %12 ], [ %217, %216 ]
  %36 = phi i64 [ 0, %12 ], [ %218, %216 ]
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %6) #17
  %37 = icmp eq i32 %35, 0
  br i1 %37, label %216, label %38

38:                                               ; preds = %34
  %39 = load i64, ptr %13, align 8, !tbaa !54
  %40 = call ptr @GetCacheViewVirtualPixels(ptr noundef %7, i64 noundef 0, i64 noundef %36, i64 noundef %39, i64 noundef 1, ptr noundef %4) #19
  %41 = load i64, ptr %14, align 8, !tbaa !54
  %42 = call ptr @GetCacheViewVirtualPixels(ptr noundef %8, i64 noundef 0, i64 noundef %36, i64 noundef %41, i64 noundef 1, ptr noundef %4) #19
  %43 = icmp eq ptr %40, null
  %44 = icmp eq ptr %42, null
  %45 = select i1 %43, i1 true, i1 %44
  br i1 %45, label %216, label %46

46:                                               ; preds = %38
  %47 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %7) #18
  %48 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %8) #18
  %49 = call ptr @ResetMagickMemory(ptr noundef nonnull %6, i32 noundef 0, i64 noundef 384) #18
  %50 = load i64, ptr %13, align 8, !tbaa !54
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %52, label %215

52:                                               ; preds = %46
  %53 = load i32, ptr %15, align 8, !tbaa !66
  %54 = icmp eq i32 %53, 0
  %55 = load i32, ptr %16, align 8, !tbaa !66
  %56 = icmp eq i32 %55, 0
  %57 = or i1 %28, %54
  %58 = icmp eq ptr %47, null
  %59 = icmp eq ptr %48, null
  %60 = load double, ptr %19, align 8, !tbaa !53
  %61 = load double, ptr %20, align 8, !tbaa !53
  %62 = load double, ptr %23, align 16, !tbaa !53
  %63 = load double, ptr %26, align 16, !tbaa !53
  %64 = load double, ptr %29, align 16, !tbaa !53
  %65 = load double, ptr %33, align 16, !tbaa !53
  br label %75

66:                                               ; preds = %215, %66
  %67 = phi i64 [ %73, %66 ], [ 0, %215 ]
  %68 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 %67
  %69 = load <2 x double>, ptr %68, align 16, !tbaa !53
  %70 = getelementptr inbounds double, ptr %3, i64 %67
  %71 = load <2 x double>, ptr %70, align 8, !tbaa !53
  %72 = fadd <2 x double> %69, %71
  store <2 x double> %72, ptr %70, align 8, !tbaa !53
  %73 = add nuw i64 %67, 2
  %74 = icmp eq i64 %73, 48
  br i1 %74, label %216, label %66, !llvm.loop !96

75:                                               ; preds = %52, %208
  %76 = phi double [ %65, %52 ], [ %209, %208 ]
  %77 = phi double [ %64, %52 ], [ %178, %208 ]
  %78 = phi double [ %63, %52 ], [ %161, %208 ]
  %79 = phi double [ %62, %52 ], [ %143, %208 ]
  %80 = phi double [ %61, %52 ], [ %210, %208 ]
  %81 = phi double [ %60, %52 ], [ %124, %208 ]
  %82 = phi i64 [ 0, %52 ], [ %213, %208 ]
  %83 = phi ptr [ %42, %52 ], [ %212, %208 ]
  %84 = phi ptr [ %40, %52 ], [ %211, %208 ]
  br i1 %54, label %90, label %85

85:                                               ; preds = %75
  %86 = getelementptr inbounds %struct._PixelPacket, ptr %84, i64 0, i32 3
  %87 = load i16, ptr %86, align 2, !tbaa !67
  %88 = xor i16 %87, -1
  %89 = zext i16 %88 to i32
  br label %90

90:                                               ; preds = %75, %85
  %91 = phi i32 [ %89, %85 ], [ 65535, %75 ]
  %92 = sitofp i32 %91 to double
  %93 = fmul double %92, 0x3EF0001000100010
  %94 = fptrunc double %93 to float
  br i1 %56, label %100, label %95

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct._PixelPacket, ptr %83, i64 0, i32 3
  %97 = load i16, ptr %96, align 2, !tbaa !67
  %98 = xor i16 %97, -1
  %99 = zext i16 %98 to i32
  br label %100

100:                                              ; preds = %90, %95
  %101 = phi i32 [ %99, %95 ], [ 65535, %90 ]
  %102 = sitofp i32 %101 to double
  %103 = fmul double %102, 0x3EF0001000100010
  %104 = fptrunc double %103 to float
  br i1 %18, label %122, label %105

105:                                              ; preds = %100
  %106 = getelementptr inbounds %struct._PixelPacket, ptr %84, i64 0, i32 2
  %107 = load i16, ptr %106, align 2, !tbaa !63
  %108 = uitofp i16 %107 to float
  %109 = getelementptr inbounds %struct._PixelPacket, ptr %83, i64 0, i32 2
  %110 = load i16, ptr %109, align 2, !tbaa !63
  %111 = uitofp i16 %110 to float
  %112 = fneg float %104
  %113 = fmul float %112, %111
  %114 = call float @llvm.fmuladd.f32(float %94, float %108, float %113)
  %115 = call float @llvm.fabs.f32(float %114)
  %116 = fpext float %115 to double
  %117 = fmul double %116, 0x3EF0001000100010
  %118 = fptrunc double %117 to float
  %119 = fpext float %118 to double
  %120 = fadd double %81, %119
  store double %120, ptr %19, align 8, !tbaa !53
  %121 = fadd double %80, %119
  store double %121, ptr %20, align 8, !tbaa !53
  br label %122

122:                                              ; preds = %105, %100
  %123 = phi double [ %121, %105 ], [ %80, %100 ]
  %124 = phi double [ %120, %105 ], [ %81, %100 ]
  br i1 %22, label %142, label %125

125:                                              ; preds = %122
  %126 = getelementptr inbounds %struct._PixelPacket, ptr %84, i64 0, i32 1
  %127 = load i16, ptr %126, align 2, !tbaa !64
  %128 = uitofp i16 %127 to float
  %129 = getelementptr inbounds %struct._PixelPacket, ptr %83, i64 0, i32 1
  %130 = load i16, ptr %129, align 2, !tbaa !64
  %131 = uitofp i16 %130 to float
  %132 = fneg float %104
  %133 = fmul float %132, %131
  %134 = call float @llvm.fmuladd.f32(float %94, float %128, float %133)
  %135 = call float @llvm.fabs.f32(float %134)
  %136 = fpext float %135 to double
  %137 = fmul double %136, 0x3EF0001000100010
  %138 = fptrunc double %137 to float
  %139 = fpext float %138 to double
  %140 = fadd double %79, %139
  store double %140, ptr %23, align 16, !tbaa !53
  %141 = fadd double %123, %139
  store double %141, ptr %20, align 8, !tbaa !53
  br label %142

142:                                              ; preds = %125, %122
  %143 = phi double [ %140, %125 ], [ %79, %122 ]
  %144 = phi double [ %141, %125 ], [ %123, %122 ]
  br i1 %25, label %160, label %145

145:                                              ; preds = %142
  %146 = load i16, ptr %84, align 2, !tbaa !65
  %147 = uitofp i16 %146 to float
  %148 = load i16, ptr %83, align 2, !tbaa !65
  %149 = uitofp i16 %148 to float
  %150 = fneg float %104
  %151 = fmul float %150, %149
  %152 = call float @llvm.fmuladd.f32(float %94, float %147, float %151)
  %153 = call float @llvm.fabs.f32(float %152)
  %154 = fpext float %153 to double
  %155 = fmul double %154, 0x3EF0001000100010
  %156 = fptrunc double %155 to float
  %157 = fpext float %156 to double
  %158 = fadd double %78, %157
  store double %158, ptr %26, align 16, !tbaa !53
  %159 = fadd double %144, %157
  store double %159, ptr %20, align 8, !tbaa !53
  br label %160

160:                                              ; preds = %145, %142
  %161 = phi double [ %158, %145 ], [ %78, %142 ]
  %162 = phi double [ %159, %145 ], [ %144, %142 ]
  br i1 %57, label %177, label %163

163:                                              ; preds = %160
  %164 = getelementptr inbounds %struct._PixelPacket, ptr %84, i64 0, i32 3
  %165 = load i16, ptr %164, align 2, !tbaa !67
  %166 = uitofp i16 %165 to double
  %167 = getelementptr inbounds %struct._PixelPacket, ptr %83, i64 0, i32 3
  %168 = load i16, ptr %167, align 2, !tbaa !67
  %169 = uitofp i16 %168 to double
  %170 = fsub double %166, %169
  %171 = call double @llvm.fabs.f64(double %170)
  %172 = fmul double %171, 0x3EF0001000100010
  %173 = fptrunc double %172 to float
  %174 = fpext float %173 to double
  %175 = fadd double %77, %174
  store double %175, ptr %29, align 16, !tbaa !53
  %176 = fadd double %162, %174
  store double %176, ptr %20, align 8, !tbaa !53
  br label %177

177:                                              ; preds = %160, %163
  %178 = phi double [ %77, %160 ], [ %175, %163 ]
  %179 = phi double [ %162, %160 ], [ %176, %163 ]
  br i1 %31, label %208, label %180

180:                                              ; preds = %177
  %181 = load i32, ptr %32, align 4, !tbaa !57
  %182 = icmp eq i32 %181, 12
  br i1 %182, label %183, label %208

183:                                              ; preds = %180
  br i1 %58, label %188, label %184

184:                                              ; preds = %183
  %185 = getelementptr inbounds i16, ptr %47, i64 %82
  %186 = load i16, ptr %185, align 2, !tbaa !68
  %187 = zext i16 %186 to i32
  br label %188

188:                                              ; preds = %183, %184
  %189 = phi i32 [ %187, %184 ], [ 0, %183 ]
  %190 = sitofp i32 %189 to float
  br i1 %59, label %195, label %191

191:                                              ; preds = %188
  %192 = getelementptr inbounds i16, ptr %48, i64 %82
  %193 = load i16, ptr %192, align 2, !tbaa !68
  %194 = zext i16 %193 to i32
  br label %195

195:                                              ; preds = %188, %191
  %196 = phi i32 [ %194, %191 ], [ 0, %188 ]
  %197 = sitofp i32 %196 to float
  %198 = fneg float %104
  %199 = fmul float %198, %197
  %200 = call float @llvm.fmuladd.f32(float %94, float %190, float %199)
  %201 = call float @llvm.fabs.f32(float %200)
  %202 = fpext float %201 to double
  %203 = fmul double %202, 0x3EF0001000100010
  %204 = fptrunc double %203 to float
  %205 = fpext float %204 to double
  %206 = fadd double %76, %205
  store double %206, ptr %33, align 16, !tbaa !53
  %207 = fadd double %179, %205
  store double %207, ptr %20, align 8, !tbaa !53
  br label %208

208:                                              ; preds = %195, %180, %177
  %209 = phi double [ %206, %195 ], [ %76, %180 ], [ %76, %177 ]
  %210 = phi double [ %207, %195 ], [ %179, %180 ], [ %179, %177 ]
  %211 = getelementptr inbounds %struct._PixelPacket, ptr %84, i64 1
  %212 = getelementptr inbounds %struct._PixelPacket, ptr %83, i64 1
  %213 = add nuw nsw i64 %82, 1
  %214 = icmp eq i64 %213, %50
  br i1 %214, label %215, label %75, !llvm.loop !97

215:                                              ; preds = %208, %46
  br label %66

216:                                              ; preds = %66, %38, %34
  %217 = phi i32 [ 0, %34 ], [ 0, %38 ], [ 1, %66 ]
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %6) #17
  %218 = add nuw nsw i64 %36, 1
  %219 = load i64, ptr %9, align 8, !tbaa !55
  %220 = icmp slt i64 %218, %219
  br i1 %220, label %34, label %221, !llvm.loop !98

221:                                              ; preds = %216, %5
  %222 = phi i32 [ 1, %5 ], [ %217, %216 ]
  %223 = call ptr @DestroyCacheView(ptr noundef %8) #18
  %224 = call ptr @DestroyCacheView(ptr noundef %7) #18
  %225 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %226 = load <2 x i64>, ptr %225, align 8, !tbaa !60
  %227 = uitofp <2 x i64> %226 to <2 x double>
  %228 = shufflevector <2 x double> %227, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %229 = fmul <2 x double> %228, %227
  %230 = shufflevector <2 x double> %229, <2 x double> poison, <2 x i32> zeroinitializer
  br label %231

231:                                              ; preds = %231, %221
  %232 = phi i64 [ 0, %221 ], [ %236, %231 ]
  %233 = getelementptr inbounds double, ptr %3, i64 %232
  %234 = load <2 x double>, ptr %233, align 8, !tbaa !53
  %235 = fdiv <2 x double> %234, %230
  store <2 x double> %235, ptr %233, align 8, !tbaa !53
  %236 = add nuw i64 %232, 2
  %237 = icmp eq i64 %236, 48
  br i1 %237, label %238, label %231, !llvm.loop !99

238:                                              ; preds = %231
  %239 = call fastcc i64 @GetNumberChannels(ptr noundef nonnull %0, i32 noundef %2) #16
  %240 = uitofp i64 %239 to double
  %241 = getelementptr inbounds double, ptr %3, i64 47
  %242 = load double, ptr %241, align 8, !tbaa !53
  %243 = fdiv double %242, %240
  store double %243, ptr %241, align 8, !tbaa !53
  ret i32 %222
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @GetMeanErrorPerPixel(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr noundef %4) unnamed_addr #0 !PGOFuncName !100 {
  %6 = tail call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %4) #18
  %7 = tail call ptr @AcquireVirtualCacheView(ptr noundef %1, ptr noundef %4) #18
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %9 = load i64, ptr %8, align 8, !tbaa !55
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %239

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
  %23 = and i32 %2, 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds double, ptr %3, i64 4
  %26 = and i32 %2, 8
  %27 = icmp eq i32 %26, 0
  %28 = getelementptr inbounds double, ptr %3, i64 8
  %29 = and i32 %2, 32
  %30 = icmp eq i32 %29, 0
  %31 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %32 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %33 = getelementptr inbounds double, ptr %3, i64 32
  %34 = load i64, ptr %12, align 8, !tbaa !54
  br label %35

35:                                               ; preds = %11, %222
  %36 = phi i64 [ %34, %11 ], [ %50, %222 ]
  %37 = phi float [ 0.000000e+00, %11 ], [ %225, %222 ]
  %38 = phi i64 [ 0, %11 ], [ %226, %222 ]
  %39 = phi float [ 0.000000e+00, %11 ], [ %224, %222 ]
  %40 = phi float [ 0.000000e+00, %11 ], [ %223, %222 ]
  %41 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %6, i64 noundef 0, i64 noundef %38, i64 noundef %36, i64 noundef 1, ptr noundef %4) #19
  %42 = load i64, ptr %13, align 8, !tbaa !54
  %43 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %7, i64 noundef 0, i64 noundef %38, i64 noundef %42, i64 noundef 1, ptr noundef %4) #19
  %44 = icmp eq ptr %41, null
  %45 = icmp eq ptr %43, null
  %46 = select i1 %44, i1 true, i1 %45
  br i1 %46, label %229, label %47

47:                                               ; preds = %35
  %48 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %6) #18
  %49 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %7) #18
  %50 = load i64, ptr %12, align 8, !tbaa !54
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %52, label %222

52:                                               ; preds = %47
  %53 = load i32, ptr %14, align 8, !tbaa !66
  %54 = icmp eq i32 %53, 0
  %55 = load i32, ptr %15, align 8, !tbaa !66
  %56 = icmp eq i32 %55, 0
  %57 = or i1 %27, %54
  %58 = icmp eq ptr %48, null
  %59 = icmp eq ptr %49, null
  br label %60

60:                                               ; preds = %52, %214
  %61 = phi i64 [ 0, %52 ], [ %220, %214 ]
  %62 = phi ptr [ %43, %52 ], [ %219, %214 ]
  %63 = phi ptr [ %41, %52 ], [ %218, %214 ]
  %64 = phi float [ %37, %52 ], [ %217, %214 ]
  %65 = phi float [ %39, %52 ], [ %216, %214 ]
  %66 = phi float [ %40, %52 ], [ %215, %214 ]
  br i1 %54, label %72, label %67

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct._PixelPacket, ptr %63, i64 0, i32 3
  %69 = load i16, ptr %68, align 2, !tbaa !67
  %70 = xor i16 %69, -1
  %71 = zext i16 %70 to i32
  br label %72

72:                                               ; preds = %60, %67
  %73 = phi i32 [ %71, %67 ], [ 65535, %60 ]
  %74 = sitofp i32 %73 to double
  %75 = fmul double %74, 0x3EF0001000100010
  %76 = fptrunc double %75 to float
  br i1 %56, label %82, label %77

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct._PixelPacket, ptr %62, i64 0, i32 3
  %79 = load i16, ptr %78, align 2, !tbaa !67
  %80 = xor i16 %79, -1
  %81 = zext i16 %80 to i32
  br label %82

82:                                               ; preds = %72, %77
  %83 = phi i32 [ %81, %77 ], [ 65535, %72 ]
  %84 = sitofp i32 %83 to double
  %85 = fmul double %84, 0x3EF0001000100010
  %86 = fptrunc double %85 to float
  br i1 %17, label %107, label %87

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct._PixelPacket, ptr %63, i64 0, i32 2
  %89 = load i16, ptr %88, align 2, !tbaa !63
  %90 = uitofp i16 %89 to float
  %91 = getelementptr inbounds %struct._PixelPacket, ptr %62, i64 0, i32 2
  %92 = load i16, ptr %91, align 2, !tbaa !63
  %93 = uitofp i16 %92 to float
  %94 = fneg float %86
  %95 = fmul float %94, %93
  %96 = tail call float @llvm.fmuladd.f32(float %76, float %90, float %95)
  %97 = tail call float @llvm.fabs.f32(float %96)
  %98 = fpext float %97 to double
  %99 = load double, ptr %18, align 8, !tbaa !53
  %100 = fadd double %99, %98
  store double %100, ptr %18, align 8, !tbaa !53
  %101 = load double, ptr %19, align 8, !tbaa !53
  %102 = fadd double %101, %98
  store double %102, ptr %19, align 8, !tbaa !53
  %103 = tail call float @llvm.fmuladd.f32(float %96, float %96, float %65)
  %104 = fcmp ogt float %97, %66
  %105 = select i1 %104, float %97, float %66
  %106 = fadd float %64, 1.000000e+00
  br label %107

107:                                              ; preds = %87, %82
  %108 = phi float [ %105, %87 ], [ %66, %82 ]
  %109 = phi float [ %103, %87 ], [ %65, %82 ]
  %110 = phi float [ %106, %87 ], [ %64, %82 ]
  br i1 %21, label %131, label %111

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct._PixelPacket, ptr %63, i64 0, i32 1
  %113 = load i16, ptr %112, align 2, !tbaa !64
  %114 = uitofp i16 %113 to float
  %115 = getelementptr inbounds %struct._PixelPacket, ptr %62, i64 0, i32 1
  %116 = load i16, ptr %115, align 2, !tbaa !64
  %117 = uitofp i16 %116 to float
  %118 = fneg float %86
  %119 = fmul float %118, %117
  %120 = tail call float @llvm.fmuladd.f32(float %76, float %114, float %119)
  %121 = tail call float @llvm.fabs.f32(float %120)
  %122 = fpext float %121 to double
  %123 = load double, ptr %22, align 8, !tbaa !53
  %124 = fadd double %123, %122
  store double %124, ptr %22, align 8, !tbaa !53
  %125 = load double, ptr %19, align 8, !tbaa !53
  %126 = fadd double %125, %122
  store double %126, ptr %19, align 8, !tbaa !53
  %127 = tail call float @llvm.fmuladd.f32(float %120, float %120, float %109)
  %128 = fcmp ogt float %121, %108
  %129 = select i1 %128, float %121, float %108
  %130 = fadd float %110, 1.000000e+00
  br label %131

131:                                              ; preds = %111, %107
  %132 = phi float [ %129, %111 ], [ %108, %107 ]
  %133 = phi float [ %127, %111 ], [ %109, %107 ]
  %134 = phi float [ %130, %111 ], [ %110, %107 ]
  br i1 %24, label %153, label %135

135:                                              ; preds = %131
  %136 = load i16, ptr %63, align 2, !tbaa !65
  %137 = uitofp i16 %136 to float
  %138 = load i16, ptr %62, align 2, !tbaa !65
  %139 = uitofp i16 %138 to float
  %140 = fneg float %86
  %141 = fmul float %140, %139
  %142 = tail call float @llvm.fmuladd.f32(float %76, float %137, float %141)
  %143 = tail call float @llvm.fabs.f32(float %142)
  %144 = fpext float %143 to double
  %145 = load double, ptr %25, align 8, !tbaa !53
  %146 = fadd double %145, %144
  store double %146, ptr %25, align 8, !tbaa !53
  %147 = load double, ptr %19, align 8, !tbaa !53
  %148 = fadd double %147, %144
  store double %148, ptr %19, align 8, !tbaa !53
  %149 = tail call float @llvm.fmuladd.f32(float %142, float %142, float %133)
  %150 = fcmp ogt float %143, %132
  %151 = select i1 %150, float %143, float %132
  %152 = fadd float %134, 1.000000e+00
  br label %153

153:                                              ; preds = %135, %131
  %154 = phi float [ %151, %135 ], [ %132, %131 ]
  %155 = phi float [ %149, %135 ], [ %133, %131 ]
  %156 = phi float [ %152, %135 ], [ %134, %131 ]
  br i1 %57, label %176, label %157

157:                                              ; preds = %153
  %158 = getelementptr inbounds %struct._PixelPacket, ptr %63, i64 0, i32 3
  %159 = load i16, ptr %158, align 2, !tbaa !67
  %160 = uitofp i16 %159 to double
  %161 = getelementptr inbounds %struct._PixelPacket, ptr %62, i64 0, i32 3
  %162 = load i16, ptr %161, align 2, !tbaa !67
  %163 = uitofp i16 %162 to double
  %164 = fsub double %160, %163
  %165 = fptrunc double %164 to float
  %166 = tail call float @llvm.fabs.f32(float %165)
  %167 = fpext float %166 to double
  %168 = load double, ptr %28, align 8, !tbaa !53
  %169 = fadd double %168, %167
  store double %169, ptr %28, align 8, !tbaa !53
  %170 = load double, ptr %19, align 8, !tbaa !53
  %171 = fadd double %170, %167
  store double %171, ptr %19, align 8, !tbaa !53
  %172 = tail call float @llvm.fmuladd.f32(float %165, float %165, float %155)
  %173 = fcmp ogt float %166, %154
  %174 = select i1 %173, float %166, float %154
  %175 = fadd float %156, 1.000000e+00
  br label %176

176:                                              ; preds = %153, %157
  %177 = phi float [ %174, %157 ], [ %154, %153 ]
  %178 = phi float [ %172, %157 ], [ %155, %153 ]
  %179 = phi float [ %175, %157 ], [ %156, %153 ]
  br i1 %30, label %214, label %180

180:                                              ; preds = %176
  %181 = load i32, ptr %31, align 4, !tbaa !57
  %182 = icmp eq i32 %181, 12
  br i1 %182, label %183, label %214

183:                                              ; preds = %180
  %184 = load i32, ptr %32, align 4, !tbaa !57
  %185 = icmp eq i32 %184, 12
  br i1 %185, label %186, label %214

186:                                              ; preds = %183
  br i1 %58, label %191, label %187

187:                                              ; preds = %186
  %188 = getelementptr inbounds i16, ptr %48, i64 %61
  %189 = load i16, ptr %188, align 2, !tbaa !68
  %190 = zext i16 %189 to i32
  br label %191

191:                                              ; preds = %186, %187
  %192 = phi i32 [ %190, %187 ], [ 0, %186 ]
  %193 = sitofp i32 %192 to float
  br i1 %59, label %198, label %194

194:                                              ; preds = %191
  %195 = getelementptr inbounds i16, ptr %49, i64 %61
  %196 = load i16, ptr %195, align 2, !tbaa !68
  %197 = zext i16 %196 to i32
  br label %198

198:                                              ; preds = %191, %194
  %199 = phi i32 [ %197, %194 ], [ 0, %191 ]
  %200 = sitofp i32 %199 to float
  %201 = fneg float %86
  %202 = fmul float %201, %200
  %203 = tail call float @llvm.fmuladd.f32(float %76, float %193, float %202)
  %204 = tail call float @llvm.fabs.f32(float %203)
  %205 = fpext float %204 to double
  %206 = load double, ptr %33, align 8, !tbaa !53
  %207 = fadd double %206, %205
  store double %207, ptr %33, align 8, !tbaa !53
  %208 = load double, ptr %19, align 8, !tbaa !53
  %209 = fadd double %208, %205
  store double %209, ptr %19, align 8, !tbaa !53
  %210 = tail call float @llvm.fmuladd.f32(float %203, float %203, float %178)
  %211 = fcmp ogt float %204, %177
  %212 = select i1 %211, float %204, float %177
  %213 = fadd float %179, 1.000000e+00
  br label %214

214:                                              ; preds = %198, %183, %180, %176
  %215 = phi float [ %212, %198 ], [ %177, %183 ], [ %177, %180 ], [ %177, %176 ]
  %216 = phi float [ %210, %198 ], [ %178, %183 ], [ %178, %180 ], [ %178, %176 ]
  %217 = phi float [ %213, %198 ], [ %179, %183 ], [ %179, %180 ], [ %179, %176 ]
  %218 = getelementptr inbounds %struct._PixelPacket, ptr %63, i64 1
  %219 = getelementptr inbounds %struct._PixelPacket, ptr %62, i64 1
  %220 = add nuw nsw i64 %61, 1
  %221 = icmp eq i64 %220, %50
  br i1 %221, label %222, label %60, !llvm.loop !101

222:                                              ; preds = %214, %47
  %223 = phi float [ %40, %47 ], [ %215, %214 ]
  %224 = phi float [ %39, %47 ], [ %216, %214 ]
  %225 = phi float [ %37, %47 ], [ %217, %214 ]
  %226 = add nuw nsw i64 %38, 1
  %227 = load i64, ptr %8, align 8, !tbaa !55
  %228 = icmp slt i64 %226, %227
  br i1 %228, label %35, label %229, !llvm.loop !102

229:                                              ; preds = %35, %222
  %230 = phi float [ %223, %222 ], [ %40, %35 ]
  %231 = phi float [ %224, %222 ], [ %39, %35 ]
  %232 = phi float [ %225, %222 ], [ %37, %35 ]
  %233 = phi i32 [ 1, %222 ], [ 0, %35 ]
  %234 = fpext float %232 to double
  %235 = fpext float %231 to double
  %236 = fmul double %235, 0x3DF0002000300040
  %237 = fpext float %230 to double
  %238 = fmul double %237, 0x3EF0001000100010
  br label %239

239:                                              ; preds = %229, %5
  %240 = phi double [ 0.000000e+00, %5 ], [ %238, %229 ]
  %241 = phi double [ 0.000000e+00, %5 ], [ %236, %229 ]
  %242 = phi double [ 0.000000e+00, %5 ], [ %234, %229 ]
  %243 = phi i32 [ 1, %5 ], [ %233, %229 ]
  %244 = tail call ptr @DestroyCacheView(ptr noundef %7) #18
  %245 = tail call ptr @DestroyCacheView(ptr noundef %6) #18
  %246 = getelementptr inbounds double, ptr %3, i64 47
  %247 = load double, ptr %246, align 8, !tbaa !53
  %248 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 45
  %249 = insertelement <2 x double> poison, double %247, i64 0
  %250 = insertelement <2 x double> %249, double %241, i64 1
  %251 = insertelement <2 x double> poison, double %242, i64 0
  %252 = shufflevector <2 x double> %251, <2 x double> poison, <2 x i32> zeroinitializer
  %253 = fdiv <2 x double> %250, %252
  store <2 x double> %253, ptr %248, align 8, !tbaa !53
  %254 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 45, i32 2
  store double %240, ptr %254, align 8, !tbaa !103
  ret i32 %243
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @GetMeanSquaredDistortion(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr noundef %4) unnamed_addr #0 !PGOFuncName !104 {
  %6 = alloca [48 x double], align 16
  %7 = tail call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %4) #18
  %8 = tail call ptr @AcquireVirtualCacheView(ptr noundef %1, ptr noundef %4) #18
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %10 = load i64, ptr %9, align 8, !tbaa !55
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %226

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
  %24 = and i32 %2, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 4
  %27 = and i32 %2, 8
  %28 = icmp eq i32 %27, 0
  %29 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 8
  %30 = and i32 %2, 32
  %31 = icmp eq i32 %30, 0
  %32 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %33 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %34 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 32
  br label %35

35:                                               ; preds = %12, %221
  %36 = phi i32 [ 1, %12 ], [ %222, %221 ]
  %37 = phi i64 [ 0, %12 ], [ %223, %221 ]
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %6) #17
  %38 = icmp eq i32 %36, 0
  br i1 %38, label %221, label %39

39:                                               ; preds = %35
  %40 = load i64, ptr %13, align 8, !tbaa !54
  %41 = call ptr @GetCacheViewVirtualPixels(ptr noundef %7, i64 noundef 0, i64 noundef %37, i64 noundef %40, i64 noundef 1, ptr noundef %4) #19
  %42 = load i64, ptr %14, align 8, !tbaa !54
  %43 = call ptr @GetCacheViewVirtualPixels(ptr noundef %8, i64 noundef 0, i64 noundef %37, i64 noundef %42, i64 noundef 1, ptr noundef %4) #19
  %44 = icmp eq ptr %41, null
  %45 = icmp eq ptr %43, null
  %46 = select i1 %44, i1 true, i1 %45
  br i1 %46, label %221, label %47

47:                                               ; preds = %39
  %48 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %7) #18
  %49 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %8) #18
  %50 = call ptr @ResetMagickMemory(ptr noundef nonnull %6, i32 noundef 0, i64 noundef 384) #18
  %51 = load i64, ptr %13, align 8, !tbaa !54
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %220

53:                                               ; preds = %47
  %54 = load i32, ptr %15, align 8, !tbaa !66
  %55 = icmp eq i32 %54, 0
  %56 = load i32, ptr %16, align 8, !tbaa !66
  %57 = icmp eq i32 %56, 0
  %58 = or i1 %28, %55
  %59 = icmp eq ptr %48, null
  %60 = icmp eq ptr %49, null
  %61 = load double, ptr %19, align 8, !tbaa !53
  %62 = load double, ptr %20, align 8, !tbaa !53
  %63 = load double, ptr %23, align 16, !tbaa !53
  %64 = load double, ptr %26, align 16, !tbaa !53
  %65 = load double, ptr %29, align 16, !tbaa !53
  %66 = load double, ptr %34, align 16, !tbaa !53
  br label %76

67:                                               ; preds = %220, %67
  %68 = phi i64 [ %74, %67 ], [ 0, %220 ]
  %69 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 %68
  %70 = load <2 x double>, ptr %69, align 16, !tbaa !53
  %71 = getelementptr inbounds double, ptr %3, i64 %68
  %72 = load <2 x double>, ptr %71, align 8, !tbaa !53
  %73 = fadd <2 x double> %70, %72
  store <2 x double> %73, ptr %71, align 8, !tbaa !53
  %74 = add nuw i64 %68, 2
  %75 = icmp eq i64 %74, 48
  br i1 %75, label %221, label %67, !llvm.loop !105

76:                                               ; preds = %53, %213
  %77 = phi double [ %66, %53 ], [ %214, %213 ]
  %78 = phi double [ %65, %53 ], [ %180, %213 ]
  %79 = phi double [ %64, %53 ], [ %162, %213 ]
  %80 = phi double [ %63, %53 ], [ %144, %213 ]
  %81 = phi double [ %62, %53 ], [ %215, %213 ]
  %82 = phi double [ %61, %53 ], [ %125, %213 ]
  %83 = phi i64 [ 0, %53 ], [ %218, %213 ]
  %84 = phi ptr [ %43, %53 ], [ %217, %213 ]
  %85 = phi ptr [ %41, %53 ], [ %216, %213 ]
  br i1 %55, label %91, label %86

86:                                               ; preds = %76
  %87 = getelementptr inbounds %struct._PixelPacket, ptr %85, i64 0, i32 3
  %88 = load i16, ptr %87, align 2, !tbaa !67
  %89 = xor i16 %88, -1
  %90 = zext i16 %89 to i32
  br label %91

91:                                               ; preds = %76, %86
  %92 = phi i32 [ %90, %86 ], [ 65535, %76 ]
  %93 = sitofp i32 %92 to double
  %94 = fmul double %93, 0x3EF0001000100010
  %95 = fptrunc double %94 to float
  br i1 %57, label %101, label %96

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct._PixelPacket, ptr %84, i64 0, i32 3
  %98 = load i16, ptr %97, align 2, !tbaa !67
  %99 = xor i16 %98, -1
  %100 = zext i16 %99 to i32
  br label %101

101:                                              ; preds = %91, %96
  %102 = phi i32 [ %100, %96 ], [ 65535, %91 ]
  %103 = sitofp i32 %102 to double
  %104 = fmul double %103, 0x3EF0001000100010
  %105 = fptrunc double %104 to float
  br i1 %18, label %123, label %106

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct._PixelPacket, ptr %85, i64 0, i32 2
  %108 = load i16, ptr %107, align 2, !tbaa !63
  %109 = uitofp i16 %108 to float
  %110 = getelementptr inbounds %struct._PixelPacket, ptr %84, i64 0, i32 2
  %111 = load i16, ptr %110, align 2, !tbaa !63
  %112 = uitofp i16 %111 to float
  %113 = fneg float %105
  %114 = fmul float %113, %112
  %115 = call float @llvm.fmuladd.f32(float %95, float %109, float %114)
  %116 = fpext float %115 to double
  %117 = fmul double %116, 0x3EF0001000100010
  %118 = fptrunc double %117 to float
  %119 = fmul float %118, %118
  %120 = fpext float %119 to double
  %121 = fadd double %82, %120
  store double %121, ptr %19, align 8, !tbaa !53
  %122 = fadd double %81, %120
  store double %122, ptr %20, align 8, !tbaa !53
  br label %123

123:                                              ; preds = %106, %101
  %124 = phi double [ %122, %106 ], [ %81, %101 ]
  %125 = phi double [ %121, %106 ], [ %82, %101 ]
  br i1 %22, label %143, label %126

126:                                              ; preds = %123
  %127 = getelementptr inbounds %struct._PixelPacket, ptr %85, i64 0, i32 1
  %128 = load i16, ptr %127, align 2, !tbaa !64
  %129 = uitofp i16 %128 to float
  %130 = getelementptr inbounds %struct._PixelPacket, ptr %84, i64 0, i32 1
  %131 = load i16, ptr %130, align 2, !tbaa !64
  %132 = uitofp i16 %131 to float
  %133 = fneg float %105
  %134 = fmul float %133, %132
  %135 = call float @llvm.fmuladd.f32(float %95, float %129, float %134)
  %136 = fpext float %135 to double
  %137 = fmul double %136, 0x3EF0001000100010
  %138 = fptrunc double %137 to float
  %139 = fmul float %138, %138
  %140 = fpext float %139 to double
  %141 = fadd double %80, %140
  store double %141, ptr %23, align 16, !tbaa !53
  %142 = fadd double %124, %140
  store double %142, ptr %20, align 8, !tbaa !53
  br label %143

143:                                              ; preds = %126, %123
  %144 = phi double [ %141, %126 ], [ %80, %123 ]
  %145 = phi double [ %142, %126 ], [ %124, %123 ]
  br i1 %25, label %161, label %146

146:                                              ; preds = %143
  %147 = load i16, ptr %85, align 2, !tbaa !65
  %148 = uitofp i16 %147 to float
  %149 = load i16, ptr %84, align 2, !tbaa !65
  %150 = uitofp i16 %149 to float
  %151 = fneg float %105
  %152 = fmul float %151, %150
  %153 = call float @llvm.fmuladd.f32(float %95, float %148, float %152)
  %154 = fpext float %153 to double
  %155 = fmul double %154, 0x3EF0001000100010
  %156 = fptrunc double %155 to float
  %157 = fmul float %156, %156
  %158 = fpext float %157 to double
  %159 = fadd double %79, %158
  store double %159, ptr %26, align 16, !tbaa !53
  %160 = fadd double %145, %158
  store double %160, ptr %20, align 8, !tbaa !53
  br label %161

161:                                              ; preds = %146, %143
  %162 = phi double [ %159, %146 ], [ %79, %143 ]
  %163 = phi double [ %160, %146 ], [ %145, %143 ]
  br i1 %58, label %179, label %164

164:                                              ; preds = %161
  %165 = getelementptr inbounds %struct._PixelPacket, ptr %85, i64 0, i32 3
  %166 = load i16, ptr %165, align 2, !tbaa !67
  %167 = uitofp i16 %166 to float
  %168 = getelementptr inbounds %struct._PixelPacket, ptr %84, i64 0, i32 3
  %169 = load i16, ptr %168, align 2, !tbaa !67
  %170 = uitofp i16 %169 to float
  %171 = fsub float %167, %170
  %172 = fpext float %171 to double
  %173 = fmul double %172, 0x3EF0001000100010
  %174 = fptrunc double %173 to float
  %175 = fmul float %174, %174
  %176 = fpext float %175 to double
  %177 = fadd double %78, %176
  store double %177, ptr %29, align 16, !tbaa !53
  %178 = fadd double %163, %176
  store double %178, ptr %20, align 8, !tbaa !53
  br label %179

179:                                              ; preds = %161, %164
  %180 = phi double [ %78, %161 ], [ %177, %164 ]
  %181 = phi double [ %163, %161 ], [ %178, %164 ]
  br i1 %31, label %213, label %182

182:                                              ; preds = %179
  %183 = load i32, ptr %32, align 4, !tbaa !57
  %184 = icmp eq i32 %183, 12
  br i1 %184, label %185, label %213

185:                                              ; preds = %182
  %186 = load i32, ptr %33, align 4, !tbaa !57
  %187 = icmp eq i32 %186, 12
  br i1 %187, label %188, label %213

188:                                              ; preds = %185
  br i1 %59, label %193, label %189

189:                                              ; preds = %188
  %190 = getelementptr inbounds i16, ptr %48, i64 %83
  %191 = load i16, ptr %190, align 2, !tbaa !68
  %192 = zext i16 %191 to i32
  br label %193

193:                                              ; preds = %188, %189
  %194 = phi i32 [ %192, %189 ], [ 0, %188 ]
  %195 = sitofp i32 %194 to float
  br i1 %60, label %200, label %196

196:                                              ; preds = %193
  %197 = getelementptr inbounds i16, ptr %49, i64 %83
  %198 = load i16, ptr %197, align 2, !tbaa !68
  %199 = zext i16 %198 to i32
  br label %200

200:                                              ; preds = %193, %196
  %201 = phi i32 [ %199, %196 ], [ 0, %193 ]
  %202 = sitofp i32 %201 to float
  %203 = fneg float %105
  %204 = fmul float %203, %202
  %205 = call float @llvm.fmuladd.f32(float %95, float %195, float %204)
  %206 = fpext float %205 to double
  %207 = fmul double %206, 0x3EF0001000100010
  %208 = fptrunc double %207 to float
  %209 = fmul float %208, %208
  %210 = fpext float %209 to double
  %211 = fadd double %77, %210
  store double %211, ptr %34, align 16, !tbaa !53
  %212 = fadd double %181, %210
  store double %212, ptr %20, align 8, !tbaa !53
  br label %213

213:                                              ; preds = %200, %185, %182, %179
  %214 = phi double [ %211, %200 ], [ %77, %185 ], [ %77, %182 ], [ %77, %179 ]
  %215 = phi double [ %212, %200 ], [ %181, %185 ], [ %181, %182 ], [ %181, %179 ]
  %216 = getelementptr inbounds %struct._PixelPacket, ptr %85, i64 1
  %217 = getelementptr inbounds %struct._PixelPacket, ptr %84, i64 1
  %218 = add nuw nsw i64 %83, 1
  %219 = icmp eq i64 %218, %51
  br i1 %219, label %220, label %76, !llvm.loop !106

220:                                              ; preds = %213, %47
  br label %67

221:                                              ; preds = %67, %39, %35
  %222 = phi i32 [ 0, %35 ], [ 0, %39 ], [ 1, %67 ]
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %6) #17
  %223 = add nuw nsw i64 %37, 1
  %224 = load i64, ptr %9, align 8, !tbaa !55
  %225 = icmp slt i64 %223, %224
  br i1 %225, label %35, label %226, !llvm.loop !107

226:                                              ; preds = %221, %5
  %227 = phi i32 [ 1, %5 ], [ %222, %221 ]
  %228 = call ptr @DestroyCacheView(ptr noundef %8) #18
  %229 = call ptr @DestroyCacheView(ptr noundef %7) #18
  %230 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %231 = load <2 x i64>, ptr %230, align 8, !tbaa !60
  %232 = uitofp <2 x i64> %231 to <2 x double>
  %233 = shufflevector <2 x double> %232, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %234 = fmul <2 x double> %233, %232
  %235 = shufflevector <2 x double> %234, <2 x double> poison, <2 x i32> zeroinitializer
  br label %236

236:                                              ; preds = %236, %226
  %237 = phi i64 [ 0, %226 ], [ %241, %236 ]
  %238 = getelementptr inbounds double, ptr %3, i64 %237
  %239 = load <2 x double>, ptr %238, align 8, !tbaa !53
  %240 = fdiv <2 x double> %239, %235
  store <2 x double> %240, ptr %238, align 8, !tbaa !53
  %241 = add nuw i64 %237, 2
  %242 = icmp eq i64 %241, 48
  br i1 %242, label %243, label %236, !llvm.loop !108

243:                                              ; preds = %236
  %244 = call fastcc i64 @GetNumberChannels(ptr noundef nonnull %0, i32 noundef %2) #16
  %245 = uitofp i64 %244 to double
  %246 = getelementptr inbounds double, ptr %3, i64 47
  %247 = load double, ptr %246, align 8, !tbaa !53
  %248 = fdiv double %247, %245
  store double %248, ptr %246, align 8, !tbaa !53
  ret i32 %227
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @GetNormalizedCrossCorrelationDistortion(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr noundef %4) unnamed_addr #0 !PGOFuncName !109 {
  %6 = tail call ptr @GetImageChannelStatistics(ptr noundef %0, ptr noundef %4) #18
  %7 = tail call ptr @GetImageChannelStatistics(ptr noundef %1, ptr noundef %4) #18
  %8 = icmp eq ptr %6, null
  %9 = icmp eq ptr %7, null
  %10 = select i1 %8, i1 true, i1 %9
  br i1 %10, label %20, label %11

11:                                               ; preds = %5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %3, i8 0, i64 384, i1 false), !tbaa !53
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %13 = load i64, ptr %12, align 8, !tbaa !54
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %15 = load i64, ptr %14, align 8, !tbaa !55
  %16 = tail call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %4) #18
  %17 = tail call ptr @AcquireVirtualCacheView(ptr noundef %1, ptr noundef %4) #18
  %18 = load i64, ptr %14, align 8, !tbaa !55
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %24, label %234

20:                                               ; preds = %5
  br i1 %8, label %23, label %21

21:                                               ; preds = %20
  %22 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %6) #18
  br label %23

23:                                               ; preds = %21, %20
  br i1 %9, label %313, label %309

24:                                               ; preds = %11
  %25 = uitofp i64 %13 to float
  %26 = uitofp i64 %15 to float
  %27 = tail call float @llvm.fmuladd.f32(float %25, float %26, float -1.000000e+00)
  %28 = fdiv float 1.000000e+00, %27
  %29 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  %30 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %31 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 6
  %32 = and i32 %2, 1
  %33 = icmp eq i32 %32, 0
  %34 = fpext float %28 to double
  %35 = fmul double %34, 0x3EF0001000100010
  %36 = getelementptr inbounds %struct._ChannelStatistics, ptr %6, i64 1, i32 7
  %37 = getelementptr inbounds %struct._ChannelStatistics, ptr %7, i64 1, i32 7
  %38 = getelementptr inbounds double, ptr %3, i64 1
  %39 = and i32 %2, 2
  %40 = icmp eq i32 %39, 0
  %41 = getelementptr inbounds %struct._ChannelStatistics, ptr %6, i64 2, i32 7
  %42 = getelementptr inbounds %struct._ChannelStatistics, ptr %7, i64 2, i32 7
  %43 = getelementptr inbounds double, ptr %3, i64 2
  %44 = and i32 %2, 4
  %45 = icmp eq i32 %44, 0
  %46 = getelementptr inbounds %struct._ChannelStatistics, ptr %6, i64 4, i32 7
  %47 = getelementptr inbounds %struct._ChannelStatistics, ptr %7, i64 4, i32 7
  %48 = getelementptr inbounds double, ptr %3, i64 4
  %49 = and i32 %2, 8
  %50 = icmp eq i32 %49, 0
  %51 = getelementptr inbounds %struct._ChannelStatistics, ptr %6, i64 8, i32 7
  %52 = getelementptr inbounds %struct._ChannelStatistics, ptr %7, i64 8, i32 7
  %53 = getelementptr inbounds double, ptr %3, i64 8
  %54 = and i32 %2, 32
  %55 = icmp eq i32 %54, 0
  %56 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %57 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %58 = getelementptr inbounds %struct._ChannelStatistics, ptr %6, i64 32, i32 7
  %59 = getelementptr inbounds %struct._ChannelStatistics, ptr %7, i64 32, i32 7
  %60 = getelementptr inbounds double, ptr %3, i64 32
  %61 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %62

62:                                               ; preds = %24, %228
  %63 = phi i64 [ 0, %24 ], [ %231, %228 ]
  %64 = phi i32 [ 1, %24 ], [ %230, %228 ]
  %65 = phi i64 [ 0, %24 ], [ %229, %228 ]
  %66 = icmp eq i32 %64, 0
  br i1 %66, label %228, label %67

67:                                               ; preds = %62
  %68 = load i64, ptr %12, align 8, !tbaa !54
  %69 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %16, i64 noundef 0, i64 noundef %63, i64 noundef %68, i64 noundef 1, ptr noundef %4) #19
  %70 = load i64, ptr %29, align 8, !tbaa !54
  %71 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %17, i64 noundef 0, i64 noundef %63, i64 noundef %70, i64 noundef 1, ptr noundef %4) #19
  %72 = icmp eq ptr %69, null
  %73 = icmp eq ptr %71, null
  %74 = select i1 %72, i1 true, i1 %73
  br i1 %74, label %228, label %75

75:                                               ; preds = %67
  %76 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %16) #18
  %77 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %17) #18
  %78 = load i64, ptr %12, align 8, !tbaa !54
  %79 = icmp sgt i64 %78, 0
  br i1 %79, label %80, label %219

80:                                               ; preds = %75
  %81 = load i32, ptr %30, align 8, !tbaa !66
  %82 = icmp eq i32 %81, 0
  %83 = load i32, ptr %31, align 8, !tbaa !66
  %84 = icmp eq i32 %83, 0
  %85 = or i1 %50, %82
  %86 = icmp eq ptr %76, null
  %87 = icmp eq ptr %77, null
  br label %88

88:                                               ; preds = %80, %214
  %89 = phi i64 [ 0, %80 ], [ %217, %214 ]
  %90 = phi ptr [ %71, %80 ], [ %216, %214 ]
  %91 = phi ptr [ %69, %80 ], [ %215, %214 ]
  br i1 %82, label %97, label %92

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct._PixelPacket, ptr %91, i64 0, i32 3
  %94 = load i16, ptr %93, align 2, !tbaa !67
  %95 = xor i16 %94, -1
  %96 = zext i16 %95 to i32
  br label %97

97:                                               ; preds = %88, %92
  %98 = phi i32 [ %96, %92 ], [ 65535, %88 ]
  %99 = sitofp i32 %98 to double
  %100 = fmul double %99, 0x3EF0001000100010
  %101 = fptrunc double %100 to float
  br i1 %84, label %107, label %102

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct._PixelPacket, ptr %90, i64 0, i32 3
  %104 = load i16, ptr %103, align 2, !tbaa !67
  %105 = xor i16 %104, -1
  %106 = zext i16 %105 to i32
  br label %107

107:                                              ; preds = %97, %102
  %108 = phi i32 [ %106, %102 ], [ 65535, %97 ]
  %109 = sitofp i32 %108 to double
  %110 = fmul double %109, 0x3EF0001000100010
  %111 = fptrunc double %110 to float
  br i1 %33, label %130, label %112

112:                                              ; preds = %107
  %113 = getelementptr inbounds %struct._PixelPacket, ptr %91, i64 0, i32 2
  %114 = load i16, ptr %113, align 2, !tbaa !63
  %115 = uitofp i16 %114 to float
  %116 = fmul float %101, %115
  %117 = fpext float %116 to double
  %118 = load double, ptr %36, align 8, !tbaa !110
  %119 = fsub double %117, %118
  %120 = fmul double %35, %119
  %121 = getelementptr inbounds %struct._PixelPacket, ptr %90, i64 0, i32 2
  %122 = load i16, ptr %121, align 2, !tbaa !63
  %123 = uitofp i16 %122 to float
  %124 = fmul float %111, %123
  %125 = fpext float %124 to double
  %126 = load double, ptr %37, align 8, !tbaa !110
  %127 = fsub double %125, %126
  %128 = load double, ptr %38, align 8, !tbaa !53
  %129 = tail call double @llvm.fmuladd.f64(double %120, double %127, double %128)
  store double %129, ptr %38, align 8, !tbaa !53
  br label %130

130:                                              ; preds = %112, %107
  br i1 %40, label %149, label %131

131:                                              ; preds = %130
  %132 = getelementptr inbounds %struct._PixelPacket, ptr %91, i64 0, i32 1
  %133 = load i16, ptr %132, align 2, !tbaa !64
  %134 = uitofp i16 %133 to float
  %135 = fmul float %101, %134
  %136 = fpext float %135 to double
  %137 = load double, ptr %41, align 8, !tbaa !110
  %138 = fsub double %136, %137
  %139 = fmul double %35, %138
  %140 = getelementptr inbounds %struct._PixelPacket, ptr %90, i64 0, i32 1
  %141 = load i16, ptr %140, align 2, !tbaa !64
  %142 = uitofp i16 %141 to float
  %143 = fmul float %111, %142
  %144 = fpext float %143 to double
  %145 = load double, ptr %42, align 8, !tbaa !110
  %146 = fsub double %144, %145
  %147 = load double, ptr %43, align 8, !tbaa !53
  %148 = tail call double @llvm.fmuladd.f64(double %139, double %146, double %147)
  store double %148, ptr %43, align 8, !tbaa !53
  br label %149

149:                                              ; preds = %131, %130
  br i1 %45, label %166, label %150

150:                                              ; preds = %149
  %151 = load i16, ptr %91, align 2, !tbaa !65
  %152 = uitofp i16 %151 to float
  %153 = fmul float %101, %152
  %154 = fpext float %153 to double
  %155 = load double, ptr %46, align 8, !tbaa !110
  %156 = fsub double %154, %155
  %157 = fmul double %35, %156
  %158 = load i16, ptr %90, align 2, !tbaa !65
  %159 = uitofp i16 %158 to float
  %160 = fmul float %111, %159
  %161 = fpext float %160 to double
  %162 = load double, ptr %47, align 8, !tbaa !110
  %163 = fsub double %161, %162
  %164 = load double, ptr %48, align 8, !tbaa !53
  %165 = tail call double @llvm.fmuladd.f64(double %157, double %163, double %164)
  store double %165, ptr %48, align 8, !tbaa !53
  br label %166

166:                                              ; preds = %150, %149
  br i1 %85, label %181, label %167

167:                                              ; preds = %166
  %168 = getelementptr inbounds %struct._PixelPacket, ptr %91, i64 0, i32 3
  %169 = load i16, ptr %168, align 2, !tbaa !67
  %170 = uitofp i16 %169 to double
  %171 = load double, ptr %51, align 8, !tbaa !110
  %172 = fsub double %170, %171
  %173 = fmul double %35, %172
  %174 = getelementptr inbounds %struct._PixelPacket, ptr %90, i64 0, i32 3
  %175 = load i16, ptr %174, align 2, !tbaa !67
  %176 = uitofp i16 %175 to double
  %177 = load double, ptr %52, align 8, !tbaa !110
  %178 = fsub double %176, %177
  %179 = load double, ptr %53, align 8, !tbaa !53
  %180 = tail call double @llvm.fmuladd.f64(double %173, double %178, double %179)
  store double %180, ptr %53, align 8, !tbaa !53
  br label %181

181:                                              ; preds = %166, %167
  br i1 %55, label %214, label %182

182:                                              ; preds = %181
  %183 = load i32, ptr %56, align 4, !tbaa !57
  %184 = icmp eq i32 %183, 12
  br i1 %184, label %185, label %214

185:                                              ; preds = %182
  %186 = load i32, ptr %57, align 4, !tbaa !57
  %187 = icmp eq i32 %186, 12
  br i1 %187, label %188, label %214

188:                                              ; preds = %185
  br i1 %86, label %193, label %189

189:                                              ; preds = %188
  %190 = getelementptr inbounds i16, ptr %76, i64 %89
  %191 = load i16, ptr %190, align 2, !tbaa !68
  %192 = zext i16 %191 to i32
  br label %193

193:                                              ; preds = %188, %189
  %194 = phi i32 [ %192, %189 ], [ 0, %188 ]
  %195 = sitofp i32 %194 to float
  %196 = fmul float %101, %195
  %197 = fpext float %196 to double
  %198 = load double, ptr %58, align 8, !tbaa !110
  %199 = fsub double %197, %198
  %200 = fmul double %35, %199
  br i1 %87, label %205, label %201

201:                                              ; preds = %193
  %202 = getelementptr inbounds i16, ptr %77, i64 %89
  %203 = load i16, ptr %202, align 2, !tbaa !68
  %204 = zext i16 %203 to i32
  br label %205

205:                                              ; preds = %193, %201
  %206 = phi i32 [ %204, %201 ], [ 0, %193 ]
  %207 = sitofp i32 %206 to float
  %208 = fmul float %111, %207
  %209 = fpext float %208 to double
  %210 = load double, ptr %59, align 8, !tbaa !110
  %211 = fsub double %209, %210
  %212 = load double, ptr %60, align 8, !tbaa !53
  %213 = tail call double @llvm.fmuladd.f64(double %200, double %211, double %212)
  store double %213, ptr %60, align 8, !tbaa !53
  br label %214

214:                                              ; preds = %205, %185, %182, %181
  %215 = getelementptr inbounds %struct._PixelPacket, ptr %91, i64 1
  %216 = getelementptr inbounds %struct._PixelPacket, ptr %90, i64 1
  %217 = add nuw nsw i64 %89, 1
  %218 = icmp eq i64 %217, %78
  br i1 %218, label %219, label %88, !llvm.loop !112

219:                                              ; preds = %214, %75
  %220 = load ptr, ptr %61, align 8, !tbaa !113
  %221 = icmp eq ptr %220, null
  br i1 %221, label %228, label %222

222:                                              ; preds = %219
  %223 = add nsw i64 %65, 1
  %224 = load i64, ptr %14, align 8, !tbaa !55
  %225 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, i64 noundef %65, i64 noundef %224) #16
  %226 = icmp ne i32 %225, 0
  %227 = zext i1 %226 to i32
  br label %228

228:                                              ; preds = %219, %222, %67, %62
  %229 = phi i64 [ %65, %62 ], [ %65, %67 ], [ %223, %222 ], [ %65, %219 ]
  %230 = phi i32 [ 0, %62 ], [ 0, %67 ], [ %227, %222 ], [ 1, %219 ]
  %231 = add nuw nsw i64 %63, 1
  %232 = load i64, ptr %14, align 8, !tbaa !55
  %233 = icmp slt i64 %231, %232
  br i1 %233, label %62, label %234, !llvm.loop !114

234:                                              ; preds = %228, %11
  %235 = phi i32 [ 1, %11 ], [ %230, %228 ]
  %236 = tail call ptr @DestroyCacheView(ptr noundef %17) #18
  %237 = tail call ptr @DestroyCacheView(ptr noundef %16) #18
  br label %238

238:                                              ; preds = %234, %238
  %239 = phi i64 [ 0, %234 ], [ %252, %238 ]
  %240 = getelementptr inbounds %struct._ChannelStatistics, ptr %6, i64 %239, i32 9
  %241 = load double, ptr %240, align 8, !tbaa !115
  %242 = getelementptr inbounds %struct._ChannelStatistics, ptr %7, i64 %239, i32 9
  %243 = load double, ptr %242, align 8, !tbaa !115
  %244 = fmul double %241, %243
  %245 = fcmp olt double %244, 0.000000e+00
  %246 = select i1 %245, double 0.000000e+00, double %244
  %247 = tail call fastcc double @PerceptibleReciprocal(double noundef %246) #16
  %248 = fmul double %247, 6.553500e+04
  %249 = getelementptr inbounds double, ptr %3, i64 %239
  %250 = load double, ptr %249, align 8, !tbaa !53
  %251 = fmul double %248, %250
  store double %251, ptr %249, align 8, !tbaa !53
  %252 = add nuw nsw i64 %239, 1
  %253 = icmp eq i64 %252, 47
  br i1 %253, label %254, label %238, !llvm.loop !116

254:                                              ; preds = %238
  %255 = getelementptr inbounds double, ptr %3, i64 47
  store double 0.000000e+00, ptr %255, align 8, !tbaa !53
  %256 = and i32 %2, 1
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %262, label %258

258:                                              ; preds = %254
  %259 = getelementptr inbounds double, ptr %3, i64 1
  %260 = load double, ptr %259, align 8, !tbaa !53
  %261 = tail call double @llvm.fmuladd.f64(double %260, double %260, double 0.000000e+00)
  store double %261, ptr %255, align 8, !tbaa !53
  br label %262

262:                                              ; preds = %258, %254
  %263 = phi double [ %261, %258 ], [ 0.000000e+00, %254 ]
  %264 = and i32 %2, 2
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %270, label %266

266:                                              ; preds = %262
  %267 = getelementptr inbounds double, ptr %3, i64 2
  %268 = load double, ptr %267, align 8, !tbaa !53
  %269 = tail call double @llvm.fmuladd.f64(double %268, double %268, double %263)
  store double %269, ptr %255, align 8, !tbaa !53
  br label %270

270:                                              ; preds = %266, %262
  %271 = phi double [ %269, %266 ], [ %263, %262 ]
  %272 = and i32 %2, 4
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %278, label %274

274:                                              ; preds = %270
  %275 = getelementptr inbounds double, ptr %3, i64 4
  %276 = load double, ptr %275, align 8, !tbaa !53
  %277 = tail call double @llvm.fmuladd.f64(double %276, double %276, double %271)
  store double %277, ptr %255, align 8, !tbaa !53
  br label %278

278:                                              ; preds = %274, %270
  %279 = phi double [ %277, %274 ], [ %271, %270 ]
  %280 = and i32 %2, 8
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %290, label %282

282:                                              ; preds = %278
  %283 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %284 = load i32, ptr %283, align 8, !tbaa !66
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %290, label %286

286:                                              ; preds = %282
  %287 = getelementptr inbounds double, ptr %3, i64 8
  %288 = load double, ptr %287, align 8, !tbaa !53
  %289 = tail call double @llvm.fmuladd.f64(double %288, double %288, double %279)
  store double %289, ptr %255, align 8, !tbaa !53
  br label %290

290:                                              ; preds = %286, %282, %278
  %291 = phi double [ %289, %286 ], [ %279, %282 ], [ %279, %278 ]
  %292 = and i32 %2, 32
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %302, label %294

294:                                              ; preds = %290
  %295 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %296 = load i32, ptr %295, align 4, !tbaa !57
  %297 = icmp eq i32 %296, 12
  br i1 %297, label %298, label %302

298:                                              ; preds = %294
  %299 = getelementptr inbounds double, ptr %3, i64 32
  %300 = load double, ptr %299, align 8, !tbaa !53
  %301 = tail call double @llvm.fmuladd.f64(double %300, double %300, double %291)
  store double %301, ptr %255, align 8, !tbaa !53
  br label %302

302:                                              ; preds = %298, %294, %290
  %303 = phi double [ %301, %298 ], [ %291, %294 ], [ %291, %290 ]
  %304 = tail call fastcc i64 @GetNumberChannels(ptr noundef %0, i32 noundef %2) #16
  %305 = uitofp i64 %304 to double
  %306 = fdiv double %303, %305
  %307 = tail call double @sqrt(double noundef %306) #18
  store double %307, ptr %255, align 8, !tbaa !53
  %308 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %7) #18
  br label %309

309:                                              ; preds = %23, %302
  %310 = phi ptr [ %6, %302 ], [ %7, %23 ]
  %311 = phi i32 [ %235, %302 ], [ 0, %23 ]
  %312 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %310) #18
  br label %313

313:                                              ; preds = %309, %23
  %314 = phi i32 [ 0, %23 ], [ %311, %309 ]
  ret i32 %314
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @GetPeakAbsoluteDistortion(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr noundef %4) unnamed_addr #0 !PGOFuncName !117 {
  %6 = alloca [48 x double], align 16
  %7 = tail call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %4) #18
  %8 = tail call ptr @AcquireVirtualCacheView(ptr noundef %1, ptr noundef %4) #18
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %10 = load i64, ptr %9, align 8, !tbaa !55
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %256

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
  %24 = and i32 %2, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 4
  %27 = and i32 %2, 8
  %28 = icmp eq i32 %27, 0
  %29 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 8
  %30 = and i32 %2, 32
  %31 = icmp eq i32 %30, 0
  %32 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %33 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %34 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 32
  br label %35

35:                                               ; preds = %12, %251
  %36 = phi i32 [ 1, %12 ], [ %252, %251 ]
  %37 = phi i64 [ 0, %12 ], [ %253, %251 ]
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %6) #17
  %38 = icmp eq i32 %36, 0
  br i1 %38, label %251, label %39

39:                                               ; preds = %35
  %40 = load i64, ptr %13, align 8, !tbaa !54
  %41 = call ptr @GetCacheViewVirtualPixels(ptr noundef %7, i64 noundef 0, i64 noundef %37, i64 noundef %40, i64 noundef 1, ptr noundef %4) #19
  %42 = load i64, ptr %14, align 8, !tbaa !54
  %43 = call ptr @GetCacheViewVirtualPixels(ptr noundef %8, i64 noundef 0, i64 noundef %37, i64 noundef %42, i64 noundef 1, ptr noundef %4) #19
  %44 = icmp eq ptr %41, null
  %45 = icmp eq ptr %43, null
  %46 = select i1 %44, i1 true, i1 %45
  br i1 %46, label %251, label %47

47:                                               ; preds = %39
  %48 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %7) #18
  %49 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %8) #18
  %50 = call ptr @ResetMagickMemory(ptr noundef nonnull %6, i32 noundef 0, i64 noundef 384) #18
  %51 = load i64, ptr %13, align 8, !tbaa !54
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %250

53:                                               ; preds = %47
  %54 = load i32, ptr %15, align 8, !tbaa !66
  %55 = icmp eq i32 %54, 0
  %56 = load i32, ptr %16, align 8, !tbaa !66
  %57 = icmp eq i32 %56, 0
  %58 = or i1 %28, %55
  %59 = icmp eq ptr %48, null
  %60 = icmp eq ptr %49, null
  %61 = load double, ptr %19, align 8, !tbaa !53
  %62 = load double, ptr %20, align 8, !tbaa !53
  %63 = load double, ptr %23, align 16, !tbaa !53
  %64 = load double, ptr %26, align 16, !tbaa !53
  %65 = load double, ptr %29, align 16, !tbaa !53
  %66 = load double, ptr %34, align 16, !tbaa !53
  br label %87

67:                                               ; preds = %250, %84
  %68 = phi i64 [ %85, %84 ], [ 0, %250 ]
  %69 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 %68
  %70 = load <2 x double>, ptr %69, align 16, !tbaa !53
  %71 = getelementptr inbounds double, ptr %3, i64 %68
  %72 = load <2 x double>, ptr %71, align 8, !tbaa !53
  %73 = fcmp ogt <2 x double> %70, %72
  %74 = extractelement <2 x i1> %73, i64 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %67
  %76 = getelementptr inbounds double, ptr %3, i64 %68
  %77 = extractelement <2 x double> %70, i64 0
  store double %77, ptr %76, align 8, !tbaa !53
  br label %78

78:                                               ; preds = %75, %67
  %79 = extractelement <2 x i1> %73, i64 1
  br i1 %79, label %80, label %84

80:                                               ; preds = %78
  %81 = or disjoint i64 %68, 1
  %82 = getelementptr inbounds double, ptr %3, i64 %81
  %83 = extractelement <2 x double> %70, i64 1
  store double %83, ptr %82, align 8, !tbaa !53
  br label %84

84:                                               ; preds = %80, %78
  %85 = add nuw i64 %68, 2
  %86 = icmp eq i64 %85, 48
  br i1 %86, label %251, label %67, !llvm.loop !118

87:                                               ; preds = %53, %243
  %88 = phi double [ %66, %53 ], [ %244, %243 ]
  %89 = phi double [ %65, %53 ], [ %206, %243 ]
  %90 = phi double [ %64, %53 ], [ %185, %243 ]
  %91 = phi double [ %63, %53 ], [ %163, %243 ]
  %92 = phi double [ %62, %53 ], [ %245, %243 ]
  %93 = phi double [ %61, %53 ], [ %140, %243 ]
  %94 = phi i64 [ 0, %53 ], [ %248, %243 ]
  %95 = phi ptr [ %43, %53 ], [ %247, %243 ]
  %96 = phi ptr [ %41, %53 ], [ %246, %243 ]
  br i1 %55, label %102, label %97

97:                                               ; preds = %87
  %98 = getelementptr inbounds %struct._PixelPacket, ptr %96, i64 0, i32 3
  %99 = load i16, ptr %98, align 2, !tbaa !67
  %100 = xor i16 %99, -1
  %101 = zext i16 %100 to i32
  br label %102

102:                                              ; preds = %87, %97
  %103 = phi i32 [ %101, %97 ], [ 65535, %87 ]
  %104 = sitofp i32 %103 to double
  %105 = fmul double %104, 0x3EF0001000100010
  %106 = fptrunc double %105 to float
  br i1 %57, label %112, label %107

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct._PixelPacket, ptr %95, i64 0, i32 3
  %109 = load i16, ptr %108, align 2, !tbaa !67
  %110 = xor i16 %109, -1
  %111 = zext i16 %110 to i32
  br label %112

112:                                              ; preds = %102, %107
  %113 = phi i32 [ %111, %107 ], [ 65535, %102 ]
  %114 = sitofp i32 %113 to double
  %115 = fmul double %114, 0x3EF0001000100010
  %116 = fptrunc double %115 to float
  br i1 %18, label %138, label %117

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct._PixelPacket, ptr %96, i64 0, i32 2
  %119 = load i16, ptr %118, align 2, !tbaa !63
  %120 = uitofp i16 %119 to float
  %121 = getelementptr inbounds %struct._PixelPacket, ptr %95, i64 0, i32 2
  %122 = load i16, ptr %121, align 2, !tbaa !63
  %123 = uitofp i16 %122 to float
  %124 = fneg float %116
  %125 = fmul float %124, %123
  %126 = call float @llvm.fmuladd.f32(float %106, float %120, float %125)
  %127 = call float @llvm.fabs.f32(float %126)
  %128 = fpext float %127 to double
  %129 = fmul double %128, 0x3EF0001000100010
  %130 = fptrunc double %129 to float
  %131 = fpext float %130 to double
  %132 = fcmp olt double %93, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %117
  store double %131, ptr %19, align 8, !tbaa !53
  br label %134

134:                                              ; preds = %133, %117
  %135 = phi double [ %131, %133 ], [ %93, %117 ]
  %136 = fcmp olt double %92, %131
  br i1 %136, label %137, label %138

137:                                              ; preds = %134
  store double %131, ptr %20, align 8, !tbaa !53
  br label %138

138:                                              ; preds = %134, %137, %112
  %139 = phi double [ %92, %134 ], [ %131, %137 ], [ %92, %112 ]
  %140 = phi double [ %135, %134 ], [ %135, %137 ], [ %93, %112 ]
  br i1 %22, label %162, label %141

141:                                              ; preds = %138
  %142 = getelementptr inbounds %struct._PixelPacket, ptr %96, i64 0, i32 1
  %143 = load i16, ptr %142, align 2, !tbaa !64
  %144 = uitofp i16 %143 to float
  %145 = getelementptr inbounds %struct._PixelPacket, ptr %95, i64 0, i32 1
  %146 = load i16, ptr %145, align 2, !tbaa !64
  %147 = uitofp i16 %146 to float
  %148 = fneg float %116
  %149 = fmul float %148, %147
  %150 = call float @llvm.fmuladd.f32(float %106, float %144, float %149)
  %151 = call float @llvm.fabs.f32(float %150)
  %152 = fpext float %151 to double
  %153 = fmul double %152, 0x3EF0001000100010
  %154 = fptrunc double %153 to float
  %155 = fpext float %154 to double
  %156 = fcmp olt double %91, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %141
  store double %155, ptr %23, align 16, !tbaa !53
  br label %158

158:                                              ; preds = %157, %141
  %159 = phi double [ %155, %157 ], [ %91, %141 ]
  %160 = fcmp olt double %139, %155
  br i1 %160, label %161, label %162

161:                                              ; preds = %158
  store double %155, ptr %20, align 8, !tbaa !53
  br label %162

162:                                              ; preds = %158, %161, %138
  %163 = phi double [ %159, %158 ], [ %159, %161 ], [ %91, %138 ]
  %164 = phi double [ %139, %158 ], [ %155, %161 ], [ %139, %138 ]
  br i1 %25, label %184, label %165

165:                                              ; preds = %162
  %166 = load i16, ptr %96, align 2, !tbaa !65
  %167 = uitofp i16 %166 to float
  %168 = load i16, ptr %95, align 2, !tbaa !65
  %169 = uitofp i16 %168 to float
  %170 = fneg float %116
  %171 = fmul float %170, %169
  %172 = call float @llvm.fmuladd.f32(float %106, float %167, float %171)
  %173 = call float @llvm.fabs.f32(float %172)
  %174 = fpext float %173 to double
  %175 = fmul double %174, 0x3EF0001000100010
  %176 = fptrunc double %175 to float
  %177 = fpext float %176 to double
  %178 = fcmp olt double %90, %177
  br i1 %178, label %179, label %180

179:                                              ; preds = %165
  store double %177, ptr %26, align 16, !tbaa !53
  br label %180

180:                                              ; preds = %179, %165
  %181 = phi double [ %177, %179 ], [ %90, %165 ]
  %182 = fcmp olt double %164, %177
  br i1 %182, label %183, label %184

183:                                              ; preds = %180
  store double %177, ptr %20, align 8, !tbaa !53
  br label %184

184:                                              ; preds = %180, %183, %162
  %185 = phi double [ %181, %180 ], [ %181, %183 ], [ %90, %162 ]
  %186 = phi double [ %164, %180 ], [ %177, %183 ], [ %164, %162 ]
  br i1 %58, label %205, label %187

187:                                              ; preds = %184
  %188 = getelementptr inbounds %struct._PixelPacket, ptr %96, i64 0, i32 3
  %189 = load i16, ptr %188, align 2, !tbaa !67
  %190 = uitofp i16 %189 to double
  %191 = getelementptr inbounds %struct._PixelPacket, ptr %95, i64 0, i32 3
  %192 = load i16, ptr %191, align 2, !tbaa !67
  %193 = uitofp i16 %192 to double
  %194 = fsub double %190, %193
  %195 = call double @llvm.fabs.f64(double %194)
  %196 = fmul double %195, 0x3EF0001000100010
  %197 = fptrunc double %196 to float
  %198 = fpext float %197 to double
  %199 = fcmp olt double %89, %198
  br i1 %199, label %200, label %201

200:                                              ; preds = %187
  store double %198, ptr %29, align 16, !tbaa !53
  br label %201

201:                                              ; preds = %200, %187
  %202 = phi double [ %198, %200 ], [ %89, %187 ]
  %203 = fcmp olt double %186, %198
  br i1 %203, label %204, label %205

204:                                              ; preds = %201
  store double %198, ptr %20, align 8, !tbaa !53
  br label %205

205:                                              ; preds = %184, %201, %204
  %206 = phi double [ %89, %184 ], [ %202, %201 ], [ %202, %204 ]
  %207 = phi double [ %186, %184 ], [ %186, %201 ], [ %198, %204 ]
  br i1 %31, label %243, label %208

208:                                              ; preds = %205
  %209 = load i32, ptr %32, align 4, !tbaa !57
  %210 = icmp eq i32 %209, 12
  br i1 %210, label %211, label %243

211:                                              ; preds = %208
  %212 = load i32, ptr %33, align 4, !tbaa !57
  %213 = icmp eq i32 %212, 12
  br i1 %213, label %214, label %243

214:                                              ; preds = %211
  br i1 %59, label %219, label %215

215:                                              ; preds = %214
  %216 = getelementptr inbounds i16, ptr %48, i64 %94
  %217 = load i16, ptr %216, align 2, !tbaa !68
  %218 = zext i16 %217 to i32
  br label %219

219:                                              ; preds = %214, %215
  %220 = phi i32 [ %218, %215 ], [ 0, %214 ]
  %221 = sitofp i32 %220 to float
  br i1 %60, label %226, label %222

222:                                              ; preds = %219
  %223 = getelementptr inbounds i16, ptr %49, i64 %94
  %224 = load i16, ptr %223, align 2, !tbaa !68
  %225 = zext i16 %224 to i32
  br label %226

226:                                              ; preds = %219, %222
  %227 = phi i32 [ %225, %222 ], [ 0, %219 ]
  %228 = sitofp i32 %227 to float
  %229 = fneg float %116
  %230 = fmul float %229, %228
  %231 = call float @llvm.fmuladd.f32(float %106, float %221, float %230)
  %232 = call float @llvm.fabs.f32(float %231)
  %233 = fpext float %232 to double
  %234 = fmul double %233, 0x3EF0001000100010
  %235 = fptrunc double %234 to float
  %236 = fpext float %235 to double
  %237 = fcmp olt double %88, %236
  br i1 %237, label %238, label %239

238:                                              ; preds = %226
  store double %236, ptr %34, align 16, !tbaa !53
  br label %239

239:                                              ; preds = %238, %226
  %240 = phi double [ %236, %238 ], [ %88, %226 ]
  %241 = fcmp olt double %207, %236
  br i1 %241, label %242, label %243

242:                                              ; preds = %239
  store double %236, ptr %20, align 8, !tbaa !53
  br label %243

243:                                              ; preds = %239, %242, %211, %208, %205
  %244 = phi double [ %240, %239 ], [ %240, %242 ], [ %88, %211 ], [ %88, %208 ], [ %88, %205 ]
  %245 = phi double [ %207, %239 ], [ %236, %242 ], [ %207, %211 ], [ %207, %208 ], [ %207, %205 ]
  %246 = getelementptr inbounds %struct._PixelPacket, ptr %96, i64 1
  %247 = getelementptr inbounds %struct._PixelPacket, ptr %95, i64 1
  %248 = add nuw nsw i64 %94, 1
  %249 = icmp eq i64 %248, %51
  br i1 %249, label %250, label %87, !llvm.loop !119

250:                                              ; preds = %243, %47
  br label %67

251:                                              ; preds = %84, %39, %35
  %252 = phi i32 [ 0, %35 ], [ 0, %39 ], [ 1, %84 ]
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %6) #17
  %253 = add nuw nsw i64 %37, 1
  %254 = load i64, ptr %9, align 8, !tbaa !55
  %255 = icmp slt i64 %253, %254
  br i1 %255, label %35, label %256, !llvm.loop !120

256:                                              ; preds = %251, %5
  %257 = phi i32 [ 1, %5 ], [ %252, %251 ]
  %258 = call ptr @DestroyCacheView(ptr noundef %8) #18
  %259 = call ptr @DestroyCacheView(ptr noundef %7) #18
  ret i32 %257
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @GetPeakSignalToNoiseRatio(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr noundef %4) unnamed_addr #0 !PGOFuncName !121 {
  %6 = tail call fastcc i32 @GetMeanSquaredDistortion(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #16, !range !56
  %7 = and i32 %2, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds double, ptr %3, i64 1
  %11 = load double, ptr %10, align 8, !tbaa !53
  %12 = tail call double @sqrt(double noundef %11) #18
  %13 = fdiv double 1.000000e+00, %12
  %14 = tail call fastcc double @MagickLog10(double noundef %13) #16
  %15 = fmul double %14, 2.000000e+01
  store double %15, ptr %10, align 8, !tbaa !53
  br label %16

16:                                               ; preds = %9, %5
  %17 = and i32 %2, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds double, ptr %3, i64 2
  %21 = load double, ptr %20, align 8, !tbaa !53
  %22 = tail call double @sqrt(double noundef %21) #18
  %23 = fdiv double 1.000000e+00, %22
  %24 = tail call fastcc double @MagickLog10(double noundef %23) #16
  %25 = fmul double %24, 2.000000e+01
  store double %25, ptr %20, align 8, !tbaa !53
  br label %26

26:                                               ; preds = %19, %16
  %27 = and i32 %2, 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds double, ptr %3, i64 4
  %31 = load double, ptr %30, align 8, !tbaa !53
  %32 = tail call double @sqrt(double noundef %31) #18
  %33 = fdiv double 1.000000e+00, %32
  %34 = tail call fastcc double @MagickLog10(double noundef %33) #16
  %35 = fmul double %34, 2.000000e+01
  store double %35, ptr %30, align 8, !tbaa !53
  br label %36

36:                                               ; preds = %29, %26
  %37 = and i32 %2, 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %50, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %41 = load i32, ptr %40, align 8, !tbaa !66
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds double, ptr %3, i64 8
  %45 = load double, ptr %44, align 8, !tbaa !53
  %46 = tail call double @sqrt(double noundef %45) #18
  %47 = fdiv double 1.000000e+00, %46
  %48 = tail call fastcc double @MagickLog10(double noundef %47) #16
  %49 = fmul double %48, 2.000000e+01
  store double %49, ptr %44, align 8, !tbaa !53
  br label %50

50:                                               ; preds = %43, %39, %36
  %51 = and i32 %2, 32
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %64, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %55 = load i32, ptr %54, align 4, !tbaa !57
  %56 = icmp eq i32 %55, 12
  br i1 %56, label %57, label %64

57:                                               ; preds = %53
  %58 = getelementptr inbounds double, ptr %3, i64 32
  %59 = load double, ptr %58, align 8, !tbaa !53
  %60 = tail call double @sqrt(double noundef %59) #18
  %61 = fdiv double 1.000000e+00, %60
  %62 = tail call fastcc double @MagickLog10(double noundef %61) #16
  %63 = fmul double %62, 2.000000e+01
  store double %63, ptr %58, align 8, !tbaa !53
  br label %64

64:                                               ; preds = %57, %53, %50
  %65 = getelementptr inbounds double, ptr %3, i64 47
  %66 = load double, ptr %65, align 8, !tbaa !53
  %67 = tail call double @sqrt(double noundef %66) #18
  %68 = fdiv double 1.000000e+00, %67
  %69 = tail call fastcc double @MagickLog10(double noundef %68) #16
  %70 = fmul double %69, 2.000000e+01
  store double %70, ptr %65, align 8, !tbaa !53
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @GetPerceptualHashDistortion(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr noundef %4) unnamed_addr #0 !PGOFuncName !122 {
  %6 = tail call ptr @GetImageChannelPerceptualHash(ptr noundef %0, ptr noundef %4) #18
  %7 = icmp eq ptr %6, null
  br i1 %7, label %189, label %8

8:                                                ; preds = %5
  %9 = tail call ptr @GetImageChannelPerceptualHash(ptr noundef %1, ptr noundef %4) #18
  %10 = icmp eq ptr %9, null
  br i1 %10, label %186, label %11

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
  %29 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %9, i64 4
  %30 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %6, i64 4
  %31 = getelementptr inbounds double, ptr %3, i64 4
  %32 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %33 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 6
  %34 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %9, i64 8
  %35 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %6, i64 8
  %36 = getelementptr inbounds double, ptr %3, i64 8
  %37 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %38 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %39 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %9, i64 32
  %40 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %6, i64 32
  %41 = getelementptr inbounds double, ptr %3, i64 32
  br label %42

42:                                               ; preds = %11, %110
  %43 = phi i64 [ 0, %11 ], [ %111, %110 ]
  br i1 %13, label %54, label %44

44:                                               ; preds = %42
  %45 = getelementptr inbounds [32 x double], ptr %22, i64 0, i64 %43
  %46 = load double, ptr %45, align 8, !tbaa !53
  %47 = getelementptr inbounds [32 x double], ptr %23, i64 0, i64 %43
  %48 = load double, ptr %47, align 8, !tbaa !53
  %49 = fsub double %46, %48
  %50 = load double, ptr %24, align 8, !tbaa !53
  %51 = tail call double @llvm.fmuladd.f64(double %49, double %49, double %50)
  store double %51, ptr %24, align 8, !tbaa !53
  %52 = load double, ptr %25, align 8, !tbaa !53
  %53 = tail call double @llvm.fmuladd.f64(double %49, double %49, double %52)
  store double %53, ptr %25, align 8, !tbaa !53
  br label %54

54:                                               ; preds = %44, %42
  br i1 %15, label %65, label %55

55:                                               ; preds = %54
  %56 = getelementptr inbounds [32 x double], ptr %26, i64 0, i64 %43
  %57 = load double, ptr %56, align 8, !tbaa !53
  %58 = getelementptr inbounds [32 x double], ptr %27, i64 0, i64 %43
  %59 = load double, ptr %58, align 8, !tbaa !53
  %60 = fsub double %57, %59
  %61 = load double, ptr %28, align 8, !tbaa !53
  %62 = tail call double @llvm.fmuladd.f64(double %60, double %60, double %61)
  store double %62, ptr %28, align 8, !tbaa !53
  %63 = load double, ptr %25, align 8, !tbaa !53
  %64 = tail call double @llvm.fmuladd.f64(double %60, double %60, double %63)
  store double %64, ptr %25, align 8, !tbaa !53
  br label %65

65:                                               ; preds = %55, %54
  br i1 %17, label %76, label %66

66:                                               ; preds = %65
  %67 = getelementptr inbounds [32 x double], ptr %29, i64 0, i64 %43
  %68 = load double, ptr %67, align 8, !tbaa !53
  %69 = getelementptr inbounds [32 x double], ptr %30, i64 0, i64 %43
  %70 = load double, ptr %69, align 8, !tbaa !53
  %71 = fsub double %68, %70
  %72 = load double, ptr %31, align 8, !tbaa !53
  %73 = tail call double @llvm.fmuladd.f64(double %71, double %71, double %72)
  store double %73, ptr %31, align 8, !tbaa !53
  %74 = load double, ptr %25, align 8, !tbaa !53
  %75 = tail call double @llvm.fmuladd.f64(double %71, double %71, double %74)
  store double %75, ptr %25, align 8, !tbaa !53
  br label %76

76:                                               ; preds = %66, %65
  br i1 %19, label %93, label %77

77:                                               ; preds = %76
  %78 = load i32, ptr %32, align 8, !tbaa !66
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %93, label %80

80:                                               ; preds = %77
  %81 = load i32, ptr %33, align 8, !tbaa !66
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %93, label %83

83:                                               ; preds = %80
  %84 = getelementptr inbounds [32 x double], ptr %34, i64 0, i64 %43
  %85 = load double, ptr %84, align 8, !tbaa !53
  %86 = getelementptr inbounds [32 x double], ptr %35, i64 0, i64 %43
  %87 = load double, ptr %86, align 8, !tbaa !53
  %88 = fsub double %85, %87
  %89 = load double, ptr %36, align 8, !tbaa !53
  %90 = tail call double @llvm.fmuladd.f64(double %88, double %88, double %89)
  store double %90, ptr %36, align 8, !tbaa !53
  %91 = load double, ptr %25, align 8, !tbaa !53
  %92 = tail call double @llvm.fmuladd.f64(double %88, double %88, double %91)
  store double %92, ptr %25, align 8, !tbaa !53
  br label %93

93:                                               ; preds = %83, %80, %77, %76
  br i1 %21, label %110, label %94

94:                                               ; preds = %93
  %95 = load i32, ptr %37, align 4, !tbaa !57
  %96 = icmp eq i32 %95, 12
  br i1 %96, label %97, label %110

97:                                               ; preds = %94
  %98 = load i32, ptr %38, align 4, !tbaa !57
  %99 = icmp eq i32 %98, 12
  br i1 %99, label %100, label %110

100:                                              ; preds = %97
  %101 = getelementptr inbounds [32 x double], ptr %39, i64 0, i64 %43
  %102 = load double, ptr %101, align 8, !tbaa !53
  %103 = getelementptr inbounds [32 x double], ptr %40, i64 0, i64 %43
  %104 = load double, ptr %103, align 8, !tbaa !53
  %105 = fsub double %102, %104
  %106 = load double, ptr %41, align 8, !tbaa !53
  %107 = tail call double @llvm.fmuladd.f64(double %105, double %105, double %106)
  store double %107, ptr %41, align 8, !tbaa !53
  %108 = load double, ptr %25, align 8, !tbaa !53
  %109 = tail call double @llvm.fmuladd.f64(double %105, double %105, double %108)
  store double %109, ptr %25, align 8, !tbaa !53
  br label %110

110:                                              ; preds = %93, %94, %97, %100
  %111 = add nuw nsw i64 %43, 1
  %112 = icmp eq i64 %111, 7
  br i1 %112, label %113, label %42, !llvm.loop !123

113:                                              ; preds = %110, %181
  %114 = phi i64 [ %182, %181 ], [ 0, %110 ]
  br i1 %13, label %125, label %115

115:                                              ; preds = %113
  %116 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %9, i64 1, i32 1, i64 %114
  %117 = load double, ptr %116, align 8, !tbaa !53
  %118 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %6, i64 1, i32 1, i64 %114
  %119 = load double, ptr %118, align 8, !tbaa !53
  %120 = fsub double %117, %119
  %121 = load double, ptr %24, align 8, !tbaa !53
  %122 = tail call double @llvm.fmuladd.f64(double %120, double %120, double %121)
  store double %122, ptr %24, align 8, !tbaa !53
  %123 = load double, ptr %25, align 8, !tbaa !53
  %124 = tail call double @llvm.fmuladd.f64(double %120, double %120, double %123)
  store double %124, ptr %25, align 8, !tbaa !53
  br label %125

125:                                              ; preds = %115, %113
  br i1 %15, label %136, label %126

126:                                              ; preds = %125
  %127 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %9, i64 2, i32 1, i64 %114
  %128 = load double, ptr %127, align 8, !tbaa !53
  %129 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %6, i64 2, i32 1, i64 %114
  %130 = load double, ptr %129, align 8, !tbaa !53
  %131 = fsub double %128, %130
  %132 = load double, ptr %28, align 8, !tbaa !53
  %133 = tail call double @llvm.fmuladd.f64(double %131, double %131, double %132)
  store double %133, ptr %28, align 8, !tbaa !53
  %134 = load double, ptr %25, align 8, !tbaa !53
  %135 = tail call double @llvm.fmuladd.f64(double %131, double %131, double %134)
  store double %135, ptr %25, align 8, !tbaa !53
  br label %136

136:                                              ; preds = %126, %125
  br i1 %17, label %147, label %137

137:                                              ; preds = %136
  %138 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %9, i64 4, i32 1, i64 %114
  %139 = load double, ptr %138, align 8, !tbaa !53
  %140 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %6, i64 4, i32 1, i64 %114
  %141 = load double, ptr %140, align 8, !tbaa !53
  %142 = fsub double %139, %141
  %143 = load double, ptr %31, align 8, !tbaa !53
  %144 = tail call double @llvm.fmuladd.f64(double %142, double %142, double %143)
  store double %144, ptr %31, align 8, !tbaa !53
  %145 = load double, ptr %25, align 8, !tbaa !53
  %146 = tail call double @llvm.fmuladd.f64(double %142, double %142, double %145)
  store double %146, ptr %25, align 8, !tbaa !53
  br label %147

147:                                              ; preds = %137, %136
  br i1 %19, label %164, label %148

148:                                              ; preds = %147
  %149 = load i32, ptr %32, align 8, !tbaa !66
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %164, label %151

151:                                              ; preds = %148
  %152 = load i32, ptr %33, align 8, !tbaa !66
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %164, label %154

154:                                              ; preds = %151
  %155 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %9, i64 8, i32 1, i64 %114
  %156 = load double, ptr %155, align 8, !tbaa !53
  %157 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %6, i64 8, i32 1, i64 %114
  %158 = load double, ptr %157, align 8, !tbaa !53
  %159 = fsub double %156, %158
  %160 = load double, ptr %36, align 8, !tbaa !53
  %161 = tail call double @llvm.fmuladd.f64(double %159, double %159, double %160)
  store double %161, ptr %36, align 8, !tbaa !53
  %162 = load double, ptr %25, align 8, !tbaa !53
  %163 = tail call double @llvm.fmuladd.f64(double %159, double %159, double %162)
  store double %163, ptr %25, align 8, !tbaa !53
  br label %164

164:                                              ; preds = %154, %151, %148, %147
  br i1 %21, label %181, label %165

165:                                              ; preds = %164
  %166 = load i32, ptr %37, align 4, !tbaa !57
  %167 = icmp eq i32 %166, 12
  br i1 %167, label %168, label %181

168:                                              ; preds = %165
  %169 = load i32, ptr %38, align 4, !tbaa !57
  %170 = icmp eq i32 %169, 12
  br i1 %170, label %171, label %181

171:                                              ; preds = %168
  %172 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %9, i64 32, i32 1, i64 %114
  %173 = load double, ptr %172, align 8, !tbaa !53
  %174 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %6, i64 32, i32 1, i64 %114
  %175 = load double, ptr %174, align 8, !tbaa !53
  %176 = fsub double %173, %175
  %177 = load double, ptr %41, align 8, !tbaa !53
  %178 = tail call double @llvm.fmuladd.f64(double %176, double %176, double %177)
  store double %178, ptr %41, align 8, !tbaa !53
  %179 = load double, ptr %25, align 8, !tbaa !53
  %180 = tail call double @llvm.fmuladd.f64(double %176, double %176, double %179)
  store double %180, ptr %25, align 8, !tbaa !53
  br label %181

181:                                              ; preds = %164, %165, %168, %171
  %182 = add nuw nsw i64 %114, 1
  %183 = icmp eq i64 %182, 7
  br i1 %183, label %184, label %113, !llvm.loop !124

184:                                              ; preds = %181
  %185 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %9) #18
  br label %186

186:                                              ; preds = %8, %184
  %187 = phi i32 [ 1, %184 ], [ 0, %8 ]
  %188 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %6) #18
  br label %189

189:                                              ; preds = %186, %5
  %190 = phi i32 [ 0, %5 ], [ %187, %186 ]
  ret i32 %190
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @GetRootMeanSquaredDistortion(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr noundef %4) unnamed_addr #0 !PGOFuncName !125 {
  %6 = tail call fastcc i32 @GetMeanSquaredDistortion(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #16, !range !56
  %7 = and i32 %2, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds double, ptr %3, i64 1
  %11 = load double, ptr %10, align 8, !tbaa !53
  %12 = tail call double @sqrt(double noundef %11) #18
  store double %12, ptr %10, align 8, !tbaa !53
  br label %13

13:                                               ; preds = %9, %5
  %14 = and i32 %2, 2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds double, ptr %3, i64 2
  %18 = load double, ptr %17, align 8, !tbaa !53
  %19 = tail call double @sqrt(double noundef %18) #18
  store double %19, ptr %17, align 8, !tbaa !53
  br label %20

20:                                               ; preds = %16, %13
  %21 = and i32 %2, 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds double, ptr %3, i64 4
  %25 = load double, ptr %24, align 8, !tbaa !53
  %26 = tail call double @sqrt(double noundef %25) #18
  store double %26, ptr %24, align 8, !tbaa !53
  br label %27

27:                                               ; preds = %23, %20
  %28 = and i32 %2, 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %32 = load i32, ptr %31, align 8, !tbaa !66
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds double, ptr %3, i64 8
  %36 = load double, ptr %35, align 8, !tbaa !53
  %37 = tail call double @sqrt(double noundef %36) #18
  store double %37, ptr %35, align 8, !tbaa !53
  br label %38

38:                                               ; preds = %34, %30, %27
  %39 = and i32 %2, 32
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %43 = load i32, ptr %42, align 4, !tbaa !57
  %44 = icmp eq i32 %43, 12
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = getelementptr inbounds double, ptr %3, i64 32
  %47 = load double, ptr %46, align 8, !tbaa !53
  %48 = tail call double @sqrt(double noundef %47) #18
  store double %48, ptr %46, align 8, !tbaa !53
  br label %49

49:                                               ; preds = %45, %41, %38
  %50 = getelementptr inbounds double, ptr %3, i64 47
  %51 = load double, ptr %50, align 8, !tbaa !53
  %52 = tail call double @sqrt(double noundef %51) #18
  store double %52, ptr %50, align 8, !tbaa !53
  ret i32 %6
}

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @FormatImageProperty(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @GetMagickPrecision() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @GetImageChannelDistortions(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct._ExceptionInfo, align 8
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !34
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1606, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #18
  %12 = load i32, ptr %6, align 8, !tbaa !34
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1610, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #18
  br label %16

16:                                               ; preds = %4, %14, %9
  %17 = icmp eq i32 %2, 255
  br i1 %17, label %34, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  %20 = load i64, ptr %19, align 8, !tbaa !54
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %22 = load i64, ptr %21, align 8, !tbaa !54
  %23 = icmp eq i64 %20, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 8
  %26 = load i64, ptr %25, align 8, !tbaa !55
  %27 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %28 = load i64, ptr %27, align 8, !tbaa !55
  %29 = icmp eq i64 %26, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %24, %18
  %31 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %32 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %33 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %31, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1615, i32 noundef 465, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %32) #18
  br label %71

34:                                               ; preds = %24, %16
  %35 = tail call dereferenceable_or_null(384) ptr @AcquireQuantumMemory(i64 noundef 48, i64 noundef 8) #20
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #17
  call void @GetExceptionInfo(ptr noundef nonnull %5) #18
  %38 = tail call ptr @__errno_location() #21
  %39 = load i32, ptr %38, align 4, !tbaa !59
  %40 = call ptr @GetExceptionMessage(i32 noundef %39) #18
  %41 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1626, i32 noundef 700, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.4, ptr noundef %40) #18
  %42 = call ptr @DestroyString(ptr noundef %40) #18
  call void @CatchException(ptr noundef nonnull %5) #18
  %43 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %5) #18
  call void @MagickCoreTerminus() #18
  call void @_exit(i32 noundef 1) #22
  unreachable

44:                                               ; preds = %34
  %45 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %35, i32 noundef 0, i64 noundef 384) #18
  switch i32 %2, label %56 [
    i32 1, label %46
    i32 9, label %48
    i32 2, label %50
    i32 3, label %52
    i32 4, label %54
    i32 7, label %64
    i32 5, label %58
    i32 6, label %60
    i32 255, label %62
  ]

46:                                               ; preds = %44
  %47 = tail call fastcc i32 @GetAbsoluteDistortion(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 47, ptr noundef nonnull %35, ptr noundef %3) #16, !range !56
  br label %66

48:                                               ; preds = %44
  %49 = tail call fastcc i32 @GetFuzzDistortion(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 47, ptr noundef nonnull %35, ptr noundef %3) #16, !range !56
  br label %66

50:                                               ; preds = %44
  %51 = tail call fastcc i32 @GetMeanAbsoluteDistortion(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 47, ptr noundef nonnull %35, ptr noundef %3) #16, !range !56
  br label %66

52:                                               ; preds = %44
  %53 = tail call fastcc i32 @GetMeanErrorPerPixel(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 47, ptr noundef nonnull %35, ptr noundef %3) #16, !range !56
  br label %66

54:                                               ; preds = %44
  %55 = tail call fastcc i32 @GetMeanSquaredDistortion(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 47, ptr noundef nonnull %35, ptr noundef %3) #16, !range !56
  br label %66

56:                                               ; preds = %44
  %57 = tail call fastcc i32 @GetNormalizedCrossCorrelationDistortion(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 47, ptr noundef nonnull %35, ptr noundef %3) #16, !range !56
  br label %66

58:                                               ; preds = %44
  %59 = tail call fastcc i32 @GetPeakAbsoluteDistortion(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 47, ptr noundef nonnull %35, ptr noundef %3) #16, !range !56
  br label %66

60:                                               ; preds = %44
  %61 = tail call fastcc i32 @GetPeakSignalToNoiseRatio(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 47, ptr noundef nonnull %35, ptr noundef %3) #16, !range !56
  br label %66

62:                                               ; preds = %44
  %63 = tail call fastcc i32 @GetPerceptualHashDistortion(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 47, ptr noundef nonnull %35, ptr noundef %3) #16, !range !56
  br label %66

64:                                               ; preds = %44
  %65 = tail call fastcc i32 @GetRootMeanSquaredDistortion(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 47, ptr noundef nonnull %35, ptr noundef %3) #16, !range !56
  br label %66

66:                                               ; preds = %64, %62, %60, %58, %56, %54, %52, %50, %48, %46
  %67 = phi i32 [ %57, %56 ], [ %63, %62 ], [ %61, %60 ], [ %59, %58 ], [ %65, %64 ], [ %55, %54 ], [ %53, %52 ], [ %51, %50 ], [ %49, %48 ], [ %47, %46 ]
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %35) #18
  br label %71

71:                                               ; preds = %66, %69, %30
  %72 = phi ptr [ null, %30 ], [ null, %69 ], [ %35, %66 ]
  ret ptr %72
}

; Function Attrs: noinline nounwind optsize uwtable
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
  br i1 %13, label %18, label %14

14:                                               ; preds = %2, %8
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1777, i32 noundef 465, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #18
  br label %185

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %20 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef nonnull %19) #18
  %21 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %1, ptr noundef nonnull %19) #18
  %22 = load i64, ptr %11, align 8, !tbaa !55
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %168

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %26 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %27 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %28 = load i64, ptr %5, align 8, !tbaa !54
  br label %29

29:                                               ; preds = %24, %153
  %30 = phi i64 [ %28, %24 ], [ %44, %153 ]
  %31 = phi i64 [ 0, %24 ], [ %157, %153 ]
  %32 = phi float [ 0.000000e+00, %24 ], [ %155, %153 ]
  %33 = phi float [ 0.000000e+00, %24 ], [ %154, %153 ]
  %34 = phi <2 x float> [ zeroinitializer, %24 ], [ %156, %153 ]
  %35 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %20, i64 noundef 0, i64 noundef %31, i64 noundef %30, i64 noundef 1, ptr noundef nonnull %19) #19
  %36 = load i64, ptr %3, align 8, !tbaa !54
  %37 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %21, i64 noundef 0, i64 noundef %31, i64 noundef %36, i64 noundef 1, ptr noundef nonnull %19) #19
  %38 = icmp eq ptr %35, null
  %39 = icmp eq ptr %37, null
  %40 = select i1 %38, i1 true, i1 %39
  br i1 %40, label %160, label %41

41:                                               ; preds = %29
  %42 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %20) #18
  %43 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %21) #18
  %44 = load i64, ptr %5, align 8, !tbaa !54
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %153

46:                                               ; preds = %41
  %47 = load i32, ptr %25, align 8, !tbaa !66
  %48 = icmp eq i32 %47, 0
  %49 = load i32, ptr %26, align 4, !tbaa !57
  %50 = icmp eq i32 %49, 12
  %51 = icmp eq ptr %42, null
  %52 = icmp eq ptr %43, null
  br label %53

53:                                               ; preds = %46, %145
  %54 = phi i64 [ 0, %46 ], [ %151, %145 ]
  %55 = phi ptr [ %37, %46 ], [ %150, %145 ]
  %56 = phi ptr [ %35, %46 ], [ %149, %145 ]
  %57 = phi float [ %32, %46 ], [ %147, %145 ]
  %58 = phi float [ %33, %46 ], [ %146, %145 ]
  %59 = phi <2 x float> [ %34, %46 ], [ %148, %145 ]
  %60 = getelementptr inbounds %struct._PixelPacket, ptr %56, i64 0, i32 2
  %61 = load i16, ptr %60, align 2, !tbaa !63
  %62 = uitofp i16 %61 to double
  %63 = getelementptr inbounds %struct._PixelPacket, ptr %55, i64 0, i32 2
  %64 = load i16, ptr %63, align 2, !tbaa !63
  %65 = uitofp i16 %64 to double
  %66 = fsub double %62, %65
  %67 = fptrunc double %66 to float
  %68 = tail call float @llvm.fabs.f32(float %67)
  %69 = tail call float @llvm.fmuladd.f32(float %67, float %67, float %57)
  %70 = fcmp ogt float %68, %58
  %71 = select i1 %70, float %68, float %58
  %72 = getelementptr inbounds %struct._PixelPacket, ptr %56, i64 0, i32 1
  %73 = load i16, ptr %72, align 2, !tbaa !64
  %74 = uitofp i16 %73 to double
  %75 = getelementptr inbounds %struct._PixelPacket, ptr %55, i64 0, i32 1
  %76 = load i16, ptr %75, align 2, !tbaa !64
  %77 = uitofp i16 %76 to double
  %78 = fsub double %74, %77
  %79 = fptrunc double %78 to float
  %80 = tail call float @llvm.fabs.f32(float %79)
  %81 = tail call float @llvm.fmuladd.f32(float %79, float %79, float %69)
  %82 = fcmp ogt float %80, %71
  %83 = select i1 %82, float %80, float %71
  %84 = insertelement <2 x float> <float 1.000000e+00, float poison>, float %68, i64 1
  %85 = fadd <2 x float> %59, %84
  %86 = insertelement <2 x float> <float 1.000000e+00, float poison>, float %80, i64 1
  %87 = fadd <2 x float> %85, %86
  %88 = load i16, ptr %56, align 2, !tbaa !65
  %89 = uitofp i16 %88 to double
  %90 = load i16, ptr %55, align 2, !tbaa !65
  %91 = uitofp i16 %90 to double
  %92 = fsub double %89, %91
  %93 = fptrunc double %92 to float
  %94 = tail call float @llvm.fabs.f32(float %93)
  %95 = tail call float @llvm.fmuladd.f32(float %93, float %93, float %81)
  %96 = fcmp ogt float %94, %83
  %97 = select i1 %96, float %94, float %83
  %98 = insertelement <2 x float> <float 1.000000e+00, float poison>, float %94, i64 1
  %99 = fadd <2 x float> %87, %98
  br i1 %48, label %115, label %100

100:                                              ; preds = %53
  %101 = getelementptr inbounds %struct._PixelPacket, ptr %56, i64 0, i32 3
  %102 = load i16, ptr %101, align 2, !tbaa !67
  %103 = uitofp i16 %102 to double
  %104 = getelementptr inbounds %struct._PixelPacket, ptr %55, i64 0, i32 3
  %105 = load i16, ptr %104, align 2, !tbaa !67
  %106 = uitofp i16 %105 to double
  %107 = fsub double %103, %106
  %108 = fptrunc double %107 to float
  %109 = tail call float @llvm.fabs.f32(float %108)
  %110 = tail call float @llvm.fmuladd.f32(float %108, float %108, float %95)
  %111 = fcmp ogt float %109, %97
  %112 = select i1 %111, float %109, float %97
  %113 = insertelement <2 x float> <float 1.000000e+00, float poison>, float %109, i64 1
  %114 = fadd <2 x float> %99, %113
  br label %115

115:                                              ; preds = %100, %53
  %116 = phi float [ %112, %100 ], [ %97, %53 ]
  %117 = phi float [ %110, %100 ], [ %95, %53 ]
  %118 = phi <2 x float> [ %114, %100 ], [ %99, %53 ]
  br i1 %50, label %119, label %145

119:                                              ; preds = %115
  %120 = load i32, ptr %27, align 4, !tbaa !57
  %121 = icmp eq i32 %120, 12
  br i1 %121, label %122, label %145

122:                                              ; preds = %119
  br i1 %51, label %127, label %123

123:                                              ; preds = %122
  %124 = getelementptr inbounds i16, ptr %42, i64 %54
  %125 = load i16, ptr %124, align 2, !tbaa !68
  %126 = zext i16 %125 to i32
  br label %127

127:                                              ; preds = %122, %123
  %128 = phi i32 [ %126, %123 ], [ 0, %122 ]
  %129 = sitofp i32 %128 to double
  br i1 %52, label %134, label %130

130:                                              ; preds = %127
  %131 = getelementptr inbounds i16, ptr %43, i64 %54
  %132 = load i16, ptr %131, align 2, !tbaa !68
  %133 = zext i16 %132 to i32
  br label %134

134:                                              ; preds = %127, %130
  %135 = phi i32 [ %133, %130 ], [ 0, %127 ]
  %136 = sitofp i32 %135 to double
  %137 = fsub double %129, %136
  %138 = fptrunc double %137 to float
  %139 = tail call float @llvm.fabs.f32(float %138)
  %140 = tail call float @llvm.fmuladd.f32(float %138, float %138, float %117)
  %141 = fcmp ogt float %139, %116
  %142 = select i1 %141, float %139, float %116
  %143 = insertelement <2 x float> <float 1.000000e+00, float poison>, float %139, i64 1
  %144 = fadd <2 x float> %118, %143
  br label %145

145:                                              ; preds = %134, %119, %115
  %146 = phi float [ %142, %134 ], [ %116, %119 ], [ %116, %115 ]
  %147 = phi float [ %140, %134 ], [ %117, %119 ], [ %117, %115 ]
  %148 = phi <2 x float> [ %144, %134 ], [ %118, %119 ], [ %118, %115 ]
  %149 = getelementptr inbounds %struct._PixelPacket, ptr %56, i64 1
  %150 = getelementptr inbounds %struct._PixelPacket, ptr %55, i64 1
  %151 = add nuw nsw i64 %54, 1
  %152 = icmp eq i64 %151, %44
  br i1 %152, label %153, label %53, !llvm.loop !126

153:                                              ; preds = %145, %41
  %154 = phi float [ %33, %41 ], [ %146, %145 ]
  %155 = phi float [ %32, %41 ], [ %147, %145 ]
  %156 = phi <2 x float> [ %34, %41 ], [ %148, %145 ]
  %157 = add nuw nsw i64 %31, 1
  %158 = load i64, ptr %11, align 8, !tbaa !55
  %159 = icmp slt i64 %157, %158
  br i1 %159, label %29, label %160, !llvm.loop !127

160:                                              ; preds = %29, %153
  %161 = phi float [ %154, %153 ], [ %33, %29 ]
  %162 = phi float [ %155, %153 ], [ %32, %29 ]
  %163 = phi <2 x float> [ %156, %153 ], [ %34, %29 ]
  %164 = fpext float %162 to double
  %165 = fmul double %164, 0x3DF0002000300040
  %166 = fpext float %161 to double
  %167 = fmul double %166, 0x3EF0001000100010
  br label %168

168:                                              ; preds = %160, %18
  %169 = phi double [ 0.000000e+00, %18 ], [ %167, %160 ]
  %170 = phi double [ 0.000000e+00, %18 ], [ %165, %160 ]
  %171 = phi <2 x float> [ zeroinitializer, %18 ], [ %163, %160 ]
  %172 = tail call ptr @DestroyCacheView(ptr noundef %21) #18
  %173 = tail call ptr @DestroyCacheView(ptr noundef %20) #18
  %174 = extractelement <2 x float> %171, i64 0
  %175 = extractelement <2 x float> %171, i64 1
  %176 = fdiv float %175, %174
  %177 = fpext float %176 to double
  %178 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 45
  store double %177, ptr %178, align 8, !tbaa !128
  %179 = fpext float %174 to double
  %180 = fdiv double %170, %179
  %181 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 45, i32 1
  store double %180, ptr %181, align 8, !tbaa !129
  %182 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 45, i32 2
  store double %169, ptr %182, align 8, !tbaa !103
  %183 = fcmp oeq float %176, 0.000000e+00
  %184 = zext i1 %183 to i32
  br label %185

185:                                              ; preds = %14, %168
  %186 = phi i32 [ %184, %168 ], [ 0, %14 ]
  ret i32 %186
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @SimilarityImage(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call ptr @SimilarityMetricImage(ptr noundef %0, ptr noundef %1, i32 noundef 7, ptr noundef %2, ptr noundef %3, ptr noundef %4) #16
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @SimilarityMetricImage(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr nocapture noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1975, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #18
  br label %13

13:                                               ; preds = %10, %6
  tail call void @SetGeometry(ptr noundef %1, ptr noundef %3) #18
  store double 0x7FEFFFFFFFFFFFFF, ptr %4, align 8, !tbaa !53
  %14 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  %15 = load i64, ptr %14, align 8, !tbaa !54
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %17 = load i64, ptr %16, align 8, !tbaa !54
  %18 = icmp ugt i64 %15, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 8
  %21 = load i64, ptr %20, align 8, !tbaa !55
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %23 = load i64, ptr %22, align 8, !tbaa !55
  %24 = icmp ugt i64 %21, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19, %13
  %26 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %27 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1982, i32 noundef 465, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %26) #18
  br label %138

28:                                               ; preds = %19
  %29 = sub i64 %17, %15
  %30 = add i64 %29, 1
  %31 = sub i64 %23, %21
  %32 = add i64 %31, 1
  %33 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %30, i64 noundef %32, i32 noundef 1, ptr noundef %5) #18
  %34 = icmp eq ptr %33, null
  br i1 %34, label %138, label %35

35:                                               ; preds = %28
  %36 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %33, i32 noundef 1) #18
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct._Image, ptr %33, i64 0, i32 58
  tail call void @InheritException(ptr noundef %5, ptr noundef nonnull %39) #18
  %40 = tail call ptr @DestroyImage(ptr noundef nonnull %33) #18
  br label %138

41:                                               ; preds = %35
  %42 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %33, i32 noundef 4) #18
  %43 = tail call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.12) #18
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %41
  %46 = tail call fastcc double @StringToDouble(ptr noundef nonnull %43) #16
  br label %47

47:                                               ; preds = %45, %41
  %48 = phi double [ %46, %45 ], [ -1.000000e+00, %41 ]
  %49 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %33, ptr noundef %5) #18
  %50 = load i64, ptr %22, align 8, !tbaa !55
  %51 = load i64, ptr %20, align 8, !tbaa !55
  %52 = add i64 %50, 1
  %53 = sub i64 %52, %51
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %47
  %56 = tail call ptr @DestroyCacheView(ptr noundef %49) #18
  br label %138

57:                                               ; preds = %47
  %58 = getelementptr inbounds %struct._Image, ptr %33, i64 0, i32 7
  %59 = getelementptr inbounds %struct._RectangleInfo, ptr %3, i64 0, i32 2
  %60 = getelementptr inbounds %struct._RectangleInfo, ptr %3, i64 0, i32 3
  %61 = icmp eq i32 %2, 255
  %62 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %63

63:                                               ; preds = %57, %124
  %64 = phi i64 [ 0, %57 ], [ %127, %124 ]
  %65 = phi i64 [ 0, %57 ], [ %126, %124 ]
  %66 = phi i32 [ 1, %57 ], [ %125, %124 ]
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %124, label %68

68:                                               ; preds = %63
  %69 = load double, ptr %4, align 8, !tbaa !53
  %70 = fcmp ugt double %69, %48
  br i1 %70, label %71, label %124

71:                                               ; preds = %68
  %72 = load i64, ptr %58, align 8, !tbaa !54
  %73 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %49, i64 noundef 0, i64 noundef %64, i64 noundef %72, i64 noundef 1, ptr noundef %5) #19
  %74 = icmp eq ptr %73, null
  br i1 %74, label %124, label %75

75:                                               ; preds = %71
  %76 = load i64, ptr %16, align 8, !tbaa !54
  %77 = load i64, ptr %14, align 8, !tbaa !54
  %78 = add i64 %76, 1
  %79 = sub i64 %78, %77
  %80 = icmp sgt i64 %79, 0
  br i1 %80, label %81, label %112

81:                                               ; preds = %75
  %82 = load double, ptr %4, align 8, !tbaa !53
  br label %83

83:                                               ; preds = %81, %98
  %84 = phi double [ %94, %98 ], [ %82, %81 ]
  %85 = phi ptr [ %105, %98 ], [ %73, %81 ]
  %86 = phi i64 [ %106, %98 ], [ 0, %81 ]
  %87 = fcmp ugt double %84, %48
  br i1 %87, label %88, label %112

88:                                               ; preds = %83
  %89 = tail call fastcc double @GetSimilarityMetric(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %2, i64 noundef %86, i64 noundef %64, ptr noundef %5) #16
  %90 = load double, ptr %4, align 8, !tbaa !53
  %91 = fcmp olt double %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  store double %89, ptr %4, align 8, !tbaa !53
  store i64 %86, ptr %59, align 8, !tbaa !130
  store i64 %64, ptr %60, align 8, !tbaa !131
  br label %93

93:                                               ; preds = %92, %88
  %94 = phi double [ %89, %92 ], [ %90, %88 ]
  br i1 %61, label %95, label %98

95:                                               ; preds = %93
  %96 = fmul double %89, 1.000000e-02
  %97 = tail call fastcc double @MagickMin(double noundef %96) #16
  br label %98

98:                                               ; preds = %95, %93
  %99 = phi double [ %97, %95 ], [ %89, %93 ]
  %100 = tail call double @llvm.fmuladd.f64(double %99, double -6.553500e+04, double 6.553500e+04)
  %101 = fptrunc double %100 to float
  %102 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %101) #16
  %103 = getelementptr inbounds %struct._PixelPacket, ptr %85, i64 0, i32 2
  store i16 %102, ptr %103, align 2, !tbaa !63
  %104 = getelementptr inbounds %struct._PixelPacket, ptr %85, i64 0, i32 1
  store i16 %102, ptr %104, align 2, !tbaa !64
  store i16 %102, ptr %85, align 2, !tbaa !65
  %105 = getelementptr inbounds %struct._PixelPacket, ptr %85, i64 1
  %106 = add nuw nsw i64 %86, 1
  %107 = load i64, ptr %16, align 8, !tbaa !54
  %108 = load i64, ptr %14, align 8, !tbaa !54
  %109 = add i64 %107, 1
  %110 = sub i64 %109, %108
  %111 = icmp slt i64 %106, %110
  br i1 %111, label %83, label %112, !llvm.loop !132

112:                                              ; preds = %98, %83, %75
  %113 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %49, ptr noundef %5) #19
  %114 = icmp ne i32 %113, 0
  %115 = zext i1 %114 to i32
  %116 = load ptr, ptr %62, align 8, !tbaa !113
  %117 = icmp eq ptr %116, null
  br i1 %117, label %124, label %118

118:                                              ; preds = %112
  %119 = add nsw i64 %65, 1
  %120 = load i64, ptr %22, align 8, !tbaa !55
  %121 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, i64 noundef %65, i64 noundef %120) #16
  %122 = icmp eq i32 %121, 0
  %123 = select i1 %122, i32 0, i32 %115
  br label %124

124:                                              ; preds = %112, %118, %71, %68, %63
  %125 = phi i32 [ 0, %63 ], [ 1, %68 ], [ 0, %71 ], [ %123, %118 ], [ %115, %112 ]
  %126 = phi i64 [ %65, %63 ], [ %65, %68 ], [ %65, %71 ], [ %119, %118 ], [ %65, %112 ]
  %127 = add nuw nsw i64 %64, 1
  %128 = load i64, ptr %22, align 8, !tbaa !55
  %129 = load i64, ptr %20, align 8, !tbaa !55
  %130 = add i64 %128, 1
  %131 = sub i64 %130, %129
  %132 = icmp slt i64 %127, %131
  br i1 %132, label %63, label %133, !llvm.loop !133

133:                                              ; preds = %124
  %134 = icmp eq i32 %125, 0
  %135 = tail call ptr @DestroyCacheView(ptr noundef %49) #18
  br i1 %134, label %136, label %138

136:                                              ; preds = %133
  %137 = tail call ptr @DestroyImage(ptr noundef nonnull %33) #18
  br label %138

138:                                              ; preds = %55, %133, %136, %28, %38, %25
  %139 = phi ptr [ null, %25 ], [ null, %38 ], [ null, %28 ], [ %137, %136 ], [ %33, %133 ], [ %33, %55 ]
  ret ptr %139
}

; Function Attrs: optsize
declare void @SetGeometry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc double @StringToDouble(ptr noalias noundef %0) unnamed_addr #0 !PGOFuncName !134 {
  %2 = tail call double @InterpretLocaleValue(ptr noundef %0, ptr noundef null) #18
  ret double %2
}

; Function Attrs: hot optsize
declare ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc double @GetSimilarityMetric(ptr noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) unnamed_addr #0 !PGOFuncName !135 {
  %7 = alloca double, align 8
  %8 = alloca %struct._RectangleInfo, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #17
  call void @SetGeometry(ptr noundef %1, ptr noundef nonnull %8) #18
  %9 = getelementptr inbounds %struct._RectangleInfo, ptr %8, i64 0, i32 2
  store i64 %3, ptr %9, align 8, !tbaa !130
  %10 = getelementptr inbounds %struct._RectangleInfo, ptr %8, i64 0, i32 3
  store i64 %4, ptr %10, align 8, !tbaa !131
  %11 = call ptr @CropImage(ptr noundef %0, ptr noundef nonnull %8, ptr noundef %5) #18
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %6
  store double 0.000000e+00, ptr %7, align 8, !tbaa !53
  %14 = call i32 @GetImageDistortion(ptr noundef nonnull %11, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %7, ptr noundef %5) #16, !range !56
  %15 = call ptr @DestroyImage(ptr noundef nonnull %11) #18
  %16 = load double, ptr %7, align 8, !tbaa !53
  br label %17

17:                                               ; preds = %6, %13
  %18 = phi double [ %16, %13 ], [ 0.000000e+00, %6 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #17
  ret double %18
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @MagickMin(double noundef %0) unnamed_addr #10 !PGOFuncName !136 {
  %2 = fcmp olt double %0, 1.000000e+00
  %3 = select i1 %2, double %0, double 1.000000e+00
  ret double %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i16 @ClampToQuantum(float noundef %0) unnamed_addr #10 !PGOFuncName !137 {
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

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @SetImageProgress(ptr noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 !PGOFuncName !138 {
  %4 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #17
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %6 = load ptr, ptr %5, align 8, !tbaa !113
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.13, ptr noundef nonnull %9) #18
  %11 = load ptr, ptr %5, align 8, !tbaa !113
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  %13 = load ptr, ptr %12, align 8, !tbaa !139
  %14 = call i32 %11(ptr noundef nonnull %4, i64 noundef %1, i64 noundef %2, ptr noundef %13) #18
  br label %15

15:                                               ; preds = %3, %8
  %16 = phi i32 [ %14, %8 ], [ 1, %3 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #17
  ret i32 %16
}

; Function Attrs: hot optsize
declare float @DecodePixelGamma(float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i64 @GetNumberChannels(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #11 !PGOFuncName !140 {
  %3 = and i32 %1, 1
  %4 = lshr i32 %1, 1
  %5 = and i32 %4, 1
  %6 = add nuw nsw i32 %5, %3
  %7 = lshr i32 %1, 2
  %8 = and i32 %7, 1
  %9 = add nuw nsw i32 %6, %8
  %10 = zext nneg i32 %9 to i64
  %11 = and i32 %1, 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %15 = load i32, ptr %14, align 8, !tbaa !66
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = add nuw nsw i64 %17, %10
  br label %19

19:                                               ; preds = %13, %2
  %20 = phi i64 [ %10, %2 ], [ %18, %13 ]
  %21 = and i32 %1, 32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !57
  %26 = icmp eq i32 %25, 12
  %27 = zext i1 %26 to i64
  %28 = add nuw nsw i64 %20, %27
  br label %29

29:                                               ; preds = %23, %19
  %30 = phi i64 [ %20, %19 ], [ %28, %23 ]
  ret i64 %30
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare ptr @GetImageChannelStatistics(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @PerceptibleReciprocal(double noundef %0) unnamed_addr #10 !PGOFuncName !141 {
  %2 = fcmp olt double %0, 0.000000e+00
  %3 = select i1 %2, double -1.000000e+00, double 1.000000e+00
  %4 = fmul double %3, %0
  %5 = fcmp ult double %4, 1.000000e-15
  %6 = fdiv double 1.000000e+00, %0
  %7 = fdiv double %3, 1.000000e-15
  %8 = select i1 %5, double %7, double %6
  ret double %8
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc double @MagickLog10(double noundef %0) unnamed_addr #13 !PGOFuncName !142 {
  %2 = tail call double @llvm.fabs.f64(double %0)
  %3 = fcmp olt double %2, 0x3DA5FD7FE1796495
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call double @log10(double noundef %2) #18
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi double [ %5, %4 ], [ -1.100000e+01, %1 ]
  ret double %7
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @log10(double noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare ptr @GetImageChannelPerceptualHash(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare double @InterpretLocaleValue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CropImage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { hot optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { optsize allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { optsize }
attributes #17 = { nounwind }
attributes #18 = { nounwind optsize }
attributes #19 = { hot nounwind optsize }
attributes #20 = { nounwind optsize allocsize(0,1) }
attributes #21 = { nounwind optsize willreturn memory(none) }
attributes #22 = { noreturn nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 11498625}
!4 = !{!"MaxCount", i64 3247920}
!5 = !{!"MaxInternalCount", i64 3247920}
!6 = !{!"MaxFunctionCount", i64 51090}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 3247920, i32 3}
!14 = !{i32 100000, i64 3247920, i32 3}
!15 = !{i32 200000, i64 3247920, i32 3}
!16 = !{i32 300000, i64 3247920, i32 3}
!17 = !{i32 400000, i64 3247920, i32 3}
!18 = !{i32 500000, i64 3247920, i32 3}
!19 = !{i32 600000, i64 3247920, i32 3}
!20 = !{i32 700000, i64 3247920, i32 3}
!21 = !{i32 800000, i64 3247920, i32 3}
!22 = !{i32 900000, i64 1623960, i32 4}
!23 = !{i32 950000, i64 1623960, i32 4}
!24 = !{i32 990000, i64 51090, i32 6}
!25 = !{i32 999000, i64 25545, i32 7}
!26 = !{i32 999900, i64 3120, i32 8}
!27 = !{i32 999990, i64 3120, i32 8}
!28 = !{i32 999999, i64 1, i32 36}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
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
!58 = !{i64 0, i64 4, !59, i64 4, i64 4, !59, i64 8, i64 4, !59, i64 16, i64 8, !53, i64 24, i64 8, !60, i64 32, i64 4, !61, i64 36, i64 4, !61, i64 40, i64 4, !61, i64 44, i64 4, !61, i64 48, i64 4, !61}
!59 = !{!36, !36, i64 0}
!60 = !{!39, !39, i64 0}
!61 = !{!62, !62, i64 0}
!62 = !{!"float", !37, i64 0}
!63 = !{!41, !42, i64 4}
!64 = !{!41, !42, i64 2}
!65 = !{!41, !42, i64 0}
!66 = !{!35, !36, i64 32}
!67 = !{!41, !42, i64 6}
!68 = !{!42, !42, i64 0}
!69 = distinct !{!69, !70}
!70 = !{!"llvm.loop.mustprogress"}
!71 = distinct !{!71, !70}
!72 = !{!35, !36, i64 416}
!73 = !{!"compare.c:ConvertRGBToCMYK"}
!74 = !{!75, !36, i64 4}
!75 = !{!"_MagickPixelPacket", !36, i64 0, !36, i64 4, !36, i64 8, !43, i64 16, !39, i64 24, !62, i64 32, !62, i64 36, !62, i64 40, !62, i64 44, !62, i64 48}
!76 = !{!75, !62, i64 32}
!77 = !{!75, !62, i64 36}
!78 = !{!75, !62, i64 40}
!79 = !{!75, !62, i64 48}
!80 = !{!"compare.c:SetMagickPixelPacket"}
!81 = !{!"compare.c:SetPixelPacket"}
!82 = !{!75, !62, i64 44}
!83 = !{!35, !36, i64 0}
!84 = !{!"compare.c:GetAbsoluteDistortion"}
!85 = distinct !{!85, !70, !86, !87}
!86 = !{!"llvm.loop.isvectorized", i32 1}
!87 = !{!"llvm.loop.unroll.runtime.disable"}
!88 = distinct !{!88, !70}
!89 = distinct !{!89, !70}
!90 = !{!"compare.c:GetFuzzDistortion"}
!91 = distinct !{!91, !70, !86, !87}
!92 = distinct !{!92, !70}
!93 = distinct !{!93, !70}
!94 = distinct !{!94, !70, !86, !87}
!95 = !{!"compare.c:GetMeanAbsoluteDistortion"}
!96 = distinct !{!96, !70, !86, !87}
!97 = distinct !{!97, !70}
!98 = distinct !{!98, !70}
!99 = distinct !{!99, !70, !86, !87}
!100 = !{!"compare.c:GetMeanErrorPerPixel"}
!101 = distinct !{!101, !70}
!102 = distinct !{!102, !70}
!103 = !{!35, !43, i64 496}
!104 = !{!"compare.c:GetMeanSquaredDistortion"}
!105 = distinct !{!105, !70, !86, !87}
!106 = distinct !{!106, !70}
!107 = distinct !{!107, !70}
!108 = distinct !{!108, !70, !86, !87}
!109 = !{!"compare.c:GetNormalizedCrossCorrelationDistortion"}
!110 = !{!111, !43, i64 56}
!111 = !{!"_ChannelStatistics", !39, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !43, i64 48, !43, i64 56, !43, i64 64, !43, i64 72, !43, i64 80, !43, i64 88}
!112 = distinct !{!112, !70}
!113 = !{!35, !40, i64 568}
!114 = distinct !{!114, !70}
!115 = !{!111, !43, i64 72}
!116 = distinct !{!116, !70}
!117 = !{!"compare.c:GetPeakAbsoluteDistortion"}
!118 = distinct !{!118, !70, !86, !87}
!119 = distinct !{!119, !70}
!120 = distinct !{!120, !70}
!121 = !{!"compare.c:GetPeakSignalToNoiseRatio"}
!122 = !{!"compare.c:GetPerceptualHashDistortion"}
!123 = distinct !{!123, !70}
!124 = distinct !{!124, !70}
!125 = !{!"compare.c:GetRootMeanSquaredDistortion"}
!126 = distinct !{!126, !70}
!127 = distinct !{!127, !70}
!128 = !{!35, !43, i64 480}
!129 = !{!35, !43, i64 488}
!130 = !{!46, !39, i64 16}
!131 = !{!46, !39, i64 24}
!132 = distinct !{!132, !70}
!133 = distinct !{!133, !70}
!134 = !{!"compare.c:StringToDouble"}
!135 = !{!"compare.c:GetSimilarityMetric"}
!136 = !{!"compare.c:MagickMin"}
!137 = !{!"compare.c:ClampToQuantum"}
!138 = !{!"compare.c:SetImageProgress"}
!139 = !{!35, !40, i64 576}
!140 = !{!"compare.c:GetNumberChannels"}
!141 = !{!"compare.c:PerceptibleReciprocal"}
!142 = !{!"compare.c:MagickLog10"}
