; ModuleID = 'source/base/polynomial_space.cc'
source_filename = "source/base/polynomial_space.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.dealii::PolynomialSpace" = type { %"class.std::vector.0", i32, %"class.std::vector", %"class.std::vector" }
%"class.std::vector.0" = type { %"struct.std::_Vector_base.1" }
%"struct.std::_Vector_base.1" = type { %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl" }
%"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl" = type { %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.dealii::TableIndices" = type { %"class.dealii::TableIndicesBase" }
%"class.dealii::TableIndicesBase" = type { [2 x i32] }
%"class.dealii::Table" = type { %"class.dealii::TableBase.base", [4 x i8] }
%"class.dealii::TableBase.base" = type <{ %"class.dealii::Subscriptor", ptr, i32, %"class.dealii::TableIndices" }>
%"class.dealii::Subscriptor" = type { ptr, i32, %"class.std::map", ptr }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<const char *, std::pair<const char *const, unsigned int>, std::_Select1st<std::pair<const char *const, unsigned int>>, std::less<const char *>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<const char *, std::pair<const char *const, unsigned int>, std::_Select1st<std::pair<const char *const, unsigned int>>, std::less<const char *>>::_Rb_tree_impl" = type { %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_key_compare" = type { %"struct.std::less" }
%"struct.std::less" = type { i8 }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.std::_Vector_base<dealii::Tensor<1, 1>, std::allocator<dealii::Tensor<1, 1>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.std::_Vector_base<dealii::Tensor<2, 1>, std::allocator<dealii::Tensor<2, 1>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.dealii::TableBase" = type <{ %"class.dealii::Subscriptor", ptr, i32, %"class.dealii::TableIndices", [4 x i8] }>
%"class.std::vector.5" = type { %"struct.std::_Vector_base.6" }
%"struct.std::_Vector_base.6" = type { %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl" }
%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl" = type { %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data" }
%"class.dealii::Polynomials::Polynomial" = type { %"class.dealii::Subscriptor", %"class.std::vector.5" }
%"class.dealii::Tensor" = type { [1 x double] }
%"class.dealii::Tensor.23" = type { [1 x %"class.dealii::Tensor"] }
%"class.dealii::PolynomialSpace.24" = type { %"class.std::vector.0", i32, %"class.std::vector", %"class.std::vector" }
%"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.std::_Vector_base<dealii::Tensor<2, 2>, std::allocator<dealii::Tensor<2, 2>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.dealii::Tensor.36" = type { [2 x double] }
%"class.dealii::Tensor.37" = type { [2 x %"class.dealii::Tensor.36"] }
%"class.dealii::PolynomialSpace.38" = type { %"class.std::vector.0", i32, %"class.std::vector", %"class.std::vector" }
%"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.std::_Vector_base<dealii::Tensor<2, 3>, std::allocator<dealii::Tensor<2, 3>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.dealii::Tensor.50" = type { [3 x double] }
%"class.dealii::Tensor.51" = type { [3 x %"class.dealii::Tensor.50"] }

$_ZN6dealii15PolynomialSpaceILi1EE13set_numberingERKSt6vectorIjSaIjEE = comdat any

$_ZNSt6vectorIjSaIjEEaSERKS1_ = comdat any

$_ZNK6dealii15PolynomialSpaceILi1EE7computeERKNS_5PointILi1EEERSt6vectorIdSaIdEERS6_INS_6TensorILi1ELi1EEESaISB_EERS6_INSA_ILi2ELi1EEESaISF_EE = comdat any

$_ZNK6dealii15PolynomialSpaceILi1EE13compute_valueEjRKNS_5PointILi1EEE = comdat any

$_ZNK6dealii15PolynomialSpaceILi1EE12compute_gradEjRKNS_5PointILi1EEE = comdat any

$_ZNK6dealii15PolynomialSpaceILi1EE17compute_grad_gradEjRKNS_5PointILi1EEE = comdat any

$_ZNK6dealii15PolynomialSpaceILi1EE1nEv = comdat any

$_ZNK6dealii15PolynomialSpaceILi1EE6degreeEv = comdat any

$_ZN6dealii15PolynomialSpaceILi1EE14compute_n_polsEj = comdat any

$_ZN6dealii15PolynomialSpaceILi2EE13set_numberingERKSt6vectorIjSaIjEE = comdat any

$_ZNK6dealii15PolynomialSpaceILi2EE7computeERKNS_5PointILi2EEERSt6vectorIdSaIdEERS6_INS_6TensorILi1ELi2EEESaISB_EERS6_INSA_ILi2ELi2EEESaISF_EE = comdat any

$_ZNK6dealii15PolynomialSpaceILi2EE13compute_valueEjRKNS_5PointILi2EEE = comdat any

$_ZNK6dealii15PolynomialSpaceILi2EE12compute_gradEjRKNS_5PointILi2EEE = comdat any

$_ZNK6dealii15PolynomialSpaceILi2EE17compute_grad_gradEjRKNS_5PointILi2EEE = comdat any

$_ZNK6dealii15PolynomialSpaceILi2EE1nEv = comdat any

$_ZNK6dealii15PolynomialSpaceILi2EE6degreeEv = comdat any

$_ZN6dealii15PolynomialSpaceILi2EE14compute_n_polsEj = comdat any

$_ZN6dealii15PolynomialSpaceILi3EE13set_numberingERKSt6vectorIjSaIjEE = comdat any

$_ZNK6dealii15PolynomialSpaceILi3EE7computeERKNS_5PointILi3EEERSt6vectorIdSaIdEERS6_INS_6TensorILi1ELi3EEESaISB_EERS6_INSA_ILi2ELi3EEESaISF_EE = comdat any

$_ZNK6dealii15PolynomialSpaceILi3EE13compute_valueEjRKNS_5PointILi3EEE = comdat any

$_ZNK6dealii15PolynomialSpaceILi3EE12compute_gradEjRKNS_5PointILi3EEE = comdat any

$_ZNK6dealii15PolynomialSpaceILi3EE17compute_grad_gradEjRKNS_5PointILi3EEE = comdat any

$_ZNK6dealii15PolynomialSpaceILi3EE1nEv = comdat any

$_ZNK6dealii15PolynomialSpaceILi3EE6degreeEv = comdat any

$_ZN6dealii15PolynomialSpaceILi3EE14compute_n_polsEj = comdat any

$_ZN6dealii9TableBaseILi2ESt6vectorIdSaIdEEED2Ev = comdat any

$_ZN6dealii9TableBaseILi2ESt6vectorIdSaIdEEED0Ev = comdat any

$_ZN6dealii5TableILi2ESt6vectorIdSaIdEEED0Ev = comdat any

$_ZN6dealii9TableBaseILi2ESt6vectorIdSaIdEEE6reinitERKNS_12TableIndicesILi2EEE = comdat any

$_ZNSt6vectorIdSaIdEEaSERKS1_ = comdat any

$_ZNSt15__new_allocatorIdE8allocateEmPKv = comdat any

$_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd = comdat any

$_ZTVN6dealii9TableBaseILi2ESt6vectorIdSaIdEEEE = comdat any

$_ZTSN6dealii9TableBaseILi2ESt6vectorIdSaIdEEEE = comdat any

$_ZTIN6dealii9TableBaseILi2ESt6vectorIdSaIdEEEE = comdat any

$_ZTVN6dealii5TableILi2ESt6vectorIdSaIdEEEE = comdat any

$_ZTSN6dealii5TableILi2ESt6vectorIdSaIdEEEE = comdat any

$_ZTIN6dealii5TableILi2ESt6vectorIdSaIdEEEE = comdat any

@_ZTVN6dealii9TableBaseILi2ESt6vectorIdSaIdEEEE = linkonce_odr dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN6dealii9TableBaseILi2ESt6vectorIdSaIdEEEE, ptr @_ZN6dealii9TableBaseILi2ESt6vectorIdSaIdEEED2Ev, ptr @_ZN6dealii9TableBaseILi2ESt6vectorIdSaIdEEED0Ev] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN6dealii9TableBaseILi2ESt6vectorIdSaIdEEEE = linkonce_odr dso_local constant [43 x i8] c"N6dealii9TableBaseILi2ESt6vectorIdSaIdEEEE\00", comdat, align 1
@_ZTIN6dealii11SubscriptorE = external constant ptr
@_ZTIN6dealii9TableBaseILi2ESt6vectorIdSaIdEEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9TableBaseILi2ESt6vectorIdSaIdEEEE, ptr @_ZTIN6dealii11SubscriptorE }, comdat, align 8
@_ZTVN6dealii5TableILi2ESt6vectorIdSaIdEEEE = linkonce_odr dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN6dealii5TableILi2ESt6vectorIdSaIdEEEE, ptr @_ZN6dealii9TableBaseILi2ESt6vectorIdSaIdEEED2Ev, ptr @_ZN6dealii5TableILi2ESt6vectorIdSaIdEEED0Ev] }, comdat, align 8
@_ZTSN6dealii5TableILi2ESt6vectorIdSaIdEEEE = linkonce_odr dso_local constant [39 x i8] c"N6dealii5TableILi2ESt6vectorIdSaIdEEEE\00", comdat, align 1
@_ZTIN6dealii5TableILi2ESt6vectorIdSaIdEEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii5TableILi2ESt6vectorIdSaIdEEEE, ptr @_ZTIN6dealii9TableBaseILi2ESt6vectorIdSaIdEEEE }, comdat, align 8
@.str = private unnamed_addr constant [23 x i8] c"vector::_M_fill_insert\00", align 1

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii15PolynomialSpaceILi1EE13set_numberingERKSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 !prof !45 {
  %3 = getelementptr inbounds %"class.dealii::PolynomialSpace", ptr %0, i64 0, i32 2
  %4 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIjSaIjEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %5 = getelementptr inbounds %"class.dealii::PolynomialSpace", ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = load ptr, ptr %3, align 8, !tbaa !51
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 2
  %12 = icmp eq ptr %6, %7
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.dealii::PolynomialSpace", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !51
  br label %17

16:                                               ; preds = %17, %2
  ret void

17:                                               ; preds = %13, %17
  %18 = phi i64 [ 0, %13 ], [ %25, %17 ]
  %19 = phi i32 [ 0, %13 ], [ %24, %17 ]
  %20 = getelementptr inbounds i32, ptr %7, i64 %18
  %21 = load i32, ptr %20, align 4, !tbaa !52
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i32, ptr %15, i64 %22
  store i32 %19, ptr %23, align 4, !tbaa !52
  %24 = add i32 %19, 1
  %25 = zext i32 %24 to i64
  %26 = icmp ugt i64 %11, %25
  br i1 %26, label %17, label %16, !llvm.loop !54
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIjSaIjEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !57 {
  %3 = icmp eq ptr %1, %0
  br i1 %3, label %64, label %4, !prof !58

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !59
  %7 = load ptr, ptr %1, align 8, !tbaa !59
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = getelementptr inbounds %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !60
  %13 = load ptr, ptr %0, align 8, !tbaa !59
  %14 = ptrtoint ptr %12 to i64
  %15 = ptrtoint ptr %13 to i64
  %16 = sub i64 %14, %15
  %17 = icmp ugt i64 %10, %16
  br i1 %17, label %18, label %34, !prof !61

18:                                               ; preds = %4
  %19 = ashr exact i64 %10, 2
  %20 = icmp ugt i64 %19, 2305843009213693951
  br i1 %20, label %21, label %25, !prof !62

21:                                               ; preds = %18
  %22 = icmp ugt i64 %19, 4611686018427387903
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #17
  unreachable

24:                                               ; preds = %21
  tail call void @_ZSt17__throw_bad_allocv() #17
  unreachable

25:                                               ; preds = %18
  %26 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #18
  %27 = icmp eq ptr %6, %7
  br i1 %27, label %29, label %28, !prof !63

28:                                               ; preds = %25
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %26, ptr align 4 %7, i64 %10, i1 false), !prof !64
  br label %29

29:                                               ; preds = %25, %28
  %30 = icmp eq ptr %13, null
  br i1 %30, label %32, label %31, !prof !65

31:                                               ; preds = %29
  tail call void @_ZdlPv(ptr noundef %13) #19
  br label %32

32:                                               ; preds = %29, %31
  store ptr %26, ptr %0, align 8, !tbaa !51
  %33 = getelementptr inbounds i8, ptr %26, i64 %10
  store ptr %33, ptr %11, align 8, !tbaa !60
  br label %60

34:                                               ; preds = %4
  %35 = getelementptr inbounds %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !46
  %37 = ptrtoint ptr %36 to i64
  %38 = sub i64 %37, %15
  %39 = icmp ult i64 %38, %10
  br i1 %39, label %43, label %40, !prof !66

40:                                               ; preds = %34
  %41 = icmp eq ptr %6, %7
  br i1 %41, label %60, label %42, !prof !67

42:                                               ; preds = %40
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %13, ptr align 4 %7, i64 %10, i1 false), !prof !68
  br label %60

43:                                               ; preds = %34
  %44 = icmp eq ptr %36, %13
  br i1 %44, label %46, label %45, !prof !69

45:                                               ; preds = %43
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %13, ptr align 4 %7, i64 %38, i1 false)
  br label %46

46:                                               ; preds = %43, %45
  %47 = load ptr, ptr %1, align 8, !tbaa !51
  %48 = load ptr, ptr %35, align 8, !tbaa !46
  %49 = load ptr, ptr %0, align 8, !tbaa !51
  %50 = ptrtoint ptr %48 to i64
  %51 = ptrtoint ptr %49 to i64
  %52 = sub i64 %50, %51
  %53 = getelementptr inbounds i8, ptr %47, i64 %52
  %54 = load ptr, ptr %5, align 8, !tbaa !46
  %55 = icmp eq ptr %54, %53
  br i1 %55, label %60, label %56, !prof !70

56:                                               ; preds = %46
  %57 = ptrtoint ptr %54 to i64
  %58 = ptrtoint ptr %53 to i64
  %59 = sub i64 %57, %58
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %48, ptr align 4 %53, i64 %59, i1 false), !prof !71
  br label %60

60:                                               ; preds = %56, %46, %42, %40, %32
  %61 = load ptr, ptr %0, align 8, !tbaa !51
  %62 = getelementptr inbounds i8, ptr %61, i64 %10
  %63 = getelementptr inbounds %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %62, ptr %63, align 8, !tbaa !46
  br label %64

64:                                               ; preds = %60, %2
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii15PolynomialSpaceILi1EE7computeERKNS_5PointILi1EEERSt6vectorIdSaIdEERS6_INS_6TensorILi1ELi1EEESaISB_EERS6_INSA_ILi2ELi1EEESaISF_EE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !72 {
  %6 = alloca %"class.dealii::TableIndices", align 4
  %7 = alloca %"class.dealii::Table", align 8
  %8 = alloca double, align 8
  %9 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !73
  %11 = load ptr, ptr %0, align 8, !tbaa !75
  %12 = ptrtoint ptr %10 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  %15 = sdiv exact i64 %14, 96
  %16 = trunc i64 %15 to i32
  %17 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %2, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !76
  %19 = load ptr, ptr %2, align 8, !tbaa !78
  %20 = ptrtoint ptr %18 to i64
  %21 = ptrtoint ptr %19 to i64
  %22 = sub i64 %20, %21
  %23 = ashr exact i64 %22, 3
  %24 = getelementptr inbounds %"class.dealii::PolynomialSpace", ptr %0, i64 0, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !79
  %26 = zext i32 %25 to i64
  %27 = icmp eq i64 %23, %26
  %28 = zext i1 %27 to i64
  %29 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 1>, std::allocator<dealii::Tensor<1, 1>>>::_Vector_impl_data", ptr %3, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !87
  %31 = load ptr, ptr %3, align 8, !tbaa !89
  %32 = ptrtoint ptr %30 to i64
  %33 = ptrtoint ptr %31 to i64
  %34 = sub i64 %32, %33
  %35 = ashr exact i64 %34, 3
  %36 = icmp eq i64 %35, %26
  %37 = select i1 %36, i64 2, i64 %28
  %38 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<2, 1>, std::allocator<dealii::Tensor<2, 1>>>::_Vector_impl_data", ptr %4, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !90
  %40 = load ptr, ptr %4, align 8, !tbaa !92
  %41 = ptrtoint ptr %39 to i64
  %42 = ptrtoint ptr %40 to i64
  %43 = sub i64 %41, %42
  %44 = ashr exact i64 %43, 3
  %45 = icmp eq i64 %44, %26
  %46 = select i1 %45, i64 3, i64 %37
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #20
  store i32 1, ptr %6, align 4, !tbaa !52
  %47 = getelementptr inbounds [2 x i32], ptr %6, i64 0, i64 1
  store i32 %16, ptr %47, align 4, !tbaa !52
  call void @_ZN6dealii11SubscriptorC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %7)
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii9TableBaseILi2ESt6vectorIdSaIdEEEE, i64 0, inrange i32 0, i64 2), ptr %7, align 8, !tbaa !93
  %48 = getelementptr inbounds %"class.dealii::TableBase", ptr %7, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %48, i8 0, i64 20, i1 false)
  invoke void @_ZN6dealii9TableBaseILi2ESt6vectorIdSaIdEEE6reinitERKNS_12TableIndicesILi2EEE(ptr noundef nonnull align 8 dereferenceable(92) %7, ptr noundef nonnull align 4 dereferenceable(8) %6)
          to label %53 unwind label %51

49:                                               ; preds = %217, %51
  %50 = phi { ptr, i32 } [ %52, %51 ], [ %199, %217 ]
  resume { ptr, i32 } %50

51:                                               ; preds = %5
  %52 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %7) #20
  br label %49

53:                                               ; preds = %5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #20
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii5TableILi2ESt6vectorIdSaIdEEEE, i64 0, inrange i32 0, i64 2), ptr %7, align 8, !tbaa !93
  %54 = getelementptr inbounds %"class.dealii::TableBase", ptr %7, i64 0, i32 3
  %55 = load i32, ptr %54, align 4, !tbaa !52
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %67, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %"class.dealii::TableBase", ptr %7, i64 0, i32 3, i32 0, i32 0, i64 1
  br label %59

59:                                               ; preds = %57, %76
  %60 = phi i64 [ 0, %57 ], [ %77, %76 ]
  %61 = load i32, ptr %58, align 8, !tbaa !52
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %76, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds [1 x double], ptr %1, i64 0, i64 %60
  %65 = trunc i64 %60 to i32
  %66 = trunc i64 %60 to i32
  br label %83

67:                                               ; preds = %76, %53
  br i1 %27, label %68, label %137

68:                                               ; preds = %67
  %69 = icmp eq i32 %16, 0
  %70 = getelementptr inbounds %"class.dealii::PolynomialSpace", ptr %0, i64 0, i32 3
  %71 = load ptr, ptr %48, align 8
  %72 = load ptr, ptr %70, align 8
  %73 = load ptr, ptr %2, align 8
  br i1 %69, label %137, label %74

74:                                               ; preds = %68
  %75 = and i64 %15, 4294967295
  br label %126

76:                                               ; preds = %119, %59
  %77 = add nuw nsw i64 %60, 1
  %78 = load i32, ptr %54, align 4, !tbaa !52
  %79 = zext i32 %78 to i64
  %80 = icmp ult i64 %77, %79
  br i1 %80, label %59, label %67, !llvm.loop !95

81:                                               ; preds = %108
  %82 = landingpad { ptr, i32 }
          cleanup
  br label %198

83:                                               ; preds = %63, %119
  %84 = phi i64 [ 0, %63 ], [ %120, %119 ]
  %85 = phi i32 [ %61, %63 ], [ %121, %119 ]
  %86 = load ptr, ptr %48, align 8, !tbaa !96
  %87 = mul i32 %85, %65
  %88 = trunc i64 %84 to i32
  %89 = add i32 %87, %88
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %"class.std::vector.5", ptr %86, i64 %90
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #20
  store double 0.000000e+00, ptr %8, align 8, !tbaa !110
  %92 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %91, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !59
  %94 = load ptr, ptr %91, align 8, !tbaa !78
  %95 = ptrtoint ptr %93 to i64
  %96 = ptrtoint ptr %94 to i64
  %97 = sub i64 %95, %96
  %98 = ashr exact i64 %97, 3
  %99 = icmp ult i64 %98, %46
  br i1 %99, label %100, label %102

100:                                              ; preds = %83
  %101 = sub nsw i64 %46, %98
  invoke void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(ptr noundef nonnull align 8 dereferenceable(24) %91, ptr %93, i64 noundef %101, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %108 unwind label %124

102:                                              ; preds = %83
  %103 = icmp ugt i64 %98, %46
  br i1 %103, label %104, label %108

104:                                              ; preds = %102
  %105 = getelementptr inbounds double, ptr %94, i64 %46
  %106 = icmp eq ptr %93, %105
  br i1 %106, label %108, label %107

107:                                              ; preds = %104
  store ptr %105, ptr %92, align 8, !tbaa !76
  br label %108

108:                                              ; preds = %107, %104, %102, %100
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #20
  %109 = load ptr, ptr %0, align 8, !tbaa !75
  %110 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %109, i64 %84
  %111 = load double, ptr %64, align 8, !tbaa !110
  %112 = load ptr, ptr %48, align 8, !tbaa !96
  %113 = load i32, ptr %58, align 8, !tbaa !52
  %114 = mul i32 %113, %66
  %115 = trunc i64 %84 to i32
  %116 = add i32 %114, %115
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds %"class.std::vector.5", ptr %112, i64 %117
  invoke void @_ZNK6dealii11Polynomials10PolynomialIdE5valueEdRSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(96) %110, double noundef %111, ptr noundef nonnull align 8 dereferenceable(24) %118)
          to label %119 unwind label %81

119:                                              ; preds = %108
  %120 = add nuw nsw i64 %84, 1
  %121 = load i32, ptr %58, align 8, !tbaa !52
  %122 = zext i32 %121 to i64
  %123 = icmp ult i64 %120, %122
  br i1 %123, label %83, label %76, !llvm.loop !112

124:                                              ; preds = %100
  %125 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #20
  br label %198

126:                                              ; preds = %74, %126
  %127 = phi i64 [ 0, %74 ], [ %131, %126 ]
  %128 = getelementptr inbounds %"class.std::vector.5", ptr %71, i64 %127
  %129 = load ptr, ptr %128, align 8, !tbaa !78
  %130 = load double, ptr %129, align 8, !tbaa !110
  %131 = add nuw nsw i64 %127, 1
  %132 = getelementptr inbounds i32, ptr %72, i64 %127
  %133 = load i32, ptr %132, align 4, !tbaa !52
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds double, ptr %73, i64 %134
  store double %130, ptr %135, align 8, !tbaa !110
  %136 = icmp eq i64 %131, %75
  br i1 %136, label %137, label %126, !llvm.loop !113

137:                                              ; preds = %126, %68, %67
  br i1 %36, label %138, label %158

138:                                              ; preds = %137
  %139 = icmp eq i32 %16, 0
  %140 = getelementptr inbounds %"class.dealii::PolynomialSpace", ptr %0, i64 0, i32 3
  %141 = load ptr, ptr %140, align 8
  %142 = load ptr, ptr %48, align 8
  %143 = load ptr, ptr %3, align 8
  br i1 %139, label %158, label %144

144:                                              ; preds = %138
  %145 = and i64 %15, 4294967295
  br label %146

146:                                              ; preds = %144, %146
  %147 = phi i64 [ 0, %144 ], [ %148, %146 ]
  %148 = add nuw nsw i64 %147, 1
  %149 = getelementptr inbounds i32, ptr %141, i64 %147
  %150 = load i32, ptr %149, align 4, !tbaa !52
  %151 = getelementptr inbounds %"class.std::vector.5", ptr %142, i64 %147
  %152 = load ptr, ptr %151, align 8, !tbaa !78
  %153 = getelementptr inbounds double, ptr %152, i64 1
  %154 = load double, ptr %153, align 8, !tbaa !110
  %155 = zext i32 %150 to i64
  %156 = getelementptr inbounds %"class.dealii::Tensor", ptr %143, i64 %155
  store double %154, ptr %156, align 8, !tbaa !110
  %157 = icmp eq i64 %148, %145
  br i1 %157, label %158, label %146, !llvm.loop !114

158:                                              ; preds = %146, %138, %137
  br i1 %45, label %159, label %179

159:                                              ; preds = %158
  %160 = icmp eq i32 %16, 0
  %161 = getelementptr inbounds %"class.dealii::PolynomialSpace", ptr %0, i64 0, i32 3
  %162 = load ptr, ptr %161, align 8
  %163 = load ptr, ptr %48, align 8
  %164 = load ptr, ptr %4, align 8
  br i1 %160, label %179, label %165

165:                                              ; preds = %159
  %166 = and i64 %15, 4294967295
  br label %167

167:                                              ; preds = %165, %167
  %168 = phi i64 [ 0, %165 ], [ %169, %167 ]
  %169 = add nuw nsw i64 %168, 1
  %170 = getelementptr inbounds i32, ptr %162, i64 %168
  %171 = load i32, ptr %170, align 4, !tbaa !52
  %172 = getelementptr inbounds %"class.std::vector.5", ptr %163, i64 %168
  %173 = load ptr, ptr %172, align 8, !tbaa !78
  %174 = getelementptr inbounds double, ptr %173, i64 2
  %175 = load double, ptr %174, align 8, !tbaa !110
  %176 = zext i32 %171 to i64
  %177 = getelementptr inbounds %"class.dealii::Tensor.23", ptr %164, i64 %176
  store double %175, ptr %177, align 8, !tbaa !110
  %178 = icmp eq i64 %169, %166
  br i1 %178, label %179, label %167, !llvm.loop !115

179:                                              ; preds = %167, %159, %158
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii9TableBaseILi2ESt6vectorIdSaIdEEEE, i64 0, inrange i32 0, i64 2), ptr %7, align 8, !tbaa !93
  %180 = load ptr, ptr %48, align 8, !tbaa !96
  %181 = icmp eq ptr %180, null
  br i1 %181, label %197, label %182

182:                                              ; preds = %179
  %183 = getelementptr inbounds i8, ptr %180, i64 -8
  %184 = load i64, ptr %183, align 8
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %196, label %186

186:                                              ; preds = %182
  %187 = getelementptr inbounds %"class.std::vector.5", ptr %180, i64 %184
  br label %188

188:                                              ; preds = %186, %194
  %189 = phi ptr [ %190, %194 ], [ %187, %186 ]
  %190 = getelementptr inbounds %"class.std::vector.5", ptr %189, i64 -1
  %191 = load ptr, ptr %190, align 8, !tbaa !78
  %192 = icmp eq ptr %191, null
  br i1 %192, label %194, label %193

193:                                              ; preds = %188
  call void @_ZdlPv(ptr noundef %191) #19
  br label %194

194:                                              ; preds = %193, %188
  %195 = icmp eq ptr %190, %180
  br i1 %195, label %196, label %188

196:                                              ; preds = %194, %182
  call void @_ZdaPv(ptr noundef %183) #19
  br label %197

197:                                              ; preds = %179, %196
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %7) #20
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %7) #20
  ret void

198:                                              ; preds = %81, %124
  %199 = phi { ptr, i32 } [ %82, %81 ], [ %125, %124 ]
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii9TableBaseILi2ESt6vectorIdSaIdEEEE, i64 0, inrange i32 0, i64 2), ptr %7, align 8, !tbaa !93
  %200 = load ptr, ptr %48, align 8, !tbaa !96
  %201 = icmp eq ptr %200, null
  br i1 %201, label %217, label %202

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %200, i64 -8
  %204 = load i64, ptr %203, align 8
  %205 = icmp eq i64 %204, 0
  br i1 %205, label %216, label %206

206:                                              ; preds = %202
  %207 = getelementptr inbounds %"class.std::vector.5", ptr %200, i64 %204
  br label %208

208:                                              ; preds = %206, %214
  %209 = phi ptr [ %210, %214 ], [ %207, %206 ]
  %210 = getelementptr inbounds %"class.std::vector.5", ptr %209, i64 -1
  %211 = load ptr, ptr %210, align 8, !tbaa !78
  %212 = icmp eq ptr %211, null
  br i1 %212, label %214, label %213

213:                                              ; preds = %208
  call void @_ZdlPv(ptr noundef %211) #19
  br label %214

214:                                              ; preds = %213, %208
  %215 = icmp eq ptr %210, %200
  br i1 %215, label %216, label %208

216:                                              ; preds = %214, %202
  call void @_ZdaPv(ptr noundef %203) #19
  br label %217

217:                                              ; preds = %198, %216
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %7) #20
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %7) #20
  br label %49
}

declare i32 @__gxx_personality_v0(...)

declare void @_ZNK6dealii11Polynomials10PolynomialIdE5valueEdRSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(96), double noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii15PolynomialSpaceILi1EE13compute_valueEjRKNS_5PointILi1EEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 !prof !45 {
  %4 = getelementptr inbounds %"class.dealii::PolynomialSpace", ptr %0, i64 0, i32 2
  %5 = zext i32 %1 to i64
  %6 = load ptr, ptr %4, align 8, !tbaa !51
  %7 = getelementptr inbounds i32, ptr %6, i64 %5
  %8 = load i32, ptr %7, align 4, !tbaa !52
  %9 = zext i32 %8 to i64
  %10 = load ptr, ptr %0, align 8, !tbaa !75
  %11 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %10, i64 %9
  %12 = load double, ptr %2, align 8, !tbaa !110
  %13 = tail call noundef double @_ZNK6dealii11Polynomials10PolynomialIdE5valueEd(ptr noundef nonnull align 8 dereferenceable(96) %11, double noundef %12)
  ret double %13
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZNK6dealii15PolynomialSpaceILi1EE13compute_indexEjRA1_j(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0, i32 noundef %1, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %2) local_unnamed_addr #4 align 2 !prof !45 {
  %4 = getelementptr inbounds %"class.dealii::PolynomialSpace", ptr %0, i64 0, i32 2
  %5 = zext i32 %1 to i64
  %6 = load ptr, ptr %4, align 8, !tbaa !51
  %7 = getelementptr inbounds i32, ptr %6, i64 %5
  %8 = load i32, ptr %7, align 4, !tbaa !52
  store i32 %8, ptr %2, align 4, !tbaa !52
  ret void
}

declare noundef double @_ZNK6dealii11Polynomials10PolynomialIdE5valueEd(ptr noundef nonnull align 8 dereferenceable(96), double noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii15PolynomialSpaceILi1EE12compute_gradEjRKNS_5PointILi1EEE(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %5 = alloca %"class.std::vector.5", align 8
  %6 = getelementptr inbounds %"class.dealii::PolynomialSpace", ptr %1, i64 0, i32 2
  %7 = zext i32 %2 to i64
  %8 = load ptr, ptr %6, align 8, !tbaa !51
  %9 = getelementptr inbounds i32, ptr %8, i64 %7
  %10 = load i32, ptr %9, align 4, !tbaa !52
  store double 1.000000e+00, ptr %0, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #20
  %11 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %5, i64 0, i32 1
  %12 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %5, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %13 = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #18
  store ptr %13, ptr %5, align 8, !tbaa !78
  store ptr %13, ptr %11, align 8, !tbaa !76
  %14 = getelementptr inbounds double, ptr %13, i64 2
  store ptr %14, ptr %12, align 8, !tbaa !116
  store double 0.000000e+00, ptr %13, align 8, !tbaa !110
  %15 = getelementptr inbounds i8, ptr %13, i64 8
  store double 0.000000e+00, ptr %15, align 8, !tbaa !110
  store ptr %14, ptr %11, align 8, !tbaa !76
  %16 = zext i32 %10 to i64
  %17 = load ptr, ptr %1, align 8, !tbaa !75
  %18 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %17, i64 %16
  %19 = load double, ptr %3, align 8, !tbaa !110
  invoke void @_ZNK6dealii11Polynomials10PolynomialIdE5valueEdRSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(96) %18, double noundef %19, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %20 unwind label %27

20:                                               ; preds = %4
  %21 = load ptr, ptr %5, align 8, !tbaa !78
  %22 = getelementptr inbounds double, ptr %21, i64 1
  %23 = load double, ptr %22, align 8, !tbaa !110
  store double %23, ptr %0, align 8, !tbaa !110
  %24 = icmp eq ptr %21, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  call void @_ZdlPv(ptr noundef %21) #19
  br label %26

26:                                               ; preds = %20, %25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #20
  ret void

27:                                               ; preds = %4
  %28 = landingpad { ptr, i32 }
          cleanup
  %29 = load ptr, ptr %5, align 8, !tbaa !78
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  call void @_ZdlPv(ptr noundef %29) #19
  br label %32

32:                                               ; preds = %31, %27
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #20
  resume { ptr, i32 } %28
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii15PolynomialSpaceILi1EE17compute_grad_gradEjRKNS_5PointILi1EEE(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.23") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %5 = alloca %"class.std::vector.5", align 8
  %6 = getelementptr inbounds %"class.dealii::PolynomialSpace", ptr %1, i64 0, i32 2
  %7 = zext i32 %2 to i64
  %8 = load ptr, ptr %6, align 8, !tbaa !51
  %9 = getelementptr inbounds i32, ptr %8, i64 %7
  %10 = load i32, ptr %9, align 4, !tbaa !52
  store double 1.000000e+00, ptr %0, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #20
  %11 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %5, i64 0, i32 1
  %12 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %5, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %13 = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18
  store ptr %13, ptr %5, align 8, !tbaa !78
  store ptr %13, ptr %11, align 8, !tbaa !76
  %14 = getelementptr inbounds double, ptr %13, i64 3
  store ptr %14, ptr %12, align 8, !tbaa !116
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  store ptr %14, ptr %11, align 8, !tbaa !76
  %15 = zext i32 %10 to i64
  %16 = load ptr, ptr %1, align 8, !tbaa !75
  %17 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %16, i64 %15
  %18 = load double, ptr %3, align 8, !tbaa !110
  invoke void @_ZNK6dealii11Polynomials10PolynomialIdE5valueEdRSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(96) %17, double noundef %18, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %19 unwind label %28

19:                                               ; preds = %4
  %20 = load ptr, ptr %5, align 8, !tbaa !78
  %21 = getelementptr inbounds double, ptr %20, i64 2
  %22 = load double, ptr %21, align 8, !tbaa !110
  %23 = load double, ptr %0, align 8, !tbaa !110
  %24 = fmul double %22, %23
  store double %24, ptr %0, align 8, !tbaa !110
  %25 = icmp eq ptr %20, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  call void @_ZdlPv(ptr noundef %20) #19
  br label %27

27:                                               ; preds = %19, %26
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #20
  ret void

28:                                               ; preds = %4
  %29 = landingpad { ptr, i32 }
          cleanup
  %30 = load ptr, ptr %5, align 8, !tbaa !78
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  call void @_ZdlPv(ptr noundef %30) #19
  br label %33

33:                                               ; preds = %32, %28
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #20
  resume { ptr, i32 } %29
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii15PolynomialSpaceILi1EE1nEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #5 comdat align 2 !prof !45 {
  %2 = getelementptr inbounds %"class.dealii::PolynomialSpace", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !79
  ret i32 %3
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii15PolynomialSpaceILi1EE6degreeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #5 comdat align 2 !prof !45 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !73
  %4 = load ptr, ptr %0, align 8, !tbaa !75
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 96
  %9 = trunc i64 %8 to i32
  ret i32 %9
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef i32 @_ZN6dealii15PolynomialSpaceILi1EE14compute_n_polsEj(i32 noundef %0) local_unnamed_addr #6 comdat align 2 !prof !45 {
  ret i32 %0
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii15PolynomialSpaceILi2EE13set_numberingERKSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 !prof !45 {
  %3 = getelementptr inbounds %"class.dealii::PolynomialSpace.24", ptr %0, i64 0, i32 2
  %4 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIjSaIjEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %5 = getelementptr inbounds %"class.dealii::PolynomialSpace.24", ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = load ptr, ptr %3, align 8, !tbaa !51
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 2
  %12 = icmp eq ptr %6, %7
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.dealii::PolynomialSpace.24", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !51
  br label %17

16:                                               ; preds = %17, %2
  ret void

17:                                               ; preds = %13, %17
  %18 = phi i64 [ 0, %13 ], [ %25, %17 ]
  %19 = phi i32 [ 0, %13 ], [ %24, %17 ]
  %20 = getelementptr inbounds i32, ptr %7, i64 %18
  %21 = load i32, ptr %20, align 4, !tbaa !52
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i32, ptr %15, i64 %22
  store i32 %19, ptr %23, align 4, !tbaa !52
  %24 = add i32 %19, 1
  %25 = zext i32 %24 to i64
  %26 = icmp ugt i64 %11, %25
  br i1 %26, label %17, label %16, !llvm.loop !117
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii15PolynomialSpaceILi2EE7computeERKNS_5PointILi2EEERSt6vectorIdSaIdEERS6_INS_6TensorILi1ELi2EEESaISB_EERS6_INSA_ILi2ELi2EEESaISF_EE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !72 {
  %6 = alloca %"class.dealii::TableIndices", align 4
  %7 = alloca %"class.dealii::Table", align 8
  %8 = alloca double, align 8
  %9 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !73
  %11 = load ptr, ptr %0, align 8, !tbaa !75
  %12 = ptrtoint ptr %10 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  %15 = sdiv exact i64 %14, 96
  %16 = trunc i64 %15 to i32
  %17 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %2, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !76
  %19 = load ptr, ptr %2, align 8, !tbaa !78
  %20 = ptrtoint ptr %18 to i64
  %21 = ptrtoint ptr %19 to i64
  %22 = sub i64 %20, %21
  %23 = ashr exact i64 %22, 3
  %24 = getelementptr inbounds %"class.dealii::PolynomialSpace.24", ptr %0, i64 0, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !118
  %26 = zext i32 %25 to i64
  %27 = icmp eq i64 %23, %26
  %28 = zext i1 %27 to i64
  %29 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl_data", ptr %3, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !120
  %31 = load ptr, ptr %3, align 8, !tbaa !122
  %32 = ptrtoint ptr %30 to i64
  %33 = ptrtoint ptr %31 to i64
  %34 = sub i64 %32, %33
  %35 = ashr exact i64 %34, 4
  %36 = icmp ne i64 %35, %26
  %37 = select i1 %36, i64 %28, i64 2
  %38 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<2, 2>, std::allocator<dealii::Tensor<2, 2>>>::_Vector_impl_data", ptr %4, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !123
  %40 = load ptr, ptr %4, align 8, !tbaa !125
  %41 = ptrtoint ptr %39 to i64
  %42 = ptrtoint ptr %40 to i64
  %43 = sub i64 %41, %42
  %44 = ashr exact i64 %43, 5
  %45 = icmp ne i64 %44, %26
  %46 = select i1 %45, i64 %37, i64 3
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #20
  store i32 2, ptr %6, align 4, !tbaa !52
  %47 = getelementptr inbounds [2 x i32], ptr %6, i64 0, i64 1
  store i32 %16, ptr %47, align 4, !tbaa !52
  call void @_ZN6dealii11SubscriptorC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %7)
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii9TableBaseILi2ESt6vectorIdSaIdEEEE, i64 0, inrange i32 0, i64 2), ptr %7, align 8, !tbaa !93
  %48 = getelementptr inbounds %"class.dealii::TableBase", ptr %7, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %48, i8 0, i64 20, i1 false)
  invoke void @_ZN6dealii9TableBaseILi2ESt6vectorIdSaIdEEE6reinitERKNS_12TableIndicesILi2EEE(ptr noundef nonnull align 8 dereferenceable(92) %7, ptr noundef nonnull align 4 dereferenceable(8) %6)
          to label %53 unwind label %51

49:                                               ; preds = %307, %51
  %50 = phi { ptr, i32 } [ %52, %51 ], [ %289, %307 ]
  resume { ptr, i32 } %50

51:                                               ; preds = %5
  %52 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %7) #20
  br label %49

53:                                               ; preds = %5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #20
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii5TableILi2ESt6vectorIdSaIdEEEE, i64 0, inrange i32 0, i64 2), ptr %7, align 8, !tbaa !93
  %54 = getelementptr inbounds %"class.dealii::TableBase", ptr %7, i64 0, i32 3
  %55 = load i32, ptr %54, align 4, !tbaa !52
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %67, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %"class.dealii::TableBase", ptr %7, i64 0, i32 3, i32 0, i32 0, i64 1
  br label %59

59:                                               ; preds = %57, %70
  %60 = phi i64 [ 0, %57 ], [ %71, %70 ]
  %61 = load i32, ptr %58, align 8, !tbaa !52
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds [2 x double], ptr %1, i64 0, i64 %60
  %65 = trunc i64 %60 to i32
  %66 = trunc i64 %60 to i32
  br label %77

67:                                               ; preds = %70, %53
  %68 = icmp ne i32 %16, 0
  %69 = select i1 %27, i1 %68, i1 false
  br i1 %69, label %120, label %156

70:                                               ; preds = %113, %59
  %71 = add nuw nsw i64 %60, 1
  %72 = load i32, ptr %54, align 4, !tbaa !52
  %73 = zext i32 %72 to i64
  %74 = icmp ult i64 %71, %73
  br i1 %74, label %59, label %67, !llvm.loop !126

75:                                               ; preds = %102
  %76 = landingpad { ptr, i32 }
          cleanup
  br label %288

77:                                               ; preds = %63, %113
  %78 = phi i64 [ 0, %63 ], [ %114, %113 ]
  %79 = phi i32 [ %61, %63 ], [ %115, %113 ]
  %80 = load ptr, ptr %48, align 8, !tbaa !96
  %81 = mul i32 %79, %65
  %82 = trunc i64 %78 to i32
  %83 = add i32 %81, %82
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %"class.std::vector.5", ptr %80, i64 %84
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #20
  store double 0.000000e+00, ptr %8, align 8, !tbaa !110
  %86 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %85, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !59
  %88 = load ptr, ptr %85, align 8, !tbaa !78
  %89 = ptrtoint ptr %87 to i64
  %90 = ptrtoint ptr %88 to i64
  %91 = sub i64 %89, %90
  %92 = ashr exact i64 %91, 3
  %93 = icmp ult i64 %92, %46
  br i1 %93, label %94, label %96

94:                                               ; preds = %77
  %95 = sub nsw i64 %46, %92
  invoke void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(ptr noundef nonnull align 8 dereferenceable(24) %85, ptr %87, i64 noundef %95, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %102 unwind label %118

96:                                               ; preds = %77
  %97 = icmp ugt i64 %92, %46
  br i1 %97, label %98, label %102

98:                                               ; preds = %96
  %99 = getelementptr inbounds double, ptr %88, i64 %46
  %100 = icmp eq ptr %87, %99
  br i1 %100, label %102, label %101

101:                                              ; preds = %98
  store ptr %99, ptr %86, align 8, !tbaa !76
  br label %102

102:                                              ; preds = %101, %98, %96, %94
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #20
  %103 = load ptr, ptr %0, align 8, !tbaa !75
  %104 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %103, i64 %78
  %105 = load double, ptr %64, align 8, !tbaa !110
  %106 = load ptr, ptr %48, align 8, !tbaa !96
  %107 = load i32, ptr %58, align 8, !tbaa !52
  %108 = mul i32 %107, %66
  %109 = trunc i64 %78 to i32
  %110 = add i32 %108, %109
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %"class.std::vector.5", ptr %106, i64 %111
  invoke void @_ZNK6dealii11Polynomials10PolynomialIdE5valueEdRSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(96) %104, double noundef %105, ptr noundef nonnull align 8 dereferenceable(24) %112)
          to label %113 unwind label %75

113:                                              ; preds = %102
  %114 = add nuw nsw i64 %78, 1
  %115 = load i32, ptr %58, align 8, !tbaa !52
  %116 = zext i32 %115 to i64
  %117 = icmp ult i64 %114, %116
  br i1 %117, label %77, label %70, !llvm.loop !127

118:                                              ; preds = %94
  %119 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #20
  br label %288

120:                                              ; preds = %67
  %121 = getelementptr inbounds %"class.dealii::PolynomialSpace.24", ptr %0, i64 0, i32 3
  %122 = getelementptr inbounds %"class.dealii::TableBase", ptr %7, i64 0, i32 3, i32 0, i32 0, i64 1
  %123 = load ptr, ptr %48, align 8
  %124 = load i32, ptr %122, align 8
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds %"class.std::vector.5", ptr %123, i64 %125
  %127 = load ptr, ptr %121, align 8
  %128 = load ptr, ptr %2, align 8
  %129 = and i64 %15, 4294967295
  br label %130

130:                                              ; preds = %120, %137
  %131 = phi i64 [ 0, %120 ], [ %138, %137 ]
  %132 = phi i32 [ 0, %120 ], [ %148, %137 ]
  %133 = sub i64 %15, %131
  %134 = getelementptr inbounds %"class.std::vector.5", ptr %126, i64 %131
  %135 = load ptr, ptr %134, align 8, !tbaa !78
  %136 = and i64 %133, 4294967295
  br label %140

137:                                              ; preds = %140
  %138 = add nuw nsw i64 %131, 1
  %139 = icmp eq i64 %138, %129
  br i1 %139, label %156, label %130, !llvm.loop !128

140:                                              ; preds = %130, %140
  %141 = phi i64 [ 0, %130 ], [ %154, %140 ]
  %142 = phi i32 [ %132, %130 ], [ %148, %140 ]
  %143 = getelementptr inbounds %"class.std::vector.5", ptr %123, i64 %141
  %144 = load ptr, ptr %143, align 8, !tbaa !78
  %145 = load double, ptr %144, align 8, !tbaa !110
  %146 = load double, ptr %135, align 8, !tbaa !110
  %147 = fmul double %145, %146
  %148 = add i32 %142, 1
  %149 = zext i32 %142 to i64
  %150 = getelementptr inbounds i32, ptr %127, i64 %149
  %151 = load i32, ptr %150, align 4, !tbaa !52
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds double, ptr %128, i64 %152
  store double %147, ptr %153, align 8, !tbaa !110
  %154 = add nuw nsw i64 %141, 1
  %155 = icmp ult i64 %154, %136
  br i1 %155, label %140, label %137, !llvm.loop !129

156:                                              ; preds = %137, %67
  %157 = icmp eq i32 %16, 0
  %158 = select i1 %36, i1 true, i1 %157
  br i1 %158, label %207, label %159

159:                                              ; preds = %156
  %160 = getelementptr inbounds %"class.dealii::TableBase", ptr %7, i64 0, i32 3, i32 0, i32 0, i64 1
  %161 = getelementptr inbounds %"class.dealii::PolynomialSpace.24", ptr %0, i64 0, i32 3
  %162 = load ptr, ptr %161, align 8
  %163 = load ptr, ptr %48, align 8
  %164 = load i32, ptr %160, align 8
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds %"class.std::vector.5", ptr %163, i64 %165
  %167 = load ptr, ptr %3, align 8
  %168 = and i64 %15, 4294967295
  br label %169

169:                                              ; preds = %159, %176
  %170 = phi i64 [ 0, %159 ], [ %177, %176 ]
  %171 = phi i32 [ 0, %159 ], [ %190, %176 ]
  %172 = sub i64 %15, %170
  %173 = getelementptr inbounds %"class.std::vector.5", ptr %166, i64 %170
  %174 = load ptr, ptr %173, align 8, !tbaa !78
  %175 = and i64 %172, 4294967295
  br label %179

176:                                              ; preds = %189
  %177 = add nuw nsw i64 %170, 1
  %178 = icmp eq i64 %177, %168
  br i1 %178, label %207, label %169, !llvm.loop !130

179:                                              ; preds = %169, %189
  %180 = phi i64 [ 0, %169 ], [ %191, %189 ]
  %181 = phi i32 [ %171, %169 ], [ %190, %189 ]
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds i32, ptr %162, i64 %182
  %184 = load i32, ptr %183, align 4, !tbaa !52
  %185 = getelementptr inbounds %"class.std::vector.5", ptr %163, i64 %180
  %186 = load ptr, ptr %185, align 8, !tbaa !78
  %187 = zext i32 %184 to i64
  %188 = getelementptr inbounds %"class.dealii::Tensor.36", ptr %167, i64 %187
  br label %193

189:                                              ; preds = %193
  %190 = add i32 %181, 1
  %191 = add nuw nsw i64 %180, 1
  %192 = icmp ult i64 %191, %175
  br i1 %192, label %179, label %176, !llvm.loop !131

193:                                              ; preds = %179, %193
  %194 = phi i64 [ 0, %179 ], [ %205, %193 ]
  %195 = and i64 %194, 4294967295
  %196 = xor i64 %195, 1
  %197 = getelementptr inbounds double, ptr %186, i64 %196
  %198 = load double, ptr %197, align 8, !tbaa !110
  %199 = icmp eq i64 %194, 1
  %200 = zext i1 %199 to i64
  %201 = getelementptr inbounds double, ptr %174, i64 %200
  %202 = load double, ptr %201, align 8, !tbaa !110
  %203 = fmul double %198, %202
  %204 = getelementptr inbounds [2 x double], ptr %188, i64 0, i64 %194
  store double %203, ptr %204, align 8, !tbaa !110
  %205 = add nuw nsw i64 %194, 1
  %206 = icmp eq i64 %194, 0
  br i1 %206, label %193, label %189, !llvm.loop !132

207:                                              ; preds = %176, %156
  %208 = icmp eq i32 %16, 0
  %209 = select i1 %45, i1 true, i1 %208
  br i1 %209, label %269, label %210

210:                                              ; preds = %207
  %211 = getelementptr inbounds %"class.dealii::TableBase", ptr %7, i64 0, i32 3, i32 0, i32 0, i64 1
  %212 = getelementptr inbounds %"class.dealii::PolynomialSpace.24", ptr %0, i64 0, i32 3
  %213 = load ptr, ptr %212, align 8
  %214 = load ptr, ptr %48, align 8
  %215 = load i32, ptr %211, align 8
  %216 = zext i32 %215 to i64
  %217 = getelementptr inbounds %"class.std::vector.5", ptr %214, i64 %216
  %218 = load ptr, ptr %4, align 8
  %219 = and i64 %15, 4294967295
  br label %220

220:                                              ; preds = %210, %227
  %221 = phi i64 [ 0, %210 ], [ %228, %227 ]
  %222 = phi i32 [ 0, %210 ], [ %248, %227 ]
  %223 = sub i64 %15, %221
  %224 = getelementptr inbounds %"class.std::vector.5", ptr %217, i64 %221
  %225 = load ptr, ptr %224, align 8, !tbaa !78
  %226 = and i64 %223, 4294967295
  br label %230

227:                                              ; preds = %247
  %228 = add nuw nsw i64 %221, 1
  %229 = icmp eq i64 %228, %219
  br i1 %229, label %269, label %220, !llvm.loop !133

230:                                              ; preds = %220, %247
  %231 = phi i64 [ 0, %220 ], [ %249, %247 ]
  %232 = phi i32 [ %222, %220 ], [ %248, %247 ]
  %233 = zext i32 %232 to i64
  %234 = getelementptr inbounds i32, ptr %213, i64 %233
  %235 = load i32, ptr %234, align 4, !tbaa !52
  %236 = getelementptr inbounds %"class.std::vector.5", ptr %214, i64 %231
  %237 = load ptr, ptr %236, align 8, !tbaa !78
  %238 = zext i32 %235 to i64
  %239 = getelementptr inbounds %"class.dealii::Tensor.37", ptr %218, i64 %238
  br label %240

240:                                              ; preds = %230, %251
  %241 = phi i64 [ 0, %230 ], [ %252, %251 ]
  %242 = icmp eq i64 %241, 1
  %243 = zext i1 %242 to i64
  %244 = xor i64 %241, 1
  %245 = getelementptr double, ptr %225, i64 %243
  %246 = getelementptr inbounds [2 x %"class.dealii::Tensor.36"], ptr %239, i64 0, i64 %241
  br label %254

247:                                              ; preds = %251
  %248 = add i32 %232, 1
  %249 = add nuw nsw i64 %231, 1
  %250 = icmp ult i64 %249, %226
  br i1 %250, label %230, label %227, !llvm.loop !134

251:                                              ; preds = %254
  %252 = add nuw nsw i64 %241, 1
  %253 = icmp eq i64 %241, 0
  br i1 %253, label %240, label %247, !llvm.loop !135

254:                                              ; preds = %240, %254
  %255 = phi i64 [ 0, %240 ], [ %267, %254 ]
  %256 = icmp eq i64 %255, 1
  %257 = zext i1 %256 to i64
  %258 = xor i64 %255, 1
  %259 = add nuw i64 %258, %244
  %260 = and i64 %259, 4294967295
  %261 = getelementptr inbounds double, ptr %237, i64 %260
  %262 = load double, ptr %261, align 8, !tbaa !110
  %263 = getelementptr double, ptr %245, i64 %257
  %264 = load double, ptr %263, align 8, !tbaa !110
  %265 = fmul double %262, %264
  %266 = getelementptr inbounds [2 x double], ptr %246, i64 0, i64 %255
  store double %265, ptr %266, align 8, !tbaa !110
  %267 = add nuw nsw i64 %255, 1
  %268 = icmp eq i64 %255, 0
  br i1 %268, label %254, label %251, !llvm.loop !136

269:                                              ; preds = %227, %207
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii9TableBaseILi2ESt6vectorIdSaIdEEEE, i64 0, inrange i32 0, i64 2), ptr %7, align 8, !tbaa !93
  %270 = load ptr, ptr %48, align 8, !tbaa !96
  %271 = icmp eq ptr %270, null
  br i1 %271, label %287, label %272

272:                                              ; preds = %269
  %273 = getelementptr inbounds i8, ptr %270, i64 -8
  %274 = load i64, ptr %273, align 8
  %275 = icmp eq i64 %274, 0
  br i1 %275, label %286, label %276

276:                                              ; preds = %272
  %277 = getelementptr inbounds %"class.std::vector.5", ptr %270, i64 %274
  br label %278

278:                                              ; preds = %276, %284
  %279 = phi ptr [ %280, %284 ], [ %277, %276 ]
  %280 = getelementptr inbounds %"class.std::vector.5", ptr %279, i64 -1
  %281 = load ptr, ptr %280, align 8, !tbaa !78
  %282 = icmp eq ptr %281, null
  br i1 %282, label %284, label %283

283:                                              ; preds = %278
  call void @_ZdlPv(ptr noundef %281) #19
  br label %284

284:                                              ; preds = %283, %278
  %285 = icmp eq ptr %280, %270
  br i1 %285, label %286, label %278

286:                                              ; preds = %284, %272
  call void @_ZdaPv(ptr noundef %273) #19
  br label %287

287:                                              ; preds = %269, %286
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %7) #20
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %7) #20
  ret void

288:                                              ; preds = %75, %118
  %289 = phi { ptr, i32 } [ %76, %75 ], [ %119, %118 ]
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii9TableBaseILi2ESt6vectorIdSaIdEEEE, i64 0, inrange i32 0, i64 2), ptr %7, align 8, !tbaa !93
  %290 = load ptr, ptr %48, align 8, !tbaa !96
  %291 = icmp eq ptr %290, null
  br i1 %291, label %307, label %292

292:                                              ; preds = %288
  %293 = getelementptr inbounds i8, ptr %290, i64 -8
  %294 = load i64, ptr %293, align 8
  %295 = icmp eq i64 %294, 0
  br i1 %295, label %306, label %296

296:                                              ; preds = %292
  %297 = getelementptr inbounds %"class.std::vector.5", ptr %290, i64 %294
  br label %298

298:                                              ; preds = %296, %304
  %299 = phi ptr [ %300, %304 ], [ %297, %296 ]
  %300 = getelementptr inbounds %"class.std::vector.5", ptr %299, i64 -1
  %301 = load ptr, ptr %300, align 8, !tbaa !78
  %302 = icmp eq ptr %301, null
  br i1 %302, label %304, label %303

303:                                              ; preds = %298
  call void @_ZdlPv(ptr noundef %301) #19
  br label %304

304:                                              ; preds = %303, %298
  %305 = icmp eq ptr %300, %290
  br i1 %305, label %306, label %298

306:                                              ; preds = %304, %292
  call void @_ZdaPv(ptr noundef %293) #19
  br label %307

307:                                              ; preds = %288, %306
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %7) #20
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %7) #20
  br label %49
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii15PolynomialSpaceILi2EE13compute_valueEjRKNS_5PointILi2EEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 !prof !45 {
  %4 = alloca [2 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  %5 = getelementptr inbounds %"class.dealii::PolynomialSpace.24", ptr %0, i64 0, i32 2
  %6 = zext i32 %1 to i64
  %7 = load ptr, ptr %5, align 8, !tbaa !51
  %8 = getelementptr inbounds i32, ptr %7, i64 %6
  %9 = load i32, ptr %8, align 4, !tbaa !52
  %10 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !73
  %12 = load ptr, ptr %0, align 8, !tbaa !75
  %13 = ptrtoint ptr %11 to i64
  %14 = ptrtoint ptr %12 to i64
  %15 = sub i64 %13, %14
  %16 = sdiv exact i64 %15, 96
  %17 = trunc i64 %16 to i32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %3, %30
  %20 = phi i32 [ %34, %30 ], [ 0, %3 ]
  %21 = phi i32 [ %33, %30 ], [ 0, %3 ]
  %22 = phi i32 [ %32, %30 ], [ 0, %3 ]
  %23 = add i32 %22, %17
  %24 = add i32 %23, %20
  %25 = icmp ult i32 %9, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = sub i32 %9, %22
  store i32 %27, ptr %4, align 4, !tbaa !52
  %28 = getelementptr inbounds [2 x i32], ptr %4, i64 0, i64 1
  store i32 %21, ptr %28, align 4, !tbaa !52
  br label %29

29:                                               ; preds = %30, %3, %26
  br label %37

30:                                               ; preds = %19
  %31 = add i32 %22, %17
  %32 = add i32 %31, %20
  %33 = add nuw i32 %21, 1
  %34 = xor i32 %21, -1
  %35 = icmp eq i32 %33, %17
  br i1 %35, label %29, label %19, !llvm.loop !137

36:                                               ; preds = %37
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  ret double %48

37:                                               ; preds = %29, %37
  %38 = phi i64 [ %49, %37 ], [ 0, %29 ]
  %39 = phi double [ %48, %37 ], [ 1.000000e+00, %29 ]
  %40 = getelementptr inbounds [2 x i32], ptr %4, i64 0, i64 %38
  %41 = load i32, ptr %40, align 4, !tbaa !52
  %42 = zext i32 %41 to i64
  %43 = load ptr, ptr %0, align 8, !tbaa !75
  %44 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %43, i64 %42
  %45 = getelementptr inbounds [2 x double], ptr %2, i64 0, i64 %38
  %46 = load double, ptr %45, align 8, !tbaa !110
  %47 = tail call noundef double @_ZNK6dealii11Polynomials10PolynomialIdE5valueEd(ptr noundef nonnull align 8 dereferenceable(96) %44, double noundef %46)
  %48 = fmul double %39, %47
  %49 = add nuw nsw i64 %38, 1
  %50 = icmp eq i64 %38, 0
  br i1 %50, label %37, label %36, !llvm.loop !138
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZNK6dealii15PolynomialSpaceILi2EE13compute_indexEjRA2_j(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0, i32 noundef %1, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(8) %2) local_unnamed_addr #7 align 2 !prof !45 {
  %4 = getelementptr inbounds %"class.dealii::PolynomialSpace.24", ptr %0, i64 0, i32 2
  %5 = zext i32 %1 to i64
  %6 = load ptr, ptr %4, align 8, !tbaa !51
  %7 = getelementptr inbounds i32, ptr %6, i64 %5
  %8 = load i32, ptr %7, align 4, !tbaa !52
  %9 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !73
  %11 = load ptr, ptr %0, align 8, !tbaa !75
  %12 = ptrtoint ptr %10 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  %15 = sdiv exact i64 %14, 96
  %16 = trunc i64 %15 to i32
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %34, label %18

18:                                               ; preds = %3, %28
  %19 = phi i32 [ %32, %28 ], [ 0, %3 ]
  %20 = phi i32 [ %31, %28 ], [ 0, %3 ]
  %21 = phi i32 [ %30, %28 ], [ 0, %3 ]
  %22 = add i32 %21, %16
  %23 = add i32 %22, %19
  %24 = icmp ult i32 %8, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = sub i32 %8, %21
  store i32 %26, ptr %2, align 4, !tbaa !52
  %27 = getelementptr inbounds [2 x i32], ptr %2, i64 0, i64 1
  store i32 %20, ptr %27, align 4, !tbaa !52
  br label %34

28:                                               ; preds = %18
  %29 = add i32 %21, %16
  %30 = add i32 %29, %19
  %31 = add nuw i32 %20, 1
  %32 = xor i32 %20, -1
  %33 = icmp eq i32 %31, %16
  br i1 %33, label %34, label %18, !llvm.loop !137

34:                                               ; preds = %28, %3, %25
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii15PolynomialSpaceILi2EE12compute_gradEjRKNS_5PointILi2EEE(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.36") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %5 = alloca [2 x i32], align 4
  %6 = alloca %"class.std::vector.5", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  %7 = getelementptr inbounds %"class.dealii::PolynomialSpace.24", ptr %1, i64 0, i32 2
  %8 = zext i32 %2 to i64
  %9 = load ptr, ptr %7, align 8, !tbaa !51
  %10 = getelementptr inbounds i32, ptr %9, i64 %8
  %11 = load i32, ptr %10, align 4, !tbaa !52
  %12 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !73
  %14 = load ptr, ptr %1, align 8, !tbaa !75
  %15 = ptrtoint ptr %13 to i64
  %16 = ptrtoint ptr %14 to i64
  %17 = sub i64 %15, %16
  %18 = sdiv exact i64 %17, 96
  %19 = trunc i64 %18 to i32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %37, label %21

21:                                               ; preds = %4, %31
  %22 = phi i32 [ %35, %31 ], [ 0, %4 ]
  %23 = phi i32 [ %34, %31 ], [ 0, %4 ]
  %24 = phi i32 [ %33, %31 ], [ 0, %4 ]
  %25 = add i32 %24, %19
  %26 = add i32 %25, %22
  %27 = icmp ult i32 %11, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = sub i32 %11, %24
  store i32 %29, ptr %5, align 4, !tbaa !52
  %30 = getelementptr inbounds [2 x i32], ptr %5, i64 0, i64 1
  store i32 %23, ptr %30, align 4, !tbaa !52
  br label %37

31:                                               ; preds = %21
  %32 = add i32 %24, %19
  %33 = add i32 %32, %22
  %34 = add nuw i32 %23, 1
  %35 = xor i32 %23, -1
  %36 = icmp eq i32 %34, %19
  br i1 %36, label %37, label %21, !llvm.loop !137

37:                                               ; preds = %31, %4, %28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !tbaa !110
  br label %44

38:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #20
  %39 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %6, i64 0, i32 1
  %40 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %6, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %41 = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #18
  store ptr %41, ptr %6, align 8, !tbaa !78
  store ptr %41, ptr %39, align 8, !tbaa !76
  %42 = getelementptr inbounds double, ptr %41, i64 2
  store ptr %42, ptr %40, align 8, !tbaa !116
  store double 0.000000e+00, ptr %41, align 8, !tbaa !110
  %43 = getelementptr inbounds i8, ptr %41, i64 8
  store double 0.000000e+00, ptr %43, align 8, !tbaa !110
  store ptr %42, ptr %39, align 8, !tbaa !76
  br label %54

44:                                               ; preds = %37, %44
  %45 = phi i64 [ 0, %37 ], [ %47, %44 ]
  %46 = getelementptr inbounds [2 x double], ptr %0, i64 0, i64 %45
  store double 1.000000e+00, ptr %46, align 8, !tbaa !110
  %47 = add nuw nsw i64 %45, 1
  %48 = icmp eq i64 %45, 0
  br i1 %48, label %44, label %38, !llvm.loop !139

49:                                               ; preds = %70
  %50 = load ptr, ptr %6, align 8, !tbaa !78
  %51 = icmp eq ptr %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  call void @_ZdlPv(ptr noundef %50) #19
  br label %53

53:                                               ; preds = %49, %52
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  ret void

54:                                               ; preds = %38, %70
  %55 = phi i64 [ 0, %38 ], [ %71, %70 ]
  %56 = getelementptr inbounds [2 x i32], ptr %5, i64 0, i64 %55
  %57 = load i32, ptr %56, align 4, !tbaa !52
  %58 = zext i32 %57 to i64
  %59 = load ptr, ptr %1, align 8, !tbaa !75
  %60 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %59, i64 %58
  %61 = getelementptr inbounds [2 x double], ptr %3, i64 0, i64 %55
  %62 = load double, ptr %61, align 8, !tbaa !110
  invoke void @_ZNK6dealii11Polynomials10PolynomialIdE5valueEdRSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(96) %60, double noundef %62, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %63 unwind label %73

63:                                               ; preds = %54
  %64 = load ptr, ptr %6, align 8, !tbaa !78
  %65 = getelementptr inbounds double, ptr %64, i64 1
  %66 = load double, ptr %65, align 8, !tbaa !110
  %67 = getelementptr inbounds [2 x double], ptr %0, i64 0, i64 %55
  %68 = load double, ptr %67, align 8, !tbaa !110
  %69 = fmul double %66, %68
  store double %69, ptr %67, align 8, !tbaa !110
  br label %78

70:                                               ; preds = %86
  %71 = add nuw nsw i64 %55, 1
  %72 = icmp eq i64 %55, 0
  br i1 %72, label %54, label %49, !llvm.loop !140

73:                                               ; preds = %54
  %74 = landingpad { ptr, i32 }
          cleanup
  %75 = load ptr, ptr %6, align 8, !tbaa !78
  %76 = icmp eq ptr %75, null
  br i1 %76, label %89, label %77

77:                                               ; preds = %73
  call void @_ZdlPv(ptr noundef %75) #19
  br label %89

78:                                               ; preds = %63, %86
  %79 = phi i64 [ 0, %63 ], [ %87, %86 ]
  %80 = icmp eq i64 %79, %55
  br i1 %80, label %86, label %81

81:                                               ; preds = %78
  %82 = load double, ptr %64, align 8, !tbaa !110
  %83 = getelementptr inbounds [2 x double], ptr %0, i64 0, i64 %79
  %84 = load double, ptr %83, align 8, !tbaa !110
  %85 = fmul double %82, %84
  store double %85, ptr %83, align 8, !tbaa !110
  br label %86

86:                                               ; preds = %78, %81
  %87 = add nuw nsw i64 %79, 1
  %88 = icmp eq i64 %79, 0
  br i1 %88, label %78, label %70, !llvm.loop !141

89:                                               ; preds = %77, %73
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  resume { ptr, i32 } %74
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii15PolynomialSpaceILi2EE17compute_grad_gradEjRKNS_5PointILi2EEE(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.37") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %5 = alloca [2 x i32], align 4
  %6 = alloca %"class.std::vector.5", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  %7 = getelementptr inbounds %"class.dealii::PolynomialSpace.24", ptr %1, i64 0, i32 2
  %8 = zext i32 %2 to i64
  %9 = load ptr, ptr %7, align 8, !tbaa !51
  %10 = getelementptr inbounds i32, ptr %9, i64 %8
  %11 = load i32, ptr %10, align 4, !tbaa !52
  %12 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !73
  %14 = load ptr, ptr %1, align 8, !tbaa !75
  %15 = ptrtoint ptr %13 to i64
  %16 = ptrtoint ptr %14 to i64
  %17 = sub i64 %15, %16
  %18 = sdiv exact i64 %17, 96
  %19 = trunc i64 %18 to i32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %37, label %21

21:                                               ; preds = %4, %31
  %22 = phi i32 [ %35, %31 ], [ 0, %4 ]
  %23 = phi i32 [ %34, %31 ], [ 0, %4 ]
  %24 = phi i32 [ %33, %31 ], [ 0, %4 ]
  %25 = add i32 %24, %19
  %26 = add i32 %25, %22
  %27 = icmp ult i32 %11, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = sub i32 %11, %24
  store i32 %29, ptr %5, align 4, !tbaa !52
  %30 = getelementptr inbounds [2 x i32], ptr %5, i64 0, i64 1
  store i32 %23, ptr %30, align 4, !tbaa !52
  br label %37

31:                                               ; preds = %21
  %32 = add i32 %24, %19
  %33 = add i32 %32, %22
  %34 = add nuw i32 %23, 1
  %35 = xor i32 %23, -1
  %36 = icmp eq i32 %34, %19
  br i1 %36, label %37, label %21, !llvm.loop !137

37:                                               ; preds = %31, %4, %28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !tbaa !110
  br label %38

38:                                               ; preds = %37, %46
  %39 = phi i64 [ 0, %37 ], [ %47, %46 ]
  %40 = getelementptr inbounds [2 x %"class.dealii::Tensor.36"], ptr %0, i64 0, i64 %39
  br label %49

41:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #20
  %42 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %6, i64 0, i32 1
  %43 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %6, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %44 = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18
  store ptr %44, ptr %6, align 8, !tbaa !78
  store ptr %44, ptr %42, align 8, !tbaa !76
  %45 = getelementptr inbounds double, ptr %44, i64 3
  store ptr %45, ptr %43, align 8, !tbaa !116
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %44, i8 0, i64 24, i1 false)
  store ptr %45, ptr %42, align 8, !tbaa !76
  br label %59

46:                                               ; preds = %49
  %47 = add nuw nsw i64 %39, 1
  %48 = icmp eq i64 %39, 0
  br i1 %48, label %38, label %41, !llvm.loop !142

49:                                               ; preds = %38, %49
  %50 = phi i64 [ 0, %38 ], [ %52, %49 ]
  %51 = getelementptr inbounds [2 x double], ptr %40, i64 0, i64 %50
  store double 1.000000e+00, ptr %51, align 8, !tbaa !110
  %52 = add nuw nsw i64 %50, 1
  %53 = icmp eq i64 %50, 0
  br i1 %53, label %49, label %46, !llvm.loop !143

54:                                               ; preds = %77
  %55 = load ptr, ptr %6, align 8, !tbaa !78
  %56 = icmp eq ptr %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  call void @_ZdlPv(ptr noundef %55) #19
  br label %58

58:                                               ; preds = %54, %57
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  ret void

59:                                               ; preds = %41, %77
  %60 = phi i64 [ 0, %41 ], [ %78, %77 ]
  %61 = getelementptr inbounds [2 x i32], ptr %5, i64 0, i64 %60
  %62 = load i32, ptr %61, align 4, !tbaa !52
  %63 = zext i32 %62 to i64
  %64 = load ptr, ptr %1, align 8, !tbaa !75
  %65 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %64, i64 %63
  %66 = getelementptr inbounds [2 x double], ptr %3, i64 0, i64 %60
  %67 = load double, ptr %66, align 8, !tbaa !110
  invoke void @_ZNK6dealii11Polynomials10PolynomialIdE5valueEdRSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(96) %65, double noundef %67, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %68 unwind label %80

68:                                               ; preds = %59
  %69 = load ptr, ptr %6, align 8, !tbaa !78
  %70 = getelementptr inbounds double, ptr %69, i64 2
  %71 = load double, ptr %70, align 8, !tbaa !110
  %72 = getelementptr inbounds [2 x %"class.dealii::Tensor.36"], ptr %0, i64 0, i64 %60
  %73 = getelementptr inbounds [2 x double], ptr %72, i64 0, i64 %60
  %74 = load double, ptr %73, align 8, !tbaa !110
  %75 = fmul double %71, %74
  store double %75, ptr %73, align 8, !tbaa !110
  %76 = getelementptr inbounds double, ptr %69, i64 1
  br label %85

77:                                               ; preds = %108
  %78 = add nuw nsw i64 %60, 1
  %79 = icmp eq i64 %60, 0
  br i1 %79, label %59, label %54, !llvm.loop !144

80:                                               ; preds = %59
  %81 = landingpad { ptr, i32 }
          cleanup
  %82 = load ptr, ptr %6, align 8, !tbaa !78
  %83 = icmp eq ptr %82, null
  br i1 %83, label %111, label %84

84:                                               ; preds = %80
  call void @_ZdlPv(ptr noundef %82) #19
  br label %111

85:                                               ; preds = %68, %108
  %86 = phi i64 [ 0, %68 ], [ %109, %108 ]
  %87 = icmp eq i64 %86, %60
  br i1 %87, label %108, label %88

88:                                               ; preds = %85
  %89 = load double, ptr %76, align 8, !tbaa !110
  %90 = getelementptr inbounds [2 x double], ptr %72, i64 0, i64 %86
  %91 = load double, ptr %90, align 8, !tbaa !110
  %92 = fmul double %89, %91
  store double %92, ptr %90, align 8, !tbaa !110
  %93 = getelementptr inbounds [2 x %"class.dealii::Tensor.36"], ptr %0, i64 0, i64 %86
  %94 = getelementptr inbounds [2 x double], ptr %93, i64 0, i64 %60
  %95 = load double, ptr %94, align 8, !tbaa !110
  %96 = fmul double %89, %95
  store double %96, ptr %94, align 8, !tbaa !110
  br label %97

97:                                               ; preds = %88, %105
  %98 = phi i64 [ 0, %88 ], [ %106, %105 ]
  %99 = icmp eq i64 %98, %60
  br i1 %99, label %105, label %100

100:                                              ; preds = %97
  %101 = load double, ptr %69, align 8, !tbaa !110
  %102 = getelementptr inbounds [2 x double], ptr %93, i64 0, i64 %98
  %103 = load double, ptr %102, align 8, !tbaa !110
  %104 = fmul double %101, %103
  store double %104, ptr %102, align 8, !tbaa !110
  br label %105

105:                                              ; preds = %97, %100
  %106 = add nuw nsw i64 %98, 1
  %107 = icmp eq i64 %98, 0
  br i1 %107, label %97, label %108, !llvm.loop !145

108:                                              ; preds = %105, %85
  %109 = add nuw nsw i64 %86, 1
  %110 = icmp eq i64 %86, 0
  br i1 %110, label %85, label %77, !llvm.loop !146

111:                                              ; preds = %84, %80
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  resume { ptr, i32 } %81
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii15PolynomialSpaceILi2EE1nEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #5 comdat align 2 !prof !45 {
  %2 = getelementptr inbounds %"class.dealii::PolynomialSpace.24", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !118
  ret i32 %3
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii15PolynomialSpaceILi2EE6degreeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #5 comdat align 2 !prof !45 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !73
  %4 = load ptr, ptr %0, align 8, !tbaa !75
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 96
  %9 = trunc i64 %8 to i32
  ret i32 %9
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef i32 @_ZN6dealii15PolynomialSpaceILi2EE14compute_n_polsEj(i32 noundef %0) local_unnamed_addr #6 comdat align 2 !prof !45 {
  %2 = add i32 %0, 1
  %3 = mul i32 %2, %0
  %4 = lshr i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii15PolynomialSpaceILi3EE13set_numberingERKSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 !prof !45 {
  %3 = getelementptr inbounds %"class.dealii::PolynomialSpace.38", ptr %0, i64 0, i32 2
  %4 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIjSaIjEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %5 = getelementptr inbounds %"class.dealii::PolynomialSpace.38", ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = load ptr, ptr %3, align 8, !tbaa !51
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 2
  %12 = icmp eq ptr %6, %7
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.dealii::PolynomialSpace.38", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !51
  br label %17

16:                                               ; preds = %17, %2
  ret void

17:                                               ; preds = %13, %17
  %18 = phi i64 [ 0, %13 ], [ %25, %17 ]
  %19 = phi i32 [ 0, %13 ], [ %24, %17 ]
  %20 = getelementptr inbounds i32, ptr %7, i64 %18
  %21 = load i32, ptr %20, align 4, !tbaa !52
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i32, ptr %15, i64 %22
  store i32 %19, ptr %23, align 4, !tbaa !52
  %24 = add i32 %19, 1
  %25 = zext i32 %24 to i64
  %26 = icmp ugt i64 %11, %25
  br i1 %26, label %17, label %16, !llvm.loop !147
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii15PolynomialSpaceILi3EE7computeERKNS_5PointILi3EEERSt6vectorIdSaIdEERS6_INS_6TensorILi1ELi3EEESaISB_EERS6_INSA_ILi2ELi3EEESaISF_EE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !72 {
  %6 = alloca %"class.dealii::TableIndices", align 4
  %7 = alloca %"class.dealii::Table", align 8
  %8 = alloca double, align 8
  %9 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !73
  %11 = load ptr, ptr %0, align 8, !tbaa !75
  %12 = ptrtoint ptr %10 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  %15 = sdiv exact i64 %14, 96
  %16 = trunc i64 %15 to i32
  %17 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %2, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !76
  %19 = load ptr, ptr %2, align 8, !tbaa !78
  %20 = ptrtoint ptr %18 to i64
  %21 = ptrtoint ptr %19 to i64
  %22 = sub i64 %20, %21
  %23 = ashr exact i64 %22, 3
  %24 = getelementptr inbounds %"class.dealii::PolynomialSpace.38", ptr %0, i64 0, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !148
  %26 = zext i32 %25 to i64
  %27 = icmp eq i64 %23, %26
  %28 = zext i1 %27 to i64
  %29 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl_data", ptr %3, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !150
  %31 = load ptr, ptr %3, align 8, !tbaa !152
  %32 = ptrtoint ptr %30 to i64
  %33 = ptrtoint ptr %31 to i64
  %34 = sub i64 %32, %33
  %35 = sdiv exact i64 %34, 24
  %36 = icmp eq i64 %35, %26
  %37 = select i1 %36, i64 2, i64 %28
  %38 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<2, 3>, std::allocator<dealii::Tensor<2, 3>>>::_Vector_impl_data", ptr %4, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !153
  %40 = load ptr, ptr %4, align 8, !tbaa !155
  %41 = ptrtoint ptr %39 to i64
  %42 = ptrtoint ptr %40 to i64
  %43 = sub i64 %41, %42
  %44 = sdiv exact i64 %43, 72
  %45 = icmp eq i64 %44, %26
  %46 = select i1 %45, i64 3, i64 %37
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #20
  store i32 3, ptr %6, align 4, !tbaa !52
  %47 = getelementptr inbounds [2 x i32], ptr %6, i64 0, i64 1
  store i32 %16, ptr %47, align 4, !tbaa !52
  call void @_ZN6dealii11SubscriptorC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %7)
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii9TableBaseILi2ESt6vectorIdSaIdEEEE, i64 0, inrange i32 0, i64 2), ptr %7, align 8, !tbaa !93
  %48 = getelementptr inbounds %"class.dealii::TableBase", ptr %7, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %48, i8 0, i64 20, i1 false)
  invoke void @_ZN6dealii9TableBaseILi2ESt6vectorIdSaIdEEE6reinitERKNS_12TableIndicesILi2EEE(ptr noundef nonnull align 8 dereferenceable(92) %7, ptr noundef nonnull align 4 dereferenceable(8) %6)
          to label %53 unwind label %51

49:                                               ; preds = %380, %51
  %50 = phi { ptr, i32 } [ %52, %51 ], [ %362, %380 ]
  resume { ptr, i32 } %50

51:                                               ; preds = %5
  %52 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %7) #20
  br label %49

53:                                               ; preds = %5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #20
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii5TableILi2ESt6vectorIdSaIdEEEE, i64 0, inrange i32 0, i64 2), ptr %7, align 8, !tbaa !93
  %54 = getelementptr inbounds %"class.dealii::TableBase", ptr %7, i64 0, i32 3
  %55 = load i32, ptr %54, align 4, !tbaa !52
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %67, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %"class.dealii::TableBase", ptr %7, i64 0, i32 3, i32 0, i32 0, i64 1
  br label %59

59:                                               ; preds = %57, %74
  %60 = phi i64 [ 0, %57 ], [ %75, %74 ]
  %61 = load i32, ptr %58, align 8, !tbaa !52
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %74, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %60
  %65 = trunc i64 %60 to i32
  %66 = trunc i64 %60 to i32
  br label %81

67:                                               ; preds = %74, %53
  %68 = icmp ne i32 %16, 0
  %69 = select i1 %27, i1 %68, i1 false
  br i1 %69, label %70, label %177

70:                                               ; preds = %67
  %71 = getelementptr inbounds %"class.dealii::TableBase", ptr %7, i64 0, i32 3, i32 0, i32 0, i64 1
  %72 = getelementptr inbounds %"class.dealii::PolynomialSpace.38", ptr %0, i64 0, i32 3
  %73 = and i64 %15, 4294967295
  br label %124

74:                                               ; preds = %117, %59
  %75 = add nuw nsw i64 %60, 1
  %76 = load i32, ptr %54, align 4, !tbaa !52
  %77 = zext i32 %76 to i64
  %78 = icmp ult i64 %75, %77
  br i1 %78, label %59, label %67, !llvm.loop !156

79:                                               ; preds = %106
  %80 = landingpad { ptr, i32 }
          cleanup
  br label %361

81:                                               ; preds = %63, %117
  %82 = phi i64 [ 0, %63 ], [ %118, %117 ]
  %83 = phi i32 [ %61, %63 ], [ %119, %117 ]
  %84 = load ptr, ptr %48, align 8, !tbaa !96
  %85 = mul i32 %83, %65
  %86 = trunc i64 %82 to i32
  %87 = add i32 %85, %86
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %"class.std::vector.5", ptr %84, i64 %88
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #20
  store double 0.000000e+00, ptr %8, align 8, !tbaa !110
  %90 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %89, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !59
  %92 = load ptr, ptr %89, align 8, !tbaa !78
  %93 = ptrtoint ptr %91 to i64
  %94 = ptrtoint ptr %92 to i64
  %95 = sub i64 %93, %94
  %96 = ashr exact i64 %95, 3
  %97 = icmp ult i64 %96, %46
  br i1 %97, label %98, label %100

98:                                               ; preds = %81
  %99 = sub nsw i64 %46, %96
  invoke void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(ptr noundef nonnull align 8 dereferenceable(24) %89, ptr %91, i64 noundef %99, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %106 unwind label %122

100:                                              ; preds = %81
  %101 = icmp ugt i64 %96, %46
  br i1 %101, label %102, label %106

102:                                              ; preds = %100
  %103 = getelementptr inbounds double, ptr %92, i64 %46
  %104 = icmp eq ptr %91, %103
  br i1 %104, label %106, label %105

105:                                              ; preds = %102
  store ptr %103, ptr %90, align 8, !tbaa !76
  br label %106

106:                                              ; preds = %105, %102, %100, %98
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #20
  %107 = load ptr, ptr %0, align 8, !tbaa !75
  %108 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %107, i64 %82
  %109 = load double, ptr %64, align 8, !tbaa !110
  %110 = load ptr, ptr %48, align 8, !tbaa !96
  %111 = load i32, ptr %58, align 8, !tbaa !52
  %112 = mul i32 %111, %66
  %113 = trunc i64 %82 to i32
  %114 = add i32 %112, %113
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds %"class.std::vector.5", ptr %110, i64 %115
  invoke void @_ZNK6dealii11Polynomials10PolynomialIdE5valueEdRSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(96) %108, double noundef %109, ptr noundef nonnull align 8 dereferenceable(24) %116)
          to label %117 unwind label %79

117:                                              ; preds = %106
  %118 = add nuw nsw i64 %82, 1
  %119 = load i32, ptr %58, align 8, !tbaa !52
  %120 = zext i32 %119 to i64
  %121 = icmp ult i64 %118, %120
  br i1 %121, label %81, label %74, !llvm.loop !157

122:                                              ; preds = %98
  %123 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #20
  br label %361

124:                                              ; preds = %70, %152
  %125 = phi i64 [ 0, %70 ], [ %153, %152 ]
  %126 = phi i32 [ 0, %70 ], [ %156, %152 ]
  %127 = sub i64 %15, %125
  %128 = load ptr, ptr %48, align 8
  %129 = load i32, ptr %71, align 8
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds %"class.std::vector.5", ptr %128, i64 %130
  %132 = shl i32 %129, 1
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds %"class.std::vector.5", ptr %128, i64 %133
  %135 = getelementptr inbounds %"class.std::vector.5", ptr %134, i64 %125
  %136 = load ptr, ptr %72, align 8
  %137 = load ptr, ptr %2, align 8
  %138 = and i64 %127, 4294967295
  %139 = trunc i64 %125 to i32
  br label %140

140:                                              ; preds = %124, %155
  %141 = phi i64 [ 0, %124 ], [ %157, %155 ]
  %142 = phi i32 [ %126, %124 ], [ %156, %155 ]
  %143 = trunc i64 %141 to i32
  %144 = add i32 %139, %143
  %145 = icmp eq i32 %144, %16
  br i1 %145, label %155, label %146

146:                                              ; preds = %140
  %147 = sub i32 %16, %144
  %148 = getelementptr inbounds %"class.std::vector.5", ptr %131, i64 %141
  %149 = load ptr, ptr %148, align 8, !tbaa !78
  %150 = load ptr, ptr %135, align 8, !tbaa !78
  %151 = zext i32 %147 to i64
  br label %159

152:                                              ; preds = %155
  %153 = add nuw nsw i64 %125, 1
  %154 = icmp eq i64 %153, %73
  br i1 %154, label %177, label %124, !llvm.loop !158

155:                                              ; preds = %159, %140
  %156 = phi i32 [ %142, %140 ], [ %169, %159 ]
  %157 = add nuw nsw i64 %141, 1
  %158 = icmp ult i64 %157, %138
  br i1 %158, label %140, label %152, !llvm.loop !159

159:                                              ; preds = %146, %159
  %160 = phi i64 [ 0, %146 ], [ %175, %159 ]
  %161 = phi i32 [ %142, %146 ], [ %169, %159 ]
  %162 = getelementptr inbounds %"class.std::vector.5", ptr %128, i64 %160
  %163 = load ptr, ptr %162, align 8, !tbaa !78
  %164 = load double, ptr %163, align 8, !tbaa !110
  %165 = load double, ptr %149, align 8, !tbaa !110
  %166 = fmul double %164, %165
  %167 = load double, ptr %150, align 8, !tbaa !110
  %168 = fmul double %166, %167
  %169 = add i32 %161, 1
  %170 = zext i32 %161 to i64
  %171 = getelementptr inbounds i32, ptr %136, i64 %170
  %172 = load i32, ptr %171, align 4, !tbaa !52
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds double, ptr %137, i64 %173
  store double %168, ptr %174, align 8, !tbaa !110
  %175 = add nuw nsw i64 %160, 1
  %176 = icmp ult i64 %175, %151
  br i1 %176, label %159, label %155, !llvm.loop !160

177:                                              ; preds = %152, %67
  %178 = icmp ne i32 %16, 0
  %179 = select i1 %36, i1 %178, i1 false
  br i1 %179, label %180, label %252

180:                                              ; preds = %177
  %181 = getelementptr inbounds %"class.dealii::PolynomialSpace.38", ptr %0, i64 0, i32 3
  %182 = getelementptr inbounds %"class.dealii::TableBase", ptr %7, i64 0, i32 3, i32 0, i32 0, i64 1
  %183 = and i64 %15, 4294967295
  br label %184

184:                                              ; preds = %180, %212
  %185 = phi i64 [ 0, %180 ], [ %213, %212 ]
  %186 = phi i32 [ 0, %180 ], [ %216, %212 ]
  %187 = sub i64 %15, %185
  %188 = load ptr, ptr %181, align 8
  %189 = load ptr, ptr %48, align 8
  %190 = load i32, ptr %182, align 8
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds %"class.std::vector.5", ptr %189, i64 %191
  %193 = shl i32 %190, 1
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds %"class.std::vector.5", ptr %189, i64 %194
  %196 = getelementptr inbounds %"class.std::vector.5", ptr %195, i64 %185
  %197 = load ptr, ptr %3, align 8
  %198 = and i64 %187, 4294967295
  %199 = trunc i64 %185 to i32
  br label %200

200:                                              ; preds = %184, %215
  %201 = phi i64 [ 0, %184 ], [ %217, %215 ]
  %202 = phi i32 [ %186, %184 ], [ %216, %215 ]
  %203 = trunc i64 %201 to i32
  %204 = add i32 %199, %203
  %205 = icmp eq i32 %204, %16
  br i1 %205, label %215, label %206

206:                                              ; preds = %200
  %207 = sub i32 %16, %204
  %208 = getelementptr inbounds %"class.std::vector.5", ptr %192, i64 %201
  %209 = load ptr, ptr %208, align 8, !tbaa !78
  %210 = load ptr, ptr %196, align 8, !tbaa !78
  %211 = zext i32 %207 to i64
  br label %219

212:                                              ; preds = %215
  %213 = add nuw nsw i64 %185, 1
  %214 = icmp eq i64 %213, %183
  br i1 %214, label %252, label %184, !llvm.loop !161

215:                                              ; preds = %229, %200
  %216 = phi i32 [ %202, %200 ], [ %230, %229 ]
  %217 = add nuw nsw i64 %201, 1
  %218 = icmp ult i64 %217, %198
  br i1 %218, label %200, label %212, !llvm.loop !162

219:                                              ; preds = %206, %229
  %220 = phi i64 [ 0, %206 ], [ %231, %229 ]
  %221 = phi i32 [ %202, %206 ], [ %230, %229 ]
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds i32, ptr %188, i64 %222
  %224 = load i32, ptr %223, align 4, !tbaa !52
  %225 = getelementptr inbounds %"class.std::vector.5", ptr %189, i64 %220
  %226 = load ptr, ptr %225, align 8, !tbaa !78
  %227 = zext i32 %224 to i64
  %228 = getelementptr inbounds %"class.dealii::Tensor.50", ptr %197, i64 %227
  br label %233

229:                                              ; preds = %233
  %230 = add i32 %221, 1
  %231 = add nuw nsw i64 %220, 1
  %232 = icmp ult i64 %231, %211
  br i1 %232, label %219, label %215, !llvm.loop !163

233:                                              ; preds = %219, %233
  %234 = phi i64 [ 0, %219 ], [ %250, %233 ]
  %235 = icmp eq i64 %234, 0
  %236 = zext i1 %235 to i64
  %237 = getelementptr inbounds double, ptr %226, i64 %236
  %238 = load double, ptr %237, align 8, !tbaa !110
  %239 = icmp eq i64 %234, 1
  %240 = zext i1 %239 to i64
  %241 = getelementptr inbounds double, ptr %209, i64 %240
  %242 = load double, ptr %241, align 8, !tbaa !110
  %243 = fmul double %238, %242
  %244 = icmp eq i64 %234, 2
  %245 = zext i1 %244 to i64
  %246 = getelementptr inbounds double, ptr %210, i64 %245
  %247 = load double, ptr %246, align 8, !tbaa !110
  %248 = fmul double %243, %247
  %249 = getelementptr inbounds [3 x double], ptr %228, i64 0, i64 %234
  store double %248, ptr %249, align 8, !tbaa !110
  %250 = add nuw nsw i64 %234, 1
  %251 = icmp eq i64 %250, 3
  br i1 %251, label %229, label %233, !llvm.loop !164

252:                                              ; preds = %212, %177
  %253 = icmp ne i32 %16, 0
  %254 = select i1 %45, i1 %253, i1 false
  br i1 %254, label %255, label %342

255:                                              ; preds = %252
  %256 = getelementptr inbounds %"class.dealii::PolynomialSpace.38", ptr %0, i64 0, i32 3
  %257 = getelementptr inbounds %"class.dealii::TableBase", ptr %7, i64 0, i32 3, i32 0, i32 0, i64 1
  %258 = and i64 %15, 4294967295
  br label %259

259:                                              ; preds = %255, %287
  %260 = phi i64 [ 0, %255 ], [ %288, %287 ]
  %261 = phi i32 [ 0, %255 ], [ %291, %287 ]
  %262 = sub i64 %15, %260
  %263 = load ptr, ptr %256, align 8
  %264 = load ptr, ptr %48, align 8
  %265 = load i32, ptr %257, align 8
  %266 = zext i32 %265 to i64
  %267 = getelementptr inbounds %"class.std::vector.5", ptr %264, i64 %266
  %268 = shl i32 %265, 1
  %269 = zext i32 %268 to i64
  %270 = getelementptr inbounds %"class.std::vector.5", ptr %264, i64 %269
  %271 = getelementptr inbounds %"class.std::vector.5", ptr %270, i64 %260
  %272 = load ptr, ptr %4, align 8
  %273 = and i64 %262, 4294967295
  %274 = trunc i64 %260 to i32
  br label %275

275:                                              ; preds = %259, %290
  %276 = phi i64 [ 0, %259 ], [ %292, %290 ]
  %277 = phi i32 [ %261, %259 ], [ %291, %290 ]
  %278 = trunc i64 %276 to i32
  %279 = add i32 %274, %278
  %280 = icmp eq i32 %279, %16
  br i1 %280, label %290, label %281

281:                                              ; preds = %275
  %282 = sub i32 %16, %279
  %283 = getelementptr inbounds %"class.std::vector.5", ptr %267, i64 %276
  %284 = load ptr, ptr %283, align 8, !tbaa !78
  %285 = load ptr, ptr %271, align 8, !tbaa !78
  %286 = zext i32 %282 to i64
  br label %294

287:                                              ; preds = %290
  %288 = add nuw nsw i64 %260, 1
  %289 = icmp eq i64 %288, %258
  br i1 %289, label %342, label %259, !llvm.loop !165

290:                                              ; preds = %316, %275
  %291 = phi i32 [ %277, %275 ], [ %317, %316 ]
  %292 = add nuw nsw i64 %276, 1
  %293 = icmp ult i64 %292, %273
  br i1 %293, label %275, label %287, !llvm.loop !166

294:                                              ; preds = %281, %316
  %295 = phi i64 [ 0, %281 ], [ %318, %316 ]
  %296 = phi i32 [ %277, %281 ], [ %317, %316 ]
  %297 = zext i32 %296 to i64
  %298 = getelementptr inbounds i32, ptr %263, i64 %297
  %299 = load i32, ptr %298, align 4, !tbaa !52
  %300 = getelementptr inbounds %"class.std::vector.5", ptr %264, i64 %295
  %301 = load ptr, ptr %300, align 8, !tbaa !78
  %302 = zext i32 %299 to i64
  %303 = getelementptr inbounds %"class.dealii::Tensor.51", ptr %272, i64 %302
  br label %304

304:                                              ; preds = %294, %320
  %305 = phi i64 [ 0, %294 ], [ %321, %320 ]
  %306 = icmp eq i64 %305, 1
  %307 = zext i1 %306 to i64
  %308 = icmp eq i64 %305, 2
  %309 = zext i1 %308 to i64
  %310 = icmp eq i64 %305, 0
  %311 = zext i1 %310 to i64
  %312 = getelementptr double, ptr %301, i64 %311
  %313 = getelementptr double, ptr %284, i64 %307
  %314 = getelementptr double, ptr %285, i64 %309
  %315 = getelementptr inbounds [3 x %"class.dealii::Tensor.50"], ptr %303, i64 0, i64 %305
  br label %323

316:                                              ; preds = %320
  %317 = add i32 %296, 1
  %318 = add nuw nsw i64 %295, 1
  %319 = icmp ult i64 %318, %286
  br i1 %319, label %294, label %290, !llvm.loop !167

320:                                              ; preds = %323
  %321 = add nuw nsw i64 %305, 1
  %322 = icmp eq i64 %321, 3
  br i1 %322, label %316, label %304, !llvm.loop !168

323:                                              ; preds = %304, %323
  %324 = phi i64 [ 0, %304 ], [ %340, %323 ]
  %325 = icmp eq i64 %324, 1
  %326 = zext i1 %325 to i64
  %327 = icmp eq i64 %324, 2
  %328 = zext i1 %327 to i64
  %329 = icmp eq i64 %324, 0
  %330 = zext i1 %329 to i64
  %331 = getelementptr double, ptr %312, i64 %330
  %332 = load double, ptr %331, align 8, !tbaa !110
  %333 = getelementptr double, ptr %313, i64 %326
  %334 = load double, ptr %333, align 8, !tbaa !110
  %335 = fmul double %332, %334
  %336 = getelementptr double, ptr %314, i64 %328
  %337 = load double, ptr %336, align 8, !tbaa !110
  %338 = fmul double %335, %337
  %339 = getelementptr inbounds [3 x double], ptr %315, i64 0, i64 %324
  store double %338, ptr %339, align 8, !tbaa !110
  %340 = add nuw nsw i64 %324, 1
  %341 = icmp eq i64 %340, 3
  br i1 %341, label %320, label %323, !llvm.loop !169

342:                                              ; preds = %287, %252
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii9TableBaseILi2ESt6vectorIdSaIdEEEE, i64 0, inrange i32 0, i64 2), ptr %7, align 8, !tbaa !93
  %343 = load ptr, ptr %48, align 8, !tbaa !96
  %344 = icmp eq ptr %343, null
  br i1 %344, label %360, label %345

345:                                              ; preds = %342
  %346 = getelementptr inbounds i8, ptr %343, i64 -8
  %347 = load i64, ptr %346, align 8
  %348 = icmp eq i64 %347, 0
  br i1 %348, label %359, label %349

349:                                              ; preds = %345
  %350 = getelementptr inbounds %"class.std::vector.5", ptr %343, i64 %347
  br label %351

351:                                              ; preds = %349, %357
  %352 = phi ptr [ %353, %357 ], [ %350, %349 ]
  %353 = getelementptr inbounds %"class.std::vector.5", ptr %352, i64 -1
  %354 = load ptr, ptr %353, align 8, !tbaa !78
  %355 = icmp eq ptr %354, null
  br i1 %355, label %357, label %356

356:                                              ; preds = %351
  call void @_ZdlPv(ptr noundef %354) #19
  br label %357

357:                                              ; preds = %356, %351
  %358 = icmp eq ptr %353, %343
  br i1 %358, label %359, label %351

359:                                              ; preds = %357, %345
  call void @_ZdaPv(ptr noundef %346) #19
  br label %360

360:                                              ; preds = %342, %359
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %7) #20
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %7) #20
  ret void

361:                                              ; preds = %79, %122
  %362 = phi { ptr, i32 } [ %80, %79 ], [ %123, %122 ]
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii9TableBaseILi2ESt6vectorIdSaIdEEEE, i64 0, inrange i32 0, i64 2), ptr %7, align 8, !tbaa !93
  %363 = load ptr, ptr %48, align 8, !tbaa !96
  %364 = icmp eq ptr %363, null
  br i1 %364, label %380, label %365

365:                                              ; preds = %361
  %366 = getelementptr inbounds i8, ptr %363, i64 -8
  %367 = load i64, ptr %366, align 8
  %368 = icmp eq i64 %367, 0
  br i1 %368, label %379, label %369

369:                                              ; preds = %365
  %370 = getelementptr inbounds %"class.std::vector.5", ptr %363, i64 %367
  br label %371

371:                                              ; preds = %369, %377
  %372 = phi ptr [ %373, %377 ], [ %370, %369 ]
  %373 = getelementptr inbounds %"class.std::vector.5", ptr %372, i64 -1
  %374 = load ptr, ptr %373, align 8, !tbaa !78
  %375 = icmp eq ptr %374, null
  br i1 %375, label %377, label %376

376:                                              ; preds = %371
  call void @_ZdlPv(ptr noundef %374) #19
  br label %377

377:                                              ; preds = %376, %371
  %378 = icmp eq ptr %373, %363
  br i1 %378, label %379, label %371

379:                                              ; preds = %377, %365
  call void @_ZdaPv(ptr noundef %366) #19
  br label %380

380:                                              ; preds = %361, %379
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %7) #20
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %7) #20
  br label %49
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii15PolynomialSpaceILi3EE13compute_valueEjRKNS_5PointILi3EEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 !prof !45 {
  %4 = alloca [3 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #20
  %5 = getelementptr inbounds %"class.dealii::PolynomialSpace.38", ptr %0, i64 0, i32 2
  %6 = zext i32 %1 to i64
  %7 = load ptr, ptr %5, align 8, !tbaa !51
  %8 = getelementptr inbounds i32, ptr %7, i64 %6
  %9 = load i32, ptr %8, align 4, !tbaa !52
  %10 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !73
  %12 = load ptr, ptr %0, align 8, !tbaa !75
  %13 = ptrtoint ptr %11 to i64
  %14 = ptrtoint ptr %12 to i64
  %15 = sub i64 %13, %14
  %16 = sdiv exact i64 %15, 96
  %17 = trunc i64 %16 to i32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %35, label %19

19:                                               ; preds = %3, %41
  %20 = phi i32 [ %43, %41 ], [ %17, %3 ]
  %21 = phi i32 [ %42, %41 ], [ 0, %3 ]
  %22 = phi i32 [ %38, %41 ], [ 0, %3 ]
  %23 = tail call i32 @llvm.umax.i32(i32 %20, i32 1)
  br label %24

24:                                               ; preds = %19, %36
  %25 = phi i32 [ %39, %36 ], [ 0, %19 ]
  %26 = phi i32 [ %38, %36 ], [ %22, %19 ]
  %27 = add i32 %26, %17
  %28 = add i32 %25, %21
  %29 = sub i32 %27, %28
  %30 = icmp ult i32 %9, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = sub i32 %9, %26
  store i32 %32, ptr %4, align 4, !tbaa !52
  %33 = getelementptr inbounds [3 x i32], ptr %4, i64 0, i64 1
  store i32 %25, ptr %33, align 4, !tbaa !52
  %34 = getelementptr inbounds [3 x i32], ptr %4, i64 0, i64 2
  store i32 %21, ptr %34, align 4, !tbaa !52
  br label %35

35:                                               ; preds = %41, %3, %31
  br label %46

36:                                               ; preds = %24
  %37 = add i32 %26, %17
  %38 = sub i32 %37, %28
  %39 = add nuw i32 %25, 1
  %40 = icmp eq i32 %39, %23
  br i1 %40, label %41, label %24, !llvm.loop !170

41:                                               ; preds = %36
  %42 = add nuw i32 %21, 1
  %43 = add i32 %20, -1
  %44 = icmp eq i32 %42, %17
  br i1 %44, label %35, label %19, !llvm.loop !171

45:                                               ; preds = %46
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #20
  ret double %57

46:                                               ; preds = %35, %46
  %47 = phi i64 [ %58, %46 ], [ 0, %35 ]
  %48 = phi double [ %57, %46 ], [ 1.000000e+00, %35 ]
  %49 = getelementptr inbounds [3 x i32], ptr %4, i64 0, i64 %47
  %50 = load i32, ptr %49, align 4, !tbaa !52
  %51 = zext i32 %50 to i64
  %52 = load ptr, ptr %0, align 8, !tbaa !75
  %53 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %52, i64 %51
  %54 = getelementptr inbounds [3 x double], ptr %2, i64 0, i64 %47
  %55 = load double, ptr %54, align 8, !tbaa !110
  %56 = tail call noundef double @_ZNK6dealii11Polynomials10PolynomialIdE5valueEd(ptr noundef nonnull align 8 dereferenceable(96) %53, double noundef %55)
  %57 = fmul double %48, %56
  %58 = add nuw nsw i64 %47, 1
  %59 = icmp eq i64 %58, 3
  br i1 %59, label %45, label %46, !llvm.loop !172
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZNK6dealii15PolynomialSpaceILi3EE13compute_indexEjRA3_j(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0, i32 noundef %1, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(12) %2) local_unnamed_addr #7 align 2 !prof !45 {
  %4 = getelementptr inbounds %"class.dealii::PolynomialSpace.38", ptr %0, i64 0, i32 2
  %5 = zext i32 %1 to i64
  %6 = load ptr, ptr %4, align 8, !tbaa !51
  %7 = getelementptr inbounds i32, ptr %6, i64 %5
  %8 = load i32, ptr %7, align 4, !tbaa !52
  %9 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !73
  %11 = load ptr, ptr %0, align 8, !tbaa !75
  %12 = ptrtoint ptr %10 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  %15 = sdiv exact i64 %14, 96
  %16 = trunc i64 %15 to i32
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %43, label %18

18:                                               ; preds = %3, %39
  %19 = phi i32 [ %41, %39 ], [ %16, %3 ]
  %20 = phi i32 [ %40, %39 ], [ 0, %3 ]
  %21 = phi i32 [ %36, %39 ], [ 0, %3 ]
  %22 = tail call i32 @llvm.umax.i32(i32 %19, i32 1)
  br label %23

23:                                               ; preds = %18, %34
  %24 = phi i32 [ %37, %34 ], [ 0, %18 ]
  %25 = phi i32 [ %36, %34 ], [ %21, %18 ]
  %26 = add i32 %25, %16
  %27 = add i32 %24, %20
  %28 = sub i32 %26, %27
  %29 = icmp ult i32 %8, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = sub i32 %8, %25
  store i32 %31, ptr %2, align 4, !tbaa !52
  %32 = getelementptr inbounds [3 x i32], ptr %2, i64 0, i64 1
  store i32 %24, ptr %32, align 4, !tbaa !52
  %33 = getelementptr inbounds [3 x i32], ptr %2, i64 0, i64 2
  store i32 %20, ptr %33, align 4, !tbaa !52
  br label %43

34:                                               ; preds = %23
  %35 = add i32 %25, %16
  %36 = sub i32 %35, %27
  %37 = add nuw i32 %24, 1
  %38 = icmp eq i32 %37, %22
  br i1 %38, label %39, label %23, !llvm.loop !170

39:                                               ; preds = %34
  %40 = add nuw i32 %20, 1
  %41 = add i32 %19, -1
  %42 = icmp eq i32 %40, %16
  br i1 %42, label %43, label %18, !llvm.loop !171

43:                                               ; preds = %39, %3, %30
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii15PolynomialSpaceILi3EE12compute_gradEjRKNS_5PointILi3EEE(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.50") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %5 = alloca [3 x i32], align 4
  %6 = alloca %"class.std::vector.5", align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #20
  %7 = getelementptr inbounds %"class.dealii::PolynomialSpace.38", ptr %1, i64 0, i32 2
  %8 = zext i32 %2 to i64
  %9 = load ptr, ptr %7, align 8, !tbaa !51
  %10 = getelementptr inbounds i32, ptr %9, i64 %8
  %11 = load i32, ptr %10, align 4, !tbaa !52
  %12 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !73
  %14 = load ptr, ptr %1, align 8, !tbaa !75
  %15 = ptrtoint ptr %13 to i64
  %16 = ptrtoint ptr %14 to i64
  %17 = sub i64 %15, %16
  %18 = sdiv exact i64 %17, 96
  %19 = trunc i64 %18 to i32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %46, label %21

21:                                               ; preds = %4, %42
  %22 = phi i32 [ %44, %42 ], [ %19, %4 ]
  %23 = phi i32 [ %43, %42 ], [ 0, %4 ]
  %24 = phi i32 [ %39, %42 ], [ 0, %4 ]
  %25 = tail call i32 @llvm.umax.i32(i32 %22, i32 1)
  br label %26

26:                                               ; preds = %21, %37
  %27 = phi i32 [ %40, %37 ], [ 0, %21 ]
  %28 = phi i32 [ %39, %37 ], [ %24, %21 ]
  %29 = add i32 %28, %19
  %30 = add i32 %27, %23
  %31 = sub i32 %29, %30
  %32 = icmp ult i32 %11, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = sub i32 %11, %28
  store i32 %34, ptr %5, align 4, !tbaa !52
  %35 = getelementptr inbounds [3 x i32], ptr %5, i64 0, i64 1
  store i32 %27, ptr %35, align 4, !tbaa !52
  %36 = getelementptr inbounds [3 x i32], ptr %5, i64 0, i64 2
  store i32 %23, ptr %36, align 4, !tbaa !52
  br label %46

37:                                               ; preds = %26
  %38 = add i32 %28, %19
  %39 = sub i32 %38, %30
  %40 = add nuw i32 %27, 1
  %41 = icmp eq i32 %40, %25
  br i1 %41, label %42, label %26, !llvm.loop !170

42:                                               ; preds = %37
  %43 = add nuw i32 %23, 1
  %44 = add i32 %22, -1
  %45 = icmp eq i32 %43, %19
  br i1 %45, label %46, label %21, !llvm.loop !171

46:                                               ; preds = %42, %4, %33
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !tbaa !110
  br label %53

47:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #20
  %48 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %6, i64 0, i32 1
  %49 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %6, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %50 = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #18
  store ptr %50, ptr %6, align 8, !tbaa !78
  store ptr %50, ptr %48, align 8, !tbaa !76
  %51 = getelementptr inbounds double, ptr %50, i64 2
  store ptr %51, ptr %49, align 8, !tbaa !116
  store double 0.000000e+00, ptr %50, align 8, !tbaa !110
  %52 = getelementptr inbounds i8, ptr %50, i64 8
  store double 0.000000e+00, ptr %52, align 8, !tbaa !110
  store ptr %51, ptr %48, align 8, !tbaa !76
  br label %63

53:                                               ; preds = %46, %53
  %54 = phi i64 [ 0, %46 ], [ %56, %53 ]
  %55 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 %54
  store double 1.000000e+00, ptr %55, align 8, !tbaa !110
  %56 = add nuw nsw i64 %54, 1
  %57 = icmp eq i64 %56, 3
  br i1 %57, label %47, label %53, !llvm.loop !173

58:                                               ; preds = %79
  %59 = load ptr, ptr %6, align 8, !tbaa !78
  %60 = icmp eq ptr %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %58
  call void @_ZdlPv(ptr noundef %59) #19
  br label %62

62:                                               ; preds = %58, %61
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #20
  ret void

63:                                               ; preds = %47, %79
  %64 = phi i64 [ 0, %47 ], [ %80, %79 ]
  %65 = getelementptr inbounds [3 x i32], ptr %5, i64 0, i64 %64
  %66 = load i32, ptr %65, align 4, !tbaa !52
  %67 = zext i32 %66 to i64
  %68 = load ptr, ptr %1, align 8, !tbaa !75
  %69 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %68, i64 %67
  %70 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 %64
  %71 = load double, ptr %70, align 8, !tbaa !110
  invoke void @_ZNK6dealii11Polynomials10PolynomialIdE5valueEdRSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(96) %69, double noundef %71, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %72 unwind label %82

72:                                               ; preds = %63
  %73 = load ptr, ptr %6, align 8, !tbaa !78
  %74 = getelementptr inbounds double, ptr %73, i64 1
  %75 = load double, ptr %74, align 8, !tbaa !110
  %76 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 %64
  %77 = load double, ptr %76, align 8, !tbaa !110
  %78 = fmul double %75, %77
  store double %78, ptr %76, align 8, !tbaa !110
  br label %87

79:                                               ; preds = %95
  %80 = add nuw nsw i64 %64, 1
  %81 = icmp eq i64 %80, 3
  br i1 %81, label %58, label %63, !llvm.loop !174

82:                                               ; preds = %63
  %83 = landingpad { ptr, i32 }
          cleanup
  %84 = load ptr, ptr %6, align 8, !tbaa !78
  %85 = icmp eq ptr %84, null
  br i1 %85, label %98, label %86

86:                                               ; preds = %82
  call void @_ZdlPv(ptr noundef %84) #19
  br label %98

87:                                               ; preds = %72, %95
  %88 = phi i64 [ 0, %72 ], [ %96, %95 ]
  %89 = icmp eq i64 %88, %64
  br i1 %89, label %95, label %90

90:                                               ; preds = %87
  %91 = load double, ptr %73, align 8, !tbaa !110
  %92 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 %88
  %93 = load double, ptr %92, align 8, !tbaa !110
  %94 = fmul double %91, %93
  store double %94, ptr %92, align 8, !tbaa !110
  br label %95

95:                                               ; preds = %87, %90
  %96 = add nuw nsw i64 %88, 1
  %97 = icmp eq i64 %96, 3
  br i1 %97, label %79, label %87, !llvm.loop !175

98:                                               ; preds = %86, %82
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #20
  resume { ptr, i32 } %83
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii15PolynomialSpaceILi3EE17compute_grad_gradEjRKNS_5PointILi3EEE(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.51") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %5 = alloca [3 x i32], align 4
  %6 = alloca %"class.std::vector.5", align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #20
  %7 = getelementptr inbounds %"class.dealii::PolynomialSpace.38", ptr %1, i64 0, i32 2
  %8 = zext i32 %2 to i64
  %9 = load ptr, ptr %7, align 8, !tbaa !51
  %10 = getelementptr inbounds i32, ptr %9, i64 %8
  %11 = load i32, ptr %10, align 4, !tbaa !52
  %12 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !73
  %14 = load ptr, ptr %1, align 8, !tbaa !75
  %15 = ptrtoint ptr %13 to i64
  %16 = ptrtoint ptr %14 to i64
  %17 = sub i64 %15, %16
  %18 = sdiv exact i64 %17, 96
  %19 = trunc i64 %18 to i32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %46, label %21

21:                                               ; preds = %4, %42
  %22 = phi i32 [ %44, %42 ], [ %19, %4 ]
  %23 = phi i32 [ %43, %42 ], [ 0, %4 ]
  %24 = phi i32 [ %39, %42 ], [ 0, %4 ]
  %25 = tail call i32 @llvm.umax.i32(i32 %22, i32 1)
  br label %26

26:                                               ; preds = %21, %37
  %27 = phi i32 [ %40, %37 ], [ 0, %21 ]
  %28 = phi i32 [ %39, %37 ], [ %24, %21 ]
  %29 = add i32 %28, %19
  %30 = add i32 %27, %23
  %31 = sub i32 %29, %30
  %32 = icmp ult i32 %11, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = sub i32 %11, %28
  store i32 %34, ptr %5, align 4, !tbaa !52
  %35 = getelementptr inbounds [3 x i32], ptr %5, i64 0, i64 1
  store i32 %27, ptr %35, align 4, !tbaa !52
  %36 = getelementptr inbounds [3 x i32], ptr %5, i64 0, i64 2
  store i32 %23, ptr %36, align 4, !tbaa !52
  br label %46

37:                                               ; preds = %26
  %38 = add i32 %28, %19
  %39 = sub i32 %38, %30
  %40 = add nuw i32 %27, 1
  %41 = icmp eq i32 %40, %25
  br i1 %41, label %42, label %26, !llvm.loop !170

42:                                               ; preds = %37
  %43 = add nuw i32 %23, 1
  %44 = add i32 %22, -1
  %45 = icmp eq i32 %43, %19
  br i1 %45, label %46, label %21, !llvm.loop !171

46:                                               ; preds = %42, %4, %33
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false), !tbaa !110
  br label %47

47:                                               ; preds = %46, %55
  %48 = phi i64 [ 0, %46 ], [ %56, %55 ]
  %49 = getelementptr inbounds [3 x %"class.dealii::Tensor.50"], ptr %0, i64 0, i64 %48
  br label %58

50:                                               ; preds = %55
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #20
  %51 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %6, i64 0, i32 1
  %52 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %6, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %53 = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18
  store ptr %53, ptr %6, align 8, !tbaa !78
  store ptr %53, ptr %51, align 8, !tbaa !76
  %54 = getelementptr inbounds double, ptr %53, i64 3
  store ptr %54, ptr %52, align 8, !tbaa !116
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %53, i8 0, i64 24, i1 false)
  store ptr %54, ptr %51, align 8, !tbaa !76
  br label %68

55:                                               ; preds = %58
  %56 = add nuw nsw i64 %48, 1
  %57 = icmp eq i64 %56, 3
  br i1 %57, label %50, label %47, !llvm.loop !176

58:                                               ; preds = %47, %58
  %59 = phi i64 [ 0, %47 ], [ %61, %58 ]
  %60 = getelementptr inbounds [3 x double], ptr %49, i64 0, i64 %59
  store double 1.000000e+00, ptr %60, align 8, !tbaa !110
  %61 = add nuw nsw i64 %59, 1
  %62 = icmp eq i64 %61, 3
  br i1 %62, label %55, label %58, !llvm.loop !177

63:                                               ; preds = %86
  %64 = load ptr, ptr %6, align 8, !tbaa !78
  %65 = icmp eq ptr %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %63
  call void @_ZdlPv(ptr noundef %64) #19
  br label %67

67:                                               ; preds = %63, %66
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #20
  ret void

68:                                               ; preds = %50, %86
  %69 = phi i64 [ 0, %50 ], [ %87, %86 ]
  %70 = getelementptr inbounds [3 x i32], ptr %5, i64 0, i64 %69
  %71 = load i32, ptr %70, align 4, !tbaa !52
  %72 = zext i32 %71 to i64
  %73 = load ptr, ptr %1, align 8, !tbaa !75
  %74 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %73, i64 %72
  %75 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 %69
  %76 = load double, ptr %75, align 8, !tbaa !110
  invoke void @_ZNK6dealii11Polynomials10PolynomialIdE5valueEdRSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(96) %74, double noundef %76, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %77 unwind label %89

77:                                               ; preds = %68
  %78 = load ptr, ptr %6, align 8, !tbaa !78
  %79 = getelementptr inbounds double, ptr %78, i64 2
  %80 = load double, ptr %79, align 8, !tbaa !110
  %81 = getelementptr inbounds [3 x %"class.dealii::Tensor.50"], ptr %0, i64 0, i64 %69
  %82 = getelementptr inbounds [3 x double], ptr %81, i64 0, i64 %69
  %83 = load double, ptr %82, align 8, !tbaa !110
  %84 = fmul double %80, %83
  store double %84, ptr %82, align 8, !tbaa !110
  %85 = getelementptr inbounds double, ptr %78, i64 1
  br label %94

86:                                               ; preds = %117
  %87 = add nuw nsw i64 %69, 1
  %88 = icmp eq i64 %87, 3
  br i1 %88, label %63, label %68, !llvm.loop !178

89:                                               ; preds = %68
  %90 = landingpad { ptr, i32 }
          cleanup
  %91 = load ptr, ptr %6, align 8, !tbaa !78
  %92 = icmp eq ptr %91, null
  br i1 %92, label %120, label %93

93:                                               ; preds = %89
  call void @_ZdlPv(ptr noundef %91) #19
  br label %120

94:                                               ; preds = %77, %117
  %95 = phi i64 [ 0, %77 ], [ %118, %117 ]
  %96 = icmp eq i64 %95, %69
  br i1 %96, label %117, label %97

97:                                               ; preds = %94
  %98 = load double, ptr %85, align 8, !tbaa !110
  %99 = getelementptr inbounds [3 x double], ptr %81, i64 0, i64 %95
  %100 = load double, ptr %99, align 8, !tbaa !110
  %101 = fmul double %98, %100
  store double %101, ptr %99, align 8, !tbaa !110
  %102 = getelementptr inbounds [3 x %"class.dealii::Tensor.50"], ptr %0, i64 0, i64 %95
  %103 = getelementptr inbounds [3 x double], ptr %102, i64 0, i64 %69
  %104 = load double, ptr %103, align 8, !tbaa !110
  %105 = fmul double %98, %104
  store double %105, ptr %103, align 8, !tbaa !110
  br label %106

106:                                              ; preds = %97, %114
  %107 = phi i64 [ 0, %97 ], [ %115, %114 ]
  %108 = icmp eq i64 %107, %69
  br i1 %108, label %114, label %109

109:                                              ; preds = %106
  %110 = load double, ptr %78, align 8, !tbaa !110
  %111 = getelementptr inbounds [3 x double], ptr %102, i64 0, i64 %107
  %112 = load double, ptr %111, align 8, !tbaa !110
  %113 = fmul double %110, %112
  store double %113, ptr %111, align 8, !tbaa !110
  br label %114

114:                                              ; preds = %106, %109
  %115 = add nuw nsw i64 %107, 1
  %116 = icmp eq i64 %115, 3
  br i1 %116, label %117, label %106, !llvm.loop !179

117:                                              ; preds = %114, %94
  %118 = add nuw nsw i64 %95, 1
  %119 = icmp eq i64 %118, 3
  br i1 %119, label %86, label %94, !llvm.loop !180

120:                                              ; preds = %93, %89
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #20
  resume { ptr, i32 } %90
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii15PolynomialSpaceILi3EE1nEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #5 comdat align 2 !prof !45 {
  %2 = getelementptr inbounds %"class.dealii::PolynomialSpace.38", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !148
  ret i32 %3
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii15PolynomialSpaceILi3EE6degreeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #5 comdat align 2 !prof !45 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !73
  %4 = load ptr, ptr %0, align 8, !tbaa !75
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 96
  %9 = trunc i64 %8 to i32
  ret i32 %9
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef i32 @_ZN6dealii15PolynomialSpaceILi3EE14compute_n_polsEj(i32 noundef %0) local_unnamed_addr #6 comdat align 2 !prof !45 {
  br label %3

2:                                                ; preds = %3
  ret i32 %9

3:                                                ; preds = %1, %3
  %4 = phi i32 [ 1, %1 ], [ %8, %3 ]
  %5 = phi i32 [ %0, %1 ], [ %9, %3 ]
  %6 = add i32 %4, %0
  %7 = mul i32 %6, %5
  %8 = add nuw nsw i32 %4, 1
  %9 = udiv i32 %7, %8
  %10 = icmp eq i32 %8, 3
  br i1 %10, label %2, label %3, !llvm.loop !181
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #9

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii9TableBaseILi2ESt6vectorIdSaIdEEED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii9TableBaseILi2ESt6vectorIdSaIdEEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !93
  %2 = getelementptr inbounds %"class.dealii::TableBase", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !96
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds i8, ptr %3, i64 -8
  %7 = load i64, ptr %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.std::vector.5", ptr %3, i64 %7
  br label %11

11:                                               ; preds = %9, %17
  %12 = phi ptr [ %13, %17 ], [ %10, %9 ]
  %13 = getelementptr inbounds %"class.std::vector.5", ptr %12, i64 -1
  %14 = load ptr, ptr %13, align 8, !tbaa !78
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  tail call void @_ZdlPv(ptr noundef %14) #19
  br label %17

17:                                               ; preds = %11, %16
  %18 = icmp eq ptr %13, %3
  br i1 %18, label %19, label %11

19:                                               ; preds = %17, %5
  tail call void @_ZdaPv(ptr noundef %6) #19
  br label %20

20:                                               ; preds = %19, %1
  tail call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #20
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii9TableBaseILi2ESt6vectorIdSaIdEEED0Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !72 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii9TableBaseILi2ESt6vectorIdSaIdEEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !93
  %2 = getelementptr inbounds %"class.dealii::TableBase", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !96
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds i8, ptr %3, i64 -8
  %7 = load i64, ptr %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.std::vector.5", ptr %3, i64 %7
  br label %11

11:                                               ; preds = %9, %17
  %12 = phi ptr [ %13, %17 ], [ %10, %9 ]
  %13 = getelementptr inbounds %"class.std::vector.5", ptr %12, i64 -1
  %14 = load ptr, ptr %13, align 8, !tbaa !78
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  tail call void @_ZdlPv(ptr noundef %14) #19
  br label %17

17:                                               ; preds = %16, %11
  %18 = icmp eq ptr %13, %3
  br i1 %18, label %19, label %11

19:                                               ; preds = %17, %5
  tail call void @_ZdaPv(ptr noundef %6) #19
  br label %20

20:                                               ; preds = %1, %19
  tail call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #20
  tail call void @_ZdlPv(ptr noundef %0) #19
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #11

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #13

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii5TableILi2ESt6vectorIdSaIdEEED0Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !72 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii9TableBaseILi2ESt6vectorIdSaIdEEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !93
  %2 = getelementptr inbounds %"class.dealii::TableBase", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !96
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds i8, ptr %3, i64 -8
  %7 = load i64, ptr %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.std::vector.5", ptr %3, i64 %7
  br label %11

11:                                               ; preds = %9, %17
  %12 = phi ptr [ %13, %17 ], [ %10, %9 ]
  %13 = getelementptr inbounds %"class.std::vector.5", ptr %12, i64 -1
  %14 = load ptr, ptr %13, align 8, !tbaa !78
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  tail call void @_ZdlPv(ptr noundef %14) #19
  br label %17

17:                                               ; preds = %16, %11
  %18 = icmp eq ptr %13, %3
  br i1 %18, label %19, label %11

19:                                               ; preds = %17, %5
  tail call void @_ZdaPv(ptr noundef %6) #19
  br label %20

20:                                               ; preds = %1, %19
  tail call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #20
  tail call void @_ZdlPv(ptr noundef %0) #19
  ret void
}

declare void @_ZN6dealii11SubscriptorC2Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN6dealii9TableBaseILi2ESt6vectorIdSaIdEEE6reinitERKNS_12TableIndicesILi2EEE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 !prof !182 {
  %3 = alloca %"class.std::vector.5", align 8
  %4 = getelementptr inbounds %"class.dealii::TableBase", ptr %0, i64 0, i32 3
  %5 = load i64, ptr %1, align 4
  store i64 %5, ptr %4, align 4
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %13, %6 ]
  %8 = phi i32 [ 1, %2 ], [ %12, %6 ]
  %9 = getelementptr inbounds [2 x i32], ptr %4, i64 0, i64 %7
  %10 = load i32, ptr %9, align 4, !tbaa !52
  %11 = freeze i32 %10
  %12 = mul i32 %11, %8
  %13 = add nuw nsw i64 %7, 1
  %14 = icmp eq i64 %7, 0
  br i1 %14, label %6, label %15, !prof !183, !llvm.loop !184

15:                                               ; preds = %6
  %16 = icmp eq i32 %12, 0
  br i1 %16, label %17, label %37, !prof !185

17:                                               ; preds = %15
  %18 = getelementptr inbounds %"class.dealii::TableBase", ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !96
  %20 = icmp eq ptr %19, null
  br i1 %20, label %36, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds i8, ptr %19, i64 -8
  %23 = load i64, ptr %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %"class.std::vector.5", ptr %19, i64 %23
  br label %27

27:                                               ; preds = %25, %33
  %28 = phi ptr [ %29, %33 ], [ %26, %25 ]
  %29 = getelementptr inbounds %"class.std::vector.5", ptr %28, i64 -1
  %30 = load ptr, ptr %29, align 8, !tbaa !78
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  tail call void @_ZdlPv(ptr noundef %30) #19
  br label %33

33:                                               ; preds = %27, %32
  %34 = icmp eq ptr %29, %19
  br i1 %34, label %35, label %27

35:                                               ; preds = %33, %21
  tail call void @_ZdaPv(ptr noundef %22) #19
  br label %36

36:                                               ; preds = %35, %17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %18, i8 0, i64 20, i1 false)
  br label %115

37:                                               ; preds = %15
  %38 = getelementptr inbounds %"class.dealii::TableBase", ptr %0, i64 0, i32 2
  %39 = load i32, ptr %38, align 8, !tbaa !186
  %40 = icmp ult i32 %39, %12
  br i1 %40, label %41, label %71, !prof !187

41:                                               ; preds = %37
  %42 = getelementptr inbounds %"class.dealii::TableBase", ptr %0, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !96
  %44 = icmp eq ptr %43, null
  br i1 %44, label %60, label %45, !prof !187

45:                                               ; preds = %41
  %46 = getelementptr inbounds i8, ptr %43, i64 -8
  %47 = load i64, ptr %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %"class.std::vector.5", ptr %43, i64 %47
  br label %51

51:                                               ; preds = %49, %57
  %52 = phi ptr [ %53, %57 ], [ %50, %49 ]
  %53 = getelementptr inbounds %"class.std::vector.5", ptr %52, i64 -1
  %54 = load ptr, ptr %53, align 8, !tbaa !78
  %55 = icmp eq ptr %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  tail call void @_ZdlPv(ptr noundef %54) #19
  br label %57

57:                                               ; preds = %51, %56
  %58 = icmp eq ptr %53, %43
  br i1 %58, label %59, label %51

59:                                               ; preds = %57, %45
  tail call void @_ZdaPv(ptr noundef %46) #19
  br label %60

60:                                               ; preds = %59, %41
  store i32 %12, ptr %38, align 8, !tbaa !186
  %61 = zext i32 %12 to i64
  %62 = mul nuw nsw i64 %61, 24
  %63 = add nuw nsw i64 %62, 8
  %64 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %63) #18
  store i64 %61, ptr %64, align 16
  %65 = getelementptr inbounds i8, ptr %64, i64 8
  %66 = mul nuw nsw i64 %61, 24
  %67 = add nsw i64 %66, -24
  %68 = urem i64 %67, 24
  %69 = sub nsw i64 %67, %68
  %70 = add nsw i64 %69, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %65, i8 0, i64 %70, i1 false), !tbaa !59
  store ptr %65, ptr %42, align 8, !tbaa !96
  br label %71

71:                                               ; preds = %60, %37
  br label %72

72:                                               ; preds = %71, %72
  %73 = phi i64 [ %78, %72 ], [ 0, %71 ]
  %74 = phi i32 [ %77, %72 ], [ 1, %71 ]
  %75 = getelementptr inbounds [2 x i32], ptr %4, i64 0, i64 %73
  %76 = load i32, ptr %75, align 4, !tbaa !52
  %77 = mul i32 %76, %74
  %78 = add nuw nsw i64 %73, 1
  %79 = icmp eq i64 %73, 0
  br i1 %79, label %72, label %80, !prof !183, !llvm.loop !184

80:                                               ; preds = %72
  %81 = icmp eq i32 %77, 0
  br i1 %81, label %115, label %82, !prof !185

82:                                               ; preds = %80
  %83 = getelementptr inbounds %"class.dealii::TableBase", ptr %0, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !96
  br label %85

85:                                               ; preds = %82, %85
  %86 = phi i64 [ 0, %82 ], [ %91, %85 ]
  %87 = phi i32 [ 1, %82 ], [ %90, %85 ]
  %88 = getelementptr inbounds [2 x i32], ptr %4, i64 0, i64 %86
  %89 = load i32, ptr %88, align 4, !tbaa !52
  %90 = mul i32 %89, %87
  %91 = add nuw nsw i64 %86, 1
  %92 = icmp eq i64 %86, 0
  br i1 %92, label %85, label %93, !prof !183, !llvm.loop !184

93:                                               ; preds = %85
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #20
  %94 = icmp eq i32 %90, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  br i1 %94, label %104, label %95, !prof !185

95:                                               ; preds = %93
  %96 = zext i32 %90 to i64
  %97 = getelementptr inbounds %"class.std::vector.5", ptr %84, i64 %96
  br label %98

98:                                               ; preds = %95, %101
  %99 = phi ptr [ %102, %101 ], [ %84, %95 ]
  %100 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIdSaIdEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %99, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %101 unwind label %109, !prof !188

101:                                              ; preds = %98
  %102 = getelementptr inbounds %"class.std::vector.5", ptr %99, i64 1
  %103 = icmp eq ptr %102, %97
  br i1 %103, label %104, label %98, !prof !189, !llvm.loop !190

104:                                              ; preds = %101, %93
  %105 = load ptr, ptr %3, align 8, !tbaa !78
  %106 = icmp eq ptr %105, null
  br i1 %106, label %108, label %107, !prof !187

107:                                              ; preds = %104
  call void @_ZdlPv(ptr noundef %105) #19
  br label %108

108:                                              ; preds = %107, %104
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20
  br label %115

109:                                              ; preds = %98
  %110 = landingpad { ptr, i32 }
          cleanup
  %111 = load ptr, ptr %3, align 8, !tbaa !78
  %112 = icmp eq ptr %111, null
  br i1 %112, label %114, label %113

113:                                              ; preds = %109
  call void @_ZdlPv(ptr noundef %111) #19
  br label %114

114:                                              ; preds = %113, %109
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20
  resume { ptr, i32 } %110

115:                                              ; preds = %108, %80, %36
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIdSaIdEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !191 {
  %3 = icmp eq ptr %1, %0
  br i1 %3, label %59, label %4, !prof !192

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !59
  %7 = load ptr, ptr %1, align 8, !tbaa !59
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !116
  %13 = load ptr, ptr %0, align 8, !tbaa !59
  %14 = ptrtoint ptr %12 to i64
  %15 = ptrtoint ptr %13 to i64
  %16 = sub i64 %14, %15
  %17 = icmp ugt i64 %10, %16
  br i1 %17, label %18, label %29, !prof !193

18:                                               ; preds = %4
  %19 = ashr exact i64 %10, 3
  %20 = tail call noundef ptr @_ZNSt15__new_allocatorIdE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %19, ptr noundef null)
  %21 = icmp eq ptr %6, %7
  br i1 %21, label %23, label %22, !prof !194

22:                                               ; preds = %18
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %20, ptr align 8 %7, i64 %10, i1 false), !prof !195
  br label %23

23:                                               ; preds = %18, %22
  %24 = load ptr, ptr %0, align 8, !tbaa !78
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26, !prof !196

26:                                               ; preds = %23
  tail call void @_ZdlPv(ptr noundef %24) #19
  br label %27

27:                                               ; preds = %23, %26
  store ptr %20, ptr %0, align 8, !tbaa !78
  %28 = getelementptr inbounds i8, ptr %20, i64 %10
  store ptr %28, ptr %11, align 8, !tbaa !116
  br label %55

29:                                               ; preds = %4
  %30 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !76
  %32 = ptrtoint ptr %31 to i64
  %33 = sub i64 %32, %15
  %34 = icmp ult i64 %33, %10
  br i1 %34, label %38, label %35, !prof !197

35:                                               ; preds = %29
  %36 = icmp eq ptr %6, %7
  br i1 %36, label %55, label %37, !prof !198

37:                                               ; preds = %35
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %13, ptr align 8 %7, i64 %10, i1 false), !prof !199
  br label %55

38:                                               ; preds = %29
  %39 = icmp eq ptr %31, %13
  br i1 %39, label %41, label %40

40:                                               ; preds = %38
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %13, ptr align 8 %7, i64 %33, i1 false)
  br label %41

41:                                               ; preds = %38, %40
  %42 = load ptr, ptr %1, align 8, !tbaa !78
  %43 = load ptr, ptr %30, align 8, !tbaa !76
  %44 = load ptr, ptr %0, align 8, !tbaa !78
  %45 = ptrtoint ptr %43 to i64
  %46 = ptrtoint ptr %44 to i64
  %47 = sub i64 %45, %46
  %48 = getelementptr inbounds i8, ptr %42, i64 %47
  %49 = load ptr, ptr %5, align 8, !tbaa !76
  %50 = icmp eq ptr %49, %48
  br i1 %50, label %55, label %51

51:                                               ; preds = %41
  %52 = ptrtoint ptr %49 to i64
  %53 = ptrtoint ptr %48 to i64
  %54 = sub i64 %52, %53
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %43, ptr align 8 %48, i64 %54, i1 false)
  br label %55

55:                                               ; preds = %51, %41, %37, %35, %27
  %56 = load ptr, ptr %0, align 8, !tbaa !78
  %57 = getelementptr inbounds i8, ptr %56, i64 %10
  %58 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %57, ptr %58, align 8, !tbaa !76
  br label %59

59:                                               ; preds = %55, %2
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIdE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !200 {
  %4 = icmp ugt i64 %1, 1152921504606846975
  br i1 %4, label %5, label %9, !prof !201

5:                                                ; preds = %3
  %6 = icmp ugt i64 %1, 2305843009213693951
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #17
  unreachable

8:                                                ; preds = %5
  tail call void @_ZSt17__throw_bad_allocv() #17
  unreachable

9:                                                ; preds = %3
  %10 = shl nuw nsw i64 %1, 3
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #18
  ret ptr %11
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !202 {
  %5 = icmp eq i64 %2, 0
  br i1 %5, label %104, label %6, !prof !203

6:                                                ; preds = %4
  %7 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !116
  %9 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !59
  %11 = ptrtoint ptr %8 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = ashr exact i64 %13, 3
  %15 = icmp ult i64 %14, %2
  br i1 %15, label %62, label %16, !prof !204

16:                                               ; preds = %6
  %17 = load double, ptr %3, align 8, !tbaa !110
  %18 = ptrtoint ptr %1 to i64
  %19 = sub i64 %12, %18
  %20 = ashr exact i64 %19, 3
  %21 = icmp ugt i64 %20, %2
  br i1 %21, label %22, label %41

22:                                               ; preds = %16
  %23 = sub i64 0, %2
  %24 = getelementptr inbounds double, ptr %10, i64 %23
  %25 = shl i64 %2, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %10, ptr nonnull align 8 %24, i64 %25, i1 false)
  %26 = load ptr, ptr %9, align 8, !tbaa !76
  %27 = getelementptr inbounds double, ptr %26, i64 %2
  store ptr %27, ptr %9, align 8, !tbaa !76
  %28 = icmp eq ptr %24, %1
  br i1 %28, label %35, label %29

29:                                               ; preds = %22
  %30 = ptrtoint ptr %24 to i64
  %31 = sub i64 %30, %18
  %32 = ashr exact i64 %31, 3
  %33 = sub nsw i64 0, %32
  %34 = getelementptr inbounds double, ptr %10, i64 %33
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %34, ptr align 8 %1, i64 %31, i1 false)
  br label %35

35:                                               ; preds = %22, %29
  %36 = getelementptr inbounds double, ptr %1, i64 %2
  br label %37

37:                                               ; preds = %35, %37
  %38 = phi ptr [ %39, %37 ], [ %1, %35 ]
  store double %17, ptr %38, align 8, !tbaa !110
  %39 = getelementptr inbounds double, ptr %38, i64 1
  %40 = icmp eq ptr %39, %36
  br i1 %40, label %104, label %37, !llvm.loop !205

41:                                               ; preds = %16
  %42 = icmp eq i64 %20, %2
  br i1 %42, label %50, label %43

43:                                               ; preds = %41
  %44 = sub i64 %2, %20
  %45 = getelementptr inbounds double, ptr %10, i64 %44
  br label %46

46:                                               ; preds = %43, %46
  %47 = phi ptr [ %48, %46 ], [ %10, %43 ]
  store double %17, ptr %47, align 8, !tbaa !110
  %48 = getelementptr inbounds double, ptr %47, i64 1
  %49 = icmp eq ptr %48, %45
  br i1 %49, label %50, label %46, !llvm.loop !205

50:                                               ; preds = %46, %41
  %51 = phi ptr [ %10, %41 ], [ %45, %46 ]
  store ptr %51, ptr %9, align 8, !tbaa !76
  %52 = icmp eq ptr %10, %1
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %51, ptr align 8 %1, i64 %19, i1 false)
  br label %54

54:                                               ; preds = %53, %50
  %55 = load ptr, ptr %9, align 8, !tbaa !76
  %56 = getelementptr inbounds i8, ptr %55, i64 %19
  store ptr %56, ptr %9, align 8, !tbaa !76
  %57 = icmp eq ptr %10, %1
  br i1 %57, label %104, label %58

58:                                               ; preds = %54, %58
  %59 = phi ptr [ %60, %58 ], [ %1, %54 ]
  store double %17, ptr %59, align 8, !tbaa !110
  %60 = getelementptr inbounds double, ptr %59, i64 1
  %61 = icmp eq ptr %60, %10
  br i1 %61, label %104, label %58, !llvm.loop !205

62:                                               ; preds = %6
  %63 = load ptr, ptr %0, align 8, !tbaa !78
  %64 = ptrtoint ptr %63 to i64
  %65 = sub i64 %12, %64
  %66 = ashr exact i64 %65, 3
  %67 = sub nsw i64 1152921504606846975, %66
  %68 = icmp ult i64 %67, %2
  br i1 %68, label %69, label %70, !prof !203

69:                                               ; preds = %62
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #17
  unreachable

70:                                               ; preds = %62
  %71 = tail call i64 @llvm.umax.i64(i64 %66, i64 %2)
  %72 = add i64 %71, %66
  %73 = icmp ult i64 %72, %66
  %74 = tail call i64 @llvm.umin.i64(i64 %72, i64 1152921504606846975)
  %75 = select i1 %73, i64 1152921504606846975, i64 %74, !prof !203
  %76 = ptrtoint ptr %1 to i64
  %77 = sub i64 %76, %64
  %78 = icmp eq i64 %75, 0
  br i1 %78, label %82, label %79, !prof !203

79:                                               ; preds = %70
  %80 = shl nuw nsw i64 %75, 3
  %81 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %80) #18
  br label %82

82:                                               ; preds = %70, %79
  %83 = phi ptr [ %81, %79 ], [ null, %70 ]
  %84 = getelementptr inbounds i8, ptr %83, i64 %77
  %85 = getelementptr inbounds double, ptr %84, i64 %2
  %86 = load double, ptr %3, align 8, !tbaa !110
  br label %87

87:                                               ; preds = %82, %87
  %88 = phi ptr [ %89, %87 ], [ %84, %82 ]
  store double %86, ptr %88, align 8, !tbaa !110
  %89 = getelementptr inbounds double, ptr %88, i64 1
  %90 = icmp eq ptr %89, %85
  br i1 %90, label %91, label %87, !prof !206, !llvm.loop !205

91:                                               ; preds = %87
  %92 = icmp eq ptr %63, %1
  br i1 %92, label %94, label %93, !prof !207

93:                                               ; preds = %91
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %83, ptr align 8 %63, i64 %77, i1 false), !prof !208
  br label %94

94:                                               ; preds = %93, %91
  %95 = sub i64 %12, %76
  %96 = icmp eq ptr %10, %1
  br i1 %96, label %98, label %97, !prof !204

97:                                               ; preds = %94
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %85, ptr align 8 %1, i64 %95, i1 false)
  br label %98

98:                                               ; preds = %94, %97
  %99 = getelementptr inbounds i8, ptr %85, i64 %95
  %100 = icmp eq ptr %63, null
  br i1 %100, label %102, label %101, !prof !207

101:                                              ; preds = %98
  tail call void @_ZdlPv(ptr noundef %63) #19
  br label %102

102:                                              ; preds = %98, %101
  store ptr %83, ptr %0, align 8, !tbaa !78
  store ptr %99, ptr %9, align 8, !tbaa !76
  %103 = getelementptr inbounds double, ptr %83, i64 %75
  store ptr %103, ptr %7, align 8, !tbaa !116
  br label %104

104:                                              ; preds = %58, %37, %54, %102, %4
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #16

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { noreturn }
attributes #18 = { builtin allocsize(0) }
attributes #19 = { builtin nounwind }
attributes #20 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!44}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43}
!35 = !{ptr @_ZNSt6vectorIjSaIjEEaSERKS1_, ptr @_Znwm, i64 364986}
!36 = !{ptr @_ZNSt6vectorIjSaIjEEaSERKS1_, ptr @_ZdlPv, i64 533}
!37 = !{ptr @_ZN6dealii9TableBaseILi2ESt6vectorIdSaIdEEE6reinitERKNS_12TableIndicesILi2EEE, ptr @_Znam, i64 986572}
!38 = !{ptr @_ZN6dealii9TableBaseILi2ESt6vectorIdSaIdEEE6reinitERKNS_12TableIndicesILi2EEE, ptr @_ZNSt6vectorIdSaIdEEaSERKS1_, i64 4721165}
!39 = !{ptr @_ZNSt6vectorIdSaIdEEaSERKS1_, ptr @_ZNSt15__new_allocatorIdE8allocateEmPKv, i64 12}
!40 = !{ptr @_ZNSt6vectorIdSaIdEEaSERKS1_, ptr @_ZdlPv, i64 6}
!41 = !{ptr @_ZNSt15__new_allocatorIdE8allocateEmPKv, ptr @_Znwm, i64 1841308}
!42 = !{ptr @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd, ptr @_Znwm, i64 5801171}
!43 = !{ptr @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd, ptr @_ZdlPv, i64 48}
!44 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!45 = !{!"function_entry_count", i64 0}
!46 = !{!47, !48, i64 8}
!47 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !48, i64 0, !48, i64 8, !48, i64 16}
!48 = !{!"any pointer", !49, i64 0}
!49 = !{!"omnipotent char", !50, i64 0}
!50 = !{!"Simple C++ TBAA"}
!51 = !{!47, !48, i64 0}
!52 = !{!53, !53, i64 0}
!53 = !{!"int", !49, i64 0}
!54 = distinct !{!54, !55, !56}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!"llvm.loop.unroll.disable"}
!57 = !{!"function_entry_count", i64 366256}
!58 = !{!"branch_weights", i32 0, i32 366256}
!59 = !{!48, !48, i64 0}
!60 = !{!47, !48, i64 16}
!61 = !{!"branch_weights", i32 364986, i32 1270}
!62 = !{!"branch_weights", i32 0, i32 4804715}
!63 = !{!"branch_weights", i32 0, i32 364986}
!64 = !{!"VP", i32 1, i64 364986, i64 257, i64 180787, i64 32, i64 91612, i64 4, i64 91502, i64 128, i64 573}
!65 = !{!"branch_weights", i32 364453, i32 533}
!66 = !{!"branch_weights", i32 22, i32 1248}
!67 = !{!"branch_weights", i32 0, i32 1248}
!68 = !{!"VP", i32 1, i64 1248, i64 4, i64 792, i64 16, i64 322, i64 513, i64 95, i64 257, i64 11}
!69 = !{!"branch_weights", i32 22, i32 0}
!70 = !{!"branch_weights", i32 0, i32 22}
!71 = !{!"VP", i32 1, i64 22, i64 9, i64 22}
!72 = !{!"instr_prof_hash_mismatch"}
!73 = !{!74, !48, i64 8}
!74 = !{!"_ZTSNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE17_Vector_impl_dataE", !48, i64 0, !48, i64 8, !48, i64 16}
!75 = !{!74, !48, i64 0}
!76 = !{!77, !48, i64 8}
!77 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !48, i64 0, !48, i64 8, !48, i64 16}
!78 = !{!77, !48, i64 0}
!79 = !{!80, !53, i64 24}
!80 = !{!"_ZTSN6dealii15PolynomialSpaceILi1EEE", !81, i64 0, !53, i64 24, !84, i64 32, !84, i64 56}
!81 = !{!"_ZTSSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE", !82, i64 0}
!82 = !{!"_ZTSSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE", !83, i64 0}
!83 = !{!"_ZTSNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE12_Vector_implE", !74, i64 0}
!84 = !{!"_ZTSSt6vectorIjSaIjEE", !85, i64 0}
!85 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !86, i64 0}
!86 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !47, i64 0}
!87 = !{!88, !48, i64 8}
!88 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE17_Vector_impl_dataE", !48, i64 0, !48, i64 8, !48, i64 16}
!89 = !{!88, !48, i64 0}
!90 = !{!91, !48, i64 8}
!91 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EE17_Vector_impl_dataE", !48, i64 0, !48, i64 8, !48, i64 16}
!92 = !{!91, !48, i64 0}
!93 = !{!94, !94, i64 0}
!94 = !{!"vtable pointer", !50, i64 0}
!95 = distinct !{!95, !55, !56}
!96 = !{!97, !48, i64 72}
!97 = !{!"_ZTSN6dealii9TableBaseILi2ESt6vectorIdSaIdEEEE", !98, i64 0, !48, i64 72, !53, i64 80, !108, i64 84}
!98 = !{!"_ZTSN6dealii11SubscriptorE", !53, i64 8, !99, i64 16, !48, i64 64}
!99 = !{!"_ZTSSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE", !100, i64 0}
!100 = !{!"_ZTSSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE", !101, i64 0}
!101 = !{!"_ZTSNSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE13_Rb_tree_implIS8_Lb1EEE", !102, i64 0, !104, i64 8}
!102 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIPKcEE", !103, i64 0}
!103 = !{!"_ZTSSt4lessIPKcE"}
!104 = !{!"_ZTSSt15_Rb_tree_header", !105, i64 0, !107, i64 32}
!105 = !{!"_ZTSSt18_Rb_tree_node_base", !106, i64 0, !48, i64 8, !48, i64 16, !48, i64 24}
!106 = !{!"_ZTSSt14_Rb_tree_color", !49, i64 0}
!107 = !{!"long", !49, i64 0}
!108 = !{!"_ZTSN6dealii12TableIndicesILi2EEE", !109, i64 0}
!109 = !{!"_ZTSN6dealii16TableIndicesBaseILi2EEE", !49, i64 0}
!110 = !{!111, !111, i64 0}
!111 = !{!"double", !49, i64 0}
!112 = distinct !{!112, !55, !56}
!113 = distinct !{!113, !55, !56}
!114 = distinct !{!114, !55, !56}
!115 = distinct !{!115, !55, !56}
!116 = !{!77, !48, i64 16}
!117 = distinct !{!117, !55, !56}
!118 = !{!119, !53, i64 24}
!119 = !{!"_ZTSN6dealii15PolynomialSpaceILi2EEE", !81, i64 0, !53, i64 24, !84, i64 32, !84, i64 56}
!120 = !{!121, !48, i64 8}
!121 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE17_Vector_impl_dataE", !48, i64 0, !48, i64 8, !48, i64 16}
!122 = !{!121, !48, i64 0}
!123 = !{!124, !48, i64 8}
!124 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EE17_Vector_impl_dataE", !48, i64 0, !48, i64 8, !48, i64 16}
!125 = !{!124, !48, i64 0}
!126 = distinct !{!126, !55, !56}
!127 = distinct !{!127, !55, !56}
!128 = distinct !{!128, !55, !56}
!129 = distinct !{!129, !55, !56}
!130 = distinct !{!130, !55, !56}
!131 = distinct !{!131, !55, !56}
!132 = distinct !{!132, !55, !56}
!133 = distinct !{!133, !55, !56}
!134 = distinct !{!134, !55, !56}
!135 = distinct !{!135, !55, !56}
!136 = distinct !{!136, !55, !56}
!137 = distinct !{!137, !55, !56}
!138 = distinct !{!138, !55, !56}
!139 = distinct !{!139, !55, !56}
!140 = distinct !{!140, !55, !56}
!141 = distinct !{!141, !55, !56}
!142 = distinct !{!142, !55, !56}
!143 = distinct !{!143, !55, !56}
!144 = distinct !{!144, !55, !56}
!145 = distinct !{!145, !55, !56}
!146 = distinct !{!146, !55, !56}
!147 = distinct !{!147, !55, !56}
!148 = !{!149, !53, i64 24}
!149 = !{!"_ZTSN6dealii15PolynomialSpaceILi3EEE", !81, i64 0, !53, i64 24, !84, i64 32, !84, i64 56}
!150 = !{!151, !48, i64 8}
!151 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE17_Vector_impl_dataE", !48, i64 0, !48, i64 8, !48, i64 16}
!152 = !{!151, !48, i64 0}
!153 = !{!154, !48, i64 8}
!154 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE17_Vector_impl_dataE", !48, i64 0, !48, i64 8, !48, i64 16}
!155 = !{!154, !48, i64 0}
!156 = distinct !{!156, !55, !56}
!157 = distinct !{!157, !55, !56}
!158 = distinct !{!158, !55, !56}
!159 = distinct !{!159, !55, !56}
!160 = distinct !{!160, !55, !56}
!161 = distinct !{!161, !55, !56}
!162 = distinct !{!162, !55, !56}
!163 = distinct !{!163, !55, !56}
!164 = distinct !{!164, !55, !56}
!165 = distinct !{!165, !55, !56}
!166 = distinct !{!166, !55, !56}
!167 = distinct !{!167, !55, !56}
!168 = distinct !{!168, !55, !56}
!169 = distinct !{!169, !55, !56}
!170 = distinct !{!170, !55, !56}
!171 = distinct !{!171, !55, !56}
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
!182 = !{!"function_entry_count", i64 986572}
!183 = !{!"branch_weights", i32 986572, i32 986572}
!184 = distinct !{!184, !55, !56}
!185 = !{!"branch_weights", i32 0, i32 986572}
!186 = !{!97, !53, i64 80}
!187 = !{!"branch_weights", i32 986572, i32 0}
!188 = !{!"branch_weights", i32 4721160, i32 0}
!189 = !{!"branch_weights", i32 986571, i32 3734589}
!190 = distinct !{!190, !55, !56}
!191 = !{!"function_entry_count", i64 6064389}
!192 = !{!"branch_weights", i32 0, i32 6064389}
!193 = !{!"branch_weights", i32 12, i32 6064377}
!194 = !{!"branch_weights", i32 0, i32 12}
!195 = !{!"VP", i32 1, i64 12, i64 8, i64 6, i64 16, i64 6}
!196 = !{!"branch_weights", i32 6, i32 6}
!197 = !{!"branch_weights", i32 0, i32 6064377}
!198 = !{!"branch_weights", i32 4848962, i32 1215415}
!199 = !{!"VP", i32 1, i64 1215415, i64 32, i64 849971, i64 8, i64 316137, i64 129, i64 46304, i64 64, i64 3003}
!200 = !{!"function_entry_count", i64 1841308}
!201 = !{!"branch_weights", i32 0, i32 7642479}
!202 = !{!"function_entry_count", i64 5801171}
!203 = !{!"branch_weights", i32 0, i32 5801171}
!204 = !{!"branch_weights", i32 5801171, i32 0}
!205 = distinct !{!205, !55, !56}
!206 = !{!"branch_weights", i32 5801170, i32 7217920}
!207 = !{!"branch_weights", i32 5801123, i32 48}
!208 = !{!"VP", i32 1, i64 48, i64 256, i64 24, i64 513, i64 24}
