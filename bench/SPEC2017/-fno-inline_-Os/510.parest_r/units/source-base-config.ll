; ModuleID = 'source/base/config.cc'
source_filename = "source/base/config.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::complex" = type { { double, double } }
%"class.std::complex.0" = type { { float, float } }

$_ZN6dealii7numbers12NumberTraitsIdE9conjugateERKd = comdat any

$_ZN6dealii7numbers12NumberTraitsIdE10abs_squareERKd = comdat any

$_ZN6dealii7numbers12NumberTraitsIdE3absERKd = comdat any

$_ZN6dealii7numbers12NumberTraitsIfE9conjugateERKf = comdat any

$_ZN6dealii7numbers12NumberTraitsIfE10abs_squareERKf = comdat any

$_ZN6dealii7numbers12NumberTraitsIfE3absERKf = comdat any

$_ZSt4fabsf = comdat any

$_ZN6dealii7numbers12NumberTraitsISt7complexIdEE9conjugateERKS3_ = comdat any

$_ZSt4conjIdESt7complexIT_ERKS2_ = comdat any

$_ZN6dealii7numbers12NumberTraitsISt7complexIdEE10abs_squareERKS3_ = comdat any

$_ZSt4normIdET_RKSt7complexIS0_E = comdat any

$_ZN6dealii7numbers12NumberTraitsISt7complexIdEE3absERKS3_ = comdat any

$_ZSt3absIdET_RKSt7complexIS0_E = comdat any

$_ZN6dealii7numbers12NumberTraitsISt7complexIfEE9conjugateERKS3_ = comdat any

$_ZSt4conjIfESt7complexIT_ERKS2_ = comdat any

$_ZN6dealii7numbers12NumberTraitsISt7complexIfEE10abs_squareERKS3_ = comdat any

$_ZSt4normIfET_RKSt7complexIS0_E = comdat any

$_ZN6dealii7numbers12NumberTraitsISt7complexIfEE3absERKS3_ = comdat any

$_ZSt3absIfET_RKSt7complexIS0_E = comdat any

$_ZNSt14numeric_limitsIdE3maxEv = comdat any

$_ZNKSt7complexIdE4realB5cxx11Ev = comdat any

$_ZNKSt7complexIdE4imagB5cxx11Ev = comdat any

$_ZNKSt7complexIfE4realB5cxx11Ev = comdat any

$_ZNKSt7complexIfE4imagB5cxx11Ev = comdat any

$_ZNSt7complexIdEC2Edd = comdat any

$_ZNSt12_Norm_helperILb1EE8_S_do_itIdEET_RKSt7complexIS2_E = comdat any

$_ZSt13__complex_absCd = comdat any

$_ZNKSt7complexIdE5__repEv = comdat any

$_ZNSt7complexIfEC2Eff = comdat any

$_ZNSt12_Norm_helperILb1EE8_S_do_itIfEET_RKSt7complexIS2_E = comdat any

$_ZSt13__complex_absCf = comdat any

$_ZNKSt7complexIfE5__repEv = comdat any

$_ZN6dealii7numbers12NumberTraitsIdE10is_complexE = comdat any

$_ZN6dealii7numbers12NumberTraitsIfE10is_complexE = comdat any

$_ZN6dealii7numbers12NumberTraitsISt7complexIdEE10is_complexE = comdat any

$_ZN6dealii7numbers12NumberTraitsISt7complexIfEE10is_complexE = comdat any

@_ZN6dealii7numbers12NumberTraitsIdE10is_complexE = weak_odr dso_local local_unnamed_addr constant i8 0, comdat, align 1
@_ZN6dealii7numbers12NumberTraitsIfE10is_complexE = weak_odr dso_local local_unnamed_addr constant i8 0, comdat, align 1
@_ZN6dealii7numbers12NumberTraitsISt7complexIdEE10is_complexE = weak_odr dso_local local_unnamed_addr constant i8 1, comdat, align 1
@_ZN6dealii7numbers12NumberTraitsISt7complexIfEE10is_complexE = weak_odr dso_local local_unnamed_addr constant i8 1, comdat, align 1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii7numbers12NumberTraitsIdE9conjugateERKd(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 !prof !37 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef double @_ZN6dealii7numbers12NumberTraitsIdE10abs_squareERKd(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 !prof !38 {
  %2 = load double, ptr %0, align 8, !tbaa !39
  %3 = fmul double %2, %2
  ret double %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef double @_ZN6dealii7numbers12NumberTraitsIdE3absERKd(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 !prof !43 {
  %2 = load double, ptr %0, align 8, !tbaa !39
  %3 = tail call double @llvm.fabs.f64(double %2)
  ret double %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZN6dealii7numbers12NumberTraitsIfE9conjugateERKf(ptr noundef nonnull align 4 dereferenceable(4) %0) local_unnamed_addr #0 comdat align 2 !prof !43 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef float @_ZN6dealii7numbers12NumberTraitsIfE10abs_squareERKf(ptr noundef nonnull align 4 dereferenceable(4) %0) local_unnamed_addr #0 comdat align 2 !prof !43 {
  %2 = load float, ptr %0, align 4, !tbaa !44
  %3 = fmul float %2, %2
  ret float %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef float @_ZN6dealii7numbers12NumberTraitsIfE3absERKf(ptr noundef nonnull align 4 dereferenceable(4) %0) local_unnamed_addr #2 comdat align 2 !prof !46 {
  %2 = load float, ptr %0, align 4, !tbaa !44
  %3 = tail call noundef float @_ZSt4fabsf(float noundef %2) #7
  ret float %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef float @_ZSt4fabsf(float noundef %0) local_unnamed_addr #0 comdat !prof !47 {
  %2 = tail call float @llvm.fabs.f32(float %0)
  ret float %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local { double, double } @_ZN6dealii7numbers12NumberTraitsISt7complexIdEE9conjugateERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 !prof !43 {
  %2 = tail call { double, double } @_ZSt4conjIdESt7complexIT_ERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %0) #7
  ret { double, double } %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { double, double } @_ZSt4conjIdESt7complexIT_ERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat !prof !43 {
  %2 = alloca %"class.std::complex", align 8
  %3 = tail call noundef double @_ZNKSt7complexIdE4realB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #7
  %4 = tail call noundef double @_ZNKSt7complexIdE4imagB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #7
  %5 = fneg double %4
  call void @_ZNSt7complexIdEC2Edd(ptr noundef nonnull align 8 dereferenceable(16) %2, double noundef %3, double noundef %5) #7
  %6 = load double, ptr %2, align 8
  %7 = insertvalue { double, double } poison, double %6, 0
  %8 = getelementptr inbounds { double, double }, ptr %2, i64 0, i32 1
  %9 = load double, ptr %8, align 8
  %10 = insertvalue { double, double } %7, double %9, 1
  ret { double, double } %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZN6dealii7numbers12NumberTraitsISt7complexIdEE10abs_squareERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 !prof !43 {
  %2 = tail call noundef double @_ZSt4normIdET_RKSt7complexIS0_E(ptr noundef nonnull align 8 dereferenceable(16) %0) #7
  ret double %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef double @_ZSt4normIdET_RKSt7complexIS0_E(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat !prof !43 {
  %2 = tail call noundef double @_ZNSt12_Norm_helperILb1EE8_S_do_itIdEET_RKSt7complexIS2_E(ptr noundef nonnull align 8 dereferenceable(16) %0) #7
  ret double %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZN6dealii7numbers12NumberTraitsISt7complexIdEE3absERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 !prof !43 {
  %2 = tail call noundef double @_ZSt3absIdET_RKSt7complexIS0_E(ptr noundef nonnull align 8 dereferenceable(16) %0) #7
  ret double %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef double @_ZSt3absIdET_RKSt7complexIS0_E(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat !prof !43 {
  %2 = tail call noundef { double, double } @_ZNKSt7complexIdE5__repEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #7
  %3 = extractvalue { double, double } %2, 0
  %4 = extractvalue { double, double } %2, 1
  %5 = tail call noundef double @_ZSt13__complex_absCd(double noundef %3, double noundef %4) #7
  ret double %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local <2 x float> @_ZN6dealii7numbers12NumberTraitsISt7complexIfEE9conjugateERKS3_(ptr noundef nonnull align 4 dereferenceable(8) %0) local_unnamed_addr #3 comdat align 2 !prof !43 {
  %2 = tail call <2 x float> @_ZSt4conjIfESt7complexIT_ERKS2_(ptr noundef nonnull align 4 dereferenceable(8) %0) #7
  ret <2 x float> %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local <2 x float> @_ZSt4conjIfESt7complexIT_ERKS2_(ptr noundef nonnull align 4 dereferenceable(8) %0) local_unnamed_addr #3 comdat !prof !43 {
  %2 = alloca %"class.std::complex.0", align 8
  %3 = tail call noundef float @_ZNKSt7complexIfE4realB5cxx11Ev(ptr noundef nonnull align 4 dereferenceable(8) %0) #7
  %4 = tail call noundef float @_ZNKSt7complexIfE4imagB5cxx11Ev(ptr noundef nonnull align 4 dereferenceable(8) %0) #7
  %5 = fneg float %4
  call void @_ZNSt7complexIfEC2Eff(ptr noundef nonnull align 4 dereferenceable(8) %2, float noundef %3, float noundef %5) #7
  %6 = load <2 x float>, ptr %2, align 8
  ret <2 x float> %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef float @_ZN6dealii7numbers12NumberTraitsISt7complexIfEE10abs_squareERKS3_(ptr noundef nonnull align 4 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 !prof !43 {
  %2 = tail call noundef float @_ZSt4normIfET_RKSt7complexIS0_E(ptr noundef nonnull align 4 dereferenceable(8) %0) #7
  ret float %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef float @_ZSt4normIfET_RKSt7complexIS0_E(ptr noundef nonnull align 4 dereferenceable(8) %0) local_unnamed_addr #2 comdat !prof !43 {
  %2 = tail call noundef float @_ZNSt12_Norm_helperILb1EE8_S_do_itIfEET_RKSt7complexIS2_E(ptr noundef nonnull align 4 dereferenceable(8) %0) #7
  ret float %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef float @_ZN6dealii7numbers12NumberTraitsISt7complexIfEE3absERKS3_(ptr noundef nonnull align 4 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 !prof !43 {
  %2 = tail call noundef float @_ZSt3absIfET_RKSt7complexIS0_E(ptr noundef nonnull align 4 dereferenceable(8) %0) #7
  ret float %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef float @_ZSt3absIfET_RKSt7complexIS0_E(ptr noundef nonnull align 4 dereferenceable(8) %0) local_unnamed_addr #3 comdat !prof !43 {
  %2 = tail call noundef <2 x float> @_ZNKSt7complexIfE5__repEv(ptr noundef nonnull align 4 dereferenceable(8) %0) #7
  %3 = tail call noundef float @_ZSt13__complex_absCf(<2 x float> noundef %2) #7
  ret float %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZN6dealii7numbers9is_finiteEd(double noundef %0) local_unnamed_addr #0 !prof !43 {
  %2 = tail call noundef double @_ZNSt14numeric_limitsIdE3maxEv() #8
  %3 = fneg double %2
  %4 = fcmp ugt double %3, %0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = tail call noundef double @_ZNSt14numeric_limitsIdE3maxEv() #8
  %7 = fcmp oge double %6, %0
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi i1 [ false, %1 ], [ %7, %5 ]
  ret i1 %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZNSt14numeric_limitsIdE3maxEv() local_unnamed_addr #0 comdat align 2 !prof !48 {
  ret double 0x7FEFFFFFFFFFFFFF
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZN6dealii7numbers9is_finiteESt7complexIdE(double %0, double %1) local_unnamed_addr #0 !prof !43 {
  %3 = alloca %"class.std::complex", align 8
  store double %0, ptr %3, align 8
  %4 = getelementptr inbounds { double, double }, ptr %3, i64 0, i32 1
  store double %1, ptr %4, align 8
  %5 = call noundef double @_ZNKSt7complexIdE4realB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #7
  %6 = call noundef zeroext i1 @_ZN6dealii7numbers9is_finiteEd(double noundef %5) #7
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = call noundef double @_ZNKSt7complexIdE4imagB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #7
  %9 = call noundef zeroext i1 @_ZN6dealii7numbers9is_finiteEd(double noundef %8) #7
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi i1 [ false, %2 ], [ %9, %7 ]
  ret i1 %11
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZNKSt7complexIdE4realB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 {
  %2 = load double, ptr %0, align 8, !tbaa !39
  ret double %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZNKSt7complexIdE4imagB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 {
  %2 = getelementptr inbounds { double, double }, ptr %0, i64 0, i32 1
  %3 = load double, ptr %2, align 8, !tbaa !39
  ret double %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZN6dealii7numbers9is_finiteESt7complexIfE(<2 x float> %0) local_unnamed_addr #4 !prof !43 {
  %2 = alloca %"class.std::complex.0", align 8
  store <2 x float> %0, ptr %2, align 8
  %3 = call noundef float @_ZNKSt7complexIfE4realB5cxx11Ev(ptr noundef nonnull align 4 dereferenceable(8) %2) #7
  %4 = fpext float %3 to double
  %5 = call noundef zeroext i1 @_ZN6dealii7numbers9is_finiteEd(double noundef %4) #7
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = call noundef float @_ZNKSt7complexIfE4imagB5cxx11Ev(ptr noundef nonnull align 4 dereferenceable(8) %2) #7
  %8 = fpext float %7 to double
  %9 = call noundef zeroext i1 @_ZN6dealii7numbers9is_finiteEd(double noundef %8) #7
  br label %10

10:                                               ; preds = %6, %1
  %11 = phi i1 [ false, %1 ], [ %9, %6 ]
  ret i1 %11
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef float @_ZNKSt7complexIfE4realB5cxx11Ev(ptr noundef nonnull align 4 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 {
  %2 = load float, ptr %0, align 4, !tbaa !44
  ret float %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef float @_ZNKSt7complexIfE4imagB5cxx11Ev(ptr noundef nonnull align 4 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 {
  %2 = getelementptr inbounds { float, float }, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 4, !tbaa !44
  ret float %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt7complexIdEC2Edd(ptr noundef nonnull align 8 dereferenceable(16) %0, double noundef %1, double noundef %2) unnamed_addr #0 comdat align 2 !prof !49 {
  %4 = getelementptr inbounds { double, double }, ptr %0, i64 0, i32 1
  store double %1, ptr %0, align 8
  store double %2, ptr %4, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZNSt12_Norm_helperILb1EE8_S_do_itIdEET_RKSt7complexIS2_E(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !43 {
  %2 = tail call noundef double @_ZNKSt7complexIdE4realB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #7
  %3 = tail call noundef double @_ZNKSt7complexIdE4imagB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #7
  %4 = fmul double %3, %3
  %5 = tail call double @llvm.fmuladd.f64(double %2, double %2, double %4)
  ret double %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZSt13__complex_absCd(double noundef %0, double noundef %1) local_unnamed_addr #0 comdat !prof !43 {
  %3 = tail call double @cabs(double noundef %0, double noundef %1) #8
  ret double %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef { double, double } @_ZNKSt7complexIdE5__repEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !50 {
  %2 = load double, ptr %0, align 8
  %3 = getelementptr inbounds { double, double }, ptr %0, i64 0, i32 1
  %4 = load double, ptr %3, align 8
  %5 = insertvalue { double, double } poison, double %2, 0
  %6 = insertvalue { double, double } %5, double %4, 1
  ret { double, double } %6
}

; Function Attrs: nofree nounwind optsize
declare double @cabs(double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt7complexIfEC2Eff(ptr noundef nonnull align 4 dereferenceable(8) %0, float noundef %1, float noundef %2) unnamed_addr #0 comdat align 2 !prof !43 {
  %4 = getelementptr inbounds { float, float }, ptr %0, i64 0, i32 1
  store float %1, ptr %0, align 4
  store float %2, ptr %4, align 4
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef float @_ZNSt12_Norm_helperILb1EE8_S_do_itIfEET_RKSt7complexIS2_E(ptr noundef nonnull align 4 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 !prof !43 {
  %2 = tail call noundef float @_ZNKSt7complexIfE4realB5cxx11Ev(ptr noundef nonnull align 4 dereferenceable(8) %0) #7
  %3 = tail call noundef float @_ZNKSt7complexIfE4imagB5cxx11Ev(ptr noundef nonnull align 4 dereferenceable(8) %0) #7
  %4 = fmul float %3, %3
  %5 = tail call float @llvm.fmuladd.f32(float %2, float %2, float %4)
  ret float %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef float @_ZSt13__complex_absCf(<2 x float> noundef %0) local_unnamed_addr #4 comdat !prof !43 {
  %2 = tail call float @cabsf(<2 x float> noundef %0) #8
  ret float %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef <2 x float> @_ZNKSt7complexIfE5__repEv(ptr noundef nonnull align 4 dereferenceable(8) %0) local_unnamed_addr #4 comdat align 2 !prof !43 {
  %2 = load <2 x float>, ptr %0, align 4
  ret <2 x float> %2
}

; Function Attrs: nounwind optsize
declare float @cabsf(<2 x float> noundef) local_unnamed_addr #6

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!36}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 952893667334}
!4 = !{!"MaxCount", i64 138244457713}
!5 = !{!"MaxInternalCount", i64 61570300772}
!6 = !{!"MaxFunctionCount", i64 138244457713}
!7 = !{!"NumCounts", i64 74881}
!8 = !{!"NumFunctions", i64 41355}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 138244457713, i32 1}
!14 = !{i32 100000, i64 138244457713, i32 1}
!15 = !{i32 200000, i64 135283113845, i32 2}
!16 = !{i32 300000, i64 61570300772, i32 3}
!17 = !{i32 400000, i64 59335447748, i32 5}
!18 = !{i32 500000, i64 54202702756, i32 7}
!19 = !{i32 600000, i64 27583525196, i32 8}
!20 = !{i32 700000, i64 9717284942, i32 14}
!21 = !{i32 800000, i64 4099381952, i32 32}
!22 = !{i32 900000, i64 1194611288, i32 75}
!23 = !{i32 950000, i64 329112231, i32 158}
!24 = !{i32 990000, i64 26264717, i32 515}
!25 = !{i32 999000, i64 1278962, i32 1689}
!26 = !{i32 999900, i64 136932, i32 3466}
!27 = !{i32 999990, i64 17760, i32 4671}
!28 = !{i32 999999, i64 520, i32 6951}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35}
!35 = !{ptr @_ZN6dealii7numbers12NumberTraitsIfE3absERKf, ptr @_ZSt4fabsf, i64 22461}
!36 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!37 = !{!"function_entry_count", i64 59335447748}
!38 = !{!"function_entry_count", i64 4776163696}
!39 = !{!40, !40, i64 0}
!40 = !{!"double", !41, i64 0}
!41 = !{!"omnipotent char", !42, i64 0}
!42 = !{!"Simple C++ TBAA"}
!43 = !{!"function_entry_count", i64 0}
!44 = !{!45, !45, i64 0}
!45 = !{!"float", !41, i64 0}
!46 = !{!"function_entry_count", i64 22461}
!47 = !{!"function_entry_count", i64 67383}
!48 = !{!"function_entry_count", i64 2}
!49 = !{!"function_entry_count", i64 107356}
!50 = !{!"function_entry_count", i64 107312}
