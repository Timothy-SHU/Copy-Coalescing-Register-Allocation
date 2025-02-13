; ModuleID = 'source/base/function_parser.cc'
source_filename = "source/base/function_parser.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.dealii::FunctionParser" = type { %"class.dealii::Function.base", ptr, i8, i32 }
%"class.dealii::Function.base" = type <{ %"class.dealii::FunctionTime", %"class.dealii::Subscriptor", i32 }>
%"class.dealii::FunctionTime" = type { ptr, double }
%"class.dealii::Subscriptor" = type { ptr, i32, %"class.std::map", ptr }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<const char *, std::pair<const char *const, unsigned int>, std::_Select1st<std::pair<const char *const, unsigned int>>, std::less<const char *>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<const char *, std::pair<const char *const, unsigned int>, std::_Select1st<std::pair<const char *const, unsigned int>>, std::less<const char *>>::_Rb_tree_impl" = type { %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_key_compare" = type { %"struct.std::less" }
%"struct.std::less" = type { i8 }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator.0" = type { i8 }
%"class.dealii::FunctionParser<1>::ExcParseError" = type { %"class.dealii::ExceptionBase.base", i32, ptr }
%"class.dealii::ExceptionBase.base" = type <{ %"class.std::exception", ptr, i32, [4 x i8], ptr, ptr, ptr, ptr, i32 }>
%"class.std::exception" = type { ptr }
%"class.dealii::FunctionParser<1>::ExcInvalidExpressionSize" = type { %"class.dealii::ExceptionBase.base", i32, i32, [4 x i8] }
%"class.dealii::FunctionParser.3" = type { %"class.dealii::Function.base.5", ptr, i8, i32 }
%"class.dealii::Function.base.5" = type <{ %"class.dealii::FunctionTime", %"class.dealii::Subscriptor", i32 }>
%"class.dealii::FunctionParser<2>::ExcParseError" = type { %"class.dealii::ExceptionBase.base", i32, ptr }
%"class.dealii::FunctionParser<2>::ExcInvalidExpressionSize" = type { %"class.dealii::ExceptionBase.base", i32, i32, [4 x i8] }
%"class.dealii::FunctionParser.6" = type { %"class.dealii::Function.base.8", ptr, i8, i32 }
%"class.dealii::Function.base.8" = type <{ %"class.dealii::FunctionTime", %"class.dealii::Subscriptor", i32 }>
%"class.dealii::FunctionParser<3>::ExcParseError" = type { %"class.dealii::ExceptionBase.base", i32, ptr }
%"class.dealii::FunctionParser<3>::ExcInvalidExpressionSize" = type { %"class.dealii::ExceptionBase.base", i32, i32, [4 x i8] }
%"class.dealii::Tensor" = type { [1 x double] }
%"class.dealii::Tensor.9" = type { [2 x double] }
%"class.dealii::Tensor.10" = type { [3 x double] }
%struct._Guard = type { ptr }

$_ZN6dealii14FunctionParserILi1EEC5Ejd = comdat any

$_ZN6dealii14FunctionParserILi1EED5Ev = comdat any

$_ZThn16_N6dealii14FunctionParserILi1EED1Ev = comdat any

$_ZThn16_N6dealii14FunctionParserILi1EED0Ev = comdat any

$_ZN6dealii14FunctionParserILi1EE10initializeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS7_SaIS7_EERKSt3mapIS7_dSt4lessIS7_ESaISt4pairIS8_dEEEbb = comdat any

$_ZN6dealii14FunctionParserILi1EE10initializeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_RKSt3mapIS7_dSt4lessIS7_ESaISt4pairIS8_dEEEbb = comdat any

$_ZN6dealii14FunctionParserILi1EE22default_variable_namesB5cxx11Ev = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZNK6dealii14FunctionParserILi1EE5valueERKNS_5PointILi1EEEj = comdat any

$_ZNK6dealii14FunctionParserILi1EE12vector_valueERKNS_5PointILi1EEERNS_6VectorIdEE = comdat any

$_ZN6dealii14FunctionParserILi1EE13ExcParseErrorC5EiPKc = comdat any

$_ZN6dealii14FunctionParserILi1EE13ExcParseErrorD5Ev = comdat any

$_ZNK6dealii14FunctionParserILi1EE13ExcParseError10print_infoERSo = comdat any

$_ZN6dealii14FunctionParserILi1EE24ExcInvalidExpressionSizeC5Eii = comdat any

$_ZN6dealii14FunctionParserILi1EE24ExcInvalidExpressionSizeD5Ev = comdat any

$_ZNK6dealii14FunctionParserILi1EE24ExcInvalidExpressionSize10print_infoERSo = comdat any

$_ZN6dealii14FunctionParserILi2EEC5Ejd = comdat any

$_ZN6dealii14FunctionParserILi2EED5Ev = comdat any

$_ZThn16_N6dealii14FunctionParserILi2EED1Ev = comdat any

$_ZThn16_N6dealii14FunctionParserILi2EED0Ev = comdat any

$_ZN6dealii14FunctionParserILi2EE10initializeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS7_SaIS7_EERKSt3mapIS7_dSt4lessIS7_ESaISt4pairIS8_dEEEbb = comdat any

$_ZN6dealii14FunctionParserILi2EE10initializeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_RKSt3mapIS7_dSt4lessIS7_ESaISt4pairIS8_dEEEbb = comdat any

$_ZN6dealii14FunctionParserILi2EE22default_variable_namesB5cxx11Ev = comdat any

$_ZNK6dealii14FunctionParserILi2EE5valueERKNS_5PointILi2EEEj = comdat any

$_ZNK6dealii14FunctionParserILi2EE12vector_valueERKNS_5PointILi2EEERNS_6VectorIdEE = comdat any

$_ZN6dealii14FunctionParserILi2EE13ExcParseErrorC5EiPKc = comdat any

$_ZN6dealii14FunctionParserILi2EE13ExcParseErrorD5Ev = comdat any

$_ZNK6dealii14FunctionParserILi2EE13ExcParseError10print_infoERSo = comdat any

$_ZN6dealii14FunctionParserILi2EE24ExcInvalidExpressionSizeC5Eii = comdat any

$_ZN6dealii14FunctionParserILi2EE24ExcInvalidExpressionSizeD5Ev = comdat any

$_ZNK6dealii14FunctionParserILi2EE24ExcInvalidExpressionSize10print_infoERSo = comdat any

$_ZN6dealii14FunctionParserILi3EEC5Ejd = comdat any

$_ZN6dealii14FunctionParserILi3EED5Ev = comdat any

$_ZThn16_N6dealii14FunctionParserILi3EED1Ev = comdat any

$_ZThn16_N6dealii14FunctionParserILi3EED0Ev = comdat any

$_ZN6dealii14FunctionParserILi3EE10initializeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS7_SaIS7_EERKSt3mapIS7_dSt4lessIS7_ESaISt4pairIS8_dEEEbb = comdat any

$_ZN6dealii14FunctionParserILi3EE10initializeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_RKSt3mapIS7_dSt4lessIS7_ESaISt4pairIS8_dEEEbb = comdat any

$_ZN6dealii14FunctionParserILi3EE22default_variable_namesB5cxx11Ev = comdat any

$_ZNK6dealii14FunctionParserILi3EE5valueERKNS_5PointILi3EEEj = comdat any

$_ZNK6dealii14FunctionParserILi3EE12vector_valueERKNS_5PointILi3EEERNS_6VectorIdEE = comdat any

$_ZN6dealii14FunctionParserILi3EE13ExcParseErrorC5EiPKc = comdat any

$_ZN6dealii14FunctionParserILi3EE13ExcParseErrorD5Ev = comdat any

$_ZNK6dealii14FunctionParserILi3EE13ExcParseError10print_infoERSo = comdat any

$_ZN6dealii14FunctionParserILi3EE24ExcInvalidExpressionSizeC5Eii = comdat any

$_ZN6dealii14FunctionParserILi3EE24ExcInvalidExpressionSizeD5Ev = comdat any

$_ZNK6dealii14FunctionParserILi3EE24ExcInvalidExpressionSize10print_infoERSo = comdat any

$_ZNSt11char_traitsIcE6lengthEPKc = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag = comdat any

$_ZNSt15__new_allocatorIcED2Ev = comdat any

$_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_ = comdat any

$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_ = comdat any

$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev = comdat any

$_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_ = comdat any

$__clang_call_terminate = comdat any

$_ZTVN6dealii14FunctionParserILi1EEE = comdat any

$_ZTVN6dealii14FunctionParserILi1EE13ExcParseErrorE = comdat any

$_ZTVN6dealii14FunctionParserILi1EE24ExcInvalidExpressionSizeE = comdat any

$_ZTVN6dealii14FunctionParserILi2EEE = comdat any

$_ZTVN6dealii14FunctionParserILi2EE13ExcParseErrorE = comdat any

$_ZTVN6dealii14FunctionParserILi2EE24ExcInvalidExpressionSizeE = comdat any

$_ZTVN6dealii14FunctionParserILi3EEE = comdat any

$_ZTVN6dealii14FunctionParserILi3EE13ExcParseErrorE = comdat any

$_ZTVN6dealii14FunctionParserILi3EE24ExcInvalidExpressionSizeE = comdat any

$_ZTSN6dealii14FunctionParserILi1EEE = comdat any

$_ZTSN6dealii8FunctionILi1EEE = comdat any

$_ZTIN6dealii8FunctionILi1EEE = comdat any

$_ZTIN6dealii14FunctionParserILi1EEE = comdat any

$_ZTSN6dealii14FunctionParserILi1EE13ExcParseErrorE = comdat any

$_ZTIN6dealii14FunctionParserILi1EE13ExcParseErrorE = comdat any

$_ZTSN6dealii14FunctionParserILi1EE24ExcInvalidExpressionSizeE = comdat any

$_ZTIN6dealii14FunctionParserILi1EE24ExcInvalidExpressionSizeE = comdat any

$_ZTSN6dealii14FunctionParserILi2EEE = comdat any

$_ZTSN6dealii8FunctionILi2EEE = comdat any

$_ZTIN6dealii8FunctionILi2EEE = comdat any

$_ZTIN6dealii14FunctionParserILi2EEE = comdat any

$_ZTSN6dealii14FunctionParserILi2EE13ExcParseErrorE = comdat any

$_ZTIN6dealii14FunctionParserILi2EE13ExcParseErrorE = comdat any

$_ZTSN6dealii14FunctionParserILi2EE24ExcInvalidExpressionSizeE = comdat any

$_ZTIN6dealii14FunctionParserILi2EE24ExcInvalidExpressionSizeE = comdat any

$_ZTSN6dealii14FunctionParserILi3EEE = comdat any

$_ZTSN6dealii8FunctionILi3EEE = comdat any

$_ZTIN6dealii8FunctionILi3EEE = comdat any

$_ZTIN6dealii14FunctionParserILi3EEE = comdat any

$_ZTSN6dealii14FunctionParserILi3EE13ExcParseErrorE = comdat any

$_ZTIN6dealii14FunctionParserILi3EE13ExcParseErrorE = comdat any

$_ZTSN6dealii14FunctionParserILi3EE24ExcInvalidExpressionSizeE = comdat any

$_ZTIN6dealii14FunctionParserILi3EE24ExcInvalidExpressionSizeE = comdat any

@_ZTVN6dealii14FunctionParserILi1EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii14FunctionParserILi1EEE, ptr @_ZN6dealii14FunctionParserILi1EED1Ev, ptr @_ZN6dealii14FunctionParserILi1EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii14FunctionParserILi1EE5valueERKNS_5PointILi1EEEj, ptr @_ZNK6dealii14FunctionParserILi1EE12vector_valueERKNS_5PointILi1EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi1EE17vector_value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE, ptr @_ZNK6dealii8FunctionILi1EE8gradientERKNS_5PointILi1EEEj, ptr @_ZNK6dealii8FunctionILi1EE15vector_gradientERKNS_5PointILi1EEERSt6vectorINS_6TensorILi1ELi1EEESaIS8_EE, ptr @_ZNK6dealii8FunctionILi1EE13gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6TensorILi1ELi1EEESaISA_EEj, ptr @_ZNK6dealii8FunctionILi1EE20vector_gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi1EEESaISA_EESaISC_EE, ptr @_ZNK6dealii8FunctionILi1EE9laplacianERKNS_5PointILi1EEEj, ptr @_ZNK6dealii8FunctionILi1EE16vector_laplacianERKNS_5PointILi1EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi1EE14laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi1EE21vector_laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii14FunctionParserILi1EEE, ptr @_ZThn16_N6dealii14FunctionParserILi1EED1Ev, ptr @_ZThn16_N6dealii14FunctionParserILi1EED0Ev] }, comdat, align 8
@.str = private unnamed_addr constant [2 x i8] c"x\00", align 1
@_ZTVN6dealii14FunctionParserILi1EE13ExcParseErrorE = weak_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN6dealii14FunctionParserILi1EE13ExcParseErrorE, ptr @_ZN6dealii14FunctionParserILi1EE13ExcParseErrorD1Ev, ptr @_ZN6dealii14FunctionParserILi1EE13ExcParseErrorD0Ev, ptr @_ZNK6dealii13ExceptionBase4whatEv, ptr @_ZNK6dealii14FunctionParserILi1EE13ExcParseError10print_infoERSo] }, comdat, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"Parsing Error at Column \00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c". The parser said: \00", align 1
@_ZTVN6dealii14FunctionParserILi1EE24ExcInvalidExpressionSizeE = weak_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN6dealii14FunctionParserILi1EE24ExcInvalidExpressionSizeE, ptr @_ZN6dealii14FunctionParserILi1EE24ExcInvalidExpressionSizeD1Ev, ptr @_ZN6dealii14FunctionParserILi1EE24ExcInvalidExpressionSizeD0Ev, ptr @_ZNK6dealii13ExceptionBase4whatEv, ptr @_ZNK6dealii14FunctionParserILi1EE24ExcInvalidExpressionSize10print_infoERSo] }, comdat, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"The number of components (\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c") is not equal to the number of expressions (\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c").\00", align 1
@_ZTVN6dealii14FunctionParserILi2EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii14FunctionParserILi2EEE, ptr @_ZN6dealii14FunctionParserILi2EED1Ev, ptr @_ZN6dealii14FunctionParserILi2EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii14FunctionParserILi2EE5valueERKNS_5PointILi2EEEj, ptr @_ZNK6dealii14FunctionParserILi2EE12vector_valueERKNS_5PointILi2EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE, ptr @_ZNK6dealii8FunctionILi2EE8gradientERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE15vector_gradientERKNS_5PointILi2EEERSt6vectorINS_6TensorILi1ELi2EEESaIS8_EE, ptr @_ZNK6dealii8FunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6TensorILi1ELi2EEESaISA_EEj, ptr @_ZNK6dealii8FunctionILi2EE20vector_gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi2EEESaISA_EESaISC_EE, ptr @_ZNK6dealii8FunctionILi2EE9laplacianERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE16vector_laplacianERKNS_5PointILi2EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi2EE14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi2EE21vector_laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii14FunctionParserILi2EEE, ptr @_ZThn16_N6dealii14FunctionParserILi2EED1Ev, ptr @_ZThn16_N6dealii14FunctionParserILi2EED0Ev] }, comdat, align 8
@.str.6 = private unnamed_addr constant [4 x i8] c"x,y\00", align 1
@_ZTVN6dealii14FunctionParserILi2EE13ExcParseErrorE = weak_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN6dealii14FunctionParserILi2EE13ExcParseErrorE, ptr @_ZN6dealii14FunctionParserILi2EE13ExcParseErrorD1Ev, ptr @_ZN6dealii14FunctionParserILi2EE13ExcParseErrorD0Ev, ptr @_ZNK6dealii13ExceptionBase4whatEv, ptr @_ZNK6dealii14FunctionParserILi2EE13ExcParseError10print_infoERSo] }, comdat, align 8
@_ZTVN6dealii14FunctionParserILi2EE24ExcInvalidExpressionSizeE = weak_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN6dealii14FunctionParserILi2EE24ExcInvalidExpressionSizeE, ptr @_ZN6dealii14FunctionParserILi2EE24ExcInvalidExpressionSizeD1Ev, ptr @_ZN6dealii14FunctionParserILi2EE24ExcInvalidExpressionSizeD0Ev, ptr @_ZNK6dealii13ExceptionBase4whatEv, ptr @_ZNK6dealii14FunctionParserILi2EE24ExcInvalidExpressionSize10print_infoERSo] }, comdat, align 8
@_ZTVN6dealii14FunctionParserILi3EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii14FunctionParserILi3EEE, ptr @_ZN6dealii14FunctionParserILi3EED1Ev, ptr @_ZN6dealii14FunctionParserILi3EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii14FunctionParserILi3EE5valueERKNS_5PointILi3EEEj, ptr @_ZNK6dealii14FunctionParserILi3EE12vector_valueERKNS_5PointILi3EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE, ptr @_ZNK6dealii8FunctionILi3EE8gradientERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE15vector_gradientERKNS_5PointILi3EEERSt6vectorINS_6TensorILi1ELi3EEESaIS8_EE, ptr @_ZNK6dealii8FunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6TensorILi1ELi3EEESaISA_EEj, ptr @_ZNK6dealii8FunctionILi3EE20vector_gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi3EEESaISA_EESaISC_EE, ptr @_ZNK6dealii8FunctionILi3EE9laplacianERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE16vector_laplacianERKNS_5PointILi3EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi3EE14laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi3EE21vector_laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii14FunctionParserILi3EEE, ptr @_ZThn16_N6dealii14FunctionParserILi3EED1Ev, ptr @_ZThn16_N6dealii14FunctionParserILi3EED0Ev] }, comdat, align 8
@.str.7 = private unnamed_addr constant [6 x i8] c"x,y,z\00", align 1
@_ZTVN6dealii14FunctionParserILi3EE13ExcParseErrorE = weak_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN6dealii14FunctionParserILi3EE13ExcParseErrorE, ptr @_ZN6dealii14FunctionParserILi3EE13ExcParseErrorD1Ev, ptr @_ZN6dealii14FunctionParserILi3EE13ExcParseErrorD0Ev, ptr @_ZNK6dealii13ExceptionBase4whatEv, ptr @_ZNK6dealii14FunctionParserILi3EE13ExcParseError10print_infoERSo] }, comdat, align 8
@_ZTVN6dealii14FunctionParserILi3EE24ExcInvalidExpressionSizeE = weak_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN6dealii14FunctionParserILi3EE24ExcInvalidExpressionSizeE, ptr @_ZN6dealii14FunctionParserILi3EE24ExcInvalidExpressionSizeD1Ev, ptr @_ZN6dealii14FunctionParserILi3EE24ExcInvalidExpressionSizeD0Ev, ptr @_ZNK6dealii13ExceptionBase4whatEv, ptr @_ZNK6dealii14FunctionParserILi3EE24ExcInvalidExpressionSize10print_infoERSo] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN6dealii14FunctionParserILi1EEE = weak_odr dso_local constant [32 x i8] c"N6dealii14FunctionParserILi1EEE\00", comdat, align 1
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN6dealii8FunctionILi1EEE = linkonce_odr dso_local constant [25 x i8] c"N6dealii8FunctionILi1EEE\00", comdat, align 1
@_ZTIN6dealii12FunctionTimeE = external constant ptr
@_ZTIN6dealii11SubscriptorE = external constant ptr
@_ZTIN6dealii8FunctionILi1EEE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN6dealii8FunctionILi1EEE, i32 0, i32 2, ptr @_ZTIN6dealii12FunctionTimeE, i64 2, ptr @_ZTIN6dealii11SubscriptorE, i64 4098 }, comdat, align 8
@_ZTIN6dealii14FunctionParserILi1EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii14FunctionParserILi1EEE, ptr @_ZTIN6dealii8FunctionILi1EEE }, comdat, align 8
@_ZTSN6dealii14FunctionParserILi1EE13ExcParseErrorE = weak_odr dso_local constant [47 x i8] c"N6dealii14FunctionParserILi1EE13ExcParseErrorE\00", comdat, align 1
@_ZTIN6dealii13ExceptionBaseE = external constant ptr
@_ZTIN6dealii14FunctionParserILi1EE13ExcParseErrorE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii14FunctionParserILi1EE13ExcParseErrorE, ptr @_ZTIN6dealii13ExceptionBaseE }, comdat, align 8
@_ZTSN6dealii14FunctionParserILi1EE24ExcInvalidExpressionSizeE = weak_odr dso_local constant [58 x i8] c"N6dealii14FunctionParserILi1EE24ExcInvalidExpressionSizeE\00", comdat, align 1
@_ZTIN6dealii14FunctionParserILi1EE24ExcInvalidExpressionSizeE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii14FunctionParserILi1EE24ExcInvalidExpressionSizeE, ptr @_ZTIN6dealii13ExceptionBaseE }, comdat, align 8
@_ZTSN6dealii14FunctionParserILi2EEE = weak_odr dso_local constant [32 x i8] c"N6dealii14FunctionParserILi2EEE\00", comdat, align 1
@_ZTSN6dealii8FunctionILi2EEE = linkonce_odr dso_local constant [25 x i8] c"N6dealii8FunctionILi2EEE\00", comdat, align 1
@_ZTIN6dealii8FunctionILi2EEE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN6dealii8FunctionILi2EEE, i32 0, i32 2, ptr @_ZTIN6dealii12FunctionTimeE, i64 2, ptr @_ZTIN6dealii11SubscriptorE, i64 4098 }, comdat, align 8
@_ZTIN6dealii14FunctionParserILi2EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii14FunctionParserILi2EEE, ptr @_ZTIN6dealii8FunctionILi2EEE }, comdat, align 8
@_ZTSN6dealii14FunctionParserILi2EE13ExcParseErrorE = weak_odr dso_local constant [47 x i8] c"N6dealii14FunctionParserILi2EE13ExcParseErrorE\00", comdat, align 1
@_ZTIN6dealii14FunctionParserILi2EE13ExcParseErrorE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii14FunctionParserILi2EE13ExcParseErrorE, ptr @_ZTIN6dealii13ExceptionBaseE }, comdat, align 8
@_ZTSN6dealii14FunctionParserILi2EE24ExcInvalidExpressionSizeE = weak_odr dso_local constant [58 x i8] c"N6dealii14FunctionParserILi2EE24ExcInvalidExpressionSizeE\00", comdat, align 1
@_ZTIN6dealii14FunctionParserILi2EE24ExcInvalidExpressionSizeE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii14FunctionParserILi2EE24ExcInvalidExpressionSizeE, ptr @_ZTIN6dealii13ExceptionBaseE }, comdat, align 8
@_ZTSN6dealii14FunctionParserILi3EEE = weak_odr dso_local constant [32 x i8] c"N6dealii14FunctionParserILi3EEE\00", comdat, align 1
@_ZTSN6dealii8FunctionILi3EEE = linkonce_odr dso_local constant [25 x i8] c"N6dealii8FunctionILi3EEE\00", comdat, align 1
@_ZTIN6dealii8FunctionILi3EEE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN6dealii8FunctionILi3EEE, i32 0, i32 2, ptr @_ZTIN6dealii12FunctionTimeE, i64 2, ptr @_ZTIN6dealii11SubscriptorE, i64 4098 }, comdat, align 8
@_ZTIN6dealii14FunctionParserILi3EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii14FunctionParserILi3EEE, ptr @_ZTIN6dealii8FunctionILi3EEE }, comdat, align 8
@_ZTSN6dealii14FunctionParserILi3EE13ExcParseErrorE = weak_odr dso_local constant [47 x i8] c"N6dealii14FunctionParserILi3EE13ExcParseErrorE\00", comdat, align 1
@_ZTIN6dealii14FunctionParserILi3EE13ExcParseErrorE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii14FunctionParserILi3EE13ExcParseErrorE, ptr @_ZTIN6dealii13ExceptionBaseE }, comdat, align 8
@_ZTSN6dealii14FunctionParserILi3EE24ExcInvalidExpressionSizeE = weak_odr dso_local constant [58 x i8] c"N6dealii14FunctionParserILi3EE24ExcInvalidExpressionSizeE\00", comdat, align 1
@_ZTIN6dealii14FunctionParserILi3EE24ExcInvalidExpressionSizeE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii14FunctionParserILi3EE24ExcInvalidExpressionSizeE, ptr @_ZTIN6dealii13ExceptionBaseE }, comdat, align 8
@.str.8 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1

@_ZN6dealii14FunctionParserILi1EEC1Ejd = weak_odr dso_local unnamed_addr alias void (ptr, i32, double), ptr @_ZN6dealii14FunctionParserILi1EEC2Ejd
@_ZN6dealii14FunctionParserILi1EED1Ev = weak_odr dso_local unnamed_addr alias void (ptr), ptr @_ZN6dealii14FunctionParserILi1EED2Ev
@_ZN6dealii14FunctionParserILi1EE13ExcParseErrorC1EiPKc = weak_odr dso_local unnamed_addr alias void (ptr, i32, ptr), ptr @_ZN6dealii14FunctionParserILi1EE13ExcParseErrorC2EiPKc
@_ZN6dealii14FunctionParserILi1EE13ExcParseErrorD1Ev = weak_odr dso_local unnamed_addr alias void (ptr), ptr @_ZN6dealii14FunctionParserILi1EE13ExcParseErrorD2Ev
@_ZN6dealii14FunctionParserILi1EE24ExcInvalidExpressionSizeC1Eii = weak_odr dso_local unnamed_addr alias void (ptr, i32, i32), ptr @_ZN6dealii14FunctionParserILi1EE24ExcInvalidExpressionSizeC2Eii
@_ZN6dealii14FunctionParserILi1EE24ExcInvalidExpressionSizeD1Ev = weak_odr dso_local unnamed_addr alias void (ptr), ptr @_ZN6dealii14FunctionParserILi1EE24ExcInvalidExpressionSizeD2Ev
@_ZN6dealii14FunctionParserILi2EEC1Ejd = weak_odr dso_local unnamed_addr alias void (ptr, i32, double), ptr @_ZN6dealii14FunctionParserILi2EEC2Ejd
@_ZN6dealii14FunctionParserILi2EED1Ev = weak_odr dso_local unnamed_addr alias void (ptr), ptr @_ZN6dealii14FunctionParserILi2EED2Ev
@_ZN6dealii14FunctionParserILi2EE13ExcParseErrorC1EiPKc = weak_odr dso_local unnamed_addr alias void (ptr, i32, ptr), ptr @_ZN6dealii14FunctionParserILi2EE13ExcParseErrorC2EiPKc
@_ZN6dealii14FunctionParserILi2EE13ExcParseErrorD1Ev = weak_odr dso_local unnamed_addr alias void (ptr), ptr @_ZN6dealii14FunctionParserILi2EE13ExcParseErrorD2Ev
@_ZN6dealii14FunctionParserILi2EE24ExcInvalidExpressionSizeC1Eii = weak_odr dso_local unnamed_addr alias void (ptr, i32, i32), ptr @_ZN6dealii14FunctionParserILi2EE24ExcInvalidExpressionSizeC2Eii
@_ZN6dealii14FunctionParserILi2EE24ExcInvalidExpressionSizeD1Ev = weak_odr dso_local unnamed_addr alias void (ptr), ptr @_ZN6dealii14FunctionParserILi2EE24ExcInvalidExpressionSizeD2Ev
@_ZN6dealii14FunctionParserILi3EEC1Ejd = weak_odr dso_local unnamed_addr alias void (ptr, i32, double), ptr @_ZN6dealii14FunctionParserILi3EEC2Ejd
@_ZN6dealii14FunctionParserILi3EED1Ev = weak_odr dso_local unnamed_addr alias void (ptr), ptr @_ZN6dealii14FunctionParserILi3EED2Ev
@_ZN6dealii14FunctionParserILi3EE13ExcParseErrorC1EiPKc = weak_odr dso_local unnamed_addr alias void (ptr, i32, ptr), ptr @_ZN6dealii14FunctionParserILi3EE13ExcParseErrorC2EiPKc
@_ZN6dealii14FunctionParserILi3EE13ExcParseErrorD1Ev = weak_odr dso_local unnamed_addr alias void (ptr), ptr @_ZN6dealii14FunctionParserILi3EE13ExcParseErrorD2Ev
@_ZN6dealii14FunctionParserILi3EE24ExcInvalidExpressionSizeC1Eii = weak_odr dso_local unnamed_addr alias void (ptr, i32, i32), ptr @_ZN6dealii14FunctionParserILi3EE24ExcInvalidExpressionSizeC2Eii
@_ZN6dealii14FunctionParserILi3EE24ExcInvalidExpressionSizeD1Ev = weak_odr dso_local unnamed_addr alias void (ptr), ptr @_ZN6dealii14FunctionParserILi3EE24ExcInvalidExpressionSizeD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii14FunctionParserILi1EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %1, double noundef %2) unnamed_addr #0 comdat($_ZN6dealii14FunctionParserILi1EEC5Ejd) align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN6dealii8FunctionILi1EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef %1, double noundef %2) #11
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii14FunctionParserILi1EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii14FunctionParserILi1EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !35
  %5 = getelementptr inbounds %"class.dealii::FunctionParser", ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !38
  %6 = zext i32 %1 to i64
  %7 = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %6) #12
          to label %8 unwind label %9

8:                                                ; preds = %3
  store ptr %7, ptr %5, align 8, !tbaa !38
  ret void

9:                                                ; preds = %3
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #13
  resume { ptr, i32 } %10
}

; Function Attrs: optsize
declare void @_ZN6dealii8FunctionILi1EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92), i32 noundef, double noundef) unnamed_addr #1

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind optsize
declare void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(92)) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii14FunctionParserILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #4 comdat($_ZN6dealii14FunctionParserILi1EED5Ev) align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii14FunctionParserILi1EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii14FunctionParserILi1EEE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !35
  %3 = getelementptr inbounds %"class.dealii::FunctionParser", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !38
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @_ZdaPv(ptr noundef nonnull %4) #14
  br label %7

7:                                                ; preds = %6, %1
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #13
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZThn16_N6dealii14FunctionParserILi1EED1Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii14FunctionParserILi1EED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii14FunctionParserILi1EED0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #4 comdat($_ZN6dealii14FunctionParserILi1EED5Ev) align 2 {
  tail call void @_ZN6dealii14FunctionParserILi1EED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #13
  tail call void @_ZdlPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZThn16_N6dealii14FunctionParserILi1EED0Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii14FunctionParserILi1EED0Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii14FunctionParserILi1EE10initializeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS7_SaIS7_EERKSt3mapIS7_dSt4lessIS7_ESaISt4pairIS8_dEEEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 8 dereferenceable(48) %3, i1 noundef zeroext %4, i1 noundef zeroext %5) local_unnamed_addr #4 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii14FunctionParserILi1EE10initializeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_RKSt3mapIS7_dSt4lessIS7_ESaISt4pairIS8_dEEEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(48) %3, i1 noundef zeroext %4, i1 noundef zeroext %5) local_unnamed_addr #4 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii14FunctionParserILi1EE22default_variable_namesB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = alloca %"class.std::allocator.0", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #15
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #13
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %2) #11
          to label %3 unwind label %4

3:                                                ; preds = %1
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #15
  ret void

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #15
  resume { ptr, i32 } %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = tail call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %2) #11
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.8) #16
          to label %7 unwind label %8

7:                                                ; preds = %6
  unreachable

8:                                                ; preds = %6
  %9 = landingpad { ptr, i32 }
          cleanup
  br label %16

10:                                               ; preds = %3
  %11 = tail call noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef nonnull %1) #11
  %12 = getelementptr inbounds i8, ptr %1, i64 %11
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull %12) #11
          to label %13 unwind label %14

13:                                               ; preds = %10
  ret void

14:                                               ; preds = %10
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %16

16:                                               ; preds = %14, %8
  %17 = phi { ptr, i32 } [ %9, %8 ], [ %15, %14 ]
  tail call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  resume { ptr, i32 } %17
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii14FunctionParserILi1EE5valueERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #4 comdat align 2 !prof !34 {
  ret double 0.000000e+00
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZNK6dealii14FunctionParserILi1EE12vector_valueERKNS_5PointILi1EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 %2) unnamed_addr #4 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii14FunctionParserILi1EE13ExcParseErrorC2EiPKc(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 comdat($_ZN6dealii14FunctionParserILi1EE13ExcParseErrorC5EiPKc) align 2 !prof !34 {
  tail call void @_ZN6dealii13ExceptionBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) #11
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii14FunctionParserILi1EE13ExcParseErrorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds %"class.dealii::FunctionParser<1>::ExcParseError", ptr %0, i64 0, i32 1
  store i32 %1, ptr %4, align 4, !tbaa !57
  %5 = getelementptr inbounds %"class.dealii::FunctionParser<1>::ExcParseError", ptr %0, i64 0, i32 2
  store ptr %2, ptr %5, align 8, !tbaa !61
  ret void
}

; Function Attrs: optsize
declare void @_ZN6dealii13ExceptionBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii14FunctionParserILi1EE13ExcParseErrorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #4 comdat($_ZN6dealii14FunctionParserILi1EE13ExcParseErrorD5Ev) align 2 !prof !34 {
  tail call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) #13
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii14FunctionParserILi1EE13ExcParseErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #4 comdat($_ZN6dealii14FunctionParserILi1EE13ExcParseErrorD5Ev) align 2 {
  tail call void @_ZN6dealii14FunctionParserILi1EE13ExcParseErrorD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #13
  tail call void @_ZdlPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii14FunctionParserILi1EE13ExcParseError10print_infoERSo(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 !prof !34 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.1) #11
  %4 = getelementptr inbounds %"class.dealii::FunctionParser<1>::ExcParseError", ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !57
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %5) #11
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str.2) #11
  %8 = getelementptr inbounds %"class.dealii::FunctionParser<1>::ExcParseError", ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !61
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %9) #11
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #0

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #0

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii14FunctionParserILi1EE24ExcInvalidExpressionSizeC2Eii(ptr noundef nonnull align 8 dereferenceable(68) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 comdat($_ZN6dealii14FunctionParserILi1EE24ExcInvalidExpressionSizeC5Eii) align 2 !prof !34 {
  tail call void @_ZN6dealii13ExceptionBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) #11
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii14FunctionParserILi1EE24ExcInvalidExpressionSizeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds %"class.dealii::FunctionParser<1>::ExcInvalidExpressionSize", ptr %0, i64 0, i32 1
  store i32 %1, ptr %4, align 4, !tbaa !62
  %5 = getelementptr inbounds %"class.dealii::FunctionParser<1>::ExcInvalidExpressionSize", ptr %0, i64 0, i32 2
  store i32 %2, ptr %5, align 8, !tbaa !64
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii14FunctionParserILi1EE24ExcInvalidExpressionSizeD2Ev(ptr noundef nonnull align 8 dereferenceable(68) %0) unnamed_addr #4 comdat($_ZN6dealii14FunctionParserILi1EE24ExcInvalidExpressionSizeD5Ev) align 2 !prof !34 {
  tail call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii14FunctionParserILi1EE24ExcInvalidExpressionSizeD0Ev(ptr noundef nonnull align 8 dereferenceable(68) %0) unnamed_addr #4 comdat($_ZN6dealii14FunctionParserILi1EE24ExcInvalidExpressionSizeD5Ev) align 2 {
  tail call void @_ZN6dealii14FunctionParserILi1EE24ExcInvalidExpressionSizeD1Ev(ptr noundef nonnull align 8 dereferenceable(68) %0) #13
  tail call void @_ZdlPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii14FunctionParserILi1EE24ExcInvalidExpressionSize10print_infoERSo(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 !prof !34 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.3) #11
  %4 = getelementptr inbounds %"class.dealii::FunctionParser<1>::ExcInvalidExpressionSize", ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !62
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %5) #11
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str.4) #11
  %8 = getelementptr inbounds %"class.dealii::FunctionParser<1>::ExcInvalidExpressionSize", ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !64
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef %9) #11
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull @.str.5) #11
  %12 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii14FunctionParserILi2EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %1, double noundef %2) unnamed_addr #0 comdat($_ZN6dealii14FunctionParserILi2EEC5Ejd) align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN6dealii8FunctionILi2EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef %1, double noundef %2) #11
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii14FunctionParserILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii14FunctionParserILi2EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !35
  %5 = getelementptr inbounds %"class.dealii::FunctionParser.3", ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !65
  %6 = zext i32 %1 to i64
  %7 = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %6) #12
          to label %8 unwind label %9

8:                                                ; preds = %3
  store ptr %7, ptr %5, align 8, !tbaa !65
  ret void

9:                                                ; preds = %3
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #13
  resume { ptr, i32 } %10
}

; Function Attrs: optsize
declare void @_ZN6dealii8FunctionILi2EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92), i32 noundef, double noundef) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92)) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii14FunctionParserILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #4 comdat($_ZN6dealii14FunctionParserILi2EED5Ev) align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii14FunctionParserILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii14FunctionParserILi2EEE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !35
  %3 = getelementptr inbounds %"class.dealii::FunctionParser.3", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !65
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @_ZdaPv(ptr noundef nonnull %4) #14
  br label %7

7:                                                ; preds = %6, %1
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZThn16_N6dealii14FunctionParserILi2EED1Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii14FunctionParserILi2EED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii14FunctionParserILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #4 comdat($_ZN6dealii14FunctionParserILi2EED5Ev) align 2 {
  tail call void @_ZN6dealii14FunctionParserILi2EED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #13
  tail call void @_ZdlPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZThn16_N6dealii14FunctionParserILi2EED0Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii14FunctionParserILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii14FunctionParserILi2EE10initializeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS7_SaIS7_EERKSt3mapIS7_dSt4lessIS7_ESaISt4pairIS8_dEEEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 8 dereferenceable(48) %3, i1 noundef zeroext %4, i1 noundef zeroext %5) local_unnamed_addr #4 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii14FunctionParserILi2EE10initializeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_RKSt3mapIS7_dSt4lessIS7_ESaISt4pairIS8_dEEEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(48) %3, i1 noundef zeroext %4, i1 noundef zeroext %5) local_unnamed_addr #4 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii14FunctionParserILi2EE22default_variable_namesB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = alloca %"class.std::allocator.0", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #15
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #13
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %2) #11
          to label %3 unwind label %4

3:                                                ; preds = %1
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #15
  ret void

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #15
  resume { ptr, i32 } %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii14FunctionParserILi2EE5valueERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 1 %1, i32 noundef %2) unnamed_addr #4 comdat align 2 !prof !34 {
  ret double 0.000000e+00
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZNK6dealii14FunctionParserILi2EE12vector_valueERKNS_5PointILi2EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %2) unnamed_addr #4 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii14FunctionParserILi2EE13ExcParseErrorC2EiPKc(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 comdat($_ZN6dealii14FunctionParserILi2EE13ExcParseErrorC5EiPKc) align 2 !prof !34 {
  tail call void @_ZN6dealii13ExceptionBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) #11
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii14FunctionParserILi2EE13ExcParseErrorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds %"class.dealii::FunctionParser<2>::ExcParseError", ptr %0, i64 0, i32 1
  store i32 %1, ptr %4, align 4, !tbaa !68
  %5 = getelementptr inbounds %"class.dealii::FunctionParser<2>::ExcParseError", ptr %0, i64 0, i32 2
  store ptr %2, ptr %5, align 8, !tbaa !70
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii14FunctionParserILi2EE13ExcParseErrorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #4 comdat($_ZN6dealii14FunctionParserILi2EE13ExcParseErrorD5Ev) align 2 !prof !34 {
  tail call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii14FunctionParserILi2EE13ExcParseErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #4 comdat($_ZN6dealii14FunctionParserILi2EE13ExcParseErrorD5Ev) align 2 {
  tail call void @_ZN6dealii14FunctionParserILi2EE13ExcParseErrorD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #13
  tail call void @_ZdlPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii14FunctionParserILi2EE13ExcParseError10print_infoERSo(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 !prof !34 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.1) #11
  %4 = getelementptr inbounds %"class.dealii::FunctionParser<2>::ExcParseError", ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !68
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %5) #11
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str.2) #11
  %8 = getelementptr inbounds %"class.dealii::FunctionParser<2>::ExcParseError", ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !70
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %9) #11
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii14FunctionParserILi2EE24ExcInvalidExpressionSizeC2Eii(ptr noundef nonnull align 8 dereferenceable(68) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 comdat($_ZN6dealii14FunctionParserILi2EE24ExcInvalidExpressionSizeC5Eii) align 2 !prof !34 {
  tail call void @_ZN6dealii13ExceptionBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) #11
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii14FunctionParserILi2EE24ExcInvalidExpressionSizeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds %"class.dealii::FunctionParser<2>::ExcInvalidExpressionSize", ptr %0, i64 0, i32 1
  store i32 %1, ptr %4, align 4, !tbaa !71
  %5 = getelementptr inbounds %"class.dealii::FunctionParser<2>::ExcInvalidExpressionSize", ptr %0, i64 0, i32 2
  store i32 %2, ptr %5, align 8, !tbaa !73
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii14FunctionParserILi2EE24ExcInvalidExpressionSizeD2Ev(ptr noundef nonnull align 8 dereferenceable(68) %0) unnamed_addr #4 comdat($_ZN6dealii14FunctionParserILi2EE24ExcInvalidExpressionSizeD5Ev) align 2 !prof !34 {
  tail call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii14FunctionParserILi2EE24ExcInvalidExpressionSizeD0Ev(ptr noundef nonnull align 8 dereferenceable(68) %0) unnamed_addr #4 comdat($_ZN6dealii14FunctionParserILi2EE24ExcInvalidExpressionSizeD5Ev) align 2 {
  tail call void @_ZN6dealii14FunctionParserILi2EE24ExcInvalidExpressionSizeD1Ev(ptr noundef nonnull align 8 dereferenceable(68) %0) #13
  tail call void @_ZdlPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii14FunctionParserILi2EE24ExcInvalidExpressionSize10print_infoERSo(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 !prof !34 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.3) #11
  %4 = getelementptr inbounds %"class.dealii::FunctionParser<2>::ExcInvalidExpressionSize", ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !71
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %5) #11
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str.4) #11
  %8 = getelementptr inbounds %"class.dealii::FunctionParser<2>::ExcInvalidExpressionSize", ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !73
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef %9) #11
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull @.str.5) #11
  %12 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii14FunctionParserILi3EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %1, double noundef %2) unnamed_addr #0 comdat($_ZN6dealii14FunctionParserILi3EEC5Ejd) align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN6dealii8FunctionILi3EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef %1, double noundef %2) #11
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii14FunctionParserILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii14FunctionParserILi3EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !35
  %5 = getelementptr inbounds %"class.dealii::FunctionParser.6", ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !74
  %6 = zext i32 %1 to i64
  %7 = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %6) #12
          to label %8 unwind label %9

8:                                                ; preds = %3
  store ptr %7, ptr %5, align 8, !tbaa !74
  ret void

9:                                                ; preds = %3
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #13
  resume { ptr, i32 } %10
}

; Function Attrs: optsize
declare void @_ZN6dealii8FunctionILi3EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92), i32 noundef, double noundef) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(92)) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii14FunctionParserILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #4 comdat($_ZN6dealii14FunctionParserILi3EED5Ev) align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii14FunctionParserILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii14FunctionParserILi3EEE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !35
  %3 = getelementptr inbounds %"class.dealii::FunctionParser.6", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !74
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @_ZdaPv(ptr noundef nonnull %4) #14
  br label %7

7:                                                ; preds = %6, %1
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZThn16_N6dealii14FunctionParserILi3EED1Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii14FunctionParserILi3EED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii14FunctionParserILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #4 comdat($_ZN6dealii14FunctionParserILi3EED5Ev) align 2 {
  tail call void @_ZN6dealii14FunctionParserILi3EED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #13
  tail call void @_ZdlPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZThn16_N6dealii14FunctionParserILi3EED0Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii14FunctionParserILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii14FunctionParserILi3EE10initializeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS7_SaIS7_EERKSt3mapIS7_dSt4lessIS7_ESaISt4pairIS8_dEEEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 8 dereferenceable(48) %3, i1 noundef zeroext %4, i1 noundef zeroext %5) local_unnamed_addr #4 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii14FunctionParserILi3EE10initializeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_RKSt3mapIS7_dSt4lessIS7_ESaISt4pairIS8_dEEEbb(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(48) %3, i1 noundef zeroext %4, i1 noundef zeroext %5) local_unnamed_addr #4 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii14FunctionParserILi3EE22default_variable_namesB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = alloca %"class.std::allocator.0", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #15
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #13
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %2) #11
          to label %3 unwind label %4

3:                                                ; preds = %1
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #15
  ret void

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #15
  resume { ptr, i32 } %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii14FunctionParserILi3EE5valueERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 1 %1, i32 noundef %2) unnamed_addr #4 comdat align 2 !prof !34 {
  ret double 0.000000e+00
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZNK6dealii14FunctionParserILi3EE12vector_valueERKNS_5PointILi3EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %2) unnamed_addr #4 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii14FunctionParserILi3EE13ExcParseErrorC2EiPKc(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 comdat($_ZN6dealii14FunctionParserILi3EE13ExcParseErrorC5EiPKc) align 2 !prof !34 {
  tail call void @_ZN6dealii13ExceptionBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) #11
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii14FunctionParserILi3EE13ExcParseErrorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds %"class.dealii::FunctionParser<3>::ExcParseError", ptr %0, i64 0, i32 1
  store i32 %1, ptr %4, align 4, !tbaa !77
  %5 = getelementptr inbounds %"class.dealii::FunctionParser<3>::ExcParseError", ptr %0, i64 0, i32 2
  store ptr %2, ptr %5, align 8, !tbaa !79
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii14FunctionParserILi3EE13ExcParseErrorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #4 comdat($_ZN6dealii14FunctionParserILi3EE13ExcParseErrorD5Ev) align 2 !prof !34 {
  tail call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii14FunctionParserILi3EE13ExcParseErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #4 comdat($_ZN6dealii14FunctionParserILi3EE13ExcParseErrorD5Ev) align 2 {
  tail call void @_ZN6dealii14FunctionParserILi3EE13ExcParseErrorD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #13
  tail call void @_ZdlPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii14FunctionParserILi3EE13ExcParseError10print_infoERSo(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 !prof !34 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.1) #11
  %4 = getelementptr inbounds %"class.dealii::FunctionParser<3>::ExcParseError", ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !77
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %5) #11
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str.2) #11
  %8 = getelementptr inbounds %"class.dealii::FunctionParser<3>::ExcParseError", ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !79
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %9) #11
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii14FunctionParserILi3EE24ExcInvalidExpressionSizeC2Eii(ptr noundef nonnull align 8 dereferenceable(68) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 comdat($_ZN6dealii14FunctionParserILi3EE24ExcInvalidExpressionSizeC5Eii) align 2 !prof !34 {
  tail call void @_ZN6dealii13ExceptionBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) #11
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii14FunctionParserILi3EE24ExcInvalidExpressionSizeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds %"class.dealii::FunctionParser<3>::ExcInvalidExpressionSize", ptr %0, i64 0, i32 1
  store i32 %1, ptr %4, align 4, !tbaa !80
  %5 = getelementptr inbounds %"class.dealii::FunctionParser<3>::ExcInvalidExpressionSize", ptr %0, i64 0, i32 2
  store i32 %2, ptr %5, align 8, !tbaa !82
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii14FunctionParserILi3EE24ExcInvalidExpressionSizeD2Ev(ptr noundef nonnull align 8 dereferenceable(68) %0) unnamed_addr #4 comdat($_ZN6dealii14FunctionParserILi3EE24ExcInvalidExpressionSizeD5Ev) align 2 !prof !34 {
  tail call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii14FunctionParserILi3EE24ExcInvalidExpressionSizeD0Ev(ptr noundef nonnull align 8 dereferenceable(68) %0) unnamed_addr #4 comdat($_ZN6dealii14FunctionParserILi3EE24ExcInvalidExpressionSizeD5Ev) align 2 {
  tail call void @_ZN6dealii14FunctionParserILi3EE24ExcInvalidExpressionSizeD1Ev(ptr noundef nonnull align 8 dereferenceable(68) %0) #13
  tail call void @_ZdlPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii14FunctionParserILi3EE24ExcInvalidExpressionSize10print_infoERSo(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 !prof !34 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.3) #11
  %4 = getelementptr inbounds %"class.dealii::FunctionParser<3>::ExcInvalidExpressionSize", ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !80
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %5) #11
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str.4) #11
  %8 = getelementptr inbounds %"class.dealii::FunctionParser<3>::ExcInvalidExpressionSize", ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !82
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef %9) #11
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull @.str.5) #11
  %12 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_) #11
  ret void
}

; Function Attrs: optsize
declare void @_ZN6dealii12FunctionTime8set_timeEd(ptr noundef nonnull align 8 dereferenceable(16), double noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN6dealii12FunctionTime12advance_timeEd(ptr noundef nonnull align 8 dereferenceable(16), double noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 1, ptr noundef nonnull align 1, i32 noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi1EE17vector_value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 1, ptr noundef nonnull align 1) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi1EE8gradientERKNS_5PointILi1EEEj(ptr dead_on_unwind writable sret(%"class.dealii::Tensor") align 8, ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi1EE15vector_gradientERKNS_5PointILi1EEERSt6vectorINS_6TensorILi1ELi1EEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 1) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi1EE13gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6TensorILi1ELi1EEESaISA_EEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 1, ptr noundef nonnull align 1, i32 noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi1EE20vector_gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi1EEESaISA_EESaISC_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 1, ptr noundef nonnull align 1) unnamed_addr #1

; Function Attrs: optsize
declare noundef double @_ZNK6dealii8FunctionILi1EE9laplacianERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi1EE16vector_laplacianERKNS_5PointILi1EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 1) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi1EE14laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 1, ptr noundef nonnull align 1, i32 noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi1EE21vector_laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 1, ptr noundef nonnull align 1) unnamed_addr #1

; Function Attrs: nounwind optsize
declare noundef ptr @_ZNK6dealii13ExceptionBase4whatEv(ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 1, ptr noundef nonnull align 1, i32 noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 1, ptr noundef nonnull align 1) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi2EE8gradientERKNS_5PointILi2EEEj(ptr dead_on_unwind writable sret(%"class.dealii::Tensor.9") align 8, ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 1, i32 noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi2EE15vector_gradientERKNS_5PointILi2EEERSt6vectorINS_6TensorILi1ELi2EEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 1, ptr noundef nonnull align 1) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6TensorILi1ELi2EEESaISA_EEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 1, ptr noundef nonnull align 1, i32 noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi2EE20vector_gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi2EEESaISA_EESaISC_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 1, ptr noundef nonnull align 1) unnamed_addr #1

; Function Attrs: optsize
declare noundef double @_ZNK6dealii8FunctionILi2EE9laplacianERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 1, i32 noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi2EE16vector_laplacianERKNS_5PointILi2EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 1, ptr noundef nonnull align 1) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi2EE14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 1, ptr noundef nonnull align 1, i32 noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi2EE21vector_laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 1, ptr noundef nonnull align 1) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 1, ptr noundef nonnull align 1, i32 noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 1, ptr noundef nonnull align 1) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi3EE8gradientERKNS_5PointILi3EEEj(ptr dead_on_unwind writable sret(%"class.dealii::Tensor.10") align 8, ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 1, i32 noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi3EE15vector_gradientERKNS_5PointILi3EEERSt6vectorINS_6TensorILi1ELi3EEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 1, ptr noundef nonnull align 1) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6TensorILi1ELi3EEESaISA_EEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 1, ptr noundef nonnull align 1, i32 noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi3EE20vector_gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi3EEESaISA_EESaISC_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 1, ptr noundef nonnull align 1) unnamed_addr #1

; Function Attrs: optsize
declare noundef double @_ZNK6dealii8FunctionILi3EE9laplacianERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 1, i32 noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi3EE16vector_laplacianERKNS_5PointILi3EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 1, ptr noundef nonnull align 1) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi3EE14laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 1, ptr noundef nonnull align 1, i32 noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi3EE21vector_laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 1, ptr noundef nonnull align 1) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %0) local_unnamed_addr #4 comdat align 2 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #4 align 2

; Function Attrs: noreturn optsize
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = alloca i64, align 8
  %5 = alloca %struct._Guard, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  %6 = tail call noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %1, ptr noundef %2) #11
  store i64 %6, ptr %4, align 8, !tbaa !83
  %7 = icmp ugt i64 %6, 15
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0) #11
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %9) #11
  %10 = load i64, ptr %4, align 8, !tbaa !83
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #11
  br label %13

11:                                               ; preds = %3
  %12 = tail call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  br label %13

13:                                               ; preds = %11, %8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %0) #11
  %14 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(ptr noundef %14, ptr noundef %1, ptr noundef %2) #13
  store ptr null, ptr %5, align 8, !tbaa !84
  %15 = load i64, ptr %4, align 8, !tbaa !83
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %15) #11
          to label %16 unwind label %17

16:                                               ; preds = %13
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  ret void

17:                                               ; preds = %13
  %18 = landingpad { ptr, i32 }
          cleanup
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  resume { ptr, i32 } %18
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #4 comdat align 2 !prof !86 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !34 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !87
  call void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %3) #11
  %4 = call noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #11
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: optsize
declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 !prof !34 {
  store ptr %1, ptr %0, align 8, !tbaa !84
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !84
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #11
          to label %5 unwind label %6

5:                                                ; preds = %4, %1
  ret void

6:                                                ; preds = %4
  %7 = landingpad { ptr, i32 }
          catch ptr null
  %8 = extractvalue { ptr, i32 } %7, 0
  tail call void @__clang_call_terminate(ptr %8) #17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat !prof !34 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  ret i64 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #4 comdat !prof !34 {
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #15
  tail call void @_ZSt9terminatev() #17
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0 align 2

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { optsize }
attributes #12 = { builtin optsize allocsize(0) }
attributes #13 = { nounwind optsize }
attributes #14 = { builtin nounwind optsize }
attributes #15 = { nounwind }
attributes #16 = { noreturn optsize }
attributes #17 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"vtable pointer", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{!39, !54, i64 96}
!39 = !{!"_ZTSN6dealii14FunctionParserILi1EEE", !40, i64 0, !54, i64 96, !56, i64 104, !45, i64 108}
!40 = !{!"_ZTSN6dealii8FunctionILi1EEE", !41, i64 0, !44, i64 16, !45, i64 88}
!41 = !{!"_ZTSN6dealii12FunctionTimeE", !42, i64 8}
!42 = !{!"double", !43, i64 0}
!43 = !{!"omnipotent char", !37, i64 0}
!44 = !{!"_ZTSN6dealii11SubscriptorE", !45, i64 8, !46, i64 16, !54, i64 64}
!45 = !{!"int", !43, i64 0}
!46 = !{!"_ZTSSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE", !47, i64 0}
!47 = !{!"_ZTSSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE", !48, i64 0}
!48 = !{!"_ZTSNSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE13_Rb_tree_implIS8_Lb1EEE", !49, i64 0, !51, i64 8}
!49 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIPKcEE", !50, i64 0}
!50 = !{!"_ZTSSt4lessIPKcE"}
!51 = !{!"_ZTSSt15_Rb_tree_header", !52, i64 0, !55, i64 32}
!52 = !{!"_ZTSSt18_Rb_tree_node_base", !53, i64 0, !54, i64 8, !54, i64 16, !54, i64 24}
!53 = !{!"_ZTSSt14_Rb_tree_color", !43, i64 0}
!54 = !{!"any pointer", !43, i64 0}
!55 = !{!"long", !43, i64 0}
!56 = !{!"bool", !43, i64 0}
!57 = !{!58, !45, i64 60}
!58 = !{!"_ZTSN6dealii14FunctionParserILi1EE13ExcParseErrorE", !59, i64 0, !45, i64 60, !54, i64 64}
!59 = !{!"_ZTSN6dealii13ExceptionBaseE", !60, i64 0, !54, i64 8, !45, i64 16, !54, i64 24, !54, i64 32, !54, i64 40, !54, i64 48, !45, i64 56}
!60 = !{!"_ZTSSt9exception"}
!61 = !{!58, !54, i64 64}
!62 = !{!63, !45, i64 60}
!63 = !{!"_ZTSN6dealii14FunctionParserILi1EE24ExcInvalidExpressionSizeE", !59, i64 0, !45, i64 60, !45, i64 64}
!64 = !{!63, !45, i64 64}
!65 = !{!66, !54, i64 96}
!66 = !{!"_ZTSN6dealii14FunctionParserILi2EEE", !67, i64 0, !54, i64 96, !56, i64 104, !45, i64 108}
!67 = !{!"_ZTSN6dealii8FunctionILi2EEE", !41, i64 0, !44, i64 16, !45, i64 88}
!68 = !{!69, !45, i64 60}
!69 = !{!"_ZTSN6dealii14FunctionParserILi2EE13ExcParseErrorE", !59, i64 0, !45, i64 60, !54, i64 64}
!70 = !{!69, !54, i64 64}
!71 = !{!72, !45, i64 60}
!72 = !{!"_ZTSN6dealii14FunctionParserILi2EE24ExcInvalidExpressionSizeE", !59, i64 0, !45, i64 60, !45, i64 64}
!73 = !{!72, !45, i64 64}
!74 = !{!75, !54, i64 96}
!75 = !{!"_ZTSN6dealii14FunctionParserILi3EEE", !76, i64 0, !54, i64 96, !56, i64 104, !45, i64 108}
!76 = !{!"_ZTSN6dealii8FunctionILi3EEE", !41, i64 0, !44, i64 16, !45, i64 88}
!77 = !{!78, !45, i64 60}
!78 = !{!"_ZTSN6dealii14FunctionParserILi3EE13ExcParseErrorE", !59, i64 0, !45, i64 60, !54, i64 64}
!79 = !{!78, !54, i64 64}
!80 = !{!81, !45, i64 60}
!81 = !{!"_ZTSN6dealii14FunctionParserILi3EE24ExcInvalidExpressionSizeE", !59, i64 0, !45, i64 60, !45, i64 64}
!82 = !{!81, !45, i64 64}
!83 = !{!55, !55, i64 0}
!84 = !{!85, !54, i64 0}
!85 = !{!"_ZTSZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagE6_Guard", !54, i64 0}
!86 = !{!"function_entry_count", i64 67805}
!87 = !{!54, !54, i64 0}
