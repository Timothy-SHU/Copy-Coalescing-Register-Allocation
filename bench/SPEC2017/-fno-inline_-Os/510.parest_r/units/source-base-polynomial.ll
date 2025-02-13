; ModuleID = 'source/base/polynomial.cc'
source_filename = "source/base/polynomial.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.boost::arg" = type { i8 }
%"struct.boost::arg.0" = type { i8 }
%"struct.boost::arg.2" = type { i8 }
%"struct.boost::arg.4" = type { i8 }
%"struct.boost::arg.6" = type { i8 }
%"struct.boost::arg.8" = type { i8 }
%"struct.boost::arg.10" = type { i8 }
%"struct.boost::arg.12" = type { i8 }
%"struct.boost::arg.14" = type { i8 }
%"class.std::vector.42" = type { %"struct.std::_Vector_base.43" }
%"struct.std::_Vector_base.43" = type { %"struct.std::_Vector_base<const std::vector<double> *, std::allocator<const std::vector<double> *>>::_Vector_impl" }
%"struct.std::_Vector_base<const std::vector<double> *, std::allocator<const std::vector<double> *>>::_Vector_impl" = type { %"struct.std::_Vector_base<const std::vector<double> *, std::allocator<const std::vector<double> *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<const std::vector<double> *, std::allocator<const std::vector<double> *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.dealii::Threads::DummyThreadMutex" = type { i8 }
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
%"class.std::allocator.16" = type { i8 }
%"class.__gnu_cxx::__normal_iterator.50" = type { ptr }
%"class.__gnu_cxx::__normal_iterator" = type { ptr }
%"class.dealii::Polynomials::Monomial" = type { %"class.dealii::Polynomials::Polynomial" }
%"class.dealii::Polynomials::Polynomial.19" = type { %"class.dealii::Subscriptor", %"class.std::vector.20" }
%"class.std::vector.20" = type { %"struct.std::_Vector_base.21" }
%"struct.std::_Vector_base.21" = type { %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl" }
%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl" = type { %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data" }
%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::allocator.22" = type { i8 }
%"class.__gnu_cxx::__normal_iterator.48" = type { ptr }
%"class.__gnu_cxx::__normal_iterator.26" = type { ptr }
%"class.dealii::Polynomials::Monomial.25" = type { %"class.dealii::Polynomials::Polynomial.19" }
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
%"class.std::allocator.44" = type { i8 }
%"class.dealii::Threads::DummyThreadMutex::ScopedLock" = type { i8 }
%"class.dealii::Polynomials::Legendre" = type { %"class.dealii::Polynomials::Polynomial.19" }
%"class.dealii::Polynomials::Hierarchical" = type { %"class.dealii::Polynomials::Polynomial.19" }
%"class.__gnu_cxx::__normal_iterator.47" = type { ptr }
%"class.__gnu_cxx::__normal_iterator.49" = type { ptr }
%"struct.std::vector<const std::vector<double> *>::_Temporary_value" = type { ptr, %"union.std::vector<const std::vector<double> *>::_Temporary_value::_Storage" }
%"union.std::vector<const std::vector<double> *>::_Temporary_value::_Storage" = type { ptr }
%"class.std::move_iterator" = type { ptr }
%"struct.std::vector<float>::_Temporary_value" = type <{ ptr, %"union.std::vector<float>::_Temporary_value::_Storage", [4 x i8] }>
%"union.std::vector<float>::_Temporary_value::_Storage" = type { float }
%"class.std::move_iterator.51" = type { ptr }
%"struct.std::vector<double>::_Temporary_value" = type { ptr, %"union.std::vector<double>::_Temporary_value::_Storage" }
%"union.std::vector<double>::_Temporary_value::_Storage" = type { double }
%"class.std::move_iterator.52" = type { ptr }
%"class.__gnu_cxx::__normal_iterator.53" = type { ptr }

$_ZN5boost3argILi1EEC2Ev = comdat any

$_ZN5boost3argILi2EEC2Ev = comdat any

$_ZN5boost3argILi3EEC2Ev = comdat any

$_ZN5boost3argILi4EEC2Ev = comdat any

$_ZN5boost3argILi5EEC2Ev = comdat any

$_ZN5boost3argILi6EEC2Ev = comdat any

$_ZN5boost3argILi7EEC2Ev = comdat any

$_ZN5boost3argILi8EEC2Ev = comdat any

$_ZN5boost3argILi9EEC2Ev = comdat any

$_ZN6dealii11Polynomials10PolynomialIfEC5ERKSt6vectorIfSaIfEE = comdat any

$_ZNSt6vectorIfSaIfEEC2ERKS1_ = comdat any

$_ZN6dealii11Polynomials10PolynomialIfEC5Ev = comdat any

$_ZNSt6vectorIfSaIfEEC2Ev = comdat any

$_ZNK6dealii11Polynomials10PolynomialIfE5valueEf = comdat any

$_ZNKSt6vectorIfSaIfEE4sizeEv = comdat any

$_ZNKSt6vectorIfSaIfEE4backEv = comdat any

$_ZNKSt6vectorIfSaIfEEixEm = comdat any

$_ZNK6dealii11Polynomials10PolynomialIfE5valueEfRSt6vectorIfSaIfEE = comdat any

$_ZNSt6vectorIfSaIfEEixEm = comdat any

$_ZSt3minIjERKT_S2_S2_ = comdat any

$_ZNSt6vectorIfSaIfEED2Ev = comdat any

$_ZNK6dealii11Polynomials10PolynomialIfE6degreeEv = comdat any

$_ZN6dealii11Polynomials10PolynomialIfE5scaleEf = comdat any

$_ZN6dealii11Polynomials10PolynomialIfE5scaleERSt6vectorIfSaIfEEf = comdat any

$_ZNK6dealii11Polynomials10PolynomialIfE10derivativeEv = comdat any

$_ZN6dealii11Polynomials10PolynomialIfEC2EOS2_ = comdat any

$_ZNSaIfEC2Ev = comdat any

$_ZNSt6vectorIfSaIfEEC2EmRKS0_ = comdat any

$_ZNSt15__new_allocatorIfED2Ev = comdat any

$_ZNK6dealii11Polynomials10PolynomialIfE9primitiveEv = comdat any

$_ZN6dealii11Polynomials10PolynomialIfEmLEd = comdat any

$_ZNSt6vectorIfSaIfEE5beginEv = comdat any

$_ZN9__gnu_cxxneIPfSt6vectorIfSaIfEEEEbRKNS_17__normal_iteratorIT_T0_EESA_ = comdat any

$_ZNSt6vectorIfSaIfEE3endEv = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEdeEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEppEv = comdat any

$_ZN6dealii11Polynomials10PolynomialIfEmLERKS2_ = comdat any

$_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_ = comdat any

$_ZNSt6vectorIfSaIfEEaSERKS1_ = comdat any

$_ZN6dealii11Polynomials10PolynomialIfEpLERKS2_ = comdat any

$_ZNSt6vectorIfSaIfEE6resizeEmRKf = comdat any

$_ZN6dealii11Polynomials10PolynomialIfEmIERKS2_ = comdat any

$_ZNK6dealii11Polynomials10PolynomialIfE5printERSo = comdat any

$_ZN6dealii11Polynomials10PolynomialIfE8multiplyERSt6vectorIfSaIfEEf = comdat any

$_ZN6dealii11Polynomials10PolynomialIdEC5ERKSt6vectorIdSaIdEE = comdat any

$_ZNSt6vectorIdSaIdEEC2ERKS1_ = comdat any

$_ZN6dealii11Polynomials10PolynomialIdEC5Ev = comdat any

$_ZNSt6vectorIdSaIdEEC2Ev = comdat any

$_ZNK6dealii11Polynomials10PolynomialIdE5valueEd = comdat any

$_ZNKSt6vectorIdSaIdEE4sizeEv = comdat any

$_ZNKSt6vectorIdSaIdEE4backEv = comdat any

$_ZNKSt6vectorIdSaIdEEixEm = comdat any

$_ZNK6dealii11Polynomials10PolynomialIdE5valueEdRSt6vectorIdSaIdEE = comdat any

$_ZNSt6vectorIdSaIdEEixEm = comdat any

$_ZNSt6vectorIdSaIdEED2Ev = comdat any

$_ZNK6dealii11Polynomials10PolynomialIdE6degreeEv = comdat any

$_ZN6dealii11Polynomials10PolynomialIdE5scaleEd = comdat any

$_ZN6dealii11Polynomials10PolynomialIdE5scaleERSt6vectorIdSaIdEEd = comdat any

$_ZNK6dealii11Polynomials10PolynomialIdE10derivativeEv = comdat any

$_ZN6dealii11Polynomials10PolynomialIdEC2EOS2_ = comdat any

$_ZNSaIdEC2Ev = comdat any

$_ZNSt6vectorIdSaIdEEC2EmRKS0_ = comdat any

$_ZNSt15__new_allocatorIdED2Ev = comdat any

$_ZNK6dealii11Polynomials10PolynomialIdE9primitiveEv = comdat any

$_ZN6dealii11Polynomials10PolynomialIdEmLEd = comdat any

$_ZNSt6vectorIdSaIdEE5beginEv = comdat any

$_ZN9__gnu_cxxneIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_ = comdat any

$_ZNSt6vectorIdSaIdEE3endEv = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEv = comdat any

$_ZN6dealii11Polynomials10PolynomialIdEmLERKS2_ = comdat any

$_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_ = comdat any

$_ZNSt6vectorIdSaIdEEaSERKS1_ = comdat any

$_ZN6dealii11Polynomials10PolynomialIdEpLERKS2_ = comdat any

$_ZNSt6vectorIdSaIdEE6resizeEmRKd = comdat any

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

$_ZNSt6vectorIN6dealii11Polynomials10PolynomialIfEESaIS3_EEC2Ev = comdat any

$_ZNSt6vectorIN6dealii11Polynomials10PolynomialIfEESaIS3_EE7reserveEm = comdat any

$_ZNSt6vectorIN6dealii11Polynomials10PolynomialIfEESaIS3_EE9push_backEOS3_ = comdat any

$_ZNSt6vectorIN6dealii11Polynomials10PolynomialIfEESaIS3_EED2Ev = comdat any

$_ZN6dealii11Polynomials8MonomialIdEC5Ejd = comdat any

$_ZN6dealii11Polynomials8MonomialIdE11make_vectorEjd = comdat any

$_ZN6dealii11Polynomials8MonomialIdE23generate_complete_basisEj = comdat any

$_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2Ev = comdat any

$_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE7reserveEm = comdat any

$_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE9push_backEOS3_ = comdat any

$_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EED2Ev = comdat any

$_ZNSaIN6dealii11Polynomials10PolynomialIdEEEC2Ev = comdat any

$_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2EmRKS3_RKS4_ = comdat any

$_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv = comdat any

$_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2EmRKS4_ = comdat any

$_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE4sizeEv = comdat any

$_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEixEm = comdat any

$_ZN6dealii11Polynomials10PolynomialIdEaSEOS2_ = comdat any

$_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm = comdat any

$_ZNK6dealii5PointILi1EEclEj = comdat any

$_ZN6dealii11Polynomials10PolynomialIdEC2ERKS2_ = comdat any

$_ZNSaIPKSt6vectorIdSaIdEEEC2Ev = comdat any

$_ZNSt6vectorIPKS_IdSaIdEESaIS3_EEC2EmRKS3_RKS4_ = comdat any

$_ZNSt6vectorIPKS_IdSaIdEESaIS3_EED2Ev = comdat any

$_ZN6dealii7Threads16DummyThreadMutex10ScopedLockC2ERS1_ = comdat any

$_ZNKSt6vectorIPKS_IdSaIdEESaIS3_EE4sizeEv = comdat any

$_ZNSt6vectorIPKS_IdSaIdEESaIS3_EEixEm = comdat any

$_ZNSt6vectorIPKS_IdSaIdEESaIS3_EE6resizeEmRKS3_ = comdat any

$_ZNK6dealii7Threads16DummyThreadMutex7releaseEv = comdat any

$_ZNK6dealii7Threads16DummyThreadMutex7acquireEv = comdat any

$_ZN6dealii7Threads16DummyThreadMutex10ScopedLockD2Ev = comdat any

$_ZN6dealii11Polynomials10PolynomialIdED2Ev = comdat any

$_ZN6dealii11Polynomials10PolynomialIdED0Ev = comdat any

$_ZN6dealii11Polynomials10PolynomialIfED2Ev = comdat any

$_ZN6dealii11Polynomials10PolynomialIfED0Ev = comdat any

$_ZN6dealii11Polynomials8MonomialIfED0Ev = comdat any

$_ZN6dealii11Polynomials8MonomialIdED0Ev = comdat any

$_ZN6dealii11Polynomials19LagrangeEquidistantD0Ev = comdat any

$_ZN6dealii11Polynomials8LegendreD0Ev = comdat any

$_ZN6dealii11Polynomials12HierarchicalD0Ev = comdat any

$_ZNSt12_Vector_baseIfSaIfEEC2Ev = comdat any

$_ZNSt12_Vector_baseIfSaIfEE12_Vector_implC2Ev = comdat any

$_ZNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt15__new_allocatorIfEC2Ev = comdat any

$_ZNSt6vectorIfSaIfEEC2EOS1_ = comdat any

$_ZNSt12_Vector_baseIfSaIfEEC2EOS1_ = comdat any

$_ZNSt12_Vector_baseIfSaIfEE12_Vector_implC2EOS2_ = comdat any

$_ZNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataC2EOS2_ = comdat any

$_ZNSt15__new_allocatorIfEC2ERKS0_ = comdat any

$_ZNSt12_Vector_baseIdSaIdEEC2Ev = comdat any

$_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev = comdat any

$_ZNSt15__new_allocatorIdEC2Ev = comdat any

$_ZNSt6vectorIdSaIdEEC2EOS1_ = comdat any

$_ZNSt12_Vector_baseIdSaIdEEC2EOS1_ = comdat any

$_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2EOS2_ = comdat any

$_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2EOS2_ = comdat any

$_ZNSt15__new_allocatorIdEC2ERKS0_ = comdat any

$_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIfEESaIS3_EEC2Ev = comdat any

$_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIfEESaIS3_EE12_Vector_implC2Ev = comdat any

$_ZNSaIN6dealii11Polynomials10PolynomialIfEEEC2Ev = comdat any

$_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIfEESaIS3_EE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIfEEEC2Ev = comdat any

$_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2Ev = comdat any

$_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE12_Vector_implC2Ev = comdat any

$_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEEC2Ev = comdat any

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

$_ZNSt12_Vector_baseIdSaIdEEC2ERKS0_ = comdat any

$_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_ = comdat any

$_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_data12_M_copy_dataERKS2_ = comdat any

$_ZSt8_DestroyIPddEvT_S1_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseIdSaIdEED2Ev = comdat any

$_ZSt8_DestroyIPdEvT_S1_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_ = comdat any

$_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm = comdat any

$_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm = comdat any

$_ZNSt15__new_allocatorIdE10deallocateEPdm = comdat any

$_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_ = comdat any

$_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_ = comdat any

$_ZNSt6vectorIdSaIdEE21_M_default_initializeEm = comdat any

$_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_ = comdat any

$_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_ = comdat any

$_ZSt3minImERKT_S2_S2_ = comdat any

$_ZNKSt15__new_allocatorIdE8max_sizeEv = comdat any

$_ZNKSt15__new_allocatorIdE11_M_max_sizeEv = comdat any

$_ZNSt12_Vector_baseIdSaIdEE17_M_create_storageEm = comdat any

$_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm = comdat any

$_ZNSt16allocator_traitsISaIdEE8allocateERS0_m = comdat any

$_ZNSt15__new_allocatorIdE8allocateEmPKv = comdat any

$_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E = comdat any

$_ZSt25__uninitialized_default_nIPdmET_S1_T0_ = comdat any

$_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_ = comdat any

$_ZSt10_ConstructIdJEEvPT_DpOT0_ = comdat any

$_ZSt6fill_nIPdmdET_S1_T0_RKT1_ = comdat any

$_ZSt10__fill_n_aIPdmdET_S1_T0_RKT1_St26random_access_iterator_tag = comdat any

$_ZSt17__size_to_integerm = comdat any

$_ZSt19__iterator_categoryIPdENSt15iterator_traitsIT_E17iterator_categoryERKS2_ = comdat any

$_ZSt8__fill_aIPddEvT_S1_RKT0_ = comdat any

$_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_ = comdat any

$_ZNSt6vectorIdSaIdEE18_M_fill_initializeEmRKd = comdat any

$_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E = comdat any

$_ZSt20uninitialized_fill_nIPdmdET_S1_T0_RKT1_ = comdat any

$_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPdmdEET_S3_T0_RKT1_ = comdat any

$_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE17_S_check_init_lenEmRKS4_ = comdat any

$_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2EmRKS4_ = comdat any

$_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE18_M_fill_initializeEmRKS3_ = comdat any

$_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EED2Ev = comdat any

$_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE11_S_max_sizeERKS4_ = comdat any

$_ZNSaIN6dealii11Polynomials10PolynomialIdEEEC2ERKS3_ = comdat any

$_ZNSt16allocator_traitsISaIN6dealii11Polynomials10PolynomialIdEEEE8max_sizeERKS4_ = comdat any

$_ZNKSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEE8max_sizeEv = comdat any

$_ZNKSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEE11_M_max_sizeEv = comdat any

$_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEEC2ERKS4_ = comdat any

$_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE12_Vector_implC2ERKS4_ = comdat any

$_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE17_M_create_storageEm = comdat any

$_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEED2Ev = comdat any

$_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE11_M_allocateEm = comdat any

$_ZNSt16allocator_traitsISaIN6dealii11Polynomials10PolynomialIdEEEE8allocateERS4_m = comdat any

$_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEE8allocateEmPKv = comdat any

$_ZSt24__uninitialized_fill_n_aIPN6dealii11Polynomials10PolynomialIdEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E = comdat any

$_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE19_M_get_Tp_allocatorEv = comdat any

$_ZSt20uninitialized_fill_nIPN6dealii11Polynomials10PolynomialIdEEmS3_ET_S5_T0_RKT1_ = comdat any

$_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPN6dealii11Polynomials10PolynomialIdEEmS5_EET_S7_T0_RKT1_ = comdat any

$_ZSt18__do_uninit_fill_nIPN6dealii11Polynomials10PolynomialIdEEmS3_ET_S5_T0_RKT1_ = comdat any

$_ZSt10_ConstructIN6dealii11Polynomials10PolynomialIdEEJRKS3_EEvPT_DpOT0_ = comdat any

$_ZSt8_DestroyIPN6dealii11Polynomials10PolynomialIdEEEvT_S5_ = comdat any

$_ZNSt12_Destroy_auxILb0EE9__destroyIPN6dealii11Polynomials10PolynomialIdEEEEvT_S7_ = comdat any

$_ZSt8_DestroyIN6dealii11Polynomials10PolynomialIdEEEvPT_ = comdat any

$_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE13_M_deallocateEPS3_m = comdat any

$_ZNSt16allocator_traitsISaIN6dealii11Polynomials10PolynomialIdEEEE10deallocateERS4_PS3_m = comdat any

$_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEE10deallocateEPS3_m = comdat any

$_ZSt8_DestroyIPN6dealii11Polynomials10PolynomialIdEES3_EvT_S5_RSaIT0_E = comdat any

$_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_ = comdat any

$_ZNSt16allocator_traitsISaIN6dealii11Polynomials10PolynomialIdEEEE9constructIS3_JS3_EEEvRS4_PT_DpOT0_ = comdat any

$_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_ = comdat any

$_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE3endEv = comdat any

$_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE4backEv = comdat any

$_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEE9constructIS3_JS3_EEEvPT_DpOT0_ = comdat any

$_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE12_M_check_lenEmPKc = comdat any

$_ZN9__gnu_cxxmiIPN6dealii11Polynomials10PolynomialIdEESt6vectorIS4_SaIS4_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSC_SF_ = comdat any

$_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE5beginEv = comdat any

$_ZSt34__uninitialized_move_if_noexcept_aIPN6dealii11Polynomials10PolynomialIdEES4_SaIS3_EET0_T_S7_S6_RT1_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPN6dealii11Polynomials10PolynomialIdEESt6vectorIS4_SaIS4_EEE4baseEv = comdat any

$_ZNSt16allocator_traitsISaIN6dealii11Polynomials10PolynomialIdEEEE7destroyIS3_EEvRS4_PT_ = comdat any

$_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE8max_sizeEv = comdat any

$_ZSt3maxImERKT_S2_S2_ = comdat any

$_ZNKSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE19_M_get_Tp_allocatorEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPN6dealii11Polynomials10PolynomialIdEESt6vectorIS4_SaIS4_EEEC2ERKS5_ = comdat any

$_ZSt22__uninitialized_copy_aIPKN6dealii11Polynomials10PolynomialIdEEPS3_S3_ET0_T_S8_S7_RSaIT1_E = comdat any

$_ZSt32__make_move_if_noexcept_iteratorIN6dealii11Polynomials10PolynomialIdEEPKS3_ET0_PT_ = comdat any

$_ZSt18uninitialized_copyIPKN6dealii11Polynomials10PolynomialIdEEPS3_ET0_T_S8_S7_ = comdat any

$_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPKN6dealii11Polynomials10PolynomialIdEEPS5_EET0_T_SA_S9_ = comdat any

$_ZSt16__do_uninit_copyIPKN6dealii11Polynomials10PolynomialIdEEPS3_ET0_T_S8_S7_ = comdat any

$_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEE7destroyIS3_EEvPT_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPN6dealii11Polynomials10PolynomialIdEESt6vectorIS4_SaIS4_EEEmiEl = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPN6dealii11Polynomials10PolynomialIdEESt6vectorIS4_SaIS4_EEEdeEv = comdat any

$_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE21_M_default_initializeEm = comdat any

$_ZSt27__uninitialized_default_n_aIPN6dealii11Polynomials10PolynomialIdEEmS3_ET_S5_T0_RSaIT1_E = comdat any

$_ZSt25__uninitialized_default_nIPN6dealii11Polynomials10PolynomialIdEEmET_S5_T0_ = comdat any

$_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6dealii11Polynomials10PolynomialIdEEmEET_S7_T0_ = comdat any

$_ZSt10_ConstructIN6dealii11Polynomials10PolynomialIdEEJEEvPT_DpOT0_ = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIdEdE17_S_select_on_copyERKS1_ = comdat any

$_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPddET0_T_SA_S9_RSaIT1_E = comdat any

$_ZNKSt6vectorIdSaIdEE5beginEv = comdat any

$_ZNKSt6vectorIdSaIdEE3endEv = comdat any

$_ZNSt16allocator_traitsISaIdEE37select_on_container_copy_constructionERKS0_ = comdat any

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

$_ZNSt15__new_allocatorIPKSt6vectorIdSaIdEEEC2Ev = comdat any

$_ZNSt6vectorIPKS_IdSaIdEESaIS3_EE17_S_check_init_lenEmRKS4_ = comdat any

$_ZNSt12_Vector_baseIPKSt6vectorIdSaIdEESaIS4_EEC2EmRKS5_ = comdat any

$_ZNSt6vectorIPKS_IdSaIdEESaIS3_EE18_M_fill_initializeEmRKS3_ = comdat any

$_ZNSt12_Vector_baseIPKSt6vectorIdSaIdEESaIS4_EED2Ev = comdat any

$_ZNSt6vectorIPKS_IdSaIdEESaIS3_EE11_S_max_sizeERKS4_ = comdat any

$_ZNSaIPKSt6vectorIdSaIdEEEC2ERKS4_ = comdat any

$_ZNSt16allocator_traitsISaIPKSt6vectorIdSaIdEEEE8max_sizeERKS5_ = comdat any

$_ZNKSt15__new_allocatorIPKSt6vectorIdSaIdEEE8max_sizeEv = comdat any

$_ZNKSt15__new_allocatorIPKSt6vectorIdSaIdEEE11_M_max_sizeEv = comdat any

$_ZNSt15__new_allocatorIPKSt6vectorIdSaIdEEEC2ERKS5_ = comdat any

$_ZNSt12_Vector_baseIPKSt6vectorIdSaIdEESaIS4_EE12_Vector_implC2ERKS5_ = comdat any

$_ZNSt12_Vector_baseIPKSt6vectorIdSaIdEESaIS4_EE17_M_create_storageEm = comdat any

$_ZNSt15__new_allocatorIPKSt6vectorIdSaIdEEED2Ev = comdat any

$_ZNSt12_Vector_baseIPKSt6vectorIdSaIdEESaIS4_EE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt12_Vector_baseIPKSt6vectorIdSaIdEESaIS4_EE11_M_allocateEm = comdat any

$_ZNSt16allocator_traitsISaIPKSt6vectorIdSaIdEEEE8allocateERS5_m = comdat any

$_ZNSt15__new_allocatorIPKSt6vectorIdSaIdEEE8allocateEmPKv = comdat any

$_ZSt24__uninitialized_fill_n_aIPPKSt6vectorIdSaIdEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E = comdat any

$_ZNSt12_Vector_baseIPKSt6vectorIdSaIdEESaIS4_EE19_M_get_Tp_allocatorEv = comdat any

$_ZSt20uninitialized_fill_nIPPKSt6vectorIdSaIdEEmS4_ET_S6_T0_RKT1_ = comdat any

$_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPPKSt6vectorIdSaIdEEmS6_EET_S8_T0_RKT1_ = comdat any

$_ZSt6fill_nIPPKSt6vectorIdSaIdEEmS4_ET_S6_T0_RKT1_ = comdat any

$_ZSt10__fill_n_aIPPKSt6vectorIdSaIdEEmS4_ET_S6_T0_RKT1_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPPKSt6vectorIdSaIdEEENSt15iterator_traitsIT_E17iterator_categoryERKS7_ = comdat any

$_ZSt8__fill_aIPPKSt6vectorIdSaIdEES4_EvT_S6_RKT0_ = comdat any

$_ZSt9__fill_a1IPPKSt6vectorIdSaIdEES4_EN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_SB_RKS8_ = comdat any

$_ZNSt12_Vector_baseIPKSt6vectorIdSaIdEESaIS4_EE13_M_deallocateEPS4_m = comdat any

$_ZNSt16allocator_traitsISaIPKSt6vectorIdSaIdEEEE10deallocateERS5_PS4_m = comdat any

$_ZNSt15__new_allocatorIPKSt6vectorIdSaIdEEE10deallocateEPS4_m = comdat any

$_ZSt8_DestroyIPPKSt6vectorIdSaIdEES4_EvT_S6_RSaIT0_E = comdat any

$_ZSt8_DestroyIPPKSt6vectorIdSaIdEEEvT_S6_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPPKSt6vectorIdSaIdEEEEvT_S8_ = comdat any

$_ZNSt6vectorIPKS_IdSaIdEESaIS3_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS3_S5_EEmRKS3_ = comdat any

$_ZNSt6vectorIPKS_IdSaIdEESaIS3_EE3endEv = comdat any

$_ZNSt6vectorIPKS_IdSaIdEESaIS3_EE15_M_erase_at_endEPS3_ = comdat any

$_ZNSt6vectorIPKS_IdSaIdEESaIS3_EE16_Temporary_valueC2IJRKS3_EEEPS5_DpOT_ = comdat any

$_ZNSt6vectorIPKS_IdSaIdEESaIS3_EE16_Temporary_value6_M_valEv = comdat any

$_ZN9__gnu_cxxmiIPPKSt6vectorIdSaIdEES1_IS5_SaIS5_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSC_SF_ = comdat any

$_ZSt22__uninitialized_move_aIPPKSt6vectorIdSaIdEES5_SaIS4_EET0_T_S8_S7_RT1_ = comdat any

$_ZSt13move_backwardIPPKSt6vectorIdSaIdEES5_ET0_T_S7_S6_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPPKSt6vectorIdSaIdEES1_IS5_SaIS5_EEE4baseEv = comdat any

$_ZSt4fillIPPKSt6vectorIdSaIdEES4_EvT_S6_RKT0_ = comdat any

$_ZNSt6vectorIPKS_IdSaIdEESaIS3_EE16_Temporary_valueD2Ev = comdat any

$_ZNKSt6vectorIPKS_IdSaIdEESaIS3_EE12_M_check_lenEmPKc = comdat any

$_ZSt34__uninitialized_move_if_noexcept_aIPPKSt6vectorIdSaIdEES5_SaIS4_EET0_T_S8_S7_RT1_ = comdat any

$_ZNSt6vectorIPKS_IdSaIdEESaIS3_EE16_Temporary_value8_StorageC2Ev = comdat any

$_ZNSt16allocator_traitsISaIPKSt6vectorIdSaIdEEEE9constructIS4_JRKS4_EEEvRS5_PT_DpOT0_ = comdat any

$_ZNSt6vectorIPKS_IdSaIdEESaIS3_EE16_Temporary_value6_M_ptrEv = comdat any

$_ZNSt15__new_allocatorIPKSt6vectorIdSaIdEEE9constructIS4_JRKS4_EEEvPT_DpOT0_ = comdat any

$_ZSt22__uninitialized_copy_aISt13move_iteratorIPPKSt6vectorIdSaIdEEES6_S5_ET0_T_S9_S8_RSaIT1_E = comdat any

$_ZSt18make_move_iteratorIPPKSt6vectorIdSaIdEEESt13move_iteratorIT_ES7_ = comdat any

$_ZSt18uninitialized_copyISt13move_iteratorIPPKSt6vectorIdSaIdEEES6_ET0_T_S9_S8_ = comdat any

$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPPKSt6vectorIdSaIdEEES8_EET0_T_SB_SA_ = comdat any

$_ZSt4copyISt13move_iteratorIPPKSt6vectorIdSaIdEEES6_ET0_T_S9_S8_ = comdat any

$_ZSt13__copy_move_aILb1EPPKSt6vectorIdSaIdEES5_ET1_T0_S7_S6_ = comdat any

$_ZSt12__miter_baseIPPKSt6vectorIdSaIdEEEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E = comdat any

$_ZSt12__niter_wrapIPPKSt6vectorIdSaIdEEET_RKS6_S6_ = comdat any

$_ZSt14__copy_move_a1ILb1EPPKSt6vectorIdSaIdEES5_ET1_T0_S7_S6_ = comdat any

$_ZSt12__niter_baseIPPKSt6vectorIdSaIdEEET_S6_ = comdat any

$_ZSt14__copy_move_a2ILb1EPPKSt6vectorIdSaIdEES5_ET1_T0_S7_S6_ = comdat any

$_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIPKSt6vectorIdSaIdEEEEPT_PKS8_SB_S9_ = comdat any

$_ZSt12__miter_baseIPPKSt6vectorIdSaIdEEET_S6_ = comdat any

$_ZNKSt13move_iteratorIPPKSt6vectorIdSaIdEEE4baseEv = comdat any

$_ZNSt13move_iteratorIPPKSt6vectorIdSaIdEEEC2ES5_ = comdat any

$_ZSt22__copy_move_backward_aILb1EPPKSt6vectorIdSaIdEES5_ET1_T0_S7_S6_ = comdat any

$_ZSt23__copy_move_backward_a1ILb1EPPKSt6vectorIdSaIdEES5_ET1_T0_S7_S6_ = comdat any

$_ZSt23__copy_move_backward_a2ILb1EPPKSt6vectorIdSaIdEES5_ET1_T0_S7_S6_ = comdat any

$_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIPKSt6vectorIdSaIdEEEEPT_PKS8_SB_S9_ = comdat any

$_ZNSt16allocator_traitsISaIPKSt6vectorIdSaIdEEEE7destroyIS4_EEvRS5_PT_ = comdat any

$_ZNSt6vectorIPKS_IdSaIdEESaIS3_EE16_Temporary_value8_StorageD2Ev = comdat any

$_ZNSt15__new_allocatorIPKSt6vectorIdSaIdEEE7destroyIS4_EEvPT_ = comdat any

$_ZNKSt6vectorIPKS_IdSaIdEESaIS3_EE8max_sizeEv = comdat any

$_ZNKSt12_Vector_baseIPKSt6vectorIdSaIdEESaIS4_EE19_M_get_Tp_allocatorEv = comdat any

$_ZSt32__make_move_if_noexcept_iteratorIPKSt6vectorIdSaIdEESt13move_iteratorIPS4_EET0_PT_ = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPPKSt6vectorIdSaIdEES1_IS5_SaIS5_EEEC2ERKS6_ = comdat any

$_ZNSt6vectorIdSaIdEEC2IN9__gnu_cxx17__normal_iteratorIPdS1_EEvEET_S7_RKS0_ = comdat any

$_ZNSt6vectorIdSaIdEE6assignIN9__gnu_cxx17__normal_iteratorIPdS1_EEvEEvT_S7_ = comdat any

$_ZNSt6vectorIdSaIdEE19_M_range_initializeIN9__gnu_cxx17__normal_iteratorIPdS1_EEEEvT_S7_St20forward_iterator_tag = comdat any

$_ZSt19__iterator_categoryIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEENSt15iterator_traitsIT_E17iterator_categoryERKS8_ = comdat any

$_ZSt8distanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEENSt15iterator_traitsIT_E15difference_typeES8_S8_ = comdat any

$_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES2_dET0_T_S8_S7_RSaIT1_E = comdat any

$_ZSt10__distanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEENSt15iterator_traitsIT_E15difference_typeES8_S8_St26random_access_iterator_tag = comdat any

$_ZN9__gnu_cxxmiIPdSt6vectorIdSaIdEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv = comdat any

$_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES2_ET0_T_S8_S7_ = comdat any

$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES4_EET0_T_SA_S9_ = comdat any

$_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES2_ET0_T_S8_S7_ = comdat any

$_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES2_ET1_T0_S8_S7_ = comdat any

$_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET_S7_ = comdat any

$_ZSt14__copy_move_a1ILb0EPdS0_ET1_T0_S2_S1_ = comdat any

$_ZSt12__niter_baseIPdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE = comdat any

$_ZSt14__copy_move_a2ILb0EPdS0_ET1_T0_S2_S1_ = comdat any

$_ZNSt6vectorIdSaIdEE18_M_assign_dispatchIN9__gnu_cxx17__normal_iteratorIPdS1_EEEEvT_S7_St12__false_type = comdat any

$_ZNSt6vectorIdSaIdEE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPdS1_EEEEvT_S7_St20forward_iterator_tag = comdat any

$_ZNKSt6vectorIdSaIdEE8capacityEv = comdat any

$_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPdS1_EEEES5_mT_S7_ = comdat any

$_ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd = comdat any

$_ZSt7advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEmEvRT_T0_ = comdat any

$_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEpLEl = comdat any

$_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE8capacityEv = comdat any

$_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_ = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIfEfE17_S_select_on_copyERKS1_ = comdat any

$_ZNKSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_ = comdat any

$_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEPffET0_T_SA_S9_RSaIT1_E = comdat any

$_ZNKSt6vectorIfSaIfEE5beginEv = comdat any

$_ZNKSt6vectorIfSaIfEE3endEv = comdat any

$_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseIfSaIfEED2Ev = comdat any

$_ZNSt16allocator_traitsISaIfEE37select_on_container_copy_constructionERKS0_ = comdat any

$_ZNSaIfEC2ERKS_ = comdat any

$_ZNSt12_Vector_baseIfSaIfEE12_Vector_implC2ERKS0_ = comdat any

$_ZNSt12_Vector_baseIfSaIfEE17_M_create_storageEm = comdat any

$_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm = comdat any

$_ZNSt16allocator_traitsISaIfEE8allocateERS0_m = comdat any

$_ZNSt15__new_allocatorIfE8allocateEmPKv = comdat any

$_ZNKSt15__new_allocatorIfE11_M_max_sizeEv = comdat any

$_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEPfET0_T_SA_S9_ = comdat any

$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEPfEET0_T_SC_SB_ = comdat any

$_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEPfET0_T_SA_S9_ = comdat any

$_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEPfET1_T0_SA_S9_ = comdat any

$_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEET_S8_ = comdat any

$_ZSt12__niter_wrapIPfET_RKS1_S1_ = comdat any

$_ZSt14__copy_move_a1ILb0EPKfPfET1_T0_S4_S3_ = comdat any

$_ZSt12__niter_baseIPKfSt6vectorIfSaIfEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE = comdat any

$_ZSt12__niter_baseIPfET_S1_ = comdat any

$_ZSt14__copy_move_a2ILb0EPKfPfET1_T0_S4_S3_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIfEEPT_PKS3_S6_S4_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEE4baseEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEC2ERKS2_ = comdat any

$_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm = comdat any

$_ZNSt16allocator_traitsISaIfEE10deallocateERS0_Pfm = comdat any

$_ZNSt15__new_allocatorIfE10deallocateEPfm = comdat any

$_ZSt8_DestroyIPffEvT_S1_RSaIT0_E = comdat any

$_ZSt8_DestroyIPfEvT_S1_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPfEEvT_S3_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEmiEl = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEdeEv = comdat any

$_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_ = comdat any

$_ZNSt6vectorIfSaIfEE21_M_default_initializeEm = comdat any

$_ZNSt6vectorIfSaIfEE11_S_max_sizeERKS0_ = comdat any

$_ZNSt16allocator_traitsISaIfEE8max_sizeERKS0_ = comdat any

$_ZNKSt15__new_allocatorIfE8max_sizeEv = comdat any

$_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E = comdat any

$_ZSt25__uninitialized_default_nIPfmET_S1_T0_ = comdat any

$_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPfmEET_S3_T0_ = comdat any

$_ZSt10_ConstructIfJEEvPT_DpOT0_ = comdat any

$_ZSt6fill_nIPfmfET_S1_T0_RKT1_ = comdat any

$_ZSt10__fill_n_aIPfmfET_S1_T0_RKT1_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPfENSt15iterator_traitsIT_E17iterator_categoryERKS2_ = comdat any

$_ZSt8__fill_aIPffEvT_S1_RKT0_ = comdat any

$_ZSt9__fill_a1IPffEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_ = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEC2ERKS1_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEE4baseEv = comdat any

$_ZNSt6vectorIfSaIfEE18_M_fill_initializeEmRKf = comdat any

$_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E = comdat any

$_ZSt20uninitialized_fill_nIPfmfET_S1_T0_RKT1_ = comdat any

$_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPfmfEET_S3_T0_RKT1_ = comdat any

$_ZNKSt6vectorIfSaIfEE8capacityEv = comdat any

$_ZNSt6vectorIfSaIfEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKfS1_EEEEPfmT_S9_ = comdat any

$_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfEvT_S7_RSaIT0_E = comdat any

$_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_ = comdat any

$_ZSt4copyIPfS0_ET0_T_S2_S1_ = comdat any

$_ZSt22__uninitialized_copy_aIPfS0_fET0_T_S2_S1_RSaIT1_E = comdat any

$_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEEvT_S7_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEEEvT_S9_ = comdat any

$_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET1_T0_SB_SA_ = comdat any

$_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES2_ET_S7_T0_ = comdat any

$_ZSt12__niter_baseIPfSt6vectorIfSaIfEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEplEl = comdat any

$_ZSt13__copy_move_aILb0EPfS0_ET1_T0_S2_S1_ = comdat any

$_ZSt12__miter_baseIPfET_S1_ = comdat any

$_ZSt14__copy_move_a1ILb0EPfS0_ET1_T0_S2_S1_ = comdat any

$_ZSt14__copy_move_a2ILb0EPfS0_ET1_T0_S2_S1_ = comdat any

$_ZSt18uninitialized_copyIPfS0_ET0_T_S2_S1_ = comdat any

$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPfS2_EET0_T_S4_S3_ = comdat any

$_ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEmRKf = comdat any

$_ZNSt6vectorIfSaIfEE15_M_erase_at_endEPf = comdat any

$_ZNSt6vectorIfSaIfEE16_Temporary_valueC2IJRKfEEEPS1_DpOT_ = comdat any

$_ZNSt6vectorIfSaIfEE16_Temporary_value6_M_valEv = comdat any

$_ZN9__gnu_cxxmiIPfSt6vectorIfSaIfEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_ = comdat any

$_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_ = comdat any

$_ZSt13move_backwardIPfS0_ET0_T_S2_S1_ = comdat any

$_ZSt4fillIPffEvT_S1_RKT0_ = comdat any

$_ZNSt6vectorIfSaIfEE16_Temporary_valueD2Ev = comdat any

$_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc = comdat any

$_ZSt34__uninitialized_move_if_noexcept_aIPfS0_SaIfEET0_T_S3_S2_RT1_ = comdat any

$_ZNSt6vectorIfSaIfEE16_Temporary_value8_StorageC2Ev = comdat any

$_ZNSt16allocator_traitsISaIfEE9constructIfJRKfEEEvRS0_PT_DpOT0_ = comdat any

$_ZNSt6vectorIfSaIfEE16_Temporary_value6_M_ptrEv = comdat any

$_ZNSt15__new_allocatorIfE9constructIfJRKfEEEvPT_DpOT0_ = comdat any

$_ZSt22__uninitialized_copy_aISt13move_iteratorIPfES1_fET0_T_S4_S3_RSaIT1_E = comdat any

$_ZSt18make_move_iteratorIPfESt13move_iteratorIT_ES2_ = comdat any

$_ZSt18uninitialized_copyISt13move_iteratorIPfES1_ET0_T_S4_S3_ = comdat any

$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPfES3_EET0_T_S6_S5_ = comdat any

$_ZSt4copyISt13move_iteratorIPfES1_ET0_T_S4_S3_ = comdat any

$_ZSt13__copy_move_aILb1EPfS0_ET1_T0_S2_S1_ = comdat any

$_ZSt12__miter_baseIPfEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E = comdat any

$_ZSt14__copy_move_a1ILb1EPfS0_ET1_T0_S2_S1_ = comdat any

$_ZSt14__copy_move_a2ILb1EPfS0_ET1_T0_S2_S1_ = comdat any

$_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIfEEPT_PKS3_S6_S4_ = comdat any

$_ZNKSt13move_iteratorIPfE4baseEv = comdat any

$_ZNSt13move_iteratorIPfEC2ES0_ = comdat any

$_ZSt22__copy_move_backward_aILb1EPfS0_ET1_T0_S2_S1_ = comdat any

$_ZSt23__copy_move_backward_a1ILb1EPfS0_ET1_T0_S2_S1_ = comdat any

$_ZSt23__copy_move_backward_a2ILb1EPfS0_ET1_T0_S2_S1_ = comdat any

$_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIfEEPT_PKS3_S6_S4_ = comdat any

$_ZNSt16allocator_traitsISaIfEE7destroyIfEEvRS0_PT_ = comdat any

$_ZNSt6vectorIfSaIfEE16_Temporary_value8_StorageD2Ev = comdat any

$_ZNSt15__new_allocatorIfE7destroyIfEEvPT_ = comdat any

$_ZNKSt6vectorIfSaIfEE8max_sizeEv = comdat any

$_ZSt32__make_move_if_noexcept_iteratorIfSt13move_iteratorIPfEET0_PT_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEmiEl = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEdeEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_ = comdat any

$_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_ = comdat any

$_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RSaIT0_E = comdat any

$_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_ = comdat any

$_ZSt4copyIPdS0_ET0_T_S2_S1_ = comdat any

$_ZSt22__uninitialized_copy_aIPdS0_dET0_T_S2_S1_RSaIT1_E = comdat any

$_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_ = comdat any

$_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET1_T0_SB_SA_ = comdat any

$_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES2_ET_S7_T0_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl = comdat any

$_ZSt13__copy_move_aILb0EPdS0_ET1_T0_S2_S1_ = comdat any

$_ZSt12__miter_baseIPdET_S1_ = comdat any

$_ZSt18uninitialized_copyIPdS0_ET0_T_S2_S1_ = comdat any

$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPdS2_EET0_T_S4_S3_ = comdat any

$_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd = comdat any

$_ZNSt6vectorIdSaIdEE16_Temporary_valueC2IJRKdEEEPS1_DpOT_ = comdat any

$_ZNSt6vectorIdSaIdEE16_Temporary_value6_M_valEv = comdat any

$_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_ = comdat any

$_ZSt13move_backwardIPdS0_ET0_T_S2_S1_ = comdat any

$_ZSt4fillIPddEvT_S1_RKT0_ = comdat any

$_ZNSt6vectorIdSaIdEE16_Temporary_valueD2Ev = comdat any

$_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc = comdat any

$_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_ = comdat any

$_ZNSt6vectorIdSaIdEE16_Temporary_value8_StorageC2Ev = comdat any

$_ZNSt16allocator_traitsISaIdEE9constructIdJRKdEEEvRS0_PT_DpOT0_ = comdat any

$_ZNSt6vectorIdSaIdEE16_Temporary_value6_M_ptrEv = comdat any

$_ZNSt15__new_allocatorIdE9constructIdJRKdEEEvPT_DpOT0_ = comdat any

$_ZSt22__uninitialized_copy_aISt13move_iteratorIPdES1_dET0_T_S4_S3_RSaIT1_E = comdat any

$_ZSt18make_move_iteratorIPdESt13move_iteratorIT_ES2_ = comdat any

$_ZSt18uninitialized_copyISt13move_iteratorIPdES1_ET0_T_S4_S3_ = comdat any

$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPdES3_EET0_T_S6_S5_ = comdat any

$_ZSt4copyISt13move_iteratorIPdES1_ET0_T_S4_S3_ = comdat any

$_ZSt13__copy_move_aILb1EPdS0_ET1_T0_S2_S1_ = comdat any

$_ZSt12__miter_baseIPdEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E = comdat any

$_ZSt14__copy_move_a1ILb1EPdS0_ET1_T0_S2_S1_ = comdat any

$_ZSt14__copy_move_a2ILb1EPdS0_ET1_T0_S2_S1_ = comdat any

$_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_ = comdat any

$_ZNKSt13move_iteratorIPdE4baseEv = comdat any

$_ZNSt13move_iteratorIPdEC2ES0_ = comdat any

$_ZSt22__copy_move_backward_aILb1EPdS0_ET1_T0_S2_S1_ = comdat any

$_ZSt23__copy_move_backward_a1ILb1EPdS0_ET1_T0_S2_S1_ = comdat any

$_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_ = comdat any

$_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIdEEPT_PKS3_S6_S4_ = comdat any

$_ZNSt16allocator_traitsISaIdEE7destroyIdEEvRS0_PT_ = comdat any

$_ZNSt6vectorIdSaIdEE16_Temporary_value8_StorageD2Ev = comdat any

$_ZNSt15__new_allocatorIdE7destroyIdEEvPT_ = comdat any

$_ZNKSt6vectorIdSaIdEE8max_sizeEv = comdat any

$_ZSt32__make_move_if_noexcept_iteratorIdSt13move_iteratorIPdEET0_PT_ = comdat any

$_ZNSt6vectorIfSaIfEEC2IN9__gnu_cxx17__normal_iteratorIPfS1_EEvEET_S7_RKS0_ = comdat any

$_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS1_EEvEEvT_S7_ = comdat any

$_ZNSt12_Vector_baseIfSaIfEEC2ERKS0_ = comdat any

$_ZNSt6vectorIfSaIfEE19_M_range_initializeIN9__gnu_cxx17__normal_iteratorIPfS1_EEEEvT_S7_St20forward_iterator_tag = comdat any

$_ZSt19__iterator_categoryIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEENSt15iterator_traitsIT_E17iterator_categoryERKS8_ = comdat any

$_ZSt8distanceIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEENSt15iterator_traitsIT_E15difference_typeES8_S8_ = comdat any

$_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES2_fET0_T_S8_S7_RSaIT1_E = comdat any

$_ZSt10__distanceIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEENSt15iterator_traitsIT_E15difference_typeES8_S8_St26random_access_iterator_tag = comdat any

$_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES2_ET0_T_S8_S7_ = comdat any

$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES4_EET0_T_SA_S9_ = comdat any

$_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES2_ET0_T_S8_S7_ = comdat any

$_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES2_ET1_T0_S8_S7_ = comdat any

$_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEET_S7_ = comdat any

$_ZNSt6vectorIfSaIfEE18_M_assign_dispatchIN9__gnu_cxx17__normal_iteratorIPfS1_EEEEvT_S7_St12__false_type = comdat any

$_ZNSt6vectorIfSaIfEE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPfS1_EEEEvT_S7_St20forward_iterator_tag = comdat any

$_ZNSt6vectorIfSaIfEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPfS1_EEEES5_mT_S7_ = comdat any

$_ZSt7advanceIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEmEvRT_T0_ = comdat any

$_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElEvRT_T0_St26random_access_iterator_tag = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEpLEl = comdat any

$_ZNSt6vectorIdSaIdEEC2IN9__gnu_cxx17__normal_iteratorIPfS_IfSaIfEEEEvEET_S9_RKS0_ = comdat any

$_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPdS_IdSaIdEEEEvEEvT_S9_ = comdat any

$_ZNSt6vectorIdSaIdEE19_M_range_initializeIN9__gnu_cxx17__normal_iteratorIPfS_IfSaIfEEEEEEvT_S9_St20forward_iterator_tag = comdat any

$_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEPddET0_T_S9_S8_RSaIT1_E = comdat any

$_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEPdET0_T_S9_S8_ = comdat any

$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEPdEET0_T_SB_SA_ = comdat any

$_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEPdET0_T_S9_S8_ = comdat any

$_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEPdET1_T0_S9_S8_ = comdat any

$_ZSt14__copy_move_a1ILb0EPfPdET1_T0_S3_S2_ = comdat any

$_ZSt14__copy_move_a2ILb0EPfPdET1_T0_S3_S2_ = comdat any

$_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPfPdEET0_T_S6_S5_ = comdat any

$_ZNSt6vectorIfSaIfEE18_M_assign_dispatchIN9__gnu_cxx17__normal_iteratorIPdS_IdSaIdEEEEEEvT_S9_St12__false_type = comdat any

$_ZNSt6vectorIfSaIfEE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPdS_IdSaIdEEEEEEvT_S9_St20forward_iterator_tag = comdat any

$_ZNSt6vectorIfSaIfEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPdS_IdSaIdEEEEEEPfmT_SA_ = comdat any

$_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEPfET0_T_S9_S8_ = comdat any

$_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEPffET0_T_S9_S8_RSaIT1_E = comdat any

$_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEPfET1_T0_S9_S8_ = comdat any

$_ZSt14__copy_move_a1ILb0EPdPfET1_T0_S3_S2_ = comdat any

$_ZSt14__copy_move_a2ILb0EPdPfET1_T0_S3_S2_ = comdat any

$_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPdPfEET0_T_S6_S5_ = comdat any

$_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEPfET0_T_S9_S8_ = comdat any

$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEPfEET0_T_SB_SA_ = comdat any

$_ZNSt6vectorIfSaIfEEC2IN9__gnu_cxx17__normal_iteratorIPdS_IdSaIdEEEEvEET_S9_RKS0_ = comdat any

$_ZNSt6vectorIdSaIdEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfSaIfEEEEvEEvT_S9_ = comdat any

$_ZNSt6vectorIfSaIfEE19_M_range_initializeIN9__gnu_cxx17__normal_iteratorIPdS_IdSaIdEEEEEEvT_S9_St20forward_iterator_tag = comdat any

$_ZNSt6vectorIdSaIdEE18_M_assign_dispatchIN9__gnu_cxx17__normal_iteratorIPfS_IfSaIfEEEEEEvT_S9_St12__false_type = comdat any

$_ZNSt6vectorIdSaIdEE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPfS_IfSaIfEEEEEEvT_S9_St20forward_iterator_tag = comdat any

$_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPfS_IfSaIfEEEEEEPdmT_SA_ = comdat any

$_ZSt8_DestroyIPN6dealii11Polynomials10PolynomialIfEES3_EvT_S5_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIfEESaIS3_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIfEESaIS3_EED2Ev = comdat any

$_ZSt8_DestroyIPN6dealii11Polynomials10PolynomialIfEEEvT_S5_ = comdat any

$_ZNSt12_Destroy_auxILb0EE9__destroyIPN6dealii11Polynomials10PolynomialIfEEEEvT_S7_ = comdat any

$_ZSt8_DestroyIN6dealii11Polynomials10PolynomialIfEEEvPT_ = comdat any

$_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIfEESaIS3_EE13_M_deallocateEPS3_m = comdat any

$_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIfEEED2Ev = comdat any

$_ZNSt16allocator_traitsISaIN6dealii11Polynomials10PolynomialIfEEEE10deallocateERS4_PS3_m = comdat any

$_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIfEEE10deallocateEPS3_m = comdat any

$_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIfEESaIS3_EE8max_sizeEv = comdat any

$_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIfEESaIS3_EE8capacityEv = comdat any

$_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIfEESaIS3_EE4sizeEv = comdat any

$_ZNSt6vectorIN6dealii11Polynomials10PolynomialIfEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_ = comdat any

$_ZSt32__make_move_if_noexcept_iteratorIN6dealii11Polynomials10PolynomialIfEEPKS3_ET0_PT_ = comdat any

$_ZNSt6vectorIN6dealii11Polynomials10PolynomialIfEESaIS3_EE11_S_max_sizeERKS4_ = comdat any

$_ZNKSt12_Vector_baseIN6dealii11Polynomials10PolynomialIfEESaIS3_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt16allocator_traitsISaIN6dealii11Polynomials10PolynomialIfEEEE8max_sizeERKS4_ = comdat any

$_ZNKSt15__new_allocatorIN6dealii11Polynomials10PolynomialIfEEE8max_sizeEv = comdat any

$_ZNKSt15__new_allocatorIN6dealii11Polynomials10PolynomialIfEEE11_M_max_sizeEv = comdat any

$_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIfEESaIS3_EE11_M_allocateEm = comdat any

$_ZSt22__uninitialized_copy_aIPKN6dealii11Polynomials10PolynomialIfEEPS3_S3_ET0_T_S8_S7_RSaIT1_E = comdat any

$_ZNSt16allocator_traitsISaIN6dealii11Polynomials10PolynomialIfEEEE8allocateERS4_m = comdat any

$_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIfEEE8allocateEmPKv = comdat any

$_ZSt18uninitialized_copyIPKN6dealii11Polynomials10PolynomialIfEEPS3_ET0_T_S8_S7_ = comdat any

$_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPKN6dealii11Polynomials10PolynomialIfEEPS5_EET0_T_SA_S9_ = comdat any

$_ZSt16__do_uninit_copyIPKN6dealii11Polynomials10PolynomialIfEEPS3_ET0_T_S8_S7_ = comdat any

$_ZSt10_ConstructIN6dealii11Polynomials10PolynomialIfEEJRKS3_EEvPT_DpOT0_ = comdat any

$_ZN6dealii11Polynomials10PolynomialIfEC2ERKS2_ = comdat any

$_ZNSt6vectorIN6dealii11Polynomials10PolynomialIfEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_ = comdat any

$_ZNSt16allocator_traitsISaIN6dealii11Polynomials10PolynomialIfEEEE9constructIS3_JS3_EEEvRS4_PT_DpOT0_ = comdat any

$_ZNSt6vectorIN6dealii11Polynomials10PolynomialIfEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_ = comdat any

$_ZNSt6vectorIN6dealii11Polynomials10PolynomialIfEESaIS3_EE3endEv = comdat any

$_ZNSt6vectorIN6dealii11Polynomials10PolynomialIfEESaIS3_EE4backEv = comdat any

$_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIfEEE9constructIS3_JS3_EEEvPT_DpOT0_ = comdat any

$_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIfEESaIS3_EE12_M_check_lenEmPKc = comdat any

$_ZN9__gnu_cxxmiIPN6dealii11Polynomials10PolynomialIfEESt6vectorIS4_SaIS4_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSC_SF_ = comdat any

$_ZNSt6vectorIN6dealii11Polynomials10PolynomialIfEESaIS3_EE5beginEv = comdat any

$_ZSt34__uninitialized_move_if_noexcept_aIPN6dealii11Polynomials10PolynomialIfEES4_SaIS3_EET0_T_S7_S6_RT1_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPN6dealii11Polynomials10PolynomialIfEESt6vectorIS4_SaIS4_EEE4baseEv = comdat any

$_ZNSt16allocator_traitsISaIN6dealii11Polynomials10PolynomialIfEEEE7destroyIS3_EEvRS4_PT_ = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPN6dealii11Polynomials10PolynomialIfEESt6vectorIS4_SaIS4_EEEC2ERKS5_ = comdat any

$_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIfEEE7destroyIS3_EEvPT_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPN6dealii11Polynomials10PolynomialIfEESt6vectorIS4_SaIS4_EEEmiEl = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPN6dealii11Polynomials10PolynomialIfEESt6vectorIS4_SaIS4_EEEdeEv = comdat any

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

@_ZN12_GLOBAL__N_12_1E = internal global %"struct.boost::arg" zeroinitializer, align 1
@_ZN12_GLOBAL__N_12_2E = internal global %"struct.boost::arg.0" zeroinitializer, align 1
@_ZN12_GLOBAL__N_12_3E = internal global %"struct.boost::arg.2" zeroinitializer, align 1
@_ZN12_GLOBAL__N_12_4E = internal global %"struct.boost::arg.4" zeroinitializer, align 1
@_ZN12_GLOBAL__N_12_5E = internal global %"struct.boost::arg.6" zeroinitializer, align 1
@_ZN12_GLOBAL__N_12_6E = internal global %"struct.boost::arg.8" zeroinitializer, align 1
@_ZN12_GLOBAL__N_12_7E = internal global %"struct.boost::arg.10" zeroinitializer, align 1
@_ZN12_GLOBAL__N_12_8E = internal global %"struct.boost::arg.12" zeroinitializer, align 1
@_ZN12_GLOBAL__N_12_9E = internal global %"struct.boost::arg.14" zeroinitializer, align 1
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
@_ZN6dealii12_GLOBAL__N_117coefficients_lockE = internal global %"class.dealii::Threads::DummyThreadMutex" zeroinitializer, align 1
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

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN5boost3argILi1EEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZN12_GLOBAL__N_12_1E) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN5boost3argILi1EEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !309 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @__cxx_global_var_init.1() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN5boost3argILi2EEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZN12_GLOBAL__N_12_2E) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN5boost3argILi2EEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !309 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @__cxx_global_var_init.2() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN5boost3argILi3EEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZN12_GLOBAL__N_12_3E) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN5boost3argILi3EEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !309 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @__cxx_global_var_init.3() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN5boost3argILi4EEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZN12_GLOBAL__N_12_4E) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN5boost3argILi4EEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !309 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @__cxx_global_var_init.4() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN5boost3argILi5EEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZN12_GLOBAL__N_12_5E) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN5boost3argILi5EEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !309 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @__cxx_global_var_init.5() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN5boost3argILi6EEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZN12_GLOBAL__N_12_6E) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN5boost3argILi6EEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !309 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @__cxx_global_var_init.6() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN5boost3argILi7EEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZN12_GLOBAL__N_12_7E) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN5boost3argILi7EEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !309 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @__cxx_global_var_init.7() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN5boost3argILi8EEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZN12_GLOBAL__N_12_8E) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN5boost3argILi8EEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !309 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @__cxx_global_var_init.8() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN5boost3argILi9EEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZN12_GLOBAL__N_12_9E) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN5boost3argILi9EEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !309 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii11Polynomials10PolynomialIfEC2ERKSt6vectorIfSaIfEE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 comdat($_ZN6dealii11Polynomials10PolynomialIfEC5ERKSt6vectorIfSaIfEE) align 2 personality ptr @__gxx_personality_v0 !prof !310 {
  tail call void @_ZN6dealii11SubscriptorC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #18
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials10PolynomialIfEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !311
  %3 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %0, i64 0, i32 1
  invoke void @_ZNSt6vectorIfSaIfEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %1) #18
          to label %4 unwind label %5

4:                                                ; preds = %2
  ret void

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #19
  resume { ptr, i32 } %6
}

; Function Attrs: optsize
declare void @_ZN6dealii11SubscriptorC2Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIfSaIfEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !310 {
  %3 = alloca %"class.std::allocator.16", align 1
  %4 = tail call noundef i64 @_ZNKSt6vectorIfSaIfEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #20
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIfEfE17_S_select_on_copyERKS1_(ptr dead_on_unwind nonnull writable sret(%"class.std::allocator.16") align 1 %3, ptr noundef nonnull align 1 dereferenceable(1) %5) #18
  invoke void @_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %3) #18
          to label %6 unwind label %14

6:                                                ; preds = %2
  call void @_ZNSt15__new_allocatorIfED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #20
  %7 = call ptr @_ZNKSt6vectorIfSaIfEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  %8 = call ptr @_ZNKSt6vectorIfSaIfEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  %9 = load ptr, ptr %0, align 8, !tbaa !314
  %10 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %11 = invoke noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEPffET0_T_SA_S9_RSaIT1_E(ptr %7, ptr %8, ptr noundef %9, ptr noundef nonnull align 1 dereferenceable(1) %10) #18
          to label %12 unwind label %16

12:                                               ; preds = %6
  %13 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !318
  ret void

14:                                               ; preds = %2
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIfED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #20
  br label %18

16:                                               ; preds = %6
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12_Vector_baseIfSaIfEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  resume { ptr, i32 } %19
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind optsize
declare void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii11Polynomials10PolynomialIfEC2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #2 comdat($_ZN6dealii11Polynomials10PolynomialIfEC5Ev) align 2 !prof !310 {
  tail call void @_ZN6dealii11SubscriptorC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #18
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials10PolynomialIfEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !311
  %2 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %0, i64 0, i32 1
  tail call void @_ZNSt6vectorIfSaIfEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIfSaIfEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 !prof !310 {
  tail call void @_ZNSt12_Vector_baseIfSaIfEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef float @_ZNK6dealii11Polynomials10PolynomialIfE5valueEf(ptr noundef nonnull align 8 dereferenceable(96) %0, float noundef %1) local_unnamed_addr #1 comdat align 2 !prof !310 {
  %3 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %0, i64 0, i32 1
  %4 = tail call noundef i64 @_ZNKSt6vectorIfSaIfEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #19
  %5 = trunc i64 %4 to i32
  %6 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNKSt6vectorIfSaIfEE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #19
  %7 = load float, ptr %6, align 4, !tbaa !319
  %8 = add i32 %5, -2
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = zext nneg i32 %8 to i64
  br label %14

12:                                               ; preds = %14, %2
  %13 = phi float [ %7, %2 ], [ %19, %14 ]
  ret float %13

14:                                               ; preds = %10, %14
  %15 = phi i64 [ %11, %10 ], [ %20, %14 ]
  %16 = phi float [ %7, %10 ], [ %19, %14 ]
  %17 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNKSt6vectorIfSaIfEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %15) #19
  %18 = load float, ptr %17, align 4, !tbaa !319
  %19 = tail call float @llvm.fmuladd.f32(float %16, float %1, float %18)
  %20 = add nsw i64 %15, -1
  %21 = icmp eq i64 %15, 0
  br i1 %21, label %12, label %14, !llvm.loop !321
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIfSaIfEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !310 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !318
  %4 = load ptr, ptr %0, align 8, !tbaa !314
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 2
  ret i64 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZNKSt6vectorIfSaIfEE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !310 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.50", align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.50", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  %4 = tail call ptr @_ZNKSt6vectorIfSaIfEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  store ptr %4, ptr %3, align 8
  %5 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEmiEl(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 1) #19
  store ptr %5, ptr %2, align 8
  %6 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZNKSt6vectorIfSaIfEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !310 {
  %3 = load ptr, ptr %0, align 8, !tbaa !314
  %4 = getelementptr inbounds float, ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii11Polynomials10PolynomialIfE5valueEfRSt6vectorIfSaIfEE(ptr noundef nonnull align 8 dereferenceable(96) %0, float noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !310 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %"class.std::vector", align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  %7 = tail call noundef i64 @_ZNKSt6vectorIfSaIfEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #19
  %8 = trunc i64 %7 to i32
  store i32 %8, ptr %4, align 4, !tbaa !323
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = tail call noundef float @_ZNK6dealii11Polynomials10PolynomialIfE5valueEf(ptr noundef nonnull align 8 dereferenceable(96) %0, float noundef %1) #18
  %12 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIfSaIfEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 0) #19
  store float %11, ptr %12, align 4, !tbaa !319
  br label %62

13:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  %14 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %0, i64 0, i32 1
  %15 = tail call noundef i64 @_ZNKSt6vectorIfSaIfEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %14) #19
  %16 = trunc i64 %15 to i32
  store i32 %16, ptr %5, align 4, !tbaa !323
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #20
  call void @_ZNSt6vectorIfSaIfEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %14) #18
  %17 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIjERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) #18
  %18 = load i32, ptr %17, align 4, !tbaa !323
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %34, %13
  %21 = load i32, ptr %4, align 4, !tbaa !323
  %22 = icmp ult i32 %18, %21
  br i1 %22, label %23, label %54

23:                                               ; preds = %20
  %24 = zext i32 %18 to i64
  br label %55

25:                                               ; preds = %13, %34
  %26 = phi i32 [ %41, %34 ], [ 0, %13 ]
  %27 = phi i32 [ %42, %34 ], [ 1, %13 ]
  %28 = load i32, ptr %5, align 4, !tbaa !323
  %29 = add i32 %28, -2
  %30 = icmp slt i32 %29, %26
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = sext i32 %29 to i64
  %33 = sext i32 %26 to i64
  br label %44

34:                                               ; preds = %44, %25
  %35 = uitofp i32 %27 to float
  %36 = zext i32 %26 to i64
  %37 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIfSaIfEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %36) #19
  %38 = load float, ptr %37, align 4, !tbaa !319
  %39 = fmul float %38, %35
  %40 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIfSaIfEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %36) #19
  store float %39, ptr %40, align 4, !tbaa !319
  %41 = add nuw i32 %26, 1
  %42 = mul i32 %41, %27
  %43 = icmp eq i32 %41, %18
  br i1 %43, label %20, label %25, !llvm.loop !325

44:                                               ; preds = %31, %44
  %45 = phi i64 [ %32, %31 ], [ %52, %44 ]
  %46 = add nsw i64 %45, 1
  %47 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIfSaIfEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %46) #19
  %48 = load float, ptr %47, align 4, !tbaa !319
  %49 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIfSaIfEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %45) #19
  %50 = load float, ptr %49, align 4, !tbaa !319
  %51 = call float @llvm.fmuladd.f32(float %1, float %48, float %50)
  store float %51, ptr %49, align 4, !tbaa !319
  %52 = add nsw i64 %45, -1
  %53 = icmp sgt i64 %45, %33
  br i1 %53, label %44, label %34, !llvm.loop !326

54:                                               ; preds = %55, %20
  call void @_ZNSt6vectorIfSaIfEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  br label %62

55:                                               ; preds = %23, %55
  %56 = phi i64 [ %24, %23 ], [ %58, %55 ]
  %57 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIfSaIfEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %56) #19
  store float 0.000000e+00, ptr %57, align 4, !tbaa !319
  %58 = add nuw nsw i64 %56, 1
  %59 = load i32, ptr %4, align 4, !tbaa !323
  %60 = zext i32 %59 to i64
  %61 = icmp ult i64 %58, %60
  br i1 %61, label %55, label %54, !llvm.loop !327

62:                                               ; preds = %54, %10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIfSaIfEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !310 {
  %3 = load ptr, ptr %0, align 8, !tbaa !314
  %4 = getelementptr inbounds float, ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIjERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #1 comdat !prof !328 {
  %3 = load i32, ptr %1, align 4, !tbaa !323
  %4 = load i32, ptr %0, align 4, !tbaa !323
  %5 = icmp ult i32 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0, !prof !329
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIfSaIfEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !310 {
  %2 = load ptr, ptr %0, align 8, !tbaa !314
  %3 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !318
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  invoke void @_ZSt8_DestroyIPffEvT_S1_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #18
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseIfSaIfEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #21
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii11Polynomials10PolynomialIfE6degreeEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #1 comdat align 2 !prof !310 {
  %2 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %0, i64 0, i32 1
  %3 = tail call noundef i64 @_ZNKSt6vectorIfSaIfEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #19
  %4 = trunc i64 %3 to i32
  %5 = add i32 %4, -1
  ret i32 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii11Polynomials10PolynomialIfE5scaleEf(ptr noundef nonnull align 8 dereferenceable(96) %0, float noundef %1) local_unnamed_addr #2 comdat align 2 !prof !310 {
  %3 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %0, i64 0, i32 1
  tail call void @_ZN6dealii11Polynomials10PolynomialIfE5scaleERSt6vectorIfSaIfEEf(ptr noundef nonnull align 8 dereferenceable(24) %3, float noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii11Polynomials10PolynomialIfE5scaleERSt6vectorIfSaIfEEf(ptr noundef nonnull align 8 dereferenceable(24) %0, float noundef %1) local_unnamed_addr #1 comdat align 2 !prof !310 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  %5 = tail call ptr @_ZNSt6vectorIfSaIfEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  store ptr %5, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  %6 = tail call ptr @_ZNSt6vectorIfSaIfEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  store ptr %6, ptr %4, align 8
  %7 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPfSt6vectorIfSaIfEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = fpext float %1 to double
  br label %11

10:                                               ; preds = %11, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  ret void

11:                                               ; preds = %8, %11
  %12 = phi double [ 1.000000e+00, %8 ], [ %18, %11 ]
  %13 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #19
  %14 = load float, ptr %13, align 4, !tbaa !319
  %15 = fpext float %14 to double
  %16 = fmul double %12, %15
  %17 = fptrunc double %16 to float
  store float %17, ptr %13, align 4, !tbaa !319
  %18 = fmul double %12, %9
  %19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  %20 = call ptr @_ZNSt6vectorIfSaIfEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  store ptr %20, ptr %4, align 8
  %21 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPfSt6vectorIfSaIfEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  br i1 %21, label %11, label %10, !llvm.loop !330
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii11Polynomials10PolynomialIfE10derivativeEv(ptr dead_on_unwind noalias writable sret(%"class.dealii::Polynomials::Polynomial") align 8 %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !310 {
  %3 = alloca %"class.dealii::Polynomials::Monomial", align 8
  %4 = alloca %"class.std::vector", align 8
  %5 = alloca %"class.std::allocator.16", align 1
  %6 = tail call noundef i32 @_ZNK6dealii11Polynomials10PolynomialIfE6degreeEv(ptr noundef nonnull align 8 dereferenceable(96) %1) #18
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %3) #20
  call void @_ZN6dealii11Polynomials8MonomialIfEC1Ejd(ptr noundef nonnull align 8 dereferenceable(96) %3, i32 noundef 0, double noundef 0.000000e+00) #18
  invoke void @_ZN6dealii11Polynomials10PolynomialIfEC2EOS2_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %3) #18
          to label %9 unwind label %10

9:                                                ; preds = %8
  call void @_ZN6dealii11Polynomials10PolynomialIfED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %3) #19
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #20
  br label %41

10:                                               ; preds = %8
  %11 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6dealii11Polynomials10PolynomialIfED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %3) #19
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #20
  br label %42

12:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #20
  %13 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %1, i64 0, i32 1
  %14 = tail call noundef i64 @_ZNKSt6vectorIfSaIfEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %13) #19
  %15 = add i64 %14, -1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #20
  call void @_ZNSaIfEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #19
  invoke void @_ZNSt6vectorIfSaIfEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %15, ptr noundef nonnull align 1 dereferenceable(1) %5) #18
          to label %16 unwind label %20

16:                                               ; preds = %12
  call void @_ZNSt15__new_allocatorIfED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #20
  %17 = call noundef i64 @_ZNKSt6vectorIfSaIfEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %13) #19
  %18 = icmp ugt i64 %17, 1
  br i1 %18, label %22, label %19

19:                                               ; preds = %22, %16
  invoke void @_ZN6dealii11Polynomials10PolynomialIfEC1ERKSt6vectorIfSaIfEE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(24) %4) #18
          to label %36 unwind label %37

20:                                               ; preds = %12
  %21 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIfED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #20
  br label %39

22:                                               ; preds = %16, %22
  %23 = phi i64 [ %33, %22 ], [ 1, %16 ]
  %24 = phi i32 [ %32, %22 ], [ 1, %16 ]
  %25 = uitofp i32 %24 to float
  %26 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNKSt6vectorIfSaIfEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %13, i64 noundef %23) #19
  %27 = load float, ptr %26, align 4, !tbaa !319
  %28 = fmul float %27, %25
  %29 = add i32 %24, -1
  %30 = zext i32 %29 to i64
  %31 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIfSaIfEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %30) #19
  store float %28, ptr %31, align 4, !tbaa !319
  %32 = add i32 %24, 1
  %33 = zext i32 %32 to i64
  %34 = call noundef i64 @_ZNKSt6vectorIfSaIfEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %13) #19
  %35 = icmp ugt i64 %34, %33
  br i1 %35, label %22, label %19, !llvm.loop !331

36:                                               ; preds = %19
  call void @_ZNSt6vectorIfSaIfEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #20
  br label %41

37:                                               ; preds = %19
  %38 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIfSaIfEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #19
  br label %39

39:                                               ; preds = %37, %20
  %40 = phi { ptr, i32 } [ %38, %37 ], [ %21, %20 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #20
  br label %42

41:                                               ; preds = %36, %9
  ret void

42:                                               ; preds = %39, %10
  %43 = phi { ptr, i32 } [ %11, %10 ], [ %40, %39 ]
  resume { ptr, i32 } %43
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii11Polynomials10PolynomialIfEC2EOS2_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) unnamed_addr #2 comdat align 2 {
  tail call void @_ZN6dealii11SubscriptorC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) #18
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials10PolynomialIfEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !311
  %3 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %1, i64 0, i32 1
  tail call void @_ZNSt6vectorIfSaIfEEC2EOS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIfEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !310 {
  tail call void @_ZNSt15__new_allocatorIfEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIfSaIfEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = tail call noundef i64 @_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_(i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #18
  tail call void @_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %2) #18
  invoke void @_ZNSt6vectorIfSaIfEE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #18
          to label %5 unwind label %6

5:                                                ; preds = %3
  ret void

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt12_Vector_baseIfSaIfEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIfED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !310 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii11Polynomials10PolynomialIfE9primitiveEv(ptr dead_on_unwind noalias writable sret(%"class.dealii::Polynomials::Polynomial") align 8 %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !310 {
  %3 = alloca %"class.std::vector", align 8
  %4 = alloca %"class.std::allocator.16", align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #20
  %5 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %1, i64 0, i32 1
  %6 = tail call noundef i64 @_ZNKSt6vectorIfSaIfEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #19
  %7 = add i64 %6, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #20
  call void @_ZNSaIfEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #19
  invoke void @_ZNSt6vectorIfSaIfEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %7, ptr noundef nonnull align 1 dereferenceable(1) %4) #18
          to label %8 unwind label %13

8:                                                ; preds = %2
  call void @_ZNSt15__new_allocatorIfED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #20
  %9 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIfSaIfEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 0) #19
  store float 0.000000e+00, ptr %9, align 4, !tbaa !319
  %10 = call noundef i64 @_ZNKSt6vectorIfSaIfEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #19
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %15, %8
  invoke void @_ZN6dealii11Polynomials10PolynomialIfEC1ERKSt6vectorIfSaIfEE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(24) %3) #18
          to label %30 unwind label %31

13:                                               ; preds = %2
  %14 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIfED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #20
  br label %33

15:                                               ; preds = %8, %15
  %16 = phi i64 [ %26, %15 ], [ 0, %8 ]
  %17 = phi i32 [ %25, %15 ], [ 0, %8 ]
  %18 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNKSt6vectorIfSaIfEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %16) #19
  %19 = load float, ptr %18, align 4, !tbaa !319
  %20 = fpext float %19 to double
  %21 = uitofp i32 %17 to double
  %22 = fadd double %21, 1.000000e+00
  %23 = fdiv double %20, %22
  %24 = fptrunc double %23 to float
  %25 = add i32 %17, 1
  %26 = zext i32 %25 to i64
  %27 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIfSaIfEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %26) #19
  store float %24, ptr %27, align 4, !tbaa !319
  %28 = call noundef i64 @_ZNKSt6vectorIfSaIfEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #19
  %29 = icmp ugt i64 %28, %26
  br i1 %29, label %15, label %12, !llvm.loop !332

30:                                               ; preds = %12
  call void @_ZNSt6vectorIfSaIfEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20
  ret void

31:                                               ; preds = %12
  %32 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIfSaIfEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #19
  br label %33

33:                                               ; preds = %31, %13
  %34 = phi { ptr, i32 } [ %32, %31 ], [ %14, %13 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20
  resume { ptr, i32 } %34
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef nonnull align 8 dereferenceable(96) ptr @_ZN6dealii11Polynomials10PolynomialIfEmLEd(ptr noundef nonnull align 8 dereferenceable(96) %0, double noundef %1) local_unnamed_addr #1 comdat align 2 !prof !310 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  %5 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %0, i64 0, i32 1
  %6 = tail call ptr @_ZNSt6vectorIfSaIfEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #19
  store ptr %6, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  %7 = tail call ptr @_ZNSt6vectorIfSaIfEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #19
  store ptr %7, ptr %4, align 8
  %8 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPfSt6vectorIfSaIfEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  br i1 %8, label %10, label %9

9:                                                ; preds = %10, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  ret ptr %0

10:                                               ; preds = %2, %10
  %11 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #19
  %12 = load float, ptr %11, align 4, !tbaa !319
  %13 = fpext float %12 to double
  %14 = fmul double %13, %1
  %15 = fptrunc double %14 to float
  store float %15, ptr %11, align 4, !tbaa !319
  %16 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  %17 = call ptr @_ZNSt6vectorIfSaIfEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #19
  store ptr %17, ptr %4, align 8
  %18 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPfSt6vectorIfSaIfEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  br i1 %18, label %10, label %9, !llvm.loop !333
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIfSaIfEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !310 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #19
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxxneIPfSt6vectorIfSaIfEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat !prof !310 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #19
  %4 = load ptr, ptr %3, align 8, !tbaa !334
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #19
  %6 = load ptr, ptr %5, align 8, !tbaa !334
  %7 = icmp ne ptr %4, %6
  ret i1 %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIfSaIfEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !310 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #19
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !310 {
  %2 = load ptr, ptr %0, align 8, !tbaa !335
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !310 {
  %2 = load ptr, ptr %0, align 8, !tbaa !335
  %3 = getelementptr inbounds float, ptr %2, i64 1
  store ptr %3, ptr %0, align 8, !tbaa !335
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef nonnull align 8 dereferenceable(96) ptr @_ZN6dealii11Polynomials10PolynomialIfEmLERKS2_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !310 {
  %3 = alloca %"class.std::vector", align 8
  %4 = alloca float, align 4
  %5 = alloca %"class.std::allocator.16", align 1
  %6 = tail call noundef i32 @_ZNK6dealii11Polynomials10PolynomialIfE6degreeEv(ptr noundef nonnull align 8 dereferenceable(96) %0) #18
  %7 = tail call noundef i32 @_ZNK6dealii11Polynomials10PolynomialIfE6degreeEv(ptr noundef nonnull align 8 dereferenceable(96) %1) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #20
  %8 = add i32 %6, 1
  %9 = add i32 %8, %7
  %10 = zext i32 %9 to i64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  store float 0.000000e+00, ptr %4, align 4, !tbaa !319
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #20
  call void @_ZNSaIfEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #19
  invoke void @_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %10, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #18
          to label %11 unwind label %25

11:                                               ; preds = %2
  call void @_ZNSt15__new_allocatorIfED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  %12 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %1, i64 0, i32 1
  %13 = call noundef i64 @_ZNKSt6vectorIfSaIfEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %12) #19
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %0, i64 0, i32 1
  br label %17

17:                                               ; preds = %15, %27
  %18 = phi i64 [ 0, %15 ], [ %29, %27 ]
  %19 = phi i32 [ 0, %15 ], [ %28, %27 ]
  %20 = call noundef i64 @_ZNKSt6vectorIfSaIfEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %16) #19
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %27, label %32

22:                                               ; preds = %27, %11
  %23 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %0, i64 0, i32 1
  %24 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIfSaIfEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(24) %3) #18
          to label %48 unwind label %49

25:                                               ; preds = %2
  %26 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIfED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  br label %51

27:                                               ; preds = %32, %17
  %28 = add i32 %19, 1
  %29 = zext i32 %28 to i64
  %30 = call noundef i64 @_ZNKSt6vectorIfSaIfEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %12) #19
  %31 = icmp ugt i64 %30, %29
  br i1 %31, label %17, label %22, !llvm.loop !337

32:                                               ; preds = %17, %32
  %33 = phi i64 [ %45, %32 ], [ 0, %17 ]
  %34 = phi i32 [ %44, %32 ], [ 0, %17 ]
  %35 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIfSaIfEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %16, i64 noundef %33) #19
  %36 = load float, ptr %35, align 4, !tbaa !319
  %37 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNKSt6vectorIfSaIfEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %12, i64 noundef %18) #19
  %38 = load float, ptr %37, align 4, !tbaa !319
  %39 = add i32 %34, %19
  %40 = zext i32 %39 to i64
  %41 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIfSaIfEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %40) #19
  %42 = load float, ptr %41, align 4, !tbaa !319
  %43 = call float @llvm.fmuladd.f32(float %36, float %38, float %42)
  store float %43, ptr %41, align 4, !tbaa !319
  %44 = add i32 %34, 1
  %45 = zext i32 %44 to i64
  %46 = call noundef i64 @_ZNKSt6vectorIfSaIfEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %16) #19
  %47 = icmp ugt i64 %46, %45
  br i1 %47, label %32, label %27, !llvm.loop !338

48:                                               ; preds = %22
  call void @_ZNSt6vectorIfSaIfEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20
  ret ptr %0

49:                                               ; preds = %22
  %50 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIfSaIfEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #19
  br label %51

51:                                               ; preds = %49, %25
  %52 = phi { ptr, i32 } [ %50, %49 ], [ %26, %25 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20
  resume { ptr, i32 } %52
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !310 {
  %5 = tail call noundef i64 @_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_(i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %3) #18
  tail call void @_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %5, ptr noundef nonnull align 1 dereferenceable(1) %3) #18
  invoke void @_ZNSt6vectorIfSaIfEE18_M_fill_initializeEmRKf(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #18
          to label %6 unwind label %7

6:                                                ; preds = %4
  ret void

7:                                                ; preds = %4
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt12_Vector_baseIfSaIfEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIfSaIfEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 {
  %3 = icmp eq ptr %1, %0
  br i1 %3, label %53, label %4

4:                                                ; preds = %2
  %5 = tail call noundef i64 @_ZNKSt6vectorIfSaIfEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  %6 = tail call noundef i64 @_ZNKSt6vectorIfSaIfEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %7 = icmp ugt i64 %5, %6
  br i1 %7, label %8, label %24

8:                                                ; preds = %4
  %9 = tail call ptr @_ZNKSt6vectorIfSaIfEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  %10 = tail call ptr @_ZNKSt6vectorIfSaIfEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  %11 = tail call noundef ptr @_ZNSt6vectorIfSaIfEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKfS1_EEEEPfmT_S9_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %5, ptr %9, ptr %10) #18
  %12 = load ptr, ptr %0, align 8, !tbaa !314
  %13 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !318
  %15 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  tail call void @_ZSt8_DestroyIPffEvT_S1_RSaIT0_E(ptr noundef %12, ptr noundef %14, ptr noundef nonnull align 1 dereferenceable(1) %15) #18
  %16 = load ptr, ptr %0, align 8, !tbaa !314
  %17 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !339
  %19 = ptrtoint ptr %18 to i64
  %20 = ptrtoint ptr %16 to i64
  %21 = sub i64 %19, %20
  %22 = ashr exact i64 %21, 2
  tail call void @_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %16, i64 noundef %22) #18
  store ptr %11, ptr %0, align 8, !tbaa !314
  %23 = getelementptr inbounds float, ptr %11, i64 %5
  store ptr %23, ptr %17, align 8, !tbaa !339
  br label %49

24:                                               ; preds = %4
  %25 = tail call noundef i64 @_ZNKSt6vectorIfSaIfEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %26 = icmp ult i64 %25, %5
  br i1 %26, label %34, label %27

27:                                               ; preds = %24
  %28 = tail call ptr @_ZNKSt6vectorIfSaIfEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  %29 = tail call ptr @_ZNKSt6vectorIfSaIfEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  %30 = tail call ptr @_ZNSt6vectorIfSaIfEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %31 = tail call ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_(ptr %28, ptr %29, ptr %30) #18
  %32 = tail call ptr @_ZNSt6vectorIfSaIfEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %33 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  tail call void @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfEvT_S7_RSaIT0_E(ptr %31, ptr %32, ptr noundef nonnull align 1 dereferenceable(1) %33) #18
  br label %49

34:                                               ; preds = %24
  %35 = load ptr, ptr %1, align 8, !tbaa !314
  %36 = tail call noundef i64 @_ZNKSt6vectorIfSaIfEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %37 = getelementptr inbounds float, ptr %35, i64 %36
  %38 = load ptr, ptr %0, align 8, !tbaa !314
  %39 = tail call noundef ptr @_ZSt4copyIPfS0_ET0_T_S2_S1_(ptr noundef %35, ptr noundef %37, ptr noundef %38) #18
  %40 = load ptr, ptr %1, align 8, !tbaa !314
  %41 = tail call noundef i64 @_ZNKSt6vectorIfSaIfEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %42 = getelementptr inbounds float, ptr %40, i64 %41
  %43 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !318
  %45 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !318
  %47 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %48 = tail call noundef ptr @_ZSt22__uninitialized_copy_aIPfS0_fET0_T_S2_S1_RSaIT1_E(ptr noundef %42, ptr noundef %44, ptr noundef %46, ptr noundef nonnull align 1 dereferenceable(1) %47) #18
  br label %49

49:                                               ; preds = %27, %34, %8
  %50 = load ptr, ptr %0, align 8, !tbaa !314
  %51 = getelementptr inbounds float, ptr %50, i64 %5
  %52 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %51, ptr %52, align 8, !tbaa !318
  br label %53

53:                                               ; preds = %49, %2
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef nonnull align 8 dereferenceable(96) ptr @_ZN6dealii11Polynomials10PolynomialIfEpLERKS2_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #2 comdat align 2 !prof !310 {
  %3 = alloca float, align 4
  %4 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %1, i64 0, i32 1
  %5 = tail call noundef i64 @_ZNKSt6vectorIfSaIfEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #19
  %6 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %0, i64 0, i32 1
  %7 = tail call noundef i64 @_ZNKSt6vectorIfSaIfEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #19
  %8 = icmp ugt i64 %5, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = tail call noundef i64 @_ZNKSt6vectorIfSaIfEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #20
  store float 0.000000e+00, ptr %3, align 4, !tbaa !319
  call void @_ZNSt6vectorIfSaIfEE6resizeEmRKf(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %10, ptr noundef nonnull align 4 dereferenceable(4) %3) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #20
  br label %11

11:                                               ; preds = %9, %2
  %12 = call noundef i64 @_ZNKSt6vectorIfSaIfEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #19
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %15, %11
  ret ptr %0

15:                                               ; preds = %11, %15
  %16 = phi i64 [ %24, %15 ], [ 0, %11 ]
  %17 = phi i32 [ %23, %15 ], [ 0, %11 ]
  %18 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNKSt6vectorIfSaIfEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %16) #19
  %19 = load float, ptr %18, align 4, !tbaa !319
  %20 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIfSaIfEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %16) #19
  %21 = load float, ptr %20, align 4, !tbaa !319
  %22 = fadd float %19, %21
  store float %22, ptr %20, align 4, !tbaa !319
  %23 = add i32 %17, 1
  %24 = zext i32 %23 to i64
  %25 = call noundef i64 @_ZNKSt6vectorIfSaIfEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #19
  %26 = icmp ugt i64 %25, %24
  br i1 %26, label %15, label %14, !llvm.loop !340
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIfSaIfEE6resizeEmRKf(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #2 comdat align 2 {
  %4 = tail call noundef i64 @_ZNKSt6vectorIfSaIfEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = tail call ptr @_ZNSt6vectorIfSaIfEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %8 = tail call noundef i64 @_ZNKSt6vectorIfSaIfEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %9 = sub i64 %1, %8
  tail call void @_ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEmRKf(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %7, i64 noundef %9, ptr noundef nonnull align 4 dereferenceable(4) %2) #18
  br label %16

10:                                               ; preds = %3
  %11 = tail call noundef i64 @_ZNKSt6vectorIfSaIfEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %12 = icmp ugt i64 %11, %1
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load ptr, ptr %0, align 8, !tbaa !314
  %15 = getelementptr inbounds float, ptr %14, i64 %1
  tail call void @_ZNSt6vectorIfSaIfEE15_M_erase_at_endEPf(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %15) #19
  br label %16

16:                                               ; preds = %10, %13, %6
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef nonnull align 8 dereferenceable(96) ptr @_ZN6dealii11Polynomials10PolynomialIfEmIERKS2_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #2 comdat align 2 !prof !310 {
  %3 = alloca float, align 4
  %4 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %1, i64 0, i32 1
  %5 = tail call noundef i64 @_ZNKSt6vectorIfSaIfEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #19
  %6 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %0, i64 0, i32 1
  %7 = tail call noundef i64 @_ZNKSt6vectorIfSaIfEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #19
  %8 = icmp ugt i64 %5, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = tail call noundef i64 @_ZNKSt6vectorIfSaIfEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #20
  store float 0.000000e+00, ptr %3, align 4, !tbaa !319
  call void @_ZNSt6vectorIfSaIfEE6resizeEmRKf(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %10, ptr noundef nonnull align 4 dereferenceable(4) %3) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #20
  br label %11

11:                                               ; preds = %9, %2
  %12 = call noundef i64 @_ZNKSt6vectorIfSaIfEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #19
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %15, %11
  ret ptr %0

15:                                               ; preds = %11, %15
  %16 = phi i64 [ %24, %15 ], [ 0, %11 ]
  %17 = phi i32 [ %23, %15 ], [ 0, %11 ]
  %18 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNKSt6vectorIfSaIfEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %16) #19
  %19 = load float, ptr %18, align 4, !tbaa !319
  %20 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIfSaIfEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %16) #19
  %21 = load float, ptr %20, align 4, !tbaa !319
  %22 = fsub float %21, %19
  store float %22, ptr %20, align 4, !tbaa !319
  %23 = add i32 %17, 1
  %24 = zext i32 %23 to i64
  %25 = call noundef i64 @_ZNKSt6vectorIfSaIfEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #19
  %26 = icmp ugt i64 %25, %24
  br i1 %26, label %15, label %14, !llvm.loop !341
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii11Polynomials10PolynomialIfE5printERSo(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 !prof !310 {
  %3 = tail call noundef i32 @_ZNK6dealii11Polynomials10PolynomialIfE6degreeEv(ptr noundef nonnull align 8 dereferenceable(96) %0) #18
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %0, i64 0, i32 1
  %7 = zext nneg i32 %3 to i64
  br label %9

8:                                                ; preds = %9, %2
  ret void

9:                                                ; preds = %5, %9
  %10 = phi i64 [ %7, %5 ], [ %19, %9 ]
  %11 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNKSt6vectorIfSaIfEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %10) #19
  %12 = load float, ptr %11, align 4, !tbaa !319
  %13 = fpext float %12 to double
  %14 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEd(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %13) #18
  %15 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull @.str) #18
  %16 = trunc i64 %10 to i32
  %17 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef %16) #18
  %18 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_) #18
  %19 = add nsw i64 %10, -1
  %20 = icmp eq i64 %10, 0
  br i1 %20, label %8, label %9, !llvm.loop !342
}

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEd(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #2 align 2

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii11Polynomials10PolynomialIfE8multiplyERSt6vectorIfSaIfEEf(ptr noundef nonnull align 8 dereferenceable(24) %0, float noundef %1) local_unnamed_addr #1 comdat align 2 !prof !310 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  %5 = tail call ptr @_ZNSt6vectorIfSaIfEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  store ptr %5, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  %6 = tail call ptr @_ZNSt6vectorIfSaIfEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  store ptr %6, ptr %4, align 8
  %7 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPfSt6vectorIfSaIfEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  br i1 %7, label %9, label %8

8:                                                ; preds = %9, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  ret void

9:                                                ; preds = %2, %9
  %10 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #19
  %11 = load float, ptr %10, align 4, !tbaa !319
  %12 = fmul float %11, %1
  store float %12, ptr %10, align 4, !tbaa !319
  %13 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  %14 = call ptr @_ZNSt6vectorIfSaIfEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  store ptr %14, ptr %4, align 8
  %15 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPfSt6vectorIfSaIfEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  br i1 %15, label %9, label %8, !llvm.loop !343
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii11Polynomials10PolynomialIdEC2ERKSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 comdat($_ZN6dealii11Polynomials10PolynomialIdEC5ERKSt6vectorIdSaIdEE) align 2 personality ptr @__gxx_personality_v0 !prof !344 {
  tail call void @_ZN6dealii11SubscriptorC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #18
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials10PolynomialIdEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !311
  %3 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %0, i64 0, i32 1
  invoke void @_ZNSt6vectorIdSaIdEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %1) #18
          to label %4 unwind label %5

4:                                                ; preds = %2
  ret void

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #19
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !345 {
  %3 = alloca %"class.std::allocator.22", align 1
  %4 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #20
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIdEdE17_S_select_on_copyERKS1_(ptr dead_on_unwind nonnull writable sret(%"class.std::allocator.22") align 1 %3, ptr noundef nonnull align 1 dereferenceable(1) %5) #18
  invoke void @_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %3) #18
          to label %6 unwind label %14

6:                                                ; preds = %2
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #20
  %7 = call ptr @_ZNKSt6vectorIdSaIdEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  %8 = call ptr @_ZNKSt6vectorIdSaIdEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  %9 = load ptr, ptr %0, align 8, !tbaa !346
  %10 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %11 = invoke noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPddET0_T_SA_S9_RSaIT1_E(ptr %7, ptr %8, ptr noundef %9, ptr noundef nonnull align 1 dereferenceable(1) %10) #18
          to label %12 unwind label %16

12:                                               ; preds = %6
  %13 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !348
  ret void

14:                                               ; preds = %2
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #20
  br label %18

16:                                               ; preds = %6
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12_Vector_baseIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  resume { ptr, i32 } %19
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii11Polynomials10PolynomialIdEC2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #2 comdat($_ZN6dealii11Polynomials10PolynomialIdEC5Ev) align 2 !prof !349 {
  tail call void @_ZN6dealii11SubscriptorC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #18
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials10PolynomialIdEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !311
  %2 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %0, i64 0, i32 1
  tail call void @_ZNSt6vectorIdSaIdEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 !prof !350 {
  tail call void @_ZNSt12_Vector_baseIdSaIdEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii11Polynomials10PolynomialIdE5valueEd(ptr noundef nonnull align 8 dereferenceable(96) %0, double noundef %1) local_unnamed_addr #1 comdat align 2 !prof !351 {
  %3 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %0, i64 0, i32 1
  %4 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #19
  %5 = trunc i64 %4 to i32
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIdSaIdEE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #19
  %7 = load double, ptr %6, align 8, !tbaa !352
  %8 = add i32 %5, -2
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %10, label %12, !prof !354

10:                                               ; preds = %2
  %11 = zext nneg i32 %8 to i64
  br label %14

12:                                               ; preds = %14, %2
  %13 = phi double [ %7, %2 ], [ %19, %14 ]
  ret double %13

14:                                               ; preds = %10, %14
  %15 = phi i64 [ %11, %10 ], [ %20, %14 ]
  %16 = phi double [ %7, %10 ], [ %19, %14 ]
  %17 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %15) #19
  %18 = load double, ptr %17, align 8, !tbaa !352
  %19 = tail call double @llvm.fmuladd.f64(double %16, double %1, double %18)
  %20 = add nsw i64 %15, -1
  %21 = icmp eq i64 %15, 0
  br i1 %21, label %12, label %14, !prof !355, !llvm.loop !356
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !357 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !348
  %4 = load ptr, ptr %0, align 8, !tbaa !346
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  ret i64 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIdSaIdEE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !351 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.48", align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.48", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  %4 = tail call ptr @_ZNKSt6vectorIdSaIdEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  store ptr %4, ptr %3, align 8
  %5 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEmiEl(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 1) #19
  store ptr %5, ptr %2, align 8
  %6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !358 {
  %3 = load ptr, ptr %0, align 8, !tbaa !346
  %4 = getelementptr inbounds double, ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii11Polynomials10PolynomialIdE5valueEdRSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(96) %0, double noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !359 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %"class.std::vector.20", align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  %7 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #19
  %8 = trunc i64 %7 to i32
  store i32 %8, ptr %4, align 4, !tbaa !323
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %13, !prof !360

10:                                               ; preds = %3
  %11 = tail call noundef double @_ZNK6dealii11Polynomials10PolynomialIdE5valueEd(ptr noundef nonnull align 8 dereferenceable(96) %0, double noundef %1) #18
  %12 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 0) #19
  store double %11, ptr %12, align 8, !tbaa !352
  br label %62

13:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  %14 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %0, i64 0, i32 1
  %15 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %14) #19
  %16 = trunc i64 %15 to i32
  store i32 %16, ptr %5, align 4, !tbaa !323
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #20
  call void @_ZNSt6vectorIdSaIdEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %14) #18
  %17 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIjERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) #18
  %18 = load i32, ptr %17, align 4, !tbaa !323
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25, !prof !361

20:                                               ; preds = %34, %13
  %21 = load i32, ptr %4, align 4, !tbaa !323
  %22 = icmp ult i32 %18, %21
  br i1 %22, label %23, label %54, !prof !362

23:                                               ; preds = %20
  %24 = zext i32 %18 to i64
  br label %55

25:                                               ; preds = %13, %34
  %26 = phi i32 [ %41, %34 ], [ 0, %13 ]
  %27 = phi i32 [ %42, %34 ], [ 1, %13 ]
  %28 = load i32, ptr %5, align 4, !tbaa !323
  %29 = add i32 %28, -2
  %30 = icmp slt i32 %29, %26
  br i1 %30, label %34, label %31, !prof !363

31:                                               ; preds = %25
  %32 = sext i32 %29 to i64
  %33 = sext i32 %26 to i64
  br label %44

34:                                               ; preds = %44, %25
  %35 = uitofp i32 %27 to double
  %36 = zext i32 %26 to i64
  %37 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %36) #19
  %38 = load double, ptr %37, align 8, !tbaa !352
  %39 = fmul double %38, %35
  %40 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %36) #19
  store double %39, ptr %40, align 8, !tbaa !352
  %41 = add nuw i32 %26, 1
  %42 = mul i32 %41, %27
  %43 = icmp eq i32 %41, %18
  br i1 %43, label %20, label %25, !prof !363, !llvm.loop !364

44:                                               ; preds = %31, %44
  %45 = phi i64 [ %32, %31 ], [ %52, %44 ]
  %46 = add nsw i64 %45, 1
  %47 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %46) #19
  %48 = load double, ptr %47, align 8, !tbaa !352
  %49 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %45) #19
  %50 = load double, ptr %49, align 8, !tbaa !352
  %51 = call double @llvm.fmuladd.f64(double %1, double %48, double %50)
  store double %51, ptr %49, align 8, !tbaa !352
  %52 = add nsw i64 %45, -1
  %53 = icmp sgt i64 %45, %33
  br i1 %53, label %44, label %34, !prof !365, !llvm.loop !366

54:                                               ; preds = %55, %20
  call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  br label %62

55:                                               ; preds = %23, %55
  %56 = phi i64 [ %24, %23 ], [ %58, %55 ]
  %57 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %56) #19
  store double 0.000000e+00, ptr %57, align 8, !tbaa !352
  %58 = add nuw nsw i64 %56, 1
  %59 = load i32, ptr %4, align 4, !tbaa !323
  %60 = zext i32 %59 to i64
  %61 = icmp ult i64 %58, %60
  br i1 %61, label %55, label %54, !prof !367, !llvm.loop !368

62:                                               ; preds = %54, %10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !369 {
  %3 = load ptr, ptr %0, align 8, !tbaa !346
  %4 = getelementptr inbounds double, ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !370 {
  %2 = load ptr, ptr %0, align 8, !tbaa !346
  %3 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !348
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  invoke void @_ZSt8_DestroyIPddEvT_S1_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #18
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #21
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii11Polynomials10PolynomialIdE6degreeEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #1 comdat align 2 !prof !371 {
  %2 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %0, i64 0, i32 1
  %3 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #19
  %4 = trunc i64 %3 to i32
  %5 = add i32 %4, -1
  ret i32 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii11Polynomials10PolynomialIdE5scaleEd(ptr noundef nonnull align 8 dereferenceable(96) %0, double noundef %1) local_unnamed_addr #2 comdat align 2 !prof !310 {
  %3 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %0, i64 0, i32 1
  tail call void @_ZN6dealii11Polynomials10PolynomialIdE5scaleERSt6vectorIdSaIdEEd(ptr noundef nonnull align 8 dereferenceable(24) %3, double noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii11Polynomials10PolynomialIdE5scaleERSt6vectorIdSaIdEEd(ptr noundef nonnull align 8 dereferenceable(24) %0, double noundef %1) local_unnamed_addr #1 comdat align 2 !prof !310 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.26", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.26", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  %5 = tail call ptr @_ZNSt6vectorIdSaIdEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  store ptr %5, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  %6 = tail call ptr @_ZNSt6vectorIdSaIdEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  store ptr %6, ptr %4, align 8
  %7 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  br i1 %7, label %9, label %8

8:                                                ; preds = %9, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  ret void

9:                                                ; preds = %2, %9
  %10 = phi double [ %14, %9 ], [ 1.000000e+00, %2 ]
  %11 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #19
  %12 = load double, ptr %11, align 8, !tbaa !352
  %13 = fmul double %10, %12
  store double %13, ptr %11, align 8, !tbaa !352
  %14 = fmul double %10, %1
  %15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  %16 = call ptr @_ZNSt6vectorIdSaIdEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  store ptr %16, ptr %4, align 8
  %17 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  br i1 %17, label %9, label %8, !llvm.loop !372
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii11Polynomials10PolynomialIdE10derivativeEv(ptr dead_on_unwind noalias writable sret(%"class.dealii::Polynomials::Polynomial.19") align 8 %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !310 {
  %3 = alloca %"class.dealii::Polynomials::Monomial.25", align 8
  %4 = alloca %"class.std::vector.20", align 8
  %5 = alloca %"class.std::allocator.22", align 1
  %6 = tail call noundef i32 @_ZNK6dealii11Polynomials10PolynomialIdE6degreeEv(ptr noundef nonnull align 8 dereferenceable(96) %1) #18
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %3) #20
  call void @_ZN6dealii11Polynomials8MonomialIdEC1Ejd(ptr noundef nonnull align 8 dereferenceable(96) %3, i32 noundef 0, double noundef 0.000000e+00) #18
  invoke void @_ZN6dealii11Polynomials10PolynomialIdEC2EOS2_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %3) #18
          to label %9 unwind label %10

9:                                                ; preds = %8
  call void @_ZN6dealii11Polynomials10PolynomialIdED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %3) #19
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #20
  br label %41

10:                                               ; preds = %8
  %11 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6dealii11Polynomials10PolynomialIdED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %3) #19
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #20
  br label %42

12:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #20
  %13 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %1, i64 0, i32 1
  %14 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %13) #19
  %15 = add i64 %14, -1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #20
  call void @_ZNSaIdEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #19
  invoke void @_ZNSt6vectorIdSaIdEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %15, ptr noundef nonnull align 1 dereferenceable(1) %5) #18
          to label %16 unwind label %20

16:                                               ; preds = %12
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #20
  %17 = call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %13) #19
  %18 = icmp ugt i64 %17, 1
  br i1 %18, label %22, label %19

19:                                               ; preds = %22, %16
  invoke void @_ZN6dealii11Polynomials10PolynomialIdEC1ERKSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(24) %4) #18
          to label %36 unwind label %37

20:                                               ; preds = %12
  %21 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #20
  br label %39

22:                                               ; preds = %16, %22
  %23 = phi i64 [ %33, %22 ], [ 1, %16 ]
  %24 = phi i32 [ %32, %22 ], [ 1, %16 ]
  %25 = uitofp i32 %24 to double
  %26 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %13, i64 noundef %23) #19
  %27 = load double, ptr %26, align 8, !tbaa !352
  %28 = fmul double %27, %25
  %29 = add i32 %24, -1
  %30 = zext i32 %29 to i64
  %31 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %30) #19
  store double %28, ptr %31, align 8, !tbaa !352
  %32 = add i32 %24, 1
  %33 = zext i32 %32 to i64
  %34 = call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %13) #19
  %35 = icmp ugt i64 %34, %33
  br i1 %35, label %22, label %19, !llvm.loop !373

36:                                               ; preds = %19
  call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #20
  br label %41

37:                                               ; preds = %19
  %38 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #19
  br label %39

39:                                               ; preds = %37, %20
  %40 = phi { ptr, i32 } [ %38, %37 ], [ %21, %20 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #20
  br label %42

41:                                               ; preds = %36, %9
  ret void

42:                                               ; preds = %39, %10
  %43 = phi { ptr, i32 } [ %11, %10 ], [ %40, %39 ]
  resume { ptr, i32 } %43
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii11Polynomials10PolynomialIdEC2EOS2_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) unnamed_addr #2 comdat align 2 {
  tail call void @_ZN6dealii11SubscriptorC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) #18
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials10PolynomialIdEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !311
  %3 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %1, i64 0, i32 1
  tail call void @_ZNSt6vectorIdSaIdEEC2EOS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIdEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !374 {
  tail call void @_ZNSt15__new_allocatorIdEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = tail call noundef i64 @_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_(i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #18
  tail call void @_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %2) #18
  invoke void @_ZNSt6vectorIdSaIdEE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #18
          to label %5 unwind label %6

5:                                                ; preds = %3
  ret void

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt12_Vector_baseIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !375 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii11Polynomials10PolynomialIdE9primitiveEv(ptr dead_on_unwind noalias writable sret(%"class.dealii::Polynomials::Polynomial.19") align 8 %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !310 {
  %3 = alloca %"class.std::vector.20", align 8
  %4 = alloca %"class.std::allocator.22", align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #20
  %5 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %1, i64 0, i32 1
  %6 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #19
  %7 = add i64 %6, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #20
  call void @_ZNSaIdEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #19
  invoke void @_ZNSt6vectorIdSaIdEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %7, ptr noundef nonnull align 1 dereferenceable(1) %4) #18
          to label %8 unwind label %13

8:                                                ; preds = %2
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #20
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 0) #19
  store double 0.000000e+00, ptr %9, align 8, !tbaa !352
  %10 = call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #19
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %15, %8
  invoke void @_ZN6dealii11Polynomials10PolynomialIdEC1ERKSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(24) %3) #18
          to label %28 unwind label %29

13:                                               ; preds = %2
  %14 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #20
  br label %31

15:                                               ; preds = %8, %15
  %16 = phi i64 [ %24, %15 ], [ 0, %8 ]
  %17 = phi i32 [ %23, %15 ], [ 0, %8 ]
  %18 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %16) #19
  %19 = load double, ptr %18, align 8, !tbaa !352
  %20 = uitofp i32 %17 to double
  %21 = fadd double %20, 1.000000e+00
  %22 = fdiv double %19, %21
  %23 = add i32 %17, 1
  %24 = zext i32 %23 to i64
  %25 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %24) #19
  store double %22, ptr %25, align 8, !tbaa !352
  %26 = call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #19
  %27 = icmp ugt i64 %26, %24
  br i1 %27, label %15, label %12, !llvm.loop !376

28:                                               ; preds = %12
  call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20
  ret void

29:                                               ; preds = %12
  %30 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #19
  br label %31

31:                                               ; preds = %29, %13
  %32 = phi { ptr, i32 } [ %30, %29 ], [ %14, %13 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20
  resume { ptr, i32 } %32
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef nonnull align 8 dereferenceable(96) ptr @_ZN6dealii11Polynomials10PolynomialIdEmLEd(ptr noundef nonnull align 8 dereferenceable(96) %0, double noundef %1) local_unnamed_addr #1 comdat align 2 !prof !377 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.26", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.26", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  %5 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %0, i64 0, i32 1
  %6 = tail call ptr @_ZNSt6vectorIdSaIdEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #19
  store ptr %6, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  %7 = tail call ptr @_ZNSt6vectorIdSaIdEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #19
  store ptr %7, ptr %4, align 8
  %8 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  br i1 %8, label %10, label %9, !prof !378

9:                                                ; preds = %10, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  ret ptr %0

10:                                               ; preds = %2, %10
  %11 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #19
  %12 = load double, ptr %11, align 8, !tbaa !352
  %13 = fmul double %12, %1
  store double %13, ptr %11, align 8, !tbaa !352
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  %15 = call ptr @_ZNSt6vectorIdSaIdEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #19
  store ptr %15, ptr %4, align 8
  %16 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  br i1 %16, label %10, label %9, !prof !379, !llvm.loop !380
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIdSaIdEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !381 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.26", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #19
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxxneIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat !prof !382 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #19
  %4 = load ptr, ptr %3, align 8, !tbaa !334
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #19
  %6 = load ptr, ptr %5, align 8, !tbaa !334
  %7 = icmp ne ptr %4, %6
  ret i1 %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIdSaIdEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !383 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.26", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #19
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !384 {
  %2 = load ptr, ptr %0, align 8, !tbaa !385
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !387 {
  %2 = load ptr, ptr %0, align 8, !tbaa !385
  %3 = getelementptr inbounds double, ptr %2, i64 1
  store ptr %3, ptr %0, align 8, !tbaa !385
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef nonnull align 8 dereferenceable(96) ptr @_ZN6dealii11Polynomials10PolynomialIdEmLERKS2_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !388 {
  %3 = alloca %"class.std::vector.20", align 8
  %4 = alloca double, align 8
  %5 = alloca %"class.std::allocator.22", align 1
  %6 = tail call noundef i32 @_ZNK6dealii11Polynomials10PolynomialIdE6degreeEv(ptr noundef nonnull align 8 dereferenceable(96) %0) #18
  %7 = tail call noundef i32 @_ZNK6dealii11Polynomials10PolynomialIdE6degreeEv(ptr noundef nonnull align 8 dereferenceable(96) %1) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #20
  %8 = add i32 %6, 1
  %9 = add i32 %8, %7
  %10 = zext i32 %9 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  store double 0.000000e+00, ptr %4, align 8, !tbaa !352
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #20
  call void @_ZNSaIdEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #19
  invoke void @_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %10, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #18
          to label %11 unwind label %25

11:                                               ; preds = %2
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  %12 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %1, i64 0, i32 1
  %13 = call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %12) #19
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %22, label %15, !prof !389

15:                                               ; preds = %11
  %16 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %0, i64 0, i32 1
  br label %17

17:                                               ; preds = %15, %27
  %18 = phi i64 [ 0, %15 ], [ %29, %27 ]
  %19 = phi i32 [ 0, %15 ], [ %28, %27 ]
  %20 = call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %16) #19
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %27, label %32, !prof !390

22:                                               ; preds = %27, %11
  %23 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %0, i64 0, i32 1
  %24 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIdSaIdEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(24) %3) #18
          to label %48 unwind label %49

25:                                               ; preds = %2
  %26 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  br label %51

27:                                               ; preds = %32, %17
  %28 = add i32 %19, 1
  %29 = zext i32 %28 to i64
  %30 = call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %12) #19
  %31 = icmp ugt i64 %30, %29
  br i1 %31, label %17, label %22, !prof !391, !llvm.loop !392

32:                                               ; preds = %17, %32
  %33 = phi i64 [ %45, %32 ], [ 0, %17 ]
  %34 = phi i32 [ %44, %32 ], [ 0, %17 ]
  %35 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %16, i64 noundef %33) #19
  %36 = load double, ptr %35, align 8, !tbaa !352
  %37 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %12, i64 noundef %18) #19
  %38 = load double, ptr %37, align 8, !tbaa !352
  %39 = add i32 %34, %19
  %40 = zext i32 %39 to i64
  %41 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %40) #19
  %42 = load double, ptr %41, align 8, !tbaa !352
  %43 = call double @llvm.fmuladd.f64(double %36, double %38, double %42)
  store double %43, ptr %41, align 8, !tbaa !352
  %44 = add i32 %34, 1
  %45 = zext i32 %44 to i64
  %46 = call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %16) #19
  %47 = icmp ugt i64 %46, %45
  br i1 %47, label %32, label %27, !prof !390, !llvm.loop !393

48:                                               ; preds = %22
  call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20
  ret ptr %0

49:                                               ; preds = %22
  %50 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #19
  br label %51

51:                                               ; preds = %49, %25
  %52 = phi { ptr, i32 } [ %50, %49 ], [ %26, %25 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20
  resume { ptr, i32 } %52
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !394 {
  %5 = tail call noundef i64 @_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_(i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %3) #18
  tail call void @_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %5, ptr noundef nonnull align 1 dereferenceable(1) %3) #18
  invoke void @_ZNSt6vectorIdSaIdEE18_M_fill_initializeEmRKd(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #18
          to label %6 unwind label %7

6:                                                ; preds = %4
  ret void

7:                                                ; preds = %4
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt12_Vector_baseIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIdSaIdEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 {
  %3 = icmp eq ptr %1, %0
  br i1 %3, label %53, label %4

4:                                                ; preds = %2
  %5 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  %6 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %7 = icmp ugt i64 %5, %6
  br i1 %7, label %8, label %24

8:                                                ; preds = %4
  %9 = tail call ptr @_ZNKSt6vectorIdSaIdEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  %10 = tail call ptr @_ZNKSt6vectorIdSaIdEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  %11 = tail call noundef ptr @_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %5, ptr %9, ptr %10) #18
  %12 = load ptr, ptr %0, align 8, !tbaa !346
  %13 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !348
  %15 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  tail call void @_ZSt8_DestroyIPddEvT_S1_RSaIT0_E(ptr noundef %12, ptr noundef %14, ptr noundef nonnull align 1 dereferenceable(1) %15) #18
  %16 = load ptr, ptr %0, align 8, !tbaa !346
  %17 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !395
  %19 = ptrtoint ptr %18 to i64
  %20 = ptrtoint ptr %16 to i64
  %21 = sub i64 %19, %20
  %22 = ashr exact i64 %21, 3
  tail call void @_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %16, i64 noundef %22) #18
  store ptr %11, ptr %0, align 8, !tbaa !346
  %23 = getelementptr inbounds double, ptr %11, i64 %5
  store ptr %23, ptr %17, align 8, !tbaa !395
  br label %49

24:                                               ; preds = %4
  %25 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %26 = icmp ult i64 %25, %5
  br i1 %26, label %34, label %27

27:                                               ; preds = %24
  %28 = tail call ptr @_ZNKSt6vectorIdSaIdEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  %29 = tail call ptr @_ZNKSt6vectorIdSaIdEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  %30 = tail call ptr @_ZNSt6vectorIdSaIdEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %31 = tail call ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_(ptr %28, ptr %29, ptr %30) #18
  %32 = tail call ptr @_ZNSt6vectorIdSaIdEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %33 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  tail call void @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RSaIT0_E(ptr %31, ptr %32, ptr noundef nonnull align 1 dereferenceable(1) %33) #18
  br label %49

34:                                               ; preds = %24
  %35 = load ptr, ptr %1, align 8, !tbaa !346
  %36 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %37 = getelementptr inbounds double, ptr %35, i64 %36
  %38 = load ptr, ptr %0, align 8, !tbaa !346
  %39 = tail call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %35, ptr noundef %37, ptr noundef %38) #18
  %40 = load ptr, ptr %1, align 8, !tbaa !346
  %41 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %42 = getelementptr inbounds double, ptr %40, i64 %41
  %43 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !348
  %45 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !348
  %47 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %48 = tail call noundef ptr @_ZSt22__uninitialized_copy_aIPdS0_dET0_T_S2_S1_RSaIT1_E(ptr noundef %42, ptr noundef %44, ptr noundef %46, ptr noundef nonnull align 1 dereferenceable(1) %47) #18
  br label %49

49:                                               ; preds = %27, %34, %8
  %50 = load ptr, ptr %0, align 8, !tbaa !346
  %51 = getelementptr inbounds double, ptr %50, i64 %5
  %52 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %51, ptr %52, align 8, !tbaa !348
  br label %53

53:                                               ; preds = %49, %2
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef nonnull align 8 dereferenceable(96) ptr @_ZN6dealii11Polynomials10PolynomialIdEpLERKS2_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #2 comdat align 2 !prof !371 {
  %3 = alloca double, align 8
  %4 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %1, i64 0, i32 1
  %5 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #19
  %6 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %0, i64 0, i32 1
  %7 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #19
  %8 = icmp ugt i64 %5, %7
  br i1 %8, label %9, label %11, !prof !396

9:                                                ; preds = %2
  %10 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  store double 0.000000e+00, ptr %3, align 8, !tbaa !352
  call void @_ZNSt6vectorIdSaIdEE6resizeEmRKd(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %10, ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  br label %11

11:                                               ; preds = %9, %2
  %12 = call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #19
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15, !prof !390

14:                                               ; preds = %15, %11
  ret ptr %0

15:                                               ; preds = %11, %15
  %16 = phi i64 [ %24, %15 ], [ 0, %11 ]
  %17 = phi i32 [ %23, %15 ], [ 0, %11 ]
  %18 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %16) #19
  %19 = load double, ptr %18, align 8, !tbaa !352
  %20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %16) #19
  %21 = load double, ptr %20, align 8, !tbaa !352
  %22 = fadd double %19, %21
  store double %22, ptr %20, align 8, !tbaa !352
  %23 = add i32 %17, 1
  %24 = zext i32 %23 to i64
  %25 = call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #19
  %26 = icmp ugt i64 %25, %24
  br i1 %26, label %15, label %14, !prof !397, !llvm.loop !398
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEE6resizeEmRKd(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 {
  %4 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = tail call ptr @_ZNSt6vectorIdSaIdEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %8 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %9 = sub i64 %1, %8
  tail call void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %7, i64 noundef %9, ptr noundef nonnull align 8 dereferenceable(8) %2) #18
  br label %16

10:                                               ; preds = %3
  %11 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %12 = icmp ugt i64 %11, %1
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load ptr, ptr %0, align 8, !tbaa !346
  %15 = getelementptr inbounds double, ptr %14, i64 %1
  tail call void @_ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %15) #19
  br label %16

16:                                               ; preds = %10, %13, %6
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef nonnull align 8 dereferenceable(96) ptr @_ZN6dealii11Polynomials10PolynomialIdEmIERKS2_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #2 comdat align 2 !prof !310 {
  %3 = alloca double, align 8
  %4 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %1, i64 0, i32 1
  %5 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #19
  %6 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %0, i64 0, i32 1
  %7 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #19
  %8 = icmp ugt i64 %5, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  store double 0.000000e+00, ptr %3, align 8, !tbaa !352
  call void @_ZNSt6vectorIdSaIdEE6resizeEmRKd(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %10, ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  br label %11

11:                                               ; preds = %9, %2
  %12 = call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #19
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %15, %11
  ret ptr %0

15:                                               ; preds = %11, %15
  %16 = phi i64 [ %24, %15 ], [ 0, %11 ]
  %17 = phi i32 [ %23, %15 ], [ 0, %11 ]
  %18 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %16) #19
  %19 = load double, ptr %18, align 8, !tbaa !352
  %20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %16) #19
  %21 = load double, ptr %20, align 8, !tbaa !352
  %22 = fsub double %21, %19
  store double %22, ptr %20, align 8, !tbaa !352
  %23 = add i32 %17, 1
  %24 = zext i32 %23 to i64
  %25 = call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #19
  %26 = icmp ugt i64 %25, %24
  br i1 %26, label %15, label %14, !llvm.loop !399
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii11Polynomials10PolynomialIdE5printERSo(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 !prof !310 {
  %3 = tail call noundef i32 @_ZNK6dealii11Polynomials10PolynomialIdE6degreeEv(ptr noundef nonnull align 8 dereferenceable(96) %0) #18
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %0, i64 0, i32 1
  %7 = zext nneg i32 %3 to i64
  br label %9

8:                                                ; preds = %9, %2
  ret void

9:                                                ; preds = %5, %9
  %10 = phi i64 [ %7, %5 ], [ %18, %9 ]
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %10) #19
  %12 = load double, ptr %11, align 8, !tbaa !352
  %13 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEd(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %12) #18
  %14 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull @.str) #18
  %15 = trunc i64 %10 to i32
  %16 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %14, i32 noundef %15) #18
  %17 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_) #18
  %18 = add nsw i64 %10, -1
  %19 = icmp eq i64 %10, 0
  br i1 %19, label %8, label %9, !llvm.loop !400
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii11Polynomials10PolynomialIdE8multiplyERSt6vectorIdSaIdEEd(ptr noundef nonnull align 8 dereferenceable(24) %0, double noundef %1) local_unnamed_addr #1 comdat align 2 !prof !310 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.26", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.26", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  %5 = tail call ptr @_ZNSt6vectorIdSaIdEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  store ptr %5, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  %6 = tail call ptr @_ZNSt6vectorIdSaIdEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  store ptr %6, ptr %4, align 8
  %7 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  br i1 %7, label %9, label %8

8:                                                ; preds = %9, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  ret void

9:                                                ; preds = %2, %9
  %10 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #19
  %11 = load double, ptr %10, align 8, !tbaa !352
  %12 = fmul double %11, %1
  store double %12, ptr %10, align 8, !tbaa !352
  %13 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  %14 = call ptr @_ZNSt6vectorIdSaIdEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  store ptr %14, ptr %4, align 8
  %15 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  br i1 %15, label %9, label %8, !llvm.loop !401
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii11Polynomials10PolynomialIfE5shiftIfEEvT_(ptr noundef nonnull align 8 dereferenceable(96) %0, float noundef %1) local_unnamed_addr #2 comdat align 2 !prof !310 {
  %3 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %0, i64 0, i32 1
  tail call void @_ZN6dealii11Polynomials10PolynomialIfE5shiftIfEEvRSt6vectorIfSaIfEET_(ptr noundef nonnull align 8 dereferenceable(24) %3, float noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii11Polynomials10PolynomialIfE5shiftIfEEvRSt6vectorIfSaIfEET_(ptr noundef nonnull align 8 dereferenceable(24) %0, float noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !310 {
  %3 = alloca %"class.std::vector", align 8
  %4 = alloca %"class.std::allocator.16", align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #20
  %5 = tail call ptr @_ZNSt6vectorIfSaIfEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %6 = tail call ptr @_ZNSt6vectorIfSaIfEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #20
  call void @_ZNSaIfEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #19
  invoke void @_ZNSt6vectorIfSaIfEEC2IN9__gnu_cxx17__normal_iteratorIPfS1_EEvEET_S7_RKS0_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %5, ptr %6, ptr noundef nonnull align 1 dereferenceable(1) %4) #18
          to label %7 unwind label %19

7:                                                ; preds = %2
  call void @_ZNSt15__new_allocatorIfED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #20
  %8 = call noundef i64 @_ZNKSt6vectorIfSaIfEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #19
  %9 = icmp ugt i64 %8, 1
  br i1 %9, label %10, label %16

10:                                               ; preds = %7, %21
  %11 = phi i64 [ %23, %21 ], [ 1, %7 ]
  %12 = phi i32 [ %22, %21 ], [ 1, %7 ]
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %10
  %15 = zext i32 %12 to i64
  br label %26

16:                                               ; preds = %21, %7
  %17 = call ptr @_ZNSt6vectorIfSaIfEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #19
  %18 = call ptr @_ZNSt6vectorIfSaIfEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #19
  invoke void @_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS1_EEvEEvT_S7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %17, ptr %18) #18
          to label %47 unwind label %48

19:                                               ; preds = %2
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIfED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #20
  br label %50

21:                                               ; preds = %26, %10
  %22 = add i32 %12, 1
  %23 = zext i32 %22 to i64
  %24 = call noundef i64 @_ZNKSt6vectorIfSaIfEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #19
  %25 = icmp ugt i64 %24, %23
  br i1 %25, label %10, label %16, !llvm.loop !402

26:                                               ; preds = %14, %26
  %27 = phi i64 [ 0, %14 ], [ %33, %26 ]
  %28 = phi float [ %1, %14 ], [ %45, %26 ]
  %29 = phi i32 [ 1, %14 ], [ %35, %26 ]
  %30 = trunc i64 %27 to i32
  %31 = sub i32 %12, %30
  %32 = mul i32 %31, %29
  %33 = add nuw nsw i64 %27, 1
  %34 = trunc i64 %33 to i32
  %35 = udiv i32 %32, %34
  %36 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIfSaIfEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %11) #19
  %37 = load float, ptr %36, align 4, !tbaa !319
  %38 = uitofp i32 %35 to float
  %39 = fmul float %37, %38
  %40 = add i32 %31, -1
  %41 = zext i32 %40 to i64
  %42 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIfSaIfEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %41) #19
  %43 = load float, ptr %42, align 4, !tbaa !319
  %44 = call float @llvm.fmuladd.f32(float %39, float %28, float %43)
  store float %44, ptr %42, align 4, !tbaa !319
  %45 = fmul float %28, %1
  %46 = icmp eq i64 %33, %15
  br i1 %46, label %21, label %26, !llvm.loop !403

47:                                               ; preds = %16
  call void @_ZNSt6vectorIfSaIfEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20
  ret void

48:                                               ; preds = %16
  %49 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIfSaIfEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #19
  br label %50

50:                                               ; preds = %48, %19
  %51 = phi { ptr, i32 } [ %49, %48 ], [ %20, %19 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20
  resume { ptr, i32 } %51
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii11Polynomials10PolynomialIfE5shiftIdEEvT_(ptr noundef nonnull align 8 dereferenceable(96) %0, double noundef %1) local_unnamed_addr #2 comdat align 2 !prof !310 {
  %3 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %0, i64 0, i32 1
  tail call void @_ZN6dealii11Polynomials10PolynomialIfE5shiftIdEEvRSt6vectorIfSaIfEET_(ptr noundef nonnull align 8 dereferenceable(24) %3, double noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii11Polynomials10PolynomialIfE5shiftIdEEvRSt6vectorIfSaIfEET_(ptr noundef nonnull align 8 dereferenceable(24) %0, double noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !310 {
  %3 = alloca %"class.std::vector.20", align 8
  %4 = alloca %"class.std::allocator.22", align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #20
  %5 = tail call ptr @_ZNSt6vectorIfSaIfEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %6 = tail call ptr @_ZNSt6vectorIfSaIfEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #20
  call void @_ZNSaIdEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #19
  invoke void @_ZNSt6vectorIdSaIdEEC2IN9__gnu_cxx17__normal_iteratorIPfS_IfSaIfEEEEvEET_S9_RKS0_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %5, ptr %6, ptr noundef nonnull align 1 dereferenceable(1) %4) #18
          to label %7 unwind label %19

7:                                                ; preds = %2
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #20
  %8 = call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #19
  %9 = icmp ugt i64 %8, 1
  br i1 %9, label %10, label %16

10:                                               ; preds = %7, %21
  %11 = phi i64 [ %23, %21 ], [ 1, %7 ]
  %12 = phi i32 [ %22, %21 ], [ 1, %7 ]
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %10
  %15 = zext i32 %12 to i64
  br label %26

16:                                               ; preds = %21, %7
  %17 = call ptr @_ZNSt6vectorIdSaIdEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #19
  %18 = call ptr @_ZNSt6vectorIdSaIdEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #19
  invoke void @_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPdS_IdSaIdEEEEvEEvT_S9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %17, ptr %18) #18
          to label %47 unwind label %48

19:                                               ; preds = %2
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #20
  br label %50

21:                                               ; preds = %26, %10
  %22 = add i32 %12, 1
  %23 = zext i32 %22 to i64
  %24 = call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #19
  %25 = icmp ugt i64 %24, %23
  br i1 %25, label %10, label %16, !llvm.loop !404

26:                                               ; preds = %14, %26
  %27 = phi i64 [ 0, %14 ], [ %33, %26 ]
  %28 = phi double [ %1, %14 ], [ %45, %26 ]
  %29 = phi i32 [ 1, %14 ], [ %35, %26 ]
  %30 = trunc i64 %27 to i32
  %31 = sub i32 %12, %30
  %32 = mul i32 %31, %29
  %33 = add nuw nsw i64 %27, 1
  %34 = trunc i64 %33 to i32
  %35 = udiv i32 %32, %34
  %36 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %11) #19
  %37 = load double, ptr %36, align 8, !tbaa !352
  %38 = uitofp i32 %35 to double
  %39 = fmul double %37, %38
  %40 = add i32 %31, -1
  %41 = zext i32 %40 to i64
  %42 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %41) #19
  %43 = load double, ptr %42, align 8, !tbaa !352
  %44 = call double @llvm.fmuladd.f64(double %39, double %28, double %43)
  store double %44, ptr %42, align 8, !tbaa !352
  %45 = fmul double %28, %1
  %46 = icmp eq i64 %33, %15
  br i1 %46, label %21, label %26, !llvm.loop !405

47:                                               ; preds = %16
  call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20
  ret void

48:                                               ; preds = %16
  %49 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #19
  br label %50

50:                                               ; preds = %48, %19
  %51 = phi { ptr, i32 } [ %49, %48 ], [ %20, %19 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20
  resume { ptr, i32 } %51
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii11Polynomials10PolynomialIdE5shiftIfEEvT_(ptr noundef nonnull align 8 dereferenceable(96) %0, float noundef %1) local_unnamed_addr #2 comdat align 2 !prof !310 {
  %3 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %0, i64 0, i32 1
  tail call void @_ZN6dealii11Polynomials10PolynomialIdE5shiftIfEEvRSt6vectorIdSaIdEET_(ptr noundef nonnull align 8 dereferenceable(24) %3, float noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii11Polynomials10PolynomialIdE5shiftIfEEvRSt6vectorIdSaIdEET_(ptr noundef nonnull align 8 dereferenceable(24) %0, float noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !310 {
  %3 = alloca %"class.std::vector", align 8
  %4 = alloca %"class.std::allocator.16", align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #20
  %5 = tail call ptr @_ZNSt6vectorIdSaIdEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %6 = tail call ptr @_ZNSt6vectorIdSaIdEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #20
  call void @_ZNSaIfEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #19
  invoke void @_ZNSt6vectorIfSaIfEEC2IN9__gnu_cxx17__normal_iteratorIPdS_IdSaIdEEEEvEET_S9_RKS0_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %5, ptr %6, ptr noundef nonnull align 1 dereferenceable(1) %4) #18
          to label %7 unwind label %19

7:                                                ; preds = %2
  call void @_ZNSt15__new_allocatorIfED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #20
  %8 = call noundef i64 @_ZNKSt6vectorIfSaIfEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #19
  %9 = icmp ugt i64 %8, 1
  br i1 %9, label %10, label %16

10:                                               ; preds = %7, %21
  %11 = phi i64 [ %23, %21 ], [ 1, %7 ]
  %12 = phi i32 [ %22, %21 ], [ 1, %7 ]
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %10
  %15 = zext i32 %12 to i64
  br label %26

16:                                               ; preds = %21, %7
  %17 = call ptr @_ZNSt6vectorIfSaIfEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #19
  %18 = call ptr @_ZNSt6vectorIfSaIfEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #19
  invoke void @_ZNSt6vectorIdSaIdEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfSaIfEEEEvEEvT_S9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %17, ptr %18) #18
          to label %47 unwind label %48

19:                                               ; preds = %2
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIfED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #20
  br label %50

21:                                               ; preds = %26, %10
  %22 = add i32 %12, 1
  %23 = zext i32 %22 to i64
  %24 = call noundef i64 @_ZNKSt6vectorIfSaIfEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #19
  %25 = icmp ugt i64 %24, %23
  br i1 %25, label %10, label %16, !llvm.loop !406

26:                                               ; preds = %14, %26
  %27 = phi i64 [ 0, %14 ], [ %33, %26 ]
  %28 = phi float [ %1, %14 ], [ %45, %26 ]
  %29 = phi i32 [ 1, %14 ], [ %35, %26 ]
  %30 = trunc i64 %27 to i32
  %31 = sub i32 %12, %30
  %32 = mul i32 %31, %29
  %33 = add nuw nsw i64 %27, 1
  %34 = trunc i64 %33 to i32
  %35 = udiv i32 %32, %34
  %36 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIfSaIfEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %11) #19
  %37 = load float, ptr %36, align 4, !tbaa !319
  %38 = uitofp i32 %35 to float
  %39 = fmul float %37, %38
  %40 = add i32 %31, -1
  %41 = zext i32 %40 to i64
  %42 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIfSaIfEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %41) #19
  %43 = load float, ptr %42, align 4, !tbaa !319
  %44 = call float @llvm.fmuladd.f32(float %39, float %28, float %43)
  store float %44, ptr %42, align 4, !tbaa !319
  %45 = fmul float %28, %1
  %46 = icmp eq i64 %33, %15
  br i1 %46, label %21, label %26, !llvm.loop !407

47:                                               ; preds = %16
  call void @_ZNSt6vectorIfSaIfEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20
  ret void

48:                                               ; preds = %16
  %49 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIfSaIfEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #19
  br label %50

50:                                               ; preds = %48, %19
  %51 = phi { ptr, i32 } [ %49, %48 ], [ %20, %19 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20
  resume { ptr, i32 } %51
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii11Polynomials10PolynomialIdE5shiftIdEEvT_(ptr noundef nonnull align 8 dereferenceable(96) %0, double noundef %1) local_unnamed_addr #2 comdat align 2 !prof !310 {
  %3 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %0, i64 0, i32 1
  tail call void @_ZN6dealii11Polynomials10PolynomialIdE5shiftIdEEvRSt6vectorIdSaIdEET_(ptr noundef nonnull align 8 dereferenceable(24) %3, double noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii11Polynomials10PolynomialIdE5shiftIdEEvRSt6vectorIdSaIdEET_(ptr noundef nonnull align 8 dereferenceable(24) %0, double noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !310 {
  %3 = alloca %"class.std::vector.20", align 8
  %4 = alloca %"class.std::allocator.22", align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #20
  %5 = tail call ptr @_ZNSt6vectorIdSaIdEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %6 = tail call ptr @_ZNSt6vectorIdSaIdEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #20
  call void @_ZNSaIdEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #19
  invoke void @_ZNSt6vectorIdSaIdEEC2IN9__gnu_cxx17__normal_iteratorIPdS1_EEvEET_S7_RKS0_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %5, ptr %6, ptr noundef nonnull align 1 dereferenceable(1) %4) #18
          to label %7 unwind label %19

7:                                                ; preds = %2
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #20
  %8 = call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #19
  %9 = icmp ugt i64 %8, 1
  br i1 %9, label %10, label %16

10:                                               ; preds = %7, %21
  %11 = phi i64 [ %23, %21 ], [ 1, %7 ]
  %12 = phi i32 [ %22, %21 ], [ 1, %7 ]
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %10
  %15 = zext i32 %12 to i64
  br label %26

16:                                               ; preds = %21, %7
  %17 = call ptr @_ZNSt6vectorIdSaIdEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #19
  %18 = call ptr @_ZNSt6vectorIdSaIdEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #19
  invoke void @_ZNSt6vectorIdSaIdEE6assignIN9__gnu_cxx17__normal_iteratorIPdS1_EEvEEvT_S7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %17, ptr %18) #18
          to label %47 unwind label %48

19:                                               ; preds = %2
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #20
  br label %50

21:                                               ; preds = %26, %10
  %22 = add i32 %12, 1
  %23 = zext i32 %22 to i64
  %24 = call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #19
  %25 = icmp ugt i64 %24, %23
  br i1 %25, label %10, label %16, !llvm.loop !408

26:                                               ; preds = %14, %26
  %27 = phi i64 [ 0, %14 ], [ %33, %26 ]
  %28 = phi double [ %1, %14 ], [ %45, %26 ]
  %29 = phi i32 [ 1, %14 ], [ %35, %26 ]
  %30 = trunc i64 %27 to i32
  %31 = sub i32 %12, %30
  %32 = mul i32 %31, %29
  %33 = add nuw nsw i64 %27, 1
  %34 = trunc i64 %33 to i32
  %35 = udiv i32 %32, %34
  %36 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %11) #19
  %37 = load double, ptr %36, align 8, !tbaa !352
  %38 = uitofp i32 %35 to double
  %39 = fmul double %37, %38
  %40 = add i32 %31, -1
  %41 = zext i32 %40 to i64
  %42 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %41) #19
  %43 = load double, ptr %42, align 8, !tbaa !352
  %44 = call double @llvm.fmuladd.f64(double %39, double %28, double %43)
  store double %44, ptr %42, align 8, !tbaa !352
  %45 = fmul double %28, %1
  %46 = icmp eq i64 %33, %15
  br i1 %46, label %21, label %26, !llvm.loop !409

47:                                               ; preds = %16
  call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20
  ret void

48:                                               ; preds = %16
  %49 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #19
  br label %50

50:                                               ; preds = %48, %19
  %51 = phi { ptr, i32 } [ %49, %48 ], [ %20, %19 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20
  resume { ptr, i32 } %51
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii11Polynomials8MonomialIfEC2Ejd(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %1, double noundef %2) unnamed_addr #2 comdat($_ZN6dealii11Polynomials8MonomialIfEC5Ejd) align 2 personality ptr @__gxx_personality_v0 !prof !310 {
  %4 = alloca %"class.std::vector", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #20
  call void @_ZN6dealii11Polynomials8MonomialIfE11make_vectorEjd(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %4, i32 noundef %1, double noundef %2) #18
  invoke void @_ZN6dealii11Polynomials10PolynomialIfEC2ERKSt6vectorIfSaIfEE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(24) %4) #18
          to label %5 unwind label %6

5:                                                ; preds = %3
  call void @_ZNSt6vectorIfSaIfEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #20
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials8MonomialIfEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !311
  ret void

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIfSaIfEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #20
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii11Polynomials8MonomialIfE11make_vectorEjd(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, i32 noundef %1, double noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !310 {
  %4 = alloca float, align 4
  %5 = alloca %"class.std::allocator.16", align 1
  %6 = add i32 %1, 1
  %7 = zext i32 %6 to i64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  store float 0.000000e+00, ptr %4, align 4, !tbaa !319
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #20
  call void @_ZNSaIfEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #19
  invoke void @_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %7, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #18
          to label %8 unwind label %12

8:                                                ; preds = %3
  call void @_ZNSt15__new_allocatorIfED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  %9 = fptrunc double %2 to float
  %10 = zext i32 %1 to i64
  %11 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIfSaIfEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %10) #19
  store float %9, ptr %11, align 4, !tbaa !319
  ret void

12:                                               ; preds = %3
  %13 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIfED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  resume { ptr, i32 } %13
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii11Polynomials8MonomialIfE23generate_complete_basisEj(ptr dead_on_unwind noalias writable sret(%"class.std::vector.27") align 8 %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !310 {
  %3 = alloca %"class.dealii::Polynomials::Monomial", align 8
  tail call void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIfEESaIS3_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %4 = add i32 %1, 1
  %5 = zext i32 %4 to i64
  invoke void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIfEESaIS3_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %5) #18
          to label %8 unwind label %6

6:                                                ; preds = %2
  %7 = landingpad { ptr, i32 }
          cleanup
  br label %21

8:                                                ; preds = %2, %11
  %9 = phi i32 [ %12, %11 ], [ 0, %2 ]
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %3) #20
  invoke void @_ZN6dealii11Polynomials8MonomialIfEC1Ejd(ptr noundef nonnull align 8 dereferenceable(96) %3, i32 noundef %9, double noundef 1.000000e+00) #18
          to label %10 unwind label %14

10:                                               ; preds = %8
  invoke void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIfEESaIS3_EE9push_backEOS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %3) #18
          to label %11 unwind label %16

11:                                               ; preds = %10
  call void @_ZN6dealii11Polynomials10PolynomialIfED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %3) #19
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #20
  %12 = add i32 %9, 1
  %13 = icmp ugt i32 %12, %1
  br i1 %13, label %20, label %8, !llvm.loop !410

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %18

16:                                               ; preds = %10
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6dealii11Polynomials10PolynomialIfED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %3) #19
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #20
  br label %21

20:                                               ; preds = %11
  ret void

21:                                               ; preds = %18, %6
  %22 = phi { ptr, i32 } [ %19, %18 ], [ %7, %6 ]
  call void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIfEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  resume { ptr, i32 } %22
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIfEESaIS3_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 !prof !310 {
  tail call void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIfEESaIS3_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIfEESaIS3_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 {
  %3 = tail call noundef i64 @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIfEESaIS3_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %4 = icmp ult i64 %3, %1
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #22
  unreachable

6:                                                ; preds = %2
  %7 = tail call noundef i64 @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIfEESaIS3_EE8capacityEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %8 = icmp ult i64 %7, %1
  br i1 %8, label %9, label %29

9:                                                ; preds = %6
  %10 = tail call noundef i64 @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIfEESaIS3_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %11 = load ptr, ptr %0, align 8, !tbaa !411
  %12 = tail call noundef ptr @_ZSt32__make_move_if_noexcept_iteratorIN6dealii11Polynomials10PolynomialIfEEPKS3_ET0_PT_(ptr noundef %11) #18
  %13 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<float>, std::allocator<dealii::Polynomials::Polynomial<float>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !413
  %15 = tail call noundef ptr @_ZSt32__make_move_if_noexcept_iteratorIN6dealii11Polynomials10PolynomialIfEEPKS3_ET0_PT_(ptr noundef %14) #18
  %16 = tail call noundef ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIfEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %12, ptr noundef %15) #18
  %17 = load ptr, ptr %0, align 8, !tbaa !411
  %18 = load ptr, ptr %13, align 8, !tbaa !413
  %19 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIfEESaIS3_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  tail call void @_ZSt8_DestroyIPN6dealii11Polynomials10PolynomialIfEES3_EvT_S5_RSaIT0_E(ptr noundef %17, ptr noundef %18, ptr noundef nonnull align 1 dereferenceable(1) %19) #18
  %20 = load ptr, ptr %0, align 8, !tbaa !411
  %21 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<float>, std::allocator<dealii::Polynomials::Polynomial<float>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !414
  %23 = ptrtoint ptr %22 to i64
  %24 = ptrtoint ptr %20 to i64
  %25 = sub i64 %23, %24
  %26 = sdiv exact i64 %25, 96
  tail call void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIfEESaIS3_EE13_M_deallocateEPS3_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %20, i64 noundef %26) #18
  store ptr %16, ptr %0, align 8, !tbaa !411
  %27 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %16, i64 %10
  store ptr %27, ptr %13, align 8, !tbaa !413
  %28 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %16, i64 %1
  store ptr %28, ptr %21, align 8, !tbaa !414
  br label %29

29:                                               ; preds = %9, %6
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIfEESaIS3_EE9push_backEOS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #2 comdat align 2 {
  %3 = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIfEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIfEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !310 {
  %2 = load ptr, ptr %0, align 8, !tbaa !411
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<float>, std::allocator<dealii::Polynomials::Polynomial<float>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !413
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIfEESaIS3_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  invoke void @_ZSt8_DestroyIPN6dealii11Polynomials10PolynomialIfEES3_EvT_S5_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #18
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIfEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #21
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii11Polynomials8MonomialIdEC2Ejd(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %1, double noundef %2) unnamed_addr #2 comdat($_ZN6dealii11Polynomials8MonomialIdEC5Ejd) align 2 personality ptr @__gxx_personality_v0 !prof !310 {
  %4 = alloca %"class.std::vector.20", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #20
  call void @_ZN6dealii11Polynomials8MonomialIdE11make_vectorEjd(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.20") align 8 %4, i32 noundef %1, double noundef %2) #18
  invoke void @_ZN6dealii11Polynomials10PolynomialIdEC2ERKSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(24) %4) #18
          to label %5 unwind label %6

5:                                                ; preds = %3
  call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #20
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials8MonomialIdEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !311
  ret void

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #20
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii11Polynomials8MonomialIdE11make_vectorEjd(ptr dead_on_unwind noalias writable sret(%"class.std::vector.20") align 8 %0, i32 noundef %1, double noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !310 {
  %4 = alloca double, align 8
  %5 = alloca %"class.std::allocator.22", align 1
  %6 = add i32 %1, 1
  %7 = zext i32 %6 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  store double 0.000000e+00, ptr %4, align 8, !tbaa !352
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #20
  call void @_ZNSaIdEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #19
  invoke void @_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %7, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #18
          to label %8 unwind label %11

8:                                                ; preds = %3
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  %9 = zext i32 %1 to i64
  %10 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %9) #19
  store double %2, ptr %10, align 8, !tbaa !352
  ret void

11:                                               ; preds = %3
  %12 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  resume { ptr, i32 } %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii11Polynomials8MonomialIdE23generate_complete_basisEj(ptr dead_on_unwind noalias writable sret(%"class.std::vector.32") align 8 %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !310 {
  %3 = alloca %"class.dealii::Polynomials::Monomial.25", align 8
  tail call void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %4 = add i32 %1, 1
  %5 = zext i32 %4 to i64
  invoke void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %5) #18
          to label %8 unwind label %6

6:                                                ; preds = %2
  %7 = landingpad { ptr, i32 }
          cleanup
  br label %21

8:                                                ; preds = %2, %11
  %9 = phi i32 [ %12, %11 ], [ 0, %2 ]
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %3) #20
  invoke void @_ZN6dealii11Polynomials8MonomialIdEC1Ejd(ptr noundef nonnull align 8 dereferenceable(96) %3, i32 noundef %9, double noundef 1.000000e+00) #18
          to label %10 unwind label %14

10:                                               ; preds = %8
  invoke void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE9push_backEOS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %3) #18
          to label %11 unwind label %16

11:                                               ; preds = %10
  call void @_ZN6dealii11Polynomials10PolynomialIdED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %3) #19
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #20
  %12 = add i32 %9, 1
  %13 = icmp ugt i32 %12, %1
  br i1 %13, label %20, label %8, !llvm.loop !415

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %18

16:                                               ; preds = %10
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6dealii11Polynomials10PolynomialIdED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %3) #19
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #20
  br label %21

20:                                               ; preds = %11
  ret void

21:                                               ; preds = %18, %6
  %22 = phi { ptr, i32 } [ %19, %18 ], [ %7, %6 ]
  call void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  resume { ptr, i32 } %22
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 !prof !349 {
  tail call void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 {
  %3 = tail call noundef i64 @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %4 = icmp ult i64 %3, %1
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #22
  unreachable

6:                                                ; preds = %2
  %7 = tail call noundef i64 @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE8capacityEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %8 = icmp ult i64 %7, %1
  br i1 %8, label %9, label %29

9:                                                ; preds = %6
  %10 = tail call noundef i64 @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %11 = load ptr, ptr %0, align 8, !tbaa !416
  %12 = tail call noundef ptr @_ZSt32__make_move_if_noexcept_iteratorIN6dealii11Polynomials10PolynomialIdEEPKS3_ET0_PT_(ptr noundef %11) #18
  %13 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !418
  %15 = tail call noundef ptr @_ZSt32__make_move_if_noexcept_iteratorIN6dealii11Polynomials10PolynomialIdEEPKS3_ET0_PT_(ptr noundef %14) #18
  %16 = tail call noundef ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %12, ptr noundef %15) #18
  %17 = load ptr, ptr %0, align 8, !tbaa !416
  %18 = load ptr, ptr %13, align 8, !tbaa !418
  %19 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  tail call void @_ZSt8_DestroyIPN6dealii11Polynomials10PolynomialIdEES3_EvT_S5_RSaIT0_E(ptr noundef %17, ptr noundef %18, ptr noundef nonnull align 1 dereferenceable(1) %19) #18
  %20 = load ptr, ptr %0, align 8, !tbaa !416
  %21 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !419
  %23 = ptrtoint ptr %22 to i64
  %24 = ptrtoint ptr %20 to i64
  %25 = sub i64 %23, %24
  %26 = sdiv exact i64 %25, 96
  tail call void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE13_M_deallocateEPS3_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %20, i64 noundef %26) #18
  store ptr %16, ptr %0, align 8, !tbaa !416
  %27 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %16, i64 %10
  store ptr %27, ptr %13, align 8, !tbaa !418
  %28 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %16, i64 %1
  store ptr %28, ptr %21, align 8, !tbaa !419
  br label %29

29:                                               ; preds = %9, %6
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE9push_backEOS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #2 comdat align 2 {
  %3 = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !420 {
  %2 = load ptr, ptr %0, align 8, !tbaa !416
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !418
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  invoke void @_ZSt8_DestroyIPN6dealii11Polynomials10PolynomialIdEES3_EvT_S5_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #18
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #21
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN6dealii11Polynomials19LagrangeEquidistantC2Ejj(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !388 {
  %4 = alloca %"class.std::vector.20", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #20
  call void @_ZN6dealii11Polynomials19LagrangeEquidistant20compute_coefficientsEjj(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.20") align 8 %4, i32 noundef %1, i32 noundef %2) #18
  invoke void @_ZN6dealii11Polynomials10PolynomialIdEC2ERKSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(24) %4) #18
          to label %5 unwind label %6

5:                                                ; preds = %3
  call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #20
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials19LagrangeEquidistantE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !311
  ret void

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #20
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN6dealii11Polynomials19LagrangeEquidistant20compute_coefficientsEjj(ptr dead_on_unwind noalias writable sret(%"class.std::vector.20") align 8 %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !388 {
  %4 = alloca %"class.std::allocator.22", align 1
  %5 = add i32 %1, 1
  %6 = zext i32 %5 to i64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #20
  call void @_ZNSaIdEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #19
  invoke void @_ZNSt6vectorIdSaIdEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %6, ptr noundef nonnull align 1 dereferenceable(1) %4) #18
          to label %7 unwind label %10

7:                                                ; preds = %3
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #20
  %8 = add i32 %1, -1
  %9 = icmp ult i32 %8, 10
  br i1 %9, label %14, label %12

10:                                               ; preds = %3
  %11 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #20
  resume { ptr, i32 } %11

12:                                               ; preds = %7
  %13 = icmp eq i32 %5, 0
  br i1 %13, label %31, label %18, !prof !421

14:                                               ; preds = %7
  %15 = zext nneg i32 %8 to i64
  %16 = shl i64 %15, 2
  %17 = call ptr @llvm.load.relative.i64(ptr @reltable._ZN6dealii11Polynomials19LagrangeEquidistant20compute_coefficientsEjj, i64 %16)
  br label %18

18:                                               ; preds = %14, %12
  %19 = phi ptr [ null, %12 ], [ %17, %14 ]
  %20 = mul i32 %5, %2
  br label %21

21:                                               ; preds = %18, %21
  %22 = phi i64 [ 0, %18 ], [ %29, %21 ]
  %23 = trunc i64 %22 to i32
  %24 = add i32 %20, %23
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds double, ptr %19, i64 %25
  %27 = load double, ptr %26, align 8, !tbaa !352
  %28 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %22) #19
  store double %27, ptr %28, align 8, !tbaa !352
  %29 = add nuw nsw i64 %22, 1
  %30 = icmp eq i64 %29, %6
  br i1 %30, label %31, label %21, !prof !422, !llvm.loop !423

31:                                               ; preds = %21, %12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN6dealii11Polynomials19LagrangeEquidistant23generate_complete_basisEj(ptr dead_on_unwind noalias writable sret(%"class.std::vector.32") align 8 %0, i32 noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !424 {
  %3 = alloca %"class.dealii::Polynomials::Polynomial.19", align 8
  %4 = alloca %"class.std::vector.20", align 8
  %5 = alloca double, align 8
  %6 = alloca %"class.std::allocator.22", align 1
  %7 = alloca %"class.std::allocator.34", align 1
  %8 = alloca %"class.dealii::Polynomials::LagrangeEquidistant", align 8
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %10, label %24, !prof !425

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  store double 1.000000e+00, ptr %5, align 8, !tbaa !352
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #20
  call void @_ZNSaIdEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #19
  invoke void @_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 1 dereferenceable(1) %6) #18
          to label %11 unwind label %14

11:                                               ; preds = %10
  invoke void @_ZN6dealii11Polynomials10PolynomialIdEC1ERKSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #18
          to label %12 unwind label %16

12:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #20
  call void @_ZNSaIN6dealii11Polynomials10PolynomialIdEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #19
  invoke void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2EmRKS3_RKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef nonnull align 1 dereferenceable(1) %7) #18
          to label %13 unwind label %18

13:                                               ; preds = %12
  call void @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #20
  call void @_ZN6dealii11Polynomials10PolynomialIdED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %3) #19
  call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #19
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #20
  br label %37

14:                                               ; preds = %10
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %22

16:                                               ; preds = %11
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %20

18:                                               ; preds = %12
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #20
  call void @_ZN6dealii11Polynomials10PolynomialIdED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %3) #19
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi { ptr, i32 } [ %19, %18 ], [ %17, %16 ]
  call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #19
  br label %22

22:                                               ; preds = %20, %14
  %23 = phi { ptr, i32 } [ %21, %20 ], [ %15, %14 ]
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #20
  br label %38

24:                                               ; preds = %2
  tail call void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  br label %25

25:                                               ; preds = %24, %28
  %26 = phi i32 [ 0, %24 ], [ %29, %28 ]
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %8) #20
  invoke void @_ZN6dealii11Polynomials19LagrangeEquidistantC2Ejj(ptr noundef nonnull align 8 dereferenceable(96) %8, i32 noundef %1, i32 noundef %26) #18
          to label %27 unwind label %31

27:                                               ; preds = %25
  invoke void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE9push_backEOS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %8) #18
          to label %28 unwind label %33

28:                                               ; preds = %27
  call void @_ZN6dealii11Polynomials10PolynomialIdED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %8) #19
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %8) #20
  %29 = add i32 %26, 1
  %30 = icmp ugt i32 %29, %1
  br i1 %30, label %37, label %25, !prof !426, !llvm.loop !427

31:                                               ; preds = %25
  %32 = landingpad { ptr, i32 }
          cleanup
  br label %35

33:                                               ; preds = %27
  %34 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6dealii11Polynomials10PolynomialIdED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %8) #19
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi { ptr, i32 } [ %34, %33 ], [ %32, %31 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %8) #20
  call void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  br label %38

37:                                               ; preds = %28, %13
  ret void

38:                                               ; preds = %35, %22
  %39 = phi { ptr, i32 } [ %23, %22 ], [ %36, %35 ]
  resume { ptr, i32 } %39
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIN6dealii11Polynomials10PolynomialIdEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !428 {
  tail call void @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2EmRKS3_RKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !424 {
  %5 = tail call noundef i64 @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE17_S_check_init_lenEmRKS4_(i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %3) #18
  tail call void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2EmRKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %5, ptr noundef nonnull align 1 dereferenceable(1) %3) #18
  invoke void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE18_M_fill_initializeEmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(96) %2) #18
          to label %6 unwind label %7

6:                                                ; preds = %4
  ret void

7:                                                ; preds = %4
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN6dealii11Polynomials8Lagrange23generate_complete_basisERKSt6vectorINS_5PointILi1EEESaIS4_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.32") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !349 {
  %3 = alloca %"class.std::allocator.34", align 1
  %4 = alloca %"class.std::vector.20", align 8
  %5 = alloca double, align 8
  %6 = alloca %"class.std::allocator.22", align 1
  %7 = alloca %"class.std::vector.20", align 8
  %8 = alloca double, align 8
  %9 = alloca %"class.std::allocator.22", align 1
  %10 = alloca %"class.dealii::Polynomials::Polynomial.19", align 8
  %11 = alloca %"class.dealii::Polynomials::Polynomial.19", align 8
  %12 = alloca %"class.dealii::Polynomials::Polynomial.19", align 8
  %13 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #20
  call void @_ZNSaIN6dealii11Polynomials10PolynomialIdEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #19
  invoke void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2EmRKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %13, ptr noundef nonnull align 1 dereferenceable(1) %3) #18
          to label %14 unwind label %22

14:                                               ; preds = %2
  call void @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  store double 1.000000e+00, ptr %5, align 8, !tbaa !352
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #20
  call void @_ZNSaIdEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #19
  invoke void @_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef 2, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 1 dereferenceable(1) %6) #18
          to label %15 unwind label %24

15:                                               ; preds = %14
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #20
  store double 1.000000e+00, ptr %8, align 8, !tbaa !352
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #20
  call void @_ZNSaIdEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %9) #19
  invoke void @_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 1 dereferenceable(1) %9) #18
          to label %16 unwind label %26

16:                                               ; preds = %15
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %9) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #20
  %17 = call noundef i64 @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %28, !prof !429

19:                                               ; preds = %37, %16
  %20 = call noundef i64 @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %84, label %79, !prof !429

22:                                               ; preds = %2
  %23 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #20
  br label %123

24:                                               ; preds = %14
  %25 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  br label %121

26:                                               ; preds = %15
  %27 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %9) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #20
  br label %119

28:                                               ; preds = %16, %37
  %29 = phi i64 [ %39, %37 ], [ 0, %16 ]
  %30 = phi i32 [ %38, %37 ], [ 0, %16 ]
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %10) #20
  invoke void @_ZN6dealii11Polynomials10PolynomialIdEC1ERKSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(96) %10, ptr noundef nonnull align 8 dereferenceable(24) %7) #18
          to label %31 unwind label %42

31:                                               ; preds = %28
  %32 = call noundef nonnull align 8 dereferenceable(96) ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %29) #19
  %33 = invoke noundef nonnull align 8 dereferenceable(96) ptr @_ZN6dealii11Polynomials10PolynomialIdEaSEOS2_(ptr noundef nonnull align 8 dereferenceable(96) %32, ptr noundef nonnull align 8 dereferenceable(96) %10) #18
          to label %34 unwind label %44

34:                                               ; preds = %31
  call void @_ZN6dealii11Polynomials10PolynomialIdED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %10) #19
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %10) #20
  %35 = call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %48, !prof !389

37:                                               ; preds = %74, %34
  %38 = add i32 %30, 1
  %39 = zext i32 %38 to i64
  %40 = call noundef i64 @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %41 = icmp ugt i64 %40, %39
  br i1 %41, label %28, label %19, !prof !430, !llvm.loop !431

42:                                               ; preds = %28
  %43 = landingpad { ptr, i32 }
          cleanup
  br label %46

44:                                               ; preds = %31
  %45 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6dealii11Polynomials10PolynomialIdED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %10) #19
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi { ptr, i32 } [ %45, %44 ], [ %43, %42 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %10) #20
  br label %117

48:                                               ; preds = %34, %74
  %49 = phi i64 [ %76, %74 ], [ 0, %34 ]
  %50 = phi i32 [ %75, %74 ], [ 0, %34 ]
  %51 = icmp eq i32 %50, %30
  br i1 %51, label %74, label %52, !prof !432

52:                                               ; preds = %48
  %53 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %49) #19
  %54 = call noundef double @_ZNK6dealii5PointILi1EEclEj(ptr noundef nonnull align 8 dereferenceable(8) %53, i32 noundef 0) #18
  %55 = fneg double %54
  %56 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef 0) #19
  store double %55, ptr %56, align 8, !tbaa !352
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %11) #20
  invoke void @_ZN6dealii11Polynomials10PolynomialIdEC1ERKSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(96) %11, ptr noundef nonnull align 8 dereferenceable(24) %4) #18
          to label %57 unwind label %68

57:                                               ; preds = %52
  %58 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %29) #19
  %59 = call noundef double @_ZNK6dealii5PointILi1EEclEj(ptr noundef nonnull align 8 dereferenceable(8) %58, i32 noundef 0) #18
  %60 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %49) #19
  %61 = call noundef double @_ZNK6dealii5PointILi1EEclEj(ptr noundef nonnull align 8 dereferenceable(8) %60, i32 noundef 0) #18
  %62 = fsub double %59, %61
  %63 = fdiv double 1.000000e+00, %62
  %64 = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN6dealii11Polynomials10PolynomialIdEmLEd(ptr noundef nonnull align 8 dereferenceable(96) %11, double noundef %63) #18
  %65 = call noundef nonnull align 8 dereferenceable(96) ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %29) #19
  %66 = invoke noundef nonnull align 8 dereferenceable(96) ptr @_ZN6dealii11Polynomials10PolynomialIdEmLERKS2_(ptr noundef nonnull align 8 dereferenceable(96) %65, ptr noundef nonnull align 8 dereferenceable(96) %11) #18
          to label %67 unwind label %70

67:                                               ; preds = %57
  call void @_ZN6dealii11Polynomials10PolynomialIdED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %11) #19
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %11) #20
  br label %74

68:                                               ; preds = %52
  %69 = landingpad { ptr, i32 }
          cleanup
  br label %72

70:                                               ; preds = %57
  %71 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6dealii11Polynomials10PolynomialIdED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %11) #19
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi { ptr, i32 } [ %71, %70 ], [ %69, %68 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %11) #20
  br label %117

74:                                               ; preds = %48, %67
  %75 = add i32 %50, 1
  %76 = zext i32 %75 to i64
  %77 = call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  %78 = icmp ugt i64 %77, %76
  br i1 %78, label %48, label %37, !prof !391, !llvm.loop !433

79:                                               ; preds = %19, %85
  %80 = phi i64 [ %87, %85 ], [ 0, %19 ]
  %81 = phi i32 [ %86, %85 ], [ 0, %19 ]
  %82 = call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %85, label %90, !prof !389

84:                                               ; preds = %85, %19
  call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #20
  call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #20
  ret void

85:                                               ; preds = %110, %79
  %86 = add i32 %81, 1
  %87 = zext i32 %86 to i64
  %88 = call noundef i64 @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %89 = icmp ugt i64 %88, %87
  br i1 %89, label %79, label %84, !prof !430, !llvm.loop !434

90:                                               ; preds = %79, %110
  %91 = phi i64 [ %112, %110 ], [ 0, %79 ]
  %92 = phi i32 [ %111, %110 ], [ 0, %79 ]
  %93 = call noundef nonnull align 8 dereferenceable(96) ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %80) #19
  %94 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %91) #19
  %95 = call noundef double @_ZNK6dealii5PointILi1EEclEj(ptr noundef nonnull align 8 dereferenceable(8) %94, i32 noundef 0) #18
  %96 = call noundef double @_ZNK6dealii11Polynomials10PolynomialIdE5valueEd(ptr noundef nonnull align 8 dereferenceable(96) %93, double noundef %95) #18
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %12) #20
  %97 = call noundef nonnull align 8 dereferenceable(96) ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %91) #19
  invoke void @_ZN6dealii11Polynomials10PolynomialIdEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(96) %12, ptr noundef nonnull align 8 dereferenceable(96) %97) #18
          to label %98 unwind label %106

98:                                               ; preds = %90
  %99 = icmp eq i32 %81, %92
  %100 = fsub double 1.000000e+00, %96
  %101 = fneg double %96
  %102 = select i1 %99, double %100, double %101, !prof !432
  %103 = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN6dealii11Polynomials10PolynomialIdEmLEd(ptr noundef nonnull align 8 dereferenceable(96) %12, double noundef %102) #18
  %104 = call noundef nonnull align 8 dereferenceable(96) ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %80) #19
  %105 = invoke noundef nonnull align 8 dereferenceable(96) ptr @_ZN6dealii11Polynomials10PolynomialIdEpLERKS2_(ptr noundef nonnull align 8 dereferenceable(96) %104, ptr noundef nonnull align 8 dereferenceable(96) %12) #18
          to label %110 unwind label %108

106:                                              ; preds = %90
  %107 = landingpad { ptr, i32 }
          cleanup
  br label %115

108:                                              ; preds = %98
  %109 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6dealii11Polynomials10PolynomialIdED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %12) #19
  br label %115

110:                                              ; preds = %98
  call void @_ZN6dealii11Polynomials10PolynomialIdED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %12) #19
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %12) #20
  %111 = add i32 %92, 1
  %112 = zext i32 %111 to i64
  %113 = call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  %114 = icmp ugt i64 %113, %112
  br i1 %114, label %90, label %85, !prof !391, !llvm.loop !435

115:                                              ; preds = %108, %106
  %116 = phi { ptr, i32 } [ %109, %108 ], [ %107, %106 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %12) #20
  br label %117

117:                                              ; preds = %46, %72, %115
  %118 = phi { ptr, i32 } [ %116, %115 ], [ %73, %72 ], [ %47, %46 ]
  call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #19
  br label %119

119:                                              ; preds = %117, %26
  %120 = phi { ptr, i32 } [ %118, %117 ], [ %27, %26 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #20
  call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #19
  br label %121

121:                                              ; preds = %119, %24
  %122 = phi { ptr, i32 } [ %120, %119 ], [ %25, %24 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #20
  call void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  br label %123

123:                                              ; preds = %121, %22
  %124 = phi { ptr, i32 } [ %122, %121 ], [ %23, %22 ]
  resume { ptr, i32 } %124
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !436 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<1>, std::allocator<dealii::Point<1>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !437
  %4 = load ptr, ptr %0, align 8, !tbaa !439
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  ret i64 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2EmRKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = tail call noundef i64 @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE17_S_check_init_lenEmRKS4_(i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #18
  tail call void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2EmRKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %2) #18
  invoke void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #18
          to label %5 unwind label %6

5:                                                ; preds = %3
  ret void

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !440 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !418
  %4 = load ptr, ptr %0, align 8, !tbaa !416
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 96
  ret i64 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(96) ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !441 {
  %3 = load ptr, ptr %0, align 8, !tbaa !416
  %4 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(96) ptr @_ZN6dealii11Polynomials10PolynomialIdEaSEOS2_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #2 comdat align 2 {
  %3 = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZN6dealii11SubscriptoraSERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) #18
  %4 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %1, i64 0, i32 1
  %6 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIdSaIdEEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) #19
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !442 {
  %3 = load ptr, ptr %0, align 8, !tbaa !439
  %4 = getelementptr inbounds %"class.dealii::Point", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZNK6dealii5PointILi1EEclEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !443 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [1 x double], ptr %0, i64 0, i64 %3
  %5 = load double, ptr %4, align 8, !tbaa !352
  ret double %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii11Polynomials10PolynomialIdEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
  tail call void @_ZN6dealii11SubscriptorC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) #18
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials10PolynomialIdEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !311
  %3 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %1, i64 0, i32 1
  invoke void @_ZNSt6vectorIdSaIdEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #18
          to label %5 unwind label %6

5:                                                ; preds = %2
  ret void

6:                                                ; preds = %2
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #19
  resume { ptr, i32 } %7
}

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.9() unnamed_addr #7 section ".text.startup" personality ptr @__gxx_personality_v0 {
  %1 = alloca ptr, align 8
  %2 = alloca %"class.std::allocator.44", align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #20
  store ptr null, ptr %1, align 8, !tbaa !334
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #20
  call void @_ZNSaIPKSt6vectorIdSaIdEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #19
  invoke void @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EEC2EmRKS3_RKS4_(ptr noundef nonnull align 8 dereferenceable(24) @_ZN6dealii11Polynomials8Legendre22recursive_coefficientsE, i64 noundef 20, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #18
          to label %3 unwind label %5

3:                                                ; preds = %0
  call void @_ZNSt15__new_allocatorIPKSt6vectorIdSaIdEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #20
  %4 = call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EED2Ev, ptr nonnull @_ZN6dealii11Polynomials8Legendre22recursive_coefficientsE, ptr nonnull @__dso_handle) #20
  ret void

5:                                                ; preds = %0
  %6 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIPKSt6vectorIdSaIdEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #20
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIPKSt6vectorIdSaIdEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !349 {
  tail call void @_ZNSt15__new_allocatorIPKSt6vectorIdSaIdEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EEC2EmRKS3_RKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !349 {
  %5 = tail call noundef i64 @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EE17_S_check_init_lenEmRKS4_(i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %3) #18
  tail call void @_ZNSt12_Vector_baseIPKSt6vectorIdSaIdEESaIS4_EEC2EmRKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %5, ptr noundef nonnull align 1 dereferenceable(1) %3) #18
  invoke void @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EE18_M_fill_initializeEmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #18
          to label %6 unwind label %7

6:                                                ; preds = %4
  ret void

7:                                                ; preds = %4
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt12_Vector_baseIPKSt6vectorIdSaIdEESaIS4_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !310 {
  %2 = load ptr, ptr %0, align 8, !tbaa !444
  %3 = getelementptr inbounds %"struct.std::_Vector_base<const std::vector<double> *, std::allocator<const std::vector<double> *>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !446
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIPKSt6vectorIdSaIdEESaIS4_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  invoke void @_ZSt8_DestroyIPPKSt6vectorIdSaIdEES4_EvT_S6_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #18
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseIPKSt6vectorIdSaIdEESaIS4_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #21
  unreachable
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #8

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.10() unnamed_addr #7 section ".text.startup" personality ptr @__gxx_personality_v0 {
  %1 = alloca ptr, align 8
  %2 = alloca %"class.std::allocator.44", align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #20
  store ptr null, ptr %1, align 8, !tbaa !334
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #20
  call void @_ZNSaIPKSt6vectorIdSaIdEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #19
  invoke void @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EEC2EmRKS3_RKS4_(ptr noundef nonnull align 8 dereferenceable(24) @_ZN6dealii11Polynomials8Legendre20shifted_coefficientsE, i64 noundef 20, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #18
          to label %3 unwind label %5

3:                                                ; preds = %0
  call void @_ZNSt15__new_allocatorIPKSt6vectorIdSaIdEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #20
  %4 = call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EED2Ev, ptr nonnull @_ZN6dealii11Polynomials8Legendre20shifted_coefficientsE, ptr nonnull @__dso_handle) #20
  ret void

5:                                                ; preds = %0
  %6 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIPKSt6vectorIdSaIdEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #20
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN6dealii11Polynomials8LegendreC2Ej(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !310 {
  %3 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii11Polynomials8Legendre16get_coefficientsEj(i32 noundef %1) #18
  tail call void @_ZN6dealii11Polynomials10PolynomialIdEC2ERKSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(24) %3) #18
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials8LegendreE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !311
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii11Polynomials8Legendre16get_coefficientsEj(i32 noundef %0) local_unnamed_addr #2 align 2 !prof !310 {
  %2 = alloca %"class.dealii::Threads::DummyThreadMutex::ScopedLock", align 1
  tail call void @_ZN6dealii11Polynomials8Legendre20compute_coefficientsEj(i32 noundef %0) #18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #20
  call void @_ZN6dealii7Threads16DummyThreadMutex10ScopedLockC2ERS1_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) @_ZN6dealii12_GLOBAL__N_117coefficients_lockE) #18
  %3 = zext i32 %0 to i64
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) @_ZN6dealii11Polynomials8Legendre20shifted_coefficientsE, i64 noundef %3) #19
  %5 = load ptr, ptr %4, align 8, !tbaa !334
  call void @_ZN6dealii7Threads16DummyThreadMutex10ScopedLockD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #20
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN6dealii11Polynomials8Legendre20compute_coefficientsEj(i32 noundef %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !310 {
  %2 = alloca %"class.dealii::Threads::DummyThreadMutex::ScopedLock", align 1
  %3 = alloca ptr, align 8
  %4 = alloca %"class.std::allocator.22", align 1
  %5 = alloca %"class.std::allocator.22", align 1
  %6 = alloca %"class.std::allocator.22", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #20
  call void @_ZN6dealii7Threads16DummyThreadMutex10ScopedLockC2ERS1_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) @_ZN6dealii12_GLOBAL__N_117coefficients_lockE) #18
  %7 = call i32 @llvm.umax.i32(i32 %0, i32 1)
  %8 = call noundef i64 @_ZNKSt6vectorIPKS_IdSaIdEESaIS3_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) @_ZN6dealii11Polynomials8Legendre22recursive_coefficientsE) #19
  %9 = add i32 %7, 1
  %10 = zext i32 %9 to i64
  %11 = icmp ult i64 %8, %10
  br i1 %11, label %20, label %12

12:                                               ; preds = %1
  %13 = call noundef i64 @_ZNKSt6vectorIPKS_IdSaIdEESaIS3_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) @_ZN6dealii11Polynomials8Legendre22recursive_coefficientsE) #19
  %14 = icmp ult i64 %13, %10
  br i1 %14, label %135, label %15

15:                                               ; preds = %12
  %16 = zext i32 %7 to i64
  %17 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) @_ZN6dealii11Polynomials8Legendre22recursive_coefficientsE, i64 noundef %16) #19
  %18 = load ptr, ptr %17, align 8, !tbaa !334
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %135

20:                                               ; preds = %15, %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  store ptr null, ptr %3, align 8, !tbaa !334
  invoke void @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EE6resizeEmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) @_ZN6dealii11Polynomials8Legendre22recursive_coefficientsE, i64 noundef %10, ptr noundef nonnull align 8 dereferenceable(8) %3) #18
          to label %21 unwind label %44

21:                                               ; preds = %20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  %22 = icmp ult i32 %0, 2
  br i1 %22, label %23, label %58

23:                                               ; preds = %21
  %24 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23
          to label %25 unwind label %46

25:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #20
  call void @_ZNSaIdEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #19
  invoke void @_ZNSt6vectorIdSaIdEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %4) #18
          to label %26 unwind label %48

26:                                               ; preds = %25
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #20
  %27 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 noundef 0) #19
  store double 1.000000e+00, ptr %27, align 8, !tbaa !352
  %28 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23
          to label %29 unwind label %50

29:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #20
  call void @_ZNSaIdEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #19
  invoke void @_ZNSt6vectorIdSaIdEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %28, i64 noundef 2, ptr noundef nonnull align 1 dereferenceable(1) %5) #18
          to label %30 unwind label %52

30:                                               ; preds = %29
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #20
  %31 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %28, i64 noundef 0) #19
  store double 0.000000e+00, ptr %31, align 8, !tbaa !352
  %32 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %28, i64 noundef 1) #19
  store double 1.000000e+00, ptr %32, align 8, !tbaa !352
  %33 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) @_ZN6dealii11Polynomials8Legendre22recursive_coefficientsE, i64 noundef 0) #19
  store ptr %24, ptr %33, align 8, !tbaa !334
  %34 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) @_ZN6dealii11Polynomials8Legendre22recursive_coefficientsE, i64 noundef 1) #19
  store ptr %28, ptr %34, align 8, !tbaa !334
  %35 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23
          to label %36 unwind label %50

36:                                               ; preds = %30
  invoke void @_ZNSt6vectorIdSaIdEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %35, ptr noundef nonnull align 8 dereferenceable(24) %24) #18
          to label %37 unwind label %54

37:                                               ; preds = %36
  %38 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23
          to label %39 unwind label %50

39:                                               ; preds = %37
  invoke void @_ZNSt6vectorIdSaIdEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %38, ptr noundef nonnull align 8 dereferenceable(24) %28) #18
          to label %40 unwind label %56

40:                                               ; preds = %39
  invoke void @_ZN6dealii11Polynomials10PolynomialIdE5shiftIdEEvRSt6vectorIdSaIdEET_(ptr noundef nonnull align 8 dereferenceable(24) %35, double noundef -1.000000e+00) #18
          to label %41 unwind label %50

41:                                               ; preds = %40
  call void @_ZN6dealii11Polynomials10PolynomialIdE5scaleERSt6vectorIdSaIdEEd(ptr noundef nonnull align 8 dereferenceable(24) %35, double noundef 2.000000e+00) #18
  invoke void @_ZN6dealii11Polynomials10PolynomialIdE5shiftIdEEvRSt6vectorIdSaIdEET_(ptr noundef nonnull align 8 dereferenceable(24) %38, double noundef -1.000000e+00) #18
          to label %42 unwind label %50

42:                                               ; preds = %41
  call void @_ZN6dealii11Polynomials10PolynomialIdE5scaleERSt6vectorIdSaIdEEd(ptr noundef nonnull align 8 dereferenceable(24) %38, double noundef 2.000000e+00) #18
  call void @_ZN6dealii11Polynomials10PolynomialIdE8multiplyERSt6vectorIdSaIdEEd(ptr noundef nonnull align 8 dereferenceable(24) %38, double noundef 0x3FFBB67AE8584CAA) #18
  %43 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) @_ZN6dealii11Polynomials8Legendre20shifted_coefficientsE, i64 noundef 0) #19
  store ptr %35, ptr %43, align 8, !tbaa !334
  br label %131

44:                                               ; preds = %20
  %45 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  br label %136

46:                                               ; preds = %23
  %47 = landingpad { ptr, i32 }
          cleanup
  br label %136

48:                                               ; preds = %25
  %49 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #20
  call void @_ZdlPv(ptr noundef nonnull %24) #24
  br label %136

50:                                               ; preds = %41, %40, %37, %30, %26
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %136

52:                                               ; preds = %29
  %53 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #20
  call void @_ZdlPv(ptr noundef nonnull %28) #24
  br label %136

54:                                               ; preds = %36
  %55 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %35) #24
  br label %136

56:                                               ; preds = %39
  %57 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %38) #24
  br label %136

58:                                               ; preds = %21
  call void @_ZNK6dealii7Threads16DummyThreadMutex7releaseEv(ptr noundef nonnull align 1 dereferenceable(1) @_ZN6dealii12_GLOBAL__N_117coefficients_lockE) #18
  %59 = add i32 %7, -1
  invoke void @_ZN6dealii11Polynomials8Legendre20compute_coefficientsEj(i32 noundef %59) #18
          to label %60 unwind label %99

60:                                               ; preds = %58
  call void @_ZNK6dealii7Threads16DummyThreadMutex7acquireEv(ptr noundef nonnull align 1 dereferenceable(1) @_ZN6dealii12_GLOBAL__N_117coefficients_lockE) #18
  %61 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23
          to label %62 unwind label %101

62:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #20
  call void @_ZNSaIdEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #19
  invoke void @_ZNSt6vectorIdSaIdEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %61, i64 noundef %10, ptr noundef nonnull align 1 dereferenceable(1) %6) #18
          to label %63 unwind label %103

63:                                               ; preds = %62
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #20
  %64 = uitofp i32 %7 to double
  %65 = fdiv double 1.000000e+00, %64
  %66 = shl i32 %7, 1
  %67 = add i32 %66, -1
  %68 = uitofp i32 %67 to double
  %69 = fmul double %65, %68
  %70 = uitofp i32 %59 to double
  %71 = zext i32 %59 to i64
  %72 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) @_ZN6dealii11Polynomials8Legendre22recursive_coefficientsE, i64 noundef %71) #19
  %73 = load ptr, ptr %72, align 8, !tbaa !334
  %74 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %73, i64 noundef %71) #19
  %75 = load double, ptr %74, align 8, !tbaa !352
  %76 = fmul double %69, %75
  %77 = zext i32 %7 to i64
  %78 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %61, i64 noundef %77) #19
  store double %76, ptr %78, align 8, !tbaa !352
  %79 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) @_ZN6dealii11Polynomials8Legendre22recursive_coefficientsE, i64 noundef %71) #19
  %80 = load ptr, ptr %79, align 8, !tbaa !334
  %81 = add i32 %7, -2
  %82 = zext i32 %81 to i64
  %83 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %80, i64 noundef %82) #19
  %84 = load double, ptr %83, align 8, !tbaa !352
  %85 = fmul double %69, %84
  %86 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %61, i64 noundef %71) #19
  store double %85, ptr %86, align 8, !tbaa !352
  %87 = icmp eq i32 %81, 0
  %88 = fneg double %65
  %89 = fmul double %88, %70
  br i1 %87, label %90, label %105

90:                                               ; preds = %105, %63
  %91 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) @_ZN6dealii11Polynomials8Legendre22recursive_coefficientsE, i64 noundef %82) #19
  %92 = load ptr, ptr %91, align 8, !tbaa !334
  %93 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %92, i64 noundef 0) #19
  %94 = load double, ptr %93, align 8, !tbaa !352
  %95 = fmul double %94, %89
  %96 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %61, i64 noundef 0) #19
  store double %95, ptr %96, align 8, !tbaa !352
  %97 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) @_ZN6dealii11Polynomials8Legendre22recursive_coefficientsE, i64 noundef %77) #19
  store ptr %61, ptr %97, align 8, !tbaa !334
  %98 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23
          to label %122 unwind label %127

99:                                               ; preds = %58
  %100 = landingpad { ptr, i32 }
          cleanup
  br label %136

101:                                              ; preds = %60
  %102 = landingpad { ptr, i32 }
          cleanup
  br label %136

103:                                              ; preds = %62
  %104 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #20
  call void @_ZdlPv(ptr noundef nonnull %61) #24
  br label %136

105:                                              ; preds = %63, %105
  %106 = phi i64 [ %119, %105 ], [ 1, %63 ]
  %107 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) @_ZN6dealii11Polynomials8Legendre22recursive_coefficientsE, i64 noundef %71) #19
  %108 = load ptr, ptr %107, align 8, !tbaa !334
  %109 = add nsw i64 %106, -1
  %110 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %108, i64 noundef %109) #19
  %111 = load double, ptr %110, align 8, !tbaa !352
  %112 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) @_ZN6dealii11Polynomials8Legendre22recursive_coefficientsE, i64 noundef %82) #19
  %113 = load ptr, ptr %112, align 8, !tbaa !334
  %114 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %113, i64 noundef %106) #19
  %115 = load double, ptr %114, align 8, !tbaa !352
  %116 = fmul double %115, %89
  %117 = call double @llvm.fmuladd.f64(double %69, double %111, double %116)
  %118 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %61, i64 noundef %106) #19
  store double %117, ptr %118, align 8, !tbaa !352
  %119 = add nuw nsw i64 %106, 1
  %120 = trunc i64 %119 to i32
  %121 = icmp eq i32 %59, %120
  br i1 %121, label %90, label %105, !llvm.loop !447

122:                                              ; preds = %90
  invoke void @_ZNSt6vectorIdSaIdEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %98, ptr noundef nonnull align 8 dereferenceable(24) %61) #18
          to label %123 unwind label %129

123:                                              ; preds = %122
  invoke void @_ZN6dealii11Polynomials10PolynomialIdE5shiftIdEEvRSt6vectorIdSaIdEET_(ptr noundef nonnull align 8 dereferenceable(24) %98, double noundef -1.000000e+00) #18
          to label %124 unwind label %127

124:                                              ; preds = %123
  call void @_ZN6dealii11Polynomials10PolynomialIdE5scaleERSt6vectorIdSaIdEEd(ptr noundef nonnull align 8 dereferenceable(24) %98, double noundef 2.000000e+00) #18
  %125 = call double @llvm.fmuladd.f64(double %64, double 2.000000e+00, double 1.000000e+00)
  %126 = call double @sqrt(double noundef %125) #19
  call void @_ZN6dealii11Polynomials10PolynomialIdE8multiplyERSt6vectorIdSaIdEEd(ptr noundef nonnull align 8 dereferenceable(24) %98, double noundef %126) #18
  br label %131

127:                                              ; preds = %123, %90
  %128 = landingpad { ptr, i32 }
          cleanup
  br label %136

129:                                              ; preds = %122
  %130 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %98) #24
  br label %136

131:                                              ; preds = %124, %42
  %132 = phi i64 [ 1, %42 ], [ %77, %124 ]
  %133 = phi ptr [ %38, %42 ], [ %98, %124 ]
  %134 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) @_ZN6dealii11Polynomials8Legendre20shifted_coefficientsE, i64 noundef %132) #19
  store ptr %133, ptr %134, align 8, !tbaa !334
  br label %135

135:                                              ; preds = %131, %15, %12
  call void @_ZN6dealii7Threads16DummyThreadMutex10ScopedLockD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #20
  ret void

136:                                              ; preds = %101, %103, %129, %127, %46, %48, %52, %56, %54, %50, %99, %44
  %137 = phi { ptr, i32 } [ %100, %99 ], [ %45, %44 ], [ %49, %48 ], [ %47, %46 ], [ %51, %50 ], [ %57, %56 ], [ %55, %54 ], [ %53, %52 ], [ %104, %103 ], [ %102, %101 ], [ %128, %127 ], [ %130, %129 ]
  call void @_ZN6dealii7Threads16DummyThreadMutex10ScopedLockD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #20
  resume { ptr, i32 } %137
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii7Threads16DummyThreadMutex10ScopedLockC2ERS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #1 comdat align 2 !prof !448 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIPKS_IdSaIdEESaIS3_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !310 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<const std::vector<double> *, std::allocator<const std::vector<double> *>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !446
  %4 = load ptr, ptr %0, align 8, !tbaa !444
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  ret i64 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !310 {
  %3 = load ptr, ptr %0, align 8, !tbaa !444
  %4 = getelementptr inbounds ptr, ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EE6resizeEmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 {
  %4 = tail call noundef i64 @_ZNKSt6vectorIPKS_IdSaIdEESaIS3_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = tail call ptr @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %8 = tail call noundef i64 @_ZNKSt6vectorIPKS_IdSaIdEESaIS3_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %9 = sub i64 %1, %8
  tail call void @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS3_S5_EEmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %7, i64 noundef %9, ptr noundef nonnull align 8 dereferenceable(8) %2) #18
  br label %16

10:                                               ; preds = %3
  %11 = tail call noundef i64 @_ZNKSt6vectorIPKS_IdSaIdEESaIS3_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %12 = icmp ugt i64 %11, %1
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load ptr, ptr %0, align 8, !tbaa !444
  %15 = getelementptr inbounds ptr, ptr %14, i64 %1
  tail call void @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EE15_M_erase_at_endEPS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %15) #19
  br label %16

16:                                               ; preds = %10, %13, %6
  ret void
}

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #11

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK6dealii7Threads16DummyThreadMutex7releaseEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 !prof !449 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK6dealii7Threads16DummyThreadMutex7acquireEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 !prof !449 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii7Threads16DummyThreadMutex10ScopedLockD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !448 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN6dealii11Polynomials8Legendre23generate_complete_basisEj(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::vector.32") align 8 %0, i32 noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !310 {
  %3 = alloca %"class.dealii::Polynomials::Legendre", align 8
  tail call void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %4 = add i32 %1, 1
  %5 = zext i32 %4 to i64
  invoke void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %5) #18
          to label %8 unwind label %6

6:                                                ; preds = %2
  %7 = landingpad { ptr, i32 }
          cleanup
  br label %21

8:                                                ; preds = %2, %11
  %9 = phi i32 [ %12, %11 ], [ 0, %2 ]
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %3) #20
  invoke void @_ZN6dealii11Polynomials8LegendreC2Ej(ptr noundef nonnull align 8 dereferenceable(96) %3, i32 noundef %9) #18
          to label %10 unwind label %14

10:                                               ; preds = %8
  invoke void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE9push_backEOS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %3) #18
          to label %11 unwind label %16

11:                                               ; preds = %10
  call void @_ZN6dealii11Polynomials10PolynomialIdED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %3) #19
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #20
  %12 = add i32 %9, 1
  %13 = icmp ugt i32 %12, %1
  br i1 %13, label %20, label %8, !llvm.loop !450

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %18

16:                                               ; preds = %10
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6dealii11Polynomials10PolynomialIdED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %3) #19
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #20
  br label %21

20:                                               ; preds = %11
  ret void

21:                                               ; preds = %18, %6
  %22 = phi { ptr, i32 } [ %19, %18 ], [ %7, %6 ]
  call void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  resume { ptr, i32 } %22
}

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.11() unnamed_addr #7 section ".text.startup" personality ptr @__gxx_personality_v0 {
  %1 = alloca ptr, align 8
  %2 = alloca %"class.std::allocator.44", align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #20
  store ptr null, ptr %1, align 8, !tbaa !334
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #20
  call void @_ZNSaIPKSt6vectorIdSaIdEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #19
  invoke void @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EEC2EmRKS3_RKS4_(ptr noundef nonnull align 8 dereferenceable(24) @_ZN6dealii11Polynomials12Hierarchical22recursive_coefficientsE, i64 noundef 20, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #18
          to label %3 unwind label %5

3:                                                ; preds = %0
  call void @_ZNSt15__new_allocatorIPKSt6vectorIdSaIdEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #20
  %4 = call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EED2Ev, ptr nonnull @_ZN6dealii11Polynomials12Hierarchical22recursive_coefficientsE, ptr nonnull @__dso_handle) #20
  ret void

5:                                                ; preds = %0
  %6 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIPKSt6vectorIdSaIdEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #20
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN6dealii11Polynomials12HierarchicalC2Ej(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !310 {
  %3 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii11Polynomials12Hierarchical16get_coefficientsEj(i32 noundef %1) #18
  tail call void @_ZN6dealii11Polynomials10PolynomialIdEC2ERKSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(24) %3) #18
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials12HierarchicalE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !311
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii11Polynomials12Hierarchical16get_coefficientsEj(i32 noundef %0) local_unnamed_addr #2 align 2 !prof !310 {
  tail call void @_ZN6dealii11Polynomials12Hierarchical20compute_coefficientsEj(i32 noundef %0) #18
  tail call void @_ZNK6dealii7Threads16DummyThreadMutex7acquireEv(ptr noundef nonnull align 1 dereferenceable(1) @_ZN6dealii12_GLOBAL__N_117coefficients_lockE) #18
  %2 = zext i32 %0 to i64
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) @_ZN6dealii11Polynomials12Hierarchical22recursive_coefficientsE, i64 noundef %2) #19
  %4 = load ptr, ptr %3, align 8, !tbaa !334
  tail call void @_ZNK6dealii7Threads16DummyThreadMutex7releaseEv(ptr noundef nonnull align 1 dereferenceable(1) @_ZN6dealii12_GLOBAL__N_117coefficients_lockE) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN6dealii11Polynomials12Hierarchical20compute_coefficientsEj(i32 noundef %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !310 {
  %2 = alloca %"class.dealii::Threads::DummyThreadMutex::ScopedLock", align 1
  %3 = alloca ptr, align 8
  %4 = alloca %"class.std::allocator.22", align 1
  %5 = alloca %"class.std::allocator.22", align 1
  %6 = alloca %"class.std::allocator.22", align 1
  %7 = alloca %"class.std::allocator.22", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #20
  call void @_ZN6dealii7Threads16DummyThreadMutex10ScopedLockC2ERS1_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) @_ZN6dealii12_GLOBAL__N_117coefficients_lockE) #18
  %8 = call i32 @llvm.umax.i32(i32 %0, i32 1)
  %9 = call noundef i64 @_ZNKSt6vectorIPKS_IdSaIdEESaIS3_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) @_ZN6dealii11Polynomials12Hierarchical22recursive_coefficientsE) #19
  %10 = add i32 %8, 1
  %11 = zext i32 %10 to i64
  %12 = icmp ult i64 %9, %11
  br i1 %12, label %21, label %13

13:                                               ; preds = %1
  %14 = call noundef i64 @_ZNKSt6vectorIPKS_IdSaIdEESaIS3_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) @_ZN6dealii11Polynomials12Hierarchical22recursive_coefficientsE) #19
  %15 = icmp ult i64 %14, %11
  br i1 %15, label %127, label %16

16:                                               ; preds = %13
  %17 = zext i32 %8 to i64
  %18 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) @_ZN6dealii11Polynomials12Hierarchical22recursive_coefficientsE, i64 noundef %17) #19
  %19 = load ptr, ptr %18, align 8, !tbaa !334
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %127

21:                                               ; preds = %16, %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  store ptr null, ptr %3, align 8, !tbaa !334
  invoke void @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EE6resizeEmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) @_ZN6dealii11Polynomials12Hierarchical22recursive_coefficientsE, i64 noundef %11, ptr noundef nonnull align 8 dereferenceable(8) %3) #18
          to label %22 unwind label %36

22:                                               ; preds = %21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  %23 = icmp ult i32 %0, 2
  br i1 %23, label %24, label %46

24:                                               ; preds = %22
  %25 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23
          to label %26 unwind label %38

26:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #20
  call void @_ZNSaIdEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #19
  invoke void @_ZNSt6vectorIdSaIdEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %25, i64 noundef 2, ptr noundef nonnull align 1 dereferenceable(1) %4) #18
          to label %27 unwind label %40

27:                                               ; preds = %26
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #20
  %28 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %25, i64 noundef 0) #19
  store double 1.000000e+00, ptr %28, align 8, !tbaa !352
  %29 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %25, i64 noundef 1) #19
  store double -1.000000e+00, ptr %29, align 8, !tbaa !352
  %30 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23
          to label %31 unwind label %42

31:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #20
  call void @_ZNSaIdEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #19
  invoke void @_ZNSt6vectorIdSaIdEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %30, i64 noundef 2, ptr noundef nonnull align 1 dereferenceable(1) %5) #18
          to label %32 unwind label %44

32:                                               ; preds = %31
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #20
  %33 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %30, i64 noundef 0) #19
  store double 0.000000e+00, ptr %33, align 8, !tbaa !352
  %34 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %30, i64 noundef 1) #19
  store double 1.000000e+00, ptr %34, align 8, !tbaa !352
  %35 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) @_ZN6dealii11Polynomials12Hierarchical22recursive_coefficientsE, i64 noundef 0) #19
  store ptr %25, ptr %35, align 8, !tbaa !334
  br label %123

36:                                               ; preds = %21
  %37 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  br label %128

38:                                               ; preds = %24
  %39 = landingpad { ptr, i32 }
          cleanup
  br label %128

40:                                               ; preds = %26
  %41 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #20
  call void @_ZdlPv(ptr noundef nonnull %25) #24
  br label %128

42:                                               ; preds = %27
  %43 = landingpad { ptr, i32 }
          cleanup
  br label %128

44:                                               ; preds = %31
  %45 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #20
  call void @_ZdlPv(ptr noundef nonnull %30) #24
  br label %128

46:                                               ; preds = %22
  %47 = icmp eq i32 %0, 2
  call void @_ZNK6dealii7Threads16DummyThreadMutex7releaseEv(ptr noundef nonnull align 1 dereferenceable(1) @_ZN6dealii12_GLOBAL__N_117coefficients_lockE) #18
  br i1 %47, label %48, label %62

48:                                               ; preds = %46
  invoke void @_ZN6dealii11Polynomials12Hierarchical20compute_coefficientsEj(i32 noundef 1) #18
          to label %49 unwind label %56

49:                                               ; preds = %48
  call void @_ZNK6dealii7Threads16DummyThreadMutex7acquireEv(ptr noundef nonnull align 1 dereferenceable(1) @_ZN6dealii12_GLOBAL__N_117coefficients_lockE) #18
  %50 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23
          to label %51 unwind label %58

51:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #20
  call void @_ZNSaIdEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #19
  invoke void @_ZNSt6vectorIdSaIdEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %50, i64 noundef 3, ptr noundef nonnull align 1 dereferenceable(1) %6) #18
          to label %52 unwind label %60

52:                                               ; preds = %51
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #20
  %53 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %50, i64 noundef 0) #19
  store double 0.000000e+00, ptr %53, align 8, !tbaa !352
  %54 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %50, i64 noundef 1) #19
  store double -4.000000e+00, ptr %54, align 8, !tbaa !352
  %55 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %50, i64 noundef 2) #19
  store double 4.000000e+00, ptr %55, align 8, !tbaa !352
  br label %123

56:                                               ; preds = %62, %48
  %57 = landingpad { ptr, i32 }
          cleanup
  br label %128

58:                                               ; preds = %49
  %59 = landingpad { ptr, i32 }
          cleanup
  br label %128

60:                                               ; preds = %51
  %61 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #20
  call void @_ZdlPv(ptr noundef nonnull %50) #24
  br label %128

62:                                               ; preds = %46
  %63 = add i32 %8, -1
  invoke void @_ZN6dealii11Polynomials12Hierarchical20compute_coefficientsEj(i32 noundef %63) #18
          to label %64 unwind label %56

64:                                               ; preds = %62
  call void @_ZNK6dealii7Threads16DummyThreadMutex7acquireEv(ptr noundef nonnull align 1 dereferenceable(1) @_ZN6dealii12_GLOBAL__N_117coefficients_lockE) #18
  %65 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23
          to label %66 unwind label %88

66:                                               ; preds = %64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #20
  call void @_ZNSaIdEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #19
  invoke void @_ZNSt6vectorIdSaIdEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %65, i64 noundef %11, ptr noundef nonnull align 1 dereferenceable(1) %7) #18
          to label %67 unwind label %90

67:                                               ; preds = %66
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #20
  %68 = zext i32 %63 to i64
  %69 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) @_ZN6dealii11Polynomials12Hierarchical22recursive_coefficientsE, i64 noundef %68) #19
  %70 = load ptr, ptr %69, align 8, !tbaa !334
  %71 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %70, i64 noundef 0) #19
  %72 = load double, ptr %71, align 8, !tbaa !352
  %73 = fneg double %72
  %74 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %65, i64 noundef 0) #19
  store double %73, ptr %74, align 8, !tbaa !352
  %75 = icmp eq i32 %63, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %67
  %77 = zext i32 %8 to i64
  br label %92

78:                                               ; preds = %92, %67
  %79 = phi i64 [ 1, %67 ], [ %77, %92 ]
  %80 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) @_ZN6dealii11Polynomials12Hierarchical22recursive_coefficientsE, i64 noundef %68) #19
  %81 = load ptr, ptr %80, align 8, !tbaa !334
  %82 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %81, i64 noundef %68) #19
  %83 = load double, ptr %82, align 8, !tbaa !352
  %84 = fmul double %83, 2.000000e+00
  %85 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %65, i64 noundef %79) #19
  store double %84, ptr %85, align 8, !tbaa !352
  %86 = and i32 %8, 1
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %108, label %123

88:                                               ; preds = %64
  %89 = landingpad { ptr, i32 }
          cleanup
  br label %128

90:                                               ; preds = %66
  %91 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #20
  call void @_ZdlPv(ptr noundef nonnull %65) #24
  br label %128

92:                                               ; preds = %76, %92
  %93 = phi i64 [ 1, %76 ], [ %106, %92 ]
  %94 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) @_ZN6dealii11Polynomials12Hierarchical22recursive_coefficientsE, i64 noundef %68) #19
  %95 = load ptr, ptr %94, align 8, !tbaa !334
  %96 = add nsw i64 %93, -1
  %97 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %95, i64 noundef %96) #19
  %98 = load double, ptr %97, align 8, !tbaa !352
  %99 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) @_ZN6dealii11Polynomials12Hierarchical22recursive_coefficientsE, i64 noundef %68) #19
  %100 = load ptr, ptr %99, align 8, !tbaa !334
  %101 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %100, i64 noundef %93) #19
  %102 = load double, ptr %101, align 8, !tbaa !352
  %103 = fneg double %102
  %104 = call double @llvm.fmuladd.f64(double %98, double 2.000000e+00, double %103)
  %105 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %65, i64 noundef %93) #19
  store double %104, ptr %105, align 8, !tbaa !352
  %106 = add nuw nsw i64 %93, 1
  %107 = icmp eq i64 %106, %77
  br i1 %107, label %78, label %92, !llvm.loop !451

108:                                              ; preds = %78
  %109 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) @_ZN6dealii11Polynomials12Hierarchical22recursive_coefficientsE, i64 noundef 2) #19
  %110 = load ptr, ptr %109, align 8, !tbaa !334
  %111 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %110, i64 noundef 1) #19
  %112 = load double, ptr %111, align 8, !tbaa !352
  %113 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %65, i64 noundef 1) #19
  %114 = load double, ptr %113, align 8, !tbaa !352
  %115 = fadd double %112, %114
  store double %115, ptr %113, align 8, !tbaa !352
  %116 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) @_ZN6dealii11Polynomials12Hierarchical22recursive_coefficientsE, i64 noundef 2) #19
  %117 = load ptr, ptr %116, align 8, !tbaa !334
  %118 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %117, i64 noundef 2) #19
  %119 = load double, ptr %118, align 8, !tbaa !352
  %120 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %65, i64 noundef 2) #19
  %121 = load double, ptr %120, align 8, !tbaa !352
  %122 = fadd double %119, %121
  store double %122, ptr %120, align 8, !tbaa !352
  br label %123

123:                                              ; preds = %78, %108, %52, %32
  %124 = phi i64 [ 1, %32 ], [ 2, %52 ], [ %79, %108 ], [ %79, %78 ]
  %125 = phi ptr [ %30, %32 ], [ %50, %52 ], [ %65, %108 ], [ %65, %78 ]
  %126 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) @_ZN6dealii11Polynomials12Hierarchical22recursive_coefficientsE, i64 noundef %124) #19
  store ptr %125, ptr %126, align 8, !tbaa !334
  br label %127

127:                                              ; preds = %123, %16, %13
  call void @_ZN6dealii7Threads16DummyThreadMutex10ScopedLockD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #20
  ret void

128:                                              ; preds = %88, %90, %58, %60, %38, %40, %44, %42, %56, %36
  %129 = phi { ptr, i32 } [ %57, %56 ], [ %37, %36 ], [ %41, %40 ], [ %39, %38 ], [ %45, %44 ], [ %43, %42 ], [ %61, %60 ], [ %59, %58 ], [ %91, %90 ], [ %89, %88 ]
  call void @_ZN6dealii7Threads16DummyThreadMutex10ScopedLockD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #20
  resume { ptr, i32 } %129
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN6dealii11Polynomials12Hierarchical23generate_complete_basisEj(ptr dead_on_unwind noalias writable sret(%"class.std::vector.32") align 8 %0, i32 noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !310 {
  %3 = alloca %"class.dealii::Polynomials::Polynomial.19", align 8
  %4 = alloca %"class.std::vector.20", align 8
  %5 = alloca double, align 8
  %6 = alloca %"class.std::allocator.22", align 1
  %7 = alloca %"class.std::allocator.34", align 1
  %8 = alloca %"class.dealii::Polynomials::Hierarchical", align 8
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  store double 1.000000e+00, ptr %5, align 8, !tbaa !352
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #20
  call void @_ZNSaIdEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #19
  invoke void @_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 1 dereferenceable(1) %6) #18
          to label %11 unwind label %14

11:                                               ; preds = %10
  invoke void @_ZN6dealii11Polynomials10PolynomialIdEC1ERKSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #18
          to label %12 unwind label %16

12:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #20
  call void @_ZNSaIN6dealii11Polynomials10PolynomialIdEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #19
  invoke void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2EmRKS3_RKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef nonnull align 1 dereferenceable(1) %7) #18
          to label %13 unwind label %18

13:                                               ; preds = %12
  call void @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #20
  call void @_ZN6dealii11Polynomials10PolynomialIdED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %3) #19
  call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #19
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #20
  br label %43

14:                                               ; preds = %10
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %22

16:                                               ; preds = %11
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %20

18:                                               ; preds = %12
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #20
  call void @_ZN6dealii11Polynomials10PolynomialIdED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %3) #19
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi { ptr, i32 } [ %19, %18 ], [ %17, %16 ]
  call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #19
  br label %22

22:                                               ; preds = %20, %14
  %23 = phi { ptr, i32 } [ %21, %20 ], [ %15, %14 ]
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #20
  br label %44

24:                                               ; preds = %2
  tail call void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %25 = add i32 %1, 1
  %26 = zext i32 %25 to i64
  invoke void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %26) #18
          to label %29 unwind label %27

27:                                               ; preds = %24
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %41

29:                                               ; preds = %24, %32
  %30 = phi i32 [ %33, %32 ], [ 0, %24 ]
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %8) #20
  invoke void @_ZN6dealii11Polynomials12HierarchicalC2Ej(ptr noundef nonnull align 8 dereferenceable(96) %8, i32 noundef %30) #18
          to label %31 unwind label %35

31:                                               ; preds = %29
  invoke void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE9push_backEOS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %8) #18
          to label %32 unwind label %37

32:                                               ; preds = %31
  call void @_ZN6dealii11Polynomials10PolynomialIdED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %8) #19
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %8) #20
  %33 = add i32 %30, 1
  %34 = icmp ugt i32 %33, %1
  br i1 %34, label %43, label %29, !llvm.loop !452

35:                                               ; preds = %29
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %39

37:                                               ; preds = %31
  %38 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6dealii11Polynomials10PolynomialIdED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %8) #19
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi { ptr, i32 } [ %38, %37 ], [ %36, %35 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %8) #20
  br label %41

41:                                               ; preds = %39, %27
  %42 = phi { ptr, i32 } [ %40, %39 ], [ %28, %27 ]
  call void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  br label %44

43:                                               ; preds = %32, %13
  ret void

44:                                               ; preds = %41, %22
  %45 = phi { ptr, i32 } [ %23, %22 ], [ %42, %41 ]
  resume { ptr, i32 } %45
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii11Polynomials10PolynomialIdED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #1 comdat align 2 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials10PolynomialIdEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !311
  %2 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %0, i64 0, i32 1
  tail call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #19
  tail call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii11Polynomials10PolynomialIdED0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN6dealii11Polynomials10PolynomialIdED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) #19
  tail call void @_ZdlPv(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii11Polynomials10PolynomialIfED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #1 comdat align 2 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials10PolynomialIfEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !311
  %2 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %0, i64 0, i32 1
  tail call void @_ZNSt6vectorIfSaIfEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #19
  tail call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii11Polynomials10PolynomialIfED0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN6dealii11Polynomials10PolynomialIfED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) #19
  tail call void @_ZdlPv(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii11Polynomials8MonomialIfED0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN6dealii11Polynomials10PolynomialIfED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) #19
  tail call void @_ZdlPv(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii11Polynomials8MonomialIdED0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN6dealii11Polynomials10PolynomialIdED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) #19
  tail call void @_ZdlPv(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii11Polynomials19LagrangeEquidistantD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN6dealii11Polynomials10PolynomialIdED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) #19
  tail call void @_ZdlPv(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii11Polynomials8LegendreD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN6dealii11Polynomials10PolynomialIdED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) #19
  tail call void @_ZdlPv(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii11Polynomials12HierarchicalD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN6dealii11Polynomials10PolynomialIdED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) #19
  tail call void @_ZdlPv(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIfSaIfEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 !prof !310 {
  tail call void @_ZNSt12_Vector_baseIfSaIfEE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIfSaIfEE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 !prof !310 {
  tail call void @_ZNSaIfEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #19
  tail call void @_ZNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 !prof !310 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIfEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !310 {
  ret void
}

; Function Attrs: optsize
declare void @_ZN6dealii11SubscriptorC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIfSaIfEEC2EOS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 comdat align 2 {
  tail call void @_ZNSt12_Vector_baseIfSaIfEEC2EOS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIfSaIfEEC2EOS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 comdat align 2 {
  tail call void @_ZNSt12_Vector_baseIfSaIfEE12_Vector_implC2EOS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIfSaIfEE12_Vector_implC2EOS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 comdat align 2 {
  tail call void @_ZNSaIfEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #19
  tail call void @_ZNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataC2EOS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataC2EOS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 comdat align 2 {
  %3 = load <2 x ptr>, ptr %1, align 8, !tbaa !334
  store <2 x ptr> %3, ptr %0, align 8, !tbaa !334
  %4 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !339
  store ptr %6, ptr %4, align 8, !tbaa !339
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIfEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #1 comdat align 2 !prof !310 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIdSaIdEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 !prof !350 {
  tail call void @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 !prof !350 {
  tail call void @_ZNSaIdEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #19
  tail call void @_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIdEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !453 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEEC2EOS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 comdat align 2 {
  tail call void @_ZNSt12_Vector_baseIdSaIdEEC2EOS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIdSaIdEEC2EOS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 comdat align 2 {
  tail call void @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2EOS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2EOS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 comdat align 2 {
  tail call void @_ZNSaIdEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #19
  tail call void @_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2EOS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2EOS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 comdat align 2 {
  %3 = load <2 x ptr>, ptr %1, align 8, !tbaa !334
  store <2 x ptr> %3, ptr %0, align 8, !tbaa !334
  %4 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !395
  store ptr %6, ptr %4, align 8, !tbaa !395
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIdEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #1 comdat align 2 !prof !454 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIfEESaIS3_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 !prof !310 {
  tail call void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIfEESaIS3_EE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIfEESaIS3_EE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 !prof !310 {
  tail call void @_ZNSaIN6dealii11Polynomials10PolynomialIfEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #19
  tail call void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIfEESaIS3_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIN6dealii11Polynomials10PolynomialIfEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !310 {
  tail call void @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIfEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIfEESaIS3_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 !prof !310 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIfEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !310 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 !prof !349 {
  tail call void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 !prof !349 {
  tail call void @_ZNSaIN6dealii11Polynomials10PolynomialIdEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #19
  tail call void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 !prof !455 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !428 {
  ret void
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(72) ptr @_ZN6dealii11SubscriptoraSERKS0_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIdSaIdEEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 {
  tail call void @_ZNSt6vectorIdSaIdEE14_M_move_assignEOS1_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEE14_M_move_assignEOS1_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::vector.20", align 8
  %4 = alloca %"class.std::allocator.22", align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #20
  call void @_ZNKSt12_Vector_baseIdSaIdEE13get_allocatorEv(ptr dead_on_unwind nonnull writable sret(%"class.std::allocator.22") align 1 %4, ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  call void @_ZNSt6vectorIdSaIdEEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) #19
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #20
  call void @_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_data12_M_swap_dataERS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  call void @_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_data12_M_swap_dataERS2_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  %5 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %6 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  call void @_ZSt15__alloc_on_moveISaIdEEvRT_S2_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6) #18
  call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNKSt12_Vector_baseIdSaIdEE13get_allocatorEv(ptr dead_on_unwind noalias writable sret(%"class.std::allocator.22") align 1 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 {
  %3 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  tail call void @_ZNSaIdEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %3) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #1 comdat align 2 {
  tail call void @_ZNSt12_Vector_baseIdSaIdEEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_data12_M_swap_dataERS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 !prof !310 {
  %3 = alloca %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #20
  call void @_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #19
  call void @_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_data12_M_copy_dataERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  call void @_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_data12_M_copy_dataERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  call void @_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_data12_M_copy_dataERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %3) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt15__alloc_on_moveISaIdEEvRT_S2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #1 comdat {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !456 {
  ret ptr %0
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #12 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #20
  tail call void @_ZSt9terminatev() #21
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !457 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIdEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #1 comdat align 2 !prof !454 {
  tail call void @_ZNSt15__new_allocatorIdEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIdSaIdEEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #1 comdat align 2 !prof !458 {
  tail call void @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #1 comdat align 2 !prof !459 {
  tail call void @_ZNSaIdEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #19
  tail call void @_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 !prof !460 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_data12_M_copy_dataERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 !prof !310 {
  %3 = load <2 x ptr>, ptr %1, align 8, !tbaa !334
  store <2 x ptr> %3, ptr %0, align 8, !tbaa !334
  %4 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !395
  %6 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !395
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPddEvT_S1_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #2 comdat !prof !461 {
  tail call void @_ZSt8_DestroyIPdEvT_S1_(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !370 {
  %2 = load ptr, ptr %0, align 8, !tbaa !346
  %3 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !395
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  invoke void @_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #18
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #21
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPdEvT_S1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat !prof !461 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !461 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 !prof !461 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !462

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #18
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorIdE10deallocateEPdm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIdE10deallocateEPdm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #24
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_(i64 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #2 comdat align 2 !prof !463 {
  %3 = alloca %"class.std::allocator.22", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #20
  call void @_ZNSaIdEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %1) #19
  %4 = call noundef i64 @_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %3) #19
  %5 = icmp ult i64 %4, %0
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #20
  br i1 %5, label %6, label %7, !prof !464

6:                                                ; preds = %2
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #22
  unreachable

7:                                                ; preds = %2
  ret i64 %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !465 {
  tail call void @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %2) #19
  invoke void @_ZNSt12_Vector_baseIdSaIdEE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #18
          to label %4 unwind label %5

4:                                                ; preds = %3
  ret void

5:                                                ; preds = %3
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !346
  %4 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %5 = tail call noundef ptr @_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E(ptr noundef %3, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %4) #18
  %6 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %5, ptr %6, align 8, !tbaa !348
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !466 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  store i64 1152921504606846975, ptr %2, align 8, !tbaa !467
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  %4 = tail call noundef i64 @_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0) #19
  store i64 %4, ptr %3, align 8, !tbaa !467
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  %6 = load i64, ptr %5, align 8, !tbaa !467
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  ret i64 %6
}

; Function Attrs: noreturn optsize
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIdE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #19
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat !prof !469 {
  %3 = load i64, ptr %1, align 8, !tbaa !467
  %4 = load i64, ptr %0, align 8, !tbaa !467
  %5 = icmp ult i64 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0, !prof !470
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIdE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 !prof !466 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIdE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #19
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIdE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 !prof !471 {
  ret i64 1152921504606846975
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIdSaIdEE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !465 {
  %3 = tail call noundef ptr @_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #18
  store ptr %3, ptr %0, align 8, !tbaa !346
  %4 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !348
  %5 = getelementptr inbounds double, ptr %3, i64 %1
  %6 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !395
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !472 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4, !prof !473

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaIdEE8allocateERS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #18
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIdEE8allocateERS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorIdE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #18
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIdE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorIdE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #19
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !474

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 2305843009213693951
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #22
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #22
  unreachable

10:                                               ; preds = %3
  %11 = shl i64 %1, 3
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #23
  ret ptr %12
}

; Function Attrs: noreturn optsize
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #13

; Function Attrs: noreturn optsize
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #13

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #2 comdat {
  %4 = tail call noundef ptr @_ZSt25__uninitialized_default_nIPdmET_S1_T0_(ptr noundef %0, i64 noundef %1) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt25__uninitialized_default_nIPdmET_S1_T0_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 comdat {
  %3 = tail call noundef ptr @_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_(ptr noundef %0, i64 noundef %1) #18
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  tail call void @_ZSt10_ConstructIdJEEvPT_DpOT0_(ptr noundef %0) #18
  %5 = getelementptr inbounds double, ptr %0, i64 1
  %6 = add i64 %1, -1
  %7 = tail call noundef ptr @_ZSt6fill_nIPdmdET_S1_T0_RKT1_(ptr noundef nonnull %5, i64 noundef %6, ptr noundef nonnull align 8 dereferenceable(8) %0) #18
  br label %8

8:                                                ; preds = %4, %2
  %9 = phi ptr [ %7, %4 ], [ %0, %2 ]
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructIdJEEvPT_DpOT0_(ptr noundef %0) local_unnamed_addr #1 comdat {
  store double 0.000000e+00, ptr %0, align 8, !tbaa !352
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt6fill_nIPdmdET_S1_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat !prof !475 {
  %4 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !334
  %5 = tail call noundef i64 @_ZSt17__size_to_integerm(i64 noundef %1) #18
  call void @_ZSt19__iterator_categoryIPdENSt15iterator_traitsIT_E17iterator_categoryERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  %6 = call noundef ptr @_ZSt10__fill_n_aIPdmdET_S1_T0_RKT1_St26random_access_iterator_tag(ptr noundef %0, i64 noundef %5, ptr noundef nonnull align 8 dereferenceable(8) %2) #18
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt10__fill_n_aIPdmdET_S1_T0_RKT1_St26random_access_iterator_tag(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat !prof !475 {
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %7, label %5, !prof !476

5:                                                ; preds = %3
  %6 = getelementptr inbounds double, ptr %0, i64 %1
  tail call void @_ZSt8__fill_aIPddEvT_S1_RKT0_(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull align 8 dereferenceable(8) %2) #18
  br label %7

7:                                                ; preds = %3, %5
  %8 = phi ptr [ %6, %5 ], [ %0, %3 ]
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt17__size_to_integerm(i64 noundef %0) local_unnamed_addr #1 comdat !prof !477 {
  ret i64 %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPdENSt15iterator_traitsIT_E17iterator_categoryERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat !prof !478 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8__fill_aIPddEvT_S1_RKT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat !prof !479 {
  tail call void @_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat !prof !480 {
  %4 = load double, ptr %2, align 8, !tbaa !352
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %10, label %6, !prof !481

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  store double %4, ptr %7, align 8, !tbaa !352
  %8 = getelementptr inbounds double, ptr %7, i64 1
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %10, label %6, !prof !482, !llvm.loop !483

10:                                               ; preds = %6, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEE18_M_fill_initializeEmRKd(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 !prof !394 {
  %4 = load ptr, ptr %0, align 8, !tbaa !346
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %6 = tail call noundef ptr @_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E(ptr noundef %4, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %5) #18
  %7 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !348
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #2 comdat !prof !475 {
  %5 = tail call noundef ptr @_ZSt20uninitialized_fill_nIPdmdET_S1_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #18
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt20uninitialized_fill_nIPdmdET_S1_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat {
  %4 = tail call noundef ptr @_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPdmdEET_S3_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPdmdEET_S3_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 !prof !475 {
  %4 = tail call noundef ptr @_ZSt6fill_nIPdmdET_S1_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE17_S_check_init_lenEmRKS4_(i64 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #2 comdat align 2 !prof !484 {
  %3 = alloca %"class.std::allocator.34", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #20
  call void @_ZNSaIN6dealii11Polynomials10PolynomialIdEEEC2ERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %1) #19
  %4 = call noundef i64 @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE11_S_max_sizeERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %3) #19
  %5 = icmp ult i64 %4, %0
  call void @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #20
  br i1 %5, label %6, label %7, !prof !485

6:                                                ; preds = %2
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #22
  unreachable

7:                                                ; preds = %2
  ret i64 %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2EmRKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !486 {
  tail call void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE12_Vector_implC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %2) #19
  invoke void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #18
          to label %4 unwind label %5

4:                                                ; preds = %3
  ret void

5:                                                ; preds = %3
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE18_M_fill_initializeEmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(96) %2) local_unnamed_addr #2 comdat align 2 !prof !424 {
  %4 = load ptr, ptr %0, align 8, !tbaa !416
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %6 = tail call noundef ptr @_ZSt24__uninitialized_fill_n_aIPN6dealii11Polynomials10PolynomialIdEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E(ptr noundef %4, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 1 dereferenceable(1) %5) #18
  %7 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !418
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !420 {
  %2 = load ptr, ptr %0, align 8, !tbaa !416
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !419
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 96
  invoke void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE13_M_deallocateEPS3_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #18
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #21
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE11_S_max_sizeERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 !prof !487 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  store i64 96076792050570581, ptr %2, align 8, !tbaa !467
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  %4 = tail call noundef i64 @_ZNSt16allocator_traitsISaIN6dealii11Polynomials10PolynomialIdEEEE8max_sizeERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %0) #19
  store i64 %4, ptr %3, align 8, !tbaa !467
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  %6 = load i64, ptr %5, align 8, !tbaa !467
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIN6dealii11Polynomials10PolynomialIdEEEC2ERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #1 comdat align 2 !prof !488 {
  tail call void @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEEC2ERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaIN6dealii11Polynomials10PolynomialIdEEEE8max_sizeERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #19
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 !prof !487 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #19
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 !prof !489 {
  ret i64 96076792050570581
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEEC2ERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #1 comdat align 2 !prof !488 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE12_Vector_implC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #1 comdat align 2 !prof !490 {
  tail call void @_ZNSaIN6dealii11Polynomials10PolynomialIdEEEC2ERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #19
  tail call void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !486 {
  %3 = tail call noundef ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #18
  store ptr %3, ptr %0, align 8, !tbaa !416
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !418
  %5 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %3, i64 %1
  %6 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !419
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !491 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !492 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4, !prof !493

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaIN6dealii11Polynomials10PolynomialIdEEEE8allocateERS4_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #18
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIN6dealii11Polynomials10PolynomialIdEEEE8allocateERS4_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #18
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #19
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !474

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 192153584101141162
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #22
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #22
  unreachable

10:                                               ; preds = %3
  %11 = mul i64 %1, 96
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #23
  ret ptr %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt24__uninitialized_fill_n_aIPN6dealii11Polynomials10PolynomialIdEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #2 comdat !prof !424 {
  %5 = tail call noundef ptr @_ZSt20uninitialized_fill_nIPN6dealii11Polynomials10PolynomialIdEEmS3_ET_S5_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(96) %2) #18
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !494 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt20uninitialized_fill_nIPN6dealii11Polynomials10PolynomialIdEEmS3_ET_S5_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(96) %2) local_unnamed_addr #2 comdat {
  %4 = tail call noundef ptr @_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPN6dealii11Polynomials10PolynomialIdEEmS5_EET_S7_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(96) %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPN6dealii11Polynomials10PolynomialIdEEmS5_EET_S7_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(96) %2) local_unnamed_addr #2 comdat align 2 !prof !424 {
  %4 = tail call noundef ptr @_ZSt18__do_uninit_fill_nIPN6dealii11Polynomials10PolynomialIdEEmS3_ET_S5_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(96) %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt18__do_uninit_fill_nIPN6dealii11Polynomials10PolynomialIdEEmS3_ET_S5_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(96) %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 !prof !424 {
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %17, label %5, !prof !495

5:                                                ; preds = %3, %8
  %6 = phi ptr [ %10, %8 ], [ %0, %3 ]
  %7 = phi i64 [ %9, %8 ], [ %1, %3 ]
  invoke void @_ZSt10_ConstructIN6dealii11Polynomials10PolynomialIdEEJRKS3_EEvPT_DpOT0_(ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(96) %2) #18
          to label %8 unwind label %12

8:                                                ; preds = %5
  %9 = add i64 %7, -1
  %10 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %6, i64 1
  %11 = icmp eq i64 %9, 0
  br i1 %11, label %17, label %5, !prof !496, !llvm.loop !497

12:                                               ; preds = %5
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  %15 = tail call ptr @__cxa_begin_catch(ptr %14) #20
  invoke void @_ZSt8_DestroyIPN6dealii11Polynomials10PolynomialIdEEEvT_S5_(ptr noundef %0, ptr noundef %6) #18
          to label %16 unwind label %19

16:                                               ; preds = %12
  invoke void @__cxa_rethrow() #25
          to label %25 unwind label %19

17:                                               ; preds = %8, %3
  %18 = phi ptr [ %0, %3 ], [ %10, %8 ]
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
  tail call void @__clang_call_terminate(ptr %24) #21
  unreachable

25:                                               ; preds = %16
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructIN6dealii11Polynomials10PolynomialIdEEJRKS3_EEvPT_DpOT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #2 comdat {
  tail call void @_ZN6dealii11Polynomials10PolynomialIdEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN6dealii11Polynomials10PolynomialIdEEEvT_S5_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat !prof !498 {
  tail call void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN6dealii11Polynomials10PolynomialIdEEEEvT_S7_(ptr noundef %0, ptr noundef %1) #18
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN6dealii11Polynomials10PolynomialIdEEEEvT_S7_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !498 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !499

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZSt8_DestroyIN6dealii11Polynomials10PolynomialIdEEEvPT_(ptr noundef %5) #18
  %6 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !500, !llvm.loop !501

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIN6dealii11Polynomials10PolynomialIdEEEvPT_(ptr noundef %0) local_unnamed_addr #1 comdat !prof !502 {
  %2 = load ptr, ptr %0, align 8, !tbaa !311
  %3 = load ptr, ptr %2, align 8
  tail call void %3(ptr noundef nonnull align 8 dereferenceable(96) %0) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE13_M_deallocateEPS3_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 !prof !498 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !503

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIN6dealii11Polynomials10PolynomialIdEEEE10deallocateERS4_PS3_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #18
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN6dealii11Polynomials10PolynomialIdEEEE10deallocateERS4_PS3_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEE10deallocateEPS3_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEE10deallocateEPS3_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #24
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN6dealii11Polynomials10PolynomialIdEES3_EvT_S5_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #2 comdat !prof !498 {
  tail call void @_ZSt8_DestroyIPN6dealii11Polynomials10PolynomialIdEEEvT_S5_(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(96) ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #2 comdat align 2 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !418
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !419
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  tail call void @_ZNSt16allocator_traitsISaIN6dealii11Polynomials10PolynomialIdEEEE9constructIS3_JS3_EEEvRS4_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(96) %1) #18
  %9 = load ptr, ptr %3, align 8, !tbaa !418
  %10 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %9, i64 1
  store ptr %10, ptr %3, align 8, !tbaa !418
  br label %13

11:                                               ; preds = %2
  %12 = tail call ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  tail call void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %12, ptr noundef nonnull align 8 dereferenceable(96) %1) #18
  br label %13

13:                                               ; preds = %11, %8
  %14 = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  ret ptr %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN6dealii11Polynomials10PolynomialIdEEEE9constructIS3_JS3_EEEvRS4_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(96) %2) local_unnamed_addr #2 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEE9constructIS3_JS3_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(96) %2) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(96) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.47", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.47", align 8
  store ptr %1, ptr %4, align 8
  %6 = tail call noundef i64 @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1, ptr noundef nonnull @.str.13) #18
  %7 = load ptr, ptr %0, align 8, !tbaa !416
  %8 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !418
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  %10 = tail call ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  store ptr %10, ptr %5, align 8
  %11 = call noundef i64 @_ZN9__gnu_cxxmiIPN6dealii11Polynomials10PolynomialIdEESt6vectorIS4_SaIS4_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSC_SF_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  %12 = call noundef ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %6) #18
  %13 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %12, i64 %11
  invoke void @_ZNSt16allocator_traitsISaIN6dealii11Polynomials10PolynomialIdEEEE9constructIS3_JS3_EEEvRS4_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %13, ptr noundef nonnull align 8 dereferenceable(96) %2) #18
          to label %14 unwind label %42

14:                                               ; preds = %3
  %15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6dealii11Polynomials10PolynomialIdEESt6vectorIS4_SaIS4_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  %16 = load ptr, ptr %15, align 8, !tbaa !334
  %17 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %18 = invoke noundef ptr @_ZSt34__uninitialized_move_if_noexcept_aIPN6dealii11Polynomials10PolynomialIdEES4_SaIS3_EET0_T_S7_S6_RT1_(ptr noundef %7, ptr noundef %16, ptr noundef %12, ptr noundef nonnull align 1 dereferenceable(1) %17) #18
          to label %23 unwind label %19

19:                                               ; preds = %14
  %20 = landingpad { ptr, i32 }
          catch ptr null
  %21 = extractvalue { ptr, i32 } %20, 0
  %22 = call ptr @__cxa_begin_catch(ptr %21) #20
  br label %47

23:                                               ; preds = %14
  %24 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %18, i64 1
  %25 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6dealii11Polynomials10PolynomialIdEESt6vectorIS4_SaIS4_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  %26 = load ptr, ptr %25, align 8, !tbaa !334
  %27 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %28 = invoke noundef ptr @_ZSt34__uninitialized_move_if_noexcept_aIPN6dealii11Polynomials10PolynomialIdEES4_SaIS3_EET0_T_S7_S6_RT1_(ptr noundef %26, ptr noundef %9, ptr noundef nonnull %24, ptr noundef nonnull align 1 dereferenceable(1) %27) #18
          to label %33 unwind label %29

29:                                               ; preds = %23
  %30 = landingpad { ptr, i32 }
          catch ptr null
  %31 = extractvalue { ptr, i32 } %30, 0
  %32 = call ptr @__cxa_begin_catch(ptr %31) #20
  br label %48

33:                                               ; preds = %23
  %34 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  call void @_ZSt8_DestroyIPN6dealii11Polynomials10PolynomialIdEES3_EvT_S5_RSaIT0_E(ptr noundef %7, ptr noundef %9, ptr noundef nonnull align 1 dereferenceable(1) %34) #18
  %35 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !419
  %37 = ptrtoint ptr %36 to i64
  %38 = ptrtoint ptr %7 to i64
  %39 = sub i64 %37, %38
  %40 = sdiv exact i64 %39, 96
  call void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE13_M_deallocateEPS3_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %7, i64 noundef %40) #18
  store ptr %12, ptr %0, align 8, !tbaa !416
  store ptr %28, ptr %8, align 8, !tbaa !418
  %41 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %12, i64 %6
  store ptr %41, ptr %35, align 8, !tbaa !419
  ret void

42:                                               ; preds = %3
  %43 = landingpad { ptr, i32 }
          catch ptr null
  %44 = extractvalue { ptr, i32 } %43, 0
  %45 = call ptr @__cxa_begin_catch(ptr %44) #20
  %46 = icmp eq ptr %12, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %19, %42
  call void @_ZNSt16allocator_traitsISaIN6dealii11Polynomials10PolynomialIdEEEE7destroyIS3_EEvRS4_PT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %13) #19
  br label %53

48:                                               ; preds = %29, %42
  %49 = phi ptr [ %24, %29 ], [ %12, %42 ]
  %50 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  invoke void @_ZSt8_DestroyIPN6dealii11Polynomials10PolynomialIdEES3_EvT_S5_RSaIT0_E(ptr noundef %12, ptr noundef nonnull %49, ptr noundef nonnull align 1 dereferenceable(1) %50) #18
          to label %53 unwind label %51

51:                                               ; preds = %54, %53, %48
  %52 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %55 unwind label %56

53:                                               ; preds = %48, %47
  invoke void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE13_M_deallocateEPS3_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %12, i64 noundef %6) #18
          to label %54 unwind label %51

54:                                               ; preds = %53
  invoke void @__cxa_rethrow() #25
          to label %59 unwind label %51

55:                                               ; preds = %51
  resume { ptr, i32 } %52

56:                                               ; preds = %51
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #21
  unreachable

59:                                               ; preds = %54
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !388 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.47", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPN6dealii11Polynomials10PolynomialIdEESt6vectorIS4_SaIS4_EEEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #19
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(96) ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.47", align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.47", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  %4 = tail call ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  store ptr %4, ptr %3, align 8
  %5 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6dealii11Polynomials10PolynomialIdEESt6vectorIS4_SaIS4_EEEmiEl(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 1) #19
  store ptr %5, ptr %2, align 8
  %6 = call noundef nonnull align 8 dereferenceable(96) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6dealii11Polynomials10PolynomialIdEESt6vectorIS4_SaIS4_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEE9constructIS3_JS3_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(96) %2) local_unnamed_addr #2 comdat align 2 {
  tail call void @_ZN6dealii11Polynomials10PolynomialIdEC2EOS2_(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(96) %2) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 !prof !388 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %1, ptr %4, align 8, !tbaa !467
  %6 = tail call noundef i64 @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %7 = tail call noundef i64 @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %8 = sub i64 %6, %7
  %9 = icmp ult i64 %8, %1
  br i1 %9, label %10, label %11, !prof !504

10:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef %2) #22
  unreachable

11:                                               ; preds = %3
  %12 = tail call noundef i64 @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  %13 = tail call noundef i64 @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  store i64 %13, ptr %5, align 8, !tbaa !467
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  %15 = load i64, ptr %14, align 8, !tbaa !467
  %16 = add i64 %15, %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  %17 = call noundef i64 @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %22, label %19, !prof !504

19:                                               ; preds = %11
  %20 = call noundef i64 @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %21 = icmp ugt i64 %16, %20
  br i1 %21, label %22, label %24, !prof !504

22:                                               ; preds = %19, %11
  %23 = call noundef i64 @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  br label %24

24:                                               ; preds = %19, %22
  %25 = phi i64 [ %23, %22 ], [ %16, %19 ]
  ret i64 %25
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN9__gnu_cxxmiIPN6dealii11Polynomials10PolynomialIdEESt6vectorIS4_SaIS4_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSC_SF_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat !prof !388 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6dealii11Polynomials10PolynomialIdEESt6vectorIS4_SaIS4_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #19
  %4 = load ptr, ptr %3, align 8, !tbaa !334
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6dealii11Polynomials10PolynomialIdEESt6vectorIS4_SaIS4_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #19
  %6 = load ptr, ptr %5, align 8, !tbaa !334
  %7 = ptrtoint ptr %4 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = sdiv exact i64 %9, 96
  ret i64 %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !388 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.47", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPN6dealii11Polynomials10PolynomialIdEESt6vectorIS4_SaIS4_EEEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #19
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt34__uninitialized_move_if_noexcept_aIPN6dealii11Polynomials10PolynomialIdEES4_SaIS3_EET0_T_S7_S6_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #2 comdat !prof !371 {
  %5 = tail call noundef ptr @_ZSt32__make_move_if_noexcept_iteratorIN6dealii11Polynomials10PolynomialIdEEPKS3_ET0_PT_(ptr noundef %0) #18
  %6 = tail call noundef ptr @_ZSt32__make_move_if_noexcept_iteratorIN6dealii11Polynomials10PolynomialIdEEPKS3_ET0_PT_(ptr noundef %1) #18
  %7 = tail call noundef ptr @_ZSt22__uninitialized_copy_aIPKN6dealii11Polynomials10PolynomialIdEEPS3_S3_ET0_T_S8_S7_RSaIT1_E(ptr noundef %5, ptr noundef %6, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #18
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6dealii11Polynomials10PolynomialIdEESt6vectorIS4_SaIS4_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !505 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN6dealii11Polynomials10PolynomialIdEEEE7destroyIS3_EEvRS4_PT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEE7destroyIS3_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !371 {
  %2 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %3 = tail call noundef i64 @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE11_S_max_sizeERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %2) #19
  ret i64 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat !prof !506 {
  %3 = load i64, ptr %0, align 8, !tbaa !467
  %4 = load i64, ptr %1, align 8, !tbaa !467
  %5 = icmp ult i64 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0, !prof !507
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !508 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPN6dealii11Polynomials10PolynomialIdEESt6vectorIS4_SaIS4_EEEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 !prof !371 {
  %3 = load ptr, ptr %1, align 8, !tbaa !334
  store ptr %3, ptr %0, align 8, !tbaa !509
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_copy_aIPKN6dealii11Polynomials10PolynomialIdEEPS3_S3_ET0_T_S8_S7_RSaIT1_E(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #2 comdat {
  %5 = tail call noundef ptr @_ZSt18uninitialized_copyIPKN6dealii11Polynomials10PolynomialIdEEPS3_ET0_T_S8_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt32__make_move_if_noexcept_iteratorIN6dealii11Polynomials10PolynomialIdEEPKS3_ET0_PT_(ptr noundef %0) local_unnamed_addr #1 comdat {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt18uninitialized_copyIPKN6dealii11Polynomials10PolynomialIdEEPS3_ET0_T_S8_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat {
  %4 = tail call noundef ptr @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPKN6dealii11Polynomials10PolynomialIdEEPS5_EET0_T_SA_S9_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPKN6dealii11Polynomials10PolynomialIdEEPS5_EET0_T_SA_S9_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 {
  %4 = tail call noundef ptr @_ZSt16__do_uninit_copyIPKN6dealii11Polynomials10PolynomialIdEEPS3_ET0_T_S8_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIPKN6dealii11Polynomials10PolynomialIdEEPS3_ET0_T_S8_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %17, label %5

5:                                                ; preds = %3, %8
  %6 = phi ptr [ %10, %8 ], [ %2, %3 ]
  %7 = phi ptr [ %9, %8 ], [ %0, %3 ]
  invoke void @_ZSt10_ConstructIN6dealii11Polynomials10PolynomialIdEEJRKS3_EEvPT_DpOT0_(ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(96) %7) #18
          to label %8 unwind label %12

8:                                                ; preds = %5
  %9 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %7, i64 1
  %10 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %6, i64 1
  %11 = icmp eq ptr %9, %1
  br i1 %11, label %17, label %5, !llvm.loop !511

12:                                               ; preds = %5
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  %15 = tail call ptr @__cxa_begin_catch(ptr %14) #20
  invoke void @_ZSt8_DestroyIPN6dealii11Polynomials10PolynomialIdEEEvT_S5_(ptr noundef %2, ptr noundef %6) #18
          to label %16 unwind label %19

16:                                               ; preds = %12
  invoke void @__cxa_rethrow() #25
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
  tail call void @__clang_call_terminate(ptr %24) #21
  unreachable

25:                                               ; preds = %16
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEE7destroyIS3_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
  %3 = load ptr, ptr %1, align 8, !tbaa !311
  %4 = load ptr, ptr %3, align 8
  tail call void %4(ptr noundef nonnull align 8 dereferenceable(96) %1) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6dealii11Polynomials10PolynomialIdEESt6vectorIS4_SaIS4_EEEmiEl(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.47", align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  %5 = load ptr, ptr %0, align 8, !tbaa !509
  %6 = sub i64 0, %1
  %7 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %5, i64 %6
  store ptr %7, ptr %4, align 8, !tbaa !334
  call void @_ZN9__gnu_cxx17__normal_iteratorIPN6dealii11Polynomials10PolynomialIdEESt6vectorIS4_SaIS4_EEEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  %8 = load ptr, ptr %3, align 8
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(96) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6dealii11Polynomials10PolynomialIdEESt6vectorIS4_SaIS4_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !310 {
  %2 = load ptr, ptr %0, align 8, !tbaa !509
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !416
  %4 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %5 = tail call noundef ptr @_ZSt27__uninitialized_default_n_aIPN6dealii11Polynomials10PolynomialIdEEmS3_ET_S5_T0_RSaIT1_E(ptr noundef %3, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %4) #18
  %6 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %5, ptr %6, align 8, !tbaa !418
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__uninitialized_default_n_aIPN6dealii11Polynomials10PolynomialIdEEmS3_ET_S5_T0_RSaIT1_E(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #2 comdat {
  %4 = tail call noundef ptr @_ZSt25__uninitialized_default_nIPN6dealii11Polynomials10PolynomialIdEEmET_S5_T0_(ptr noundef %0, i64 noundef %1) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt25__uninitialized_default_nIPN6dealii11Polynomials10PolynomialIdEEmET_S5_T0_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 comdat {
  %3 = tail call noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6dealii11Polynomials10PolynomialIdEEmEET_S7_T0_(ptr noundef %0, i64 noundef %1) #18
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6dealii11Polynomials10PolynomialIdEEmEET_S7_T0_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %16, label %4

4:                                                ; preds = %2, %7
  %5 = phi ptr [ %9, %7 ], [ %0, %2 ]
  %6 = phi i64 [ %8, %7 ], [ %1, %2 ]
  invoke void @_ZSt10_ConstructIN6dealii11Polynomials10PolynomialIdEEJEEvPT_DpOT0_(ptr noundef %5) #18
          to label %7 unwind label %11

7:                                                ; preds = %4
  %8 = add i64 %6, -1
  %9 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial.19", ptr %5, i64 1
  %10 = icmp eq i64 %8, 0
  br i1 %10, label %16, label %4, !llvm.loop !512

11:                                               ; preds = %4
  %12 = landingpad { ptr, i32 }
          catch ptr null
  %13 = extractvalue { ptr, i32 } %12, 0
  %14 = tail call ptr @__cxa_begin_catch(ptr %13) #20
  invoke void @_ZSt8_DestroyIPN6dealii11Polynomials10PolynomialIdEEEvT_S5_(ptr noundef %0, ptr noundef %5) #18
          to label %15 unwind label %18

15:                                               ; preds = %11
  invoke void @__cxa_rethrow() #25
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
  tail call void @__clang_call_terminate(ptr %23) #21
  unreachable

24:                                               ; preds = %15
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructIN6dealii11Polynomials10PolynomialIdEEJEEvPT_DpOT0_(ptr noundef %0) local_unnamed_addr #2 comdat {
  tail call void @_ZN6dealii11Polynomials10PolynomialIdEC1Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx14__alloc_traitsISaIdEdE17_S_select_on_copyERKS1_(ptr dead_on_unwind noalias writable sret(%"class.std::allocator.22") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #2 comdat align 2 !prof !345 {
  tail call void @_ZNSt16allocator_traitsISaIdEE37select_on_container_copy_constructionERKS0_(ptr dead_on_unwind writable sret(%"class.std::allocator.22") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPddET0_T_SA_S9_RSaIT1_E(ptr %0, ptr %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #2 comdat !prof !513 {
  %5 = tail call noundef ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) #18
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorIdSaIdEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !514 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.48", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #19
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorIdSaIdEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !515 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.48", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #19
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIdEE37select_on_container_copy_constructionERKS0_(ptr dead_on_unwind noalias writable sret(%"class.std::allocator.22") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #1 comdat align 2 {
  tail call void @_ZNSaIdEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #2 comdat {
  %4 = tail call noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdEET0_T_SC_SB_(ptr %0, ptr %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdEET0_T_SC_SB_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 !prof !513 {
  %4 = tail call noundef ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #2 comdat !prof !513 {
  %4 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEET_S8_(ptr %0) #18
  %5 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEET_S8_(ptr %1) #18
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_(ptr %4, ptr %5, ptr noundef %2) #18
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #2 comdat !prof !513 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !334
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %0) #19
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPKdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %1) #19
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPdET_S1_(ptr noundef %2) #19
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #18
  %9 = call noundef ptr @_ZSt12__niter_wrapIPdET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #18
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEET_S8_(ptr %0) local_unnamed_addr #1 comdat !prof !516 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPdET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !517 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat !prof !518 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPKdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %0) local_unnamed_addr #1 comdat !prof !516 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.48", align 8
  store ptr %0, ptr %2, align 8
  %3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #19
  %4 = load ptr, ptr %3, align 8, !tbaa !334
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPdET_S1_(ptr noundef %0) local_unnamed_addr #1 comdat !prof !519 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat !prof !518 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !520 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %9, label %8, !prof !521

8:                                                ; preds = %3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %2, ptr align 8 %0, i64 %6, i1 false)
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds i8, ptr %2, i64 %6
  ret ptr %10
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #14

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !516 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 !prof !522 {
  %3 = load ptr, ptr %1, align 8, !tbaa !334
  store ptr %3, ptr %0, align 8, !tbaa !523
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIPKSt6vectorIdSaIdEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !349 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EE17_S_check_init_lenEmRKS4_(i64 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #2 comdat align 2 !prof !349 {
  %3 = alloca %"class.std::allocator.44", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #20
  call void @_ZNSaIPKSt6vectorIdSaIdEEEC2ERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %1) #19
  %4 = call noundef i64 @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EE11_S_max_sizeERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %3) #19
  %5 = icmp ult i64 %4, %0
  call void @_ZNSt15__new_allocatorIPKSt6vectorIdSaIdEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #20
  br i1 %5, label %6, label %7, !prof !525

6:                                                ; preds = %2
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #22
  unreachable

7:                                                ; preds = %2
  ret i64 %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIPKSt6vectorIdSaIdEESaIS4_EEC2EmRKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !349 {
  tail call void @_ZNSt12_Vector_baseIPKSt6vectorIdSaIdEESaIS4_EE12_Vector_implC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %2) #19
  invoke void @_ZNSt12_Vector_baseIPKSt6vectorIdSaIdEESaIS4_EE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #18
          to label %4 unwind label %5

4:                                                ; preds = %3
  ret void

5:                                                ; preds = %3
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt15__new_allocatorIPKSt6vectorIdSaIdEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EE18_M_fill_initializeEmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 !prof !349 {
  %4 = load ptr, ptr %0, align 8, !tbaa !444
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIPKSt6vectorIdSaIdEESaIS4_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %6 = tail call noundef ptr @_ZSt24__uninitialized_fill_n_aIPPKSt6vectorIdSaIdEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E(ptr noundef %4, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %5) #18
  %7 = getelementptr inbounds %"struct.std::_Vector_base<const std::vector<double> *, std::allocator<const std::vector<double> *>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !446
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIPKSt6vectorIdSaIdEESaIS4_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !310 {
  %2 = load ptr, ptr %0, align 8, !tbaa !444
  %3 = getelementptr inbounds %"struct.std::_Vector_base<const std::vector<double> *, std::allocator<const std::vector<double> *>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !526
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  invoke void @_ZNSt12_Vector_baseIPKSt6vectorIdSaIdEESaIS4_EE13_M_deallocateEPS4_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #18
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorIPKSt6vectorIdSaIdEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #21
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EE11_S_max_sizeERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 !prof !349 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  store i64 1152921504606846975, ptr %2, align 8, !tbaa !467
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  %4 = tail call noundef i64 @_ZNSt16allocator_traitsISaIPKSt6vectorIdSaIdEEEE8max_sizeERKS5_(ptr noundef nonnull align 1 dereferenceable(1) %0) #19
  store i64 %4, ptr %3, align 8, !tbaa !467
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  %6 = load i64, ptr %5, align 8, !tbaa !467
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIPKSt6vectorIdSaIdEEEC2ERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #1 comdat align 2 !prof !388 {
  tail call void @_ZNSt15__new_allocatorIPKSt6vectorIdSaIdEEEC2ERKS5_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaIPKSt6vectorIdSaIdEEEE8max_sizeERKS5_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIPKSt6vectorIdSaIdEEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #19
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIPKSt6vectorIdSaIdEEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 !prof !349 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIPKSt6vectorIdSaIdEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #19
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIPKSt6vectorIdSaIdEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 !prof !388 {
  ret i64 1152921504606846975
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIPKSt6vectorIdSaIdEEEC2ERKS5_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #1 comdat align 2 !prof !388 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIPKSt6vectorIdSaIdEESaIS4_EE12_Vector_implC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #1 comdat align 2 !prof !349 {
  tail call void @_ZNSaIPKSt6vectorIdSaIdEEEC2ERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #19
  tail call void @_ZNSt12_Vector_baseIPKSt6vectorIdSaIdEESaIS4_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIPKSt6vectorIdSaIdEESaIS4_EE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !349 {
  %3 = tail call noundef ptr @_ZNSt12_Vector_baseIPKSt6vectorIdSaIdEESaIS4_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #18
  store ptr %3, ptr %0, align 8, !tbaa !444
  %4 = getelementptr inbounds %"struct.std::_Vector_base<const std::vector<double> *, std::allocator<const std::vector<double> *>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !446
  %5 = getelementptr inbounds ptr, ptr %3, i64 %1
  %6 = getelementptr inbounds %"struct.std::_Vector_base<const std::vector<double> *, std::allocator<const std::vector<double> *>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !526
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIPKSt6vectorIdSaIdEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !388 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIPKSt6vectorIdSaIdEESaIS4_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 !prof !349 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIPKSt6vectorIdSaIdEESaIS4_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !349 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4, !prof !525

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaIPKSt6vectorIdSaIdEEEE8allocateERS5_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #18
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIPKSt6vectorIdSaIdEEEE8allocateERS5_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorIPKSt6vectorIdSaIdEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #18
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIPKSt6vectorIdSaIdEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorIPKSt6vectorIdSaIdEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #19
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !474

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 2305843009213693951
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #22
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #22
  unreachable

10:                                               ; preds = %3
  %11 = shl i64 %1, 3
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #23
  ret ptr %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt24__uninitialized_fill_n_aIPPKSt6vectorIdSaIdEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #2 comdat !prof !349 {
  %5 = tail call noundef ptr @_ZSt20uninitialized_fill_nIPPKSt6vectorIdSaIdEEmS4_ET_S6_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #18
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIPKSt6vectorIdSaIdEESaIS4_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !349 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt20uninitialized_fill_nIPPKSt6vectorIdSaIdEEmS4_ET_S6_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat {
  %4 = tail call noundef ptr @_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPPKSt6vectorIdSaIdEEmS6_EET_S8_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPPKSt6vectorIdSaIdEEmS6_EET_S8_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 !prof !349 {
  %4 = tail call noundef ptr @_ZSt6fill_nIPPKSt6vectorIdSaIdEEmS4_ET_S6_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt6fill_nIPPKSt6vectorIdSaIdEEmS4_ET_S6_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat !prof !349 {
  %4 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !334
  %5 = tail call noundef i64 @_ZSt17__size_to_integerm(i64 noundef %1) #18
  call void @_ZSt19__iterator_categoryIPPKSt6vectorIdSaIdEEENSt15iterator_traitsIT_E17iterator_categoryERKS7_(ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  %6 = call noundef ptr @_ZSt10__fill_n_aIPPKSt6vectorIdSaIdEEmS4_ET_S6_T0_RKT1_St26random_access_iterator_tag(ptr noundef %0, i64 noundef %5, ptr noundef nonnull align 8 dereferenceable(8) %2) #18
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt10__fill_n_aIPPKSt6vectorIdSaIdEEmS4_ET_S6_T0_RKT1_St26random_access_iterator_tag(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat !prof !349 {
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %7, label %5, !prof !525

5:                                                ; preds = %3
  %6 = getelementptr inbounds ptr, ptr %0, i64 %1
  tail call void @_ZSt8__fill_aIPPKSt6vectorIdSaIdEES4_EvT_S6_RKT0_(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull align 8 dereferenceable(8) %2) #18
  br label %7

7:                                                ; preds = %3, %5
  %8 = phi ptr [ %6, %5 ], [ %0, %3 ]
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPPKSt6vectorIdSaIdEEENSt15iterator_traitsIT_E17iterator_categoryERKS7_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat !prof !349 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8__fill_aIPPKSt6vectorIdSaIdEES4_EvT_S6_RKT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat !prof !349 {
  tail call void @_ZSt9__fill_a1IPPKSt6vectorIdSaIdEES4_EN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_SB_RKS8_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt9__fill_a1IPPKSt6vectorIdSaIdEES4_EN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_SB_RKS8_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat !prof !349 {
  %4 = load ptr, ptr %2, align 8, !tbaa !334
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %10, label %6, !prof !429

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  store ptr %4, ptr %7, align 8, !tbaa !334
  %8 = getelementptr inbounds ptr, ptr %7, i64 1
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %10, label %6, !prof !527, !llvm.loop !528

10:                                               ; preds = %6, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIPKSt6vectorIdSaIdEESaIS4_EE13_M_deallocateEPS4_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 !prof !310 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIPKSt6vectorIdSaIdEEEE10deallocateERS5_PS4_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #18
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIPKSt6vectorIdSaIdEEEE10deallocateERS5_PS4_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorIPKSt6vectorIdSaIdEEE10deallocateEPS4_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIPKSt6vectorIdSaIdEEE10deallocateEPS4_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #24
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPPKSt6vectorIdSaIdEES4_EvT_S6_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #2 comdat !prof !310 {
  tail call void @_ZSt8_DestroyIPPKSt6vectorIdSaIdEEEvT_S6_(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPPKSt6vectorIdSaIdEEEvT_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat !prof !310 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPPKSt6vectorIdSaIdEEEEvT_S8_(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPPKSt6vectorIdSaIdEEEEvT_S8_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !310 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS3_S5_EEmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !310 {
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.49", align 8
  %6 = alloca %"struct.std::vector<const std::vector<double> *>::_Temporary_value", align 8
  %7 = alloca %"class.__gnu_cxx::__normal_iterator.49", align 8
  store ptr %1, ptr %5, align 8
  %8 = icmp eq i64 %2, 0
  br i1 %8, label %106, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %"struct.std::_Vector_base<const std::vector<double> *, std::allocator<const std::vector<double> *>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !526
  %12 = getelementptr inbounds %"struct.std::_Vector_base<const std::vector<double> *, std::allocator<const std::vector<double> *>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !446
  %14 = ptrtoint ptr %11 to i64
  %15 = ptrtoint ptr %13 to i64
  %16 = sub i64 %14, %15
  %17 = ashr exact i64 %16, 3
  %18 = icmp ult i64 %17, %2
  br i1 %18, label %60, label %19

19:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #20
  call void @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EE16_Temporary_valueC2IJRKS3_EEEPS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  %20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EE16_Temporary_value6_M_valEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #20
  %21 = call ptr @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  store ptr %21, ptr %7, align 8
  %22 = call noundef i64 @_ZN9__gnu_cxxmiIPPKSt6vectorIdSaIdEES1_IS5_SaIS5_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSC_SF_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %5) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #20
  %23 = load ptr, ptr %12, align 8, !tbaa !446
  %24 = icmp ugt i64 %22, %2
  br i1 %24, label %25, label %44

25:                                               ; preds = %19
  %26 = sub i64 0, %2
  %27 = getelementptr inbounds ptr, ptr %23, i64 %26
  %28 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIPKSt6vectorIdSaIdEESaIS4_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %29 = invoke noundef ptr @_ZSt22__uninitialized_move_aIPPKSt6vectorIdSaIdEES5_SaIS4_EET0_T_S8_S7_RT1_(ptr noundef nonnull %27, ptr noundef %23, ptr noundef %23, ptr noundef nonnull align 1 dereferenceable(1) %28) #18
          to label %30 unwind label %42

30:                                               ; preds = %25
  %31 = load ptr, ptr %12, align 8, !tbaa !446
  %32 = getelementptr inbounds ptr, ptr %31, i64 %2
  store ptr %32, ptr %12, align 8, !tbaa !446
  %33 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPPKSt6vectorIdSaIdEES1_IS5_SaIS5_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #19
  %34 = load ptr, ptr %33, align 8, !tbaa !334
  %35 = invoke noundef ptr @_ZSt13move_backwardIPPKSt6vectorIdSaIdEES5_ET0_T_S7_S6_(ptr noundef %34, ptr noundef nonnull %27, ptr noundef %23) #18
          to label %36 unwind label %42

36:                                               ; preds = %30
  %37 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPPKSt6vectorIdSaIdEES1_IS5_SaIS5_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #19
  %38 = load ptr, ptr %37, align 8, !tbaa !334
  %39 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPPKSt6vectorIdSaIdEES1_IS5_SaIS5_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #19
  %40 = load ptr, ptr %39, align 8, !tbaa !334
  %41 = getelementptr inbounds ptr, ptr %40, i64 %2
  invoke void @_ZSt4fillIPPKSt6vectorIdSaIdEES4_EvT_S6_RKT0_(ptr noundef %38, ptr noundef nonnull %41, ptr noundef nonnull align 8 dereferenceable(8) %20) #18
          to label %59 unwind label %42

42:                                               ; preds = %54, %48, %44, %36, %30, %25
  %43 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EE16_Temporary_valueD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #20
  br label %107

44:                                               ; preds = %19
  %45 = sub i64 %2, %22
  %46 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIPKSt6vectorIdSaIdEESaIS4_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %47 = invoke noundef ptr @_ZSt24__uninitialized_fill_n_aIPPKSt6vectorIdSaIdEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E(ptr noundef %23, i64 noundef %45, ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 1 dereferenceable(1) %46) #18
          to label %48 unwind label %42

48:                                               ; preds = %44
  store ptr %47, ptr %12, align 8, !tbaa !446
  %49 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPPKSt6vectorIdSaIdEES1_IS5_SaIS5_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #19
  %50 = load ptr, ptr %49, align 8, !tbaa !334
  %51 = load ptr, ptr %12, align 8, !tbaa !446
  %52 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIPKSt6vectorIdSaIdEESaIS4_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %53 = invoke noundef ptr @_ZSt22__uninitialized_move_aIPPKSt6vectorIdSaIdEES5_SaIS4_EET0_T_S8_S7_RT1_(ptr noundef %50, ptr noundef %23, ptr noundef %51, ptr noundef nonnull align 1 dereferenceable(1) %52) #18
          to label %54 unwind label %42

54:                                               ; preds = %48
  %55 = load ptr, ptr %12, align 8, !tbaa !446
  %56 = getelementptr inbounds ptr, ptr %55, i64 %22
  store ptr %56, ptr %12, align 8, !tbaa !446
  %57 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPPKSt6vectorIdSaIdEES1_IS5_SaIS5_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #19
  %58 = load ptr, ptr %57, align 8, !tbaa !334
  invoke void @_ZSt4fillIPPKSt6vectorIdSaIdEES4_EvT_S6_RKT0_(ptr noundef %58, ptr noundef %23, ptr noundef nonnull align 8 dereferenceable(8) %20) #18
          to label %59 unwind label %42

59:                                               ; preds = %54, %36
  call void @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EE16_Temporary_valueD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #20
  br label %106

60:                                               ; preds = %9
  %61 = load ptr, ptr %0, align 8, !tbaa !444
  %62 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPPKSt6vectorIdSaIdEES1_IS5_SaIS5_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #19
  %63 = load ptr, ptr %62, align 8, !tbaa !334
  %64 = call noundef i64 @_ZNKSt6vectorIPKS_IdSaIdEESaIS3_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2, ptr noundef nonnull @.str.14) #18
  %65 = ptrtoint ptr %63 to i64
  %66 = ptrtoint ptr %61 to i64
  %67 = sub i64 %65, %66
  %68 = call noundef ptr @_ZNSt12_Vector_baseIPKSt6vectorIdSaIdEESaIS4_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %64) #18
  %69 = getelementptr inbounds i8, ptr %68, i64 %67
  %70 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIPKSt6vectorIdSaIdEESaIS4_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %71 = invoke noundef ptr @_ZSt24__uninitialized_fill_n_aIPPKSt6vectorIdSaIdEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E(ptr noundef %69, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %70) #18
          to label %72 unwind label %90

72:                                               ; preds = %60
  %73 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIPKSt6vectorIdSaIdEESaIS4_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %74 = invoke noundef ptr @_ZSt34__uninitialized_move_if_noexcept_aIPPKSt6vectorIdSaIdEES5_SaIS4_EET0_T_S8_S7_RT1_(ptr noundef %61, ptr noundef %63, ptr noundef %68, ptr noundef nonnull align 1 dereferenceable(1) %73) #18
          to label %79 unwind label %75

75:                                               ; preds = %72
  %76 = landingpad { ptr, i32 }
          catch ptr null
  %77 = extractvalue { ptr, i32 } %76, 0
  %78 = call ptr @__cxa_begin_catch(ptr %77) #20
  br label %96

79:                                               ; preds = %72
  %80 = getelementptr inbounds ptr, ptr %74, i64 %2
  %81 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIPKSt6vectorIdSaIdEESaIS4_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %82 = invoke noundef ptr @_ZSt34__uninitialized_move_if_noexcept_aIPPKSt6vectorIdSaIdEES5_SaIS4_EET0_T_S8_S7_RT1_(ptr noundef %63, ptr noundef %13, ptr noundef nonnull %80, ptr noundef nonnull align 1 dereferenceable(1) %81) #18
          to label %83 unwind label %90

83:                                               ; preds = %79
  %84 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIPKSt6vectorIdSaIdEESaIS4_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  call void @_ZSt8_DestroyIPPKSt6vectorIdSaIdEES4_EvT_S6_RSaIT0_E(ptr noundef %61, ptr noundef %13, ptr noundef nonnull align 1 dereferenceable(1) %84) #18
  %85 = load ptr, ptr %10, align 8, !tbaa !526
  %86 = ptrtoint ptr %85 to i64
  %87 = sub i64 %86, %66
  %88 = ashr exact i64 %87, 3
  call void @_ZNSt12_Vector_baseIPKSt6vectorIdSaIdEESaIS4_EE13_M_deallocateEPS4_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %61, i64 noundef %88) #18
  store ptr %68, ptr %0, align 8, !tbaa !444
  store ptr %82, ptr %12, align 8, !tbaa !446
  %89 = getelementptr inbounds ptr, ptr %68, i64 %64
  store ptr %89, ptr %10, align 8, !tbaa !526
  br label %106

90:                                               ; preds = %79, %60
  %91 = phi ptr [ %80, %79 ], [ %68, %60 ]
  %92 = landingpad { ptr, i32 }
          catch ptr null
  %93 = extractvalue { ptr, i32 } %92, 0
  %94 = call ptr @__cxa_begin_catch(ptr %93) #20
  %95 = icmp eq ptr %91, null
  br i1 %95, label %96, label %100

96:                                               ; preds = %75, %90
  %97 = getelementptr inbounds ptr, ptr %69, i64 %2
  br label %100

98:                                               ; preds = %100, %105, %104
  %99 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %107 unwind label %109

100:                                              ; preds = %90, %96
  %101 = phi ptr [ %69, %96 ], [ %68, %90 ]
  %102 = phi ptr [ %97, %96 ], [ %91, %90 ]
  %103 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIPKSt6vectorIdSaIdEESaIS4_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  invoke void @_ZSt8_DestroyIPPKSt6vectorIdSaIdEES4_EvT_S6_RSaIT0_E(ptr noundef %101, ptr noundef nonnull %102, ptr noundef nonnull align 1 dereferenceable(1) %103) #18
          to label %104 unwind label %98

104:                                              ; preds = %100
  invoke void @_ZNSt12_Vector_baseIPKSt6vectorIdSaIdEESaIS4_EE13_M_deallocateEPS4_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %68, i64 noundef %64) #18
          to label %105 unwind label %98

105:                                              ; preds = %104
  invoke void @__cxa_rethrow() #25
          to label %112 unwind label %98

106:                                              ; preds = %59, %83, %4
  ret void

107:                                              ; preds = %98, %42
  %108 = phi { ptr, i32 } [ %43, %42 ], [ %99, %98 ]
  resume { ptr, i32 } %108

109:                                              ; preds = %98
  %110 = landingpad { ptr, i32 }
          catch ptr null
  %111 = extractvalue { ptr, i32 } %110, 0
  call void @__clang_call_terminate(ptr %111) #21
  unreachable

112:                                              ; preds = %105
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !310 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.49", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<const std::vector<double> *, std::allocator<const std::vector<double> *>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPPKSt6vectorIdSaIdEES1_IS5_SaIS5_EEEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #19
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EE15_M_erase_at_endEPS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !310 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<const std::vector<double> *, std::allocator<const std::vector<double> *>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !446
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIPKSt6vectorIdSaIdEESaIS4_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  invoke void @_ZSt8_DestroyIPPKSt6vectorIdSaIdEES4_EvT_S6_RSaIT0_E(ptr noundef %1, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %7) #18
          to label %8 unwind label %10

8:                                                ; preds = %6
  store ptr %1, ptr %3, align 8, !tbaa !446
  br label %9

9:                                                ; preds = %8, %2
  ret void

10:                                               ; preds = %6
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #21
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EE16_Temporary_valueC2IJRKS3_EEEPS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #2 comdat align 2 {
  store ptr %1, ptr %0, align 8, !tbaa !529
  %4 = getelementptr inbounds %"struct.std::vector<const std::vector<double> *>::_Temporary_value", ptr %0, i64 0, i32 1
  tail call void @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EE16_Temporary_value8_StorageC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  %5 = load ptr, ptr %0, align 8, !tbaa !529
  %6 = tail call noundef ptr @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EE16_Temporary_value6_M_ptrEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #19
  tail call void @_ZNSt16allocator_traitsISaIPKSt6vectorIdSaIdEEEE9constructIS4_JRKS4_EEEvRS5_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(8) %2) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EE16_Temporary_value6_M_valEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 {
  %2 = getelementptr inbounds %"struct.std::vector<const std::vector<double> *>::_Temporary_value", ptr %0, i64 0, i32 1
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN9__gnu_cxxmiIPPKSt6vectorIdSaIdEES1_IS5_SaIS5_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSC_SF_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat !prof !310 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPPKSt6vectorIdSaIdEES1_IS5_SaIS5_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #19
  %4 = load ptr, ptr %3, align 8, !tbaa !334
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPPKSt6vectorIdSaIdEES1_IS5_SaIS5_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #19
  %6 = load ptr, ptr %5, align 8, !tbaa !334
  %7 = ptrtoint ptr %4 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 3
  ret i64 %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_move_aIPPKSt6vectorIdSaIdEES5_SaIS4_EET0_T_S8_S7_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #2 comdat !prof !310 {
  %5 = tail call ptr @_ZSt18make_move_iteratorIPPKSt6vectorIdSaIdEEESt13move_iteratorIT_ES7_(ptr noundef %0) #18
  %6 = tail call ptr @_ZSt18make_move_iteratorIPPKSt6vectorIdSaIdEEESt13move_iteratorIT_ES7_(ptr noundef %1) #18
  %7 = tail call noundef ptr @_ZSt22__uninitialized_copy_aISt13move_iteratorIPPKSt6vectorIdSaIdEEES6_S5_ET0_T_S9_S8_RSaIT1_E(ptr %5, ptr %6, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #18
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13move_backwardIPPKSt6vectorIdSaIdEES5_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPPKSt6vectorIdSaIdEEET_S6_(ptr noundef %0) #18
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPPKSt6vectorIdSaIdEEET_S6_(ptr noundef %1) #18
  %6 = tail call noundef ptr @_ZSt22__copy_move_backward_aILb1EPPKSt6vectorIdSaIdEES5_ET1_T0_S7_S6_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #18
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPPKSt6vectorIdSaIdEES1_IS5_SaIS5_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !310 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt4fillIPPKSt6vectorIdSaIdEES4_EvT_S6_RKT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat !prof !310 {
  tail call void @_ZSt8__fill_aIPPKSt6vectorIdSaIdEES4_EvT_S6_RKT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EE16_Temporary_valueD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !529
  %3 = tail call noundef ptr @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EE16_Temporary_value6_M_ptrEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #19
  tail call void @_ZNSt16allocator_traitsISaIPKSt6vectorIdSaIdEEEE7destroyIS4_EEvRS5_PT_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %3) #19
  %4 = getelementptr inbounds %"struct.std::vector<const std::vector<double> *>::_Temporary_value", ptr %0, i64 0, i32 1
  tail call void @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EE16_Temporary_value8_StorageD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIPKS_IdSaIdEESaIS3_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 !prof !310 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %1, ptr %4, align 8, !tbaa !467
  %6 = tail call noundef i64 @_ZNKSt6vectorIPKS_IdSaIdEESaIS3_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %7 = tail call noundef i64 @_ZNKSt6vectorIPKS_IdSaIdEESaIS3_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %8 = sub i64 %6, %7
  %9 = icmp ult i64 %8, %1
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef %2) #22
  unreachable

11:                                               ; preds = %3
  %12 = tail call noundef i64 @_ZNKSt6vectorIPKS_IdSaIdEESaIS3_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  %13 = tail call noundef i64 @_ZNKSt6vectorIPKS_IdSaIdEESaIS3_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  store i64 %13, ptr %5, align 8, !tbaa !467
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  %15 = load i64, ptr %14, align 8, !tbaa !467
  %16 = add i64 %15, %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  %17 = call noundef i64 @_ZNKSt6vectorIPKS_IdSaIdEESaIS3_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %22, label %19

19:                                               ; preds = %11
  %20 = call noundef i64 @_ZNKSt6vectorIPKS_IdSaIdEESaIS3_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %21 = icmp ugt i64 %16, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %19, %11
  %23 = call noundef i64 @_ZNKSt6vectorIPKS_IdSaIdEESaIS3_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  br label %24

24:                                               ; preds = %19, %22
  %25 = phi i64 [ %23, %22 ], [ %16, %19 ]
  ret i64 %25
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt34__uninitialized_move_if_noexcept_aIPPKSt6vectorIdSaIdEES5_SaIS4_EET0_T_S8_S7_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #2 comdat !prof !310 {
  %5 = tail call ptr @_ZSt32__make_move_if_noexcept_iteratorIPKSt6vectorIdSaIdEESt13move_iteratorIPS4_EET0_PT_(ptr noundef %0) #18
  %6 = tail call ptr @_ZSt32__make_move_if_noexcept_iteratorIPKSt6vectorIdSaIdEESt13move_iteratorIPS4_EET0_PT_(ptr noundef %1) #18
  %7 = tail call noundef ptr @_ZSt22__uninitialized_copy_aISt13move_iteratorIPPKSt6vectorIdSaIdEEES6_S5_ET0_T_S9_S8_RSaIT1_E(ptr %5, ptr %6, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #18
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EE16_Temporary_value8_StorageC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
  store i8 0, ptr %0, align 8, !tbaa !531
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIPKSt6vectorIdSaIdEEEE9constructIS4_JRKS4_EEEvRS5_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorIPKSt6vectorIdSaIdEEE9constructIS4_JRKS4_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EE16_Temporary_value6_M_ptrEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 {
  %2 = getelementptr inbounds %"struct.std::vector<const std::vector<double> *>::_Temporary_value", ptr %0, i64 0, i32 1
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIPKSt6vectorIdSaIdEEE9constructIS4_JRKS4_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
  %4 = load ptr, ptr %2, align 8, !tbaa !334
  store ptr %4, ptr %1, align 8, !tbaa !334
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_copy_aISt13move_iteratorIPPKSt6vectorIdSaIdEEES6_S5_ET0_T_S9_S8_RSaIT1_E(ptr %0, ptr %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #2 comdat {
  %5 = tail call noundef ptr @_ZSt18uninitialized_copyISt13move_iteratorIPPKSt6vectorIdSaIdEEES6_ET0_T_S9_S8_(ptr %0, ptr %1, ptr noundef %2) #18
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt18make_move_iteratorIPPKSt6vectorIdSaIdEEESt13move_iteratorIT_ES7_(ptr noundef %0) local_unnamed_addr #2 comdat {
  %2 = alloca %"class.std::move_iterator", align 8
  call void @_ZNSt13move_iteratorIPPKSt6vectorIdSaIdEEEC2ES5_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %0) #18
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt18uninitialized_copyISt13move_iteratorIPPKSt6vectorIdSaIdEEES6_ET0_T_S9_S8_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #2 comdat {
  %4 = tail call noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPPKSt6vectorIdSaIdEEES8_EET0_T_SB_SA_(ptr %0, ptr %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPPKSt6vectorIdSaIdEEES8_EET0_T_SB_SA_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 {
  %4 = tail call noundef ptr @_ZSt4copyISt13move_iteratorIPPKSt6vectorIdSaIdEEES6_ET0_T_S9_S8_(ptr %0, ptr %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyISt13move_iteratorIPPKSt6vectorIdSaIdEEES6_ET0_T_S9_S8_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #2 comdat {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPPKSt6vectorIdSaIdEEEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(ptr %0) #18
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPPKSt6vectorIdSaIdEEEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(ptr %1) #18
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb1EPPKSt6vectorIdSaIdEES5_ET1_T0_S7_S6_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #18
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb1EPPKSt6vectorIdSaIdEES5_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !334
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPPKSt6vectorIdSaIdEEET_S6_(ptr noundef %0) #19
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPPKSt6vectorIdSaIdEEET_S6_(ptr noundef %1) #19
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPPKSt6vectorIdSaIdEEET_S6_(ptr noundef %2) #19
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb1EPPKSt6vectorIdSaIdEES5_ET1_T0_S7_S6_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #18
  %9 = call noundef ptr @_ZSt12__niter_wrapIPPKSt6vectorIdSaIdEEET_RKS6_S6_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #18
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPPKSt6vectorIdSaIdEEEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(ptr %0) local_unnamed_addr #2 comdat {
  %2 = alloca %"class.std::move_iterator", align 8
  store ptr %0, ptr %2, align 8
  %3 = call noundef ptr @_ZNKSt13move_iteratorIPPKSt6vectorIdSaIdEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #18
  %4 = call noundef ptr @_ZSt12__miter_baseIPPKSt6vectorIdSaIdEEET_S6_(ptr noundef %3) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPPKSt6vectorIdSaIdEEET_RKS6_S6_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !310 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb1EPPKSt6vectorIdSaIdEES5_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb1EPPKSt6vectorIdSaIdEES5_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPPKSt6vectorIdSaIdEEET_S6_(ptr noundef %0) local_unnamed_addr #1 comdat !prof !310 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb1EPPKSt6vectorIdSaIdEES5_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIPKSt6vectorIdSaIdEEEEPT_PKS8_SB_S9_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIPKSt6vectorIdSaIdEEEEPT_PKS8_SB_S9_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %2, ptr align 8 %0, i64 %6, i1 false)
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds i8, ptr %2, i64 %6
  ret ptr %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPPKSt6vectorIdSaIdEEET_S6_(ptr noundef %0) local_unnamed_addr #1 comdat !prof !310 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt13move_iteratorIPPKSt6vectorIdSaIdEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !532
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt13move_iteratorIPPKSt6vectorIdSaIdEEEC2ES5_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 {
  store ptr %1, ptr %0, align 8, !tbaa !532
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__copy_move_backward_aILb1EPPKSt6vectorIdSaIdEES5_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !334
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPPKSt6vectorIdSaIdEEET_S6_(ptr noundef %0) #19
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPPKSt6vectorIdSaIdEEET_S6_(ptr noundef %1) #19
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPPKSt6vectorIdSaIdEEET_S6_(ptr noundef %2) #19
  %8 = tail call noundef ptr @_ZSt23__copy_move_backward_a1ILb1EPPKSt6vectorIdSaIdEES5_ET1_T0_S7_S6_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #18
  %9 = call noundef ptr @_ZSt12__niter_wrapIPPKSt6vectorIdSaIdEEET_RKS6_S6_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #18
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a1ILb1EPPKSt6vectorIdSaIdEES5_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat {
  %4 = tail call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPPKSt6vectorIdSaIdEES5_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPPKSt6vectorIdSaIdEES5_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat {
  %4 = tail call noundef ptr @_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIPKSt6vectorIdSaIdEEEEPT_PKS8_SB_S9_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIPKSt6vectorIdSaIdEEEEPT_PKS8_SB_S9_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = ashr exact i64 %6, 3
  %8 = icmp eq ptr %1, %0
  %9 = sub nsw i64 0, %7
  br i1 %8, label %12, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds ptr, ptr %2, i64 %9
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %11, ptr align 8 %0, i64 %6, i1 false)
  br label %12

12:                                               ; preds = %3, %10
  %13 = getelementptr inbounds ptr, ptr %2, i64 %9
  ret ptr %13
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIPKSt6vectorIdSaIdEEEE7destroyIS4_EEvRS5_PT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorIPKSt6vectorIdSaIdEEE7destroyIS4_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EE16_Temporary_value8_StorageD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIPKSt6vectorIdSaIdEEE7destroyIS4_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIPKS_IdSaIdEESaIS3_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !310 {
  %2 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIPKSt6vectorIdSaIdEESaIS4_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %3 = tail call noundef i64 @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EE11_S_max_sizeERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %2) #19
  ret i64 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIPKSt6vectorIdSaIdEESaIS4_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !310 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt32__make_move_if_noexcept_iteratorIPKSt6vectorIdSaIdEESt13move_iteratorIPS4_EET0_PT_(ptr noundef %0) local_unnamed_addr #2 comdat {
  %2 = alloca %"class.std::move_iterator", align 8
  call void @_ZNSt13move_iteratorIPPKSt6vectorIdSaIdEEEC2ES5_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %0) #18
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPPKSt6vectorIdSaIdEES1_IS5_SaIS5_EEEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 !prof !310 {
  %3 = load ptr, ptr %1, align 8, !tbaa !334
  store ptr %3, ptr %0, align 8, !tbaa !534
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEEC2IN9__gnu_cxx17__normal_iteratorIPdS1_EEvEET_S7_RKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.26", align 8
  store ptr %1, ptr %5, align 8
  tail call void @_ZNSt12_Vector_baseIdSaIdEEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %3) #19
  call void @_ZSt19__iterator_categoryIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEENSt15iterator_traitsIT_E17iterator_categoryERKS8_(ptr noundef nonnull align 8 dereferenceable(8) %5) #18
  invoke void @_ZNSt6vectorIdSaIdEE19_M_range_initializeIN9__gnu_cxx17__normal_iteratorIPdS1_EEEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) #18
          to label %6 unwind label %7

6:                                                ; preds = %4
  ret void

7:                                                ; preds = %4
  %8 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12_Vector_baseIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEE6assignIN9__gnu_cxx17__normal_iteratorIPdS1_EEvEEvT_S7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat align 2 {
  tail call void @_ZNSt6vectorIdSaIdEE18_M_assign_dispatchIN9__gnu_cxx17__normal_iteratorIPdS1_EEEEvT_S7_St12__false_type(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEE19_M_range_initializeIN9__gnu_cxx17__normal_iteratorIPdS1_EEEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat align 2 !prof !310 {
  %4 = tail call noundef i64 @_ZSt8distanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEENSt15iterator_traitsIT_E15difference_typeES8_S8_(ptr %1, ptr %2) #18
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %6 = tail call noundef i64 @_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_(i64 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #18
  %7 = tail call noundef ptr @_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %6) #18
  store ptr %7, ptr %0, align 8, !tbaa !346
  %8 = getelementptr inbounds double, ptr %7, i64 %4
  %9 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %8, ptr %9, align 8, !tbaa !395
  %10 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %11 = tail call noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES2_dET0_T_S8_S7_RSaIT1_E(ptr %1, ptr %2, ptr noundef %7, ptr noundef nonnull align 1 dereferenceable(1) %10) #18
  %12 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %11, ptr %12, align 8, !tbaa !348
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEENSt15iterator_traitsIT_E17iterator_categoryERKS8_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat !prof !536 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEENSt15iterator_traitsIT_E15difference_typeES8_S8_(ptr %0, ptr %1) local_unnamed_addr #2 comdat !prof !310 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.26", align 8
  store ptr %0, ptr %3, align 8
  call void @_ZSt19__iterator_categoryIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEENSt15iterator_traitsIT_E17iterator_categoryERKS8_(ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  %4 = call noundef i64 @_ZSt10__distanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEENSt15iterator_traitsIT_E15difference_typeES8_S8_St26random_access_iterator_tag(ptr %0, ptr %1) #18
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES2_dET0_T_S8_S7_RSaIT1_E(ptr %0, ptr %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #2 comdat !prof !310 {
  %5 = tail call noundef ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES2_ET0_T_S8_S7_(ptr %0, ptr %1, ptr noundef %2) #18
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEENSt15iterator_traitsIT_E15difference_typeES8_S8_St26random_access_iterator_tag(ptr %0, ptr %1) local_unnamed_addr #1 comdat !prof !310 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.26", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.26", align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = call noundef i64 @_ZN9__gnu_cxxmiIPdSt6vectorIdSaIdEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3) #19
  ret i64 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN9__gnu_cxxmiIPdSt6vectorIdSaIdEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat !prof !537 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #19
  %4 = load ptr, ptr %3, align 8, !tbaa !334
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #19
  %6 = load ptr, ptr %5, align 8, !tbaa !334
  %7 = ptrtoint ptr %4 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 3
  ret i64 %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !538 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES2_ET0_T_S8_S7_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #2 comdat {
  %4 = tail call noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES4_EET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES4_EET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 !prof !310 {
  %4 = tail call noundef ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES2_ET0_T_S8_S7_(ptr %0, ptr %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES2_ET0_T_S8_S7_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #2 comdat !prof !310 {
  %4 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET_S7_(ptr %0) #18
  %5 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET_S7_(ptr %1) #18
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES2_ET1_T0_S8_S7_(ptr %4, ptr %5, ptr noundef %2) #18
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES2_ET1_T0_S8_S7_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #2 comdat !prof !310 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !334
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE(ptr %0) #19
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE(ptr %1) #19
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPdET_S1_(ptr noundef %2) #19
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPdS0_ET1_T0_S2_S1_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #18
  %9 = call noundef ptr @_ZSt12__niter_wrapIPdET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #18
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET_S7_(ptr %0) local_unnamed_addr #1 comdat !prof !310 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPdS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat !prof !539 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPdS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE(ptr %0) local_unnamed_addr #1 comdat !prof !540 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.26", align 8
  store ptr %0, ptr %2, align 8
  %3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #19
  %4 = load ptr, ptr %3, align 8, !tbaa !334
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPdS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !539 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEE18_M_assign_dispatchIN9__gnu_cxx17__normal_iteratorIPdS1_EEEEvT_S7_St12__false_type(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat align 2 !prof !310 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.26", align 8
  store ptr %1, ptr %4, align 8
  call void @_ZSt19__iterator_categoryIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEENSt15iterator_traitsIT_E17iterator_categoryERKS8_(ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  call void @_ZNSt6vectorIdSaIdEE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPdS1_EEEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPdS1_EEEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat align 2 !prof !310 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.26", align 8
  %5 = tail call noundef i64 @_ZSt8distanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEENSt15iterator_traitsIT_E15difference_typeES8_S8_(ptr %1, ptr %2) #18
  %6 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %7 = icmp ugt i64 %5, %6
  br i1 %7, label %8, label %24

8:                                                ; preds = %3
  %9 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %10 = tail call noundef i64 @_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_(i64 noundef %5, ptr noundef nonnull align 1 dereferenceable(1) %9) #18
  %11 = tail call noundef ptr @_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPdS1_EEEES5_mT_S7_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %5, ptr %1, ptr %2) #18
  %12 = load ptr, ptr %0, align 8, !tbaa !346
  %13 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !348
  %15 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  tail call void @_ZSt8_DestroyIPddEvT_S1_RSaIT0_E(ptr noundef %12, ptr noundef %14, ptr noundef nonnull align 1 dereferenceable(1) %15) #18
  %16 = load ptr, ptr %0, align 8, !tbaa !346
  %17 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !395
  %19 = ptrtoint ptr %18 to i64
  %20 = ptrtoint ptr %16 to i64
  %21 = sub i64 %19, %20
  %22 = ashr exact i64 %21, 3
  tail call void @_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %16, i64 noundef %22) #18
  store ptr %11, ptr %0, align 8, !tbaa !346
  %23 = getelementptr inbounds double, ptr %11, i64 %5
  store ptr %23, ptr %13, align 8, !tbaa !348
  store ptr %23, ptr %17, align 8, !tbaa !395
  br label %41

24:                                               ; preds = %3
  %25 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %26 = icmp ult i64 %25, %5
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr %0, align 8, !tbaa !346
  %29 = tail call noundef ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES2_ET0_T_S8_S7_(ptr %1, ptr %2, ptr noundef %28) #18
  tail call void @_ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %29) #19
  br label %41

30:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  store ptr %1, ptr %4, align 8, !tbaa.struct !541
  %31 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  call void @_ZSt7advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEmEvRT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %31) #18
  %32 = load ptr, ptr %4, align 8, !tbaa.struct !541
  %33 = load ptr, ptr %0, align 8, !tbaa !346
  %34 = call noundef ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES2_ET0_T_S8_S7_(ptr %1, ptr %32, ptr noundef %33) #18
  %35 = call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %36 = load ptr, ptr %4, align 8, !tbaa.struct !541
  %37 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !348
  %39 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %40 = call noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES2_dET0_T_S8_S7_RSaIT1_E(ptr %36, ptr %2, ptr noundef %38, ptr noundef nonnull align 1 dereferenceable(1) %39) #18
  store ptr %40, ptr %37, align 8, !tbaa !348
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  br label %41

41:                                               ; preds = %27, %30, %8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIdSaIdEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !542 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !395
  %4 = load ptr, ptr %0, align 8, !tbaa !346
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  ret i64 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPdS1_EEEES5_mT_S7_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr %2, ptr %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !310 {
  %5 = tail call noundef ptr @_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #18
  %6 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %7 = invoke noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES2_dET0_T_S8_S7_RSaIT1_E(ptr %2, ptr %3, ptr noundef %5, ptr noundef nonnull align 1 dereferenceable(1) %6) #18
          to label %8 unwind label %9

8:                                                ; preds = %4
  ret ptr %5

9:                                                ; preds = %4
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = extractvalue { ptr, i32 } %10, 0
  %12 = tail call ptr @__cxa_begin_catch(ptr %11) #20
  invoke void @_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %5, i64 noundef %1) #18
          to label %13 unwind label %14

13:                                               ; preds = %9
  invoke void @__cxa_rethrow() #25
          to label %20 unwind label %14

14:                                               ; preds = %13, %9
  %15 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %16 unwind label %17

16:                                               ; preds = %14
  resume { ptr, i32 } %15

17:                                               ; preds = %14
  %18 = landingpad { ptr, i32 }
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  tail call void @__clang_call_terminate(ptr %19) #21
  unreachable

20:                                               ; preds = %13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !310 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !348
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  invoke void @_ZSt8_DestroyIPddEvT_S1_RSaIT0_E(ptr noundef %1, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %7) #18
          to label %8 unwind label %10

8:                                                ; preds = %6
  store ptr %1, ptr %3, align 8, !tbaa !348
  br label %9

9:                                                ; preds = %8, %2
  ret void

10:                                               ; preds = %6
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #21
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt7advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEmEvRT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #2 comdat !prof !310 {
  tail call void @_ZSt19__iterator_categoryIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEENSt15iterator_traitsIT_E17iterator_categoryERKS8_(ptr noundef nonnull align 8 dereferenceable(8) %0) #18
  tail call void @_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #1 comdat !prof !310 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEpLEl(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEpLEl(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !310 {
  %3 = load ptr, ptr %0, align 8, !tbaa !385
  %4 = getelementptr inbounds double, ptr %3, i64 %1
  store ptr %4, ptr %0, align 8, !tbaa !385
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE8capacityEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !310 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !419
  %4 = load ptr, ptr %0, align 8, !tbaa !416
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 96
  ret i64 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
  %5 = tail call noundef ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #18
  %6 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %7 = invoke noundef ptr @_ZSt22__uninitialized_copy_aIPKN6dealii11Polynomials10PolynomialIdEEPS3_S3_ET0_T_S8_S7_RSaIT1_E(ptr noundef %2, ptr noundef %3, ptr noundef %5, ptr noundef nonnull align 1 dereferenceable(1) %6) #18
          to label %8 unwind label %9

8:                                                ; preds = %4
  ret ptr %5

9:                                                ; preds = %4
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = extractvalue { ptr, i32 } %10, 0
  %12 = tail call ptr @__cxa_begin_catch(ptr %11) #20
  invoke void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE13_M_deallocateEPS3_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %5, i64 noundef %1) #18
          to label %13 unwind label %14

13:                                               ; preds = %9
  invoke void @__cxa_rethrow() #25
          to label %20 unwind label %14

14:                                               ; preds = %13, %9
  %15 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %16 unwind label %17

16:                                               ; preds = %14
  resume { ptr, i32 } %15

17:                                               ; preds = %14
  %18 = landingpad { ptr, i32 }
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  tail call void @__clang_call_terminate(ptr %19) #21
  unreachable

20:                                               ; preds = %13
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx14__alloc_traitsISaIfEfE17_S_select_on_copyERKS1_(ptr dead_on_unwind noalias writable sret(%"class.std::allocator.16") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #2 comdat align 2 !prof !310 {
  tail call void @_ZNSt16allocator_traitsISaIfEE37select_on_container_copy_constructionERKS0_(ptr dead_on_unwind writable sret(%"class.std::allocator.16") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !310 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !310 {
  tail call void @_ZNSt12_Vector_baseIfSaIfEE12_Vector_implC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %2) #19
  invoke void @_ZNSt12_Vector_baseIfSaIfEE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #18
          to label %4 unwind label %5

4:                                                ; preds = %3
  ret void

5:                                                ; preds = %3
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt15__new_allocatorIfED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEPffET0_T_SA_S9_RSaIT1_E(ptr %0, ptr %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #2 comdat !prof !310 {
  %5 = tail call noundef ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEPfET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) #18
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorIfSaIfEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !310 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.50", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #19
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorIfSaIfEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !310 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.50", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #19
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !310 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIfSaIfEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !310 {
  %2 = load ptr, ptr %0, align 8, !tbaa !314
  %3 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !339
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 2
  invoke void @_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #18
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorIfED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #21
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIfEE37select_on_container_copy_constructionERKS0_(ptr dead_on_unwind noalias writable sret(%"class.std::allocator.16") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #1 comdat align 2 {
  tail call void @_ZNSaIfEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIfEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #1 comdat align 2 !prof !310 {
  tail call void @_ZNSt15__new_allocatorIfEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIfSaIfEE12_Vector_implC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #1 comdat align 2 !prof !310 {
  tail call void @_ZNSaIfEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #19
  tail call void @_ZNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIfSaIfEE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !310 {
  %3 = tail call noundef ptr @_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #18
  store ptr %3, ptr %0, align 8, !tbaa !314
  %4 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !318
  %5 = getelementptr inbounds float, ptr %3, i64 %1
  %6 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !339
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !310 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaIfEE8allocateERS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #18
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIfEE8allocateERS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorIfE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #18
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIfE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorIfE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #19
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !474

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 4611686018427387903
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #22
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #22
  unreachable

10:                                               ; preds = %3
  %11 = shl i64 %1, 2
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #23
  ret ptr %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIfE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 !prof !310 {
  ret i64 2305843009213693951
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEPfET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #2 comdat {
  %4 = tail call noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEPfEET0_T_SC_SB_(ptr %0, ptr %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEPfEET0_T_SC_SB_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 !prof !310 {
  %4 = tail call noundef ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEPfET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEPfET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #2 comdat !prof !310 {
  %4 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEET_S8_(ptr %0) #18
  %5 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEET_S8_(ptr %1) #18
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEPfET1_T0_SA_S9_(ptr %4, ptr %5, ptr noundef %2) #18
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEPfET1_T0_SA_S9_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #2 comdat !prof !310 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !334
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKfSt6vectorIfSaIfEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %0) #19
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPKfSt6vectorIfSaIfEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %1) #19
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPfET_S1_(ptr noundef %2) #19
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKfPfET1_T0_S4_S3_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #18
  %9 = call noundef ptr @_ZSt12__niter_wrapIPfET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #18
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEET_S8_(ptr %0) local_unnamed_addr #1 comdat !prof !310 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPfET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !543 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPKfPfET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat !prof !544 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPKfPfET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPKfSt6vectorIfSaIfEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %0) local_unnamed_addr #1 comdat !prof !310 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.50", align 8
  store ptr %0, ptr %2, align 8
  %3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #19
  %4 = load ptr, ptr %3, align 8, !tbaa !334
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPfET_S1_(ptr noundef %0) local_unnamed_addr #1 comdat !prof !545 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPKfPfET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat !prof !544 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIfEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIfEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !544 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %9, label %8, !prof !546

8:                                                ; preds = %3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %2, ptr align 4 %0, i64 %6, i1 false)
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds i8, ptr %2, i64 %6
  ret ptr %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !310 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 !prof !310 {
  %3 = load ptr, ptr %1, align 8, !tbaa !334
  store ptr %3, ptr %0, align 8, !tbaa !547
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 !prof !310 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIfEE10deallocateERS0_Pfm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #18
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIfEE10deallocateERS0_Pfm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorIfE10deallocateEPfm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIfE10deallocateEPfm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #24
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPffEvT_S1_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #2 comdat !prof !310 {
  tail call void @_ZSt8_DestroyIPfEvT_S1_(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPfEvT_S1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat !prof !310 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPfEEvT_S3_(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPfEEvT_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !310 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEmiEl(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !310 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.50", align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  %5 = load ptr, ptr %0, align 8, !tbaa !547
  %6 = sub i64 0, %1
  %7 = getelementptr inbounds float, ptr %5, i64 %6
  store ptr %7, ptr %4, align 8, !tbaa !334
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  %8 = load ptr, ptr %3, align 8
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !310 {
  %2 = load ptr, ptr %0, align 8, !tbaa !547
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_(i64 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #2 comdat align 2 !prof !310 {
  %3 = alloca %"class.std::allocator.16", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #20
  call void @_ZNSaIfEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %1) #19
  %4 = call noundef i64 @_ZNSt6vectorIfSaIfEE11_S_max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %3) #19
  %5 = icmp ult i64 %4, %0
  call void @_ZNSt15__new_allocatorIfED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #20
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #22
  unreachable

7:                                                ; preds = %2
  ret i64 %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIfSaIfEE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !314
  %4 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %5 = tail call noundef ptr @_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E(ptr noundef %3, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %4) #18
  %6 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %5, ptr %6, align 8, !tbaa !318
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIfSaIfEE11_S_max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 !prof !310 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  store i64 2305843009213693951, ptr %2, align 8, !tbaa !467
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  %4 = tail call noundef i64 @_ZNSt16allocator_traitsISaIfEE8max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0) #19
  store i64 %4, ptr %3, align 8, !tbaa !467
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  %6 = load i64, ptr %5, align 8, !tbaa !467
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaIfEE8max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIfE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #19
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIfE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 !prof !310 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIfE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #19
  ret i64 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #2 comdat {
  %4 = tail call noundef ptr @_ZSt25__uninitialized_default_nIPfmET_S1_T0_(ptr noundef %0, i64 noundef %1) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt25__uninitialized_default_nIPfmET_S1_T0_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 comdat {
  %3 = tail call noundef ptr @_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPfmEET_S3_T0_(ptr noundef %0, i64 noundef %1) #18
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPfmEET_S3_T0_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  tail call void @_ZSt10_ConstructIfJEEvPT_DpOT0_(ptr noundef %0) #18
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = add i64 %1, -1
  %7 = tail call noundef ptr @_ZSt6fill_nIPfmfET_S1_T0_RKT1_(ptr noundef nonnull %5, i64 noundef %6, ptr noundef nonnull align 4 dereferenceable(4) %0) #18
  br label %8

8:                                                ; preds = %4, %2
  %9 = phi ptr [ %7, %4 ], [ %0, %2 ]
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructIfJEEvPT_DpOT0_(ptr noundef %0) local_unnamed_addr #1 comdat {
  store float 0.000000e+00, ptr %0, align 4, !tbaa !319
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt6fill_nIPfmfET_S1_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #2 comdat !prof !310 {
  %4 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !334
  %5 = tail call noundef i64 @_ZSt17__size_to_integerm(i64 noundef %1) #18
  call void @_ZSt19__iterator_categoryIPfENSt15iterator_traitsIT_E17iterator_categoryERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  %6 = call noundef ptr @_ZSt10__fill_n_aIPfmfET_S1_T0_RKT1_St26random_access_iterator_tag(ptr noundef %0, i64 noundef %5, ptr noundef nonnull align 4 dereferenceable(4) %2) #18
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt10__fill_n_aIPfmfET_S1_T0_RKT1_St26random_access_iterator_tag(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #2 comdat !prof !310 {
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds float, ptr %0, i64 %1
  tail call void @_ZSt8__fill_aIPffEvT_S1_RKT0_(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull align 4 dereferenceable(4) %2) #18
  br label %7

7:                                                ; preds = %3, %5
  %8 = phi ptr [ %6, %5 ], [ %0, %3 ]
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPfENSt15iterator_traitsIT_E17iterator_categoryERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat !prof !549 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8__fill_aIPffEvT_S1_RKT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #2 comdat !prof !550 {
  tail call void @_ZSt9__fill_a1IPffEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt9__fill_a1IPffEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #1 comdat !prof !550 {
  %4 = load float, ptr %2, align 4, !tbaa !319
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %10, label %6, !prof !551

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  store float %4, ptr %7, align 4, !tbaa !319
  %8 = getelementptr inbounds float, ptr %7, i64 1
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %10, label %6, !prof !552, !llvm.loop !553

10:                                               ; preds = %6, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 !prof !310 {
  %3 = load ptr, ptr %1, align 8, !tbaa !334
  store ptr %3, ptr %0, align 8, !tbaa !335
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !310 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIfSaIfEE18_M_fill_initializeEmRKf(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #2 comdat align 2 !prof !310 {
  %4 = load ptr, ptr %0, align 8, !tbaa !314
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %6 = tail call noundef ptr @_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E(ptr noundef %4, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(1) %5) #18
  %7 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !318
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #2 comdat !prof !310 {
  %5 = tail call noundef ptr @_ZSt20uninitialized_fill_nIPfmfET_S1_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #18
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt20uninitialized_fill_nIPfmfET_S1_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #2 comdat {
  %4 = tail call noundef ptr @_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPfmfEET_S3_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPfmfEET_S3_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #2 comdat align 2 !prof !310 {
  %4 = tail call noundef ptr @_ZSt6fill_nIPfmfET_S1_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIfSaIfEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !310 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !339
  %4 = load ptr, ptr %0, align 8, !tbaa !314
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 2
  ret i64 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorIfSaIfEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKfS1_EEEEPfmT_S9_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr %2, ptr %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !310 {
  %5 = tail call noundef ptr @_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #18
  %6 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %7 = invoke noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEPffET0_T_SA_S9_RSaIT1_E(ptr %2, ptr %3, ptr noundef %5, ptr noundef nonnull align 1 dereferenceable(1) %6) #18
          to label %8 unwind label %9

8:                                                ; preds = %4
  ret ptr %5

9:                                                ; preds = %4
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = extractvalue { ptr, i32 } %10, 0
  %12 = tail call ptr @__cxa_begin_catch(ptr %11) #20
  invoke void @_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %5, i64 noundef %1) #18
          to label %13 unwind label %14

13:                                               ; preds = %9
  invoke void @__cxa_rethrow() #25
          to label %20 unwind label %14

14:                                               ; preds = %13, %9
  %15 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %16 unwind label %17

16:                                               ; preds = %14
  resume { ptr, i32 } %15

17:                                               ; preds = %14
  %18 = landingpad { ptr, i32 }
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  tail call void @__clang_call_terminate(ptr %19) #21
  unreachable

20:                                               ; preds = %13
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfEvT_S7_RSaIT0_E(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #2 comdat !prof !310 {
  tail call void @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEEvT_S7_(ptr %0, ptr %1) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat !prof !310 {
  %4 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEET_S8_(ptr %0) #18
  %5 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEET_S8_(ptr %1) #18
  %6 = tail call ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET1_T0_SB_SA_(ptr %4, ptr %5, ptr %2) #18
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPfS0_ET0_T_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat !prof !310 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPfET_S1_(ptr noundef %0) #18
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPfET_S1_(ptr noundef %1) #18
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPfS0_ET1_T0_S2_S1_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #18
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_copy_aIPfS0_fET0_T_S2_S1_RSaIT1_E(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #2 comdat !prof !310 {
  %5 = tail call noundef ptr @_ZSt18uninitialized_copyIPfS0_ET0_T_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEEvT_S7_(ptr %0, ptr %1) local_unnamed_addr #2 comdat !prof !310 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEEEvT_S9_(ptr %0, ptr %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEEEvT_S9_(ptr %0, ptr %1) local_unnamed_addr #1 comdat align 2 !prof !310 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET1_T0_SB_SA_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat !prof !310 {
  %4 = tail call noundef ptr @_ZSt12__niter_baseIPKfSt6vectorIfSaIfEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %0) #19
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKfSt6vectorIfSaIfEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %1) #19
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPfSt6vectorIfSaIfEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE(ptr %2) #19
  %7 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKfPfET1_T0_S4_S3_(ptr noundef %4, ptr noundef %5, ptr noundef %6) #18
  %8 = tail call ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES2_ET_S7_T0_(ptr %2, ptr noundef %7) #18
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES2_ET_S7_T0_(ptr %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !310 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %0, ptr %3, align 8
  %4 = tail call noundef ptr @_ZSt12__niter_baseIPfSt6vectorIfSaIfEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE(ptr %0) #19
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 2
  %9 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %8) #19
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPfSt6vectorIfSaIfEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE(ptr %0) local_unnamed_addr #1 comdat !prof !310 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %0, ptr %2, align 8
  %3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #19
  %4 = load ptr, ptr %3, align 8, !tbaa !334
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNK9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !310 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  %5 = load ptr, ptr %0, align 8, !tbaa !335
  %6 = getelementptr inbounds float, ptr %5, i64 %1
  store ptr %6, ptr %4, align 8, !tbaa !334
  call void @_ZN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  %7 = load ptr, ptr %3, align 8
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPfS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat !prof !310 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !334
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPfET_S1_(ptr noundef %0) #19
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPfET_S1_(ptr noundef %1) #19
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPfET_S1_(ptr noundef %2) #19
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPfS0_ET1_T0_S2_S1_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #18
  %9 = call noundef ptr @_ZSt12__niter_wrapIPfET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #18
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPfET_S1_(ptr noundef %0) local_unnamed_addr #1 comdat !prof !554 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPfS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat !prof !310 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPfS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPfS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !310 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIfEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt18uninitialized_copyIPfS0_ET0_T_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat {
  %4 = tail call noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPfS2_EET0_T_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPfS2_EET0_T_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 !prof !310 {
  %4 = tail call noundef ptr @_ZSt4copyIPfS0_ET0_T_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEmRKf(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !310 {
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %6 = alloca %"struct.std::vector<float>::_Temporary_value", align 8
  %7 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %1, ptr %5, align 8
  %8 = icmp eq i64 %2, 0
  br i1 %8, label %106, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !339
  %12 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !318
  %14 = ptrtoint ptr %11 to i64
  %15 = ptrtoint ptr %13 to i64
  %16 = sub i64 %14, %15
  %17 = ashr exact i64 %16, 2
  %18 = icmp ult i64 %17, %2
  br i1 %18, label %60, label %19

19:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #20
  call void @_ZNSt6vectorIfSaIfEE16_Temporary_valueC2IJRKfEEEPS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull %0, ptr noundef nonnull align 4 dereferenceable(4) %3) #18
  %20 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIfSaIfEE16_Temporary_value6_M_valEv(ptr noundef nonnull align 8 dereferenceable(12) %6) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #20
  %21 = call ptr @_ZNSt6vectorIfSaIfEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  store ptr %21, ptr %7, align 8
  %22 = call noundef i64 @_ZN9__gnu_cxxmiIPfSt6vectorIfSaIfEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %5) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #20
  %23 = load ptr, ptr %12, align 8, !tbaa !318
  %24 = icmp ugt i64 %22, %2
  br i1 %24, label %25, label %44

25:                                               ; preds = %19
  %26 = sub i64 0, %2
  %27 = getelementptr inbounds float, ptr %23, i64 %26
  %28 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %29 = invoke noundef ptr @_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_(ptr noundef nonnull %27, ptr noundef %23, ptr noundef %23, ptr noundef nonnull align 1 dereferenceable(1) %28) #18
          to label %30 unwind label %42

30:                                               ; preds = %25
  %31 = load ptr, ptr %12, align 8, !tbaa !318
  %32 = getelementptr inbounds float, ptr %31, i64 %2
  store ptr %32, ptr %12, align 8, !tbaa !318
  %33 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #19
  %34 = load ptr, ptr %33, align 8, !tbaa !334
  %35 = invoke noundef ptr @_ZSt13move_backwardIPfS0_ET0_T_S2_S1_(ptr noundef %34, ptr noundef nonnull %27, ptr noundef %23) #18
          to label %36 unwind label %42

36:                                               ; preds = %30
  %37 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #19
  %38 = load ptr, ptr %37, align 8, !tbaa !334
  %39 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #19
  %40 = load ptr, ptr %39, align 8, !tbaa !334
  %41 = getelementptr inbounds float, ptr %40, i64 %2
  invoke void @_ZSt4fillIPffEvT_S1_RKT0_(ptr noundef %38, ptr noundef nonnull %41, ptr noundef nonnull align 4 dereferenceable(4) %20) #18
          to label %59 unwind label %42

42:                                               ; preds = %54, %48, %44, %36, %30, %25
  %43 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIfSaIfEE16_Temporary_valueD2Ev(ptr noundef nonnull align 8 dereferenceable(12) %6) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #20
  br label %107

44:                                               ; preds = %19
  %45 = sub i64 %2, %22
  %46 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %47 = invoke noundef ptr @_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E(ptr noundef %23, i64 noundef %45, ptr noundef nonnull align 4 dereferenceable(4) %20, ptr noundef nonnull align 1 dereferenceable(1) %46) #18
          to label %48 unwind label %42

48:                                               ; preds = %44
  store ptr %47, ptr %12, align 8, !tbaa !318
  %49 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #19
  %50 = load ptr, ptr %49, align 8, !tbaa !334
  %51 = load ptr, ptr %12, align 8, !tbaa !318
  %52 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %53 = invoke noundef ptr @_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_(ptr noundef %50, ptr noundef %23, ptr noundef %51, ptr noundef nonnull align 1 dereferenceable(1) %52) #18
          to label %54 unwind label %42

54:                                               ; preds = %48
  %55 = load ptr, ptr %12, align 8, !tbaa !318
  %56 = getelementptr inbounds float, ptr %55, i64 %22
  store ptr %56, ptr %12, align 8, !tbaa !318
  %57 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #19
  %58 = load ptr, ptr %57, align 8, !tbaa !334
  invoke void @_ZSt4fillIPffEvT_S1_RKT0_(ptr noundef %58, ptr noundef %23, ptr noundef nonnull align 4 dereferenceable(4) %20) #18
          to label %59 unwind label %42

59:                                               ; preds = %54, %36
  call void @_ZNSt6vectorIfSaIfEE16_Temporary_valueD2Ev(ptr noundef nonnull align 8 dereferenceable(12) %6) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #20
  br label %106

60:                                               ; preds = %9
  %61 = load ptr, ptr %0, align 8, !tbaa !314
  %62 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #19
  %63 = load ptr, ptr %62, align 8, !tbaa !334
  %64 = call noundef i64 @_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2, ptr noundef nonnull @.str.14) #18
  %65 = ptrtoint ptr %63 to i64
  %66 = ptrtoint ptr %61 to i64
  %67 = sub i64 %65, %66
  %68 = call noundef ptr @_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %64) #18
  %69 = getelementptr inbounds i8, ptr %68, i64 %67
  %70 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %71 = invoke noundef ptr @_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E(ptr noundef %69, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 1 dereferenceable(1) %70) #18
          to label %72 unwind label %90

72:                                               ; preds = %60
  %73 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %74 = invoke noundef ptr @_ZSt34__uninitialized_move_if_noexcept_aIPfS0_SaIfEET0_T_S3_S2_RT1_(ptr noundef %61, ptr noundef %63, ptr noundef %68, ptr noundef nonnull align 1 dereferenceable(1) %73) #18
          to label %79 unwind label %75

75:                                               ; preds = %72
  %76 = landingpad { ptr, i32 }
          catch ptr null
  %77 = extractvalue { ptr, i32 } %76, 0
  %78 = call ptr @__cxa_begin_catch(ptr %77) #20
  br label %96

79:                                               ; preds = %72
  %80 = getelementptr inbounds float, ptr %74, i64 %2
  %81 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %82 = invoke noundef ptr @_ZSt34__uninitialized_move_if_noexcept_aIPfS0_SaIfEET0_T_S3_S2_RT1_(ptr noundef %63, ptr noundef %13, ptr noundef nonnull %80, ptr noundef nonnull align 1 dereferenceable(1) %81) #18
          to label %83 unwind label %90

83:                                               ; preds = %79
  %84 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  call void @_ZSt8_DestroyIPffEvT_S1_RSaIT0_E(ptr noundef %61, ptr noundef %13, ptr noundef nonnull align 1 dereferenceable(1) %84) #18
  %85 = load ptr, ptr %10, align 8, !tbaa !339
  %86 = ptrtoint ptr %85 to i64
  %87 = sub i64 %86, %66
  %88 = ashr exact i64 %87, 2
  call void @_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %61, i64 noundef %88) #18
  store ptr %68, ptr %0, align 8, !tbaa !314
  store ptr %82, ptr %12, align 8, !tbaa !318
  %89 = getelementptr inbounds float, ptr %68, i64 %64
  store ptr %89, ptr %10, align 8, !tbaa !339
  br label %106

90:                                               ; preds = %79, %60
  %91 = phi ptr [ %80, %79 ], [ %68, %60 ]
  %92 = landingpad { ptr, i32 }
          catch ptr null
  %93 = extractvalue { ptr, i32 } %92, 0
  %94 = call ptr @__cxa_begin_catch(ptr %93) #20
  %95 = icmp eq ptr %91, null
  br i1 %95, label %96, label %100

96:                                               ; preds = %75, %90
  %97 = getelementptr inbounds float, ptr %69, i64 %2
  br label %100

98:                                               ; preds = %100, %105, %104
  %99 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %107 unwind label %109

100:                                              ; preds = %90, %96
  %101 = phi ptr [ %69, %96 ], [ %68, %90 ]
  %102 = phi ptr [ %97, %96 ], [ %91, %90 ]
  %103 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  invoke void @_ZSt8_DestroyIPffEvT_S1_RSaIT0_E(ptr noundef %101, ptr noundef nonnull %102, ptr noundef nonnull align 1 dereferenceable(1) %103) #18
          to label %104 unwind label %98

104:                                              ; preds = %100
  invoke void @_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %68, i64 noundef %64) #18
          to label %105 unwind label %98

105:                                              ; preds = %104
  invoke void @__cxa_rethrow() #25
          to label %112 unwind label %98

106:                                              ; preds = %59, %83, %4
  ret void

107:                                              ; preds = %98, %42
  %108 = phi { ptr, i32 } [ %43, %42 ], [ %99, %98 ]
  resume { ptr, i32 } %108

109:                                              ; preds = %98
  %110 = landingpad { ptr, i32 }
          catch ptr null
  %111 = extractvalue { ptr, i32 } %110, 0
  call void @__clang_call_terminate(ptr %111) #21
  unreachable

112:                                              ; preds = %105
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIfSaIfEE15_M_erase_at_endEPf(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !310 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !318
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  invoke void @_ZSt8_DestroyIPffEvT_S1_RSaIT0_E(ptr noundef %1, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %7) #18
          to label %8 unwind label %10

8:                                                ; preds = %6
  store ptr %1, ptr %3, align 8, !tbaa !318
  br label %9

9:                                                ; preds = %8, %2
  ret void

10:                                               ; preds = %6
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #21
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIfSaIfEE16_Temporary_valueC2IJRKfEEEPS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #2 comdat align 2 {
  store ptr %1, ptr %0, align 8, !tbaa !555
  %4 = getelementptr inbounds %"struct.std::vector<float>::_Temporary_value", ptr %0, i64 0, i32 1
  tail call void @_ZNSt6vectorIfSaIfEE16_Temporary_value8_StorageC2Ev(ptr noundef nonnull align 4 dereferenceable(4) %4) #18
  %5 = load ptr, ptr %0, align 8, !tbaa !555
  %6 = tail call noundef ptr @_ZNSt6vectorIfSaIfEE16_Temporary_value6_M_ptrEv(ptr noundef nonnull align 8 dereferenceable(12) %0) #19
  tail call void @_ZNSt16allocator_traitsISaIfEE9constructIfJRKfEEEvRS0_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %6, ptr noundef nonnull align 4 dereferenceable(4) %2) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIfSaIfEE16_Temporary_value6_M_valEv(ptr noundef nonnull align 8 dereferenceable(12) %0) local_unnamed_addr #1 comdat align 2 {
  %2 = getelementptr inbounds %"struct.std::vector<float>::_Temporary_value", ptr %0, i64 0, i32 1
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN9__gnu_cxxmiIPfSt6vectorIfSaIfEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat !prof !310 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #19
  %4 = load ptr, ptr %3, align 8, !tbaa !334
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #19
  %6 = load ptr, ptr %5, align 8, !tbaa !334
  %7 = ptrtoint ptr %4 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 2
  ret i64 %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #2 comdat !prof !310 {
  %5 = tail call ptr @_ZSt18make_move_iteratorIPfESt13move_iteratorIT_ES2_(ptr noundef %0) #18
  %6 = tail call ptr @_ZSt18make_move_iteratorIPfESt13move_iteratorIT_ES2_(ptr noundef %1) #18
  %7 = tail call noundef ptr @_ZSt22__uninitialized_copy_aISt13move_iteratorIPfES1_fET0_T_S4_S3_RSaIT1_E(ptr %5, ptr %6, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #18
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13move_backwardIPfS0_ET0_T_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPfET_S1_(ptr noundef %0) #18
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPfET_S1_(ptr noundef %1) #18
  %6 = tail call noundef ptr @_ZSt22__copy_move_backward_aILb1EPfS0_ET1_T0_S2_S1_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #18
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt4fillIPffEvT_S1_RKT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #2 comdat !prof !557 {
  tail call void @_ZSt8__fill_aIPffEvT_S1_RKT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIfSaIfEE16_Temporary_valueD2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #1 comdat align 2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !555
  %3 = tail call noundef ptr @_ZNSt6vectorIfSaIfEE16_Temporary_value6_M_ptrEv(ptr noundef nonnull align 8 dereferenceable(12) %0) #19
  tail call void @_ZNSt16allocator_traitsISaIfEE7destroyIfEEvRS0_PT_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %3) #19
  %4 = getelementptr inbounds %"struct.std::vector<float>::_Temporary_value", ptr %0, i64 0, i32 1
  tail call void @_ZNSt6vectorIfSaIfEE16_Temporary_value8_StorageD2Ev(ptr noundef nonnull align 4 dereferenceable(4) %4) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 !prof !310 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %1, ptr %4, align 8, !tbaa !467
  %6 = tail call noundef i64 @_ZNKSt6vectorIfSaIfEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %7 = tail call noundef i64 @_ZNKSt6vectorIfSaIfEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %8 = sub i64 %6, %7
  %9 = icmp ult i64 %8, %1
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef %2) #22
  unreachable

11:                                               ; preds = %3
  %12 = tail call noundef i64 @_ZNKSt6vectorIfSaIfEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  %13 = tail call noundef i64 @_ZNKSt6vectorIfSaIfEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  store i64 %13, ptr %5, align 8, !tbaa !467
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  %15 = load i64, ptr %14, align 8, !tbaa !467
  %16 = add i64 %15, %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  %17 = call noundef i64 @_ZNKSt6vectorIfSaIfEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %22, label %19

19:                                               ; preds = %11
  %20 = call noundef i64 @_ZNKSt6vectorIfSaIfEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %21 = icmp ugt i64 %16, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %19, %11
  %23 = call noundef i64 @_ZNKSt6vectorIfSaIfEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  br label %24

24:                                               ; preds = %19, %22
  %25 = phi i64 [ %23, %22 ], [ %16, %19 ]
  ret i64 %25
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt34__uninitialized_move_if_noexcept_aIPfS0_SaIfEET0_T_S3_S2_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #2 comdat !prof !310 {
  %5 = tail call ptr @_ZSt32__make_move_if_noexcept_iteratorIfSt13move_iteratorIPfEET0_PT_(ptr noundef %0) #18
  %6 = tail call ptr @_ZSt32__make_move_if_noexcept_iteratorIfSt13move_iteratorIPfEET0_PT_(ptr noundef %1) #18
  %7 = tail call noundef ptr @_ZSt22__uninitialized_copy_aISt13move_iteratorIPfES1_fET0_T_S4_S3_RSaIT1_E(ptr %5, ptr %6, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #18
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIfSaIfEE16_Temporary_value8_StorageC2Ev(ptr noundef nonnull align 4 dereferenceable(4) %0) unnamed_addr #1 comdat align 2 {
  store i8 0, ptr %0, align 4, !tbaa !531
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIfEE9constructIfJRKfEEEvRS0_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #1 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorIfE9constructIfJRKfEEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorIfSaIfEE16_Temporary_value6_M_ptrEv(ptr noundef nonnull align 8 dereferenceable(12) %0) local_unnamed_addr #1 comdat align 2 {
  %2 = getelementptr inbounds %"struct.std::vector<float>::_Temporary_value", ptr %0, i64 0, i32 1
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIfE9constructIfJRKfEEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #1 comdat align 2 {
  %4 = load float, ptr %2, align 4, !tbaa !319
  store float %4, ptr %1, align 4, !tbaa !319
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_copy_aISt13move_iteratorIPfES1_fET0_T_S4_S3_RSaIT1_E(ptr %0, ptr %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #2 comdat {
  %5 = tail call noundef ptr @_ZSt18uninitialized_copyISt13move_iteratorIPfES1_ET0_T_S4_S3_(ptr %0, ptr %1, ptr noundef %2) #18
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt18make_move_iteratorIPfESt13move_iteratorIT_ES2_(ptr noundef %0) local_unnamed_addr #2 comdat {
  %2 = alloca %"class.std::move_iterator.51", align 8
  call void @_ZNSt13move_iteratorIPfEC2ES0_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %0) #18
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt18uninitialized_copyISt13move_iteratorIPfES1_ET0_T_S4_S3_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #2 comdat {
  %4 = tail call noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPfES3_EET0_T_S6_S5_(ptr %0, ptr %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPfES3_EET0_T_S6_S5_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 {
  %4 = tail call noundef ptr @_ZSt4copyISt13move_iteratorIPfES1_ET0_T_S4_S3_(ptr %0, ptr %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyISt13move_iteratorIPfES1_ET0_T_S4_S3_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #2 comdat {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPfEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(ptr %0) #18
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPfEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(ptr %1) #18
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb1EPfS0_ET1_T0_S2_S1_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #18
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb1EPfS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !334
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPfET_S1_(ptr noundef %0) #19
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPfET_S1_(ptr noundef %1) #19
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPfET_S1_(ptr noundef %2) #19
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb1EPfS0_ET1_T0_S2_S1_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #18
  %9 = call noundef ptr @_ZSt12__niter_wrapIPfET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #18
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPfEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(ptr %0) local_unnamed_addr #2 comdat {
  %2 = alloca %"class.std::move_iterator.51", align 8
  store ptr %0, ptr %2, align 8
  %3 = call noundef ptr @_ZNKSt13move_iteratorIPfE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #18
  %4 = call noundef ptr @_ZSt12__miter_baseIPfET_S1_(ptr noundef %3) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb1EPfS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb1EPfS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb1EPfS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIfEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIfEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %2, ptr align 4 %0, i64 %6, i1 false)
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds i8, ptr %2, i64 %6
  ret ptr %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt13move_iteratorIPfE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !558
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt13move_iteratorIPfEC2ES0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 {
  store ptr %1, ptr %0, align 8, !tbaa !558
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__copy_move_backward_aILb1EPfS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !334
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPfET_S1_(ptr noundef %0) #19
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPfET_S1_(ptr noundef %1) #19
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPfET_S1_(ptr noundef %2) #19
  %8 = tail call noundef ptr @_ZSt23__copy_move_backward_a1ILb1EPfS0_ET1_T0_S2_S1_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #18
  %9 = call noundef ptr @_ZSt12__niter_wrapIPfET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #18
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a1ILb1EPfS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat {
  %4 = tail call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPfS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPfS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat {
  %4 = tail call noundef ptr @_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIfEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIfEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = ashr exact i64 %6, 2
  %8 = icmp eq ptr %1, %0
  %9 = sub nsw i64 0, %7
  br i1 %8, label %12, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds float, ptr %2, i64 %9
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %11, ptr align 4 %0, i64 %6, i1 false)
  br label %12

12:                                               ; preds = %3, %10
  %13 = getelementptr inbounds float, ptr %2, i64 %9
  ret ptr %13
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIfEE7destroyIfEEvRS0_PT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorIfE7destroyIfEEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIfSaIfEE16_Temporary_value8_StorageD2Ev(ptr noundef nonnull align 4 dereferenceable(4) %0) unnamed_addr #1 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIfE7destroyIfEEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIfSaIfEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !310 {
  %2 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %3 = tail call noundef i64 @_ZNSt6vectorIfSaIfEE11_S_max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %2) #19
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt32__make_move_if_noexcept_iteratorIfSt13move_iteratorIPfEET0_PT_(ptr noundef %0) local_unnamed_addr #2 comdat {
  %2 = alloca %"class.std::move_iterator.51", align 8
  call void @_ZNSt13move_iteratorIPfEC2ES0_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %0) #18
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEmiEl(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !351 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.48", align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  %5 = load ptr, ptr %0, align 8, !tbaa !523
  %6 = sub i64 0, %1
  %7 = getelementptr inbounds double, ptr %5, i64 %6
  store ptr %7, ptr %4, align 8, !tbaa !334
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  %8 = load ptr, ptr %3, align 8
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !351 {
  %2 = load ptr, ptr %0, align 8, !tbaa !523
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 !prof !560 {
  %3 = load ptr, ptr %1, align 8, !tbaa !334
  store ptr %3, ptr %0, align 8, !tbaa !385
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr %2, ptr %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !371 {
  %5 = tail call noundef ptr @_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #18
  %6 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %7 = invoke noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPddET0_T_SA_S9_RSaIT1_E(ptr %2, ptr %3, ptr noundef %5, ptr noundef nonnull align 1 dereferenceable(1) %6) #18
          to label %8 unwind label %9

8:                                                ; preds = %4
  ret ptr %5

9:                                                ; preds = %4
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = extractvalue { ptr, i32 } %10, 0
  %12 = tail call ptr @__cxa_begin_catch(ptr %11) #20
  invoke void @_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %5, i64 noundef %1) #18
          to label %13 unwind label %14

13:                                               ; preds = %9
  invoke void @__cxa_rethrow() #25
          to label %20 unwind label %14

14:                                               ; preds = %13, %9
  %15 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %16 unwind label %17

16:                                               ; preds = %14
  resume { ptr, i32 } %15

17:                                               ; preds = %14
  %18 = landingpad { ptr, i32 }
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  tail call void @__clang_call_terminate(ptr %19) #21
  unreachable

20:                                               ; preds = %13
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RSaIT0_E(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #2 comdat !prof !561 {
  tail call void @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_(ptr %0, ptr %1) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat !prof !561 {
  %4 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEET_S8_(ptr %0) #18
  %5 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEET_S8_(ptr %1) #18
  %6 = tail call ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET1_T0_SB_SA_(ptr %4, ptr %5, ptr %2) #18
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat !prof !539 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %0) #18
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %1) #18
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPdS0_ET1_T0_S2_S1_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #18
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_copy_aIPdS0_dET0_T_S2_S1_RSaIT1_E(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #2 comdat !prof !562 {
  %5 = tail call noundef ptr @_ZSt18uninitialized_copyIPdS0_ET0_T_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_(ptr %0, ptr %1) local_unnamed_addr #2 comdat !prof !561 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_(ptr %0, ptr %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_(ptr %0, ptr %1) local_unnamed_addr #1 comdat align 2 !prof !561 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET1_T0_SB_SA_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat !prof !561 {
  %4 = tail call noundef ptr @_ZSt12__niter_baseIPKdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %0) #19
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %1) #19
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE(ptr %2) #19
  %7 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_(ptr noundef %4, ptr noundef %5, ptr noundef %6) #18
  %8 = tail call ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES2_ET_S7_T0_(ptr %2, ptr noundef %7) #18
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES2_ET_S7_T0_(ptr %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !561 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.26", align 8
  store ptr %0, ptr %3, align 8
  %4 = tail call noundef ptr @_ZSt12__niter_baseIPdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE(ptr %0) #19
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  %9 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %8) #19
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !563 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.26", align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  %5 = load ptr, ptr %0, align 8, !tbaa !385
  %6 = getelementptr inbounds double, ptr %5, i64 %1
  store ptr %6, ptr %4, align 8, !tbaa !334
  call void @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  %7 = load ptr, ptr %3, align 8
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPdS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat !prof !539 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !334
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPdET_S1_(ptr noundef %0) #19
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPdET_S1_(ptr noundef %1) #19
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPdET_S1_(ptr noundef %2) #19
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPdS0_ET1_T0_S2_S1_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #18
  %9 = call noundef ptr @_ZSt12__niter_wrapIPdET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #18
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %0) local_unnamed_addr #1 comdat !prof !564 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt18uninitialized_copyIPdS0_ET0_T_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat {
  %4 = tail call noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPdS2_EET0_T_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPdS2_EET0_T_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 !prof !562 {
  %4 = tail call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !565 {
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.26", align 8
  %6 = alloca %"struct.std::vector<double>::_Temporary_value", align 8
  %7 = alloca %"class.__gnu_cxx::__normal_iterator.26", align 8
  store ptr %1, ptr %5, align 8
  %8 = icmp eq i64 %2, 0
  br i1 %8, label %106, label %9, !prof !566

9:                                                ; preds = %4
  %10 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !395
  %12 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !348
  %14 = ptrtoint ptr %11 to i64
  %15 = ptrtoint ptr %13 to i64
  %16 = sub i64 %14, %15
  %17 = ashr exact i64 %16, 3
  %18 = icmp ult i64 %17, %2
  br i1 %18, label %60, label %19, !prof !567

19:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #20
  call void @_ZNSt6vectorIdSaIdEE16_Temporary_valueC2IJRKdEEEPS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  %20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEE16_Temporary_value6_M_valEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #20
  %21 = call ptr @_ZNSt6vectorIdSaIdEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  store ptr %21, ptr %7, align 8
  %22 = call noundef i64 @_ZN9__gnu_cxxmiIPdSt6vectorIdSaIdEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %5) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #20
  %23 = load ptr, ptr %12, align 8, !tbaa !348
  %24 = icmp ugt i64 %22, %2
  br i1 %24, label %25, label %44

25:                                               ; preds = %19
  %26 = sub i64 0, %2
  %27 = getelementptr inbounds double, ptr %23, i64 %26
  %28 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %29 = invoke noundef ptr @_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_(ptr noundef nonnull %27, ptr noundef %23, ptr noundef %23, ptr noundef nonnull align 1 dereferenceable(1) %28) #18
          to label %30 unwind label %42

30:                                               ; preds = %25
  %31 = load ptr, ptr %12, align 8, !tbaa !348
  %32 = getelementptr inbounds double, ptr %31, i64 %2
  store ptr %32, ptr %12, align 8, !tbaa !348
  %33 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #19
  %34 = load ptr, ptr %33, align 8, !tbaa !334
  %35 = invoke noundef ptr @_ZSt13move_backwardIPdS0_ET0_T_S2_S1_(ptr noundef %34, ptr noundef nonnull %27, ptr noundef %23) #18
          to label %36 unwind label %42

36:                                               ; preds = %30
  %37 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #19
  %38 = load ptr, ptr %37, align 8, !tbaa !334
  %39 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #19
  %40 = load ptr, ptr %39, align 8, !tbaa !334
  %41 = getelementptr inbounds double, ptr %40, i64 %2
  invoke void @_ZSt4fillIPddEvT_S1_RKT0_(ptr noundef %38, ptr noundef nonnull %41, ptr noundef nonnull align 8 dereferenceable(8) %20) #18
          to label %59 unwind label %42

42:                                               ; preds = %54, %48, %44, %36, %30, %25
  %43 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIdSaIdEE16_Temporary_valueD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #20
  br label %107

44:                                               ; preds = %19
  %45 = sub i64 %2, %22
  %46 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %47 = invoke noundef ptr @_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E(ptr noundef %23, i64 noundef %45, ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 1 dereferenceable(1) %46) #18
          to label %48 unwind label %42

48:                                               ; preds = %44
  store ptr %47, ptr %12, align 8, !tbaa !348
  %49 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #19
  %50 = load ptr, ptr %49, align 8, !tbaa !334
  %51 = load ptr, ptr %12, align 8, !tbaa !348
  %52 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %53 = invoke noundef ptr @_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_(ptr noundef %50, ptr noundef %23, ptr noundef %51, ptr noundef nonnull align 1 dereferenceable(1) %52) #18
          to label %54 unwind label %42

54:                                               ; preds = %48
  %55 = load ptr, ptr %12, align 8, !tbaa !348
  %56 = getelementptr inbounds double, ptr %55, i64 %22
  store ptr %56, ptr %12, align 8, !tbaa !348
  %57 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #19
  %58 = load ptr, ptr %57, align 8, !tbaa !334
  invoke void @_ZSt4fillIPddEvT_S1_RKT0_(ptr noundef %58, ptr noundef %23, ptr noundef nonnull align 8 dereferenceable(8) %20) #18
          to label %59 unwind label %42

59:                                               ; preds = %54, %36
  call void @_ZNSt6vectorIdSaIdEE16_Temporary_valueD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #20
  br label %106

60:                                               ; preds = %9
  %61 = load ptr, ptr %0, align 8, !tbaa !346
  %62 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #19
  %63 = load ptr, ptr %62, align 8, !tbaa !334
  %64 = call noundef i64 @_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2, ptr noundef nonnull @.str.14) #18
  %65 = ptrtoint ptr %63 to i64
  %66 = ptrtoint ptr %61 to i64
  %67 = sub i64 %65, %66
  %68 = call noundef ptr @_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %64) #18
  %69 = getelementptr inbounds i8, ptr %68, i64 %67
  %70 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %71 = invoke noundef ptr @_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E(ptr noundef %69, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %70) #18
          to label %72 unwind label %90

72:                                               ; preds = %60
  %73 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %74 = invoke noundef ptr @_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_(ptr noundef %61, ptr noundef %63, ptr noundef %68, ptr noundef nonnull align 1 dereferenceable(1) %73) #18
          to label %79 unwind label %75

75:                                               ; preds = %72
  %76 = landingpad { ptr, i32 }
          catch ptr null
  %77 = extractvalue { ptr, i32 } %76, 0
  %78 = call ptr @__cxa_begin_catch(ptr %77) #20
  br label %96

79:                                               ; preds = %72
  %80 = getelementptr inbounds double, ptr %74, i64 %2
  %81 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %82 = invoke noundef ptr @_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_(ptr noundef %63, ptr noundef %13, ptr noundef nonnull %80, ptr noundef nonnull align 1 dereferenceable(1) %81) #18
          to label %83 unwind label %90

83:                                               ; preds = %79
  %84 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  call void @_ZSt8_DestroyIPddEvT_S1_RSaIT0_E(ptr noundef %61, ptr noundef %13, ptr noundef nonnull align 1 dereferenceable(1) %84) #18
  %85 = load ptr, ptr %10, align 8, !tbaa !395
  %86 = ptrtoint ptr %85 to i64
  %87 = sub i64 %86, %66
  %88 = ashr exact i64 %87, 3
  call void @_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %61, i64 noundef %88) #18
  store ptr %68, ptr %0, align 8, !tbaa !346
  store ptr %82, ptr %12, align 8, !tbaa !348
  %89 = getelementptr inbounds double, ptr %68, i64 %64
  store ptr %89, ptr %10, align 8, !tbaa !395
  br label %106

90:                                               ; preds = %79, %60
  %91 = phi ptr [ %80, %79 ], [ %68, %60 ]
  %92 = landingpad { ptr, i32 }
          catch ptr null
  %93 = extractvalue { ptr, i32 } %92, 0
  %94 = call ptr @__cxa_begin_catch(ptr %93) #20
  %95 = icmp eq ptr %91, null
  br i1 %95, label %96, label %100

96:                                               ; preds = %75, %90
  %97 = getelementptr inbounds double, ptr %69, i64 %2
  br label %100

98:                                               ; preds = %100, %105, %104
  %99 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %107 unwind label %109

100:                                              ; preds = %90, %96
  %101 = phi ptr [ %69, %96 ], [ %68, %90 ]
  %102 = phi ptr [ %97, %96 ], [ %91, %90 ]
  %103 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  invoke void @_ZSt8_DestroyIPddEvT_S1_RSaIT0_E(ptr noundef %101, ptr noundef nonnull %102, ptr noundef nonnull align 1 dereferenceable(1) %103) #18
          to label %104 unwind label %98

104:                                              ; preds = %100
  invoke void @_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %68, i64 noundef %64) #18
          to label %105 unwind label %98

105:                                              ; preds = %104
  invoke void @__cxa_rethrow() #25
          to label %112 unwind label %98

106:                                              ; preds = %59, %83, %4
  ret void

107:                                              ; preds = %98, %42
  %108 = phi { ptr, i32 } [ %43, %42 ], [ %99, %98 ]
  resume { ptr, i32 } %108

109:                                              ; preds = %98
  %110 = landingpad { ptr, i32 }
          catch ptr null
  %111 = extractvalue { ptr, i32 } %110, 0
  call void @__clang_call_terminate(ptr %111) #21
  unreachable

112:                                              ; preds = %105
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEE16_Temporary_valueC2IJRKdEEEPS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #2 comdat align 2 {
  store ptr %1, ptr %0, align 8, !tbaa !568
  %4 = getelementptr inbounds %"struct.std::vector<double>::_Temporary_value", ptr %0, i64 0, i32 1
  tail call void @_ZNSt6vectorIdSaIdEE16_Temporary_value8_StorageC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  %5 = load ptr, ptr %0, align 8, !tbaa !568
  %6 = tail call noundef ptr @_ZNSt6vectorIdSaIdEE16_Temporary_value6_M_ptrEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #19
  tail call void @_ZNSt16allocator_traitsISaIdEE9constructIdJRKdEEEvRS0_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(8) %2) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEE16_Temporary_value6_M_valEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 {
  %2 = getelementptr inbounds %"struct.std::vector<double>::_Temporary_value", ptr %0, i64 0, i32 1
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #2 comdat !prof !310 {
  %5 = tail call ptr @_ZSt18make_move_iteratorIPdESt13move_iteratorIT_ES2_(ptr noundef %0) #18
  %6 = tail call ptr @_ZSt18make_move_iteratorIPdESt13move_iteratorIT_ES2_(ptr noundef %1) #18
  %7 = tail call noundef ptr @_ZSt22__uninitialized_copy_aISt13move_iteratorIPdES1_dET0_T_S4_S3_RSaIT1_E(ptr %5, ptr %6, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #18
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13move_backwardIPdS0_ET0_T_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %0) #18
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %1) #18
  %6 = tail call noundef ptr @_ZSt22__copy_move_backward_aILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #18
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt4fillIPddEvT_S1_RKT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat !prof !570 {
  tail call void @_ZSt8__fill_aIPddEvT_S1_RKT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEE16_Temporary_valueD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !568
  %3 = tail call noundef ptr @_ZNSt6vectorIdSaIdEE16_Temporary_value6_M_ptrEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #19
  tail call void @_ZNSt16allocator_traitsISaIdEE7destroyIdEEvRS0_PT_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %3) #19
  %4 = getelementptr inbounds %"struct.std::vector<double>::_Temporary_value", ptr %0, i64 0, i32 1
  tail call void @_ZNSt6vectorIdSaIdEE16_Temporary_value8_StorageD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 !prof !571 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %1, ptr %4, align 8, !tbaa !467
  %6 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %7 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %8 = sub i64 %6, %7
  %9 = icmp ult i64 %8, %1
  br i1 %9, label %10, label %11, !prof !572

10:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef %2) #22
  unreachable

11:                                               ; preds = %3
  %12 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  %13 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  store i64 %13, ptr %5, align 8, !tbaa !467
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  %15 = load i64, ptr %14, align 8, !tbaa !467
  %16 = add i64 %15, %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  %17 = call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %22, label %19, !prof !572

19:                                               ; preds = %11
  %20 = call noundef i64 @_ZNKSt6vectorIdSaIdEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %21 = icmp ugt i64 %16, %20
  br i1 %21, label %22, label %24, !prof !572

22:                                               ; preds = %19, %11
  %23 = call noundef i64 @_ZNKSt6vectorIdSaIdEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  br label %24

24:                                               ; preds = %19, %22
  %25 = phi i64 [ %23, %22 ], [ %16, %19 ]
  ret i64 %25
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #2 comdat !prof !573 {
  %5 = tail call ptr @_ZSt32__make_move_if_noexcept_iteratorIdSt13move_iteratorIPdEET0_PT_(ptr noundef %0) #18
  %6 = tail call ptr @_ZSt32__make_move_if_noexcept_iteratorIdSt13move_iteratorIPdEET0_PT_(ptr noundef %1) #18
  %7 = tail call noundef ptr @_ZSt22__uninitialized_copy_aISt13move_iteratorIPdES1_dET0_T_S4_S3_RSaIT1_E(ptr %5, ptr %6, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #18
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEE16_Temporary_value8_StorageC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
  store i8 0, ptr %0, align 8, !tbaa !531
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIdEE9constructIdJRKdEEEvRS0_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorIdE9constructIdJRKdEEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorIdSaIdEE16_Temporary_value6_M_ptrEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 {
  %2 = getelementptr inbounds %"struct.std::vector<double>::_Temporary_value", ptr %0, i64 0, i32 1
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIdE9constructIdJRKdEEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
  %4 = load double, ptr %2, align 8, !tbaa !352
  store double %4, ptr %1, align 8, !tbaa !352
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_copy_aISt13move_iteratorIPdES1_dET0_T_S4_S3_RSaIT1_E(ptr %0, ptr %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #2 comdat {
  %5 = tail call noundef ptr @_ZSt18uninitialized_copyISt13move_iteratorIPdES1_ET0_T_S4_S3_(ptr %0, ptr %1, ptr noundef %2) #18
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt18make_move_iteratorIPdESt13move_iteratorIT_ES2_(ptr noundef %0) local_unnamed_addr #2 comdat {
  %2 = alloca %"class.std::move_iterator.52", align 8
  call void @_ZNSt13move_iteratorIPdEC2ES0_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %0) #18
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt18uninitialized_copyISt13move_iteratorIPdES1_ET0_T_S4_S3_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #2 comdat {
  %4 = tail call noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPdES3_EET0_T_S6_S5_(ptr %0, ptr %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPdES3_EET0_T_S6_S5_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 {
  %4 = tail call noundef ptr @_ZSt4copyISt13move_iteratorIPdES1_ET0_T_S4_S3_(ptr %0, ptr %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyISt13move_iteratorIPdES1_ET0_T_S4_S3_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #2 comdat {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPdEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(ptr %0) #18
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPdEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(ptr %1) #18
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #18
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !334
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPdET_S1_(ptr noundef %0) #19
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPdET_S1_(ptr noundef %1) #19
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPdET_S1_(ptr noundef %2) #19
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #18
  %9 = call noundef ptr @_ZSt12__niter_wrapIPdET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #18
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPdEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(ptr %0) local_unnamed_addr #2 comdat {
  %2 = alloca %"class.std::move_iterator.52", align 8
  store ptr %0, ptr %2, align 8
  %3 = call noundef ptr @_ZNKSt13move_iteratorIPdE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #18
  %4 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %3) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %2, ptr align 8 %0, i64 %6, i1 false)
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds i8, ptr %2, i64 %6
  ret ptr %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt13move_iteratorIPdE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !574
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt13move_iteratorIPdEC2ES0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 {
  store ptr %1, ptr %0, align 8, !tbaa !574
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__copy_move_backward_aILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !334
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPdET_S1_(ptr noundef %0) #19
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPdET_S1_(ptr noundef %1) #19
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPdET_S1_(ptr noundef %2) #19
  %8 = tail call noundef ptr @_ZSt23__copy_move_backward_a1ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #18
  %9 = call noundef ptr @_ZSt12__niter_wrapIPdET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #18
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a1ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat {
  %4 = tail call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat {
  %4 = tail call noundef ptr @_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIdEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIdEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = ashr exact i64 %6, 3
  %8 = icmp eq ptr %1, %0
  %9 = sub nsw i64 0, %7
  br i1 %8, label %12, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds double, ptr %2, i64 %9
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %11, ptr align 8 %0, i64 %6, i1 false)
  br label %12

12:                                               ; preds = %3, %10
  %13 = getelementptr inbounds double, ptr %2, i64 %9
  ret ptr %13
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIdEE7destroyIdEEvRS0_PT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorIdE7destroyIdEEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEE16_Temporary_value8_StorageD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIdE7destroyIdEEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIdSaIdEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !562 {
  %2 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %3 = tail call noundef i64 @_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %2) #19
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt32__make_move_if_noexcept_iteratorIdSt13move_iteratorIPdEET0_PT_(ptr noundef %0) local_unnamed_addr #2 comdat {
  %2 = alloca %"class.std::move_iterator.52", align 8
  call void @_ZNSt13move_iteratorIPdEC2ES0_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %0) #18
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIfSaIfEEC2IN9__gnu_cxx17__normal_iteratorIPfS1_EEvEET_S7_RKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %1, ptr %5, align 8
  tail call void @_ZNSt12_Vector_baseIfSaIfEEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %3) #19
  call void @_ZSt19__iterator_categoryIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEENSt15iterator_traitsIT_E17iterator_categoryERKS8_(ptr noundef nonnull align 8 dereferenceable(8) %5) #18
  invoke void @_ZNSt6vectorIfSaIfEE19_M_range_initializeIN9__gnu_cxx17__normal_iteratorIPfS1_EEEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) #18
          to label %6 unwind label %7

6:                                                ; preds = %4
  ret void

7:                                                ; preds = %4
  %8 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12_Vector_baseIfSaIfEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPfS1_EEvEEvT_S7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat align 2 {
  tail call void @_ZNSt6vectorIfSaIfEE18_M_assign_dispatchIN9__gnu_cxx17__normal_iteratorIPfS1_EEEEvT_S7_St12__false_type(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIfSaIfEEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #1 comdat align 2 !prof !310 {
  tail call void @_ZNSt12_Vector_baseIfSaIfEE12_Vector_implC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIfSaIfEE19_M_range_initializeIN9__gnu_cxx17__normal_iteratorIPfS1_EEEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat align 2 !prof !310 {
  %4 = tail call noundef i64 @_ZSt8distanceIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEENSt15iterator_traitsIT_E15difference_typeES8_S8_(ptr %1, ptr %2) #18
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %6 = tail call noundef i64 @_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_(i64 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #18
  %7 = tail call noundef ptr @_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %6) #18
  store ptr %7, ptr %0, align 8, !tbaa !314
  %8 = getelementptr inbounds float, ptr %7, i64 %4
  %9 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %8, ptr %9, align 8, !tbaa !339
  %10 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %11 = tail call noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES2_fET0_T_S8_S7_RSaIT1_E(ptr %1, ptr %2, ptr noundef %7, ptr noundef nonnull align 1 dereferenceable(1) %10) #18
  %12 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %11, ptr %12, align 8, !tbaa !318
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEENSt15iterator_traitsIT_E17iterator_categoryERKS8_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat !prof !310 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEENSt15iterator_traitsIT_E15difference_typeES8_S8_(ptr %0, ptr %1) local_unnamed_addr #2 comdat !prof !310 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %0, ptr %3, align 8
  call void @_ZSt19__iterator_categoryIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEENSt15iterator_traitsIT_E17iterator_categoryERKS8_(ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  %4 = call noundef i64 @_ZSt10__distanceIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEENSt15iterator_traitsIT_E15difference_typeES8_S8_St26random_access_iterator_tag(ptr %0, ptr %1) #18
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES2_fET0_T_S8_S7_RSaIT1_E(ptr %0, ptr %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #2 comdat !prof !310 {
  %5 = tail call noundef ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES2_ET0_T_S8_S7_(ptr %0, ptr %1, ptr noundef %2) #18
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEENSt15iterator_traitsIT_E15difference_typeES8_S8_St26random_access_iterator_tag(ptr %0, ptr %1) local_unnamed_addr #1 comdat !prof !310 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = call noundef i64 @_ZN9__gnu_cxxmiIPfSt6vectorIfSaIfEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3) #19
  ret i64 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES2_ET0_T_S8_S7_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #2 comdat {
  %4 = tail call noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES4_EET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES4_EET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 !prof !310 {
  %4 = tail call noundef ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES2_ET0_T_S8_S7_(ptr %0, ptr %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES2_ET0_T_S8_S7_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #2 comdat !prof !310 {
  %4 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEET_S7_(ptr %0) #18
  %5 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEET_S7_(ptr %1) #18
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES2_ET1_T0_S8_S7_(ptr %4, ptr %5, ptr noundef %2) #18
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES2_ET1_T0_S8_S7_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #2 comdat !prof !310 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !334
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPfSt6vectorIfSaIfEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE(ptr %0) #19
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPfSt6vectorIfSaIfEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE(ptr %1) #19
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPfET_S1_(ptr noundef %2) #19
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPfS0_ET1_T0_S2_S1_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #18
  %9 = call noundef ptr @_ZSt12__niter_wrapIPfET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #18
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEET_S7_(ptr %0) local_unnamed_addr #1 comdat !prof !310 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIfSaIfEE18_M_assign_dispatchIN9__gnu_cxx17__normal_iteratorIPfS1_EEEEvT_S7_St12__false_type(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat align 2 !prof !310 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %1, ptr %4, align 8
  call void @_ZSt19__iterator_categoryIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEENSt15iterator_traitsIT_E17iterator_categoryERKS8_(ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  call void @_ZNSt6vectorIfSaIfEE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPfS1_EEEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIfSaIfEE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPfS1_EEEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat align 2 !prof !310 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = tail call noundef i64 @_ZSt8distanceIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEENSt15iterator_traitsIT_E15difference_typeES8_S8_(ptr %1, ptr %2) #18
  %6 = tail call noundef i64 @_ZNKSt6vectorIfSaIfEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %7 = icmp ugt i64 %5, %6
  br i1 %7, label %8, label %24

8:                                                ; preds = %3
  %9 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %10 = tail call noundef i64 @_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_(i64 noundef %5, ptr noundef nonnull align 1 dereferenceable(1) %9) #18
  %11 = tail call noundef ptr @_ZNSt6vectorIfSaIfEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPfS1_EEEES5_mT_S7_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %5, ptr %1, ptr %2) #18
  %12 = load ptr, ptr %0, align 8, !tbaa !314
  %13 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !318
  %15 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  tail call void @_ZSt8_DestroyIPffEvT_S1_RSaIT0_E(ptr noundef %12, ptr noundef %14, ptr noundef nonnull align 1 dereferenceable(1) %15) #18
  %16 = load ptr, ptr %0, align 8, !tbaa !314
  %17 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !339
  %19 = ptrtoint ptr %18 to i64
  %20 = ptrtoint ptr %16 to i64
  %21 = sub i64 %19, %20
  %22 = ashr exact i64 %21, 2
  tail call void @_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %16, i64 noundef %22) #18
  store ptr %11, ptr %0, align 8, !tbaa !314
  %23 = getelementptr inbounds float, ptr %11, i64 %5
  store ptr %23, ptr %13, align 8, !tbaa !318
  store ptr %23, ptr %17, align 8, !tbaa !339
  br label %41

24:                                               ; preds = %3
  %25 = tail call noundef i64 @_ZNKSt6vectorIfSaIfEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %26 = icmp ult i64 %25, %5
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr %0, align 8, !tbaa !314
  %29 = tail call noundef ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES2_ET0_T_S8_S7_(ptr %1, ptr %2, ptr noundef %28) #18
  tail call void @_ZNSt6vectorIfSaIfEE15_M_erase_at_endEPf(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %29) #19
  br label %41

30:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  store ptr %1, ptr %4, align 8, !tbaa.struct !541
  %31 = tail call noundef i64 @_ZNKSt6vectorIfSaIfEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  call void @_ZSt7advanceIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEmEvRT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %31) #18
  %32 = load ptr, ptr %4, align 8, !tbaa.struct !541
  %33 = load ptr, ptr %0, align 8, !tbaa !314
  %34 = call noundef ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES2_ET0_T_S8_S7_(ptr %1, ptr %32, ptr noundef %33) #18
  %35 = call noundef i64 @_ZNKSt6vectorIfSaIfEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %36 = load ptr, ptr %4, align 8, !tbaa.struct !541
  %37 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !318
  %39 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %40 = call noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES2_fET0_T_S8_S7_RSaIT1_E(ptr %36, ptr %2, ptr noundef %38, ptr noundef nonnull align 1 dereferenceable(1) %39) #18
  store ptr %40, ptr %37, align 8, !tbaa !318
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  br label %41

41:                                               ; preds = %27, %30, %8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorIfSaIfEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPfS1_EEEES5_mT_S7_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr %2, ptr %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !310 {
  %5 = tail call noundef ptr @_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #18
  %6 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %7 = invoke noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES2_fET0_T_S8_S7_RSaIT1_E(ptr %2, ptr %3, ptr noundef %5, ptr noundef nonnull align 1 dereferenceable(1) %6) #18
          to label %8 unwind label %9

8:                                                ; preds = %4
  ret ptr %5

9:                                                ; preds = %4
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = extractvalue { ptr, i32 } %10, 0
  %12 = tail call ptr @__cxa_begin_catch(ptr %11) #20
  invoke void @_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %5, i64 noundef %1) #18
          to label %13 unwind label %14

13:                                               ; preds = %9
  invoke void @__cxa_rethrow() #25
          to label %20 unwind label %14

14:                                               ; preds = %13, %9
  %15 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %16 unwind label %17

16:                                               ; preds = %14
  resume { ptr, i32 } %15

17:                                               ; preds = %14
  %18 = landingpad { ptr, i32 }
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  tail call void @__clang_call_terminate(ptr %19) #21
  unreachable

20:                                               ; preds = %13
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt7advanceIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEmEvRT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #2 comdat !prof !310 {
  tail call void @_ZSt19__iterator_categoryIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEENSt15iterator_traitsIT_E17iterator_categoryERKS8_(ptr noundef nonnull align 8 dereferenceable(8) %0) #18
  tail call void @_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElEvRT_T0_St26random_access_iterator_tag(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElEvRT_T0_St26random_access_iterator_tag(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #1 comdat !prof !310 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEpLEl(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEpLEl(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !310 {
  %3 = load ptr, ptr %0, align 8, !tbaa !335
  %4 = getelementptr inbounds float, ptr %3, i64 %1
  store ptr %4, ptr %0, align 8, !tbaa !335
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEEC2IN9__gnu_cxx17__normal_iteratorIPfS_IfSaIfEEEEvEET_S9_RKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %1, ptr %5, align 8
  tail call void @_ZNSt12_Vector_baseIdSaIdEEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %3) #19
  call void @_ZSt19__iterator_categoryIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEENSt15iterator_traitsIT_E17iterator_categoryERKS8_(ptr noundef nonnull align 8 dereferenceable(8) %5) #18
  invoke void @_ZNSt6vectorIdSaIdEE19_M_range_initializeIN9__gnu_cxx17__normal_iteratorIPfS_IfSaIfEEEEEEvT_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) #18
          to label %6 unwind label %7

6:                                                ; preds = %4
  ret void

7:                                                ; preds = %4
  %8 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12_Vector_baseIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIfSaIfEE6assignIN9__gnu_cxx17__normal_iteratorIPdS_IdSaIdEEEEvEEvT_S9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat align 2 {
  tail call void @_ZNSt6vectorIfSaIfEE18_M_assign_dispatchIN9__gnu_cxx17__normal_iteratorIPdS_IdSaIdEEEEEEvT_S9_St12__false_type(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEE19_M_range_initializeIN9__gnu_cxx17__normal_iteratorIPfS_IfSaIfEEEEEEvT_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat align 2 !prof !310 {
  %4 = tail call noundef i64 @_ZSt8distanceIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEENSt15iterator_traitsIT_E15difference_typeES8_S8_(ptr %1, ptr %2) #18
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %6 = tail call noundef i64 @_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_(i64 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #18
  %7 = tail call noundef ptr @_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %6) #18
  store ptr %7, ptr %0, align 8, !tbaa !346
  %8 = getelementptr inbounds double, ptr %7, i64 %4
  %9 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %8, ptr %9, align 8, !tbaa !395
  %10 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %11 = tail call noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEPddET0_T_S9_S8_RSaIT1_E(ptr %1, ptr %2, ptr noundef %7, ptr noundef nonnull align 1 dereferenceable(1) %10) #18
  %12 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %11, ptr %12, align 8, !tbaa !348
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEPddET0_T_S9_S8_RSaIT1_E(ptr %0, ptr %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #2 comdat !prof !310 {
  %5 = tail call noundef ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEPdET0_T_S9_S8_(ptr %0, ptr %1, ptr noundef %2) #18
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEPdET0_T_S9_S8_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #2 comdat {
  %4 = tail call noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEPdEET0_T_SB_SA_(ptr %0, ptr %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEPdEET0_T_SB_SA_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 !prof !310 {
  %4 = tail call noundef ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEPdET0_T_S9_S8_(ptr %0, ptr %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEPdET0_T_S9_S8_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #2 comdat !prof !310 {
  %4 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEET_S7_(ptr %0) #18
  %5 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEET_S7_(ptr %1) #18
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEPdET1_T0_S9_S8_(ptr %4, ptr %5, ptr noundef %2) #18
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEPdET1_T0_S9_S8_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #2 comdat !prof !310 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !334
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPfSt6vectorIfSaIfEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE(ptr %0) #19
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPfSt6vectorIfSaIfEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE(ptr %1) #19
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPdET_S1_(ptr noundef %2) #19
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPfPdET1_T0_S3_S2_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #18
  %9 = call noundef ptr @_ZSt12__niter_wrapIPdET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #18
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPfPdET1_T0_S3_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat !prof !310 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPfPdET1_T0_S3_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPfPdET1_T0_S3_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat !prof !310 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPfPdEET0_T_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPfPdEET0_T_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !310 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = ashr exact i64 %6, 2
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %11, %3
  %10 = phi ptr [ %2, %3 ], [ %18, %11 ]
  ret ptr %10

11:                                               ; preds = %3, %11
  %12 = phi i64 [ %19, %11 ], [ %7, %3 ]
  %13 = phi ptr [ %18, %11 ], [ %2, %3 ]
  %14 = phi ptr [ %17, %11 ], [ %0, %3 ]
  %15 = load float, ptr %14, align 4, !tbaa !319
  %16 = fpext float %15 to double
  store double %16, ptr %13, align 8, !tbaa !352
  %17 = getelementptr inbounds float, ptr %14, i64 1
  %18 = getelementptr inbounds double, ptr %13, i64 1
  %19 = add nsw i64 %12, -1
  %20 = icmp ugt i64 %12, 1
  br i1 %20, label %11, label %9, !llvm.loop !576
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIfSaIfEE18_M_assign_dispatchIN9__gnu_cxx17__normal_iteratorIPdS_IdSaIdEEEEEEvT_S9_St12__false_type(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat align 2 !prof !310 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.26", align 8
  store ptr %1, ptr %4, align 8
  call void @_ZSt19__iterator_categoryIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEENSt15iterator_traitsIT_E17iterator_categoryERKS8_(ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  call void @_ZNSt6vectorIfSaIfEE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPdS_IdSaIdEEEEEEvT_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIfSaIfEE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPdS_IdSaIdEEEEEEvT_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat align 2 !prof !310 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.26", align 8
  %5 = tail call noundef i64 @_ZSt8distanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEENSt15iterator_traitsIT_E15difference_typeES8_S8_(ptr %1, ptr %2) #18
  %6 = tail call noundef i64 @_ZNKSt6vectorIfSaIfEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %7 = icmp ugt i64 %5, %6
  br i1 %7, label %8, label %24

8:                                                ; preds = %3
  %9 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %10 = tail call noundef i64 @_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_(i64 noundef %5, ptr noundef nonnull align 1 dereferenceable(1) %9) #18
  %11 = tail call noundef ptr @_ZNSt6vectorIfSaIfEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPdS_IdSaIdEEEEEEPfmT_SA_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %5, ptr %1, ptr %2) #18
  %12 = load ptr, ptr %0, align 8, !tbaa !314
  %13 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !318
  %15 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  tail call void @_ZSt8_DestroyIPffEvT_S1_RSaIT0_E(ptr noundef %12, ptr noundef %14, ptr noundef nonnull align 1 dereferenceable(1) %15) #18
  %16 = load ptr, ptr %0, align 8, !tbaa !314
  %17 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !339
  %19 = ptrtoint ptr %18 to i64
  %20 = ptrtoint ptr %16 to i64
  %21 = sub i64 %19, %20
  %22 = ashr exact i64 %21, 2
  tail call void @_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %16, i64 noundef %22) #18
  store ptr %11, ptr %0, align 8, !tbaa !314
  %23 = getelementptr inbounds float, ptr %11, i64 %5
  store ptr %23, ptr %13, align 8, !tbaa !318
  store ptr %23, ptr %17, align 8, !tbaa !339
  br label %41

24:                                               ; preds = %3
  %25 = tail call noundef i64 @_ZNKSt6vectorIfSaIfEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %26 = icmp ult i64 %25, %5
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr %0, align 8, !tbaa !314
  %29 = tail call noundef ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEPfET0_T_S9_S8_(ptr %1, ptr %2, ptr noundef %28) #18
  tail call void @_ZNSt6vectorIfSaIfEE15_M_erase_at_endEPf(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %29) #19
  br label %41

30:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  store ptr %1, ptr %4, align 8, !tbaa.struct !541
  %31 = tail call noundef i64 @_ZNKSt6vectorIfSaIfEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  call void @_ZSt7advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEmEvRT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %31) #18
  %32 = load ptr, ptr %4, align 8, !tbaa.struct !541
  %33 = load ptr, ptr %0, align 8, !tbaa !314
  %34 = call noundef ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEPfET0_T_S9_S8_(ptr %1, ptr %32, ptr noundef %33) #18
  %35 = call noundef i64 @_ZNKSt6vectorIfSaIfEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %36 = load ptr, ptr %4, align 8, !tbaa.struct !541
  %37 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !318
  %39 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %40 = call noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEPffET0_T_S9_S8_RSaIT1_E(ptr %36, ptr %2, ptr noundef %38, ptr noundef nonnull align 1 dereferenceable(1) %39) #18
  store ptr %40, ptr %37, align 8, !tbaa !318
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  br label %41

41:                                               ; preds = %27, %30, %8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorIfSaIfEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPdS_IdSaIdEEEEEEPfmT_SA_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr %2, ptr %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !310 {
  %5 = tail call noundef ptr @_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #18
  %6 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %7 = invoke noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEPffET0_T_S9_S8_RSaIT1_E(ptr %2, ptr %3, ptr noundef %5, ptr noundef nonnull align 1 dereferenceable(1) %6) #18
          to label %8 unwind label %9

8:                                                ; preds = %4
  ret ptr %5

9:                                                ; preds = %4
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = extractvalue { ptr, i32 } %10, 0
  %12 = tail call ptr @__cxa_begin_catch(ptr %11) #20
  invoke void @_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %5, i64 noundef %1) #18
          to label %13 unwind label %14

13:                                               ; preds = %9
  invoke void @__cxa_rethrow() #25
          to label %20 unwind label %14

14:                                               ; preds = %13, %9
  %15 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %16 unwind label %17

16:                                               ; preds = %14
  resume { ptr, i32 } %15

17:                                               ; preds = %14
  %18 = landingpad { ptr, i32 }
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  tail call void @__clang_call_terminate(ptr %19) #21
  unreachable

20:                                               ; preds = %13
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEPfET0_T_S9_S8_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #2 comdat !prof !310 {
  %4 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET_S7_(ptr %0) #18
  %5 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET_S7_(ptr %1) #18
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEPfET1_T0_S9_S8_(ptr %4, ptr %5, ptr noundef %2) #18
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEPffET0_T_S9_S8_RSaIT1_E(ptr %0, ptr %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #2 comdat !prof !310 {
  %5 = tail call noundef ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEPfET0_T_S9_S8_(ptr %0, ptr %1, ptr noundef %2) #18
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEPfET1_T0_S9_S8_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #2 comdat !prof !310 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !334
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE(ptr %0) #19
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE(ptr %1) #19
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPfET_S1_(ptr noundef %2) #19
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPdPfET1_T0_S3_S2_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #18
  %9 = call noundef ptr @_ZSt12__niter_wrapIPfET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #18
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPdPfET1_T0_S3_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat !prof !310 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPdPfET1_T0_S3_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPdPfET1_T0_S3_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat !prof !310 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPdPfEET0_T_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPdPfEET0_T_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !310 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = ashr exact i64 %6, 3
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %11, %3
  %10 = phi ptr [ %2, %3 ], [ %18, %11 ]
  ret ptr %10

11:                                               ; preds = %3, %11
  %12 = phi i64 [ %19, %11 ], [ %7, %3 ]
  %13 = phi ptr [ %18, %11 ], [ %2, %3 ]
  %14 = phi ptr [ %17, %11 ], [ %0, %3 ]
  %15 = load double, ptr %14, align 8, !tbaa !352
  %16 = fptrunc double %15 to float
  store float %16, ptr %13, align 4, !tbaa !319
  %17 = getelementptr inbounds double, ptr %14, i64 1
  %18 = getelementptr inbounds float, ptr %13, i64 1
  %19 = add nsw i64 %12, -1
  %20 = icmp ugt i64 %12, 1
  br i1 %20, label %11, label %9, !llvm.loop !577
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEPfET0_T_S9_S8_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #2 comdat {
  %4 = tail call noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEPfEET0_T_SB_SA_(ptr %0, ptr %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEPfEET0_T_SB_SA_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 !prof !310 {
  %4 = tail call noundef ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEPfET0_T_S9_S8_(ptr %0, ptr %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIfSaIfEEC2IN9__gnu_cxx17__normal_iteratorIPdS_IdSaIdEEEEvEET_S9_RKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.26", align 8
  store ptr %1, ptr %5, align 8
  tail call void @_ZNSt12_Vector_baseIfSaIfEEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %3) #19
  call void @_ZSt19__iterator_categoryIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEENSt15iterator_traitsIT_E17iterator_categoryERKS8_(ptr noundef nonnull align 8 dereferenceable(8) %5) #18
  invoke void @_ZNSt6vectorIfSaIfEE19_M_range_initializeIN9__gnu_cxx17__normal_iteratorIPdS_IdSaIdEEEEEEvT_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) #18
          to label %6 unwind label %7

6:                                                ; preds = %4
  ret void

7:                                                ; preds = %4
  %8 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12_Vector_baseIfSaIfEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEE6assignIN9__gnu_cxx17__normal_iteratorIPfS_IfSaIfEEEEvEEvT_S9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat align 2 {
  tail call void @_ZNSt6vectorIdSaIdEE18_M_assign_dispatchIN9__gnu_cxx17__normal_iteratorIPfS_IfSaIfEEEEEEvT_S9_St12__false_type(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIfSaIfEE19_M_range_initializeIN9__gnu_cxx17__normal_iteratorIPdS_IdSaIdEEEEEEvT_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat align 2 !prof !310 {
  %4 = tail call noundef i64 @_ZSt8distanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEENSt15iterator_traitsIT_E15difference_typeES8_S8_(ptr %1, ptr %2) #18
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %6 = tail call noundef i64 @_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_(i64 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #18
  %7 = tail call noundef ptr @_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %6) #18
  store ptr %7, ptr %0, align 8, !tbaa !314
  %8 = getelementptr inbounds float, ptr %7, i64 %4
  %9 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %8, ptr %9, align 8, !tbaa !339
  %10 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %11 = tail call noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEPffET0_T_S9_S8_RSaIT1_E(ptr %1, ptr %2, ptr noundef %7, ptr noundef nonnull align 1 dereferenceable(1) %10) #18
  %12 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %11, ptr %12, align 8, !tbaa !318
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEE18_M_assign_dispatchIN9__gnu_cxx17__normal_iteratorIPfS_IfSaIfEEEEEEvT_S9_St12__false_type(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat align 2 !prof !310 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %1, ptr %4, align 8
  call void @_ZSt19__iterator_categoryIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEENSt15iterator_traitsIT_E17iterator_categoryERKS8_(ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  call void @_ZNSt6vectorIdSaIdEE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPfS_IfSaIfEEEEEEvT_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPfS_IfSaIfEEEEEEvT_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat align 2 !prof !310 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = tail call noundef i64 @_ZSt8distanceIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEENSt15iterator_traitsIT_E15difference_typeES8_S8_(ptr %1, ptr %2) #18
  %6 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %7 = icmp ugt i64 %5, %6
  br i1 %7, label %8, label %24

8:                                                ; preds = %3
  %9 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %10 = tail call noundef i64 @_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_(i64 noundef %5, ptr noundef nonnull align 1 dereferenceable(1) %9) #18
  %11 = tail call noundef ptr @_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPfS_IfSaIfEEEEEEPdmT_SA_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %5, ptr %1, ptr %2) #18
  %12 = load ptr, ptr %0, align 8, !tbaa !346
  %13 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !348
  %15 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  tail call void @_ZSt8_DestroyIPddEvT_S1_RSaIT0_E(ptr noundef %12, ptr noundef %14, ptr noundef nonnull align 1 dereferenceable(1) %15) #18
  %16 = load ptr, ptr %0, align 8, !tbaa !346
  %17 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !395
  %19 = ptrtoint ptr %18 to i64
  %20 = ptrtoint ptr %16 to i64
  %21 = sub i64 %19, %20
  %22 = ashr exact i64 %21, 3
  tail call void @_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %16, i64 noundef %22) #18
  store ptr %11, ptr %0, align 8, !tbaa !346
  %23 = getelementptr inbounds double, ptr %11, i64 %5
  store ptr %23, ptr %13, align 8, !tbaa !348
  store ptr %23, ptr %17, align 8, !tbaa !395
  br label %41

24:                                               ; preds = %3
  %25 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %26 = icmp ult i64 %25, %5
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr %0, align 8, !tbaa !346
  %29 = tail call noundef ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEPdET0_T_S9_S8_(ptr %1, ptr %2, ptr noundef %28) #18
  tail call void @_ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %29) #19
  br label %41

30:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  store ptr %1, ptr %4, align 8, !tbaa.struct !541
  %31 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  call void @_ZSt7advanceIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEmEvRT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %31) #18
  %32 = load ptr, ptr %4, align 8, !tbaa.struct !541
  %33 = load ptr, ptr %0, align 8, !tbaa !346
  %34 = call noundef ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEPdET0_T_S9_S8_(ptr %1, ptr %32, ptr noundef %33) #18
  %35 = call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %36 = load ptr, ptr %4, align 8, !tbaa.struct !541
  %37 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !348
  %39 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %40 = call noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEPddET0_T_S9_S8_RSaIT1_E(ptr %36, ptr %2, ptr noundef %38, ptr noundef nonnull align 1 dereferenceable(1) %39) #18
  store ptr %40, ptr %37, align 8, !tbaa !348
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  br label %41

41:                                               ; preds = %27, %30, %8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPfS_IfSaIfEEEEEEPdmT_SA_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr %2, ptr %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !310 {
  %5 = tail call noundef ptr @_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #18
  %6 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %7 = invoke noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEPddET0_T_S9_S8_RSaIT1_E(ptr %2, ptr %3, ptr noundef %5, ptr noundef nonnull align 1 dereferenceable(1) %6) #18
          to label %8 unwind label %9

8:                                                ; preds = %4
  ret ptr %5

9:                                                ; preds = %4
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = extractvalue { ptr, i32 } %10, 0
  %12 = tail call ptr @__cxa_begin_catch(ptr %11) #20
  invoke void @_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %5, i64 noundef %1) #18
          to label %13 unwind label %14

13:                                               ; preds = %9
  invoke void @__cxa_rethrow() #25
          to label %20 unwind label %14

14:                                               ; preds = %13, %9
  %15 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %16 unwind label %17

16:                                               ; preds = %14
  resume { ptr, i32 } %15

17:                                               ; preds = %14
  %18 = landingpad { ptr, i32 }
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  tail call void @__clang_call_terminate(ptr %19) #21
  unreachable

20:                                               ; preds = %13
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN6dealii11Polynomials10PolynomialIfEES3_EvT_S5_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #2 comdat !prof !310 {
  tail call void @_ZSt8_DestroyIPN6dealii11Polynomials10PolynomialIfEEEvT_S5_(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIfEESaIS3_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !310 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIfEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !310 {
  %2 = load ptr, ptr %0, align 8, !tbaa !411
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<float>, std::allocator<dealii::Polynomials::Polynomial<float>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !414
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 96
  invoke void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIfEESaIS3_EE13_M_deallocateEPS3_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #18
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIfEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #21
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN6dealii11Polynomials10PolynomialIfEEEvT_S5_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat !prof !310 {
  tail call void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN6dealii11Polynomials10PolynomialIfEEEEvT_S7_(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN6dealii11Polynomials10PolynomialIfEEEEvT_S7_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !310 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZSt8_DestroyIN6dealii11Polynomials10PolynomialIfEEEvPT_(ptr noundef %5) #18
  %6 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !llvm.loop !578

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIN6dealii11Polynomials10PolynomialIfEEEvPT_(ptr noundef %0) local_unnamed_addr #1 comdat !prof !310 {
  %2 = load ptr, ptr %0, align 8, !tbaa !311
  %3 = load ptr, ptr %2, align 8
  tail call void %3(ptr noundef nonnull align 8 dereferenceable(96) %0) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIfEESaIS3_EE13_M_deallocateEPS3_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 !prof !310 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIN6dealii11Polynomials10PolynomialIfEEEE10deallocateERS4_PS3_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #18
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIfEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !310 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN6dealii11Polynomials10PolynomialIfEEEE10deallocateERS4_PS3_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIfEEE10deallocateEPS3_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIfEEE10deallocateEPS3_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIfEESaIS3_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !310 {
  %2 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIN6dealii11Polynomials10PolynomialIfEESaIS3_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %3 = tail call noundef i64 @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIfEESaIS3_EE11_S_max_sizeERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %2) #19
  ret i64 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIfEESaIS3_EE8capacityEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !310 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<float>, std::allocator<dealii::Polynomials::Polynomial<float>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !414
  %4 = load ptr, ptr %0, align 8, !tbaa !411
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 96
  ret i64 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIfEESaIS3_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !310 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<float>, std::allocator<dealii::Polynomials::Polynomial<float>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !413
  %4 = load ptr, ptr %0, align 8, !tbaa !411
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 96
  ret i64 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIfEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
  %5 = tail call noundef ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIfEESaIS3_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #18
  %6 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIfEESaIS3_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %7 = invoke noundef ptr @_ZSt22__uninitialized_copy_aIPKN6dealii11Polynomials10PolynomialIfEEPS3_S3_ET0_T_S8_S7_RSaIT1_E(ptr noundef %2, ptr noundef %3, ptr noundef %5, ptr noundef nonnull align 1 dereferenceable(1) %6) #18
          to label %8 unwind label %9

8:                                                ; preds = %4
  ret ptr %5

9:                                                ; preds = %4
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = extractvalue { ptr, i32 } %10, 0
  %12 = tail call ptr @__cxa_begin_catch(ptr %11) #20
  invoke void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIfEESaIS3_EE13_M_deallocateEPS3_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %5, i64 noundef %1) #18
          to label %13 unwind label %14

13:                                               ; preds = %9
  invoke void @__cxa_rethrow() #25
          to label %20 unwind label %14

14:                                               ; preds = %13, %9
  %15 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %16 unwind label %17

16:                                               ; preds = %14
  resume { ptr, i32 } %15

17:                                               ; preds = %14
  %18 = landingpad { ptr, i32 }
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  tail call void @__clang_call_terminate(ptr %19) #21
  unreachable

20:                                               ; preds = %13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt32__make_move_if_noexcept_iteratorIN6dealii11Polynomials10PolynomialIfEEPKS3_ET0_PT_(ptr noundef %0) local_unnamed_addr #1 comdat {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIfEESaIS3_EE11_S_max_sizeERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 !prof !310 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  store i64 96076792050570581, ptr %2, align 8, !tbaa !467
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  %4 = tail call noundef i64 @_ZNSt16allocator_traitsISaIN6dealii11Polynomials10PolynomialIfEEEE8max_sizeERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %0) #19
  store i64 %4, ptr %3, align 8, !tbaa !467
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  %6 = load i64, ptr %5, align 8, !tbaa !467
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIN6dealii11Polynomials10PolynomialIfEESaIS3_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !310 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaIN6dealii11Polynomials10PolynomialIfEEEE8max_sizeERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii11Polynomials10PolynomialIfEEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #19
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN6dealii11Polynomials10PolynomialIfEEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 !prof !310 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii11Polynomials10PolynomialIfEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #19
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN6dealii11Polynomials10PolynomialIfEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 !prof !310 {
  ret i64 96076792050570581
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIfEESaIS3_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !310 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaIN6dealii11Polynomials10PolynomialIfEEEE8allocateERS4_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #18
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_copy_aIPKN6dealii11Polynomials10PolynomialIfEEPS3_S3_ET0_T_S8_S7_RSaIT1_E(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #2 comdat {
  %5 = tail call noundef ptr @_ZSt18uninitialized_copyIPKN6dealii11Polynomials10PolynomialIfEEPS3_ET0_T_S8_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIN6dealii11Polynomials10PolynomialIfEEEE8allocateERS4_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIfEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #18
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIfEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii11Polynomials10PolynomialIfEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #19
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !474

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 192153584101141162
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #22
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #22
  unreachable

10:                                               ; preds = %3
  %11 = mul i64 %1, 96
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #23
  ret ptr %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt18uninitialized_copyIPKN6dealii11Polynomials10PolynomialIfEEPS3_ET0_T_S8_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat {
  %4 = tail call noundef ptr @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPKN6dealii11Polynomials10PolynomialIfEEPS5_EET0_T_SA_S9_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPKN6dealii11Polynomials10PolynomialIfEEPS5_EET0_T_SA_S9_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 {
  %4 = tail call noundef ptr @_ZSt16__do_uninit_copyIPKN6dealii11Polynomials10PolynomialIfEEPS3_ET0_T_S8_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIPKN6dealii11Polynomials10PolynomialIfEEPS3_ET0_T_S8_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %17, label %5

5:                                                ; preds = %3, %8
  %6 = phi ptr [ %10, %8 ], [ %2, %3 ]
  %7 = phi ptr [ %9, %8 ], [ %0, %3 ]
  invoke void @_ZSt10_ConstructIN6dealii11Polynomials10PolynomialIfEEJRKS3_EEvPT_DpOT0_(ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(96) %7) #18
          to label %8 unwind label %12

8:                                                ; preds = %5
  %9 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %7, i64 1
  %10 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %6, i64 1
  %11 = icmp eq ptr %9, %1
  br i1 %11, label %17, label %5, !llvm.loop !579

12:                                               ; preds = %5
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  %15 = tail call ptr @__cxa_begin_catch(ptr %14) #20
  invoke void @_ZSt8_DestroyIPN6dealii11Polynomials10PolynomialIfEEEvT_S5_(ptr noundef %2, ptr noundef %6) #18
          to label %16 unwind label %19

16:                                               ; preds = %12
  invoke void @__cxa_rethrow() #25
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
  tail call void @__clang_call_terminate(ptr %24) #21
  unreachable

25:                                               ; preds = %16
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructIN6dealii11Polynomials10PolynomialIfEEJRKS3_EEvPT_DpOT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #2 comdat {
  tail call void @_ZN6dealii11Polynomials10PolynomialIfEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii11Polynomials10PolynomialIfEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
  tail call void @_ZN6dealii11SubscriptorC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) #18
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii11Polynomials10PolynomialIfEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !311
  %3 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %1, i64 0, i32 1
  invoke void @_ZNSt6vectorIfSaIfEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #18
          to label %5 unwind label %6

5:                                                ; preds = %2
  ret void

6:                                                ; preds = %2
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #19
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(96) ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIfEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #2 comdat align 2 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<float>, std::allocator<dealii::Polynomials::Polynomial<float>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !413
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<float>, std::allocator<dealii::Polynomials::Polynomial<float>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !414
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  tail call void @_ZNSt16allocator_traitsISaIN6dealii11Polynomials10PolynomialIfEEEE9constructIS3_JS3_EEEvRS4_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(96) %1) #18
  %9 = load ptr, ptr %3, align 8, !tbaa !413
  %10 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %9, i64 1
  store ptr %10, ptr %3, align 8, !tbaa !413
  br label %13

11:                                               ; preds = %2
  %12 = tail call ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIfEESaIS3_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  tail call void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIfEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %12, ptr noundef nonnull align 8 dereferenceable(96) %1) #18
  br label %13

13:                                               ; preds = %11, %8
  %14 = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIfEESaIS3_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  ret ptr %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN6dealii11Polynomials10PolynomialIfEEEE9constructIS3_JS3_EEEvRS4_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(96) %2) local_unnamed_addr #2 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIfEEE9constructIS3_JS3_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(96) %2) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIfEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(96) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.53", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.53", align 8
  store ptr %1, ptr %4, align 8
  %6 = tail call noundef i64 @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIfEESaIS3_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1, ptr noundef nonnull @.str.13) #18
  %7 = load ptr, ptr %0, align 8, !tbaa !411
  %8 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<float>, std::allocator<dealii::Polynomials::Polynomial<float>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !413
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  %10 = tail call ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIfEESaIS3_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  store ptr %10, ptr %5, align 8
  %11 = call noundef i64 @_ZN9__gnu_cxxmiIPN6dealii11Polynomials10PolynomialIfEESt6vectorIS4_SaIS4_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSC_SF_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  %12 = call noundef ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIfEESaIS3_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %6) #18
  %13 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %12, i64 %11
  invoke void @_ZNSt16allocator_traitsISaIN6dealii11Polynomials10PolynomialIfEEEE9constructIS3_JS3_EEEvRS4_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %13, ptr noundef nonnull align 8 dereferenceable(96) %2) #18
          to label %14 unwind label %42

14:                                               ; preds = %3
  %15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6dealii11Polynomials10PolynomialIfEESt6vectorIS4_SaIS4_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  %16 = load ptr, ptr %15, align 8, !tbaa !334
  %17 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIfEESaIS3_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %18 = invoke noundef ptr @_ZSt34__uninitialized_move_if_noexcept_aIPN6dealii11Polynomials10PolynomialIfEES4_SaIS3_EET0_T_S7_S6_RT1_(ptr noundef %7, ptr noundef %16, ptr noundef %12, ptr noundef nonnull align 1 dereferenceable(1) %17) #18
          to label %23 unwind label %19

19:                                               ; preds = %14
  %20 = landingpad { ptr, i32 }
          catch ptr null
  %21 = extractvalue { ptr, i32 } %20, 0
  %22 = call ptr @__cxa_begin_catch(ptr %21) #20
  br label %47

23:                                               ; preds = %14
  %24 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %18, i64 1
  %25 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6dealii11Polynomials10PolynomialIfEESt6vectorIS4_SaIS4_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  %26 = load ptr, ptr %25, align 8, !tbaa !334
  %27 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIfEESaIS3_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %28 = invoke noundef ptr @_ZSt34__uninitialized_move_if_noexcept_aIPN6dealii11Polynomials10PolynomialIfEES4_SaIS3_EET0_T_S7_S6_RT1_(ptr noundef %26, ptr noundef %9, ptr noundef nonnull %24, ptr noundef nonnull align 1 dereferenceable(1) %27) #18
          to label %33 unwind label %29

29:                                               ; preds = %23
  %30 = landingpad { ptr, i32 }
          catch ptr null
  %31 = extractvalue { ptr, i32 } %30, 0
  %32 = call ptr @__cxa_begin_catch(ptr %31) #20
  br label %48

33:                                               ; preds = %23
  %34 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIfEESaIS3_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  call void @_ZSt8_DestroyIPN6dealii11Polynomials10PolynomialIfEES3_EvT_S5_RSaIT0_E(ptr noundef %7, ptr noundef %9, ptr noundef nonnull align 1 dereferenceable(1) %34) #18
  %35 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<float>, std::allocator<dealii::Polynomials::Polynomial<float>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !414
  %37 = ptrtoint ptr %36 to i64
  %38 = ptrtoint ptr %7 to i64
  %39 = sub i64 %37, %38
  %40 = sdiv exact i64 %39, 96
  call void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIfEESaIS3_EE13_M_deallocateEPS3_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %7, i64 noundef %40) #18
  store ptr %12, ptr %0, align 8, !tbaa !411
  store ptr %28, ptr %8, align 8, !tbaa !413
  %41 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %12, i64 %6
  store ptr %41, ptr %35, align 8, !tbaa !414
  ret void

42:                                               ; preds = %3
  %43 = landingpad { ptr, i32 }
          catch ptr null
  %44 = extractvalue { ptr, i32 } %43, 0
  %45 = call ptr @__cxa_begin_catch(ptr %44) #20
  %46 = icmp eq ptr %12, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %19, %42
  call void @_ZNSt16allocator_traitsISaIN6dealii11Polynomials10PolynomialIfEEEE7destroyIS3_EEvRS4_PT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %13) #19
  br label %53

48:                                               ; preds = %29, %42
  %49 = phi ptr [ %24, %29 ], [ %12, %42 ]
  %50 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIfEESaIS3_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  invoke void @_ZSt8_DestroyIPN6dealii11Polynomials10PolynomialIfEES3_EvT_S5_RSaIT0_E(ptr noundef %12, ptr noundef nonnull %49, ptr noundef nonnull align 1 dereferenceable(1) %50) #18
          to label %53 unwind label %51

51:                                               ; preds = %54, %53, %48
  %52 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %55 unwind label %56

53:                                               ; preds = %48, %47
  invoke void @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIfEESaIS3_EE13_M_deallocateEPS3_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %12, i64 noundef %6) #18
          to label %54 unwind label %51

54:                                               ; preds = %53
  invoke void @__cxa_rethrow() #25
          to label %59 unwind label %51

55:                                               ; preds = %51
  resume { ptr, i32 } %52

56:                                               ; preds = %51
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #21
  unreachable

59:                                               ; preds = %54
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIfEESaIS3_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !310 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.53", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<float>, std::allocator<dealii::Polynomials::Polynomial<float>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPN6dealii11Polynomials10PolynomialIfEESt6vectorIS4_SaIS4_EEEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #19
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(96) ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIfEESaIS3_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.53", align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.53", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  %4 = tail call ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIfEESaIS3_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  store ptr %4, ptr %3, align 8
  %5 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6dealii11Polynomials10PolynomialIfEESt6vectorIS4_SaIS4_EEEmiEl(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 1) #19
  store ptr %5, ptr %2, align 8
  %6 = call noundef nonnull align 8 dereferenceable(96) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6dealii11Polynomials10PolynomialIfEESt6vectorIS4_SaIS4_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIfEEE9constructIS3_JS3_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(96) %2) local_unnamed_addr #2 comdat align 2 {
  tail call void @_ZN6dealii11Polynomials10PolynomialIfEC2EOS2_(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(96) %2) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIfEESaIS3_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 !prof !310 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %1, ptr %4, align 8, !tbaa !467
  %6 = tail call noundef i64 @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIfEESaIS3_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %7 = tail call noundef i64 @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIfEESaIS3_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %8 = sub i64 %6, %7
  %9 = icmp ult i64 %8, %1
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef %2) #22
  unreachable

11:                                               ; preds = %3
  %12 = tail call noundef i64 @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIfEESaIS3_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  %13 = tail call noundef i64 @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIfEESaIS3_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  store i64 %13, ptr %5, align 8, !tbaa !467
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  %15 = load i64, ptr %14, align 8, !tbaa !467
  %16 = add i64 %15, %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  %17 = call noundef i64 @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIfEESaIS3_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %22, label %19

19:                                               ; preds = %11
  %20 = call noundef i64 @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIfEESaIS3_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %21 = icmp ugt i64 %16, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %19, %11
  %23 = call noundef i64 @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIfEESaIS3_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  br label %24

24:                                               ; preds = %19, %22
  %25 = phi i64 [ %23, %22 ], [ %16, %19 ]
  ret i64 %25
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN9__gnu_cxxmiIPN6dealii11Polynomials10PolynomialIfEESt6vectorIS4_SaIS4_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSC_SF_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat !prof !310 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6dealii11Polynomials10PolynomialIfEESt6vectorIS4_SaIS4_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #19
  %4 = load ptr, ptr %3, align 8, !tbaa !334
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6dealii11Polynomials10PolynomialIfEESt6vectorIS4_SaIS4_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #19
  %6 = load ptr, ptr %5, align 8, !tbaa !334
  %7 = ptrtoint ptr %4 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = sdiv exact i64 %9, 96
  ret i64 %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIfEESaIS3_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !310 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.53", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPN6dealii11Polynomials10PolynomialIfEESt6vectorIS4_SaIS4_EEEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #19
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt34__uninitialized_move_if_noexcept_aIPN6dealii11Polynomials10PolynomialIfEES4_SaIS3_EET0_T_S7_S6_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #2 comdat !prof !310 {
  %5 = tail call noundef ptr @_ZSt32__make_move_if_noexcept_iteratorIN6dealii11Polynomials10PolynomialIfEEPKS3_ET0_PT_(ptr noundef %0) #18
  %6 = tail call noundef ptr @_ZSt32__make_move_if_noexcept_iteratorIN6dealii11Polynomials10PolynomialIfEEPKS3_ET0_PT_(ptr noundef %1) #18
  %7 = tail call noundef ptr @_ZSt22__uninitialized_copy_aIPKN6dealii11Polynomials10PolynomialIfEEPS3_S3_ET0_T_S8_S7_RSaIT1_E(ptr noundef %5, ptr noundef %6, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #18
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6dealii11Polynomials10PolynomialIfEESt6vectorIS4_SaIS4_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !310 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN6dealii11Polynomials10PolynomialIfEEEE7destroyIS3_EEvRS4_PT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIfEEE7destroyIS3_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPN6dealii11Polynomials10PolynomialIfEESt6vectorIS4_SaIS4_EEEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 !prof !310 {
  %3 = load ptr, ptr %1, align 8, !tbaa !334
  store ptr %3, ptr %0, align 8, !tbaa !580
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIfEEE7destroyIS3_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
  %3 = load ptr, ptr %1, align 8, !tbaa !311
  %4 = load ptr, ptr %3, align 8
  tail call void %4(ptr noundef nonnull align 8 dereferenceable(96) %1) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6dealii11Polynomials10PolynomialIfEESt6vectorIS4_SaIS4_EEEmiEl(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.53", align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  %5 = load ptr, ptr %0, align 8, !tbaa !580
  %6 = sub i64 0, %1
  %7 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %5, i64 %6
  store ptr %7, ptr %4, align 8, !tbaa !334
  call void @_ZN9__gnu_cxx17__normal_iteratorIPN6dealii11Polynomials10PolynomialIfEESt6vectorIS4_SaIS4_EEEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  %8 = load ptr, ptr %3, align 8
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(96) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6dealii11Polynomials10PolynomialIfEESt6vectorIS4_SaIS4_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !580
  ret ptr %2
}

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_polynomial.cc() #7 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  tail call fastcc void @__cxx_global_var_init.1()
  tail call fastcc void @__cxx_global_var_init.2()
  tail call fastcc void @__cxx_global_var_init.3()
  tail call fastcc void @__cxx_global_var_init.4()
  tail call fastcc void @__cxx_global_var_init.5()
  tail call fastcc void @__cxx_global_var_init.6()
  tail call fastcc void @__cxx_global_var_init.7()
  tail call fastcc void @__cxx_global_var_init.8()
  tail call fastcc void @__cxx_global_var_init.9()
  tail call fastcc void @__cxx_global_var_init.10()
  tail call fastcc void @__cxx_global_var_init.11()
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #17

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #18 = { optsize }
attributes #19 = { nounwind optsize }
attributes #20 = { nounwind }
attributes #21 = { noreturn nounwind }
attributes #22 = { noreturn optsize }
attributes #23 = { builtin optsize allocsize(0) }
attributes #24 = { builtin nounwind optsize }
attributes #25 = { noreturn }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!308}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307}
!35 = !{ptr @_ZN6dealii11Polynomials10PolynomialIdEC2ERKSt6vectorIdSaIdEE, ptr @_ZN6dealii11SubscriptorC2Ev, i64 20}
!36 = !{ptr @_ZN6dealii11Polynomials10PolynomialIdEC2ERKSt6vectorIdSaIdEE, ptr @_ZNSt6vectorIdSaIdEEC2ERKS1_, i64 20}
!37 = !{ptr @_ZNSt6vectorIdSaIdEEC2ERKS1_, ptr @_ZNKSt6vectorIdSaIdEE4sizeEv, i64 1356729}
!38 = !{ptr @_ZNSt6vectorIdSaIdEEC2ERKS1_, ptr @_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv, i64 1356729}
!39 = !{ptr @_ZNSt6vectorIdSaIdEEC2ERKS1_, ptr @_ZN9__gnu_cxx14__alloc_traitsISaIdEdE17_S_select_on_copyERKS1_, i64 1356729}
!40 = !{ptr @_ZNSt6vectorIdSaIdEEC2ERKS1_, ptr @_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_, i64 1356729}
!41 = !{ptr @_ZNSt6vectorIdSaIdEEC2ERKS1_, ptr @_ZNSt15__new_allocatorIdED2Ev, i64 1356729}
!42 = !{ptr @_ZNSt6vectorIdSaIdEEC2ERKS1_, ptr @_ZNKSt6vectorIdSaIdEE5beginEv, i64 1356728}
!43 = !{ptr @_ZNSt6vectorIdSaIdEEC2ERKS1_, ptr @_ZNKSt6vectorIdSaIdEE3endEv, i64 1356728}
!44 = !{ptr @_ZNSt6vectorIdSaIdEEC2ERKS1_, ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv, i64 1356728}
!45 = !{ptr @_ZNSt6vectorIdSaIdEEC2ERKS1_, ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPddET0_T_SA_S9_RSaIT1_E, i64 1356728}
!46 = !{ptr @_ZNSt6vectorIdSaIdEEC2ERKS1_, ptr @_ZNSt12_Vector_baseIdSaIdEED2Ev, i64 1}
!47 = !{ptr @_ZN6dealii11Polynomials10PolynomialIdEC2Ev, ptr @_ZN6dealii11SubscriptorC2Ev, i64 3}
!48 = !{ptr @_ZN6dealii11Polynomials10PolynomialIdEC2Ev, ptr @_ZNSt6vectorIdSaIdEEC2Ev, i64 3}
!49 = !{ptr @_ZNSt6vectorIdSaIdEEC2Ev, ptr @_ZNSt12_Vector_baseIdSaIdEEC2Ev, i64 7884403}
!50 = !{ptr @_ZNK6dealii11Polynomials10PolynomialIdE5valueEd, ptr @_ZNKSt6vectorIdSaIdEE4sizeEv, i64 3993672}
!51 = !{ptr @_ZNK6dealii11Polynomials10PolynomialIdE5valueEd, ptr @_ZNKSt6vectorIdSaIdEE4backEv, i64 3993672}
!52 = !{ptr @_ZNK6dealii11Polynomials10PolynomialIdE5valueEd, ptr @_ZNKSt6vectorIdSaIdEEixEm, i64 3077652}
!53 = !{ptr @_ZNKSt6vectorIdSaIdEE4backEv, ptr @_ZNKSt6vectorIdSaIdEE3endEv, i64 3993672}
!54 = !{ptr @_ZNKSt6vectorIdSaIdEE4backEv, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEmiEl, i64 3993672}
!55 = !{ptr @_ZNKSt6vectorIdSaIdEE4backEv, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEdeEv, i64 3993672}
!56 = !{ptr @_ZNK6dealii11Polynomials10PolynomialIdE5valueEdRSt6vectorIdSaIdEE, ptr @_ZNKSt6vectorIdSaIdEE4sizeEv, i64 5570029}
!57 = !{ptr @_ZNK6dealii11Polynomials10PolynomialIdE5valueEdRSt6vectorIdSaIdEE, ptr @_ZNK6dealii11Polynomials10PolynomialIdE5valueEd, i64 3872291}
!58 = !{ptr @_ZNK6dealii11Polynomials10PolynomialIdE5valueEdRSt6vectorIdSaIdEE, ptr @_ZNSt6vectorIdSaIdEEixEm, i64 8118746}
!59 = !{ptr @_ZNK6dealii11Polynomials10PolynomialIdE5valueEdRSt6vectorIdSaIdEE, ptr @_ZNSt6vectorIdSaIdEEC2ERKS1_, i64 848869}
!60 = !{ptr @_ZNK6dealii11Polynomials10PolynomialIdE5valueEdRSt6vectorIdSaIdEE, ptr @_ZSt3minIjERKT_S2_S2_, i64 848869}
!61 = !{ptr @_ZNK6dealii11Polynomials10PolynomialIdE5valueEdRSt6vectorIdSaIdEE, ptr @_ZNSt6vectorIdSaIdEED2Ev, i64 848869}
!62 = !{ptr @_ZNSt6vectorIdSaIdEED2Ev, ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv, i64 10618017}
!63 = !{ptr @_ZNSt6vectorIdSaIdEED2Ev, ptr @_ZSt8_DestroyIPddEvT_S1_RSaIT0_E, i64 10618017}
!64 = !{ptr @_ZNSt6vectorIdSaIdEED2Ev, ptr @_ZNSt12_Vector_baseIdSaIdEED2Ev, i64 10618007}
!65 = !{ptr @_ZNSt6vectorIdSaIdEED2Ev, ptr @__clang_call_terminate, i64 10}
!66 = !{ptr @_ZNK6dealii11Polynomials10PolynomialIdE6degreeEv, ptr @_ZNKSt6vectorIdSaIdEE4sizeEv, i64 12}
!67 = !{ptr @_ZNSaIdEC2Ev, ptr @_ZNSt15__new_allocatorIdEC2Ev, i64 9261343}
!68 = !{ptr @_ZN6dealii11Polynomials10PolynomialIdEmLEd, ptr @_ZNSt6vectorIdSaIdEE5beginEv, i64 18}
!69 = !{ptr @_ZN6dealii11Polynomials10PolynomialIdEmLEd, ptr @_ZNSt6vectorIdSaIdEE3endEv, i64 53}
!70 = !{ptr @_ZN6dealii11Polynomials10PolynomialIdEmLEd, ptr @_ZN9__gnu_cxxneIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_, i64 53}
!71 = !{ptr @_ZN6dealii11Polynomials10PolynomialIdEmLEd, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv, i64 35}
!72 = !{ptr @_ZN6dealii11Polynomials10PolynomialIdEmLEd, ptr @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEv, i64 35}
!73 = !{ptr @_ZNSt6vectorIdSaIdEE5beginEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_, i64 6082739}
!74 = !{ptr @_ZN9__gnu_cxxneIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv, i64 1900}
!75 = !{ptr @_ZNSt6vectorIdSaIdEE3endEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_, i64 11878526}
!76 = !{ptr @_ZN6dealii11Polynomials10PolynomialIdEmLERKS2_, ptr @_ZNK6dealii11Polynomials10PolynomialIdE6degreeEv, i64 12}
!77 = !{ptr @_ZN6dealii11Polynomials10PolynomialIdEmLERKS2_, ptr @_ZNSaIdEC2Ev, i64 6}
!78 = !{ptr @_ZN6dealii11Polynomials10PolynomialIdEmLERKS2_, ptr @_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_, i64 6}
!79 = !{ptr @_ZN6dealii11Polynomials10PolynomialIdEmLERKS2_, ptr @_ZNSt15__new_allocatorIdED2Ev, i64 6}
!80 = !{ptr @_ZN6dealii11Polynomials10PolynomialIdEmLERKS2_, ptr @_ZNKSt6vectorIdSaIdEE4sizeEv, i64 39}
!81 = !{ptr @_ZN6dealii11Polynomials10PolynomialIdEmLERKS2_, ptr @_ZNSt6vectorIdSaIdEEaSERKS1_, i64 6}
!82 = !{ptr @_ZN6dealii11Polynomials10PolynomialIdEmLERKS2_, ptr @_ZNSt6vectorIdSaIdEEixEm, i64 22}
!83 = !{ptr @_ZN6dealii11Polynomials10PolynomialIdEmLERKS2_, ptr @_ZNKSt6vectorIdSaIdEEixEm, i64 11}
!84 = !{ptr @_ZN6dealii11Polynomials10PolynomialIdEmLERKS2_, ptr @_ZNSt6vectorIdSaIdEED2Ev, i64 6}
!85 = !{ptr @_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_, ptr @_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_, i64 1376898}
!86 = !{ptr @_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_, ptr @_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_, i64 1376898}
!87 = !{ptr @_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_, ptr @_ZNSt6vectorIdSaIdEE18_M_fill_initializeEmRKd, i64 1376898}
!88 = !{ptr @_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_, ptr @_ZNSt12_Vector_baseIdSaIdEED2Ev, i64 1}
!89 = !{ptr @_ZN6dealii11Polynomials10PolynomialIdEpLERKS2_, ptr @_ZNKSt6vectorIdSaIdEE4sizeEv, i64 60}
!90 = !{ptr @_ZN6dealii11Polynomials10PolynomialIdEpLERKS2_, ptr @_ZNSt6vectorIdSaIdEE6resizeEmRKd, i64 1}
!91 = !{ptr @_ZN6dealii11Polynomials10PolynomialIdEpLERKS2_, ptr @_ZNKSt6vectorIdSaIdEEixEm, i64 23}
!92 = !{ptr @_ZN6dealii11Polynomials10PolynomialIdEpLERKS2_, ptr @_ZNSt6vectorIdSaIdEEixEm, i64 23}
!93 = !{ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2Ev, ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2Ev, i64 3}
!94 = !{ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EED2Ev, ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE19_M_get_Tp_allocatorEv, i64 179262}
!95 = !{ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EED2Ev, ptr @_ZSt8_DestroyIPN6dealii11Polynomials10PolynomialIdEES3_EvT_S5_RSaIT0_E, i64 179262}
!96 = !{ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EED2Ev, ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EED2Ev, i64 179262}
!97 = !{ptr @_ZN6dealii11Polynomials19LagrangeEquidistantC2Ejj, ptr @_ZN6dealii11Polynomials19LagrangeEquidistant20compute_coefficientsEjj, i64 6}
!98 = !{ptr @_ZN6dealii11Polynomials19LagrangeEquidistantC2Ejj, ptr @_ZN6dealii11Polynomials10PolynomialIdEC2ERKSt6vectorIdSaIdEE, i64 6}
!99 = !{ptr @_ZN6dealii11Polynomials19LagrangeEquidistantC2Ejj, ptr @_ZNSt6vectorIdSaIdEED2Ev, i64 6}
!100 = !{ptr @_ZN6dealii11Polynomials19LagrangeEquidistant20compute_coefficientsEjj, ptr @_ZNSaIdEC2Ev, i64 6}
!101 = !{ptr @_ZN6dealii11Polynomials19LagrangeEquidistant20compute_coefficientsEjj, ptr @_ZNSt6vectorIdSaIdEEC2EmRKS0_, i64 6}
!102 = !{ptr @_ZN6dealii11Polynomials19LagrangeEquidistant20compute_coefficientsEjj, ptr @_ZNSt15__new_allocatorIdED2Ev, i64 6}
!103 = !{ptr @_ZN6dealii11Polynomials19LagrangeEquidistant20compute_coefficientsEjj, ptr @_ZNSt6vectorIdSaIdEEixEm, i64 11}
!104 = !{ptr @_ZN6dealii11Polynomials19LagrangeEquidistant23generate_complete_basisEj, ptr @_ZNSaIdEC2Ev, i64 2}
!105 = !{ptr @_ZN6dealii11Polynomials19LagrangeEquidistant23generate_complete_basisEj, ptr @_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_, i64 2}
!106 = !{ptr @_ZN6dealii11Polynomials19LagrangeEquidistant23generate_complete_basisEj, ptr @_ZNSaIN6dealii11Polynomials10PolynomialIdEEEC2Ev, i64 2}
!107 = !{ptr @_ZN6dealii11Polynomials19LagrangeEquidistant23generate_complete_basisEj, ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2EmRKS3_RKS4_, i64 2}
!108 = !{ptr @_ZN6dealii11Polynomials19LagrangeEquidistant23generate_complete_basisEj, ptr @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEED2Ev, i64 2}
!109 = !{ptr @_ZN6dealii11Polynomials19LagrangeEquidistant23generate_complete_basisEj, ptr @_ZN6dealii11Polynomials10PolynomialIdED2Ev, i64 7}
!110 = !{ptr @_ZN6dealii11Polynomials19LagrangeEquidistant23generate_complete_basisEj, ptr @_ZNSt6vectorIdSaIdEED2Ev, i64 2}
!111 = !{ptr @_ZN6dealii11Polynomials19LagrangeEquidistant23generate_complete_basisEj, ptr @_ZNSt15__new_allocatorIdED2Ev, i64 2}
!112 = !{ptr @_ZN6dealii11Polynomials19LagrangeEquidistant23generate_complete_basisEj, ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2Ev, i64 3}
!113 = !{ptr @_ZN6dealii11Polynomials19LagrangeEquidistant23generate_complete_basisEj, ptr @_ZN6dealii11Polynomials19LagrangeEquidistantC2Ejj, i64 5}
!114 = !{ptr @_ZN6dealii11Polynomials19LagrangeEquidistant23generate_complete_basisEj, ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE9push_backEOS3_, i64 5}
!115 = !{ptr @_ZNSaIN6dealii11Polynomials10PolynomialIdEEEC2Ev, ptr @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEEC2Ev, i64 16}
!116 = !{ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2EmRKS3_RKS4_, ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE17_S_check_init_lenEmRKS4_, i64 5}
!117 = !{ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2EmRKS3_RKS4_, ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2EmRKS4_, i64 5}
!118 = !{ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2EmRKS3_RKS4_, ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE18_M_fill_initializeEmRKS3_, i64 5}
!119 = !{ptr @_ZN6dealii11Polynomials8Lagrange23generate_complete_basisERKSt6vectorINS_5PointILi1EEESaIS4_EE, ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv, i64 33}
!120 = !{ptr @_ZN6dealii11Polynomials8Lagrange23generate_complete_basisERKSt6vectorINS_5PointILi1EEESaIS4_EE, ptr @_ZNSaIN6dealii11Polynomials10PolynomialIdEEEC2Ev, i64 3}
!121 = !{ptr @_ZN6dealii11Polynomials8Lagrange23generate_complete_basisERKSt6vectorINS_5PointILi1EEESaIS4_EE, ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2EmRKS4_, i64 3}
!122 = !{ptr @_ZN6dealii11Polynomials8Lagrange23generate_complete_basisERKSt6vectorINS_5PointILi1EEESaIS4_EE, ptr @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEED2Ev, i64 3}
!123 = !{ptr @_ZN6dealii11Polynomials8Lagrange23generate_complete_basisERKSt6vectorINS_5PointILi1EEESaIS4_EE, ptr @_ZNSaIdEC2Ev, i64 6}
!124 = !{ptr @_ZN6dealii11Polynomials8Lagrange23generate_complete_basisERKSt6vectorINS_5PointILi1EEESaIS4_EE, ptr @_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_, i64 6}
!125 = !{ptr @_ZN6dealii11Polynomials8Lagrange23generate_complete_basisERKSt6vectorINS_5PointILi1EEESaIS4_EE, ptr @_ZNSt15__new_allocatorIdED2Ev, i64 6}
!126 = !{ptr @_ZN6dealii11Polynomials8Lagrange23generate_complete_basisERKSt6vectorINS_5PointILi1EEESaIS4_EE, ptr @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE4sizeEv, i64 16}
!127 = !{ptr @_ZN6dealii11Polynomials8Lagrange23generate_complete_basisERKSt6vectorINS_5PointILi1EEESaIS4_EE, ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEixEm, i64 40}
!128 = !{ptr @_ZN6dealii11Polynomials8Lagrange23generate_complete_basisERKSt6vectorINS_5PointILi1EEESaIS4_EE, ptr @_ZN6dealii11Polynomials10PolynomialIdEaSEOS2_, i64 5}
!129 = !{ptr @_ZN6dealii11Polynomials8Lagrange23generate_complete_basisERKSt6vectorINS_5PointILi1EEESaIS4_EE, ptr @_ZN6dealii11Polynomials10PolynomialIdED2Ev, i64 20}
!130 = !{ptr @_ZN6dealii11Polynomials8Lagrange23generate_complete_basisERKSt6vectorINS_5PointILi1EEESaIS4_EE, ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm, i64 25}
!131 = !{ptr @_ZN6dealii11Polynomials8Lagrange23generate_complete_basisERKSt6vectorINS_5PointILi1EEESaIS4_EE, ptr @_ZNK6dealii5PointILi1EEclEj, i64 25}
!132 = !{ptr @_ZN6dealii11Polynomials8Lagrange23generate_complete_basisERKSt6vectorINS_5PointILi1EEESaIS4_EE, ptr @_ZNSt6vectorIdSaIdEEixEm, i64 5}
!133 = !{ptr @_ZN6dealii11Polynomials8Lagrange23generate_complete_basisERKSt6vectorINS_5PointILi1EEESaIS4_EE, ptr @_ZN6dealii11Polynomials10PolynomialIdEmLEd, i64 15}
!134 = !{ptr @_ZN6dealii11Polynomials8Lagrange23generate_complete_basisERKSt6vectorINS_5PointILi1EEESaIS4_EE, ptr @_ZN6dealii11Polynomials10PolynomialIdEmLERKS2_, i64 5}
!135 = !{ptr @_ZN6dealii11Polynomials8Lagrange23generate_complete_basisERKSt6vectorINS_5PointILi1EEESaIS4_EE, ptr @_ZNSt6vectorIdSaIdEED2Ev, i64 6}
!136 = !{ptr @_ZN6dealii11Polynomials8Lagrange23generate_complete_basisERKSt6vectorINS_5PointILi1EEESaIS4_EE, ptr @_ZNK6dealii11Polynomials10PolynomialIdE5valueEd, i64 10}
!137 = !{ptr @_ZN6dealii11Polynomials8Lagrange23generate_complete_basisERKSt6vectorINS_5PointILi1EEESaIS4_EE, ptr @_ZN6dealii11Polynomials10PolynomialIdEC2ERKS2_, i64 10}
!138 = !{ptr @_ZN6dealii11Polynomials8Lagrange23generate_complete_basisERKSt6vectorINS_5PointILi1EEESaIS4_EE, ptr @_ZN6dealii11Polynomials10PolynomialIdEpLERKS2_, i64 10}
!139 = !{ptr @_ZNSaIPKSt6vectorIdSaIdEEEC2Ev, ptr @_ZNSt15__new_allocatorIPKSt6vectorIdSaIdEEEC2Ev, i64 3}
!140 = !{ptr @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EEC2EmRKS3_RKS4_, ptr @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EE17_S_check_init_lenEmRKS4_, i64 3}
!141 = !{ptr @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EEC2EmRKS3_RKS4_, ptr @_ZNSt12_Vector_baseIPKSt6vectorIdSaIdEESaIS4_EEC2EmRKS5_, i64 3}
!142 = !{ptr @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EEC2EmRKS3_RKS4_, ptr @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EE18_M_fill_initializeEmRKS3_, i64 3}
!143 = !{ptr @_ZNSt12_Vector_baseIdSaIdEEC2Ev, ptr @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev, i64 7884403}
!144 = !{ptr @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev, ptr @_ZNSaIdEC2Ev, i64 7884403}
!145 = !{ptr @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev, ptr @_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev, i64 7884403}
!146 = !{ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2Ev, ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE12_Vector_implC2Ev, i64 3}
!147 = !{ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE12_Vector_implC2Ev, ptr @_ZNSaIN6dealii11Polynomials10PolynomialIdEEEC2Ev, i64 3}
!148 = !{ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE12_Vector_implC2Ev, ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE17_Vector_impl_dataC2Ev, i64 3}
!149 = !{ptr @_ZNSaIdEC2ERKS_, ptr @_ZNSt15__new_allocatorIdEC2ERKS0_, i64 4110539}
!150 = !{ptr @_ZNSt12_Vector_baseIdSaIdEEC2ERKS0_, ptr @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_, i64 7}
!151 = !{ptr @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_, ptr @_ZNSaIdEC2ERKS_, i64 2733634}
!152 = !{ptr @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_, ptr @_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev, i64 2733634}
!153 = !{ptr @_ZSt8_DestroyIPddEvT_S1_RSaIT0_E, ptr @_ZSt8_DestroyIPdEvT_S1_, i64 16422537}
!154 = !{ptr @_ZNSt12_Vector_baseIdSaIdEED2Ev, ptr @_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm, i64 10618017}
!155 = !{ptr @_ZNSt12_Vector_baseIdSaIdEED2Ev, ptr @_ZNSt15__new_allocatorIdED2Ev, i64 10618007}
!156 = !{ptr @_ZNSt12_Vector_baseIdSaIdEED2Ev, ptr @__clang_call_terminate, i64 10}
!157 = !{ptr @_ZSt8_DestroyIPdEvT_S1_, ptr @_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_, i64 16422537}
!158 = !{ptr @_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm, ptr @_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm, i64 8354765}
!159 = !{ptr @_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_, ptr @_ZNSaIdEC2ERKS_, i64 1376905}
!160 = !{ptr @_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_, ptr @_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_, i64 1376905}
!161 = !{ptr @_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_, ptr @_ZNSt15__new_allocatorIdED2Ev, i64 1376905}
!162 = !{ptr @_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_, ptr @_ZSt20__throw_length_errorPKc, i64 1}
!163 = !{ptr @_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_, ptr @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_, i64 2733627}
!164 = !{ptr @_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_, ptr @_ZNSt12_Vector_baseIdSaIdEE17_M_create_storageEm, i64 2733627}
!165 = !{ptr @_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_, ptr @_ZNSt15__new_allocatorIdED2Ev, i64 3}
!166 = !{ptr @_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_, ptr @_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_, i64 12982610}
!167 = !{ptr @_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_, ptr @_ZSt3minImERKT_S2_S2_, i64 12982610}
!168 = !{ptr @_ZNKSt15__new_allocatorIdE8max_sizeEv, ptr @_ZNKSt15__new_allocatorIdE11_M_max_sizeEv, i64 12982610}
!169 = !{ptr @_ZNSt12_Vector_baseIdSaIdEE17_M_create_storageEm, ptr @_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm, i64 2733627}
!170 = !{ptr @_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm, ptr @_ZNSt16allocator_traitsISaIdEE8allocateERS0_m, i64 8354784}
!171 = !{ptr @_ZSt6fill_nIPdmdET_S1_T0_RKT1_, ptr @_ZSt17__size_to_integerm, i64 7178069}
!172 = !{ptr @_ZSt6fill_nIPdmdET_S1_T0_RKT1_, ptr @_ZSt19__iterator_categoryIPdENSt15iterator_traitsIT_E17iterator_categoryERKS2_, i64 7178069}
!173 = !{ptr @_ZSt6fill_nIPdmdET_S1_T0_RKT1_, ptr @_ZSt10__fill_n_aIPdmdET_S1_T0_RKT1_St26random_access_iterator_tag, i64 7178069}
!174 = !{ptr @_ZSt10__fill_n_aIPdmdET_S1_T0_RKT1_St26random_access_iterator_tag, ptr @_ZSt8__fill_aIPddEvT_S1_RKT0_, i64 6994789}
!175 = !{ptr @_ZSt8__fill_aIPddEvT_S1_RKT0_, ptr @_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_, i64 25807262}
!176 = !{ptr @_ZNSt6vectorIdSaIdEE18_M_fill_initializeEmRKd, ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv, i64 1376898}
!177 = !{ptr @_ZNSt6vectorIdSaIdEE18_M_fill_initializeEmRKd, ptr @_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E, i64 1376898}
!178 = !{ptr @_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E, ptr @_ZSt20uninitialized_fill_nIPdmdET_S1_T0_RKT1_, i64 7178069}
!179 = !{ptr @_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPdmdEET_S3_T0_RKT1_, ptr @_ZSt6fill_nIPdmdET_S1_T0_RKT1_, i64 7178069}
!180 = !{ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE17_S_check_init_lenEmRKS4_, ptr @_ZNSaIN6dealii11Polynomials10PolynomialIdEEEC2ERKS3_, i64 13}
!181 = !{ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE17_S_check_init_lenEmRKS4_, ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE11_S_max_sizeERKS4_, i64 13}
!182 = !{ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE17_S_check_init_lenEmRKS4_, ptr @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEED2Ev, i64 13}
!183 = !{ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE17_S_check_init_lenEmRKS4_, ptr @_ZSt20__throw_length_errorPKc, i64 1}
!184 = !{ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2EmRKS4_, ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE12_Vector_implC2ERKS4_, i64 179256}
!185 = !{ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EEC2EmRKS4_, ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE17_M_create_storageEm, i64 179256}
!186 = !{ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE18_M_fill_initializeEmRKS3_, ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE19_M_get_Tp_allocatorEv, i64 5}
!187 = !{ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE18_M_fill_initializeEmRKS3_, ptr @_ZSt24__uninitialized_fill_n_aIPN6dealii11Polynomials10PolynomialIdEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E, i64 5}
!188 = !{ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EED2Ev, ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE13_M_deallocateEPS3_m, i64 179262}
!189 = !{ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EED2Ev, ptr @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEED2Ev, i64 179262}
!190 = !{ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE11_S_max_sizeERKS4_, ptr @_ZNSt16allocator_traitsISaIN6dealii11Polynomials10PolynomialIdEEEE8max_sizeERKS4_, i64 25}
!191 = !{ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE11_S_max_sizeERKS4_, ptr @_ZSt3minImERKT_S2_S2_, i64 25}
!192 = !{ptr @_ZNSaIN6dealii11Polynomials10PolynomialIdEEEC2ERKS3_, ptr @_ZNSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEEC2ERKS4_, i64 179277}
!193 = !{ptr @_ZNKSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEE8max_sizeEv, ptr @_ZNKSt15__new_allocatorIN6dealii11Polynomials10PolynomialIdEEE11_M_max_sizeEv, i64 25}
!194 = !{ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE12_Vector_implC2ERKS4_, ptr @_ZNSaIN6dealii11Polynomials10PolynomialIdEEEC2ERKS3_, i64 179264}
!195 = !{ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE12_Vector_implC2ERKS4_, ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE17_Vector_impl_dataC2Ev, i64 179264}
!196 = !{ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE17_M_create_storageEm, ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE11_M_allocateEm, i64 179256}
!197 = !{ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE11_M_allocateEm, ptr @_ZNSt16allocator_traitsISaIN6dealii11Polynomials10PolynomialIdEEEE8allocateERS4_m, i64 179269}
!198 = !{ptr @_ZSt24__uninitialized_fill_n_aIPN6dealii11Polynomials10PolynomialIdEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E, ptr @_ZSt20uninitialized_fill_nIPN6dealii11Polynomials10PolynomialIdEEmS3_ET_S5_T0_RKT1_, i64 5}
!199 = !{ptr @_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPN6dealii11Polynomials10PolynomialIdEEmS5_EET_S7_T0_RKT1_, ptr @_ZSt18__do_uninit_fill_nIPN6dealii11Polynomials10PolynomialIdEEmS3_ET_S5_T0_RKT1_, i64 5}
!200 = !{ptr @_ZSt18__do_uninit_fill_nIPN6dealii11Polynomials10PolynomialIdEEmS3_ET_S5_T0_RKT1_, ptr @_ZSt10_ConstructIN6dealii11Polynomials10PolynomialIdEEJRKS3_EEvPT_DpOT0_, i64 7}
!201 = !{ptr @_ZSt8_DestroyIPN6dealii11Polynomials10PolynomialIdEEEvT_S5_, ptr @_ZNSt12_Destroy_auxILb0EE9__destroyIPN6dealii11Polynomials10PolynomialIdEEEEvT_S7_, i64 179268}
!202 = !{ptr @_ZNSt12_Destroy_auxILb0EE9__destroyIPN6dealii11Polynomials10PolynomialIdEEEEvT_S7_, ptr @_ZSt8_DestroyIN6dealii11Polynomials10PolynomialIdEEEvPT_, i64 268842}
!203 = !{ptr @_ZNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE13_M_deallocateEPS3_m, ptr @_ZNSt16allocator_traitsISaIN6dealii11Polynomials10PolynomialIdEEEE10deallocateERS4_PS3_m, i64 179264}
!204 = !{ptr @_ZSt8_DestroyIPN6dealii11Polynomials10PolynomialIdEES3_EvT_S5_RSaIT0_E, ptr @_ZSt8_DestroyIPN6dealii11Polynomials10PolynomialIdEEEvT_S5_, i64 179268}
!205 = !{ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE3endEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPN6dealii11Polynomials10PolynomialIdEESt6vectorIS4_SaIS4_EEEC2ERKS5_, i64 6}
!206 = !{ptr @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE12_M_check_lenEmPKc, ptr @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE8max_sizeEv, i64 12}
!207 = !{ptr @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE12_M_check_lenEmPKc, ptr @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE4sizeEv, i64 21}
!208 = !{ptr @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE12_M_check_lenEmPKc, ptr @_ZSt20__throw_length_errorPKc, i64 1}
!209 = !{ptr @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE12_M_check_lenEmPKc, ptr @_ZSt3maxImERKT_S2_S2_, i64 5}
!210 = !{ptr @_ZN9__gnu_cxxmiIPN6dealii11Polynomials10PolynomialIdEESt6vectorIS4_SaIS4_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSC_SF_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6dealii11Polynomials10PolynomialIdEESt6vectorIS4_SaIS4_EEE4baseEv, i64 12}
!211 = !{ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE5beginEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPN6dealii11Polynomials10PolynomialIdEESt6vectorIS4_SaIS4_EEEC2ERKS5_, i64 6}
!212 = !{ptr @_ZSt34__uninitialized_move_if_noexcept_aIPN6dealii11Polynomials10PolynomialIdEES4_SaIS3_EET0_T_S7_S6_RT1_, ptr @_ZSt32__make_move_if_noexcept_iteratorIN6dealii11Polynomials10PolynomialIdEEPKS3_ET0_PT_, i64 24}
!213 = !{ptr @_ZSt34__uninitialized_move_if_noexcept_aIPN6dealii11Polynomials10PolynomialIdEES4_SaIS3_EET0_T_S7_S6_RT1_, ptr @_ZSt22__uninitialized_copy_aIPKN6dealii11Polynomials10PolynomialIdEEPS3_S3_ET0_T_S8_S7_RSaIT1_E, i64 12}
!214 = !{ptr @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE8max_sizeEv, ptr @_ZNKSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE19_M_get_Tp_allocatorEv, i64 12}
!215 = !{ptr @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE8max_sizeEv, ptr @_ZNSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE11_S_max_sizeERKS4_, i64 12}
!216 = !{ptr @_ZN9__gnu_cxx14__alloc_traitsISaIdEdE17_S_select_on_copyERKS1_, ptr @_ZNSt16allocator_traitsISaIdEE37select_on_container_copy_constructionERKS0_, i64 1356729}
!217 = !{ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPddET0_T_SA_S9_RSaIT1_E, ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_, i64 1356741}
!218 = !{ptr @_ZNKSt6vectorIdSaIdEE5beginEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC2ERKS2_, i64 7578462}
!219 = !{ptr @_ZNKSt6vectorIdSaIdEE3endEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC2ERKS2_, i64 11572134}
!220 = !{ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdEET0_T_SC_SB_, ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_, i64 1356741}
!221 = !{ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_, ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEET_S8_, i64 2713482}
!222 = !{ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_, ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_, i64 1356741}
!223 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_, ptr @_ZSt12__niter_baseIPKdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, i64 2713482}
!224 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_, ptr @_ZSt12__niter_baseIPdET_S1_, i64 1356741}
!225 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_, ptr @_ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_, i64 1356741}
!226 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_, ptr @_ZSt12__niter_wrapIPdET_RKS1_S1_, i64 1356741}
!227 = !{ptr @_ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_, ptr @_ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_, i64 17559028}
!228 = !{ptr @_ZSt12__niter_baseIPKdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEE4baseEv, i64 15156924}
!229 = !{ptr @_ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_, ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_, i64 17559028}
!230 = !{ptr @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EE17_S_check_init_lenEmRKS4_, ptr @_ZNSaIPKSt6vectorIdSaIdEEEC2ERKS4_, i64 3}
!231 = !{ptr @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EE17_S_check_init_lenEmRKS4_, ptr @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EE11_S_max_sizeERKS4_, i64 3}
!232 = !{ptr @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EE17_S_check_init_lenEmRKS4_, ptr @_ZNSt15__new_allocatorIPKSt6vectorIdSaIdEEED2Ev, i64 3}
!233 = !{ptr @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EE17_S_check_init_lenEmRKS4_, ptr @_ZSt20__throw_length_errorPKc, i64 1}
!234 = !{ptr @_ZNSt12_Vector_baseIPKSt6vectorIdSaIdEESaIS4_EEC2EmRKS5_, ptr @_ZNSt12_Vector_baseIPKSt6vectorIdSaIdEESaIS4_EE12_Vector_implC2ERKS5_, i64 3}
!235 = !{ptr @_ZNSt12_Vector_baseIPKSt6vectorIdSaIdEESaIS4_EEC2EmRKS5_, ptr @_ZNSt12_Vector_baseIPKSt6vectorIdSaIdEESaIS4_EE17_M_create_storageEm, i64 3}
!236 = !{ptr @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EE18_M_fill_initializeEmRKS3_, ptr @_ZNSt12_Vector_baseIPKSt6vectorIdSaIdEESaIS4_EE19_M_get_Tp_allocatorEv, i64 3}
!237 = !{ptr @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EE18_M_fill_initializeEmRKS3_, ptr @_ZSt24__uninitialized_fill_n_aIPPKSt6vectorIdSaIdEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E, i64 3}
!238 = !{ptr @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EE11_S_max_sizeERKS4_, ptr @_ZNSt16allocator_traitsISaIPKSt6vectorIdSaIdEEEE8max_sizeERKS5_, i64 3}
!239 = !{ptr @_ZNSt6vectorIPKS_IdSaIdEESaIS3_EE11_S_max_sizeERKS4_, ptr @_ZSt3minImERKT_S2_S2_, i64 3}
!240 = !{ptr @_ZNSaIPKSt6vectorIdSaIdEEEC2ERKS4_, ptr @_ZNSt15__new_allocatorIPKSt6vectorIdSaIdEEEC2ERKS5_, i64 6}
!241 = !{ptr @_ZNKSt15__new_allocatorIPKSt6vectorIdSaIdEEE8max_sizeEv, ptr @_ZNKSt15__new_allocatorIPKSt6vectorIdSaIdEEE11_M_max_sizeEv, i64 3}
!242 = !{ptr @_ZNSt12_Vector_baseIPKSt6vectorIdSaIdEESaIS4_EE12_Vector_implC2ERKS5_, ptr @_ZNSaIPKSt6vectorIdSaIdEEEC2ERKS4_, i64 3}
!243 = !{ptr @_ZNSt12_Vector_baseIPKSt6vectorIdSaIdEESaIS4_EE12_Vector_implC2ERKS5_, ptr @_ZNSt12_Vector_baseIPKSt6vectorIdSaIdEESaIS4_EE17_Vector_impl_dataC2Ev, i64 3}
!244 = !{ptr @_ZNSt12_Vector_baseIPKSt6vectorIdSaIdEESaIS4_EE17_M_create_storageEm, ptr @_ZNSt12_Vector_baseIPKSt6vectorIdSaIdEESaIS4_EE11_M_allocateEm, i64 3}
!245 = !{ptr @_ZNSt12_Vector_baseIPKSt6vectorIdSaIdEESaIS4_EE11_M_allocateEm, ptr @_ZNSt16allocator_traitsISaIPKSt6vectorIdSaIdEEEE8allocateERS5_m, i64 2}
!246 = !{ptr @_ZSt24__uninitialized_fill_n_aIPPKSt6vectorIdSaIdEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E, ptr @_ZSt20uninitialized_fill_nIPPKSt6vectorIdSaIdEEmS4_ET_S6_T0_RKT1_, i64 3}
!247 = !{ptr @_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPPKSt6vectorIdSaIdEEmS6_EET_S8_T0_RKT1_, ptr @_ZSt6fill_nIPPKSt6vectorIdSaIdEEmS4_ET_S6_T0_RKT1_, i64 3}
!248 = !{ptr @_ZSt6fill_nIPPKSt6vectorIdSaIdEEmS4_ET_S6_T0_RKT1_, ptr @_ZSt17__size_to_integerm, i64 3}
!249 = !{ptr @_ZSt6fill_nIPPKSt6vectorIdSaIdEEmS4_ET_S6_T0_RKT1_, ptr @_ZSt19__iterator_categoryIPPKSt6vectorIdSaIdEEENSt15iterator_traitsIT_E17iterator_categoryERKS7_, i64 3}
!250 = !{ptr @_ZSt6fill_nIPPKSt6vectorIdSaIdEEmS4_ET_S6_T0_RKT1_, ptr @_ZSt10__fill_n_aIPPKSt6vectorIdSaIdEEmS4_ET_S6_T0_RKT1_St26random_access_iterator_tag, i64 3}
!251 = !{ptr @_ZSt10__fill_n_aIPPKSt6vectorIdSaIdEEmS4_ET_S6_T0_RKT1_St26random_access_iterator_tag, ptr @_ZSt8__fill_aIPPKSt6vectorIdSaIdEES4_EvT_S6_RKT0_, i64 2}
!252 = !{ptr @_ZSt8__fill_aIPPKSt6vectorIdSaIdEES4_EvT_S6_RKT0_, ptr @_ZSt9__fill_a1IPPKSt6vectorIdSaIdEES4_EN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_SB_RKS8_, i64 3}
!253 = !{ptr @_ZN9__gnu_cxxmiIPdSt6vectorIdSaIdEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv, i64 80}
!254 = !{ptr @_ZSt14__copy_move_a1ILb0EPdS0_ET1_T0_S2_S1_, ptr @_ZSt14__copy_move_a2ILb0EPdS0_ET1_T0_S2_S1_, i64 11632985}
!255 = !{ptr @_ZSt12__niter_baseIPdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv, i64 12128754}
!256 = !{ptr @_ZSt14__copy_move_a2ILb0EPdS0_ET1_T0_S2_S1_, ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_, i64 11632985}
!257 = !{ptr @_ZSt14__copy_move_a1ILb0EPKfPfET1_T0_S4_S3_, ptr @_ZSt14__copy_move_a2ILb0EPKfPfET1_T0_S4_S3_, i64 88980}
!258 = !{ptr @_ZSt14__copy_move_a2ILb0EPKfPfET1_T0_S4_S3_, ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIfEEPT_PKS3_S6_S4_, i64 88980}
!259 = !{ptr @_ZSt8__fill_aIPffEvT_S1_RKT0_, ptr @_ZSt9__fill_a1IPffEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_, i64 89847}
!260 = !{ptr @_ZSt4fillIPffEvT_S1_RKT0_, ptr @_ZSt8__fill_aIPffEvT_S1_RKT0_, i64 821}
!261 = !{ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEmiEl, ptr @_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC2ERKS2_, i64 3993672}
!262 = !{ptr @_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_, ptr @_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm, i64 12}
!263 = !{ptr @_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_, ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv, i64 12}
!264 = !{ptr @_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_, ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPddET0_T_SA_S9_RSaIT1_E, i64 12}
!265 = !{ptr @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RSaIT0_E, ptr @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_, i64 6064377}
!266 = !{ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_, ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEET_S8_, i64 12128754}
!267 = !{ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_, ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET1_T0_SB_SA_, i64 6064377}
!268 = !{ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_, ptr @_ZSt12__miter_baseIPdET_S1_, i64 23265970}
!269 = !{ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_, ptr @_ZSt13__copy_move_aILb0EPdS0_ET1_T0_S2_S1_, i64 11632985}
!270 = !{ptr @_ZSt22__uninitialized_copy_aIPdS0_dET0_T_S2_S1_RSaIT1_E, ptr @_ZSt18uninitialized_copyIPdS0_ET0_T_S2_S1_, i64 11605705}
!271 = !{ptr @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_, ptr @_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_, i64 6064377}
!272 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET1_T0_SB_SA_, ptr @_ZSt12__niter_baseIPKdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, i64 12128754}
!273 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET1_T0_SB_SA_, ptr @_ZSt12__niter_baseIPdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE, i64 6064377}
!274 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET1_T0_SB_SA_, ptr @_ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_, i64 6064377}
!275 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET1_T0_SB_SA_, ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES2_ET_S7_T0_, i64 6064377}
!276 = !{ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES2_ET_S7_T0_, ptr @_ZSt12__niter_baseIPdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE, i64 6064377}
!277 = !{ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES2_ET_S7_T0_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl, i64 6064377}
!278 = !{ptr @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl, ptr @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_, i64 6075145}
!279 = !{ptr @_ZSt13__copy_move_aILb0EPdS0_ET1_T0_S2_S1_, ptr @_ZSt12__niter_baseIPdET_S1_, i64 34898955}
!280 = !{ptr @_ZSt13__copy_move_aILb0EPdS0_ET1_T0_S2_S1_, ptr @_ZSt14__copy_move_a1ILb0EPdS0_ET1_T0_S2_S1_, i64 11632985}
!281 = !{ptr @_ZSt13__copy_move_aILb0EPdS0_ET1_T0_S2_S1_, ptr @_ZSt12__niter_wrapIPdET_RKS1_S1_, i64 11632985}
!282 = !{ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPdS2_EET0_T_S4_S3_, ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_, i64 11605705}
!283 = !{ptr @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd, ptr @_ZNSt6vectorIdSaIdEE16_Temporary_valueC2IJRKdEEEPS1_DpOT_, i64 1}
!284 = !{ptr @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd, ptr @_ZNSt6vectorIdSaIdEE16_Temporary_value6_M_valEv, i64 1}
!285 = !{ptr @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd, ptr @_ZNSt6vectorIdSaIdEE3endEv, i64 1}
!286 = !{ptr @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd, ptr @_ZN9__gnu_cxxmiIPdSt6vectorIdSaIdEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_, i64 1}
!287 = !{ptr @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd, ptr @_ZNSt6vectorIdSaIdEE16_Temporary_valueD2Ev, i64 1}
!288 = !{ptr @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv, i64 5801169}
!289 = !{ptr @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd, ptr @_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc, i64 5801169}
!290 = !{ptr @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd, ptr @_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm, i64 5801169}
!291 = !{ptr @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd, ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv, i64 23204659}
!292 = !{ptr @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd, ptr @_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E, i64 5801169}
!293 = !{ptr @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd, ptr @_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_, i64 11602321}
!294 = !{ptr @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd, ptr @__cxa_begin_catch, i64 17}
!295 = !{ptr @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd, ptr @_ZSt8_DestroyIPddEvT_S1_RSaIT0_E, i64 5801169}
!296 = !{ptr @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd, ptr @_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm, i64 5801160}
!297 = !{ptr @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd, ptr @__cxa_end_catch, i64 17}
!298 = !{ptr @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd, ptr @__cxa_rethrow, i64 4}
!299 = !{ptr @_ZSt4fillIPddEvT_S1_RKT0_, ptr @_ZSt8__fill_aIPddEvT_S1_RKT0_, i64 4406944}
!300 = !{ptr @_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc, ptr @_ZNKSt6vectorIdSaIdEE8max_sizeEv, i64 11602394}
!301 = !{ptr @_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc, ptr @_ZNKSt6vectorIdSaIdEE4sizeEv, i64 23204785}
!302 = !{ptr @_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc, ptr @_ZSt20__throw_length_errorPKc, i64 1}
!303 = !{ptr @_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc, ptr @_ZSt3maxImERKT_S2_S2_, i64 5801196}
!304 = !{ptr @_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_, ptr @_ZSt32__make_move_if_noexcept_iteratorIdSt13move_iteratorIPdEET0_PT_, i64 23204788}
!305 = !{ptr @_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_, ptr @_ZSt22__uninitialized_copy_aISt13move_iteratorIPdES1_dET0_T_S4_S3_RSaIT1_E, i64 11602394}
!306 = !{ptr @_ZNKSt6vectorIdSaIdEE8max_sizeEv, ptr @_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv, i64 11605705}
!307 = !{ptr @_ZNKSt6vectorIdSaIdEE8max_sizeEv, ptr @_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_, i64 11605705}
!308 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!309 = !{!"function_entry_count", i64 147}
!310 = !{!"function_entry_count", i64 0}
!311 = !{!312, !312, i64 0}
!312 = !{!"vtable pointer", !313, i64 0}
!313 = !{!"Simple C++ TBAA"}
!314 = !{!315, !316, i64 0}
!315 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !316, i64 0, !316, i64 8, !316, i64 16}
!316 = !{!"any pointer", !317, i64 0}
!317 = !{!"omnipotent char", !313, i64 0}
!318 = !{!315, !316, i64 8}
!319 = !{!320, !320, i64 0}
!320 = !{!"float", !317, i64 0}
!321 = distinct !{!321, !322}
!322 = !{!"llvm.loop.mustprogress"}
!323 = !{!324, !324, i64 0}
!324 = !{!"int", !317, i64 0}
!325 = distinct !{!325, !322}
!326 = distinct !{!326, !322}
!327 = distinct !{!327, !322}
!328 = !{!"function_entry_count", i64 10028033}
!329 = !{!"branch_weights", i32 1817155, i32 8210880}
!330 = distinct !{!330, !322}
!331 = distinct !{!331, !322}
!332 = distinct !{!332, !322}
!333 = distinct !{!333, !322}
!334 = !{!316, !316, i64 0}
!335 = !{!336, !316, i64 0}
!336 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEE", !316, i64 0}
!337 = distinct !{!337, !322}
!338 = distinct !{!338, !322}
!339 = !{!315, !316, i64 16}
!340 = distinct !{!340, !322}
!341 = distinct !{!341, !322}
!342 = distinct !{!342, !322}
!343 = distinct !{!343, !322}
!344 = !{!"function_entry_count", i64 20}
!345 = !{!"function_entry_count", i64 1356729}
!346 = !{!347, !316, i64 0}
!347 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !316, i64 0, !316, i64 8, !316, i64 16}
!348 = !{!347, !316, i64 8}
!349 = !{!"function_entry_count", i64 3}
!350 = !{!"function_entry_count", i64 7884403}
!351 = !{!"function_entry_count", i64 3993672}
!352 = !{!353, !353, i64 0}
!353 = !{!"double", !317, i64 0}
!354 = !{!"branch_weights", i32 3077653, i32 916020}
!355 = !{!"branch_weights", i32 3077653, i32 0}
!356 = distinct !{!356, !322}
!357 = !{!"function_entry_count", i64 103595384}
!358 = !{!"function_entry_count", i64 1689220489}
!359 = !{!"function_entry_count", i64 4721160}
!360 = !{!"branch_weights", i32 3872293, i32 848869}
!361 = !{!"branch_weights", i32 1, i32 848868}
!362 = !{!"branch_weights", i32 282253, i32 566616}
!363 = !{!"branch_weights", i32 848868, i32 566617}
!364 = distinct !{!364, !322}
!365 = !{!"branch_weights", i32 0, i32 566617}
!366 = distinct !{!366, !322}
!367 = !{!"branch_weights", i32 0, i32 282253}
!368 = distinct !{!368, !322}
!369 = !{!"function_entry_count", i64 580699156}
!370 = !{!"function_entry_count", i64 10618017}
!371 = !{!"function_entry_count", i64 12}
!372 = distinct !{!372, !322}
!373 = distinct !{!373, !322}
!374 = !{!"function_entry_count", i64 9261343}
!375 = !{!"function_entry_count", i64 13389012}
!376 = distinct !{!376, !322}
!377 = !{!"function_entry_count", i64 18}
!378 = !{!"branch_weights", i32 151, i32 1}
!379 = !{!"branch_weights", i32 145, i32 151}
!380 = distinct !{!380, !322}
!381 = !{!"function_entry_count", i64 6082739}
!382 = !{!"function_entry_count", i64 950}
!383 = !{!"function_entry_count", i64 11878526}
!384 = !{!"function_entry_count", i64 1524}
!385 = !{!386, !316, i64 0}
!386 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEE", !316, i64 0}
!387 = !{!"function_entry_count", i64 836}
!388 = !{!"function_entry_count", i64 6}
!389 = !{!"branch_weights", i32 1, i32 223}
!390 = !{!"branch_weights", i32 1, i32 207}
!391 = !{!"branch_weights", i32 193, i32 223}
!392 = distinct !{!392, !322}
!393 = distinct !{!393, !322}
!394 = !{!"function_entry_count", i64 1376898}
!395 = !{!347, !316, i64 16}
!396 = !{!"branch_weights", i32 1, i32 13}
!397 = !{!"branch_weights", i32 193, i32 207}
!398 = distinct !{!398, !322}
!399 = distinct !{!399, !322}
!400 = distinct !{!400, !322}
!401 = distinct !{!401, !322}
!402 = distinct !{!402, !322}
!403 = distinct !{!403, !322}
!404 = distinct !{!404, !322}
!405 = distinct !{!405, !322}
!406 = distinct !{!406, !322}
!407 = distinct !{!407, !322}
!408 = distinct !{!408, !322}
!409 = distinct !{!409, !322}
!410 = distinct !{!410, !322}
!411 = !{!412, !316, i64 0}
!412 = !{!"_ZTSNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIfEESaIS3_EE17_Vector_impl_dataE", !316, i64 0, !316, i64 8, !316, i64 16}
!413 = !{!412, !316, i64 8}
!414 = !{!412, !316, i64 16}
!415 = distinct !{!415, !322}
!416 = !{!417, !316, i64 0}
!417 = !{!"_ZTSNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE17_Vector_impl_dataE", !316, i64 0, !316, i64 8, !316, i64 16}
!418 = !{!417, !316, i64 8}
!419 = !{!417, !316, i64 16}
!420 = !{!"function_entry_count", i64 179262}
!421 = !{!"branch_weights", i32 162978676, i32 1984504972}
!422 = !{!"branch_weights", i32 223, i32 193}
!423 = distinct !{!423, !322}
!424 = !{!"function_entry_count", i64 5}
!425 = !{!"branch_weights", i32 3, i32 4}
!426 = !{!"branch_weights", i32 4, i32 3}
!427 = distinct !{!427, !322}
!428 = !{!"function_entry_count", i64 16}
!429 = !{!"branch_weights", i32 1, i32 127}
!430 = !{!"branch_weights", i32 97, i32 127}
!431 = distinct !{!431, !322}
!432 = !{!"branch_weights", i32 7, i32 7}
!433 = distinct !{!433, !322}
!434 = distinct !{!434, !322}
!435 = distinct !{!435, !322}
!436 = !{!"function_entry_count", i64 39}
!437 = !{!438, !316, i64 8}
!438 = !{!"_ZTSNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE17_Vector_impl_dataE", !316, i64 0, !316, i64 8, !316, i64 16}
!439 = !{!438, !316, i64 0}
!440 = !{!"function_entry_count", i64 13983833}
!441 = !{!"function_entry_count", i64 48}
!442 = !{!"function_entry_count", i64 292334}
!443 = !{!"function_entry_count", i64 282053}
!444 = !{!445, !316, i64 0}
!445 = !{!"_ZTSNSt12_Vector_baseIPKSt6vectorIdSaIdEESaIS4_EE17_Vector_impl_dataE", !316, i64 0, !316, i64 8, !316, i64 16}
!446 = !{!445, !316, i64 8}
!447 = distinct !{!447, !322}
!448 = !{!"function_entry_count", i64 1283062}
!449 = !{!"function_entry_count", i64 661342}
!450 = distinct !{!450, !322}
!451 = distinct !{!451, !322}
!452 = distinct !{!452, !322}
!453 = !{!"function_entry_count", i64 9278493}
!454 = !{!"function_entry_count", i64 4110539}
!455 = !{!"function_entry_count", i64 179267}
!456 = !{!"function_entry_count", i64 42627443}
!457 = !{!"function_entry_count", i64 12962434}
!458 = !{!"function_entry_count", i64 7}
!459 = !{!"function_entry_count", i64 2733634}
!460 = !{!"function_entry_count", i64 10618037}
!461 = !{!"function_entry_count", i64 16422537}
!462 = !{!"branch_weights", i32 8067773, i32 8354766}
!463 = !{!"function_entry_count", i64 1376905}
!464 = !{!"branch_weights", i32 1, i32 1376906}
!465 = !{!"function_entry_count", i64 2733627}
!466 = !{!"function_entry_count", i64 12982610}
!467 = !{!468, !468, i64 0}
!468 = !{!"long", !317, i64 0}
!469 = !{!"function_entry_count", i64 34204152}
!470 = !{!"branch_weights", i32 1, i32 34204153}
!471 = !{!"function_entry_count", i64 21337395}
!472 = !{!"function_entry_count", i64 8538154}
!473 = !{!"branch_weights", i32 183370, i32 8354786}
!474 = !{!"branch_weights", i32 1, i32 2000}
!475 = !{!"function_entry_count", i64 7178069}
!476 = !{!"branch_weights", i32 183280, i32 6994791}
!477 = !{!"function_entry_count", i64 16082259}
!478 = !{!"function_entry_count", i64 32608285}
!479 = !{!"function_entry_count", i64 25807262}
!480 = !{!"function_entry_count", i64 25820050}
!481 = !{!"branch_weights", i32 1, i32 4303341}
!482 = !{!"branch_weights", i32 4303341, i32 -542009222}
!483 = distinct !{!483, !322}
!484 = !{!"function_entry_count", i64 13}
!485 = !{!"branch_weights", i32 1, i32 14}
!486 = !{!"function_entry_count", i64 179256}
!487 = !{!"function_entry_count", i64 25}
!488 = !{!"function_entry_count", i64 179277}
!489 = !{!"function_entry_count", i64 179295}
!490 = !{!"function_entry_count", i64 179264}
!491 = !{!"function_entry_count", i64 179288}
!492 = !{!"function_entry_count", i64 179270}
!493 = !{!"branch_weights", i32 1, i32 179271}
!494 = !{!"function_entry_count", i64 358552}
!495 = !{!"branch_weights", i32 1, i32 191}
!496 = !{!"branch_weights", i32 191, i32 97}
!497 = distinct !{!497, !322}
!498 = !{!"function_entry_count", i64 179268}
!499 = !{!"branch_weights", i32 1, i32 179268}
!500 = !{!"branch_weights", i32 179268, i32 89575}
!501 = distinct !{!501, !322}
!502 = !{!"function_entry_count", i64 268842}
!503 = !{!"branch_weights", i32 4, i32 179266}
!504 = !{!"branch_weights", i32 1, i32 7}
!505 = !{!"function_entry_count", i64 24}
!506 = !{!"function_entry_count", i64 12588445}
!507 = !{!"branch_weights", i32 11254134, i32 1334313}
!508 = !{!"function_entry_count", i64 179263}
!509 = !{!510, !316, i64 0}
!510 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPN6dealii11Polynomials10PolynomialIdEESt6vectorIS4_SaIS4_EEEE", !316, i64 0}
!511 = distinct !{!511, !322}
!512 = distinct !{!512, !322}
!513 = !{!"function_entry_count", i64 1356741}
!514 = !{!"function_entry_count", i64 7578462}
!515 = !{!"function_entry_count", i64 11572134}
!516 = !{!"function_entry_count", i64 15156924}
!517 = !{!"function_entry_count", i64 23127779}
!518 = !{!"function_entry_count", i64 17559028}
!519 = !{!"function_entry_count", i64 46393777}
!520 = !{!"function_entry_count", i64 29192013}
!521 = !{!"branch_weights", i32 16454701, i32 12737314}
!522 = !{!"function_entry_count", i64 23144268}
!523 = !{!524, !316, i64 0}
!524 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEE", !316, i64 0}
!525 = !{!"branch_weights", i32 1, i32 4}
!526 = !{!445, !316, i64 16}
!527 = !{!"branch_weights", i32 127, i32 1825}
!528 = distinct !{!528, !322}
!529 = !{!530, !316, i64 0}
!530 = !{!"_ZTSNSt6vectorIPKS_IdSaIdEESaIS3_EE16_Temporary_valueE", !316, i64 0, !317, i64 8}
!531 = !{!317, !317, i64 0}
!532 = !{!533, !316, i64 0}
!533 = !{!"_ZTSSt13move_iteratorIPPKSt6vectorIdSaIdEEE", !316, i64 0}
!534 = !{!535, !316, i64 0}
!535 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPPKSt6vectorIdSaIdEES1_IS5_SaIS5_EEEE", !316, i64 0}
!536 = !{!"function_entry_count", i64 5384}
!537 = !{!"function_entry_count", i64 40}
!538 = !{!"function_entry_count", i64 17968345}
!539 = !{!"function_entry_count", i64 11632985}
!540 = !{!"function_entry_count", i64 12128754}
!541 = !{i64 0, i64 8, !334}
!542 = !{!"function_entry_count", i64 6067700}
!543 = !{!"function_entry_count", i64 89046}
!544 = !{!"function_entry_count", i64 88980}
!545 = !{!"function_entry_count", i64 89178}
!546 = !{!"branch_weights", i32 1, i32 88981}
!547 = !{!548, !316, i64 0}
!548 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEE", !316, i64 0}
!549 = !{!"function_entry_count", i64 89026}
!550 = !{!"function_entry_count", i64 89847}
!551 = !{!"branch_weights", i32 1, i32 89847}
!552 = !{!"branch_weights", i32 89847, i32 12101908}
!553 = distinct !{!553, !322}
!554 = !{!"function_entry_count", i64 132}
!555 = !{!556, !316, i64 0}
!556 = !{!"_ZTSNSt6vectorIfSaIfEE16_Temporary_valueE", !316, i64 0, !317, i64 8}
!557 = !{!"function_entry_count", i64 821}
!558 = !{!559, !316, i64 0}
!559 = !{!"_ZTSSt13move_iteratorIPfE", !316, i64 0}
!560 = !{!"function_entry_count", i64 24036430}
!561 = !{!"function_entry_count", i64 6064377}
!562 = !{!"function_entry_count", i64 11605705}
!563 = !{!"function_entry_count", i64 6075145}
!564 = !{!"function_entry_count", i64 23265998}
!565 = !{!"function_entry_count", i64 5801171}
!566 = !{!"branch_weights", i32 1, i32 5801172}
!567 = !{!"branch_weights", i32 5801172, i32 1}
!568 = !{!569, !316, i64 0}
!569 = !{!"_ZTSNSt6vectorIdSaIdEE16_Temporary_valueE", !316, i64 0, !317, i64 8}
!570 = !{!"function_entry_count", i64 4406944}
!571 = !{!"function_entry_count", i64 5801197}
!572 = !{!"branch_weights", i32 1, i32 5801198}
!573 = !{!"function_entry_count", i64 11602394}
!574 = !{!575, !316, i64 0}
!575 = !{!"_ZTSSt13move_iteratorIPdE", !316, i64 0}
!576 = distinct !{!576, !322}
!577 = distinct !{!577, !322}
!578 = distinct !{!578, !322}
!579 = distinct !{!579, !322}
!580 = !{!581, !316, i64 0}
!581 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPN6dealii11Polynomials10PolynomialIfEESt6vectorIS4_SaIS4_EEEE", !316, i64 0}
