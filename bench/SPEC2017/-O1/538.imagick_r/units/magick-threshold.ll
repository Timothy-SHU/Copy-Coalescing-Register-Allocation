; ModuleID = 'magick/threshold.c'
source_filename = "magick/threshold.c"
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
%struct._GeometryInfo = type { double, double, double, double, double }
%struct._ThresholdMap = type { ptr, ptr, i64, i64, i64, ptr }

@.str = private unnamed_addr constant [19 x i8] c"magick/threshold.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Threshold/Image\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Clamp/Image\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Loading threshold map file \22%s\22 ...\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"threshold\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"map\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"alias\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"description\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"XmlMissingElement\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"<description>, map \22%s\22\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"levels\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"<levels>, map \22%s\22\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"UnableToAcquireThresholdMap\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"XmlMissingAttribute\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"<levels width>, map \22%s\22\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"XmlInvalidAttribute\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"<levels height>, map \22%s\22\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"divisor\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"<levels divisor>, map \22%s\22\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"XmlMissingContent\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"XmlInvalidContent\00", align 1
@.str.26 = private unnamed_addr constant [33 x i8] c"<level> too few values, map \22%s\22\00", align 1
@.str.27 = private unnamed_addr constant [37 x i8] c"<level> %.20g out of range, map \22%s\22\00", align 1
@.str.28 = private unnamed_addr constant [34 x i8] c"<level> too many values, map \22%s\22\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"built-in\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"thresholds.xml\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"%-16s %-12s %s\0A\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"Map\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"Alias\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"Description\00", align 1
@.str.35 = private unnamed_addr constant [54 x i8] c"----------------------------------------------------\0A\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"<map>\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.37 = private unnamed_addr constant [50 x i8] c"\0A   Threshold Maps for Ordered Dither Operations\0A\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"\0APath: %s\0A\0A\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"o8x8\00", align 1
@.str.40 = private unnamed_addr constant [16 x i8] c"InvalidArgument\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"%s : '%s'\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"ordered-dither\00", align 1
@.str.43 = private unnamed_addr constant [13 x i8] c"Dither/Image\00", align 1
@.str.44 = private unnamed_addr constant [18 x i8] c"Perceptible/Image\00", align 1
@.str.45 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.47 = private unnamed_addr constant [412 x i8] c"<?xml version=\221.0\22?><thresholds>  <threshold map=\22threshold\22 alias=\221x1\22>    <description>Threshold 1x1 (non-dither)</description>    <levels width=\221\22 height=\221\22 divisor=\222\22>        1    </levels>  </threshold>  <threshold map=\22checks\22 alias=\222x1\22>    <description>Checkerboard 2x1 (dither)</description>    <levels width=\222\22 height=\222\22 divisor=\223\22>       1 2       2 1    </levels>  </threshold></thresholds>\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @AdaptiveThresholdImage(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca [4096 x i8], align 16
  %7 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #13
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %9 = load i32, ptr %8, align 8, !tbaa !34
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 199, ptr noundef nonnull @.str.2, ptr noundef nonnull %12) #13
  br label %14

14:                                               ; preds = %11, %5
  %15 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %4) #13
  %16 = icmp eq ptr %15, null
  br i1 %16, label %399, label %17

17:                                               ; preds = %14
  %18 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %15, i32 noundef 1) #13
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 58
  tail call void @InheritException(ptr noundef %4, ptr noundef nonnull %21) #13
  %22 = tail call ptr @DestroyImage(ptr noundef nonnull %15) #13
  br label %399

23:                                               ; preds = %17
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %7) #13
  %24 = mul i64 %2, %1
  %25 = uitofp i64 %24 to float
  %26 = call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %4) #13
  %27 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %15, ptr noundef %4) #13
  %28 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %29 = load i64, ptr %28, align 8, !tbaa !53
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %396

31:                                               ; preds = %23
  %32 = sdiv i64 %1, -2
  %33 = sdiv i64 %2, -2
  %34 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %35 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 7
  %36 = getelementptr inbounds i8, ptr %7, i64 32
  %37 = getelementptr inbounds i8, ptr %7, i64 36
  %38 = getelementptr inbounds i8, ptr %7, i64 40
  %39 = getelementptr inbounds i8, ptr %7, i64 44
  %40 = getelementptr inbounds i8, ptr %7, i64 48
  %41 = icmp sgt i64 %2, 0
  %42 = icmp sgt i64 %1, 0
  %43 = add i64 %1, -1
  %44 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %45 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %46 = icmp sgt i64 %2, 0
  %47 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %48 = add i64 %1, -1
  %49 = sitofp i64 %3 to float
  %50 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %51 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %52 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %53 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %54

54:                                               ; preds = %31, %384
  %55 = phi i32 [ 1, %31 ], [ %386, %384 ]
  %56 = phi i64 [ 0, %31 ], [ %385, %384 ]
  %57 = phi i64 [ 0, %31 ], [ %387, %384 ]
  %58 = icmp eq i32 %55, 0
  br i1 %58, label %384, label %59

59:                                               ; preds = %54
  %60 = add i64 %57, %33
  %61 = load i64, ptr %34, align 8, !tbaa !54
  %62 = add i64 %61, %1
  %63 = call ptr @GetCacheViewVirtualPixels(ptr noundef %26, i64 noundef %32, i64 noundef %60, i64 noundef %62, i64 noundef %2, ptr noundef %4) #14
  %64 = load i64, ptr %35, align 8, !tbaa !54
  %65 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %27, i64 noundef 0, i64 noundef %57, i64 noundef %64, i64 noundef 1, ptr noundef %4) #14
  %66 = icmp eq ptr %63, null
  %67 = icmp eq ptr %65, null
  %68 = select i1 %66, i1 true, i1 %67
  br i1 %68, label %384, label %69

69:                                               ; preds = %59
  %70 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %26) #13
  %71 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %27) #13
  %72 = load float, ptr %36, align 8
  %73 = load float, ptr %37, align 4
  %74 = load float, ptr %38, align 8
  %75 = load float, ptr %39, align 4
  %76 = load float, ptr %40, align 8
  br i1 %41, label %77, label %84

77:                                               ; preds = %69
  %78 = icmp eq ptr %70, null
  %79 = ptrtoint ptr %63 to i64
  %80 = icmp eq ptr %70, null
  %81 = ptrtoint ptr %63 to i64
  %82 = load i64, ptr %34, align 8, !tbaa !54
  %83 = add i64 %82, %1
  br label %106

84:                                               ; preds = %204, %69
  %85 = phi float [ %76, %69 ], [ %205, %204 ]
  %86 = phi float [ %75, %69 ], [ %206, %204 ]
  %87 = phi float [ %74, %69 ], [ %207, %204 ]
  %88 = phi float [ %73, %69 ], [ %208, %204 ]
  %89 = phi float [ %72, %69 ], [ %209, %204 ]
  %90 = phi float [ %76, %69 ], [ %210, %204 ]
  %91 = phi float [ %75, %69 ], [ %211, %204 ]
  %92 = phi float [ %74, %69 ], [ %212, %204 ]
  %93 = phi float [ %73, %69 ], [ %213, %204 ]
  %94 = phi float [ %72, %69 ], [ %214, %204 ]
  %95 = load i64, ptr %34, align 8, !tbaa !54
  %96 = getelementptr i16, ptr %70, i64 %1
  %97 = getelementptr i16, ptr %96, i64 -1
  %98 = icmp sgt i64 %95, 0
  br i1 %98, label %99, label %369

99:                                               ; preds = %84
  %100 = icmp eq ptr %70, null
  %101 = add i64 %95, %1
  %102 = load i32, ptr %50, align 4, !tbaa !55
  %103 = icmp ne i32 %102, 12
  %104 = icmp eq ptr %71, null
  %105 = select i1 %103, i1 true, i1 %104
  br label %218

106:                                              ; preds = %77, %204
  %107 = phi i64 [ 0, %77 ], [ %216, %204 ]
  %108 = phi ptr [ %63, %77 ], [ %215, %204 ]
  %109 = phi float [ %72, %77 ], [ %214, %204 ]
  %110 = phi float [ %73, %77 ], [ %213, %204 ]
  %111 = phi float [ %74, %77 ], [ %212, %204 ]
  %112 = phi float [ %75, %77 ], [ %211, %204 ]
  %113 = phi float [ %76, %77 ], [ %210, %204 ]
  %114 = phi float [ %72, %77 ], [ %209, %204 ]
  %115 = phi float [ %73, %77 ], [ %208, %204 ]
  %116 = phi float [ %74, %77 ], [ %207, %204 ]
  %117 = phi float [ %75, %77 ], [ %206, %204 ]
  %118 = phi float [ %76, %77 ], [ %205, %204 ]
  br i1 %42, label %119, label %204

119:                                              ; preds = %106
  %120 = ptrtoint ptr %108 to i64
  %121 = sub i64 %120, %79
  %122 = ashr exact i64 %121, 3
  %123 = getelementptr inbounds i16, ptr %70, i64 %122
  %124 = load i32, ptr %45, align 4, !tbaa !55
  %125 = icmp eq i32 %124, 12
  %126 = ptrtoint ptr %108 to i64
  %127 = sub i64 %126, %81
  %128 = ashr exact i64 %127, 3
  %129 = getelementptr inbounds i16, ptr %70, i64 %128
  br label %130

130:                                              ; preds = %119, %200
  %131 = phi i64 [ 0, %119 ], [ %202, %200 ]
  %132 = phi float [ %109, %119 ], [ %180, %200 ]
  %133 = phi float [ %110, %119 ], [ %184, %200 ]
  %134 = phi float [ %111, %119 ], [ %187, %200 ]
  %135 = phi float [ %112, %119 ], [ %191, %200 ]
  %136 = phi float [ %113, %119 ], [ %201, %200 ]
  %137 = phi float [ %114, %119 ], [ %175, %200 ]
  %138 = phi float [ %115, %119 ], [ %174, %200 ]
  %139 = phi float [ %116, %119 ], [ %173, %200 ]
  %140 = phi float [ %117, %119 ], [ %172, %200 ]
  %141 = phi float [ %118, %119 ], [ %171, %200 ]
  %142 = icmp eq i64 %131, %43
  br i1 %142, label %143, label %170

143:                                              ; preds = %130
  %144 = getelementptr inbounds %struct._PixelPacket, ptr %108, i64 %131
  %145 = getelementptr inbounds %struct._PixelPacket, ptr %108, i64 %131, i32 2
  %146 = load i16, ptr %145, align 2, !tbaa !56
  %147 = uitofp i16 %146 to float
  %148 = fadd float %137, %147
  %149 = getelementptr inbounds %struct._PixelPacket, ptr %108, i64 %131, i32 1
  %150 = load i16, ptr %149, align 2, !tbaa !57
  %151 = uitofp i16 %150 to float
  %152 = fadd float %138, %151
  %153 = load i16, ptr %144, align 2, !tbaa !58
  %154 = uitofp i16 %153 to float
  %155 = fadd float %139, %154
  %156 = getelementptr inbounds %struct._PixelPacket, ptr %108, i64 %131, i32 3
  %157 = load i16, ptr %156, align 2, !tbaa !59
  %158 = uitofp i16 %157 to float
  %159 = fadd float %140, %158
  %160 = load i32, ptr %44, align 4, !tbaa !55
  %161 = icmp eq i32 %160, 12
  br i1 %161, label %162, label %170

162:                                              ; preds = %143
  br i1 %78, label %167, label %163

163:                                              ; preds = %162
  %164 = getelementptr inbounds i16, ptr %123, i64 %131
  %165 = load i16, ptr %164, align 2, !tbaa !60
  %166 = zext i16 %165 to i32
  br label %167

167:                                              ; preds = %162, %163
  %168 = phi i32 [ %166, %163 ], [ 0, %162 ]
  %169 = sitofp i32 %168 to float
  br label %170

170:                                              ; preds = %143, %167, %130
  %171 = phi float [ %169, %167 ], [ %141, %143 ], [ %141, %130 ]
  %172 = phi float [ %159, %167 ], [ %159, %143 ], [ %140, %130 ]
  %173 = phi float [ %155, %167 ], [ %155, %143 ], [ %139, %130 ]
  %174 = phi float [ %152, %167 ], [ %152, %143 ], [ %138, %130 ]
  %175 = phi float [ %148, %167 ], [ %148, %143 ], [ %137, %130 ]
  %176 = getelementptr inbounds %struct._PixelPacket, ptr %108, i64 %131
  %177 = getelementptr inbounds %struct._PixelPacket, ptr %108, i64 %131, i32 2
  %178 = load i16, ptr %177, align 2, !tbaa !56
  %179 = uitofp i16 %178 to float
  %180 = fadd float %132, %179
  %181 = getelementptr inbounds %struct._PixelPacket, ptr %108, i64 %131, i32 1
  %182 = load i16, ptr %181, align 2, !tbaa !57
  %183 = uitofp i16 %182 to float
  %184 = fadd float %133, %183
  %185 = load i16, ptr %176, align 2, !tbaa !58
  %186 = uitofp i16 %185 to float
  %187 = fadd float %134, %186
  %188 = getelementptr inbounds %struct._PixelPacket, ptr %108, i64 %131, i32 3
  %189 = load i16, ptr %188, align 2, !tbaa !59
  %190 = uitofp i16 %189 to float
  %191 = fadd float %135, %190
  br i1 %125, label %192, label %200

192:                                              ; preds = %170
  br i1 %80, label %197, label %193

193:                                              ; preds = %192
  %194 = getelementptr inbounds i16, ptr %129, i64 %131
  %195 = load i16, ptr %194, align 2, !tbaa !60
  %196 = zext i16 %195 to i32
  br label %197

197:                                              ; preds = %192, %193
  %198 = phi i32 [ %196, %193 ], [ 0, %192 ]
  %199 = sitofp i32 %198 to float
  br label %200

200:                                              ; preds = %170, %197
  %201 = phi float [ %199, %197 ], [ %136, %170 ]
  %202 = add nuw nsw i64 %131, 1
  %203 = icmp eq i64 %202, %1
  br i1 %203, label %204, label %130, !llvm.loop !61

204:                                              ; preds = %200, %106
  %205 = phi float [ %118, %106 ], [ %171, %200 ]
  %206 = phi float [ %117, %106 ], [ %172, %200 ]
  %207 = phi float [ %116, %106 ], [ %173, %200 ]
  %208 = phi float [ %115, %106 ], [ %174, %200 ]
  %209 = phi float [ %114, %106 ], [ %175, %200 ]
  %210 = phi float [ %113, %106 ], [ %201, %200 ]
  %211 = phi float [ %112, %106 ], [ %191, %200 ]
  %212 = phi float [ %111, %106 ], [ %187, %200 ]
  %213 = phi float [ %110, %106 ], [ %184, %200 ]
  %214 = phi float [ %109, %106 ], [ %180, %200 ]
  %215 = getelementptr inbounds %struct._PixelPacket, ptr %108, i64 %83
  %216 = add nuw nsw i64 %107, 1
  %217 = icmp eq i64 %216, %2
  br i1 %217, label %84, label %106, !llvm.loop !64

218:                                              ; preds = %99, %364
  %219 = phi i64 [ 0, %99 ], [ %367, %364 ]
  %220 = phi ptr [ %65, %99 ], [ %366, %364 ]
  %221 = phi ptr [ %63, %99 ], [ %365, %364 ]
  %222 = phi float [ %94, %99 ], [ %328, %364 ]
  %223 = phi float [ %93, %99 ], [ %327, %364 ]
  %224 = phi float [ %92, %99 ], [ %326, %364 ]
  %225 = phi float [ %91, %99 ], [ %325, %364 ]
  %226 = phi float [ %90, %99 ], [ %324, %364 ]
  %227 = phi float [ %89, %99 ], [ %323, %364 ]
  %228 = phi float [ %88, %99 ], [ %322, %364 ]
  %229 = phi float [ %87, %99 ], [ %321, %364 ]
  %230 = phi float [ %86, %99 ], [ %320, %364 ]
  %231 = phi float [ %85, %99 ], [ %319, %364 ]
  %232 = load float, ptr %40, align 8
  %233 = fsub float %222, %227
  %234 = fsub float %223, %228
  %235 = fsub float %224, %229
  %236 = fsub float %225, %230
  %237 = fsub float %226, %231
  %238 = load float, ptr %36, align 8, !tbaa.struct !65
  %239 = load float, ptr %37, align 4, !tbaa.struct !68
  %240 = load float, ptr %38, align 8, !tbaa.struct !69
  %241 = load float, ptr %39, align 4, !tbaa.struct !70
  br i1 %46, label %242, label %318

242:                                              ; preds = %218
  %243 = load i32, ptr %47, align 4, !tbaa !55
  %244 = icmp eq i32 %243, 12
  %245 = getelementptr inbounds i16, ptr %70, i64 %219
  %246 = ptrtoint ptr %221 to i64
  %247 = ptrtoint ptr %221 to i64
  %248 = getelementptr i16, ptr %97, i64 %219
  br label %249

249:                                              ; preds = %242, %313
  %250 = phi i64 [ 0, %242 ], [ %316, %313 ]
  %251 = phi ptr [ %221, %242 ], [ %315, %313 ]
  %252 = phi float [ %233, %242 ], [ %294, %313 ]
  %253 = phi float [ %234, %242 ], [ %298, %313 ]
  %254 = phi float [ %235, %242 ], [ %301, %313 ]
  %255 = phi float [ %236, %242 ], [ %305, %313 ]
  %256 = phi float [ %237, %242 ], [ %314, %313 ]
  %257 = phi float [ %238, %242 ], [ %265, %313 ]
  %258 = phi float [ %239, %242 ], [ %269, %313 ]
  %259 = phi float [ %240, %242 ], [ %272, %313 ]
  %260 = phi float [ %241, %242 ], [ %276, %313 ]
  %261 = phi float [ %232, %242 ], [ %289, %313 ]
  %262 = getelementptr inbounds %struct._PixelPacket, ptr %251, i64 0, i32 2
  %263 = load i16, ptr %262, align 2, !tbaa !56
  %264 = uitofp i16 %263 to float
  %265 = fadd float %257, %264
  %266 = getelementptr inbounds %struct._PixelPacket, ptr %251, i64 0, i32 1
  %267 = load i16, ptr %266, align 2, !tbaa !57
  %268 = uitofp i16 %267 to float
  %269 = fadd float %258, %268
  %270 = load i16, ptr %251, align 2, !tbaa !58
  %271 = uitofp i16 %270 to float
  %272 = fadd float %259, %271
  %273 = getelementptr inbounds %struct._PixelPacket, ptr %251, i64 0, i32 3
  %274 = load i16, ptr %273, align 2, !tbaa !59
  %275 = uitofp i16 %274 to float
  %276 = fadd float %260, %275
  br i1 %244, label %277, label %288

277:                                              ; preds = %249
  br i1 %100, label %285, label %278

278:                                              ; preds = %277
  %279 = ptrtoint ptr %251 to i64
  %280 = sub i64 %279, %246
  %281 = ashr exact i64 %280, 3
  %282 = getelementptr inbounds i16, ptr %245, i64 %281
  %283 = load i16, ptr %282, align 2, !tbaa !60
  %284 = zext i16 %283 to i32
  br label %285

285:                                              ; preds = %277, %278
  %286 = phi i32 [ %284, %278 ], [ 0, %277 ]
  %287 = sitofp i32 %286 to float
  br label %288

288:                                              ; preds = %285, %249
  %289 = phi float [ %287, %285 ], [ %261, %249 ]
  %290 = getelementptr inbounds %struct._PixelPacket, ptr %251, i64 %48
  %291 = getelementptr inbounds %struct._PixelPacket, ptr %251, i64 %48, i32 2
  %292 = load i16, ptr %291, align 2, !tbaa !56
  %293 = uitofp i16 %292 to float
  %294 = fadd float %252, %293
  %295 = getelementptr inbounds %struct._PixelPacket, ptr %251, i64 %48, i32 1
  %296 = load i16, ptr %295, align 2, !tbaa !57
  %297 = uitofp i16 %296 to float
  %298 = fadd float %253, %297
  %299 = load i16, ptr %290, align 2, !tbaa !58
  %300 = uitofp i16 %299 to float
  %301 = fadd float %254, %300
  %302 = getelementptr inbounds %struct._PixelPacket, ptr %251, i64 %48, i32 3
  %303 = load i16, ptr %302, align 2, !tbaa !59
  %304 = uitofp i16 %303 to float
  %305 = fadd float %255, %304
  br i1 %244, label %306, label %313

306:                                              ; preds = %288
  %307 = ptrtoint ptr %251 to i64
  %308 = sub i64 %307, %247
  %309 = ashr exact i64 %308, 3
  %310 = getelementptr i16, ptr %248, i64 %309
  %311 = load i16, ptr %310, align 2, !tbaa !60
  %312 = uitofp i16 %311 to float
  br label %313

313:                                              ; preds = %306, %288
  %314 = phi float [ %312, %306 ], [ %256, %288 ]
  %315 = getelementptr inbounds %struct._PixelPacket, ptr %251, i64 %101
  %316 = add nuw nsw i64 %250, 1
  %317 = icmp eq i64 %316, %2
  br i1 %317, label %318, label %249, !llvm.loop !71

318:                                              ; preds = %313, %218
  %319 = phi float [ %232, %218 ], [ %289, %313 ]
  %320 = phi float [ %241, %218 ], [ %276, %313 ]
  %321 = phi float [ %240, %218 ], [ %272, %313 ]
  %322 = phi float [ %239, %218 ], [ %269, %313 ]
  %323 = phi float [ %238, %218 ], [ %265, %313 ]
  %324 = phi float [ %237, %218 ], [ %314, %313 ]
  %325 = phi float [ %236, %218 ], [ %305, %313 ]
  %326 = phi float [ %235, %218 ], [ %301, %313 ]
  %327 = phi float [ %234, %218 ], [ %298, %313 ]
  %328 = phi float [ %233, %218 ], [ %294, %313 ]
  %329 = fdiv float %328, %25
  %330 = fadd float %329, %49
  %331 = fdiv float %327, %25
  %332 = fadd float %331, %49
  %333 = fdiv float %326, %25
  %334 = fadd float %333, %49
  %335 = fdiv float %325, %25
  %336 = fadd float %335, %49
  %337 = getelementptr inbounds %struct._PixelPacket, ptr %220, i64 0, i32 2
  %338 = load i16, ptr %337, align 2, !tbaa !56
  %339 = uitofp i16 %338 to float
  %340 = fcmp ult float %330, %339
  %341 = sext i1 %340 to i16
  store i16 %341, ptr %337, align 2, !tbaa !56
  %342 = getelementptr inbounds %struct._PixelPacket, ptr %220, i64 0, i32 1
  %343 = load i16, ptr %342, align 2, !tbaa !57
  %344 = uitofp i16 %343 to float
  %345 = fcmp ult float %332, %344
  %346 = sext i1 %345 to i16
  store i16 %346, ptr %342, align 2, !tbaa !57
  %347 = load i16, ptr %220, align 2, !tbaa !58
  %348 = uitofp i16 %347 to float
  %349 = fcmp ult float %334, %348
  %350 = sext i1 %349 to i16
  store i16 %350, ptr %220, align 2, !tbaa !58
  %351 = getelementptr inbounds %struct._PixelPacket, ptr %220, i64 0, i32 3
  %352 = load i16, ptr %351, align 2, !tbaa !59
  %353 = uitofp i16 %352 to float
  %354 = fcmp ult float %336, %353
  %355 = sext i1 %354 to i16
  store i16 %355, ptr %351, align 2, !tbaa !59
  br i1 %105, label %364, label %356

356:                                              ; preds = %318
  %357 = fdiv float %324, %25
  %358 = fadd float %357, %49
  %359 = getelementptr inbounds i16, ptr %71, i64 %219
  %360 = load i16, ptr %359, align 2, !tbaa !60
  %361 = uitofp i16 %360 to float
  %362 = fcmp ult float %358, %361
  %363 = sext i1 %362 to i16
  store i16 %363, ptr %359, align 2, !tbaa !60
  br label %364

364:                                              ; preds = %356, %318
  %365 = getelementptr inbounds %struct._PixelPacket, ptr %221, i64 1
  %366 = getelementptr inbounds %struct._PixelPacket, ptr %220, i64 1
  %367 = add nuw nsw i64 %219, 1
  %368 = icmp eq i64 %367, %95
  br i1 %368, label %369, label %218, !llvm.loop !72

369:                                              ; preds = %364, %84
  %370 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %27, ptr noundef %4) #14
  %371 = icmp ne i32 %370, 0
  %372 = zext i1 %371 to i32
  %373 = load ptr, ptr %51, align 8, !tbaa !73
  %374 = icmp eq ptr %373, null
  br i1 %374, label %384, label %375

375:                                              ; preds = %369
  %376 = add nsw i64 %56, 1
  %377 = load i64, ptr %28, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #13
  %378 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.3, ptr noundef nonnull %52) #13
  %379 = load ptr, ptr %51, align 8, !tbaa !73
  %380 = load ptr, ptr %53, align 8, !tbaa !74
  %381 = call i32 %379(ptr noundef nonnull %6, i64 noundef %56, i64 noundef %377, ptr noundef %380) #13
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #13
  %382 = icmp eq i32 %381, 0
  %383 = select i1 %382, i32 0, i32 %372
  br label %384

384:                                              ; preds = %369, %375, %59, %54
  %385 = phi i64 [ %56, %54 ], [ %56, %59 ], [ %376, %375 ], [ %56, %369 ]
  %386 = phi i32 [ 0, %54 ], [ 0, %59 ], [ %383, %375 ], [ %372, %369 ]
  %387 = add nuw nsw i64 %57, 1
  %388 = load i64, ptr %28, align 8, !tbaa !53
  %389 = icmp slt i64 %387, %388
  br i1 %389, label %54, label %390, !llvm.loop !75

390:                                              ; preds = %384
  %391 = icmp eq i32 %386, 0
  %392 = call ptr @DestroyCacheView(ptr noundef %27) #13
  %393 = call ptr @DestroyCacheView(ptr noundef %26) #13
  br i1 %391, label %394, label %399

394:                                              ; preds = %390
  %395 = call ptr @DestroyImage(ptr noundef nonnull %15) #13
  br label %399

396:                                              ; preds = %23
  %397 = call ptr @DestroyCacheView(ptr noundef %27) #13
  %398 = call ptr @DestroyCacheView(ptr noundef %26) #13
  br label %399

399:                                              ; preds = %396, %390, %394, %14, %20
  %400 = phi ptr [ null, %20 ], [ null, %14 ], [ %395, %394 ], [ %15, %390 ], [ %15, %396 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #13
  ret ptr %400
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SetImageStorageClass(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @InheritException(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @DestroyImage(ptr noundef) local_unnamed_addr #2

declare void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: hot
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: hot
declare ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #2

declare ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: hot
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @BilevelImage(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @BilevelImageChannel(ptr noundef %0, i32 noundef 134217719, double noundef %1), !range !76
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define dso_local i32 @BilevelImageChannel(ptr noundef %0, i32 noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 441, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #13
  br label %11

11:                                               ; preds = %8, %3
  %12 = tail call i32 @SetImageStorageClass(ptr noundef %0, i32 noundef 1) #13
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %140, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !55
  switch i32 %16, label %19 [
    i32 19, label %17
    i32 17, label %17
    i32 2, label %17
  ]

17:                                               ; preds = %14, %14, %14
  %18 = tail call i32 @SetImageColorspace(ptr noundef %0, i32 noundef 13) #13
  br label %19

19:                                               ; preds = %14, %17
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %21 = tail call ptr @AcquireAuthenticCacheView(ptr noundef %0, ptr noundef nonnull %20) #13
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %23 = load i64, ptr %22, align 8, !tbaa !53
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %137

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %27 = and i32 %1, 256
  %28 = icmp eq i32 %27, 0
  %29 = and i32 %1, 1
  %30 = icmp eq i32 %29, 0
  %31 = and i32 %1, 2
  %32 = icmp eq i32 %31, 0
  %33 = and i32 %1, 4
  %34 = icmp eq i32 %33, 0
  %35 = and i32 %1, 8
  %36 = icmp eq i32 %35, 0
  %37 = and i32 %1, 32
  %38 = icmp eq i32 %37, 0
  %39 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %40 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %41 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %42

42:                                               ; preds = %25, %131
  %43 = phi i64 [ 0, %25 ], [ %134, %131 ]
  %44 = phi i64 [ 0, %25 ], [ %133, %131 ]
  %45 = phi i32 [ 1, %25 ], [ %132, %131 ]
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %131, label %47

47:                                               ; preds = %42
  %48 = load i64, ptr %26, align 8, !tbaa !54
  %49 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %21, i64 noundef 0, i64 noundef %43, i64 noundef %48, i64 noundef 1, ptr noundef nonnull %20) #14
  %50 = icmp eq ptr %49, null
  br i1 %50, label %131, label %51

51:                                               ; preds = %47
  %52 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %21) #13
  %53 = load i64, ptr %26, align 8, !tbaa !54
  %54 = icmp sgt i64 %53, 0
  br i1 %28, label %56, label %55

55:                                               ; preds = %51
  br i1 %54, label %59, label %116

56:                                               ; preds = %51
  br i1 %54, label %57, label %116

57:                                               ; preds = %56
  %58 = icmp eq ptr %52, null
  br label %72

59:                                               ; preds = %55, %59
  %60 = phi ptr [ %68, %59 ], [ %49, %55 ]
  %61 = phi i64 [ %69, %59 ], [ 0, %55 ]
  %62 = call float @GetPixelIntensity(ptr noundef %0, ptr noundef nonnull %60) #14
  %63 = fpext float %62 to double
  %64 = fcmp ugt double %63, %2
  %65 = sext i1 %64 to i16
  %66 = getelementptr inbounds %struct._PixelPacket, ptr %60, i64 0, i32 2
  store i16 %65, ptr %66, align 2, !tbaa !56
  %67 = getelementptr inbounds %struct._PixelPacket, ptr %60, i64 0, i32 1
  store i16 %65, ptr %67, align 2, !tbaa !57
  store i16 %65, ptr %60, align 2, !tbaa !58
  %68 = getelementptr inbounds %struct._PixelPacket, ptr %60, i64 1
  %69 = add nuw nsw i64 %61, 1
  %70 = load i64, ptr %26, align 8, !tbaa !54
  %71 = icmp slt i64 %69, %70
  br i1 %71, label %59, label %116, !llvm.loop !77

72:                                               ; preds = %57, %112
  %73 = phi ptr [ %49, %57 ], [ %113, %112 ]
  %74 = phi i64 [ 0, %57 ], [ %114, %112 ]
  br i1 %30, label %81, label %75

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct._PixelPacket, ptr %73, i64 0, i32 2
  %77 = load i16, ptr %76, align 2, !tbaa !56
  %78 = uitofp i16 %77 to double
  %79 = fcmp ugt double %78, %2
  %80 = sext i1 %79 to i16
  store i16 %80, ptr %76, align 2, !tbaa !56
  br label %81

81:                                               ; preds = %75, %72
  br i1 %32, label %88, label %82

82:                                               ; preds = %81
  %83 = getelementptr inbounds %struct._PixelPacket, ptr %73, i64 0, i32 1
  %84 = load i16, ptr %83, align 2, !tbaa !57
  %85 = uitofp i16 %84 to double
  %86 = fcmp ugt double %85, %2
  %87 = sext i1 %86 to i16
  store i16 %87, ptr %83, align 2, !tbaa !57
  br label %88

88:                                               ; preds = %82, %81
  br i1 %34, label %94, label %89

89:                                               ; preds = %88
  %90 = load i16, ptr %73, align 2, !tbaa !58
  %91 = uitofp i16 %90 to double
  %92 = fcmp ugt double %91, %2
  %93 = sext i1 %92 to i16
  store i16 %93, ptr %73, align 2, !tbaa !58
  br label %94

94:                                               ; preds = %89, %88
  br i1 %36, label %101, label %95

95:                                               ; preds = %94
  %96 = getelementptr inbounds %struct._PixelPacket, ptr %73, i64 0, i32 3
  %97 = load i16, ptr %96, align 2, !tbaa !59
  %98 = uitofp i16 %97 to double
  %99 = fcmp ugt double %98, %2
  %100 = sext i1 %99 to i16
  store i16 %100, ptr %96, align 2, !tbaa !59
  br label %101

101:                                              ; preds = %95, %94
  br i1 %38, label %112, label %102

102:                                              ; preds = %101
  %103 = load i32, ptr %15, align 4, !tbaa !55
  %104 = icmp ne i32 %103, 12
  %105 = select i1 %104, i1 true, i1 %58
  br i1 %105, label %112, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds i16, ptr %52, i64 %74
  %108 = load i16, ptr %107, align 2, !tbaa !60
  %109 = uitofp i16 %108 to double
  %110 = fcmp ugt double %109, %2
  %111 = sext i1 %110 to i16
  store i16 %111, ptr %107, align 2, !tbaa !60
  br label %112

112:                                              ; preds = %106, %102, %101
  %113 = getelementptr inbounds %struct._PixelPacket, ptr %73, i64 1
  %114 = add nuw nsw i64 %74, 1
  %115 = icmp eq i64 %114, %53
  br i1 %115, label %116, label %72, !llvm.loop !78

116:                                              ; preds = %59, %112, %55, %56
  %117 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %21, ptr noundef nonnull %20) #14
  %118 = icmp ne i32 %117, 0
  %119 = zext i1 %118 to i32
  %120 = load ptr, ptr %39, align 8, !tbaa !73
  %121 = icmp eq ptr %120, null
  br i1 %121, label %131, label %122

122:                                              ; preds = %116
  %123 = add nsw i64 %44, 1
  %124 = load i64, ptr %22, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #13
  %125 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.3, ptr noundef nonnull %40) #13
  %126 = load ptr, ptr %39, align 8, !tbaa !73
  %127 = load ptr, ptr %41, align 8, !tbaa !74
  %128 = call i32 %126(ptr noundef nonnull %4, i64 noundef %44, i64 noundef %124, ptr noundef %127) #13
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #13
  %129 = icmp eq i32 %128, 0
  %130 = select i1 %129, i32 0, i32 %119
  br label %131

131:                                              ; preds = %116, %122, %47, %42
  %132 = phi i32 [ 0, %42 ], [ 0, %47 ], [ %130, %122 ], [ %119, %116 ]
  %133 = phi i64 [ %44, %42 ], [ %44, %47 ], [ %123, %122 ], [ %44, %116 ]
  %134 = add nuw nsw i64 %43, 1
  %135 = load i64, ptr %22, align 8, !tbaa !53
  %136 = icmp slt i64 %134, %135
  br i1 %136, label %42, label %137, !llvm.loop !79

137:                                              ; preds = %131, %19
  %138 = phi i32 [ 1, %19 ], [ %132, %131 ]
  %139 = call ptr @DestroyCacheView(ptr noundef %21) #13
  br label %140

140:                                              ; preds = %11, %137
  %141 = phi i32 [ %138, %137 ], [ 0, %11 ]
  ret i32 %141
}

declare i32 @SetImageColorspace(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: hot
declare float @GetPixelIntensity(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @BlackThresholdImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %4 = tail call i32 @BlackThresholdImageChannel(ptr noundef %0, i32 noundef 134217719, ptr noundef %1, ptr noundef nonnull %3), !range !76
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local i32 @BlackThresholdImageChannel(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  %6 = alloca %struct._GeometryInfo, align 8
  %7 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #13
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %9 = load i32, ptr %8, align 8, !tbaa !34
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 608, ptr noundef nonnull @.str.2, ptr noundef nonnull %12) #13
  br label %14

14:                                               ; preds = %11, %4
  %15 = icmp eq ptr %2, null
  br i1 %15, label %200, label %16

16:                                               ; preds = %14
  %17 = tail call i32 @SetImageStorageClass(ptr noundef %0, i32 noundef 1) #13
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %200, label %19

19:                                               ; preds = %16
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %7) #13
  %20 = call i32 @ParseGeometry(ptr noundef nonnull %2, ptr noundef nonnull %6) #13
  %21 = load double, ptr %6, align 8, !tbaa !80
  %22 = fptrunc double %21 to float
  %23 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 5
  store float %22, ptr %23, align 8, !tbaa !82
  %24 = getelementptr inbounds %struct._GeometryInfo, ptr %6, i64 0, i32 1
  %25 = load double, ptr %24, align 8, !tbaa !84
  %26 = fptrunc double %25 to float
  %27 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 6
  %28 = and i32 %20, 8
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, float %22, float %26
  store float %30, ptr %27, align 4
  %31 = getelementptr inbounds %struct._GeometryInfo, ptr %6, i64 0, i32 2
  %32 = load double, ptr %31, align 8, !tbaa !85
  %33 = fptrunc double %32 to float
  %34 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 7
  %35 = and i32 %20, 1
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %36, float %22, float %33
  store float %37, ptr %34, align 8
  %38 = getelementptr inbounds %struct._GeometryInfo, ptr %6, i64 0, i32 3
  %39 = load double, ptr %38, align 8, !tbaa !86
  %40 = fptrunc double %39 to float
  %41 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 8
  %42 = and i32 %20, 2
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %43, float %22, float %40
  store float %44, ptr %41, align 4
  %45 = getelementptr inbounds %struct._GeometryInfo, ptr %6, i64 0, i32 4
  %46 = load double, ptr %45, align 8, !tbaa !87
  %47 = fptrunc double %46 to float
  %48 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 9
  %49 = and i32 %20, 16
  %50 = icmp eq i32 %49, 0
  %51 = select i1 %50, float %22, float %47
  store float %51, ptr %48, align 8
  %52 = and i32 %20, 4096
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %64, label %54

54:                                               ; preds = %19
  %55 = fmul float %22, 0x40847ACCC0000000
  store float %55, ptr %23, align 8, !tbaa !82
  %56 = load float, ptr %27, align 4, !tbaa !88
  %57 = fmul float %56, 0x40847ACCC0000000
  store float %57, ptr %27, align 4, !tbaa !88
  %58 = load float, ptr %34, align 8, !tbaa !89
  %59 = fmul float %58, 0x40847ACCC0000000
  store float %59, ptr %34, align 8, !tbaa !89
  %60 = load float, ptr %41, align 4, !tbaa !90
  %61 = fmul float %60, 0x40847ACCC0000000
  store float %61, ptr %41, align 4, !tbaa !90
  %62 = load float, ptr %48, align 8, !tbaa !91
  %63 = fmul float %62, 0x40847ACCC0000000
  store float %63, ptr %48, align 8, !tbaa !91
  br label %64

64:                                               ; preds = %54, %19
  %65 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 1
  %66 = load i32, ptr %65, align 4, !tbaa !92
  %67 = add i32 %66, -1
  %68 = icmp ult i32 %67, 2
  br i1 %68, label %69, label %82

69:                                               ; preds = %64
  %70 = load float, ptr %23, align 8, !tbaa !82
  %71 = load float, ptr %27, align 4, !tbaa !88
  %72 = fsub float %70, %71
  %73 = call float @llvm.fabs.f32(float %72)
  %74 = fpext float %73 to double
  %75 = fcmp olt double %74, 1.000000e-15
  br i1 %75, label %76, label %82

76:                                               ; preds = %69
  %77 = load float, ptr %34, align 8, !tbaa !89
  %78 = fsub float %71, %77
  %79 = call float @llvm.fabs.f32(float %78)
  %80 = fpext float %79 to double
  %81 = fcmp olt double %80, 1.000000e-15
  br i1 %81, label %87, label %82

82:                                               ; preds = %69, %76, %64
  %83 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %84 = load i32, ptr %83, align 4, !tbaa !55
  switch i32 %84, label %87 [
    i32 19, label %85
    i32 17, label %85
    i32 2, label %85
  ]

85:                                               ; preds = %82, %82, %82
  %86 = call i32 @SetImageColorspace(ptr noundef %0, i32 noundef 13) #13
  br label %87

87:                                               ; preds = %82, %76, %85
  %88 = call ptr @AcquireAuthenticCacheView(ptr noundef %0, ptr noundef %3) #13
  %89 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %90 = load i64, ptr %89, align 8, !tbaa !53
  %91 = icmp sgt i64 %90, 0
  br i1 %91, label %92, label %197

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %94 = and i32 %1, 1
  %95 = icmp eq i32 %94, 0
  %96 = and i32 %1, 2
  %97 = icmp eq i32 %96, 0
  %98 = and i32 %1, 4
  %99 = icmp eq i32 %98, 0
  %100 = and i32 %1, 8
  %101 = icmp eq i32 %100, 0
  %102 = and i32 %1, 32
  %103 = icmp eq i32 %102, 0
  %104 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %105 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %106 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %107 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %108

108:                                              ; preds = %92, %191
  %109 = phi i64 [ 0, %92 ], [ %194, %191 ]
  %110 = phi i32 [ 1, %92 ], [ %193, %191 ]
  %111 = phi i64 [ 0, %92 ], [ %192, %191 ]
  %112 = icmp eq i32 %110, 0
  br i1 %112, label %191, label %113

113:                                              ; preds = %108
  %114 = load i64, ptr %93, align 8, !tbaa !54
  %115 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %88, i64 noundef 0, i64 noundef %109, i64 noundef %114, i64 noundef 1, ptr noundef %3) #14
  %116 = icmp eq ptr %115, null
  br i1 %116, label %191, label %117

117:                                              ; preds = %113
  %118 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %88) #13
  %119 = load i64, ptr %93, align 8, !tbaa !54
  %120 = icmp sgt i64 %119, 0
  br i1 %120, label %121, label %176

121:                                              ; preds = %117
  %122 = load float, ptr %23, align 8
  %123 = load float, ptr %27, align 4
  %124 = load float, ptr %34, align 8
  %125 = load float, ptr %41, align 4
  %126 = icmp eq ptr %118, null
  %127 = load float, ptr %48, align 8
  br label %128

128:                                              ; preds = %121, %172
  %129 = phi ptr [ %115, %121 ], [ %173, %172 ]
  %130 = phi i64 [ 0, %121 ], [ %174, %172 ]
  br i1 %95, label %137, label %131

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct._PixelPacket, ptr %129, i64 0, i32 2
  %133 = load i16, ptr %132, align 2, !tbaa !56
  %134 = uitofp i16 %133 to float
  %135 = fcmp ogt float %122, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %131
  store i16 0, ptr %132, align 2, !tbaa !56
  br label %137

137:                                              ; preds = %136, %131, %128
  br i1 %97, label %144, label %138

138:                                              ; preds = %137
  %139 = getelementptr inbounds %struct._PixelPacket, ptr %129, i64 0, i32 1
  %140 = load i16, ptr %139, align 2, !tbaa !57
  %141 = uitofp i16 %140 to float
  %142 = fcmp ogt float %123, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %138
  store i16 0, ptr %139, align 2, !tbaa !57
  br label %144

144:                                              ; preds = %143, %138, %137
  br i1 %99, label %150, label %145

145:                                              ; preds = %144
  %146 = load i16, ptr %129, align 2, !tbaa !58
  %147 = uitofp i16 %146 to float
  %148 = fcmp ogt float %124, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %145
  store i16 0, ptr %129, align 2, !tbaa !58
  br label %150

150:                                              ; preds = %149, %145, %144
  br i1 %101, label %157, label %151

151:                                              ; preds = %150
  %152 = getelementptr inbounds %struct._PixelPacket, ptr %129, i64 0, i32 3
  %153 = load i16, ptr %152, align 2, !tbaa !59
  %154 = uitofp i16 %153 to float
  %155 = fcmp ogt float %125, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %151
  store i16 0, ptr %152, align 2, !tbaa !59
  br label %157

157:                                              ; preds = %156, %151, %150
  br i1 %103, label %172, label %158

158:                                              ; preds = %157
  %159 = load i32, ptr %104, align 4, !tbaa !55
  %160 = icmp eq i32 %159, 12
  br i1 %160, label %161, label %172

161:                                              ; preds = %158
  %162 = getelementptr inbounds i16, ptr %118, i64 %130
  br i1 %126, label %166, label %163

163:                                              ; preds = %161
  %164 = load i16, ptr %162, align 2, !tbaa !60
  %165 = zext i16 %164 to i32
  br label %166

166:                                              ; preds = %161, %163
  %167 = phi i32 [ %165, %163 ], [ 0, %161 ]
  %168 = sitofp i32 %167 to float
  %169 = fcmp ule float %127, %168
  %170 = or i1 %126, %169
  br i1 %170, label %172, label %171

171:                                              ; preds = %166
  store i16 0, ptr %162, align 2, !tbaa !60
  br label %172

172:                                              ; preds = %171, %166, %158, %157
  %173 = getelementptr inbounds %struct._PixelPacket, ptr %129, i64 1
  %174 = add nuw nsw i64 %130, 1
  %175 = icmp eq i64 %174, %119
  br i1 %175, label %176, label %128, !llvm.loop !93

176:                                              ; preds = %172, %117
  %177 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %88, ptr noundef %3) #14
  %178 = icmp ne i32 %177, 0
  %179 = zext i1 %178 to i32
  %180 = load ptr, ptr %105, align 8, !tbaa !73
  %181 = icmp eq ptr %180, null
  br i1 %181, label %191, label %182

182:                                              ; preds = %176
  %183 = add nsw i64 %111, 1
  %184 = load i64, ptr %89, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #13
  %185 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.3, ptr noundef nonnull %106) #13
  %186 = load ptr, ptr %105, align 8, !tbaa !73
  %187 = load ptr, ptr %107, align 8, !tbaa !74
  %188 = call i32 %186(ptr noundef nonnull %5, i64 noundef %111, i64 noundef %184, ptr noundef %187) #13
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #13
  %189 = icmp eq i32 %188, 0
  %190 = select i1 %189, i32 0, i32 %179
  br label %191

191:                                              ; preds = %176, %182, %113, %108
  %192 = phi i64 [ %111, %108 ], [ %111, %113 ], [ %183, %182 ], [ %111, %176 ]
  %193 = phi i32 [ 0, %108 ], [ 0, %113 ], [ %190, %182 ], [ %179, %176 ]
  %194 = add nuw nsw i64 %109, 1
  %195 = load i64, ptr %89, align 8, !tbaa !53
  %196 = icmp slt i64 %194, %195
  br i1 %196, label %108, label %197, !llvm.loop !94

197:                                              ; preds = %191, %87
  %198 = phi i32 [ 1, %87 ], [ %193, %191 ]
  %199 = call ptr @DestroyCacheView(ptr noundef %88) #13
  br label %200

200:                                              ; preds = %16, %14, %197
  %201 = phi i32 [ %198, %197 ], [ 1, %14 ], [ 0, %16 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #13
  ret i32 %201
}

declare i32 @ParseGeometry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @ClampImage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @ClampImageChannel(ptr noundef %0, i32 poison)
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ClampImageChannel(ptr noundef %0, i32 %1) local_unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 783, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #13
  br label %10

10:                                               ; preds = %7, %2
  %11 = load i32, ptr %0, align 8, !tbaa !95
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = tail call i32 @SyncImage(ptr noundef nonnull %0) #13
  br label %60

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %17 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %16) #13
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %19 = load i64, ptr %18, align 8, !tbaa !53
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %57

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %26

26:                                               ; preds = %21, %51
  %27 = phi i64 [ 0, %21 ], [ %54, %51 ]
  %28 = phi i64 [ 0, %21 ], [ %53, %51 ]
  %29 = phi i32 [ 1, %21 ], [ %52, %51 ]
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %51, label %31

31:                                               ; preds = %26
  %32 = load i64, ptr %22, align 8, !tbaa !54
  %33 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %17, i64 noundef 0, i64 noundef %27, i64 noundef %32, i64 noundef 1, ptr noundef nonnull %16) #14
  %34 = icmp eq ptr %33, null
  br i1 %34, label %51, label %35

35:                                               ; preds = %31
  %36 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %17) #13
  %37 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %17, ptr noundef nonnull %16) #14
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i32
  %40 = load ptr, ptr %23, align 8, !tbaa !73
  %41 = icmp eq ptr %40, null
  br i1 %41, label %51, label %42

42:                                               ; preds = %35
  %43 = add nsw i64 %28, 1
  %44 = load i64, ptr %18, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #13
  %45 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %3, i64 noundef 4096, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.4, ptr noundef nonnull %24) #13
  %46 = load ptr, ptr %23, align 8, !tbaa !73
  %47 = load ptr, ptr %25, align 8, !tbaa !74
  %48 = call i32 %46(ptr noundef nonnull %3, i64 noundef %28, i64 noundef %44, ptr noundef %47) #13
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #13
  %49 = icmp eq i32 %48, 0
  %50 = select i1 %49, i32 0, i32 %39
  br label %51

51:                                               ; preds = %35, %42, %31, %26
  %52 = phi i32 [ 0, %26 ], [ 0, %31 ], [ %50, %42 ], [ %39, %35 ]
  %53 = phi i64 [ %28, %26 ], [ %28, %31 ], [ %43, %42 ], [ %28, %35 ]
  %54 = add nuw nsw i64 %27, 1
  %55 = load i64, ptr %18, align 8, !tbaa !53
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %26, label %57, !llvm.loop !96

57:                                               ; preds = %51, %15
  %58 = phi i32 [ 1, %15 ], [ %52, %51 ]
  %59 = call ptr @DestroyCacheView(ptr noundef %17) #13
  br label %60

60:                                               ; preds = %57, %13
  %61 = phi i32 [ %14, %13 ], [ %58, %57 ]
  ret i32 %61
}

declare i32 @SyncImage(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @DestroyThresholdMap(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !97
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @DestroyString(ptr noundef nonnull %2) #13
  store ptr %5, ptr %0, align 8, !tbaa !97
  br label %6

6:                                                ; preds = %4, %1
  %7 = getelementptr inbounds %struct._ThresholdMap, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !99
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call ptr @DestroyString(ptr noundef nonnull %8) #13
  store ptr %11, ptr %7, align 8, !tbaa !99
  br label %12

12:                                               ; preds = %10, %6
  %13 = getelementptr inbounds %struct._ThresholdMap, ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !100
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %14) #13
  store ptr %17, ptr %13, align 8, !tbaa !100
  br label %18

18:                                               ; preds = %16, %12
  %19 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #13
  ret ptr %19
}

declare ptr @DestroyString(ptr noundef) local_unnamed_addr #2

declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @GetThresholdMapFile(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct._ExceptionInfo, align 8
  %6 = alloca %struct._ExceptionInfo, align 8
  %7 = alloca ptr, align 8
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 32, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 953, ptr noundef nonnull @.str.5, ptr noundef %1) #13
  %9 = tail call ptr @NewXMLTree(ptr noundef %0, ptr noundef %3) #13
  %10 = icmp eq ptr %9, null
  br i1 %10, label %330, label %11

11:                                               ; preds = %4
  %12 = tail call ptr @GetXMLTreeChild(ptr noundef nonnull %9, ptr noundef nonnull @.str.6) #13
  %13 = icmp eq ptr %12, null
  br i1 %13, label %30, label %14

14:                                               ; preds = %11, %27
  %15 = phi ptr [ %28, %27 ], [ %12, %11 ]
  %16 = tail call ptr @GetXMLTreeAttribute(ptr noundef nonnull %15, ptr noundef nonnull @.str.7) #13
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull %16) #13
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %18, %14
  %22 = tail call ptr @GetXMLTreeAttribute(ptr noundef nonnull %15, ptr noundef nonnull @.str.8) #13
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull %22) #13
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %21, %24
  %28 = tail call ptr @GetNextXMLTreeTag(ptr noundef nonnull %15) #13
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %14, !llvm.loop !101

30:                                               ; preds = %27, %11
  %31 = tail call ptr @DestroyXMLTree(ptr noundef nonnull %9) #13
  br label %330

32:                                               ; preds = %18, %24
  %33 = tail call ptr @GetXMLTreeChild(ptr noundef nonnull %15, ptr noundef nonnull @.str.9) #13
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 977, i32 noundef 410, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef %2) #13
  %37 = tail call ptr @DestroyXMLTree(ptr noundef nonnull %9) #13
  br label %330

38:                                               ; preds = %32
  %39 = tail call ptr @GetXMLTreeChild(ptr noundef nonnull %15, ptr noundef nonnull @.str.12) #13
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 985, i32 noundef 410, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.13, ptr noundef %2) #13
  %43 = tail call ptr @DestroyXMLTree(ptr noundef nonnull %9) #13
  br label %330

44:                                               ; preds = %38
  %45 = tail call dereferenceable_or_null(48) ptr @AcquireMagickMemory(i64 noundef 48) #15
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #13
  call void @GetExceptionInfo(ptr noundef nonnull %5) #13
  %48 = tail call ptr @__errno_location() #16
  %49 = load i32, ptr %48, align 4, !tbaa !102
  %50 = call ptr @GetExceptionMessage(i32 noundef %49) #13
  %51 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 995, i32 noundef 700, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr noundef %50) #13
  %52 = call ptr @DestroyString(ptr noundef %50) #13
  call void @CatchException(ptr noundef nonnull %5) #13
  %53 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %5) #13
  call void @MagickCoreTerminus() #13
  call void @_exit(i32 noundef 1) #17
  unreachable

54:                                               ; preds = %44
  %55 = getelementptr inbounds %struct._ThresholdMap, ptr %45, i64 0, i32 1
  %56 = getelementptr inbounds %struct._ThresholdMap, ptr %45, i64 0, i32 5
  store ptr null, ptr %56, align 8, !tbaa !100
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %45, i8 0, i64 16, i1 false)
  %57 = tail call ptr @GetXMLTreeAttribute(ptr noundef nonnull %15, ptr noundef nonnull @.str.7) #13
  %58 = icmp eq ptr %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %54
  %60 = tail call ptr @ConstantString(ptr noundef nonnull %57) #13
  store ptr %60, ptr %45, align 8, !tbaa !97
  br label %61

61:                                               ; preds = %59, %54
  %62 = tail call ptr @GetXMLTreeContent(ptr noundef nonnull %33) #13
  %63 = icmp eq ptr %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %61
  %65 = tail call ptr @ConstantString(ptr noundef nonnull %62) #13
  store ptr %65, ptr %55, align 8, !tbaa !99
  br label %66

66:                                               ; preds = %64, %61
  %67 = tail call ptr @GetXMLTreeAttribute(ptr noundef nonnull %39, ptr noundef nonnull @.str.16) #13
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %88

69:                                               ; preds = %66
  %70 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1011, i32 noundef 410, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef %2) #13
  %71 = tail call ptr @DestroyXMLTree(ptr noundef nonnull %9) #13
  %72 = load ptr, ptr %45, align 8, !tbaa !97
  %73 = icmp eq ptr %72, null
  br i1 %73, label %76, label %74

74:                                               ; preds = %69
  %75 = tail call ptr @DestroyString(ptr noundef nonnull %72) #13
  store ptr %75, ptr %45, align 8, !tbaa !97
  br label %76

76:                                               ; preds = %74, %69
  %77 = load ptr, ptr %55, align 8, !tbaa !99
  %78 = icmp eq ptr %77, null
  br i1 %78, label %81, label %79

79:                                               ; preds = %76
  %80 = tail call ptr @DestroyString(ptr noundef nonnull %77) #13
  store ptr %80, ptr %55, align 8, !tbaa !99
  br label %81

81:                                               ; preds = %79, %76
  %82 = load ptr, ptr %56, align 8, !tbaa !100
  %83 = icmp eq ptr %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %81
  %85 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %82) #13
  store ptr %85, ptr %56, align 8, !tbaa !100
  br label %86

86:                                               ; preds = %81, %84
  %87 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %45) #13
  br label %330

88:                                               ; preds = %66
  %89 = tail call i64 @strtoul(ptr nocapture noundef nonnull %67, ptr noundef null, i32 noundef 10) #13
  %90 = getelementptr inbounds %struct._ThresholdMap, ptr %45, i64 0, i32 2
  store i64 %89, ptr %90, align 8, !tbaa !103
  %91 = icmp eq i64 %89, 0
  br i1 %91, label %92, label %111

92:                                               ; preds = %88
  %93 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1020, i32 noundef 410, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.18, ptr noundef %2) #13
  %94 = tail call ptr @DestroyXMLTree(ptr noundef nonnull %9) #13
  %95 = load ptr, ptr %45, align 8, !tbaa !97
  %96 = icmp eq ptr %95, null
  br i1 %96, label %99, label %97

97:                                               ; preds = %92
  %98 = tail call ptr @DestroyString(ptr noundef nonnull %95) #13
  store ptr %98, ptr %45, align 8, !tbaa !97
  br label %99

99:                                               ; preds = %97, %92
  %100 = load ptr, ptr %55, align 8, !tbaa !99
  %101 = icmp eq ptr %100, null
  br i1 %101, label %104, label %102

102:                                              ; preds = %99
  %103 = tail call ptr @DestroyString(ptr noundef nonnull %100) #13
  store ptr %103, ptr %55, align 8, !tbaa !99
  br label %104

104:                                              ; preds = %102, %99
  %105 = load ptr, ptr %56, align 8, !tbaa !100
  %106 = icmp eq ptr %105, null
  br i1 %106, label %109, label %107

107:                                              ; preds = %104
  %108 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %105) #13
  store ptr %108, ptr %56, align 8, !tbaa !100
  br label %109

109:                                              ; preds = %104, %107
  %110 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %45) #13
  br label %330

111:                                              ; preds = %88
  %112 = tail call ptr @GetXMLTreeAttribute(ptr noundef nonnull %39, ptr noundef nonnull @.str.20) #13
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %133

114:                                              ; preds = %111
  %115 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1029, i32 noundef 410, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.21, ptr noundef %2) #13
  %116 = tail call ptr @DestroyXMLTree(ptr noundef nonnull %9) #13
  %117 = load ptr, ptr %45, align 8, !tbaa !97
  %118 = icmp eq ptr %117, null
  br i1 %118, label %121, label %119

119:                                              ; preds = %114
  %120 = tail call ptr @DestroyString(ptr noundef nonnull %117) #13
  store ptr %120, ptr %45, align 8, !tbaa !97
  br label %121

121:                                              ; preds = %119, %114
  %122 = load ptr, ptr %55, align 8, !tbaa !99
  %123 = icmp eq ptr %122, null
  br i1 %123, label %126, label %124

124:                                              ; preds = %121
  %125 = tail call ptr @DestroyString(ptr noundef nonnull %122) #13
  store ptr %125, ptr %55, align 8, !tbaa !99
  br label %126

126:                                              ; preds = %124, %121
  %127 = load ptr, ptr %56, align 8, !tbaa !100
  %128 = icmp eq ptr %127, null
  br i1 %128, label %131, label %129

129:                                              ; preds = %126
  %130 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %127) #13
  store ptr %130, ptr %56, align 8, !tbaa !100
  br label %131

131:                                              ; preds = %126, %129
  %132 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %45) #13
  br label %330

133:                                              ; preds = %111
  %134 = tail call i64 @strtoul(ptr nocapture noundef nonnull %112, ptr noundef null, i32 noundef 10) #13
  %135 = getelementptr inbounds %struct._ThresholdMap, ptr %45, i64 0, i32 3
  store i64 %134, ptr %135, align 8, !tbaa !104
  %136 = icmp eq i64 %134, 0
  br i1 %136, label %137, label %156

137:                                              ; preds = %133
  %138 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1038, i32 noundef 410, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.21, ptr noundef %2) #13
  %139 = tail call ptr @DestroyXMLTree(ptr noundef nonnull %9) #13
  %140 = load ptr, ptr %45, align 8, !tbaa !97
  %141 = icmp eq ptr %140, null
  br i1 %141, label %144, label %142

142:                                              ; preds = %137
  %143 = tail call ptr @DestroyString(ptr noundef nonnull %140) #13
  store ptr %143, ptr %45, align 8, !tbaa !97
  br label %144

144:                                              ; preds = %142, %137
  %145 = load ptr, ptr %55, align 8, !tbaa !99
  %146 = icmp eq ptr %145, null
  br i1 %146, label %149, label %147

147:                                              ; preds = %144
  %148 = tail call ptr @DestroyString(ptr noundef nonnull %145) #13
  store ptr %148, ptr %55, align 8, !tbaa !99
  br label %149

149:                                              ; preds = %147, %144
  %150 = load ptr, ptr %56, align 8, !tbaa !100
  %151 = icmp eq ptr %150, null
  br i1 %151, label %154, label %152

152:                                              ; preds = %149
  %153 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %150) #13
  store ptr %153, ptr %56, align 8, !tbaa !100
  br label %154

154:                                              ; preds = %149, %152
  %155 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %45) #13
  br label %330

156:                                              ; preds = %133
  %157 = tail call ptr @GetXMLTreeAttribute(ptr noundef nonnull %39, ptr noundef nonnull @.str.22) #13
  %158 = icmp eq ptr %157, null
  br i1 %158, label %159, label %178

159:                                              ; preds = %156
  %160 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1047, i32 noundef 410, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.23, ptr noundef %2) #13
  %161 = tail call ptr @DestroyXMLTree(ptr noundef nonnull %9) #13
  %162 = load ptr, ptr %45, align 8, !tbaa !97
  %163 = icmp eq ptr %162, null
  br i1 %163, label %166, label %164

164:                                              ; preds = %159
  %165 = tail call ptr @DestroyString(ptr noundef nonnull %162) #13
  store ptr %165, ptr %45, align 8, !tbaa !97
  br label %166

166:                                              ; preds = %164, %159
  %167 = load ptr, ptr %55, align 8, !tbaa !99
  %168 = icmp eq ptr %167, null
  br i1 %168, label %171, label %169

169:                                              ; preds = %166
  %170 = tail call ptr @DestroyString(ptr noundef nonnull %167) #13
  store ptr %170, ptr %55, align 8, !tbaa !99
  br label %171

171:                                              ; preds = %169, %166
  %172 = load ptr, ptr %56, align 8, !tbaa !100
  %173 = icmp eq ptr %172, null
  br i1 %173, label %176, label %174

174:                                              ; preds = %171
  %175 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %172) #13
  store ptr %175, ptr %56, align 8, !tbaa !100
  br label %176

176:                                              ; preds = %171, %174
  %177 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %45) #13
  br label %330

178:                                              ; preds = %156
  %179 = tail call i64 @strtol(ptr nocapture noundef nonnull %157, ptr noundef null, i32 noundef 10) #13
  %180 = getelementptr inbounds %struct._ThresholdMap, ptr %45, i64 0, i32 4
  store i64 %179, ptr %180, align 8, !tbaa !105
  %181 = icmp slt i64 %179, 2
  br i1 %181, label %182, label %201

182:                                              ; preds = %178
  %183 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1056, i32 noundef 410, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.23, ptr noundef %2) #13
  %184 = tail call ptr @DestroyXMLTree(ptr noundef nonnull %9) #13
  %185 = load ptr, ptr %45, align 8, !tbaa !97
  %186 = icmp eq ptr %185, null
  br i1 %186, label %189, label %187

187:                                              ; preds = %182
  %188 = tail call ptr @DestroyString(ptr noundef nonnull %185) #13
  store ptr %188, ptr %45, align 8, !tbaa !97
  br label %189

189:                                              ; preds = %187, %182
  %190 = load ptr, ptr %55, align 8, !tbaa !99
  %191 = icmp eq ptr %190, null
  br i1 %191, label %194, label %192

192:                                              ; preds = %189
  %193 = tail call ptr @DestroyString(ptr noundef nonnull %190) #13
  store ptr %193, ptr %55, align 8, !tbaa !99
  br label %194

194:                                              ; preds = %192, %189
  %195 = load ptr, ptr %56, align 8, !tbaa !100
  %196 = icmp eq ptr %195, null
  br i1 %196, label %199, label %197

197:                                              ; preds = %194
  %198 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %195) #13
  store ptr %198, ptr %56, align 8, !tbaa !100
  br label %199

199:                                              ; preds = %194, %197
  %200 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %45) #13
  br label %330

201:                                              ; preds = %178
  %202 = tail call ptr @GetXMLTreeContent(ptr noundef nonnull %39) #13
  %203 = icmp eq ptr %202, null
  br i1 %203, label %204, label %223

204:                                              ; preds = %201
  %205 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1068, i32 noundef 410, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.13, ptr noundef %2) #13
  %206 = tail call ptr @DestroyXMLTree(ptr noundef nonnull %9) #13
  %207 = load ptr, ptr %45, align 8, !tbaa !97
  %208 = icmp eq ptr %207, null
  br i1 %208, label %211, label %209

209:                                              ; preds = %204
  %210 = tail call ptr @DestroyString(ptr noundef nonnull %207) #13
  store ptr %210, ptr %45, align 8, !tbaa !97
  br label %211

211:                                              ; preds = %209, %204
  %212 = load ptr, ptr %55, align 8, !tbaa !99
  %213 = icmp eq ptr %212, null
  br i1 %213, label %216, label %214

214:                                              ; preds = %211
  %215 = tail call ptr @DestroyString(ptr noundef nonnull %212) #13
  store ptr %215, ptr %55, align 8, !tbaa !99
  br label %216

216:                                              ; preds = %214, %211
  %217 = load ptr, ptr %56, align 8, !tbaa !100
  %218 = icmp eq ptr %217, null
  br i1 %218, label %221, label %219

219:                                              ; preds = %216
  %220 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %217) #13
  store ptr %220, ptr %56, align 8, !tbaa !100
  br label %221

221:                                              ; preds = %216, %219
  %222 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %45) #13
  br label %330

223:                                              ; preds = %201
  %224 = load i64, ptr %90, align 8, !tbaa !103
  %225 = load i64, ptr %135, align 8, !tbaa !104
  %226 = shl i64 %225, 3
  %227 = tail call ptr @AcquireQuantumMemory(i64 noundef %224, i64 noundef %226) #18
  store ptr %227, ptr %56, align 8, !tbaa !100
  %228 = icmp eq ptr %227, null
  br i1 %228, label %229, label %236

229:                                              ; preds = %223
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #13
  call void @GetExceptionInfo(ptr noundef nonnull %6) #13
  %230 = tail call ptr @__errno_location() #16
  %231 = load i32, ptr %230, align 4, !tbaa !102
  %232 = call ptr @GetExceptionMessage(i32 noundef %231) #13
  %233 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1077, i32 noundef 700, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr noundef %232) #13
  %234 = call ptr @DestroyString(ptr noundef %232) #13
  call void @CatchException(ptr noundef nonnull %6) #13
  %235 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %6) #13
  call void @MagickCoreTerminus() #13
  call void @_exit(i32 noundef 1) #17
  unreachable

236:                                              ; preds = %223
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  %237 = load i64, ptr %90, align 8, !tbaa !103
  %238 = load i64, ptr %135, align 8, !tbaa !104
  %239 = mul i64 %238, %237
  %240 = icmp sgt i64 %239, 0
  br i1 %240, label %247, label %299

241:                                              ; preds = %276
  %242 = add nuw nsw i64 %248, 1
  %243 = load i64, ptr %90, align 8, !tbaa !103
  %244 = load i64, ptr %135, align 8, !tbaa !104
  %245 = mul i64 %244, %243
  %246 = icmp slt i64 %242, %245
  br i1 %246, label %247, label %299, !llvm.loop !106

247:                                              ; preds = %236, %241
  %248 = phi i64 [ %242, %241 ], [ 0, %236 ]
  %249 = phi ptr [ %253, %241 ], [ %202, %236 ]
  %250 = call i64 @strtol(ptr noundef %249, ptr noundef nonnull %7, i32 noundef 10) #13
  %251 = load ptr, ptr %56, align 8, !tbaa !100
  %252 = getelementptr inbounds i64, ptr %251, i64 %248
  store i64 %250, ptr %252, align 8, !tbaa !107
  %253 = load ptr, ptr %7, align 8, !tbaa !108
  %254 = icmp eq ptr %253, %249
  br i1 %254, label %255, label %274

255:                                              ; preds = %247
  %256 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1093, i32 noundef 410, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, ptr noundef %2) #13
  %257 = tail call ptr @DestroyXMLTree(ptr noundef nonnull %9) #13
  %258 = load ptr, ptr %45, align 8, !tbaa !97
  %259 = icmp eq ptr %258, null
  br i1 %259, label %262, label %260

260:                                              ; preds = %255
  %261 = tail call ptr @DestroyString(ptr noundef nonnull %258) #13
  store ptr %261, ptr %45, align 8, !tbaa !97
  br label %262

262:                                              ; preds = %260, %255
  %263 = load ptr, ptr %55, align 8, !tbaa !99
  %264 = icmp eq ptr %263, null
  br i1 %264, label %267, label %265

265:                                              ; preds = %262
  %266 = tail call ptr @DestroyString(ptr noundef nonnull %263) #13
  store ptr %266, ptr %55, align 8, !tbaa !99
  br label %267

267:                                              ; preds = %265, %262
  %268 = load ptr, ptr %56, align 8, !tbaa !100
  %269 = icmp eq ptr %268, null
  br i1 %269, label %272, label %270

270:                                              ; preds = %267
  %271 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %268) #13
  store ptr %271, ptr %56, align 8, !tbaa !100
  br label %272

272:                                              ; preds = %267, %270
  %273 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %45) #13
  br label %323

274:                                              ; preds = %247
  %275 = icmp slt i64 %250, 0
  br i1 %275, label %279, label %276

276:                                              ; preds = %274
  %277 = load i64, ptr %180, align 8, !tbaa !105
  %278 = icmp sgt i64 %250, %277
  br i1 %278, label %279, label %241

279:                                              ; preds = %276, %274
  %280 = sitofp i64 %250 to double
  %281 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1101, i32 noundef 410, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.27, double noundef %280, ptr noundef %2) #13
  %282 = tail call ptr @DestroyXMLTree(ptr noundef nonnull %9) #13
  %283 = load ptr, ptr %45, align 8, !tbaa !97
  %284 = icmp eq ptr %283, null
  br i1 %284, label %287, label %285

285:                                              ; preds = %279
  %286 = tail call ptr @DestroyString(ptr noundef nonnull %283) #13
  store ptr %286, ptr %45, align 8, !tbaa !97
  br label %287

287:                                              ; preds = %285, %279
  %288 = load ptr, ptr %55, align 8, !tbaa !99
  %289 = icmp eq ptr %288, null
  br i1 %289, label %292, label %290

290:                                              ; preds = %287
  %291 = tail call ptr @DestroyString(ptr noundef nonnull %288) #13
  store ptr %291, ptr %55, align 8, !tbaa !99
  br label %292

292:                                              ; preds = %290, %287
  %293 = load ptr, ptr %56, align 8, !tbaa !100
  %294 = icmp eq ptr %293, null
  br i1 %294, label %297, label %295

295:                                              ; preds = %292
  %296 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %293) #13
  store ptr %296, ptr %56, align 8, !tbaa !100
  br label %297

297:                                              ; preds = %292, %295
  %298 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %45) #13
  br label %323

299:                                              ; preds = %241, %236
  %300 = phi ptr [ %202, %236 ], [ %253, %241 ]
  %301 = call i64 @strtol(ptr noundef %300, ptr noundef nonnull %7, i32 noundef 10) #13
  %302 = load ptr, ptr %7, align 8, !tbaa !108
  %303 = icmp eq ptr %302, %300
  br i1 %303, label %323, label %304

304:                                              ; preds = %299
  %305 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1114, i32 noundef 410, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.28, ptr noundef %2) #13
  %306 = tail call ptr @DestroyXMLTree(ptr noundef nonnull %9) #13
  %307 = load ptr, ptr %45, align 8, !tbaa !97
  %308 = icmp eq ptr %307, null
  br i1 %308, label %311, label %309

309:                                              ; preds = %304
  %310 = tail call ptr @DestroyString(ptr noundef nonnull %307) #13
  store ptr %310, ptr %45, align 8, !tbaa !97
  br label %311

311:                                              ; preds = %309, %304
  %312 = load ptr, ptr %55, align 8, !tbaa !99
  %313 = icmp eq ptr %312, null
  br i1 %313, label %316, label %314

314:                                              ; preds = %311
  %315 = tail call ptr @DestroyString(ptr noundef nonnull %312) #13
  store ptr %315, ptr %55, align 8, !tbaa !99
  br label %316

316:                                              ; preds = %314, %311
  %317 = load ptr, ptr %56, align 8, !tbaa !100
  %318 = icmp eq ptr %317, null
  br i1 %318, label %321, label %319

319:                                              ; preds = %316
  %320 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %317) #13
  store ptr %320, ptr %56, align 8, !tbaa !100
  br label %321

321:                                              ; preds = %316, %319
  %322 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %45) #13
  br label %323

323:                                              ; preds = %299, %321, %297, %272
  %324 = phi ptr [ %273, %272 ], [ %298, %297 ], [ %322, %321 ], [ %45, %299 ]
  %325 = phi ptr [ %257, %272 ], [ %282, %297 ], [ %306, %321 ], [ %9, %299 ]
  %326 = phi i1 [ false, %272 ], [ false, %297 ], [ false, %321 ], [ true, %299 ]
  %327 = phi ptr [ %273, %272 ], [ %298, %297 ], [ %322, %321 ], [ undef, %299 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  br i1 %326, label %328, label %330

328:                                              ; preds = %323
  %329 = tail call ptr @DestroyXMLTree(ptr noundef %325) #13
  br label %330

330:                                              ; preds = %4, %323, %328, %221, %199, %176, %154, %131, %109, %86, %41, %35, %30
  %331 = phi ptr [ null, %30 ], [ null, %35 ], [ null, %41 ], [ %87, %86 ], [ %110, %109 ], [ %132, %131 ], [ %155, %154 ], [ %177, %176 ], [ %200, %199 ], [ %222, %221 ], [ %324, %328 ], [ %327, %323 ], [ null, %4 ]
  ret ptr %331
}

declare ptr @NewXMLTree(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @GetXMLTreeChild(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @GetXMLTreeAttribute(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @GetNextXMLTreeTag(ptr noundef) local_unnamed_addr #2

declare ptr @DestroyXMLTree(ptr noundef) local_unnamed_addr #2

declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #4

declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #2

declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #5

declare void @CatchException(ptr noundef) local_unnamed_addr #2

declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #2

declare void @MagickCoreTerminus() local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #6

declare ptr @ConstantString(ptr noundef) local_unnamed_addr #2

declare ptr @GetXMLTreeContent(ptr noundef) local_unnamed_addr #2

; Function Attrs: allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local ptr @GetThresholdMap(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @GetThresholdMapFile(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.29, ptr noundef %0, ptr noundef %1)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %21

5:                                                ; preds = %2
  %6 = tail call ptr @GetConfigureOptions(ptr noundef nonnull @.str.30, ptr noundef %1) #13
  %7 = tail call ptr @GetNextValueInLinkedList(ptr noundef %6) #13
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %5, %15
  %10 = phi ptr [ %16, %15 ], [ %7, %5 ]
  %11 = tail call ptr @GetStringInfoDatum(ptr noundef nonnull %10) #13
  %12 = tail call ptr @GetStringInfoPath(ptr noundef nonnull %10) #13
  %13 = tail call ptr @GetThresholdMapFile(ptr noundef %11, ptr noundef %12, ptr noundef %0, ptr noundef %1)
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = tail call ptr @GetNextValueInLinkedList(ptr noundef %6) #13
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %9, !llvm.loop !109

18:                                               ; preds = %15, %9, %5
  %19 = phi ptr [ null, %5 ], [ null, %15 ], [ %13, %9 ]
  %20 = tail call ptr @DestroyConfigureOptions(ptr noundef %6) #13
  br label %21

21:                                               ; preds = %2, %18
  %22 = phi ptr [ %19, %18 ], [ %3, %2 ]
  ret ptr %22
}

declare ptr @GetConfigureOptions(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @GetNextValueInLinkedList(ptr noundef) local_unnamed_addr #2

declare ptr @GetStringInfoDatum(ptr noundef) local_unnamed_addr #2

declare ptr @GetStringInfoPath(ptr noundef) local_unnamed_addr #2

declare ptr @DestroyConfigureOptions(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ListThresholdMapFile(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 32, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1219, ptr noundef nonnull @.str.5, ptr noundef %2) #13
  %6 = tail call ptr @NewXMLTree(ptr noundef %1, ptr noundef %3) #13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %39, label %8

8:                                                ; preds = %4
  %9 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %0, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34) #13
  %10 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %0, ptr noundef nonnull @.str.35) #13
  %11 = tail call ptr @GetXMLTreeChild(ptr noundef nonnull %6, ptr noundef nonnull @.str.6) #13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %36, label %13

13:                                               ; preds = %8, %30
  %14 = phi ptr [ %34, %30 ], [ %11, %8 ]
  %15 = tail call ptr @GetXMLTreeAttribute(ptr noundef nonnull %14, ptr noundef nonnull @.str.7) #13
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1235, i32 noundef 410, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.36) #13
  br label %36

19:                                               ; preds = %13
  %20 = tail call ptr @GetXMLTreeAttribute(ptr noundef nonnull %14, ptr noundef nonnull @.str.8) #13
  %21 = tail call ptr @GetXMLTreeChild(ptr noundef nonnull %14, ptr noundef nonnull @.str.9) #13
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1244, i32 noundef 410, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef nonnull %15) #13
  br label %36

25:                                               ; preds = %19
  %26 = tail call ptr @GetXMLTreeContent(ptr noundef nonnull %21) #13
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1251, i32 noundef 410, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.11, ptr noundef nonnull %15) #13
  br label %36

30:                                               ; preds = %25
  %31 = icmp eq ptr %20, null
  %32 = select i1 %31, ptr @.str.1, ptr %20
  %33 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %0, ptr noundef nonnull @.str.31, ptr noundef nonnull %15, ptr noundef nonnull %32, ptr noundef nonnull %26) #13
  %34 = tail call ptr @GetNextXMLTreeTag(ptr noundef nonnull %14) #13
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %13, !llvm.loop !110

36:                                               ; preds = %30, %8, %17, %23, %28
  %37 = phi i32 [ 0, %28 ], [ 0, %23 ], [ 0, %17 ], [ 1, %8 ], [ 1, %30 ]
  %38 = tail call ptr @DestroyXMLTree(ptr noundef nonnull %6) #13
  br label %39

39:                                               ; preds = %36, %4
  %40 = phi i32 [ 0, %4 ], [ %37, %36 ]
  ret i32 %40
}

declare i64 @FormatLocaleFile(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ListThresholdMaps(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  %4 = load ptr, ptr @stdout, align 8
  %5 = select i1 %3, ptr %4, ptr %0
  %6 = tail call ptr @GetConfigureOptions(ptr noundef nonnull @.str.30, ptr noundef %1) #13
  %7 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %5, ptr noundef nonnull @.str.37) #13
  %8 = tail call ptr @GetNextValueInLinkedList(ptr noundef %6) #13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %2, %10
  %11 = phi ptr [ %17, %10 ], [ %8, %2 ]
  %12 = tail call ptr @GetStringInfoPath(ptr noundef nonnull %11) #13
  %13 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %5, ptr noundef nonnull @.str.38, ptr noundef %12) #13
  %14 = tail call ptr @GetStringInfoDatum(ptr noundef nonnull %11) #13
  %15 = tail call ptr @GetStringInfoPath(ptr noundef nonnull %11) #13
  %16 = tail call i32 @ListThresholdMapFile(ptr noundef %5, ptr noundef %14, ptr noundef %15, ptr noundef %1), !range !76
  %17 = tail call ptr @GetNextValueInLinkedList(ptr noundef %6) #13
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %10, !llvm.loop !111

19:                                               ; preds = %10, %2
  %20 = tail call ptr @DestroyConfigureOptions(ptr noundef %6) #13
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @OrderedDitherImage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %3 = tail call i32 @OrderedPosterizeImageChannel(ptr noundef %0, i32 noundef 134217719, ptr noundef nonnull @.str.39, ptr noundef nonnull %2), !range !76
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @OrderedDitherImageChannel(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @OrderedPosterizeImageChannel(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.39, ptr noundef %2), !range !76
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @OrderedPosterizeImageChannel(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  %6 = alloca [4096 x i8], align 16
  %7 = alloca ptr, align 8
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %9 = load i32, ptr %8, align 8, !tbaa !34
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1463, ptr noundef nonnull @.str.2, ptr noundef nonnull %12) #13
  br label %14

14:                                               ; preds = %11, %4
  %15 = icmp eq ptr %2, null
  br i1 %15, label %438, label %16

16:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #13
  %17 = tail call ptr @__ctype_b_loc() #16
  %18 = load ptr, ptr %17, align 8, !tbaa !108
  br label %19

19:                                               ; preds = %19, %16
  %20 = phi ptr [ %2, %16 ], [ %31, %19 ]
  %21 = load i8, ptr %20, align 1, !tbaa !112
  %22 = zext i8 %21 to i64
  %23 = getelementptr inbounds i16, ptr %18, i64 %22
  %24 = load i16, ptr %23, align 2, !tbaa !60
  %25 = and i16 %24, 8192
  %26 = icmp eq i16 %25, 0
  %27 = icmp ne i8 %21, 44
  %28 = and i1 %27, %26
  %29 = icmp eq i8 %21, 0
  %30 = or i1 %29, %28
  %31 = getelementptr inbounds i8, ptr %20, i64 1
  br i1 %30, label %32, label %19, !llvm.loop !113

32:                                               ; preds = %19
  %33 = load ptr, ptr %17, align 8, !tbaa !108
  %34 = load i8, ptr %20, align 1, !tbaa !112
  %35 = zext i8 %34 to i64
  %36 = getelementptr inbounds i16, ptr %33, i64 %35
  %37 = load i16, ptr %36, align 2, !tbaa !60
  %38 = freeze i16 %37
  %39 = and i16 %38, 8192
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %41, label %61

41:                                               ; preds = %32
  %42 = ptrtoint ptr %20 to i64
  br label %43

43:                                               ; preds = %41, %50
  %44 = phi i8 [ %34, %41 ], [ %54, %50 ]
  %45 = phi ptr [ %20, %41 ], [ %52, %50 ]
  switch i8 %44, label %46 [
    i8 44, label %61
    i8 0, label %61
  ]

46:                                               ; preds = %43
  %47 = ptrtoint ptr %45 to i64
  %48 = sub i64 %47, %42
  %49 = icmp sgt i64 %48, 4094
  br i1 %49, label %61, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds [4096 x i8], ptr %6, i64 0, i64 %48
  store i8 %44, ptr %51, align 1, !tbaa !112
  %52 = getelementptr inbounds i8, ptr %45, i64 1
  %53 = load ptr, ptr %17, align 8, !tbaa !108
  %54 = load i8, ptr %52, align 1, !tbaa !112
  %55 = zext i8 %54 to i64
  %56 = getelementptr inbounds i16, ptr %53, i64 %55
  %57 = load i16, ptr %56, align 2, !tbaa !60
  %58 = freeze i16 %57
  %59 = and i16 %58, 8192
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %43, label %61, !llvm.loop !114

61:                                               ; preds = %46, %50, %43, %43, %32
  %62 = phi ptr [ %20, %32 ], [ %45, %46 ], [ %52, %50 ], [ %45, %43 ], [ %45, %43 ]
  %63 = ptrtoint ptr %62 to i64
  %64 = ptrtoint ptr %20 to i64
  %65 = sub i64 %63, %64
  %66 = getelementptr inbounds [4096 x i8], ptr %6, i64 0, i64 %65
  store i8 0, ptr %66, align 1, !tbaa !112
  %67 = call ptr @GetThresholdMap(ptr noundef nonnull %6, ptr noundef %3)
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %61
  %70 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1490, i32 noundef 410, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, ptr noundef nonnull %20) #13
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #13
  br label %438

71:                                               ; preds = %61
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  %72 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %20, i32 noundef 44) #19
  store ptr %72, ptr %7, align 8, !tbaa !108
  %73 = icmp eq ptr %72, null
  br i1 %73, label %86, label %74

74:                                               ; preds = %71
  %75 = load ptr, ptr %17, align 8, !tbaa !108
  %76 = getelementptr inbounds i8, ptr %72, i64 1
  store ptr %76, ptr %7, align 8, !tbaa !108
  %77 = load i8, ptr %76, align 1, !tbaa !112
  %78 = zext i8 %77 to i64
  %79 = getelementptr inbounds i16, ptr %75, i64 %78
  %80 = load i16, ptr %79, align 2, !tbaa !60
  %81 = and i16 %80, 2048
  %82 = icmp eq i16 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %74
  %84 = call i64 @strtoul(ptr noundef nonnull %76, ptr noundef nonnull %7, i32 noundef 10) #13
  %85 = trunc i64 %84 to i32
  br label %86

86:                                               ; preds = %71, %74, %83
  %87 = phi i32 [ %85, %83 ], [ 2, %74 ], [ 2, %71 ]
  %88 = and i32 %1, 1
  %89 = icmp eq i32 %88, 0
  %90 = select i1 %89, i32 0, i32 %87
  %91 = and i32 %1, 2
  %92 = icmp eq i32 %91, 0
  %93 = select i1 %92, i32 0, i32 %87
  %94 = and i32 %1, 4
  %95 = icmp eq i32 %94, 0
  %96 = select i1 %95, i32 0, i32 %87
  %97 = and i32 %1, 8
  %98 = icmp eq i32 %97, 0
  %99 = select i1 %98, i32 0, i32 %87
  %100 = and i32 %1, 32
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %107, label %102

102:                                              ; preds = %86
  %103 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %104 = load i32, ptr %103, align 4, !tbaa !55
  %105 = icmp eq i32 %104, 12
  %106 = select i1 %105, i32 %87, i32 0
  br label %107

107:                                              ; preds = %102, %86
  %108 = phi i32 [ 0, %86 ], [ %106, %102 ]
  %109 = load ptr, ptr %7, align 8, !tbaa !108
  %110 = icmp eq ptr %109, null
  br i1 %110, label %173, label %111

111:                                              ; preds = %107
  %112 = load i8, ptr %109, align 1, !tbaa !112
  %113 = icmp eq i8 %112, 44
  br i1 %113, label %114, label %173

114:                                              ; preds = %111
  %115 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %20, i32 noundef 44) #19
  %116 = getelementptr inbounds i8, ptr %115, i64 1
  store ptr %116, ptr %7, align 8, !tbaa !108
  br i1 %89, label %125, label %117

117:                                              ; preds = %114
  %118 = call i64 @strtoul(ptr noundef nonnull %116, ptr noundef nonnull %7, i32 noundef 10) #13
  %119 = trunc i64 %118 to i32
  %120 = load ptr, ptr %7, align 8, !tbaa !108
  %121 = load i8, ptr %120, align 1, !tbaa !112
  %122 = icmp eq i8 %121, 44
  br i1 %122, label %123, label %125

123:                                              ; preds = %117
  %124 = getelementptr inbounds i8, ptr %120, i64 1
  store ptr %124, ptr %7, align 8, !tbaa !108
  br label %125

125:                                              ; preds = %117, %123, %114
  %126 = phi i32 [ %90, %114 ], [ %119, %123 ], [ %119, %117 ]
  br i1 %92, label %136, label %127

127:                                              ; preds = %125
  %128 = load ptr, ptr %7, align 8, !tbaa !108
  %129 = call i64 @strtoul(ptr noundef %128, ptr noundef nonnull %7, i32 noundef 10) #13
  %130 = trunc i64 %129 to i32
  %131 = load ptr, ptr %7, align 8, !tbaa !108
  %132 = load i8, ptr %131, align 1, !tbaa !112
  %133 = icmp eq i8 %132, 44
  br i1 %133, label %134, label %136

134:                                              ; preds = %127
  %135 = getelementptr inbounds i8, ptr %131, i64 1
  store ptr %135, ptr %7, align 8, !tbaa !108
  br label %136

136:                                              ; preds = %127, %134, %125
  %137 = phi i32 [ %93, %125 ], [ %130, %134 ], [ %130, %127 ]
  br i1 %95, label %147, label %138

138:                                              ; preds = %136
  %139 = load ptr, ptr %7, align 8, !tbaa !108
  %140 = call i64 @strtoul(ptr noundef %139, ptr noundef nonnull %7, i32 noundef 10) #13
  %141 = trunc i64 %140 to i32
  %142 = load ptr, ptr %7, align 8, !tbaa !108
  %143 = load i8, ptr %142, align 1, !tbaa !112
  %144 = icmp eq i8 %143, 44
  br i1 %144, label %145, label %147

145:                                              ; preds = %138
  %146 = getelementptr inbounds i8, ptr %142, i64 1
  store ptr %146, ptr %7, align 8, !tbaa !108
  br label %147

147:                                              ; preds = %138, %145, %136
  %148 = phi i32 [ %96, %136 ], [ %141, %145 ], [ %141, %138 ]
  br i1 %101, label %162, label %149

149:                                              ; preds = %147
  %150 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %151 = load i32, ptr %150, align 4, !tbaa !55
  %152 = icmp eq i32 %151, 12
  br i1 %152, label %153, label %162

153:                                              ; preds = %149
  %154 = load ptr, ptr %7, align 8, !tbaa !108
  %155 = call i64 @strtoul(ptr noundef %154, ptr noundef nonnull %7, i32 noundef 10) #13
  %156 = trunc i64 %155 to i32
  %157 = load ptr, ptr %7, align 8, !tbaa !108
  %158 = load i8, ptr %157, align 1, !tbaa !112
  %159 = icmp eq i8 %158, 44
  br i1 %159, label %160, label %162

160:                                              ; preds = %153
  %161 = getelementptr inbounds i8, ptr %157, i64 1
  store ptr %161, ptr %7, align 8, !tbaa !108
  br label %162

162:                                              ; preds = %153, %160, %149, %147
  %163 = phi i32 [ %108, %149 ], [ %108, %147 ], [ %156, %160 ], [ %156, %153 ]
  br i1 %98, label %173, label %164

164:                                              ; preds = %162
  %165 = load ptr, ptr %7, align 8, !tbaa !108
  %166 = call i64 @strtoul(ptr noundef %165, ptr noundef nonnull %7, i32 noundef 10) #13
  %167 = trunc i64 %166 to i32
  %168 = load ptr, ptr %7, align 8, !tbaa !108
  %169 = load i8, ptr %168, align 1, !tbaa !112
  %170 = icmp eq i8 %169, 44
  br i1 %170, label %171, label %173

171:                                              ; preds = %164
  %172 = getelementptr inbounds i8, ptr %168, i64 1
  store ptr %172, ptr %7, align 8, !tbaa !108
  br label %173

173:                                              ; preds = %164, %171, %162, %111, %107
  %174 = phi i32 [ %99, %162 ], [ %99, %111 ], [ %99, %107 ], [ %167, %171 ], [ %167, %164 ]
  %175 = phi i32 [ %148, %162 ], [ %96, %111 ], [ %96, %107 ], [ %148, %171 ], [ %148, %164 ]
  %176 = phi i32 [ %137, %162 ], [ %93, %111 ], [ %93, %107 ], [ %137, %171 ], [ %137, %164 ]
  %177 = phi i32 [ %126, %162 ], [ %90, %111 ], [ %90, %107 ], [ %126, %171 ], [ %126, %164 ]
  %178 = phi i32 [ %163, %162 ], [ %108, %111 ], [ %108, %107 ], [ %163, %171 ], [ %163, %164 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  %179 = getelementptr inbounds %struct._ThresholdMap, ptr %67, i64 0, i32 4
  %180 = load i64, ptr %179, align 8, !tbaa !105
  %181 = add nsw i64 %180, -1
  %182 = call i32 @llvm.usub.sat.i32(i32 %177, i32 1)
  %183 = call i32 @llvm.usub.sat.i32(i32 %176, i32 1)
  %184 = call i32 @llvm.usub.sat.i32(i32 %175, i32 1)
  %185 = call i32 @llvm.usub.sat.i32(i32 %174, i32 1)
  %186 = call i32 @llvm.usub.sat.i32(i32 %178, i32 1)
  %187 = call i32 @SetImageStorageClass(ptr noundef %0, i32 noundef 1) #13
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %173
  %190 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  call void @InheritException(ptr noundef %3, ptr noundef nonnull %190) #13
  br label %418

191:                                              ; preds = %173
  %192 = call ptr @AcquireAuthenticCacheView(ptr noundef %0, ptr noundef %3) #13
  %193 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %194 = load i64, ptr %193, align 8, !tbaa !53
  %195 = icmp sgt i64 %194, 0
  br i1 %195, label %196, label %416

196:                                              ; preds = %191
  %197 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %198 = getelementptr inbounds %struct._ThresholdMap, ptr %67, i64 0, i32 5
  %199 = getelementptr inbounds %struct._ThresholdMap, ptr %67, i64 0, i32 2
  %200 = getelementptr inbounds %struct._ThresholdMap, ptr %67, i64 0, i32 3
  %201 = icmp ult i32 %177, 2
  %202 = zext i32 %182 to i64
  %203 = mul nsw i64 %181, %202
  %204 = add nsw i64 %203, 1
  %205 = sitofp i64 %204 to double
  %206 = uitofp i32 %182 to float
  %207 = icmp ult i32 %176, 2
  %208 = zext i32 %183 to i64
  %209 = mul nsw i64 %181, %208
  %210 = add nsw i64 %209, 1
  %211 = sitofp i64 %210 to double
  %212 = uitofp i32 %183 to float
  %213 = icmp ult i32 %175, 2
  %214 = zext i32 %184 to i64
  %215 = mul nsw i64 %181, %214
  %216 = add nsw i64 %215, 1
  %217 = sitofp i64 %216 to double
  %218 = uitofp i32 %184 to float
  %219 = icmp ult i32 %174, 2
  %220 = zext i32 %185 to i64
  %221 = mul nsw i64 %181, %220
  %222 = add nsw i64 %221, 1
  %223 = sitofp i64 %222 to double
  %224 = uitofp i32 %185 to double
  %225 = icmp ult i32 %178, 2
  %226 = zext i32 %186 to i64
  %227 = mul nsw i64 %181, %226
  %228 = add nsw i64 %227, 1
  %229 = sitofp i64 %228 to double
  %230 = uitofp i32 %186 to float
  %231 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %232 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %233 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %234

234:                                              ; preds = %196, %410
  %235 = phi i64 [ 0, %196 ], [ %413, %410 ]
  %236 = phi i64 [ 0, %196 ], [ %412, %410 ]
  %237 = phi i32 [ 1, %196 ], [ %411, %410 ]
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %410, label %239

239:                                              ; preds = %234
  %240 = load i64, ptr %197, align 8, !tbaa !54
  %241 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %192, i64 noundef 0, i64 noundef %235, i64 noundef %240, i64 noundef 1, ptr noundef %3) #14
  %242 = icmp eq ptr %241, null
  br i1 %242, label %410, label %243

243:                                              ; preds = %239
  %244 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %192) #13
  %245 = load i64, ptr %197, align 8, !tbaa !54
  %246 = icmp sgt i64 %245, 0
  br i1 %246, label %247, label %395

247:                                              ; preds = %243
  %248 = load ptr, ptr %198, align 8, !tbaa !100
  %249 = load i64, ptr %199, align 8, !tbaa !103
  %250 = load i64, ptr %200, align 8, !tbaa !104
  %251 = urem i64 %235, %250
  %252 = mul i64 %251, %249
  %253 = getelementptr i64, ptr %248, i64 %252
  %254 = icmp eq ptr %244, null
  br label %255

255:                                              ; preds = %247, %391
  %256 = phi ptr [ %241, %247 ], [ %392, %391 ]
  %257 = phi i64 [ 0, %247 ], [ %393, %391 ]
  %258 = urem i64 %257, %249
  %259 = getelementptr i64, ptr %253, i64 %258
  %260 = load i64, ptr %259, align 8, !tbaa !107
  br i1 %201, label %285, label %261

261:                                              ; preds = %255
  %262 = getelementptr inbounds %struct._PixelPacket, ptr %256, i64 0, i32 2
  %263 = load i16, ptr %262, align 2, !tbaa !56
  %264 = uitofp i16 %263 to double
  %265 = fmul double %264, 0x3EF0001000100010
  %266 = fmul double %265, %205
  %267 = fptosi double %266 to i64
  %268 = sdiv i64 %267, %181
  %269 = mul nsw i64 %268, %181
  %270 = srem i64 %267, %181
  %271 = icmp sge i64 %270, %260
  %272 = zext i1 %271 to i64
  %273 = add nsw i64 %268, %272
  %274 = sitofp i64 %273 to float
  %275 = fmul float %274, 6.553500e+04
  %276 = fdiv float %275, %206
  %277 = fcmp ugt float %276, 0.000000e+00
  br i1 %277, label %278, label %283

278:                                              ; preds = %261
  %279 = fcmp ult float %276, 6.553500e+04
  br i1 %279, label %280, label %283

280:                                              ; preds = %278
  %281 = fadd float %276, 5.000000e-01
  %282 = fptoui float %281 to i16
  br label %283

283:                                              ; preds = %261, %278, %280
  %284 = phi i16 [ %282, %280 ], [ 0, %261 ], [ -1, %278 ]
  store i16 %284, ptr %262, align 2, !tbaa !56
  br label %285

285:                                              ; preds = %283, %255
  br i1 %207, label %310, label %286

286:                                              ; preds = %285
  %287 = getelementptr inbounds %struct._PixelPacket, ptr %256, i64 0, i32 1
  %288 = load i16, ptr %287, align 2, !tbaa !57
  %289 = uitofp i16 %288 to double
  %290 = fmul double %289, 0x3EF0001000100010
  %291 = fmul double %290, %211
  %292 = fptosi double %291 to i64
  %293 = sdiv i64 %292, %181
  %294 = mul nsw i64 %293, %181
  %295 = srem i64 %292, %181
  %296 = icmp sge i64 %295, %260
  %297 = zext i1 %296 to i64
  %298 = add nsw i64 %293, %297
  %299 = sitofp i64 %298 to float
  %300 = fmul float %299, 6.553500e+04
  %301 = fdiv float %300, %212
  %302 = fcmp ugt float %301, 0.000000e+00
  br i1 %302, label %303, label %308

303:                                              ; preds = %286
  %304 = fcmp ult float %301, 6.553500e+04
  br i1 %304, label %305, label %308

305:                                              ; preds = %303
  %306 = fadd float %301, 5.000000e-01
  %307 = fptoui float %306 to i16
  br label %308

308:                                              ; preds = %286, %303, %305
  %309 = phi i16 [ %307, %305 ], [ 0, %286 ], [ -1, %303 ]
  store i16 %309, ptr %287, align 2, !tbaa !57
  br label %310

310:                                              ; preds = %308, %285
  br i1 %213, label %334, label %311

311:                                              ; preds = %310
  %312 = load i16, ptr %256, align 2, !tbaa !58
  %313 = uitofp i16 %312 to double
  %314 = fmul double %313, 0x3EF0001000100010
  %315 = fmul double %314, %217
  %316 = fptosi double %315 to i64
  %317 = sdiv i64 %316, %181
  %318 = mul nsw i64 %317, %181
  %319 = srem i64 %316, %181
  %320 = icmp sge i64 %319, %260
  %321 = zext i1 %320 to i64
  %322 = add nsw i64 %317, %321
  %323 = sitofp i64 %322 to float
  %324 = fmul float %323, 6.553500e+04
  %325 = fdiv float %324, %218
  %326 = fcmp ugt float %325, 0.000000e+00
  br i1 %326, label %327, label %332

327:                                              ; preds = %311
  %328 = fcmp ult float %325, 6.553500e+04
  br i1 %328, label %329, label %332

329:                                              ; preds = %327
  %330 = fadd float %325, 5.000000e-01
  %331 = fptoui float %330 to i16
  br label %332

332:                                              ; preds = %311, %327, %329
  %333 = phi i16 [ %331, %329 ], [ 0, %311 ], [ -1, %327 ]
  store i16 %333, ptr %256, align 2, !tbaa !58
  br label %334

334:                                              ; preds = %332, %310
  br i1 %219, label %361, label %335

335:                                              ; preds = %334
  %336 = getelementptr inbounds %struct._PixelPacket, ptr %256, i64 0, i32 3
  %337 = load i16, ptr %336, align 2, !tbaa !59
  %338 = uitofp i16 %337 to double
  %339 = call double @llvm.fmuladd.f64(double %338, double 0xBEF0001000100010, double 1.000000e+00)
  %340 = fmul double %339, %223
  %341 = fptosi double %340 to i64
  %342 = sdiv i64 %341, %181
  %343 = mul nsw i64 %342, %181
  %344 = srem i64 %341, %181
  %345 = sitofp i64 %342 to double
  %346 = fsub double 1.000000e+00, %345
  %347 = icmp sge i64 %344, %260
  %348 = uitofp i1 %347 to double
  %349 = fsub double %346, %348
  %350 = fmul double %349, 6.553500e+04
  %351 = fdiv double %350, %224
  %352 = fptrunc double %351 to float
  %353 = fcmp ugt float %352, 0.000000e+00
  br i1 %353, label %354, label %359

354:                                              ; preds = %335
  %355 = fcmp ult float %352, 6.553500e+04
  br i1 %355, label %356, label %359

356:                                              ; preds = %354
  %357 = fadd float %352, 5.000000e-01
  %358 = fptoui float %357 to i16
  br label %359

359:                                              ; preds = %335, %354, %356
  %360 = phi i16 [ %358, %356 ], [ 0, %335 ], [ -1, %354 ]
  store i16 %360, ptr %336, align 2, !tbaa !59
  br label %361

361:                                              ; preds = %359, %334
  br i1 %225, label %391, label %362

362:                                              ; preds = %361
  %363 = getelementptr inbounds i16, ptr %244, i64 %257
  br i1 %254, label %367, label %364

364:                                              ; preds = %362
  %365 = load i16, ptr %363, align 2, !tbaa !60
  %366 = zext i16 %365 to i32
  br label %367

367:                                              ; preds = %362, %364
  %368 = phi i32 [ %366, %364 ], [ 0, %362 ]
  br i1 %254, label %391, label %369

369:                                              ; preds = %367
  %370 = sitofp i32 %368 to double
  %371 = fmul double %370, 0x3EF0001000100010
  %372 = fmul double %371, %229
  %373 = fptosi double %372 to i64
  %374 = sdiv i64 %373, %181
  %375 = mul nsw i64 %374, %181
  %376 = srem i64 %373, %181
  %377 = icmp sge i64 %376, %260
  %378 = zext i1 %377 to i64
  %379 = add nsw i64 %374, %378
  %380 = sitofp i64 %379 to float
  %381 = fmul float %380, 6.553500e+04
  %382 = fdiv float %381, %230
  %383 = fcmp ugt float %382, 0.000000e+00
  br i1 %383, label %384, label %389

384:                                              ; preds = %369
  %385 = fcmp ult float %382, 6.553500e+04
  br i1 %385, label %386, label %389

386:                                              ; preds = %384
  %387 = fadd float %382, 5.000000e-01
  %388 = fptoui float %387 to i16
  br label %389

389:                                              ; preds = %369, %384, %386
  %390 = phi i16 [ %388, %386 ], [ 0, %369 ], [ -1, %384 ]
  store i16 %390, ptr %363, align 2, !tbaa !60
  br label %391

391:                                              ; preds = %367, %389, %361
  %392 = getelementptr inbounds %struct._PixelPacket, ptr %256, i64 1
  %393 = add nuw nsw i64 %257, 1
  %394 = icmp eq i64 %393, %245
  br i1 %394, label %395, label %255, !llvm.loop !115

395:                                              ; preds = %391, %243
  %396 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %192, ptr noundef %3) #14
  %397 = icmp ne i32 %396, 0
  %398 = zext i1 %397 to i32
  %399 = load ptr, ptr %231, align 8, !tbaa !73
  %400 = icmp eq ptr %399, null
  br i1 %400, label %410, label %401

401:                                              ; preds = %395
  %402 = add nsw i64 %236, 1
  %403 = load i64, ptr %193, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #13
  %404 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.43, ptr noundef nonnull %232) #13
  %405 = load ptr, ptr %231, align 8, !tbaa !73
  %406 = load ptr, ptr %233, align 8, !tbaa !74
  %407 = call i32 %405(ptr noundef nonnull %5, i64 noundef %236, i64 noundef %403, ptr noundef %406) #13
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #13
  %408 = icmp eq i32 %407, 0
  %409 = select i1 %408, i32 0, i32 %398
  br label %410

410:                                              ; preds = %395, %401, %239, %234
  %411 = phi i32 [ 0, %234 ], [ 0, %239 ], [ %409, %401 ], [ %398, %395 ]
  %412 = phi i64 [ %236, %234 ], [ %236, %239 ], [ %402, %401 ], [ %236, %395 ]
  %413 = add nuw nsw i64 %235, 1
  %414 = load i64, ptr %193, align 8, !tbaa !53
  %415 = icmp slt i64 %413, %414
  br i1 %415, label %234, label %416, !llvm.loop !116

416:                                              ; preds = %410, %191
  %417 = call ptr @DestroyCacheView(ptr noundef %192) #13
  br label %418

418:                                              ; preds = %416, %189
  br i1 %188, label %438, label %419

419:                                              ; preds = %418
  %420 = load ptr, ptr %67, align 8, !tbaa !97
  %421 = icmp eq ptr %420, null
  br i1 %421, label %424, label %422

422:                                              ; preds = %419
  %423 = call ptr @DestroyString(ptr noundef nonnull %420) #13
  store ptr %423, ptr %67, align 8, !tbaa !97
  br label %424

424:                                              ; preds = %422, %419
  %425 = getelementptr inbounds %struct._ThresholdMap, ptr %67, i64 0, i32 1
  %426 = load ptr, ptr %425, align 8, !tbaa !99
  %427 = icmp eq ptr %426, null
  br i1 %427, label %430, label %428

428:                                              ; preds = %424
  %429 = call ptr @DestroyString(ptr noundef nonnull %426) #13
  store ptr %429, ptr %425, align 8, !tbaa !99
  br label %430

430:                                              ; preds = %428, %424
  %431 = getelementptr inbounds %struct._ThresholdMap, ptr %67, i64 0, i32 5
  %432 = load ptr, ptr %431, align 8, !tbaa !100
  %433 = icmp eq ptr %432, null
  br i1 %433, label %436, label %434

434:                                              ; preds = %430
  %435 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %432) #13
  store ptr %435, ptr %431, align 8, !tbaa !100
  br label %436

436:                                              ; preds = %430, %434
  %437 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %67) #13
  br label %438

438:                                              ; preds = %69, %14, %418, %436
  %439 = phi i32 [ 1, %436 ], [ 0, %418 ], [ 0, %69 ], [ 1, %14 ]
  ret i32 %439
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @OrderedPosterizeImage(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @OrderedPosterizeImageChannel(ptr noundef %0, i32 noundef 134217719, ptr noundef %1, ptr noundef %2), !range !76
  ret i32 %4
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #10

; Function Attrs: nounwind uwtable
define dso_local i32 @PerceptibleImage(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @PerceptibleImageChannel(ptr noundef %0, i32 noundef 134217719, double noundef %1)
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define dso_local i32 @PerceptibleImageChannel(ptr noundef %0, i32 noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1753, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #13
  br label %11

11:                                               ; preds = %8, %3
  %12 = load i32, ptr %0, align 8, !tbaa !95
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %49

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %16 = load i64, ptr %15, align 8, !tbaa !117
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %47

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %20 = load ptr, ptr %19, align 8, !tbaa !118
  %21 = fptoui double %2 to i16
  br label %22

22:                                               ; preds = %18, %22
  %23 = phi ptr [ %20, %18 ], [ %44, %22 ]
  %24 = phi i64 [ 0, %18 ], [ %45, %22 ]
  %25 = getelementptr inbounds %struct._PixelPacket, ptr %23, i64 0, i32 2
  %26 = load i16, ptr %25, align 2, !tbaa !56
  %27 = uitofp i16 %26 to double
  %28 = fcmp ult double %27, %2
  %29 = select i1 %28, i16 %21, i16 %26
  store i16 %29, ptr %25, align 2, !tbaa !56
  %30 = getelementptr inbounds %struct._PixelPacket, ptr %23, i64 0, i32 1
  %31 = load i16, ptr %30, align 2, !tbaa !57
  %32 = uitofp i16 %31 to double
  %33 = fcmp ult double %32, %2
  %34 = select i1 %33, i16 %21, i16 %31
  store i16 %34, ptr %30, align 2, !tbaa !57
  %35 = load i16, ptr %23, align 2, !tbaa !58
  %36 = uitofp i16 %35 to double
  %37 = fcmp ult double %36, %2
  %38 = select i1 %37, i16 %21, i16 %35
  store i16 %38, ptr %23, align 2, !tbaa !58
  %39 = getelementptr inbounds %struct._PixelPacket, ptr %23, i64 0, i32 3
  %40 = load i16, ptr %39, align 2, !tbaa !59
  %41 = uitofp i16 %40 to double
  %42 = fcmp ult double %41, %2
  %43 = select i1 %42, i16 %21, i16 %40
  store i16 %43, ptr %39, align 2, !tbaa !59
  %44 = getelementptr inbounds %struct._PixelPacket, ptr %23, i64 1
  %45 = add nuw nsw i64 %24, 1
  %46 = icmp eq i64 %45, %16
  br i1 %46, label %47, label %22, !llvm.loop !119

47:                                               ; preds = %22, %14
  %48 = tail call i32 @SyncImage(ptr noundef nonnull %0) #13
  br label %159

49:                                               ; preds = %11
  %50 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %51 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %50) #13
  %52 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %53 = load i64, ptr %52, align 8, !tbaa !53
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %156

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %57 = and i32 %1, 1
  %58 = icmp eq i32 %57, 0
  %59 = fptoui double %2 to i16
  %60 = and i32 %1, 2
  %61 = icmp eq i32 %60, 0
  %62 = fptoui double %2 to i16
  %63 = and i32 %1, 4
  %64 = icmp eq i32 %63, 0
  %65 = fptoui double %2 to i16
  %66 = and i32 %1, 8
  %67 = icmp eq i32 %66, 0
  %68 = fptoui double %2 to i16
  %69 = and i32 %1, 32
  %70 = icmp eq i32 %69, 0
  %71 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %72 = fptoui double %2 to i16
  %73 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %74 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %75 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %76

76:                                               ; preds = %55, %150
  %77 = phi i64 [ 0, %55 ], [ %153, %150 ]
  %78 = phi i64 [ 0, %55 ], [ %152, %150 ]
  %79 = phi i32 [ 1, %55 ], [ %151, %150 ]
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %150, label %81

81:                                               ; preds = %76
  %82 = load i64, ptr %56, align 8, !tbaa !54
  %83 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %51, i64 noundef 0, i64 noundef %77, i64 noundef %82, i64 noundef 1, ptr noundef nonnull %50) #14
  %84 = icmp eq ptr %83, null
  br i1 %84, label %150, label %85

85:                                               ; preds = %81
  %86 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %51) #13
  %87 = load i64, ptr %56, align 8, !tbaa !54
  %88 = icmp sgt i64 %87, 0
  br i1 %88, label %89, label %135

89:                                               ; preds = %85
  %90 = icmp eq ptr %86, null
  br label %91

91:                                               ; preds = %89, %131
  %92 = phi ptr [ %83, %89 ], [ %132, %131 ]
  %93 = phi i64 [ 0, %89 ], [ %133, %131 ]
  br i1 %58, label %100, label %94

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct._PixelPacket, ptr %92, i64 0, i32 2
  %96 = load i16, ptr %95, align 2, !tbaa !56
  %97 = uitofp i16 %96 to double
  %98 = fcmp ult double %97, %2
  %99 = select i1 %98, i16 %59, i16 %96
  store i16 %99, ptr %95, align 2, !tbaa !56
  br label %100

100:                                              ; preds = %94, %91
  br i1 %61, label %107, label %101

101:                                              ; preds = %100
  %102 = getelementptr inbounds %struct._PixelPacket, ptr %92, i64 0, i32 1
  %103 = load i16, ptr %102, align 2, !tbaa !57
  %104 = uitofp i16 %103 to double
  %105 = fcmp ult double %104, %2
  %106 = select i1 %105, i16 %62, i16 %103
  store i16 %106, ptr %102, align 2, !tbaa !57
  br label %107

107:                                              ; preds = %101, %100
  br i1 %64, label %113, label %108

108:                                              ; preds = %107
  %109 = load i16, ptr %92, align 2, !tbaa !58
  %110 = uitofp i16 %109 to double
  %111 = fcmp ult double %110, %2
  %112 = select i1 %111, i16 %65, i16 %109
  store i16 %112, ptr %92, align 2, !tbaa !58
  br label %113

113:                                              ; preds = %108, %107
  br i1 %67, label %120, label %114

114:                                              ; preds = %113
  %115 = getelementptr inbounds %struct._PixelPacket, ptr %92, i64 0, i32 3
  %116 = load i16, ptr %115, align 2, !tbaa !59
  %117 = uitofp i16 %116 to double
  %118 = fcmp ult double %117, %2
  %119 = select i1 %118, i16 %68, i16 %116
  store i16 %119, ptr %115, align 2, !tbaa !59
  br label %120

120:                                              ; preds = %114, %113
  br i1 %70, label %131, label %121

121:                                              ; preds = %120
  %122 = load i32, ptr %71, align 4, !tbaa !55
  %123 = icmp ne i32 %122, 12
  %124 = select i1 %123, i1 true, i1 %90
  br i1 %124, label %131, label %125

125:                                              ; preds = %121
  %126 = getelementptr inbounds i16, ptr %86, i64 %93
  %127 = load i16, ptr %126, align 2, !tbaa !60
  %128 = uitofp i16 %127 to double
  %129 = fcmp ult double %128, %2
  %130 = select i1 %129, i16 %72, i16 %127
  store i16 %130, ptr %126, align 2, !tbaa !60
  br label %131

131:                                              ; preds = %125, %121, %120
  %132 = getelementptr inbounds %struct._PixelPacket, ptr %92, i64 1
  %133 = add nuw nsw i64 %93, 1
  %134 = icmp eq i64 %133, %87
  br i1 %134, label %135, label %91, !llvm.loop !120

135:                                              ; preds = %131, %85
  %136 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %51, ptr noundef nonnull %50) #14
  %137 = icmp ne i32 %136, 0
  %138 = zext i1 %137 to i32
  %139 = load ptr, ptr %73, align 8, !tbaa !73
  %140 = icmp eq ptr %139, null
  br i1 %140, label %150, label %141

141:                                              ; preds = %135
  %142 = add nsw i64 %78, 1
  %143 = load i64, ptr %52, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #13
  %144 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.44, ptr noundef nonnull %74) #13
  %145 = load ptr, ptr %73, align 8, !tbaa !73
  %146 = load ptr, ptr %75, align 8, !tbaa !74
  %147 = call i32 %145(ptr noundef nonnull %4, i64 noundef %78, i64 noundef %143, ptr noundef %146) #13
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #13
  %148 = icmp eq i32 %147, 0
  %149 = select i1 %148, i32 0, i32 %138
  br label %150

150:                                              ; preds = %135, %141, %81, %76
  %151 = phi i32 [ 0, %76 ], [ 0, %81 ], [ %149, %141 ], [ %138, %135 ]
  %152 = phi i64 [ %78, %76 ], [ %78, %81 ], [ %142, %141 ], [ %78, %135 ]
  %153 = add nuw nsw i64 %77, 1
  %154 = load i64, ptr %52, align 8, !tbaa !53
  %155 = icmp slt i64 %153, %154
  br i1 %155, label %76, label %156, !llvm.loop !121

156:                                              ; preds = %150, %49
  %157 = phi i32 [ 1, %49 ], [ %151, %150 ]
  %158 = call ptr @DestroyCacheView(ptr noundef %51) #13
  br label %159

159:                                              ; preds = %156, %47
  %160 = phi i32 [ %48, %47 ], [ %157, %156 ]
  ret i32 %160
}

; Function Attrs: nounwind uwtable
define dso_local i32 @RandomThresholdImage(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @RandomThresholdImageChannel(ptr noundef %0, i32 noundef 134217719, ptr noundef %1, ptr noundef %2), !range !76
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local i32 @RandomThresholdImageChannel(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  %6 = alloca [4096 x i8], align 16
  %7 = alloca %struct._GeometryInfo, align 8
  %8 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #13
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %10 = load i32, ptr %9, align 8, !tbaa !34
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %14 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1928, ptr noundef nonnull @.str.2, ptr noundef nonnull %13) #13
  br label %15

15:                                               ; preds = %12, %4
  %16 = icmp eq ptr %2, null
  br i1 %16, label %465, label %17

17:                                               ; preds = %15
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %8) #13
  %18 = call i32 @ParseGeometry(ptr noundef nonnull %2, ptr noundef nonnull %7) #13
  %19 = load double, ptr %7, align 8, !tbaa !80
  %20 = fptrunc double %19 to float
  %21 = getelementptr inbounds %struct._GeometryInfo, ptr %7, i64 0, i32 1
  %22 = load double, ptr %21, align 8, !tbaa !84
  %23 = fptrunc double %22 to float
  %24 = and i32 %18, 8
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, float %20, float %23
  %27 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef 37) #19
  %28 = icmp eq ptr %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %17
  %30 = fmul float %26, 0x40847ACCC0000000
  %31 = fmul float %20, 0x40847ACCC0000000
  br label %40

32:                                               ; preds = %17
  %33 = fcmp oeq float %26, %20
  %34 = fcmp oeq float %26, 1.000000e+00
  %35 = or i1 %33, %34
  %36 = fcmp ole float %20, 8.000000e+00
  %37 = and i1 %36, %35
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = call i32 @OrderedPosterizeImageChannel(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3), !range !76
  br label %465

40:                                               ; preds = %32, %29
  %41 = phi float [ %30, %29 ], [ %26, %32 ]
  %42 = phi float [ %31, %29 ], [ %20, %32 ]
  %43 = icmp eq i32 %1, 47
  br i1 %43, label %44, label %193

44:                                               ; preds = %40
  %45 = call i32 @AcquireImageColormap(ptr noundef %0, i64 noundef 2) #13
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = icmp eq ptr %0, null
  br i1 %48, label %465, label %49

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %51 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %52 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %50, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1965, i32 noundef 400, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.15, ptr noundef nonnull %51) #13
  br label %465

53:                                               ; preds = %44
  %54 = call i64 @GetMagickResourceLimit(i32 noundef 6) #13
  %55 = call ptr @AcquireAlignedMemory(i64 noundef %54, i64 noundef 8) #18
  %56 = icmp eq ptr %55, null
  br i1 %56, label %85, label %57

57:                                               ; preds = %53
  %58 = shl i64 %54, 3
  %59 = call ptr @ResetMagickMemory(ptr noundef nonnull %55, i32 noundef 0, i64 noundef %58) #13
  %60 = icmp sgt i64 %54, 0
  br i1 %60, label %64, label %85

61:                                               ; preds = %64
  %62 = add nuw nsw i64 %65, 1
  %63 = icmp eq i64 %62, %54
  br i1 %63, label %85, label %64, !llvm.loop !122

64:                                               ; preds = %57, %61
  %65 = phi i64 [ %62, %61 ], [ 0, %57 ]
  %66 = call ptr @AcquireRandomInfo() #13
  %67 = getelementptr inbounds ptr, ptr %55, i64 %65
  store ptr %66, ptr %67, align 8, !tbaa !108
  %68 = icmp eq ptr %66, null
  br i1 %68, label %69, label %61

69:                                               ; preds = %64
  %70 = call i64 @GetMagickResourceLimit(i32 noundef 6) #13
  %71 = icmp sgt i64 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %69, %79
  %73 = phi i64 [ %80, %79 ], [ 0, %69 ]
  %74 = getelementptr inbounds ptr, ptr %55, i64 %73
  %75 = load ptr, ptr %74, align 8, !tbaa !108
  %76 = icmp eq ptr %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %72
  %78 = call ptr @DestroyRandomInfo(ptr noundef nonnull %75) #13
  store ptr %78, ptr %74, align 8, !tbaa !108
  br label %79

79:                                               ; preds = %77, %72
  %80 = add nuw nsw i64 %73, 1
  %81 = call i64 @GetMagickResourceLimit(i32 noundef 6) #13
  %82 = icmp slt i64 %80, %81
  br i1 %82, label %72, label %83, !llvm.loop !123

83:                                               ; preds = %79, %69
  %84 = call ptr @RelinquishAlignedMemory(ptr noundef nonnull %55) #13
  br label %85

85:                                               ; preds = %61, %57, %53, %83
  %86 = phi ptr [ %84, %83 ], [ null, %53 ], [ %55, %57 ], [ %55, %61 ]
  %87 = call ptr @AcquireAuthenticCacheView(ptr noundef %0, ptr noundef %3) #13
  %88 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %89 = load i64, ptr %88, align 8, !tbaa !53
  %90 = icmp sgt i64 %89, 0
  br i1 %90, label %91, label %175

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %93 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 9
  %94 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 9
  %95 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 9
  %96 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 9
  %97 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %98 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %99 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %100 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %101

101:                                              ; preds = %91, %169
  %102 = phi i32 [ 1, %91 ], [ %171, %169 ]
  %103 = phi i64 [ 0, %91 ], [ %170, %169 ]
  %104 = phi i64 [ 0, %91 ], [ %172, %169 ]
  %105 = icmp eq i32 %102, 0
  br i1 %105, label %169, label %106

106:                                              ; preds = %101
  %107 = load i64, ptr %92, align 8, !tbaa !54
  %108 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %87, i64 noundef 0, i64 noundef %104, i64 noundef %107, i64 noundef 1, ptr noundef %3) #14
  %109 = icmp eq ptr %108, null
  br i1 %109, label %169, label %110

110:                                              ; preds = %106
  %111 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %87) #13
  %112 = load i64, ptr %92, align 8, !tbaa !54
  %113 = icmp sgt i64 %112, 0
  br i1 %113, label %114, label %154

114:                                              ; preds = %110
  %115 = icmp eq ptr %111, null
  br label %116

116:                                              ; preds = %114, %136
  %117 = phi ptr [ %108, %114 ], [ %150, %136 ]
  %118 = phi i64 [ 0, %114 ], [ %151, %136 ]
  %119 = call float @GetPixelIntensity(ptr noundef %0, ptr noundef nonnull %117) #14
  %120 = fcmp olt float %119, %42
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  store float %42, ptr %95, align 8, !tbaa !91
  br label %130

122:                                              ; preds = %116
  %123 = fcmp ogt float %119, %41
  br i1 %123, label %124, label %125

124:                                              ; preds = %122
  store float %41, ptr %94, align 8, !tbaa !91
  br label %130

125:                                              ; preds = %122
  %126 = load ptr, ptr %86, align 8, !tbaa !108
  %127 = call double @GetPseudoRandomValue(ptr noundef %126) #13
  %128 = fmul double %127, 6.553500e+04
  %129 = fptrunc double %128 to float
  store float %129, ptr %93, align 8, !tbaa !91
  br label %130

130:                                              ; preds = %124, %125, %121
  %131 = load float, ptr %96, align 8, !tbaa !91
  %132 = fcmp ugt float %119, %131
  br i1 %115, label %136, label %133

133:                                              ; preds = %130
  %134 = zext i1 %132 to i16
  %135 = getelementptr inbounds i16, ptr %111, i64 %118
  store i16 %134, ptr %135, align 2, !tbaa !60
  br label %136

136:                                              ; preds = %133, %130
  %137 = load ptr, ptr %97, align 8, !tbaa !118
  %138 = zext i1 %132 to i64
  %139 = getelementptr inbounds %struct._PixelPacket, ptr %137, i64 %138, i32 2
  %140 = load i16, ptr %139, align 2, !tbaa !56
  %141 = getelementptr inbounds %struct._PixelPacket, ptr %117, i64 0, i32 2
  store i16 %140, ptr %141, align 2, !tbaa !56
  %142 = getelementptr inbounds %struct._PixelPacket, ptr %137, i64 %138, i32 1
  %143 = load i16, ptr %142, align 2, !tbaa !57
  %144 = getelementptr inbounds %struct._PixelPacket, ptr %117, i64 0, i32 1
  store i16 %143, ptr %144, align 2, !tbaa !57
  %145 = getelementptr inbounds %struct._PixelPacket, ptr %137, i64 %138
  %146 = load i16, ptr %145, align 2, !tbaa !58
  store i16 %146, ptr %117, align 2, !tbaa !58
  %147 = getelementptr inbounds %struct._PixelPacket, ptr %137, i64 %138, i32 3
  %148 = load i16, ptr %147, align 2, !tbaa !59
  %149 = getelementptr inbounds %struct._PixelPacket, ptr %117, i64 0, i32 3
  store i16 %148, ptr %149, align 2, !tbaa !59
  %150 = getelementptr inbounds %struct._PixelPacket, ptr %117, i64 1
  %151 = add nuw nsw i64 %118, 1
  %152 = load i64, ptr %92, align 8, !tbaa !54
  %153 = icmp slt i64 %151, %152
  br i1 %153, label %116, label %154, !llvm.loop !124

154:                                              ; preds = %136, %110
  %155 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %87, ptr noundef %3) #14
  %156 = icmp ne i32 %155, 0
  %157 = zext i1 %156 to i32
  %158 = load ptr, ptr %98, align 8, !tbaa !73
  %159 = icmp eq ptr %158, null
  br i1 %159, label %169, label %160

160:                                              ; preds = %154
  %161 = add nsw i64 %103, 1
  %162 = load i64, ptr %88, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #13
  %163 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.3, ptr noundef nonnull %99) #13
  %164 = load ptr, ptr %98, align 8, !tbaa !73
  %165 = load ptr, ptr %100, align 8, !tbaa !74
  %166 = call i32 %164(ptr noundef nonnull %6, i64 noundef %103, i64 noundef %162, ptr noundef %165) #13
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #13
  %167 = icmp eq i32 %166, 0
  %168 = select i1 %167, i32 0, i32 %157
  br label %169

169:                                              ; preds = %154, %160, %106, %101
  %170 = phi i64 [ %103, %101 ], [ %103, %106 ], [ %161, %160 ], [ %103, %154 ]
  %171 = phi i32 [ 0, %101 ], [ 0, %106 ], [ %168, %160 ], [ %157, %154 ]
  %172 = add nuw nsw i64 %104, 1
  %173 = load i64, ptr %88, align 8, !tbaa !53
  %174 = icmp slt i64 %172, %173
  br i1 %174, label %101, label %175, !llvm.loop !125

175:                                              ; preds = %169, %85
  %176 = phi i32 [ 1, %85 ], [ %171, %169 ]
  %177 = call ptr @DestroyCacheView(ptr noundef %87) #13
  %178 = call i64 @GetMagickResourceLimit(i32 noundef 6) #13
  %179 = icmp sgt i64 %178, 0
  br i1 %179, label %180, label %191

180:                                              ; preds = %175, %187
  %181 = phi i64 [ %188, %187 ], [ 0, %175 ]
  %182 = getelementptr inbounds ptr, ptr %86, i64 %181
  %183 = load ptr, ptr %182, align 8, !tbaa !108
  %184 = icmp eq ptr %183, null
  br i1 %184, label %187, label %185

185:                                              ; preds = %180
  %186 = call ptr @DestroyRandomInfo(ptr noundef nonnull %183) #13
  store ptr %186, ptr %182, align 8, !tbaa !108
  br label %187

187:                                              ; preds = %185, %180
  %188 = add nuw nsw i64 %181, 1
  %189 = call i64 @GetMagickResourceLimit(i32 noundef 6) #13
  %190 = icmp slt i64 %188, %189
  br i1 %190, label %180, label %191, !llvm.loop !123

191:                                              ; preds = %187, %175
  %192 = call ptr @RelinquishAlignedMemory(ptr noundef %86) #13
  br label %465

193:                                              ; preds = %40
  %194 = call i32 @SetImageStorageClass(ptr noundef %0, i32 noundef 1) #13
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %193
  %197 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  call void @InheritException(ptr noundef %3, ptr noundef nonnull %197) #13
  br label %465

198:                                              ; preds = %193
  %199 = call i64 @GetMagickResourceLimit(i32 noundef 6) #13
  %200 = call ptr @AcquireAlignedMemory(i64 noundef %199, i64 noundef 8) #18
  %201 = icmp eq ptr %200, null
  br i1 %201, label %230, label %202

202:                                              ; preds = %198
  %203 = shl i64 %199, 3
  %204 = call ptr @ResetMagickMemory(ptr noundef nonnull %200, i32 noundef 0, i64 noundef %203) #13
  %205 = icmp sgt i64 %199, 0
  br i1 %205, label %209, label %230

206:                                              ; preds = %209
  %207 = add nuw nsw i64 %210, 1
  %208 = icmp eq i64 %207, %199
  br i1 %208, label %230, label %209, !llvm.loop !122

209:                                              ; preds = %202, %206
  %210 = phi i64 [ %207, %206 ], [ 0, %202 ]
  %211 = call ptr @AcquireRandomInfo() #13
  %212 = getelementptr inbounds ptr, ptr %200, i64 %210
  store ptr %211, ptr %212, align 8, !tbaa !108
  %213 = icmp eq ptr %211, null
  br i1 %213, label %214, label %206

214:                                              ; preds = %209
  %215 = call i64 @GetMagickResourceLimit(i32 noundef 6) #13
  %216 = icmp sgt i64 %215, 0
  br i1 %216, label %217, label %228

217:                                              ; preds = %214, %224
  %218 = phi i64 [ %225, %224 ], [ 0, %214 ]
  %219 = getelementptr inbounds ptr, ptr %200, i64 %218
  %220 = load ptr, ptr %219, align 8, !tbaa !108
  %221 = icmp eq ptr %220, null
  br i1 %221, label %224, label %222

222:                                              ; preds = %217
  %223 = call ptr @DestroyRandomInfo(ptr noundef nonnull %220) #13
  store ptr %223, ptr %219, align 8, !tbaa !108
  br label %224

224:                                              ; preds = %222, %217
  %225 = add nuw nsw i64 %218, 1
  %226 = call i64 @GetMagickResourceLimit(i32 noundef 6) #13
  %227 = icmp slt i64 %225, %226
  br i1 %227, label %217, label %228, !llvm.loop !123

228:                                              ; preds = %224, %214
  %229 = call ptr @RelinquishAlignedMemory(ptr noundef nonnull %200) #13
  br label %230

230:                                              ; preds = %206, %202, %198, %228
  %231 = phi ptr [ %229, %228 ], [ null, %198 ], [ %200, %202 ], [ %200, %206 ]
  %232 = call ptr @AcquireAuthenticCacheView(ptr noundef %0, ptr noundef %3) #13
  %233 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %234 = load i64, ptr %233, align 8, !tbaa !53
  %235 = icmp sgt i64 %234, 0
  br i1 %235, label %236, label %447

236:                                              ; preds = %230
  %237 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %238 = and i32 %1, 1
  %239 = icmp eq i32 %238, 0
  %240 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 5
  %241 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 5
  %242 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 5
  %243 = and i32 %1, 2
  %244 = icmp eq i32 %243, 0
  %245 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 6
  %246 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 6
  %247 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 6
  %248 = and i32 %1, 4
  %249 = icmp eq i32 %248, 0
  %250 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 7
  %251 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 7
  %252 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 7
  %253 = and i32 %1, 8
  %254 = icmp eq i32 %253, 0
  %255 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 8
  %256 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 8
  %257 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 8
  %258 = and i32 %1, 32
  %259 = icmp eq i32 %258, 0
  %260 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %261 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 9
  %262 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 9
  %263 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 9
  %264 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 5
  %265 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 6
  %266 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 7
  %267 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 8
  %268 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %269 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 9
  %270 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %271 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %272 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %273

273:                                              ; preds = %236, %441
  %274 = phi i32 [ 1, %236 ], [ %443, %441 ]
  %275 = phi i64 [ 0, %236 ], [ %442, %441 ]
  %276 = phi i64 [ 0, %236 ], [ %444, %441 ]
  %277 = icmp eq i32 %274, 0
  br i1 %277, label %441, label %278

278:                                              ; preds = %273
  %279 = load i64, ptr %237, align 8, !tbaa !54
  %280 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %232, i64 noundef 0, i64 noundef %276, i64 noundef %279, i64 noundef 1, ptr noundef %3) #14
  %281 = icmp eq ptr %280, null
  br i1 %281, label %441, label %282

282:                                              ; preds = %278
  %283 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %232) #13
  %284 = load i64, ptr %237, align 8, !tbaa !54
  %285 = icmp sgt i64 %284, 0
  br i1 %285, label %286, label %426

286:                                              ; preds = %282
  %287 = icmp eq ptr %283, null
  %288 = icmp eq ptr %283, null
  br label %289

289:                                              ; preds = %286, %421
  %290 = phi i64 [ 0, %286 ], [ %423, %421 ]
  %291 = phi ptr [ %280, %286 ], [ %422, %421 ]
  br i1 %239, label %306, label %292

292:                                              ; preds = %289
  %293 = getelementptr inbounds %struct._PixelPacket, ptr %291, i64 0, i32 2
  %294 = load i16, ptr %293, align 2, !tbaa !56
  %295 = uitofp i16 %294 to float
  %296 = fcmp ogt float %42, %295
  br i1 %296, label %297, label %298

297:                                              ; preds = %292
  store float %42, ptr %242, align 8, !tbaa !82
  br label %306

298:                                              ; preds = %292
  %299 = fcmp olt float %41, %295
  br i1 %299, label %300, label %301

300:                                              ; preds = %298
  store float %41, ptr %241, align 8, !tbaa !82
  br label %306

301:                                              ; preds = %298
  %302 = load ptr, ptr %231, align 8, !tbaa !108
  %303 = call double @GetPseudoRandomValue(ptr noundef %302) #13
  %304 = fmul double %303, 6.553500e+04
  %305 = fptrunc double %304 to float
  store float %305, ptr %240, align 8, !tbaa !82
  br label %306

306:                                              ; preds = %297, %301, %300, %289
  br i1 %244, label %321, label %307

307:                                              ; preds = %306
  %308 = getelementptr inbounds %struct._PixelPacket, ptr %291, i64 0, i32 1
  %309 = load i16, ptr %308, align 2, !tbaa !57
  %310 = uitofp i16 %309 to float
  %311 = fcmp ogt float %42, %310
  br i1 %311, label %312, label %313

312:                                              ; preds = %307
  store float %42, ptr %247, align 4, !tbaa !88
  br label %321

313:                                              ; preds = %307
  %314 = fcmp olt float %41, %310
  br i1 %314, label %315, label %316

315:                                              ; preds = %313
  store float %41, ptr %246, align 4, !tbaa !88
  br label %321

316:                                              ; preds = %313
  %317 = load ptr, ptr %231, align 8, !tbaa !108
  %318 = call double @GetPseudoRandomValue(ptr noundef %317) #13
  %319 = fmul double %318, 6.553500e+04
  %320 = fptrunc double %319 to float
  store float %320, ptr %245, align 4, !tbaa !88
  br label %321

321:                                              ; preds = %312, %316, %315, %306
  br i1 %249, label %335, label %322

322:                                              ; preds = %321
  %323 = load i16, ptr %291, align 2, !tbaa !58
  %324 = uitofp i16 %323 to float
  %325 = fcmp ogt float %42, %324
  br i1 %325, label %326, label %327

326:                                              ; preds = %322
  store float %42, ptr %252, align 8, !tbaa !89
  br label %335

327:                                              ; preds = %322
  %328 = fcmp olt float %41, %324
  br i1 %328, label %329, label %330

329:                                              ; preds = %327
  store float %41, ptr %251, align 8, !tbaa !89
  br label %335

330:                                              ; preds = %327
  %331 = load ptr, ptr %231, align 8, !tbaa !108
  %332 = call double @GetPseudoRandomValue(ptr noundef %331) #13
  %333 = fmul double %332, 6.553500e+04
  %334 = fptrunc double %333 to float
  store float %334, ptr %250, align 8, !tbaa !89
  br label %335

335:                                              ; preds = %326, %330, %329, %321
  br i1 %254, label %350, label %336

336:                                              ; preds = %335
  %337 = getelementptr inbounds %struct._PixelPacket, ptr %291, i64 0, i32 3
  %338 = load i16, ptr %337, align 2, !tbaa !59
  %339 = uitofp i16 %338 to float
  %340 = fcmp ogt float %42, %339
  br i1 %340, label %341, label %342

341:                                              ; preds = %336
  store float %42, ptr %257, align 4, !tbaa !90
  br label %350

342:                                              ; preds = %336
  %343 = fcmp olt float %41, %339
  br i1 %343, label %344, label %345

344:                                              ; preds = %342
  store float %41, ptr %256, align 4, !tbaa !90
  br label %350

345:                                              ; preds = %342
  %346 = load ptr, ptr %231, align 8, !tbaa !108
  %347 = call double @GetPseudoRandomValue(ptr noundef %346) #13
  %348 = fmul double %347, 6.553500e+04
  %349 = fptrunc double %348 to float
  store float %349, ptr %255, align 4, !tbaa !90
  br label %350

350:                                              ; preds = %341, %345, %344, %335
  br i1 %259, label %378, label %351

351:                                              ; preds = %350
  %352 = load i32, ptr %260, align 4, !tbaa !55
  %353 = icmp eq i32 %352, 12
  br i1 %353, label %354, label %378

354:                                              ; preds = %351
  %355 = getelementptr inbounds i16, ptr %283, i64 %290
  br i1 %287, label %359, label %356

356:                                              ; preds = %354
  %357 = load i16, ptr %355, align 2, !tbaa !60
  %358 = zext i16 %357 to i32
  br label %359

359:                                              ; preds = %354, %356
  %360 = phi i32 [ %358, %356 ], [ 0, %354 ]
  %361 = sitofp i32 %360 to float
  %362 = fcmp ogt float %42, %361
  br i1 %362, label %363, label %364

363:                                              ; preds = %359
  store float %42, ptr %263, align 8, !tbaa !91
  br label %378

364:                                              ; preds = %359
  br i1 %287, label %368, label %365

365:                                              ; preds = %364
  %366 = load i16, ptr %355, align 2, !tbaa !60
  %367 = zext i16 %366 to i32
  br label %368

368:                                              ; preds = %364, %365
  %369 = phi i32 [ %367, %365 ], [ 0, %364 ]
  %370 = sitofp i32 %369 to float
  %371 = fcmp olt float %41, %370
  br i1 %371, label %372, label %373

372:                                              ; preds = %368
  store float %41, ptr %262, align 8, !tbaa !91
  br label %378

373:                                              ; preds = %368
  %374 = load ptr, ptr %231, align 8, !tbaa !108
  %375 = call double @GetPseudoRandomValue(ptr noundef %374) #13
  %376 = fmul double %375, 6.553500e+04
  %377 = fptrunc double %376 to float
  store float %377, ptr %261, align 8, !tbaa !91
  br label %378

378:                                              ; preds = %363, %373, %372, %351, %350
  br i1 %239, label %386, label %379

379:                                              ; preds = %378
  %380 = getelementptr inbounds %struct._PixelPacket, ptr %291, i64 0, i32 2
  %381 = load i16, ptr %380, align 2, !tbaa !56
  %382 = uitofp i16 %381 to float
  %383 = load float, ptr %264, align 8, !tbaa !82
  %384 = fcmp ult float %383, %382
  %385 = sext i1 %384 to i16
  store i16 %385, ptr %380, align 2, !tbaa !56
  br label %386

386:                                              ; preds = %379, %378
  br i1 %244, label %394, label %387

387:                                              ; preds = %386
  %388 = getelementptr inbounds %struct._PixelPacket, ptr %291, i64 0, i32 1
  %389 = load i16, ptr %388, align 2, !tbaa !57
  %390 = uitofp i16 %389 to float
  %391 = load float, ptr %265, align 4, !tbaa !88
  %392 = fcmp ult float %391, %390
  %393 = sext i1 %392 to i16
  store i16 %393, ptr %388, align 2, !tbaa !57
  br label %394

394:                                              ; preds = %387, %386
  br i1 %249, label %401, label %395

395:                                              ; preds = %394
  %396 = load i16, ptr %291, align 2, !tbaa !58
  %397 = uitofp i16 %396 to float
  %398 = load float, ptr %266, align 8, !tbaa !89
  %399 = fcmp ult float %398, %397
  %400 = sext i1 %399 to i16
  store i16 %400, ptr %291, align 2, !tbaa !58
  br label %401

401:                                              ; preds = %395, %394
  br i1 %254, label %409, label %402

402:                                              ; preds = %401
  %403 = getelementptr inbounds %struct._PixelPacket, ptr %291, i64 0, i32 3
  %404 = load i16, ptr %403, align 2, !tbaa !59
  %405 = uitofp i16 %404 to float
  %406 = load float, ptr %267, align 4, !tbaa !90
  %407 = fcmp ult float %406, %405
  %408 = sext i1 %407 to i16
  store i16 %408, ptr %403, align 2, !tbaa !59
  br label %409

409:                                              ; preds = %402, %401
  br i1 %259, label %421, label %410

410:                                              ; preds = %409
  %411 = load i32, ptr %268, align 4, !tbaa !55
  %412 = icmp ne i32 %411, 12
  %413 = select i1 %412, i1 true, i1 %288
  br i1 %413, label %421, label %414

414:                                              ; preds = %410
  %415 = getelementptr inbounds i16, ptr %283, i64 %290
  %416 = load i16, ptr %415, align 2, !tbaa !60
  %417 = uitofp i16 %416 to float
  %418 = load float, ptr %269, align 8, !tbaa !91
  %419 = fcmp ult float %418, %417
  %420 = sext i1 %419 to i16
  store i16 %420, ptr %415, align 2, !tbaa !60
  br label %421

421:                                              ; preds = %414, %410, %409
  %422 = getelementptr inbounds %struct._PixelPacket, ptr %291, i64 1
  %423 = add nuw nsw i64 %290, 1
  %424 = load i64, ptr %237, align 8, !tbaa !54
  %425 = icmp slt i64 %423, %424
  br i1 %425, label %289, label %426, !llvm.loop !126

426:                                              ; preds = %421, %282
  %427 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %232, ptr noundef %3) #14
  %428 = icmp ne i32 %427, 0
  %429 = zext i1 %428 to i32
  %430 = load ptr, ptr %270, align 8, !tbaa !73
  %431 = icmp eq ptr %430, null
  br i1 %431, label %441, label %432

432:                                              ; preds = %426
  %433 = add nsw i64 %275, 1
  %434 = load i64, ptr %233, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #13
  %435 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.3, ptr noundef nonnull %271) #13
  %436 = load ptr, ptr %270, align 8, !tbaa !73
  %437 = load ptr, ptr %272, align 8, !tbaa !74
  %438 = call i32 %436(ptr noundef nonnull %5, i64 noundef %275, i64 noundef %434, ptr noundef %437) #13
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #13
  %439 = icmp eq i32 %438, 0
  %440 = select i1 %439, i32 0, i32 %429
  br label %441

441:                                              ; preds = %426, %432, %278, %273
  %442 = phi i64 [ %275, %273 ], [ %275, %278 ], [ %433, %432 ], [ %275, %426 ]
  %443 = phi i32 [ 0, %273 ], [ 0, %278 ], [ %440, %432 ], [ %429, %426 ]
  %444 = add nuw nsw i64 %276, 1
  %445 = load i64, ptr %233, align 8, !tbaa !53
  %446 = icmp slt i64 %444, %445
  br i1 %446, label %273, label %447, !llvm.loop !127

447:                                              ; preds = %441, %230
  %448 = phi i32 [ 1, %230 ], [ %443, %441 ]
  %449 = call ptr @DestroyCacheView(ptr noundef %232) #13
  %450 = call i64 @GetMagickResourceLimit(i32 noundef 6) #13
  %451 = icmp sgt i64 %450, 0
  br i1 %451, label %452, label %463

452:                                              ; preds = %447, %459
  %453 = phi i64 [ %460, %459 ], [ 0, %447 ]
  %454 = getelementptr inbounds ptr, ptr %231, i64 %453
  %455 = load ptr, ptr %454, align 8, !tbaa !108
  %456 = icmp eq ptr %455, null
  br i1 %456, label %459, label %457

457:                                              ; preds = %452
  %458 = call ptr @DestroyRandomInfo(ptr noundef nonnull %455) #13
  store ptr %458, ptr %454, align 8, !tbaa !108
  br label %459

459:                                              ; preds = %457, %452
  %460 = add nuw nsw i64 %453, 1
  %461 = call i64 @GetMagickResourceLimit(i32 noundef 6) #13
  %462 = icmp slt i64 %460, %461
  br i1 %462, label %452, label %463, !llvm.loop !123

463:                                              ; preds = %459, %447
  %464 = call ptr @RelinquishAlignedMemory(ptr noundef %231) #13
  br label %465

465:                                              ; preds = %47, %49, %15, %463, %196, %191, %38
  %466 = phi i32 [ %176, %191 ], [ 0, %196 ], [ %448, %463 ], [ %39, %38 ], [ 1, %15 ], [ 0, %49 ], [ 0, %47 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #13
  ret i32 %466
}

declare i32 @AcquireImageColormap(ptr noundef, i64 noundef) local_unnamed_addr #2

declare double @GetPseudoRandomValue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @WhiteThresholdImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %4 = tail call i32 @WhiteThresholdImageChannel(ptr noundef %0, i32 noundef 134217719, ptr noundef %1, ptr noundef nonnull %3), !range !76
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local i32 @WhiteThresholdImageChannel(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  %6 = alloca %struct._GeometryInfo, align 8
  %7 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #13
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %9 = load i32, ptr %8, align 8, !tbaa !34
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2251, ptr noundef nonnull @.str.2, ptr noundef nonnull %12) #13
  br label %14

14:                                               ; preds = %11, %4
  %15 = icmp eq ptr %2, null
  br i1 %15, label %200, label %16

16:                                               ; preds = %14
  %17 = tail call i32 @SetImageStorageClass(ptr noundef %0, i32 noundef 1) #13
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %200, label %19

19:                                               ; preds = %16
  %20 = call i32 @ParseGeometry(ptr noundef nonnull %2, ptr noundef nonnull %6) #13
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %7) #13
  %21 = load double, ptr %6, align 8, !tbaa !80
  %22 = fptrunc double %21 to float
  %23 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 5
  store float %22, ptr %23, align 8, !tbaa !82
  %24 = getelementptr inbounds %struct._GeometryInfo, ptr %6, i64 0, i32 1
  %25 = load double, ptr %24, align 8, !tbaa !84
  %26 = fptrunc double %25 to float
  %27 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 6
  %28 = and i32 %20, 8
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, float %22, float %26
  store float %30, ptr %27, align 4
  %31 = getelementptr inbounds %struct._GeometryInfo, ptr %6, i64 0, i32 2
  %32 = load double, ptr %31, align 8, !tbaa !85
  %33 = fptrunc double %32 to float
  %34 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 7
  %35 = and i32 %20, 1
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %36, float %22, float %33
  store float %37, ptr %34, align 8
  %38 = getelementptr inbounds %struct._GeometryInfo, ptr %6, i64 0, i32 3
  %39 = load double, ptr %38, align 8, !tbaa !86
  %40 = fptrunc double %39 to float
  %41 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 8
  %42 = and i32 %20, 2
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %43, float %22, float %40
  store float %44, ptr %41, align 4
  %45 = getelementptr inbounds %struct._GeometryInfo, ptr %6, i64 0, i32 4
  %46 = load double, ptr %45, align 8, !tbaa !87
  %47 = fptrunc double %46 to float
  %48 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 9
  %49 = and i32 %20, 16
  %50 = icmp eq i32 %49, 0
  %51 = select i1 %50, float %22, float %47
  store float %51, ptr %48, align 8
  %52 = and i32 %20, 4096
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %64, label %54

54:                                               ; preds = %19
  %55 = fmul float %22, 0x40847ACCC0000000
  store float %55, ptr %23, align 8, !tbaa !82
  %56 = load float, ptr %27, align 4, !tbaa !88
  %57 = fmul float %56, 0x40847ACCC0000000
  store float %57, ptr %27, align 4, !tbaa !88
  %58 = load float, ptr %34, align 8, !tbaa !89
  %59 = fmul float %58, 0x40847ACCC0000000
  store float %59, ptr %34, align 8, !tbaa !89
  %60 = load float, ptr %41, align 4, !tbaa !90
  %61 = fmul float %60, 0x40847ACCC0000000
  store float %61, ptr %41, align 4, !tbaa !90
  %62 = load float, ptr %48, align 8, !tbaa !91
  %63 = fmul float %62, 0x40847ACCC0000000
  store float %63, ptr %48, align 8, !tbaa !91
  br label %64

64:                                               ; preds = %54, %19
  %65 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 1
  %66 = load i32, ptr %65, align 4, !tbaa !92
  %67 = add i32 %66, -1
  %68 = icmp ult i32 %67, 2
  br i1 %68, label %69, label %82

69:                                               ; preds = %64
  %70 = load float, ptr %23, align 8, !tbaa !82
  %71 = load float, ptr %27, align 4, !tbaa !88
  %72 = fsub float %70, %71
  %73 = call float @llvm.fabs.f32(float %72)
  %74 = fpext float %73 to double
  %75 = fcmp olt double %74, 1.000000e-15
  br i1 %75, label %76, label %82

76:                                               ; preds = %69
  %77 = load float, ptr %34, align 8, !tbaa !89
  %78 = fsub float %71, %77
  %79 = call float @llvm.fabs.f32(float %78)
  %80 = fpext float %79 to double
  %81 = fcmp olt double %80, 1.000000e-15
  br i1 %81, label %87, label %82

82:                                               ; preds = %69, %76, %64
  %83 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %84 = load i32, ptr %83, align 4, !tbaa !55
  switch i32 %84, label %87 [
    i32 19, label %85
    i32 17, label %85
    i32 2, label %85
  ]

85:                                               ; preds = %82, %82, %82
  %86 = call i32 @SetImageColorspace(ptr noundef %0, i32 noundef 13) #13
  br label %87

87:                                               ; preds = %82, %76, %85
  %88 = call ptr @AcquireAuthenticCacheView(ptr noundef %0, ptr noundef %3) #13
  %89 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %90 = load i64, ptr %89, align 8, !tbaa !53
  %91 = icmp sgt i64 %90, 0
  br i1 %91, label %92, label %197

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %94 = and i32 %1, 1
  %95 = icmp eq i32 %94, 0
  %96 = and i32 %1, 2
  %97 = icmp eq i32 %96, 0
  %98 = and i32 %1, 4
  %99 = icmp eq i32 %98, 0
  %100 = and i32 %1, 8
  %101 = icmp eq i32 %100, 0
  %102 = and i32 %1, 32
  %103 = icmp eq i32 %102, 0
  %104 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %105 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %106 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %107 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %108

108:                                              ; preds = %92, %191
  %109 = phi i64 [ 0, %92 ], [ %194, %191 ]
  %110 = phi i32 [ 1, %92 ], [ %193, %191 ]
  %111 = phi i64 [ 0, %92 ], [ %192, %191 ]
  %112 = icmp eq i32 %110, 0
  br i1 %112, label %191, label %113

113:                                              ; preds = %108
  %114 = load i64, ptr %93, align 8, !tbaa !54
  %115 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %88, i64 noundef 0, i64 noundef %109, i64 noundef %114, i64 noundef 1, ptr noundef %3) #14
  %116 = icmp eq ptr %115, null
  br i1 %116, label %191, label %117

117:                                              ; preds = %113
  %118 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %88) #13
  %119 = load i64, ptr %93, align 8, !tbaa !54
  %120 = icmp sgt i64 %119, 0
  br i1 %120, label %121, label %176

121:                                              ; preds = %117
  %122 = load float, ptr %23, align 8
  %123 = load float, ptr %27, align 4
  %124 = load float, ptr %34, align 8
  %125 = load float, ptr %41, align 4
  %126 = icmp eq ptr %118, null
  %127 = load float, ptr %48, align 8
  br label %128

128:                                              ; preds = %121, %172
  %129 = phi ptr [ %115, %121 ], [ %173, %172 ]
  %130 = phi i64 [ 0, %121 ], [ %174, %172 ]
  br i1 %95, label %137, label %131

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct._PixelPacket, ptr %129, i64 0, i32 2
  %133 = load i16, ptr %132, align 2, !tbaa !56
  %134 = uitofp i16 %133 to float
  %135 = fcmp olt float %122, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %131
  store i16 -1, ptr %132, align 2, !tbaa !56
  br label %137

137:                                              ; preds = %136, %131, %128
  br i1 %97, label %144, label %138

138:                                              ; preds = %137
  %139 = getelementptr inbounds %struct._PixelPacket, ptr %129, i64 0, i32 1
  %140 = load i16, ptr %139, align 2, !tbaa !57
  %141 = uitofp i16 %140 to float
  %142 = fcmp olt float %123, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %138
  store i16 -1, ptr %139, align 2, !tbaa !57
  br label %144

144:                                              ; preds = %143, %138, %137
  br i1 %99, label %150, label %145

145:                                              ; preds = %144
  %146 = load i16, ptr %129, align 2, !tbaa !58
  %147 = uitofp i16 %146 to float
  %148 = fcmp olt float %124, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %145
  store i16 -1, ptr %129, align 2, !tbaa !58
  br label %150

150:                                              ; preds = %149, %145, %144
  br i1 %101, label %157, label %151

151:                                              ; preds = %150
  %152 = getelementptr inbounds %struct._PixelPacket, ptr %129, i64 0, i32 3
  %153 = load i16, ptr %152, align 2, !tbaa !59
  %154 = uitofp i16 %153 to float
  %155 = fcmp olt float %125, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %151
  store i16 -1, ptr %152, align 2, !tbaa !59
  br label %157

157:                                              ; preds = %156, %151, %150
  br i1 %103, label %172, label %158

158:                                              ; preds = %157
  %159 = load i32, ptr %104, align 4, !tbaa !55
  %160 = icmp eq i32 %159, 12
  br i1 %160, label %161, label %172

161:                                              ; preds = %158
  %162 = getelementptr inbounds i16, ptr %118, i64 %130
  br i1 %126, label %166, label %163

163:                                              ; preds = %161
  %164 = load i16, ptr %162, align 2, !tbaa !60
  %165 = zext i16 %164 to i32
  br label %166

166:                                              ; preds = %161, %163
  %167 = phi i32 [ %165, %163 ], [ 0, %161 ]
  %168 = sitofp i32 %167 to float
  %169 = fcmp uge float %127, %168
  %170 = or i1 %126, %169
  br i1 %170, label %172, label %171

171:                                              ; preds = %166
  store i16 -1, ptr %162, align 2, !tbaa !60
  br label %172

172:                                              ; preds = %171, %166, %158, %157
  %173 = getelementptr inbounds %struct._PixelPacket, ptr %129, i64 1
  %174 = add nuw nsw i64 %130, 1
  %175 = icmp eq i64 %174, %119
  br i1 %175, label %176, label %128, !llvm.loop !128

176:                                              ; preds = %172, %117
  %177 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %88, ptr noundef %3) #14
  %178 = icmp ne i32 %177, 0
  %179 = zext i1 %178 to i32
  %180 = load ptr, ptr %105, align 8, !tbaa !73
  %181 = icmp eq ptr %180, null
  br i1 %181, label %191, label %182

182:                                              ; preds = %176
  %183 = add nsw i64 %111, 1
  %184 = load i64, ptr %89, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #13
  %185 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.3, ptr noundef nonnull %106) #13
  %186 = load ptr, ptr %105, align 8, !tbaa !73
  %187 = load ptr, ptr %107, align 8, !tbaa !74
  %188 = call i32 %186(ptr noundef nonnull %5, i64 noundef %111, i64 noundef %184, ptr noundef %187) #13
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #13
  %189 = icmp eq i32 %188, 0
  %190 = select i1 %189, i32 0, i32 %179
  br label %191

191:                                              ; preds = %176, %182, %113, %108
  %192 = phi i64 [ %111, %108 ], [ %111, %113 ], [ %183, %182 ], [ %111, %176 ]
  %193 = phi i32 [ 0, %108 ], [ 0, %113 ], [ %190, %182 ], [ %179, %176 ]
  %194 = add nuw nsw i64 %109, 1
  %195 = load i64, ptr %89, align 8, !tbaa !53
  %196 = icmp slt i64 %194, %195
  br i1 %196, label %108, label %197, !llvm.loop !129

197:                                              ; preds = %191, %87
  %198 = phi i32 [ 1, %87 ], [ %193, %191 ]
  %199 = call ptr @DestroyCacheView(ptr noundef %88) #13
  br label %200

200:                                              ; preds = %16, %14, %197
  %201 = phi i32 [ %198, %197 ], [ 1, %14 ], [ 0, %16 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #13
  ret i32 %201
}

declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i64 @GetMagickResourceLimit(i32 noundef) local_unnamed_addr #2

; Function Attrs: allocsize(0,1)
declare ptr @AcquireAlignedMemory(i64 noundef, i64 noundef) local_unnamed_addr #7

declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @AcquireRandomInfo() local_unnamed_addr #2

declare ptr @DestroyRandomInfo(ptr noundef) local_unnamed_addr #2

declare ptr @RelinquishAlignedMemory(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #11

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { hot "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind }
attributes #14 = { hot nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind willreturn memory(none) }
attributes #17 = { noreturn nounwind }
attributes #18 = { nounwind allocsize(0,1) }
attributes #19 = { nounwind willreturn memory(read) }

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
!53 = !{!35, !39, i64 48}
!54 = !{!35, !39, i64 40}
!55 = !{!35, !36, i64 4}
!56 = !{!41, !42, i64 4}
!57 = !{!41, !42, i64 2}
!58 = !{!41, !42, i64 0}
!59 = !{!41, !42, i64 6}
!60 = !{!42, !42, i64 0}
!61 = distinct !{!61, !62, !63}
!62 = !{!"llvm.loop.mustprogress"}
!63 = !{!"llvm.loop.unroll.disable"}
!64 = distinct !{!64, !62, !63}
!65 = !{i64 0, i64 4, !66, i64 4, i64 4, !66, i64 8, i64 4, !66, i64 12, i64 4, !66, i64 16, i64 4, !66}
!66 = !{!67, !67, i64 0}
!67 = !{!"float", !37, i64 0}
!68 = !{i64 0, i64 4, !66, i64 4, i64 4, !66, i64 8, i64 4, !66, i64 12, i64 4, !66}
!69 = !{i64 0, i64 4, !66, i64 4, i64 4, !66, i64 8, i64 4, !66}
!70 = !{i64 0, i64 4, !66, i64 4, i64 4, !66}
!71 = distinct !{!71, !62, !63}
!72 = distinct !{!72, !62, !63}
!73 = !{!35, !40, i64 568}
!74 = !{!35, !40, i64 576}
!75 = distinct !{!75, !62, !63}
!76 = !{i32 0, i32 2}
!77 = distinct !{!77, !62, !63}
!78 = distinct !{!78, !62, !63}
!79 = distinct !{!79, !62, !63}
!80 = !{!81, !43, i64 0}
!81 = !{!"_GeometryInfo", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32}
!82 = !{!83, !67, i64 32}
!83 = !{!"_MagickPixelPacket", !36, i64 0, !36, i64 4, !36, i64 8, !43, i64 16, !39, i64 24, !67, i64 32, !67, i64 36, !67, i64 40, !67, i64 44, !67, i64 48}
!84 = !{!81, !43, i64 8}
!85 = !{!81, !43, i64 16}
!86 = !{!81, !43, i64 24}
!87 = !{!81, !43, i64 32}
!88 = !{!83, !67, i64 36}
!89 = !{!83, !67, i64 40}
!90 = !{!83, !67, i64 44}
!91 = !{!83, !67, i64 48}
!92 = !{!83, !36, i64 4}
!93 = distinct !{!93, !62, !63}
!94 = distinct !{!94, !62, !63}
!95 = !{!35, !36, i64 0}
!96 = distinct !{!96, !62, !63}
!97 = !{!98, !40, i64 0}
!98 = !{!"_ThresholdMap", !40, i64 0, !40, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !40, i64 40}
!99 = !{!98, !40, i64 8}
!100 = !{!98, !40, i64 40}
!101 = distinct !{!101, !62, !63}
!102 = !{!36, !36, i64 0}
!103 = !{!98, !39, i64 16}
!104 = !{!98, !39, i64 24}
!105 = !{!98, !39, i64 32}
!106 = distinct !{!106, !62, !63}
!107 = !{!39, !39, i64 0}
!108 = !{!40, !40, i64 0}
!109 = distinct !{!109, !62, !63}
!110 = distinct !{!110, !62, !63}
!111 = distinct !{!111, !62, !63}
!112 = !{!37, !37, i64 0}
!113 = distinct !{!113, !62, !63}
!114 = distinct !{!114, !62, !63}
!115 = distinct !{!115, !62, !63}
!116 = distinct !{!116, !62, !63}
!117 = !{!35, !39, i64 64}
!118 = !{!35, !40, i64 72}
!119 = distinct !{!119, !62, !63}
!120 = distinct !{!120, !62, !63}
!121 = distinct !{!121, !62, !63}
!122 = distinct !{!122, !62, !63}
!123 = distinct !{!123, !62, !63}
!124 = distinct !{!124, !62, !63}
!125 = distinct !{!125, !62, !63}
!126 = distinct !{!126, !62, !63}
!127 = distinct !{!127, !62, !63}
!128 = distinct !{!128, !62, !63}
!129 = distinct !{!129, !62, !63}
