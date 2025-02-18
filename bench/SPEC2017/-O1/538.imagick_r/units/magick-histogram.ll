; ModuleID = 'magick/histogram.c'
source_filename = "magick/histogram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._CubeInfo = type { ptr, i64, i64, i64, i64, ptr, ptr }
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
%struct._Nodes = type { [1536 x %struct._NodeInfo], ptr }
%struct._NodeInfo = type { [16 x ptr], ptr, i64, i64 }
%struct._MagickPixelPacket = type { i32, i32, i32, double, i64, float, float, float, float, float }
%struct._ColorPacket = type { %struct._PixelPacket, i16, i64 }
%struct._QuantizeInfo = type { i64, i64, i32, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [19 x i8] c"magick/histogram.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"%10.20g\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c": %s %s %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"Histogram/Image\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"  Compute image colors...  \00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"UniqueColors/Image\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @GetImageHistogram(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  store i64 0, ptr %1, align 8, !tbaa !34
  %5 = tail call fastcc ptr @ClassifyImageColors(ptr noundef %0, ptr noundef %2)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._CubeInfo, ptr %5, i64 0, i32 3
  %9 = load i64, ptr %8, align 8, !tbaa !38
  %10 = tail call ptr @AcquireQuantumMemory(i64 noundef %9, i64 noundef 24) #14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %14 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 543, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %13) #15
  br label %18

15:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  %16 = load i64, ptr %8, align 8, !tbaa !38
  store i64 %16, ptr %1, align 8, !tbaa !34
  store ptr %10, ptr %4, align 8, !tbaa !42
  %17 = load ptr, ptr %5, align 8, !tbaa !43
  call fastcc void @DefineImageHistogram(ptr noundef %0, ptr noundef %17, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  br label %18

18:                                               ; preds = %12, %15, %3
  %19 = phi ptr [ null, %12 ], [ %10, %15 ], [ null, %3 ]
  %20 = load ptr, ptr %5, align 8, !tbaa !43
  tail call fastcc void @DestroyColorCube(ptr noundef %0, ptr noundef %20)
  %21 = getelementptr inbounds %struct._CubeInfo, ptr %5, i64 0, i32 6
  br label %22

22:                                               ; preds = %22, %18
  %23 = load ptr, ptr %21, align 8, !tbaa !44
  %24 = getelementptr inbounds %struct._Nodes, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !45
  %26 = tail call ptr @RelinquishMagickMemory(ptr noundef %23) #15
  store ptr %25, ptr %21, align 8, !tbaa !44
  %27 = icmp eq ptr %25, null
  br i1 %27, label %28, label %22, !llvm.loop !47

28:                                               ; preds = %22
  %29 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %5) #15
  ret ptr %19
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @ClassifyImageColors(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  %4 = alloca %struct._MagickPixelPacket, align 8
  %5 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #15
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !50
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 220, ptr noundef nonnull @.str.4, ptr noundef nonnull %10) #15
  br label %12

12:                                               ; preds = %9, %2
  %13 = tail call dereferenceable_or_null(56) ptr @AcquireMagickMemory(i64 noundef 56) #16
  %14 = icmp eq ptr %13, null
  br i1 %14, label %40, label %15

15:                                               ; preds = %12
  %16 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %13, i32 noundef 0, i64 noundef 56) #15
  %17 = getelementptr inbounds %struct._CubeInfo, ptr %13, i64 0, i32 4
  %18 = load i64, ptr %17, align 8, !tbaa !64
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = tail call dereferenceable_or_null(233480) ptr @AcquireMagickMemory(i64 noundef 233480) #16
  %22 = icmp eq ptr %21, null
  br i1 %22, label %36, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct._CubeInfo, ptr %13, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !44
  %26 = getelementptr inbounds %struct._Nodes, ptr %21, i64 0, i32 1
  store ptr %25, ptr %26, align 8, !tbaa !45
  store ptr %21, ptr %24, align 8, !tbaa !44
  %27 = getelementptr inbounds %struct._CubeInfo, ptr %13, i64 0, i32 5
  store ptr %21, ptr %27, align 8, !tbaa !65
  store i64 1536, ptr %17, align 8, !tbaa !64
  br label %28

28:                                               ; preds = %23, %15
  %29 = load i64, ptr %17, align 8, !tbaa !64
  %30 = add i64 %29, -1
  store i64 %30, ptr %17, align 8, !tbaa !64
  %31 = getelementptr inbounds %struct._CubeInfo, ptr %13, i64 0, i32 5
  %32 = load ptr, ptr %31, align 8, !tbaa !65
  %33 = getelementptr inbounds %struct._NodeInfo, ptr %32, i64 1
  store ptr %33, ptr %31, align 8, !tbaa !65
  %34 = tail call ptr @ResetMagickMemory(ptr noundef %32, i32 noundef 0, i64 noundef 152) #15
  %35 = getelementptr inbounds %struct._NodeInfo, ptr %32, i64 0, i32 3
  store i64 0, ptr %35, align 8, !tbaa !66
  br label %36

36:                                               ; preds = %20, %28
  %37 = phi ptr [ %32, %28 ], [ null, %20 ]
  store ptr %37, ptr %13, align 8, !tbaa !43
  %38 = icmp eq ptr %37, null
  %39 = select i1 %38, ptr null, ptr %13
  br label %40

40:                                               ; preds = %12, %36
  %41 = phi ptr [ null, %12 ], [ %39, %36 ]
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %45 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 224, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %44) #15
  br label %390

46:                                               ; preds = %40
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %4) #15
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %5) #15
  %47 = call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %1) #15
  %48 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %49 = load i64, ptr %48, align 8, !tbaa !68
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %51, label %388

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %53 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 5
  %54 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 6
  %55 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 7
  %56 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 8
  %57 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %58 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %59 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 9
  %60 = getelementptr inbounds %struct._CubeInfo, ptr %41, i64 0, i32 4
  %61 = getelementptr inbounds %struct._CubeInfo, ptr %41, i64 0, i32 6
  %62 = getelementptr inbounds %struct._CubeInfo, ptr %41, i64 0, i32 5
  %63 = getelementptr inbounds %struct._CubeInfo, ptr %41, i64 0, i32 5
  %64 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 5
  %65 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 6
  %66 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 7
  %67 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 8
  %68 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %69 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 9
  %70 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 2
  %71 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 2
  %72 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 8
  %73 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 8
  %74 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 5
  %75 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 6
  %76 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 7
  %77 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 1
  %78 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 9
  %79 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %80 = getelementptr inbounds %struct._CubeInfo, ptr %41, i64 0, i32 3
  %81 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %82 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %83 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %88

84:                                               ; preds = %385
  %85 = add nuw nsw i64 %89, 1
  %86 = load i64, ptr %48, align 8, !tbaa !68
  %87 = icmp slt i64 %85, %86
  br i1 %87, label %88, label %388, !llvm.loop !69

88:                                               ; preds = %51, %84
  %89 = phi i64 [ 0, %51 ], [ %85, %84 ]
  %90 = load i64, ptr %52, align 8, !tbaa !70
  %91 = call ptr @GetCacheViewVirtualPixels(ptr noundef %47, i64 noundef 0, i64 noundef %89, i64 noundef %90, i64 noundef 1, ptr noundef %1) #17
  %92 = icmp eq ptr %91, null
  br i1 %92, label %388, label %93

93:                                               ; preds = %88
  %94 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %47) #15
  %95 = load i64, ptr %52, align 8, !tbaa !70
  %96 = icmp sgt i64 %95, 0
  br i1 %96, label %97, label %376

97:                                               ; preds = %93
  %98 = icmp ne ptr %94, null
  %99 = icmp eq ptr %94, null
  br label %100

100:                                              ; preds = %97, %368
  %101 = phi i64 [ 0, %97 ], [ %373, %368 ]
  %102 = phi ptr [ %91, %97 ], [ %372, %368 ]
  %103 = getelementptr inbounds %struct._PixelPacket, ptr %102, i64 0, i32 2
  %104 = getelementptr inbounds %struct._PixelPacket, ptr %102, i64 0, i32 1
  %105 = getelementptr inbounds %struct._PixelPacket, ptr %102, i64 0, i32 3
  %106 = load ptr, ptr %41, align 8, !tbaa !42
  %107 = getelementptr inbounds i16, ptr %94, i64 %101
  br label %143

108:                                              ; preds = %260
  %109 = getelementptr inbounds %struct._NodeInfo, ptr %263, i64 0, i32 2
  %110 = load i64, ptr %109, align 8, !tbaa !71
  %111 = icmp sgt i64 %110, 0
  br i1 %111, label %112, label %328

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct._NodeInfo, ptr %263, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !72
  %115 = load i32, ptr %68, align 4, !tbaa !73
  %116 = icmp eq i32 %115, 12
  %117 = load i32, ptr %70, align 8
  %118 = icmp ne i32 %117, 0
  %119 = load i32, ptr %71, align 8
  %120 = icmp eq i32 %119, 0
  %121 = select i1 %118, i1 %120, i1 false
  %122 = load float, ptr %72, align 4
  %123 = call float @llvm.fabs.f32(float %122)
  %124 = fpext float %123 to double
  %125 = fcmp oge double %124, 1.000000e-15
  %126 = icmp ne i32 %119, 0
  %127 = icmp eq i32 %117, 0
  %128 = and i1 %127, %126
  %129 = select i1 %127, i1 true, i1 %120
  %130 = load float, ptr %73, align 4
  %131 = fadd float %130, -6.553500e+04
  %132 = call float @llvm.fabs.f32(float %131)
  %133 = fpext float %132 to double
  %134 = fcmp olt double %133, 1.000000e-15
  %135 = load float, ptr %74, align 8
  %136 = load float, ptr %75, align 4
  %137 = load float, ptr %76, align 8
  %138 = load i32, ptr %77, align 4
  %139 = icmp eq i32 %138, 12
  %140 = load float, ptr %78, align 8
  %141 = load float, ptr %69, align 8, !tbaa !74
  %142 = select i1 %121, i1 %125, i1 false
  br label %265

143:                                              ; preds = %100, %260
  %144 = phi ptr [ %106, %100 ], [ %263, %260 ]
  %145 = phi i64 [ 1, %100 ], [ %262, %260 ]
  %146 = phi i64 [ 7, %100 ], [ %261, %260 ]
  %147 = load i16, ptr %103, align 2, !tbaa !77
  %148 = uitofp i16 %147 to float
  store float %148, ptr %53, align 8, !tbaa !78
  %149 = load i16, ptr %104, align 2, !tbaa !79
  %150 = uitofp i16 %149 to float
  store float %150, ptr %54, align 4, !tbaa !80
  %151 = load i16, ptr %102, align 2, !tbaa !81
  %152 = uitofp i16 %151 to float
  store float %152, ptr %55, align 8, !tbaa !82
  %153 = load i16, ptr %105, align 2, !tbaa !83
  %154 = uitofp i16 %153 to float
  store float %154, ptr %56, align 4, !tbaa !84
  %155 = load i32, ptr %57, align 4, !tbaa !73
  %156 = icmp eq i32 %155, 12
  %157 = and i1 %98, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %143
  %159 = load i16, ptr %107, align 2, !tbaa !85
  %160 = uitofp i16 %159 to float
  store float %160, ptr %59, align 8, !tbaa !74
  br label %161

161:                                              ; preds = %143, %158
  switch i16 %147, label %162 [
    i16 0, label %168
    i16 -1, label %167
  ]

162:                                              ; preds = %161
  %163 = fadd float %148, 5.000000e-01
  %164 = fptoui float %163 to i16
  %165 = zext i16 %164 to i64
  %166 = add nuw nsw i64 %165, 128
  br label %168

167:                                              ; preds = %161
  br label %168

168:                                              ; preds = %161, %167, %162
  %169 = phi i64 [ %166, %162 ], [ 128, %161 ], [ 65663, %167 ]
  %170 = lshr i64 %169, 8
  %171 = sub nsw i64 %169, %170
  %172 = trunc i64 %171 to i32
  %173 = lshr i32 %172, 8
  %174 = and i32 %173, 255
  %175 = trunc i64 %146 to i32
  %176 = lshr i32 %174, %175
  %177 = and i32 %176, 1
  switch i16 %149, label %178 [
    i16 0, label %184
    i16 -1, label %183
  ]

178:                                              ; preds = %168
  %179 = fadd float %150, 5.000000e-01
  %180 = fptoui float %179 to i16
  %181 = zext i16 %180 to i64
  %182 = add nuw nsw i64 %181, 128
  br label %184

183:                                              ; preds = %168
  br label %184

184:                                              ; preds = %168, %183, %178
  %185 = phi i64 [ %182, %178 ], [ 128, %168 ], [ 65663, %183 ]
  %186 = lshr i64 %185, 8
  %187 = sub nsw i64 %185, %186
  %188 = trunc i64 %187 to i32
  %189 = lshr i32 %188, 8
  %190 = and i32 %189, 255
  %191 = lshr i32 %190, %175
  %192 = shl nuw nsw i32 %191, 1
  %193 = and i32 %192, 2
  %194 = or disjoint i32 %193, %177
  switch i16 %151, label %195 [
    i16 0, label %201
    i16 -1, label %200
  ]

195:                                              ; preds = %184
  %196 = fadd float %152, 5.000000e-01
  %197 = fptoui float %196 to i16
  %198 = zext i16 %197 to i64
  %199 = add nuw nsw i64 %198, 128
  br label %201

200:                                              ; preds = %184
  br label %201

201:                                              ; preds = %184, %200, %195
  %202 = phi i64 [ %199, %195 ], [ 128, %184 ], [ 65663, %200 ]
  %203 = lshr i64 %202, 8
  %204 = sub nsw i64 %202, %203
  %205 = trunc i64 %204 to i32
  %206 = lshr i32 %205, 8
  %207 = and i32 %206, 255
  %208 = lshr i32 %207, %175
  %209 = shl nuw nsw i32 %208, 2
  %210 = and i32 %209, 4
  %211 = or disjoint i32 %194, %210
  %212 = load i32, ptr %58, align 8, !tbaa !86
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %232, label %214

214:                                              ; preds = %201
  switch i16 %153, label %215 [
    i16 0, label %221
    i16 -1, label %220
  ]

215:                                              ; preds = %214
  %216 = fadd float %154, 5.000000e-01
  %217 = fptoui float %216 to i16
  %218 = zext i16 %217 to i64
  %219 = add nuw nsw i64 %218, 128
  br label %221

220:                                              ; preds = %214
  br label %221

221:                                              ; preds = %214, %220, %215
  %222 = phi i64 [ %219, %215 ], [ 128, %214 ], [ 65663, %220 ]
  %223 = lshr i64 %222, 8
  %224 = sub nsw i64 %222, %223
  %225 = trunc i64 %224 to i32
  %226 = lshr i32 %225, 8
  %227 = and i32 %226, 255
  %228 = lshr i32 %227, %175
  %229 = shl nuw nsw i32 %228, 3
  %230 = and i32 %229, 8
  %231 = or disjoint i32 %230, %211
  br label %232

232:                                              ; preds = %201, %221
  %233 = phi i32 [ %231, %221 ], [ %211, %201 ]
  %234 = zext nneg i32 %233 to i64
  %235 = getelementptr inbounds [16 x ptr], ptr %144, i64 0, i64 %234
  %236 = load ptr, ptr %235, align 8, !tbaa !42
  %237 = icmp eq ptr %236, null
  br i1 %237, label %238, label %260

238:                                              ; preds = %232
  %239 = load i64, ptr %60, align 8, !tbaa !64
  %240 = icmp eq i64 %239, 0
  br i1 %240, label %241, label %247

241:                                              ; preds = %238
  %242 = call dereferenceable_or_null(233480) ptr @AcquireMagickMemory(i64 noundef 233480) #16
  %243 = icmp eq ptr %242, null
  br i1 %243, label %254, label %244

244:                                              ; preds = %241
  %245 = load ptr, ptr %61, align 8, !tbaa !44
  %246 = getelementptr inbounds %struct._Nodes, ptr %242, i64 0, i32 1
  store ptr %245, ptr %246, align 8, !tbaa !45
  store ptr %242, ptr %61, align 8, !tbaa !44
  store ptr %242, ptr %62, align 8, !tbaa !65
  store i64 1536, ptr %60, align 8, !tbaa !64
  br label %247

247:                                              ; preds = %244, %238
  %248 = load i64, ptr %60, align 8, !tbaa !64
  %249 = add i64 %248, -1
  store i64 %249, ptr %60, align 8, !tbaa !64
  %250 = load ptr, ptr %63, align 8, !tbaa !65
  %251 = getelementptr inbounds %struct._NodeInfo, ptr %250, i64 1
  store ptr %251, ptr %63, align 8, !tbaa !65
  %252 = call ptr @ResetMagickMemory(ptr noundef %250, i32 noundef 0, i64 noundef 152) #15
  %253 = getelementptr inbounds %struct._NodeInfo, ptr %250, i64 0, i32 3
  store i64 %145, ptr %253, align 8, !tbaa !66
  br label %254

254:                                              ; preds = %241, %247
  %255 = phi ptr [ %250, %247 ], [ null, %241 ]
  store ptr %255, ptr %235, align 8, !tbaa !42
  %256 = icmp eq ptr %255, null
  br i1 %256, label %257, label %260

257:                                              ; preds = %254
  %258 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %259 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 253, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %258) #15
  br label %390

260:                                              ; preds = %254, %232
  %261 = add nsw i64 %146, -1
  %262 = add nuw nsw i64 %145, 1
  %263 = load ptr, ptr %235, align 8, !tbaa !42
  %264 = icmp eq i64 %262, 8
  br i1 %264, label %108, label %143, !llvm.loop !87

265:                                              ; preds = %112, %318
  %266 = phi float [ %141, %112 ], [ %286, %318 ]
  %267 = phi i1 [ %111, %112 ], [ %320, %318 ]
  %268 = phi i64 [ 0, %112 ], [ %319, %318 ]
  %269 = getelementptr inbounds %struct._ColorPacket, ptr %114, i64 %268
  %270 = getelementptr inbounds %struct._PixelPacket, ptr %269, i64 0, i32 2
  %271 = load i16, ptr %270, align 2, !tbaa !77
  %272 = uitofp i16 %271 to float
  %273 = getelementptr inbounds %struct._PixelPacket, ptr %269, i64 0, i32 1
  %274 = load i16, ptr %273, align 2, !tbaa !79
  %275 = uitofp i16 %274 to float
  %276 = load i16, ptr %269, align 2, !tbaa !81
  %277 = uitofp i16 %276 to float
  %278 = getelementptr inbounds %struct._PixelPacket, ptr %269, i64 0, i32 3
  %279 = load i16, ptr %278, align 2, !tbaa !83
  %280 = uitofp i16 %279 to float
  br i1 %116, label %281, label %285

281:                                              ; preds = %265
  %282 = getelementptr inbounds %struct._ColorPacket, ptr %114, i64 %268, i32 1
  %283 = load i16, ptr %282, align 2, !tbaa !85
  %284 = uitofp i16 %283 to float
  store float %284, ptr %69, align 8, !tbaa !74
  br label %285

285:                                              ; preds = %265, %281
  %286 = phi float [ %266, %265 ], [ %284, %281 ]
  %287 = icmp ne i16 %279, 0
  %288 = select i1 %128, i1 %287, i1 false
  %289 = select i1 %142, i1 true, i1 %288
  br i1 %289, label %318, label %290

290:                                              ; preds = %285
  br i1 %129, label %297, label %291

291:                                              ; preds = %290
  %292 = fsub float %130, %280
  %293 = call float @llvm.fabs.f32(float %292)
  %294 = fpext float %293 to double
  %295 = fcmp ult double %294, 1.000000e-15
  br i1 %295, label %296, label %318

296:                                              ; preds = %291
  br i1 %134, label %322, label %297

297:                                              ; preds = %296, %290
  %298 = fsub float %135, %272
  %299 = call float @llvm.fabs.f32(float %298)
  %300 = fpext float %299 to double
  %301 = fcmp ult double %300, 1.000000e-15
  br i1 %301, label %302, label %318

302:                                              ; preds = %297
  %303 = fsub float %136, %275
  %304 = call float @llvm.fabs.f32(float %303)
  %305 = fpext float %304 to double
  %306 = fcmp ult double %305, 1.000000e-15
  br i1 %306, label %307, label %318

307:                                              ; preds = %302
  %308 = fsub float %137, %277
  %309 = call float @llvm.fabs.f32(float %308)
  %310 = fpext float %309 to double
  %311 = fcmp ult double %310, 1.000000e-15
  br i1 %311, label %312, label %318

312:                                              ; preds = %307
  br i1 %139, label %313, label %322

313:                                              ; preds = %312
  %314 = fsub float %140, %286
  %315 = call float @llvm.fabs.f32(float %314)
  %316 = fpext float %315 to double
  %317 = fcmp ult double %316, 1.000000e-15
  br i1 %317, label %322, label %318

318:                                              ; preds = %285, %313, %307, %302, %297, %291
  %319 = add nuw nsw i64 %268, 1
  %320 = icmp slt i64 %319, %110
  %321 = icmp eq i64 %319, %110
  br i1 %321, label %327, label %265, !llvm.loop !88

322:                                              ; preds = %312, %313, %296
  store float %272, ptr %64, align 8, !tbaa !78
  store float %275, ptr %65, align 4, !tbaa !80
  store float %277, ptr %66, align 8, !tbaa !82
  store float %280, ptr %67, align 4, !tbaa !84
  br i1 %267, label %323, label %328

323:                                              ; preds = %322
  %324 = getelementptr inbounds %struct._NodeInfo, ptr %263, i64 0, i32 1
  %325 = load ptr, ptr %324, align 8, !tbaa !72
  %326 = getelementptr inbounds %struct._ColorPacket, ptr %325, i64 %268, i32 2
  br label %368

327:                                              ; preds = %318
  store float %272, ptr %64, align 8, !tbaa !78
  store float %275, ptr %65, align 4, !tbaa !80
  store float %277, ptr %66, align 8, !tbaa !82
  store float %280, ptr %67, align 4, !tbaa !84
  br label %328

328:                                              ; preds = %108, %327, %322
  %329 = phi i64 [ %268, %322 ], [ %110, %327 ], [ 0, %108 ]
  %330 = getelementptr inbounds %struct._NodeInfo, ptr %263, i64 0, i32 2
  %331 = icmp eq i64 %110, 0
  br i1 %331, label %332, label %335

332:                                              ; preds = %328
  %333 = call dereferenceable_or_null(24) ptr @AcquireMagickMemory(i64 noundef 24) #16
  %334 = getelementptr inbounds %struct._NodeInfo, ptr %263, i64 0, i32 1
  store ptr %333, ptr %334, align 8, !tbaa !72
  br label %340

335:                                              ; preds = %328
  %336 = getelementptr inbounds %struct._NodeInfo, ptr %263, i64 0, i32 1
  %337 = load ptr, ptr %336, align 8, !tbaa !72
  %338 = add nuw nsw i64 %329, 1
  %339 = call ptr @ResizeQuantumMemory(ptr noundef %337, i64 noundef %338, i64 noundef 24) #18
  store ptr %339, ptr %336, align 8, !tbaa !72
  br label %340

340:                                              ; preds = %335, %332
  %341 = getelementptr inbounds %struct._NodeInfo, ptr %263, i64 0, i32 1
  %342 = load ptr, ptr %341, align 8, !tbaa !72
  %343 = icmp eq ptr %342, null
  br i1 %343, label %344, label %347

344:                                              ; preds = %340
  %345 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %346 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 281, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %345) #15
  br label %390

347:                                              ; preds = %340
  %348 = getelementptr inbounds %struct._ColorPacket, ptr %342, i64 %329
  %349 = load i64, ptr %102, align 2
  store i64 %349, ptr %348, align 8
  %350 = load i32, ptr %79, align 4, !tbaa !73
  %351 = icmp eq i32 %350, 12
  br i1 %351, label %355, label %352

352:                                              ; preds = %347
  %353 = load i32, ptr %0, align 8, !tbaa !89
  %354 = icmp eq i32 %353, 2
  br i1 %354, label %355, label %363

355:                                              ; preds = %352, %347
  br i1 %99, label %359, label %356

356:                                              ; preds = %355
  %357 = getelementptr inbounds i16, ptr %94, i64 %101
  %358 = load i16, ptr %357, align 2, !tbaa !85
  br label %359

359:                                              ; preds = %355, %356
  %360 = phi i16 [ %358, %356 ], [ 0, %355 ]
  %361 = load ptr, ptr %341, align 8, !tbaa !72
  %362 = getelementptr inbounds %struct._ColorPacket, ptr %361, i64 %329, i32 1
  store i16 %360, ptr %362, align 8, !tbaa !90
  br label %363

363:                                              ; preds = %359, %352
  %364 = load ptr, ptr %341, align 8, !tbaa !72
  %365 = getelementptr inbounds %struct._ColorPacket, ptr %364, i64 %329, i32 2
  store i64 1, ptr %365, align 8, !tbaa !92
  %366 = load i64, ptr %330, align 8, !tbaa !71
  %367 = add i64 %366, 1
  store i64 %367, ptr %330, align 8, !tbaa !71
  br label %368

368:                                              ; preds = %363, %323
  %369 = phi ptr [ %80, %363 ], [ %326, %323 ]
  %370 = load i64, ptr %369, align 8, !tbaa !93
  %371 = add i64 %370, 1
  store i64 %371, ptr %369, align 8, !tbaa !93
  %372 = getelementptr inbounds %struct._PixelPacket, ptr %102, i64 1
  %373 = add nuw nsw i64 %101, 1
  %374 = load i64, ptr %52, align 8, !tbaa !70
  %375 = icmp slt i64 %373, %374
  br i1 %375, label %100, label %376, !llvm.loop !94

376:                                              ; preds = %368, %93
  %377 = load i64, ptr %48, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #15
  %378 = load ptr, ptr %81, align 8, !tbaa !95
  %379 = icmp eq ptr %378, null
  br i1 %379, label %385, label %380

380:                                              ; preds = %376
  %381 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %3, i64 noundef 4096, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11, ptr noundef nonnull %82) #15
  %382 = load ptr, ptr %81, align 8, !tbaa !95
  %383 = load ptr, ptr %83, align 8, !tbaa !96
  %384 = call i32 %382(ptr noundef nonnull %3, i64 noundef %89, i64 noundef %377, ptr noundef %383) #15
  br label %385

385:                                              ; preds = %376, %380
  %386 = phi i32 [ %384, %380 ], [ 1, %376 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #15
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %388, label %84

388:                                              ; preds = %84, %88, %385, %46
  %389 = call ptr @DestroyCacheView(ptr noundef %47) #15
  br label %390

390:                                              ; preds = %388, %344, %257, %43
  %391 = phi ptr [ null, %43 ], [ %41, %388 ], [ null, %257 ], [ null, %344 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #15
  ret ptr %391
}

; Function Attrs: allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @DefineImageHistogram(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #4 {
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %5 = load i32, ptr %4, align 8, !tbaa !86
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, i64 8, i64 16
  br label %8

8:                                                ; preds = %3, %14
  %9 = phi i64 [ 0, %3 ], [ %15, %14 ]
  %10 = getelementptr inbounds [16 x ptr], ptr %1, i64 0, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !42
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call fastcc void @DefineImageHistogram(ptr noundef %0, ptr noundef nonnull %11, ptr noundef %2)
  br label %14

14:                                               ; preds = %8, %13
  %15 = add nuw nsw i64 %9, 1
  %16 = icmp eq i64 %15, %7
  br i1 %16, label %17, label %8, !llvm.loop !97

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct._NodeInfo, ptr %1, i64 0, i32 3
  %19 = load i64, ptr %18, align 8, !tbaa !66
  %20 = icmp eq i64 %19, 7
  br i1 %20, label %21, label %45

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct._NodeInfo, ptr %1, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !71
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct._NodeInfo, ptr %1, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !72
  br label %28

28:                                               ; preds = %25, %28
  %29 = phi ptr [ %41, %28 ], [ %27, %25 ]
  %30 = phi i64 [ %42, %28 ], [ 0, %25 ]
  %31 = load ptr, ptr %2, align 8, !tbaa !42
  %32 = load i64, ptr %29, align 8
  store i64 %32, ptr %31, align 8
  %33 = getelementptr inbounds %struct._ColorPacket, ptr %29, i64 0, i32 1
  %34 = load i16, ptr %33, align 8, !tbaa !90
  %35 = load ptr, ptr %2, align 8, !tbaa !42
  %36 = getelementptr inbounds %struct._ColorPacket, ptr %35, i64 0, i32 1
  store i16 %34, ptr %36, align 8, !tbaa !90
  %37 = getelementptr inbounds %struct._ColorPacket, ptr %29, i64 0, i32 2
  %38 = load i64, ptr %37, align 8, !tbaa !92
  %39 = getelementptr inbounds %struct._ColorPacket, ptr %35, i64 0, i32 2
  store i64 %38, ptr %39, align 8, !tbaa !92
  %40 = getelementptr inbounds %struct._ColorPacket, ptr %35, i64 1
  store ptr %40, ptr %2, align 8, !tbaa !42
  %41 = getelementptr inbounds %struct._ColorPacket, ptr %29, i64 1
  %42 = add nuw nsw i64 %30, 1
  %43 = load i64, ptr %22, align 8, !tbaa !71
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %28, label %45, !llvm.loop !98

45:                                               ; preds = %28, %21, %17
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @IsHistogramImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct._MagickPixelPacket, align 8
  %4 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #15
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !50
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 679, ptr noundef nonnull @.str.4, ptr noundef nonnull %9) #15
  br label %11

11:                                               ; preds = %8, %2
  %12 = load i32, ptr %0, align 8, !tbaa !89
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %16 = load i64, ptr %15, align 8, !tbaa !99
  %17 = icmp ult i64 %16, 257
  br label %401

18:                                               ; preds = %11
  %19 = tail call dereferenceable_or_null(56) ptr @AcquireMagickMemory(i64 noundef 56) #16
  %20 = icmp eq ptr %19, null
  br i1 %20, label %46, label %21

21:                                               ; preds = %18
  %22 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %19, i32 noundef 0, i64 noundef 56) #15
  %23 = getelementptr inbounds %struct._CubeInfo, ptr %19, i64 0, i32 4
  %24 = load i64, ptr %23, align 8, !tbaa !64
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = tail call dereferenceable_or_null(233480) ptr @AcquireMagickMemory(i64 noundef 233480) #16
  %28 = icmp eq ptr %27, null
  br i1 %28, label %42, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct._CubeInfo, ptr %19, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !44
  %32 = getelementptr inbounds %struct._Nodes, ptr %27, i64 0, i32 1
  store ptr %31, ptr %32, align 8, !tbaa !45
  store ptr %27, ptr %30, align 8, !tbaa !44
  %33 = getelementptr inbounds %struct._CubeInfo, ptr %19, i64 0, i32 5
  store ptr %27, ptr %33, align 8, !tbaa !65
  store i64 1536, ptr %23, align 8, !tbaa !64
  br label %34

34:                                               ; preds = %29, %21
  %35 = load i64, ptr %23, align 8, !tbaa !64
  %36 = add i64 %35, -1
  store i64 %36, ptr %23, align 8, !tbaa !64
  %37 = getelementptr inbounds %struct._CubeInfo, ptr %19, i64 0, i32 5
  %38 = load ptr, ptr %37, align 8, !tbaa !65
  %39 = getelementptr inbounds %struct._NodeInfo, ptr %38, i64 1
  store ptr %39, ptr %37, align 8, !tbaa !65
  %40 = tail call ptr @ResetMagickMemory(ptr noundef %38, i32 noundef 0, i64 noundef 152) #15
  %41 = getelementptr inbounds %struct._NodeInfo, ptr %38, i64 0, i32 3
  store i64 0, ptr %41, align 8, !tbaa !66
  br label %42

42:                                               ; preds = %26, %34
  %43 = phi ptr [ %38, %34 ], [ null, %26 ]
  store ptr %43, ptr %19, align 8, !tbaa !43
  %44 = icmp eq ptr %43, null
  %45 = select i1 %44, ptr null, ptr %19
  br label %46

46:                                               ; preds = %18, %42
  %47 = phi ptr [ null, %18 ], [ %45, %42 ]
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %51 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 690, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %50) #15
  br label %401

52:                                               ; preds = %46
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %3) #15
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %4) #15
  %53 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %1) #15
  %54 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %55 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %56 = load i64, ptr %55, align 8, !tbaa !68
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %385

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  %60 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 6
  %61 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  %62 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  %63 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %64 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %65 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  %66 = getelementptr inbounds %struct._CubeInfo, ptr %47, i64 0, i32 4
  %67 = getelementptr inbounds %struct._CubeInfo, ptr %47, i64 0, i32 6
  %68 = getelementptr inbounds %struct._CubeInfo, ptr %47, i64 0, i32 5
  %69 = getelementptr inbounds %struct._CubeInfo, ptr %47, i64 0, i32 5
  %70 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 5
  %71 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 6
  %72 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 7
  %73 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 8
  %74 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %75 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 9
  %76 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 2
  %77 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 2
  %78 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  %79 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  %80 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  %81 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 6
  %82 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  %83 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 1
  %84 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  %85 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %86 = getelementptr inbounds %struct._CubeInfo, ptr %47, i64 0, i32 3
  %87 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %88 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  br label %89

89:                                               ; preds = %58, %381
  %90 = phi i64 [ 0, %58 ], [ %382, %381 ]
  %91 = load i64, ptr %54, align 8, !tbaa !70
  %92 = call ptr @GetCacheViewVirtualPixels(ptr noundef %53, i64 noundef 0, i64 noundef %90, i64 noundef %91, i64 noundef 1, ptr noundef %1) #17
  %93 = icmp eq ptr %92, null
  br i1 %93, label %385, label %94

94:                                               ; preds = %89
  %95 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %53) #15
  %96 = load i64, ptr %54, align 8, !tbaa !70
  %97 = icmp sgt i64 %96, 0
  br i1 %97, label %98, label %377

98:                                               ; preds = %94
  %99 = icmp ne ptr %95, null
  %100 = icmp eq ptr %95, null
  br label %101

101:                                              ; preds = %98, %372
  %102 = phi i64 [ 0, %98 ], [ %374, %372 ]
  %103 = phi ptr [ %92, %98 ], [ %373, %372 ]
  %104 = getelementptr inbounds %struct._PixelPacket, ptr %103, i64 0, i32 2
  %105 = getelementptr inbounds %struct._PixelPacket, ptr %103, i64 0, i32 1
  %106 = getelementptr inbounds %struct._PixelPacket, ptr %103, i64 0, i32 3
  %107 = load ptr, ptr %47, align 8, !tbaa !42
  %108 = getelementptr inbounds i16, ptr %95, i64 %102
  br label %144

109:                                              ; preds = %260
  %110 = getelementptr inbounds %struct._NodeInfo, ptr %263, i64 0, i32 2
  %111 = load i64, ptr %110, align 8, !tbaa !71
  %112 = icmp sgt i64 %111, 0
  br i1 %112, label %113, label %330

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct._NodeInfo, ptr %263, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !72
  %116 = load i32, ptr %74, align 4, !tbaa !73
  %117 = icmp eq i32 %116, 12
  %118 = load i32, ptr %76, align 8
  %119 = icmp ne i32 %118, 0
  %120 = load i32, ptr %77, align 8
  %121 = icmp eq i32 %120, 0
  %122 = select i1 %119, i1 %121, i1 false
  %123 = load float, ptr %78, align 4
  %124 = call float @llvm.fabs.f32(float %123)
  %125 = fpext float %124 to double
  %126 = fcmp oge double %125, 1.000000e-15
  %127 = icmp ne i32 %120, 0
  %128 = icmp eq i32 %118, 0
  %129 = and i1 %128, %127
  %130 = select i1 %128, i1 true, i1 %121
  %131 = load float, ptr %79, align 4
  %132 = fadd float %131, -6.553500e+04
  %133 = call float @llvm.fabs.f32(float %132)
  %134 = fpext float %133 to double
  %135 = fcmp olt double %134, 1.000000e-15
  %136 = load float, ptr %80, align 8
  %137 = load float, ptr %81, align 4
  %138 = load float, ptr %82, align 8
  %139 = load i32, ptr %83, align 4
  %140 = icmp eq i32 %139, 12
  %141 = load float, ptr %84, align 8
  %142 = load float, ptr %75, align 8, !tbaa !74
  %143 = select i1 %122, i1 %126, i1 false
  br label %265

144:                                              ; preds = %101, %260
  %145 = phi ptr [ %107, %101 ], [ %263, %260 ]
  %146 = phi i64 [ 1, %101 ], [ %262, %260 ]
  %147 = phi i64 [ 7, %101 ], [ %261, %260 ]
  %148 = load i16, ptr %104, align 2, !tbaa !77
  %149 = uitofp i16 %148 to float
  store float %149, ptr %59, align 8, !tbaa !78
  %150 = load i16, ptr %105, align 2, !tbaa !79
  %151 = uitofp i16 %150 to float
  store float %151, ptr %60, align 4, !tbaa !80
  %152 = load i16, ptr %103, align 2, !tbaa !81
  %153 = uitofp i16 %152 to float
  store float %153, ptr %61, align 8, !tbaa !82
  %154 = load i16, ptr %106, align 2, !tbaa !83
  %155 = uitofp i16 %154 to float
  store float %155, ptr %62, align 4, !tbaa !84
  %156 = load i32, ptr %63, align 4, !tbaa !73
  %157 = icmp eq i32 %156, 12
  %158 = and i1 %99, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %144
  %160 = load i16, ptr %108, align 2, !tbaa !85
  %161 = uitofp i16 %160 to float
  store float %161, ptr %65, align 8, !tbaa !74
  br label %162

162:                                              ; preds = %144, %159
  switch i16 %148, label %163 [
    i16 0, label %169
    i16 -1, label %168
  ]

163:                                              ; preds = %162
  %164 = fadd float %149, 5.000000e-01
  %165 = fptoui float %164 to i16
  %166 = zext i16 %165 to i64
  %167 = add nuw nsw i64 %166, 128
  br label %169

168:                                              ; preds = %162
  br label %169

169:                                              ; preds = %162, %168, %163
  %170 = phi i64 [ %167, %163 ], [ 128, %162 ], [ 65663, %168 ]
  %171 = lshr i64 %170, 8
  %172 = sub nsw i64 %170, %171
  %173 = trunc i64 %172 to i32
  %174 = lshr i32 %173, 8
  %175 = and i32 %174, 255
  %176 = trunc i64 %147 to i32
  %177 = lshr i32 %175, %176
  %178 = and i32 %177, 1
  switch i16 %150, label %179 [
    i16 0, label %185
    i16 -1, label %184
  ]

179:                                              ; preds = %169
  %180 = fadd float %151, 5.000000e-01
  %181 = fptoui float %180 to i16
  %182 = zext i16 %181 to i64
  %183 = add nuw nsw i64 %182, 128
  br label %185

184:                                              ; preds = %169
  br label %185

185:                                              ; preds = %169, %184, %179
  %186 = phi i64 [ %183, %179 ], [ 128, %169 ], [ 65663, %184 ]
  %187 = lshr i64 %186, 8
  %188 = sub nsw i64 %186, %187
  %189 = trunc i64 %188 to i32
  %190 = lshr i32 %189, 8
  %191 = and i32 %190, 255
  %192 = lshr i32 %191, %176
  %193 = shl nuw nsw i32 %192, 1
  %194 = and i32 %193, 2
  %195 = or disjoint i32 %194, %178
  switch i16 %152, label %196 [
    i16 0, label %202
    i16 -1, label %201
  ]

196:                                              ; preds = %185
  %197 = fadd float %153, 5.000000e-01
  %198 = fptoui float %197 to i16
  %199 = zext i16 %198 to i64
  %200 = add nuw nsw i64 %199, 128
  br label %202

201:                                              ; preds = %185
  br label %202

202:                                              ; preds = %185, %201, %196
  %203 = phi i64 [ %200, %196 ], [ 128, %185 ], [ 65663, %201 ]
  %204 = lshr i64 %203, 8
  %205 = sub nsw i64 %203, %204
  %206 = trunc i64 %205 to i32
  %207 = lshr i32 %206, 8
  %208 = and i32 %207, 255
  %209 = lshr i32 %208, %176
  %210 = shl nuw nsw i32 %209, 2
  %211 = and i32 %210, 4
  %212 = or disjoint i32 %195, %211
  %213 = load i32, ptr %64, align 8, !tbaa !86
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %233, label %215

215:                                              ; preds = %202
  switch i16 %154, label %216 [
    i16 0, label %222
    i16 -1, label %221
  ]

216:                                              ; preds = %215
  %217 = fadd float %155, 5.000000e-01
  %218 = fptoui float %217 to i16
  %219 = zext i16 %218 to i64
  %220 = add nuw nsw i64 %219, 128
  br label %222

221:                                              ; preds = %215
  br label %222

222:                                              ; preds = %215, %221, %216
  %223 = phi i64 [ %220, %216 ], [ 128, %215 ], [ 65663, %221 ]
  %224 = lshr i64 %223, 8
  %225 = sub nsw i64 %223, %224
  %226 = trunc i64 %225 to i32
  %227 = lshr i32 %226, 8
  %228 = and i32 %227, 255
  %229 = lshr i32 %228, %176
  %230 = shl nuw nsw i32 %229, 3
  %231 = and i32 %230, 8
  %232 = or disjoint i32 %231, %212
  br label %233

233:                                              ; preds = %202, %222
  %234 = phi i32 [ %232, %222 ], [ %212, %202 ]
  %235 = zext nneg i32 %234 to i64
  %236 = getelementptr inbounds [16 x ptr], ptr %145, i64 0, i64 %235
  %237 = load ptr, ptr %236, align 8, !tbaa !42
  %238 = icmp eq ptr %237, null
  br i1 %238, label %239, label %260

239:                                              ; preds = %233
  %240 = load i64, ptr %66, align 8, !tbaa !64
  %241 = icmp eq i64 %240, 0
  br i1 %241, label %242, label %248

242:                                              ; preds = %239
  %243 = call dereferenceable_or_null(233480) ptr @AcquireMagickMemory(i64 noundef 233480) #16
  %244 = icmp eq ptr %243, null
  br i1 %244, label %255, label %245

245:                                              ; preds = %242
  %246 = load ptr, ptr %67, align 8, !tbaa !44
  %247 = getelementptr inbounds %struct._Nodes, ptr %243, i64 0, i32 1
  store ptr %246, ptr %247, align 8, !tbaa !45
  store ptr %243, ptr %67, align 8, !tbaa !44
  store ptr %243, ptr %68, align 8, !tbaa !65
  store i64 1536, ptr %66, align 8, !tbaa !64
  br label %248

248:                                              ; preds = %245, %239
  %249 = load i64, ptr %66, align 8, !tbaa !64
  %250 = add i64 %249, -1
  store i64 %250, ptr %66, align 8, !tbaa !64
  %251 = load ptr, ptr %69, align 8, !tbaa !65
  %252 = getelementptr inbounds %struct._NodeInfo, ptr %251, i64 1
  store ptr %252, ptr %69, align 8, !tbaa !65
  %253 = call ptr @ResetMagickMemory(ptr noundef %251, i32 noundef 0, i64 noundef 152) #15
  %254 = getelementptr inbounds %struct._NodeInfo, ptr %251, i64 0, i32 3
  store i64 %146, ptr %254, align 8, !tbaa !66
  br label %255

255:                                              ; preds = %242, %248
  %256 = phi ptr [ %251, %248 ], [ null, %242 ]
  store ptr %256, ptr %236, align 8, !tbaa !42
  %257 = icmp eq ptr %256, null
  br i1 %257, label %258, label %260

258:                                              ; preds = %255
  %259 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 719, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %88) #15
  br label %377

260:                                              ; preds = %255, %233
  %261 = add nsw i64 %147, -1
  %262 = add nuw nsw i64 %146, 1
  %263 = load ptr, ptr %236, align 8, !tbaa !42
  %264 = icmp eq i64 %262, 8
  br i1 %264, label %109, label %144, !llvm.loop !100

265:                                              ; preds = %113, %318
  %266 = phi float [ %142, %113 ], [ %286, %318 ]
  %267 = phi i1 [ %112, %113 ], [ %320, %318 ]
  %268 = phi i64 [ 0, %113 ], [ %319, %318 ]
  %269 = getelementptr inbounds %struct._ColorPacket, ptr %115, i64 %268
  %270 = getelementptr inbounds %struct._PixelPacket, ptr %269, i64 0, i32 2
  %271 = load i16, ptr %270, align 2, !tbaa !77
  %272 = uitofp i16 %271 to float
  %273 = getelementptr inbounds %struct._PixelPacket, ptr %269, i64 0, i32 1
  %274 = load i16, ptr %273, align 2, !tbaa !79
  %275 = uitofp i16 %274 to float
  %276 = load i16, ptr %269, align 2, !tbaa !81
  %277 = uitofp i16 %276 to float
  %278 = getelementptr inbounds %struct._PixelPacket, ptr %269, i64 0, i32 3
  %279 = load i16, ptr %278, align 2, !tbaa !83
  %280 = uitofp i16 %279 to float
  br i1 %117, label %281, label %285

281:                                              ; preds = %265
  %282 = getelementptr inbounds %struct._ColorPacket, ptr %115, i64 %268, i32 1
  %283 = load i16, ptr %282, align 2, !tbaa !85
  %284 = uitofp i16 %283 to float
  store float %284, ptr %75, align 8, !tbaa !74
  br label %285

285:                                              ; preds = %265, %281
  %286 = phi float [ %266, %265 ], [ %284, %281 ]
  %287 = icmp ne i16 %279, 0
  %288 = select i1 %129, i1 %287, i1 false
  %289 = select i1 %143, i1 true, i1 %288
  br i1 %289, label %318, label %290

290:                                              ; preds = %285
  br i1 %130, label %297, label %291

291:                                              ; preds = %290
  %292 = fsub float %131, %280
  %293 = call float @llvm.fabs.f32(float %292)
  %294 = fpext float %293 to double
  %295 = fcmp ult double %294, 1.000000e-15
  br i1 %295, label %296, label %318

296:                                              ; preds = %291
  br i1 %135, label %322, label %297

297:                                              ; preds = %296, %290
  %298 = fsub float %136, %272
  %299 = call float @llvm.fabs.f32(float %298)
  %300 = fpext float %299 to double
  %301 = fcmp ult double %300, 1.000000e-15
  br i1 %301, label %302, label %318

302:                                              ; preds = %297
  %303 = fsub float %137, %275
  %304 = call float @llvm.fabs.f32(float %303)
  %305 = fpext float %304 to double
  %306 = fcmp ult double %305, 1.000000e-15
  br i1 %306, label %307, label %318

307:                                              ; preds = %302
  %308 = fsub float %138, %277
  %309 = call float @llvm.fabs.f32(float %308)
  %310 = fpext float %309 to double
  %311 = fcmp ult double %310, 1.000000e-15
  br i1 %311, label %312, label %318

312:                                              ; preds = %307
  br i1 %140, label %313, label %322

313:                                              ; preds = %312
  %314 = fsub float %141, %286
  %315 = call float @llvm.fabs.f32(float %314)
  %316 = fpext float %315 to double
  %317 = fcmp ult double %316, 1.000000e-15
  br i1 %317, label %322, label %318

318:                                              ; preds = %285, %313, %307, %302, %297, %291
  %319 = add nuw nsw i64 %268, 1
  %320 = icmp slt i64 %319, %111
  %321 = icmp eq i64 %319, %111
  br i1 %321, label %329, label %265, !llvm.loop !101

322:                                              ; preds = %312, %313, %296
  store float %272, ptr %70, align 8, !tbaa !78
  store float %275, ptr %71, align 4, !tbaa !80
  store float %277, ptr %72, align 8, !tbaa !82
  store float %280, ptr %73, align 4, !tbaa !84
  br i1 %267, label %323, label %330

323:                                              ; preds = %322
  %324 = getelementptr inbounds %struct._NodeInfo, ptr %263, i64 0, i32 1
  %325 = load ptr, ptr %324, align 8, !tbaa !72
  %326 = getelementptr inbounds %struct._ColorPacket, ptr %325, i64 %268, i32 2
  %327 = load i64, ptr %326, align 8, !tbaa !92
  %328 = add i64 %327, 1
  store i64 %328, ptr %326, align 8, !tbaa !92
  br label %372

329:                                              ; preds = %318
  store float %272, ptr %70, align 8, !tbaa !78
  store float %275, ptr %71, align 4, !tbaa !80
  store float %277, ptr %72, align 8, !tbaa !82
  store float %280, ptr %73, align 4, !tbaa !84
  br label %330

330:                                              ; preds = %109, %329, %322
  %331 = phi i64 [ %268, %322 ], [ %111, %329 ], [ 0, %109 ]
  %332 = getelementptr inbounds %struct._NodeInfo, ptr %263, i64 0, i32 2
  %333 = icmp eq i64 %111, 0
  br i1 %333, label %334, label %337

334:                                              ; preds = %330
  %335 = call dereferenceable_or_null(24) ptr @AcquireMagickMemory(i64 noundef 24) #16
  %336 = getelementptr inbounds %struct._NodeInfo, ptr %263, i64 0, i32 1
  store ptr %335, ptr %336, align 8, !tbaa !72
  br label %342

337:                                              ; preds = %330
  %338 = getelementptr inbounds %struct._NodeInfo, ptr %263, i64 0, i32 1
  %339 = load ptr, ptr %338, align 8, !tbaa !72
  %340 = add nuw nsw i64 %331, 1
  %341 = call ptr @ResizeQuantumMemory(ptr noundef %339, i64 noundef %340, i64 noundef 24) #18
  store ptr %341, ptr %338, align 8, !tbaa !72
  br label %342

342:                                              ; preds = %337, %334
  %343 = getelementptr inbounds %struct._NodeInfo, ptr %263, i64 0, i32 1
  %344 = load ptr, ptr %343, align 8, !tbaa !72
  %345 = icmp eq ptr %344, null
  br i1 %345, label %346, label %348

346:                                              ; preds = %342
  %347 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 752, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %87) #15
  br label %377

348:                                              ; preds = %342
  %349 = getelementptr inbounds %struct._ColorPacket, ptr %344, i64 %331
  %350 = load i64, ptr %103, align 2
  store i64 %350, ptr %349, align 8
  %351 = load i32, ptr %85, align 4, !tbaa !73
  %352 = icmp eq i32 %351, 12
  br i1 %352, label %356, label %353

353:                                              ; preds = %348
  %354 = load i32, ptr %0, align 8, !tbaa !89
  %355 = icmp eq i32 %354, 2
  br i1 %355, label %356, label %364

356:                                              ; preds = %353, %348
  br i1 %100, label %360, label %357

357:                                              ; preds = %356
  %358 = getelementptr inbounds i16, ptr %95, i64 %102
  %359 = load i16, ptr %358, align 2, !tbaa !85
  br label %360

360:                                              ; preds = %356, %357
  %361 = phi i16 [ %359, %357 ], [ 0, %356 ]
  %362 = load ptr, ptr %343, align 8, !tbaa !72
  %363 = getelementptr inbounds %struct._ColorPacket, ptr %362, i64 %331, i32 1
  store i16 %361, ptr %363, align 8, !tbaa !90
  br label %364

364:                                              ; preds = %360, %353
  %365 = load ptr, ptr %343, align 8, !tbaa !72
  %366 = getelementptr inbounds %struct._ColorPacket, ptr %365, i64 %331, i32 2
  store i64 1, ptr %366, align 8, !tbaa !92
  %367 = load i64, ptr %332, align 8, !tbaa !71
  %368 = add i64 %367, 1
  store i64 %368, ptr %332, align 8, !tbaa !71
  %369 = load i64, ptr %86, align 8, !tbaa !38
  %370 = add i64 %369, 1
  store i64 %370, ptr %86, align 8, !tbaa !38
  %371 = icmp ugt i64 %370, 1024
  br i1 %371, label %377, label %372

372:                                              ; preds = %364, %323
  %373 = getelementptr inbounds %struct._PixelPacket, ptr %103, i64 1
  %374 = add nuw nsw i64 %102, 1
  %375 = load i64, ptr %54, align 8, !tbaa !70
  %376 = icmp slt i64 %374, %375
  br i1 %376, label %101, label %377, !llvm.loop !102

377:                                              ; preds = %372, %364, %94, %258, %346
  %378 = phi i64 [ %102, %258 ], [ %102, %346 ], [ 0, %94 ], [ %102, %364 ], [ %374, %372 ]
  %379 = load i64, ptr %54, align 8, !tbaa !70
  %380 = icmp slt i64 %378, %379
  br i1 %380, label %385, label %381

381:                                              ; preds = %377
  %382 = add nuw nsw i64 %90, 1
  %383 = load i64, ptr %55, align 8, !tbaa !68
  %384 = icmp slt i64 %382, %383
  br i1 %384, label %89, label %385, !llvm.loop !103

385:                                              ; preds = %381, %89, %377, %52
  %386 = phi i64 [ 0, %52 ], [ %382, %381 ], [ %90, %89 ], [ %90, %377 ]
  %387 = call ptr @DestroyCacheView(ptr noundef %53) #15
  %388 = load ptr, ptr %47, align 8, !tbaa !43
  call fastcc void @DestroyColorCube(ptr noundef nonnull %0, ptr noundef %388)
  %389 = getelementptr inbounds %struct._CubeInfo, ptr %47, i64 0, i32 6
  br label %390

390:                                              ; preds = %390, %385
  %391 = load ptr, ptr %389, align 8, !tbaa !44
  %392 = getelementptr inbounds %struct._Nodes, ptr %391, i64 0, i32 1
  %393 = load ptr, ptr %392, align 8, !tbaa !45
  %394 = call ptr @RelinquishMagickMemory(ptr noundef %391) #15
  store ptr %393, ptr %389, align 8, !tbaa !44
  %395 = icmp eq ptr %393, null
  br i1 %395, label %396, label %390, !llvm.loop !47

396:                                              ; preds = %390
  %397 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %398 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %47) #15
  %399 = load i64, ptr %397, align 8, !tbaa !68
  %400 = icmp sge i64 %386, %399
  br label %401

401:                                              ; preds = %14, %396, %49
  %402 = phi i1 [ false, %49 ], [ %400, %396 ], [ %17, %14 ]
  %403 = zext i1 %402 to i32
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #15
  ret i32 %403
}

declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: hot
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

declare ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #6

; Function Attrs: allocsize(1,2)
declare ptr @ResizeQuantumMemory(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #7

declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @IsPaletteImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct._MagickPixelPacket, align 8
  %4 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #15
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !50
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 842, ptr noundef nonnull @.str.4, ptr noundef nonnull %9) #15
  br label %11

11:                                               ; preds = %8, %2
  %12 = load i32, ptr %0, align 8, !tbaa !89
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %16 = load i64, ptr %15, align 8, !tbaa !99
  %17 = icmp ult i64 %16, 257
  br label %401

18:                                               ; preds = %11
  %19 = tail call dereferenceable_or_null(56) ptr @AcquireMagickMemory(i64 noundef 56) #16
  %20 = icmp eq ptr %19, null
  br i1 %20, label %46, label %21

21:                                               ; preds = %18
  %22 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %19, i32 noundef 0, i64 noundef 56) #15
  %23 = getelementptr inbounds %struct._CubeInfo, ptr %19, i64 0, i32 4
  %24 = load i64, ptr %23, align 8, !tbaa !64
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = tail call dereferenceable_or_null(233480) ptr @AcquireMagickMemory(i64 noundef 233480) #16
  %28 = icmp eq ptr %27, null
  br i1 %28, label %42, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct._CubeInfo, ptr %19, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !44
  %32 = getelementptr inbounds %struct._Nodes, ptr %27, i64 0, i32 1
  store ptr %31, ptr %32, align 8, !tbaa !45
  store ptr %27, ptr %30, align 8, !tbaa !44
  %33 = getelementptr inbounds %struct._CubeInfo, ptr %19, i64 0, i32 5
  store ptr %27, ptr %33, align 8, !tbaa !65
  store i64 1536, ptr %23, align 8, !tbaa !64
  br label %34

34:                                               ; preds = %29, %21
  %35 = load i64, ptr %23, align 8, !tbaa !64
  %36 = add i64 %35, -1
  store i64 %36, ptr %23, align 8, !tbaa !64
  %37 = getelementptr inbounds %struct._CubeInfo, ptr %19, i64 0, i32 5
  %38 = load ptr, ptr %37, align 8, !tbaa !65
  %39 = getelementptr inbounds %struct._NodeInfo, ptr %38, i64 1
  store ptr %39, ptr %37, align 8, !tbaa !65
  %40 = tail call ptr @ResetMagickMemory(ptr noundef %38, i32 noundef 0, i64 noundef 152) #15
  %41 = getelementptr inbounds %struct._NodeInfo, ptr %38, i64 0, i32 3
  store i64 0, ptr %41, align 8, !tbaa !66
  br label %42

42:                                               ; preds = %26, %34
  %43 = phi ptr [ %38, %34 ], [ null, %26 ]
  store ptr %43, ptr %19, align 8, !tbaa !43
  %44 = icmp eq ptr %43, null
  %45 = select i1 %44, ptr null, ptr %19
  br label %46

46:                                               ; preds = %18, %42
  %47 = phi ptr [ null, %18 ], [ %45, %42 ]
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %51 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 853, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %50) #15
  br label %401

52:                                               ; preds = %46
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %3) #15
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %4) #15
  %53 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %1) #15
  %54 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %55 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %56 = load i64, ptr %55, align 8, !tbaa !68
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %385

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  %60 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 6
  %61 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  %62 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  %63 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %64 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %65 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  %66 = getelementptr inbounds %struct._CubeInfo, ptr %47, i64 0, i32 4
  %67 = getelementptr inbounds %struct._CubeInfo, ptr %47, i64 0, i32 6
  %68 = getelementptr inbounds %struct._CubeInfo, ptr %47, i64 0, i32 5
  %69 = getelementptr inbounds %struct._CubeInfo, ptr %47, i64 0, i32 5
  %70 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 5
  %71 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 6
  %72 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 7
  %73 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 8
  %74 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %75 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 9
  %76 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 2
  %77 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 2
  %78 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  %79 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  %80 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  %81 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 6
  %82 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  %83 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 1
  %84 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  %85 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %86 = getelementptr inbounds %struct._CubeInfo, ptr %47, i64 0, i32 3
  %87 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %88 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  br label %89

89:                                               ; preds = %58, %381
  %90 = phi i64 [ 0, %58 ], [ %382, %381 ]
  %91 = load i64, ptr %54, align 8, !tbaa !70
  %92 = call ptr @GetCacheViewVirtualPixels(ptr noundef %53, i64 noundef 0, i64 noundef %90, i64 noundef %91, i64 noundef 1, ptr noundef %1) #17
  %93 = icmp eq ptr %92, null
  br i1 %93, label %385, label %94

94:                                               ; preds = %89
  %95 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %53) #15
  %96 = load i64, ptr %54, align 8, !tbaa !70
  %97 = icmp sgt i64 %96, 0
  br i1 %97, label %98, label %377

98:                                               ; preds = %94
  %99 = icmp ne ptr %95, null
  %100 = icmp eq ptr %95, null
  br label %101

101:                                              ; preds = %98, %372
  %102 = phi i64 [ 0, %98 ], [ %374, %372 ]
  %103 = phi ptr [ %92, %98 ], [ %373, %372 ]
  %104 = getelementptr inbounds %struct._PixelPacket, ptr %103, i64 0, i32 2
  %105 = getelementptr inbounds %struct._PixelPacket, ptr %103, i64 0, i32 1
  %106 = getelementptr inbounds %struct._PixelPacket, ptr %103, i64 0, i32 3
  %107 = load ptr, ptr %47, align 8, !tbaa !42
  %108 = getelementptr inbounds i16, ptr %95, i64 %102
  br label %144

109:                                              ; preds = %260
  %110 = getelementptr inbounds %struct._NodeInfo, ptr %263, i64 0, i32 2
  %111 = load i64, ptr %110, align 8, !tbaa !71
  %112 = icmp sgt i64 %111, 0
  br i1 %112, label %113, label %330

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct._NodeInfo, ptr %263, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !72
  %116 = load i32, ptr %74, align 4, !tbaa !73
  %117 = icmp eq i32 %116, 12
  %118 = load i32, ptr %76, align 8
  %119 = icmp ne i32 %118, 0
  %120 = load i32, ptr %77, align 8
  %121 = icmp eq i32 %120, 0
  %122 = select i1 %119, i1 %121, i1 false
  %123 = load float, ptr %78, align 4
  %124 = call float @llvm.fabs.f32(float %123)
  %125 = fpext float %124 to double
  %126 = fcmp oge double %125, 1.000000e-15
  %127 = icmp ne i32 %120, 0
  %128 = icmp eq i32 %118, 0
  %129 = and i1 %128, %127
  %130 = select i1 %128, i1 true, i1 %121
  %131 = load float, ptr %79, align 4
  %132 = fadd float %131, -6.553500e+04
  %133 = call float @llvm.fabs.f32(float %132)
  %134 = fpext float %133 to double
  %135 = fcmp olt double %134, 1.000000e-15
  %136 = load float, ptr %80, align 8
  %137 = load float, ptr %81, align 4
  %138 = load float, ptr %82, align 8
  %139 = load i32, ptr %83, align 4
  %140 = icmp eq i32 %139, 12
  %141 = load float, ptr %84, align 8
  %142 = load float, ptr %75, align 8, !tbaa !74
  %143 = select i1 %122, i1 %126, i1 false
  br label %265

144:                                              ; preds = %101, %260
  %145 = phi ptr [ %107, %101 ], [ %263, %260 ]
  %146 = phi i64 [ 1, %101 ], [ %262, %260 ]
  %147 = phi i64 [ 7, %101 ], [ %261, %260 ]
  %148 = load i16, ptr %104, align 2, !tbaa !77
  %149 = uitofp i16 %148 to float
  store float %149, ptr %59, align 8, !tbaa !78
  %150 = load i16, ptr %105, align 2, !tbaa !79
  %151 = uitofp i16 %150 to float
  store float %151, ptr %60, align 4, !tbaa !80
  %152 = load i16, ptr %103, align 2, !tbaa !81
  %153 = uitofp i16 %152 to float
  store float %153, ptr %61, align 8, !tbaa !82
  %154 = load i16, ptr %106, align 2, !tbaa !83
  %155 = uitofp i16 %154 to float
  store float %155, ptr %62, align 4, !tbaa !84
  %156 = load i32, ptr %63, align 4, !tbaa !73
  %157 = icmp eq i32 %156, 12
  %158 = and i1 %99, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %144
  %160 = load i16, ptr %108, align 2, !tbaa !85
  %161 = uitofp i16 %160 to float
  store float %161, ptr %65, align 8, !tbaa !74
  br label %162

162:                                              ; preds = %144, %159
  switch i16 %148, label %163 [
    i16 0, label %169
    i16 -1, label %168
  ]

163:                                              ; preds = %162
  %164 = fadd float %149, 5.000000e-01
  %165 = fptoui float %164 to i16
  %166 = zext i16 %165 to i64
  %167 = add nuw nsw i64 %166, 128
  br label %169

168:                                              ; preds = %162
  br label %169

169:                                              ; preds = %162, %168, %163
  %170 = phi i64 [ %167, %163 ], [ 128, %162 ], [ 65663, %168 ]
  %171 = lshr i64 %170, 8
  %172 = sub nsw i64 %170, %171
  %173 = trunc i64 %172 to i32
  %174 = lshr i32 %173, 8
  %175 = and i32 %174, 255
  %176 = trunc i64 %147 to i32
  %177 = lshr i32 %175, %176
  %178 = and i32 %177, 1
  switch i16 %150, label %179 [
    i16 0, label %185
    i16 -1, label %184
  ]

179:                                              ; preds = %169
  %180 = fadd float %151, 5.000000e-01
  %181 = fptoui float %180 to i16
  %182 = zext i16 %181 to i64
  %183 = add nuw nsw i64 %182, 128
  br label %185

184:                                              ; preds = %169
  br label %185

185:                                              ; preds = %169, %184, %179
  %186 = phi i64 [ %183, %179 ], [ 128, %169 ], [ 65663, %184 ]
  %187 = lshr i64 %186, 8
  %188 = sub nsw i64 %186, %187
  %189 = trunc i64 %188 to i32
  %190 = lshr i32 %189, 8
  %191 = and i32 %190, 255
  %192 = lshr i32 %191, %176
  %193 = shl nuw nsw i32 %192, 1
  %194 = and i32 %193, 2
  %195 = or disjoint i32 %194, %178
  switch i16 %152, label %196 [
    i16 0, label %202
    i16 -1, label %201
  ]

196:                                              ; preds = %185
  %197 = fadd float %153, 5.000000e-01
  %198 = fptoui float %197 to i16
  %199 = zext i16 %198 to i64
  %200 = add nuw nsw i64 %199, 128
  br label %202

201:                                              ; preds = %185
  br label %202

202:                                              ; preds = %185, %201, %196
  %203 = phi i64 [ %200, %196 ], [ 128, %185 ], [ 65663, %201 ]
  %204 = lshr i64 %203, 8
  %205 = sub nsw i64 %203, %204
  %206 = trunc i64 %205 to i32
  %207 = lshr i32 %206, 8
  %208 = and i32 %207, 255
  %209 = lshr i32 %208, %176
  %210 = shl nuw nsw i32 %209, 2
  %211 = and i32 %210, 4
  %212 = or disjoint i32 %195, %211
  %213 = load i32, ptr %64, align 8, !tbaa !86
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %233, label %215

215:                                              ; preds = %202
  switch i16 %154, label %216 [
    i16 0, label %222
    i16 -1, label %221
  ]

216:                                              ; preds = %215
  %217 = fadd float %155, 5.000000e-01
  %218 = fptoui float %217 to i16
  %219 = zext i16 %218 to i64
  %220 = add nuw nsw i64 %219, 128
  br label %222

221:                                              ; preds = %215
  br label %222

222:                                              ; preds = %215, %221, %216
  %223 = phi i64 [ %220, %216 ], [ 128, %215 ], [ 65663, %221 ]
  %224 = lshr i64 %223, 8
  %225 = sub nsw i64 %223, %224
  %226 = trunc i64 %225 to i32
  %227 = lshr i32 %226, 8
  %228 = and i32 %227, 255
  %229 = lshr i32 %228, %176
  %230 = shl nuw nsw i32 %229, 3
  %231 = and i32 %230, 8
  %232 = or disjoint i32 %231, %212
  br label %233

233:                                              ; preds = %202, %222
  %234 = phi i32 [ %232, %222 ], [ %212, %202 ]
  %235 = zext nneg i32 %234 to i64
  %236 = getelementptr inbounds [16 x ptr], ptr %145, i64 0, i64 %235
  %237 = load ptr, ptr %236, align 8, !tbaa !42
  %238 = icmp eq ptr %237, null
  br i1 %238, label %239, label %260

239:                                              ; preds = %233
  %240 = load i64, ptr %66, align 8, !tbaa !64
  %241 = icmp eq i64 %240, 0
  br i1 %241, label %242, label %248

242:                                              ; preds = %239
  %243 = call dereferenceable_or_null(233480) ptr @AcquireMagickMemory(i64 noundef 233480) #16
  %244 = icmp eq ptr %243, null
  br i1 %244, label %255, label %245

245:                                              ; preds = %242
  %246 = load ptr, ptr %67, align 8, !tbaa !44
  %247 = getelementptr inbounds %struct._Nodes, ptr %243, i64 0, i32 1
  store ptr %246, ptr %247, align 8, !tbaa !45
  store ptr %243, ptr %67, align 8, !tbaa !44
  store ptr %243, ptr %68, align 8, !tbaa !65
  store i64 1536, ptr %66, align 8, !tbaa !64
  br label %248

248:                                              ; preds = %245, %239
  %249 = load i64, ptr %66, align 8, !tbaa !64
  %250 = add i64 %249, -1
  store i64 %250, ptr %66, align 8, !tbaa !64
  %251 = load ptr, ptr %69, align 8, !tbaa !65
  %252 = getelementptr inbounds %struct._NodeInfo, ptr %251, i64 1
  store ptr %252, ptr %69, align 8, !tbaa !65
  %253 = call ptr @ResetMagickMemory(ptr noundef %251, i32 noundef 0, i64 noundef 152) #15
  %254 = getelementptr inbounds %struct._NodeInfo, ptr %251, i64 0, i32 3
  store i64 %146, ptr %254, align 8, !tbaa !66
  br label %255

255:                                              ; preds = %242, %248
  %256 = phi ptr [ %251, %248 ], [ null, %242 ]
  store ptr %256, ptr %236, align 8, !tbaa !42
  %257 = icmp eq ptr %256, null
  br i1 %257, label %258, label %260

258:                                              ; preds = %255
  %259 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 882, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %88) #15
  br label %377

260:                                              ; preds = %255, %233
  %261 = add nsw i64 %147, -1
  %262 = add nuw nsw i64 %146, 1
  %263 = load ptr, ptr %236, align 8, !tbaa !42
  %264 = icmp eq i64 %262, 8
  br i1 %264, label %109, label %144, !llvm.loop !104

265:                                              ; preds = %113, %318
  %266 = phi float [ %142, %113 ], [ %286, %318 ]
  %267 = phi i1 [ %112, %113 ], [ %320, %318 ]
  %268 = phi i64 [ 0, %113 ], [ %319, %318 ]
  %269 = getelementptr inbounds %struct._ColorPacket, ptr %115, i64 %268
  %270 = getelementptr inbounds %struct._PixelPacket, ptr %269, i64 0, i32 2
  %271 = load i16, ptr %270, align 2, !tbaa !77
  %272 = uitofp i16 %271 to float
  %273 = getelementptr inbounds %struct._PixelPacket, ptr %269, i64 0, i32 1
  %274 = load i16, ptr %273, align 2, !tbaa !79
  %275 = uitofp i16 %274 to float
  %276 = load i16, ptr %269, align 2, !tbaa !81
  %277 = uitofp i16 %276 to float
  %278 = getelementptr inbounds %struct._PixelPacket, ptr %269, i64 0, i32 3
  %279 = load i16, ptr %278, align 2, !tbaa !83
  %280 = uitofp i16 %279 to float
  br i1 %117, label %281, label %285

281:                                              ; preds = %265
  %282 = getelementptr inbounds %struct._ColorPacket, ptr %115, i64 %268, i32 1
  %283 = load i16, ptr %282, align 2, !tbaa !85
  %284 = uitofp i16 %283 to float
  store float %284, ptr %75, align 8, !tbaa !74
  br label %285

285:                                              ; preds = %265, %281
  %286 = phi float [ %266, %265 ], [ %284, %281 ]
  %287 = icmp ne i16 %279, 0
  %288 = select i1 %129, i1 %287, i1 false
  %289 = select i1 %143, i1 true, i1 %288
  br i1 %289, label %318, label %290

290:                                              ; preds = %285
  br i1 %130, label %297, label %291

291:                                              ; preds = %290
  %292 = fsub float %131, %280
  %293 = call float @llvm.fabs.f32(float %292)
  %294 = fpext float %293 to double
  %295 = fcmp ult double %294, 1.000000e-15
  br i1 %295, label %296, label %318

296:                                              ; preds = %291
  br i1 %135, label %322, label %297

297:                                              ; preds = %296, %290
  %298 = fsub float %136, %272
  %299 = call float @llvm.fabs.f32(float %298)
  %300 = fpext float %299 to double
  %301 = fcmp ult double %300, 1.000000e-15
  br i1 %301, label %302, label %318

302:                                              ; preds = %297
  %303 = fsub float %137, %275
  %304 = call float @llvm.fabs.f32(float %303)
  %305 = fpext float %304 to double
  %306 = fcmp ult double %305, 1.000000e-15
  br i1 %306, label %307, label %318

307:                                              ; preds = %302
  %308 = fsub float %138, %277
  %309 = call float @llvm.fabs.f32(float %308)
  %310 = fpext float %309 to double
  %311 = fcmp ult double %310, 1.000000e-15
  br i1 %311, label %312, label %318

312:                                              ; preds = %307
  br i1 %140, label %313, label %322

313:                                              ; preds = %312
  %314 = fsub float %141, %286
  %315 = call float @llvm.fabs.f32(float %314)
  %316 = fpext float %315 to double
  %317 = fcmp ult double %316, 1.000000e-15
  br i1 %317, label %322, label %318

318:                                              ; preds = %285, %313, %307, %302, %297, %291
  %319 = add nuw nsw i64 %268, 1
  %320 = icmp slt i64 %319, %111
  %321 = icmp eq i64 %319, %111
  br i1 %321, label %329, label %265, !llvm.loop !105

322:                                              ; preds = %312, %313, %296
  store float %272, ptr %70, align 8, !tbaa !78
  store float %275, ptr %71, align 4, !tbaa !80
  store float %277, ptr %72, align 8, !tbaa !82
  store float %280, ptr %73, align 4, !tbaa !84
  br i1 %267, label %323, label %330

323:                                              ; preds = %322
  %324 = getelementptr inbounds %struct._NodeInfo, ptr %263, i64 0, i32 1
  %325 = load ptr, ptr %324, align 8, !tbaa !72
  %326 = getelementptr inbounds %struct._ColorPacket, ptr %325, i64 %268, i32 2
  %327 = load i64, ptr %326, align 8, !tbaa !92
  %328 = add i64 %327, 1
  store i64 %328, ptr %326, align 8, !tbaa !92
  br label %372

329:                                              ; preds = %318
  store float %272, ptr %70, align 8, !tbaa !78
  store float %275, ptr %71, align 4, !tbaa !80
  store float %277, ptr %72, align 8, !tbaa !82
  store float %280, ptr %73, align 4, !tbaa !84
  br label %330

330:                                              ; preds = %109, %329, %322
  %331 = phi i64 [ %268, %322 ], [ %111, %329 ], [ 0, %109 ]
  %332 = getelementptr inbounds %struct._NodeInfo, ptr %263, i64 0, i32 2
  %333 = icmp eq i64 %111, 0
  br i1 %333, label %334, label %337

334:                                              ; preds = %330
  %335 = call dereferenceable_or_null(24) ptr @AcquireMagickMemory(i64 noundef 24) #16
  %336 = getelementptr inbounds %struct._NodeInfo, ptr %263, i64 0, i32 1
  store ptr %335, ptr %336, align 8, !tbaa !72
  br label %342

337:                                              ; preds = %330
  %338 = getelementptr inbounds %struct._NodeInfo, ptr %263, i64 0, i32 1
  %339 = load ptr, ptr %338, align 8, !tbaa !72
  %340 = add nuw nsw i64 %331, 1
  %341 = call ptr @ResizeQuantumMemory(ptr noundef %339, i64 noundef %340, i64 noundef 24) #18
  store ptr %341, ptr %338, align 8, !tbaa !72
  br label %342

342:                                              ; preds = %337, %334
  %343 = getelementptr inbounds %struct._NodeInfo, ptr %263, i64 0, i32 1
  %344 = load ptr, ptr %343, align 8, !tbaa !72
  %345 = icmp eq ptr %344, null
  br i1 %345, label %346, label %348

346:                                              ; preds = %342
  %347 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 915, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %87) #15
  br label %377

348:                                              ; preds = %342
  %349 = getelementptr inbounds %struct._ColorPacket, ptr %344, i64 %331
  %350 = load i64, ptr %103, align 2
  store i64 %350, ptr %349, align 8
  %351 = load i32, ptr %85, align 4, !tbaa !73
  %352 = icmp eq i32 %351, 12
  br i1 %352, label %356, label %353

353:                                              ; preds = %348
  %354 = load i32, ptr %0, align 8, !tbaa !89
  %355 = icmp eq i32 %354, 2
  br i1 %355, label %356, label %364

356:                                              ; preds = %353, %348
  br i1 %100, label %360, label %357

357:                                              ; preds = %356
  %358 = getelementptr inbounds i16, ptr %95, i64 %102
  %359 = load i16, ptr %358, align 2, !tbaa !85
  br label %360

360:                                              ; preds = %356, %357
  %361 = phi i16 [ %359, %357 ], [ 0, %356 ]
  %362 = load ptr, ptr %343, align 8, !tbaa !72
  %363 = getelementptr inbounds %struct._ColorPacket, ptr %362, i64 %331, i32 1
  store i16 %361, ptr %363, align 8, !tbaa !90
  br label %364

364:                                              ; preds = %360, %353
  %365 = load ptr, ptr %343, align 8, !tbaa !72
  %366 = getelementptr inbounds %struct._ColorPacket, ptr %365, i64 %331, i32 2
  store i64 1, ptr %366, align 8, !tbaa !92
  %367 = load i64, ptr %332, align 8, !tbaa !71
  %368 = add i64 %367, 1
  store i64 %368, ptr %332, align 8, !tbaa !71
  %369 = load i64, ptr %86, align 8, !tbaa !38
  %370 = add i64 %369, 1
  store i64 %370, ptr %86, align 8, !tbaa !38
  %371 = icmp ugt i64 %370, 256
  br i1 %371, label %377, label %372

372:                                              ; preds = %364, %323
  %373 = getelementptr inbounds %struct._PixelPacket, ptr %103, i64 1
  %374 = add nuw nsw i64 %102, 1
  %375 = load i64, ptr %54, align 8, !tbaa !70
  %376 = icmp slt i64 %374, %375
  br i1 %376, label %101, label %377, !llvm.loop !106

377:                                              ; preds = %372, %364, %94, %258, %346
  %378 = phi i64 [ %102, %258 ], [ %102, %346 ], [ 0, %94 ], [ %102, %364 ], [ %374, %372 ]
  %379 = load i64, ptr %54, align 8, !tbaa !70
  %380 = icmp slt i64 %378, %379
  br i1 %380, label %385, label %381

381:                                              ; preds = %377
  %382 = add nuw nsw i64 %90, 1
  %383 = load i64, ptr %55, align 8, !tbaa !68
  %384 = icmp slt i64 %382, %383
  br i1 %384, label %89, label %385, !llvm.loop !107

385:                                              ; preds = %381, %89, %377, %52
  %386 = phi i64 [ 0, %52 ], [ %382, %381 ], [ %90, %89 ], [ %90, %377 ]
  %387 = call ptr @DestroyCacheView(ptr noundef %53) #15
  %388 = load ptr, ptr %47, align 8, !tbaa !43
  call fastcc void @DestroyColorCube(ptr noundef nonnull %0, ptr noundef %388)
  %389 = getelementptr inbounds %struct._CubeInfo, ptr %47, i64 0, i32 6
  br label %390

390:                                              ; preds = %390, %385
  %391 = load ptr, ptr %389, align 8, !tbaa !44
  %392 = getelementptr inbounds %struct._Nodes, ptr %391, i64 0, i32 1
  %393 = load ptr, ptr %392, align 8, !tbaa !45
  %394 = call ptr @RelinquishMagickMemory(ptr noundef %391) #15
  store ptr %393, ptr %389, align 8, !tbaa !44
  %395 = icmp eq ptr %393, null
  br i1 %395, label %396, label %390, !llvm.loop !47

396:                                              ; preds = %390
  %397 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %398 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %47) #15
  %399 = load i64, ptr %397, align 8, !tbaa !68
  %400 = icmp sge i64 %386, %399
  br label %401

401:                                              ; preds = %14, %396, %49
  %402 = phi i1 [ false, %49 ], [ %400, %396 ], [ %17, %14 ]
  %403 = zext i1 %402 to i32
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #15
  ret i32 %403
}

; Function Attrs: nounwind uwtable
define dso_local i32 @MinMaxStretchImage(ptr noundef %0, i32 noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #0 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #15
  %7 = and i32 %1, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %22, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %11 = call i32 @GetImageChannelRange(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %10) #15
  %12 = load double, ptr %5, align 8, !tbaa !108
  %13 = fadd double %12, %2
  store double %13, ptr %5, align 8, !tbaa !108
  %14 = load double, ptr %6, align 8, !tbaa !108
  %15 = fsub double %14, %3
  store double %15, ptr %6, align 8, !tbaa !108
  %16 = fsub double %13, %15
  %17 = call double @llvm.fabs.f64(double %16)
  %18 = fcmp ult double %17, 1.000000e-15
  br i1 %18, label %118, label %19

19:                                               ; preds = %9
  %20 = call i32 @LevelImageChannel(ptr noundef %0, i32 noundef %1, double noundef %13, double noundef %15, double noundef 1.000000e+00) #15
  %21 = and i32 %20, 1
  br label %118

22:                                               ; preds = %4
  %23 = and i32 %1, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %27 = call i32 @GetImageChannelRange(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %26) #15
  %28 = load double, ptr %5, align 8, !tbaa !108
  %29 = fadd double %28, %2
  store double %29, ptr %5, align 8, !tbaa !108
  %30 = load double, ptr %6, align 8, !tbaa !108
  %31 = fsub double %30, %3
  store double %31, ptr %6, align 8, !tbaa !108
  %32 = fsub double %29, %31
  %33 = call double @llvm.fabs.f64(double %32)
  %34 = fcmp ult double %33, 1.000000e-15
  br i1 %34, label %38, label %35

35:                                               ; preds = %25
  %36 = call i32 @LevelImageChannel(ptr noundef %0, i32 noundef 1, double noundef %29, double noundef %31, double noundef 1.000000e+00) #15
  %37 = and i32 %36, 1
  br label %38

38:                                               ; preds = %25, %35, %22
  %39 = phi i32 [ %37, %35 ], [ 1, %25 ], [ 1, %22 ]
  %40 = and i32 %1, 2
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %55, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %44 = call i32 @GetImageChannelRange(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %43) #15
  %45 = load double, ptr %5, align 8, !tbaa !108
  %46 = fadd double %45, %2
  store double %46, ptr %5, align 8, !tbaa !108
  %47 = load double, ptr %6, align 8, !tbaa !108
  %48 = fsub double %47, %3
  store double %48, ptr %6, align 8, !tbaa !108
  %49 = fsub double %46, %48
  %50 = call double @llvm.fabs.f64(double %49)
  %51 = fcmp ult double %50, 1.000000e-15
  br i1 %51, label %55, label %52

52:                                               ; preds = %42
  %53 = call i32 @LevelImageChannel(ptr noundef %0, i32 noundef 2, double noundef %46, double noundef %48, double noundef 1.000000e+00) #15
  %54 = and i32 %53, %39
  br label %55

55:                                               ; preds = %42, %52, %38
  %56 = phi i32 [ %54, %52 ], [ %39, %42 ], [ %39, %38 ]
  %57 = and i32 %1, 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %72, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %61 = call i32 @GetImageChannelRange(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %60) #15
  %62 = load double, ptr %5, align 8, !tbaa !108
  %63 = fadd double %62, %2
  store double %63, ptr %5, align 8, !tbaa !108
  %64 = load double, ptr %6, align 8, !tbaa !108
  %65 = fsub double %64, %3
  store double %65, ptr %6, align 8, !tbaa !108
  %66 = fsub double %63, %65
  %67 = call double @llvm.fabs.f64(double %66)
  %68 = fcmp ult double %67, 1.000000e-15
  br i1 %68, label %72, label %69

69:                                               ; preds = %59
  %70 = call i32 @LevelImageChannel(ptr noundef %0, i32 noundef 4, double noundef %63, double noundef %65, double noundef 1.000000e+00) #15
  %71 = and i32 %70, %56
  br label %72

72:                                               ; preds = %59, %69, %55
  %73 = phi i32 [ %71, %69 ], [ %56, %59 ], [ %56, %55 ]
  %74 = and i32 %1, 8
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %93, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %78 = load i32, ptr %77, align 8, !tbaa !86
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %93, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %82 = call i32 @GetImageChannelRange(ptr noundef %0, i32 noundef 8, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %81) #15
  %83 = load double, ptr %5, align 8, !tbaa !108
  %84 = fadd double %83, %2
  store double %84, ptr %5, align 8, !tbaa !108
  %85 = load double, ptr %6, align 8, !tbaa !108
  %86 = fsub double %85, %3
  store double %86, ptr %6, align 8, !tbaa !108
  %87 = fsub double %84, %86
  %88 = call double @llvm.fabs.f64(double %87)
  %89 = fcmp ult double %88, 1.000000e-15
  br i1 %89, label %93, label %90

90:                                               ; preds = %80
  %91 = call i32 @LevelImageChannel(ptr noundef %0, i32 noundef 8, double noundef %84, double noundef %86, double noundef 1.000000e+00) #15
  %92 = and i32 %91, %73
  br label %93

93:                                               ; preds = %80, %90, %76, %72
  %94 = phi i32 [ %92, %90 ], [ %73, %80 ], [ %73, %76 ], [ %73, %72 ]
  %95 = and i32 %1, 32
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %114, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %99 = load i32, ptr %98, align 4, !tbaa !73
  %100 = icmp eq i32 %99, 12
  br i1 %100, label %101, label %114

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %103 = call i32 @GetImageChannelRange(ptr noundef %0, i32 noundef 32, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %102) #15
  %104 = load double, ptr %5, align 8, !tbaa !108
  %105 = fadd double %104, %2
  store double %105, ptr %5, align 8, !tbaa !108
  %106 = load double, ptr %6, align 8, !tbaa !108
  %107 = fsub double %106, %3
  store double %107, ptr %6, align 8, !tbaa !108
  %108 = fsub double %105, %107
  %109 = call double @llvm.fabs.f64(double %108)
  %110 = fcmp ult double %109, 1.000000e-15
  br i1 %110, label %114, label %111

111:                                              ; preds = %101
  %112 = call i32 @LevelImageChannel(ptr noundef %0, i32 noundef 32, double noundef %105, double noundef %107, double noundef 1.000000e+00) #15
  %113 = and i32 %112, %94
  br label %114

114:                                              ; preds = %101, %111, %97, %93
  %115 = phi i32 [ %113, %111 ], [ %94, %101 ], [ %94, %97 ], [ %94, %93 ]
  %116 = icmp ne i32 %115, 0
  %117 = zext i1 %116 to i32
  br label %118

118:                                              ; preds = %9, %19, %114
  %119 = phi i32 [ %117, %114 ], [ %21, %19 ], [ 1, %9 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  ret i32 %119
}

declare i32 @GetImageChannelRange(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #8

declare i32 @LevelImageChannel(ptr noundef, i32 noundef, double noundef, double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i64 @GetNumberColors(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  %5 = alloca [4096 x i8], align 16
  %6 = alloca [4096 x i8], align 16
  %7 = alloca [4096 x i8], align 16
  %8 = alloca %struct._MagickPixelPacket, align 8
  %9 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #15
  store i64 0, ptr %9, align 8, !tbaa !34
  %10 = icmp eq ptr %1, null
  br i1 %10, label %11, label %29

11:                                               ; preds = %3
  %12 = tail call fastcc ptr @ClassifyImageColors(ptr noundef %0, ptr noundef %2)
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct._CubeInfo, ptr %12, i64 0, i32 3
  %16 = load i64, ptr %15, align 8, !tbaa !38
  store i64 %16, ptr %9, align 8, !tbaa !34
  br label %17

17:                                               ; preds = %14, %11
  %18 = load ptr, ptr %12, align 8, !tbaa !43
  tail call fastcc void @DestroyColorCube(ptr noundef %0, ptr noundef %18)
  %19 = getelementptr inbounds %struct._CubeInfo, ptr %12, i64 0, i32 6
  br label %20

20:                                               ; preds = %20, %17
  %21 = load ptr, ptr %19, align 8, !tbaa !44
  %22 = getelementptr inbounds %struct._Nodes, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !45
  %24 = tail call ptr @RelinquishMagickMemory(ptr noundef %21) #15
  store ptr %23, ptr %19, align 8, !tbaa !44
  %25 = icmp eq ptr %23, null
  br i1 %25, label %26, label %20, !llvm.loop !47

26:                                               ; preds = %20
  %27 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %12) #15
  %28 = load i64, ptr %9, align 8, !tbaa !34
  br label %110

29:                                               ; preds = %3
  %30 = call ptr @GetImageHistogram(ptr noundef %0, ptr noundef nonnull %9, ptr noundef %2)
  %31 = icmp eq ptr %30, null
  %32 = load i64, ptr %9, align 8
  br i1 %31, label %110, label %33

33:                                               ; preds = %29
  tail call void @qsort(ptr noundef nonnull %30, i64 noundef %32, i64 noundef 24, ptr noundef nonnull @HistogramCompare) #15
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %8) #15
  %34 = icmp sgt i64 %32, 0
  br i1 %34, label %35, label %106

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 5
  %37 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 6
  %38 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 7
  %39 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 8
  %40 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %41 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 9
  %42 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 1
  %43 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 2
  %44 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %45 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %46 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %47

47:                                               ; preds = %35, %98
  %48 = phi i64 [ 0, %35 ], [ %101, %98 ]
  %49 = phi ptr [ %30, %35 ], [ %100, %98 ]
  %50 = phi i32 [ 1, %35 ], [ %99, %98 ]
  %51 = getelementptr inbounds %struct._PixelPacket, ptr %49, i64 0, i32 2
  %52 = load i16, ptr %51, align 2, !tbaa !77
  %53 = uitofp i16 %52 to float
  store float %53, ptr %36, align 8, !tbaa !78
  %54 = getelementptr inbounds %struct._PixelPacket, ptr %49, i64 0, i32 1
  %55 = load i16, ptr %54, align 2, !tbaa !79
  %56 = uitofp i16 %55 to float
  store float %56, ptr %37, align 4, !tbaa !80
  %57 = load i16, ptr %49, align 2, !tbaa !81
  %58 = uitofp i16 %57 to float
  store float %58, ptr %38, align 8, !tbaa !82
  %59 = getelementptr inbounds %struct._PixelPacket, ptr %49, i64 0, i32 3
  %60 = load i16, ptr %59, align 2, !tbaa !83
  %61 = uitofp i16 %60 to float
  store float %61, ptr %39, align 4, !tbaa !84
  %62 = load i32, ptr %40, align 4, !tbaa !73
  %63 = icmp eq i32 %62, 12
  br i1 %63, label %64, label %68

64:                                               ; preds = %47
  %65 = getelementptr inbounds %struct._ColorPacket, ptr %49, i64 0, i32 1
  %66 = load i16, ptr %65, align 2, !tbaa !85
  %67 = uitofp i16 %66 to float
  store float %67, ptr %41, align 8, !tbaa !74
  br label %68

68:                                               ; preds = %47, %64
  %69 = call i64 @CopyMagickString(ptr noundef nonnull %7, ptr noundef nonnull @.str.5, i64 noundef 4096) #15
  call void @ConcatenateColorComponent(ptr noundef nonnull %8, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %7) #15
  %70 = call i64 @ConcatenateMagickString(ptr noundef nonnull %7, ptr noundef nonnull @.str.6, i64 noundef 4096) #15
  call void @ConcatenateColorComponent(ptr noundef nonnull %8, i32 noundef 2, i32 noundef 2, ptr noundef nonnull %7) #15
  %71 = call i64 @ConcatenateMagickString(ptr noundef nonnull %7, ptr noundef nonnull @.str.6, i64 noundef 4096) #15
  call void @ConcatenateColorComponent(ptr noundef nonnull %8, i32 noundef 4, i32 noundef 2, ptr noundef nonnull %7) #15
  %72 = load i32, ptr %42, align 4, !tbaa !109
  %73 = icmp eq i32 %72, 12
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = call i64 @ConcatenateMagickString(ptr noundef nonnull %7, ptr noundef nonnull @.str.6, i64 noundef 4096) #15
  call void @ConcatenateColorComponent(ptr noundef nonnull %8, i32 noundef 32, i32 noundef 2, ptr noundef nonnull %7) #15
  br label %76

76:                                               ; preds = %74, %68
  %77 = load i32, ptr %43, align 8, !tbaa !110
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %76
  %80 = call i64 @ConcatenateMagickString(ptr noundef nonnull %7, ptr noundef nonnull @.str.6, i64 noundef 4096) #15
  call void @ConcatenateColorComponent(ptr noundef nonnull %8, i32 noundef 8, i32 noundef 2, ptr noundef nonnull %7) #15
  br label %81

81:                                               ; preds = %79, %76
  %82 = call i64 @ConcatenateMagickString(ptr noundef nonnull %7, ptr noundef nonnull @.str.7, i64 noundef 4096) #15
  %83 = call i32 @QueryMagickColorname(ptr noundef %0, ptr noundef nonnull %8, i32 noundef 1, ptr noundef nonnull %5, ptr noundef %2) #15
  call void @GetColorTuple(ptr noundef nonnull %8, i32 noundef 1, ptr noundef nonnull %6) #15
  %84 = getelementptr inbounds %struct._ColorPacket, ptr %49, i64 0, i32 2
  %85 = load i64, ptr %84, align 8, !tbaa !92
  %86 = sitofp i64 %85 to double
  %87 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef nonnull %1, ptr noundef nonnull @.str.8, double noundef %86) #15
  %88 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef nonnull %1, ptr noundef nonnull @.str.9, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %5) #15
  %89 = load ptr, ptr %44, align 8, !tbaa !95
  %90 = icmp eq ptr %89, null
  br i1 %90, label %98, label %91

91:                                               ; preds = %81
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #15
  %92 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10, ptr noundef nonnull %45) #15
  %93 = load ptr, ptr %44, align 8, !tbaa !95
  %94 = load ptr, ptr %46, align 8, !tbaa !96
  %95 = call i32 %93(ptr noundef nonnull %4, i64 noundef %48, i64 noundef %32, ptr noundef %94) #15
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #15
  %96 = icmp eq i32 %95, 0
  %97 = select i1 %96, i32 0, i32 %50
  br label %98

98:                                               ; preds = %91, %81
  %99 = phi i32 [ %97, %91 ], [ %50, %81 ]
  %100 = getelementptr inbounds %struct._ColorPacket, ptr %49, i64 1
  %101 = add nuw nsw i64 %48, 1
  %102 = icmp eq i64 %101, %32
  br i1 %102, label %103, label %47, !llvm.loop !111

103:                                              ; preds = %98
  %104 = icmp eq i32 %99, 0
  %105 = select i1 %104, i64 0, i64 %32
  br label %106

106:                                              ; preds = %103, %33
  %107 = phi i64 [ %32, %33 ], [ %105, %103 ]
  %108 = call i32 @fflush(ptr noundef nonnull %1)
  %109 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %30) #15
  br label %110

110:                                              ; preds = %29, %106, %26
  %111 = phi i64 [ %28, %26 ], [ %107, %106 ], [ %32, %29 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #15
  ret i64 %111
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @HistogramCompare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #10 {
  %3 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 2
  %4 = load i16, ptr %3, align 4, !tbaa !112
  %5 = getelementptr inbounds %struct._PixelPacket, ptr %0, i64 0, i32 2
  %6 = load i16, ptr %5, align 4, !tbaa !112
  %7 = icmp eq i16 %4, %6
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = zext i16 %6 to i32
  %10 = zext i16 %4 to i32
  %11 = sub nsw i32 %9, %10
  br label %38

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 1
  %14 = load i16, ptr %13, align 2, !tbaa !113
  %15 = getelementptr inbounds %struct._PixelPacket, ptr %0, i64 0, i32 1
  %16 = load i16, ptr %15, align 2, !tbaa !113
  %17 = icmp eq i16 %14, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %12
  %19 = zext i16 %16 to i32
  %20 = zext i16 %14 to i32
  %21 = sub nsw i32 %19, %20
  br label %38

22:                                               ; preds = %12
  %23 = load i16, ptr %1, align 8, !tbaa !114
  %24 = load i16, ptr %0, align 8, !tbaa !114
  %25 = icmp eq i16 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = zext i16 %24 to i32
  %28 = zext i16 %23 to i32
  %29 = sub nsw i32 %27, %28
  br label %38

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct._ColorPacket, ptr %1, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !92
  %33 = trunc i64 %32 to i32
  %34 = getelementptr inbounds %struct._ColorPacket, ptr %0, i64 0, i32 2
  %35 = load i64, ptr %34, align 8, !tbaa !92
  %36 = trunc i64 %35 to i32
  %37 = sub nsw i32 %33, %36
  br label %38

38:                                               ; preds = %30, %26, %18, %8
  %39 = phi i32 [ %11, %8 ], [ %21, %18 ], [ %29, %26 ], [ %37, %30 ]
  ret i32 %39
}

declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @ConcatenateColorComponent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i64 @ConcatenateMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @QueryMagickColorname(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @GetColorTuple(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i64 @FormatLocaleFile(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @SetImageProgress(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #11 {
  %5 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #15
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %7 = load ptr, ptr %6, align 8, !tbaa !95
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.12, ptr noundef %1, ptr noundef nonnull %10) #15
  %12 = load ptr, ptr %6, align 8, !tbaa !95
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  %14 = load ptr, ptr %13, align 8, !tbaa !96
  %15 = call i32 %12(ptr noundef nonnull %5, i64 noundef %2, i64 noundef %3, ptr noundef %14) #15
  br label %16

16:                                               ; preds = %4, %9
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #15
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #12

declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @UniqueImageColors(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @ClassifyImageColors(ptr noundef %0, ptr noundef %1)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %39, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct._CubeInfo, ptr %3, i64 0, i32 3
  %7 = load i64, ptr %6, align 8, !tbaa !38
  %8 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef %7, i64 noundef 1, i32 noundef 1, ptr noundef %1) #15
  %9 = icmp eq ptr %8, null
  br i1 %9, label %39, label %10

10:                                               ; preds = %5
  %11 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %8, i32 noundef 1) #15
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct._Image, ptr %8, i64 0, i32 58
  tail call void @InheritException(ptr noundef %1, ptr noundef nonnull %14) #15
  %15 = tail call ptr @DestroyImage(ptr noundef nonnull %8) #15
  br label %39

16:                                               ; preds = %10
  %17 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %8, ptr noundef %1) #15
  %18 = load ptr, ptr %3, align 8, !tbaa !43
  tail call fastcc void @UniqueColorsToImage(ptr noundef nonnull %8, ptr noundef %17, ptr noundef nonnull %3, ptr noundef %18, ptr noundef %1)
  %19 = tail call ptr @DestroyCacheView(ptr noundef %17) #15
  %20 = load i64, ptr %6, align 8, !tbaa !38
  %21 = icmp ult i64 %20, 65536
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = tail call ptr @AcquireQuantizeInfo(ptr noundef null) #15
  store i64 65536, ptr %23, align 8, !tbaa !115
  %24 = getelementptr inbounds %struct._QuantizeInfo, ptr %23, i64 0, i32 2
  store i32 0, ptr %24, align 8, !tbaa !117
  %25 = getelementptr inbounds %struct._QuantizeInfo, ptr %23, i64 0, i32 1
  store i64 8, ptr %25, align 8, !tbaa !118
  %26 = tail call i32 @QuantizeImage(ptr noundef nonnull %23, ptr noundef nonnull %8) #15
  %27 = tail call ptr @DestroyQuantizeInfo(ptr noundef nonnull %23) #15
  br label %28

28:                                               ; preds = %22, %16
  %29 = load ptr, ptr %3, align 8, !tbaa !43
  tail call fastcc void @DestroyColorCube(ptr noundef %0, ptr noundef %29)
  %30 = getelementptr inbounds %struct._CubeInfo, ptr %3, i64 0, i32 6
  br label %31

31:                                               ; preds = %31, %28
  %32 = load ptr, ptr %30, align 8, !tbaa !44
  %33 = getelementptr inbounds %struct._Nodes, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !45
  %35 = tail call ptr @RelinquishMagickMemory(ptr noundef %32) #15
  store ptr %34, ptr %30, align 8, !tbaa !44
  %36 = icmp eq ptr %34, null
  br i1 %36, label %37, label %31, !llvm.loop !47

37:                                               ; preds = %31
  %38 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %3) #15
  br label %39

39:                                               ; preds = %5, %2, %37, %13
  %40 = phi ptr [ null, %13 ], [ %8, %37 ], [ null, %2 ], [ null, %5 ]
  ret ptr %40
}

declare ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @SetImageStorageClass(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @InheritException(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @DestroyImage(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @UniqueColorsToImage(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !86
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %8, i64 8, i64 16
  br label %10

10:                                               ; preds = %5, %16
  %11 = phi i64 [ 0, %5 ], [ %17, %16 ]
  %12 = getelementptr inbounds [16 x ptr], ptr %3, i64 0, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !42
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call fastcc void @UniqueColorsToImage(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %13, ptr noundef %4)
  br label %16

16:                                               ; preds = %10, %15
  %17 = add nuw nsw i64 %11, 1
  %18 = icmp eq i64 %17, %9
  br i1 %18, label %19, label %10, !llvm.loop !119

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct._NodeInfo, ptr %3, i64 0, i32 3
  %21 = load i64, ptr %20, align 8, !tbaa !66
  %22 = icmp eq i64 %21, 7
  br i1 %22, label %23, label %71

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._NodeInfo, ptr %3, i64 0, i32 2
  %25 = load i64, ptr %24, align 8, !tbaa !71
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %58

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct._NodeInfo, ptr %3, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !72
  %30 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 1
  %31 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  br label %32

32:                                               ; preds = %27, %53
  %33 = phi i64 [ 0, %27 ], [ %55, %53 ]
  %34 = phi ptr [ %29, %27 ], [ %54, %53 ]
  %35 = load i64, ptr %30, align 8, !tbaa !120
  %36 = tail call ptr @QueueCacheViewAuthenticPixels(ptr noundef %1, i64 noundef %35, i64 noundef 0, i64 noundef 1, i64 noundef 1, ptr noundef %4) #17
  %37 = icmp eq ptr %36, null
  br i1 %37, label %53, label %38

38:                                               ; preds = %32
  %39 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %1) #15
  %40 = load i64, ptr %34, align 8
  store i64 %40, ptr %36, align 2
  %41 = load i32, ptr %31, align 4, !tbaa !73
  %42 = icmp eq i32 %41, 12
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct._ColorPacket, ptr %34, i64 0, i32 1
  %45 = load i16, ptr %44, align 8, !tbaa !90
  store i16 %45, ptr %39, align 2, !tbaa !85
  br label %46

46:                                               ; preds = %43, %38
  %47 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %1, ptr noundef %4) #17
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %46
  %50 = load i64, ptr %30, align 8, !tbaa !120
  %51 = add nsw i64 %50, 1
  store i64 %51, ptr %30, align 8, !tbaa !120
  %52 = getelementptr inbounds %struct._ColorPacket, ptr %34, i64 1
  br label %53

53:                                               ; preds = %32, %49
  %54 = phi ptr [ %34, %32 ], [ %52, %49 ]
  %55 = add nuw nsw i64 %33, 1
  %56 = load i64, ptr %24, align 8, !tbaa !71
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %32, label %58, !llvm.loop !121

58:                                               ; preds = %53, %46, %23
  %59 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %60 = load ptr, ptr %59, align 8, !tbaa !95
  %61 = icmp eq ptr %60, null
  br i1 %61, label %67, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 2
  %64 = load i64, ptr %63, align 8, !tbaa !122
  %65 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 3
  %66 = load i64, ptr %65, align 8, !tbaa !38
  tail call fastcc void @SetImageProgress(ptr noundef %0, ptr noundef nonnull @.str.13, i64 noundef %64, i64 noundef %66)
  br label %67

67:                                               ; preds = %62, %58
  %68 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 2
  %69 = load i64, ptr %68, align 8, !tbaa !122
  %70 = add nsw i64 %69, 1
  store i64 %70, ptr %68, align 8, !tbaa !122
  br label %71

71:                                               ; preds = %67, %19
  ret void
}

declare ptr @AcquireQuantizeInfo(ptr noundef) local_unnamed_addr #3

declare i32 @QuantizeImage(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @DestroyQuantizeInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @DestroyColorCube(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 8, !tbaa !86
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, i64 8, i64 16
  br label %7

7:                                                ; preds = %2, %13
  %8 = phi i64 [ 0, %2 ], [ %14, %13 ]
  %9 = getelementptr inbounds [16 x ptr], ptr %1, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !42
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  tail call fastcc void @DestroyColorCube(ptr noundef %0, ptr noundef nonnull %10)
  br label %13

13:                                               ; preds = %7, %12
  %14 = add nuw nsw i64 %8, 1
  %15 = icmp eq i64 %14, %6
  br i1 %15, label %16, label %7, !llvm.loop !123

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct._NodeInfo, ptr %1, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !72
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %18) #15
  store ptr %21, ptr %17, align 8, !tbaa !72
  br label %22

22:                                               ; preds = %20, %16
  ret void
}

declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: hot
declare ptr @QueueCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

declare ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: hot
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #13

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { hot "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { allocsize(1,2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind allocsize(0,1) }
attributes #15 = { nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { hot nounwind }
attributes #18 = { nounwind allocsize(1,2) }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"long", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !35, i64 24}
!39 = !{!"_CubeInfo", !40, i64 0, !35, i64 8, !41, i64 16, !35, i64 24, !35, i64 32, !40, i64 40, !40, i64 48}
!40 = !{!"any pointer", !36, i64 0}
!41 = !{!"long long", !36, i64 0}
!42 = !{!40, !40, i64 0}
!43 = !{!39, !40, i64 0}
!44 = !{!39, !40, i64 48}
!45 = !{!46, !40, i64 233472}
!46 = !{!"_Nodes", !36, i64 0, !40, i64 233472}
!47 = distinct !{!47, !48, !49}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!"llvm.loop.unroll.disable"}
!50 = !{!51, !52, i64 12976}
!51 = !{!"_Image", !52, i64 0, !52, i64 4, !52, i64 8, !35, i64 16, !52, i64 24, !52, i64 28, !52, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !40, i64 72, !53, i64 80, !53, i64 88, !53, i64 96, !55, i64 104, !56, i64 112, !52, i64 208, !40, i64 216, !52, i64 224, !40, i64 232, !40, i64 240, !40, i64 248, !35, i64 256, !55, i64 264, !55, i64 272, !58, i64 280, !58, i64 312, !58, i64 344, !55, i64 376, !55, i64 384, !55, i64 392, !52, i64 400, !52, i64 404, !52, i64 408, !52, i64 412, !52, i64 416, !52, i64 420, !40, i64 424, !35, i64 432, !35, i64 440, !35, i64 448, !35, i64 456, !35, i64 464, !35, i64 472, !59, i64 480, !60, i64 504, !40, i64 568, !40, i64 576, !40, i64 584, !40, i64 592, !40, i64 600, !40, i64 608, !36, i64 616, !36, i64 4712, !36, i64 8808, !35, i64 12904, !35, i64 12912, !62, i64 12920, !52, i64 12976, !35, i64 12984, !40, i64 12992, !63, i64 13000, !63, i64 13032, !40, i64 13064, !35, i64 13072, !35, i64 13080, !40, i64 13088, !40, i64 13096, !40, i64 13104, !52, i64 13112, !52, i64 13116, !53, i64 13120, !40, i64 13128, !58, i64 13136, !40, i64 13168, !40, i64 13176, !52, i64 13184, !52, i64 13188, !41, i64 13192, !52, i64 13200, !35, i64 13208, !35, i64 13216, !52, i64 13224, !35, i64 13232}
!52 = !{!"int", !36, i64 0}
!53 = !{!"_PixelPacket", !54, i64 0, !54, i64 2, !54, i64 4, !54, i64 6}
!54 = !{!"short", !36, i64 0}
!55 = !{!"double", !36, i64 0}
!56 = !{!"_ChromaticityInfo", !57, i64 0, !57, i64 24, !57, i64 48, !57, i64 72}
!57 = !{!"_PrimaryInfo", !55, i64 0, !55, i64 8, !55, i64 16}
!58 = !{!"_RectangleInfo", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24}
!59 = !{!"_ErrorInfo", !55, i64 0, !55, i64 8, !55, i64 16}
!60 = !{!"_TimerInfo", !61, i64 0, !61, i64 24, !52, i64 48, !35, i64 56}
!61 = !{!"_Timer", !55, i64 0, !55, i64 8, !55, i64 16}
!62 = !{!"_ExceptionInfo", !52, i64 0, !52, i64 4, !40, i64 8, !40, i64 16, !40, i64 24, !52, i64 32, !40, i64 40, !35, i64 48}
!63 = !{!"_ProfileInfo", !40, i64 0, !35, i64 8, !40, i64 16, !35, i64 24}
!64 = !{!39, !35, i64 32}
!65 = !{!39, !40, i64 40}
!66 = !{!67, !35, i64 144}
!67 = !{!"_NodeInfo", !36, i64 0, !40, i64 128, !41, i64 136, !35, i64 144}
!68 = !{!51, !35, i64 48}
!69 = distinct !{!69, !48, !49}
!70 = !{!51, !35, i64 40}
!71 = !{!67, !41, i64 136}
!72 = !{!67, !40, i64 128}
!73 = !{!51, !52, i64 4}
!74 = !{!75, !76, i64 48}
!75 = !{!"_MagickPixelPacket", !52, i64 0, !52, i64 4, !52, i64 8, !55, i64 16, !35, i64 24, !76, i64 32, !76, i64 36, !76, i64 40, !76, i64 44, !76, i64 48}
!76 = !{!"float", !36, i64 0}
!77 = !{!53, !54, i64 4}
!78 = !{!75, !76, i64 32}
!79 = !{!53, !54, i64 2}
!80 = !{!75, !76, i64 36}
!81 = !{!53, !54, i64 0}
!82 = !{!75, !76, i64 40}
!83 = !{!53, !54, i64 6}
!84 = !{!75, !76, i64 44}
!85 = !{!54, !54, i64 0}
!86 = !{!51, !52, i64 32}
!87 = distinct !{!87, !48, !49}
!88 = distinct !{!88, !48, !49}
!89 = !{!51, !52, i64 0}
!90 = !{!91, !54, i64 8}
!91 = !{!"_ColorPacket", !53, i64 0, !54, i64 8, !41, i64 16}
!92 = !{!91, !41, i64 16}
!93 = !{!36, !36, i64 0}
!94 = distinct !{!94, !48, !49}
!95 = !{!51, !40, i64 568}
!96 = !{!51, !40, i64 576}
!97 = distinct !{!97, !48, !49}
!98 = distinct !{!98, !48, !49}
!99 = !{!51, !35, i64 64}
!100 = distinct !{!100, !48, !49}
!101 = distinct !{!101, !48, !49}
!102 = distinct !{!102, !48, !49}
!103 = distinct !{!103, !48, !49}
!104 = distinct !{!104, !48, !49}
!105 = distinct !{!105, !48, !49}
!106 = distinct !{!106, !48, !49}
!107 = distinct !{!107, !48, !49}
!108 = !{!55, !55, i64 0}
!109 = !{!75, !52, i64 4}
!110 = !{!75, !52, i64 8}
!111 = distinct !{!111, !48, !49}
!112 = !{!91, !54, i64 4}
!113 = !{!91, !54, i64 2}
!114 = !{!91, !54, i64 0}
!115 = !{!116, !35, i64 0}
!116 = !{!"_QuantizeInfo", !35, i64 0, !35, i64 8, !52, i64 16, !52, i64 20, !52, i64 24, !35, i64 32, !52, i64 40}
!117 = !{!116, !52, i64 16}
!118 = !{!116, !35, i64 8}
!119 = distinct !{!119, !48, !49}
!120 = !{!39, !35, i64 8}
!121 = distinct !{!121, !48, !49}
!122 = !{!39, !41, i64 16}
!123 = distinct !{!123, !48, !49}
