; ModuleID = 'src/fourierf.c'
source_filename = "src/fourierf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [52 x i8] c"Error in fft():  NumSamples=%u is not power of two\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"RealIn\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"RealOut\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"ImagOut\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Error in fft_float():  %s == NULL\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @fft_float(i32 noundef %0, i32 noundef %1, ptr noundef readonly %2, ptr noundef readonly %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = tail call i32 @IsPowerOfTwo(i32 noundef %0) #6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load ptr, ptr @stderr, align 8, !tbaa !5
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str, i32 noundef %0) #7
  tail call void @exit(i32 noundef 1) #8
  unreachable

12:                                               ; preds = %6
  %13 = icmp eq i32 %1, 0
  %14 = select i1 %13, double 0x401921FB54442D18, double 0xC01921FB54442D18
  %15 = icmp eq ptr %2, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load ptr, ptr @stderr, align 8, !tbaa !5
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #7
  tail call void @exit(i32 noundef 1) #8
  unreachable

19:                                               ; preds = %12
  %20 = icmp eq ptr %4, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %19
  %22 = load ptr, ptr @stderr, align 8, !tbaa !5
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2) #7
  tail call void @exit(i32 noundef 1) #8
  unreachable

24:                                               ; preds = %19
  %25 = icmp eq ptr %5, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %24
  %27 = load ptr, ptr @stderr, align 8, !tbaa !5
  %28 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %27, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3) #7
  tail call void @exit(i32 noundef 1) #8
  unreachable

29:                                               ; preds = %24
  %30 = tail call i32 @NumberOfBitsNeeded(i32 noundef %0) #6
  %31 = icmp eq i32 %0, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = icmp eq ptr %3, null
  %34 = zext i32 %0 to i64
  br label %37

35:                                               ; preds = %48, %29
  %36 = icmp ult i32 %0, 2
  br i1 %36, label %120, label %53

37:                                               ; preds = %32, %48
  %38 = phi i64 [ 0, %32 ], [ %51, %48 ]
  %39 = trunc i64 %38 to i32
  %40 = tail call i32 @ReverseBits(i32 noundef %39, i32 noundef %30) #6
  %41 = getelementptr inbounds float, ptr %2, i64 %38
  %42 = load float, ptr %41, align 4, !tbaa !9
  %43 = zext i32 %40 to i64
  %44 = getelementptr inbounds float, ptr %4, i64 %43
  store float %42, ptr %44, align 4, !tbaa !9
  br i1 %33, label %48, label %45

45:                                               ; preds = %37
  %46 = getelementptr inbounds float, ptr %3, i64 %38
  %47 = load float, ptr %46, align 4, !tbaa !9
  br label %48

48:                                               ; preds = %37, %45
  %49 = phi float [ %47, %45 ], [ 0.000000e+00, %37 ]
  %50 = getelementptr inbounds float, ptr %5, i64 %43
  store float %49, ptr %50, align 4, !tbaa !9
  %51 = add nuw nsw i64 %38, 1
  %52 = icmp eq i64 %51, %34
  br i1 %52, label %35, label %37, !llvm.loop !11

53:                                               ; preds = %35, %117
  %54 = phi i32 [ %118, %117 ], [ 2, %35 ]
  %55 = phi i32 [ %54, %117 ], [ 1, %35 ]
  %56 = uitofp i32 %54 to double
  %57 = fdiv double %14, %56
  %58 = fmul double %57, -2.000000e+00
  %59 = tail call double @sin(double noundef %58) #6
  %60 = tail call double @sin(double %57)
  %61 = fneg double %60
  %62 = tail call double @cos(double noundef %58) #6
  %63 = tail call double @cos(double %57)
  %64 = fmul double %63, 2.000000e+00
  %65 = icmp eq i32 %55, 0
  br label %66

66:                                               ; preds = %53, %113
  %67 = phi i32 [ %55, %53 ], [ %116, %113 ]
  %68 = phi i32 [ 0, %53 ], [ %114, %113 ]
  br i1 %65, label %113, label %69

69:                                               ; preds = %66, %69
  %70 = phi i32 [ %111, %69 ], [ %68, %66 ]
  %71 = phi double [ %78, %69 ], [ %61, %66 ]
  %72 = phi double [ %71, %69 ], [ %59, %66 ]
  %73 = phi double [ %76, %69 ], [ %63, %66 ]
  %74 = phi double [ %73, %69 ], [ %62, %66 ]
  %75 = fneg double %74
  %76 = tail call double @llvm.fmuladd.f64(double %64, double %73, double %75)
  %77 = fneg double %72
  %78 = tail call double @llvm.fmuladd.f64(double %64, double %71, double %77)
  %79 = add i32 %70, %55
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds float, ptr %4, i64 %80
  %82 = load float, ptr %81, align 4, !tbaa !9
  %83 = fpext float %82 to double
  %84 = getelementptr inbounds float, ptr %5, i64 %80
  %85 = load float, ptr %84, align 4, !tbaa !9
  %86 = fpext float %85 to double
  %87 = fneg double %78
  %88 = fmul double %87, %86
  %89 = tail call double @llvm.fmuladd.f64(double %76, double %83, double %88)
  %90 = fmul double %78, %83
  %91 = tail call double @llvm.fmuladd.f64(double %76, double %86, double %90)
  %92 = zext i32 %70 to i64
  %93 = getelementptr inbounds float, ptr %4, i64 %92
  %94 = load float, ptr %93, align 4, !tbaa !9
  %95 = fpext float %94 to double
  %96 = fsub double %95, %89
  %97 = fptrunc double %96 to float
  store float %97, ptr %81, align 4, !tbaa !9
  %98 = getelementptr inbounds float, ptr %5, i64 %92
  %99 = load float, ptr %98, align 4, !tbaa !9
  %100 = fpext float %99 to double
  %101 = fsub double %100, %91
  %102 = fptrunc double %101 to float
  store float %102, ptr %84, align 4, !tbaa !9
  %103 = load float, ptr %93, align 4, !tbaa !9
  %104 = fpext float %103 to double
  %105 = fadd double %89, %104
  %106 = fptrunc double %105 to float
  store float %106, ptr %93, align 4, !tbaa !9
  %107 = load float, ptr %98, align 4, !tbaa !9
  %108 = fpext float %107 to double
  %109 = fadd double %91, %108
  %110 = fptrunc double %109 to float
  store float %110, ptr %98, align 4, !tbaa !9
  %111 = add i32 %70, 1
  %112 = icmp eq i32 %111, %67
  br i1 %112, label %113, label %69, !llvm.loop !13

113:                                              ; preds = %69, %66
  %114 = add i32 %68, %54
  %115 = icmp ult i32 %114, %0
  %116 = add i32 %67, %54
  br i1 %115, label %66, label %117, !llvm.loop !14

117:                                              ; preds = %113
  %118 = shl i32 %54, 1
  %119 = icmp ugt i32 %118, %0
  br i1 %119, label %120, label %53, !llvm.loop !15

120:                                              ; preds = %117, %35
  br i1 %13, label %140, label %121

121:                                              ; preds = %120
  %122 = uitofp i32 %0 to double
  %123 = icmp eq i32 %0, 0
  br i1 %123, label %140, label %124

124:                                              ; preds = %121
  %125 = zext i32 %0 to i64
  br label %126

126:                                              ; preds = %124, %126
  %127 = phi i64 [ 0, %124 ], [ %138, %126 ]
  %128 = getelementptr inbounds float, ptr %4, i64 %127
  %129 = load float, ptr %128, align 4, !tbaa !9
  %130 = fpext float %129 to double
  %131 = fdiv double %130, %122
  %132 = fptrunc double %131 to float
  store float %132, ptr %128, align 4, !tbaa !9
  %133 = getelementptr inbounds float, ptr %5, i64 %127
  %134 = load float, ptr %133, align 4, !tbaa !9
  %135 = fpext float %134 to double
  %136 = fdiv double %135, %122
  %137 = fptrunc double %136 to float
  store float %137, ptr %133, align 4, !tbaa !9
  %138 = add nuw nsw i64 %127, 1
  %139 = icmp eq i64 %138, %125
  br i1 %139, label %140, label %126, !llvm.loop !16

140:                                              ; preds = %126, %121, %120
  ret void
}

declare i32 @IsPowerOfTwo(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

declare i32 @NumberOfBitsNeeded(i32 noundef) local_unnamed_addr #1

declare i32 @ReverseBits(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { cold }
attributes #8 = { noreturn nounwind }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"float", !7, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !12}
