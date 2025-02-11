; ModuleID = 'chirvol.c'
source_filename = "chirvol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local void @chirvol(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5, ptr nocapture noundef %6, ptr nocapture noundef %7) local_unnamed_addr #0 {
  %9 = mul nsw i32 %1, %0
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds double, ptr %5, i64 %10
  %12 = load double, ptr %11, align 8, !tbaa !5
  %13 = getelementptr double, ptr %11, i64 1
  %14 = mul nsw i32 %2, %0
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds double, ptr %5, i64 %15
  %17 = load double, ptr %16, align 8, !tbaa !5
  %18 = getelementptr double, ptr %16, i64 1
  %19 = load double, ptr %18, align 8, !tbaa !5
  %20 = getelementptr double, ptr %16, i64 2
  %21 = load double, ptr %20, align 8, !tbaa !5
  %22 = mul nsw i32 %3, %0
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds double, ptr %5, i64 %23
  %25 = load double, ptr %24, align 8, !tbaa !5
  %26 = getelementptr double, ptr %24, i64 1
  %27 = mul nsw i32 %4, %0
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds double, ptr %5, i64 %28
  %30 = load double, ptr %29, align 8, !tbaa !5
  %31 = getelementptr double, ptr %29, i64 1
  %32 = load double, ptr %31, align 8, !tbaa !5
  %33 = getelementptr double, ptr %29, i64 2
  %34 = load double, ptr %33, align 8, !tbaa !5
  %35 = fsub double %25, %12
  %36 = getelementptr inbounds double, ptr %6, i64 3
  %37 = getelementptr inbounds double, ptr %6, i64 5
  %38 = getelementptr inbounds double, ptr %6, i64 2
  %39 = getelementptr inbounds double, ptr %6, i64 6
  %40 = getelementptr inbounds double, ptr %6, i64 8
  %41 = getelementptr inbounds double, ptr %6, i64 9
  %42 = getelementptr inbounds double, ptr %6, i64 11
  %43 = load <2 x double>, ptr %13, align 8, !tbaa !5
  %44 = load <2 x double>, ptr %26, align 8, !tbaa !5
  %45 = extractelement <2 x double> %43, i64 0
  %46 = fsub double %19, %45
  %47 = insertelement <2 x double> poison, double %17, i64 0
  %48 = insertelement <2 x double> %47, double %21, i64 1
  %49 = insertelement <2 x double> %43, double %12, i64 0
  %50 = fsub <2 x double> %48, %49
  %51 = shufflevector <2 x double> %50, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %52 = fsub <2 x double> %44, %43
  %53 = fsub double %32, %45
  %54 = insertelement <2 x double> poison, double %30, i64 0
  %55 = insertelement <2 x double> %54, double %34, i64 1
  %56 = fsub <2 x double> %55, %49
  %57 = shufflevector <2 x double> %56, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %58 = shufflevector <2 x double> %52, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %59 = insertelement <2 x double> %58, double %35, i64 1
  %60 = fneg <2 x double> %59
  %61 = insertelement <2 x double> %56, double %53, i64 0
  %62 = fmul <2 x double> %61, %60
  %63 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %52, <2 x double> %57, <2 x double> %62)
  %64 = extractelement <2 x double> %52, i64 0
  %65 = fneg double %64
  %66 = extractelement <2 x double> %56, i64 0
  %67 = fmul double %66, %65
  %68 = tail call double @llvm.fmuladd.f64(double %35, double %53, double %67)
  %69 = extractelement <2 x double> %63, i64 1
  %70 = fmul double %46, %69
  %71 = extractelement <2 x double> %50, i64 0
  %72 = extractelement <2 x double> %63, i64 0
  %73 = tail call double @llvm.fmuladd.f64(double %71, double %72, double %70)
  %74 = extractelement <2 x double> %50, i64 1
  %75 = tail call double @llvm.fmuladd.f64(double %74, double %68, double %73)
  store double %75, ptr %7, align 8, !tbaa !5
  store <2 x double> %63, ptr %36, align 8, !tbaa !5
  store double %68, ptr %37, align 8, !tbaa !5
  %76 = fneg <2 x double> %63
  %77 = fneg double %68
  %78 = fneg <2 x double> %57
  %79 = insertelement <2 x double> %50, double %46, i64 0
  %80 = fmul <2 x double> %79, %78
  %81 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %61, <2 x double> %51, <2 x double> %80)
  %82 = fneg double %53
  %83 = fmul double %71, %82
  %84 = tail call double @llvm.fmuladd.f64(double %66, double %46, double %83)
  store <2 x double> %81, ptr %39, align 8, !tbaa !5
  store double %84, ptr %40, align 8, !tbaa !5
  %85 = fsub <2 x double> %76, %81
  %86 = fsub double %77, %84
  %87 = fneg <2 x double> %51
  %88 = fmul <2 x double> %52, %87
  %89 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %79, <2 x double> %59, <2 x double> %88)
  %90 = fneg double %46
  %91 = fmul double %35, %90
  %92 = tail call double @llvm.fmuladd.f64(double %71, double %64, double %91)
  store <2 x double> %89, ptr %41, align 8, !tbaa !5
  store double %92, ptr %42, align 8, !tbaa !5
  %93 = fsub <2 x double> %85, %89
  store <2 x double> %93, ptr %6, align 8, !tbaa !5
  %94 = fsub double %86, %92
  store double %94, ptr %38, align 8, !tbaa !5
  %95 = load double, ptr %7, align 8, !tbaa !5
  %96 = fmul double %95, 0x3FC555555567A895
  store double %96, ptr %7, align 8, !tbaa !5
  br label %97

97:                                               ; preds = %97, %8
  %98 = phi i64 [ 0, %8 ], [ %102, %97 ]
  %99 = getelementptr inbounds double, ptr %6, i64 %98
  %100 = load <2 x double>, ptr %99, align 8, !tbaa !5
  %101 = fmul <2 x double> %100, <double 0x3FC555555567A895, double 0x3FC555555567A895>
  store <2 x double> %101, ptr %99, align 8, !tbaa !5
  %102 = add nuw i64 %98, 2
  %103 = icmp eq i64 %102, 12
  br i1 %103, label %104, label %97, !llvm.loop !9

104:                                              ; preds = %97
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #2

attributes #0 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"double", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10, !11, !12}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
