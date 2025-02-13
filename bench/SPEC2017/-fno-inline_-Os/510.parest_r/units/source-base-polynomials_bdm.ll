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
%"class.std::allocator.7" = type { i8 }
%"class.std::allocator.12" = type { i8 }
%"class.std::allocator.17" = type { i8 }
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
%"class.std::allocator.2" = type { i8 }
%"class.dealii::Tensor" = type { [1 x double] }
%"class.dealii::Tensor.29" = type { [1 x %"class.dealii::Tensor"] }
%"class.dealii::Tensor.31" = type { [1 x %"class.dealii::Tensor.29"] }
%"struct.std::_Vector_base<dealii::Tensor<3, 1>, std::allocator<dealii::Tensor<3, 1>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.__gnu_cxx::__normal_iterator" = type { ptr }
%"class.__gnu_cxx::__normal_iterator.28" = type { ptr }
%"class.__gnu_cxx::__normal_iterator.30" = type { ptr }
%"class.std::allocator.36" = type { i8 }
%"class.std::allocator.41" = type { i8 }
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
%"class.__gnu_cxx::__normal_iterator.51" = type { ptr }
%"class.__gnu_cxx::__normal_iterator.52" = type { ptr }
%"class.__gnu_cxx::__normal_iterator.54" = type { ptr }
%"class.std::allocator.60" = type { i8 }
%"class.std::allocator.65" = type { i8 }
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
%"class.__gnu_cxx::__normal_iterator.75" = type { ptr }
%"class.__gnu_cxx::__normal_iterator.76" = type { ptr }
%"class.__gnu_cxx::__normal_iterator.78" = type { ptr }
%"class.__gnu_cxx::__normal_iterator.80" = type { ptr }
%"class.__gnu_cxx::__normal_iterator.81" = type { ptr }

$_ZN6dealii14PolynomialsBDMILi1EEC5Ej = comdat any

$_ZN6dealii15PolynomialSpaceILi1EEC2INS_11Polynomials10PolynomialIdEEEERKSt6vectorIT_SaIS7_EE = comdat any

$_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EED2Ev = comdat any

$_ZNSaIN6dealii11Polynomials10PolynomialIdEEEC2Ev = comdat any

$_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2EmRKS4_ = comdat any

$_ZN6dealii14PolynomialsBDMILi1EE14compute_n_polsEj = comdat any

$_ZNK6dealii15PolynomialSpaceILi1EE1nEv = comdat any

$_ZNSaIdEC2Ev = comdat any

$_ZNSt6vectorIdSaIdEEC2EmRKS0_ = comdat any

$_ZNSaIN6dealii6TensorILi1ELi1EEEEC2Ev = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEC2EmRKS3_ = comdat any

$_ZNSaIN6dealii6TensorILi2ELi1EEEEC2Ev = comdat any

$_ZNSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EEC2EmRKS3_ = comdat any

$_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEixEm = comdat any

$_ZN6dealii11Polynomials10PolynomialIdEaSEOS2_ = comdat any

$_ZNSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EED2Ev = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EED2Ev = comdat any

$_ZNSt6vectorIdSaIdEED2Ev = comdat any

$_ZN6dealii15PolynomialSpaceILi1EED2Ev = comdat any

$_ZNK6dealii14PolynomialsBDMILi1EE7computeERKNS_5PointILi1EEERSt6vectorINS_6TensorILi1ELi1EEESaIS8_EERS6_INS7_ILi2ELi1EEESaISC_EERS6_INS7_ILi3ELi1EEESaISG_EE = comdat any

$_ZNSt6vectorIdSaIdEE6resizeEm = comdat any

$_ZNKSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE4sizeEv = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE6resizeEm = comdat any

$_ZNKSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE4sizeEv = comdat any

$_ZNSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE6resizeEm = comdat any

$_ZNKSt6vectorIN6dealii6TensorILi3ELi1EEESaIS2_EE4sizeEv = comdat any

$_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi1ELi1EEESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RKT0_ = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE5beginEv = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE3endEv = comdat any

$_ZN6dealii6TensorILi1ELi1EEC2Eb = comdat any

$_ZNKSt6vectorIdSaIdEE4sizeEv = comdat any

$_ZNSt6vectorIdSaIdEEixEm = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm = comdat any

$_ZN6dealii6TensorILi1ELi1EEixEj = comdat any

$_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi2ELi1EEESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RKT0_ = comdat any

$_ZNSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE5beginEv = comdat any

$_ZNSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE3endEv = comdat any

$_ZN6dealii6TensorILi2ELi1EEC2Ev = comdat any

$_ZNSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EEixEm = comdat any

$_ZN6dealii6TensorILi2ELi1EEixEj = comdat any

$_ZN6dealii6TensorILi1ELi1EEaSERKS1_ = comdat any

$_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi3ELi1EEESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RKT0_ = comdat any

$_ZNSt6vectorIN6dealii6TensorILi3ELi1EEESaIS2_EE5beginEv = comdat any

$_ZNSt6vectorIN6dealii6TensorILi3ELi1EEESaIS2_EE3endEv = comdat any

$_ZN6dealii6TensorILi3ELi1EEC2Ev = comdat any

$_ZNSt6vectorIN6dealii6TensorILi3ELi1EEESaIS2_EEixEm = comdat any

$_ZN6dealii6TensorILi3ELi1EEixEj = comdat any

$_ZN6dealii6TensorILi2ELi1EEaSERKS1_ = comdat any

$_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEixEm = comdat any

$_ZNK6dealii5PointILi1EEclEj = comdat any

$_ZNK6dealii14PolynomialsBDMILi1EE1nEv = comdat any

$_ZNK6dealii14PolynomialsBDMILi1EE6degreeEv = comdat any

$_ZNK6dealii15PolynomialSpaceILi1EE6degreeEv = comdat any

$_ZN6dealii14PolynomialsBDMILi2EEC5Ej = comdat any

$_ZN6dealii15PolynomialSpaceILi2EEC2INS_11Polynomials10PolynomialIdEEEERKSt6vectorIT_SaIS7_EE = comdat any

$_ZN6dealii14PolynomialsBDMILi2EE14compute_n_polsEj = comdat any

$_ZNK6dealii15PolynomialSpaceILi2EE1nEv = comdat any

$_ZNSaIN6dealii6TensorILi1ELi2EEEEC2Ev = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEC2EmRKS3_ = comdat any

$_ZNSaIN6dealii6TensorILi2ELi2EEEEC2Ev = comdat any

$_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EEC2EmRKS3_ = comdat any

$_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EED2Ev = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EED2Ev = comdat any

$_ZN6dealii15PolynomialSpaceILi2EED2Ev = comdat any

$_ZNK6dealii14PolynomialsBDMILi2EE7computeERKNS_5PointILi2EEERSt6vectorINS_6TensorILi1ELi2EEESaIS8_EERS6_INS7_ILi2ELi2EEESaISC_EERS6_INS7_ILi3ELi2EEESaISG_EE = comdat any

$_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE4sizeEv = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE6resizeEm = comdat any

$_ZNKSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE4sizeEv = comdat any

$_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE6resizeEm = comdat any

$_ZNKSt6vectorIN6dealii6TensorILi3ELi2EEESaIS2_EE4sizeEv = comdat any

$_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi1ELi2EEESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RKT0_ = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE5beginEv = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE3endEv = comdat any

$_ZN6dealii6TensorILi1ELi2EEC2Eb = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm = comdat any

$_ZN6dealii6TensorILi1ELi2EEixEj = comdat any

$_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi2ELi2EEESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RKT0_ = comdat any

$_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE5beginEv = comdat any

$_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE3endEv = comdat any

$_ZN6dealii6TensorILi2ELi2EEC2Ev = comdat any

$_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EEixEm = comdat any

$_ZN6dealii6TensorILi2ELi2EEixEj = comdat any

$_ZN6dealii6TensorILi1ELi2EEaSERKS1_ = comdat any

$_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi3ELi2EEESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RKT0_ = comdat any

$_ZNSt6vectorIN6dealii6TensorILi3ELi2EEESaIS2_EE5beginEv = comdat any

$_ZNSt6vectorIN6dealii6TensorILi3ELi2EEESaIS2_EE3endEv = comdat any

$_ZN6dealii6TensorILi3ELi2EEC2Ev = comdat any

$_ZNSt6vectorIN6dealii6TensorILi3ELi2EEESaIS2_EEixEm = comdat any

$_ZN6dealii6TensorILi3ELi2EEixEj = comdat any

$_ZN6dealii6TensorILi2ELi2EEaSERKS1_ = comdat any

$_ZNK6dealii5PointILi2EEclEj = comdat any

$_ZNK6dealii14PolynomialsBDMILi2EE1nEv = comdat any

$_ZNK6dealii14PolynomialsBDMILi2EE6degreeEv = comdat any

$_ZNK6dealii15PolynomialSpaceILi2EE6degreeEv = comdat any

$_ZN6dealii14PolynomialsBDMILi3EEC5Ej = comdat any

$_ZN6dealii15PolynomialSpaceILi3EEC2INS_11Polynomials10PolynomialIdEEEERKSt6vectorIT_SaIS7_EE = comdat any

$_ZN6dealii14PolynomialsBDMILi3EE14compute_n_polsEj = comdat any

$_ZNK6dealii15PolynomialSpaceILi3EE1nEv = comdat any

$_ZNSaIN6dealii6TensorILi1ELi3EEEEC2Ev = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEC2EmRKS3_ = comdat any

$_ZNSaIN6dealii6TensorILi2ELi3EEEEC2Ev = comdat any

$_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EEC2EmRKS3_ = comdat any

$_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EED2Ev = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EED2Ev = comdat any

$_ZN6dealii15PolynomialSpaceILi3EED2Ev = comdat any

$_ZNK6dealii14PolynomialsBDMILi3EE7computeERKNS_5PointILi3EEERSt6vectorINS_6TensorILi1ELi3EEESaIS8_EERS6_INS7_ILi2ELi3EEESaISC_EERS6_INS7_ILi3ELi3EEESaISG_EE = comdat any

$_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE4sizeEv = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE6resizeEm = comdat any

$_ZNKSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE4sizeEv = comdat any

$_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE6resizeEm = comdat any

$_ZNKSt6vectorIN6dealii6TensorILi3ELi3EEESaIS2_EE4sizeEv = comdat any

$_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi1ELi3EEESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RKT0_ = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE5beginEv = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE3endEv = comdat any

$_ZN6dealii6TensorILi1ELi3EEC2Eb = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm = comdat any

$_ZN6dealii6TensorILi1ELi3EEixEj = comdat any

$_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi2ELi3EEESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RKT0_ = comdat any

$_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE5beginEv = comdat any

$_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE3endEv = comdat any

$_ZN6dealii6TensorILi2ELi3EEC2Ev = comdat any

$_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EEixEm = comdat any

$_ZN6dealii6TensorILi2ELi3EEixEj = comdat any

$_ZN6dealii6TensorILi1ELi3EEaSERKS1_ = comdat any

$_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi3ELi3EEESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RKT0_ = comdat any

$_ZNSt6vectorIN6dealii6TensorILi3ELi3EEESaIS2_EE5beginEv = comdat any

$_ZNSt6vectorIN6dealii6TensorILi3ELi3EEESaIS2_EE3endEv = comdat any

$_ZN6dealii6TensorILi3ELi3EEC2Ev = comdat any

$_ZNSt6vectorIN6dealii6TensorILi3ELi3EEESaIS2_EEixEm = comdat any

$_ZN6dealii6TensorILi3ELi3EEixEj = comdat any

$_ZN6dealii6TensorILi2ELi3EEaSERKS1_ = comdat any

$_ZNK6dealii5PointILi3EEclEj = comdat any

$_ZNK6dealii14PolynomialsBDMILi3EE1nEv = comdat any

$_ZNK6dealii14PolynomialsBDMILi3EE6degreeEv = comdat any

$_ZNK6dealii15PolynomialSpaceILi3EE6degreeEv = comdat any

$_ZNSt6vectorIdSaIdEEaSEOS1_ = comdat any

$_ZNSt6vectorIdSaIdEE14_M_move_assignEOS1_St17integral_constantIbLb1EE = comdat any

$_ZNKSt12_Vector_baseIdSaIdEE13get_allocatorEv = comdat any

$_ZNSt6vectorIdSaIdEEC2ERKS0_ = comdat any

$_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_data12_M_swap_dataERS2_ = comdat any

$_ZSt15__alloc_on_moveISaIdEEvRT_S2_ = comdat any

$_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv = comdat any

$__clang_call_terminate = comdat any

$_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv = comdat any

$_ZNSaIdEC2ERKS_ = comdat any

$_ZNSt15__new_allocatorIdEC2ERKS0_ = comdat any

$_ZNSt12_Vector_baseIdSaIdEEC2ERKS0_ = comdat any

$_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_ = comdat any

$_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_data12_M_copy_dataERKS2_ = comdat any

$_ZN6dealii11Polynomials10PolynomialIdED2Ev = comdat any

$_ZN6dealii11Polynomials10PolynomialIdED0Ev = comdat any

$_ZNSt6vectorIjSaIjEED2Ev = comdat any

$_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseIjSaIjEED2Ev = comdat any

$_ZSt8_DestroyIPjEvT_S1_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPjEEvT_S3_ = comdat any

$_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm = comdat any

$_ZNSt16allocator_traitsISaIjEE10deallocateERS0_Pjm = comdat any

$_ZNSt15__new_allocatorIjE10deallocateEPjm = comdat any

$_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEEC2Ev = comdat any

$_ZNSt15__new_allocatorIdEC2Ev = comdat any

$_ZSt8_DestroyIPN6dealii11Polynomials10PolynomialIdEES3_EvT_S5_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EED2Ev = comdat any

$_ZSt8_DestroyIPN6dealii11Polynomials10PolynomialIdEEEvT_S5_ = comdat any

$_ZNSt12_Destroy_auxILb0EE9__destroyIPN6dealii11Polynomials10PolynomialIdEEEEvT_S7_ = comdat any

$_ZSt8_DestroyIN6dealii11Polynomials10PolynomialIdEEEvPT_ = comdat any

$_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE13_M_deallocateEPS3_m = comdat any

$_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEED2Ev = comdat any

$_ZNSt16allocator_traitsISaIN6dealii11Polynomials10PolynomialIdEEEE10deallocateERS4_PS3_m = comdat any

$_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEE10deallocateEPS3_m = comdat any

$_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE5beginEv = comdat any

$_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE3endEv = comdat any

$_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2IN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEvEET_SC_RKS4_ = comdat any

$_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE4sizeEv = comdat any

$_ZNSaIjEC2Ev = comdat any

$_ZNSt6vectorIjSaIjEEC2EmRKS0_ = comdat any

$_ZNSt15__new_allocatorIjED2Ev = comdat any

$_ZNSt6vectorIjSaIjEEixEm = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS4_SaIS4_EEEC2ERKS6_ = comdat any

$_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2ERKS4_ = comdat any

$_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE19_M_range_initializeIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEvT_SC_St20forward_iterator_tag = comdat any

$_ZSt19__iterator_categoryIN9__gnu_cxx17__normal_iteratorIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS5_SaIS5_EEEEENSt15iterator_traitsIT_E17iterator_categoryERKSD_ = comdat any

$_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE12_Vector_implC2ERKS4_ = comdat any

$_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEEC2ERKS4_ = comdat any

$_ZSt8distanceIN9__gnu_cxx17__normal_iteratorIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS5_SaIS5_EEEEENSt15iterator_traitsIT_E15difference_typeESD_SD_ = comdat any

$_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE11_M_allocateEm = comdat any

$_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE17_S_check_init_lenEmRKS4_ = comdat any

$_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS5_SaIS5_EEEEPS5_S5_ET0_T_SE_SD_RSaIT1_E = comdat any

$_ZSt10__distanceIN9__gnu_cxx17__normal_iteratorIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS5_SaIS5_EEEEENSt15iterator_traitsIT_E15difference_typeESD_SD_St26random_access_iterator_tag = comdat any

$_ZN9__gnu_cxxmiIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS4_SaIS4_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSD_SG_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS4_SaIS4_EEE4baseEv = comdat any

$_ZNSt16allocator_traitsISaIN6dealii11Polynomials10PolynomialIdEEEE8allocateERS4_m = comdat any

$_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEE8allocateEmPKv = comdat any

$_ZNKSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEE11_M_max_sizeEv = comdat any

$_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE11_S_max_sizeERKS4_ = comdat any

$_ZNSaIN6dealii11Polynomials10PolynomialIdEEEC2ERKS3_ = comdat any

$_ZNSt16allocator_traitsISaIN6dealii11Polynomials10PolynomialIdEEEE8max_sizeERKS4_ = comdat any

$_ZSt3minImERKT_S2_S2_ = comdat any

$_ZNKSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEE8max_sizeEv = comdat any

$_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS5_SaIS5_EEEEPS5_ET0_T_SE_SD_ = comdat any

$_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS7_SaIS7_EEEEPS7_EET0_T_SG_SF_ = comdat any

$_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS5_SaIS5_EEEEPS5_ET0_T_SE_SD_ = comdat any

$_ZN9__gnu_cxxneIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS4_SaIS4_EEEEbRKNS_17__normal_iteratorIT_T0_EESF_ = comdat any

$_ZSt10_ConstructIN6dealii11Polynomials10PolynomialIdEEJRKS3_EEvPT_DpOT0_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS4_SaIS4_EEEdeEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS4_SaIS4_EEEppEv = comdat any

$_ZN6dealii11Polynomials10PolynomialIdEC2ERKS2_ = comdat any

$_ZNSt6vectorIdSaIdEEC2ERKS1_ = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIdEdE17_S_select_on_copyERKS1_ = comdat any

$_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_ = comdat any

$_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPddET0_T_SA_S9_RSaIT1_E = comdat any

$_ZNKSt6vectorIdSaIdEE5beginEv = comdat any

$_ZNKSt6vectorIdSaIdEE3endEv = comdat any

$_ZNSt12_Vector_baseIdSaIdEED2Ev = comdat any

$_ZNSt16allocator_traitsISaIdEE37select_on_container_copy_constructionERKS0_ = comdat any

$_ZNSt12_Vector_baseIdSaIdEE17_M_create_storageEm = comdat any

$_ZNSt15__new_allocatorIdED2Ev = comdat any

$_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm = comdat any

$_ZNSt16allocator_traitsISaIdEE8allocateERS0_m = comdat any

$_ZNSt15__new_allocatorIdE8allocateEmPKv = comdat any

$_ZNKSt15__new_allocatorIdE11_M_max_sizeEv = comdat any

$_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_ = comdat any

$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdEET0_T_SC_SB_ = comdat any

$_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_ = comdat any

$_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_ = comdat any

$_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEET_S8_ = comdat any

$_ZSt12__niter_wrapIPdET_RKS1_S1_ = comdat any

$_ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_ = comdat any

$_ZSt12__niter_baseIPKdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE = comdat any

$_ZSt12__niter_baseIPdET_S1_ = comdat any

$_ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEE4baseEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC2ERKS2_ = comdat any

$_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm = comdat any

$_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm = comdat any

$_ZNSt15__new_allocatorIdE10deallocateEPdm = comdat any

$_ZNSt15__new_allocatorIjEC2Ev = comdat any

$_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_ = comdat any

$_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_ = comdat any

$_ZNSt6vectorIjSaIjEE21_M_default_initializeEm = comdat any

$_ZNSt6vectorIjSaIjEE11_S_max_sizeERKS0_ = comdat any

$_ZNSaIjEC2ERKS_ = comdat any

$_ZNSt16allocator_traitsISaIjEE8max_sizeERKS0_ = comdat any

$_ZNKSt15__new_allocatorIjE8max_sizeEv = comdat any

$_ZNKSt15__new_allocatorIjE11_M_max_sizeEv = comdat any

$_ZNSt15__new_allocatorIjEC2ERKS0_ = comdat any

$_ZNSt12_Vector_baseIjSaIjEE12_Vector_implC2ERKS0_ = comdat any

$_ZNSt12_Vector_baseIjSaIjEE17_M_create_storageEm = comdat any

$_ZNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm = comdat any

$_ZNSt16allocator_traitsISaIjEE8allocateERS0_m = comdat any

$_ZNSt15__new_allocatorIjE8allocateEmPKv = comdat any

$_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E = comdat any

$_ZSt25__uninitialized_default_nIPjmET_S1_T0_ = comdat any

$_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPjmEET_S3_T0_ = comdat any

$_ZSt10_ConstructIjJEEvPT_DpOT0_ = comdat any

$_ZSt6fill_nIPjmjET_S1_T0_RKT1_ = comdat any

$_ZSt10__fill_n_aIPjmjET_S1_T0_RKT1_St26random_access_iterator_tag = comdat any

$_ZSt17__size_to_integerm = comdat any

$_ZSt19__iterator_categoryIPjENSt15iterator_traitsIT_E17iterator_categoryERKS2_ = comdat any

$_ZSt8__fill_aIPjjEvT_S1_RKT0_ = comdat any

$_ZSt9__fill_a1IPjjEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_ = comdat any

$_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2EmRKS4_ = comdat any

$_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE21_M_default_initializeEm = comdat any

$_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE17_M_create_storageEm = comdat any

$_ZSt27__uninitialized_default_n_aIPN6dealii11Polynomials10PolynomialIdEEmS3_ET_S5_T0_RSaIT1_E = comdat any

$_ZSt25__uninitialized_default_nIPN6dealii11Polynomials10PolynomialIdEEmET_S5_T0_ = comdat any

$_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6dealii11Polynomials10PolynomialIdEEmEET_S7_T0_ = comdat any

$_ZSt10_ConstructIN6dealii11Polynomials10PolynomialIdEEJEEvPT_DpOT0_ = comdat any

$_ZN6dealii11Polynomials10PolynomialIdEC2Ev = comdat any

$_ZNSt6vectorIdSaIdEEC2Ev = comdat any

$_ZNSt12_Vector_baseIdSaIdEEC2Ev = comdat any

$_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev = comdat any

$_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_ = comdat any

$_ZNSt6vectorIdSaIdEE21_M_default_initializeEm = comdat any

$_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_ = comdat any

$_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_ = comdat any

$_ZNKSt15__new_allocatorIdE8max_sizeEv = comdat any

$_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E = comdat any

$_ZSt25__uninitialized_default_nIPdmET_S1_T0_ = comdat any

$_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_ = comdat any

$_ZSt10_ConstructIdJEEvPT_DpOT0_ = comdat any

$_ZSt6fill_nIPdmdET_S1_T0_RKT1_ = comdat any

$_ZSt10__fill_n_aIPdmdET_S1_T0_RKT1_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPdENSt15iterator_traitsIT_E17iterator_categoryERKS2_ = comdat any

$_ZSt8__fill_aIPddEvT_S1_RKT0_ = comdat any

$_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_ = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi1EEEEC2Ev = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE17_S_check_init_lenEmRKS3_ = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EEC2EmRKS3_ = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE21_M_default_initializeEm = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EED2Ev = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE11_S_max_sizeERKS3_ = comdat any

$_ZNSaIN6dealii6TensorILi1ELi1EEEEC2ERKS2_ = comdat any

$_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi1EEEEE8max_sizeERKS3_ = comdat any

$_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi1EEEE8max_sizeEv = comdat any

$_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi1EEEE11_M_max_sizeEv = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi1EEEEC2ERKS3_ = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE12_Vector_implC2ERKS3_ = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE17_M_create_storageEm = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi1EEEED2Ev = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE11_M_allocateEm = comdat any

$_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi1EEEEE8allocateERS3_m = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi1EEEE8allocateEmPKv = comdat any

$_ZSt27__uninitialized_default_n_aIPN6dealii6TensorILi1ELi1EEEmS2_ET_S4_T0_RSaIT1_E = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE19_M_get_Tp_allocatorEv = comdat any

$_ZSt25__uninitialized_default_nIPN6dealii6TensorILi1ELi1EEEmET_S4_T0_ = comdat any

$_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6dealii6TensorILi1ELi1EEEmEET_S6_T0_ = comdat any

$_ZSt10_ConstructIN6dealii6TensorILi1ELi1EEEJEEvPT_DpOT0_ = comdat any

$_ZSt8_DestroyIPN6dealii6TensorILi1ELi1EEEEvT_S4_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii6TensorILi1ELi1EEEEEvT_S6_ = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE13_M_deallocateEPS2_m = comdat any

$_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi1EEEEE10deallocateERS3_PS2_m = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi1EEEE10deallocateEPS2_m = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi1EEEEC2Ev = comdat any

$_ZNSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE17_S_check_init_lenEmRKS3_ = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EEC2EmRKS3_ = comdat any

$_ZNSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE21_M_default_initializeEm = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EED2Ev = comdat any

$_ZNSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE11_S_max_sizeERKS3_ = comdat any

$_ZNSaIN6dealii6TensorILi2ELi1EEEEC2ERKS2_ = comdat any

$_ZNSt16allocator_traitsISaIN6dealii6TensorILi2ELi1EEEEE8max_sizeERKS3_ = comdat any

$_ZNKSt15__new_allocatorIN6dealii6TensorILi2ELi1EEEE8max_sizeEv = comdat any

$_ZNKSt15__new_allocatorIN6dealii6TensorILi2ELi1EEEE11_M_max_sizeEv = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi1EEEEC2ERKS3_ = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EE12_Vector_implC2ERKS3_ = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EE17_M_create_storageEm = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi1EEEED2Ev = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EE11_M_allocateEm = comdat any

$_ZNSt16allocator_traitsISaIN6dealii6TensorILi2ELi1EEEEE8allocateERS3_m = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi1EEEE8allocateEmPKv = comdat any

$_ZSt27__uninitialized_default_n_aIPN6dealii6TensorILi2ELi1EEEmS2_ET_S4_T0_RSaIT1_E = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EE19_M_get_Tp_allocatorEv = comdat any

$_ZSt25__uninitialized_default_nIPN6dealii6TensorILi2ELi1EEEmET_S4_T0_ = comdat any

$_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6dealii6TensorILi2ELi1EEEmEET_S6_T0_ = comdat any

$_ZSt10_ConstructIN6dealii6TensorILi2ELi1EEEJEEvPT_DpOT0_ = comdat any

$_ZSt8_DestroyIPN6dealii6TensorILi2ELi1EEEEvT_S4_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii6TensorILi2ELi1EEEEEvT_S6_ = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EE13_M_deallocateEPS2_m = comdat any

$_ZNSt16allocator_traitsISaIN6dealii6TensorILi2ELi1EEEEE10deallocateERS3_PS2_m = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi1EEEE10deallocateEPS2_m = comdat any

$_ZSt8_DestroyIPddEvT_S1_RSaIT0_E = comdat any

$_ZSt8_DestroyIPdEvT_S1_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_ = comdat any

$_ZSt8_DestroyIPN6dealii6TensorILi1ELi1EEES2_EvT_S4_RSaIT0_E = comdat any

$_ZSt8_DestroyIPN6dealii6TensorILi2ELi1EEES2_EvT_S4_RSaIT0_E = comdat any

$_ZNSt6vectorIdSaIdEE17_M_default_appendEm = comdat any

$_ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd = comdat any

$_ZNKSt6vectorIdSaIdEE8max_sizeEv = comdat any

$_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc = comdat any

$_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_ = comdat any

$_ZSt3maxImERKT_S2_S2_ = comdat any

$_ZSt12__relocate_aIPdS0_SaIdEET0_T_S3_S2_RT1_ = comdat any

$_ZSt14__relocate_a_1IddENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE17_M_default_appendEm = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE15_M_erase_at_endEPS2_ = comdat any

$_ZNKSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE8max_sizeEv = comdat any

$_ZNKSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE12_M_check_lenEmPKc = comdat any

$_ZSt34__uninitialized_move_if_noexcept_aIPN6dealii6TensorILi1ELi1EEES3_SaIS2_EET0_T_S6_S5_RT1_ = comdat any

$_ZNKSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE19_M_get_Tp_allocatorEv = comdat any

$_ZSt22__uninitialized_copy_aIPKN6dealii6TensorILi1ELi1EEEPS2_S2_ET0_T_S7_S6_RSaIT1_E = comdat any

$_ZSt32__make_move_if_noexcept_iteratorIN6dealii6TensorILi1ELi1EEEPKS2_ET0_PT_ = comdat any

$_ZSt18uninitialized_copyIPKN6dealii6TensorILi1ELi1EEEPS2_ET0_T_S7_S6_ = comdat any

$_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPKN6dealii6TensorILi1ELi1EEEPS4_EET0_T_S9_S8_ = comdat any

$_ZSt16__do_uninit_copyIPKN6dealii6TensorILi1ELi1EEEPS2_ET0_T_S7_S6_ = comdat any

$_ZSt10_ConstructIN6dealii6TensorILi1ELi1EEEJRKS2_EEvPT_DpOT0_ = comdat any

$_ZN6dealii6TensorILi1ELi1EEC2ERKS1_ = comdat any

$_ZNSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE17_M_default_appendEm = comdat any

$_ZNSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE15_M_erase_at_endEPS2_ = comdat any

$_ZNKSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE8max_sizeEv = comdat any

$_ZNKSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE12_M_check_lenEmPKc = comdat any

$_ZSt34__uninitialized_move_if_noexcept_aIPN6dealii6TensorILi2ELi1EEES3_SaIS2_EET0_T_S6_S5_RT1_ = comdat any

$_ZNKSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EE19_M_get_Tp_allocatorEv = comdat any

$_ZSt22__uninitialized_copy_aIPKN6dealii6TensorILi2ELi1EEEPS2_S2_ET0_T_S7_S6_RSaIT1_E = comdat any

$_ZSt32__make_move_if_noexcept_iteratorIN6dealii6TensorILi2ELi1EEEPKS2_ET0_PT_ = comdat any

$_ZSt18uninitialized_copyIPKN6dealii6TensorILi2ELi1EEEPS2_ET0_T_S7_S6_ = comdat any

$_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPKN6dealii6TensorILi2ELi1EEEPS4_EET0_T_S9_S8_ = comdat any

$_ZSt16__do_uninit_copyIPKN6dealii6TensorILi2ELi1EEEPS2_ET0_T_S7_S6_ = comdat any

$_ZSt10_ConstructIN6dealii6TensorILi2ELi1EEEJRKS2_EEvPT_DpOT0_ = comdat any

$_ZN6dealii6TensorILi2ELi1EEC2ERKS1_ = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi1ELi1EEESt6vectorIS3_SaIS3_EEEC2ERKS4_ = comdat any

$_ZSt8__fill_aIN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi1ELi1EEESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RKT0_ = comdat any

$_ZSt9__fill_a1IPN6dealii6TensorILi1ELi1EEESt6vectorIS2_SaIS2_EES2_EvN9__gnu_cxx17__normal_iteratorIT_T0_EESB_RKT1_ = comdat any

$_ZSt9__fill_a1IPN6dealii6TensorILi1ELi1EEES2_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT0_EE7__valueEvE6__typeET_S9_RKS6_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi1ELi1EEESt6vectorIS3_SaIS3_EEE4baseEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi2ELi1EEESt6vectorIS3_SaIS3_EEEC2ERKS4_ = comdat any

$_ZSt8__fill_aIN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi2ELi1EEESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RKT0_ = comdat any

$_ZSt9__fill_a1IPN6dealii6TensorILi2ELi1EEESt6vectorIS2_SaIS2_EES2_EvN9__gnu_cxx17__normal_iteratorIT_T0_EESB_RKT1_ = comdat any

$_ZSt9__fill_a1IPN6dealii6TensorILi2ELi1EEES2_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT0_EE7__valueEvE6__typeET_S9_RKS6_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi2ELi1EEESt6vectorIS3_SaIS3_EEE4baseEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi3ELi1EEESt6vectorIS3_SaIS3_EEEC2ERKS4_ = comdat any

$_ZSt8__fill_aIN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi3ELi1EEESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RKT0_ = comdat any

$_ZSt9__fill_a1IPN6dealii6TensorILi3ELi1EEESt6vectorIS2_SaIS2_EES2_EvN9__gnu_cxx17__normal_iteratorIT_T0_EESB_RKT1_ = comdat any

$_ZSt9__fill_a1IPN6dealii6TensorILi3ELi1EEES2_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT0_EE7__valueEvE6__typeET_S9_RKS6_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi3ELi1EEESt6vectorIS3_SaIS3_EEE4baseEv = comdat any

$_ZN6dealii6TensorILi3ELi1EEaSERKS1_ = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEEC2Ev = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE17_S_check_init_lenEmRKS3_ = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EEC2EmRKS3_ = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE21_M_default_initializeEm = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EED2Ev = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE11_S_max_sizeERKS3_ = comdat any

$_ZNSaIN6dealii6TensorILi1ELi2EEEEC2ERKS2_ = comdat any

$_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi2EEEEE8max_sizeERKS3_ = comdat any

$_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEE8max_sizeEv = comdat any

$_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEE11_M_max_sizeEv = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEEC2ERKS3_ = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE12_Vector_implC2ERKS3_ = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE17_M_create_storageEm = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEED2Ev = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE11_M_allocateEm = comdat any

$_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi2EEEEE8allocateERS3_m = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEE8allocateEmPKv = comdat any

$_ZSt27__uninitialized_default_n_aIPN6dealii6TensorILi1ELi2EEEmS2_ET_S4_T0_RSaIT1_E = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE19_M_get_Tp_allocatorEv = comdat any

$_ZSt25__uninitialized_default_nIPN6dealii6TensorILi1ELi2EEEmET_S4_T0_ = comdat any

$_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6dealii6TensorILi1ELi2EEEmEET_S6_T0_ = comdat any

$_ZSt10_ConstructIN6dealii6TensorILi1ELi2EEEJEEvPT_DpOT0_ = comdat any

$_ZSt8_DestroyIPN6dealii6TensorILi1ELi2EEEEvT_S4_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii6TensorILi1ELi2EEEEEvT_S6_ = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE13_M_deallocateEPS2_m = comdat any

$_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi2EEEEE10deallocateERS3_PS2_m = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEE10deallocateEPS2_m = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi2EEEEC2Ev = comdat any

$_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE17_S_check_init_lenEmRKS3_ = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EEC2EmRKS3_ = comdat any

$_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE21_M_default_initializeEm = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EED2Ev = comdat any

$_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE11_S_max_sizeERKS3_ = comdat any

$_ZNSaIN6dealii6TensorILi2ELi2EEEEC2ERKS2_ = comdat any

$_ZNSt16allocator_traitsISaIN6dealii6TensorILi2ELi2EEEEE8max_sizeERKS3_ = comdat any

$_ZNKSt15__new_allocatorIN6dealii6TensorILi2ELi2EEEE8max_sizeEv = comdat any

$_ZNKSt15__new_allocatorIN6dealii6TensorILi2ELi2EEEE11_M_max_sizeEv = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi2EEEEC2ERKS3_ = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EE12_Vector_implC2ERKS3_ = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EE17_M_create_storageEm = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi2EEEED2Ev = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EE11_M_allocateEm = comdat any

$_ZNSt16allocator_traitsISaIN6dealii6TensorILi2ELi2EEEEE8allocateERS3_m = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi2EEEE8allocateEmPKv = comdat any

$_ZSt27__uninitialized_default_n_aIPN6dealii6TensorILi2ELi2EEEmS2_ET_S4_T0_RSaIT1_E = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EE19_M_get_Tp_allocatorEv = comdat any

$_ZSt25__uninitialized_default_nIPN6dealii6TensorILi2ELi2EEEmET_S4_T0_ = comdat any

$_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6dealii6TensorILi2ELi2EEEmEET_S6_T0_ = comdat any

$_ZSt10_ConstructIN6dealii6TensorILi2ELi2EEEJEEvPT_DpOT0_ = comdat any

$_ZSt8_DestroyIPN6dealii6TensorILi2ELi2EEEEvT_S4_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii6TensorILi2ELi2EEEEEvT_S6_ = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EE13_M_deallocateEPS2_m = comdat any

$_ZNSt16allocator_traitsISaIN6dealii6TensorILi2ELi2EEEEE10deallocateERS3_PS2_m = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi2EEEE10deallocateEPS2_m = comdat any

$_ZSt8_DestroyIPN6dealii6TensorILi1ELi2EEES2_EvT_S4_RSaIT0_E = comdat any

$_ZSt8_DestroyIPN6dealii6TensorILi2ELi2EEES2_EvT_S4_RSaIT0_E = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE17_M_default_appendEm = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE15_M_erase_at_endEPS2_ = comdat any

$_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE8max_sizeEv = comdat any

$_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE12_M_check_lenEmPKc = comdat any

$_ZSt34__uninitialized_move_if_noexcept_aIPN6dealii6TensorILi1ELi2EEES3_SaIS2_EET0_T_S6_S5_RT1_ = comdat any

$_ZNKSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE19_M_get_Tp_allocatorEv = comdat any

$_ZSt22__uninitialized_copy_aIPKN6dealii6TensorILi1ELi2EEEPS2_S2_ET0_T_S7_S6_RSaIT1_E = comdat any

$_ZSt32__make_move_if_noexcept_iteratorIN6dealii6TensorILi1ELi2EEEPKS2_ET0_PT_ = comdat any

$_ZSt18uninitialized_copyIPKN6dealii6TensorILi1ELi2EEEPS2_ET0_T_S7_S6_ = comdat any

$_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPKN6dealii6TensorILi1ELi2EEEPS4_EET0_T_S9_S8_ = comdat any

$_ZSt16__do_uninit_copyIPKN6dealii6TensorILi1ELi2EEEPS2_ET0_T_S7_S6_ = comdat any

$_ZSt10_ConstructIN6dealii6TensorILi1ELi2EEEJRKS2_EEvPT_DpOT0_ = comdat any

$_ZN6dealii6TensorILi1ELi2EEC2ERKS1_ = comdat any

$_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE17_M_default_appendEm = comdat any

$_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE15_M_erase_at_endEPS2_ = comdat any

$_ZNKSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE8max_sizeEv = comdat any

$_ZNKSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE12_M_check_lenEmPKc = comdat any

$_ZSt34__uninitialized_move_if_noexcept_aIPN6dealii6TensorILi2ELi2EEES3_SaIS2_EET0_T_S6_S5_RT1_ = comdat any

$_ZNKSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EE19_M_get_Tp_allocatorEv = comdat any

$_ZSt22__uninitialized_copy_aIPKN6dealii6TensorILi2ELi2EEEPS2_S2_ET0_T_S7_S6_RSaIT1_E = comdat any

$_ZSt32__make_move_if_noexcept_iteratorIN6dealii6TensorILi2ELi2EEEPKS2_ET0_PT_ = comdat any

$_ZSt18uninitialized_copyIPKN6dealii6TensorILi2ELi2EEEPS2_ET0_T_S7_S6_ = comdat any

$_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPKN6dealii6TensorILi2ELi2EEEPS4_EET0_T_S9_S8_ = comdat any

$_ZSt16__do_uninit_copyIPKN6dealii6TensorILi2ELi2EEEPS2_ET0_T_S7_S6_ = comdat any

$_ZSt10_ConstructIN6dealii6TensorILi2ELi2EEEJRKS2_EEvPT_DpOT0_ = comdat any

$_ZN6dealii6TensorILi2ELi2EEC2ERKS1_ = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi1ELi2EEESt6vectorIS3_SaIS3_EEEC2ERKS4_ = comdat any

$_ZSt8__fill_aIN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi1ELi2EEESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RKT0_ = comdat any

$_ZSt9__fill_a1IPN6dealii6TensorILi1ELi2EEESt6vectorIS2_SaIS2_EES2_EvN9__gnu_cxx17__normal_iteratorIT_T0_EESB_RKT1_ = comdat any

$_ZSt9__fill_a1IPN6dealii6TensorILi1ELi2EEES2_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT0_EE7__valueEvE6__typeET_S9_RKS6_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi1ELi2EEESt6vectorIS3_SaIS3_EEE4baseEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi2ELi2EEESt6vectorIS3_SaIS3_EEEC2ERKS4_ = comdat any

$_ZSt8__fill_aIN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi2ELi2EEESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RKT0_ = comdat any

$_ZSt9__fill_a1IPN6dealii6TensorILi2ELi2EEESt6vectorIS2_SaIS2_EES2_EvN9__gnu_cxx17__normal_iteratorIT_T0_EESB_RKT1_ = comdat any

$_ZSt9__fill_a1IPN6dealii6TensorILi2ELi2EEES2_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT0_EE7__valueEvE6__typeET_S9_RKS6_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi2ELi2EEESt6vectorIS3_SaIS3_EEE4baseEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi3ELi2EEESt6vectorIS3_SaIS3_EEEC2ERKS4_ = comdat any

$_ZSt8__fill_aIN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi3ELi2EEESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RKT0_ = comdat any

$_ZSt9__fill_a1IPN6dealii6TensorILi3ELi2EEESt6vectorIS2_SaIS2_EES2_EvN9__gnu_cxx17__normal_iteratorIT_T0_EESB_RKT1_ = comdat any

$_ZSt9__fill_a1IPN6dealii6TensorILi3ELi2EEES2_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT0_EE7__valueEvE6__typeET_S9_RKS6_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi3ELi2EEESt6vectorIS3_SaIS3_EEE4baseEv = comdat any

$_ZN6dealii6TensorILi3ELi2EEaSERKS1_ = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEEC2Ev = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE17_S_check_init_lenEmRKS3_ = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EEC2EmRKS3_ = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE21_M_default_initializeEm = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EED2Ev = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE11_S_max_sizeERKS3_ = comdat any

$_ZNSaIN6dealii6TensorILi1ELi3EEEEC2ERKS2_ = comdat any

$_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi3EEEEE8max_sizeERKS3_ = comdat any

$_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEE8max_sizeEv = comdat any

$_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEE11_M_max_sizeEv = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEEC2ERKS3_ = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE12_Vector_implC2ERKS3_ = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE17_M_create_storageEm = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEED2Ev = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE11_M_allocateEm = comdat any

$_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi3EEEEE8allocateERS3_m = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEE8allocateEmPKv = comdat any

$_ZSt27__uninitialized_default_n_aIPN6dealii6TensorILi1ELi3EEEmS2_ET_S4_T0_RSaIT1_E = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE19_M_get_Tp_allocatorEv = comdat any

$_ZSt25__uninitialized_default_nIPN6dealii6TensorILi1ELi3EEEmET_S4_T0_ = comdat any

$_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6dealii6TensorILi1ELi3EEEmEET_S6_T0_ = comdat any

$_ZSt10_ConstructIN6dealii6TensorILi1ELi3EEEJEEvPT_DpOT0_ = comdat any

$_ZSt8_DestroyIPN6dealii6TensorILi1ELi3EEEEvT_S4_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii6TensorILi1ELi3EEEEEvT_S6_ = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE13_M_deallocateEPS2_m = comdat any

$_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi3EEEEE10deallocateERS3_PS2_m = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEE10deallocateEPS2_m = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi3EEEEC2Ev = comdat any

$_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE17_S_check_init_lenEmRKS3_ = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EEC2EmRKS3_ = comdat any

$_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE21_M_default_initializeEm = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EED2Ev = comdat any

$_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE11_S_max_sizeERKS3_ = comdat any

$_ZNSaIN6dealii6TensorILi2ELi3EEEEC2ERKS2_ = comdat any

$_ZNSt16allocator_traitsISaIN6dealii6TensorILi2ELi3EEEEE8max_sizeERKS3_ = comdat any

$_ZNKSt15__new_allocatorIN6dealii6TensorILi2ELi3EEEE8max_sizeEv = comdat any

$_ZNKSt15__new_allocatorIN6dealii6TensorILi2ELi3EEEE11_M_max_sizeEv = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi3EEEEC2ERKS3_ = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE12_Vector_implC2ERKS3_ = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE17_M_create_storageEm = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi3EEEED2Ev = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE11_M_allocateEm = comdat any

$_ZNSt16allocator_traitsISaIN6dealii6TensorILi2ELi3EEEEE8allocateERS3_m = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi3EEEE8allocateEmPKv = comdat any

$_ZSt27__uninitialized_default_n_aIPN6dealii6TensorILi2ELi3EEEmS2_ET_S4_T0_RSaIT1_E = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE19_M_get_Tp_allocatorEv = comdat any

$_ZSt25__uninitialized_default_nIPN6dealii6TensorILi2ELi3EEEmET_S4_T0_ = comdat any

$_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6dealii6TensorILi2ELi3EEEmEET_S6_T0_ = comdat any

$_ZSt10_ConstructIN6dealii6TensorILi2ELi3EEEJEEvPT_DpOT0_ = comdat any

$_ZSt8_DestroyIPN6dealii6TensorILi2ELi3EEEEvT_S4_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii6TensorILi2ELi3EEEEEvT_S6_ = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE13_M_deallocateEPS2_m = comdat any

$_ZNSt16allocator_traitsISaIN6dealii6TensorILi2ELi3EEEEE10deallocateERS3_PS2_m = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi3EEEE10deallocateEPS2_m = comdat any

$_ZSt8_DestroyIPN6dealii6TensorILi1ELi3EEES2_EvT_S4_RSaIT0_E = comdat any

$_ZSt8_DestroyIPN6dealii6TensorILi2ELi3EEES2_EvT_S4_RSaIT0_E = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE17_M_default_appendEm = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE15_M_erase_at_endEPS2_ = comdat any

$_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE8max_sizeEv = comdat any

$_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE12_M_check_lenEmPKc = comdat any

$_ZSt34__uninitialized_move_if_noexcept_aIPN6dealii6TensorILi1ELi3EEES3_SaIS2_EET0_T_S6_S5_RT1_ = comdat any

$_ZNKSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE19_M_get_Tp_allocatorEv = comdat any

$_ZSt22__uninitialized_copy_aIPKN6dealii6TensorILi1ELi3EEEPS2_S2_ET0_T_S7_S6_RSaIT1_E = comdat any

$_ZSt32__make_move_if_noexcept_iteratorIN6dealii6TensorILi1ELi3EEEPKS2_ET0_PT_ = comdat any

$_ZSt18uninitialized_copyIPKN6dealii6TensorILi1ELi3EEEPS2_ET0_T_S7_S6_ = comdat any

$_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPKN6dealii6TensorILi1ELi3EEEPS4_EET0_T_S9_S8_ = comdat any

$_ZSt16__do_uninit_copyIPKN6dealii6TensorILi1ELi3EEEPS2_ET0_T_S7_S6_ = comdat any

$_ZSt10_ConstructIN6dealii6TensorILi1ELi3EEEJRKS2_EEvPT_DpOT0_ = comdat any

$_ZN6dealii6TensorILi1ELi3EEC2ERKS1_ = comdat any

$_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE17_M_default_appendEm = comdat any

$_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE15_M_erase_at_endEPS2_ = comdat any

$_ZNKSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE8max_sizeEv = comdat any

$_ZNKSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE12_M_check_lenEmPKc = comdat any

$_ZSt34__uninitialized_move_if_noexcept_aIPN6dealii6TensorILi2ELi3EEES3_SaIS2_EET0_T_S6_S5_RT1_ = comdat any

$_ZNKSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE19_M_get_Tp_allocatorEv = comdat any

$_ZSt22__uninitialized_copy_aIPKN6dealii6TensorILi2ELi3EEEPS2_S2_ET0_T_S7_S6_RSaIT1_E = comdat any

$_ZSt32__make_move_if_noexcept_iteratorIN6dealii6TensorILi2ELi3EEEPKS2_ET0_PT_ = comdat any

$_ZSt18uninitialized_copyIPKN6dealii6TensorILi2ELi3EEEPS2_ET0_T_S7_S6_ = comdat any

$_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPKN6dealii6TensorILi2ELi3EEEPS4_EET0_T_S9_S8_ = comdat any

$_ZSt16__do_uninit_copyIPKN6dealii6TensorILi2ELi3EEEPS2_ET0_T_S7_S6_ = comdat any

$_ZSt10_ConstructIN6dealii6TensorILi2ELi3EEEJRKS2_EEvPT_DpOT0_ = comdat any

$_ZN6dealii6TensorILi2ELi3EEC2ERKS1_ = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi1ELi3EEESt6vectorIS3_SaIS3_EEEC2ERKS4_ = comdat any

$_ZSt8__fill_aIN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi1ELi3EEESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RKT0_ = comdat any

$_ZSt9__fill_a1IPN6dealii6TensorILi1ELi3EEESt6vectorIS2_SaIS2_EES2_EvN9__gnu_cxx17__normal_iteratorIT_T0_EESB_RKT1_ = comdat any

$_ZSt9__fill_a1IPN6dealii6TensorILi1ELi3EEES2_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT0_EE7__valueEvE6__typeET_S9_RKS6_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi1ELi3EEESt6vectorIS3_SaIS3_EEE4baseEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi2ELi3EEESt6vectorIS3_SaIS3_EEEC2ERKS4_ = comdat any

$_ZSt8__fill_aIN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi2ELi3EEESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RKT0_ = comdat any

$_ZSt9__fill_a1IPN6dealii6TensorILi2ELi3EEESt6vectorIS2_SaIS2_EES2_EvN9__gnu_cxx17__normal_iteratorIT_T0_EESB_RKT1_ = comdat any

$_ZSt9__fill_a1IPN6dealii6TensorILi2ELi3EEES2_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT0_EE7__valueEvE6__typeET_S9_RKS6_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi2ELi3EEESt6vectorIS3_SaIS3_EEE4baseEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi3ELi3EEESt6vectorIS3_SaIS3_EEEC2ERKS4_ = comdat any

$_ZSt8__fill_aIN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi3ELi3EEESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RKT0_ = comdat any

$_ZSt9__fill_a1IPN6dealii6TensorILi3ELi3EEESt6vectorIS2_SaIS2_EES2_EvN9__gnu_cxx17__normal_iteratorIT_T0_EESB_RKT1_ = comdat any

$_ZSt9__fill_a1IPN6dealii6TensorILi3ELi3EEES2_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT0_EE7__valueEvE6__typeET_S9_RKS6_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi3ELi3EEESt6vectorIS3_SaIS3_EEE4baseEv = comdat any

$_ZN6dealii6TensorILi3ELi3EEaSERKS1_ = comdat any

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

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit) #14
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #15
  ret void
}

; Function Attrs: optsize
declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii14PolynomialsBDMILi1EEC2Ej(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %1) unnamed_addr #4 comdat($_ZN6dealii14PolynomialsBDMILi1EEC5Ej) align 2 personality ptr @__gxx_personality_v0 !prof !261 {
  %3 = alloca %"class.std::vector", align 8
  %4 = alloca %"class.std::allocator", align 1
  %5 = alloca %"class.std::allocator.7", align 1
  %6 = alloca %"class.std::allocator.12", align 1
  %7 = alloca %"class.std::allocator.17", align 1
  %8 = alloca %"class.dealii::Polynomials::Monomial", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @_ZN6dealii11Polynomials8Legendre23generate_complete_basisEj(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %3, i32 noundef %1) #14
  invoke void @_ZN6dealii15PolynomialSpaceILi1EEC2INS_11Polynomials10PolynomialIdEEEERKSt6vectorIT_SaIS7_EE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %3) #14
          to label %9 unwind label %31

9:                                                ; preds = %2
  call void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  %10 = getelementptr inbounds %"class.dealii::PolynomialsBDM", ptr %0, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #15
  call void @_ZNSaIN6dealii11Polynomials10PolynomialIdEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #16
  invoke void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2EmRKS4_(ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %4) #14
          to label %11 unwind label %33

11:                                               ; preds = %9
  call void @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  %12 = getelementptr inbounds %"class.dealii::PolynomialsBDM", ptr %0, i64 0, i32 2
  %13 = call noundef i32 @_ZN6dealii14PolynomialsBDMILi1EE14compute_n_polsEj(i32 noundef %1) #14
  store i32 %13, ptr %12, align 8, !tbaa !262
  %14 = getelementptr inbounds %"class.dealii::PolynomialsBDM", ptr %0, i64 0, i32 3
  %15 = call noundef i32 @_ZNK6dealii15PolynomialSpaceILi1EE1nEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #14
  %16 = zext i32 %15 to i64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #15
  call void @_ZNSaIdEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #16
  invoke void @_ZNSt6vectorIdSaIdEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %14, i64 noundef %16, ptr noundef nonnull align 1 dereferenceable(1) %5) #14
          to label %17 unwind label %35

17:                                               ; preds = %11
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #15
  %18 = getelementptr inbounds %"class.dealii::PolynomialsBDM", ptr %0, i64 0, i32 4
  %19 = call noundef i32 @_ZNK6dealii15PolynomialSpaceILi1EE1nEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #14
  %20 = zext i32 %19 to i64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #15
  call void @_ZNSaIN6dealii6TensorILi1ELi1EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #16
  invoke void @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %18, i64 noundef %20, ptr noundef nonnull align 1 dereferenceable(1) %6) #14
          to label %21 unwind label %37

21:                                               ; preds = %17
  call void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi1EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #15
  %22 = getelementptr inbounds %"class.dealii::PolynomialsBDM", ptr %0, i64 0, i32 5
  %23 = call noundef i32 @_ZNK6dealii15PolynomialSpaceILi1EE1nEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #14
  %24 = zext i32 %23 to i64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #15
  call void @_ZNSaIN6dealii6TensorILi2ELi1EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #16
  invoke void @_ZNSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %22, i64 noundef %24, ptr noundef nonnull align 1 dereferenceable(1) %7) #14
          to label %25 unwind label %39

25:                                               ; preds = %21
  call void @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi1EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %8) #15
  %26 = add i32 %1, 1
  invoke void @_ZN6dealii11Polynomials8MonomialIdEC1Ejd(ptr noundef nonnull align 8 dereferenceable(96) %8, i32 noundef %26, double noundef 1.000000e+00) #14
          to label %27 unwind label %41

27:                                               ; preds = %25
  %28 = call noundef nonnull align 8 dereferenceable(96) ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef 0) #16
  %29 = invoke noundef nonnull align 8 dereferenceable(96) ptr @_ZN6dealii11Polynomials10PolynomialIdEaSEOS2_(ptr noundef nonnull align 8 dereferenceable(96) %28, ptr noundef nonnull align 8 dereferenceable(96) %8) #14
          to label %30 unwind label %43

30:                                               ; preds = %27
  call void @_ZN6dealii11Polynomials10PolynomialIdED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %8) #16
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %8) #15
  ret void

31:                                               ; preds = %2
  %32 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %55

33:                                               ; preds = %9
  %34 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  br label %53

35:                                               ; preds = %11
  %36 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #15
  br label %51

37:                                               ; preds = %17
  %38 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi1EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #15
  br label %49

39:                                               ; preds = %21
  %40 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi1EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #15
  br label %47

41:                                               ; preds = %25
  %42 = landingpad { ptr, i32 }
          cleanup
  br label %45

43:                                               ; preds = %27
  %44 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6dealii11Polynomials10PolynomialIdED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %8) #16
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi { ptr, i32 } [ %44, %43 ], [ %42, %41 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %8) #15
  call void @_ZNSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %22) #16
  br label %47

47:                                               ; preds = %45, %39
  %48 = phi { ptr, i32 } [ %46, %45 ], [ %40, %39 ]
  call void @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %18) #16
  br label %49

49:                                               ; preds = %47, %37
  %50 = phi { ptr, i32 } [ %48, %47 ], [ %38, %37 ]
  call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %14) #16
  br label %51

51:                                               ; preds = %49, %35
  %52 = phi { ptr, i32 } [ %50, %49 ], [ %36, %35 ]
  call void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %10) #16
  br label %53

53:                                               ; preds = %51, %33
  %54 = phi { ptr, i32 } [ %52, %51 ], [ %34, %33 ]
  call void @_ZN6dealii15PolynomialSpaceILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #16
  br label %55

55:                                               ; preds = %53, %31
  %56 = phi { ptr, i32 } [ %54, %53 ], [ %32, %31 ]
  resume { ptr, i32 } %56
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: optsize
declare void @_ZN6dealii11Polynomials8Legendre23generate_complete_basisEj(ptr dead_on_unwind writable sret(%"class.std::vector") align 8, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii15PolynomialSpaceILi1EEC2INS_11Polynomials10PolynomialIdEEEERKSt6vectorIT_SaIS7_EE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !261 {
  %3 = alloca %"class.std::allocator", align 1
  %4 = alloca %"class.std::allocator.2", align 1
  %5 = alloca %"class.std::allocator.2", align 1
  %6 = tail call ptr @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  %7 = tail call ptr @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #15
  call void @_ZNSaIN6dealii11Polynomials10PolynomialIdEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #16
  invoke void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2IN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEvEET_SC_RKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %6, ptr %7, ptr noundef nonnull align 1 dereferenceable(1) %3) #14
          to label %8 unwind label %24

8:                                                ; preds = %2
  call void @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #15
  %9 = getelementptr inbounds %"class.dealii::PolynomialSpace", ptr %0, i64 0, i32 1
  %10 = call noundef i64 @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %11 = trunc i64 %10 to i32
  %12 = invoke noundef i32 @_ZN6dealii15PolynomialSpaceILi1EE14compute_n_polsEj(i32 noundef %11) #14
          to label %13 unwind label %26

13:                                               ; preds = %8
  store i32 %12, ptr %9, align 8, !tbaa !289
  %14 = getelementptr inbounds %"class.dealii::PolynomialSpace", ptr %0, i64 0, i32 2
  %15 = zext i32 %12 to i64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #15
  call void @_ZNSaIjEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #16
  invoke void @_ZNSt6vectorIjSaIjEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %14, i64 noundef %15, ptr noundef nonnull align 1 dereferenceable(1) %4) #14
          to label %16 unwind label %28

16:                                               ; preds = %13
  call void @_ZNSt15__new_allocatorIjED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  %17 = getelementptr inbounds %"class.dealii::PolynomialSpace", ptr %0, i64 0, i32 3
  %18 = load i32, ptr %9, align 8, !tbaa !289
  %19 = zext i32 %18 to i64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #15
  call void @_ZNSaIjEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #16
  invoke void @_ZNSt6vectorIjSaIjEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %17, i64 noundef %19, ptr noundef nonnull align 1 dereferenceable(1) %5) #14
          to label %20 unwind label %30

20:                                               ; preds = %16
  call void @_ZNSt15__new_allocatorIjED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #15
  %21 = load i32, ptr %9, align 8, !tbaa !289
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %32, %20
  ret void

24:                                               ; preds = %2
  %25 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #15
  br label %43

26:                                               ; preds = %8
  %27 = landingpad { ptr, i32 }
          cleanup
  br label %41

28:                                               ; preds = %13
  %29 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIjED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  br label %41

30:                                               ; preds = %16
  %31 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIjED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #15
  call void @_ZNSt6vectorIjSaIjEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %14) #16
  br label %41

32:                                               ; preds = %20, %32
  %33 = phi i64 [ %37, %32 ], [ 0, %20 ]
  %34 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIjSaIjEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %14, i64 noundef %33) #16
  %35 = trunc i64 %33 to i32
  store i32 %35, ptr %34, align 4, !tbaa !290
  %36 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIjSaIjEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %17, i64 noundef %33) #16
  store i32 %35, ptr %36, align 4, !tbaa !290
  %37 = add nuw nsw i64 %33, 1
  %38 = load i32, ptr %9, align 8, !tbaa !289
  %39 = zext i32 %38 to i64
  %40 = icmp ult i64 %37, %39
  br i1 %40, label %32, label %23, !llvm.loop !291

41:                                               ; preds = %30, %28, %26
  %42 = phi { ptr, i32 } [ %31, %30 ], [ %29, %28 ], [ %27, %26 ]
  call void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  br label %43

43:                                               ; preds = %41, %24
  %44 = phi { ptr, i32 } [ %42, %41 ], [ %25, %24 ]
  resume { ptr, i32 } %44
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !293 {
  %2 = load ptr, ptr %0, align 8, !tbaa !294
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !295
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  invoke void @_ZSt8_DestroyIPN6dealii11Polynomials10PolynomialIdEES3_EvT_S5_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #14
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #17
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIN6dealii11Polynomials10PolynomialIdEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #6 comdat align 2 !prof !296 {
  tail call void @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2EmRKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = tail call noundef i64 @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE17_S_check_init_lenEmRKS4_(i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #14
  tail call void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2EmRKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %2) #14
  invoke void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #14
          to label %5 unwind label %6

5:                                                ; preds = %3
  ret void

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef i32 @_ZN6dealii14PolynomialsBDMILi1EE14compute_n_polsEj(i32 noundef %0) local_unnamed_addr #6 comdat align 2 !prof !261 {
  %2 = add i32 %0, 1
  ret i32 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK6dealii15PolynomialSpaceILi1EE1nEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #6 comdat align 2 !prof !261 {
  %2 = getelementptr inbounds %"class.dealii::PolynomialSpace", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !289
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIdEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #6 comdat align 2 !prof !297 {
  tail call void @_ZNSt15__new_allocatorIdEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = tail call noundef i64 @_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_(i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #14
  tail call void @_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %2) #14
  invoke void @_ZNSt6vectorIdSaIdEE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #14
          to label %5 unwind label %6

5:                                                ; preds = %3
  ret void

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt12_Vector_baseIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIN6dealii6TensorILi1ELi1EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #6 comdat align 2 !prof !261 {
  tail call void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi1EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = tail call noundef i64 @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE17_S_check_init_lenEmRKS3_(i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #14
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %2) #14
  invoke void @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #14
          to label %5 unwind label %6

5:                                                ; preds = %3
  ret void

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIN6dealii6TensorILi2ELi1EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #6 comdat align 2 !prof !261 {
  tail call void @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi1EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = tail call noundef i64 @_ZNSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE17_S_check_init_lenEmRKS3_(i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #14
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %2) #14
  invoke void @_ZNSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #14
          to label %5 unwind label %6

5:                                                ; preds = %3
  ret void

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  resume { ptr, i32 } %7
}

; Function Attrs: optsize
declare void @_ZN6dealii11Polynomials8MonomialIdEC1Ejd(ptr noundef nonnull align 8 dereferenceable(96), i32 noundef, double noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(96) ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !298 {
  %3 = load ptr, ptr %0, align 8, !tbaa !294
  %4 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(96) ptr @_ZN6dealii11Polynomials10PolynomialIdEaSEOS2_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #4 comdat align 2 {
  %3 = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZN6dealii11SubscriptoraSERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) #14
  %4 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %1, i64 0, i32 1
  %6 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIdSaIdEEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) #16
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !261 {
  %2 = load ptr, ptr %0, align 8, !tbaa !299
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<2, 1>, std::allocator<dealii::Tensor<2, 1>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !300
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  invoke void @_ZSt8_DestroyIPN6dealii6TensorILi2ELi1EEES2_EvT_S4_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #14
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !261 {
  %2 = load ptr, ptr %0, align 8, !tbaa !301
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 1>, std::allocator<dealii::Tensor<1, 1>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !302
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  invoke void @_ZSt8_DestroyIPN6dealii6TensorILi1ELi1EEES2_EvT_S4_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #14
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !303 {
  %2 = load ptr, ptr %0, align 8, !tbaa !304
  %3 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !305
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  invoke void @_ZSt8_DestroyIPddEvT_S1_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #14
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii15PolynomialSpaceILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #6 comdat align 2 {
  %2 = getelementptr inbounds %"class.dealii::PolynomialSpace", ptr %0, i64 0, i32 3
  tail call void @_ZNSt6vectorIjSaIjEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #16
  %3 = getelementptr inbounds %"class.dealii::PolynomialSpace", ptr %0, i64 0, i32 2
  tail call void @_ZNSt6vectorIjSaIjEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #16
  tail call void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii14PolynomialsBDMILi1EE7computeERKNS_5PointILi1EEERSt6vectorINS_6TensorILi1ELi1EEESaIS8_EERS6_INS7_ILi2ELi1EEESaISC_EERS6_INS7_ILi3ELi1EEESaISG_EE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !261 {
  %6 = alloca %"class.dealii::Tensor", align 8
  %7 = alloca %"class.dealii::Tensor.29", align 8
  %8 = alloca %"class.dealii::Tensor.31", align 8
  %9 = alloca %"class.std::vector.5", align 8
  %10 = alloca %"class.std::allocator.7", align 1
  %11 = alloca %"class.std::vector.5", align 8
  %12 = alloca %"class.std::allocator.7", align 1
  %13 = tail call noundef i32 @_ZNK6dealii15PolynomialSpaceILi1EE1nEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #14
  %14 = getelementptr inbounds %"class.dealii::PolynomialsBDM", ptr %0, i64 0, i32 3
  %15 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #16
  %16 = icmp eq i64 %15, 0
  %17 = zext i32 %13 to i64
  %18 = select i1 %16, i64 0, i64 %17
  tail call void @_ZNSt6vectorIdSaIdEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %14, i64 noundef %18) #14
  %19 = getelementptr inbounds %"class.dealii::PolynomialsBDM", ptr %0, i64 0, i32 4
  %20 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #16
  %21 = icmp eq i64 %20, 0
  %22 = select i1 %21, i64 0, i64 %17
  tail call void @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %19, i64 noundef %22) #14
  %23 = getelementptr inbounds %"class.dealii::PolynomialsBDM", ptr %0, i64 0, i32 5
  %24 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi3ELi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #16
  %25 = icmp eq i64 %24, 0
  %26 = select i1 %25, i64 0, i64 %17
  tail call void @_ZNSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %23, i64 noundef %26) #14
  tail call void @_ZNK6dealii15PolynomialSpaceILi1EE7computeERKNS_5PointILi1EEERSt6vectorIdSaIdEERS6_INS_6TensorILi1ELi1EEESaISB_EERS6_INSA_ILi2ELi1EEESaISF_EE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(24) %23) #14
  %27 = tail call ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #16
  %28 = tail call ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #15
  call void @_ZN6dealii6TensorILi1ELi1EEC2Eb(ptr noundef nonnull align 8 dereferenceable(8) %6, i1 noundef zeroext true) #14
  call void @_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi1ELi1EEESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RKT0_(ptr %27, ptr %28, ptr noundef nonnull align 8 dereferenceable(8) %6) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #15
  %29 = call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %14) #16
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %36, %5
  %32 = call ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #16
  %33 = call ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #15
  call void @_ZN6dealii6TensorILi2ELi1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #14
  call void @_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi2ELi1EEESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RKT0_(ptr %32, ptr %33, ptr noundef nonnull align 8 dereferenceable(8) %7) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #15
  %34 = call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %19) #16
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %47, label %52

36:                                               ; preds = %5, %36
  %37 = phi i64 [ %44, %36 ], [ 0, %5 ]
  %38 = phi i32 [ %43, %36 ], [ 0, %5 ]
  %39 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %14, i64 noundef %37) #16
  %40 = load double, ptr %39, align 8, !tbaa !306
  %41 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %37) #16
  %42 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %41, i32 noundef 0) #14
  store double %40, ptr %42, align 8, !tbaa !306
  %43 = add i32 %38, 1
  %44 = zext i32 %43 to i64
  %45 = call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %14) #16
  %46 = icmp ugt i64 %45, %44
  br i1 %46, label %36, label %31, !llvm.loop !308

47:                                               ; preds = %52, %31
  %48 = call ptr @_ZNSt6vectorIN6dealii6TensorILi3ELi1EEESaIS2_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #16
  %49 = call ptr @_ZNSt6vectorIN6dealii6TensorILi3ELi1EEESaIS2_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #15
  call void @_ZN6dealii6TensorILi3ELi1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #14
  call void @_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi3ELi1EEESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RKT0_(ptr %48, ptr %49, ptr noundef nonnull align 8 dereferenceable(8) %8) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #15
  %50 = call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %23) #16
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %63, label %64

52:                                               ; preds = %31, %52
  %53 = phi i64 [ %60, %52 ], [ 0, %31 ]
  %54 = phi i32 [ %59, %52 ], [ 0, %31 ]
  %55 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %19, i64 noundef %53) #16
  %56 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %53) #16
  %57 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi2ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %56, i32 noundef 0) #14
  %58 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %57, ptr noundef nonnull align 8 dereferenceable(8) %55) #14
  %59 = add i32 %54, 1
  %60 = zext i32 %59 to i64
  %61 = call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %19) #16
  %62 = icmp ugt i64 %61, %60
  br i1 %62, label %52, label %47, !llvm.loop !309

63:                                               ; preds = %64, %47
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #15
  call void @_ZNSaIdEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10) #16
  invoke void @_ZNSt6vectorIdSaIdEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef 3, ptr noundef nonnull align 1 dereferenceable(1) %10) #14
          to label %75 unwind label %111

64:                                               ; preds = %47, %64
  %65 = phi i64 [ %72, %64 ], [ 0, %47 ]
  %66 = phi i32 [ %71, %64 ], [ 0, %47 ]
  %67 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %23, i64 noundef %65) #16
  %68 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIN6dealii6TensorILi3ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %65) #16
  %69 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi3ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %68, i32 noundef 0) #14
  %70 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi2ELi1EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %69, ptr noundef nonnull align 8 dereferenceable(8) %67) #14
  %71 = add i32 %66, 1
  %72 = zext i32 %71 to i64
  %73 = call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %23) #16
  %74 = icmp ugt i64 %73, %72
  br i1 %74, label %64, label %63, !llvm.loop !310

75:                                               ; preds = %63
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #15
  call void @_ZNSaIdEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %12) #16
  invoke void @_ZNSt6vectorIdSaIdEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef 3, ptr noundef nonnull align 1 dereferenceable(1) %12) #14
          to label %76 unwind label %113

76:                                               ; preds = %75
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %12) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #15
  %77 = getelementptr inbounds %"class.dealii::PolynomialsBDM", ptr %0, i64 0, i32 1
  %78 = call noundef nonnull align 8 dereferenceable(96) ptr @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %77, i64 noundef 0) #16
  %79 = call noundef double @_ZNK6dealii5PointILi1EEclEj(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 0) #14
  invoke void @_ZNK6dealii11Polynomials10PolynomialIdE5valueEdRSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(96) %78, double noundef %79, ptr noundef nonnull align 8 dereferenceable(24) %9) #14
          to label %80 unwind label %115

80:                                               ; preds = %76
  %81 = call noundef nonnull align 8 dereferenceable(96) ptr @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %77, i64 noundef 0) #16
  %82 = call noundef double @_ZNK6dealii5PointILi1EEclEj(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 1) #14
  invoke void @_ZNK6dealii11Polynomials10PolynomialIdE5valueEdRSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(96) %81, double noundef %82, ptr noundef nonnull align 8 dereferenceable(24) %11) #14
          to label %83 unwind label %115

83:                                               ; preds = %80
  %84 = call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #16
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %117, label %86

86:                                               ; preds = %83
  %87 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef 0) #16
  %88 = load double, ptr %87, align 8, !tbaa !306
  %89 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %17) #16
  %90 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %89, i32 noundef 0) #14
  store double %88, ptr %90, align 8, !tbaa !306
  %91 = call noundef double @_ZNK6dealii5PointILi1EEclEj(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 1) #14
  %92 = fneg double %91
  %93 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef 1) #16
  %94 = load double, ptr %93, align 8, !tbaa !306
  %95 = fmul double %94, %92
  %96 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %17) #16
  %97 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %96, i32 noundef 1) #14
  store double %95, ptr %97, align 8, !tbaa !306
  %98 = call noundef double @_ZNK6dealii5PointILi1EEclEj(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 0) #14
  %99 = fneg double %98
  %100 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef 1) #16
  %101 = load double, ptr %100, align 8, !tbaa !306
  %102 = fmul double %101, %99
  %103 = add i32 %13, 1
  %104 = zext i32 %103 to i64
  %105 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %104) #16
  %106 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %105, i32 noundef 0) #14
  store double %102, ptr %106, align 8, !tbaa !306
  %107 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef 0) #16
  %108 = load double, ptr %107, align 8, !tbaa !306
  %109 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %104) #16
  %110 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %109, i32 noundef 1) #14
  store double %108, ptr %110, align 8, !tbaa !306
  br label %117

111:                                              ; preds = %63
  %112 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #15
  br label %171

113:                                              ; preds = %75
  %114 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %12) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #15
  br label %169

115:                                              ; preds = %80, %76
  %116 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %11) #16
  br label %169

117:                                              ; preds = %86, %83
  %118 = call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #16
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %167, label %120

120:                                              ; preds = %117
  %121 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef 1) #16
  %122 = load double, ptr %121, align 8, !tbaa !306
  %123 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %17) #16
  %124 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi2ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %123, i32 noundef 0) #14
  %125 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %124, i32 noundef 0) #14
  store double %122, ptr %125, align 8, !tbaa !306
  %126 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %17) #16
  %127 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi2ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %126, i32 noundef 0) #14
  %128 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %127, i32 noundef 1) #14
  store double 0.000000e+00, ptr %128, align 8, !tbaa !306
  %129 = call noundef double @_ZNK6dealii5PointILi1EEclEj(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 1) #14
  %130 = fneg double %129
  %131 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef 2) #16
  %132 = load double, ptr %131, align 8, !tbaa !306
  %133 = fmul double %132, %130
  %134 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %17) #16
  %135 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi2ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %134, i32 noundef 1) #14
  %136 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %135, i32 noundef 0) #14
  store double %133, ptr %136, align 8, !tbaa !306
  %137 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef 1) #16
  %138 = load double, ptr %137, align 8, !tbaa !306
  %139 = fneg double %138
  %140 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %17) #16
  %141 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi2ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %140, i32 noundef 1) #14
  %142 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %141, i32 noundef 1) #14
  store double %139, ptr %142, align 8, !tbaa !306
  %143 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef 1) #16
  %144 = load double, ptr %143, align 8, !tbaa !306
  %145 = fneg double %144
  %146 = add i32 %13, 1
  %147 = zext i32 %146 to i64
  %148 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %147) #16
  %149 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi2ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %148, i32 noundef 0) #14
  %150 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %149, i32 noundef 0) #14
  store double %145, ptr %150, align 8, !tbaa !306
  %151 = call noundef double @_ZNK6dealii5PointILi1EEclEj(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 0) #14
  %152 = fneg double %151
  %153 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef 2) #16
  %154 = load double, ptr %153, align 8, !tbaa !306
  %155 = fmul double %154, %152
  %156 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %147) #16
  %157 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi2ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %156, i32 noundef 0) #14
  %158 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %157, i32 noundef 1) #14
  store double %155, ptr %158, align 8, !tbaa !306
  %159 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %147) #16
  %160 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi2ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %159, i32 noundef 1) #14
  %161 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %160, i32 noundef 0) #14
  store double 0.000000e+00, ptr %161, align 8, !tbaa !306
  %162 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef 1) #16
  %163 = load double, ptr %162, align 8, !tbaa !306
  %164 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %147) #16
  %165 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi2ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %164, i32 noundef 1) #14
  %166 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %165, i32 noundef 1) #14
  store double %163, ptr %166, align 8, !tbaa !306
  br label %167

167:                                              ; preds = %120, %117
  %168 = call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi3ELi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #16
  call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %11) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #15
  call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #15
  ret void

169:                                              ; preds = %115, %113
  %170 = phi { ptr, i32 } [ %116, %115 ], [ %114, %113 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #15
  call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #16
  br label %171

171:                                              ; preds = %169, %111
  %172 = phi { ptr, i32 } [ %170, %169 ], [ %112, %111 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #15
  resume { ptr, i32 } %172
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
  %3 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %4 = icmp ult i64 %3, %1
  %5 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  br i1 %4, label %6, label %8

6:                                                ; preds = %2
  %7 = sub i64 %1, %5
  tail call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %7) #14
  br label %13

8:                                                ; preds = %2
  %9 = icmp ugt i64 %5, %1
  br i1 %9, label %10, label %13

10:                                               ; preds = %8
  %11 = load ptr, ptr %0, align 8, !tbaa !304
  %12 = getelementptr inbounds double, ptr %11, i64 %1
  tail call void @_ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %12) #16
  br label %13

13:                                               ; preds = %8, %10, %6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !261 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 1>, std::allocator<dealii::Tensor<1, 1>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !302
  %4 = load ptr, ptr %0, align 8, !tbaa !301
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  ret i64 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
  %3 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %4 = icmp ult i64 %3, %1
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  br i1 %4, label %6, label %8

6:                                                ; preds = %2
  %7 = sub i64 %1, %5
  tail call void @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %7) #14
  br label %13

8:                                                ; preds = %2
  %9 = icmp ugt i64 %5, %1
  br i1 %9, label %10, label %13

10:                                               ; preds = %8
  %11 = load ptr, ptr %0, align 8, !tbaa !301
  %12 = getelementptr inbounds %"class.dealii::Tensor", ptr %11, i64 %1
  tail call void @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE15_M_erase_at_endEPS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %12) #16
  br label %13

13:                                               ; preds = %8, %10, %6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !261 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<2, 1>, std::allocator<dealii::Tensor<2, 1>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !300
  %4 = load ptr, ptr %0, align 8, !tbaa !299
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  ret i64 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
  %3 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %4 = icmp ult i64 %3, %1
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  br i1 %4, label %6, label %8

6:                                                ; preds = %2
  %7 = sub i64 %1, %5
  tail call void @_ZNSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %7) #14
  br label %13

8:                                                ; preds = %2
  %9 = icmp ugt i64 %5, %1
  br i1 %9, label %10, label %13

10:                                               ; preds = %8
  %11 = load ptr, ptr %0, align 8, !tbaa !299
  %12 = getelementptr inbounds %"class.dealii::Tensor.29", ptr %11, i64 %1
  tail call void @_ZNSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE15_M_erase_at_endEPS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %12) #16
  br label %13

13:                                               ; preds = %8, %10, %6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi3ELi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !261 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<3, 1>, std::allocator<dealii::Tensor<3, 1>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !311
  %4 = load ptr, ptr %0, align 8, !tbaa !313
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  ret i64 %8
}

; Function Attrs: optsize
declare void @_ZNK6dealii15PolynomialSpaceILi1EE7computeERKNS_5PointILi1EEERSt6vectorIdSaIdEERS6_INS_6TensorILi1ELi1EEESaISB_EERS6_INSA_ILi2ELi1EEESaISF_EE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi1ELi1EEESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RKT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat !prof !261 {
  tail call void @_ZSt8__fill_aIN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi1ELi1EEESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RKT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !261 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi1ELi1EEESt6vectorIS3_SaIS3_EEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !261 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 1>, std::allocator<dealii::Tensor<1, 1>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi1ELi1EEESt6vectorIS3_SaIS3_EEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #16
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6TensorILi1ELi1EEC2Eb(ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext %1) unnamed_addr #6 comdat align 2 !prof !314 {
  br i1 %1, label %3, label %4, !prof !315

3:                                                ; preds = %2
  store double 0.000000e+00, ptr %0, align 8, !tbaa !306
  br label %4

4:                                                ; preds = %3, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !316 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !305
  %4 = load ptr, ptr %0, align 8, !tbaa !304
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  ret i64 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !317 {
  %3 = load ptr, ptr %0, align 8, !tbaa !304
  %4 = getelementptr inbounds double, ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !261 {
  %3 = load ptr, ptr %0, align 8, !tbaa !301
  %4 = getelementptr inbounds %"class.dealii::Tensor", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !261 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [1 x double], ptr %0, i64 0, i64 %3
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi2ELi1EEESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RKT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat !prof !261 {
  tail call void @_ZSt8__fill_aIN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi2ELi1EEESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RKT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !261 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.28", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi2ELi1EEESt6vectorIS3_SaIS3_EEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !261 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.28", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<2, 1>, std::allocator<dealii::Tensor<2, 1>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi2ELi1EEESt6vectorIS3_SaIS3_EEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #16
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6TensorILi2ELi1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !prof !261 {
  tail call void @_ZN6dealii6TensorILi1ELi1EEC2Eb(ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext true) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !261 {
  %3 = load ptr, ptr %0, align 8, !tbaa !299
  %4 = getelementptr inbounds %"class.dealii::Tensor.29", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi2ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !261 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [1 x %"class.dealii::Tensor"], ptr %0, i64 0, i64 %3
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat align 2 !prof !318 {
  %3 = load double, ptr %1, align 8, !tbaa !306
  store double %3, ptr %0, align 8, !tbaa !306
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi3ELi1EEESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RKT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat !prof !261 {
  tail call void @_ZSt8__fill_aIN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi3ELi1EEESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RKT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIN6dealii6TensorILi3ELi1EEESaIS2_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !261 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi3ELi1EEESt6vectorIS3_SaIS3_EEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIN6dealii6TensorILi3ELi1EEESaIS2_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !261 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<3, 1>, std::allocator<dealii::Tensor<3, 1>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi3ELi1EEESt6vectorIS3_SaIS3_EEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #16
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6TensorILi3ELi1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !prof !261 {
  tail call void @_ZN6dealii6TensorILi2ELi1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIN6dealii6TensorILi3ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !261 {
  %3 = load ptr, ptr %0, align 8, !tbaa !313
  %4 = getelementptr inbounds %"class.dealii::Tensor.31", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi3ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !261 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [1 x %"class.dealii::Tensor.29"], ptr %0, i64 0, i64 %3
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi2ELi1EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat align 2 !prof !261 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #14
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(96) ptr @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !319 {
  %3 = load ptr, ptr %0, align 8, !tbaa !294
  %4 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: optsize
declare void @_ZNK6dealii11Polynomials10PolynomialIdE5valueEdRSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(96), double noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZNK6dealii5PointILi1EEclEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !320 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [1 x double], ptr %0, i64 0, i64 %3
  %5 = load double, ptr %4, align 8, !tbaa !306
  ret double %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii14PolynomialsBDMILi1EE1nEv(ptr noundef nonnull align 8 dereferenceable(184) %0) local_unnamed_addr #6 comdat align 2 !prof !261 {
  %2 = getelementptr inbounds %"class.dealii::PolynomialsBDM", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !262
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii14PolynomialsBDMILi1EE6degreeEv(ptr noundef nonnull align 8 dereferenceable(184) %0) local_unnamed_addr #4 comdat align 2 !prof !261 {
  %2 = tail call noundef i32 @_ZNK6dealii15PolynomialSpaceILi1EE6degreeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #14
  ret i32 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK6dealii15PolynomialSpaceILi1EE6degreeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #6 comdat align 2 !prof !261 {
  %2 = tail call noundef i64 @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii14PolynomialsBDMILi2EEC2Ej(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %1) unnamed_addr #4 comdat($_ZN6dealii14PolynomialsBDMILi2EEC5Ej) align 2 personality ptr @__gxx_personality_v0 !prof !261 {
  %3 = alloca %"class.std::vector", align 8
  %4 = alloca %"class.std::allocator", align 1
  %5 = alloca %"class.std::allocator.7", align 1
  %6 = alloca %"class.std::allocator.36", align 1
  %7 = alloca %"class.std::allocator.41", align 1
  %8 = alloca %"class.dealii::Polynomials::Monomial", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @_ZN6dealii11Polynomials8Legendre23generate_complete_basisEj(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %3, i32 noundef %1) #14
  invoke void @_ZN6dealii15PolynomialSpaceILi2EEC2INS_11Polynomials10PolynomialIdEEEERKSt6vectorIT_SaIS7_EE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %3) #14
          to label %9 unwind label %31

9:                                                ; preds = %2
  call void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  %10 = getelementptr inbounds %"class.dealii::PolynomialsBDM.32", ptr %0, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #15
  call void @_ZNSaIN6dealii11Polynomials10PolynomialIdEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #16
  invoke void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2EmRKS4_(ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %4) #14
          to label %11 unwind label %33

11:                                               ; preds = %9
  call void @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  %12 = getelementptr inbounds %"class.dealii::PolynomialsBDM.32", ptr %0, i64 0, i32 2
  %13 = call noundef i32 @_ZN6dealii14PolynomialsBDMILi2EE14compute_n_polsEj(i32 noundef %1) #14
  store i32 %13, ptr %12, align 8, !tbaa !321
  %14 = getelementptr inbounds %"class.dealii::PolynomialsBDM.32", ptr %0, i64 0, i32 3
  %15 = call noundef i32 @_ZNK6dealii15PolynomialSpaceILi2EE1nEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #14
  %16 = zext i32 %15 to i64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #15
  call void @_ZNSaIdEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #16
  invoke void @_ZNSt6vectorIdSaIdEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %14, i64 noundef %16, ptr noundef nonnull align 1 dereferenceable(1) %5) #14
          to label %17 unwind label %35

17:                                               ; preds = %11
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #15
  %18 = getelementptr inbounds %"class.dealii::PolynomialsBDM.32", ptr %0, i64 0, i32 4
  %19 = call noundef i32 @_ZNK6dealii15PolynomialSpaceILi2EE1nEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #14
  %20 = zext i32 %19 to i64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #15
  call void @_ZNSaIN6dealii6TensorILi1ELi2EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #16
  invoke void @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %18, i64 noundef %20, ptr noundef nonnull align 1 dereferenceable(1) %6) #14
          to label %21 unwind label %37

21:                                               ; preds = %17
  call void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #15
  %22 = getelementptr inbounds %"class.dealii::PolynomialsBDM.32", ptr %0, i64 0, i32 5
  %23 = call noundef i32 @_ZNK6dealii15PolynomialSpaceILi2EE1nEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #14
  %24 = zext i32 %23 to i64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #15
  call void @_ZNSaIN6dealii6TensorILi2ELi2EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #16
  invoke void @_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %22, i64 noundef %24, ptr noundef nonnull align 1 dereferenceable(1) %7) #14
          to label %25 unwind label %39

25:                                               ; preds = %21
  call void @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi2EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %8) #15
  %26 = add i32 %1, 1
  invoke void @_ZN6dealii11Polynomials8MonomialIdEC1Ejd(ptr noundef nonnull align 8 dereferenceable(96) %8, i32 noundef %26, double noundef 1.000000e+00) #14
          to label %27 unwind label %41

27:                                               ; preds = %25
  %28 = call noundef nonnull align 8 dereferenceable(96) ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef 0) #16
  %29 = invoke noundef nonnull align 8 dereferenceable(96) ptr @_ZN6dealii11Polynomials10PolynomialIdEaSEOS2_(ptr noundef nonnull align 8 dereferenceable(96) %28, ptr noundef nonnull align 8 dereferenceable(96) %8) #14
          to label %30 unwind label %43

30:                                               ; preds = %27
  call void @_ZN6dealii11Polynomials10PolynomialIdED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %8) #16
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %8) #15
  ret void

31:                                               ; preds = %2
  %32 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %55

33:                                               ; preds = %9
  %34 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  br label %53

35:                                               ; preds = %11
  %36 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #15
  br label %51

37:                                               ; preds = %17
  %38 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #15
  br label %49

39:                                               ; preds = %21
  %40 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi2EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #15
  br label %47

41:                                               ; preds = %25
  %42 = landingpad { ptr, i32 }
          cleanup
  br label %45

43:                                               ; preds = %27
  %44 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6dealii11Polynomials10PolynomialIdED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %8) #16
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi { ptr, i32 } [ %44, %43 ], [ %42, %41 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %8) #15
  call void @_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %22) #16
  br label %47

47:                                               ; preds = %45, %39
  %48 = phi { ptr, i32 } [ %46, %45 ], [ %40, %39 ]
  call void @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %18) #16
  br label %49

49:                                               ; preds = %47, %37
  %50 = phi { ptr, i32 } [ %48, %47 ], [ %38, %37 ]
  call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %14) #16
  br label %51

51:                                               ; preds = %49, %35
  %52 = phi { ptr, i32 } [ %50, %49 ], [ %36, %35 ]
  call void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %10) #16
  br label %53

53:                                               ; preds = %51, %33
  %54 = phi { ptr, i32 } [ %52, %51 ], [ %34, %33 ]
  call void @_ZN6dealii15PolynomialSpaceILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #16
  br label %55

55:                                               ; preds = %53, %31
  %56 = phi { ptr, i32 } [ %54, %53 ], [ %32, %31 ]
  resume { ptr, i32 } %56
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii15PolynomialSpaceILi2EEC2INS_11Polynomials10PolynomialIdEEEERKSt6vectorIT_SaIS7_EE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !261 {
  %3 = alloca %"class.std::allocator", align 1
  %4 = alloca %"class.std::allocator.2", align 1
  %5 = alloca %"class.std::allocator.2", align 1
  %6 = tail call ptr @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  %7 = tail call ptr @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #15
  call void @_ZNSaIN6dealii11Polynomials10PolynomialIdEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #16
  invoke void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2IN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEvEET_SC_RKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %6, ptr %7, ptr noundef nonnull align 1 dereferenceable(1) %3) #14
          to label %8 unwind label %24

8:                                                ; preds = %2
  call void @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #15
  %9 = getelementptr inbounds %"class.dealii::PolynomialSpace.33", ptr %0, i64 0, i32 1
  %10 = call noundef i64 @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %11 = trunc i64 %10 to i32
  %12 = invoke noundef i32 @_ZN6dealii15PolynomialSpaceILi2EE14compute_n_polsEj(i32 noundef %11) #14
          to label %13 unwind label %26

13:                                               ; preds = %8
  store i32 %12, ptr %9, align 8, !tbaa !332
  %14 = getelementptr inbounds %"class.dealii::PolynomialSpace.33", ptr %0, i64 0, i32 2
  %15 = zext i32 %12 to i64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #15
  call void @_ZNSaIjEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #16
  invoke void @_ZNSt6vectorIjSaIjEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %14, i64 noundef %15, ptr noundef nonnull align 1 dereferenceable(1) %4) #14
          to label %16 unwind label %28

16:                                               ; preds = %13
  call void @_ZNSt15__new_allocatorIjED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  %17 = getelementptr inbounds %"class.dealii::PolynomialSpace.33", ptr %0, i64 0, i32 3
  %18 = load i32, ptr %9, align 8, !tbaa !332
  %19 = zext i32 %18 to i64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #15
  call void @_ZNSaIjEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #16
  invoke void @_ZNSt6vectorIjSaIjEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %17, i64 noundef %19, ptr noundef nonnull align 1 dereferenceable(1) %5) #14
          to label %20 unwind label %30

20:                                               ; preds = %16
  call void @_ZNSt15__new_allocatorIjED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #15
  %21 = load i32, ptr %9, align 8, !tbaa !332
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %32, %20
  ret void

24:                                               ; preds = %2
  %25 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #15
  br label %43

26:                                               ; preds = %8
  %27 = landingpad { ptr, i32 }
          cleanup
  br label %41

28:                                               ; preds = %13
  %29 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIjED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  br label %41

30:                                               ; preds = %16
  %31 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIjED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #15
  call void @_ZNSt6vectorIjSaIjEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %14) #16
  br label %41

32:                                               ; preds = %20, %32
  %33 = phi i64 [ %37, %32 ], [ 0, %20 ]
  %34 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIjSaIjEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %14, i64 noundef %33) #16
  %35 = trunc i64 %33 to i32
  store i32 %35, ptr %34, align 4, !tbaa !290
  %36 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIjSaIjEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %17, i64 noundef %33) #16
  store i32 %35, ptr %36, align 4, !tbaa !290
  %37 = add nuw nsw i64 %33, 1
  %38 = load i32, ptr %9, align 8, !tbaa !332
  %39 = zext i32 %38 to i64
  %40 = icmp ult i64 %37, %39
  br i1 %40, label %32, label %23, !llvm.loop !333

41:                                               ; preds = %30, %28, %26
  %42 = phi { ptr, i32 } [ %31, %30 ], [ %29, %28 ], [ %27, %26 ]
  call void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  br label %43

43:                                               ; preds = %41, %24
  %44 = phi { ptr, i32 } [ %42, %41 ], [ %25, %24 ]
  resume { ptr, i32 } %44
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef i32 @_ZN6dealii14PolynomialsBDMILi2EE14compute_n_polsEj(i32 noundef %0) local_unnamed_addr #6 comdat align 2 !prof !261 {
  %2 = add i32 %0, 1
  %3 = add i32 %0, 2
  %4 = mul i32 %2, %3
  %5 = add i32 %4, 2
  ret i32 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK6dealii15PolynomialSpaceILi2EE1nEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #6 comdat align 2 !prof !261 {
  %2 = getelementptr inbounds %"class.dealii::PolynomialSpace.33", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !332
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIN6dealii6TensorILi1ELi2EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #6 comdat align 2 !prof !261 {
  tail call void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = tail call noundef i64 @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE17_S_check_init_lenEmRKS3_(i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #14
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %2) #14
  invoke void @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #14
          to label %5 unwind label %6

5:                                                ; preds = %3
  ret void

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIN6dealii6TensorILi2ELi2EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #6 comdat align 2 !prof !261 {
  tail call void @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi2EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = tail call noundef i64 @_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE17_S_check_init_lenEmRKS3_(i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #14
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %2) #14
  invoke void @_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #14
          to label %5 unwind label %6

5:                                                ; preds = %3
  ret void

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !261 {
  %2 = load ptr, ptr %0, align 8, !tbaa !334
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<2, 2>, std::allocator<dealii::Tensor<2, 2>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !335
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  invoke void @_ZSt8_DestroyIPN6dealii6TensorILi2ELi2EEES2_EvT_S4_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #14
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !261 {
  %2 = load ptr, ptr %0, align 8, !tbaa !336
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !337
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  invoke void @_ZSt8_DestroyIPN6dealii6TensorILi1ELi2EEES2_EvT_S4_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #14
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii15PolynomialSpaceILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #6 comdat align 2 {
  %2 = getelementptr inbounds %"class.dealii::PolynomialSpace.33", ptr %0, i64 0, i32 3
  tail call void @_ZNSt6vectorIjSaIjEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #16
  %3 = getelementptr inbounds %"class.dealii::PolynomialSpace.33", ptr %0, i64 0, i32 2
  tail call void @_ZNSt6vectorIjSaIjEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #16
  tail call void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii14PolynomialsBDMILi2EE7computeERKNS_5PointILi2EEERSt6vectorINS_6TensorILi1ELi2EEESaIS8_EERS6_INS7_ILi2ELi2EEESaISC_EERS6_INS7_ILi3ELi2EEESaISG_EE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !261 {
  %6 = alloca %"class.dealii::Tensor.50", align 8
  %7 = alloca %"class.dealii::Tensor.53", align 8
  %8 = alloca %"class.dealii::Tensor.55", align 8
  %9 = alloca %"class.std::vector.5", align 8
  %10 = alloca %"class.std::allocator.7", align 1
  %11 = alloca %"class.std::vector.5", align 8
  %12 = alloca %"class.std::allocator.7", align 1
  %13 = tail call noundef i32 @_ZNK6dealii15PolynomialSpaceILi2EE1nEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #14
  %14 = getelementptr inbounds %"class.dealii::PolynomialsBDM.32", ptr %0, i64 0, i32 3
  %15 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #16
  %16 = icmp eq i64 %15, 0
  %17 = zext i32 %13 to i64
  %18 = select i1 %16, i64 0, i64 %17
  tail call void @_ZNSt6vectorIdSaIdEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %14, i64 noundef %18) #14
  %19 = getelementptr inbounds %"class.dealii::PolynomialsBDM.32", ptr %0, i64 0, i32 4
  %20 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #16
  %21 = icmp eq i64 %20, 0
  %22 = select i1 %21, i64 0, i64 %17
  tail call void @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %19, i64 noundef %22) #14
  %23 = getelementptr inbounds %"class.dealii::PolynomialsBDM.32", ptr %0, i64 0, i32 5
  %24 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi3ELi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #16
  %25 = icmp eq i64 %24, 0
  %26 = select i1 %25, i64 0, i64 %17
  tail call void @_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %23, i64 noundef %26) #14
  tail call void @_ZNK6dealii15PolynomialSpaceILi2EE7computeERKNS_5PointILi2EEERSt6vectorIdSaIdEERS6_INS_6TensorILi1ELi2EEESaISB_EERS6_INSA_ILi2ELi2EEESaISF_EE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(24) %23) #14
  %27 = tail call ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #16
  %28 = tail call ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #15
  call void @_ZN6dealii6TensorILi1ELi2EEC2Eb(ptr noundef nonnull align 8 dereferenceable(16) %6, i1 noundef zeroext true) #14
  call void @_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi1ELi2EEESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RKT0_(ptr %27, ptr %28, ptr noundef nonnull align 8 dereferenceable(16) %6) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #15
  %29 = call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %14) #16
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %49, label %31

31:                                               ; preds = %5, %31
  %32 = phi i64 [ %46, %31 ], [ 0, %5 ]
  %33 = phi i32 [ %45, %31 ], [ 0, %5 ]
  %34 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %14, i64 noundef %32) #16
  %35 = load double, ptr %34, align 8, !tbaa !306
  %36 = zext i32 %33 to i64
  %37 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %36) #16
  %38 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %37, i32 noundef 0) #14
  store double %35, ptr %38, align 8, !tbaa !306
  %39 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %14, i64 noundef %32) #16
  %40 = load double, ptr %39, align 8, !tbaa !306
  %41 = add i32 %13, %33
  %42 = zext i32 %41 to i64
  %43 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %42) #16
  %44 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %43, i32 noundef 1) #14
  store double %40, ptr %44, align 8, !tbaa !306
  %45 = add i32 %33, 1
  %46 = zext i32 %45 to i64
  %47 = call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %14) #16
  %48 = icmp ugt i64 %47, %46
  br i1 %48, label %31, label %49, !llvm.loop !338

49:                                               ; preds = %31, %5
  %50 = call ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #16
  %51 = call ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #15
  call void @_ZN6dealii6TensorILi2ELi2EEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #14
  call void @_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi2ELi2EEESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RKT0_(ptr %50, ptr %51, ptr noundef nonnull align 8 dereferenceable(32) %7) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #15
  %52 = call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %19) #16
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %72, label %54

54:                                               ; preds = %49, %54
  %55 = phi i64 [ %69, %54 ], [ 0, %49 ]
  %56 = phi i32 [ %68, %54 ], [ 0, %49 ]
  %57 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %19, i64 noundef %55) #16
  %58 = zext i32 %56 to i64
  %59 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %58) #16
  %60 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi2ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(32) %59, i32 noundef 0) #14
  %61 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi1ELi2EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %60, ptr noundef nonnull align 8 dereferenceable(16) %57) #14
  %62 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %19, i64 noundef %55) #16
  %63 = add i32 %13, %56
  %64 = zext i32 %63 to i64
  %65 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %64) #16
  %66 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi2ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(32) %65, i32 noundef 1) #14
  %67 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi1ELi2EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %66, ptr noundef nonnull align 8 dereferenceable(16) %62) #14
  %68 = add i32 %56, 1
  %69 = zext i32 %68 to i64
  %70 = call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %19) #16
  %71 = icmp ugt i64 %70, %69
  br i1 %71, label %54, label %72, !llvm.loop !339

72:                                               ; preds = %54, %49
  %73 = call ptr @_ZNSt6vectorIN6dealii6TensorILi3ELi2EEESaIS2_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #16
  %74 = call ptr @_ZNSt6vectorIN6dealii6TensorILi3ELi2EEESaIS2_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #15
  call void @_ZN6dealii6TensorILi3ELi2EEC2Ev(ptr noundef nonnull align 8 dereferenceable(64) %8) #14
  call void @_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi3ELi2EEESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RKT0_(ptr %73, ptr %74, ptr noundef nonnull align 8 dereferenceable(64) %8) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #15
  %75 = call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %23) #16
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %95, label %77

77:                                               ; preds = %72, %77
  %78 = phi i64 [ %92, %77 ], [ 0, %72 ]
  %79 = phi i32 [ %91, %77 ], [ 0, %72 ]
  %80 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %23, i64 noundef %78) #16
  %81 = zext i32 %79 to i64
  %82 = call noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt6vectorIN6dealii6TensorILi3ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %81) #16
  %83 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN6dealii6TensorILi3ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(64) %82, i32 noundef 0) #14
  %84 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN6dealii6TensorILi2ELi2EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %83, ptr noundef nonnull align 8 dereferenceable(32) %80) #14
  %85 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %23, i64 noundef %78) #16
  %86 = add i32 %13, %79
  %87 = zext i32 %86 to i64
  %88 = call noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt6vectorIN6dealii6TensorILi3ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %87) #16
  %89 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN6dealii6TensorILi3ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(64) %88, i32 noundef 1) #14
  %90 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN6dealii6TensorILi2ELi2EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %89, ptr noundef nonnull align 8 dereferenceable(32) %85) #14
  %91 = add i32 %79, 1
  %92 = zext i32 %91 to i64
  %93 = call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %23) #16
  %94 = icmp ugt i64 %93, %92
  br i1 %94, label %77, label %95, !llvm.loop !340

95:                                               ; preds = %77, %72
  %96 = shl i32 %13, 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #15
  call void @_ZNSaIdEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10) #16
  invoke void @_ZNSt6vectorIdSaIdEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef 3, ptr noundef nonnull align 1 dereferenceable(1) %10) #14
          to label %97 unwind label %134

97:                                               ; preds = %95
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #15
  call void @_ZNSaIdEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %12) #16
  invoke void @_ZNSt6vectorIdSaIdEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef 3, ptr noundef nonnull align 1 dereferenceable(1) %12) #14
          to label %98 unwind label %136

98:                                               ; preds = %97
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %12) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #15
  %99 = getelementptr inbounds %"class.dealii::PolynomialsBDM.32", ptr %0, i64 0, i32 1
  %100 = call noundef nonnull align 8 dereferenceable(96) ptr @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %99, i64 noundef 0) #16
  %101 = call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 0) #14
  invoke void @_ZNK6dealii11Polynomials10PolynomialIdE5valueEdRSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(96) %100, double noundef %101, ptr noundef nonnull align 8 dereferenceable(24) %9) #14
          to label %102 unwind label %138

102:                                              ; preds = %98
  %103 = call noundef nonnull align 8 dereferenceable(96) ptr @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %99, i64 noundef 0) #16
  %104 = call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 1) #14
  invoke void @_ZNK6dealii11Polynomials10PolynomialIdE5valueEdRSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(96) %103, double noundef %104, ptr noundef nonnull align 8 dereferenceable(24) %11) #14
          to label %105 unwind label %138

105:                                              ; preds = %102
  %106 = call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #16
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %140, label %108

108:                                              ; preds = %105
  %109 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef 0) #16
  %110 = load double, ptr %109, align 8, !tbaa !306
  %111 = zext i32 %96 to i64
  %112 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %111) #16
  %113 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %112, i32 noundef 0) #14
  store double %110, ptr %113, align 8, !tbaa !306
  %114 = call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 1) #14
  %115 = fneg double %114
  %116 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef 1) #16
  %117 = load double, ptr %116, align 8, !tbaa !306
  %118 = fmul double %117, %115
  %119 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %111) #16
  %120 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %119, i32 noundef 1) #14
  store double %118, ptr %120, align 8, !tbaa !306
  %121 = call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 0) #14
  %122 = fneg double %121
  %123 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef 1) #16
  %124 = load double, ptr %123, align 8, !tbaa !306
  %125 = fmul double %124, %122
  %126 = or disjoint i32 %96, 1
  %127 = zext i32 %126 to i64
  %128 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %127) #16
  %129 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %128, i32 noundef 0) #14
  store double %125, ptr %129, align 8, !tbaa !306
  %130 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef 0) #16
  %131 = load double, ptr %130, align 8, !tbaa !306
  %132 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %127) #16
  %133 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %132, i32 noundef 1) #14
  store double %131, ptr %133, align 8, !tbaa !306
  br label %140

134:                                              ; preds = %95
  %135 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #15
  br label %195

136:                                              ; preds = %97
  %137 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %12) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #15
  br label %193

138:                                              ; preds = %102, %98
  %139 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %11) #16
  br label %193

140:                                              ; preds = %108, %105
  %141 = call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #16
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %191, label %143

143:                                              ; preds = %140
  %144 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef 1) #16
  %145 = load double, ptr %144, align 8, !tbaa !306
  %146 = zext i32 %96 to i64
  %147 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %146) #16
  %148 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi2ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(32) %147, i32 noundef 0) #14
  %149 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %148, i32 noundef 0) #14
  store double %145, ptr %149, align 8, !tbaa !306
  %150 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %146) #16
  %151 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi2ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(32) %150, i32 noundef 0) #14
  %152 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %151, i32 noundef 1) #14
  store double 0.000000e+00, ptr %152, align 8, !tbaa !306
  %153 = call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 1) #14
  %154 = fneg double %153
  %155 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef 2) #16
  %156 = load double, ptr %155, align 8, !tbaa !306
  %157 = fmul double %156, %154
  %158 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %146) #16
  %159 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi2ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(32) %158, i32 noundef 1) #14
  %160 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %159, i32 noundef 0) #14
  store double %157, ptr %160, align 8, !tbaa !306
  %161 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef 1) #16
  %162 = load double, ptr %161, align 8, !tbaa !306
  %163 = fneg double %162
  %164 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %146) #16
  %165 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi2ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(32) %164, i32 noundef 1) #14
  %166 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %165, i32 noundef 1) #14
  store double %163, ptr %166, align 8, !tbaa !306
  %167 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef 1) #16
  %168 = load double, ptr %167, align 8, !tbaa !306
  %169 = fneg double %168
  %170 = or disjoint i32 %96, 1
  %171 = zext i32 %170 to i64
  %172 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %171) #16
  %173 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi2ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(32) %172, i32 noundef 0) #14
  %174 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %173, i32 noundef 0) #14
  store double %169, ptr %174, align 8, !tbaa !306
  %175 = call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 0) #14
  %176 = fneg double %175
  %177 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef 2) #16
  %178 = load double, ptr %177, align 8, !tbaa !306
  %179 = fmul double %178, %176
  %180 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %171) #16
  %181 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi2ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(32) %180, i32 noundef 0) #14
  %182 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %181, i32 noundef 1) #14
  store double %179, ptr %182, align 8, !tbaa !306
  %183 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %171) #16
  %184 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi2ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(32) %183, i32 noundef 1) #14
  %185 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %184, i32 noundef 0) #14
  store double 0.000000e+00, ptr %185, align 8, !tbaa !306
  %186 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef 1) #16
  %187 = load double, ptr %186, align 8, !tbaa !306
  %188 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %171) #16
  %189 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi2ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(32) %188, i32 noundef 1) #14
  %190 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %189, i32 noundef 1) #14
  store double %187, ptr %190, align 8, !tbaa !306
  br label %191

191:                                              ; preds = %143, %140
  %192 = call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi3ELi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #16
  call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %11) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #15
  call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #15
  ret void

193:                                              ; preds = %138, %136
  %194 = phi { ptr, i32 } [ %139, %138 ], [ %137, %136 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #15
  call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #16
  br label %195

195:                                              ; preds = %193, %134
  %196 = phi { ptr, i32 } [ %194, %193 ], [ %135, %134 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #15
  resume { ptr, i32 } %196
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !261 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !337
  %4 = load ptr, ptr %0, align 8, !tbaa !336
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 4
  ret i64 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
  %3 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %4 = icmp ult i64 %3, %1
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  br i1 %4, label %6, label %8

6:                                                ; preds = %2
  %7 = sub i64 %1, %5
  tail call void @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %7) #14
  br label %13

8:                                                ; preds = %2
  %9 = icmp ugt i64 %5, %1
  br i1 %9, label %10, label %13

10:                                               ; preds = %8
  %11 = load ptr, ptr %0, align 8, !tbaa !336
  %12 = getelementptr inbounds %"class.dealii::Tensor.50", ptr %11, i64 %1
  tail call void @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE15_M_erase_at_endEPS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %12) #16
  br label %13

13:                                               ; preds = %8, %10, %6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !261 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<2, 2>, std::allocator<dealii::Tensor<2, 2>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !335
  %4 = load ptr, ptr %0, align 8, !tbaa !334
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 5
  ret i64 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
  %3 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %4 = icmp ult i64 %3, %1
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  br i1 %4, label %6, label %8

6:                                                ; preds = %2
  %7 = sub i64 %1, %5
  tail call void @_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %7) #14
  br label %13

8:                                                ; preds = %2
  %9 = icmp ugt i64 %5, %1
  br i1 %9, label %10, label %13

10:                                               ; preds = %8
  %11 = load ptr, ptr %0, align 8, !tbaa !334
  %12 = getelementptr inbounds %"class.dealii::Tensor.53", ptr %11, i64 %1
  tail call void @_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE15_M_erase_at_endEPS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %12) #16
  br label %13

13:                                               ; preds = %8, %10, %6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi3ELi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !261 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<3, 2>, std::allocator<dealii::Tensor<3, 2>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !341
  %4 = load ptr, ptr %0, align 8, !tbaa !343
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 6
  ret i64 %8
}

; Function Attrs: optsize
declare void @_ZNK6dealii15PolynomialSpaceILi2EE7computeERKNS_5PointILi2EEERSt6vectorIdSaIdEERS6_INS_6TensorILi1ELi2EEESaISB_EERS6_INSA_ILi2ELi2EEESaISF_EE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi1ELi2EEESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RKT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #4 comdat !prof !261 {
  tail call void @_ZSt8__fill_aIN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi1ELi2EEESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RKT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !261 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.51", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi1ELi2EEESt6vectorIS3_SaIS3_EEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !261 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.51", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi1ELi2EEESt6vectorIS3_SaIS3_EEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #16
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6TensorILi1ELi2EEC2Eb(ptr noundef nonnull align 8 dereferenceable(16) %0, i1 noundef zeroext %1) unnamed_addr #6 comdat align 2 !prof !344 {
  br i1 %1, label %3, label %4, !prof !345

3:                                                ; preds = %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !tbaa !306
  br label %4

4:                                                ; preds = %3, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !261 {
  %3 = load ptr, ptr %0, align 8, !tbaa !336
  %4 = getelementptr inbounds %"class.dealii::Tensor.50", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !346 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [2 x double], ptr %0, i64 0, i64 %3
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi2ELi2EEESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RKT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #4 comdat !prof !261 {
  tail call void @_ZSt8__fill_aIN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi2ELi2EEESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RKT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !261 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.52", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi2ELi2EEESt6vectorIS3_SaIS3_EEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !261 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.52", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<2, 2>, std::allocator<dealii::Tensor<2, 2>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi2ELi2EEESt6vectorIS3_SaIS3_EEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #16
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6TensorILi2ELi2EEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 !prof !261 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i64 [ 0, %1 ], [ %5, %2 ]
  %4 = getelementptr inbounds i8, ptr %0, i64 %3
  tail call void @_ZN6dealii6TensorILi1ELi2EEC2Eb(ptr noundef nonnull align 8 dereferenceable(16) %4, i1 noundef zeroext true) #14
  %5 = add nuw nsw i64 %3, 16
  %6 = icmp eq i64 %5, 32
  br i1 %6, label %7, label %2

7:                                                ; preds = %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !261 {
  %3 = load ptr, ptr %0, align 8, !tbaa !334
  %4 = getelementptr inbounds %"class.dealii::Tensor.53", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi2ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !261 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [2 x %"class.dealii::Tensor.50"], ptr %0, i64 0, i64 %3
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi1ELi2EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #6 comdat align 2 !prof !347 {
  %3 = load double, ptr %1, align 8, !tbaa !306
  store double %3, ptr %0, align 8, !tbaa !306
  %4 = getelementptr inbounds [2 x double], ptr %1, i64 0, i64 1
  %5 = load double, ptr %4, align 8, !tbaa !306
  %6 = getelementptr inbounds [2 x double], ptr %0, i64 0, i64 1
  store double %5, ptr %6, align 8, !tbaa !306
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi3ELi2EEESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RKT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #4 comdat !prof !261 {
  tail call void @_ZSt8__fill_aIN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi3ELi2EEESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RKT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(64) %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIN6dealii6TensorILi3ELi2EEESaIS2_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !261 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.54", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi3ELi2EEESt6vectorIS3_SaIS3_EEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIN6dealii6TensorILi3ELi2EEESaIS2_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !261 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.54", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<3, 2>, std::allocator<dealii::Tensor<3, 2>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi3ELi2EEESt6vectorIS3_SaIS3_EEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #16
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6TensorILi3ELi2EEC2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #4 comdat align 2 !prof !261 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i64 [ 0, %1 ], [ %5, %2 ]
  %4 = getelementptr inbounds i8, ptr %0, i64 %3
  tail call void @_ZN6dealii6TensorILi2ELi2EEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #14
  %5 = add nuw nsw i64 %3, 32
  %6 = icmp eq i64 %5, 64
  br i1 %6, label %7, label %2

7:                                                ; preds = %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt6vectorIN6dealii6TensorILi3ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !261 {
  %3 = load ptr, ptr %0, align 8, !tbaa !343
  %4 = getelementptr inbounds %"class.dealii::Tensor.55", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN6dealii6TensorILi3ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !261 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [2 x %"class.dealii::Tensor.53"], ptr %0, i64 0, i64 %3
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN6dealii6TensorILi2ELi2EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #6 comdat align 2 !prof !261 {
  %3 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi1ELi2EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #14
  %4 = getelementptr inbounds [2 x %"class.dealii::Tensor.50"], ptr %1, i64 0, i64 1
  %5 = getelementptr inbounds [2 x %"class.dealii::Tensor.50"], ptr %0, i64 0, i64 1
  %6 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi1ELi2EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %4) #14
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !348 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [2 x double], ptr %0, i64 0, i64 %3
  %5 = load double, ptr %4, align 8, !tbaa !306
  ret double %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii14PolynomialsBDMILi2EE1nEv(ptr noundef nonnull align 8 dereferenceable(184) %0) local_unnamed_addr #6 comdat align 2 !prof !261 {
  %2 = getelementptr inbounds %"class.dealii::PolynomialsBDM.32", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !321
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii14PolynomialsBDMILi2EE6degreeEv(ptr noundef nonnull align 8 dereferenceable(184) %0) local_unnamed_addr #4 comdat align 2 !prof !261 {
  %2 = tail call noundef i32 @_ZNK6dealii15PolynomialSpaceILi2EE6degreeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #14
  ret i32 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK6dealii15PolynomialSpaceILi2EE6degreeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #6 comdat align 2 !prof !261 {
  %2 = tail call noundef i64 @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii14PolynomialsBDMILi3EEC2Ej(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %1) unnamed_addr #4 comdat($_ZN6dealii14PolynomialsBDMILi3EEC5Ej) align 2 personality ptr @__gxx_personality_v0 !prof !261 {
  %3 = alloca %"class.std::vector", align 8
  %4 = alloca %"class.std::allocator", align 1
  %5 = alloca %"class.std::allocator.7", align 1
  %6 = alloca %"class.std::allocator.60", align 1
  %7 = alloca %"class.std::allocator.65", align 1
  %8 = alloca %"class.dealii::Polynomials::Monomial", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @_ZN6dealii11Polynomials8Legendre23generate_complete_basisEj(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %3, i32 noundef %1) #14
  invoke void @_ZN6dealii15PolynomialSpaceILi3EEC2INS_11Polynomials10PolynomialIdEEEERKSt6vectorIT_SaIS7_EE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %3) #14
          to label %9 unwind label %31

9:                                                ; preds = %2
  call void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  %10 = getelementptr inbounds %"class.dealii::PolynomialsBDM.56", ptr %0, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #15
  call void @_ZNSaIN6dealii11Polynomials10PolynomialIdEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #16
  invoke void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2EmRKS4_(ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %4) #14
          to label %11 unwind label %33

11:                                               ; preds = %9
  call void @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  %12 = getelementptr inbounds %"class.dealii::PolynomialsBDM.56", ptr %0, i64 0, i32 2
  %13 = call noundef i32 @_ZN6dealii14PolynomialsBDMILi3EE14compute_n_polsEj(i32 noundef %1) #14
  store i32 %13, ptr %12, align 8, !tbaa !349
  %14 = getelementptr inbounds %"class.dealii::PolynomialsBDM.56", ptr %0, i64 0, i32 3
  %15 = call noundef i32 @_ZNK6dealii15PolynomialSpaceILi3EE1nEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #14
  %16 = zext i32 %15 to i64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #15
  call void @_ZNSaIdEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #16
  invoke void @_ZNSt6vectorIdSaIdEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %14, i64 noundef %16, ptr noundef nonnull align 1 dereferenceable(1) %5) #14
          to label %17 unwind label %35

17:                                               ; preds = %11
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #15
  %18 = getelementptr inbounds %"class.dealii::PolynomialsBDM.56", ptr %0, i64 0, i32 4
  %19 = call noundef i32 @_ZNK6dealii15PolynomialSpaceILi3EE1nEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #14
  %20 = zext i32 %19 to i64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #15
  call void @_ZNSaIN6dealii6TensorILi1ELi3EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #16
  invoke void @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %18, i64 noundef %20, ptr noundef nonnull align 1 dereferenceable(1) %6) #14
          to label %21 unwind label %37

21:                                               ; preds = %17
  call void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #15
  %22 = getelementptr inbounds %"class.dealii::PolynomialsBDM.56", ptr %0, i64 0, i32 5
  %23 = call noundef i32 @_ZNK6dealii15PolynomialSpaceILi3EE1nEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #14
  %24 = zext i32 %23 to i64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #15
  call void @_ZNSaIN6dealii6TensorILi2ELi3EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #16
  invoke void @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %22, i64 noundef %24, ptr noundef nonnull align 1 dereferenceable(1) %7) #14
          to label %25 unwind label %39

25:                                               ; preds = %21
  call void @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi3EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %8) #15
  %26 = add i32 %1, 1
  invoke void @_ZN6dealii11Polynomials8MonomialIdEC1Ejd(ptr noundef nonnull align 8 dereferenceable(96) %8, i32 noundef %26, double noundef 1.000000e+00) #14
          to label %27 unwind label %41

27:                                               ; preds = %25
  %28 = call noundef nonnull align 8 dereferenceable(96) ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef 0) #16
  %29 = invoke noundef nonnull align 8 dereferenceable(96) ptr @_ZN6dealii11Polynomials10PolynomialIdEaSEOS2_(ptr noundef nonnull align 8 dereferenceable(96) %28, ptr noundef nonnull align 8 dereferenceable(96) %8) #14
          to label %30 unwind label %43

30:                                               ; preds = %27
  call void @_ZN6dealii11Polynomials10PolynomialIdED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %8) #16
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %8) #15
  ret void

31:                                               ; preds = %2
  %32 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %55

33:                                               ; preds = %9
  %34 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  br label %53

35:                                               ; preds = %11
  %36 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #15
  br label %51

37:                                               ; preds = %17
  %38 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #15
  br label %49

39:                                               ; preds = %21
  %40 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi3EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #15
  br label %47

41:                                               ; preds = %25
  %42 = landingpad { ptr, i32 }
          cleanup
  br label %45

43:                                               ; preds = %27
  %44 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6dealii11Polynomials10PolynomialIdED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %8) #16
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi { ptr, i32 } [ %44, %43 ], [ %42, %41 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %8) #15
  call void @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %22) #16
  br label %47

47:                                               ; preds = %45, %39
  %48 = phi { ptr, i32 } [ %46, %45 ], [ %40, %39 ]
  call void @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %18) #16
  br label %49

49:                                               ; preds = %47, %37
  %50 = phi { ptr, i32 } [ %48, %47 ], [ %38, %37 ]
  call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %14) #16
  br label %51

51:                                               ; preds = %49, %35
  %52 = phi { ptr, i32 } [ %50, %49 ], [ %36, %35 ]
  call void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %10) #16
  br label %53

53:                                               ; preds = %51, %33
  %54 = phi { ptr, i32 } [ %52, %51 ], [ %34, %33 ]
  call void @_ZN6dealii15PolynomialSpaceILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #16
  br label %55

55:                                               ; preds = %53, %31
  %56 = phi { ptr, i32 } [ %54, %53 ], [ %32, %31 ]
  resume { ptr, i32 } %56
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii15PolynomialSpaceILi3EEC2INS_11Polynomials10PolynomialIdEEEERKSt6vectorIT_SaIS7_EE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !261 {
  %3 = alloca %"class.std::allocator", align 1
  %4 = alloca %"class.std::allocator.2", align 1
  %5 = alloca %"class.std::allocator.2", align 1
  %6 = tail call ptr @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  %7 = tail call ptr @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #15
  call void @_ZNSaIN6dealii11Polynomials10PolynomialIdEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #16
  invoke void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2IN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEvEET_SC_RKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %6, ptr %7, ptr noundef nonnull align 1 dereferenceable(1) %3) #14
          to label %8 unwind label %24

8:                                                ; preds = %2
  call void @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #15
  %9 = getelementptr inbounds %"class.dealii::PolynomialSpace.57", ptr %0, i64 0, i32 1
  %10 = call noundef i64 @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %11 = trunc i64 %10 to i32
  %12 = invoke noundef i32 @_ZN6dealii15PolynomialSpaceILi3EE14compute_n_polsEj(i32 noundef %11) #14
          to label %13 unwind label %26

13:                                               ; preds = %8
  store i32 %12, ptr %9, align 8, !tbaa !360
  %14 = getelementptr inbounds %"class.dealii::PolynomialSpace.57", ptr %0, i64 0, i32 2
  %15 = zext i32 %12 to i64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #15
  call void @_ZNSaIjEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #16
  invoke void @_ZNSt6vectorIjSaIjEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %14, i64 noundef %15, ptr noundef nonnull align 1 dereferenceable(1) %4) #14
          to label %16 unwind label %28

16:                                               ; preds = %13
  call void @_ZNSt15__new_allocatorIjED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  %17 = getelementptr inbounds %"class.dealii::PolynomialSpace.57", ptr %0, i64 0, i32 3
  %18 = load i32, ptr %9, align 8, !tbaa !360
  %19 = zext i32 %18 to i64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #15
  call void @_ZNSaIjEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #16
  invoke void @_ZNSt6vectorIjSaIjEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %17, i64 noundef %19, ptr noundef nonnull align 1 dereferenceable(1) %5) #14
          to label %20 unwind label %30

20:                                               ; preds = %16
  call void @_ZNSt15__new_allocatorIjED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #15
  %21 = load i32, ptr %9, align 8, !tbaa !360
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %32, %20
  ret void

24:                                               ; preds = %2
  %25 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #15
  br label %43

26:                                               ; preds = %8
  %27 = landingpad { ptr, i32 }
          cleanup
  br label %41

28:                                               ; preds = %13
  %29 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIjED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  br label %41

30:                                               ; preds = %16
  %31 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIjED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #15
  call void @_ZNSt6vectorIjSaIjEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %14) #16
  br label %41

32:                                               ; preds = %20, %32
  %33 = phi i64 [ %37, %32 ], [ 0, %20 ]
  %34 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIjSaIjEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %14, i64 noundef %33) #16
  %35 = trunc i64 %33 to i32
  store i32 %35, ptr %34, align 4, !tbaa !290
  %36 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIjSaIjEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %17, i64 noundef %33) #16
  store i32 %35, ptr %36, align 4, !tbaa !290
  %37 = add nuw nsw i64 %33, 1
  %38 = load i32, ptr %9, align 8, !tbaa !360
  %39 = zext i32 %38 to i64
  %40 = icmp ult i64 %37, %39
  br i1 %40, label %32, label %23, !llvm.loop !361

41:                                               ; preds = %30, %28, %26
  %42 = phi { ptr, i32 } [ %31, %30 ], [ %29, %28 ], [ %27, %26 ]
  call void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  br label %43

43:                                               ; preds = %41, %24
  %44 = phi { ptr, i32 } [ %42, %41 ], [ %25, %24 ]
  resume { ptr, i32 } %44
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef i32 @_ZN6dealii14PolynomialsBDMILi3EE14compute_n_polsEj(i32 noundef %0) local_unnamed_addr #6 comdat align 2 !prof !261 {
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

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK6dealii15PolynomialSpaceILi3EE1nEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #6 comdat align 2 !prof !261 {
  %2 = getelementptr inbounds %"class.dealii::PolynomialSpace.57", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !360
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIN6dealii6TensorILi1ELi3EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #6 comdat align 2 !prof !362 {
  tail call void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = tail call noundef i64 @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE17_S_check_init_lenEmRKS3_(i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #14
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %2) #14
  invoke void @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #14
          to label %5 unwind label %6

5:                                                ; preds = %3
  ret void

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIN6dealii6TensorILi2ELi3EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #6 comdat align 2 !prof !363 {
  tail call void @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi3EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = tail call noundef i64 @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE17_S_check_init_lenEmRKS3_(i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #14
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %2) #14
  invoke void @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #14
          to label %5 unwind label %6

5:                                                ; preds = %3
  ret void

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !364 {
  %2 = load ptr, ptr %0, align 8, !tbaa !365
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<2, 3>, std::allocator<dealii::Tensor<2, 3>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !366
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  invoke void @_ZSt8_DestroyIPN6dealii6TensorILi2ELi3EEES2_EvT_S4_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #14
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !367 {
  %2 = load ptr, ptr %0, align 8, !tbaa !368
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !369
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  invoke void @_ZSt8_DestroyIPN6dealii6TensorILi1ELi3EEES2_EvT_S4_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #14
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii15PolynomialSpaceILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #6 comdat align 2 {
  %2 = getelementptr inbounds %"class.dealii::PolynomialSpace.57", ptr %0, i64 0, i32 3
  tail call void @_ZNSt6vectorIjSaIjEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #16
  %3 = getelementptr inbounds %"class.dealii::PolynomialSpace.57", ptr %0, i64 0, i32 2
  tail call void @_ZNSt6vectorIjSaIjEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #16
  tail call void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii14PolynomialsBDMILi3EE7computeERKNS_5PointILi3EEERSt6vectorINS_6TensorILi1ELi3EEESaIS8_EERS6_INS7_ILi2ELi3EEESaISC_EERS6_INS7_ILi3ELi3EEESaISG_EE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !261 {
  %6 = alloca %"class.dealii::Tensor.74", align 8
  %7 = alloca %"class.dealii::Tensor.77", align 8
  %8 = alloca %"class.dealii::Tensor.79", align 8
  %9 = alloca %"class.std::vector.5", align 8
  %10 = alloca %"class.std::allocator.7", align 1
  %11 = alloca %"class.std::vector.5", align 8
  %12 = alloca %"class.std::allocator.7", align 1
  %13 = tail call noundef i32 @_ZNK6dealii15PolynomialSpaceILi3EE1nEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #14
  %14 = getelementptr inbounds %"class.dealii::PolynomialsBDM.56", ptr %0, i64 0, i32 3
  %15 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #16
  %16 = icmp eq i64 %15, 0
  %17 = zext i32 %13 to i64
  %18 = select i1 %16, i64 0, i64 %17
  tail call void @_ZNSt6vectorIdSaIdEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %14, i64 noundef %18) #14
  %19 = getelementptr inbounds %"class.dealii::PolynomialsBDM.56", ptr %0, i64 0, i32 4
  %20 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #16
  %21 = icmp eq i64 %20, 0
  %22 = select i1 %21, i64 0, i64 %17
  tail call void @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %19, i64 noundef %22) #14
  %23 = getelementptr inbounds %"class.dealii::PolynomialsBDM.56", ptr %0, i64 0, i32 5
  %24 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi3ELi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #16
  %25 = icmp eq i64 %24, 0
  %26 = select i1 %25, i64 0, i64 %17
  tail call void @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %23, i64 noundef %26) #14
  tail call void @_ZNK6dealii15PolynomialSpaceILi3EE7computeERKNS_5PointILi3EEERSt6vectorIdSaIdEERS6_INS_6TensorILi1ELi3EEESaISB_EERS6_INSA_ILi2ELi3EEESaISF_EE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(24) %23) #14
  %27 = tail call ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #16
  %28 = tail call ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #15
  call void @_ZN6dealii6TensorILi1ELi3EEC2Eb(ptr noundef nonnull align 8 dereferenceable(24) %6, i1 noundef zeroext true) #14
  call void @_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi1ELi3EEESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RKT0_(ptr %27, ptr %28, ptr noundef nonnull align 8 dereferenceable(24) %6) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #15
  %29 = call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %14) #16
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %5, %39
  %32 = phi i64 [ %41, %39 ], [ 0, %5 ]
  %33 = phi i32 [ %40, %39 ], [ 0, %5 ]
  br label %44

34:                                               ; preds = %39, %5
  %35 = call ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #16
  %36 = call ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #16
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %7) #15
  call void @_ZN6dealii6TensorILi2ELi3EEC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %7) #14
  call void @_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi2ELi3EEESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RKT0_(ptr %35, ptr %36, ptr noundef nonnull align 8 dereferenceable(72) %7) #14
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %7) #15
  %37 = call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %19) #16
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %59, label %56

39:                                               ; preds = %44
  %40 = add i32 %33, 1
  %41 = zext i32 %40 to i64
  %42 = call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %14) #16
  %43 = icmp ugt i64 %42, %41
  br i1 %43, label %31, label %34, !llvm.loop !370

44:                                               ; preds = %31, %44
  %45 = phi i64 [ 0, %31 ], [ %54, %44 ]
  %46 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %14, i64 noundef %32) #16
  %47 = load double, ptr %46, align 8, !tbaa !306
  %48 = trunc i64 %45 to i32
  %49 = mul i32 %13, %48
  %50 = add i32 %49, %33
  %51 = zext i32 %50 to i64
  %52 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %51) #16
  %53 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %52, i32 noundef %48) #14
  store double %47, ptr %53, align 8, !tbaa !306
  %54 = add nuw nsw i64 %45, 1
  %55 = icmp eq i64 %54, 3
  br i1 %55, label %39, label %44, !llvm.loop !371

56:                                               ; preds = %34, %64
  %57 = phi i64 [ %66, %64 ], [ 0, %34 ]
  %58 = phi i32 [ %65, %64 ], [ 0, %34 ]
  br label %69

59:                                               ; preds = %64, %34
  %60 = call ptr @_ZNSt6vectorIN6dealii6TensorILi3ELi3EEESaIS2_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #16
  %61 = call ptr @_ZNSt6vectorIN6dealii6TensorILi3ELi3EEESaIS2_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #16
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %8) #15
  call void @_ZN6dealii6TensorILi3ELi3EEC2Ev(ptr noundef nonnull align 8 dereferenceable(216) %8) #14
  call void @_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi3ELi3EEESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RKT0_(ptr %60, ptr %61, ptr noundef nonnull align 8 dereferenceable(216) %8) #14
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %8) #15
  %62 = call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %23) #16
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %84, label %81

64:                                               ; preds = %69
  %65 = add i32 %58, 1
  %66 = zext i32 %65 to i64
  %67 = call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %19) #16
  %68 = icmp ugt i64 %67, %66
  br i1 %68, label %56, label %59, !llvm.loop !372

69:                                               ; preds = %56, %69
  %70 = phi i64 [ 0, %56 ], [ %79, %69 ]
  %71 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %19, i64 noundef %57) #16
  %72 = trunc i64 %70 to i32
  %73 = mul i32 %13, %72
  %74 = add i32 %73, %58
  %75 = zext i32 %74 to i64
  %76 = call noundef nonnull align 8 dereferenceable(72) ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %75) #16
  %77 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi2ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(72) %76, i32 noundef %72) #14
  %78 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi1ELi3EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %77, ptr noundef nonnull align 8 dereferenceable(24) %71) #14
  %79 = add nuw nsw i64 %70, 1
  %80 = icmp eq i64 %79, 3
  br i1 %80, label %64, label %69, !llvm.loop !373

81:                                               ; preds = %59, %86
  %82 = phi i64 [ %88, %86 ], [ 0, %59 ]
  %83 = phi i32 [ %87, %86 ], [ 0, %59 ]
  br label %91

84:                                               ; preds = %86, %59
  %85 = mul i32 %13, 3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #15
  call void @_ZNSaIdEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10) #16
  invoke void @_ZNSt6vectorIdSaIdEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef 3, ptr noundef nonnull align 1 dereferenceable(1) %10) #14
          to label %103 unwind label %140

86:                                               ; preds = %91
  %87 = add i32 %83, 1
  %88 = zext i32 %87 to i64
  %89 = call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %23) #16
  %90 = icmp ugt i64 %89, %88
  br i1 %90, label %81, label %84, !llvm.loop !374

91:                                               ; preds = %81, %91
  %92 = phi i64 [ 0, %81 ], [ %101, %91 ]
  %93 = call noundef nonnull align 8 dereferenceable(72) ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %23, i64 noundef %82) #16
  %94 = trunc i64 %92 to i32
  %95 = mul i32 %13, %94
  %96 = add i32 %95, %83
  %97 = zext i32 %96 to i64
  %98 = call noundef nonnull align 8 dereferenceable(216) ptr @_ZNSt6vectorIN6dealii6TensorILi3ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %97) #16
  %99 = call noundef nonnull align 8 dereferenceable(72) ptr @_ZN6dealii6TensorILi3ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(216) %98, i32 noundef %94) #14
  %100 = call noundef nonnull align 8 dereferenceable(72) ptr @_ZN6dealii6TensorILi2ELi3EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %99, ptr noundef nonnull align 8 dereferenceable(72) %93) #14
  %101 = add nuw nsw i64 %92, 1
  %102 = icmp eq i64 %101, 3
  br i1 %102, label %86, label %91, !llvm.loop !375

103:                                              ; preds = %84
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #15
  call void @_ZNSaIdEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %12) #16
  invoke void @_ZNSt6vectorIdSaIdEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef 3, ptr noundef nonnull align 1 dereferenceable(1) %12) #14
          to label %104 unwind label %142

104:                                              ; preds = %103
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %12) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #15
  %105 = getelementptr inbounds %"class.dealii::PolynomialsBDM.56", ptr %0, i64 0, i32 1
  %106 = call noundef nonnull align 8 dereferenceable(96) ptr @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %105, i64 noundef 0) #16
  %107 = call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 0) #14
  invoke void @_ZNK6dealii11Polynomials10PolynomialIdE5valueEdRSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(96) %106, double noundef %107, ptr noundef nonnull align 8 dereferenceable(24) %9) #14
          to label %108 unwind label %144

108:                                              ; preds = %104
  %109 = call noundef nonnull align 8 dereferenceable(96) ptr @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %105, i64 noundef 0) #16
  %110 = call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 1) #14
  invoke void @_ZNK6dealii11Polynomials10PolynomialIdE5valueEdRSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(96) %109, double noundef %110, ptr noundef nonnull align 8 dereferenceable(24) %11) #14
          to label %111 unwind label %144

111:                                              ; preds = %108
  %112 = call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #16
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %146, label %114

114:                                              ; preds = %111
  %115 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef 0) #16
  %116 = load double, ptr %115, align 8, !tbaa !306
  %117 = zext i32 %85 to i64
  %118 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %117) #16
  %119 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %118, i32 noundef 0) #14
  store double %116, ptr %119, align 8, !tbaa !306
  %120 = call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 1) #14
  %121 = fneg double %120
  %122 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef 1) #16
  %123 = load double, ptr %122, align 8, !tbaa !306
  %124 = fmul double %123, %121
  %125 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %117) #16
  %126 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %125, i32 noundef 1) #14
  store double %124, ptr %126, align 8, !tbaa !306
  %127 = call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 0) #14
  %128 = fneg double %127
  %129 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef 1) #16
  %130 = load double, ptr %129, align 8, !tbaa !306
  %131 = fmul double %130, %128
  %132 = add i32 %85, 1
  %133 = zext i32 %132 to i64
  %134 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %133) #16
  %135 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %134, i32 noundef 0) #14
  store double %131, ptr %135, align 8, !tbaa !306
  %136 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef 0) #16
  %137 = load double, ptr %136, align 8, !tbaa !306
  %138 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %133) #16
  %139 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %138, i32 noundef 1) #14
  store double %137, ptr %139, align 8, !tbaa !306
  br label %146

140:                                              ; preds = %84
  %141 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #15
  br label %201

142:                                              ; preds = %103
  %143 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %12) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #15
  br label %199

144:                                              ; preds = %108, %104
  %145 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %11) #16
  br label %199

146:                                              ; preds = %114, %111
  %147 = call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #16
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %197, label %149

149:                                              ; preds = %146
  %150 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef 1) #16
  %151 = load double, ptr %150, align 8, !tbaa !306
  %152 = zext i32 %85 to i64
  %153 = call noundef nonnull align 8 dereferenceable(72) ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %152) #16
  %154 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi2ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(72) %153, i32 noundef 0) #14
  %155 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %154, i32 noundef 0) #14
  store double %151, ptr %155, align 8, !tbaa !306
  %156 = call noundef nonnull align 8 dereferenceable(72) ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %152) #16
  %157 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi2ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(72) %156, i32 noundef 0) #14
  %158 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %157, i32 noundef 1) #14
  store double 0.000000e+00, ptr %158, align 8, !tbaa !306
  %159 = call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 1) #14
  %160 = fneg double %159
  %161 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef 2) #16
  %162 = load double, ptr %161, align 8, !tbaa !306
  %163 = fmul double %162, %160
  %164 = call noundef nonnull align 8 dereferenceable(72) ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %152) #16
  %165 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi2ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(72) %164, i32 noundef 1) #14
  %166 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %165, i32 noundef 0) #14
  store double %163, ptr %166, align 8, !tbaa !306
  %167 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef 1) #16
  %168 = load double, ptr %167, align 8, !tbaa !306
  %169 = fneg double %168
  %170 = call noundef nonnull align 8 dereferenceable(72) ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %152) #16
  %171 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi2ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(72) %170, i32 noundef 1) #14
  %172 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %171, i32 noundef 1) #14
  store double %169, ptr %172, align 8, !tbaa !306
  %173 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef 1) #16
  %174 = load double, ptr %173, align 8, !tbaa !306
  %175 = fneg double %174
  %176 = add i32 %85, 1
  %177 = zext i32 %176 to i64
  %178 = call noundef nonnull align 8 dereferenceable(72) ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %177) #16
  %179 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi2ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(72) %178, i32 noundef 0) #14
  %180 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %179, i32 noundef 0) #14
  store double %175, ptr %180, align 8, !tbaa !306
  %181 = call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 0) #14
  %182 = fneg double %181
  %183 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef 2) #16
  %184 = load double, ptr %183, align 8, !tbaa !306
  %185 = fmul double %184, %182
  %186 = call noundef nonnull align 8 dereferenceable(72) ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %177) #16
  %187 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi2ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(72) %186, i32 noundef 0) #14
  %188 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %187, i32 noundef 1) #14
  store double %185, ptr %188, align 8, !tbaa !306
  %189 = call noundef nonnull align 8 dereferenceable(72) ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %177) #16
  %190 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi2ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(72) %189, i32 noundef 1) #14
  %191 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %190, i32 noundef 0) #14
  store double 0.000000e+00, ptr %191, align 8, !tbaa !306
  %192 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef 1) #16
  %193 = load double, ptr %192, align 8, !tbaa !306
  %194 = call noundef nonnull align 8 dereferenceable(72) ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %177) #16
  %195 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi2ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(72) %194, i32 noundef 1) #14
  %196 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %195, i32 noundef 1) #14
  store double %193, ptr %196, align 8, !tbaa !306
  br label %197

197:                                              ; preds = %149, %146
  %198 = call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi3ELi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #16
  call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %11) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #15
  call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #15
  ret void

199:                                              ; preds = %144, %142
  %200 = phi { ptr, i32 } [ %145, %144 ], [ %143, %142 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #15
  call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #16
  br label %201

201:                                              ; preds = %199, %140
  %202 = phi { ptr, i32 } [ %200, %199 ], [ %141, %140 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #15
  resume { ptr, i32 } %202
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !376 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !369
  %4 = load ptr, ptr %0, align 8, !tbaa !368
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 24
  ret i64 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
  %3 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %4 = icmp ult i64 %3, %1
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  br i1 %4, label %6, label %8

6:                                                ; preds = %2
  %7 = sub i64 %1, %5
  tail call void @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %7) #14
  br label %13

8:                                                ; preds = %2
  %9 = icmp ugt i64 %5, %1
  br i1 %9, label %10, label %13

10:                                               ; preds = %8
  %11 = load ptr, ptr %0, align 8, !tbaa !368
  %12 = getelementptr inbounds %"class.dealii::Tensor.74", ptr %11, i64 %1
  tail call void @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE15_M_erase_at_endEPS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %12) #16
  br label %13

13:                                               ; preds = %8, %10, %6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !377 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<2, 3>, std::allocator<dealii::Tensor<2, 3>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !366
  %4 = load ptr, ptr %0, align 8, !tbaa !365
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 72
  ret i64 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
  %3 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %4 = icmp ult i64 %3, %1
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  br i1 %4, label %6, label %8

6:                                                ; preds = %2
  %7 = sub i64 %1, %5
  tail call void @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %7) #14
  br label %13

8:                                                ; preds = %2
  %9 = icmp ugt i64 %5, %1
  br i1 %9, label %10, label %13

10:                                               ; preds = %8
  %11 = load ptr, ptr %0, align 8, !tbaa !365
  %12 = getelementptr inbounds %"class.dealii::Tensor.77", ptr %11, i64 %1
  tail call void @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE15_M_erase_at_endEPS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %12) #16
  br label %13

13:                                               ; preds = %8, %10, %6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi3ELi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !261 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<3, 3>, std::allocator<dealii::Tensor<3, 3>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !378
  %4 = load ptr, ptr %0, align 8, !tbaa !380
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 216
  ret i64 %8
}

; Function Attrs: optsize
declare void @_ZNK6dealii15PolynomialSpaceILi3EE7computeERKNS_5PointILi3EEERSt6vectorIdSaIdEERS6_INS_6TensorILi1ELi3EEESaISB_EERS6_INSA_ILi2ELi3EEESaISF_EE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi1ELi3EEESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RKT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #4 comdat !prof !381 {
  tail call void @_ZSt8__fill_aIN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi1ELi3EEESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RKT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !382 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.75", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi1ELi3EEESt6vectorIS3_SaIS3_EEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !383 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.75", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi1ELi3EEESt6vectorIS3_SaIS3_EEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #16
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6TensorILi1ELi3EEC2Eb(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext %1) unnamed_addr #6 comdat align 2 !prof !384 {
  br i1 %1, label %3, label %4, !prof !385

3:                                                ; preds = %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !tbaa !306
  br label %4

4:                                                ; preds = %3, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !386 {
  %3 = load ptr, ptr %0, align 8, !tbaa !368
  %4 = getelementptr inbounds %"class.dealii::Tensor.74", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !387 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 %3
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi2ELi3EEESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RKT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #4 comdat !prof !388 {
  tail call void @_ZSt8__fill_aIN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi2ELi3EEESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RKT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(72) %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !388 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.76", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi2ELi3EEESt6vectorIS3_SaIS3_EEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !389 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.76", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<2, 3>, std::allocator<dealii::Tensor<2, 3>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi2ELi3EEESt6vectorIS3_SaIS3_EEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #16
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6TensorILi2ELi3EEC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #4 comdat align 2 !prof !390 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i64 [ 0, %1 ], [ %5, %2 ]
  %4 = getelementptr inbounds i8, ptr %0, i64 %3
  tail call void @_ZN6dealii6TensorILi1ELi3EEC2Eb(ptr noundef nonnull align 8 dereferenceable(24) %4, i1 noundef zeroext true) #14
  %5 = add nuw nsw i64 %3, 24
  %6 = icmp eq i64 %5, 72
  br i1 %6, label %7, label %2

7:                                                ; preds = %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(72) ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !391 {
  %3 = load ptr, ptr %0, align 8, !tbaa !365
  %4 = getelementptr inbounds %"class.dealii::Tensor.77", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi2ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !392 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [3 x %"class.dealii::Tensor.74"], ptr %0, i64 0, i64 %3
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi1ELi3EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat align 2 !prof !393 {
  %3 = load double, ptr %1, align 8, !tbaa !306
  store double %3, ptr %0, align 8, !tbaa !306
  %4 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 1
  %5 = load double, ptr %4, align 8, !tbaa !306
  %6 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 1
  store double %5, ptr %6, align 8, !tbaa !306
  %7 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 2
  %8 = load double, ptr %7, align 8, !tbaa !306
  %9 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 2
  store double %8, ptr %9, align 8, !tbaa !306
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi3ELi3EEESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RKT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(216) %2) local_unnamed_addr #4 comdat !prof !261 {
  tail call void @_ZSt8__fill_aIN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi3ELi3EEESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RKT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(216) %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIN6dealii6TensorILi3ELi3EEESaIS2_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !261 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.78", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi3ELi3EEESt6vectorIS3_SaIS3_EEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIN6dealii6TensorILi3ELi3EEESaIS2_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !261 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.78", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<3, 3>, std::allocator<dealii::Tensor<3, 3>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi3ELi3EEESt6vectorIS3_SaIS3_EEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #16
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6TensorILi3ELi3EEC2Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #4 comdat align 2 !prof !261 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i64 [ 0, %1 ], [ %5, %2 ]
  %4 = getelementptr inbounds i8, ptr %0, i64 %3
  tail call void @_ZN6dealii6TensorILi2ELi3EEC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %4) #14
  %5 = add nuw nsw i64 %3, 72
  %6 = icmp eq i64 %5, 216
  br i1 %6, label %7, label %2

7:                                                ; preds = %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(216) ptr @_ZNSt6vectorIN6dealii6TensorILi3ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !261 {
  %3 = load ptr, ptr %0, align 8, !tbaa !380
  %4 = getelementptr inbounds %"class.dealii::Tensor.79", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(72) ptr @_ZN6dealii6TensorILi3ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !261 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [3 x %"class.dealii::Tensor.77"], ptr %0, i64 0, i64 %3
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(72) ptr @_ZN6dealii6TensorILi2ELi3EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #6 comdat align 2 !prof !394 {
  br label %4

3:                                                ; preds = %4
  ret ptr %0

4:                                                ; preds = %2, %4
  %5 = phi i64 [ 0, %2 ], [ %9, %4 ]
  %6 = getelementptr inbounds [3 x %"class.dealii::Tensor.74"], ptr %1, i64 0, i64 %5
  %7 = getelementptr inbounds [3 x %"class.dealii::Tensor.74"], ptr %0, i64 0, i64 %5
  %8 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi1ELi3EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %6) #14
  %9 = add nuw nsw i64 %5, 1
  %10 = icmp eq i64 %9, 3
  br i1 %10, label %3, label %4, !prof !395, !llvm.loop !396
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !397 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 %3
  %5 = load double, ptr %4, align 8, !tbaa !306
  ret double %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii14PolynomialsBDMILi3EE1nEv(ptr noundef nonnull align 8 dereferenceable(184) %0) local_unnamed_addr #6 comdat align 2 !prof !261 {
  %2 = getelementptr inbounds %"class.dealii::PolynomialsBDM.56", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !349
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii14PolynomialsBDMILi3EE6degreeEv(ptr noundef nonnull align 8 dereferenceable(184) %0) local_unnamed_addr #4 comdat align 2 !prof !261 {
  %2 = tail call noundef i32 @_ZNK6dealii15PolynomialSpaceILi3EE6degreeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #14
  ret i32 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK6dealii15PolynomialSpaceILi3EE6degreeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #6 comdat align 2 !prof !261 {
  %2 = tail call noundef i64 @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(72) ptr @_ZN6dealii11SubscriptoraSERKS0_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIdSaIdEEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat align 2 {
  tail call void @_ZNSt6vectorIdSaIdEE14_M_move_assignEOS1_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEE14_M_move_assignEOS1_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::vector.5", align 8
  %4 = alloca %"class.std::allocator.7", align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #15
  call void @_ZNKSt12_Vector_baseIdSaIdEE13get_allocatorEv(ptr dead_on_unwind nonnull writable sret(%"class.std::allocator.7") align 1 %4, ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  call void @_ZNSt6vectorIdSaIdEEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) #16
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  call void @_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_data12_M_swap_dataERS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  call void @_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_data12_M_swap_dataERS2_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  %5 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %6 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  call void @_ZSt15__alloc_on_moveISaIdEEvRT_S2_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6) #14
  call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNKSt12_Vector_baseIdSaIdEE13get_allocatorEv(ptr dead_on_unwind noalias writable sret(%"class.std::allocator.7") align 1 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat align 2 {
  %3 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  tail call void @_ZNSaIdEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %3) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #6 comdat align 2 {
  tail call void @_ZNSt12_Vector_baseIdSaIdEEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_data12_M_swap_dataERS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat align 2 !prof !261 {
  %3 = alloca %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #16
  call void @_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_data12_M_copy_dataERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  call void @_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_data12_M_copy_dataERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  call void @_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_data12_M_copy_dataERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %3) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt15__alloc_on_moveISaIdEEvRT_S2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #6 comdat {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !398 {
  ret ptr %0
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #15
  tail call void @_ZSt9terminatev() #17
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !399 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIdEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #6 comdat align 2 !prof !400 {
  tail call void @_ZNSt15__new_allocatorIdEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIdEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #6 comdat align 2 !prof !400 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIdSaIdEEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #6 comdat align 2 !prof !401 {
  tail call void @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #6 comdat align 2 !prof !402 {
  tail call void @_ZNSaIdEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  tail call void @_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 !prof !403 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_data12_M_copy_dataERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat align 2 !prof !261 {
  %3 = load <2 x ptr>, ptr %1, align 8, !tbaa !404
  store <2 x ptr> %3, ptr %0, align 8, !tbaa !404
  %4 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !405
  %6 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !405
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii11Polynomials10PolynomialIdED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #6 comdat align 2 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials10PolynomialIdEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !406
  %2 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %0, i64 0, i32 1
  tail call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #16
  tail call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii11Polynomials10PolynomialIdED0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #6 comdat align 2 {
  tail call void @_ZN6dealii11Polynomials10PolynomialIdED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) #16
  tail call void @_ZdlPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIjSaIjEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !408 {
  %2 = load ptr, ptr %0, align 8, !tbaa !409
  %3 = getelementptr inbounds %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !410
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  invoke void @_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #14
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseIjSaIjEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #17
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat !prof !411 {
  tail call void @_ZSt8_DestroyIPjEvT_S1_(ptr noundef %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !412 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIjSaIjEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !408 {
  %2 = load ptr, ptr %0, align 8, !tbaa !409
  %3 = getelementptr inbounds %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !413
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 2
  invoke void @_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #14
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorIjED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #17
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPjEvT_S1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat !prof !411 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPjEEvT_S3_(ptr noundef %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPjEEvT_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !411 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 !prof !414 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !415

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIjEE10deallocateERS0_Pjm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #14
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIjEE10deallocateERS0_Pjm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorIjE10deallocateEPjm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIjE10deallocateEPjm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #6 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #6 comdat align 2 !prof !296 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIdEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #6 comdat align 2 !prof !416 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN6dealii11Polynomials10PolynomialIdEES3_EvT_S5_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat !prof !417 {
  tail call void @_ZSt8_DestroyIPN6dealii11Polynomials10PolynomialIdEEEvT_S5_(ptr noundef %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !418 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !293 {
  %2 = load ptr, ptr %0, align 8, !tbaa !294
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !419
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 96
  invoke void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE13_M_deallocateEPS3_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #14
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #17
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN6dealii11Polynomials10PolynomialIdEEEvT_S5_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat !prof !417 {
  tail call void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN6dealii11Polynomials10PolynomialIdEEEEvT_S7_(ptr noundef %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN6dealii11Polynomials10PolynomialIdEEEEvT_S7_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !417 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !420

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZSt8_DestroyIN6dealii11Polynomials10PolynomialIdEEEvPT_(ptr noundef %5) #14
  %6 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !421, !llvm.loop !422

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIN6dealii11Polynomials10PolynomialIdEEEvPT_(ptr noundef %0) local_unnamed_addr #6 comdat !prof !423 {
  %2 = load ptr, ptr %0, align 8, !tbaa !406
  %3 = load ptr, ptr %2, align 8
  tail call void %3(ptr noundef nonnull align 8 dereferenceable(96) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE13_M_deallocateEPS3_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 !prof !417 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !424

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIN6dealii11Polynomials10PolynomialIdEEEE10deallocateERS4_PS3_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #14
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #6 comdat align 2 !prof !425 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN6dealii11Polynomials10PolynomialIdEEEE10deallocateERS4_PS3_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEE10deallocateEPS3_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEE10deallocateEPS3_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #6 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !426 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.80", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS4_SaIS4_EEEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !426 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.80", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS4_SaIS4_EEEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #16
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2IN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEvEET_SC_RKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.80", align 8
  store ptr %1, ptr %5, align 8
  tail call void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %3) #16
  call void @_ZSt19__iterator_categoryIN9__gnu_cxx17__normal_iteratorIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS5_SaIS5_EEEEENSt15iterator_traitsIT_E17iterator_categoryERKSD_(ptr noundef nonnull align 8 dereferenceable(8) %5) #14
  invoke void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE19_M_range_initializeIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEvT_SC_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) #14
          to label %6 unwind label %7

6:                                                ; preds = %4
  ret void

7:                                                ; preds = %4
  %8 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  resume { ptr, i32 } %8
}

; Function Attrs: optsize
declare noundef i32 @_ZN6dealii15PolynomialSpaceILi1EE14compute_n_polsEj(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !427 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !295
  %4 = load ptr, ptr %0, align 8, !tbaa !294
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 96
  ret i64 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIjEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #6 comdat align 2 !prof !428 {
  tail call void @_ZNSt15__new_allocatorIjEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIjSaIjEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = tail call noundef i64 @_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_(i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #14
  tail call void @_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %2) #14
  invoke void @_ZNSt6vectorIjSaIjEE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #14
          to label %5 unwind label %6

5:                                                ; preds = %3
  ret void

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt12_Vector_baseIjSaIjEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIjED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #6 comdat align 2 !prof !429 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIjSaIjEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !430 {
  %3 = load ptr, ptr %0, align 8, !tbaa !409
  %4 = getelementptr inbounds i32, ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS4_SaIS4_EEEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #6 comdat align 2 !prof !431 {
  %3 = load ptr, ptr %1, align 8, !tbaa !404
  store ptr %3, ptr %0, align 8, !tbaa !432
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #6 comdat align 2 !prof !434 {
  tail call void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE12_Vector_implC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE19_M_range_initializeIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEvT_SC_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #4 comdat align 2 !prof !434 {
  %4 = tail call noundef i64 @_ZSt8distanceIN9__gnu_cxx17__normal_iteratorIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS5_SaIS5_EEEEENSt15iterator_traitsIT_E15difference_typeESD_SD_(ptr %1, ptr %2) #14
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %6 = tail call noundef i64 @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE17_S_check_init_lenEmRKS4_(i64 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #14
  %7 = tail call noundef ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %6) #14
  store ptr %7, ptr %0, align 8, !tbaa !294
  %8 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %7, i64 %4
  %9 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %8, ptr %9, align 8, !tbaa !419
  %10 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %11 = tail call noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS5_SaIS5_EEEEPS5_S5_ET0_T_SE_SD_RSaIT1_E(ptr %1, ptr %2, ptr noundef %7, ptr noundef nonnull align 1 dereferenceable(1) %10) #14
  %12 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %11, ptr %12, align 8, !tbaa !295
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIN9__gnu_cxx17__normal_iteratorIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS5_SaIS5_EEEEENSt15iterator_traitsIT_E17iterator_categoryERKSD_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #6 comdat !prof !296 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE12_Vector_implC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #6 comdat align 2 !prof !435 {
  tail call void @_ZNSaIN6dealii11Polynomials10PolynomialIdEEEC2ERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  tail call void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 !prof !436 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEEC2ERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #6 comdat align 2 !prof !437 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIN9__gnu_cxx17__normal_iteratorIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS5_SaIS5_EEEEENSt15iterator_traitsIT_E15difference_typeESD_SD_(ptr %0, ptr %1) local_unnamed_addr #4 comdat !prof !434 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.80", align 8
  store ptr %0, ptr %3, align 8
  call void @_ZSt19__iterator_categoryIN9__gnu_cxx17__normal_iteratorIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS5_SaIS5_EEEEENSt15iterator_traitsIT_E17iterator_categoryERKSD_(ptr noundef nonnull align 8 dereferenceable(8) %3) #14
  %4 = call noundef i64 @_ZSt10__distanceIN9__gnu_cxx17__normal_iteratorIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS5_SaIS5_EEEEENSt15iterator_traitsIT_E15difference_typeESD_SD_St26random_access_iterator_tag(ptr %0, ptr %1) #14
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !438 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4, !prof !439

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaIN6dealii11Polynomials10PolynomialIdEEEE8allocateERS4_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #14
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE17_S_check_init_lenEmRKS4_(i64 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #4 comdat align 2 !prof !440 {
  %3 = alloca %"class.std::allocator", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #15
  call void @_ZNSaIN6dealii11Polynomials10PolynomialIdEEEC2ERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  %4 = call noundef i64 @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE11_S_max_sizeERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %3) #16
  %5 = icmp ult i64 %4, %0
  call void @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #15
  br i1 %5, label %6, label %7, !prof !441

6:                                                ; preds = %2
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #19
  unreachable

7:                                                ; preds = %2
  ret i64 %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS5_SaIS5_EEEEPS5_S5_ET0_T_SE_SD_RSaIT1_E(ptr %0, ptr %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #4 comdat !prof !426 {
  %5 = tail call noundef ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS5_SaIS5_EEEEPS5_ET0_T_SE_SD_(ptr %0, ptr %1, ptr noundef %2) #14
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIN9__gnu_cxx17__normal_iteratorIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS5_SaIS5_EEEEENSt15iterator_traitsIT_E15difference_typeESD_SD_St26random_access_iterator_tag(ptr %0, ptr %1) local_unnamed_addr #6 comdat !prof !434 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.80", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.80", align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = call noundef i64 @_ZN9__gnu_cxxmiIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS4_SaIS4_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSD_SG_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3) #16
  ret i64 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN9__gnu_cxxmiIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS4_SaIS4_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSD_SG_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat !prof !434 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS4_SaIS4_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  %4 = load ptr, ptr %3, align 8, !tbaa !404
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS4_SaIS4_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  %6 = load ptr, ptr %5, align 8, !tbaa !404
  %7 = ptrtoint ptr %4 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = sdiv exact i64 %9, 96
  ret i64 %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS4_SaIS4_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #6 comdat align 2 !prof !442 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIN6dealii11Polynomials10PolynomialIdEEEE8allocateERS4_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #14
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !443

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 192153584101141162
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #19
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #19
  unreachable

10:                                               ; preds = %3
  %11 = mul i64 %1, 96
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #20
  ret ptr %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #6 comdat align 2 !prof !444 {
  ret i64 96076792050570581
}

; Function Attrs: noreturn optsize
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #9

; Function Attrs: noreturn optsize
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #9

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE11_S_max_sizeERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !445 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  store i64 96076792050570581, ptr %2, align 8, !tbaa !446
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %4 = tail call noundef i64 @_ZNSt16allocator_traitsISaIN6dealii11Polynomials10PolynomialIdEEEE8max_sizeERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  store i64 %4, ptr %3, align 8, !tbaa !446
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #14
  %6 = load i64, ptr %5, align 8, !tbaa !446
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIN6dealii11Polynomials10PolynomialIdEEEC2ERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #6 comdat align 2 !prof !437 {
  tail call void @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEEC2ERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  ret void
}

; Function Attrs: noreturn optsize
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaIN6dealii11Polynomials10PolynomialIdEEEE8max_sizeERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #6 comdat align 2 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat !prof !448 {
  %3 = load i64, ptr %1, align 8, !tbaa !446
  %4 = load i64, ptr %0, align 8, !tbaa !446
  %5 = icmp ult i64 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0, !prof !449
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #6 comdat align 2 !prof !445 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  ret i64 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS5_SaIS5_EEEEPS5_ET0_T_SE_SD_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #4 comdat {
  %4 = tail call noundef ptr @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS7_SaIS7_EEEEPS7_EET0_T_SG_SF_(ptr %0, ptr %1, ptr noundef %2) #14
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS7_SaIS7_EEEEPS7_EET0_T_SG_SF_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 !prof !426 {
  %4 = tail call noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS5_SaIS5_EEEEPS5_ET0_T_SE_SD_(ptr %0, ptr %1, ptr noundef %2) #14
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS5_SaIS5_EEEEPS5_ET0_T_SE_SD_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 !prof !426 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.80", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.80", align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS4_SaIS4_EEEEbRKNS_17__normal_iteratorIT_T0_EESF_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #16
  br i1 %6, label %7, label %19, !prof !450

7:                                                ; preds = %3, %10
  %8 = phi ptr [ %12, %10 ], [ %2, %3 ]
  %9 = call noundef nonnull align 8 dereferenceable(96) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS4_SaIS4_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #16
  invoke void @_ZSt10_ConstructIN6dealii11Polynomials10PolynomialIdEEJRKS3_EEvPT_DpOT0_(ptr noundef %8, ptr noundef nonnull align 8 dereferenceable(96) %9) #14
          to label %10 unwind label %14

10:                                               ; preds = %7
  %11 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS4_SaIS4_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #16
  %12 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %8, i64 1
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS4_SaIS4_EEEEbRKNS_17__normal_iteratorIT_T0_EESF_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #16
  br i1 %13, label %7, label %19, !prof !451, !llvm.loop !452

14:                                               ; preds = %7
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  %17 = call ptr @__cxa_begin_catch(ptr %16) #15
  invoke void @_ZSt8_DestroyIPN6dealii11Polynomials10PolynomialIdEEEvT_S5_(ptr noundef %2, ptr noundef %8) #14
          to label %18 unwind label %21

18:                                               ; preds = %14
  invoke void @__cxa_rethrow() #21
          to label %27 unwind label %21

19:                                               ; preds = %10, %3
  %20 = phi ptr [ %2, %3 ], [ %12, %10 ]
  ret ptr %20

21:                                               ; preds = %18, %14
  %22 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %23 unwind label %24

23:                                               ; preds = %21
  resume { ptr, i32 } %22

24:                                               ; preds = %21
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #17
  unreachable

27:                                               ; preds = %18
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxxneIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS4_SaIS4_EEEEbRKNS_17__normal_iteratorIT_T0_EESF_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat !prof !453 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS4_SaIS4_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  %4 = load ptr, ptr %3, align 8, !tbaa !404
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS4_SaIS4_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  %6 = load ptr, ptr %5, align 8, !tbaa !404
  %7 = icmp ne ptr %4, %6
  ret i1 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructIN6dealii11Polynomials10PolynomialIdEEJRKS3_EEvPT_DpOT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #4 comdat {
  tail call void @_ZN6dealii11Polynomials10PolynomialIdEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(96) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS4_SaIS4_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #6 comdat align 2 !prof !454 {
  %2 = load ptr, ptr %0, align 8, !tbaa !432
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS4_SaIS4_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #6 comdat align 2 !prof !454 {
  %2 = load ptr, ptr %0, align 8, !tbaa !432
  %3 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %2, i64 1
  store ptr %3, ptr %0, align 8, !tbaa !432
  ret ptr %0
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii11Polynomials10PolynomialIdEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
  tail call void @_ZN6dealii11SubscriptorC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) #14
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials10PolynomialIdEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !406
  %3 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %1, i64 0, i32 1
  invoke void @_ZNSt6vectorIdSaIdEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #14
          to label %5 unwind label %6

5:                                                ; preds = %2
  ret void

6:                                                ; preds = %2
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #16
  resume { ptr, i32 } %7
}

; Function Attrs: optsize
declare void @_ZN6dealii11SubscriptorC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !455 {
  %3 = alloca %"class.std::allocator.7", align 1
  %4 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #15
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIdEdE17_S_select_on_copyERKS1_(ptr dead_on_unwind nonnull writable sret(%"class.std::allocator.7") align 1 %3, ptr noundef nonnull align 1 dereferenceable(1) %5) #14
  invoke void @_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %3) #14
          to label %6 unwind label %14

6:                                                ; preds = %2
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #15
  %7 = call ptr @_ZNKSt6vectorIdSaIdEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  %8 = call ptr @_ZNKSt6vectorIdSaIdEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  %9 = load ptr, ptr %0, align 8, !tbaa !304
  %10 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %11 = invoke noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPddET0_T_SA_S9_RSaIT1_E(ptr %7, ptr %8, ptr noundef %9, ptr noundef nonnull align 1 dereferenceable(1) %10) #14
          to label %12 unwind label %16

12:                                               ; preds = %6
  %13 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !305
  ret void

14:                                               ; preds = %2
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #15
  br label %18

16:                                               ; preds = %6
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12_Vector_baseIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  resume { ptr, i32 } %19
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx14__alloc_traitsISaIdEdE17_S_select_on_copyERKS1_(ptr dead_on_unwind noalias writable sret(%"class.std::allocator.7") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #4 comdat align 2 !prof !455 {
  tail call void @_ZNSt16allocator_traitsISaIdEE37select_on_container_copy_constructionERKS0_(ptr dead_on_unwind writable sret(%"class.std::allocator.7") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !456 {
  tail call void @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %2) #16
  invoke void @_ZNSt12_Vector_baseIdSaIdEE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #14
          to label %4 unwind label %5

4:                                                ; preds = %3
  ret void

5:                                                ; preds = %3
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPddET0_T_SA_S9_RSaIT1_E(ptr %0, ptr %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #4 comdat !prof !457 {
  %5 = tail call noundef ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) #14
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorIdSaIdEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !458 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.81", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorIdSaIdEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !459 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.81", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #16
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !303 {
  %2 = load ptr, ptr %0, align 8, !tbaa !304
  %3 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !405
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  invoke void @_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #14
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIdEE37select_on_container_copy_constructionERKS0_(ptr dead_on_unwind noalias writable sret(%"class.std::allocator.7") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #6 comdat align 2 {
  tail call void @_ZNSaIdEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIdSaIdEE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !456 {
  %3 = tail call noundef ptr @_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #14
  store ptr %3, ptr %0, align 8, !tbaa !304
  %4 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !305
  %5 = getelementptr inbounds double, ptr %3, i64 %1
  %6 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !405
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #6 comdat align 2 !prof !460 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !461 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4, !prof !462

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaIdEE8allocateERS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #14
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIdEE8allocateERS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorIdE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #14
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIdE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorIdE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !443

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 2305843009213693951
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #19
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #19
  unreachable

10:                                               ; preds = %3
  %11 = shl i64 %1, 3
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #20
  ret ptr %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIdE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #6 comdat align 2 !prof !463 {
  ret i64 1152921504606846975
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #4 comdat {
  %4 = tail call noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdEET0_T_SC_SB_(ptr %0, ptr %1, ptr noundef %2) #14
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdEET0_T_SC_SB_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 !prof !457 {
  %4 = tail call noundef ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) #14
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #4 comdat !prof !457 {
  %4 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEET_S8_(ptr %0) #14
  %5 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEET_S8_(ptr %1) #14
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_(ptr %4, ptr %5, ptr noundef %2) #14
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #4 comdat !prof !457 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !404
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %0) #16
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPKdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %1) #16
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPdET_S1_(ptr noundef %2) #16
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #14
  %9 = call noundef ptr @_ZSt12__niter_wrapIPdET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #14
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEET_S8_(ptr %0) local_unnamed_addr #6 comdat !prof !464 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPdET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #6 comdat !prof !465 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat !prof !466 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPKdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %0) local_unnamed_addr #6 comdat !prof !464 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.81", align 8
  store ptr %0, ptr %2, align 8
  %3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #16
  %4 = load ptr, ptr %3, align 8, !tbaa !404
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPdET_S1_(ptr noundef %0) local_unnamed_addr #6 comdat !prof !467 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat !prof !466 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 !prof !468 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %9, label %8, !prof !469

8:                                                ; preds = %3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %2, ptr align 8 %0, i64 %6, i1 false)
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds i8, ptr %2, i64 %6
  ret ptr %10
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #11

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #6 comdat align 2 !prof !464 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #6 comdat align 2 !prof !470 {
  %3 = load ptr, ptr %1, align 8, !tbaa !404
  store ptr %3, ptr %0, align 8, !tbaa !471
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 !prof !473 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !474

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #14
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorIdE10deallocateEPdm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIdE10deallocateEPdm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #6 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIjEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #6 comdat align 2 !prof !475 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_(i64 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #4 comdat align 2 !prof !476 {
  %3 = alloca %"class.std::allocator.2", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #15
  call void @_ZNSaIjEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  %4 = call noundef i64 @_ZNSt6vectorIjSaIjEE11_S_max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %3) #16
  %5 = icmp ult i64 %4, %0
  call void @_ZNSt15__new_allocatorIjED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #15
  br i1 %5, label %6, label %7, !prof !477

6:                                                ; preds = %2
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #19
  unreachable

7:                                                ; preds = %2
  ret i64 %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !478 {
  tail call void @_ZNSt12_Vector_baseIjSaIjEE12_Vector_implC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %2) #16
  invoke void @_ZNSt12_Vector_baseIjSaIjEE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #14
          to label %4 unwind label %5

4:                                                ; preds = %3
  ret void

5:                                                ; preds = %3
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt15__new_allocatorIjED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIjSaIjEE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !409
  %4 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %5 = tail call noundef ptr @_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E(ptr noundef %3, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %4) #14
  %6 = getelementptr inbounds %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %5, ptr %6, align 8, !tbaa !410
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIjSaIjEE11_S_max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #6 comdat align 2 !prof !479 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  store i64 2305843009213693951, ptr %2, align 8, !tbaa !446
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %4 = tail call noundef i64 @_ZNSt16allocator_traitsISaIjEE8max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  store i64 %4, ptr %3, align 8, !tbaa !446
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #14
  %6 = load i64, ptr %5, align 8, !tbaa !446
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIjEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #6 comdat align 2 !prof !480 {
  tail call void @_ZNSt15__new_allocatorIjEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaIjEE8max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #6 comdat align 2 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIjE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIjE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #6 comdat align 2 !prof !479 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIjE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIjE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #6 comdat align 2 !prof !481 {
  ret i64 2305843009213693951
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIjEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #6 comdat align 2 !prof !480 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIjSaIjEE12_Vector_implC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #6 comdat align 2 !prof !482 {
  tail call void @_ZNSaIjEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  tail call void @_ZNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIjSaIjEE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !478 {
  %3 = tail call noundef ptr @_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #14
  store ptr %3, ptr %0, align 8, !tbaa !409
  %4 = getelementptr inbounds %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !410
  %5 = getelementptr inbounds i32, ptr %3, i64 %1
  %6 = getelementptr inbounds %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !413
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 !prof !483 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !484 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4, !prof !485

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaIjEE8allocateERS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #14
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIjEE8allocateERS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorIjE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #14
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIjE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorIjE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !443

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 4611686018427387903
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #19
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #19
  unreachable

10:                                               ; preds = %3
  %11 = shl i64 %1, 2
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #20
  ret ptr %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat {
  %4 = tail call noundef ptr @_ZSt25__uninitialized_default_nIPjmET_S1_T0_(ptr noundef %0, i64 noundef %1) #14
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt25__uninitialized_default_nIPjmET_S1_T0_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #4 comdat {
  %3 = tail call noundef ptr @_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPjmEET_S3_T0_(ptr noundef %0, i64 noundef %1) #14
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPjmEET_S3_T0_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  tail call void @_ZSt10_ConstructIjJEEvPT_DpOT0_(ptr noundef %0) #14
  %5 = getelementptr inbounds i32, ptr %0, i64 1
  %6 = add i64 %1, -1
  %7 = tail call noundef ptr @_ZSt6fill_nIPjmjET_S1_T0_RKT1_(ptr noundef nonnull %5, i64 noundef %6, ptr noundef nonnull align 4 dereferenceable(4) %0) #14
  br label %8

8:                                                ; preds = %4, %2
  %9 = phi ptr [ %7, %4 ], [ %0, %2 ]
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructIjJEEvPT_DpOT0_(ptr noundef %0) local_unnamed_addr #6 comdat {
  store i32 0, ptr %0, align 4, !tbaa !290
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt6fill_nIPjmjET_S1_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #4 comdat !prof !486 {
  %4 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !404
  %5 = tail call noundef i64 @_ZSt17__size_to_integerm(i64 noundef %1) #14
  call void @_ZSt19__iterator_categoryIPjENSt15iterator_traitsIT_E17iterator_categoryERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %4) #14
  %6 = call noundef ptr @_ZSt10__fill_n_aIPjmjET_S1_T0_RKT1_St26random_access_iterator_tag(ptr noundef %0, i64 noundef %5, ptr noundef nonnull align 4 dereferenceable(4) %2) #14
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt10__fill_n_aIPjmjET_S1_T0_RKT1_St26random_access_iterator_tag(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #4 comdat !prof !486 {
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %7, label %5, !prof !487

5:                                                ; preds = %3
  %6 = getelementptr inbounds i32, ptr %0, i64 %1
  tail call void @_ZSt8__fill_aIPjjEvT_S1_RKT0_(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull align 4 dereferenceable(4) %2) #14
  br label %7

7:                                                ; preds = %3, %5
  %8 = phi ptr [ %6, %5 ], [ %0, %3 ]
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt17__size_to_integerm(i64 noundef %0) local_unnamed_addr #6 comdat !prof !488 {
  ret i64 %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPjENSt15iterator_traitsIT_E17iterator_categoryERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #6 comdat !prof !486 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8__fill_aIPjjEvT_S1_RKT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #4 comdat !prof !489 {
  tail call void @_ZSt9__fill_a1IPjjEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt9__fill_a1IPjjEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #6 comdat !prof !490 {
  %4 = load i32, ptr %2, align 4, !tbaa !290
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %10, label %6, !prof !491

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  store i32 %4, ptr %7, align 4, !tbaa !290
  %8 = getelementptr inbounds i32, ptr %7, i64 1
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %10, label %6, !prof !492, !llvm.loop !493

10:                                               ; preds = %6, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2EmRKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !494 {
  tail call void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE12_Vector_implC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %2) #16
  invoke void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #14
          to label %4 unwind label %5

4:                                                ; preds = %3
  ret void

5:                                                ; preds = %3
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !294
  %4 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %5 = tail call noundef ptr @_ZSt27__uninitialized_default_n_aIPN6dealii11Polynomials10PolynomialIdEEmS3_ET_S5_T0_RSaIT1_E(ptr noundef %3, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %4) #14
  %6 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %5, ptr %6, align 8, !tbaa !295
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !494 {
  %3 = tail call noundef ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #14
  store ptr %3, ptr %0, align 8, !tbaa !294
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !295
  %5 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %3, i64 %1
  %6 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !419
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__uninitialized_default_n_aIPN6dealii11Polynomials10PolynomialIdEEmS3_ET_S5_T0_RSaIT1_E(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat {
  %4 = tail call noundef ptr @_ZSt25__uninitialized_default_nIPN6dealii11Polynomials10PolynomialIdEEmET_S5_T0_(ptr noundef %0, i64 noundef %1) #14
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt25__uninitialized_default_nIPN6dealii11Polynomials10PolynomialIdEEmET_S5_T0_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #4 comdat {
  %3 = tail call noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6dealii11Polynomials10PolynomialIdEEmEET_S7_T0_(ptr noundef %0, i64 noundef %1) #14
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6dealii11Polynomials10PolynomialIdEEmEET_S7_T0_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %16, label %4

4:                                                ; preds = %2, %7
  %5 = phi ptr [ %9, %7 ], [ %0, %2 ]
  %6 = phi i64 [ %8, %7 ], [ %1, %2 ]
  invoke void @_ZSt10_ConstructIN6dealii11Polynomials10PolynomialIdEEJEEvPT_DpOT0_(ptr noundef %5) #14
          to label %7 unwind label %11

7:                                                ; preds = %4
  %8 = add i64 %6, -1
  %9 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %5, i64 1
  %10 = icmp eq i64 %8, 0
  br i1 %10, label %16, label %4, !llvm.loop !495

11:                                               ; preds = %4
  %12 = landingpad { ptr, i32 }
          catch ptr null
  %13 = extractvalue { ptr, i32 } %12, 0
  %14 = tail call ptr @__cxa_begin_catch(ptr %13) #15
  invoke void @_ZSt8_DestroyIPN6dealii11Polynomials10PolynomialIdEEEvT_S5_(ptr noundef %0, ptr noundef %5) #14
          to label %15 unwind label %18

15:                                               ; preds = %11
  invoke void @__cxa_rethrow() #21
          to label %24 unwind label %18

16:                                               ; preds = %7, %2
  %17 = phi ptr [ %0, %2 ], [ %9, %7 ]
  ret ptr %17

18:                                               ; preds = %15, %11
  %19 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %20 unwind label %21

20:                                               ; preds = %18
  resume { ptr, i32 } %19

21:                                               ; preds = %18
  %22 = landingpad { ptr, i32 }
          catch ptr null
  %23 = extractvalue { ptr, i32 } %22, 0
  tail call void @__clang_call_terminate(ptr %23) #17
  unreachable

24:                                               ; preds = %15
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructIN6dealii11Polynomials10PolynomialIdEEJEEvPT_DpOT0_(ptr noundef %0) local_unnamed_addr #4 comdat {
  tail call void @_ZN6dealii11Polynomials10PolynomialIdEC2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii11Polynomials10PolynomialIdEC2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #4 comdat align 2 !prof !496 {
  tail call void @_ZN6dealii11SubscriptorC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #14
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials10PolynomialIdEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !406
  %2 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %0, i64 0, i32 1
  tail call void @_ZNSt6vectorIdSaIdEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #16
  ret void
}

; Function Attrs: optsize
declare void @_ZN6dealii11SubscriptorC2Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 !prof !497 {
  tail call void @_ZNSt12_Vector_baseIdSaIdEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIdSaIdEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 !prof !497 {
  tail call void @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 !prof !497 {
  tail call void @_ZNSaIdEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  tail call void @_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_(i64 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #4 comdat align 2 !prof !498 {
  %3 = alloca %"class.std::allocator.7", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #15
  call void @_ZNSaIdEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  %4 = call noundef i64 @_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %3) #16
  %5 = icmp ult i64 %4, %0
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #15
  br i1 %5, label %6, label %7, !prof !499

6:                                                ; preds = %2
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #19
  unreachable

7:                                                ; preds = %2
  ret i64 %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !304
  %4 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %5 = tail call noundef ptr @_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E(ptr noundef %3, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %4) #14
  %6 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %5, ptr %6, align 8, !tbaa !305
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #6 comdat align 2 !prof !500 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  store i64 1152921504606846975, ptr %2, align 8, !tbaa !446
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %4 = tail call noundef i64 @_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  store i64 %4, ptr %3, align 8, !tbaa !446
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #14
  %6 = load i64, ptr %5, align 8, !tbaa !446
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #6 comdat align 2 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIdE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIdE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #6 comdat align 2 !prof !500 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIdE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  ret i64 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat {
  %4 = tail call noundef ptr @_ZSt25__uninitialized_default_nIPdmET_S1_T0_(ptr noundef %0, i64 noundef %1) #14
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt25__uninitialized_default_nIPdmET_S1_T0_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #4 comdat {
  %3 = tail call noundef ptr @_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_(ptr noundef %0, i64 noundef %1) #14
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  tail call void @_ZSt10_ConstructIdJEEvPT_DpOT0_(ptr noundef %0) #14
  %5 = getelementptr inbounds double, ptr %0, i64 1
  %6 = add i64 %1, -1
  %7 = tail call noundef ptr @_ZSt6fill_nIPdmdET_S1_T0_RKT1_(ptr noundef nonnull %5, i64 noundef %6, ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  br label %8

8:                                                ; preds = %4, %2
  %9 = phi ptr [ %7, %4 ], [ %0, %2 ]
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructIdJEEvPT_DpOT0_(ptr noundef %0) local_unnamed_addr #6 comdat {
  store double 0.000000e+00, ptr %0, align 8, !tbaa !306
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt6fill_nIPdmdET_S1_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat !prof !501 {
  %4 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !404
  %5 = tail call noundef i64 @_ZSt17__size_to_integerm(i64 noundef %1) #14
  call void @_ZSt19__iterator_categoryIPdENSt15iterator_traitsIT_E17iterator_categoryERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %4) #14
  %6 = call noundef ptr @_ZSt10__fill_n_aIPdmdET_S1_T0_RKT1_St26random_access_iterator_tag(ptr noundef %0, i64 noundef %5, ptr noundef nonnull align 8 dereferenceable(8) %2) #14
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt10__fill_n_aIPdmdET_S1_T0_RKT1_St26random_access_iterator_tag(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat !prof !501 {
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %7, label %5, !prof !502

5:                                                ; preds = %3
  %6 = getelementptr inbounds double, ptr %0, i64 %1
  tail call void @_ZSt8__fill_aIPddEvT_S1_RKT0_(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull align 8 dereferenceable(8) %2) #14
  br label %7

7:                                                ; preds = %3, %5
  %8 = phi ptr [ %6, %5 ], [ %0, %3 ]
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPdENSt15iterator_traitsIT_E17iterator_categoryERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #6 comdat !prof !503 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8__fill_aIPddEvT_S1_RKT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat !prof !504 {
  tail call void @_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #6 comdat !prof !505 {
  %4 = load double, ptr %2, align 8, !tbaa !306
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %10, label %6, !prof !506

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  store double %4, ptr %7, align 8, !tbaa !306
  %8 = getelementptr inbounds double, ptr %7, i64 1
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %10, label %6, !prof !507, !llvm.loop !508

10:                                               ; preds = %6, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi1EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #6 comdat align 2 !prof !261 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE17_S_check_init_lenEmRKS3_(i64 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #4 comdat align 2 !prof !261 {
  %3 = alloca %"class.std::allocator.12", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #15
  call void @_ZNSaIN6dealii6TensorILi1ELi1EEEEC2ERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  %4 = call noundef i64 @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE11_S_max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %3) #16
  %5 = icmp ult i64 %4, %0
  call void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi1EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #15
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #19
  unreachable

7:                                                ; preds = %2
  ret i64 %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !261 {
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE12_Vector_implC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %2) #16
  invoke void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #14
          to label %4 unwind label %5

4:                                                ; preds = %3
  ret void

5:                                                ; preds = %3
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi1EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !301
  %4 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %5 = tail call noundef ptr @_ZSt27__uninitialized_default_n_aIPN6dealii6TensorILi1ELi1EEEmS2_ET_S4_T0_RSaIT1_E(ptr noundef %3, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %4) #14
  %6 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 1>, std::allocator<dealii::Tensor<1, 1>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %5, ptr %6, align 8, !tbaa !302
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !261 {
  %2 = load ptr, ptr %0, align 8, !tbaa !301
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 1>, std::allocator<dealii::Tensor<1, 1>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !509
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  invoke void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #14
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi1EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE11_S_max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #6 comdat align 2 !prof !261 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  store i64 1152921504606846975, ptr %2, align 8, !tbaa !446
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %4 = tail call noundef i64 @_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi1EEEEE8max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  store i64 %4, ptr %3, align 8, !tbaa !446
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #14
  %6 = load i64, ptr %5, align 8, !tbaa !446
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIN6dealii6TensorILi1ELi1EEEEC2ERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #6 comdat align 2 !prof !261 {
  tail call void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi1EEEEC2ERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi1EEEEE8max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #6 comdat align 2 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi1EEEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi1EEEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #6 comdat align 2 !prof !261 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi1EEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi1EEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #6 comdat align 2 !prof !261 {
  ret i64 1152921504606846975
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi1EEEEC2ERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #6 comdat align 2 !prof !261 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE12_Vector_implC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #6 comdat align 2 !prof !261 {
  tail call void @_ZNSaIN6dealii6TensorILi1ELi1EEEEC2ERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !261 {
  %3 = tail call noundef ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #14
  store ptr %3, ptr %0, align 8, !tbaa !301
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 1>, std::allocator<dealii::Tensor<1, 1>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !302
  %5 = getelementptr inbounds %"class.dealii::Tensor", ptr %3, i64 %1
  %6 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 1>, std::allocator<dealii::Tensor<1, 1>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !509
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi1EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #6 comdat align 2 !prof !261 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 !prof !261 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !261 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi1EEEEE8allocateERS3_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #14
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi1EEEEE8allocateERS3_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi1EEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #14
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi1EEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi1EEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !443

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 2305843009213693951
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #19
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #19
  unreachable

10:                                               ; preds = %3
  %11 = shl i64 %1, 3
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #20
  ret ptr %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__uninitialized_default_n_aIPN6dealii6TensorILi1ELi1EEEmS2_ET_S4_T0_RSaIT1_E(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat {
  %4 = tail call noundef ptr @_ZSt25__uninitialized_default_nIPN6dealii6TensorILi1ELi1EEEmET_S4_T0_(ptr noundef %0, i64 noundef %1) #14
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !261 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt25__uninitialized_default_nIPN6dealii6TensorILi1ELi1EEEmET_S4_T0_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #4 comdat {
  %3 = tail call noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6dealii6TensorILi1ELi1EEEmEET_S6_T0_(ptr noundef %0, i64 noundef %1) #14
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6dealii6TensorILi1ELi1EEEmEET_S6_T0_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %16, label %4

4:                                                ; preds = %2, %7
  %5 = phi ptr [ %9, %7 ], [ %0, %2 ]
  %6 = phi i64 [ %8, %7 ], [ %1, %2 ]
  invoke void @_ZSt10_ConstructIN6dealii6TensorILi1ELi1EEEJEEvPT_DpOT0_(ptr noundef %5) #14
          to label %7 unwind label %11

7:                                                ; preds = %4
  %8 = add i64 %6, -1
  %9 = getelementptr inbounds %"class.dealii::Tensor", ptr %5, i64 1
  %10 = icmp eq i64 %8, 0
  br i1 %10, label %16, label %4, !llvm.loop !510

11:                                               ; preds = %4
  %12 = landingpad { ptr, i32 }
          catch ptr null
  %13 = extractvalue { ptr, i32 } %12, 0
  %14 = tail call ptr @__cxa_begin_catch(ptr %13) #15
  invoke void @_ZSt8_DestroyIPN6dealii6TensorILi1ELi1EEEEvT_S4_(ptr noundef %0, ptr noundef %5) #14
          to label %15 unwind label %18

15:                                               ; preds = %11
  invoke void @__cxa_rethrow() #21
          to label %24 unwind label %18

16:                                               ; preds = %7, %2
  %17 = phi ptr [ %0, %2 ], [ %9, %7 ]
  ret ptr %17

18:                                               ; preds = %15, %11
  %19 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %20 unwind label %21

20:                                               ; preds = %18
  resume { ptr, i32 } %19

21:                                               ; preds = %18
  %22 = landingpad { ptr, i32 }
          catch ptr null
  %23 = extractvalue { ptr, i32 } %22, 0
  tail call void @__clang_call_terminate(ptr %23) #17
  unreachable

24:                                               ; preds = %15
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructIN6dealii6TensorILi1ELi1EEEJEEvPT_DpOT0_(ptr noundef %0) local_unnamed_addr #4 comdat {
  tail call void @_ZN6dealii6TensorILi1ELi1EEC2Eb(ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext true) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN6dealii6TensorILi1ELi1EEEEvT_S4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat !prof !261 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii6TensorILi1ELi1EEEEEvT_S6_(ptr noundef %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii6TensorILi1ELi1EEEEEvT_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !261 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 !prof !261 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi1EEEEE10deallocateERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #14
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi1EEEEE10deallocateERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi1EEEE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi1EEEE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #6 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi1EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #6 comdat align 2 !prof !261 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE17_S_check_init_lenEmRKS3_(i64 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #4 comdat align 2 !prof !261 {
  %3 = alloca %"class.std::allocator.17", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #15
  call void @_ZNSaIN6dealii6TensorILi2ELi1EEEEC2ERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  %4 = call noundef i64 @_ZNSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE11_S_max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %3) #16
  %5 = icmp ult i64 %4, %0
  call void @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi1EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #15
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #19
  unreachable

7:                                                ; preds = %2
  ret i64 %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !261 {
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EE12_Vector_implC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %2) #16
  invoke void @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #14
          to label %4 unwind label %5

4:                                                ; preds = %3
  ret void

5:                                                ; preds = %3
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi1EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !299
  %4 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %5 = tail call noundef ptr @_ZSt27__uninitialized_default_n_aIPN6dealii6TensorILi2ELi1EEEmS2_ET_S4_T0_RSaIT1_E(ptr noundef %3, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %4) #14
  %6 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<2, 1>, std::allocator<dealii::Tensor<2, 1>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %5, ptr %6, align 8, !tbaa !300
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !261 {
  %2 = load ptr, ptr %0, align 8, !tbaa !299
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<2, 1>, std::allocator<dealii::Tensor<2, 1>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !511
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  invoke void @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #14
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi1EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE11_S_max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #6 comdat align 2 !prof !261 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  store i64 1152921504606846975, ptr %2, align 8, !tbaa !446
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %4 = tail call noundef i64 @_ZNSt16allocator_traitsISaIN6dealii6TensorILi2ELi1EEEEE8max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  store i64 %4, ptr %3, align 8, !tbaa !446
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #14
  %6 = load i64, ptr %5, align 8, !tbaa !446
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIN6dealii6TensorILi2ELi1EEEEC2ERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #6 comdat align 2 !prof !261 {
  tail call void @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi1EEEEC2ERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaIN6dealii6TensorILi2ELi1EEEEE8max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #6 comdat align 2 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi2ELi1EEEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi2ELi1EEEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #6 comdat align 2 !prof !261 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi2ELi1EEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi2ELi1EEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #6 comdat align 2 !prof !261 {
  ret i64 1152921504606846975
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi1EEEEC2ERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #6 comdat align 2 !prof !261 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EE12_Vector_implC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #6 comdat align 2 !prof !261 {
  tail call void @_ZNSaIN6dealii6TensorILi2ELi1EEEEC2ERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !261 {
  %3 = tail call noundef ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #14
  store ptr %3, ptr %0, align 8, !tbaa !299
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<2, 1>, std::allocator<dealii::Tensor<2, 1>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !300
  %5 = getelementptr inbounds %"class.dealii::Tensor.29", ptr %3, i64 %1
  %6 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<2, 1>, std::allocator<dealii::Tensor<2, 1>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !511
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi1EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #6 comdat align 2 !prof !261 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 !prof !261 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !261 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaIN6dealii6TensorILi2ELi1EEEEE8allocateERS3_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #14
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIN6dealii6TensorILi2ELi1EEEEE8allocateERS3_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi1EEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #14
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi1EEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi2ELi1EEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !443

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 2305843009213693951
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #19
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #19
  unreachable

10:                                               ; preds = %3
  %11 = shl i64 %1, 3
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #20
  ret ptr %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__uninitialized_default_n_aIPN6dealii6TensorILi2ELi1EEEmS2_ET_S4_T0_RSaIT1_E(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat {
  %4 = tail call noundef ptr @_ZSt25__uninitialized_default_nIPN6dealii6TensorILi2ELi1EEEmET_S4_T0_(ptr noundef %0, i64 noundef %1) #14
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !261 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt25__uninitialized_default_nIPN6dealii6TensorILi2ELi1EEEmET_S4_T0_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #4 comdat {
  %3 = tail call noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6dealii6TensorILi2ELi1EEEmEET_S6_T0_(ptr noundef %0, i64 noundef %1) #14
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6dealii6TensorILi2ELi1EEEmEET_S6_T0_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %16, label %4

4:                                                ; preds = %2, %7
  %5 = phi ptr [ %9, %7 ], [ %0, %2 ]
  %6 = phi i64 [ %8, %7 ], [ %1, %2 ]
  invoke void @_ZSt10_ConstructIN6dealii6TensorILi2ELi1EEEJEEvPT_DpOT0_(ptr noundef %5) #14
          to label %7 unwind label %11

7:                                                ; preds = %4
  %8 = add i64 %6, -1
  %9 = getelementptr inbounds %"class.dealii::Tensor.29", ptr %5, i64 1
  %10 = icmp eq i64 %8, 0
  br i1 %10, label %16, label %4, !llvm.loop !512

11:                                               ; preds = %4
  %12 = landingpad { ptr, i32 }
          catch ptr null
  %13 = extractvalue { ptr, i32 } %12, 0
  %14 = tail call ptr @__cxa_begin_catch(ptr %13) #15
  invoke void @_ZSt8_DestroyIPN6dealii6TensorILi2ELi1EEEEvT_S4_(ptr noundef %0, ptr noundef %5) #14
          to label %15 unwind label %18

15:                                               ; preds = %11
  invoke void @__cxa_rethrow() #21
          to label %24 unwind label %18

16:                                               ; preds = %7, %2
  %17 = phi ptr [ %0, %2 ], [ %9, %7 ]
  ret ptr %17

18:                                               ; preds = %15, %11
  %19 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %20 unwind label %21

20:                                               ; preds = %18
  resume { ptr, i32 } %19

21:                                               ; preds = %18
  %22 = landingpad { ptr, i32 }
          catch ptr null
  %23 = extractvalue { ptr, i32 } %22, 0
  tail call void @__clang_call_terminate(ptr %23) #17
  unreachable

24:                                               ; preds = %15
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructIN6dealii6TensorILi2ELi1EEEJEEvPT_DpOT0_(ptr noundef %0) local_unnamed_addr #4 comdat {
  tail call void @_ZN6dealii6TensorILi2ELi1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN6dealii6TensorILi2ELi1EEEEvT_S4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat !prof !261 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii6TensorILi2ELi1EEEEEvT_S6_(ptr noundef %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii6TensorILi2ELi1EEEEEvT_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !261 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 !prof !261 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIN6dealii6TensorILi2ELi1EEEEE10deallocateERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #14
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN6dealii6TensorILi2ELi1EEEEE10deallocateERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi1EEEE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi1EEEE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #6 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPddEvT_S1_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat !prof !473 {
  tail call void @_ZSt8_DestroyIPdEvT_S1_(ptr noundef %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPdEvT_S1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat !prof !473 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_(ptr noundef %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !473 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN6dealii6TensorILi1ELi1EEES2_EvT_S4_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat !prof !261 {
  tail call void @_ZSt8_DestroyIPN6dealii6TensorILi1ELi1EEEEvT_S4_(ptr noundef %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN6dealii6TensorILi2ELi1EEES2_EvT_S4_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat !prof !261 {
  tail call void @_ZSt8_DestroyIPN6dealii6TensorILi2ELi1EEEEvT_S4_(ptr noundef %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %50, label %4

4:                                                ; preds = %2
  %5 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %6 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !405
  %8 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !305
  %10 = ptrtoint ptr %7 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = ashr exact i64 %12, 3
  %14 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %15 = icmp ule i64 %5, %14
  tail call void @llvm.assume(i1 %15)
  %16 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %17 = sub i64 %16, %5
  %18 = icmp ule i64 %13, %17
  tail call void @llvm.assume(i1 %18)
  %19 = icmp ult i64 %13, %1
  br i1 %19, label %24, label %20

20:                                               ; preds = %4
  %21 = load ptr, ptr %8, align 8, !tbaa !305
  %22 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %23 = tail call noundef ptr @_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E(ptr noundef %21, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %22) #14
  store ptr %23, ptr %8, align 8, !tbaa !305
  br label %50

24:                                               ; preds = %4
  %25 = load ptr, ptr %0, align 8, !tbaa !304
  %26 = load ptr, ptr %8, align 8, !tbaa !305
  %27 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull @.str.1) #14
  %28 = tail call noundef ptr @_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %27) #14
  %29 = getelementptr inbounds double, ptr %28, i64 %5
  %30 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %31 = invoke noundef ptr @_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E(ptr noundef %29, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %30) #14
          to label %40 unwind label %32

32:                                               ; preds = %24
  %33 = landingpad { ptr, i32 }
          catch ptr null
  %34 = extractvalue { ptr, i32 } %33, 0
  %35 = tail call ptr @__cxa_begin_catch(ptr %34) #15
  invoke void @_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %28, i64 noundef %27) #14
          to label %36 unwind label %37

36:                                               ; preds = %32
  invoke void @__cxa_rethrow() #21
          to label %54 unwind label %37

37:                                               ; preds = %36, %32
  %38 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %39 unwind label %51

39:                                               ; preds = %37
  resume { ptr, i32 } %38

40:                                               ; preds = %24
  %41 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %42 = tail call noundef ptr @_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_(ptr noundef %25, ptr noundef %26, ptr noundef %28, ptr noundef nonnull align 1 dereferenceable(1) %41) #16
  %43 = load ptr, ptr %6, align 8, !tbaa !405
  %44 = ptrtoint ptr %43 to i64
  %45 = ptrtoint ptr %25 to i64
  %46 = sub i64 %44, %45
  %47 = ashr exact i64 %46, 3
  tail call void @_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %25, i64 noundef %47) #14
  store ptr %28, ptr %0, align 8, !tbaa !304
  %48 = getelementptr inbounds double, ptr %29, i64 %1
  store ptr %48, ptr %8, align 8, !tbaa !305
  %49 = getelementptr inbounds double, ptr %28, i64 %27
  store ptr %49, ptr %6, align 8, !tbaa !405
  br label %50

50:                                               ; preds = %20, %40, %2
  ret void

51:                                               ; preds = %37
  %52 = landingpad { ptr, i32 }
          catch ptr null
  %53 = extractvalue { ptr, i32 } %52, 0
  tail call void @__clang_call_terminate(ptr %53) #17
  unreachable

54:                                               ; preds = %36
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !261 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !305
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  invoke void @_ZSt8_DestroyIPddEvT_S1_RSaIT0_E(ptr noundef %1, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %7) #14
          to label %8 unwind label %10

8:                                                ; preds = %6
  store ptr %1, ptr %3, align 8, !tbaa !305
  br label %9

9:                                                ; preds = %8, %2
  ret void

10:                                               ; preds = %6
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIdSaIdEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !513 {
  %2 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %3 = tail call noundef i64 @_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %2) #16
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 !prof !514 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %1, ptr %4, align 8, !tbaa !446
  %6 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %7 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %8 = sub i64 %6, %7
  %9 = icmp ult i64 %8, %1
  br i1 %9, label %10, label %11, !prof !515

10:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef %2) #19
  unreachable

11:                                               ; preds = %3
  %12 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  %13 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  store i64 %13, ptr %5, align 8, !tbaa !446
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #14
  %15 = load i64, ptr %14, align 8, !tbaa !446
  %16 = add i64 %15, %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  %17 = call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %22, label %19, !prof !515

19:                                               ; preds = %11
  %20 = call noundef i64 @_ZNKSt6vectorIdSaIdEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %21 = icmp ugt i64 %16, %20
  br i1 %21, label %22, label %24, !prof !515

22:                                               ; preds = %19, %11
  %23 = call noundef i64 @_ZNKSt6vectorIdSaIdEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  br label %24

24:                                               ; preds = %19, %22
  %25 = phi i64 [ %23, %22 ], [ %16, %19 ]
  ret i64 %25
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #6 comdat align 2 {
  %5 = tail call noundef ptr @_ZSt12__relocate_aIPdS0_SaIdEET0_T_S3_S2_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #16
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat !prof !516 {
  %3 = load i64, ptr %0, align 8, !tbaa !446
  %4 = load i64, ptr %1, align 8, !tbaa !446
  %5 = icmp ult i64 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0, !prof !517
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__relocate_aIPdS0_SaIdEET0_T_S3_S2_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #6 comdat {
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPdET_S1_(ptr noundef %0) #16
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPdET_S1_(ptr noundef %1) #16
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPdET_S1_(ptr noundef %2) #16
  %8 = tail call noundef ptr @_ZSt14__relocate_a_1IddENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull align 1 dereferenceable(1) %3) #16
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__relocate_a_1IddENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #6 comdat {
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %2, ptr align 8 %0, i64 %7, i1 false)
  br label %10

10:                                               ; preds = %9, %4
  %11 = getelementptr inbounds i8, ptr %2, i64 %7
  ret ptr %11
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %61, label %4

4:                                                ; preds = %2
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %6 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 1>, std::allocator<dealii::Tensor<1, 1>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !509
  %8 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 1>, std::allocator<dealii::Tensor<1, 1>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !302
  %10 = ptrtoint ptr %7 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = ashr exact i64 %12, 3
  %14 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %15 = icmp ule i64 %5, %14
  tail call void @llvm.assume(i1 %15)
  %16 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %17 = sub i64 %16, %5
  %18 = icmp ule i64 %13, %17
  tail call void @llvm.assume(i1 %18)
  %19 = icmp ult i64 %13, %1
  br i1 %19, label %24, label %20

20:                                               ; preds = %4
  %21 = load ptr, ptr %8, align 8, !tbaa !302
  %22 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %23 = tail call noundef ptr @_ZSt27__uninitialized_default_n_aIPN6dealii6TensorILi1ELi1EEEmS2_ET_S4_T0_RSaIT1_E(ptr noundef %21, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %22) #14
  store ptr %23, ptr %8, align 8, !tbaa !302
  br label %61

24:                                               ; preds = %4
  %25 = load ptr, ptr %0, align 8, !tbaa !301
  %26 = load ptr, ptr %8, align 8, !tbaa !302
  %27 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull @.str.1) #14
  %28 = tail call noundef ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %27) #14
  %29 = getelementptr inbounds %"class.dealii::Tensor", ptr %28, i64 %5
  %30 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %31 = invoke noundef ptr @_ZSt27__uninitialized_default_n_aIPN6dealii6TensorILi1ELi1EEEmS2_ET_S4_T0_RSaIT1_E(ptr noundef %29, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %30) #14
          to label %36 unwind label %32

32:                                               ; preds = %24
  %33 = landingpad { ptr, i32 }
          catch ptr null
  %34 = extractvalue { ptr, i32 } %33, 0
  %35 = tail call ptr @__cxa_begin_catch(ptr %34) #15
  br label %49

36:                                               ; preds = %24
  %37 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %38 = invoke noundef ptr @_ZSt34__uninitialized_move_if_noexcept_aIPN6dealii6TensorILi1ELi1EEES3_SaIS2_EET0_T_S6_S5_RT1_(ptr noundef %25, ptr noundef %26, ptr noundef %28, ptr noundef nonnull align 1 dereferenceable(1) %37) #14
          to label %52 unwind label %39

39:                                               ; preds = %36
  %40 = landingpad { ptr, i32 }
          catch ptr null
  %41 = extractvalue { ptr, i32 } %40, 0
  %42 = tail call ptr @__cxa_begin_catch(ptr %41) #15
  %43 = icmp eq ptr %28, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %"class.dealii::Tensor", ptr %29, i64 %1
  %46 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  invoke void @_ZSt8_DestroyIPN6dealii6TensorILi1ELi1EEES2_EvT_S4_RSaIT0_E(ptr noundef nonnull %29, ptr noundef nonnull %45, ptr noundef nonnull align 1 dereferenceable(1) %46) #14
          to label %49 unwind label %47

47:                                               ; preds = %50, %49, %44
  %48 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %51 unwind label %62

49:                                               ; preds = %32, %44, %39
  invoke void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %28, i64 noundef %27) #14
          to label %50 unwind label %47

50:                                               ; preds = %49
  invoke void @__cxa_rethrow() #21
          to label %65 unwind label %47

51:                                               ; preds = %47
  resume { ptr, i32 } %48

52:                                               ; preds = %36
  %53 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  tail call void @_ZSt8_DestroyIPN6dealii6TensorILi1ELi1EEES2_EvT_S4_RSaIT0_E(ptr noundef %25, ptr noundef %26, ptr noundef nonnull align 1 dereferenceable(1) %53) #14
  %54 = load ptr, ptr %6, align 8, !tbaa !509
  %55 = ptrtoint ptr %54 to i64
  %56 = ptrtoint ptr %25 to i64
  %57 = sub i64 %55, %56
  %58 = ashr exact i64 %57, 3
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %25, i64 noundef %58) #14
  store ptr %28, ptr %0, align 8, !tbaa !301
  %59 = getelementptr inbounds %"class.dealii::Tensor", ptr %29, i64 %1
  store ptr %59, ptr %8, align 8, !tbaa !302
  %60 = getelementptr inbounds %"class.dealii::Tensor", ptr %28, i64 %27
  store ptr %60, ptr %6, align 8, !tbaa !509
  br label %61

61:                                               ; preds = %20, %52, %2
  ret void

62:                                               ; preds = %47
  %63 = landingpad { ptr, i32 }
          catch ptr null
  %64 = extractvalue { ptr, i32 } %63, 0
  tail call void @__clang_call_terminate(ptr %64) #17
  unreachable

65:                                               ; preds = %50
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE15_M_erase_at_endEPS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !261 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 1>, std::allocator<dealii::Tensor<1, 1>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !302
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  invoke void @_ZSt8_DestroyIPN6dealii6TensorILi1ELi1EEES2_EvT_S4_RSaIT0_E(ptr noundef %1, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %7) #14
          to label %8 unwind label %10

8:                                                ; preds = %6
  store ptr %1, ptr %3, align 8, !tbaa !302
  br label %9

9:                                                ; preds = %8, %2
  ret void

10:                                               ; preds = %6
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !261 {
  %2 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %3 = tail call noundef i64 @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE11_S_max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %2) #16
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 !prof !261 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %1, ptr %4, align 8, !tbaa !446
  %6 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %7 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %8 = sub i64 %6, %7
  %9 = icmp ult i64 %8, %1
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef %2) #19
  unreachable

11:                                               ; preds = %3
  %12 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  %13 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  store i64 %13, ptr %5, align 8, !tbaa !446
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #14
  %15 = load i64, ptr %14, align 8, !tbaa !446
  %16 = add i64 %15, %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  %17 = call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %22, label %19

19:                                               ; preds = %11
  %20 = call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %21 = icmp ugt i64 %16, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %19, %11
  %23 = call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  br label %24

24:                                               ; preds = %19, %22
  %25 = phi i64 [ %23, %22 ], [ %16, %19 ]
  ret i64 %25
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt34__uninitialized_move_if_noexcept_aIPN6dealii6TensorILi1ELi1EEES3_SaIS2_EET0_T_S6_S5_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #4 comdat !prof !261 {
  %5 = tail call noundef ptr @_ZSt32__make_move_if_noexcept_iteratorIN6dealii6TensorILi1ELi1EEEPKS2_ET0_PT_(ptr noundef %0) #14
  %6 = tail call noundef ptr @_ZSt32__make_move_if_noexcept_iteratorIN6dealii6TensorILi1ELi1EEEPKS2_ET0_PT_(ptr noundef %1) #14
  %7 = tail call noundef ptr @_ZSt22__uninitialized_copy_aIPKN6dealii6TensorILi1ELi1EEEPS2_S2_ET0_T_S7_S6_RSaIT1_E(ptr noundef %5, ptr noundef %6, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #14
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !261 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_copy_aIPKN6dealii6TensorILi1ELi1EEEPS2_S2_ET0_T_S7_S6_RSaIT1_E(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #4 comdat {
  %5 = tail call noundef ptr @_ZSt18uninitialized_copyIPKN6dealii6TensorILi1ELi1EEEPS2_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt32__make_move_if_noexcept_iteratorIN6dealii6TensorILi1ELi1EEEPKS2_ET0_PT_(ptr noundef %0) local_unnamed_addr #6 comdat {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt18uninitialized_copyIPKN6dealii6TensorILi1ELi1EEEPS2_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat {
  %4 = tail call noundef ptr @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPKN6dealii6TensorILi1ELi1EEEPS4_EET0_T_S9_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPKN6dealii6TensorILi1ELi1EEEPS4_EET0_T_S9_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 {
  %4 = tail call noundef ptr @_ZSt16__do_uninit_copyIPKN6dealii6TensorILi1ELi1EEEPS2_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIPKN6dealii6TensorILi1ELi1EEEPS2_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %17, label %5

5:                                                ; preds = %3, %8
  %6 = phi ptr [ %10, %8 ], [ %2, %3 ]
  %7 = phi ptr [ %9, %8 ], [ %0, %3 ]
  invoke void @_ZSt10_ConstructIN6dealii6TensorILi1ELi1EEEJRKS2_EEvPT_DpOT0_(ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(8) %7) #14
          to label %8 unwind label %12

8:                                                ; preds = %5
  %9 = getelementptr inbounds %"class.dealii::Tensor", ptr %7, i64 1
  %10 = getelementptr inbounds %"class.dealii::Tensor", ptr %6, i64 1
  %11 = icmp eq ptr %9, %1
  br i1 %11, label %17, label %5, !llvm.loop !518

12:                                               ; preds = %5
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  %15 = tail call ptr @__cxa_begin_catch(ptr %14) #15
  invoke void @_ZSt8_DestroyIPN6dealii6TensorILi1ELi1EEEEvT_S4_(ptr noundef %2, ptr noundef %6) #14
          to label %16 unwind label %19

16:                                               ; preds = %12
  invoke void @__cxa_rethrow() #21
          to label %25 unwind label %19

17:                                               ; preds = %8, %3
  %18 = phi ptr [ %2, %3 ], [ %10, %8 ]
  ret ptr %18

19:                                               ; preds = %16, %12
  %20 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %21 unwind label %22

21:                                               ; preds = %19
  resume { ptr, i32 } %20

22:                                               ; preds = %19
  %23 = landingpad { ptr, i32 }
          catch ptr null
  %24 = extractvalue { ptr, i32 } %23, 0
  tail call void @__clang_call_terminate(ptr %24) #17
  unreachable

25:                                               ; preds = %16
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructIN6dealii6TensorILi1ELi1EEEJRKS2_EEvPT_DpOT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat {
  tail call void @_ZN6dealii6TensorILi1ELi1EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6TensorILi1ELi1EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #6 comdat align 2 !prof !519 {
  %3 = load double, ptr %1, align 8, !tbaa !306
  store double %3, ptr %0, align 8, !tbaa !306
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %61, label %4

4:                                                ; preds = %2
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %6 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<2, 1>, std::allocator<dealii::Tensor<2, 1>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !511
  %8 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<2, 1>, std::allocator<dealii::Tensor<2, 1>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !300
  %10 = ptrtoint ptr %7 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = ashr exact i64 %12, 3
  %14 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %15 = icmp ule i64 %5, %14
  tail call void @llvm.assume(i1 %15)
  %16 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %17 = sub i64 %16, %5
  %18 = icmp ule i64 %13, %17
  tail call void @llvm.assume(i1 %18)
  %19 = icmp ult i64 %13, %1
  br i1 %19, label %24, label %20

20:                                               ; preds = %4
  %21 = load ptr, ptr %8, align 8, !tbaa !300
  %22 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %23 = tail call noundef ptr @_ZSt27__uninitialized_default_n_aIPN6dealii6TensorILi2ELi1EEEmS2_ET_S4_T0_RSaIT1_E(ptr noundef %21, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %22) #14
  store ptr %23, ptr %8, align 8, !tbaa !300
  br label %61

24:                                               ; preds = %4
  %25 = load ptr, ptr %0, align 8, !tbaa !299
  %26 = load ptr, ptr %8, align 8, !tbaa !300
  %27 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull @.str.1) #14
  %28 = tail call noundef ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %27) #14
  %29 = getelementptr inbounds %"class.dealii::Tensor.29", ptr %28, i64 %5
  %30 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %31 = invoke noundef ptr @_ZSt27__uninitialized_default_n_aIPN6dealii6TensorILi2ELi1EEEmS2_ET_S4_T0_RSaIT1_E(ptr noundef %29, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %30) #14
          to label %36 unwind label %32

32:                                               ; preds = %24
  %33 = landingpad { ptr, i32 }
          catch ptr null
  %34 = extractvalue { ptr, i32 } %33, 0
  %35 = tail call ptr @__cxa_begin_catch(ptr %34) #15
  br label %49

36:                                               ; preds = %24
  %37 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %38 = invoke noundef ptr @_ZSt34__uninitialized_move_if_noexcept_aIPN6dealii6TensorILi2ELi1EEES3_SaIS2_EET0_T_S6_S5_RT1_(ptr noundef %25, ptr noundef %26, ptr noundef %28, ptr noundef nonnull align 1 dereferenceable(1) %37) #14
          to label %52 unwind label %39

39:                                               ; preds = %36
  %40 = landingpad { ptr, i32 }
          catch ptr null
  %41 = extractvalue { ptr, i32 } %40, 0
  %42 = tail call ptr @__cxa_begin_catch(ptr %41) #15
  %43 = icmp eq ptr %28, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %"class.dealii::Tensor.29", ptr %29, i64 %1
  %46 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  invoke void @_ZSt8_DestroyIPN6dealii6TensorILi2ELi1EEES2_EvT_S4_RSaIT0_E(ptr noundef nonnull %29, ptr noundef nonnull %45, ptr noundef nonnull align 1 dereferenceable(1) %46) #14
          to label %49 unwind label %47

47:                                               ; preds = %50, %49, %44
  %48 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %51 unwind label %62

49:                                               ; preds = %32, %44, %39
  invoke void @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %28, i64 noundef %27) #14
          to label %50 unwind label %47

50:                                               ; preds = %49
  invoke void @__cxa_rethrow() #21
          to label %65 unwind label %47

51:                                               ; preds = %47
  resume { ptr, i32 } %48

52:                                               ; preds = %36
  %53 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  tail call void @_ZSt8_DestroyIPN6dealii6TensorILi2ELi1EEES2_EvT_S4_RSaIT0_E(ptr noundef %25, ptr noundef %26, ptr noundef nonnull align 1 dereferenceable(1) %53) #14
  %54 = load ptr, ptr %6, align 8, !tbaa !511
  %55 = ptrtoint ptr %54 to i64
  %56 = ptrtoint ptr %25 to i64
  %57 = sub i64 %55, %56
  %58 = ashr exact i64 %57, 3
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %25, i64 noundef %58) #14
  store ptr %28, ptr %0, align 8, !tbaa !299
  %59 = getelementptr inbounds %"class.dealii::Tensor.29", ptr %29, i64 %1
  store ptr %59, ptr %8, align 8, !tbaa !300
  %60 = getelementptr inbounds %"class.dealii::Tensor.29", ptr %28, i64 %27
  store ptr %60, ptr %6, align 8, !tbaa !511
  br label %61

61:                                               ; preds = %20, %52, %2
  ret void

62:                                               ; preds = %47
  %63 = landingpad { ptr, i32 }
          catch ptr null
  %64 = extractvalue { ptr, i32 } %63, 0
  tail call void @__clang_call_terminate(ptr %64) #17
  unreachable

65:                                               ; preds = %50
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE15_M_erase_at_endEPS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !261 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<2, 1>, std::allocator<dealii::Tensor<2, 1>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !300
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  invoke void @_ZSt8_DestroyIPN6dealii6TensorILi2ELi1EEES2_EvT_S4_RSaIT0_E(ptr noundef %1, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %7) #14
          to label %8 unwind label %10

8:                                                ; preds = %6
  store ptr %1, ptr %3, align 8, !tbaa !300
  br label %9

9:                                                ; preds = %8, %2
  ret void

10:                                               ; preds = %6
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !261 {
  %2 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %3 = tail call noundef i64 @_ZNSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE11_S_max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %2) #16
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 !prof !261 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %1, ptr %4, align 8, !tbaa !446
  %6 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %7 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %8 = sub i64 %6, %7
  %9 = icmp ult i64 %8, %1
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef %2) #19
  unreachable

11:                                               ; preds = %3
  %12 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  %13 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  store i64 %13, ptr %5, align 8, !tbaa !446
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #14
  %15 = load i64, ptr %14, align 8, !tbaa !446
  %16 = add i64 %15, %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  %17 = call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %22, label %19

19:                                               ; preds = %11
  %20 = call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %21 = icmp ugt i64 %16, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %19, %11
  %23 = call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  br label %24

24:                                               ; preds = %19, %22
  %25 = phi i64 [ %23, %22 ], [ %16, %19 ]
  ret i64 %25
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt34__uninitialized_move_if_noexcept_aIPN6dealii6TensorILi2ELi1EEES3_SaIS2_EET0_T_S6_S5_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #4 comdat !prof !261 {
  %5 = tail call noundef ptr @_ZSt32__make_move_if_noexcept_iteratorIN6dealii6TensorILi2ELi1EEEPKS2_ET0_PT_(ptr noundef %0) #14
  %6 = tail call noundef ptr @_ZSt32__make_move_if_noexcept_iteratorIN6dealii6TensorILi2ELi1EEEPKS2_ET0_PT_(ptr noundef %1) #14
  %7 = tail call noundef ptr @_ZSt22__uninitialized_copy_aIPKN6dealii6TensorILi2ELi1EEEPS2_S2_ET0_T_S7_S6_RSaIT1_E(ptr noundef %5, ptr noundef %6, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #14
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !261 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_copy_aIPKN6dealii6TensorILi2ELi1EEEPS2_S2_ET0_T_S7_S6_RSaIT1_E(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #4 comdat {
  %5 = tail call noundef ptr @_ZSt18uninitialized_copyIPKN6dealii6TensorILi2ELi1EEEPS2_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt32__make_move_if_noexcept_iteratorIN6dealii6TensorILi2ELi1EEEPKS2_ET0_PT_(ptr noundef %0) local_unnamed_addr #6 comdat {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt18uninitialized_copyIPKN6dealii6TensorILi2ELi1EEEPS2_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat {
  %4 = tail call noundef ptr @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPKN6dealii6TensorILi2ELi1EEEPS4_EET0_T_S9_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPKN6dealii6TensorILi2ELi1EEEPS4_EET0_T_S9_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 {
  %4 = tail call noundef ptr @_ZSt16__do_uninit_copyIPKN6dealii6TensorILi2ELi1EEEPS2_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIPKN6dealii6TensorILi2ELi1EEEPS2_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %17, label %5

5:                                                ; preds = %3, %8
  %6 = phi ptr [ %10, %8 ], [ %2, %3 ]
  %7 = phi ptr [ %9, %8 ], [ %0, %3 ]
  invoke void @_ZSt10_ConstructIN6dealii6TensorILi2ELi1EEEJRKS2_EEvPT_DpOT0_(ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(8) %7) #14
          to label %8 unwind label %12

8:                                                ; preds = %5
  %9 = getelementptr inbounds %"class.dealii::Tensor.29", ptr %7, i64 1
  %10 = getelementptr inbounds %"class.dealii::Tensor.29", ptr %6, i64 1
  %11 = icmp eq ptr %9, %1
  br i1 %11, label %17, label %5, !llvm.loop !520

12:                                               ; preds = %5
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  %15 = tail call ptr @__cxa_begin_catch(ptr %14) #15
  invoke void @_ZSt8_DestroyIPN6dealii6TensorILi2ELi1EEEEvT_S4_(ptr noundef %2, ptr noundef %6) #14
          to label %16 unwind label %19

16:                                               ; preds = %12
  invoke void @__cxa_rethrow() #21
          to label %25 unwind label %19

17:                                               ; preds = %8, %3
  %18 = phi ptr [ %2, %3 ], [ %10, %8 ]
  ret ptr %18

19:                                               ; preds = %16, %12
  %20 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %21 unwind label %22

21:                                               ; preds = %19
  resume { ptr, i32 } %20

22:                                               ; preds = %19
  %23 = landingpad { ptr, i32 }
          catch ptr null
  %24 = extractvalue { ptr, i32 } %23, 0
  tail call void @__clang_call_terminate(ptr %24) #17
  unreachable

25:                                               ; preds = %16
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructIN6dealii6TensorILi2ELi1EEEJRKS2_EEvPT_DpOT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat {
  tail call void @_ZN6dealii6TensorILi2ELi1EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6TensorILi2ELi1EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #4 comdat align 2 {
  tail call void @_ZN6dealii6TensorILi1ELi1EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi1ELi1EEESt6vectorIS3_SaIS3_EEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #6 comdat align 2 !prof !261 {
  %3 = load ptr, ptr %1, align 8, !tbaa !404
  store ptr %3, ptr %0, align 8, !tbaa !521
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8__fill_aIN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi1ELi1EEESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RKT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat !prof !261 {
  tail call void @_ZSt9__fill_a1IPN6dealii6TensorILi1ELi1EEESt6vectorIS2_SaIS2_EES2_EvN9__gnu_cxx17__normal_iteratorIT_T0_EESB_RKT1_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt9__fill_a1IPN6dealii6TensorILi1ELi1EEESt6vectorIS2_SaIS2_EES2_EvN9__gnu_cxx17__normal_iteratorIT_T0_EESB_RKT1_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat !prof !261 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi1ELi1EEESt6vectorIS3_SaIS3_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #16
  %7 = load ptr, ptr %6, align 8, !tbaa !404
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi1ELi1EEESt6vectorIS3_SaIS3_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #16
  %9 = load ptr, ptr %8, align 8, !tbaa !404
  call void @_ZSt9__fill_a1IPN6dealii6TensorILi1ELi1EEES2_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT0_EE7__valueEvE6__typeET_S9_RKS6_(ptr noundef %7, ptr noundef %9, ptr noundef nonnull align 8 dereferenceable(8) %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt9__fill_a1IPN6dealii6TensorILi1ELi1EEES2_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT0_EE7__valueEvE6__typeET_S9_RKS6_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #6 comdat !prof !261 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %10, label %5

5:                                                ; preds = %3, %5
  %6 = phi ptr [ %8, %5 ], [ %0, %3 ]
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %2) #14
  %8 = getelementptr inbounds %"class.dealii::Tensor", ptr %6, i64 1
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %10, label %5, !llvm.loop !523

10:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi1ELi1EEESt6vectorIS3_SaIS3_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #6 comdat align 2 !prof !261 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi2ELi1EEESt6vectorIS3_SaIS3_EEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #6 comdat align 2 !prof !261 {
  %3 = load ptr, ptr %1, align 8, !tbaa !404
  store ptr %3, ptr %0, align 8, !tbaa !524
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8__fill_aIN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi2ELi1EEESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RKT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat !prof !261 {
  tail call void @_ZSt9__fill_a1IPN6dealii6TensorILi2ELi1EEESt6vectorIS2_SaIS2_EES2_EvN9__gnu_cxx17__normal_iteratorIT_T0_EESB_RKT1_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt9__fill_a1IPN6dealii6TensorILi2ELi1EEESt6vectorIS2_SaIS2_EES2_EvN9__gnu_cxx17__normal_iteratorIT_T0_EESB_RKT1_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat !prof !261 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.28", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.28", align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi2ELi1EEESt6vectorIS3_SaIS3_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #16
  %7 = load ptr, ptr %6, align 8, !tbaa !404
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi2ELi1EEESt6vectorIS3_SaIS3_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #16
  %9 = load ptr, ptr %8, align 8, !tbaa !404
  call void @_ZSt9__fill_a1IPN6dealii6TensorILi2ELi1EEES2_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT0_EE7__valueEvE6__typeET_S9_RKS6_(ptr noundef %7, ptr noundef %9, ptr noundef nonnull align 8 dereferenceable(8) %2) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt9__fill_a1IPN6dealii6TensorILi2ELi1EEES2_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT0_EE7__valueEvE6__typeET_S9_RKS6_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat !prof !261 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %10, label %5

5:                                                ; preds = %3, %5
  %6 = phi ptr [ %8, %5 ], [ %0, %3 ]
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi2ELi1EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %2) #14
  %8 = getelementptr inbounds %"class.dealii::Tensor.29", ptr %6, i64 1
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %10, label %5, !llvm.loop !526

10:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi2ELi1EEESt6vectorIS3_SaIS3_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #6 comdat align 2 !prof !261 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi3ELi1EEESt6vectorIS3_SaIS3_EEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #6 comdat align 2 !prof !261 {
  %3 = load ptr, ptr %1, align 8, !tbaa !404
  store ptr %3, ptr %0, align 8, !tbaa !527
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8__fill_aIN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi3ELi1EEESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RKT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat !prof !261 {
  tail call void @_ZSt9__fill_a1IPN6dealii6TensorILi3ELi1EEESt6vectorIS2_SaIS2_EES2_EvN9__gnu_cxx17__normal_iteratorIT_T0_EESB_RKT1_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt9__fill_a1IPN6dealii6TensorILi3ELi1EEESt6vectorIS2_SaIS2_EES2_EvN9__gnu_cxx17__normal_iteratorIT_T0_EESB_RKT1_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat !prof !261 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi3ELi1EEESt6vectorIS3_SaIS3_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #16
  %7 = load ptr, ptr %6, align 8, !tbaa !404
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi3ELi1EEESt6vectorIS3_SaIS3_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #16
  %9 = load ptr, ptr %8, align 8, !tbaa !404
  call void @_ZSt9__fill_a1IPN6dealii6TensorILi3ELi1EEES2_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT0_EE7__valueEvE6__typeET_S9_RKS6_(ptr noundef %7, ptr noundef %9, ptr noundef nonnull align 8 dereferenceable(8) %2) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt9__fill_a1IPN6dealii6TensorILi3ELi1EEES2_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT0_EE7__valueEvE6__typeET_S9_RKS6_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat !prof !261 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %10, label %5

5:                                                ; preds = %3, %5
  %6 = phi ptr [ %8, %5 ], [ %0, %3 ]
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi3ELi1EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %2) #14
  %8 = getelementptr inbounds %"class.dealii::Tensor.31", ptr %6, i64 1
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %10, label %5, !llvm.loop !529

10:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi3ELi1EEESt6vectorIS3_SaIS3_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #6 comdat align 2 !prof !261 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi3ELi1EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 !prof !261 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi2ELi1EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #14
  ret ptr %0
}

; Function Attrs: optsize
declare noundef i32 @_ZN6dealii15PolynomialSpaceILi2EE14compute_n_polsEj(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #6 comdat align 2 !prof !261 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE17_S_check_init_lenEmRKS3_(i64 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #4 comdat align 2 !prof !261 {
  %3 = alloca %"class.std::allocator.36", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #15
  call void @_ZNSaIN6dealii6TensorILi1ELi2EEEEC2ERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  %4 = call noundef i64 @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE11_S_max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %3) #16
  %5 = icmp ult i64 %4, %0
  call void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #15
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #19
  unreachable

7:                                                ; preds = %2
  ret i64 %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !261 {
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE12_Vector_implC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %2) #16
  invoke void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #14
          to label %4 unwind label %5

4:                                                ; preds = %3
  ret void

5:                                                ; preds = %3
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !336
  %4 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %5 = tail call noundef ptr @_ZSt27__uninitialized_default_n_aIPN6dealii6TensorILi1ELi2EEEmS2_ET_S4_T0_RSaIT1_E(ptr noundef %3, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %4) #14
  %6 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %5, ptr %6, align 8, !tbaa !337
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !261 {
  %2 = load ptr, ptr %0, align 8, !tbaa !336
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !530
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 4
  invoke void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #14
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE11_S_max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #6 comdat align 2 !prof !261 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  store i64 576460752303423487, ptr %2, align 8, !tbaa !446
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %4 = tail call noundef i64 @_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi2EEEEE8max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  store i64 %4, ptr %3, align 8, !tbaa !446
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #14
  %6 = load i64, ptr %5, align 8, !tbaa !446
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIN6dealii6TensorILi1ELi2EEEEC2ERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #6 comdat align 2 !prof !261 {
  tail call void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEEC2ERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi2EEEEE8max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #6 comdat align 2 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #6 comdat align 2 !prof !261 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #6 comdat align 2 !prof !261 {
  ret i64 576460752303423487
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEEC2ERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #6 comdat align 2 !prof !261 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE12_Vector_implC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #6 comdat align 2 !prof !261 {
  tail call void @_ZNSaIN6dealii6TensorILi1ELi2EEEEC2ERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !261 {
  %3 = tail call noundef ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #14
  store ptr %3, ptr %0, align 8, !tbaa !336
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !337
  %5 = getelementptr inbounds %"class.dealii::Tensor.50", ptr %3, i64 %1
  %6 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !530
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #6 comdat align 2 !prof !261 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 !prof !261 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !261 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi2EEEEE8allocateERS3_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #14
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi2EEEEE8allocateERS3_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #14
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !443

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 1152921504606846975
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #19
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #19
  unreachable

10:                                               ; preds = %3
  %11 = shl i64 %1, 4
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #20
  ret ptr %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__uninitialized_default_n_aIPN6dealii6TensorILi1ELi2EEEmS2_ET_S4_T0_RSaIT1_E(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat {
  %4 = tail call noundef ptr @_ZSt25__uninitialized_default_nIPN6dealii6TensorILi1ELi2EEEmET_S4_T0_(ptr noundef %0, i64 noundef %1) #14
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !261 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt25__uninitialized_default_nIPN6dealii6TensorILi1ELi2EEEmET_S4_T0_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #4 comdat {
  %3 = tail call noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6dealii6TensorILi1ELi2EEEmEET_S6_T0_(ptr noundef %0, i64 noundef %1) #14
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6dealii6TensorILi1ELi2EEEmEET_S6_T0_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %16, label %4

4:                                                ; preds = %2, %7
  %5 = phi ptr [ %9, %7 ], [ %0, %2 ]
  %6 = phi i64 [ %8, %7 ], [ %1, %2 ]
  invoke void @_ZSt10_ConstructIN6dealii6TensorILi1ELi2EEEJEEvPT_DpOT0_(ptr noundef %5) #14
          to label %7 unwind label %11

7:                                                ; preds = %4
  %8 = add i64 %6, -1
  %9 = getelementptr inbounds %"class.dealii::Tensor.50", ptr %5, i64 1
  %10 = icmp eq i64 %8, 0
  br i1 %10, label %16, label %4, !llvm.loop !531

11:                                               ; preds = %4
  %12 = landingpad { ptr, i32 }
          catch ptr null
  %13 = extractvalue { ptr, i32 } %12, 0
  %14 = tail call ptr @__cxa_begin_catch(ptr %13) #15
  invoke void @_ZSt8_DestroyIPN6dealii6TensorILi1ELi2EEEEvT_S4_(ptr noundef %0, ptr noundef %5) #14
          to label %15 unwind label %18

15:                                               ; preds = %11
  invoke void @__cxa_rethrow() #21
          to label %24 unwind label %18

16:                                               ; preds = %7, %2
  %17 = phi ptr [ %0, %2 ], [ %9, %7 ]
  ret ptr %17

18:                                               ; preds = %15, %11
  %19 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %20 unwind label %21

20:                                               ; preds = %18
  resume { ptr, i32 } %19

21:                                               ; preds = %18
  %22 = landingpad { ptr, i32 }
          catch ptr null
  %23 = extractvalue { ptr, i32 } %22, 0
  tail call void @__clang_call_terminate(ptr %23) #17
  unreachable

24:                                               ; preds = %15
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructIN6dealii6TensorILi1ELi2EEEJEEvPT_DpOT0_(ptr noundef %0) local_unnamed_addr #4 comdat {
  tail call void @_ZN6dealii6TensorILi1ELi2EEC2Eb(ptr noundef nonnull align 8 dereferenceable(16) %0, i1 noundef zeroext true) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN6dealii6TensorILi1ELi2EEEEvT_S4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat !prof !261 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii6TensorILi1ELi2EEEEEvT_S6_(ptr noundef %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii6TensorILi1ELi2EEEEEvT_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !261 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 !prof !261 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi2EEEEE10deallocateERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #14
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi2EEEEE10deallocateERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #6 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi2EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #6 comdat align 2 !prof !261 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE17_S_check_init_lenEmRKS3_(i64 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #4 comdat align 2 !prof !261 {
  %3 = alloca %"class.std::allocator.41", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #15
  call void @_ZNSaIN6dealii6TensorILi2ELi2EEEEC2ERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  %4 = call noundef i64 @_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE11_S_max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %3) #16
  %5 = icmp ult i64 %4, %0
  call void @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi2EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #15
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #19
  unreachable

7:                                                ; preds = %2
  ret i64 %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !261 {
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EE12_Vector_implC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %2) #16
  invoke void @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #14
          to label %4 unwind label %5

4:                                                ; preds = %3
  ret void

5:                                                ; preds = %3
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi2EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !334
  %4 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %5 = tail call noundef ptr @_ZSt27__uninitialized_default_n_aIPN6dealii6TensorILi2ELi2EEEmS2_ET_S4_T0_RSaIT1_E(ptr noundef %3, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %4) #14
  %6 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<2, 2>, std::allocator<dealii::Tensor<2, 2>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %5, ptr %6, align 8, !tbaa !335
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !261 {
  %2 = load ptr, ptr %0, align 8, !tbaa !334
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<2, 2>, std::allocator<dealii::Tensor<2, 2>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !532
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 5
  invoke void @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #14
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi2EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE11_S_max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #6 comdat align 2 !prof !261 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  store i64 288230376151711743, ptr %2, align 8, !tbaa !446
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %4 = tail call noundef i64 @_ZNSt16allocator_traitsISaIN6dealii6TensorILi2ELi2EEEEE8max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  store i64 %4, ptr %3, align 8, !tbaa !446
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #14
  %6 = load i64, ptr %5, align 8, !tbaa !446
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIN6dealii6TensorILi2ELi2EEEEC2ERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #6 comdat align 2 !prof !261 {
  tail call void @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi2EEEEC2ERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaIN6dealii6TensorILi2ELi2EEEEE8max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #6 comdat align 2 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi2ELi2EEEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi2ELi2EEEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #6 comdat align 2 !prof !261 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi2ELi2EEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi2ELi2EEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #6 comdat align 2 !prof !261 {
  ret i64 288230376151711743
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi2EEEEC2ERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #6 comdat align 2 !prof !261 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EE12_Vector_implC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #6 comdat align 2 !prof !261 {
  tail call void @_ZNSaIN6dealii6TensorILi2ELi2EEEEC2ERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !261 {
  %3 = tail call noundef ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #14
  store ptr %3, ptr %0, align 8, !tbaa !334
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<2, 2>, std::allocator<dealii::Tensor<2, 2>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !335
  %5 = getelementptr inbounds %"class.dealii::Tensor.53", ptr %3, i64 %1
  %6 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<2, 2>, std::allocator<dealii::Tensor<2, 2>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !532
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi2EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #6 comdat align 2 !prof !261 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 !prof !261 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !261 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaIN6dealii6TensorILi2ELi2EEEEE8allocateERS3_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #14
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIN6dealii6TensorILi2ELi2EEEEE8allocateERS3_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi2EEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #14
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi2EEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi2ELi2EEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !443

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 576460752303423487
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #19
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #19
  unreachable

10:                                               ; preds = %3
  %11 = shl i64 %1, 5
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #20
  ret ptr %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__uninitialized_default_n_aIPN6dealii6TensorILi2ELi2EEEmS2_ET_S4_T0_RSaIT1_E(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat {
  %4 = tail call noundef ptr @_ZSt25__uninitialized_default_nIPN6dealii6TensorILi2ELi2EEEmET_S4_T0_(ptr noundef %0, i64 noundef %1) #14
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !261 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt25__uninitialized_default_nIPN6dealii6TensorILi2ELi2EEEmET_S4_T0_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #4 comdat {
  %3 = tail call noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6dealii6TensorILi2ELi2EEEmEET_S6_T0_(ptr noundef %0, i64 noundef %1) #14
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6dealii6TensorILi2ELi2EEEmEET_S6_T0_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %16, label %4

4:                                                ; preds = %2, %7
  %5 = phi ptr [ %9, %7 ], [ %0, %2 ]
  %6 = phi i64 [ %8, %7 ], [ %1, %2 ]
  invoke void @_ZSt10_ConstructIN6dealii6TensorILi2ELi2EEEJEEvPT_DpOT0_(ptr noundef %5) #14
          to label %7 unwind label %11

7:                                                ; preds = %4
  %8 = add i64 %6, -1
  %9 = getelementptr inbounds %"class.dealii::Tensor.53", ptr %5, i64 1
  %10 = icmp eq i64 %8, 0
  br i1 %10, label %16, label %4, !llvm.loop !533

11:                                               ; preds = %4
  %12 = landingpad { ptr, i32 }
          catch ptr null
  %13 = extractvalue { ptr, i32 } %12, 0
  %14 = tail call ptr @__cxa_begin_catch(ptr %13) #15
  invoke void @_ZSt8_DestroyIPN6dealii6TensorILi2ELi2EEEEvT_S4_(ptr noundef %0, ptr noundef %5) #14
          to label %15 unwind label %18

15:                                               ; preds = %11
  invoke void @__cxa_rethrow() #21
          to label %24 unwind label %18

16:                                               ; preds = %7, %2
  %17 = phi ptr [ %0, %2 ], [ %9, %7 ]
  ret ptr %17

18:                                               ; preds = %15, %11
  %19 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %20 unwind label %21

20:                                               ; preds = %18
  resume { ptr, i32 } %19

21:                                               ; preds = %18
  %22 = landingpad { ptr, i32 }
          catch ptr null
  %23 = extractvalue { ptr, i32 } %22, 0
  tail call void @__clang_call_terminate(ptr %23) #17
  unreachable

24:                                               ; preds = %15
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructIN6dealii6TensorILi2ELi2EEEJEEvPT_DpOT0_(ptr noundef %0) local_unnamed_addr #4 comdat {
  tail call void @_ZN6dealii6TensorILi2ELi2EEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN6dealii6TensorILi2ELi2EEEEvT_S4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat !prof !261 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii6TensorILi2ELi2EEEEEvT_S6_(ptr noundef %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii6TensorILi2ELi2EEEEEvT_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !261 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 !prof !261 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIN6dealii6TensorILi2ELi2EEEEE10deallocateERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #14
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN6dealii6TensorILi2ELi2EEEEE10deallocateERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi2EEEE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi2EEEE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #6 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN6dealii6TensorILi1ELi2EEES2_EvT_S4_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat !prof !261 {
  tail call void @_ZSt8_DestroyIPN6dealii6TensorILi1ELi2EEEEvT_S4_(ptr noundef %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN6dealii6TensorILi2ELi2EEES2_EvT_S4_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat !prof !261 {
  tail call void @_ZSt8_DestroyIPN6dealii6TensorILi2ELi2EEEEvT_S4_(ptr noundef %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %61, label %4

4:                                                ; preds = %2
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %6 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !530
  %8 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !337
  %10 = ptrtoint ptr %7 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = ashr exact i64 %12, 4
  %14 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %15 = icmp ule i64 %5, %14
  tail call void @llvm.assume(i1 %15)
  %16 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %17 = sub i64 %16, %5
  %18 = icmp ule i64 %13, %17
  tail call void @llvm.assume(i1 %18)
  %19 = icmp ult i64 %13, %1
  br i1 %19, label %24, label %20

20:                                               ; preds = %4
  %21 = load ptr, ptr %8, align 8, !tbaa !337
  %22 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %23 = tail call noundef ptr @_ZSt27__uninitialized_default_n_aIPN6dealii6TensorILi1ELi2EEEmS2_ET_S4_T0_RSaIT1_E(ptr noundef %21, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %22) #14
  store ptr %23, ptr %8, align 8, !tbaa !337
  br label %61

24:                                               ; preds = %4
  %25 = load ptr, ptr %0, align 8, !tbaa !336
  %26 = load ptr, ptr %8, align 8, !tbaa !337
  %27 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull @.str.1) #14
  %28 = tail call noundef ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %27) #14
  %29 = getelementptr inbounds %"class.dealii::Tensor.50", ptr %28, i64 %5
  %30 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %31 = invoke noundef ptr @_ZSt27__uninitialized_default_n_aIPN6dealii6TensorILi1ELi2EEEmS2_ET_S4_T0_RSaIT1_E(ptr noundef %29, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %30) #14
          to label %36 unwind label %32

32:                                               ; preds = %24
  %33 = landingpad { ptr, i32 }
          catch ptr null
  %34 = extractvalue { ptr, i32 } %33, 0
  %35 = tail call ptr @__cxa_begin_catch(ptr %34) #15
  br label %49

36:                                               ; preds = %24
  %37 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %38 = invoke noundef ptr @_ZSt34__uninitialized_move_if_noexcept_aIPN6dealii6TensorILi1ELi2EEES3_SaIS2_EET0_T_S6_S5_RT1_(ptr noundef %25, ptr noundef %26, ptr noundef %28, ptr noundef nonnull align 1 dereferenceable(1) %37) #14
          to label %52 unwind label %39

39:                                               ; preds = %36
  %40 = landingpad { ptr, i32 }
          catch ptr null
  %41 = extractvalue { ptr, i32 } %40, 0
  %42 = tail call ptr @__cxa_begin_catch(ptr %41) #15
  %43 = icmp eq ptr %28, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %"class.dealii::Tensor.50", ptr %29, i64 %1
  %46 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  invoke void @_ZSt8_DestroyIPN6dealii6TensorILi1ELi2EEES2_EvT_S4_RSaIT0_E(ptr noundef nonnull %29, ptr noundef nonnull %45, ptr noundef nonnull align 1 dereferenceable(1) %46) #14
          to label %49 unwind label %47

47:                                               ; preds = %50, %49, %44
  %48 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %51 unwind label %62

49:                                               ; preds = %32, %44, %39
  invoke void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %28, i64 noundef %27) #14
          to label %50 unwind label %47

50:                                               ; preds = %49
  invoke void @__cxa_rethrow() #21
          to label %65 unwind label %47

51:                                               ; preds = %47
  resume { ptr, i32 } %48

52:                                               ; preds = %36
  %53 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  tail call void @_ZSt8_DestroyIPN6dealii6TensorILi1ELi2EEES2_EvT_S4_RSaIT0_E(ptr noundef %25, ptr noundef %26, ptr noundef nonnull align 1 dereferenceable(1) %53) #14
  %54 = load ptr, ptr %6, align 8, !tbaa !530
  %55 = ptrtoint ptr %54 to i64
  %56 = ptrtoint ptr %25 to i64
  %57 = sub i64 %55, %56
  %58 = ashr exact i64 %57, 4
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %25, i64 noundef %58) #14
  store ptr %28, ptr %0, align 8, !tbaa !336
  %59 = getelementptr inbounds %"class.dealii::Tensor.50", ptr %29, i64 %1
  store ptr %59, ptr %8, align 8, !tbaa !337
  %60 = getelementptr inbounds %"class.dealii::Tensor.50", ptr %28, i64 %27
  store ptr %60, ptr %6, align 8, !tbaa !530
  br label %61

61:                                               ; preds = %20, %52, %2
  ret void

62:                                               ; preds = %47
  %63 = landingpad { ptr, i32 }
          catch ptr null
  %64 = extractvalue { ptr, i32 } %63, 0
  tail call void @__clang_call_terminate(ptr %64) #17
  unreachable

65:                                               ; preds = %50
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE15_M_erase_at_endEPS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !261 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !337
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  invoke void @_ZSt8_DestroyIPN6dealii6TensorILi1ELi2EEES2_EvT_S4_RSaIT0_E(ptr noundef %1, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %7) #14
          to label %8 unwind label %10

8:                                                ; preds = %6
  store ptr %1, ptr %3, align 8, !tbaa !337
  br label %9

9:                                                ; preds = %8, %2
  ret void

10:                                               ; preds = %6
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !261 {
  %2 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %3 = tail call noundef i64 @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE11_S_max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %2) #16
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 !prof !261 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %1, ptr %4, align 8, !tbaa !446
  %6 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %7 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %8 = sub i64 %6, %7
  %9 = icmp ult i64 %8, %1
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef %2) #19
  unreachable

11:                                               ; preds = %3
  %12 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  %13 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  store i64 %13, ptr %5, align 8, !tbaa !446
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #14
  %15 = load i64, ptr %14, align 8, !tbaa !446
  %16 = add i64 %15, %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  %17 = call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %22, label %19

19:                                               ; preds = %11
  %20 = call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %21 = icmp ugt i64 %16, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %19, %11
  %23 = call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  br label %24

24:                                               ; preds = %19, %22
  %25 = phi i64 [ %23, %22 ], [ %16, %19 ]
  ret i64 %25
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt34__uninitialized_move_if_noexcept_aIPN6dealii6TensorILi1ELi2EEES3_SaIS2_EET0_T_S6_S5_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #4 comdat !prof !261 {
  %5 = tail call noundef ptr @_ZSt32__make_move_if_noexcept_iteratorIN6dealii6TensorILi1ELi2EEEPKS2_ET0_PT_(ptr noundef %0) #14
  %6 = tail call noundef ptr @_ZSt32__make_move_if_noexcept_iteratorIN6dealii6TensorILi1ELi2EEEPKS2_ET0_PT_(ptr noundef %1) #14
  %7 = tail call noundef ptr @_ZSt22__uninitialized_copy_aIPKN6dealii6TensorILi1ELi2EEEPS2_S2_ET0_T_S7_S6_RSaIT1_E(ptr noundef %5, ptr noundef %6, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #14
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !261 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_copy_aIPKN6dealii6TensorILi1ELi2EEEPS2_S2_ET0_T_S7_S6_RSaIT1_E(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #4 comdat {
  %5 = tail call noundef ptr @_ZSt18uninitialized_copyIPKN6dealii6TensorILi1ELi2EEEPS2_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt32__make_move_if_noexcept_iteratorIN6dealii6TensorILi1ELi2EEEPKS2_ET0_PT_(ptr noundef %0) local_unnamed_addr #6 comdat {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt18uninitialized_copyIPKN6dealii6TensorILi1ELi2EEEPS2_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat {
  %4 = tail call noundef ptr @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPKN6dealii6TensorILi1ELi2EEEPS4_EET0_T_S9_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPKN6dealii6TensorILi1ELi2EEEPS4_EET0_T_S9_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 {
  %4 = tail call noundef ptr @_ZSt16__do_uninit_copyIPKN6dealii6TensorILi1ELi2EEEPS2_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIPKN6dealii6TensorILi1ELi2EEEPS2_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %17, label %5

5:                                                ; preds = %3, %8
  %6 = phi ptr [ %10, %8 ], [ %2, %3 ]
  %7 = phi ptr [ %9, %8 ], [ %0, %3 ]
  invoke void @_ZSt10_ConstructIN6dealii6TensorILi1ELi2EEEJRKS2_EEvPT_DpOT0_(ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(16) %7) #14
          to label %8 unwind label %12

8:                                                ; preds = %5
  %9 = getelementptr inbounds %"class.dealii::Tensor.50", ptr %7, i64 1
  %10 = getelementptr inbounds %"class.dealii::Tensor.50", ptr %6, i64 1
  %11 = icmp eq ptr %9, %1
  br i1 %11, label %17, label %5, !llvm.loop !534

12:                                               ; preds = %5
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  %15 = tail call ptr @__cxa_begin_catch(ptr %14) #15
  invoke void @_ZSt8_DestroyIPN6dealii6TensorILi1ELi2EEEEvT_S4_(ptr noundef %2, ptr noundef %6) #14
          to label %16 unwind label %19

16:                                               ; preds = %12
  invoke void @__cxa_rethrow() #21
          to label %25 unwind label %19

17:                                               ; preds = %8, %3
  %18 = phi ptr [ %2, %3 ], [ %10, %8 ]
  ret ptr %18

19:                                               ; preds = %16, %12
  %20 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %21 unwind label %22

21:                                               ; preds = %19
  resume { ptr, i32 } %20

22:                                               ; preds = %19
  %23 = landingpad { ptr, i32 }
          catch ptr null
  %24 = extractvalue { ptr, i32 } %23, 0
  tail call void @__clang_call_terminate(ptr %24) #17
  unreachable

25:                                               ; preds = %16
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructIN6dealii6TensorILi1ELi2EEEJRKS2_EEvPT_DpOT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #4 comdat {
  tail call void @_ZN6dealii6TensorILi1ELi2EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6TensorILi1ELi2EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #6 comdat align 2 !prof !535 {
  %3 = load double, ptr %1, align 8, !tbaa !306
  store double %3, ptr %0, align 8, !tbaa !306
  %4 = getelementptr inbounds [2 x double], ptr %1, i64 0, i64 1
  %5 = load double, ptr %4, align 8, !tbaa !306
  %6 = getelementptr inbounds [2 x double], ptr %0, i64 0, i64 1
  store double %5, ptr %6, align 8, !tbaa !306
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %61, label %4

4:                                                ; preds = %2
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %6 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<2, 2>, std::allocator<dealii::Tensor<2, 2>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !532
  %8 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<2, 2>, std::allocator<dealii::Tensor<2, 2>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !335
  %10 = ptrtoint ptr %7 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = ashr exact i64 %12, 5
  %14 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %15 = icmp ule i64 %5, %14
  tail call void @llvm.assume(i1 %15)
  %16 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %17 = sub i64 %16, %5
  %18 = icmp ule i64 %13, %17
  tail call void @llvm.assume(i1 %18)
  %19 = icmp ult i64 %13, %1
  br i1 %19, label %24, label %20

20:                                               ; preds = %4
  %21 = load ptr, ptr %8, align 8, !tbaa !335
  %22 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %23 = tail call noundef ptr @_ZSt27__uninitialized_default_n_aIPN6dealii6TensorILi2ELi2EEEmS2_ET_S4_T0_RSaIT1_E(ptr noundef %21, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %22) #14
  store ptr %23, ptr %8, align 8, !tbaa !335
  br label %61

24:                                               ; preds = %4
  %25 = load ptr, ptr %0, align 8, !tbaa !334
  %26 = load ptr, ptr %8, align 8, !tbaa !335
  %27 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull @.str.1) #14
  %28 = tail call noundef ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %27) #14
  %29 = getelementptr inbounds %"class.dealii::Tensor.53", ptr %28, i64 %5
  %30 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %31 = invoke noundef ptr @_ZSt27__uninitialized_default_n_aIPN6dealii6TensorILi2ELi2EEEmS2_ET_S4_T0_RSaIT1_E(ptr noundef %29, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %30) #14
          to label %36 unwind label %32

32:                                               ; preds = %24
  %33 = landingpad { ptr, i32 }
          catch ptr null
  %34 = extractvalue { ptr, i32 } %33, 0
  %35 = tail call ptr @__cxa_begin_catch(ptr %34) #15
  br label %49

36:                                               ; preds = %24
  %37 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %38 = invoke noundef ptr @_ZSt34__uninitialized_move_if_noexcept_aIPN6dealii6TensorILi2ELi2EEES3_SaIS2_EET0_T_S6_S5_RT1_(ptr noundef %25, ptr noundef %26, ptr noundef %28, ptr noundef nonnull align 1 dereferenceable(1) %37) #14
          to label %52 unwind label %39

39:                                               ; preds = %36
  %40 = landingpad { ptr, i32 }
          catch ptr null
  %41 = extractvalue { ptr, i32 } %40, 0
  %42 = tail call ptr @__cxa_begin_catch(ptr %41) #15
  %43 = icmp eq ptr %28, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %"class.dealii::Tensor.53", ptr %29, i64 %1
  %46 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  invoke void @_ZSt8_DestroyIPN6dealii6TensorILi2ELi2EEES2_EvT_S4_RSaIT0_E(ptr noundef nonnull %29, ptr noundef nonnull %45, ptr noundef nonnull align 1 dereferenceable(1) %46) #14
          to label %49 unwind label %47

47:                                               ; preds = %50, %49, %44
  %48 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %51 unwind label %62

49:                                               ; preds = %32, %44, %39
  invoke void @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %28, i64 noundef %27) #14
          to label %50 unwind label %47

50:                                               ; preds = %49
  invoke void @__cxa_rethrow() #21
          to label %65 unwind label %47

51:                                               ; preds = %47
  resume { ptr, i32 } %48

52:                                               ; preds = %36
  %53 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  tail call void @_ZSt8_DestroyIPN6dealii6TensorILi2ELi2EEES2_EvT_S4_RSaIT0_E(ptr noundef %25, ptr noundef %26, ptr noundef nonnull align 1 dereferenceable(1) %53) #14
  %54 = load ptr, ptr %6, align 8, !tbaa !532
  %55 = ptrtoint ptr %54 to i64
  %56 = ptrtoint ptr %25 to i64
  %57 = sub i64 %55, %56
  %58 = ashr exact i64 %57, 5
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %25, i64 noundef %58) #14
  store ptr %28, ptr %0, align 8, !tbaa !334
  %59 = getelementptr inbounds %"class.dealii::Tensor.53", ptr %29, i64 %1
  store ptr %59, ptr %8, align 8, !tbaa !335
  %60 = getelementptr inbounds %"class.dealii::Tensor.53", ptr %28, i64 %27
  store ptr %60, ptr %6, align 8, !tbaa !532
  br label %61

61:                                               ; preds = %20, %52, %2
  ret void

62:                                               ; preds = %47
  %63 = landingpad { ptr, i32 }
          catch ptr null
  %64 = extractvalue { ptr, i32 } %63, 0
  tail call void @__clang_call_terminate(ptr %64) #17
  unreachable

65:                                               ; preds = %50
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE15_M_erase_at_endEPS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !261 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<2, 2>, std::allocator<dealii::Tensor<2, 2>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !335
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  invoke void @_ZSt8_DestroyIPN6dealii6TensorILi2ELi2EEES2_EvT_S4_RSaIT0_E(ptr noundef %1, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %7) #14
          to label %8 unwind label %10

8:                                                ; preds = %6
  store ptr %1, ptr %3, align 8, !tbaa !335
  br label %9

9:                                                ; preds = %8, %2
  ret void

10:                                               ; preds = %6
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !261 {
  %2 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %3 = tail call noundef i64 @_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE11_S_max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %2) #16
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 !prof !261 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %1, ptr %4, align 8, !tbaa !446
  %6 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %7 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %8 = sub i64 %6, %7
  %9 = icmp ult i64 %8, %1
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef %2) #19
  unreachable

11:                                               ; preds = %3
  %12 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  %13 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  store i64 %13, ptr %5, align 8, !tbaa !446
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #14
  %15 = load i64, ptr %14, align 8, !tbaa !446
  %16 = add i64 %15, %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  %17 = call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %22, label %19

19:                                               ; preds = %11
  %20 = call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %21 = icmp ugt i64 %16, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %19, %11
  %23 = call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  br label %24

24:                                               ; preds = %19, %22
  %25 = phi i64 [ %23, %22 ], [ %16, %19 ]
  ret i64 %25
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt34__uninitialized_move_if_noexcept_aIPN6dealii6TensorILi2ELi2EEES3_SaIS2_EET0_T_S6_S5_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #4 comdat !prof !261 {
  %5 = tail call noundef ptr @_ZSt32__make_move_if_noexcept_iteratorIN6dealii6TensorILi2ELi2EEEPKS2_ET0_PT_(ptr noundef %0) #14
  %6 = tail call noundef ptr @_ZSt32__make_move_if_noexcept_iteratorIN6dealii6TensorILi2ELi2EEEPKS2_ET0_PT_(ptr noundef %1) #14
  %7 = tail call noundef ptr @_ZSt22__uninitialized_copy_aIPKN6dealii6TensorILi2ELi2EEEPS2_S2_ET0_T_S7_S6_RSaIT1_E(ptr noundef %5, ptr noundef %6, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #14
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !261 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_copy_aIPKN6dealii6TensorILi2ELi2EEEPS2_S2_ET0_T_S7_S6_RSaIT1_E(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #4 comdat {
  %5 = tail call noundef ptr @_ZSt18uninitialized_copyIPKN6dealii6TensorILi2ELi2EEEPS2_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt32__make_move_if_noexcept_iteratorIN6dealii6TensorILi2ELi2EEEPKS2_ET0_PT_(ptr noundef %0) local_unnamed_addr #6 comdat {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt18uninitialized_copyIPKN6dealii6TensorILi2ELi2EEEPS2_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat {
  %4 = tail call noundef ptr @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPKN6dealii6TensorILi2ELi2EEEPS4_EET0_T_S9_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPKN6dealii6TensorILi2ELi2EEEPS4_EET0_T_S9_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 {
  %4 = tail call noundef ptr @_ZSt16__do_uninit_copyIPKN6dealii6TensorILi2ELi2EEEPS2_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIPKN6dealii6TensorILi2ELi2EEEPS2_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %17, label %5

5:                                                ; preds = %3, %8
  %6 = phi ptr [ %10, %8 ], [ %2, %3 ]
  %7 = phi ptr [ %9, %8 ], [ %0, %3 ]
  invoke void @_ZSt10_ConstructIN6dealii6TensorILi2ELi2EEEJRKS2_EEvPT_DpOT0_(ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(32) %7) #14
          to label %8 unwind label %12

8:                                                ; preds = %5
  %9 = getelementptr inbounds %"class.dealii::Tensor.53", ptr %7, i64 1
  %10 = getelementptr inbounds %"class.dealii::Tensor.53", ptr %6, i64 1
  %11 = icmp eq ptr %9, %1
  br i1 %11, label %17, label %5, !llvm.loop !536

12:                                               ; preds = %5
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  %15 = tail call ptr @__cxa_begin_catch(ptr %14) #15
  invoke void @_ZSt8_DestroyIPN6dealii6TensorILi2ELi2EEEEvT_S4_(ptr noundef %2, ptr noundef %6) #14
          to label %16 unwind label %19

16:                                               ; preds = %12
  invoke void @__cxa_rethrow() #21
          to label %25 unwind label %19

17:                                               ; preds = %8, %3
  %18 = phi ptr [ %2, %3 ], [ %10, %8 ]
  ret ptr %18

19:                                               ; preds = %16, %12
  %20 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %21 unwind label %22

21:                                               ; preds = %19
  resume { ptr, i32 } %20

22:                                               ; preds = %19
  %23 = landingpad { ptr, i32 }
          catch ptr null
  %24 = extractvalue { ptr, i32 } %23, 0
  tail call void @__clang_call_terminate(ptr %24) #17
  unreachable

25:                                               ; preds = %16
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructIN6dealii6TensorILi2ELi2EEEJRKS2_EEvPT_DpOT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat {
  tail call void @_ZN6dealii6TensorILi2ELi2EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6TensorILi2ELi2EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #4 comdat align 2 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi i64 [ 0, %2 ], [ %7, %3 ]
  %5 = getelementptr inbounds %"class.dealii::Tensor.50", ptr %0, i64 %4
  %6 = getelementptr inbounds [2 x %"class.dealii::Tensor.50"], ptr %1, i64 0, i64 %4
  tail call void @_ZN6dealii6TensorILi1ELi2EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6) #14
  %7 = add nuw nsw i64 %4, 1
  %8 = icmp eq i64 %7, 2
  br i1 %8, label %9, label %3

9:                                                ; preds = %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi1ELi2EEESt6vectorIS3_SaIS3_EEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #6 comdat align 2 !prof !261 {
  %3 = load ptr, ptr %1, align 8, !tbaa !404
  store ptr %3, ptr %0, align 8, !tbaa !537
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8__fill_aIN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi1ELi2EEESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RKT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #4 comdat !prof !261 {
  tail call void @_ZSt9__fill_a1IPN6dealii6TensorILi1ELi2EEESt6vectorIS2_SaIS2_EES2_EvN9__gnu_cxx17__normal_iteratorIT_T0_EESB_RKT1_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt9__fill_a1IPN6dealii6TensorILi1ELi2EEESt6vectorIS2_SaIS2_EES2_EvN9__gnu_cxx17__normal_iteratorIT_T0_EESB_RKT1_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #4 comdat !prof !261 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.51", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.51", align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi1ELi2EEESt6vectorIS3_SaIS3_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #16
  %7 = load ptr, ptr %6, align 8, !tbaa !404
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi1ELi2EEESt6vectorIS3_SaIS3_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #16
  %9 = load ptr, ptr %8, align 8, !tbaa !404
  call void @_ZSt9__fill_a1IPN6dealii6TensorILi1ELi2EEES2_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT0_EE7__valueEvE6__typeET_S9_RKS6_(ptr noundef %7, ptr noundef %9, ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt9__fill_a1IPN6dealii6TensorILi1ELi2EEES2_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT0_EE7__valueEvE6__typeET_S9_RKS6_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #6 comdat !prof !261 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %10, label %5

5:                                                ; preds = %3, %5
  %6 = phi ptr [ %8, %5 ], [ %0, %3 ]
  %7 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi1ELi2EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  %8 = getelementptr inbounds %"class.dealii::Tensor.50", ptr %6, i64 1
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %10, label %5, !llvm.loop !539

10:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi1ELi2EEESt6vectorIS3_SaIS3_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #6 comdat align 2 !prof !261 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi2ELi2EEESt6vectorIS3_SaIS3_EEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #6 comdat align 2 !prof !261 {
  %3 = load ptr, ptr %1, align 8, !tbaa !404
  store ptr %3, ptr %0, align 8, !tbaa !540
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8__fill_aIN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi2ELi2EEESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RKT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #4 comdat !prof !261 {
  tail call void @_ZSt9__fill_a1IPN6dealii6TensorILi2ELi2EEESt6vectorIS2_SaIS2_EES2_EvN9__gnu_cxx17__normal_iteratorIT_T0_EESB_RKT1_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt9__fill_a1IPN6dealii6TensorILi2ELi2EEESt6vectorIS2_SaIS2_EES2_EvN9__gnu_cxx17__normal_iteratorIT_T0_EESB_RKT1_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #4 comdat !prof !261 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.52", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.52", align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi2ELi2EEESt6vectorIS3_SaIS3_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #16
  %7 = load ptr, ptr %6, align 8, !tbaa !404
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi2ELi2EEESt6vectorIS3_SaIS3_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #16
  %9 = load ptr, ptr %8, align 8, !tbaa !404
  call void @_ZSt9__fill_a1IPN6dealii6TensorILi2ELi2EEES2_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT0_EE7__valueEvE6__typeET_S9_RKS6_(ptr noundef %7, ptr noundef %9, ptr noundef nonnull align 8 dereferenceable(32) %2) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt9__fill_a1IPN6dealii6TensorILi2ELi2EEES2_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT0_EE7__valueEvE6__typeET_S9_RKS6_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #4 comdat !prof !261 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %10, label %5

5:                                                ; preds = %3, %5
  %6 = phi ptr [ %8, %5 ], [ %0, %3 ]
  %7 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN6dealii6TensorILi2ELi2EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %2) #14
  %8 = getelementptr inbounds %"class.dealii::Tensor.53", ptr %6, i64 1
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %10, label %5, !llvm.loop !542

10:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi2ELi2EEESt6vectorIS3_SaIS3_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #6 comdat align 2 !prof !261 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi3ELi2EEESt6vectorIS3_SaIS3_EEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #6 comdat align 2 !prof !261 {
  %3 = load ptr, ptr %1, align 8, !tbaa !404
  store ptr %3, ptr %0, align 8, !tbaa !543
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8__fill_aIN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi3ELi2EEESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RKT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #4 comdat !prof !261 {
  tail call void @_ZSt9__fill_a1IPN6dealii6TensorILi3ELi2EEESt6vectorIS2_SaIS2_EES2_EvN9__gnu_cxx17__normal_iteratorIT_T0_EESB_RKT1_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(64) %2) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt9__fill_a1IPN6dealii6TensorILi3ELi2EEESt6vectorIS2_SaIS2_EES2_EvN9__gnu_cxx17__normal_iteratorIT_T0_EESB_RKT1_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #4 comdat !prof !261 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.54", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.54", align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi3ELi2EEESt6vectorIS3_SaIS3_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #16
  %7 = load ptr, ptr %6, align 8, !tbaa !404
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi3ELi2EEESt6vectorIS3_SaIS3_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #16
  %9 = load ptr, ptr %8, align 8, !tbaa !404
  call void @_ZSt9__fill_a1IPN6dealii6TensorILi3ELi2EEES2_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT0_EE7__valueEvE6__typeET_S9_RKS6_(ptr noundef %7, ptr noundef %9, ptr noundef nonnull align 8 dereferenceable(64) %2) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt9__fill_a1IPN6dealii6TensorILi3ELi2EEES2_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT0_EE7__valueEvE6__typeET_S9_RKS6_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #4 comdat !prof !261 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %10, label %5

5:                                                ; preds = %3, %5
  %6 = phi ptr [ %8, %5 ], [ %0, %3 ]
  %7 = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6dealii6TensorILi3ELi2EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %2) #14
  %8 = getelementptr inbounds %"class.dealii::Tensor.55", ptr %6, i64 1
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %10, label %5, !llvm.loop !545

10:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi3ELi2EEESt6vectorIS3_SaIS3_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #6 comdat align 2 !prof !261 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZN6dealii6TensorILi3ELi2EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #4 comdat align 2 !prof !261 {
  %3 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN6dealii6TensorILi2ELi2EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #14
  %4 = getelementptr inbounds [2 x %"class.dealii::Tensor.53"], ptr %1, i64 0, i64 1
  %5 = getelementptr inbounds [2 x %"class.dealii::Tensor.53"], ptr %0, i64 0, i64 1
  %6 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN6dealii6TensorILi2ELi2EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4) #14
  ret ptr %0
}

; Function Attrs: optsize
declare noundef i32 @_ZN6dealii15PolynomialSpaceILi3EE14compute_n_polsEj(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #6 comdat align 2 !prof !362 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE17_S_check_init_lenEmRKS3_(i64 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #4 comdat align 2 !prof !546 {
  %3 = alloca %"class.std::allocator.60", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #15
  call void @_ZNSaIN6dealii6TensorILi1ELi3EEEEC2ERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  %4 = call noundef i64 @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE11_S_max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %3) #16
  %5 = icmp ult i64 %4, %0
  call void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #15
  br i1 %5, label %6, label %7, !prof !547

6:                                                ; preds = %2
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #19
  unreachable

7:                                                ; preds = %2
  ret i64 %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !548 {
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE12_Vector_implC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %2) #16
  invoke void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #14
          to label %4 unwind label %5

4:                                                ; preds = %3
  ret void

5:                                                ; preds = %3
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !368
  %4 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %5 = tail call noundef ptr @_ZSt27__uninitialized_default_n_aIPN6dealii6TensorILi1ELi3EEEmS2_ET_S4_T0_RSaIT1_E(ptr noundef %3, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %4) #14
  %6 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %5, ptr %6, align 8, !tbaa !369
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !367 {
  %2 = load ptr, ptr %0, align 8, !tbaa !368
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !549
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 24
  invoke void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #14
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE11_S_max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #6 comdat align 2 !prof !550 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  store i64 384307168202282325, ptr %2, align 8, !tbaa !446
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %4 = tail call noundef i64 @_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi3EEEEE8max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  store i64 %4, ptr %3, align 8, !tbaa !446
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #14
  %6 = load i64, ptr %5, align 8, !tbaa !446
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIN6dealii6TensorILi1ELi3EEEEC2ERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #6 comdat align 2 !prof !551 {
  tail call void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEEC2ERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi3EEEEE8max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #6 comdat align 2 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #6 comdat align 2 !prof !550 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #6 comdat align 2 !prof !552 {
  ret i64 384307168202282325
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEEC2ERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #6 comdat align 2 !prof !551 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE12_Vector_implC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #6 comdat align 2 !prof !548 {
  tail call void @_ZNSaIN6dealii6TensorILi1ELi3EEEEC2ERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !548 {
  %3 = tail call noundef ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #14
  store ptr %3, ptr %0, align 8, !tbaa !368
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !369
  %5 = getelementptr inbounds %"class.dealii::Tensor.74", ptr %3, i64 %1
  %6 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !549
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #6 comdat align 2 !prof !553 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 !prof !367 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !554 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4, !prof !555

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi3EEEEE8allocateERS3_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #14
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi3EEEEE8allocateERS3_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #14
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !443

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 768614336404564650
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #19
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #19
  unreachable

10:                                               ; preds = %3
  %11 = mul i64 %1, 24
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #20
  ret ptr %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__uninitialized_default_n_aIPN6dealii6TensorILi1ELi3EEEmS2_ET_S4_T0_RSaIT1_E(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat {
  %4 = tail call noundef ptr @_ZSt25__uninitialized_default_nIPN6dealii6TensorILi1ELi3EEEmET_S4_T0_(ptr noundef %0, i64 noundef %1) #14
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !556 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt25__uninitialized_default_nIPN6dealii6TensorILi1ELi3EEEmET_S4_T0_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #4 comdat {
  %3 = tail call noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6dealii6TensorILi1ELi3EEEmEET_S6_T0_(ptr noundef %0, i64 noundef %1) #14
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6dealii6TensorILi1ELi3EEEmEET_S6_T0_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %16, label %4

4:                                                ; preds = %2, %7
  %5 = phi ptr [ %9, %7 ], [ %0, %2 ]
  %6 = phi i64 [ %8, %7 ], [ %1, %2 ]
  invoke void @_ZSt10_ConstructIN6dealii6TensorILi1ELi3EEEJEEvPT_DpOT0_(ptr noundef %5) #14
          to label %7 unwind label %11

7:                                                ; preds = %4
  %8 = add i64 %6, -1
  %9 = getelementptr inbounds %"class.dealii::Tensor.74", ptr %5, i64 1
  %10 = icmp eq i64 %8, 0
  br i1 %10, label %16, label %4, !llvm.loop !557

11:                                               ; preds = %4
  %12 = landingpad { ptr, i32 }
          catch ptr null
  %13 = extractvalue { ptr, i32 } %12, 0
  %14 = tail call ptr @__cxa_begin_catch(ptr %13) #15
  invoke void @_ZSt8_DestroyIPN6dealii6TensorILi1ELi3EEEEvT_S4_(ptr noundef %0, ptr noundef %5) #14
          to label %15 unwind label %18

15:                                               ; preds = %11
  invoke void @__cxa_rethrow() #21
          to label %24 unwind label %18

16:                                               ; preds = %7, %2
  %17 = phi ptr [ %0, %2 ], [ %9, %7 ]
  ret ptr %17

18:                                               ; preds = %15, %11
  %19 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %20 unwind label %21

20:                                               ; preds = %18
  resume { ptr, i32 } %19

21:                                               ; preds = %18
  %22 = landingpad { ptr, i32 }
          catch ptr null
  %23 = extractvalue { ptr, i32 } %22, 0
  tail call void @__clang_call_terminate(ptr %23) #17
  unreachable

24:                                               ; preds = %15
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructIN6dealii6TensorILi1ELi3EEEJEEvPT_DpOT0_(ptr noundef %0) local_unnamed_addr #4 comdat {
  tail call void @_ZN6dealii6TensorILi1ELi3EEC2Eb(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext true) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN6dealii6TensorILi1ELi3EEEEvT_S4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat !prof !558 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii6TensorILi1ELi3EEEEEvT_S6_(ptr noundef %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii6TensorILi1ELi3EEEEEvT_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !558 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 !prof !558 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !559

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi3EEEEE10deallocateERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #14
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi3EEEEE10deallocateERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #6 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi3EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #6 comdat align 2 !prof !363 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE17_S_check_init_lenEmRKS3_(i64 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #4 comdat align 2 !prof !560 {
  %3 = alloca %"class.std::allocator.65", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #15
  call void @_ZNSaIN6dealii6TensorILi2ELi3EEEEC2ERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  %4 = call noundef i64 @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE11_S_max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %3) #16
  %5 = icmp ult i64 %4, %0
  call void @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi3EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #15
  br i1 %5, label %6, label %7, !prof !561

6:                                                ; preds = %2
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #19
  unreachable

7:                                                ; preds = %2
  ret i64 %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !562 {
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE12_Vector_implC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %2) #16
  invoke void @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #14
          to label %4 unwind label %5

4:                                                ; preds = %3
  ret void

5:                                                ; preds = %3
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi3EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !365
  %4 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %5 = tail call noundef ptr @_ZSt27__uninitialized_default_n_aIPN6dealii6TensorILi2ELi3EEEmS2_ET_S4_T0_RSaIT1_E(ptr noundef %3, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %4) #14
  %6 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<2, 3>, std::allocator<dealii::Tensor<2, 3>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %5, ptr %6, align 8, !tbaa !366
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !364 {
  %2 = load ptr, ptr %0, align 8, !tbaa !365
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<2, 3>, std::allocator<dealii::Tensor<2, 3>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !563
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 72
  invoke void @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #14
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi3EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE11_S_max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #6 comdat align 2 !prof !564 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  store i64 128102389400760775, ptr %2, align 8, !tbaa !446
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %4 = tail call noundef i64 @_ZNSt16allocator_traitsISaIN6dealii6TensorILi2ELi3EEEEE8max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  store i64 %4, ptr %3, align 8, !tbaa !446
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #14
  %6 = load i64, ptr %5, align 8, !tbaa !446
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIN6dealii6TensorILi2ELi3EEEEC2ERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #6 comdat align 2 !prof !565 {
  tail call void @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi3EEEEC2ERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaIN6dealii6TensorILi2ELi3EEEEE8max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #6 comdat align 2 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi2ELi3EEEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi2ELi3EEEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #6 comdat align 2 !prof !564 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi2ELi3EEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi2ELi3EEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #6 comdat align 2 !prof !566 {
  ret i64 128102389400760775
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi3EEEEC2ERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #6 comdat align 2 !prof !565 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE12_Vector_implC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #6 comdat align 2 !prof !562 {
  tail call void @_ZNSaIN6dealii6TensorILi2ELi3EEEEC2ERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !562 {
  %3 = tail call noundef ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #14
  store ptr %3, ptr %0, align 8, !tbaa !365
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<2, 3>, std::allocator<dealii::Tensor<2, 3>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !366
  %5 = getelementptr inbounds %"class.dealii::Tensor.77", ptr %3, i64 %1
  %6 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<2, 3>, std::allocator<dealii::Tensor<2, 3>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !563
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi3EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #6 comdat align 2 !prof !567 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 !prof !364 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !568 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4, !prof !569

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaIN6dealii6TensorILi2ELi3EEEEE8allocateERS3_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #14
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIN6dealii6TensorILi2ELi3EEEEE8allocateERS3_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi3EEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #14
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi3EEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi2ELi3EEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !443

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 256204778801521550
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #19
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #19
  unreachable

10:                                               ; preds = %3
  %11 = mul i64 %1, 72
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #20
  ret ptr %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__uninitialized_default_n_aIPN6dealii6TensorILi2ELi3EEEmS2_ET_S4_T0_RSaIT1_E(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat {
  %4 = tail call noundef ptr @_ZSt25__uninitialized_default_nIPN6dealii6TensorILi2ELi3EEEmET_S4_T0_(ptr noundef %0, i64 noundef %1) #14
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !570 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt25__uninitialized_default_nIPN6dealii6TensorILi2ELi3EEEmET_S4_T0_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #4 comdat {
  %3 = tail call noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6dealii6TensorILi2ELi3EEEmEET_S6_T0_(ptr noundef %0, i64 noundef %1) #14
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6dealii6TensorILi2ELi3EEEmEET_S6_T0_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %16, label %4

4:                                                ; preds = %2, %7
  %5 = phi ptr [ %9, %7 ], [ %0, %2 ]
  %6 = phi i64 [ %8, %7 ], [ %1, %2 ]
  invoke void @_ZSt10_ConstructIN6dealii6TensorILi2ELi3EEEJEEvPT_DpOT0_(ptr noundef %5) #14
          to label %7 unwind label %11

7:                                                ; preds = %4
  %8 = add i64 %6, -1
  %9 = getelementptr inbounds %"class.dealii::Tensor.77", ptr %5, i64 1
  %10 = icmp eq i64 %8, 0
  br i1 %10, label %16, label %4, !llvm.loop !571

11:                                               ; preds = %4
  %12 = landingpad { ptr, i32 }
          catch ptr null
  %13 = extractvalue { ptr, i32 } %12, 0
  %14 = tail call ptr @__cxa_begin_catch(ptr %13) #15
  invoke void @_ZSt8_DestroyIPN6dealii6TensorILi2ELi3EEEEvT_S4_(ptr noundef %0, ptr noundef %5) #14
          to label %15 unwind label %18

15:                                               ; preds = %11
  invoke void @__cxa_rethrow() #21
          to label %24 unwind label %18

16:                                               ; preds = %7, %2
  %17 = phi ptr [ %0, %2 ], [ %9, %7 ]
  ret ptr %17

18:                                               ; preds = %15, %11
  %19 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %20 unwind label %21

20:                                               ; preds = %18
  resume { ptr, i32 } %19

21:                                               ; preds = %18
  %22 = landingpad { ptr, i32 }
          catch ptr null
  %23 = extractvalue { ptr, i32 } %22, 0
  tail call void @__clang_call_terminate(ptr %23) #17
  unreachable

24:                                               ; preds = %15
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructIN6dealii6TensorILi2ELi3EEEJEEvPT_DpOT0_(ptr noundef %0) local_unnamed_addr #4 comdat {
  tail call void @_ZN6dealii6TensorILi2ELi3EEC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN6dealii6TensorILi2ELi3EEEEvT_S4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat !prof !572 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii6TensorILi2ELi3EEEEEvT_S6_(ptr noundef %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii6TensorILi2ELi3EEEEEvT_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !572 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 !prof !572 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !573

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIN6dealii6TensorILi2ELi3EEEEE10deallocateERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #14
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN6dealii6TensorILi2ELi3EEEEE10deallocateERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi3EEEE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi3EEEE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #6 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN6dealii6TensorILi1ELi3EEES2_EvT_S4_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat !prof !558 {
  tail call void @_ZSt8_DestroyIPN6dealii6TensorILi1ELi3EEEEvT_S4_(ptr noundef %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN6dealii6TensorILi2ELi3EEES2_EvT_S4_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat !prof !572 {
  tail call void @_ZSt8_DestroyIPN6dealii6TensorILi2ELi3EEEEvT_S4_(ptr noundef %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %61, label %4

4:                                                ; preds = %2
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %6 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !549
  %8 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !369
  %10 = ptrtoint ptr %7 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = sdiv exact i64 %12, 24
  %14 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %15 = icmp ule i64 %5, %14
  tail call void @llvm.assume(i1 %15)
  %16 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %17 = sub i64 %16, %5
  %18 = icmp ule i64 %13, %17
  tail call void @llvm.assume(i1 %18)
  %19 = icmp ult i64 %13, %1
  br i1 %19, label %24, label %20

20:                                               ; preds = %4
  %21 = load ptr, ptr %8, align 8, !tbaa !369
  %22 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %23 = tail call noundef ptr @_ZSt27__uninitialized_default_n_aIPN6dealii6TensorILi1ELi3EEEmS2_ET_S4_T0_RSaIT1_E(ptr noundef %21, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %22) #14
  store ptr %23, ptr %8, align 8, !tbaa !369
  br label %61

24:                                               ; preds = %4
  %25 = load ptr, ptr %0, align 8, !tbaa !368
  %26 = load ptr, ptr %8, align 8, !tbaa !369
  %27 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull @.str.1) #14
  %28 = tail call noundef ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %27) #14
  %29 = getelementptr inbounds %"class.dealii::Tensor.74", ptr %28, i64 %5
  %30 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %31 = invoke noundef ptr @_ZSt27__uninitialized_default_n_aIPN6dealii6TensorILi1ELi3EEEmS2_ET_S4_T0_RSaIT1_E(ptr noundef %29, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %30) #14
          to label %36 unwind label %32

32:                                               ; preds = %24
  %33 = landingpad { ptr, i32 }
          catch ptr null
  %34 = extractvalue { ptr, i32 } %33, 0
  %35 = tail call ptr @__cxa_begin_catch(ptr %34) #15
  br label %49

36:                                               ; preds = %24
  %37 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %38 = invoke noundef ptr @_ZSt34__uninitialized_move_if_noexcept_aIPN6dealii6TensorILi1ELi3EEES3_SaIS2_EET0_T_S6_S5_RT1_(ptr noundef %25, ptr noundef %26, ptr noundef %28, ptr noundef nonnull align 1 dereferenceable(1) %37) #14
          to label %52 unwind label %39

39:                                               ; preds = %36
  %40 = landingpad { ptr, i32 }
          catch ptr null
  %41 = extractvalue { ptr, i32 } %40, 0
  %42 = tail call ptr @__cxa_begin_catch(ptr %41) #15
  %43 = icmp eq ptr %28, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %"class.dealii::Tensor.74", ptr %29, i64 %1
  %46 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  invoke void @_ZSt8_DestroyIPN6dealii6TensorILi1ELi3EEES2_EvT_S4_RSaIT0_E(ptr noundef nonnull %29, ptr noundef nonnull %45, ptr noundef nonnull align 1 dereferenceable(1) %46) #14
          to label %49 unwind label %47

47:                                               ; preds = %50, %49, %44
  %48 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %51 unwind label %62

49:                                               ; preds = %32, %44, %39
  invoke void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %28, i64 noundef %27) #14
          to label %50 unwind label %47

50:                                               ; preds = %49
  invoke void @__cxa_rethrow() #21
          to label %65 unwind label %47

51:                                               ; preds = %47
  resume { ptr, i32 } %48

52:                                               ; preds = %36
  %53 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  tail call void @_ZSt8_DestroyIPN6dealii6TensorILi1ELi3EEES2_EvT_S4_RSaIT0_E(ptr noundef %25, ptr noundef %26, ptr noundef nonnull align 1 dereferenceable(1) %53) #14
  %54 = load ptr, ptr %6, align 8, !tbaa !549
  %55 = ptrtoint ptr %54 to i64
  %56 = ptrtoint ptr %25 to i64
  %57 = sub i64 %55, %56
  %58 = sdiv exact i64 %57, 24
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %25, i64 noundef %58) #14
  store ptr %28, ptr %0, align 8, !tbaa !368
  %59 = getelementptr inbounds %"class.dealii::Tensor.74", ptr %29, i64 %1
  store ptr %59, ptr %8, align 8, !tbaa !369
  %60 = getelementptr inbounds %"class.dealii::Tensor.74", ptr %28, i64 %27
  store ptr %60, ptr %6, align 8, !tbaa !549
  br label %61

61:                                               ; preds = %20, %52, %2
  ret void

62:                                               ; preds = %47
  %63 = landingpad { ptr, i32 }
          catch ptr null
  %64 = extractvalue { ptr, i32 } %63, 0
  tail call void @__clang_call_terminate(ptr %64) #17
  unreachable

65:                                               ; preds = %50
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE15_M_erase_at_endEPS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !261 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !369
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  invoke void @_ZSt8_DestroyIPN6dealii6TensorILi1ELi3EEES2_EvT_S4_RSaIT0_E(ptr noundef %1, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %7) #14
          to label %8 unwind label %10

8:                                                ; preds = %6
  store ptr %1, ptr %3, align 8, !tbaa !369
  br label %9

9:                                                ; preds = %8, %2
  ret void

10:                                               ; preds = %6
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !574 {
  %2 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %3 = tail call noundef i64 @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE11_S_max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %2) #16
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 !prof !575 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %1, ptr %4, align 8, !tbaa !446
  %6 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %7 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %8 = sub i64 %6, %7
  %9 = icmp ult i64 %8, %1
  br i1 %9, label %10, label %11, !prof !576

10:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef %2) #19
  unreachable

11:                                               ; preds = %3
  %12 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  %13 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  store i64 %13, ptr %5, align 8, !tbaa !446
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #14
  %15 = load i64, ptr %14, align 8, !tbaa !446
  %16 = add i64 %15, %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  %17 = call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %22, label %19, !prof !576

19:                                               ; preds = %11
  %20 = call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %21 = icmp ugt i64 %16, %20
  br i1 %21, label %22, label %24, !prof !576

22:                                               ; preds = %19, %11
  %23 = call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  br label %24

24:                                               ; preds = %19, %22
  %25 = phi i64 [ %23, %22 ], [ %16, %19 ]
  ret i64 %25
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt34__uninitialized_move_if_noexcept_aIPN6dealii6TensorILi1ELi3EEES3_SaIS2_EET0_T_S6_S5_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #4 comdat !prof !574 {
  %5 = tail call noundef ptr @_ZSt32__make_move_if_noexcept_iteratorIN6dealii6TensorILi1ELi3EEEPKS2_ET0_PT_(ptr noundef %0) #14
  %6 = tail call noundef ptr @_ZSt32__make_move_if_noexcept_iteratorIN6dealii6TensorILi1ELi3EEEPKS2_ET0_PT_(ptr noundef %1) #14
  %7 = tail call noundef ptr @_ZSt22__uninitialized_copy_aIPKN6dealii6TensorILi1ELi3EEEPS2_S2_ET0_T_S7_S6_RSaIT1_E(ptr noundef %5, ptr noundef %6, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #14
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !577 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_copy_aIPKN6dealii6TensorILi1ELi3EEEPS2_S2_ET0_T_S7_S6_RSaIT1_E(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #4 comdat {
  %5 = tail call noundef ptr @_ZSt18uninitialized_copyIPKN6dealii6TensorILi1ELi3EEEPS2_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt32__make_move_if_noexcept_iteratorIN6dealii6TensorILi1ELi3EEEPKS2_ET0_PT_(ptr noundef %0) local_unnamed_addr #6 comdat {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt18uninitialized_copyIPKN6dealii6TensorILi1ELi3EEEPS2_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat {
  %4 = tail call noundef ptr @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPKN6dealii6TensorILi1ELi3EEEPS4_EET0_T_S9_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPKN6dealii6TensorILi1ELi3EEEPS4_EET0_T_S9_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 {
  %4 = tail call noundef ptr @_ZSt16__do_uninit_copyIPKN6dealii6TensorILi1ELi3EEEPS2_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIPKN6dealii6TensorILi1ELi3EEEPS2_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %17, label %5

5:                                                ; preds = %3, %8
  %6 = phi ptr [ %10, %8 ], [ %2, %3 ]
  %7 = phi ptr [ %9, %8 ], [ %0, %3 ]
  invoke void @_ZSt10_ConstructIN6dealii6TensorILi1ELi3EEEJRKS2_EEvPT_DpOT0_(ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(24) %7) #14
          to label %8 unwind label %12

8:                                                ; preds = %5
  %9 = getelementptr inbounds %"class.dealii::Tensor.74", ptr %7, i64 1
  %10 = getelementptr inbounds %"class.dealii::Tensor.74", ptr %6, i64 1
  %11 = icmp eq ptr %9, %1
  br i1 %11, label %17, label %5, !llvm.loop !578

12:                                               ; preds = %5
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  %15 = tail call ptr @__cxa_begin_catch(ptr %14) #15
  invoke void @_ZSt8_DestroyIPN6dealii6TensorILi1ELi3EEEEvT_S4_(ptr noundef %2, ptr noundef %6) #14
          to label %16 unwind label %19

16:                                               ; preds = %12
  invoke void @__cxa_rethrow() #21
          to label %25 unwind label %19

17:                                               ; preds = %8, %3
  %18 = phi ptr [ %2, %3 ], [ %10, %8 ]
  ret ptr %18

19:                                               ; preds = %16, %12
  %20 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %21 unwind label %22

21:                                               ; preds = %19
  resume { ptr, i32 } %20

22:                                               ; preds = %19
  %23 = landingpad { ptr, i32 }
          catch ptr null
  %24 = extractvalue { ptr, i32 } %23, 0
  tail call void @__clang_call_terminate(ptr %24) #17
  unreachable

25:                                               ; preds = %16
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructIN6dealii6TensorILi1ELi3EEEJRKS2_EEvPT_DpOT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #4 comdat {
  tail call void @_ZN6dealii6TensorILi1ELi3EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6TensorILi1ELi3EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #6 comdat align 2 !prof !579 {
  br label %4

3:                                                ; preds = %4
  ret void

4:                                                ; preds = %2, %4
  %5 = phi i64 [ 0, %2 ], [ %9, %4 ]
  %6 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %5
  %7 = load double, ptr %6, align 8, !tbaa !306
  %8 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 %5
  store double %7, ptr %8, align 8, !tbaa !306
  %9 = add nuw nsw i64 %5, 1
  %10 = icmp eq i64 %9, 3
  br i1 %10, label %3, label %4, !prof !580, !llvm.loop !581
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %61, label %4

4:                                                ; preds = %2
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %6 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<2, 3>, std::allocator<dealii::Tensor<2, 3>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !563
  %8 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<2, 3>, std::allocator<dealii::Tensor<2, 3>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !366
  %10 = ptrtoint ptr %7 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = sdiv exact i64 %12, 72
  %14 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %15 = icmp ule i64 %5, %14
  tail call void @llvm.assume(i1 %15)
  %16 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %17 = sub i64 %16, %5
  %18 = icmp ule i64 %13, %17
  tail call void @llvm.assume(i1 %18)
  %19 = icmp ult i64 %13, %1
  br i1 %19, label %24, label %20

20:                                               ; preds = %4
  %21 = load ptr, ptr %8, align 8, !tbaa !366
  %22 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %23 = tail call noundef ptr @_ZSt27__uninitialized_default_n_aIPN6dealii6TensorILi2ELi3EEEmS2_ET_S4_T0_RSaIT1_E(ptr noundef %21, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %22) #14
  store ptr %23, ptr %8, align 8, !tbaa !366
  br label %61

24:                                               ; preds = %4
  %25 = load ptr, ptr %0, align 8, !tbaa !365
  %26 = load ptr, ptr %8, align 8, !tbaa !366
  %27 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull @.str.1) #14
  %28 = tail call noundef ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %27) #14
  %29 = getelementptr inbounds %"class.dealii::Tensor.77", ptr %28, i64 %5
  %30 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %31 = invoke noundef ptr @_ZSt27__uninitialized_default_n_aIPN6dealii6TensorILi2ELi3EEEmS2_ET_S4_T0_RSaIT1_E(ptr noundef %29, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %30) #14
          to label %36 unwind label %32

32:                                               ; preds = %24
  %33 = landingpad { ptr, i32 }
          catch ptr null
  %34 = extractvalue { ptr, i32 } %33, 0
  %35 = tail call ptr @__cxa_begin_catch(ptr %34) #15
  br label %49

36:                                               ; preds = %24
  %37 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %38 = invoke noundef ptr @_ZSt34__uninitialized_move_if_noexcept_aIPN6dealii6TensorILi2ELi3EEES3_SaIS2_EET0_T_S6_S5_RT1_(ptr noundef %25, ptr noundef %26, ptr noundef %28, ptr noundef nonnull align 1 dereferenceable(1) %37) #14
          to label %52 unwind label %39

39:                                               ; preds = %36
  %40 = landingpad { ptr, i32 }
          catch ptr null
  %41 = extractvalue { ptr, i32 } %40, 0
  %42 = tail call ptr @__cxa_begin_catch(ptr %41) #15
  %43 = icmp eq ptr %28, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %"class.dealii::Tensor.77", ptr %29, i64 %1
  %46 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  invoke void @_ZSt8_DestroyIPN6dealii6TensorILi2ELi3EEES2_EvT_S4_RSaIT0_E(ptr noundef nonnull %29, ptr noundef nonnull %45, ptr noundef nonnull align 1 dereferenceable(1) %46) #14
          to label %49 unwind label %47

47:                                               ; preds = %50, %49, %44
  %48 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %51 unwind label %62

49:                                               ; preds = %32, %44, %39
  invoke void @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %28, i64 noundef %27) #14
          to label %50 unwind label %47

50:                                               ; preds = %49
  invoke void @__cxa_rethrow() #21
          to label %65 unwind label %47

51:                                               ; preds = %47
  resume { ptr, i32 } %48

52:                                               ; preds = %36
  %53 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  tail call void @_ZSt8_DestroyIPN6dealii6TensorILi2ELi3EEES2_EvT_S4_RSaIT0_E(ptr noundef %25, ptr noundef %26, ptr noundef nonnull align 1 dereferenceable(1) %53) #14
  %54 = load ptr, ptr %6, align 8, !tbaa !563
  %55 = ptrtoint ptr %54 to i64
  %56 = ptrtoint ptr %25 to i64
  %57 = sub i64 %55, %56
  %58 = sdiv exact i64 %57, 72
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %25, i64 noundef %58) #14
  store ptr %28, ptr %0, align 8, !tbaa !365
  %59 = getelementptr inbounds %"class.dealii::Tensor.77", ptr %29, i64 %1
  store ptr %59, ptr %8, align 8, !tbaa !366
  %60 = getelementptr inbounds %"class.dealii::Tensor.77", ptr %28, i64 %27
  store ptr %60, ptr %6, align 8, !tbaa !563
  br label %61

61:                                               ; preds = %20, %52, %2
  ret void

62:                                               ; preds = %47
  %63 = landingpad { ptr, i32 }
          catch ptr null
  %64 = extractvalue { ptr, i32 } %63, 0
  tail call void @__clang_call_terminate(ptr %64) #17
  unreachable

65:                                               ; preds = %50
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE15_M_erase_at_endEPS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !261 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<2, 3>, std::allocator<dealii::Tensor<2, 3>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !366
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  invoke void @_ZSt8_DestroyIPN6dealii6TensorILi2ELi3EEES2_EvT_S4_RSaIT0_E(ptr noundef %1, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %7) #14
          to label %8 unwind label %10

8:                                                ; preds = %6
  store ptr %1, ptr %3, align 8, !tbaa !366
  br label %9

9:                                                ; preds = %8, %2
  ret void

10:                                               ; preds = %6
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !582 {
  %2 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %3 = tail call noundef i64 @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE11_S_max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %2) #16
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 !prof !583 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %1, ptr %4, align 8, !tbaa !446
  %6 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %7 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %8 = sub i64 %6, %7
  %9 = icmp ult i64 %8, %1
  br i1 %9, label %10, label %11, !prof !584

10:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef %2) #19
  unreachable

11:                                               ; preds = %3
  %12 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  %13 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  store i64 %13, ptr %5, align 8, !tbaa !446
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #14
  %15 = load i64, ptr %14, align 8, !tbaa !446
  %16 = add i64 %15, %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  %17 = call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %22, label %19, !prof !584

19:                                               ; preds = %11
  %20 = call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %21 = icmp ugt i64 %16, %20
  br i1 %21, label %22, label %24, !prof !584

22:                                               ; preds = %19, %11
  %23 = call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  br label %24

24:                                               ; preds = %19, %22
  %25 = phi i64 [ %23, %22 ], [ %16, %19 ]
  ret i64 %25
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt34__uninitialized_move_if_noexcept_aIPN6dealii6TensorILi2ELi3EEES3_SaIS2_EET0_T_S6_S5_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #4 comdat !prof !582 {
  %5 = tail call noundef ptr @_ZSt32__make_move_if_noexcept_iteratorIN6dealii6TensorILi2ELi3EEEPKS2_ET0_PT_(ptr noundef %0) #14
  %6 = tail call noundef ptr @_ZSt32__make_move_if_noexcept_iteratorIN6dealii6TensorILi2ELi3EEEPKS2_ET0_PT_(ptr noundef %1) #14
  %7 = tail call noundef ptr @_ZSt22__uninitialized_copy_aIPKN6dealii6TensorILi2ELi3EEEPS2_S2_ET0_T_S7_S6_RSaIT1_E(ptr noundef %5, ptr noundef %6, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #14
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !585 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_copy_aIPKN6dealii6TensorILi2ELi3EEEPS2_S2_ET0_T_S7_S6_RSaIT1_E(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #4 comdat {
  %5 = tail call noundef ptr @_ZSt18uninitialized_copyIPKN6dealii6TensorILi2ELi3EEEPS2_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt32__make_move_if_noexcept_iteratorIN6dealii6TensorILi2ELi3EEEPKS2_ET0_PT_(ptr noundef %0) local_unnamed_addr #6 comdat {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt18uninitialized_copyIPKN6dealii6TensorILi2ELi3EEEPS2_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat {
  %4 = tail call noundef ptr @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPKN6dealii6TensorILi2ELi3EEEPS4_EET0_T_S9_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPKN6dealii6TensorILi2ELi3EEEPS4_EET0_T_S9_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 {
  %4 = tail call noundef ptr @_ZSt16__do_uninit_copyIPKN6dealii6TensorILi2ELi3EEEPS2_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIPKN6dealii6TensorILi2ELi3EEEPS2_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %17, label %5

5:                                                ; preds = %3, %8
  %6 = phi ptr [ %10, %8 ], [ %2, %3 ]
  %7 = phi ptr [ %9, %8 ], [ %0, %3 ]
  invoke void @_ZSt10_ConstructIN6dealii6TensorILi2ELi3EEEJRKS2_EEvPT_DpOT0_(ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(72) %7) #14
          to label %8 unwind label %12

8:                                                ; preds = %5
  %9 = getelementptr inbounds %"class.dealii::Tensor.77", ptr %7, i64 1
  %10 = getelementptr inbounds %"class.dealii::Tensor.77", ptr %6, i64 1
  %11 = icmp eq ptr %9, %1
  br i1 %11, label %17, label %5, !llvm.loop !586

12:                                               ; preds = %5
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  %15 = tail call ptr @__cxa_begin_catch(ptr %14) #15
  invoke void @_ZSt8_DestroyIPN6dealii6TensorILi2ELi3EEEEvT_S4_(ptr noundef %2, ptr noundef %6) #14
          to label %16 unwind label %19

16:                                               ; preds = %12
  invoke void @__cxa_rethrow() #21
          to label %25 unwind label %19

17:                                               ; preds = %8, %3
  %18 = phi ptr [ %2, %3 ], [ %10, %8 ]
  ret ptr %18

19:                                               ; preds = %16, %12
  %20 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %21 unwind label %22

21:                                               ; preds = %19
  resume { ptr, i32 } %20

22:                                               ; preds = %19
  %23 = landingpad { ptr, i32 }
          catch ptr null
  %24 = extractvalue { ptr, i32 } %23, 0
  tail call void @__clang_call_terminate(ptr %24) #17
  unreachable

25:                                               ; preds = %16
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructIN6dealii6TensorILi2ELi3EEEJRKS2_EEvPT_DpOT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #4 comdat {
  tail call void @_ZN6dealii6TensorILi2ELi3EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6TensorILi2ELi3EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #4 comdat align 2 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi i64 [ 0, %2 ], [ %7, %3 ]
  %5 = getelementptr inbounds %"class.dealii::Tensor.74", ptr %0, i64 %4
  %6 = getelementptr inbounds [3 x %"class.dealii::Tensor.74"], ptr %1, i64 0, i64 %4
  tail call void @_ZN6dealii6TensorILi1ELi3EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) #14
  %7 = add nuw nsw i64 %4, 1
  %8 = icmp eq i64 %7, 3
  br i1 %8, label %9, label %3

9:                                                ; preds = %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi1ELi3EEESt6vectorIS3_SaIS3_EEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #6 comdat align 2 !prof !587 {
  %3 = load ptr, ptr %1, align 8, !tbaa !404
  store ptr %3, ptr %0, align 8, !tbaa !588
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8__fill_aIN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi1ELi3EEESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RKT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #4 comdat !prof !590 {
  tail call void @_ZSt9__fill_a1IPN6dealii6TensorILi1ELi3EEESt6vectorIS2_SaIS2_EES2_EvN9__gnu_cxx17__normal_iteratorIT_T0_EESB_RKT1_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt9__fill_a1IPN6dealii6TensorILi1ELi3EEESt6vectorIS2_SaIS2_EES2_EvN9__gnu_cxx17__normal_iteratorIT_T0_EESB_RKT1_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #4 comdat !prof !590 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.75", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.75", align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi1ELi3EEESt6vectorIS3_SaIS3_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #16
  %7 = load ptr, ptr %6, align 8, !tbaa !404
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi1ELi3EEESt6vectorIS3_SaIS3_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #16
  %9 = load ptr, ptr %8, align 8, !tbaa !404
  call void @_ZSt9__fill_a1IPN6dealii6TensorILi1ELi3EEES2_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT0_EE7__valueEvE6__typeET_S9_RKS6_(ptr noundef %7, ptr noundef %9, ptr noundef nonnull align 8 dereferenceable(24) %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt9__fill_a1IPN6dealii6TensorILi1ELi3EEES2_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT0_EE7__valueEvE6__typeET_S9_RKS6_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #6 comdat !prof !590 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %10, label %5, !prof !591

5:                                                ; preds = %3, %5
  %6 = phi ptr [ %8, %5 ], [ %0, %3 ]
  %7 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi1ELi3EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %2) #14
  %8 = getelementptr inbounds %"class.dealii::Tensor.74", ptr %6, i64 1
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %10, label %5, !prof !592, !llvm.loop !593

10:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi1ELi3EEESt6vectorIS3_SaIS3_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #6 comdat align 2 !prof !594 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi2ELi3EEESt6vectorIS3_SaIS3_EEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #6 comdat align 2 !prof !595 {
  %3 = load ptr, ptr %1, align 8, !tbaa !404
  store ptr %3, ptr %0, align 8, !tbaa !596
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8__fill_aIN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi2ELi3EEESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RKT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #4 comdat !prof !388 {
  tail call void @_ZSt9__fill_a1IPN6dealii6TensorILi2ELi3EEESt6vectorIS2_SaIS2_EES2_EvN9__gnu_cxx17__normal_iteratorIT_T0_EESB_RKT1_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(72) %2) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt9__fill_a1IPN6dealii6TensorILi2ELi3EEESt6vectorIS2_SaIS2_EES2_EvN9__gnu_cxx17__normal_iteratorIT_T0_EESB_RKT1_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #4 comdat !prof !388 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.76", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.76", align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi2ELi3EEESt6vectorIS3_SaIS3_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #16
  %7 = load ptr, ptr %6, align 8, !tbaa !404
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi2ELi3EEESt6vectorIS3_SaIS3_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #16
  %9 = load ptr, ptr %8, align 8, !tbaa !404
  call void @_ZSt9__fill_a1IPN6dealii6TensorILi2ELi3EEES2_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT0_EE7__valueEvE6__typeET_S9_RKS6_(ptr noundef %7, ptr noundef %9, ptr noundef nonnull align 8 dereferenceable(72) %2) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt9__fill_a1IPN6dealii6TensorILi2ELi3EEES2_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT0_EE7__valueEvE6__typeET_S9_RKS6_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #4 comdat !prof !388 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %10, label %5, !prof !598

5:                                                ; preds = %3, %5
  %6 = phi ptr [ %8, %5 ], [ %0, %3 ]
  %7 = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZN6dealii6TensorILi2ELi3EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(72) %2) #14
  %8 = getelementptr inbounds %"class.dealii::Tensor.77", ptr %6, i64 1
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %10, label %5, !prof !599, !llvm.loop !600

10:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi2ELi3EEESt6vectorIS3_SaIS3_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #6 comdat align 2 !prof !595 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi3ELi3EEESt6vectorIS3_SaIS3_EEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #6 comdat align 2 !prof !261 {
  %3 = load ptr, ptr %1, align 8, !tbaa !404
  store ptr %3, ptr %0, align 8, !tbaa !601
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8__fill_aIN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi3ELi3EEESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RKT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(216) %2) local_unnamed_addr #4 comdat !prof !261 {
  tail call void @_ZSt9__fill_a1IPN6dealii6TensorILi3ELi3EEESt6vectorIS2_SaIS2_EES2_EvN9__gnu_cxx17__normal_iteratorIT_T0_EESB_RKT1_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(216) %2) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt9__fill_a1IPN6dealii6TensorILi3ELi3EEESt6vectorIS2_SaIS2_EES2_EvN9__gnu_cxx17__normal_iteratorIT_T0_EESB_RKT1_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(216) %2) local_unnamed_addr #4 comdat !prof !261 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.78", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.78", align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi3ELi3EEESt6vectorIS3_SaIS3_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #16
  %7 = load ptr, ptr %6, align 8, !tbaa !404
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi3ELi3EEESt6vectorIS3_SaIS3_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #16
  %9 = load ptr, ptr %8, align 8, !tbaa !404
  call void @_ZSt9__fill_a1IPN6dealii6TensorILi3ELi3EEES2_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT0_EE7__valueEvE6__typeET_S9_RKS6_(ptr noundef %7, ptr noundef %9, ptr noundef nonnull align 8 dereferenceable(216) %2) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt9__fill_a1IPN6dealii6TensorILi3ELi3EEES2_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT0_EE7__valueEvE6__typeET_S9_RKS6_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(216) %2) local_unnamed_addr #4 comdat !prof !261 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %10, label %5

5:                                                ; preds = %3, %5
  %6 = phi ptr [ %8, %5 ], [ %0, %3 ]
  %7 = tail call noundef nonnull align 8 dereferenceable(216) ptr @_ZN6dealii6TensorILi3ELi3EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(216) %6, ptr noundef nonnull align 8 dereferenceable(216) %2) #14
  %8 = getelementptr inbounds %"class.dealii::Tensor.79", ptr %6, i64 1
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %10, label %5, !llvm.loop !603

10:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi3ELi3EEESt6vectorIS3_SaIS3_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #6 comdat align 2 !prof !261 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(216) ptr @_ZN6dealii6TensorILi3ELi3EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 8 dereferenceable(216) %1) local_unnamed_addr #4 comdat align 2 !prof !261 {
  br label %4

3:                                                ; preds = %4
  ret ptr %0

4:                                                ; preds = %2, %4
  %5 = phi i64 [ 0, %2 ], [ %9, %4 ]
  %6 = getelementptr inbounds [3 x %"class.dealii::Tensor.77"], ptr %1, i64 0, i64 %5
  %7 = getelementptr inbounds [3 x %"class.dealii::Tensor.77"], ptr %0, i64 0, i64 %5
  %8 = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZN6dealii6TensorILi2ELi3EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %7, ptr noundef nonnull align 8 dereferenceable(72) %6) #14
  %9 = add nuw nsw i64 %5, 1
  %10 = icmp eq i64 %9, 3
  br i1 %10, label %3, label %4, !llvm.loop !604
}

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_polynomials_bdm.cc() #0 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

attributes #0 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { optsize }
attributes #15 = { nounwind }
attributes #16 = { nounwind optsize }
attributes #17 = { noreturn nounwind }
attributes #18 = { builtin nounwind optsize }
attributes #19 = { noreturn optsize }
attributes #20 = { builtin optsize allocsize(0) }
attributes #21 = { noreturn }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!260}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259}
!35 = !{ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EED2Ev, ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE19_M_get_Tp_allocatorEv, i64 179262}
!36 = !{ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EED2Ev, ptr @_ZSt8_DestroyIPN6dealii11Polynomials10PolynomialIdEES3_EvT_S5_RSaIT0_E, i64 179262}
!37 = !{ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EED2Ev, ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EED2Ev, i64 179262}
!38 = !{ptr @_ZNSaIN6dealii11Polynomials10PolynomialIdEEEC2Ev, ptr @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEEC2Ev, i64 16}
!39 = !{ptr @_ZNSaIdEC2Ev, ptr @_ZNSt15__new_allocatorIdEC2Ev, i64 9261343}
!40 = !{ptr @_ZNSt6vectorIdSaIdEED2Ev, ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv, i64 10618017}
!41 = !{ptr @_ZNSt6vectorIdSaIdEED2Ev, ptr @_ZSt8_DestroyIPddEvT_S1_RSaIT0_E, i64 10618017}
!42 = !{ptr @_ZNSt6vectorIdSaIdEED2Ev, ptr @_ZNSt12_Vector_baseIdSaIdEED2Ev, i64 10618007}
!43 = !{ptr @_ZNSt6vectorIdSaIdEED2Ev, ptr @__clang_call_terminate, i64 10}
!44 = !{ptr @_ZNSaIN6dealii6TensorILi1ELi3EEEEC2Ev, ptr @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEEC2Ev, i64 2314867}
!45 = !{ptr @_ZNSaIN6dealii6TensorILi2ELi3EEEEC2Ev, ptr @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi3EEEEC2Ev, i64 5301897}
!46 = !{ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EED2Ev, ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE19_M_get_Tp_allocatorEv, i64 5302653}
!47 = !{ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EED2Ev, ptr @_ZSt8_DestroyIPN6dealii6TensorILi2ELi3EEES2_EvT_S4_RSaIT0_E, i64 5302653}
!48 = !{ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EED2Ev, ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EED2Ev, i64 5302648}
!49 = !{ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EED2Ev, ptr @__clang_call_terminate, i64 5}
!50 = !{ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EED2Ev, ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE19_M_get_Tp_allocatorEv, i64 10407865}
!51 = !{ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EED2Ev, ptr @_ZSt8_DestroyIPN6dealii6TensorILi1ELi3EEES2_EvT_S4_RSaIT0_E, i64 10407865}
!52 = !{ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EED2Ev, ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EED2Ev, i64 10407855}
!53 = !{ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EED2Ev, ptr @__clang_call_terminate, i64 10}
!54 = !{ptr @_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi1ELi3EEESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RKT0_, ptr @_ZSt8__fill_aIN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi1ELi3EEESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RKT0_, i64 13860}
!55 = !{ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE5beginEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi1ELi3EEESt6vectorIS3_SaIS3_EEEC2ERKS4_, i64 5421140}
!56 = !{ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE3endEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi1ELi3EEESt6vectorIS3_SaIS3_EEEC2ERKS4_, i64 1020878}
!57 = !{ptr @_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi2ELi3EEESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RKT0_, ptr @_ZSt8__fill_aIN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi2ELi3EEESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RKT0_, i64 621280}
!58 = !{ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE5beginEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi2ELi3EEESt6vectorIS3_SaIS3_EEEC2ERKS4_, i64 621280}
!59 = !{ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE3endEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi2ELi3EEESt6vectorIS3_SaIS3_EEEC2ERKS4_, i64 803351}
!60 = !{ptr @_ZN6dealii6TensorILi2ELi3EEC2Ev, ptr @_ZN6dealii6TensorILi1ELi3EEC2Eb, i64 64833408}
!61 = !{ptr @_ZN6dealii6TensorILi2ELi3EEaSERKS1_, ptr @_ZN6dealii6TensorILi1ELi3EEaSERKS1_, i64 8031766}
!62 = !{ptr @_ZNSaIdEC2ERKS_, ptr @_ZNSt15__new_allocatorIdEC2ERKS0_, i64 4110539}
!63 = !{ptr @_ZNSt12_Vector_baseIdSaIdEEC2ERKS0_, ptr @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_, i64 7}
!64 = !{ptr @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_, ptr @_ZNSaIdEC2ERKS_, i64 2733634}
!65 = !{ptr @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_, ptr @_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev, i64 2733634}
!66 = !{ptr @_ZNSt6vectorIjSaIjEED2Ev, ptr @_ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv, i64 3863829}
!67 = !{ptr @_ZNSt6vectorIjSaIjEED2Ev, ptr @_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E, i64 3863829}
!68 = !{ptr @_ZNSt6vectorIjSaIjEED2Ev, ptr @_ZNSt12_Vector_baseIjSaIjEED2Ev, i64 3863825}
!69 = !{ptr @_ZNSt6vectorIjSaIjEED2Ev, ptr @__clang_call_terminate, i64 4}
!70 = !{ptr @_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E, ptr @_ZSt8_DestroyIPjEvT_S1_, i64 6310738}
!71 = !{ptr @_ZNSt12_Vector_baseIjSaIjEED2Ev, ptr @_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm, i64 3863829}
!72 = !{ptr @_ZNSt12_Vector_baseIjSaIjEED2Ev, ptr @_ZNSt15__new_allocatorIjED2Ev, i64 3863825}
!73 = !{ptr @_ZNSt12_Vector_baseIjSaIjEED2Ev, ptr @__clang_call_terminate, i64 4}
!74 = !{ptr @_ZSt8_DestroyIPjEvT_S1_, ptr @_ZNSt12_Destroy_auxILb1EE9__destroyIPjEEvT_S3_, i64 6310738}
!75 = !{ptr @_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm, ptr @_ZNSt16allocator_traitsISaIjEE10deallocateERS0_Pjm, i64 4810518}
!76 = !{ptr @_ZSt8_DestroyIPN6dealii11Polynomials10PolynomialIdEES3_EvT_S5_RSaIT0_E, ptr @_ZSt8_DestroyIPN6dealii11Polynomials10PolynomialIdEEEvT_S5_, i64 179268}
!77 = !{ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EED2Ev, ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE13_M_deallocateEPS3_m, i64 179262}
!78 = !{ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EED2Ev, ptr @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEED2Ev, i64 179262}
!79 = !{ptr @_ZSt8_DestroyIPN6dealii11Polynomials10PolynomialIdEEEvT_S5_, ptr @_ZNSt12_Destroy_auxILb0EE9__destroyIPN6dealii11Polynomials10PolynomialIdEEEEvT_S7_, i64 179268}
!80 = !{ptr @_ZNSt12_Destroy_auxILb0EE9__destroyIPN6dealii11Polynomials10PolynomialIdEEEEvT_S7_, ptr @_ZSt8_DestroyIN6dealii11Polynomials10PolynomialIdEEEvPT_, i64 268842}
!81 = !{ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE13_M_deallocateEPS3_m, ptr @_ZNSt16allocator_traitsISaIN6dealii11Polynomials10PolynomialIdEEEE10deallocateERS4_PS3_m, i64 179264}
!82 = !{ptr @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE5beginEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS4_SaIS4_EEEC2ERKS6_, i64 179259}
!83 = !{ptr @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE3endEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS4_SaIS4_EEEC2ERKS6_, i64 179259}
!84 = !{ptr @_ZNSaIjEC2Ev, ptr @_ZNSt15__new_allocatorIjEC2Ev, i64 2818434}
!85 = !{ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2ERKS4_, ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE12_Vector_implC2ERKS4_, i64 8}
!86 = !{ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE19_M_range_initializeIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEvT_SC_St20forward_iterator_tag, ptr @_ZSt8distanceIN9__gnu_cxx17__normal_iteratorIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS5_SaIS5_EEEEENSt15iterator_traitsIT_E15difference_typeESD_SD_, i64 8}
!87 = !{ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE19_M_range_initializeIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEvT_SC_St20forward_iterator_tag, ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE19_M_get_Tp_allocatorEv, i64 16}
!88 = !{ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE19_M_range_initializeIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEvT_SC_St20forward_iterator_tag, ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE17_S_check_init_lenEmRKS4_, i64 8}
!89 = !{ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE19_M_range_initializeIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEvT_SC_St20forward_iterator_tag, ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE11_M_allocateEm, i64 8}
!90 = !{ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE19_M_range_initializeIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEvT_SC_St20forward_iterator_tag, ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS5_SaIS5_EEEEPS5_S5_ET0_T_SE_SD_RSaIT1_E, i64 8}
!91 = !{ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE12_Vector_implC2ERKS4_, ptr @_ZNSaIN6dealii11Polynomials10PolynomialIdEEEC2ERKS3_, i64 179264}
!92 = !{ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE12_Vector_implC2ERKS4_, ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE17_Vector_impl_dataC2Ev, i64 179264}
!93 = !{ptr @_ZSt8distanceIN9__gnu_cxx17__normal_iteratorIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS5_SaIS5_EEEEENSt15iterator_traitsIT_E15difference_typeESD_SD_, ptr @_ZSt19__iterator_categoryIN9__gnu_cxx17__normal_iteratorIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS5_SaIS5_EEEEENSt15iterator_traitsIT_E17iterator_categoryERKSD_, i64 8}
!94 = !{ptr @_ZSt8distanceIN9__gnu_cxx17__normal_iteratorIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS5_SaIS5_EEEEENSt15iterator_traitsIT_E15difference_typeESD_SD_, ptr @_ZSt10__distanceIN9__gnu_cxx17__normal_iteratorIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS5_SaIS5_EEEEENSt15iterator_traitsIT_E15difference_typeESD_SD_St26random_access_iterator_tag, i64 8}
!95 = !{ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE11_M_allocateEm, ptr @_ZNSt16allocator_traitsISaIN6dealii11Polynomials10PolynomialIdEEEE8allocateERS4_m, i64 179269}
!96 = !{ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE17_S_check_init_lenEmRKS4_, ptr @_ZNSaIN6dealii11Polynomials10PolynomialIdEEEC2ERKS3_, i64 13}
!97 = !{ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE17_S_check_init_lenEmRKS4_, ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE11_S_max_sizeERKS4_, i64 13}
!98 = !{ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE17_S_check_init_lenEmRKS4_, ptr @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEED2Ev, i64 13}
!99 = !{ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE17_S_check_init_lenEmRKS4_, ptr @_ZSt20__throw_length_errorPKc, i64 1}
!100 = !{ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS5_SaIS5_EEEEPS5_S5_ET0_T_SE_SD_RSaIT1_E, ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS5_SaIS5_EEEEPS5_ET0_T_SE_SD_, i64 179259}
!101 = !{ptr @_ZSt10__distanceIN9__gnu_cxx17__normal_iteratorIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS5_SaIS5_EEEEENSt15iterator_traitsIT_E15difference_typeESD_SD_St26random_access_iterator_tag, ptr @_ZN9__gnu_cxxmiIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS4_SaIS4_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSD_SG_, i64 8}
!102 = !{ptr @_ZN9__gnu_cxxmiIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS4_SaIS4_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSD_SG_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS4_SaIS4_EEE4baseEv, i64 16}
!103 = !{ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE11_S_max_sizeERKS4_, ptr @_ZNSt16allocator_traitsISaIN6dealii11Polynomials10PolynomialIdEEEE8max_sizeERKS4_, i64 25}
!104 = !{ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE11_S_max_sizeERKS4_, ptr @_ZSt3minImERKT_S2_S2_, i64 25}
!105 = !{ptr @_ZNSaIN6dealii11Polynomials10PolynomialIdEEEC2ERKS3_, ptr @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEEC2ERKS4_, i64 179277}
!106 = !{ptr @_ZNKSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEE8max_sizeEv, ptr @_ZNKSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEE11_M_max_sizeEv, i64 25}
!107 = !{ptr @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS7_SaIS7_EEEEPS7_EET0_T_SG_SF_, ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS5_SaIS5_EEEEPS5_ET0_T_SE_SD_, i64 179259}
!108 = !{ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS5_SaIS5_EEEEPS5_ET0_T_SE_SD_, ptr @_ZN9__gnu_cxxneIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS4_SaIS4_EEEEbRKNS_17__normal_iteratorIT_T0_EESF_, i64 448091}
!109 = !{ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS5_SaIS5_EEEEPS5_ET0_T_SE_SD_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS4_SaIS4_EEEdeEv, i64 268832}
!110 = !{ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS5_SaIS5_EEEEPS5_ET0_T_SE_SD_, ptr @_ZSt10_ConstructIN6dealii11Polynomials10PolynomialIdEEJRKS3_EEvPT_DpOT0_, i64 268832}
!111 = !{ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS5_SaIS5_EEEEPS5_ET0_T_SE_SD_, ptr @_ZN9__gnu_cxx17__normal_iteratorIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS4_SaIS4_EEEppEv, i64 268832}
!112 = !{ptr @_ZN9__gnu_cxxneIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS4_SaIS4_EEEEbRKNS_17__normal_iteratorIT_T0_EESF_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS4_SaIS4_EEE4baseEv, i64 896184}
!113 = !{ptr @_ZNSt6vectorIdSaIdEEC2ERKS1_, ptr @_ZNKSt6vectorIdSaIdEE4sizeEv, i64 1356729}
!114 = !{ptr @_ZNSt6vectorIdSaIdEEC2ERKS1_, ptr @_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv, i64 1356729}
!115 = !{ptr @_ZNSt6vectorIdSaIdEEC2ERKS1_, ptr @_ZN9__gnu_cxx14__alloc_traitsISaIdEdE17_S_select_on_copyERKS1_, i64 1356729}
!116 = !{ptr @_ZNSt6vectorIdSaIdEEC2ERKS1_, ptr @_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_, i64 1356729}
!117 = !{ptr @_ZNSt6vectorIdSaIdEEC2ERKS1_, ptr @_ZNSt15__new_allocatorIdED2Ev, i64 1356729}
!118 = !{ptr @_ZNSt6vectorIdSaIdEEC2ERKS1_, ptr @_ZNKSt6vectorIdSaIdEE5beginEv, i64 1356728}
!119 = !{ptr @_ZNSt6vectorIdSaIdEEC2ERKS1_, ptr @_ZNKSt6vectorIdSaIdEE3endEv, i64 1356728}
!120 = !{ptr @_ZNSt6vectorIdSaIdEEC2ERKS1_, ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv, i64 1356728}
!121 = !{ptr @_ZNSt6vectorIdSaIdEEC2ERKS1_, ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPddET0_T_SA_S9_RSaIT1_E, i64 1356728}
!122 = !{ptr @_ZNSt6vectorIdSaIdEEC2ERKS1_, ptr @_ZNSt12_Vector_baseIdSaIdEED2Ev, i64 1}
!123 = !{ptr @_ZN9__gnu_cxx14__alloc_traitsISaIdEdE17_S_select_on_copyERKS1_, ptr @_ZNSt16allocator_traitsISaIdEE37select_on_container_copy_constructionERKS0_, i64 1356729}
!124 = !{ptr @_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_, ptr @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_, i64 2733627}
!125 = !{ptr @_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_, ptr @_ZNSt12_Vector_baseIdSaIdEE17_M_create_storageEm, i64 2733627}
!126 = !{ptr @_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_, ptr @_ZNSt15__new_allocatorIdED2Ev, i64 3}
!127 = !{ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPddET0_T_SA_S9_RSaIT1_E, ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_, i64 1356741}
!128 = !{ptr @_ZNKSt6vectorIdSaIdEE5beginEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC2ERKS2_, i64 7578462}
!129 = !{ptr @_ZNKSt6vectorIdSaIdEE3endEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC2ERKS2_, i64 11572134}
!130 = !{ptr @_ZNSt12_Vector_baseIdSaIdEED2Ev, ptr @_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm, i64 10618017}
!131 = !{ptr @_ZNSt12_Vector_baseIdSaIdEED2Ev, ptr @_ZNSt15__new_allocatorIdED2Ev, i64 10618007}
!132 = !{ptr @_ZNSt12_Vector_baseIdSaIdEED2Ev, ptr @__clang_call_terminate, i64 10}
!133 = !{ptr @_ZNSt12_Vector_baseIdSaIdEE17_M_create_storageEm, ptr @_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm, i64 2733627}
!134 = !{ptr @_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm, ptr @_ZNSt16allocator_traitsISaIdEE8allocateERS0_m, i64 8354784}
!135 = !{ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdEET0_T_SC_SB_, ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_, i64 1356741}
!136 = !{ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_, ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEET_S8_, i64 2713482}
!137 = !{ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_, ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_, i64 1356741}
!138 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_, ptr @_ZSt12__niter_baseIPKdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, i64 2713482}
!139 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_, ptr @_ZSt12__niter_baseIPdET_S1_, i64 1356741}
!140 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_, ptr @_ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_, i64 1356741}
!141 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_, ptr @_ZSt12__niter_wrapIPdET_RKS1_S1_, i64 1356741}
!142 = !{ptr @_ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_, ptr @_ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_, i64 17559028}
!143 = !{ptr @_ZSt12__niter_baseIPKdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEE4baseEv, i64 15156924}
!144 = !{ptr @_ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_, ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_, i64 17559028}
!145 = !{ptr @_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm, ptr @_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm, i64 8354765}
!146 = !{ptr @_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_, ptr @_ZNSaIjEC2ERKS_, i64 2091357}
!147 = !{ptr @_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_, ptr @_ZNSt6vectorIjSaIjEE11_S_max_sizeERKS0_, i64 2091357}
!148 = !{ptr @_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_, ptr @_ZNSt15__new_allocatorIjED2Ev, i64 2091357}
!149 = !{ptr @_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_, ptr @_ZSt20__throw_length_errorPKc, i64 1}
!150 = !{ptr @_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_, ptr @_ZNSt12_Vector_baseIjSaIjEE12_Vector_implC2ERKS0_, i64 3045846}
!151 = !{ptr @_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_, ptr @_ZNSt12_Vector_baseIjSaIjEE17_M_create_storageEm, i64 3045846}
!152 = !{ptr @_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_, ptr @_ZNSt15__new_allocatorIjED2Ev, i64 3}
!153 = !{ptr @_ZNSt6vectorIjSaIjEE11_S_max_sizeERKS0_, ptr @_ZNSt16allocator_traitsISaIjEE8max_sizeERKS0_, i64 5189381}
!154 = !{ptr @_ZNSt6vectorIjSaIjEE11_S_max_sizeERKS0_, ptr @_ZSt3minImERKT_S2_S2_, i64 5189381}
!155 = !{ptr @_ZNSaIjEC2ERKS_, ptr @_ZNSt15__new_allocatorIjEC2ERKS0_, i64 5228137}
!156 = !{ptr @_ZNKSt15__new_allocatorIjE8max_sizeEv, ptr @_ZNKSt15__new_allocatorIjE11_M_max_sizeEv, i64 5189381}
!157 = !{ptr @_ZNSt12_Vector_baseIjSaIjEE12_Vector_implC2ERKS0_, ptr @_ZNSaIjEC2ERKS_, i64 3136780}
!158 = !{ptr @_ZNSt12_Vector_baseIjSaIjEE12_Vector_implC2ERKS0_, ptr @_ZNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataC2Ev, i64 3136780}
!159 = !{ptr @_ZNSt12_Vector_baseIjSaIjEE17_M_create_storageEm, ptr @_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm, i64 3045846}
!160 = !{ptr @_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm, ptr @_ZNSt16allocator_traitsISaIjEE8allocateERS0_m, i64 4810546}
!161 = !{ptr @_ZSt6fill_nIPjmjET_S1_T0_RKT1_, ptr @_ZSt17__size_to_integerm, i64 2206681}
!162 = !{ptr @_ZSt6fill_nIPjmjET_S1_T0_RKT1_, ptr @_ZSt19__iterator_categoryIPjENSt15iterator_traitsIT_E17iterator_categoryERKS2_, i64 2206681}
!163 = !{ptr @_ZSt6fill_nIPjmjET_S1_T0_RKT1_, ptr @_ZSt10__fill_n_aIPjmjET_S1_T0_RKT1_St26random_access_iterator_tag, i64 2206681}
!164 = !{ptr @_ZSt10__fill_n_aIPjmjET_S1_T0_RKT1_St26random_access_iterator_tag, ptr @_ZSt8__fill_aIPjjEvT_S1_RKT0_, i64 2205039}
!165 = !{ptr @_ZSt8__fill_aIPjjEvT_S1_RKT0_, ptr @_ZSt9__fill_a1IPjjEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_, i64 2205575}
!166 = !{ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2EmRKS4_, ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE12_Vector_implC2ERKS4_, i64 179256}
!167 = !{ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2EmRKS4_, ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE17_M_create_storageEm, i64 179256}
!168 = !{ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE17_M_create_storageEm, ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE11_M_allocateEm, i64 179256}
!169 = !{ptr @_ZN6dealii11Polynomials10PolynomialIdEC2Ev, ptr @_ZN6dealii11SubscriptorC2Ev, i64 3}
!170 = !{ptr @_ZN6dealii11Polynomials10PolynomialIdEC2Ev, ptr @_ZNSt6vectorIdSaIdEEC2Ev, i64 3}
!171 = !{ptr @_ZNSt6vectorIdSaIdEEC2Ev, ptr @_ZNSt12_Vector_baseIdSaIdEEC2Ev, i64 7884403}
!172 = !{ptr @_ZNSt12_Vector_baseIdSaIdEEC2Ev, ptr @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev, i64 7884403}
!173 = !{ptr @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev, ptr @_ZNSaIdEC2Ev, i64 7884403}
!174 = !{ptr @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev, ptr @_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev, i64 7884403}
!175 = !{ptr @_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_, ptr @_ZNSaIdEC2ERKS_, i64 1376905}
!176 = !{ptr @_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_, ptr @_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_, i64 1376905}
!177 = !{ptr @_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_, ptr @_ZNSt15__new_allocatorIdED2Ev, i64 1376905}
!178 = !{ptr @_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_, ptr @_ZSt20__throw_length_errorPKc, i64 1}
!179 = !{ptr @_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_, ptr @_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_, i64 12982610}
!180 = !{ptr @_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_, ptr @_ZSt3minImERKT_S2_S2_, i64 12982610}
!181 = !{ptr @_ZNKSt15__new_allocatorIdE8max_sizeEv, ptr @_ZNKSt15__new_allocatorIdE11_M_max_sizeEv, i64 12982610}
!182 = !{ptr @_ZSt6fill_nIPdmdET_S1_T0_RKT1_, ptr @_ZSt17__size_to_integerm, i64 7178069}
!183 = !{ptr @_ZSt6fill_nIPdmdET_S1_T0_RKT1_, ptr @_ZSt19__iterator_categoryIPdENSt15iterator_traitsIT_E17iterator_categoryERKS2_, i64 7178069}
!184 = !{ptr @_ZSt6fill_nIPdmdET_S1_T0_RKT1_, ptr @_ZSt10__fill_n_aIPdmdET_S1_T0_RKT1_St26random_access_iterator_tag, i64 7178069}
!185 = !{ptr @_ZSt10__fill_n_aIPdmdET_S1_T0_RKT1_St26random_access_iterator_tag, ptr @_ZSt8__fill_aIPddEvT_S1_RKT0_, i64 6994789}
!186 = !{ptr @_ZSt8__fill_aIPddEvT_S1_RKT0_, ptr @_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_, i64 25807262}
!187 = !{ptr @_ZSt8_DestroyIPddEvT_S1_RSaIT0_E, ptr @_ZSt8_DestroyIPdEvT_S1_, i64 16422537}
!188 = !{ptr @_ZSt8_DestroyIPdEvT_S1_, ptr @_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_, i64 16422537}
!189 = !{ptr @_ZNKSt6vectorIdSaIdEE8max_sizeEv, ptr @_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv, i64 11605705}
!190 = !{ptr @_ZNKSt6vectorIdSaIdEE8max_sizeEv, ptr @_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_, i64 11605705}
!191 = !{ptr @_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc, ptr @_ZNKSt6vectorIdSaIdEE8max_sizeEv, i64 11602394}
!192 = !{ptr @_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc, ptr @_ZNKSt6vectorIdSaIdEE4sizeEv, i64 23204785}
!193 = !{ptr @_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc, ptr @_ZSt20__throw_length_errorPKc, i64 1}
!194 = !{ptr @_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc, ptr @_ZSt3maxImERKT_S2_S2_, i64 5801196}
!195 = !{ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE17_S_check_init_lenEmRKS3_, ptr @_ZNSaIN6dealii6TensorILi1ELi3EEEEC2ERKS2_, i64 1236059}
!196 = !{ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE17_S_check_init_lenEmRKS3_, ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE11_S_max_sizeERKS3_, i64 1236059}
!197 = !{ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE17_S_check_init_lenEmRKS3_, ptr @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEED2Ev, i64 1236059}
!198 = !{ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE17_S_check_init_lenEmRKS3_, ptr @_ZSt20__throw_length_errorPKc, i64 1}
!199 = !{ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EEC2EmRKS3_, ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE12_Vector_implC2ERKS3_, i64 9329057}
!200 = !{ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EEC2EmRKS3_, ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE17_M_create_storageEm, i64 9329057}
!201 = !{ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EEC2EmRKS3_, ptr @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEED2Ev, i64 9}
!202 = !{ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EED2Ev, ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE13_M_deallocateEPS2_m, i64 10407865}
!203 = !{ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EED2Ev, ptr @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEED2Ev, i64 10407855}
!204 = !{ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EED2Ev, ptr @__clang_call_terminate, i64 10}
!205 = !{ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE11_S_max_sizeERKS3_, ptr @_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi3EEEEE8max_sizeERKS3_, i64 2326999}
!206 = !{ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE11_S_max_sizeERKS3_, ptr @_ZSt3minImERKT_S2_S2_, i64 2326999}
!207 = !{ptr @_ZNSaIN6dealii6TensorILi1ELi3EEEEC2ERKS2_, ptr @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEEC2ERKS3_, i64 10565116}
!208 = !{ptr @_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEE8max_sizeEv, ptr @_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEE11_M_max_sizeEv, i64 2326999}
!209 = !{ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE12_Vector_implC2ERKS3_, ptr @_ZNSaIN6dealii6TensorILi1ELi3EEEEC2ERKS2_, i64 9329057}
!210 = !{ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE12_Vector_implC2ERKS3_, ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE17_Vector_impl_dataC2Ev, i64 9329057}
!211 = !{ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE17_M_create_storageEm, ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE11_M_allocateEm, i64 9329057}
!212 = !{ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE11_M_allocateEm, ptr @_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi3EEEEE8allocateERS3_m, i64 9690491}
!213 = !{ptr @_ZSt8_DestroyIPN6dealii6TensorILi1ELi3EEEEvT_S4_, ptr @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii6TensorILi1ELi3EEEEEvT_S6_, i64 10953335}
!214 = !{ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE13_M_deallocateEPS2_m, ptr @_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi3EEEEE10deallocateERS3_PS2_m, i64 9690491}
!215 = !{ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE17_S_check_init_lenEmRKS3_, ptr @_ZNSaIN6dealii6TensorILi2ELi3EEEEC2ERKS2_, i64 183279}
!216 = !{ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE17_S_check_init_lenEmRKS3_, ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE11_S_max_sizeERKS3_, i64 183279}
!217 = !{ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE17_S_check_init_lenEmRKS3_, ptr @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi3EEEED2Ev, i64 183279}
!218 = !{ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE17_S_check_init_lenEmRKS3_, ptr @_ZSt20__throw_length_errorPKc, i64 1}
!219 = !{ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EEC2EmRKS3_, ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE12_Vector_implC2ERKS3_, i64 184035}
!220 = !{ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EEC2EmRKS3_, ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE17_M_create_storageEm, i64 184035}
!221 = !{ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EED2Ev, ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE13_M_deallocateEPS2_m, i64 5302653}
!222 = !{ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EED2Ev, ptr @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi3EEEED2Ev, i64 5302648}
!223 = !{ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EED2Ev, ptr @__clang_call_terminate, i64 5}
!224 = !{ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE11_S_max_sizeERKS3_, ptr @_ZNSt16allocator_traitsISaIN6dealii6TensorILi2ELi3EEEEE8max_sizeERKS3_, i64 547421}
!225 = !{ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE11_S_max_sizeERKS3_, ptr @_ZSt3minImERKT_S2_S2_, i64 547421}
!226 = !{ptr @_ZNSaIN6dealii6TensorILi2ELi3EEEEC2ERKS2_, ptr @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi3EEEEC2ERKS3_, i64 367314}
!227 = !{ptr @_ZNKSt15__new_allocatorIN6dealii6TensorILi2ELi3EEEE8max_sizeEv, ptr @_ZNKSt15__new_allocatorIN6dealii6TensorILi2ELi3EEEE11_M_max_sizeEv, i64 547421}
!228 = !{ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE12_Vector_implC2ERKS3_, ptr @_ZNSaIN6dealii6TensorILi2ELi3EEEEC2ERKS2_, i64 184035}
!229 = !{ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE12_Vector_implC2ERKS3_, ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE17_Vector_impl_dataC2Ev, i64 184035}
!230 = !{ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE17_M_create_storageEm, ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE11_M_allocateEm, i64 184035}
!231 = !{ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE11_M_allocateEm, ptr @_ZNSt16allocator_traitsISaIN6dealii6TensorILi2ELi3EEEEE8allocateERS3_m, i64 182071}
!232 = !{ptr @_ZSt8_DestroyIPN6dealii6TensorILi2ELi3EEEEvT_S4_, ptr @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii6TensorILi2ELi3EEEEEvT_S6_, i64 5484724}
!233 = !{ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE13_M_deallocateEPS2_m, ptr @_ZNSt16allocator_traitsISaIN6dealii6TensorILi2ELi3EEEEE10deallocateERS3_PS2_m, i64 182072}
!234 = !{ptr @_ZSt8_DestroyIPN6dealii6TensorILi1ELi3EEES2_EvT_S4_RSaIT0_E, ptr @_ZSt8_DestroyIPN6dealii6TensorILi1ELi3EEEEvT_S4_, i64 10953335}
!235 = !{ptr @_ZSt8_DestroyIPN6dealii6TensorILi2ELi3EEES2_EvT_S4_RSaIT0_E, ptr @_ZSt8_DestroyIPN6dealii6TensorILi2ELi3EEEEvT_S4_, i64 5484724}
!236 = !{ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE8max_sizeEv, ptr @_ZNKSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE19_M_get_Tp_allocatorEv, i64 1090940}
!237 = !{ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE8max_sizeEv, ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE11_S_max_sizeERKS3_, i64 1090940}
!238 = !{ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE12_M_check_lenEmPKc, ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE8max_sizeEv, i64 1090940}
!239 = !{ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE12_M_check_lenEmPKc, ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE4sizeEv, i64 2181877}
!240 = !{ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE12_M_check_lenEmPKc, ptr @_ZSt20__throw_length_errorPKc, i64 1}
!241 = !{ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE12_M_check_lenEmPKc, ptr @_ZSt3maxImERKT_S2_S2_, i64 545469}
!242 = !{ptr @_ZSt34__uninitialized_move_if_noexcept_aIPN6dealii6TensorILi1ELi3EEES3_SaIS2_EET0_T_S6_S5_RT1_, ptr @_ZSt32__make_move_if_noexcept_iteratorIN6dealii6TensorILi1ELi3EEEPKS2_ET0_PT_, i64 2181880}
!243 = !{ptr @_ZSt34__uninitialized_move_if_noexcept_aIPN6dealii6TensorILi1ELi3EEES3_SaIS2_EET0_T_S6_S5_RT1_, ptr @_ZSt22__uninitialized_copy_aIPKN6dealii6TensorILi1ELi3EEEPS2_S2_ET0_T_S7_S6_RSaIT1_E, i64 1090940}
!244 = !{ptr @_ZNKSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE8max_sizeEv, ptr @_ZNKSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE19_M_get_Tp_allocatorEv, i64 364142}
!245 = !{ptr @_ZNKSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE8max_sizeEv, ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE11_S_max_sizeERKS3_, i64 364142}
!246 = !{ptr @_ZNKSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE12_M_check_lenEmPKc, ptr @_ZNKSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE8max_sizeEv, i64 364142}
!247 = !{ptr @_ZNKSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE12_M_check_lenEmPKc, ptr @_ZNKSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE4sizeEv, i64 728281}
!248 = !{ptr @_ZNKSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE12_M_check_lenEmPKc, ptr @_ZSt20__throw_length_errorPKc, i64 1}
!249 = !{ptr @_ZNKSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE12_M_check_lenEmPKc, ptr @_ZSt3maxImERKT_S2_S2_, i64 182070}
!250 = !{ptr @_ZSt34__uninitialized_move_if_noexcept_aIPN6dealii6TensorILi2ELi3EEES3_SaIS2_EET0_T_S6_S5_RT1_, ptr @_ZSt32__make_move_if_noexcept_iteratorIN6dealii6TensorILi2ELi3EEEPKS2_ET0_PT_, i64 728284}
!251 = !{ptr @_ZSt34__uninitialized_move_if_noexcept_aIPN6dealii6TensorILi2ELi3EEES3_SaIS2_EET0_T_S6_S5_RT1_, ptr @_ZSt22__uninitialized_copy_aIPKN6dealii6TensorILi2ELi3EEEPS2_S2_ET0_T_S7_S6_RSaIT1_E, i64 364142}
!252 = !{ptr @_ZSt8__fill_aIN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi1ELi3EEESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RKT0_, ptr @_ZSt9__fill_a1IPN6dealii6TensorILi1ELi3EEESt6vectorIS2_SaIS2_EES2_EvN9__gnu_cxx17__normal_iteratorIT_T0_EESB_RKT1_, i64 4959592}
!253 = !{ptr @_ZSt9__fill_a1IPN6dealii6TensorILi1ELi3EEESt6vectorIS2_SaIS2_EES2_EvN9__gnu_cxx17__normal_iteratorIT_T0_EESB_RKT1_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi1ELi3EEESt6vectorIS3_SaIS3_EEE4baseEv, i64 9919184}
!254 = !{ptr @_ZSt9__fill_a1IPN6dealii6TensorILi1ELi3EEESt6vectorIS2_SaIS2_EES2_EvN9__gnu_cxx17__normal_iteratorIT_T0_EESB_RKT1_, ptr @_ZSt9__fill_a1IPN6dealii6TensorILi1ELi3EEES2_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT0_EE7__valueEvE6__typeET_S9_RKS6_, i64 4959592}
!255 = !{ptr @_ZSt9__fill_a1IPN6dealii6TensorILi1ELi3EEES2_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT0_EE7__valueEvE6__typeET_S9_RKS6_, ptr @_ZN6dealii6TensorILi1ELi3EEaSERKS1_, i64 44589196}
!256 = !{ptr @_ZSt8__fill_aIN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi2ELi3EEESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RKT0_, ptr @_ZSt9__fill_a1IPN6dealii6TensorILi2ELi3EEESt6vectorIS2_SaIS2_EES2_EvN9__gnu_cxx17__normal_iteratorIT_T0_EESB_RKT1_, i64 621280}
!257 = !{ptr @_ZSt9__fill_a1IPN6dealii6TensorILi2ELi3EEESt6vectorIS2_SaIS2_EES2_EvN9__gnu_cxx17__normal_iteratorIT_T0_EESB_RKT1_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi2ELi3EEESt6vectorIS3_SaIS3_EEE4baseEv, i64 1242560}
!258 = !{ptr @_ZSt9__fill_a1IPN6dealii6TensorILi2ELi3EEESt6vectorIS2_SaIS2_EES2_EvN9__gnu_cxx17__normal_iteratorIT_T0_EESB_RKT1_, ptr @_ZSt9__fill_a1IPN6dealii6TensorILi2ELi3EEES2_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT0_EE7__valueEvE6__typeET_S9_RKS6_, i64 621280}
!259 = !{ptr @_ZSt9__fill_a1IPN6dealii6TensorILi2ELi3EEES2_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT0_EE7__valueEvE6__typeET_S9_RKS6_, ptr @_ZN6dealii6TensorILi2ELi3EEaSERKS1_, i64 2506569}
!260 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!261 = !{!"function_entry_count", i64 0}
!262 = !{!263, !272, i64 104}
!263 = !{!"_ZTSN6dealii14PolynomialsBDMILi1EEE", !264, i64 0, !265, i64 80, !272, i64 104, !277, i64 112, !281, i64 136, !285, i64 160}
!264 = !{!"_ZTSN6dealii15PolynomialSpaceILi1EEE", !265, i64 0, !272, i64 24, !273, i64 32, !273, i64 56}
!265 = !{!"_ZTSSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE", !266, i64 0}
!266 = !{!"_ZTSSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE", !267, i64 0}
!267 = !{!"_ZTSNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE12_Vector_implE", !268, i64 0}
!268 = !{!"_ZTSNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE17_Vector_impl_dataE", !269, i64 0, !269, i64 8, !269, i64 16}
!269 = !{!"any pointer", !270, i64 0}
!270 = !{!"omnipotent char", !271, i64 0}
!271 = !{!"Simple C++ TBAA"}
!272 = !{!"int", !270, i64 0}
!273 = !{!"_ZTSSt6vectorIjSaIjEE", !274, i64 0}
!274 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !275, i64 0}
!275 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !276, i64 0}
!276 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !269, i64 0, !269, i64 8, !269, i64 16}
!277 = !{!"_ZTSSt6vectorIdSaIdEE", !278, i64 0}
!278 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !279, i64 0}
!279 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !280, i64 0}
!280 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !269, i64 0, !269, i64 8, !269, i64 16}
!281 = !{!"_ZTSSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE", !282, i64 0}
!282 = !{!"_ZTSSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE", !283, i64 0}
!283 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE12_Vector_implE", !284, i64 0}
!284 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE17_Vector_impl_dataE", !269, i64 0, !269, i64 8, !269, i64 16}
!285 = !{!"_ZTSSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE", !286, i64 0}
!286 = !{!"_ZTSSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EE", !287, i64 0}
!287 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EE12_Vector_implE", !288, i64 0}
!288 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EE17_Vector_impl_dataE", !269, i64 0, !269, i64 8, !269, i64 16}
!289 = !{!264, !272, i64 24}
!290 = !{!272, !272, i64 0}
!291 = distinct !{!291, !292}
!292 = !{!"llvm.loop.mustprogress"}
!293 = !{!"function_entry_count", i64 179262}
!294 = !{!268, !269, i64 0}
!295 = !{!268, !269, i64 8}
!296 = !{!"function_entry_count", i64 16}
!297 = !{!"function_entry_count", i64 9261343}
!298 = !{!"function_entry_count", i64 48}
!299 = !{!288, !269, i64 0}
!300 = !{!288, !269, i64 8}
!301 = !{!284, !269, i64 0}
!302 = !{!284, !269, i64 8}
!303 = !{!"function_entry_count", i64 10618017}
!304 = !{!280, !269, i64 0}
!305 = !{!280, !269, i64 8}
!306 = !{!307, !307, i64 0}
!307 = !{!"double", !270, i64 0}
!308 = distinct !{!308, !292}
!309 = distinct !{!309, !292}
!310 = distinct !{!310, !292}
!311 = !{!312, !269, i64 8}
!312 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi3ELi1EEESaIS2_EE17_Vector_impl_dataE", !269, i64 0, !269, i64 8, !269, i64 16}
!313 = !{!312, !269, i64 0}
!314 = !{!"function_entry_count", i64 551544}
!315 = !{!"branch_weights", i32 551545, i32 1}
!316 = !{!"function_entry_count", i64 103595384}
!317 = !{!"function_entry_count", i64 580699156}
!318 = !{!"function_entry_count", i64 271565}
!319 = !{!"function_entry_count", i64 4842528}
!320 = !{!"function_entry_count", i64 282053}
!321 = !{!322, !272, i64 104}
!322 = !{!"_ZTSN6dealii14PolynomialsBDMILi2EEE", !323, i64 0, !265, i64 80, !272, i64 104, !277, i64 112, !324, i64 136, !328, i64 160}
!323 = !{!"_ZTSN6dealii15PolynomialSpaceILi2EEE", !265, i64 0, !272, i64 24, !273, i64 32, !273, i64 56}
!324 = !{!"_ZTSSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE", !325, i64 0}
!325 = !{!"_ZTSSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE", !326, i64 0}
!326 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE12_Vector_implE", !327, i64 0}
!327 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE17_Vector_impl_dataE", !269, i64 0, !269, i64 8, !269, i64 16}
!328 = !{!"_ZTSSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE", !329, i64 0}
!329 = !{!"_ZTSSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EE", !330, i64 0}
!330 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EE12_Vector_implE", !331, i64 0}
!331 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EE17_Vector_impl_dataE", !269, i64 0, !269, i64 8, !269, i64 16}
!332 = !{!323, !272, i64 24}
!333 = distinct !{!333, !292}
!334 = !{!331, !269, i64 0}
!335 = !{!331, !269, i64 8}
!336 = !{!327, !269, i64 0}
!337 = !{!327, !269, i64 8}
!338 = distinct !{!338, !292}
!339 = distinct !{!339, !292}
!340 = distinct !{!340, !292}
!341 = !{!342, !269, i64 8}
!342 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi3ELi2EEESaIS2_EE17_Vector_impl_dataE", !269, i64 0, !269, i64 8, !269, i64 16}
!343 = !{!342, !269, i64 0}
!344 = !{!"function_entry_count", i64 1130961}
!345 = !{!"branch_weights", i32 1130962, i32 1}
!346 = !{!"function_entry_count", i64 287056}
!347 = !{!"function_entry_count", i64 2866076}
!348 = !{!"function_entry_count", i64 2169946}
!349 = !{!350, !272, i64 104}
!350 = !{!"_ZTSN6dealii14PolynomialsBDMILi3EEE", !351, i64 0, !265, i64 80, !272, i64 104, !277, i64 112, !352, i64 136, !356, i64 160}
!351 = !{!"_ZTSN6dealii15PolynomialSpaceILi3EEE", !265, i64 0, !272, i64 24, !273, i64 32, !273, i64 56}
!352 = !{!"_ZTSSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE", !353, i64 0}
!353 = !{!"_ZTSSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE", !354, i64 0}
!354 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE12_Vector_implE", !355, i64 0}
!355 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE17_Vector_impl_dataE", !269, i64 0, !269, i64 8, !269, i64 16}
!356 = !{!"_ZTSSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE", !357, i64 0}
!357 = !{!"_ZTSSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE", !358, i64 0}
!358 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE12_Vector_implE", !359, i64 0}
!359 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE17_Vector_impl_dataE", !269, i64 0, !269, i64 8, !269, i64 16}
!360 = !{!351, !272, i64 24}
!361 = distinct !{!361, !292}
!362 = !{!"function_entry_count", i64 2314867}
!363 = !{!"function_entry_count", i64 5301897}
!364 = !{!"function_entry_count", i64 5302653}
!365 = !{!359, !269, i64 0}
!366 = !{!359, !269, i64 8}
!367 = !{!"function_entry_count", i64 10407865}
!368 = !{!355, !269, i64 0}
!369 = !{!355, !269, i64 8}
!370 = distinct !{!370, !292}
!371 = distinct !{!371, !292}
!372 = distinct !{!372, !292}
!373 = distinct !{!373, !292}
!374 = distinct !{!374, !292}
!375 = distinct !{!375, !292}
!376 = !{!"function_entry_count", i64 26112830}
!377 = !{!"function_entry_count", i64 3381240}
!378 = !{!379, !269, i64 8}
!379 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi3ELi3EEESaIS2_EE17_Vector_impl_dataE", !269, i64 0, !269, i64 8, !269, i64 16}
!380 = !{!379, !269, i64 0}
!381 = !{!"function_entry_count", i64 13860}
!382 = !{!"function_entry_count", i64 5421140}
!383 = !{!"function_entry_count", i64 1020878}
!384 = !{!"function_entry_count", i64 627233310}
!385 = !{!"branch_weights", i32 627233311, i32 1}
!386 = !{!"function_entry_count", i64 409051700}
!387 = !{!"function_entry_count", i64 2121454836}
!388 = !{!"function_entry_count", i64 621280}
!389 = !{!"function_entry_count", i64 803351}
!390 = !{!"function_entry_count", i64 2026044}
!391 = !{!"function_entry_count", i64 180988500}
!392 = !{!"function_entry_count", i64 197652618}
!393 = !{!"function_entry_count", i64 98457587}
!394 = !{!"function_entry_count", i64 2677256}
!395 = !{!"branch_weights", i32 2677257, i32 5354512}
!396 = distinct !{!396, !292}
!397 = !{!"function_entry_count", i64 10444102}
!398 = !{!"function_entry_count", i64 42627443}
!399 = !{!"function_entry_count", i64 12962434}
!400 = !{!"function_entry_count", i64 4110539}
!401 = !{!"function_entry_count", i64 7}
!402 = !{!"function_entry_count", i64 2733634}
!403 = !{!"function_entry_count", i64 10618037}
!404 = !{!269, !269, i64 0}
!405 = !{!280, !269, i64 16}
!406 = !{!407, !407, i64 0}
!407 = !{!"vtable pointer", !271, i64 0}
!408 = !{!"function_entry_count", i64 3863829}
!409 = !{!276, !269, i64 0}
!410 = !{!276, !269, i64 8}
!411 = !{!"function_entry_count", i64 6310738}
!412 = !{!"function_entry_count", i64 14721697}
!413 = !{!276, !269, i64 16}
!414 = !{!"function_entry_count", i64 5778001}
!415 = !{!"branch_weights", i32 967483, i32 4810520}
!416 = !{!"function_entry_count", i64 9278493}
!417 = !{!"function_entry_count", i64 179268}
!418 = !{!"function_entry_count", i64 358552}
!419 = !{!268, !269, i64 16}
!420 = !{!"branch_weights", i32 1, i32 179268}
!421 = !{!"branch_weights", i32 179268, i32 89575}
!422 = distinct !{!422, !292}
!423 = !{!"function_entry_count", i64 268842}
!424 = !{!"branch_weights", i32 4, i32 179266}
!425 = !{!"function_entry_count", i64 179288}
!426 = !{!"function_entry_count", i64 179259}
!427 = !{!"function_entry_count", i64 13983833}
!428 = !{!"function_entry_count", i64 2818434}
!429 = !{!"function_entry_count", i64 177883080}
!430 = !{!"function_entry_count", i64 2386828070}
!431 = !{!"function_entry_count", i64 358518}
!432 = !{!433, !269, i64 0}
!433 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPKN6dealii11Polynomials10PolynomialIdEESt6vectorIS4_SaIS4_EEEE", !269, i64 0}
!434 = !{!"function_entry_count", i64 8}
!435 = !{!"function_entry_count", i64 179264}
!436 = !{!"function_entry_count", i64 179267}
!437 = !{!"function_entry_count", i64 179277}
!438 = !{!"function_entry_count", i64 179270}
!439 = !{!"branch_weights", i32 1, i32 179271}
!440 = !{!"function_entry_count", i64 13}
!441 = !{!"branch_weights", i32 1, i32 14}
!442 = !{!"function_entry_count", i64 896200}
!443 = !{!"branch_weights", i32 1, i32 2000}
!444 = !{!"function_entry_count", i64 179295}
!445 = !{!"function_entry_count", i64 25}
!446 = !{!447, !447, i64 0}
!447 = !{!"long", !270, i64 0}
!448 = !{!"function_entry_count", i64 34204152}
!449 = !{!"branch_weights", i32 1, i32 34204153}
!450 = !{!"branch_weights", i32 179259, i32 1}
!451 = !{!"branch_weights", i32 89575, i32 179259}
!452 = distinct !{!452, !292}
!453 = !{!"function_entry_count", i64 448092}
!454 = !{!"function_entry_count", i64 268833}
!455 = !{!"function_entry_count", i64 1356729}
!456 = !{!"function_entry_count", i64 2733627}
!457 = !{!"function_entry_count", i64 1356741}
!458 = !{!"function_entry_count", i64 7578462}
!459 = !{!"function_entry_count", i64 11572134}
!460 = !{!"function_entry_count", i64 13389012}
!461 = !{!"function_entry_count", i64 8538154}
!462 = !{!"branch_weights", i32 183370, i32 8354786}
!463 = !{!"function_entry_count", i64 21337395}
!464 = !{!"function_entry_count", i64 15156924}
!465 = !{!"function_entry_count", i64 23127779}
!466 = !{!"function_entry_count", i64 17559028}
!467 = !{!"function_entry_count", i64 46393777}
!468 = !{!"function_entry_count", i64 29192013}
!469 = !{!"branch_weights", i32 16454701, i32 12737314}
!470 = !{!"function_entry_count", i64 23144268}
!471 = !{!472, !269, i64 0}
!472 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEE", !269, i64 0}
!473 = !{!"function_entry_count", i64 16422537}
!474 = !{!"branch_weights", i32 8067773, i32 8354766}
!475 = !{!"function_entry_count", i64 172654971}
!476 = !{!"function_entry_count", i64 2091357}
!477 = !{!"branch_weights", i32 1, i32 2091358}
!478 = !{!"function_entry_count", i64 3045846}
!479 = !{!"function_entry_count", i64 5189381}
!480 = !{!"function_entry_count", i64 5228137}
!481 = !{!"function_entry_count", i64 9999928}
!482 = !{!"function_entry_count", i64 3136780}
!483 = !{!"function_entry_count", i64 3864037}
!484 = !{!"function_entry_count", i64 5050952}
!485 = !{!"branch_weights", i32 240406, i32 4810548}
!486 = !{!"function_entry_count", i64 2206681}
!487 = !{!"branch_weights", i32 1642, i32 2205041}
!488 = !{!"function_entry_count", i64 16082259}
!489 = !{!"function_entry_count", i64 2205575}
!490 = !{!"function_entry_count", i64 2205641}
!491 = !{!"branch_weights", i32 1, i32 2205641}
!492 = !{!"branch_weights", i32 2205641, i32 357389599}
!493 = distinct !{!493, !292}
!494 = !{!"function_entry_count", i64 179256}
!495 = distinct !{!495, !292}
!496 = !{!"function_entry_count", i64 3}
!497 = !{!"function_entry_count", i64 7884403}
!498 = !{!"function_entry_count", i64 1376905}
!499 = !{!"branch_weights", i32 1, i32 1376906}
!500 = !{!"function_entry_count", i64 12982610}
!501 = !{!"function_entry_count", i64 7178069}
!502 = !{!"branch_weights", i32 183280, i32 6994791}
!503 = !{!"function_entry_count", i64 32608285}
!504 = !{!"function_entry_count", i64 25807262}
!505 = !{!"function_entry_count", i64 25820050}
!506 = !{!"branch_weights", i32 1, i32 4303341}
!507 = !{!"branch_weights", i32 4303341, i32 -542009222}
!508 = distinct !{!508, !292}
!509 = !{!284, !269, i64 16}
!510 = distinct !{!510, !292}
!511 = !{!288, !269, i64 16}
!512 = distinct !{!512, !292}
!513 = !{!"function_entry_count", i64 11605705}
!514 = !{!"function_entry_count", i64 5801197}
!515 = !{!"branch_weights", i32 1, i32 5801198}
!516 = !{!"function_entry_count", i64 12588445}
!517 = !{!"branch_weights", i32 11254134, i32 1334313}
!518 = distinct !{!518, !292}
!519 = !{!"function_entry_count", i64 271481}
!520 = distinct !{!520, !292}
!521 = !{!522, !269, i64 0}
!522 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi1ELi1EEESt6vectorIS3_SaIS3_EEEE", !269, i64 0}
!523 = distinct !{!523, !292}
!524 = !{!525, !269, i64 0}
!525 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi2ELi1EEESt6vectorIS3_SaIS3_EEEE", !269, i64 0}
!526 = distinct !{!526, !292}
!527 = !{!528, !269, i64 0}
!528 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi3ELi1EEESt6vectorIS3_SaIS3_EEEE", !269, i64 0}
!529 = distinct !{!529, !292}
!530 = !{!327, !269, i64 16}
!531 = distinct !{!531, !292}
!532 = !{!331, !269, i64 16}
!533 = distinct !{!533, !292}
!534 = distinct !{!534, !292}
!535 = !{!"function_entry_count", i64 4593520}
!536 = distinct !{!536, !292}
!537 = !{!538, !269, i64 0}
!538 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi1ELi2EEESt6vectorIS3_SaIS3_EEEE", !269, i64 0}
!539 = distinct !{!539, !292}
!540 = !{!541, !269, i64 0}
!541 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi2ELi2EEESt6vectorIS3_SaIS3_EEEE", !269, i64 0}
!542 = distinct !{!542, !292}
!543 = !{!544, !269, i64 0}
!544 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi3ELi2EEESt6vectorIS3_SaIS3_EEEE", !269, i64 0}
!545 = distinct !{!545, !292}
!546 = !{!"function_entry_count", i64 1236059}
!547 = !{!"branch_weights", i32 1, i32 1236060}
!548 = !{!"function_entry_count", i64 9329057}
!549 = !{!355, !269, i64 16}
!550 = !{!"function_entry_count", i64 2326999}
!551 = !{!"function_entry_count", i64 10565116}
!552 = !{!"function_entry_count", i64 12017491}
!553 = !{!"function_entry_count", i64 12879983}
!554 = !{!"function_entry_count", i64 9874527}
!555 = !{!"branch_weights", i32 184036, i32 9690493}
!556 = !{!"function_entry_count", i64 21918802}
!557 = distinct !{!557, !292}
!558 = !{!"function_entry_count", i64 10953335}
!559 = !{!"branch_weights", i32 1262844, i32 9690493}
!560 = !{!"function_entry_count", i64 183279}
!561 = !{!"branch_weights", i32 1, i32 183280}
!562 = !{!"function_entry_count", i64 184035}
!563 = !{!359, !269, i64 16}
!564 = !{!"function_entry_count", i64 547421}
!565 = !{!"function_entry_count", i64 367314}
!566 = !{!"function_entry_count", i64 729492}
!567 = !{!"function_entry_count", i64 5669211}
!568 = !{!"function_entry_count", i64 366106}
!569 = !{!"branch_weights", i32 184036, i32 182072}
!570 = !{!"function_entry_count", i64 6214972}
!571 = distinct !{!571, !292}
!572 = !{!"function_entry_count", i64 5484724}
!573 = !{!"branch_weights", i32 5302654, i32 182072}
!574 = !{!"function_entry_count", i64 1090940}
!575 = !{!"function_entry_count", i64 545470}
!576 = !{!"branch_weights", i32 1, i32 545471}
!577 = !{!"function_entry_count", i64 9183938}
!578 = distinct !{!578, !292}
!579 = !{!"function_entry_count", i64 4316510434}
!580 = !{!"branch_weights", i32 1079127609, i32 -2136712079}
!581 = distinct !{!581, !292}
!582 = !{!"function_entry_count", i64 364142}
!583 = !{!"function_entry_count", i64 182071}
!584 = !{!"branch_weights", i32 1, i32 182072}
!585 = !{!"function_entry_count", i64 364898}
!586 = distinct !{!586, !292}
!587 = !{!"function_entry_count", i64 16333482}
!588 = !{!589, !269, i64 0}
!589 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi1ELi3EEESt6vectorIS3_SaIS3_EEEE", !269, i64 0}
!590 = !{!"function_entry_count", i64 4959592}
!591 = !{!"branch_weights", i32 1, i32 4959592}
!592 = !{!"branch_weights", i32 4959592, i32 39629613}
!593 = distinct !{!593, !292}
!594 = !{!"function_entry_count", i64 16052518}
!595 = !{!"function_entry_count", i64 1424631}
!596 = !{!597, !269, i64 0}
!597 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi2ELi3EEESt6vectorIS3_SaIS3_EEEE", !269, i64 0}
!598 = !{!"branch_weights", i32 1, i32 621280}
!599 = !{!"branch_weights", i32 621280, i32 1885293}
!600 = distinct !{!600, !292}
!601 = !{!602, !269, i64 0}
!602 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPN6dealii6TensorILi3ELi3EEESt6vectorIS3_SaIS3_EEEE", !269, i64 0}
!603 = distinct !{!603, !292}
!604 = distinct !{!604, !292}
