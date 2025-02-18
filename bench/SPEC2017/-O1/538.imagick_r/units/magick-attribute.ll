; ModuleID = 'magick/attribute.c'
source_filename = "magick/attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._RectangleInfo = type { i64, i64, i64, i64 }
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
%struct._ImageInfo = type { i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, double, double, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, i32, i32, i64, i32, i32, i32, i64, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [4096 x i8], [4096 x i8], [4096 x i8], [4096 x i8], i32, ptr, i64, i64, %struct._PixelPacket, i64, i32, %struct._PixelPacket, ptr, i32 }
%struct._QuantizeInfo = type { i64, i64, i32, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [19 x i8] c"magick/attribute.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"GeometryDoesNotContainImage\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"dither\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @GetImageBoundingBox(ptr dead_on_unwind noalias nocapture writable sret(%struct._RectangleInfo) align 8 %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [3 x %struct._MagickPixelPacket], align 16
  %5 = alloca %struct._MagickPixelPacket, align 8
  %6 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #11
  %7 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 150, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #11
  br label %13

13:                                               ; preds = %10, %3
  %14 = getelementptr inbounds %struct._RectangleInfo, ptr %0, i64 0, i32 1
  %15 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %16 = load i64, ptr %15, align 8, !tbaa !53
  %17 = getelementptr inbounds %struct._RectangleInfo, ptr %0, i64 0, i32 2
  store i64 %16, ptr %17, align 8, !tbaa !54
  %18 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 8
  %19 = load i64, ptr %18, align 8, !tbaa !55
  %20 = getelementptr inbounds %struct._RectangleInfo, ptr %0, i64 0, i32 3
  store i64 %19, ptr %20, align 8, !tbaa !56
  call void @GetMagickPixelPacket(ptr noundef %1, ptr noundef nonnull %4) #11
  %21 = call ptr @AcquireVirtualCacheView(ptr noundef %1, ptr noundef %2) #11
  %22 = call ptr @GetCacheViewVirtualPixels(ptr noundef %21, i64 noundef 0, i64 noundef 0, i64 noundef 1, i64 noundef 1, ptr noundef %2) #12
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %13
  %25 = call ptr @DestroyCacheView(ptr noundef %21) #11
  br label %236

26:                                               ; preds = %13
  %27 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %21) #11
  %28 = getelementptr inbounds %struct._PixelPacket, ptr %22, i64 0, i32 2
  %29 = load i16, ptr %28, align 2, !tbaa !57
  %30 = uitofp i16 %29 to float
  %31 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 5
  store float %30, ptr %31, align 16, !tbaa !58
  %32 = getelementptr inbounds %struct._PixelPacket, ptr %22, i64 0, i32 1
  %33 = load i16, ptr %32, align 2, !tbaa !61
  %34 = uitofp i16 %33 to float
  %35 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 6
  store float %34, ptr %35, align 4, !tbaa !62
  %36 = load i16, ptr %22, align 2, !tbaa !63
  %37 = uitofp i16 %36 to float
  %38 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 7
  store float %37, ptr %38, align 8, !tbaa !64
  %39 = getelementptr inbounds %struct._PixelPacket, ptr %22, i64 0, i32 3
  %40 = load i16, ptr %39, align 2, !tbaa !65
  %41 = uitofp i16 %40 to float
  %42 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 8
  store float %41, ptr %42, align 4, !tbaa !66
  %43 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %44 = load i32, ptr %43, align 4, !tbaa !67
  %45 = icmp eq i32 %44, 12
  %46 = icmp ne ptr %27, null
  %47 = and i1 %46, %45
  br i1 %47, label %48, label %52

48:                                               ; preds = %26
  %49 = load i16, ptr %27, align 2, !tbaa !68
  %50 = uitofp i16 %49 to float
  %51 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 9
  store float %50, ptr %51, align 16, !tbaa !69
  br label %52

52:                                               ; preds = %26, %48
  %53 = getelementptr inbounds [3 x %struct._MagickPixelPacket], ptr %4, i64 0, i64 1
  call void @GetMagickPixelPacket(ptr noundef %1, ptr noundef nonnull %53) #11
  %54 = load i64, ptr %15, align 8, !tbaa !53
  %55 = add nsw i64 %54, -1
  %56 = call ptr @GetCacheViewVirtualPixels(ptr noundef %21, i64 noundef %55, i64 noundef 0, i64 noundef 1, i64 noundef 1, ptr noundef %2) #12
  %57 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %21) #11
  %58 = getelementptr inbounds %struct._PixelPacket, ptr %56, i64 0, i32 2
  %59 = load i16, ptr %58, align 2, !tbaa !57
  %60 = uitofp i16 %59 to float
  %61 = getelementptr inbounds [3 x %struct._MagickPixelPacket], ptr %4, i64 0, i64 1, i32 5
  store float %60, ptr %61, align 8, !tbaa !58
  %62 = getelementptr inbounds %struct._PixelPacket, ptr %56, i64 0, i32 1
  %63 = load i16, ptr %62, align 2, !tbaa !61
  %64 = uitofp i16 %63 to float
  %65 = getelementptr inbounds [3 x %struct._MagickPixelPacket], ptr %4, i64 0, i64 1, i32 6
  store float %64, ptr %65, align 4, !tbaa !62
  %66 = load i16, ptr %56, align 2, !tbaa !63
  %67 = uitofp i16 %66 to float
  %68 = getelementptr inbounds [3 x %struct._MagickPixelPacket], ptr %4, i64 0, i64 1, i32 7
  store float %67, ptr %68, align 16, !tbaa !64
  %69 = getelementptr inbounds %struct._PixelPacket, ptr %56, i64 0, i32 3
  %70 = load i16, ptr %69, align 2, !tbaa !65
  %71 = uitofp i16 %70 to float
  %72 = getelementptr inbounds [3 x %struct._MagickPixelPacket], ptr %4, i64 0, i64 1, i32 8
  store float %71, ptr %72, align 4, !tbaa !66
  %73 = load i32, ptr %43, align 4, !tbaa !67
  %74 = icmp eq i32 %73, 12
  %75 = icmp ne ptr %57, null
  %76 = and i1 %75, %74
  br i1 %76, label %77, label %81

77:                                               ; preds = %52
  %78 = load i16, ptr %57, align 2, !tbaa !68
  %79 = uitofp i16 %78 to float
  %80 = getelementptr inbounds [3 x %struct._MagickPixelPacket], ptr %4, i64 0, i64 1, i32 9
  store float %79, ptr %80, align 8, !tbaa !69
  br label %81

81:                                               ; preds = %52, %77
  %82 = getelementptr inbounds [3 x %struct._MagickPixelPacket], ptr %4, i64 0, i64 2
  call void @GetMagickPixelPacket(ptr noundef %1, ptr noundef nonnull %82) #11
  %83 = load i64, ptr %18, align 8, !tbaa !55
  %84 = add nsw i64 %83, -1
  %85 = call ptr @GetCacheViewVirtualPixels(ptr noundef %21, i64 noundef 0, i64 noundef %84, i64 noundef 1, i64 noundef 1, ptr noundef %2) #12
  %86 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %21) #11
  %87 = getelementptr inbounds %struct._PixelPacket, ptr %85, i64 0, i32 2
  %88 = load i16, ptr %87, align 2, !tbaa !57
  %89 = uitofp i16 %88 to float
  %90 = getelementptr inbounds [3 x %struct._MagickPixelPacket], ptr %4, i64 0, i64 2, i32 5
  store float %89, ptr %90, align 16, !tbaa !58
  %91 = getelementptr inbounds %struct._PixelPacket, ptr %85, i64 0, i32 1
  %92 = load i16, ptr %91, align 2, !tbaa !61
  %93 = uitofp i16 %92 to float
  %94 = getelementptr inbounds [3 x %struct._MagickPixelPacket], ptr %4, i64 0, i64 2, i32 6
  store float %93, ptr %94, align 4, !tbaa !62
  %95 = load i16, ptr %85, align 2, !tbaa !63
  %96 = uitofp i16 %95 to float
  %97 = getelementptr inbounds [3 x %struct._MagickPixelPacket], ptr %4, i64 0, i64 2, i32 7
  store float %96, ptr %97, align 8, !tbaa !64
  %98 = getelementptr inbounds %struct._PixelPacket, ptr %85, i64 0, i32 3
  %99 = load i16, ptr %98, align 2, !tbaa !65
  %100 = uitofp i16 %99 to float
  %101 = getelementptr inbounds [3 x %struct._MagickPixelPacket], ptr %4, i64 0, i64 2, i32 8
  store float %100, ptr %101, align 4, !tbaa !66
  %102 = load i32, ptr %43, align 4, !tbaa !67
  %103 = icmp eq i32 %102, 12
  %104 = icmp ne ptr %86, null
  %105 = and i1 %104, %103
  br i1 %105, label %106, label %110

106:                                              ; preds = %81
  %107 = load i16, ptr %86, align 2, !tbaa !68
  %108 = uitofp i16 %107 to float
  %109 = getelementptr inbounds [3 x %struct._MagickPixelPacket], ptr %4, i64 0, i64 2, i32 9
  store float %108, ptr %109, align 16, !tbaa !69
  br label %110

110:                                              ; preds = %81, %106
  call void @GetMagickPixelPacket(ptr noundef %1, ptr noundef nonnull %5) #11
  %111 = load i64, ptr %0, align 8
  %112 = load i64, ptr %14, align 8
  %113 = load i64, ptr %17, align 8
  %114 = load i64, ptr %20, align 8
  %115 = load i64, ptr %18, align 8, !tbaa !55
  %116 = icmp sgt i64 %115, 0
  br i1 %116, label %117, label %217

117:                                              ; preds = %110
  %118 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 5
  %119 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 6
  %120 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 7
  %121 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 8
  %122 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 9
  br label %123

123:                                              ; preds = %117, %208
  %124 = phi i64 [ 0, %117 ], [ %214, %208 ]
  %125 = phi i32 [ 1, %117 ], [ %213, %208 ]
  %126 = phi i64 [ %111, %117 ], [ %212, %208 ]
  %127 = phi i64 [ %112, %117 ], [ %211, %208 ]
  %128 = phi i64 [ %113, %117 ], [ %210, %208 ]
  %129 = phi i64 [ %114, %117 ], [ %209, %208 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #11
  %130 = icmp eq i32 %125, 0
  br i1 %130, label %208, label %131

131:                                              ; preds = %123
  %132 = load i64, ptr %15, align 8, !tbaa !53
  %133 = call ptr @GetCacheViewVirtualPixels(ptr noundef %21, i64 noundef 0, i64 noundef %124, i64 noundef %132, i64 noundef 1, ptr noundef %2) #12
  %134 = icmp eq ptr %133, null
  br i1 %134, label %208, label %135

135:                                              ; preds = %131
  %136 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %21) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) %5, i64 56, i1 false), !tbaa.struct !70
  %137 = load i64, ptr %15, align 8, !tbaa !53
  %138 = icmp sgt i64 %137, 0
  br i1 %138, label %139, label %199

139:                                              ; preds = %135
  %140 = icmp ne ptr %136, null
  br label %141

141:                                              ; preds = %139, %193
  %142 = phi i64 [ 0, %139 ], [ %196, %193 ]
  %143 = phi ptr [ %133, %139 ], [ %195, %193 ]
  %144 = phi i64 [ %126, %139 ], [ %180, %193 ]
  %145 = phi i64 [ %127, %139 ], [ %194, %193 ]
  %146 = phi i64 [ %128, %139 ], [ %173, %193 ]
  %147 = phi i64 [ %129, %139 ], [ %187, %193 ]
  %148 = getelementptr inbounds %struct._PixelPacket, ptr %143, i64 0, i32 2
  %149 = load i16, ptr %148, align 2, !tbaa !57
  %150 = uitofp i16 %149 to float
  store float %150, ptr %118, align 8, !tbaa !58
  %151 = getelementptr inbounds %struct._PixelPacket, ptr %143, i64 0, i32 1
  %152 = load i16, ptr %151, align 2, !tbaa !61
  %153 = uitofp i16 %152 to float
  store float %153, ptr %119, align 4, !tbaa !62
  %154 = load i16, ptr %143, align 2, !tbaa !63
  %155 = uitofp i16 %154 to float
  store float %155, ptr %120, align 8, !tbaa !64
  %156 = getelementptr inbounds %struct._PixelPacket, ptr %143, i64 0, i32 3
  %157 = load i16, ptr %156, align 2, !tbaa !65
  %158 = uitofp i16 %157 to float
  store float %158, ptr %121, align 4, !tbaa !66
  %159 = load i32, ptr %43, align 4, !tbaa !67
  %160 = icmp eq i32 %159, 12
  %161 = and i1 %140, %160
  br i1 %161, label %162, label %166

162:                                              ; preds = %141
  %163 = getelementptr inbounds i16, ptr %136, i64 %142
  %164 = load i16, ptr %163, align 2, !tbaa !68
  %165 = uitofp i16 %164 to float
  store float %165, ptr %122, align 8, !tbaa !69
  br label %166

166:                                              ; preds = %141, %162
  %167 = icmp slt i64 %142, %146
  br i1 %167, label %168, label %172

168:                                              ; preds = %166
  %169 = call i32 @IsMagickColorSimilar(ptr noundef nonnull %6, ptr noundef nonnull %4) #11
  %170 = icmp eq i32 %169, 0
  %171 = select i1 %170, i64 %142, i64 %146
  br label %172

172:                                              ; preds = %168, %166
  %173 = phi i64 [ %146, %166 ], [ %171, %168 ]
  %174 = icmp sgt i64 %142, %144
  br i1 %174, label %175, label %179

175:                                              ; preds = %172
  %176 = call i32 @IsMagickColorSimilar(ptr noundef nonnull %6, ptr noundef nonnull %53) #11
  %177 = icmp eq i32 %176, 0
  %178 = select i1 %177, i64 %142, i64 %144
  br label %179

179:                                              ; preds = %175, %172
  %180 = phi i64 [ %144, %172 ], [ %178, %175 ]
  %181 = icmp slt i64 %124, %147
  br i1 %181, label %182, label %186

182:                                              ; preds = %179
  %183 = call i32 @IsMagickColorSimilar(ptr noundef nonnull %6, ptr noundef nonnull %4) #11
  %184 = icmp eq i32 %183, 0
  %185 = select i1 %184, i64 %124, i64 %147
  br label %186

186:                                              ; preds = %182, %179
  %187 = phi i64 [ %147, %179 ], [ %185, %182 ]
  %188 = icmp sgt i64 %124, %145
  br i1 %188, label %189, label %193

189:                                              ; preds = %186
  %190 = call i32 @IsMagickColorSimilar(ptr noundef nonnull %6, ptr noundef nonnull %82) #11
  %191 = icmp eq i32 %190, 0
  %192 = select i1 %191, i64 %124, i64 %145
  br label %193

193:                                              ; preds = %189, %186
  %194 = phi i64 [ %145, %186 ], [ %192, %189 ]
  %195 = getelementptr inbounds %struct._PixelPacket, ptr %143, i64 1
  %196 = add nuw nsw i64 %142, 1
  %197 = load i64, ptr %15, align 8, !tbaa !53
  %198 = icmp slt i64 %196, %197
  br i1 %198, label %141, label %199, !llvm.loop !75

199:                                              ; preds = %193, %135
  %200 = phi i64 [ %129, %135 ], [ %187, %193 ]
  %201 = phi i64 [ %128, %135 ], [ %173, %193 ]
  %202 = phi i64 [ %127, %135 ], [ %194, %193 ]
  %203 = phi i64 [ %126, %135 ], [ %180, %193 ]
  %204 = call i64 @llvm.smin.i64(i64 %201, i64 %128)
  %205 = call i64 @llvm.smin.i64(i64 %200, i64 %129)
  %206 = call i64 @llvm.umax.i64(i64 %203, i64 %126)
  %207 = call i64 @llvm.umax.i64(i64 %202, i64 %127)
  br label %208

208:                                              ; preds = %199, %131, %123
  %209 = phi i64 [ %129, %123 ], [ %129, %131 ], [ %205, %199 ]
  %210 = phi i64 [ %128, %123 ], [ %128, %131 ], [ %204, %199 ]
  %211 = phi i64 [ %127, %123 ], [ %127, %131 ], [ %207, %199 ]
  %212 = phi i64 [ %126, %123 ], [ %126, %131 ], [ %206, %199 ]
  %213 = phi i32 [ 0, %123 ], [ 0, %131 ], [ 1, %199 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #11
  %214 = add nuw nsw i64 %124, 1
  %215 = load i64, ptr %18, align 8, !tbaa !55
  %216 = icmp slt i64 %214, %215
  br i1 %216, label %123, label %217, !llvm.loop !78

217:                                              ; preds = %208, %110
  %218 = phi i64 [ %114, %110 ], [ %209, %208 ]
  %219 = phi i64 [ %113, %110 ], [ %210, %208 ]
  %220 = phi i64 [ %112, %110 ], [ %211, %208 ]
  %221 = phi i64 [ %111, %110 ], [ %212, %208 ]
  store i64 %221, ptr %0, align 8
  store i64 %220, ptr %14, align 8
  store i64 %219, ptr %17, align 8
  store i64 %218, ptr %20, align 8
  %222 = call ptr @DestroyCacheView(ptr noundef %21) #11
  %223 = icmp eq i64 %221, 0
  %224 = icmp eq i64 %220, 0
  %225 = select i1 %223, i1 true, i1 %224
  br i1 %225, label %226, label %229

226:                                              ; preds = %217
  %227 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %228 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 245, i32 noundef 310, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %227) #11
  br label %236

229:                                              ; preds = %217
  %230 = load i64, ptr %17, align 8, !tbaa !54
  %231 = add i64 %221, 1
  %232 = sub i64 %231, %230
  store i64 %232, ptr %0, align 8, !tbaa !79
  %233 = load i64, ptr %20, align 8, !tbaa !56
  %234 = add i64 %220, 1
  %235 = sub i64 %234, %233
  store i64 %235, ptr %14, align 8, !tbaa !80
  br label %236

236:                                              ; preds = %226, %229, %24
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %4) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: hot
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #2

declare ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare i32 @IsMagickColorSimilar(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @GetImageDepth(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i64 @GetImageChannelDepth(ptr noundef %0, i32 noundef 47, ptr noundef %1)
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define dso_local i64 @GetImageChannelDepth(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct._ExceptionInfo, align 8
  %5 = alloca %struct._ExceptionInfo, align 8
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !34
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 315, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #11
  br label %12

12:                                               ; preds = %9, %3
  %13 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #11
  %14 = tail call ptr @AcquireQuantumMemory(i64 noundef %13, i64 noundef 8) #13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = icmp sgt i64 %13, 0
  br i1 %17, label %25, label %30

18:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #11
  call void @GetExceptionInfo(ptr noundef nonnull %4) #11
  %19 = tail call ptr @__errno_location() #14
  %20 = load i32, ptr %19, align 4, !tbaa !71
  %21 = call ptr @GetExceptionMessage(i32 noundef %20) #11
  %22 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 320, i32 noundef 700, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, ptr noundef %21) #11
  %23 = call ptr @DestroyString(ptr noundef %21) #11
  call void @CatchException(ptr noundef nonnull %4) #11
  %24 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %4) #11
  call void @MagickCoreTerminus() #11
  call void @_exit(i32 noundef 1) #15
  unreachable

25:                                               ; preds = %16, %25
  %26 = phi i64 [ %28, %25 ], [ 0, %16 ]
  %27 = getelementptr inbounds i64, ptr %14, i64 %26
  store i64 1, ptr %27, align 8, !tbaa !73
  %28 = add nuw nsw i64 %26, 1
  %29 = icmp eq i64 %28, %13
  br i1 %29, label %30, label %25, !llvm.loop !81

30:                                               ; preds = %25, %16
  %31 = load i32, ptr %0, align 8, !tbaa !82
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %33, label %134

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %35 = load i32, ptr %34, align 8, !tbaa !83
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %134

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %39 = load i64, ptr %38, align 8, !tbaa !84
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %41, label %123

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %43 = and i32 %1, 1
  %44 = icmp eq i32 %43, 0
  %45 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %46 = and i32 %1, 2
  %47 = icmp eq i32 %46, 0
  %48 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %49 = and i32 %1, 4
  %50 = icmp eq i32 %49, 0
  br label %51

51:                                               ; preds = %41, %119
  %52 = phi i64 [ 0, %41 ], [ %120, %119 ]
  %53 = load i64, ptr %14, align 8, !tbaa !73
  %54 = icmp ult i64 %53, 16
  br i1 %54, label %55, label %119

55:                                               ; preds = %51, %116
  %56 = phi i64 [ %117, %116 ], [ %53, %51 ]
  %57 = add nsw i64 %56, -1
  %58 = shl i64 2, %57
  %59 = add i64 %58, -1
  br i1 %44, label %78, label %60

60:                                               ; preds = %55
  %61 = load ptr, ptr %45, align 8, !tbaa !85
  %62 = getelementptr inbounds %struct._PixelPacket, ptr %61, i64 %52, i32 2
  %63 = load i16, ptr %62, align 2, !tbaa !57
  %64 = uitofp i64 %59 to float
  %65 = uitofp i16 %63 to float
  %66 = fmul float %64, %65
  %67 = fdiv float %66, 6.553500e+04
  %68 = fpext float %67 to double
  %69 = fadd double %68, 5.000000e-01
  %70 = fptoui double %69 to i64
  %71 = uitofp i64 %70 to float
  %72 = fmul float %71, 6.553500e+04
  %73 = fdiv float %72, %64
  %74 = fpext float %73 to double
  %75 = fadd double %74, 5.000000e-01
  %76 = fptoui double %75 to i16
  %77 = icmp eq i16 %63, %76
  br i1 %77, label %78, label %116

78:                                               ; preds = %55, %60
  br i1 %47, label %97, label %79

79:                                               ; preds = %78
  %80 = load ptr, ptr %48, align 8, !tbaa !85
  %81 = getelementptr inbounds %struct._PixelPacket, ptr %80, i64 %52, i32 1
  %82 = load i16, ptr %81, align 2, !tbaa !61
  %83 = uitofp i64 %59 to float
  %84 = uitofp i16 %82 to float
  %85 = fmul float %83, %84
  %86 = fdiv float %85, 6.553500e+04
  %87 = fpext float %86 to double
  %88 = fadd double %87, 5.000000e-01
  %89 = fptoui double %88 to i64
  %90 = uitofp i64 %89 to float
  %91 = fmul float %90, 6.553500e+04
  %92 = fdiv float %91, %83
  %93 = fpext float %92 to double
  %94 = fadd double %93, 5.000000e-01
  %95 = fptoui double %94 to i16
  %96 = icmp eq i16 %82, %95
  br i1 %96, label %97, label %116

97:                                               ; preds = %78, %79
  br i1 %50, label %119, label %98

98:                                               ; preds = %97
  %99 = load ptr, ptr %42, align 8, !tbaa !85
  %100 = getelementptr inbounds %struct._PixelPacket, ptr %99, i64 %52
  %101 = load i16, ptr %100, align 2, !tbaa !63
  %102 = uitofp i64 %59 to float
  %103 = uitofp i16 %101 to float
  %104 = fmul float %102, %103
  %105 = fdiv float %104, 6.553500e+04
  %106 = fpext float %105 to double
  %107 = fadd double %106, 5.000000e-01
  %108 = fptoui double %107 to i64
  %109 = uitofp i64 %108 to float
  %110 = fmul float %109, 6.553500e+04
  %111 = fdiv float %110, %102
  %112 = fpext float %111 to double
  %113 = fadd double %112, 5.000000e-01
  %114 = fptoui double %113 to i16
  %115 = icmp eq i16 %101, %114
  br i1 %115, label %119, label %116

116:                                              ; preds = %79, %60, %98
  %117 = add i64 %56, 1
  store i64 %117, ptr %14, align 8, !tbaa !73
  %118 = icmp eq i64 %117, 16
  br i1 %118, label %119, label %55

119:                                              ; preds = %116, %97, %98, %51
  %120 = add nuw nsw i64 %52, 1
  %121 = load i64, ptr %38, align 8, !tbaa !84
  %122 = icmp slt i64 %120, %121
  br i1 %122, label %51, label %123, !llvm.loop !86

123:                                              ; preds = %119, %37
  %124 = load i64, ptr %14, align 8, !tbaa !73
  %125 = icmp sgt i64 %13, 1
  br i1 %125, label %126, label %298

126:                                              ; preds = %123, %126
  %127 = phi i64 [ %132, %126 ], [ 1, %123 ]
  %128 = phi i64 [ %131, %126 ], [ %124, %123 ]
  %129 = getelementptr inbounds i64, ptr %14, i64 %127
  %130 = load i64, ptr %129, align 8, !tbaa !73
  %131 = tail call i64 @llvm.umax.i64(i64 %128, i64 %130)
  %132 = add nuw nsw i64 %127, 1
  %133 = icmp eq i64 %132, %13
  br i1 %133, label %298, label %126, !llvm.loop !87

134:                                              ; preds = %33, %30
  %135 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %2) #11
  %136 = tail call dereferenceable_or_null(524288) ptr @AcquireQuantumMemory(i64 noundef 65536, i64 noundef 8) #13
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %145

138:                                              ; preds = %134
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #11
  call void @GetExceptionInfo(ptr noundef nonnull %5) #11
  %139 = tail call ptr @__errno_location() #14
  %140 = load i32, ptr %139, align 4, !tbaa !71
  %141 = call ptr @GetExceptionMessage(i32 noundef %140) #11
  %142 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 380, i32 noundef 700, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, ptr noundef %141) #11
  %143 = call ptr @DestroyString(ptr noundef %141) #11
  call void @CatchException(ptr noundef nonnull %5) #11
  %144 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %5) #11
  call void @MagickCoreTerminus() #11
  call void @_exit(i32 noundef 1) #15
  unreachable

145:                                              ; preds = %134, %189
  %146 = phi i64 [ %193, %189 ], [ 0, %134 ]
  %147 = trunc i64 %146 to i16
  %148 = uitofp i16 %147 to float
  br label %167

149:                                              ; preds = %189
  %150 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %151 = load i64, ptr %150, align 8, !tbaa !55
  %152 = icmp sgt i64 %151, 0
  br i1 %152, label %153, label %283

153:                                              ; preds = %149
  %154 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %155 = and i32 %1, 1
  %156 = icmp eq i32 %155, 0
  %157 = and i32 %1, 2
  %158 = icmp eq i32 %157, 0
  %159 = and i32 %1, 4
  %160 = icmp eq i32 %159, 0
  %161 = and i32 %1, 8
  %162 = icmp eq i32 %161, 0
  %163 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %164 = and i32 %1, 32
  %165 = icmp eq i32 %164, 0
  %166 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  br label %195

167:                                              ; preds = %145, %186
  %168 = phi i64 [ 1, %145 ], [ %187, %186 ]
  %169 = add nsw i64 %168, -1
  %170 = shl i64 2, %169
  %171 = add i64 %170, -1
  %172 = uitofp i64 %171 to float
  %173 = fmul float %148, %172
  %174 = fdiv float %173, 6.553500e+04
  %175 = fpext float %174 to double
  %176 = fadd double %175, 5.000000e-01
  %177 = fptoui double %176 to i64
  %178 = uitofp i64 %177 to float
  %179 = fmul float %178, 6.553500e+04
  %180 = fdiv float %179, %172
  %181 = fpext float %180 to double
  %182 = fadd double %181, 5.000000e-01
  %183 = fptoui double %182 to i16
  %184 = zext i16 %183 to i64
  %185 = icmp eq i64 %146, %184
  br i1 %185, label %189, label %186

186:                                              ; preds = %167
  %187 = add nuw nsw i64 %168, 1
  %188 = icmp eq i64 %187, 16
  br i1 %188, label %189, label %167, !llvm.loop !88

189:                                              ; preds = %167, %186
  %190 = phi i64 [ %168, %167 ], [ 16, %186 ]
  %191 = and i64 %190, 4294967295
  %192 = getelementptr inbounds i64, ptr %136, i64 %146
  store i64 %191, ptr %192, align 8, !tbaa !73
  %193 = add nuw nsw i64 %146, 1
  %194 = icmp eq i64 %193, 65536
  br i1 %194, label %149, label %145, !llvm.loop !89

195:                                              ; preds = %153, %278
  %196 = phi i32 [ 1, %153 ], [ %279, %278 ]
  %197 = phi i64 [ 0, %153 ], [ %280, %278 ]
  %198 = icmp eq i32 %196, 0
  br i1 %198, label %278, label %199

199:                                              ; preds = %195
  %200 = load i64, ptr %154, align 8, !tbaa !53
  %201 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %135, i64 noundef 0, i64 noundef %197, i64 noundef %200, i64 noundef 1, ptr noundef %2) #12
  %202 = icmp eq ptr %201, null
  br i1 %202, label %278, label %203

203:                                              ; preds = %199
  %204 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %135) #11
  %205 = load i64, ptr %154, align 8, !tbaa !53
  %206 = icmp sgt i64 %205, 0
  br i1 %206, label %207, label %274

207:                                              ; preds = %203
  %208 = icmp eq ptr %204, null
  br label %209

209:                                              ; preds = %207, %269
  %210 = phi i64 [ 0, %207 ], [ %271, %269 ]
  %211 = phi ptr [ %201, %207 ], [ %270, %269 ]
  br i1 %156, label %221, label %212

212:                                              ; preds = %209
  %213 = getelementptr inbounds %struct._PixelPacket, ptr %211, i64 0, i32 2
  %214 = load i16, ptr %213, align 2, !tbaa !57
  %215 = zext i16 %214 to i64
  %216 = getelementptr inbounds i64, ptr %136, i64 %215
  %217 = load i64, ptr %216, align 8, !tbaa !73
  %218 = load i64, ptr %14, align 8, !tbaa !73
  %219 = icmp ugt i64 %217, %218
  br i1 %219, label %220, label %221

220:                                              ; preds = %212
  store i64 %217, ptr %14, align 8, !tbaa !73
  br label %221

221:                                              ; preds = %212, %220, %209
  br i1 %158, label %231, label %222

222:                                              ; preds = %221
  %223 = getelementptr inbounds %struct._PixelPacket, ptr %211, i64 0, i32 1
  %224 = load i16, ptr %223, align 2, !tbaa !61
  %225 = zext i16 %224 to i64
  %226 = getelementptr inbounds i64, ptr %136, i64 %225
  %227 = load i64, ptr %226, align 8, !tbaa !73
  %228 = load i64, ptr %14, align 8, !tbaa !73
  %229 = icmp ugt i64 %227, %228
  br i1 %229, label %230, label %231

230:                                              ; preds = %222
  store i64 %227, ptr %14, align 8, !tbaa !73
  br label %231

231:                                              ; preds = %222, %230, %221
  br i1 %160, label %240, label %232

232:                                              ; preds = %231
  %233 = load i16, ptr %211, align 2, !tbaa !63
  %234 = zext i16 %233 to i64
  %235 = getelementptr inbounds i64, ptr %136, i64 %234
  %236 = load i64, ptr %235, align 8, !tbaa !73
  %237 = load i64, ptr %14, align 8, !tbaa !73
  %238 = icmp ugt i64 %236, %237
  br i1 %238, label %239, label %240

239:                                              ; preds = %232
  store i64 %236, ptr %14, align 8, !tbaa !73
  br label %240

240:                                              ; preds = %232, %239, %231
  br i1 %162, label %253, label %241

241:                                              ; preds = %240
  %242 = load i32, ptr %163, align 8, !tbaa !83
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %253, label %244

244:                                              ; preds = %241
  %245 = getelementptr inbounds %struct._PixelPacket, ptr %211, i64 0, i32 3
  %246 = load i16, ptr %245, align 2, !tbaa !65
  %247 = zext i16 %246 to i64
  %248 = getelementptr inbounds i64, ptr %136, i64 %247
  %249 = load i64, ptr %248, align 8, !tbaa !73
  %250 = load i64, ptr %14, align 8, !tbaa !73
  %251 = icmp ugt i64 %249, %250
  br i1 %251, label %252, label %253

252:                                              ; preds = %244
  store i64 %249, ptr %14, align 8, !tbaa !73
  br label %253

253:                                              ; preds = %244, %252, %241, %240
  br i1 %165, label %269, label %254

254:                                              ; preds = %253
  %255 = load i32, ptr %166, align 4, !tbaa !67
  %256 = icmp eq i32 %255, 12
  br i1 %256, label %257, label %269

257:                                              ; preds = %254
  br i1 %208, label %261, label %258

258:                                              ; preds = %257
  %259 = getelementptr inbounds i16, ptr %204, i64 %210
  %260 = load i16, ptr %259, align 2, !tbaa !68
  br label %261

261:                                              ; preds = %257, %258
  %262 = phi i16 [ %260, %258 ], [ 0, %257 ]
  %263 = zext i16 %262 to i64
  %264 = getelementptr inbounds i64, ptr %136, i64 %263
  %265 = load i64, ptr %264, align 8, !tbaa !73
  %266 = load i64, ptr %14, align 8, !tbaa !73
  %267 = icmp ugt i64 %265, %266
  br i1 %267, label %268, label %269

268:                                              ; preds = %261
  store i64 %265, ptr %14, align 8, !tbaa !73
  br label %269

269:                                              ; preds = %261, %268, %254, %253
  %270 = getelementptr inbounds %struct._PixelPacket, ptr %211, i64 1
  %271 = add nuw nsw i64 %210, 1
  %272 = load i64, ptr %154, align 8, !tbaa !53
  %273 = icmp slt i64 %271, %272
  br i1 %273, label %209, label %274, !llvm.loop !90

274:                                              ; preds = %269, %203
  %275 = load i64, ptr %14, align 8, !tbaa !73
  %276 = icmp ne i64 %275, 16
  %277 = zext i1 %276 to i32
  br label %278

278:                                              ; preds = %199, %195, %274
  %279 = phi i32 [ %277, %274 ], [ 0, %195 ], [ 1, %199 ]
  %280 = add nuw nsw i64 %197, 1
  %281 = load i64, ptr %150, align 8, !tbaa !55
  %282 = icmp slt i64 %280, %281
  br i1 %282, label %195, label %283, !llvm.loop !91

283:                                              ; preds = %278, %149
  %284 = tail call ptr @DestroyCacheView(ptr noundef %135) #11
  %285 = load i64, ptr %14, align 8, !tbaa !73
  %286 = icmp sgt i64 %13, 1
  br i1 %286, label %287, label %295

287:                                              ; preds = %283, %287
  %288 = phi i64 [ %293, %287 ], [ 1, %283 ]
  %289 = phi i64 [ %292, %287 ], [ %285, %283 ]
  %290 = getelementptr inbounds i64, ptr %14, i64 %288
  %291 = load i64, ptr %290, align 8, !tbaa !73
  %292 = tail call i64 @llvm.umax.i64(i64 %289, i64 %291)
  %293 = add nuw nsw i64 %288, 1
  %294 = icmp eq i64 %293, %13
  br i1 %294, label %295, label %287, !llvm.loop !92

295:                                              ; preds = %287, %283
  %296 = phi i64 [ %285, %283 ], [ %292, %287 ]
  %297 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %136) #11
  br label %298

298:                                              ; preds = %126, %123, %295
  %299 = phi i64 [ %296, %295 ], [ %124, %123 ], [ %131, %126 ]
  %300 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %14) #11
  ret i64 %299
}

declare i64 @GetMagickResourceLimit(i32 noundef) local_unnamed_addr #2

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

declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @GetImageQuantumDepth(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 9
  %4 = load i64, ptr %3, align 8, !tbaa !93
  %5 = icmp ult i64 %4, 9
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = icmp ult i64 %4, 17
  br i1 %7, label %12, label %8

8:                                                ; preds = %6
  %9 = icmp ult i64 %4, 33
  br i1 %9, label %12, label %10

10:                                               ; preds = %8
  %11 = tail call i64 @llvm.umax.i64(i64 %4, i64 64)
  br label %12

12:                                               ; preds = %8, %6, %2, %10
  %13 = phi i64 [ %11, %10 ], [ 8, %2 ], [ 16, %6 ], [ 32, %8 ]
  %14 = icmp eq i32 %1, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %12
  %16 = uitofp i64 %13 to double
  %17 = fcmp olt double %16, 1.600000e+01
  %18 = select i1 %17, double %16, double 1.600000e+01
  %19 = fptoui double %18 to i64
  br label %20

20:                                               ; preds = %15, %12
  %21 = phi i64 [ %19, %15 ], [ %13, %12 ]
  ret i64 %21
}

; Function Attrs: nounwind uwtable
define dso_local i32 @GetImageType(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 643, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !67
  %12 = icmp eq i32 %11, 12
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %15 = load i32, ptr %14, align 8, !tbaa !83
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, i32 8, i32 9
  br label %39

18:                                               ; preds = %9
  %19 = tail call i32 @IsMonochromeImage(ptr noundef %0, ptr noundef %1)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %18
  %22 = tail call i32 @IsGrayImage(ptr noundef %0, ptr noundef %1), !range !94
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %26 = load i32, ptr %25, align 8, !tbaa !83
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %27, i32 2, i32 3
  br label %39

29:                                               ; preds = %21
  %30 = tail call i32 @IsPaletteImage(ptr noundef %0, ptr noundef %1) #11
  %31 = icmp eq i32 %30, 0
  %32 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %33 = load i32, ptr %32, align 8, !tbaa !83
  %34 = icmp eq i32 %33, 0
  br i1 %31, label %37, label %35

35:                                               ; preds = %29
  %36 = select i1 %34, i32 4, i32 5
  br label %39

37:                                               ; preds = %29
  %38 = select i1 %34, i32 6, i32 7
  br label %39

39:                                               ; preds = %37, %35, %24, %18, %13
  %40 = phi i32 [ %17, %13 ], [ 1, %18 ], [ %28, %24 ], [ %36, %35 ], [ %38, %37 ]
  ret i32 %40
}

; Function Attrs: nounwind uwtable
define dso_local i32 @IsMonochromeImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 807, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  %11 = load i32, ptr %10, align 8, !tbaa !95
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %59, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !67
  switch i32 %15, label %59 [
    i32 19, label %16
    i32 17, label %16
    i32 2, label %16
    i32 29, label %16
    i32 13, label %16
    i32 3, label %16
    i32 1, label %16
  ]

16:                                               ; preds = %13, %13, %13, %13, %13, %13, %13
  %17 = tail call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %1) #11
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %19 = load i64, ptr %18, align 8, !tbaa !55
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %53

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  br label %23

23:                                               ; preds = %21, %49
  %24 = phi i64 [ 0, %21 ], [ %50, %49 ]
  %25 = load i64, ptr %22, align 8, !tbaa !53
  %26 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %17, i64 noundef 0, i64 noundef %24, i64 noundef %25, i64 noundef 1, ptr noundef %1) #12
  %27 = icmp eq ptr %26, null
  br i1 %27, label %53, label %28

28:                                               ; preds = %23
  %29 = load i64, ptr %22, align 8, !tbaa !53
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %28, %45
  %32 = phi ptr [ %46, %45 ], [ %26, %28 ]
  %33 = phi i64 [ %47, %45 ], [ 0, %28 ]
  %34 = getelementptr inbounds %struct._PixelPacket, ptr %32, i64 0, i32 2
  %35 = load i16, ptr %34, align 2, !tbaa !57
  switch i16 %35, label %43 [
    i16 0, label %36
    i16 -1, label %36
  ]

36:                                               ; preds = %31, %31
  %37 = getelementptr inbounds %struct._PixelPacket, ptr %32, i64 0, i32 1
  %38 = load i16, ptr %37, align 2, !tbaa !61
  %39 = icmp eq i16 %35, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i16, ptr %32, align 2, !tbaa !63
  %42 = icmp eq i16 %38, %41
  br i1 %42, label %45, label %43

43:                                               ; preds = %40, %36, %31
  %44 = tail call ptr @DestroyCacheView(ptr noundef %17) #11
  br label %59

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct._PixelPacket, ptr %32, i64 1
  %47 = add nuw nsw i64 %33, 1
  %48 = icmp eq i64 %47, %29
  br i1 %48, label %49, label %31, !llvm.loop !96

49:                                               ; preds = %45, %28
  %50 = add nuw nsw i64 %24, 1
  %51 = load i64, ptr %18, align 8, !tbaa !55
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %23, label %53, !llvm.loop !97

53:                                               ; preds = %23, %49, %16
  %54 = tail call ptr @DestroyCacheView(ptr noundef %17) #11
  store i32 2, ptr %14, align 4, !tbaa !67
  %55 = tail call i32 @SyncImagePixelCache(ptr noundef %0, ptr noundef %1) #11
  %56 = tail call i32 @SyncImagePixelCache(ptr noundef %0, ptr noundef %1) #11
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  store i32 1, ptr %10, align 8, !tbaa !95
  br label %59

59:                                               ; preds = %13, %53, %9, %58, %43
  %60 = phi i32 [ 0, %43 ], [ 1, %58 ], [ 1, %9 ], [ %55, %53 ], [ 0, %13 ]
  ret i32 %60
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @IsGrayImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 716, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  %11 = load i32, ptr %10, align 8, !tbaa !95
  %12 = add i32 %11, -1
  %13 = icmp ult i32 %12, 3
  br i1 %13, label %78, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !67
  switch i32 %16, label %78 [
    i32 19, label %17
    i32 17, label %17
    i32 2, label %17
    i32 29, label %17
    i32 13, label %17
    i32 3, label %17
    i32 1, label %17
  ]

17:                                               ; preds = %14, %14, %14, %14, %14, %14, %14
  %18 = tail call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %1) #11
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %21 = load i64, ptr %20, align 8, !tbaa !55
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %27, label %64

23:                                               ; preds = %61
  %24 = add nuw nsw i64 %28, 1
  %25 = load i64, ptr %20, align 8, !tbaa !55
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %64, !llvm.loop !98

27:                                               ; preds = %17, %23
  %28 = phi i64 [ %24, %23 ], [ 0, %17 ]
  %29 = phi i32 [ %62, %23 ], [ 1, %17 ]
  %30 = load i64, ptr %19, align 8, !tbaa !53
  %31 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %18, i64 noundef 0, i64 noundef %28, i64 noundef %30, i64 noundef 1, ptr noundef %1) #12
  %32 = icmp eq ptr %31, null
  br i1 %32, label %64, label %33

33:                                               ; preds = %27
  %34 = load i64, ptr %19, align 8, !tbaa !53
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %61

36:                                               ; preds = %33, %56
  %37 = phi i64 [ %59, %56 ], [ 0, %33 ]
  %38 = phi ptr [ %58, %56 ], [ %31, %33 ]
  %39 = phi i32 [ %57, %56 ], [ %29, %33 ]
  %40 = getelementptr inbounds %struct._PixelPacket, ptr %38, i64 0, i32 2
  %41 = load i16, ptr %40, align 2, !tbaa !57
  %42 = getelementptr inbounds %struct._PixelPacket, ptr %38, i64 0, i32 1
  %43 = load i16, ptr %42, align 2, !tbaa !61
  %44 = icmp eq i16 %41, %43
  br i1 %44, label %45, label %61

45:                                               ; preds = %36
  %46 = load i16, ptr %38, align 2, !tbaa !63
  %47 = icmp eq i16 %43, %46
  br i1 %47, label %48, label %61

48:                                               ; preds = %45
  %49 = icmp eq i32 %39, 1
  br i1 %49, label %50, label %56

50:                                               ; preds = %48
  switch i16 %41, label %55 [
    i16 0, label %51
    i16 -1, label %51
  ]

51:                                               ; preds = %50, %50
  br i1 %44, label %52, label %55

52:                                               ; preds = %51
  %53 = load i16, ptr %38, align 2, !tbaa !63
  %54 = icmp eq i16 %43, %53
  br i1 %54, label %56, label %55

55:                                               ; preds = %52, %51, %50
  br label %56

56:                                               ; preds = %55, %52, %48
  %57 = phi i32 [ 2, %48 ], [ 2, %55 ], [ 1, %52 ]
  %58 = getelementptr inbounds %struct._PixelPacket, ptr %38, i64 1
  %59 = add nuw nsw i64 %37, 1
  %60 = icmp eq i64 %59, %34
  br i1 %60, label %61, label %36, !llvm.loop !99

61:                                               ; preds = %56, %45, %36, %33
  %62 = phi i32 [ %29, %33 ], [ %57, %56 ], [ 0, %45 ], [ 0, %36 ]
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %23

64:                                               ; preds = %23, %27, %61, %17
  %65 = phi i32 [ 1, %17 ], [ %62, %23 ], [ %29, %27 ], [ 0, %61 ]
  %66 = tail call ptr @DestroyCacheView(ptr noundef %18) #11
  %67 = icmp eq i32 %65, 0
  br i1 %67, label %78, label %68

68:                                               ; preds = %64
  store i32 2, ptr %15, align 4, !tbaa !67
  %69 = tail call i32 @SyncImagePixelCache(ptr noundef %0, ptr noundef %1) #11
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %68
  store i32 %65, ptr %10, align 8, !tbaa !95
  %72 = icmp eq i32 %65, 2
  br i1 %72, label %73, label %78

73:                                               ; preds = %71
  %74 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %75 = load i32, ptr %74, align 8, !tbaa !83
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %73
  store i32 3, ptr %10, align 8, !tbaa !95
  br label %78

78:                                               ; preds = %14, %9, %71, %73, %77, %68, %64
  %79 = phi i32 [ 1, %9 ], [ 0, %64 ], [ 0, %68 ], [ 1, %77 ], [ 1, %73 ], [ 1, %71 ], [ 0, %14 ]
  ret i32 %79
}

declare i32 @IsPaletteImage(ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden i32 @SyncImagePixelCache(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @IsOpaqueImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 890, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %11 = load i32, ptr %10, align 8, !tbaa !83
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %56, label %13

13:                                               ; preds = %9
  %14 = tail call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %1) #11
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %17 = load i64, ptr %16, align 8, !tbaa !55
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %49

19:                                               ; preds = %13, %45
  %20 = phi i64 [ %46, %45 ], [ 0, %13 ]
  %21 = load i64, ptr %15, align 8, !tbaa !53
  %22 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %14, i64 noundef 0, i64 noundef %20, i64 noundef %21, i64 noundef 1, ptr noundef %1) #12
  %23 = icmp eq ptr %22, null
  br i1 %23, label %49, label %24

24:                                               ; preds = %19
  %25 = load i64, ptr %15, align 8, !tbaa !53
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct._PixelPacket, ptr %22, i64 0, i32 3
  %29 = load i16, ptr %28, align 2, !tbaa !65
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %36, label %43

31:                                               ; preds = %36
  %32 = getelementptr inbounds %struct._PixelPacket, ptr %37, i64 1
  %33 = getelementptr inbounds %struct._PixelPacket, ptr %37, i64 1, i32 3
  %34 = load i16, ptr %33, align 2, !tbaa !65
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %36, label %41, !llvm.loop !100

36:                                               ; preds = %27, %31
  %37 = phi ptr [ %32, %31 ], [ %22, %27 ]
  %38 = phi i64 [ %39, %31 ], [ 0, %27 ]
  %39 = add nuw nsw i64 %38, 1
  %40 = icmp eq i64 %39, %25
  br i1 %40, label %45, label %31, !llvm.loop !100

41:                                               ; preds = %31
  %42 = icmp slt i64 %39, %25
  br label %43

43:                                               ; preds = %41, %27
  %44 = phi i1 [ %42, %41 ], [ %26, %27 ]
  br i1 %44, label %49, label %45

45:                                               ; preds = %36, %24, %43
  %46 = add nuw nsw i64 %20, 1
  %47 = load i64, ptr %16, align 8, !tbaa !55
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %19, label %49, !llvm.loop !101

49:                                               ; preds = %45, %19, %43, %13
  %50 = phi i64 [ 0, %13 ], [ %46, %45 ], [ %20, %19 ], [ %20, %43 ]
  %51 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %52 = tail call ptr @DestroyCacheView(ptr noundef %14) #11
  %53 = load i64, ptr %51, align 8, !tbaa !55
  %54 = icmp sge i64 %50, %53
  %55 = zext i1 %54 to i32
  br label %56

56:                                               ; preds = %9, %49
  %57 = phi i32 [ %55, %49 ], [ 1, %9 ]
  ret i32 %57
}

; Function Attrs: nounwind uwtable
define dso_local i32 @SetImageDepth(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @SetImageChannelDepth(ptr noundef %0, i32 noundef 47, i64 noundef %1), !range !94
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define dso_local i32 @SetImageChannelDepth(ptr noundef %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct._ExceptionInfo, align 8
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 980, ptr noundef nonnull @.str.6) #11
  br label %10

10:                                               ; preds = %8, %3
  %11 = icmp ugt i64 %2, 15
  br i1 %11, label %219, label %12

12:                                               ; preds = %10
  %13 = add nsw i64 %2, -1
  %14 = shl i64 2, %13
  %15 = add i64 %14, -1
  %16 = load i32, ptr %0, align 8, !tbaa !82
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %111

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %20 = load i64, ptr %19, align 8, !tbaa !84
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %111

22:                                               ; preds = %18
  %23 = and i32 %1, 1
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %26 = uitofp i64 %15 to float
  %27 = and i32 %1, 2
  %28 = icmp eq i32 %27, 0
  %29 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %30 = uitofp i64 %15 to float
  %31 = and i32 %1, 4
  %32 = icmp eq i32 %31, 0
  %33 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %34 = uitofp i64 %15 to float
  %35 = and i32 %1, 8
  %36 = icmp eq i32 %35, 0
  %37 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %38 = uitofp i64 %15 to float
  br label %39

39:                                               ; preds = %22, %108
  %40 = phi i64 [ 0, %22 ], [ %109, %108 ]
  br i1 %24, label %57, label %41

41:                                               ; preds = %39
  %42 = load ptr, ptr %25, align 8, !tbaa !85
  %43 = getelementptr inbounds %struct._PixelPacket, ptr %42, i64 %40, i32 2
  %44 = load i16, ptr %43, align 2, !tbaa !57
  %45 = uitofp i16 %44 to float
  %46 = fmul float %26, %45
  %47 = fdiv float %46, 6.553500e+04
  %48 = fpext float %47 to double
  %49 = fadd double %48, 5.000000e-01
  %50 = fptoui double %49 to i64
  %51 = uitofp i64 %50 to float
  %52 = fmul float %51, 6.553500e+04
  %53 = fdiv float %52, %26
  %54 = fpext float %53 to double
  %55 = fadd double %54, 5.000000e-01
  %56 = fptoui double %55 to i16
  store i16 %56, ptr %43, align 2, !tbaa !57
  br label %57

57:                                               ; preds = %41, %39
  br i1 %28, label %74, label %58

58:                                               ; preds = %57
  %59 = load ptr, ptr %29, align 8, !tbaa !85
  %60 = getelementptr inbounds %struct._PixelPacket, ptr %59, i64 %40, i32 1
  %61 = load i16, ptr %60, align 2, !tbaa !61
  %62 = uitofp i16 %61 to float
  %63 = fmul float %30, %62
  %64 = fdiv float %63, 6.553500e+04
  %65 = fpext float %64 to double
  %66 = fadd double %65, 5.000000e-01
  %67 = fptoui double %66 to i64
  %68 = uitofp i64 %67 to float
  %69 = fmul float %68, 6.553500e+04
  %70 = fdiv float %69, %30
  %71 = fpext float %70 to double
  %72 = fadd double %71, 5.000000e-01
  %73 = fptoui double %72 to i16
  store i16 %73, ptr %60, align 2, !tbaa !61
  br label %74

74:                                               ; preds = %58, %57
  br i1 %32, label %91, label %75

75:                                               ; preds = %74
  %76 = load ptr, ptr %33, align 8, !tbaa !85
  %77 = getelementptr inbounds %struct._PixelPacket, ptr %76, i64 %40
  %78 = load i16, ptr %77, align 2, !tbaa !63
  %79 = uitofp i16 %78 to float
  %80 = fmul float %34, %79
  %81 = fdiv float %80, 6.553500e+04
  %82 = fpext float %81 to double
  %83 = fadd double %82, 5.000000e-01
  %84 = fptoui double %83 to i64
  %85 = uitofp i64 %84 to float
  %86 = fmul float %85, 6.553500e+04
  %87 = fdiv float %86, %34
  %88 = fpext float %87 to double
  %89 = fadd double %88, 5.000000e-01
  %90 = fptoui double %89 to i16
  store i16 %90, ptr %77, align 2, !tbaa !63
  br label %91

91:                                               ; preds = %75, %74
  br i1 %36, label %108, label %92

92:                                               ; preds = %91
  %93 = load ptr, ptr %37, align 8, !tbaa !85
  %94 = getelementptr inbounds %struct._PixelPacket, ptr %93, i64 %40, i32 3
  %95 = load i16, ptr %94, align 2, !tbaa !65
  %96 = uitofp i16 %95 to float
  %97 = fmul float %38, %96
  %98 = fdiv float %97, 6.553500e+04
  %99 = fpext float %98 to double
  %100 = fadd double %99, 5.000000e-01
  %101 = fptoui double %100 to i64
  %102 = uitofp i64 %101 to float
  %103 = fmul float %102, 6.553500e+04
  %104 = fdiv float %103, %38
  %105 = fpext float %104 to double
  %106 = fadd double %105, 5.000000e-01
  %107 = fptoui double %106 to i16
  store i16 %107, ptr %94, align 2, !tbaa !65
  br label %108

108:                                              ; preds = %91, %92
  %109 = add nuw nsw i64 %40, 1
  %110 = icmp eq i64 %109, %20
  br i1 %110, label %111, label %39, !llvm.loop !102

111:                                              ; preds = %108, %18, %12
  %112 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %113 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %112) #11
  %114 = tail call dereferenceable_or_null(131072) ptr @AcquireQuantumMemory(i64 noundef 65536, i64 noundef 2) #13
  %115 = icmp eq ptr %114, null
  br i1 %115, label %118, label %116

116:                                              ; preds = %111
  %117 = uitofp i64 %15 to float
  br label %140

118:                                              ; preds = %111
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #11
  call void @GetExceptionInfo(ptr noundef nonnull %4) #11
  %119 = tail call ptr @__errno_location() #14
  %120 = load i32, ptr %119, align 4, !tbaa !71
  %121 = call ptr @GetExceptionMessage(i32 noundef %120) #11
  %122 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1032, i32 noundef 700, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, ptr noundef %121) #11
  %123 = call ptr @DestroyString(ptr noundef %121) #11
  call void @CatchException(ptr noundef nonnull %4) #11
  %124 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %4) #11
  call void @MagickCoreTerminus() #11
  call void @_exit(i32 noundef 1) #15
  unreachable

125:                                              ; preds = %140
  %126 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %127 = load i64, ptr %126, align 8, !tbaa !55
  %128 = icmp sgt i64 %127, 0
  br i1 %128, label %129, label %214

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %131 = and i32 %1, 1
  %132 = icmp eq i32 %131, 0
  %133 = and i32 %1, 2
  %134 = icmp eq i32 %133, 0
  %135 = and i32 %1, 4
  %136 = icmp eq i32 %135, 0
  %137 = and i32 %1, 8
  %138 = icmp eq i32 %137, 0
  %139 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  br label %158

140:                                              ; preds = %116, %140
  %141 = phi i64 [ 0, %116 ], [ %156, %140 ]
  %142 = trunc i64 %141 to i16
  %143 = uitofp i16 %142 to float
  %144 = fmul float %117, %143
  %145 = fdiv float %144, 6.553500e+04
  %146 = fpext float %145 to double
  %147 = fadd double %146, 5.000000e-01
  %148 = fptoui double %147 to i64
  %149 = uitofp i64 %148 to float
  %150 = fmul float %149, 6.553500e+04
  %151 = fdiv float %150, %117
  %152 = fpext float %151 to double
  %153 = fadd double %152, 5.000000e-01
  %154 = fptoui double %153 to i16
  %155 = getelementptr inbounds i16, ptr %114, i64 %141
  store i16 %154, ptr %155, align 2, !tbaa !68
  %156 = add nuw nsw i64 %141, 1
  %157 = icmp eq i64 %156, 65536
  br i1 %157, label %125, label %140, !llvm.loop !103

158:                                              ; preds = %129, %209
  %159 = phi i64 [ 0, %129 ], [ %211, %209 ]
  %160 = phi i32 [ 1, %129 ], [ %210, %209 ]
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %209, label %162

162:                                              ; preds = %158
  %163 = load i64, ptr %130, align 8, !tbaa !53
  %164 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %113, i64 noundef 0, i64 noundef %159, i64 noundef %163, i64 noundef 1, ptr noundef nonnull %112) #12
  %165 = icmp eq ptr %164, null
  br i1 %165, label %209, label %166

166:                                              ; preds = %162
  %167 = load i64, ptr %130, align 8, !tbaa !53
  %168 = icmp sgt i64 %167, 0
  br i1 %168, label %169, label %205

169:                                              ; preds = %166, %201
  %170 = phi ptr [ %202, %201 ], [ %164, %166 ]
  %171 = phi i64 [ %203, %201 ], [ 0, %166 ]
  br i1 %132, label %178, label %172

172:                                              ; preds = %169
  %173 = getelementptr inbounds %struct._PixelPacket, ptr %170, i64 0, i32 2
  %174 = load i16, ptr %173, align 2, !tbaa !57
  %175 = zext i16 %174 to i64
  %176 = getelementptr inbounds i16, ptr %114, i64 %175
  %177 = load i16, ptr %176, align 2, !tbaa !68
  store i16 %177, ptr %173, align 2, !tbaa !57
  br label %178

178:                                              ; preds = %172, %169
  br i1 %134, label %185, label %179

179:                                              ; preds = %178
  %180 = getelementptr inbounds %struct._PixelPacket, ptr %170, i64 0, i32 1
  %181 = load i16, ptr %180, align 2, !tbaa !61
  %182 = zext i16 %181 to i64
  %183 = getelementptr inbounds i16, ptr %114, i64 %182
  %184 = load i16, ptr %183, align 2, !tbaa !68
  store i16 %184, ptr %180, align 2, !tbaa !61
  br label %185

185:                                              ; preds = %179, %178
  br i1 %136, label %191, label %186

186:                                              ; preds = %185
  %187 = load i16, ptr %170, align 2, !tbaa !63
  %188 = zext i16 %187 to i64
  %189 = getelementptr inbounds i16, ptr %114, i64 %188
  %190 = load i16, ptr %189, align 2, !tbaa !68
  store i16 %190, ptr %170, align 2, !tbaa !63
  br label %191

191:                                              ; preds = %186, %185
  br i1 %138, label %201, label %192

192:                                              ; preds = %191
  %193 = load i32, ptr %139, align 8, !tbaa !83
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %201, label %195

195:                                              ; preds = %192
  %196 = getelementptr inbounds %struct._PixelPacket, ptr %170, i64 0, i32 3
  %197 = load i16, ptr %196, align 2, !tbaa !65
  %198 = zext i16 %197 to i64
  %199 = getelementptr inbounds i16, ptr %114, i64 %198
  %200 = load i16, ptr %199, align 2, !tbaa !68
  store i16 %200, ptr %196, align 2, !tbaa !65
  br label %201

201:                                              ; preds = %195, %192, %191
  %202 = getelementptr inbounds %struct._PixelPacket, ptr %170, i64 1
  %203 = add nuw nsw i64 %171, 1
  %204 = icmp eq i64 %203, %167
  br i1 %204, label %205, label %169, !llvm.loop !104

205:                                              ; preds = %201, %166
  %206 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %113, ptr noundef nonnull %112) #12
  %207 = icmp ne i32 %206, 0
  %208 = zext i1 %207 to i32
  br label %209

209:                                              ; preds = %205, %162, %158
  %210 = phi i32 [ 0, %158 ], [ 0, %162 ], [ %208, %205 ]
  %211 = add nuw nsw i64 %159, 1
  %212 = load i64, ptr %126, align 8, !tbaa !55
  %213 = icmp slt i64 %211, %212
  br i1 %213, label %158, label %214, !llvm.loop !105

214:                                              ; preds = %209, %125
  %215 = phi i32 [ 1, %125 ], [ %210, %209 ]
  %216 = tail call ptr @DestroyCacheView(ptr noundef %113) #11
  %217 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %114) #11
  %218 = icmp eq i32 %215, 0
  br i1 %218, label %222, label %219

219:                                              ; preds = %214, %10
  %220 = phi i32 [ 1, %10 ], [ %215, %214 ]
  %221 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 9
  store i64 %2, ptr %221, align 8, !tbaa !93
  br label %222

222:                                              ; preds = %219, %214
  %223 = phi i32 [ %215, %214 ], [ %220, %219 ]
  ret i32 %223
}

declare ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: hot
declare ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: hot
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @SetImageType(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1178, ptr noundef nonnull @.str.6) #11
  br label %8

8:                                                ; preds = %6, %2
  %9 = tail call ptr @AcquireImageInfo() #11
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 78
  %11 = load i32, ptr %10, align 4, !tbaa !106
  %12 = getelementptr inbounds %struct._ImageInfo, ptr %9, i64 0, i32 27
  store i32 %11, ptr %12, align 8, !tbaa !107
  %13 = tail call ptr @GetImageArtifact(ptr noundef %0, ptr noundef nonnull @.str.7) #11
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %8
  %16 = tail call i32 @SetImageOption(ptr noundef %9, ptr noundef nonnull @.str.7, ptr noundef nonnull %13) #11
  br label %17

17:                                               ; preds = %15, %8
  switch i32 %1, label %179 [
    i32 1, label %18
    i32 2, label %37
    i32 3, label %46
    i32 4, label %59
    i32 11, label %79
    i32 5, label %95
    i32 6, label %111
    i32 7, label %125
    i32 8, label %143
    i32 9, label %159
  ]

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %20 = tail call i32 @IsGrayImage(ptr noundef %0, ptr noundef nonnull %19), !range !94
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = tail call i32 @TransformImageColorspace(ptr noundef %0, i32 noundef 2) #11
  br label %24

24:                                               ; preds = %22, %18
  %25 = phi i32 [ %23, %22 ], [ 1, %18 ]
  %26 = tail call i32 @NormalizeImage(ptr noundef %0) #11
  %27 = tail call i32 @IsMonochromeImage(ptr noundef %0, ptr noundef nonnull %19)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = tail call ptr @AcquireQuantizeInfo(ptr noundef %9) #11
  store i64 2, ptr %30, align 8, !tbaa !109
  %31 = getelementptr inbounds %struct._QuantizeInfo, ptr %30, i64 0, i32 3
  store i32 2, ptr %31, align 4, !tbaa !111
  %32 = tail call i32 @QuantizeImage(ptr noundef nonnull %30, ptr noundef %0) #11
  %33 = tail call ptr @DestroyQuantizeInfo(ptr noundef nonnull %30) #11
  br label %34

34:                                               ; preds = %29, %24
  %35 = phi i32 [ %32, %29 ], [ %25, %24 ]
  %36 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  store i32 0, ptr %36, align 8, !tbaa !83
  br label %179

37:                                               ; preds = %17
  %38 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %39 = tail call i32 @IsGrayImage(ptr noundef %0, ptr noundef nonnull %38), !range !94
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = tail call i32 @TransformImageColorspace(ptr noundef %0, i32 noundef 2) #11
  br label %43

43:                                               ; preds = %41, %37
  %44 = phi i32 [ %42, %41 ], [ 1, %37 ]
  %45 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  store i32 0, ptr %45, align 8, !tbaa !83
  br label %179

46:                                               ; preds = %17
  %47 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %48 = tail call i32 @IsGrayImage(ptr noundef %0, ptr noundef nonnull %47), !range !94
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = tail call i32 @TransformImageColorspace(ptr noundef %0, i32 noundef 2) #11
  br label %52

52:                                               ; preds = %50, %46
  %53 = phi i32 [ %51, %50 ], [ 1, %46 ]
  %54 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %55 = load i32, ptr %54, align 8, !tbaa !83
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %179

57:                                               ; preds = %52
  %58 = tail call i32 @SetImageAlphaChannel(ptr noundef %0, i32 noundef 6) #11
  br label %179

59:                                               ; preds = %17
  %60 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %61 = load i32, ptr %60, align 4, !tbaa !67
  switch i32 %61, label %62 [
    i32 29, label %64
    i32 13, label %64
    i32 3, label %64
    i32 1, label %64
    i32 19, label %64
    i32 17, label %64
    i32 2, label %64
  ]

62:                                               ; preds = %59
  %63 = tail call i32 @TransformImageColorspace(ptr noundef %0, i32 noundef 13) #11
  br label %64

64:                                               ; preds = %59, %59, %59, %59, %59, %59, %59, %62
  %65 = phi i32 [ %63, %62 ], [ 1, %59 ], [ 1, %59 ], [ 1, %59 ], [ 1, %59 ], [ 1, %59 ], [ 1, %59 ], [ 1, %59 ]
  %66 = load i32, ptr %0, align 8, !tbaa !82
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %70 = load i64, ptr %69, align 8, !tbaa !84
  %71 = icmp ugt i64 %70, 256
  br i1 %71, label %72, label %76

72:                                               ; preds = %68, %64
  %73 = tail call ptr @AcquireQuantizeInfo(ptr noundef %9) #11
  store i64 256, ptr %73, align 8, !tbaa !109
  %74 = tail call i32 @QuantizeImage(ptr noundef nonnull %73, ptr noundef nonnull %0) #11
  %75 = tail call ptr @DestroyQuantizeInfo(ptr noundef nonnull %73) #11
  br label %76

76:                                               ; preds = %72, %68
  %77 = phi i32 [ %74, %72 ], [ %65, %68 ]
  %78 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  store i32 0, ptr %78, align 8, !tbaa !83
  br label %179

79:                                               ; preds = %17
  %80 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %81 = load i32, ptr %80, align 4, !tbaa !67
  switch i32 %81, label %82 [
    i32 29, label %84
    i32 13, label %84
    i32 3, label %84
    i32 1, label %84
    i32 19, label %84
    i32 17, label %84
    i32 2, label %84
  ]

82:                                               ; preds = %79
  %83 = tail call i32 @TransformImageColorspace(ptr noundef %0, i32 noundef 13) #11
  br label %84

84:                                               ; preds = %79, %79, %79, %79, %79, %79, %79, %82
  %85 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %86 = load i32, ptr %85, align 8, !tbaa !83
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = tail call i32 @SetImageAlphaChannel(ptr noundef %0, i32 noundef 6) #11
  br label %90

90:                                               ; preds = %88, %84
  %91 = tail call i32 @BilevelImageChannel(ptr noundef %0, i32 noundef 8, double noundef 3.276750e+04) #11
  %92 = tail call ptr @AcquireQuantizeInfo(ptr noundef %9) #11
  %93 = tail call i32 @QuantizeImage(ptr noundef %92, ptr noundef %0) #11
  %94 = tail call ptr @DestroyQuantizeInfo(ptr noundef %92) #11
  br label %179

95:                                               ; preds = %17
  %96 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %97 = load i32, ptr %96, align 4, !tbaa !67
  switch i32 %97, label %98 [
    i32 29, label %100
    i32 13, label %100
    i32 3, label %100
    i32 1, label %100
    i32 19, label %100
    i32 17, label %100
    i32 2, label %100
  ]

98:                                               ; preds = %95
  %99 = tail call i32 @TransformImageColorspace(ptr noundef %0, i32 noundef 13) #11
  br label %100

100:                                              ; preds = %95, %95, %95, %95, %95, %95, %95, %98
  %101 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %102 = load i32, ptr %101, align 8, !tbaa !83
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = tail call i32 @SetImageAlphaChannel(ptr noundef %0, i32 noundef 6) #11
  br label %106

106:                                              ; preds = %104, %100
  %107 = tail call ptr @AcquireQuantizeInfo(ptr noundef %9) #11
  %108 = getelementptr inbounds %struct._QuantizeInfo, ptr %107, i64 0, i32 3
  store i32 3, ptr %108, align 4, !tbaa !111
  %109 = tail call i32 @QuantizeImage(ptr noundef %107, ptr noundef %0) #11
  %110 = tail call ptr @DestroyQuantizeInfo(ptr noundef %107) #11
  br label %179

111:                                              ; preds = %17
  %112 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %113 = load i32, ptr %112, align 4, !tbaa !67
  switch i32 %113, label %114 [
    i32 29, label %116
    i32 13, label %116
    i32 3, label %116
    i32 1, label %116
    i32 19, label %116
    i32 17, label %116
    i32 2, label %116
  ]

114:                                              ; preds = %111
  %115 = tail call i32 @TransformImageColorspace(ptr noundef %0, i32 noundef 13) #11
  br label %116

116:                                              ; preds = %111, %111, %111, %111, %111, %111, %111, %114
  %117 = phi i32 [ %115, %114 ], [ 1, %111 ], [ 1, %111 ], [ 1, %111 ], [ 1, %111 ], [ 1, %111 ], [ 1, %111 ], [ 1, %111 ]
  %118 = load i32, ptr %0, align 8, !tbaa !82
  %119 = icmp eq i32 %118, 1
  br i1 %119, label %122, label %120

120:                                              ; preds = %116
  %121 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %0, i32 noundef 1) #11
  br label %122

122:                                              ; preds = %120, %116
  %123 = phi i32 [ %121, %120 ], [ %117, %116 ]
  %124 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  store i32 0, ptr %124, align 8, !tbaa !83
  br label %179

125:                                              ; preds = %17
  %126 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %127 = load i32, ptr %126, align 4, !tbaa !67
  switch i32 %127, label %128 [
    i32 29, label %130
    i32 13, label %130
    i32 3, label %130
    i32 1, label %130
    i32 19, label %130
    i32 17, label %130
    i32 2, label %130
  ]

128:                                              ; preds = %125
  %129 = tail call i32 @TransformImageColorspace(ptr noundef %0, i32 noundef 13) #11
  br label %130

130:                                              ; preds = %125, %125, %125, %125, %125, %125, %125, %128
  %131 = phi i32 [ %129, %128 ], [ 1, %125 ], [ 1, %125 ], [ 1, %125 ], [ 1, %125 ], [ 1, %125 ], [ 1, %125 ], [ 1, %125 ]
  %132 = load i32, ptr %0, align 8, !tbaa !82
  %133 = icmp eq i32 %132, 1
  br i1 %133, label %136, label %134

134:                                              ; preds = %130
  %135 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %0, i32 noundef 1) #11
  br label %136

136:                                              ; preds = %134, %130
  %137 = phi i32 [ %135, %134 ], [ %131, %130 ]
  %138 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %139 = load i32, ptr %138, align 8, !tbaa !83
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %179

141:                                              ; preds = %136
  %142 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %0, i32 noundef 6) #11
  br label %179

143:                                              ; preds = %17
  %144 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %145 = load i32, ptr %144, align 4, !tbaa !67
  switch i32 %145, label %146 [
    i32 12, label %150
    i32 29, label %148
    i32 13, label %148
    i32 3, label %148
    i32 1, label %148
    i32 19, label %148
    i32 17, label %148
    i32 2, label %148
  ]

146:                                              ; preds = %143
  %147 = tail call i32 @TransformImageColorspace(ptr noundef %0, i32 noundef 13) #11
  br label %148

148:                                              ; preds = %143, %143, %143, %143, %143, %143, %143, %146
  %149 = tail call i32 @TransformImageColorspace(ptr noundef %0, i32 noundef 12) #11
  br label %150

150:                                              ; preds = %143, %148
  %151 = phi i32 [ %149, %148 ], [ 1, %143 ]
  %152 = load i32, ptr %0, align 8, !tbaa !82
  %153 = icmp eq i32 %152, 1
  br i1 %153, label %156, label %154

154:                                              ; preds = %150
  %155 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %0, i32 noundef 1) #11
  br label %156

156:                                              ; preds = %154, %150
  %157 = phi i32 [ %155, %154 ], [ %151, %150 ]
  %158 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  store i32 0, ptr %158, align 8, !tbaa !83
  br label %179

159:                                              ; preds = %17
  %160 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %161 = load i32, ptr %160, align 4, !tbaa !67
  switch i32 %161, label %162 [
    i32 12, label %166
    i32 29, label %164
    i32 13, label %164
    i32 3, label %164
    i32 1, label %164
    i32 19, label %164
    i32 17, label %164
    i32 2, label %164
  ]

162:                                              ; preds = %159
  %163 = tail call i32 @TransformImageColorspace(ptr noundef %0, i32 noundef 13) #11
  br label %164

164:                                              ; preds = %159, %159, %159, %159, %159, %159, %159, %162
  %165 = tail call i32 @TransformImageColorspace(ptr noundef %0, i32 noundef 12) #11
  br label %166

166:                                              ; preds = %159, %164
  %167 = phi i32 [ %165, %164 ], [ 1, %159 ]
  %168 = load i32, ptr %0, align 8, !tbaa !82
  %169 = icmp eq i32 %168, 1
  br i1 %169, label %172, label %170

170:                                              ; preds = %166
  %171 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %0, i32 noundef 1) #11
  br label %172

172:                                              ; preds = %170, %166
  %173 = phi i32 [ %171, %170 ], [ %167, %166 ]
  %174 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %175 = load i32, ptr %174, align 8, !tbaa !83
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %172
  %178 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %0, i32 noundef 6) #11
  br label %179

179:                                              ; preds = %172, %177, %136, %141, %52, %57, %17, %156, %122, %106, %90, %76, %43, %34
  %180 = phi i32 [ 1, %17 ], [ %173, %177 ], [ %173, %172 ], [ %157, %156 ], [ %137, %141 ], [ %137, %136 ], [ %123, %122 ], [ %109, %106 ], [ %93, %90 ], [ %77, %76 ], [ %53, %57 ], [ %53, %52 ], [ %44, %43 ], [ %35, %34 ]
  %181 = tail call ptr @DestroyImageInfo(ptr noundef %9) #11
  %182 = icmp eq i32 %180, 0
  br i1 %182, label %185, label %183

183:                                              ; preds = %179
  %184 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  store i32 %1, ptr %184, align 8, !tbaa !95
  br label %185

185:                                              ; preds = %179, %183
  %186 = phi i32 [ 1, %183 ], [ 0, %179 ]
  ret i32 %186
}

declare ptr @AcquireImageInfo() local_unnamed_addr #2

declare ptr @GetImageArtifact(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SetImageOption(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @TransformImageColorspace(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @NormalizeImage(ptr noundef) local_unnamed_addr #2

declare ptr @AcquireQuantizeInfo(ptr noundef) local_unnamed_addr #2

declare i32 @QuantizeImage(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @DestroyQuantizeInfo(ptr noundef) local_unnamed_addr #2

declare i32 @SetImageAlphaChannel(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BilevelImageChannel(ptr noundef, i32 noundef, double noundef) local_unnamed_addr #2

declare i32 @SetImageStorageClass(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @DestroyImageInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { hot "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind }
attributes #12 = { hot nounwind }
attributes #13 = { nounwind allocsize(0,1) }
attributes #14 = { nounwind willreturn memory(none) }
attributes #15 = { noreturn nounwind }

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
!54 = !{!46, !39, i64 16}
!55 = !{!35, !39, i64 48}
!56 = !{!46, !39, i64 24}
!57 = !{!41, !42, i64 4}
!58 = !{!59, !60, i64 32}
!59 = !{!"_MagickPixelPacket", !36, i64 0, !36, i64 4, !36, i64 8, !43, i64 16, !39, i64 24, !60, i64 32, !60, i64 36, !60, i64 40, !60, i64 44, !60, i64 48}
!60 = !{!"float", !37, i64 0}
!61 = !{!41, !42, i64 2}
!62 = !{!59, !60, i64 36}
!63 = !{!41, !42, i64 0}
!64 = !{!59, !60, i64 40}
!65 = !{!41, !42, i64 6}
!66 = !{!59, !60, i64 44}
!67 = !{!35, !36, i64 4}
!68 = !{!42, !42, i64 0}
!69 = !{!59, !60, i64 48}
!70 = !{i64 0, i64 4, !71, i64 4, i64 4, !71, i64 8, i64 4, !71, i64 16, i64 8, !72, i64 24, i64 8, !73, i64 32, i64 4, !74, i64 36, i64 4, !74, i64 40, i64 4, !74, i64 44, i64 4, !74, i64 48, i64 4, !74}
!71 = !{!36, !36, i64 0}
!72 = !{!43, !43, i64 0}
!73 = !{!39, !39, i64 0}
!74 = !{!60, !60, i64 0}
!75 = distinct !{!75, !76, !77}
!76 = !{!"llvm.loop.mustprogress"}
!77 = !{!"llvm.loop.unroll.disable"}
!78 = distinct !{!78, !76, !77}
!79 = !{!46, !39, i64 0}
!80 = !{!46, !39, i64 8}
!81 = distinct !{!81, !76, !77}
!82 = !{!35, !36, i64 0}
!83 = !{!35, !36, i64 32}
!84 = !{!35, !39, i64 64}
!85 = !{!35, !40, i64 72}
!86 = distinct !{!86, !76, !77}
!87 = distinct !{!87, !76, !77}
!88 = distinct !{!88, !76, !77}
!89 = distinct !{!89, !76, !77}
!90 = distinct !{!90, !76, !77}
!91 = distinct !{!91, !76, !77}
!92 = distinct !{!92, !76, !77}
!93 = !{!35, !39, i64 56}
!94 = !{i32 0, i32 2}
!95 = !{!35, !36, i64 13184}
!96 = distinct !{!96, !76, !77}
!97 = distinct !{!97, !76, !77}
!98 = distinct !{!98, !76, !77}
!99 = distinct !{!99, !76, !77}
!100 = distinct !{!100, !76, !77}
!101 = distinct !{!101, !76, !77}
!102 = distinct !{!102, !76, !77}
!103 = distinct !{!103, !76, !77}
!104 = distinct !{!104, !76, !77}
!105 = distinct !{!105, !76, !77}
!106 = !{!35, !36, i64 13188}
!107 = !{!108, !36, i64 184}
!108 = !{!"_ImageInfo", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !39, i64 56, !39, i64 64, !39, i64 72, !36, i64 80, !36, i64 84, !36, i64 88, !39, i64 96, !40, i64 104, !40, i64 112, !40, i64 120, !40, i64 128, !40, i64 136, !43, i64 144, !43, i64 152, !41, i64 160, !41, i64 168, !41, i64 176, !36, i64 184, !36, i64 188, !39, i64 192, !36, i64 200, !36, i64 204, !36, i64 208, !39, i64 216, !36, i64 224, !36, i64 228, !40, i64 232, !40, i64 240, !36, i64 248, !40, i64 256, !40, i64 264, !40, i64 272, !40, i64 280, !40, i64 288, !40, i64 296, !40, i64 304, !40, i64 312, !39, i64 320, !37, i64 328, !37, i64 4424, !37, i64 8520, !37, i64 12616, !36, i64 16712, !40, i64 16720, !39, i64 16728, !39, i64 16736, !41, i64 16744, !39, i64 16752, !36, i64 16760, !41, i64 16764, !40, i64 16776, !36, i64 16784}
!109 = !{!110, !39, i64 0}
!110 = !{!"_QuantizeInfo", !39, i64 0, !39, i64 8, !36, i64 16, !36, i64 20, !36, i64 24, !39, i64 32, !36, i64 40}
!111 = !{!110, !36, i64 20}
