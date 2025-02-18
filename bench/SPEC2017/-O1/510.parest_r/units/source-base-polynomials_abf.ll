; ModuleID = 'source/base/polynomials_abf.cc'
source_filename = "source/base/polynomials_abf.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::vector.10" = type { %"struct.std::_Vector_base.11" }
%"struct.std::_Vector_base.11" = type { %"struct.std::_Vector_base<std::vector<dealii::Polynomials::Polynomial<double>>, std::allocator<std::vector<dealii::Polynomials::Polynomial<double>>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::vector<dealii::Polynomials::Polynomial<double>>, std::allocator<std::vector<dealii::Polynomials::Polynomial<double>>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::vector<dealii::Polynomials::Polynomial<double>>, std::allocator<std::vector<dealii::Polynomials::Polynomial<double>>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::vector<dealii::Polynomials::Polynomial<double>>, std::allocator<std::vector<dealii::Polynomials::Polynomial<double>>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.15" = type { %"struct.std::_Vector_base.16" }
%"struct.std::_Vector_base.16" = type { %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl" }
%"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl" = type { %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.dealii::PolynomialsABF" = type { i32, ptr, i32, %"class.std::vector", %"class.std::vector.0", %"class.std::vector.5" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl" }
%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl" = type { %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data" }
%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.0" = type { %"struct.std::_Vector_base.1" }
%"struct.std::_Vector_base.1" = type { %"struct.std::_Vector_base<dealii::Tensor<1, 1>, std::allocator<dealii::Tensor<1, 1>>>::_Vector_impl" }
%"struct.std::_Vector_base<dealii::Tensor<1, 1>, std::allocator<dealii::Tensor<1, 1>>>::_Vector_impl" = type { %"struct.std::_Vector_base<dealii::Tensor<1, 1>, std::allocator<dealii::Tensor<1, 1>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<dealii::Tensor<1, 1>, std::allocator<dealii::Tensor<1, 1>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.5" = type { %"struct.std::_Vector_base.6" }
%"struct.std::_Vector_base.6" = type { %"struct.std::_Vector_base<dealii::Tensor<2, 1>, std::allocator<dealii::Tensor<2, 1>>>::_Vector_impl" }
%"struct.std::_Vector_base<dealii::Tensor<2, 1>, std::allocator<dealii::Tensor<2, 1>>>::_Vector_impl" = type { %"struct.std::_Vector_base<dealii::Tensor<2, 1>, std::allocator<dealii::Tensor<2, 1>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<dealii::Tensor<2, 1>, std::allocator<dealii::Tensor<2, 1>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.dealii::Polynomials::Polynomial" = type { %"class.dealii::Subscriptor", %"class.std::vector" }
%"class.dealii::Subscriptor" = type { ptr, i32, %"class.std::map", ptr }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<const char *, std::pair<const char *const, unsigned int>, std::_Select1st<std::pair<const char *const, unsigned int>>, std::less<const char *>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<const char *, std::pair<const char *const, unsigned int>, std::_Select1st<std::pair<const char *const, unsigned int>>, std::less<const char *>>::_Rb_tree_impl" = type { %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_key_compare" = type { %"struct.std::less" }
%"struct.std::less" = type { i8 }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.dealii::Point" = type { %"class.dealii::Tensor" }
%"class.dealii::Tensor" = type { [1 x double] }
%"struct.std::_Vector_base<dealii::Tensor<3, 1>, std::allocator<dealii::Tensor<3, 1>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.dealii::Tensor.25" = type { [1 x %"class.dealii::Tensor"] }
%"class.dealii::Tensor.26" = type { [1 x %"class.dealii::Tensor.25"] }
%"class.dealii::PolynomialsABF.27" = type { i32, ptr, i32, %"class.std::vector", %"class.std::vector.28", %"class.std::vector.33" }
%"class.std::vector.28" = type { %"struct.std::_Vector_base.29" }
%"struct.std::_Vector_base.29" = type { %"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl" }
%"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl" = type { %"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.33" = type { %"struct.std::_Vector_base.34" }
%"struct.std::_Vector_base.34" = type { %"struct.std::_Vector_base<dealii::Tensor<2, 2>, std::allocator<dealii::Tensor<2, 2>>>::_Vector_impl" }
%"struct.std::_Vector_base<dealii::Tensor<2, 2>, std::allocator<dealii::Tensor<2, 2>>>::_Vector_impl" = type { %"struct.std::_Vector_base<dealii::Tensor<2, 2>, std::allocator<dealii::Tensor<2, 2>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<dealii::Tensor<2, 2>, std::allocator<dealii::Tensor<2, 2>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.dealii::Point.45" = type { %"class.dealii::Tensor.46" }
%"class.dealii::Tensor.46" = type { [2 x double] }
%"struct.std::_Vector_base<dealii::Tensor<3, 2>, std::allocator<dealii::Tensor<3, 2>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.dealii::Tensor.47" = type { [2 x %"class.dealii::Tensor.46"] }
%"class.dealii::Tensor.48" = type { [2 x %"class.dealii::Tensor.47"] }
%"class.dealii::PolynomialsABF.49" = type { i32, ptr, i32, %"class.std::vector", %"class.std::vector.50", %"class.std::vector.55" }
%"class.std::vector.50" = type { %"struct.std::_Vector_base.51" }
%"struct.std::_Vector_base.51" = type { %"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl" }
%"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl" = type { %"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.55" = type { %"struct.std::_Vector_base.56" }
%"struct.std::_Vector_base.56" = type { %"struct.std::_Vector_base<dealii::Tensor<2, 3>, std::allocator<dealii::Tensor<2, 3>>>::_Vector_impl" }
%"struct.std::_Vector_base<dealii::Tensor<2, 3>, std::allocator<dealii::Tensor<2, 3>>>::_Vector_impl" = type { %"struct.std::_Vector_base<dealii::Tensor<2, 3>, std::allocator<dealii::Tensor<2, 3>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<dealii::Tensor<2, 3>, std::allocator<dealii::Tensor<2, 3>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.dealii::Point.67" = type { %"class.dealii::Tensor.68" }
%"class.dealii::Tensor.68" = type { [3 x double] }
%"struct.std::_Vector_base<dealii::Tensor<3, 3>, std::allocator<dealii::Tensor<3, 3>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.dealii::Tensor.69" = type { [3 x %"class.dealii::Tensor.68"] }
%"class.dealii::Tensor.70" = type { [3 x %"class.dealii::Tensor.69"] }

$_ZN6dealii14PolynomialsABFILi1EEC5Ej = comdat any

$_ZN6dealii14PolynomialsABFILi1EE14compute_n_polsEj = comdat any

$_ZN6dealii14PolynomialsABFILi1EED5Ev = comdat any

$_ZNK6dealii14PolynomialsABFILi1EE7computeERKNS_5PointILi1EEERSt6vectorINS_6TensorILi1ELi1EEESaIS8_EERS6_INS7_ILi2ELi1EEESaISC_EERS6_INS7_ILi3ELi1EEESaISG_EE = comdat any

$_ZNK6dealii14PolynomialsABFILi1EE1nEv = comdat any

$_ZNK6dealii14PolynomialsABFILi1EE6degreeEv = comdat any

$_ZN6dealii14PolynomialsABFILi2EEC5Ej = comdat any

$_ZN6dealii14PolynomialsABFILi2EE14compute_n_polsEj = comdat any

$_ZN6dealii14PolynomialsABFILi2EED5Ev = comdat any

$_ZNK6dealii14PolynomialsABFILi2EE7computeERKNS_5PointILi2EEERSt6vectorINS_6TensorILi1ELi2EEESaIS8_EERS6_INS7_ILi2ELi2EEESaISC_EERS6_INS7_ILi3ELi2EEESaISG_EE = comdat any

$_ZNK6dealii14PolynomialsABFILi2EE1nEv = comdat any

$_ZNK6dealii14PolynomialsABFILi2EE6degreeEv = comdat any

$_ZN6dealii14PolynomialsABFILi3EEC5Ej = comdat any

$_ZN6dealii14PolynomialsABFILi3EE14compute_n_polsEj = comdat any

$_ZN6dealii14PolynomialsABFILi3EED5Ev = comdat any

$_ZNK6dealii14PolynomialsABFILi3EE7computeERKNS_5PointILi3EEERSt6vectorINS_6TensorILi1ELi3EEESaIS8_EERS6_INS7_ILi2ELi3EEESaISC_EERS6_INS7_ILi3ELi3EEESaISG_EE = comdat any

$_ZNK6dealii14PolynomialsABFILi3EE1nEv = comdat any

$_ZNK6dealii14PolynomialsABFILi3EE6degreeEv = comdat any

$_ZNSt6vectorIdSaIdEE17_M_default_appendEm = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE17_M_default_appendEm = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi1EEEE8allocateEmPKv = comdat any

$_ZNSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE17_M_default_appendEm = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi1EEEE8allocateEmPKv = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE17_M_default_appendEm = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEE8allocateEmPKv = comdat any

$_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE17_M_default_appendEm = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi2EEEE8allocateEmPKv = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE17_M_default_appendEm = comdat any

$_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE17_M_default_appendEm = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str.1 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_polynomials_abf.cc, ptr null }]

@_ZN6dealii14PolynomialsABFILi1EEC1Ej = weak_odr dso_local unnamed_addr alias void (ptr, i32), ptr @_ZN6dealii14PolynomialsABFILi1EEC2Ej
@_ZN6dealii14PolynomialsABFILi1EED1Ev = weak_odr dso_local unnamed_addr alias void (ptr), ptr @_ZN6dealii14PolynomialsABFILi1EED2Ev
@_ZN6dealii14PolynomialsABFILi2EEC1Ej = weak_odr dso_local unnamed_addr alias void (ptr, i32), ptr @_ZN6dealii14PolynomialsABFILi2EEC2Ej
@_ZN6dealii14PolynomialsABFILi2EED1Ev = weak_odr dso_local unnamed_addr alias void (ptr), ptr @_ZN6dealii14PolynomialsABFILi2EED2Ev
@_ZN6dealii14PolynomialsABFILi3EEC1Ej = weak_odr dso_local unnamed_addr alias void (ptr, i32), ptr @_ZN6dealii14PolynomialsABFILi3EEC2Ej
@_ZN6dealii14PolynomialsABFILi3EED1Ev = weak_odr dso_local unnamed_addr alias void (ptr), ptr @_ZN6dealii14PolynomialsABFILi3EED2Ev

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii14PolynomialsABFILi1EEC2Ej(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %1) unnamed_addr #3 comdat($_ZN6dealii14PolynomialsABFILi1EEC5Ej) align 2 personality ptr @__gxx_personality_v0 !annotation !38 {
  %3 = alloca %"class.std::vector.10", align 8
  %4 = alloca %"class.std::vector.15", align 8
  store i32 %1, ptr %0, align 8, !tbaa !39
  %5 = getelementptr inbounds %"class.dealii::PolynomialsABF", ptr %0, i64 0, i32 2
  %6 = add i32 %1, 1
  store i32 %6, ptr %5, align 8, !tbaa !57
  %7 = getelementptr inbounds %"class.dealii::PolynomialsABF", ptr %0, i64 0, i32 3
  %8 = getelementptr inbounds %"class.dealii::PolynomialsABF", ptr %0, i64 0, i32 4
  %9 = getelementptr inbounds %"class.dealii::PolynomialsABF", ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %7, i8 0, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  %10 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<dealii::Polynomials::Polynomial<double>>, std::allocator<std::vector<dealii::Polynomials::Polynomial<double>>>>::_Vector_impl_data", ptr %3, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %11 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18
          to label %12 unwind label %55

12:                                               ; preds = %2
  %13 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<dealii::Polynomials::Polynomial<double>>, std::allocator<std::vector<dealii::Polynomials::Polynomial<double>>>>::_Vector_impl_data", ptr %3, i64 0, i32 2
  store ptr %11, ptr %3, align 8, !tbaa !58
  store ptr %11, ptr %10, align 8, !tbaa !60
  %14 = getelementptr inbounds %"class.std::vector.15", ptr %11, i64 1
  store ptr %14, ptr %13, align 8, !tbaa !61
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %15 = getelementptr inbounds %"class.std::vector.15", ptr %11, i64 1
  store ptr %15, ptr %10, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #17
  %16 = add i32 %1, 2
  invoke void @_ZN6dealii11Polynomials19LagrangeEquidistant23generate_complete_basisEj(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.15") align 8 %4, i32 noundef %16)
          to label %17 unwind label %57

17:                                               ; preds = %12
  %18 = load ptr, ptr %3, align 8, !tbaa !58
  %19 = load ptr, ptr %18, align 8, !tbaa !62
  %20 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %18, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !64
  %22 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %18, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !65
  %24 = load ptr, ptr %4, align 8, !tbaa !62
  store ptr %24, ptr %18, align 8, !tbaa !62
  %25 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %4, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !64
  store ptr %26, ptr %20, align 8, !tbaa !64
  %27 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %4, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !65
  store ptr %28, ptr %22, align 8, !tbaa !65
  store ptr %19, ptr %4, align 8, !tbaa !62
  store ptr %21, ptr %25, align 8, !tbaa !64
  store ptr %23, ptr %27, align 8, !tbaa !65
  %29 = icmp eq ptr %19, %21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br i1 %29, label %36, label %30

30:                                               ; preds = %17, %30
  %31 = phi ptr [ %34, %30 ], [ %19, %17 ]
  %32 = load ptr, ptr %31, align 8, !tbaa !66
  %33 = load ptr, ptr %32, align 8
  call void %33(ptr noundef nonnull align 8 dereferenceable(96) %31) #17
  %34 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %31, i64 1
  %35 = icmp eq ptr %34, %21
  br i1 %35, label %36, label %30, !llvm.loop !68

36:                                               ; preds = %30, %17
  %37 = icmp eq ptr %19, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %36
  call void @_ZdlPv(ptr noundef %19) #19
  br label %39

39:                                               ; preds = %36, %38
  %40 = load ptr, ptr %4, align 8, !tbaa !62
  %41 = load ptr, ptr %25, align 8, !tbaa !64
  %42 = icmp eq ptr %40, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %39, %43
  %44 = phi ptr [ %47, %43 ], [ %40, %39 ]
  %45 = load ptr, ptr %44, align 8, !tbaa !66
  %46 = load ptr, ptr %45, align 8
  call void %46(ptr noundef nonnull align 8 dereferenceable(96) %44) #17
  %47 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %44, i64 1
  %48 = icmp eq ptr %47, %41
  br i1 %48, label %49, label %43, !llvm.loop !68

49:                                               ; preds = %43, %39
  %50 = load ptr, ptr %4, align 8, !tbaa !62
  %51 = icmp eq ptr %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  call void @_ZdlPv(ptr noundef %50) #19
  br label %53

53:                                               ; preds = %49, %52
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #17
  %54 = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #18
          to label %59 unwind label %89

55:                                               ; preds = %2
  %56 = landingpad { ptr, i32 }
          cleanup
  br label %121

57:                                               ; preds = %12
  %58 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #17
  br label %93

59:                                               ; preds = %53
  invoke void @_ZN6dealii22AnisotropicPolynomialsILi1EEC1ERKSt6vectorIS2_INS_11Polynomials10PolynomialIdEESaIS5_EESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(28) %54, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %60 unwind label %91

60:                                               ; preds = %59
  %61 = getelementptr inbounds %"class.dealii::PolynomialsABF", ptr %0, i64 0, i32 1
  store ptr %54, ptr %61, align 8, !tbaa !71
  %62 = load ptr, ptr %3, align 8, !tbaa !58
  %63 = load ptr, ptr %10, align 8, !tbaa !60
  %64 = icmp eq ptr %62, %63
  br i1 %64, label %84, label %65

65:                                               ; preds = %60, %81
  %66 = phi ptr [ %82, %81 ], [ %62, %60 ]
  %67 = load ptr, ptr %66, align 8, !tbaa !62
  %68 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %66, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !64
  %70 = icmp eq ptr %67, %69
  br i1 %70, label %77, label %71

71:                                               ; preds = %65, %71
  %72 = phi ptr [ %75, %71 ], [ %67, %65 ]
  %73 = load ptr, ptr %72, align 8, !tbaa !66
  %74 = load ptr, ptr %73, align 8
  call void %74(ptr noundef nonnull align 8 dereferenceable(96) %72) #17
  %75 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %72, i64 1
  %76 = icmp eq ptr %75, %69
  br i1 %76, label %77, label %71, !llvm.loop !68

77:                                               ; preds = %71, %65
  %78 = load ptr, ptr %66, align 8, !tbaa !62
  %79 = icmp eq ptr %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %77
  call void @_ZdlPv(ptr noundef %78) #19
  br label %81

81:                                               ; preds = %80, %77
  %82 = getelementptr inbounds %"class.std::vector.15", ptr %66, i64 1
  %83 = icmp eq ptr %82, %63
  br i1 %83, label %84, label %65, !llvm.loop !72

84:                                               ; preds = %81, %60
  %85 = load ptr, ptr %3, align 8, !tbaa !58
  %86 = icmp eq ptr %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %84
  call void @_ZdlPv(ptr noundef %85) #19
  br label %88

88:                                               ; preds = %84, %87
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  ret void

89:                                               ; preds = %53
  %90 = landingpad { ptr, i32 }
          cleanup
  br label %93

91:                                               ; preds = %59
  %92 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef %54) #19
  br label %93

93:                                               ; preds = %91, %89, %57
  %94 = phi { ptr, i32 } [ %92, %91 ], [ %90, %89 ], [ %58, %57 ]
  %95 = load ptr, ptr %3, align 8, !tbaa !58
  %96 = load ptr, ptr %10, align 8, !tbaa !60
  %97 = icmp eq ptr %95, %96
  br i1 %97, label %117, label %98

98:                                               ; preds = %93, %114
  %99 = phi ptr [ %115, %114 ], [ %95, %93 ]
  %100 = load ptr, ptr %99, align 8, !tbaa !62
  %101 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %99, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !64
  %103 = icmp eq ptr %100, %102
  br i1 %103, label %110, label %104

104:                                              ; preds = %98, %104
  %105 = phi ptr [ %108, %104 ], [ %100, %98 ]
  %106 = load ptr, ptr %105, align 8, !tbaa !66
  %107 = load ptr, ptr %106, align 8
  call void %107(ptr noundef nonnull align 8 dereferenceable(96) %105) #17
  %108 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %105, i64 1
  %109 = icmp eq ptr %108, %102
  br i1 %109, label %110, label %104, !llvm.loop !68

110:                                              ; preds = %104, %98
  %111 = load ptr, ptr %99, align 8, !tbaa !62
  %112 = icmp eq ptr %111, null
  br i1 %112, label %114, label %113

113:                                              ; preds = %110
  call void @_ZdlPv(ptr noundef %111) #19
  br label %114

114:                                              ; preds = %113, %110
  %115 = getelementptr inbounds %"class.std::vector.15", ptr %99, i64 1
  %116 = icmp eq ptr %115, %96
  br i1 %116, label %117, label %98, !llvm.loop !72

117:                                              ; preds = %114, %93
  %118 = load ptr, ptr %3, align 8, !tbaa !58
  %119 = icmp eq ptr %118, null
  br i1 %119, label %121, label %120

120:                                              ; preds = %117
  call void @_ZdlPv(ptr noundef %118) #19
  br label %121

121:                                              ; preds = %120, %117, %55
  %122 = phi { ptr, i32 } [ %56, %55 ], [ %94, %117 ], [ %94, %120 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  %123 = load ptr, ptr %9, align 8, !tbaa !73
  %124 = icmp eq ptr %123, null
  br i1 %124, label %126, label %125

125:                                              ; preds = %121
  call void @_ZdlPv(ptr noundef %123) #19
  br label %126

126:                                              ; preds = %121, %125
  %127 = load ptr, ptr %8, align 8, !tbaa !74
  %128 = icmp eq ptr %127, null
  br i1 %128, label %130, label %129

129:                                              ; preds = %126
  call void @_ZdlPv(ptr noundef %127) #19
  br label %130

130:                                              ; preds = %126, %129
  %131 = load ptr, ptr %7, align 8, !tbaa !75
  %132 = icmp eq ptr %131, null
  br i1 %132, label %134, label %133

133:                                              ; preds = %130
  call void @_ZdlPv(ptr noundef %131) #19
  br label %134

134:                                              ; preds = %130, %133
  resume { ptr, i32 } %122
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef i32 @_ZN6dealii14PolynomialsABFILi1EE14compute_n_polsEj(i32 noundef %0) local_unnamed_addr #4 comdat align 2 !prof !76 {
  %2 = add i32 %0, 1
  ret i32 %2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

declare void @_ZN6dealii11Polynomials19LagrangeEquidistant23generate_complete_basisEj(ptr dead_on_unwind writable sret(%"class.std::vector.15") align 8, i32 noundef) local_unnamed_addr #0

declare void @_ZN6dealii11Polynomials8Legendre23generate_complete_basisEj(ptr dead_on_unwind writable sret(%"class.std::vector.15") align 8, i32 noundef) local_unnamed_addr #0

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

declare void @_ZN6dealii22AnisotropicPolynomialsILi1EEC1ERKSt6vectorIS2_INS_11Polynomials10PolynomialIdEESaIS5_EESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii14PolynomialsABFILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #8 comdat($_ZN6dealii14PolynomialsABFILi1EED5Ev) align 2 personality ptr @__gxx_personality_v0 !annotation !38 {
  %2 = getelementptr inbounds %"class.dealii::PolynomialsABF", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  %4 = icmp eq ptr %3, null
  br i1 %4, label %34, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !58
  %7 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<dealii::Polynomials::Polynomial<double>>, std::allocator<std::vector<dealii::Polynomials::Polynomial<double>>>>::_Vector_impl_data", ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !60
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %29, label %10

10:                                               ; preds = %5, %26
  %11 = phi ptr [ %27, %26 ], [ %6, %5 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !62
  %13 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %11, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !64
  %15 = icmp eq ptr %12, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %10, %16
  %17 = phi ptr [ %20, %16 ], [ %12, %10 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !66
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(96) %17) #17
  %20 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %17, i64 1
  %21 = icmp eq ptr %20, %14
  br i1 %21, label %22, label %16, !llvm.loop !68

22:                                               ; preds = %16, %10
  %23 = load ptr, ptr %11, align 8, !tbaa !62
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  tail call void @_ZdlPv(ptr noundef %23) #19
  br label %26

26:                                               ; preds = %25, %22
  %27 = getelementptr inbounds %"class.std::vector.15", ptr %11, i64 1
  %28 = icmp eq ptr %27, %8
  br i1 %28, label %29, label %10, !llvm.loop !72

29:                                               ; preds = %26, %5
  %30 = load ptr, ptr %3, align 8, !tbaa !58
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  tail call void @_ZdlPv(ptr noundef %30) #19
  br label %33

33:                                               ; preds = %29, %32
  tail call void @_ZdlPv(ptr noundef %3) #19
  br label %34

34:                                               ; preds = %33, %1
  %35 = getelementptr inbounds %"class.dealii::PolynomialsABF", ptr %0, i64 0, i32 5
  %36 = load ptr, ptr %35, align 8, !tbaa !73
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  tail call void @_ZdlPv(ptr noundef %36) #19
  br label %39

39:                                               ; preds = %34, %38
  %40 = getelementptr inbounds %"class.dealii::PolynomialsABF", ptr %0, i64 0, i32 4
  %41 = load ptr, ptr %40, align 8, !tbaa !74
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  tail call void @_ZdlPv(ptr noundef %41) #19
  br label %44

44:                                               ; preds = %39, %43
  %45 = getelementptr inbounds %"class.dealii::PolynomialsABF", ptr %0, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !75
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  tail call void @_ZdlPv(ptr noundef %46) #19
  br label %49

49:                                               ; preds = %44, %48
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii14PolynomialsABFILi1EE7computeERKNS_5PointILi1EEERSt6vectorINS_6TensorILi1ELi1EEESaIS8_EERS6_INS7_ILi2ELi1EEESaISC_EERS6_INS7_ILi3ELi1EEESaISG_EE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !38 {
  %6 = alloca %"class.dealii::Point", align 8
  %7 = getelementptr inbounds %"class.dealii::PolynomialsABF", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !71
  %9 = tail call noundef i32 @_ZNK6dealii22AnisotropicPolynomialsILi1EE1nEv(ptr noundef nonnull align 8 dereferenceable(28) %8)
  %10 = getelementptr inbounds %"class.dealii::PolynomialsABF", ptr %0, i64 0, i32 3
  %11 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 1>, std::allocator<dealii::Tensor<1, 1>>>::_Vector_impl_data", ptr %2, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !77
  %13 = load ptr, ptr %2, align 8, !tbaa !74
  %14 = icmp eq ptr %12, %13
  %15 = zext i32 %9 to i64
  %16 = select i1 %14, i64 0, i64 %15
  %17 = getelementptr inbounds %"class.dealii::PolynomialsABF", ptr %0, i64 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !78
  %19 = load ptr, ptr %10, align 8, !tbaa !75
  %20 = ptrtoint ptr %18 to i64
  %21 = ptrtoint ptr %19 to i64
  %22 = sub i64 %20, %21
  %23 = ashr exact i64 %22, 3
  %24 = icmp ult i64 %23, %16
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = sub nsw i64 %16, %23
  tail call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef %26)
  br label %33

27:                                               ; preds = %5
  %28 = icmp ugt i64 %23, %16
  br i1 %28, label %29, label %33

29:                                               ; preds = %27
  %30 = getelementptr inbounds double, ptr %19, i64 %16
  %31 = icmp eq ptr %18, %30
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  store ptr %30, ptr %17, align 8, !tbaa !78
  br label %33

33:                                               ; preds = %25, %27, %29, %32
  %34 = getelementptr inbounds %"class.dealii::PolynomialsABF", ptr %0, i64 0, i32 4
  %35 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<2, 1>, std::allocator<dealii::Tensor<2, 1>>>::_Vector_impl_data", ptr %3, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !79
  %37 = load ptr, ptr %3, align 8, !tbaa !73
  %38 = icmp eq ptr %36, %37
  %39 = select i1 %38, i64 0, i64 %15
  %40 = getelementptr inbounds %"class.dealii::PolynomialsABF", ptr %0, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !77
  %42 = load ptr, ptr %34, align 8, !tbaa !74
  %43 = ptrtoint ptr %41 to i64
  %44 = ptrtoint ptr %42 to i64
  %45 = sub i64 %43, %44
  %46 = ashr exact i64 %45, 3
  %47 = icmp ult i64 %46, %39
  br i1 %47, label %48, label %50

48:                                               ; preds = %33
  %49 = sub nsw i64 %39, %46
  tail call void @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %34, i64 noundef %49)
  br label %56

50:                                               ; preds = %33
  %51 = icmp ugt i64 %46, %39
  br i1 %51, label %52, label %56

52:                                               ; preds = %50
  %53 = getelementptr inbounds %"class.dealii::Tensor", ptr %42, i64 %39
  %54 = icmp eq ptr %41, %53
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  store ptr %53, ptr %40, align 8, !tbaa !77
  br label %56

56:                                               ; preds = %48, %50, %52, %55
  %57 = getelementptr inbounds %"class.dealii::PolynomialsABF", ptr %0, i64 0, i32 5
  %58 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<3, 1>, std::allocator<dealii::Tensor<3, 1>>>::_Vector_impl_data", ptr %4, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !80
  %60 = load ptr, ptr %4, align 8, !tbaa !82
  %61 = icmp eq ptr %59, %60
  %62 = select i1 %61, i64 0, i64 %15
  %63 = getelementptr inbounds %"class.dealii::PolynomialsABF", ptr %0, i64 0, i32 5, i32 0, i32 0, i32 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !79
  %65 = load ptr, ptr %57, align 8, !tbaa !73
  %66 = ptrtoint ptr %64 to i64
  %67 = ptrtoint ptr %65 to i64
  %68 = sub i64 %66, %67
  %69 = ashr exact i64 %68, 3
  %70 = icmp ult i64 %69, %62
  br i1 %70, label %71, label %73

71:                                               ; preds = %56
  %72 = sub nsw i64 %62, %69
  tail call void @_ZNSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %57, i64 noundef %72)
  br label %79

73:                                               ; preds = %56
  %74 = icmp ugt i64 %69, %62
  br i1 %74, label %75, label %79

75:                                               ; preds = %73
  %76 = getelementptr inbounds %"class.dealii::Tensor.25", ptr %65, i64 %62
  %77 = icmp eq ptr %64, %76
  br i1 %77, label %79, label %78

78:                                               ; preds = %75
  store ptr %76, ptr %63, align 8, !tbaa !79
  br label %79

79:                                               ; preds = %71, %73, %75, %78
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #17
  store double 0.000000e+00, ptr %6, align 8, !tbaa !83
  %80 = load double, ptr %1, align 8, !tbaa !83
  store double %80, ptr %6, align 8, !tbaa !83
  %81 = load ptr, ptr %7, align 8, !tbaa !71
  call void @_ZNK6dealii22AnisotropicPolynomialsILi1EE7computeERKNS_5PointILi1EEERSt6vectorIdSaIdEERS6_INS_6TensorILi1ELi1EEESaISB_EERS6_INSA_ILi2ELi1EEESaISF_EE(ptr noundef nonnull align 8 dereferenceable(28) %81, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %34, ptr noundef nonnull align 8 dereferenceable(24) %57)
  %82 = load ptr, ptr %17, align 8, !tbaa !78
  %83 = load ptr, ptr %10, align 8, !tbaa !75
  %84 = ptrtoint ptr %82 to i64
  %85 = ptrtoint ptr %83 to i64
  %86 = sub i64 %84, %85
  %87 = ashr exact i64 %86, 3
  %88 = icmp eq ptr %82, %83
  br i1 %88, label %91, label %89

89:                                               ; preds = %79
  %90 = load ptr, ptr %2, align 8, !tbaa !74
  br label %101

91:                                               ; preds = %101, %79
  %92 = load ptr, ptr %40, align 8, !tbaa !77
  %93 = load ptr, ptr %34, align 8, !tbaa !74
  %94 = ptrtoint ptr %92 to i64
  %95 = ptrtoint ptr %93 to i64
  %96 = sub i64 %94, %95
  %97 = ashr exact i64 %96, 3
  %98 = icmp eq ptr %92, %93
  br i1 %98, label %110, label %99

99:                                               ; preds = %91
  %100 = load ptr, ptr %3, align 8, !tbaa !73
  br label %120

101:                                              ; preds = %89, %101
  %102 = phi i64 [ 0, %89 ], [ %108, %101 ]
  %103 = phi i32 [ 0, %89 ], [ %107, %101 ]
  %104 = getelementptr inbounds double, ptr %83, i64 %102
  %105 = load double, ptr %104, align 8, !tbaa !83
  %106 = getelementptr inbounds %"class.dealii::Tensor", ptr %90, i64 %102
  store double %105, ptr %106, align 8, !tbaa !83
  %107 = add i32 %103, 1
  %108 = zext i32 %107 to i64
  %109 = icmp ugt i64 %87, %108
  br i1 %109, label %101, label %91, !llvm.loop !85

110:                                              ; preds = %120, %91
  %111 = load ptr, ptr %63, align 8, !tbaa !79
  %112 = load ptr, ptr %57, align 8, !tbaa !73
  %113 = ptrtoint ptr %111 to i64
  %114 = ptrtoint ptr %112 to i64
  %115 = sub i64 %113, %114
  %116 = ashr exact i64 %115, 3
  %117 = icmp eq ptr %111, %112
  br i1 %117, label %129, label %118

118:                                              ; preds = %110
  %119 = load ptr, ptr %4, align 8, !tbaa !82
  br label %130

120:                                              ; preds = %99, %120
  %121 = phi i64 [ 0, %99 ], [ %127, %120 ]
  %122 = phi i32 [ 0, %99 ], [ %126, %120 ]
  %123 = getelementptr inbounds %"class.dealii::Tensor", ptr %93, i64 %121
  %124 = load double, ptr %123, align 8, !tbaa !83
  %125 = getelementptr inbounds %"class.dealii::Tensor.25", ptr %100, i64 %121
  store double %124, ptr %125, align 8, !tbaa !83
  %126 = add i32 %122, 1
  %127 = zext i32 %126 to i64
  %128 = icmp ugt i64 %97, %127
  br i1 %128, label %120, label %110, !llvm.loop !86

129:                                              ; preds = %130, %110
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #17
  ret void

130:                                              ; preds = %118, %130
  %131 = phi i64 [ 0, %118 ], [ %137, %130 ]
  %132 = phi i32 [ 0, %118 ], [ %136, %130 ]
  %133 = getelementptr inbounds %"class.dealii::Tensor.25", ptr %112, i64 %131
  %134 = load double, ptr %133, align 8, !tbaa !83
  %135 = getelementptr inbounds %"class.dealii::Tensor.26", ptr %119, i64 %131
  store double %134, ptr %135, align 8, !tbaa !83
  %136 = add i32 %132, 1
  %137 = zext i32 %136 to i64
  %138 = icmp ugt i64 %116, %137
  br i1 %138, label %130, label %129, !llvm.loop !87
}

declare noundef i32 @_ZNK6dealii22AnisotropicPolynomialsILi1EE1nEv(ptr noundef nonnull align 8 dereferenceable(28)) local_unnamed_addr #0

declare void @_ZNK6dealii22AnisotropicPolynomialsILi1EE7computeERKNS_5PointILi1EEERSt6vectorIdSaIdEERS6_INS_6TensorILi1ELi1EEESaISB_EERS6_INSA_ILi2ELi1EEESaISF_EE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #0

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii14PolynomialsABFILi1EE1nEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #9 comdat align 2 !prof !76 {
  %2 = getelementptr inbounds %"class.dealii::PolynomialsABF", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !57
  ret i32 %3
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii14PolynomialsABFILi1EE6degreeEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #9 comdat align 2 !prof !76 {
  %2 = load i32, ptr %0, align 8, !tbaa !39
  ret i32 %2
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii14PolynomialsABFILi2EEC2Ej(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %1) unnamed_addr #3 comdat($_ZN6dealii14PolynomialsABFILi2EEC5Ej) align 2 personality ptr @__gxx_personality_v0 !annotation !38 {
  %3 = alloca %"class.std::vector.10", align 8
  %4 = alloca %"class.std::vector.15", align 8
  %5 = alloca %"class.std::vector.15", align 8
  %6 = alloca %"class.std::vector.15", align 8
  store i32 %1, ptr %0, align 8, !tbaa !88
  %7 = getelementptr inbounds %"class.dealii::PolynomialsABF.27", ptr %0, i64 0, i32 2
  %8 = shl i32 %1, 1
  %9 = add i32 %8, 2
  %10 = add i32 %1, 3
  %11 = mul i32 %9, %10
  store i32 %11, ptr %7, align 8, !tbaa !98
  %12 = getelementptr inbounds %"class.dealii::PolynomialsABF.27", ptr %0, i64 0, i32 3
  %13 = getelementptr inbounds %"class.dealii::PolynomialsABF.27", ptr %0, i64 0, i32 4
  %14 = getelementptr inbounds %"class.dealii::PolynomialsABF.27", ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %12, i8 0, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  %15 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<dealii::Polynomials::Polynomial<double>>, std::allocator<std::vector<dealii::Polynomials::Polynomial<double>>>>::_Vector_impl_data", ptr %3, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %16 = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #18
          to label %17 unwind label %66

17:                                               ; preds = %2
  %18 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<dealii::Polynomials::Polynomial<double>>, std::allocator<std::vector<dealii::Polynomials::Polynomial<double>>>>::_Vector_impl_data", ptr %3, i64 0, i32 2
  store ptr %16, ptr %3, align 8, !tbaa !58
  store ptr %16, ptr %15, align 8, !tbaa !60
  %19 = getelementptr inbounds %"class.std::vector.15", ptr %16, i64 2
  store ptr %19, ptr %18, align 8, !tbaa !61
  br label %20

20:                                               ; preds = %17, %20
  %21 = phi ptr [ %16, %17 ], [ %24, %20 ]
  %22 = phi i64 [ 2, %17 ], [ %23, %20 ]
  %23 = add nsw i64 %22, -1
  %24 = getelementptr inbounds %"class.std::vector.15", ptr %21, i64 1
  %25 = icmp eq i64 %23, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, i8 0, i64 24, i1 false)
  br i1 %25, label %26, label %20, !llvm.loop !99

26:                                               ; preds = %20
  store ptr %24, ptr %15, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #17
  %27 = add i32 %1, 2
  invoke void @_ZN6dealii11Polynomials19LagrangeEquidistant23generate_complete_basisEj(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.15") align 8 %4, i32 noundef %27)
          to label %28 unwind label %68

28:                                               ; preds = %26
  %29 = load ptr, ptr %3, align 8, !tbaa !58
  %30 = load ptr, ptr %29, align 8, !tbaa !62
  %31 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %29, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !64
  %33 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %29, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !65
  %35 = load ptr, ptr %4, align 8, !tbaa !62
  store ptr %35, ptr %29, align 8, !tbaa !62
  %36 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %4, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !64
  store ptr %37, ptr %31, align 8, !tbaa !64
  %38 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %4, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !65
  store ptr %39, ptr %33, align 8, !tbaa !65
  store ptr %30, ptr %4, align 8, !tbaa !62
  store ptr %32, ptr %36, align 8, !tbaa !64
  store ptr %34, ptr %38, align 8, !tbaa !65
  %40 = icmp eq ptr %30, %32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br i1 %40, label %47, label %41

41:                                               ; preds = %28, %41
  %42 = phi ptr [ %45, %41 ], [ %30, %28 ]
  %43 = load ptr, ptr %42, align 8, !tbaa !66
  %44 = load ptr, ptr %43, align 8
  call void %44(ptr noundef nonnull align 8 dereferenceable(96) %42) #17
  %45 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %42, i64 1
  %46 = icmp eq ptr %45, %32
  br i1 %46, label %47, label %41, !llvm.loop !68

47:                                               ; preds = %41, %28
  %48 = icmp eq ptr %30, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %47
  call void @_ZdlPv(ptr noundef %30) #19
  br label %50

50:                                               ; preds = %47, %49
  %51 = load ptr, ptr %4, align 8, !tbaa !62
  %52 = load ptr, ptr %36, align 8, !tbaa !64
  %53 = icmp eq ptr %51, %52
  br i1 %53, label %60, label %54

54:                                               ; preds = %50, %54
  %55 = phi ptr [ %58, %54 ], [ %51, %50 ]
  %56 = load ptr, ptr %55, align 8, !tbaa !66
  %57 = load ptr, ptr %56, align 8
  call void %57(ptr noundef nonnull align 8 dereferenceable(96) %55) #17
  %58 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %55, i64 1
  %59 = icmp eq ptr %58, %52
  br i1 %59, label %60, label %54, !llvm.loop !68

60:                                               ; preds = %54, %50
  %61 = load ptr, ptr %4, align 8, !tbaa !62
  %62 = icmp eq ptr %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %60
  call void @_ZdlPv(ptr noundef %61) #19
  br label %64

64:                                               ; preds = %60, %63
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #17
  %65 = icmp eq i32 %1, 0
  br i1 %65, label %70, label %111

66:                                               ; preds = %2
  %67 = landingpad { ptr, i32 }
          cleanup
  br label %216

68:                                               ; preds = %26
  %69 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #17
  br label %188

70:                                               ; preds = %64
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #17
  invoke void @_ZN6dealii11Polynomials8Legendre23generate_complete_basisEj(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.15") align 8 %5, i32 noundef 0)
          to label %71 unwind label %109

71:                                               ; preds = %70
  %72 = load ptr, ptr %3, align 8, !tbaa !58
  %73 = getelementptr inbounds %"class.std::vector.15", ptr %72, i64 1
  %74 = load ptr, ptr %73, align 8, !tbaa !62
  %75 = getelementptr inbounds %"class.std::vector.15", ptr %72, i64 1, i32 0, i32 0, i32 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !64
  %77 = getelementptr inbounds %"class.std::vector.15", ptr %72, i64 1, i32 0, i32 0, i32 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !65
  %79 = load ptr, ptr %5, align 8, !tbaa !62
  store ptr %79, ptr %73, align 8, !tbaa !62
  %80 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %5, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !64
  store ptr %81, ptr %75, align 8, !tbaa !64
  %82 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %5, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !65
  store ptr %83, ptr %77, align 8, !tbaa !65
  store ptr %74, ptr %5, align 8, !tbaa !62
  store ptr %76, ptr %80, align 8, !tbaa !64
  store ptr %78, ptr %82, align 8, !tbaa !65
  %84 = icmp eq ptr %74, %76
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  br i1 %84, label %91, label %85

85:                                               ; preds = %71, %85
  %86 = phi ptr [ %89, %85 ], [ %74, %71 ]
  %87 = load ptr, ptr %86, align 8, !tbaa !66
  %88 = load ptr, ptr %87, align 8
  call void %88(ptr noundef nonnull align 8 dereferenceable(96) %86) #17
  %89 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %86, i64 1
  %90 = icmp eq ptr %89, %76
  br i1 %90, label %91, label %85, !llvm.loop !68

91:                                               ; preds = %85, %71
  %92 = icmp eq ptr %74, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %91
  call void @_ZdlPv(ptr noundef %74) #19
  br label %94

94:                                               ; preds = %91, %93
  %95 = load ptr, ptr %5, align 8, !tbaa !62
  %96 = load ptr, ptr %80, align 8, !tbaa !64
  %97 = icmp eq ptr %95, %96
  br i1 %97, label %104, label %98

98:                                               ; preds = %94, %98
  %99 = phi ptr [ %102, %98 ], [ %95, %94 ]
  %100 = load ptr, ptr %99, align 8, !tbaa !66
  %101 = load ptr, ptr %100, align 8
  call void %101(ptr noundef nonnull align 8 dereferenceable(96) %99) #17
  %102 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %99, i64 1
  %103 = icmp eq ptr %102, %96
  br i1 %103, label %104, label %98, !llvm.loop !68

104:                                              ; preds = %98, %94
  %105 = load ptr, ptr %5, align 8, !tbaa !62
  %106 = icmp eq ptr %105, null
  br i1 %106, label %108, label %107

107:                                              ; preds = %104
  call void @_ZdlPv(ptr noundef %105) #19
  br label %108

108:                                              ; preds = %104, %107
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #17
  br label %152

109:                                              ; preds = %70
  %110 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #17
  br label %188

111:                                              ; preds = %64
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #17
  invoke void @_ZN6dealii11Polynomials19LagrangeEquidistant23generate_complete_basisEj(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.15") align 8 %6, i32 noundef %1)
          to label %112 unwind label %150

112:                                              ; preds = %111
  %113 = load ptr, ptr %3, align 8, !tbaa !58
  %114 = getelementptr inbounds %"class.std::vector.15", ptr %113, i64 1
  %115 = load ptr, ptr %114, align 8, !tbaa !62
  %116 = getelementptr inbounds %"class.std::vector.15", ptr %113, i64 1, i32 0, i32 0, i32 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !64
  %118 = getelementptr inbounds %"class.std::vector.15", ptr %113, i64 1, i32 0, i32 0, i32 0, i32 2
  %119 = load ptr, ptr %118, align 8, !tbaa !65
  %120 = load ptr, ptr %6, align 8, !tbaa !62
  store ptr %120, ptr %114, align 8, !tbaa !62
  %121 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %6, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !64
  store ptr %122, ptr %116, align 8, !tbaa !64
  %123 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %6, i64 0, i32 2
  %124 = load ptr, ptr %123, align 8, !tbaa !65
  store ptr %124, ptr %118, align 8, !tbaa !65
  store ptr %115, ptr %6, align 8, !tbaa !62
  store ptr %117, ptr %121, align 8, !tbaa !64
  store ptr %119, ptr %123, align 8, !tbaa !65
  %125 = icmp eq ptr %115, %117
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  br i1 %125, label %132, label %126

126:                                              ; preds = %112, %126
  %127 = phi ptr [ %130, %126 ], [ %115, %112 ]
  %128 = load ptr, ptr %127, align 8, !tbaa !66
  %129 = load ptr, ptr %128, align 8
  call void %129(ptr noundef nonnull align 8 dereferenceable(96) %127) #17
  %130 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %127, i64 1
  %131 = icmp eq ptr %130, %117
  br i1 %131, label %132, label %126, !llvm.loop !68

132:                                              ; preds = %126, %112
  %133 = icmp eq ptr %115, null
  br i1 %133, label %135, label %134

134:                                              ; preds = %132
  call void @_ZdlPv(ptr noundef %115) #19
  br label %135

135:                                              ; preds = %132, %134
  %136 = load ptr, ptr %6, align 8, !tbaa !62
  %137 = load ptr, ptr %121, align 8, !tbaa !64
  %138 = icmp eq ptr %136, %137
  br i1 %138, label %145, label %139

139:                                              ; preds = %135, %139
  %140 = phi ptr [ %143, %139 ], [ %136, %135 ]
  %141 = load ptr, ptr %140, align 8, !tbaa !66
  %142 = load ptr, ptr %141, align 8
  call void %142(ptr noundef nonnull align 8 dereferenceable(96) %140) #17
  %143 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %140, i64 1
  %144 = icmp eq ptr %143, %137
  br i1 %144, label %145, label %139, !llvm.loop !68

145:                                              ; preds = %139, %135
  %146 = load ptr, ptr %6, align 8, !tbaa !62
  %147 = icmp eq ptr %146, null
  br i1 %147, label %149, label %148

148:                                              ; preds = %145
  call void @_ZdlPv(ptr noundef %146) #19
  br label %149

149:                                              ; preds = %145, %148
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #17
  br label %152

150:                                              ; preds = %111
  %151 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #17
  br label %188

152:                                              ; preds = %149, %108
  %153 = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #18
          to label %154 unwind label %184

154:                                              ; preds = %152
  invoke void @_ZN6dealii22AnisotropicPolynomialsILi2EEC1ERKSt6vectorIS2_INS_11Polynomials10PolynomialIdEESaIS5_EESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(28) %153, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %155 unwind label %186

155:                                              ; preds = %154
  %156 = getelementptr inbounds %"class.dealii::PolynomialsABF.27", ptr %0, i64 0, i32 1
  store ptr %153, ptr %156, align 8, !tbaa !100
  %157 = load ptr, ptr %3, align 8, !tbaa !58
  %158 = load ptr, ptr %15, align 8, !tbaa !60
  %159 = icmp eq ptr %157, %158
  br i1 %159, label %179, label %160

160:                                              ; preds = %155, %176
  %161 = phi ptr [ %177, %176 ], [ %157, %155 ]
  %162 = load ptr, ptr %161, align 8, !tbaa !62
  %163 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %161, i64 0, i32 1
  %164 = load ptr, ptr %163, align 8, !tbaa !64
  %165 = icmp eq ptr %162, %164
  br i1 %165, label %172, label %166

166:                                              ; preds = %160, %166
  %167 = phi ptr [ %170, %166 ], [ %162, %160 ]
  %168 = load ptr, ptr %167, align 8, !tbaa !66
  %169 = load ptr, ptr %168, align 8
  call void %169(ptr noundef nonnull align 8 dereferenceable(96) %167) #17
  %170 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %167, i64 1
  %171 = icmp eq ptr %170, %164
  br i1 %171, label %172, label %166, !llvm.loop !68

172:                                              ; preds = %166, %160
  %173 = load ptr, ptr %161, align 8, !tbaa !62
  %174 = icmp eq ptr %173, null
  br i1 %174, label %176, label %175

175:                                              ; preds = %172
  call void @_ZdlPv(ptr noundef %173) #19
  br label %176

176:                                              ; preds = %175, %172
  %177 = getelementptr inbounds %"class.std::vector.15", ptr %161, i64 1
  %178 = icmp eq ptr %177, %158
  br i1 %178, label %179, label %160, !llvm.loop !72

179:                                              ; preds = %176, %155
  %180 = load ptr, ptr %3, align 8, !tbaa !58
  %181 = icmp eq ptr %180, null
  br i1 %181, label %183, label %182

182:                                              ; preds = %179
  call void @_ZdlPv(ptr noundef %180) #19
  br label %183

183:                                              ; preds = %179, %182
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  ret void

184:                                              ; preds = %152
  %185 = landingpad { ptr, i32 }
          cleanup
  br label %188

186:                                              ; preds = %154
  %187 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef %153) #19
  br label %188

188:                                              ; preds = %186, %184, %150, %109, %68
  %189 = phi { ptr, i32 } [ %110, %109 ], [ %187, %186 ], [ %185, %184 ], [ %151, %150 ], [ %69, %68 ]
  %190 = load ptr, ptr %3, align 8, !tbaa !58
  %191 = load ptr, ptr %15, align 8, !tbaa !60
  %192 = icmp eq ptr %190, %191
  br i1 %192, label %212, label %193

193:                                              ; preds = %188, %209
  %194 = phi ptr [ %210, %209 ], [ %190, %188 ]
  %195 = load ptr, ptr %194, align 8, !tbaa !62
  %196 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %194, i64 0, i32 1
  %197 = load ptr, ptr %196, align 8, !tbaa !64
  %198 = icmp eq ptr %195, %197
  br i1 %198, label %205, label %199

199:                                              ; preds = %193, %199
  %200 = phi ptr [ %203, %199 ], [ %195, %193 ]
  %201 = load ptr, ptr %200, align 8, !tbaa !66
  %202 = load ptr, ptr %201, align 8
  call void %202(ptr noundef nonnull align 8 dereferenceable(96) %200) #17
  %203 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %200, i64 1
  %204 = icmp eq ptr %203, %197
  br i1 %204, label %205, label %199, !llvm.loop !68

205:                                              ; preds = %199, %193
  %206 = load ptr, ptr %194, align 8, !tbaa !62
  %207 = icmp eq ptr %206, null
  br i1 %207, label %209, label %208

208:                                              ; preds = %205
  call void @_ZdlPv(ptr noundef %206) #19
  br label %209

209:                                              ; preds = %208, %205
  %210 = getelementptr inbounds %"class.std::vector.15", ptr %194, i64 1
  %211 = icmp eq ptr %210, %191
  br i1 %211, label %212, label %193, !llvm.loop !72

212:                                              ; preds = %209, %188
  %213 = load ptr, ptr %3, align 8, !tbaa !58
  %214 = icmp eq ptr %213, null
  br i1 %214, label %216, label %215

215:                                              ; preds = %212
  call void @_ZdlPv(ptr noundef %213) #19
  br label %216

216:                                              ; preds = %215, %212, %66
  %217 = phi { ptr, i32 } [ %67, %66 ], [ %189, %212 ], [ %189, %215 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  %218 = load ptr, ptr %14, align 8, !tbaa !101
  %219 = icmp eq ptr %218, null
  br i1 %219, label %221, label %220

220:                                              ; preds = %216
  call void @_ZdlPv(ptr noundef %218) #19
  br label %221

221:                                              ; preds = %216, %220
  %222 = load ptr, ptr %13, align 8, !tbaa !102
  %223 = icmp eq ptr %222, null
  br i1 %223, label %225, label %224

224:                                              ; preds = %221
  call void @_ZdlPv(ptr noundef %222) #19
  br label %225

225:                                              ; preds = %221, %224
  %226 = load ptr, ptr %12, align 8, !tbaa !75
  %227 = icmp eq ptr %226, null
  br i1 %227, label %229, label %228

228:                                              ; preds = %225
  call void @_ZdlPv(ptr noundef %226) #19
  br label %229

229:                                              ; preds = %225, %228
  resume { ptr, i32 } %217
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef i32 @_ZN6dealii14PolynomialsABFILi2EE14compute_n_polsEj(i32 noundef %0) local_unnamed_addr #4 comdat align 2 !prof !76 {
  %2 = shl i32 %0, 1
  %3 = add i32 %2, 2
  %4 = add i32 %0, 3
  %5 = mul i32 %3, %4
  ret i32 %5
}

declare void @_ZN6dealii22AnisotropicPolynomialsILi2EEC1ERKSt6vectorIS2_INS_11Polynomials10PolynomialIdEESaIS5_EESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii14PolynomialsABFILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #8 comdat($_ZN6dealii14PolynomialsABFILi2EED5Ev) align 2 personality ptr @__gxx_personality_v0 !annotation !38 {
  %2 = getelementptr inbounds %"class.dealii::PolynomialsABF.27", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !100
  %4 = icmp eq ptr %3, null
  br i1 %4, label %34, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !58
  %7 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<dealii::Polynomials::Polynomial<double>>, std::allocator<std::vector<dealii::Polynomials::Polynomial<double>>>>::_Vector_impl_data", ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !60
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %29, label %10

10:                                               ; preds = %5, %26
  %11 = phi ptr [ %27, %26 ], [ %6, %5 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !62
  %13 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %11, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !64
  %15 = icmp eq ptr %12, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %10, %16
  %17 = phi ptr [ %20, %16 ], [ %12, %10 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !66
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(96) %17) #17
  %20 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %17, i64 1
  %21 = icmp eq ptr %20, %14
  br i1 %21, label %22, label %16, !llvm.loop !68

22:                                               ; preds = %16, %10
  %23 = load ptr, ptr %11, align 8, !tbaa !62
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  tail call void @_ZdlPv(ptr noundef %23) #19
  br label %26

26:                                               ; preds = %25, %22
  %27 = getelementptr inbounds %"class.std::vector.15", ptr %11, i64 1
  %28 = icmp eq ptr %27, %8
  br i1 %28, label %29, label %10, !llvm.loop !72

29:                                               ; preds = %26, %5
  %30 = load ptr, ptr %3, align 8, !tbaa !58
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  tail call void @_ZdlPv(ptr noundef %30) #19
  br label %33

33:                                               ; preds = %29, %32
  tail call void @_ZdlPv(ptr noundef %3) #19
  br label %34

34:                                               ; preds = %33, %1
  %35 = getelementptr inbounds %"class.dealii::PolynomialsABF.27", ptr %0, i64 0, i32 5
  %36 = load ptr, ptr %35, align 8, !tbaa !101
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  tail call void @_ZdlPv(ptr noundef %36) #19
  br label %39

39:                                               ; preds = %34, %38
  %40 = getelementptr inbounds %"class.dealii::PolynomialsABF.27", ptr %0, i64 0, i32 4
  %41 = load ptr, ptr %40, align 8, !tbaa !102
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  tail call void @_ZdlPv(ptr noundef %41) #19
  br label %44

44:                                               ; preds = %39, %43
  %45 = getelementptr inbounds %"class.dealii::PolynomialsABF.27", ptr %0, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !75
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  tail call void @_ZdlPv(ptr noundef %46) #19
  br label %49

49:                                               ; preds = %44, %48
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii14PolynomialsABFILi2EE7computeERKNS_5PointILi2EEERSt6vectorINS_6TensorILi1ELi2EEESaIS8_EERS6_INS7_ILi2ELi2EEESaISC_EERS6_INS7_ILi3ELi2EEESaISG_EE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !38 {
  %6 = alloca %"class.dealii::Point.45", align 8
  %7 = getelementptr inbounds %"class.dealii::PolynomialsABF.27", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !100
  %9 = tail call noundef i32 @_ZNK6dealii22AnisotropicPolynomialsILi2EE1nEv(ptr noundef nonnull align 8 dereferenceable(28) %8)
  %10 = getelementptr inbounds %"class.dealii::PolynomialsABF.27", ptr %0, i64 0, i32 3
  %11 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl_data", ptr %2, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !103
  %13 = load ptr, ptr %2, align 8, !tbaa !102
  %14 = icmp eq ptr %12, %13
  %15 = zext i32 %9 to i64
  %16 = select i1 %14, i64 0, i64 %15
  %17 = getelementptr inbounds %"class.dealii::PolynomialsABF.27", ptr %0, i64 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !78
  %19 = load ptr, ptr %10, align 8, !tbaa !75
  %20 = ptrtoint ptr %18 to i64
  %21 = ptrtoint ptr %19 to i64
  %22 = sub i64 %20, %21
  %23 = ashr exact i64 %22, 3
  %24 = icmp ult i64 %23, %16
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = sub nsw i64 %16, %23
  tail call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef %26)
  br label %33

27:                                               ; preds = %5
  %28 = icmp ugt i64 %23, %16
  br i1 %28, label %29, label %33

29:                                               ; preds = %27
  %30 = getelementptr inbounds double, ptr %19, i64 %16
  %31 = icmp eq ptr %18, %30
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  store ptr %30, ptr %17, align 8, !tbaa !78
  br label %33

33:                                               ; preds = %25, %27, %29, %32
  %34 = getelementptr inbounds %"class.dealii::PolynomialsABF.27", ptr %0, i64 0, i32 4
  %35 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<2, 2>, std::allocator<dealii::Tensor<2, 2>>>::_Vector_impl_data", ptr %3, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !104
  %37 = load ptr, ptr %3, align 8, !tbaa !101
  %38 = icmp eq ptr %36, %37
  %39 = select i1 %38, i64 0, i64 %15
  %40 = getelementptr inbounds %"class.dealii::PolynomialsABF.27", ptr %0, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !103
  %42 = load ptr, ptr %34, align 8, !tbaa !102
  %43 = ptrtoint ptr %41 to i64
  %44 = ptrtoint ptr %42 to i64
  %45 = sub i64 %43, %44
  %46 = ashr exact i64 %45, 4
  %47 = icmp ult i64 %46, %39
  br i1 %47, label %48, label %50

48:                                               ; preds = %33
  %49 = sub nsw i64 %39, %46
  tail call void @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %34, i64 noundef %49)
  br label %56

50:                                               ; preds = %33
  %51 = icmp ugt i64 %46, %39
  br i1 %51, label %52, label %56

52:                                               ; preds = %50
  %53 = getelementptr inbounds %"class.dealii::Tensor.46", ptr %42, i64 %39
  %54 = icmp eq ptr %41, %53
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  store ptr %53, ptr %40, align 8, !tbaa !103
  br label %56

56:                                               ; preds = %48, %50, %52, %55
  %57 = getelementptr inbounds %"class.dealii::PolynomialsABF.27", ptr %0, i64 0, i32 5
  %58 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<3, 2>, std::allocator<dealii::Tensor<3, 2>>>::_Vector_impl_data", ptr %4, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !105
  %60 = load ptr, ptr %4, align 8, !tbaa !107
  %61 = icmp eq ptr %59, %60
  %62 = select i1 %61, i64 0, i64 %15
  %63 = getelementptr inbounds %"class.dealii::PolynomialsABF.27", ptr %0, i64 0, i32 5, i32 0, i32 0, i32 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !104
  %65 = load ptr, ptr %57, align 8, !tbaa !101
  %66 = ptrtoint ptr %64 to i64
  %67 = ptrtoint ptr %65 to i64
  %68 = sub i64 %66, %67
  %69 = ashr exact i64 %68, 5
  %70 = icmp ult i64 %69, %62
  br i1 %70, label %71, label %73

71:                                               ; preds = %56
  %72 = sub nsw i64 %62, %69
  tail call void @_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %57, i64 noundef %72)
  br label %79

73:                                               ; preds = %56
  %74 = icmp ugt i64 %69, %62
  br i1 %74, label %75, label %79

75:                                               ; preds = %73
  %76 = getelementptr inbounds %"class.dealii::Tensor.47", ptr %65, i64 %62
  %77 = icmp eq ptr %64, %76
  br i1 %77, label %79, label %78

78:                                               ; preds = %75
  store ptr %76, ptr %63, align 8, !tbaa !104
  br label %79

79:                                               ; preds = %71, %73, %75, %78
  br label %81

80:                                               ; preds = %170
  ret void

81:                                               ; preds = %79, %170
  %82 = phi i64 [ %171, %170 ], [ 0, %79 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false), !tbaa !83
  br label %97

83:                                               ; preds = %97
  %84 = load ptr, ptr %7, align 8, !tbaa !100
  call void @_ZNK6dealii22AnisotropicPolynomialsILi2EE7computeERKNS_5PointILi2EEERSt6vectorIdSaIdEERS6_INS_6TensorILi1ELi2EEESaISB_EERS6_INSA_ILi2ELi2EEESaISF_EE(ptr noundef nonnull align 8 dereferenceable(28) %84, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %34, ptr noundef nonnull align 8 dereferenceable(24) %57)
  %85 = load ptr, ptr %17, align 8, !tbaa !78
  %86 = load ptr, ptr %10, align 8, !tbaa !75
  %87 = ptrtoint ptr %85 to i64
  %88 = ptrtoint ptr %86 to i64
  %89 = sub i64 %87, %88
  %90 = ashr exact i64 %89, 3
  %91 = icmp eq ptr %85, %86
  br i1 %91, label %106, label %92

92:                                               ; preds = %83
  %93 = load ptr, ptr %2, align 8, !tbaa !102
  %94 = getelementptr inbounds [2 x double], ptr %93, i64 0, i64 %82
  %95 = trunc i64 %82 to i32
  %96 = mul i32 %9, %95
  br label %119

97:                                               ; preds = %81, %97
  %98 = phi i64 [ 0, %81 ], [ %104, %97 ]
  %99 = add nuw nsw i64 %98, %82
  %100 = and i64 %99, 1
  %101 = getelementptr inbounds [2 x double], ptr %1, i64 0, i64 %100
  %102 = load double, ptr %101, align 8, !tbaa !83
  %103 = getelementptr inbounds [2 x double], ptr %6, i64 0, i64 %98
  store double %102, ptr %103, align 8, !tbaa !83
  %104 = add nuw nsw i64 %98, 1
  %105 = icmp eq i64 %98, 0
  br i1 %105, label %97, label %83, !llvm.loop !108

106:                                              ; preds = %119, %83
  %107 = load ptr, ptr %40, align 8, !tbaa !103
  %108 = load ptr, ptr %34, align 8, !tbaa !102
  %109 = ptrtoint ptr %107 to i64
  %110 = ptrtoint ptr %108 to i64
  %111 = sub i64 %109, %110
  %112 = ashr exact i64 %111, 4
  %113 = icmp eq ptr %107, %108
  br i1 %113, label %130, label %114

114:                                              ; preds = %106
  %115 = load ptr, ptr %3, align 8, !tbaa !101
  %116 = getelementptr inbounds [2 x %"class.dealii::Tensor.46"], ptr %115, i64 0, i64 %82
  %117 = trunc i64 %82 to i32
  %118 = mul i32 %9, %117
  br label %143

119:                                              ; preds = %92, %119
  %120 = phi i64 [ 0, %92 ], [ %128, %119 ]
  %121 = phi i32 [ 0, %92 ], [ %127, %119 ]
  %122 = getelementptr inbounds double, ptr %86, i64 %120
  %123 = load double, ptr %122, align 8, !tbaa !83
  %124 = add i32 %121, %96
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds %"class.dealii::Tensor.46", ptr %94, i64 %125
  store double %123, ptr %126, align 8, !tbaa !83
  %127 = add i32 %121, 1
  %128 = zext i32 %127 to i64
  %129 = icmp ugt i64 %90, %128
  br i1 %129, label %119, label %106, !llvm.loop !109

130:                                              ; preds = %150, %106
  %131 = load ptr, ptr %63, align 8, !tbaa !104
  %132 = load ptr, ptr %57, align 8, !tbaa !101
  %133 = ptrtoint ptr %131 to i64
  %134 = ptrtoint ptr %132 to i64
  %135 = sub i64 %133, %134
  %136 = ashr exact i64 %135, 5
  %137 = icmp eq ptr %131, %132
  br i1 %137, label %170, label %138

138:                                              ; preds = %130
  %139 = load ptr, ptr %4, align 8, !tbaa !107
  %140 = getelementptr inbounds [2 x %"class.dealii::Tensor.47"], ptr %139, i64 0, i64 %82
  %141 = trunc i64 %82 to i32
  %142 = mul i32 %9, %141
  br label %163

143:                                              ; preds = %114, %150
  %144 = phi i64 [ 0, %114 ], [ %151, %150 ]
  %145 = getelementptr inbounds %"class.dealii::Tensor.46", ptr %108, i64 %144
  %146 = trunc i64 %144 to i32
  %147 = add i32 %118, %146
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds %"class.dealii::Tensor.47", ptr %116, i64 %148
  br label %154

150:                                              ; preds = %154
  %151 = add i64 %144, 1
  %152 = and i64 %151, 4294967295
  %153 = icmp ugt i64 %112, %152
  br i1 %153, label %143, label %130, !llvm.loop !110

154:                                              ; preds = %143, %154
  %155 = phi i64 [ 0, %143 ], [ %161, %154 ]
  %156 = getelementptr inbounds [2 x double], ptr %145, i64 0, i64 %155
  %157 = load double, ptr %156, align 8, !tbaa !83
  %158 = add nuw nsw i64 %155, %82
  %159 = and i64 %158, 1
  %160 = getelementptr inbounds [2 x double], ptr %149, i64 0, i64 %159
  store double %157, ptr %160, align 8, !tbaa !83
  %161 = add nuw nsw i64 %155, 1
  %162 = icmp eq i64 %155, 0
  br i1 %162, label %154, label %150, !llvm.loop !111

163:                                              ; preds = %138, %179
  %164 = phi i64 [ 0, %138 ], [ %180, %179 ]
  %165 = getelementptr inbounds %"class.dealii::Tensor.47", ptr %132, i64 %164
  %166 = trunc i64 %164 to i32
  %167 = add i32 %142, %166
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds %"class.dealii::Tensor.48", ptr %140, i64 %168
  br label %173

170:                                              ; preds = %179, %130
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #17
  %171 = add nuw nsw i64 %82, 1
  %172 = icmp eq i64 %82, 0
  br i1 %172, label %81, label %80, !llvm.loop !112

173:                                              ; preds = %163, %183
  %174 = phi i64 [ 0, %163 ], [ %184, %183 ]
  %175 = getelementptr inbounds [2 x %"class.dealii::Tensor.46"], ptr %165, i64 0, i64 %174
  %176 = add nuw nsw i64 %174, %82
  %177 = and i64 %176, 1
  %178 = getelementptr inbounds [2 x %"class.dealii::Tensor.46"], ptr %169, i64 0, i64 %177
  br label %186

179:                                              ; preds = %183
  %180 = add i64 %164, 1
  %181 = and i64 %180, 4294967295
  %182 = icmp ugt i64 %136, %181
  br i1 %182, label %163, label %170, !llvm.loop !113

183:                                              ; preds = %186
  %184 = add nuw nsw i64 %174, 1
  %185 = icmp eq i64 %174, 0
  br i1 %185, label %173, label %179, !llvm.loop !114

186:                                              ; preds = %173, %186
  %187 = phi i64 [ 0, %173 ], [ %193, %186 ]
  %188 = getelementptr inbounds [2 x double], ptr %175, i64 0, i64 %187
  %189 = load double, ptr %188, align 8, !tbaa !83
  %190 = add nuw nsw i64 %187, %82
  %191 = and i64 %190, 1
  %192 = getelementptr inbounds [2 x double], ptr %178, i64 0, i64 %191
  store double %189, ptr %192, align 8, !tbaa !83
  %193 = add nuw nsw i64 %187, 1
  %194 = icmp eq i64 %187, 0
  br i1 %194, label %186, label %183, !llvm.loop !115
}

declare noundef i32 @_ZNK6dealii22AnisotropicPolynomialsILi2EE1nEv(ptr noundef nonnull align 8 dereferenceable(28)) local_unnamed_addr #0

declare void @_ZNK6dealii22AnisotropicPolynomialsILi2EE7computeERKNS_5PointILi2EEERSt6vectorIdSaIdEERS6_INS_6TensorILi1ELi2EEESaISB_EERS6_INSA_ILi2ELi2EEESaISF_EE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #0

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii14PolynomialsABFILi2EE1nEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #9 comdat align 2 !prof !76 {
  %2 = getelementptr inbounds %"class.dealii::PolynomialsABF.27", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !98
  ret i32 %3
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii14PolynomialsABFILi2EE6degreeEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #9 comdat align 2 !prof !76 {
  %2 = load i32, ptr %0, align 8, !tbaa !88
  ret i32 %2
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii14PolynomialsABFILi3EEC2Ej(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %1) unnamed_addr #3 comdat($_ZN6dealii14PolynomialsABFILi3EEC5Ej) align 2 personality ptr @__gxx_personality_v0 !annotation !38 {
  %3 = alloca %"class.std::vector.10", align 8
  %4 = alloca %"class.std::vector.15", align 8
  %5 = alloca %"class.std::vector.15", align 8
  %6 = alloca %"class.std::vector.15", align 8
  store i32 %1, ptr %0, align 8, !tbaa !116
  %7 = getelementptr inbounds %"class.dealii::PolynomialsABF.49", ptr %0, i64 0, i32 2
  %8 = add i32 %1, 1
  %9 = mul i32 %8, 3
  %10 = mul i32 %9, %8
  %11 = add i32 %1, 2
  %12 = mul i32 %10, %11
  store i32 %12, ptr %7, align 8, !tbaa !126
  %13 = getelementptr inbounds %"class.dealii::PolynomialsABF.49", ptr %0, i64 0, i32 3
  %14 = getelementptr inbounds %"class.dealii::PolynomialsABF.49", ptr %0, i64 0, i32 4
  %15 = getelementptr inbounds %"class.dealii::PolynomialsABF.49", ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %13, i8 0, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  %16 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<dealii::Polynomials::Polynomial<double>>, std::allocator<std::vector<dealii::Polynomials::Polynomial<double>>>>::_Vector_impl_data", ptr %3, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %17 = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #18
          to label %18 unwind label %72

18:                                               ; preds = %2
  %19 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<dealii::Polynomials::Polynomial<double>>, std::allocator<std::vector<dealii::Polynomials::Polynomial<double>>>>::_Vector_impl_data", ptr %3, i64 0, i32 2
  store ptr %17, ptr %3, align 8, !tbaa !58
  store ptr %17, ptr %16, align 8, !tbaa !60
  %20 = getelementptr inbounds %"class.std::vector.15", ptr %17, i64 3
  store ptr %20, ptr %19, align 8, !tbaa !61
  br label %21

21:                                               ; preds = %18, %21
  %22 = phi ptr [ %17, %18 ], [ %25, %21 ]
  %23 = phi i64 [ 3, %18 ], [ %24, %21 ]
  %24 = add nsw i64 %23, -1
  %25 = getelementptr inbounds %"class.std::vector.15", ptr %22, i64 1
  %26 = icmp eq i64 %24, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %22, i8 0, i64 24, i1 false)
  br i1 %26, label %27, label %21, !llvm.loop !99

27:                                               ; preds = %21
  store ptr %25, ptr %16, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #17
  invoke void @_ZN6dealii11Polynomials19LagrangeEquidistant23generate_complete_basisEj(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.15") align 8 %4, i32 noundef %11)
          to label %28 unwind label %74

28:                                               ; preds = %27
  %29 = load ptr, ptr %3, align 8, !tbaa !58
  %30 = load ptr, ptr %29, align 8, !tbaa !62
  %31 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %29, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !64
  %33 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %29, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !65
  %35 = load ptr, ptr %4, align 8, !tbaa !62
  store ptr %35, ptr %29, align 8, !tbaa !62
  %36 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %4, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !64
  store ptr %37, ptr %31, align 8, !tbaa !64
  %38 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %4, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !65
  store ptr %39, ptr %33, align 8, !tbaa !65
  store ptr %30, ptr %4, align 8, !tbaa !62
  store ptr %32, ptr %36, align 8, !tbaa !64
  store ptr %34, ptr %38, align 8, !tbaa !65
  %40 = icmp eq ptr %30, %32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br i1 %40, label %47, label %41

41:                                               ; preds = %28, %41
  %42 = phi ptr [ %45, %41 ], [ %30, %28 ]
  %43 = load ptr, ptr %42, align 8, !tbaa !66
  %44 = load ptr, ptr %43, align 8
  call void %44(ptr noundef nonnull align 8 dereferenceable(96) %42) #17
  %45 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %42, i64 1
  %46 = icmp eq ptr %45, %32
  br i1 %46, label %47, label %41, !llvm.loop !68

47:                                               ; preds = %41, %28
  %48 = icmp eq ptr %30, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %47
  call void @_ZdlPv(ptr noundef %30) #19
  br label %50

50:                                               ; preds = %47, %49
  %51 = load ptr, ptr %4, align 8, !tbaa !62
  %52 = load ptr, ptr %36, align 8, !tbaa !64
  %53 = icmp eq ptr %51, %52
  br i1 %53, label %60, label %54

54:                                               ; preds = %50, %54
  %55 = phi ptr [ %58, %54 ], [ %51, %50 ]
  %56 = load ptr, ptr %55, align 8, !tbaa !66
  %57 = load ptr, ptr %56, align 8
  call void %57(ptr noundef nonnull align 8 dereferenceable(96) %55) #17
  %58 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %55, i64 1
  %59 = icmp eq ptr %58, %52
  br i1 %59, label %60, label %54, !llvm.loop !68

60:                                               ; preds = %54, %50
  %61 = load ptr, ptr %4, align 8, !tbaa !62
  %62 = icmp eq ptr %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %60
  call void @_ZdlPv(ptr noundef %61) #19
  br label %64

64:                                               ; preds = %60, %63
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #17
  %65 = icmp eq i32 %1, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %64
  %67 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %6, i64 0, i32 1
  %68 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %6, i64 0, i32 2
  br label %118

69:                                               ; preds = %64
  %70 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %5, i64 0, i32 1
  %71 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %5, i64 0, i32 2
  br label %76

72:                                               ; preds = %2
  %73 = landingpad { ptr, i32 }
          cleanup
  br label %224

74:                                               ; preds = %27
  %75 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #17
  br label %196

76:                                               ; preds = %69, %113
  %77 = phi i64 [ 1, %69 ], [ %114, %113 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #17
  invoke void @_ZN6dealii11Polynomials8Legendre23generate_complete_basisEj(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.15") align 8 %5, i32 noundef 0)
          to label %78 unwind label %116

78:                                               ; preds = %76
  %79 = load ptr, ptr %3, align 8, !tbaa !58
  %80 = getelementptr inbounds %"class.std::vector.15", ptr %79, i64 %77
  %81 = load ptr, ptr %80, align 8, !tbaa !62
  %82 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %80, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !64
  %84 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %80, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !65
  %86 = load ptr, ptr %5, align 8, !tbaa !62
  store ptr %86, ptr %80, align 8, !tbaa !62
  %87 = load ptr, ptr %70, align 8, !tbaa !64
  store ptr %87, ptr %82, align 8, !tbaa !64
  %88 = load ptr, ptr %71, align 8, !tbaa !65
  store ptr %88, ptr %84, align 8, !tbaa !65
  store ptr %81, ptr %5, align 8, !tbaa !62
  store ptr %83, ptr %70, align 8, !tbaa !64
  store ptr %85, ptr %71, align 8, !tbaa !65
  %89 = icmp eq ptr %81, %83
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  br i1 %89, label %96, label %90

90:                                               ; preds = %78, %90
  %91 = phi ptr [ %94, %90 ], [ %81, %78 ]
  %92 = load ptr, ptr %91, align 8, !tbaa !66
  %93 = load ptr, ptr %92, align 8
  call void %93(ptr noundef nonnull align 8 dereferenceable(96) %91) #17
  %94 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %91, i64 1
  %95 = icmp eq ptr %94, %83
  br i1 %95, label %96, label %90, !llvm.loop !68

96:                                               ; preds = %90, %78
  %97 = icmp eq ptr %81, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %96
  call void @_ZdlPv(ptr noundef %81) #19
  br label %99

99:                                               ; preds = %96, %98
  %100 = load ptr, ptr %5, align 8, !tbaa !62
  %101 = load ptr, ptr %70, align 8, !tbaa !64
  %102 = icmp eq ptr %100, %101
  br i1 %102, label %109, label %103

103:                                              ; preds = %99, %103
  %104 = phi ptr [ %107, %103 ], [ %100, %99 ]
  %105 = load ptr, ptr %104, align 8, !tbaa !66
  %106 = load ptr, ptr %105, align 8
  call void %106(ptr noundef nonnull align 8 dereferenceable(96) %104) #17
  %107 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %104, i64 1
  %108 = icmp eq ptr %107, %101
  br i1 %108, label %109, label %103, !llvm.loop !68

109:                                              ; preds = %103, %99
  %110 = load ptr, ptr %5, align 8, !tbaa !62
  %111 = icmp eq ptr %110, null
  br i1 %111, label %113, label %112

112:                                              ; preds = %109
  call void @_ZdlPv(ptr noundef %110) #19
  br label %113

113:                                              ; preds = %109, %112
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #17
  %114 = add nuw nsw i64 %77, 1
  %115 = icmp eq i64 %114, 3
  br i1 %115, label %160, label %76, !llvm.loop !127

116:                                              ; preds = %76
  %117 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #17
  br label %196

118:                                              ; preds = %66, %155
  %119 = phi i64 [ 1, %66 ], [ %156, %155 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #17
  invoke void @_ZN6dealii11Polynomials19LagrangeEquidistant23generate_complete_basisEj(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.15") align 8 %6, i32 noundef %1)
          to label %120 unwind label %158

120:                                              ; preds = %118
  %121 = load ptr, ptr %3, align 8, !tbaa !58
  %122 = getelementptr inbounds %"class.std::vector.15", ptr %121, i64 %119
  %123 = load ptr, ptr %122, align 8, !tbaa !62
  %124 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %122, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !64
  %126 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %122, i64 0, i32 2
  %127 = load ptr, ptr %126, align 8, !tbaa !65
  %128 = load ptr, ptr %6, align 8, !tbaa !62
  store ptr %128, ptr %122, align 8, !tbaa !62
  %129 = load ptr, ptr %67, align 8, !tbaa !64
  store ptr %129, ptr %124, align 8, !tbaa !64
  %130 = load ptr, ptr %68, align 8, !tbaa !65
  store ptr %130, ptr %126, align 8, !tbaa !65
  store ptr %123, ptr %6, align 8, !tbaa !62
  store ptr %125, ptr %67, align 8, !tbaa !64
  store ptr %127, ptr %68, align 8, !tbaa !65
  %131 = icmp eq ptr %123, %125
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  br i1 %131, label %138, label %132

132:                                              ; preds = %120, %132
  %133 = phi ptr [ %136, %132 ], [ %123, %120 ]
  %134 = load ptr, ptr %133, align 8, !tbaa !66
  %135 = load ptr, ptr %134, align 8
  call void %135(ptr noundef nonnull align 8 dereferenceable(96) %133) #17
  %136 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %133, i64 1
  %137 = icmp eq ptr %136, %125
  br i1 %137, label %138, label %132, !llvm.loop !68

138:                                              ; preds = %132, %120
  %139 = icmp eq ptr %123, null
  br i1 %139, label %141, label %140

140:                                              ; preds = %138
  call void @_ZdlPv(ptr noundef %123) #19
  br label %141

141:                                              ; preds = %138, %140
  %142 = load ptr, ptr %6, align 8, !tbaa !62
  %143 = load ptr, ptr %67, align 8, !tbaa !64
  %144 = icmp eq ptr %142, %143
  br i1 %144, label %151, label %145

145:                                              ; preds = %141, %145
  %146 = phi ptr [ %149, %145 ], [ %142, %141 ]
  %147 = load ptr, ptr %146, align 8, !tbaa !66
  %148 = load ptr, ptr %147, align 8
  call void %148(ptr noundef nonnull align 8 dereferenceable(96) %146) #17
  %149 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %146, i64 1
  %150 = icmp eq ptr %149, %143
  br i1 %150, label %151, label %145, !llvm.loop !68

151:                                              ; preds = %145, %141
  %152 = load ptr, ptr %6, align 8, !tbaa !62
  %153 = icmp eq ptr %152, null
  br i1 %153, label %155, label %154

154:                                              ; preds = %151
  call void @_ZdlPv(ptr noundef %152) #19
  br label %155

155:                                              ; preds = %151, %154
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #17
  %156 = add nuw nsw i64 %119, 1
  %157 = icmp eq i64 %156, 3
  br i1 %157, label %160, label %118, !llvm.loop !128

158:                                              ; preds = %118
  %159 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #17
  br label %196

160:                                              ; preds = %155, %113
  %161 = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #18
          to label %162 unwind label %192

162:                                              ; preds = %160
  invoke void @_ZN6dealii22AnisotropicPolynomialsILi3EEC1ERKSt6vectorIS2_INS_11Polynomials10PolynomialIdEESaIS5_EESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(28) %161, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %163 unwind label %194

163:                                              ; preds = %162
  %164 = getelementptr inbounds %"class.dealii::PolynomialsABF.49", ptr %0, i64 0, i32 1
  store ptr %161, ptr %164, align 8, !tbaa !129
  %165 = load ptr, ptr %3, align 8, !tbaa !58
  %166 = load ptr, ptr %16, align 8, !tbaa !60
  %167 = icmp eq ptr %165, %166
  br i1 %167, label %187, label %168

168:                                              ; preds = %163, %184
  %169 = phi ptr [ %185, %184 ], [ %165, %163 ]
  %170 = load ptr, ptr %169, align 8, !tbaa !62
  %171 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %169, i64 0, i32 1
  %172 = load ptr, ptr %171, align 8, !tbaa !64
  %173 = icmp eq ptr %170, %172
  br i1 %173, label %180, label %174

174:                                              ; preds = %168, %174
  %175 = phi ptr [ %178, %174 ], [ %170, %168 ]
  %176 = load ptr, ptr %175, align 8, !tbaa !66
  %177 = load ptr, ptr %176, align 8
  call void %177(ptr noundef nonnull align 8 dereferenceable(96) %175) #17
  %178 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %175, i64 1
  %179 = icmp eq ptr %178, %172
  br i1 %179, label %180, label %174, !llvm.loop !68

180:                                              ; preds = %174, %168
  %181 = load ptr, ptr %169, align 8, !tbaa !62
  %182 = icmp eq ptr %181, null
  br i1 %182, label %184, label %183

183:                                              ; preds = %180
  call void @_ZdlPv(ptr noundef %181) #19
  br label %184

184:                                              ; preds = %183, %180
  %185 = getelementptr inbounds %"class.std::vector.15", ptr %169, i64 1
  %186 = icmp eq ptr %185, %166
  br i1 %186, label %187, label %168, !llvm.loop !72

187:                                              ; preds = %184, %163
  %188 = load ptr, ptr %3, align 8, !tbaa !58
  %189 = icmp eq ptr %188, null
  br i1 %189, label %191, label %190

190:                                              ; preds = %187
  call void @_ZdlPv(ptr noundef %188) #19
  br label %191

191:                                              ; preds = %187, %190
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  ret void

192:                                              ; preds = %160
  %193 = landingpad { ptr, i32 }
          cleanup
  br label %196

194:                                              ; preds = %162
  %195 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef %161) #19
  br label %196

196:                                              ; preds = %194, %192, %158, %116, %74
  %197 = phi { ptr, i32 } [ %117, %116 ], [ %195, %194 ], [ %193, %192 ], [ %159, %158 ], [ %75, %74 ]
  %198 = load ptr, ptr %3, align 8, !tbaa !58
  %199 = load ptr, ptr %16, align 8, !tbaa !60
  %200 = icmp eq ptr %198, %199
  br i1 %200, label %220, label %201

201:                                              ; preds = %196, %217
  %202 = phi ptr [ %218, %217 ], [ %198, %196 ]
  %203 = load ptr, ptr %202, align 8, !tbaa !62
  %204 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %202, i64 0, i32 1
  %205 = load ptr, ptr %204, align 8, !tbaa !64
  %206 = icmp eq ptr %203, %205
  br i1 %206, label %213, label %207

207:                                              ; preds = %201, %207
  %208 = phi ptr [ %211, %207 ], [ %203, %201 ]
  %209 = load ptr, ptr %208, align 8, !tbaa !66
  %210 = load ptr, ptr %209, align 8
  call void %210(ptr noundef nonnull align 8 dereferenceable(96) %208) #17
  %211 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %208, i64 1
  %212 = icmp eq ptr %211, %205
  br i1 %212, label %213, label %207, !llvm.loop !68

213:                                              ; preds = %207, %201
  %214 = load ptr, ptr %202, align 8, !tbaa !62
  %215 = icmp eq ptr %214, null
  br i1 %215, label %217, label %216

216:                                              ; preds = %213
  call void @_ZdlPv(ptr noundef %214) #19
  br label %217

217:                                              ; preds = %216, %213
  %218 = getelementptr inbounds %"class.std::vector.15", ptr %202, i64 1
  %219 = icmp eq ptr %218, %199
  br i1 %219, label %220, label %201, !llvm.loop !72

220:                                              ; preds = %217, %196
  %221 = load ptr, ptr %3, align 8, !tbaa !58
  %222 = icmp eq ptr %221, null
  br i1 %222, label %224, label %223

223:                                              ; preds = %220
  call void @_ZdlPv(ptr noundef %221) #19
  br label %224

224:                                              ; preds = %223, %220, %72
  %225 = phi { ptr, i32 } [ %73, %72 ], [ %197, %220 ], [ %197, %223 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  %226 = load ptr, ptr %15, align 8, !tbaa !130
  %227 = icmp eq ptr %226, null
  br i1 %227, label %229, label %228

228:                                              ; preds = %224
  call void @_ZdlPv(ptr noundef %226) #19
  br label %229

229:                                              ; preds = %224, %228
  %230 = load ptr, ptr %14, align 8, !tbaa !131
  %231 = icmp eq ptr %230, null
  br i1 %231, label %233, label %232

232:                                              ; preds = %229
  call void @_ZdlPv(ptr noundef %230) #19
  br label %233

233:                                              ; preds = %229, %232
  %234 = load ptr, ptr %13, align 8, !tbaa !75
  %235 = icmp eq ptr %234, null
  br i1 %235, label %237, label %236

236:                                              ; preds = %233
  call void @_ZdlPv(ptr noundef %234) #19
  br label %237

237:                                              ; preds = %233, %236
  resume { ptr, i32 } %225
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef i32 @_ZN6dealii14PolynomialsABFILi3EE14compute_n_polsEj(i32 noundef %0) local_unnamed_addr #4 comdat align 2 !prof !76 {
  %2 = add i32 %0, 1
  %3 = mul i32 %2, 3
  %4 = mul i32 %3, %2
  %5 = add i32 %0, 2
  %6 = mul i32 %4, %5
  ret i32 %6
}

declare void @_ZN6dealii22AnisotropicPolynomialsILi3EEC1ERKSt6vectorIS2_INS_11Polynomials10PolynomialIdEESaIS5_EESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii14PolynomialsABFILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #8 comdat($_ZN6dealii14PolynomialsABFILi3EED5Ev) align 2 personality ptr @__gxx_personality_v0 !annotation !38 {
  %2 = getelementptr inbounds %"class.dealii::PolynomialsABF.49", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !129
  %4 = icmp eq ptr %3, null
  br i1 %4, label %34, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !58
  %7 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<dealii::Polynomials::Polynomial<double>>, std::allocator<std::vector<dealii::Polynomials::Polynomial<double>>>>::_Vector_impl_data", ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !60
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %29, label %10

10:                                               ; preds = %5, %26
  %11 = phi ptr [ %27, %26 ], [ %6, %5 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !62
  %13 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %11, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !64
  %15 = icmp eq ptr %12, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %10, %16
  %17 = phi ptr [ %20, %16 ], [ %12, %10 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !66
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(96) %17) #17
  %20 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %17, i64 1
  %21 = icmp eq ptr %20, %14
  br i1 %21, label %22, label %16, !llvm.loop !68

22:                                               ; preds = %16, %10
  %23 = load ptr, ptr %11, align 8, !tbaa !62
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  tail call void @_ZdlPv(ptr noundef %23) #19
  br label %26

26:                                               ; preds = %25, %22
  %27 = getelementptr inbounds %"class.std::vector.15", ptr %11, i64 1
  %28 = icmp eq ptr %27, %8
  br i1 %28, label %29, label %10, !llvm.loop !72

29:                                               ; preds = %26, %5
  %30 = load ptr, ptr %3, align 8, !tbaa !58
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  tail call void @_ZdlPv(ptr noundef %30) #19
  br label %33

33:                                               ; preds = %29, %32
  tail call void @_ZdlPv(ptr noundef %3) #19
  br label %34

34:                                               ; preds = %33, %1
  %35 = getelementptr inbounds %"class.dealii::PolynomialsABF.49", ptr %0, i64 0, i32 5
  %36 = load ptr, ptr %35, align 8, !tbaa !130
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  tail call void @_ZdlPv(ptr noundef %36) #19
  br label %39

39:                                               ; preds = %34, %38
  %40 = getelementptr inbounds %"class.dealii::PolynomialsABF.49", ptr %0, i64 0, i32 4
  %41 = load ptr, ptr %40, align 8, !tbaa !131
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  tail call void @_ZdlPv(ptr noundef %41) #19
  br label %44

44:                                               ; preds = %39, %43
  %45 = getelementptr inbounds %"class.dealii::PolynomialsABF.49", ptr %0, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !75
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  tail call void @_ZdlPv(ptr noundef %46) #19
  br label %49

49:                                               ; preds = %44, %48
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii14PolynomialsABFILi3EE7computeERKNS_5PointILi3EEERSt6vectorINS_6TensorILi1ELi3EEESaIS8_EERS6_INS7_ILi2ELi3EEESaISC_EERS6_INS7_ILi3ELi3EEESaISG_EE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !38 {
  %6 = alloca %"class.dealii::Point.67", align 8
  %7 = getelementptr inbounds %"class.dealii::PolynomialsABF.49", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !129
  %9 = tail call noundef i32 @_ZNK6dealii22AnisotropicPolynomialsILi3EE1nEv(ptr noundef nonnull align 8 dereferenceable(28) %8)
  %10 = getelementptr inbounds %"class.dealii::PolynomialsABF.49", ptr %0, i64 0, i32 3
  %11 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl_data", ptr %2, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !132
  %13 = load ptr, ptr %2, align 8, !tbaa !131
  %14 = icmp eq ptr %12, %13
  %15 = zext i32 %9 to i64
  %16 = select i1 %14, i64 0, i64 %15
  %17 = getelementptr inbounds %"class.dealii::PolynomialsABF.49", ptr %0, i64 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !78
  %19 = load ptr, ptr %10, align 8, !tbaa !75
  %20 = ptrtoint ptr %18 to i64
  %21 = ptrtoint ptr %19 to i64
  %22 = sub i64 %20, %21
  %23 = ashr exact i64 %22, 3
  %24 = icmp ult i64 %23, %16
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = sub nsw i64 %16, %23
  tail call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef %26)
  br label %33

27:                                               ; preds = %5
  %28 = icmp ugt i64 %23, %16
  br i1 %28, label %29, label %33

29:                                               ; preds = %27
  %30 = getelementptr inbounds double, ptr %19, i64 %16
  %31 = icmp eq ptr %18, %30
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  store ptr %30, ptr %17, align 8, !tbaa !78
  br label %33

33:                                               ; preds = %25, %27, %29, %32
  %34 = getelementptr inbounds %"class.dealii::PolynomialsABF.49", ptr %0, i64 0, i32 4
  %35 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<2, 3>, std::allocator<dealii::Tensor<2, 3>>>::_Vector_impl_data", ptr %3, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !133
  %37 = load ptr, ptr %3, align 8, !tbaa !130
  %38 = icmp eq ptr %36, %37
  %39 = select i1 %38, i64 0, i64 %15
  %40 = getelementptr inbounds %"class.dealii::PolynomialsABF.49", ptr %0, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !132
  %42 = load ptr, ptr %34, align 8, !tbaa !131
  %43 = ptrtoint ptr %41 to i64
  %44 = ptrtoint ptr %42 to i64
  %45 = sub i64 %43, %44
  %46 = sdiv exact i64 %45, 24
  %47 = icmp ult i64 %46, %39
  br i1 %47, label %48, label %50

48:                                               ; preds = %33
  %49 = sub nsw i64 %39, %46
  tail call void @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %34, i64 noundef %49)
  br label %56

50:                                               ; preds = %33
  %51 = icmp ugt i64 %46, %39
  br i1 %51, label %52, label %56

52:                                               ; preds = %50
  %53 = getelementptr inbounds %"class.dealii::Tensor.68", ptr %42, i64 %39
  %54 = icmp eq ptr %41, %53
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  store ptr %53, ptr %40, align 8, !tbaa !132
  br label %56

56:                                               ; preds = %48, %50, %52, %55
  %57 = getelementptr inbounds %"class.dealii::PolynomialsABF.49", ptr %0, i64 0, i32 5
  %58 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<3, 3>, std::allocator<dealii::Tensor<3, 3>>>::_Vector_impl_data", ptr %4, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !134
  %60 = load ptr, ptr %4, align 8, !tbaa !136
  %61 = icmp eq ptr %59, %60
  %62 = select i1 %61, i64 0, i64 %15
  %63 = getelementptr inbounds %"class.dealii::PolynomialsABF.49", ptr %0, i64 0, i32 5, i32 0, i32 0, i32 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !133
  %65 = load ptr, ptr %57, align 8, !tbaa !130
  %66 = ptrtoint ptr %64 to i64
  %67 = ptrtoint ptr %65 to i64
  %68 = sub i64 %66, %67
  %69 = sdiv exact i64 %68, 72
  %70 = icmp ult i64 %69, %62
  br i1 %70, label %71, label %73

71:                                               ; preds = %56
  %72 = sub nsw i64 %62, %69
  tail call void @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %57, i64 noundef %72)
  br label %79

73:                                               ; preds = %56
  %74 = icmp ugt i64 %69, %62
  br i1 %74, label %75, label %79

75:                                               ; preds = %73
  %76 = getelementptr inbounds %"class.dealii::Tensor.69", ptr %65, i64 %62
  %77 = icmp eq ptr %64, %76
  br i1 %77, label %79, label %78

78:                                               ; preds = %75
  store ptr %76, ptr %63, align 8, !tbaa !133
  br label %79

79:                                               ; preds = %71, %73, %75, %78
  br label %81

80:                                               ; preds = %174
  ret void

81:                                               ; preds = %79, %174
  %82 = phi i64 [ %175, %174 ], [ 0, %79 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false), !tbaa !83
  br label %97

83:                                               ; preds = %97
  %84 = load ptr, ptr %7, align 8, !tbaa !129
  call void @_ZNK6dealii22AnisotropicPolynomialsILi3EE7computeERKNS_5PointILi3EEERSt6vectorIdSaIdEERS6_INS_6TensorILi1ELi3EEESaISB_EERS6_INSA_ILi2ELi3EEESaISF_EE(ptr noundef nonnull align 8 dereferenceable(28) %84, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %34, ptr noundef nonnull align 8 dereferenceable(24) %57)
  %85 = load ptr, ptr %17, align 8, !tbaa !78
  %86 = load ptr, ptr %10, align 8, !tbaa !75
  %87 = ptrtoint ptr %85 to i64
  %88 = ptrtoint ptr %86 to i64
  %89 = sub i64 %87, %88
  %90 = ashr exact i64 %89, 3
  %91 = icmp eq ptr %85, %86
  br i1 %91, label %108, label %92

92:                                               ; preds = %83
  %93 = trunc i64 %82 to i32
  %94 = mul i32 %9, %93
  %95 = load ptr, ptr %2, align 8, !tbaa !131
  %96 = getelementptr inbounds [3 x double], ptr %95, i64 0, i64 %82
  br label %121

97:                                               ; preds = %81, %97
  %98 = phi i64 [ 0, %81 ], [ %106, %97 ]
  %99 = add nuw nsw i64 %98, %82
  %100 = trunc i64 %99 to i32
  %101 = urem i32 %100, 3
  %102 = zext nneg i32 %101 to i64
  %103 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %102
  %104 = load double, ptr %103, align 8, !tbaa !83
  %105 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 %98
  store double %104, ptr %105, align 8, !tbaa !83
  %106 = add nuw nsw i64 %98, 1
  %107 = icmp eq i64 %106, 3
  br i1 %107, label %83, label %97, !llvm.loop !137

108:                                              ; preds = %121, %83
  %109 = load ptr, ptr %40, align 8, !tbaa !132
  %110 = load ptr, ptr %34, align 8, !tbaa !131
  %111 = ptrtoint ptr %109 to i64
  %112 = ptrtoint ptr %110 to i64
  %113 = sub i64 %111, %112
  %114 = sdiv exact i64 %113, 24
  %115 = icmp eq ptr %109, %110
  br i1 %115, label %132, label %116

116:                                              ; preds = %108
  %117 = trunc i64 %82 to i32
  %118 = mul i32 %9, %117
  %119 = load ptr, ptr %3, align 8, !tbaa !130
  %120 = getelementptr inbounds [3 x %"class.dealii::Tensor.68"], ptr %119, i64 0, i64 %82
  br label %145

121:                                              ; preds = %92, %121
  %122 = phi i64 [ 0, %92 ], [ %130, %121 ]
  %123 = phi i32 [ 0, %92 ], [ %129, %121 ]
  %124 = getelementptr inbounds double, ptr %86, i64 %122
  %125 = load double, ptr %124, align 8, !tbaa !83
  %126 = add i32 %123, %94
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds %"class.dealii::Tensor.68", ptr %96, i64 %127
  store double %125, ptr %128, align 8, !tbaa !83
  %129 = add i32 %123, 1
  %130 = zext i32 %129 to i64
  %131 = icmp ugt i64 %90, %130
  br i1 %131, label %121, label %108, !llvm.loop !138

132:                                              ; preds = %152, %108
  %133 = load ptr, ptr %63, align 8, !tbaa !133
  %134 = load ptr, ptr %57, align 8, !tbaa !130
  %135 = ptrtoint ptr %133 to i64
  %136 = ptrtoint ptr %134 to i64
  %137 = sub i64 %135, %136
  %138 = sdiv exact i64 %137, 72
  %139 = icmp eq ptr %133, %134
  br i1 %139, label %174, label %140

140:                                              ; preds = %132
  %141 = trunc i64 %82 to i32
  %142 = mul i32 %9, %141
  %143 = load ptr, ptr %4, align 8, !tbaa !136
  %144 = getelementptr inbounds [3 x %"class.dealii::Tensor.69"], ptr %143, i64 0, i64 %82
  br label %167

145:                                              ; preds = %116, %152
  %146 = phi i64 [ 0, %116 ], [ %153, %152 ]
  %147 = getelementptr inbounds %"class.dealii::Tensor.68", ptr %110, i64 %146
  %148 = trunc i64 %146 to i32
  %149 = add i32 %118, %148
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds %"class.dealii::Tensor.69", ptr %120, i64 %150
  br label %156

152:                                              ; preds = %156
  %153 = add i64 %146, 1
  %154 = and i64 %153, 4294967295
  %155 = icmp ugt i64 %114, %154
  br i1 %155, label %145, label %132, !llvm.loop !139

156:                                              ; preds = %145, %156
  %157 = phi i64 [ 0, %145 ], [ %165, %156 ]
  %158 = getelementptr inbounds [3 x double], ptr %147, i64 0, i64 %157
  %159 = load double, ptr %158, align 8, !tbaa !83
  %160 = add nuw nsw i64 %157, %82
  %161 = trunc i64 %160 to i32
  %162 = urem i32 %161, 3
  %163 = zext nneg i32 %162 to i64
  %164 = getelementptr inbounds [3 x double], ptr %151, i64 0, i64 %163
  store double %159, ptr %164, align 8, !tbaa !83
  %165 = add nuw nsw i64 %157, 1
  %166 = icmp eq i64 %165, 3
  br i1 %166, label %152, label %156, !llvm.loop !140

167:                                              ; preds = %140, %185
  %168 = phi i64 [ 0, %140 ], [ %186, %185 ]
  %169 = getelementptr inbounds %"class.dealii::Tensor.69", ptr %134, i64 %168
  %170 = trunc i64 %168 to i32
  %171 = add i32 %142, %170
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds %"class.dealii::Tensor.70", ptr %144, i64 %172
  br label %177

174:                                              ; preds = %185, %132
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #17
  %175 = add nuw nsw i64 %82, 1
  %176 = icmp eq i64 %175, 3
  br i1 %176, label %80, label %81, !llvm.loop !141

177:                                              ; preds = %167, %189
  %178 = phi i64 [ 0, %167 ], [ %190, %189 ]
  %179 = getelementptr inbounds [3 x %"class.dealii::Tensor.68"], ptr %169, i64 0, i64 %178
  %180 = add nuw nsw i64 %178, %82
  %181 = trunc i64 %180 to i32
  %182 = urem i32 %181, 3
  %183 = zext nneg i32 %182 to i64
  %184 = getelementptr inbounds [3 x %"class.dealii::Tensor.68"], ptr %173, i64 0, i64 %183
  br label %192

185:                                              ; preds = %189
  %186 = add i64 %168, 1
  %187 = and i64 %186, 4294967295
  %188 = icmp ugt i64 %138, %187
  br i1 %188, label %167, label %174, !llvm.loop !142

189:                                              ; preds = %192
  %190 = add nuw nsw i64 %178, 1
  %191 = icmp eq i64 %190, 3
  br i1 %191, label %185, label %177, !llvm.loop !143

192:                                              ; preds = %177, %192
  %193 = phi i64 [ 0, %177 ], [ %201, %192 ]
  %194 = getelementptr inbounds [3 x double], ptr %179, i64 0, i64 %193
  %195 = load double, ptr %194, align 8, !tbaa !83
  %196 = add nuw nsw i64 %193, %82
  %197 = trunc i64 %196 to i32
  %198 = urem i32 %197, 3
  %199 = zext nneg i32 %198 to i64
  %200 = getelementptr inbounds [3 x double], ptr %184, i64 0, i64 %199
  store double %195, ptr %200, align 8, !tbaa !83
  %201 = add nuw nsw i64 %193, 1
  %202 = icmp eq i64 %201, 3
  br i1 %202, label %189, label %192, !llvm.loop !144
}

declare noundef i32 @_ZNK6dealii22AnisotropicPolynomialsILi3EE1nEv(ptr noundef nonnull align 8 dereferenceable(28)) local_unnamed_addr #0

declare void @_ZNK6dealii22AnisotropicPolynomialsILi3EE7computeERKNS_5PointILi3EEERSt6vectorIdSaIdEERS6_INS_6TensorILi1ELi3EEESaISB_EERS6_INSA_ILi2ELi3EEESaISF_EE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #0

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii14PolynomialsABFILi3EE1nEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #9 comdat align 2 !prof !76 {
  %2 = getelementptr inbounds %"class.dealii::PolynomialsABF.49", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !126
  ret i32 %3
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii14PolynomialsABFILi3EE6degreeEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #9 comdat align 2 !prof !76 {
  %2 = load i32, ptr %0, align 8, !tbaa !116
  ret i32 %2
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %60, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !78
  %7 = load ptr, ptr %0, align 8, !tbaa !75
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !145
  %14 = ptrtoint ptr %13 to i64
  %15 = sub i64 %14, %8
  %16 = ashr exact i64 %15, 3
  %17 = icmp ult i64 %11, 1152921504606846976
  tail call void @llvm.assume(i1 %17)
  %18 = xor i64 %11, 1152921504606846975
  %19 = icmp ule i64 %16, %18
  tail call void @llvm.assume(i1 %19)
  %20 = icmp ult i64 %16, %1
  br i1 %20, label %30, label %21

21:                                               ; preds = %4
  store double 0.000000e+00, ptr %6, align 8, !tbaa !83
  %22 = getelementptr double, ptr %6, i64 1
  %23 = icmp eq i64 %1, 1
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds double, ptr %6, i64 %1
  %26 = shl i64 %1, 3
  %27 = add i64 %26, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %22, i8 0, i64 %27, i1 false), !tbaa !83
  br label %28

28:                                               ; preds = %24, %21
  %29 = phi ptr [ %22, %21 ], [ %25, %24 ]
  store ptr %29, ptr %5, align 8, !tbaa !78
  br label %60

30:                                               ; preds = %4
  %31 = icmp ult i64 %18, %1
  br i1 %31, label %32, label %33

32:                                               ; preds = %30
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #20
  unreachable

33:                                               ; preds = %30
  %34 = tail call i64 @llvm.umax.i64(i64 %11, i64 %1)
  %35 = add i64 %34, %11
  %36 = icmp ult i64 %35, %11
  %37 = tail call i64 @llvm.umin.i64(i64 %35, i64 1152921504606846975)
  %38 = select i1 %36, i64 1152921504606846975, i64 %37
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %33
  %41 = shl nuw nsw i64 %38, 3
  %42 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %41) #18
  br label %43

43:                                               ; preds = %33, %40
  %44 = phi ptr [ %42, %40 ], [ null, %33 ]
  %45 = getelementptr inbounds double, ptr %44, i64 %11
  store double 0.000000e+00, ptr %45, align 8, !tbaa !83
  %46 = icmp eq i64 %1, 1
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = getelementptr double, ptr %45, i64 1
  %49 = shl i64 %1, 3
  %50 = add i64 %49, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %48, i8 0, i64 %50, i1 false), !tbaa !83
  br label %51

51:                                               ; preds = %47, %43
  %52 = icmp sgt i64 %10, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %51
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %44, ptr align 8 %7, i64 %10, i1 false)
  br label %54

54:                                               ; preds = %51, %53
  %55 = icmp eq ptr %7, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %54
  tail call void @_ZdlPv(ptr noundef %7) #19
  br label %57

57:                                               ; preds = %54, %56
  store ptr %44, ptr %0, align 8, !tbaa !75
  %58 = getelementptr inbounds double, ptr %45, i64 %1
  store ptr %58, ptr %5, align 8, !tbaa !78
  %59 = getelementptr inbounds double, ptr %44, i64 %38
  store ptr %59, ptr %12, align 8, !tbaa !145
  br label %60

60:                                               ; preds = %28, %57, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #12

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %55, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 1>, std::allocator<dealii::Tensor<1, 1>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !77
  %7 = load ptr, ptr %0, align 8, !tbaa !74
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 1>, std::allocator<dealii::Tensor<1, 1>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !146
  %14 = ptrtoint ptr %13 to i64
  %15 = sub i64 %14, %8
  %16 = ashr exact i64 %15, 3
  %17 = icmp ult i64 %11, 1152921504606846976
  tail call void @llvm.assume(i1 %17)
  %18 = xor i64 %11, 1152921504606846975
  %19 = icmp ule i64 %16, %18
  tail call void @llvm.assume(i1 %19)
  %20 = icmp ult i64 %16, %1
  br i1 %20, label %25, label %21

21:                                               ; preds = %4
  %22 = shl nuw i64 %1, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %6, i8 0, i64 %22, i1 false), !tbaa !83
  %23 = shl nuw i64 %1, 3
  %24 = getelementptr i8, ptr %6, i64 %23
  store ptr %24, ptr %5, align 8, !tbaa !77
  br label %55

25:                                               ; preds = %4
  %26 = icmp ult i64 %18, %1
  br i1 %26, label %27, label %28

27:                                               ; preds = %25
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #20
  unreachable

28:                                               ; preds = %25
  %29 = tail call i64 @llvm.umax.i64(i64 %11, i64 %1)
  %30 = add i64 %29, %11
  %31 = icmp ult i64 %30, %11
  %32 = tail call i64 @llvm.umin.i64(i64 %30, i64 1152921504606846975)
  %33 = select i1 %31, i64 1152921504606846975, i64 %32
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %28
  %36 = tail call noundef ptr @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi1EEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %33, ptr noundef null)
  br label %37

37:                                               ; preds = %28, %35
  %38 = phi ptr [ %36, %35 ], [ null, %28 ]
  %39 = getelementptr %"class.dealii::Tensor", ptr %38, i64 %11
  %40 = shl nuw i64 %1, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %39, i8 0, i64 %40, i1 false), !tbaa !83
  %41 = icmp eq ptr %7, %6
  br i1 %41, label %49, label %42

42:                                               ; preds = %37, %42
  %43 = phi ptr [ %47, %42 ], [ %38, %37 ]
  %44 = phi ptr [ %46, %42 ], [ %7, %37 ]
  %45 = load double, ptr %44, align 8, !tbaa !83
  store double %45, ptr %43, align 8, !tbaa !83
  %46 = getelementptr inbounds %"class.dealii::Tensor", ptr %44, i64 1
  %47 = getelementptr inbounds %"class.dealii::Tensor", ptr %43, i64 1
  %48 = icmp eq ptr %46, %6
  br i1 %48, label %49, label %42, !llvm.loop !147

49:                                               ; preds = %42, %37
  %50 = icmp eq ptr %7, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %49
  tail call void @_ZdlPv(ptr noundef %7) #19
  br label %52

52:                                               ; preds = %49, %51
  store ptr %38, ptr %0, align 8, !tbaa !74
  %53 = getelementptr inbounds %"class.dealii::Tensor", ptr %39, i64 %1
  store ptr %53, ptr %5, align 8, !tbaa !77
  %54 = getelementptr inbounds %"class.dealii::Tensor", ptr %38, i64 %33
  store ptr %54, ptr %12, align 8, !tbaa !146
  br label %55

55:                                               ; preds = %21, %52, %2
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi1EEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #13 comdat align 2 !prof !76 {
  %4 = icmp ugt i64 %1, 1152921504606846975
  br i1 %4, label %5, label %9, !prof !148

5:                                                ; preds = %3
  %6 = icmp ugt i64 %1, 2305843009213693951
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

8:                                                ; preds = %5
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

9:                                                ; preds = %3
  %10 = shl nuw nsw i64 %1, 3
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #18
  ret ptr %11
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %55, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<2, 1>, std::allocator<dealii::Tensor<2, 1>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !79
  %7 = load ptr, ptr %0, align 8, !tbaa !73
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<2, 1>, std::allocator<dealii::Tensor<2, 1>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !149
  %14 = ptrtoint ptr %13 to i64
  %15 = sub i64 %14, %8
  %16 = ashr exact i64 %15, 3
  %17 = icmp ult i64 %11, 1152921504606846976
  tail call void @llvm.assume(i1 %17)
  %18 = xor i64 %11, 1152921504606846975
  %19 = icmp ule i64 %16, %18
  tail call void @llvm.assume(i1 %19)
  %20 = icmp ult i64 %16, %1
  br i1 %20, label %25, label %21

21:                                               ; preds = %4
  %22 = shl nuw i64 %1, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %6, i8 0, i64 %22, i1 false), !tbaa !83
  %23 = shl nuw i64 %1, 3
  %24 = getelementptr i8, ptr %6, i64 %23
  store ptr %24, ptr %5, align 8, !tbaa !79
  br label %55

25:                                               ; preds = %4
  %26 = icmp ult i64 %18, %1
  br i1 %26, label %27, label %28

27:                                               ; preds = %25
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #20
  unreachable

28:                                               ; preds = %25
  %29 = tail call i64 @llvm.umax.i64(i64 %11, i64 %1)
  %30 = add i64 %29, %11
  %31 = icmp ult i64 %30, %11
  %32 = tail call i64 @llvm.umin.i64(i64 %30, i64 1152921504606846975)
  %33 = select i1 %31, i64 1152921504606846975, i64 %32
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %28
  %36 = tail call noundef ptr @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi1EEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %33, ptr noundef null)
  br label %37

37:                                               ; preds = %28, %35
  %38 = phi ptr [ %36, %35 ], [ null, %28 ]
  %39 = getelementptr %"class.dealii::Tensor.25", ptr %38, i64 %11
  %40 = shl nuw i64 %1, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %39, i8 0, i64 %40, i1 false), !tbaa !83
  %41 = icmp eq ptr %7, %6
  br i1 %41, label %49, label %42

42:                                               ; preds = %37, %42
  %43 = phi ptr [ %47, %42 ], [ %38, %37 ]
  %44 = phi ptr [ %46, %42 ], [ %7, %37 ]
  %45 = load double, ptr %44, align 8, !tbaa !83
  store double %45, ptr %43, align 8, !tbaa !83
  %46 = getelementptr inbounds %"class.dealii::Tensor.25", ptr %44, i64 1
  %47 = getelementptr inbounds %"class.dealii::Tensor.25", ptr %43, i64 1
  %48 = icmp eq ptr %46, %6
  br i1 %48, label %49, label %42, !llvm.loop !150

49:                                               ; preds = %42, %37
  %50 = icmp eq ptr %7, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %49
  tail call void @_ZdlPv(ptr noundef %7) #19
  br label %52

52:                                               ; preds = %49, %51
  store ptr %38, ptr %0, align 8, !tbaa !73
  %53 = getelementptr inbounds %"class.dealii::Tensor.25", ptr %39, i64 %1
  store ptr %53, ptr %5, align 8, !tbaa !79
  %54 = getelementptr inbounds %"class.dealii::Tensor.25", ptr %38, i64 %33
  store ptr %54, ptr %12, align 8, !tbaa !149
  br label %55

55:                                               ; preds = %21, %52, %2
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi1EEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #13 comdat align 2 !prof !76 {
  %4 = icmp ugt i64 %1, 1152921504606846975
  br i1 %4, label %5, label %9, !prof !148

5:                                                ; preds = %3
  %6 = icmp ugt i64 %1, 2305843009213693951
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

8:                                                ; preds = %5
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

9:                                                ; preds = %3
  %10 = shl nuw nsw i64 %1, 3
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #18
  ret ptr %11
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %62, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !103
  %7 = load ptr, ptr %0, align 8, !tbaa !102
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 4
  %12 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !151
  %14 = ptrtoint ptr %13 to i64
  %15 = sub i64 %14, %8
  %16 = ashr exact i64 %15, 4
  %17 = icmp ult i64 %11, 576460752303423488
  tail call void @llvm.assume(i1 %17)
  %18 = xor i64 %11, 576460752303423487
  %19 = icmp ule i64 %16, %18
  tail call void @llvm.assume(i1 %19)
  %20 = icmp ult i64 %16, %1
  br i1 %20, label %25, label %21

21:                                               ; preds = %4
  %22 = shl nuw i64 %1, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %6, i8 0, i64 %22, i1 false), !tbaa !83
  %23 = shl nuw i64 %1, 4
  %24 = getelementptr i8, ptr %6, i64 %23
  store ptr %24, ptr %5, align 8, !tbaa !103
  br label %62

25:                                               ; preds = %4
  %26 = icmp ult i64 %18, %1
  br i1 %26, label %27, label %28

27:                                               ; preds = %25
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #20
  unreachable

28:                                               ; preds = %25
  %29 = tail call i64 @llvm.umax.i64(i64 %11, i64 %1)
  %30 = add i64 %29, %11
  %31 = icmp ult i64 %30, %11
  %32 = tail call i64 @llvm.umin.i64(i64 %30, i64 576460752303423487)
  %33 = select i1 %31, i64 576460752303423487, i64 %32
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %28
  %36 = tail call noundef ptr @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %33, ptr noundef null)
  br label %37

37:                                               ; preds = %28, %35
  %38 = phi ptr [ %36, %35 ], [ null, %28 ]
  %39 = getelementptr %"class.dealii::Tensor.46", ptr %38, i64 %11
  %40 = shl nuw i64 %1, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %39, i8 0, i64 %40, i1 false), !tbaa !83
  %41 = icmp eq ptr %7, %6
  br i1 %41, label %56, label %42

42:                                               ; preds = %37, %52
  %43 = phi ptr [ %54, %52 ], [ %38, %37 ]
  %44 = phi ptr [ %53, %52 ], [ %7, %37 ]
  br label %45

45:                                               ; preds = %42, %45
  %46 = phi i64 [ 0, %42 ], [ %50, %45 ]
  %47 = getelementptr inbounds [2 x double], ptr %44, i64 0, i64 %46
  %48 = load double, ptr %47, align 8, !tbaa !83
  %49 = getelementptr inbounds [2 x double], ptr %43, i64 0, i64 %46
  store double %48, ptr %49, align 8, !tbaa !83
  %50 = add nuw nsw i64 %46, 1
  %51 = icmp eq i64 %46, 0
  br i1 %51, label %45, label %52, !llvm.loop !152

52:                                               ; preds = %45
  %53 = getelementptr inbounds %"class.dealii::Tensor.46", ptr %44, i64 1
  %54 = getelementptr inbounds %"class.dealii::Tensor.46", ptr %43, i64 1
  %55 = icmp eq ptr %53, %6
  br i1 %55, label %56, label %42, !llvm.loop !153

56:                                               ; preds = %52, %37
  %57 = icmp eq ptr %7, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %56
  tail call void @_ZdlPv(ptr noundef %7) #19
  br label %59

59:                                               ; preds = %56, %58
  store ptr %38, ptr %0, align 8, !tbaa !102
  %60 = getelementptr inbounds %"class.dealii::Tensor.46", ptr %39, i64 %1
  store ptr %60, ptr %5, align 8, !tbaa !103
  %61 = getelementptr inbounds %"class.dealii::Tensor.46", ptr %38, i64 %33
  store ptr %61, ptr %12, align 8, !tbaa !151
  br label %62

62:                                               ; preds = %21, %59, %2
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #13 comdat align 2 !prof !76 {
  %4 = icmp ugt i64 %1, 576460752303423487
  br i1 %4, label %5, label %9, !prof !148

5:                                                ; preds = %3
  %6 = icmp ugt i64 %1, 1152921504606846975
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

8:                                                ; preds = %5
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

9:                                                ; preds = %3
  %10 = shl nuw nsw i64 %1, 4
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #18
  ret ptr %11
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %69, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<2, 2>, std::allocator<dealii::Tensor<2, 2>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !104
  %7 = load ptr, ptr %0, align 8, !tbaa !101
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 5
  %12 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<2, 2>, std::allocator<dealii::Tensor<2, 2>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !154
  %14 = ptrtoint ptr %13 to i64
  %15 = sub i64 %14, %8
  %16 = ashr exact i64 %15, 5
  %17 = icmp ult i64 %11, 288230376151711744
  tail call void @llvm.assume(i1 %17)
  %18 = xor i64 %11, 288230376151711743
  %19 = icmp ule i64 %16, %18
  tail call void @llvm.assume(i1 %19)
  %20 = icmp ult i64 %16, %1
  br i1 %20, label %25, label %21

21:                                               ; preds = %4
  %22 = shl nuw i64 %1, 5
  tail call void @llvm.memset.p0.i64(ptr align 8 %6, i8 0, i64 %22, i1 false), !tbaa !83
  %23 = shl nuw i64 %1, 5
  %24 = getelementptr i8, ptr %6, i64 %23
  store ptr %24, ptr %5, align 8, !tbaa !104
  br label %69

25:                                               ; preds = %4
  %26 = icmp ult i64 %18, %1
  br i1 %26, label %27, label %28

27:                                               ; preds = %25
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #20
  unreachable

28:                                               ; preds = %25
  %29 = tail call i64 @llvm.umax.i64(i64 %11, i64 %1)
  %30 = add i64 %29, %11
  %31 = icmp ult i64 %30, %11
  %32 = tail call i64 @llvm.umin.i64(i64 %30, i64 288230376151711743)
  %33 = select i1 %31, i64 288230376151711743, i64 %32
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %28
  %36 = tail call noundef ptr @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi2EEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %33, ptr noundef null)
  br label %37

37:                                               ; preds = %28, %35
  %38 = phi ptr [ %36, %35 ], [ null, %28 ]
  %39 = getelementptr %"class.dealii::Tensor.47", ptr %38, i64 %11
  %40 = shl nuw i64 %1, 5
  tail call void @llvm.memset.p0.i64(ptr align 8 %39, i8 0, i64 %40, i1 false), !tbaa !83
  %41 = icmp eq ptr %7, %6
  br i1 %41, label %63, label %42

42:                                               ; preds = %37, %59
  %43 = phi ptr [ %61, %59 ], [ %38, %37 ]
  %44 = phi ptr [ %60, %59 ], [ %7, %37 ]
  br label %45

45:                                               ; preds = %42, %56
  %46 = phi i64 [ %57, %56 ], [ 0, %42 ]
  %47 = getelementptr inbounds %"class.dealii::Tensor.46", ptr %43, i64 %46
  %48 = getelementptr inbounds [2 x %"class.dealii::Tensor.46"], ptr %44, i64 0, i64 %46
  br label %49

49:                                               ; preds = %45, %49
  %50 = phi i64 [ 0, %45 ], [ %54, %49 ]
  %51 = getelementptr inbounds [2 x double], ptr %48, i64 0, i64 %50
  %52 = load double, ptr %51, align 8, !tbaa !83
  %53 = getelementptr inbounds [2 x double], ptr %47, i64 0, i64 %50
  store double %52, ptr %53, align 8, !tbaa !83
  %54 = add nuw nsw i64 %50, 1
  %55 = icmp eq i64 %50, 0
  br i1 %55, label %49, label %56, !llvm.loop !152

56:                                               ; preds = %49
  %57 = add nuw nsw i64 %46, 1
  %58 = icmp eq i64 %57, 2
  br i1 %58, label %59, label %45

59:                                               ; preds = %56
  %60 = getelementptr inbounds %"class.dealii::Tensor.47", ptr %44, i64 1
  %61 = getelementptr inbounds %"class.dealii::Tensor.47", ptr %43, i64 1
  %62 = icmp eq ptr %60, %6
  br i1 %62, label %63, label %42, !llvm.loop !155

63:                                               ; preds = %59, %37
  %64 = icmp eq ptr %7, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %63
  tail call void @_ZdlPv(ptr noundef %7) #19
  br label %66

66:                                               ; preds = %63, %65
  store ptr %38, ptr %0, align 8, !tbaa !101
  %67 = getelementptr inbounds %"class.dealii::Tensor.47", ptr %39, i64 %1
  store ptr %67, ptr %5, align 8, !tbaa !104
  %68 = getelementptr inbounds %"class.dealii::Tensor.47", ptr %38, i64 %33
  store ptr %68, ptr %12, align 8, !tbaa !154
  br label %69

69:                                               ; preds = %21, %66, %2
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi2EEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #13 comdat align 2 !prof !76 {
  %4 = icmp ugt i64 %1, 288230376151711743
  br i1 %4, label %5, label %9, !prof !148

5:                                                ; preds = %3
  %6 = icmp ugt i64 %1, 576460752303423487
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

8:                                                ; preds = %5
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

9:                                                ; preds = %3
  %10 = shl nuw nsw i64 %1, 5
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #18
  ret ptr %11
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %63, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !132
  %7 = load ptr, ptr %0, align 8, !tbaa !131
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv exact i64 %10, 24
  %12 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !156
  %14 = ptrtoint ptr %13 to i64
  %15 = sub i64 %14, %8
  %16 = sdiv exact i64 %15, 24
  %17 = icmp ult i64 %11, 384307168202282326
  tail call void @llvm.assume(i1 %17)
  %18 = sub nuw nsw i64 384307168202282325, %11
  %19 = icmp ule i64 %16, %18
  tail call void @llvm.assume(i1 %19)
  %20 = icmp ult i64 %16, %1
  br i1 %20, label %25, label %21

21:                                               ; preds = %4
  %22 = mul nuw i64 %1, 24
  tail call void @llvm.memset.p0.i64(ptr align 8 %6, i8 0, i64 %22, i1 false), !tbaa !83
  %23 = mul nuw i64 %1, 24
  %24 = getelementptr i8, ptr %6, i64 %23
  store ptr %24, ptr %5, align 8, !tbaa !132
  br label %63

25:                                               ; preds = %4
  %26 = icmp ult i64 %18, %1
  br i1 %26, label %27, label %28

27:                                               ; preds = %25
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #20
  unreachable

28:                                               ; preds = %25
  %29 = tail call i64 @llvm.umax.i64(i64 %11, i64 %1)
  %30 = add i64 %29, %11
  %31 = icmp ult i64 %30, %11
  %32 = tail call i64 @llvm.umin.i64(i64 %30, i64 384307168202282325)
  %33 = select i1 %31, i64 384307168202282325, i64 %32
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %28
  %36 = mul nuw nsw i64 %33, 24
  %37 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %36) #18
  br label %38

38:                                               ; preds = %28, %35
  %39 = phi ptr [ %37, %35 ], [ null, %28 ]
  %40 = getelementptr %"class.dealii::Tensor.68", ptr %39, i64 %11
  %41 = mul nuw i64 %1, 24
  tail call void @llvm.memset.p0.i64(ptr align 8 %40, i8 0, i64 %41, i1 false), !tbaa !83
  %42 = icmp eq ptr %7, %6
  br i1 %42, label %57, label %43

43:                                               ; preds = %38, %53
  %44 = phi ptr [ %55, %53 ], [ %39, %38 ]
  %45 = phi ptr [ %54, %53 ], [ %7, %38 ]
  br label %46

46:                                               ; preds = %43, %46
  %47 = phi i64 [ 0, %43 ], [ %51, %46 ]
  %48 = getelementptr inbounds [3 x double], ptr %45, i64 0, i64 %47
  %49 = load double, ptr %48, align 8, !tbaa !83
  %50 = getelementptr inbounds [3 x double], ptr %44, i64 0, i64 %47
  store double %49, ptr %50, align 8, !tbaa !83
  %51 = add nuw nsw i64 %47, 1
  %52 = icmp eq i64 %51, 3
  br i1 %52, label %53, label %46, !llvm.loop !157

53:                                               ; preds = %46
  %54 = getelementptr inbounds %"class.dealii::Tensor.68", ptr %45, i64 1
  %55 = getelementptr inbounds %"class.dealii::Tensor.68", ptr %44, i64 1
  %56 = icmp eq ptr %54, %6
  br i1 %56, label %57, label %43, !llvm.loop !158

57:                                               ; preds = %53, %38
  %58 = icmp eq ptr %7, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %57
  tail call void @_ZdlPv(ptr noundef %7) #19
  br label %60

60:                                               ; preds = %57, %59
  store ptr %39, ptr %0, align 8, !tbaa !131
  %61 = getelementptr inbounds %"class.dealii::Tensor.68", ptr %40, i64 %1
  store ptr %61, ptr %5, align 8, !tbaa !132
  %62 = getelementptr inbounds %"class.dealii::Tensor.68", ptr %39, i64 %33
  store ptr %62, ptr %12, align 8, !tbaa !156
  br label %63

63:                                               ; preds = %21, %60, %2
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %70, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<2, 3>, std::allocator<dealii::Tensor<2, 3>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !133
  %7 = load ptr, ptr %0, align 8, !tbaa !130
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv exact i64 %10, 72
  %12 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<2, 3>, std::allocator<dealii::Tensor<2, 3>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !159
  %14 = ptrtoint ptr %13 to i64
  %15 = sub i64 %14, %8
  %16 = sdiv exact i64 %15, 72
  %17 = icmp ult i64 %11, 128102389400760776
  tail call void @llvm.assume(i1 %17)
  %18 = sub nuw nsw i64 128102389400760775, %11
  %19 = icmp ule i64 %16, %18
  tail call void @llvm.assume(i1 %19)
  %20 = icmp ult i64 %16, %1
  br i1 %20, label %25, label %21

21:                                               ; preds = %4
  %22 = mul nuw i64 %1, 72
  tail call void @llvm.memset.p0.i64(ptr align 8 %6, i8 0, i64 %22, i1 false), !tbaa !83
  %23 = mul nuw i64 %1, 72
  %24 = getelementptr i8, ptr %6, i64 %23
  store ptr %24, ptr %5, align 8, !tbaa !133
  br label %70

25:                                               ; preds = %4
  %26 = icmp ult i64 %18, %1
  br i1 %26, label %27, label %28

27:                                               ; preds = %25
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #20
  unreachable

28:                                               ; preds = %25
  %29 = tail call i64 @llvm.umax.i64(i64 %11, i64 %1)
  %30 = add i64 %29, %11
  %31 = icmp ult i64 %30, %11
  %32 = tail call i64 @llvm.umin.i64(i64 %30, i64 128102389400760775)
  %33 = select i1 %31, i64 128102389400760775, i64 %32
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %28
  %36 = mul nuw nsw i64 %33, 72
  %37 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %36) #18
  br label %38

38:                                               ; preds = %28, %35
  %39 = phi ptr [ %37, %35 ], [ null, %28 ]
  %40 = getelementptr %"class.dealii::Tensor.69", ptr %39, i64 %11
  %41 = mul nuw i64 %1, 72
  tail call void @llvm.memset.p0.i64(ptr align 8 %40, i8 0, i64 %41, i1 false), !tbaa !83
  %42 = icmp eq ptr %7, %6
  br i1 %42, label %64, label %43

43:                                               ; preds = %38, %60
  %44 = phi ptr [ %62, %60 ], [ %39, %38 ]
  %45 = phi ptr [ %61, %60 ], [ %7, %38 ]
  br label %46

46:                                               ; preds = %43, %57
  %47 = phi i64 [ %58, %57 ], [ 0, %43 ]
  %48 = getelementptr inbounds %"class.dealii::Tensor.68", ptr %44, i64 %47
  %49 = getelementptr inbounds [3 x %"class.dealii::Tensor.68"], ptr %45, i64 0, i64 %47
  br label %50

50:                                               ; preds = %46, %50
  %51 = phi i64 [ 0, %46 ], [ %55, %50 ]
  %52 = getelementptr inbounds [3 x double], ptr %49, i64 0, i64 %51
  %53 = load double, ptr %52, align 8, !tbaa !83
  %54 = getelementptr inbounds [3 x double], ptr %48, i64 0, i64 %51
  store double %53, ptr %54, align 8, !tbaa !83
  %55 = add nuw nsw i64 %51, 1
  %56 = icmp eq i64 %55, 3
  br i1 %56, label %57, label %50, !llvm.loop !157

57:                                               ; preds = %50
  %58 = add nuw nsw i64 %47, 1
  %59 = icmp eq i64 %58, 3
  br i1 %59, label %60, label %46

60:                                               ; preds = %57
  %61 = getelementptr inbounds %"class.dealii::Tensor.69", ptr %45, i64 1
  %62 = getelementptr inbounds %"class.dealii::Tensor.69", ptr %44, i64 1
  %63 = icmp eq ptr %61, %6
  br i1 %63, label %64, label %43, !llvm.loop !160

64:                                               ; preds = %60, %38
  %65 = icmp eq ptr %7, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %64
  tail call void @_ZdlPv(ptr noundef %7) #19
  br label %67

67:                                               ; preds = %64, %66
  store ptr %39, ptr %0, align 8, !tbaa !130
  %68 = getelementptr inbounds %"class.dealii::Tensor.69", ptr %40, i64 %1
  store ptr %68, ptr %5, align 8, !tbaa !133
  %69 = getelementptr inbounds %"class.dealii::Tensor.69", ptr %39, i64 %33
  store ptr %69, ptr %12, align 8, !tbaa !159
  br label %70

70:                                               ; preds = %21, %67, %2
  ret void
}

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_polynomials_abf.cc() #14 section ".text.startup" !prof !161 !PGOFuncName !162 {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #17
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind }
attributes #18 = { builtin allocsize(0) }
attributes #19 = { builtin nounwind }
attributes #20 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!37}

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
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36}
!35 = !{ptr @_GLOBAL__sub_I_polynomials_abf.cc, ptr @_ZNSt8ios_base4InitC1Ev, i64 1}
!36 = !{ptr @_GLOBAL__sub_I_polynomials_abf.cc, ptr @__cxa_atexit, i64 1}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"instr_prof_hash_mismatch"}
!39 = !{!40, !41, i64 0}
!40 = !{!"_ZTSN6dealii14PolynomialsABFILi1EEE", !41, i64 0, !44, i64 8, !41, i64 16, !45, i64 24, !49, i64 48, !53, i64 72}
!41 = !{!"int", !42, i64 0}
!42 = !{!"omnipotent char", !43, i64 0}
!43 = !{!"Simple C++ TBAA"}
!44 = !{!"any pointer", !42, i64 0}
!45 = !{!"_ZTSSt6vectorIdSaIdEE", !46, i64 0}
!46 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !47, i64 0}
!47 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !48, i64 0}
!48 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !44, i64 0, !44, i64 8, !44, i64 16}
!49 = !{!"_ZTSSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE", !50, i64 0}
!50 = !{!"_ZTSSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE", !51, i64 0}
!51 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE12_Vector_implE", !52, i64 0}
!52 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE17_Vector_impl_dataE", !44, i64 0, !44, i64 8, !44, i64 16}
!53 = !{!"_ZTSSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE", !54, i64 0}
!54 = !{!"_ZTSSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EE", !55, i64 0}
!55 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EE12_Vector_implE", !56, i64 0}
!56 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EE17_Vector_impl_dataE", !44, i64 0, !44, i64 8, !44, i64 16}
!57 = !{!40, !41, i64 16}
!58 = !{!59, !44, i64 0}
!59 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EESaIS6_EE17_Vector_impl_dataE", !44, i64 0, !44, i64 8, !44, i64 16}
!60 = !{!59, !44, i64 8}
!61 = !{!59, !44, i64 16}
!62 = !{!63, !44, i64 0}
!63 = !{!"_ZTSNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE17_Vector_impl_dataE", !44, i64 0, !44, i64 8, !44, i64 16}
!64 = !{!63, !44, i64 8}
!65 = !{!63, !44, i64 16}
!66 = !{!67, !67, i64 0}
!67 = !{!"vtable pointer", !43, i64 0}
!68 = distinct !{!68, !69, !70}
!69 = !{!"llvm.loop.mustprogress"}
!70 = !{!"llvm.loop.unroll.disable"}
!71 = !{!40, !44, i64 8}
!72 = distinct !{!72, !69, !70}
!73 = !{!56, !44, i64 0}
!74 = !{!52, !44, i64 0}
!75 = !{!48, !44, i64 0}
!76 = !{!"function_entry_count", i64 0}
!77 = !{!52, !44, i64 8}
!78 = !{!48, !44, i64 8}
!79 = !{!56, !44, i64 8}
!80 = !{!81, !44, i64 8}
!81 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi3ELi1EEESaIS2_EE17_Vector_impl_dataE", !44, i64 0, !44, i64 8, !44, i64 16}
!82 = !{!81, !44, i64 0}
!83 = !{!84, !84, i64 0}
!84 = !{!"double", !42, i64 0}
!85 = distinct !{!85, !69, !70}
!86 = distinct !{!86, !69, !70}
!87 = distinct !{!87, !69, !70}
!88 = !{!89, !41, i64 0}
!89 = !{!"_ZTSN6dealii14PolynomialsABFILi2EEE", !41, i64 0, !44, i64 8, !41, i64 16, !45, i64 24, !90, i64 48, !94, i64 72}
!90 = !{!"_ZTSSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE", !91, i64 0}
!91 = !{!"_ZTSSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE", !92, i64 0}
!92 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE12_Vector_implE", !93, i64 0}
!93 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE17_Vector_impl_dataE", !44, i64 0, !44, i64 8, !44, i64 16}
!94 = !{!"_ZTSSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE", !95, i64 0}
!95 = !{!"_ZTSSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EE", !96, i64 0}
!96 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EE12_Vector_implE", !97, i64 0}
!97 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EE17_Vector_impl_dataE", !44, i64 0, !44, i64 8, !44, i64 16}
!98 = !{!89, !41, i64 16}
!99 = distinct !{!99, !69, !70}
!100 = !{!89, !44, i64 8}
!101 = !{!97, !44, i64 0}
!102 = !{!93, !44, i64 0}
!103 = !{!93, !44, i64 8}
!104 = !{!97, !44, i64 8}
!105 = !{!106, !44, i64 8}
!106 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi3ELi2EEESaIS2_EE17_Vector_impl_dataE", !44, i64 0, !44, i64 8, !44, i64 16}
!107 = !{!106, !44, i64 0}
!108 = distinct !{!108, !69, !70}
!109 = distinct !{!109, !69, !70}
!110 = distinct !{!110, !69, !70}
!111 = distinct !{!111, !69, !70}
!112 = distinct !{!112, !69, !70}
!113 = distinct !{!113, !69, !70}
!114 = distinct !{!114, !69, !70}
!115 = distinct !{!115, !69, !70}
!116 = !{!117, !41, i64 0}
!117 = !{!"_ZTSN6dealii14PolynomialsABFILi3EEE", !41, i64 0, !44, i64 8, !41, i64 16, !45, i64 24, !118, i64 48, !122, i64 72}
!118 = !{!"_ZTSSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE", !119, i64 0}
!119 = !{!"_ZTSSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE", !120, i64 0}
!120 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE12_Vector_implE", !121, i64 0}
!121 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE17_Vector_impl_dataE", !44, i64 0, !44, i64 8, !44, i64 16}
!122 = !{!"_ZTSSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE", !123, i64 0}
!123 = !{!"_ZTSSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE", !124, i64 0}
!124 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE12_Vector_implE", !125, i64 0}
!125 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE17_Vector_impl_dataE", !44, i64 0, !44, i64 8, !44, i64 16}
!126 = !{!117, !41, i64 16}
!127 = distinct !{!127, !69, !70}
!128 = distinct !{!128, !69, !70}
!129 = !{!117, !44, i64 8}
!130 = !{!125, !44, i64 0}
!131 = !{!121, !44, i64 0}
!132 = !{!121, !44, i64 8}
!133 = !{!125, !44, i64 8}
!134 = !{!135, !44, i64 8}
!135 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi3ELi3EEESaIS2_EE17_Vector_impl_dataE", !44, i64 0, !44, i64 8, !44, i64 16}
!136 = !{!135, !44, i64 0}
!137 = distinct !{!137, !69, !70}
!138 = distinct !{!138, !69, !70}
!139 = distinct !{!139, !69, !70}
!140 = distinct !{!140, !69, !70}
!141 = distinct !{!141, !69, !70}
!142 = distinct !{!142, !69, !70}
!143 = distinct !{!143, !69, !70}
!144 = distinct !{!144, !69, !70}
!145 = !{!48, !44, i64 16}
!146 = !{!52, !44, i64 16}
!147 = distinct !{!147, !69, !70}
!148 = !{!"branch_weights", i32 1, i32 2000}
!149 = !{!56, !44, i64 16}
!150 = distinct !{!150, !69, !70}
!151 = !{!93, !44, i64 16}
!152 = distinct !{!152, !69, !70}
!153 = distinct !{!153, !69, !70}
!154 = !{!97, !44, i64 16}
!155 = distinct !{!155, !69, !70}
!156 = !{!121, !44, i64 16}
!157 = distinct !{!157, !69, !70}
!158 = distinct !{!158, !69, !70}
!159 = !{!125, !44, i64 16}
!160 = distinct !{!160, !69, !70}
!161 = !{!"function_entry_count", i64 1}
!162 = !{!"source/base/polynomials_abf.cc;_GLOBAL__sub_I_polynomials_abf.cc"}
