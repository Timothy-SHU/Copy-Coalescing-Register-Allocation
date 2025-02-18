; ModuleID = 'chirvol.c'
source_filename = "chirvol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: cold nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @chirvol(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5, ptr nocapture noundef %6, ptr nocapture noundef %7) local_unnamed_addr #0 !prof !34 {
  %9 = mul nsw i32 %1, %0
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds double, ptr %5, i64 %10
  %12 = load double, ptr %11, align 8, !tbaa !35
  %13 = getelementptr double, ptr %11, i64 1
  %14 = load double, ptr %13, align 8, !tbaa !35
  %15 = getelementptr double, ptr %11, i64 2
  %16 = load double, ptr %15, align 8, !tbaa !35
  %17 = mul nsw i32 %2, %0
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds double, ptr %5, i64 %18
  %20 = load double, ptr %19, align 8, !tbaa !35
  %21 = getelementptr double, ptr %19, i64 1
  %22 = load double, ptr %21, align 8, !tbaa !35
  %23 = getelementptr double, ptr %19, i64 2
  %24 = load double, ptr %23, align 8, !tbaa !35
  %25 = mul nsw i32 %3, %0
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds double, ptr %5, i64 %26
  %28 = load double, ptr %27, align 8, !tbaa !35
  %29 = getelementptr double, ptr %27, i64 1
  %30 = load double, ptr %29, align 8, !tbaa !35
  %31 = getelementptr double, ptr %27, i64 2
  %32 = load double, ptr %31, align 8, !tbaa !35
  %33 = mul nsw i32 %4, %0
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds double, ptr %5, i64 %34
  %36 = load double, ptr %35, align 8, !tbaa !35
  %37 = getelementptr double, ptr %35, i64 1
  %38 = load double, ptr %37, align 8, !tbaa !35
  %39 = getelementptr double, ptr %35, i64 2
  %40 = load double, ptr %39, align 8, !tbaa !35
  %41 = fsub double %20, %12
  %42 = fsub double %22, %14
  %43 = fsub double %24, %16
  %44 = fsub double %28, %12
  %45 = fsub double %30, %14
  %46 = fsub double %32, %16
  %47 = fsub double %36, %12
  %48 = fsub double %38, %14
  %49 = fsub double %40, %16
  %50 = fneg double %46
  %51 = fmul double %48, %50
  %52 = tail call double @llvm.fmuladd.f64(double %45, double %49, double %51)
  %53 = fneg double %44
  %54 = fmul double %49, %53
  %55 = tail call double @llvm.fmuladd.f64(double %46, double %47, double %54)
  %56 = fneg double %45
  %57 = fmul double %47, %56
  %58 = tail call double @llvm.fmuladd.f64(double %44, double %48, double %57)
  %59 = fmul double %42, %55
  %60 = tail call double @llvm.fmuladd.f64(double %41, double %52, double %59)
  %61 = tail call double @llvm.fmuladd.f64(double %43, double %58, double %60)
  store double %61, ptr %7, align 8, !tbaa !35
  %62 = getelementptr inbounds double, ptr %6, i64 3
  store double %52, ptr %62, align 8, !tbaa !35
  %63 = getelementptr inbounds double, ptr %6, i64 4
  store double %55, ptr %63, align 8, !tbaa !35
  %64 = getelementptr inbounds double, ptr %6, i64 5
  store double %58, ptr %64, align 8, !tbaa !35
  %65 = fneg double %52
  store double %65, ptr %6, align 8, !tbaa !35
  %66 = fneg double %55
  %67 = getelementptr inbounds double, ptr %6, i64 1
  store double %66, ptr %67, align 8, !tbaa !35
  %68 = fneg double %58
  %69 = getelementptr inbounds double, ptr %6, i64 2
  store double %68, ptr %69, align 8, !tbaa !35
  %70 = fneg double %49
  %71 = fmul double %42, %70
  %72 = tail call double @llvm.fmuladd.f64(double %48, double %43, double %71)
  %73 = fneg double %47
  %74 = fmul double %43, %73
  %75 = tail call double @llvm.fmuladd.f64(double %49, double %41, double %74)
  %76 = fneg double %48
  %77 = fmul double %41, %76
  %78 = tail call double @llvm.fmuladd.f64(double %47, double %42, double %77)
  %79 = getelementptr inbounds double, ptr %6, i64 6
  store double %72, ptr %79, align 8, !tbaa !35
  %80 = getelementptr inbounds double, ptr %6, i64 7
  store double %75, ptr %80, align 8, !tbaa !35
  %81 = getelementptr inbounds double, ptr %6, i64 8
  store double %78, ptr %81, align 8, !tbaa !35
  %82 = fsub double %65, %72
  store double %82, ptr %6, align 8, !tbaa !35
  %83 = fsub double %66, %75
  store double %83, ptr %67, align 8, !tbaa !35
  %84 = fsub double %68, %78
  store double %84, ptr %69, align 8, !tbaa !35
  %85 = fneg double %43
  %86 = fmul double %45, %85
  %87 = tail call double @llvm.fmuladd.f64(double %42, double %46, double %86)
  %88 = fneg double %41
  %89 = fmul double %46, %88
  %90 = tail call double @llvm.fmuladd.f64(double %43, double %44, double %89)
  %91 = fneg double %42
  %92 = fmul double %44, %91
  %93 = tail call double @llvm.fmuladd.f64(double %41, double %45, double %92)
  %94 = getelementptr inbounds double, ptr %6, i64 9
  store double %87, ptr %94, align 8, !tbaa !35
  %95 = getelementptr inbounds double, ptr %6, i64 10
  store double %90, ptr %95, align 8, !tbaa !35
  %96 = getelementptr inbounds double, ptr %6, i64 11
  store double %93, ptr %96, align 8, !tbaa !35
  %97 = fsub double %82, %87
  store double %97, ptr %6, align 8, !tbaa !35
  %98 = fsub double %83, %90
  store double %98, ptr %67, align 8, !tbaa !35
  %99 = fsub double %84, %93
  store double %99, ptr %69, align 8, !tbaa !35
  %100 = load double, ptr %7, align 8, !tbaa !35
  %101 = fmul double %100, 0x3FC555555567A895
  store double %101, ptr %7, align 8, !tbaa !35
  br label %102

102:                                              ; preds = %8, %102
  %103 = phi i64 [ 0, %8 ], [ %107, %102 ]
  %104 = getelementptr inbounds double, ptr %6, i64 %103
  %105 = load double, ptr %104, align 8, !tbaa !35
  %106 = fmul double %105, 0x3FC555555567A895
  store double %106, ptr %104, align 8, !tbaa !35
  %107 = add nuw nsw i64 %103, 1
  %108 = icmp eq i64 %107, 12
  br i1 %108, label %109, label %102, !llvm.loop !39

109:                                              ; preds = %102
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

attributes #0 = { cold nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 71759502456}
!8 = !{!"MaxCount", i64 6437746295}
!9 = !{!"MaxInternalCount", i64 6437746295}
!10 = !{!"MaxFunctionCount", i64 4086992896}
!11 = !{!"NumCounts", i64 3105}
!12 = !{!"NumFunctions", i64 247}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 6437746295, i32 1}
!18 = !{i32 100000, i64 6429262894, i32 2}
!19 = !{i32 200000, i64 6273947450, i32 3}
!20 = !{i32 300000, i64 4086992896, i32 5}
!21 = !{i32 400000, i64 4086990118, i32 7}
!22 = !{i32 500000, i64 3500958832, i32 9}
!23 = !{i32 600000, i64 2110410321, i32 10}
!24 = !{i32 700000, i64 2043496448, i32 13}
!25 = !{i32 800000, i64 2030599974, i32 17}
!26 = !{i32 900000, i64 778157900, i32 22}
!27 = !{i32 950000, i64 477845251, i32 29}
!28 = !{i32 990000, i64 428072471, i32 35}
!29 = !{i32 999000, i64 4254510, i32 72}
!30 = !{i32 999900, i64 290502, i32 105}
!31 = !{i32 999990, i64 19030, i32 222}
!32 = !{i32 999999, i64 3606, i32 249}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"double", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = distinct !{!39, !40, !41}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!"llvm.loop.unroll.disable"}
