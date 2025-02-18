; ModuleID = 'source/base/config.cc'
source_filename = "source/base/config.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN6dealii7numbers12NumberTraitsIdE9conjugateERKd = comdat any

$_ZN6dealii7numbers12NumberTraitsIdE10abs_squareERKd = comdat any

$_ZN6dealii7numbers12NumberTraitsIdE3absERKd = comdat any

$_ZN6dealii7numbers12NumberTraitsIfE9conjugateERKf = comdat any

$_ZN6dealii7numbers12NumberTraitsIfE10abs_squareERKf = comdat any

$_ZN6dealii7numbers12NumberTraitsIfE3absERKf = comdat any

$_ZN6dealii7numbers12NumberTraitsISt7complexIdEE9conjugateERKS3_ = comdat any

$_ZN6dealii7numbers12NumberTraitsISt7complexIdEE10abs_squareERKS3_ = comdat any

$_ZN6dealii7numbers12NumberTraitsISt7complexIdEE3absERKS3_ = comdat any

$_ZN6dealii7numbers12NumberTraitsISt7complexIfEE9conjugateERKS3_ = comdat any

$_ZN6dealii7numbers12NumberTraitsISt7complexIfEE10abs_squareERKS3_ = comdat any

$_ZN6dealii7numbers12NumberTraitsISt7complexIfEE3absERKS3_ = comdat any

$_ZN6dealii7numbers12NumberTraitsIdE10is_complexE = comdat any

$_ZN6dealii7numbers12NumberTraitsIfE10is_complexE = comdat any

$_ZN6dealii7numbers12NumberTraitsISt7complexIdEE10is_complexE = comdat any

$_ZN6dealii7numbers12NumberTraitsISt7complexIfEE10is_complexE = comdat any

@_ZN6dealii7numbers12NumberTraitsIdE10is_complexE = weak_odr dso_local local_unnamed_addr constant i8 0, comdat, align 1
@_ZN6dealii7numbers12NumberTraitsIfE10is_complexE = weak_odr dso_local local_unnamed_addr constant i8 0, comdat, align 1
@_ZN6dealii7numbers12NumberTraitsISt7complexIdEE10is_complexE = weak_odr dso_local local_unnamed_addr constant i8 1, comdat, align 1
@_ZN6dealii7numbers12NumberTraitsISt7complexIfEE10is_complexE = weak_odr dso_local local_unnamed_addr constant i8 1, comdat, align 1

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii7numbers12NumberTraitsIdE9conjugateERKd(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 !prof !34 {
  ret ptr %0
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef double @_ZN6dealii7numbers12NumberTraitsIdE10abs_squareERKd(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 !prof !34 {
  %2 = load double, ptr %0, align 8, !tbaa !35
  %3 = fmul double %2, %2
  ret double %3
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef double @_ZN6dealii7numbers12NumberTraitsIdE3absERKd(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 !prof !34 {
  %2 = load double, ptr %0, align 8, !tbaa !35
  %3 = tail call double @llvm.fabs.f64(double %2)
  ret double %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZN6dealii7numbers12NumberTraitsIfE9conjugateERKf(ptr noundef nonnull align 4 dereferenceable(4) %0) local_unnamed_addr #0 comdat align 2 !prof !34 {
  ret ptr %0
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef float @_ZN6dealii7numbers12NumberTraitsIfE10abs_squareERKf(ptr noundef nonnull align 4 dereferenceable(4) %0) local_unnamed_addr #0 comdat align 2 !prof !34 {
  %2 = load float, ptr %0, align 4, !tbaa !39
  %3 = fmul float %2, %2
  ret float %3
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef float @_ZN6dealii7numbers12NumberTraitsIfE3absERKf(ptr noundef nonnull align 4 dereferenceable(4) %0) local_unnamed_addr #2 comdat align 2 !prof !34 {
  %2 = load float, ptr %0, align 4, !tbaa !39
  %3 = tail call noundef float @llvm.fabs.f32(float %2)
  ret float %3
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local { double, double } @_ZN6dealii7numbers12NumberTraitsISt7complexIdEE9conjugateERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 !prof !34 {
  %2 = load double, ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds { double, double }, ptr %0, i64 0, i32 1
  %4 = load double, ptr %3, align 8, !tbaa !35
  %5 = fneg double %4
  %6 = insertvalue { double, double } poison, double %2, 0
  %7 = insertvalue { double, double } %6, double %5, 1
  ret { double, double } %7
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZN6dealii7numbers12NumberTraitsISt7complexIdEE10abs_squareERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 !prof !34 {
  %2 = load double, ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds { double, double }, ptr %0, i64 0, i32 1
  %4 = load double, ptr %3, align 8, !tbaa !35
  %5 = fmul double %4, %4
  %6 = tail call noundef double @llvm.fmuladd.f64(double %2, double %2, double %5)
  ret double %6
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZN6dealii7numbers12NumberTraitsISt7complexIdEE3absERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 !prof !34 {
  %2 = load double, ptr %0, align 8
  %3 = getelementptr inbounds { double, double }, ptr %0, i64 0, i32 1
  %4 = load double, ptr %3, align 8
  %5 = tail call noundef double @cabs(double noundef %2, double noundef %4) #8
  ret double %5
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local <2 x float> @_ZN6dealii7numbers12NumberTraitsISt7complexIfEE9conjugateERKS3_(ptr noundef nonnull align 4 dereferenceable(8) %0) local_unnamed_addr #3 comdat align 2 !prof !34 {
  %2 = load float, ptr %0, align 4, !tbaa !39
  %3 = getelementptr inbounds { float, float }, ptr %0, i64 0, i32 1
  %4 = load float, ptr %3, align 4, !tbaa !39
  %5 = fneg float %4
  %6 = insertelement <2 x float> poison, float %2, i64 0
  %7 = insertelement <2 x float> %6, float %5, i64 1
  ret <2 x float> %7
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef float @_ZN6dealii7numbers12NumberTraitsISt7complexIfEE10abs_squareERKS3_(ptr noundef nonnull align 4 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 !prof !34 {
  %2 = load float, ptr %0, align 4, !tbaa !39
  %3 = getelementptr inbounds { float, float }, ptr %0, i64 0, i32 1
  %4 = load float, ptr %3, align 4, !tbaa !39
  %5 = fmul float %4, %4
  %6 = tail call noundef float @llvm.fmuladd.f32(float %2, float %2, float %5)
  ret float %6
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef float @_ZN6dealii7numbers12NumberTraitsISt7complexIfEE3absERKS3_(ptr noundef nonnull align 4 dereferenceable(8) %0) local_unnamed_addr #3 comdat align 2 !prof !34 {
  %2 = load float, ptr %0, align 4
  %3 = getelementptr inbounds { float, float }, ptr %0, i64 0, i32 1
  %4 = load float, ptr %3, align 4
  %5 = insertelement <2 x float> poison, float %2, i64 0
  %6 = insertelement <2 x float> %5, float %4, i64 1
  %7 = tail call noundef float @cabsf(<2 x float> noundef %6) #8
  ret float %7
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN6dealii7numbers9is_finiteEd(double noundef %0) local_unnamed_addr #4 !prof !34 {
  %2 = fcmp oge double %0, 0xFFEFFFFFFFFFFFFF
  %3 = fcmp ole double %0, 0x7FEFFFFFFFFFFFFF
  %4 = and i1 %2, %3
  ret i1 %4
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN6dealii7numbers9is_finiteESt7complexIdE(double %0, double %1) local_unnamed_addr #4 !prof !34 {
  %3 = fcmp oge double %0, 0xFFEFFFFFFFFFFFFF
  %4 = fcmp ole double %0, 0x7FEFFFFFFFFFFFFF
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = fcmp oge double %1, 0xFFEFFFFFFFFFFFFF
  %8 = fcmp ole double %1, 0x7FEFFFFFFFFFFFFF
  %9 = and i1 %7, %8
  br label %10

10:                                               ; preds = %6, %2
  %11 = phi i1 [ false, %2 ], [ %9, %6 ]
  ret i1 %11
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN6dealii7numbers9is_finiteESt7complexIfE(<2 x float> %0) local_unnamed_addr #5 !prof !34 {
  %2 = extractelement <2 x float> %0, i64 0
  %3 = fpext float %2 to double
  %4 = fcmp oge double %3, 0xFFEFFFFFFFFFFFFF
  %5 = fcmp ole double %3, 0x7FEFFFFFFFFFFFFF
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = extractelement <2 x float> %0, i64 1
  %9 = fpext float %8 to double
  %10 = fcmp oge double %9, 0xFFEFFFFFFFFFFFFF
  %11 = fcmp ole double %9, 0x7FEFFFFFFFFFFFFF
  %12 = and i1 %10, %11
  br label %13

13:                                               ; preds = %7, %1
  %14 = phi i1 [ false, %1 ], [ %12, %7 ]
  ret i1 %14
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nofree nounwind
declare double @cabs(double noundef, double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: nounwind
declare float @cabsf(<2 x float> noundef) local_unnamed_addr #7

attributes #0 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 498235516744}
!8 = !{!"MaxCount", i64 131729822178}
!9 = !{!"MaxInternalCount", i64 59335447748}
!10 = !{!"MaxFunctionCount", i64 131729822178}
!11 = !{!"NumCounts", i64 184261}
!12 = !{!"NumFunctions", i64 19089}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 131729822178, i32 1}
!18 = !{i32 100000, i64 131729822178, i32 1}
!19 = !{i32 200000, i64 131729822178, i32 1}
!20 = !{i32 300000, i64 59335447748, i32 2}
!21 = !{i32 400000, i64 54202702756, i32 4}
!22 = !{i32 500000, i64 54202702756, i32 4}
!23 = !{i32 600000, i64 54202702756, i32 4}
!24 = !{i32 700000, i64 29261748340, i32 6}
!25 = !{i32 800000, i64 4776163696, i32 11}
!26 = !{i32 900000, i64 1194611288, i32 34}
!27 = !{i32 950000, i64 227059944, i32 83}
!28 = !{i32 990000, i64 24316456, i32 356}
!29 = !{i32 999000, i64 1124400, i32 996}
!30 = !{i32 999900, i64 89565, i32 2292}
!31 = !{i32 999990, i64 12672, i32 3328}
!32 = !{i32 999999, i64 396, i32 5010}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"double", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C++ TBAA"}
!39 = !{!40, !40, i64 0}
!40 = !{!"float", !37, i64 0}
