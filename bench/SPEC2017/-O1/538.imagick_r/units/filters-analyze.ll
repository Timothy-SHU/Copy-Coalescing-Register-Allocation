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

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @analyzeImage(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readnone %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #6
  %9 = load ptr, ptr %0, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %205, label %11

11:                                               ; preds = %4, %202
  %12 = phi ptr [ %203, %202 ], [ %9, %4 ]
  %13 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %12, ptr noundef %3) #6
  %14 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 8
  %15 = load i64, ptr %14, align 8, !tbaa !38
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %91

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 7
  br label %19

19:                                               ; preds = %17, %77
  %20 = phi i32 [ 1, %17 ], [ %87, %77 ]
  %21 = phi i64 [ 0, %17 ], [ %88, %77 ]
  %22 = phi double [ 0.000000e+00, %17 ], [ %86, %77 ]
  %23 = phi double [ 0.000000e+00, %17 ], [ %85, %77 ]
  %24 = phi double [ 0.000000e+00, %17 ], [ %84, %77 ]
  %25 = phi double [ 0.000000e+00, %17 ], [ %83, %77 ]
  %26 = phi double [ 0.000000e+00, %17 ], [ %82, %77 ]
  %27 = phi double [ 0.000000e+00, %17 ], [ %81, %77 ]
  %28 = phi double [ 0.000000e+00, %17 ], [ %80, %77 ]
  %29 = phi double [ 0.000000e+00, %17 ], [ %79, %77 ]
  %30 = phi double [ 0.000000e+00, %17 ], [ %78, %77 ]
  %31 = icmp eq i32 %20, 0
  br i1 %31, label %77, label %32

32:                                               ; preds = %19
  %33 = load i64, ptr %18, align 8, !tbaa !54
  %34 = call ptr @GetCacheViewVirtualPixels(ptr noundef %13, i64 noundef 0, i64 noundef %21, i64 noundef %33, i64 noundef 1, ptr noundef %3) #7
  %35 = icmp eq ptr %34, null
  br i1 %35, label %77, label %36

36:                                               ; preds = %32
  %37 = load i64, ptr %18, align 8, !tbaa !54
  %38 = icmp sgt i64 %37, 0
  br i1 %38, label %39, label %77

39:                                               ; preds = %36, %39
  %40 = phi i64 [ %74, %39 ], [ 0, %36 ]
  %41 = phi ptr [ %73, %39 ], [ %34, %36 ]
  %42 = phi double [ %71, %39 ], [ %22, %36 ]
  %43 = phi double [ %69, %39 ], [ %23, %36 ]
  %44 = phi double [ %67, %39 ], [ %24, %36 ]
  %45 = phi double [ %66, %39 ], [ %25, %36 ]
  %46 = phi double [ %63, %39 ], [ %26, %36 ]
  %47 = phi double [ %61, %39 ], [ %27, %36 ]
  %48 = phi double [ %59, %39 ], [ %28, %36 ]
  %49 = phi double [ %58, %39 ], [ %29, %36 ]
  %50 = phi double [ %72, %39 ], [ %30, %36 ]
  %51 = getelementptr inbounds %struct._PixelPacket, ptr %41, i64 0, i32 2
  %52 = load i16, ptr %51, align 2, !tbaa !55
  %53 = getelementptr inbounds %struct._PixelPacket, ptr %41, i64 0, i32 1
  %54 = load i16, ptr %53, align 2, !tbaa !56
  %55 = load i16, ptr %41, align 2, !tbaa !57
  call void @ConvertRGBToHSB(i16 noundef zeroext %52, i16 noundef zeroext %54, i16 noundef zeroext %55, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %6) #6
  %56 = load double, ptr %6, align 8, !tbaa !58
  %57 = fmul double %56, 6.553500e+04
  store double %57, ptr %6, align 8, !tbaa !58
  %58 = fadd double %49, %57
  %59 = call double @llvm.fmuladd.f64(double %57, double %57, double %48)
  %60 = fmul double %57, %57
  %61 = call double @llvm.fmuladd.f64(double %60, double %57, double %47)
  %62 = fmul double %57, %60
  %63 = call double @llvm.fmuladd.f64(double %62, double %57, double %46)
  %64 = load double, ptr %8, align 8, !tbaa !58
  %65 = fmul double %64, 6.553500e+04
  store double %65, ptr %8, align 8, !tbaa !58
  %66 = fadd double %45, %65
  %67 = call double @llvm.fmuladd.f64(double %65, double %65, double %44)
  %68 = fmul double %65, %65
  %69 = call double @llvm.fmuladd.f64(double %68, double %65, double %43)
  %70 = fmul double %65, %68
  %71 = call double @llvm.fmuladd.f64(double %70, double %65, double %42)
  %72 = fadd double %50, 1.000000e+00
  %73 = getelementptr inbounds %struct._PixelPacket, ptr %41, i64 1
  %74 = add nuw nsw i64 %40, 1
  %75 = load i64, ptr %18, align 8, !tbaa !54
  %76 = icmp slt i64 %74, %75
  br i1 %76, label %39, label %77, !llvm.loop !59

77:                                               ; preds = %39, %36, %32, %19
  %78 = phi double [ %30, %19 ], [ %30, %32 ], [ %30, %36 ], [ %72, %39 ]
  %79 = phi double [ %29, %19 ], [ %29, %32 ], [ %29, %36 ], [ %58, %39 ]
  %80 = phi double [ %28, %19 ], [ %28, %32 ], [ %28, %36 ], [ %59, %39 ]
  %81 = phi double [ %27, %19 ], [ %27, %32 ], [ %27, %36 ], [ %61, %39 ]
  %82 = phi double [ %26, %19 ], [ %26, %32 ], [ %26, %36 ], [ %63, %39 ]
  %83 = phi double [ %25, %19 ], [ %25, %32 ], [ %25, %36 ], [ %66, %39 ]
  %84 = phi double [ %24, %19 ], [ %24, %32 ], [ %24, %36 ], [ %67, %39 ]
  %85 = phi double [ %23, %19 ], [ %23, %32 ], [ %23, %36 ], [ %69, %39 ]
  %86 = phi double [ %22, %19 ], [ %22, %32 ], [ %22, %36 ], [ %71, %39 ]
  %87 = phi i32 [ 0, %19 ], [ 0, %32 ], [ 1, %36 ], [ 1, %39 ]
  %88 = add nuw nsw i64 %21, 1
  %89 = load i64, ptr %14, align 8, !tbaa !38
  %90 = icmp slt i64 %88, %89
  br i1 %90, label %19, label %91, !llvm.loop !62

91:                                               ; preds = %77, %11
  %92 = phi double [ 0.000000e+00, %11 ], [ %78, %77 ]
  %93 = phi double [ 0.000000e+00, %11 ], [ %79, %77 ]
  %94 = phi double [ 0.000000e+00, %11 ], [ %80, %77 ]
  %95 = phi double [ 0.000000e+00, %11 ], [ %81, %77 ]
  %96 = phi double [ 0.000000e+00, %11 ], [ %82, %77 ]
  %97 = phi double [ 0.000000e+00, %11 ], [ %83, %77 ]
  %98 = phi double [ 0.000000e+00, %11 ], [ %84, %77 ]
  %99 = phi double [ 0.000000e+00, %11 ], [ %85, %77 ]
  %100 = phi double [ 0.000000e+00, %11 ], [ %86, %77 ]
  %101 = call ptr @DestroyCacheView(ptr noundef %13) #6
  %102 = fcmp ugt double %92, 0.000000e+00
  br i1 %102, label %103, label %205

103:                                              ; preds = %91
  %104 = fdiv double %93, %92
  %105 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str, double noundef %104) #6
  %106 = call i32 @SetImageProperty(ptr noundef nonnull %12, ptr noundef nonnull @.str.1, ptr noundef nonnull %5) #6
  %107 = fdiv double %94, %92
  %108 = fmul double %93, %104
  %109 = fdiv double %108, %92
  %110 = fsub double %107, %109
  %111 = call double @sqrt(double noundef %110) #6
  %112 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str, double noundef %111) #6
  %113 = call i32 @SetImageProperty(ptr noundef nonnull %12, ptr noundef nonnull @.str.2, ptr noundef nonnull %5) #6
  %114 = fcmp une double %111, 0.000000e+00
  br i1 %114, label %115, label %146

115:                                              ; preds = %103
  %116 = fdiv double %96, %92
  %117 = fmul double %104, 4.000000e+00
  %118 = fmul double %117, %95
  %119 = fdiv double %118, %92
  %120 = fsub double %116, %119
  %121 = fmul double %104, 6.000000e+00
  %122 = fmul double %104, %121
  %123 = fmul double %94, %122
  %124 = fdiv double %123, %92
  %125 = fadd double %120, %124
  %126 = fmul double %104, -3.000000e+00
  %127 = fmul double %104, %126
  %128 = fmul double %104, %127
  %129 = call double @llvm.fmuladd.f64(double %128, double %104, double %125)
  %130 = fmul double %111, %111
  %131 = fmul double %111, %130
  %132 = fmul double %111, %131
  %133 = fdiv double %129, %132
  %134 = fadd double %133, -3.000000e+00
  %135 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str, double noundef %134) #6
  %136 = call i32 @SetImageProperty(ptr noundef nonnull %12, ptr noundef nonnull @.str.3, ptr noundef nonnull %5) #6
  %137 = fdiv double %95, %92
  %138 = fmul double %104, 3.000000e+00
  %139 = fmul double %94, %138
  %140 = fdiv double %139, %92
  %141 = fsub double %137, %140
  %142 = fmul double %104, 2.000000e+00
  %143 = fmul double %104, %142
  %144 = call double @llvm.fmuladd.f64(double %143, double %104, double %141)
  %145 = fdiv double %144, %131
  br label %149

146:                                              ; preds = %103
  %147 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str, double noundef 0.000000e+00) #6
  %148 = call i32 @SetImageProperty(ptr noundef nonnull %12, ptr noundef nonnull @.str.3, ptr noundef nonnull %5) #6
  br label %149

149:                                              ; preds = %146, %115
  %150 = phi double [ %145, %115 ], [ 0.000000e+00, %146 ]
  %151 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str, double noundef %150) #6
  %152 = call i32 @SetImageProperty(ptr noundef nonnull %12, ptr noundef nonnull @.str.4, ptr noundef nonnull %5) #6
  %153 = fdiv double %97, %92
  %154 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str, double noundef %153) #6
  %155 = call i32 @SetImageProperty(ptr noundef nonnull %12, ptr noundef nonnull @.str.5, ptr noundef nonnull %5) #6
  %156 = fdiv double %98, %92
  %157 = fmul double %97, %153
  %158 = fdiv double %157, %92
  %159 = fsub double %156, %158
  %160 = call double @sqrt(double noundef %159) #6
  %161 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str, double noundef %160) #6
  %162 = call i32 @SetImageProperty(ptr noundef nonnull %12, ptr noundef nonnull @.str.6, ptr noundef nonnull %5) #6
  %163 = fcmp une double %160, 0.000000e+00
  br i1 %163, label %164, label %195

164:                                              ; preds = %149
  %165 = fdiv double %100, %92
  %166 = fmul double %153, 4.000000e+00
  %167 = fmul double %166, %99
  %168 = fdiv double %167, %92
  %169 = fsub double %165, %168
  %170 = fmul double %153, 6.000000e+00
  %171 = fmul double %153, %170
  %172 = fmul double %98, %171
  %173 = fdiv double %172, %92
  %174 = fadd double %169, %173
  %175 = fmul double %153, -3.000000e+00
  %176 = fmul double %153, %175
  %177 = fmul double %153, %176
  %178 = call double @llvm.fmuladd.f64(double %177, double %153, double %174)
  %179 = fmul double %160, %160
  %180 = fmul double %160, %179
  %181 = fmul double %160, %180
  %182 = fdiv double %178, %181
  %183 = fadd double %182, -3.000000e+00
  %184 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str, double noundef %183) #6
  %185 = call i32 @SetImageProperty(ptr noundef nonnull %12, ptr noundef nonnull @.str.7, ptr noundef nonnull %5) #6
  %186 = fdiv double %99, %92
  %187 = fmul double %153, 3.000000e+00
  %188 = fmul double %98, %187
  %189 = fdiv double %188, %92
  %190 = fsub double %186, %189
  %191 = fmul double %153, 2.000000e+00
  %192 = fmul double %153, %191
  %193 = call double @llvm.fmuladd.f64(double %192, double %153, double %190)
  %194 = fdiv double %193, %180
  br label %198

195:                                              ; preds = %149
  %196 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str, double noundef 0.000000e+00) #6
  %197 = call i32 @SetImageProperty(ptr noundef nonnull %12, ptr noundef nonnull @.str.7, ptr noundef nonnull %5) #6
  br label %198

198:                                              ; preds = %195, %164
  %199 = phi double [ %194, %164 ], [ 0.000000e+00, %195 ]
  %200 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str, double noundef %199) #6
  %201 = call i32 @SetImageProperty(ptr noundef nonnull %12, ptr noundef nonnull @.str.8, ptr noundef nonnull %5) #6
  br i1 %102, label %202, label %205

202:                                              ; preds = %198
  %203 = call ptr @GetNextImageInList(ptr noundef nonnull %12) #6
  %204 = icmp eq ptr %203, null
  br i1 %204, label %205, label %11, !llvm.loop !63

205:                                              ; preds = %202, %198, %91, %4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #6
  ret i64 428304
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: hot
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare void @ConvertRGBToHSB(i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #2

declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @SetImageProperty(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #5

declare ptr @GetNextImageInList(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { hot "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !41, i64 48}
!39 = !{!"_Image", !40, i64 0, !40, i64 4, !40, i64 8, !41, i64 16, !40, i64 24, !40, i64 28, !40, i64 32, !41, i64 40, !41, i64 48, !41, i64 56, !41, i64 64, !35, i64 72, !42, i64 80, !42, i64 88, !42, i64 96, !44, i64 104, !45, i64 112, !40, i64 208, !35, i64 216, !40, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !41, i64 256, !44, i64 264, !44, i64 272, !47, i64 280, !47, i64 312, !47, i64 344, !44, i64 376, !44, i64 384, !44, i64 392, !40, i64 400, !40, i64 404, !40, i64 408, !40, i64 412, !40, i64 416, !40, i64 420, !35, i64 424, !41, i64 432, !41, i64 440, !41, i64 448, !41, i64 456, !41, i64 464, !41, i64 472, !48, i64 480, !49, i64 504, !35, i64 568, !35, i64 576, !35, i64 584, !35, i64 592, !35, i64 600, !35, i64 608, !36, i64 616, !36, i64 4712, !36, i64 8808, !41, i64 12904, !41, i64 12912, !51, i64 12920, !40, i64 12976, !41, i64 12984, !35, i64 12992, !52, i64 13000, !52, i64 13032, !35, i64 13064, !41, i64 13072, !41, i64 13080, !35, i64 13088, !35, i64 13096, !35, i64 13104, !40, i64 13112, !40, i64 13116, !42, i64 13120, !35, i64 13128, !47, i64 13136, !35, i64 13168, !35, i64 13176, !40, i64 13184, !40, i64 13188, !53, i64 13192, !40, i64 13200, !41, i64 13208, !41, i64 13216, !40, i64 13224, !41, i64 13232}
!40 = !{!"int", !36, i64 0}
!41 = !{!"long", !36, i64 0}
!42 = !{!"_PixelPacket", !43, i64 0, !43, i64 2, !43, i64 4, !43, i64 6}
!43 = !{!"short", !36, i64 0}
!44 = !{!"double", !36, i64 0}
!45 = !{!"_ChromaticityInfo", !46, i64 0, !46, i64 24, !46, i64 48, !46, i64 72}
!46 = !{!"_PrimaryInfo", !44, i64 0, !44, i64 8, !44, i64 16}
!47 = !{!"_RectangleInfo", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24}
!48 = !{!"_ErrorInfo", !44, i64 0, !44, i64 8, !44, i64 16}
!49 = !{!"_TimerInfo", !50, i64 0, !50, i64 24, !40, i64 48, !41, i64 56}
!50 = !{!"_Timer", !44, i64 0, !44, i64 8, !44, i64 16}
!51 = !{!"_ExceptionInfo", !40, i64 0, !40, i64 4, !35, i64 8, !35, i64 16, !35, i64 24, !40, i64 32, !35, i64 40, !41, i64 48}
!52 = !{!"_ProfileInfo", !35, i64 0, !41, i64 8, !35, i64 16, !41, i64 24}
!53 = !{!"long long", !36, i64 0}
!54 = !{!39, !41, i64 40}
!55 = !{!42, !43, i64 4}
!56 = !{!42, !43, i64 2}
!57 = !{!42, !43, i64 0}
!58 = !{!44, !44, i64 0}
!59 = distinct !{!59, !60, !61}
!60 = !{!"llvm.loop.mustprogress"}
!61 = !{!"llvm.loop.unroll.disable"}
!62 = distinct !{!62, !60, !61}
!63 = distinct !{!63, !60, !61}
