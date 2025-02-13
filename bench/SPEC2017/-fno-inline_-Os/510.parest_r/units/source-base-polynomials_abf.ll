; ModuleID = 'source/base/polynomials_abf.cc'
source_filename = "source/base/polynomials_abf.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::vector.10" = type { %"struct.std::_Vector_base.11" }
%"struct.std::_Vector_base.11" = type { %"struct.std::_Vector_base<std::vector<dealii::Polynomials::Polynomial<double>>, std::allocator<std::vector<dealii::Polynomials::Polynomial<double>>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::vector<dealii::Polynomials::Polynomial<double>>, std::allocator<std::vector<dealii::Polynomials::Polynomial<double>>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::vector<dealii::Polynomials::Polynomial<double>>, std::allocator<std::vector<dealii::Polynomials::Polynomial<double>>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::vector<dealii::Polynomials::Polynomial<double>>, std::allocator<std::vector<dealii::Polynomials::Polynomial<double>>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::allocator.12" = type { i8 }
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
%"class.dealii::Point" = type { %"class.dealii::Tensor" }
%"class.dealii::Tensor" = type { [1 x double] }
%"class.dealii::Tensor.25" = type { [1 x %"class.dealii::Tensor"] }
%"struct.std::_Vector_base<dealii::Tensor<3, 1>, std::allocator<dealii::Tensor<3, 1>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
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
%"class.dealii::Tensor.47" = type { [2 x %"class.dealii::Tensor.46"] }
%"struct.std::_Vector_base<dealii::Tensor<3, 2>, std::allocator<dealii::Tensor<3, 2>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
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
%"class.dealii::Tensor.69" = type { [3 x %"class.dealii::Tensor.68"] }
%"struct.std::_Vector_base<dealii::Tensor<3, 3>, std::allocator<dealii::Tensor<3, 3>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.dealii::Tensor.70" = type { [3 x %"class.dealii::Tensor.69"] }
%"class.dealii::Polynomials::Polynomial" = type { %"class.dealii::Subscriptor", %"class.std::vector" }
%"class.dealii::Subscriptor" = type { ptr, i32, %"class.std::map", ptr }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<const char *, std::pair<const char *const, unsigned int>, std::_Select1st<std::pair<const char *const, unsigned int>>, std::less<const char *>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<const char *, std::pair<const char *const, unsigned int>, std::_Select1st<std::pair<const char *const, unsigned int>>, std::less<const char *>>::_Rb_tree_impl" = type { %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_key_compare" = type { %"struct.std::less" }
%"struct.std::less" = type { i8 }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.std::allocator.17" = type { i8 }

$_ZN6dealii14PolynomialsABFILi1EEC5Ej = comdat any

$_ZN6dealii14PolynomialsABFILi1EE14compute_n_polsEj = comdat any

$_ZNSt6vectorIdSaIdEEC2Ev = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEC2Ev = comdat any

$_ZNSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EEC2Ev = comdat any

$_ZNSaISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEEC2Ev = comdat any

$_ZNSt6vectorIS_IN6dealii11Polynomials10PolynomialIdEESaIS3_EESaIS5_EEC2EmRKS6_ = comdat any

$_ZNSt6vectorIS_IN6dealii11Polynomials10PolynomialIdEESaIS3_EESaIS5_EEixEm = comdat any

$_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEaSEOS5_ = comdat any

$_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EED2Ev = comdat any

$_ZNSt6vectorIS_IN6dealii11Polynomials10PolynomialIdEESaIS3_EESaIS5_EED2Ev = comdat any

$_ZNSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EED2Ev = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EED2Ev = comdat any

$_ZNSt6vectorIdSaIdEED2Ev = comdat any

$_ZN6dealii14PolynomialsABFILi1EED5Ev = comdat any

$_ZN6dealii22AnisotropicPolynomialsILi1EED2Ev = comdat any

$_ZNK6dealii14PolynomialsABFILi1EE7computeERKNS_5PointILi1EEERSt6vectorINS_6TensorILi1ELi1EEESaIS8_EERS6_INS7_ILi2ELi1EEESaISC_EERS6_INS7_ILi3ELi1EEESaISG_EE = comdat any

$_ZNSt6vectorIdSaIdEE6resizeEm = comdat any

$_ZNKSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE4sizeEv = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE6resizeEm = comdat any

$_ZNKSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE4sizeEv = comdat any

$_ZNSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE6resizeEm = comdat any

$_ZNKSt6vectorIN6dealii6TensorILi3ELi1EEESaIS2_EE4sizeEv = comdat any

$_ZN6dealii5PointILi1EEC2Ev = comdat any

$_ZNK6dealii5PointILi1EEclEj = comdat any

$_ZN6dealii5PointILi1EEclEj = comdat any

$_ZNKSt6vectorIdSaIdEE4sizeEv = comdat any

$_ZNSt6vectorIdSaIdEEixEm = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm = comdat any

$_ZN6dealii6TensorILi1ELi1EEixEj = comdat any

$_ZNSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EEixEm = comdat any

$_ZN6dealii6TensorILi2ELi1EEixEj = comdat any

$_ZNSt6vectorIN6dealii6TensorILi3ELi1EEESaIS2_EEixEm = comdat any

$_ZN6dealii6TensorILi3ELi1EEixEj = comdat any

$_ZNK6dealii14PolynomialsABFILi1EE1nEv = comdat any

$_ZNK6dealii14PolynomialsABFILi1EE6degreeEv = comdat any

$_ZN6dealii14PolynomialsABFILi2EEC5Ej = comdat any

$_ZN6dealii14PolynomialsABFILi2EE14compute_n_polsEj = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEC2Ev = comdat any

$_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EEC2Ev = comdat any

$_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EED2Ev = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EED2Ev = comdat any

$_ZN6dealii14PolynomialsABFILi2EED5Ev = comdat any

$_ZN6dealii22AnisotropicPolynomialsILi2EED2Ev = comdat any

$_ZNK6dealii14PolynomialsABFILi2EE7computeERKNS_5PointILi2EEERSt6vectorINS_6TensorILi1ELi2EEESaIS8_EERS6_INS7_ILi2ELi2EEESaISC_EERS6_INS7_ILi3ELi2EEESaISG_EE = comdat any

$_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE4sizeEv = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE6resizeEm = comdat any

$_ZNKSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE4sizeEv = comdat any

$_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE6resizeEm = comdat any

$_ZNKSt6vectorIN6dealii6TensorILi3ELi2EEESaIS2_EE4sizeEv = comdat any

$_ZN6dealii5PointILi2EEC2Ev = comdat any

$_ZNK6dealii5PointILi2EEclEj = comdat any

$_ZN6dealii5PointILi2EEclEj = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm = comdat any

$_ZN6dealii6TensorILi1ELi2EEixEj = comdat any

$_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EEixEm = comdat any

$_ZN6dealii6TensorILi2ELi2EEixEj = comdat any

$_ZNSt6vectorIN6dealii6TensorILi3ELi2EEESaIS2_EEixEm = comdat any

$_ZN6dealii6TensorILi3ELi2EEixEj = comdat any

$_ZNK6dealii14PolynomialsABFILi2EE1nEv = comdat any

$_ZNK6dealii14PolynomialsABFILi2EE6degreeEv = comdat any

$_ZN6dealii14PolynomialsABFILi3EEC5Ej = comdat any

$_ZN6dealii14PolynomialsABFILi3EE14compute_n_polsEj = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEC2Ev = comdat any

$_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EEC2Ev = comdat any

$_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EED2Ev = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EED2Ev = comdat any

$_ZN6dealii14PolynomialsABFILi3EED5Ev = comdat any

$_ZN6dealii22AnisotropicPolynomialsILi3EED2Ev = comdat any

$_ZNK6dealii14PolynomialsABFILi3EE7computeERKNS_5PointILi3EEERSt6vectorINS_6TensorILi1ELi3EEESaIS8_EERS6_INS7_ILi2ELi3EEESaISC_EERS6_INS7_ILi3ELi3EEESaISG_EE = comdat any

$_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE4sizeEv = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE6resizeEm = comdat any

$_ZNKSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE4sizeEv = comdat any

$_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE6resizeEm = comdat any

$_ZNKSt6vectorIN6dealii6TensorILi3ELi3EEESaIS2_EE4sizeEv = comdat any

$_ZN6dealii5PointILi3EEC2Ev = comdat any

$_ZNK6dealii5PointILi3EEclEj = comdat any

$_ZN6dealii5PointILi3EEclEj = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm = comdat any

$_ZN6dealii6TensorILi1ELi3EEixEj = comdat any

$_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EEixEm = comdat any

$_ZN6dealii6TensorILi2ELi3EEixEj = comdat any

$_ZNSt6vectorIN6dealii6TensorILi3ELi3EEESaIS2_EEixEm = comdat any

$_ZN6dealii6TensorILi3ELi3EEixEj = comdat any

$_ZNK6dealii14PolynomialsABFILi3EE1nEv = comdat any

$_ZNK6dealii14PolynomialsABFILi3EE6degreeEv = comdat any

$_ZNSt12_Vector_baseIdSaIdEEC2Ev = comdat any

$_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev = comdat any

$_ZNSaIdEC2Ev = comdat any

$_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt15__new_allocatorIdEC2Ev = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EEC2Ev = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE12_Vector_implC2Ev = comdat any

$_ZNSaIN6dealii6TensorILi1ELi1EEEEC2Ev = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi1EEEEC2Ev = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EEC2Ev = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EE12_Vector_implC2Ev = comdat any

$_ZNSaIN6dealii6TensorILi2ELi1EEEEC2Ev = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi1EEEEC2Ev = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EEC2Ev = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE12_Vector_implC2Ev = comdat any

$_ZNSaIN6dealii6TensorILi1ELi2EEEEC2Ev = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEEC2Ev = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EEC2Ev = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EE12_Vector_implC2Ev = comdat any

$_ZNSaIN6dealii6TensorILi2ELi2EEEEC2Ev = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi2EEEEC2Ev = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EEC2Ev = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE12_Vector_implC2Ev = comdat any

$_ZNSaIN6dealii6TensorILi1ELi3EEEEC2Ev = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEEC2Ev = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EEC2Ev = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE12_Vector_implC2Ev = comdat any

$_ZNSaIN6dealii6TensorILi2ELi3EEEEC2Ev = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi3EEEEC2Ev = comdat any

$_ZNSt15__new_allocatorISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EEEC2Ev = comdat any

$_ZSt8_DestroyIPddEvT_S1_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv = comdat any

$__clang_call_terminate = comdat any

$_ZNSt12_Vector_baseIdSaIdEED2Ev = comdat any

$_ZSt8_DestroyIPdEvT_S1_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_ = comdat any

$_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm = comdat any

$_ZNSt15__new_allocatorIdED2Ev = comdat any

$_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm = comdat any

$_ZNSt15__new_allocatorIdE10deallocateEPdm = comdat any

$_ZSt8_DestroyIPN6dealii6TensorILi1ELi1EEES2_EvT_S4_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EED2Ev = comdat any

$_ZSt8_DestroyIPN6dealii6TensorILi1ELi1EEEEvT_S4_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii6TensorILi1ELi1EEEEEvT_S6_ = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE13_M_deallocateEPS2_m = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi1EEEED2Ev = comdat any

$_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi1EEEEE10deallocateERS3_PS2_m = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi1EEEE10deallocateEPS2_m = comdat any

$_ZSt8_DestroyIPN6dealii6TensorILi2ELi1EEES2_EvT_S4_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EED2Ev = comdat any

$_ZSt8_DestroyIPN6dealii6TensorILi2ELi1EEEEvT_S4_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii6TensorILi2ELi1EEEEEvT_S6_ = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EE13_M_deallocateEPS2_m = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi1EEEED2Ev = comdat any

$_ZNSt16allocator_traitsISaIN6dealii6TensorILi2ELi1EEEEE10deallocateERS3_PS2_m = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi1EEEE10deallocateEPS2_m = comdat any

$_ZNSt6vectorIS_IN6dealii11Polynomials10PolynomialIdEESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_ = comdat any

$_ZNSt12_Vector_baseISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EESaIS6_EEC2EmRKS7_ = comdat any

$_ZNSt6vectorIS_IN6dealii11Polynomials10PolynomialIdEESaIS3_EESaIS5_EE21_M_default_initializeEm = comdat any

$_ZNSt12_Vector_baseISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EESaIS6_EED2Ev = comdat any

$_ZNSt6vectorIS_IN6dealii11Polynomials10PolynomialIdEESaIS3_EESaIS5_EE11_S_max_sizeERKS6_ = comdat any

$_ZNSaISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEEC2ERKS6_ = comdat any

$_ZNSt16allocator_traitsISaISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EEEE8max_sizeERKS7_ = comdat any

$_ZSt3minImERKT_S2_S2_ = comdat any

$_ZNKSt15__new_allocatorISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EEE8max_sizeEv = comdat any

$_ZNKSt15__new_allocatorISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EEE11_M_max_sizeEv = comdat any

$_ZNSt15__new_allocatorISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EEEC2ERKS7_ = comdat any

$_ZNSt12_Vector_baseISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EESaIS6_EE12_Vector_implC2ERKS7_ = comdat any

$_ZNSt12_Vector_baseISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EESaIS6_EE17_M_create_storageEm = comdat any

$_ZNSt15__new_allocatorISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EEED2Ev = comdat any

$_ZNSt12_Vector_baseISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EESaIS6_EE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt12_Vector_baseISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EESaIS6_EE11_M_allocateEm = comdat any

$_ZNSt16allocator_traitsISaISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EEEE8allocateERS7_m = comdat any

$_ZNSt15__new_allocatorISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EEE8allocateEmPKv = comdat any

$_ZSt27__uninitialized_default_n_aIPSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EEmS6_ET_S8_T0_RSaIT1_E = comdat any

$_ZNSt12_Vector_baseISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EESaIS6_EE19_M_get_Tp_allocatorEv = comdat any

$_ZSt25__uninitialized_default_nIPSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EEmET_S8_T0_ = comdat any

$_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS6_EEmEET_SA_T0_ = comdat any

$_ZSt10_ConstructISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EEJEEvPT_DpOT0_ = comdat any

$_ZSt8_DestroyIPSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EEEvT_S8_ = comdat any

$_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2Ev = comdat any

$_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2Ev = comdat any

$_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE12_Vector_implC2Ev = comdat any

$_ZNSaIN6dealii11Polynomials10PolynomialIdEEEC2Ev = comdat any

$_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEEC2Ev = comdat any

$_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS6_EEEEvT_SA_ = comdat any

$_ZSt8_DestroyISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EEEvPT_ = comdat any

$_ZNSt12_Vector_baseISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EESaIS6_EE13_M_deallocateEPS6_m = comdat any

$_ZNSt16allocator_traitsISaISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EEEE10deallocateERS7_PS6_m = comdat any

$_ZNSt15__new_allocatorISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EEE10deallocateEPS6_m = comdat any

$_ZSt8_DestroyIPSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EES6_EvT_S8_RSaIT0_E = comdat any

$_ZSt8_DestroyIPN6dealii11Polynomials10PolynomialIdEES3_EvT_S5_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EED2Ev = comdat any

$_ZSt8_DestroyIPN6dealii11Polynomials10PolynomialIdEEEvT_S5_ = comdat any

$_ZNSt12_Destroy_auxILb0EE9__destroyIPN6dealii11Polynomials10PolynomialIdEEEEvT_S7_ = comdat any

$_ZSt8_DestroyIN6dealii11Polynomials10PolynomialIdEEEvPT_ = comdat any

$_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE13_M_deallocateEPS3_m = comdat any

$_ZNSt16allocator_traitsISaIN6dealii11Polynomials10PolynomialIdEEEE10deallocateERS4_PS3_m = comdat any

$_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEE10deallocateEPS3_m = comdat any

$_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE14_M_move_assignEOS5_St17integral_constantIbLb1EE = comdat any

$_ZNKSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE13get_allocatorEv = comdat any

$_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2ERKS4_ = comdat any

$_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEED2Ev = comdat any

$_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE17_Vector_impl_data12_M_swap_dataERS6_ = comdat any

$_ZSt15__alloc_on_moveISaIN6dealii11Polynomials10PolynomialIdEEEEvRT_S6_ = comdat any

$_ZNKSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSaIN6dealii11Polynomials10PolynomialIdEEEC2ERKS3_ = comdat any

$_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEEC2ERKS4_ = comdat any

$_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2ERKS4_ = comdat any

$_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE12_Vector_implC2ERKS4_ = comdat any

$_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE17_Vector_impl_data12_M_copy_dataERKS6_ = comdat any

$_ZNSt6vectorIdSaIdEE17_M_default_appendEm = comdat any

$_ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd = comdat any

$_ZNKSt6vectorIdSaIdEE8max_sizeEv = comdat any

$_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E = comdat any

$_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc = comdat any

$_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm = comdat any

$_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_ = comdat any

$_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_ = comdat any

$_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_ = comdat any

$_ZNKSt15__new_allocatorIdE8max_sizeEv = comdat any

$_ZNKSt15__new_allocatorIdE11_M_max_sizeEv = comdat any

$_ZSt25__uninitialized_default_nIPdmET_S1_T0_ = comdat any

$_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_ = comdat any

$_ZSt10_ConstructIdJEEvPT_DpOT0_ = comdat any

$_ZSt6fill_nIPdmdET_S1_T0_RKT1_ = comdat any

$_ZSt10__fill_n_aIPdmdET_S1_T0_RKT1_St26random_access_iterator_tag = comdat any

$_ZSt17__size_to_integerm = comdat any

$_ZSt19__iterator_categoryIPdENSt15iterator_traitsIT_E17iterator_categoryERKS2_ = comdat any

$_ZSt8__fill_aIPddEvT_S1_RKT0_ = comdat any

$_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_ = comdat any

$_ZSt3maxImERKT_S2_S2_ = comdat any

$_ZNSt16allocator_traitsISaIdEE8allocateERS0_m = comdat any

$_ZNSt15__new_allocatorIdE8allocateEmPKv = comdat any

$_ZSt12__relocate_aIPdS0_SaIdEET0_T_S3_S2_RT1_ = comdat any

$_ZSt14__relocate_a_1IddENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E = comdat any

$_ZSt12__niter_baseIPdET_S1_ = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE17_M_default_appendEm = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE15_M_erase_at_endEPS2_ = comdat any

$_ZNKSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE8max_sizeEv = comdat any

$_ZSt27__uninitialized_default_n_aIPN6dealii6TensorILi1ELi1EEEmS2_ET_S4_T0_RSaIT1_E = comdat any

$_ZNKSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE12_M_check_lenEmPKc = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE11_M_allocateEm = comdat any

$_ZSt34__uninitialized_move_if_noexcept_aIPN6dealii6TensorILi1ELi1EEES3_SaIS2_EET0_T_S6_S5_RT1_ = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE11_S_max_sizeERKS3_ = comdat any

$_ZNKSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi1EEEEE8max_sizeERKS3_ = comdat any

$_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi1EEEE8max_sizeEv = comdat any

$_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi1EEEE11_M_max_sizeEv = comdat any

$_ZSt25__uninitialized_default_nIPN6dealii6TensorILi1ELi1EEEmET_S4_T0_ = comdat any

$_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6dealii6TensorILi1ELi1EEEmEET_S6_T0_ = comdat any

$_ZSt10_ConstructIN6dealii6TensorILi1ELi1EEEJEEvPT_DpOT0_ = comdat any

$_ZN6dealii6TensorILi1ELi1EEC2Eb = comdat any

$_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi1EEEEE8allocateERS3_m = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi1EEEE8allocateEmPKv = comdat any

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

$_ZSt27__uninitialized_default_n_aIPN6dealii6TensorILi2ELi1EEEmS2_ET_S4_T0_RSaIT1_E = comdat any

$_ZNKSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE12_M_check_lenEmPKc = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EE11_M_allocateEm = comdat any

$_ZSt34__uninitialized_move_if_noexcept_aIPN6dealii6TensorILi2ELi1EEES3_SaIS2_EET0_T_S6_S5_RT1_ = comdat any

$_ZNSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE11_S_max_sizeERKS3_ = comdat any

$_ZNKSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt16allocator_traitsISaIN6dealii6TensorILi2ELi1EEEEE8max_sizeERKS3_ = comdat any

$_ZNKSt15__new_allocatorIN6dealii6TensorILi2ELi1EEEE8max_sizeEv = comdat any

$_ZNKSt15__new_allocatorIN6dealii6TensorILi2ELi1EEEE11_M_max_sizeEv = comdat any

$_ZSt25__uninitialized_default_nIPN6dealii6TensorILi2ELi1EEEmET_S4_T0_ = comdat any

$_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6dealii6TensorILi2ELi1EEEmEET_S6_T0_ = comdat any

$_ZSt10_ConstructIN6dealii6TensorILi2ELi1EEEJEEvPT_DpOT0_ = comdat any

$_ZN6dealii6TensorILi2ELi1EEC2Ev = comdat any

$_ZNSt16allocator_traitsISaIN6dealii6TensorILi2ELi1EEEEE8allocateERS3_m = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi1EEEE8allocateEmPKv = comdat any

$_ZSt22__uninitialized_copy_aIPKN6dealii6TensorILi2ELi1EEEPS2_S2_ET0_T_S7_S6_RSaIT1_E = comdat any

$_ZSt32__make_move_if_noexcept_iteratorIN6dealii6TensorILi2ELi1EEEPKS2_ET0_PT_ = comdat any

$_ZSt18uninitialized_copyIPKN6dealii6TensorILi2ELi1EEEPS2_ET0_T_S7_S6_ = comdat any

$_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPKN6dealii6TensorILi2ELi1EEEPS4_EET0_T_S9_S8_ = comdat any

$_ZSt16__do_uninit_copyIPKN6dealii6TensorILi2ELi1EEEPS2_ET0_T_S7_S6_ = comdat any

$_ZSt10_ConstructIN6dealii6TensorILi2ELi1EEEJRKS2_EEvPT_DpOT0_ = comdat any

$_ZN6dealii6TensorILi2ELi1EEC2ERKS1_ = comdat any

$_ZSt8_DestroyIPN6dealii6TensorILi1ELi2EEES2_EvT_S4_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EED2Ev = comdat any

$_ZSt8_DestroyIPN6dealii6TensorILi1ELi2EEEEvT_S4_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii6TensorILi1ELi2EEEEEvT_S6_ = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE13_M_deallocateEPS2_m = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEED2Ev = comdat any

$_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi2EEEEE10deallocateERS3_PS2_m = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEE10deallocateEPS2_m = comdat any

$_ZSt8_DestroyIPN6dealii6TensorILi2ELi2EEES2_EvT_S4_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EED2Ev = comdat any

$_ZSt8_DestroyIPN6dealii6TensorILi2ELi2EEEEvT_S4_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii6TensorILi2ELi2EEEEEvT_S6_ = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EE13_M_deallocateEPS2_m = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi2EEEED2Ev = comdat any

$_ZNSt16allocator_traitsISaIN6dealii6TensorILi2ELi2EEEEE10deallocateERS3_PS2_m = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi2EEEE10deallocateEPS2_m = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE17_M_default_appendEm = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE15_M_erase_at_endEPS2_ = comdat any

$_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE8max_sizeEv = comdat any

$_ZSt27__uninitialized_default_n_aIPN6dealii6TensorILi1ELi2EEEmS2_ET_S4_T0_RSaIT1_E = comdat any

$_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE12_M_check_lenEmPKc = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE11_M_allocateEm = comdat any

$_ZSt34__uninitialized_move_if_noexcept_aIPN6dealii6TensorILi1ELi2EEES3_SaIS2_EET0_T_S6_S5_RT1_ = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE11_S_max_sizeERKS3_ = comdat any

$_ZNKSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi2EEEEE8max_sizeERKS3_ = comdat any

$_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEE8max_sizeEv = comdat any

$_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEE11_M_max_sizeEv = comdat any

$_ZSt25__uninitialized_default_nIPN6dealii6TensorILi1ELi2EEEmET_S4_T0_ = comdat any

$_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6dealii6TensorILi1ELi2EEEmEET_S6_T0_ = comdat any

$_ZSt10_ConstructIN6dealii6TensorILi1ELi2EEEJEEvPT_DpOT0_ = comdat any

$_ZN6dealii6TensorILi1ELi2EEC2Eb = comdat any

$_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi2EEEEE8allocateERS3_m = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEE8allocateEmPKv = comdat any

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

$_ZSt27__uninitialized_default_n_aIPN6dealii6TensorILi2ELi2EEEmS2_ET_S4_T0_RSaIT1_E = comdat any

$_ZNKSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE12_M_check_lenEmPKc = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EE11_M_allocateEm = comdat any

$_ZSt34__uninitialized_move_if_noexcept_aIPN6dealii6TensorILi2ELi2EEES3_SaIS2_EET0_T_S6_S5_RT1_ = comdat any

$_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE11_S_max_sizeERKS3_ = comdat any

$_ZNKSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt16allocator_traitsISaIN6dealii6TensorILi2ELi2EEEEE8max_sizeERKS3_ = comdat any

$_ZNKSt15__new_allocatorIN6dealii6TensorILi2ELi2EEEE8max_sizeEv = comdat any

$_ZNKSt15__new_allocatorIN6dealii6TensorILi2ELi2EEEE11_M_max_sizeEv = comdat any

$_ZSt25__uninitialized_default_nIPN6dealii6TensorILi2ELi2EEEmET_S4_T0_ = comdat any

$_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6dealii6TensorILi2ELi2EEEmEET_S6_T0_ = comdat any

$_ZSt10_ConstructIN6dealii6TensorILi2ELi2EEEJEEvPT_DpOT0_ = comdat any

$_ZN6dealii6TensorILi2ELi2EEC2Ev = comdat any

$_ZNSt16allocator_traitsISaIN6dealii6TensorILi2ELi2EEEEE8allocateERS3_m = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi2EEEE8allocateEmPKv = comdat any

$_ZSt22__uninitialized_copy_aIPKN6dealii6TensorILi2ELi2EEEPS2_S2_ET0_T_S7_S6_RSaIT1_E = comdat any

$_ZSt32__make_move_if_noexcept_iteratorIN6dealii6TensorILi2ELi2EEEPKS2_ET0_PT_ = comdat any

$_ZSt18uninitialized_copyIPKN6dealii6TensorILi2ELi2EEEPS2_ET0_T_S7_S6_ = comdat any

$_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPKN6dealii6TensorILi2ELi2EEEPS4_EET0_T_S9_S8_ = comdat any

$_ZSt16__do_uninit_copyIPKN6dealii6TensorILi2ELi2EEEPS2_ET0_T_S7_S6_ = comdat any

$_ZSt10_ConstructIN6dealii6TensorILi2ELi2EEEJRKS2_EEvPT_DpOT0_ = comdat any

$_ZN6dealii6TensorILi2ELi2EEC2ERKS1_ = comdat any

$_ZSt8_DestroyIPN6dealii6TensorILi1ELi3EEES2_EvT_S4_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EED2Ev = comdat any

$_ZSt8_DestroyIPN6dealii6TensorILi1ELi3EEEEvT_S4_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii6TensorILi1ELi3EEEEEvT_S6_ = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE13_M_deallocateEPS2_m = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEED2Ev = comdat any

$_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi3EEEEE10deallocateERS3_PS2_m = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEE10deallocateEPS2_m = comdat any

$_ZSt8_DestroyIPN6dealii6TensorILi2ELi3EEES2_EvT_S4_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EED2Ev = comdat any

$_ZSt8_DestroyIPN6dealii6TensorILi2ELi3EEEEvT_S4_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii6TensorILi2ELi3EEEEEvT_S6_ = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE13_M_deallocateEPS2_m = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi3EEEED2Ev = comdat any

$_ZNSt16allocator_traitsISaIN6dealii6TensorILi2ELi3EEEEE10deallocateERS3_PS2_m = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi3EEEE10deallocateEPS2_m = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE17_M_default_appendEm = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE15_M_erase_at_endEPS2_ = comdat any

$_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE8max_sizeEv = comdat any

$_ZSt27__uninitialized_default_n_aIPN6dealii6TensorILi1ELi3EEEmS2_ET_S4_T0_RSaIT1_E = comdat any

$_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE12_M_check_lenEmPKc = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE11_M_allocateEm = comdat any

$_ZSt34__uninitialized_move_if_noexcept_aIPN6dealii6TensorILi1ELi3EEES3_SaIS2_EET0_T_S6_S5_RT1_ = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE11_S_max_sizeERKS3_ = comdat any

$_ZNKSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi3EEEEE8max_sizeERKS3_ = comdat any

$_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEE8max_sizeEv = comdat any

$_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEE11_M_max_sizeEv = comdat any

$_ZSt25__uninitialized_default_nIPN6dealii6TensorILi1ELi3EEEmET_S4_T0_ = comdat any

$_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6dealii6TensorILi1ELi3EEEmEET_S6_T0_ = comdat any

$_ZSt10_ConstructIN6dealii6TensorILi1ELi3EEEJEEvPT_DpOT0_ = comdat any

$_ZN6dealii6TensorILi1ELi3EEC2Eb = comdat any

$_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi3EEEEE8allocateERS3_m = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEE8allocateEmPKv = comdat any

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

$_ZSt27__uninitialized_default_n_aIPN6dealii6TensorILi2ELi3EEEmS2_ET_S4_T0_RSaIT1_E = comdat any

$_ZNKSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE12_M_check_lenEmPKc = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE11_M_allocateEm = comdat any

$_ZSt34__uninitialized_move_if_noexcept_aIPN6dealii6TensorILi2ELi3EEES3_SaIS2_EET0_T_S6_S5_RT1_ = comdat any

$_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE11_S_max_sizeERKS3_ = comdat any

$_ZNKSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt16allocator_traitsISaIN6dealii6TensorILi2ELi3EEEEE8max_sizeERKS3_ = comdat any

$_ZNKSt15__new_allocatorIN6dealii6TensorILi2ELi3EEEE8max_sizeEv = comdat any

$_ZNKSt15__new_allocatorIN6dealii6TensorILi2ELi3EEEE11_M_max_sizeEv = comdat any

$_ZSt25__uninitialized_default_nIPN6dealii6TensorILi2ELi3EEEmET_S4_T0_ = comdat any

$_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6dealii6TensorILi2ELi3EEEmEET_S6_T0_ = comdat any

$_ZSt10_ConstructIN6dealii6TensorILi2ELi3EEEJEEvPT_DpOT0_ = comdat any

$_ZN6dealii6TensorILi2ELi3EEC2Ev = comdat any

$_ZNSt16allocator_traitsISaIN6dealii6TensorILi2ELi3EEEEE8allocateERS3_m = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi3EEEE8allocateEmPKv = comdat any

$_ZSt22__uninitialized_copy_aIPKN6dealii6TensorILi2ELi3EEEPS2_S2_ET0_T_S7_S6_RSaIT1_E = comdat any

$_ZSt32__make_move_if_noexcept_iteratorIN6dealii6TensorILi2ELi3EEEPKS2_ET0_PT_ = comdat any

$_ZSt18uninitialized_copyIPKN6dealii6TensorILi2ELi3EEEPS2_ET0_T_S7_S6_ = comdat any

$_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPKN6dealii6TensorILi2ELi3EEEPS4_EET0_T_S9_S8_ = comdat any

$_ZSt16__do_uninit_copyIPKN6dealii6TensorILi2ELi3EEEPS2_ET0_T_S7_S6_ = comdat any

$_ZSt10_ConstructIN6dealii6TensorILi2ELi3EEEJRKS2_EEvPT_DpOT0_ = comdat any

$_ZN6dealii6TensorILi2ELi3EEC2ERKS1_ = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_polynomials_abf.cc, ptr null }]

@_ZN6dealii14PolynomialsABFILi1EEC1Ej = weak_odr dso_local unnamed_addr alias void (ptr, i32), ptr @_ZN6dealii14PolynomialsABFILi1EEC2Ej
@_ZN6dealii14PolynomialsABFILi1EED1Ev = weak_odr dso_local unnamed_addr alias void (ptr), ptr @_ZN6dealii14PolynomialsABFILi1EED2Ev
@_ZN6dealii14PolynomialsABFILi2EEC1Ej = weak_odr dso_local unnamed_addr alias void (ptr, i32), ptr @_ZN6dealii14PolynomialsABFILi2EEC2Ej
@_ZN6dealii14PolynomialsABFILi2EED1Ev = weak_odr dso_local unnamed_addr alias void (ptr), ptr @_ZN6dealii14PolynomialsABFILi2EED2Ev
@_ZN6dealii14PolynomialsABFILi3EEC1Ej = weak_odr dso_local unnamed_addr alias void (ptr, i32), ptr @_ZN6dealii14PolynomialsABFILi3EEC2Ej
@_ZN6dealii14PolynomialsABFILi3EED1Ev = weak_odr dso_local unnamed_addr alias void (ptr), ptr @_ZN6dealii14PolynomialsABFILi3EED2Ev

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
define weak_odr dso_local void @_ZN6dealii14PolynomialsABFILi1EEC2Ej(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %1) unnamed_addr #4 comdat($_ZN6dealii14PolynomialsABFILi1EEC5Ej) align 2 personality ptr @__gxx_personality_v0 !prof !142 {
  %3 = alloca %"class.std::vector.10", align 8
  %4 = alloca %"class.std::allocator.12", align 1
  %5 = alloca %"class.std::vector.15", align 8
  store i32 %1, ptr %0, align 8, !tbaa !143
  %6 = getelementptr inbounds %"class.dealii::PolynomialsABF", ptr %0, i64 0, i32 2
  %7 = tail call noundef i32 @_ZN6dealii14PolynomialsABFILi1EE14compute_n_polsEj(i32 noundef %1) #14
  store i32 %7, ptr %6, align 8, !tbaa !161
  %8 = getelementptr inbounds %"class.dealii::PolynomialsABF", ptr %0, i64 0, i32 3
  tail call void @_ZNSt6vectorIdSaIdEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #16
  %9 = getelementptr inbounds %"class.dealii::PolynomialsABF", ptr %0, i64 0, i32 4
  tail call void @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #16
  %10 = getelementptr inbounds %"class.dealii::PolynomialsABF", ptr %0, i64 0, i32 5
  tail call void @_ZNSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %10) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #15
  call void @_ZNSaISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #16
  invoke void @_ZNSt6vectorIS_IN6dealii11Polynomials10PolynomialIdEESaIS3_EESaIS5_EEC2EmRKS6_(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %4) #14
          to label %11 unwind label %17

11:                                               ; preds = %2
  call void @_ZNSt15__new_allocatorISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #15
  %12 = add i32 %1, 2
  invoke void @_ZN6dealii11Polynomials19LagrangeEquidistant23generate_complete_basisEj(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.15") align 8 %5, i32 noundef %12) #14
          to label %13 unwind label %19

13:                                               ; preds = %11
  %14 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii11Polynomials10PolynomialIdEESaIS3_EESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 0) #16
  %15 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEaSEOS5_(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %5) #16
  call void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  %16 = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #17
          to label %21 unwind label %24

17:                                               ; preds = %2
  %18 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  br label %30

19:                                               ; preds = %11
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  br label %28

21:                                               ; preds = %13
  invoke void @_ZN6dealii22AnisotropicPolynomialsILi1EEC1ERKSt6vectorIS2_INS_11Polynomials10PolynomialIdEESaIS5_EESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(28) %16, ptr noundef nonnull align 8 dereferenceable(24) %3) #14
          to label %22 unwind label %26

22:                                               ; preds = %21
  %23 = getelementptr inbounds %"class.dealii::PolynomialsABF", ptr %0, i64 0, i32 1
  store ptr %16, ptr %23, align 8, !tbaa !162
  call void @_ZNSt6vectorIS_IN6dealii11Polynomials10PolynomialIdEESaIS3_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  ret void

24:                                               ; preds = %13
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %28

26:                                               ; preds = %21
  %27 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %16) #18
  br label %28

28:                                               ; preds = %26, %24, %19
  %29 = phi { ptr, i32 } [ %27, %26 ], [ %25, %24 ], [ %20, %19 ]
  call void @_ZNSt6vectorIS_IN6dealii11Polynomials10PolynomialIdEESaIS3_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #16
  br label %30

30:                                               ; preds = %28, %17
  %31 = phi { ptr, i32 } [ %29, %28 ], [ %18, %17 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  call void @_ZNSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %10) #16
  call void @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #16
  call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #16
  resume { ptr, i32 } %31
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef i32 @_ZN6dealii14PolynomialsABFILi1EE14compute_n_polsEj(i32 noundef %0) local_unnamed_addr #5 comdat align 2 !prof !142 {
  %2 = add i32 %0, 1
  ret i32 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !163 {
  tail call void @_ZNSt12_Vector_baseIdSaIdEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !142 {
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !142 {
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !142 {
  tail call void @_ZNSt15__new_allocatorISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIS_IN6dealii11Polynomials10PolynomialIdEESaIS3_EESaIS5_EEC2EmRKS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = tail call noundef i64 @_ZNSt6vectorIS_IN6dealii11Polynomials10PolynomialIdEESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_(i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #14
  tail call void @_ZNSt12_Vector_baseISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EESaIS6_EEC2EmRKS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %2) #14
  invoke void @_ZNSt6vectorIS_IN6dealii11Polynomials10PolynomialIdEESaIS3_EESaIS5_EE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #14
          to label %5 unwind label %6

5:                                                ; preds = %3
  ret void

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt12_Vector_baseISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  resume { ptr, i32 } %7
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: optsize
declare void @_ZN6dealii11Polynomials19LagrangeEquidistant23generate_complete_basisEj(ptr dead_on_unwind writable sret(%"class.std::vector.15") align 8, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii11Polynomials10PolynomialIdEESaIS3_EESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !142 {
  %3 = load ptr, ptr %0, align 8, !tbaa !164
  %4 = getelementptr inbounds %"class.std::vector.15", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEaSEOS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat align 2 {
  tail call void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE14_M_move_assignEOS5_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !166 {
  %2 = load ptr, ptr %0, align 8, !tbaa !167
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !169
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
  tail call void @__clang_call_terminate(ptr %9) #19
  unreachable
}

; Function Attrs: optsize
declare void @_ZN6dealii11Polynomials8Legendre23generate_complete_basisEj(ptr dead_on_unwind writable sret(%"class.std::vector.15") align 8, i32 noundef) local_unnamed_addr #1

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @_ZN6dealii22AnisotropicPolynomialsILi1EEC1ERKSt6vectorIS2_INS_11Polynomials10PolynomialIdEESaIS5_EESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIS_IN6dealii11Polynomials10PolynomialIdEESaIS3_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !142 {
  %2 = load ptr, ptr %0, align 8, !tbaa !164
  %3 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<dealii::Polynomials::Polynomial<double>>, std::allocator<std::vector<dealii::Polynomials::Polynomial<double>>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !170
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EESaIS6_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  invoke void @_ZSt8_DestroyIPSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EES6_EvT_S8_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #14
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #19
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !142 {
  %2 = load ptr, ptr %0, align 8, !tbaa !171
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<2, 1>, std::allocator<dealii::Tensor<2, 1>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !172
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
  tail call void @__clang_call_terminate(ptr %9) #19
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !142 {
  %2 = load ptr, ptr %0, align 8, !tbaa !173
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 1>, std::allocator<dealii::Tensor<1, 1>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !174
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
  tail call void @__clang_call_terminate(ptr %9) #19
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !175 {
  %2 = load ptr, ptr %0, align 8, !tbaa !176
  %3 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !177
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
  tail call void @__clang_call_terminate(ptr %9) #19
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii14PolynomialsABFILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #5 comdat($_ZN6dealii14PolynomialsABFILi1EED5Ev) align 2 !prof !142 {
  %2 = getelementptr inbounds %"class.dealii::PolynomialsABF", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !162
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZN6dealii22AnisotropicPolynomialsILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(28) %3) #16
  tail call void @_ZdlPv(ptr noundef nonnull %3) #18
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %"class.dealii::PolynomialsABF", ptr %0, i64 0, i32 5
  tail call void @_ZNSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #16
  %8 = getelementptr inbounds %"class.dealii::PolynomialsABF", ptr %0, i64 0, i32 4
  tail call void @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #16
  %9 = getelementptr inbounds %"class.dealii::PolynomialsABF", ptr %0, i64 0, i32 3
  tail call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii22AnisotropicPolynomialsILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZNSt6vectorIS_IN6dealii11Polynomials10PolynomialIdEESaIS3_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii14PolynomialsABFILi1EE7computeERKNS_5PointILi1EEERSt6vectorINS_6TensorILi1ELi1EEESaIS8_EERS6_INS7_ILi2ELi1EEESaISC_EERS6_INS7_ILi3ELi1EEESaISG_EE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #4 comdat align 2 !prof !142 {
  %6 = alloca %"class.dealii::Point", align 8
  %7 = getelementptr inbounds %"class.dealii::PolynomialsABF", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !162
  %9 = tail call noundef i32 @_ZNK6dealii22AnisotropicPolynomialsILi1EE1nEv(ptr noundef nonnull align 8 dereferenceable(28) %8) #14
  %10 = getelementptr inbounds %"class.dealii::PolynomialsABF", ptr %0, i64 0, i32 3
  %11 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #16
  %12 = icmp eq i64 %11, 0
  %13 = zext i32 %9 to i64
  %14 = select i1 %12, i64 0, i64 %13
  tail call void @_ZNSt6vectorIdSaIdEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef %14) #14
  %15 = getelementptr inbounds %"class.dealii::PolynomialsABF", ptr %0, i64 0, i32 4
  %16 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #16
  %17 = icmp eq i64 %16, 0
  %18 = select i1 %17, i64 0, i64 %13
  tail call void @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %15, i64 noundef %18) #14
  %19 = getelementptr inbounds %"class.dealii::PolynomialsABF", ptr %0, i64 0, i32 5
  %20 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi3ELi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #16
  %21 = icmp eq i64 %20, 0
  %22 = select i1 %21, i64 0, i64 %13
  tail call void @_ZNSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %19, i64 noundef %22) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #15
  call void @_ZN6dealii5PointILi1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #14
  %23 = call noundef double @_ZNK6dealii5PointILi1EEclEj(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 0) #14
  %24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii5PointILi1EEclEj(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 0) #14
  store double %23, ptr %24, align 8, !tbaa !178
  %25 = load ptr, ptr %7, align 8, !tbaa !162
  call void @_ZNK6dealii22AnisotropicPolynomialsILi1EE7computeERKNS_5PointILi1EEERSt6vectorIdSaIdEERS6_INS_6TensorILi1ELi1EEESaISB_EERS6_INSA_ILi2ELi1EEESaISF_EE(ptr noundef nonnull align 8 dereferenceable(28) %25, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %19) #14
  %26 = call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %10) #16
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %31, %5
  %29 = call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %15) #16
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %42, label %45

31:                                               ; preds = %5, %31
  %32 = phi i64 [ %39, %31 ], [ 0, %5 ]
  %33 = phi i32 [ %38, %31 ], [ 0, %5 ]
  %34 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef %32) #16
  %35 = load double, ptr %34, align 8, !tbaa !178
  %36 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %32) #16
  %37 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %36, i32 noundef 0) #14
  store double %35, ptr %37, align 8, !tbaa !178
  %38 = add i32 %33, 1
  %39 = zext i32 %38 to i64
  %40 = call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %10) #16
  %41 = icmp ugt i64 %40, %39
  br i1 %41, label %31, label %28, !llvm.loop !180

42:                                               ; preds = %45, %28
  %43 = call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %19) #16
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %58, label %59

45:                                               ; preds = %28, %45
  %46 = phi i64 [ %55, %45 ], [ 0, %28 ]
  %47 = phi i32 [ %54, %45 ], [ 0, %28 ]
  %48 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %15, i64 noundef %46) #16
  %49 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %48, i32 noundef 0) #14
  %50 = load double, ptr %49, align 8, !tbaa !178
  %51 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %46) #16
  %52 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi2ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %51, i32 noundef 0) #14
  %53 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %52, i32 noundef 0) #14
  store double %50, ptr %53, align 8, !tbaa !178
  %54 = add i32 %47, 1
  %55 = zext i32 %54 to i64
  %56 = call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %15) #16
  %57 = icmp ugt i64 %56, %55
  br i1 %57, label %45, label %42, !llvm.loop !182

58:                                               ; preds = %59, %42
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #15
  ret void

59:                                               ; preds = %42, %59
  %60 = phi i64 [ %71, %59 ], [ 0, %42 ]
  %61 = phi i32 [ %70, %59 ], [ 0, %42 ]
  %62 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %19, i64 noundef %60) #16
  %63 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi2ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %62, i32 noundef 0) #14
  %64 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %63, i32 noundef 0) #14
  %65 = load double, ptr %64, align 8, !tbaa !178
  %66 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIN6dealii6TensorILi3ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %60) #16
  %67 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi3ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %66, i32 noundef 0) #14
  %68 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi2ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %67, i32 noundef 0) #14
  %69 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %68, i32 noundef 0) #14
  store double %65, ptr %69, align 8, !tbaa !178
  %70 = add i32 %61, 1
  %71 = zext i32 %70 to i64
  %72 = call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %19) #16
  %73 = icmp ugt i64 %72, %71
  br i1 %73, label %59, label %58, !llvm.loop !183
}

; Function Attrs: optsize
declare noundef i32 @_ZNK6dealii22AnisotropicPolynomialsILi1EE1nEv(ptr noundef nonnull align 8 dereferenceable(28)) local_unnamed_addr #1

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
  %11 = load ptr, ptr %0, align 8, !tbaa !176
  %12 = getelementptr inbounds double, ptr %11, i64 %1
  tail call void @_ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %12) #16
  br label %13

13:                                               ; preds = %8, %10, %6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !142 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 1>, std::allocator<dealii::Tensor<1, 1>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !174
  %4 = load ptr, ptr %0, align 8, !tbaa !173
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
  %11 = load ptr, ptr %0, align 8, !tbaa !173
  %12 = getelementptr inbounds %"class.dealii::Tensor", ptr %11, i64 %1
  tail call void @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE15_M_erase_at_endEPS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %12) #16
  br label %13

13:                                               ; preds = %8, %10, %6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !142 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<2, 1>, std::allocator<dealii::Tensor<2, 1>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !172
  %4 = load ptr, ptr %0, align 8, !tbaa !171
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
  %11 = load ptr, ptr %0, align 8, !tbaa !171
  %12 = getelementptr inbounds %"class.dealii::Tensor.25", ptr %11, i64 %1
  tail call void @_ZNSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE15_M_erase_at_endEPS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %12) #16
  br label %13

13:                                               ; preds = %8, %10, %6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi3ELi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !142 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<3, 1>, std::allocator<dealii::Tensor<3, 1>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !184
  %4 = load ptr, ptr %0, align 8, !tbaa !186
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  ret i64 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii5PointILi1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !prof !187 {
  tail call void @_ZN6dealii6TensorILi1ELi1EEC2Eb(ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext true) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZNK6dealii5PointILi1EEclEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !188 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [1 x double], ptr %0, i64 0, i64 %3
  %5 = load double, ptr %4, align 8, !tbaa !178
  ret double %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii5PointILi1EEclEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !142 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [1 x double], ptr %0, i64 0, i64 %3
  ret ptr %4
}

; Function Attrs: optsize
declare void @_ZNK6dealii22AnisotropicPolynomialsILi1EE7computeERKNS_5PointILi1EEERSt6vectorIdSaIdEERS6_INS_6TensorILi1ELi1EEESaISB_EERS6_INSA_ILi2ELi1EEESaISF_EE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !189 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !177
  %4 = load ptr, ptr %0, align 8, !tbaa !176
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  ret i64 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !190 {
  %3 = load ptr, ptr %0, align 8, !tbaa !176
  %4 = getelementptr inbounds double, ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !142 {
  %3 = load ptr, ptr %0, align 8, !tbaa !173
  %4 = getelementptr inbounds %"class.dealii::Tensor", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !142 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [1 x double], ptr %0, i64 0, i64 %3
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !142 {
  %3 = load ptr, ptr %0, align 8, !tbaa !171
  %4 = getelementptr inbounds %"class.dealii::Tensor.25", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi2ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !142 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [1 x %"class.dealii::Tensor"], ptr %0, i64 0, i64 %3
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIN6dealii6TensorILi3ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !142 {
  %3 = load ptr, ptr %0, align 8, !tbaa !186
  %4 = getelementptr inbounds %"class.dealii::Tensor.26", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi3ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !142 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [1 x %"class.dealii::Tensor.25"], ptr %0, i64 0, i64 %3
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii14PolynomialsABFILi1EE1nEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #5 comdat align 2 !prof !142 {
  %2 = getelementptr inbounds %"class.dealii::PolynomialsABF", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !161
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii14PolynomialsABFILi1EE6degreeEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #5 comdat align 2 !prof !142 {
  %2 = load i32, ptr %0, align 8, !tbaa !143
  ret i32 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii14PolynomialsABFILi2EEC2Ej(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %1) unnamed_addr #4 comdat($_ZN6dealii14PolynomialsABFILi2EEC5Ej) align 2 personality ptr @__gxx_personality_v0 !prof !142 {
  %3 = alloca %"class.std::vector.10", align 8
  %4 = alloca %"class.std::allocator.12", align 1
  %5 = alloca %"class.std::vector.15", align 8
  %6 = alloca %"class.std::vector.15", align 8
  %7 = alloca %"class.std::vector.15", align 8
  store i32 %1, ptr %0, align 8, !tbaa !191
  %8 = getelementptr inbounds %"class.dealii::PolynomialsABF.27", ptr %0, i64 0, i32 2
  %9 = tail call noundef i32 @_ZN6dealii14PolynomialsABFILi2EE14compute_n_polsEj(i32 noundef %1) #14
  store i32 %9, ptr %8, align 8, !tbaa !201
  %10 = getelementptr inbounds %"class.dealii::PolynomialsABF.27", ptr %0, i64 0, i32 3
  tail call void @_ZNSt6vectorIdSaIdEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %10) #16
  %11 = getelementptr inbounds %"class.dealii::PolynomialsABF.27", ptr %0, i64 0, i32 4
  tail call void @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %11) #16
  %12 = getelementptr inbounds %"class.dealii::PolynomialsABF.27", ptr %0, i64 0, i32 5
  tail call void @_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %12) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #15
  call void @_ZNSaISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #16
  invoke void @_ZNSt6vectorIS_IN6dealii11Polynomials10PolynomialIdEESaIS3_EESaIS5_EEC2EmRKS6_(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 2, ptr noundef nonnull align 1 dereferenceable(1) %4) #14
          to label %13 unwind label %19

13:                                               ; preds = %2
  call void @_ZNSt15__new_allocatorISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #15
  %14 = add i32 %1, 2
  invoke void @_ZN6dealii11Polynomials19LagrangeEquidistant23generate_complete_basisEj(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.15") align 8 %5, i32 noundef %14) #14
          to label %15 unwind label %21

15:                                               ; preds = %13
  %16 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii11Polynomials10PolynomialIdEESaIS3_EESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 0) #16
  %17 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEaSEOS5_(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %5) #16
  call void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  %18 = icmp eq i32 %1, 0
  br i1 %18, label %23, label %29

19:                                               ; preds = %2
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  br label %46

21:                                               ; preds = %13
  %22 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  br label %44

23:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #15
  invoke void @_ZN6dealii11Polynomials8Legendre23generate_complete_basisEj(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.15") align 8 %6, i32 noundef 0) #14
          to label %24 unwind label %27

24:                                               ; preds = %23
  %25 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii11Polynomials10PolynomialIdEESaIS3_EESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 1) #16
  %26 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEaSEOS5_(ptr noundef nonnull align 8 dereferenceable(24) %25, ptr noundef nonnull align 8 dereferenceable(24) %6) #16
  call void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #15
  br label %35

27:                                               ; preds = %23
  %28 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #15
  br label %44

29:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #15
  invoke void @_ZN6dealii11Polynomials19LagrangeEquidistant23generate_complete_basisEj(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.15") align 8 %7, i32 noundef %1) #14
          to label %30 unwind label %33

30:                                               ; preds = %29
  %31 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii11Polynomials10PolynomialIdEESaIS3_EESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 1) #16
  %32 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEaSEOS5_(ptr noundef nonnull align 8 dereferenceable(24) %31, ptr noundef nonnull align 8 dereferenceable(24) %7) #16
  call void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #15
  br label %35

33:                                               ; preds = %29
  %34 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #15
  br label %44

35:                                               ; preds = %30, %24
  %36 = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #17
          to label %37 unwind label %40

37:                                               ; preds = %35
  invoke void @_ZN6dealii22AnisotropicPolynomialsILi2EEC1ERKSt6vectorIS2_INS_11Polynomials10PolynomialIdEESaIS5_EESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(28) %36, ptr noundef nonnull align 8 dereferenceable(24) %3) #14
          to label %38 unwind label %42

38:                                               ; preds = %37
  %39 = getelementptr inbounds %"class.dealii::PolynomialsABF.27", ptr %0, i64 0, i32 1
  store ptr %36, ptr %39, align 8, !tbaa !202
  call void @_ZNSt6vectorIS_IN6dealii11Polynomials10PolynomialIdEESaIS3_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  ret void

40:                                               ; preds = %35
  %41 = landingpad { ptr, i32 }
          cleanup
  br label %44

42:                                               ; preds = %37
  %43 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %36) #18
  br label %44

44:                                               ; preds = %42, %40, %33, %27, %21
  %45 = phi { ptr, i32 } [ %28, %27 ], [ %43, %42 ], [ %41, %40 ], [ %34, %33 ], [ %22, %21 ]
  call void @_ZNSt6vectorIS_IN6dealii11Polynomials10PolynomialIdEESaIS3_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #16
  br label %46

46:                                               ; preds = %44, %19
  %47 = phi { ptr, i32 } [ %45, %44 ], [ %20, %19 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  call void @_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %12) #16
  call void @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %11) #16
  call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %10) #16
  resume { ptr, i32 } %47
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef i32 @_ZN6dealii14PolynomialsABFILi2EE14compute_n_polsEj(i32 noundef %0) local_unnamed_addr #5 comdat align 2 !prof !142 {
  %2 = shl i32 %0, 1
  %3 = add i32 %2, 2
  %4 = add i32 %0, 3
  %5 = mul i32 %3, %4
  ret i32 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !142 {
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !142 {
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: optsize
declare void @_ZN6dealii22AnisotropicPolynomialsILi2EEC1ERKSt6vectorIS2_INS_11Polynomials10PolynomialIdEESaIS5_EESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !142 {
  %2 = load ptr, ptr %0, align 8, !tbaa !203
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<2, 2>, std::allocator<dealii::Tensor<2, 2>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !204
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
  tail call void @__clang_call_terminate(ptr %9) #19
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !142 {
  %2 = load ptr, ptr %0, align 8, !tbaa !205
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !206
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
  tail call void @__clang_call_terminate(ptr %9) #19
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii14PolynomialsABFILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #5 comdat($_ZN6dealii14PolynomialsABFILi2EED5Ev) align 2 !prof !142 {
  %2 = getelementptr inbounds %"class.dealii::PolynomialsABF.27", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !202
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZN6dealii22AnisotropicPolynomialsILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(28) %3) #16
  tail call void @_ZdlPv(ptr noundef nonnull %3) #18
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %"class.dealii::PolynomialsABF.27", ptr %0, i64 0, i32 5
  tail call void @_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #16
  %8 = getelementptr inbounds %"class.dealii::PolynomialsABF.27", ptr %0, i64 0, i32 4
  tail call void @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #16
  %9 = getelementptr inbounds %"class.dealii::PolynomialsABF.27", ptr %0, i64 0, i32 3
  tail call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii22AnisotropicPolynomialsILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZNSt6vectorIS_IN6dealii11Polynomials10PolynomialIdEESaIS3_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii14PolynomialsABFILi2EE7computeERKNS_5PointILi2EEERSt6vectorINS_6TensorILi1ELi2EEESaIS8_EERS6_INS7_ILi2ELi2EEESaISC_EERS6_INS7_ILi3ELi2EEESaISG_EE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #4 comdat align 2 !prof !142 {
  %6 = alloca %"class.dealii::Point.45", align 8
  %7 = getelementptr inbounds %"class.dealii::PolynomialsABF.27", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !202
  %9 = tail call noundef i32 @_ZNK6dealii22AnisotropicPolynomialsILi2EE1nEv(ptr noundef nonnull align 8 dereferenceable(28) %8) #14
  %10 = getelementptr inbounds %"class.dealii::PolynomialsABF.27", ptr %0, i64 0, i32 3
  %11 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #16
  %12 = icmp eq i64 %11, 0
  %13 = zext i32 %9 to i64
  %14 = select i1 %12, i64 0, i64 %13
  tail call void @_ZNSt6vectorIdSaIdEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef %14) #14
  %15 = getelementptr inbounds %"class.dealii::PolynomialsABF.27", ptr %0, i64 0, i32 4
  %16 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #16
  %17 = icmp eq i64 %16, 0
  %18 = select i1 %17, i64 0, i64 %13
  tail call void @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %15, i64 noundef %18) #14
  %19 = getelementptr inbounds %"class.dealii::PolynomialsABF.27", ptr %0, i64 0, i32 5
  %20 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi3ELi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #16
  %21 = icmp eq i64 %20, 0
  %22 = select i1 %21, i64 0, i64 %13
  tail call void @_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %19, i64 noundef %22) #14
  br label %24

23:                                               ; preds = %87
  ret void

24:                                               ; preds = %5, %87
  %25 = phi i1 [ true, %5 ], [ false, %87 ]
  %26 = phi i32 [ 0, %5 ], [ 1, %87 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #15
  call void @_ZN6dealii5PointILi2EEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #14
  %27 = call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %26) #14
  %28 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %6, i32 noundef 0) #14
  store double %27, ptr %28, align 8, !tbaa !178
  %29 = xor i32 %26, 1
  %30 = call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %29) #14
  %31 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %6, i32 noundef 1) #14
  store double %30, ptr %31, align 8, !tbaa !178
  %32 = load ptr, ptr %7, align 8, !tbaa !202
  call void @_ZNK6dealii22AnisotropicPolynomialsILi2EE7computeERKNS_5PointILi2EEERSt6vectorIdSaIdEERS6_INS_6TensorILi1ELi2EEESaISB_EERS6_INSA_ILi2ELi2EEESaISF_EE(ptr noundef nonnull align 8 dereferenceable(28) %32, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %19) #14
  %33 = call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %10) #16
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %24
  %36 = mul nuw nsw i32 %26, %9
  br label %43

37:                                               ; preds = %43, %24
  %38 = call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %15) #16
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %56, label %40

40:                                               ; preds = %37
  %41 = mul nuw nsw i32 %26, %9
  %42 = xor i32 %26, 1
  br label %61

43:                                               ; preds = %35, %43
  %44 = phi i64 [ 0, %35 ], [ %53, %43 ]
  %45 = phi i32 [ 0, %35 ], [ %52, %43 ]
  %46 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef %44) #16
  %47 = load double, ptr %46, align 8, !tbaa !178
  %48 = add i32 %45, %36
  %49 = zext i32 %48 to i64
  %50 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %49) #16
  %51 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %50, i32 noundef %26) #14
  store double %47, ptr %51, align 8, !tbaa !178
  %52 = add i32 %45, 1
  %53 = zext i32 %52 to i64
  %54 = call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %10) #16
  %55 = icmp ugt i64 %54, %53
  br i1 %55, label %43, label %37, !llvm.loop !207

56:                                               ; preds = %61, %37
  %57 = call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %19) #16
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %87, label %59

59:                                               ; preds = %56
  %60 = mul nuw nsw i32 %26, %9
  br label %82

61:                                               ; preds = %40, %61
  %62 = phi i64 [ 0, %40 ], [ %79, %61 ]
  %63 = phi i32 [ 0, %40 ], [ %78, %61 ]
  %64 = add i32 %63, %41
  %65 = zext i32 %64 to i64
  %66 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %15, i64 noundef %62) #16
  %67 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %66, i32 noundef 0) #14
  %68 = load double, ptr %67, align 8, !tbaa !178
  %69 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %65) #16
  %70 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi2ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(32) %69, i32 noundef %26) #14
  %71 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %70, i32 noundef %26) #14
  store double %68, ptr %71, align 8, !tbaa !178
  %72 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %15, i64 noundef %62) #16
  %73 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %72, i32 noundef 1) #14
  %74 = load double, ptr %73, align 8, !tbaa !178
  %75 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %65) #16
  %76 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi2ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(32) %75, i32 noundef %26) #14
  %77 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %76, i32 noundef %42) #14
  store double %74, ptr %77, align 8, !tbaa !178
  %78 = add i32 %63, 1
  %79 = zext i32 %78 to i64
  %80 = call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %15) #16
  %81 = icmp ugt i64 %80, %79
  br i1 %81, label %61, label %56, !llvm.loop !208

82:                                               ; preds = %59, %93
  %83 = phi i64 [ 0, %59 ], [ %95, %93 ]
  %84 = phi i32 [ 0, %59 ], [ %94, %93 ]
  %85 = add i32 %84, %60
  %86 = zext i32 %85 to i64
  br label %88

87:                                               ; preds = %93, %56
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #15
  br i1 %25, label %24, label %23, !llvm.loop !209

88:                                               ; preds = %82, %98
  %89 = phi i1 [ true, %82 ], [ false, %98 ]
  %90 = phi i32 [ 0, %82 ], [ 1, %98 ]
  %91 = add nuw nsw i32 %90, %26
  %92 = and i32 %91, 1
  br label %99

93:                                               ; preds = %98
  %94 = add i32 %84, 1
  %95 = zext i32 %94 to i64
  %96 = call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %19) #16
  %97 = icmp ugt i64 %96, %95
  br i1 %97, label %82, label %87, !llvm.loop !210

98:                                               ; preds = %99
  br i1 %89, label %88, label %93, !llvm.loop !211

99:                                               ; preds = %88, %99
  %100 = phi i1 [ true, %88 ], [ false, %99 ]
  %101 = phi i32 [ 0, %88 ], [ 1, %99 ]
  %102 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %19, i64 noundef %83) #16
  %103 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi2ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(32) %102, i32 noundef %90) #14
  %104 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %103, i32 noundef %101) #14
  %105 = load double, ptr %104, align 8, !tbaa !178
  %106 = call noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt6vectorIN6dealii6TensorILi3ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %86) #16
  %107 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN6dealii6TensorILi3ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(64) %106, i32 noundef %26) #14
  %108 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi2ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(32) %107, i32 noundef %92) #14
  %109 = add nuw nsw i32 %101, %26
  %110 = and i32 %109, 1
  %111 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %108, i32 noundef %110) #14
  store double %105, ptr %111, align 8, !tbaa !178
  br i1 %100, label %99, label %98, !llvm.loop !212
}

; Function Attrs: optsize
declare noundef i32 @_ZNK6dealii22AnisotropicPolynomialsILi2EE1nEv(ptr noundef nonnull align 8 dereferenceable(28)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !142 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !206
  %4 = load ptr, ptr %0, align 8, !tbaa !205
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
  %11 = load ptr, ptr %0, align 8, !tbaa !205
  %12 = getelementptr inbounds %"class.dealii::Tensor.46", ptr %11, i64 %1
  tail call void @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE15_M_erase_at_endEPS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %12) #16
  br label %13

13:                                               ; preds = %8, %10, %6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !142 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<2, 2>, std::allocator<dealii::Tensor<2, 2>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !204
  %4 = load ptr, ptr %0, align 8, !tbaa !203
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
  %11 = load ptr, ptr %0, align 8, !tbaa !203
  %12 = getelementptr inbounds %"class.dealii::Tensor.47", ptr %11, i64 %1
  tail call void @_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE15_M_erase_at_endEPS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %12) #16
  br label %13

13:                                               ; preds = %8, %10, %6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi3ELi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !142 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<3, 2>, std::allocator<dealii::Tensor<3, 2>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !213
  %4 = load ptr, ptr %0, align 8, !tbaa !215
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 6
  ret i64 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii5PointILi2EEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 !prof !216 {
  tail call void @_ZN6dealii6TensorILi1ELi2EEC2Eb(ptr noundef nonnull align 8 dereferenceable(16) %0, i1 noundef zeroext true) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !217 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [2 x double], ptr %0, i64 0, i64 %3
  %5 = load double, ptr %4, align 8, !tbaa !178
  ret double %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !218 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [2 x double], ptr %0, i64 0, i64 %3
  ret ptr %4
}

; Function Attrs: optsize
declare void @_ZNK6dealii22AnisotropicPolynomialsILi2EE7computeERKNS_5PointILi2EEERSt6vectorIdSaIdEERS6_INS_6TensorILi1ELi2EEESaISB_EERS6_INSA_ILi2ELi2EEESaISF_EE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !142 {
  %3 = load ptr, ptr %0, align 8, !tbaa !205
  %4 = getelementptr inbounds %"class.dealii::Tensor.46", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !219 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [2 x double], ptr %0, i64 0, i64 %3
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !142 {
  %3 = load ptr, ptr %0, align 8, !tbaa !203
  %4 = getelementptr inbounds %"class.dealii::Tensor.47", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi2ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !142 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [2 x %"class.dealii::Tensor.46"], ptr %0, i64 0, i64 %3
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt6vectorIN6dealii6TensorILi3ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !142 {
  %3 = load ptr, ptr %0, align 8, !tbaa !215
  %4 = getelementptr inbounds %"class.dealii::Tensor.48", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN6dealii6TensorILi3ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !142 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [2 x %"class.dealii::Tensor.47"], ptr %0, i64 0, i64 %3
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii14PolynomialsABFILi2EE1nEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #5 comdat align 2 !prof !142 {
  %2 = getelementptr inbounds %"class.dealii::PolynomialsABF.27", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !201
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii14PolynomialsABFILi2EE6degreeEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #5 comdat align 2 !prof !142 {
  %2 = load i32, ptr %0, align 8, !tbaa !191
  ret i32 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii14PolynomialsABFILi3EEC2Ej(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %1) unnamed_addr #4 comdat($_ZN6dealii14PolynomialsABFILi3EEC5Ej) align 2 personality ptr @__gxx_personality_v0 !prof !142 {
  %3 = alloca %"class.std::vector.10", align 8
  %4 = alloca %"class.std::allocator.12", align 1
  %5 = alloca %"class.std::vector.15", align 8
  %6 = alloca %"class.std::vector.15", align 8
  %7 = alloca %"class.std::vector.15", align 8
  store i32 %1, ptr %0, align 8, !tbaa !220
  %8 = getelementptr inbounds %"class.dealii::PolynomialsABF.49", ptr %0, i64 0, i32 2
  %9 = tail call noundef i32 @_ZN6dealii14PolynomialsABFILi3EE14compute_n_polsEj(i32 noundef %1) #14
  store i32 %9, ptr %8, align 8, !tbaa !230
  %10 = getelementptr inbounds %"class.dealii::PolynomialsABF.49", ptr %0, i64 0, i32 3
  tail call void @_ZNSt6vectorIdSaIdEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %10) #16
  %11 = getelementptr inbounds %"class.dealii::PolynomialsABF.49", ptr %0, i64 0, i32 4
  tail call void @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %11) #16
  %12 = getelementptr inbounds %"class.dealii::PolynomialsABF.49", ptr %0, i64 0, i32 5
  tail call void @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %12) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #15
  call void @_ZNSaISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #16
  invoke void @_ZNSt6vectorIS_IN6dealii11Polynomials10PolynomialIdEESaIS3_EESaIS5_EEC2EmRKS6_(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 3, ptr noundef nonnull align 1 dereferenceable(1) %4) #14
          to label %13 unwind label %19

13:                                               ; preds = %2
  call void @_ZNSt15__new_allocatorISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #15
  %14 = add i32 %1, 2
  invoke void @_ZN6dealii11Polynomials19LagrangeEquidistant23generate_complete_basisEj(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.15") align 8 %5, i32 noundef %14) #14
          to label %15 unwind label %21

15:                                               ; preds = %13
  %16 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii11Polynomials10PolynomialIdEESaIS3_EESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 0) #16
  %17 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEaSEOS5_(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %5) #16
  call void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  %18 = icmp eq i32 %1, 0
  br i1 %18, label %23, label %32

19:                                               ; preds = %2
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  br label %52

21:                                               ; preds = %13
  %22 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  br label %50

23:                                               ; preds = %15, %25
  %24 = phi i64 [ %28, %25 ], [ 1, %15 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #15
  invoke void @_ZN6dealii11Polynomials8Legendre23generate_complete_basisEj(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.15") align 8 %6, i32 noundef 0) #14
          to label %25 unwind label %30

25:                                               ; preds = %23
  %26 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii11Polynomials10PolynomialIdEESaIS3_EESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %24) #16
  %27 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEaSEOS5_(ptr noundef nonnull align 8 dereferenceable(24) %26, ptr noundef nonnull align 8 dereferenceable(24) %6) #16
  call void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #15
  %28 = add nuw nsw i64 %24, 1
  %29 = icmp eq i64 %28, 3
  br i1 %29, label %41, label %23, !llvm.loop !231

30:                                               ; preds = %23
  %31 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #15
  br label %50

32:                                               ; preds = %15, %34
  %33 = phi i64 [ %37, %34 ], [ 1, %15 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #15
  invoke void @_ZN6dealii11Polynomials19LagrangeEquidistant23generate_complete_basisEj(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.15") align 8 %7, i32 noundef %1) #14
          to label %34 unwind label %39

34:                                               ; preds = %32
  %35 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii11Polynomials10PolynomialIdEESaIS3_EESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %33) #16
  %36 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEaSEOS5_(ptr noundef nonnull align 8 dereferenceable(24) %35, ptr noundef nonnull align 8 dereferenceable(24) %7) #16
  call void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #15
  %37 = add nuw nsw i64 %33, 1
  %38 = icmp eq i64 %37, 3
  br i1 %38, label %41, label %32, !llvm.loop !232

39:                                               ; preds = %32
  %40 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #15
  br label %50

41:                                               ; preds = %34, %25
  %42 = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #17
          to label %43 unwind label %46

43:                                               ; preds = %41
  invoke void @_ZN6dealii22AnisotropicPolynomialsILi3EEC1ERKSt6vectorIS2_INS_11Polynomials10PolynomialIdEESaIS5_EESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(28) %42, ptr noundef nonnull align 8 dereferenceable(24) %3) #14
          to label %44 unwind label %48

44:                                               ; preds = %43
  %45 = getelementptr inbounds %"class.dealii::PolynomialsABF.49", ptr %0, i64 0, i32 1
  store ptr %42, ptr %45, align 8, !tbaa !233
  call void @_ZNSt6vectorIS_IN6dealii11Polynomials10PolynomialIdEESaIS3_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  ret void

46:                                               ; preds = %41
  %47 = landingpad { ptr, i32 }
          cleanup
  br label %50

48:                                               ; preds = %43
  %49 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %42) #18
  br label %50

50:                                               ; preds = %48, %46, %39, %30, %21
  %51 = phi { ptr, i32 } [ %31, %30 ], [ %49, %48 ], [ %47, %46 ], [ %40, %39 ], [ %22, %21 ]
  call void @_ZNSt6vectorIS_IN6dealii11Polynomials10PolynomialIdEESaIS3_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #16
  br label %52

52:                                               ; preds = %50, %19
  %53 = phi { ptr, i32 } [ %51, %50 ], [ %20, %19 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  call void @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %12) #16
  call void @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %11) #16
  call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %10) #16
  resume { ptr, i32 } %53
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef i32 @_ZN6dealii14PolynomialsABFILi3EE14compute_n_polsEj(i32 noundef %0) local_unnamed_addr #5 comdat align 2 !prof !142 {
  %2 = add i32 %0, 1
  %3 = mul i32 %2, 3
  %4 = mul i32 %3, %2
  %5 = add i32 %0, 2
  %6 = mul i32 %4, %5
  ret i32 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !234 {
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !235 {
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: optsize
declare void @_ZN6dealii22AnisotropicPolynomialsILi3EEC1ERKSt6vectorIS2_INS_11Polynomials10PolynomialIdEESaIS5_EESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !236 {
  %2 = load ptr, ptr %0, align 8, !tbaa !237
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<2, 3>, std::allocator<dealii::Tensor<2, 3>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !238
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
  tail call void @__clang_call_terminate(ptr %9) #19
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !239 {
  %2 = load ptr, ptr %0, align 8, !tbaa !240
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !241
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
  tail call void @__clang_call_terminate(ptr %9) #19
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii14PolynomialsABFILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #5 comdat($_ZN6dealii14PolynomialsABFILi3EED5Ev) align 2 !prof !142 {
  %2 = getelementptr inbounds %"class.dealii::PolynomialsABF.49", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !233
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZN6dealii22AnisotropicPolynomialsILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(28) %3) #16
  tail call void @_ZdlPv(ptr noundef nonnull %3) #18
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %"class.dealii::PolynomialsABF.49", ptr %0, i64 0, i32 5
  tail call void @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #16
  %8 = getelementptr inbounds %"class.dealii::PolynomialsABF.49", ptr %0, i64 0, i32 4
  tail call void @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #16
  %9 = getelementptr inbounds %"class.dealii::PolynomialsABF.49", ptr %0, i64 0, i32 3
  tail call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii22AnisotropicPolynomialsILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZNSt6vectorIS_IN6dealii11Polynomials10PolynomialIdEESaIS3_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii14PolynomialsABFILi3EE7computeERKNS_5PointILi3EEERSt6vectorINS_6TensorILi1ELi3EEESaIS8_EERS6_INS7_ILi2ELi3EEESaISC_EERS6_INS7_ILi3ELi3EEESaISG_EE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #4 comdat align 2 !prof !142 {
  %6 = alloca %"class.dealii::Point.67", align 8
  %7 = getelementptr inbounds %"class.dealii::PolynomialsABF.49", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !233
  %9 = tail call noundef i32 @_ZNK6dealii22AnisotropicPolynomialsILi3EE1nEv(ptr noundef nonnull align 8 dereferenceable(28) %8) #14
  %10 = getelementptr inbounds %"class.dealii::PolynomialsABF.49", ptr %0, i64 0, i32 3
  %11 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #16
  %12 = icmp eq i64 %11, 0
  %13 = zext i32 %9 to i64
  %14 = select i1 %12, i64 0, i64 %13
  tail call void @_ZNSt6vectorIdSaIdEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef %14) #14
  %15 = getelementptr inbounds %"class.dealii::PolynomialsABF.49", ptr %0, i64 0, i32 4
  %16 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #16
  %17 = icmp eq i64 %16, 0
  %18 = select i1 %17, i64 0, i64 %13
  tail call void @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %15, i64 noundef %18) #14
  %19 = getelementptr inbounds %"class.dealii::PolynomialsABF.49", ptr %0, i64 0, i32 5
  %20 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi3ELi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #16
  %21 = icmp eq i64 %20, 0
  %22 = select i1 %21, i64 0, i64 %13
  tail call void @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %19, i64 noundef %22) #14
  br label %24

23:                                               ; preds = %90
  ret void

24:                                               ; preds = %5, %90
  %25 = phi i32 [ 0, %5 ], [ %91, %90 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #15
  call void @_ZN6dealii5PointILi3EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #14
  br label %32

26:                                               ; preds = %32
  %27 = load ptr, ptr %7, align 8, !tbaa !233
  call void @_ZNK6dealii22AnisotropicPolynomialsILi3EE7computeERKNS_5PointILi3EEERSt6vectorIdSaIdEERS6_INS_6TensorILi1ELi3EEESaISB_EERS6_INSA_ILi2ELi3EEESaISF_EE(ptr noundef nonnull align 8 dereferenceable(28) %27, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %19) #14
  %28 = call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %10) #16
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %26
  %31 = mul i32 %25, %9
  br label %45

32:                                               ; preds = %24, %32
  %33 = phi i32 [ 0, %24 ], [ %38, %32 ]
  %34 = add nuw nsw i32 %33, %25
  %35 = urem i32 %34, 3
  %36 = call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %35) #14
  %37 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef %33) #14
  store double %36, ptr %37, align 8, !tbaa !178
  %38 = add nuw nsw i32 %33, 1
  %39 = icmp eq i32 %38, 3
  br i1 %39, label %26, label %32, !llvm.loop !242

40:                                               ; preds = %45, %26
  %41 = call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %15) #16
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %58, label %43

43:                                               ; preds = %40
  %44 = mul i32 %25, %9
  br label %63

45:                                               ; preds = %30, %45
  %46 = phi i64 [ 0, %30 ], [ %55, %45 ]
  %47 = phi i32 [ 0, %30 ], [ %54, %45 ]
  %48 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef %46) #16
  %49 = load double, ptr %48, align 8, !tbaa !178
  %50 = add i32 %47, %31
  %51 = zext i32 %50 to i64
  %52 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %51) #16
  %53 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %52, i32 noundef %25) #14
  store double %49, ptr %53, align 8, !tbaa !178
  %54 = add i32 %47, 1
  %55 = zext i32 %54 to i64
  %56 = call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %10) #16
  %57 = icmp ugt i64 %56, %55
  br i1 %57, label %45, label %40, !llvm.loop !243

58:                                               ; preds = %68, %40
  %59 = call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %19) #16
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %90, label %61

61:                                               ; preds = %58
  %62 = mul i32 %25, %9
  br label %85

63:                                               ; preds = %43, %68
  %64 = phi i64 [ 0, %43 ], [ %70, %68 ]
  %65 = phi i32 [ 0, %43 ], [ %69, %68 ]
  %66 = add i32 %65, %44
  %67 = zext i32 %66 to i64
  br label %73

68:                                               ; preds = %73
  %69 = add i32 %65, 1
  %70 = zext i32 %69 to i64
  %71 = call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %15) #16
  %72 = icmp ugt i64 %71, %70
  br i1 %72, label %63, label %58, !llvm.loop !244

73:                                               ; preds = %63, %73
  %74 = phi i32 [ 0, %63 ], [ %83, %73 ]
  %75 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %15, i64 noundef %64) #16
  %76 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %75, i32 noundef %74) #14
  %77 = load double, ptr %76, align 8, !tbaa !178
  %78 = call noundef nonnull align 8 dereferenceable(72) ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %67) #16
  %79 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi2ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(72) %78, i32 noundef %25) #14
  %80 = add nuw nsw i32 %74, %25
  %81 = urem i32 %80, 3
  %82 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %79, i32 noundef %81) #14
  store double %77, ptr %82, align 8, !tbaa !178
  %83 = add nuw nsw i32 %74, 1
  %84 = icmp eq i32 %83, 3
  br i1 %84, label %68, label %73, !llvm.loop !245

85:                                               ; preds = %61, %97
  %86 = phi i64 [ 0, %61 ], [ %99, %97 ]
  %87 = phi i32 [ 0, %61 ], [ %98, %97 ]
  %88 = add i32 %87, %62
  %89 = zext i32 %88 to i64
  br label %93

90:                                               ; preds = %97, %58
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #15
  %91 = add nuw nsw i32 %25, 1
  %92 = icmp eq i32 %91, 3
  br i1 %92, label %23, label %24, !llvm.loop !246

93:                                               ; preds = %85, %102
  %94 = phi i32 [ 0, %85 ], [ %103, %102 ]
  %95 = add nuw nsw i32 %94, %25
  %96 = urem i32 %95, 3
  br label %105

97:                                               ; preds = %102
  %98 = add i32 %87, 1
  %99 = zext i32 %98 to i64
  %100 = call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %19) #16
  %101 = icmp ugt i64 %100, %99
  br i1 %101, label %85, label %90, !llvm.loop !247

102:                                              ; preds = %105
  %103 = add nuw nsw i32 %94, 1
  %104 = icmp eq i32 %103, 3
  br i1 %104, label %97, label %93, !llvm.loop !248

105:                                              ; preds = %93, %105
  %106 = phi i32 [ 0, %93 ], [ %117, %105 ]
  %107 = call noundef nonnull align 8 dereferenceable(72) ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %19, i64 noundef %86) #16
  %108 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi2ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(72) %107, i32 noundef %94) #14
  %109 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %108, i32 noundef %106) #14
  %110 = load double, ptr %109, align 8, !tbaa !178
  %111 = call noundef nonnull align 8 dereferenceable(216) ptr @_ZNSt6vectorIN6dealii6TensorILi3ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %89) #16
  %112 = call noundef nonnull align 8 dereferenceable(72) ptr @_ZN6dealii6TensorILi3ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(216) %111, i32 noundef %25) #14
  %113 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi2ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(72) %112, i32 noundef %96) #14
  %114 = add nuw nsw i32 %106, %25
  %115 = urem i32 %114, 3
  %116 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %113, i32 noundef %115) #14
  store double %110, ptr %116, align 8, !tbaa !178
  %117 = add nuw nsw i32 %106, 1
  %118 = icmp eq i32 %117, 3
  br i1 %118, label %102, label %105, !llvm.loop !249
}

; Function Attrs: optsize
declare noundef i32 @_ZNK6dealii22AnisotropicPolynomialsILi3EE1nEv(ptr noundef nonnull align 8 dereferenceable(28)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !250 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !241
  %4 = load ptr, ptr %0, align 8, !tbaa !240
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
  %11 = load ptr, ptr %0, align 8, !tbaa !240
  %12 = getelementptr inbounds %"class.dealii::Tensor.68", ptr %11, i64 %1
  tail call void @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE15_M_erase_at_endEPS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %12) #16
  br label %13

13:                                               ; preds = %8, %10, %6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !251 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<2, 3>, std::allocator<dealii::Tensor<2, 3>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !238
  %4 = load ptr, ptr %0, align 8, !tbaa !237
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
  %11 = load ptr, ptr %0, align 8, !tbaa !237
  %12 = getelementptr inbounds %"class.dealii::Tensor.69", ptr %11, i64 %1
  tail call void @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE15_M_erase_at_endEPS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %12) #16
  br label %13

13:                                               ; preds = %8, %10, %6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi3ELi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !142 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<3, 3>, std::allocator<dealii::Tensor<3, 3>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !252
  %4 = load ptr, ptr %0, align 8, !tbaa !254
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 216
  ret i64 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii5PointILi3EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !255 {
  tail call void @_ZN6dealii6TensorILi1ELi3EEC2Eb(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext true) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !256 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 %3
  %5 = load double, ptr %4, align 8, !tbaa !178
  ret double %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !257 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 %3
  ret ptr %4
}

; Function Attrs: optsize
declare void @_ZNK6dealii22AnisotropicPolynomialsILi3EE7computeERKNS_5PointILi3EEERSt6vectorIdSaIdEERS6_INS_6TensorILi1ELi3EEESaISB_EERS6_INSA_ILi2ELi3EEESaISF_EE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !258 {
  %3 = load ptr, ptr %0, align 8, !tbaa !240
  %4 = getelementptr inbounds %"class.dealii::Tensor.68", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !259 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 %3
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(72) ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !260 {
  %3 = load ptr, ptr %0, align 8, !tbaa !237
  %4 = getelementptr inbounds %"class.dealii::Tensor.69", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi2ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !261 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [3 x %"class.dealii::Tensor.68"], ptr %0, i64 0, i64 %3
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(216) ptr @_ZNSt6vectorIN6dealii6TensorILi3ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !142 {
  %3 = load ptr, ptr %0, align 8, !tbaa !254
  %4 = getelementptr inbounds %"class.dealii::Tensor.70", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(72) ptr @_ZN6dealii6TensorILi3ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !142 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [3 x %"class.dealii::Tensor.69"], ptr %0, i64 0, i64 %3
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii14PolynomialsABFILi3EE1nEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #5 comdat align 2 !prof !142 {
  %2 = getelementptr inbounds %"class.dealii::PolynomialsABF.49", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !230
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii14PolynomialsABFILi3EE6degreeEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #5 comdat align 2 !prof !142 {
  %2 = load i32, ptr %0, align 8, !tbaa !220
  ret i32 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIdSaIdEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !163 {
  tail call void @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !163 {
  tail call void @_ZNSaIdEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  tail call void @_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIdEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !262 {
  tail call void @_ZNSt15__new_allocatorIdEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !263 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIdEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !264 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !142 {
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !142 {
  tail call void @_ZNSaIN6dealii6TensorILi1ELi1EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIN6dealii6TensorILi1ELi1EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !142 {
  tail call void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi1EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !142 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi1EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !142 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !142 {
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !142 {
  tail call void @_ZNSaIN6dealii6TensorILi2ELi1EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIN6dealii6TensorILi2ELi1EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !142 {
  tail call void @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi1EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !142 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi1EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !142 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !142 {
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !142 {
  tail call void @_ZNSaIN6dealii6TensorILi1ELi2EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIN6dealii6TensorILi1ELi2EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !142 {
  tail call void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !142 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !142 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !142 {
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !142 {
  tail call void @_ZNSaIN6dealii6TensorILi2ELi2EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIN6dealii6TensorILi2ELi2EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !142 {
  tail call void @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi2EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !142 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi2EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !142 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !234 {
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !234 {
  tail call void @_ZNSaIN6dealii6TensorILi1ELi3EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIN6dealii6TensorILi1ELi3EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !265 {
  tail call void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !239 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !265 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !235 {
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !235 {
  tail call void @_ZNSaIN6dealii6TensorILi2ELi3EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIN6dealii6TensorILi2ELi3EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !266 {
  tail call void @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi3EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !236 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi3EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !266 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !142 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPddEvT_S1_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat !prof !267 {
  tail call void @_ZSt8_DestroyIPdEvT_S1_(ptr noundef %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !268 {
  ret ptr %0
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #15
  tail call void @_ZSt9terminatev() #19
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !175 {
  %2 = load ptr, ptr %0, align 8, !tbaa !176
  %3 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !269
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
  tail call void @__clang_call_terminate(ptr %12) #19
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPdEvT_S1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat !prof !267 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_(ptr noundef %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !267 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 !prof !267 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !270

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #14
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !271 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorIdE10deallocateEPdm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIdE10deallocateEPdm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN6dealii6TensorILi1ELi1EEES2_EvT_S4_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat !prof !142 {
  tail call void @_ZSt8_DestroyIPN6dealii6TensorILi1ELi1EEEEvT_S4_(ptr noundef %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !142 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !142 {
  %2 = load ptr, ptr %0, align 8, !tbaa !173
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 1>, std::allocator<dealii::Tensor<1, 1>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !272
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
  tail call void @__clang_call_terminate(ptr %12) #19
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN6dealii6TensorILi1ELi1EEEEvT_S4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat !prof !142 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii6TensorILi1ELi1EEEEEvT_S6_(ptr noundef %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii6TensorILi1ELi1EEEEEvT_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !142 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 !prof !142 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi1EEEEE10deallocateERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #14
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi1EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !142 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi1EEEEE10deallocateERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi1EEEE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi1EEEE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN6dealii6TensorILi2ELi1EEES2_EvT_S4_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat !prof !142 {
  tail call void @_ZSt8_DestroyIPN6dealii6TensorILi2ELi1EEEEvT_S4_(ptr noundef %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !142 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !142 {
  %2 = load ptr, ptr %0, align 8, !tbaa !171
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<2, 1>, std::allocator<dealii::Tensor<2, 1>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !273
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
  tail call void @__clang_call_terminate(ptr %12) #19
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN6dealii6TensorILi2ELi1EEEEvT_S4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat !prof !142 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii6TensorILi2ELi1EEEEEvT_S6_(ptr noundef %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii6TensorILi2ELi1EEEEEvT_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !142 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 !prof !142 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIN6dealii6TensorILi2ELi1EEEEE10deallocateERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #14
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi1EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !142 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN6dealii6TensorILi2ELi1EEEEE10deallocateERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi1EEEE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi1EEEE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIS_IN6dealii11Polynomials10PolynomialIdEESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_(i64 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #4 comdat align 2 !prof !142 {
  %3 = alloca %"class.std::allocator.12", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #15
  call void @_ZNSaISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEEC2ERKS6_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  %4 = call noundef i64 @_ZNSt6vectorIS_IN6dealii11Polynomials10PolynomialIdEESaIS3_EESaIS5_EE11_S_max_sizeERKS6_(ptr noundef nonnull align 1 dereferenceable(1) %3) #16
  %5 = icmp ult i64 %4, %0
  call void @_ZNSt15__new_allocatorISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #15
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #20
  unreachable

7:                                                ; preds = %2
  ret i64 %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EESaIS6_EEC2EmRKS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !142 {
  tail call void @_ZNSt12_Vector_baseISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EESaIS6_EE12_Vector_implC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %2) #16
  invoke void @_ZNSt12_Vector_baseISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EESaIS6_EE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #14
          to label %4 unwind label %5

4:                                                ; preds = %3
  ret void

5:                                                ; preds = %3
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt15__new_allocatorISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIS_IN6dealii11Polynomials10PolynomialIdEESaIS3_EESaIS5_EE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !164
  %4 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EESaIS6_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %5 = tail call noundef ptr @_ZSt27__uninitialized_default_n_aIPSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EEmS6_ET_S8_T0_RSaIT1_E(ptr noundef %3, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %4) #14
  %6 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<dealii::Polynomials::Polynomial<double>>, std::allocator<std::vector<dealii::Polynomials::Polynomial<double>>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %5, ptr %6, align 8, !tbaa !170
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !142 {
  %2 = load ptr, ptr %0, align 8, !tbaa !164
  %3 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<dealii::Polynomials::Polynomial<double>>, std::allocator<std::vector<dealii::Polynomials::Polynomial<double>>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !274
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 24
  invoke void @_ZNSt12_Vector_baseISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EESaIS6_EE13_M_deallocateEPS6_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #14
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #19
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIS_IN6dealii11Polynomials10PolynomialIdEESaIS3_EESaIS5_EE11_S_max_sizeERKS6_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !142 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  store i64 384307168202282325, ptr %2, align 8, !tbaa !275
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %4 = tail call noundef i64 @_ZNSt16allocator_traitsISaISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EEEE8max_sizeERKS7_(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  store i64 %4, ptr %3, align 8, !tbaa !275
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #14
  %6 = load i64, ptr %5, align 8, !tbaa !275
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEEC2ERKS6_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 !prof !142 {
  tail call void @_ZNSt15__new_allocatorISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EEEC2ERKS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  ret void
}

; Function Attrs: noreturn optsize
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EEEE8max_sizeERKS7_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #5 comdat align 2 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat !prof !277 {
  %3 = load i64, ptr %1, align 8, !tbaa !275
  %4 = load i64, ptr %0, align 8, !tbaa !275
  %5 = icmp ult i64 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0, !prof !278
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #5 comdat align 2 !prof !142 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #5 comdat align 2 !prof !142 {
  ret i64 384307168202282325
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EEEC2ERKS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 !prof !142 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EESaIS6_EE12_Vector_implC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 !prof !142 {
  tail call void @_ZNSaISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEEC2ERKS6_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  tail call void @_ZNSt12_Vector_baseISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EESaIS6_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EESaIS6_EE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !142 {
  %3 = tail call noundef ptr @_ZNSt12_Vector_baseISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EESaIS6_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #14
  store ptr %3, ptr %0, align 8, !tbaa !164
  %4 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<dealii::Polynomials::Polynomial<double>>, std::allocator<std::vector<dealii::Polynomials::Polynomial<double>>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !170
  %5 = getelementptr inbounds %"class.std::vector.15", ptr %3, i64 %1
  %6 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<dealii::Polynomials::Polynomial<double>>, std::allocator<std::vector<dealii::Polynomials::Polynomial<double>>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !274
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !142 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EESaIS6_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !142 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EESaIS6_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !142 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EEEE8allocateERS7_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #14
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EEEE8allocateERS7_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #14
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !279

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 768614336404564650
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

10:                                               ; preds = %3
  %11 = mul i64 %1, 24
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #17
  ret ptr %12
}

; Function Attrs: noreturn optsize
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #10

; Function Attrs: noreturn optsize
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #10

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__uninitialized_default_n_aIPSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EEmS6_ET_S8_T0_RSaIT1_E(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat {
  %4 = tail call noundef ptr @_ZSt25__uninitialized_default_nIPSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EEmET_S8_T0_(ptr noundef %0, i64 noundef %1) #14
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EESaIS6_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !142 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt25__uninitialized_default_nIPSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EEmET_S8_T0_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #4 comdat {
  %3 = tail call noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS6_EEmEET_SA_T0_(ptr noundef %0, i64 noundef %1) #14
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS6_EEmEET_SA_T0_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %8, %4 ], [ %0, %2 ]
  %6 = phi i64 [ %7, %4 ], [ %1, %2 ]
  tail call void @_ZSt10_ConstructISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EEJEEvPT_DpOT0_(ptr noundef %5) #14
  %7 = add i64 %6, -1
  %8 = getelementptr inbounds %"class.std::vector.15", ptr %5, i64 1
  %9 = icmp eq i64 %7, 0
  br i1 %9, label %10, label %4, !llvm.loop !280

10:                                               ; preds = %4, %2
  %11 = phi ptr [ %0, %2 ], [ %8, %4 ]
  ret ptr %11
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EEJEEvPT_DpOT0_(ptr noundef %0) local_unnamed_addr #5 comdat {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  tail call void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EEEvT_S8_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat !prof !142 {
  tail call void @_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS6_EEEEvT_SA_(ptr noundef %0, ptr noundef %1) #14
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !281 {
  tail call void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !281 {
  tail call void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !281 {
  tail call void @_ZNSaIN6dealii11Polynomials10PolynomialIdEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  tail call void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIN6dealii11Polynomials10PolynomialIdEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !282 {
  tail call void @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !282 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS6_EEEEvT_SA_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !142 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZSt8_DestroyISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EEEvPT_(ptr noundef %5) #14
  %6 = getelementptr inbounds %"class.std::vector.15", ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !llvm.loop !283

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EEEvPT_(ptr noundef %0) local_unnamed_addr #5 comdat !prof !142 {
  tail call void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EESaIS6_EE13_M_deallocateEPS6_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 !prof !142 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EEEE10deallocateERS7_PS6_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #14
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EEEE10deallocateERS7_PS6_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EEE10deallocateEPS6_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EEE10deallocateEPS6_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EES6_EvT_S8_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat !prof !142 {
  tail call void @_ZSt8_DestroyIPSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EEEvT_S8_(ptr noundef %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN6dealii11Polynomials10PolynomialIdEES3_EvT_S5_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat !prof !284 {
  tail call void @_ZSt8_DestroyIPN6dealii11Polynomials10PolynomialIdEEEvT_S5_(ptr noundef %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !285 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !166 {
  %2 = load ptr, ptr %0, align 8, !tbaa !167
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !286
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
  tail call void @__clang_call_terminate(ptr %12) #19
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN6dealii11Polynomials10PolynomialIdEEEvT_S5_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat !prof !284 {
  tail call void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN6dealii11Polynomials10PolynomialIdEEEEvT_S7_(ptr noundef %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN6dealii11Polynomials10PolynomialIdEEEEvT_S7_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !284 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !287

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZSt8_DestroyIN6dealii11Polynomials10PolynomialIdEEEvPT_(ptr noundef %5) #14
  %6 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !288, !llvm.loop !289

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIN6dealii11Polynomials10PolynomialIdEEEvPT_(ptr noundef %0) local_unnamed_addr #5 comdat !prof !290 {
  %2 = load ptr, ptr %0, align 8, !tbaa !291
  %3 = load ptr, ptr %2, align 8
  tail call void %3(ptr noundef nonnull align 8 dereferenceable(96) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE13_M_deallocateEPS3_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 !prof !284 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !293

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIN6dealii11Polynomials10PolynomialIdEEEE10deallocateERS4_PS3_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #14
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN6dealii11Polynomials10PolynomialIdEEEE10deallocateERS4_PS3_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEE10deallocateEPS3_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEE10deallocateEPS3_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE14_M_move_assignEOS5_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::vector.15", align 8
  %4 = alloca %"class.std::allocator.17", align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #15
  call void @_ZNKSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE13get_allocatorEv(ptr dead_on_unwind nonnull writable sret(%"class.std::allocator.17") align 1 %4, ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  call void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) #16
  call void @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  call void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE17_Vector_impl_data12_M_swap_dataERS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  call void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE17_Vector_impl_data12_M_swap_dataERS6_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  %5 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %6 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  call void @_ZSt15__alloc_on_moveISaIN6dealii11Polynomials10PolynomialIdEEEEvRT_S6_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6) #14
  call void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNKSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE13get_allocatorEv(ptr dead_on_unwind noalias writable sret(%"class.std::allocator.17") align 1 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat align 2 {
  %3 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  tail call void @_ZNSaIN6dealii11Polynomials10PolynomialIdEEEC2ERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %3) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 {
  tail call void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !294 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE17_Vector_impl_data12_M_swap_dataERS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat align 2 {
  %3 = alloca %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #16
  call void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE17_Vector_impl_data12_M_copy_dataERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  call void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE17_Vector_impl_data12_M_copy_dataERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  call void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE17_Vector_impl_data12_M_copy_dataERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %3) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt15__alloc_on_moveISaIN6dealii11Polynomials10PolynomialIdEEEEvRT_S6_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #5 comdat {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !295 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIN6dealii11Polynomials10PolynomialIdEEEC2ERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 !prof !296 {
  tail call void @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEEC2ERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEEC2ERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 !prof !296 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 !prof !297 {
  tail call void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE12_Vector_implC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE12_Vector_implC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 !prof !298 {
  tail call void @_ZNSaIN6dealii11Polynomials10PolynomialIdEEEC2ERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  tail call void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !299 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE17_Vector_impl_data12_M_copy_dataERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat align 2 {
  %3 = load <2 x ptr>, ptr %1, align 8, !tbaa !300
  store <2 x ptr> %3, ptr %0, align 8, !tbaa !300
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !286
  %6 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !286
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %50, label %4

4:                                                ; preds = %2
  %5 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %6 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !269
  %8 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !177
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
  %21 = load ptr, ptr %8, align 8, !tbaa !177
  %22 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %23 = tail call noundef ptr @_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E(ptr noundef %21, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %22) #14
  store ptr %23, ptr %8, align 8, !tbaa !177
  br label %50

24:                                               ; preds = %4
  %25 = load ptr, ptr %0, align 8, !tbaa !176
  %26 = load ptr, ptr %8, align 8, !tbaa !177
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
  %43 = load ptr, ptr %6, align 8, !tbaa !269
  %44 = ptrtoint ptr %43 to i64
  %45 = ptrtoint ptr %25 to i64
  %46 = sub i64 %44, %45
  %47 = ashr exact i64 %46, 3
  tail call void @_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %25, i64 noundef %47) #14
  store ptr %28, ptr %0, align 8, !tbaa !176
  %48 = getelementptr inbounds double, ptr %29, i64 %1
  store ptr %48, ptr %8, align 8, !tbaa !177
  %49 = getelementptr inbounds double, ptr %28, i64 %27
  store ptr %49, ptr %6, align 8, !tbaa !269
  br label %50

50:                                               ; preds = %20, %40, %2
  ret void

51:                                               ; preds = %37
  %52 = landingpad { ptr, i32 }
          catch ptr null
  %53 = extractvalue { ptr, i32 } %52, 0
  tail call void @__clang_call_terminate(ptr %53) #19
  unreachable

54:                                               ; preds = %36
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !142 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !177
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  invoke void @_ZSt8_DestroyIPddEvT_S1_RSaIT0_E(ptr noundef %1, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %7) #14
          to label %8 unwind label %10

8:                                                ; preds = %6
  store ptr %1, ptr %3, align 8, !tbaa !177
  br label %9

9:                                                ; preds = %8, %2
  ret void

10:                                               ; preds = %6
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #19
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIdSaIdEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !301 {
  %2 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %3 = tail call noundef i64 @_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %2) #16
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat {
  %4 = tail call noundef ptr @_ZSt25__uninitialized_default_nIPdmET_S1_T0_(ptr noundef %0, i64 noundef %1) #14
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 !prof !302 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %1, ptr %4, align 8, !tbaa !275
  %6 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %7 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %8 = sub i64 %6, %7
  %9 = icmp ult i64 %8, %1
  br i1 %9, label %10, label %11, !prof !303

10:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef %2) #20
  unreachable

11:                                               ; preds = %3
  %12 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  %13 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  store i64 %13, ptr %5, align 8, !tbaa !275
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #14
  %15 = load i64, ptr %14, align 8, !tbaa !275
  %16 = add i64 %15, %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  %17 = call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %22, label %19, !prof !303

19:                                               ; preds = %11
  %20 = call noundef i64 @_ZNKSt6vectorIdSaIdEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %21 = icmp ugt i64 %16, %20
  br i1 %21, label %22, label %24, !prof !303

22:                                               ; preds = %19, %11
  %23 = call noundef i64 @_ZNKSt6vectorIdSaIdEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  br label %24

24:                                               ; preds = %19, %22
  %25 = phi i64 [ %23, %22 ], [ %16, %19 ]
  ret i64 %25
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !304 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4, !prof !305

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaIdEE8allocateERS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #14
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #5 comdat align 2 {
  %5 = tail call noundef ptr @_ZSt12__relocate_aIPdS0_SaIdEET0_T_S3_S2_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #16
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #5 comdat align 2 !prof !306 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  store i64 1152921504606846975, ptr %2, align 8, !tbaa !275
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %4 = tail call noundef i64 @_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  store i64 %4, ptr %3, align 8, !tbaa !275
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #14
  %6 = load i64, ptr %5, align 8, !tbaa !275
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !307 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #5 comdat align 2 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIdE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIdE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #5 comdat align 2 !prof !306 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIdE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIdE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #5 comdat align 2 !prof !308 {
  ret i64 1152921504606846975
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
define linkonce_odr dso_local void @_ZSt10_ConstructIdJEEvPT_DpOT0_(ptr noundef %0) local_unnamed_addr #5 comdat {
  store double 0.000000e+00, ptr %0, align 8, !tbaa !178
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt6fill_nIPdmdET_S1_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat !prof !309 {
  %4 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !300
  %5 = tail call noundef i64 @_ZSt17__size_to_integerm(i64 noundef %1) #14
  call void @_ZSt19__iterator_categoryIPdENSt15iterator_traitsIT_E17iterator_categoryERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %4) #14
  %6 = call noundef ptr @_ZSt10__fill_n_aIPdmdET_S1_T0_RKT1_St26random_access_iterator_tag(ptr noundef %0, i64 noundef %5, ptr noundef nonnull align 8 dereferenceable(8) %2) #14
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt10__fill_n_aIPdmdET_S1_T0_RKT1_St26random_access_iterator_tag(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat !prof !309 {
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %7, label %5, !prof !310

5:                                                ; preds = %3
  %6 = getelementptr inbounds double, ptr %0, i64 %1
  tail call void @_ZSt8__fill_aIPddEvT_S1_RKT0_(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull align 8 dereferenceable(8) %2) #14
  br label %7

7:                                                ; preds = %3, %5
  %8 = phi ptr [ %6, %5 ], [ %0, %3 ]
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt17__size_to_integerm(i64 noundef %0) local_unnamed_addr #5 comdat !prof !311 {
  ret i64 %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPdENSt15iterator_traitsIT_E17iterator_categoryERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat !prof !312 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8__fill_aIPddEvT_S1_RKT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat !prof !313 {
  tail call void @_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #5 comdat !prof !314 {
  %4 = load double, ptr %2, align 8, !tbaa !178
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %10, label %6, !prof !315

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  store double %4, ptr %7, align 8, !tbaa !178
  %8 = getelementptr inbounds double, ptr %7, i64 1
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %10, label %6, !prof !316, !llvm.loop !317

10:                                               ; preds = %6, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat !prof !318 {
  %3 = load i64, ptr %0, align 8, !tbaa !275
  %4 = load i64, ptr %1, align 8, !tbaa !275
  %5 = icmp ult i64 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0, !prof !319
  ret ptr %6
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
  br i1 %5, label %6, label %10, !prof !279

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 2305843009213693951
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

10:                                               ; preds = %3
  %11 = shl i64 %1, 3
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #17
  ret ptr %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__relocate_aIPdS0_SaIdEET0_T_S3_S2_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #5 comdat {
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPdET_S1_(ptr noundef %0) #16
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPdET_S1_(ptr noundef %1) #16
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPdET_S1_(ptr noundef %2) #16
  %8 = tail call noundef ptr @_ZSt14__relocate_a_1IddENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull align 1 dereferenceable(1) %3) #16
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__relocate_a_1IddENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #5 comdat {
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

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPdET_S1_(ptr noundef %0) local_unnamed_addr #5 comdat !prof !320 {
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #12

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %61, label %4

4:                                                ; preds = %2
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %6 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 1>, std::allocator<dealii::Tensor<1, 1>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !272
  %8 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 1>, std::allocator<dealii::Tensor<1, 1>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !174
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
  %21 = load ptr, ptr %8, align 8, !tbaa !174
  %22 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %23 = tail call noundef ptr @_ZSt27__uninitialized_default_n_aIPN6dealii6TensorILi1ELi1EEEmS2_ET_S4_T0_RSaIT1_E(ptr noundef %21, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %22) #14
  store ptr %23, ptr %8, align 8, !tbaa !174
  br label %61

24:                                               ; preds = %4
  %25 = load ptr, ptr %0, align 8, !tbaa !173
  %26 = load ptr, ptr %8, align 8, !tbaa !174
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
  %54 = load ptr, ptr %6, align 8, !tbaa !272
  %55 = ptrtoint ptr %54 to i64
  %56 = ptrtoint ptr %25 to i64
  %57 = sub i64 %55, %56
  %58 = ashr exact i64 %57, 3
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %25, i64 noundef %58) #14
  store ptr %28, ptr %0, align 8, !tbaa !173
  %59 = getelementptr inbounds %"class.dealii::Tensor", ptr %29, i64 %1
  store ptr %59, ptr %8, align 8, !tbaa !174
  %60 = getelementptr inbounds %"class.dealii::Tensor", ptr %28, i64 %27
  store ptr %60, ptr %6, align 8, !tbaa !272
  br label %61

61:                                               ; preds = %20, %52, %2
  ret void

62:                                               ; preds = %47
  %63 = landingpad { ptr, i32 }
          catch ptr null
  %64 = extractvalue { ptr, i32 } %63, 0
  tail call void @__clang_call_terminate(ptr %64) #19
  unreachable

65:                                               ; preds = %50
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE15_M_erase_at_endEPS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !142 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 1>, std::allocator<dealii::Tensor<1, 1>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !174
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  invoke void @_ZSt8_DestroyIPN6dealii6TensorILi1ELi1EEES2_EvT_S4_RSaIT0_E(ptr noundef %1, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %7) #14
          to label %8 unwind label %10

8:                                                ; preds = %6
  store ptr %1, ptr %3, align 8, !tbaa !174
  br label %9

9:                                                ; preds = %8, %2
  ret void

10:                                               ; preds = %6
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #19
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !142 {
  %2 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %3 = tail call noundef i64 @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE11_S_max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %2) #16
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__uninitialized_default_n_aIPN6dealii6TensorILi1ELi1EEEmS2_ET_S4_T0_RSaIT1_E(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat {
  %4 = tail call noundef ptr @_ZSt25__uninitialized_default_nIPN6dealii6TensorILi1ELi1EEEmET_S4_T0_(ptr noundef %0, i64 noundef %1) #14
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 !prof !142 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %1, ptr %4, align 8, !tbaa !275
  %6 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %7 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %8 = sub i64 %6, %7
  %9 = icmp ult i64 %8, %1
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef %2) #20
  unreachable

11:                                               ; preds = %3
  %12 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  %13 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  store i64 %13, ptr %5, align 8, !tbaa !275
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #14
  %15 = load i64, ptr %14, align 8, !tbaa !275
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
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !142 {
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
define linkonce_odr dso_local noundef ptr @_ZSt34__uninitialized_move_if_noexcept_aIPN6dealii6TensorILi1ELi1EEES3_SaIS2_EET0_T_S6_S5_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #4 comdat !prof !142 {
  %5 = tail call noundef ptr @_ZSt32__make_move_if_noexcept_iteratorIN6dealii6TensorILi1ELi1EEEPKS2_ET0_PT_(ptr noundef %0) #14
  %6 = tail call noundef ptr @_ZSt32__make_move_if_noexcept_iteratorIN6dealii6TensorILi1ELi1EEEPKS2_ET0_PT_(ptr noundef %1) #14
  %7 = tail call noundef ptr @_ZSt22__uninitialized_copy_aIPKN6dealii6TensorILi1ELi1EEEPS2_S2_ET0_T_S7_S6_RSaIT1_E(ptr noundef %5, ptr noundef %6, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #14
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE11_S_max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #5 comdat align 2 !prof !142 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  store i64 1152921504606846975, ptr %2, align 8, !tbaa !275
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %4 = tail call noundef i64 @_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi1EEEEE8max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  store i64 %4, ptr %3, align 8, !tbaa !275
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #14
  %6 = load i64, ptr %5, align 8, !tbaa !275
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !142 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi1EEEEE8max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #5 comdat align 2 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi1EEEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi1EEEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #5 comdat align 2 !prof !142 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi1EEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi1EEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #5 comdat align 2 !prof !142 {
  ret i64 1152921504606846975
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
  br i1 %10, label %16, label %4, !llvm.loop !321

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
  tail call void @__clang_call_terminate(ptr %23) #19
  unreachable

24:                                               ; preds = %15
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructIN6dealii6TensorILi1ELi1EEEJEEvPT_DpOT0_(ptr noundef %0) local_unnamed_addr #4 comdat {
  tail call void @_ZN6dealii6TensorILi1ELi1EEC2Eb(ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext true) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6TensorILi1ELi1EEC2Eb(ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext %1) unnamed_addr #5 comdat align 2 !prof !322 {
  br i1 %1, label %3, label %4, !prof !323

3:                                                ; preds = %2
  store double 0.000000e+00, ptr %0, align 8, !tbaa !178
  br label %4

4:                                                ; preds = %3, %2
  ret void
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
  br i1 %5, label %6, label %10, !prof !279

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 2305843009213693951
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

10:                                               ; preds = %3
  %11 = shl i64 %1, 3
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #17
  ret ptr %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_copy_aIPKN6dealii6TensorILi1ELi1EEEPS2_S2_ET0_T_S7_S6_RSaIT1_E(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #4 comdat {
  %5 = tail call noundef ptr @_ZSt18uninitialized_copyIPKN6dealii6TensorILi1ELi1EEEPS2_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt32__make_move_if_noexcept_iteratorIN6dealii6TensorILi1ELi1EEEPKS2_ET0_PT_(ptr noundef %0) local_unnamed_addr #5 comdat {
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
  br i1 %11, label %17, label %5, !llvm.loop !324

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
  tail call void @__clang_call_terminate(ptr %24) #19
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
define linkonce_odr dso_local void @_ZN6dealii6TensorILi1ELi1EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 !prof !325 {
  %3 = load double, ptr %1, align 8, !tbaa !178
  store double %3, ptr %0, align 8, !tbaa !178
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %61, label %4

4:                                                ; preds = %2
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %6 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<2, 1>, std::allocator<dealii::Tensor<2, 1>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !273
  %8 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<2, 1>, std::allocator<dealii::Tensor<2, 1>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !172
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
  %21 = load ptr, ptr %8, align 8, !tbaa !172
  %22 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %23 = tail call noundef ptr @_ZSt27__uninitialized_default_n_aIPN6dealii6TensorILi2ELi1EEEmS2_ET_S4_T0_RSaIT1_E(ptr noundef %21, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %22) #14
  store ptr %23, ptr %8, align 8, !tbaa !172
  br label %61

24:                                               ; preds = %4
  %25 = load ptr, ptr %0, align 8, !tbaa !171
  %26 = load ptr, ptr %8, align 8, !tbaa !172
  %27 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull @.str.1) #14
  %28 = tail call noundef ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %27) #14
  %29 = getelementptr inbounds %"class.dealii::Tensor.25", ptr %28, i64 %5
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
  %45 = getelementptr inbounds %"class.dealii::Tensor.25", ptr %29, i64 %1
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
  %54 = load ptr, ptr %6, align 8, !tbaa !273
  %55 = ptrtoint ptr %54 to i64
  %56 = ptrtoint ptr %25 to i64
  %57 = sub i64 %55, %56
  %58 = ashr exact i64 %57, 3
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %25, i64 noundef %58) #14
  store ptr %28, ptr %0, align 8, !tbaa !171
  %59 = getelementptr inbounds %"class.dealii::Tensor.25", ptr %29, i64 %1
  store ptr %59, ptr %8, align 8, !tbaa !172
  %60 = getelementptr inbounds %"class.dealii::Tensor.25", ptr %28, i64 %27
  store ptr %60, ptr %6, align 8, !tbaa !273
  br label %61

61:                                               ; preds = %20, %52, %2
  ret void

62:                                               ; preds = %47
  %63 = landingpad { ptr, i32 }
          catch ptr null
  %64 = extractvalue { ptr, i32 } %63, 0
  tail call void @__clang_call_terminate(ptr %64) #19
  unreachable

65:                                               ; preds = %50
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE15_M_erase_at_endEPS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !142 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<2, 1>, std::allocator<dealii::Tensor<2, 1>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !172
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  invoke void @_ZSt8_DestroyIPN6dealii6TensorILi2ELi1EEES2_EvT_S4_RSaIT0_E(ptr noundef %1, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %7) #14
          to label %8 unwind label %10

8:                                                ; preds = %6
  store ptr %1, ptr %3, align 8, !tbaa !172
  br label %9

9:                                                ; preds = %8, %2
  ret void

10:                                               ; preds = %6
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #19
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !142 {
  %2 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %3 = tail call noundef i64 @_ZNSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE11_S_max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %2) #16
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__uninitialized_default_n_aIPN6dealii6TensorILi2ELi1EEEmS2_ET_S4_T0_RSaIT1_E(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat {
  %4 = tail call noundef ptr @_ZSt25__uninitialized_default_nIPN6dealii6TensorILi2ELi1EEEmET_S4_T0_(ptr noundef %0, i64 noundef %1) #14
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 !prof !142 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %1, ptr %4, align 8, !tbaa !275
  %6 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %7 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %8 = sub i64 %6, %7
  %9 = icmp ult i64 %8, %1
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef %2) #20
  unreachable

11:                                               ; preds = %3
  %12 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  %13 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  store i64 %13, ptr %5, align 8, !tbaa !275
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #14
  %15 = load i64, ptr %14, align 8, !tbaa !275
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
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !142 {
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
define linkonce_odr dso_local noundef ptr @_ZSt34__uninitialized_move_if_noexcept_aIPN6dealii6TensorILi2ELi1EEES3_SaIS2_EET0_T_S6_S5_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #4 comdat !prof !142 {
  %5 = tail call noundef ptr @_ZSt32__make_move_if_noexcept_iteratorIN6dealii6TensorILi2ELi1EEEPKS2_ET0_PT_(ptr noundef %0) #14
  %6 = tail call noundef ptr @_ZSt32__make_move_if_noexcept_iteratorIN6dealii6TensorILi2ELi1EEEPKS2_ET0_PT_(ptr noundef %1) #14
  %7 = tail call noundef ptr @_ZSt22__uninitialized_copy_aIPKN6dealii6TensorILi2ELi1EEEPS2_S2_ET0_T_S7_S6_RSaIT1_E(ptr noundef %5, ptr noundef %6, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #14
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE11_S_max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #5 comdat align 2 !prof !142 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  store i64 1152921504606846975, ptr %2, align 8, !tbaa !275
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %4 = tail call noundef i64 @_ZNSt16allocator_traitsISaIN6dealii6TensorILi2ELi1EEEEE8max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  store i64 %4, ptr %3, align 8, !tbaa !275
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #14
  %6 = load i64, ptr %5, align 8, !tbaa !275
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !142 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaIN6dealii6TensorILi2ELi1EEEEE8max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #5 comdat align 2 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi2ELi1EEEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi2ELi1EEEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #5 comdat align 2 !prof !142 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi2ELi1EEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi2ELi1EEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #5 comdat align 2 !prof !142 {
  ret i64 1152921504606846975
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
  %9 = getelementptr inbounds %"class.dealii::Tensor.25", ptr %5, i64 1
  %10 = icmp eq i64 %8, 0
  br i1 %10, label %16, label %4, !llvm.loop !326

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
  tail call void @__clang_call_terminate(ptr %23) #19
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
define linkonce_odr dso_local void @_ZN6dealii6TensorILi2ELi1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !prof !142 {
  tail call void @_ZN6dealii6TensorILi1ELi1EEC2Eb(ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext true) #14
  ret void
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
  br i1 %5, label %6, label %10, !prof !279

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 2305843009213693951
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

10:                                               ; preds = %3
  %11 = shl i64 %1, 3
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #17
  ret ptr %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_copy_aIPKN6dealii6TensorILi2ELi1EEEPS2_S2_ET0_T_S7_S6_RSaIT1_E(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #4 comdat {
  %5 = tail call noundef ptr @_ZSt18uninitialized_copyIPKN6dealii6TensorILi2ELi1EEEPS2_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt32__make_move_if_noexcept_iteratorIN6dealii6TensorILi2ELi1EEEPKS2_ET0_PT_(ptr noundef %0) local_unnamed_addr #5 comdat {
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
  %9 = getelementptr inbounds %"class.dealii::Tensor.25", ptr %7, i64 1
  %10 = getelementptr inbounds %"class.dealii::Tensor.25", ptr %6, i64 1
  %11 = icmp eq ptr %9, %1
  br i1 %11, label %17, label %5, !llvm.loop !327

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
  tail call void @__clang_call_terminate(ptr %24) #19
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

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN6dealii6TensorILi1ELi2EEES2_EvT_S4_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat !prof !142 {
  tail call void @_ZSt8_DestroyIPN6dealii6TensorILi1ELi2EEEEvT_S4_(ptr noundef %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !142 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !142 {
  %2 = load ptr, ptr %0, align 8, !tbaa !205
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !328
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
  tail call void @__clang_call_terminate(ptr %12) #19
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN6dealii6TensorILi1ELi2EEEEvT_S4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat !prof !142 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii6TensorILi1ELi2EEEEEvT_S6_(ptr noundef %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii6TensorILi1ELi2EEEEEvT_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !142 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 !prof !142 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi2EEEEE10deallocateERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #14
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !142 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi2EEEEE10deallocateERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN6dealii6TensorILi2ELi2EEES2_EvT_S4_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat !prof !142 {
  tail call void @_ZSt8_DestroyIPN6dealii6TensorILi2ELi2EEEEvT_S4_(ptr noundef %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !142 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !142 {
  %2 = load ptr, ptr %0, align 8, !tbaa !203
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<2, 2>, std::allocator<dealii::Tensor<2, 2>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !329
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
  tail call void @__clang_call_terminate(ptr %12) #19
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN6dealii6TensorILi2ELi2EEEEvT_S4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat !prof !142 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii6TensorILi2ELi2EEEEEvT_S6_(ptr noundef %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii6TensorILi2ELi2EEEEEvT_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !142 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 !prof !142 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIN6dealii6TensorILi2ELi2EEEEE10deallocateERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #14
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi2EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !142 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN6dealii6TensorILi2ELi2EEEEE10deallocateERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi2EEEE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi2EEEE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %61, label %4

4:                                                ; preds = %2
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %6 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !328
  %8 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !206
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
  %21 = load ptr, ptr %8, align 8, !tbaa !206
  %22 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %23 = tail call noundef ptr @_ZSt27__uninitialized_default_n_aIPN6dealii6TensorILi1ELi2EEEmS2_ET_S4_T0_RSaIT1_E(ptr noundef %21, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %22) #14
  store ptr %23, ptr %8, align 8, !tbaa !206
  br label %61

24:                                               ; preds = %4
  %25 = load ptr, ptr %0, align 8, !tbaa !205
  %26 = load ptr, ptr %8, align 8, !tbaa !206
  %27 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull @.str.1) #14
  %28 = tail call noundef ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %27) #14
  %29 = getelementptr inbounds %"class.dealii::Tensor.46", ptr %28, i64 %5
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
  %45 = getelementptr inbounds %"class.dealii::Tensor.46", ptr %29, i64 %1
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
  %54 = load ptr, ptr %6, align 8, !tbaa !328
  %55 = ptrtoint ptr %54 to i64
  %56 = ptrtoint ptr %25 to i64
  %57 = sub i64 %55, %56
  %58 = ashr exact i64 %57, 4
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %25, i64 noundef %58) #14
  store ptr %28, ptr %0, align 8, !tbaa !205
  %59 = getelementptr inbounds %"class.dealii::Tensor.46", ptr %29, i64 %1
  store ptr %59, ptr %8, align 8, !tbaa !206
  %60 = getelementptr inbounds %"class.dealii::Tensor.46", ptr %28, i64 %27
  store ptr %60, ptr %6, align 8, !tbaa !328
  br label %61

61:                                               ; preds = %20, %52, %2
  ret void

62:                                               ; preds = %47
  %63 = landingpad { ptr, i32 }
          catch ptr null
  %64 = extractvalue { ptr, i32 } %63, 0
  tail call void @__clang_call_terminate(ptr %64) #19
  unreachable

65:                                               ; preds = %50
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE15_M_erase_at_endEPS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !142 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !206
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  invoke void @_ZSt8_DestroyIPN6dealii6TensorILi1ELi2EEES2_EvT_S4_RSaIT0_E(ptr noundef %1, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %7) #14
          to label %8 unwind label %10

8:                                                ; preds = %6
  store ptr %1, ptr %3, align 8, !tbaa !206
  br label %9

9:                                                ; preds = %8, %2
  ret void

10:                                               ; preds = %6
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #19
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !142 {
  %2 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %3 = tail call noundef i64 @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE11_S_max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %2) #16
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__uninitialized_default_n_aIPN6dealii6TensorILi1ELi2EEEmS2_ET_S4_T0_RSaIT1_E(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat {
  %4 = tail call noundef ptr @_ZSt25__uninitialized_default_nIPN6dealii6TensorILi1ELi2EEEmET_S4_T0_(ptr noundef %0, i64 noundef %1) #14
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 !prof !142 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %1, ptr %4, align 8, !tbaa !275
  %6 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %7 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %8 = sub i64 %6, %7
  %9 = icmp ult i64 %8, %1
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef %2) #20
  unreachable

11:                                               ; preds = %3
  %12 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  %13 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  store i64 %13, ptr %5, align 8, !tbaa !275
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #14
  %15 = load i64, ptr %14, align 8, !tbaa !275
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
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !142 {
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
define linkonce_odr dso_local noundef ptr @_ZSt34__uninitialized_move_if_noexcept_aIPN6dealii6TensorILi1ELi2EEES3_SaIS2_EET0_T_S6_S5_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #4 comdat !prof !142 {
  %5 = tail call noundef ptr @_ZSt32__make_move_if_noexcept_iteratorIN6dealii6TensorILi1ELi2EEEPKS2_ET0_PT_(ptr noundef %0) #14
  %6 = tail call noundef ptr @_ZSt32__make_move_if_noexcept_iteratorIN6dealii6TensorILi1ELi2EEEPKS2_ET0_PT_(ptr noundef %1) #14
  %7 = tail call noundef ptr @_ZSt22__uninitialized_copy_aIPKN6dealii6TensorILi1ELi2EEEPS2_S2_ET0_T_S7_S6_RSaIT1_E(ptr noundef %5, ptr noundef %6, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #14
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE11_S_max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #5 comdat align 2 !prof !142 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  store i64 576460752303423487, ptr %2, align 8, !tbaa !275
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %4 = tail call noundef i64 @_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi2EEEEE8max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  store i64 %4, ptr %3, align 8, !tbaa !275
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #14
  %6 = load i64, ptr %5, align 8, !tbaa !275
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !142 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi2EEEEE8max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #5 comdat align 2 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #5 comdat align 2 !prof !142 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #5 comdat align 2 !prof !142 {
  ret i64 576460752303423487
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
  %9 = getelementptr inbounds %"class.dealii::Tensor.46", ptr %5, i64 1
  %10 = icmp eq i64 %8, 0
  br i1 %10, label %16, label %4, !llvm.loop !330

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
  tail call void @__clang_call_terminate(ptr %23) #19
  unreachable

24:                                               ; preds = %15
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructIN6dealii6TensorILi1ELi2EEEJEEvPT_DpOT0_(ptr noundef %0) local_unnamed_addr #4 comdat {
  tail call void @_ZN6dealii6TensorILi1ELi2EEC2Eb(ptr noundef nonnull align 8 dereferenceable(16) %0, i1 noundef zeroext true) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6TensorILi1ELi2EEC2Eb(ptr noundef nonnull align 8 dereferenceable(16) %0, i1 noundef zeroext %1) unnamed_addr #5 comdat align 2 !prof !331 {
  br i1 %1, label %3, label %4, !prof !332

3:                                                ; preds = %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !tbaa !178
  br label %4

4:                                                ; preds = %3, %2
  ret void
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
  br i1 %5, label %6, label %10, !prof !279

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 1152921504606846975
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

10:                                               ; preds = %3
  %11 = shl i64 %1, 4
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #17
  ret ptr %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_copy_aIPKN6dealii6TensorILi1ELi2EEEPS2_S2_ET0_T_S7_S6_RSaIT1_E(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #4 comdat {
  %5 = tail call noundef ptr @_ZSt18uninitialized_copyIPKN6dealii6TensorILi1ELi2EEEPS2_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt32__make_move_if_noexcept_iteratorIN6dealii6TensorILi1ELi2EEEPKS2_ET0_PT_(ptr noundef %0) local_unnamed_addr #5 comdat {
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
  %9 = getelementptr inbounds %"class.dealii::Tensor.46", ptr %7, i64 1
  %10 = getelementptr inbounds %"class.dealii::Tensor.46", ptr %6, i64 1
  %11 = icmp eq ptr %9, %1
  br i1 %11, label %17, label %5, !llvm.loop !333

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
  tail call void @__clang_call_terminate(ptr %24) #19
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
define linkonce_odr dso_local void @_ZN6dealii6TensorILi1ELi2EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #5 comdat align 2 !prof !334 {
  %3 = load double, ptr %1, align 8, !tbaa !178
  store double %3, ptr %0, align 8, !tbaa !178
  %4 = getelementptr inbounds [2 x double], ptr %1, i64 0, i64 1
  %5 = load double, ptr %4, align 8, !tbaa !178
  %6 = getelementptr inbounds [2 x double], ptr %0, i64 0, i64 1
  store double %5, ptr %6, align 8, !tbaa !178
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %61, label %4

4:                                                ; preds = %2
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %6 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<2, 2>, std::allocator<dealii::Tensor<2, 2>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !329
  %8 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<2, 2>, std::allocator<dealii::Tensor<2, 2>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !204
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
  %21 = load ptr, ptr %8, align 8, !tbaa !204
  %22 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %23 = tail call noundef ptr @_ZSt27__uninitialized_default_n_aIPN6dealii6TensorILi2ELi2EEEmS2_ET_S4_T0_RSaIT1_E(ptr noundef %21, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %22) #14
  store ptr %23, ptr %8, align 8, !tbaa !204
  br label %61

24:                                               ; preds = %4
  %25 = load ptr, ptr %0, align 8, !tbaa !203
  %26 = load ptr, ptr %8, align 8, !tbaa !204
  %27 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull @.str.1) #14
  %28 = tail call noundef ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %27) #14
  %29 = getelementptr inbounds %"class.dealii::Tensor.47", ptr %28, i64 %5
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
  %45 = getelementptr inbounds %"class.dealii::Tensor.47", ptr %29, i64 %1
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
  %54 = load ptr, ptr %6, align 8, !tbaa !329
  %55 = ptrtoint ptr %54 to i64
  %56 = ptrtoint ptr %25 to i64
  %57 = sub i64 %55, %56
  %58 = ashr exact i64 %57, 5
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %25, i64 noundef %58) #14
  store ptr %28, ptr %0, align 8, !tbaa !203
  %59 = getelementptr inbounds %"class.dealii::Tensor.47", ptr %29, i64 %1
  store ptr %59, ptr %8, align 8, !tbaa !204
  %60 = getelementptr inbounds %"class.dealii::Tensor.47", ptr %28, i64 %27
  store ptr %60, ptr %6, align 8, !tbaa !329
  br label %61

61:                                               ; preds = %20, %52, %2
  ret void

62:                                               ; preds = %47
  %63 = landingpad { ptr, i32 }
          catch ptr null
  %64 = extractvalue { ptr, i32 } %63, 0
  tail call void @__clang_call_terminate(ptr %64) #19
  unreachable

65:                                               ; preds = %50
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE15_M_erase_at_endEPS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !142 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<2, 2>, std::allocator<dealii::Tensor<2, 2>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !204
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  invoke void @_ZSt8_DestroyIPN6dealii6TensorILi2ELi2EEES2_EvT_S4_RSaIT0_E(ptr noundef %1, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %7) #14
          to label %8 unwind label %10

8:                                                ; preds = %6
  store ptr %1, ptr %3, align 8, !tbaa !204
  br label %9

9:                                                ; preds = %8, %2
  ret void

10:                                               ; preds = %6
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #19
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !142 {
  %2 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %3 = tail call noundef i64 @_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE11_S_max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %2) #16
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__uninitialized_default_n_aIPN6dealii6TensorILi2ELi2EEEmS2_ET_S4_T0_RSaIT1_E(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat {
  %4 = tail call noundef ptr @_ZSt25__uninitialized_default_nIPN6dealii6TensorILi2ELi2EEEmET_S4_T0_(ptr noundef %0, i64 noundef %1) #14
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 !prof !142 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %1, ptr %4, align 8, !tbaa !275
  %6 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %7 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %8 = sub i64 %6, %7
  %9 = icmp ult i64 %8, %1
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef %2) #20
  unreachable

11:                                               ; preds = %3
  %12 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  %13 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  store i64 %13, ptr %5, align 8, !tbaa !275
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #14
  %15 = load i64, ptr %14, align 8, !tbaa !275
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
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !142 {
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
define linkonce_odr dso_local noundef ptr @_ZSt34__uninitialized_move_if_noexcept_aIPN6dealii6TensorILi2ELi2EEES3_SaIS2_EET0_T_S6_S5_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #4 comdat !prof !142 {
  %5 = tail call noundef ptr @_ZSt32__make_move_if_noexcept_iteratorIN6dealii6TensorILi2ELi2EEEPKS2_ET0_PT_(ptr noundef %0) #14
  %6 = tail call noundef ptr @_ZSt32__make_move_if_noexcept_iteratorIN6dealii6TensorILi2ELi2EEEPKS2_ET0_PT_(ptr noundef %1) #14
  %7 = tail call noundef ptr @_ZSt22__uninitialized_copy_aIPKN6dealii6TensorILi2ELi2EEEPS2_S2_ET0_T_S7_S6_RSaIT1_E(ptr noundef %5, ptr noundef %6, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #14
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE11_S_max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #5 comdat align 2 !prof !142 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  store i64 288230376151711743, ptr %2, align 8, !tbaa !275
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %4 = tail call noundef i64 @_ZNSt16allocator_traitsISaIN6dealii6TensorILi2ELi2EEEEE8max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  store i64 %4, ptr %3, align 8, !tbaa !275
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #14
  %6 = load i64, ptr %5, align 8, !tbaa !275
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !142 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaIN6dealii6TensorILi2ELi2EEEEE8max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #5 comdat align 2 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi2ELi2EEEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi2ELi2EEEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #5 comdat align 2 !prof !142 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi2ELi2EEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi2ELi2EEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #5 comdat align 2 !prof !142 {
  ret i64 288230376151711743
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
  %9 = getelementptr inbounds %"class.dealii::Tensor.47", ptr %5, i64 1
  %10 = icmp eq i64 %8, 0
  br i1 %10, label %16, label %4, !llvm.loop !335

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
  tail call void @__clang_call_terminate(ptr %23) #19
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
define linkonce_odr dso_local void @_ZN6dealii6TensorILi2ELi2EEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 !prof !142 {
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

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIN6dealii6TensorILi2ELi2EEEEE8allocateERS3_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi2EEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #14
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi2EEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi2ELi2EEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !279

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 576460752303423487
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

10:                                               ; preds = %3
  %11 = shl i64 %1, 5
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #17
  ret ptr %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_copy_aIPKN6dealii6TensorILi2ELi2EEEPS2_S2_ET0_T_S7_S6_RSaIT1_E(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #4 comdat {
  %5 = tail call noundef ptr @_ZSt18uninitialized_copyIPKN6dealii6TensorILi2ELi2EEEPS2_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt32__make_move_if_noexcept_iteratorIN6dealii6TensorILi2ELi2EEEPKS2_ET0_PT_(ptr noundef %0) local_unnamed_addr #5 comdat {
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
  %9 = getelementptr inbounds %"class.dealii::Tensor.47", ptr %7, i64 1
  %10 = getelementptr inbounds %"class.dealii::Tensor.47", ptr %6, i64 1
  %11 = icmp eq ptr %9, %1
  br i1 %11, label %17, label %5, !llvm.loop !336

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
  tail call void @__clang_call_terminate(ptr %24) #19
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
  %5 = getelementptr inbounds %"class.dealii::Tensor.46", ptr %0, i64 %4
  %6 = getelementptr inbounds [2 x %"class.dealii::Tensor.46"], ptr %1, i64 0, i64 %4
  tail call void @_ZN6dealii6TensorILi1ELi2EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6) #14
  %7 = add nuw nsw i64 %4, 1
  %8 = icmp eq i64 %7, 2
  br i1 %8, label %9, label %3

9:                                                ; preds = %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN6dealii6TensorILi1ELi3EEES2_EvT_S4_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat !prof !337 {
  tail call void @_ZSt8_DestroyIPN6dealii6TensorILi1ELi3EEEEvT_S4_(ptr noundef %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !338 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !239 {
  %2 = load ptr, ptr %0, align 8, !tbaa !240
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !339
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
  tail call void @__clang_call_terminate(ptr %12) #19
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN6dealii6TensorILi1ELi3EEEEvT_S4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat !prof !337 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii6TensorILi1ELi3EEEEEvT_S6_(ptr noundef %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii6TensorILi1ELi3EEEEEvT_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !337 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 !prof !337 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !340

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi3EEEEE10deallocateERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #14
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !341 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi3EEEEE10deallocateERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN6dealii6TensorILi2ELi3EEES2_EvT_S4_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat !prof !342 {
  tail call void @_ZSt8_DestroyIPN6dealii6TensorILi2ELi3EEEEvT_S4_(ptr noundef %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !343 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !236 {
  %2 = load ptr, ptr %0, align 8, !tbaa !237
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<2, 3>, std::allocator<dealii::Tensor<2, 3>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !344
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
  tail call void @__clang_call_terminate(ptr %12) #19
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN6dealii6TensorILi2ELi3EEEEvT_S4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat !prof !342 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii6TensorILi2ELi3EEEEEvT_S6_(ptr noundef %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii6TensorILi2ELi3EEEEEvT_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !342 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 !prof !342 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !345

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIN6dealii6TensorILi2ELi3EEEEE10deallocateERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #14
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi3EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !346 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN6dealii6TensorILi2ELi3EEEEE10deallocateERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi3EEEE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi3EEEE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %61, label %4

4:                                                ; preds = %2
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %6 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !339
  %8 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !241
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
  %21 = load ptr, ptr %8, align 8, !tbaa !241
  %22 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %23 = tail call noundef ptr @_ZSt27__uninitialized_default_n_aIPN6dealii6TensorILi1ELi3EEEmS2_ET_S4_T0_RSaIT1_E(ptr noundef %21, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %22) #14
  store ptr %23, ptr %8, align 8, !tbaa !241
  br label %61

24:                                               ; preds = %4
  %25 = load ptr, ptr %0, align 8, !tbaa !240
  %26 = load ptr, ptr %8, align 8, !tbaa !241
  %27 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull @.str.1) #14
  %28 = tail call noundef ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %27) #14
  %29 = getelementptr inbounds %"class.dealii::Tensor.68", ptr %28, i64 %5
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
  %45 = getelementptr inbounds %"class.dealii::Tensor.68", ptr %29, i64 %1
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
  %54 = load ptr, ptr %6, align 8, !tbaa !339
  %55 = ptrtoint ptr %54 to i64
  %56 = ptrtoint ptr %25 to i64
  %57 = sub i64 %55, %56
  %58 = sdiv exact i64 %57, 24
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %25, i64 noundef %58) #14
  store ptr %28, ptr %0, align 8, !tbaa !240
  %59 = getelementptr inbounds %"class.dealii::Tensor.68", ptr %29, i64 %1
  store ptr %59, ptr %8, align 8, !tbaa !241
  %60 = getelementptr inbounds %"class.dealii::Tensor.68", ptr %28, i64 %27
  store ptr %60, ptr %6, align 8, !tbaa !339
  br label %61

61:                                               ; preds = %20, %52, %2
  ret void

62:                                               ; preds = %47
  %63 = landingpad { ptr, i32 }
          catch ptr null
  %64 = extractvalue { ptr, i32 } %63, 0
  tail call void @__clang_call_terminate(ptr %64) #19
  unreachable

65:                                               ; preds = %50
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE15_M_erase_at_endEPS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !142 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !241
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  invoke void @_ZSt8_DestroyIPN6dealii6TensorILi1ELi3EEES2_EvT_S4_RSaIT0_E(ptr noundef %1, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %7) #14
          to label %8 unwind label %10

8:                                                ; preds = %6
  store ptr %1, ptr %3, align 8, !tbaa !241
  br label %9

9:                                                ; preds = %8, %2
  ret void

10:                                               ; preds = %6
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #19
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !347 {
  %2 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %3 = tail call noundef i64 @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE11_S_max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %2) #16
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__uninitialized_default_n_aIPN6dealii6TensorILi1ELi3EEEmS2_ET_S4_T0_RSaIT1_E(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat {
  %4 = tail call noundef ptr @_ZSt25__uninitialized_default_nIPN6dealii6TensorILi1ELi3EEEmET_S4_T0_(ptr noundef %0, i64 noundef %1) #14
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 !prof !348 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %1, ptr %4, align 8, !tbaa !275
  %6 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %7 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %8 = sub i64 %6, %7
  %9 = icmp ult i64 %8, %1
  br i1 %9, label %10, label %11, !prof !349

10:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef %2) #20
  unreachable

11:                                               ; preds = %3
  %12 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  %13 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  store i64 %13, ptr %5, align 8, !tbaa !275
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #14
  %15 = load i64, ptr %14, align 8, !tbaa !275
  %16 = add i64 %15, %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  %17 = call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %22, label %19, !prof !349

19:                                               ; preds = %11
  %20 = call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %21 = icmp ugt i64 %16, %20
  br i1 %21, label %22, label %24, !prof !349

22:                                               ; preds = %19, %11
  %23 = call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  br label %24

24:                                               ; preds = %19, %22
  %25 = phi i64 [ %23, %22 ], [ %16, %19 ]
  ret i64 %25
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !350 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4, !prof !351

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi3EEEEE8allocateERS3_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #14
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt34__uninitialized_move_if_noexcept_aIPN6dealii6TensorILi1ELi3EEES3_SaIS2_EET0_T_S6_S5_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #4 comdat !prof !347 {
  %5 = tail call noundef ptr @_ZSt32__make_move_if_noexcept_iteratorIN6dealii6TensorILi1ELi3EEEPKS2_ET0_PT_(ptr noundef %0) #14
  %6 = tail call noundef ptr @_ZSt32__make_move_if_noexcept_iteratorIN6dealii6TensorILi1ELi3EEEPKS2_ET0_PT_(ptr noundef %1) #14
  %7 = tail call noundef ptr @_ZSt22__uninitialized_copy_aIPKN6dealii6TensorILi1ELi3EEEPS2_S2_ET0_T_S7_S6_RSaIT1_E(ptr noundef %5, ptr noundef %6, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #14
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE11_S_max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #5 comdat align 2 !prof !352 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  store i64 384307168202282325, ptr %2, align 8, !tbaa !275
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %4 = tail call noundef i64 @_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi3EEEEE8max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  store i64 %4, ptr %3, align 8, !tbaa !275
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #14
  %6 = load i64, ptr %5, align 8, !tbaa !275
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !353 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi3EEEEE8max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #5 comdat align 2 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #5 comdat align 2 !prof !352 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #5 comdat align 2 !prof !354 {
  ret i64 384307168202282325
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
  %9 = getelementptr inbounds %"class.dealii::Tensor.68", ptr %5, i64 1
  %10 = icmp eq i64 %8, 0
  br i1 %10, label %16, label %4, !llvm.loop !355

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
  tail call void @__clang_call_terminate(ptr %23) #19
  unreachable

24:                                               ; preds = %15
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructIN6dealii6TensorILi1ELi3EEEJEEvPT_DpOT0_(ptr noundef %0) local_unnamed_addr #4 comdat {
  tail call void @_ZN6dealii6TensorILi1ELi3EEC2Eb(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext true) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6TensorILi1ELi3EEC2Eb(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext %1) unnamed_addr #5 comdat align 2 !prof !356 {
  br i1 %1, label %3, label %4, !prof !357

3:                                                ; preds = %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !tbaa !178
  br label %4

4:                                                ; preds = %3, %2
  ret void
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
  br i1 %5, label %6, label %10, !prof !279

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 768614336404564650
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

10:                                               ; preds = %3
  %11 = mul i64 %1, 24
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #17
  ret ptr %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_copy_aIPKN6dealii6TensorILi1ELi3EEEPS2_S2_ET0_T_S7_S6_RSaIT1_E(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #4 comdat {
  %5 = tail call noundef ptr @_ZSt18uninitialized_copyIPKN6dealii6TensorILi1ELi3EEEPS2_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt32__make_move_if_noexcept_iteratorIN6dealii6TensorILi1ELi3EEEPKS2_ET0_PT_(ptr noundef %0) local_unnamed_addr #5 comdat {
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
  %9 = getelementptr inbounds %"class.dealii::Tensor.68", ptr %7, i64 1
  %10 = getelementptr inbounds %"class.dealii::Tensor.68", ptr %6, i64 1
  %11 = icmp eq ptr %9, %1
  br i1 %11, label %17, label %5, !llvm.loop !358

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
  tail call void @__clang_call_terminate(ptr %24) #19
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
define linkonce_odr dso_local void @_ZN6dealii6TensorILi1ELi3EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #5 comdat align 2 !prof !359 {
  br label %4

3:                                                ; preds = %4
  ret void

4:                                                ; preds = %2, %4
  %5 = phi i64 [ 0, %2 ], [ %9, %4 ]
  %6 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %5
  %7 = load double, ptr %6, align 8, !tbaa !178
  %8 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 %5
  store double %7, ptr %8, align 8, !tbaa !178
  %9 = add nuw nsw i64 %5, 1
  %10 = icmp eq i64 %9, 3
  br i1 %10, label %3, label %4, !prof !360, !llvm.loop !361
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %61, label %4

4:                                                ; preds = %2
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %6 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<2, 3>, std::allocator<dealii::Tensor<2, 3>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !344
  %8 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<2, 3>, std::allocator<dealii::Tensor<2, 3>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !238
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
  %21 = load ptr, ptr %8, align 8, !tbaa !238
  %22 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %23 = tail call noundef ptr @_ZSt27__uninitialized_default_n_aIPN6dealii6TensorILi2ELi3EEEmS2_ET_S4_T0_RSaIT1_E(ptr noundef %21, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %22) #14
  store ptr %23, ptr %8, align 8, !tbaa !238
  br label %61

24:                                               ; preds = %4
  %25 = load ptr, ptr %0, align 8, !tbaa !237
  %26 = load ptr, ptr %8, align 8, !tbaa !238
  %27 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull @.str.1) #14
  %28 = tail call noundef ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %27) #14
  %29 = getelementptr inbounds %"class.dealii::Tensor.69", ptr %28, i64 %5
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
  %45 = getelementptr inbounds %"class.dealii::Tensor.69", ptr %29, i64 %1
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
  %54 = load ptr, ptr %6, align 8, !tbaa !344
  %55 = ptrtoint ptr %54 to i64
  %56 = ptrtoint ptr %25 to i64
  %57 = sub i64 %55, %56
  %58 = sdiv exact i64 %57, 72
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %25, i64 noundef %58) #14
  store ptr %28, ptr %0, align 8, !tbaa !237
  %59 = getelementptr inbounds %"class.dealii::Tensor.69", ptr %29, i64 %1
  store ptr %59, ptr %8, align 8, !tbaa !238
  %60 = getelementptr inbounds %"class.dealii::Tensor.69", ptr %28, i64 %27
  store ptr %60, ptr %6, align 8, !tbaa !344
  br label %61

61:                                               ; preds = %20, %52, %2
  ret void

62:                                               ; preds = %47
  %63 = landingpad { ptr, i32 }
          catch ptr null
  %64 = extractvalue { ptr, i32 } %63, 0
  tail call void @__clang_call_terminate(ptr %64) #19
  unreachable

65:                                               ; preds = %50
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE15_M_erase_at_endEPS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !142 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<2, 3>, std::allocator<dealii::Tensor<2, 3>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !238
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  invoke void @_ZSt8_DestroyIPN6dealii6TensorILi2ELi3EEES2_EvT_S4_RSaIT0_E(ptr noundef %1, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %7) #14
          to label %8 unwind label %10

8:                                                ; preds = %6
  store ptr %1, ptr %3, align 8, !tbaa !238
  br label %9

9:                                                ; preds = %8, %2
  ret void

10:                                               ; preds = %6
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #19
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !362 {
  %2 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %3 = tail call noundef i64 @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE11_S_max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %2) #16
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__uninitialized_default_n_aIPN6dealii6TensorILi2ELi3EEEmS2_ET_S4_T0_RSaIT1_E(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat {
  %4 = tail call noundef ptr @_ZSt25__uninitialized_default_nIPN6dealii6TensorILi2ELi3EEEmET_S4_T0_(ptr noundef %0, i64 noundef %1) #14
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 !prof !363 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %1, ptr %4, align 8, !tbaa !275
  %6 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %7 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %8 = sub i64 %6, %7
  %9 = icmp ult i64 %8, %1
  br i1 %9, label %10, label %11, !prof !364

10:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef %2) #20
  unreachable

11:                                               ; preds = %3
  %12 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  %13 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  store i64 %13, ptr %5, align 8, !tbaa !275
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #14
  %15 = load i64, ptr %14, align 8, !tbaa !275
  %16 = add i64 %15, %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  %17 = call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %22, label %19, !prof !364

19:                                               ; preds = %11
  %20 = call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %21 = icmp ugt i64 %16, %20
  br i1 %21, label %22, label %24, !prof !364

22:                                               ; preds = %19, %11
  %23 = call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  br label %24

24:                                               ; preds = %19, %22
  %25 = phi i64 [ %23, %22 ], [ %16, %19 ]
  ret i64 %25
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !365 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4, !prof !366

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaIN6dealii6TensorILi2ELi3EEEEE8allocateERS3_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #14
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt34__uninitialized_move_if_noexcept_aIPN6dealii6TensorILi2ELi3EEES3_SaIS2_EET0_T_S6_S5_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #4 comdat !prof !362 {
  %5 = tail call noundef ptr @_ZSt32__make_move_if_noexcept_iteratorIN6dealii6TensorILi2ELi3EEEPKS2_ET0_PT_(ptr noundef %0) #14
  %6 = tail call noundef ptr @_ZSt32__make_move_if_noexcept_iteratorIN6dealii6TensorILi2ELi3EEEPKS2_ET0_PT_(ptr noundef %1) #14
  %7 = tail call noundef ptr @_ZSt22__uninitialized_copy_aIPKN6dealii6TensorILi2ELi3EEEPS2_S2_ET0_T_S7_S6_RSaIT1_E(ptr noundef %5, ptr noundef %6, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #14
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE11_S_max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #5 comdat align 2 !prof !367 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  store i64 128102389400760775, ptr %2, align 8, !tbaa !275
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %4 = tail call noundef i64 @_ZNSt16allocator_traitsISaIN6dealii6TensorILi2ELi3EEEEE8max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  store i64 %4, ptr %3, align 8, !tbaa !275
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #14
  %6 = load i64, ptr %5, align 8, !tbaa !275
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !368 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaIN6dealii6TensorILi2ELi3EEEEE8max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #5 comdat align 2 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi2ELi3EEEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi2ELi3EEEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #5 comdat align 2 !prof !367 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi2ELi3EEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi2ELi3EEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #5 comdat align 2 !prof !369 {
  ret i64 128102389400760775
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
  %9 = getelementptr inbounds %"class.dealii::Tensor.69", ptr %5, i64 1
  %10 = icmp eq i64 %8, 0
  br i1 %10, label %16, label %4, !llvm.loop !370

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
  tail call void @__clang_call_terminate(ptr %23) #19
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
define linkonce_odr dso_local void @_ZN6dealii6TensorILi2ELi3EEC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #4 comdat align 2 !prof !371 {
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

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIN6dealii6TensorILi2ELi3EEEEE8allocateERS3_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi3EEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #14
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi3EEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi2ELi3EEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !279

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 256204778801521550
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

10:                                               ; preds = %3
  %11 = mul i64 %1, 72
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #17
  ret ptr %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_copy_aIPKN6dealii6TensorILi2ELi3EEEPS2_S2_ET0_T_S7_S6_RSaIT1_E(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #4 comdat {
  %5 = tail call noundef ptr @_ZSt18uninitialized_copyIPKN6dealii6TensorILi2ELi3EEEPS2_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt32__make_move_if_noexcept_iteratorIN6dealii6TensorILi2ELi3EEEPKS2_ET0_PT_(ptr noundef %0) local_unnamed_addr #5 comdat {
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
  %9 = getelementptr inbounds %"class.dealii::Tensor.69", ptr %7, i64 1
  %10 = getelementptr inbounds %"class.dealii::Tensor.69", ptr %6, i64 1
  %11 = icmp eq ptr %9, %1
  br i1 %11, label %17, label %5, !llvm.loop !372

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
  tail call void @__clang_call_terminate(ptr %24) #19
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
  %5 = getelementptr inbounds %"class.dealii::Tensor.68", ptr %0, i64 %4
  %6 = getelementptr inbounds [3 x %"class.dealii::Tensor.68"], ptr %1, i64 0, i64 %4
  tail call void @_ZN6dealii6TensorILi1ELi3EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) #14
  %7 = add nuw nsw i64 %4, 1
  %8 = icmp eq i64 %7, 3
  br i1 %8, label %9, label %3

9:                                                ; preds = %3
  ret void
}

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_polynomials_abf.cc() #0 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

attributes #0 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { optsize }
attributes #15 = { nounwind }
attributes #16 = { nounwind optsize }
attributes #17 = { builtin optsize allocsize(0) }
attributes #18 = { builtin nounwind optsize }
attributes #19 = { noreturn nounwind }
attributes #20 = { noreturn optsize }
attributes #21 = { noreturn }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!141}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140}
!35 = !{ptr @_ZNSt6vectorIdSaIdEEC2Ev, ptr @_ZNSt12_Vector_baseIdSaIdEEC2Ev, i64 7884403}
!36 = !{ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EED2Ev, ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE19_M_get_Tp_allocatorEv, i64 179262}
!37 = !{ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EED2Ev, ptr @_ZSt8_DestroyIPN6dealii11Polynomials10PolynomialIdEES3_EvT_S5_RSaIT0_E, i64 179262}
!38 = !{ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EED2Ev, ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EED2Ev, i64 179262}
!39 = !{ptr @_ZNSt6vectorIdSaIdEED2Ev, ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv, i64 10618017}
!40 = !{ptr @_ZNSt6vectorIdSaIdEED2Ev, ptr @_ZSt8_DestroyIPddEvT_S1_RSaIT0_E, i64 10618017}
!41 = !{ptr @_ZNSt6vectorIdSaIdEED2Ev, ptr @_ZNSt12_Vector_baseIdSaIdEED2Ev, i64 10618007}
!42 = !{ptr @_ZNSt6vectorIdSaIdEED2Ev, ptr @__clang_call_terminate, i64 10}
!43 = !{ptr @_ZN6dealii5PointILi1EEC2Ev, ptr @_ZN6dealii6TensorILi1ELi1EEC2Eb, i64 269698}
!44 = !{ptr @_ZN6dealii5PointILi2EEC2Ev, ptr @_ZN6dealii6TensorILi1ELi2EEC2Eb, i64 202370}
!45 = !{ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEC2Ev, ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EEC2Ev, i64 1078808}
!46 = !{ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EEC2Ev, ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EEC2Ev, i64 5118618}
!47 = !{ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EED2Ev, ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE19_M_get_Tp_allocatorEv, i64 5302653}
!48 = !{ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EED2Ev, ptr @_ZSt8_DestroyIPN6dealii6TensorILi2ELi3EEES2_EvT_S4_RSaIT0_E, i64 5302653}
!49 = !{ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EED2Ev, ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EED2Ev, i64 5302648}
!50 = !{ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EED2Ev, ptr @__clang_call_terminate, i64 5}
!51 = !{ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EED2Ev, ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE19_M_get_Tp_allocatorEv, i64 10407865}
!52 = !{ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EED2Ev, ptr @_ZSt8_DestroyIPN6dealii6TensorILi1ELi3EEES2_EvT_S4_RSaIT0_E, i64 10407865}
!53 = !{ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EED2Ev, ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EED2Ev, i64 10407855}
!54 = !{ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EED2Ev, ptr @__clang_call_terminate, i64 10}
!55 = !{ptr @_ZN6dealii5PointILi3EEC2Ev, ptr @_ZN6dealii6TensorILi1ELi3EEC2Eb, i64 5584274}
!56 = !{ptr @_ZNSt12_Vector_baseIdSaIdEEC2Ev, ptr @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev, i64 7884403}
!57 = !{ptr @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev, ptr @_ZNSaIdEC2Ev, i64 7884403}
!58 = !{ptr @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev, ptr @_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev, i64 7884403}
!59 = !{ptr @_ZNSaIdEC2Ev, ptr @_ZNSt15__new_allocatorIdEC2Ev, i64 9261343}
!60 = !{ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EEC2Ev, ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE12_Vector_implC2Ev, i64 1078808}
!61 = !{ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE12_Vector_implC2Ev, ptr @_ZNSaIN6dealii6TensorILi1ELi3EEEEC2Ev, i64 1078808}
!62 = !{ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE12_Vector_implC2Ev, ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE17_Vector_impl_dataC2Ev, i64 1078808}
!63 = !{ptr @_ZNSaIN6dealii6TensorILi1ELi3EEEEC2Ev, ptr @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEEC2Ev, i64 2314867}
!64 = !{ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EEC2Ev, ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE12_Vector_implC2Ev, i64 5118618}
!65 = !{ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE12_Vector_implC2Ev, ptr @_ZNSaIN6dealii6TensorILi2ELi3EEEEC2Ev, i64 5118618}
!66 = !{ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE12_Vector_implC2Ev, ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE17_Vector_impl_dataC2Ev, i64 5118618}
!67 = !{ptr @_ZNSaIN6dealii6TensorILi2ELi3EEEEC2Ev, ptr @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi3EEEEC2Ev, i64 5301897}
!68 = !{ptr @_ZSt8_DestroyIPddEvT_S1_RSaIT0_E, ptr @_ZSt8_DestroyIPdEvT_S1_, i64 16422537}
!69 = !{ptr @_ZNSt12_Vector_baseIdSaIdEED2Ev, ptr @_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm, i64 10618017}
!70 = !{ptr @_ZNSt12_Vector_baseIdSaIdEED2Ev, ptr @_ZNSt15__new_allocatorIdED2Ev, i64 10618007}
!71 = !{ptr @_ZNSt12_Vector_baseIdSaIdEED2Ev, ptr @__clang_call_terminate, i64 10}
!72 = !{ptr @_ZSt8_DestroyIPdEvT_S1_, ptr @_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_, i64 16422537}
!73 = !{ptr @_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm, ptr @_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm, i64 8354765}
!74 = !{ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2Ev, ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2Ev, i64 3}
!75 = !{ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2Ev, ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE12_Vector_implC2Ev, i64 3}
!76 = !{ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE12_Vector_implC2Ev, ptr @_ZNSaIN6dealii11Polynomials10PolynomialIdEEEC2Ev, i64 3}
!77 = !{ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE12_Vector_implC2Ev, ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE17_Vector_impl_dataC2Ev, i64 3}
!78 = !{ptr @_ZNSaIN6dealii11Polynomials10PolynomialIdEEEC2Ev, ptr @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEEC2Ev, i64 16}
!79 = !{ptr @_ZSt8_DestroyIPN6dealii11Polynomials10PolynomialIdEES3_EvT_S5_RSaIT0_E, ptr @_ZSt8_DestroyIPN6dealii11Polynomials10PolynomialIdEEEvT_S5_, i64 179268}
!80 = !{ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EED2Ev, ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE13_M_deallocateEPS3_m, i64 179262}
!81 = !{ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EED2Ev, ptr @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEED2Ev, i64 179262}
!82 = !{ptr @_ZSt8_DestroyIPN6dealii11Polynomials10PolynomialIdEEEvT_S5_, ptr @_ZNSt12_Destroy_auxILb0EE9__destroyIPN6dealii11Polynomials10PolynomialIdEEEEvT_S7_, i64 179268}
!83 = !{ptr @_ZNSt12_Destroy_auxILb0EE9__destroyIPN6dealii11Polynomials10PolynomialIdEEEEvT_S7_, ptr @_ZSt8_DestroyIN6dealii11Polynomials10PolynomialIdEEEvPT_, i64 268842}
!84 = !{ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE13_M_deallocateEPS3_m, ptr @_ZNSt16allocator_traitsISaIN6dealii11Polynomials10PolynomialIdEEEE10deallocateERS4_PS3_m, i64 179264}
!85 = !{ptr @_ZNSaIN6dealii11Polynomials10PolynomialIdEEEC2ERKS3_, ptr @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEEC2ERKS4_, i64 179277}
!86 = !{ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2ERKS4_, ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE12_Vector_implC2ERKS4_, i64 8}
!87 = !{ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE12_Vector_implC2ERKS4_, ptr @_ZNSaIN6dealii11Polynomials10PolynomialIdEEEC2ERKS3_, i64 179264}
!88 = !{ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE12_Vector_implC2ERKS4_, ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE17_Vector_impl_dataC2Ev, i64 179264}
!89 = !{ptr @_ZNKSt6vectorIdSaIdEE8max_sizeEv, ptr @_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv, i64 11605705}
!90 = !{ptr @_ZNKSt6vectorIdSaIdEE8max_sizeEv, ptr @_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_, i64 11605705}
!91 = !{ptr @_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc, ptr @_ZNKSt6vectorIdSaIdEE8max_sizeEv, i64 11602394}
!92 = !{ptr @_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc, ptr @_ZNKSt6vectorIdSaIdEE4sizeEv, i64 23204785}
!93 = !{ptr @_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc, ptr @_ZSt20__throw_length_errorPKc, i64 1}
!94 = !{ptr @_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc, ptr @_ZSt3maxImERKT_S2_S2_, i64 5801196}
!95 = !{ptr @_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm, ptr @_ZNSt16allocator_traitsISaIdEE8allocateERS0_m, i64 8354784}
!96 = !{ptr @_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_, ptr @_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_, i64 12982610}
!97 = !{ptr @_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_, ptr @_ZSt3minImERKT_S2_S2_, i64 12982610}
!98 = !{ptr @_ZNKSt15__new_allocatorIdE8max_sizeEv, ptr @_ZNKSt15__new_allocatorIdE11_M_max_sizeEv, i64 12982610}
!99 = !{ptr @_ZSt6fill_nIPdmdET_S1_T0_RKT1_, ptr @_ZSt17__size_to_integerm, i64 7178069}
!100 = !{ptr @_ZSt6fill_nIPdmdET_S1_T0_RKT1_, ptr @_ZSt19__iterator_categoryIPdENSt15iterator_traitsIT_E17iterator_categoryERKS2_, i64 7178069}
!101 = !{ptr @_ZSt6fill_nIPdmdET_S1_T0_RKT1_, ptr @_ZSt10__fill_n_aIPdmdET_S1_T0_RKT1_St26random_access_iterator_tag, i64 7178069}
!102 = !{ptr @_ZSt10__fill_n_aIPdmdET_S1_T0_RKT1_St26random_access_iterator_tag, ptr @_ZSt8__fill_aIPddEvT_S1_RKT0_, i64 6994789}
!103 = !{ptr @_ZSt8__fill_aIPddEvT_S1_RKT0_, ptr @_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_, i64 25807262}
!104 = !{ptr @_ZSt8_DestroyIPN6dealii6TensorILi1ELi3EEES2_EvT_S4_RSaIT0_E, ptr @_ZSt8_DestroyIPN6dealii6TensorILi1ELi3EEEEvT_S4_, i64 10953335}
!105 = !{ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EED2Ev, ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE13_M_deallocateEPS2_m, i64 10407865}
!106 = !{ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EED2Ev, ptr @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEED2Ev, i64 10407855}
!107 = !{ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EED2Ev, ptr @__clang_call_terminate, i64 10}
!108 = !{ptr @_ZSt8_DestroyIPN6dealii6TensorILi1ELi3EEEEvT_S4_, ptr @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii6TensorILi1ELi3EEEEEvT_S6_, i64 10953335}
!109 = !{ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE13_M_deallocateEPS2_m, ptr @_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi3EEEEE10deallocateERS3_PS2_m, i64 9690491}
!110 = !{ptr @_ZSt8_DestroyIPN6dealii6TensorILi2ELi3EEES2_EvT_S4_RSaIT0_E, ptr @_ZSt8_DestroyIPN6dealii6TensorILi2ELi3EEEEvT_S4_, i64 5484724}
!111 = !{ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EED2Ev, ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE13_M_deallocateEPS2_m, i64 5302653}
!112 = !{ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EED2Ev, ptr @_ZNSt15__new_allocatorIN6dealii6TensorILi2ELi3EEEED2Ev, i64 5302648}
!113 = !{ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EED2Ev, ptr @__clang_call_terminate, i64 5}
!114 = !{ptr @_ZSt8_DestroyIPN6dealii6TensorILi2ELi3EEEEvT_S4_, ptr @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii6TensorILi2ELi3EEEEEvT_S6_, i64 5484724}
!115 = !{ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE13_M_deallocateEPS2_m, ptr @_ZNSt16allocator_traitsISaIN6dealii6TensorILi2ELi3EEEEE10deallocateERS3_PS2_m, i64 182072}
!116 = !{ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE8max_sizeEv, ptr @_ZNKSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE19_M_get_Tp_allocatorEv, i64 1090940}
!117 = !{ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE8max_sizeEv, ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE11_S_max_sizeERKS3_, i64 1090940}
!118 = !{ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE12_M_check_lenEmPKc, ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE8max_sizeEv, i64 1090940}
!119 = !{ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE12_M_check_lenEmPKc, ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE4sizeEv, i64 2181877}
!120 = !{ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE12_M_check_lenEmPKc, ptr @_ZSt20__throw_length_errorPKc, i64 1}
!121 = !{ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE12_M_check_lenEmPKc, ptr @_ZSt3maxImERKT_S2_S2_, i64 545469}
!122 = !{ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE11_M_allocateEm, ptr @_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi3EEEEE8allocateERS3_m, i64 9690491}
!123 = !{ptr @_ZSt34__uninitialized_move_if_noexcept_aIPN6dealii6TensorILi1ELi3EEES3_SaIS2_EET0_T_S6_S5_RT1_, ptr @_ZSt32__make_move_if_noexcept_iteratorIN6dealii6TensorILi1ELi3EEEPKS2_ET0_PT_, i64 2181880}
!124 = !{ptr @_ZSt34__uninitialized_move_if_noexcept_aIPN6dealii6TensorILi1ELi3EEES3_SaIS2_EET0_T_S6_S5_RT1_, ptr @_ZSt22__uninitialized_copy_aIPKN6dealii6TensorILi1ELi3EEEPS2_S2_ET0_T_S7_S6_RSaIT1_E, i64 1090940}
!125 = !{ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE11_S_max_sizeERKS3_, ptr @_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi3EEEEE8max_sizeERKS3_, i64 2326999}
!126 = !{ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE11_S_max_sizeERKS3_, ptr @_ZSt3minImERKT_S2_S2_, i64 2326999}
!127 = !{ptr @_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEE8max_sizeEv, ptr @_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEE11_M_max_sizeEv, i64 2326999}
!128 = !{ptr @_ZNKSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE8max_sizeEv, ptr @_ZNKSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE19_M_get_Tp_allocatorEv, i64 364142}
!129 = !{ptr @_ZNKSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE8max_sizeEv, ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE11_S_max_sizeERKS3_, i64 364142}
!130 = !{ptr @_ZNKSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE12_M_check_lenEmPKc, ptr @_ZNKSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE8max_sizeEv, i64 364142}
!131 = !{ptr @_ZNKSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE12_M_check_lenEmPKc, ptr @_ZNKSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE4sizeEv, i64 728281}
!132 = !{ptr @_ZNKSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE12_M_check_lenEmPKc, ptr @_ZSt20__throw_length_errorPKc, i64 1}
!133 = !{ptr @_ZNKSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE12_M_check_lenEmPKc, ptr @_ZSt3maxImERKT_S2_S2_, i64 182070}
!134 = !{ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE11_M_allocateEm, ptr @_ZNSt16allocator_traitsISaIN6dealii6TensorILi2ELi3EEEEE8allocateERS3_m, i64 182071}
!135 = !{ptr @_ZSt34__uninitialized_move_if_noexcept_aIPN6dealii6TensorILi2ELi3EEES3_SaIS2_EET0_T_S6_S5_RT1_, ptr @_ZSt32__make_move_if_noexcept_iteratorIN6dealii6TensorILi2ELi3EEEPKS2_ET0_PT_, i64 728284}
!136 = !{ptr @_ZSt34__uninitialized_move_if_noexcept_aIPN6dealii6TensorILi2ELi3EEES3_SaIS2_EET0_T_S6_S5_RT1_, ptr @_ZSt22__uninitialized_copy_aIPKN6dealii6TensorILi2ELi3EEEPS2_S2_ET0_T_S7_S6_RSaIT1_E, i64 364142}
!137 = !{ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE11_S_max_sizeERKS3_, ptr @_ZNSt16allocator_traitsISaIN6dealii6TensorILi2ELi3EEEEE8max_sizeERKS3_, i64 547421}
!138 = !{ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE11_S_max_sizeERKS3_, ptr @_ZSt3minImERKT_S2_S2_, i64 547421}
!139 = !{ptr @_ZNKSt15__new_allocatorIN6dealii6TensorILi2ELi3EEEE8max_sizeEv, ptr @_ZNKSt15__new_allocatorIN6dealii6TensorILi2ELi3EEEE11_M_max_sizeEv, i64 547421}
!140 = !{ptr @_ZN6dealii6TensorILi2ELi3EEC2Ev, ptr @_ZN6dealii6TensorILi1ELi3EEC2Eb, i64 64833408}
!141 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!142 = !{!"function_entry_count", i64 0}
!143 = !{!144, !145, i64 0}
!144 = !{!"_ZTSN6dealii14PolynomialsABFILi1EEE", !145, i64 0, !148, i64 8, !145, i64 16, !149, i64 24, !153, i64 48, !157, i64 72}
!145 = !{!"int", !146, i64 0}
!146 = !{!"omnipotent char", !147, i64 0}
!147 = !{!"Simple C++ TBAA"}
!148 = !{!"any pointer", !146, i64 0}
!149 = !{!"_ZTSSt6vectorIdSaIdEE", !150, i64 0}
!150 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !151, i64 0}
!151 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !152, i64 0}
!152 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !148, i64 0, !148, i64 8, !148, i64 16}
!153 = !{!"_ZTSSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE", !154, i64 0}
!154 = !{!"_ZTSSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE", !155, i64 0}
!155 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE12_Vector_implE", !156, i64 0}
!156 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE17_Vector_impl_dataE", !148, i64 0, !148, i64 8, !148, i64 16}
!157 = !{!"_ZTSSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE", !158, i64 0}
!158 = !{!"_ZTSSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EE", !159, i64 0}
!159 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EE12_Vector_implE", !160, i64 0}
!160 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EE17_Vector_impl_dataE", !148, i64 0, !148, i64 8, !148, i64 16}
!161 = !{!144, !145, i64 16}
!162 = !{!144, !148, i64 8}
!163 = !{!"function_entry_count", i64 7884403}
!164 = !{!165, !148, i64 0}
!165 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS4_EESaIS6_EE17_Vector_impl_dataE", !148, i64 0, !148, i64 8, !148, i64 16}
!166 = !{!"function_entry_count", i64 179262}
!167 = !{!168, !148, i64 0}
!168 = !{!"_ZTSNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE17_Vector_impl_dataE", !148, i64 0, !148, i64 8, !148, i64 16}
!169 = !{!168, !148, i64 8}
!170 = !{!165, !148, i64 8}
!171 = !{!160, !148, i64 0}
!172 = !{!160, !148, i64 8}
!173 = !{!156, !148, i64 0}
!174 = !{!156, !148, i64 8}
!175 = !{!"function_entry_count", i64 10618017}
!176 = !{!152, !148, i64 0}
!177 = !{!152, !148, i64 8}
!178 = !{!179, !179, i64 0}
!179 = !{!"double", !146, i64 0}
!180 = distinct !{!180, !181}
!181 = !{!"llvm.loop.mustprogress"}
!182 = distinct !{!182, !181}
!183 = distinct !{!183, !181}
!184 = !{!185, !148, i64 8}
!185 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi3ELi1EEESaIS2_EE17_Vector_impl_dataE", !148, i64 0, !148, i64 8, !148, i64 16}
!186 = !{!185, !148, i64 0}
!187 = !{!"function_entry_count", i64 269698}
!188 = !{!"function_entry_count", i64 282053}
!189 = !{!"function_entry_count", i64 103595384}
!190 = !{!"function_entry_count", i64 580699156}
!191 = !{!192, !145, i64 0}
!192 = !{!"_ZTSN6dealii14PolynomialsABFILi2EEE", !145, i64 0, !148, i64 8, !145, i64 16, !149, i64 24, !193, i64 48, !197, i64 72}
!193 = !{!"_ZTSSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE", !194, i64 0}
!194 = !{!"_ZTSSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE", !195, i64 0}
!195 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE12_Vector_implE", !196, i64 0}
!196 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE17_Vector_impl_dataE", !148, i64 0, !148, i64 8, !148, i64 16}
!197 = !{!"_ZTSSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE", !198, i64 0}
!198 = !{!"_ZTSSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EE", !199, i64 0}
!199 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EE12_Vector_implE", !200, i64 0}
!200 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EE17_Vector_impl_dataE", !148, i64 0, !148, i64 8, !148, i64 16}
!201 = !{!192, !145, i64 16}
!202 = !{!192, !148, i64 8}
!203 = !{!200, !148, i64 0}
!204 = !{!200, !148, i64 8}
!205 = !{!196, !148, i64 0}
!206 = !{!196, !148, i64 8}
!207 = distinct !{!207, !181}
!208 = distinct !{!208, !181}
!209 = distinct !{!209, !181}
!210 = distinct !{!210, !181}
!211 = distinct !{!211, !181}
!212 = distinct !{!212, !181}
!213 = !{!214, !148, i64 8}
!214 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi3ELi2EEESaIS2_EE17_Vector_impl_dataE", !148, i64 0, !148, i64 8, !148, i64 16}
!215 = !{!214, !148, i64 0}
!216 = !{!"function_entry_count", i64 202370}
!217 = !{!"function_entry_count", i64 2169946}
!218 = !{!"function_entry_count", i64 186334}
!219 = !{!"function_entry_count", i64 287056}
!220 = !{!221, !145, i64 0}
!221 = !{!"_ZTSN6dealii14PolynomialsABFILi3EEE", !145, i64 0, !148, i64 8, !145, i64 16, !149, i64 24, !222, i64 48, !226, i64 72}
!222 = !{!"_ZTSSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE", !223, i64 0}
!223 = !{!"_ZTSSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE", !224, i64 0}
!224 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE12_Vector_implE", !225, i64 0}
!225 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE17_Vector_impl_dataE", !148, i64 0, !148, i64 8, !148, i64 16}
!226 = !{!"_ZTSSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE", !227, i64 0}
!227 = !{!"_ZTSSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE", !228, i64 0}
!228 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE12_Vector_implE", !229, i64 0}
!229 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE17_Vector_impl_dataE", !148, i64 0, !148, i64 8, !148, i64 16}
!230 = !{!221, !145, i64 16}
!231 = distinct !{!231, !181}
!232 = distinct !{!232, !181}
!233 = !{!221, !148, i64 8}
!234 = !{!"function_entry_count", i64 1078808}
!235 = !{!"function_entry_count", i64 5118618}
!236 = !{!"function_entry_count", i64 5302653}
!237 = !{!229, !148, i64 0}
!238 = !{!229, !148, i64 8}
!239 = !{!"function_entry_count", i64 10407865}
!240 = !{!225, !148, i64 0}
!241 = !{!225, !148, i64 8}
!242 = distinct !{!242, !181}
!243 = distinct !{!243, !181}
!244 = distinct !{!244, !181}
!245 = distinct !{!245, !181}
!246 = distinct !{!246, !181}
!247 = distinct !{!247, !181}
!248 = distinct !{!248, !181}
!249 = distinct !{!249, !181}
!250 = !{!"function_entry_count", i64 26112830}
!251 = !{!"function_entry_count", i64 3381240}
!252 = !{!253, !148, i64 8}
!253 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi3ELi3EEESaIS2_EE17_Vector_impl_dataE", !148, i64 0, !148, i64 8, !148, i64 16}
!254 = !{!253, !148, i64 0}
!255 = !{!"function_entry_count", i64 5584274}
!256 = !{!"function_entry_count", i64 10444102}
!257 = !{!"function_entry_count", i64 283557}
!258 = !{!"function_entry_count", i64 409051700}
!259 = !{!"function_entry_count", i64 2121454836}
!260 = !{!"function_entry_count", i64 180988500}
!261 = !{!"function_entry_count", i64 197652618}
!262 = !{!"function_entry_count", i64 9261343}
!263 = !{!"function_entry_count", i64 10618037}
!264 = !{!"function_entry_count", i64 9278493}
!265 = !{!"function_entry_count", i64 2314867}
!266 = !{!"function_entry_count", i64 5301897}
!267 = !{!"function_entry_count", i64 16422537}
!268 = !{!"function_entry_count", i64 42627443}
!269 = !{!152, !148, i64 16}
!270 = !{!"branch_weights", i32 8067773, i32 8354766}
!271 = !{!"function_entry_count", i64 13389012}
!272 = !{!156, !148, i64 16}
!273 = !{!160, !148, i64 16}
!274 = !{!165, !148, i64 16}
!275 = !{!276, !276, i64 0}
!276 = !{!"long", !146, i64 0}
!277 = !{!"function_entry_count", i64 34204152}
!278 = !{!"branch_weights", i32 1, i32 34204153}
!279 = !{!"branch_weights", i32 1, i32 2000}
!280 = distinct !{!280, !181}
!281 = !{!"function_entry_count", i64 3}
!282 = !{!"function_entry_count", i64 16}
!283 = distinct !{!283, !181}
!284 = !{!"function_entry_count", i64 179268}
!285 = !{!"function_entry_count", i64 358552}
!286 = !{!168, !148, i64 16}
!287 = !{!"branch_weights", i32 1, i32 179268}
!288 = !{!"branch_weights", i32 179268, i32 89575}
!289 = distinct !{!289, !181}
!290 = !{!"function_entry_count", i64 268842}
!291 = !{!292, !292, i64 0}
!292 = !{!"vtable pointer", !147, i64 0}
!293 = !{!"branch_weights", i32 4, i32 179266}
!294 = !{!"function_entry_count", i64 179288}
!295 = !{!"function_entry_count", i64 179263}
!296 = !{!"function_entry_count", i64 179277}
!297 = !{!"function_entry_count", i64 8}
!298 = !{!"function_entry_count", i64 179264}
!299 = !{!"function_entry_count", i64 179267}
!300 = !{!148, !148, i64 0}
!301 = !{!"function_entry_count", i64 11605705}
!302 = !{!"function_entry_count", i64 5801197}
!303 = !{!"branch_weights", i32 1, i32 5801198}
!304 = !{!"function_entry_count", i64 8538154}
!305 = !{!"branch_weights", i32 183370, i32 8354786}
!306 = !{!"function_entry_count", i64 12982610}
!307 = !{!"function_entry_count", i64 12962434}
!308 = !{!"function_entry_count", i64 21337395}
!309 = !{!"function_entry_count", i64 7178069}
!310 = !{!"branch_weights", i32 183280, i32 6994791}
!311 = !{!"function_entry_count", i64 16082259}
!312 = !{!"function_entry_count", i64 32608285}
!313 = !{!"function_entry_count", i64 25807262}
!314 = !{!"function_entry_count", i64 25820050}
!315 = !{!"branch_weights", i32 1, i32 4303341}
!316 = !{!"branch_weights", i32 4303341, i32 -542009222}
!317 = distinct !{!317, !181}
!318 = !{!"function_entry_count", i64 12588445}
!319 = !{!"branch_weights", i32 11254134, i32 1334313}
!320 = !{!"function_entry_count", i64 46393777}
!321 = distinct !{!321, !181}
!322 = !{!"function_entry_count", i64 551544}
!323 = !{!"branch_weights", i32 551545, i32 1}
!324 = distinct !{!324, !181}
!325 = !{!"function_entry_count", i64 271481}
!326 = distinct !{!326, !181}
!327 = distinct !{!327, !181}
!328 = !{!196, !148, i64 16}
!329 = !{!200, !148, i64 16}
!330 = distinct !{!330, !181}
!331 = !{!"function_entry_count", i64 1130961}
!332 = !{!"branch_weights", i32 1130962, i32 1}
!333 = distinct !{!333, !181}
!334 = !{!"function_entry_count", i64 4593520}
!335 = distinct !{!335, !181}
!336 = distinct !{!336, !181}
!337 = !{!"function_entry_count", i64 10953335}
!338 = !{!"function_entry_count", i64 21918802}
!339 = !{!225, !148, i64 16}
!340 = !{!"branch_weights", i32 1262844, i32 9690493}
!341 = !{!"function_entry_count", i64 12879983}
!342 = !{!"function_entry_count", i64 5484724}
!343 = !{!"function_entry_count", i64 6214972}
!344 = !{!229, !148, i64 16}
!345 = !{!"branch_weights", i32 5302654, i32 182072}
!346 = !{!"function_entry_count", i64 5669211}
!347 = !{!"function_entry_count", i64 1090940}
!348 = !{!"function_entry_count", i64 545470}
!349 = !{!"branch_weights", i32 1, i32 545471}
!350 = !{!"function_entry_count", i64 9874527}
!351 = !{!"branch_weights", i32 184036, i32 9690493}
!352 = !{!"function_entry_count", i64 2326999}
!353 = !{!"function_entry_count", i64 9183938}
!354 = !{!"function_entry_count", i64 12017491}
!355 = distinct !{!355, !181}
!356 = !{!"function_entry_count", i64 627233310}
!357 = !{!"branch_weights", i32 627233311, i32 1}
!358 = distinct !{!358, !181}
!359 = !{!"function_entry_count", i64 4316510434}
!360 = !{!"branch_weights", i32 1079127609, i32 -2136712079}
!361 = distinct !{!361, !181}
!362 = !{!"function_entry_count", i64 364142}
!363 = !{!"function_entry_count", i64 182071}
!364 = !{!"branch_weights", i32 1, i32 182072}
!365 = !{!"function_entry_count", i64 366106}
!366 = !{!"branch_weights", i32 184036, i32 182072}
!367 = !{!"function_entry_count", i64 547421}
!368 = !{!"function_entry_count", i64 364898}
!369 = !{!"function_entry_count", i64 729492}
!370 = distinct !{!370, !181}
!371 = !{!"function_entry_count", i64 2026044}
!372 = distinct !{!372, !181}
