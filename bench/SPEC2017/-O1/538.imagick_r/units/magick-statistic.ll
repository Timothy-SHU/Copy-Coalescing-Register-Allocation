; ModuleID = 'magick/statistic.c'
source_filename = "magick/statistic.c"
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
%struct._ChannelStatistics = type { i64, double, double, double, double, double, double, double, double, double, double, double }
%struct._PointInfo = type { double, double }
%struct._ChannelMoments = type { [32 x double], %struct._PointInfo, %struct._PointInfo, double, double, double }
%struct._ChannelPerceptualHash = type { [32 x double], [32 x double] }
%struct._PixelList = type { i64, i64, i64, [5 x %struct._SkipList] }
%struct._SkipList = type { i64, ptr }
%struct._ListNode = type { [9 x i64], i64, i64 }

@.str = private unnamed_addr constant [19 x i8] c"magick/statistic.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Evaluate/Image\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"Function/Image \00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"Polynomial/Image\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"Statistic/Image\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @EvaluateImage(ptr noundef %0, i32 noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @EvaluateImageChannel(ptr noundef %0, i32 noundef 47, i32 noundef %1, double noundef %2, ptr noundef %3), !range !34
  ret i32 %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @EvaluateImageChannel(ptr noundef %0, i32 noundef %1, i32 noundef %2, double noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca [4096 x i8], align 16
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !35
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 773, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #13
  br label %13

13:                                               ; preds = %10, %5
  %14 = tail call i32 @SetImageStorageClass(ptr noundef %0, i32 noundef 1) #13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  tail call void @InheritException(ptr noundef %4, ptr noundef nonnull %17) #13
  br label %224

18:                                               ; preds = %13
  %19 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #13
  %20 = tail call ptr @AcquireAlignedMemory(i64 noundef %19, i64 noundef 8) #14
  %21 = icmp eq ptr %20, null
  br i1 %21, label %50, label %22

22:                                               ; preds = %18
  %23 = shl i64 %19, 3
  %24 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %20, i32 noundef 0, i64 noundef %23) #13
  %25 = icmp sgt i64 %19, 0
  br i1 %25, label %29, label %50

26:                                               ; preds = %29
  %27 = add nuw nsw i64 %30, 1
  %28 = icmp eq i64 %27, %19
  br i1 %28, label %50, label %29, !llvm.loop !54

29:                                               ; preds = %22, %26
  %30 = phi i64 [ %27, %26 ], [ 0, %22 ]
  %31 = tail call ptr @AcquireRandomInfo() #13
  %32 = getelementptr inbounds ptr, ptr %20, i64 %30
  store ptr %31, ptr %32, align 8, !tbaa !57
  %33 = icmp eq ptr %31, null
  br i1 %33, label %34, label %26

34:                                               ; preds = %29
  %35 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #13
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %34, %44
  %38 = phi i64 [ %45, %44 ], [ 0, %34 ]
  %39 = getelementptr inbounds ptr, ptr %20, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !57
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %37
  %43 = tail call ptr @DestroyRandomInfo(ptr noundef nonnull %40) #13
  store ptr %43, ptr %39, align 8, !tbaa !57
  br label %44

44:                                               ; preds = %42, %37
  %45 = add nuw nsw i64 %38, 1
  %46 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #13
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %37, label %48, !llvm.loop !58

48:                                               ; preds = %44, %34
  %49 = tail call ptr @RelinquishAlignedMemory(ptr noundef nonnull %20) #13
  br label %50

50:                                               ; preds = %26, %22, %18, %48
  %51 = phi ptr [ %49, %48 ], [ null, %18 ], [ %20, %22 ], [ %20, %26 ]
  %52 = tail call ptr @AcquireAuthenticCacheView(ptr noundef %0, ptr noundef %4) #13
  %53 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %54 = load i64, ptr %53, align 8, !tbaa !59
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %206

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %58 = and i32 %1, 1
  %59 = icmp eq i32 %58, 0
  %60 = fptrunc double %3 to float
  %61 = and i32 %1, 2
  %62 = icmp eq i32 %61, 0
  %63 = fptrunc double %3 to float
  %64 = and i32 %1, 4
  %65 = icmp eq i32 %64, 0
  %66 = fptrunc double %3 to float
  %67 = and i32 %1, 8
  %68 = icmp eq i32 %67, 0
  %69 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %70 = fptrunc double %3 to float
  %71 = fptrunc double %3 to float
  %72 = and i32 %1, 32
  %73 = icmp ne i32 %72, 0
  %74 = fptrunc double %3 to float
  %75 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %76 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %77 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %78

78:                                               ; preds = %56, %200
  %79 = phi i32 [ 1, %56 ], [ %202, %200 ]
  %80 = phi i64 [ 0, %56 ], [ %203, %200 ]
  %81 = phi i64 [ 0, %56 ], [ %201, %200 ]
  %82 = icmp eq i32 %79, 0
  br i1 %82, label %200, label %83

83:                                               ; preds = %78
  %84 = load i64, ptr %57, align 8, !tbaa !60
  %85 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %52, i64 noundef 0, i64 noundef %80, i64 noundef %84, i64 noundef 1, ptr noundef %4) #15
  %86 = icmp eq ptr %85, null
  br i1 %86, label %200, label %87

87:                                               ; preds = %83
  %88 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %52) #13
  %89 = load i64, ptr %57, align 8, !tbaa !60
  %90 = icmp sgt i64 %89, 0
  br i1 %90, label %91, label %185

91:                                               ; preds = %87
  %92 = icmp ne ptr %88, null
  %93 = select i1 %73, i1 %92, i1 false
  br label %94

94:                                               ; preds = %91, %180
  %95 = phi i64 [ 0, %91 ], [ %182, %180 ]
  %96 = phi ptr [ %85, %91 ], [ %181, %180 ]
  br i1 %59, label %110, label %97

97:                                               ; preds = %94
  %98 = load ptr, ptr %51, align 8, !tbaa !57
  %99 = getelementptr inbounds %struct._PixelPacket, ptr %96, i64 0, i32 2
  %100 = load i16, ptr %99, align 2, !tbaa !61
  %101 = call fastcc float @ApplyEvaluateOperator(ptr noundef %98, i16 noundef zeroext %100, i32 noundef %2, float noundef %60)
  %102 = fcmp ugt float %101, 0.000000e+00
  br i1 %102, label %103, label %108

103:                                              ; preds = %97
  %104 = fcmp ult float %101, 6.553500e+04
  br i1 %104, label %105, label %108

105:                                              ; preds = %103
  %106 = fadd float %101, 5.000000e-01
  %107 = fptoui float %106 to i16
  br label %108

108:                                              ; preds = %97, %103, %105
  %109 = phi i16 [ %107, %105 ], [ 0, %97 ], [ -1, %103 ]
  store i16 %109, ptr %99, align 2, !tbaa !61
  br label %110

110:                                              ; preds = %108, %94
  br i1 %62, label %124, label %111

111:                                              ; preds = %110
  %112 = load ptr, ptr %51, align 8, !tbaa !57
  %113 = getelementptr inbounds %struct._PixelPacket, ptr %96, i64 0, i32 1
  %114 = load i16, ptr %113, align 2, !tbaa !62
  %115 = call fastcc float @ApplyEvaluateOperator(ptr noundef %112, i16 noundef zeroext %114, i32 noundef %2, float noundef %63)
  %116 = fcmp ugt float %115, 0.000000e+00
  br i1 %116, label %117, label %122

117:                                              ; preds = %111
  %118 = fcmp ult float %115, 6.553500e+04
  br i1 %118, label %119, label %122

119:                                              ; preds = %117
  %120 = fadd float %115, 5.000000e-01
  %121 = fptoui float %120 to i16
  br label %122

122:                                              ; preds = %111, %117, %119
  %123 = phi i16 [ %121, %119 ], [ 0, %111 ], [ -1, %117 ]
  store i16 %123, ptr %113, align 2, !tbaa !62
  br label %124

124:                                              ; preds = %122, %110
  br i1 %65, label %137, label %125

125:                                              ; preds = %124
  %126 = load ptr, ptr %51, align 8, !tbaa !57
  %127 = load i16, ptr %96, align 2, !tbaa !63
  %128 = call fastcc float @ApplyEvaluateOperator(ptr noundef %126, i16 noundef zeroext %127, i32 noundef %2, float noundef %66)
  %129 = fcmp ugt float %128, 0.000000e+00
  br i1 %129, label %130, label %135

130:                                              ; preds = %125
  %131 = fcmp ult float %128, 6.553500e+04
  br i1 %131, label %132, label %135

132:                                              ; preds = %130
  %133 = fadd float %128, 5.000000e-01
  %134 = fptoui float %133 to i16
  br label %135

135:                                              ; preds = %125, %130, %132
  %136 = phi i16 [ %134, %132 ], [ 0, %125 ], [ -1, %130 ]
  store i16 %136, ptr %96, align 2, !tbaa !63
  br label %137

137:                                              ; preds = %135, %124
  br i1 %68, label %166, label %138

138:                                              ; preds = %137
  %139 = load i32, ptr %69, align 8, !tbaa !64
  %140 = icmp eq i32 %139, 0
  %141 = load ptr, ptr %51, align 8, !tbaa !57
  %142 = getelementptr inbounds %struct._PixelPacket, ptr %96, i64 0, i32 3
  %143 = load i16, ptr %142, align 2, !tbaa !65
  br i1 %140, label %144, label %152

144:                                              ; preds = %138
  %145 = call fastcc float @ApplyEvaluateOperator(ptr noundef %141, i16 noundef zeroext %143, i32 noundef %2, float noundef %71)
  %146 = fcmp ugt float %145, 0.000000e+00
  br i1 %146, label %147, label %164

147:                                              ; preds = %144
  %148 = fcmp ult float %145, 6.553500e+04
  br i1 %148, label %149, label %164

149:                                              ; preds = %147
  %150 = fadd float %145, 5.000000e-01
  %151 = fptoui float %150 to i16
  br label %164

152:                                              ; preds = %138
  %153 = xor i16 %143, -1
  %154 = call fastcc float @ApplyEvaluateOperator(ptr noundef %141, i16 noundef zeroext %153, i32 noundef %2, float noundef %70)
  %155 = fcmp ugt float %154, 0.000000e+00
  br i1 %155, label %156, label %161

156:                                              ; preds = %152
  %157 = fcmp ult float %154, 6.553500e+04
  br i1 %157, label %158, label %161

158:                                              ; preds = %156
  %159 = fadd float %154, 5.000000e-01
  %160 = fptoui float %159 to i16
  br label %161

161:                                              ; preds = %152, %156, %158
  %162 = phi i16 [ %160, %158 ], [ 0, %152 ], [ -1, %156 ]
  %163 = xor i16 %162, -1
  br label %164

164:                                              ; preds = %149, %147, %144, %161
  %165 = phi i16 [ %163, %161 ], [ %151, %149 ], [ 0, %144 ], [ -1, %147 ]
  store i16 %165, ptr %142, align 2, !tbaa !65
  br label %166

166:                                              ; preds = %164, %137
  br i1 %93, label %167, label %180

167:                                              ; preds = %166
  %168 = getelementptr inbounds i16, ptr %88, i64 %95
  %169 = load ptr, ptr %51, align 8, !tbaa !57
  %170 = load i16, ptr %168, align 2, !tbaa !66
  %171 = call fastcc float @ApplyEvaluateOperator(ptr noundef %169, i16 noundef zeroext %170, i32 noundef %2, float noundef %74)
  %172 = fcmp ugt float %171, 0.000000e+00
  br i1 %172, label %173, label %178

173:                                              ; preds = %167
  %174 = fcmp ult float %171, 6.553500e+04
  br i1 %174, label %175, label %178

175:                                              ; preds = %173
  %176 = fadd float %171, 5.000000e-01
  %177 = fptoui float %176 to i16
  br label %178

178:                                              ; preds = %167, %173, %175
  %179 = phi i16 [ %177, %175 ], [ 0, %167 ], [ -1, %173 ]
  store i16 %179, ptr %168, align 2, !tbaa !66
  br label %180

180:                                              ; preds = %178, %166
  %181 = getelementptr inbounds %struct._PixelPacket, ptr %96, i64 1
  %182 = add nuw nsw i64 %95, 1
  %183 = load i64, ptr %57, align 8, !tbaa !60
  %184 = icmp slt i64 %182, %183
  br i1 %184, label %94, label %185, !llvm.loop !67

185:                                              ; preds = %180, %87
  %186 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %52, ptr noundef %4) #15
  %187 = icmp ne i32 %186, 0
  %188 = zext i1 %187 to i32
  %189 = load ptr, ptr %75, align 8, !tbaa !68
  %190 = icmp eq ptr %189, null
  br i1 %190, label %200, label %191

191:                                              ; preds = %185
  %192 = add nsw i64 %81, 1
  %193 = load i64, ptr %53, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #13
  %194 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5, ptr noundef nonnull %76) #13
  %195 = load ptr, ptr %75, align 8, !tbaa !68
  %196 = load ptr, ptr %77, align 8, !tbaa !69
  %197 = call i32 %195(ptr noundef nonnull %6, i64 noundef %81, i64 noundef %193, ptr noundef %196) #13
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #13
  %198 = icmp eq i32 %197, 0
  %199 = select i1 %198, i32 0, i32 %188
  br label %200

200:                                              ; preds = %185, %191, %83, %78
  %201 = phi i64 [ %81, %78 ], [ %81, %83 ], [ %192, %191 ], [ %81, %185 ]
  %202 = phi i32 [ 0, %78 ], [ 0, %83 ], [ %199, %191 ], [ %188, %185 ]
  %203 = add nuw nsw i64 %80, 1
  %204 = load i64, ptr %53, align 8, !tbaa !59
  %205 = icmp slt i64 %203, %204
  br i1 %205, label %78, label %206, !llvm.loop !70

206:                                              ; preds = %200, %50
  %207 = phi i32 [ 1, %50 ], [ %202, %200 ]
  %208 = call ptr @DestroyCacheView(ptr noundef %52) #13
  %209 = call i64 @GetMagickResourceLimit(i32 noundef 6) #13
  %210 = icmp sgt i64 %209, 0
  br i1 %210, label %211, label %222

211:                                              ; preds = %206, %218
  %212 = phi i64 [ %219, %218 ], [ 0, %206 ]
  %213 = getelementptr inbounds ptr, ptr %51, i64 %212
  %214 = load ptr, ptr %213, align 8, !tbaa !57
  %215 = icmp eq ptr %214, null
  br i1 %215, label %218, label %216

216:                                              ; preds = %211
  %217 = call ptr @DestroyRandomInfo(ptr noundef nonnull %214) #13
  store ptr %217, ptr %213, align 8, !tbaa !57
  br label %218

218:                                              ; preds = %216, %211
  %219 = add nuw nsw i64 %212, 1
  %220 = call i64 @GetMagickResourceLimit(i32 noundef 6) #13
  %221 = icmp slt i64 %219, %220
  br i1 %221, label %211, label %222, !llvm.loop !58

222:                                              ; preds = %218, %206
  %223 = call ptr @RelinquishAlignedMemory(ptr noundef %51) #13
  br label %224

224:                                              ; preds = %222, %16
  %225 = phi i32 [ 0, %16 ], [ %207, %222 ]
  ret i32 %225
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @EvaluateImages(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  %5 = alloca [4096 x i8], align 16
  %6 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #13
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !35
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 465, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #13
  br label %13

13:                                               ; preds = %10, %3
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %15 = load i64, ptr %14, align 8, !tbaa !60
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %17 = load i64, ptr %16, align 8, !tbaa !59
  %18 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef %15, i64 noundef %17, i32 noundef 1, ptr noundef %2) #13
  %19 = icmp eq ptr %18, null
  br i1 %19, label %536, label %20

20:                                               ; preds = %13
  %21 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %18, i32 noundef 1) #13
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct._Image, ptr %18, i64 0, i32 58
  tail call void @InheritException(ptr noundef %2, ptr noundef nonnull %24) #13
  %25 = tail call ptr @DestroyImage(ptr noundef nonnull %18) #13
  br label %536

26:                                               ; preds = %20
  %27 = tail call i64 @GetImageListLength(ptr noundef %0) #13
  %28 = tail call fastcc ptr @AcquirePixelThreadSet(ptr noundef %0, i64 noundef %27)
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = tail call ptr @DestroyImage(ptr noundef nonnull %18) #13
  %32 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %33 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 482, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %32) #13
  br label %536

34:                                               ; preds = %26
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %6) #13
  %35 = call i64 @GetMagickResourceLimit(i32 noundef 6) #13
  %36 = call ptr @AcquireAlignedMemory(i64 noundef %35, i64 noundef 8) #14
  %37 = icmp eq ptr %36, null
  br i1 %37, label %66, label %38

38:                                               ; preds = %34
  %39 = shl i64 %35, 3
  %40 = call ptr @ResetMagickMemory(ptr noundef nonnull %36, i32 noundef 0, i64 noundef %39) #13
  %41 = icmp sgt i64 %35, 0
  br i1 %41, label %45, label %66

42:                                               ; preds = %45
  %43 = add nuw nsw i64 %46, 1
  %44 = icmp eq i64 %43, %35
  br i1 %44, label %66, label %45, !llvm.loop !54

45:                                               ; preds = %38, %42
  %46 = phi i64 [ %43, %42 ], [ 0, %38 ]
  %47 = call ptr @AcquireRandomInfo() #13
  %48 = getelementptr inbounds ptr, ptr %36, i64 %46
  store ptr %47, ptr %48, align 8, !tbaa !57
  %49 = icmp eq ptr %47, null
  br i1 %49, label %50, label %42

50:                                               ; preds = %45
  %51 = call i64 @GetMagickResourceLimit(i32 noundef 6) #13
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %50, %60
  %54 = phi i64 [ %61, %60 ], [ 0, %50 ]
  %55 = getelementptr inbounds ptr, ptr %36, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !57
  %57 = icmp eq ptr %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %53
  %59 = call ptr @DestroyRandomInfo(ptr noundef nonnull %56) #13
  store ptr %59, ptr %55, align 8, !tbaa !57
  br label %60

60:                                               ; preds = %58, %53
  %61 = add nuw nsw i64 %54, 1
  %62 = call i64 @GetMagickResourceLimit(i32 noundef 6) #13
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %53, label %64, !llvm.loop !58

64:                                               ; preds = %60, %50
  %65 = call ptr @RelinquishAlignedMemory(ptr noundef nonnull %36) #13
  br label %66

66:                                               ; preds = %42, %38, %34, %64
  %67 = phi ptr [ %65, %64 ], [ null, %34 ], [ %36, %38 ], [ %36, %42 ]
  %68 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %18, ptr noundef %2) #13
  %69 = icmp eq i32 %1, 30
  %70 = getelementptr inbounds %struct._Image, ptr %18, i64 0, i32 8
  %71 = load i64, ptr %70, align 8, !tbaa !59
  %72 = icmp sgt i64 %71, 0
  br i1 %69, label %86, label %73

73:                                               ; preds = %66
  br i1 %72, label %74, label %500

74:                                               ; preds = %73
  %75 = getelementptr inbounds %struct._Image, ptr %18, i64 0, i32 7
  %76 = icmp sgt i64 %27, 0
  %77 = getelementptr inbounds %struct._Image, ptr %18, i64 0, i32 1
  %78 = uitofp i64 %27 to float
  %79 = icmp eq i32 %1, 7
  %80 = add i64 %27, -1
  %81 = icmp sgt i64 %80, 0
  %82 = getelementptr inbounds %struct._Image, ptr %18, i64 0, i32 1
  %83 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %84 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %85 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %259

86:                                               ; preds = %66
  br i1 %72, label %87, label %500

87:                                               ; preds = %86
  %88 = getelementptr inbounds %struct._Image, ptr %18, i64 0, i32 7
  %89 = icmp sgt i64 %27, 0
  %90 = icmp sgt i64 %27, 0
  %91 = getelementptr inbounds %struct._Image, ptr %18, i64 0, i32 1
  %92 = getelementptr inbounds %struct._Image, ptr %18, i64 0, i32 1
  %93 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %94 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %95 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %96

96:                                               ; preds = %87, %253
  %97 = phi i32 [ 1, %87 ], [ %255, %253 ]
  %98 = phi i64 [ 0, %87 ], [ %254, %253 ]
  %99 = phi i64 [ 0, %87 ], [ %256, %253 ]
  %100 = icmp eq i32 %97, 0
  br i1 %100, label %253, label %101

101:                                              ; preds = %96
  %102 = load i64, ptr %88, align 8, !tbaa !60
  %103 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %68, i64 noundef 0, i64 noundef %99, i64 noundef %102, i64 noundef 1, ptr noundef %2) #15
  %104 = icmp eq ptr %103, null
  br i1 %104, label %253, label %105

105:                                              ; preds = %101
  %106 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %68) #13
  %107 = load ptr, ptr %28, align 8, !tbaa !57
  %108 = load i64, ptr %88, align 8, !tbaa !60
  %109 = icmp sgt i64 %108, 0
  br i1 %109, label %110, label %238

110:                                              ; preds = %105
  %111 = icmp eq ptr %106, null
  br label %112

112:                                              ; preds = %110, %233
  %113 = phi i64 [ 0, %110 ], [ %235, %233 ]
  %114 = phi ptr [ %103, %110 ], [ %234, %233 ]
  br i1 %89, label %116, label %115

115:                                              ; preds = %116, %112
  br i1 %90, label %121, label %171

116:                                              ; preds = %112, %116
  %117 = phi i64 [ %119, %116 ], [ 0, %112 ]
  %118 = getelementptr inbounds %struct._MagickPixelPacket, ptr %107, i64 %117
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %118, ptr noundef nonnull align 8 dereferenceable(56) %6, i64 56, i1 false), !tbaa.struct !71
  %119 = add nuw nsw i64 %117, 1
  %120 = icmp eq i64 %119, %27
  br i1 %120, label %115, label %116, !llvm.loop !77

121:                                              ; preds = %115, %168
  %122 = phi i64 [ %169, %168 ], [ 0, %115 ]
  %123 = phi ptr [ %167, %168 ], [ %0, %115 ]
  %124 = call ptr @AcquireVirtualCacheView(ptr noundef %123, ptr noundef %2) #13
  %125 = call ptr @GetCacheViewVirtualPixels(ptr noundef %124, i64 noundef %113, i64 noundef %99, i64 noundef 1, i64 noundef 1, ptr noundef %2) #15
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %129

127:                                              ; preds = %121
  %128 = call ptr @DestroyCacheView(ptr noundef %124) #13
  br label %166

129:                                              ; preds = %121
  %130 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %124) #13
  %131 = getelementptr inbounds %struct._PixelPacket, ptr %125, i64 0, i32 2
  %132 = load i16, ptr %131, align 2, !tbaa !61
  %133 = getelementptr inbounds %struct._MagickPixelPacket, ptr %107, i64 %122, i32 5
  %134 = load float, ptr %133, align 8, !tbaa !78
  %135 = uitofp i16 %132 to float
  %136 = fadd float %134, %135
  store float %136, ptr %133, align 8, !tbaa !78
  %137 = getelementptr inbounds %struct._PixelPacket, ptr %125, i64 0, i32 1
  %138 = load i16, ptr %137, align 2, !tbaa !62
  %139 = getelementptr inbounds %struct._MagickPixelPacket, ptr %107, i64 %122, i32 6
  %140 = load float, ptr %139, align 4, !tbaa !80
  %141 = uitofp i16 %138 to float
  %142 = fadd float %140, %141
  store float %142, ptr %139, align 4, !tbaa !80
  %143 = load i16, ptr %125, align 2, !tbaa !63
  %144 = getelementptr inbounds %struct._MagickPixelPacket, ptr %107, i64 %122, i32 7
  %145 = load float, ptr %144, align 8, !tbaa !81
  %146 = uitofp i16 %143 to float
  %147 = fadd float %145, %146
  store float %147, ptr %144, align 8, !tbaa !81
  %148 = getelementptr inbounds %struct._PixelPacket, ptr %125, i64 0, i32 3
  %149 = load i16, ptr %148, align 2, !tbaa !65
  %150 = xor i16 %149, -1
  %151 = getelementptr inbounds %struct._MagickPixelPacket, ptr %107, i64 %122, i32 8
  %152 = load float, ptr %151, align 4, !tbaa !82
  %153 = uitofp i16 %150 to float
  %154 = fadd float %152, %153
  store float %154, ptr %151, align 4, !tbaa !82
  %155 = load i32, ptr %91, align 4, !tbaa !83
  %156 = icmp eq i32 %155, 12
  br i1 %156, label %157, label %163

157:                                              ; preds = %129
  %158 = load i16, ptr %130, align 2, !tbaa !66
  %159 = getelementptr inbounds %struct._MagickPixelPacket, ptr %107, i64 %122, i32 9
  %160 = load float, ptr %159, align 8, !tbaa !84
  %161 = uitofp i16 %158 to float
  %162 = fadd float %160, %161
  store float %162, ptr %159, align 8, !tbaa !84
  br label %163

163:                                              ; preds = %157, %129
  %164 = call ptr @DestroyCacheView(ptr noundef %124) #13
  %165 = call ptr @GetNextImageInList(ptr noundef %123) #13
  br label %166

166:                                              ; preds = %163, %127
  %167 = phi ptr [ %123, %127 ], [ %165, %163 ]
  br i1 %126, label %171, label %168

168:                                              ; preds = %166
  %169 = add nuw nsw i64 %122, 1
  %170 = icmp eq i64 %169, %27
  br i1 %170, label %171, label %121, !llvm.loop !85

171:                                              ; preds = %168, %166, %115
  %172 = phi i64 [ 0, %115 ], [ %27, %168 ], [ %122, %166 ]
  call void @qsort(ptr noundef %107, i64 noundef %27, i64 noundef 56, ptr noundef nonnull @IntensityCompare) #13
  %173 = lshr i64 %172, 1
  %174 = getelementptr inbounds %struct._MagickPixelPacket, ptr %107, i64 %173, i32 5
  %175 = load float, ptr %174, align 8, !tbaa !78
  %176 = fcmp ugt float %175, 0.000000e+00
  br i1 %176, label %177, label %182

177:                                              ; preds = %171
  %178 = fcmp ult float %175, 6.553500e+04
  br i1 %178, label %179, label %182

179:                                              ; preds = %177
  %180 = fadd float %175, 5.000000e-01
  %181 = fptoui float %180 to i16
  br label %182

182:                                              ; preds = %171, %177, %179
  %183 = phi i16 [ %181, %179 ], [ 0, %171 ], [ -1, %177 ]
  %184 = getelementptr inbounds %struct._PixelPacket, ptr %114, i64 0, i32 2
  store i16 %183, ptr %184, align 2, !tbaa !61
  %185 = getelementptr inbounds %struct._MagickPixelPacket, ptr %107, i64 %173, i32 6
  %186 = load float, ptr %185, align 4, !tbaa !80
  %187 = fcmp ugt float %186, 0.000000e+00
  br i1 %187, label %188, label %193

188:                                              ; preds = %182
  %189 = fcmp ult float %186, 6.553500e+04
  br i1 %189, label %190, label %193

190:                                              ; preds = %188
  %191 = fadd float %186, 5.000000e-01
  %192 = fptoui float %191 to i16
  br label %193

193:                                              ; preds = %182, %188, %190
  %194 = phi i16 [ %192, %190 ], [ 0, %182 ], [ -1, %188 ]
  %195 = getelementptr inbounds %struct._PixelPacket, ptr %114, i64 0, i32 1
  store i16 %194, ptr %195, align 2, !tbaa !62
  %196 = getelementptr inbounds %struct._MagickPixelPacket, ptr %107, i64 %173, i32 7
  %197 = load float, ptr %196, align 8, !tbaa !81
  %198 = fcmp ugt float %197, 0.000000e+00
  br i1 %198, label %199, label %204

199:                                              ; preds = %193
  %200 = fcmp ult float %197, 6.553500e+04
  br i1 %200, label %201, label %204

201:                                              ; preds = %199
  %202 = fadd float %197, 5.000000e-01
  %203 = fptoui float %202 to i16
  br label %204

204:                                              ; preds = %193, %199, %201
  %205 = phi i16 [ %203, %201 ], [ 0, %193 ], [ -1, %199 ]
  store i16 %205, ptr %114, align 2, !tbaa !63
  %206 = getelementptr inbounds %struct._MagickPixelPacket, ptr %107, i64 %173, i32 8
  %207 = load float, ptr %206, align 4, !tbaa !82
  %208 = fcmp ugt float %207, 0.000000e+00
  br i1 %208, label %209, label %214

209:                                              ; preds = %204
  %210 = fcmp ult float %207, 6.553500e+04
  br i1 %210, label %211, label %214

211:                                              ; preds = %209
  %212 = fadd float %207, 5.000000e-01
  %213 = fptoui float %212 to i16
  br label %214

214:                                              ; preds = %204, %209, %211
  %215 = phi i16 [ %213, %211 ], [ 0, %204 ], [ -1, %209 ]
  %216 = xor i16 %215, -1
  %217 = getelementptr inbounds %struct._PixelPacket, ptr %114, i64 0, i32 3
  store i16 %216, ptr %217, align 2, !tbaa !65
  %218 = load i32, ptr %92, align 4, !tbaa !83
  %219 = icmp ne i32 %218, 12
  %220 = select i1 %219, i1 true, i1 %111
  br i1 %220, label %233, label %221

221:                                              ; preds = %214
  %222 = getelementptr inbounds i16, ptr %106, i64 %172
  %223 = getelementptr inbounds %struct._MagickPixelPacket, ptr %107, i64 %173, i32 9
  %224 = load float, ptr %223, align 8, !tbaa !84
  %225 = fcmp ugt float %224, 0.000000e+00
  br i1 %225, label %226, label %231

226:                                              ; preds = %221
  %227 = fcmp ult float %224, 6.553500e+04
  br i1 %227, label %228, label %231

228:                                              ; preds = %226
  %229 = fadd float %224, 5.000000e-01
  %230 = fptoui float %229 to i16
  br label %231

231:                                              ; preds = %221, %226, %228
  %232 = phi i16 [ %230, %228 ], [ 0, %221 ], [ -1, %226 ]
  store i16 %232, ptr %222, align 2, !tbaa !66
  br label %233

233:                                              ; preds = %231, %214
  %234 = getelementptr inbounds %struct._PixelPacket, ptr %114, i64 1
  %235 = add nuw nsw i64 %113, 1
  %236 = load i64, ptr %88, align 8, !tbaa !60
  %237 = icmp slt i64 %235, %236
  br i1 %237, label %112, label %238, !llvm.loop !86

238:                                              ; preds = %233, %105
  %239 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %68, ptr noundef %2) #15
  %240 = icmp ne i32 %239, 0
  %241 = zext i1 %240 to i32
  %242 = load ptr, ptr %93, align 8, !tbaa !68
  %243 = icmp eq ptr %242, null
  br i1 %243, label %253, label %244

244:                                              ; preds = %238
  %245 = add nsw i64 %98, 1
  %246 = load i64, ptr %70, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #13
  %247 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5, ptr noundef nonnull %94) #13
  %248 = load ptr, ptr %93, align 8, !tbaa !68
  %249 = load ptr, ptr %95, align 8, !tbaa !69
  %250 = call i32 %248(ptr noundef nonnull %5, i64 noundef %98, i64 noundef %246, ptr noundef %249) #13
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #13
  %251 = icmp eq i32 %250, 0
  %252 = select i1 %251, i32 0, i32 %241
  br label %253

253:                                              ; preds = %238, %244, %101, %96
  %254 = phi i64 [ %98, %96 ], [ %98, %101 ], [ %245, %244 ], [ %98, %238 ]
  %255 = phi i32 [ 0, %96 ], [ 0, %101 ], [ %252, %244 ], [ %241, %238 ]
  %256 = add nuw nsw i64 %99, 1
  %257 = load i64, ptr %70, align 8, !tbaa !59
  %258 = icmp slt i64 %256, %257
  br i1 %258, label %96, label %500, !llvm.loop !87

259:                                              ; preds = %74, %494
  %260 = phi i32 [ 1, %74 ], [ %496, %494 ]
  %261 = phi i64 [ 0, %74 ], [ %495, %494 ]
  %262 = phi i64 [ 0, %74 ], [ %497, %494 ]
  %263 = icmp eq i32 %260, 0
  br i1 %263, label %494, label %264

264:                                              ; preds = %259
  %265 = load i64, ptr %75, align 8, !tbaa !60
  %266 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %68, i64 noundef 0, i64 noundef %262, i64 noundef %265, i64 noundef 1, ptr noundef %2) #15
  %267 = icmp eq ptr %266, null
  br i1 %267, label %494, label %268

268:                                              ; preds = %264
  %269 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %68) #13
  %270 = load ptr, ptr %28, align 8, !tbaa !57
  %271 = load i64, ptr %75, align 8, !tbaa !60
  %272 = icmp sgt i64 %271, 0
  br i1 %272, label %274, label %273

273:                                              ; preds = %274, %268
  br i1 %76, label %280, label %350

274:                                              ; preds = %268, %274
  %275 = phi i64 [ %277, %274 ], [ 0, %268 ]
  %276 = getelementptr inbounds %struct._MagickPixelPacket, ptr %270, i64 %275
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %276, ptr noundef nonnull align 8 dereferenceable(56) %6, i64 56, i1 false), !tbaa.struct !71
  %277 = add nuw nsw i64 %275, 1
  %278 = load i64, ptr %75, align 8, !tbaa !60
  %279 = icmp slt i64 %277, %278
  br i1 %279, label %274, label %273, !llvm.loop !88

280:                                              ; preds = %273, %345
  %281 = phi i64 [ %347, %345 ], [ 0, %273 ]
  %282 = phi ptr [ %346, %345 ], [ %0, %273 ]
  %283 = call ptr @AcquireVirtualCacheView(ptr noundef %282, ptr noundef %2) #13
  %284 = getelementptr inbounds %struct._Image, ptr %282, i64 0, i32 7
  %285 = load i64, ptr %284, align 8, !tbaa !60
  %286 = call ptr @GetCacheViewVirtualPixels(ptr noundef %283, i64 noundef 0, i64 noundef %262, i64 noundef %285, i64 noundef 1, ptr noundef %2) #15
  %287 = icmp ne ptr %286, null
  br i1 %287, label %290, label %288

288:                                              ; preds = %280
  %289 = call ptr @DestroyCacheView(ptr noundef %283) #13
  br label %345

290:                                              ; preds = %280
  %291 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %283) #13
  %292 = load i64, ptr %284, align 8, !tbaa !60
  %293 = icmp sgt i64 %292, 0
  br i1 %293, label %294, label %342

294:                                              ; preds = %290
  %295 = icmp eq i64 %281, 0
  %296 = select i1 %295, i32 1, i32 %1
  %297 = icmp eq ptr %291, null
  br label %298

298:                                              ; preds = %294, %337
  %299 = phi ptr [ %286, %294 ], [ %338, %337 ]
  %300 = phi i64 [ 0, %294 ], [ %339, %337 ]
  %301 = load ptr, ptr %67, align 8, !tbaa !57
  %302 = getelementptr inbounds %struct._PixelPacket, ptr %299, i64 0, i32 2
  %303 = load i16, ptr %302, align 2, !tbaa !61
  %304 = getelementptr inbounds %struct._MagickPixelPacket, ptr %270, i64 %300, i32 5
  %305 = load float, ptr %304, align 8, !tbaa !78
  %306 = call fastcc float @ApplyEvaluateOperator(ptr noundef %301, i16 noundef zeroext %303, i32 noundef %296, float noundef %305)
  store float %306, ptr %304, align 8, !tbaa !78
  %307 = load ptr, ptr %67, align 8, !tbaa !57
  %308 = getelementptr inbounds %struct._PixelPacket, ptr %299, i64 0, i32 1
  %309 = load i16, ptr %308, align 2, !tbaa !62
  %310 = getelementptr inbounds %struct._MagickPixelPacket, ptr %270, i64 %300, i32 6
  %311 = load float, ptr %310, align 4, !tbaa !80
  %312 = call fastcc float @ApplyEvaluateOperator(ptr noundef %307, i16 noundef zeroext %309, i32 noundef %296, float noundef %311)
  store float %312, ptr %310, align 4, !tbaa !80
  %313 = load ptr, ptr %67, align 8, !tbaa !57
  %314 = load i16, ptr %299, align 2, !tbaa !63
  %315 = getelementptr inbounds %struct._MagickPixelPacket, ptr %270, i64 %300, i32 7
  %316 = load float, ptr %315, align 8, !tbaa !81
  %317 = call fastcc float @ApplyEvaluateOperator(ptr noundef %313, i16 noundef zeroext %314, i32 noundef %296, float noundef %316)
  store float %317, ptr %315, align 8, !tbaa !81
  %318 = load ptr, ptr %67, align 8, !tbaa !57
  %319 = getelementptr inbounds %struct._PixelPacket, ptr %299, i64 0, i32 3
  %320 = load i16, ptr %319, align 2, !tbaa !65
  %321 = xor i16 %320, -1
  %322 = getelementptr inbounds %struct._MagickPixelPacket, ptr %270, i64 %300, i32 8
  %323 = load float, ptr %322, align 4, !tbaa !82
  %324 = call fastcc float @ApplyEvaluateOperator(ptr noundef %318, i16 noundef zeroext %321, i32 noundef %296, float noundef %323)
  store float %324, ptr %322, align 4, !tbaa !82
  %325 = load i32, ptr %77, align 4, !tbaa !83
  %326 = icmp eq i32 %325, 12
  br i1 %326, label %327, label %337

327:                                              ; preds = %298
  %328 = load ptr, ptr %67, align 8, !tbaa !57
  br i1 %297, label %332, label %329

329:                                              ; preds = %327
  %330 = getelementptr inbounds i16, ptr %291, i64 %300
  %331 = load i16, ptr %330, align 2, !tbaa !66
  br label %332

332:                                              ; preds = %327, %329
  %333 = phi i16 [ %331, %329 ], [ 0, %327 ]
  %334 = getelementptr inbounds %struct._MagickPixelPacket, ptr %270, i64 %300, i32 9
  %335 = load float, ptr %334, align 8, !tbaa !84
  %336 = call fastcc float @ApplyEvaluateOperator(ptr noundef %328, i16 noundef zeroext %333, i32 noundef %296, float noundef %335)
  store float %336, ptr %334, align 8, !tbaa !84
  br label %337

337:                                              ; preds = %332, %298
  %338 = getelementptr inbounds %struct._PixelPacket, ptr %299, i64 1
  %339 = add nuw nsw i64 %300, 1
  %340 = load i64, ptr %284, align 8, !tbaa !60
  %341 = icmp slt i64 %339, %340
  br i1 %341, label %298, label %342, !llvm.loop !89

342:                                              ; preds = %337, %290
  %343 = call ptr @DestroyCacheView(ptr noundef %283) #13
  %344 = call ptr @GetNextImageInList(ptr noundef %282) #13
  br label %345

345:                                              ; preds = %342, %288
  %346 = phi ptr [ %282, %288 ], [ %344, %342 ]
  %347 = add nuw nsw i64 %281, 1
  %348 = icmp slt i64 %347, %27
  %349 = select i1 %287, i1 %348, i1 false
  br i1 %349, label %280, label %350, !llvm.loop !90

350:                                              ; preds = %345, %273
  switch i32 %1, label %408 [
    i32 27, label %351
    i32 7, label %374
  ]

351:                                              ; preds = %350
  %352 = load i64, ptr %75, align 8, !tbaa !60
  %353 = icmp sgt i64 %352, 0
  br i1 %353, label %354, label %373

354:                                              ; preds = %351, %354
  %355 = phi i64 [ %371, %354 ], [ 0, %351 ]
  %356 = getelementptr inbounds %struct._MagickPixelPacket, ptr %270, i64 %355, i32 5
  %357 = load float, ptr %356, align 8, !tbaa !78
  %358 = fdiv float %357, %78
  store float %358, ptr %356, align 8, !tbaa !78
  %359 = getelementptr inbounds %struct._MagickPixelPacket, ptr %270, i64 %355, i32 6
  %360 = load float, ptr %359, align 4, !tbaa !80
  %361 = fdiv float %360, %78
  store float %361, ptr %359, align 4, !tbaa !80
  %362 = getelementptr inbounds %struct._MagickPixelPacket, ptr %270, i64 %355, i32 7
  %363 = load float, ptr %362, align 8, !tbaa !81
  %364 = fdiv float %363, %78
  store float %364, ptr %362, align 8, !tbaa !81
  %365 = getelementptr inbounds %struct._MagickPixelPacket, ptr %270, i64 %355, i32 8
  %366 = load float, ptr %365, align 4, !tbaa !82
  %367 = fdiv float %366, %78
  store float %367, ptr %365, align 4, !tbaa !82
  %368 = getelementptr inbounds %struct._MagickPixelPacket, ptr %270, i64 %355, i32 9
  %369 = load float, ptr %368, align 8, !tbaa !84
  %370 = fdiv float %369, %78
  store float %370, ptr %368, align 8, !tbaa !84
  %371 = add nuw nsw i64 %355, 1
  %372 = icmp eq i64 %371, %352
  br i1 %372, label %373, label %354, !llvm.loop !91

373:                                              ; preds = %354, %351
  br i1 %79, label %374, label %408

374:                                              ; preds = %350, %373
  %375 = load i64, ptr %75, align 8, !tbaa !60
  %376 = icmp sgt i64 %375, 0
  br i1 %376, label %377, label %408

377:                                              ; preds = %374, %405
  %378 = phi i64 [ %406, %405 ], [ 0, %374 ]
  br i1 %81, label %379, label %405

379:                                              ; preds = %377
  %380 = getelementptr inbounds %struct._MagickPixelPacket, ptr %270, i64 %378, i32 5
  %381 = getelementptr inbounds %struct._MagickPixelPacket, ptr %270, i64 %378, i32 6
  %382 = getelementptr inbounds %struct._MagickPixelPacket, ptr %270, i64 %378, i32 7
  %383 = getelementptr inbounds %struct._MagickPixelPacket, ptr %270, i64 %378, i32 8
  %384 = getelementptr inbounds %struct._MagickPixelPacket, ptr %270, i64 %378, i32 9
  %385 = load float, ptr %380, align 8, !tbaa !78
  %386 = load float, ptr %381, align 4, !tbaa !80
  %387 = load float, ptr %382, align 8, !tbaa !81
  %388 = load float, ptr %383, align 4, !tbaa !82
  %389 = load float, ptr %384, align 8, !tbaa !84
  br label %390

390:                                              ; preds = %379, %390
  %391 = phi float [ %389, %379 ], [ %401, %390 ]
  %392 = phi float [ %388, %379 ], [ %400, %390 ]
  %393 = phi float [ %387, %379 ], [ %399, %390 ]
  %394 = phi float [ %386, %379 ], [ %398, %390 ]
  %395 = phi float [ %385, %379 ], [ %397, %390 ]
  %396 = phi i64 [ 0, %379 ], [ %402, %390 ]
  %397 = fmul float %395, 0x3EF0001000000000
  %398 = fmul float %394, 0x3EF0001000000000
  %399 = fmul float %393, 0x3EF0001000000000
  %400 = fmul float %392, 0x3EF0001000000000
  %401 = fmul float %391, 0x3EF0001000000000
  %402 = add nuw nsw i64 %396, 1
  %403 = icmp eq i64 %402, %80
  br i1 %403, label %404, label %390, !llvm.loop !92

404:                                              ; preds = %390
  store float %397, ptr %380, align 8, !tbaa !78
  store float %398, ptr %381, align 4, !tbaa !80
  store float %399, ptr %382, align 8, !tbaa !81
  store float %400, ptr %383, align 4, !tbaa !82
  store float %401, ptr %384, align 8, !tbaa !84
  br label %405

405:                                              ; preds = %404, %377
  %406 = add nuw nsw i64 %378, 1
  %407 = icmp eq i64 %406, %375
  br i1 %407, label %408, label %377, !llvm.loop !93

408:                                              ; preds = %405, %374, %350, %373
  %409 = load i64, ptr %75, align 8, !tbaa !60
  %410 = icmp sgt i64 %409, 0
  br i1 %410, label %411, label %479

411:                                              ; preds = %408
  %412 = load i32, ptr %82, align 4, !tbaa !83
  %413 = icmp ne i32 %412, 12
  %414 = icmp eq ptr %269, null
  %415 = select i1 %413, i1 true, i1 %414
  br label %416

416:                                              ; preds = %411, %475
  %417 = phi ptr [ %266, %411 ], [ %476, %475 ]
  %418 = phi i64 [ 0, %411 ], [ %477, %475 ]
  %419 = getelementptr inbounds %struct._MagickPixelPacket, ptr %270, i64 %418, i32 5
  %420 = load float, ptr %419, align 8, !tbaa !78
  %421 = fcmp ugt float %420, 0.000000e+00
  br i1 %421, label %422, label %427

422:                                              ; preds = %416
  %423 = fcmp ult float %420, 6.553500e+04
  br i1 %423, label %424, label %427

424:                                              ; preds = %422
  %425 = fadd float %420, 5.000000e-01
  %426 = fptoui float %425 to i16
  br label %427

427:                                              ; preds = %416, %422, %424
  %428 = phi i16 [ %426, %424 ], [ 0, %416 ], [ -1, %422 ]
  %429 = getelementptr inbounds %struct._PixelPacket, ptr %417, i64 0, i32 2
  store i16 %428, ptr %429, align 2, !tbaa !61
  %430 = getelementptr inbounds %struct._MagickPixelPacket, ptr %270, i64 %418, i32 6
  %431 = load float, ptr %430, align 4, !tbaa !80
  %432 = fcmp ugt float %431, 0.000000e+00
  br i1 %432, label %433, label %438

433:                                              ; preds = %427
  %434 = fcmp ult float %431, 6.553500e+04
  br i1 %434, label %435, label %438

435:                                              ; preds = %433
  %436 = fadd float %431, 5.000000e-01
  %437 = fptoui float %436 to i16
  br label %438

438:                                              ; preds = %427, %433, %435
  %439 = phi i16 [ %437, %435 ], [ 0, %427 ], [ -1, %433 ]
  %440 = getelementptr inbounds %struct._PixelPacket, ptr %417, i64 0, i32 1
  store i16 %439, ptr %440, align 2, !tbaa !62
  %441 = getelementptr inbounds %struct._MagickPixelPacket, ptr %270, i64 %418, i32 7
  %442 = load float, ptr %441, align 8, !tbaa !81
  %443 = fcmp ugt float %442, 0.000000e+00
  br i1 %443, label %444, label %449

444:                                              ; preds = %438
  %445 = fcmp ult float %442, 6.553500e+04
  br i1 %445, label %446, label %449

446:                                              ; preds = %444
  %447 = fadd float %442, 5.000000e-01
  %448 = fptoui float %447 to i16
  br label %449

449:                                              ; preds = %438, %444, %446
  %450 = phi i16 [ %448, %446 ], [ 0, %438 ], [ -1, %444 ]
  store i16 %450, ptr %417, align 2, !tbaa !63
  %451 = getelementptr inbounds %struct._MagickPixelPacket, ptr %270, i64 %418, i32 8
  %452 = load float, ptr %451, align 4, !tbaa !82
  %453 = fcmp ugt float %452, 0.000000e+00
  br i1 %453, label %454, label %459

454:                                              ; preds = %449
  %455 = fcmp ult float %452, 6.553500e+04
  br i1 %455, label %456, label %459

456:                                              ; preds = %454
  %457 = fadd float %452, 5.000000e-01
  %458 = fptoui float %457 to i16
  br label %459

459:                                              ; preds = %449, %454, %456
  %460 = phi i16 [ %458, %456 ], [ 0, %449 ], [ -1, %454 ]
  %461 = xor i16 %460, -1
  %462 = getelementptr inbounds %struct._PixelPacket, ptr %417, i64 0, i32 3
  store i16 %461, ptr %462, align 2, !tbaa !65
  br i1 %415, label %475, label %463

463:                                              ; preds = %459
  %464 = getelementptr inbounds i16, ptr %269, i64 %418
  %465 = getelementptr inbounds %struct._MagickPixelPacket, ptr %270, i64 %418, i32 9
  %466 = load float, ptr %465, align 8, !tbaa !84
  %467 = fcmp ugt float %466, 0.000000e+00
  br i1 %467, label %468, label %473

468:                                              ; preds = %463
  %469 = fcmp ult float %466, 6.553500e+04
  br i1 %469, label %470, label %473

470:                                              ; preds = %468
  %471 = fadd float %466, 5.000000e-01
  %472 = fptoui float %471 to i16
  br label %473

473:                                              ; preds = %463, %468, %470
  %474 = phi i16 [ %472, %470 ], [ 0, %463 ], [ -1, %468 ]
  store i16 %474, ptr %464, align 2, !tbaa !66
  br label %475

475:                                              ; preds = %473, %459
  %476 = getelementptr inbounds %struct._PixelPacket, ptr %417, i64 1
  %477 = add nuw nsw i64 %418, 1
  %478 = icmp eq i64 %477, %409
  br i1 %478, label %479, label %416, !llvm.loop !94

479:                                              ; preds = %475, %408
  %480 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %68, ptr noundef %2) #15
  %481 = icmp ne i32 %480, 0
  %482 = zext i1 %481 to i32
  %483 = load ptr, ptr %83, align 8, !tbaa !68
  %484 = icmp eq ptr %483, null
  br i1 %484, label %494, label %485

485:                                              ; preds = %479
  %486 = add nsw i64 %261, 1
  %487 = load i64, ptr %70, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #13
  %488 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5, ptr noundef nonnull %84) #13
  %489 = load ptr, ptr %83, align 8, !tbaa !68
  %490 = load ptr, ptr %85, align 8, !tbaa !69
  %491 = call i32 %489(ptr noundef nonnull %4, i64 noundef %261, i64 noundef %487, ptr noundef %490) #13
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #13
  %492 = icmp eq i32 %491, 0
  %493 = select i1 %492, i32 0, i32 %482
  br label %494

494:                                              ; preds = %479, %485, %264, %259
  %495 = phi i64 [ %261, %259 ], [ %261, %264 ], [ %486, %485 ], [ %261, %479 ]
  %496 = phi i32 [ 0, %259 ], [ 0, %264 ], [ %493, %485 ], [ %482, %479 ]
  %497 = add nuw nsw i64 %262, 1
  %498 = load i64, ptr %70, align 8, !tbaa !59
  %499 = icmp slt i64 %497, %498
  br i1 %499, label %259, label %500, !llvm.loop !95

500:                                              ; preds = %494, %253, %73, %86
  %501 = phi i32 [ 1, %86 ], [ 1, %73 ], [ %255, %253 ], [ %496, %494 ]
  %502 = call ptr @DestroyCacheView(ptr noundef %68) #13
  %503 = call i64 @GetMagickResourceLimit(i32 noundef 6) #13
  %504 = icmp sgt i64 %503, 0
  br i1 %504, label %505, label %516

505:                                              ; preds = %500, %512
  %506 = phi i64 [ %513, %512 ], [ 0, %500 ]
  %507 = getelementptr inbounds ptr, ptr %28, i64 %506
  %508 = load ptr, ptr %507, align 8, !tbaa !57
  %509 = icmp eq ptr %508, null
  br i1 %509, label %512, label %510

510:                                              ; preds = %505
  %511 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %508) #13
  store ptr %511, ptr %507, align 8, !tbaa !57
  br label %512

512:                                              ; preds = %510, %505
  %513 = add nuw nsw i64 %506, 1
  %514 = call i64 @GetMagickResourceLimit(i32 noundef 6) #13
  %515 = icmp slt i64 %513, %514
  br i1 %515, label %505, label %516, !llvm.loop !96

516:                                              ; preds = %512, %500
  %517 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %28) #13
  %518 = call i64 @GetMagickResourceLimit(i32 noundef 6) #13
  %519 = icmp sgt i64 %518, 0
  br i1 %519, label %520, label %531

520:                                              ; preds = %516, %527
  %521 = phi i64 [ %528, %527 ], [ 0, %516 ]
  %522 = getelementptr inbounds ptr, ptr %67, i64 %521
  %523 = load ptr, ptr %522, align 8, !tbaa !57
  %524 = icmp eq ptr %523, null
  br i1 %524, label %527, label %525

525:                                              ; preds = %520
  %526 = call ptr @DestroyRandomInfo(ptr noundef nonnull %523) #13
  store ptr %526, ptr %522, align 8, !tbaa !57
  br label %527

527:                                              ; preds = %525, %520
  %528 = add nuw nsw i64 %521, 1
  %529 = call i64 @GetMagickResourceLimit(i32 noundef 6) #13
  %530 = icmp slt i64 %528, %529
  br i1 %530, label %520, label %531, !llvm.loop !58

531:                                              ; preds = %527, %516
  %532 = call ptr @RelinquishAlignedMemory(ptr noundef %67) #13
  %533 = icmp eq i32 %501, 0
  br i1 %533, label %534, label %536

534:                                              ; preds = %531
  %535 = call ptr @DestroyImage(ptr noundef nonnull %18) #13
  br label %536

536:                                              ; preds = %531, %534, %13, %30, %23
  %537 = phi ptr [ null, %23 ], [ null, %30 ], [ null, %13 ], [ %535, %534 ], [ %18, %531 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #13
  ret ptr %537
}

declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SetImageStorageClass(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @InheritException(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @DestroyImage(ptr noundef) local_unnamed_addr #2

declare i64 @GetImageListLength(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @AcquirePixelThreadSet(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
  %3 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #13
  %4 = tail call ptr @AcquireQuantumMemory(i64 noundef %3, i64 noundef 8) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %46, label %6

6:                                                ; preds = %2
  %7 = shl i64 %3, 3
  %8 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %4, i32 noundef 0, i64 noundef %7) #13
  %9 = icmp sgt i64 %3, 0
  br i1 %9, label %10, label %46

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  br label %12

12:                                               ; preds = %10, %43
  %13 = phi i64 [ 0, %10 ], [ %44, %43 ]
  %14 = load i64, ptr %11, align 8, !tbaa !60
  %15 = tail call i64 @llvm.umax.i64(i64 %14, i64 %1)
  %16 = tail call ptr @AcquireQuantumMemory(i64 noundef %15, i64 noundef 56) #14
  %17 = getelementptr inbounds ptr, ptr %4, i64 %13
  store ptr %16, ptr %17, align 8, !tbaa !57
  %18 = icmp eq ptr %16, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %12
  %20 = icmp sgt i64 %15, 0
  br i1 %20, label %37, label %43

21:                                               ; preds = %12
  %22 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #13
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %21, %31
  %25 = phi i64 [ %32, %31 ], [ 0, %21 ]
  %26 = getelementptr inbounds ptr, ptr %4, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !57
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  %30 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %27) #13
  store ptr %30, ptr %26, align 8, !tbaa !57
  br label %31

31:                                               ; preds = %29, %24
  %32 = add nuw nsw i64 %25, 1
  %33 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #13
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %24, label %35, !llvm.loop !96

35:                                               ; preds = %31, %21
  %36 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %4) #13
  br label %46

37:                                               ; preds = %19, %37
  %38 = phi i64 [ %41, %37 ], [ 0, %19 ]
  %39 = load ptr, ptr %17, align 8, !tbaa !57
  %40 = getelementptr inbounds %struct._MagickPixelPacket, ptr %39, i64 %38
  tail call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef %40) #13
  %41 = add nuw nsw i64 %38, 1
  %42 = icmp eq i64 %41, %15
  br i1 %42, label %43, label %37, !llvm.loop !97

43:                                               ; preds = %37, %19
  %44 = add nuw nsw i64 %13, 1
  %45 = icmp eq i64 %44, %3
  br i1 %45, label %46, label %12, !llvm.loop !98

46:                                               ; preds = %43, %6, %2, %35
  %47 = phi ptr [ %36, %35 ], [ null, %2 ], [ %4, %6 ], [ %4, %43 ]
  ret ptr %47
}

declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: hot
declare ptr @QueueCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: hot
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #2

declare ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc float @ApplyEvaluateOperator(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2, float noundef %3) unnamed_addr #0 {
  switch i32 %2, label %167 [
    i32 12, label %160
    i32 28, label %5
    i32 1, label %9
    i32 26, label %12
    i32 2, label %20
    i32 24, label %27
    i32 3, label %36
    i32 29, label %43
    i32 18, label %51
    i32 19, label %54
    i32 20, label %57
    i32 4, label %60
    i32 14, label %67
    i32 5, label %81
    i32 27, label %87
    i32 30, label %90
    i32 6, label %93
    i32 21, label %99
    i32 7, label %102
    i32 8, label %105
    i32 22, label %112
    i32 13, label %115
    i32 9, label %122
    i32 10, label %129
    i32 25, label %130
    i32 11, label %139
    i32 31, label %142
    i32 15, label %145
    i32 16, label %149
    i32 17, label %153
    i32 23, label %157
  ]

5:                                                ; preds = %4
  %6 = uitofp i16 %1 to float
  %7 = fadd float %6, %3
  %8 = tail call float @llvm.fabs.f32(float %7)
  br label %167

9:                                                ; preds = %4
  %10 = uitofp i16 %1 to float
  %11 = fadd float %10, %3
  br label %167

12:                                               ; preds = %4
  %13 = uitofp i16 %1 to float
  %14 = fadd float %13, %3
  %15 = fpext float %14 to double
  %16 = fmul double %15, 0x3EF0000000000000
  %17 = tail call double @llvm.floor.f64(double %16)
  %18 = tail call double @llvm.fmuladd.f64(double %17, double -6.553600e+04, double %15)
  %19 = fptrunc double %18 to float
  br label %167

20:                                               ; preds = %4
  %21 = zext i16 %1 to i64
  %22 = fpext float %3 to double
  %23 = fadd double %22, 5.000000e-01
  %24 = fptoui double %23 to i64
  %25 = and i64 %24, %21
  %26 = uitofp i64 %25 to float
  br label %167

27:                                               ; preds = %4
  %28 = uitofp i16 %1 to double
  %29 = fmul double %28, 0x3F1922147658A371
  %30 = fpext float %3 to double
  %31 = fmul double %29, %30
  %32 = tail call double @cos(double noundef %31) #13
  %33 = tail call double @llvm.fmuladd.f64(double %32, double 5.000000e-01, double 5.000000e-01)
  %34 = fmul double %33, 6.553500e+04
  %35 = fptrunc double %34 to float
  br label %167

36:                                               ; preds = %4
  %37 = uitofp i16 %1 to double
  %38 = fpext float %3 to double
  %39 = fcmp oeq float %3, 0.000000e+00
  %40 = select i1 %39, double 1.000000e+00, double %38
  %41 = fdiv double %37, %40
  %42 = fptrunc double %41 to float
  br label %167

43:                                               ; preds = %4
  %44 = fpext float %3 to double
  %45 = fmul double %44, 0x3EF0001000100010
  %46 = uitofp i16 %1 to double
  %47 = fmul double %45, %46
  %48 = tail call double @exp(double noundef %47) #13
  %49 = fmul double %48, 6.553500e+04
  %50 = fptrunc double %49 to float
  br label %167

51:                                               ; preds = %4
  %52 = tail call double @GenerateDifferentialNoise(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 2, float noundef %3) #13
  %53 = fptrunc double %52 to float
  br label %167

54:                                               ; preds = %4
  %55 = tail call double @GenerateDifferentialNoise(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 4, float noundef %3) #13
  %56 = fptrunc double %55 to float
  br label %167

57:                                               ; preds = %4
  %58 = tail call double @GenerateDifferentialNoise(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 5, float noundef %3) #13
  %59 = fptrunc double %58 to float
  br label %167

60:                                               ; preds = %4
  %61 = zext i16 %1 to i64
  %62 = fpext float %3 to double
  %63 = fadd double %62, 5.000000e-01
  %64 = fptoui double %63 to i64
  %65 = shl i64 %61, %64
  %66 = uitofp i64 %65 to float
  br label %167

67:                                               ; preds = %4
  %68 = uitofp i16 %1 to double
  %69 = fmul double %68, 0x3EF0001000100010
  %70 = fcmp ult double %69, 1.000000e-15
  br i1 %70, label %167, label %71

71:                                               ; preds = %67
  %72 = fpext float %3 to double
  %73 = fmul double %72, 0x3EF0001000100010
  %74 = tail call double @llvm.fmuladd.f64(double %73, double %68, double 1.000000e+00)
  %75 = tail call double @log(double noundef %74) #13
  %76 = fmul double %75, 6.553500e+04
  %77 = fadd double %72, 1.000000e+00
  %78 = tail call double @log(double noundef %77) #13
  %79 = fdiv double %76, %78
  %80 = fptrunc double %79 to float
  br label %167

81:                                               ; preds = %4
  %82 = uitofp i16 %1 to double
  %83 = fpext float %3 to double
  %84 = fcmp ogt double %82, %83
  %85 = uitofp i16 %1 to float
  %86 = select i1 %84, float %85, float %3
  br label %167

87:                                               ; preds = %4
  %88 = uitofp i16 %1 to float
  %89 = fadd float %88, %3
  br label %167

90:                                               ; preds = %4
  %91 = uitofp i16 %1 to float
  %92 = fadd float %91, %3
  br label %167

93:                                               ; preds = %4
  %94 = uitofp i16 %1 to double
  %95 = fpext float %3 to double
  %96 = fcmp olt double %94, %95
  %97 = uitofp i16 %1 to float
  %98 = select i1 %96, float %97, float %3
  br label %167

99:                                               ; preds = %4
  %100 = tail call double @GenerateDifferentialNoise(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 3, float noundef %3) #13
  %101 = fptrunc double %100 to float
  br label %167

102:                                              ; preds = %4
  %103 = uitofp i16 %1 to float
  %104 = fmul float %103, %3
  br label %167

105:                                              ; preds = %4
  %106 = zext i16 %1 to i64
  %107 = fpext float %3 to double
  %108 = fadd double %107, 5.000000e-01
  %109 = fptoui double %108 to i64
  %110 = or i64 %109, %106
  %111 = uitofp i64 %110 to float
  br label %167

112:                                              ; preds = %4
  %113 = tail call double @GenerateDifferentialNoise(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 6, float noundef %3) #13
  %114 = fptrunc double %113 to float
  br label %167

115:                                              ; preds = %4
  %116 = uitofp i16 %1 to double
  %117 = fmul double %116, 0x3EF0001000100010
  %118 = fpext float %3 to double
  %119 = tail call double @pow(double noundef %117, double noundef %118) #13
  %120 = fmul double %119, 6.553500e+04
  %121 = fptrunc double %120 to float
  br label %167

122:                                              ; preds = %4
  %123 = zext i16 %1 to i64
  %124 = fpext float %3 to double
  %125 = fadd double %124, 5.000000e-01
  %126 = fptoui double %125 to i64
  %127 = lshr i64 %123, %126
  %128 = uitofp i64 %127 to float
  br label %167

129:                                              ; preds = %4
  br label %167

130:                                              ; preds = %4
  %131 = uitofp i16 %1 to double
  %132 = fmul double %131, 0x3F1922147658A371
  %133 = fpext float %3 to double
  %134 = fmul double %132, %133
  %135 = tail call double @sin(double noundef %134) #13
  %136 = tail call double @llvm.fmuladd.f64(double %135, double 5.000000e-01, double 5.000000e-01)
  %137 = fmul double %136, 6.553500e+04
  %138 = fptrunc double %137 to float
  br label %167

139:                                              ; preds = %4
  %140 = uitofp i16 %1 to float
  %141 = fsub float %140, %3
  br label %167

142:                                              ; preds = %4
  %143 = uitofp i16 %1 to float
  %144 = fadd float %143, %3
  br label %167

145:                                              ; preds = %4
  %146 = uitofp i16 %1 to float
  %147 = fcmp ole float %146, %3
  %148 = select i1 %147, float 0.000000e+00, float 6.553500e+04
  br label %167

149:                                              ; preds = %4
  %150 = uitofp i16 %1 to float
  %151 = fcmp ole float %150, %3
  %152 = select i1 %151, float 0.000000e+00, float %150
  br label %167

153:                                              ; preds = %4
  %154 = uitofp i16 %1 to float
  %155 = fcmp ogt float %154, %3
  %156 = select i1 %155, float 6.553500e+04, float %154
  br label %167

157:                                              ; preds = %4
  %158 = tail call double @GenerateDifferentialNoise(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 1, float noundef %3) #13
  %159 = fptrunc double %158 to float
  br label %167

160:                                              ; preds = %4
  %161 = zext i16 %1 to i64
  %162 = fpext float %3 to double
  %163 = fadd double %162, 5.000000e-01
  %164 = fptoui double %163 to i64
  %165 = xor i64 %164, %161
  %166 = uitofp i64 %165 to float
  br label %167

167:                                              ; preds = %67, %71, %4, %160, %157, %153, %149, %145, %142, %139, %130, %129, %122, %115, %112, %105, %102, %99, %93, %90, %87, %81, %60, %57, %54, %51, %43, %36, %27, %20, %12, %9, %5
  %168 = phi float [ 0.000000e+00, %4 ], [ %159, %157 ], [ %156, %153 ], [ %152, %149 ], [ %148, %145 ], [ %144, %142 ], [ %141, %139 ], [ %138, %130 ], [ %3, %129 ], [ %128, %122 ], [ %121, %115 ], [ %114, %112 ], [ %111, %105 ], [ %104, %102 ], [ %101, %99 ], [ %98, %93 ], [ %92, %90 ], [ %89, %87 ], [ %86, %81 ], [ %80, %71 ], [ 0.000000e+00, %67 ], [ %66, %60 ], [ %59, %57 ], [ %56, %54 ], [ %53, %51 ], [ %50, %43 ], [ %42, %36 ], [ %35, %27 ], [ %26, %20 ], [ %19, %12 ], [ %11, %9 ], [ %8, %5 ], [ %166, %160 ]
  ret float %168
}

declare ptr @GetNextImageInList(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @IntensityCompare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !99
  %5 = icmp eq i32 %4, 2
  %6 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %7 = load float, ptr %6, align 8, !tbaa !78
  br i1 %5, label %20, label %8

8:                                                ; preds = %2
  %9 = fpext float %7 to double
  %10 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %11 = load float, ptr %10, align 4, !tbaa !80
  %12 = fpext float %11 to double
  %13 = fmul double %12, 0x3FE6E29307AF20EA
  %14 = tail call double @llvm.fmuladd.f64(double %9, double 2.126560e-01, double %13)
  %15 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %16 = load float, ptr %15, align 8, !tbaa !81
  %17 = fpext float %16 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 7.218600e-02, double %14)
  %19 = fptrunc double %18 to float
  br label %20

20:                                               ; preds = %2, %8
  %21 = phi float [ %19, %8 ], [ %7, %2 ]
  %22 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !99
  %24 = icmp eq i32 %23, 2
  %25 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %26 = load float, ptr %25, align 8, !tbaa !78
  br i1 %24, label %39, label %27

27:                                               ; preds = %20
  %28 = fpext float %26 to double
  %29 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %30 = load float, ptr %29, align 4, !tbaa !80
  %31 = fpext float %30 to double
  %32 = fmul double %31, 0x3FE6E29307AF20EA
  %33 = tail call double @llvm.fmuladd.f64(double %28, double 2.126560e-01, double %32)
  %34 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %35 = load float, ptr %34, align 8, !tbaa !81
  %36 = fpext float %35 to double
  %37 = tail call double @llvm.fmuladd.f64(double %36, double 7.218600e-02, double %33)
  %38 = fptrunc double %37 to float
  br label %39

39:                                               ; preds = %20, %27
  %40 = phi float [ %38, %27 ], [ %26, %20 ]
  %41 = fptosi float %21 to i32
  %42 = fptosi float %40 to i32
  %43 = sub nsw i32 %41, %42
  ret i32 %43
}

; Function Attrs: hot
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: hot
declare ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @FunctionImage(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call i32 @FunctionImageChannel(ptr noundef %0, i32 noundef 47, i32 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4)
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local i32 @FunctionImageChannel(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca [4096 x i8], align 16
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %9 = load i32, ptr %8, align 8, !tbaa !35
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1016, ptr noundef nonnull @.str.2, ptr noundef nonnull %12) #13
  br label %14

14:                                               ; preds = %11, %6
  %15 = tail call i32 @SetImageStorageClass(ptr noundef %0, i32 noundef 1) #13
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  tail call void @InheritException(ptr noundef %5, ptr noundef nonnull %18) #13
  br label %123

19:                                               ; preds = %14
  %20 = tail call i32 @AccelerateFunctionImage(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5) #13
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %123

22:                                               ; preds = %19
  %23 = tail call ptr @AcquireAuthenticCacheView(ptr noundef %0, ptr noundef %5) #13
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %25 = load i64, ptr %24, align 8, !tbaa !59
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %120

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %29 = and i32 %1, 1
  %30 = icmp eq i32 %29, 0
  %31 = and i32 %1, 2
  %32 = icmp eq i32 %31, 0
  %33 = and i32 %1, 4
  %34 = icmp eq i32 %33, 0
  %35 = and i32 %1, 8
  %36 = icmp eq i32 %35, 0
  %37 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %38 = and i32 %1, 32
  %39 = icmp ne i32 %38, 0
  %40 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %41 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %42 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %43

43:                                               ; preds = %27, %114
  %44 = phi i64 [ 0, %27 ], [ %117, %114 ]
  %45 = phi i64 [ 0, %27 ], [ %116, %114 ]
  %46 = phi i32 [ 1, %27 ], [ %115, %114 ]
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %114, label %48

48:                                               ; preds = %43
  %49 = load i64, ptr %28, align 8, !tbaa !60
  %50 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %23, i64 noundef 0, i64 noundef %44, i64 noundef %49, i64 noundef 1, ptr noundef %5) #15
  %51 = icmp eq ptr %50, null
  br i1 %51, label %114, label %52

52:                                               ; preds = %48
  %53 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %23) #13
  %54 = load i64, ptr %28, align 8, !tbaa !60
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %99

56:                                               ; preds = %52
  %57 = icmp ne ptr %53, null
  %58 = select i1 %39, i1 %57, i1 false
  br label %59

59:                                               ; preds = %56, %94
  %60 = phi ptr [ %50, %56 ], [ %95, %94 ]
  %61 = phi i64 [ 0, %56 ], [ %96, %94 ]
  br i1 %30, label %66, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct._PixelPacket, ptr %60, i64 0, i32 2
  %64 = load i16, ptr %63, align 2, !tbaa !61
  %65 = call fastcc zeroext i16 @ApplyFunction(i16 noundef zeroext %64, i32 noundef %2, i64 noundef %3, ptr noundef %4)
  store i16 %65, ptr %63, align 2, !tbaa !61
  br label %66

66:                                               ; preds = %62, %59
  br i1 %32, label %71, label %67

67:                                               ; preds = %66
  %68 = getelementptr inbounds %struct._PixelPacket, ptr %60, i64 0, i32 1
  %69 = load i16, ptr %68, align 2, !tbaa !62
  %70 = call fastcc zeroext i16 @ApplyFunction(i16 noundef zeroext %69, i32 noundef %2, i64 noundef %3, ptr noundef %4)
  store i16 %70, ptr %68, align 2, !tbaa !62
  br label %71

71:                                               ; preds = %67, %66
  br i1 %34, label %75, label %72

72:                                               ; preds = %71
  %73 = load i16, ptr %60, align 2, !tbaa !63
  %74 = call fastcc zeroext i16 @ApplyFunction(i16 noundef zeroext %73, i32 noundef %2, i64 noundef %3, ptr noundef %4)
  store i16 %74, ptr %60, align 2, !tbaa !63
  br label %75

75:                                               ; preds = %72, %71
  br i1 %36, label %89, label %76

76:                                               ; preds = %75
  %77 = load i32, ptr %37, align 8, !tbaa !64
  %78 = icmp eq i32 %77, 0
  %79 = getelementptr inbounds %struct._PixelPacket, ptr %60, i64 0, i32 3
  %80 = load i16, ptr %79, align 2, !tbaa !65
  br i1 %78, label %81, label %83

81:                                               ; preds = %76
  %82 = call fastcc zeroext i16 @ApplyFunction(i16 noundef zeroext %80, i32 noundef %2, i64 noundef %3, ptr noundef %4)
  br label %87

83:                                               ; preds = %76
  %84 = xor i16 %80, -1
  %85 = call fastcc zeroext i16 @ApplyFunction(i16 noundef zeroext %84, i32 noundef %2, i64 noundef %3, ptr noundef %4)
  %86 = xor i16 %85, -1
  br label %87

87:                                               ; preds = %83, %81
  %88 = phi i16 [ %82, %81 ], [ %86, %83 ]
  store i16 %88, ptr %79, align 2, !tbaa !65
  br label %89

89:                                               ; preds = %87, %75
  br i1 %58, label %90, label %94

90:                                               ; preds = %89
  %91 = getelementptr inbounds i16, ptr %53, i64 %61
  %92 = load i16, ptr %91, align 2, !tbaa !66
  %93 = call fastcc zeroext i16 @ApplyFunction(i16 noundef zeroext %92, i32 noundef %2, i64 noundef %3, ptr noundef %4)
  store i16 %93, ptr %91, align 2, !tbaa !66
  br label %94

94:                                               ; preds = %90, %89
  %95 = getelementptr inbounds %struct._PixelPacket, ptr %60, i64 1
  %96 = add nuw nsw i64 %61, 1
  %97 = load i64, ptr %28, align 8, !tbaa !60
  %98 = icmp slt i64 %96, %97
  br i1 %98, label %59, label %99, !llvm.loop !100

99:                                               ; preds = %94, %52
  %100 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %23, ptr noundef %5) #15
  %101 = icmp ne i32 %100, 0
  %102 = zext i1 %101 to i32
  %103 = load ptr, ptr %40, align 8, !tbaa !68
  %104 = icmp eq ptr %103, null
  br i1 %104, label %114, label %105

105:                                              ; preds = %99
  %106 = add nsw i64 %45, 1
  %107 = load i64, ptr %24, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %7) #13
  %108 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %7, i64 noundef 4096, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.6, ptr noundef nonnull %41) #13
  %109 = load ptr, ptr %40, align 8, !tbaa !68
  %110 = load ptr, ptr %42, align 8, !tbaa !69
  %111 = call i32 %109(ptr noundef nonnull %7, i64 noundef %45, i64 noundef %107, ptr noundef %110) #13
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %7) #13
  %112 = icmp eq i32 %111, 0
  %113 = select i1 %112, i32 0, i32 %102
  br label %114

114:                                              ; preds = %99, %105, %48, %43
  %115 = phi i32 [ 0, %43 ], [ 0, %48 ], [ %113, %105 ], [ %102, %99 ]
  %116 = phi i64 [ %45, %43 ], [ %45, %48 ], [ %106, %105 ], [ %45, %99 ]
  %117 = add nuw nsw i64 %44, 1
  %118 = load i64, ptr %24, align 8, !tbaa !59
  %119 = icmp slt i64 %117, %118
  br i1 %119, label %43, label %120, !llvm.loop !101

120:                                              ; preds = %114, %22
  %121 = phi i32 [ 1, %22 ], [ %115, %114 ]
  %122 = call ptr @DestroyCacheView(ptr noundef %23) #13
  br label %123

123:                                              ; preds = %19, %120, %17
  %124 = phi i32 [ 0, %17 ], [ %121, %120 ], [ %20, %19 ]
  ret i32 %124
}

declare i32 @AccelerateFunctionImage(ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind memory(write, argmem: readwrite) uwtable
define internal fastcc zeroext i16 @ApplyFunction(i16 noundef zeroext %0, i32 noundef %1, i64 noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #7 {
  switch i32 %1, label %139 [
    i32 1, label %5
    i32 2, label %22
    i32 3, label %55
    i32 4, label %103
  ]

5:                                                ; preds = %4
  %6 = icmp sgt i64 %2, 0
  br i1 %6, label %7, label %139

7:                                                ; preds = %5
  %8 = uitofp i16 %0 to double
  br label %9

9:                                                ; preds = %7, %9
  %10 = phi float [ 0.000000e+00, %7 ], [ %17, %9 ]
  %11 = phi i64 [ 0, %7 ], [ %18, %9 ]
  %12 = fpext float %10 to double
  %13 = fmul double %12, 0x3EF0001000100010
  %14 = getelementptr inbounds double, ptr %3, i64 %11
  %15 = load double, ptr %14, align 8, !tbaa !73
  %16 = tail call double @llvm.fmuladd.f64(double %13, double %8, double %15)
  %17 = fptrunc double %16 to float
  %18 = add nuw nsw i64 %11, 1
  %19 = icmp eq i64 %18, %2
  br i1 %19, label %20, label %9, !llvm.loop !102

20:                                               ; preds = %9
  %21 = fmul float %17, 6.553500e+04
  br label %139

22:                                               ; preds = %4
  %23 = icmp eq i64 %2, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %22
  %25 = load double, ptr %3, align 8, !tbaa !73
  %26 = fmul double %25, 0x3EF0001000100010
  br label %27

27:                                               ; preds = %22, %24
  %28 = phi double [ %26, %24 ], [ 0x3EF0001000100010, %22 ]
  %29 = icmp ugt i64 %2, 1
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = getelementptr inbounds double, ptr %3, i64 1
  %32 = load double, ptr %31, align 8, !tbaa !73
  br label %33

33:                                               ; preds = %27, %30
  %34 = phi double [ %32, %30 ], [ 0.000000e+00, %27 ]
  %35 = icmp ugt i64 %2, 2
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = getelementptr inbounds double, ptr %3, i64 2
  %38 = load double, ptr %37, align 8, !tbaa !73
  br label %39

39:                                               ; preds = %33, %36
  %40 = phi double [ %38, %36 ], [ 5.000000e-01, %33 ]
  %41 = icmp ugt i64 %2, 3
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = getelementptr inbounds double, ptr %3, i64 3
  %44 = load double, ptr %43, align 8, !tbaa !73
  br label %45

45:                                               ; preds = %39, %42
  %46 = phi double [ %44, %42 ], [ 5.000000e-01, %39 ]
  %47 = uitofp i16 %0 to double
  %48 = fdiv double %34, 3.600000e+02
  %49 = tail call double @llvm.fmuladd.f64(double %28, double %47, double %48)
  %50 = fmul double %49, 0x401921FB54442D18
  %51 = tail call double @sin(double noundef %50) #13
  %52 = tail call double @llvm.fmuladd.f64(double %40, double %51, double %46)
  %53 = fmul double %52, 6.553500e+04
  %54 = fptrunc double %53 to float
  br label %139

55:                                               ; preds = %4
  %56 = icmp eq i64 %2, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %55
  %58 = load double, ptr %3, align 8, !tbaa !73
  br label %59

59:                                               ; preds = %55, %57
  %60 = phi double [ %58, %57 ], [ 1.000000e+00, %55 ]
  %61 = icmp ugt i64 %2, 1
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = getelementptr inbounds double, ptr %3, i64 1
  %64 = load double, ptr %63, align 8, !tbaa !73
  br label %65

65:                                               ; preds = %59, %62
  %66 = phi double [ %64, %62 ], [ 5.000000e-01, %59 ]
  %67 = icmp ugt i64 %2, 2
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = getelementptr inbounds double, ptr %3, i64 2
  %70 = load double, ptr %69, align 8, !tbaa !73
  br label %71

71:                                               ; preds = %65, %68
  %72 = phi double [ %70, %68 ], [ 1.000000e+00, %65 ]
  %73 = icmp ugt i64 %2, 3
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = getelementptr inbounds double, ptr %3, i64 3
  %76 = load double, ptr %75, align 8, !tbaa !73
  br label %77

77:                                               ; preds = %71, %74
  %78 = phi double [ %76, %74 ], [ 5.000000e-01, %71 ]
  %79 = fdiv double 2.000000e+00, %60
  %80 = uitofp i16 %0 to double
  %81 = fneg double %66
  %82 = tail call double @llvm.fmuladd.f64(double %80, double 0x3EF0001000100010, double %81)
  %83 = fmul double %79, %82
  %84 = fptrunc double %83 to float
  %85 = fpext float %84 to double
  %86 = fcmp ugt float %84, -1.000000e+00
  br i1 %86, label %90, label %87

87:                                               ; preds = %77
  %88 = fmul double %72, 5.000000e-01
  %89 = fsub double %78, %88
  br label %99

90:                                               ; preds = %77
  %91 = fcmp ult float %84, 1.000000e+00
  br i1 %91, label %95, label %92

92:                                               ; preds = %90
  %93 = fmul double %72, 5.000000e-01
  %94 = fadd double %93, %78
  br label %99

95:                                               ; preds = %90
  %96 = fdiv double %72, 0x400921FB54442D18
  %97 = tail call double @asin(double noundef %85) #13
  %98 = tail call double @llvm.fmuladd.f64(double %96, double %97, double %78)
  br label %99

99:                                               ; preds = %92, %95, %87
  %100 = phi double [ %89, %87 ], [ %94, %92 ], [ %98, %95 ]
  %101 = fptrunc double %100 to float
  %102 = fmul float %101, 6.553500e+04
  br label %139

103:                                              ; preds = %4
  %104 = icmp eq i64 %2, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %103
  %106 = load double, ptr %3, align 8, !tbaa !73
  %107 = fmul double %106, 0x400921FB54442D18
  br label %108

108:                                              ; preds = %103, %105
  %109 = phi double [ %107, %105 ], [ 0x400921FB54442D18, %103 ]
  %110 = icmp ugt i64 %2, 1
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = getelementptr inbounds double, ptr %3, i64 1
  %113 = load double, ptr %112, align 8, !tbaa !73
  br label %114

114:                                              ; preds = %108, %111
  %115 = phi double [ %113, %111 ], [ 5.000000e-01, %108 ]
  %116 = icmp ugt i64 %2, 2
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = getelementptr inbounds double, ptr %3, i64 2
  %119 = load double, ptr %118, align 8, !tbaa !73
  br label %120

120:                                              ; preds = %114, %117
  %121 = phi double [ %119, %117 ], [ 1.000000e+00, %114 ]
  %122 = icmp ugt i64 %2, 3
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = getelementptr inbounds double, ptr %3, i64 3
  %125 = load double, ptr %124, align 8, !tbaa !73
  br label %126

126:                                              ; preds = %120, %123
  %127 = phi double [ %125, %123 ], [ 5.000000e-01, %120 ]
  %128 = uitofp i16 %0 to double
  %129 = fneg double %115
  %130 = tail call double @llvm.fmuladd.f64(double %128, double 0x3EF0001000100010, double %129)
  %131 = fmul double %109, %130
  %132 = fptrunc double %131 to float
  %133 = fdiv double %121, 0x400921FB54442D18
  %134 = fpext float %132 to double
  %135 = tail call double @atan(double noundef %134) #13
  %136 = tail call double @llvm.fmuladd.f64(double %133, double %135, double %127)
  %137 = fmul double %136, 6.553500e+04
  %138 = fptrunc double %137 to float
  br label %139

139:                                              ; preds = %5, %20, %4, %126, %99, %45
  %140 = phi float [ 0.000000e+00, %4 ], [ %138, %126 ], [ %102, %99 ], [ %54, %45 ], [ 0.000000e+00, %5 ], [ %21, %20 ]
  %141 = fcmp ugt float %140, 0.000000e+00
  br i1 %141, label %142, label %147

142:                                              ; preds = %139
  %143 = fcmp ult float %140, 6.553500e+04
  br i1 %143, label %144, label %147

144:                                              ; preds = %142
  %145 = fadd float %140, 5.000000e-01
  %146 = fptoui float %145 to i16
  br label %147

147:                                              ; preds = %139, %142, %144
  %148 = phi i16 [ %146, %144 ], [ 0, %139 ], [ -1, %142 ]
  ret i16 %148
}

; Function Attrs: nounwind uwtable
define dso_local i32 @GetImageExtrema(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !35
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1152, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #13
  br label %13

13:                                               ; preds = %4, %10
  %14 = call i32 @GetImageChannelRange(ptr noundef %0, i32 noundef 47, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef %3), !range !34
  %15 = load double, ptr %6, align 8, !tbaa !73
  %16 = fadd double %15, -5.000000e-01
  %17 = tail call double @llvm.ceil.f64(double %16)
  %18 = fptoui double %17 to i64
  store i64 %18, ptr %1, align 8, !tbaa !74
  %19 = load double, ptr %5, align 8, !tbaa !73
  %20 = fadd double %19, 5.000000e-01
  %21 = tail call double @llvm.floor.f64(double %20)
  %22 = fptoui double %21 to i64
  store i64 %22, ptr %2, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define dso_local i32 @GetImageChannelExtrema(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %9 = load i32, ptr %8, align 8, !tbaa !35
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1152, ptr noundef nonnull @.str.2, ptr noundef nonnull %12) #13
  br label %14

14:                                               ; preds = %11, %5
  %15 = call i32 @GetImageChannelRange(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef %4), !range !34
  %16 = load double, ptr %7, align 8, !tbaa !73
  %17 = fadd double %16, -5.000000e-01
  %18 = tail call double @llvm.ceil.f64(double %17)
  %19 = fptoui double %18 to i64
  store i64 %19, ptr %2, align 8, !tbaa !74
  %20 = load double, ptr %6, align 8, !tbaa !73
  %21 = fadd double %20, 5.000000e-01
  %22 = tail call double @llvm.floor.f64(double %21)
  %23 = fptoui double %22 to i64
  store i64 %23, ptr %3, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define dso_local i32 @GetImageChannelRange(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #13
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !35
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2029, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #13
  br label %13

13:                                               ; preds = %10, %5
  store double 0xFFEFFFFFFFFFFFFF, ptr %3, align 8, !tbaa !73
  store double 0x7FEFFFFFFFFFFFFF, ptr %2, align 8, !tbaa !73
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %6) #13
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %16 = load i64, ptr %15, align 8, !tbaa !59
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %135

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 5
  %20 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 6
  %21 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 7
  %22 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 8
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %24 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 9
  %25 = and i32 %1, 1
  %26 = icmp eq i32 %25, 0
  %27 = and i32 %1, 2
  %28 = icmp eq i32 %27, 0
  %29 = and i32 %1, 4
  %30 = icmp eq i32 %29, 0
  %31 = and i32 %1, 8
  %32 = icmp eq i32 %31, 0
  %33 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %34 = and i32 %1, 32
  %35 = icmp ne i32 %34, 0
  br label %36

36:                                               ; preds = %18, %131
  %37 = phi i64 [ 0, %18 ], [ %132, %131 ]
  %38 = load i64, ptr %14, align 8, !tbaa !60
  %39 = call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef 0, i64 noundef %37, i64 noundef %38, i64 noundef 1, ptr noundef %4) #13
  %40 = icmp eq ptr %39, null
  br i1 %40, label %135, label %41

41:                                               ; preds = %36
  %42 = call ptr @GetVirtualIndexQueue(ptr noundef %0) #13
  %43 = load i64, ptr %14, align 8, !tbaa !60
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %130

45:                                               ; preds = %41
  %46 = load i32, ptr %23, align 4, !tbaa !83
  %47 = icmp eq i32 %46, 12
  %48 = icmp ne ptr %42, null
  %49 = and i1 %48, %47
  %50 = and i1 %35, %47
  %51 = load float, ptr %24, align 8, !tbaa !84
  br label %52

52:                                               ; preds = %45, %121
  %53 = phi float [ %51, %45 ], [ %68, %121 ]
  %54 = phi i64 [ 0, %45 ], [ %123, %121 ]
  %55 = phi ptr [ %39, %45 ], [ %122, %121 ]
  %56 = getelementptr inbounds %struct._PixelPacket, ptr %55, i64 0, i32 2
  %57 = load i16, ptr %56, align 2, !tbaa !61
  %58 = getelementptr inbounds %struct._PixelPacket, ptr %55, i64 0, i32 1
  %59 = load i16, ptr %58, align 2, !tbaa !62
  %60 = load i16, ptr %55, align 2, !tbaa !63
  %61 = getelementptr inbounds %struct._PixelPacket, ptr %55, i64 0, i32 3
  %62 = load i16, ptr %61, align 2, !tbaa !65
  br i1 %49, label %63, label %67

63:                                               ; preds = %52
  %64 = getelementptr inbounds i16, ptr %42, i64 %54
  %65 = load i16, ptr %64, align 2, !tbaa !66
  %66 = uitofp i16 %65 to float
  store float %66, ptr %24, align 8, !tbaa !84
  br label %67

67:                                               ; preds = %52, %63
  %68 = phi float [ %53, %52 ], [ %66, %63 ]
  br i1 %26, label %78, label %69

69:                                               ; preds = %67
  %70 = uitofp i16 %57 to double
  %71 = load double, ptr %2, align 8, !tbaa !73
  %72 = fcmp ogt double %71, %70
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  store double %70, ptr %2, align 8, !tbaa !73
  br label %74

74:                                               ; preds = %73, %69
  %75 = load double, ptr %3, align 8, !tbaa !73
  %76 = fcmp olt double %75, %70
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  store double %70, ptr %3, align 8, !tbaa !73
  br label %78

78:                                               ; preds = %74, %77, %67
  br i1 %28, label %88, label %79

79:                                               ; preds = %78
  %80 = uitofp i16 %59 to double
  %81 = load double, ptr %2, align 8, !tbaa !73
  %82 = fcmp ogt double %81, %80
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  store double %80, ptr %2, align 8, !tbaa !73
  br label %84

84:                                               ; preds = %83, %79
  %85 = load double, ptr %3, align 8, !tbaa !73
  %86 = fcmp olt double %85, %80
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  store double %80, ptr %3, align 8, !tbaa !73
  br label %88

88:                                               ; preds = %84, %87, %78
  br i1 %30, label %98, label %89

89:                                               ; preds = %88
  %90 = uitofp i16 %60 to double
  %91 = load double, ptr %2, align 8, !tbaa !73
  %92 = fcmp ogt double %91, %90
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  store double %90, ptr %2, align 8, !tbaa !73
  br label %94

94:                                               ; preds = %93, %89
  %95 = load double, ptr %3, align 8, !tbaa !73
  %96 = fcmp olt double %95, %90
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  store double %90, ptr %3, align 8, !tbaa !73
  br label %98

98:                                               ; preds = %94, %97, %88
  br i1 %32, label %111, label %99

99:                                               ; preds = %98
  %100 = load i32, ptr %33, align 8, !tbaa !64
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %111, label %102

102:                                              ; preds = %99
  %103 = uitofp i16 %62 to double
  %104 = load double, ptr %2, align 8, !tbaa !73
  %105 = fcmp ogt double %104, %103
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  store double %103, ptr %2, align 8, !tbaa !73
  br label %107

107:                                              ; preds = %106, %102
  %108 = load double, ptr %3, align 8, !tbaa !73
  %109 = fcmp olt double %108, %103
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  store double %103, ptr %3, align 8, !tbaa !73
  br label %111

111:                                              ; preds = %107, %110, %99, %98
  br i1 %50, label %112, label %121

112:                                              ; preds = %111
  %113 = fpext float %68 to double
  %114 = load double, ptr %2, align 8, !tbaa !73
  %115 = fcmp ogt double %114, %113
  br i1 %115, label %116, label %117

116:                                              ; preds = %112
  store double %113, ptr %2, align 8, !tbaa !73
  br label %117

117:                                              ; preds = %116, %112
  %118 = load double, ptr %3, align 8, !tbaa !73
  %119 = fcmp olt double %118, %113
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  store double %113, ptr %3, align 8, !tbaa !73
  br label %121

121:                                              ; preds = %111, %117, %120
  %122 = getelementptr inbounds %struct._PixelPacket, ptr %55, i64 1
  %123 = add nuw nsw i64 %54, 1
  %124 = icmp eq i64 %123, %43
  br i1 %124, label %125, label %52, !llvm.loop !103

125:                                              ; preds = %121
  %126 = uitofp i16 %57 to float
  %127 = uitofp i16 %59 to float
  %128 = uitofp i16 %60 to float
  %129 = uitofp i16 %62 to float
  store float %126, ptr %19, align 8, !tbaa !78
  store float %127, ptr %20, align 4, !tbaa !80
  store float %128, ptr %21, align 8, !tbaa !81
  store float %129, ptr %22, align 4, !tbaa !82
  br label %130

130:                                              ; preds = %125, %41
  br i1 %40, label %135, label %131

131:                                              ; preds = %130
  %132 = add nuw nsw i64 %37, 1
  %133 = load i64, ptr %15, align 8, !tbaa !59
  %134 = icmp slt i64 %132, %133
  br i1 %134, label %36, label %135, !llvm.loop !104

135:                                              ; preds = %131, %130, %36, %13
  %136 = phi i64 [ 0, %13 ], [ %132, %131 ], [ %37, %130 ], [ %37, %36 ]
  %137 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %138 = load i64, ptr %137, align 8, !tbaa !59
  %139 = icmp eq i64 %136, %138
  %140 = zext i1 %139 to i32
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #13
  ret i32 %140
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #8

; Function Attrs: nounwind uwtable
define dso_local i32 @GetImageKurtosis(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @GetImageChannelKurtosis(ptr noundef %0, i32 noundef 47, ptr noundef %1, ptr noundef %2, ptr noundef %3), !range !34
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local i32 @GetImageChannelKurtosis(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !35
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1222, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #13
  br label %12

12:                                               ; preds = %9, %5
  store double 0.000000e+00, ptr %2, align 8, !tbaa !73
  store double 0.000000e+00, ptr %3, align 8, !tbaa !73
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %14 = load i64, ptr %13, align 8, !tbaa !59
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %212

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %18 = and i32 %1, 1
  %19 = icmp eq i32 %18, 0
  %20 = and i32 %1, 2
  %21 = icmp eq i32 %20, 0
  %22 = and i32 %1, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %1, 8
  %25 = icmp eq i32 %24, 0
  %26 = and i32 %1, 32
  %27 = icmp eq i32 %26, 0
  %28 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  br label %29

29:                                               ; preds = %16, %208
  %30 = phi i64 [ 0, %16 ], [ %209, %208 ]
  %31 = phi double [ 0.000000e+00, %16 ], [ %207, %208 ]
  %32 = phi double [ 0.000000e+00, %16 ], [ %206, %208 ]
  %33 = phi double [ 0.000000e+00, %16 ], [ %205, %208 ]
  %34 = phi double [ 0.000000e+00, %16 ], [ %204, %208 ]
  %35 = phi double [ 0.000000e+00, %16 ], [ %203, %208 ]
  %36 = load i64, ptr %17, align 8, !tbaa !60
  %37 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef 0, i64 noundef %30, i64 noundef %36, i64 noundef 1, ptr noundef %4) #13
  %38 = icmp eq ptr %37, null
  br i1 %38, label %202, label %39

39:                                               ; preds = %29
  %40 = tail call ptr @GetVirtualIndexQueue(ptr noundef %0) #13
  %41 = load i64, ptr %17, align 8, !tbaa !60
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %202

43:                                               ; preds = %39
  %44 = icmp eq ptr %40, null
  br label %45

45:                                               ; preds = %43, %193
  %46 = phi i64 [ 0, %43 ], [ %200, %193 ]
  %47 = phi ptr [ %37, %43 ], [ %199, %193 ]
  %48 = phi double [ %31, %43 ], [ %198, %193 ]
  %49 = phi double [ %32, %43 ], [ %197, %193 ]
  %50 = phi double [ %33, %43 ], [ %196, %193 ]
  %51 = phi double [ %34, %43 ], [ %195, %193 ]
  %52 = phi double [ %35, %43 ], [ %194, %193 ]
  br i1 %19, label %64, label %53

53:                                               ; preds = %45
  %54 = getelementptr inbounds %struct._PixelPacket, ptr %47, i64 0, i32 2
  %55 = load i16, ptr %54, align 2, !tbaa !61
  %56 = uitofp i16 %55 to double
  %57 = fadd double %51, %56
  %58 = tail call double @llvm.fmuladd.f64(double %56, double %56, double %50)
  %59 = fmul double %56, %56
  %60 = tail call double @llvm.fmuladd.f64(double %59, double %56, double %49)
  %61 = fmul double %59, %56
  %62 = tail call double @llvm.fmuladd.f64(double %61, double %56, double %48)
  %63 = fadd double %52, 1.000000e+00
  br label %64

64:                                               ; preds = %53, %45
  %65 = phi double [ %63, %53 ], [ %52, %45 ]
  %66 = phi double [ %57, %53 ], [ %51, %45 ]
  %67 = phi double [ %58, %53 ], [ %50, %45 ]
  %68 = phi double [ %60, %53 ], [ %49, %45 ]
  %69 = phi double [ %62, %53 ], [ %48, %45 ]
  br i1 %21, label %81, label %70

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct._PixelPacket, ptr %47, i64 0, i32 1
  %72 = load i16, ptr %71, align 2, !tbaa !62
  %73 = uitofp i16 %72 to double
  %74 = fadd double %66, %73
  %75 = tail call double @llvm.fmuladd.f64(double %73, double %73, double %67)
  %76 = fmul double %73, %73
  %77 = tail call double @llvm.fmuladd.f64(double %76, double %73, double %68)
  %78 = fmul double %76, %73
  %79 = tail call double @llvm.fmuladd.f64(double %78, double %73, double %69)
  %80 = fadd double %65, 1.000000e+00
  br label %81

81:                                               ; preds = %70, %64
  %82 = phi double [ %80, %70 ], [ %65, %64 ]
  %83 = phi double [ %74, %70 ], [ %66, %64 ]
  %84 = phi double [ %75, %70 ], [ %67, %64 ]
  %85 = phi double [ %77, %70 ], [ %68, %64 ]
  %86 = phi double [ %79, %70 ], [ %69, %64 ]
  br i1 %23, label %97, label %87

87:                                               ; preds = %81
  %88 = load i16, ptr %47, align 2, !tbaa !63
  %89 = uitofp i16 %88 to double
  %90 = fadd double %83, %89
  %91 = tail call double @llvm.fmuladd.f64(double %89, double %89, double %84)
  %92 = fmul double %89, %89
  %93 = tail call double @llvm.fmuladd.f64(double %92, double %89, double %85)
  %94 = fmul double %92, %89
  %95 = tail call double @llvm.fmuladd.f64(double %94, double %89, double %86)
  %96 = fadd double %82, 1.000000e+00
  br label %97

97:                                               ; preds = %87, %81
  %98 = phi double [ %96, %87 ], [ %82, %81 ]
  %99 = phi double [ %90, %87 ], [ %83, %81 ]
  %100 = phi double [ %91, %87 ], [ %84, %81 ]
  %101 = phi double [ %93, %87 ], [ %85, %81 ]
  %102 = phi double [ %95, %87 ], [ %86, %81 ]
  br i1 %25, label %114, label %103

103:                                              ; preds = %97
  %104 = getelementptr inbounds %struct._PixelPacket, ptr %47, i64 0, i32 3
  %105 = load i16, ptr %104, align 2, !tbaa !65
  %106 = uitofp i16 %105 to double
  %107 = fadd double %99, %106
  %108 = tail call double @llvm.fmuladd.f64(double %106, double %106, double %100)
  %109 = fmul double %106, %106
  %110 = tail call double @llvm.fmuladd.f64(double %109, double %106, double %101)
  %111 = fmul double %109, %106
  %112 = tail call double @llvm.fmuladd.f64(double %111, double %106, double %102)
  %113 = fadd double %98, 1.000000e+00
  br label %114

114:                                              ; preds = %103, %97
  %115 = phi double [ %113, %103 ], [ %98, %97 ]
  %116 = phi double [ %107, %103 ], [ %99, %97 ]
  %117 = phi double [ %108, %103 ], [ %100, %97 ]
  %118 = phi double [ %110, %103 ], [ %101, %97 ]
  %119 = phi double [ %112, %103 ], [ %102, %97 ]
  br i1 %27, label %193, label %120

120:                                              ; preds = %114
  %121 = load i32, ptr %28, align 4, !tbaa !83
  %122 = icmp eq i32 %121, 12
  br i1 %122, label %123, label %193

123:                                              ; preds = %120
  %124 = getelementptr inbounds i16, ptr %40, i64 %46
  br i1 %44, label %128, label %125

125:                                              ; preds = %123
  %126 = load i16, ptr %124, align 2, !tbaa !66
  %127 = zext i16 %126 to i32
  br label %128

128:                                              ; preds = %123, %125
  %129 = phi i32 [ %127, %125 ], [ 0, %123 ]
  %130 = sitofp i32 %129 to double
  %131 = fadd double %116, %130
  br i1 %44, label %135, label %132

132:                                              ; preds = %128
  %133 = load i16, ptr %124, align 2, !tbaa !66
  %134 = zext i16 %133 to i32
  br label %135

135:                                              ; preds = %128, %132
  %136 = phi i32 [ %134, %132 ], [ 0, %128 ]
  %137 = sitofp i32 %136 to double
  br i1 %44, label %141, label %138

138:                                              ; preds = %135
  %139 = load i16, ptr %124, align 2, !tbaa !66
  %140 = zext i16 %139 to i32
  br label %141

141:                                              ; preds = %135, %138
  %142 = phi i32 [ %140, %138 ], [ 0, %135 ]
  %143 = sitofp i32 %142 to double
  %144 = tail call double @llvm.fmuladd.f64(double %137, double %143, double %117)
  br i1 %44, label %148, label %145

145:                                              ; preds = %141
  %146 = load i16, ptr %124, align 2, !tbaa !66
  %147 = zext i16 %146 to i32
  br label %148

148:                                              ; preds = %141, %145
  %149 = phi i32 [ %147, %145 ], [ 0, %141 ]
  %150 = sitofp i32 %149 to double
  br i1 %44, label %154, label %151

151:                                              ; preds = %148
  %152 = load i16, ptr %124, align 2, !tbaa !66
  %153 = zext i16 %152 to i32
  br label %154

154:                                              ; preds = %148, %151
  %155 = phi i32 [ %153, %151 ], [ 0, %148 ]
  %156 = sitofp i32 %155 to double
  %157 = fmul double %150, %156
  br i1 %44, label %161, label %158

158:                                              ; preds = %154
  %159 = load i16, ptr %124, align 2, !tbaa !66
  %160 = zext i16 %159 to i32
  br label %161

161:                                              ; preds = %154, %158
  %162 = phi i32 [ %160, %158 ], [ 0, %154 ]
  %163 = sitofp i32 %162 to double
  %164 = tail call double @llvm.fmuladd.f64(double %157, double %163, double %118)
  br i1 %44, label %168, label %165

165:                                              ; preds = %161
  %166 = load i16, ptr %124, align 2, !tbaa !66
  %167 = zext i16 %166 to i32
  br label %168

168:                                              ; preds = %161, %165
  %169 = phi i32 [ %167, %165 ], [ 0, %161 ]
  %170 = sitofp i32 %169 to double
  br i1 %44, label %174, label %171

171:                                              ; preds = %168
  %172 = load i16, ptr %124, align 2, !tbaa !66
  %173 = zext i16 %172 to i32
  br label %174

174:                                              ; preds = %168, %171
  %175 = phi i32 [ %173, %171 ], [ 0, %168 ]
  %176 = sitofp i32 %175 to double
  %177 = fmul double %170, %176
  br i1 %44, label %181, label %178

178:                                              ; preds = %174
  %179 = load i16, ptr %124, align 2, !tbaa !66
  %180 = zext i16 %179 to i32
  br label %181

181:                                              ; preds = %174, %178
  %182 = phi i32 [ %180, %178 ], [ 0, %174 ]
  %183 = sitofp i32 %182 to double
  %184 = fmul double %177, %183
  br i1 %44, label %188, label %185

185:                                              ; preds = %181
  %186 = load i16, ptr %124, align 2, !tbaa !66
  %187 = zext i16 %186 to i32
  br label %188

188:                                              ; preds = %181, %185
  %189 = phi i32 [ %187, %185 ], [ 0, %181 ]
  %190 = sitofp i32 %189 to double
  %191 = tail call double @llvm.fmuladd.f64(double %184, double %190, double %119)
  %192 = fadd double %115, 1.000000e+00
  br label %193

193:                                              ; preds = %188, %120, %114
  %194 = phi double [ %192, %188 ], [ %115, %120 ], [ %115, %114 ]
  %195 = phi double [ %131, %188 ], [ %116, %120 ], [ %116, %114 ]
  %196 = phi double [ %144, %188 ], [ %117, %120 ], [ %117, %114 ]
  %197 = phi double [ %164, %188 ], [ %118, %120 ], [ %118, %114 ]
  %198 = phi double [ %191, %188 ], [ %119, %120 ], [ %119, %114 ]
  %199 = getelementptr inbounds %struct._PixelPacket, ptr %47, i64 1
  %200 = add nuw nsw i64 %46, 1
  %201 = icmp eq i64 %200, %41
  br i1 %201, label %202, label %45, !llvm.loop !105

202:                                              ; preds = %193, %39, %29
  %203 = phi double [ %35, %29 ], [ %35, %39 ], [ %194, %193 ]
  %204 = phi double [ %34, %29 ], [ %34, %39 ], [ %195, %193 ]
  %205 = phi double [ %33, %29 ], [ %33, %39 ], [ %196, %193 ]
  %206 = phi double [ %32, %29 ], [ %32, %39 ], [ %197, %193 ]
  %207 = phi double [ %31, %29 ], [ %31, %39 ], [ %198, %193 ]
  br i1 %38, label %212, label %208

208:                                              ; preds = %202
  %209 = add nuw nsw i64 %30, 1
  %210 = load i64, ptr %13, align 8, !tbaa !59
  %211 = icmp slt i64 %209, %210
  br i1 %211, label %29, label %212, !llvm.loop !106

212:                                              ; preds = %208, %202, %12
  %213 = phi i64 [ 0, %12 ], [ %209, %208 ], [ %30, %202 ]
  %214 = phi double [ 0.000000e+00, %12 ], [ %203, %202 ], [ %203, %208 ]
  %215 = phi double [ 0.000000e+00, %12 ], [ %204, %202 ], [ %204, %208 ]
  %216 = phi double [ 0.000000e+00, %12 ], [ %205, %202 ], [ %205, %208 ]
  %217 = phi double [ 0.000000e+00, %12 ], [ %206, %202 ], [ %206, %208 ]
  %218 = phi double [ 0.000000e+00, %12 ], [ %207, %202 ], [ %207, %208 ]
  %219 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %220 = load i64, ptr %219, align 8, !tbaa !59
  %221 = icmp slt i64 %213, %220
  br i1 %221, label %262, label %222

222:                                              ; preds = %212
  %223 = fcmp une double %214, 0.000000e+00
  br i1 %223, label %224, label %229

224:                                              ; preds = %222
  %225 = fdiv double %215, %214
  %226 = fdiv double %216, %214
  %227 = fdiv double %217, %214
  %228 = fdiv double %218, %214
  br label %229

229:                                              ; preds = %224, %222
  %230 = phi double [ %225, %224 ], [ %215, %222 ]
  %231 = phi double [ %226, %224 ], [ %216, %222 ]
  %232 = phi double [ %227, %224 ], [ %217, %222 ]
  %233 = phi double [ %228, %224 ], [ %218, %222 ]
  %234 = fneg double %230
  %235 = tail call double @llvm.fmuladd.f64(double %234, double %230, double %231)
  %236 = tail call double @sqrt(double noundef %235) #13
  %237 = fcmp une double %236, 0.000000e+00
  br i1 %237, label %238, label %258

238:                                              ; preds = %229
  %239 = fmul double %230, -4.000000e+00
  %240 = tail call double @llvm.fmuladd.f64(double %239, double %232, double %233)
  %241 = fmul double %230, 6.000000e+00
  %242 = fmul double %230, %241
  %243 = tail call double @llvm.fmuladd.f64(double %242, double %231, double %240)
  %244 = fmul double %230, -3.000000e+00
  %245 = fmul double %230, %244
  %246 = fmul double %230, %245
  %247 = tail call double @llvm.fmuladd.f64(double %246, double %230, double %243)
  %248 = fmul double %236, %236
  %249 = fmul double %236, %248
  %250 = fmul double %236, %249
  %251 = fdiv double %247, %250
  %252 = fadd double %251, -3.000000e+00
  store double %252, ptr %2, align 8, !tbaa !73
  %253 = tail call double @llvm.fmuladd.f64(double %244, double %231, double %232)
  %254 = fmul double %230, 2.000000e+00
  %255 = fmul double %230, %254
  %256 = tail call double @llvm.fmuladd.f64(double %255, double %230, double %253)
  %257 = fdiv double %256, %249
  store double %257, ptr %3, align 8, !tbaa !73
  br label %258

258:                                              ; preds = %238, %229
  %259 = load i64, ptr %219, align 8, !tbaa !59
  %260 = icmp eq i64 %213, %259
  %261 = zext i1 %260 to i32
  br label %262

262:                                              ; preds = %212, %258
  %263 = phi i32 [ %261, %258 ], [ 0, %212 ]
  ret i32 %263
}

declare ptr @GetVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @GetVirtualIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @GetImageMean(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @GetImageChannelMean(ptr noundef %0, i32 noundef 47, ptr noundef %1, ptr noundef %2, ptr noundef %3), !range !34
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @GetImageChannelMean(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !35
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1383, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #13
  br label %12

12:                                               ; preds = %9, %5
  %13 = tail call ptr @GetImageChannelStatistics(ptr noundef %0, ptr noundef %4)
  %14 = icmp eq ptr %13, null
  br i1 %14, label %112, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct._ChannelStatistics, ptr %13, i64 47, i32 7
  store double 0.000000e+00, ptr %16, align 8, !tbaa !107
  %17 = getelementptr inbounds %struct._ChannelStatistics, ptr %13, i64 47, i32 9
  store double 0.000000e+00, ptr %17, align 8, !tbaa !109
  %18 = and i32 %1, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct._ChannelStatistics, ptr %13, i64 1, i32 7
  %22 = load double, ptr %21, align 8, !tbaa !107
  %23 = fadd double %22, 0.000000e+00
  store double %23, ptr %16, align 8, !tbaa !107
  %24 = getelementptr inbounds %struct._ChannelStatistics, ptr %13, i64 1, i32 8
  %25 = load double, ptr %24, align 8, !tbaa !110
  %26 = fneg double %22
  %27 = tail call double @llvm.fmuladd.f64(double %26, double %22, double %25)
  %28 = fadd double %27, 0.000000e+00
  store double %28, ptr %17, align 8, !tbaa !109
  br label %29

29:                                               ; preds = %20, %15
  %30 = phi i64 [ 1, %20 ], [ 0, %15 ]
  %31 = and i32 %1, 2
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct._ChannelStatistics, ptr %13, i64 2, i32 7
  %35 = load double, ptr %34, align 8, !tbaa !107
  %36 = load double, ptr %16, align 8, !tbaa !107
  %37 = fadd double %35, %36
  store double %37, ptr %16, align 8, !tbaa !107
  %38 = getelementptr inbounds %struct._ChannelStatistics, ptr %13, i64 2, i32 8
  %39 = load double, ptr %38, align 8, !tbaa !110
  %40 = fneg double %35
  %41 = tail call double @llvm.fmuladd.f64(double %40, double %35, double %39)
  %42 = load double, ptr %17, align 8, !tbaa !109
  %43 = fadd double %42, %41
  store double %43, ptr %17, align 8, !tbaa !109
  %44 = add nuw nsw i64 %30, 1
  br label %45

45:                                               ; preds = %33, %29
  %46 = phi i64 [ %44, %33 ], [ %30, %29 ]
  %47 = and i32 %1, 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %61, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct._ChannelStatistics, ptr %13, i64 4, i32 7
  %51 = load double, ptr %50, align 8, !tbaa !107
  %52 = load double, ptr %16, align 8, !tbaa !107
  %53 = fadd double %51, %52
  store double %53, ptr %16, align 8, !tbaa !107
  %54 = getelementptr inbounds %struct._ChannelStatistics, ptr %13, i64 4, i32 8
  %55 = load double, ptr %54, align 8, !tbaa !110
  %56 = fneg double %51
  %57 = tail call double @llvm.fmuladd.f64(double %56, double %51, double %55)
  %58 = load double, ptr %17, align 8, !tbaa !109
  %59 = fadd double %58, %57
  store double %59, ptr %17, align 8, !tbaa !109
  %60 = add nuw nsw i64 %46, 1
  br label %61

61:                                               ; preds = %49, %45
  %62 = phi i64 [ %60, %49 ], [ %46, %45 ]
  %63 = and i32 %1, 8
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %81, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %67 = load i32, ptr %66, align 8, !tbaa !64
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %81, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct._ChannelStatistics, ptr %13, i64 8, i32 7
  %71 = load double, ptr %70, align 8, !tbaa !107
  %72 = load double, ptr %16, align 8, !tbaa !107
  %73 = fadd double %71, %72
  store double %73, ptr %16, align 8, !tbaa !107
  %74 = getelementptr inbounds %struct._ChannelStatistics, ptr %13, i64 8, i32 8
  %75 = load double, ptr %74, align 8, !tbaa !110
  %76 = fneg double %71
  %77 = tail call double @llvm.fmuladd.f64(double %76, double %71, double %75)
  %78 = load double, ptr %17, align 8, !tbaa !109
  %79 = fadd double %78, %77
  store double %79, ptr %17, align 8, !tbaa !109
  %80 = add nuw nsw i64 %62, 1
  br label %81

81:                                               ; preds = %69, %65, %61
  %82 = phi i64 [ %80, %69 ], [ %62, %65 ], [ %62, %61 ]
  %83 = and i32 %1, 32
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %101, label %85

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %87 = load i32, ptr %86, align 4, !tbaa !83
  %88 = icmp eq i32 %87, 12
  br i1 %88, label %89, label %101

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct._ChannelStatistics, ptr %13, i64 32, i32 7
  %91 = load double, ptr %90, align 8, !tbaa !107
  %92 = load double, ptr %16, align 8, !tbaa !107
  %93 = fadd double %91, %92
  store double %93, ptr %16, align 8, !tbaa !107
  %94 = getelementptr inbounds %struct._ChannelStatistics, ptr %13, i64 32, i32 8
  %95 = load double, ptr %94, align 8, !tbaa !110
  %96 = fneg double %91
  %97 = tail call double @llvm.fmuladd.f64(double %96, double %91, double %95)
  %98 = load double, ptr %17, align 8, !tbaa !109
  %99 = fadd double %98, %97
  store double %99, ptr %17, align 8, !tbaa !109
  %100 = add nuw nsw i64 %82, 1
  br label %101

101:                                              ; preds = %89, %85, %81
  %102 = phi i64 [ %100, %89 ], [ %82, %85 ], [ %82, %81 ]
  %103 = uitofp i64 %102 to double
  %104 = load double, ptr %16, align 8, !tbaa !107
  %105 = fdiv double %104, %103
  store double %105, ptr %16, align 8, !tbaa !107
  %106 = load double, ptr %17, align 8, !tbaa !109
  %107 = fdiv double %106, %103
  %108 = tail call double @sqrt(double noundef %107) #13
  store double %108, ptr %17, align 8, !tbaa !109
  %109 = load double, ptr %16, align 8, !tbaa !107
  store double %109, ptr %2, align 8, !tbaa !73
  %110 = load double, ptr %17, align 8, !tbaa !109
  store double %110, ptr %3, align 8, !tbaa !73
  %111 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %13) #13
  br label %112

112:                                              ; preds = %12, %101
  %113 = phi i32 [ 1, %101 ], [ 0, %12 ]
  ret i32 %113
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetImageChannelStatistics(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !35
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2153, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #13
  br label %9

9:                                                ; preds = %6, %2
  %10 = tail call dereferenceable_or_null(4608) ptr @AcquireQuantumMemory(i64 noundef 48, i64 noundef 96) #14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %604, label %12

12:                                               ; preds = %9
  %13 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %10, i32 noundef 0, i64 noundef 4608) #13
  br label %60

14:                                               ; preds = %60
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %17 = load i64, ptr %16, align 8, !tbaa !59
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %417

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 1
  %21 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 2
  %22 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 4
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %24 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 8
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %26 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 32
  %27 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 1, i32 1
  %28 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 1, i32 2
  %29 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 1, i32 3
  %30 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 1, i32 4
  %31 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 1, i32 5
  %32 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 1, i32 6
  %33 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 2, i32 1
  %34 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 2, i32 2
  %35 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 2, i32 3
  %36 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 2, i32 4
  %37 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 2, i32 5
  %38 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 2, i32 6
  %39 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 4, i32 1
  %40 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 4, i32 2
  %41 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 4, i32 3
  %42 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 4, i32 4
  %43 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 4, i32 5
  %44 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 4, i32 6
  %45 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 8, i32 1
  %46 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 8, i32 2
  %47 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 8, i32 3
  %48 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 8, i32 4
  %49 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 8, i32 5
  %50 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 8, i32 6
  %51 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 32, i32 1
  %52 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 32, i32 2
  %53 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 32, i32 3
  %54 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 32, i32 3
  %55 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 32, i32 4
  %56 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 32, i32 4
  %57 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 32, i32 5
  %58 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 32, i32 5
  %59 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 32, i32 6
  br label %67

60:                                               ; preds = %12, %60
  %61 = phi i64 [ 0, %12 ], [ %65, %60 ]
  %62 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 %61
  store i64 1, ptr %62, align 8, !tbaa !111
  %63 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 %61, i32 2
  store double 0xFFEFFFFFFFFFFFFF, ptr %63, align 8, !tbaa !112
  %64 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 %61, i32 1
  store double 0x7FEFFFFFFFFFFFFF, ptr %64, align 8, !tbaa !113
  %65 = add nuw nsw i64 %61, 1
  %66 = icmp eq i64 %65, 48
  br i1 %66, label %14, label %60, !llvm.loop !114

67:                                               ; preds = %19, %413
  %68 = phi i64 [ 0, %19 ], [ %414, %413 ]
  %69 = load i64, ptr %15, align 8, !tbaa !60
  %70 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef 0, i64 noundef %68, i64 noundef %69, i64 noundef 1, ptr noundef %1) #13
  %71 = icmp eq ptr %70, null
  br i1 %71, label %417, label %72

72:                                               ; preds = %67
  %73 = tail call ptr @GetVirtualIndexQueue(ptr noundef %0) #13
  %74 = load i64, ptr %15, align 8, !tbaa !60
  %75 = icmp sgt i64 %74, 0
  br i1 %75, label %76, label %412

76:                                               ; preds = %72
  %77 = icmp eq ptr %73, null
  %78 = icmp eq ptr %73, null
  %79 = load i64, ptr %20, align 8, !tbaa !111
  br label %80

80:                                               ; preds = %76, %407
  %81 = phi i64 [ %79, %76 ], [ %90, %407 ]
  %82 = phi i1 [ %75, %76 ], [ %410, %407 ]
  %83 = phi i64 [ 0, %76 ], [ %408, %407 ]
  %84 = phi ptr [ %70, %76 ], [ %409, %407 ]
  %85 = getelementptr inbounds %struct._PixelPacket, ptr %84, i64 0, i32 2
  %86 = getelementptr inbounds %struct._PixelPacket, ptr %84, i64 0, i32 1
  %87 = getelementptr inbounds %struct._PixelPacket, ptr %84, i64 0, i32 3
  %88 = getelementptr inbounds i16, ptr %73, i64 %83
  br label %89

89:                                               ; preds = %80, %114
  %90 = phi i64 [ %81, %80 ], [ %115, %114 ]
  %91 = phi i64 [ %81, %80 ], [ %116, %114 ]
  %92 = icmp eq i64 %91, 16
  br i1 %92, label %117, label %93

93:                                               ; preds = %89
  %94 = add i64 %91, -1
  %95 = shl i64 2, %94
  %96 = add i64 %95, -1
  %97 = load i16, ptr %85, align 2, !tbaa !61
  %98 = uitofp i64 %96 to float
  %99 = uitofp i16 %97 to float
  %100 = fmul float %98, %99
  %101 = fdiv float %100, 6.553500e+04
  %102 = fpext float %101 to double
  %103 = fadd double %102, 5.000000e-01
  %104 = fptoui double %103 to i64
  %105 = uitofp i64 %104 to float
  %106 = fmul float %105, 6.553500e+04
  %107 = fdiv float %106, %98
  %108 = fpext float %107 to double
  %109 = fadd double %108, 5.000000e-01
  %110 = fptoui double %109 to i16
  %111 = icmp eq i16 %97, %110
  br i1 %111, label %117, label %112

112:                                              ; preds = %93
  %113 = add i64 %91, 1
  store i64 %113, ptr %20, align 8, !tbaa !111
  br label %114

114:                                              ; preds = %112, %139, %163, %190, %220
  %115 = phi i64 [ %113, %112 ], [ %90, %139 ], [ %90, %163 ], [ %90, %190 ], [ %90, %220 ]
  %116 = phi i64 [ %113, %112 ], [ %91, %139 ], [ %91, %163 ], [ %91, %190 ], [ %91, %220 ]
  br i1 %82, label %89, label %412, !llvm.loop !115

117:                                              ; preds = %93, %89
  %118 = load i64, ptr %21, align 8, !tbaa !111
  %119 = icmp eq i64 %118, 16
  br i1 %119, label %141, label %120

120:                                              ; preds = %117
  %121 = add i64 %118, -1
  %122 = shl i64 2, %121
  %123 = add i64 %122, -1
  %124 = load i16, ptr %86, align 2, !tbaa !62
  %125 = uitofp i64 %123 to float
  %126 = uitofp i16 %124 to float
  %127 = fmul float %125, %126
  %128 = fdiv float %127, 6.553500e+04
  %129 = fpext float %128 to double
  %130 = fadd double %129, 5.000000e-01
  %131 = fptoui double %130 to i64
  %132 = uitofp i64 %131 to float
  %133 = fmul float %132, 6.553500e+04
  %134 = fdiv float %133, %125
  %135 = fpext float %134 to double
  %136 = fadd double %135, 5.000000e-01
  %137 = fptoui double %136 to i16
  %138 = icmp eq i16 %124, %137
  br i1 %138, label %141, label %139

139:                                              ; preds = %120
  %140 = add i64 %118, 1
  store i64 %140, ptr %21, align 8, !tbaa !111
  br label %114

141:                                              ; preds = %120, %117
  %142 = load i64, ptr %22, align 8, !tbaa !111
  %143 = icmp eq i64 %142, 16
  br i1 %143, label %165, label %144

144:                                              ; preds = %141
  %145 = add i64 %142, -1
  %146 = shl i64 2, %145
  %147 = add i64 %146, -1
  %148 = load i16, ptr %84, align 2, !tbaa !63
  %149 = uitofp i64 %147 to float
  %150 = uitofp i16 %148 to float
  %151 = fmul float %149, %150
  %152 = fdiv float %151, 6.553500e+04
  %153 = fpext float %152 to double
  %154 = fadd double %153, 5.000000e-01
  %155 = fptoui double %154 to i64
  %156 = uitofp i64 %155 to float
  %157 = fmul float %156, 6.553500e+04
  %158 = fdiv float %157, %149
  %159 = fpext float %158 to double
  %160 = fadd double %159, 5.000000e-01
  %161 = fptoui double %160 to i16
  %162 = icmp eq i16 %148, %161
  br i1 %162, label %165, label %163

163:                                              ; preds = %144
  %164 = add i64 %142, 1
  store i64 %164, ptr %22, align 8, !tbaa !111
  br label %114

165:                                              ; preds = %144, %141
  %166 = load i32, ptr %23, align 8, !tbaa !64
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %192, label %168

168:                                              ; preds = %165
  %169 = load i64, ptr %24, align 8, !tbaa !111
  %170 = icmp eq i64 %169, 16
  br i1 %170, label %192, label %171

171:                                              ; preds = %168
  %172 = add i64 %169, -1
  %173 = shl i64 2, %172
  %174 = add i64 %173, -1
  %175 = load i16, ptr %87, align 2, !tbaa !65
  %176 = uitofp i64 %174 to float
  %177 = uitofp i16 %175 to float
  %178 = fmul float %176, %177
  %179 = fdiv float %178, 6.553500e+04
  %180 = fpext float %179 to double
  %181 = fadd double %180, 5.000000e-01
  %182 = fptoui double %181 to i64
  %183 = uitofp i64 %182 to float
  %184 = fmul float %183, 6.553500e+04
  %185 = fdiv float %184, %176
  %186 = fpext float %185 to double
  %187 = fadd double %186, 5.000000e-01
  %188 = fptoui double %187 to i16
  %189 = icmp eq i16 %175, %188
  br i1 %189, label %192, label %190

190:                                              ; preds = %171
  %191 = add i64 %169, 1
  store i64 %191, ptr %24, align 8, !tbaa !111
  br label %114

192:                                              ; preds = %168, %171, %165
  %193 = load i32, ptr %25, align 4, !tbaa !83
  %194 = icmp eq i32 %193, 12
  br i1 %194, label %195, label %222

195:                                              ; preds = %192
  %196 = load i64, ptr %26, align 8, !tbaa !111
  %197 = icmp eq i64 %196, 16
  br i1 %197, label %222, label %198

198:                                              ; preds = %195
  %199 = add i64 %196, -1
  %200 = shl i64 2, %199
  %201 = add i64 %200, -1
  br i1 %77, label %204, label %202

202:                                              ; preds = %198
  %203 = load i16, ptr %88, align 2, !tbaa !66
  br label %204

204:                                              ; preds = %198, %202
  %205 = phi i16 [ %203, %202 ], [ 0, %198 ]
  %206 = uitofp i64 %201 to float
  %207 = uitofp i16 %205 to float
  %208 = fmul float %206, %207
  %209 = fdiv float %208, 6.553500e+04
  %210 = fpext float %209 to double
  %211 = fadd double %210, 5.000000e-01
  %212 = fptoui double %211 to i64
  %213 = uitofp i64 %212 to float
  %214 = fmul float %213, 6.553500e+04
  %215 = fdiv float %214, %206
  %216 = fpext float %215 to double
  %217 = fadd double %216, 5.000000e-01
  %218 = fptoui double %217 to i16
  %219 = icmp eq i16 %205, %218
  br i1 %219, label %222, label %220

220:                                              ; preds = %204
  %221 = add i64 %196, 1
  store i64 %221, ptr %26, align 8, !tbaa !111
  br label %114

222:                                              ; preds = %195, %204, %192
  %223 = getelementptr inbounds %struct._PixelPacket, ptr %84, i64 0, i32 2
  %224 = load i16, ptr %223, align 2, !tbaa !61
  %225 = uitofp i16 %224 to double
  %226 = load double, ptr %27, align 8, !tbaa !113
  %227 = fcmp ogt double %226, %225
  br i1 %227, label %228, label %229

228:                                              ; preds = %222
  store double %225, ptr %27, align 8, !tbaa !113
  br label %229

229:                                              ; preds = %228, %222
  %230 = load double, ptr %28, align 8, !tbaa !112
  %231 = fcmp olt double %230, %225
  br i1 %231, label %232, label %233

232:                                              ; preds = %229
  store double %225, ptr %28, align 8, !tbaa !112
  br label %233

233:                                              ; preds = %232, %229
  %234 = load double, ptr %29, align 8, !tbaa !116
  %235 = fadd double %234, %225
  store double %235, ptr %29, align 8, !tbaa !116
  %236 = load double, ptr %30, align 8, !tbaa !117
  %237 = tail call double @llvm.fmuladd.f64(double %225, double %225, double %236)
  store double %237, ptr %30, align 8, !tbaa !117
  %238 = fmul double %225, %225
  %239 = load double, ptr %31, align 8, !tbaa !118
  %240 = tail call double @llvm.fmuladd.f64(double %238, double %225, double %239)
  store double %240, ptr %31, align 8, !tbaa !118
  %241 = fmul double %238, %225
  %242 = load double, ptr %32, align 8, !tbaa !119
  %243 = tail call double @llvm.fmuladd.f64(double %241, double %225, double %242)
  store double %243, ptr %32, align 8, !tbaa !119
  %244 = getelementptr inbounds %struct._PixelPacket, ptr %84, i64 0, i32 1
  %245 = load i16, ptr %244, align 2, !tbaa !62
  %246 = uitofp i16 %245 to double
  %247 = load double, ptr %33, align 8, !tbaa !113
  %248 = fcmp ogt double %247, %246
  br i1 %248, label %249, label %250

249:                                              ; preds = %233
  store double %246, ptr %33, align 8, !tbaa !113
  br label %250

250:                                              ; preds = %249, %233
  %251 = load double, ptr %34, align 8, !tbaa !112
  %252 = fcmp olt double %251, %246
  br i1 %252, label %253, label %254

253:                                              ; preds = %250
  store double %246, ptr %34, align 8, !tbaa !112
  br label %254

254:                                              ; preds = %253, %250
  %255 = load double, ptr %35, align 8, !tbaa !116
  %256 = fadd double %255, %246
  store double %256, ptr %35, align 8, !tbaa !116
  %257 = load double, ptr %36, align 8, !tbaa !117
  %258 = tail call double @llvm.fmuladd.f64(double %246, double %246, double %257)
  store double %258, ptr %36, align 8, !tbaa !117
  %259 = fmul double %246, %246
  %260 = load double, ptr %37, align 8, !tbaa !118
  %261 = tail call double @llvm.fmuladd.f64(double %259, double %246, double %260)
  store double %261, ptr %37, align 8, !tbaa !118
  %262 = fmul double %259, %246
  %263 = load double, ptr %38, align 8, !tbaa !119
  %264 = tail call double @llvm.fmuladd.f64(double %262, double %246, double %263)
  store double %264, ptr %38, align 8, !tbaa !119
  %265 = load i16, ptr %84, align 2, !tbaa !63
  %266 = uitofp i16 %265 to double
  %267 = load double, ptr %39, align 8, !tbaa !113
  %268 = fcmp ogt double %267, %266
  br i1 %268, label %269, label %270

269:                                              ; preds = %254
  store double %266, ptr %39, align 8, !tbaa !113
  br label %270

270:                                              ; preds = %269, %254
  %271 = load double, ptr %40, align 8, !tbaa !112
  %272 = fcmp olt double %271, %266
  br i1 %272, label %273, label %274

273:                                              ; preds = %270
  store double %266, ptr %40, align 8, !tbaa !112
  br label %274

274:                                              ; preds = %273, %270
  %275 = load double, ptr %41, align 8, !tbaa !116
  %276 = fadd double %275, %266
  store double %276, ptr %41, align 8, !tbaa !116
  %277 = load double, ptr %42, align 8, !tbaa !117
  %278 = tail call double @llvm.fmuladd.f64(double %266, double %266, double %277)
  store double %278, ptr %42, align 8, !tbaa !117
  %279 = fmul double %266, %266
  %280 = load double, ptr %43, align 8, !tbaa !118
  %281 = tail call double @llvm.fmuladd.f64(double %279, double %266, double %280)
  store double %281, ptr %43, align 8, !tbaa !118
  %282 = fmul double %279, %266
  %283 = load double, ptr %44, align 8, !tbaa !119
  %284 = tail call double @llvm.fmuladd.f64(double %282, double %266, double %283)
  store double %284, ptr %44, align 8, !tbaa !119
  br i1 %167, label %307, label %285

285:                                              ; preds = %274
  %286 = getelementptr inbounds %struct._PixelPacket, ptr %84, i64 0, i32 3
  %287 = load i16, ptr %286, align 2, !tbaa !65
  %288 = uitofp i16 %287 to double
  %289 = load double, ptr %45, align 8, !tbaa !113
  %290 = fcmp ogt double %289, %288
  br i1 %290, label %291, label %292

291:                                              ; preds = %285
  store double %288, ptr %45, align 8, !tbaa !113
  br label %292

292:                                              ; preds = %291, %285
  %293 = load double, ptr %46, align 8, !tbaa !112
  %294 = fcmp olt double %293, %288
  br i1 %294, label %295, label %296

295:                                              ; preds = %292
  store double %288, ptr %46, align 8, !tbaa !112
  br label %296

296:                                              ; preds = %295, %292
  %297 = load double, ptr %47, align 8, !tbaa !116
  %298 = fadd double %297, %288
  store double %298, ptr %47, align 8, !tbaa !116
  %299 = load double, ptr %48, align 8, !tbaa !117
  %300 = tail call double @llvm.fmuladd.f64(double %288, double %288, double %299)
  store double %300, ptr %48, align 8, !tbaa !117
  %301 = fmul double %288, %288
  %302 = load double, ptr %49, align 8, !tbaa !118
  %303 = tail call double @llvm.fmuladd.f64(double %301, double %288, double %302)
  store double %303, ptr %49, align 8, !tbaa !118
  %304 = fmul double %301, %288
  %305 = load double, ptr %50, align 8, !tbaa !119
  %306 = tail call double @llvm.fmuladd.f64(double %304, double %288, double %305)
  store double %306, ptr %50, align 8, !tbaa !119
  br label %307

307:                                              ; preds = %296, %274
  br i1 %194, label %308, label %407

308:                                              ; preds = %307
  %309 = getelementptr inbounds i16, ptr %73, i64 %83
  br i1 %78, label %313, label %310

310:                                              ; preds = %308
  %311 = load i16, ptr %309, align 2, !tbaa !66
  %312 = zext i16 %311 to i32
  br label %313

313:                                              ; preds = %308, %310
  %314 = phi i32 [ %312, %310 ], [ 0, %308 ]
  %315 = sitofp i32 %314 to double
  %316 = load double, ptr %51, align 8, !tbaa !113
  %317 = fcmp ogt double %316, %315
  br i1 %317, label %318, label %325

318:                                              ; preds = %313
  br i1 %78, label %322, label %319

319:                                              ; preds = %318
  %320 = load i16, ptr %309, align 2, !tbaa !66
  %321 = zext i16 %320 to i32
  br label %322

322:                                              ; preds = %318, %319
  %323 = phi i32 [ %321, %319 ], [ 0, %318 ]
  %324 = sitofp i32 %323 to double
  store double %324, ptr %51, align 8, !tbaa !113
  br label %325

325:                                              ; preds = %322, %313
  br i1 %78, label %329, label %326

326:                                              ; preds = %325
  %327 = load i16, ptr %309, align 2, !tbaa !66
  %328 = zext i16 %327 to i32
  br label %329

329:                                              ; preds = %325, %326
  %330 = phi i32 [ %328, %326 ], [ 0, %325 ]
  %331 = sitofp i32 %330 to double
  %332 = load double, ptr %52, align 8, !tbaa !112
  %333 = fcmp olt double %332, %331
  br i1 %333, label %334, label %341

334:                                              ; preds = %329
  br i1 %78, label %338, label %335

335:                                              ; preds = %334
  %336 = load i16, ptr %309, align 2, !tbaa !66
  %337 = zext i16 %336 to i32
  br label %338

338:                                              ; preds = %334, %335
  %339 = phi i32 [ %337, %335 ], [ 0, %334 ]
  %340 = sitofp i32 %339 to double
  store double %340, ptr %52, align 8, !tbaa !112
  br label %341

341:                                              ; preds = %338, %329
  br i1 %78, label %348, label %342

342:                                              ; preds = %341
  %343 = load i16, ptr %309, align 2, !tbaa !66
  %344 = uitofp i16 %343 to double
  %345 = load double, ptr %53, align 8, !tbaa !116
  %346 = fadd double %345, %344
  store double %346, ptr %53, align 8, !tbaa !116
  %347 = zext i16 %343 to i32
  br label %351

348:                                              ; preds = %341
  %349 = load double, ptr %54, align 8, !tbaa !116
  %350 = fadd double %349, 0.000000e+00
  store double %350, ptr %54, align 8, !tbaa !116
  br label %351

351:                                              ; preds = %348, %342
  %352 = phi i32 [ %347, %342 ], [ 0, %348 ]
  %353 = sitofp i32 %352 to double
  br i1 %78, label %360, label %354

354:                                              ; preds = %351
  %355 = load i16, ptr %309, align 2, !tbaa !66
  %356 = uitofp i16 %355 to double
  %357 = load double, ptr %55, align 8, !tbaa !117
  %358 = tail call double @llvm.fmuladd.f64(double %353, double %356, double %357)
  store double %358, ptr %55, align 8, !tbaa !117
  %359 = zext i16 %355 to i32
  br label %363

360:                                              ; preds = %351
  %361 = load double, ptr %56, align 8, !tbaa !117
  %362 = tail call double @llvm.fmuladd.f64(double %353, double 0.000000e+00, double %361)
  store double %362, ptr %56, align 8, !tbaa !117
  br label %363

363:                                              ; preds = %360, %354
  %364 = phi i32 [ %359, %354 ], [ 0, %360 ]
  %365 = sitofp i32 %364 to double
  br i1 %78, label %369, label %366

366:                                              ; preds = %363
  %367 = load i16, ptr %309, align 2, !tbaa !66
  %368 = zext i16 %367 to i32
  br label %369

369:                                              ; preds = %363, %366
  %370 = phi i32 [ %368, %366 ], [ 0, %363 ]
  %371 = sitofp i32 %370 to double
  %372 = fmul double %365, %371
  br i1 %78, label %379, label %373

373:                                              ; preds = %369
  %374 = load i16, ptr %309, align 2, !tbaa !66
  %375 = uitofp i16 %374 to double
  %376 = load double, ptr %57, align 8, !tbaa !118
  %377 = tail call double @llvm.fmuladd.f64(double %372, double %375, double %376)
  store double %377, ptr %57, align 8, !tbaa !118
  %378 = zext i16 %374 to i32
  br label %382

379:                                              ; preds = %369
  %380 = load double, ptr %58, align 8, !tbaa !118
  %381 = tail call double @llvm.fmuladd.f64(double %372, double 0.000000e+00, double %380)
  store double %381, ptr %58, align 8, !tbaa !118
  br label %382

382:                                              ; preds = %379, %373
  %383 = phi i32 [ %378, %373 ], [ 0, %379 ]
  %384 = sitofp i32 %383 to double
  br i1 %78, label %388, label %385

385:                                              ; preds = %382
  %386 = load i16, ptr %309, align 2, !tbaa !66
  %387 = zext i16 %386 to i32
  br label %388

388:                                              ; preds = %382, %385
  %389 = phi i32 [ %387, %385 ], [ 0, %382 ]
  %390 = sitofp i32 %389 to double
  %391 = fmul double %384, %390
  br i1 %78, label %395, label %392

392:                                              ; preds = %388
  %393 = load i16, ptr %309, align 2, !tbaa !66
  %394 = zext i16 %393 to i32
  br label %395

395:                                              ; preds = %388, %392
  %396 = phi i32 [ %394, %392 ], [ 0, %388 ]
  %397 = sitofp i32 %396 to double
  %398 = fmul double %391, %397
  br i1 %78, label %402, label %399

399:                                              ; preds = %395
  %400 = load i16, ptr %309, align 2, !tbaa !66
  %401 = zext i16 %400 to i32
  br label %402

402:                                              ; preds = %395, %399
  %403 = phi i32 [ %401, %399 ], [ 0, %395 ]
  %404 = sitofp i32 %403 to double
  %405 = load double, ptr %59, align 8, !tbaa !119
  %406 = tail call double @llvm.fmuladd.f64(double %398, double %404, double %405)
  store double %406, ptr %59, align 8, !tbaa !119
  br label %407

407:                                              ; preds = %402, %307
  %408 = add nuw nsw i64 %83, 1
  %409 = getelementptr inbounds %struct._PixelPacket, ptr %84, i64 1
  %410 = icmp slt i64 %408, %74
  %411 = icmp eq i64 %408, %74
  br i1 %411, label %412, label %80, !llvm.loop !115

412:                                              ; preds = %407, %114, %72
  br i1 %71, label %417, label %413

413:                                              ; preds = %412
  %414 = add nuw nsw i64 %68, 1
  %415 = load i64, ptr %16, align 8, !tbaa !59
  %416 = icmp slt i64 %414, %415
  br i1 %416, label %67, label %417, !llvm.loop !120

417:                                              ; preds = %413, %412, %67, %14
  %418 = phi i64 [ 0, %14 ], [ %414, %413 ], [ %68, %412 ], [ %68, %67 ]
  %419 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %420 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %421 = load i64, ptr %420, align 8, !tbaa !60
  %422 = uitofp i64 %421 to double
  %423 = load i64, ptr %419, align 8, !tbaa !59
  %424 = uitofp i64 %423 to double
  %425 = fmul double %422, %424
  br label %447

426:                                              ; preds = %447
  %427 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 47
  %428 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 47, i32 1
  %429 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 47, i32 2
  %430 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 47, i32 3
  %431 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 47, i32 4
  %432 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 47, i32 5
  %433 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 47, i32 6
  %434 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 47, i32 7
  %435 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 47, i32 8
  %436 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 47, i32 9
  %437 = load i64, ptr %427, align 8, !tbaa !111
  %438 = load double, ptr %428, align 8, !tbaa !113
  %439 = load double, ptr %429, align 8, !tbaa !112
  %440 = load double, ptr %430, align 8, !tbaa !116
  %441 = load double, ptr %431, align 8, !tbaa !117
  %442 = load double, ptr %432, align 8, !tbaa !118
  %443 = load double, ptr %433, align 8, !tbaa !119
  %444 = load double, ptr %434, align 8, !tbaa !107
  %445 = load double, ptr %435, align 8, !tbaa !110
  %446 = load double, ptr %436, align 8, !tbaa !109
  br label %469

447:                                              ; preds = %417, %447
  %448 = phi i64 [ 0, %417 ], [ %467, %447 ]
  %449 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 %448, i32 3
  %450 = load double, ptr %449, align 8, !tbaa !116
  %451 = fdiv double %450, %425
  store double %451, ptr %449, align 8, !tbaa !116
  %452 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 %448, i32 4
  %453 = load double, ptr %452, align 8, !tbaa !117
  %454 = fdiv double %453, %425
  store double %454, ptr %452, align 8, !tbaa !117
  %455 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 %448, i32 5
  %456 = load double, ptr %455, align 8, !tbaa !118
  %457 = fdiv double %456, %425
  store double %457, ptr %455, align 8, !tbaa !118
  %458 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 %448, i32 6
  %459 = load double, ptr %458, align 8, !tbaa !119
  %460 = fdiv double %459, %425
  store double %460, ptr %458, align 8, !tbaa !119
  %461 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 %448, i32 7
  store double %451, ptr %461, align 8, !tbaa !107
  %462 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 %448, i32 8
  store double %454, ptr %462, align 8, !tbaa !110
  %463 = fneg double %451
  %464 = tail call double @llvm.fmuladd.f64(double %463, double %451, double %454)
  %465 = tail call double @sqrt(double noundef %464) #13
  %466 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 %448, i32 9
  store double %465, ptr %466, align 8, !tbaa !109
  %467 = add nuw nsw i64 %448, 1
  %468 = icmp eq i64 %467, 47
  br i1 %468, label %426, label %447, !llvm.loop !121

469:                                              ; preds = %426, %469
  %470 = phi i64 [ 0, %426 ], [ %520, %469 ]
  %471 = phi i64 [ %437, %426 ], [ %487, %469 ]
  %472 = phi double [ %438, %426 ], [ %491, %469 ]
  %473 = phi double [ %439, %426 ], [ %495, %469 ]
  %474 = phi double [ %440, %426 ], [ %498, %469 ]
  %475 = phi double [ %441, %426 ], [ %501, %469 ]
  %476 = phi double [ %442, %426 ], [ %504, %469 ]
  %477 = phi double [ %443, %426 ], [ %507, %469 ]
  %478 = phi double [ %444, %426 ], [ %510, %469 ]
  %479 = phi double [ %445, %426 ], [ %516, %469 ]
  %480 = phi double [ %446, %426 ], [ %519, %469 ]
  %481 = uitofp i64 %471 to double
  %482 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 %470
  %483 = load i64, ptr %482, align 8, !tbaa !111
  %484 = uitofp i64 %483 to double
  %485 = fcmp ogt double %481, %484
  %486 = select i1 %485, double %481, double %484
  %487 = fptoui double %486 to i64
  store i64 %487, ptr %427, align 8, !tbaa !111
  %488 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 %470, i32 1
  %489 = load double, ptr %488, align 8, !tbaa !113
  %490 = fcmp olt double %472, %489
  %491 = select i1 %490, double %472, double %489
  store double %491, ptr %428, align 8, !tbaa !113
  %492 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 %470, i32 2
  %493 = load double, ptr %492, align 8, !tbaa !112
  %494 = fcmp ogt double %473, %493
  %495 = select i1 %494, double %473, double %493
  store double %495, ptr %429, align 8, !tbaa !112
  %496 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 %470, i32 3
  %497 = load double, ptr %496, align 8, !tbaa !116
  %498 = fadd double %497, %474
  store double %498, ptr %430, align 8, !tbaa !116
  %499 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 %470, i32 4
  %500 = load double, ptr %499, align 8, !tbaa !117
  %501 = fadd double %500, %475
  store double %501, ptr %431, align 8, !tbaa !117
  %502 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 %470, i32 5
  %503 = load double, ptr %502, align 8, !tbaa !118
  %504 = fadd double %503, %476
  store double %504, ptr %432, align 8, !tbaa !118
  %505 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 %470, i32 6
  %506 = load double, ptr %505, align 8, !tbaa !119
  %507 = fadd double %506, %477
  store double %507, ptr %433, align 8, !tbaa !119
  %508 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 %470, i32 7
  %509 = load double, ptr %508, align 8, !tbaa !107
  %510 = fadd double %509, %478
  store double %510, ptr %434, align 8, !tbaa !107
  %511 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 %470, i32 8
  %512 = load double, ptr %511, align 8, !tbaa !110
  %513 = load double, ptr %508, align 8, !tbaa !107
  %514 = fneg double %513
  %515 = tail call double @llvm.fmuladd.f64(double %514, double %513, double %512)
  %516 = fadd double %479, %515
  store double %516, ptr %435, align 8, !tbaa !110
  %517 = load double, ptr %511, align 8, !tbaa !110
  %518 = tail call double @llvm.fmuladd.f64(double %514, double %513, double %517)
  %519 = fadd double %480, %518
  %520 = add nuw nsw i64 %470, 1
  %521 = icmp eq i64 %520, 47
  br i1 %521, label %522, label %469, !llvm.loop !122

522:                                              ; preds = %469
  store double %519, ptr %436, align 8, !tbaa !109
  %523 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %524 = load i32, ptr %523, align 8, !tbaa !64
  %525 = icmp eq i32 %524, 0
  %526 = select i1 %525, i64 3, i64 4
  %527 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %528 = load i32, ptr %527, align 4, !tbaa !83
  %529 = icmp eq i32 %528, 12
  %530 = zext i1 %529 to i64
  %531 = add nuw nsw i64 %526, %530
  %532 = uitofp i64 %531 to double
  %533 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 47, i32 3
  %534 = load double, ptr %533, align 8, !tbaa !116
  %535 = fdiv double %534, %532
  store double %535, ptr %533, align 8, !tbaa !116
  %536 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 47, i32 4
  %537 = load double, ptr %536, align 8, !tbaa !117
  %538 = fdiv double %537, %532
  store double %538, ptr %536, align 8, !tbaa !117
  %539 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 47, i32 5
  %540 = load double, ptr %539, align 8, !tbaa !118
  %541 = fdiv double %540, %532
  store double %541, ptr %539, align 8, !tbaa !118
  %542 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 47, i32 6
  %543 = load double, ptr %542, align 8, !tbaa !119
  %544 = fdiv double %543, %532
  store double %544, ptr %542, align 8, !tbaa !119
  %545 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 47, i32 7
  %546 = load double, ptr %545, align 8, !tbaa !107
  %547 = fdiv double %546, %532
  store double %547, ptr %545, align 8, !tbaa !107
  %548 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 47, i32 8
  %549 = load double, ptr %548, align 8, !tbaa !110
  %550 = fdiv double %549, %532
  store double %550, ptr %548, align 8, !tbaa !110
  %551 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 47, i32 9
  %552 = load double, ptr %551, align 8, !tbaa !109
  %553 = fdiv double %552, %532
  %554 = tail call double @sqrt(double noundef %553) #13
  store double %554, ptr %551, align 8, !tbaa !109
  %555 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 47, i32 10
  %556 = load double, ptr %555, align 8, !tbaa !123
  %557 = fdiv double %556, %532
  store double %557, ptr %555, align 8, !tbaa !123
  %558 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 47, i32 11
  %559 = load double, ptr %558, align 8, !tbaa !124
  %560 = fdiv double %559, %532
  store double %560, ptr %558, align 8, !tbaa !124
  br label %561

561:                                              ; preds = %522, %596
  %562 = phi i64 [ 0, %522 ], [ %597, %596 ]
  %563 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 %562, i32 9
  %564 = load double, ptr %563, align 8, !tbaa !109
  %565 = fcmp oeq double %564, 0.000000e+00
  br i1 %565, label %596, label %566

566:                                              ; preds = %561
  %567 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 %562, i32 5
  %568 = load double, ptr %567, align 8, !tbaa !118
  %569 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 %562, i32 7
  %570 = load double, ptr %569, align 8, !tbaa !107
  %571 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 %562, i32 4
  %572 = load double, ptr %571, align 8, !tbaa !117
  %573 = fmul double %570, -3.000000e+00
  %574 = tail call double @llvm.fmuladd.f64(double %573, double %572, double %568)
  %575 = fmul double %570, 2.000000e+00
  %576 = fmul double %570, %575
  %577 = tail call double @llvm.fmuladd.f64(double %576, double %570, double %574)
  %578 = fmul double %564, %564
  %579 = fmul double %564, %578
  %580 = fdiv double %577, %579
  %581 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 %562, i32 11
  store double %580, ptr %581, align 8, !tbaa !124
  %582 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 %562, i32 6
  %583 = load double, ptr %582, align 8, !tbaa !119
  %584 = fmul double %570, -4.000000e+00
  %585 = tail call double @llvm.fmuladd.f64(double %584, double %568, double %583)
  %586 = fmul double %570, 6.000000e+00
  %587 = fmul double %570, %586
  %588 = tail call double @llvm.fmuladd.f64(double %587, double %572, double %585)
  %589 = fmul double %570, %573
  %590 = fmul double %570, %589
  %591 = tail call double @llvm.fmuladd.f64(double %590, double %570, double %588)
  %592 = fmul double %564, %579
  %593 = fdiv double %591, %592
  %594 = fadd double %593, -3.000000e+00
  %595 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 %562, i32 10
  store double %594, ptr %595, align 8, !tbaa !123
  br label %596

596:                                              ; preds = %561, %566
  %597 = add nuw nsw i64 %562, 1
  %598 = icmp eq i64 %597, 48
  br i1 %598, label %599, label %561, !llvm.loop !125

599:                                              ; preds = %596
  %600 = load i64, ptr %419, align 8, !tbaa !59
  %601 = icmp slt i64 %418, %600
  br i1 %601, label %602, label %604

602:                                              ; preds = %599
  %603 = tail call ptr @RelinquishMagickMemory(ptr noundef %10) #13
  br label %604

604:                                              ; preds = %599, %602, %9
  %605 = phi ptr [ null, %9 ], [ %603, %602 ], [ %10, %599 ]
  ret ptr %605
}

declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @GetImageChannelMoments(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [48 x double], align 16
  %4 = alloca [48 x double], align 16
  %5 = alloca [48 x double], align 16
  %6 = alloca [48 x double], align 16
  %7 = alloca [48 x double], align 16
  %8 = alloca [48 x double], align 16
  %9 = alloca [48 x double], align 16
  %10 = alloca [48 x double], align 16
  %11 = alloca [48 x double], align 16
  %12 = alloca [48 x double], align 16
  %13 = alloca [48 x double], align 16
  %14 = alloca %struct._MagickPixelPacket, align 8
  %15 = alloca [48 x %struct._PointInfo], align 16
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %11) #13
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %12) #13
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %13) #13
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %14) #13
  call void @llvm.lifetime.start.p0(i64 768, ptr nonnull %15) #13
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %17 = load i32, ptr %16, align 8, !tbaa !35
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %21 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1516, ptr noundef nonnull @.str.2, ptr noundef nonnull %20) #13
  br label %22

22:                                               ; preds = %19, %2
  %23 = tail call dereferenceable_or_null(14976) ptr @AcquireQuantumMemory(i64 noundef 48, i64 noundef 312) #14
  %24 = icmp eq ptr %23, null
  br i1 %24, label %979, label %25

25:                                               ; preds = %22
  %26 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %23, i32 noundef 0, i64 noundef 14976) #13
  %27 = call ptr @ResetMagickMemory(ptr noundef nonnull %15, i32 noundef 0, i64 noundef 768) #13
  %28 = call ptr @ResetMagickMemory(ptr noundef nonnull %3, i32 noundef 0, i64 noundef 384) #13
  %29 = call ptr @ResetMagickMemory(ptr noundef nonnull %4, i32 noundef 0, i64 noundef 384) #13
  %30 = call ptr @ResetMagickMemory(ptr noundef nonnull %5, i32 noundef 0, i64 noundef 384) #13
  %31 = call ptr @ResetMagickMemory(ptr noundef nonnull %6, i32 noundef 0, i64 noundef 384) #13
  %32 = call ptr @ResetMagickMemory(ptr noundef nonnull %7, i32 noundef 0, i64 noundef 384) #13
  %33 = call ptr @ResetMagickMemory(ptr noundef nonnull %8, i32 noundef 0, i64 noundef 384) #13
  %34 = call ptr @ResetMagickMemory(ptr noundef nonnull %9, i32 noundef 0, i64 noundef 384) #13
  %35 = call ptr @ResetMagickMemory(ptr noundef nonnull %10, i32 noundef 0, i64 noundef 384) #13
  %36 = call ptr @ResetMagickMemory(ptr noundef nonnull %11, i32 noundef 0, i64 noundef 384) #13
  %37 = call ptr @ResetMagickMemory(ptr noundef nonnull %12, i32 noundef 0, i64 noundef 384) #13
  %38 = call ptr @ResetMagickMemory(ptr noundef nonnull %13, i32 noundef 0, i64 noundef 384) #13
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %14) #13
  %39 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %40 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %41 = load i64, ptr %40, align 8, !tbaa !59
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %177

43:                                               ; preds = %25
  %44 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 5
  %45 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 6
  %46 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 7
  %47 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 8
  %48 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %49 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 9
  %50 = getelementptr inbounds [48 x double], ptr %3, i64 0, i64 1
  %51 = getelementptr inbounds [48 x double], ptr %7, i64 0, i64 1
  %52 = getelementptr inbounds [48 x double], ptr %4, i64 0, i64 1
  %53 = getelementptr inbounds [48 x double], ptr %3, i64 0, i64 2
  %54 = getelementptr inbounds [48 x double], ptr %7, i64 0, i64 2
  %55 = getelementptr inbounds [48 x double], ptr %4, i64 0, i64 2
  %56 = getelementptr inbounds [48 x double], ptr %3, i64 0, i64 4
  %57 = getelementptr inbounds [48 x double], ptr %7, i64 0, i64 4
  %58 = getelementptr inbounds [48 x double], ptr %4, i64 0, i64 4
  %59 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %60 = getelementptr inbounds [48 x double], ptr %3, i64 0, i64 8
  %61 = getelementptr inbounds [48 x double], ptr %7, i64 0, i64 8
  %62 = getelementptr inbounds [48 x double], ptr %4, i64 0, i64 8
  %63 = getelementptr inbounds [48 x double], ptr %3, i64 0, i64 32
  %64 = getelementptr inbounds [48 x double], ptr %7, i64 0, i64 32
  %65 = getelementptr inbounds [48 x double], ptr %4, i64 0, i64 32
  br label %70

66:                                               ; preds = %176
  %67 = add nuw nsw i64 %71, 1
  %68 = load i64, ptr %40, align 8, !tbaa !59
  %69 = icmp slt i64 %67, %68
  br i1 %69, label %70, label %177, !llvm.loop !126

70:                                               ; preds = %43, %66
  %71 = phi i64 [ 0, %43 ], [ %67, %66 ]
  %72 = load i64, ptr %39, align 8, !tbaa !60
  %73 = call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef 0, i64 noundef %71, i64 noundef %72, i64 noundef 1, ptr noundef %1) #13
  %74 = icmp eq ptr %73, null
  br i1 %74, label %177, label %75

75:                                               ; preds = %70
  %76 = call ptr @GetVirtualIndexQueue(ptr noundef %0) #13
  %77 = load i64, ptr %39, align 8, !tbaa !60
  %78 = icmp sgt i64 %77, 0
  br i1 %78, label %79, label %176

79:                                               ; preds = %75
  %80 = load i32, ptr %48, align 4, !tbaa !83
  %81 = icmp eq i32 %80, 12
  %82 = icmp ne ptr %76, null
  %83 = and i1 %82, %81
  %84 = sitofp i64 %71 to double
  %85 = fmul double %84, 0x3EF0001000100010
  %86 = load i32, ptr %59, align 8, !tbaa !64
  %87 = icmp eq i32 %86, 0
  %88 = load float, ptr %49, align 8, !tbaa !84
  %89 = load double, ptr %50, align 8, !tbaa !73
  %90 = load double, ptr %51, align 8, !tbaa !73
  %91 = load double, ptr %52, align 8, !tbaa !73
  %92 = load double, ptr %53, align 16, !tbaa !73
  %93 = load double, ptr %54, align 16, !tbaa !73
  %94 = load double, ptr %55, align 16, !tbaa !73
  %95 = load double, ptr %56, align 16, !tbaa !73
  %96 = load double, ptr %57, align 16, !tbaa !73
  %97 = load double, ptr %58, align 16, !tbaa !73
  %98 = load double, ptr %60, align 16, !tbaa !73
  %99 = load double, ptr %61, align 16, !tbaa !73
  %100 = load double, ptr %62, align 16, !tbaa !73
  %101 = load double, ptr %63, align 16, !tbaa !73
  %102 = load double, ptr %64, align 16, !tbaa !73
  %103 = load double, ptr %65, align 16, !tbaa !73
  br label %104

104:                                              ; preds = %79, %164
  %105 = phi double [ %103, %79 ], [ %165, %164 ]
  %106 = phi double [ %102, %79 ], [ %166, %164 ]
  %107 = phi double [ %101, %79 ], [ %167, %164 ]
  %108 = phi double [ %100, %79 ], [ %156, %164 ]
  %109 = phi double [ %99, %79 ], [ %157, %164 ]
  %110 = phi double [ %98, %79 ], [ %158, %164 ]
  %111 = phi double [ %97, %79 ], [ %149, %164 ]
  %112 = phi double [ %96, %79 ], [ %148, %164 ]
  %113 = phi double [ %95, %79 ], [ %147, %164 ]
  %114 = phi double [ %94, %79 ], [ %145, %164 ]
  %115 = phi double [ %93, %79 ], [ %144, %164 ]
  %116 = phi double [ %92, %79 ], [ %143, %164 ]
  %117 = phi double [ %91, %79 ], [ %141, %164 ]
  %118 = phi double [ %90, %79 ], [ %140, %164 ]
  %119 = phi double [ %89, %79 ], [ %137, %164 ]
  %120 = phi float [ %88, %79 ], [ %135, %164 ]
  %121 = phi i64 [ 0, %79 ], [ %169, %164 ]
  %122 = phi ptr [ %73, %79 ], [ %168, %164 ]
  %123 = getelementptr inbounds %struct._PixelPacket, ptr %122, i64 0, i32 2
  %124 = load i16, ptr %123, align 2, !tbaa !61
  %125 = getelementptr inbounds %struct._PixelPacket, ptr %122, i64 0, i32 1
  %126 = load i16, ptr %125, align 2, !tbaa !62
  %127 = load i16, ptr %122, align 2, !tbaa !63
  %128 = getelementptr inbounds %struct._PixelPacket, ptr %122, i64 0, i32 3
  %129 = load i16, ptr %128, align 2, !tbaa !65
  br i1 %83, label %130, label %134

130:                                              ; preds = %104
  %131 = getelementptr inbounds i16, ptr %76, i64 %121
  %132 = load i16, ptr %131, align 2, !tbaa !66
  %133 = uitofp i16 %132 to float
  store float %133, ptr %49, align 8, !tbaa !84
  br label %134

134:                                              ; preds = %104, %130
  %135 = phi float [ %120, %104 ], [ %133, %130 ]
  %136 = uitofp i16 %124 to double
  %137 = call double @llvm.fmuladd.f64(double %136, double 0x3EF0001000100010, double %119)
  %138 = sitofp i64 %121 to double
  %139 = fmul double %138, 0x3EF0001000100010
  %140 = call double @llvm.fmuladd.f64(double %139, double %136, double %118)
  %141 = call double @llvm.fmuladd.f64(double %85, double %136, double %117)
  %142 = uitofp i16 %126 to double
  %143 = call double @llvm.fmuladd.f64(double %142, double 0x3EF0001000100010, double %116)
  %144 = call double @llvm.fmuladd.f64(double %139, double %142, double %115)
  %145 = call double @llvm.fmuladd.f64(double %85, double %142, double %114)
  %146 = uitofp i16 %127 to double
  %147 = call double @llvm.fmuladd.f64(double %146, double 0x3EF0001000100010, double %113)
  %148 = call double @llvm.fmuladd.f64(double %139, double %146, double %112)
  %149 = call double @llvm.fmuladd.f64(double %85, double %146, double %111)
  br i1 %87, label %155, label %150

150:                                              ; preds = %134
  %151 = uitofp i16 %129 to double
  %152 = call double @llvm.fmuladd.f64(double %151, double 0x3EF0001000100010, double %110)
  store double %152, ptr %60, align 16, !tbaa !73
  %153 = call double @llvm.fmuladd.f64(double %139, double %151, double %109)
  store double %153, ptr %61, align 16, !tbaa !73
  %154 = call double @llvm.fmuladd.f64(double %85, double %151, double %108)
  store double %154, ptr %62, align 16, !tbaa !73
  br label %155

155:                                              ; preds = %150, %134
  %156 = phi double [ %154, %150 ], [ %108, %134 ]
  %157 = phi double [ %153, %150 ], [ %109, %134 ]
  %158 = phi double [ %152, %150 ], [ %110, %134 ]
  br i1 %81, label %159, label %164

159:                                              ; preds = %155
  %160 = fpext float %135 to double
  %161 = call double @llvm.fmuladd.f64(double %160, double 0x3EF0001000100010, double %107)
  store double %161, ptr %63, align 16, !tbaa !73
  %162 = call double @llvm.fmuladd.f64(double %139, double %160, double %106)
  store double %162, ptr %64, align 16, !tbaa !73
  %163 = call double @llvm.fmuladd.f64(double %85, double %160, double %105)
  store double %163, ptr %65, align 16, !tbaa !73
  br label %164

164:                                              ; preds = %159, %155
  %165 = phi double [ %163, %159 ], [ %105, %155 ]
  %166 = phi double [ %162, %159 ], [ %106, %155 ]
  %167 = phi double [ %161, %159 ], [ %107, %155 ]
  %168 = getelementptr inbounds %struct._PixelPacket, ptr %122, i64 1
  %169 = add nuw nsw i64 %121, 1
  %170 = icmp eq i64 %169, %77
  br i1 %170, label %171, label %104, !llvm.loop !127

171:                                              ; preds = %164
  %172 = uitofp i16 %124 to float
  %173 = uitofp i16 %126 to float
  %174 = uitofp i16 %127 to float
  %175 = uitofp i16 %129 to float
  store float %172, ptr %44, align 8, !tbaa !78
  store float %173, ptr %45, align 4, !tbaa !80
  store float %174, ptr %46, align 8, !tbaa !81
  store float %175, ptr %47, align 4, !tbaa !82
  store double %137, ptr %50, align 8, !tbaa !73
  store double %140, ptr %51, align 8, !tbaa !73
  store double %141, ptr %52, align 8, !tbaa !73
  store double %143, ptr %53, align 16, !tbaa !73
  store double %144, ptr %54, align 16, !tbaa !73
  store double %145, ptr %55, align 16, !tbaa !73
  store double %147, ptr %56, align 16, !tbaa !73
  store double %148, ptr %57, align 16, !tbaa !73
  store double %149, ptr %58, align 16, !tbaa !73
  br label %176

176:                                              ; preds = %171, %75
  br i1 %74, label %177, label %66

177:                                              ; preds = %66, %176, %70, %25
  %178 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %179 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  br label %242

180:                                              ; preds = %264
  %181 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %182 = load i64, ptr %178, align 8, !tbaa !59
  %183 = icmp sgt i64 %182, 0
  br i1 %183, label %184, label %562

184:                                              ; preds = %180
  %185 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 5
  %186 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 6
  %187 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 7
  %188 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 8
  %189 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %190 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 9
  %191 = getelementptr inbounds [48 x %struct._PointInfo], ptr %15, i64 0, i64 1
  %192 = getelementptr inbounds [48 x %struct._PointInfo], ptr %15, i64 0, i64 1, i32 1
  %193 = getelementptr inbounds [48 x double], ptr %8, i64 0, i64 1
  %194 = getelementptr inbounds [48 x double], ptr %10, i64 0, i64 1
  %195 = getelementptr inbounds [48 x double], ptr %5, i64 0, i64 1
  %196 = getelementptr inbounds [48 x double], ptr %11, i64 0, i64 1
  %197 = getelementptr inbounds [48 x double], ptr %9, i64 0, i64 1
  %198 = getelementptr inbounds [48 x double], ptr %12, i64 0, i64 1
  %199 = getelementptr inbounds [48 x double], ptr %13, i64 0, i64 1
  %200 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 1
  %201 = getelementptr inbounds [48 x %struct._PointInfo], ptr %15, i64 0, i64 2
  %202 = getelementptr inbounds [48 x %struct._PointInfo], ptr %15, i64 0, i64 2, i32 1
  %203 = getelementptr inbounds [48 x double], ptr %8, i64 0, i64 2
  %204 = getelementptr inbounds [48 x double], ptr %10, i64 0, i64 2
  %205 = getelementptr inbounds [48 x double], ptr %5, i64 0, i64 2
  %206 = getelementptr inbounds [48 x double], ptr %11, i64 0, i64 2
  %207 = getelementptr inbounds [48 x double], ptr %9, i64 0, i64 2
  %208 = getelementptr inbounds [48 x double], ptr %12, i64 0, i64 2
  %209 = getelementptr inbounds [48 x double], ptr %13, i64 0, i64 2
  %210 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 2
  %211 = getelementptr inbounds [48 x %struct._PointInfo], ptr %15, i64 0, i64 4
  %212 = getelementptr inbounds [48 x %struct._PointInfo], ptr %15, i64 0, i64 4, i32 1
  %213 = getelementptr inbounds [48 x double], ptr %8, i64 0, i64 4
  %214 = getelementptr inbounds [48 x double], ptr %10, i64 0, i64 4
  %215 = getelementptr inbounds [48 x double], ptr %5, i64 0, i64 4
  %216 = getelementptr inbounds [48 x double], ptr %11, i64 0, i64 4
  %217 = getelementptr inbounds [48 x double], ptr %9, i64 0, i64 4
  %218 = getelementptr inbounds [48 x double], ptr %12, i64 0, i64 4
  %219 = getelementptr inbounds [48 x double], ptr %13, i64 0, i64 4
  %220 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 4
  %221 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %222 = getelementptr inbounds [48 x %struct._PointInfo], ptr %15, i64 0, i64 8
  %223 = getelementptr inbounds [48 x %struct._PointInfo], ptr %15, i64 0, i64 8, i32 1
  %224 = getelementptr inbounds [48 x double], ptr %8, i64 0, i64 8
  %225 = getelementptr inbounds [48 x double], ptr %10, i64 0, i64 8
  %226 = getelementptr inbounds [48 x double], ptr %5, i64 0, i64 8
  %227 = getelementptr inbounds [48 x double], ptr %11, i64 0, i64 8
  %228 = getelementptr inbounds [48 x double], ptr %9, i64 0, i64 8
  %229 = getelementptr inbounds [48 x double], ptr %12, i64 0, i64 8
  %230 = getelementptr inbounds [48 x double], ptr %13, i64 0, i64 8
  %231 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 8
  %232 = getelementptr inbounds [48 x %struct._PointInfo], ptr %15, i64 0, i64 32
  %233 = getelementptr inbounds [48 x %struct._PointInfo], ptr %15, i64 0, i64 32, i32 1
  %234 = getelementptr inbounds [48 x double], ptr %8, i64 0, i64 32
  %235 = getelementptr inbounds [48 x double], ptr %10, i64 0, i64 32
  %236 = getelementptr inbounds [48 x double], ptr %5, i64 0, i64 32
  %237 = getelementptr inbounds [48 x double], ptr %11, i64 0, i64 32
  %238 = getelementptr inbounds [48 x double], ptr %9, i64 0, i64 32
  %239 = getelementptr inbounds [48 x double], ptr %12, i64 0, i64 32
  %240 = getelementptr inbounds [48 x double], ptr %13, i64 0, i64 32
  %241 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 32
  br label %268

242:                                              ; preds = %177, %264
  %243 = phi i64 [ 0, %177 ], [ %266, %264 ]
  %244 = getelementptr inbounds [48 x double], ptr %3, i64 0, i64 %243
  %245 = load double, ptr %244, align 8, !tbaa !73
  %246 = fcmp olt double %245, 1.000000e-15
  %247 = fadd double %245, 1.000000e-15
  store double %247, ptr %244, align 8, !tbaa !73
  %248 = getelementptr inbounds [48 x %struct._PointInfo], ptr %15, i64 0, i64 %243
  %249 = getelementptr inbounds [48 x %struct._PointInfo], ptr %15, i64 0, i64 %243, i32 1
  br i1 %246, label %250, label %257

250:                                              ; preds = %242
  %251 = load i64, ptr %179, align 8, !tbaa !60
  %252 = uitofp i64 %251 to double
  %253 = fmul double %252, 5.000000e-01
  store double %253, ptr %248, align 16, !tbaa !128
  %254 = load i64, ptr %178, align 8, !tbaa !59
  %255 = uitofp i64 %254 to double
  %256 = fmul double %255, 5.000000e-01
  br label %264

257:                                              ; preds = %242
  %258 = getelementptr inbounds [48 x double], ptr %7, i64 0, i64 %243
  %259 = load double, ptr %258, align 8, !tbaa !73
  %260 = fdiv double %259, %247
  store double %260, ptr %248, align 16, !tbaa !128
  %261 = getelementptr inbounds [48 x double], ptr %4, i64 0, i64 %243
  %262 = load double, ptr %261, align 8, !tbaa !73
  %263 = fdiv double %262, %247
  br label %264

264:                                              ; preds = %257, %250
  %265 = phi double [ %263, %257 ], [ %256, %250 ]
  store double %265, ptr %249, align 8, !tbaa !130
  %266 = add nuw nsw i64 %243, 1
  %267 = icmp eq i64 %266, 48
  br i1 %267, label %180, label %242, !llvm.loop !131

268:                                              ; preds = %184, %558
  %269 = phi i64 [ 0, %184 ], [ %559, %558 ]
  %270 = load i64, ptr %181, align 8, !tbaa !60
  %271 = call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef 0, i64 noundef %269, i64 noundef %270, i64 noundef 1, ptr noundef %1) #13
  %272 = icmp eq ptr %271, null
  br i1 %272, label %562, label %273

273:                                              ; preds = %268
  %274 = call ptr @GetVirtualIndexQueue(ptr noundef %0) #13
  %275 = load i64, ptr %181, align 8, !tbaa !60
  %276 = icmp sgt i64 %275, 0
  br i1 %276, label %277, label %557

277:                                              ; preds = %273
  %278 = load i32, ptr %189, align 4, !tbaa !83
  %279 = icmp eq i32 %278, 12
  %280 = icmp ne ptr %274, null
  %281 = and i1 %280, %279
  %282 = load double, ptr %191, align 16, !tbaa !128
  %283 = sitofp i64 %269 to double
  %284 = load double, ptr %192, align 8, !tbaa !130
  %285 = fsub double %283, %284
  %286 = fmul double %285, %285
  %287 = fmul double %286, 0x3EF0001000100010
  %288 = fmul double %285, %286
  %289 = fmul double %288, 0x3EF0001000100010
  %290 = load double, ptr %201, align 16, !tbaa !128
  %291 = load double, ptr %202, align 8, !tbaa !130
  %292 = fsub double %283, %291
  %293 = fmul double %292, %292
  %294 = fmul double %293, 0x3EF0001000100010
  %295 = fmul double %292, %293
  %296 = fmul double %295, 0x3EF0001000100010
  %297 = load double, ptr %211, align 16, !tbaa !128
  %298 = load double, ptr %212, align 8, !tbaa !130
  %299 = fsub double %283, %298
  %300 = fmul double %299, %299
  %301 = fmul double %300, 0x3EF0001000100010
  %302 = fmul double %299, %300
  %303 = fmul double %302, 0x3EF0001000100010
  %304 = load i32, ptr %221, align 8, !tbaa !64
  %305 = icmp eq i32 %304, 0
  %306 = load double, ptr %222, align 16
  %307 = load double, ptr %223, align 8
  %308 = fsub double %283, %307
  %309 = fmul double %308, %308
  %310 = fmul double %309, 0x3EF0001000100010
  %311 = fmul double %308, %309
  %312 = fmul double %311, 0x3EF0001000100010
  %313 = load double, ptr %232, align 16
  %314 = load double, ptr %233, align 8
  %315 = fsub double %283, %314
  %316 = fmul double %315, %315
  %317 = fmul double %316, 0x3EF0001000100010
  %318 = fmul double %315, %316
  %319 = fmul double %318, 0x3EF0001000100010
  %320 = load float, ptr %190, align 8, !tbaa !84
  %321 = load double, ptr %193, align 8, !tbaa !73
  %322 = load double, ptr %194, align 8, !tbaa !73
  %323 = load double, ptr %195, align 8, !tbaa !73
  %324 = load double, ptr %196, align 8, !tbaa !73
  %325 = load double, ptr %197, align 8, !tbaa !73
  %326 = load double, ptr %198, align 8, !tbaa !73
  %327 = load double, ptr %199, align 8, !tbaa !73
  %328 = load double, ptr %200, align 8, !tbaa !73
  %329 = load double, ptr %203, align 16, !tbaa !73
  %330 = load double, ptr %204, align 16, !tbaa !73
  %331 = load double, ptr %205, align 16, !tbaa !73
  %332 = load double, ptr %206, align 16, !tbaa !73
  %333 = load double, ptr %207, align 16, !tbaa !73
  %334 = load double, ptr %208, align 16, !tbaa !73
  %335 = load double, ptr %209, align 16, !tbaa !73
  %336 = load double, ptr %210, align 16, !tbaa !73
  %337 = load double, ptr %213, align 16, !tbaa !73
  %338 = load double, ptr %214, align 16, !tbaa !73
  %339 = load double, ptr %215, align 16, !tbaa !73
  %340 = load double, ptr %216, align 16, !tbaa !73
  %341 = load double, ptr %217, align 16, !tbaa !73
  %342 = load double, ptr %218, align 16, !tbaa !73
  %343 = load double, ptr %219, align 16, !tbaa !73
  %344 = load double, ptr %220, align 16, !tbaa !73
  %345 = load double, ptr %224, align 16, !tbaa !73
  %346 = load double, ptr %225, align 16, !tbaa !73
  %347 = load double, ptr %226, align 16, !tbaa !73
  %348 = load double, ptr %227, align 16, !tbaa !73
  %349 = load double, ptr %228, align 16, !tbaa !73
  %350 = load double, ptr %229, align 16, !tbaa !73
  %351 = load double, ptr %230, align 16, !tbaa !73
  %352 = load double, ptr %231, align 16, !tbaa !73
  %353 = load double, ptr %234, align 16, !tbaa !73
  %354 = load double, ptr %235, align 16, !tbaa !73
  %355 = load double, ptr %236, align 16, !tbaa !73
  %356 = load double, ptr %237, align 16, !tbaa !73
  %357 = load double, ptr %238, align 16, !tbaa !73
  %358 = load double, ptr %239, align 16, !tbaa !73
  %359 = load double, ptr %240, align 16, !tbaa !73
  %360 = load double, ptr %241, align 16, !tbaa !73
  br label %361

361:                                              ; preds = %277, %540
  %362 = phi double [ %360, %277 ], [ %541, %540 ]
  %363 = phi double [ %359, %277 ], [ %542, %540 ]
  %364 = phi double [ %358, %277 ], [ %543, %540 ]
  %365 = phi double [ %357, %277 ], [ %544, %540 ]
  %366 = phi double [ %356, %277 ], [ %545, %540 ]
  %367 = phi double [ %355, %277 ], [ %546, %540 ]
  %368 = phi double [ %354, %277 ], [ %547, %540 ]
  %369 = phi double [ %353, %277 ], [ %548, %540 ]
  %370 = phi double [ %352, %277 ], [ %509, %540 ]
  %371 = phi double [ %351, %277 ], [ %510, %540 ]
  %372 = phi double [ %350, %277 ], [ %511, %540 ]
  %373 = phi double [ %349, %277 ], [ %512, %540 ]
  %374 = phi double [ %348, %277 ], [ %513, %540 ]
  %375 = phi double [ %347, %277 ], [ %514, %540 ]
  %376 = phi double [ %346, %277 ], [ %515, %540 ]
  %377 = phi double [ %345, %277 ], [ %516, %540 ]
  %378 = phi double [ %344, %277 ], [ %484, %540 ]
  %379 = phi double [ %343, %277 ], [ %483, %540 ]
  %380 = phi double [ %342, %277 ], [ %480, %540 ]
  %381 = phi double [ %341, %277 ], [ %477, %540 ]
  %382 = phi double [ %340, %277 ], [ %474, %540 ]
  %383 = phi double [ %339, %277 ], [ %471, %540 ]
  %384 = phi double [ %338, %277 ], [ %470, %540 ]
  %385 = phi double [ %337, %277 ], [ %467, %540 ]
  %386 = phi double [ %336, %277 ], [ %462, %540 ]
  %387 = phi double [ %335, %277 ], [ %461, %540 ]
  %388 = phi double [ %334, %277 ], [ %458, %540 ]
  %389 = phi double [ %333, %277 ], [ %455, %540 ]
  %390 = phi double [ %332, %277 ], [ %452, %540 ]
  %391 = phi double [ %331, %277 ], [ %449, %540 ]
  %392 = phi double [ %330, %277 ], [ %448, %540 ]
  %393 = phi double [ %329, %277 ], [ %445, %540 ]
  %394 = phi double [ %328, %277 ], [ %440, %540 ]
  %395 = phi double [ %327, %277 ], [ %439, %540 ]
  %396 = phi double [ %326, %277 ], [ %436, %540 ]
  %397 = phi double [ %325, %277 ], [ %433, %540 ]
  %398 = phi double [ %324, %277 ], [ %430, %540 ]
  %399 = phi double [ %323, %277 ], [ %427, %540 ]
  %400 = phi double [ %322, %277 ], [ %426, %540 ]
  %401 = phi double [ %321, %277 ], [ %423, %540 ]
  %402 = phi float [ %320, %277 ], [ %417, %540 ]
  %403 = phi i64 [ 0, %277 ], [ %550, %540 ]
  %404 = phi ptr [ %271, %277 ], [ %549, %540 ]
  %405 = getelementptr inbounds %struct._PixelPacket, ptr %404, i64 0, i32 2
  %406 = load i16, ptr %405, align 2, !tbaa !61
  %407 = getelementptr inbounds %struct._PixelPacket, ptr %404, i64 0, i32 1
  %408 = load i16, ptr %407, align 2, !tbaa !62
  %409 = load i16, ptr %404, align 2, !tbaa !63
  %410 = getelementptr inbounds %struct._PixelPacket, ptr %404, i64 0, i32 3
  %411 = load i16, ptr %410, align 2, !tbaa !65
  br i1 %281, label %412, label %416

412:                                              ; preds = %361
  %413 = getelementptr inbounds i16, ptr %274, i64 %403
  %414 = load i16, ptr %413, align 2, !tbaa !66
  %415 = uitofp i16 %414 to float
  store float %415, ptr %190, align 8, !tbaa !84
  br label %416

416:                                              ; preds = %361, %412
  %417 = phi float [ %402, %361 ], [ %415, %412 ]
  %418 = sitofp i64 %403 to double
  %419 = fsub double %418, %282
  %420 = fmul double %419, %285
  %421 = fmul double %420, 0x3EF0001000100010
  %422 = uitofp i16 %406 to double
  %423 = call double @llvm.fmuladd.f64(double %421, double %422, double %401)
  %424 = fmul double %419, %419
  %425 = fmul double %424, 0x3EF0001000100010
  %426 = call double @llvm.fmuladd.f64(double %425, double %422, double %400)
  %427 = call double @llvm.fmuladd.f64(double %287, double %422, double %399)
  %428 = fmul double %424, %285
  %429 = fmul double %428, 0x3EF0001000100010
  %430 = call double @llvm.fmuladd.f64(double %429, double %422, double %398)
  %431 = fmul double %285, %420
  %432 = fmul double %431, 0x3EF0001000100010
  %433 = call double @llvm.fmuladd.f64(double %432, double %422, double %397)
  %434 = fmul double %285, %428
  %435 = fmul double %434, 0x3EF0001000100010
  %436 = call double @llvm.fmuladd.f64(double %435, double %422, double %396)
  %437 = fmul double %419, %424
  %438 = fmul double %437, 0x3EF0001000100010
  %439 = call double @llvm.fmuladd.f64(double %438, double %422, double %395)
  %440 = call double @llvm.fmuladd.f64(double %289, double %422, double %394)
  %441 = fsub double %418, %290
  %442 = fmul double %441, %292
  %443 = fmul double %442, 0x3EF0001000100010
  %444 = uitofp i16 %408 to double
  %445 = call double @llvm.fmuladd.f64(double %443, double %444, double %393)
  %446 = fmul double %441, %441
  %447 = fmul double %446, 0x3EF0001000100010
  %448 = call double @llvm.fmuladd.f64(double %447, double %444, double %392)
  %449 = call double @llvm.fmuladd.f64(double %294, double %444, double %391)
  %450 = fmul double %446, %292
  %451 = fmul double %450, 0x3EF0001000100010
  %452 = call double @llvm.fmuladd.f64(double %451, double %444, double %390)
  %453 = fmul double %292, %442
  %454 = fmul double %453, 0x3EF0001000100010
  %455 = call double @llvm.fmuladd.f64(double %454, double %444, double %389)
  %456 = fmul double %292, %450
  %457 = fmul double %456, 0x3EF0001000100010
  %458 = call double @llvm.fmuladd.f64(double %457, double %444, double %388)
  %459 = fmul double %441, %446
  %460 = fmul double %459, 0x3EF0001000100010
  %461 = call double @llvm.fmuladd.f64(double %460, double %444, double %387)
  %462 = call double @llvm.fmuladd.f64(double %296, double %444, double %386)
  %463 = fsub double %418, %297
  %464 = fmul double %463, %299
  %465 = fmul double %464, 0x3EF0001000100010
  %466 = uitofp i16 %409 to double
  %467 = call double @llvm.fmuladd.f64(double %465, double %466, double %385)
  %468 = fmul double %463, %463
  %469 = fmul double %468, 0x3EF0001000100010
  %470 = call double @llvm.fmuladd.f64(double %469, double %466, double %384)
  %471 = call double @llvm.fmuladd.f64(double %301, double %466, double %383)
  %472 = fmul double %468, %299
  %473 = fmul double %472, 0x3EF0001000100010
  %474 = call double @llvm.fmuladd.f64(double %473, double %466, double %382)
  %475 = fmul double %299, %464
  %476 = fmul double %475, 0x3EF0001000100010
  %477 = call double @llvm.fmuladd.f64(double %476, double %466, double %381)
  %478 = fmul double %299, %472
  %479 = fmul double %478, 0x3EF0001000100010
  %480 = call double @llvm.fmuladd.f64(double %479, double %466, double %380)
  %481 = fmul double %463, %468
  %482 = fmul double %481, 0x3EF0001000100010
  %483 = call double @llvm.fmuladd.f64(double %482, double %466, double %379)
  %484 = call double @llvm.fmuladd.f64(double %303, double %466, double %378)
  br i1 %305, label %508, label %485

485:                                              ; preds = %416
  %486 = fsub double %418, %306
  %487 = fmul double %486, %308
  %488 = fmul double %487, 0x3EF0001000100010
  %489 = uitofp i16 %411 to double
  %490 = call double @llvm.fmuladd.f64(double %488, double %489, double %377)
  store double %490, ptr %224, align 16, !tbaa !73
  %491 = fmul double %486, %486
  %492 = fmul double %491, 0x3EF0001000100010
  %493 = call double @llvm.fmuladd.f64(double %492, double %489, double %376)
  store double %493, ptr %225, align 16, !tbaa !73
  %494 = call double @llvm.fmuladd.f64(double %310, double %489, double %375)
  store double %494, ptr %226, align 16, !tbaa !73
  %495 = fmul double %491, %308
  %496 = fmul double %495, 0x3EF0001000100010
  %497 = call double @llvm.fmuladd.f64(double %496, double %489, double %374)
  store double %497, ptr %227, align 16, !tbaa !73
  %498 = fmul double %308, %487
  %499 = fmul double %498, 0x3EF0001000100010
  %500 = call double @llvm.fmuladd.f64(double %499, double %489, double %373)
  store double %500, ptr %228, align 16, !tbaa !73
  %501 = fmul double %308, %495
  %502 = fmul double %501, 0x3EF0001000100010
  %503 = call double @llvm.fmuladd.f64(double %502, double %489, double %372)
  store double %503, ptr %229, align 16, !tbaa !73
  %504 = fmul double %486, %491
  %505 = fmul double %504, 0x3EF0001000100010
  %506 = call double @llvm.fmuladd.f64(double %505, double %489, double %371)
  store double %506, ptr %230, align 16, !tbaa !73
  %507 = call double @llvm.fmuladd.f64(double %312, double %489, double %370)
  store double %507, ptr %231, align 16, !tbaa !73
  br label %508

508:                                              ; preds = %485, %416
  %509 = phi double [ %507, %485 ], [ %370, %416 ]
  %510 = phi double [ %506, %485 ], [ %371, %416 ]
  %511 = phi double [ %503, %485 ], [ %372, %416 ]
  %512 = phi double [ %500, %485 ], [ %373, %416 ]
  %513 = phi double [ %497, %485 ], [ %374, %416 ]
  %514 = phi double [ %494, %485 ], [ %375, %416 ]
  %515 = phi double [ %493, %485 ], [ %376, %416 ]
  %516 = phi double [ %490, %485 ], [ %377, %416 ]
  br i1 %279, label %517, label %540

517:                                              ; preds = %508
  %518 = fsub double %418, %313
  %519 = fmul double %518, %315
  %520 = fmul double %519, 0x3EF0001000100010
  %521 = fpext float %417 to double
  %522 = call double @llvm.fmuladd.f64(double %520, double %521, double %369)
  store double %522, ptr %234, align 16, !tbaa !73
  %523 = fmul double %518, %518
  %524 = fmul double %523, 0x3EF0001000100010
  %525 = call double @llvm.fmuladd.f64(double %524, double %521, double %368)
  store double %525, ptr %235, align 16, !tbaa !73
  %526 = call double @llvm.fmuladd.f64(double %317, double %521, double %367)
  store double %526, ptr %236, align 16, !tbaa !73
  %527 = fmul double %523, %315
  %528 = fmul double %527, 0x3EF0001000100010
  %529 = call double @llvm.fmuladd.f64(double %528, double %521, double %366)
  store double %529, ptr %237, align 16, !tbaa !73
  %530 = fmul double %315, %519
  %531 = fmul double %530, 0x3EF0001000100010
  %532 = call double @llvm.fmuladd.f64(double %531, double %521, double %365)
  store double %532, ptr %238, align 16, !tbaa !73
  %533 = fmul double %315, %527
  %534 = fmul double %533, 0x3EF0001000100010
  %535 = call double @llvm.fmuladd.f64(double %534, double %521, double %364)
  store double %535, ptr %239, align 16, !tbaa !73
  %536 = fmul double %518, %523
  %537 = fmul double %536, 0x3EF0001000100010
  %538 = call double @llvm.fmuladd.f64(double %537, double %521, double %363)
  store double %538, ptr %240, align 16, !tbaa !73
  %539 = call double @llvm.fmuladd.f64(double %319, double %521, double %362)
  store double %539, ptr %241, align 16, !tbaa !73
  br label %540

540:                                              ; preds = %517, %508
  %541 = phi double [ %539, %517 ], [ %362, %508 ]
  %542 = phi double [ %538, %517 ], [ %363, %508 ]
  %543 = phi double [ %535, %517 ], [ %364, %508 ]
  %544 = phi double [ %532, %517 ], [ %365, %508 ]
  %545 = phi double [ %529, %517 ], [ %366, %508 ]
  %546 = phi double [ %526, %517 ], [ %367, %508 ]
  %547 = phi double [ %525, %517 ], [ %368, %508 ]
  %548 = phi double [ %522, %517 ], [ %369, %508 ]
  %549 = getelementptr inbounds %struct._PixelPacket, ptr %404, i64 1
  %550 = add nuw nsw i64 %403, 1
  %551 = icmp eq i64 %550, %275
  br i1 %551, label %552, label %361, !llvm.loop !132

552:                                              ; preds = %540
  %553 = uitofp i16 %406 to float
  %554 = uitofp i16 %408 to float
  %555 = uitofp i16 %409 to float
  %556 = uitofp i16 %411 to float
  store float %553, ptr %185, align 8, !tbaa !78
  store float %554, ptr %186, align 4, !tbaa !80
  store float %555, ptr %187, align 8, !tbaa !81
  store float %556, ptr %188, align 4, !tbaa !82
  store double %423, ptr %193, align 8, !tbaa !73
  store double %426, ptr %194, align 8, !tbaa !73
  store double %427, ptr %195, align 8, !tbaa !73
  store double %430, ptr %196, align 8, !tbaa !73
  store double %433, ptr %197, align 8, !tbaa !73
  store double %436, ptr %198, align 8, !tbaa !73
  store double %439, ptr %199, align 8, !tbaa !73
  store double %440, ptr %200, align 8, !tbaa !73
  store double %445, ptr %203, align 16, !tbaa !73
  store double %448, ptr %204, align 16, !tbaa !73
  store double %449, ptr %205, align 16, !tbaa !73
  store double %452, ptr %206, align 16, !tbaa !73
  store double %455, ptr %207, align 16, !tbaa !73
  store double %458, ptr %208, align 16, !tbaa !73
  store double %461, ptr %209, align 16, !tbaa !73
  store double %462, ptr %210, align 16, !tbaa !73
  store double %467, ptr %213, align 16, !tbaa !73
  store double %470, ptr %214, align 16, !tbaa !73
  store double %471, ptr %215, align 16, !tbaa !73
  store double %474, ptr %216, align 16, !tbaa !73
  store double %477, ptr %217, align 16, !tbaa !73
  store double %480, ptr %218, align 16, !tbaa !73
  store double %483, ptr %219, align 16, !tbaa !73
  store double %484, ptr %220, align 16, !tbaa !73
  br label %557

557:                                              ; preds = %552, %273
  br i1 %272, label %562, label %558

558:                                              ; preds = %557
  %559 = add nuw nsw i64 %269, 1
  %560 = load i64, ptr %178, align 8, !tbaa !59
  %561 = icmp slt i64 %559, %560
  br i1 %561, label %268, label %562, !llvm.loop !133

562:                                              ; preds = %558, %557, %268, %180
  %563 = phi i64 [ 0, %180 ], [ %559, %558 ], [ %269, %557 ], [ %269, %268 ]
  %564 = getelementptr inbounds [48 x double], ptr %3, i64 0, i64 1
  %565 = load double, ptr %564, align 8, !tbaa !73
  %566 = getelementptr inbounds [48 x double], ptr %3, i64 0, i64 2
  %567 = load double, ptr %566, align 16, !tbaa !73
  %568 = fadd double %565, %567
  %569 = getelementptr inbounds [48 x double], ptr %3, i64 0, i64 4
  %570 = load double, ptr %569, align 16, !tbaa !73
  %571 = fadd double %568, %570
  %572 = getelementptr inbounds [48 x double], ptr %3, i64 0, i64 47
  %573 = load double, ptr %572, align 8, !tbaa !73
  %574 = fadd double %573, %571
  store double %574, ptr %572, align 8, !tbaa !73
  %575 = getelementptr inbounds [48 x double], ptr %4, i64 0, i64 1
  %576 = load double, ptr %575, align 8, !tbaa !73
  %577 = getelementptr inbounds [48 x double], ptr %4, i64 0, i64 2
  %578 = load double, ptr %577, align 16, !tbaa !73
  %579 = fadd double %576, %578
  %580 = getelementptr inbounds [48 x double], ptr %4, i64 0, i64 4
  %581 = load double, ptr %580, align 16, !tbaa !73
  %582 = fadd double %579, %581
  %583 = getelementptr inbounds [48 x double], ptr %4, i64 0, i64 47
  %584 = load double, ptr %583, align 8, !tbaa !73
  %585 = fadd double %584, %582
  store double %585, ptr %583, align 8, !tbaa !73
  %586 = getelementptr inbounds [48 x double], ptr %5, i64 0, i64 1
  %587 = load double, ptr %586, align 8, !tbaa !73
  %588 = getelementptr inbounds [48 x double], ptr %5, i64 0, i64 2
  %589 = load double, ptr %588, align 16, !tbaa !73
  %590 = fadd double %587, %589
  %591 = getelementptr inbounds [48 x double], ptr %5, i64 0, i64 4
  %592 = load double, ptr %591, align 16, !tbaa !73
  %593 = fadd double %590, %592
  %594 = getelementptr inbounds [48 x double], ptr %5, i64 0, i64 47
  %595 = load double, ptr %594, align 8, !tbaa !73
  %596 = fadd double %595, %593
  store double %596, ptr %594, align 8, !tbaa !73
  %597 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 1
  %598 = load double, ptr %597, align 8, !tbaa !73
  %599 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 2
  %600 = load double, ptr %599, align 16, !tbaa !73
  %601 = fadd double %598, %600
  %602 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 4
  %603 = load double, ptr %602, align 16, !tbaa !73
  %604 = fadd double %601, %603
  %605 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 47
  %606 = load double, ptr %605, align 8, !tbaa !73
  %607 = fadd double %606, %604
  store double %607, ptr %605, align 8, !tbaa !73
  %608 = getelementptr inbounds [48 x double], ptr %7, i64 0, i64 1
  %609 = load double, ptr %608, align 8, !tbaa !73
  %610 = getelementptr inbounds [48 x double], ptr %7, i64 0, i64 2
  %611 = load double, ptr %610, align 16, !tbaa !73
  %612 = fadd double %609, %611
  %613 = getelementptr inbounds [48 x double], ptr %7, i64 0, i64 4
  %614 = load double, ptr %613, align 16, !tbaa !73
  %615 = fadd double %612, %614
  %616 = getelementptr inbounds [48 x double], ptr %7, i64 0, i64 47
  %617 = load double, ptr %616, align 8, !tbaa !73
  %618 = fadd double %617, %615
  store double %618, ptr %616, align 8, !tbaa !73
  %619 = getelementptr inbounds [48 x double], ptr %8, i64 0, i64 1
  %620 = load double, ptr %619, align 8, !tbaa !73
  %621 = getelementptr inbounds [48 x double], ptr %8, i64 0, i64 2
  %622 = load double, ptr %621, align 16, !tbaa !73
  %623 = fadd double %620, %622
  %624 = getelementptr inbounds [48 x double], ptr %8, i64 0, i64 4
  %625 = load double, ptr %624, align 16, !tbaa !73
  %626 = fadd double %623, %625
  %627 = getelementptr inbounds [48 x double], ptr %8, i64 0, i64 47
  %628 = load double, ptr %627, align 8, !tbaa !73
  %629 = fadd double %628, %626
  store double %629, ptr %627, align 8, !tbaa !73
  %630 = getelementptr inbounds [48 x double], ptr %9, i64 0, i64 1
  %631 = load double, ptr %630, align 8, !tbaa !73
  %632 = getelementptr inbounds [48 x double], ptr %9, i64 0, i64 2
  %633 = load double, ptr %632, align 16, !tbaa !73
  %634 = fadd double %631, %633
  %635 = getelementptr inbounds [48 x double], ptr %9, i64 0, i64 4
  %636 = load double, ptr %635, align 16, !tbaa !73
  %637 = fadd double %634, %636
  %638 = getelementptr inbounds [48 x double], ptr %9, i64 0, i64 47
  %639 = load double, ptr %638, align 8, !tbaa !73
  %640 = fadd double %639, %637
  store double %640, ptr %638, align 8, !tbaa !73
  %641 = getelementptr inbounds [48 x double], ptr %10, i64 0, i64 1
  %642 = load double, ptr %641, align 8, !tbaa !73
  %643 = getelementptr inbounds [48 x double], ptr %10, i64 0, i64 2
  %644 = load double, ptr %643, align 16, !tbaa !73
  %645 = fadd double %642, %644
  %646 = getelementptr inbounds [48 x double], ptr %10, i64 0, i64 4
  %647 = load double, ptr %646, align 16, !tbaa !73
  %648 = fadd double %645, %647
  %649 = getelementptr inbounds [48 x double], ptr %10, i64 0, i64 47
  %650 = load double, ptr %649, align 8, !tbaa !73
  %651 = fadd double %650, %648
  store double %651, ptr %649, align 8, !tbaa !73
  %652 = getelementptr inbounds [48 x double], ptr %11, i64 0, i64 1
  %653 = load double, ptr %652, align 8, !tbaa !73
  %654 = getelementptr inbounds [48 x double], ptr %11, i64 0, i64 2
  %655 = load double, ptr %654, align 16, !tbaa !73
  %656 = fadd double %653, %655
  %657 = getelementptr inbounds [48 x double], ptr %11, i64 0, i64 4
  %658 = load double, ptr %657, align 16, !tbaa !73
  %659 = fadd double %656, %658
  %660 = getelementptr inbounds [48 x double], ptr %11, i64 0, i64 47
  %661 = load double, ptr %660, align 8, !tbaa !73
  %662 = fadd double %661, %659
  store double %662, ptr %660, align 8, !tbaa !73
  %663 = getelementptr inbounds [48 x double], ptr %12, i64 0, i64 1
  %664 = load double, ptr %663, align 8, !tbaa !73
  %665 = getelementptr inbounds [48 x double], ptr %12, i64 0, i64 2
  %666 = load double, ptr %665, align 16, !tbaa !73
  %667 = fadd double %664, %666
  %668 = getelementptr inbounds [48 x double], ptr %12, i64 0, i64 4
  %669 = load double, ptr %668, align 16, !tbaa !73
  %670 = fadd double %667, %669
  %671 = getelementptr inbounds [48 x double], ptr %12, i64 0, i64 47
  %672 = load double, ptr %671, align 8, !tbaa !73
  %673 = fadd double %672, %670
  store double %673, ptr %671, align 8, !tbaa !73
  %674 = getelementptr inbounds [48 x double], ptr %13, i64 0, i64 1
  %675 = load double, ptr %674, align 8, !tbaa !73
  %676 = getelementptr inbounds [48 x double], ptr %13, i64 0, i64 2
  %677 = load double, ptr %676, align 16, !tbaa !73
  %678 = fadd double %675, %677
  %679 = getelementptr inbounds [48 x double], ptr %13, i64 0, i64 4
  %680 = load double, ptr %679, align 16, !tbaa !73
  %681 = fadd double %678, %680
  %682 = getelementptr inbounds [48 x double], ptr %13, i64 0, i64 47
  %683 = load double, ptr %682, align 8, !tbaa !73
  %684 = fadd double %683, %681
  store double %684, ptr %682, align 8, !tbaa !73
  %685 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %686 = load i32, ptr %685, align 8, !tbaa !64
  %687 = icmp eq i32 %686, 0
  br i1 %687, label %722, label %688

688:                                              ; preds = %562
  %689 = getelementptr inbounds [48 x double], ptr %3, i64 0, i64 8
  %690 = load double, ptr %689, align 16, !tbaa !73
  %691 = fadd double %574, %690
  store double %691, ptr %572, align 8, !tbaa !73
  %692 = getelementptr inbounds [48 x double], ptr %4, i64 0, i64 8
  %693 = load double, ptr %692, align 16, !tbaa !73
  %694 = fadd double %585, %693
  store double %694, ptr %583, align 8, !tbaa !73
  %695 = getelementptr inbounds [48 x double], ptr %5, i64 0, i64 8
  %696 = load double, ptr %695, align 16, !tbaa !73
  %697 = fadd double %596, %696
  store double %697, ptr %594, align 8, !tbaa !73
  %698 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 8
  %699 = load double, ptr %698, align 16, !tbaa !73
  %700 = fadd double %607, %699
  store double %700, ptr %605, align 8, !tbaa !73
  %701 = getelementptr inbounds [48 x double], ptr %7, i64 0, i64 8
  %702 = load double, ptr %701, align 16, !tbaa !73
  %703 = fadd double %618, %702
  store double %703, ptr %616, align 8, !tbaa !73
  %704 = getelementptr inbounds [48 x double], ptr %8, i64 0, i64 8
  %705 = load double, ptr %704, align 16, !tbaa !73
  %706 = fadd double %629, %705
  store double %706, ptr %627, align 8, !tbaa !73
  %707 = getelementptr inbounds [48 x double], ptr %9, i64 0, i64 8
  %708 = load double, ptr %707, align 16, !tbaa !73
  %709 = fadd double %640, %708
  store double %709, ptr %638, align 8, !tbaa !73
  %710 = getelementptr inbounds [48 x double], ptr %10, i64 0, i64 8
  %711 = load double, ptr %710, align 16, !tbaa !73
  %712 = fadd double %651, %711
  store double %712, ptr %649, align 8, !tbaa !73
  %713 = getelementptr inbounds [48 x double], ptr %11, i64 0, i64 8
  %714 = load double, ptr %713, align 16, !tbaa !73
  %715 = fadd double %662, %714
  store double %715, ptr %660, align 8, !tbaa !73
  %716 = getelementptr inbounds [48 x double], ptr %12, i64 0, i64 8
  %717 = load double, ptr %716, align 16, !tbaa !73
  %718 = fadd double %673, %717
  store double %718, ptr %671, align 8, !tbaa !73
  %719 = getelementptr inbounds [48 x double], ptr %13, i64 0, i64 8
  %720 = load double, ptr %719, align 16, !tbaa !73
  %721 = fadd double %684, %720
  store double %721, ptr %682, align 8, !tbaa !73
  br label %722

722:                                              ; preds = %688, %562
  %723 = phi i64 [ 4, %688 ], [ 3, %562 ]
  %724 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %725 = load i32, ptr %724, align 4, !tbaa !83
  %726 = icmp eq i32 %725, 12
  br i1 %726, label %727, label %773

727:                                              ; preds = %722
  %728 = add nuw nsw i64 %723, 1
  %729 = getelementptr inbounds [48 x double], ptr %3, i64 0, i64 32
  %730 = load double, ptr %729, align 16, !tbaa !73
  %731 = load double, ptr %572, align 8, !tbaa !73
  %732 = fadd double %730, %731
  store double %732, ptr %572, align 8, !tbaa !73
  %733 = getelementptr inbounds [48 x double], ptr %4, i64 0, i64 32
  %734 = load double, ptr %733, align 16, !tbaa !73
  %735 = load double, ptr %583, align 8, !tbaa !73
  %736 = fadd double %734, %735
  store double %736, ptr %583, align 8, !tbaa !73
  %737 = getelementptr inbounds [48 x double], ptr %5, i64 0, i64 32
  %738 = load double, ptr %737, align 16, !tbaa !73
  %739 = load double, ptr %594, align 8, !tbaa !73
  %740 = fadd double %738, %739
  store double %740, ptr %594, align 8, !tbaa !73
  %741 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 32
  %742 = load double, ptr %741, align 16, !tbaa !73
  %743 = load double, ptr %605, align 8, !tbaa !73
  %744 = fadd double %742, %743
  store double %744, ptr %605, align 8, !tbaa !73
  %745 = getelementptr inbounds [48 x double], ptr %7, i64 0, i64 32
  %746 = load double, ptr %745, align 16, !tbaa !73
  %747 = load double, ptr %616, align 8, !tbaa !73
  %748 = fadd double %746, %747
  store double %748, ptr %616, align 8, !tbaa !73
  %749 = getelementptr inbounds [48 x double], ptr %8, i64 0, i64 32
  %750 = load double, ptr %749, align 16, !tbaa !73
  %751 = load double, ptr %627, align 8, !tbaa !73
  %752 = fadd double %750, %751
  store double %752, ptr %627, align 8, !tbaa !73
  %753 = getelementptr inbounds [48 x double], ptr %9, i64 0, i64 32
  %754 = load double, ptr %753, align 16, !tbaa !73
  %755 = load double, ptr %638, align 8, !tbaa !73
  %756 = fadd double %754, %755
  store double %756, ptr %638, align 8, !tbaa !73
  %757 = getelementptr inbounds [48 x double], ptr %10, i64 0, i64 32
  %758 = load double, ptr %757, align 16, !tbaa !73
  %759 = load double, ptr %649, align 8, !tbaa !73
  %760 = fadd double %758, %759
  store double %760, ptr %649, align 8, !tbaa !73
  %761 = getelementptr inbounds [48 x double], ptr %11, i64 0, i64 32
  %762 = load double, ptr %761, align 16, !tbaa !73
  %763 = load double, ptr %660, align 8, !tbaa !73
  %764 = fadd double %762, %763
  store double %764, ptr %660, align 8, !tbaa !73
  %765 = getelementptr inbounds [48 x double], ptr %12, i64 0, i64 32
  %766 = load double, ptr %765, align 16, !tbaa !73
  %767 = load double, ptr %671, align 8, !tbaa !73
  %768 = fadd double %766, %767
  store double %768, ptr %671, align 8, !tbaa !73
  %769 = getelementptr inbounds [48 x double], ptr %13, i64 0, i64 32
  %770 = load double, ptr %769, align 16, !tbaa !73
  %771 = load double, ptr %682, align 8, !tbaa !73
  %772 = fadd double %770, %771
  store double %772, ptr %682, align 8, !tbaa !73
  br label %773

773:                                              ; preds = %727, %722
  %774 = phi i64 [ %728, %727 ], [ %723, %722 ]
  %775 = sitofp i64 %774 to double
  %776 = load double, ptr %572, align 8, !tbaa !73
  %777 = fdiv double %776, %775
  store double %777, ptr %572, align 8, !tbaa !73
  %778 = load double, ptr %583, align 8, !tbaa !73
  %779 = fdiv double %778, %775
  store double %779, ptr %583, align 8, !tbaa !73
  %780 = load double, ptr %594, align 8, !tbaa !73
  %781 = fdiv double %780, %775
  store double %781, ptr %594, align 8, !tbaa !73
  %782 = load double, ptr %605, align 8, !tbaa !73
  %783 = fdiv double %782, %775
  store double %783, ptr %605, align 8, !tbaa !73
  %784 = load double, ptr %616, align 8, !tbaa !73
  %785 = fdiv double %784, %775
  store double %785, ptr %616, align 8, !tbaa !73
  %786 = load double, ptr %627, align 8, !tbaa !73
  %787 = fdiv double %786, %775
  store double %787, ptr %627, align 8, !tbaa !73
  %788 = load double, ptr %638, align 8, !tbaa !73
  %789 = fdiv double %788, %775
  store double %789, ptr %638, align 8, !tbaa !73
  %790 = load double, ptr %649, align 8, !tbaa !73
  %791 = fdiv double %790, %775
  store double %791, ptr %649, align 8, !tbaa !73
  %792 = load double, ptr %660, align 8, !tbaa !73
  %793 = fdiv double %792, %775
  store double %793, ptr %660, align 8, !tbaa !73
  %794 = load double, ptr %671, align 8, !tbaa !73
  %795 = fdiv double %794, %775
  store double %795, ptr %671, align 8, !tbaa !73
  %796 = load double, ptr %682, align 8, !tbaa !73
  %797 = fdiv double %796, %775
  store double %797, ptr %682, align 8, !tbaa !73
  br label %798

798:                                              ; preds = %773, %798
  %799 = phi i64 [ 0, %773 ], [ %866, %798 ]
  %800 = getelementptr inbounds %struct._ChannelMoments, ptr %23, i64 %799, i32 1
  %801 = getelementptr inbounds [48 x %struct._PointInfo], ptr %15, i64 0, i64 %799
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %800, ptr noundef nonnull align 16 dereferenceable(16) %801, i64 16, i1 false), !tbaa.struct !134
  %802 = getelementptr inbounds [48 x double], ptr %3, i64 0, i64 %799
  %803 = load double, ptr %802, align 8, !tbaa !73
  %804 = fdiv double 2.000000e+00, %803
  %805 = getelementptr inbounds [48 x double], ptr %10, i64 0, i64 %799
  %806 = load double, ptr %805, align 8, !tbaa !73
  %807 = getelementptr inbounds [48 x double], ptr %5, i64 0, i64 %799
  %808 = load double, ptr %807, align 8, !tbaa !73
  %809 = fadd double %806, %808
  %810 = getelementptr inbounds [48 x double], ptr %8, i64 0, i64 %799
  %811 = load double, ptr %810, align 8, !tbaa !73
  %812 = fmul double %811, 4.000000e+00
  %813 = fsub double %806, %808
  %814 = fmul double %813, %813
  %815 = call double @llvm.fmuladd.f64(double %812, double %811, double %814)
  %816 = call double @sqrt(double noundef %815) #13
  %817 = fadd double %809, %816
  %818 = fmul double %804, %817
  %819 = call double @sqrt(double noundef %818) #13
  %820 = getelementptr inbounds %struct._ChannelMoments, ptr %23, i64 %799, i32 2
  store double %819, ptr %820, align 8, !tbaa !135
  %821 = load double, ptr %802, align 8, !tbaa !73
  %822 = fdiv double 2.000000e+00, %821
  %823 = load double, ptr %805, align 8, !tbaa !73
  %824 = load double, ptr %807, align 8, !tbaa !73
  %825 = fadd double %823, %824
  %826 = load double, ptr %810, align 8, !tbaa !73
  %827 = fmul double %826, 4.000000e+00
  %828 = fsub double %823, %824
  %829 = fmul double %828, %828
  %830 = call double @llvm.fmuladd.f64(double %827, double %826, double %829)
  %831 = call double @sqrt(double noundef %830) #13
  %832 = fsub double %825, %831
  %833 = fmul double %822, %832
  %834 = call double @sqrt(double noundef %833) #13
  %835 = getelementptr inbounds %struct._ChannelMoments, ptr %23, i64 %799, i32 2, i32 1
  store double %834, ptr %835, align 8, !tbaa !137
  %836 = load double, ptr %810, align 8, !tbaa !73
  %837 = fmul double %836, 2.000000e+00
  %838 = load double, ptr %805, align 8, !tbaa !73
  %839 = load double, ptr %807, align 8, !tbaa !73
  %840 = fsub double %838, %839
  %841 = fadd double %840, 1.000000e-15
  %842 = fdiv double %837, %841
  %843 = call double @atan(double noundef %842) #13
  %844 = fmul double %843, 5.000000e-01
  %845 = fptrunc double %844 to float
  %846 = fpext float %845 to double
  %847 = fmul double %846, 1.800000e+02
  %848 = fdiv double %847, 0x400921FB54442D18
  %849 = fptrunc double %848 to float
  %850 = fpext float %849 to double
  %851 = getelementptr inbounds %struct._ChannelMoments, ptr %23, i64 %799, i32 3
  store double %850, ptr %851, align 8, !tbaa !138
  %852 = load double, ptr %835, align 8, !tbaa !137
  %853 = load double, ptr %820, align 8, !tbaa !135
  %854 = fadd double %853, 1.000000e-15
  %855 = fdiv double %852, %854
  %856 = fsub double 1.000000e+00, %855
  %857 = call double @sqrt(double noundef %856) #13
  %858 = getelementptr inbounds %struct._ChannelMoments, ptr %23, i64 %799, i32 4
  store double %857, ptr %858, align 8, !tbaa !139
  %859 = load double, ptr %802, align 8, !tbaa !73
  %860 = load double, ptr %820, align 8, !tbaa !135
  %861 = fmul double %860, 0x400921FB54442D18
  %862 = load double, ptr %835, align 8, !tbaa !137
  %863 = call double @llvm.fmuladd.f64(double %861, double %862, double 1.000000e-15)
  %864 = fdiv double %859, %863
  %865 = getelementptr inbounds %struct._ChannelMoments, ptr %23, i64 %799, i32 5
  store double %864, ptr %865, align 8, !tbaa !140
  %866 = add nuw nsw i64 %799, 1
  %867 = icmp eq i64 %866, 48
  br i1 %867, label %868, label %798, !llvm.loop !141

868:                                              ; preds = %798, %868
  %869 = phi i64 [ %908, %868 ], [ 0, %798 ]
  %870 = getelementptr inbounds [48 x double], ptr %7, i64 0, i64 %869
  store double 0.000000e+00, ptr %870, align 8, !tbaa !73
  %871 = getelementptr inbounds [48 x double], ptr %4, i64 0, i64 %869
  store double 0.000000e+00, ptr %871, align 8, !tbaa !73
  %872 = getelementptr inbounds [48 x double], ptr %3, i64 0, i64 %869
  %873 = load double, ptr %872, align 8, !tbaa !73
  %874 = fmul double %873, %873
  %875 = getelementptr inbounds [48 x double], ptr %8, i64 0, i64 %869
  %876 = load double, ptr %875, align 8, !tbaa !73
  %877 = fdiv double %876, %874
  store double %877, ptr %875, align 8, !tbaa !73
  %878 = getelementptr inbounds [48 x double], ptr %10, i64 0, i64 %869
  %879 = load double, ptr %878, align 8, !tbaa !73
  %880 = fdiv double %879, %874
  store double %880, ptr %878, align 8, !tbaa !73
  %881 = getelementptr inbounds [48 x double], ptr %5, i64 0, i64 %869
  %882 = load double, ptr %881, align 8, !tbaa !73
  %883 = fdiv double %882, %874
  store double %883, ptr %881, align 8, !tbaa !73
  %884 = call double @pow(double noundef %873, double noundef 2.500000e+00) #13
  %885 = getelementptr inbounds [48 x double], ptr %11, i64 0, i64 %869
  %886 = load double, ptr %885, align 8, !tbaa !73
  %887 = fdiv double %886, %884
  store double %887, ptr %885, align 8, !tbaa !73
  %888 = load double, ptr %872, align 8, !tbaa !73
  %889 = call double @pow(double noundef %888, double noundef 2.500000e+00) #13
  %890 = getelementptr inbounds [48 x double], ptr %9, i64 0, i64 %869
  %891 = load double, ptr %890, align 8, !tbaa !73
  %892 = fdiv double %891, %889
  store double %892, ptr %890, align 8, !tbaa !73
  %893 = load double, ptr %872, align 8, !tbaa !73
  %894 = call double @pow(double noundef %893, double noundef 3.000000e+00) #13
  %895 = getelementptr inbounds [48 x double], ptr %12, i64 0, i64 %869
  %896 = load double, ptr %895, align 8, !tbaa !73
  %897 = fdiv double %896, %894
  store double %897, ptr %895, align 8, !tbaa !73
  %898 = load double, ptr %872, align 8, !tbaa !73
  %899 = call double @pow(double noundef %898, double noundef 2.500000e+00) #13
  %900 = getelementptr inbounds [48 x double], ptr %13, i64 0, i64 %869
  %901 = load double, ptr %900, align 8, !tbaa !73
  %902 = fdiv double %901, %899
  store double %902, ptr %900, align 8, !tbaa !73
  %903 = load double, ptr %872, align 8, !tbaa !73
  %904 = call double @pow(double noundef %903, double noundef 2.500000e+00) #13
  %905 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 %869
  %906 = load double, ptr %905, align 8, !tbaa !73
  %907 = fdiv double %906, %904
  store double %907, ptr %905, align 8, !tbaa !73
  store double 1.000000e+00, ptr %872, align 8, !tbaa !73
  %908 = add nuw nsw i64 %869, 1
  %909 = icmp eq i64 %908, 48
  br i1 %909, label %910, label %868, !llvm.loop !142

910:                                              ; preds = %868, %910
  %911 = phi i64 [ %972, %910 ], [ 0, %868 ]
  %912 = getelementptr inbounds [48 x double], ptr %10, i64 0, i64 %911
  %913 = load double, ptr %912, align 8, !tbaa !73
  %914 = getelementptr inbounds [48 x double], ptr %5, i64 0, i64 %911
  %915 = load double, ptr %914, align 8, !tbaa !73
  %916 = fadd double %913, %915
  %917 = getelementptr inbounds %struct._ChannelMoments, ptr %23, i64 %911
  store double %916, ptr %917, align 8, !tbaa !73
  %918 = fsub double %913, %915
  %919 = getelementptr inbounds [48 x double], ptr %8, i64 0, i64 %911
  %920 = load double, ptr %919, align 8, !tbaa !73
  %921 = fmul double %920, 4.000000e+00
  %922 = fmul double %920, %921
  %923 = call double @llvm.fmuladd.f64(double %918, double %918, double %922)
  %924 = getelementptr inbounds [32 x double], ptr %917, i64 0, i64 1
  store double %923, ptr %924, align 8, !tbaa !73
  %925 = getelementptr inbounds [48 x double], ptr %13, i64 0, i64 %911
  %926 = load double, ptr %925, align 8, !tbaa !73
  %927 = getelementptr inbounds [48 x double], ptr %9, i64 0, i64 %911
  %928 = load double, ptr %927, align 8, !tbaa !73
  %929 = call double @llvm.fmuladd.f64(double %928, double -3.000000e+00, double %926)
  %930 = getelementptr inbounds [48 x double], ptr %11, i64 0, i64 %911
  %931 = load double, ptr %930, align 8, !tbaa !73
  %932 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 %911
  %933 = load double, ptr %932, align 8, !tbaa !73
  %934 = fneg double %933
  %935 = call double @llvm.fmuladd.f64(double %931, double 3.000000e+00, double %934)
  %936 = fmul double %935, %935
  %937 = call double @llvm.fmuladd.f64(double %929, double %929, double %936)
  %938 = getelementptr inbounds [32 x double], ptr %917, i64 0, i64 2
  store double %937, ptr %938, align 8, !tbaa !73
  %939 = fadd double %926, %928
  %940 = fadd double %931, %933
  %941 = fmul double %940, %940
  %942 = call double @llvm.fmuladd.f64(double %939, double %939, double %941)
  %943 = getelementptr inbounds [32 x double], ptr %917, i64 0, i64 3
  store double %942, ptr %943, align 8, !tbaa !73
  %944 = fmul double %929, %939
  %945 = fmul double %940, -3.000000e+00
  %946 = fmul double %940, %945
  %947 = call double @llvm.fmuladd.f64(double %939, double %939, double %946)
  %948 = fmul double %935, %940
  %949 = fmul double %939, 3.000000e+00
  %950 = fneg double %940
  %951 = fmul double %940, %950
  %952 = call double @llvm.fmuladd.f64(double %949, double %939, double %951)
  %953 = fmul double %948, %952
  %954 = call double @llvm.fmuladd.f64(double %944, double %947, double %953)
  %955 = getelementptr inbounds [32 x double], ptr %917, i64 0, i64 4
  store double %954, ptr %955, align 8, !tbaa !73
  %956 = call double @llvm.fmuladd.f64(double %939, double %939, double %951)
  %957 = fmul double %921, %939
  %958 = fmul double %957, %940
  %959 = call double @llvm.fmuladd.f64(double %918, double %956, double %958)
  %960 = getelementptr inbounds [32 x double], ptr %917, i64 0, i64 5
  store double %959, ptr %960, align 8, !tbaa !73
  %961 = fmul double %939, %935
  %962 = fneg double %929
  %963 = fmul double %940, %962
  %964 = fmul double %963, %952
  %965 = call double @llvm.fmuladd.f64(double %961, double %947, double %964)
  %966 = getelementptr inbounds [32 x double], ptr %917, i64 0, i64 6
  store double %965, ptr %966, align 8, !tbaa !73
  %967 = fneg double %918
  %968 = fmul double %939, %967
  %969 = fmul double %968, %940
  %970 = call double @llvm.fmuladd.f64(double %920, double %956, double %969)
  %971 = getelementptr inbounds [32 x double], ptr %917, i64 0, i64 7
  store double %970, ptr %971, align 8, !tbaa !73
  %972 = add nuw nsw i64 %911, 1
  %973 = icmp eq i64 %972, 48
  br i1 %973, label %974, label %910, !llvm.loop !143

974:                                              ; preds = %910
  %975 = load i64, ptr %178, align 8, !tbaa !59
  %976 = icmp slt i64 %563, %975
  br i1 %976, label %977, label %979

977:                                              ; preds = %974
  %978 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %23) #13
  br label %979

979:                                              ; preds = %974, %977, %22
  %980 = phi ptr [ null, %22 ], [ %978, %977 ], [ %23, %974 ]
  call void @llvm.lifetime.end.p0(i64 768, ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %3) #13
  ret ptr %980
}

; Function Attrs: allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #10

declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @atan(double noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @GetImageChannelPerceptualHash(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BlurImage(ptr noundef %0, double noundef 0.000000e+00, double noundef 1.000000e+00, ptr noundef %1) #13
  %4 = icmp eq ptr %3, null
  br i1 %4, label %73, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct._Image, ptr %3, i64 0, i32 9
  store i64 8, ptr %6, align 8, !tbaa !144
  %7 = tail call i32 @TransformImageColorspace(ptr noundef nonnull %3, i32 noundef 13) #13
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %73, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @GetImageChannelMoments(ptr noundef nonnull %3, ptr noundef %1)
  %11 = tail call ptr @DestroyImage(ptr noundef nonnull %3) #13
  %12 = icmp eq ptr %10, null
  br i1 %12, label %73, label %13

13:                                               ; preds = %9
  %14 = tail call dereferenceable_or_null(24576) ptr @AcquireQuantumMemory(i64 noundef 48, i64 noundef 512) #14
  %15 = icmp eq ptr %14, null
  br i1 %15, label %73, label %16

16:                                               ; preds = %13, %34
  %17 = phi i64 [ %35, %34 ], [ 0, %13 ]
  %18 = getelementptr inbounds %struct._ChannelMoments, ptr %10, i64 %17
  %19 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %14, i64 %17
  br label %20

20:                                               ; preds = %16, %28
  %21 = phi i64 [ 0, %16 ], [ %32, %28 ]
  %22 = getelementptr inbounds [32 x double], ptr %18, i64 0, i64 %21
  %23 = load double, ptr %22, align 8, !tbaa !73
  %24 = tail call double @llvm.fabs.f64(double %23)
  %25 = fcmp olt double %24, 0x3DA5FD7FE1796495
  br i1 %25, label %28, label %26

26:                                               ; preds = %20
  %27 = tail call double @log10(double noundef %24) #13
  br label %28

28:                                               ; preds = %20, %26
  %29 = phi double [ %27, %26 ], [ -1.100000e+01, %20 ]
  %30 = fneg double %29
  %31 = getelementptr inbounds [32 x double], ptr %19, i64 0, i64 %21
  store double %30, ptr %31, align 8, !tbaa !73
  %32 = add nuw nsw i64 %21, 1
  %33 = icmp eq i64 %32, 7
  br i1 %33, label %34, label %20, !llvm.loop !145

34:                                               ; preds = %28
  %35 = add nuw nsw i64 %17, 1
  %36 = icmp eq i64 %35, 48
  br i1 %36, label %37, label %16, !llvm.loop !146

37:                                               ; preds = %34
  %38 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %10) #13
  %39 = tail call ptr @BlurImage(ptr noundef %0, double noundef 0.000000e+00, double noundef 1.000000e+00, ptr noundef %1) #13
  %40 = icmp eq ptr %39, null
  br i1 %40, label %69, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct._Image, ptr %39, i64 0, i32 9
  store i64 8, ptr %42, align 8, !tbaa !144
  %43 = tail call i32 @TransformImageColorspace(ptr noundef nonnull %39, i32 noundef 32) #13
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %69, label %45

45:                                               ; preds = %41
  %46 = tail call ptr @GetImageChannelMoments(ptr noundef nonnull %39, ptr noundef %1)
  %47 = tail call ptr @DestroyImage(ptr noundef nonnull %39) #13
  %48 = icmp eq ptr %46, null
  br i1 %48, label %69, label %49

49:                                               ; preds = %45, %66
  %50 = phi i64 [ %67, %66 ], [ 0, %45 ]
  %51 = getelementptr inbounds %struct._ChannelMoments, ptr %46, i64 %50
  br label %52

52:                                               ; preds = %49, %60
  %53 = phi i64 [ 0, %49 ], [ %64, %60 ]
  %54 = getelementptr inbounds [32 x double], ptr %51, i64 0, i64 %53
  %55 = load double, ptr %54, align 8, !tbaa !73
  %56 = tail call double @llvm.fabs.f64(double %55)
  %57 = fcmp olt double %56, 0x3DA5FD7FE1796495
  br i1 %57, label %60, label %58

58:                                               ; preds = %52
  %59 = tail call double @log10(double noundef %56) #13
  br label %60

60:                                               ; preds = %52, %58
  %61 = phi double [ %59, %58 ], [ -1.100000e+01, %52 ]
  %62 = fneg double %61
  %63 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %14, i64 %50, i32 1, i64 %53
  store double %62, ptr %63, align 8, !tbaa !73
  %64 = add nuw nsw i64 %53, 1
  %65 = icmp eq i64 %64, 7
  br i1 %65, label %66, label %52, !llvm.loop !147

66:                                               ; preds = %60
  %67 = add nuw nsw i64 %50, 1
  %68 = icmp eq i64 %67, 48
  br i1 %68, label %69, label %49, !llvm.loop !148

69:                                               ; preds = %66, %45, %41, %37
  %70 = phi ptr [ %14, %37 ], [ %14, %41 ], [ %14, %45 ], [ %46, %66 ]
  %71 = phi ptr [ null, %37 ], [ null, %41 ], [ null, %45 ], [ %14, %66 ]
  %72 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %70) #13
  br label %73

73:                                               ; preds = %69, %13, %9, %5, %2
  %74 = phi ptr [ null, %2 ], [ null, %5 ], [ null, %9 ], [ null, %13 ], [ %71, %69 ]
  ret ptr %74
}

declare ptr @BlurImage(ptr noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #2

declare i32 @TransformImageColorspace(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @GetImageRange(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @GetImageChannelRange(ptr noundef %0, i32 noundef 47, ptr noundef %1, ptr noundef %2, ptr noundef %3), !range !34
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PolynomialImage(ptr noundef %0, i64 noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @PolynomialImageChannel(ptr noundef %0, i32 noundef 134217719, i64 noundef %1, ptr noundef %2, ptr noundef %3)
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PolynomialImageChannel(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca [4096 x i8], align 16
  %7 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #13
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %9 = load i32, ptr %8, align 8, !tbaa !35
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2475, ptr noundef nonnull @.str.2, ptr noundef nonnull %12) #13
  br label %14

14:                                               ; preds = %11, %5
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %16 = load i64, ptr %15, align 8, !tbaa !60
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %18 = load i64, ptr %17, align 8, !tbaa !59
  %19 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef %16, i64 noundef %18, i32 noundef 1, ptr noundef %4) #13
  %20 = icmp eq ptr %19, null
  br i1 %20, label %311, label %21

21:                                               ; preds = %14
  %22 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %19, i32 noundef 1) #13
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct._Image, ptr %19, i64 0, i32 58
  tail call void @InheritException(ptr noundef %4, ptr noundef nonnull %25) #13
  %26 = tail call ptr @DestroyImage(ptr noundef nonnull %19) #13
  br label %311

27:                                               ; preds = %21
  %28 = tail call i64 @GetImageListLength(ptr noundef %0) #13
  %29 = tail call fastcc ptr @AcquirePixelThreadSet(ptr noundef %0, i64 noundef %28)
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = tail call ptr @DestroyImage(ptr noundef nonnull %19) #13
  %33 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %34 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2492, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %33) #13
  br label %311

35:                                               ; preds = %27
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %7) #13
  %36 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %19, ptr noundef %4) #13
  %37 = getelementptr inbounds %struct._Image, ptr %19, i64 0, i32 8
  %38 = load i64, ptr %37, align 8, !tbaa !59
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %291

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct._Image, ptr %19, i64 0, i32 7
  %42 = icmp sgt i64 %28, 0
  %43 = and i32 %1, 1
  %44 = icmp eq i32 %43, 0
  %45 = and i32 %1, 2
  %46 = icmp eq i32 %45, 0
  %47 = and i32 %1, 4
  %48 = icmp eq i32 %47, 0
  %49 = and i32 %1, 8
  %50 = icmp eq i32 %49, 0
  %51 = and i32 %1, 32
  %52 = icmp eq i32 %51, 0
  %53 = getelementptr inbounds %struct._Image, ptr %19, i64 0, i32 1
  %54 = getelementptr inbounds %struct._Image, ptr %19, i64 0, i32 6
  %55 = getelementptr inbounds %struct._Image, ptr %19, i64 0, i32 1
  %56 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %57 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %58 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %59

59:                                               ; preds = %40, %283
  %60 = phi i32 [ 1, %40 ], [ %285, %283 ]
  %61 = phi i64 [ 0, %40 ], [ %284, %283 ]
  %62 = phi i64 [ 0, %40 ], [ %286, %283 ]
  %63 = icmp eq i32 %60, 0
  br i1 %63, label %283, label %64

64:                                               ; preds = %59
  %65 = load i64, ptr %41, align 8, !tbaa !60
  %66 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %36, i64 noundef 0, i64 noundef %62, i64 noundef %65, i64 noundef 1, ptr noundef %4) #15
  %67 = icmp eq ptr %66, null
  br i1 %67, label %283, label %68

68:                                               ; preds = %64
  %69 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %36) #13
  %70 = load ptr, ptr %29, align 8, !tbaa !57
  %71 = load i64, ptr %41, align 8, !tbaa !60
  %72 = icmp sgt i64 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %74, %68
  br i1 %42, label %80, label %181

74:                                               ; preds = %68, %74
  %75 = phi i64 [ %77, %74 ], [ 0, %68 ]
  %76 = getelementptr inbounds %struct._MagickPixelPacket, ptr %70, i64 %75
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %76, ptr noundef nonnull align 8 dereferenceable(56) %7, i64 56, i1 false), !tbaa.struct !71
  %77 = add nuw nsw i64 %75, 1
  %78 = load i64, ptr %41, align 8, !tbaa !60
  %79 = icmp slt i64 %77, %78
  br i1 %79, label %74, label %73, !llvm.loop !149

80:                                               ; preds = %73, %175
  %81 = phi i64 [ %178, %175 ], [ 0, %73 ]
  %82 = phi ptr [ %177, %175 ], [ %0, %73 ]
  %83 = icmp slt i64 %81, %2
  br i1 %83, label %84, label %175

84:                                               ; preds = %80
  %85 = call ptr @AcquireVirtualCacheView(ptr noundef %82, ptr noundef %4) #13
  %86 = load i64, ptr %41, align 8, !tbaa !60
  %87 = call ptr @GetCacheViewVirtualPixels(ptr noundef %85, i64 noundef 0, i64 noundef %62, i64 noundef %86, i64 noundef 1, ptr noundef %4) #15
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = call ptr @DestroyCacheView(ptr noundef %85) #13
  br label %175

91:                                               ; preds = %84
  %92 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %85) #13
  %93 = load i64, ptr %41, align 8, !tbaa !60
  %94 = icmp sgt i64 %93, 0
  br i1 %94, label %95, label %172

95:                                               ; preds = %91
  %96 = shl nuw i64 %81, 1
  %97 = getelementptr inbounds double, ptr %3, i64 %96
  %98 = or disjoint i64 %96, 1
  %99 = getelementptr inbounds double, ptr %3, i64 %98
  br label %100

100:                                              ; preds = %95, %167
  %101 = phi ptr [ %87, %95 ], [ %168, %167 ]
  %102 = phi i64 [ 0, %95 ], [ %169, %167 ]
  %103 = load double, ptr %97, align 8, !tbaa !73
  %104 = load double, ptr %99, align 8, !tbaa !73
  br i1 %44, label %116, label %105

105:                                              ; preds = %100
  %106 = getelementptr inbounds %struct._PixelPacket, ptr %101, i64 0, i32 2
  %107 = load i16, ptr %106, align 2, !tbaa !61
  %108 = uitofp i16 %107 to double
  %109 = fmul double %108, 0x3EF0001000100010
  %110 = call double @pow(double noundef %109, double noundef %104) #13
  %111 = getelementptr inbounds %struct._MagickPixelPacket, ptr %70, i64 %102, i32 5
  %112 = load float, ptr %111, align 8, !tbaa !78
  %113 = fpext float %112 to double
  %114 = call double @llvm.fmuladd.f64(double %103, double %110, double %113)
  %115 = fptrunc double %114 to float
  store float %115, ptr %111, align 8, !tbaa !78
  br label %116

116:                                              ; preds = %105, %100
  br i1 %46, label %128, label %117

117:                                              ; preds = %116
  %118 = getelementptr inbounds %struct._PixelPacket, ptr %101, i64 0, i32 1
  %119 = load i16, ptr %118, align 2, !tbaa !62
  %120 = uitofp i16 %119 to double
  %121 = fmul double %120, 0x3EF0001000100010
  %122 = call double @pow(double noundef %121, double noundef %104) #13
  %123 = getelementptr inbounds %struct._MagickPixelPacket, ptr %70, i64 %102, i32 6
  %124 = load float, ptr %123, align 4, !tbaa !80
  %125 = fpext float %124 to double
  %126 = call double @llvm.fmuladd.f64(double %103, double %122, double %125)
  %127 = fptrunc double %126 to float
  store float %127, ptr %123, align 4, !tbaa !80
  br label %128

128:                                              ; preds = %117, %116
  br i1 %48, label %139, label %129

129:                                              ; preds = %128
  %130 = load i16, ptr %101, align 2, !tbaa !63
  %131 = uitofp i16 %130 to double
  %132 = fmul double %131, 0x3EF0001000100010
  %133 = call double @pow(double noundef %132, double noundef %104) #13
  %134 = getelementptr inbounds %struct._MagickPixelPacket, ptr %70, i64 %102, i32 7
  %135 = load float, ptr %134, align 8, !tbaa !81
  %136 = fpext float %135 to double
  %137 = call double @llvm.fmuladd.f64(double %103, double %133, double %136)
  %138 = fptrunc double %137 to float
  store float %138, ptr %134, align 8, !tbaa !81
  br label %139

139:                                              ; preds = %129, %128
  br i1 %50, label %152, label %140

140:                                              ; preds = %139
  %141 = getelementptr inbounds %struct._PixelPacket, ptr %101, i64 0, i32 3
  %142 = load i16, ptr %141, align 2, !tbaa !65
  %143 = xor i16 %142, -1
  %144 = uitofp i16 %143 to double
  %145 = fmul double %144, 0x3EF0001000100010
  %146 = call double @pow(double noundef %145, double noundef %104) #13
  %147 = getelementptr inbounds %struct._MagickPixelPacket, ptr %70, i64 %102, i32 8
  %148 = load float, ptr %147, align 4, !tbaa !82
  %149 = fpext float %148 to double
  %150 = call double @llvm.fmuladd.f64(double %103, double %146, double %149)
  %151 = fptrunc double %150 to float
  store float %151, ptr %147, align 4, !tbaa !82
  br label %152

152:                                              ; preds = %140, %139
  br i1 %52, label %167, label %153

153:                                              ; preds = %152
  %154 = load i32, ptr %53, align 4, !tbaa !83
  %155 = icmp eq i32 %154, 12
  br i1 %155, label %156, label %167

156:                                              ; preds = %153
  %157 = getelementptr inbounds i16, ptr %92, i64 %102
  %158 = load i16, ptr %157, align 2, !tbaa !66
  %159 = uitofp i16 %158 to double
  %160 = fmul double %159, 0x3EF0001000100010
  %161 = call double @pow(double noundef %160, double noundef %104) #13
  %162 = getelementptr inbounds %struct._MagickPixelPacket, ptr %70, i64 %102, i32 9
  %163 = load float, ptr %162, align 8, !tbaa !84
  %164 = fpext float %163 to double
  %165 = call double @llvm.fmuladd.f64(double %103, double %161, double %164)
  %166 = fptrunc double %165 to float
  store float %166, ptr %162, align 8, !tbaa !84
  br label %167

167:                                              ; preds = %156, %153, %152
  %168 = getelementptr inbounds %struct._PixelPacket, ptr %101, i64 1
  %169 = add nuw nsw i64 %102, 1
  %170 = load i64, ptr %41, align 8, !tbaa !60
  %171 = icmp slt i64 %169, %170
  br i1 %171, label %100, label %172, !llvm.loop !150

172:                                              ; preds = %167, %91
  %173 = call ptr @DestroyCacheView(ptr noundef %85) #13
  %174 = call ptr @GetNextImageInList(ptr noundef %82) #13
  br label %175

175:                                              ; preds = %80, %172, %89
  %176 = phi i1 [ false, %89 ], [ true, %172 ], [ false, %80 ]
  %177 = phi ptr [ %82, %89 ], [ %174, %172 ], [ %82, %80 ]
  %178 = add nuw nsw i64 %81, 1
  %179 = icmp slt i64 %178, %28
  %180 = select i1 %176, i1 %179, i1 false
  br i1 %180, label %80, label %181, !llvm.loop !151

181:                                              ; preds = %175, %73
  %182 = load i64, ptr %41, align 8, !tbaa !60
  %183 = icmp sgt i64 %182, 0
  br i1 %183, label %184, label %268

184:                                              ; preds = %181
  %185 = load i32, ptr %54, align 8, !tbaa !64
  %186 = icmp eq i32 %185, 0
  %187 = load i32, ptr %55, align 4, !tbaa !83
  %188 = icmp ne i32 %187, 12
  %189 = icmp eq ptr %69, null
  %190 = select i1 %188, i1 true, i1 %189
  br label %191

191:                                              ; preds = %184, %264
  %192 = phi i64 [ 0, %184 ], [ %266, %264 ]
  %193 = phi ptr [ %66, %184 ], [ %265, %264 ]
  %194 = getelementptr inbounds %struct._MagickPixelPacket, ptr %70, i64 %192, i32 5
  %195 = load float, ptr %194, align 8, !tbaa !78
  %196 = fmul float %195, 6.553500e+04
  %197 = fcmp ugt float %196, 0.000000e+00
  br i1 %197, label %198, label %203

198:                                              ; preds = %191
  %199 = fcmp ult float %196, 6.553500e+04
  br i1 %199, label %200, label %203

200:                                              ; preds = %198
  %201 = fadd float %196, 5.000000e-01
  %202 = fptoui float %201 to i16
  br label %203

203:                                              ; preds = %191, %198, %200
  %204 = phi i16 [ %202, %200 ], [ 0, %191 ], [ -1, %198 ]
  %205 = getelementptr inbounds %struct._PixelPacket, ptr %193, i64 0, i32 2
  store i16 %204, ptr %205, align 2, !tbaa !61
  %206 = getelementptr inbounds %struct._MagickPixelPacket, ptr %70, i64 %192, i32 6
  %207 = load float, ptr %206, align 4, !tbaa !80
  %208 = fmul float %207, 6.553500e+04
  %209 = fcmp ugt float %208, 0.000000e+00
  br i1 %209, label %210, label %215

210:                                              ; preds = %203
  %211 = fcmp ult float %208, 6.553500e+04
  br i1 %211, label %212, label %215

212:                                              ; preds = %210
  %213 = fadd float %208, 5.000000e-01
  %214 = fptoui float %213 to i16
  br label %215

215:                                              ; preds = %203, %210, %212
  %216 = phi i16 [ %214, %212 ], [ 0, %203 ], [ -1, %210 ]
  %217 = getelementptr inbounds %struct._PixelPacket, ptr %193, i64 0, i32 1
  store i16 %216, ptr %217, align 2, !tbaa !62
  %218 = getelementptr inbounds %struct._MagickPixelPacket, ptr %70, i64 %192, i32 7
  %219 = load float, ptr %218, align 8, !tbaa !81
  %220 = fmul float %219, 6.553500e+04
  %221 = fcmp ugt float %220, 0.000000e+00
  br i1 %221, label %222, label %227

222:                                              ; preds = %215
  %223 = fcmp ult float %220, 6.553500e+04
  br i1 %223, label %224, label %227

224:                                              ; preds = %222
  %225 = fadd float %220, 5.000000e-01
  %226 = fptoui float %225 to i16
  br label %227

227:                                              ; preds = %215, %222, %224
  %228 = phi i16 [ %226, %224 ], [ 0, %215 ], [ -1, %222 ]
  store i16 %228, ptr %193, align 2, !tbaa !63
  %229 = getelementptr inbounds %struct._MagickPixelPacket, ptr %70, i64 %192, i32 8
  %230 = load float, ptr %229, align 4, !tbaa !82
  %231 = call float @llvm.fmuladd.f32(float %230, float -6.553500e+04, float 6.553500e+04)
  %232 = fcmp ugt float %231, 0.000000e+00
  br i1 %186, label %233, label %239

233:                                              ; preds = %227
  br i1 %232, label %234, label %248

234:                                              ; preds = %233
  %235 = fcmp ult float %231, 6.553500e+04
  br i1 %235, label %236, label %248

236:                                              ; preds = %234
  %237 = fadd float %231, 5.000000e-01
  %238 = fptoui float %237 to i16
  br label %248

239:                                              ; preds = %227
  br i1 %232, label %240, label %245

240:                                              ; preds = %239
  %241 = fcmp ult float %231, 6.553500e+04
  br i1 %241, label %242, label %245

242:                                              ; preds = %240
  %243 = fadd float %231, 5.000000e-01
  %244 = fptoui float %243 to i16
  br label %245

245:                                              ; preds = %239, %240, %242
  %246 = phi i16 [ %244, %242 ], [ 0, %239 ], [ -1, %240 ]
  %247 = xor i16 %246, -1
  br label %248

248:                                              ; preds = %236, %234, %233, %245
  %249 = phi i16 [ %247, %245 ], [ %238, %236 ], [ 0, %233 ], [ -1, %234 ]
  %250 = getelementptr inbounds %struct._PixelPacket, ptr %193, i64 0, i32 3
  store i16 %249, ptr %250, align 2, !tbaa !65
  br i1 %190, label %264, label %251

251:                                              ; preds = %248
  %252 = getelementptr inbounds i16, ptr %69, i64 %192
  %253 = getelementptr inbounds %struct._MagickPixelPacket, ptr %70, i64 %192, i32 9
  %254 = load float, ptr %253, align 8, !tbaa !84
  %255 = fmul float %254, 6.553500e+04
  %256 = fcmp ugt float %255, 0.000000e+00
  br i1 %256, label %257, label %262

257:                                              ; preds = %251
  %258 = fcmp ult float %255, 6.553500e+04
  br i1 %258, label %259, label %262

259:                                              ; preds = %257
  %260 = fadd float %255, 5.000000e-01
  %261 = fptoui float %260 to i16
  br label %262

262:                                              ; preds = %251, %257, %259
  %263 = phi i16 [ %261, %259 ], [ 0, %251 ], [ -1, %257 ]
  store i16 %263, ptr %252, align 2, !tbaa !66
  br label %264

264:                                              ; preds = %262, %248
  %265 = getelementptr inbounds %struct._PixelPacket, ptr %193, i64 1
  %266 = add nuw nsw i64 %192, 1
  %267 = icmp eq i64 %266, %182
  br i1 %267, label %268, label %191, !llvm.loop !152

268:                                              ; preds = %264, %181
  %269 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %36, ptr noundef %4) #15
  %270 = icmp ne i32 %269, 0
  %271 = zext i1 %270 to i32
  %272 = load ptr, ptr %56, align 8, !tbaa !68
  %273 = icmp eq ptr %272, null
  br i1 %273, label %283, label %274

274:                                              ; preds = %268
  %275 = add nsw i64 %61, 1
  %276 = load i64, ptr %37, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #13
  %277 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7, ptr noundef nonnull %57) #13
  %278 = load ptr, ptr %56, align 8, !tbaa !68
  %279 = load ptr, ptr %58, align 8, !tbaa !69
  %280 = call i32 %278(ptr noundef nonnull %6, i64 noundef %61, i64 noundef %276, ptr noundef %279) #13
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #13
  %281 = icmp eq i32 %280, 0
  %282 = select i1 %281, i32 0, i32 %271
  br label %283

283:                                              ; preds = %268, %274, %64, %59
  %284 = phi i64 [ %61, %59 ], [ %61, %64 ], [ %275, %274 ], [ %61, %268 ]
  %285 = phi i32 [ 0, %59 ], [ 0, %64 ], [ %282, %274 ], [ %271, %268 ]
  %286 = add nuw nsw i64 %62, 1
  %287 = load i64, ptr %37, align 8, !tbaa !59
  %288 = icmp slt i64 %286, %287
  br i1 %288, label %59, label %289, !llvm.loop !153

289:                                              ; preds = %283
  %290 = icmp eq i32 %285, 0
  br label %291

291:                                              ; preds = %289, %35
  %292 = phi i1 [ false, %35 ], [ %290, %289 ]
  %293 = call ptr @DestroyCacheView(ptr noundef %36) #13
  %294 = call i64 @GetMagickResourceLimit(i32 noundef 6) #13
  %295 = icmp sgt i64 %294, 0
  br i1 %295, label %296, label %307

296:                                              ; preds = %291, %303
  %297 = phi i64 [ %304, %303 ], [ 0, %291 ]
  %298 = getelementptr inbounds ptr, ptr %29, i64 %297
  %299 = load ptr, ptr %298, align 8, !tbaa !57
  %300 = icmp eq ptr %299, null
  br i1 %300, label %303, label %301

301:                                              ; preds = %296
  %302 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %299) #13
  store ptr %302, ptr %298, align 8, !tbaa !57
  br label %303

303:                                              ; preds = %301, %296
  %304 = add nuw nsw i64 %297, 1
  %305 = call i64 @GetMagickResourceLimit(i32 noundef 6) #13
  %306 = icmp slt i64 %304, %305
  br i1 %306, label %296, label %307, !llvm.loop !96

307:                                              ; preds = %303, %291
  %308 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %29) #13
  br i1 %292, label %309, label %311

309:                                              ; preds = %307
  %310 = call ptr @DestroyImage(ptr noundef nonnull %19) #13
  br label %311

311:                                              ; preds = %307, %309, %14, %31, %24
  %312 = phi ptr [ null, %24 ], [ null, %31 ], [ null, %14 ], [ %310, %309 ], [ %19, %307 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #13
  ret ptr %312
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: nounwind uwtable
define dso_local ptr @StatisticImage(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call ptr @StatisticImageChannel(ptr noundef %0, i32 noundef 134217719, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4)
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define dso_local ptr @StatisticImageChannel(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca [5 x i16], align 2
  %8 = alloca [5 x i16], align 2
  %9 = alloca [5 x i16], align 2
  %10 = alloca [5 x i16], align 2
  %11 = alloca [9 x i64], align 16
  %12 = alloca [9 x i64], align 16
  %13 = alloca [9 x i64], align 16
  %14 = alloca [9 x i64], align 16
  %15 = alloca [9 x i64], align 16
  %16 = alloca [4096 x i8], align 16
  %17 = alloca [5 x i16], align 2
  %18 = alloca [5 x i16], align 2
  %19 = alloca [5 x i16], align 2
  %20 = alloca [5 x i16], align 2
  %21 = alloca [5 x i16], align 2
  %22 = alloca %struct._MagickPixelPacket, align 8
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %24 = load i32, ptr %23, align 8, !tbaa !35
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %6
  %27 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %28 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3284, ptr noundef nonnull @.str.2, ptr noundef nonnull %27) #13
  br label %29

29:                                               ; preds = %26, %6
  %30 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %31 = load i64, ptr %30, align 8, !tbaa !60
  %32 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %33 = load i64, ptr %32, align 8, !tbaa !59
  %34 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef %31, i64 noundef %33, i32 noundef 1, ptr noundef %5) #13
  %35 = icmp eq ptr %34, null
  br i1 %35, label %1090, label %36

36:                                               ; preds = %29
  %37 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %34, i32 noundef 1) #13
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct._Image, ptr %34, i64 0, i32 58
  tail call void @InheritException(ptr noundef %5, ptr noundef nonnull %40) #13
  %41 = tail call ptr @DestroyImage(ptr noundef nonnull %34) #13
  br label %1090

42:                                               ; preds = %36
  %43 = icmp eq i64 %3, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %42
  %45 = tail call i64 @GetOptimalKernelWidth2D(double noundef 0.000000e+00, double noundef 5.000000e-01) #13
  br label %46

46:                                               ; preds = %42, %44
  %47 = phi i64 [ %45, %44 ], [ %3, %42 ]
  %48 = icmp eq i64 %4, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = tail call i64 @GetOptimalKernelWidth2D(double noundef 0.000000e+00, double noundef 5.000000e-01) #13
  br label %51

51:                                               ; preds = %46, %49
  %52 = phi i64 [ %50, %49 ], [ %4, %46 ]
  %53 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #13
  %54 = tail call ptr @AcquireQuantumMemory(i64 noundef %53, i64 noundef 8) #14
  %55 = icmp eq ptr %54, null
  br i1 %55, label %100, label %56

56:                                               ; preds = %51
  %57 = shl i64 %53, 3
  %58 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %54, i32 noundef 0, i64 noundef %57) #13
  %59 = icmp sgt i64 %53, 0
  br i1 %59, label %60, label %100

60:                                               ; preds = %56
  %61 = mul i64 %52, %47
  br label %65

62:                                               ; preds = %94
  %63 = add nuw nsw i64 %66, 1
  %64 = icmp eq i64 %63, %53
  br i1 %64, label %100, label %65, !llvm.loop !154

65:                                               ; preds = %60, %62
  %66 = phi i64 [ 0, %60 ], [ %63, %62 ]
  %67 = tail call dereferenceable_or_null(104) ptr @AcquireMagickMemory(i64 noundef 104) #16
  %68 = icmp eq ptr %67, null
  br i1 %68, label %94, label %69

69:                                               ; preds = %65
  %70 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %67, i32 noundef 0, i64 noundef 104) #13
  store i64 %61, ptr %67, align 8, !tbaa !155
  br label %71

71:                                               ; preds = %69, %88
  %72 = phi i64 [ 0, %69 ], [ %90, %88 ]
  %73 = tail call dereferenceable_or_null(5767256) ptr @AcquireQuantumMemory(i64 noundef 65537, i64 noundef 88) #14
  %74 = getelementptr inbounds %struct._PixelList, ptr %67, i64 0, i32 3, i64 %72, i32 1
  store ptr %73, ptr %74, align 8, !tbaa !157
  %75 = icmp eq ptr %73, null
  br i1 %75, label %76, label %88

76:                                               ; preds = %71, %83
  %77 = phi i64 [ %84, %83 ], [ 0, %71 ]
  %78 = getelementptr inbounds %struct._PixelList, ptr %67, i64 0, i32 3, i64 %77, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !157
  %80 = icmp eq ptr %79, null
  br i1 %80, label %83, label %81

81:                                               ; preds = %76
  %82 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %79) #13
  store ptr %82, ptr %78, align 8, !tbaa !157
  br label %83

83:                                               ; preds = %81, %76
  %84 = add nuw nsw i64 %77, 1
  %85 = icmp eq i64 %84, 5
  br i1 %85, label %86, label %76, !llvm.loop !159

86:                                               ; preds = %83
  %87 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %67) #13
  br label %94

88:                                               ; preds = %71
  %89 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %73, i32 noundef 0, i64 noundef 5767256) #13
  %90 = add nuw nsw i64 %72, 1
  %91 = icmp eq i64 %90, 5
  br i1 %91, label %92, label %71, !llvm.loop !160

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct._PixelList, ptr %67, i64 0, i32 2
  store i64 2880220587, ptr %93, align 8, !tbaa !161
  br label %94

94:                                               ; preds = %92, %86, %65
  %95 = phi ptr [ %87, %86 ], [ %67, %92 ], [ null, %65 ]
  %96 = getelementptr inbounds ptr, ptr %54, i64 %66
  store ptr %95, ptr %96, align 8, !tbaa !57
  %97 = icmp eq ptr %95, null
  br i1 %97, label %98, label %62

98:                                               ; preds = %94
  %99 = tail call fastcc ptr @DestroyPixelListThreadSet(ptr noundef nonnull %54)
  br label %100

100:                                              ; preds = %62, %56, %51, %98
  %101 = phi ptr [ %99, %98 ], [ null, %51 ], [ %54, %56 ], [ %54, %62 ]
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %107

103:                                              ; preds = %100
  %104 = tail call ptr @DestroyImage(ptr noundef nonnull %34) #13
  %105 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %106 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3305, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %105) #13
  br label %1090

107:                                              ; preds = %100
  %108 = tail call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %5) #13
  %109 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %34, ptr noundef %5) #13
  %110 = getelementptr inbounds %struct._Image, ptr %34, i64 0, i32 8
  %111 = load i64, ptr %110, align 8, !tbaa !59
  %112 = icmp sgt i64 %111, 0
  br i1 %112, label %113, label %1086

113:                                              ; preds = %107
  %114 = sdiv i64 %47, -2
  %115 = lshr i64 %52, 1
  %116 = getelementptr inbounds %struct._Image, ptr %34, i64 0, i32 7
  %117 = icmp sgt i64 %52, 0
  %118 = icmp sgt i64 %47, 0
  %119 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %120 = mul i64 %52, %47
  %121 = lshr i64 %120, 1
  %122 = getelementptr inbounds %struct._MagickPixelPacket, ptr %22, i64 0, i32 5
  %123 = getelementptr inbounds %struct._MagickPixelPacket, ptr %22, i64 0, i32 6
  %124 = getelementptr inbounds %struct._MagickPixelPacket, ptr %22, i64 0, i32 7
  %125 = getelementptr inbounds %struct._MagickPixelPacket, ptr %22, i64 0, i32 8
  %126 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %127 = getelementptr inbounds %struct._MagickPixelPacket, ptr %22, i64 0, i32 9
  %128 = getelementptr inbounds [5 x i16], ptr %18, i64 0, i64 1
  %129 = getelementptr inbounds [5 x i16], ptr %18, i64 0, i64 2
  %130 = getelementptr inbounds [5 x i16], ptr %18, i64 0, i64 3
  %131 = getelementptr inbounds [5 x i16], ptr %18, i64 0, i64 4
  %132 = getelementptr inbounds %struct._MagickPixelPacket, ptr %22, i64 0, i32 9
  %133 = getelementptr inbounds [5 x i16], ptr %19, i64 0, i64 1
  %134 = getelementptr inbounds [5 x i16], ptr %19, i64 0, i64 2
  %135 = getelementptr inbounds [5 x i16], ptr %19, i64 0, i64 3
  %136 = getelementptr inbounds [5 x i16], ptr %19, i64 0, i64 4
  %137 = getelementptr inbounds %struct._MagickPixelPacket, ptr %22, i64 0, i32 9
  %138 = getelementptr inbounds [5 x i16], ptr %7, i64 0, i64 1
  %139 = getelementptr inbounds [5 x i16], ptr %7, i64 0, i64 2
  %140 = getelementptr inbounds [5 x i16], ptr %7, i64 0, i64 3
  %141 = getelementptr inbounds [5 x i16], ptr %7, i64 0, i64 4
  %142 = getelementptr inbounds %struct._MagickPixelPacket, ptr %22, i64 0, i32 9
  %143 = getelementptr inbounds [5 x i16], ptr %17, i64 0, i64 1
  %144 = getelementptr inbounds [5 x i16], ptr %17, i64 0, i64 2
  %145 = getelementptr inbounds [5 x i16], ptr %17, i64 0, i64 3
  %146 = getelementptr inbounds [5 x i16], ptr %17, i64 0, i64 4
  %147 = getelementptr inbounds %struct._MagickPixelPacket, ptr %22, i64 0, i32 9
  %148 = getelementptr inbounds [5 x i16], ptr %21, i64 0, i64 1
  %149 = getelementptr inbounds [5 x i16], ptr %21, i64 0, i64 2
  %150 = getelementptr inbounds [5 x i16], ptr %21, i64 0, i64 3
  %151 = getelementptr inbounds [5 x i16], ptr %21, i64 0, i64 4
  %152 = getelementptr inbounds %struct._MagickPixelPacket, ptr %22, i64 0, i32 9
  %153 = getelementptr inbounds [5 x i16], ptr %8, i64 0, i64 1
  %154 = getelementptr inbounds [5 x i16], ptr %8, i64 0, i64 2
  %155 = getelementptr inbounds [5 x i16], ptr %8, i64 0, i64 3
  %156 = getelementptr inbounds [5 x i16], ptr %8, i64 0, i64 4
  %157 = getelementptr inbounds %struct._MagickPixelPacket, ptr %22, i64 0, i32 9
  %158 = getelementptr inbounds [5 x i16], ptr %10, i64 0, i64 1
  %159 = getelementptr inbounds [5 x i16], ptr %10, i64 0, i64 2
  %160 = getelementptr inbounds [5 x i16], ptr %10, i64 0, i64 3
  %161 = getelementptr inbounds [5 x i16], ptr %10, i64 0, i64 4
  %162 = getelementptr inbounds %struct._MagickPixelPacket, ptr %22, i64 0, i32 9
  %163 = getelementptr inbounds [5 x i16], ptr %9, i64 0, i64 1
  %164 = getelementptr inbounds [5 x i16], ptr %9, i64 0, i64 2
  %165 = getelementptr inbounds [5 x i16], ptr %9, i64 0, i64 3
  %166 = getelementptr inbounds [5 x i16], ptr %9, i64 0, i64 4
  %167 = getelementptr inbounds [5 x i16], ptr %20, i64 0, i64 1
  %168 = getelementptr inbounds [5 x i16], ptr %20, i64 0, i64 2
  %169 = getelementptr inbounds [5 x i16], ptr %20, i64 0, i64 3
  %170 = getelementptr inbounds [5 x i16], ptr %20, i64 0, i64 4
  %171 = getelementptr inbounds %struct._MagickPixelPacket, ptr %22, i64 0, i32 9
  %172 = and i32 %1, 1
  %173 = icmp eq i32 %172, 0
  %174 = and i32 %1, 2
  %175 = icmp eq i32 %174, 0
  %176 = and i32 %1, 4
  %177 = icmp eq i32 %176, 0
  %178 = and i32 %1, 8
  %179 = icmp eq i32 %178, 0
  %180 = and i32 %1, 32
  %181 = icmp eq i32 %180, 0
  %182 = getelementptr inbounds %struct._MagickPixelPacket, ptr %22, i64 0, i32 9
  %183 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %184 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %185 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %186

186:                                              ; preds = %113, %1073
  %187 = phi i32 [ 1, %113 ], [ %1075, %1073 ]
  %188 = phi i64 [ 0, %113 ], [ %1074, %1073 ]
  %189 = phi i64 [ 0, %113 ], [ %1076, %1073 ]
  %190 = icmp eq i32 %187, 0
  br i1 %190, label %1073, label %191

191:                                              ; preds = %186
  %192 = sub nsw i64 %189, %115
  %193 = load i64, ptr %30, align 8, !tbaa !60
  %194 = add i64 %193, %47
  %195 = call ptr @GetCacheViewVirtualPixels(ptr noundef %108, i64 noundef %114, i64 noundef %192, i64 noundef %194, i64 noundef %52, ptr noundef %5) #15
  %196 = load i64, ptr %116, align 8, !tbaa !60
  %197 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %109, i64 noundef 0, i64 noundef %189, i64 noundef %196, i64 noundef 1, ptr noundef %5) #15
  %198 = icmp eq ptr %195, null
  %199 = icmp eq ptr %197, null
  %200 = select i1 %198, i1 true, i1 %199
  br i1 %200, label %1073, label %201

201:                                              ; preds = %191
  %202 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %108) #13
  %203 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %109) #13
  %204 = load i64, ptr %116, align 8, !tbaa !60
  %205 = icmp sgt i64 %204, 0
  br i1 %205, label %206, label %1058

206:                                              ; preds = %201
  %207 = icmp ne ptr %202, null
  %208 = icmp eq ptr %203, null
  br label %209

209:                                              ; preds = %206, %1052
  %210 = phi ptr [ %195, %206 ], [ %1053, %1052 ]
  %211 = phi ptr [ %197, %206 ], [ %1054, %1052 ]
  %212 = phi i64 [ 0, %206 ], [ %1055, %1052 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %22) #13
  %213 = load ptr, ptr %101, align 8, !tbaa !57
  %214 = getelementptr inbounds %struct._PixelList, ptr %213, i64 0, i32 3
  br label %215

215:                                              ; preds = %209, %226
  %216 = phi i64 [ 0, %209 ], [ %227, %226 ]
  %217 = getelementptr inbounds %struct._SkipList, ptr %214, i64 %216
  %218 = getelementptr inbounds %struct._SkipList, ptr %214, i64 %216, i32 1
  %219 = load ptr, ptr %218, align 8, !tbaa !157
  %220 = getelementptr inbounds %struct._ListNode, ptr %219, i64 65536
  store i64 0, ptr %217, align 8, !tbaa !162
  br label %221

221:                                              ; preds = %215, %221
  %222 = phi i64 [ 0, %215 ], [ %224, %221 ]
  %223 = getelementptr inbounds [9 x i64], ptr %220, i64 0, i64 %222
  store i64 65536, ptr %223, align 8, !tbaa !74
  %224 = add nuw nsw i64 %222, 1
  %225 = icmp eq i64 %224, 9
  br i1 %225, label %226, label %221, !llvm.loop !163

226:                                              ; preds = %221
  %227 = add nuw nsw i64 %216, 1
  %228 = icmp eq i64 %227, 5
  br i1 %228, label %229, label %215, !llvm.loop !164

229:                                              ; preds = %226
  %230 = getelementptr inbounds i16, ptr %202, i64 %212
  %231 = getelementptr inbounds %struct._PixelList, ptr %213, i64 0, i32 2
  %232 = load i64, ptr %231, align 8, !tbaa !161
  %233 = add i64 %232, 1
  store i64 %233, ptr %231, align 8, !tbaa !161
  %234 = getelementptr inbounds %struct._PixelList, ptr %213, i64 0, i32 1
  store i64 %232, ptr %234, align 8, !tbaa !165
  br i1 %117, label %235, label %605

235:                                              ; preds = %229
  %236 = getelementptr inbounds %struct._PixelList, ptr %213, i64 0, i32 3, i64 0, i32 1
  %237 = getelementptr inbounds %struct._PixelList, ptr %213, i64 0, i32 3
  %238 = getelementptr inbounds %struct._PixelList, ptr %213, i64 0, i32 3, i64 0, i32 1
  %239 = getelementptr inbounds %struct._PixelList, ptr %213, i64 0, i32 3, i64 1, i32 1
  %240 = getelementptr inbounds %struct._PixelList, ptr %213, i64 0, i32 3, i64 1
  %241 = getelementptr inbounds %struct._PixelList, ptr %213, i64 0, i32 3, i64 1, i32 1
  %242 = getelementptr inbounds %struct._PixelList, ptr %213, i64 0, i32 3, i64 2, i32 1
  %243 = getelementptr inbounds %struct._PixelList, ptr %213, i64 0, i32 3, i64 2
  %244 = getelementptr inbounds %struct._PixelList, ptr %213, i64 0, i32 3, i64 2, i32 1
  %245 = getelementptr inbounds %struct._PixelList, ptr %213, i64 0, i32 3, i64 3, i32 1
  %246 = getelementptr inbounds %struct._PixelList, ptr %213, i64 0, i32 3, i64 3
  %247 = getelementptr inbounds %struct._PixelList, ptr %213, i64 0, i32 3, i64 3, i32 1
  %248 = getelementptr inbounds %struct._PixelList, ptr %213, i64 0, i32 3, i64 4, i32 1
  %249 = getelementptr inbounds %struct._PixelList, ptr %213, i64 0, i32 3, i64 4
  %250 = getelementptr inbounds %struct._PixelList, ptr %213, i64 0, i32 3, i64 4, i32 1
  br label %251

251:                                              ; preds = %235, %598
  %252 = phi ptr [ %230, %235 ], [ %602, %598 ]
  %253 = phi i64 [ 0, %235 ], [ %603, %598 ]
  %254 = phi ptr [ %210, %235 ], [ %601, %598 ]
  br i1 %118, label %255, label %598

255:                                              ; preds = %251
  %256 = load ptr, ptr %236, align 8, !tbaa !157
  %257 = load ptr, ptr %239, align 8, !tbaa !157
  %258 = load ptr, ptr %242, align 8, !tbaa !157
  %259 = load ptr, ptr %245, align 8, !tbaa !157
  %260 = load i32, ptr %119, align 4, !tbaa !83
  %261 = icmp ne i32 %260, 12
  %262 = icmp eq ptr %252, null
  %263 = load ptr, ptr %248, align 8, !tbaa !157
  %264 = select i1 %261, i1 true, i1 %262
  br label %265

265:                                              ; preds = %255, %595
  %266 = phi i64 [ 0, %255 ], [ %596, %595 ]
  %267 = getelementptr inbounds %struct._PixelPacket, ptr %254, i64 %266
  %268 = getelementptr inbounds i16, ptr %252, i64 %266
  %269 = getelementptr inbounds %struct._PixelPacket, ptr %254, i64 %266, i32 2
  %270 = load i16, ptr %269, align 2, !tbaa !61
  %271 = zext i16 %270 to i64
  %272 = getelementptr inbounds %struct._ListNode, ptr %256, i64 %271, i32 2
  %273 = load i64, ptr %272, align 8, !tbaa !166
  %274 = load i64, ptr %231, align 8, !tbaa !161
  %275 = icmp eq i64 %273, %274
  br i1 %275, label %276, label %280

276:                                              ; preds = %265
  %277 = getelementptr inbounds %struct._ListNode, ptr %256, i64 %271, i32 1
  %278 = load i64, ptr %277, align 8, !tbaa !168
  %279 = add i64 %278, 1
  store i64 %279, ptr %277, align 8, !tbaa !168
  br label %333

280:                                              ; preds = %265
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %15) #13
  %281 = load ptr, ptr %238, align 8, !tbaa !157
  %282 = getelementptr inbounds %struct._ListNode, ptr %281, i64 %271, i32 2
  store i64 %274, ptr %282, align 8, !tbaa !166
  %283 = getelementptr inbounds %struct._ListNode, ptr %281, i64 %271, i32 1
  store i64 1, ptr %283, align 8, !tbaa !168
  %284 = load i64, ptr %237, align 8, !tbaa !162
  %285 = icmp sgt i64 %284, -1
  br i1 %285, label %286, label %290

286:                                              ; preds = %280, %297
  %287 = phi i64 [ %293, %297 ], [ 65536, %280 ]
  %288 = phi i64 [ %299, %297 ], [ %284, %280 ]
  %289 = getelementptr [9 x i64], ptr %281, i64 0, i64 %288
  br label %292

290:                                              ; preds = %297, %280
  %291 = load i64, ptr %234, align 8, !tbaa !165
  br label %301

292:                                              ; preds = %292, %286
  %293 = phi i64 [ %295, %292 ], [ %287, %286 ]
  %294 = getelementptr %struct._ListNode, ptr %289, i64 %293
  %295 = load i64, ptr %294, align 8, !tbaa !74
  %296 = icmp ult i64 %295, %271
  br i1 %296, label %292, label %297, !llvm.loop !169

297:                                              ; preds = %292
  %298 = getelementptr inbounds [9 x i64], ptr %15, i64 0, i64 %288
  store i64 %293, ptr %298, align 8, !tbaa !74
  %299 = add nsw i64 %288, -1
  %300 = icmp sgt i64 %288, 0
  br i1 %300, label %286, label %290, !llvm.loop !170

301:                                              ; preds = %301, %290
  %302 = phi i64 [ %305, %301 ], [ %291, %290 ]
  %303 = phi i64 [ %308, %301 ], [ 0, %290 ]
  %304 = mul i64 %302, 42893621
  %305 = add i64 %304, 1
  %306 = and i64 %305, 768
  %307 = icmp eq i64 %306, 768
  %308 = add nuw nsw i64 %303, 1
  br i1 %307, label %301, label %309, !llvm.loop !171

309:                                              ; preds = %301
  store i64 %305, ptr %234, align 8, !tbaa !165
  %310 = call i64 @llvm.umin.i64(i64 %303, i64 8)
  %311 = add i64 %284, 2
  %312 = call i64 @llvm.smin.i64(i64 %310, i64 %311)
  %313 = icmp sgt i64 %312, %284
  br i1 %313, label %317, label %315

314:                                              ; preds = %317
  store i64 %319, ptr %237, align 8, !tbaa !162
  br label %315

315:                                              ; preds = %314, %309
  %316 = getelementptr inbounds %struct._ListNode, ptr %281, i64 %271
  br label %322

317:                                              ; preds = %309, %317
  %318 = phi i64 [ %319, %317 ], [ %284, %309 ]
  %319 = add nsw i64 %318, 1
  %320 = getelementptr inbounds [9 x i64], ptr %15, i64 0, i64 %319
  store i64 65536, ptr %320, align 8, !tbaa !74
  %321 = icmp eq i64 %319, %312
  br i1 %321, label %314, label %317, !llvm.loop !172

322:                                              ; preds = %322, %315
  %323 = phi i64 [ %330, %322 ], [ %312, %315 ]
  %324 = getelementptr inbounds [9 x i64], ptr %15, i64 0, i64 %323
  %325 = load i64, ptr %324, align 8, !tbaa !74
  %326 = getelementptr inbounds %struct._ListNode, ptr %281, i64 %325
  %327 = getelementptr inbounds [9 x i64], ptr %326, i64 0, i64 %323
  %328 = load i64, ptr %327, align 8, !tbaa !74
  %329 = getelementptr inbounds [9 x i64], ptr %316, i64 0, i64 %323
  store i64 %328, ptr %329, align 8, !tbaa !74
  store i64 %271, ptr %327, align 8, !tbaa !74
  %330 = add nsw i64 %323, -1
  %331 = icmp sgt i64 %323, 0
  br i1 %331, label %322, label %332, !llvm.loop !173

332:                                              ; preds = %322
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %15) #13
  br label %333

333:                                              ; preds = %332, %276
  %334 = getelementptr inbounds %struct._PixelPacket, ptr %254, i64 %266, i32 1
  %335 = load i16, ptr %334, align 2, !tbaa !62
  %336 = zext i16 %335 to i64
  %337 = getelementptr inbounds %struct._ListNode, ptr %257, i64 %336, i32 2
  %338 = load i64, ptr %337, align 8, !tbaa !166
  %339 = load i64, ptr %231, align 8, !tbaa !161
  %340 = icmp eq i64 %338, %339
  br i1 %340, label %341, label %345

341:                                              ; preds = %333
  %342 = getelementptr inbounds %struct._ListNode, ptr %257, i64 %336, i32 1
  %343 = load i64, ptr %342, align 8, !tbaa !168
  %344 = add i64 %343, 1
  store i64 %344, ptr %342, align 8, !tbaa !168
  br label %398

345:                                              ; preds = %333
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %14) #13
  %346 = load ptr, ptr %241, align 8, !tbaa !157
  %347 = getelementptr inbounds %struct._ListNode, ptr %346, i64 %336, i32 2
  store i64 %339, ptr %347, align 8, !tbaa !166
  %348 = getelementptr inbounds %struct._ListNode, ptr %346, i64 %336, i32 1
  store i64 1, ptr %348, align 8, !tbaa !168
  %349 = load i64, ptr %240, align 8, !tbaa !162
  %350 = icmp sgt i64 %349, -1
  br i1 %350, label %351, label %355

351:                                              ; preds = %345, %362
  %352 = phi i64 [ %358, %362 ], [ 65536, %345 ]
  %353 = phi i64 [ %364, %362 ], [ %349, %345 ]
  %354 = getelementptr [9 x i64], ptr %346, i64 0, i64 %353
  br label %357

355:                                              ; preds = %362, %345
  %356 = load i64, ptr %234, align 8, !tbaa !165
  br label %366

357:                                              ; preds = %357, %351
  %358 = phi i64 [ %360, %357 ], [ %352, %351 ]
  %359 = getelementptr %struct._ListNode, ptr %354, i64 %358
  %360 = load i64, ptr %359, align 8, !tbaa !74
  %361 = icmp ult i64 %360, %336
  br i1 %361, label %357, label %362, !llvm.loop !169

362:                                              ; preds = %357
  %363 = getelementptr inbounds [9 x i64], ptr %14, i64 0, i64 %353
  store i64 %358, ptr %363, align 8, !tbaa !74
  %364 = add nsw i64 %353, -1
  %365 = icmp sgt i64 %353, 0
  br i1 %365, label %351, label %355, !llvm.loop !170

366:                                              ; preds = %366, %355
  %367 = phi i64 [ %370, %366 ], [ %356, %355 ]
  %368 = phi i64 [ %373, %366 ], [ 0, %355 ]
  %369 = mul i64 %367, 42893621
  %370 = add i64 %369, 1
  %371 = and i64 %370, 768
  %372 = icmp eq i64 %371, 768
  %373 = add nuw nsw i64 %368, 1
  br i1 %372, label %366, label %374, !llvm.loop !171

374:                                              ; preds = %366
  store i64 %370, ptr %234, align 8, !tbaa !165
  %375 = call i64 @llvm.umin.i64(i64 %368, i64 8)
  %376 = add i64 %349, 2
  %377 = call i64 @llvm.smin.i64(i64 %375, i64 %376)
  %378 = icmp sgt i64 %377, %349
  br i1 %378, label %382, label %380

379:                                              ; preds = %382
  store i64 %384, ptr %240, align 8, !tbaa !162
  br label %380

380:                                              ; preds = %379, %374
  %381 = getelementptr inbounds %struct._ListNode, ptr %346, i64 %336
  br label %387

382:                                              ; preds = %374, %382
  %383 = phi i64 [ %384, %382 ], [ %349, %374 ]
  %384 = add nsw i64 %383, 1
  %385 = getelementptr inbounds [9 x i64], ptr %14, i64 0, i64 %384
  store i64 65536, ptr %385, align 8, !tbaa !74
  %386 = icmp eq i64 %384, %377
  br i1 %386, label %379, label %382, !llvm.loop !172

387:                                              ; preds = %387, %380
  %388 = phi i64 [ %395, %387 ], [ %377, %380 ]
  %389 = getelementptr inbounds [9 x i64], ptr %14, i64 0, i64 %388
  %390 = load i64, ptr %389, align 8, !tbaa !74
  %391 = getelementptr inbounds %struct._ListNode, ptr %346, i64 %390
  %392 = getelementptr inbounds [9 x i64], ptr %391, i64 0, i64 %388
  %393 = load i64, ptr %392, align 8, !tbaa !74
  %394 = getelementptr inbounds [9 x i64], ptr %381, i64 0, i64 %388
  store i64 %393, ptr %394, align 8, !tbaa !74
  store i64 %336, ptr %392, align 8, !tbaa !74
  %395 = add nsw i64 %388, -1
  %396 = icmp sgt i64 %388, 0
  br i1 %396, label %387, label %397, !llvm.loop !173

397:                                              ; preds = %387
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %14) #13
  br label %398

398:                                              ; preds = %397, %341
  %399 = load i16, ptr %267, align 2, !tbaa !63
  %400 = zext i16 %399 to i64
  %401 = getelementptr inbounds %struct._ListNode, ptr %258, i64 %400, i32 2
  %402 = load i64, ptr %401, align 8, !tbaa !166
  %403 = load i64, ptr %231, align 8, !tbaa !161
  %404 = icmp eq i64 %402, %403
  br i1 %404, label %405, label %409

405:                                              ; preds = %398
  %406 = getelementptr inbounds %struct._ListNode, ptr %258, i64 %400, i32 1
  %407 = load i64, ptr %406, align 8, !tbaa !168
  %408 = add i64 %407, 1
  store i64 %408, ptr %406, align 8, !tbaa !168
  br label %462

409:                                              ; preds = %398
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %13) #13
  %410 = load ptr, ptr %244, align 8, !tbaa !157
  %411 = getelementptr inbounds %struct._ListNode, ptr %410, i64 %400, i32 2
  store i64 %403, ptr %411, align 8, !tbaa !166
  %412 = getelementptr inbounds %struct._ListNode, ptr %410, i64 %400, i32 1
  store i64 1, ptr %412, align 8, !tbaa !168
  %413 = load i64, ptr %243, align 8, !tbaa !162
  %414 = icmp sgt i64 %413, -1
  br i1 %414, label %415, label %419

415:                                              ; preds = %409, %426
  %416 = phi i64 [ %422, %426 ], [ 65536, %409 ]
  %417 = phi i64 [ %428, %426 ], [ %413, %409 ]
  %418 = getelementptr [9 x i64], ptr %410, i64 0, i64 %417
  br label %421

419:                                              ; preds = %426, %409
  %420 = load i64, ptr %234, align 8, !tbaa !165
  br label %430

421:                                              ; preds = %421, %415
  %422 = phi i64 [ %424, %421 ], [ %416, %415 ]
  %423 = getelementptr %struct._ListNode, ptr %418, i64 %422
  %424 = load i64, ptr %423, align 8, !tbaa !74
  %425 = icmp ult i64 %424, %400
  br i1 %425, label %421, label %426, !llvm.loop !169

426:                                              ; preds = %421
  %427 = getelementptr inbounds [9 x i64], ptr %13, i64 0, i64 %417
  store i64 %422, ptr %427, align 8, !tbaa !74
  %428 = add nsw i64 %417, -1
  %429 = icmp sgt i64 %417, 0
  br i1 %429, label %415, label %419, !llvm.loop !170

430:                                              ; preds = %430, %419
  %431 = phi i64 [ %434, %430 ], [ %420, %419 ]
  %432 = phi i64 [ %437, %430 ], [ 0, %419 ]
  %433 = mul i64 %431, 42893621
  %434 = add i64 %433, 1
  %435 = and i64 %434, 768
  %436 = icmp eq i64 %435, 768
  %437 = add nuw nsw i64 %432, 1
  br i1 %436, label %430, label %438, !llvm.loop !171

438:                                              ; preds = %430
  store i64 %434, ptr %234, align 8, !tbaa !165
  %439 = call i64 @llvm.umin.i64(i64 %432, i64 8)
  %440 = add i64 %413, 2
  %441 = call i64 @llvm.smin.i64(i64 %439, i64 %440)
  %442 = icmp sgt i64 %441, %413
  br i1 %442, label %446, label %444

443:                                              ; preds = %446
  store i64 %448, ptr %243, align 8, !tbaa !162
  br label %444

444:                                              ; preds = %443, %438
  %445 = getelementptr inbounds %struct._ListNode, ptr %410, i64 %400
  br label %451

446:                                              ; preds = %438, %446
  %447 = phi i64 [ %448, %446 ], [ %413, %438 ]
  %448 = add nsw i64 %447, 1
  %449 = getelementptr inbounds [9 x i64], ptr %13, i64 0, i64 %448
  store i64 65536, ptr %449, align 8, !tbaa !74
  %450 = icmp eq i64 %448, %441
  br i1 %450, label %443, label %446, !llvm.loop !172

451:                                              ; preds = %451, %444
  %452 = phi i64 [ %459, %451 ], [ %441, %444 ]
  %453 = getelementptr inbounds [9 x i64], ptr %13, i64 0, i64 %452
  %454 = load i64, ptr %453, align 8, !tbaa !74
  %455 = getelementptr inbounds %struct._ListNode, ptr %410, i64 %454
  %456 = getelementptr inbounds [9 x i64], ptr %455, i64 0, i64 %452
  %457 = load i64, ptr %456, align 8, !tbaa !74
  %458 = getelementptr inbounds [9 x i64], ptr %445, i64 0, i64 %452
  store i64 %457, ptr %458, align 8, !tbaa !74
  store i64 %400, ptr %456, align 8, !tbaa !74
  %459 = add nsw i64 %452, -1
  %460 = icmp sgt i64 %452, 0
  br i1 %460, label %451, label %461, !llvm.loop !173

461:                                              ; preds = %451
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %13) #13
  br label %462

462:                                              ; preds = %461, %405
  %463 = getelementptr inbounds %struct._PixelPacket, ptr %254, i64 %266, i32 3
  %464 = load i16, ptr %463, align 2, !tbaa !65
  %465 = zext i16 %464 to i64
  %466 = getelementptr inbounds %struct._ListNode, ptr %259, i64 %465, i32 2
  %467 = load i64, ptr %466, align 8, !tbaa !166
  %468 = load i64, ptr %231, align 8, !tbaa !161
  %469 = icmp eq i64 %467, %468
  br i1 %469, label %470, label %474

470:                                              ; preds = %462
  %471 = getelementptr inbounds %struct._ListNode, ptr %259, i64 %465, i32 1
  %472 = load i64, ptr %471, align 8, !tbaa !168
  %473 = add i64 %472, 1
  store i64 %473, ptr %471, align 8, !tbaa !168
  br label %527

474:                                              ; preds = %462
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %12) #13
  %475 = load ptr, ptr %247, align 8, !tbaa !157
  %476 = getelementptr inbounds %struct._ListNode, ptr %475, i64 %465, i32 2
  store i64 %468, ptr %476, align 8, !tbaa !166
  %477 = getelementptr inbounds %struct._ListNode, ptr %475, i64 %465, i32 1
  store i64 1, ptr %477, align 8, !tbaa !168
  %478 = load i64, ptr %246, align 8, !tbaa !162
  %479 = icmp sgt i64 %478, -1
  br i1 %479, label %480, label %484

480:                                              ; preds = %474, %491
  %481 = phi i64 [ %487, %491 ], [ 65536, %474 ]
  %482 = phi i64 [ %493, %491 ], [ %478, %474 ]
  %483 = getelementptr [9 x i64], ptr %475, i64 0, i64 %482
  br label %486

484:                                              ; preds = %491, %474
  %485 = load i64, ptr %234, align 8, !tbaa !165
  br label %495

486:                                              ; preds = %486, %480
  %487 = phi i64 [ %489, %486 ], [ %481, %480 ]
  %488 = getelementptr %struct._ListNode, ptr %483, i64 %487
  %489 = load i64, ptr %488, align 8, !tbaa !74
  %490 = icmp ult i64 %489, %465
  br i1 %490, label %486, label %491, !llvm.loop !169

491:                                              ; preds = %486
  %492 = getelementptr inbounds [9 x i64], ptr %12, i64 0, i64 %482
  store i64 %487, ptr %492, align 8, !tbaa !74
  %493 = add nsw i64 %482, -1
  %494 = icmp sgt i64 %482, 0
  br i1 %494, label %480, label %484, !llvm.loop !170

495:                                              ; preds = %495, %484
  %496 = phi i64 [ %499, %495 ], [ %485, %484 ]
  %497 = phi i64 [ %502, %495 ], [ 0, %484 ]
  %498 = mul i64 %496, 42893621
  %499 = add i64 %498, 1
  %500 = and i64 %499, 768
  %501 = icmp eq i64 %500, 768
  %502 = add nuw nsw i64 %497, 1
  br i1 %501, label %495, label %503, !llvm.loop !171

503:                                              ; preds = %495
  store i64 %499, ptr %234, align 8, !tbaa !165
  %504 = call i64 @llvm.umin.i64(i64 %497, i64 8)
  %505 = add i64 %478, 2
  %506 = call i64 @llvm.smin.i64(i64 %504, i64 %505)
  %507 = icmp sgt i64 %506, %478
  br i1 %507, label %511, label %509

508:                                              ; preds = %511
  store i64 %513, ptr %246, align 8, !tbaa !162
  br label %509

509:                                              ; preds = %508, %503
  %510 = getelementptr inbounds %struct._ListNode, ptr %475, i64 %465
  br label %516

511:                                              ; preds = %503, %511
  %512 = phi i64 [ %513, %511 ], [ %478, %503 ]
  %513 = add nsw i64 %512, 1
  %514 = getelementptr inbounds [9 x i64], ptr %12, i64 0, i64 %513
  store i64 65536, ptr %514, align 8, !tbaa !74
  %515 = icmp eq i64 %513, %506
  br i1 %515, label %508, label %511, !llvm.loop !172

516:                                              ; preds = %516, %509
  %517 = phi i64 [ %524, %516 ], [ %506, %509 ]
  %518 = getelementptr inbounds [9 x i64], ptr %12, i64 0, i64 %517
  %519 = load i64, ptr %518, align 8, !tbaa !74
  %520 = getelementptr inbounds %struct._ListNode, ptr %475, i64 %519
  %521 = getelementptr inbounds [9 x i64], ptr %520, i64 0, i64 %517
  %522 = load i64, ptr %521, align 8, !tbaa !74
  %523 = getelementptr inbounds [9 x i64], ptr %510, i64 0, i64 %517
  store i64 %522, ptr %523, align 8, !tbaa !74
  store i64 %465, ptr %521, align 8, !tbaa !74
  %524 = add nsw i64 %517, -1
  %525 = icmp sgt i64 %517, 0
  br i1 %525, label %516, label %526, !llvm.loop !173

526:                                              ; preds = %516
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %12) #13
  br label %527

527:                                              ; preds = %526, %470
  %528 = select i1 %261, i16 %464, i16 0
  br i1 %264, label %531, label %529

529:                                              ; preds = %527
  %530 = load i16, ptr %268, align 2, !tbaa !66
  br label %531

531:                                              ; preds = %527, %529
  %532 = phi i16 [ %528, %527 ], [ %530, %529 ]
  %533 = zext i16 %532 to i64
  %534 = getelementptr inbounds %struct._ListNode, ptr %263, i64 %533, i32 2
  %535 = load i64, ptr %534, align 8, !tbaa !166
  %536 = load i64, ptr %231, align 8, !tbaa !161
  %537 = icmp eq i64 %535, %536
  br i1 %537, label %538, label %542

538:                                              ; preds = %531
  %539 = getelementptr inbounds %struct._ListNode, ptr %263, i64 %533, i32 1
  %540 = load i64, ptr %539, align 8, !tbaa !168
  %541 = add i64 %540, 1
  store i64 %541, ptr %539, align 8, !tbaa !168
  br label %595

542:                                              ; preds = %531
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %11) #13
  %543 = load ptr, ptr %250, align 8, !tbaa !157
  %544 = getelementptr inbounds %struct._ListNode, ptr %543, i64 %533, i32 2
  store i64 %536, ptr %544, align 8, !tbaa !166
  %545 = getelementptr inbounds %struct._ListNode, ptr %543, i64 %533, i32 1
  store i64 1, ptr %545, align 8, !tbaa !168
  %546 = load i64, ptr %249, align 8, !tbaa !162
  %547 = icmp sgt i64 %546, -1
  br i1 %547, label %548, label %552

548:                                              ; preds = %542, %559
  %549 = phi i64 [ %555, %559 ], [ 65536, %542 ]
  %550 = phi i64 [ %561, %559 ], [ %546, %542 ]
  %551 = getelementptr [9 x i64], ptr %543, i64 0, i64 %550
  br label %554

552:                                              ; preds = %559, %542
  %553 = load i64, ptr %234, align 8, !tbaa !165
  br label %563

554:                                              ; preds = %554, %548
  %555 = phi i64 [ %557, %554 ], [ %549, %548 ]
  %556 = getelementptr %struct._ListNode, ptr %551, i64 %555
  %557 = load i64, ptr %556, align 8, !tbaa !74
  %558 = icmp ult i64 %557, %533
  br i1 %558, label %554, label %559, !llvm.loop !169

559:                                              ; preds = %554
  %560 = getelementptr inbounds [9 x i64], ptr %11, i64 0, i64 %550
  store i64 %555, ptr %560, align 8, !tbaa !74
  %561 = add nsw i64 %550, -1
  %562 = icmp sgt i64 %550, 0
  br i1 %562, label %548, label %552, !llvm.loop !170

563:                                              ; preds = %563, %552
  %564 = phi i64 [ %567, %563 ], [ %553, %552 ]
  %565 = phi i64 [ %570, %563 ], [ 0, %552 ]
  %566 = mul i64 %564, 42893621
  %567 = add i64 %566, 1
  %568 = and i64 %567, 768
  %569 = icmp eq i64 %568, 768
  %570 = add nuw nsw i64 %565, 1
  br i1 %569, label %563, label %571, !llvm.loop !171

571:                                              ; preds = %563
  store i64 %567, ptr %234, align 8, !tbaa !165
  %572 = call i64 @llvm.umin.i64(i64 %565, i64 8)
  %573 = add i64 %546, 2
  %574 = call i64 @llvm.smin.i64(i64 %572, i64 %573)
  %575 = icmp sgt i64 %574, %546
  br i1 %575, label %579, label %577

576:                                              ; preds = %579
  store i64 %581, ptr %249, align 8, !tbaa !162
  br label %577

577:                                              ; preds = %576, %571
  %578 = getelementptr inbounds %struct._ListNode, ptr %543, i64 %533
  br label %584

579:                                              ; preds = %571, %579
  %580 = phi i64 [ %581, %579 ], [ %546, %571 ]
  %581 = add nsw i64 %580, 1
  %582 = getelementptr inbounds [9 x i64], ptr %11, i64 0, i64 %581
  store i64 65536, ptr %582, align 8, !tbaa !74
  %583 = icmp eq i64 %581, %574
  br i1 %583, label %576, label %579, !llvm.loop !172

584:                                              ; preds = %584, %577
  %585 = phi i64 [ %592, %584 ], [ %574, %577 ]
  %586 = getelementptr inbounds [9 x i64], ptr %11, i64 0, i64 %585
  %587 = load i64, ptr %586, align 8, !tbaa !74
  %588 = getelementptr inbounds %struct._ListNode, ptr %543, i64 %587
  %589 = getelementptr inbounds [9 x i64], ptr %588, i64 0, i64 %585
  %590 = load i64, ptr %589, align 8, !tbaa !74
  %591 = getelementptr inbounds [9 x i64], ptr %578, i64 0, i64 %585
  store i64 %590, ptr %591, align 8, !tbaa !74
  store i64 %533, ptr %589, align 8, !tbaa !74
  %592 = add nsw i64 %585, -1
  %593 = icmp sgt i64 %585, 0
  br i1 %593, label %584, label %594, !llvm.loop !173

594:                                              ; preds = %584
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %11) #13
  br label %595

595:                                              ; preds = %538, %594
  %596 = add nuw nsw i64 %266, 1
  %597 = icmp eq i64 %596, %47
  br i1 %597, label %598, label %265, !llvm.loop !174

598:                                              ; preds = %595, %251
  %599 = load i64, ptr %30, align 8, !tbaa !60
  %600 = add i64 %599, %47
  %601 = getelementptr inbounds %struct._PixelPacket, ptr %254, i64 %600
  %602 = getelementptr inbounds i16, ptr %252, i64 %600
  %603 = add nuw nsw i64 %253, 1
  %604 = icmp eq i64 %603, %52
  br i1 %604, label %605, label %251, !llvm.loop !175

605:                                              ; preds = %598, %229
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %22) #13
  %606 = getelementptr inbounds %struct._PixelPacket, ptr %210, i64 %121
  %607 = getelementptr inbounds %struct._PixelPacket, ptr %210, i64 %121, i32 2
  %608 = load i16, ptr %607, align 2, !tbaa !61
  %609 = uitofp i16 %608 to float
  store float %609, ptr %122, align 8, !tbaa !78
  %610 = getelementptr inbounds %struct._PixelPacket, ptr %210, i64 %121, i32 1
  %611 = load i16, ptr %610, align 2, !tbaa !62
  %612 = uitofp i16 %611 to float
  store float %612, ptr %123, align 4, !tbaa !80
  %613 = load i16, ptr %606, align 2, !tbaa !63
  %614 = uitofp i16 %613 to float
  store float %614, ptr %124, align 8, !tbaa !81
  %615 = getelementptr inbounds %struct._PixelPacket, ptr %210, i64 %121, i32 3
  %616 = load i16, ptr %615, align 2, !tbaa !65
  %617 = uitofp i16 %616 to float
  store float %617, ptr %125, align 4, !tbaa !82
  %618 = load i32, ptr %126, align 4, !tbaa !83
  %619 = icmp eq i32 %618, 12
  %620 = and i1 %207, %619
  br i1 %620, label %621, label %625

621:                                              ; preds = %605
  %622 = getelementptr inbounds i16, ptr %230, i64 %121
  %623 = load i16, ptr %622, align 2, !tbaa !66
  %624 = uitofp i16 %623 to float
  store float %624, ptr %127, align 8, !tbaa !84
  br label %625

625:                                              ; preds = %605, %621
  %626 = load ptr, ptr %101, align 8, !tbaa !57
  %627 = getelementptr inbounds %struct._PixelList, ptr %626, i64 0, i32 3
  switch i32 %2, label %789 [
    i32 1, label %628
    i32 2, label %717
    i32 3, label %752
    i32 8, label %937
    i32 5, label %821
    i32 6, label %856
    i32 7, label %894
  ]

628:                                              ; preds = %625
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %10) #13
  %629 = load i64, ptr %626, align 8, !tbaa !155
  br label %630

630:                                              ; preds = %647, %628
  %631 = phi i64 [ 0, %628 ], [ %650, %647 ]
  %632 = getelementptr inbounds %struct._SkipList, ptr %627, i64 %631, i32 1
  %633 = load ptr, ptr %632, align 8, !tbaa !157
  %634 = getelementptr inbounds %struct._ListNode, ptr %633, i64 65536
  %635 = load i64, ptr %634, align 8, !tbaa !74
  br label %636

636:                                              ; preds = %636, %630
  %637 = phi i64 [ 65536, %630 ], [ %641, %636 ]
  %638 = phi i64 [ %635, %630 ], [ %642, %636 ]
  %639 = phi i64 [ 0, %630 ], [ %645, %636 ]
  %640 = getelementptr inbounds %struct._ListNode, ptr %633, i64 %637
  %641 = load i64, ptr %640, align 8, !tbaa !74
  %642 = call i64 @llvm.umin.i64(i64 %641, i64 %638)
  %643 = getelementptr inbounds %struct._ListNode, ptr %633, i64 %641, i32 1
  %644 = load i64, ptr %643, align 8, !tbaa !168
  %645 = add i64 %644, %639
  %646 = icmp slt i64 %645, %629
  br i1 %646, label %636, label %647, !llvm.loop !176

647:                                              ; preds = %636
  %648 = trunc i64 %642 to i16
  %649 = getelementptr inbounds [5 x i16], ptr %10, i64 0, i64 %631
  store i16 %648, ptr %649, align 2, !tbaa !66
  %650 = add nuw nsw i64 %631, 1
  %651 = icmp eq i64 %650, 5
  br i1 %651, label %652, label %630, !llvm.loop !177

652:                                              ; preds = %647
  %653 = load i16, ptr %10, align 2, !tbaa !66
  %654 = uitofp i16 %653 to float
  store float %654, ptr %122, align 8, !tbaa !78
  %655 = load i16, ptr %158, align 2, !tbaa !66
  %656 = uitofp i16 %655 to float
  store float %656, ptr %123, align 4, !tbaa !80
  %657 = load i16, ptr %159, align 2, !tbaa !66
  %658 = uitofp i16 %657 to float
  store float %658, ptr %124, align 8, !tbaa !81
  %659 = load i16, ptr %160, align 2, !tbaa !66
  %660 = uitofp i16 %659 to float
  store float %660, ptr %125, align 4, !tbaa !82
  %661 = load i16, ptr %161, align 2, !tbaa !66
  %662 = uitofp i16 %661 to float
  store float %662, ptr %162, align 8, !tbaa !84
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %9) #13
  br label %663

663:                                              ; preds = %680, %652
  %664 = phi i64 [ 0, %652 ], [ %683, %680 ]
  %665 = getelementptr inbounds %struct._SkipList, ptr %627, i64 %664, i32 1
  %666 = load ptr, ptr %665, align 8, !tbaa !157
  %667 = getelementptr inbounds %struct._ListNode, ptr %666, i64 65536
  %668 = load i64, ptr %667, align 8, !tbaa !74
  br label %669

669:                                              ; preds = %669, %663
  %670 = phi i64 [ 65536, %663 ], [ %674, %669 ]
  %671 = phi i64 [ %668, %663 ], [ %675, %669 ]
  %672 = phi i64 [ 0, %663 ], [ %678, %669 ]
  %673 = getelementptr inbounds %struct._ListNode, ptr %666, i64 %670
  %674 = load i64, ptr %673, align 8, !tbaa !74
  %675 = call i64 @llvm.umax.i64(i64 %674, i64 %671)
  %676 = getelementptr inbounds %struct._ListNode, ptr %666, i64 %674, i32 1
  %677 = load i64, ptr %676, align 8, !tbaa !168
  %678 = add i64 %677, %672
  %679 = icmp slt i64 %678, %629
  br i1 %679, label %669, label %680, !llvm.loop !178

680:                                              ; preds = %669
  %681 = trunc i64 %675 to i16
  %682 = getelementptr inbounds [5 x i16], ptr %9, i64 0, i64 %664
  store i16 %681, ptr %682, align 2, !tbaa !66
  %683 = add nuw nsw i64 %664, 1
  %684 = icmp eq i64 %683, 5
  br i1 %684, label %685, label %663, !llvm.loop !179

685:                                              ; preds = %680
  %686 = load i16, ptr %9, align 2, !tbaa !66
  %687 = uitofp i16 %686 to float
  store float %687, ptr %122, align 8, !tbaa !78
  %688 = load i16, ptr %163, align 2, !tbaa !66
  %689 = uitofp i16 %688 to float
  store float %689, ptr %123, align 4, !tbaa !80
  %690 = load i16, ptr %164, align 2, !tbaa !66
  %691 = uitofp i16 %690 to float
  store float %691, ptr %124, align 8, !tbaa !81
  %692 = load i16, ptr %165, align 2, !tbaa !66
  %693 = uitofp i16 %692 to float
  store float %693, ptr %125, align 4, !tbaa !82
  %694 = load i16, ptr %166, align 2, !tbaa !66
  %695 = uitofp i16 %694 to float
  store float %695, ptr %162, align 8, !tbaa !84
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %9) #13
  %696 = fsub float %687, %654
  %697 = fcmp olt float %696, 0.000000e+00
  %698 = fneg float %696
  %699 = select i1 %697, float %698, float %696
  store float %699, ptr %122, align 8, !tbaa !78
  %700 = fsub float %689, %656
  %701 = fcmp olt float %700, 0.000000e+00
  %702 = fneg float %700
  %703 = select i1 %701, float %702, float %700
  store float %703, ptr %123, align 4, !tbaa !80
  %704 = fsub float %691, %658
  %705 = fcmp olt float %704, 0.000000e+00
  %706 = fneg float %704
  %707 = select i1 %705, float %706, float %704
  store float %707, ptr %124, align 8, !tbaa !81
  %708 = fsub float %693, %660
  %709 = fcmp olt float %708, 0.000000e+00
  %710 = fneg float %708
  %711 = select i1 %709, float %710, float %708
  store float %711, ptr %125, align 4, !tbaa !82
  br i1 %619, label %712, label %989

712:                                              ; preds = %685
  %713 = fsub float %695, %662
  %714 = fcmp olt float %713, 0.000000e+00
  %715 = fneg float %713
  %716 = select i1 %714, float %715, float %713
  store float %716, ptr %162, align 8, !tbaa !84
  br label %989

717:                                              ; preds = %625
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %8) #13
  %718 = load i64, ptr %626, align 8, !tbaa !155
  br label %719

719:                                              ; preds = %736, %717
  %720 = phi i64 [ 0, %717 ], [ %739, %736 ]
  %721 = getelementptr inbounds %struct._SkipList, ptr %627, i64 %720, i32 1
  %722 = load ptr, ptr %721, align 8, !tbaa !157
  %723 = getelementptr inbounds %struct._ListNode, ptr %722, i64 65536
  %724 = load i64, ptr %723, align 8, !tbaa !74
  br label %725

725:                                              ; preds = %725, %719
  %726 = phi i64 [ 65536, %719 ], [ %730, %725 ]
  %727 = phi i64 [ %724, %719 ], [ %731, %725 ]
  %728 = phi i64 [ 0, %719 ], [ %734, %725 ]
  %729 = getelementptr inbounds %struct._ListNode, ptr %722, i64 %726
  %730 = load i64, ptr %729, align 8, !tbaa !74
  %731 = call i64 @llvm.umax.i64(i64 %730, i64 %727)
  %732 = getelementptr inbounds %struct._ListNode, ptr %722, i64 %730, i32 1
  %733 = load i64, ptr %732, align 8, !tbaa !168
  %734 = add i64 %733, %728
  %735 = icmp slt i64 %734, %718
  br i1 %735, label %725, label %736, !llvm.loop !178

736:                                              ; preds = %725
  %737 = trunc i64 %731 to i16
  %738 = getelementptr inbounds [5 x i16], ptr %8, i64 0, i64 %720
  store i16 %737, ptr %738, align 2, !tbaa !66
  %739 = add nuw nsw i64 %720, 1
  %740 = icmp eq i64 %739, 5
  br i1 %740, label %741, label %719, !llvm.loop !179

741:                                              ; preds = %736
  %742 = load i16, ptr %8, align 2, !tbaa !66
  %743 = uitofp i16 %742 to float
  store float %743, ptr %122, align 8, !tbaa !78
  %744 = load i16, ptr %153, align 2, !tbaa !66
  %745 = uitofp i16 %744 to float
  store float %745, ptr %123, align 4, !tbaa !80
  %746 = load i16, ptr %154, align 2, !tbaa !66
  %747 = uitofp i16 %746 to float
  store float %747, ptr %124, align 8, !tbaa !81
  %748 = load i16, ptr %155, align 2, !tbaa !66
  %749 = uitofp i16 %748 to float
  store float %749, ptr %125, align 4, !tbaa !82
  %750 = load i16, ptr %156, align 2, !tbaa !66
  %751 = uitofp i16 %750 to float
  store float %751, ptr %157, align 8, !tbaa !84
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %8) #13
  br label %989

752:                                              ; preds = %625
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %21) #13
  %753 = load i64, ptr %626, align 8, !tbaa !155
  %754 = uitofp i64 %753 to float
  br label %755

755:                                              ; preds = %752, %772
  %756 = phi i64 [ 0, %752 ], [ %776, %772 ]
  %757 = getelementptr inbounds %struct._SkipList, ptr %627, i64 %756, i32 1
  %758 = load ptr, ptr %757, align 8, !tbaa !157
  br label %759

759:                                              ; preds = %759, %755
  %760 = phi float [ 0.000000e+00, %755 ], [ %769, %759 ]
  %761 = phi i64 [ 65536, %755 ], [ %764, %759 ]
  %762 = phi i64 [ 0, %755 ], [ %770, %759 ]
  %763 = getelementptr inbounds %struct._ListNode, ptr %758, i64 %761
  %764 = load i64, ptr %763, align 8, !tbaa !74
  %765 = getelementptr inbounds %struct._ListNode, ptr %758, i64 %764, i32 1
  %766 = load i64, ptr %765, align 8, !tbaa !168
  %767 = uitofp i64 %766 to float
  %768 = uitofp i64 %764 to float
  %769 = call float @llvm.fmuladd.f32(float %767, float %768, float %760)
  %770 = add i64 %766, %762
  %771 = icmp slt i64 %770, %753
  br i1 %771, label %759, label %772, !llvm.loop !180

772:                                              ; preds = %759
  %773 = fdiv float %769, %754
  %774 = fptoui float %773 to i16
  %775 = getelementptr inbounds [5 x i16], ptr %21, i64 0, i64 %756
  store i16 %774, ptr %775, align 2, !tbaa !66
  %776 = add nuw nsw i64 %756, 1
  %777 = icmp eq i64 %776, 5
  br i1 %777, label %778, label %755, !llvm.loop !181

778:                                              ; preds = %772
  %779 = load i16, ptr %21, align 2, !tbaa !66
  %780 = uitofp i16 %779 to float
  store float %780, ptr %122, align 8, !tbaa !78
  %781 = load i16, ptr %148, align 2, !tbaa !66
  %782 = uitofp i16 %781 to float
  store float %782, ptr %123, align 4, !tbaa !80
  %783 = load i16, ptr %149, align 2, !tbaa !66
  %784 = uitofp i16 %783 to float
  store float %784, ptr %124, align 8, !tbaa !81
  %785 = load i16, ptr %150, align 2, !tbaa !66
  %786 = uitofp i16 %785 to float
  store float %786, ptr %125, align 4, !tbaa !82
  %787 = load i16, ptr %151, align 2, !tbaa !66
  %788 = uitofp i16 %787 to float
  store float %788, ptr %152, align 8, !tbaa !84
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %21) #13
  br label %989

789:                                              ; preds = %625
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %20) #13
  %790 = load i64, ptr %626, align 8, !tbaa !155
  %791 = lshr i64 %790, 1
  br label %792

792:                                              ; preds = %789, %805
  %793 = phi i64 [ 0, %789 ], [ %808, %805 ]
  %794 = getelementptr inbounds %struct._SkipList, ptr %627, i64 %793, i32 1
  %795 = load ptr, ptr %794, align 8, !tbaa !157
  br label %796

796:                                              ; preds = %796, %792
  %797 = phi i64 [ 65536, %792 ], [ %800, %796 ]
  %798 = phi i64 [ 0, %792 ], [ %803, %796 ]
  %799 = getelementptr inbounds %struct._ListNode, ptr %795, i64 %797
  %800 = load i64, ptr %799, align 8, !tbaa !74
  %801 = getelementptr inbounds %struct._ListNode, ptr %795, i64 %800, i32 1
  %802 = load i64, ptr %801, align 8, !tbaa !168
  %803 = add i64 %802, %798
  %804 = icmp sgt i64 %803, %791
  br i1 %804, label %805, label %796, !llvm.loop !182

805:                                              ; preds = %796
  %806 = trunc i64 %800 to i16
  %807 = getelementptr inbounds [5 x i16], ptr %20, i64 0, i64 %793
  store i16 %806, ptr %807, align 2, !tbaa !66
  %808 = add nuw nsw i64 %793, 1
  %809 = icmp eq i64 %808, 5
  br i1 %809, label %810, label %792, !llvm.loop !183

810:                                              ; preds = %805
  call void @GetMagickPixelPacket(ptr noundef null, ptr noundef nonnull %22) #13
  %811 = load i16, ptr %20, align 2, !tbaa !66
  %812 = uitofp i16 %811 to float
  store float %812, ptr %122, align 8, !tbaa !78
  %813 = load i16, ptr %167, align 2, !tbaa !66
  %814 = uitofp i16 %813 to float
  store float %814, ptr %123, align 4, !tbaa !80
  %815 = load i16, ptr %168, align 2, !tbaa !66
  %816 = uitofp i16 %815 to float
  store float %816, ptr %124, align 8, !tbaa !81
  %817 = load i16, ptr %169, align 2, !tbaa !66
  %818 = uitofp i16 %817 to float
  store float %818, ptr %125, align 4, !tbaa !82
  %819 = load i16, ptr %170, align 2, !tbaa !66
  %820 = uitofp i16 %819 to float
  store float %820, ptr %171, align 8, !tbaa !84
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %20) #13
  br label %989

821:                                              ; preds = %625
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %7) #13
  %822 = load i64, ptr %626, align 8, !tbaa !155
  br label %823

823:                                              ; preds = %840, %821
  %824 = phi i64 [ 0, %821 ], [ %843, %840 ]
  %825 = getelementptr inbounds %struct._SkipList, ptr %627, i64 %824, i32 1
  %826 = load ptr, ptr %825, align 8, !tbaa !157
  %827 = getelementptr inbounds %struct._ListNode, ptr %826, i64 65536
  %828 = load i64, ptr %827, align 8, !tbaa !74
  br label %829

829:                                              ; preds = %829, %823
  %830 = phi i64 [ 65536, %823 ], [ %834, %829 ]
  %831 = phi i64 [ %828, %823 ], [ %835, %829 ]
  %832 = phi i64 [ 0, %823 ], [ %838, %829 ]
  %833 = getelementptr inbounds %struct._ListNode, ptr %826, i64 %830
  %834 = load i64, ptr %833, align 8, !tbaa !74
  %835 = call i64 @llvm.umin.i64(i64 %834, i64 %831)
  %836 = getelementptr inbounds %struct._ListNode, ptr %826, i64 %834, i32 1
  %837 = load i64, ptr %836, align 8, !tbaa !168
  %838 = add i64 %837, %832
  %839 = icmp slt i64 %838, %822
  br i1 %839, label %829, label %840, !llvm.loop !176

840:                                              ; preds = %829
  %841 = trunc i64 %835 to i16
  %842 = getelementptr inbounds [5 x i16], ptr %7, i64 0, i64 %824
  store i16 %841, ptr %842, align 2, !tbaa !66
  %843 = add nuw nsw i64 %824, 1
  %844 = icmp eq i64 %843, 5
  br i1 %844, label %845, label %823, !llvm.loop !177

845:                                              ; preds = %840
  %846 = load i16, ptr %7, align 2, !tbaa !66
  %847 = uitofp i16 %846 to float
  store float %847, ptr %122, align 8, !tbaa !78
  %848 = load i16, ptr %138, align 2, !tbaa !66
  %849 = uitofp i16 %848 to float
  store float %849, ptr %123, align 4, !tbaa !80
  %850 = load i16, ptr %139, align 2, !tbaa !66
  %851 = uitofp i16 %850 to float
  store float %851, ptr %124, align 8, !tbaa !81
  %852 = load i16, ptr %140, align 2, !tbaa !66
  %853 = uitofp i16 %852 to float
  store float %853, ptr %125, align 4, !tbaa !82
  %854 = load i16, ptr %141, align 2, !tbaa !66
  %855 = uitofp i16 %854 to float
  store float %855, ptr %142, align 8, !tbaa !84
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %7) #13
  br label %989

856:                                              ; preds = %625
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %19) #13
  %857 = load i64, ptr %626, align 8, !tbaa !155
  br label %858

858:                                              ; preds = %856, %878
  %859 = phi i64 [ 0, %856 ], [ %881, %878 ]
  %860 = getelementptr inbounds %struct._SkipList, ptr %627, i64 %859, i32 1
  %861 = load ptr, ptr %860, align 8, !tbaa !157
  %862 = getelementptr inbounds %struct._ListNode, ptr %861, i64 65536, i32 1
  %863 = load i64, ptr %862, align 8, !tbaa !168
  br label %864

864:                                              ; preds = %864, %858
  %865 = phi i64 [ 65536, %858 ], [ %870, %864 ]
  %866 = phi i64 [ %863, %858 ], [ %874, %864 ]
  %867 = phi i64 [ 65536, %858 ], [ %875, %864 ]
  %868 = phi i64 [ 0, %858 ], [ %876, %864 ]
  %869 = getelementptr inbounds %struct._ListNode, ptr %861, i64 %865
  %870 = load i64, ptr %869, align 8, !tbaa !74
  %871 = getelementptr inbounds %struct._ListNode, ptr %861, i64 %870, i32 1
  %872 = load i64, ptr %871, align 8, !tbaa !168
  %873 = icmp ugt i64 %872, %866
  %874 = call i64 @llvm.umax.i64(i64 %872, i64 %866)
  %875 = select i1 %873, i64 %870, i64 %867
  %876 = add i64 %872, %868
  %877 = icmp slt i64 %876, %857
  br i1 %877, label %864, label %878, !llvm.loop !184

878:                                              ; preds = %864
  %879 = trunc i64 %875 to i16
  %880 = getelementptr inbounds [5 x i16], ptr %19, i64 0, i64 %859
  store i16 %879, ptr %880, align 2, !tbaa !66
  %881 = add nuw nsw i64 %859, 1
  %882 = icmp eq i64 %881, 5
  br i1 %882, label %883, label %858, !llvm.loop !185

883:                                              ; preds = %878
  %884 = load i16, ptr %19, align 2, !tbaa !66
  %885 = uitofp i16 %884 to float
  store float %885, ptr %122, align 8, !tbaa !78
  %886 = load i16, ptr %133, align 2, !tbaa !66
  %887 = uitofp i16 %886 to float
  store float %887, ptr %123, align 4, !tbaa !80
  %888 = load i16, ptr %134, align 2, !tbaa !66
  %889 = uitofp i16 %888 to float
  store float %889, ptr %124, align 8, !tbaa !81
  %890 = load i16, ptr %135, align 2, !tbaa !66
  %891 = uitofp i16 %890 to float
  store float %891, ptr %125, align 4, !tbaa !82
  %892 = load i16, ptr %136, align 2, !tbaa !66
  %893 = uitofp i16 %892 to float
  store float %893, ptr %137, align 8, !tbaa !84
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %19) #13
  br label %989

894:                                              ; preds = %625
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %18) #13
  %895 = load i64, ptr %626, align 8, !tbaa !155
  %896 = lshr i64 %895, 1
  br label %897

897:                                              ; preds = %894, %913
  %898 = phi i64 [ 0, %894 ], [ %924, %913 ]
  %899 = getelementptr inbounds %struct._SkipList, ptr %627, i64 %898, i32 1
  %900 = load ptr, ptr %899, align 8, !tbaa !157
  %901 = getelementptr inbounds %struct._ListNode, ptr %900, i64 65536
  %902 = load i64, ptr %901, align 8, !tbaa !74
  br label %903

903:                                              ; preds = %903, %897
  %904 = phi i64 [ 65536, %897 ], [ %905, %903 ]
  %905 = phi i64 [ %902, %897 ], [ %908, %903 ]
  %906 = phi i64 [ 0, %897 ], [ %911, %903 ]
  %907 = getelementptr inbounds %struct._ListNode, ptr %900, i64 %905
  %908 = load i64, ptr %907, align 8, !tbaa !74
  %909 = getelementptr inbounds %struct._ListNode, ptr %900, i64 %905, i32 1
  %910 = load i64, ptr %909, align 8, !tbaa !168
  %911 = add i64 %910, %906
  %912 = icmp sgt i64 %911, %896
  br i1 %912, label %913, label %903, !llvm.loop !186

913:                                              ; preds = %903
  %914 = icmp eq i64 %904, 65536
  %915 = icmp ne i64 %908, 65536
  %916 = select i1 %914, i1 %915, i1 false
  %917 = icmp ne i64 %904, 65536
  %918 = icmp eq i64 %908, 65536
  %919 = select i1 %917, i1 %918, i1 false
  %920 = select i1 %919, i64 %904, i64 %905
  %921 = select i1 %916, i64 %908, i64 %920
  %922 = trunc i64 %921 to i16
  %923 = getelementptr inbounds [5 x i16], ptr %18, i64 0, i64 %898
  store i16 %922, ptr %923, align 2, !tbaa !66
  %924 = add nuw nsw i64 %898, 1
  %925 = icmp eq i64 %924, 5
  br i1 %925, label %926, label %897, !llvm.loop !187

926:                                              ; preds = %913
  %927 = load i16, ptr %18, align 2, !tbaa !66
  %928 = uitofp i16 %927 to float
  store float %928, ptr %122, align 8, !tbaa !78
  %929 = load i16, ptr %128, align 2, !tbaa !66
  %930 = uitofp i16 %929 to float
  store float %930, ptr %123, align 4, !tbaa !80
  %931 = load i16, ptr %129, align 2, !tbaa !66
  %932 = uitofp i16 %931 to float
  store float %932, ptr %124, align 8, !tbaa !81
  %933 = load i16, ptr %130, align 2, !tbaa !66
  %934 = uitofp i16 %933 to float
  store float %934, ptr %125, align 4, !tbaa !82
  %935 = load i16, ptr %131, align 2, !tbaa !66
  %936 = uitofp i16 %935 to float
  store float %936, ptr %132, align 8, !tbaa !84
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %18) #13
  br label %989

937:                                              ; preds = %625
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %17) #13
  br label %938

938:                                              ; preds = %937, %966
  %939 = phi i64 [ 0, %937 ], [ %976, %966 ]
  %940 = getelementptr inbounds %struct._SkipList, ptr %627, i64 %939, i32 1
  %941 = load ptr, ptr %940, align 8, !tbaa !157
  %942 = load i64, ptr %626, align 8, !tbaa !155
  br label %943

943:                                              ; preds = %962, %938
  %944 = phi float [ 0.000000e+00, %938 ], [ %963, %962 ]
  %945 = phi float [ 0.000000e+00, %938 ], [ %954, %962 ]
  %946 = phi i64 [ 65536, %938 ], [ %949, %962 ]
  %947 = phi i64 [ 0, %938 ], [ %964, %962 ]
  %948 = getelementptr inbounds %struct._ListNode, ptr %941, i64 %946
  %949 = load i64, ptr %948, align 8, !tbaa !74
  %950 = getelementptr inbounds %struct._ListNode, ptr %941, i64 %949, i32 1
  %951 = load i64, ptr %950, align 8, !tbaa !168
  %952 = uitofp i64 %951 to float
  %953 = uitofp i64 %949 to float
  %954 = call float @llvm.fmuladd.f32(float %952, float %953, float %945)
  %955 = icmp sgt i64 %951, 0
  br i1 %955, label %956, label %962

956:                                              ; preds = %943, %956
  %957 = phi i64 [ %960, %956 ], [ 0, %943 ]
  %958 = phi float [ %959, %956 ], [ %944, %943 ]
  %959 = call float @llvm.fmuladd.f32(float %953, float %953, float %958)
  %960 = add nuw nsw i64 %957, 1
  %961 = icmp eq i64 %960, %951
  br i1 %961, label %962, label %956, !llvm.loop !188

962:                                              ; preds = %956, %943
  %963 = phi float [ %944, %943 ], [ %959, %956 ]
  %964 = add i64 %951, %947
  %965 = icmp slt i64 %964, %942
  br i1 %965, label %943, label %966, !llvm.loop !189

966:                                              ; preds = %962
  %967 = uitofp i64 %942 to float
  %968 = fdiv float %954, %967
  %969 = fdiv float %963, %967
  %970 = fneg float %968
  %971 = call float @llvm.fmuladd.f32(float %970, float %968, float %969)
  %972 = fpext float %971 to double
  %973 = call double @sqrt(double noundef %972) #13
  %974 = fptoui double %973 to i16
  %975 = getelementptr inbounds [5 x i16], ptr %17, i64 0, i64 %939
  store i16 %974, ptr %975, align 2, !tbaa !66
  %976 = add nuw nsw i64 %939, 1
  %977 = icmp eq i64 %976, 5
  br i1 %977, label %978, label %938, !llvm.loop !190

978:                                              ; preds = %966
  %979 = load i16, ptr %17, align 2, !tbaa !66
  %980 = uitofp i16 %979 to float
  store float %980, ptr %122, align 8, !tbaa !78
  %981 = load i16, ptr %143, align 2, !tbaa !66
  %982 = uitofp i16 %981 to float
  store float %982, ptr %123, align 4, !tbaa !80
  %983 = load i16, ptr %144, align 2, !tbaa !66
  %984 = uitofp i16 %983 to float
  store float %984, ptr %124, align 8, !tbaa !81
  %985 = load i16, ptr %145, align 2, !tbaa !66
  %986 = uitofp i16 %985 to float
  store float %986, ptr %125, align 4, !tbaa !82
  %987 = load i16, ptr %146, align 2, !tbaa !66
  %988 = uitofp i16 %987 to float
  store float %988, ptr %147, align 8, !tbaa !84
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %17) #13
  br label %989

989:                                              ; preds = %685, %712, %978, %926, %883, %845, %810, %778, %741
  br i1 %173, label %1001, label %990

990:                                              ; preds = %989
  %991 = load float, ptr %122, align 8, !tbaa !78
  %992 = fcmp ugt float %991, 0.000000e+00
  br i1 %992, label %993, label %998

993:                                              ; preds = %990
  %994 = fcmp ult float %991, 6.553500e+04
  br i1 %994, label %995, label %998

995:                                              ; preds = %993
  %996 = fadd float %991, 5.000000e-01
  %997 = fptoui float %996 to i16
  br label %998

998:                                              ; preds = %990, %993, %995
  %999 = phi i16 [ %997, %995 ], [ 0, %990 ], [ -1, %993 ]
  %1000 = getelementptr inbounds %struct._PixelPacket, ptr %211, i64 0, i32 2
  store i16 %999, ptr %1000, align 2, !tbaa !61
  br label %1001

1001:                                             ; preds = %998, %989
  br i1 %175, label %1013, label %1002

1002:                                             ; preds = %1001
  %1003 = load float, ptr %123, align 4, !tbaa !80
  %1004 = fcmp ugt float %1003, 0.000000e+00
  br i1 %1004, label %1005, label %1010

1005:                                             ; preds = %1002
  %1006 = fcmp ult float %1003, 6.553500e+04
  br i1 %1006, label %1007, label %1010

1007:                                             ; preds = %1005
  %1008 = fadd float %1003, 5.000000e-01
  %1009 = fptoui float %1008 to i16
  br label %1010

1010:                                             ; preds = %1002, %1005, %1007
  %1011 = phi i16 [ %1009, %1007 ], [ 0, %1002 ], [ -1, %1005 ]
  %1012 = getelementptr inbounds %struct._PixelPacket, ptr %211, i64 0, i32 1
  store i16 %1011, ptr %1012, align 2, !tbaa !62
  br label %1013

1013:                                             ; preds = %1010, %1001
  br i1 %177, label %1024, label %1014

1014:                                             ; preds = %1013
  %1015 = load float, ptr %124, align 8, !tbaa !81
  %1016 = fcmp ugt float %1015, 0.000000e+00
  br i1 %1016, label %1017, label %1022

1017:                                             ; preds = %1014
  %1018 = fcmp ult float %1015, 6.553500e+04
  br i1 %1018, label %1019, label %1022

1019:                                             ; preds = %1017
  %1020 = fadd float %1015, 5.000000e-01
  %1021 = fptoui float %1020 to i16
  br label %1022

1022:                                             ; preds = %1014, %1017, %1019
  %1023 = phi i16 [ %1021, %1019 ], [ 0, %1014 ], [ -1, %1017 ]
  store i16 %1023, ptr %211, align 2, !tbaa !63
  br label %1024

1024:                                             ; preds = %1022, %1013
  br i1 %179, label %1036, label %1025

1025:                                             ; preds = %1024
  %1026 = load float, ptr %125, align 4, !tbaa !82
  %1027 = fcmp ugt float %1026, 0.000000e+00
  br i1 %1027, label %1028, label %1033

1028:                                             ; preds = %1025
  %1029 = fcmp ult float %1026, 6.553500e+04
  br i1 %1029, label %1030, label %1033

1030:                                             ; preds = %1028
  %1031 = fadd float %1026, 5.000000e-01
  %1032 = fptoui float %1031 to i16
  br label %1033

1033:                                             ; preds = %1025, %1028, %1030
  %1034 = phi i16 [ %1032, %1030 ], [ 0, %1025 ], [ -1, %1028 ]
  %1035 = getelementptr inbounds %struct._PixelPacket, ptr %211, i64 0, i32 3
  store i16 %1034, ptr %1035, align 2, !tbaa !65
  br label %1036

1036:                                             ; preds = %1033, %1024
  br i1 %181, label %1052, label %1037

1037:                                             ; preds = %1036
  %1038 = load i32, ptr %126, align 4, !tbaa !83
  %1039 = icmp ne i32 %1038, 12
  %1040 = select i1 %1039, i1 true, i1 %208
  br i1 %1040, label %1052, label %1041

1041:                                             ; preds = %1037
  %1042 = getelementptr inbounds i16, ptr %203, i64 %212
  %1043 = load float, ptr %182, align 8, !tbaa !84
  %1044 = fcmp ugt float %1043, 0.000000e+00
  br i1 %1044, label %1045, label %1050

1045:                                             ; preds = %1041
  %1046 = fcmp ult float %1043, 6.553500e+04
  br i1 %1046, label %1047, label %1050

1047:                                             ; preds = %1045
  %1048 = fadd float %1043, 5.000000e-01
  %1049 = fptoui float %1048 to i16
  br label %1050

1050:                                             ; preds = %1041, %1045, %1047
  %1051 = phi i16 [ %1049, %1047 ], [ 0, %1041 ], [ -1, %1045 ]
  store i16 %1051, ptr %1042, align 2, !tbaa !66
  br label %1052

1052:                                             ; preds = %1050, %1037, %1036
  %1053 = getelementptr inbounds %struct._PixelPacket, ptr %210, i64 1
  %1054 = getelementptr inbounds %struct._PixelPacket, ptr %211, i64 1
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %22) #13
  %1055 = add nuw nsw i64 %212, 1
  %1056 = load i64, ptr %116, align 8, !tbaa !60
  %1057 = icmp slt i64 %1055, %1056
  br i1 %1057, label %209, label %1058, !llvm.loop !191

1058:                                             ; preds = %1052, %201
  %1059 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %109, ptr noundef %5) #15
  %1060 = icmp ne i32 %1059, 0
  %1061 = zext i1 %1060 to i32
  %1062 = load ptr, ptr %183, align 8, !tbaa !68
  %1063 = icmp eq ptr %1062, null
  br i1 %1063, label %1073, label %1064

1064:                                             ; preds = %1058
  %1065 = add nsw i64 %188, 1
  %1066 = load i64, ptr %32, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %16) #13
  %1067 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %16, i64 noundef 4096, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8, ptr noundef nonnull %184) #13
  %1068 = load ptr, ptr %183, align 8, !tbaa !68
  %1069 = load ptr, ptr %185, align 8, !tbaa !69
  %1070 = call i32 %1068(ptr noundef nonnull %16, i64 noundef %188, i64 noundef %1066, ptr noundef %1069) #13
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %16) #13
  %1071 = icmp eq i32 %1070, 0
  %1072 = select i1 %1071, i32 0, i32 %1061
  br label %1073

1073:                                             ; preds = %1058, %1064, %191, %186
  %1074 = phi i64 [ %188, %186 ], [ %188, %191 ], [ %1065, %1064 ], [ %188, %1058 ]
  %1075 = phi i32 [ 0, %186 ], [ 0, %191 ], [ %1072, %1064 ], [ %1061, %1058 ]
  %1076 = add nuw nsw i64 %189, 1
  %1077 = load i64, ptr %110, align 8, !tbaa !59
  %1078 = icmp slt i64 %1076, %1077
  br i1 %1078, label %186, label %1079, !llvm.loop !192

1079:                                             ; preds = %1073
  %1080 = icmp eq i32 %1075, 0
  %1081 = call ptr @DestroyCacheView(ptr noundef %109) #13
  %1082 = call ptr @DestroyCacheView(ptr noundef %108) #13
  %1083 = call fastcc ptr @DestroyPixelListThreadSet(ptr noundef nonnull %101)
  br i1 %1080, label %1084, label %1090

1084:                                             ; preds = %1079
  %1085 = call ptr @DestroyImage(ptr noundef nonnull %34) #13
  br label %1090

1086:                                             ; preds = %107
  %1087 = tail call ptr @DestroyCacheView(ptr noundef %109) #13
  %1088 = tail call ptr @DestroyCacheView(ptr noundef %108) #13
  %1089 = tail call fastcc ptr @DestroyPixelListThreadSet(ptr noundef nonnull %101)
  br label %1090

1090:                                             ; preds = %1086, %1079, %1084, %29, %103, %39
  %1091 = phi ptr [ null, %39 ], [ null, %103 ], [ null, %29 ], [ %1085, %1084 ], [ %34, %1079 ], [ %34, %1086 ]
  ret ptr %1091
}

declare i64 @GetOptimalKernelWidth2D(double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @DestroyPixelListThreadSet(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #13
  %3 = icmp sgt i64 %2, 0
  br i1 %3, label %4, label %25

4:                                                ; preds = %1, %21
  %5 = phi i64 [ %22, %21 ], [ 0, %1 ]
  %6 = getelementptr inbounds ptr, ptr %0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  %8 = icmp eq ptr %7, null
  br i1 %8, label %21, label %9

9:                                                ; preds = %4, %16
  %10 = phi i64 [ %17, %16 ], [ 0, %4 ]
  %11 = getelementptr inbounds %struct._PixelList, ptr %7, i64 0, i32 3, i64 %10, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !157
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %12) #13
  store ptr %15, ptr %11, align 8, !tbaa !157
  br label %16

16:                                               ; preds = %14, %9
  %17 = add nuw nsw i64 %10, 1
  %18 = icmp eq i64 %17, 5
  br i1 %18, label %19, label %9, !llvm.loop !159

19:                                               ; preds = %16
  %20 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %7) #13
  store ptr %20, ptr %6, align 8, !tbaa !57
  br label %21

21:                                               ; preds = %4, %19
  %22 = add nuw nsw i64 %5, 1
  %23 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #13
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %4, label %25, !llvm.loop !193

25:                                               ; preds = %21, %1
  %26 = tail call ptr @RelinquishMagickMemory(ptr noundef %0) #13
  ret ptr %26
}

declare i64 @GetMagickResourceLimit(i32 noundef) local_unnamed_addr #2

; Function Attrs: allocsize(0,1)
declare ptr @AcquireAlignedMemory(i64 noundef, i64 noundef) local_unnamed_addr #10

declare ptr @AcquireRandomInfo() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #9

declare double @GenerateDifferentialNoise(ptr noundef, i16 noundef zeroext, i32 noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @log(double noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #9

declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @DestroyRandomInfo(ptr noundef) local_unnamed_addr #2

declare ptr @RelinquishAlignedMemory(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @asin(double noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @log10(double noundef) local_unnamed_addr #9

; Function Attrs: allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { hot "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(0,1) }
attributes #15 = { hot nounwind }
attributes #16 = { nounwind allocsize(0) }

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
!34 = !{i32 0, i32 2}
!35 = !{!36, !37, i64 12976}
!36 = !{!"_Image", !37, i64 0, !37, i64 4, !37, i64 8, !40, i64 16, !37, i64 24, !37, i64 28, !37, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !41, i64 72, !42, i64 80, !42, i64 88, !42, i64 96, !44, i64 104, !45, i64 112, !37, i64 208, !41, i64 216, !37, i64 224, !41, i64 232, !41, i64 240, !41, i64 248, !40, i64 256, !44, i64 264, !44, i64 272, !47, i64 280, !47, i64 312, !47, i64 344, !44, i64 376, !44, i64 384, !44, i64 392, !37, i64 400, !37, i64 404, !37, i64 408, !37, i64 412, !37, i64 416, !37, i64 420, !41, i64 424, !40, i64 432, !40, i64 440, !40, i64 448, !40, i64 456, !40, i64 464, !40, i64 472, !48, i64 480, !49, i64 504, !41, i64 568, !41, i64 576, !41, i64 584, !41, i64 592, !41, i64 600, !41, i64 608, !38, i64 616, !38, i64 4712, !38, i64 8808, !40, i64 12904, !40, i64 12912, !51, i64 12920, !37, i64 12976, !40, i64 12984, !41, i64 12992, !52, i64 13000, !52, i64 13032, !41, i64 13064, !40, i64 13072, !40, i64 13080, !41, i64 13088, !41, i64 13096, !41, i64 13104, !37, i64 13112, !37, i64 13116, !42, i64 13120, !41, i64 13128, !47, i64 13136, !41, i64 13168, !41, i64 13176, !37, i64 13184, !37, i64 13188, !53, i64 13192, !37, i64 13200, !40, i64 13208, !40, i64 13216, !37, i64 13224, !40, i64 13232}
!37 = !{!"int", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"long", !38, i64 0}
!41 = !{!"any pointer", !38, i64 0}
!42 = !{!"_PixelPacket", !43, i64 0, !43, i64 2, !43, i64 4, !43, i64 6}
!43 = !{!"short", !38, i64 0}
!44 = !{!"double", !38, i64 0}
!45 = !{!"_ChromaticityInfo", !46, i64 0, !46, i64 24, !46, i64 48, !46, i64 72}
!46 = !{!"_PrimaryInfo", !44, i64 0, !44, i64 8, !44, i64 16}
!47 = !{!"_RectangleInfo", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24}
!48 = !{!"_ErrorInfo", !44, i64 0, !44, i64 8, !44, i64 16}
!49 = !{!"_TimerInfo", !50, i64 0, !50, i64 24, !37, i64 48, !40, i64 56}
!50 = !{!"_Timer", !44, i64 0, !44, i64 8, !44, i64 16}
!51 = !{!"_ExceptionInfo", !37, i64 0, !37, i64 4, !41, i64 8, !41, i64 16, !41, i64 24, !37, i64 32, !41, i64 40, !40, i64 48}
!52 = !{!"_ProfileInfo", !41, i64 0, !40, i64 8, !41, i64 16, !40, i64 24}
!53 = !{!"long long", !38, i64 0}
!54 = distinct !{!54, !55, !56}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!"llvm.loop.unroll.disable"}
!57 = !{!41, !41, i64 0}
!58 = distinct !{!58, !55, !56}
!59 = !{!36, !40, i64 48}
!60 = !{!36, !40, i64 40}
!61 = !{!42, !43, i64 4}
!62 = !{!42, !43, i64 2}
!63 = !{!42, !43, i64 0}
!64 = !{!36, !37, i64 32}
!65 = !{!42, !43, i64 6}
!66 = !{!43, !43, i64 0}
!67 = distinct !{!67, !55, !56}
!68 = !{!36, !41, i64 568}
!69 = !{!36, !41, i64 576}
!70 = distinct !{!70, !55, !56}
!71 = !{i64 0, i64 4, !72, i64 4, i64 4, !72, i64 8, i64 4, !72, i64 16, i64 8, !73, i64 24, i64 8, !74, i64 32, i64 4, !75, i64 36, i64 4, !75, i64 40, i64 4, !75, i64 44, i64 4, !75, i64 48, i64 4, !75}
!72 = !{!37, !37, i64 0}
!73 = !{!44, !44, i64 0}
!74 = !{!40, !40, i64 0}
!75 = !{!76, !76, i64 0}
!76 = !{!"float", !38, i64 0}
!77 = distinct !{!77, !55, !56}
!78 = !{!79, !76, i64 32}
!79 = !{!"_MagickPixelPacket", !37, i64 0, !37, i64 4, !37, i64 8, !44, i64 16, !40, i64 24, !76, i64 32, !76, i64 36, !76, i64 40, !76, i64 44, !76, i64 48}
!80 = !{!79, !76, i64 36}
!81 = !{!79, !76, i64 40}
!82 = !{!79, !76, i64 44}
!83 = !{!36, !37, i64 4}
!84 = !{!79, !76, i64 48}
!85 = distinct !{!85, !55, !56}
!86 = distinct !{!86, !55, !56}
!87 = distinct !{!87, !55, !56}
!88 = distinct !{!88, !55, !56}
!89 = distinct !{!89, !55, !56}
!90 = distinct !{!90, !55, !56}
!91 = distinct !{!91, !55, !56}
!92 = distinct !{!92, !55, !56}
!93 = distinct !{!93, !55, !56}
!94 = distinct !{!94, !55, !56}
!95 = distinct !{!95, !55, !56}
!96 = distinct !{!96, !55, !56}
!97 = distinct !{!97, !55, !56}
!98 = distinct !{!98, !55, !56}
!99 = !{!79, !37, i64 4}
!100 = distinct !{!100, !55, !56}
!101 = distinct !{!101, !55, !56}
!102 = distinct !{!102, !55, !56}
!103 = distinct !{!103, !55, !56}
!104 = distinct !{!104, !55, !56}
!105 = distinct !{!105, !55, !56}
!106 = distinct !{!106, !55, !56}
!107 = !{!108, !44, i64 56}
!108 = !{!"_ChannelStatistics", !40, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !44, i64 32, !44, i64 40, !44, i64 48, !44, i64 56, !44, i64 64, !44, i64 72, !44, i64 80, !44, i64 88}
!109 = !{!108, !44, i64 72}
!110 = !{!108, !44, i64 64}
!111 = !{!108, !40, i64 0}
!112 = !{!108, !44, i64 16}
!113 = !{!108, !44, i64 8}
!114 = distinct !{!114, !55, !56}
!115 = distinct !{!115, !55, !56}
!116 = !{!108, !44, i64 24}
!117 = !{!108, !44, i64 32}
!118 = !{!108, !44, i64 40}
!119 = !{!108, !44, i64 48}
!120 = distinct !{!120, !55, !56}
!121 = distinct !{!121, !55, !56}
!122 = distinct !{!122, !55, !56}
!123 = !{!108, !44, i64 80}
!124 = !{!108, !44, i64 88}
!125 = distinct !{!125, !55, !56}
!126 = distinct !{!126, !55, !56}
!127 = distinct !{!127, !55, !56}
!128 = !{!129, !44, i64 0}
!129 = !{!"_PointInfo", !44, i64 0, !44, i64 8}
!130 = !{!129, !44, i64 8}
!131 = distinct !{!131, !55, !56}
!132 = distinct !{!132, !55, !56}
!133 = distinct !{!133, !55, !56}
!134 = !{i64 0, i64 8, !73, i64 8, i64 8, !73}
!135 = !{!136, !44, i64 272}
!136 = !{!"_ChannelMoments", !38, i64 0, !129, i64 256, !129, i64 272, !44, i64 288, !44, i64 296, !44, i64 304}
!137 = !{!136, !44, i64 280}
!138 = !{!136, !44, i64 288}
!139 = !{!136, !44, i64 296}
!140 = !{!136, !44, i64 304}
!141 = distinct !{!141, !55, !56}
!142 = distinct !{!142, !55, !56}
!143 = distinct !{!143, !55, !56}
!144 = !{!36, !40, i64 56}
!145 = distinct !{!145, !55, !56}
!146 = distinct !{!146, !55, !56}
!147 = distinct !{!147, !55, !56}
!148 = distinct !{!148, !55, !56}
!149 = distinct !{!149, !55, !56}
!150 = distinct !{!150, !55, !56}
!151 = distinct !{!151, !55, !56}
!152 = distinct !{!152, !55, !56}
!153 = distinct !{!153, !55, !56}
!154 = distinct !{!154, !55, !56}
!155 = !{!156, !40, i64 0}
!156 = !{!"_PixelList", !40, i64 0, !40, i64 8, !40, i64 16, !38, i64 24}
!157 = !{!158, !41, i64 8}
!158 = !{!"_SkipList", !40, i64 0, !41, i64 8}
!159 = distinct !{!159, !55, !56}
!160 = distinct !{!160, !55, !56}
!161 = !{!156, !40, i64 16}
!162 = !{!158, !40, i64 0}
!163 = distinct !{!163, !55, !56}
!164 = distinct !{!164, !55, !56}
!165 = !{!156, !40, i64 8}
!166 = !{!167, !40, i64 80}
!167 = !{!"_ListNode", !38, i64 0, !40, i64 72, !40, i64 80}
!168 = !{!167, !40, i64 72}
!169 = distinct !{!169, !55, !56}
!170 = distinct !{!170, !55, !56}
!171 = distinct !{!171, !56}
!172 = distinct !{!172, !55, !56}
!173 = distinct !{!173, !55, !56}
!174 = distinct !{!174, !55, !56}
!175 = distinct !{!175, !55, !56}
!176 = distinct !{!176, !55, !56}
!177 = distinct !{!177, !55, !56}
!178 = distinct !{!178, !55, !56}
!179 = distinct !{!179, !55, !56}
!180 = distinct !{!180, !55, !56}
!181 = distinct !{!181, !55, !56}
!182 = distinct !{!182, !55, !56}
!183 = distinct !{!183, !55, !56}
!184 = distinct !{!184, !55, !56}
!185 = distinct !{!185, !55, !56}
!186 = distinct !{!186, !55, !56}
!187 = distinct !{!187, !55, !56}
!188 = distinct !{!188, !55, !56}
!189 = distinct !{!189, !55, !56}
!190 = distinct !{!190, !55, !56}
!191 = distinct !{!191, !55, !56}
!192 = distinct !{!192, !55, !56}
!193 = distinct !{!193, !55, !56}
