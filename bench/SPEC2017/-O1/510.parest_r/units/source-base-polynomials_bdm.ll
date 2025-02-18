; ModuleID = 'source/base/polynomials_bdm.cc'
source_filename = "source/base/polynomials_bdm.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl" }
%"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl" = type { %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::allocator" = type { i8 }
%"class.dealii::Polynomials::Monomial" = type { %"class.dealii::Polynomials::Polynomial" }
%"class.dealii::Polynomials::Polynomial" = type { %"class.dealii::Subscriptor", %"class.std::vector.5" }
%"class.dealii::Subscriptor" = type { ptr, i32, %"class.std::map", ptr }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<const char *, std::pair<const char *const, unsigned int>, std::_Select1st<std::pair<const char *const, unsigned int>>, std::less<const char *>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<const char *, std::pair<const char *const, unsigned int>, std::_Select1st<std::pair<const char *const, unsigned int>>, std::less<const char *>>::_Rb_tree_impl" = type { %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_key_compare" = type { %"struct.std::less" }
%"struct.std::less" = type { i8 }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.std::vector.5" = type { %"struct.std::_Vector_base.6" }
%"struct.std::_Vector_base.6" = type { %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl" }
%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl" = type { %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data" }
%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.dealii::PolynomialsBDM" = type { %"class.dealii::PolynomialSpace", %"class.std::vector", i32, %"class.std::vector.5", %"class.std::vector.10", %"class.std::vector.15" }
%"class.dealii::PolynomialSpace" = type { %"class.std::vector", i32, %"class.std::vector.0", %"class.std::vector.0" }
%"class.std::vector.0" = type { %"struct.std::_Vector_base.1" }
%"struct.std::_Vector_base.1" = type { %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.10" = type { %"struct.std::_Vector_base.11" }
%"struct.std::_Vector_base.11" = type { %"struct.std::_Vector_base<dealii::Tensor<1, 1>, std::allocator<dealii::Tensor<1, 1>>>::_Vector_impl" }
%"struct.std::_Vector_base<dealii::Tensor<1, 1>, std::allocator<dealii::Tensor<1, 1>>>::_Vector_impl" = type { %"struct.std::_Vector_base<dealii::Tensor<1, 1>, std::allocator<dealii::Tensor<1, 1>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<dealii::Tensor<1, 1>, std::allocator<dealii::Tensor<1, 1>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.15" = type { %"struct.std::_Vector_base.16" }
%"struct.std::_Vector_base.16" = type { %"struct.std::_Vector_base<dealii::Tensor<2, 1>, std::allocator<dealii::Tensor<2, 1>>>::_Vector_impl" }
%"struct.std::_Vector_base<dealii::Tensor<2, 1>, std::allocator<dealii::Tensor<2, 1>>>::_Vector_impl" = type { %"struct.std::_Vector_base<dealii::Tensor<2, 1>, std::allocator<dealii::Tensor<2, 1>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<dealii::Tensor<2, 1>, std::allocator<dealii::Tensor<2, 1>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.dealii::Tensor" = type { [1 x double] }
%"class.dealii::Tensor.29" = type { [1 x %"class.dealii::Tensor"] }
%"struct.std::_Vector_base<dealii::Tensor<3, 1>, std::allocator<dealii::Tensor<3, 1>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.dealii::Tensor.31" = type { [1 x %"class.dealii::Tensor.29"] }
%"class.dealii::PolynomialsBDM.32" = type { %"class.dealii::PolynomialSpace.33", %"class.std::vector", i32, %"class.std::vector.5", %"class.std::vector.34", %"class.std::vector.39" }
%"class.dealii::PolynomialSpace.33" = type { %"class.std::vector", i32, %"class.std::vector.0", %"class.std::vector.0" }
%"class.std::vector.34" = type { %"struct.std::_Vector_base.35" }
%"struct.std::_Vector_base.35" = type { %"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl" }
%"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl" = type { %"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.39" = type { %"struct.std::_Vector_base.40" }
%"struct.std::_Vector_base.40" = type { %"struct.std::_Vector_base<dealii::Tensor<2, 2>, std::allocator<dealii::Tensor<2, 2>>>::_Vector_impl" }
%"struct.std::_Vector_base<dealii::Tensor<2, 2>, std::allocator<dealii::Tensor<2, 2>>>::_Vector_impl" = type { %"struct.std::_Vector_base<dealii::Tensor<2, 2>, std::allocator<dealii::Tensor<2, 2>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<dealii::Tensor<2, 2>, std::allocator<dealii::Tensor<2, 2>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.dealii::Tensor.50" = type { [2 x double] }
%"class.dealii::Tensor.53" = type { [2 x %"class.dealii::Tensor.50"] }
%"class.dealii::Tensor.55" = type { [2 x %"class.dealii::Tensor.53"] }
%"struct.std::_Vector_base<dealii::Tensor<3, 2>, std::allocator<dealii::Tensor<3, 2>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.dealii::PolynomialsBDM.56" = type { %"class.dealii::PolynomialSpace.57", %"class.std::vector", i32, %"class.std::vector.5", %"class.std::vector.58", %"class.std::vector.63" }
%"class.dealii::PolynomialSpace.57" = type { %"class.std::vector", i32, %"class.std::vector.0", %"class.std::vector.0" }
%"class.std::vector.58" = type { %"struct.std::_Vector_base.59" }
%"struct.std::_Vector_base.59" = type { %"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl" }
%"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl" = type { %"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.63" = type { %"struct.std::_Vector_base.64" }
%"struct.std::_Vector_base.64" = type { %"struct.std::_Vector_base<dealii::Tensor<2, 3>, std::allocator<dealii::Tensor<2, 3>>>::_Vector_impl" }
%"struct.std::_Vector_base<dealii::Tensor<2, 3>, std::allocator<dealii::Tensor<2, 3>>>::_Vector_impl" = type { %"struct.std::_Vector_base<dealii::Tensor<2, 3>, std::allocator<dealii::Tensor<2, 3>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<dealii::Tensor<2, 3>, std::allocator<dealii::Tensor<2, 3>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.dealii::Tensor.74" = type { [3 x double] }
%"class.dealii::Tensor.77" = type { [3 x %"class.dealii::Tensor.74"] }
%"class.dealii::Tensor.79" = type { [3 x %"class.dealii::Tensor.77"] }
%"struct.std::_Vector_base<dealii::Tensor<3, 3>, std::allocator<dealii::Tensor<3, 3>>>::_Vector_impl_data" = type { ptr, ptr, ptr }

$_ZN6dealii14PolynomialsBDMILi1EEC5Ej = comdat any

$_ZN6dealii15PolynomialSpaceILi1EEC2INS_11Polynomials10PolynomialIdEEEERKSt6vectorIT_SaIS7_EE = comdat any

$_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2EmRKS4_ = comdat any

$_ZN6dealii14PolynomialsBDMILi1EE14compute_n_polsEj = comdat any

$_ZNK6dealii14PolynomialsBDMILi1EE7computeERKNS_5PointILi1EEERSt6vectorINS_6TensorILi1ELi1EEESaIS8_EERS6_INS7_ILi2ELi1EEESaISC_EERS6_INS7_ILi3ELi1EEESaISG_EE = comdat any

$_ZNK6dealii14PolynomialsBDMILi1EE1nEv = comdat any

$_ZNK6dealii14PolynomialsBDMILi1EE6degreeEv = comdat any

$_ZN6dealii14PolynomialsBDMILi2EEC5Ej = comdat any

$_ZN6dealii15PolynomialSpaceILi2EEC2INS_11Polynomials10PolynomialIdEEEERKSt6vectorIT_SaIS7_EE = comdat any

$_ZN6dealii14PolynomialsBDMILi2EE14compute_n_polsEj = comdat any

$_ZNK6dealii14PolynomialsBDMILi2EE7computeERKNS_5PointILi2EEERSt6vectorINS_6TensorILi1ELi2EEESaIS8_EERS6_INS7_ILi2ELi2EEESaISC_EERS6_INS7_ILi3ELi2EEESaISG_EE = comdat any

$_ZNK6dealii14PolynomialsBDMILi2EE1nEv = comdat any

$_ZNK6dealii14PolynomialsBDMILi2EE6degreeEv = comdat any

$_ZN6dealii14PolynomialsBDMILi3EEC5Ej = comdat any

$_ZN6dealii15PolynomialSpaceILi3EEC2INS_11Polynomials10PolynomialIdEEEERKSt6vectorIT_SaIS7_EE = comdat any

$_ZN6dealii14PolynomialsBDMILi3EE14compute_n_polsEj = comdat any

$_ZNK6dealii14PolynomialsBDMILi3EE7computeERKNS_5PointILi3EEERSt6vectorINS_6TensorILi1ELi3EEESaIS8_EERS6_INS7_ILi2ELi3EEESaISC_EERS6_INS7_ILi3ELi3EEESaISG_EE = comdat any

$_ZNK6dealii14PolynomialsBDMILi3EE1nEv = comdat any

$_ZNK6dealii14PolynomialsBDMILi3EE6degreeEv = comdat any

$__clang_call_terminate = comdat any

$_ZN6dealii11Polynomials10PolynomialIdED2Ev = comdat any

$_ZN6dealii11Polynomials10PolynomialIdED0Ev = comdat any

$_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE19_M_range_initializeIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEvT_SC_St20forward_iterator_tag = comdat any

$_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEE8allocateEmPKv = comdat any

$_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS5_SaIS5_EEEEPS5_ET0_T_SE_SD_ = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi1EEEE8allocateEmPKv = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi1EEEE8allocateEmPKv = comdat any

$_ZNSt6vectorIdSaIdEE17_M_default_appendEm = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE17_M_default_appendEm = comdat any

$_ZNSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE17_M_default_appendEm = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEE8allocateEmPKv = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi2EEEE8allocateEmPKv = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE17_M_default_appendEm = comdat any

$_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE17_M_default_appendEm = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE17_M_default_appendEm = comdat any

$_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE17_M_default_appendEm = comdat any

$_ZTVN6dealii11Polynomials10PolynomialIdEE = comdat any

$_ZTSN6dealii11Polynomials10PolynomialIdEE = comdat any

$_ZTIN6dealii11Polynomials10PolynomialIdEE = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZTVN6dealii11Polynomials10PolynomialIdEE = linkonce_odr dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN6dealii11Polynomials10PolynomialIdEE, ptr @_ZN6dealii11Polynomials10PolynomialIdED2Ev, ptr @_ZN6dealii11Polynomials10PolynomialIdED0Ev] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN6dealii11Polynomials10PolynomialIdEE = linkonce_odr dso_local constant [38 x i8] c"N6dealii11Polynomials10PolynomialIdEE\00", comdat, align 1
@_ZTIN6dealii11SubscriptorE = external constant ptr
@_ZTIN6dealii11Polynomials10PolynomialIdEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii11Polynomials10PolynomialIdEE, ptr @_ZTIN6dealii11SubscriptorE }, comdat, align 8
@.str = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_polynomials_bdm.cc, ptr null }]

@_ZN6dealii14PolynomialsBDMILi1EEC1Ej = weak_odr dso_local unnamed_addr alias void (ptr, i32), ptr @_ZN6dealii14PolynomialsBDMILi1EEC2Ej
@_ZN6dealii14PolynomialsBDMILi2EEC1Ej = weak_odr dso_local unnamed_addr alias void (ptr, i32), ptr @_ZN6dealii14PolynomialsBDMILi2EEC2Ej
@_ZN6dealii14PolynomialsBDMILi3EEC1Ej = weak_odr dso_local unnamed_addr alias void (ptr, i32), ptr @_ZN6dealii14PolynomialsBDMILi3EEC2Ej

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii14PolynomialsBDMILi1EEC2Ej(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %1) unnamed_addr #3 comdat($_ZN6dealii14PolynomialsBDMILi1EEC5Ej) align 2 personality ptr @__gxx_personality_v0 !annotation !43 {
  %3 = alloca %"class.std::vector", align 8
  %4 = alloca %"class.std::allocator", align 1
  %5 = alloca %"class.dealii::Polynomials::Monomial", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  call void @_ZN6dealii11Polynomials8Legendre23generate_complete_basisEj(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %3, i32 noundef %1)
  invoke void @_ZN6dealii15PolynomialSpaceILi1EEC2INS_11Polynomials10PolynomialIdEEEERKSt6vectorIT_SaIS7_EE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %6 unwind label %99

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !tbaa !44
  %8 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %3, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  %10 = icmp eq ptr %7, %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %6, %11
  %12 = phi ptr [ %15, %11 ], [ %7, %6 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !50
  %14 = load ptr, ptr %13, align 8
  call void %14(ptr noundef nonnull align 8 dereferenceable(96) %12) #19
  %15 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %12, i64 1
  %16 = icmp eq ptr %15, %9
  br i1 %16, label %17, label %11, !llvm.loop !52

17:                                               ; preds = %11, %6
  %18 = load ptr, ptr %3, align 8, !tbaa !44
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  call void @_ZdlPv(ptr noundef %18) #20
  br label %21

21:                                               ; preds = %17, %20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  %22 = getelementptr inbounds %"class.dealii::PolynomialsBDM", ptr %0, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #19
  invoke void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2EmRKS4_(ptr noundef nonnull align 8 dereferenceable(24) %22, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %23 unwind label %116

23:                                               ; preds = %21
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #19
  %24 = getelementptr inbounds %"class.dealii::PolynomialsBDM", ptr %0, i64 0, i32 2
  %25 = add i32 %1, 1
  store i32 %25, ptr %24, align 8, !tbaa !55
  %26 = getelementptr inbounds %"class.dealii::PolynomialsBDM", ptr %0, i64 0, i32 3
  %27 = getelementptr inbounds %"class.dealii::PolynomialSpace", ptr %0, i64 0, i32 1
  %28 = load i32, ptr %27, align 8, !tbaa !78
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %"class.dealii::PolynomialsBDM", ptr %0, i64 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %31 = getelementptr inbounds %"class.dealii::PolynomialsBDM", ptr %0, i64 0, i32 3, i32 0, i32 0, i32 0, i32 2
  %32 = icmp eq i32 %28, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %26, i8 0, i64 24, i1 false)
  br i1 %32, label %36, label %33

33:                                               ; preds = %23
  %34 = shl nuw nsw i64 %29, 3
  %35 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %34) #21
          to label %36 unwind label %118

36:                                               ; preds = %33, %23
  %37 = phi ptr [ null, %23 ], [ %35, %33 ]
  store ptr %37, ptr %26, align 8, !tbaa !79
  store ptr %37, ptr %30, align 8, !tbaa !80
  %38 = getelementptr inbounds double, ptr %37, i64 %29
  store ptr %38, ptr %31, align 8, !tbaa !81
  br i1 %32, label %45, label %39

39:                                               ; preds = %36
  store double 0.000000e+00, ptr %37, align 8, !tbaa !82
  %40 = getelementptr double, ptr %37, i64 1
  %41 = icmp eq i32 %28, 1
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = shl nuw nsw i64 %29, 3
  %44 = add nsw i64 %43, -8
  call void @llvm.memset.p0.i64(ptr align 8 %40, i8 0, i64 %44, i1 false), !tbaa !82
  br label %45

45:                                               ; preds = %36, %39, %42
  %46 = phi ptr [ %37, %36 ], [ %40, %39 ], [ %38, %42 ]
  store ptr %46, ptr %30, align 8, !tbaa !80
  %47 = getelementptr inbounds %"class.dealii::PolynomialsBDM", ptr %0, i64 0, i32 4
  %48 = getelementptr inbounds %"class.dealii::PolynomialsBDM", ptr %0, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %49 = getelementptr inbounds %"class.dealii::PolynomialsBDM", ptr %0, i64 0, i32 4, i32 0, i32 0, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %47, i8 0, i64 24, i1 false)
  br i1 %32, label %52, label %50

50:                                               ; preds = %45
  %51 = invoke noundef ptr @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi1EEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %47, i64 noundef %29, ptr noundef null)
          to label %52 unwind label %120

52:                                               ; preds = %50, %45
  %53 = phi ptr [ null, %45 ], [ %51, %50 ]
  store ptr %53, ptr %47, align 8, !tbaa !84
  store ptr %53, ptr %48, align 8, !tbaa !85
  %54 = getelementptr inbounds %"class.dealii::Tensor", ptr %53, i64 %29
  store ptr %54, ptr %49, align 8, !tbaa !86
  br i1 %32, label %58, label %55

55:                                               ; preds = %52
  %56 = shl nuw nsw i64 %29, 3
  call void @llvm.memset.p0.i64(ptr align 8 %53, i8 0, i64 %56, i1 false), !tbaa !82
  %57 = getelementptr i8, ptr %53, i64 %56
  br label %58

58:                                               ; preds = %52, %55
  %59 = phi ptr [ %53, %52 ], [ %57, %55 ]
  store ptr %59, ptr %48, align 8, !tbaa !85
  %60 = getelementptr inbounds %"class.dealii::PolynomialsBDM", ptr %0, i64 0, i32 5
  %61 = load i32, ptr %27, align 8, !tbaa !78
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %"class.dealii::PolynomialsBDM", ptr %0, i64 0, i32 5, i32 0, i32 0, i32 0, i32 1
  %64 = getelementptr inbounds %"class.dealii::PolynomialsBDM", ptr %0, i64 0, i32 5, i32 0, i32 0, i32 0, i32 2
  %65 = icmp eq i32 %61, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %60, i8 0, i64 24, i1 false)
  br i1 %65, label %68, label %66

66:                                               ; preds = %58
  %67 = invoke noundef ptr @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi1EEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %60, i64 noundef %62, ptr noundef null)
          to label %68 unwind label %122

68:                                               ; preds = %66, %58
  %69 = phi ptr [ null, %58 ], [ %67, %66 ]
  store ptr %69, ptr %60, align 8, !tbaa !87
  store ptr %69, ptr %63, align 8, !tbaa !88
  %70 = getelementptr inbounds %"class.dealii::Tensor.29", ptr %69, i64 %62
  store ptr %70, ptr %64, align 8, !tbaa !89
  br i1 %65, label %74, label %71

71:                                               ; preds = %68
  %72 = shl nuw nsw i64 %62, 3
  call void @llvm.memset.p0.i64(ptr align 8 %69, i8 0, i64 %72, i1 false), !tbaa !82
  %73 = getelementptr i8, ptr %69, i64 %72
  br label %74

74:                                               ; preds = %68, %71
  %75 = phi ptr [ %69, %68 ], [ %73, %71 ]
  store ptr %75, ptr %63, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %5) #19
  invoke void @_ZN6dealii11Polynomials8MonomialIdEC1Ejd(ptr noundef nonnull align 8 dereferenceable(96) %5, i32 noundef %25, double noundef 1.000000e+00)
          to label %76 unwind label %124

76:                                               ; preds = %74
  %77 = load ptr, ptr %22, align 8, !tbaa !44
  %78 = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN6dealii11SubscriptoraSERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %77, ptr noundef nonnull align 8 dereferenceable(72) %5)
          to label %79 unwind label %126

79:                                               ; preds = %76
  %80 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %77, i64 0, i32 1
  %81 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %5, i64 0, i32 1
  %82 = load ptr, ptr %80, align 8, !tbaa !79
  %83 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %77, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !80
  %85 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %77, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !81
  %87 = load ptr, ptr %81, align 8, !tbaa !79
  store ptr %87, ptr %80, align 8, !tbaa !79
  %88 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %5, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !80
  store ptr %89, ptr %83, align 8, !tbaa !80
  %90 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %5, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !81
  store ptr %91, ptr %85, align 8, !tbaa !81
  store ptr %82, ptr %81, align 8, !tbaa !79
  store ptr %84, ptr %88, align 8, !tbaa !80
  store ptr %86, ptr %90, align 8, !tbaa !81
  %92 = icmp eq ptr %82, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %81, i8 0, i64 24, i1 false)
  br i1 %92, label %94, label %93

93:                                               ; preds = %79
  call void @_ZdlPv(ptr noundef %82) #20
  br label %94

94:                                               ; preds = %93, %79
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials10PolynomialIdEE, i64 0, inrange i32 0, i64 2), ptr %5, align 8, !tbaa !50
  %95 = load ptr, ptr %81, align 8, !tbaa !79
  %96 = icmp eq ptr %95, null
  br i1 %96, label %98, label %97

97:                                               ; preds = %94
  call void @_ZdlPv(ptr noundef %95) #20
  br label %98

98:                                               ; preds = %94, %97
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %5) #19
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %5) #19
  ret void

99:                                               ; preds = %2
  %100 = landingpad { ptr, i32 }
          cleanup
  %101 = load ptr, ptr %3, align 8, !tbaa !44
  %102 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %3, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !49
  %104 = icmp eq ptr %101, %103
  br i1 %104, label %111, label %105

105:                                              ; preds = %99, %105
  %106 = phi ptr [ %109, %105 ], [ %101, %99 ]
  %107 = load ptr, ptr %106, align 8, !tbaa !50
  %108 = load ptr, ptr %107, align 8
  call void %108(ptr noundef nonnull align 8 dereferenceable(96) %106) #19
  %109 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %106, i64 1
  %110 = icmp eq ptr %109, %103
  br i1 %110, label %111, label %105, !llvm.loop !52

111:                                              ; preds = %105, %99
  %112 = load ptr, ptr %3, align 8, !tbaa !44
  %113 = icmp eq ptr %112, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %111
  call void @_ZdlPv(ptr noundef %112) #20
  br label %115

115:                                              ; preds = %111, %114
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  br label %190

116:                                              ; preds = %21
  %117 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #19
  br label %164

118:                                              ; preds = %33
  %119 = landingpad { ptr, i32 }
          cleanup
  br label %148

120:                                              ; preds = %50
  %121 = landingpad { ptr, i32 }
          cleanup
  br label %143

122:                                              ; preds = %66
  %123 = landingpad { ptr, i32 }
          cleanup
  br label %138

124:                                              ; preds = %74
  %125 = landingpad { ptr, i32 }
          cleanup
  br label %133

126:                                              ; preds = %76
  %127 = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials10PolynomialIdEE, i64 0, inrange i32 0, i64 2), ptr %5, align 8, !tbaa !50
  %128 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %5, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !79
  %130 = icmp eq ptr %129, null
  br i1 %130, label %132, label %131

131:                                              ; preds = %126
  call void @_ZdlPv(ptr noundef %129) #20
  br label %132

132:                                              ; preds = %126, %131
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %5) #19
  br label %133

133:                                              ; preds = %132, %124
  %134 = phi { ptr, i32 } [ %127, %132 ], [ %125, %124 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %5) #19
  %135 = load ptr, ptr %60, align 8, !tbaa !87
  %136 = icmp eq ptr %135, null
  br i1 %136, label %138, label %137

137:                                              ; preds = %133
  call void @_ZdlPv(ptr noundef %135) #20
  br label %138

138:                                              ; preds = %137, %133, %122
  %139 = phi { ptr, i32 } [ %123, %122 ], [ %134, %133 ], [ %134, %137 ]
  %140 = load ptr, ptr %47, align 8, !tbaa !84
  %141 = icmp eq ptr %140, null
  br i1 %141, label %143, label %142

142:                                              ; preds = %138
  call void @_ZdlPv(ptr noundef %140) #20
  br label %143

143:                                              ; preds = %142, %138, %120
  %144 = phi { ptr, i32 } [ %121, %120 ], [ %139, %138 ], [ %139, %142 ]
  %145 = load ptr, ptr %26, align 8, !tbaa !79
  %146 = icmp eq ptr %145, null
  br i1 %146, label %148, label %147

147:                                              ; preds = %143
  call void @_ZdlPv(ptr noundef %145) #20
  br label %148

148:                                              ; preds = %147, %143, %118
  %149 = phi { ptr, i32 } [ %119, %118 ], [ %144, %143 ], [ %144, %147 ]
  %150 = load ptr, ptr %22, align 8, !tbaa !44
  %151 = getelementptr inbounds %"class.dealii::PolynomialsBDM", ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %152 = load ptr, ptr %151, align 8, !tbaa !49
  %153 = icmp eq ptr %150, %152
  br i1 %153, label %160, label %154

154:                                              ; preds = %148, %154
  %155 = phi ptr [ %158, %154 ], [ %150, %148 ]
  %156 = load ptr, ptr %155, align 8, !tbaa !50
  %157 = load ptr, ptr %156, align 8
  call void %157(ptr noundef nonnull align 8 dereferenceable(96) %155) #19
  %158 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %155, i64 1
  %159 = icmp eq ptr %158, %152
  br i1 %159, label %160, label %154, !llvm.loop !52

160:                                              ; preds = %154, %148
  %161 = load ptr, ptr %22, align 8, !tbaa !44
  %162 = icmp eq ptr %161, null
  br i1 %162, label %164, label %163

163:                                              ; preds = %160
  call void @_ZdlPv(ptr noundef %161) #20
  br label %164

164:                                              ; preds = %163, %160, %116
  %165 = phi { ptr, i32 } [ %117, %116 ], [ %149, %160 ], [ %149, %163 ]
  %166 = getelementptr inbounds %"class.dealii::PolynomialSpace", ptr %0, i64 0, i32 3
  %167 = load ptr, ptr %166, align 8, !tbaa !90
  %168 = icmp eq ptr %167, null
  br i1 %168, label %170, label %169

169:                                              ; preds = %164
  call void @_ZdlPv(ptr noundef %167) #20
  br label %170

170:                                              ; preds = %169, %164
  %171 = getelementptr inbounds %"class.dealii::PolynomialSpace", ptr %0, i64 0, i32 2
  %172 = load ptr, ptr %171, align 8, !tbaa !90
  %173 = icmp eq ptr %172, null
  br i1 %173, label %175, label %174

174:                                              ; preds = %170
  call void @_ZdlPv(ptr noundef %172) #20
  br label %175

175:                                              ; preds = %174, %170
  %176 = load ptr, ptr %0, align 8, !tbaa !44
  %177 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %178 = load ptr, ptr %177, align 8, !tbaa !49
  %179 = icmp eq ptr %176, %178
  br i1 %179, label %186, label %180

180:                                              ; preds = %175, %180
  %181 = phi ptr [ %184, %180 ], [ %176, %175 ]
  %182 = load ptr, ptr %181, align 8, !tbaa !50
  %183 = load ptr, ptr %182, align 8
  call void %183(ptr noundef nonnull align 8 dereferenceable(96) %181) #19
  %184 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %181, i64 1
  %185 = icmp eq ptr %184, %178
  br i1 %185, label %186, label %180, !llvm.loop !52

186:                                              ; preds = %180, %175
  %187 = load ptr, ptr %0, align 8, !tbaa !44
  %188 = icmp eq ptr %187, null
  br i1 %188, label %190, label %189

189:                                              ; preds = %186
  call void @_ZdlPv(ptr noundef %187) #20
  br label %190

190:                                              ; preds = %189, %186, %115
  %191 = phi { ptr, i32 } [ %100, %115 ], [ %165, %186 ], [ %165, %189 ]
  resume { ptr, i32 } %191
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

declare void @_ZN6dealii11Polynomials8Legendre23generate_complete_basisEj(ptr dead_on_unwind writable sret(%"class.std::vector") align 8, i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6dealii15PolynomialSpaceILi1EEC2INS_11Polynomials10PolynomialIdEEEERKSt6vectorIT_SaIS7_EE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !43 {
  %3 = load ptr, ptr %1, align 8, !tbaa !91
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !91
  %6 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  invoke void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE19_M_range_initializeIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEvT_SC_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %3, ptr %5)
          to label %11 unwind label %7

7:                                                ; preds = %2
  %8 = landingpad { ptr, i32 }
          cleanup
  %9 = load ptr, ptr %0, align 8, !tbaa !44
  %10 = icmp eq ptr %9, null
  br i1 %10, label %96, label %93

11:                                               ; preds = %2
  %12 = getelementptr inbounds %"class.dealii::PolynomialSpace", ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %6, align 8, !tbaa !49
  %14 = load ptr, ptr %0, align 8, !tbaa !44
  %15 = ptrtoint ptr %13 to i64
  %16 = ptrtoint ptr %14 to i64
  %17 = sub i64 %15, %16
  %18 = sdiv exact i64 %17, 96
  %19 = trunc i64 %18 to i32
  %20 = invoke noundef i32 @_ZN6dealii15PolynomialSpaceILi1EE14compute_n_polsEj(i32 noundef %19)
          to label %21 unwind label %63

21:                                               ; preds = %11
  store i32 %20, ptr %12, align 8, !tbaa !78
  %22 = getelementptr inbounds %"class.dealii::PolynomialSpace", ptr %0, i64 0, i32 2
  %23 = zext i32 %20 to i64
  %24 = getelementptr inbounds %"class.dealii::PolynomialSpace", ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %25 = getelementptr inbounds %"class.dealii::PolynomialSpace", ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 2
  %26 = icmp eq i32 %20, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %22, i8 0, i64 24, i1 false)
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = shl nuw nsw i64 %23, 2
  %29 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %28) #21
          to label %30 unwind label %65

30:                                               ; preds = %27, %21
  %31 = phi ptr [ null, %21 ], [ %29, %27 ]
  store ptr %31, ptr %22, align 8, !tbaa !90
  store ptr %31, ptr %24, align 8, !tbaa !92
  %32 = getelementptr inbounds i32, ptr %31, i64 %23
  store ptr %32, ptr %25, align 8, !tbaa !93
  br i1 %26, label %39, label %33

33:                                               ; preds = %30
  store i32 0, ptr %31, align 4, !tbaa !94
  %34 = getelementptr i32, ptr %31, i64 1
  %35 = icmp eq i32 %20, 1
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = shl nuw nsw i64 %23, 2
  %38 = add nsw i64 %37, -4
  tail call void @llvm.memset.p0.i64(ptr align 4 %34, i8 0, i64 %38, i1 false), !tbaa !94
  br label %39

39:                                               ; preds = %30, %33, %36
  %40 = phi ptr [ %31, %30 ], [ %34, %33 ], [ %32, %36 ]
  store ptr %40, ptr %24, align 8, !tbaa !92
  %41 = getelementptr inbounds %"class.dealii::PolynomialSpace", ptr %0, i64 0, i32 3
  %42 = getelementptr inbounds %"class.dealii::PolynomialSpace", ptr %0, i64 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %43 = getelementptr inbounds %"class.dealii::PolynomialSpace", ptr %0, i64 0, i32 3, i32 0, i32 0, i32 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %41, i8 0, i64 24, i1 false)
  br i1 %26, label %47, label %44

44:                                               ; preds = %39
  %45 = shl nuw nsw i64 %23, 2
  %46 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %45) #21
          to label %47 unwind label %67

47:                                               ; preds = %44, %39
  %48 = phi ptr [ null, %39 ], [ %46, %44 ]
  store ptr %48, ptr %41, align 8, !tbaa !90
  store ptr %48, ptr %42, align 8, !tbaa !92
  %49 = getelementptr inbounds i32, ptr %48, i64 %23
  store ptr %49, ptr %43, align 8, !tbaa !93
  br i1 %26, label %56, label %50

50:                                               ; preds = %47
  store i32 0, ptr %48, align 4, !tbaa !94
  %51 = getelementptr i32, ptr %48, i64 1
  %52 = icmp eq i32 %20, 1
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = shl nuw nsw i64 %23, 2
  %55 = add nsw i64 %54, -4
  tail call void @llvm.memset.p0.i64(ptr align 4 %51, i8 0, i64 %55, i1 false), !tbaa !94
  br label %56

56:                                               ; preds = %47, %50, %53
  %57 = phi ptr [ %48, %47 ], [ %51, %50 ], [ %49, %53 ]
  store ptr %57, ptr %42, align 8, !tbaa !92
  %58 = load i32, ptr %12, align 8, !tbaa !78
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  %61 = zext i32 %58 to i64
  br label %71

62:                                               ; preds = %71, %56
  ret void

63:                                               ; preds = %11
  %64 = landingpad { ptr, i32 }
          cleanup
  br label %79

65:                                               ; preds = %27
  %66 = landingpad { ptr, i32 }
          cleanup
  br label %79

67:                                               ; preds = %44
  %68 = landingpad { ptr, i32 }
          cleanup
  %69 = icmp eq ptr %31, null
  br i1 %69, label %79, label %70

70:                                               ; preds = %67
  tail call void @_ZdlPv(ptr noundef %31) #20
  br label %79

71:                                               ; preds = %60, %71
  %72 = phi i64 [ 0, %60 ], [ %77, %71 ]
  %73 = getelementptr inbounds i32, ptr %31, i64 %72
  %74 = trunc i64 %72 to i32
  store i32 %74, ptr %73, align 4, !tbaa !94
  %75 = getelementptr inbounds i32, ptr %48, i64 %72
  %76 = trunc i64 %72 to i32
  store i32 %76, ptr %75, align 4, !tbaa !94
  %77 = add nuw nsw i64 %72, 1
  %78 = icmp eq i64 %77, %61
  br i1 %78, label %62, label %71, !llvm.loop !95

79:                                               ; preds = %70, %67, %65, %63
  %80 = phi { ptr, i32 } [ %66, %65 ], [ %64, %63 ], [ %68, %67 ], [ %68, %70 ]
  %81 = load ptr, ptr %0, align 8, !tbaa !44
  %82 = load ptr, ptr %6, align 8, !tbaa !49
  %83 = icmp eq ptr %81, %82
  br i1 %83, label %90, label %84

84:                                               ; preds = %79, %84
  %85 = phi ptr [ %88, %84 ], [ %81, %79 ]
  %86 = load ptr, ptr %85, align 8, !tbaa !50
  %87 = load ptr, ptr %86, align 8
  tail call void %87(ptr noundef nonnull align 8 dereferenceable(96) %85) #19
  %88 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %85, i64 1
  %89 = icmp eq ptr %88, %82
  br i1 %89, label %90, label %84, !llvm.loop !52

90:                                               ; preds = %84, %79
  %91 = load ptr, ptr %0, align 8, !tbaa !44
  %92 = icmp eq ptr %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %90, %7
  %94 = phi ptr [ %9, %7 ], [ %91, %90 ]
  %95 = phi { ptr, i32 } [ %8, %7 ], [ %80, %90 ]
  tail call void @_ZdlPv(ptr noundef %94) #20
  br label %96

96:                                               ; preds = %93, %90, %7
  %97 = phi { ptr, i32 } [ %8, %7 ], [ %80, %90 ], [ %95, %93 ]
  resume { ptr, i32 } %97
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2EmRKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = icmp ugt i64 %1, 96076792050570581
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #22
  unreachable

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %8 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %9 = icmp eq i64 %1, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = mul nuw i64 %1, 96
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #21
  br label %13

13:                                               ; preds = %6, %10
  %14 = phi ptr [ null, %6 ], [ %12, %10 ]
  store ptr %14, ptr %0, align 8, !tbaa !44
  store ptr %14, ptr %7, align 8, !tbaa !49
  %15 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %14, i64 %1
  store ptr %15, ptr %8, align 8, !tbaa !96
  br i1 %9, label %42, label %16

16:                                               ; preds = %13, %19
  %17 = phi ptr [ %22, %19 ], [ %14, %13 ]
  %18 = phi i64 [ %21, %19 ], [ %1, %13 ]
  invoke void @_ZN6dealii11SubscriptorC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %17)
          to label %19 unwind label %24

19:                                               ; preds = %16
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials10PolynomialIdEE, i64 0, inrange i32 0, i64 2), ptr %17, align 8, !tbaa !50
  %20 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %17, i64 0, i32 1
  %21 = add i64 %18, -1
  %22 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %17, i64 1
  %23 = icmp eq i64 %21, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, i8 0, i64 24, i1 false)
  br i1 %23, label %42, label %16, !llvm.loop !97

24:                                               ; preds = %16
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  %27 = tail call ptr @__cxa_begin_catch(ptr %26) #19
  %28 = icmp eq ptr %17, %14
  br i1 %28, label %35, label %29

29:                                               ; preds = %24, %29
  %30 = phi ptr [ %33, %29 ], [ %14, %24 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !50
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(96) %30) #19
  %33 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %30, i64 1
  %34 = icmp eq ptr %33, %17
  br i1 %34, label %35, label %29, !llvm.loop !52

35:                                               ; preds = %29, %24
  invoke void @__cxa_rethrow() #22
          to label %41 unwind label %36

36:                                               ; preds = %35
  %37 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %44 unwind label %38

38:                                               ; preds = %36
  %39 = landingpad { ptr, i32 }
          catch ptr null
  %40 = extractvalue { ptr, i32 } %39, 0
  tail call void @__clang_call_terminate(ptr %40) #23
  unreachable

41:                                               ; preds = %35
  unreachable

42:                                               ; preds = %19, %13
  %43 = phi ptr [ %14, %13 ], [ %22, %19 ]
  store ptr %43, ptr %7, align 8, !tbaa !49
  ret void

44:                                               ; preds = %36
  %45 = load ptr, ptr %0, align 8, !tbaa !44
  %46 = icmp eq ptr %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  tail call void @_ZdlPv(ptr noundef %45) #20
  br label %48

48:                                               ; preds = %44, %47
  resume { ptr, i32 } %37
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef i32 @_ZN6dealii14PolynomialsBDMILi1EE14compute_n_polsEj(i32 noundef %0) local_unnamed_addr #5 comdat align 2 !prof !98 {
  %2 = add i32 %0, 1
  ret i32 %2
}

declare void @_ZN6dealii11Polynomials8MonomialIdEC1Ejd(ptr noundef nonnull align 8 dereferenceable(96), i32 noundef, double noundef) unnamed_addr #0

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii14PolynomialsBDMILi1EE7computeERKNS_5PointILi1EEERSt6vectorINS_6TensorILi1ELi1EEESaIS8_EERS6_INS7_ILi2ELi1EEESaISC_EERS6_INS7_ILi3ELi1EEESaISG_EE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !43 {
  %6 = alloca %"class.std::vector.5", align 8
  %7 = alloca %"class.std::vector.5", align 8
  %8 = getelementptr inbounds %"class.dealii::PolynomialSpace", ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !78
  %10 = getelementptr inbounds %"class.dealii::PolynomialsBDM", ptr %0, i64 0, i32 3
  %11 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 1>, std::allocator<dealii::Tensor<1, 1>>>::_Vector_impl_data", ptr %2, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !85
  %13 = load ptr, ptr %2, align 8, !tbaa !84
  %14 = icmp eq ptr %12, %13
  %15 = zext i32 %9 to i64
  %16 = select i1 %14, i64 0, i64 %15
  %17 = getelementptr inbounds %"class.dealii::PolynomialsBDM", ptr %0, i64 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !80
  %19 = load ptr, ptr %10, align 8, !tbaa !79
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
  store ptr %30, ptr %17, align 8, !tbaa !80
  br label %33

33:                                               ; preds = %25, %27, %29, %32
  %34 = getelementptr inbounds %"class.dealii::PolynomialsBDM", ptr %0, i64 0, i32 4
  %35 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<2, 1>, std::allocator<dealii::Tensor<2, 1>>>::_Vector_impl_data", ptr %3, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !88
  %37 = load ptr, ptr %3, align 8, !tbaa !87
  %38 = icmp eq ptr %36, %37
  %39 = select i1 %38, i64 0, i64 %15
  %40 = getelementptr inbounds %"class.dealii::PolynomialsBDM", ptr %0, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !85
  %42 = load ptr, ptr %34, align 8, !tbaa !84
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
  store ptr %53, ptr %40, align 8, !tbaa !85
  br label %56

56:                                               ; preds = %48, %50, %52, %55
  %57 = getelementptr inbounds %"class.dealii::PolynomialsBDM", ptr %0, i64 0, i32 5
  %58 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<3, 1>, std::allocator<dealii::Tensor<3, 1>>>::_Vector_impl_data", ptr %4, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !99
  %60 = load ptr, ptr %4, align 8, !tbaa !101
  %61 = icmp eq ptr %59, %60
  %62 = select i1 %61, i64 0, i64 %15
  %63 = getelementptr inbounds %"class.dealii::PolynomialsBDM", ptr %0, i64 0, i32 5, i32 0, i32 0, i32 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !88
  %65 = load ptr, ptr %57, align 8, !tbaa !87
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
  %76 = getelementptr inbounds %"class.dealii::Tensor.29", ptr %65, i64 %62
  %77 = icmp eq ptr %64, %76
  br i1 %77, label %79, label %78

78:                                               ; preds = %75
  store ptr %76, ptr %63, align 8, !tbaa !88
  br label %79

79:                                               ; preds = %71, %73, %75, %78
  tail call void @_ZNK6dealii15PolynomialSpaceILi1EE7computeERKNS_5PointILi1EEERSt6vectorIdSaIdEERS6_INS_6TensorILi1ELi1EEESaISB_EERS6_INSA_ILi2ELi1EEESaISF_EE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %34, ptr noundef nonnull align 8 dereferenceable(24) %57)
  %80 = load ptr, ptr %2, align 8, !tbaa !91
  %81 = load ptr, ptr %11, align 8, !tbaa !91
  %82 = icmp eq ptr %80, %81
  br i1 %82, label %90, label %83

83:                                               ; preds = %79
  %84 = ptrtoint ptr %81 to i64
  %85 = ptrtoint ptr %80 to i64
  %86 = add i64 %84, -8
  %87 = sub i64 %86, %85
  %88 = and i64 %87, -8
  %89 = add i64 %88, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %80, i8 0, i64 %89, i1 false), !tbaa !82
  br label %90

90:                                               ; preds = %83, %79
  %91 = load ptr, ptr %17, align 8, !tbaa !80
  %92 = load ptr, ptr %10, align 8, !tbaa !79
  %93 = ptrtoint ptr %91 to i64
  %94 = ptrtoint ptr %92 to i64
  %95 = sub i64 %93, %94
  %96 = ashr exact i64 %95, 3
  %97 = icmp eq ptr %91, %92
  br i1 %97, label %98, label %114

98:                                               ; preds = %114, %90
  %99 = load ptr, ptr %3, align 8, !tbaa !91
  %100 = load ptr, ptr %35, align 8, !tbaa !91
  %101 = icmp eq ptr %99, %100
  br i1 %101, label %106, label %102

102:                                              ; preds = %98, %102
  %103 = phi ptr [ %104, %102 ], [ %99, %98 ]
  store double 0.000000e+00, ptr %103, align 8, !tbaa !82
  %104 = getelementptr inbounds %"class.dealii::Tensor.29", ptr %103, i64 1
  %105 = icmp eq ptr %104, %100
  br i1 %105, label %106, label %102, !llvm.loop !102

106:                                              ; preds = %102, %98
  %107 = load ptr, ptr %40, align 8, !tbaa !85
  %108 = load ptr, ptr %34, align 8, !tbaa !84
  %109 = ptrtoint ptr %107 to i64
  %110 = ptrtoint ptr %108 to i64
  %111 = sub i64 %109, %110
  %112 = ashr exact i64 %111, 3
  %113 = icmp eq ptr %107, %108
  br i1 %113, label %123, label %139

114:                                              ; preds = %90, %114
  %115 = phi i64 [ %121, %114 ], [ 0, %90 ]
  %116 = phi i32 [ %120, %114 ], [ 0, %90 ]
  %117 = getelementptr inbounds double, ptr %92, i64 %115
  %118 = load double, ptr %117, align 8, !tbaa !82
  %119 = getelementptr inbounds %"class.dealii::Tensor", ptr %80, i64 %115
  store double %118, ptr %119, align 8, !tbaa !82
  %120 = add i32 %116, 1
  %121 = zext i32 %120 to i64
  %122 = icmp ugt i64 %96, %121
  br i1 %122, label %114, label %98, !llvm.loop !103

123:                                              ; preds = %139, %106
  %124 = load ptr, ptr %4, align 8, !tbaa !91
  %125 = load ptr, ptr %58, align 8, !tbaa !91
  %126 = icmp eq ptr %124, %125
  br i1 %126, label %131, label %127

127:                                              ; preds = %123, %127
  %128 = phi ptr [ %129, %127 ], [ %124, %123 ]
  store double 0.000000e+00, ptr %128, align 8, !tbaa !82
  %129 = getelementptr inbounds %"class.dealii::Tensor.31", ptr %128, i64 1
  %130 = icmp eq ptr %129, %125
  br i1 %130, label %131, label %127, !llvm.loop !104

131:                                              ; preds = %127, %123
  %132 = load ptr, ptr %63, align 8, !tbaa !88
  %133 = load ptr, ptr %57, align 8, !tbaa !87
  %134 = ptrtoint ptr %132 to i64
  %135 = ptrtoint ptr %133 to i64
  %136 = sub i64 %134, %135
  %137 = ashr exact i64 %136, 3
  %138 = icmp eq ptr %132, %133
  br i1 %138, label %148, label %154

139:                                              ; preds = %106, %139
  %140 = phi i64 [ %146, %139 ], [ 0, %106 ]
  %141 = phi i32 [ %145, %139 ], [ 0, %106 ]
  %142 = getelementptr inbounds %"class.dealii::Tensor", ptr %108, i64 %140
  %143 = getelementptr inbounds %"class.dealii::Tensor.29", ptr %99, i64 %140
  %144 = load double, ptr %142, align 8, !tbaa !82
  store double %144, ptr %143, align 8, !tbaa !82
  %145 = add i32 %141, 1
  %146 = zext i32 %145 to i64
  %147 = icmp ugt i64 %112, %146
  br i1 %147, label %139, label %123, !llvm.loop !105

148:                                              ; preds = %154, %131
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #19
  %149 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %6, i64 0, i32 1
  %150 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %6, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %151 = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #21
  store ptr %151, ptr %6, align 8, !tbaa !79
  store ptr %151, ptr %149, align 8, !tbaa !80
  %152 = getelementptr inbounds double, ptr %151, i64 3
  store ptr %152, ptr %150, align 8, !tbaa !81
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %151, i8 0, i64 24, i1 false)
  store ptr %152, ptr %149, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %153 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #21
          to label %163 unwind label %199

154:                                              ; preds = %131, %154
  %155 = phi i64 [ %161, %154 ], [ 0, %131 ]
  %156 = phi i32 [ %160, %154 ], [ 0, %131 ]
  %157 = getelementptr inbounds %"class.dealii::Tensor.29", ptr %133, i64 %155
  %158 = getelementptr inbounds %"class.dealii::Tensor.31", ptr %124, i64 %155
  %159 = load double, ptr %157, align 8, !tbaa !82
  store double %159, ptr %158, align 8, !tbaa !82
  %160 = add i32 %156, 1
  %161 = zext i32 %160 to i64
  %162 = icmp ugt i64 %137, %161
  br i1 %162, label %154, label %148, !llvm.loop !106

163:                                              ; preds = %148
  %164 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %7, i64 0, i32 1
  %165 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %7, i64 0, i32 2
  store ptr %153, ptr %7, align 8, !tbaa !79
  store ptr %153, ptr %164, align 8, !tbaa !80
  %166 = getelementptr inbounds double, ptr %153, i64 3
  store ptr %166, ptr %165, align 8, !tbaa !81
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %153, i8 0, i64 24, i1 false)
  store ptr %166, ptr %164, align 8, !tbaa !80
  %167 = getelementptr inbounds %"class.dealii::PolynomialsBDM", ptr %0, i64 0, i32 1
  %168 = load ptr, ptr %167, align 8, !tbaa !44
  %169 = load double, ptr %1, align 8, !tbaa !82
  invoke void @_ZNK6dealii11Polynomials10PolynomialIdE5valueEdRSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(96) %168, double noundef %169, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %170 unwind label %201

170:                                              ; preds = %163
  %171 = load ptr, ptr %167, align 8, !tbaa !44
  %172 = getelementptr inbounds [1 x double], ptr %1, i64 0, i64 1
  %173 = load double, ptr %172, align 8, !tbaa !82
  invoke void @_ZNK6dealii11Polynomials10PolynomialIdE5valueEdRSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(96) %171, double noundef %173, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %174 unwind label %201

174:                                              ; preds = %170
  %175 = load ptr, ptr %11, align 8, !tbaa !85
  %176 = load ptr, ptr %2, align 8, !tbaa !84
  %177 = icmp eq ptr %175, %176
  br i1 %177, label %206, label %178

178:                                              ; preds = %174
  %179 = load ptr, ptr %6, align 8, !tbaa !79
  %180 = load double, ptr %179, align 8, !tbaa !82
  %181 = getelementptr inbounds %"class.dealii::Tensor", ptr %176, i64 %15
  store double %180, ptr %181, align 8, !tbaa !82
  %182 = load double, ptr %172, align 8, !tbaa !82
  %183 = fneg double %182
  %184 = getelementptr inbounds double, ptr %179, i64 1
  %185 = load double, ptr %184, align 8, !tbaa !82
  %186 = fmul double %185, %183
  %187 = getelementptr inbounds [1 x double], ptr %181, i64 0, i64 1
  store double %186, ptr %187, align 8, !tbaa !82
  %188 = load double, ptr %1, align 8, !tbaa !82
  %189 = fneg double %188
  %190 = load ptr, ptr %7, align 8, !tbaa !79
  %191 = getelementptr inbounds double, ptr %190, i64 1
  %192 = load double, ptr %191, align 8, !tbaa !82
  %193 = fmul double %192, %189
  %194 = add i32 %9, 1
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds %"class.dealii::Tensor", ptr %176, i64 %195
  store double %193, ptr %196, align 8, !tbaa !82
  %197 = load double, ptr %190, align 8, !tbaa !82
  %198 = getelementptr inbounds [1 x double], ptr %196, i64 0, i64 1
  store double %197, ptr %198, align 8, !tbaa !82
  br label %206

199:                                              ; preds = %148
  %200 = landingpad { ptr, i32 }
          cleanup
  br label %243

201:                                              ; preds = %170, %163
  %202 = landingpad { ptr, i32 }
          cleanup
  %203 = load ptr, ptr %7, align 8, !tbaa !79
  %204 = icmp eq ptr %203, null
  br i1 %204, label %243, label %205

205:                                              ; preds = %201
  call void @_ZdlPv(ptr noundef %203) #20
  br label %243

206:                                              ; preds = %178, %174
  %207 = load ptr, ptr %35, align 8, !tbaa !88
  %208 = load ptr, ptr %3, align 8, !tbaa !87
  %209 = icmp eq ptr %207, %208
  br i1 %209, label %234, label %210

210:                                              ; preds = %206
  %211 = load ptr, ptr %6, align 8, !tbaa !79
  %212 = getelementptr inbounds double, ptr %211, i64 1
  %213 = load double, ptr %212, align 8, !tbaa !82
  %214 = getelementptr inbounds %"class.dealii::Tensor.29", ptr %208, i64 %15
  store double %213, ptr %214, align 8, !tbaa !82
  %215 = getelementptr inbounds [1 x double], ptr %214, i64 0, i64 1
  store double 0.000000e+00, ptr %215, align 8, !tbaa !82
  %216 = load double, ptr %172, align 8, !tbaa !82
  %217 = fneg double %216
  %218 = getelementptr inbounds double, ptr %211, i64 2
  %219 = load double, ptr %218, align 8, !tbaa !82
  %220 = fmul double %219, %217
  store double %220, ptr %215, align 8, !tbaa !82
  %221 = load double, ptr %212, align 8, !tbaa !82
  %222 = fneg double %221
  %223 = getelementptr inbounds [1 x %"class.dealii::Tensor"], ptr %214, i64 2
  store double %222, ptr %223, align 8, !tbaa !82
  %224 = load ptr, ptr %7, align 8, !tbaa !79
  %225 = getelementptr inbounds double, ptr %224, i64 1
  %226 = load double, ptr %225, align 8, !tbaa !82
  %227 = fneg double %226
  %228 = add i32 %9, 1
  %229 = zext i32 %228 to i64
  %230 = getelementptr inbounds %"class.dealii::Tensor.29", ptr %208, i64 %229
  store double %227, ptr %230, align 8, !tbaa !82
  %231 = getelementptr inbounds [1 x double], ptr %230, i64 0, i64 1
  store double 0.000000e+00, ptr %231, align 8, !tbaa !82
  %232 = load double, ptr %225, align 8, !tbaa !82
  %233 = getelementptr inbounds [1 x %"class.dealii::Tensor"], ptr %230, i64 2
  store double %232, ptr %233, align 8, !tbaa !82
  br label %234

234:                                              ; preds = %210, %206
  %235 = load ptr, ptr %7, align 8, !tbaa !79
  %236 = icmp eq ptr %235, null
  br i1 %236, label %238, label %237

237:                                              ; preds = %234
  call void @_ZdlPv(ptr noundef %235) #20
  br label %238

238:                                              ; preds = %234, %237
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #19
  %239 = load ptr, ptr %6, align 8, !tbaa !79
  %240 = icmp eq ptr %239, null
  br i1 %240, label %242, label %241

241:                                              ; preds = %238
  call void @_ZdlPv(ptr noundef %239) #20
  br label %242

242:                                              ; preds = %238, %241
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #19
  ret void

243:                                              ; preds = %205, %201, %199
  %244 = phi { ptr, i32 } [ %200, %199 ], [ %202, %201 ], [ %202, %205 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #19
  %245 = load ptr, ptr %6, align 8, !tbaa !79
  %246 = icmp eq ptr %245, null
  br i1 %246, label %248, label %247

247:                                              ; preds = %243
  call void @_ZdlPv(ptr noundef %245) #20
  br label %248

248:                                              ; preds = %247, %243
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #19
  resume { ptr, i32 } %244
}

declare void @_ZNK6dealii15PolynomialSpaceILi1EE7computeERKNS_5PointILi1EEERSt6vectorIdSaIdEERS6_INS_6TensorILi1ELi1EEESaISB_EERS6_INSA_ILi2ELi1EEESaISF_EE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #0

declare void @_ZNK6dealii11Polynomials10PolynomialIdE5valueEdRSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(96), double noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #0

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii14PolynomialsBDMILi1EE1nEv(ptr noundef nonnull align 8 dereferenceable(184) %0) local_unnamed_addr #6 comdat align 2 !prof !98 {
  %2 = getelementptr inbounds %"class.dealii::PolynomialsBDM", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !55
  ret i32 %3
}

; Function Attrs: cold inlinehint mustprogress uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii14PolynomialsBDMILi1EE6degreeEv(ptr noundef nonnull align 8 dereferenceable(184) %0) local_unnamed_addr #7 comdat align 2 !prof !98 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = load ptr, ptr %0, align 8, !tbaa !44
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 96
  %9 = trunc i64 %8 to i32
  ret i32 %9
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii14PolynomialsBDMILi2EEC2Ej(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %1) unnamed_addr #3 comdat($_ZN6dealii14PolynomialsBDMILi2EEC5Ej) align 2 personality ptr @__gxx_personality_v0 !annotation !43 {
  %3 = alloca %"class.std::vector", align 8
  %4 = alloca %"class.std::allocator", align 1
  %5 = alloca %"class.dealii::Polynomials::Monomial", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  call void @_ZN6dealii11Polynomials8Legendre23generate_complete_basisEj(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %3, i32 noundef %1)
  invoke void @_ZN6dealii15PolynomialSpaceILi2EEC2INS_11Polynomials10PolynomialIdEEEERKSt6vectorIT_SaIS7_EE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %6 unwind label %102

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !tbaa !44
  %8 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %3, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  %10 = icmp eq ptr %7, %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %6, %11
  %12 = phi ptr [ %15, %11 ], [ %7, %6 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !50
  %14 = load ptr, ptr %13, align 8
  call void %14(ptr noundef nonnull align 8 dereferenceable(96) %12) #19
  %15 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %12, i64 1
  %16 = icmp eq ptr %15, %9
  br i1 %16, label %17, label %11, !llvm.loop !52

17:                                               ; preds = %11, %6
  %18 = load ptr, ptr %3, align 8, !tbaa !44
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  call void @_ZdlPv(ptr noundef %18) #20
  br label %21

21:                                               ; preds = %17, %20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  %22 = getelementptr inbounds %"class.dealii::PolynomialsBDM.32", ptr %0, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #19
  invoke void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2EmRKS4_(ptr noundef nonnull align 8 dereferenceable(24) %22, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %23 unwind label %119

23:                                               ; preds = %21
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #19
  %24 = getelementptr inbounds %"class.dealii::PolynomialsBDM.32", ptr %0, i64 0, i32 2
  %25 = add i32 %1, 1
  %26 = add i32 %1, 2
  %27 = mul i32 %25, %26
  %28 = add i32 %27, 2
  store i32 %28, ptr %24, align 8, !tbaa !107
  %29 = getelementptr inbounds %"class.dealii::PolynomialsBDM.32", ptr %0, i64 0, i32 3
  %30 = getelementptr inbounds %"class.dealii::PolynomialSpace.33", ptr %0, i64 0, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !118
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %"class.dealii::PolynomialsBDM.32", ptr %0, i64 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %34 = getelementptr inbounds %"class.dealii::PolynomialsBDM.32", ptr %0, i64 0, i32 3, i32 0, i32 0, i32 0, i32 2
  %35 = icmp eq i32 %31, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %29, i8 0, i64 24, i1 false)
  br i1 %35, label %39, label %36

36:                                               ; preds = %23
  %37 = shl nuw nsw i64 %32, 3
  %38 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %37) #21
          to label %39 unwind label %121

39:                                               ; preds = %36, %23
  %40 = phi ptr [ null, %23 ], [ %38, %36 ]
  store ptr %40, ptr %29, align 8, !tbaa !79
  store ptr %40, ptr %33, align 8, !tbaa !80
  %41 = getelementptr inbounds double, ptr %40, i64 %32
  store ptr %41, ptr %34, align 8, !tbaa !81
  br i1 %35, label %48, label %42

42:                                               ; preds = %39
  store double 0.000000e+00, ptr %40, align 8, !tbaa !82
  %43 = getelementptr double, ptr %40, i64 1
  %44 = icmp eq i32 %31, 1
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = shl nuw nsw i64 %32, 3
  %47 = add nsw i64 %46, -8
  call void @llvm.memset.p0.i64(ptr align 8 %43, i8 0, i64 %47, i1 false), !tbaa !82
  br label %48

48:                                               ; preds = %39, %42, %45
  %49 = phi ptr [ %40, %39 ], [ %43, %42 ], [ %41, %45 ]
  store ptr %49, ptr %33, align 8, !tbaa !80
  %50 = getelementptr inbounds %"class.dealii::PolynomialsBDM.32", ptr %0, i64 0, i32 4
  %51 = getelementptr inbounds %"class.dealii::PolynomialsBDM.32", ptr %0, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %52 = getelementptr inbounds %"class.dealii::PolynomialsBDM.32", ptr %0, i64 0, i32 4, i32 0, i32 0, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %50, i8 0, i64 24, i1 false)
  br i1 %35, label %55, label %53

53:                                               ; preds = %48
  %54 = invoke noundef ptr @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %50, i64 noundef %32, ptr noundef null)
          to label %55 unwind label %123

55:                                               ; preds = %53, %48
  %56 = phi ptr [ null, %48 ], [ %54, %53 ]
  store ptr %56, ptr %50, align 8, !tbaa !119
  store ptr %56, ptr %51, align 8, !tbaa !120
  %57 = getelementptr inbounds %"class.dealii::Tensor.50", ptr %56, i64 %32
  store ptr %57, ptr %52, align 8, !tbaa !121
  br i1 %35, label %61, label %58

58:                                               ; preds = %55
  %59 = shl nuw nsw i64 %32, 4
  call void @llvm.memset.p0.i64(ptr align 8 %56, i8 0, i64 %59, i1 false), !tbaa !82
  %60 = getelementptr i8, ptr %56, i64 %59
  br label %61

61:                                               ; preds = %55, %58
  %62 = phi ptr [ %56, %55 ], [ %60, %58 ]
  store ptr %62, ptr %51, align 8, !tbaa !120
  %63 = getelementptr inbounds %"class.dealii::PolynomialsBDM.32", ptr %0, i64 0, i32 5
  %64 = load i32, ptr %30, align 8, !tbaa !118
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %"class.dealii::PolynomialsBDM.32", ptr %0, i64 0, i32 5, i32 0, i32 0, i32 0, i32 1
  %67 = getelementptr inbounds %"class.dealii::PolynomialsBDM.32", ptr %0, i64 0, i32 5, i32 0, i32 0, i32 0, i32 2
  %68 = icmp eq i32 %64, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %63, i8 0, i64 24, i1 false)
  br i1 %68, label %71, label %69

69:                                               ; preds = %61
  %70 = invoke noundef ptr @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi2EEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %63, i64 noundef %65, ptr noundef null)
          to label %71 unwind label %125

71:                                               ; preds = %69, %61
  %72 = phi ptr [ null, %61 ], [ %70, %69 ]
  store ptr %72, ptr %63, align 8, !tbaa !122
  store ptr %72, ptr %66, align 8, !tbaa !123
  %73 = getelementptr inbounds %"class.dealii::Tensor.53", ptr %72, i64 %65
  store ptr %73, ptr %67, align 8, !tbaa !124
  br i1 %68, label %77, label %74

74:                                               ; preds = %71
  %75 = shl nuw nsw i64 %65, 5
  call void @llvm.memset.p0.i64(ptr align 8 %72, i8 0, i64 %75, i1 false), !tbaa !82
  %76 = getelementptr i8, ptr %72, i64 %75
  br label %77

77:                                               ; preds = %71, %74
  %78 = phi ptr [ %72, %71 ], [ %76, %74 ]
  store ptr %78, ptr %66, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %5) #19
  invoke void @_ZN6dealii11Polynomials8MonomialIdEC1Ejd(ptr noundef nonnull align 8 dereferenceable(96) %5, i32 noundef %25, double noundef 1.000000e+00)
          to label %79 unwind label %127

79:                                               ; preds = %77
  %80 = load ptr, ptr %22, align 8, !tbaa !44
  %81 = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN6dealii11SubscriptoraSERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %80, ptr noundef nonnull align 8 dereferenceable(72) %5)
          to label %82 unwind label %129

82:                                               ; preds = %79
  %83 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %80, i64 0, i32 1
  %84 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %5, i64 0, i32 1
  %85 = load ptr, ptr %83, align 8, !tbaa !79
  %86 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %80, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !80
  %88 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %80, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !81
  %90 = load ptr, ptr %84, align 8, !tbaa !79
  store ptr %90, ptr %83, align 8, !tbaa !79
  %91 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %5, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !80
  store ptr %92, ptr %86, align 8, !tbaa !80
  %93 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %5, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !81
  store ptr %94, ptr %88, align 8, !tbaa !81
  store ptr %85, ptr %84, align 8, !tbaa !79
  store ptr %87, ptr %91, align 8, !tbaa !80
  store ptr %89, ptr %93, align 8, !tbaa !81
  %95 = icmp eq ptr %85, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %84, i8 0, i64 24, i1 false)
  br i1 %95, label %97, label %96

96:                                               ; preds = %82
  call void @_ZdlPv(ptr noundef %85) #20
  br label %97

97:                                               ; preds = %96, %82
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials10PolynomialIdEE, i64 0, inrange i32 0, i64 2), ptr %5, align 8, !tbaa !50
  %98 = load ptr, ptr %84, align 8, !tbaa !79
  %99 = icmp eq ptr %98, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %97
  call void @_ZdlPv(ptr noundef %98) #20
  br label %101

101:                                              ; preds = %97, %100
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %5) #19
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %5) #19
  ret void

102:                                              ; preds = %2
  %103 = landingpad { ptr, i32 }
          cleanup
  %104 = load ptr, ptr %3, align 8, !tbaa !44
  %105 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %3, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !49
  %107 = icmp eq ptr %104, %106
  br i1 %107, label %114, label %108

108:                                              ; preds = %102, %108
  %109 = phi ptr [ %112, %108 ], [ %104, %102 ]
  %110 = load ptr, ptr %109, align 8, !tbaa !50
  %111 = load ptr, ptr %110, align 8
  call void %111(ptr noundef nonnull align 8 dereferenceable(96) %109) #19
  %112 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %109, i64 1
  %113 = icmp eq ptr %112, %106
  br i1 %113, label %114, label %108, !llvm.loop !52

114:                                              ; preds = %108, %102
  %115 = load ptr, ptr %3, align 8, !tbaa !44
  %116 = icmp eq ptr %115, null
  br i1 %116, label %118, label %117

117:                                              ; preds = %114
  call void @_ZdlPv(ptr noundef %115) #20
  br label %118

118:                                              ; preds = %114, %117
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  br label %193

119:                                              ; preds = %21
  %120 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #19
  br label %167

121:                                              ; preds = %36
  %122 = landingpad { ptr, i32 }
          cleanup
  br label %151

123:                                              ; preds = %53
  %124 = landingpad { ptr, i32 }
          cleanup
  br label %146

125:                                              ; preds = %69
  %126 = landingpad { ptr, i32 }
          cleanup
  br label %141

127:                                              ; preds = %77
  %128 = landingpad { ptr, i32 }
          cleanup
  br label %136

129:                                              ; preds = %79
  %130 = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials10PolynomialIdEE, i64 0, inrange i32 0, i64 2), ptr %5, align 8, !tbaa !50
  %131 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %5, i64 0, i32 1
  %132 = load ptr, ptr %131, align 8, !tbaa !79
  %133 = icmp eq ptr %132, null
  br i1 %133, label %135, label %134

134:                                              ; preds = %129
  call void @_ZdlPv(ptr noundef %132) #20
  br label %135

135:                                              ; preds = %129, %134
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %5) #19
  br label %136

136:                                              ; preds = %135, %127
  %137 = phi { ptr, i32 } [ %130, %135 ], [ %128, %127 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %5) #19
  %138 = load ptr, ptr %63, align 8, !tbaa !122
  %139 = icmp eq ptr %138, null
  br i1 %139, label %141, label %140

140:                                              ; preds = %136
  call void @_ZdlPv(ptr noundef %138) #20
  br label %141

141:                                              ; preds = %140, %136, %125
  %142 = phi { ptr, i32 } [ %126, %125 ], [ %137, %136 ], [ %137, %140 ]
  %143 = load ptr, ptr %50, align 8, !tbaa !119
  %144 = icmp eq ptr %143, null
  br i1 %144, label %146, label %145

145:                                              ; preds = %141
  call void @_ZdlPv(ptr noundef %143) #20
  br label %146

146:                                              ; preds = %145, %141, %123
  %147 = phi { ptr, i32 } [ %124, %123 ], [ %142, %141 ], [ %142, %145 ]
  %148 = load ptr, ptr %29, align 8, !tbaa !79
  %149 = icmp eq ptr %148, null
  br i1 %149, label %151, label %150

150:                                              ; preds = %146
  call void @_ZdlPv(ptr noundef %148) #20
  br label %151

151:                                              ; preds = %150, %146, %121
  %152 = phi { ptr, i32 } [ %122, %121 ], [ %147, %146 ], [ %147, %150 ]
  %153 = load ptr, ptr %22, align 8, !tbaa !44
  %154 = getelementptr inbounds %"class.dealii::PolynomialsBDM.32", ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %155 = load ptr, ptr %154, align 8, !tbaa !49
  %156 = icmp eq ptr %153, %155
  br i1 %156, label %163, label %157

157:                                              ; preds = %151, %157
  %158 = phi ptr [ %161, %157 ], [ %153, %151 ]
  %159 = load ptr, ptr %158, align 8, !tbaa !50
  %160 = load ptr, ptr %159, align 8
  call void %160(ptr noundef nonnull align 8 dereferenceable(96) %158) #19
  %161 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %158, i64 1
  %162 = icmp eq ptr %161, %155
  br i1 %162, label %163, label %157, !llvm.loop !52

163:                                              ; preds = %157, %151
  %164 = load ptr, ptr %22, align 8, !tbaa !44
  %165 = icmp eq ptr %164, null
  br i1 %165, label %167, label %166

166:                                              ; preds = %163
  call void @_ZdlPv(ptr noundef %164) #20
  br label %167

167:                                              ; preds = %166, %163, %119
  %168 = phi { ptr, i32 } [ %120, %119 ], [ %152, %163 ], [ %152, %166 ]
  %169 = getelementptr inbounds %"class.dealii::PolynomialSpace.33", ptr %0, i64 0, i32 3
  %170 = load ptr, ptr %169, align 8, !tbaa !90
  %171 = icmp eq ptr %170, null
  br i1 %171, label %173, label %172

172:                                              ; preds = %167
  call void @_ZdlPv(ptr noundef %170) #20
  br label %173

173:                                              ; preds = %172, %167
  %174 = getelementptr inbounds %"class.dealii::PolynomialSpace.33", ptr %0, i64 0, i32 2
  %175 = load ptr, ptr %174, align 8, !tbaa !90
  %176 = icmp eq ptr %175, null
  br i1 %176, label %178, label %177

177:                                              ; preds = %173
  call void @_ZdlPv(ptr noundef %175) #20
  br label %178

178:                                              ; preds = %177, %173
  %179 = load ptr, ptr %0, align 8, !tbaa !44
  %180 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %181 = load ptr, ptr %180, align 8, !tbaa !49
  %182 = icmp eq ptr %179, %181
  br i1 %182, label %189, label %183

183:                                              ; preds = %178, %183
  %184 = phi ptr [ %187, %183 ], [ %179, %178 ]
  %185 = load ptr, ptr %184, align 8, !tbaa !50
  %186 = load ptr, ptr %185, align 8
  call void %186(ptr noundef nonnull align 8 dereferenceable(96) %184) #19
  %187 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %184, i64 1
  %188 = icmp eq ptr %187, %181
  br i1 %188, label %189, label %183, !llvm.loop !52

189:                                              ; preds = %183, %178
  %190 = load ptr, ptr %0, align 8, !tbaa !44
  %191 = icmp eq ptr %190, null
  br i1 %191, label %193, label %192

192:                                              ; preds = %189
  call void @_ZdlPv(ptr noundef %190) #20
  br label %193

193:                                              ; preds = %192, %189, %118
  %194 = phi { ptr, i32 } [ %103, %118 ], [ %168, %189 ], [ %168, %192 ]
  resume { ptr, i32 } %194
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6dealii15PolynomialSpaceILi2EEC2INS_11Polynomials10PolynomialIdEEEERKSt6vectorIT_SaIS7_EE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !43 {
  %3 = load ptr, ptr %1, align 8, !tbaa !91
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !91
  %6 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  invoke void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE19_M_range_initializeIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEvT_SC_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %3, ptr %5)
          to label %11 unwind label %7

7:                                                ; preds = %2
  %8 = landingpad { ptr, i32 }
          cleanup
  %9 = load ptr, ptr %0, align 8, !tbaa !44
  %10 = icmp eq ptr %9, null
  br i1 %10, label %96, label %93

11:                                               ; preds = %2
  %12 = getelementptr inbounds %"class.dealii::PolynomialSpace.33", ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %6, align 8, !tbaa !49
  %14 = load ptr, ptr %0, align 8, !tbaa !44
  %15 = ptrtoint ptr %13 to i64
  %16 = ptrtoint ptr %14 to i64
  %17 = sub i64 %15, %16
  %18 = sdiv exact i64 %17, 96
  %19 = trunc i64 %18 to i32
  %20 = invoke noundef i32 @_ZN6dealii15PolynomialSpaceILi2EE14compute_n_polsEj(i32 noundef %19)
          to label %21 unwind label %63

21:                                               ; preds = %11
  store i32 %20, ptr %12, align 8, !tbaa !118
  %22 = getelementptr inbounds %"class.dealii::PolynomialSpace.33", ptr %0, i64 0, i32 2
  %23 = zext i32 %20 to i64
  %24 = getelementptr inbounds %"class.dealii::PolynomialSpace.33", ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %25 = getelementptr inbounds %"class.dealii::PolynomialSpace.33", ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 2
  %26 = icmp eq i32 %20, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %22, i8 0, i64 24, i1 false)
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = shl nuw nsw i64 %23, 2
  %29 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %28) #21
          to label %30 unwind label %65

30:                                               ; preds = %27, %21
  %31 = phi ptr [ null, %21 ], [ %29, %27 ]
  store ptr %31, ptr %22, align 8, !tbaa !90
  store ptr %31, ptr %24, align 8, !tbaa !92
  %32 = getelementptr inbounds i32, ptr %31, i64 %23
  store ptr %32, ptr %25, align 8, !tbaa !93
  br i1 %26, label %39, label %33

33:                                               ; preds = %30
  store i32 0, ptr %31, align 4, !tbaa !94
  %34 = getelementptr i32, ptr %31, i64 1
  %35 = icmp eq i32 %20, 1
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = shl nuw nsw i64 %23, 2
  %38 = add nsw i64 %37, -4
  tail call void @llvm.memset.p0.i64(ptr align 4 %34, i8 0, i64 %38, i1 false), !tbaa !94
  br label %39

39:                                               ; preds = %30, %33, %36
  %40 = phi ptr [ %31, %30 ], [ %34, %33 ], [ %32, %36 ]
  store ptr %40, ptr %24, align 8, !tbaa !92
  %41 = getelementptr inbounds %"class.dealii::PolynomialSpace.33", ptr %0, i64 0, i32 3
  %42 = getelementptr inbounds %"class.dealii::PolynomialSpace.33", ptr %0, i64 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %43 = getelementptr inbounds %"class.dealii::PolynomialSpace.33", ptr %0, i64 0, i32 3, i32 0, i32 0, i32 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %41, i8 0, i64 24, i1 false)
  br i1 %26, label %47, label %44

44:                                               ; preds = %39
  %45 = shl nuw nsw i64 %23, 2
  %46 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %45) #21
          to label %47 unwind label %67

47:                                               ; preds = %44, %39
  %48 = phi ptr [ null, %39 ], [ %46, %44 ]
  store ptr %48, ptr %41, align 8, !tbaa !90
  store ptr %48, ptr %42, align 8, !tbaa !92
  %49 = getelementptr inbounds i32, ptr %48, i64 %23
  store ptr %49, ptr %43, align 8, !tbaa !93
  br i1 %26, label %56, label %50

50:                                               ; preds = %47
  store i32 0, ptr %48, align 4, !tbaa !94
  %51 = getelementptr i32, ptr %48, i64 1
  %52 = icmp eq i32 %20, 1
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = shl nuw nsw i64 %23, 2
  %55 = add nsw i64 %54, -4
  tail call void @llvm.memset.p0.i64(ptr align 4 %51, i8 0, i64 %55, i1 false), !tbaa !94
  br label %56

56:                                               ; preds = %47, %50, %53
  %57 = phi ptr [ %48, %47 ], [ %51, %50 ], [ %49, %53 ]
  store ptr %57, ptr %42, align 8, !tbaa !92
  %58 = load i32, ptr %12, align 8, !tbaa !118
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  %61 = zext i32 %58 to i64
  br label %71

62:                                               ; preds = %71, %56
  ret void

63:                                               ; preds = %11
  %64 = landingpad { ptr, i32 }
          cleanup
  br label %79

65:                                               ; preds = %27
  %66 = landingpad { ptr, i32 }
          cleanup
  br label %79

67:                                               ; preds = %44
  %68 = landingpad { ptr, i32 }
          cleanup
  %69 = icmp eq ptr %31, null
  br i1 %69, label %79, label %70

70:                                               ; preds = %67
  tail call void @_ZdlPv(ptr noundef %31) #20
  br label %79

71:                                               ; preds = %60, %71
  %72 = phi i64 [ 0, %60 ], [ %77, %71 ]
  %73 = getelementptr inbounds i32, ptr %31, i64 %72
  %74 = trunc i64 %72 to i32
  store i32 %74, ptr %73, align 4, !tbaa !94
  %75 = getelementptr inbounds i32, ptr %48, i64 %72
  %76 = trunc i64 %72 to i32
  store i32 %76, ptr %75, align 4, !tbaa !94
  %77 = add nuw nsw i64 %72, 1
  %78 = icmp eq i64 %77, %61
  br i1 %78, label %62, label %71, !llvm.loop !125

79:                                               ; preds = %70, %67, %65, %63
  %80 = phi { ptr, i32 } [ %66, %65 ], [ %64, %63 ], [ %68, %67 ], [ %68, %70 ]
  %81 = load ptr, ptr %0, align 8, !tbaa !44
  %82 = load ptr, ptr %6, align 8, !tbaa !49
  %83 = icmp eq ptr %81, %82
  br i1 %83, label %90, label %84

84:                                               ; preds = %79, %84
  %85 = phi ptr [ %88, %84 ], [ %81, %79 ]
  %86 = load ptr, ptr %85, align 8, !tbaa !50
  %87 = load ptr, ptr %86, align 8
  tail call void %87(ptr noundef nonnull align 8 dereferenceable(96) %85) #19
  %88 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %85, i64 1
  %89 = icmp eq ptr %88, %82
  br i1 %89, label %90, label %84, !llvm.loop !52

90:                                               ; preds = %84, %79
  %91 = load ptr, ptr %0, align 8, !tbaa !44
  %92 = icmp eq ptr %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %90, %7
  %94 = phi ptr [ %9, %7 ], [ %91, %90 ]
  %95 = phi { ptr, i32 } [ %8, %7 ], [ %80, %90 ]
  tail call void @_ZdlPv(ptr noundef %94) #20
  br label %96

96:                                               ; preds = %93, %90, %7
  %97 = phi { ptr, i32 } [ %8, %7 ], [ %80, %90 ], [ %95, %93 ]
  resume { ptr, i32 } %97
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef i32 @_ZN6dealii14PolynomialsBDMILi2EE14compute_n_polsEj(i32 noundef %0) local_unnamed_addr #5 comdat align 2 !prof !98 {
  %2 = add i32 %0, 1
  %3 = add i32 %0, 2
  %4 = mul i32 %2, %3
  %5 = add i32 %4, 2
  ret i32 %5
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii14PolynomialsBDMILi2EE7computeERKNS_5PointILi2EEERSt6vectorINS_6TensorILi1ELi2EEESaIS8_EERS6_INS7_ILi2ELi2EEESaISC_EERS6_INS7_ILi3ELi2EEESaISG_EE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !43 {
  %6 = alloca %"class.dealii::Tensor.53", align 8
  %7 = alloca %"class.dealii::Tensor.55", align 8
  %8 = alloca %"class.std::vector.5", align 8
  %9 = alloca %"class.std::vector.5", align 8
  %10 = getelementptr inbounds %"class.dealii::PolynomialSpace.33", ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !118
  %12 = getelementptr inbounds %"class.dealii::PolynomialsBDM.32", ptr %0, i64 0, i32 3
  %13 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl_data", ptr %2, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !120
  %15 = load ptr, ptr %2, align 8, !tbaa !119
  %16 = icmp eq ptr %14, %15
  %17 = zext i32 %11 to i64
  %18 = select i1 %16, i64 0, i64 %17
  %19 = getelementptr inbounds %"class.dealii::PolynomialsBDM.32", ptr %0, i64 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !80
  %21 = load ptr, ptr %12, align 8, !tbaa !79
  %22 = ptrtoint ptr %20 to i64
  %23 = ptrtoint ptr %21 to i64
  %24 = sub i64 %22, %23
  %25 = ashr exact i64 %24, 3
  %26 = icmp ult i64 %25, %18
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = sub nsw i64 %18, %25
  tail call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %12, i64 noundef %28)
  br label %35

29:                                               ; preds = %5
  %30 = icmp ugt i64 %25, %18
  br i1 %30, label %31, label %35

31:                                               ; preds = %29
  %32 = getelementptr inbounds double, ptr %21, i64 %18
  %33 = icmp eq ptr %20, %32
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  store ptr %32, ptr %19, align 8, !tbaa !80
  br label %35

35:                                               ; preds = %27, %29, %31, %34
  %36 = getelementptr inbounds %"class.dealii::PolynomialsBDM.32", ptr %0, i64 0, i32 4
  %37 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<2, 2>, std::allocator<dealii::Tensor<2, 2>>>::_Vector_impl_data", ptr %3, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !123
  %39 = load ptr, ptr %3, align 8, !tbaa !122
  %40 = icmp eq ptr %38, %39
  %41 = select i1 %40, i64 0, i64 %17
  %42 = getelementptr inbounds %"class.dealii::PolynomialsBDM.32", ptr %0, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !120
  %44 = load ptr, ptr %36, align 8, !tbaa !119
  %45 = ptrtoint ptr %43 to i64
  %46 = ptrtoint ptr %44 to i64
  %47 = sub i64 %45, %46
  %48 = ashr exact i64 %47, 4
  %49 = icmp ult i64 %48, %41
  br i1 %49, label %50, label %52

50:                                               ; preds = %35
  %51 = sub nsw i64 %41, %48
  tail call void @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %36, i64 noundef %51)
  br label %58

52:                                               ; preds = %35
  %53 = icmp ugt i64 %48, %41
  br i1 %53, label %54, label %58

54:                                               ; preds = %52
  %55 = getelementptr inbounds %"class.dealii::Tensor.50", ptr %44, i64 %41
  %56 = icmp eq ptr %43, %55
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  store ptr %55, ptr %42, align 8, !tbaa !120
  br label %58

58:                                               ; preds = %50, %52, %54, %57
  %59 = getelementptr inbounds %"class.dealii::PolynomialsBDM.32", ptr %0, i64 0, i32 5
  %60 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<3, 2>, std::allocator<dealii::Tensor<3, 2>>>::_Vector_impl_data", ptr %4, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !126
  %62 = load ptr, ptr %4, align 8, !tbaa !128
  %63 = icmp eq ptr %61, %62
  %64 = select i1 %63, i64 0, i64 %17
  %65 = getelementptr inbounds %"class.dealii::PolynomialsBDM.32", ptr %0, i64 0, i32 5, i32 0, i32 0, i32 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !123
  %67 = load ptr, ptr %59, align 8, !tbaa !122
  %68 = ptrtoint ptr %66 to i64
  %69 = ptrtoint ptr %67 to i64
  %70 = sub i64 %68, %69
  %71 = ashr exact i64 %70, 5
  %72 = icmp ult i64 %71, %64
  br i1 %72, label %73, label %75

73:                                               ; preds = %58
  %74 = sub nsw i64 %64, %71
  tail call void @_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %59, i64 noundef %74)
  br label %81

75:                                               ; preds = %58
  %76 = icmp ugt i64 %71, %64
  br i1 %76, label %77, label %81

77:                                               ; preds = %75
  %78 = getelementptr inbounds %"class.dealii::Tensor.53", ptr %67, i64 %64
  %79 = icmp eq ptr %66, %78
  br i1 %79, label %81, label %80

80:                                               ; preds = %77
  store ptr %78, ptr %65, align 8, !tbaa !123
  br label %81

81:                                               ; preds = %73, %75, %77, %80
  tail call void @_ZNK6dealii15PolynomialSpaceILi2EE7computeERKNS_5PointILi2EEERSt6vectorIdSaIdEERS6_INS_6TensorILi1ELi2EEESaISB_EERS6_INSA_ILi2ELi2EEESaISF_EE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %36, ptr noundef nonnull align 8 dereferenceable(24) %59)
  %82 = load ptr, ptr %2, align 8, !tbaa !91
  %83 = load ptr, ptr %13, align 8, !tbaa !91
  %84 = icmp eq ptr %82, %83
  br i1 %84, label %89, label %85

85:                                               ; preds = %81, %85
  %86 = phi ptr [ %87, %85 ], [ %82, %81 ]
  %87 = getelementptr inbounds %"class.dealii::Tensor.50", ptr %86, i64 1
  %88 = icmp eq ptr %87, %83
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %86, i8 0, i64 16, i1 false)
  br i1 %88, label %89, label %85, !llvm.loop !129

89:                                               ; preds = %85, %81
  %90 = load ptr, ptr %19, align 8, !tbaa !80
  %91 = load ptr, ptr %12, align 8, !tbaa !79
  %92 = ptrtoint ptr %90 to i64
  %93 = ptrtoint ptr %91 to i64
  %94 = sub i64 %92, %93
  %95 = ashr exact i64 %94, 3
  %96 = icmp eq ptr %90, %91
  br i1 %96, label %101, label %97

97:                                               ; preds = %89, %128
  %98 = phi i64 [ %130, %128 ], [ 0, %89 ]
  %99 = phi i32 [ %129, %128 ], [ 0, %89 ]
  %100 = getelementptr inbounds double, ptr %91, i64 %98
  br label %132

101:                                              ; preds = %128, %89
  %102 = load ptr, ptr %3, align 8, !tbaa !91
  %103 = load ptr, ptr %37, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 32, i1 false), !tbaa !82
  %104 = icmp eq ptr %102, %103
  br i1 %104, label %120, label %105

105:                                              ; preds = %101, %117
  %106 = phi ptr [ %118, %117 ], [ %102, %101 ]
  br label %107

107:                                              ; preds = %105, %107
  %108 = phi i64 [ 0, %105 ], [ %115, %107 ]
  %109 = getelementptr inbounds [2 x %"class.dealii::Tensor.50"], ptr %6, i64 0, i64 %108
  %110 = getelementptr inbounds [2 x %"class.dealii::Tensor.50"], ptr %106, i64 0, i64 %108
  %111 = load double, ptr %109, align 8, !tbaa !82
  store double %111, ptr %110, align 8, !tbaa !82
  %112 = getelementptr inbounds [2 x double], ptr %109, i64 0, i64 1
  %113 = load double, ptr %112, align 8, !tbaa !82
  %114 = getelementptr inbounds [2 x double], ptr %110, i64 0, i64 1
  store double %113, ptr %114, align 8, !tbaa !82
  %115 = add nuw nsw i64 %108, 1
  %116 = icmp eq i64 %108, 0
  br i1 %116, label %107, label %117, !llvm.loop !130

117:                                              ; preds = %107
  %118 = getelementptr inbounds %"class.dealii::Tensor.53", ptr %106, i64 1
  %119 = icmp eq ptr %118, %103
  br i1 %119, label %120, label %105, !llvm.loop !131

120:                                              ; preds = %117, %101
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #19
  %121 = load ptr, ptr %42, align 8, !tbaa !120
  %122 = load ptr, ptr %36, align 8, !tbaa !119
  %123 = ptrtoint ptr %121 to i64
  %124 = ptrtoint ptr %122 to i64
  %125 = sub i64 %123, %124
  %126 = ashr exact i64 %125, 4
  %127 = icmp eq ptr %121, %122
  br i1 %127, label %148, label %143

128:                                              ; preds = %132
  %129 = add i32 %99, 1
  %130 = zext i32 %129 to i64
  %131 = icmp ugt i64 %95, %130
  br i1 %131, label %97, label %101, !llvm.loop !132

132:                                              ; preds = %97, %132
  %133 = phi i64 [ 0, %97 ], [ %141, %132 ]
  %134 = load double, ptr %100, align 8, !tbaa !82
  %135 = trunc i64 %133 to i32
  %136 = mul i32 %11, %135
  %137 = add i32 %136, %99
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds %"class.dealii::Tensor.50", ptr %82, i64 %138
  %140 = getelementptr inbounds [2 x double], ptr %139, i64 0, i64 %133
  store double %134, ptr %140, align 8, !tbaa !82
  %141 = add nuw nsw i64 %133, 1
  %142 = icmp eq i64 %133, 0
  br i1 %142, label %132, label %128, !llvm.loop !133

143:                                              ; preds = %120, %182
  %144 = phi i64 [ %184, %182 ], [ 0, %120 ]
  %145 = phi i32 [ %183, %182 ], [ 0, %120 ]
  %146 = getelementptr inbounds %"class.dealii::Tensor.50", ptr %122, i64 %144
  %147 = getelementptr inbounds [2 x double], ptr %146, i64 0, i64 1
  br label %186

148:                                              ; preds = %182, %120
  %149 = load ptr, ptr %4, align 8, !tbaa !91
  %150 = load ptr, ptr %60, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, i8 0, i64 64, i1 false), !tbaa !82
  %151 = icmp eq ptr %149, %150
  br i1 %151, label %174, label %152

152:                                              ; preds = %148, %171
  %153 = phi ptr [ %172, %171 ], [ %149, %148 ]
  br label %154

154:                                              ; preds = %152, %168
  %155 = phi i64 [ 0, %152 ], [ %169, %168 ]
  %156 = getelementptr inbounds [2 x %"class.dealii::Tensor.53"], ptr %7, i64 0, i64 %155
  %157 = getelementptr inbounds [2 x %"class.dealii::Tensor.53"], ptr %153, i64 0, i64 %155
  br label %158

158:                                              ; preds = %154, %158
  %159 = phi i64 [ 0, %154 ], [ %166, %158 ]
  %160 = getelementptr inbounds [2 x %"class.dealii::Tensor.50"], ptr %156, i64 0, i64 %159
  %161 = getelementptr inbounds [2 x %"class.dealii::Tensor.50"], ptr %157, i64 0, i64 %159
  %162 = load double, ptr %160, align 8, !tbaa !82
  store double %162, ptr %161, align 8, !tbaa !82
  %163 = getelementptr inbounds [2 x double], ptr %160, i64 0, i64 1
  %164 = load double, ptr %163, align 8, !tbaa !82
  %165 = getelementptr inbounds [2 x double], ptr %161, i64 0, i64 1
  store double %164, ptr %165, align 8, !tbaa !82
  %166 = add nuw nsw i64 %159, 1
  %167 = icmp eq i64 %159, 0
  br i1 %167, label %158, label %168, !llvm.loop !130

168:                                              ; preds = %158
  %169 = add nuw nsw i64 %155, 1
  %170 = icmp eq i64 %155, 0
  br i1 %170, label %154, label %171, !llvm.loop !134

171:                                              ; preds = %168
  %172 = getelementptr inbounds %"class.dealii::Tensor.55", ptr %153, i64 1
  %173 = icmp eq ptr %172, %150
  br i1 %173, label %174, label %152, !llvm.loop !135

174:                                              ; preds = %171, %148
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #19
  %175 = load ptr, ptr %65, align 8, !tbaa !123
  %176 = load ptr, ptr %59, align 8, !tbaa !122
  %177 = ptrtoint ptr %175 to i64
  %178 = ptrtoint ptr %176 to i64
  %179 = sub i64 %177, %178
  %180 = ashr exact i64 %179, 5
  %181 = icmp eq ptr %175, %176
  br i1 %181, label %203, label %199

182:                                              ; preds = %186
  %183 = add i32 %145, 1
  %184 = zext i32 %183 to i64
  %185 = icmp ugt i64 %126, %184
  br i1 %185, label %143, label %148, !llvm.loop !136

186:                                              ; preds = %143, %186
  %187 = phi i64 [ 0, %143 ], [ %197, %186 ]
  %188 = trunc i64 %187 to i32
  %189 = mul i32 %11, %188
  %190 = add i32 %189, %145
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds %"class.dealii::Tensor.53", ptr %102, i64 %191
  %193 = getelementptr inbounds [2 x %"class.dealii::Tensor.50"], ptr %192, i64 0, i64 %187
  %194 = load double, ptr %146, align 8, !tbaa !82
  store double %194, ptr %193, align 8, !tbaa !82
  %195 = load double, ptr %147, align 8, !tbaa !82
  %196 = getelementptr inbounds [2 x double], ptr %193, i64 0, i64 1
  store double %195, ptr %196, align 8, !tbaa !82
  %197 = add nuw nsw i64 %187, 1
  %198 = icmp eq i64 %187, 0
  br i1 %198, label %186, label %182, !llvm.loop !137

199:                                              ; preds = %174, %210
  %200 = phi i64 [ %212, %210 ], [ 0, %174 ]
  %201 = phi i32 [ %211, %210 ], [ 0, %174 ]
  %202 = getelementptr inbounds %"class.dealii::Tensor.53", ptr %176, i64 %200
  br label %214

203:                                              ; preds = %210, %174
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #19
  %204 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %8, i64 0, i32 1
  %205 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %8, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %206 = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #21
  store ptr %206, ptr %8, align 8, !tbaa !79
  store ptr %206, ptr %204, align 8, !tbaa !80
  %207 = getelementptr inbounds double, ptr %206, i64 3
  store ptr %207, ptr %205, align 8, !tbaa !81
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %206, i8 0, i64 24, i1 false)
  %208 = shl i32 %11, 1
  store ptr %207, ptr %204, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %209 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #21
          to label %235 unwind label %272

210:                                              ; preds = %232
  %211 = add i32 %201, 1
  %212 = zext i32 %211 to i64
  %213 = icmp ugt i64 %180, %212
  br i1 %213, label %199, label %203, !llvm.loop !138

214:                                              ; preds = %199, %232
  %215 = phi i64 [ 0, %199 ], [ %233, %232 ]
  %216 = trunc i64 %215 to i32
  %217 = mul i32 %11, %216
  %218 = add i32 %217, %201
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds %"class.dealii::Tensor.55", ptr %149, i64 %219
  %221 = getelementptr inbounds [2 x %"class.dealii::Tensor.53"], ptr %220, i64 0, i64 %215
  br label %222

222:                                              ; preds = %214, %222
  %223 = phi i64 [ 0, %214 ], [ %230, %222 ]
  %224 = getelementptr inbounds [2 x %"class.dealii::Tensor.50"], ptr %202, i64 0, i64 %223
  %225 = getelementptr inbounds [2 x %"class.dealii::Tensor.50"], ptr %221, i64 0, i64 %223
  %226 = load double, ptr %224, align 8, !tbaa !82
  store double %226, ptr %225, align 8, !tbaa !82
  %227 = getelementptr inbounds [2 x double], ptr %224, i64 0, i64 1
  %228 = load double, ptr %227, align 8, !tbaa !82
  %229 = getelementptr inbounds [2 x double], ptr %225, i64 0, i64 1
  store double %228, ptr %229, align 8, !tbaa !82
  %230 = add nuw nsw i64 %223, 1
  %231 = icmp eq i64 %223, 0
  br i1 %231, label %222, label %232, !llvm.loop !130

232:                                              ; preds = %222
  %233 = add nuw nsw i64 %215, 1
  %234 = icmp eq i64 %215, 0
  br i1 %234, label %214, label %210, !llvm.loop !139

235:                                              ; preds = %203
  %236 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %9, i64 0, i32 1
  %237 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %9, i64 0, i32 2
  store ptr %209, ptr %9, align 8, !tbaa !79
  store ptr %209, ptr %236, align 8, !tbaa !80
  %238 = getelementptr inbounds double, ptr %209, i64 3
  store ptr %238, ptr %237, align 8, !tbaa !81
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %209, i8 0, i64 24, i1 false)
  store ptr %238, ptr %236, align 8, !tbaa !80
  %239 = getelementptr inbounds %"class.dealii::PolynomialsBDM.32", ptr %0, i64 0, i32 1
  %240 = load ptr, ptr %239, align 8, !tbaa !44
  %241 = load double, ptr %1, align 8, !tbaa !82
  invoke void @_ZNK6dealii11Polynomials10PolynomialIdE5valueEdRSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(96) %240, double noundef %241, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %242 unwind label %274

242:                                              ; preds = %235
  %243 = load ptr, ptr %239, align 8, !tbaa !44
  %244 = getelementptr inbounds [2 x double], ptr %1, i64 0, i64 1
  %245 = load double, ptr %244, align 8, !tbaa !82
  invoke void @_ZNK6dealii11Polynomials10PolynomialIdE5valueEdRSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(96) %243, double noundef %245, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %246 unwind label %274

246:                                              ; preds = %242
  %247 = load ptr, ptr %13, align 8, !tbaa !120
  %248 = load ptr, ptr %2, align 8, !tbaa !119
  %249 = icmp eq ptr %247, %248
  br i1 %249, label %279, label %250

250:                                              ; preds = %246
  %251 = load ptr, ptr %8, align 8, !tbaa !79
  %252 = load double, ptr %251, align 8, !tbaa !82
  %253 = zext i32 %208 to i64
  %254 = getelementptr inbounds %"class.dealii::Tensor.50", ptr %248, i64 %253
  store double %252, ptr %254, align 8, !tbaa !82
  %255 = load double, ptr %244, align 8, !tbaa !82
  %256 = fneg double %255
  %257 = getelementptr inbounds double, ptr %251, i64 1
  %258 = load double, ptr %257, align 8, !tbaa !82
  %259 = fmul double %258, %256
  %260 = getelementptr inbounds %"class.dealii::Tensor.50", ptr %248, i64 %253, i32 0, i64 1
  store double %259, ptr %260, align 8, !tbaa !82
  %261 = load double, ptr %1, align 8, !tbaa !82
  %262 = fneg double %261
  %263 = load ptr, ptr %9, align 8, !tbaa !79
  %264 = getelementptr inbounds double, ptr %263, i64 1
  %265 = load double, ptr %264, align 8, !tbaa !82
  %266 = fmul double %265, %262
  %267 = or disjoint i32 %208, 1
  %268 = zext i32 %267 to i64
  %269 = getelementptr inbounds %"class.dealii::Tensor.50", ptr %248, i64 %268
  store double %266, ptr %269, align 8, !tbaa !82
  %270 = load double, ptr %263, align 8, !tbaa !82
  %271 = getelementptr inbounds %"class.dealii::Tensor.50", ptr %248, i64 %268, i32 0, i64 1
  store double %270, ptr %271, align 8, !tbaa !82
  br label %279

272:                                              ; preds = %203
  %273 = landingpad { ptr, i32 }
          cleanup
  br label %324

274:                                              ; preds = %242, %235
  %275 = landingpad { ptr, i32 }
          cleanup
  %276 = load ptr, ptr %9, align 8, !tbaa !79
  %277 = icmp eq ptr %276, null
  br i1 %277, label %324, label %278

278:                                              ; preds = %274
  call void @_ZdlPv(ptr noundef %276) #20
  br label %324

279:                                              ; preds = %250, %246
  %280 = load ptr, ptr %37, align 8, !tbaa !123
  %281 = load ptr, ptr %3, align 8, !tbaa !122
  %282 = icmp eq ptr %280, %281
  br i1 %282, label %315, label %283

283:                                              ; preds = %279
  %284 = load ptr, ptr %8, align 8, !tbaa !79
  %285 = getelementptr inbounds double, ptr %284, i64 1
  %286 = load double, ptr %285, align 8, !tbaa !82
  %287 = zext i32 %208 to i64
  %288 = getelementptr inbounds %"class.dealii::Tensor.53", ptr %281, i64 %287
  store double %286, ptr %288, align 8, !tbaa !82
  %289 = getelementptr inbounds %"class.dealii::Tensor.53", ptr %281, i64 %287, i32 0, i64 0, i32 0, i64 1
  store double 0.000000e+00, ptr %289, align 8, !tbaa !82
  %290 = load double, ptr %244, align 8, !tbaa !82
  %291 = fneg double %290
  %292 = getelementptr inbounds double, ptr %284, i64 2
  %293 = load double, ptr %292, align 8, !tbaa !82
  %294 = fmul double %293, %291
  %295 = getelementptr inbounds %"class.dealii::Tensor.53", ptr %281, i64 %287, i32 0, i64 1
  store double %294, ptr %295, align 8, !tbaa !82
  %296 = load double, ptr %285, align 8, !tbaa !82
  %297 = fneg double %296
  %298 = getelementptr inbounds %"class.dealii::Tensor.53", ptr %281, i64 %287, i32 0, i64 1, i32 0, i64 1
  store double %297, ptr %298, align 8, !tbaa !82
  %299 = load ptr, ptr %9, align 8, !tbaa !79
  %300 = getelementptr inbounds double, ptr %299, i64 1
  %301 = load double, ptr %300, align 8, !tbaa !82
  %302 = fneg double %301
  %303 = or disjoint i32 %208, 1
  %304 = zext i32 %303 to i64
  %305 = getelementptr inbounds %"class.dealii::Tensor.53", ptr %281, i64 %304
  store double %302, ptr %305, align 8, !tbaa !82
  %306 = load double, ptr %1, align 8, !tbaa !82
  %307 = fneg double %306
  %308 = getelementptr inbounds double, ptr %299, i64 2
  %309 = load double, ptr %308, align 8, !tbaa !82
  %310 = fmul double %309, %307
  %311 = getelementptr inbounds %"class.dealii::Tensor.53", ptr %281, i64 %304, i32 0, i64 0, i32 0, i64 1
  store double %310, ptr %311, align 8, !tbaa !82
  %312 = getelementptr inbounds %"class.dealii::Tensor.53", ptr %281, i64 %304, i32 0, i64 1
  store double 0.000000e+00, ptr %312, align 8, !tbaa !82
  %313 = load double, ptr %300, align 8, !tbaa !82
  %314 = getelementptr inbounds %"class.dealii::Tensor.53", ptr %281, i64 %304, i32 0, i64 1, i32 0, i64 1
  store double %313, ptr %314, align 8, !tbaa !82
  br label %315

315:                                              ; preds = %283, %279
  %316 = load ptr, ptr %9, align 8, !tbaa !79
  %317 = icmp eq ptr %316, null
  br i1 %317, label %319, label %318

318:                                              ; preds = %315
  call void @_ZdlPv(ptr noundef %316) #20
  br label %319

319:                                              ; preds = %315, %318
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #19
  %320 = load ptr, ptr %8, align 8, !tbaa !79
  %321 = icmp eq ptr %320, null
  br i1 %321, label %323, label %322

322:                                              ; preds = %319
  call void @_ZdlPv(ptr noundef %320) #20
  br label %323

323:                                              ; preds = %319, %322
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #19
  ret void

324:                                              ; preds = %278, %274, %272
  %325 = phi { ptr, i32 } [ %273, %272 ], [ %275, %274 ], [ %275, %278 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #19
  %326 = load ptr, ptr %8, align 8, !tbaa !79
  %327 = icmp eq ptr %326, null
  br i1 %327, label %329, label %328

328:                                              ; preds = %324
  call void @_ZdlPv(ptr noundef %326) #20
  br label %329

329:                                              ; preds = %328, %324
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #19
  resume { ptr, i32 } %325
}

declare void @_ZNK6dealii15PolynomialSpaceILi2EE7computeERKNS_5PointILi2EEERSt6vectorIdSaIdEERS6_INS_6TensorILi1ELi2EEESaISB_EERS6_INSA_ILi2ELi2EEESaISF_EE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #0

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii14PolynomialsBDMILi2EE1nEv(ptr noundef nonnull align 8 dereferenceable(184) %0) local_unnamed_addr #6 comdat align 2 !prof !98 {
  %2 = getelementptr inbounds %"class.dealii::PolynomialsBDM.32", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !107
  ret i32 %3
}

; Function Attrs: cold inlinehint mustprogress uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii14PolynomialsBDMILi2EE6degreeEv(ptr noundef nonnull align 8 dereferenceable(184) %0) local_unnamed_addr #7 comdat align 2 !prof !98 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = load ptr, ptr %0, align 8, !tbaa !44
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 96
  %9 = trunc i64 %8 to i32
  ret i32 %9
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii14PolynomialsBDMILi3EEC2Ej(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %1) unnamed_addr #3 comdat($_ZN6dealii14PolynomialsBDMILi3EEC5Ej) align 2 personality ptr @__gxx_personality_v0 !annotation !43 {
  %3 = alloca %"class.std::vector", align 8
  %4 = alloca %"class.std::allocator", align 1
  %5 = alloca %"class.dealii::Polynomials::Monomial", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  call void @_ZN6dealii11Polynomials8Legendre23generate_complete_basisEj(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %3, i32 noundef %1)
  invoke void @_ZN6dealii15PolynomialSpaceILi3EEC2INS_11Polynomials10PolynomialIdEEEERKSt6vectorIT_SaIS7_EE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %6 unwind label %105

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !tbaa !44
  %8 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %3, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  %10 = icmp eq ptr %7, %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %6, %11
  %12 = phi ptr [ %15, %11 ], [ %7, %6 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !50
  %14 = load ptr, ptr %13, align 8
  call void %14(ptr noundef nonnull align 8 dereferenceable(96) %12) #19
  %15 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %12, i64 1
  %16 = icmp eq ptr %15, %9
  br i1 %16, label %17, label %11, !llvm.loop !52

17:                                               ; preds = %11, %6
  %18 = load ptr, ptr %3, align 8, !tbaa !44
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  call void @_ZdlPv(ptr noundef %18) #20
  br label %21

21:                                               ; preds = %17, %20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  %22 = getelementptr inbounds %"class.dealii::PolynomialsBDM.56", ptr %0, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #19
  invoke void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2EmRKS4_(ptr noundef nonnull align 8 dereferenceable(24) %22, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %23 unwind label %122

23:                                               ; preds = %21
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #19
  %24 = getelementptr inbounds %"class.dealii::PolynomialsBDM.56", ptr %0, i64 0, i32 2
  %25 = add i32 %1, 1
  %26 = add i32 %1, 2
  %27 = mul i32 %25, %26
  %28 = add i32 %1, 3
  %29 = mul i32 %27, %28
  %30 = lshr i32 %29, 1
  %31 = mul i32 %25, 3
  %32 = add i32 %30, %31
  store i32 %32, ptr %24, align 8, !tbaa !140
  %33 = getelementptr inbounds %"class.dealii::PolynomialsBDM.56", ptr %0, i64 0, i32 3
  %34 = getelementptr inbounds %"class.dealii::PolynomialSpace.57", ptr %0, i64 0, i32 1
  %35 = load i32, ptr %34, align 8, !tbaa !151
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %"class.dealii::PolynomialsBDM.56", ptr %0, i64 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %38 = getelementptr inbounds %"class.dealii::PolynomialsBDM.56", ptr %0, i64 0, i32 3, i32 0, i32 0, i32 0, i32 2
  %39 = icmp eq i32 %35, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %33, i8 0, i64 24, i1 false)
  br i1 %39, label %43, label %40

40:                                               ; preds = %23
  %41 = shl nuw nsw i64 %36, 3
  %42 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %41) #21
          to label %43 unwind label %124

43:                                               ; preds = %40, %23
  %44 = phi ptr [ null, %23 ], [ %42, %40 ]
  store ptr %44, ptr %33, align 8, !tbaa !79
  store ptr %44, ptr %37, align 8, !tbaa !80
  %45 = getelementptr inbounds double, ptr %44, i64 %36
  store ptr %45, ptr %38, align 8, !tbaa !81
  br i1 %39, label %52, label %46

46:                                               ; preds = %43
  store double 0.000000e+00, ptr %44, align 8, !tbaa !82
  %47 = getelementptr double, ptr %44, i64 1
  %48 = icmp eq i32 %35, 1
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = shl nuw nsw i64 %36, 3
  %51 = add nsw i64 %50, -8
  call void @llvm.memset.p0.i64(ptr align 8 %47, i8 0, i64 %51, i1 false), !tbaa !82
  br label %52

52:                                               ; preds = %43, %46, %49
  %53 = phi ptr [ %44, %43 ], [ %47, %46 ], [ %45, %49 ]
  store ptr %53, ptr %37, align 8, !tbaa !80
  %54 = getelementptr inbounds %"class.dealii::PolynomialsBDM.56", ptr %0, i64 0, i32 4
  %55 = getelementptr inbounds %"class.dealii::PolynomialsBDM.56", ptr %0, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %56 = getelementptr inbounds %"class.dealii::PolynomialsBDM.56", ptr %0, i64 0, i32 4, i32 0, i32 0, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %54, i8 0, i64 24, i1 false)
  br i1 %39, label %60, label %57

57:                                               ; preds = %52
  %58 = mul nuw nsw i64 %36, 24
  %59 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %58) #21
          to label %60 unwind label %126

60:                                               ; preds = %57, %52
  %61 = phi ptr [ null, %52 ], [ %59, %57 ]
  store ptr %61, ptr %54, align 8, !tbaa !152
  store ptr %61, ptr %55, align 8, !tbaa !153
  %62 = getelementptr inbounds %"class.dealii::Tensor.74", ptr %61, i64 %36
  store ptr %62, ptr %56, align 8, !tbaa !154
  br i1 %39, label %66, label %63

63:                                               ; preds = %60
  %64 = mul nuw nsw i64 %36, 24
  call void @llvm.memset.p0.i64(ptr align 8 %61, i8 0, i64 %64, i1 false), !tbaa !82
  %65 = getelementptr i8, ptr %61, i64 %64
  br label %66

66:                                               ; preds = %60, %63
  %67 = phi ptr [ %61, %60 ], [ %65, %63 ]
  store ptr %67, ptr %55, align 8, !tbaa !153
  %68 = getelementptr inbounds %"class.dealii::PolynomialsBDM.56", ptr %0, i64 0, i32 5
  %69 = getelementptr inbounds %"class.dealii::PolynomialsBDM.56", ptr %0, i64 0, i32 5, i32 0, i32 0, i32 0, i32 1
  %70 = getelementptr inbounds %"class.dealii::PolynomialsBDM.56", ptr %0, i64 0, i32 5, i32 0, i32 0, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %68, i8 0, i64 24, i1 false)
  br i1 %39, label %74, label %71

71:                                               ; preds = %66
  %72 = mul nuw nsw i64 %36, 72
  %73 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %72) #21
          to label %74 unwind label %128

74:                                               ; preds = %71, %66
  %75 = phi ptr [ null, %66 ], [ %73, %71 ]
  store ptr %75, ptr %68, align 8, !tbaa !155
  store ptr %75, ptr %69, align 8, !tbaa !156
  %76 = getelementptr inbounds %"class.dealii::Tensor.77", ptr %75, i64 %36
  store ptr %76, ptr %70, align 8, !tbaa !157
  br i1 %39, label %80, label %77

77:                                               ; preds = %74
  %78 = mul nuw nsw i64 %36, 72
  call void @llvm.memset.p0.i64(ptr align 8 %75, i8 0, i64 %78, i1 false), !tbaa !82
  %79 = getelementptr i8, ptr %75, i64 %78
  br label %80

80:                                               ; preds = %74, %77
  %81 = phi ptr [ %75, %74 ], [ %79, %77 ]
  store ptr %81, ptr %69, align 8, !tbaa !156
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %5) #19
  invoke void @_ZN6dealii11Polynomials8MonomialIdEC1Ejd(ptr noundef nonnull align 8 dereferenceable(96) %5, i32 noundef %25, double noundef 1.000000e+00)
          to label %82 unwind label %130

82:                                               ; preds = %80
  %83 = load ptr, ptr %22, align 8, !tbaa !44
  %84 = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN6dealii11SubscriptoraSERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %83, ptr noundef nonnull align 8 dereferenceable(72) %5)
          to label %85 unwind label %132

85:                                               ; preds = %82
  %86 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %83, i64 0, i32 1
  %87 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %5, i64 0, i32 1
  %88 = load ptr, ptr %86, align 8, !tbaa !79
  %89 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %83, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !80
  %91 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %83, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !81
  %93 = load ptr, ptr %87, align 8, !tbaa !79
  store ptr %93, ptr %86, align 8, !tbaa !79
  %94 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %5, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !80
  store ptr %95, ptr %89, align 8, !tbaa !80
  %96 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %5, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %97 = load ptr, ptr %96, align 8, !tbaa !81
  store ptr %97, ptr %91, align 8, !tbaa !81
  store ptr %88, ptr %87, align 8, !tbaa !79
  store ptr %90, ptr %94, align 8, !tbaa !80
  store ptr %92, ptr %96, align 8, !tbaa !81
  %98 = icmp eq ptr %88, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %87, i8 0, i64 24, i1 false)
  br i1 %98, label %100, label %99

99:                                               ; preds = %85
  call void @_ZdlPv(ptr noundef %88) #20
  br label %100

100:                                              ; preds = %99, %85
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials10PolynomialIdEE, i64 0, inrange i32 0, i64 2), ptr %5, align 8, !tbaa !50
  %101 = load ptr, ptr %87, align 8, !tbaa !79
  %102 = icmp eq ptr %101, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %100
  call void @_ZdlPv(ptr noundef %101) #20
  br label %104

104:                                              ; preds = %100, %103
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %5) #19
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %5) #19
  ret void

105:                                              ; preds = %2
  %106 = landingpad { ptr, i32 }
          cleanup
  %107 = load ptr, ptr %3, align 8, !tbaa !44
  %108 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %3, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !49
  %110 = icmp eq ptr %107, %109
  br i1 %110, label %117, label %111

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %115, %111 ], [ %107, %105 ]
  %113 = load ptr, ptr %112, align 8, !tbaa !50
  %114 = load ptr, ptr %113, align 8
  call void %114(ptr noundef nonnull align 8 dereferenceable(96) %112) #19
  %115 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %112, i64 1
  %116 = icmp eq ptr %115, %109
  br i1 %116, label %117, label %111, !llvm.loop !52

117:                                              ; preds = %111, %105
  %118 = load ptr, ptr %3, align 8, !tbaa !44
  %119 = icmp eq ptr %118, null
  br i1 %119, label %121, label %120

120:                                              ; preds = %117
  call void @_ZdlPv(ptr noundef %118) #20
  br label %121

121:                                              ; preds = %117, %120
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  br label %196

122:                                              ; preds = %21
  %123 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #19
  br label %170

124:                                              ; preds = %40
  %125 = landingpad { ptr, i32 }
          cleanup
  br label %154

126:                                              ; preds = %57
  %127 = landingpad { ptr, i32 }
          cleanup
  br label %149

128:                                              ; preds = %71
  %129 = landingpad { ptr, i32 }
          cleanup
  br label %144

130:                                              ; preds = %80
  %131 = landingpad { ptr, i32 }
          cleanup
  br label %139

132:                                              ; preds = %82
  %133 = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials10PolynomialIdEE, i64 0, inrange i32 0, i64 2), ptr %5, align 8, !tbaa !50
  %134 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %5, i64 0, i32 1
  %135 = load ptr, ptr %134, align 8, !tbaa !79
  %136 = icmp eq ptr %135, null
  br i1 %136, label %138, label %137

137:                                              ; preds = %132
  call void @_ZdlPv(ptr noundef %135) #20
  br label %138

138:                                              ; preds = %132, %137
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %5) #19
  br label %139

139:                                              ; preds = %138, %130
  %140 = phi { ptr, i32 } [ %133, %138 ], [ %131, %130 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %5) #19
  %141 = load ptr, ptr %68, align 8, !tbaa !155
  %142 = icmp eq ptr %141, null
  br i1 %142, label %144, label %143

143:                                              ; preds = %139
  call void @_ZdlPv(ptr noundef %141) #20
  br label %144

144:                                              ; preds = %143, %139, %128
  %145 = phi { ptr, i32 } [ %129, %128 ], [ %140, %139 ], [ %140, %143 ]
  %146 = load ptr, ptr %54, align 8, !tbaa !152
  %147 = icmp eq ptr %146, null
  br i1 %147, label %149, label %148

148:                                              ; preds = %144
  call void @_ZdlPv(ptr noundef %146) #20
  br label %149

149:                                              ; preds = %148, %144, %126
  %150 = phi { ptr, i32 } [ %127, %126 ], [ %145, %144 ], [ %145, %148 ]
  %151 = load ptr, ptr %33, align 8, !tbaa !79
  %152 = icmp eq ptr %151, null
  br i1 %152, label %154, label %153

153:                                              ; preds = %149
  call void @_ZdlPv(ptr noundef %151) #20
  br label %154

154:                                              ; preds = %153, %149, %124
  %155 = phi { ptr, i32 } [ %125, %124 ], [ %150, %149 ], [ %150, %153 ]
  %156 = load ptr, ptr %22, align 8, !tbaa !44
  %157 = getelementptr inbounds %"class.dealii::PolynomialsBDM.56", ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %158 = load ptr, ptr %157, align 8, !tbaa !49
  %159 = icmp eq ptr %156, %158
  br i1 %159, label %166, label %160

160:                                              ; preds = %154, %160
  %161 = phi ptr [ %164, %160 ], [ %156, %154 ]
  %162 = load ptr, ptr %161, align 8, !tbaa !50
  %163 = load ptr, ptr %162, align 8
  call void %163(ptr noundef nonnull align 8 dereferenceable(96) %161) #19
  %164 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %161, i64 1
  %165 = icmp eq ptr %164, %158
  br i1 %165, label %166, label %160, !llvm.loop !52

166:                                              ; preds = %160, %154
  %167 = load ptr, ptr %22, align 8, !tbaa !44
  %168 = icmp eq ptr %167, null
  br i1 %168, label %170, label %169

169:                                              ; preds = %166
  call void @_ZdlPv(ptr noundef %167) #20
  br label %170

170:                                              ; preds = %169, %166, %122
  %171 = phi { ptr, i32 } [ %123, %122 ], [ %155, %166 ], [ %155, %169 ]
  %172 = getelementptr inbounds %"class.dealii::PolynomialSpace.57", ptr %0, i64 0, i32 3
  %173 = load ptr, ptr %172, align 8, !tbaa !90
  %174 = icmp eq ptr %173, null
  br i1 %174, label %176, label %175

175:                                              ; preds = %170
  call void @_ZdlPv(ptr noundef %173) #20
  br label %176

176:                                              ; preds = %175, %170
  %177 = getelementptr inbounds %"class.dealii::PolynomialSpace.57", ptr %0, i64 0, i32 2
  %178 = load ptr, ptr %177, align 8, !tbaa !90
  %179 = icmp eq ptr %178, null
  br i1 %179, label %181, label %180

180:                                              ; preds = %176
  call void @_ZdlPv(ptr noundef %178) #20
  br label %181

181:                                              ; preds = %180, %176
  %182 = load ptr, ptr %0, align 8, !tbaa !44
  %183 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %184 = load ptr, ptr %183, align 8, !tbaa !49
  %185 = icmp eq ptr %182, %184
  br i1 %185, label %192, label %186

186:                                              ; preds = %181, %186
  %187 = phi ptr [ %190, %186 ], [ %182, %181 ]
  %188 = load ptr, ptr %187, align 8, !tbaa !50
  %189 = load ptr, ptr %188, align 8
  call void %189(ptr noundef nonnull align 8 dereferenceable(96) %187) #19
  %190 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %187, i64 1
  %191 = icmp eq ptr %190, %184
  br i1 %191, label %192, label %186, !llvm.loop !52

192:                                              ; preds = %186, %181
  %193 = load ptr, ptr %0, align 8, !tbaa !44
  %194 = icmp eq ptr %193, null
  br i1 %194, label %196, label %195

195:                                              ; preds = %192
  call void @_ZdlPv(ptr noundef %193) #20
  br label %196

196:                                              ; preds = %195, %192, %121
  %197 = phi { ptr, i32 } [ %106, %121 ], [ %171, %192 ], [ %171, %195 ]
  resume { ptr, i32 } %197
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6dealii15PolynomialSpaceILi3EEC2INS_11Polynomials10PolynomialIdEEEERKSt6vectorIT_SaIS7_EE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !43 {
  %3 = load ptr, ptr %1, align 8, !tbaa !91
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !91
  %6 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  invoke void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE19_M_range_initializeIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEvT_SC_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %3, ptr %5)
          to label %11 unwind label %7

7:                                                ; preds = %2
  %8 = landingpad { ptr, i32 }
          cleanup
  %9 = load ptr, ptr %0, align 8, !tbaa !44
  %10 = icmp eq ptr %9, null
  br i1 %10, label %96, label %93

11:                                               ; preds = %2
  %12 = getelementptr inbounds %"class.dealii::PolynomialSpace.57", ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %6, align 8, !tbaa !49
  %14 = load ptr, ptr %0, align 8, !tbaa !44
  %15 = ptrtoint ptr %13 to i64
  %16 = ptrtoint ptr %14 to i64
  %17 = sub i64 %15, %16
  %18 = sdiv exact i64 %17, 96
  %19 = trunc i64 %18 to i32
  %20 = invoke noundef i32 @_ZN6dealii15PolynomialSpaceILi3EE14compute_n_polsEj(i32 noundef %19)
          to label %21 unwind label %63

21:                                               ; preds = %11
  store i32 %20, ptr %12, align 8, !tbaa !151
  %22 = getelementptr inbounds %"class.dealii::PolynomialSpace.57", ptr %0, i64 0, i32 2
  %23 = zext i32 %20 to i64
  %24 = getelementptr inbounds %"class.dealii::PolynomialSpace.57", ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %25 = getelementptr inbounds %"class.dealii::PolynomialSpace.57", ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 2
  %26 = icmp eq i32 %20, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %22, i8 0, i64 24, i1 false)
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = shl nuw nsw i64 %23, 2
  %29 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %28) #21
          to label %30 unwind label %65

30:                                               ; preds = %27, %21
  %31 = phi ptr [ null, %21 ], [ %29, %27 ]
  store ptr %31, ptr %22, align 8, !tbaa !90
  store ptr %31, ptr %24, align 8, !tbaa !92
  %32 = getelementptr inbounds i32, ptr %31, i64 %23
  store ptr %32, ptr %25, align 8, !tbaa !93
  br i1 %26, label %39, label %33

33:                                               ; preds = %30
  store i32 0, ptr %31, align 4, !tbaa !94
  %34 = getelementptr i32, ptr %31, i64 1
  %35 = icmp eq i32 %20, 1
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = shl nuw nsw i64 %23, 2
  %38 = add nsw i64 %37, -4
  tail call void @llvm.memset.p0.i64(ptr align 4 %34, i8 0, i64 %38, i1 false), !tbaa !94
  br label %39

39:                                               ; preds = %30, %33, %36
  %40 = phi ptr [ %31, %30 ], [ %34, %33 ], [ %32, %36 ]
  store ptr %40, ptr %24, align 8, !tbaa !92
  %41 = getelementptr inbounds %"class.dealii::PolynomialSpace.57", ptr %0, i64 0, i32 3
  %42 = getelementptr inbounds %"class.dealii::PolynomialSpace.57", ptr %0, i64 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %43 = getelementptr inbounds %"class.dealii::PolynomialSpace.57", ptr %0, i64 0, i32 3, i32 0, i32 0, i32 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %41, i8 0, i64 24, i1 false)
  br i1 %26, label %47, label %44

44:                                               ; preds = %39
  %45 = shl nuw nsw i64 %23, 2
  %46 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %45) #21
          to label %47 unwind label %67

47:                                               ; preds = %44, %39
  %48 = phi ptr [ null, %39 ], [ %46, %44 ]
  store ptr %48, ptr %41, align 8, !tbaa !90
  store ptr %48, ptr %42, align 8, !tbaa !92
  %49 = getelementptr inbounds i32, ptr %48, i64 %23
  store ptr %49, ptr %43, align 8, !tbaa !93
  br i1 %26, label %56, label %50

50:                                               ; preds = %47
  store i32 0, ptr %48, align 4, !tbaa !94
  %51 = getelementptr i32, ptr %48, i64 1
  %52 = icmp eq i32 %20, 1
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = shl nuw nsw i64 %23, 2
  %55 = add nsw i64 %54, -4
  tail call void @llvm.memset.p0.i64(ptr align 4 %51, i8 0, i64 %55, i1 false), !tbaa !94
  br label %56

56:                                               ; preds = %47, %50, %53
  %57 = phi ptr [ %48, %47 ], [ %51, %50 ], [ %49, %53 ]
  store ptr %57, ptr %42, align 8, !tbaa !92
  %58 = load i32, ptr %12, align 8, !tbaa !151
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  %61 = zext i32 %58 to i64
  br label %71

62:                                               ; preds = %71, %56
  ret void

63:                                               ; preds = %11
  %64 = landingpad { ptr, i32 }
          cleanup
  br label %79

65:                                               ; preds = %27
  %66 = landingpad { ptr, i32 }
          cleanup
  br label %79

67:                                               ; preds = %44
  %68 = landingpad { ptr, i32 }
          cleanup
  %69 = icmp eq ptr %31, null
  br i1 %69, label %79, label %70

70:                                               ; preds = %67
  tail call void @_ZdlPv(ptr noundef %31) #20
  br label %79

71:                                               ; preds = %60, %71
  %72 = phi i64 [ 0, %60 ], [ %77, %71 ]
  %73 = getelementptr inbounds i32, ptr %31, i64 %72
  %74 = trunc i64 %72 to i32
  store i32 %74, ptr %73, align 4, !tbaa !94
  %75 = getelementptr inbounds i32, ptr %48, i64 %72
  %76 = trunc i64 %72 to i32
  store i32 %76, ptr %75, align 4, !tbaa !94
  %77 = add nuw nsw i64 %72, 1
  %78 = icmp eq i64 %77, %61
  br i1 %78, label %62, label %71, !llvm.loop !158

79:                                               ; preds = %70, %67, %65, %63
  %80 = phi { ptr, i32 } [ %66, %65 ], [ %64, %63 ], [ %68, %67 ], [ %68, %70 ]
  %81 = load ptr, ptr %0, align 8, !tbaa !44
  %82 = load ptr, ptr %6, align 8, !tbaa !49
  %83 = icmp eq ptr %81, %82
  br i1 %83, label %90, label %84

84:                                               ; preds = %79, %84
  %85 = phi ptr [ %88, %84 ], [ %81, %79 ]
  %86 = load ptr, ptr %85, align 8, !tbaa !50
  %87 = load ptr, ptr %86, align 8
  tail call void %87(ptr noundef nonnull align 8 dereferenceable(96) %85) #19
  %88 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %85, i64 1
  %89 = icmp eq ptr %88, %82
  br i1 %89, label %90, label %84, !llvm.loop !52

90:                                               ; preds = %84, %79
  %91 = load ptr, ptr %0, align 8, !tbaa !44
  %92 = icmp eq ptr %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %90, %7
  %94 = phi ptr [ %9, %7 ], [ %91, %90 ]
  %95 = phi { ptr, i32 } [ %8, %7 ], [ %80, %90 ]
  tail call void @_ZdlPv(ptr noundef %94) #20
  br label %96

96:                                               ; preds = %93, %90, %7
  %97 = phi { ptr, i32 } [ %8, %7 ], [ %80, %90 ], [ %95, %93 ]
  resume { ptr, i32 } %97
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef i32 @_ZN6dealii14PolynomialsBDMILi3EE14compute_n_polsEj(i32 noundef %0) local_unnamed_addr #5 comdat align 2 !prof !98 {
  %2 = add i32 %0, 1
  %3 = add i32 %0, 2
  %4 = mul i32 %2, %3
  %5 = add i32 %0, 3
  %6 = mul i32 %4, %5
  %7 = lshr i32 %6, 1
  %8 = mul i32 %2, 3
  %9 = add i32 %7, %8
  ret i32 %9
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii14PolynomialsBDMILi3EE7computeERKNS_5PointILi3EEERSt6vectorINS_6TensorILi1ELi3EEESaIS8_EERS6_INS7_ILi2ELi3EEESaISC_EERS6_INS7_ILi3ELi3EEESaISG_EE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !43 {
  %6 = alloca %"class.dealii::Tensor.77", align 8
  %7 = alloca %"class.dealii::Tensor.79", align 8
  %8 = alloca %"class.std::vector.5", align 8
  %9 = alloca %"class.std::vector.5", align 8
  %10 = getelementptr inbounds %"class.dealii::PolynomialSpace.57", ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !151
  %12 = getelementptr inbounds %"class.dealii::PolynomialsBDM.56", ptr %0, i64 0, i32 3
  %13 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl_data", ptr %2, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !153
  %15 = load ptr, ptr %2, align 8, !tbaa !152
  %16 = icmp eq ptr %14, %15
  %17 = zext i32 %11 to i64
  %18 = select i1 %16, i64 0, i64 %17
  %19 = getelementptr inbounds %"class.dealii::PolynomialsBDM.56", ptr %0, i64 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !80
  %21 = load ptr, ptr %12, align 8, !tbaa !79
  %22 = ptrtoint ptr %20 to i64
  %23 = ptrtoint ptr %21 to i64
  %24 = sub i64 %22, %23
  %25 = ashr exact i64 %24, 3
  %26 = icmp ult i64 %25, %18
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = sub nsw i64 %18, %25
  tail call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %12, i64 noundef %28)
  br label %35

29:                                               ; preds = %5
  %30 = icmp ugt i64 %25, %18
  br i1 %30, label %31, label %35

31:                                               ; preds = %29
  %32 = getelementptr inbounds double, ptr %21, i64 %18
  %33 = icmp eq ptr %20, %32
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  store ptr %32, ptr %19, align 8, !tbaa !80
  br label %35

35:                                               ; preds = %27, %29, %31, %34
  %36 = getelementptr inbounds %"class.dealii::PolynomialsBDM.56", ptr %0, i64 0, i32 4
  %37 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<2, 3>, std::allocator<dealii::Tensor<2, 3>>>::_Vector_impl_data", ptr %3, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !156
  %39 = load ptr, ptr %3, align 8, !tbaa !155
  %40 = icmp eq ptr %38, %39
  %41 = select i1 %40, i64 0, i64 %17
  %42 = getelementptr inbounds %"class.dealii::PolynomialsBDM.56", ptr %0, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !153
  %44 = load ptr, ptr %36, align 8, !tbaa !152
  %45 = ptrtoint ptr %43 to i64
  %46 = ptrtoint ptr %44 to i64
  %47 = sub i64 %45, %46
  %48 = sdiv exact i64 %47, 24
  %49 = icmp ult i64 %48, %41
  br i1 %49, label %50, label %52

50:                                               ; preds = %35
  %51 = sub nsw i64 %41, %48
  tail call void @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %36, i64 noundef %51)
  br label %58

52:                                               ; preds = %35
  %53 = icmp ugt i64 %48, %41
  br i1 %53, label %54, label %58

54:                                               ; preds = %52
  %55 = getelementptr inbounds %"class.dealii::Tensor.74", ptr %44, i64 %41
  %56 = icmp eq ptr %43, %55
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  store ptr %55, ptr %42, align 8, !tbaa !153
  br label %58

58:                                               ; preds = %50, %52, %54, %57
  %59 = getelementptr inbounds %"class.dealii::PolynomialsBDM.56", ptr %0, i64 0, i32 5
  %60 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<3, 3>, std::allocator<dealii::Tensor<3, 3>>>::_Vector_impl_data", ptr %4, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !159
  %62 = load ptr, ptr %4, align 8, !tbaa !161
  %63 = icmp eq ptr %61, %62
  %64 = select i1 %63, i64 0, i64 %17
  %65 = getelementptr inbounds %"class.dealii::PolynomialsBDM.56", ptr %0, i64 0, i32 5, i32 0, i32 0, i32 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !156
  %67 = load ptr, ptr %59, align 8, !tbaa !155
  %68 = ptrtoint ptr %66 to i64
  %69 = ptrtoint ptr %67 to i64
  %70 = sub i64 %68, %69
  %71 = sdiv exact i64 %70, 72
  %72 = icmp ult i64 %71, %64
  br i1 %72, label %73, label %75

73:                                               ; preds = %58
  %74 = sub nsw i64 %64, %71
  tail call void @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %59, i64 noundef %74)
  br label %81

75:                                               ; preds = %58
  %76 = icmp ugt i64 %71, %64
  br i1 %76, label %77, label %81

77:                                               ; preds = %75
  %78 = getelementptr inbounds %"class.dealii::Tensor.77", ptr %67, i64 %64
  %79 = icmp eq ptr %66, %78
  br i1 %79, label %81, label %80

80:                                               ; preds = %77
  store ptr %78, ptr %65, align 8, !tbaa !156
  br label %81

81:                                               ; preds = %73, %75, %77, %80
  tail call void @_ZNK6dealii15PolynomialSpaceILi3EE7computeERKNS_5PointILi3EEERSt6vectorIdSaIdEERS6_INS_6TensorILi1ELi3EEESaISB_EERS6_INSA_ILi2ELi3EEESaISF_EE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %36, ptr noundef nonnull align 8 dereferenceable(24) %59)
  %82 = load ptr, ptr %2, align 8, !tbaa !91
  %83 = load ptr, ptr %13, align 8, !tbaa !91
  %84 = icmp eq ptr %82, %83
  br i1 %84, label %89, label %85

85:                                               ; preds = %81, %85
  %86 = phi ptr [ %87, %85 ], [ %82, %81 ]
  %87 = getelementptr inbounds %"class.dealii::Tensor.74", ptr %86, i64 1
  %88 = icmp eq ptr %87, %83
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %86, i8 0, i64 24, i1 false)
  br i1 %88, label %89, label %85, !llvm.loop !162

89:                                               ; preds = %85, %81
  %90 = load ptr, ptr %19, align 8, !tbaa !80
  %91 = load ptr, ptr %12, align 8, !tbaa !79
  %92 = ptrtoint ptr %90 to i64
  %93 = ptrtoint ptr %91 to i64
  %94 = sub i64 %92, %93
  %95 = ashr exact i64 %94, 3
  %96 = icmp eq ptr %90, %91
  br i1 %96, label %101, label %97

97:                                               ; preds = %89, %131
  %98 = phi i64 [ %133, %131 ], [ 0, %89 ]
  %99 = phi i32 [ %132, %131 ], [ 0, %89 ]
  %100 = getelementptr inbounds double, ptr %91, i64 %98
  br label %135

101:                                              ; preds = %131, %89
  %102 = load ptr, ptr %3, align 8, !tbaa !91
  %103 = load ptr, ptr %37, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %6) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %6, i8 0, i64 72, i1 false), !tbaa !82
  %104 = icmp eq ptr %102, %103
  br i1 %104, label %123, label %105

105:                                              ; preds = %101, %120
  %106 = phi ptr [ %121, %120 ], [ %102, %101 ]
  br label %107

107:                                              ; preds = %105, %107
  %108 = phi i64 [ 0, %105 ], [ %118, %107 ]
  %109 = getelementptr inbounds [3 x %"class.dealii::Tensor.74"], ptr %6, i64 0, i64 %108
  %110 = getelementptr inbounds [3 x %"class.dealii::Tensor.74"], ptr %106, i64 0, i64 %108
  %111 = load double, ptr %109, align 8, !tbaa !82
  store double %111, ptr %110, align 8, !tbaa !82
  %112 = getelementptr inbounds [3 x double], ptr %109, i64 0, i64 1
  %113 = load double, ptr %112, align 8, !tbaa !82
  %114 = getelementptr inbounds [3 x double], ptr %110, i64 0, i64 1
  store double %113, ptr %114, align 8, !tbaa !82
  %115 = getelementptr inbounds [3 x double], ptr %109, i64 0, i64 2
  %116 = load double, ptr %115, align 8, !tbaa !82
  %117 = getelementptr inbounds [3 x double], ptr %110, i64 0, i64 2
  store double %116, ptr %117, align 8, !tbaa !82
  %118 = add nuw nsw i64 %108, 1
  %119 = icmp eq i64 %118, 3
  br i1 %119, label %120, label %107, !llvm.loop !163

120:                                              ; preds = %107
  %121 = getelementptr inbounds %"class.dealii::Tensor.77", ptr %106, i64 1
  %122 = icmp eq ptr %121, %103
  br i1 %122, label %123, label %105, !llvm.loop !164

123:                                              ; preds = %120, %101
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #19
  %124 = load ptr, ptr %42, align 8, !tbaa !153
  %125 = load ptr, ptr %36, align 8, !tbaa !152
  %126 = ptrtoint ptr %124 to i64
  %127 = ptrtoint ptr %125 to i64
  %128 = sub i64 %126, %127
  %129 = sdiv exact i64 %128, 24
  %130 = icmp eq ptr %124, %125
  br i1 %130, label %152, label %146

131:                                              ; preds = %135
  %132 = add i32 %99, 1
  %133 = zext i32 %132 to i64
  %134 = icmp ugt i64 %95, %133
  br i1 %134, label %97, label %101, !llvm.loop !165

135:                                              ; preds = %97, %135
  %136 = phi i64 [ 0, %97 ], [ %144, %135 ]
  %137 = load double, ptr %100, align 8, !tbaa !82
  %138 = trunc i64 %136 to i32
  %139 = mul i32 %11, %138
  %140 = add i32 %139, %99
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds %"class.dealii::Tensor.74", ptr %82, i64 %141
  %143 = getelementptr inbounds [3 x double], ptr %142, i64 0, i64 %136
  store double %137, ptr %143, align 8, !tbaa !82
  %144 = add nuw nsw i64 %136, 1
  %145 = icmp eq i64 %144, 3
  br i1 %145, label %131, label %135, !llvm.loop !166

146:                                              ; preds = %123, %189
  %147 = phi i64 [ %191, %189 ], [ 0, %123 ]
  %148 = phi i32 [ %190, %189 ], [ 0, %123 ]
  %149 = getelementptr inbounds %"class.dealii::Tensor.74", ptr %125, i64 %147
  %150 = getelementptr inbounds [3 x double], ptr %149, i64 0, i64 1
  %151 = getelementptr inbounds [3 x double], ptr %149, i64 0, i64 2
  br label %193

152:                                              ; preds = %189, %123
  %153 = load ptr, ptr %4, align 8, !tbaa !91
  %154 = load ptr, ptr %60, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %7) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %7, i8 0, i64 216, i1 false), !tbaa !82
  %155 = icmp eq ptr %153, %154
  br i1 %155, label %181, label %156

156:                                              ; preds = %152, %178
  %157 = phi ptr [ %179, %178 ], [ %153, %152 ]
  br label %158

158:                                              ; preds = %156, %175
  %159 = phi i64 [ 0, %156 ], [ %176, %175 ]
  %160 = getelementptr inbounds [3 x %"class.dealii::Tensor.77"], ptr %7, i64 0, i64 %159
  %161 = getelementptr inbounds [3 x %"class.dealii::Tensor.77"], ptr %157, i64 0, i64 %159
  br label %162

162:                                              ; preds = %158, %162
  %163 = phi i64 [ 0, %158 ], [ %173, %162 ]
  %164 = getelementptr inbounds [3 x %"class.dealii::Tensor.74"], ptr %160, i64 0, i64 %163
  %165 = getelementptr inbounds [3 x %"class.dealii::Tensor.74"], ptr %161, i64 0, i64 %163
  %166 = load double, ptr %164, align 8, !tbaa !82
  store double %166, ptr %165, align 8, !tbaa !82
  %167 = getelementptr inbounds [3 x double], ptr %164, i64 0, i64 1
  %168 = load double, ptr %167, align 8, !tbaa !82
  %169 = getelementptr inbounds [3 x double], ptr %165, i64 0, i64 1
  store double %168, ptr %169, align 8, !tbaa !82
  %170 = getelementptr inbounds [3 x double], ptr %164, i64 0, i64 2
  %171 = load double, ptr %170, align 8, !tbaa !82
  %172 = getelementptr inbounds [3 x double], ptr %165, i64 0, i64 2
  store double %171, ptr %172, align 8, !tbaa !82
  %173 = add nuw nsw i64 %163, 1
  %174 = icmp eq i64 %173, 3
  br i1 %174, label %175, label %162, !llvm.loop !163

175:                                              ; preds = %162
  %176 = add nuw nsw i64 %159, 1
  %177 = icmp eq i64 %176, 3
  br i1 %177, label %178, label %158, !llvm.loop !167

178:                                              ; preds = %175
  %179 = getelementptr inbounds %"class.dealii::Tensor.79", ptr %157, i64 1
  %180 = icmp eq ptr %179, %154
  br i1 %180, label %181, label %156, !llvm.loop !168

181:                                              ; preds = %178, %152
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %7) #19
  %182 = load ptr, ptr %65, align 8, !tbaa !156
  %183 = load ptr, ptr %59, align 8, !tbaa !155
  %184 = ptrtoint ptr %182 to i64
  %185 = ptrtoint ptr %183 to i64
  %186 = sub i64 %184, %185
  %187 = sdiv exact i64 %186, 72
  %188 = icmp eq ptr %182, %183
  br i1 %188, label %212, label %208

189:                                              ; preds = %193
  %190 = add i32 %148, 1
  %191 = zext i32 %190 to i64
  %192 = icmp ugt i64 %129, %191
  br i1 %192, label %146, label %152, !llvm.loop !169

193:                                              ; preds = %146, %193
  %194 = phi i64 [ 0, %146 ], [ %206, %193 ]
  %195 = trunc i64 %194 to i32
  %196 = mul i32 %11, %195
  %197 = add i32 %196, %148
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds %"class.dealii::Tensor.77", ptr %102, i64 %198
  %200 = getelementptr inbounds [3 x %"class.dealii::Tensor.74"], ptr %199, i64 0, i64 %194
  %201 = load double, ptr %149, align 8, !tbaa !82
  store double %201, ptr %200, align 8, !tbaa !82
  %202 = load double, ptr %150, align 8, !tbaa !82
  %203 = getelementptr inbounds [3 x double], ptr %200, i64 0, i64 1
  store double %202, ptr %203, align 8, !tbaa !82
  %204 = load double, ptr %151, align 8, !tbaa !82
  %205 = getelementptr inbounds [3 x double], ptr %200, i64 0, i64 2
  store double %204, ptr %205, align 8, !tbaa !82
  %206 = add nuw nsw i64 %194, 1
  %207 = icmp eq i64 %206, 3
  br i1 %207, label %189, label %193, !llvm.loop !170

208:                                              ; preds = %181, %219
  %209 = phi i64 [ %221, %219 ], [ 0, %181 ]
  %210 = phi i32 [ %220, %219 ], [ 0, %181 ]
  %211 = getelementptr inbounds %"class.dealii::Tensor.77", ptr %183, i64 %209
  br label %223

212:                                              ; preds = %219, %181
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #19
  %213 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %8, i64 0, i32 1
  %214 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %8, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %215 = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #21
  store ptr %215, ptr %8, align 8, !tbaa !79
  store ptr %215, ptr %213, align 8, !tbaa !80
  %216 = getelementptr inbounds double, ptr %215, i64 3
  store ptr %216, ptr %214, align 8, !tbaa !81
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %215, i8 0, i64 24, i1 false)
  %217 = mul i32 %11, 3
  store ptr %216, ptr %213, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %218 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #21
          to label %247 unwind label %284

219:                                              ; preds = %244
  %220 = add i32 %210, 1
  %221 = zext i32 %220 to i64
  %222 = icmp ugt i64 %187, %221
  br i1 %222, label %208, label %212, !llvm.loop !171

223:                                              ; preds = %208, %244
  %224 = phi i64 [ 0, %208 ], [ %245, %244 ]
  %225 = trunc i64 %224 to i32
  %226 = mul i32 %11, %225
  %227 = add i32 %226, %210
  %228 = zext i32 %227 to i64
  %229 = getelementptr inbounds %"class.dealii::Tensor.79", ptr %153, i64 %228
  %230 = getelementptr inbounds [3 x %"class.dealii::Tensor.77"], ptr %229, i64 0, i64 %224
  br label %231

231:                                              ; preds = %223, %231
  %232 = phi i64 [ 0, %223 ], [ %242, %231 ]
  %233 = getelementptr inbounds [3 x %"class.dealii::Tensor.74"], ptr %211, i64 0, i64 %232
  %234 = getelementptr inbounds [3 x %"class.dealii::Tensor.74"], ptr %230, i64 0, i64 %232
  %235 = load double, ptr %233, align 8, !tbaa !82
  store double %235, ptr %234, align 8, !tbaa !82
  %236 = getelementptr inbounds [3 x double], ptr %233, i64 0, i64 1
  %237 = load double, ptr %236, align 8, !tbaa !82
  %238 = getelementptr inbounds [3 x double], ptr %234, i64 0, i64 1
  store double %237, ptr %238, align 8, !tbaa !82
  %239 = getelementptr inbounds [3 x double], ptr %233, i64 0, i64 2
  %240 = load double, ptr %239, align 8, !tbaa !82
  %241 = getelementptr inbounds [3 x double], ptr %234, i64 0, i64 2
  store double %240, ptr %241, align 8, !tbaa !82
  %242 = add nuw nsw i64 %232, 1
  %243 = icmp eq i64 %242, 3
  br i1 %243, label %244, label %231, !llvm.loop !163

244:                                              ; preds = %231
  %245 = add nuw nsw i64 %224, 1
  %246 = icmp eq i64 %245, 3
  br i1 %246, label %219, label %223, !llvm.loop !172

247:                                              ; preds = %212
  %248 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %9, i64 0, i32 1
  %249 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %9, i64 0, i32 2
  store ptr %218, ptr %9, align 8, !tbaa !79
  store ptr %218, ptr %248, align 8, !tbaa !80
  %250 = getelementptr inbounds double, ptr %218, i64 3
  store ptr %250, ptr %249, align 8, !tbaa !81
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %218, i8 0, i64 24, i1 false)
  store ptr %250, ptr %248, align 8, !tbaa !80
  %251 = getelementptr inbounds %"class.dealii::PolynomialsBDM.56", ptr %0, i64 0, i32 1
  %252 = load ptr, ptr %251, align 8, !tbaa !44
  %253 = load double, ptr %1, align 8, !tbaa !82
  invoke void @_ZNK6dealii11Polynomials10PolynomialIdE5valueEdRSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(96) %252, double noundef %253, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %254 unwind label %286

254:                                              ; preds = %247
  %255 = load ptr, ptr %251, align 8, !tbaa !44
  %256 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 1
  %257 = load double, ptr %256, align 8, !tbaa !82
  invoke void @_ZNK6dealii11Polynomials10PolynomialIdE5valueEdRSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(96) %255, double noundef %257, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %258 unwind label %286

258:                                              ; preds = %254
  %259 = load ptr, ptr %13, align 8, !tbaa !153
  %260 = load ptr, ptr %2, align 8, !tbaa !152
  %261 = icmp eq ptr %259, %260
  br i1 %261, label %291, label %262

262:                                              ; preds = %258
  %263 = load ptr, ptr %8, align 8, !tbaa !79
  %264 = load double, ptr %263, align 8, !tbaa !82
  %265 = zext i32 %217 to i64
  %266 = getelementptr inbounds %"class.dealii::Tensor.74", ptr %260, i64 %265
  store double %264, ptr %266, align 8, !tbaa !82
  %267 = load double, ptr %256, align 8, !tbaa !82
  %268 = fneg double %267
  %269 = getelementptr inbounds double, ptr %263, i64 1
  %270 = load double, ptr %269, align 8, !tbaa !82
  %271 = fmul double %270, %268
  %272 = getelementptr inbounds %"class.dealii::Tensor.74", ptr %260, i64 %265, i32 0, i64 1
  store double %271, ptr %272, align 8, !tbaa !82
  %273 = load double, ptr %1, align 8, !tbaa !82
  %274 = fneg double %273
  %275 = load ptr, ptr %9, align 8, !tbaa !79
  %276 = getelementptr inbounds double, ptr %275, i64 1
  %277 = load double, ptr %276, align 8, !tbaa !82
  %278 = fmul double %277, %274
  %279 = add i32 %217, 1
  %280 = zext i32 %279 to i64
  %281 = getelementptr inbounds %"class.dealii::Tensor.74", ptr %260, i64 %280
  store double %278, ptr %281, align 8, !tbaa !82
  %282 = load double, ptr %275, align 8, !tbaa !82
  %283 = getelementptr inbounds %"class.dealii::Tensor.74", ptr %260, i64 %280, i32 0, i64 1
  store double %282, ptr %283, align 8, !tbaa !82
  br label %291

284:                                              ; preds = %212
  %285 = landingpad { ptr, i32 }
          cleanup
  br label %336

286:                                              ; preds = %254, %247
  %287 = landingpad { ptr, i32 }
          cleanup
  %288 = load ptr, ptr %9, align 8, !tbaa !79
  %289 = icmp eq ptr %288, null
  br i1 %289, label %336, label %290

290:                                              ; preds = %286
  call void @_ZdlPv(ptr noundef %288) #20
  br label %336

291:                                              ; preds = %262, %258
  %292 = load ptr, ptr %37, align 8, !tbaa !156
  %293 = load ptr, ptr %3, align 8, !tbaa !155
  %294 = icmp eq ptr %292, %293
  br i1 %294, label %327, label %295

295:                                              ; preds = %291
  %296 = load ptr, ptr %8, align 8, !tbaa !79
  %297 = getelementptr inbounds double, ptr %296, i64 1
  %298 = load double, ptr %297, align 8, !tbaa !82
  %299 = zext i32 %217 to i64
  %300 = getelementptr inbounds %"class.dealii::Tensor.77", ptr %293, i64 %299
  store double %298, ptr %300, align 8, !tbaa !82
  %301 = getelementptr inbounds %"class.dealii::Tensor.77", ptr %293, i64 %299, i32 0, i64 0, i32 0, i64 1
  store double 0.000000e+00, ptr %301, align 8, !tbaa !82
  %302 = load double, ptr %256, align 8, !tbaa !82
  %303 = fneg double %302
  %304 = getelementptr inbounds double, ptr %296, i64 2
  %305 = load double, ptr %304, align 8, !tbaa !82
  %306 = fmul double %305, %303
  %307 = getelementptr inbounds %"class.dealii::Tensor.77", ptr %293, i64 %299, i32 0, i64 1
  store double %306, ptr %307, align 8, !tbaa !82
  %308 = load double, ptr %297, align 8, !tbaa !82
  %309 = fneg double %308
  %310 = getelementptr inbounds %"class.dealii::Tensor.77", ptr %293, i64 %299, i32 0, i64 1, i32 0, i64 1
  store double %309, ptr %310, align 8, !tbaa !82
  %311 = load ptr, ptr %9, align 8, !tbaa !79
  %312 = getelementptr inbounds double, ptr %311, i64 1
  %313 = load double, ptr %312, align 8, !tbaa !82
  %314 = fneg double %313
  %315 = add i32 %217, 1
  %316 = zext i32 %315 to i64
  %317 = getelementptr inbounds %"class.dealii::Tensor.77", ptr %293, i64 %316
  store double %314, ptr %317, align 8, !tbaa !82
  %318 = load double, ptr %1, align 8, !tbaa !82
  %319 = fneg double %318
  %320 = getelementptr inbounds double, ptr %311, i64 2
  %321 = load double, ptr %320, align 8, !tbaa !82
  %322 = fmul double %321, %319
  %323 = getelementptr inbounds %"class.dealii::Tensor.77", ptr %293, i64 %316, i32 0, i64 0, i32 0, i64 1
  store double %322, ptr %323, align 8, !tbaa !82
  %324 = getelementptr inbounds %"class.dealii::Tensor.77", ptr %293, i64 %316, i32 0, i64 1
  store double 0.000000e+00, ptr %324, align 8, !tbaa !82
  %325 = load double, ptr %312, align 8, !tbaa !82
  %326 = getelementptr inbounds %"class.dealii::Tensor.77", ptr %293, i64 %316, i32 0, i64 1, i32 0, i64 1
  store double %325, ptr %326, align 8, !tbaa !82
  br label %327

327:                                              ; preds = %295, %291
  %328 = load ptr, ptr %9, align 8, !tbaa !79
  %329 = icmp eq ptr %328, null
  br i1 %329, label %331, label %330

330:                                              ; preds = %327
  call void @_ZdlPv(ptr noundef %328) #20
  br label %331

331:                                              ; preds = %327, %330
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #19
  %332 = load ptr, ptr %8, align 8, !tbaa !79
  %333 = icmp eq ptr %332, null
  br i1 %333, label %335, label %334

334:                                              ; preds = %331
  call void @_ZdlPv(ptr noundef %332) #20
  br label %335

335:                                              ; preds = %331, %334
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #19
  ret void

336:                                              ; preds = %290, %286, %284
  %337 = phi { ptr, i32 } [ %285, %284 ], [ %287, %286 ], [ %287, %290 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #19
  %338 = load ptr, ptr %8, align 8, !tbaa !79
  %339 = icmp eq ptr %338, null
  br i1 %339, label %341, label %340

340:                                              ; preds = %336
  call void @_ZdlPv(ptr noundef %338) #20
  br label %341

341:                                              ; preds = %340, %336
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #19
  resume { ptr, i32 } %337
}

declare void @_ZNK6dealii15PolynomialSpaceILi3EE7computeERKNS_5PointILi3EEERSt6vectorIdSaIdEERS6_INS_6TensorILi1ELi3EEESaISB_EERS6_INSA_ILi2ELi3EEESaISF_EE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #0

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii14PolynomialsBDMILi3EE1nEv(ptr noundef nonnull align 8 dereferenceable(184) %0) local_unnamed_addr #6 comdat align 2 !prof !98 {
  %2 = getelementptr inbounds %"class.dealii::PolynomialsBDM.56", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !140
  ret i32 %3
}

; Function Attrs: cold inlinehint mustprogress uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii14PolynomialsBDMILi3EE6degreeEv(ptr noundef nonnull align 8 dereferenceable(184) %0) local_unnamed_addr #7 comdat align 2 !prof !98 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = load ptr, ptr %0, align 8, !tbaa !44
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 96
  %9 = trunc i64 %8 to i32
  ret i32 %9
}

declare noundef nonnull align 8 dereferenceable(72) ptr @_ZN6dealii11SubscriptoraSERKS0_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #0

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat !prof !98 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #19
  tail call void @_ZSt9terminatev() #23
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii11Polynomials10PolynomialIdED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !prof !173 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials10PolynomialIdEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !50
  %2 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !79
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !174

5:                                                ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #20
  br label %6

6:                                                ; preds = %1, %5
  tail call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #19
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii11Polynomials10PolynomialIdED0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !43 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials10PolynomialIdEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !50
  %2 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !79
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #20
  br label %6

6:                                                ; preds = %1, %5
  tail call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #19
  tail call void @_ZdlPv(ptr noundef %0) #20
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #10

declare noundef i32 @_ZN6dealii15PolynomialSpaceILi1EE14compute_n_polsEj(i32 noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE19_M_range_initializeIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEvT_SC_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 !prof !175 {
  %4 = ptrtoint ptr %2 to i64
  %5 = ptrtoint ptr %1 to i64
  %6 = sub i64 %4, %5
  %7 = sdiv exact i64 %6, 96
  %8 = icmp ugt i64 %7, 96076792050570581
  br i1 %8, label %9, label %10, !prof !176

9:                                                ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #22
  unreachable

10:                                               ; preds = %3
  %11 = icmp eq ptr %2, %1
  br i1 %11, label %14, label %12, !prof !176

12:                                               ; preds = %10
  %13 = tail call noundef ptr @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %7, ptr noundef null)
  br label %14

14:                                               ; preds = %10, %12
  %15 = phi ptr [ %13, %12 ], [ null, %10 ]
  store ptr %15, ptr %0, align 8, !tbaa !44
  %16 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %15, i64 %7
  %17 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %16, ptr %17, align 8, !tbaa !96
  %18 = tail call noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS5_SaIS5_EEEEPS5_ET0_T_SE_SD_(ptr %1, ptr %2, ptr noundef %15)
  %19 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %18, ptr %19, align 8, !tbaa !49
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 !prof !177 {
  %4 = icmp ugt i64 %1, 96076792050570581
  br i1 %4, label %5, label %9, !prof !178

5:                                                ; preds = %3
  %6 = icmp ugt i64 %1, 192153584101141162
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #22
  unreachable

8:                                                ; preds = %5
  tail call void @_ZSt17__throw_bad_allocv() #22
  unreachable

9:                                                ; preds = %3
  %10 = mul nuw i64 %1, 96
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #21
  ret ptr %11
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #12

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS5_SaIS5_EEEEPS5_ET0_T_SE_SD_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 !annotation !43 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %66, label %5

5:                                                ; preds = %3, %41
  %6 = phi ptr [ %44, %41 ], [ %2, %3 ]
  %7 = phi ptr [ %43, %41 ], [ %0, %3 ]
  invoke void @_ZN6dealii11SubscriptorC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(72) %7)
          to label %8 unwind label %52

8:                                                ; preds = %5
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials10PolynomialIdEE, i64 0, inrange i32 0, i64 2), ptr %6, align 8, !tbaa !50
  %9 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %6, i64 0, i32 1
  %10 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %7, i64 0, i32 1
  %11 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %7, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !80
  %13 = load ptr, ptr %10, align 8, !tbaa !79
  %14 = ptrtoint ptr %12 to i64
  %15 = ptrtoint ptr %13 to i64
  %16 = sub i64 %14, %15
  %17 = ashr exact i64 %16, 3
  %18 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %6, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %19 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %6, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %20 = icmp eq ptr %12, %13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br i1 %20, label %31, label %21, !prof !179

21:                                               ; preds = %8
  %22 = icmp ugt i64 %17, 1152921504606846975
  br i1 %22, label %23, label %29, !prof !180

23:                                               ; preds = %21
  %24 = icmp ugt i64 %17, 2305843009213693951
  br i1 %24, label %25, label %27

25:                                               ; preds = %23
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #22
          to label %26 unwind label %48

26:                                               ; preds = %25
  unreachable

27:                                               ; preds = %23
  invoke void @_ZSt17__throw_bad_allocv() #22
          to label %28 unwind label %48

28:                                               ; preds = %27
  unreachable

29:                                               ; preds = %21
  %30 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %16) #21
          to label %31 unwind label %46

31:                                               ; preds = %29, %8
  %32 = phi ptr [ null, %8 ], [ %30, %29 ]
  store ptr %32, ptr %9, align 8, !tbaa !79
  store ptr %32, ptr %18, align 8, !tbaa !80
  %33 = getelementptr inbounds double, ptr %32, i64 %17
  store ptr %33, ptr %19, align 8, !tbaa !81
  %34 = load ptr, ptr %10, align 8, !tbaa !91
  %35 = load ptr, ptr %11, align 8, !tbaa !91
  %36 = ptrtoint ptr %35 to i64
  %37 = ptrtoint ptr %34 to i64
  %38 = sub i64 %36, %37
  %39 = icmp eq ptr %35, %34
  br i1 %39, label %41, label %40, !prof !179

40:                                               ; preds = %31
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %32, ptr align 8 %34, i64 %38, i1 false), !prof !181
  br label %41

41:                                               ; preds = %31, %40
  %42 = getelementptr inbounds i8, ptr %32, i64 %38
  store ptr %42, ptr %18, align 8, !tbaa !80
  %43 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %7, i64 1
  %44 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %6, i64 1
  %45 = icmp eq ptr %43, %1
  br i1 %45, label %66, label %5, !llvm.loop !182

46:                                               ; preds = %29
  %47 = landingpad { ptr, i32 }
          catch ptr null
  br label %50

48:                                               ; preds = %25, %27
  %49 = landingpad { ptr, i32 }
          catch ptr null
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi { ptr, i32 } [ %47, %46 ], [ %49, %48 ]
  tail call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %6) #19
  br label %54

52:                                               ; preds = %5
  %53 = landingpad { ptr, i32 }
          catch ptr null
  br label %54

54:                                               ; preds = %50, %52
  %55 = phi { ptr, i32 } [ %53, %52 ], [ %51, %50 ]
  %56 = extractvalue { ptr, i32 } %55, 0
  %57 = tail call ptr @__cxa_begin_catch(ptr %56) #19
  %58 = icmp eq ptr %6, %2
  br i1 %58, label %65, label %59

59:                                               ; preds = %54, %59
  %60 = phi ptr [ %63, %59 ], [ %2, %54 ]
  %61 = load ptr, ptr %60, align 8, !tbaa !50
  %62 = load ptr, ptr %61, align 8
  tail call void %62(ptr noundef nonnull align 8 dereferenceable(96) %60) #19
  %63 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %60, i64 1
  %64 = icmp eq ptr %63, %6
  br i1 %64, label %65, label %59, !llvm.loop !52

65:                                               ; preds = %59, %54
  invoke void @__cxa_rethrow() #22
          to label %74 unwind label %68

66:                                               ; preds = %41, %3
  %67 = phi ptr [ %2, %3 ], [ %44, %41 ]
  ret ptr %67

68:                                               ; preds = %65
  %69 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %70 unwind label %71

70:                                               ; preds = %68
  resume { ptr, i32 } %69

71:                                               ; preds = %68
  %72 = landingpad { ptr, i32 }
          catch ptr null
  %73 = extractvalue { ptr, i32 } %72, 0
  tail call void @__clang_call_terminate(ptr %73) #23
  unreachable

74:                                               ; preds = %65
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

declare void @_ZN6dealii11SubscriptorC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #14

declare void @_ZN6dealii11SubscriptorC2Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi1EEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #11 comdat align 2 !prof !98 {
  %4 = icmp ugt i64 %1, 1152921504606846975
  br i1 %4, label %5, label %9, !prof !183

5:                                                ; preds = %3
  %6 = icmp ugt i64 %1, 2305843009213693951
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #22
  unreachable

8:                                                ; preds = %5
  tail call void @_ZSt17__throw_bad_allocv() #22
  unreachable

9:                                                ; preds = %3
  %10 = shl nuw nsw i64 %1, 3
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #21
  ret ptr %11
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi1EEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #11 comdat align 2 !prof !98 {
  %4 = icmp ugt i64 %1, 1152921504606846975
  br i1 %4, label %5, label %9, !prof !183

5:                                                ; preds = %3
  %6 = icmp ugt i64 %1, 2305843009213693951
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #22
  unreachable

8:                                                ; preds = %5
  tail call void @_ZSt17__throw_bad_allocv() #22
  unreachable

9:                                                ; preds = %3
  %10 = shl nuw nsw i64 %1, 3
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #21
  ret ptr %11
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %60, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !80
  %7 = load ptr, ptr %0, align 8, !tbaa !79
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !81
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
  store double 0.000000e+00, ptr %6, align 8, !tbaa !82
  %22 = getelementptr double, ptr %6, i64 1
  %23 = icmp eq i64 %1, 1
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds double, ptr %6, i64 %1
  %26 = shl i64 %1, 3
  %27 = add i64 %26, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %22, i8 0, i64 %27, i1 false), !tbaa !82
  br label %28

28:                                               ; preds = %24, %21
  %29 = phi ptr [ %22, %21 ], [ %25, %24 ]
  store ptr %29, ptr %5, align 8, !tbaa !80
  br label %60

30:                                               ; preds = %4
  %31 = icmp ult i64 %18, %1
  br i1 %31, label %32, label %33

32:                                               ; preds = %30
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #22
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
  %42 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %41) #21
  br label %43

43:                                               ; preds = %33, %40
  %44 = phi ptr [ %42, %40 ], [ null, %33 ]
  %45 = getelementptr inbounds double, ptr %44, i64 %11
  store double 0.000000e+00, ptr %45, align 8, !tbaa !82
  %46 = icmp eq i64 %1, 1
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = getelementptr double, ptr %45, i64 1
  %49 = shl i64 %1, 3
  %50 = add i64 %49, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %48, i8 0, i64 %50, i1 false), !tbaa !82
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
  tail call void @_ZdlPv(ptr noundef %7) #20
  br label %57

57:                                               ; preds = %54, %56
  store ptr %44, ptr %0, align 8, !tbaa !79
  %58 = getelementptr inbounds double, ptr %45, i64 %1
  store ptr %58, ptr %5, align 8, !tbaa !80
  %59 = getelementptr inbounds double, ptr %44, i64 %38
  store ptr %59, ptr %12, align 8, !tbaa !81
  br label %60

60:                                               ; preds = %28, %57, %2
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %55, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 1>, std::allocator<dealii::Tensor<1, 1>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !85
  %7 = load ptr, ptr %0, align 8, !tbaa !84
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 1>, std::allocator<dealii::Tensor<1, 1>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !86
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
  tail call void @llvm.memset.p0.i64(ptr align 8 %6, i8 0, i64 %22, i1 false), !tbaa !82
  %23 = shl nuw i64 %1, 3
  %24 = getelementptr i8, ptr %6, i64 %23
  store ptr %24, ptr %5, align 8, !tbaa !85
  br label %55

25:                                               ; preds = %4
  %26 = icmp ult i64 %18, %1
  br i1 %26, label %27, label %28

27:                                               ; preds = %25
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #22
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
  tail call void @llvm.memset.p0.i64(ptr align 8 %39, i8 0, i64 %40, i1 false), !tbaa !82
  %41 = icmp eq ptr %7, %6
  br i1 %41, label %49, label %42

42:                                               ; preds = %37, %42
  %43 = phi ptr [ %47, %42 ], [ %38, %37 ]
  %44 = phi ptr [ %46, %42 ], [ %7, %37 ]
  %45 = load double, ptr %44, align 8, !tbaa !82
  store double %45, ptr %43, align 8, !tbaa !82
  %46 = getelementptr inbounds %"class.dealii::Tensor", ptr %44, i64 1
  %47 = getelementptr inbounds %"class.dealii::Tensor", ptr %43, i64 1
  %48 = icmp eq ptr %46, %6
  br i1 %48, label %49, label %42, !llvm.loop !184

49:                                               ; preds = %42, %37
  %50 = icmp eq ptr %7, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %49
  tail call void @_ZdlPv(ptr noundef %7) #20
  br label %52

52:                                               ; preds = %49, %51
  store ptr %38, ptr %0, align 8, !tbaa !84
  %53 = getelementptr inbounds %"class.dealii::Tensor", ptr %39, i64 %1
  store ptr %53, ptr %5, align 8, !tbaa !85
  %54 = getelementptr inbounds %"class.dealii::Tensor", ptr %38, i64 %33
  store ptr %54, ptr %12, align 8, !tbaa !86
  br label %55

55:                                               ; preds = %21, %52, %2
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %55, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<2, 1>, std::allocator<dealii::Tensor<2, 1>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !88
  %7 = load ptr, ptr %0, align 8, !tbaa !87
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<2, 1>, std::allocator<dealii::Tensor<2, 1>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !89
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
  tail call void @llvm.memset.p0.i64(ptr align 8 %6, i8 0, i64 %22, i1 false), !tbaa !82
  %23 = shl nuw i64 %1, 3
  %24 = getelementptr i8, ptr %6, i64 %23
  store ptr %24, ptr %5, align 8, !tbaa !88
  br label %55

25:                                               ; preds = %4
  %26 = icmp ult i64 %18, %1
  br i1 %26, label %27, label %28

27:                                               ; preds = %25
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #22
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
  %39 = getelementptr %"class.dealii::Tensor.29", ptr %38, i64 %11
  %40 = shl nuw i64 %1, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %39, i8 0, i64 %40, i1 false), !tbaa !82
  %41 = icmp eq ptr %7, %6
  br i1 %41, label %49, label %42

42:                                               ; preds = %37, %42
  %43 = phi ptr [ %47, %42 ], [ %38, %37 ]
  %44 = phi ptr [ %46, %42 ], [ %7, %37 ]
  %45 = load double, ptr %44, align 8, !tbaa !82
  store double %45, ptr %43, align 8, !tbaa !82
  %46 = getelementptr inbounds %"class.dealii::Tensor.29", ptr %44, i64 1
  %47 = getelementptr inbounds %"class.dealii::Tensor.29", ptr %43, i64 1
  %48 = icmp eq ptr %46, %6
  br i1 %48, label %49, label %42, !llvm.loop !185

49:                                               ; preds = %42, %37
  %50 = icmp eq ptr %7, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %49
  tail call void @_ZdlPv(ptr noundef %7) #20
  br label %52

52:                                               ; preds = %49, %51
  store ptr %38, ptr %0, align 8, !tbaa !87
  %53 = getelementptr inbounds %"class.dealii::Tensor.29", ptr %39, i64 %1
  store ptr %53, ptr %5, align 8, !tbaa !88
  %54 = getelementptr inbounds %"class.dealii::Tensor.29", ptr %38, i64 %33
  store ptr %54, ptr %12, align 8, !tbaa !89
  br label %55

55:                                               ; preds = %21, %52, %2
  ret void
}

declare noundef i32 @_ZN6dealii15PolynomialSpaceILi2EE14compute_n_polsEj(i32 noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #11 comdat align 2 !prof !98 {
  %4 = icmp ugt i64 %1, 576460752303423487
  br i1 %4, label %5, label %9, !prof !183

5:                                                ; preds = %3
  %6 = icmp ugt i64 %1, 1152921504606846975
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #22
  unreachable

8:                                                ; preds = %5
  tail call void @_ZSt17__throw_bad_allocv() #22
  unreachable

9:                                                ; preds = %3
  %10 = shl nuw nsw i64 %1, 4
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #21
  ret ptr %11
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi2EEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #11 comdat align 2 !prof !98 {
  %4 = icmp ugt i64 %1, 288230376151711743
  br i1 %4, label %5, label %9, !prof !183

5:                                                ; preds = %3
  %6 = icmp ugt i64 %1, 576460752303423487
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #22
  unreachable

8:                                                ; preds = %5
  tail call void @_ZSt17__throw_bad_allocv() #22
  unreachable

9:                                                ; preds = %3
  %10 = shl nuw nsw i64 %1, 5
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #21
  ret ptr %11
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %62, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !120
  %7 = load ptr, ptr %0, align 8, !tbaa !119
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 4
  %12 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !121
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
  tail call void @llvm.memset.p0.i64(ptr align 8 %6, i8 0, i64 %22, i1 false), !tbaa !82
  %23 = shl nuw i64 %1, 4
  %24 = getelementptr i8, ptr %6, i64 %23
  store ptr %24, ptr %5, align 8, !tbaa !120
  br label %62

25:                                               ; preds = %4
  %26 = icmp ult i64 %18, %1
  br i1 %26, label %27, label %28

27:                                               ; preds = %25
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #22
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
  %39 = getelementptr %"class.dealii::Tensor.50", ptr %38, i64 %11
  %40 = shl nuw i64 %1, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %39, i8 0, i64 %40, i1 false), !tbaa !82
  %41 = icmp eq ptr %7, %6
  br i1 %41, label %56, label %42

42:                                               ; preds = %37, %52
  %43 = phi ptr [ %54, %52 ], [ %38, %37 ]
  %44 = phi ptr [ %53, %52 ], [ %7, %37 ]
  br label %45

45:                                               ; preds = %42, %45
  %46 = phi i64 [ 0, %42 ], [ %50, %45 ]
  %47 = getelementptr inbounds [2 x double], ptr %44, i64 0, i64 %46
  %48 = load double, ptr %47, align 8, !tbaa !82
  %49 = getelementptr inbounds [2 x double], ptr %43, i64 0, i64 %46
  store double %48, ptr %49, align 8, !tbaa !82
  %50 = add nuw nsw i64 %46, 1
  %51 = icmp eq i64 %46, 0
  br i1 %51, label %45, label %52, !llvm.loop !186

52:                                               ; preds = %45
  %53 = getelementptr inbounds %"class.dealii::Tensor.50", ptr %44, i64 1
  %54 = getelementptr inbounds %"class.dealii::Tensor.50", ptr %43, i64 1
  %55 = icmp eq ptr %53, %6
  br i1 %55, label %56, label %42, !llvm.loop !187

56:                                               ; preds = %52, %37
  %57 = icmp eq ptr %7, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %56
  tail call void @_ZdlPv(ptr noundef %7) #20
  br label %59

59:                                               ; preds = %56, %58
  store ptr %38, ptr %0, align 8, !tbaa !119
  %60 = getelementptr inbounds %"class.dealii::Tensor.50", ptr %39, i64 %1
  store ptr %60, ptr %5, align 8, !tbaa !120
  %61 = getelementptr inbounds %"class.dealii::Tensor.50", ptr %38, i64 %33
  store ptr %61, ptr %12, align 8, !tbaa !121
  br label %62

62:                                               ; preds = %21, %59, %2
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %69, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<2, 2>, std::allocator<dealii::Tensor<2, 2>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !123
  %7 = load ptr, ptr %0, align 8, !tbaa !122
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 5
  %12 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<2, 2>, std::allocator<dealii::Tensor<2, 2>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !124
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
  tail call void @llvm.memset.p0.i64(ptr align 8 %6, i8 0, i64 %22, i1 false), !tbaa !82
  %23 = shl nuw i64 %1, 5
  %24 = getelementptr i8, ptr %6, i64 %23
  store ptr %24, ptr %5, align 8, !tbaa !123
  br label %69

25:                                               ; preds = %4
  %26 = icmp ult i64 %18, %1
  br i1 %26, label %27, label %28

27:                                               ; preds = %25
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #22
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
  %39 = getelementptr %"class.dealii::Tensor.53", ptr %38, i64 %11
  %40 = shl nuw i64 %1, 5
  tail call void @llvm.memset.p0.i64(ptr align 8 %39, i8 0, i64 %40, i1 false), !tbaa !82
  %41 = icmp eq ptr %7, %6
  br i1 %41, label %63, label %42

42:                                               ; preds = %37, %59
  %43 = phi ptr [ %61, %59 ], [ %38, %37 ]
  %44 = phi ptr [ %60, %59 ], [ %7, %37 ]
  br label %45

45:                                               ; preds = %42, %56
  %46 = phi i64 [ %57, %56 ], [ 0, %42 ]
  %47 = getelementptr inbounds %"class.dealii::Tensor.50", ptr %43, i64 %46
  %48 = getelementptr inbounds [2 x %"class.dealii::Tensor.50"], ptr %44, i64 0, i64 %46
  br label %49

49:                                               ; preds = %45, %49
  %50 = phi i64 [ 0, %45 ], [ %54, %49 ]
  %51 = getelementptr inbounds [2 x double], ptr %48, i64 0, i64 %50
  %52 = load double, ptr %51, align 8, !tbaa !82
  %53 = getelementptr inbounds [2 x double], ptr %47, i64 0, i64 %50
  store double %52, ptr %53, align 8, !tbaa !82
  %54 = add nuw nsw i64 %50, 1
  %55 = icmp eq i64 %50, 0
  br i1 %55, label %49, label %56, !llvm.loop !186

56:                                               ; preds = %49
  %57 = add nuw nsw i64 %46, 1
  %58 = icmp eq i64 %57, 2
  br i1 %58, label %59, label %45

59:                                               ; preds = %56
  %60 = getelementptr inbounds %"class.dealii::Tensor.53", ptr %44, i64 1
  %61 = getelementptr inbounds %"class.dealii::Tensor.53", ptr %43, i64 1
  %62 = icmp eq ptr %60, %6
  br i1 %62, label %63, label %42, !llvm.loop !188

63:                                               ; preds = %59, %37
  %64 = icmp eq ptr %7, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %63
  tail call void @_ZdlPv(ptr noundef %7) #20
  br label %66

66:                                               ; preds = %63, %65
  store ptr %38, ptr %0, align 8, !tbaa !122
  %67 = getelementptr inbounds %"class.dealii::Tensor.53", ptr %39, i64 %1
  store ptr %67, ptr %5, align 8, !tbaa !123
  %68 = getelementptr inbounds %"class.dealii::Tensor.53", ptr %38, i64 %33
  store ptr %68, ptr %12, align 8, !tbaa !124
  br label %69

69:                                               ; preds = %21, %66, %2
  ret void
}

declare noundef i32 @_ZN6dealii15PolynomialSpaceILi3EE14compute_n_polsEj(i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %63, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !153
  %7 = load ptr, ptr %0, align 8, !tbaa !152
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv exact i64 %10, 24
  %12 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !154
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
  tail call void @llvm.memset.p0.i64(ptr align 8 %6, i8 0, i64 %22, i1 false), !tbaa !82
  %23 = mul nuw i64 %1, 24
  %24 = getelementptr i8, ptr %6, i64 %23
  store ptr %24, ptr %5, align 8, !tbaa !153
  br label %63

25:                                               ; preds = %4
  %26 = icmp ult i64 %18, %1
  br i1 %26, label %27, label %28

27:                                               ; preds = %25
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #22
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
  %37 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %36) #21
  br label %38

38:                                               ; preds = %28, %35
  %39 = phi ptr [ %37, %35 ], [ null, %28 ]
  %40 = getelementptr %"class.dealii::Tensor.74", ptr %39, i64 %11
  %41 = mul nuw i64 %1, 24
  tail call void @llvm.memset.p0.i64(ptr align 8 %40, i8 0, i64 %41, i1 false), !tbaa !82
  %42 = icmp eq ptr %7, %6
  br i1 %42, label %57, label %43

43:                                               ; preds = %38, %53
  %44 = phi ptr [ %55, %53 ], [ %39, %38 ]
  %45 = phi ptr [ %54, %53 ], [ %7, %38 ]
  br label %46

46:                                               ; preds = %43, %46
  %47 = phi i64 [ 0, %43 ], [ %51, %46 ]
  %48 = getelementptr inbounds [3 x double], ptr %45, i64 0, i64 %47
  %49 = load double, ptr %48, align 8, !tbaa !82
  %50 = getelementptr inbounds [3 x double], ptr %44, i64 0, i64 %47
  store double %49, ptr %50, align 8, !tbaa !82
  %51 = add nuw nsw i64 %47, 1
  %52 = icmp eq i64 %51, 3
  br i1 %52, label %53, label %46, !llvm.loop !189

53:                                               ; preds = %46
  %54 = getelementptr inbounds %"class.dealii::Tensor.74", ptr %45, i64 1
  %55 = getelementptr inbounds %"class.dealii::Tensor.74", ptr %44, i64 1
  %56 = icmp eq ptr %54, %6
  br i1 %56, label %57, label %43, !llvm.loop !190

57:                                               ; preds = %53, %38
  %58 = icmp eq ptr %7, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %57
  tail call void @_ZdlPv(ptr noundef %7) #20
  br label %60

60:                                               ; preds = %57, %59
  store ptr %39, ptr %0, align 8, !tbaa !152
  %61 = getelementptr inbounds %"class.dealii::Tensor.74", ptr %40, i64 %1
  store ptr %61, ptr %5, align 8, !tbaa !153
  %62 = getelementptr inbounds %"class.dealii::Tensor.74", ptr %39, i64 %33
  store ptr %62, ptr %12, align 8, !tbaa !154
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
  %6 = load ptr, ptr %5, align 8, !tbaa !156
  %7 = load ptr, ptr %0, align 8, !tbaa !155
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv exact i64 %10, 72
  %12 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<2, 3>, std::allocator<dealii::Tensor<2, 3>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !157
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
  tail call void @llvm.memset.p0.i64(ptr align 8 %6, i8 0, i64 %22, i1 false), !tbaa !82
  %23 = mul nuw i64 %1, 72
  %24 = getelementptr i8, ptr %6, i64 %23
  store ptr %24, ptr %5, align 8, !tbaa !156
  br label %70

25:                                               ; preds = %4
  %26 = icmp ult i64 %18, %1
  br i1 %26, label %27, label %28

27:                                               ; preds = %25
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #22
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
  %37 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %36) #21
  br label %38

38:                                               ; preds = %28, %35
  %39 = phi ptr [ %37, %35 ], [ null, %28 ]
  %40 = getelementptr %"class.dealii::Tensor.77", ptr %39, i64 %11
  %41 = mul nuw i64 %1, 72
  tail call void @llvm.memset.p0.i64(ptr align 8 %40, i8 0, i64 %41, i1 false), !tbaa !82
  %42 = icmp eq ptr %7, %6
  br i1 %42, label %64, label %43

43:                                               ; preds = %38, %60
  %44 = phi ptr [ %62, %60 ], [ %39, %38 ]
  %45 = phi ptr [ %61, %60 ], [ %7, %38 ]
  br label %46

46:                                               ; preds = %43, %57
  %47 = phi i64 [ %58, %57 ], [ 0, %43 ]
  %48 = getelementptr inbounds %"class.dealii::Tensor.74", ptr %44, i64 %47
  %49 = getelementptr inbounds [3 x %"class.dealii::Tensor.74"], ptr %45, i64 0, i64 %47
  br label %50

50:                                               ; preds = %46, %50
  %51 = phi i64 [ 0, %46 ], [ %55, %50 ]
  %52 = getelementptr inbounds [3 x double], ptr %49, i64 0, i64 %51
  %53 = load double, ptr %52, align 8, !tbaa !82
  %54 = getelementptr inbounds [3 x double], ptr %48, i64 0, i64 %51
  store double %53, ptr %54, align 8, !tbaa !82
  %55 = add nuw nsw i64 %51, 1
  %56 = icmp eq i64 %55, 3
  br i1 %56, label %57, label %50, !llvm.loop !189

57:                                               ; preds = %50
  %58 = add nuw nsw i64 %47, 1
  %59 = icmp eq i64 %58, 3
  br i1 %59, label %60, label %46

60:                                               ; preds = %57
  %61 = getelementptr inbounds %"class.dealii::Tensor.77", ptr %45, i64 1
  %62 = getelementptr inbounds %"class.dealii::Tensor.77", ptr %44, i64 1
  %63 = icmp eq ptr %61, %6
  br i1 %63, label %64, label %43, !llvm.loop !191

64:                                               ; preds = %60, %38
  %65 = icmp eq ptr %7, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %64
  tail call void @_ZdlPv(ptr noundef %7) #20
  br label %67

67:                                               ; preds = %64, %66
  store ptr %39, ptr %0, align 8, !tbaa !155
  %68 = getelementptr inbounds %"class.dealii::Tensor.77", ptr %40, i64 %1
  store ptr %68, ptr %5, align 8, !tbaa !156
  %69 = getelementptr inbounds %"class.dealii::Tensor.77", ptr %39, i64 %33
  store ptr %69, ptr %12, align 8, !tbaa !157
  br label %70

70:                                               ; preds = %21, %67, %2
  ret void
}

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_polynomials_bdm.cc() #15 section ".text.startup" !prof !192 !PGOFuncName !193 {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #19
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #18

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #19 = { nounwind }
attributes #20 = { builtin nounwind }
attributes #21 = { builtin allocsize(0) }
attributes #22 = { noreturn }
attributes #23 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!42}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41}
!35 = !{ptr @_ZN6dealii11Polynomials10PolynomialIdED2Ev, ptr @_ZdlPv, i64 268842}
!36 = !{ptr @_ZN6dealii11Polynomials10PolynomialIdED2Ev, ptr @_ZN6dealii11SubscriptorD2Ev, i64 268842}
!37 = !{ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE19_M_range_initializeIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEvT_SC_St20forward_iterator_tag, ptr @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEE8allocateEmPKv, i64 8}
!38 = !{ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE19_M_range_initializeIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEvT_SC_St20forward_iterator_tag, ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS5_SaIS5_EEEEPS5_ET0_T_SE_SD_, i64 8}
!39 = !{ptr @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEE8allocateEmPKv, ptr @_Znwm, i64 179270}
!40 = !{ptr @_GLOBAL__sub_I_polynomials_bdm.cc, ptr @_ZNSt8ios_base4InitC1Ev, i64 1}
!41 = !{ptr @_GLOBAL__sub_I_polynomials_bdm.cc, ptr @__cxa_atexit, i64 1}
!42 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!43 = !{!"instr_prof_hash_mismatch"}
!44 = !{!45, !46, i64 0}
!45 = !{!"_ZTSNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE17_Vector_impl_dataE", !46, i64 0, !46, i64 8, !46, i64 16}
!46 = !{!"any pointer", !47, i64 0}
!47 = !{!"omnipotent char", !48, i64 0}
!48 = !{!"Simple C++ TBAA"}
!49 = !{!45, !46, i64 8}
!50 = !{!51, !51, i64 0}
!51 = !{!"vtable pointer", !48, i64 0}
!52 = distinct !{!52, !53, !54}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!"llvm.loop.unroll.disable"}
!55 = !{!56, !61, i64 104}
!56 = !{!"_ZTSN6dealii14PolynomialsBDMILi1EEE", !57, i64 0, !58, i64 80, !61, i64 104, !66, i64 112, !70, i64 136, !74, i64 160}
!57 = !{!"_ZTSN6dealii15PolynomialSpaceILi1EEE", !58, i64 0, !61, i64 24, !62, i64 32, !62, i64 56}
!58 = !{!"_ZTSSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE", !59, i64 0}
!59 = !{!"_ZTSSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE", !60, i64 0}
!60 = !{!"_ZTSNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE12_Vector_implE", !45, i64 0}
!61 = !{!"int", !47, i64 0}
!62 = !{!"_ZTSSt6vectorIjSaIjEE", !63, i64 0}
!63 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !64, i64 0}
!64 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !65, i64 0}
!65 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !46, i64 0, !46, i64 8, !46, i64 16}
!66 = !{!"_ZTSSt6vectorIdSaIdEE", !67, i64 0}
!67 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !68, i64 0}
!68 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !69, i64 0}
!69 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !46, i64 0, !46, i64 8, !46, i64 16}
!70 = !{!"_ZTSSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE", !71, i64 0}
!71 = !{!"_ZTSSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE", !72, i64 0}
!72 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE12_Vector_implE", !73, i64 0}
!73 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE17_Vector_impl_dataE", !46, i64 0, !46, i64 8, !46, i64 16}
!74 = !{!"_ZTSSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE", !75, i64 0}
!75 = !{!"_ZTSSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EE", !76, i64 0}
!76 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EE12_Vector_implE", !77, i64 0}
!77 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EE17_Vector_impl_dataE", !46, i64 0, !46, i64 8, !46, i64 16}
!78 = !{!57, !61, i64 24}
!79 = !{!69, !46, i64 0}
!80 = !{!69, !46, i64 8}
!81 = !{!69, !46, i64 16}
!82 = !{!83, !83, i64 0}
!83 = !{!"double", !47, i64 0}
!84 = !{!73, !46, i64 0}
!85 = !{!73, !46, i64 8}
!86 = !{!73, !46, i64 16}
!87 = !{!77, !46, i64 0}
!88 = !{!77, !46, i64 8}
!89 = !{!77, !46, i64 16}
!90 = !{!65, !46, i64 0}
!91 = !{!46, !46, i64 0}
!92 = !{!65, !46, i64 8}
!93 = !{!65, !46, i64 16}
!94 = !{!61, !61, i64 0}
!95 = distinct !{!95, !53, !54}
!96 = !{!45, !46, i64 16}
!97 = distinct !{!97, !53, !54}
!98 = !{!"function_entry_count", i64 0}
!99 = !{!100, !46, i64 8}
!100 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi3ELi1EEESaIS2_EE17_Vector_impl_dataE", !46, i64 0, !46, i64 8, !46, i64 16}
!101 = !{!100, !46, i64 0}
!102 = distinct !{!102, !53, !54}
!103 = distinct !{!103, !53, !54}
!104 = distinct !{!104, !53, !54}
!105 = distinct !{!105, !53, !54}
!106 = distinct !{!106, !53, !54}
!107 = !{!108, !61, i64 104}
!108 = !{!"_ZTSN6dealii14PolynomialsBDMILi2EEE", !109, i64 0, !58, i64 80, !61, i64 104, !66, i64 112, !110, i64 136, !114, i64 160}
!109 = !{!"_ZTSN6dealii15PolynomialSpaceILi2EEE", !58, i64 0, !61, i64 24, !62, i64 32, !62, i64 56}
!110 = !{!"_ZTSSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE", !111, i64 0}
!111 = !{!"_ZTSSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE", !112, i64 0}
!112 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE12_Vector_implE", !113, i64 0}
!113 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE17_Vector_impl_dataE", !46, i64 0, !46, i64 8, !46, i64 16}
!114 = !{!"_ZTSSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE", !115, i64 0}
!115 = !{!"_ZTSSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EE", !116, i64 0}
!116 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EE12_Vector_implE", !117, i64 0}
!117 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EE17_Vector_impl_dataE", !46, i64 0, !46, i64 8, !46, i64 16}
!118 = !{!109, !61, i64 24}
!119 = !{!113, !46, i64 0}
!120 = !{!113, !46, i64 8}
!121 = !{!113, !46, i64 16}
!122 = !{!117, !46, i64 0}
!123 = !{!117, !46, i64 8}
!124 = !{!117, !46, i64 16}
!125 = distinct !{!125, !53, !54}
!126 = !{!127, !46, i64 8}
!127 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi3ELi2EEESaIS2_EE17_Vector_impl_dataE", !46, i64 0, !46, i64 8, !46, i64 16}
!128 = !{!127, !46, i64 0}
!129 = distinct !{!129, !53, !54}
!130 = distinct !{!130, !53, !54}
!131 = distinct !{!131, !53, !54}
!132 = distinct !{!132, !53, !54}
!133 = distinct !{!133, !53, !54}
!134 = distinct !{!134, !53, !54}
!135 = distinct !{!135, !53, !54}
!136 = distinct !{!136, !53, !54}
!137 = distinct !{!137, !53, !54}
!138 = distinct !{!138, !53, !54}
!139 = distinct !{!139, !53, !54}
!140 = !{!141, !61, i64 104}
!141 = !{!"_ZTSN6dealii14PolynomialsBDMILi3EEE", !142, i64 0, !58, i64 80, !61, i64 104, !66, i64 112, !143, i64 136, !147, i64 160}
!142 = !{!"_ZTSN6dealii15PolynomialSpaceILi3EEE", !58, i64 0, !61, i64 24, !62, i64 32, !62, i64 56}
!143 = !{!"_ZTSSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE", !144, i64 0}
!144 = !{!"_ZTSSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE", !145, i64 0}
!145 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE12_Vector_implE", !146, i64 0}
!146 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE17_Vector_impl_dataE", !46, i64 0, !46, i64 8, !46, i64 16}
!147 = !{!"_ZTSSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE", !148, i64 0}
!148 = !{!"_ZTSSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE", !149, i64 0}
!149 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE12_Vector_implE", !150, i64 0}
!150 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE17_Vector_impl_dataE", !46, i64 0, !46, i64 8, !46, i64 16}
!151 = !{!142, !61, i64 24}
!152 = !{!146, !46, i64 0}
!153 = !{!146, !46, i64 8}
!154 = !{!146, !46, i64 16}
!155 = !{!150, !46, i64 0}
!156 = !{!150, !46, i64 8}
!157 = !{!150, !46, i64 16}
!158 = distinct !{!158, !53, !54}
!159 = !{!160, !46, i64 8}
!160 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi3ELi3EEESaIS2_EE17_Vector_impl_dataE", !46, i64 0, !46, i64 8, !46, i64 16}
!161 = !{!160, !46, i64 0}
!162 = distinct !{!162, !53, !54}
!163 = distinct !{!163, !53, !54}
!164 = distinct !{!164, !53, !54}
!165 = distinct !{!165, !53, !54}
!166 = distinct !{!166, !53, !54}
!167 = distinct !{!167, !53, !54}
!168 = distinct !{!168, !53, !54}
!169 = distinct !{!169, !53, !54}
!170 = distinct !{!170, !53, !54}
!171 = distinct !{!171, !53, !54}
!172 = distinct !{!172, !53, !54}
!173 = !{!"function_entry_count", i64 268842}
!174 = !{!"branch_weights", i32 0, i32 268842}
!175 = !{!"function_entry_count", i64 8}
!176 = !{!"branch_weights", i32 0, i32 8}
!177 = !{!"function_entry_count", i64 179270}
!178 = !{!"branch_weights", i32 0, i32 179270}
!179 = !{!"branch_weights", i32 90, i32 1356639}
!180 = !{!"branch_weights", i32 0, i32 7642479}
!181 = !{!"VP", i32 1, i64 0, i64 16, i64 0, i64 8, i64 0, i64 32, i64 0, i64 513, i64 0}
!182 = distinct !{!182, !53, !54}
!183 = !{!"branch_weights", i32 1, i32 2000}
!184 = distinct !{!184, !53, !54}
!185 = distinct !{!185, !53, !54}
!186 = distinct !{!186, !53, !54}
!187 = distinct !{!187, !53, !54}
!188 = distinct !{!188, !53, !54}
!189 = distinct !{!189, !53, !54}
!190 = distinct !{!190, !53, !54}
!191 = distinct !{!191, !53, !54}
!192 = !{!"function_entry_count", i64 1}
!193 = !{!"source/base/polynomials_bdm.cc;_GLOBAL__sub_I_polynomials_bdm.cc"}
