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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @AdaptiveThresholdImage(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #16
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 199, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #17
  br label %13

13:                                               ; preds = %10, %5
  %14 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %4) #17
  %15 = icmp eq ptr %14, null
  br i1 %15, label %257, label %16

16:                                               ; preds = %13
  %17 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %14, i32 noundef 1) #17
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 58
  tail call void @InheritException(ptr noundef %4, ptr noundef nonnull %20) #17
  %21 = tail call ptr @DestroyImage(ptr noundef nonnull %14) #17
  br label %257

22:                                               ; preds = %16
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %6) #17
  %23 = mul i64 %2, %1
  %24 = uitofp i64 %23 to float
  %25 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %4) #17
  %26 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %14, ptr noundef %4) #17
  %27 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %28 = load i64, ptr %27, align 8, !tbaa !24
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %254

30:                                               ; preds = %22
  %31 = sdiv i64 %1, -2
  %32 = sdiv i64 %2, -2
  %33 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %34 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 7
  %35 = getelementptr inbounds i8, ptr %6, i64 32
  %36 = getelementptr inbounds i8, ptr %6, i64 48
  %37 = icmp sgt i64 %2, 0
  %38 = icmp sgt i64 %1, 0
  %39 = add i64 %1, -1
  %40 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %41 = sitofp i64 %3 to float
  %42 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %43 = insertelement <4 x float> poison, float %24, i64 0
  %44 = shufflevector <4 x float> %43, <4 x float> poison, <4 x i32> zeroinitializer
  %45 = insertelement <4 x float> poison, float %41, i64 0
  %46 = shufflevector <4 x float> %45, <4 x float> poison, <4 x i32> zeroinitializer
  br label %47

47:                                               ; preds = %30, %242
  %48 = phi i32 [ 1, %30 ], [ %244, %242 ]
  %49 = phi i64 [ 0, %30 ], [ %243, %242 ]
  %50 = phi i64 [ 0, %30 ], [ %245, %242 ]
  %51 = icmp eq i32 %48, 0
  br i1 %51, label %242, label %52

52:                                               ; preds = %47
  %53 = add i64 %50, %32
  %54 = load i64, ptr %33, align 8, !tbaa !25
  %55 = add i64 %54, %1
  %56 = call ptr @GetCacheViewVirtualPixels(ptr noundef %25, i64 noundef %31, i64 noundef %53, i64 noundef %55, i64 noundef %2, ptr noundef %4) #18
  %57 = load i64, ptr %34, align 8, !tbaa !25
  %58 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %26, i64 noundef 0, i64 noundef %50, i64 noundef %57, i64 noundef 1, ptr noundef %4) #18
  %59 = icmp eq ptr %56, null
  %60 = icmp eq ptr %58, null
  %61 = select i1 %59, i1 true, i1 %60
  br i1 %61, label %242, label %62

62:                                               ; preds = %52
  %63 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %25) #17
  %64 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %26) #17
  %65 = load <4 x float>, ptr %35, align 8
  %66 = shufflevector <4 x float> %65, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  %67 = load float, ptr %36, align 8
  %68 = load i64, ptr %33, align 8, !tbaa !25
  br i1 %37, label %69, label %73

69:                                               ; preds = %62
  %70 = icmp eq ptr %63, null
  %71 = ptrtoint ptr %56 to i64
  %72 = add i64 %68, %1
  br label %89

73:                                               ; preds = %142, %62
  %74 = phi float [ %67, %62 ], [ %143, %142 ]
  %75 = phi float [ %67, %62 ], [ %144, %142 ]
  %76 = phi <4 x float> [ %66, %62 ], [ %145, %142 ]
  %77 = phi <4 x float> [ %66, %62 ], [ %146, %142 ]
  %78 = getelementptr i16, ptr %63, i64 %1
  %79 = getelementptr i16, ptr %78, i64 -1
  %80 = icmp sgt i64 %68, 0
  br i1 %80, label %81, label %230

81:                                               ; preds = %73
  %82 = icmp eq ptr %63, null
  %83 = add i64 %68, %1
  %84 = load i32, ptr %40, align 4, !tbaa !26
  %85 = icmp ne i32 %84, 12
  %86 = icmp eq ptr %64, null
  %87 = select i1 %85, i1 true, i1 %86
  %88 = icmp eq i32 %84, 12
  br label %150

89:                                               ; preds = %69, %142
  %90 = phi i64 [ 0, %69 ], [ %148, %142 ]
  %91 = phi ptr [ %56, %69 ], [ %147, %142 ]
  %92 = phi float [ %67, %69 ], [ %144, %142 ]
  %93 = phi float [ %67, %69 ], [ %143, %142 ]
  %94 = phi <4 x float> [ %66, %69 ], [ %145, %142 ]
  %95 = phi <4 x float> [ %66, %69 ], [ %146, %142 ]
  br i1 %38, label %96, label %142

96:                                               ; preds = %89
  %97 = ptrtoint ptr %91 to i64
  %98 = sub i64 %97, %71
  %99 = ashr exact i64 %98, 3
  %100 = getelementptr inbounds i16, ptr %63, i64 %99
  %101 = load i32, ptr %40, align 4, !tbaa !26
  %102 = icmp eq i32 %101, 12
  %103 = getelementptr inbounds %struct._PixelPacket, ptr %91, i64 %39
  %104 = getelementptr inbounds i16, ptr %100, i64 %39
  br label %105

105:                                              ; preds = %96, %138
  %106 = phi i64 [ 0, %96 ], [ %140, %138 ]
  %107 = phi float [ %92, %96 ], [ %139, %138 ]
  %108 = phi float [ %93, %96 ], [ %124, %138 ]
  %109 = phi <4 x float> [ %94, %96 ], [ %129, %138 ]
  %110 = phi <4 x float> [ %95, %96 ], [ %125, %138 ]
  %111 = icmp eq i64 %106, %39
  br i1 %111, label %112, label %123

112:                                              ; preds = %105
  %113 = load <4 x i16>, ptr %103, align 2, !tbaa !27
  %114 = uitofp <4 x i16> %113 to <4 x float>
  %115 = fadd <4 x float> %110, %114
  br i1 %102, label %116, label %123

116:                                              ; preds = %112
  br i1 %70, label %120, label %117

117:                                              ; preds = %116
  %118 = load i16, ptr %104, align 2, !tbaa !27
  %119 = zext i16 %118 to i32
  br label %120

120:                                              ; preds = %116, %117
  %121 = phi i32 [ %119, %117 ], [ 0, %116 ]
  %122 = sitofp i32 %121 to float
  br label %123

123:                                              ; preds = %112, %120, %105
  %124 = phi float [ %122, %120 ], [ %108, %112 ], [ %108, %105 ]
  %125 = phi <4 x float> [ %115, %120 ], [ %115, %112 ], [ %110, %105 ]
  %126 = getelementptr inbounds %struct._PixelPacket, ptr %91, i64 %106
  %127 = load <4 x i16>, ptr %126, align 2, !tbaa !27
  %128 = uitofp <4 x i16> %127 to <4 x float>
  %129 = fadd <4 x float> %109, %128
  br i1 %102, label %130, label %138

130:                                              ; preds = %123
  br i1 %70, label %135, label %131

131:                                              ; preds = %130
  %132 = getelementptr inbounds i16, ptr %100, i64 %106
  %133 = load i16, ptr %132, align 2, !tbaa !27
  %134 = zext i16 %133 to i32
  br label %135

135:                                              ; preds = %130, %131
  %136 = phi i32 [ %134, %131 ], [ 0, %130 ]
  %137 = sitofp i32 %136 to float
  br label %138

138:                                              ; preds = %123, %135
  %139 = phi float [ %137, %135 ], [ %107, %123 ]
  %140 = add nuw nsw i64 %106, 1
  %141 = icmp eq i64 %140, %1
  br i1 %141, label %142, label %105, !llvm.loop !28

142:                                              ; preds = %138, %89
  %143 = phi float [ %93, %89 ], [ %124, %138 ]
  %144 = phi float [ %92, %89 ], [ %139, %138 ]
  %145 = phi <4 x float> [ %94, %89 ], [ %129, %138 ]
  %146 = phi <4 x float> [ %95, %89 ], [ %125, %138 ]
  %147 = getelementptr inbounds %struct._PixelPacket, ptr %91, i64 %72
  %148 = add nuw nsw i64 %90, 1
  %149 = icmp eq i64 %148, %2
  br i1 %149, label %73, label %89, !llvm.loop !30

150:                                              ; preds = %81, %225
  %151 = phi i64 [ 0, %81 ], [ %228, %225 ]
  %152 = phi ptr [ %58, %81 ], [ %227, %225 ]
  %153 = phi ptr [ %56, %81 ], [ %226, %225 ]
  %154 = phi float [ %75, %81 ], [ %208, %225 ]
  %155 = phi float [ %74, %81 ], [ %207, %225 ]
  %156 = phi <4 x float> [ %76, %81 ], [ %209, %225 ]
  %157 = phi <4 x float> [ %77, %81 ], [ %210, %225 ]
  %158 = load float, ptr %36, align 8
  %159 = fsub <4 x float> %156, %157
  %160 = fsub float %154, %155
  %161 = load <4 x float>, ptr %35, align 8
  %162 = shufflevector <4 x float> %161, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  br i1 %37, label %163, label %206

163:                                              ; preds = %150
  %164 = getelementptr inbounds i16, ptr %63, i64 %151
  %165 = ptrtoint ptr %153 to i64
  %166 = getelementptr i16, ptr %79, i64 %151
  br label %167

167:                                              ; preds = %163, %201
  %168 = phi i64 [ 0, %163 ], [ %204, %201 ]
  %169 = phi ptr [ %153, %163 ], [ %203, %201 ]
  %170 = phi float [ %160, %163 ], [ %202, %201 ]
  %171 = phi float [ %158, %163 ], [ %189, %201 ]
  %172 = phi <4 x float> [ %159, %163 ], [ %193, %201 ]
  %173 = phi <4 x float> [ %162, %163 ], [ %176, %201 ]
  %174 = load <4 x i16>, ptr %169, align 2, !tbaa !27
  %175 = uitofp <4 x i16> %174 to <4 x float>
  %176 = fadd <4 x float> %173, %175
  br i1 %88, label %177, label %188

177:                                              ; preds = %167
  br i1 %82, label %185, label %178

178:                                              ; preds = %177
  %179 = ptrtoint ptr %169 to i64
  %180 = sub i64 %179, %165
  %181 = ashr exact i64 %180, 3
  %182 = getelementptr inbounds i16, ptr %164, i64 %181
  %183 = load i16, ptr %182, align 2, !tbaa !27
  %184 = zext i16 %183 to i32
  br label %185

185:                                              ; preds = %177, %178
  %186 = phi i32 [ %184, %178 ], [ 0, %177 ]
  %187 = sitofp i32 %186 to float
  br label %188

188:                                              ; preds = %185, %167
  %189 = phi float [ %187, %185 ], [ %171, %167 ]
  %190 = getelementptr inbounds %struct._PixelPacket, ptr %169, i64 %39
  %191 = load <4 x i16>, ptr %190, align 2, !tbaa !27
  %192 = uitofp <4 x i16> %191 to <4 x float>
  %193 = fadd <4 x float> %172, %192
  br i1 %88, label %194, label %201

194:                                              ; preds = %188
  %195 = ptrtoint ptr %169 to i64
  %196 = sub i64 %195, %165
  %197 = ashr exact i64 %196, 3
  %198 = getelementptr i16, ptr %166, i64 %197
  %199 = load i16, ptr %198, align 2, !tbaa !27
  %200 = uitofp i16 %199 to float
  br label %201

201:                                              ; preds = %194, %188
  %202 = phi float [ %200, %194 ], [ %170, %188 ]
  %203 = getelementptr inbounds %struct._PixelPacket, ptr %169, i64 %83
  %204 = add nuw nsw i64 %168, 1
  %205 = icmp eq i64 %204, %2
  br i1 %205, label %206, label %167, !llvm.loop !31

206:                                              ; preds = %201, %150
  %207 = phi float [ %158, %150 ], [ %189, %201 ]
  %208 = phi float [ %160, %150 ], [ %202, %201 ]
  %209 = phi <4 x float> [ %159, %150 ], [ %193, %201 ]
  %210 = phi <4 x float> [ %162, %150 ], [ %176, %201 ]
  %211 = fdiv <4 x float> %209, %44
  %212 = fadd <4 x float> %211, %46
  %213 = load <4 x i16>, ptr %152, align 2, !tbaa !27
  %214 = uitofp <4 x i16> %213 to <4 x float>
  %215 = fcmp ult <4 x float> %212, %214
  %216 = sext <4 x i1> %215 to <4 x i16>
  store <4 x i16> %216, ptr %152, align 2, !tbaa !27
  br i1 %87, label %225, label %217

217:                                              ; preds = %206
  %218 = fdiv float %208, %24
  %219 = fadd float %218, %41
  %220 = getelementptr inbounds i16, ptr %64, i64 %151
  %221 = load i16, ptr %220, align 2, !tbaa !27
  %222 = uitofp i16 %221 to float
  %223 = fcmp ult float %219, %222
  %224 = sext i1 %223 to i16
  store i16 %224, ptr %220, align 2, !tbaa !27
  br label %225

225:                                              ; preds = %217, %206
  %226 = getelementptr inbounds %struct._PixelPacket, ptr %153, i64 1
  %227 = getelementptr inbounds %struct._PixelPacket, ptr %152, i64 1
  %228 = add nuw nsw i64 %151, 1
  %229 = icmp eq i64 %228, %68
  br i1 %229, label %230, label %150, !llvm.loop !32

230:                                              ; preds = %225, %73
  %231 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %26, ptr noundef %4) #18
  %232 = icmp ne i32 %231, 0
  %233 = zext i1 %232 to i32
  %234 = load ptr, ptr %42, align 8, !tbaa !33
  %235 = icmp eq ptr %234, null
  br i1 %235, label %242, label %236

236:                                              ; preds = %230
  %237 = add nsw i64 %49, 1
  %238 = load i64, ptr %27, align 8, !tbaa !24
  %239 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.3, i64 noundef %49, i64 noundef %238) #19
  %240 = icmp eq i32 %239, 0
  %241 = select i1 %240, i32 0, i32 %233
  br label %242

242:                                              ; preds = %230, %236, %52, %47
  %243 = phi i64 [ %49, %47 ], [ %49, %52 ], [ %237, %236 ], [ %49, %230 ]
  %244 = phi i32 [ 0, %47 ], [ 0, %52 ], [ %241, %236 ], [ %233, %230 ]
  %245 = add nuw nsw i64 %50, 1
  %246 = load i64, ptr %27, align 8, !tbaa !24
  %247 = icmp slt i64 %245, %246
  br i1 %247, label %47, label %248, !llvm.loop !34

248:                                              ; preds = %242
  %249 = icmp eq i32 %244, 0
  %250 = call ptr @DestroyCacheView(ptr noundef %26) #17
  %251 = call ptr @DestroyCacheView(ptr noundef %25) #17
  br i1 %249, label %252, label %257

252:                                              ; preds = %248
  %253 = call ptr @DestroyImage(ptr noundef nonnull %14) #17
  br label %257

254:                                              ; preds = %22
  %255 = call ptr @DestroyCacheView(ptr noundef %26) #17
  %256 = call ptr @DestroyCacheView(ptr noundef %25) #17
  br label %257

257:                                              ; preds = %254, %248, %252, %13, %19
  %258 = phi ptr [ null, %19 ], [ null, %13 ], [ %253, %252 ], [ %14, %248 ], [ %14, %254 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #16
  ret ptr %258
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @SetImageStorageClass(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @InheritException(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyImage(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: hot optsize
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: hot optsize
declare ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: hot optsize
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @SetImageProgress(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #16
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %7 = load ptr, ptr %6, align 8, !tbaa !33
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.46, ptr noundef %1, ptr noundef nonnull %10) #17
  %12 = load ptr, ptr %6, align 8, !tbaa !33
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  %14 = load ptr, ptr %13, align 8, !tbaa !35
  %15 = call i32 %12(ptr noundef nonnull %5, i64 noundef %2, i64 noundef %3, ptr noundef %14) #17
  br label %16

16:                                               ; preds = %4, %9
  %17 = phi i32 [ %15, %9 ], [ 1, %4 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #16
  ret i32 %17
}

; Function Attrs: optsize
declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BilevelImage(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @BilevelImageChannel(ptr noundef %0, i32 noundef 134217719, double noundef %1) #19, !range !36
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BilevelImageChannel(ptr noundef %0, i32 noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 441, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #17
  br label %10

10:                                               ; preds = %7, %3
  %11 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %0, i32 noundef 1) #17
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %136, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !26
  %16 = tail call fastcc i32 @IsGrayColorspace(i32 noundef %15) #19, !range !36
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = tail call i32 @SetImageColorspace(ptr noundef nonnull %0, i32 noundef 13) #17
  br label %20

20:                                               ; preds = %18, %13
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %22 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %21) #17
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %24 = load i64, ptr %23, align 8, !tbaa !24
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %133

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %28 = and i32 %1, 256
  %29 = icmp eq i32 %28, 0
  %30 = and i32 %1, 1
  %31 = icmp eq i32 %30, 0
  %32 = and i32 %1, 2
  %33 = icmp eq i32 %32, 0
  %34 = and i32 %1, 4
  %35 = icmp eq i32 %34, 0
  %36 = and i32 %1, 8
  %37 = icmp eq i32 %36, 0
  %38 = and i32 %1, 32
  %39 = icmp eq i32 %38, 0
  %40 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %41

41:                                               ; preds = %26, %127
  %42 = phi i64 [ 0, %26 ], [ %130, %127 ]
  %43 = phi i64 [ 0, %26 ], [ %129, %127 ]
  %44 = phi i32 [ 1, %26 ], [ %128, %127 ]
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %127, label %46

46:                                               ; preds = %41
  %47 = load i64, ptr %27, align 8, !tbaa !25
  %48 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %22, i64 noundef 0, i64 noundef %42, i64 noundef %47, i64 noundef 1, ptr noundef nonnull %21) #18
  %49 = icmp eq ptr %48, null
  br i1 %49, label %127, label %50

50:                                               ; preds = %46
  %51 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %22) #17
  %52 = load i64, ptr %27, align 8, !tbaa !25
  %53 = icmp sgt i64 %52, 0
  br i1 %29, label %55, label %54

54:                                               ; preds = %50
  br i1 %53, label %58, label %115

55:                                               ; preds = %50
  br i1 %53, label %56, label %115

56:                                               ; preds = %55
  %57 = icmp eq ptr %51, null
  br label %71

58:                                               ; preds = %54, %58
  %59 = phi ptr [ %67, %58 ], [ %48, %54 ]
  %60 = phi i64 [ %68, %58 ], [ 0, %54 ]
  %61 = tail call float @GetPixelIntensity(ptr noundef nonnull %0, ptr noundef nonnull %59) #18
  %62 = fpext float %61 to double
  %63 = fcmp ugt double %62, %2
  %64 = sext i1 %63 to i16
  %65 = getelementptr inbounds %struct._PixelPacket, ptr %59, i64 0, i32 2
  store i16 %64, ptr %65, align 2, !tbaa !37
  %66 = getelementptr inbounds %struct._PixelPacket, ptr %59, i64 0, i32 1
  store i16 %64, ptr %66, align 2, !tbaa !38
  store i16 %64, ptr %59, align 2, !tbaa !39
  %67 = getelementptr inbounds %struct._PixelPacket, ptr %59, i64 1
  %68 = add nuw nsw i64 %60, 1
  %69 = load i64, ptr %27, align 8, !tbaa !25
  %70 = icmp slt i64 %68, %69
  br i1 %70, label %58, label %115, !llvm.loop !40

71:                                               ; preds = %56, %111
  %72 = phi ptr [ %48, %56 ], [ %112, %111 ]
  %73 = phi i64 [ 0, %56 ], [ %113, %111 ]
  br i1 %31, label %80, label %74

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct._PixelPacket, ptr %72, i64 0, i32 2
  %76 = load i16, ptr %75, align 2, !tbaa !37
  %77 = uitofp i16 %76 to double
  %78 = fcmp ugt double %77, %2
  %79 = sext i1 %78 to i16
  store i16 %79, ptr %75, align 2, !tbaa !37
  br label %80

80:                                               ; preds = %74, %71
  br i1 %33, label %87, label %81

81:                                               ; preds = %80
  %82 = getelementptr inbounds %struct._PixelPacket, ptr %72, i64 0, i32 1
  %83 = load i16, ptr %82, align 2, !tbaa !38
  %84 = uitofp i16 %83 to double
  %85 = fcmp ugt double %84, %2
  %86 = sext i1 %85 to i16
  store i16 %86, ptr %82, align 2, !tbaa !38
  br label %87

87:                                               ; preds = %81, %80
  br i1 %35, label %93, label %88

88:                                               ; preds = %87
  %89 = load i16, ptr %72, align 2, !tbaa !39
  %90 = uitofp i16 %89 to double
  %91 = fcmp ugt double %90, %2
  %92 = sext i1 %91 to i16
  store i16 %92, ptr %72, align 2, !tbaa !39
  br label %93

93:                                               ; preds = %88, %87
  br i1 %37, label %100, label %94

94:                                               ; preds = %93
  %95 = getelementptr inbounds %struct._PixelPacket, ptr %72, i64 0, i32 3
  %96 = load i16, ptr %95, align 2, !tbaa !41
  %97 = uitofp i16 %96 to double
  %98 = fcmp ugt double %97, %2
  %99 = sext i1 %98 to i16
  store i16 %99, ptr %95, align 2, !tbaa !41
  br label %100

100:                                              ; preds = %94, %93
  br i1 %39, label %111, label %101

101:                                              ; preds = %100
  %102 = load i32, ptr %14, align 4, !tbaa !26
  %103 = icmp ne i32 %102, 12
  %104 = select i1 %103, i1 true, i1 %57
  br i1 %104, label %111, label %105

105:                                              ; preds = %101
  %106 = getelementptr inbounds i16, ptr %51, i64 %73
  %107 = load i16, ptr %106, align 2, !tbaa !27
  %108 = uitofp i16 %107 to double
  %109 = fcmp ugt double %108, %2
  %110 = sext i1 %109 to i16
  store i16 %110, ptr %106, align 2, !tbaa !27
  br label %111

111:                                              ; preds = %105, %101, %100
  %112 = getelementptr inbounds %struct._PixelPacket, ptr %72, i64 1
  %113 = add nuw nsw i64 %73, 1
  %114 = icmp eq i64 %113, %52
  br i1 %114, label %115, label %71, !llvm.loop !42

115:                                              ; preds = %58, %111, %54, %55
  %116 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %22, ptr noundef nonnull %21) #18
  %117 = icmp ne i32 %116, 0
  %118 = zext i1 %117 to i32
  %119 = load ptr, ptr %40, align 8, !tbaa !33
  %120 = icmp eq ptr %119, null
  br i1 %120, label %127, label %121

121:                                              ; preds = %115
  %122 = add nsw i64 %43, 1
  %123 = load i64, ptr %23, align 8, !tbaa !24
  %124 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.3, i64 noundef %43, i64 noundef %123) #19
  %125 = icmp eq i32 %124, 0
  %126 = select i1 %125, i32 0, i32 %118
  br label %127

127:                                              ; preds = %115, %121, %46, %41
  %128 = phi i32 [ 0, %41 ], [ 0, %46 ], [ %126, %121 ], [ %118, %115 ]
  %129 = phi i64 [ %43, %41 ], [ %43, %46 ], [ %122, %121 ], [ %43, %115 ]
  %130 = add nuw nsw i64 %42, 1
  %131 = load i64, ptr %23, align 8, !tbaa !24
  %132 = icmp slt i64 %130, %131
  br i1 %132, label %41, label %133, !llvm.loop !43

133:                                              ; preds = %127, %20
  %134 = phi i32 [ 1, %20 ], [ %128, %127 ]
  %135 = tail call ptr @DestroyCacheView(ptr noundef %22) #17
  br label %136

136:                                              ; preds = %10, %133
  %137 = phi i32 [ %134, %133 ], [ 0, %10 ]
  ret i32 %137
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @IsGrayColorspace(i32 noundef %0) unnamed_addr #4 {
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

; Function Attrs: hot optsize
declare float @GetPixelIntensity(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BlackThresholdImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %4 = tail call i32 @BlackThresholdImageChannel(ptr noundef %0, i32 noundef 134217719, ptr noundef %1, ptr noundef nonnull %3) #19, !range !36
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BlackThresholdImageChannel(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct._GeometryInfo, align 8
  %6 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #16
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 608, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #17
  br label %13

13:                                               ; preds = %10, %4
  %14 = icmp eq ptr %2, null
  br i1 %14, label %168, label %15

15:                                               ; preds = %13
  %16 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %0, i32 noundef 1) #17
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %168, label %18

18:                                               ; preds = %15
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %6) #17
  %19 = call i32 @ParseGeometry(ptr noundef nonnull %2, ptr noundef nonnull %5) #17
  %20 = load double, ptr %5, align 8, !tbaa !44
  %21 = fptrunc double %20 to float
  %22 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 5
  store float %21, ptr %22, align 8, !tbaa !46
  %23 = getelementptr inbounds %struct._GeometryInfo, ptr %5, i64 0, i32 1
  %24 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 6
  %25 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 7
  %26 = load <2 x double>, ptr %23, align 8, !tbaa !49
  %27 = fptrunc <2 x double> %26 to <2 x float>
  %28 = insertelement <2 x i32> poison, i32 %19, i64 0
  %29 = shufflevector <2 x i32> %28, <2 x i32> poison, <2 x i32> zeroinitializer
  %30 = and <2 x i32> %29, <i32 8, i32 1>
  %31 = icmp eq <2 x i32> %30, zeroinitializer
  %32 = insertelement <2 x float> poison, float %21, i64 0
  %33 = shufflevector <2 x float> %32, <2 x float> poison, <2 x i32> zeroinitializer
  %34 = select <2 x i1> %31, <2 x float> %33, <2 x float> %27
  store <2 x float> %34, ptr %24, align 4
  %35 = getelementptr inbounds %struct._GeometryInfo, ptr %5, i64 0, i32 3
  %36 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 8
  %37 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 9
  %38 = load <2 x double>, ptr %35, align 8, !tbaa !49
  %39 = fptrunc <2 x double> %38 to <2 x float>
  %40 = and <2 x i32> %29, <i32 2, i32 16>
  %41 = icmp eq <2 x i32> %40, zeroinitializer
  %42 = select <2 x i1> %41, <2 x float> %33, <2 x float> %39
  store <2 x float> %42, ptr %36, align 4
  %43 = and i32 %19, 4096
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %18
  %46 = insertelement <4 x float> poison, float %21, i64 0
  %47 = shufflevector <2 x float> %34, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %48 = shufflevector <4 x float> %46, <4 x float> %47, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %49 = shufflevector <2 x float> %42, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %50 = shufflevector <4 x float> %48, <4 x float> %49, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %51 = fmul <4 x float> %50, <float 0x40847ACCC0000000, float 0x40847ACCC0000000, float 0x40847ACCC0000000, float 0x40847ACCC0000000>
  store <4 x float> %51, ptr %22, align 8, !tbaa !50
  %52 = extractelement <2 x float> %42, i64 1
  %53 = fmul float %52, 0x40847ACCC0000000
  store float %53, ptr %37, align 8, !tbaa !51
  br label %54

54:                                               ; preds = %45, %18
  %55 = call fastcc i32 @IsMagickGray(ptr noundef nonnull %6) #19, !range !36
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %59 = load i32, ptr %58, align 4, !tbaa !26
  %60 = call fastcc i32 @IsGrayColorspace(i32 noundef %59) #19, !range !36
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %57
  %63 = call i32 @SetImageColorspace(ptr noundef nonnull %0, i32 noundef 13) #17
  br label %64

64:                                               ; preds = %62, %57, %54
  %65 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef %3) #17
  %66 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %67 = load i64, ptr %66, align 8, !tbaa !24
  %68 = icmp sgt i64 %67, 0
  br i1 %68, label %69, label %165

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %71 = and i32 %1, 1
  %72 = icmp eq i32 %71, 0
  %73 = and i32 %1, 2
  %74 = icmp eq i32 %73, 0
  %75 = and i32 %1, 4
  %76 = icmp eq i32 %75, 0
  %77 = and i32 %1, 8
  %78 = icmp eq i32 %77, 0
  %79 = and i32 %1, 32
  %80 = icmp eq i32 %79, 0
  %81 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %82 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %83

83:                                               ; preds = %69, %159
  %84 = phi i64 [ 0, %69 ], [ %162, %159 ]
  %85 = phi i32 [ 1, %69 ], [ %161, %159 ]
  %86 = phi i64 [ 0, %69 ], [ %160, %159 ]
  %87 = icmp eq i32 %85, 0
  br i1 %87, label %159, label %88

88:                                               ; preds = %83
  %89 = load i64, ptr %70, align 8, !tbaa !25
  %90 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %65, i64 noundef 0, i64 noundef %84, i64 noundef %89, i64 noundef 1, ptr noundef %3) #18
  %91 = icmp eq ptr %90, null
  br i1 %91, label %159, label %92

92:                                               ; preds = %88
  %93 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %65) #17
  %94 = load i64, ptr %70, align 8, !tbaa !25
  %95 = icmp sgt i64 %94, 0
  br i1 %95, label %96, label %147

96:                                               ; preds = %92
  %97 = load float, ptr %22, align 8
  %98 = load float, ptr %24, align 4
  %99 = load float, ptr %25, align 8
  %100 = load float, ptr %36, align 4
  %101 = icmp eq ptr %93, null
  %102 = load float, ptr %37, align 8
  br label %103

103:                                              ; preds = %96, %143
  %104 = phi ptr [ %90, %96 ], [ %144, %143 ]
  %105 = phi i64 [ 0, %96 ], [ %145, %143 ]
  br i1 %72, label %112, label %106

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct._PixelPacket, ptr %104, i64 0, i32 2
  %108 = load i16, ptr %107, align 2, !tbaa !37
  %109 = uitofp i16 %108 to float
  %110 = fcmp ogt float %97, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  store i16 0, ptr %107, align 2, !tbaa !37
  br label %112

112:                                              ; preds = %111, %106, %103
  br i1 %74, label %119, label %113

113:                                              ; preds = %112
  %114 = getelementptr inbounds %struct._PixelPacket, ptr %104, i64 0, i32 1
  %115 = load i16, ptr %114, align 2, !tbaa !38
  %116 = uitofp i16 %115 to float
  %117 = fcmp ogt float %98, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  store i16 0, ptr %114, align 2, !tbaa !38
  br label %119

119:                                              ; preds = %118, %113, %112
  br i1 %76, label %125, label %120

120:                                              ; preds = %119
  %121 = load i16, ptr %104, align 2, !tbaa !39
  %122 = uitofp i16 %121 to float
  %123 = fcmp ogt float %99, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %120
  store i16 0, ptr %104, align 2, !tbaa !39
  br label %125

125:                                              ; preds = %124, %120, %119
  br i1 %78, label %132, label %126

126:                                              ; preds = %125
  %127 = getelementptr inbounds %struct._PixelPacket, ptr %104, i64 0, i32 3
  %128 = load i16, ptr %127, align 2, !tbaa !41
  %129 = uitofp i16 %128 to float
  %130 = fcmp ogt float %100, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %126
  store i16 0, ptr %127, align 2, !tbaa !41
  br label %132

132:                                              ; preds = %131, %126, %125
  br i1 %80, label %143, label %133

133:                                              ; preds = %132
  %134 = load i32, ptr %81, align 4, !tbaa !26
  %135 = icmp eq i32 %134, 12
  br i1 %135, label %136, label %143

136:                                              ; preds = %133
  %137 = getelementptr inbounds i16, ptr %93, i64 %105
  br i1 %101, label %143, label %138

138:                                              ; preds = %136
  %139 = load i16, ptr %137, align 2, !tbaa !27
  %140 = uitofp i16 %139 to float
  %141 = fcmp ule float %102, %140
  br i1 %141, label %143, label %142

142:                                              ; preds = %138
  store i16 0, ptr %137, align 2, !tbaa !27
  br label %143

143:                                              ; preds = %136, %142, %138, %133, %132
  %144 = getelementptr inbounds %struct._PixelPacket, ptr %104, i64 1
  %145 = add nuw nsw i64 %105, 1
  %146 = icmp eq i64 %145, %94
  br i1 %146, label %147, label %103, !llvm.loop !52

147:                                              ; preds = %143, %92
  %148 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %65, ptr noundef %3) #18
  %149 = icmp ne i32 %148, 0
  %150 = zext i1 %149 to i32
  %151 = load ptr, ptr %82, align 8, !tbaa !33
  %152 = icmp eq ptr %151, null
  br i1 %152, label %159, label %153

153:                                              ; preds = %147
  %154 = add nsw i64 %86, 1
  %155 = load i64, ptr %66, align 8, !tbaa !24
  %156 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.3, i64 noundef %86, i64 noundef %155) #19
  %157 = icmp eq i32 %156, 0
  %158 = select i1 %157, i32 0, i32 %150
  br label %159

159:                                              ; preds = %147, %153, %88, %83
  %160 = phi i64 [ %86, %83 ], [ %86, %88 ], [ %154, %153 ], [ %86, %147 ]
  %161 = phi i32 [ 0, %83 ], [ 0, %88 ], [ %158, %153 ], [ %150, %147 ]
  %162 = add nuw nsw i64 %84, 1
  %163 = load i64, ptr %66, align 8, !tbaa !24
  %164 = icmp slt i64 %162, %163
  br i1 %164, label %83, label %165, !llvm.loop !53

165:                                              ; preds = %159, %64
  %166 = phi i32 [ 1, %64 ], [ %161, %159 ]
  %167 = call ptr @DestroyCacheView(ptr noundef %65) #17
  br label %168

168:                                              ; preds = %15, %13, %165
  %169 = phi i32 [ %166, %165 ], [ 1, %13 ], [ 0, %15 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #16
  ret i32 %169
}

; Function Attrs: optsize
declare i32 @ParseGeometry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef i32 @IsMagickGray(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !54
  %4 = add i32 %3, -1
  %5 = icmp ult i32 %4, 2
  br i1 %5, label %6, label %23

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %8 = load float, ptr %7, align 8, !tbaa !46
  %9 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %10 = load float, ptr %9, align 4, !tbaa !55
  %11 = fsub float %8, %10
  %12 = tail call float @llvm.fabs.f32(float %11)
  %13 = fpext float %12 to double
  %14 = fcmp olt double %13, 1.000000e-15
  br i1 %14, label %15, label %22

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %17 = load float, ptr %16, align 8, !tbaa !56
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
define dso_local i32 @ClampImage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @ClampImageChannel(ptr noundef %0, i32 noundef 134217719) #19
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ClampImageChannel(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 783, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #17
  br label %9

9:                                                ; preds = %6, %2
  %10 = load i32, ptr %0, align 8, !tbaa !57
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %42

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %14 = load i64, ptr %13, align 8, !tbaa !58
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %40

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %18 = load ptr, ptr %17, align 8, !tbaa !59
  br label %19

19:                                               ; preds = %16, %19
  %20 = phi ptr [ %37, %19 ], [ %18, %16 ]
  %21 = phi i64 [ %38, %19 ], [ 0, %16 ]
  %22 = getelementptr inbounds %struct._PixelPacket, ptr %20, i64 0, i32 2
  %23 = load i16, ptr %22, align 2, !tbaa !37
  %24 = uitofp i16 %23 to float
  %25 = tail call fastcc zeroext i16 @ClampPixel(float noundef %24) #19
  store i16 %25, ptr %22, align 2, !tbaa !37
  %26 = getelementptr inbounds %struct._PixelPacket, ptr %20, i64 0, i32 1
  %27 = load i16, ptr %26, align 2, !tbaa !38
  %28 = uitofp i16 %27 to float
  %29 = tail call fastcc zeroext i16 @ClampPixel(float noundef %28) #19
  store i16 %29, ptr %26, align 2, !tbaa !38
  %30 = load i16, ptr %20, align 2, !tbaa !39
  %31 = uitofp i16 %30 to float
  %32 = tail call fastcc zeroext i16 @ClampPixel(float noundef %31) #19
  store i16 %32, ptr %20, align 2, !tbaa !39
  %33 = getelementptr inbounds %struct._PixelPacket, ptr %20, i64 0, i32 3
  %34 = load i16, ptr %33, align 2, !tbaa !41
  %35 = uitofp i16 %34 to float
  %36 = tail call fastcc zeroext i16 @ClampPixel(float noundef %35) #19
  store i16 %36, ptr %33, align 2, !tbaa !41
  %37 = getelementptr inbounds %struct._PixelPacket, ptr %20, i64 1
  %38 = add nuw nsw i64 %21, 1
  %39 = icmp eq i64 %38, %14
  br i1 %39, label %40, label %19, !llvm.loop !60

40:                                               ; preds = %19, %12
  %41 = tail call i32 @SyncImage(ptr noundef nonnull %0) #17
  br label %137

42:                                               ; preds = %9
  %43 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %44 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %43) #17
  %45 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %46 = load i64, ptr %45, align 8, !tbaa !24
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %134

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %50 = and i32 %1, 1
  %51 = icmp eq i32 %50, 0
  %52 = and i32 %1, 2
  %53 = icmp eq i32 %52, 0
  %54 = and i32 %1, 4
  %55 = icmp eq i32 %54, 0
  %56 = and i32 %1, 8
  %57 = icmp eq i32 %56, 0
  %58 = and i32 %1, 32
  %59 = icmp eq i32 %58, 0
  %60 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %61 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %62

62:                                               ; preds = %48, %128
  %63 = phi i64 [ 0, %48 ], [ %131, %128 ]
  %64 = phi i64 [ 0, %48 ], [ %130, %128 ]
  %65 = phi i32 [ 1, %48 ], [ %129, %128 ]
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %128, label %67

67:                                               ; preds = %62
  %68 = load i64, ptr %49, align 8, !tbaa !25
  %69 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %44, i64 noundef 0, i64 noundef %63, i64 noundef %68, i64 noundef 1, ptr noundef nonnull %43) #18
  %70 = icmp eq ptr %69, null
  br i1 %70, label %128, label %71

71:                                               ; preds = %67
  %72 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %44) #17
  %73 = load i64, ptr %49, align 8, !tbaa !25
  %74 = icmp sgt i64 %73, 0
  br i1 %74, label %75, label %116

75:                                               ; preds = %71
  %76 = icmp eq ptr %72, null
  br label %77

77:                                               ; preds = %75, %112
  %78 = phi ptr [ %69, %75 ], [ %113, %112 ]
  %79 = phi i64 [ 0, %75 ], [ %114, %112 ]
  br i1 %51, label %85, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct._PixelPacket, ptr %78, i64 0, i32 2
  %82 = load i16, ptr %81, align 2, !tbaa !37
  %83 = uitofp i16 %82 to float
  %84 = tail call fastcc zeroext i16 @ClampPixel(float noundef %83) #19
  store i16 %84, ptr %81, align 2, !tbaa !37
  br label %85

85:                                               ; preds = %80, %77
  br i1 %53, label %91, label %86

86:                                               ; preds = %85
  %87 = getelementptr inbounds %struct._PixelPacket, ptr %78, i64 0, i32 1
  %88 = load i16, ptr %87, align 2, !tbaa !38
  %89 = uitofp i16 %88 to float
  %90 = tail call fastcc zeroext i16 @ClampPixel(float noundef %89) #19
  store i16 %90, ptr %87, align 2, !tbaa !38
  br label %91

91:                                               ; preds = %86, %85
  br i1 %55, label %96, label %92

92:                                               ; preds = %91
  %93 = load i16, ptr %78, align 2, !tbaa !39
  %94 = uitofp i16 %93 to float
  %95 = tail call fastcc zeroext i16 @ClampPixel(float noundef %94) #19
  store i16 %95, ptr %78, align 2, !tbaa !39
  br label %96

96:                                               ; preds = %92, %91
  br i1 %57, label %102, label %97

97:                                               ; preds = %96
  %98 = getelementptr inbounds %struct._PixelPacket, ptr %78, i64 0, i32 3
  %99 = load i16, ptr %98, align 2, !tbaa !41
  %100 = uitofp i16 %99 to float
  %101 = tail call fastcc zeroext i16 @ClampPixel(float noundef %100) #19
  store i16 %101, ptr %98, align 2, !tbaa !41
  br label %102

102:                                              ; preds = %97, %96
  br i1 %59, label %112, label %103

103:                                              ; preds = %102
  %104 = load i32, ptr %60, align 4, !tbaa !26
  %105 = icmp ne i32 %104, 12
  %106 = select i1 %105, i1 true, i1 %76
  br i1 %106, label %112, label %107

107:                                              ; preds = %103
  %108 = getelementptr inbounds i16, ptr %72, i64 %79
  %109 = load i16, ptr %108, align 2, !tbaa !27
  %110 = uitofp i16 %109 to float
  %111 = tail call fastcc zeroext i16 @ClampPixel(float noundef %110) #19
  store i16 %111, ptr %108, align 2, !tbaa !27
  br label %112

112:                                              ; preds = %107, %103, %102
  %113 = getelementptr inbounds %struct._PixelPacket, ptr %78, i64 1
  %114 = add nuw nsw i64 %79, 1
  %115 = icmp eq i64 %114, %73
  br i1 %115, label %116, label %77, !llvm.loop !61

116:                                              ; preds = %112, %71
  %117 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %44, ptr noundef nonnull %43) #18
  %118 = icmp ne i32 %117, 0
  %119 = zext i1 %118 to i32
  %120 = load ptr, ptr %61, align 8, !tbaa !33
  %121 = icmp eq ptr %120, null
  br i1 %121, label %128, label %122

122:                                              ; preds = %116
  %123 = add nsw i64 %64, 1
  %124 = load i64, ptr %45, align 8, !tbaa !24
  %125 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.4, i64 noundef %64, i64 noundef %124) #19
  %126 = icmp eq i32 %125, 0
  %127 = select i1 %126, i32 0, i32 %119
  br label %128

128:                                              ; preds = %116, %122, %67, %62
  %129 = phi i32 [ 0, %62 ], [ 0, %67 ], [ %127, %122 ], [ %119, %116 ]
  %130 = phi i64 [ %64, %62 ], [ %64, %67 ], [ %123, %122 ], [ %64, %116 ]
  %131 = add nuw nsw i64 %63, 1
  %132 = load i64, ptr %45, align 8, !tbaa !24
  %133 = icmp slt i64 %131, %132
  br i1 %133, label %62, label %134, !llvm.loop !62

134:                                              ; preds = %128, %42
  %135 = phi i32 [ 1, %42 ], [ %129, %128 ]
  %136 = tail call ptr @DestroyCacheView(ptr noundef %44) #17
  br label %137

137:                                              ; preds = %134, %40
  %138 = phi i32 [ %41, %40 ], [ %135, %134 ]
  ret i32 %138
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i16 @ClampPixel(float noundef %0) unnamed_addr #4 {
  %2 = fptoui float %0 to i16
  ret i16 %2
}

; Function Attrs: optsize
declare i32 @SyncImage(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DestroyThresholdMap(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !63
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @DestroyString(ptr noundef nonnull %2) #17
  store ptr %5, ptr %0, align 8, !tbaa !63
  br label %6

6:                                                ; preds = %4, %1
  %7 = getelementptr inbounds %struct._ThresholdMap, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !65
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call ptr @DestroyString(ptr noundef nonnull %8) #17
  store ptr %11, ptr %7, align 8, !tbaa !65
  br label %12

12:                                               ; preds = %10, %6
  %13 = getelementptr inbounds %struct._ThresholdMap, ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !66
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %14) #17
  store ptr %17, ptr %13, align 8, !tbaa !66
  br label %18

18:                                               ; preds = %16, %12
  %19 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #17
  ret ptr %19
}

; Function Attrs: optsize
declare ptr @DestroyString(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetThresholdMapFile(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct._ExceptionInfo, align 8
  %6 = alloca %struct._ExceptionInfo, align 8
  %7 = alloca ptr, align 8
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 32, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 953, ptr noundef nonnull @.str.5, ptr noundef %1) #17
  %9 = tail call ptr @NewXMLTree(ptr noundef %0, ptr noundef %3) #17
  %10 = icmp eq ptr %9, null
  br i1 %10, label %172, label %11

11:                                               ; preds = %4
  %12 = tail call ptr @GetXMLTreeChild(ptr noundef nonnull %9, ptr noundef nonnull @.str.6) #17
  %13 = icmp eq ptr %12, null
  br i1 %13, label %30, label %14

14:                                               ; preds = %11, %27
  %15 = phi ptr [ %28, %27 ], [ %12, %11 ]
  %16 = tail call ptr @GetXMLTreeAttribute(ptr noundef nonnull %15, ptr noundef nonnull @.str.7) #17
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull %16) #17
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %18, %14
  %22 = tail call ptr @GetXMLTreeAttribute(ptr noundef nonnull %15, ptr noundef nonnull @.str.8) #17
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull %22) #17
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %21, %24
  %28 = tail call ptr @GetNextXMLTreeTag(ptr noundef nonnull %15) #17
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %14, !llvm.loop !67

30:                                               ; preds = %27, %11
  %31 = tail call ptr @DestroyXMLTree(ptr noundef nonnull %9) #17
  br label %172

32:                                               ; preds = %18, %24
  %33 = tail call ptr @GetXMLTreeChild(ptr noundef nonnull %15, ptr noundef nonnull @.str.9) #17
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 977, i32 noundef 410, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef %2) #17
  %37 = tail call ptr @DestroyXMLTree(ptr noundef nonnull %9) #17
  br label %172

38:                                               ; preds = %32
  %39 = tail call ptr @GetXMLTreeChild(ptr noundef nonnull %15, ptr noundef nonnull @.str.12) #17
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 985, i32 noundef 410, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.13, ptr noundef %2) #17
  %43 = tail call ptr @DestroyXMLTree(ptr noundef nonnull %9) #17
  br label %172

44:                                               ; preds = %38
  %45 = tail call dereferenceable_or_null(48) ptr @AcquireMagickMemory(i64 noundef 48) #20
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #16
  call void @GetExceptionInfo(ptr noundef nonnull %5) #17
  %48 = tail call ptr @__errno_location() #21
  %49 = load i32, ptr %48, align 4, !tbaa !68
  %50 = call ptr @GetExceptionMessage(i32 noundef %49) #17
  %51 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 995, i32 noundef 700, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr noundef %50) #17
  %52 = call ptr @DestroyString(ptr noundef %50) #17
  call void @CatchException(ptr noundef nonnull %5) #17
  %53 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %5) #17
  call void @MagickCoreTerminus() #17
  call void @_exit(i32 noundef 1) #22
  unreachable

54:                                               ; preds = %44
  %55 = getelementptr inbounds %struct._ThresholdMap, ptr %45, i64 0, i32 1
  %56 = getelementptr inbounds %struct._ThresholdMap, ptr %45, i64 0, i32 5
  store ptr null, ptr %56, align 8, !tbaa !66
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %45, i8 0, i64 16, i1 false)
  %57 = tail call ptr @GetXMLTreeAttribute(ptr noundef nonnull %15, ptr noundef nonnull @.str.7) #17
  %58 = icmp eq ptr %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %54
  %60 = tail call ptr @ConstantString(ptr noundef nonnull %57) #17
  store ptr %60, ptr %45, align 8, !tbaa !63
  br label %61

61:                                               ; preds = %59, %54
  %62 = tail call ptr @GetXMLTreeContent(ptr noundef nonnull %33) #17
  %63 = icmp eq ptr %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %61
  %65 = tail call ptr @ConstantString(ptr noundef nonnull %62) #17
  store ptr %65, ptr %55, align 8, !tbaa !65
  br label %66

66:                                               ; preds = %64, %61
  %67 = tail call ptr @GetXMLTreeAttribute(ptr noundef nonnull %39, ptr noundef nonnull @.str.16) #17
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1011, i32 noundef 410, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef %2) #17
  %71 = tail call ptr @DestroyXMLTree(ptr noundef nonnull %9) #17
  %72 = tail call ptr @DestroyThresholdMap(ptr noundef nonnull %45) #19
  br label %172

73:                                               ; preds = %66
  %74 = tail call fastcc i64 @StringToUnsignedLong(ptr noundef nonnull %67) #19
  %75 = getelementptr inbounds %struct._ThresholdMap, ptr %45, i64 0, i32 2
  store i64 %74, ptr %75, align 8, !tbaa !69
  %76 = icmp eq i64 %74, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1020, i32 noundef 410, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.18, ptr noundef %2) #17
  %79 = tail call ptr @DestroyXMLTree(ptr noundef nonnull %9) #17
  %80 = tail call ptr @DestroyThresholdMap(ptr noundef nonnull %45) #19
  br label %172

81:                                               ; preds = %73
  %82 = tail call ptr @GetXMLTreeAttribute(ptr noundef nonnull %39, ptr noundef nonnull @.str.20) #17
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1029, i32 noundef 410, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.21, ptr noundef %2) #17
  %86 = tail call ptr @DestroyXMLTree(ptr noundef nonnull %9) #17
  %87 = tail call ptr @DestroyThresholdMap(ptr noundef nonnull %45) #19
  br label %172

88:                                               ; preds = %81
  %89 = tail call fastcc i64 @StringToUnsignedLong(ptr noundef nonnull %82) #19
  %90 = getelementptr inbounds %struct._ThresholdMap, ptr %45, i64 0, i32 3
  store i64 %89, ptr %90, align 8, !tbaa !70
  %91 = icmp eq i64 %89, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %88
  %93 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1038, i32 noundef 410, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.21, ptr noundef %2) #17
  %94 = tail call ptr @DestroyXMLTree(ptr noundef nonnull %9) #17
  %95 = tail call ptr @DestroyThresholdMap(ptr noundef nonnull %45) #19
  br label %172

96:                                               ; preds = %88
  %97 = tail call ptr @GetXMLTreeAttribute(ptr noundef nonnull %39, ptr noundef nonnull @.str.22) #17
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1047, i32 noundef 410, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.23, ptr noundef %2) #17
  %101 = tail call ptr @DestroyXMLTree(ptr noundef nonnull %9) #17
  %102 = tail call ptr @DestroyThresholdMap(ptr noundef nonnull %45) #19
  br label %172

103:                                              ; preds = %96
  %104 = tail call fastcc i64 @StringToLong(ptr noundef nonnull %97) #19
  %105 = getelementptr inbounds %struct._ThresholdMap, ptr %45, i64 0, i32 4
  store i64 %104, ptr %105, align 8, !tbaa !71
  %106 = icmp slt i64 %104, 2
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1056, i32 noundef 410, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.23, ptr noundef %2) #17
  %109 = tail call ptr @DestroyXMLTree(ptr noundef nonnull %9) #17
  %110 = tail call ptr @DestroyThresholdMap(ptr noundef nonnull %45) #19
  br label %172

111:                                              ; preds = %103
  %112 = tail call ptr @GetXMLTreeContent(ptr noundef nonnull %39) #17
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %118

114:                                              ; preds = %111
  %115 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1068, i32 noundef 410, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.13, ptr noundef %2) #17
  %116 = tail call ptr @DestroyXMLTree(ptr noundef nonnull %9) #17
  %117 = tail call ptr @DestroyThresholdMap(ptr noundef nonnull %45) #19
  br label %172

118:                                              ; preds = %111
  %119 = load i64, ptr %75, align 8, !tbaa !69
  %120 = load i64, ptr %90, align 8, !tbaa !70
  %121 = shl i64 %120, 3
  %122 = tail call ptr @AcquireQuantumMemory(i64 noundef %119, i64 noundef %121) #23
  store ptr %122, ptr %56, align 8, !tbaa !66
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %131

124:                                              ; preds = %118
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #16
  call void @GetExceptionInfo(ptr noundef nonnull %6) #17
  %125 = tail call ptr @__errno_location() #21
  %126 = load i32, ptr %125, align 4, !tbaa !68
  %127 = call ptr @GetExceptionMessage(i32 noundef %126) #17
  %128 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1077, i32 noundef 700, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr noundef %127) #17
  %129 = call ptr @DestroyString(ptr noundef %127) #17
  call void @CatchException(ptr noundef nonnull %6) #17
  %130 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %6) #17
  call void @MagickCoreTerminus() #17
  call void @_exit(i32 noundef 1) #22
  unreachable

131:                                              ; preds = %118
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  %132 = load i64, ptr %75, align 8, !tbaa !69
  %133 = load i64, ptr %90, align 8, !tbaa !70
  %134 = mul i64 %133, %132
  %135 = icmp sgt i64 %134, 0
  br i1 %135, label %142, label %160

136:                                              ; preds = %154
  %137 = add nuw nsw i64 %143, 1
  %138 = load i64, ptr %75, align 8, !tbaa !69
  %139 = load i64, ptr %90, align 8, !tbaa !70
  %140 = mul i64 %139, %138
  %141 = icmp slt i64 %137, %140
  br i1 %141, label %142, label %160, !llvm.loop !72

142:                                              ; preds = %131, %136
  %143 = phi i64 [ %137, %136 ], [ 0, %131 ]
  %144 = phi ptr [ %148, %136 ], [ %112, %131 ]
  %145 = call i64 @strtol(ptr noundef %144, ptr noundef nonnull %7, i32 noundef 10) #17
  %146 = load ptr, ptr %56, align 8, !tbaa !66
  %147 = getelementptr inbounds i64, ptr %146, i64 %143
  store i64 %145, ptr %147, align 8, !tbaa !73
  %148 = load ptr, ptr %7, align 8, !tbaa !74
  %149 = icmp eq ptr %148, %144
  br i1 %149, label %150, label %152

150:                                              ; preds = %142
  %151 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1093, i32 noundef 410, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, ptr noundef %2) #17
  br label %167

152:                                              ; preds = %142
  %153 = icmp slt i64 %145, 0
  br i1 %153, label %157, label %154

154:                                              ; preds = %152
  %155 = load i64, ptr %105, align 8, !tbaa !71
  %156 = icmp sgt i64 %145, %155
  br i1 %156, label %157, label %136

157:                                              ; preds = %154, %152
  %158 = sitofp i64 %145 to double
  %159 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1101, i32 noundef 410, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.27, double noundef %158, ptr noundef %2) #17
  br label %167

160:                                              ; preds = %136, %131
  %161 = phi ptr [ %112, %131 ], [ %148, %136 ]
  %162 = call i64 @strtol(ptr noundef %161, ptr noundef nonnull %7, i32 noundef 10) #17
  %163 = load ptr, ptr %7, align 8, !tbaa !74
  %164 = icmp eq ptr %163, %161
  br i1 %164, label %170, label %165

165:                                              ; preds = %160
  %166 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1114, i32 noundef 410, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.28, ptr noundef %2) #17
  br label %167

167:                                              ; preds = %150, %157, %165
  %168 = tail call ptr @DestroyXMLTree(ptr noundef nonnull %9) #17
  %169 = tail call ptr @DestroyThresholdMap(ptr noundef nonnull %45) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  br label %172

170:                                              ; preds = %160
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  %171 = tail call ptr @DestroyXMLTree(ptr noundef nonnull %9) #17
  br label %172

172:                                              ; preds = %167, %4, %170, %114, %107, %99, %92, %84, %77, %69, %41, %35, %30
  %173 = phi ptr [ null, %30 ], [ null, %35 ], [ null, %41 ], [ %72, %69 ], [ %80, %77 ], [ %87, %84 ], [ %95, %92 ], [ %102, %99 ], [ %110, %107 ], [ %117, %114 ], [ %45, %170 ], [ null, %4 ], [ %169, %167 ]
  ret ptr %173
}

; Function Attrs: optsize
declare ptr @NewXMLTree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetXMLTreeChild(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetXMLTreeAttribute(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetNextXMLTreeTag(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyXMLTree(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #7

; Function Attrs: optsize
declare void @CatchException(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @MagickCoreTerminus() local_unnamed_addr #2

; Function Attrs: noreturn optsize
declare void @_exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @ConstantString(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetXMLTreeContent(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn uwtable
define internal fastcc i64 @StringToUnsignedLong(ptr noalias nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = tail call i64 @strtoul(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10) #17
  ret i64 %2
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn uwtable
define internal fastcc i64 @StringToLong(ptr noalias nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10) #17
  ret i64 %2
}

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetThresholdMap(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @GetThresholdMapFile(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.29, ptr noundef %0, ptr noundef %1) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %21

5:                                                ; preds = %2
  %6 = tail call ptr @GetConfigureOptions(ptr noundef nonnull @.str.30, ptr noundef %1) #17
  %7 = tail call ptr @GetNextValueInLinkedList(ptr noundef %6) #17
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %5, %15
  %10 = phi ptr [ %16, %15 ], [ %7, %5 ]
  %11 = tail call ptr @GetStringInfoDatum(ptr noundef nonnull %10) #17
  %12 = tail call ptr @GetStringInfoPath(ptr noundef nonnull %10) #17
  %13 = tail call ptr @GetThresholdMapFile(ptr noundef %11, ptr noundef %12, ptr noundef %0, ptr noundef %1) #19
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = tail call ptr @GetNextValueInLinkedList(ptr noundef %6) #17
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %9, !llvm.loop !75

18:                                               ; preds = %15, %9, %5
  %19 = phi ptr [ null, %5 ], [ %13, %9 ], [ null, %15 ]
  %20 = tail call ptr @DestroyConfigureOptions(ptr noundef %6) #17
  br label %21

21:                                               ; preds = %2, %18
  %22 = phi ptr [ %19, %18 ], [ %3, %2 ]
  ret ptr %22
}

; Function Attrs: optsize
declare ptr @GetConfigureOptions(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetNextValueInLinkedList(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetStringInfoDatum(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetStringInfoPath(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyConfigureOptions(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ListThresholdMapFile(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 32, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1219, ptr noundef nonnull @.str.5, ptr noundef %2) #17
  %6 = tail call ptr @NewXMLTree(ptr noundef %1, ptr noundef %3) #17
  %7 = icmp eq ptr %6, null
  br i1 %7, label %39, label %8

8:                                                ; preds = %4
  %9 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %0, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34) #17
  %10 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %0, ptr noundef nonnull @.str.35) #17
  %11 = tail call ptr @GetXMLTreeChild(ptr noundef nonnull %6, ptr noundef nonnull @.str.6) #17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %36, label %13

13:                                               ; preds = %8, %30
  %14 = phi ptr [ %34, %30 ], [ %11, %8 ]
  %15 = tail call ptr @GetXMLTreeAttribute(ptr noundef nonnull %14, ptr noundef nonnull @.str.7) #17
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1235, i32 noundef 410, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.36) #17
  br label %36

19:                                               ; preds = %13
  %20 = tail call ptr @GetXMLTreeAttribute(ptr noundef nonnull %14, ptr noundef nonnull @.str.8) #17
  %21 = tail call ptr @GetXMLTreeChild(ptr noundef nonnull %14, ptr noundef nonnull @.str.9) #17
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1244, i32 noundef 410, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef nonnull %15) #17
  br label %36

25:                                               ; preds = %19
  %26 = tail call ptr @GetXMLTreeContent(ptr noundef nonnull %21) #17
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1251, i32 noundef 410, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.11, ptr noundef nonnull %15) #17
  br label %36

30:                                               ; preds = %25
  %31 = icmp eq ptr %20, null
  %32 = select i1 %31, ptr @.str.1, ptr %20
  %33 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %0, ptr noundef nonnull @.str.31, ptr noundef nonnull %15, ptr noundef nonnull %32, ptr noundef nonnull %26) #17
  %34 = tail call ptr @GetNextXMLTreeTag(ptr noundef nonnull %14) #17
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %13, !llvm.loop !76

36:                                               ; preds = %30, %8, %17, %23, %28
  %37 = phi i32 [ 0, %28 ], [ 0, %23 ], [ 0, %17 ], [ 1, %8 ], [ 1, %30 ]
  %38 = tail call ptr @DestroyXMLTree(ptr noundef nonnull %6) #17
  br label %39

39:                                               ; preds = %36, %4
  %40 = phi i32 [ 0, %4 ], [ %37, %36 ]
  ret i32 %40
}

; Function Attrs: optsize
declare i64 @FormatLocaleFile(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ListThresholdMaps(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  %4 = load ptr, ptr @stdout, align 8
  %5 = select i1 %3, ptr %4, ptr %0
  %6 = tail call ptr @GetConfigureOptions(ptr noundef nonnull @.str.30, ptr noundef %1) #17
  %7 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %5, ptr noundef nonnull @.str.37) #17
  %8 = tail call ptr @GetNextValueInLinkedList(ptr noundef %6) #17
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %2, %10
  %11 = phi ptr [ %17, %10 ], [ %8, %2 ]
  %12 = tail call ptr @GetStringInfoPath(ptr noundef nonnull %11) #17
  %13 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %5, ptr noundef nonnull @.str.38, ptr noundef %12) #17
  %14 = tail call ptr @GetStringInfoDatum(ptr noundef nonnull %11) #17
  %15 = tail call ptr @GetStringInfoPath(ptr noundef nonnull %11) #17
  %16 = tail call i32 @ListThresholdMapFile(ptr noundef %5, ptr noundef %14, ptr noundef %15, ptr noundef %1) #19, !range !36
  %17 = tail call ptr @GetNextValueInLinkedList(ptr noundef %6) #17
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %10, !llvm.loop !77

19:                                               ; preds = %10, %2
  %20 = tail call ptr @DestroyConfigureOptions(ptr noundef %6) #17
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @OrderedDitherImage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %3 = tail call i32 @OrderedDitherImageChannel(ptr noundef %0, i32 noundef 134217719, ptr noundef nonnull %2) #19, !range !36
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @OrderedDitherImageChannel(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @OrderedPosterizeImageChannel(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.39, ptr noundef %2) #19, !range !36
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @OrderedPosterizeImageChannel(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  %6 = alloca ptr, align 8
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1463, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #17
  br label %13

13:                                               ; preds = %10, %4
  %14 = icmp eq ptr %2, null
  br i1 %14, label %364, label %15

15:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #16
  %16 = tail call ptr @__ctype_b_loc() #21
  %17 = load ptr, ptr %16, align 8, !tbaa !74
  br label %18

18:                                               ; preds = %18, %15
  %19 = phi ptr [ %2, %15 ], [ %31, %18 ]
  %20 = load i8, ptr %19, align 1, !tbaa !78
  %21 = zext i8 %20 to i64
  %22 = getelementptr inbounds i16, ptr %17, i64 %21
  %23 = load i16, ptr %22, align 2, !tbaa !27
  %24 = freeze i16 %23
  %25 = and i16 %24, 8192
  %26 = icmp eq i16 %25, 0
  %27 = icmp ne i8 %20, 44
  %28 = and i1 %27, %26
  %29 = icmp eq i8 %20, 0
  %30 = or i1 %29, %28
  %31 = getelementptr inbounds i8, ptr %19, i64 1
  br i1 %30, label %32, label %18, !llvm.loop !79

32:                                               ; preds = %18
  %33 = and i16 %24, 8192
  %34 = icmp eq i16 %33, 0
  %35 = ptrtoint ptr %19 to i64
  br i1 %34, label %36, label %57

36:                                               ; preds = %32, %43
  %37 = phi i8 [ %47, %43 ], [ %20, %32 ]
  %38 = phi ptr [ %45, %43 ], [ %19, %32 ]
  switch i8 %37, label %39 [
    i8 44, label %54
    i8 0, label %54
  ]

39:                                               ; preds = %36
  %40 = ptrtoint ptr %38 to i64
  %41 = sub i64 %40, %35
  %42 = icmp sgt i64 %41, 4094
  br i1 %42, label %54, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds [4096 x i8], ptr %5, i64 0, i64 %41
  store i8 %37, ptr %44, align 1, !tbaa !78
  %45 = getelementptr inbounds i8, ptr %38, i64 1
  %46 = load ptr, ptr %16, align 8, !tbaa !74
  %47 = load i8, ptr %45, align 1, !tbaa !78
  %48 = zext i8 %47 to i64
  %49 = getelementptr inbounds i16, ptr %46, i64 %48
  %50 = load i16, ptr %49, align 2, !tbaa !27
  %51 = freeze i16 %50
  %52 = and i16 %51, 8192
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %36, label %54, !llvm.loop !80

54:                                               ; preds = %36, %36, %43, %39
  %55 = phi ptr [ %38, %39 ], [ %45, %43 ], [ %38, %36 ], [ %38, %36 ]
  %56 = ptrtoint ptr %55 to i64
  br label %57

57:                                               ; preds = %32, %54
  %58 = phi i64 [ %56, %54 ], [ %35, %32 ]
  %59 = sub i64 %58, %35
  %60 = getelementptr inbounds [4096 x i8], ptr %5, i64 0, i64 %59
  store i8 0, ptr %60, align 1, !tbaa !78
  %61 = call ptr @GetThresholdMap(ptr noundef nonnull %5, ptr noundef %3) #19
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1490, i32 noundef 410, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, ptr noundef nonnull %19) #17
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #16
  br label %364

65:                                               ; preds = %57
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  %66 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %19, i32 noundef 44) #24
  store ptr %66, ptr %6, align 8, !tbaa !74
  %67 = icmp eq ptr %66, null
  br i1 %67, label %80, label %68

68:                                               ; preds = %65
  %69 = load ptr, ptr %16, align 8, !tbaa !74
  %70 = getelementptr inbounds i8, ptr %66, i64 1
  store ptr %70, ptr %6, align 8, !tbaa !74
  %71 = load i8, ptr %70, align 1, !tbaa !78
  %72 = zext i8 %71 to i64
  %73 = getelementptr inbounds i16, ptr %69, i64 %72
  %74 = load i16, ptr %73, align 2, !tbaa !27
  %75 = and i16 %74, 2048
  %76 = icmp eq i16 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %68
  %78 = call i64 @strtoul(ptr noundef nonnull %70, ptr noundef nonnull %6, i32 noundef 10) #17
  %79 = trunc i64 %78 to i32
  br label %80

80:                                               ; preds = %65, %68, %77
  %81 = phi i32 [ %79, %77 ], [ 2, %68 ], [ 2, %65 ]
  %82 = and i32 %1, 1
  %83 = icmp eq i32 %82, 0
  %84 = select i1 %83, i32 0, i32 %81
  %85 = and i32 %1, 2
  %86 = icmp eq i32 %85, 0
  %87 = select i1 %86, i32 0, i32 %81
  %88 = and i32 %1, 4
  %89 = icmp eq i32 %88, 0
  %90 = select i1 %89, i32 0, i32 %81
  %91 = and i32 %1, 8
  %92 = icmp eq i32 %91, 0
  %93 = select i1 %92, i32 0, i32 %81
  %94 = and i32 %1, 32
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %80
  %97 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %98 = load i32, ptr %97, align 4, !tbaa !26
  %99 = icmp eq i32 %98, 12
  %100 = select i1 %99, i32 %81, i32 0
  br label %101

101:                                              ; preds = %96, %80
  %102 = phi i32 [ 0, %80 ], [ %100, %96 ]
  %103 = load ptr, ptr %6, align 8, !tbaa !74
  %104 = icmp eq ptr %103, null
  br i1 %104, label %162, label %105

105:                                              ; preds = %101
  %106 = load i8, ptr %103, align 1, !tbaa !78
  %107 = icmp eq i8 %106, 44
  br i1 %107, label %108, label %162

108:                                              ; preds = %105
  %109 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %19, i32 noundef 44) #24
  %110 = getelementptr inbounds i8, ptr %109, i64 1
  store ptr %110, ptr %6, align 8, !tbaa !74
  br i1 %83, label %119, label %111

111:                                              ; preds = %108
  %112 = call i64 @strtoul(ptr noundef nonnull %110, ptr noundef nonnull %6, i32 noundef 10) #17
  %113 = trunc i64 %112 to i32
  %114 = load ptr, ptr %6, align 8, !tbaa !74
  %115 = load i8, ptr %114, align 1, !tbaa !78
  %116 = icmp eq i8 %115, 44
  br i1 %116, label %117, label %119

117:                                              ; preds = %111
  %118 = getelementptr inbounds i8, ptr %114, i64 1
  store ptr %118, ptr %6, align 8, !tbaa !74
  br label %119

119:                                              ; preds = %111, %117, %108
  %120 = phi ptr [ %110, %108 ], [ %118, %117 ], [ %114, %111 ]
  %121 = phi i32 [ 0, %108 ], [ %113, %117 ], [ %113, %111 ]
  br i1 %86, label %130, label %122

122:                                              ; preds = %119
  %123 = call i64 @strtoul(ptr noundef nonnull %120, ptr noundef nonnull %6, i32 noundef 10) #17
  %124 = trunc i64 %123 to i32
  %125 = load ptr, ptr %6, align 8, !tbaa !74
  %126 = load i8, ptr %125, align 1, !tbaa !78
  %127 = icmp eq i8 %126, 44
  br i1 %127, label %128, label %130

128:                                              ; preds = %122
  %129 = getelementptr inbounds i8, ptr %125, i64 1
  store ptr %129, ptr %6, align 8, !tbaa !74
  br label %130

130:                                              ; preds = %122, %128, %119
  %131 = phi ptr [ %120, %119 ], [ %129, %128 ], [ %125, %122 ]
  %132 = phi i32 [ 0, %119 ], [ %124, %128 ], [ %124, %122 ]
  br i1 %89, label %141, label %133

133:                                              ; preds = %130
  %134 = call i64 @strtoul(ptr noundef nonnull %131, ptr noundef nonnull %6, i32 noundef 10) #17
  %135 = trunc i64 %134 to i32
  %136 = load ptr, ptr %6, align 8, !tbaa !74
  %137 = load i8, ptr %136, align 1, !tbaa !78
  %138 = icmp eq i8 %137, 44
  br i1 %138, label %139, label %141

139:                                              ; preds = %133
  %140 = getelementptr inbounds i8, ptr %136, i64 1
  store ptr %140, ptr %6, align 8, !tbaa !74
  br label %141

141:                                              ; preds = %133, %139, %130
  %142 = phi ptr [ %131, %130 ], [ %140, %139 ], [ %136, %133 ]
  %143 = phi i32 [ 0, %130 ], [ %135, %139 ], [ %135, %133 ]
  br i1 %95, label %156, label %144

144:                                              ; preds = %141
  %145 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %146 = load i32, ptr %145, align 4, !tbaa !26
  %147 = icmp eq i32 %146, 12
  br i1 %147, label %148, label %156

148:                                              ; preds = %144
  %149 = call i64 @strtoul(ptr noundef nonnull %142, ptr noundef nonnull %6, i32 noundef 10) #17
  %150 = trunc i64 %149 to i32
  %151 = load ptr, ptr %6, align 8, !tbaa !74
  %152 = load i8, ptr %151, align 1, !tbaa !78
  %153 = icmp eq i8 %152, 44
  br i1 %153, label %154, label %156

154:                                              ; preds = %148
  %155 = getelementptr inbounds i8, ptr %151, i64 1
  store ptr %155, ptr %6, align 8, !tbaa !74
  br label %156

156:                                              ; preds = %148, %154, %144, %141
  %157 = phi ptr [ %142, %144 ], [ %142, %141 ], [ %155, %154 ], [ %151, %148 ]
  %158 = phi i32 [ %102, %144 ], [ %102, %141 ], [ %150, %154 ], [ %150, %148 ]
  br i1 %92, label %162, label %159

159:                                              ; preds = %156
  %160 = call i64 @strtoul(ptr noundef nonnull %157, ptr noundef nonnull %6, i32 noundef 10) #17
  %161 = trunc i64 %160 to i32
  br label %162

162:                                              ; preds = %159, %156, %105, %101
  %163 = phi i32 [ 0, %156 ], [ %93, %105 ], [ %93, %101 ], [ %161, %159 ]
  %164 = phi i32 [ %143, %156 ], [ %90, %105 ], [ %90, %101 ], [ %143, %159 ]
  %165 = phi i32 [ %132, %156 ], [ %87, %105 ], [ %87, %101 ], [ %132, %159 ]
  %166 = phi i32 [ %121, %156 ], [ %84, %105 ], [ %84, %101 ], [ %121, %159 ]
  %167 = phi i32 [ %158, %156 ], [ %102, %105 ], [ %102, %101 ], [ %158, %159 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  %168 = getelementptr inbounds %struct._ThresholdMap, ptr %61, i64 0, i32 4
  %169 = load i64, ptr %168, align 8, !tbaa !71
  %170 = add nsw i64 %169, -1
  %171 = call i32 @llvm.usub.sat.i32(i32 %166, i32 1)
  %172 = call i32 @llvm.usub.sat.i32(i32 %165, i32 1)
  %173 = call i32 @llvm.usub.sat.i32(i32 %164, i32 1)
  %174 = call i32 @llvm.usub.sat.i32(i32 %163, i32 1)
  %175 = call i32 @llvm.usub.sat.i32(i32 %167, i32 1)
  %176 = call i32 @SetImageStorageClass(ptr noundef %0, i32 noundef 1) #17
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %162
  %179 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  call void @InheritException(ptr noundef %3, ptr noundef nonnull %179) #17
  br label %364

180:                                              ; preds = %162
  %181 = call ptr @AcquireAuthenticCacheView(ptr noundef %0, ptr noundef %3) #17
  %182 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %183 = load i64, ptr %182, align 8, !tbaa !24
  %184 = icmp sgt i64 %183, 0
  br i1 %184, label %185, label %361

185:                                              ; preds = %180
  %186 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %187 = getelementptr inbounds %struct._ThresholdMap, ptr %61, i64 0, i32 5
  %188 = getelementptr inbounds %struct._ThresholdMap, ptr %61, i64 0, i32 2
  %189 = getelementptr inbounds %struct._ThresholdMap, ptr %61, i64 0, i32 3
  %190 = icmp ult i32 %166, 2
  %191 = zext i32 %171 to i64
  %192 = mul nsw i64 %170, %191
  %193 = add nsw i64 %192, 1
  %194 = sitofp i64 %193 to double
  %195 = uitofp i32 %171 to float
  %196 = icmp ult i32 %165, 2
  %197 = zext i32 %172 to i64
  %198 = mul nsw i64 %170, %197
  %199 = add nsw i64 %198, 1
  %200 = sitofp i64 %199 to double
  %201 = uitofp i32 %172 to float
  %202 = icmp ult i32 %164, 2
  %203 = zext i32 %173 to i64
  %204 = mul nsw i64 %170, %203
  %205 = add nsw i64 %204, 1
  %206 = sitofp i64 %205 to double
  %207 = uitofp i32 %173 to float
  %208 = icmp ult i32 %163, 2
  %209 = zext i32 %174 to i64
  %210 = mul nsw i64 %170, %209
  %211 = add nsw i64 %210, 1
  %212 = sitofp i64 %211 to double
  %213 = uitofp i32 %174 to double
  %214 = icmp ult i32 %167, 2
  %215 = zext i32 %175 to i64
  %216 = mul nsw i64 %170, %215
  %217 = add nsw i64 %216, 1
  %218 = sitofp i64 %217 to double
  %219 = uitofp i32 %175 to float
  %220 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %221

221:                                              ; preds = %185, %355
  %222 = phi i64 [ 0, %185 ], [ %358, %355 ]
  %223 = phi i64 [ 0, %185 ], [ %357, %355 ]
  %224 = phi i32 [ 1, %185 ], [ %356, %355 ]
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %355, label %226

226:                                              ; preds = %221
  %227 = load i64, ptr %186, align 8, !tbaa !25
  %228 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %181, i64 noundef 0, i64 noundef %222, i64 noundef %227, i64 noundef 1, ptr noundef %3) #18
  %229 = icmp eq ptr %228, null
  br i1 %229, label %355, label %230

230:                                              ; preds = %226
  %231 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %181) #17
  %232 = load i64, ptr %186, align 8, !tbaa !25
  %233 = icmp sgt i64 %232, 0
  br i1 %233, label %234, label %343

234:                                              ; preds = %230
  %235 = load ptr, ptr %187, align 8, !tbaa !66
  %236 = load i64, ptr %188, align 8, !tbaa !69
  %237 = load i64, ptr %189, align 8, !tbaa !70
  %238 = urem i64 %222, %237
  %239 = mul i64 %238, %236
  %240 = getelementptr i64, ptr %235, i64 %239
  %241 = icmp eq ptr %231, null
  %242 = select i1 %214, i1 true, i1 %241
  br label %243

243:                                              ; preds = %234, %339
  %244 = phi ptr [ %228, %234 ], [ %340, %339 ]
  %245 = phi i64 [ 0, %234 ], [ %341, %339 ]
  %246 = urem i64 %245, %236
  %247 = getelementptr i64, ptr %240, i64 %246
  %248 = load i64, ptr %247, align 8, !tbaa !73
  br i1 %190, label %266, label %249

249:                                              ; preds = %243
  %250 = getelementptr inbounds %struct._PixelPacket, ptr %244, i64 0, i32 2
  %251 = load i16, ptr %250, align 2, !tbaa !37
  %252 = uitofp i16 %251 to double
  %253 = fmul double %252, 0x3EF0001000100010
  %254 = fmul double %253, %194
  %255 = fptosi double %254 to i64
  %256 = sdiv i64 %255, %170
  %257 = mul nsw i64 %256, %170
  %258 = srem i64 %255, %170
  %259 = icmp sge i64 %258, %248
  %260 = zext i1 %259 to i64
  %261 = add nsw i64 %256, %260
  %262 = sitofp i64 %261 to float
  %263 = fmul float %262, 6.553500e+04
  %264 = fdiv float %263, %195
  %265 = call fastcc zeroext i16 @ClampToQuantum(float noundef %264) #19
  store i16 %265, ptr %250, align 2, !tbaa !37
  br label %266

266:                                              ; preds = %249, %243
  br i1 %196, label %284, label %267

267:                                              ; preds = %266
  %268 = getelementptr inbounds %struct._PixelPacket, ptr %244, i64 0, i32 1
  %269 = load i16, ptr %268, align 2, !tbaa !38
  %270 = uitofp i16 %269 to double
  %271 = fmul double %270, 0x3EF0001000100010
  %272 = fmul double %271, %200
  %273 = fptosi double %272 to i64
  %274 = sdiv i64 %273, %170
  %275 = mul nsw i64 %274, %170
  %276 = srem i64 %273, %170
  %277 = icmp sge i64 %276, %248
  %278 = zext i1 %277 to i64
  %279 = add nsw i64 %274, %278
  %280 = sitofp i64 %279 to float
  %281 = fmul float %280, 6.553500e+04
  %282 = fdiv float %281, %201
  %283 = call fastcc zeroext i16 @ClampToQuantum(float noundef %282) #19
  store i16 %283, ptr %268, align 2, !tbaa !38
  br label %284

284:                                              ; preds = %267, %266
  br i1 %202, label %301, label %285

285:                                              ; preds = %284
  %286 = load i16, ptr %244, align 2, !tbaa !39
  %287 = uitofp i16 %286 to double
  %288 = fmul double %287, 0x3EF0001000100010
  %289 = fmul double %288, %206
  %290 = fptosi double %289 to i64
  %291 = sdiv i64 %290, %170
  %292 = mul nsw i64 %291, %170
  %293 = srem i64 %290, %170
  %294 = icmp sge i64 %293, %248
  %295 = zext i1 %294 to i64
  %296 = add nsw i64 %291, %295
  %297 = sitofp i64 %296 to float
  %298 = fmul float %297, 6.553500e+04
  %299 = fdiv float %298, %207
  %300 = call fastcc zeroext i16 @ClampToQuantum(float noundef %299) #19
  store i16 %300, ptr %244, align 2, !tbaa !39
  br label %301

301:                                              ; preds = %285, %284
  br i1 %208, label %321, label %302

302:                                              ; preds = %301
  %303 = getelementptr inbounds %struct._PixelPacket, ptr %244, i64 0, i32 3
  %304 = load i16, ptr %303, align 2, !tbaa !41
  %305 = uitofp i16 %304 to double
  %306 = call double @llvm.fmuladd.f64(double %305, double 0xBEF0001000100010, double 1.000000e+00)
  %307 = fmul double %306, %212
  %308 = fptosi double %307 to i64
  %309 = sdiv i64 %308, %170
  %310 = mul nsw i64 %309, %170
  %311 = srem i64 %308, %170
  %312 = sitofp i64 %309 to double
  %313 = fsub double 1.000000e+00, %312
  %314 = icmp sge i64 %311, %248
  %315 = uitofp i1 %314 to double
  %316 = fsub double %313, %315
  %317 = fmul double %316, 6.553500e+04
  %318 = fdiv double %317, %213
  %319 = fptrunc double %318 to float
  %320 = call fastcc zeroext i16 @ClampToQuantum(float noundef %319) #19
  store i16 %320, ptr %303, align 2, !tbaa !41
  br label %321

321:                                              ; preds = %302, %301
  br i1 %242, label %339, label %322

322:                                              ; preds = %321
  %323 = getelementptr inbounds i16, ptr %231, i64 %245
  %324 = load i16, ptr %323, align 2, !tbaa !27
  %325 = uitofp i16 %324 to double
  %326 = fmul double %325, 0x3EF0001000100010
  %327 = fmul double %326, %218
  %328 = fptosi double %327 to i64
  %329 = sdiv i64 %328, %170
  %330 = mul nsw i64 %329, %170
  %331 = srem i64 %328, %170
  %332 = icmp sge i64 %331, %248
  %333 = zext i1 %332 to i64
  %334 = add nsw i64 %329, %333
  %335 = sitofp i64 %334 to float
  %336 = fmul float %335, 6.553500e+04
  %337 = fdiv float %336, %219
  %338 = call fastcc zeroext i16 @ClampToQuantum(float noundef %337) #19
  store i16 %338, ptr %323, align 2, !tbaa !27
  br label %339

339:                                              ; preds = %322, %321
  %340 = getelementptr inbounds %struct._PixelPacket, ptr %244, i64 1
  %341 = add nuw nsw i64 %245, 1
  %342 = icmp eq i64 %341, %232
  br i1 %342, label %343, label %243, !llvm.loop !81

343:                                              ; preds = %339, %230
  %344 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %181, ptr noundef %3) #18
  %345 = icmp ne i32 %344, 0
  %346 = zext i1 %345 to i32
  %347 = load ptr, ptr %220, align 8, !tbaa !33
  %348 = icmp eq ptr %347, null
  br i1 %348, label %355, label %349

349:                                              ; preds = %343
  %350 = add nsw i64 %223, 1
  %351 = load i64, ptr %182, align 8, !tbaa !24
  %352 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.43, i64 noundef %223, i64 noundef %351) #19
  %353 = icmp eq i32 %352, 0
  %354 = select i1 %353, i32 0, i32 %346
  br label %355

355:                                              ; preds = %343, %349, %226, %221
  %356 = phi i32 [ 0, %221 ], [ 0, %226 ], [ %354, %349 ], [ %346, %343 ]
  %357 = phi i64 [ %223, %221 ], [ %223, %226 ], [ %350, %349 ], [ %223, %343 ]
  %358 = add nuw nsw i64 %222, 1
  %359 = load i64, ptr %182, align 8, !tbaa !24
  %360 = icmp slt i64 %358, %359
  br i1 %360, label %221, label %361, !llvm.loop !82

361:                                              ; preds = %355, %180
  %362 = call ptr @DestroyCacheView(ptr noundef %181) #17
  %363 = call ptr @DestroyThresholdMap(ptr noundef nonnull %61) #19
  br label %364

364:                                              ; preds = %178, %63, %13, %361
  %365 = phi i32 [ 1, %361 ], [ 0, %63 ], [ 1, %13 ], [ 0, %178 ]
  ret i32 %365
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @OrderedPosterizeImage(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @OrderedPosterizeImageChannel(ptr noundef %0, i32 noundef 134217719, ptr noundef %1, ptr noundef %2) #19, !range !36
  ret i32 %4
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i16 @ClampToQuantum(float noundef %0) unnamed_addr #4 {
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
declare double @llvm.fmuladd.f64(double, double, double) #13

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @PerceptibleImage(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @PerceptibleImageChannel(ptr noundef %0, i32 noundef 134217719, double noundef %1) #19
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @PerceptibleImageChannel(ptr noundef %0, i32 noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1753, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #17
  br label %10

10:                                               ; preds = %7, %3
  %11 = load i32, ptr %0, align 8, !tbaa !57
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %39

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %15 = load i64, ptr %14, align 8, !tbaa !58
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %37

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %19 = load ptr, ptr %18, align 8, !tbaa !59
  br label %20

20:                                               ; preds = %17, %20
  %21 = phi ptr [ %34, %20 ], [ %19, %17 ]
  %22 = phi i64 [ %35, %20 ], [ 0, %17 ]
  %23 = getelementptr inbounds %struct._PixelPacket, ptr %21, i64 0, i32 2
  %24 = load i16, ptr %23, align 2, !tbaa !37
  %25 = tail call fastcc zeroext i16 @PerceptibleThreshold(i16 noundef zeroext %24, double noundef %2) #19
  store i16 %25, ptr %23, align 2, !tbaa !37
  %26 = getelementptr inbounds %struct._PixelPacket, ptr %21, i64 0, i32 1
  %27 = load i16, ptr %26, align 2, !tbaa !38
  %28 = tail call fastcc zeroext i16 @PerceptibleThreshold(i16 noundef zeroext %27, double noundef %2) #19
  store i16 %28, ptr %26, align 2, !tbaa !38
  %29 = load i16, ptr %21, align 2, !tbaa !39
  %30 = tail call fastcc zeroext i16 @PerceptibleThreshold(i16 noundef zeroext %29, double noundef %2) #19
  store i16 %30, ptr %21, align 2, !tbaa !39
  %31 = getelementptr inbounds %struct._PixelPacket, ptr %21, i64 0, i32 3
  %32 = load i16, ptr %31, align 2, !tbaa !41
  %33 = tail call fastcc zeroext i16 @PerceptibleThreshold(i16 noundef zeroext %32, double noundef %2) #19
  store i16 %33, ptr %31, align 2, !tbaa !41
  %34 = getelementptr inbounds %struct._PixelPacket, ptr %21, i64 1
  %35 = add nuw nsw i64 %22, 1
  %36 = icmp eq i64 %35, %15
  br i1 %36, label %37, label %20, !llvm.loop !83

37:                                               ; preds = %20, %13
  %38 = tail call i32 @SyncImage(ptr noundef nonnull %0) #17
  br label %129

39:                                               ; preds = %10
  %40 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %41 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %40) #17
  %42 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %43 = load i64, ptr %42, align 8, !tbaa !24
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %126

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %47 = and i32 %1, 1
  %48 = icmp eq i32 %47, 0
  %49 = and i32 %1, 2
  %50 = icmp eq i32 %49, 0
  %51 = and i32 %1, 4
  %52 = icmp eq i32 %51, 0
  %53 = and i32 %1, 8
  %54 = icmp eq i32 %53, 0
  %55 = and i32 %1, 32
  %56 = icmp eq i32 %55, 0
  %57 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %58 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %59

59:                                               ; preds = %45, %120
  %60 = phi i64 [ 0, %45 ], [ %123, %120 ]
  %61 = phi i64 [ 0, %45 ], [ %122, %120 ]
  %62 = phi i32 [ 1, %45 ], [ %121, %120 ]
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %120, label %64

64:                                               ; preds = %59
  %65 = load i64, ptr %46, align 8, !tbaa !25
  %66 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %41, i64 noundef 0, i64 noundef %60, i64 noundef %65, i64 noundef 1, ptr noundef nonnull %40) #18
  %67 = icmp eq ptr %66, null
  br i1 %67, label %120, label %68

68:                                               ; preds = %64
  %69 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %41) #17
  %70 = load i64, ptr %46, align 8, !tbaa !25
  %71 = icmp sgt i64 %70, 0
  br i1 %71, label %72, label %108

72:                                               ; preds = %68
  %73 = icmp eq ptr %69, null
  br label %74

74:                                               ; preds = %72, %104
  %75 = phi ptr [ %66, %72 ], [ %105, %104 ]
  %76 = phi i64 [ 0, %72 ], [ %106, %104 ]
  br i1 %48, label %81, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct._PixelPacket, ptr %75, i64 0, i32 2
  %79 = load i16, ptr %78, align 2, !tbaa !37
  %80 = tail call fastcc zeroext i16 @PerceptibleThreshold(i16 noundef zeroext %79, double noundef %2) #19
  store i16 %80, ptr %78, align 2, !tbaa !37
  br label %81

81:                                               ; preds = %77, %74
  br i1 %50, label %86, label %82

82:                                               ; preds = %81
  %83 = getelementptr inbounds %struct._PixelPacket, ptr %75, i64 0, i32 1
  %84 = load i16, ptr %83, align 2, !tbaa !38
  %85 = tail call fastcc zeroext i16 @PerceptibleThreshold(i16 noundef zeroext %84, double noundef %2) #19
  store i16 %85, ptr %83, align 2, !tbaa !38
  br label %86

86:                                               ; preds = %82, %81
  br i1 %52, label %90, label %87

87:                                               ; preds = %86
  %88 = load i16, ptr %75, align 2, !tbaa !39
  %89 = tail call fastcc zeroext i16 @PerceptibleThreshold(i16 noundef zeroext %88, double noundef %2) #19
  store i16 %89, ptr %75, align 2, !tbaa !39
  br label %90

90:                                               ; preds = %87, %86
  br i1 %54, label %95, label %91

91:                                               ; preds = %90
  %92 = getelementptr inbounds %struct._PixelPacket, ptr %75, i64 0, i32 3
  %93 = load i16, ptr %92, align 2, !tbaa !41
  %94 = tail call fastcc zeroext i16 @PerceptibleThreshold(i16 noundef zeroext %93, double noundef %2) #19
  store i16 %94, ptr %92, align 2, !tbaa !41
  br label %95

95:                                               ; preds = %91, %90
  br i1 %56, label %104, label %96

96:                                               ; preds = %95
  %97 = load i32, ptr %57, align 4, !tbaa !26
  %98 = icmp ne i32 %97, 12
  %99 = select i1 %98, i1 true, i1 %73
  br i1 %99, label %104, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds i16, ptr %69, i64 %76
  %102 = load i16, ptr %101, align 2, !tbaa !27
  %103 = tail call fastcc zeroext i16 @PerceptibleThreshold(i16 noundef zeroext %102, double noundef %2) #19
  store i16 %103, ptr %101, align 2, !tbaa !27
  br label %104

104:                                              ; preds = %100, %96, %95
  %105 = getelementptr inbounds %struct._PixelPacket, ptr %75, i64 1
  %106 = add nuw nsw i64 %76, 1
  %107 = icmp eq i64 %106, %70
  br i1 %107, label %108, label %74, !llvm.loop !84

108:                                              ; preds = %104, %68
  %109 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %41, ptr noundef nonnull %40) #18
  %110 = icmp ne i32 %109, 0
  %111 = zext i1 %110 to i32
  %112 = load ptr, ptr %58, align 8, !tbaa !33
  %113 = icmp eq ptr %112, null
  br i1 %113, label %120, label %114

114:                                              ; preds = %108
  %115 = add nsw i64 %61, 1
  %116 = load i64, ptr %42, align 8, !tbaa !24
  %117 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.44, i64 noundef %61, i64 noundef %116) #19
  %118 = icmp eq i32 %117, 0
  %119 = select i1 %118, i32 0, i32 %111
  br label %120

120:                                              ; preds = %108, %114, %64, %59
  %121 = phi i32 [ 0, %59 ], [ 0, %64 ], [ %119, %114 ], [ %111, %108 ]
  %122 = phi i64 [ %61, %59 ], [ %61, %64 ], [ %115, %114 ], [ %61, %108 ]
  %123 = add nuw nsw i64 %60, 1
  %124 = load i64, ptr %42, align 8, !tbaa !24
  %125 = icmp slt i64 %123, %124
  br i1 %125, label %59, label %126, !llvm.loop !85

126:                                              ; preds = %120, %39
  %127 = phi i32 [ 1, %39 ], [ %121, %120 ]
  %128 = tail call ptr @DestroyCacheView(ptr noundef %41) #17
  br label %129

129:                                              ; preds = %126, %37
  %130 = phi i32 [ %38, %37 ], [ %127, %126 ]
  ret i32 %130
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i16 @PerceptibleThreshold(i16 noundef zeroext %0, double noundef %1) unnamed_addr #4 {
  %3 = uitofp i16 %0 to double
  %4 = fcmp ult double %3, %1
  %5 = fptoui double %1 to i16
  %6 = select i1 %4, i16 %5, i16 %0
  ret i16 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @RandomThresholdImage(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @RandomThresholdImageChannel(ptr noundef %0, i32 noundef 134217719, ptr noundef %1, ptr noundef %2) #19, !range !36
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @RandomThresholdImageChannel(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct._GeometryInfo, align 8
  %6 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #16
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1928, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #17
  br label %13

13:                                               ; preds = %10, %4
  %14 = icmp eq ptr %2, null
  br i1 %14, label %325, label %15

15:                                               ; preds = %13
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %6) #17
  %16 = call i32 @ParseGeometry(ptr noundef nonnull %2, ptr noundef nonnull %5) #17
  %17 = load double, ptr %5, align 8, !tbaa !44
  %18 = fptrunc double %17 to float
  %19 = getelementptr inbounds %struct._GeometryInfo, ptr %5, i64 0, i32 1
  %20 = load double, ptr %19, align 8, !tbaa !86
  %21 = fptrunc double %20 to float
  %22 = and i32 %16, 8
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, float %18, float %21
  %25 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef 37) #24
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %15
  %28 = fmul float %24, 0x40847ACCC0000000
  %29 = fmul float %18, 0x40847ACCC0000000
  br label %38

30:                                               ; preds = %15
  %31 = fcmp oeq float %24, %18
  %32 = fcmp oeq float %24, 1.000000e+00
  %33 = or i1 %31, %32
  %34 = fcmp ole float %18, 8.000000e+00
  %35 = and i1 %34, %33
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = call i32 @OrderedPosterizeImageChannel(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) #19, !range !36
  br label %325

38:                                               ; preds = %30, %27
  %39 = phi float [ %28, %27 ], [ %24, %30 ]
  %40 = phi float [ %29, %27 ], [ %18, %30 ]
  %41 = icmp eq i32 %1, 47
  br i1 %41, label %42, label %124

42:                                               ; preds = %38
  %43 = call i32 @AcquireImageColormap(ptr noundef nonnull %0, i64 noundef 2) #17
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %47 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %48 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %46, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1965, i32 noundef 400, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.15, ptr noundef nonnull %47) #17
  br label %325

49:                                               ; preds = %42
  %50 = call fastcc ptr @AcquireRandomInfoThreadSet() #19
  %51 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef %3) #17
  %52 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %53 = load i64, ptr %52, align 8, !tbaa !24
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %120

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %57 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 9
  %58 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %59 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %60

60:                                               ; preds = %55, %114
  %61 = phi i32 [ 1, %55 ], [ %116, %114 ]
  %62 = phi i64 [ 0, %55 ], [ %115, %114 ]
  %63 = phi i64 [ 0, %55 ], [ %117, %114 ]
  %64 = icmp eq i32 %61, 0
  br i1 %64, label %114, label %65

65:                                               ; preds = %60
  %66 = load i64, ptr %56, align 8, !tbaa !25
  %67 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %51, i64 noundef 0, i64 noundef %63, i64 noundef %66, i64 noundef 1, ptr noundef %3) #18
  %68 = icmp eq ptr %67, null
  br i1 %68, label %114, label %69

69:                                               ; preds = %65
  %70 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %51) #17
  %71 = load i64, ptr %56, align 8, !tbaa !25
  %72 = icmp sgt i64 %71, 0
  br i1 %72, label %73, label %102

73:                                               ; preds = %69
  %74 = icmp eq ptr %70, null
  br label %75

75:                                               ; preds = %73, %93
  %76 = phi ptr [ %67, %73 ], [ %98, %93 ]
  %77 = phi i64 [ 0, %73 ], [ %99, %93 ]
  %78 = call float @GetPixelIntensity(ptr noundef nonnull %0, ptr noundef nonnull %76) #18
  %79 = fcmp olt float %78, %40
  br i1 %79, label %87, label %80

80:                                               ; preds = %75
  %81 = fcmp ogt float %78, %39
  br i1 %81, label %87, label %82

82:                                               ; preds = %80
  %83 = load ptr, ptr %50, align 8, !tbaa !74
  %84 = call double @GetPseudoRandomValue(ptr noundef %83) #17
  %85 = fmul double %84, 6.553500e+04
  %86 = fptrunc double %85 to float
  br label %87

87:                                               ; preds = %80, %75, %82
  %88 = phi float [ %86, %82 ], [ %40, %75 ], [ %39, %80 ]
  store float %88, ptr %57, align 8, !tbaa !51
  %89 = fcmp ugt float %78, %88
  br i1 %74, label %93, label %90

90:                                               ; preds = %87
  %91 = zext i1 %89 to i16
  %92 = getelementptr inbounds i16, ptr %70, i64 %77
  store i16 %91, ptr %92, align 2, !tbaa !27
  br label %93

93:                                               ; preds = %90, %87
  %94 = load ptr, ptr %58, align 8, !tbaa !59
  %95 = zext i1 %89 to i64
  %96 = getelementptr inbounds %struct._PixelPacket, ptr %94, i64 %95
  %97 = load <4 x i16>, ptr %96, align 2, !tbaa !27
  store <4 x i16> %97, ptr %76, align 2, !tbaa !27
  %98 = getelementptr inbounds %struct._PixelPacket, ptr %76, i64 1
  %99 = add nuw nsw i64 %77, 1
  %100 = load i64, ptr %56, align 8, !tbaa !25
  %101 = icmp slt i64 %99, %100
  br i1 %101, label %75, label %102, !llvm.loop !87

102:                                              ; preds = %93, %69
  %103 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %51, ptr noundef %3) #18
  %104 = icmp ne i32 %103, 0
  %105 = zext i1 %104 to i32
  %106 = load ptr, ptr %59, align 8, !tbaa !33
  %107 = icmp eq ptr %106, null
  br i1 %107, label %114, label %108

108:                                              ; preds = %102
  %109 = add nsw i64 %62, 1
  %110 = load i64, ptr %52, align 8, !tbaa !24
  %111 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.3, i64 noundef %62, i64 noundef %110) #19
  %112 = icmp eq i32 %111, 0
  %113 = select i1 %112, i32 0, i32 %105
  br label %114

114:                                              ; preds = %102, %108, %65, %60
  %115 = phi i64 [ %62, %60 ], [ %62, %65 ], [ %109, %108 ], [ %62, %102 ]
  %116 = phi i32 [ 0, %60 ], [ 0, %65 ], [ %113, %108 ], [ %105, %102 ]
  %117 = add nuw nsw i64 %63, 1
  %118 = load i64, ptr %52, align 8, !tbaa !24
  %119 = icmp slt i64 %117, %118
  br i1 %119, label %60, label %120, !llvm.loop !88

120:                                              ; preds = %114, %49
  %121 = phi i32 [ 1, %49 ], [ %116, %114 ]
  %122 = call ptr @DestroyCacheView(ptr noundef %51) #17
  %123 = call fastcc ptr @DestroyRandomInfoThreadSet(ptr noundef %50) #19
  br label %325

124:                                              ; preds = %38
  %125 = call i32 @SetImageStorageClass(ptr noundef nonnull %0, i32 noundef 1) #17
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %124
  %128 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  call void @InheritException(ptr noundef %3, ptr noundef nonnull %128) #17
  br label %325

129:                                              ; preds = %124
  %130 = call fastcc ptr @AcquireRandomInfoThreadSet() #19
  %131 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef %3) #17
  %132 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %133 = load i64, ptr %132, align 8, !tbaa !24
  %134 = icmp sgt i64 %133, 0
  br i1 %134, label %135, label %321

135:                                              ; preds = %129
  %136 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %137 = and i32 %1, 1
  %138 = icmp eq i32 %137, 0
  %139 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 5
  %140 = and i32 %1, 2
  %141 = icmp eq i32 %140, 0
  %142 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 6
  %143 = and i32 %1, 4
  %144 = icmp eq i32 %143, 0
  %145 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 7
  %146 = and i32 %1, 8
  %147 = icmp eq i32 %146, 0
  %148 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 8
  %149 = and i32 %1, 32
  %150 = icmp eq i32 %149, 0
  %151 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %152 = fcmp ogt float %40, 0.000000e+00
  %153 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 9
  %154 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %155

155:                                              ; preds = %135, %315
  %156 = phi i32 [ 1, %135 ], [ %317, %315 ]
  %157 = phi i64 [ 0, %135 ], [ %316, %315 ]
  %158 = phi i64 [ 0, %135 ], [ %318, %315 ]
  %159 = icmp eq i32 %156, 0
  br i1 %159, label %315, label %160

160:                                              ; preds = %155
  %161 = load i64, ptr %136, align 8, !tbaa !25
  %162 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %131, i64 noundef 0, i64 noundef %158, i64 noundef %161, i64 noundef 1, ptr noundef %3) #18
  %163 = icmp eq ptr %162, null
  br i1 %163, label %315, label %164

164:                                              ; preds = %160
  %165 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %131) #17
  %166 = load i64, ptr %136, align 8, !tbaa !25
  %167 = icmp sgt i64 %166, 0
  br i1 %167, label %168, label %303

168:                                              ; preds = %164
  %169 = icmp eq ptr %165, null
  br label %170

170:                                              ; preds = %168, %298
  %171 = phi i64 [ 0, %168 ], [ %300, %298 ]
  %172 = phi ptr [ %162, %168 ], [ %299, %298 ]
  br i1 %138, label %187, label %173

173:                                              ; preds = %170
  %174 = getelementptr inbounds %struct._PixelPacket, ptr %172, i64 0, i32 2
  %175 = load i16, ptr %174, align 2, !tbaa !37
  %176 = uitofp i16 %175 to float
  %177 = fcmp ogt float %40, %176
  br i1 %177, label %185, label %178

178:                                              ; preds = %173
  %179 = fcmp olt float %39, %176
  br i1 %179, label %185, label %180

180:                                              ; preds = %178
  %181 = load ptr, ptr %130, align 8, !tbaa !74
  %182 = call double @GetPseudoRandomValue(ptr noundef %181) #17
  %183 = fmul double %182, 6.553500e+04
  %184 = fptrunc double %183 to float
  br label %185

185:                                              ; preds = %178, %173, %180
  %186 = phi float [ %184, %180 ], [ %40, %173 ], [ %39, %178 ]
  store float %186, ptr %139, align 8, !tbaa !46
  br label %187

187:                                              ; preds = %185, %170
  br i1 %141, label %202, label %188

188:                                              ; preds = %187
  %189 = getelementptr inbounds %struct._PixelPacket, ptr %172, i64 0, i32 1
  %190 = load i16, ptr %189, align 2, !tbaa !38
  %191 = uitofp i16 %190 to float
  %192 = fcmp ogt float %40, %191
  br i1 %192, label %200, label %193

193:                                              ; preds = %188
  %194 = fcmp olt float %39, %191
  br i1 %194, label %200, label %195

195:                                              ; preds = %193
  %196 = load ptr, ptr %130, align 8, !tbaa !74
  %197 = call double @GetPseudoRandomValue(ptr noundef %196) #17
  %198 = fmul double %197, 6.553500e+04
  %199 = fptrunc double %198 to float
  br label %200

200:                                              ; preds = %193, %188, %195
  %201 = phi float [ %199, %195 ], [ %40, %188 ], [ %39, %193 ]
  store float %201, ptr %142, align 4, !tbaa !55
  br label %202

202:                                              ; preds = %200, %187
  br i1 %144, label %216, label %203

203:                                              ; preds = %202
  %204 = load i16, ptr %172, align 2, !tbaa !39
  %205 = uitofp i16 %204 to float
  %206 = fcmp ogt float %40, %205
  br i1 %206, label %214, label %207

207:                                              ; preds = %203
  %208 = fcmp olt float %39, %205
  br i1 %208, label %214, label %209

209:                                              ; preds = %207
  %210 = load ptr, ptr %130, align 8, !tbaa !74
  %211 = call double @GetPseudoRandomValue(ptr noundef %210) #17
  %212 = fmul double %211, 6.553500e+04
  %213 = fptrunc double %212 to float
  br label %214

214:                                              ; preds = %207, %203, %209
  %215 = phi float [ %213, %209 ], [ %40, %203 ], [ %39, %207 ]
  store float %215, ptr %145, align 8, !tbaa !56
  br label %216

216:                                              ; preds = %214, %202
  br i1 %147, label %231, label %217

217:                                              ; preds = %216
  %218 = getelementptr inbounds %struct._PixelPacket, ptr %172, i64 0, i32 3
  %219 = load i16, ptr %218, align 2, !tbaa !41
  %220 = uitofp i16 %219 to float
  %221 = fcmp ogt float %40, %220
  br i1 %221, label %229, label %222

222:                                              ; preds = %217
  %223 = fcmp olt float %39, %220
  br i1 %223, label %229, label %224

224:                                              ; preds = %222
  %225 = load ptr, ptr %130, align 8, !tbaa !74
  %226 = call double @GetPseudoRandomValue(ptr noundef %225) #17
  %227 = fmul double %226, 6.553500e+04
  %228 = fptrunc double %227 to float
  br label %229

229:                                              ; preds = %222, %217, %224
  %230 = phi float [ %228, %224 ], [ %40, %217 ], [ %39, %222 ]
  store float %230, ptr %148, align 4, !tbaa !89
  br label %231

231:                                              ; preds = %229, %216
  br i1 %150, label %255, label %232

232:                                              ; preds = %231
  %233 = load i32, ptr %151, align 4, !tbaa !26
  %234 = icmp eq i32 %233, 12
  br i1 %234, label %235, label %255

235:                                              ; preds = %232
  br i1 %169, label %236, label %237

236:                                              ; preds = %235
  br i1 %152, label %253, label %244

237:                                              ; preds = %235
  %238 = getelementptr inbounds i16, ptr %165, i64 %171
  %239 = load i16, ptr %238, align 2, !tbaa !27
  %240 = uitofp i16 %239 to float
  %241 = fcmp ogt float %40, %240
  br i1 %241, label %253, label %242

242:                                              ; preds = %237
  %243 = zext i16 %239 to i32
  br label %244

244:                                              ; preds = %236, %242
  %245 = phi i32 [ %243, %242 ], [ 0, %236 ]
  %246 = sitofp i32 %245 to float
  %247 = fcmp olt float %39, %246
  br i1 %247, label %253, label %248

248:                                              ; preds = %244
  %249 = load ptr, ptr %130, align 8, !tbaa !74
  %250 = call double @GetPseudoRandomValue(ptr noundef %249) #17
  %251 = fmul double %250, 6.553500e+04
  %252 = fptrunc double %251 to float
  br label %253

253:                                              ; preds = %244, %236, %237, %248
  %254 = phi float [ %252, %248 ], [ %40, %237 ], [ %40, %236 ], [ %39, %244 ]
  store float %254, ptr %153, align 8, !tbaa !51
  br label %255

255:                                              ; preds = %253, %232, %231
  br i1 %138, label %263, label %256

256:                                              ; preds = %255
  %257 = getelementptr inbounds %struct._PixelPacket, ptr %172, i64 0, i32 2
  %258 = load i16, ptr %257, align 2, !tbaa !37
  %259 = uitofp i16 %258 to float
  %260 = load float, ptr %139, align 8, !tbaa !46
  %261 = fcmp ult float %260, %259
  %262 = sext i1 %261 to i16
  store i16 %262, ptr %257, align 2, !tbaa !37
  br label %263

263:                                              ; preds = %256, %255
  br i1 %141, label %271, label %264

264:                                              ; preds = %263
  %265 = getelementptr inbounds %struct._PixelPacket, ptr %172, i64 0, i32 1
  %266 = load i16, ptr %265, align 2, !tbaa !38
  %267 = uitofp i16 %266 to float
  %268 = load float, ptr %142, align 4, !tbaa !55
  %269 = fcmp ult float %268, %267
  %270 = sext i1 %269 to i16
  store i16 %270, ptr %265, align 2, !tbaa !38
  br label %271

271:                                              ; preds = %264, %263
  br i1 %144, label %278, label %272

272:                                              ; preds = %271
  %273 = load i16, ptr %172, align 2, !tbaa !39
  %274 = uitofp i16 %273 to float
  %275 = load float, ptr %145, align 8, !tbaa !56
  %276 = fcmp ult float %275, %274
  %277 = sext i1 %276 to i16
  store i16 %277, ptr %172, align 2, !tbaa !39
  br label %278

278:                                              ; preds = %272, %271
  br i1 %147, label %286, label %279

279:                                              ; preds = %278
  %280 = getelementptr inbounds %struct._PixelPacket, ptr %172, i64 0, i32 3
  %281 = load i16, ptr %280, align 2, !tbaa !41
  %282 = uitofp i16 %281 to float
  %283 = load float, ptr %148, align 4, !tbaa !89
  %284 = fcmp ult float %283, %282
  %285 = sext i1 %284 to i16
  store i16 %285, ptr %280, align 2, !tbaa !41
  br label %286

286:                                              ; preds = %279, %278
  br i1 %150, label %298, label %287

287:                                              ; preds = %286
  %288 = load i32, ptr %151, align 4, !tbaa !26
  %289 = icmp ne i32 %288, 12
  %290 = select i1 %289, i1 true, i1 %169
  br i1 %290, label %298, label %291

291:                                              ; preds = %287
  %292 = getelementptr inbounds i16, ptr %165, i64 %171
  %293 = load i16, ptr %292, align 2, !tbaa !27
  %294 = uitofp i16 %293 to float
  %295 = load float, ptr %153, align 8, !tbaa !51
  %296 = fcmp ult float %295, %294
  %297 = sext i1 %296 to i16
  store i16 %297, ptr %292, align 2, !tbaa !27
  br label %298

298:                                              ; preds = %291, %287, %286
  %299 = getelementptr inbounds %struct._PixelPacket, ptr %172, i64 1
  %300 = add nuw nsw i64 %171, 1
  %301 = load i64, ptr %136, align 8, !tbaa !25
  %302 = icmp slt i64 %300, %301
  br i1 %302, label %170, label %303, !llvm.loop !90

303:                                              ; preds = %298, %164
  %304 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %131, ptr noundef %3) #18
  %305 = icmp ne i32 %304, 0
  %306 = zext i1 %305 to i32
  %307 = load ptr, ptr %154, align 8, !tbaa !33
  %308 = icmp eq ptr %307, null
  br i1 %308, label %315, label %309

309:                                              ; preds = %303
  %310 = add nsw i64 %157, 1
  %311 = load i64, ptr %132, align 8, !tbaa !24
  %312 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.3, i64 noundef %157, i64 noundef %311) #19
  %313 = icmp eq i32 %312, 0
  %314 = select i1 %313, i32 0, i32 %306
  br label %315

315:                                              ; preds = %303, %309, %160, %155
  %316 = phi i64 [ %157, %155 ], [ %157, %160 ], [ %310, %309 ], [ %157, %303 ]
  %317 = phi i32 [ 0, %155 ], [ 0, %160 ], [ %314, %309 ], [ %306, %303 ]
  %318 = add nuw nsw i64 %158, 1
  %319 = load i64, ptr %132, align 8, !tbaa !24
  %320 = icmp slt i64 %318, %319
  br i1 %320, label %155, label %321, !llvm.loop !91

321:                                              ; preds = %315, %129
  %322 = phi i32 [ 1, %129 ], [ %317, %315 ]
  %323 = call ptr @DestroyCacheView(ptr noundef %131) #17
  %324 = call fastcc ptr @DestroyRandomInfoThreadSet(ptr noundef %130) #19
  br label %325

325:                                              ; preds = %45, %13, %321, %127, %120, %36
  %326 = phi i32 [ %121, %120 ], [ 0, %127 ], [ %322, %321 ], [ %37, %36 ], [ 1, %13 ], [ 0, %45 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #16
  ret i32 %326
}

; Function Attrs: optsize
declare i32 @AcquireImageColormap(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @AcquireRandomInfoThreadSet() unnamed_addr #0 {
  %1 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #17
  %2 = tail call ptr @AcquireAlignedMemory(i64 noundef %1, i64 noundef 8) #23
  %3 = icmp eq ptr %2, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %0
  %5 = shl i64 %1, 3
  %6 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %2, i32 noundef 0, i64 noundef %5) #17
  %7 = icmp sgt i64 %1, 0
  br i1 %7, label %11, label %18

8:                                                ; preds = %11
  %9 = add nuw nsw i64 %12, 1
  %10 = icmp eq i64 %9, %1
  br i1 %10, label %18, label %11, !llvm.loop !92

11:                                               ; preds = %4, %8
  %12 = phi i64 [ %9, %8 ], [ 0, %4 ]
  %13 = tail call ptr @AcquireRandomInfo() #17
  %14 = getelementptr inbounds ptr, ptr %2, i64 %12
  store ptr %13, ptr %14, align 8, !tbaa !74
  %15 = icmp eq ptr %13, null
  br i1 %15, label %16, label %8

16:                                               ; preds = %11
  %17 = tail call fastcc ptr @DestroyRandomInfoThreadSet(ptr noundef nonnull %2) #19
  br label %18

18:                                               ; preds = %8, %4, %0, %16
  %19 = phi ptr [ %17, %16 ], [ null, %0 ], [ %2, %4 ], [ %2, %8 ]
  ret ptr %19
}

; Function Attrs: optsize
declare double @GetPseudoRandomValue(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @DestroyRandomInfoThreadSet(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #17
  %3 = icmp sgt i64 %2, 0
  br i1 %3, label %4, label %15

4:                                                ; preds = %1, %11
  %5 = phi i64 [ %12, %11 ], [ 0, %1 ]
  %6 = getelementptr inbounds ptr, ptr %0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !74
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = tail call ptr @DestroyRandomInfo(ptr noundef nonnull %7) #17
  store ptr %10, ptr %6, align 8, !tbaa !74
  br label %11

11:                                               ; preds = %4, %9
  %12 = add nuw nsw i64 %5, 1
  %13 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #17
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %4, label %15, !llvm.loop !93

15:                                               ; preds = %11, %1
  %16 = tail call ptr @RelinquishAlignedMemory(ptr noundef %0) #17
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @WhiteThresholdImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %4 = tail call i32 @WhiteThresholdImageChannel(ptr noundef %0, i32 noundef 134217719, ptr noundef %1, ptr noundef nonnull %3) #19, !range !36
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @WhiteThresholdImageChannel(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct._GeometryInfo, align 8
  %6 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #16
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2251, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #17
  br label %13

13:                                               ; preds = %10, %4
  %14 = icmp eq ptr %2, null
  br i1 %14, label %168, label %15

15:                                               ; preds = %13
  %16 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %0, i32 noundef 1) #17
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %168, label %18

18:                                               ; preds = %15
  %19 = call i32 @ParseGeometry(ptr noundef nonnull %2, ptr noundef nonnull %5) #17
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %6) #17
  %20 = load double, ptr %5, align 8, !tbaa !44
  %21 = fptrunc double %20 to float
  %22 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 5
  store float %21, ptr %22, align 8, !tbaa !46
  %23 = getelementptr inbounds %struct._GeometryInfo, ptr %5, i64 0, i32 1
  %24 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 6
  %25 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 7
  %26 = load <2 x double>, ptr %23, align 8, !tbaa !49
  %27 = fptrunc <2 x double> %26 to <2 x float>
  %28 = insertelement <2 x i32> poison, i32 %19, i64 0
  %29 = shufflevector <2 x i32> %28, <2 x i32> poison, <2 x i32> zeroinitializer
  %30 = and <2 x i32> %29, <i32 8, i32 1>
  %31 = icmp eq <2 x i32> %30, zeroinitializer
  %32 = insertelement <2 x float> poison, float %21, i64 0
  %33 = shufflevector <2 x float> %32, <2 x float> poison, <2 x i32> zeroinitializer
  %34 = select <2 x i1> %31, <2 x float> %33, <2 x float> %27
  store <2 x float> %34, ptr %24, align 4
  %35 = getelementptr inbounds %struct._GeometryInfo, ptr %5, i64 0, i32 3
  %36 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 8
  %37 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 9
  %38 = load <2 x double>, ptr %35, align 8, !tbaa !49
  %39 = fptrunc <2 x double> %38 to <2 x float>
  %40 = and <2 x i32> %29, <i32 2, i32 16>
  %41 = icmp eq <2 x i32> %40, zeroinitializer
  %42 = select <2 x i1> %41, <2 x float> %33, <2 x float> %39
  store <2 x float> %42, ptr %36, align 4
  %43 = and i32 %19, 4096
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %18
  %46 = insertelement <4 x float> poison, float %21, i64 0
  %47 = shufflevector <2 x float> %34, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %48 = shufflevector <4 x float> %46, <4 x float> %47, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %49 = shufflevector <2 x float> %42, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %50 = shufflevector <4 x float> %48, <4 x float> %49, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %51 = fmul <4 x float> %50, <float 0x40847ACCC0000000, float 0x40847ACCC0000000, float 0x40847ACCC0000000, float 0x40847ACCC0000000>
  store <4 x float> %51, ptr %22, align 8, !tbaa !50
  %52 = extractelement <2 x float> %42, i64 1
  %53 = fmul float %52, 0x40847ACCC0000000
  store float %53, ptr %37, align 8, !tbaa !51
  br label %54

54:                                               ; preds = %45, %18
  %55 = call fastcc i32 @IsMagickGray(ptr noundef nonnull %6) #19, !range !36
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %59 = load i32, ptr %58, align 4, !tbaa !26
  %60 = call fastcc i32 @IsGrayColorspace(i32 noundef %59) #19, !range !36
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %57
  %63 = call i32 @SetImageColorspace(ptr noundef nonnull %0, i32 noundef 13) #17
  br label %64

64:                                               ; preds = %62, %57, %54
  %65 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef %3) #17
  %66 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %67 = load i64, ptr %66, align 8, !tbaa !24
  %68 = icmp sgt i64 %67, 0
  br i1 %68, label %69, label %165

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %71 = and i32 %1, 1
  %72 = icmp eq i32 %71, 0
  %73 = and i32 %1, 2
  %74 = icmp eq i32 %73, 0
  %75 = and i32 %1, 4
  %76 = icmp eq i32 %75, 0
  %77 = and i32 %1, 8
  %78 = icmp eq i32 %77, 0
  %79 = and i32 %1, 32
  %80 = icmp eq i32 %79, 0
  %81 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %82 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %83

83:                                               ; preds = %69, %159
  %84 = phi i64 [ 0, %69 ], [ %162, %159 ]
  %85 = phi i32 [ 1, %69 ], [ %161, %159 ]
  %86 = phi i64 [ 0, %69 ], [ %160, %159 ]
  %87 = icmp eq i32 %85, 0
  br i1 %87, label %159, label %88

88:                                               ; preds = %83
  %89 = load i64, ptr %70, align 8, !tbaa !25
  %90 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %65, i64 noundef 0, i64 noundef %84, i64 noundef %89, i64 noundef 1, ptr noundef %3) #18
  %91 = icmp eq ptr %90, null
  br i1 %91, label %159, label %92

92:                                               ; preds = %88
  %93 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %65) #17
  %94 = load i64, ptr %70, align 8, !tbaa !25
  %95 = icmp sgt i64 %94, 0
  br i1 %95, label %96, label %147

96:                                               ; preds = %92
  %97 = load float, ptr %22, align 8
  %98 = load float, ptr %24, align 4
  %99 = load float, ptr %25, align 8
  %100 = load float, ptr %36, align 4
  %101 = icmp eq ptr %93, null
  %102 = load float, ptr %37, align 8
  br label %103

103:                                              ; preds = %96, %143
  %104 = phi ptr [ %90, %96 ], [ %144, %143 ]
  %105 = phi i64 [ 0, %96 ], [ %145, %143 ]
  br i1 %72, label %112, label %106

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct._PixelPacket, ptr %104, i64 0, i32 2
  %108 = load i16, ptr %107, align 2, !tbaa !37
  %109 = uitofp i16 %108 to float
  %110 = fcmp olt float %97, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  store i16 -1, ptr %107, align 2, !tbaa !37
  br label %112

112:                                              ; preds = %111, %106, %103
  br i1 %74, label %119, label %113

113:                                              ; preds = %112
  %114 = getelementptr inbounds %struct._PixelPacket, ptr %104, i64 0, i32 1
  %115 = load i16, ptr %114, align 2, !tbaa !38
  %116 = uitofp i16 %115 to float
  %117 = fcmp olt float %98, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  store i16 -1, ptr %114, align 2, !tbaa !38
  br label %119

119:                                              ; preds = %118, %113, %112
  br i1 %76, label %125, label %120

120:                                              ; preds = %119
  %121 = load i16, ptr %104, align 2, !tbaa !39
  %122 = uitofp i16 %121 to float
  %123 = fcmp olt float %99, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %120
  store i16 -1, ptr %104, align 2, !tbaa !39
  br label %125

125:                                              ; preds = %124, %120, %119
  br i1 %78, label %132, label %126

126:                                              ; preds = %125
  %127 = getelementptr inbounds %struct._PixelPacket, ptr %104, i64 0, i32 3
  %128 = load i16, ptr %127, align 2, !tbaa !41
  %129 = uitofp i16 %128 to float
  %130 = fcmp olt float %100, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %126
  store i16 -1, ptr %127, align 2, !tbaa !41
  br label %132

132:                                              ; preds = %131, %126, %125
  br i1 %80, label %143, label %133

133:                                              ; preds = %132
  %134 = load i32, ptr %81, align 4, !tbaa !26
  %135 = icmp eq i32 %134, 12
  br i1 %135, label %136, label %143

136:                                              ; preds = %133
  %137 = getelementptr inbounds i16, ptr %93, i64 %105
  br i1 %101, label %143, label %138

138:                                              ; preds = %136
  %139 = load i16, ptr %137, align 2, !tbaa !27
  %140 = uitofp i16 %139 to float
  %141 = fcmp uge float %102, %140
  br i1 %141, label %143, label %142

142:                                              ; preds = %138
  store i16 -1, ptr %137, align 2, !tbaa !27
  br label %143

143:                                              ; preds = %136, %142, %138, %133, %132
  %144 = getelementptr inbounds %struct._PixelPacket, ptr %104, i64 1
  %145 = add nuw nsw i64 %105, 1
  %146 = icmp eq i64 %145, %94
  br i1 %146, label %147, label %103, !llvm.loop !94

147:                                              ; preds = %143, %92
  %148 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %65, ptr noundef %3) #18
  %149 = icmp ne i32 %148, 0
  %150 = zext i1 %149 to i32
  %151 = load ptr, ptr %82, align 8, !tbaa !33
  %152 = icmp eq ptr %151, null
  br i1 %152, label %159, label %153

153:                                              ; preds = %147
  %154 = add nsw i64 %86, 1
  %155 = load i64, ptr %66, align 8, !tbaa !24
  %156 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.3, i64 noundef %86, i64 noundef %155) #19
  %157 = icmp eq i32 %156, 0
  %158 = select i1 %157, i32 0, i32 %150
  br label %159

159:                                              ; preds = %147, %153, %88, %83
  %160 = phi i64 [ %86, %83 ], [ %86, %88 ], [ %154, %153 ], [ %86, %147 ]
  %161 = phi i32 [ 0, %83 ], [ 0, %88 ], [ %158, %153 ], [ %150, %147 ]
  %162 = add nuw nsw i64 %84, 1
  %163 = load i64, ptr %66, align 8, !tbaa !24
  %164 = icmp slt i64 %162, %163
  br i1 %164, label %83, label %165, !llvm.loop !95

165:                                              ; preds = %159, %64
  %166 = phi i32 [ 1, %64 ], [ %161, %159 ]
  %167 = call ptr @DestroyCacheView(ptr noundef %65) #17
  br label %168

168:                                              ; preds = %15, %13, %165
  %169 = phi i32 [ %166, %165 ], [ 1, %13 ], [ 0, %15 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #16
  ret i32 %169
}

; Function Attrs: optsize
declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @GetMagickResourceLimit(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireAlignedMemory(i64 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @AcquireRandomInfo() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyRandomInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RelinquishAlignedMemory(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { hot optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { optsize allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { nounwind }
attributes #17 = { nounwind optsize }
attributes #18 = { hot nounwind optsize }
attributes #19 = { optsize }
attributes #20 = { nounwind optsize allocsize(0) }
attributes #21 = { nounwind optsize willreturn memory(none) }
attributes #22 = { noreturn nounwind optsize }
attributes #23 = { nounwind optsize allocsize(0,1) }
attributes #24 = { nounwind optsize willreturn memory(read) }

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
!24 = !{!6, !10, i64 48}
!25 = !{!6, !10, i64 40}
!26 = !{!6, !7, i64 4}
!27 = !{!13, !13, i64 0}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.mustprogress"}
!30 = distinct !{!30, !29}
!31 = distinct !{!31, !29}
!32 = distinct !{!32, !29}
!33 = !{!6, !11, i64 568}
!34 = distinct !{!34, !29}
!35 = !{!6, !11, i64 576}
!36 = !{i32 0, i32 2}
!37 = !{!12, !13, i64 4}
!38 = !{!12, !13, i64 2}
!39 = !{!12, !13, i64 0}
!40 = distinct !{!40, !29}
!41 = !{!12, !13, i64 6}
!42 = distinct !{!42, !29}
!43 = distinct !{!43, !29}
!44 = !{!45, !14, i64 0}
!45 = !{!"_GeometryInfo", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32}
!46 = !{!47, !48, i64 32}
!47 = !{!"_MagickPixelPacket", !7, i64 0, !7, i64 4, !7, i64 8, !14, i64 16, !10, i64 24, !48, i64 32, !48, i64 36, !48, i64 40, !48, i64 44, !48, i64 48}
!48 = !{!"float", !8, i64 0}
!49 = !{!14, !14, i64 0}
!50 = !{!48, !48, i64 0}
!51 = !{!47, !48, i64 48}
!52 = distinct !{!52, !29}
!53 = distinct !{!53, !29}
!54 = !{!47, !7, i64 4}
!55 = !{!47, !48, i64 36}
!56 = !{!47, !48, i64 40}
!57 = !{!6, !7, i64 0}
!58 = !{!6, !10, i64 64}
!59 = !{!6, !11, i64 72}
!60 = distinct !{!60, !29}
!61 = distinct !{!61, !29}
!62 = distinct !{!62, !29}
!63 = !{!64, !11, i64 0}
!64 = !{!"_ThresholdMap", !11, i64 0, !11, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !11, i64 40}
!65 = !{!64, !11, i64 8}
!66 = !{!64, !11, i64 40}
!67 = distinct !{!67, !29}
!68 = !{!7, !7, i64 0}
!69 = !{!64, !10, i64 16}
!70 = !{!64, !10, i64 24}
!71 = !{!64, !10, i64 32}
!72 = distinct !{!72, !29}
!73 = !{!10, !10, i64 0}
!74 = !{!11, !11, i64 0}
!75 = distinct !{!75, !29}
!76 = distinct !{!76, !29}
!77 = distinct !{!77, !29}
!78 = !{!8, !8, i64 0}
!79 = distinct !{!79, !29}
!80 = distinct !{!80, !29}
!81 = distinct !{!81, !29}
!82 = distinct !{!82, !29}
!83 = distinct !{!83, !29}
!84 = distinct !{!84, !29}
!85 = distinct !{!85, !29}
!86 = !{!45, !14, i64 8}
!87 = distinct !{!87, !29}
!88 = distinct !{!88, !29}
!89 = !{!47, !48, i64 44}
!90 = distinct !{!90, !29}
!91 = distinct !{!91, !29}
!92 = distinct !{!92, !29}
!93 = distinct !{!93, !29}
!94 = distinct !{!94, !29}
!95 = distinct !{!95, !29}
