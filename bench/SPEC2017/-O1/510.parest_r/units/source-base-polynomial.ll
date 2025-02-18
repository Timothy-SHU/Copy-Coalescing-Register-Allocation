; ModuleID = 'source/base/polynomial.cc'
source_filename = "source/base/polynomial.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::vector.42" = type { %"struct.std::_Vector_base.43" }
%"struct.std::_Vector_base.43" = type { %"struct.std::_Vector_base<const std::vector<double> *, std::allocator<const std::vector<double> *>>::_Vector_impl" }
%"struct.std::_Vector_base<const std::vector<double> *, std::allocator<const std::vector<double> *>>::_Vector_impl" = type { %"struct.std::_Vector_base<const std::vector<double> *, std::allocator<const std::vector<double> *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<const std::vector<double> *, std::allocator<const std::vector<double> *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.dealii::Polynomials::Polynomial" = type { %"class.dealii::Subscriptor", %"class.std::vector" }
%"class.dealii::Subscriptor" = type { ptr, i32, %"class.std::map", ptr }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<const char *, std::pair<const char *const, unsigned int>, std::_Select1st<std::pair<const char *const, unsigned int>>, std::less<const char *>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<const char *, std::pair<const char *const, unsigned int>, std::_Select1st<std::pair<const char *const, unsigned int>>, std::less<const char *>>::_Rb_tree_impl" = type { %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_key_compare" = type { %"struct.std::less" }
%"struct.std::less" = type { i8 }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl" }
%"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl" = type { %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data" }
%"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.dealii::Polynomials::Monomial" = type { %"class.dealii::Polynomials::Polynomial" }
%"class.std::allocator.16" = type { i8 }
%"class.dealii::Polynomials::Polynomial.19" = type { %"class.dealii::Subscriptor", %"class.std::vector.20" }
%"class.std::vector.20" = type { %"struct.std::_Vector_base.21" }
%"struct.std::_Vector_base.21" = type { %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl" }
%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl" = type { %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data" }
%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.dealii::Polynomials::Monomial.25" = type { %"class.dealii::Polynomials::Polynomial.19" }
%"class.std::allocator.22" = type { i8 }
%"class.std::vector.27" = type { %"struct.std::_Vector_base.28" }
%"struct.std::_Vector_base.28" = type { %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<float>, std::allocator<dealii::Polynomials::Polynomial<float>>>::_Vector_impl" }
%"struct.std::_Vector_base<dealii::Polynomials::Polynomial<float>, std::allocator<dealii::Polynomials::Polynomial<float>>>::_Vector_impl" = type { %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<float>, std::allocator<dealii::Polynomials::Polynomial<float>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<dealii::Polynomials::Polynomial<float>, std::allocator<dealii::Polynomials::Polynomial<float>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.32" = type { %"struct.std::_Vector_base.33" }
%"struct.std::_Vector_base.33" = type { %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl" }
%"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl" = type { %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::allocator.34" = type { i8 }
%"class.dealii::Polynomials::LagrangeEquidistant" = type { %"class.dealii::Polynomials::Polynomial.19" }
%"struct.std::_Vector_base<dealii::Point<1>, std::allocator<dealii::Point<1>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.dealii::Point" = type { %"class.dealii::Tensor" }
%"class.dealii::Tensor" = type { [1 x double] }
%"class.dealii::Polynomials::Legendre" = type { %"class.dealii::Polynomials::Polynomial.19" }
%"class.dealii::Polynomials::Hierarchical" = type { %"class.dealii::Polynomials::Polynomial.19" }

$_ZN6dealii11Polynomials10PolynomialIfEC5ERKSt6vectorIfSaIfEE = comdat any

$_ZNSt6vectorIfSaIfEEC2ERKS1_ = comdat any

$_ZN6dealii11Polynomials10PolynomialIfEC5Ev = comdat any

$_ZNK6dealii11Polynomials10PolynomialIfE5valueEf = comdat any

$_ZNK6dealii11Polynomials10PolynomialIfE5valueEfRSt6vectorIfSaIfEE = comdat any

$_ZNK6dealii11Polynomials10PolynomialIfE6degreeEv = comdat any

$_ZN6dealii11Polynomials10PolynomialIfE5scaleEf = comdat any

$_ZN6dealii11Polynomials10PolynomialIfE5scaleERSt6vectorIfSaIfEEf = comdat any

$_ZNK6dealii11Polynomials10PolynomialIfE10derivativeEv = comdat any

$_ZNK6dealii11Polynomials10PolynomialIfE9primitiveEv = comdat any

$_ZN6dealii11Polynomials10PolynomialIfEmLEd = comdat any

$_ZN6dealii11Polynomials10PolynomialIfEmLERKS2_ = comdat any

$_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_ = comdat any

$_ZNSt6vectorIfSaIfEEaSERKS1_ = comdat any

$_ZN6dealii11Polynomials10PolynomialIfEpLERKS2_ = comdat any

$_ZN6dealii11Polynomials10PolynomialIfEmIERKS2_ = comdat any

$_ZNK6dealii11Polynomials10PolynomialIfE5printERSo = comdat any

$_ZN6dealii11Polynomials10PolynomialIfE8multiplyERSt6vectorIfSaIfEEf = comdat any

$_ZN6dealii11Polynomials10PolynomialIdEC5ERKSt6vectorIdSaIdEE = comdat any

$_ZN6dealii11Polynomials10PolynomialIdEC5Ev = comdat any

$_ZNK6dealii11Polynomials10PolynomialIdE5valueEd = comdat any

$_ZNK6dealii11Polynomials10PolynomialIdE5valueEdRSt6vectorIdSaIdEE = comdat any

$_ZNK6dealii11Polynomials10PolynomialIdE6degreeEv = comdat any

$_ZN6dealii11Polynomials10PolynomialIdE5scaleEd = comdat any

$_ZN6dealii11Polynomials10PolynomialIdE5scaleERSt6vectorIdSaIdEEd = comdat any

$_ZNK6dealii11Polynomials10PolynomialIdE10derivativeEv = comdat any

$_ZNSt6vectorIdSaIdEEC2EmRKS0_ = comdat any

$_ZNK6dealii11Polynomials10PolynomialIdE9primitiveEv = comdat any

$_ZN6dealii11Polynomials10PolynomialIdEmLEd = comdat any

$_ZN6dealii11Polynomials10PolynomialIdEmLERKS2_ = comdat any

$_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_ = comdat any

$_ZNSt6vectorIdSaIdEEaSERKS1_ = comdat any

$_ZN6dealii11Polynomials10PolynomialIdEpLERKS2_ = comdat any

$_ZN6dealii11Polynomials10PolynomialIdEmIERKS2_ = comdat any

$_ZNK6dealii11Polynomials10PolynomialIdE5printERSo = comdat any

$_ZN6dealii11Polynomials10PolynomialIdE8multiplyERSt6vectorIdSaIdEEd = comdat any

$_ZN6dealii11Polynomials10PolynomialIfE5shiftIfEEvT_ = comdat any

$_ZN6dealii11Polynomials10PolynomialIfE5shiftIfEEvRSt6vectorIfSaIfEET_ = comdat any

$_ZN6dealii11Polynomials10PolynomialIfE5shiftIdEEvT_ = comdat any

$_ZN6dealii11Polynomials10PolynomialIfE5shiftIdEEvRSt6vectorIfSaIfEET_ = comdat any

$_ZN6dealii11Polynomials10PolynomialIdE5shiftIfEEvT_ = comdat any

$_ZN6dealii11Polynomials10PolynomialIdE5shiftIfEEvRSt6vectorIdSaIdEET_ = comdat any

$_ZN6dealii11Polynomials10PolynomialIdE5shiftIdEEvT_ = comdat any

$_ZN6dealii11Polynomials10PolynomialIdE5shiftIdEEvRSt6vectorIdSaIdEET_ = comdat any

$_ZN6dealii11Polynomials8MonomialIfEC5Ejd = comdat any

$_ZN6dealii11Polynomials8MonomialIfE11make_vectorEjd = comdat any

$_ZN6dealii11Polynomials8MonomialIfE23generate_complete_basisEj = comdat any

$_ZNSt6vectorIN6dealii11Polynomials10PolynomialIfEESaIS3_EE7reserveEm = comdat any

$_ZN6dealii11Polynomials8MonomialIdEC5Ejd = comdat any

$_ZN6dealii11Polynomials8MonomialIdE11make_vectorEjd = comdat any

$_ZN6dealii11Polynomials8MonomialIdE23generate_complete_basisEj = comdat any

$_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE7reserveEm = comdat any

$_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2EmRKS3_RKS4_ = comdat any

$_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2EmRKS4_ = comdat any

$_ZNSt6vectorIPKS_IdSaIdEESaIS3_EED2Ev = comdat any

$_ZN6dealii11Polynomials10PolynomialIdED2Ev = comdat any

$_ZN6dealii11Polynomials10PolynomialIdED0Ev = comdat any

$_ZN6dealii11Polynomials10PolynomialIfED2Ev = comdat any

$_ZN6dealii11Polynomials10PolynomialIfED0Ev = comdat any

$_ZN6dealii11Polynomials8MonomialIfED0Ev = comdat any

$_ZN6dealii11Polynomials8MonomialIdED0Ev = comdat any

$_ZN6dealii11Polynomials19LagrangeEquidistantD0Ev = comdat any

$_ZN6dealii11Polynomials8LegendreD0Ev = comdat any

$_ZN6dealii11Polynomials12HierarchicalD0Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt15__new_allocatorIdE8allocateEmPKv = comdat any

$_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEE8allocateEmPKv = comdat any

$_ZSt18__do_uninit_fill_nIPN6dealii11Polynomials10PolynomialIdEEmS3_ET_S5_T0_RKT1_ = comdat any

$_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_ = comdat any

$_ZSt16__do_uninit_copyIPKN6dealii11Polynomials10PolynomialIdEEPS3_ET0_T_S8_S7_ = comdat any

$_ZNSt15__new_allocatorIPKSt6vectorIdSaIdEEE8allocateEmPKv = comdat any

$_ZNSt6vectorIPKS_IdSaIdEESaIS3_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS3_S5_EEmRKS3_ = comdat any

$_ZNSt6vectorIdSaIdEE19_M_range_initializeIN9__gnu_cxx17__normal_iteratorIPdS1_EEEEvT_S7_St20forward_iterator_tag = comdat any

$_ZNSt6vectorIdSaIdEE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPdS1_EEEEvT_S7_St20forward_iterator_tag = comdat any

$_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_ = comdat any

$_ZNSt15__new_allocatorIfE8allocateEmPKv = comdat any

$_ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEmRKf = comdat any

$_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd = comdat any

$_ZNSt6vectorIfSaIfEE19_M_range_initializeIN9__gnu_cxx17__normal_iteratorIPfS1_EEEEvT_S7_St20forward_iterator_tag = comdat any

$_ZNSt6vectorIfSaIfEE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPfS1_EEEEvT_S7_St20forward_iterator_tag = comdat any

$_ZNSt6vectorIdSaIdEE19_M_range_initializeIN9__gnu_cxx17__normal_iteratorIPfS_IfSaIfEEEEEEvT_S9_St20forward_iterator_tag = comdat any

$_ZNSt6vectorIfSaIfEE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPdS_IdSaIdEEEEEEvT_S9_St20forward_iterator_tag = comdat any

$_ZNSt6vectorIfSaIfEE19_M_range_initializeIN9__gnu_cxx17__normal_iteratorIPdS_IdSaIdEEEEEEvT_S9_St20forward_iterator_tag = comdat any

$_ZNSt6vectorIdSaIdEE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPfS_IfSaIfEEEEEEvT_S9_St20forward_iterator_tag = comdat any

$_ZNSt6vectorIN6dealii11Polynomials10PolynomialIfEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_ = comdat any

$_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIfEEE8allocateEmPKv = comdat any

$_ZSt16__do_uninit_copyIPKN6dealii11Polynomials10PolynomialIfEEPS3_ET0_T_S8_S7_ = comdat any

$_ZNSt6vectorIN6dealii11Polynomials10PolynomialIfEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_ = comdat any

$_ZTVN6dealii11Polynomials10PolynomialIfEE = comdat any

$_ZTVN6dealii11Polynomials10PolynomialIdEE = comdat any

$_ZTVN6dealii11Polynomials8MonomialIfEE = comdat any

$_ZTVN6dealii11Polynomials8MonomialIdEE = comdat any

$_ZTVN6dealii11Polynomials19LagrangeEquidistantE = comdat any

$_ZTVN6dealii11Polynomials8LegendreE = comdat any

$_ZTVN6dealii11Polynomials12HierarchicalE = comdat any

$_ZTSN6dealii11Polynomials10PolynomialIdEE = comdat any

$_ZTIN6dealii11Polynomials10PolynomialIdEE = comdat any

$_ZTSN6dealii11Polynomials10PolynomialIfEE = comdat any

$_ZTIN6dealii11Polynomials10PolynomialIfEE = comdat any

$_ZTSN6dealii11Polynomials8MonomialIfEE = comdat any

$_ZTIN6dealii11Polynomials8MonomialIfEE = comdat any

$_ZTSN6dealii11Polynomials8MonomialIdEE = comdat any

$_ZTIN6dealii11Polynomials8MonomialIdEE = comdat any

$_ZTSN6dealii11Polynomials19LagrangeEquidistantE = comdat any

$_ZTIN6dealii11Polynomials19LagrangeEquidistantE = comdat any

$_ZTSN6dealii11Polynomials8LegendreE = comdat any

$_ZTIN6dealii11Polynomials8LegendreE = comdat any

$_ZTSN6dealii11Polynomials12HierarchicalE = comdat any

$_ZTIN6dealii11Polynomials12HierarchicalE = comdat any

@_ZTVN6dealii11Polynomials10PolynomialIfEE = weak_odr dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN6dealii11Polynomials10PolynomialIfEE, ptr @_ZN6dealii11Polynomials10PolynomialIfED2Ev, ptr @_ZN6dealii11Polynomials10PolynomialIfED0Ev] }, comdat, align 8
@.str = private unnamed_addr constant [4 x i8] c" x^\00", align 1
@_ZTVN6dealii11Polynomials10PolynomialIdEE = weak_odr dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN6dealii11Polynomials10PolynomialIdEE, ptr @_ZN6dealii11Polynomials10PolynomialIdED2Ev, ptr @_ZN6dealii11Polynomials10PolynomialIdED0Ev] }, comdat, align 8
@_ZTVN6dealii11Polynomials8MonomialIfEE = weak_odr dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN6dealii11Polynomials8MonomialIfEE, ptr @_ZN6dealii11Polynomials10PolynomialIfED2Ev, ptr @_ZN6dealii11Polynomials8MonomialIfED0Ev] }, comdat, align 8
@_ZTVN6dealii11Polynomials8MonomialIdEE = weak_odr dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN6dealii11Polynomials8MonomialIdEE, ptr @_ZN6dealii11Polynomials10PolynomialIdED2Ev, ptr @_ZN6dealii11Polynomials8MonomialIdED0Ev] }, comdat, align 8
@_ZTVN6dealii11Polynomials19LagrangeEquidistantE = linkonce_odr dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN6dealii11Polynomials19LagrangeEquidistantE, ptr @_ZN6dealii11Polynomials10PolynomialIdED2Ev, ptr @_ZN6dealii11Polynomials19LagrangeEquidistantD0Ev] }, comdat, align 8
@_ZZN6dealii11Polynomials19LagrangeEquidistant20compute_coefficientsEjjE2x1 = internal unnamed_addr constant [4 x double] [double 1.000000e+00, double -1.000000e+00, double 0.000000e+00, double 1.000000e+00], align 16
@_ZZN6dealii11Polynomials19LagrangeEquidistant20compute_coefficientsEjjE2x2 = internal unnamed_addr constant [9 x double] [double 1.000000e+00, double -3.000000e+00, double 2.000000e+00, double 0.000000e+00, double 4.000000e+00, double -4.000000e+00, double 0.000000e+00, double -1.000000e+00, double 2.000000e+00], align 16
@_ZZN6dealii11Polynomials19LagrangeEquidistant20compute_coefficientsEjjE2x3 = internal unnamed_addr constant [16 x double] [double 1.000000e+00, double -5.500000e+00, double 9.000000e+00, double -4.500000e+00, double 0.000000e+00, double 9.000000e+00, double -2.250000e+01, double 1.350000e+01, double 0.000000e+00, double -4.500000e+00, double 1.800000e+01, double -1.350000e+01, double 0.000000e+00, double 1.000000e+00, double -4.500000e+00, double 4.500000e+00], align 16
@_ZZN6dealii11Polynomials19LagrangeEquidistant20compute_coefficientsEjjE2x4 = internal unnamed_addr constant [25 x double] [double 1.000000e+00, double 0xC020AAAAAAAAAAAB, double 0x4037555555555555, double 0xC03AAAAAAAAAAAAB, double 0x4025555555555555, double 0.000000e+00, double 1.600000e+01, double 0xC051555555555555, double 9.600000e+01, double 0xC045555555555555, double 0.000000e+00, double -1.200000e+01, double 7.600000e+01, double -1.280000e+02, double 6.400000e+01, double 0.000000e+00, double 0x4015555555555555, double 0xC042AAAAAAAAAAAB, double 0x4052AAAAAAAAAAAB, double 0xC045555555555555, double 0.000000e+00, double -1.000000e+00, double 0x401D555555555555, double -1.600000e+01, double 0x4025555555555555], align 16
@_ZZN6dealii11Polynomials19LagrangeEquidistant20compute_coefficientsEjjE2x5 = internal unnamed_addr constant [36 x double] [double 1.000000e+00, double 0xC026D55555555555, double 4.687500e+01, double 0xC05622AAAAAAAAAB, double 7.812500e+01, double 0xC03A0AAAAAAAAAAB, double 0.000000e+00, double 2.500000e+01, double 0xC0640D5555555555, double 0x40771CAAAAAAAAAB, double 0xC076C95555555555, double 0x406046AAAAAAAAAB, double 0.000000e+00, double -2.500000e+01, double 0x406BDD5555555555, double 0xC08334AAAAAAAAAB, double 0x408528AAAAAAAAAB, double 0xC07046AAAAAAAAAB, double 0.000000e+00, double 0x4030AAAAAAAAAAAB, double -1.625000e+02, double 0x407FE6AAAAAAAAAB, double -6.250000e+02, double 0x407046AAAAAAAAAB, double 0.000000e+00, double -6.250000e+00, double 0x404FC55555555555, double 0xC06AB15555555555, double 0x4071E75555555555, double 0xC06046AAAAAAAAAB, double 0.000000e+00, double 1.000000e+00, double 0xC024D55555555555, double 0x40423AAAAAAAAAAB, double 0xC04A0AAAAAAAAAAB, double 0x403A0AAAAAAAAAAB], align 16
@_ZZN6dealii11Polynomials19LagrangeEquidistant20compute_coefficientsEjjE2x6 = internal unnamed_addr constant [49 x double] [double 1.000000e+00, double -1.470000e+01, double 8.120000e+01, double -2.205000e+02, double 3.150000e+02, double -2.268000e+02, double 6.480000e+01, double 0.000000e+00, double 3.600000e+01, double -3.132000e+02, double 1.044000e+03, double -1.674000e+03, double 1.296000e+03, double -3.888000e+02, double 0.000000e+00, double -4.500000e+01, double 5.265000e+02, double -2.074500e+03, double 3.699000e+03, double -3.078000e+03, double 9.720000e+02, double 0.000000e+00, double 4.000000e+01, double -5.080000e+02, double 2.232000e+03, double -4.356000e+03, double 3.888000e+03, double -1.296000e+03, double 0.000000e+00, double -2.250000e+01, double 2.970000e+02, double -1.381500e+03, double 2.889000e+03, double -2.754000e+03, double 9.720000e+02, double 0.000000e+00, double 7.200000e+00, double -9.720000e+01, double 4.680000e+02, double -1.026000e+03, double 1.036800e+03, double -3.888000e+02, double 0.000000e+00, double -1.000000e+00, double 1.370000e+01, double -6.750000e+01, double 1.530000e+02, double -1.620000e+02, double 6.480000e+01], align 16
@_ZZN6dealii11Polynomials19LagrangeEquidistant20compute_coefficientsEjjE2x7 = internal unnamed_addr constant [64 x double] [double 1.000000e+00, double -1.815000e+01, double 0x405FEB05B05B05B0, double 0xC07CCAB05B05B05B, double 0x408D2DC71C71C71C, double 0xC090C71F49F49F4A, double 0x40846CD82D82D82E, double 0xC0646CD82D82D82E, double 0.000000e+00, double 4.900000e+01, double -5.463500e+02, double 0x40A2FEFA4FA4FA50, double 0xC0B5B05000000000, double 0x40BAE6338E38E38E, double 0xC0B13BD666666666, double 0x4091DF3D27D27D28, double 0.000000e+00, double -7.350000e+01, double 0x4090D3199999999A, double 0xC0B5EF3222222222, double 0x40CBBEF555555555, double 0xC0D276F800000000, double 0x40C8E4A777777777, double 0xC0AACEDBBBBBBBBC, double 0.000000e+00, double 0x40546AAAAAAAAAAB, double 0xC0942EC71C71C71C, double 0x40BCF49C71C71C72, double 0xC0D3D94871C71C72, double 0x40DC272B1C71C71C, double 0xC0D3F24B1C71C71C, double 0x40B6570C71C71C72, double 0.000000e+00, double -6.125000e+01, double 1.004500e+03, double 0xC0B7AE0C71C71C72, double 0x40D131D555555555, double 0xC0D9C269C71C71C7, double 0x40D3260AAAAAAAAB, double 0xC0B6570C71C71C72, double 0.000000e+00, double 2.940000e+01, double -4.924500e+02, double 0x40A7F04444444444, double 0xC0C212ED55555555, double 0x40CC5004CCCCCCCD, double 0xC0C6055911111111, double 0x40AACEDBBBBBBBBC, double 0.000000e+00, double 0xC020555555555555, double 0x4061564FA4FA4FA5, double 0xC08B86BE93E93E94, double 0x40A55CF1C71C71C7, double 0xC0B1532E38E38E39, double 0x40AC15A93E93E93F, double 0xC091DF3D27D27D28, double 0.000000e+00, double 1.000000e+00, double -1.715000e+01, double 0x405BA16C16C16C17, double 0xC075E25555555555, double 0x40823C9C71C71C72, double 0xC07EA34444444444, double 0x40646CD82D82D82E], align 16
@_ZZN6dealii11Polynomials19LagrangeEquidistant20compute_coefficientsEjjE2x8 = internal unnamed_addr constant [81 x double] [double 1.000000e+00, double 0xC035BE2BE2BE2BE3, double 0x40676FF2FF2FF2FF, double 0xC08AB33333333333, double 0x40A1D11111111111, double -3.686400e+03, double 0x40ABBBBBBBBBBBBC, double 0xC09D41D41D41D41D, double 0x407A01A01A01A01A, double 0.000000e+00, double 6.400000e+01, double 0xC08B7C57C57C57C5, double 0x40B3638E38E38E39, double 0xC0CD3E93E93E93E9, double 0x40D98E38E38E38E4, double 0xC0D9F49F49F49F4A, double 0x40CC71C71C71C71C, double 0xC0AA01A01A01A01A, double 0.000000e+00, double -1.120000e+02, double 1.987200e+03, double 0xC0C97D82D82D82D8, double 0x40E53C16C16C16C1, double 0xC0F3E38E38E38E39, double 0x40F53E93E93E93E9, double 0xC0E82D82D82D82D8, double 0x40C6C16C16C16C17, double 0.000000e+00, double 0x4062AAAAAAAAAAAB, double 0xC0A6416C16C16C17, double 2.040320e+04, double 0xC0F1DDDDDDDDDDDE, double 1.454080e+05, double 0xC103DDDDDDDDDDDE, double 0x40F7777777777777, double 0xC0D6C16C16C16C17, double 0.000000e+00, double -1.400000e+02, double 2.764000e+03, double 0xC0D43C71C71C71C7, double 0x40F315C71C71C71C, double 0xC103E38E38E38E39, double 0x410738E38E38E38E, double 0xC0FC71C71C71C71C, double 0x40DC71C71C71C71C, double 0.000000e+00, double 8.960000e+01, double -1.804800e+03, double 0x40CB2C16C16C16C1, double 0xC0EA82D82D82D82E, double 0x40FCAD82D82D82D8, double 0xC10160B60B60B60B, double 0x40F60B60B60B60B6, double 0xC0D6C16C16C16C17, double 0.000000e+00, double 0xC042AAAAAAAAAAAB, double 0x4087CFA4FA4FA4FA, double -5.984000e+03, double 0x40D75BBBBBBBBBBC, double -5.324800e+04, double 0x40F0444444444444, double 0xC0E5555555555555, double 0x40C6C16C16C16C17, double 0.000000e+00, double 0x4022492492492492, double 0xC0678AF8AF8AF8B0, double 0x40976C16C16C16C1, double 0xC0B7D27D27D27D28, double 0x40CB1C71C71C71C7, double 0xC0D16C16C16C16C1, double 0x40C7917917917918, double 0xC0AA01A01A01A01A, double 0.000000e+00, double -1.000000e+00, double 0x4034BE2BE2BE2BE3, double 0xC064D82D82D82D83, double 0x40857D27D27D27D2, double 0xC098E38E38E38E39, double 0x40A05B05B05B05B0, double 0xC096C16C16C16C17, double 0x407A01A01A01A01A], align 16
@_ZZN6dealii11Polynomials19LagrangeEquidistant20compute_coefficientsEjjE2x9 = internal unnamed_addr constant [100 x double] [double 1.000000e+00, double 0xC03975F15F15F15F, double 0x40705C36DB6DB6DB, double 0xC096B74924924925, double 0x40B3057E00000000, double 0xC0C41BFE33333333, double 0x40CB07CE00000000, double 0xC0C6658D6DB6DB6E, double 0x40B4DA2292492492, double 0xC090AE820EA0EA0F, double 0.000000e+00, double 8.100000e+01, double 0xC094D5457C57C57C, double 0x40C1F97CAF8AF8B0, double 0xC0E10E989999999A, double 0x40F38A1F2CCCCCCD, double 0xC0FBC05533333333, double 0x40F7EC06F3333333, double 0xC0E6EFF2D41D41D4, double 0x40C2C45250750750, double 0.000000e+00, double -1.620000e+02, double 0x40AA87457C57C57C, double 0xC0DA7D53C57C57C5, double 0x40FBB2F2E6666666, double 0xC110FC95ACCCCCCD, double 0x41195D155999999A, double 0xC116B4A2CCCCCCCD, double 0x41066A7EC3A83A84, double 0xC0E2C45250750750, double 0.000000e+00, double 2.520000e+02, double -5.660100e+03, double 0x40E7EB0266666666, double 0xC10AC89633333333, double 0x41215C5F6999999A, double 0xC12B191AACCCCCCD, double 0x4129236B1999999A, double 0xC1198B3726666666, double 0x40F5E50AB3333333, double 0.000000e+00, double -2.835000e+02, double 0x40B9B43CCCCCCCCD, double 0xC0ED018C66666666, double 0x4110FF8A03333333, double 0xC12701AECE666666, double 0x4132A81B5B333333, double 0xC131E40BB4CCCCCD, double 0x4122B3A3CE666666, double 0xC1006BC806666666, double 0.000000e+00, double 2.268000e+02, double -5.366250e+03, double 0x40E8459600000000, double 0xC10D53D880000000, double 0x41248199D4CCCCCD, double 0xC1312CF590000000, double 0x4130FA8098000000, double 0xC1223EDE40000000, double 0x41006BC806666666, double 0.000000e+00, double -1.260000e+02, double 3.019050e+03, double 0xC0DBC96733333333, double 0x410126A8A6666666, double 0xC11895D193333333, double 0x412526BF46666666, double 0xC1257D3EA6666666, double 0x4117B820ECCCCCCD, double 0xC0F5E50AB3333333, double 0.000000e+00, double 0x4047249249249249, double 0xC0917BD41D41D41D, double 0x40C4DA9F8AF8AF8B, double 0xC0EA2768CCCCCCCD, double 0x41031B46D999999A, double 0xC110CDCFD999999A, double 0x41117E1A283A83A8, double 0xC103CF3A715F15F1, double 0x40E2C45250750750, double 0.000000e+00, double -1.012500e+01, double 0x406ECCC57C57C57C, double 0xC0A28A4F8AF8AF8B, double 0x40C7891233333333, double 0xC0E174665999999A, double 0x40EF43E84CCCCCCD, double 0xC0F09FAE0CCCCCCD, double 0x40E349C660EA0EA1, double 0xC0C2C45250750750, double 0.000000e+00, double 1.000000e+00, double 0xC03875F15F15F15F, double 0x406DA9AF8AF8AF8B, double 0xC093021333333333, double 0x40AC89F266666666, double 0xC0B9F30333333333, double 0x40BC1C98CCCCCCCD, double 0xC0B0AE820EA0EA0F, double 0x4090AE820EA0EA0F], align 16
@_ZZN6dealii11Polynomials19LagrangeEquidistant20compute_coefficientsEjjE3x10 = internal unnamed_addr constant [121 x double] [double 1.000000e+00, double 0xC03D4A28A28A28A3, double 0x4075F74514514514, double 0xC0A21ADD92BCBA05, double 0x40C26412505DE96D, double 0xC0D8468DED097B42, double 0x40E53AC04BDA12F7, double 0xC0E86C1119BC466F, double 0x40E1C2F529FD4A7F, double 0xC0CD9A4345FB7C2A, double 0x40A58776BE885A4D, double 0.000000e+00, double 1.000000e+02, double 0xC09E23DF7DF7DF7E, double 0x40CEF7E082082082, double 0xC0F1DE1BC8039CAC, double 0x41099AE78E38E38E, double 0xC117B271425ED098, double 0x411C65F71C71C71C, double 0xC1154B2EA53FA950, double 0x41022A4C30C30C31, double 0xC0DAE9546E2A70E0, double 0.000000e+00, double -2.250000e+02, double 0x40B5592DB6DB6DB7, double 0xC0E944EADB6DB6DB, double 0x41100826B2CB2CB3, double 0xC128936FA38E38E4, double 0x4137E773DC71C71C, double 0xC13DBFD4C71C71C7, double 0x4136F8B059659659, double 0xC1240EB420820821, double 0x40FE467EFBEFBEFC, double 0.000000e+00, double 4.000000e+02, double 0xC0C4474514514514, double 0x40F9DF547C9D1F27, double 0xC1218241AC056B01, double 0x413C4A4BC71C71C7, double 0xC14CB5FD38E38E39, double 0x41527D9D8E38E38E, double 0xC14D5DFB2CB2CB2D, double 0x413A3D18B8362E0E, double 0xC1142EFF529FD4A8, double 0.000000e+00, double -5.250000e+02, double 0x40CB784AAAAAAAAB, double 0xC1023B40AAAAAAAB, double 0x4129BC0FFB425ED1, double 0xC145A1AF91C71C72, double 0x4156BE9598E38E39, double 0xC15E3682B8E38E39, double 0x4158A2F755555555, double 0xC146846E71C71C72, double 0x4121A91F684BDA13, double 0.000000e+00, double 5.040000e+02, double -1.375400e+04, double 1.496250e+05, double 0xC12A830038E38E39, double 0x4146F383F1C71C72, double 0xC158D76378E38E39, double 0x4160F4471C71C71C, double 0xC15C5866E38E38E4, double 0x414A7DAF1C71C71C, double 0xC1253158E38E38E4, double 0.000000e+00, double -3.500000e+02, double 0x40C2E2071C71C71C, double 0xC0FA18F9A12F684C, double 0x412350DC425ED098, double 0xC1411875438E38E4, double 0x4152F169A71C71C7, double 0xC15A7A4B0E38E38E, double 5.937500e+06, double 0xC145A26012F684BE, double 0x4121A91F684BDA13, double 0.000000e+00, double 0x40656DB6DB6DB6DB, double 0xC0B2A830C30C30C3, double 0x40EA164618618618, double 0xC11396DC3B990EE6, double 0x4131A26E71C71C72, double 0xC143EA7855555555, double 0x414C69D72CB2CB2D, double 0xC148D36820820821, double 0x4138386596596596, double 0xC1142EFF529FD4A8, double 0.000000e+00, double -5.625000e+01, double 0x4098A4EDB6DB6DB7, double 0xC0D1617124924925, double 0x40FA64C620820821, double 0xC118146A471C71C7, double 0x412B9F430E38E38E, double 0xC1340DBC1C71C71C, double 0x4131DCCAEBAEBAEC, double 0xC121C96A9A69A69A, double 0x40FE467EFBEFBEFC, double 0.000000e+00, double 0x402638E38E38E38E, double 0xC073918618618618, double 0x40ABCA546E2A70E0, double 0xC0D549363C8039CB, double 0x40F3A1517B425ED1, double 0xC106CF7B684BDA13, double 0x4110D01BDA12F685, double 0xC10E7A2A7F529FD5, double 0x40FEF2BAB1E401CE, double 0xC0DAE9546E2A70E0, double 0.000000e+00, double -1.000000e+00, double 0x403C4A28A28A28A3, double 0xC07432A28A28A28A, double 0x409F291282EF4B66, double 0xC0BCFDE000000000, double 0x40D10715ED097B42, double 0xC0D96E6AAAAAAAAB, double 0x40D769B788CDE233, double 0xC0C8386596596596, double 0x40A58776BE885A4D], align 16
@_ZN6dealii11Polynomials8Legendre22recursive_coefficientsE = dso_local global %"class.std::vector.42" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@_ZN6dealii11Polynomials8Legendre20shifted_coefficientsE = dso_local global %"class.std::vector.42" zeroinitializer, align 8
@_ZTVN6dealii11Polynomials8LegendreE = linkonce_odr dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN6dealii11Polynomials8LegendreE, ptr @_ZN6dealii11Polynomials10PolynomialIdED2Ev, ptr @_ZN6dealii11Polynomials8LegendreD0Ev] }, comdat, align 8
@_ZN6dealii11Polynomials12Hierarchical22recursive_coefficientsE = dso_local global %"class.std::vector.42" zeroinitializer, align 8
@_ZTVN6dealii11Polynomials12HierarchicalE = linkonce_odr dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN6dealii11Polynomials12HierarchicalE, ptr @_ZN6dealii11Polynomials10PolynomialIdED2Ev, ptr @_ZN6dealii11Polynomials12HierarchicalD0Ev] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN6dealii11Polynomials10PolynomialIdEE = weak_odr dso_local constant [38 x i8] c"N6dealii11Polynomials10PolynomialIdEE\00", comdat, align 1
@_ZTIN6dealii11SubscriptorE = external constant ptr
@_ZTIN6dealii11Polynomials10PolynomialIdEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii11Polynomials10PolynomialIdEE, ptr @_ZTIN6dealii11SubscriptorE }, comdat, align 8
@_ZTSN6dealii11Polynomials10PolynomialIfEE = weak_odr dso_local constant [38 x i8] c"N6dealii11Polynomials10PolynomialIfEE\00", comdat, align 1
@_ZTIN6dealii11Polynomials10PolynomialIfEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii11Polynomials10PolynomialIfEE, ptr @_ZTIN6dealii11SubscriptorE }, comdat, align 8
@_ZTSN6dealii11Polynomials8MonomialIfEE = weak_odr dso_local constant [35 x i8] c"N6dealii11Polynomials8MonomialIfEE\00", comdat, align 1
@_ZTIN6dealii11Polynomials8MonomialIfEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii11Polynomials8MonomialIfEE, ptr @_ZTIN6dealii11Polynomials10PolynomialIfEE }, comdat, align 8
@_ZTSN6dealii11Polynomials8MonomialIdEE = weak_odr dso_local constant [35 x i8] c"N6dealii11Polynomials8MonomialIdEE\00", comdat, align 1
@_ZTIN6dealii11Polynomials8MonomialIdEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii11Polynomials8MonomialIdEE, ptr @_ZTIN6dealii11Polynomials10PolynomialIdEE }, comdat, align 8
@_ZTSN6dealii11Polynomials19LagrangeEquidistantE = linkonce_odr dso_local constant [44 x i8] c"N6dealii11Polynomials19LagrangeEquidistantE\00", comdat, align 1
@_ZTIN6dealii11Polynomials19LagrangeEquidistantE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii11Polynomials19LagrangeEquidistantE, ptr @_ZTIN6dealii11Polynomials10PolynomialIdEE }, comdat, align 8
@_ZTSN6dealii11Polynomials8LegendreE = linkonce_odr dso_local constant [32 x i8] c"N6dealii11Polynomials8LegendreE\00", comdat, align 1
@_ZTIN6dealii11Polynomials8LegendreE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii11Polynomials8LegendreE, ptr @_ZTIN6dealii11Polynomials10PolynomialIdEE }, comdat, align 8
@_ZTSN6dealii11Polynomials12HierarchicalE = linkonce_odr dso_local constant [37 x i8] c"N6dealii11Polynomials12HierarchicalE\00", comdat, align 1
@_ZTIN6dealii11Polynomials12HierarchicalE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii11Polynomials12HierarchicalE, ptr @_ZTIN6dealii11Polynomials10PolynomialIdEE }, comdat, align 8
@.str.12 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"vector::_M_fill_insert\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_polynomial.cc, ptr null }]
@reltable._ZN6dealii11Polynomials19LagrangeEquidistant20compute_coefficientsEjj = private unnamed_addr constant [10 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @_ZZN6dealii11Polynomials19LagrangeEquidistant20compute_coefficientsEjjE2x1 to i64), i64 ptrtoint (ptr @reltable._ZN6dealii11Polynomials19LagrangeEquidistant20compute_coefficientsEjj to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @_ZZN6dealii11Polynomials19LagrangeEquidistant20compute_coefficientsEjjE2x2 to i64), i64 ptrtoint (ptr @reltable._ZN6dealii11Polynomials19LagrangeEquidistant20compute_coefficientsEjj to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @_ZZN6dealii11Polynomials19LagrangeEquidistant20compute_coefficientsEjjE2x3 to i64), i64 ptrtoint (ptr @reltable._ZN6dealii11Polynomials19LagrangeEquidistant20compute_coefficientsEjj to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @_ZZN6dealii11Polynomials19LagrangeEquidistant20compute_coefficientsEjjE2x4 to i64), i64 ptrtoint (ptr @reltable._ZN6dealii11Polynomials19LagrangeEquidistant20compute_coefficientsEjj to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @_ZZN6dealii11Polynomials19LagrangeEquidistant20compute_coefficientsEjjE2x5 to i64), i64 ptrtoint (ptr @reltable._ZN6dealii11Polynomials19LagrangeEquidistant20compute_coefficientsEjj to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @_ZZN6dealii11Polynomials19LagrangeEquidistant20compute_coefficientsEjjE2x6 to i64), i64 ptrtoint (ptr @reltable._ZN6dealii11Polynomials19LagrangeEquidistant20compute_coefficientsEjj to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @_ZZN6dealii11Polynomials19LagrangeEquidistant20compute_coefficientsEjjE2x7 to i64), i64 ptrtoint (ptr @reltable._ZN6dealii11Polynomials19LagrangeEquidistant20compute_coefficientsEjj to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @_ZZN6dealii11Polynomials19LagrangeEquidistant20compute_coefficientsEjjE2x8 to i64), i64 ptrtoint (ptr @reltable._ZN6dealii11Polynomials19LagrangeEquidistant20compute_coefficientsEjj to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @_ZZN6dealii11Polynomials19LagrangeEquidistant20compute_coefficientsEjjE2x9 to i64), i64 ptrtoint (ptr @reltable._ZN6dealii11Polynomials19LagrangeEquidistant20compute_coefficientsEjj to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @_ZZN6dealii11Polynomials19LagrangeEquidistant20compute_coefficientsEjjE3x10 to i64), i64 ptrtoint (ptr @reltable._ZN6dealii11Polynomials19LagrangeEquidistant20compute_coefficientsEjj to i64)) to i32)], align 4

@_ZN6dealii11Polynomials10PolynomialIfEC1ERKSt6vectorIfSaIfEE = weak_odr dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN6dealii11Polynomials10PolynomialIfEC2ERKSt6vectorIfSaIfEE
@_ZN6dealii11Polynomials10PolynomialIfEC1Ev = weak_odr dso_local unnamed_addr alias void (ptr), ptr @_ZN6dealii11Polynomials10PolynomialIfEC2Ev
@_ZN6dealii11Polynomials10PolynomialIdEC1ERKSt6vectorIdSaIdEE = weak_odr dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN6dealii11Polynomials10PolynomialIdEC2ERKSt6vectorIdSaIdEE
@_ZN6dealii11Polynomials10PolynomialIdEC1Ev = weak_odr dso_local unnamed_addr alias void (ptr), ptr @_ZN6dealii11Polynomials10PolynomialIdEC2Ev
@_ZN6dealii11Polynomials8MonomialIfEC1Ejd = weak_odr dso_local unnamed_addr alias void (ptr, i32, double), ptr @_ZN6dealii11Polynomials8MonomialIfEC2Ejd
@_ZN6dealii11Polynomials8MonomialIdEC1Ejd = weak_odr dso_local unnamed_addr alias void (ptr, i32, double), ptr @_ZN6dealii11Polynomials8MonomialIdEC2Ejd
@_ZN6dealii11Polynomials19LagrangeEquidistantC1Ejj = dso_local unnamed_addr alias void (ptr, i32, i32), ptr @_ZN6dealii11Polynomials19LagrangeEquidistantC2Ejj
@_ZN6dealii11Polynomials8LegendreC1Ej = dso_local unnamed_addr alias void (ptr, i32), ptr @_ZN6dealii11Polynomials8LegendreC2Ej
@_ZN6dealii11Polynomials12HierarchicalC1Ej = dso_local unnamed_addr alias void (ptr, i32), ptr @_ZN6dealii11Polynomials12HierarchicalC2Ej

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii11Polynomials10PolynomialIfEC2ERKSt6vectorIfSaIfEE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat($_ZN6dealii11Polynomials10PolynomialIfEC5ERKSt6vectorIfSaIfEE) align 2 personality ptr @__gxx_personality_v0 !annotation !59 {
  tail call void @_ZN6dealii11SubscriptorC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0)
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials10PolynomialIfEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  %3 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %0, i64 0, i32 1
  invoke void @_ZNSt6vectorIfSaIfEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %4 unwind label %5

4:                                                ; preds = %2
  ret void

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #23
  resume { ptr, i32 } %6
}

declare void @_ZN6dealii11SubscriptorC2Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIfSaIfEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = load ptr, ptr %1, align 8, !tbaa !68
  %6 = ptrtoint ptr %4 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 2
  %10 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %11 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %12 = icmp eq ptr %4, %5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = tail call noundef ptr @_ZNSt15__new_allocatorIfE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %9, ptr noundef null)
  br label %15

15:                                               ; preds = %13, %2
  %16 = phi ptr [ null, %2 ], [ %14, %13 ]
  store ptr %16, ptr %0, align 8, !tbaa !68
  store ptr %16, ptr %10, align 8, !tbaa !64
  %17 = getelementptr inbounds float, ptr %16, i64 %9
  store ptr %17, ptr %11, align 8, !tbaa !69
  %18 = load ptr, ptr %1, align 8, !tbaa !70
  %19 = load ptr, ptr %3, align 8, !tbaa !70
  %20 = ptrtoint ptr %19 to i64
  %21 = ptrtoint ptr %18 to i64
  %22 = sub i64 %20, %21
  %23 = icmp eq ptr %19, %18
  br i1 %23, label %25, label %24

24:                                               ; preds = %15
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %16, ptr align 4 %18, i64 %22, i1 false)
  br label %25

25:                                               ; preds = %15, %24
  %26 = getelementptr inbounds i8, ptr %16, i64 %22
  store ptr %26, ptr %10, align 8, !tbaa !64
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii11Polynomials10PolynomialIfEC2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #4 comdat($_ZN6dealii11Polynomials10PolynomialIfEC5Ev) align 2 !prof !63 {
  tail call void @_ZN6dealii11SubscriptorC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0)
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials10PolynomialIfEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  %2 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef float @_ZNK6dealii11Polynomials10PolynomialIfE5valueEf(ptr noundef nonnull align 8 dereferenceable(96) %0, float noundef %1) local_unnamed_addr #5 comdat align 2 !prof !63 {
  %3 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !70
  %6 = load ptr, ptr %3, align 8, !tbaa !68
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = lshr exact i64 %9, 2
  %11 = trunc i64 %10 to i32
  %12 = getelementptr inbounds float, ptr %5, i64 -1
  %13 = load float, ptr %12, align 4, !tbaa !71
  %14 = add i32 %11, -2
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = zext nneg i32 %14 to i64
  br label %20

18:                                               ; preds = %20, %2
  %19 = phi float [ %13, %2 ], [ %25, %20 ]
  ret float %19

20:                                               ; preds = %16, %20
  %21 = phi i64 [ %17, %16 ], [ %26, %20 ]
  %22 = phi float [ %13, %16 ], [ %25, %20 ]
  %23 = getelementptr inbounds float, ptr %6, i64 %21
  %24 = load float, ptr %23, align 4, !tbaa !71
  %25 = tail call float @llvm.fmuladd.f32(float %22, float %1, float %24)
  %26 = add nsw i64 %21, -1
  %27 = icmp sgt i64 %21, 0
  br i1 %27, label %20, label %18, !llvm.loop !73
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii11Polynomials10PolynomialIfE5valueEfRSt6vectorIfSaIfEE(ptr noundef nonnull align 8 dereferenceable(96) %0, float noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  %4 = alloca %"class.std::vector", align 8
  %5 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %2, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = load ptr, ptr %2, align 8, !tbaa !68
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = lshr exact i64 %10, 2
  %12 = trunc i64 %11 to i32
  %13 = icmp eq i32 %12, 1
  %14 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %0, i64 0, i32 1
  %15 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !70
  %17 = load ptr, ptr %14, align 8, !tbaa !68
  %18 = ptrtoint ptr %16 to i64
  %19 = ptrtoint ptr %17 to i64
  %20 = sub i64 %18, %19
  %21 = lshr i64 %20, 2
  %22 = trunc i64 %21 to i32
  br i1 %13, label %23, label %40

23:                                               ; preds = %3
  %24 = getelementptr inbounds float, ptr %16, i64 -1
  %25 = load float, ptr %24, align 4, !tbaa !71
  %26 = add i32 %22, -2
  %27 = icmp sgt i32 %26, -1
  br i1 %27, label %28, label %38

28:                                               ; preds = %23
  %29 = zext nneg i32 %26 to i64
  br label %30

30:                                               ; preds = %28, %30
  %31 = phi i64 [ %29, %28 ], [ %36, %30 ]
  %32 = phi float [ %25, %28 ], [ %35, %30 ]
  %33 = getelementptr inbounds float, ptr %17, i64 %31
  %34 = load float, ptr %33, align 4, !tbaa !71
  %35 = tail call float @llvm.fmuladd.f32(float %32, float %1, float %34)
  %36 = add nsw i64 %31, -1
  %37 = icmp sgt i64 %31, 0
  br i1 %37, label %30, label %38, !llvm.loop !73

38:                                               ; preds = %30, %23
  %39 = phi float [ %25, %23 ], [ %35, %30 ]
  store float %39, ptr %7, align 4, !tbaa !71
  br label %95

40:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #23
  call void @_ZNSt6vectorIfSaIfEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %14)
  %41 = call i32 @llvm.umin.i32(i32 %22, i32 %12)
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %40
  %44 = add i32 %22, -2
  %45 = load ptr, ptr %4, align 8
  %46 = load ptr, ptr %2, align 8, !tbaa !68
  %47 = sext i32 %44 to i64
  %48 = shl nsw i64 %47, 2
  %49 = getelementptr i8, ptr %45, i64 %48
  %50 = getelementptr i8, ptr %49, i64 4
  br label %65

51:                                               ; preds = %72, %40
  %52 = icmp ult i32 %22, %12
  br i1 %52, label %53, label %90

53:                                               ; preds = %51
  %54 = load ptr, ptr %2, align 8, !tbaa !68
  %55 = and i64 %11, 4294967295
  %56 = and i64 %21, 4294967295
  %57 = call i64 @llvm.umin.i64(i64 %55, i64 %56)
  %58 = shl nuw nsw i64 %57, 2
  %59 = getelementptr i8, ptr %54, i64 %58
  %60 = xor i32 %41, -1
  %61 = add i32 %60, %12
  %62 = zext i32 %61 to i64
  %63 = shl nuw nsw i64 %62, 2
  %64 = add nuw nsw i64 %63, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %59, i8 0, i64 %64, i1 false), !tbaa !71
  br label %90

65:                                               ; preds = %43, %72
  %66 = phi i32 [ 0, %43 ], [ %79, %72 ]
  %67 = phi i32 [ 1, %43 ], [ %80, %72 ]
  %68 = icmp slt i32 %44, %66
  br i1 %68, label %72, label %69

69:                                               ; preds = %65
  %70 = sext i32 %66 to i64
  %71 = load float, ptr %50, align 4
  br label %82

72:                                               ; preds = %82, %65
  %73 = uitofp i32 %67 to float
  %74 = zext i32 %66 to i64
  %75 = getelementptr inbounds float, ptr %45, i64 %74
  %76 = load float, ptr %75, align 4, !tbaa !71
  %77 = fmul float %76, %73
  %78 = getelementptr inbounds float, ptr %46, i64 %74
  store float %77, ptr %78, align 4, !tbaa !71
  %79 = add nuw i32 %66, 1
  %80 = mul i32 %79, %67
  %81 = icmp eq i32 %79, %41
  br i1 %81, label %51, label %65, !llvm.loop !76

82:                                               ; preds = %69, %82
  %83 = phi float [ %71, %69 ], [ %87, %82 ]
  %84 = phi i64 [ %47, %69 ], [ %88, %82 ]
  %85 = getelementptr float, ptr %45, i64 %84
  %86 = load float, ptr %85, align 4, !tbaa !71
  %87 = call float @llvm.fmuladd.f32(float %1, float %83, float %86)
  store float %87, ptr %85, align 4, !tbaa !71
  %88 = add nsw i64 %84, -1
  %89 = icmp sgt i64 %84, %70
  br i1 %89, label %82, label %72, !llvm.loop !77

90:                                               ; preds = %53, %51
  %91 = load ptr, ptr %4, align 8, !tbaa !68
  %92 = icmp eq ptr %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %90
  call void @_ZdlPv(ptr noundef %91) #24
  br label %94

94:                                               ; preds = %90, %93
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #23
  br label %95

95:                                               ; preds = %94, %38
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii11Polynomials10PolynomialIfE6degreeEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #8 comdat align 2 !prof !63 {
  %2 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = load ptr, ptr %2, align 8, !tbaa !68
  %6 = ptrtoint ptr %4 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  %9 = lshr exact i64 %8, 2
  %10 = trunc i64 %9 to i32
  %11 = add i32 %10, -1
  ret i32 %11
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii11Polynomials10PolynomialIfE5scaleEf(ptr noundef nonnull align 8 dereferenceable(96) %0, float noundef %1) local_unnamed_addr #2 comdat align 2 !prof !63 {
  %3 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !70
  %5 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !70
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %20, label %8

8:                                                ; preds = %2
  %9 = fpext float %1 to double
  br label %10

10:                                               ; preds = %8, %10
  %11 = phi double [ 1.000000e+00, %8 ], [ %17, %10 ]
  %12 = phi ptr [ %4, %8 ], [ %18, %10 ]
  %13 = load float, ptr %12, align 4, !tbaa !71
  %14 = fpext float %13 to double
  %15 = fmul double %11, %14
  %16 = fptrunc double %15 to float
  store float %16, ptr %12, align 4, !tbaa !71
  %17 = fmul double %11, %9
  %18 = getelementptr inbounds float, ptr %12, i64 1
  %19 = icmp eq ptr %18, %6
  br i1 %19, label %20, label %10, !llvm.loop !78

20:                                               ; preds = %10, %2
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii11Polynomials10PolynomialIfE5scaleERSt6vectorIfSaIfEEf(ptr noundef nonnull align 8 dereferenceable(24) %0, float noundef %1) local_unnamed_addr #5 comdat align 2 !prof !63 {
  %3 = load ptr, ptr %0, align 8, !tbaa !70
  %4 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !70
  %6 = icmp eq ptr %3, %5
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = fpext float %1 to double
  br label %10

9:                                                ; preds = %10, %2
  ret void

10:                                               ; preds = %7, %10
  %11 = phi double [ 1.000000e+00, %7 ], [ %17, %10 ]
  %12 = phi ptr [ %3, %7 ], [ %18, %10 ]
  %13 = load float, ptr %12, align 4, !tbaa !71
  %14 = fpext float %13 to double
  %15 = fmul double %11, %14
  %16 = fptrunc double %15 to float
  store float %16, ptr %12, align 4, !tbaa !71
  %17 = fmul double %11, %8
  %18 = getelementptr inbounds float, ptr %12, i64 1
  %19 = icmp eq ptr %18, %5
  br i1 %19, label %9, label %10, !llvm.loop !78
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii11Polynomials10PolynomialIfE10derivativeEv(ptr dead_on_unwind noalias writable sret(%"class.dealii::Polynomials::Polynomial") align 8 %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !59 {
  %3 = alloca %"class.dealii::Polynomials::Monomial", align 8
  %4 = alloca %"class.std::vector", align 8
  %5 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %1, i64 0, i32 1
  %6 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %1, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !64
  %8 = load ptr, ptr %5, align 8, !tbaa !68
  %9 = ptrtoint ptr %7 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = and i64 %11, 17179869180
  %13 = icmp eq i64 %12, 4
  br i1 %13, label %14, label %32

14:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %3) #23
  call void @_ZN6dealii11Polynomials8MonomialIfEC1Ejd(ptr noundef nonnull align 8 dereferenceable(96) %3, i32 noundef 0, double noundef 0.000000e+00)
  invoke void @_ZN6dealii11SubscriptorC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %15 unwind label %25

15:                                               ; preds = %14
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials10PolynomialIfEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  %16 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %0, i64 0, i32 1
  %17 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %3, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !68
  store ptr %18, ptr %16, align 8, !tbaa !68
  %19 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %20 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %3, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !64
  store ptr %21, ptr %19, align 8, !tbaa !64
  %22 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %23 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %3, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !69
  store ptr %24, ptr %22, align 8, !tbaa !69
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials10PolynomialIfEE, i64 0, inrange i32 0, i64 2), ptr %3, align 8, !tbaa !60
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %3) #23
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #23
  br label %90

25:                                               ; preds = %14
  %26 = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials10PolynomialIfEE, i64 0, inrange i32 0, i64 2), ptr %3, align 8, !tbaa !60
  %27 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %3, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !68
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  call void @_ZdlPv(ptr noundef %28) #24
  br label %31

31:                                               ; preds = %25, %30
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %3) #23
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #23
  br label %91

32:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #23
  %33 = ashr exact i64 %11, 2
  %34 = add nsw i64 %33, -1
  %35 = icmp ugt i64 %34, 2305843009213693951
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #25
          to label %37 unwind label %63

37:                                               ; preds = %36
  unreachable

38:                                               ; preds = %32
  %39 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %4, i64 0, i32 1
  %40 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %4, i64 0, i32 2
  %41 = icmp eq i64 %34, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = invoke noundef ptr @_ZNSt15__new_allocatorIfE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %34, ptr noundef null)
          to label %44 unwind label %63

44:                                               ; preds = %42, %38
  %45 = phi ptr [ null, %38 ], [ %43, %42 ]
  store ptr %45, ptr %4, align 8, !tbaa !68
  store ptr %45, ptr %39, align 8, !tbaa !64
  %46 = getelementptr inbounds float, ptr %45, i64 %34
  store ptr %46, ptr %40, align 8, !tbaa !69
  br i1 %41, label %53, label %47

47:                                               ; preds = %44
  store float 0.000000e+00, ptr %45, align 4, !tbaa !71
  %48 = getelementptr float, ptr %45, i64 1
  %49 = icmp eq i64 %34, 1
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = shl nuw nsw i64 %34, 2
  %52 = add nsw i64 %51, -4
  call void @llvm.memset.p0.i64(ptr align 4 %48, i8 0, i64 %52, i1 false), !tbaa !71
  br label %53

53:                                               ; preds = %44, %47, %50
  %54 = phi ptr [ %45, %44 ], [ %48, %47 ], [ %46, %50 ]
  store ptr %54, ptr %39, align 8, !tbaa !64
  %55 = load ptr, ptr %6, align 8, !tbaa !64
  %56 = load ptr, ptr %5, align 8, !tbaa !68
  %57 = ptrtoint ptr %55 to i64
  %58 = ptrtoint ptr %56 to i64
  %59 = sub i64 %57, %58
  %60 = ashr exact i64 %59, 2
  %61 = icmp ugt i64 %60, 1
  br i1 %61, label %65, label %62

62:                                               ; preds = %65, %53
  invoke void @_ZN6dealii11Polynomials10PolynomialIfEC1ERKSt6vectorIfSaIfEE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %78 unwind label %83

63:                                               ; preds = %42, %36
  %64 = landingpad { ptr, i32 }
          cleanup
  br label %88

65:                                               ; preds = %53, %65
  %66 = phi i64 [ %76, %65 ], [ 1, %53 ]
  %67 = phi i32 [ %75, %65 ], [ 1, %53 ]
  %68 = uitofp i32 %67 to float
  %69 = getelementptr inbounds float, ptr %56, i64 %66
  %70 = load float, ptr %69, align 4, !tbaa !71
  %71 = fmul float %70, %68
  %72 = add i32 %67, -1
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds float, ptr %45, i64 %73
  store float %71, ptr %74, align 4, !tbaa !71
  %75 = add i32 %67, 1
  %76 = zext i32 %75 to i64
  %77 = icmp ugt i64 %60, %76
  br i1 %77, label %65, label %62, !llvm.loop !79

78:                                               ; preds = %62
  %79 = load ptr, ptr %4, align 8, !tbaa !68
  %80 = icmp eq ptr %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %78
  call void @_ZdlPv(ptr noundef %79) #24
  br label %82

82:                                               ; preds = %78, %81
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #23
  br label %90

83:                                               ; preds = %62
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load ptr, ptr %4, align 8, !tbaa !68
  %86 = icmp eq ptr %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %83
  call void @_ZdlPv(ptr noundef %85) #24
  br label %88

88:                                               ; preds = %87, %83, %63
  %89 = phi { ptr, i32 } [ %64, %63 ], [ %84, %83 ], [ %84, %87 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #23
  br label %91

90:                                               ; preds = %82, %15
  ret void

91:                                               ; preds = %88, %31
  %92 = phi { ptr, i32 } [ %26, %31 ], [ %89, %88 ]
  resume { ptr, i32 } %92
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii11Polynomials10PolynomialIfE9primitiveEv(ptr dead_on_unwind noalias writable sret(%"class.dealii::Polynomials::Polynomial") align 8 %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !59 {
  %3 = alloca %"class.std::vector", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #23
  %4 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %1, i64 0, i32 1
  %5 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %1, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = load ptr, ptr %4, align 8, !tbaa !68
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 2
  %12 = add nsw i64 %11, 1
  %13 = icmp ugt i64 %12, 2305843009213693951
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #25
  unreachable

15:                                               ; preds = %2
  %16 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %3, i64 0, i32 1
  %17 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %3, i64 0, i32 2
  %18 = icmp eq i64 %12, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = call noundef ptr @_ZNSt15__new_allocatorIfE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %3, i64 noundef %12, ptr noundef null)
  br label %21

21:                                               ; preds = %19, %15
  %22 = phi ptr [ null, %15 ], [ %20, %19 ]
  store ptr %22, ptr %3, align 8, !tbaa !68
  store ptr %22, ptr %16, align 8, !tbaa !64
  %23 = getelementptr inbounds float, ptr %22, i64 %12
  store ptr %23, ptr %17, align 8, !tbaa !69
  br i1 %18, label %30, label %24

24:                                               ; preds = %21
  store float 0.000000e+00, ptr %22, align 4, !tbaa !71
  %25 = getelementptr float, ptr %22, i64 1
  %26 = icmp eq ptr %6, %7
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = shl nuw nsw i64 %12, 2
  %29 = add nsw i64 %28, -4
  call void @llvm.memset.p0.i64(ptr align 4 %25, i8 0, i64 %29, i1 false), !tbaa !71
  br label %30

30:                                               ; preds = %21, %24, %27
  %31 = phi ptr [ %22, %21 ], [ %25, %24 ], [ %23, %27 ]
  store ptr %31, ptr %16, align 8, !tbaa !64
  store float 0.000000e+00, ptr %22, align 4, !tbaa !71
  %32 = load ptr, ptr %5, align 8, !tbaa !64
  %33 = load ptr, ptr %4, align 8, !tbaa !68
  %34 = ptrtoint ptr %32 to i64
  %35 = ptrtoint ptr %33 to i64
  %36 = sub i64 %34, %35
  %37 = ashr exact i64 %36, 2
  %38 = icmp eq ptr %32, %33
  br i1 %38, label %39, label %40

39:                                               ; preds = %40, %30
  invoke void @_ZN6dealii11Polynomials10PolynomialIfEC1ERKSt6vectorIfSaIfEE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %55 unwind label %60

40:                                               ; preds = %30, %40
  %41 = phi i64 [ %53, %40 ], [ 0, %30 ]
  %42 = phi i32 [ %50, %40 ], [ 0, %30 ]
  %43 = getelementptr inbounds float, ptr %33, i64 %41
  %44 = load float, ptr %43, align 4, !tbaa !71
  %45 = fpext float %44 to double
  %46 = uitofp i32 %42 to double
  %47 = fadd double %46, 1.000000e+00
  %48 = fdiv double %45, %47
  %49 = fptrunc double %48 to float
  %50 = add i32 %42, 1
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds float, ptr %22, i64 %51
  store float %49, ptr %52, align 4, !tbaa !71
  %53 = zext i32 %50 to i64
  %54 = icmp ugt i64 %37, %53
  br i1 %54, label %40, label %39, !llvm.loop !80

55:                                               ; preds = %39
  %56 = load ptr, ptr %3, align 8, !tbaa !68
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  call void @_ZdlPv(ptr noundef %56) #24
  br label %59

59:                                               ; preds = %55, %58
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #23
  ret void

60:                                               ; preds = %39
  %61 = landingpad { ptr, i32 }
          cleanup
  %62 = load ptr, ptr %3, align 8, !tbaa !68
  %63 = icmp eq ptr %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %60
  call void @_ZdlPv(ptr noundef %62) #24
  br label %65

65:                                               ; preds = %64, %60
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #23
  resume { ptr, i32 } %61
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef nonnull align 8 dereferenceable(96) ptr @_ZN6dealii11Polynomials10PolynomialIfEmLEd(ptr noundef nonnull align 8 dereferenceable(96) %0, double noundef %1) local_unnamed_addr #5 comdat align 2 !prof !63 {
  %3 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !70
  %5 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !70
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %9, %2
  ret ptr %0

9:                                                ; preds = %2, %9
  %10 = phi ptr [ %15, %9 ], [ %4, %2 ]
  %11 = load float, ptr %10, align 4, !tbaa !71
  %12 = fpext float %11 to double
  %13 = fmul double %12, %1
  %14 = fptrunc double %13 to float
  store float %14, ptr %10, align 4, !tbaa !71
  %15 = getelementptr inbounds float, ptr %10, i64 1
  %16 = icmp eq ptr %15, %6
  br i1 %16, label %8, label %9, !llvm.loop !81
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef nonnull align 8 dereferenceable(96) ptr @_ZN6dealii11Polynomials10PolynomialIfEmLERKS2_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  %3 = alloca %"class.std::vector", align 8
  %4 = alloca float, align 4
  %5 = alloca %"class.std::allocator.16", align 1
  %6 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !64
  %9 = load ptr, ptr %6, align 8, !tbaa !68
  %10 = ptrtoint ptr %8 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 2
  %14 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %1, i64 0, i32 1
  %15 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %1, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !64
  %17 = load ptr, ptr %14, align 8, !tbaa !68
  %18 = ptrtoint ptr %16 to i64
  %19 = ptrtoint ptr %17 to i64
  %20 = sub i64 %18, %19
  %21 = lshr exact i64 %20, 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #23
  %22 = add nuw nsw i64 %13, 4294967295
  %23 = add nuw i64 %22, %21
  %24 = and i64 %23, 4294967295
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #23
  store float 0.000000e+00, ptr %4, align 4, !tbaa !71
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #23
  call void @_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %24, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #23
  %25 = load ptr, ptr %15, align 8, !tbaa !64
  %26 = load ptr, ptr %14, align 8, !tbaa !68
  %27 = ptrtoint ptr %25 to i64
  %28 = ptrtoint ptr %26 to i64
  %29 = sub i64 %27, %28
  %30 = ashr exact i64 %29, 2
  %31 = icmp eq ptr %25, %26
  br i1 %31, label %46, label %32

32:                                               ; preds = %2
  %33 = load ptr, ptr %7, align 8, !tbaa !64
  %34 = load ptr, ptr %6, align 8, !tbaa !68
  %35 = ptrtoint ptr %33 to i64
  %36 = ptrtoint ptr %34 to i64
  %37 = sub i64 %35, %36
  %38 = ashr exact i64 %37, 2
  %39 = icmp eq ptr %33, %34
  %40 = load ptr, ptr %3, align 8
  br label %41

41:                                               ; preds = %32, %48
  %42 = phi i64 [ 0, %32 ], [ %50, %48 ]
  %43 = phi i32 [ 0, %32 ], [ %49, %48 ]
  br i1 %39, label %48, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds float, ptr %26, i64 %42
  br label %52

46:                                               ; preds = %48, %2
  %47 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIfSaIfEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %66 unwind label %71

48:                                               ; preds = %52, %41
  %49 = add i32 %43, 1
  %50 = zext i32 %49 to i64
  %51 = icmp ugt i64 %30, %50
  br i1 %51, label %41, label %46, !llvm.loop !82

52:                                               ; preds = %44, %52
  %53 = phi i64 [ 0, %44 ], [ %64, %52 ]
  %54 = phi i32 [ 0, %44 ], [ %63, %52 ]
  %55 = getelementptr inbounds float, ptr %34, i64 %53
  %56 = load float, ptr %55, align 4, !tbaa !71
  %57 = load float, ptr %45, align 4, !tbaa !71
  %58 = add i32 %54, %43
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds float, ptr %40, i64 %59
  %61 = load float, ptr %60, align 4, !tbaa !71
  %62 = call float @llvm.fmuladd.f32(float %56, float %57, float %61)
  store float %62, ptr %60, align 4, !tbaa !71
  %63 = add i32 %54, 1
  %64 = zext i32 %63 to i64
  %65 = icmp ugt i64 %38, %64
  br i1 %65, label %52, label %48, !llvm.loop !83

66:                                               ; preds = %46
  %67 = load ptr, ptr %3, align 8, !tbaa !68
  %68 = icmp eq ptr %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %66
  call void @_ZdlPv(ptr noundef %67) #24
  br label %70

70:                                               ; preds = %66, %69
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #23
  ret ptr %0

71:                                               ; preds = %46
  %72 = landingpad { ptr, i32 }
          cleanup
  %73 = load ptr, ptr %3, align 8, !tbaa !68
  %74 = icmp eq ptr %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %71
  call void @_ZdlPv(ptr noundef %73) #24
  br label %76

76:                                               ; preds = %75, %71
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #23
  resume { ptr, i32 } %72
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  %5 = icmp ugt i64 %1, 2305843009213693951
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #25
  unreachable

7:                                                ; preds = %4
  %8 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %9 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %10 = icmp eq i64 %1, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call noundef ptr @_ZNSt15__new_allocatorIfE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null)
  br label %13

13:                                               ; preds = %7, %11
  %14 = phi ptr [ null, %7 ], [ %12, %11 ]
  store ptr %14, ptr %0, align 8, !tbaa !68
  store ptr %14, ptr %8, align 8, !tbaa !64
  %15 = getelementptr inbounds float, ptr %14, i64 %1
  store ptr %15, ptr %9, align 8, !tbaa !69
  br i1 %10, label %22, label %16

16:                                               ; preds = %13
  %17 = load float, ptr %2, align 4, !tbaa !71
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi ptr [ %20, %18 ], [ %14, %16 ]
  store float %17, ptr %19, align 4, !tbaa !71
  %20 = getelementptr inbounds float, ptr %19, i64 1
  %21 = icmp eq ptr %20, %15
  br i1 %21, label %22, label %18, !llvm.loop !84

22:                                               ; preds = %18, %13
  %23 = phi ptr [ %14, %13 ], [ %15, %18 ]
  store ptr %23, ptr %8, align 8, !tbaa !64
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIfSaIfEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  %3 = icmp eq ptr %1, %0
  br i1 %3, label %59, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !70
  %7 = load ptr, ptr %1, align 8, !tbaa !70
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !69
  %13 = load ptr, ptr %0, align 8, !tbaa !70
  %14 = ptrtoint ptr %12 to i64
  %15 = ptrtoint ptr %13 to i64
  %16 = sub i64 %14, %15
  %17 = icmp ugt i64 %10, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %4
  %19 = ashr exact i64 %10, 2
  %20 = tail call noundef ptr @_ZNSt15__new_allocatorIfE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %19, ptr noundef null)
  %21 = icmp eq ptr %6, %7
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %20, ptr align 4 %7, i64 %10, i1 false)
  br label %23

23:                                               ; preds = %18, %22
  %24 = load ptr, ptr %0, align 8, !tbaa !68
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  tail call void @_ZdlPv(ptr noundef %24) #24
  br label %27

27:                                               ; preds = %23, %26
  store ptr %20, ptr %0, align 8, !tbaa !68
  %28 = getelementptr inbounds i8, ptr %20, i64 %10
  store ptr %28, ptr %11, align 8, !tbaa !69
  br label %55

29:                                               ; preds = %4
  %30 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !64
  %32 = ptrtoint ptr %31 to i64
  %33 = sub i64 %32, %15
  %34 = icmp ult i64 %33, %10
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = icmp eq ptr %6, %7
  br i1 %36, label %55, label %37

37:                                               ; preds = %35
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %13, ptr align 4 %7, i64 %10, i1 false)
  br label %55

38:                                               ; preds = %29
  %39 = icmp eq ptr %31, %13
  br i1 %39, label %41, label %40

40:                                               ; preds = %38
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %13, ptr align 4 %7, i64 %33, i1 false)
  br label %41

41:                                               ; preds = %38, %40
  %42 = load ptr, ptr %1, align 8, !tbaa !68
  %43 = load ptr, ptr %30, align 8, !tbaa !64
  %44 = load ptr, ptr %0, align 8, !tbaa !68
  %45 = ptrtoint ptr %43 to i64
  %46 = ptrtoint ptr %44 to i64
  %47 = sub i64 %45, %46
  %48 = getelementptr inbounds i8, ptr %42, i64 %47
  %49 = load ptr, ptr %5, align 8, !tbaa !64
  %50 = icmp eq ptr %49, %48
  br i1 %50, label %55, label %51

51:                                               ; preds = %41
  %52 = ptrtoint ptr %49 to i64
  %53 = ptrtoint ptr %48 to i64
  %54 = sub i64 %52, %53
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %43, ptr align 4 %48, i64 %54, i1 false)
  br label %55

55:                                               ; preds = %51, %41, %37, %35, %27
  %56 = load ptr, ptr %0, align 8, !tbaa !68
  %57 = getelementptr inbounds i8, ptr %56, i64 %10
  %58 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %57, ptr %58, align 8, !tbaa !64
  br label %59

59:                                               ; preds = %55, %2
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef nonnull align 8 dereferenceable(96) ptr @_ZN6dealii11Polynomials10PolynomialIfEpLERKS2_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !59 {
  %3 = alloca float, align 4
  %4 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %1, i64 0, i32 1
  %5 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %1, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = load ptr, ptr %4, align 8, !tbaa !68
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %0, i64 0, i32 1
  %12 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !70
  %14 = load ptr, ptr %11, align 8, !tbaa !68
  %15 = ptrtoint ptr %13 to i64
  %16 = ptrtoint ptr %14 to i64
  %17 = sub i64 %15, %16
  %18 = icmp ugt i64 %10, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = ashr exact i64 %10, 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #23
  store float 0.000000e+00, ptr %3, align 4, !tbaa !71
  %21 = ashr exact i64 %17, 2
  %22 = sub nsw i64 %20, %21
  call void @_ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEmRKf(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr %13, i64 noundef %22, ptr noundef nonnull align 4 dereferenceable(4) %3)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #23
  br label %23

23:                                               ; preds = %19, %2
  %24 = load ptr, ptr %5, align 8, !tbaa !64
  %25 = load ptr, ptr %4, align 8, !tbaa !68
  %26 = ptrtoint ptr %24 to i64
  %27 = ptrtoint ptr %25 to i64
  %28 = sub i64 %26, %27
  %29 = ashr exact i64 %28, 2
  %30 = icmp eq ptr %24, %25
  br i1 %30, label %33, label %31

31:                                               ; preds = %23
  %32 = load ptr, ptr %11, align 8, !tbaa !68
  br label %34

33:                                               ; preds = %34, %23
  ret ptr %0

34:                                               ; preds = %31, %34
  %35 = phi i64 [ 0, %31 ], [ %43, %34 ]
  %36 = phi i32 [ 0, %31 ], [ %42, %34 ]
  %37 = getelementptr inbounds float, ptr %25, i64 %35
  %38 = load float, ptr %37, align 4, !tbaa !71
  %39 = getelementptr inbounds float, ptr %32, i64 %35
  %40 = load float, ptr %39, align 4, !tbaa !71
  %41 = fadd float %38, %40
  store float %41, ptr %39, align 4, !tbaa !71
  %42 = add i32 %36, 1
  %43 = zext i32 %42 to i64
  %44 = icmp ugt i64 %29, %43
  br i1 %44, label %34, label %33, !llvm.loop !85
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef nonnull align 8 dereferenceable(96) ptr @_ZN6dealii11Polynomials10PolynomialIfEmIERKS2_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !59 {
  %3 = alloca float, align 4
  %4 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %1, i64 0, i32 1
  %5 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %1, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = load ptr, ptr %4, align 8, !tbaa !68
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %0, i64 0, i32 1
  %12 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !70
  %14 = load ptr, ptr %11, align 8, !tbaa !68
  %15 = ptrtoint ptr %13 to i64
  %16 = ptrtoint ptr %14 to i64
  %17 = sub i64 %15, %16
  %18 = icmp ugt i64 %10, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = ashr exact i64 %10, 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #23
  store float 0.000000e+00, ptr %3, align 4, !tbaa !71
  %21 = ashr exact i64 %17, 2
  %22 = sub nsw i64 %20, %21
  call void @_ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEmRKf(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr %13, i64 noundef %22, ptr noundef nonnull align 4 dereferenceable(4) %3)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #23
  br label %23

23:                                               ; preds = %19, %2
  %24 = load ptr, ptr %5, align 8, !tbaa !64
  %25 = load ptr, ptr %4, align 8, !tbaa !68
  %26 = ptrtoint ptr %24 to i64
  %27 = ptrtoint ptr %25 to i64
  %28 = sub i64 %26, %27
  %29 = ashr exact i64 %28, 2
  %30 = icmp eq ptr %24, %25
  br i1 %30, label %33, label %31

31:                                               ; preds = %23
  %32 = load ptr, ptr %11, align 8, !tbaa !68
  br label %34

33:                                               ; preds = %34, %23
  ret ptr %0

34:                                               ; preds = %31, %34
  %35 = phi i64 [ 0, %31 ], [ %43, %34 ]
  %36 = phi i32 [ 0, %31 ], [ %42, %34 ]
  %37 = getelementptr inbounds float, ptr %25, i64 %35
  %38 = load float, ptr %37, align 4, !tbaa !71
  %39 = getelementptr inbounds float, ptr %32, i64 %35
  %40 = load float, ptr %39, align 4, !tbaa !71
  %41 = fsub float %40, %38
  store float %41, ptr %39, align 4, !tbaa !71
  %42 = add i32 %36, 1
  %43 = zext i32 %42 to i64
  %44 = icmp ugt i64 %29, %43
  br i1 %44, label %34, label %33, !llvm.loop !86
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii11Polynomials10PolynomialIfE5printERSo(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 !prof !63 {
  %3 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = load ptr, ptr %3, align 8, !tbaa !68
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = lshr exact i64 %9, 2
  %11 = trunc i64 %10 to i32
  %12 = add i32 %11, -1
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = zext nneg i32 %12 to i64
  br label %17

16:                                               ; preds = %17, %2
  ret void

17:                                               ; preds = %14, %17
  %18 = phi i64 [ %15, %14 ], [ %34, %17 ]
  %19 = load ptr, ptr %3, align 8, !tbaa !68
  %20 = getelementptr inbounds float, ptr %19, i64 %18
  %21 = load float, ptr %20, align 4, !tbaa !71
  %22 = fpext float %21 to double
  %23 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %22)
  %24 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull @.str, i64 noundef 3)
  %25 = trunc i64 %18 to i32
  %26 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %23, i32 noundef %25)
  %27 = load ptr, ptr %26, align 8, !tbaa !60
  %28 = getelementptr i8, ptr %27, i64 -24
  %29 = load i64, ptr %28, align 8
  %30 = getelementptr inbounds i8, ptr %26, i64 %29
  %31 = tail call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %30, i8 noundef signext 10)
  %32 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %26, i8 noundef signext %31)
  %33 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %32)
  %34 = add nsw i64 %18, -1
  %35 = icmp sgt i64 %18, 0
  br i1 %35, label %17, label %16, !llvm.loop !87
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii11Polynomials10PolynomialIfE8multiplyERSt6vectorIfSaIfEEf(ptr noundef nonnull align 8 dereferenceable(24) %0, float noundef %1) local_unnamed_addr #5 comdat align 2 !prof !63 {
  %3 = load ptr, ptr %0, align 8, !tbaa !70
  %4 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !70
  %6 = icmp eq ptr %3, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %2
  ret void

8:                                                ; preds = %2, %8
  %9 = phi ptr [ %12, %8 ], [ %3, %2 ]
  %10 = load float, ptr %9, align 4, !tbaa !71
  %11 = fmul float %10, %1
  store float %11, ptr %9, align 4, !tbaa !71
  %12 = getelementptr inbounds float, ptr %9, i64 1
  %13 = icmp eq ptr %12, %5
  br i1 %13, label %7, label %8, !llvm.loop !88
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii11Polynomials10PolynomialIdEC2ERKSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat($_ZN6dealii11Polynomials10PolynomialIdEC5ERKSt6vectorIdSaIdEE) align 2 personality ptr @__gxx_personality_v0 !annotation !59 {
  tail call void @_ZN6dealii11SubscriptorC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0)
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials10PolynomialIdEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  %3 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !89
  %6 = load ptr, ptr %1, align 8, !tbaa !91
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 3
  %11 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %12 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %13 = icmp eq ptr %5, %6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  br i1 %13, label %24, label %14, !prof !92

14:                                               ; preds = %2
  %15 = icmp ugt i64 %10, 1152921504606846975
  br i1 %15, label %16, label %22, !prof !93

16:                                               ; preds = %14
  %17 = icmp ugt i64 %10, 2305843009213693951
  br i1 %17, label %18, label %20

18:                                               ; preds = %16
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #25
          to label %19 unwind label %36

19:                                               ; preds = %18
  unreachable

20:                                               ; preds = %16
  invoke void @_ZSt17__throw_bad_allocv() #25
          to label %21 unwind label %36

21:                                               ; preds = %20
  unreachable

22:                                               ; preds = %14
  %23 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %9) #26
          to label %24 unwind label %36

24:                                               ; preds = %22, %2
  %25 = phi ptr [ null, %2 ], [ %23, %22 ]
  store ptr %25, ptr %3, align 8, !tbaa !91
  store ptr %25, ptr %11, align 8, !tbaa !89
  %26 = getelementptr inbounds double, ptr %25, i64 %10
  store ptr %26, ptr %12, align 8, !tbaa !94
  %27 = load ptr, ptr %1, align 8, !tbaa !70
  %28 = load ptr, ptr %4, align 8, !tbaa !70
  %29 = ptrtoint ptr %28 to i64
  %30 = ptrtoint ptr %27 to i64
  %31 = sub i64 %29, %30
  %32 = icmp eq ptr %28, %27
  br i1 %32, label %34, label %33, !prof !92

33:                                               ; preds = %24
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %25, ptr align 8 %27, i64 %31, i1 false), !prof !95
  br label %34

34:                                               ; preds = %24, %33
  %35 = getelementptr inbounds i8, ptr %25, i64 %31
  store ptr %35, ptr %11, align 8, !tbaa !89
  ret void

36:                                               ; preds = %22, %20, %18
  %37 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #23
  resume { ptr, i32 } %37
}

; Function Attrs: cold inlinehint mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii11Polynomials10PolynomialIdEC2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #4 comdat($_ZN6dealii11Polynomials10PolynomialIdEC5Ev) align 2 !prof !96 {
  tail call void @_ZN6dealii11SubscriptorC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0)
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials10PolynomialIdEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  %2 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local noundef double @_ZNK6dealii11Polynomials10PolynomialIdE5valueEd(ptr noundef nonnull align 8 dereferenceable(96) %0, double noundef %1) local_unnamed_addr #9 comdat align 2 !prof !97 {
  %3 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !70
  %6 = load ptr, ptr %3, align 8, !tbaa !91
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = lshr exact i64 %9, 3
  %11 = trunc i64 %10 to i32
  %12 = getelementptr inbounds double, ptr %5, i64 -1
  %13 = load double, ptr %12, align 8, !tbaa !98
  %14 = add i32 %11, -2
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %16, label %18, !prof !100

16:                                               ; preds = %2
  %17 = zext nneg i32 %14 to i64
  br label %20

18:                                               ; preds = %20, %2
  %19 = phi double [ %13, %2 ], [ %25, %20 ]
  ret double %19

20:                                               ; preds = %16, %20
  %21 = phi i64 [ %17, %16 ], [ %26, %20 ]
  %22 = phi double [ %13, %16 ], [ %25, %20 ]
  %23 = getelementptr inbounds double, ptr %6, i64 %21
  %24 = load double, ptr %23, align 8, !tbaa !98
  %25 = tail call double @llvm.fmuladd.f64(double %22, double %1, double %24)
  %26 = add nsw i64 %21, -1
  %27 = icmp sgt i64 %21, 0
  br i1 %27, label %20, label %18, !prof !101, !llvm.loop !102
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii11Polynomials10PolynomialIdE5valueEdRSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(96) %0, double noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !103 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !89
  %6 = load ptr, ptr %2, align 8, !tbaa !91
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = lshr exact i64 %9, 3
  %11 = trunc i64 %10 to i32
  %12 = icmp eq i32 %11, 1
  %13 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %0, i64 0, i32 1
  %14 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !70
  %16 = load ptr, ptr %13, align 8, !tbaa !70
  %17 = ptrtoint ptr %15 to i64
  %18 = ptrtoint ptr %16 to i64
  %19 = sub i64 %17, %18
  %20 = lshr i64 %19, 3
  %21 = trunc i64 %20 to i32
  br i1 %12, label %22, label %39, !prof !104

22:                                               ; preds = %3
  %23 = getelementptr inbounds double, ptr %15, i64 -1
  %24 = load double, ptr %23, align 8, !tbaa !98
  %25 = add i32 %21, -2
  %26 = icmp sgt i32 %25, -1
  br i1 %26, label %27, label %37, !prof !105

27:                                               ; preds = %22
  %28 = zext nneg i32 %25 to i64
  br label %29

29:                                               ; preds = %27, %29
  %30 = phi i64 [ %28, %27 ], [ %35, %29 ]
  %31 = phi double [ %24, %27 ], [ %34, %29 ]
  %32 = getelementptr inbounds double, ptr %16, i64 %30
  %33 = load double, ptr %32, align 8, !tbaa !98
  %34 = tail call double @llvm.fmuladd.f64(double %31, double %1, double %33)
  %35 = add nsw i64 %30, -1
  %36 = icmp sgt i64 %30, 0
  br i1 %36, label %29, label %37, !prof !106, !llvm.loop !102

37:                                               ; preds = %29, %22
  %38 = phi double [ %24, %22 ], [ %34, %29 ]
  store double %38, ptr %6, align 8, !tbaa !98
  br label %107

39:                                               ; preds = %3
  %40 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !70
  %42 = ptrtoint ptr %41 to i64
  %43 = sub i64 %42, %18
  %44 = ashr exact i64 %43, 3
  %45 = icmp eq ptr %41, %16
  br i1 %45, label %54, label %46, !prof !92

46:                                               ; preds = %39
  %47 = icmp ugt i64 %44, 1152921504606846975
  br i1 %47, label %48, label %52, !prof !93

48:                                               ; preds = %46
  %49 = icmp ugt i64 %44, 2305843009213693951
  br i1 %49, label %50, label %51

50:                                               ; preds = %48
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

51:                                               ; preds = %48
  tail call void @_ZSt17__throw_bad_allocv() #25
  unreachable

52:                                               ; preds = %46
  %53 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %43) #26
  br label %54

54:                                               ; preds = %52, %39
  %55 = phi ptr [ null, %39 ], [ %53, %52 ]
  br i1 %45, label %57, label %56, !prof !92

56:                                               ; preds = %54
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %55, ptr align 8 %16, i64 %43, i1 false), !prof !107
  br label %57

57:                                               ; preds = %54, %56
  %58 = tail call i32 @llvm.umin.i32(i32 %21, i32 %11)
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %60, !prof !108

60:                                               ; preds = %57
  %61 = add i32 %21, -2
  br label %75

62:                                               ; preds = %86, %57
  %63 = icmp ult i32 %21, %11
  br i1 %63, label %64, label %104, !prof !109

64:                                               ; preds = %62
  %65 = and i64 %10, 4294967295
  %66 = and i64 %20, 4294967295
  %67 = tail call i64 @llvm.umin.i64(i64 %65, i64 %66)
  %68 = shl nuw nsw i64 %67, 3
  %69 = getelementptr i8, ptr %6, i64 %68
  %70 = xor i32 %58, -1
  %71 = add i32 %70, %11
  %72 = zext i32 %71 to i64
  %73 = shl nuw nsw i64 %72, 3
  %74 = add nuw nsw i64 %73, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %69, i8 0, i64 %74, i1 false), !tbaa !98
  br label %104

75:                                               ; preds = %60, %86
  %76 = phi i32 [ 0, %60 ], [ %93, %86 ]
  %77 = phi i32 [ 1, %60 ], [ %94, %86 ]
  %78 = icmp slt i32 %61, %76
  br i1 %78, label %86, label %79, !prof !110

79:                                               ; preds = %75
  %80 = sext i32 %61 to i64
  %81 = shl nsw i64 %80, 3
  %82 = add nsw i64 %81, 8
  %83 = getelementptr i8, ptr %55, i64 %82
  %84 = sext i32 %76 to i64
  %85 = load double, ptr %83, align 8
  br label %96

86:                                               ; preds = %96, %75
  %87 = uitofp i32 %77 to double
  %88 = zext i32 %76 to i64
  %89 = getelementptr inbounds double, ptr %55, i64 %88
  %90 = load double, ptr %89, align 8, !tbaa !98
  %91 = fmul double %90, %87
  %92 = getelementptr inbounds double, ptr %6, i64 %88
  store double %91, ptr %92, align 8, !tbaa !98
  %93 = add nuw i32 %76, 1
  %94 = mul i32 %93, %77
  %95 = icmp eq i32 %93, %58
  br i1 %95, label %62, label %75, !prof !111, !llvm.loop !112

96:                                               ; preds = %79, %96
  %97 = phi double [ %85, %79 ], [ %101, %96 ]
  %98 = phi i64 [ %80, %79 ], [ %102, %96 ]
  %99 = getelementptr double, ptr %55, i64 %98
  %100 = load double, ptr %99, align 8, !tbaa !98
  %101 = tail call double @llvm.fmuladd.f64(double %1, double %97, double %100)
  store double %101, ptr %99, align 8, !tbaa !98
  %102 = add nsw i64 %98, -1
  %103 = icmp sgt i64 %98, %84
  br i1 %103, label %96, label %86, !prof !113, !llvm.loop !114

104:                                              ; preds = %64, %62
  %105 = icmp eq ptr %55, null
  br i1 %105, label %107, label %106, !prof !115

106:                                              ; preds = %104
  tail call void @_ZdlPv(ptr noundef %55) #24
  br label %107

107:                                              ; preds = %106, %104, %37
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii11Polynomials10PolynomialIdE6degreeEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #8 comdat align 2 !prof !63 {
  %2 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !89
  %5 = load ptr, ptr %2, align 8, !tbaa !91
  %6 = ptrtoint ptr %4 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  %9 = lshr exact i64 %8, 3
  %10 = trunc i64 %9 to i32
  %11 = add i32 %10, -1
  ret i32 %11
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii11Polynomials10PolynomialIdE5scaleEd(ptr noundef nonnull align 8 dereferenceable(96) %0, double noundef %1) local_unnamed_addr #2 comdat align 2 !prof !63 {
  %3 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !70
  %5 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !70
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %16, label %8

8:                                                ; preds = %2, %8
  %9 = phi double [ %13, %8 ], [ 1.000000e+00, %2 ]
  %10 = phi ptr [ %14, %8 ], [ %4, %2 ]
  %11 = load double, ptr %10, align 8, !tbaa !98
  %12 = fmul double %9, %11
  store double %12, ptr %10, align 8, !tbaa !98
  %13 = fmul double %9, %1
  %14 = getelementptr inbounds double, ptr %10, i64 1
  %15 = icmp eq ptr %14, %6
  br i1 %15, label %16, label %8, !llvm.loop !116

16:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii11Polynomials10PolynomialIdE5scaleERSt6vectorIdSaIdEEd(ptr noundef nonnull align 8 dereferenceable(24) %0, double noundef %1) local_unnamed_addr #5 comdat align 2 !prof !63 {
  %3 = load ptr, ptr %0, align 8, !tbaa !70
  %4 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !70
  %6 = icmp eq ptr %3, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %2
  ret void

8:                                                ; preds = %2, %8
  %9 = phi double [ %13, %8 ], [ 1.000000e+00, %2 ]
  %10 = phi ptr [ %14, %8 ], [ %3, %2 ]
  %11 = load double, ptr %10, align 8, !tbaa !98
  %12 = fmul double %9, %11
  store double %12, ptr %10, align 8, !tbaa !98
  %13 = fmul double %9, %1
  %14 = getelementptr inbounds double, ptr %10, i64 1
  %15 = icmp eq ptr %14, %5
  br i1 %15, label %7, label %8, !llvm.loop !116
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii11Polynomials10PolynomialIdE10derivativeEv(ptr dead_on_unwind noalias writable sret(%"class.dealii::Polynomials::Polynomial.19") align 8 %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !59 {
  %3 = alloca %"class.dealii::Polynomials::Monomial.25", align 8
  %4 = alloca %"class.std::vector.20", align 8
  %5 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %1, i64 0, i32 1
  %6 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %1, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !89
  %8 = load ptr, ptr %5, align 8, !tbaa !91
  %9 = ptrtoint ptr %7 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = and i64 %11, 34359738360
  %13 = icmp eq i64 %12, 8
  br i1 %13, label %14, label %32

14:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %3) #23
  call void @_ZN6dealii11Polynomials8MonomialIdEC1Ejd(ptr noundef nonnull align 8 dereferenceable(96) %3, i32 noundef 0, double noundef 0.000000e+00)
  invoke void @_ZN6dealii11SubscriptorC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %15 unwind label %25

15:                                               ; preds = %14
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials10PolynomialIdEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  %16 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %0, i64 0, i32 1
  %17 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %3, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !91
  store ptr %18, ptr %16, align 8, !tbaa !91
  %19 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %20 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %3, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !89
  store ptr %21, ptr %19, align 8, !tbaa !89
  %22 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %23 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %3, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !94
  store ptr %24, ptr %22, align 8, !tbaa !94
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials10PolynomialIdEE, i64 0, inrange i32 0, i64 2), ptr %3, align 8, !tbaa !60
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %3) #23
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #23
  br label %85

25:                                               ; preds = %14
  %26 = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials10PolynomialIdEE, i64 0, inrange i32 0, i64 2), ptr %3, align 8, !tbaa !60
  %27 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %3, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !91
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  call void @_ZdlPv(ptr noundef %28) #24
  br label %31

31:                                               ; preds = %25, %30
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %3) #23
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #23
  br label %86

32:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #23
  %33 = ashr exact i64 %11, 3
  %34 = add nsw i64 %33, -1
  %35 = icmp ugt i64 %34, 1152921504606846975
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #25
          to label %37 unwind label %58

37:                                               ; preds = %36
  unreachable

38:                                               ; preds = %32
  %39 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %4, i64 0, i32 1
  %40 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %4, i64 0, i32 2
  %41 = icmp eq i64 %34, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = shl nuw nsw i64 %34, 3
  %44 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %43) #26
          to label %45 unwind label %58

45:                                               ; preds = %42, %38
  %46 = phi ptr [ null, %38 ], [ %44, %42 ]
  store ptr %46, ptr %4, align 8, !tbaa !91
  store ptr %46, ptr %39, align 8, !tbaa !89
  %47 = getelementptr inbounds double, ptr %46, i64 %34
  store ptr %47, ptr %40, align 8, !tbaa !94
  br i1 %41, label %54, label %48

48:                                               ; preds = %45
  store double 0.000000e+00, ptr %46, align 8, !tbaa !98
  %49 = getelementptr double, ptr %46, i64 1
  %50 = icmp eq i64 %34, 1
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = shl nuw nsw i64 %34, 3
  %53 = add nsw i64 %52, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %49, i8 0, i64 %53, i1 false), !tbaa !98
  br label %54

54:                                               ; preds = %45, %48, %51
  %55 = phi ptr [ %46, %45 ], [ %49, %48 ], [ %47, %51 ]
  store ptr %55, ptr %39, align 8, !tbaa !89
  %56 = icmp ugt i64 %33, 1
  br i1 %56, label %60, label %57

57:                                               ; preds = %60, %54
  invoke void @_ZN6dealii11Polynomials10PolynomialIdEC1ERKSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %73 unwind label %78

58:                                               ; preds = %42, %36
  %59 = landingpad { ptr, i32 }
          cleanup
  br label %83

60:                                               ; preds = %54, %60
  %61 = phi i64 [ %71, %60 ], [ 1, %54 ]
  %62 = phi i32 [ %70, %60 ], [ 1, %54 ]
  %63 = uitofp i32 %62 to double
  %64 = getelementptr inbounds double, ptr %8, i64 %61
  %65 = load double, ptr %64, align 8, !tbaa !98
  %66 = fmul double %65, %63
  %67 = add i32 %62, -1
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds double, ptr %46, i64 %68
  store double %66, ptr %69, align 8, !tbaa !98
  %70 = add i32 %62, 1
  %71 = zext i32 %70 to i64
  %72 = icmp ugt i64 %33, %71
  br i1 %72, label %60, label %57, !llvm.loop !117

73:                                               ; preds = %57
  %74 = load ptr, ptr %4, align 8, !tbaa !91
  %75 = icmp eq ptr %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %73
  call void @_ZdlPv(ptr noundef %74) #24
  br label %77

77:                                               ; preds = %73, %76
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #23
  br label %85

78:                                               ; preds = %57
  %79 = landingpad { ptr, i32 }
          cleanup
  %80 = load ptr, ptr %4, align 8, !tbaa !91
  %81 = icmp eq ptr %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %78
  call void @_ZdlPv(ptr noundef %80) #24
  br label %83

83:                                               ; preds = %82, %78, %58
  %84 = phi { ptr, i32 } [ %59, %58 ], [ %79, %78 ], [ %79, %82 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #23
  br label %86

85:                                               ; preds = %77, %15
  ret void

86:                                               ; preds = %83, %31
  %87 = phi { ptr, i32 } [ %26, %31 ], [ %84, %83 ]
  resume { ptr, i32 } %87
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = icmp ugt i64 %1, 1152921504606846975
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #25
  unreachable

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %8 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %9 = icmp eq i64 %1, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = shl nuw nsw i64 %1, 3
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #26
  br label %13

13:                                               ; preds = %6, %10
  %14 = phi ptr [ null, %6 ], [ %12, %10 ]
  store ptr %14, ptr %0, align 8, !tbaa !91
  store ptr %14, ptr %7, align 8, !tbaa !89
  %15 = getelementptr inbounds double, ptr %14, i64 %1
  store ptr %15, ptr %8, align 8, !tbaa !94
  br i1 %9, label %22, label %16

16:                                               ; preds = %13
  store double 0.000000e+00, ptr %14, align 8, !tbaa !98
  %17 = getelementptr double, ptr %14, i64 1
  %18 = icmp eq i64 %1, 1
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = shl nuw nsw i64 %1, 3
  %21 = add nsw i64 %20, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %17, i8 0, i64 %21, i1 false), !tbaa !98
  br label %22

22:                                               ; preds = %19, %13, %16
  %23 = phi ptr [ %14, %13 ], [ %17, %16 ], [ %15, %19 ]
  store ptr %23, ptr %7, align 8, !tbaa !89
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii11Polynomials10PolynomialIdE9primitiveEv(ptr dead_on_unwind noalias writable sret(%"class.dealii::Polynomials::Polynomial.19") align 8 %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !59 {
  %3 = alloca %"class.std::vector.20", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #23
  %4 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %1, i64 0, i32 1
  %5 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %1, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !89
  %7 = load ptr, ptr %4, align 8, !tbaa !91
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = add nsw i64 %11, 1
  %13 = icmp ugt i64 %12, 1152921504606846975
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #25
  unreachable

15:                                               ; preds = %2
  %16 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %3, i64 0, i32 1
  %17 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %3, i64 0, i32 2
  %18 = icmp eq i64 %12, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = shl nuw nsw i64 %12, 3
  %21 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %20) #26
  br label %22

22:                                               ; preds = %19, %15
  %23 = phi ptr [ null, %15 ], [ %21, %19 ]
  store ptr %23, ptr %3, align 8, !tbaa !91
  store ptr %23, ptr %16, align 8, !tbaa !89
  %24 = getelementptr inbounds double, ptr %23, i64 %12
  store ptr %24, ptr %17, align 8, !tbaa !94
  br i1 %18, label %31, label %25

25:                                               ; preds = %22
  store double 0.000000e+00, ptr %23, align 8, !tbaa !98
  %26 = getelementptr double, ptr %23, i64 1
  %27 = icmp eq ptr %6, %7
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = shl nuw nsw i64 %12, 3
  %30 = add nsw i64 %29, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %26, i8 0, i64 %30, i1 false), !tbaa !98
  br label %31

31:                                               ; preds = %22, %25, %28
  %32 = phi ptr [ %23, %22 ], [ %26, %25 ], [ %24, %28 ]
  store ptr %32, ptr %16, align 8, !tbaa !89
  store double 0.000000e+00, ptr %23, align 8, !tbaa !98
  %33 = icmp eq ptr %6, %7
  br i1 %33, label %34, label %35

34:                                               ; preds = %35, %31
  invoke void @_ZN6dealii11Polynomials10PolynomialIdEC1ERKSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %48 unwind label %53

35:                                               ; preds = %31, %35
  %36 = phi i64 [ %46, %35 ], [ 0, %31 ]
  %37 = phi i32 [ %43, %35 ], [ 0, %31 ]
  %38 = getelementptr inbounds double, ptr %7, i64 %36
  %39 = load double, ptr %38, align 8, !tbaa !98
  %40 = uitofp i32 %37 to double
  %41 = fadd double %40, 1.000000e+00
  %42 = fdiv double %39, %41
  %43 = add i32 %37, 1
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds double, ptr %23, i64 %44
  store double %42, ptr %45, align 8, !tbaa !98
  %46 = zext i32 %43 to i64
  %47 = icmp ugt i64 %11, %46
  br i1 %47, label %35, label %34, !llvm.loop !118

48:                                               ; preds = %34
  %49 = load ptr, ptr %3, align 8, !tbaa !91
  %50 = icmp eq ptr %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  call void @_ZdlPv(ptr noundef %49) #24
  br label %52

52:                                               ; preds = %48, %51
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #23
  ret void

53:                                               ; preds = %34
  %54 = landingpad { ptr, i32 }
          cleanup
  %55 = load ptr, ptr %3, align 8, !tbaa !91
  %56 = icmp eq ptr %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  call void @_ZdlPv(ptr noundef %55) #24
  br label %58

58:                                               ; preds = %57, %53
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #23
  resume { ptr, i32 } %54
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef nonnull align 8 dereferenceable(96) ptr @_ZN6dealii11Polynomials10PolynomialIdEmLEd(ptr noundef nonnull align 8 dereferenceable(96) %0, double noundef %1) local_unnamed_addr #5 comdat align 2 !prof !63 {
  %3 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !70
  %5 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !70
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %9, %2
  ret ptr %0

9:                                                ; preds = %2, %9
  %10 = phi ptr [ %13, %9 ], [ %4, %2 ]
  %11 = load double, ptr %10, align 8, !tbaa !98
  %12 = fmul double %11, %1
  store double %12, ptr %10, align 8, !tbaa !98
  %13 = getelementptr inbounds double, ptr %10, i64 1
  %14 = icmp eq ptr %13, %6
  br i1 %14, label %8, label %9, !llvm.loop !119
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef nonnull align 8 dereferenceable(96) ptr @_ZN6dealii11Polynomials10PolynomialIdEmLERKS2_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !120 {
  %3 = alloca %"class.std::vector.20", align 8
  %4 = alloca double, align 8
  %5 = alloca %"class.std::allocator.22", align 1
  %6 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !89
  %9 = load ptr, ptr %6, align 8, !tbaa !91
  %10 = ptrtoint ptr %8 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %1, i64 0, i32 1
  %15 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %1, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !89
  %17 = load ptr, ptr %14, align 8, !tbaa !91
  %18 = ptrtoint ptr %16 to i64
  %19 = ptrtoint ptr %17 to i64
  %20 = sub i64 %18, %19
  %21 = lshr exact i64 %20, 3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #23
  %22 = add nuw nsw i64 %13, 4294967295
  %23 = add nuw nsw i64 %22, %21
  %24 = and i64 %23, 4294967295
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  store double 0.000000e+00, ptr %4, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #23
  call void @_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %24, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  %25 = load ptr, ptr %15, align 8, !tbaa !89
  %26 = load ptr, ptr %14, align 8, !tbaa !91
  %27 = ptrtoint ptr %25 to i64
  %28 = ptrtoint ptr %26 to i64
  %29 = sub i64 %27, %28
  %30 = ashr exact i64 %29, 3
  %31 = icmp eq ptr %25, %26
  br i1 %31, label %46, label %32, !prof !121

32:                                               ; preds = %2
  %33 = load ptr, ptr %7, align 8, !tbaa !89
  %34 = load ptr, ptr %6, align 8, !tbaa !91
  %35 = ptrtoint ptr %33 to i64
  %36 = ptrtoint ptr %34 to i64
  %37 = sub i64 %35, %36
  %38 = ashr exact i64 %37, 3
  %39 = icmp eq ptr %33, %34
  %40 = load ptr, ptr %3, align 8
  br label %41

41:                                               ; preds = %32, %48
  %42 = phi i64 [ 0, %32 ], [ %50, %48 ]
  %43 = phi i32 [ 0, %32 ], [ %49, %48 ]
  br i1 %39, label %48, label %44, !prof !121

44:                                               ; preds = %41
  %45 = getelementptr inbounds double, ptr %26, i64 %42
  br label %52

46:                                               ; preds = %48, %2
  %47 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIdSaIdEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %66 unwind label %71, !prof !122

48:                                               ; preds = %52, %41
  %49 = add i32 %43, 1
  %50 = zext i32 %49 to i64
  %51 = icmp ugt i64 %30, %50
  br i1 %51, label %41, label %46, !prof !123, !llvm.loop !124

52:                                               ; preds = %44, %52
  %53 = phi i64 [ 0, %44 ], [ %64, %52 ]
  %54 = phi i32 [ 0, %44 ], [ %63, %52 ]
  %55 = getelementptr inbounds double, ptr %34, i64 %53
  %56 = load double, ptr %55, align 8, !tbaa !98
  %57 = load double, ptr %45, align 8, !tbaa !98
  %58 = add i32 %54, %43
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds double, ptr %40, i64 %59
  %61 = load double, ptr %60, align 8, !tbaa !98
  %62 = call double @llvm.fmuladd.f64(double %56, double %57, double %61)
  store double %62, ptr %60, align 8, !tbaa !98
  %63 = add i32 %54, 1
  %64 = zext i32 %63 to i64
  %65 = icmp ugt i64 %38, %64
  br i1 %65, label %52, label %48, !prof !121, !llvm.loop !125

66:                                               ; preds = %46
  %67 = load ptr, ptr %3, align 8, !tbaa !91
  %68 = icmp eq ptr %67, null
  br i1 %68, label %70, label %69, !prof !126

69:                                               ; preds = %66
  call void @_ZdlPv(ptr noundef %67) #24
  br label %70

70:                                               ; preds = %66, %69
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #23
  ret ptr %0

71:                                               ; preds = %46
  %72 = landingpad { ptr, i32 }
          cleanup
  %73 = load ptr, ptr %3, align 8, !tbaa !91
  %74 = icmp eq ptr %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %71
  call void @_ZdlPv(ptr noundef %73) #24
  br label %76

76:                                               ; preds = %75, %71
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #23
  resume { ptr, i32 } %72
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !127 {
  %5 = icmp ugt i64 %1, 1152921504606846975
  br i1 %5, label %6, label %7, !prof !128

6:                                                ; preds = %4
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #25
  unreachable

7:                                                ; preds = %4
  %8 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %9 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %10 = icmp eq i64 %1, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br i1 %10, label %14, label %11, !prof !128

11:                                               ; preds = %7
  %12 = shl nuw nsw i64 %1, 3
  %13 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %12) #26
  br label %14

14:                                               ; preds = %7, %11
  %15 = phi ptr [ null, %7 ], [ %13, %11 ]
  store ptr %15, ptr %0, align 8, !tbaa !91
  store ptr %15, ptr %8, align 8, !tbaa !89
  %16 = getelementptr inbounds double, ptr %15, i64 %1
  store ptr %16, ptr %9, align 8, !tbaa !94
  br i1 %10, label %23, label %17, !prof !128

17:                                               ; preds = %14
  %18 = load double, ptr %2, align 8, !tbaa !98
  br label %19

19:                                               ; preds = %17, %19
  %20 = phi ptr [ %21, %19 ], [ %15, %17 ]
  store double %18, ptr %20, align 8, !tbaa !98
  %21 = getelementptr inbounds double, ptr %20, i64 1
  %22 = icmp eq ptr %21, %16
  br i1 %22, label %23, label %19, !prof !129, !llvm.loop !130

23:                                               ; preds = %19, %14
  %24 = phi ptr [ %15, %14 ], [ %16, %19 ]
  store ptr %24, ptr %8, align 8, !tbaa !89
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIdSaIdEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !131 {
  %3 = icmp eq ptr %1, %0
  br i1 %3, label %59, label %4, !prof !132

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !70
  %7 = load ptr, ptr %1, align 8, !tbaa !70
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !94
  %13 = load ptr, ptr %0, align 8, !tbaa !70
  %14 = ptrtoint ptr %12 to i64
  %15 = ptrtoint ptr %13 to i64
  %16 = sub i64 %14, %15
  %17 = icmp ugt i64 %10, %16
  br i1 %17, label %18, label %29, !prof !133

18:                                               ; preds = %4
  %19 = ashr exact i64 %10, 3
  %20 = tail call noundef ptr @_ZNSt15__new_allocatorIdE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %19, ptr noundef null)
  %21 = icmp eq ptr %6, %7
  br i1 %21, label %23, label %22, !prof !134

22:                                               ; preds = %18
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %20, ptr align 8 %7, i64 %10, i1 false), !prof !135
  br label %23

23:                                               ; preds = %18, %22
  %24 = load ptr, ptr %0, align 8, !tbaa !91
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26, !prof !136

26:                                               ; preds = %23
  tail call void @_ZdlPv(ptr noundef %24) #24
  br label %27

27:                                               ; preds = %23, %26
  store ptr %20, ptr %0, align 8, !tbaa !91
  %28 = getelementptr inbounds i8, ptr %20, i64 %10
  store ptr %28, ptr %11, align 8, !tbaa !94
  br label %55

29:                                               ; preds = %4
  %30 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !89
  %32 = ptrtoint ptr %31 to i64
  %33 = sub i64 %32, %15
  %34 = icmp ult i64 %33, %10
  br i1 %34, label %38, label %35, !prof !137

35:                                               ; preds = %29
  %36 = icmp eq ptr %6, %7
  br i1 %36, label %55, label %37, !prof !138

37:                                               ; preds = %35
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %13, ptr align 8 %7, i64 %10, i1 false), !prof !139
  br label %55

38:                                               ; preds = %29
  %39 = icmp eq ptr %31, %13
  br i1 %39, label %41, label %40

40:                                               ; preds = %38
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %13, ptr align 8 %7, i64 %33, i1 false)
  br label %41

41:                                               ; preds = %38, %40
  %42 = load ptr, ptr %1, align 8, !tbaa !91
  %43 = load ptr, ptr %30, align 8, !tbaa !89
  %44 = load ptr, ptr %0, align 8, !tbaa !91
  %45 = ptrtoint ptr %43 to i64
  %46 = ptrtoint ptr %44 to i64
  %47 = sub i64 %45, %46
  %48 = getelementptr inbounds i8, ptr %42, i64 %47
  %49 = load ptr, ptr %5, align 8, !tbaa !89
  %50 = icmp eq ptr %49, %48
  br i1 %50, label %55, label %51

51:                                               ; preds = %41
  %52 = ptrtoint ptr %49 to i64
  %53 = ptrtoint ptr %48 to i64
  %54 = sub i64 %52, %53
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %43, ptr align 8 %48, i64 %54, i1 false)
  br label %55

55:                                               ; preds = %51, %41, %37, %35, %27
  %56 = load ptr, ptr %0, align 8, !tbaa !91
  %57 = getelementptr inbounds i8, ptr %56, i64 %10
  %58 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %57, ptr %58, align 8, !tbaa !89
  br label %59

59:                                               ; preds = %55, %2
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef nonnull align 8 dereferenceable(96) ptr @_ZN6dealii11Polynomials10PolynomialIdEpLERKS2_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !59 {
  %3 = alloca double, align 8
  %4 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %1, i64 0, i32 1
  %5 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %1, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !89
  %7 = load ptr, ptr %4, align 8, !tbaa !91
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %0, i64 0, i32 1
  %12 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !70
  %14 = load ptr, ptr %11, align 8, !tbaa !91
  %15 = ptrtoint ptr %13 to i64
  %16 = ptrtoint ptr %14 to i64
  %17 = sub i64 %15, %16
  %18 = icmp ugt i64 %10, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = ashr exact i64 %10, 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #23
  store double 0.000000e+00, ptr %3, align 8, !tbaa !98
  %21 = ashr exact i64 %17, 3
  %22 = sub nsw i64 %20, %21
  call void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr %13, i64 noundef %22, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #23
  br label %23

23:                                               ; preds = %19, %2
  %24 = load ptr, ptr %5, align 8, !tbaa !89
  %25 = load ptr, ptr %4, align 8, !tbaa !91
  %26 = ptrtoint ptr %24 to i64
  %27 = ptrtoint ptr %25 to i64
  %28 = sub i64 %26, %27
  %29 = ashr exact i64 %28, 3
  %30 = icmp eq ptr %24, %25
  br i1 %30, label %33, label %31

31:                                               ; preds = %23
  %32 = load ptr, ptr %11, align 8, !tbaa !91
  br label %34

33:                                               ; preds = %34, %23
  ret ptr %0

34:                                               ; preds = %31, %34
  %35 = phi i64 [ 0, %31 ], [ %43, %34 ]
  %36 = phi i32 [ 0, %31 ], [ %42, %34 ]
  %37 = getelementptr inbounds double, ptr %25, i64 %35
  %38 = load double, ptr %37, align 8, !tbaa !98
  %39 = getelementptr inbounds double, ptr %32, i64 %35
  %40 = load double, ptr %39, align 8, !tbaa !98
  %41 = fadd double %38, %40
  store double %41, ptr %39, align 8, !tbaa !98
  %42 = add i32 %36, 1
  %43 = zext i32 %42 to i64
  %44 = icmp ugt i64 %29, %43
  br i1 %44, label %34, label %33, !llvm.loop !140
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef nonnull align 8 dereferenceable(96) ptr @_ZN6dealii11Polynomials10PolynomialIdEmIERKS2_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !59 {
  %3 = alloca double, align 8
  %4 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %1, i64 0, i32 1
  %5 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %1, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !89
  %7 = load ptr, ptr %4, align 8, !tbaa !91
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %0, i64 0, i32 1
  %12 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !70
  %14 = load ptr, ptr %11, align 8, !tbaa !91
  %15 = ptrtoint ptr %13 to i64
  %16 = ptrtoint ptr %14 to i64
  %17 = sub i64 %15, %16
  %18 = icmp ugt i64 %10, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = ashr exact i64 %10, 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #23
  store double 0.000000e+00, ptr %3, align 8, !tbaa !98
  %21 = ashr exact i64 %17, 3
  %22 = sub nsw i64 %20, %21
  call void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr %13, i64 noundef %22, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #23
  br label %23

23:                                               ; preds = %19, %2
  %24 = load ptr, ptr %5, align 8, !tbaa !89
  %25 = load ptr, ptr %4, align 8, !tbaa !91
  %26 = ptrtoint ptr %24 to i64
  %27 = ptrtoint ptr %25 to i64
  %28 = sub i64 %26, %27
  %29 = ashr exact i64 %28, 3
  %30 = icmp eq ptr %24, %25
  br i1 %30, label %33, label %31

31:                                               ; preds = %23
  %32 = load ptr, ptr %11, align 8, !tbaa !91
  br label %34

33:                                               ; preds = %34, %23
  ret ptr %0

34:                                               ; preds = %31, %34
  %35 = phi i64 [ 0, %31 ], [ %43, %34 ]
  %36 = phi i32 [ 0, %31 ], [ %42, %34 ]
  %37 = getelementptr inbounds double, ptr %25, i64 %35
  %38 = load double, ptr %37, align 8, !tbaa !98
  %39 = getelementptr inbounds double, ptr %32, i64 %35
  %40 = load double, ptr %39, align 8, !tbaa !98
  %41 = fsub double %40, %38
  store double %41, ptr %39, align 8, !tbaa !98
  %42 = add i32 %36, 1
  %43 = zext i32 %42 to i64
  %44 = icmp ugt i64 %29, %43
  br i1 %44, label %34, label %33, !llvm.loop !141
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii11Polynomials10PolynomialIdE5printERSo(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 !prof !63 {
  %3 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !89
  %6 = load ptr, ptr %3, align 8, !tbaa !91
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = lshr exact i64 %9, 3
  %11 = trunc i64 %10 to i32
  %12 = add i32 %11, -1
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = zext nneg i32 %12 to i64
  br label %17

16:                                               ; preds = %17, %2
  ret void

17:                                               ; preds = %14, %17
  %18 = phi i64 [ %15, %14 ], [ %33, %17 ]
  %19 = load ptr, ptr %3, align 8, !tbaa !91
  %20 = getelementptr inbounds double, ptr %19, i64 %18
  %21 = load double, ptr %20, align 8, !tbaa !98
  %22 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %21)
  %23 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull @.str, i64 noundef 3)
  %24 = trunc i64 %18 to i32
  %25 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %22, i32 noundef %24)
  %26 = load ptr, ptr %25, align 8, !tbaa !60
  %27 = getelementptr i8, ptr %26, i64 -24
  %28 = load i64, ptr %27, align 8
  %29 = getelementptr inbounds i8, ptr %25, i64 %28
  %30 = tail call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %29, i8 noundef signext 10)
  %31 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %25, i8 noundef signext %30)
  %32 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %31)
  %33 = add nsw i64 %18, -1
  %34 = icmp sgt i64 %18, 0
  br i1 %34, label %17, label %16, !llvm.loop !142
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii11Polynomials10PolynomialIdE8multiplyERSt6vectorIdSaIdEEd(ptr noundef nonnull align 8 dereferenceable(24) %0, double noundef %1) local_unnamed_addr #5 comdat align 2 !prof !63 {
  %3 = load ptr, ptr %0, align 8, !tbaa !70
  %4 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !70
  %6 = icmp eq ptr %3, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %2
  ret void

8:                                                ; preds = %2, %8
  %9 = phi ptr [ %12, %8 ], [ %3, %2 ]
  %10 = load double, ptr %9, align 8, !tbaa !98
  %11 = fmul double %10, %1
  store double %11, ptr %9, align 8, !tbaa !98
  %12 = getelementptr inbounds double, ptr %9, i64 1
  %13 = icmp eq ptr %12, %5
  br i1 %13, label %7, label %8, !llvm.loop !143
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii11Polynomials10PolynomialIfE5shiftIfEEvT_(ptr noundef nonnull align 8 dereferenceable(96) %0, float noundef %1) local_unnamed_addr #2 comdat align 2 !prof !63 {
  %3 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %0, i64 0, i32 1
  tail call void @_ZN6dealii11Polynomials10PolynomialIfE5shiftIfEEvRSt6vectorIfSaIfEET_(ptr noundef nonnull align 8 dereferenceable(24) %3, float noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6dealii11Polynomials10PolynomialIfE5shiftIfEEvRSt6vectorIfSaIfEET_(ptr noundef nonnull align 8 dereferenceable(24) %0, float noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !59 {
  %3 = alloca %"class.std::vector", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #23
  %4 = load ptr, ptr %0, align 8, !tbaa !70
  %5 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !70
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  invoke void @_ZNSt6vectorIfSaIfEE19_M_range_initializeIN9__gnu_cxx17__normal_iteratorIPfS1_EEEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %4, ptr %6)
          to label %7 unwind label %16

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %3, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !70
  %10 = load ptr, ptr %3, align 8, !tbaa !70
  %11 = ptrtoint ptr %9 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = ashr exact i64 %13, 2
  %15 = icmp ugt i64 %14, 1
  br i1 %15, label %20, label %27

16:                                               ; preds = %2
  %17 = landingpad { ptr, i32 }
          cleanup
  %18 = load ptr, ptr %3, align 8, !tbaa !68
  %19 = icmp eq ptr %18, null
  br i1 %19, label %64, label %61

20:                                               ; preds = %7, %28
  %21 = phi i64 [ %30, %28 ], [ 1, %7 ]
  %22 = phi i32 [ %29, %28 ], [ 1, %7 ]
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds float, ptr %10, i64 %21
  %26 = zext i32 %22 to i64
  br label %32

27:                                               ; preds = %28, %7
  invoke void @_ZNSt6vectorIfSaIfEE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPfS1_EEEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %10, ptr %9)
          to label %52 unwind label %57

28:                                               ; preds = %32, %20
  %29 = add i32 %22, 1
  %30 = zext i32 %29 to i64
  %31 = icmp ugt i64 %14, %30
  br i1 %31, label %20, label %27, !llvm.loop !144

32:                                               ; preds = %24, %32
  %33 = phi i64 [ 0, %24 ], [ %39, %32 ]
  %34 = phi float [ %1, %24 ], [ %50, %32 ]
  %35 = phi i32 [ 1, %24 ], [ %41, %32 ]
  %36 = trunc i64 %33 to i32
  %37 = sub i32 %22, %36
  %38 = mul i32 %37, %35
  %39 = add nuw nsw i64 %33, 1
  %40 = trunc i64 %39 to i32
  %41 = udiv i32 %38, %40
  %42 = load float, ptr %25, align 4, !tbaa !71
  %43 = uitofp i32 %41 to float
  %44 = fmul float %42, %43
  %45 = add i32 %37, -1
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds float, ptr %10, i64 %46
  %48 = load float, ptr %47, align 4, !tbaa !71
  %49 = call float @llvm.fmuladd.f32(float %44, float %34, float %48)
  store float %49, ptr %47, align 4, !tbaa !71
  %50 = fmul float %34, %1
  %51 = icmp eq i64 %39, %26
  br i1 %51, label %28, label %32, !llvm.loop !145

52:                                               ; preds = %27
  %53 = load ptr, ptr %3, align 8, !tbaa !68
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  call void @_ZdlPv(ptr noundef %53) #24
  br label %56

56:                                               ; preds = %52, %55
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #23
  ret void

57:                                               ; preds = %27
  %58 = landingpad { ptr, i32 }
          cleanup
  %59 = load ptr, ptr %3, align 8, !tbaa !68
  %60 = icmp eq ptr %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %57, %16
  %62 = phi ptr [ %18, %16 ], [ %59, %57 ]
  %63 = phi { ptr, i32 } [ %17, %16 ], [ %58, %57 ]
  call void @_ZdlPv(ptr noundef %62) #24
  br label %64

64:                                               ; preds = %61, %57, %16
  %65 = phi { ptr, i32 } [ %17, %16 ], [ %58, %57 ], [ %63, %61 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #23
  resume { ptr, i32 } %65
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii11Polynomials10PolynomialIfE5shiftIdEEvT_(ptr noundef nonnull align 8 dereferenceable(96) %0, double noundef %1) local_unnamed_addr #2 comdat align 2 !prof !63 {
  %3 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %0, i64 0, i32 1
  tail call void @_ZN6dealii11Polynomials10PolynomialIfE5shiftIdEEvRSt6vectorIfSaIfEET_(ptr noundef nonnull align 8 dereferenceable(24) %3, double noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6dealii11Polynomials10PolynomialIfE5shiftIdEEvRSt6vectorIfSaIfEET_(ptr noundef nonnull align 8 dereferenceable(24) %0, double noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !59 {
  %3 = alloca %"class.std::vector.20", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #23
  %4 = load ptr, ptr %0, align 8, !tbaa !70
  %5 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !70
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  invoke void @_ZNSt6vectorIdSaIdEE19_M_range_initializeIN9__gnu_cxx17__normal_iteratorIPfS_IfSaIfEEEEEEvT_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %4, ptr %6)
          to label %7 unwind label %16

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %3, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !70
  %10 = load ptr, ptr %3, align 8, !tbaa !70
  %11 = ptrtoint ptr %9 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = ashr exact i64 %13, 3
  %15 = icmp ugt i64 %14, 1
  br i1 %15, label %20, label %27

16:                                               ; preds = %2
  %17 = landingpad { ptr, i32 }
          cleanup
  %18 = load ptr, ptr %3, align 8, !tbaa !91
  %19 = icmp eq ptr %18, null
  br i1 %19, label %64, label %61

20:                                               ; preds = %7, %28
  %21 = phi i64 [ %30, %28 ], [ 1, %7 ]
  %22 = phi i32 [ %29, %28 ], [ 1, %7 ]
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds double, ptr %10, i64 %21
  %26 = zext i32 %22 to i64
  br label %32

27:                                               ; preds = %28, %7
  invoke void @_ZNSt6vectorIfSaIfEE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPdS_IdSaIdEEEEEEvT_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %10, ptr %9)
          to label %52 unwind label %57

28:                                               ; preds = %32, %20
  %29 = add i32 %22, 1
  %30 = zext i32 %29 to i64
  %31 = icmp ugt i64 %14, %30
  br i1 %31, label %20, label %27, !llvm.loop !146

32:                                               ; preds = %24, %32
  %33 = phi i64 [ 0, %24 ], [ %39, %32 ]
  %34 = phi double [ %1, %24 ], [ %50, %32 ]
  %35 = phi i32 [ 1, %24 ], [ %41, %32 ]
  %36 = trunc i64 %33 to i32
  %37 = sub i32 %22, %36
  %38 = mul i32 %37, %35
  %39 = add nuw nsw i64 %33, 1
  %40 = trunc i64 %39 to i32
  %41 = udiv i32 %38, %40
  %42 = load double, ptr %25, align 8, !tbaa !98
  %43 = uitofp i32 %41 to double
  %44 = fmul double %42, %43
  %45 = add i32 %37, -1
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds double, ptr %10, i64 %46
  %48 = load double, ptr %47, align 8, !tbaa !98
  %49 = call double @llvm.fmuladd.f64(double %44, double %34, double %48)
  store double %49, ptr %47, align 8, !tbaa !98
  %50 = fmul double %34, %1
  %51 = icmp eq i64 %39, %26
  br i1 %51, label %28, label %32, !llvm.loop !147

52:                                               ; preds = %27
  %53 = load ptr, ptr %3, align 8, !tbaa !91
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  call void @_ZdlPv(ptr noundef %53) #24
  br label %56

56:                                               ; preds = %52, %55
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #23
  ret void

57:                                               ; preds = %27
  %58 = landingpad { ptr, i32 }
          cleanup
  %59 = load ptr, ptr %3, align 8, !tbaa !91
  %60 = icmp eq ptr %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %57, %16
  %62 = phi ptr [ %18, %16 ], [ %59, %57 ]
  %63 = phi { ptr, i32 } [ %17, %16 ], [ %58, %57 ]
  call void @_ZdlPv(ptr noundef %62) #24
  br label %64

64:                                               ; preds = %61, %57, %16
  %65 = phi { ptr, i32 } [ %17, %16 ], [ %58, %57 ], [ %63, %61 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #23
  resume { ptr, i32 } %65
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii11Polynomials10PolynomialIdE5shiftIfEEvT_(ptr noundef nonnull align 8 dereferenceable(96) %0, float noundef %1) local_unnamed_addr #2 comdat align 2 !prof !63 {
  %3 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %0, i64 0, i32 1
  tail call void @_ZN6dealii11Polynomials10PolynomialIdE5shiftIfEEvRSt6vectorIdSaIdEET_(ptr noundef nonnull align 8 dereferenceable(24) %3, float noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6dealii11Polynomials10PolynomialIdE5shiftIfEEvRSt6vectorIdSaIdEET_(ptr noundef nonnull align 8 dereferenceable(24) %0, float noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !59 {
  %3 = alloca %"class.std::vector", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #23
  %4 = load ptr, ptr %0, align 8, !tbaa !70
  %5 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !70
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  invoke void @_ZNSt6vectorIfSaIfEE19_M_range_initializeIN9__gnu_cxx17__normal_iteratorIPdS_IdSaIdEEEEEEvT_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %4, ptr %6)
          to label %7 unwind label %16

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %3, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !70
  %10 = load ptr, ptr %3, align 8, !tbaa !70
  %11 = ptrtoint ptr %9 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = ashr exact i64 %13, 2
  %15 = icmp ugt i64 %14, 1
  br i1 %15, label %20, label %27

16:                                               ; preds = %2
  %17 = landingpad { ptr, i32 }
          cleanup
  %18 = load ptr, ptr %3, align 8, !tbaa !68
  %19 = icmp eq ptr %18, null
  br i1 %19, label %64, label %61

20:                                               ; preds = %7, %28
  %21 = phi i64 [ %30, %28 ], [ 1, %7 ]
  %22 = phi i32 [ %29, %28 ], [ 1, %7 ]
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds float, ptr %10, i64 %21
  %26 = zext i32 %22 to i64
  br label %32

27:                                               ; preds = %28, %7
  invoke void @_ZNSt6vectorIdSaIdEE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPfS_IfSaIfEEEEEEvT_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %10, ptr %9)
          to label %52 unwind label %57

28:                                               ; preds = %32, %20
  %29 = add i32 %22, 1
  %30 = zext i32 %29 to i64
  %31 = icmp ugt i64 %14, %30
  br i1 %31, label %20, label %27, !llvm.loop !148

32:                                               ; preds = %24, %32
  %33 = phi i64 [ 0, %24 ], [ %39, %32 ]
  %34 = phi float [ %1, %24 ], [ %50, %32 ]
  %35 = phi i32 [ 1, %24 ], [ %41, %32 ]
  %36 = trunc i64 %33 to i32
  %37 = sub i32 %22, %36
  %38 = mul i32 %37, %35
  %39 = add nuw nsw i64 %33, 1
  %40 = trunc i64 %39 to i32
  %41 = udiv i32 %38, %40
  %42 = load float, ptr %25, align 4, !tbaa !71
  %43 = uitofp i32 %41 to float
  %44 = fmul float %42, %43
  %45 = add i32 %37, -1
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds float, ptr %10, i64 %46
  %48 = load float, ptr %47, align 4, !tbaa !71
  %49 = call float @llvm.fmuladd.f32(float %44, float %34, float %48)
  store float %49, ptr %47, align 4, !tbaa !71
  %50 = fmul float %34, %1
  %51 = icmp eq i64 %39, %26
  br i1 %51, label %28, label %32, !llvm.loop !149

52:                                               ; preds = %27
  %53 = load ptr, ptr %3, align 8, !tbaa !68
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  call void @_ZdlPv(ptr noundef %53) #24
  br label %56

56:                                               ; preds = %52, %55
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #23
  ret void

57:                                               ; preds = %27
  %58 = landingpad { ptr, i32 }
          cleanup
  %59 = load ptr, ptr %3, align 8, !tbaa !68
  %60 = icmp eq ptr %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %57, %16
  %62 = phi ptr [ %18, %16 ], [ %59, %57 ]
  %63 = phi { ptr, i32 } [ %17, %16 ], [ %58, %57 ]
  call void @_ZdlPv(ptr noundef %62) #24
  br label %64

64:                                               ; preds = %61, %57, %16
  %65 = phi { ptr, i32 } [ %17, %16 ], [ %58, %57 ], [ %63, %61 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #23
  resume { ptr, i32 } %65
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii11Polynomials10PolynomialIdE5shiftIdEEvT_(ptr noundef nonnull align 8 dereferenceable(96) %0, double noundef %1) local_unnamed_addr #2 comdat align 2 !prof !63 {
  %3 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %0, i64 0, i32 1
  tail call void @_ZN6dealii11Polynomials10PolynomialIdE5shiftIdEEvRSt6vectorIdSaIdEET_(ptr noundef nonnull align 8 dereferenceable(24) %3, double noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6dealii11Polynomials10PolynomialIdE5shiftIdEEvRSt6vectorIdSaIdEET_(ptr noundef nonnull align 8 dereferenceable(24) %0, double noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !59 {
  %3 = alloca %"class.std::vector.20", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #23
  %4 = load ptr, ptr %0, align 8, !tbaa !70
  %5 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !70
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  invoke void @_ZNSt6vectorIdSaIdEE19_M_range_initializeIN9__gnu_cxx17__normal_iteratorIPdS1_EEEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %4, ptr %6)
          to label %7 unwind label %16

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %3, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !70
  %10 = load ptr, ptr %3, align 8, !tbaa !70
  %11 = ptrtoint ptr %9 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = ashr exact i64 %13, 3
  %15 = icmp ugt i64 %14, 1
  br i1 %15, label %20, label %27

16:                                               ; preds = %2
  %17 = landingpad { ptr, i32 }
          cleanup
  %18 = load ptr, ptr %3, align 8, !tbaa !91
  %19 = icmp eq ptr %18, null
  br i1 %19, label %64, label %61

20:                                               ; preds = %7, %28
  %21 = phi i64 [ %30, %28 ], [ 1, %7 ]
  %22 = phi i32 [ %29, %28 ], [ 1, %7 ]
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds double, ptr %10, i64 %21
  %26 = zext i32 %22 to i64
  br label %32

27:                                               ; preds = %28, %7
  invoke void @_ZNSt6vectorIdSaIdEE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPdS1_EEEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %10, ptr %9)
          to label %52 unwind label %57

28:                                               ; preds = %32, %20
  %29 = add i32 %22, 1
  %30 = zext i32 %29 to i64
  %31 = icmp ugt i64 %14, %30
  br i1 %31, label %20, label %27, !llvm.loop !150

32:                                               ; preds = %24, %32
  %33 = phi i64 [ 0, %24 ], [ %39, %32 ]
  %34 = phi double [ %1, %24 ], [ %50, %32 ]
  %35 = phi i32 [ 1, %24 ], [ %41, %32 ]
  %36 = trunc i64 %33 to i32
  %37 = sub i32 %22, %36
  %38 = mul i32 %37, %35
  %39 = add nuw nsw i64 %33, 1
  %40 = trunc i64 %39 to i32
  %41 = udiv i32 %38, %40
  %42 = load double, ptr %25, align 8, !tbaa !98
  %43 = uitofp i32 %41 to double
  %44 = fmul double %42, %43
  %45 = add i32 %37, -1
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds double, ptr %10, i64 %46
  %48 = load double, ptr %47, align 8, !tbaa !98
  %49 = call double @llvm.fmuladd.f64(double %44, double %34, double %48)
  store double %49, ptr %47, align 8, !tbaa !98
  %50 = fmul double %34, %1
  %51 = icmp eq i64 %39, %26
  br i1 %51, label %28, label %32, !llvm.loop !151

52:                                               ; preds = %27
  %53 = load ptr, ptr %3, align 8, !tbaa !91
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  call void @_ZdlPv(ptr noundef %53) #24
  br label %56

56:                                               ; preds = %52, %55
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #23
  ret void

57:                                               ; preds = %27
  %58 = landingpad { ptr, i32 }
          cleanup
  %59 = load ptr, ptr %3, align 8, !tbaa !91
  %60 = icmp eq ptr %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %57, %16
  %62 = phi ptr [ %18, %16 ], [ %59, %57 ]
  %63 = phi { ptr, i32 } [ %17, %16 ], [ %58, %57 ]
  call void @_ZdlPv(ptr noundef %62) #24
  br label %64

64:                                               ; preds = %61, %57, %16
  %65 = phi { ptr, i32 } [ %17, %16 ], [ %58, %57 ], [ %63, %61 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #23
  resume { ptr, i32 } %65
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii11Polynomials8MonomialIfEC2Ejd(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %1, double noundef %2) unnamed_addr #2 comdat($_ZN6dealii11Polynomials8MonomialIfEC5Ejd) align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  %4 = alloca float, align 4
  %5 = alloca %"class.std::allocator.16", align 1
  %6 = alloca %"class.std::vector", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  %7 = add i32 %1, 1
  %8 = zext i32 %7 to i64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #23, !noalias !152
  store float 0.000000e+00, ptr %4, align 4, !tbaa !71, !noalias !152
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #23, !noalias !152
  call void @_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %8, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #23, !noalias !152
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #23, !noalias !152
  %9 = fptrunc double %2 to float
  %10 = zext i32 %1 to i64
  %11 = load ptr, ptr %6, align 8, !tbaa !68, !alias.scope !152
  %12 = getelementptr inbounds float, ptr %11, i64 %10
  store float %9, ptr %12, align 4, !tbaa !71
  invoke void @_ZN6dealii11Polynomials10PolynomialIfEC2ERKSt6vectorIfSaIfEE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %13 unwind label %18

13:                                               ; preds = %3
  %14 = load ptr, ptr %6, align 8, !tbaa !68
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  call void @_ZdlPv(ptr noundef %14) #24
  br label %17

17:                                               ; preds = %13, %16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #23
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials8MonomialIfEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  ret void

18:                                               ; preds = %3
  %19 = landingpad { ptr, i32 }
          cleanup
  %20 = load ptr, ptr %6, align 8, !tbaa !68
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  call void @_ZdlPv(ptr noundef %20) #24
  br label %23

23:                                               ; preds = %18, %22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #23
  resume { ptr, i32 } %19
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii11Polynomials8MonomialIfE11make_vectorEjd(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, i32 noundef %1, double noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  %4 = alloca float, align 4
  %5 = alloca %"class.std::allocator.16", align 1
  %6 = add i32 %1, 1
  %7 = zext i32 %6 to i64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #23
  store float 0.000000e+00, ptr %4, align 4, !tbaa !71
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #23
  call void @_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %7, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #23
  %8 = fptrunc double %2 to float
  %9 = zext i32 %1 to i64
  %10 = load ptr, ptr %0, align 8, !tbaa !68
  %11 = getelementptr inbounds float, ptr %10, i64 %9
  store float %8, ptr %11, align 4, !tbaa !71
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii11Polynomials8MonomialIfE23generate_complete_basisEj(ptr dead_on_unwind noalias writable sret(%"class.std::vector.27") align 8 %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !59 {
  %3 = alloca %"class.dealii::Polynomials::Monomial", align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<float>, std::allocator<dealii::Polynomials::Polynomial<float>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<float>, std::allocator<dealii::Polynomials::Polynomial<float>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %6 = add i32 %1, 1
  %7 = zext i32 %6 to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  invoke void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIfEESaIS3_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %7)
          to label %8 unwind label %13

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %3, i64 0, i32 1
  %10 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %3, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %11 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %3, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %12 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %3, i64 0, i32 1
  br label %15

13:                                               ; preds = %2
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %51

15:                                               ; preds = %8, %36
  %16 = phi i32 [ 0, %8 ], [ %37, %36 ]
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %3) #23
  invoke void @_ZN6dealii11Polynomials8MonomialIfEC1Ejd(ptr noundef nonnull align 8 dereferenceable(96) %3, i32 noundef %16, double noundef 1.000000e+00)
          to label %17 unwind label %39

17:                                               ; preds = %15
  %18 = load ptr, ptr %4, align 8, !tbaa !70
  %19 = load ptr, ptr %5, align 8, !tbaa !155
  %20 = icmp eq ptr %18, %19
  br i1 %20, label %31, label %21

21:                                               ; preds = %17
  invoke void @_ZN6dealii11SubscriptorC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %18, ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %22 unwind label %41

22:                                               ; preds = %21
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials10PolynomialIfEE, i64 0, inrange i32 0, i64 2), ptr %18, align 8, !tbaa !60
  %23 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %18, i64 0, i32 1
  %24 = load ptr, ptr %9, align 8, !tbaa !68
  store ptr %24, ptr %23, align 8, !tbaa !68
  %25 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %18, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %26 = load ptr, ptr %10, align 8, !tbaa !64
  store ptr %26, ptr %25, align 8, !tbaa !64
  %27 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %18, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %28 = load ptr, ptr %11, align 8, !tbaa !69
  store ptr %28, ptr %27, align 8, !tbaa !69
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %29 = load ptr, ptr %4, align 8, !tbaa !157
  %30 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %29, i64 1
  store ptr %30, ptr %4, align 8, !tbaa !157
  br label %32

31:                                               ; preds = %17
  invoke void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIfEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %18, ptr noundef nonnull align 8 dereferenceable(96) %3)
          to label %32 unwind label %41

32:                                               ; preds = %31, %22
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials10PolynomialIfEE, i64 0, inrange i32 0, i64 2), ptr %3, align 8, !tbaa !60
  %33 = load ptr, ptr %12, align 8, !tbaa !68
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  call void @_ZdlPv(ptr noundef %33) #24
  br label %36

36:                                               ; preds = %32, %35
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %3) #23
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #23
  %37 = add i32 %16, 1
  %38 = icmp ugt i32 %37, %1
  br i1 %38, label %50, label %15, !llvm.loop !158

39:                                               ; preds = %15
  %40 = landingpad { ptr, i32 }
          cleanup
  br label %48

41:                                               ; preds = %31, %21
  %42 = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials10PolynomialIfEE, i64 0, inrange i32 0, i64 2), ptr %3, align 8, !tbaa !60
  %43 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %3, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !68
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  call void @_ZdlPv(ptr noundef %44) #24
  br label %47

47:                                               ; preds = %41, %46
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %3) #23
  br label %48

48:                                               ; preds = %47, %39
  %49 = phi { ptr, i32 } [ %42, %47 ], [ %40, %39 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #23
  br label %51

50:                                               ; preds = %36
  ret void

51:                                               ; preds = %48, %13
  %52 = phi { ptr, i32 } [ %49, %48 ], [ %14, %13 ]
  %53 = load ptr, ptr %0, align 8, !tbaa !159
  %54 = load ptr, ptr %4, align 8, !tbaa !157
  %55 = icmp eq ptr %53, %54
  br i1 %55, label %62, label %56

56:                                               ; preds = %51, %56
  %57 = phi ptr [ %60, %56 ], [ %53, %51 ]
  %58 = load ptr, ptr %57, align 8, !tbaa !60
  %59 = load ptr, ptr %58, align 8
  call void %59(ptr noundef nonnull align 8 dereferenceable(96) %57) #23
  %60 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %57, i64 1
  %61 = icmp eq ptr %60, %54
  br i1 %61, label %62, label %56, !llvm.loop !160

62:                                               ; preds = %56, %51
  %63 = load ptr, ptr %0, align 8, !tbaa !159
  %64 = icmp eq ptr %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %62
  call void @_ZdlPv(ptr noundef %63) #24
  br label %66

66:                                               ; preds = %62, %65
  resume { ptr, i32 } %52
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIfEESaIS3_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !63 {
  %3 = icmp ugt i64 %1, 96076792050570581
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #25
  unreachable

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<float>, std::allocator<dealii::Polynomials::Polynomial<float>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !155
  %8 = load ptr, ptr %0, align 8, !tbaa !159
  %9 = ptrtoint ptr %7 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 96
  %13 = icmp ult i64 %12, %1
  br i1 %13, label %14, label %36

14:                                               ; preds = %5
  %15 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<float>, std::allocator<dealii::Polynomials::Polynomial<float>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !157
  %17 = ptrtoint ptr %16 to i64
  %18 = sub i64 %17, %10
  %19 = tail call noundef ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIfEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %8, ptr noundef %16)
  %20 = load ptr, ptr %0, align 8, !tbaa !159
  %21 = load ptr, ptr %15, align 8, !tbaa !157
  %22 = icmp eq ptr %20, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %14, %23
  %24 = phi ptr [ %27, %23 ], [ %20, %14 ]
  %25 = load ptr, ptr %24, align 8, !tbaa !60
  %26 = load ptr, ptr %25, align 8
  tail call void %26(ptr noundef nonnull align 8 dereferenceable(96) %24) #23
  %27 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %24, i64 1
  %28 = icmp eq ptr %27, %21
  br i1 %28, label %29, label %23, !llvm.loop !160

29:                                               ; preds = %23, %14
  %30 = load ptr, ptr %0, align 8, !tbaa !159
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  tail call void @_ZdlPv(ptr noundef %30) #24
  br label %33

33:                                               ; preds = %29, %32
  store ptr %19, ptr %0, align 8, !tbaa !159
  %34 = getelementptr inbounds i8, ptr %19, i64 %18
  store ptr %34, ptr %15, align 8, !tbaa !157
  %35 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %19, i64 %1
  store ptr %35, ptr %6, align 8, !tbaa !155
  br label %36

36:                                               ; preds = %33, %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii11Polynomials8MonomialIdEC2Ejd(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %1, double noundef %2) unnamed_addr #2 comdat($_ZN6dealii11Polynomials8MonomialIdEC5Ejd) align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  %4 = alloca double, align 8
  %5 = alloca %"class.std::allocator.22", align 1
  %6 = alloca %"class.std::vector.20", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161)
  %7 = add i32 %1, 1
  %8 = zext i32 %7 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23, !noalias !161
  store double 0.000000e+00, ptr %4, align 8, !tbaa !98, !noalias !161
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #23, !noalias !161
  call void @_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %8, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #23, !noalias !161
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23, !noalias !161
  %9 = zext i32 %1 to i64
  %10 = load ptr, ptr %6, align 8, !tbaa !91, !alias.scope !161
  %11 = getelementptr inbounds double, ptr %10, i64 %9
  store double %2, ptr %11, align 8, !tbaa !98
  invoke void @_ZN6dealii11Polynomials10PolynomialIdEC2ERKSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %12 unwind label %17

12:                                               ; preds = %3
  %13 = load ptr, ptr %6, align 8, !tbaa !91
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  call void @_ZdlPv(ptr noundef %13) #24
  br label %16

16:                                               ; preds = %12, %15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #23
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials8MonomialIdEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  ret void

17:                                               ; preds = %3
  %18 = landingpad { ptr, i32 }
          cleanup
  %19 = load ptr, ptr %6, align 8, !tbaa !91
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  call void @_ZdlPv(ptr noundef %19) #24
  br label %22

22:                                               ; preds = %17, %21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #23
  resume { ptr, i32 } %18
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii11Polynomials8MonomialIdE11make_vectorEjd(ptr dead_on_unwind noalias writable sret(%"class.std::vector.20") align 8 %0, i32 noundef %1, double noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  %4 = alloca double, align 8
  %5 = alloca %"class.std::allocator.22", align 1
  %6 = add i32 %1, 1
  %7 = zext i32 %6 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  store double 0.000000e+00, ptr %4, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #23
  call void @_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %7, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  %8 = zext i32 %1 to i64
  %9 = load ptr, ptr %0, align 8, !tbaa !91
  %10 = getelementptr inbounds double, ptr %9, i64 %8
  store double %2, ptr %10, align 8, !tbaa !98
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii11Polynomials8MonomialIdE23generate_complete_basisEj(ptr dead_on_unwind noalias writable sret(%"class.std::vector.32") align 8 %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !59 {
  %3 = alloca %"class.dealii::Polynomials::Monomial.25", align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %6 = add i32 %1, 1
  %7 = zext i32 %6 to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  invoke void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %7)
          to label %8 unwind label %13

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %3, i64 0, i32 1
  %10 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %3, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %11 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %3, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %12 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %3, i64 0, i32 1
  br label %15

13:                                               ; preds = %2
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %51

15:                                               ; preds = %8, %36
  %16 = phi i32 [ 0, %8 ], [ %37, %36 ]
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %3) #23
  invoke void @_ZN6dealii11Polynomials8MonomialIdEC1Ejd(ptr noundef nonnull align 8 dereferenceable(96) %3, i32 noundef %16, double noundef 1.000000e+00)
          to label %17 unwind label %39

17:                                               ; preds = %15
  %18 = load ptr, ptr %4, align 8, !tbaa !70
  %19 = load ptr, ptr %5, align 8, !tbaa !164
  %20 = icmp eq ptr %18, %19
  br i1 %20, label %31, label %21

21:                                               ; preds = %17
  invoke void @_ZN6dealii11SubscriptorC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %18, ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %22 unwind label %41

22:                                               ; preds = %21
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials10PolynomialIdEE, i64 0, inrange i32 0, i64 2), ptr %18, align 8, !tbaa !60
  %23 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %18, i64 0, i32 1
  %24 = load ptr, ptr %9, align 8, !tbaa !91
  store ptr %24, ptr %23, align 8, !tbaa !91
  %25 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %18, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %26 = load ptr, ptr %10, align 8, !tbaa !89
  store ptr %26, ptr %25, align 8, !tbaa !89
  %27 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %18, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %28 = load ptr, ptr %11, align 8, !tbaa !94
  store ptr %28, ptr %27, align 8, !tbaa !94
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %29 = load ptr, ptr %4, align 8, !tbaa !166
  %30 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %29, i64 1
  store ptr %30, ptr %4, align 8, !tbaa !166
  br label %32

31:                                               ; preds = %17
  invoke void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %18, ptr noundef nonnull align 8 dereferenceable(96) %3)
          to label %32 unwind label %41

32:                                               ; preds = %31, %22
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials10PolynomialIdEE, i64 0, inrange i32 0, i64 2), ptr %3, align 8, !tbaa !60
  %33 = load ptr, ptr %12, align 8, !tbaa !91
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  call void @_ZdlPv(ptr noundef %33) #24
  br label %36

36:                                               ; preds = %32, %35
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %3) #23
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #23
  %37 = add i32 %16, 1
  %38 = icmp ugt i32 %37, %1
  br i1 %38, label %50, label %15, !llvm.loop !167

39:                                               ; preds = %15
  %40 = landingpad { ptr, i32 }
          cleanup
  br label %48

41:                                               ; preds = %31, %21
  %42 = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials10PolynomialIdEE, i64 0, inrange i32 0, i64 2), ptr %3, align 8, !tbaa !60
  %43 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %3, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !91
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  call void @_ZdlPv(ptr noundef %44) #24
  br label %47

47:                                               ; preds = %41, %46
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %3) #23
  br label %48

48:                                               ; preds = %47, %39
  %49 = phi { ptr, i32 } [ %42, %47 ], [ %40, %39 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #23
  br label %51

50:                                               ; preds = %36
  ret void

51:                                               ; preds = %48, %13
  %52 = phi { ptr, i32 } [ %49, %48 ], [ %14, %13 ]
  %53 = load ptr, ptr %0, align 8, !tbaa !168
  %54 = load ptr, ptr %4, align 8, !tbaa !166
  %55 = icmp eq ptr %53, %54
  br i1 %55, label %62, label %56

56:                                               ; preds = %51, %56
  %57 = phi ptr [ %60, %56 ], [ %53, %51 ]
  %58 = load ptr, ptr %57, align 8, !tbaa !60
  %59 = load ptr, ptr %58, align 8
  call void %59(ptr noundef nonnull align 8 dereferenceable(96) %57) #23
  %60 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %57, i64 1
  %61 = icmp eq ptr %60, %54
  br i1 %61, label %62, label %56, !llvm.loop !169

62:                                               ; preds = %56, %51
  %63 = load ptr, ptr %0, align 8, !tbaa !168
  %64 = icmp eq ptr %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %62
  call void @_ZdlPv(ptr noundef %63) #24
  br label %66

66:                                               ; preds = %62, %65
  resume { ptr, i32 } %52
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !63 {
  %3 = icmp ugt i64 %1, 96076792050570581
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #25
  unreachable

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !164
  %8 = load ptr, ptr %0, align 8, !tbaa !168
  %9 = ptrtoint ptr %7 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 96
  %13 = icmp ult i64 %12, %1
  br i1 %13, label %14, label %36

14:                                               ; preds = %5
  %15 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !166
  %17 = ptrtoint ptr %16 to i64
  %18 = sub i64 %17, %10
  %19 = tail call noundef ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %8, ptr noundef %16)
  %20 = load ptr, ptr %0, align 8, !tbaa !168
  %21 = load ptr, ptr %15, align 8, !tbaa !166
  %22 = icmp eq ptr %20, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %14, %23
  %24 = phi ptr [ %27, %23 ], [ %20, %14 ]
  %25 = load ptr, ptr %24, align 8, !tbaa !60
  %26 = load ptr, ptr %25, align 8
  tail call void %26(ptr noundef nonnull align 8 dereferenceable(96) %24) #23
  %27 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %24, i64 1
  %28 = icmp eq ptr %27, %21
  br i1 %28, label %29, label %23, !llvm.loop !169

29:                                               ; preds = %23, %14
  %30 = load ptr, ptr %0, align 8, !tbaa !168
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  tail call void @_ZdlPv(ptr noundef %30) #24
  br label %33

33:                                               ; preds = %29, %32
  store ptr %19, ptr %0, align 8, !tbaa !168
  %34 = getelementptr inbounds i8, ptr %19, i64 %18
  store ptr %34, ptr %15, align 8, !tbaa !166
  %35 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %19, i64 %1
  store ptr %35, ptr %6, align 8, !tbaa !164
  br label %36

36:                                               ; preds = %33, %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN6dealii11Polynomials19LagrangeEquidistantC2Ejj(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !120 {
  %4 = alloca %"class.std::vector.20", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #23
  call void @_ZN6dealii11Polynomials19LagrangeEquidistant20compute_coefficientsEjj(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.20") align 8 %4, i32 noundef %1, i32 noundef %2)
  invoke void @_ZN6dealii11Polynomials10PolynomialIdEC2ERKSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %5 unwind label %10, !prof !122

5:                                                ; preds = %3
  %6 = load ptr, ptr %4, align 8, !tbaa !91
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8, !prof !126

8:                                                ; preds = %5
  call void @_ZdlPv(ptr noundef %6) #24
  br label %9

9:                                                ; preds = %5, %8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #23
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials19LagrangeEquidistantE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  ret void

10:                                               ; preds = %3
  %11 = landingpad { ptr, i32 }
          cleanup
  %12 = load ptr, ptr %4, align 8, !tbaa !91
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  call void @_ZdlPv(ptr noundef %12) #24
  br label %15

15:                                               ; preds = %10, %14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #23
  resume { ptr, i32 } %11
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN6dealii11Polynomials19LagrangeEquidistant20compute_coefficientsEjj(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::vector.20") align 8 %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !120 {
  %4 = alloca %"class.std::allocator.22", align 1
  %5 = add i32 %1, 1
  %6 = zext i32 %5 to i64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #23
  call void @_ZNSt6vectorIdSaIdEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %6, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #23
  %7 = add i32 %1, -1
  %8 = icmp ult i32 %7, 10
  br i1 %8, label %9, label %13

9:                                                ; preds = %3
  %10 = zext nneg i32 %7 to i64
  %11 = shl i64 %10, 2
  %12 = call ptr @llvm.load.relative.i64(ptr @reltable._ZN6dealii11Polynomials19LagrangeEquidistant20compute_coefficientsEjj, i64 %11)
  br label %13

13:                                               ; preds = %9, %3
  %14 = phi ptr [ null, %3 ], [ %12, %9 ]
  %15 = icmp eq i32 %5, 0
  br i1 %15, label %30, label %16, !prof !121

16:                                               ; preds = %13
  %17 = mul i32 %5, %2
  %18 = load ptr, ptr %0, align 8, !tbaa !91
  %19 = zext i32 %5 to i64
  br label %20

20:                                               ; preds = %16, %20
  %21 = phi i64 [ 0, %16 ], [ %28, %20 ]
  %22 = trunc i64 %21 to i32
  %23 = add i32 %17, %22
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds double, ptr %14, i64 %24
  %26 = load double, ptr %25, align 8, !tbaa !98
  %27 = getelementptr inbounds double, ptr %18, i64 %21
  store double %26, ptr %27, align 8, !tbaa !98
  %28 = add nuw nsw i64 %21, 1
  %29 = icmp eq i64 %28, %19
  br i1 %29, label %30, label %20, !prof !170, !llvm.loop !171

30:                                               ; preds = %20, %13
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6dealii11Polynomials19LagrangeEquidistant23generate_complete_basisEj(ptr dead_on_unwind noalias writable sret(%"class.std::vector.32") align 8 %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !annotation !59 {
  %3 = alloca %"class.dealii::Polynomials::Polynomial.19", align 8
  %4 = alloca %"class.std::vector.20", align 8
  %5 = alloca %"class.std::allocator.34", align 1
  %6 = alloca %"class.dealii::Polynomials::LagrangeEquidistant", align 8
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %8, label %43

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %9 = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #26
          to label %10 unwind label %25

10:                                               ; preds = %8
  %11 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %4, i64 0, i32 1
  %12 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %4, i64 0, i32 2
  store ptr %9, ptr %4, align 8, !tbaa !91
  store ptr %9, ptr %11, align 8, !tbaa !89
  %13 = getelementptr inbounds double, ptr %9, i64 1
  store ptr %13, ptr %12, align 8, !tbaa !94
  store double 1.000000e+00, ptr %9, align 8, !tbaa !98
  store ptr %13, ptr %11, align 8, !tbaa !89
  invoke void @_ZN6dealii11Polynomials10PolynomialIdEC1ERKSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %14 unwind label %27

14:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #23
  invoke void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2EmRKS3_RKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %15 unwind label %29

15:                                               ; preds = %14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #23
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials10PolynomialIdEE, i64 0, inrange i32 0, i64 2), ptr %3, align 8, !tbaa !60
  %16 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %3, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !91
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  call void @_ZdlPv(ptr noundef %17) #24
  br label %20

20:                                               ; preds = %15, %19
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %3) #23
  %21 = load ptr, ptr %4, align 8, !tbaa !91
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  call void @_ZdlPv(ptr noundef %21) #24
  br label %24

24:                                               ; preds = %20, %23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #23
  br label %98

25:                                               ; preds = %8
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %41

27:                                               ; preds = %10
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %36

29:                                               ; preds = %14
  %30 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #23
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials10PolynomialIdEE, i64 0, inrange i32 0, i64 2), ptr %3, align 8, !tbaa !60
  %31 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %3, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !91
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  call void @_ZdlPv(ptr noundef %32) #24
  br label %35

35:                                               ; preds = %29, %34
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %3) #23
  br label %36

36:                                               ; preds = %35, %27
  %37 = phi { ptr, i32 } [ %30, %35 ], [ %28, %27 ]
  %38 = load ptr, ptr %4, align 8, !tbaa !91
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  call void @_ZdlPv(ptr noundef %38) #24
  br label %41

41:                                               ; preds = %40, %36, %25
  %42 = phi { ptr, i32 } [ %26, %25 ], [ %37, %36 ], [ %37, %40 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #23
  br label %99

43:                                               ; preds = %2
  %44 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %45 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %46 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %6, i64 0, i32 1
  %47 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %6, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %48 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %6, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %49 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %6, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %50

50:                                               ; preds = %43, %71
  %51 = phi i32 [ 0, %43 ], [ %72, %71 ]
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %6) #23
  invoke void @_ZN6dealii11Polynomials19LagrangeEquidistantC2Ejj(ptr noundef nonnull align 8 dereferenceable(96) %6, i32 noundef %1, i32 noundef %51)
          to label %52 unwind label %74

52:                                               ; preds = %50
  %53 = load ptr, ptr %44, align 8, !tbaa !70
  %54 = load ptr, ptr %45, align 8, !tbaa !164
  %55 = icmp eq ptr %53, %54
  br i1 %55, label %66, label %56

56:                                               ; preds = %52
  invoke void @_ZN6dealii11SubscriptorC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %53, ptr noundef nonnull align 8 dereferenceable(72) %6)
          to label %57 unwind label %76

57:                                               ; preds = %56
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials10PolynomialIdEE, i64 0, inrange i32 0, i64 2), ptr %53, align 8, !tbaa !60
  %58 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %53, i64 0, i32 1
  %59 = load ptr, ptr %46, align 8, !tbaa !91
  store ptr %59, ptr %58, align 8, !tbaa !91
  %60 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %53, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %61 = load ptr, ptr %47, align 8, !tbaa !89
  store ptr %61, ptr %60, align 8, !tbaa !89
  %62 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %53, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %63 = load ptr, ptr %48, align 8, !tbaa !94
  store ptr %63, ptr %62, align 8, !tbaa !94
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %46, i8 0, i64 24, i1 false)
  %64 = load ptr, ptr %44, align 8, !tbaa !166
  %65 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %64, i64 1
  store ptr %65, ptr %44, align 8, !tbaa !166
  br label %67

66:                                               ; preds = %52
  invoke void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %53, ptr noundef nonnull align 8 dereferenceable(96) %6)
          to label %67 unwind label %76

67:                                               ; preds = %66, %57
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials10PolynomialIdEE, i64 0, inrange i32 0, i64 2), ptr %6, align 8, !tbaa !60
  %68 = load ptr, ptr %49, align 8, !tbaa !91
  %69 = icmp eq ptr %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %67
  call void @_ZdlPv(ptr noundef %68) #24
  br label %71

71:                                               ; preds = %67, %70
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %6) #23
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %6) #23
  %72 = add i32 %51, 1
  %73 = icmp ugt i32 %72, %1
  br i1 %73, label %98, label %50, !llvm.loop !172

74:                                               ; preds = %50
  %75 = landingpad { ptr, i32 }
          cleanup
  br label %83

76:                                               ; preds = %66, %56
  %77 = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials10PolynomialIdEE, i64 0, inrange i32 0, i64 2), ptr %6, align 8, !tbaa !60
  %78 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %6, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !91
  %80 = icmp eq ptr %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %76
  call void @_ZdlPv(ptr noundef %79) #24
  br label %82

82:                                               ; preds = %76, %81
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %6) #23
  br label %83

83:                                               ; preds = %82, %74
  %84 = phi { ptr, i32 } [ %77, %82 ], [ %75, %74 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %6) #23
  %85 = load ptr, ptr %0, align 8, !tbaa !168
  %86 = load ptr, ptr %44, align 8, !tbaa !166
  %87 = icmp eq ptr %85, %86
  br i1 %87, label %94, label %88

88:                                               ; preds = %83, %88
  %89 = phi ptr [ %92, %88 ], [ %85, %83 ]
  %90 = load ptr, ptr %89, align 8, !tbaa !60
  %91 = load ptr, ptr %90, align 8
  call void %91(ptr noundef nonnull align 8 dereferenceable(96) %89) #23
  %92 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %89, i64 1
  %93 = icmp eq ptr %92, %86
  br i1 %93, label %94, label %88, !llvm.loop !169

94:                                               ; preds = %88, %83
  %95 = load ptr, ptr %0, align 8, !tbaa !168
  %96 = icmp eq ptr %95, null
  br i1 %96, label %99, label %97

97:                                               ; preds = %94
  call void @_ZdlPv(ptr noundef %95) #24
  br label %99

98:                                               ; preds = %71, %24
  ret void

99:                                               ; preds = %97, %94, %41
  %100 = phi { ptr, i32 } [ %42, %41 ], [ %84, %94 ], [ %84, %97 ]
  resume { ptr, i32 } %100
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2EmRKS3_RKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !173 {
  %5 = icmp ugt i64 %1, 96076792050570581
  br i1 %5, label %6, label %7, !prof !174

6:                                                ; preds = %4
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #25
  unreachable

7:                                                ; preds = %4
  %8 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %9 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %10 = icmp eq i64 %1, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br i1 %10, label %13, label %11, !prof !174

11:                                               ; preds = %7
  %12 = tail call noundef ptr @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null)
  br label %13

13:                                               ; preds = %7, %11
  %14 = phi ptr [ null, %7 ], [ %12, %11 ]
  store ptr %14, ptr %0, align 8, !tbaa !168
  store ptr %14, ptr %8, align 8, !tbaa !166
  %15 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %14, i64 %1
  store ptr %15, ptr %9, align 8, !tbaa !164
  %16 = invoke noundef ptr @_ZSt18__do_uninit_fill_nIPN6dealii11Polynomials10PolynomialIdEEmS3_ET_S5_T0_RKT1_(ptr noundef %14, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(96) %2)
          to label %17 unwind label %18, !prof !175

17:                                               ; preds = %13
  store ptr %16, ptr %8, align 8, !tbaa !166
  ret void

18:                                               ; preds = %13
  %19 = landingpad { ptr, i32 }
          cleanup
  %20 = load ptr, ptr %0, align 8, !tbaa !168
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @_ZdlPv(ptr noundef %20) #24
  br label %23

23:                                               ; preds = %18, %22
  resume { ptr, i32 } %19
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6dealii11Polynomials8Lagrange23generate_complete_basisERKSt6vectorINS_5PointILi1EEESaIS4_EE(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::vector.32") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !annotation !59 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca %"class.std::allocator.34", align 1
  %6 = alloca %"class.std::vector.20", align 8
  %7 = alloca %"class.std::vector.20", align 8
  %8 = alloca %"class.dealii::Polynomials::Polynomial.19", align 8
  %9 = alloca %"class.dealii::Polynomials::Polynomial.19", align 8
  %10 = alloca %"class.dealii::Polynomials::Polynomial.19", align 8
  %11 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<1>, std::allocator<dealii::Point<1>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !176
  %13 = load ptr, ptr %1, align 8, !tbaa !178
  %14 = ptrtoint ptr %12 to i64
  %15 = ptrtoint ptr %13 to i64
  %16 = sub i64 %14, %15
  %17 = ashr exact i64 %16, 3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #23
  call void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2EmRKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %17, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #23
  %18 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %6, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %19 = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #26
          to label %20 unwind label %57

20:                                               ; preds = %2
  %21 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %6, i64 0, i32 2
  store ptr %19, ptr %6, align 8, !tbaa !91
  store ptr %19, ptr %18, align 8, !tbaa !89
  %22 = getelementptr inbounds double, ptr %19, i64 2
  store ptr %22, ptr %21, align 8, !tbaa !94
  br label %23

23:                                               ; preds = %20, %23
  %24 = phi i64 [ 0, %20 ], [ %26, %23 ]
  %25 = getelementptr inbounds i8, ptr %19, i64 %24
  store double 1.000000e+00, ptr %25, align 8, !tbaa !98
  %26 = add nuw nsw i64 %24, 8
  %27 = icmp eq i64 %26, 16
  br i1 %27, label %28, label %23, !llvm.loop !130

28:                                               ; preds = %23
  store ptr %22, ptr %18, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %29 = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #26
          to label %30 unwind label %59

30:                                               ; preds = %28
  %31 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %7, i64 0, i32 1
  %32 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %7, i64 0, i32 2
  store ptr %29, ptr %7, align 8, !tbaa !91
  store ptr %29, ptr %31, align 8, !tbaa !89
  %33 = getelementptr inbounds double, ptr %29, i64 1
  store ptr %33, ptr %32, align 8, !tbaa !94
  store double 1.000000e+00, ptr %29, align 8, !tbaa !98
  store ptr %33, ptr %31, align 8, !tbaa !89
  %34 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !166
  %36 = load ptr, ptr %0, align 8, !tbaa !168
  %37 = icmp eq ptr %35, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %30
  %39 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %8, i64 0, i32 1
  %40 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %8, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %41 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %8, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %42 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %9, i64 0, i32 1
  %43 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %9, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  br label %61

44:                                               ; preds = %88, %30
  %45 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !166
  %47 = load ptr, ptr %0, align 8, !tbaa !168
  %48 = icmp eq ptr %46, %47
  br i1 %48, label %171, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %10, i64 0, i32 1
  %51 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %10, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %52 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %10, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %53 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %10, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %54 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %10, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %55 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %10, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %56 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %10, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  br label %165

57:                                               ; preds = %2
  %58 = landingpad { ptr, i32 }
          cleanup
  br label %394

59:                                               ; preds = %28
  %60 = landingpad { ptr, i32 }
          cleanup
  br label %389

61:                                               ; preds = %38, %88
  %62 = phi i64 [ 0, %38 ], [ %90, %88 ]
  %63 = phi i32 [ 0, %38 ], [ %89, %88 ]
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %8) #23
  invoke void @_ZN6dealii11Polynomials10PolynomialIdEC1ERKSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(96) %8, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %64 unwind label %98

64:                                               ; preds = %61
  %65 = load ptr, ptr %0, align 8, !tbaa !168
  %66 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %65, i64 %62
  %67 = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN6dealii11SubscriptoraSERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %66, ptr noundef nonnull align 8 dereferenceable(72) %8)
          to label %68 unwind label %100

68:                                               ; preds = %64
  %69 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %65, i64 %62, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !91
  %71 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %69, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !89
  %73 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %69, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !94
  %75 = load ptr, ptr %39, align 8, !tbaa !91
  store ptr %75, ptr %69, align 8, !tbaa !91
  %76 = load ptr, ptr %40, align 8, !tbaa !89
  store ptr %76, ptr %71, align 8, !tbaa !89
  %77 = load ptr, ptr %41, align 8, !tbaa !94
  store ptr %77, ptr %73, align 8, !tbaa !94
  store ptr %70, ptr %39, align 8, !tbaa !91
  store ptr %72, ptr %40, align 8, !tbaa !89
  store ptr %74, ptr %41, align 8, !tbaa !94
  %78 = icmp eq ptr %70, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %39, i8 0, i64 24, i1 false)
  br i1 %78, label %80, label %79

79:                                               ; preds = %68
  call void @_ZdlPv(ptr noundef %70) #24
  br label %80

80:                                               ; preds = %79, %68
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials10PolynomialIdEE, i64 0, inrange i32 0, i64 2), ptr %8, align 8, !tbaa !60
  %81 = load ptr, ptr %39, align 8, !tbaa !91
  %82 = icmp eq ptr %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %80
  call void @_ZdlPv(ptr noundef %81) #24
  br label %84

84:                                               ; preds = %80, %83
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %8) #23
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %8) #23
  %85 = load ptr, ptr %11, align 8, !tbaa !176
  %86 = load ptr, ptr %1, align 8, !tbaa !178
  %87 = icmp eq ptr %85, %86
  br i1 %87, label %88, label %109

88:                                               ; preds = %155, %84
  %89 = add i32 %63, 1
  %90 = zext i32 %89 to i64
  %91 = load ptr, ptr %34, align 8, !tbaa !166
  %92 = load ptr, ptr %0, align 8, !tbaa !168
  %93 = ptrtoint ptr %91 to i64
  %94 = ptrtoint ptr %92 to i64
  %95 = sub i64 %93, %94
  %96 = sdiv exact i64 %95, 96
  %97 = icmp ugt i64 %96, %90
  br i1 %97, label %61, label %44, !llvm.loop !179

98:                                               ; preds = %61
  %99 = landingpad { ptr, i32 }
          cleanup
  br label %107

100:                                              ; preds = %64
  %101 = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials10PolynomialIdEE, i64 0, inrange i32 0, i64 2), ptr %8, align 8, !tbaa !60
  %102 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %8, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !91
  %104 = icmp eq ptr %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %100
  call void @_ZdlPv(ptr noundef %103) #24
  br label %106

106:                                              ; preds = %100, %105
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %8) #23
  br label %107

107:                                              ; preds = %106, %98
  %108 = phi { ptr, i32 } [ %101, %106 ], [ %99, %98 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %8) #23
  br label %384

109:                                              ; preds = %84, %155
  %110 = phi ptr [ %159, %155 ], [ %86, %84 ]
  %111 = phi i64 [ %157, %155 ], [ 0, %84 ]
  %112 = phi i32 [ %156, %155 ], [ 0, %84 ]
  %113 = icmp eq i32 %112, %63
  br i1 %113, label %155, label %114

114:                                              ; preds = %109
  %115 = getelementptr inbounds %"class.dealii::Point", ptr %110, i64 %111
  %116 = load double, ptr %115, align 8, !tbaa !98
  %117 = fneg double %116
  %118 = load ptr, ptr %6, align 8, !tbaa !91
  store double %117, ptr %118, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %9) #23
  invoke void @_ZN6dealii11Polynomials10PolynomialIdEC1ERKSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(96) %9, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %119 unwind label %145

119:                                              ; preds = %114
  %120 = load ptr, ptr %1, align 8, !tbaa !178
  %121 = getelementptr inbounds %"class.dealii::Point", ptr %120, i64 %62
  %122 = load double, ptr %121, align 8, !tbaa !98
  %123 = getelementptr inbounds %"class.dealii::Point", ptr %120, i64 %111
  %124 = load double, ptr %123, align 8, !tbaa !98
  %125 = fsub double %122, %124
  %126 = fdiv double 1.000000e+00, %125
  %127 = load ptr, ptr %42, align 8, !tbaa !70
  %128 = load ptr, ptr %43, align 8, !tbaa !70
  %129 = icmp eq ptr %127, %128
  br i1 %129, label %136, label %130

130:                                              ; preds = %119, %130
  %131 = phi ptr [ %134, %130 ], [ %127, %119 ]
  %132 = load double, ptr %131, align 8, !tbaa !98
  %133 = fmul double %126, %132
  store double %133, ptr %131, align 8, !tbaa !98
  %134 = getelementptr inbounds double, ptr %131, i64 1
  %135 = icmp eq ptr %134, %128
  br i1 %135, label %136, label %130, !llvm.loop !119

136:                                              ; preds = %130, %119
  %137 = load ptr, ptr %0, align 8, !tbaa !168
  %138 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %137, i64 %62
  %139 = invoke noundef nonnull align 8 dereferenceable(96) ptr @_ZN6dealii11Polynomials10PolynomialIdEmLERKS2_(ptr noundef nonnull align 8 dereferenceable(96) %138, ptr noundef nonnull align 8 dereferenceable(96) %9)
          to label %140 unwind label %147

140:                                              ; preds = %136
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials10PolynomialIdEE, i64 0, inrange i32 0, i64 2), ptr %9, align 8, !tbaa !60
  %141 = load ptr, ptr %42, align 8, !tbaa !91
  %142 = icmp eq ptr %141, null
  br i1 %142, label %144, label %143

143:                                              ; preds = %140
  call void @_ZdlPv(ptr noundef %141) #24
  br label %144

144:                                              ; preds = %140, %143
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %9) #23
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %9) #23
  br label %155

145:                                              ; preds = %114
  %146 = landingpad { ptr, i32 }
          cleanup
  br label %153

147:                                              ; preds = %136
  %148 = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials10PolynomialIdEE, i64 0, inrange i32 0, i64 2), ptr %9, align 8, !tbaa !60
  %149 = load ptr, ptr %42, align 8, !tbaa !91
  %150 = icmp eq ptr %149, null
  br i1 %150, label %152, label %151

151:                                              ; preds = %147
  call void @_ZdlPv(ptr noundef %149) #24
  br label %152

152:                                              ; preds = %147, %151
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %9) #23
  br label %153

153:                                              ; preds = %152, %145
  %154 = phi { ptr, i32 } [ %148, %152 ], [ %146, %145 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %9) #23
  br label %384

155:                                              ; preds = %109, %144
  %156 = add i32 %112, 1
  %157 = zext i32 %156 to i64
  %158 = load ptr, ptr %11, align 8, !tbaa !176
  %159 = load ptr, ptr %1, align 8, !tbaa !178
  %160 = ptrtoint ptr %158 to i64
  %161 = ptrtoint ptr %159 to i64
  %162 = sub i64 %160, %161
  %163 = ashr exact i64 %162, 3
  %164 = icmp ugt i64 %163, %157
  br i1 %164, label %109, label %88, !llvm.loop !180

165:                                              ; preds = %49, %180
  %166 = phi i64 [ 0, %49 ], [ %182, %180 ]
  %167 = phi i32 [ 0, %49 ], [ %181, %180 ]
  %168 = load ptr, ptr %11, align 8, !tbaa !176
  %169 = load ptr, ptr %1, align 8, !tbaa !178
  %170 = icmp eq ptr %168, %169
  br i1 %170, label %180, label %190

171:                                              ; preds = %180, %44
  %172 = load ptr, ptr %7, align 8, !tbaa !91
  %173 = icmp eq ptr %172, null
  br i1 %173, label %175, label %174

174:                                              ; preds = %171
  call void @_ZdlPv(ptr noundef %172) #24
  br label %175

175:                                              ; preds = %171, %174
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #23
  %176 = load ptr, ptr %6, align 8, !tbaa !91
  %177 = icmp eq ptr %176, null
  br i1 %177, label %179, label %178

178:                                              ; preds = %175
  call void @_ZdlPv(ptr noundef %176) #24
  br label %179

179:                                              ; preds = %175, %178
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #23
  ret void

180:                                              ; preds = %372, %165
  %181 = add i32 %167, 1
  %182 = zext i32 %181 to i64
  %183 = load ptr, ptr %45, align 8, !tbaa !166
  %184 = load ptr, ptr %0, align 8, !tbaa !168
  %185 = ptrtoint ptr %183 to i64
  %186 = ptrtoint ptr %184 to i64
  %187 = sub i64 %185, %186
  %188 = sdiv exact i64 %187, 96
  %189 = icmp ugt i64 %188, %182
  br i1 %189, label %165, label %171, !llvm.loop !181

190:                                              ; preds = %165, %372
  %191 = phi ptr [ %376, %372 ], [ %169, %165 ]
  %192 = phi i64 [ %374, %372 ], [ 0, %165 ]
  %193 = phi i32 [ %373, %372 ], [ 0, %165 ]
  %194 = load ptr, ptr %0, align 8, !tbaa !168
  %195 = getelementptr inbounds %"class.dealii::Point", ptr %191, i64 %192
  %196 = load double, ptr %195, align 8, !tbaa !98
  %197 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %194, i64 %166, i32 1
  %198 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %194, i64 %166, i32 1, i32 0, i32 0, i32 0, i32 1
  %199 = load ptr, ptr %198, align 8, !tbaa !70
  %200 = load ptr, ptr %197, align 8, !tbaa !91
  %201 = ptrtoint ptr %199 to i64
  %202 = ptrtoint ptr %200 to i64
  %203 = sub i64 %201, %202
  %204 = lshr exact i64 %203, 3
  %205 = trunc i64 %204 to i32
  %206 = getelementptr inbounds double, ptr %199, i64 -1
  %207 = load double, ptr %206, align 8, !tbaa !98
  %208 = add i32 %205, -2
  %209 = icmp sgt i32 %208, -1
  br i1 %209, label %210, label %220

210:                                              ; preds = %190
  %211 = zext nneg i32 %208 to i64
  br label %212

212:                                              ; preds = %210, %212
  %213 = phi i64 [ %211, %210 ], [ %218, %212 ]
  %214 = phi double [ %207, %210 ], [ %217, %212 ]
  %215 = getelementptr inbounds double, ptr %200, i64 %213
  %216 = load double, ptr %215, align 8, !tbaa !98
  %217 = call double @llvm.fmuladd.f64(double %214, double %196, double %216)
  %218 = add nsw i64 %213, -1
  %219 = icmp sgt i64 %213, 0
  br i1 %219, label %212, label %220, !llvm.loop !102

220:                                              ; preds = %212, %190
  %221 = phi double [ %207, %190 ], [ %217, %212 ]
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %10) #23
  %222 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %194, i64 %192
  invoke void @_ZN6dealii11SubscriptorC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %10, ptr noundef nonnull align 8 dereferenceable(72) %222)
          to label %223 unwind label %311

223:                                              ; preds = %220
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials10PolynomialIdEE, i64 0, inrange i32 0, i64 2), ptr %10, align 8, !tbaa !60
  %224 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %194, i64 %192, i32 1
  %225 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %224, i64 0, i32 1
  %226 = load ptr, ptr %225, align 8, !tbaa !89
  %227 = load ptr, ptr %224, align 8, !tbaa !91
  %228 = ptrtoint ptr %226 to i64
  %229 = ptrtoint ptr %227 to i64
  %230 = sub i64 %228, %229
  %231 = ashr exact i64 %230, 3
  %232 = icmp eq ptr %226, %227
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %50, i8 0, i64 24, i1 false)
  br i1 %232, label %243, label %233, !prof !92

233:                                              ; preds = %223
  %234 = icmp ugt i64 %231, 1152921504606846975
  br i1 %234, label %235, label %241, !prof !93

235:                                              ; preds = %233
  %236 = icmp ugt i64 %231, 2305843009213693951
  br i1 %236, label %237, label %239

237:                                              ; preds = %235
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #25
          to label %238 unwind label %258

238:                                              ; preds = %237
  unreachable

239:                                              ; preds = %235
  invoke void @_ZSt17__throw_bad_allocv() #25
          to label %240 unwind label %258

240:                                              ; preds = %239
  unreachable

241:                                              ; preds = %233
  %242 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %230) #26
          to label %243 unwind label %256

243:                                              ; preds = %241, %223
  %244 = phi ptr [ null, %223 ], [ %242, %241 ]
  store ptr %244, ptr %50, align 8, !tbaa !91
  store ptr %244, ptr %51, align 8, !tbaa !89
  %245 = getelementptr inbounds double, ptr %244, i64 %231
  store ptr %245, ptr %52, align 8, !tbaa !94
  %246 = load ptr, ptr %224, align 8, !tbaa !70
  %247 = load ptr, ptr %225, align 8, !tbaa !70
  %248 = ptrtoint ptr %247 to i64
  %249 = ptrtoint ptr %246 to i64
  %250 = sub i64 %248, %249
  %251 = icmp eq ptr %247, %246
  br i1 %251, label %253, label %252, !prof !92

252:                                              ; preds = %243
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %244, ptr align 8 %246, i64 %250, i1 false), !prof !95
  br label %253

253:                                              ; preds = %243, %252
  %254 = getelementptr inbounds i8, ptr %244, i64 %250
  store ptr %254, ptr %51, align 8, !tbaa !89
  %255 = icmp eq i32 %167, %193
  br i1 %255, label %262, label %319

256:                                              ; preds = %241
  %257 = landingpad { ptr, i32 }
          cleanup
  br label %260

258:                                              ; preds = %237, %239
  %259 = landingpad { ptr, i32 }
          cleanup
  br label %260

260:                                              ; preds = %258, %256
  %261 = phi { ptr, i32 } [ %257, %256 ], [ %259, %258 ]
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %10) #23
  br label %382

262:                                              ; preds = %253
  %263 = fsub double 1.000000e+00, %221
  %264 = load ptr, ptr %55, align 8, !tbaa !70
  %265 = icmp eq ptr %244, %264
  br i1 %265, label %272, label %266

266:                                              ; preds = %262, %266
  %267 = phi ptr [ %270, %266 ], [ %244, %262 ]
  %268 = load double, ptr %267, align 8, !tbaa !98
  %269 = fmul double %263, %268
  store double %269, ptr %267, align 8, !tbaa !98
  %270 = getelementptr inbounds double, ptr %267, i64 1
  %271 = icmp eq ptr %270, %264
  br i1 %271, label %272, label %266, !llvm.loop !119

272:                                              ; preds = %266, %262
  %273 = load ptr, ptr %0, align 8, !tbaa !168
  %274 = ptrtoint ptr %264 to i64
  %275 = ptrtoint ptr %244 to i64
  %276 = sub i64 %274, %275
  %277 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %273, i64 %166, i32 1
  %278 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %273, i64 %166, i32 1, i32 0, i32 0, i32 0, i32 1
  %279 = load ptr, ptr %278, align 8, !tbaa !70
  %280 = load ptr, ptr %277, align 8, !tbaa !91
  %281 = ptrtoint ptr %279 to i64
  %282 = ptrtoint ptr %280 to i64
  %283 = sub i64 %281, %282
  %284 = icmp ugt i64 %276, %283
  br i1 %284, label %285, label %290

285:                                              ; preds = %272
  %286 = ashr exact i64 %276, 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  store double 0.000000e+00, ptr %4, align 8, !tbaa !98
  %287 = ashr exact i64 %283, 3
  %288 = sub nsw i64 %286, %287
  invoke void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(ptr noundef nonnull align 8 dereferenceable(24) %277, ptr %279, i64 noundef %288, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %289 unwind label %313

289:                                              ; preds = %285
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  br label %290

290:                                              ; preds = %289, %272
  %291 = load ptr, ptr %56, align 8, !tbaa !89
  %292 = load ptr, ptr %50, align 8, !tbaa !91
  %293 = ptrtoint ptr %291 to i64
  %294 = ptrtoint ptr %292 to i64
  %295 = sub i64 %293, %294
  %296 = ashr exact i64 %295, 3
  %297 = icmp eq ptr %291, %292
  br i1 %297, label %368, label %298

298:                                              ; preds = %290
  %299 = load ptr, ptr %277, align 8, !tbaa !91
  br label %300

300:                                              ; preds = %300, %298
  %301 = phi i64 [ 0, %298 ], [ %309, %300 ]
  %302 = phi i32 [ 0, %298 ], [ %308, %300 ]
  %303 = getelementptr inbounds double, ptr %292, i64 %301
  %304 = load double, ptr %303, align 8, !tbaa !98
  %305 = getelementptr inbounds double, ptr %299, i64 %301
  %306 = load double, ptr %305, align 8, !tbaa !98
  %307 = fadd double %304, %306
  store double %307, ptr %305, align 8, !tbaa !98
  %308 = add i32 %302, 1
  %309 = zext i32 %308 to i64
  %310 = icmp ugt i64 %296, %309
  br i1 %310, label %300, label %368, !llvm.loop !140

311:                                              ; preds = %220
  %312 = landingpad { ptr, i32 }
          cleanup
  br label %382

313:                                              ; preds = %342, %285
  %314 = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials10PolynomialIdEE, i64 0, inrange i32 0, i64 2), ptr %10, align 8, !tbaa !60
  %315 = load ptr, ptr %50, align 8, !tbaa !91
  %316 = icmp eq ptr %315, null
  br i1 %316, label %318, label %317

317:                                              ; preds = %313
  call void @_ZdlPv(ptr noundef %315) #24
  br label %318

318:                                              ; preds = %313, %317
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %10) #23
  br label %382

319:                                              ; preds = %253
  %320 = fneg double %221
  %321 = load ptr, ptr %53, align 8, !tbaa !70
  %322 = icmp eq ptr %244, %321
  br i1 %322, label %329, label %323

323:                                              ; preds = %319, %323
  %324 = phi ptr [ %327, %323 ], [ %244, %319 ]
  %325 = load double, ptr %324, align 8, !tbaa !98
  %326 = fmul double %325, %320
  store double %326, ptr %324, align 8, !tbaa !98
  %327 = getelementptr inbounds double, ptr %324, i64 1
  %328 = icmp eq ptr %327, %321
  br i1 %328, label %329, label %323, !llvm.loop !119

329:                                              ; preds = %323, %319
  %330 = load ptr, ptr %0, align 8, !tbaa !168
  %331 = ptrtoint ptr %321 to i64
  %332 = ptrtoint ptr %244 to i64
  %333 = sub i64 %331, %332
  %334 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %330, i64 %166, i32 1
  %335 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %330, i64 %166, i32 1, i32 0, i32 0, i32 0, i32 1
  %336 = load ptr, ptr %335, align 8, !tbaa !70
  %337 = load ptr, ptr %334, align 8, !tbaa !91
  %338 = ptrtoint ptr %336 to i64
  %339 = ptrtoint ptr %337 to i64
  %340 = sub i64 %338, %339
  %341 = icmp ugt i64 %333, %340
  br i1 %341, label %342, label %347

342:                                              ; preds = %329
  %343 = ashr exact i64 %333, 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #23
  store double 0.000000e+00, ptr %3, align 8, !tbaa !98
  %344 = ashr exact i64 %340, 3
  %345 = sub nsw i64 %343, %344
  invoke void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(ptr noundef nonnull align 8 dereferenceable(24) %334, ptr %336, i64 noundef %345, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %346 unwind label %313

346:                                              ; preds = %342
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #23
  br label %347

347:                                              ; preds = %346, %329
  %348 = load ptr, ptr %54, align 8, !tbaa !89
  %349 = load ptr, ptr %50, align 8, !tbaa !91
  %350 = ptrtoint ptr %348 to i64
  %351 = ptrtoint ptr %349 to i64
  %352 = sub i64 %350, %351
  %353 = ashr exact i64 %352, 3
  %354 = icmp eq ptr %348, %349
  br i1 %354, label %368, label %355

355:                                              ; preds = %347
  %356 = load ptr, ptr %334, align 8, !tbaa !91
  br label %357

357:                                              ; preds = %357, %355
  %358 = phi i64 [ 0, %355 ], [ %366, %357 ]
  %359 = phi i32 [ 0, %355 ], [ %365, %357 ]
  %360 = getelementptr inbounds double, ptr %349, i64 %358
  %361 = load double, ptr %360, align 8, !tbaa !98
  %362 = getelementptr inbounds double, ptr %356, i64 %358
  %363 = load double, ptr %362, align 8, !tbaa !98
  %364 = fadd double %361, %363
  store double %364, ptr %362, align 8, !tbaa !98
  %365 = add i32 %359, 1
  %366 = zext i32 %365 to i64
  %367 = icmp ugt i64 %353, %366
  br i1 %367, label %357, label %368, !llvm.loop !140

368:                                              ; preds = %357, %300, %347, %290
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials10PolynomialIdEE, i64 0, inrange i32 0, i64 2), ptr %10, align 8, !tbaa !60
  %369 = load ptr, ptr %50, align 8, !tbaa !91
  %370 = icmp eq ptr %369, null
  br i1 %370, label %372, label %371

371:                                              ; preds = %368
  call void @_ZdlPv(ptr noundef %369) #24
  br label %372

372:                                              ; preds = %368, %371
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %10) #23
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %10) #23
  %373 = add i32 %193, 1
  %374 = zext i32 %373 to i64
  %375 = load ptr, ptr %11, align 8, !tbaa !176
  %376 = load ptr, ptr %1, align 8, !tbaa !178
  %377 = ptrtoint ptr %375 to i64
  %378 = ptrtoint ptr %376 to i64
  %379 = sub i64 %377, %378
  %380 = ashr exact i64 %379, 3
  %381 = icmp ugt i64 %380, %374
  br i1 %381, label %190, label %180, !llvm.loop !182

382:                                              ; preds = %311, %260, %318
  %383 = phi { ptr, i32 } [ %314, %318 ], [ %312, %311 ], [ %261, %260 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %10) #23
  br label %384

384:                                              ; preds = %107, %153, %382
  %385 = phi { ptr, i32 } [ %383, %382 ], [ %154, %153 ], [ %108, %107 ]
  %386 = load ptr, ptr %7, align 8, !tbaa !91
  %387 = icmp eq ptr %386, null
  br i1 %387, label %389, label %388

388:                                              ; preds = %384
  call void @_ZdlPv(ptr noundef %386) #24
  br label %389

389:                                              ; preds = %388, %384, %59
  %390 = phi { ptr, i32 } [ %60, %59 ], [ %385, %384 ], [ %385, %388 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #23
  %391 = load ptr, ptr %6, align 8, !tbaa !91
  %392 = icmp eq ptr %391, null
  br i1 %392, label %394, label %393

393:                                              ; preds = %389
  call void @_ZdlPv(ptr noundef %391) #24
  br label %394

394:                                              ; preds = %393, %389, %57
  %395 = phi { ptr, i32 } [ %58, %57 ], [ %390, %389 ], [ %390, %393 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #23
  %396 = load ptr, ptr %0, align 8, !tbaa !168
  %397 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %398 = load ptr, ptr %397, align 8, !tbaa !166
  %399 = icmp eq ptr %396, %398
  br i1 %399, label %406, label %400

400:                                              ; preds = %394, %400
  %401 = phi ptr [ %404, %400 ], [ %396, %394 ]
  %402 = load ptr, ptr %401, align 8, !tbaa !60
  %403 = load ptr, ptr %402, align 8
  call void %403(ptr noundef nonnull align 8 dereferenceable(96) %401) #23
  %404 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %401, i64 1
  %405 = icmp eq ptr %404, %398
  br i1 %405, label %406, label %400, !llvm.loop !169

406:                                              ; preds = %400, %394
  %407 = load ptr, ptr %0, align 8, !tbaa !168
  %408 = icmp eq ptr %407, null
  br i1 %408, label %410, label %409

409:                                              ; preds = %406
  call void @_ZdlPv(ptr noundef %407) #24
  br label %410

410:                                              ; preds = %409, %406
  resume { ptr, i32 } %395
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2EmRKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = icmp ugt i64 %1, 96076792050570581
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #25
  unreachable

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %8 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %9 = icmp eq i64 %1, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = mul nuw i64 %1, 96
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #26
  br label %13

13:                                               ; preds = %6, %10
  %14 = phi ptr [ null, %6 ], [ %12, %10 ]
  store ptr %14, ptr %0, align 8, !tbaa !168
  store ptr %14, ptr %7, align 8, !tbaa !166
  %15 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %14, i64 %1
  store ptr %15, ptr %8, align 8, !tbaa !164
  br i1 %9, label %41, label %16

16:                                               ; preds = %13, %19
  %17 = phi ptr [ %21, %19 ], [ %14, %13 ]
  %18 = phi i64 [ %20, %19 ], [ %1, %13 ]
  invoke void @_ZN6dealii11Polynomials10PolynomialIdEC1Ev(ptr noundef nonnull align 8 dereferenceable(96) %17)
          to label %19 unwind label %23

19:                                               ; preds = %16
  %20 = add i64 %18, -1
  %21 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %17, i64 1
  %22 = icmp eq i64 %20, 0
  br i1 %22, label %41, label %16, !llvm.loop !183

23:                                               ; preds = %16
  %24 = landingpad { ptr, i32 }
          catch ptr null
  %25 = extractvalue { ptr, i32 } %24, 0
  %26 = tail call ptr @__cxa_begin_catch(ptr %25) #23
  %27 = icmp eq ptr %17, %14
  br i1 %27, label %34, label %28

28:                                               ; preds = %23, %28
  %29 = phi ptr [ %32, %28 ], [ %14, %23 ]
  %30 = load ptr, ptr %29, align 8, !tbaa !60
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(96) %29) #23
  %32 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %29, i64 1
  %33 = icmp eq ptr %32, %17
  br i1 %33, label %34, label %28, !llvm.loop !169

34:                                               ; preds = %28, %23
  invoke void @__cxa_rethrow() #25
          to label %40 unwind label %35

35:                                               ; preds = %34
  %36 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %43 unwind label %37

37:                                               ; preds = %35
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  tail call void @__clang_call_terminate(ptr %39) #27
  unreachable

40:                                               ; preds = %34
  unreachable

41:                                               ; preds = %19, %13
  %42 = phi ptr [ %14, %13 ], [ %21, %19 ]
  store ptr %42, ptr %7, align 8, !tbaa !166
  ret void

43:                                               ; preds = %35
  %44 = load ptr, ptr %0, align 8, !tbaa !168
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  tail call void @_ZdlPv(ptr noundef %44) #24
  br label %47

47:                                               ; preds = %43, %46
  resume { ptr, i32 } %36
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  %2 = load ptr, ptr %0, align 8, !tbaa !184
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @_ZdlPv(ptr noundef %2) #24
  br label %5

5:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #10

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN6dealii11Polynomials8LegendreC2Ej(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !63 {
  tail call void @_ZN6dealii11Polynomials8Legendre20compute_coefficientsEj(i32 noundef %1)
  %3 = zext i32 %1 to i64
  %4 = load ptr, ptr @_ZN6dealii11Polynomials8Legendre20shifted_coefficientsE, align 8, !tbaa !184
  %5 = getelementptr inbounds ptr, ptr %4, i64 %3
  %6 = load ptr, ptr %5, align 8, !tbaa !70
  tail call void @_ZN6dealii11Polynomials10PolynomialIdEC2ERKSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(24) %6)
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials8LegendreE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii11Polynomials8Legendre16get_coefficientsEj(i32 noundef %0) local_unnamed_addr #2 align 2 !prof !63 {
  tail call void @_ZN6dealii11Polynomials8Legendre20compute_coefficientsEj(i32 noundef %0)
  %2 = zext i32 %0 to i64
  %3 = load ptr, ptr @_ZN6dealii11Polynomials8Legendre20shifted_coefficientsE, align 8, !tbaa !184
  %4 = getelementptr inbounds ptr, ptr %3, i64 %2
  %5 = load ptr, ptr %4, align 8, !tbaa !70
  ret ptr %5
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6dealii11Polynomials8Legendre20compute_coefficientsEj(i32 noundef %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !annotation !59 {
  %2 = alloca ptr, align 8
  %3 = tail call i32 @llvm.umax.i32(i32 %0, i32 1)
  %4 = load ptr, ptr getelementptr inbounds (%"class.std::vector.42", ptr @_ZN6dealii11Polynomials8Legendre22recursive_coefficientsE, i64 0, i32 0, i32 0, i32 0, i32 1), align 8, !tbaa !70
  %5 = load ptr, ptr @_ZN6dealii11Polynomials8Legendre22recursive_coefficientsE, align 8, !tbaa !184
  %6 = ptrtoint ptr %4 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = add i32 %3, 1
  %11 = zext i32 %10 to i64
  %12 = icmp ult i64 %9, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = zext i32 %3 to i64
  %15 = getelementptr inbounds ptr, ptr %5, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !70
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %269

18:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #23
  store ptr null, ptr %2, align 8, !tbaa !70
  br i1 %12, label %20, label %22

19:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #23
  store ptr null, ptr %2, align 8, !tbaa !70
  br label %20

20:                                               ; preds = %19, %18
  %21 = sub nsw i64 %11, %9
  call void @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS3_S5_EEmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) @_ZN6dealii11Polynomials8Legendre22recursive_coefficientsE, ptr %4, i64 noundef %21, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %28

22:                                               ; preds = %18
  %23 = icmp ugt i64 %9, %11
  br i1 %23, label %24, label %28

24:                                               ; preds = %22
  %25 = getelementptr inbounds ptr, ptr %5, i64 %11
  %26 = icmp eq ptr %4, %25
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  store ptr %25, ptr getelementptr inbounds (%"class.std::vector.42", ptr @_ZN6dealii11Polynomials8Legendre22recursive_coefficientsE, i64 0, i32 0, i32 0, i32 0, i32 1), align 8, !tbaa !186
  br label %28

28:                                               ; preds = %20, %27, %24, %22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #23
  %29 = icmp ult i32 %0, 2
  br i1 %29, label %30, label %141

30:                                               ; preds = %28
  %31 = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26
  %32 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %31, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %31, i8 0, i64 24, i1 false)
  %33 = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #26
          to label %34 unwind label %133

34:                                               ; preds = %30
  %35 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %31, i64 0, i32 2
  store ptr %33, ptr %31, align 8, !tbaa !91
  store ptr %33, ptr %32, align 8, !tbaa !89
  %36 = getelementptr inbounds double, ptr %33, i64 1
  store ptr %36, ptr %35, align 8, !tbaa !94
  store double 0.000000e+00, ptr %33, align 8, !tbaa !98
  store ptr %36, ptr %32, align 8, !tbaa !89
  store double 1.000000e+00, ptr %33, align 8, !tbaa !98
  %37 = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26
  %38 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %37, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %37, i8 0, i64 24, i1 false)
  %39 = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #26
          to label %40 unwind label %135

40:                                               ; preds = %34
  %41 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %37, i64 0, i32 2
  store ptr %39, ptr %37, align 8, !tbaa !91
  store ptr %39, ptr %38, align 8, !tbaa !89
  %42 = getelementptr inbounds double, ptr %39, i64 2
  store ptr %42, ptr %41, align 8, !tbaa !94
  store double 0.000000e+00, ptr %39, align 8, !tbaa !98
  %43 = getelementptr inbounds i8, ptr %39, i64 8
  store double 0.000000e+00, ptr %43, align 8, !tbaa !98
  store ptr %42, ptr %38, align 8, !tbaa !89
  store double 0.000000e+00, ptr %39, align 8, !tbaa !98
  %44 = getelementptr inbounds double, ptr %39, i64 1
  store double 1.000000e+00, ptr %44, align 8, !tbaa !98
  %45 = load ptr, ptr @_ZN6dealii11Polynomials8Legendre22recursive_coefficientsE, align 8, !tbaa !184
  store ptr %31, ptr %45, align 8, !tbaa !70
  %46 = load ptr, ptr @_ZN6dealii11Polynomials8Legendre22recursive_coefficientsE, align 8, !tbaa !184
  %47 = getelementptr inbounds ptr, ptr %46, i64 1
  store ptr %37, ptr %47, align 8, !tbaa !70
  %48 = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26
  %49 = load ptr, ptr %32, align 8, !tbaa !70
  %50 = load ptr, ptr %31, align 8, !tbaa !70
  %51 = ptrtoint ptr %49 to i64
  %52 = ptrtoint ptr %50 to i64
  %53 = sub i64 %51, %52
  %54 = ashr exact i64 %53, 3
  %55 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %48, i64 0, i32 1
  %56 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %48, i64 0, i32 2
  %57 = icmp eq ptr %49, %50
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %48, i8 0, i64 24, i1 false)
  br i1 %57, label %68, label %58, !prof !92

58:                                               ; preds = %40
  %59 = icmp ugt i64 %54, 1152921504606846975
  br i1 %59, label %60, label %66, !prof !93

60:                                               ; preds = %58
  %61 = icmp ugt i64 %54, 2305843009213693951
  br i1 %61, label %62, label %64

62:                                               ; preds = %60
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #25
          to label %63 unwind label %137

63:                                               ; preds = %62
  unreachable

64:                                               ; preds = %60
  invoke void @_ZSt17__throw_bad_allocv() #25
          to label %65 unwind label %137

65:                                               ; preds = %64
  unreachable

66:                                               ; preds = %58
  %67 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %53) #26
          to label %68 unwind label %137

68:                                               ; preds = %66, %40
  %69 = phi ptr [ null, %40 ], [ %67, %66 ]
  store ptr %69, ptr %48, align 8, !tbaa !91
  store ptr %69, ptr %55, align 8, !tbaa !89
  %70 = getelementptr inbounds double, ptr %69, i64 %54
  store ptr %70, ptr %56, align 8, !tbaa !94
  br i1 %57, label %72, label %71, !prof !92

71:                                               ; preds = %68
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %69, ptr align 8 %50, i64 %53, i1 false), !prof !95
  br label %72

72:                                               ; preds = %68, %71
  %73 = getelementptr inbounds i8, ptr %69, i64 %53
  store ptr %73, ptr %55, align 8, !tbaa !89
  %74 = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26
  %75 = load ptr, ptr %38, align 8, !tbaa !70
  %76 = load ptr, ptr %37, align 8, !tbaa !70
  %77 = ptrtoint ptr %75 to i64
  %78 = ptrtoint ptr %76 to i64
  %79 = sub i64 %77, %78
  %80 = ashr exact i64 %79, 3
  %81 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %74, i64 0, i32 1
  %82 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %74, i64 0, i32 2
  %83 = icmp eq ptr %75, %76
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %74, i8 0, i64 24, i1 false)
  br i1 %83, label %94, label %84, !prof !92

84:                                               ; preds = %72
  %85 = icmp ugt i64 %80, 1152921504606846975
  br i1 %85, label %86, label %92, !prof !93

86:                                               ; preds = %84
  %87 = icmp ugt i64 %80, 2305843009213693951
  br i1 %87, label %88, label %90

88:                                               ; preds = %86
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #25
          to label %89 unwind label %139

89:                                               ; preds = %88
  unreachable

90:                                               ; preds = %86
  invoke void @_ZSt17__throw_bad_allocv() #25
          to label %91 unwind label %139

91:                                               ; preds = %90
  unreachable

92:                                               ; preds = %84
  %93 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %79) #26
          to label %94 unwind label %139

94:                                               ; preds = %92, %72
  %95 = phi ptr [ null, %72 ], [ %93, %92 ]
  store ptr %95, ptr %74, align 8, !tbaa !91
  store ptr %95, ptr %81, align 8, !tbaa !89
  %96 = getelementptr inbounds double, ptr %95, i64 %80
  store ptr %96, ptr %82, align 8, !tbaa !94
  br i1 %83, label %98, label %97, !prof !92

97:                                               ; preds = %94
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %95, ptr align 8 %76, i64 %79, i1 false), !prof !95
  br label %98

98:                                               ; preds = %94, %97
  %99 = getelementptr inbounds i8, ptr %95, i64 %79
  store ptr %99, ptr %81, align 8, !tbaa !89
  call void @_ZN6dealii11Polynomials10PolynomialIdE5shiftIdEEvRSt6vectorIdSaIdEET_(ptr noundef nonnull align 8 dereferenceable(24) %48, double noundef -1.000000e+00)
  %100 = load ptr, ptr %48, align 8, !tbaa !70
  %101 = load ptr, ptr %55, align 8, !tbaa !70
  %102 = icmp eq ptr %100, %101
  br i1 %102, label %111, label %103

103:                                              ; preds = %98, %103
  %104 = phi double [ %108, %103 ], [ 1.000000e+00, %98 ]
  %105 = phi ptr [ %109, %103 ], [ %100, %98 ]
  %106 = load double, ptr %105, align 8, !tbaa !98
  %107 = fmul double %104, %106
  store double %107, ptr %105, align 8, !tbaa !98
  %108 = fmul double %104, 2.000000e+00
  %109 = getelementptr inbounds double, ptr %105, i64 1
  %110 = icmp eq ptr %109, %101
  br i1 %110, label %111, label %103, !llvm.loop !116

111:                                              ; preds = %103, %98
  call void @_ZN6dealii11Polynomials10PolynomialIdE5shiftIdEEvRSt6vectorIdSaIdEET_(ptr noundef nonnull align 8 dereferenceable(24) %74, double noundef -1.000000e+00)
  %112 = load ptr, ptr %74, align 8, !tbaa !70
  %113 = load ptr, ptr %81, align 8, !tbaa !70
  %114 = icmp eq ptr %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %117, %111
  %116 = icmp eq ptr %112, %113
  br i1 %116, label %131, label %125

117:                                              ; preds = %111, %117
  %118 = phi double [ %122, %117 ], [ 1.000000e+00, %111 ]
  %119 = phi ptr [ %123, %117 ], [ %112, %111 ]
  %120 = load double, ptr %119, align 8, !tbaa !98
  %121 = fmul double %118, %120
  store double %121, ptr %119, align 8, !tbaa !98
  %122 = fmul double %118, 2.000000e+00
  %123 = getelementptr inbounds double, ptr %119, i64 1
  %124 = icmp eq ptr %123, %113
  br i1 %124, label %115, label %117, !llvm.loop !116

125:                                              ; preds = %115, %125
  %126 = phi ptr [ %129, %125 ], [ %112, %115 ]
  %127 = load double, ptr %126, align 8, !tbaa !98
  %128 = fmul double %127, 0x3FFBB67AE8584CAA
  store double %128, ptr %126, align 8, !tbaa !98
  %129 = getelementptr inbounds double, ptr %126, i64 1
  %130 = icmp eq ptr %129, %113
  br i1 %130, label %131, label %125, !llvm.loop !143

131:                                              ; preds = %125, %115
  %132 = load ptr, ptr @_ZN6dealii11Polynomials8Legendre20shifted_coefficientsE, align 8, !tbaa !184
  store ptr %48, ptr %132, align 8, !tbaa !70
  br label %264

133:                                              ; preds = %30
  %134 = landingpad { ptr, i32 }
          cleanup
  br label %270

135:                                              ; preds = %34
  %136 = landingpad { ptr, i32 }
          cleanup
  br label %270

137:                                              ; preds = %66, %64, %62
  %138 = landingpad { ptr, i32 }
          cleanup
  br label %270

139:                                              ; preds = %92, %90, %88
  %140 = landingpad { ptr, i32 }
          cleanup
  br label %270

141:                                              ; preds = %28
  %142 = add i32 %3, -1
  call void @_ZN6dealii11Polynomials8Legendre20compute_coefficientsEj(i32 noundef %142)
  %143 = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26
  %144 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %143, i64 0, i32 1
  %145 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %143, i64 0, i32 2
  %146 = icmp eq i32 %10, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %143, i8 0, i64 24, i1 false)
  br i1 %146, label %150, label %147

147:                                              ; preds = %141
  %148 = shl nuw nsw i64 %11, 3
  %149 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %148) #26
          to label %150 unwind label %228

150:                                              ; preds = %147, %141
  %151 = phi ptr [ null, %141 ], [ %149, %147 ]
  store ptr %151, ptr %143, align 8, !tbaa !91
  store ptr %151, ptr %144, align 8, !tbaa !89
  %152 = getelementptr inbounds double, ptr %151, i64 %11
  store ptr %152, ptr %145, align 8, !tbaa !94
  br i1 %146, label %157, label %153

153:                                              ; preds = %150
  store double 0.000000e+00, ptr %151, align 8, !tbaa !98
  %154 = getelementptr double, ptr %151, i64 1
  %155 = shl nuw nsw i64 %11, 3
  %156 = add nsw i64 %155, -8
  call void @llvm.memset.p0.i64(ptr align 8 %154, i8 0, i64 %156, i1 false), !tbaa !98
  br label %157

157:                                              ; preds = %150, %153
  %158 = phi ptr [ %151, %150 ], [ %152, %153 ]
  store ptr %158, ptr %144, align 8, !tbaa !89
  %159 = uitofp i32 %3 to double
  %160 = fdiv double 1.000000e+00, %159
  %161 = shl i32 %3, 1
  %162 = add i32 %161, -1
  %163 = uitofp i32 %162 to double
  %164 = fmul double %160, %163
  %165 = uitofp i32 %142 to double
  %166 = fmul double %160, %165
  %167 = zext i32 %142 to i64
  %168 = load ptr, ptr @_ZN6dealii11Polynomials8Legendre22recursive_coefficientsE, align 8, !tbaa !184
  %169 = getelementptr inbounds ptr, ptr %168, i64 %167
  %170 = load ptr, ptr %169, align 8, !tbaa !70
  %171 = load ptr, ptr %170, align 8, !tbaa !91
  %172 = getelementptr inbounds double, ptr %171, i64 %167
  %173 = load double, ptr %172, align 8, !tbaa !98
  %174 = fmul double %164, %173
  %175 = zext i32 %3 to i64
  %176 = getelementptr inbounds double, ptr %151, i64 %175
  store double %174, ptr %176, align 8, !tbaa !98
  %177 = add i32 %3, -2
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds double, ptr %171, i64 %178
  %180 = load double, ptr %179, align 8, !tbaa !98
  %181 = fmul double %164, %180
  %182 = getelementptr inbounds double, ptr %151, i64 %167
  store double %181, ptr %182, align 8, !tbaa !98
  %183 = icmp eq i32 %177, 0
  br i1 %183, label %191, label %184

184:                                              ; preds = %157
  %185 = getelementptr inbounds ptr, ptr %168, i64 %178
  %186 = load ptr, ptr %185, align 8, !tbaa !70
  %187 = load ptr, ptr %186, align 8, !tbaa !91
  %188 = fneg double %166
  %189 = add i32 %3, -1
  %190 = getelementptr double, ptr %171, i64 -1
  br label %230

191:                                              ; preds = %230, %157
  %192 = fneg double %166
  %193 = getelementptr inbounds ptr, ptr %168, i64 %178
  %194 = load ptr, ptr %193, align 8, !tbaa !70
  %195 = load ptr, ptr %194, align 8, !tbaa !91
  %196 = load double, ptr %195, align 8, !tbaa !98
  %197 = fmul double %196, %192
  store double %197, ptr %151, align 8, !tbaa !98
  %198 = getelementptr inbounds ptr, ptr %168, i64 %175
  store ptr %143, ptr %198, align 8, !tbaa !70
  %199 = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26
  %200 = load ptr, ptr %144, align 8, !tbaa !70
  %201 = load ptr, ptr %143, align 8, !tbaa !70
  %202 = ptrtoint ptr %200 to i64
  %203 = ptrtoint ptr %201 to i64
  %204 = sub i64 %202, %203
  %205 = ashr exact i64 %204, 3
  %206 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %199, i64 0, i32 1
  %207 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %199, i64 0, i32 2
  %208 = icmp eq ptr %200, %201
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %199, i8 0, i64 24, i1 false)
  br i1 %208, label %219, label %209, !prof !92

209:                                              ; preds = %191
  %210 = icmp ugt i64 %205, 1152921504606846975
  br i1 %210, label %211, label %217, !prof !93

211:                                              ; preds = %209
  %212 = icmp ugt i64 %205, 2305843009213693951
  br i1 %212, label %213, label %215

213:                                              ; preds = %211
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #25
          to label %214 unwind label %262

214:                                              ; preds = %213
  unreachable

215:                                              ; preds = %211
  invoke void @_ZSt17__throw_bad_allocv() #25
          to label %216 unwind label %262

216:                                              ; preds = %215
  unreachable

217:                                              ; preds = %209
  %218 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %204) #26
          to label %219 unwind label %262

219:                                              ; preds = %217, %191
  %220 = phi ptr [ null, %191 ], [ %218, %217 ]
  store ptr %220, ptr %199, align 8, !tbaa !91
  store ptr %220, ptr %206, align 8, !tbaa !89
  %221 = getelementptr inbounds double, ptr %220, i64 %205
  store ptr %221, ptr %207, align 8, !tbaa !94
  br i1 %208, label %223, label %222, !prof !92

222:                                              ; preds = %219
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %220, ptr align 8 %201, i64 %204, i1 false), !prof !95
  br label %223

223:                                              ; preds = %219, %222
  %224 = getelementptr inbounds i8, ptr %220, i64 %204
  store ptr %224, ptr %206, align 8, !tbaa !89
  call void @_ZN6dealii11Polynomials10PolynomialIdE5shiftIdEEvRSt6vectorIdSaIdEET_(ptr noundef nonnull align 8 dereferenceable(24) %199, double noundef -1.000000e+00)
  %225 = load ptr, ptr %199, align 8, !tbaa !70
  %226 = load ptr, ptr %206, align 8, !tbaa !70
  %227 = icmp eq ptr %225, %226
  br i1 %227, label %250, label %242

228:                                              ; preds = %147
  %229 = landingpad { ptr, i32 }
          cleanup
  br label %270

230:                                              ; preds = %184, %230
  %231 = phi i64 [ 1, %184 ], [ %239, %230 ]
  %232 = getelementptr double, ptr %190, i64 %231
  %233 = load double, ptr %232, align 8, !tbaa !98
  %234 = getelementptr inbounds double, ptr %187, i64 %231
  %235 = load double, ptr %234, align 8, !tbaa !98
  %236 = fmul double %235, %188
  %237 = call double @llvm.fmuladd.f64(double %164, double %233, double %236)
  %238 = getelementptr inbounds double, ptr %151, i64 %231
  store double %237, ptr %238, align 8, !tbaa !98
  %239 = add nuw nsw i64 %231, 1
  %240 = trunc i64 %239 to i32
  %241 = icmp eq i32 %189, %240
  br i1 %241, label %191, label %230, !llvm.loop !187

242:                                              ; preds = %223, %242
  %243 = phi double [ %247, %242 ], [ 1.000000e+00, %223 ]
  %244 = phi ptr [ %248, %242 ], [ %225, %223 ]
  %245 = load double, ptr %244, align 8, !tbaa !98
  %246 = fmul double %243, %245
  store double %246, ptr %244, align 8, !tbaa !98
  %247 = fmul double %243, 2.000000e+00
  %248 = getelementptr inbounds double, ptr %244, i64 1
  %249 = icmp eq ptr %248, %226
  br i1 %249, label %250, label %242, !llvm.loop !116

250:                                              ; preds = %242, %223
  %251 = call double @llvm.fmuladd.f64(double %159, double 2.000000e+00, double 1.000000e+00)
  %252 = call double @sqrt(double noundef %251) #23
  %253 = load ptr, ptr %199, align 8, !tbaa !70
  %254 = load ptr, ptr %206, align 8, !tbaa !70
  %255 = icmp eq ptr %253, %254
  br i1 %255, label %264, label %256

256:                                              ; preds = %250, %256
  %257 = phi ptr [ %260, %256 ], [ %253, %250 ]
  %258 = load double, ptr %257, align 8, !tbaa !98
  %259 = fmul double %252, %258
  store double %259, ptr %257, align 8, !tbaa !98
  %260 = getelementptr inbounds double, ptr %257, i64 1
  %261 = icmp eq ptr %260, %254
  br i1 %261, label %264, label %256, !llvm.loop !143

262:                                              ; preds = %217, %215, %213
  %263 = landingpad { ptr, i32 }
          cleanup
  br label %270

264:                                              ; preds = %256, %250, %131
  %265 = phi i64 [ 1, %131 ], [ %175, %250 ], [ %175, %256 ]
  %266 = phi ptr [ %74, %131 ], [ %199, %250 ], [ %199, %256 ]
  %267 = load ptr, ptr @_ZN6dealii11Polynomials8Legendre20shifted_coefficientsE, align 8, !tbaa !184
  %268 = getelementptr inbounds ptr, ptr %267, i64 %265
  store ptr %266, ptr %268, align 8, !tbaa !70
  br label %269

269:                                              ; preds = %264, %13
  ret void

270:                                              ; preds = %228, %262, %133, %135, %139, %137
  %271 = phi ptr [ %143, %228 ], [ %199, %262 ], [ %31, %133 ], [ %37, %135 ], [ %74, %139 ], [ %48, %137 ]
  %272 = phi { ptr, i32 } [ %229, %228 ], [ %263, %262 ], [ %134, %133 ], [ %136, %135 ], [ %140, %139 ], [ %138, %137 ]
  call void @_ZdlPv(ptr noundef %271) #24
  resume { ptr, i32 } %272
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6dealii11Polynomials8Legendre23generate_complete_basisEj(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::vector.32") align 8 %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !annotation !59 {
  %3 = alloca %"class.dealii::Polynomials::Legendre", align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %6 = add i32 %1, 1
  %7 = zext i32 %6 to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  invoke void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %7)
          to label %8 unwind label %13

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %3, i64 0, i32 1
  %10 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %3, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %11 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %3, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %12 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %3, i64 0, i32 1
  br label %15

13:                                               ; preds = %2
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %56

15:                                               ; preds = %8, %41
  %16 = phi i32 [ 0, %8 ], [ %42, %41 ]
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %3) #23
  invoke void @_ZN6dealii11Polynomials8Legendre20compute_coefficientsEj(i32 noundef %16)
          to label %17 unwind label %44

17:                                               ; preds = %15
  %18 = zext i32 %16 to i64
  %19 = load ptr, ptr @_ZN6dealii11Polynomials8Legendre20shifted_coefficientsE, align 8, !tbaa !184
  %20 = getelementptr inbounds ptr, ptr %19, i64 %18
  %21 = load ptr, ptr %20, align 8, !tbaa !70
  invoke void @_ZN6dealii11Polynomials10PolynomialIdEC2ERKSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef nonnull align 8 dereferenceable(24) %21)
          to label %22 unwind label %44

22:                                               ; preds = %17
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials8LegendreE, i64 0, inrange i32 0, i64 2), ptr %3, align 8, !tbaa !60
  %23 = load ptr, ptr %4, align 8, !tbaa !70
  %24 = load ptr, ptr %5, align 8, !tbaa !164
  %25 = icmp eq ptr %23, %24
  br i1 %25, label %36, label %26

26:                                               ; preds = %22
  invoke void @_ZN6dealii11SubscriptorC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %23, ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %27 unwind label %46

27:                                               ; preds = %26
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials10PolynomialIdEE, i64 0, inrange i32 0, i64 2), ptr %23, align 8, !tbaa !60
  %28 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %23, i64 0, i32 1
  %29 = load ptr, ptr %9, align 8, !tbaa !91
  store ptr %29, ptr %28, align 8, !tbaa !91
  %30 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %23, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %31 = load ptr, ptr %10, align 8, !tbaa !89
  store ptr %31, ptr %30, align 8, !tbaa !89
  %32 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %23, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %33 = load ptr, ptr %11, align 8, !tbaa !94
  store ptr %33, ptr %32, align 8, !tbaa !94
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %34 = load ptr, ptr %4, align 8, !tbaa !166
  %35 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %34, i64 1
  store ptr %35, ptr %4, align 8, !tbaa !166
  br label %37

36:                                               ; preds = %22
  invoke void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %23, ptr noundef nonnull align 8 dereferenceable(96) %3)
          to label %37 unwind label %46

37:                                               ; preds = %36, %27
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials10PolynomialIdEE, i64 0, inrange i32 0, i64 2), ptr %3, align 8, !tbaa !60
  %38 = load ptr, ptr %12, align 8, !tbaa !91
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  call void @_ZdlPv(ptr noundef %38) #24
  br label %41

41:                                               ; preds = %37, %40
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %3) #23
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #23
  %42 = add i32 %16, 1
  %43 = icmp ugt i32 %42, %1
  br i1 %43, label %55, label %15, !llvm.loop !188

44:                                               ; preds = %17, %15
  %45 = landingpad { ptr, i32 }
          cleanup
  br label %53

46:                                               ; preds = %36, %26
  %47 = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials10PolynomialIdEE, i64 0, inrange i32 0, i64 2), ptr %3, align 8, !tbaa !60
  %48 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %3, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !91
  %50 = icmp eq ptr %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  call void @_ZdlPv(ptr noundef %49) #24
  br label %52

52:                                               ; preds = %46, %51
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %3) #23
  br label %53

53:                                               ; preds = %52, %44
  %54 = phi { ptr, i32 } [ %47, %52 ], [ %45, %44 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #23
  br label %56

55:                                               ; preds = %41
  ret void

56:                                               ; preds = %53, %13
  %57 = phi { ptr, i32 } [ %54, %53 ], [ %14, %13 ]
  %58 = load ptr, ptr %0, align 8, !tbaa !168
  %59 = load ptr, ptr %4, align 8, !tbaa !166
  %60 = icmp eq ptr %58, %59
  br i1 %60, label %67, label %61

61:                                               ; preds = %56, %61
  %62 = phi ptr [ %65, %61 ], [ %58, %56 ]
  %63 = load ptr, ptr %62, align 8, !tbaa !60
  %64 = load ptr, ptr %63, align 8
  call void %64(ptr noundef nonnull align 8 dereferenceable(96) %62) #23
  %65 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %62, i64 1
  %66 = icmp eq ptr %65, %59
  br i1 %66, label %67, label %61, !llvm.loop !169

67:                                               ; preds = %61, %56
  %68 = load ptr, ptr %0, align 8, !tbaa !168
  %69 = icmp eq ptr %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %67
  call void @_ZdlPv(ptr noundef %68) #24
  br label %71

71:                                               ; preds = %67, %70
  resume { ptr, i32 } %57
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN6dealii11Polynomials12HierarchicalC2Ej(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !63 {
  tail call void @_ZN6dealii11Polynomials12Hierarchical20compute_coefficientsEj(i32 noundef %1)
  %3 = zext i32 %1 to i64
  %4 = load ptr, ptr @_ZN6dealii11Polynomials12Hierarchical22recursive_coefficientsE, align 8, !tbaa !184
  %5 = getelementptr inbounds ptr, ptr %4, i64 %3
  %6 = load ptr, ptr %5, align 8, !tbaa !70
  tail call void @_ZN6dealii11Polynomials10PolynomialIdEC2ERKSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(24) %6)
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials12HierarchicalE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii11Polynomials12Hierarchical16get_coefficientsEj(i32 noundef %0) local_unnamed_addr #2 align 2 !prof !63 {
  tail call void @_ZN6dealii11Polynomials12Hierarchical20compute_coefficientsEj(i32 noundef %0)
  %2 = zext i32 %0 to i64
  %3 = load ptr, ptr @_ZN6dealii11Polynomials12Hierarchical22recursive_coefficientsE, align 8, !tbaa !184
  %4 = getelementptr inbounds ptr, ptr %3, i64 %2
  %5 = load ptr, ptr %4, align 8, !tbaa !70
  ret ptr %5
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6dealii11Polynomials12Hierarchical20compute_coefficientsEj(i32 noundef %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !annotation !59 {
  %2 = alloca ptr, align 8
  %3 = tail call i32 @llvm.umax.i32(i32 %0, i32 1)
  %4 = load ptr, ptr getelementptr inbounds (%"class.std::vector.42", ptr @_ZN6dealii11Polynomials12Hierarchical22recursive_coefficientsE, i64 0, i32 0, i32 0, i32 0, i32 1), align 8, !tbaa !70
  %5 = load ptr, ptr @_ZN6dealii11Polynomials12Hierarchical22recursive_coefficientsE, align 8, !tbaa !184
  %6 = ptrtoint ptr %4 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = add i32 %3, 1
  %11 = zext i32 %10 to i64
  %12 = icmp ult i64 %9, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = zext i32 %3 to i64
  %15 = getelementptr inbounds ptr, ptr %5, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !70
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %135

18:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #23
  store ptr null, ptr %2, align 8, !tbaa !70
  br i1 %12, label %20, label %22

19:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #23
  store ptr null, ptr %2, align 8, !tbaa !70
  br label %20

20:                                               ; preds = %19, %18
  %21 = sub nsw i64 %11, %9
  call void @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS3_S5_EEmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) @_ZN6dealii11Polynomials12Hierarchical22recursive_coefficientsE, ptr %4, i64 noundef %21, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %28

22:                                               ; preds = %18
  %23 = icmp ugt i64 %9, %11
  br i1 %23, label %24, label %28

24:                                               ; preds = %22
  %25 = getelementptr inbounds ptr, ptr %5, i64 %11
  %26 = icmp eq ptr %4, %25
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  store ptr %25, ptr getelementptr inbounds (%"class.std::vector.42", ptr @_ZN6dealii11Polynomials12Hierarchical22recursive_coefficientsE, i64 0, i32 0, i32 0, i32 0, i32 1), align 8, !tbaa !186
  br label %28

28:                                               ; preds = %20, %27, %24, %22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #23
  %29 = icmp ult i32 %0, 2
  br i1 %29, label %30, label %54

30:                                               ; preds = %28
  %31 = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %31, i8 0, i64 24, i1 false)
  %32 = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #26
          to label %33 unwind label %50

33:                                               ; preds = %30
  %34 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %31, i64 0, i32 1
  %35 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %31, i64 0, i32 2
  store ptr %32, ptr %31, align 8, !tbaa !91
  store ptr %32, ptr %34, align 8, !tbaa !89
  %36 = getelementptr inbounds double, ptr %32, i64 2
  store ptr %36, ptr %35, align 8, !tbaa !94
  store double 0.000000e+00, ptr %32, align 8, !tbaa !98
  %37 = getelementptr inbounds i8, ptr %32, i64 8
  store double 0.000000e+00, ptr %37, align 8, !tbaa !98
  store ptr %36, ptr %34, align 8, !tbaa !89
  store double 1.000000e+00, ptr %32, align 8, !tbaa !98
  %38 = getelementptr inbounds double, ptr %32, i64 1
  store double -1.000000e+00, ptr %38, align 8, !tbaa !98
  %39 = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %39, i8 0, i64 24, i1 false)
  %40 = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #26
          to label %41 unwind label %52

41:                                               ; preds = %33
  %42 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %39, i64 0, i32 1
  %43 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %39, i64 0, i32 2
  store ptr %40, ptr %39, align 8, !tbaa !91
  store ptr %40, ptr %42, align 8, !tbaa !89
  %44 = getelementptr inbounds double, ptr %40, i64 2
  store ptr %44, ptr %43, align 8, !tbaa !94
  store double 0.000000e+00, ptr %40, align 8, !tbaa !98
  %45 = getelementptr inbounds i8, ptr %40, i64 8
  store double 0.000000e+00, ptr %45, align 8, !tbaa !98
  store ptr %44, ptr %42, align 8, !tbaa !89
  store double 0.000000e+00, ptr %40, align 8, !tbaa !98
  %46 = getelementptr inbounds double, ptr %40, i64 1
  store double 1.000000e+00, ptr %46, align 8, !tbaa !98
  %47 = load ptr, ptr @_ZN6dealii11Polynomials12Hierarchical22recursive_coefficientsE, align 8, !tbaa !184
  store ptr %31, ptr %47, align 8, !tbaa !70
  %48 = load ptr, ptr @_ZN6dealii11Polynomials12Hierarchical22recursive_coefficientsE, align 8, !tbaa !184
  %49 = getelementptr inbounds ptr, ptr %48, i64 1
  store ptr %39, ptr %49, align 8, !tbaa !70
  br label %135

50:                                               ; preds = %30
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %136

52:                                               ; preds = %33
  %53 = landingpad { ptr, i32 }
          cleanup
  br label %136

54:                                               ; preds = %28
  %55 = icmp eq i32 %0, 2
  br i1 %55, label %56, label %69

56:                                               ; preds = %54
  call void @_ZN6dealii11Polynomials12Hierarchical20compute_coefficientsEj(i32 noundef 1)
  %57 = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %57, i8 0, i64 24, i1 false)
  %58 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26
          to label %59 unwind label %67

59:                                               ; preds = %56
  %60 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %57, i64 0, i32 1
  %61 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %57, i64 0, i32 2
  store ptr %58, ptr %57, align 8, !tbaa !91
  store ptr %58, ptr %60, align 8, !tbaa !89
  %62 = getelementptr inbounds double, ptr %58, i64 3
  store ptr %62, ptr %61, align 8, !tbaa !94
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %58, i8 0, i64 24, i1 false)
  store ptr %62, ptr %60, align 8, !tbaa !89
  store double 0.000000e+00, ptr %58, align 8, !tbaa !98
  %63 = getelementptr inbounds double, ptr %58, i64 1
  store double -4.000000e+00, ptr %63, align 8, !tbaa !98
  %64 = getelementptr inbounds double, ptr %58, i64 2
  store double 4.000000e+00, ptr %64, align 8, !tbaa !98
  %65 = load ptr, ptr @_ZN6dealii11Polynomials12Hierarchical22recursive_coefficientsE, align 8, !tbaa !184
  %66 = getelementptr inbounds ptr, ptr %65, i64 2
  store ptr %57, ptr %66, align 8, !tbaa !70
  br label %135

67:                                               ; preds = %56
  %68 = landingpad { ptr, i32 }
          cleanup
  br label %136

69:                                               ; preds = %54
  %70 = add i32 %3, -1
  call void @_ZN6dealii11Polynomials12Hierarchical20compute_coefficientsEj(i32 noundef %70)
  %71 = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26
  %72 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %71, i64 0, i32 1
  %73 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %71, i64 0, i32 2
  %74 = icmp eq i32 %10, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %71, i8 0, i64 24, i1 false)
  br i1 %74, label %78, label %75

75:                                               ; preds = %69
  %76 = shl nuw nsw i64 %11, 3
  %77 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %76) #26
          to label %78 unwind label %106

78:                                               ; preds = %75, %69
  %79 = phi ptr [ null, %69 ], [ %77, %75 ]
  store ptr %79, ptr %71, align 8, !tbaa !91
  store ptr %79, ptr %72, align 8, !tbaa !89
  %80 = getelementptr inbounds double, ptr %79, i64 %11
  store ptr %80, ptr %73, align 8, !tbaa !94
  br i1 %74, label %85, label %81

81:                                               ; preds = %78
  store double 0.000000e+00, ptr %79, align 8, !tbaa !98
  %82 = getelementptr double, ptr %79, i64 1
  %83 = shl nuw nsw i64 %11, 3
  %84 = add nsw i64 %83, -8
  call void @llvm.memset.p0.i64(ptr align 8 %82, i8 0, i64 %84, i1 false), !tbaa !98
  br label %85

85:                                               ; preds = %78, %81
  %86 = phi ptr [ %79, %78 ], [ %80, %81 ]
  store ptr %86, ptr %72, align 8, !tbaa !89
  %87 = zext i32 %70 to i64
  %88 = load ptr, ptr @_ZN6dealii11Polynomials12Hierarchical22recursive_coefficientsE, align 8, !tbaa !184
  %89 = getelementptr inbounds ptr, ptr %88, i64 %87
  %90 = load ptr, ptr %89, align 8, !tbaa !70
  %91 = load ptr, ptr %90, align 8, !tbaa !91
  %92 = load double, ptr %91, align 8, !tbaa !98
  %93 = fneg double %92
  store double %93, ptr %79, align 8, !tbaa !98
  %94 = icmp eq i32 %70, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %85
  %96 = zext i32 %3 to i64
  %97 = getelementptr double, ptr %91, i64 -1
  br label %108

98:                                               ; preds = %108, %85
  %99 = getelementptr inbounds double, ptr %91, i64 %87
  %100 = load double, ptr %99, align 8, !tbaa !98
  %101 = fmul double %100, 2.000000e+00
  %102 = zext i32 %3 to i64
  %103 = getelementptr inbounds double, ptr %79, i64 %102
  store double %101, ptr %103, align 8, !tbaa !98
  %104 = and i32 %3, 1
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %119, label %133

106:                                              ; preds = %75
  %107 = landingpad { ptr, i32 }
          cleanup
  br label %136

108:                                              ; preds = %95, %108
  %109 = phi i64 [ 1, %95 ], [ %117, %108 ]
  %110 = getelementptr double, ptr %97, i64 %109
  %111 = load double, ptr %110, align 8, !tbaa !98
  %112 = getelementptr inbounds double, ptr %91, i64 %109
  %113 = load double, ptr %112, align 8, !tbaa !98
  %114 = fneg double %113
  %115 = call double @llvm.fmuladd.f64(double %111, double 2.000000e+00, double %114)
  %116 = getelementptr inbounds double, ptr %79, i64 %109
  store double %115, ptr %116, align 8, !tbaa !98
  %117 = add nuw nsw i64 %109, 1
  %118 = icmp eq i64 %117, %96
  br i1 %118, label %98, label %108, !llvm.loop !189

119:                                              ; preds = %98
  %120 = getelementptr inbounds ptr, ptr %88, i64 2
  %121 = load ptr, ptr %120, align 8, !tbaa !70
  %122 = load ptr, ptr %121, align 8, !tbaa !91
  %123 = getelementptr inbounds double, ptr %122, i64 1
  %124 = load double, ptr %123, align 8, !tbaa !98
  %125 = getelementptr inbounds double, ptr %79, i64 1
  %126 = load double, ptr %125, align 8, !tbaa !98
  %127 = fadd double %124, %126
  store double %127, ptr %125, align 8, !tbaa !98
  %128 = getelementptr inbounds double, ptr %122, i64 2
  %129 = load double, ptr %128, align 8, !tbaa !98
  %130 = getelementptr inbounds double, ptr %79, i64 2
  %131 = load double, ptr %130, align 8, !tbaa !98
  %132 = fadd double %129, %131
  store double %132, ptr %130, align 8, !tbaa !98
  br label %133

133:                                              ; preds = %119, %98
  %134 = getelementptr inbounds ptr, ptr %88, i64 %102
  store ptr %71, ptr %134, align 8, !tbaa !70
  br label %135

135:                                              ; preds = %41, %133, %59, %13
  ret void

136:                                              ; preds = %106, %67, %50, %52
  %137 = phi ptr [ %71, %106 ], [ %57, %67 ], [ %31, %50 ], [ %39, %52 ]
  %138 = phi { ptr, i32 } [ %107, %106 ], [ %68, %67 ], [ %51, %50 ], [ %53, %52 ]
  call void @_ZdlPv(ptr noundef %137) #24
  resume { ptr, i32 } %138
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6dealii11Polynomials12Hierarchical23generate_complete_basisEj(ptr dead_on_unwind noalias writable sret(%"class.std::vector.32") align 8 %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !annotation !59 {
  %3 = alloca %"class.dealii::Polynomials::Polynomial.19", align 8
  %4 = alloca %"class.std::vector.20", align 8
  %5 = alloca %"class.std::allocator.34", align 1
  %6 = alloca %"class.dealii::Polynomials::Hierarchical", align 8
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %8, label %43

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %9 = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #26
          to label %10 unwind label %25

10:                                               ; preds = %8
  %11 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %4, i64 0, i32 1
  %12 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %4, i64 0, i32 2
  store ptr %9, ptr %4, align 8, !tbaa !91
  store ptr %9, ptr %11, align 8, !tbaa !89
  %13 = getelementptr inbounds double, ptr %9, i64 1
  store ptr %13, ptr %12, align 8, !tbaa !94
  store double 1.000000e+00, ptr %9, align 8, !tbaa !98
  store ptr %13, ptr %11, align 8, !tbaa !89
  invoke void @_ZN6dealii11Polynomials10PolynomialIdEC1ERKSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %14 unwind label %27

14:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #23
  invoke void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2EmRKS3_RKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %15 unwind label %29

15:                                               ; preds = %14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #23
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials10PolynomialIdEE, i64 0, inrange i32 0, i64 2), ptr %3, align 8, !tbaa !60
  %16 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %3, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !91
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  call void @_ZdlPv(ptr noundef %17) #24
  br label %20

20:                                               ; preds = %15, %19
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %3) #23
  %21 = load ptr, ptr %4, align 8, !tbaa !91
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  call void @_ZdlPv(ptr noundef %21) #24
  br label %24

24:                                               ; preds = %20, %23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #23
  br label %110

25:                                               ; preds = %8
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %41

27:                                               ; preds = %10
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %36

29:                                               ; preds = %14
  %30 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #23
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials10PolynomialIdEE, i64 0, inrange i32 0, i64 2), ptr %3, align 8, !tbaa !60
  %31 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %3, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !91
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  call void @_ZdlPv(ptr noundef %32) #24
  br label %35

35:                                               ; preds = %29, %34
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %3) #23
  br label %36

36:                                               ; preds = %35, %27
  %37 = phi { ptr, i32 } [ %30, %35 ], [ %28, %27 ]
  %38 = load ptr, ptr %4, align 8, !tbaa !91
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  call void @_ZdlPv(ptr noundef %38) #24
  br label %41

41:                                               ; preds = %40, %36, %25
  %42 = phi { ptr, i32 } [ %26, %25 ], [ %37, %36 ], [ %37, %40 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #23
  br label %111

43:                                               ; preds = %2
  %44 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %45 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %46 = add i32 %1, 1
  %47 = zext i32 %46 to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  invoke void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %47)
          to label %48 unwind label %53

48:                                               ; preds = %43
  %49 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %6, i64 0, i32 1
  %50 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %6, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %51 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %6, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %52 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %6, i64 0, i32 1
  br label %55

53:                                               ; preds = %43
  %54 = landingpad { ptr, i32 }
          cleanup
  br label %95

55:                                               ; preds = %48, %81
  %56 = phi i32 [ 0, %48 ], [ %82, %81 ]
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %6) #23
  invoke void @_ZN6dealii11Polynomials12Hierarchical20compute_coefficientsEj(i32 noundef %56)
          to label %57 unwind label %84

57:                                               ; preds = %55
  %58 = zext i32 %56 to i64
  %59 = load ptr, ptr @_ZN6dealii11Polynomials12Hierarchical22recursive_coefficientsE, align 8, !tbaa !184
  %60 = getelementptr inbounds ptr, ptr %59, i64 %58
  %61 = load ptr, ptr %60, align 8, !tbaa !70
  invoke void @_ZN6dealii11Polynomials10PolynomialIdEC2ERKSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(96) %6, ptr noundef nonnull align 8 dereferenceable(24) %61)
          to label %62 unwind label %84

62:                                               ; preds = %57
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials12HierarchicalE, i64 0, inrange i32 0, i64 2), ptr %6, align 8, !tbaa !60
  %63 = load ptr, ptr %44, align 8, !tbaa !70
  %64 = load ptr, ptr %45, align 8, !tbaa !164
  %65 = icmp eq ptr %63, %64
  br i1 %65, label %76, label %66

66:                                               ; preds = %62
  invoke void @_ZN6dealii11SubscriptorC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %63, ptr noundef nonnull align 8 dereferenceable(72) %6)
          to label %67 unwind label %86

67:                                               ; preds = %66
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials10PolynomialIdEE, i64 0, inrange i32 0, i64 2), ptr %63, align 8, !tbaa !60
  %68 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %63, i64 0, i32 1
  %69 = load ptr, ptr %49, align 8, !tbaa !91
  store ptr %69, ptr %68, align 8, !tbaa !91
  %70 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %63, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %71 = load ptr, ptr %50, align 8, !tbaa !89
  store ptr %71, ptr %70, align 8, !tbaa !89
  %72 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %63, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %73 = load ptr, ptr %51, align 8, !tbaa !94
  store ptr %73, ptr %72, align 8, !tbaa !94
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %49, i8 0, i64 24, i1 false)
  %74 = load ptr, ptr %44, align 8, !tbaa !166
  %75 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %74, i64 1
  store ptr %75, ptr %44, align 8, !tbaa !166
  br label %77

76:                                               ; preds = %62
  invoke void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %63, ptr noundef nonnull align 8 dereferenceable(96) %6)
          to label %77 unwind label %86

77:                                               ; preds = %76, %67
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials10PolynomialIdEE, i64 0, inrange i32 0, i64 2), ptr %6, align 8, !tbaa !60
  %78 = load ptr, ptr %52, align 8, !tbaa !91
  %79 = icmp eq ptr %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %77
  call void @_ZdlPv(ptr noundef %78) #24
  br label %81

81:                                               ; preds = %77, %80
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %6) #23
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %6) #23
  %82 = add i32 %56, 1
  %83 = icmp ugt i32 %82, %1
  br i1 %83, label %110, label %55, !llvm.loop !190

84:                                               ; preds = %57, %55
  %85 = landingpad { ptr, i32 }
          cleanup
  br label %93

86:                                               ; preds = %76, %66
  %87 = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials10PolynomialIdEE, i64 0, inrange i32 0, i64 2), ptr %6, align 8, !tbaa !60
  %88 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %6, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !91
  %90 = icmp eq ptr %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %86
  call void @_ZdlPv(ptr noundef %89) #24
  br label %92

92:                                               ; preds = %86, %91
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %6) #23
  br label %93

93:                                               ; preds = %92, %84
  %94 = phi { ptr, i32 } [ %87, %92 ], [ %85, %84 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %6) #23
  br label %95

95:                                               ; preds = %93, %53
  %96 = phi { ptr, i32 } [ %94, %93 ], [ %54, %53 ]
  %97 = load ptr, ptr %0, align 8, !tbaa !168
  %98 = load ptr, ptr %44, align 8, !tbaa !166
  %99 = icmp eq ptr %97, %98
  br i1 %99, label %106, label %100

100:                                              ; preds = %95, %100
  %101 = phi ptr [ %104, %100 ], [ %97, %95 ]
  %102 = load ptr, ptr %101, align 8, !tbaa !60
  %103 = load ptr, ptr %102, align 8
  call void %103(ptr noundef nonnull align 8 dereferenceable(96) %101) #23
  %104 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %101, i64 1
  %105 = icmp eq ptr %104, %98
  br i1 %105, label %106, label %100, !llvm.loop !169

106:                                              ; preds = %100, %95
  %107 = load ptr, ptr %0, align 8, !tbaa !168
  %108 = icmp eq ptr %107, null
  br i1 %108, label %111, label %109

109:                                              ; preds = %106
  call void @_ZdlPv(ptr noundef %107) #24
  br label %111

110:                                              ; preds = %81, %24
  ret void

111:                                              ; preds = %109, %106, %41
  %112 = phi { ptr, i32 } [ %42, %41 ], [ %96, %106 ], [ %96, %109 ]
  resume { ptr, i32 } %112
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii11Polynomials10PolynomialIdED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 !prof !191 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials10PolynomialIdEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  %2 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !91
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !192

5:                                                ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #24
  br label %6

6:                                                ; preds = %1, %5
  tail call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #23
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii11Polynomials10PolynomialIdED0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !59 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials10PolynomialIdEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  %2 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !91
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #24
  br label %6

6:                                                ; preds = %1, %5
  tail call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #23
  tail call void @_ZdlPv(ptr noundef %0) #24
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii11Polynomials10PolynomialIfED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials10PolynomialIfEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  %2 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !68
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #24
  br label %6

6:                                                ; preds = %1, %5
  tail call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #23
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii11Polynomials10PolynomialIfED0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !59 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials10PolynomialIfEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  %2 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !68
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #24
  br label %6

6:                                                ; preds = %1, %5
  tail call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #23
  tail call void @_ZdlPv(ptr noundef %0) #24
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii11Polynomials8MonomialIfED0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !59 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials10PolynomialIfEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  %2 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !68
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #24
  br label %6

6:                                                ; preds = %1, %5
  tail call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #23
  tail call void @_ZdlPv(ptr noundef %0) #24
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii11Polynomials8MonomialIdED0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !59 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials10PolynomialIdEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  %2 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !91
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #24
  br label %6

6:                                                ; preds = %1, %5
  tail call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #23
  tail call void @_ZdlPv(ptr noundef %0) #24
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii11Polynomials19LagrangeEquidistantD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !59 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials10PolynomialIdEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  %2 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !91
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #24
  br label %6

6:                                                ; preds = %1, %5
  tail call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #23
  tail call void @_ZdlPv(ptr noundef %0) #24
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii11Polynomials8LegendreD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !59 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials10PolynomialIdEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  %2 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !91
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #24
  br label %6

6:                                                ; preds = %1, %5
  tail call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #23
  tail call void @_ZdlPv(ptr noundef %0) #24
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii11Polynomials12HierarchicalD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !59 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials10PolynomialIdEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  %2 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !91
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #24
  br label %6

6:                                                ; preds = %1, %5
  tail call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #23
  tail call void @_ZdlPv(ptr noundef %0) #24
  ret void
}

declare void @_ZN6dealii11SubscriptorC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(72) ptr @_ZN6dealii11SubscriptoraSERKS0_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #1

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #15 comdat !prof !63 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #23
  tail call void @_ZSt9terminatev() #27
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #0 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIdE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !193 {
  %4 = icmp ugt i64 %1, 1152921504606846975
  br i1 %4, label %5, label %9, !prof !93

5:                                                ; preds = %3
  %6 = icmp ugt i64 %1, 2305843009213693951
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

8:                                                ; preds = %5
  tail call void @_ZSt17__throw_bad_allocv() #25
  unreachable

9:                                                ; preds = %3
  %10 = shl nuw nsw i64 %1, 3
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #26
  ret ptr %11
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #16

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !194 {
  %4 = icmp ugt i64 %1, 96076792050570581
  br i1 %4, label %5, label %9, !prof !195

5:                                                ; preds = %3
  %6 = icmp ugt i64 %1, 192153584101141162
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

8:                                                ; preds = %5
  tail call void @_ZSt17__throw_bad_allocv() #25
  unreachable

9:                                                ; preds = %3
  %10 = mul nuw i64 %1, 96
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #26
  ret ptr %11
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt18__do_uninit_fill_nIPN6dealii11Polynomials10PolynomialIdEEmS3_ET_S5_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(96) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 !annotation !59 {
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %67, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %2, i64 0, i32 1
  %7 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %2, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  br label %8

8:                                                ; preds = %5, %42
  %9 = phi ptr [ %0, %5 ], [ %45, %42 ]
  %10 = phi i64 [ %1, %5 ], [ %44, %42 ]
  invoke void @_ZN6dealii11SubscriptorC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %11 unwind label %53

11:                                               ; preds = %8
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials10PolynomialIdEE, i64 0, inrange i32 0, i64 2), ptr %9, align 8, !tbaa !60
  %12 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %9, i64 0, i32 1
  %13 = load ptr, ptr %7, align 8, !tbaa !89
  %14 = load ptr, ptr %6, align 8, !tbaa !91
  %15 = ptrtoint ptr %13 to i64
  %16 = ptrtoint ptr %14 to i64
  %17 = sub i64 %15, %16
  %18 = ashr exact i64 %17, 3
  %19 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %9, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %20 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %9, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %21 = icmp eq ptr %13, %14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  br i1 %21, label %32, label %22, !prof !92

22:                                               ; preds = %11
  %23 = icmp ugt i64 %18, 1152921504606846975
  br i1 %23, label %24, label %30, !prof !93

24:                                               ; preds = %22
  %25 = icmp ugt i64 %18, 2305843009213693951
  br i1 %25, label %26, label %28

26:                                               ; preds = %24
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #25
          to label %27 unwind label %49

27:                                               ; preds = %26
  unreachable

28:                                               ; preds = %24
  invoke void @_ZSt17__throw_bad_allocv() #25
          to label %29 unwind label %49

29:                                               ; preds = %28
  unreachable

30:                                               ; preds = %22
  %31 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %17) #26
          to label %32 unwind label %47

32:                                               ; preds = %30, %11
  %33 = phi ptr [ null, %11 ], [ %31, %30 ]
  store ptr %33, ptr %12, align 8, !tbaa !91
  store ptr %33, ptr %19, align 8, !tbaa !89
  %34 = getelementptr inbounds double, ptr %33, i64 %18
  store ptr %34, ptr %20, align 8, !tbaa !94
  %35 = load ptr, ptr %6, align 8, !tbaa !70
  %36 = load ptr, ptr %7, align 8, !tbaa !70
  %37 = ptrtoint ptr %36 to i64
  %38 = ptrtoint ptr %35 to i64
  %39 = sub i64 %37, %38
  %40 = icmp eq ptr %36, %35
  br i1 %40, label %42, label %41, !prof !92

41:                                               ; preds = %32
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %33, ptr align 8 %35, i64 %39, i1 false), !prof !95
  br label %42

42:                                               ; preds = %32, %41
  %43 = getelementptr inbounds i8, ptr %33, i64 %39
  store ptr %43, ptr %19, align 8, !tbaa !89
  %44 = add i64 %10, -1
  %45 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %9, i64 1
  %46 = icmp eq i64 %44, 0
  br i1 %46, label %67, label %8, !llvm.loop !196

47:                                               ; preds = %30
  %48 = landingpad { ptr, i32 }
          catch ptr null
  br label %51

49:                                               ; preds = %26, %28
  %50 = landingpad { ptr, i32 }
          catch ptr null
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi { ptr, i32 } [ %48, %47 ], [ %50, %49 ]
  tail call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %9) #23
  br label %55

53:                                               ; preds = %8
  %54 = landingpad { ptr, i32 }
          catch ptr null
  br label %55

55:                                               ; preds = %51, %53
  %56 = phi { ptr, i32 } [ %54, %53 ], [ %52, %51 ]
  %57 = extractvalue { ptr, i32 } %56, 0
  %58 = tail call ptr @__cxa_begin_catch(ptr %57) #23
  %59 = icmp eq ptr %9, %0
  br i1 %59, label %66, label %60

60:                                               ; preds = %55, %60
  %61 = phi ptr [ %64, %60 ], [ %0, %55 ]
  %62 = load ptr, ptr %61, align 8, !tbaa !60
  %63 = load ptr, ptr %62, align 8
  tail call void %63(ptr noundef nonnull align 8 dereferenceable(96) %61) #23
  %64 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %61, i64 1
  %65 = icmp eq ptr %64, %9
  br i1 %65, label %66, label %60, !llvm.loop !169

66:                                               ; preds = %60, %55
  invoke void @__cxa_rethrow() #25
          to label %75 unwind label %69

67:                                               ; preds = %42, %3
  %68 = phi ptr [ %0, %3 ], [ %45, %42 ]
  ret ptr %68

69:                                               ; preds = %66
  %70 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %71 unwind label %72

71:                                               ; preds = %69
  resume { ptr, i32 } %70

72:                                               ; preds = %69
  %73 = landingpad { ptr, i32 }
          catch ptr null
  %74 = extractvalue { ptr, i32 } %73, 0
  tail call void @__clang_call_terminate(ptr %74) #27
  unreachable

75:                                               ; preds = %66
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(96) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !166
  %6 = load ptr, ptr %0, align 8, !tbaa !70
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = icmp eq i64 %9, 9223372036854775776
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #25
  unreachable

12:                                               ; preds = %3
  %13 = sdiv exact i64 %9, 96
  %14 = tail call i64 @llvm.umax.i64(i64 %13, i64 1)
  %15 = add i64 %14, %13
  %16 = icmp ult i64 %15, %13
  %17 = tail call i64 @llvm.umin.i64(i64 %15, i64 96076792050570581)
  %18 = select i1 %16, i64 96076792050570581, i64 %17
  %19 = ptrtoint ptr %1 to i64
  %20 = sub i64 %19, %8
  %21 = sdiv exact i64 %20, 96
  %22 = icmp eq i64 %18, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %12
  %24 = mul nuw nsw i64 %18, 96
  %25 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %24) #26
  br label %26

26:                                               ; preds = %12, %23
  %27 = phi ptr [ %25, %23 ], [ null, %12 ]
  %28 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %27, i64 %21
  invoke void @_ZN6dealii11SubscriptorC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %28, ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %29 unwind label %57

29:                                               ; preds = %26
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials10PolynomialIdEE, i64 0, inrange i32 0, i64 2), ptr %28, align 8, !tbaa !60
  %30 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %27, i64 %21, i32 1
  %31 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %2, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !91
  store ptr %32, ptr %30, align 8, !tbaa !91
  %33 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %27, i64 %21, i32 1, i32 0, i32 0, i32 0, i32 1
  %34 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %2, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !89
  store ptr %35, ptr %33, align 8, !tbaa !89
  %36 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %27, i64 %21, i32 1, i32 0, i32 0, i32 0, i32 2
  %37 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %2, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !94
  store ptr %38, ptr %36, align 8, !tbaa !94
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %31, i8 0, i64 24, i1 false)
  %39 = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN6dealii11Polynomials10PolynomialIdEEPS3_ET0_T_S8_S7_(ptr noundef %6, ptr noundef %1, ptr noundef %27)
          to label %40 unwind label %57

40:                                               ; preds = %29
  %41 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %39, i64 1
  %42 = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN6dealii11Polynomials10PolynomialIdEEPS3_ET0_T_S8_S7_(ptr noundef %1, ptr noundef %5, ptr noundef nonnull %41)
          to label %43 unwind label %57

43:                                               ; preds = %40
  %44 = icmp eq ptr %6, %5
  br i1 %44, label %51, label %45

45:                                               ; preds = %43, %45
  %46 = phi ptr [ %49, %45 ], [ %6, %43 ]
  %47 = load ptr, ptr %46, align 8, !tbaa !60
  %48 = load ptr, ptr %47, align 8
  tail call void %48(ptr noundef nonnull align 8 dereferenceable(96) %46) #23
  %49 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %46, i64 1
  %50 = icmp eq ptr %49, %5
  br i1 %50, label %51, label %45, !llvm.loop !169

51:                                               ; preds = %45, %43
  %52 = icmp eq ptr %6, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %51
  tail call void @_ZdlPv(ptr noundef %6) #24
  br label %54

54:                                               ; preds = %51, %53
  %55 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %27, ptr %0, align 8, !tbaa !168
  store ptr %42, ptr %4, align 8, !tbaa !166
  %56 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %27, i64 %18
  store ptr %56, ptr %55, align 8, !tbaa !164
  ret void

57:                                               ; preds = %40, %29, %26
  %58 = phi ptr [ %27, %26 ], [ null, %29 ], [ %41, %40 ]
  %59 = landingpad { ptr, i32 }
          catch ptr null
  %60 = extractvalue { ptr, i32 } %59, 0
  %61 = tail call ptr @__cxa_begin_catch(ptr %60) #23
  %62 = icmp eq ptr %58, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %57
  %64 = icmp eq ptr %27, %58
  br i1 %64, label %76, label %68

65:                                               ; preds = %57
  %66 = load ptr, ptr %28, align 8, !tbaa !60
  %67 = load ptr, ptr %66, align 8
  tail call void %67(ptr noundef nonnull align 8 dereferenceable(96) %28) #23
  br label %76

68:                                               ; preds = %63, %68
  %69 = phi ptr [ %72, %68 ], [ %27, %63 ]
  %70 = load ptr, ptr %69, align 8, !tbaa !60
  %71 = load ptr, ptr %70, align 8
  tail call void %71(ptr noundef nonnull align 8 dereferenceable(96) %69) #23
  %72 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %69, i64 1
  %73 = icmp eq ptr %72, %58
  br i1 %73, label %76, label %68, !llvm.loop !169

74:                                               ; preds = %79
  %75 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %80 unwind label %81

76:                                               ; preds = %68, %63, %65
  %77 = icmp eq ptr %27, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %76
  tail call void @_ZdlPv(ptr noundef %27) #24
  br label %79

79:                                               ; preds = %78, %76
  invoke void @__cxa_rethrow() #25
          to label %84 unwind label %74

80:                                               ; preds = %74
  resume { ptr, i32 } %75

81:                                               ; preds = %74
  %82 = landingpad { ptr, i32 }
          catch ptr null
  %83 = extractvalue { ptr, i32 } %82, 0
  tail call void @__clang_call_terminate(ptr %83) #27
  unreachable

84:                                               ; preds = %79
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIPKN6dealii11Polynomials10PolynomialIdEEPS3_ET0_T_S8_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %66, label %5

5:                                                ; preds = %3, %41
  %6 = phi ptr [ %44, %41 ], [ %2, %3 ]
  %7 = phi ptr [ %43, %41 ], [ %0, %3 ]
  invoke void @_ZN6dealii11SubscriptorC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(72) %7)
          to label %8 unwind label %52

8:                                                ; preds = %5
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials10PolynomialIdEE, i64 0, inrange i32 0, i64 2), ptr %6, align 8, !tbaa !60
  %9 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %6, i64 0, i32 1
  %10 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %7, i64 0, i32 1
  %11 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %7, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !89
  %13 = load ptr, ptr %10, align 8, !tbaa !91
  %14 = ptrtoint ptr %12 to i64
  %15 = ptrtoint ptr %13 to i64
  %16 = sub i64 %14, %15
  %17 = ashr exact i64 %16, 3
  %18 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %6, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %19 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %6, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %20 = icmp eq ptr %12, %13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br i1 %20, label %31, label %21, !prof !92

21:                                               ; preds = %8
  %22 = icmp ugt i64 %17, 1152921504606846975
  br i1 %22, label %23, label %29, !prof !93

23:                                               ; preds = %21
  %24 = icmp ugt i64 %17, 2305843009213693951
  br i1 %24, label %25, label %27

25:                                               ; preds = %23
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #25
          to label %26 unwind label %48

26:                                               ; preds = %25
  unreachable

27:                                               ; preds = %23
  invoke void @_ZSt17__throw_bad_allocv() #25
          to label %28 unwind label %48

28:                                               ; preds = %27
  unreachable

29:                                               ; preds = %21
  %30 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %16) #26
          to label %31 unwind label %46

31:                                               ; preds = %29, %8
  %32 = phi ptr [ null, %8 ], [ %30, %29 ]
  store ptr %32, ptr %9, align 8, !tbaa !91
  store ptr %32, ptr %18, align 8, !tbaa !89
  %33 = getelementptr inbounds double, ptr %32, i64 %17
  store ptr %33, ptr %19, align 8, !tbaa !94
  %34 = load ptr, ptr %10, align 8, !tbaa !70
  %35 = load ptr, ptr %11, align 8, !tbaa !70
  %36 = ptrtoint ptr %35 to i64
  %37 = ptrtoint ptr %34 to i64
  %38 = sub i64 %36, %37
  %39 = icmp eq ptr %35, %34
  br i1 %39, label %41, label %40, !prof !92

40:                                               ; preds = %31
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %32, ptr align 8 %34, i64 %38, i1 false), !prof !95
  br label %41

41:                                               ; preds = %31, %40
  %42 = getelementptr inbounds i8, ptr %32, i64 %38
  store ptr %42, ptr %18, align 8, !tbaa !89
  %43 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %7, i64 1
  %44 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %6, i64 1
  %45 = icmp eq ptr %43, %1
  br i1 %45, label %66, label %5, !llvm.loop !197

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
  tail call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %6) #23
  br label %54

52:                                               ; preds = %5
  %53 = landingpad { ptr, i32 }
          catch ptr null
  br label %54

54:                                               ; preds = %50, %52
  %55 = phi { ptr, i32 } [ %53, %52 ], [ %51, %50 ]
  %56 = extractvalue { ptr, i32 } %55, 0
  %57 = tail call ptr @__cxa_begin_catch(ptr %56) #23
  %58 = icmp eq ptr %6, %2
  br i1 %58, label %65, label %59

59:                                               ; preds = %54, %59
  %60 = phi ptr [ %63, %59 ], [ %2, %54 ]
  %61 = load ptr, ptr %60, align 8, !tbaa !60
  %62 = load ptr, ptr %61, align 8
  tail call void %62(ptr noundef nonnull align 8 dereferenceable(96) %60) #23
  %63 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %60, i64 1
  %64 = icmp eq ptr %63, %6
  br i1 %64, label %65, label %59, !llvm.loop !169

65:                                               ; preds = %59, %54
  invoke void @__cxa_rethrow() #25
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
  tail call void @__clang_call_terminate(ptr %73) #27
  unreachable

74:                                               ; preds = %65
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #17

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIPKSt6vectorIdSaIdEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 !prof !63 {
  %4 = icmp ugt i64 %1, 1152921504606846975
  br i1 %4, label %5, label %9, !prof !198

5:                                                ; preds = %3
  %6 = icmp ugt i64 %1, 2305843009213693951
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

8:                                                ; preds = %5
  tail call void @_ZSt17__throw_bad_allocv() #25
  unreachable

9:                                                ; preds = %3
  %10 = shl nuw nsw i64 %1, 3
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #26
  ret ptr %11
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS3_S5_EEmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  %5 = icmp eq i64 %2, 0
  br i1 %5, label %103, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %"struct.std::_Vector_base<const std::vector<double> *, std::allocator<const std::vector<double> *>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !199
  %9 = getelementptr inbounds %"struct.std::_Vector_base<const std::vector<double> *, std::allocator<const std::vector<double> *>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !70
  %11 = ptrtoint ptr %8 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = ashr exact i64 %13, 3
  %15 = icmp ult i64 %14, %2
  br i1 %15, label %62, label %16

16:                                               ; preds = %6
  %17 = load ptr, ptr %3, align 8, !tbaa !70
  %18 = ptrtoint ptr %1 to i64
  %19 = sub i64 %12, %18
  %20 = ashr exact i64 %19, 3
  %21 = icmp ugt i64 %20, %2
  br i1 %21, label %22, label %41

22:                                               ; preds = %16
  %23 = sub i64 0, %2
  %24 = getelementptr inbounds ptr, ptr %10, i64 %23
  %25 = shl i64 %2, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %10, ptr nonnull align 8 %24, i64 %25, i1 false)
  %26 = load ptr, ptr %9, align 8, !tbaa !186
  %27 = getelementptr inbounds ptr, ptr %26, i64 %2
  store ptr %27, ptr %9, align 8, !tbaa !186
  %28 = icmp eq ptr %24, %1
  br i1 %28, label %35, label %29

29:                                               ; preds = %22
  %30 = ptrtoint ptr %24 to i64
  %31 = sub i64 %30, %18
  %32 = ashr exact i64 %31, 3
  %33 = sub nsw i64 0, %32
  %34 = getelementptr inbounds ptr, ptr %10, i64 %33
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %34, ptr align 8 %1, i64 %31, i1 false)
  br label %35

35:                                               ; preds = %22, %29
  %36 = getelementptr inbounds ptr, ptr %1, i64 %2
  br label %37

37:                                               ; preds = %35, %37
  %38 = phi ptr [ %39, %37 ], [ %1, %35 ]
  store ptr %17, ptr %38, align 8, !tbaa !70
  %39 = getelementptr inbounds ptr, ptr %38, i64 1
  %40 = icmp eq ptr %39, %36
  br i1 %40, label %103, label %37, !llvm.loop !200

41:                                               ; preds = %16
  %42 = icmp eq i64 %20, %2
  br i1 %42, label %50, label %43

43:                                               ; preds = %41
  %44 = sub i64 %2, %20
  %45 = getelementptr inbounds ptr, ptr %10, i64 %44
  br label %46

46:                                               ; preds = %43, %46
  %47 = phi ptr [ %48, %46 ], [ %10, %43 ]
  store ptr %17, ptr %47, align 8, !tbaa !70
  %48 = getelementptr inbounds ptr, ptr %47, i64 1
  %49 = icmp eq ptr %48, %45
  br i1 %49, label %50, label %46, !llvm.loop !200

50:                                               ; preds = %46, %41
  %51 = phi ptr [ %10, %41 ], [ %45, %46 ]
  store ptr %51, ptr %9, align 8, !tbaa !186
  %52 = icmp eq ptr %10, %1
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %51, ptr align 8 %1, i64 %19, i1 false)
  br label %54

54:                                               ; preds = %53, %50
  %55 = load ptr, ptr %9, align 8, !tbaa !186
  %56 = getelementptr inbounds i8, ptr %55, i64 %19
  store ptr %56, ptr %9, align 8, !tbaa !186
  %57 = icmp eq ptr %10, %1
  br i1 %57, label %103, label %58

58:                                               ; preds = %54, %58
  %59 = phi ptr [ %60, %58 ], [ %1, %54 ]
  store ptr %17, ptr %59, align 8, !tbaa !70
  %60 = getelementptr inbounds ptr, ptr %59, i64 1
  %61 = icmp eq ptr %60, %10
  br i1 %61, label %103, label %58, !llvm.loop !200

62:                                               ; preds = %6
  %63 = load ptr, ptr %0, align 8, !tbaa !184
  %64 = ptrtoint ptr %63 to i64
  %65 = sub i64 %12, %64
  %66 = ashr exact i64 %65, 3
  %67 = sub nsw i64 1152921504606846975, %66
  %68 = icmp ult i64 %67, %2
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #25
  unreachable

70:                                               ; preds = %62
  %71 = tail call i64 @llvm.umax.i64(i64 %66, i64 %2)
  %72 = add i64 %71, %66
  %73 = icmp ult i64 %72, %66
  %74 = tail call i64 @llvm.umin.i64(i64 %72, i64 1152921504606846975)
  %75 = select i1 %73, i64 1152921504606846975, i64 %74
  %76 = ptrtoint ptr %1 to i64
  %77 = sub i64 %76, %64
  %78 = icmp eq i64 %75, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %70
  %80 = tail call noundef ptr @_ZNSt15__new_allocatorIPKSt6vectorIdSaIdEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %75, ptr noundef null)
  br label %81

81:                                               ; preds = %70, %79
  %82 = phi ptr [ %80, %79 ], [ null, %70 ]
  %83 = getelementptr inbounds i8, ptr %82, i64 %77
  %84 = getelementptr inbounds ptr, ptr %83, i64 %2
  %85 = load ptr, ptr %3, align 8, !tbaa !70
  br label %86

86:                                               ; preds = %81, %86
  %87 = phi ptr [ %88, %86 ], [ %83, %81 ]
  store ptr %85, ptr %87, align 8, !tbaa !70
  %88 = getelementptr inbounds ptr, ptr %87, i64 1
  %89 = icmp eq ptr %88, %84
  br i1 %89, label %90, label %86, !llvm.loop !200

90:                                               ; preds = %86
  %91 = icmp eq ptr %63, %1
  br i1 %91, label %93, label %92

92:                                               ; preds = %90
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %82, ptr align 8 %63, i64 %77, i1 false)
  br label %93

93:                                               ; preds = %92, %90
  %94 = sub i64 %12, %76
  %95 = icmp eq ptr %10, %1
  br i1 %95, label %97, label %96

96:                                               ; preds = %93
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %84, ptr align 8 %1, i64 %94, i1 false)
  br label %97

97:                                               ; preds = %93, %96
  %98 = getelementptr inbounds i8, ptr %84, i64 %94
  %99 = icmp eq ptr %63, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %97
  tail call void @_ZdlPv(ptr noundef %63) #24
  br label %101

101:                                              ; preds = %97, %100
  store ptr %82, ptr %0, align 8, !tbaa !184
  store ptr %98, ptr %9, align 8, !tbaa !186
  %102 = getelementptr inbounds ptr, ptr %82, i64 %75
  store ptr %102, ptr %7, align 8, !tbaa !199
  br label %103

103:                                              ; preds = %58, %37, %54, %101, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEE19_M_range_initializeIN9__gnu_cxx17__normal_iteratorIPdS1_EEEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  %4 = ptrtoint ptr %2 to i64
  %5 = ptrtoint ptr %1 to i64
  %6 = sub i64 %4, %5
  %7 = ashr exact i64 %6, 3
  %8 = icmp ugt i64 %7, 1152921504606846975
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #25
  unreachable

10:                                               ; preds = %3
  %11 = icmp eq ptr %2, %1
  br i1 %11, label %14, label %12

12:                                               ; preds = %10
  %13 = tail call noundef ptr @_ZNSt15__new_allocatorIdE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %7, ptr noundef null)
  br label %14

14:                                               ; preds = %10, %12
  %15 = phi ptr [ %13, %12 ], [ null, %10 ]
  store ptr %15, ptr %0, align 8, !tbaa !91
  %16 = getelementptr inbounds double, ptr %15, i64 %7
  %17 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %16, ptr %17, align 8, !tbaa !94
  br i1 %11, label %19, label %18

18:                                               ; preds = %14
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %15, ptr align 8 %1, i64 %6, i1 false)
  br label %19

19:                                               ; preds = %14, %18
  %20 = getelementptr inbounds i8, ptr %15, i64 %6
  %21 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %20, ptr %21, align 8, !tbaa !89
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPdS1_EEEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  %4 = ptrtoint ptr %2 to i64
  %5 = ptrtoint ptr %1 to i64
  %6 = sub i64 %4, %5
  %7 = ashr exact i64 %6, 3
  %8 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !94
  %10 = load ptr, ptr %0, align 8, !tbaa !91
  %11 = ptrtoint ptr %9 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = icmp ugt i64 %6, %13
  br i1 %14, label %15, label %29

15:                                               ; preds = %3
  %16 = icmp ugt i64 %7, 1152921504606846975
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #25
  unreachable

18:                                               ; preds = %15
  %19 = tail call noundef ptr @_ZNSt15__new_allocatorIdE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %7, ptr noundef null)
  %20 = icmp eq ptr %2, %1
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %19, ptr align 8 %1, i64 %6, i1 false)
  br label %22

22:                                               ; preds = %18, %21
  %23 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %24 = load ptr, ptr %0, align 8, !tbaa !91
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  tail call void @_ZdlPv(ptr noundef %24) #24
  br label %27

27:                                               ; preds = %22, %26
  store ptr %19, ptr %0, align 8, !tbaa !91
  %28 = getelementptr inbounds i8, ptr %19, i64 %6
  store ptr %28, ptr %23, align 8, !tbaa !89
  store ptr %28, ptr %8, align 8, !tbaa !94
  br label %55

29:                                               ; preds = %3
  %30 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !89
  %32 = ptrtoint ptr %31 to i64
  %33 = sub i64 %32, %12
  %34 = icmp ult i64 %33, %6
  br i1 %34, label %43, label %35

35:                                               ; preds = %29
  %36 = icmp eq ptr %2, %1
  br i1 %36, label %38, label %37

37:                                               ; preds = %35
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %10, ptr align 8 %1, i64 %6, i1 false)
  br label %38

38:                                               ; preds = %35, %37
  %39 = getelementptr inbounds i8, ptr %10, i64 %6
  %40 = load ptr, ptr %30, align 8, !tbaa !89
  %41 = icmp eq ptr %40, %39
  br i1 %41, label %55, label %42

42:                                               ; preds = %38
  store ptr %39, ptr %30, align 8, !tbaa !89
  br label %55

43:                                               ; preds = %29
  %44 = getelementptr inbounds i8, ptr %1, i64 %33
  %45 = ptrtoint ptr %44 to i64
  %46 = icmp eq ptr %31, %10
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %10, ptr align 8 %1, i64 %33, i1 false)
  br label %48

48:                                               ; preds = %43, %47
  %49 = load ptr, ptr %30, align 8, !tbaa !89
  %50 = sub i64 %4, %45
  %51 = icmp eq ptr %44, %2
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %49, ptr align 8 %44, i64 %50, i1 false)
  br label %53

53:                                               ; preds = %48, %52
  %54 = getelementptr inbounds i8, ptr %49, i64 %50
  store ptr %54, ptr %30, align 8, !tbaa !89
  br label %55

55:                                               ; preds = %42, %38, %53, %27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %5 = icmp eq i64 %1, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %4
  %7 = icmp ugt i64 %1, 96076792050570581
  br i1 %7, label %8, label %12, !prof !195

8:                                                ; preds = %6
  %9 = icmp ugt i64 %1, 192153584101141162
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

11:                                               ; preds = %8
  tail call void @_ZSt17__throw_bad_allocv() #25
  unreachable

12:                                               ; preds = %6
  %13 = mul nuw i64 %1, 96
  %14 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %13) #26
  br label %15

15:                                               ; preds = %4, %12
  %16 = phi ptr [ %14, %12 ], [ null, %4 ]
  %17 = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN6dealii11Polynomials10PolynomialIdEEPS3_ET0_T_S8_S7_(ptr noundef %2, ptr noundef %3, ptr noundef %16)
          to label %18 unwind label %19

18:                                               ; preds = %15
  ret ptr %16

19:                                               ; preds = %15
  %20 = landingpad { ptr, i32 }
          catch ptr null
  %21 = extractvalue { ptr, i32 } %20, 0
  %22 = tail call ptr @__cxa_begin_catch(ptr %21) #23
  %23 = icmp eq ptr %16, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  tail call void @_ZdlPv(ptr noundef %16) #24
  br label %25

25:                                               ; preds = %24, %19
  invoke void @__cxa_rethrow() #25
          to label %32 unwind label %26

26:                                               ; preds = %25
  %27 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %28 unwind label %29

28:                                               ; preds = %26
  resume { ptr, i32 } %27

29:                                               ; preds = %26
  %30 = landingpad { ptr, i32 }
          catch ptr null
  %31 = extractvalue { ptr, i32 } %30, 0
  tail call void @__clang_call_terminate(ptr %31) #27
  unreachable

32:                                               ; preds = %25
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIfE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 !prof !63 {
  %4 = icmp ugt i64 %1, 2305843009213693951
  br i1 %4, label %5, label %9, !prof !198

5:                                                ; preds = %3
  %6 = icmp ugt i64 %1, 4611686018427387903
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

8:                                                ; preds = %5
  tail call void @_ZSt17__throw_bad_allocv() #25
  unreachable

9:                                                ; preds = %3
  %10 = shl nuw nsw i64 %1, 2
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #26
  ret ptr %11
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEmRKf(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  %5 = icmp eq i64 %2, 0
  br i1 %5, label %103, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !69
  %9 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !70
  %11 = ptrtoint ptr %8 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = ashr exact i64 %13, 2
  %15 = icmp ult i64 %14, %2
  br i1 %15, label %62, label %16

16:                                               ; preds = %6
  %17 = load float, ptr %3, align 4, !tbaa !71
  %18 = ptrtoint ptr %1 to i64
  %19 = sub i64 %12, %18
  %20 = ashr exact i64 %19, 2
  %21 = icmp ugt i64 %20, %2
  br i1 %21, label %22, label %41

22:                                               ; preds = %16
  %23 = sub i64 0, %2
  %24 = getelementptr inbounds float, ptr %10, i64 %23
  %25 = shl i64 %2, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %10, ptr nonnull align 4 %24, i64 %25, i1 false)
  %26 = load ptr, ptr %9, align 8, !tbaa !64
  %27 = getelementptr inbounds float, ptr %26, i64 %2
  store ptr %27, ptr %9, align 8, !tbaa !64
  %28 = icmp eq ptr %24, %1
  br i1 %28, label %35, label %29

29:                                               ; preds = %22
  %30 = ptrtoint ptr %24 to i64
  %31 = sub i64 %30, %18
  %32 = ashr exact i64 %31, 2
  %33 = sub nsw i64 0, %32
  %34 = getelementptr inbounds float, ptr %10, i64 %33
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %34, ptr align 4 %1, i64 %31, i1 false)
  br label %35

35:                                               ; preds = %22, %29
  %36 = getelementptr inbounds float, ptr %1, i64 %2
  br label %37

37:                                               ; preds = %35, %37
  %38 = phi ptr [ %39, %37 ], [ %1, %35 ]
  store float %17, ptr %38, align 4, !tbaa !71
  %39 = getelementptr inbounds float, ptr %38, i64 1
  %40 = icmp eq ptr %39, %36
  br i1 %40, label %103, label %37, !llvm.loop !84

41:                                               ; preds = %16
  %42 = icmp eq i64 %20, %2
  br i1 %42, label %50, label %43

43:                                               ; preds = %41
  %44 = sub i64 %2, %20
  %45 = getelementptr inbounds float, ptr %10, i64 %44
  br label %46

46:                                               ; preds = %43, %46
  %47 = phi ptr [ %48, %46 ], [ %10, %43 ]
  store float %17, ptr %47, align 4, !tbaa !71
  %48 = getelementptr inbounds float, ptr %47, i64 1
  %49 = icmp eq ptr %48, %45
  br i1 %49, label %50, label %46, !llvm.loop !84

50:                                               ; preds = %46, %41
  %51 = phi ptr [ %10, %41 ], [ %45, %46 ]
  store ptr %51, ptr %9, align 8, !tbaa !64
  %52 = icmp eq ptr %10, %1
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %51, ptr align 4 %1, i64 %19, i1 false)
  br label %54

54:                                               ; preds = %53, %50
  %55 = load ptr, ptr %9, align 8, !tbaa !64
  %56 = getelementptr inbounds i8, ptr %55, i64 %19
  store ptr %56, ptr %9, align 8, !tbaa !64
  %57 = icmp eq ptr %10, %1
  br i1 %57, label %103, label %58

58:                                               ; preds = %54, %58
  %59 = phi ptr [ %60, %58 ], [ %1, %54 ]
  store float %17, ptr %59, align 4, !tbaa !71
  %60 = getelementptr inbounds float, ptr %59, i64 1
  %61 = icmp eq ptr %60, %10
  br i1 %61, label %103, label %58, !llvm.loop !84

62:                                               ; preds = %6
  %63 = load ptr, ptr %0, align 8, !tbaa !68
  %64 = ptrtoint ptr %63 to i64
  %65 = sub i64 %12, %64
  %66 = ashr exact i64 %65, 2
  %67 = sub nsw i64 2305843009213693951, %66
  %68 = icmp ult i64 %67, %2
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #25
  unreachable

70:                                               ; preds = %62
  %71 = tail call i64 @llvm.umax.i64(i64 %66, i64 %2)
  %72 = add i64 %71, %66
  %73 = icmp ult i64 %72, %66
  %74 = tail call i64 @llvm.umin.i64(i64 %72, i64 2305843009213693951)
  %75 = select i1 %73, i64 2305843009213693951, i64 %74
  %76 = ptrtoint ptr %1 to i64
  %77 = sub i64 %76, %64
  %78 = icmp eq i64 %75, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %70
  %80 = tail call noundef ptr @_ZNSt15__new_allocatorIfE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %75, ptr noundef null)
  br label %81

81:                                               ; preds = %70, %79
  %82 = phi ptr [ %80, %79 ], [ null, %70 ]
  %83 = getelementptr inbounds i8, ptr %82, i64 %77
  %84 = getelementptr inbounds float, ptr %83, i64 %2
  %85 = load float, ptr %3, align 4, !tbaa !71
  br label %86

86:                                               ; preds = %81, %86
  %87 = phi ptr [ %88, %86 ], [ %83, %81 ]
  store float %85, ptr %87, align 4, !tbaa !71
  %88 = getelementptr inbounds float, ptr %87, i64 1
  %89 = icmp eq ptr %88, %84
  br i1 %89, label %90, label %86, !llvm.loop !84

90:                                               ; preds = %86
  %91 = icmp eq ptr %63, %1
  br i1 %91, label %93, label %92

92:                                               ; preds = %90
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %82, ptr align 4 %63, i64 %77, i1 false)
  br label %93

93:                                               ; preds = %92, %90
  %94 = sub i64 %12, %76
  %95 = icmp eq ptr %10, %1
  br i1 %95, label %97, label %96

96:                                               ; preds = %93
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %84, ptr align 4 %1, i64 %94, i1 false)
  br label %97

97:                                               ; preds = %93, %96
  %98 = getelementptr inbounds i8, ptr %84, i64 %94
  %99 = icmp eq ptr %63, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %97
  tail call void @_ZdlPv(ptr noundef %63) #24
  br label %101

101:                                              ; preds = %97, %100
  store ptr %82, ptr %0, align 8, !tbaa !68
  store ptr %98, ptr %9, align 8, !tbaa !64
  %102 = getelementptr inbounds float, ptr %82, i64 %75
  store ptr %102, ptr %7, align 8, !tbaa !69
  br label %103

103:                                              ; preds = %58, %37, %54, %101, %4
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !201 {
  %5 = icmp eq i64 %2, 0
  br i1 %5, label %104, label %6, !prof !202

6:                                                ; preds = %4
  %7 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !94
  %9 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !70
  %11 = ptrtoint ptr %8 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = ashr exact i64 %13, 3
  %15 = icmp ult i64 %14, %2
  br i1 %15, label %62, label %16, !prof !203

16:                                               ; preds = %6
  %17 = load double, ptr %3, align 8, !tbaa !98
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
  %26 = load ptr, ptr %9, align 8, !tbaa !89
  %27 = getelementptr inbounds double, ptr %26, i64 %2
  store ptr %27, ptr %9, align 8, !tbaa !89
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
  store double %17, ptr %38, align 8, !tbaa !98
  %39 = getelementptr inbounds double, ptr %38, i64 1
  %40 = icmp eq ptr %39, %36
  br i1 %40, label %104, label %37, !llvm.loop !130

41:                                               ; preds = %16
  %42 = icmp eq i64 %20, %2
  br i1 %42, label %50, label %43

43:                                               ; preds = %41
  %44 = sub i64 %2, %20
  %45 = getelementptr inbounds double, ptr %10, i64 %44
  br label %46

46:                                               ; preds = %43, %46
  %47 = phi ptr [ %48, %46 ], [ %10, %43 ]
  store double %17, ptr %47, align 8, !tbaa !98
  %48 = getelementptr inbounds double, ptr %47, i64 1
  %49 = icmp eq ptr %48, %45
  br i1 %49, label %50, label %46, !llvm.loop !130

50:                                               ; preds = %46, %41
  %51 = phi ptr [ %10, %41 ], [ %45, %46 ]
  store ptr %51, ptr %9, align 8, !tbaa !89
  %52 = icmp eq ptr %10, %1
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %51, ptr align 8 %1, i64 %19, i1 false)
  br label %54

54:                                               ; preds = %53, %50
  %55 = load ptr, ptr %9, align 8, !tbaa !89
  %56 = getelementptr inbounds i8, ptr %55, i64 %19
  store ptr %56, ptr %9, align 8, !tbaa !89
  %57 = icmp eq ptr %10, %1
  br i1 %57, label %104, label %58

58:                                               ; preds = %54, %58
  %59 = phi ptr [ %60, %58 ], [ %1, %54 ]
  store double %17, ptr %59, align 8, !tbaa !98
  %60 = getelementptr inbounds double, ptr %59, i64 1
  %61 = icmp eq ptr %60, %10
  br i1 %61, label %104, label %58, !llvm.loop !130

62:                                               ; preds = %6
  %63 = load ptr, ptr %0, align 8, !tbaa !91
  %64 = ptrtoint ptr %63 to i64
  %65 = sub i64 %12, %64
  %66 = ashr exact i64 %65, 3
  %67 = sub nsw i64 1152921504606846975, %66
  %68 = icmp ult i64 %67, %2
  br i1 %68, label %69, label %70, !prof !202

69:                                               ; preds = %62
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #25
  unreachable

70:                                               ; preds = %62
  %71 = tail call i64 @llvm.umax.i64(i64 %66, i64 %2)
  %72 = add i64 %71, %66
  %73 = icmp ult i64 %72, %66
  %74 = tail call i64 @llvm.umin.i64(i64 %72, i64 1152921504606846975)
  %75 = select i1 %73, i64 1152921504606846975, i64 %74, !prof !202
  %76 = ptrtoint ptr %1 to i64
  %77 = sub i64 %76, %64
  %78 = icmp eq i64 %75, 0
  br i1 %78, label %82, label %79, !prof !202

79:                                               ; preds = %70
  %80 = shl nuw nsw i64 %75, 3
  %81 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %80) #26
  br label %82

82:                                               ; preds = %70, %79
  %83 = phi ptr [ %81, %79 ], [ null, %70 ]
  %84 = getelementptr inbounds i8, ptr %83, i64 %77
  %85 = getelementptr inbounds double, ptr %84, i64 %2
  %86 = load double, ptr %3, align 8, !tbaa !98
  br label %87

87:                                               ; preds = %82, %87
  %88 = phi ptr [ %89, %87 ], [ %84, %82 ]
  store double %86, ptr %88, align 8, !tbaa !98
  %89 = getelementptr inbounds double, ptr %88, i64 1
  %90 = icmp eq ptr %89, %85
  br i1 %90, label %91, label %87, !prof !204, !llvm.loop !130

91:                                               ; preds = %87
  %92 = icmp eq ptr %63, %1
  br i1 %92, label %94, label %93, !prof !205

93:                                               ; preds = %91
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %83, ptr align 8 %63, i64 %77, i1 false), !prof !206
  br label %94

94:                                               ; preds = %93, %91
  %95 = sub i64 %12, %76
  %96 = icmp eq ptr %10, %1
  br i1 %96, label %98, label %97, !prof !203

97:                                               ; preds = %94
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %85, ptr align 8 %1, i64 %95, i1 false)
  br label %98

98:                                               ; preds = %94, %97
  %99 = getelementptr inbounds i8, ptr %85, i64 %95
  %100 = icmp eq ptr %63, null
  br i1 %100, label %102, label %101, !prof !205

101:                                              ; preds = %98
  tail call void @_ZdlPv(ptr noundef %63) #24
  br label %102

102:                                              ; preds = %98, %101
  store ptr %83, ptr %0, align 8, !tbaa !91
  store ptr %99, ptr %9, align 8, !tbaa !89
  %103 = getelementptr inbounds double, ptr %83, i64 %75
  store ptr %103, ptr %7, align 8, !tbaa !94
  br label %104

104:                                              ; preds = %58, %37, %54, %102, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIfSaIfEE19_M_range_initializeIN9__gnu_cxx17__normal_iteratorIPfS1_EEEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat align 2 !prof !63 {
  %4 = ptrtoint ptr %2 to i64
  %5 = ptrtoint ptr %1 to i64
  %6 = sub i64 %4, %5
  %7 = ashr exact i64 %6, 2
  %8 = icmp ugt i64 %7, 2305843009213693951
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #25
  unreachable

10:                                               ; preds = %3
  %11 = icmp eq ptr %2, %1
  br i1 %11, label %14, label %12

12:                                               ; preds = %10
  %13 = tail call noundef ptr @_ZNSt15__new_allocatorIfE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %7, ptr noundef null)
  br label %14

14:                                               ; preds = %10, %12
  %15 = phi ptr [ %13, %12 ], [ null, %10 ]
  store ptr %15, ptr %0, align 8, !tbaa !68
  %16 = getelementptr inbounds float, ptr %15, i64 %7
  %17 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %16, ptr %17, align 8, !tbaa !69
  br i1 %11, label %19, label %18

18:                                               ; preds = %14
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %15, ptr align 4 %1, i64 %6, i1 false)
  br label %19

19:                                               ; preds = %14, %18
  %20 = getelementptr inbounds i8, ptr %15, i64 %6
  %21 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %20, ptr %21, align 8, !tbaa !64
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIfSaIfEE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPfS1_EEEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  %4 = ptrtoint ptr %2 to i64
  %5 = ptrtoint ptr %1 to i64
  %6 = sub i64 %4, %5
  %7 = ashr exact i64 %6, 2
  %8 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !69
  %10 = load ptr, ptr %0, align 8, !tbaa !68
  %11 = ptrtoint ptr %9 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = icmp ugt i64 %6, %13
  br i1 %14, label %15, label %29

15:                                               ; preds = %3
  %16 = icmp ugt i64 %7, 2305843009213693951
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #25
  unreachable

18:                                               ; preds = %15
  %19 = tail call noundef ptr @_ZNSt15__new_allocatorIfE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %7, ptr noundef null)
  %20 = icmp eq ptr %2, %1
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %19, ptr align 4 %1, i64 %6, i1 false)
  br label %22

22:                                               ; preds = %18, %21
  %23 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %24 = load ptr, ptr %0, align 8, !tbaa !68
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  tail call void @_ZdlPv(ptr noundef %24) #24
  br label %27

27:                                               ; preds = %22, %26
  store ptr %19, ptr %0, align 8, !tbaa !68
  %28 = getelementptr inbounds i8, ptr %19, i64 %6
  store ptr %28, ptr %23, align 8, !tbaa !64
  store ptr %28, ptr %8, align 8, !tbaa !69
  br label %55

29:                                               ; preds = %3
  %30 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !64
  %32 = ptrtoint ptr %31 to i64
  %33 = sub i64 %32, %12
  %34 = icmp ult i64 %33, %6
  br i1 %34, label %43, label %35

35:                                               ; preds = %29
  %36 = icmp eq ptr %2, %1
  br i1 %36, label %38, label %37

37:                                               ; preds = %35
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %10, ptr align 4 %1, i64 %6, i1 false)
  br label %38

38:                                               ; preds = %35, %37
  %39 = getelementptr inbounds i8, ptr %10, i64 %6
  %40 = load ptr, ptr %30, align 8, !tbaa !64
  %41 = icmp eq ptr %40, %39
  br i1 %41, label %55, label %42

42:                                               ; preds = %38
  store ptr %39, ptr %30, align 8, !tbaa !64
  br label %55

43:                                               ; preds = %29
  %44 = getelementptr inbounds i8, ptr %1, i64 %33
  %45 = ptrtoint ptr %44 to i64
  %46 = icmp eq ptr %31, %10
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %10, ptr align 4 %1, i64 %33, i1 false)
  br label %48

48:                                               ; preds = %43, %47
  %49 = load ptr, ptr %30, align 8, !tbaa !64
  %50 = sub i64 %4, %45
  %51 = icmp eq ptr %44, %2
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %49, ptr align 4 %44, i64 %50, i1 false)
  br label %53

53:                                               ; preds = %48, %52
  %54 = getelementptr inbounds i8, ptr %49, i64 %50
  store ptr %54, ptr %30, align 8, !tbaa !64
  br label %55

55:                                               ; preds = %42, %38, %53, %27
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEE19_M_range_initializeIN9__gnu_cxx17__normal_iteratorIPfS_IfSaIfEEEEEEvT_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  %4 = ptrtoint ptr %2 to i64
  %5 = ptrtoint ptr %1 to i64
  %6 = sub i64 %4, %5
  %7 = ashr exact i64 %6, 2
  %8 = icmp ugt i64 %7, 1152921504606846975
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #25
  unreachable

10:                                               ; preds = %3
  %11 = icmp eq ptr %2, %1
  br i1 %11, label %14, label %12

12:                                               ; preds = %10
  %13 = tail call noundef ptr @_ZNSt15__new_allocatorIdE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %7, ptr noundef null)
  br label %14

14:                                               ; preds = %10, %12
  %15 = phi ptr [ %13, %12 ], [ null, %10 ]
  store ptr %15, ptr %0, align 8, !tbaa !91
  %16 = getelementptr inbounds double, ptr %15, i64 %7
  %17 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %16, ptr %17, align 8, !tbaa !94
  %18 = icmp eq ptr %2, %1
  br i1 %18, label %29, label %19

19:                                               ; preds = %14, %19
  %20 = phi i64 [ %27, %19 ], [ %7, %14 ]
  %21 = phi ptr [ %26, %19 ], [ %15, %14 ]
  %22 = phi ptr [ %25, %19 ], [ %1, %14 ]
  %23 = load float, ptr %22, align 4, !tbaa !71
  %24 = fpext float %23 to double
  store double %24, ptr %21, align 8, !tbaa !98
  %25 = getelementptr inbounds float, ptr %22, i64 1
  %26 = getelementptr inbounds double, ptr %21, i64 1
  %27 = add nsw i64 %20, -1
  %28 = icmp sgt i64 %20, 1
  br i1 %28, label %19, label %29, !llvm.loop !207

29:                                               ; preds = %19, %14
  %30 = phi ptr [ %15, %14 ], [ %26, %19 ]
  %31 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %30, ptr %31, align 8, !tbaa !89
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIfSaIfEE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPdS_IdSaIdEEEEEEvT_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  %4 = ptrtoint ptr %2 to i64
  %5 = ptrtoint ptr %1 to i64
  %6 = sub i64 %4, %5
  %7 = ashr exact i64 %6, 3
  %8 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !69
  %10 = load ptr, ptr %0, align 8, !tbaa !68
  %11 = ptrtoint ptr %9 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = ashr exact i64 %13, 2
  %15 = icmp ugt i64 %7, %14
  br i1 %15, label %16, label %38

16:                                               ; preds = %3
  %17 = icmp ugt i64 %7, 2305843009213693951
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #25
  unreachable

19:                                               ; preds = %16
  %20 = tail call noundef ptr @_ZNSt15__new_allocatorIfE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %7, ptr noundef null)
  br label %21

21:                                               ; preds = %19, %21
  %22 = phi i64 [ %29, %21 ], [ %7, %19 ]
  %23 = phi ptr [ %28, %21 ], [ %20, %19 ]
  %24 = phi ptr [ %27, %21 ], [ %1, %19 ]
  %25 = load double, ptr %24, align 8, !tbaa !98
  %26 = fptrunc double %25 to float
  store float %26, ptr %23, align 4, !tbaa !71
  %27 = getelementptr inbounds double, ptr %24, i64 1
  %28 = getelementptr inbounds float, ptr %23, i64 1
  %29 = add nsw i64 %22, -1
  %30 = icmp sgt i64 %22, 1
  br i1 %30, label %21, label %31, !llvm.loop !208

31:                                               ; preds = %21
  %32 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %33 = load ptr, ptr %0, align 8, !tbaa !68
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  tail call void @_ZdlPv(ptr noundef %33) #24
  br label %36

36:                                               ; preds = %31, %35
  store ptr %20, ptr %0, align 8, !tbaa !68
  %37 = getelementptr inbounds float, ptr %20, i64 %7
  store ptr %37, ptr %32, align 8, !tbaa !64
  store ptr %37, ptr %8, align 8, !tbaa !69
  br label %92

38:                                               ; preds = %3
  %39 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !64
  %41 = ptrtoint ptr %40 to i64
  %42 = sub i64 %41, %12
  %43 = ashr exact i64 %42, 2
  %44 = icmp ult i64 %43, %7
  br i1 %44, label %61, label %45

45:                                               ; preds = %38
  %46 = icmp sgt i64 %7, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %45, %47
  %48 = phi i64 [ %55, %47 ], [ %7, %45 ]
  %49 = phi ptr [ %54, %47 ], [ %10, %45 ]
  %50 = phi ptr [ %53, %47 ], [ %1, %45 ]
  %51 = load double, ptr %50, align 8, !tbaa !98
  %52 = fptrunc double %51 to float
  store float %52, ptr %49, align 4, !tbaa !71
  %53 = getelementptr inbounds double, ptr %50, i64 1
  %54 = getelementptr inbounds float, ptr %49, i64 1
  %55 = add nsw i64 %48, -1
  %56 = icmp sgt i64 %48, 1
  br i1 %56, label %47, label %57, !llvm.loop !208

57:                                               ; preds = %47, %45
  %58 = phi ptr [ %10, %45 ], [ %54, %47 ]
  %59 = icmp eq ptr %40, %58
  br i1 %59, label %92, label %60

60:                                               ; preds = %57
  store ptr %58, ptr %39, align 8, !tbaa !64
  br label %92

61:                                               ; preds = %38
  %62 = getelementptr inbounds double, ptr %1, i64 %43
  %63 = ptrtoint ptr %62 to i64
  %64 = ashr exact i64 %42, 2
  %65 = icmp sgt i64 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %61, %66
  %67 = phi i64 [ %74, %66 ], [ %64, %61 ]
  %68 = phi ptr [ %73, %66 ], [ %10, %61 ]
  %69 = phi ptr [ %72, %66 ], [ %1, %61 ]
  %70 = load double, ptr %69, align 8, !tbaa !98
  %71 = fptrunc double %70 to float
  store float %71, ptr %68, align 4, !tbaa !71
  %72 = getelementptr inbounds double, ptr %69, i64 1
  %73 = getelementptr inbounds float, ptr %68, i64 1
  %74 = add nsw i64 %67, -1
  %75 = icmp sgt i64 %67, 1
  br i1 %75, label %66, label %76, !llvm.loop !208

76:                                               ; preds = %66, %61
  %77 = sub i64 %4, %63
  %78 = ashr exact i64 %77, 3
  %79 = icmp sgt i64 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %76, %80
  %81 = phi i64 [ %88, %80 ], [ %78, %76 ]
  %82 = phi ptr [ %87, %80 ], [ %40, %76 ]
  %83 = phi ptr [ %86, %80 ], [ %62, %76 ]
  %84 = load double, ptr %83, align 8, !tbaa !98
  %85 = fptrunc double %84 to float
  store float %85, ptr %82, align 4, !tbaa !71
  %86 = getelementptr inbounds double, ptr %83, i64 1
  %87 = getelementptr inbounds float, ptr %82, i64 1
  %88 = add nsw i64 %81, -1
  %89 = icmp sgt i64 %81, 1
  br i1 %89, label %80, label %90, !llvm.loop !208

90:                                               ; preds = %80, %76
  %91 = phi ptr [ %40, %76 ], [ %87, %80 ]
  store ptr %91, ptr %39, align 8, !tbaa !64
  br label %92

92:                                               ; preds = %60, %57, %90, %36
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIfSaIfEE19_M_range_initializeIN9__gnu_cxx17__normal_iteratorIPdS_IdSaIdEEEEEEvT_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat align 2 !prof !63 {
  %4 = ptrtoint ptr %2 to i64
  %5 = ptrtoint ptr %1 to i64
  %6 = sub i64 %4, %5
  %7 = ashr exact i64 %6, 3
  %8 = icmp ugt i64 %7, 2305843009213693951
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #25
  unreachable

10:                                               ; preds = %3
  %11 = icmp eq ptr %2, %1
  br i1 %11, label %14, label %12

12:                                               ; preds = %10
  %13 = tail call noundef ptr @_ZNSt15__new_allocatorIfE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %7, ptr noundef null)
  br label %14

14:                                               ; preds = %10, %12
  %15 = phi ptr [ %13, %12 ], [ null, %10 ]
  store ptr %15, ptr %0, align 8, !tbaa !68
  %16 = getelementptr inbounds float, ptr %15, i64 %7
  %17 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %16, ptr %17, align 8, !tbaa !69
  %18 = icmp eq ptr %2, %1
  br i1 %18, label %29, label %19

19:                                               ; preds = %14, %19
  %20 = phi i64 [ %27, %19 ], [ %7, %14 ]
  %21 = phi ptr [ %26, %19 ], [ %15, %14 ]
  %22 = phi ptr [ %25, %19 ], [ %1, %14 ]
  %23 = load double, ptr %22, align 8, !tbaa !98
  %24 = fptrunc double %23 to float
  store float %24, ptr %21, align 4, !tbaa !71
  %25 = getelementptr inbounds double, ptr %22, i64 1
  %26 = getelementptr inbounds float, ptr %21, i64 1
  %27 = add nsw i64 %20, -1
  %28 = icmp sgt i64 %20, 1
  br i1 %28, label %19, label %29, !llvm.loop !208

29:                                               ; preds = %19, %14
  %30 = phi ptr [ %15, %14 ], [ %26, %19 ]
  %31 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %30, ptr %31, align 8, !tbaa !64
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPfS_IfSaIfEEEEEEvT_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  %4 = ptrtoint ptr %2 to i64
  %5 = ptrtoint ptr %1 to i64
  %6 = sub i64 %4, %5
  %7 = ashr exact i64 %6, 2
  %8 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !94
  %10 = load ptr, ptr %0, align 8, !tbaa !91
  %11 = ptrtoint ptr %9 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = ashr exact i64 %13, 3
  %15 = icmp ugt i64 %7, %14
  br i1 %15, label %16, label %38

16:                                               ; preds = %3
  %17 = icmp ugt i64 %7, 1152921504606846975
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #25
  unreachable

19:                                               ; preds = %16
  %20 = tail call noundef ptr @_ZNSt15__new_allocatorIdE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %7, ptr noundef null)
  br label %21

21:                                               ; preds = %19, %21
  %22 = phi i64 [ %29, %21 ], [ %7, %19 ]
  %23 = phi ptr [ %28, %21 ], [ %20, %19 ]
  %24 = phi ptr [ %27, %21 ], [ %1, %19 ]
  %25 = load float, ptr %24, align 4, !tbaa !71
  %26 = fpext float %25 to double
  store double %26, ptr %23, align 8, !tbaa !98
  %27 = getelementptr inbounds float, ptr %24, i64 1
  %28 = getelementptr inbounds double, ptr %23, i64 1
  %29 = add nsw i64 %22, -1
  %30 = icmp sgt i64 %22, 1
  br i1 %30, label %21, label %31, !llvm.loop !207

31:                                               ; preds = %21
  %32 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %33 = load ptr, ptr %0, align 8, !tbaa !91
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  tail call void @_ZdlPv(ptr noundef %33) #24
  br label %36

36:                                               ; preds = %31, %35
  store ptr %20, ptr %0, align 8, !tbaa !91
  %37 = getelementptr inbounds double, ptr %20, i64 %7
  store ptr %37, ptr %32, align 8, !tbaa !89
  store ptr %37, ptr %8, align 8, !tbaa !94
  br label %92

38:                                               ; preds = %3
  %39 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !89
  %41 = ptrtoint ptr %40 to i64
  %42 = sub i64 %41, %12
  %43 = ashr exact i64 %42, 3
  %44 = icmp ult i64 %43, %7
  br i1 %44, label %61, label %45

45:                                               ; preds = %38
  %46 = icmp sgt i64 %7, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %45, %47
  %48 = phi i64 [ %55, %47 ], [ %7, %45 ]
  %49 = phi ptr [ %54, %47 ], [ %10, %45 ]
  %50 = phi ptr [ %53, %47 ], [ %1, %45 ]
  %51 = load float, ptr %50, align 4, !tbaa !71
  %52 = fpext float %51 to double
  store double %52, ptr %49, align 8, !tbaa !98
  %53 = getelementptr inbounds float, ptr %50, i64 1
  %54 = getelementptr inbounds double, ptr %49, i64 1
  %55 = add nsw i64 %48, -1
  %56 = icmp sgt i64 %48, 1
  br i1 %56, label %47, label %57, !llvm.loop !207

57:                                               ; preds = %47, %45
  %58 = phi ptr [ %10, %45 ], [ %54, %47 ]
  %59 = icmp eq ptr %40, %58
  br i1 %59, label %92, label %60

60:                                               ; preds = %57
  store ptr %58, ptr %39, align 8, !tbaa !89
  br label %92

61:                                               ; preds = %38
  %62 = getelementptr inbounds float, ptr %1, i64 %43
  %63 = ptrtoint ptr %62 to i64
  %64 = ashr exact i64 %42, 3
  %65 = icmp sgt i64 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %61, %66
  %67 = phi i64 [ %74, %66 ], [ %64, %61 ]
  %68 = phi ptr [ %73, %66 ], [ %10, %61 ]
  %69 = phi ptr [ %72, %66 ], [ %1, %61 ]
  %70 = load float, ptr %69, align 4, !tbaa !71
  %71 = fpext float %70 to double
  store double %71, ptr %68, align 8, !tbaa !98
  %72 = getelementptr inbounds float, ptr %69, i64 1
  %73 = getelementptr inbounds double, ptr %68, i64 1
  %74 = add nsw i64 %67, -1
  %75 = icmp sgt i64 %67, 1
  br i1 %75, label %66, label %76, !llvm.loop !207

76:                                               ; preds = %66, %61
  %77 = sub i64 %4, %63
  %78 = ashr exact i64 %77, 2
  %79 = icmp sgt i64 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %76, %80
  %81 = phi i64 [ %88, %80 ], [ %78, %76 ]
  %82 = phi ptr [ %87, %80 ], [ %40, %76 ]
  %83 = phi ptr [ %86, %80 ], [ %62, %76 ]
  %84 = load float, ptr %83, align 4, !tbaa !71
  %85 = fpext float %84 to double
  store double %85, ptr %82, align 8, !tbaa !98
  %86 = getelementptr inbounds float, ptr %83, i64 1
  %87 = getelementptr inbounds double, ptr %82, i64 1
  %88 = add nsw i64 %81, -1
  %89 = icmp sgt i64 %81, 1
  br i1 %89, label %80, label %90, !llvm.loop !207

90:                                               ; preds = %80, %76
  %91 = phi ptr [ %40, %76 ], [ %87, %80 ]
  store ptr %91, ptr %39, align 8, !tbaa !89
  br label %92

92:                                               ; preds = %60, %57, %90, %36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIfEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %5 = icmp eq i64 %1, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %4
  %7 = tail call noundef ptr @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIfEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null)
  br label %8

8:                                                ; preds = %4, %6
  %9 = phi ptr [ %7, %6 ], [ null, %4 ]
  %10 = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN6dealii11Polynomials10PolynomialIfEEPS3_ET0_T_S8_S7_(ptr noundef %2, ptr noundef %3, ptr noundef %9)
          to label %11 unwind label %12

11:                                               ; preds = %8
  ret ptr %9

12:                                               ; preds = %8
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  %15 = tail call ptr @__cxa_begin_catch(ptr %14) #23
  %16 = icmp eq ptr %9, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  tail call void @_ZdlPv(ptr noundef %9) #24
  br label %18

18:                                               ; preds = %17, %12
  invoke void @__cxa_rethrow() #25
          to label %25 unwind label %19

19:                                               ; preds = %18
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
  tail call void @__clang_call_terminate(ptr %24) #27
  unreachable

25:                                               ; preds = %18
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIfEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 !prof !63 {
  %4 = icmp ugt i64 %1, 96076792050570581
  br i1 %4, label %5, label %9, !prof !198

5:                                                ; preds = %3
  %6 = icmp ugt i64 %1, 192153584101141162
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

8:                                                ; preds = %5
  tail call void @_ZSt17__throw_bad_allocv() #25
  unreachable

9:                                                ; preds = %3
  %10 = mul nuw i64 %1, 96
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #26
  ret ptr %11
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIPKN6dealii11Polynomials10PolynomialIfEEPS3_ET0_T_S8_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %31, label %5

5:                                                ; preds = %3, %13
  %6 = phi ptr [ %15, %13 ], [ %2, %3 ]
  %7 = phi ptr [ %14, %13 ], [ %0, %3 ]
  invoke void @_ZN6dealii11SubscriptorC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(72) %7)
          to label %8 unwind label %17

8:                                                ; preds = %5
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials10PolynomialIfEE, i64 0, inrange i32 0, i64 2), ptr %6, align 8, !tbaa !60
  %9 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %6, i64 0, i32 1
  %10 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %7, i64 0, i32 1
  invoke void @_ZNSt6vectorIfSaIfEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %13 unwind label %11

11:                                               ; preds = %8
  %12 = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %6) #23
  br label %19

13:                                               ; preds = %8
  %14 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %7, i64 1
  %15 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %6, i64 1
  %16 = icmp eq ptr %14, %1
  br i1 %16, label %31, label %5, !llvm.loop !209

17:                                               ; preds = %5
  %18 = landingpad { ptr, i32 }
          catch ptr null
  br label %19

19:                                               ; preds = %11, %17
  %20 = phi { ptr, i32 } [ %18, %17 ], [ %12, %11 ]
  %21 = extractvalue { ptr, i32 } %20, 0
  %22 = tail call ptr @__cxa_begin_catch(ptr %21) #23
  %23 = icmp eq ptr %6, %2
  br i1 %23, label %30, label %24

24:                                               ; preds = %19, %24
  %25 = phi ptr [ %28, %24 ], [ %2, %19 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !60
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(96) %25) #23
  %28 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %25, i64 1
  %29 = icmp eq ptr %28, %6
  br i1 %29, label %30, label %24, !llvm.loop !160

30:                                               ; preds = %24, %19
  invoke void @__cxa_rethrow() #25
          to label %39 unwind label %33

31:                                               ; preds = %13, %3
  %32 = phi ptr [ %2, %3 ], [ %15, %13 ]
  ret ptr %32

33:                                               ; preds = %30
  %34 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %35 unwind label %36

35:                                               ; preds = %33
  resume { ptr, i32 } %34

36:                                               ; preds = %33
  %37 = landingpad { ptr, i32 }
          catch ptr null
  %38 = extractvalue { ptr, i32 } %37, 0
  tail call void @__clang_call_terminate(ptr %38) #27
  unreachable

39:                                               ; preds = %30
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIfEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(96) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<float>, std::allocator<dealii::Polynomials::Polynomial<float>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !157
  %6 = load ptr, ptr %0, align 8, !tbaa !70
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = icmp eq i64 %9, 9223372036854775776
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #25
  unreachable

12:                                               ; preds = %3
  %13 = sdiv exact i64 %9, 96
  %14 = tail call i64 @llvm.umax.i64(i64 %13, i64 1)
  %15 = add i64 %14, %13
  %16 = icmp ult i64 %15, %13
  %17 = tail call i64 @llvm.umin.i64(i64 %15, i64 96076792050570581)
  %18 = select i1 %16, i64 96076792050570581, i64 %17
  %19 = ptrtoint ptr %1 to i64
  %20 = sub i64 %19, %8
  %21 = sdiv exact i64 %20, 96
  %22 = icmp eq i64 %18, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %12
  %24 = tail call noundef ptr @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIfEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %18, ptr noundef null)
  br label %25

25:                                               ; preds = %12, %23
  %26 = phi ptr [ %24, %23 ], [ null, %12 ]
  %27 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %26, i64 %21
  invoke void @_ZN6dealii11SubscriptorC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %27, ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %28 unwind label %56

28:                                               ; preds = %25
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials10PolynomialIfEE, i64 0, inrange i32 0, i64 2), ptr %27, align 8, !tbaa !60
  %29 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %26, i64 %21, i32 1
  %30 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %2, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !68
  store ptr %31, ptr %29, align 8, !tbaa !68
  %32 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %26, i64 %21, i32 1, i32 0, i32 0, i32 0, i32 1
  %33 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %2, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !64
  store ptr %34, ptr %32, align 8, !tbaa !64
  %35 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %26, i64 %21, i32 1, i32 0, i32 0, i32 0, i32 2
  %36 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %2, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !69
  store ptr %37, ptr %35, align 8, !tbaa !69
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %30, i8 0, i64 24, i1 false)
  %38 = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN6dealii11Polynomials10PolynomialIfEEPS3_ET0_T_S8_S7_(ptr noundef %6, ptr noundef %1, ptr noundef %26)
          to label %39 unwind label %56

39:                                               ; preds = %28
  %40 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %38, i64 1
  %41 = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN6dealii11Polynomials10PolynomialIfEEPS3_ET0_T_S8_S7_(ptr noundef %1, ptr noundef %5, ptr noundef nonnull %40)
          to label %42 unwind label %56

42:                                               ; preds = %39
  %43 = icmp eq ptr %6, %5
  br i1 %43, label %50, label %44

44:                                               ; preds = %42, %44
  %45 = phi ptr [ %48, %44 ], [ %6, %42 ]
  %46 = load ptr, ptr %45, align 8, !tbaa !60
  %47 = load ptr, ptr %46, align 8
  tail call void %47(ptr noundef nonnull align 8 dereferenceable(96) %45) #23
  %48 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %45, i64 1
  %49 = icmp eq ptr %48, %5
  br i1 %49, label %50, label %44, !llvm.loop !160

50:                                               ; preds = %44, %42
  %51 = icmp eq ptr %6, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %50
  tail call void @_ZdlPv(ptr noundef %6) #24
  br label %53

53:                                               ; preds = %50, %52
  %54 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<float>, std::allocator<dealii::Polynomials::Polynomial<float>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %26, ptr %0, align 8, !tbaa !159
  store ptr %41, ptr %4, align 8, !tbaa !157
  %55 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %26, i64 %18
  store ptr %55, ptr %54, align 8, !tbaa !155
  ret void

56:                                               ; preds = %39, %28, %25
  %57 = phi ptr [ %26, %25 ], [ null, %28 ], [ %40, %39 ]
  %58 = landingpad { ptr, i32 }
          catch ptr null
  %59 = extractvalue { ptr, i32 } %58, 0
  %60 = tail call ptr @__cxa_begin_catch(ptr %59) #23
  %61 = icmp eq ptr %57, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %56
  %63 = icmp eq ptr %26, %57
  br i1 %63, label %75, label %67

64:                                               ; preds = %56
  %65 = load ptr, ptr %27, align 8, !tbaa !60
  %66 = load ptr, ptr %65, align 8
  tail call void %66(ptr noundef nonnull align 8 dereferenceable(96) %27) #23
  br label %75

67:                                               ; preds = %62, %67
  %68 = phi ptr [ %71, %67 ], [ %26, %62 ]
  %69 = load ptr, ptr %68, align 8, !tbaa !60
  %70 = load ptr, ptr %69, align 8
  tail call void %70(ptr noundef nonnull align 8 dereferenceable(96) %68) #23
  %71 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %68, i64 1
  %72 = icmp eq ptr %71, %57
  br i1 %72, label %75, label %67, !llvm.loop !160

73:                                               ; preds = %78
  %74 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %79 unwind label %80

75:                                               ; preds = %67, %62, %64
  %76 = icmp eq ptr %26, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %75
  tail call void @_ZdlPv(ptr noundef %26) #24
  br label %78

78:                                               ; preds = %77, %75
  invoke void @__cxa_rethrow() #25
          to label %83 unwind label %73

79:                                               ; preds = %73
  resume { ptr, i32 } %74

80:                                               ; preds = %73
  %81 = landingpad { ptr, i32 }
          catch ptr null
  %82 = extractvalue { ptr, i32 } %81, 0
  tail call void @__clang_call_terminate(ptr %82) #27
  unreachable

83:                                               ; preds = %78
  unreachable
}

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_polynomial.cc() #18 section ".text.startup" personality ptr @__gxx_personality_v0 !prof !210 !PGOFuncName !211 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZN6dealii11Polynomials8Legendre22recursive_coefficientsE, i8 0, i64 24, i1 false)
  %1 = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #26
  store ptr %1, ptr @_ZN6dealii11Polynomials8Legendre22recursive_coefficientsE, align 8, !tbaa !184
  store ptr %1, ptr getelementptr inbounds (%"class.std::vector.42", ptr @_ZN6dealii11Polynomials8Legendre22recursive_coefficientsE, i64 0, i32 0, i32 0, i32 0, i32 1), align 8, !tbaa !186
  %2 = getelementptr inbounds ptr, ptr %1, i64 20
  store ptr %2, ptr getelementptr inbounds (%"class.std::vector.42", ptr @_ZN6dealii11Polynomials8Legendre22recursive_coefficientsE, i64 0, i32 0, i32 0, i32 0, i32 2), align 8, !tbaa !199
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %1, i8 0, i64 160, i1 false), !tbaa !70
  store ptr %2, ptr getelementptr inbounds (%"class.std::vector.42", ptr @_ZN6dealii11Polynomials8Legendre22recursive_coefficientsE, i64 0, i32 0, i32 0, i32 0, i32 1), align 8, !tbaa !186
  %3 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EED2Ev, ptr nonnull @_ZN6dealii11Polynomials8Legendre22recursive_coefficientsE, ptr nonnull @__dso_handle) #23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZN6dealii11Polynomials8Legendre20shifted_coefficientsE, i8 0, i64 24, i1 false)
  %4 = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #26
  store ptr %4, ptr @_ZN6dealii11Polynomials8Legendre20shifted_coefficientsE, align 8, !tbaa !184
  store ptr %4, ptr getelementptr inbounds (%"class.std::vector.42", ptr @_ZN6dealii11Polynomials8Legendre20shifted_coefficientsE, i64 0, i32 0, i32 0, i32 0, i32 1), align 8, !tbaa !186
  %5 = getelementptr inbounds ptr, ptr %4, i64 20
  store ptr %5, ptr getelementptr inbounds (%"class.std::vector.42", ptr @_ZN6dealii11Polynomials8Legendre20shifted_coefficientsE, i64 0, i32 0, i32 0, i32 0, i32 2), align 8, !tbaa !199
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %4, i8 0, i64 160, i1 false), !tbaa !70
  store ptr %5, ptr getelementptr inbounds (%"class.std::vector.42", ptr @_ZN6dealii11Polynomials8Legendre20shifted_coefficientsE, i64 0, i32 0, i32 0, i32 0, i32 1), align 8, !tbaa !186
  %6 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EED2Ev, ptr nonnull @_ZN6dealii11Polynomials8Legendre20shifted_coefficientsE, ptr nonnull @__dso_handle) #23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZN6dealii11Polynomials12Hierarchical22recursive_coefficientsE, i8 0, i64 24, i1 false)
  %7 = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #26
  store ptr %7, ptr @_ZN6dealii11Polynomials12Hierarchical22recursive_coefficientsE, align 8, !tbaa !184
  store ptr %7, ptr getelementptr inbounds (%"class.std::vector.42", ptr @_ZN6dealii11Polynomials12Hierarchical22recursive_coefficientsE, i64 0, i32 0, i32 0, i32 0, i32 1), align 8, !tbaa !186
  %8 = getelementptr inbounds ptr, ptr %7, i64 20
  store ptr %8, ptr getelementptr inbounds (%"class.std::vector.42", ptr @_ZN6dealii11Polynomials12Hierarchical22recursive_coefficientsE, i64 0, i32 0, i32 0, i32 0, i32 2), align 8, !tbaa !199
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %7, i8 0, i64 160, i1 false), !tbaa !70
  store ptr %8, ptr getelementptr inbounds (%"class.std::vector.42", ptr @_ZN6dealii11Polynomials12Hierarchical22recursive_coefficientsE, i64 0, i32 0, i32 0, i32 0, i32 1), align 8, !tbaa !186
  %9 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EED2Ev, ptr nonnull @_ZN6dealii11Polynomials12Hierarchical22recursive_coefficientsE, ptr nonnull @__dso_handle) #23
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #22

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #18 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #23 = { nounwind }
attributes #24 = { builtin nounwind }
attributes #25 = { noreturn }
attributes #26 = { builtin allocsize(0) }
attributes #27 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!58}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57}
!35 = !{ptr @_ZN6dealii11Polynomials10PolynomialIdEC2Ev, ptr @_ZN6dealii11SubscriptorC2Ev, i64 3}
!36 = !{ptr @_ZNK6dealii11Polynomials10PolynomialIdE5valueEdRSt6vectorIdSaIdEE, ptr @_Znwm, i64 848812}
!37 = !{ptr @_ZNK6dealii11Polynomials10PolynomialIdE5valueEdRSt6vectorIdSaIdEE, ptr @_ZdlPv, i64 848868}
!38 = !{ptr @_ZN6dealii11Polynomials10PolynomialIdEmLERKS2_, ptr @_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_, i64 6}
!39 = !{ptr @_ZN6dealii11Polynomials10PolynomialIdEmLERKS2_, ptr @_ZNSt6vectorIdSaIdEEaSERKS1_, i64 6}
!40 = !{ptr @_ZN6dealii11Polynomials10PolynomialIdEmLERKS2_, ptr @_ZdlPv, i64 6}
!41 = !{ptr @_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_, ptr @_Znwm, i64 481320}
!42 = !{ptr @_ZNSt6vectorIdSaIdEEaSERKS1_, ptr @_ZNSt15__new_allocatorIdE8allocateEmPKv, i64 12}
!43 = !{ptr @_ZNSt6vectorIdSaIdEEaSERKS1_, ptr @_ZdlPv, i64 6}
!44 = !{ptr @_ZN6dealii11Polynomials19LagrangeEquidistantC2Ejj, ptr @_ZN6dealii11Polynomials19LagrangeEquidistant20compute_coefficientsEjj, i64 6}
!45 = !{ptr @_ZN6dealii11Polynomials19LagrangeEquidistantC2Ejj, ptr @_ZN6dealii11Polynomials10PolynomialIdEC2ERKSt6vectorIdSaIdEE, i64 6}
!46 = !{ptr @_ZN6dealii11Polynomials19LagrangeEquidistantC2Ejj, ptr @_ZdlPv, i64 6}
!47 = !{ptr @_ZN6dealii11Polynomials19LagrangeEquidistant20compute_coefficientsEjj, ptr @_ZNSt6vectorIdSaIdEEC2EmRKS0_, i64 6}
!48 = !{ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2EmRKS3_RKS4_, ptr @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEE8allocateEmPKv, i64 5}
!49 = !{ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2EmRKS3_RKS4_, ptr @_ZSt18__do_uninit_fill_nIPN6dealii11Polynomials10PolynomialIdEEmS3_ET_S5_T0_RKT1_, i64 5}
!50 = !{ptr @_ZN6dealii11Polynomials10PolynomialIdED2Ev, ptr @_ZdlPv, i64 268842}
!51 = !{ptr @_ZN6dealii11Polynomials10PolynomialIdED2Ev, ptr @_ZN6dealii11SubscriptorD2Ev, i64 268842}
!52 = !{ptr @_ZNSt15__new_allocatorIdE8allocateEmPKv, ptr @_Znwm, i64 3349}
!53 = !{ptr @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEE8allocateEmPKv, ptr @_Znwm, i64 179270}
!54 = !{ptr @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd, ptr @_Znwm, i64 5801171}
!55 = !{ptr @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd, ptr @_ZdlPv, i64 48}
!56 = !{ptr @_GLOBAL__sub_I_polynomial.cc, ptr @_Znwm, i64 3}
!57 = !{ptr @_GLOBAL__sub_I_polynomial.cc, ptr @__cxa_atexit, i64 3}
!58 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!59 = !{!"instr_prof_hash_mismatch"}
!60 = !{!61, !61, i64 0}
!61 = !{!"vtable pointer", !62, i64 0}
!62 = !{!"Simple C++ TBAA"}
!63 = !{!"function_entry_count", i64 0}
!64 = !{!65, !66, i64 8}
!65 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !66, i64 0, !66, i64 8, !66, i64 16}
!66 = !{!"any pointer", !67, i64 0}
!67 = !{!"omnipotent char", !62, i64 0}
!68 = !{!65, !66, i64 0}
!69 = !{!65, !66, i64 16}
!70 = !{!66, !66, i64 0}
!71 = !{!72, !72, i64 0}
!72 = !{!"float", !67, i64 0}
!73 = distinct !{!73, !74, !75}
!74 = !{!"llvm.loop.mustprogress"}
!75 = !{!"llvm.loop.unroll.disable"}
!76 = distinct !{!76, !74, !75}
!77 = distinct !{!77, !74, !75}
!78 = distinct !{!78, !74, !75}
!79 = distinct !{!79, !74, !75}
!80 = distinct !{!80, !74, !75}
!81 = distinct !{!81, !74, !75}
!82 = distinct !{!82, !74, !75}
!83 = distinct !{!83, !74, !75}
!84 = distinct !{!84, !74, !75}
!85 = distinct !{!85, !74, !75}
!86 = distinct !{!86, !74, !75}
!87 = distinct !{!87, !74, !75}
!88 = distinct !{!88, !74, !75}
!89 = !{!90, !66, i64 8}
!90 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !66, i64 0, !66, i64 8, !66, i64 16}
!91 = !{!90, !66, i64 0}
!92 = !{!"branch_weights", i32 90, i32 1356639}
!93 = !{!"branch_weights", i32 0, i32 7642479}
!94 = !{!90, !66, i64 16}
!95 = !{!"VP", i32 1, i64 0, i64 16, i64 0, i64 8, i64 0, i64 32, i64 0, i64 513, i64 0}
!96 = !{!"function_entry_count", i64 3}
!97 = !{!"function_entry_count", i64 121368}
!98 = !{!99, !99, i64 0}
!99 = !{!"double", !67, i64 0}
!100 = !{!"branch_weights", i32 121367, i32 1}
!101 = !{!"branch_weights", i32 1, i32 121367}
!102 = distinct !{!102, !74, !75}
!103 = !{!"function_entry_count", i64 4721160}
!104 = !{!"branch_weights", i32 3872292, i32 848868}
!105 = !{!"branch_weights", i32 2956272, i32 916020}
!106 = !{!"branch_weights", i32 0, i32 2956272}
!107 = !{!"VP", i32 1, i64 848811, i64 16, i64 466624, i64 8, i64 345190, i64 32, i64 19412, i64 513, i64 10969}
!108 = !{!"branch_weights", i32 1, i32 848867}
!109 = !{!"branch_weights", i32 282252, i32 566616}
!110 = !{!"branch_weights", i32 848868, i32 566616}
!111 = !{!"branch_weights", i32 848867, i32 566617}
!112 = distinct !{!112, !74, !75}
!113 = !{!"branch_weights", i32 0, i32 566616}
!114 = distinct !{!114, !74, !75}
!115 = !{!"branch_weights", i32 0, i32 848868}
!116 = distinct !{!116, !74, !75}
!117 = distinct !{!117, !74, !75}
!118 = distinct !{!118, !74, !75}
!119 = distinct !{!119, !74, !75}
!120 = !{!"function_entry_count", i64 6}
!121 = !{!"branch_weights", i32 1, i32 191}
!122 = !{!"branch_weights", i32 6, i32 0}
!123 = !{!"branch_weights", i32 193, i32 191}
!124 = distinct !{!124, !74, !75}
!125 = distinct !{!125, !74, !75}
!126 = !{!"branch_weights", i32 0, i32 6}
!127 = !{!"function_entry_count", i64 481320}
!128 = !{!"branch_weights", i32 0, i32 481320}
!129 = !{!"branch_weights", i32 481319, i32 946286}
!130 = distinct !{!130, !74, !75}
!131 = !{!"function_entry_count", i64 6064389}
!132 = !{!"branch_weights", i32 0, i32 6064389}
!133 = !{!"branch_weights", i32 12, i32 6064377}
!134 = !{!"branch_weights", i32 0, i32 12}
!135 = !{!"VP", i32 1, i64 12, i64 8, i64 6, i64 16, i64 6}
!136 = !{!"branch_weights", i32 6, i32 6}
!137 = !{!"branch_weights", i32 0, i32 6064377}
!138 = !{!"branch_weights", i32 4848962, i32 1215415}
!139 = !{!"VP", i32 1, i64 1215415, i64 32, i64 849971, i64 8, i64 316137, i64 129, i64 46304, i64 64, i64 3003}
!140 = distinct !{!140, !74, !75}
!141 = distinct !{!141, !74, !75}
!142 = distinct !{!142, !74, !75}
!143 = distinct !{!143, !74, !75}
!144 = distinct !{!144, !74, !75}
!145 = distinct !{!145, !74, !75}
!146 = distinct !{!146, !74, !75}
!147 = distinct !{!147, !74, !75}
!148 = distinct !{!148, !74, !75}
!149 = distinct !{!149, !74, !75}
!150 = distinct !{!150, !74, !75}
!151 = distinct !{!151, !74, !75}
!152 = !{!153}
!153 = distinct !{!153, !154, !"_ZN6dealii11Polynomials8MonomialIfE11make_vectorEjd: argument 0"}
!154 = distinct !{!154, !"_ZN6dealii11Polynomials8MonomialIfE11make_vectorEjd"}
!155 = !{!156, !66, i64 16}
!156 = !{!"_ZTSNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIfEESaIS3_EE17_Vector_impl_dataE", !66, i64 0, !66, i64 8, !66, i64 16}
!157 = !{!156, !66, i64 8}
!158 = distinct !{!158, !74, !75}
!159 = !{!156, !66, i64 0}
!160 = distinct !{!160, !74, !75}
!161 = !{!162}
!162 = distinct !{!162, !163, !"_ZN6dealii11Polynomials8MonomialIdE11make_vectorEjd: argument 0"}
!163 = distinct !{!163, !"_ZN6dealii11Polynomials8MonomialIdE11make_vectorEjd"}
!164 = !{!165, !66, i64 16}
!165 = !{!"_ZTSNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE17_Vector_impl_dataE", !66, i64 0, !66, i64 8, !66, i64 16}
!166 = !{!165, !66, i64 8}
!167 = distinct !{!167, !74, !75}
!168 = !{!165, !66, i64 0}
!169 = distinct !{!169, !74, !75}
!170 = !{!"branch_weights", i32 191, i32 193}
!171 = distinct !{!171, !74, !75}
!172 = distinct !{!172, !74, !75}
!173 = !{!"function_entry_count", i64 5}
!174 = !{!"branch_weights", i32 0, i32 5}
!175 = !{!"branch_weights", i32 5, i32 0}
!176 = !{!177, !66, i64 8}
!177 = !{!"_ZTSNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE17_Vector_impl_dataE", !66, i64 0, !66, i64 8, !66, i64 16}
!178 = !{!177, !66, i64 0}
!179 = distinct !{!179, !74, !75}
!180 = distinct !{!180, !74, !75}
!181 = distinct !{!181, !74, !75}
!182 = distinct !{!182, !74, !75}
!183 = distinct !{!183, !74, !75}
!184 = !{!185, !66, i64 0}
!185 = !{!"_ZTSNSt12_Vector_baseIPKSt6vectorIdSaIdEESaIS4_EE17_Vector_impl_dataE", !66, i64 0, !66, i64 8, !66, i64 16}
!186 = !{!185, !66, i64 8}
!187 = distinct !{!187, !74, !75}
!188 = distinct !{!188, !74, !75}
!189 = distinct !{!189, !74, !75}
!190 = distinct !{!190, !74, !75}
!191 = !{!"function_entry_count", i64 268842}
!192 = !{!"branch_weights", i32 0, i32 268842}
!193 = !{!"function_entry_count", i64 3349}
!194 = !{!"function_entry_count", i64 179270}
!195 = !{!"branch_weights", i32 0, i32 179270}
!196 = distinct !{!196, !74, !75}
!197 = distinct !{!197, !74, !75}
!198 = !{!"branch_weights", i32 1, i32 2000}
!199 = !{!185, !66, i64 16}
!200 = distinct !{!200, !74, !75}
!201 = !{!"function_entry_count", i64 5801171}
!202 = !{!"branch_weights", i32 0, i32 5801171}
!203 = !{!"branch_weights", i32 5801171, i32 0}
!204 = !{!"branch_weights", i32 5801170, i32 7217920}
!205 = !{!"branch_weights", i32 5801123, i32 48}
!206 = !{!"VP", i32 1, i64 48, i64 256, i64 24, i64 513, i64 24}
!207 = distinct !{!207, !74, !75}
!208 = distinct !{!208, !74, !75}
!209 = distinct !{!209, !74, !75}
!210 = !{!"function_entry_count", i64 1}
!211 = !{!"source/base/polynomial.cc;_GLOBAL__sub_I_polynomial.cc"}
