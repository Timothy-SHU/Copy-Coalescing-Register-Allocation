; ModuleID = 'filters/analyze.c'
source_filename = "filters/analyze.c"
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

@.str = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"filter:brightness:mean\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"filter:brightness:standard-deviation\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"filter:brightness:kurtosis\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"filter:brightness:skewness\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"filter:saturation:mean\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"filter:saturation:standard-deviation\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"filter:saturation:kurtosis\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"filter:saturation:skewness\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i64 @analyzeImage(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readnone %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #7
  %9 = load ptr, ptr %0, align 8, !tbaa !5
  %10 = icmp eq ptr %9, null
  br i1 %10, label %208, label %11

11:                                               ; preds = %4, %202
  %12 = phi ptr [ %206, %202 ], [ %9, %4 ]
  %13 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %12, ptr noundef %3) #8
  %14 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 8
  %15 = load i64, ptr %14, align 8, !tbaa !9
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %11
  %18 = call ptr @DestroyCacheView(ptr noundef %13) #8
  br label %208

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 7
  br label %21

21:                                               ; preds = %19, %73
  %22 = phi i32 [ 1, %19 ], [ %75, %73 ]
  %23 = phi i64 [ 0, %19 ], [ %80, %73 ]
  %24 = phi double [ 0.000000e+00, %19 ], [ %74, %73 ]
  %25 = phi <2 x double> [ zeroinitializer, %19 ], [ %76, %73 ]
  %26 = phi <2 x double> [ zeroinitializer, %19 ], [ %77, %73 ]
  %27 = phi <2 x double> [ zeroinitializer, %19 ], [ %78, %73 ]
  %28 = phi <2 x double> [ zeroinitializer, %19 ], [ %79, %73 ]
  %29 = icmp eq i32 %22, 0
  br i1 %29, label %73, label %30

30:                                               ; preds = %21
  %31 = load i64, ptr %20, align 8, !tbaa !25
  %32 = call ptr @GetCacheViewVirtualPixels(ptr noundef %13, i64 noundef 0, i64 noundef %23, i64 noundef %31, i64 noundef 1, ptr noundef %3) #9
  %33 = icmp eq ptr %32, null
  br i1 %33, label %73, label %34

34:                                               ; preds = %30
  %35 = load i64, ptr %20, align 8, !tbaa !25
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %73

37:                                               ; preds = %34, %37
  %38 = phi i64 [ %70, %37 ], [ 0, %34 ]
  %39 = phi ptr [ %69, %37 ], [ %32, %34 ]
  %40 = phi double [ %62, %37 ], [ %24, %34 ]
  %41 = phi <2 x double> [ %65, %37 ], [ %25, %34 ]
  %42 = phi <2 x double> [ %59, %37 ], [ %26, %34 ]
  %43 = phi <2 x double> [ %68, %37 ], [ %27, %34 ]
  %44 = phi <2 x double> [ %66, %37 ], [ %28, %34 ]
  %45 = getelementptr inbounds %struct._PixelPacket, ptr %39, i64 0, i32 2
  %46 = load i16, ptr %45, align 2, !tbaa !26
  %47 = getelementptr inbounds %struct._PixelPacket, ptr %39, i64 0, i32 1
  %48 = load i16, ptr %47, align 2, !tbaa !27
  %49 = load i16, ptr %39, align 2, !tbaa !28
  call void @ConvertRGBToHSB(i16 noundef zeroext %46, i16 noundef zeroext %48, i16 noundef zeroext %49, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %6) #8
  %50 = load double, ptr %6, align 8, !tbaa !29
  %51 = load double, ptr %8, align 8, !tbaa !29
  %52 = insertelement <2 x double> poison, double %50, i64 0
  %53 = insertelement <2 x double> %52, double %51, i64 1
  %54 = fmul <2 x double> %53, <double 6.553500e+04, double 6.553500e+04>
  %55 = extractelement <2 x double> %54, i64 0
  store double %55, ptr %6, align 8, !tbaa !29
  %56 = fmul <2 x double> %54, %54
  %57 = shufflevector <2 x double> %54, <2 x double> %56, <2 x i32> <i32 2, i32 0>
  %58 = shufflevector <2 x double> %54, <2 x double> poison, <2 x i32> zeroinitializer
  %59 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %57, <2 x double> %58, <2 x double> %42)
  %60 = fmul <2 x double> %54, %56
  %61 = extractelement <2 x double> %54, i64 1
  store double %61, ptr %8, align 8, !tbaa !29
  %62 = fadd double %40, %61
  %63 = shufflevector <2 x double> %54, <2 x double> %56, <2 x i32> <i32 3, i32 1>
  %64 = shufflevector <2 x double> %54, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %65 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %63, <2 x double> %64, <2 x double> %41)
  %66 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %60, <2 x double> %54, <2 x double> %44)
  %67 = shufflevector <2 x double> <double 1.000000e+00, double poison>, <2 x double> %54, <2 x i32> <i32 0, i32 2>
  %68 = fadd <2 x double> %43, %67
  %69 = getelementptr inbounds %struct._PixelPacket, ptr %39, i64 1
  %70 = add nuw nsw i64 %38, 1
  %71 = load i64, ptr %20, align 8, !tbaa !25
  %72 = icmp slt i64 %70, %71
  br i1 %72, label %37, label %73, !llvm.loop !30

73:                                               ; preds = %37, %34, %30, %21
  %74 = phi double [ %24, %21 ], [ %24, %30 ], [ %24, %34 ], [ %62, %37 ]
  %75 = phi i32 [ 0, %21 ], [ 0, %30 ], [ 1, %34 ], [ 1, %37 ]
  %76 = phi <2 x double> [ %25, %21 ], [ %25, %30 ], [ %25, %34 ], [ %65, %37 ]
  %77 = phi <2 x double> [ %26, %21 ], [ %26, %30 ], [ %26, %34 ], [ %59, %37 ]
  %78 = phi <2 x double> [ %27, %21 ], [ %27, %30 ], [ %27, %34 ], [ %68, %37 ]
  %79 = phi <2 x double> [ %28, %21 ], [ %28, %30 ], [ %28, %34 ], [ %66, %37 ]
  %80 = add nuw nsw i64 %23, 1
  %81 = load i64, ptr %14, align 8, !tbaa !9
  %82 = icmp slt i64 %80, %81
  br i1 %82, label %21, label %83, !llvm.loop !32

83:                                               ; preds = %73
  %84 = call ptr @DestroyCacheView(ptr noundef %13) #8
  %85 = extractelement <2 x double> %78, i64 0
  %86 = fcmp ugt double %85, 0.000000e+00
  br i1 %86, label %87, label %208

87:                                               ; preds = %83
  %88 = extractelement <2 x double> %78, i64 1
  %89 = fdiv double %88, %85
  %90 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str, double noundef %89) #8
  %91 = call i32 @SetImageProperty(ptr noundef nonnull %12, ptr noundef nonnull @.str.1, ptr noundef nonnull %5) #8
  %92 = fmul double %88, %89
  %93 = shufflevector <2 x double> %77, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %94 = insertelement <2 x double> %93, double %92, i64 1
  %95 = shufflevector <2 x double> %78, <2 x double> poison, <2 x i32> zeroinitializer
  %96 = fdiv <2 x double> %94, %95
  %97 = shufflevector <2 x double> %96, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %98 = fsub <2 x double> %96, %97
  %99 = extractelement <2 x double> %98, i64 0
  %100 = call double @sqrt(double noundef %99) #8
  %101 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str, double noundef %100) #8
  %102 = call i32 @SetImageProperty(ptr noundef nonnull %12, ptr noundef nonnull @.str.2, ptr noundef nonnull %5) #8
  %103 = fcmp une double %100, 0.000000e+00
  br i1 %103, label %104, label %141

104:                                              ; preds = %87
  %105 = extractelement <2 x double> %79, i64 0
  %106 = fdiv double %105, %85
  %107 = fmul double %89, 6.000000e+00
  %108 = insertelement <2 x double> poison, double %89, i64 0
  %109 = shufflevector <2 x double> %108, <2 x double> poison, <2 x i32> zeroinitializer
  %110 = insertelement <2 x double> <double 4.000000e+00, double poison>, double %107, i64 1
  %111 = fmul <2 x double> %109, %110
  %112 = fmul <2 x double> %111, %77
  %113 = fdiv <2 x double> %112, %95
  %114 = extractelement <2 x double> %113, i64 0
  %115 = fsub double %106, %114
  %116 = extractelement <2 x double> %113, i64 1
  %117 = fadd double %115, %116
  %118 = fmul double %89, -3.000000e+00
  %119 = fmul double %89, %118
  %120 = fmul double %89, %119
  %121 = call double @llvm.fmuladd.f64(double %120, double %89, double %117)
  %122 = fmul double %100, %100
  %123 = fmul double %100, %122
  %124 = fmul double %100, %123
  %125 = fdiv double %121, %124
  %126 = fadd double %125, -3.000000e+00
  %127 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str, double noundef %126) #8
  %128 = call i32 @SetImageProperty(ptr noundef nonnull %12, ptr noundef nonnull @.str.3, ptr noundef nonnull %5) #8
  %129 = fmul double %89, 3.000000e+00
  %130 = extractelement <2 x double> %77, i64 1
  %131 = fmul double %130, %129
  %132 = insertelement <2 x double> %77, double %131, i64 1
  %133 = fdiv <2 x double> %132, %95
  %134 = shufflevector <2 x double> %133, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %135 = fsub <2 x double> %133, %134
  %136 = extractelement <2 x double> %135, i64 0
  %137 = fmul double %89, 2.000000e+00
  %138 = fmul double %89, %137
  %139 = call double @llvm.fmuladd.f64(double %138, double %89, double %136)
  %140 = fdiv double %139, %123
  br label %144

141:                                              ; preds = %87
  %142 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str, double noundef 0.000000e+00) #8
  %143 = call i32 @SetImageProperty(ptr noundef nonnull %12, ptr noundef nonnull @.str.3, ptr noundef nonnull %5) #8
  br label %144

144:                                              ; preds = %141, %104
  %145 = phi double [ %140, %104 ], [ 0.000000e+00, %141 ]
  %146 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str, double noundef %145) #8
  %147 = call i32 @SetImageProperty(ptr noundef nonnull %12, ptr noundef nonnull @.str.4, ptr noundef nonnull %5) #8
  %148 = fdiv double %74, %85
  %149 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str, double noundef %148) #8
  %150 = call i32 @SetImageProperty(ptr noundef nonnull %12, ptr noundef nonnull @.str.5, ptr noundef nonnull %5) #8
  %151 = fmul double %74, %148
  %152 = shufflevector <2 x double> %76, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %153 = insertelement <2 x double> %152, double %151, i64 1
  %154 = fdiv <2 x double> %153, %95
  %155 = shufflevector <2 x double> %154, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %156 = fsub <2 x double> %154, %155
  %157 = extractelement <2 x double> %156, i64 0
  %158 = call double @sqrt(double noundef %157) #8
  %159 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str, double noundef %158) #8
  %160 = call i32 @SetImageProperty(ptr noundef nonnull %12, ptr noundef nonnull @.str.6, ptr noundef nonnull %5) #8
  %161 = fcmp une double %158, 0.000000e+00
  br i1 %161, label %162, label %199

162:                                              ; preds = %144
  %163 = extractelement <2 x double> %79, i64 1
  %164 = fdiv double %163, %85
  %165 = fmul double %148, 6.000000e+00
  %166 = insertelement <2 x double> poison, double %148, i64 0
  %167 = shufflevector <2 x double> %166, <2 x double> poison, <2 x i32> zeroinitializer
  %168 = insertelement <2 x double> <double 4.000000e+00, double poison>, double %165, i64 1
  %169 = fmul <2 x double> %167, %168
  %170 = fmul <2 x double> %169, %76
  %171 = fdiv <2 x double> %170, %95
  %172 = extractelement <2 x double> %171, i64 0
  %173 = fsub double %164, %172
  %174 = extractelement <2 x double> %171, i64 1
  %175 = fadd double %173, %174
  %176 = fmul double %148, -3.000000e+00
  %177 = fmul double %148, %176
  %178 = fmul double %148, %177
  %179 = call double @llvm.fmuladd.f64(double %178, double %148, double %175)
  %180 = fmul double %158, %158
  %181 = fmul double %158, %180
  %182 = fmul double %158, %181
  %183 = fdiv double %179, %182
  %184 = fadd double %183, -3.000000e+00
  %185 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str, double noundef %184) #8
  %186 = call i32 @SetImageProperty(ptr noundef nonnull %12, ptr noundef nonnull @.str.7, ptr noundef nonnull %5) #8
  %187 = fmul double %148, 3.000000e+00
  %188 = extractelement <2 x double> %76, i64 1
  %189 = fmul double %188, %187
  %190 = insertelement <2 x double> %76, double %189, i64 1
  %191 = fdiv <2 x double> %190, %95
  %192 = shufflevector <2 x double> %191, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %193 = fsub <2 x double> %191, %192
  %194 = extractelement <2 x double> %193, i64 0
  %195 = fmul double %148, 2.000000e+00
  %196 = fmul double %148, %195
  %197 = call double @llvm.fmuladd.f64(double %196, double %148, double %194)
  %198 = fdiv double %197, %181
  br label %202

199:                                              ; preds = %144
  %200 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str, double noundef 0.000000e+00) #8
  %201 = call i32 @SetImageProperty(ptr noundef nonnull %12, ptr noundef nonnull @.str.7, ptr noundef nonnull %5) #8
  br label %202

202:                                              ; preds = %162, %199
  %203 = phi double [ %198, %162 ], [ 0.000000e+00, %199 ]
  %204 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str, double noundef %203) #8
  %205 = call i32 @SetImageProperty(ptr noundef nonnull %12, ptr noundef nonnull @.str.8, ptr noundef nonnull %5) #8
  %206 = call ptr @GetNextImageInList(ptr noundef nonnull %12) #8
  %207 = icmp eq ptr %206, null
  br i1 %207, label %208, label %11, !llvm.loop !33

208:                                              ; preds = %202, %83, %17, %4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #7
  ret i64 428304
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: hot optsize
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ConvertRGBToHSB(i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @SetImageProperty(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @GetNextImageInList(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #6

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { hot optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind optsize }
attributes #9 = { hot nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !12, i64 48}
!10 = !{!"_Image", !11, i64 0, !11, i64 4, !11, i64 8, !12, i64 16, !11, i64 24, !11, i64 28, !11, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !6, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !15, i64 104, !16, i64 112, !11, i64 208, !6, i64 216, !11, i64 224, !6, i64 232, !6, i64 240, !6, i64 248, !12, i64 256, !15, i64 264, !15, i64 272, !18, i64 280, !18, i64 312, !18, i64 344, !15, i64 376, !15, i64 384, !15, i64 392, !11, i64 400, !11, i64 404, !11, i64 408, !11, i64 412, !11, i64 416, !11, i64 420, !6, i64 424, !12, i64 432, !12, i64 440, !12, i64 448, !12, i64 456, !12, i64 464, !12, i64 472, !19, i64 480, !20, i64 504, !6, i64 568, !6, i64 576, !6, i64 584, !6, i64 592, !6, i64 600, !6, i64 608, !7, i64 616, !7, i64 4712, !7, i64 8808, !12, i64 12904, !12, i64 12912, !22, i64 12920, !11, i64 12976, !12, i64 12984, !6, i64 12992, !23, i64 13000, !23, i64 13032, !6, i64 13064, !12, i64 13072, !12, i64 13080, !6, i64 13088, !6, i64 13096, !6, i64 13104, !11, i64 13112, !11, i64 13116, !13, i64 13120, !6, i64 13128, !18, i64 13136, !6, i64 13168, !6, i64 13176, !11, i64 13184, !11, i64 13188, !24, i64 13192, !11, i64 13200, !12, i64 13208, !12, i64 13216, !11, i64 13224, !12, i64 13232}
!11 = !{!"int", !7, i64 0}
!12 = !{!"long", !7, i64 0}
!13 = !{!"_PixelPacket", !14, i64 0, !14, i64 2, !14, i64 4, !14, i64 6}
!14 = !{!"short", !7, i64 0}
!15 = !{!"double", !7, i64 0}
!16 = !{!"_ChromaticityInfo", !17, i64 0, !17, i64 24, !17, i64 48, !17, i64 72}
!17 = !{!"_PrimaryInfo", !15, i64 0, !15, i64 8, !15, i64 16}
!18 = !{!"_RectangleInfo", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24}
!19 = !{!"_ErrorInfo", !15, i64 0, !15, i64 8, !15, i64 16}
!20 = !{!"_TimerInfo", !21, i64 0, !21, i64 24, !11, i64 48, !12, i64 56}
!21 = !{!"_Timer", !15, i64 0, !15, i64 8, !15, i64 16}
!22 = !{!"_ExceptionInfo", !11, i64 0, !11, i64 4, !6, i64 8, !6, i64 16, !6, i64 24, !11, i64 32, !6, i64 40, !12, i64 48}
!23 = !{!"_ProfileInfo", !6, i64 0, !12, i64 8, !6, i64 16, !12, i64 24}
!24 = !{!"long long", !7, i64 0}
!25 = !{!10, !12, i64 40}
!26 = !{!13, !14, i64 4}
!27 = !{!13, !14, i64 2}
!28 = !{!13, !14, i64 0}
!29 = !{!15, !15, i64 0}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.mustprogress"}
!32 = distinct !{!32, !31}
!33 = distinct !{!33, !31}
