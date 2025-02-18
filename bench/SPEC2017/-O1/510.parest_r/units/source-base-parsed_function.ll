; ModuleID = 'source/base/parsed_function.cc'
source_filename = "source/base/parsed_function.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::piecewise_construct_t" = type { i8 }
%"class.dealii::Functions::ParsedFunction" = type { %"class.dealii::AutoDerivativeFunction.base", %"class.dealii::FunctionParser" }
%"class.dealii::AutoDerivativeFunction.base" = type <{ %"class.dealii::Function.base", [4 x i8], double, %"class.std::vector", i32 }>
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
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<dealii::Tensor<1, 1>, std::allocator<dealii::Tensor<1, 1>>>::_Vector_impl" }
%"struct.std::_Vector_base<dealii::Tensor<1, 1>, std::allocator<dealii::Tensor<1, 1>>>::_Vector_impl" = type { %"struct.std::_Vector_base<dealii::Tensor<1, 1>, std::allocator<dealii::Tensor<1, 1>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<dealii::Tensor<1, 1>, std::allocator<dealii::Tensor<1, 1>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.dealii::FunctionParser" = type { %"class.dealii::Function.base", ptr, i8, i32 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.dealii::Patterns::Anything" = type { %"class.dealii::Patterns::PatternBase" }
%"class.dealii::Patterns::PatternBase" = type { ptr }
%"class.std::tuple.58" = type { %"struct.std::_Tuple_impl.59" }
%"struct.std::_Tuple_impl.59" = type { %"struct.std::_Head_base.60" }
%"struct.std::_Head_base.60" = type { ptr }
%"class.std::tuple.54" = type { i8 }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base" }
%"struct.std::_Head_base" = type { ptr }
%"class.std::vector.6" = type { %"struct.std::_Vector_base.7" }
%"struct.std::_Vector_base.7" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::map.24" = type { %"class.std::_Rb_tree.25" }
%"class.std::_Rb_tree.25" = type { %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" = type { %"struct.std::_Rb_tree_key_compare.16", %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_key_compare.16" = type { %"struct.std::less.17" }
%"struct.std::less.17" = type { i8 }
%"class.dealii::StandardExceptions::ExcMessage" = type { %"class.dealii::ExceptionBase.base", ptr }
%"class.dealii::ExceptionBase.base" = type <{ %"class.std::exception", ptr, i32, [4 x i8], ptr, ptr, ptr, ptr, i32 }>
%"class.std::exception" = type { ptr }
%"struct.std::_Rb_tree_node" = type { %"struct.std::_Rb_tree_node_base", %"struct.__gnu_cxx::__aligned_membuf" }
%"struct.__gnu_cxx::__aligned_membuf" = type { [40 x i8] }
%"class.dealii::Functions::ParsedFunction.29" = type { %"class.dealii::AutoDerivativeFunction.base.38", %"class.dealii::FunctionParser.39" }
%"class.dealii::AutoDerivativeFunction.base.38" = type <{ %"class.dealii::Function.base.32", [4 x i8], double, %"class.std::vector.33", i32 }>
%"class.dealii::Function.base.32" = type <{ %"class.dealii::FunctionTime", %"class.dealii::Subscriptor", i32 }>
%"class.std::vector.33" = type { %"struct.std::_Vector_base.34" }
%"struct.std::_Vector_base.34" = type { %"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl" }
%"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl" = type { %"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.dealii::FunctionParser.39" = type { %"class.dealii::Function.base.32", ptr, i8, i32 }
%"class.dealii::Functions::ParsedFunction.41" = type { %"class.dealii::AutoDerivativeFunction.base.50", %"class.dealii::FunctionParser.51" }
%"class.dealii::AutoDerivativeFunction.base.50" = type <{ %"class.dealii::Function.base.44", [4 x i8], double, %"class.std::vector.45", i32 }>
%"class.dealii::Function.base.44" = type <{ %"class.dealii::FunctionTime", %"class.dealii::Subscriptor", i32 }>
%"class.std::vector.45" = type { %"struct.std::_Vector_base.46" }
%"struct.std::_Vector_base.46" = type { %"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl" }
%"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl" = type { %"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.dealii::FunctionParser.51" = type { %"class.dealii::Function.base.44", ptr, i8, i32 }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }

$_ZN6dealii9Functions14ParsedFunctionILi1EEC5Ejd = comdat any

$_ZN6dealii9Functions14ParsedFunctionILi1EE18declare_parametersERNS_16ParameterHandlerEj = comdat any

$_ZN6dealii9Functions14ParsedFunctionILi1EE16parse_parametersERNS_16ParameterHandlerE = comdat any

$_ZN6dealii18deal_II_exceptions9internals17issue_error_throwINS_18StandardExceptions10ExcMessageEEEvPKciS6_S6_S6_T_ = comdat any

$_ZNK6dealii9Functions14ParsedFunctionILi1EE12vector_valueERKNS_5PointILi1EEERNS_6VectorIdEE = comdat any

$_ZNK6dealii9Functions14ParsedFunctionILi1EE5valueERKNS_5PointILi1EEEj = comdat any

$_ZN6dealii9Functions14ParsedFunctionILi1EE8set_timeEd = comdat any

$_ZN6dealii9Functions14ParsedFunctionILi2EEC5Ejd = comdat any

$_ZN6dealii9Functions14ParsedFunctionILi2EE18declare_parametersERNS_16ParameterHandlerEj = comdat any

$_ZN6dealii9Functions14ParsedFunctionILi2EE16parse_parametersERNS_16ParameterHandlerE = comdat any

$_ZNK6dealii9Functions14ParsedFunctionILi2EE12vector_valueERKNS_5PointILi2EEERNS_6VectorIdEE = comdat any

$_ZNK6dealii9Functions14ParsedFunctionILi2EE5valueERKNS_5PointILi2EEEj = comdat any

$_ZN6dealii9Functions14ParsedFunctionILi2EE8set_timeEd = comdat any

$_ZN6dealii9Functions14ParsedFunctionILi3EEC5Ejd = comdat any

$_ZN6dealii9Functions14ParsedFunctionILi3EE18declare_parametersERNS_16ParameterHandlerEj = comdat any

$_ZN6dealii9Functions14ParsedFunctionILi3EE16parse_parametersERNS_16ParameterHandlerE = comdat any

$_ZNK6dealii9Functions14ParsedFunctionILi3EE12vector_valueERKNS_5PointILi3EEERNS_6VectorIdEE = comdat any

$_ZNK6dealii9Functions14ParsedFunctionILi3EE5valueERKNS_5PointILi3EEEj = comdat any

$_ZN6dealii9Functions14ParsedFunctionILi3EE8set_timeEd = comdat any

$_ZN6dealii9Functions14ParsedFunctionILi1EED2Ev = comdat any

$_ZN6dealii9Functions14ParsedFunctionILi1EED0Ev = comdat any

$_ZThn16_N6dealii9Functions14ParsedFunctionILi1EED1Ev = comdat any

$_ZThn16_N6dealii9Functions14ParsedFunctionILi1EED0Ev = comdat any

$_ZN6dealii9Functions14ParsedFunctionILi2EED2Ev = comdat any

$_ZN6dealii9Functions14ParsedFunctionILi2EED0Ev = comdat any

$_ZThn16_N6dealii9Functions14ParsedFunctionILi2EED1Ev = comdat any

$_ZThn16_N6dealii9Functions14ParsedFunctionILi2EED0Ev = comdat any

$_ZN6dealii9Functions14ParsedFunctionILi3EED2Ev = comdat any

$_ZN6dealii9Functions14ParsedFunctionILi3EED0Ev = comdat any

$_ZThn16_N6dealii9Functions14ParsedFunctionILi3EED1Ev = comdat any

$_ZThn16_N6dealii9Functions14ParsedFunctionILi3EED0Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN6dealii18StandardExceptions10ExcMessageD0Ev = comdat any

$_ZNK6dealii18StandardExceptions10ExcMessage10print_infoERSo = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E = comdat any

$_ZN6dealii18StandardExceptions10ExcMessageC2ERKS1_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEEvPSt13_Rb_tree_nodeIS8_EDpOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE24_M_get_insert_unique_posERS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_ = comdat any

$_ZTVN6dealii9Functions14ParsedFunctionILi1EEE = comdat any

$_ZTVN6dealii9Functions14ParsedFunctionILi2EEE = comdat any

$_ZTVN6dealii9Functions14ParsedFunctionILi3EEE = comdat any

$_ZTSN6dealii9Functions14ParsedFunctionILi1EEE = comdat any

$_ZTSN6dealii22AutoDerivativeFunctionILi1EEE = comdat any

$_ZTSN6dealii8FunctionILi1EEE = comdat any

$_ZTIN6dealii8FunctionILi1EEE = comdat any

$_ZTIN6dealii22AutoDerivativeFunctionILi1EEE = comdat any

$_ZTIN6dealii9Functions14ParsedFunctionILi1EEE = comdat any

$_ZTSN6dealii9Functions14ParsedFunctionILi2EEE = comdat any

$_ZTSN6dealii22AutoDerivativeFunctionILi2EEE = comdat any

$_ZTSN6dealii8FunctionILi2EEE = comdat any

$_ZTIN6dealii8FunctionILi2EEE = comdat any

$_ZTIN6dealii22AutoDerivativeFunctionILi2EEE = comdat any

$_ZTIN6dealii9Functions14ParsedFunctionILi2EEE = comdat any

$_ZTSN6dealii9Functions14ParsedFunctionILi3EEE = comdat any

$_ZTSN6dealii22AutoDerivativeFunctionILi3EEE = comdat any

$_ZTSN6dealii8FunctionILi3EEE = comdat any

$_ZTIN6dealii8FunctionILi3EEE = comdat any

$_ZTIN6dealii22AutoDerivativeFunctionILi3EEE = comdat any

$_ZTIN6dealii9Functions14ParsedFunctionILi3EEE = comdat any

$_ZTVN6dealii18StandardExceptions10ExcMessageE = comdat any

$_ZTSN6dealii18StandardExceptions10ExcMessageE = comdat any

$_ZTIN6dealii18StandardExceptions10ExcMessageE = comdat any

$_ZSt19piecewise_construct = comdat any

@_ZTVN6dealii9Functions14ParsedFunctionILi1EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii9Functions14ParsedFunctionILi1EEE, ptr @_ZN6dealii9Functions14ParsedFunctionILi1EED2Ev, ptr @_ZN6dealii9Functions14ParsedFunctionILi1EED0Ev, ptr @_ZN6dealii9Functions14ParsedFunctionILi1EE8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii9Functions14ParsedFunctionILi1EE5valueERKNS_5PointILi1EEEj, ptr @_ZNK6dealii9Functions14ParsedFunctionILi1EE12vector_valueERKNS_5PointILi1EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi1EE17vector_value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE, ptr @_ZNK6dealii22AutoDerivativeFunctionILi1EE8gradientERKNS_5PointILi1EEEj, ptr @_ZNK6dealii22AutoDerivativeFunctionILi1EE15vector_gradientERKNS_5PointILi1EEERSt6vectorINS_6TensorILi1ELi1EEESaIS8_EE, ptr @_ZNK6dealii22AutoDerivativeFunctionILi1EE13gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6TensorILi1ELi1EEESaISA_EEj, ptr @_ZNK6dealii22AutoDerivativeFunctionILi1EE20vector_gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi1EEESaISA_EESaISC_EE, ptr @_ZNK6dealii8FunctionILi1EE9laplacianERKNS_5PointILi1EEEj, ptr @_ZNK6dealii8FunctionILi1EE16vector_laplacianERKNS_5PointILi1EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi1EE14laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi1EE21vector_laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii9Functions14ParsedFunctionILi1EEE, ptr @_ZThn16_N6dealii9Functions14ParsedFunctionILi1EED1Ev, ptr @_ZThn16_N6dealii9Functions14ParsedFunctionILi1EED0Ev] }, comdat, align 8
@.str = private unnamed_addr constant [4 x i8] c"x,t\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Variable names\00", align 1
@.str.2 = private unnamed_addr constant [82 x i8] c"The name of the variables as they will be used in the function, separated by ','.\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"; 0\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Function expression\00", align 1
@.str.6 = private unnamed_addr constant [92 x i8] c"Separate vector valued expressions by ';' as ',' is used internally by the function parser.\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"Function constants\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [68 x i8] c"Any constant used inside the function which is not a variable name.\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"source/base/parsed_function.cc\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"this_c.size() == 2\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"ExcMessage(\22Invalid format\22)\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"Invalid format\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.15 = private unnamed_addr constant [44 x i8] c"std::sscanf(this_c[1].c_str(), \22%lf\22, &tmp)\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"ExcMessage(\22Double number?\22)\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"Double number?\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.21 = private unnamed_addr constant [53 x i8] c"ExcMessage(\22Not the correct size. Check your code.\22)\00", align 1
@.str.22 = private unnamed_addr constant [39 x i8] c"Not the correct size. Check your code.\00", align 1
@_ZTVN6dealii9Functions14ParsedFunctionILi2EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii9Functions14ParsedFunctionILi2EEE, ptr @_ZN6dealii9Functions14ParsedFunctionILi2EED2Ev, ptr @_ZN6dealii9Functions14ParsedFunctionILi2EED0Ev, ptr @_ZN6dealii9Functions14ParsedFunctionILi2EE8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii9Functions14ParsedFunctionILi2EE5valueERKNS_5PointILi2EEEj, ptr @_ZNK6dealii9Functions14ParsedFunctionILi2EE12vector_valueERKNS_5PointILi2EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE, ptr @_ZNK6dealii22AutoDerivativeFunctionILi2EE8gradientERKNS_5PointILi2EEEj, ptr @_ZNK6dealii22AutoDerivativeFunctionILi2EE15vector_gradientERKNS_5PointILi2EEERSt6vectorINS_6TensorILi1ELi2EEESaIS8_EE, ptr @_ZNK6dealii22AutoDerivativeFunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6TensorILi1ELi2EEESaISA_EEj, ptr @_ZNK6dealii22AutoDerivativeFunctionILi2EE20vector_gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi2EEESaISA_EESaISC_EE, ptr @_ZNK6dealii8FunctionILi2EE9laplacianERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE16vector_laplacianERKNS_5PointILi2EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi2EE14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi2EE21vector_laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii9Functions14ParsedFunctionILi2EEE, ptr @_ZThn16_N6dealii9Functions14ParsedFunctionILi2EED1Ev, ptr @_ZThn16_N6dealii9Functions14ParsedFunctionILi2EED0Ev] }, comdat, align 8
@.str.23 = private unnamed_addr constant [6 x i8] c"x,y,t\00", align 1
@_ZTVN6dealii9Functions14ParsedFunctionILi3EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii9Functions14ParsedFunctionILi3EEE, ptr @_ZN6dealii9Functions14ParsedFunctionILi3EED2Ev, ptr @_ZN6dealii9Functions14ParsedFunctionILi3EED0Ev, ptr @_ZN6dealii9Functions14ParsedFunctionILi3EE8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii9Functions14ParsedFunctionILi3EE5valueERKNS_5PointILi3EEEj, ptr @_ZNK6dealii9Functions14ParsedFunctionILi3EE12vector_valueERKNS_5PointILi3EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE, ptr @_ZNK6dealii22AutoDerivativeFunctionILi3EE8gradientERKNS_5PointILi3EEEj, ptr @_ZNK6dealii22AutoDerivativeFunctionILi3EE15vector_gradientERKNS_5PointILi3EEERSt6vectorINS_6TensorILi1ELi3EEESaIS8_EE, ptr @_ZNK6dealii22AutoDerivativeFunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6TensorILi1ELi3EEESaISA_EEj, ptr @_ZNK6dealii22AutoDerivativeFunctionILi3EE20vector_gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi3EEESaISA_EESaISC_EE, ptr @_ZNK6dealii8FunctionILi3EE9laplacianERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE16vector_laplacianERKNS_5PointILi3EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi3EE14laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi3EE21vector_laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii9Functions14ParsedFunctionILi3EEE, ptr @_ZThn16_N6dealii9Functions14ParsedFunctionILi3EED1Ev, ptr @_ZThn16_N6dealii9Functions14ParsedFunctionILi3EED0Ev] }, comdat, align 8
@.str.24 = private unnamed_addr constant [8 x i8] c"x,y,z,t\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN6dealii9Functions14ParsedFunctionILi1EEE = weak_odr dso_local constant [42 x i8] c"N6dealii9Functions14ParsedFunctionILi1EEE\00", comdat, align 1
@_ZTSN6dealii22AutoDerivativeFunctionILi1EEE = linkonce_odr dso_local constant [40 x i8] c"N6dealii22AutoDerivativeFunctionILi1EEE\00", comdat, align 1
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN6dealii8FunctionILi1EEE = linkonce_odr dso_local constant [25 x i8] c"N6dealii8FunctionILi1EEE\00", comdat, align 1
@_ZTIN6dealii12FunctionTimeE = external constant ptr
@_ZTIN6dealii11SubscriptorE = external constant ptr
@_ZTIN6dealii8FunctionILi1EEE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN6dealii8FunctionILi1EEE, i32 0, i32 2, ptr @_ZTIN6dealii12FunctionTimeE, i64 2, ptr @_ZTIN6dealii11SubscriptorE, i64 4098 }, comdat, align 8
@_ZTIN6dealii22AutoDerivativeFunctionILi1EEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii22AutoDerivativeFunctionILi1EEE, ptr @_ZTIN6dealii8FunctionILi1EEE }, comdat, align 8
@_ZTIN6dealii9Functions14ParsedFunctionILi1EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9Functions14ParsedFunctionILi1EEE, ptr @_ZTIN6dealii22AutoDerivativeFunctionILi1EEE }, comdat, align 8
@_ZTSN6dealii9Functions14ParsedFunctionILi2EEE = weak_odr dso_local constant [42 x i8] c"N6dealii9Functions14ParsedFunctionILi2EEE\00", comdat, align 1
@_ZTSN6dealii22AutoDerivativeFunctionILi2EEE = linkonce_odr dso_local constant [40 x i8] c"N6dealii22AutoDerivativeFunctionILi2EEE\00", comdat, align 1
@_ZTSN6dealii8FunctionILi2EEE = linkonce_odr dso_local constant [25 x i8] c"N6dealii8FunctionILi2EEE\00", comdat, align 1
@_ZTIN6dealii8FunctionILi2EEE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN6dealii8FunctionILi2EEE, i32 0, i32 2, ptr @_ZTIN6dealii12FunctionTimeE, i64 2, ptr @_ZTIN6dealii11SubscriptorE, i64 4098 }, comdat, align 8
@_ZTIN6dealii22AutoDerivativeFunctionILi2EEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii22AutoDerivativeFunctionILi2EEE, ptr @_ZTIN6dealii8FunctionILi2EEE }, comdat, align 8
@_ZTIN6dealii9Functions14ParsedFunctionILi2EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9Functions14ParsedFunctionILi2EEE, ptr @_ZTIN6dealii22AutoDerivativeFunctionILi2EEE }, comdat, align 8
@_ZTSN6dealii9Functions14ParsedFunctionILi3EEE = weak_odr dso_local constant [42 x i8] c"N6dealii9Functions14ParsedFunctionILi3EEE\00", comdat, align 1
@_ZTSN6dealii22AutoDerivativeFunctionILi3EEE = linkonce_odr dso_local constant [40 x i8] c"N6dealii22AutoDerivativeFunctionILi3EEE\00", comdat, align 1
@_ZTSN6dealii8FunctionILi3EEE = linkonce_odr dso_local constant [25 x i8] c"N6dealii8FunctionILi3EEE\00", comdat, align 1
@_ZTIN6dealii8FunctionILi3EEE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN6dealii8FunctionILi3EEE, i32 0, i32 2, ptr @_ZTIN6dealii12FunctionTimeE, i64 2, ptr @_ZTIN6dealii11SubscriptorE, i64 4098 }, comdat, align 8
@_ZTIN6dealii22AutoDerivativeFunctionILi3EEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii22AutoDerivativeFunctionILi3EEE, ptr @_ZTIN6dealii8FunctionILi3EEE }, comdat, align 8
@_ZTIN6dealii9Functions14ParsedFunctionILi3EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9Functions14ParsedFunctionILi3EEE, ptr @_ZTIN6dealii22AutoDerivativeFunctionILi3EEE }, comdat, align 8
@_ZTVN6dealii18StandardExceptions10ExcMessageE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN6dealii18StandardExceptions10ExcMessageE, ptr @_ZN6dealii13ExceptionBaseD2Ev, ptr @_ZN6dealii18StandardExceptions10ExcMessageD0Ev, ptr @_ZNK6dealii13ExceptionBase4whatEv, ptr @_ZNK6dealii18StandardExceptions10ExcMessage10print_infoERSo] }, comdat, align 8
@_ZTSN6dealii18StandardExceptions10ExcMessageE = linkonce_odr dso_local constant [42 x i8] c"N6dealii18StandardExceptions10ExcMessageE\00", comdat, align 1
@_ZTIN6dealii13ExceptionBaseE = external constant ptr
@_ZTIN6dealii18StandardExceptions10ExcMessageE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii18StandardExceptions10ExcMessageE, ptr @_ZTIN6dealii13ExceptionBaseE }, comdat, align 8
@.str.26 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@_ZSt19piecewise_construct = linkonce_odr dso_local constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1

@_ZN6dealii9Functions14ParsedFunctionILi1EEC1Ejd = weak_odr dso_local unnamed_addr alias void (ptr, i32, double), ptr @_ZN6dealii9Functions14ParsedFunctionILi1EEC2Ejd
@_ZN6dealii9Functions14ParsedFunctionILi2EEC1Ejd = weak_odr dso_local unnamed_addr alias void (ptr, i32, double), ptr @_ZN6dealii9Functions14ParsedFunctionILi2EEC2Ejd
@_ZN6dealii9Functions14ParsedFunctionILi3EEC1Ejd = weak_odr dso_local unnamed_addr alias void (ptr, i32, double), ptr @_ZN6dealii9Functions14ParsedFunctionILi3EEC2Ejd

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii9Functions14ParsedFunctionILi1EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(248) %0, i32 noundef %1, double noundef %2) unnamed_addr #0 comdat($_ZN6dealii9Functions14ParsedFunctionILi1EEC5Ejd) align 2 personality ptr @__gxx_personality_v0 !annotation !34 {
  tail call void @_ZN6dealii22AutoDerivativeFunctionILi1EEC2Edjd(ptr noundef nonnull align 8 dereferenceable(132) %0, double noundef %2, i32 noundef %1, double noundef 0.000000e+00)
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14ParsedFunctionILi1EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14ParsedFunctionILi1EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !35
  %5 = getelementptr inbounds %"class.dealii::Functions::ParsedFunction", ptr %0, i64 0, i32 1
  invoke void @_ZN6dealii14FunctionParserILi1EEC1Ejd(ptr noundef nonnull align 8 dereferenceable(112) %5, i32 noundef %1, double noundef 0.000000e+00)
          to label %6 unwind label %7

6:                                                ; preds = %3
  ret void

7:                                                ; preds = %3
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6dealii22AutoDerivativeFunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(132) %0) #19
  resume { ptr, i32 } %8
}

declare void @_ZN6dealii22AutoDerivativeFunctionILi1EEC2Edjd(ptr noundef nonnull align 8 dereferenceable(132), double noundef, i32 noundef, double noundef) unnamed_addr #1

declare void @_ZN6dealii14FunctionParserILi1EEC1Ejd(ptr noundef nonnull align 8 dereferenceable(112), i32 noundef, double noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN6dealii22AutoDerivativeFunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(132)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii9Functions14ParsedFunctionILi1EE18declare_parametersERNS_16ParameterHandlerEj(ptr noundef nonnull align 8 dereferenceable(288) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !34 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %"class.std::__cxx11::basic_string", align 8
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  %10 = alloca %"class.dealii::Patterns::Anything", align 8
  %11 = alloca %"class.std::__cxx11::basic_string", align 8
  %12 = alloca %"class.std::__cxx11::basic_string", align 8
  %13 = alloca %"class.std::__cxx11::basic_string", align 8
  %14 = alloca %"class.dealii::Patterns::Anything", align 8
  %15 = alloca %"class.std::__cxx11::basic_string", align 8
  %16 = alloca %"class.std::__cxx11::basic_string", align 8
  %17 = alloca %"class.std::__cxx11::basic_string", align 8
  %18 = alloca %"class.dealii::Patterns::Anything", align 8
  %19 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #19
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 2
  store ptr %20, ptr %8, align 8, !tbaa !38
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 1
  store i64 0, ptr %21, align 8, !tbaa !42
  store i8 0, ptr %20, align 8, !tbaa !45
  %22 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str, i64 noundef 3)
          to label %23 unwind label %61

23:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #19
  %24 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 2
  store ptr %24, ptr %9, align 8, !tbaa !38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %24, ptr noundef nonnull align 1 dereferenceable(14) @.str.1, i64 14, i1 false), !prof !46
  %25 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 1
  store i64 14, ptr %25, align 8, !tbaa !42
  %26 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 2, i32 1, i64 6
  store i8 0, ptr %26, align 2, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #19
  invoke void @_ZN6dealii8Patterns8AnythingC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %27 unwind label %63

27:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #19
  %28 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %11, i64 0, i32 2
  store ptr %28, ptr %11, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  store i64 81, ptr %7, align 8, !tbaa !47
  %29 = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 0)
          to label %30 unwind label %65

30:                                               ; preds = %27
  store ptr %29, ptr %11, align 8, !tbaa !48
  %31 = load i64, ptr %7, align 8, !tbaa !47
  store i64 %31, ptr %28, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(81) %29, ptr noundef nonnull align 1 dereferenceable(81) @.str.2, i64 81, i1 false), !prof !46
  %32 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %11, i64 0, i32 1
  store i64 %31, ptr %32, align 8, !tbaa !42
  %33 = getelementptr inbounds i8, ptr %29, i64 %31
  store i8 0, ptr %33, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  invoke void @_ZN6dealii16ParameterHandler13declare_entryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_RKNS_8Patterns11PatternBaseES8_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %34 unwind label %67

34:                                               ; preds = %30
  %35 = load ptr, ptr %11, align 8, !tbaa !48
  %36 = icmp eq ptr %35, %28
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i64, ptr %32, align 8, !tbaa !42
  %39 = icmp ult i64 %38, 16
  call void @llvm.assume(i1 %39)
  br label %41

40:                                               ; preds = %34
  call void @_ZdlPv(ptr noundef %35) #20
  br label %41

41:                                               ; preds = %37, %40
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #19
  call void @_ZN6dealii8Patterns11PatternBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #19
  %42 = load ptr, ptr %9, align 8, !tbaa !48
  %43 = icmp eq ptr %42, %24
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i64, ptr %25, align 8, !tbaa !42
  %46 = icmp ult i64 %45, 16
  call void @llvm.assume(i1 %46)
  br label %48

47:                                               ; preds = %41
  call void @_ZdlPv(ptr noundef %42) #20
  br label %48

48:                                               ; preds = %44, %47
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #19
  %49 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 0, i32 2
  store ptr %49, ptr %12, align 8, !tbaa !38
  store i8 48, ptr %49, align 8, !tbaa !45
  %50 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 0, i32 1
  store i64 1, ptr %50, align 8, !tbaa !42
  %51 = getelementptr inbounds i8, ptr %12, i64 17
  store i8 0, ptr %51, align 1, !tbaa !45
  %52 = icmp ugt i32 %1, 1
  br i1 %52, label %86, label %53

53:                                               ; preds = %95, %48
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %13) #19
  %54 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %13, i64 0, i32 2
  store ptr %54, ptr %13, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  store i64 19, ptr %6, align 8, !tbaa !47
  %55 = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 0)
          to label %56 unwind label %176

56:                                               ; preds = %53
  store ptr %55, ptr %13, align 8, !tbaa !48
  %57 = load i64, ptr %6, align 8, !tbaa !47
  store i64 %57, ptr %54, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %55, ptr noundef nonnull align 1 dereferenceable(19) @.str.5, i64 19, i1 false), !prof !46
  %58 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %13, i64 0, i32 1
  store i64 %57, ptr %58, align 8, !tbaa !42
  %59 = load ptr, ptr %13, align 8, !tbaa !48
  %60 = getelementptr inbounds i8, ptr %59, i64 %57
  store i8 0, ptr %60, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #19
  invoke void @_ZN6dealii8Patterns8AnythingC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %102 unwind label %178

61:                                               ; preds = %2
  %62 = landingpad { ptr, i32 }
          cleanup
  br label %244

63:                                               ; preds = %23
  %64 = landingpad { ptr, i32 }
          cleanup
  br label %77

65:                                               ; preds = %27
  %66 = landingpad { ptr, i32 }
          cleanup
  br label %75

67:                                               ; preds = %30
  %68 = landingpad { ptr, i32 }
          cleanup
  %69 = load ptr, ptr %11, align 8, !tbaa !48
  %70 = icmp eq ptr %69, %28
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load i64, ptr %32, align 8, !tbaa !42
  %73 = icmp ult i64 %72, 16
  call void @llvm.assume(i1 %73)
  br label %75

74:                                               ; preds = %67
  call void @_ZdlPv(ptr noundef %69) #20
  br label %75

75:                                               ; preds = %74, %71, %65
  %76 = phi { ptr, i32 } [ %66, %65 ], [ %68, %71 ], [ %68, %74 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #19
  call void @_ZN6dealii8Patterns11PatternBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #19
  br label %77

77:                                               ; preds = %75, %63
  %78 = phi { ptr, i32 } [ %76, %75 ], [ %64, %63 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #19
  %79 = load ptr, ptr %9, align 8, !tbaa !48
  %80 = icmp eq ptr %79, %24
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i64, ptr %25, align 8, !tbaa !42
  %83 = icmp ult i64 %82, 16
  call void @llvm.assume(i1 %83)
  br label %85

84:                                               ; preds = %77
  call void @_ZdlPv(ptr noundef %79) #20
  br label %85

85:                                               ; preds = %84, %81
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #19
  br label %244

86:                                               ; preds = %48, %95
  %87 = phi i32 [ %96, %95 ], [ 1, %48 ]
  %88 = load i64, ptr %50, align 8, !tbaa !42
  %89 = add i64 %88, -4611686018427387901
  %90 = icmp ult i64 %89, 3
  br i1 %90, label %91, label %93, !prof !49

91:                                               ; preds = %86
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #21
          to label %92 unwind label %100

92:                                               ; preds = %91
  unreachable

93:                                               ; preds = %86
  %94 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.4, i64 noundef 3)
          to label %95 unwind label %98

95:                                               ; preds = %93
  %96 = add nuw i32 %87, 1
  %97 = icmp eq i32 %96, %1
  br i1 %97, label %53, label %86, !llvm.loop !50

98:                                               ; preds = %93
  %99 = landingpad { ptr, i32 }
          cleanup
  br label %235

100:                                              ; preds = %91
  %101 = landingpad { ptr, i32 }
          cleanup
  br label %235

102:                                              ; preds = %56
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %15) #19
  %103 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %15, i64 0, i32 2
  store ptr %103, ptr %15, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  store i64 91, ptr %5, align 8, !tbaa !47
  %104 = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef 0)
          to label %105 unwind label %180

105:                                              ; preds = %102
  store ptr %104, ptr %15, align 8, !tbaa !48
  %106 = load i64, ptr %5, align 8, !tbaa !47
  store i64 %106, ptr %103, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(91) %104, ptr noundef nonnull align 1 dereferenceable(91) @.str.6, i64 91, i1 false), !prof !46
  %107 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %15, i64 0, i32 1
  store i64 %106, ptr %107, align 8, !tbaa !42
  %108 = getelementptr inbounds i8, ptr %104, i64 %106
  store i8 0, ptr %108, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  invoke void @_ZN6dealii16ParameterHandler13declare_entryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_RKNS_8Patterns11PatternBaseES8_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %109 unwind label %182

109:                                              ; preds = %105
  %110 = load ptr, ptr %15, align 8, !tbaa !48
  %111 = icmp eq ptr %110, %103
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load i64, ptr %107, align 8, !tbaa !42
  %114 = icmp ult i64 %113, 16
  call void @llvm.assume(i1 %114)
  br label %116

115:                                              ; preds = %109
  call void @_ZdlPv(ptr noundef %110) #20
  br label %116

116:                                              ; preds = %112, %115
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #19
  call void @_ZN6dealii8Patterns11PatternBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #19
  %117 = load ptr, ptr %13, align 8, !tbaa !48
  %118 = icmp eq ptr %117, %54
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load i64, ptr %58, align 8, !tbaa !42
  %121 = icmp ult i64 %120, 16
  call void @llvm.assume(i1 %121)
  br label %123

122:                                              ; preds = %116
  call void @_ZdlPv(ptr noundef %117) #20
  br label %123

123:                                              ; preds = %119, %122
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %16) #19
  %124 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %16, i64 0, i32 2
  store ptr %124, ptr %16, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  store i64 18, ptr %4, align 8, !tbaa !47
  %125 = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
          to label %126 unwind label %202

126:                                              ; preds = %123
  store ptr %125, ptr %16, align 8, !tbaa !48
  %127 = load i64, ptr %4, align 8, !tbaa !47
  store i64 %127, ptr %124, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %125, ptr noundef nonnull align 1 dereferenceable(18) @.str.7, i64 18, i1 false), !prof !46
  %128 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %16, i64 0, i32 1
  store i64 %127, ptr %128, align 8, !tbaa !42
  %129 = load ptr, ptr %16, align 8, !tbaa !48
  %130 = getelementptr inbounds i8, ptr %129, i64 %127
  store i8 0, ptr %130, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %17) #19
  %131 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %17, i64 0, i32 2
  store ptr %131, ptr %17, align 8, !tbaa !38
  %132 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %17, i64 0, i32 1
  store i64 0, ptr %132, align 8, !tbaa !42
  store i8 0, ptr %131, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #19
  invoke void @_ZN6dealii8Patterns8AnythingC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %133 unwind label %204

133:                                              ; preds = %126
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %19) #19
  %134 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %19, i64 0, i32 2
  store ptr %134, ptr %19, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  store i64 67, ptr %3, align 8, !tbaa !47
  %135 = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 0)
          to label %136 unwind label %206

136:                                              ; preds = %133
  store ptr %135, ptr %19, align 8, !tbaa !48
  %137 = load i64, ptr %3, align 8, !tbaa !47
  store i64 %137, ptr %134, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(67) %135, ptr noundef nonnull align 1 dereferenceable(67) @.str.9, i64 67, i1 false), !prof !46
  %138 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %19, i64 0, i32 1
  store i64 %137, ptr %138, align 8, !tbaa !42
  %139 = getelementptr inbounds i8, ptr %135, i64 %137
  store i8 0, ptr %139, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  invoke void @_ZN6dealii16ParameterHandler13declare_entryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_RKNS_8Patterns11PatternBaseES8_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %140 unwind label %208

140:                                              ; preds = %136
  %141 = load ptr, ptr %19, align 8, !tbaa !48
  %142 = icmp eq ptr %141, %134
  br i1 %142, label %143, label %146

143:                                              ; preds = %140
  %144 = load i64, ptr %138, align 8, !tbaa !42
  %145 = icmp ult i64 %144, 16
  call void @llvm.assume(i1 %145)
  br label %147

146:                                              ; preds = %140
  call void @_ZdlPv(ptr noundef %141) #20
  br label %147

147:                                              ; preds = %143, %146
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %19) #19
  call void @_ZN6dealii8Patterns11PatternBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %18) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #19
  %148 = load ptr, ptr %17, align 8, !tbaa !48
  %149 = icmp eq ptr %148, %131
  br i1 %149, label %150, label %153

150:                                              ; preds = %147
  %151 = load i64, ptr %132, align 8, !tbaa !42
  %152 = icmp ult i64 %151, 16
  call void @llvm.assume(i1 %152)
  br label %154

153:                                              ; preds = %147
  call void @_ZdlPv(ptr noundef %148) #20
  br label %154

154:                                              ; preds = %150, %153
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %17) #19
  %155 = load ptr, ptr %16, align 8, !tbaa !48
  %156 = icmp eq ptr %155, %124
  br i1 %156, label %157, label %160

157:                                              ; preds = %154
  %158 = load i64, ptr %128, align 8, !tbaa !42
  %159 = icmp ult i64 %158, 16
  call void @llvm.assume(i1 %159)
  br label %161

160:                                              ; preds = %154
  call void @_ZdlPv(ptr noundef %155) #20
  br label %161

161:                                              ; preds = %157, %160
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %16) #19
  %162 = load ptr, ptr %12, align 8, !tbaa !48
  %163 = icmp eq ptr %162, %49
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = load i64, ptr %50, align 8, !tbaa !42
  %166 = icmp ult i64 %165, 16
  call void @llvm.assume(i1 %166)
  br label %168

167:                                              ; preds = %161
  call void @_ZdlPv(ptr noundef %162) #20
  br label %168

168:                                              ; preds = %164, %167
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #19
  %169 = load ptr, ptr %8, align 8, !tbaa !48
  %170 = icmp eq ptr %169, %20
  br i1 %170, label %171, label %174

171:                                              ; preds = %168
  %172 = load i64, ptr %21, align 8, !tbaa !42
  %173 = icmp ult i64 %172, 16
  call void @llvm.assume(i1 %173)
  br label %175

174:                                              ; preds = %168
  call void @_ZdlPv(ptr noundef %169) #20
  br label %175

175:                                              ; preds = %171, %174
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #19
  ret void

176:                                              ; preds = %53
  %177 = landingpad { ptr, i32 }
          cleanup
  br label %200

178:                                              ; preds = %56
  %179 = landingpad { ptr, i32 }
          cleanup
  br label %192

180:                                              ; preds = %102
  %181 = landingpad { ptr, i32 }
          cleanup
  br label %190

182:                                              ; preds = %105
  %183 = landingpad { ptr, i32 }
          cleanup
  %184 = load ptr, ptr %15, align 8, !tbaa !48
  %185 = icmp eq ptr %184, %103
  br i1 %185, label %186, label %189

186:                                              ; preds = %182
  %187 = load i64, ptr %107, align 8, !tbaa !42
  %188 = icmp ult i64 %187, 16
  call void @llvm.assume(i1 %188)
  br label %190

189:                                              ; preds = %182
  call void @_ZdlPv(ptr noundef %184) #20
  br label %190

190:                                              ; preds = %189, %186, %180
  %191 = phi { ptr, i32 } [ %181, %180 ], [ %183, %186 ], [ %183, %189 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #19
  call void @_ZN6dealii8Patterns11PatternBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #19
  br label %192

192:                                              ; preds = %190, %178
  %193 = phi { ptr, i32 } [ %191, %190 ], [ %179, %178 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #19
  %194 = load ptr, ptr %13, align 8, !tbaa !48
  %195 = icmp eq ptr %194, %54
  br i1 %195, label %196, label %199

196:                                              ; preds = %192
  %197 = load i64, ptr %58, align 8, !tbaa !42
  %198 = icmp ult i64 %197, 16
  call void @llvm.assume(i1 %198)
  br label %200

199:                                              ; preds = %192
  call void @_ZdlPv(ptr noundef %194) #20
  br label %200

200:                                              ; preds = %199, %196, %176
  %201 = phi { ptr, i32 } [ %177, %176 ], [ %193, %196 ], [ %193, %199 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #19
  br label %235

202:                                              ; preds = %123
  %203 = landingpad { ptr, i32 }
          cleanup
  br label %233

204:                                              ; preds = %126
  %205 = landingpad { ptr, i32 }
          cleanup
  br label %218

206:                                              ; preds = %133
  %207 = landingpad { ptr, i32 }
          cleanup
  br label %216

208:                                              ; preds = %136
  %209 = landingpad { ptr, i32 }
          cleanup
  %210 = load ptr, ptr %19, align 8, !tbaa !48
  %211 = icmp eq ptr %210, %134
  br i1 %211, label %212, label %215

212:                                              ; preds = %208
  %213 = load i64, ptr %138, align 8, !tbaa !42
  %214 = icmp ult i64 %213, 16
  call void @llvm.assume(i1 %214)
  br label %216

215:                                              ; preds = %208
  call void @_ZdlPv(ptr noundef %210) #20
  br label %216

216:                                              ; preds = %215, %212, %206
  %217 = phi { ptr, i32 } [ %207, %206 ], [ %209, %212 ], [ %209, %215 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %19) #19
  call void @_ZN6dealii8Patterns11PatternBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %18) #19
  br label %218

218:                                              ; preds = %216, %204
  %219 = phi { ptr, i32 } [ %217, %216 ], [ %205, %204 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #19
  %220 = load ptr, ptr %17, align 8, !tbaa !48
  %221 = icmp eq ptr %220, %131
  br i1 %221, label %222, label %225

222:                                              ; preds = %218
  %223 = load i64, ptr %132, align 8, !tbaa !42
  %224 = icmp ult i64 %223, 16
  call void @llvm.assume(i1 %224)
  br label %226

225:                                              ; preds = %218
  call void @_ZdlPv(ptr noundef %220) #20
  br label %226

226:                                              ; preds = %225, %222
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %17) #19
  %227 = load ptr, ptr %16, align 8, !tbaa !48
  %228 = icmp eq ptr %227, %124
  br i1 %228, label %229, label %232

229:                                              ; preds = %226
  %230 = load i64, ptr %128, align 8, !tbaa !42
  %231 = icmp ult i64 %230, 16
  call void @llvm.assume(i1 %231)
  br label %233

232:                                              ; preds = %226
  call void @_ZdlPv(ptr noundef %227) #20
  br label %233

233:                                              ; preds = %232, %229, %202
  %234 = phi { ptr, i32 } [ %203, %202 ], [ %219, %229 ], [ %219, %232 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %16) #19
  br label %235

235:                                              ; preds = %98, %100, %233, %200
  %236 = phi { ptr, i32 } [ %234, %233 ], [ %201, %200 ], [ %99, %98 ], [ %101, %100 ]
  %237 = load ptr, ptr %12, align 8, !tbaa !48
  %238 = icmp eq ptr %237, %49
  br i1 %238, label %239, label %242

239:                                              ; preds = %235
  %240 = load i64, ptr %50, align 8, !tbaa !42
  %241 = icmp ult i64 %240, 16
  call void @llvm.assume(i1 %241)
  br label %243

242:                                              ; preds = %235
  call void @_ZdlPv(ptr noundef %237) #20
  br label %243

243:                                              ; preds = %242, %239
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #19
  br label %244

244:                                              ; preds = %243, %85, %61
  %245 = phi { ptr, i32 } [ %236, %243 ], [ %78, %85 ], [ %62, %61 ]
  %246 = load ptr, ptr %8, align 8, !tbaa !48
  %247 = icmp eq ptr %246, %20
  br i1 %247, label %248, label %251

248:                                              ; preds = %244
  %249 = load i64, ptr %21, align 8, !tbaa !42
  %250 = icmp ult i64 %249, 16
  call void @llvm.assume(i1 %250)
  br label %252

251:                                              ; preds = %244
  call void @_ZdlPv(ptr noundef %246) #20
  br label %252

252:                                              ; preds = %248, %251
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #19
  resume { ptr, i32 } %245
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare void @_ZN6dealii16ParameterHandler13declare_entryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_RKNS_8Patterns11PatternBaseES8_(ptr noundef nonnull align 8 dereferenceable(288), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare void @_ZN6dealii8Patterns8AnythingC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind
declare void @_ZN6dealii8Patterns11PatternBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii9Functions14ParsedFunctionILi1EE16parse_parametersERNS_16ParameterHandlerE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(288) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !34 {
  %3 = alloca %"class.std::tuple.58", align 8
  %4 = alloca %"class.std::tuple.54", align 1
  %5 = alloca %"class.std::tuple.58", align 8
  %6 = alloca %"class.std::tuple.54", align 1
  %7 = alloca %"class.std::tuple", align 8
  %8 = alloca %"class.std::tuple.54", align 1
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %"class.std::__cxx11::basic_string", align 8
  %15 = alloca %"class.std::__cxx11::basic_string", align 8
  %16 = alloca %"class.std::__cxx11::basic_string", align 8
  %17 = alloca %"class.std::__cxx11::basic_string", align 8
  %18 = alloca %"class.std::__cxx11::basic_string", align 8
  %19 = alloca %"class.std::__cxx11::basic_string", align 8
  %20 = alloca %"class.std::vector.6", align 8
  %21 = alloca %"class.std::map.24", align 8
  %22 = alloca %"class.std::vector.6", align 8
  %23 = alloca %"class.dealii::StandardExceptions::ExcMessage", align 8
  %24 = alloca double, align 8
  %25 = alloca %"class.dealii::StandardExceptions::ExcMessage", align 8
  %26 = alloca %"class.std::__cxx11::basic_string", align 8
  %27 = alloca %"class.std::__cxx11::basic_string", align 8
  %28 = alloca %"class.std::vector.6", align 8
  %29 = alloca %"class.dealii::StandardExceptions::ExcMessage", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %14) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %15) #19
  %30 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %15, i64 0, i32 2
  store ptr %30, ptr %15, align 8, !tbaa !38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %30, ptr noundef nonnull align 1 dereferenceable(14) @.str.1, i64 14, i1 false), !prof !46
  %31 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %15, i64 0, i32 1
  store i64 14, ptr %31, align 8, !tbaa !42
  %32 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %15, i64 0, i32 2, i32 1, i64 6
  store i8 0, ptr %32, align 2, !tbaa !45
  %33 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6dealii16ParameterHandler3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(288) %1, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %34 unwind label %152

34:                                               ; preds = %2
  %35 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %14, i64 0, i32 2
  store ptr %35, ptr %14, align 8, !tbaa !38
  %36 = load ptr, ptr %33, align 8, !tbaa !48
  %37 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %33, i64 0, i32 1
  %38 = load i64, ptr %37, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #19
  store i64 %38, ptr %13, align 8, !tbaa !47
  %39 = icmp ugt i64 %38, 15
  br i1 %39, label %40, label %44, !prof !53

40:                                               ; preds = %34
  %41 = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 0)
          to label %42 unwind label %152

42:                                               ; preds = %40
  store ptr %41, ptr %14, align 8, !tbaa !48
  %43 = load i64, ptr %13, align 8, !tbaa !47
  store i64 %43, ptr %35, align 8, !tbaa !45
  br label %44

44:                                               ; preds = %42, %34
  %45 = load ptr, ptr %14, align 8, !tbaa !48
  switch i64 %38, label %48 [
    i64 1, label %46
    i64 0, label %49
  ], !prof !54

46:                                               ; preds = %44
  %47 = load i8, ptr %36, align 1, !tbaa !45
  store i8 %47, ptr %45, align 1, !tbaa !45
  br label %49

48:                                               ; preds = %44
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %45, ptr align 1 %36, i64 %38, i1 false), !prof !55
  br label %49

49:                                               ; preds = %44, %46, %48
  %50 = load i64, ptr %13, align 8, !tbaa !47
  %51 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %14, i64 0, i32 1
  store i64 %50, ptr %51, align 8, !tbaa !42
  %52 = load ptr, ptr %14, align 8, !tbaa !48
  %53 = getelementptr inbounds i8, ptr %52, i64 %50
  store i8 0, ptr %53, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #19
  %54 = load ptr, ptr %15, align 8, !tbaa !48
  %55 = icmp eq ptr %54, %30
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load i64, ptr %31, align 8, !tbaa !42
  %58 = icmp ult i64 %57, 16
  call void @llvm.assume(i1 %58)
  br label %60

59:                                               ; preds = %49
  call void @_ZdlPv(ptr noundef %54) #20
  br label %60

60:                                               ; preds = %56, %59
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %16) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %17) #19
  %61 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %17, i64 0, i32 2
  store ptr %61, ptr %17, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #19
  store i64 19, ptr %12, align 8, !tbaa !47
  %62 = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 0)
          to label %63 unwind label %161

63:                                               ; preds = %60
  store ptr %62, ptr %17, align 8, !tbaa !48
  %64 = load i64, ptr %12, align 8, !tbaa !47
  store i64 %64, ptr %61, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %62, ptr noundef nonnull align 1 dereferenceable(19) @.str.5, i64 19, i1 false), !prof !46
  %65 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %17, i64 0, i32 1
  store i64 %64, ptr %65, align 8, !tbaa !42
  %66 = load ptr, ptr %17, align 8, !tbaa !48
  %67 = getelementptr inbounds i8, ptr %66, i64 %64
  store i8 0, ptr %67, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #19
  %68 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6dealii16ParameterHandler3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(288) %1, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %69 unwind label %163

69:                                               ; preds = %63
  %70 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %16, i64 0, i32 2
  store ptr %70, ptr %16, align 8, !tbaa !38
  %71 = load ptr, ptr %68, align 8, !tbaa !48
  %72 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %68, i64 0, i32 1
  %73 = load i64, ptr %72, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #19
  store i64 %73, ptr %11, align 8, !tbaa !47
  %74 = icmp ugt i64 %73, 15
  br i1 %74, label %75, label %79, !prof !53

75:                                               ; preds = %69
  %76 = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef 0)
          to label %77 unwind label %163

77:                                               ; preds = %75
  store ptr %76, ptr %16, align 8, !tbaa !48
  %78 = load i64, ptr %11, align 8, !tbaa !47
  store i64 %78, ptr %70, align 8, !tbaa !45
  br label %79

79:                                               ; preds = %77, %69
  %80 = load ptr, ptr %16, align 8, !tbaa !48
  switch i64 %73, label %83 [
    i64 1, label %81
    i64 0, label %84
  ], !prof !54

81:                                               ; preds = %79
  %82 = load i8, ptr %71, align 1, !tbaa !45
  store i8 %82, ptr %80, align 1, !tbaa !45
  br label %84

83:                                               ; preds = %79
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %80, ptr align 1 %71, i64 %73, i1 false), !prof !55
  br label %84

84:                                               ; preds = %79, %81, %83
  %85 = load i64, ptr %11, align 8, !tbaa !47
  %86 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %16, i64 0, i32 1
  store i64 %85, ptr %86, align 8, !tbaa !42
  %87 = load ptr, ptr %16, align 8, !tbaa !48
  %88 = getelementptr inbounds i8, ptr %87, i64 %85
  store i8 0, ptr %88, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #19
  %89 = load ptr, ptr %17, align 8, !tbaa !48
  %90 = icmp eq ptr %89, %61
  br i1 %90, label %91, label %94

91:                                               ; preds = %84
  %92 = load i64, ptr %65, align 8, !tbaa !42
  %93 = icmp ult i64 %92, 16
  call void @llvm.assume(i1 %93)
  br label %95

94:                                               ; preds = %84
  call void @_ZdlPv(ptr noundef %89) #20
  br label %95

95:                                               ; preds = %91, %94
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %17) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %18) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %19) #19
  %96 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %19, i64 0, i32 2
  store ptr %96, ptr %19, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #19
  store i64 18, ptr %10, align 8, !tbaa !47
  %97 = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef 0)
          to label %98 unwind label %173

98:                                               ; preds = %95
  store ptr %97, ptr %19, align 8, !tbaa !48
  %99 = load i64, ptr %10, align 8, !tbaa !47
  store i64 %99, ptr %96, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %97, ptr noundef nonnull align 1 dereferenceable(18) @.str.7, i64 18, i1 false), !prof !46
  %100 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %19, i64 0, i32 1
  store i64 %99, ptr %100, align 8, !tbaa !42
  %101 = load ptr, ptr %19, align 8, !tbaa !48
  %102 = getelementptr inbounds i8, ptr %101, i64 %99
  store i8 0, ptr %102, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #19
  %103 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6dealii16ParameterHandler3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(288) %1, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %104 unwind label %175

104:                                              ; preds = %98
  %105 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %18, i64 0, i32 2
  store ptr %105, ptr %18, align 8, !tbaa !38
  %106 = load ptr, ptr %103, align 8, !tbaa !48
  %107 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %103, i64 0, i32 1
  %108 = load i64, ptr %107, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #19
  store i64 %108, ptr %9, align 8, !tbaa !47
  %109 = icmp ugt i64 %108, 15
  br i1 %109, label %110, label %114, !prof !53

110:                                              ; preds = %104
  %111 = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(8) %9, i64 noundef 0)
          to label %112 unwind label %175

112:                                              ; preds = %110
  store ptr %111, ptr %18, align 8, !tbaa !48
  %113 = load i64, ptr %9, align 8, !tbaa !47
  store i64 %113, ptr %105, align 8, !tbaa !45
  br label %114

114:                                              ; preds = %112, %104
  %115 = load ptr, ptr %18, align 8, !tbaa !48
  switch i64 %108, label %118 [
    i64 1, label %116
    i64 0, label %119
  ], !prof !54

116:                                              ; preds = %114
  %117 = load i8, ptr %106, align 1, !tbaa !45
  store i8 %117, ptr %115, align 1, !tbaa !45
  br label %119

118:                                              ; preds = %114
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %115, ptr align 1 %106, i64 %108, i1 false), !prof !55
  br label %119

119:                                              ; preds = %114, %116, %118
  %120 = load i64, ptr %9, align 8, !tbaa !47
  %121 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %18, i64 0, i32 1
  store i64 %120, ptr %121, align 8, !tbaa !42
  %122 = load ptr, ptr %18, align 8, !tbaa !48
  %123 = getelementptr inbounds i8, ptr %122, i64 %120
  store i8 0, ptr %123, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #19
  %124 = load ptr, ptr %19, align 8, !tbaa !48
  %125 = icmp eq ptr %124, %96
  br i1 %125, label %126, label %129

126:                                              ; preds = %119
  %127 = load i64, ptr %100, align 8, !tbaa !42
  %128 = icmp ult i64 %127, 16
  call void @llvm.assume(i1 %128)
  br label %130

129:                                              ; preds = %119
  call void @_ZdlPv(ptr noundef %124) #20
  br label %130

130:                                              ; preds = %126, %129
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %19) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %20) #19
  invoke void @_ZN6dealii9Utilities17split_string_listERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.6") align 8 %20, ptr noundef nonnull align 8 dereferenceable(32) %18, i8 noundef signext 44)
          to label %131 unwind label %185

131:                                              ; preds = %130
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %21) #19
  %132 = getelementptr inbounds i8, ptr %21, i64 8
  store i32 0, ptr %132, align 8, !tbaa !56
  %133 = getelementptr inbounds i8, ptr %21, i64 16
  store ptr null, ptr %133, align 8, !tbaa !60
  %134 = getelementptr inbounds i8, ptr %21, i64 24
  store ptr %132, ptr %134, align 8, !tbaa !61
  %135 = getelementptr inbounds i8, ptr %21, i64 32
  store ptr %132, ptr %135, align 8, !tbaa !62
  %136 = getelementptr inbounds i8, ptr %21, i64 40
  store i64 0, ptr %136, align 8, !tbaa !63
  %137 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %20, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !64
  %139 = load ptr, ptr %20, align 8, !tbaa !66
  %140 = icmp eq ptr %138, %139
  br i1 %140, label %145, label %141

141:                                              ; preds = %131
  %142 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %22, i64 0, i32 1
  %143 = getelementptr inbounds %"class.dealii::StandardExceptions::ExcMessage", ptr %23, i64 0, i32 1
  %144 = getelementptr inbounds %"class.dealii::StandardExceptions::ExcMessage", ptr %25, i64 0, i32 1
  br label %187

145:                                              ; preds = %282, %131
  %146 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %20, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %26) #19
  %147 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %26, i64 0, i32 2
  store ptr %147, ptr %26, align 8, !tbaa !38
  store i16 26992, ptr %147, align 8
  %148 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %26, i64 0, i32 1
  store i64 2, ptr %148, align 8, !tbaa !42
  %149 = getelementptr inbounds i8, ptr %26, i64 18
  store i8 0, ptr %149, align 2, !tbaa !45
  %150 = load ptr, ptr %133, align 8, !tbaa !60
  %151 = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef %150, ptr noundef nonnull %132, ptr noundef nonnull align 8 dereferenceable(32) %26)
          to label %321 unwind label %428

152:                                              ; preds = %40, %2
  %153 = landingpad { ptr, i32 }
          cleanup
  %154 = load ptr, ptr %15, align 8, !tbaa !48
  %155 = icmp eq ptr %154, %30
  br i1 %155, label %156, label %159

156:                                              ; preds = %152
  %157 = load i64, ptr %31, align 8, !tbaa !42
  %158 = icmp ult i64 %157, 16
  call void @llvm.assume(i1 %158)
  br label %160

159:                                              ; preds = %152
  call void @_ZdlPv(ptr noundef %154) #20
  br label %160

160:                                              ; preds = %159, %156
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #19
  br label %560

161:                                              ; preds = %60
  %162 = landingpad { ptr, i32 }
          cleanup
  br label %171

163:                                              ; preds = %75, %63
  %164 = landingpad { ptr, i32 }
          cleanup
  %165 = load ptr, ptr %17, align 8, !tbaa !48
  %166 = icmp eq ptr %165, %61
  br i1 %166, label %167, label %170

167:                                              ; preds = %163
  %168 = load i64, ptr %65, align 8, !tbaa !42
  %169 = icmp ult i64 %168, 16
  call void @llvm.assume(i1 %169)
  br label %171

170:                                              ; preds = %163
  call void @_ZdlPv(ptr noundef %165) #20
  br label %171

171:                                              ; preds = %170, %167, %161
  %172 = phi { ptr, i32 } [ %162, %161 ], [ %164, %167 ], [ %164, %170 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %17) #19
  br label %552

173:                                              ; preds = %95
  %174 = landingpad { ptr, i32 }
          cleanup
  br label %183

175:                                              ; preds = %110, %98
  %176 = landingpad { ptr, i32 }
          cleanup
  %177 = load ptr, ptr %19, align 8, !tbaa !48
  %178 = icmp eq ptr %177, %96
  br i1 %178, label %179, label %182

179:                                              ; preds = %175
  %180 = load i64, ptr %100, align 8, !tbaa !42
  %181 = icmp ult i64 %180, 16
  call void @llvm.assume(i1 %181)
  br label %183

182:                                              ; preds = %175
  call void @_ZdlPv(ptr noundef %177) #20
  br label %183

183:                                              ; preds = %182, %179, %173
  %184 = phi { ptr, i32 } [ %174, %173 ], [ %176, %179 ], [ %176, %182 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %19) #19
  br label %544

185:                                              ; preds = %130
  %186 = landingpad { ptr, i32 }
          cleanup
  br label %536

187:                                              ; preds = %141, %282
  %188 = phi ptr [ %139, %141 ], [ %286, %282 ]
  %189 = phi i64 [ 0, %141 ], [ %284, %282 ]
  %190 = phi i32 [ 0, %141 ], [ %283, %282 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %22) #19
  %191 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %188, i64 %189
  invoke void @_ZN6dealii9Utilities17split_string_listERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.6") align 8 %22, ptr noundef nonnull align 8 dereferenceable(32) %191, i8 noundef signext 61)
          to label %192 unwind label %202

192:                                              ; preds = %187
  %193 = load ptr, ptr %142, align 8, !tbaa !64
  %194 = load ptr, ptr %22, align 8, !tbaa !66
  %195 = ptrtoint ptr %193 to i64
  %196 = ptrtoint ptr %194 to i64
  %197 = sub i64 %195, %196
  %198 = icmp eq i64 %197, 64
  br i1 %198, label %211, label %199

199:                                              ; preds = %192
  invoke void @_ZN6dealii13ExceptionBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(60) %23)
          to label %200 unwind label %205

200:                                              ; preds = %199
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii18StandardExceptions10ExcMessageE, i64 0, inrange i32 0, i64 2), ptr %23, align 8, !tbaa !35
  store ptr @.str.13, ptr %143, align 8, !tbaa !67
  invoke void @_ZN6dealii18deal_II_exceptions9internals17issue_error_throwINS_18StandardExceptions10ExcMessageEEEvPKciS6_S6_S6_T_(ptr noundef nonnull @.str.10, i32 noundef 86, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, ptr noundef nonnull %23)
          to label %201 unwind label %208

201:                                              ; preds = %200
  call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %23) #19
  br label %211

202:                                              ; preds = %187
  %203 = landingpad { ptr, i32 }
          cleanup
  %204 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %20, i64 0, i32 1
  br label %318

205:                                              ; preds = %199
  %206 = landingpad { ptr, i32 }
          cleanup
  %207 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %20, i64 0, i32 1
  br label %295

208:                                              ; preds = %200
  %209 = landingpad { ptr, i32 }
          cleanup
  %210 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %20, i64 0, i32 1
  call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %23) #19
  br label %295

211:                                              ; preds = %201, %192
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %24) #19
  %212 = load ptr, ptr %22, align 8, !tbaa !66
  %213 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %212, i64 1
  %214 = load ptr, ptr %213, align 8, !tbaa !48
  %215 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %214, ptr noundef nonnull @.str.14, ptr noundef nonnull %24) #19
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %226

217:                                              ; preds = %211
  invoke void @_ZN6dealii13ExceptionBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(60) %25)
          to label %218 unwind label %220

218:                                              ; preds = %217
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii18StandardExceptions10ExcMessageE, i64 0, inrange i32 0, i64 2), ptr %25, align 8, !tbaa !35
  store ptr @.str.17, ptr %144, align 8, !tbaa !67
  invoke void @_ZN6dealii18deal_II_exceptions9internals17issue_error_throwINS_18StandardExceptions10ExcMessageEEEvPKciS6_S6_S6_T_(ptr noundef nonnull @.str.10, i32 noundef 89, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, ptr noundef nonnull %25)
          to label %219 unwind label %223

219:                                              ; preds = %218
  call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %25) #19
  br label %226

220:                                              ; preds = %256, %226, %217
  %221 = landingpad { ptr, i32 }
          cleanup
  %222 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %20, i64 0, i32 1
  br label %292

223:                                              ; preds = %218
  %224 = landingpad { ptr, i32 }
          cleanup
  %225 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %20, i64 0, i32 1
  call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %25) #19
  br label %292

226:                                              ; preds = %219, %211
  %227 = load double, ptr %24, align 8, !tbaa !72
  %228 = load ptr, ptr %22, align 8, !tbaa !66
  %229 = load ptr, ptr %133, align 8, !tbaa !60
  %230 = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef %229, ptr noundef nonnull %132, ptr noundef nonnull align 8 dereferenceable(32) %228)
          to label %231 unwind label %220

231:                                              ; preds = %226
  %232 = icmp eq ptr %230, %132
  br i1 %232, label %256, label %233

233:                                              ; preds = %231
  %234 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %228, i64 0, i32 1
  %235 = load i64, ptr %234, align 8, !tbaa !42
  %236 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %230, i64 0, i32 1, i32 0, i64 8
  %237 = load i64, ptr %236, align 8, !tbaa !42
  %238 = call i64 @llvm.umin.i64(i64 %237, i64 %235)
  %239 = icmp eq i64 %238, 0
  br i1 %239, label %245, label %240

240:                                              ; preds = %233
  %241 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %230, i64 0, i32 1
  %242 = load ptr, ptr %241, align 8, !tbaa !48
  %243 = load ptr, ptr %228, align 8, !tbaa !48
  %244 = call i32 @memcmp(ptr noundef %243, ptr noundef %242, i64 noundef %238) #19
  br label %245

245:                                              ; preds = %240, %233
  %246 = phi i32 [ %244, %240 ], [ 0, %233 ]
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %253

248:                                              ; preds = %245
  %249 = sub i64 %235, %237
  %250 = call i64 @llvm.smax.i64(i64 %249, i64 -2147483648)
  %251 = call i64 @llvm.smin.i64(i64 %250, i64 2147483647)
  %252 = trunc i64 %251 to i32
  br label %253

253:                                              ; preds = %248, %245
  %254 = phi i32 [ %246, %245 ], [ %252, %248 ]
  %255 = icmp slt i32 %254, 0
  br i1 %255, label %256, label %259

256:                                              ; preds = %253, %231
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  store ptr %228, ptr %7, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #19
  %257 = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr %230, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %258 unwind label %220

258:                                              ; preds = %256
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  br label %259

259:                                              ; preds = %253, %258
  %260 = phi ptr [ %257, %258 ], [ %230, %253 ]
  %261 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %260, i64 0, i32 1, i32 0, i64 32
  store double %227, ptr %261, align 8, !tbaa !72
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %24) #19
  %262 = load ptr, ptr %22, align 8, !tbaa !66
  %263 = load ptr, ptr %142, align 8, !tbaa !64
  %264 = icmp eq ptr %262, %263
  br i1 %264, label %278, label %265

265:                                              ; preds = %259, %275
  %266 = phi ptr [ %276, %275 ], [ %262, %259 ]
  %267 = load ptr, ptr %266, align 8, !tbaa !48
  %268 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %266, i64 0, i32 2
  %269 = icmp eq ptr %267, %268
  br i1 %269, label %270, label %274

270:                                              ; preds = %265
  %271 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %266, i64 0, i32 1
  %272 = load i64, ptr %271, align 8, !tbaa !42
  %273 = icmp ult i64 %272, 16
  call void @llvm.assume(i1 %273)
  br label %275

274:                                              ; preds = %265
  call void @_ZdlPv(ptr noundef %267) #20
  br label %275

275:                                              ; preds = %274, %270
  %276 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %266, i64 1
  %277 = icmp eq ptr %276, %263
  br i1 %277, label %278, label %265, !llvm.loop !75

278:                                              ; preds = %275, %259
  %279 = load ptr, ptr %22, align 8, !tbaa !66
  %280 = icmp eq ptr %279, null
  br i1 %280, label %282, label %281

281:                                              ; preds = %278
  call void @_ZdlPv(ptr noundef %279) #20
  br label %282

282:                                              ; preds = %278, %281
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %22) #19
  %283 = add i32 %190, 1
  %284 = zext i32 %283 to i64
  %285 = load ptr, ptr %137, align 8, !tbaa !64
  %286 = load ptr, ptr %20, align 8, !tbaa !66
  %287 = ptrtoint ptr %285 to i64
  %288 = ptrtoint ptr %286 to i64
  %289 = sub i64 %287, %288
  %290 = ashr exact i64 %289, 5
  %291 = icmp ugt i64 %290, %284
  br i1 %291, label %187, label %145, !llvm.loop !76

292:                                              ; preds = %223, %220
  %293 = phi ptr [ %222, %220 ], [ %225, %223 ]
  %294 = phi { ptr, i32 } [ %221, %220 ], [ %224, %223 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %24) #19
  br label %295

295:                                              ; preds = %292, %208, %205
  %296 = phi ptr [ %293, %292 ], [ %210, %208 ], [ %207, %205 ]
  %297 = phi { ptr, i32 } [ %294, %292 ], [ %209, %208 ], [ %206, %205 ]
  %298 = load ptr, ptr %22, align 8, !tbaa !66
  %299 = load ptr, ptr %142, align 8, !tbaa !64
  %300 = icmp eq ptr %298, %299
  br i1 %300, label %314, label %301

301:                                              ; preds = %295, %311
  %302 = phi ptr [ %312, %311 ], [ %298, %295 ]
  %303 = load ptr, ptr %302, align 8, !tbaa !48
  %304 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %302, i64 0, i32 2
  %305 = icmp eq ptr %303, %304
  br i1 %305, label %306, label %310

306:                                              ; preds = %301
  %307 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %302, i64 0, i32 1
  %308 = load i64, ptr %307, align 8, !tbaa !42
  %309 = icmp ult i64 %308, 16
  call void @llvm.assume(i1 %309)
  br label %311

310:                                              ; preds = %301
  call void @_ZdlPv(ptr noundef %303) #20
  br label %311

311:                                              ; preds = %310, %306
  %312 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %302, i64 1
  %313 = icmp eq ptr %312, %299
  br i1 %313, label %314, label %301, !llvm.loop !75

314:                                              ; preds = %311, %295
  %315 = load ptr, ptr %22, align 8, !tbaa !66
  %316 = icmp eq ptr %315, null
  br i1 %316, label %318, label %317

317:                                              ; preds = %314
  call void @_ZdlPv(ptr noundef %315) #20
  br label %318

318:                                              ; preds = %317, %314, %202
  %319 = phi ptr [ %204, %202 ], [ %296, %314 ], [ %296, %317 ]
  %320 = phi { ptr, i32 } [ %203, %202 ], [ %297, %314 ], [ %297, %317 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %22) #19
  br label %508

321:                                              ; preds = %145
  %322 = icmp eq ptr %151, %132
  br i1 %322, label %345, label %323

323:                                              ; preds = %321
  %324 = load i64, ptr %148, align 8, !tbaa !42
  %325 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %151, i64 0, i32 1, i32 0, i64 8
  %326 = load i64, ptr %325, align 8, !tbaa !42
  %327 = call i64 @llvm.umin.i64(i64 %326, i64 %324)
  %328 = icmp eq i64 %327, 0
  br i1 %328, label %334, label %329

329:                                              ; preds = %323
  %330 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %151, i64 0, i32 1
  %331 = load ptr, ptr %330, align 8, !tbaa !48
  %332 = load ptr, ptr %26, align 8, !tbaa !48
  %333 = call i32 @memcmp(ptr noundef %332, ptr noundef %331, i64 noundef %327) #19
  br label %334

334:                                              ; preds = %329, %323
  %335 = phi i32 [ %333, %329 ], [ 0, %323 ]
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %337, label %342

337:                                              ; preds = %334
  %338 = sub i64 %324, %326
  %339 = call i64 @llvm.smax.i64(i64 %338, i64 -2147483648)
  %340 = call i64 @llvm.smin.i64(i64 %339, i64 2147483647)
  %341 = trunc i64 %340 to i32
  br label %342

342:                                              ; preds = %337, %334
  %343 = phi i32 [ %335, %334 ], [ %341, %337 ]
  %344 = icmp slt i32 %343, 0
  br i1 %344, label %345, label %348

345:                                              ; preds = %342, %321
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  store ptr %26, ptr %5, align 8, !tbaa !74, !alias.scope !77
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #19
  %346 = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr %151, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %347 unwind label %428

347:                                              ; preds = %345
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  br label %348

348:                                              ; preds = %342, %347
  %349 = phi ptr [ %346, %347 ], [ %151, %342 ]
  %350 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %349, i64 0, i32 1, i32 0, i64 32
  store double 0x400921FB54442D18, ptr %350, align 8, !tbaa !72
  %351 = load ptr, ptr %26, align 8, !tbaa !48
  %352 = icmp eq ptr %351, %147
  br i1 %352, label %353, label %356

353:                                              ; preds = %348
  %354 = load i64, ptr %148, align 8, !tbaa !42
  %355 = icmp ult i64 %354, 16
  call void @llvm.assume(i1 %355)
  br label %357

356:                                              ; preds = %348
  call void @_ZdlPv(ptr noundef %351) #20
  br label %357

357:                                              ; preds = %353, %356
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %26) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %27) #19
  %358 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %27, i64 0, i32 2
  store ptr %358, ptr %27, align 8, !tbaa !38
  store i16 26960, ptr %358, align 8
  %359 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %27, i64 0, i32 1
  store i64 2, ptr %359, align 8, !tbaa !42
  %360 = getelementptr inbounds i8, ptr %27, i64 18
  store i8 0, ptr %360, align 2, !tbaa !45
  %361 = load ptr, ptr %133, align 8, !tbaa !60
  %362 = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef %361, ptr noundef nonnull %132, ptr noundef nonnull align 8 dereferenceable(32) %27)
          to label %363 unwind label %437

363:                                              ; preds = %357
  %364 = icmp eq ptr %362, %132
  br i1 %364, label %387, label %365

365:                                              ; preds = %363
  %366 = load i64, ptr %359, align 8, !tbaa !42
  %367 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %362, i64 0, i32 1, i32 0, i64 8
  %368 = load i64, ptr %367, align 8, !tbaa !42
  %369 = call i64 @llvm.umin.i64(i64 %368, i64 %366)
  %370 = icmp eq i64 %369, 0
  br i1 %370, label %376, label %371

371:                                              ; preds = %365
  %372 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %362, i64 0, i32 1
  %373 = load ptr, ptr %372, align 8, !tbaa !48
  %374 = load ptr, ptr %27, align 8, !tbaa !48
  %375 = call i32 @memcmp(ptr noundef %374, ptr noundef %373, i64 noundef %369) #19
  br label %376

376:                                              ; preds = %371, %365
  %377 = phi i32 [ %375, %371 ], [ 0, %365 ]
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %379, label %384

379:                                              ; preds = %376
  %380 = sub i64 %366, %368
  %381 = call i64 @llvm.smax.i64(i64 %380, i64 -2147483648)
  %382 = call i64 @llvm.smin.i64(i64 %381, i64 2147483647)
  %383 = trunc i64 %382 to i32
  br label %384

384:                                              ; preds = %379, %376
  %385 = phi i32 [ %377, %376 ], [ %383, %379 ]
  %386 = icmp slt i32 %385, 0
  br i1 %386, label %387, label %390

387:                                              ; preds = %384, %363
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  store ptr %27, ptr %3, align 8, !tbaa !74, !alias.scope !80
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #19
  %388 = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr %362, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %389 unwind label %437

389:                                              ; preds = %387
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  br label %390

390:                                              ; preds = %384, %389
  %391 = phi ptr [ %388, %389 ], [ %362, %384 ]
  %392 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %391, i64 0, i32 1, i32 0, i64 32
  store double 0x400921FB54442D18, ptr %392, align 8, !tbaa !72
  %393 = load ptr, ptr %27, align 8, !tbaa !48
  %394 = icmp eq ptr %393, %358
  br i1 %394, label %395, label %398

395:                                              ; preds = %390
  %396 = load i64, ptr %359, align 8, !tbaa !42
  %397 = icmp ult i64 %396, 16
  call void @llvm.assume(i1 %397)
  br label %399

398:                                              ; preds = %390
  call void @_ZdlPv(ptr noundef %393) #20
  br label %399

399:                                              ; preds = %395, %398
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %27) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %28) #19
  invoke void @_ZN6dealii9Utilities17split_string_listERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.6") align 8 %28, ptr noundef nonnull align 8 dereferenceable(32) %14, i8 noundef signext 44)
          to label %400 unwind label %446

400:                                              ; preds = %399
  %401 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %28, i64 0, i32 1
  %402 = load ptr, ptr %401, align 8, !tbaa !64
  %403 = load ptr, ptr %28, align 8, !tbaa !66
  %404 = ptrtoint ptr %402 to i64
  %405 = ptrtoint ptr %403 to i64
  %406 = sub i64 %404, %405
  %407 = lshr exact i64 %406, 5
  %408 = trunc i64 %407 to i32
  %409 = icmp eq ptr %403, %402
  br i1 %409, label %423, label %410

410:                                              ; preds = %400, %420
  %411 = phi ptr [ %421, %420 ], [ %403, %400 ]
  %412 = load ptr, ptr %411, align 8, !tbaa !48
  %413 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %411, i64 0, i32 2
  %414 = icmp eq ptr %412, %413
  br i1 %414, label %415, label %419

415:                                              ; preds = %410
  %416 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %411, i64 0, i32 1
  %417 = load i64, ptr %416, align 8, !tbaa !42
  %418 = icmp ult i64 %417, 16
  call void @llvm.assume(i1 %418)
  br label %420

419:                                              ; preds = %410
  call void @_ZdlPv(ptr noundef %412) #20
  br label %420

420:                                              ; preds = %419, %415
  %421 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %411, i64 1
  %422 = icmp eq ptr %421, %402
  br i1 %422, label %423, label %410, !llvm.loop !75

423:                                              ; preds = %420, %400
  %424 = load ptr, ptr %28, align 8, !tbaa !66
  %425 = icmp eq ptr %424, null
  br i1 %425, label %427, label %426

426:                                              ; preds = %423
  call void @_ZdlPv(ptr noundef %424) #20
  br label %427

427:                                              ; preds = %423, %426
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %28) #19
  switch i32 %408, label %454 [
    i32 1, label %451
    i32 2, label %450
  ]

428:                                              ; preds = %345, %145
  %429 = landingpad { ptr, i32 }
          cleanup
  %430 = load ptr, ptr %26, align 8, !tbaa !48
  %431 = icmp eq ptr %430, %147
  br i1 %431, label %432, label %435

432:                                              ; preds = %428
  %433 = load i64, ptr %148, align 8, !tbaa !42
  %434 = icmp ult i64 %433, 16
  call void @llvm.assume(i1 %434)
  br label %436

435:                                              ; preds = %428
  call void @_ZdlPv(ptr noundef %430) #20
  br label %436

436:                                              ; preds = %435, %432
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %26) #19
  br label %508

437:                                              ; preds = %387, %357
  %438 = landingpad { ptr, i32 }
          cleanup
  %439 = load ptr, ptr %27, align 8, !tbaa !48
  %440 = icmp eq ptr %439, %358
  br i1 %440, label %441, label %444

441:                                              ; preds = %437
  %442 = load i64, ptr %359, align 8, !tbaa !42
  %443 = icmp ult i64 %442, 16
  call void @llvm.assume(i1 %443)
  br label %445

444:                                              ; preds = %437
  call void @_ZdlPv(ptr noundef %439) #20
  br label %445

445:                                              ; preds = %444, %441
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %27) #19
  br label %508

446:                                              ; preds = %399
  %447 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %28) #19
  br label %508

448:                                              ; preds = %451, %454
  %449 = landingpad { ptr, i32 }
          cleanup
  br label %508

450:                                              ; preds = %427
  br label %451

451:                                              ; preds = %427, %450
  %452 = phi i1 [ true, %450 ], [ false, %427 ]
  %453 = getelementptr inbounds %"class.dealii::Functions::ParsedFunction", ptr %0, i64 0, i32 1
  invoke void @_ZN6dealii14FunctionParserILi1EE10initializeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_RKSt3mapIS7_dSt4lessIS7_ESaISt4pairIS8_dEEEbb(ptr noundef nonnull align 8 dereferenceable(112) %453, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(48) %21, i1 noundef zeroext %452, i1 noundef zeroext false)
          to label %458 unwind label %448

454:                                              ; preds = %427
  invoke void @_ZN6dealii13ExceptionBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(60) %29)
          to label %455 unwind label %448

455:                                              ; preds = %454
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii18StandardExceptions10ExcMessageE, i64 0, inrange i32 0, i64 2), ptr %29, align 8, !tbaa !35
  %456 = getelementptr inbounds %"class.dealii::StandardExceptions::ExcMessage", ptr %29, i64 0, i32 1
  store ptr @.str.22, ptr %456, align 8, !tbaa !67
  invoke void @_ZN6dealii18deal_II_exceptions9internals17issue_error_throwINS_18StandardExceptions10ExcMessageEEEvPKciS6_S6_S6_T_(ptr noundef nonnull @.str.10, i32 noundef 108, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, ptr noundef nonnull %29)
          to label %457 unwind label %506

457:                                              ; preds = %455
  call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %29) #19
  br label %458

458:                                              ; preds = %451, %457
  %459 = load ptr, ptr %133, align 8, !tbaa !60
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef %459)
          to label %463 unwind label %460

460:                                              ; preds = %458
  %461 = landingpad { ptr, i32 }
          catch ptr null
  %462 = extractvalue { ptr, i32 } %461, 0
  call void @__clang_call_terminate(ptr %462) #22
  unreachable

463:                                              ; preds = %458
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %21) #19
  %464 = load ptr, ptr %20, align 8, !tbaa !66
  %465 = load ptr, ptr %146, align 8, !tbaa !64
  %466 = icmp eq ptr %464, %465
  br i1 %466, label %480, label %467

467:                                              ; preds = %463, %477
  %468 = phi ptr [ %478, %477 ], [ %464, %463 ]
  %469 = load ptr, ptr %468, align 8, !tbaa !48
  %470 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %468, i64 0, i32 2
  %471 = icmp eq ptr %469, %470
  br i1 %471, label %472, label %476

472:                                              ; preds = %467
  %473 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %468, i64 0, i32 1
  %474 = load i64, ptr %473, align 8, !tbaa !42
  %475 = icmp ult i64 %474, 16
  call void @llvm.assume(i1 %475)
  br label %477

476:                                              ; preds = %467
  call void @_ZdlPv(ptr noundef %469) #20
  br label %477

477:                                              ; preds = %476, %472
  %478 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %468, i64 1
  %479 = icmp eq ptr %478, %465
  br i1 %479, label %480, label %467, !llvm.loop !75

480:                                              ; preds = %477, %463
  %481 = load ptr, ptr %20, align 8, !tbaa !66
  %482 = icmp eq ptr %481, null
  br i1 %482, label %484, label %483

483:                                              ; preds = %480
  call void @_ZdlPv(ptr noundef %481) #20
  br label %484

484:                                              ; preds = %480, %483
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %20) #19
  %485 = load ptr, ptr %18, align 8, !tbaa !48
  %486 = icmp eq ptr %485, %105
  br i1 %486, label %487, label %490

487:                                              ; preds = %484
  %488 = load i64, ptr %121, align 8, !tbaa !42
  %489 = icmp ult i64 %488, 16
  call void @llvm.assume(i1 %489)
  br label %491

490:                                              ; preds = %484
  call void @_ZdlPv(ptr noundef %485) #20
  br label %491

491:                                              ; preds = %487, %490
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %18) #19
  %492 = load ptr, ptr %16, align 8, !tbaa !48
  %493 = icmp eq ptr %492, %70
  br i1 %493, label %494, label %497

494:                                              ; preds = %491
  %495 = load i64, ptr %86, align 8, !tbaa !42
  %496 = icmp ult i64 %495, 16
  call void @llvm.assume(i1 %496)
  br label %498

497:                                              ; preds = %491
  call void @_ZdlPv(ptr noundef %492) #20
  br label %498

498:                                              ; preds = %494, %497
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %16) #19
  %499 = load ptr, ptr %14, align 8, !tbaa !48
  %500 = icmp eq ptr %499, %35
  br i1 %500, label %501, label %504

501:                                              ; preds = %498
  %502 = load i64, ptr %51, align 8, !tbaa !42
  %503 = icmp ult i64 %502, 16
  call void @llvm.assume(i1 %503)
  br label %505

504:                                              ; preds = %498
  call void @_ZdlPv(ptr noundef %499) #20
  br label %505

505:                                              ; preds = %501, %504
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #19
  ret void

506:                                              ; preds = %455
  %507 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %29) #19
  br label %508

508:                                              ; preds = %446, %448, %506, %445, %436, %318
  %509 = phi ptr [ %319, %318 ], [ %146, %445 ], [ %146, %436 ], [ %146, %506 ], [ %146, %448 ], [ %146, %446 ]
  %510 = phi { ptr, i32 } [ %320, %318 ], [ %438, %445 ], [ %429, %436 ], [ %507, %506 ], [ %449, %448 ], [ %447, %446 ]
  %511 = load ptr, ptr %133, align 8, !tbaa !60
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef %511)
          to label %515 unwind label %512

512:                                              ; preds = %508
  %513 = landingpad { ptr, i32 }
          catch ptr null
  %514 = extractvalue { ptr, i32 } %513, 0
  call void @__clang_call_terminate(ptr %514) #22
  unreachable

515:                                              ; preds = %508
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %21) #19
  %516 = load ptr, ptr %20, align 8, !tbaa !66
  %517 = load ptr, ptr %509, align 8, !tbaa !64
  %518 = icmp eq ptr %516, %517
  br i1 %518, label %532, label %519

519:                                              ; preds = %515, %529
  %520 = phi ptr [ %530, %529 ], [ %516, %515 ]
  %521 = load ptr, ptr %520, align 8, !tbaa !48
  %522 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %520, i64 0, i32 2
  %523 = icmp eq ptr %521, %522
  br i1 %523, label %524, label %528

524:                                              ; preds = %519
  %525 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %520, i64 0, i32 1
  %526 = load i64, ptr %525, align 8, !tbaa !42
  %527 = icmp ult i64 %526, 16
  call void @llvm.assume(i1 %527)
  br label %529

528:                                              ; preds = %519
  call void @_ZdlPv(ptr noundef %521) #20
  br label %529

529:                                              ; preds = %528, %524
  %530 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %520, i64 1
  %531 = icmp eq ptr %530, %517
  br i1 %531, label %532, label %519, !llvm.loop !75

532:                                              ; preds = %529, %515
  %533 = load ptr, ptr %20, align 8, !tbaa !66
  %534 = icmp eq ptr %533, null
  br i1 %534, label %536, label %535

535:                                              ; preds = %532
  call void @_ZdlPv(ptr noundef %533) #20
  br label %536

536:                                              ; preds = %535, %532, %185
  %537 = phi { ptr, i32 } [ %186, %185 ], [ %510, %532 ], [ %510, %535 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %20) #19
  %538 = load ptr, ptr %18, align 8, !tbaa !48
  %539 = icmp eq ptr %538, %105
  br i1 %539, label %540, label %543

540:                                              ; preds = %536
  %541 = load i64, ptr %121, align 8, !tbaa !42
  %542 = icmp ult i64 %541, 16
  call void @llvm.assume(i1 %542)
  br label %544

543:                                              ; preds = %536
  call void @_ZdlPv(ptr noundef %538) #20
  br label %544

544:                                              ; preds = %543, %540, %183
  %545 = phi { ptr, i32 } [ %184, %183 ], [ %537, %540 ], [ %537, %543 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %18) #19
  %546 = load ptr, ptr %16, align 8, !tbaa !48
  %547 = icmp eq ptr %546, %70
  br i1 %547, label %548, label %551

548:                                              ; preds = %544
  %549 = load i64, ptr %86, align 8, !tbaa !42
  %550 = icmp ult i64 %549, 16
  call void @llvm.assume(i1 %550)
  br label %552

551:                                              ; preds = %544
  call void @_ZdlPv(ptr noundef %546) #20
  br label %552

552:                                              ; preds = %551, %548, %171
  %553 = phi { ptr, i32 } [ %172, %171 ], [ %545, %548 ], [ %545, %551 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %16) #19
  %554 = load ptr, ptr %14, align 8, !tbaa !48
  %555 = icmp eq ptr %554, %35
  br i1 %555, label %556, label %559

556:                                              ; preds = %552
  %557 = load i64, ptr %51, align 8, !tbaa !42
  %558 = icmp ult i64 %557, 16
  call void @llvm.assume(i1 %558)
  br label %560

559:                                              ; preds = %552
  call void @_ZdlPv(ptr noundef %554) #20
  br label %560

560:                                              ; preds = %559, %556, %160
  %561 = phi { ptr, i32 } [ %153, %160 ], [ %553, %556 ], [ %553, %559 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #19
  resume { ptr, i32 } %561
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6dealii16ParameterHandler3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(288), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare void @_ZN6dealii9Utilities17split_string_listERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc(ptr dead_on_unwind writable sret(%"class.std::vector.6") align 8, ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN6dealii18deal_II_exceptions9internals17issue_error_throwINS_18StandardExceptions10ExcMessageEEEvPKciS6_S6_S6_T_(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 !prof !83 {
  tail call void @_ZN6dealii13ExceptionBase10set_fieldsEPKciS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(60) %5, ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  %7 = tail call ptr @__cxa_allocate_exception(i64 72) #19
  invoke void @_ZN6dealii18StandardExceptions10ExcMessageC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %7, ptr noundef nonnull align 8 dereferenceable(72) %5)
          to label %8 unwind label %9

8:                                                ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN6dealii18StandardExceptions10ExcMessageE, ptr nonnull @_ZN6dealii13ExceptionBaseD2Ev) #21
  unreachable

9:                                                ; preds = %6
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #19
  resume { ptr, i32 } %10
}

; Function Attrs: nounwind
declare void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

declare void @_ZN6dealii14FunctionParserILi1EE10initializeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_RKSt3mapIS7_dSt4lessIS7_ESaISt4pairIS8_dEEEbb(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(48), i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14ParsedFunctionILi1EE12vector_valueERKNS_5PointILi1EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %2) unnamed_addr #4 comdat align 2 !prof !83 {
  %4 = getelementptr inbounds %"class.dealii::Functions::ParsedFunction", ptr %0, i64 0, i32 1
  tail call void @_ZNK6dealii14FunctionParserILi1EE12vector_valueERKNS_5PointILi1EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(112) %4, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %2)
  ret void
}

declare void @_ZNK6dealii14FunctionParserILi1EE12vector_valueERKNS_5PointILi1EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 1, ptr noundef nonnull align 1) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions14ParsedFunctionILi1EE5valueERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 1 %1, i32 noundef %2) unnamed_addr #4 comdat align 2 !prof !83 {
  %4 = getelementptr inbounds %"class.dealii::Functions::ParsedFunction", ptr %0, i64 0, i32 1
  %5 = tail call noundef double @_ZNK6dealii14FunctionParserILi1EE5valueERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(112) %4, ptr noundef nonnull align 1 %1, i32 noundef %2)
  ret double %5
}

declare noundef double @_ZNK6dealii14FunctionParserILi1EE5valueERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 1, i32 noundef) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii9Functions14ParsedFunctionILi1EE8set_timeEd(ptr noundef nonnull align 8 dereferenceable(248) %0, double noundef %1) unnamed_addr #4 comdat align 2 !prof !83 {
  %3 = getelementptr inbounds %"class.dealii::Functions::ParsedFunction", ptr %0, i64 0, i32 1
  tail call void @_ZN6dealii12FunctionTime8set_timeEd(ptr noundef nonnull align 8 dereferenceable(16) %3, double noundef %1)
  tail call void @_ZN6dealii12FunctionTime8set_timeEd(ptr noundef nonnull align 8 dereferenceable(16) %0, double noundef %1)
  ret void
}

declare void @_ZN6dealii12FunctionTime8set_timeEd(ptr noundef nonnull align 8 dereferenceable(16), double noundef) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii9Functions14ParsedFunctionILi2EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(248) %0, i32 noundef %1, double noundef %2) unnamed_addr #0 comdat($_ZN6dealii9Functions14ParsedFunctionILi2EEC5Ejd) align 2 personality ptr @__gxx_personality_v0 !annotation !34 {
  tail call void @_ZN6dealii22AutoDerivativeFunctionILi2EEC2Edjd(ptr noundef nonnull align 8 dereferenceable(132) %0, double noundef %2, i32 noundef %1, double noundef 0.000000e+00)
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14ParsedFunctionILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14ParsedFunctionILi2EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !35
  %5 = getelementptr inbounds %"class.dealii::Functions::ParsedFunction.29", ptr %0, i64 0, i32 1
  invoke void @_ZN6dealii14FunctionParserILi2EEC1Ejd(ptr noundef nonnull align 8 dereferenceable(112) %5, i32 noundef %1, double noundef 0.000000e+00)
          to label %6 unwind label %7

6:                                                ; preds = %3
  ret void

7:                                                ; preds = %3
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6dealii22AutoDerivativeFunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(132) %0) #19
  resume { ptr, i32 } %8
}

declare void @_ZN6dealii22AutoDerivativeFunctionILi2EEC2Edjd(ptr noundef nonnull align 8 dereferenceable(132), double noundef, i32 noundef, double noundef) unnamed_addr #1

declare void @_ZN6dealii14FunctionParserILi2EEC1Ejd(ptr noundef nonnull align 8 dereferenceable(112), i32 noundef, double noundef) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN6dealii22AutoDerivativeFunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(132)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii9Functions14ParsedFunctionILi2EE18declare_parametersERNS_16ParameterHandlerEj(ptr noundef nonnull align 8 dereferenceable(288) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !34 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %"class.std::__cxx11::basic_string", align 8
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  %10 = alloca %"class.dealii::Patterns::Anything", align 8
  %11 = alloca %"class.std::__cxx11::basic_string", align 8
  %12 = alloca %"class.std::__cxx11::basic_string", align 8
  %13 = alloca %"class.std::__cxx11::basic_string", align 8
  %14 = alloca %"class.dealii::Patterns::Anything", align 8
  %15 = alloca %"class.std::__cxx11::basic_string", align 8
  %16 = alloca %"class.std::__cxx11::basic_string", align 8
  %17 = alloca %"class.std::__cxx11::basic_string", align 8
  %18 = alloca %"class.dealii::Patterns::Anything", align 8
  %19 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #19
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 2
  store ptr %20, ptr %8, align 8, !tbaa !38
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 1
  store i64 0, ptr %21, align 8, !tbaa !42
  store i8 0, ptr %20, align 8, !tbaa !45
  %22 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.23, i64 noundef 5)
          to label %23 unwind label %61

23:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #19
  %24 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 2
  store ptr %24, ptr %9, align 8, !tbaa !38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %24, ptr noundef nonnull align 1 dereferenceable(14) @.str.1, i64 14, i1 false), !prof !46
  %25 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 1
  store i64 14, ptr %25, align 8, !tbaa !42
  %26 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 2, i32 1, i64 6
  store i8 0, ptr %26, align 2, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #19
  invoke void @_ZN6dealii8Patterns8AnythingC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %27 unwind label %63

27:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #19
  %28 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %11, i64 0, i32 2
  store ptr %28, ptr %11, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  store i64 81, ptr %7, align 8, !tbaa !47
  %29 = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 0)
          to label %30 unwind label %65

30:                                               ; preds = %27
  store ptr %29, ptr %11, align 8, !tbaa !48
  %31 = load i64, ptr %7, align 8, !tbaa !47
  store i64 %31, ptr %28, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(81) %29, ptr noundef nonnull align 1 dereferenceable(81) @.str.2, i64 81, i1 false), !prof !46
  %32 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %11, i64 0, i32 1
  store i64 %31, ptr %32, align 8, !tbaa !42
  %33 = getelementptr inbounds i8, ptr %29, i64 %31
  store i8 0, ptr %33, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  invoke void @_ZN6dealii16ParameterHandler13declare_entryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_RKNS_8Patterns11PatternBaseES8_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %34 unwind label %67

34:                                               ; preds = %30
  %35 = load ptr, ptr %11, align 8, !tbaa !48
  %36 = icmp eq ptr %35, %28
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i64, ptr %32, align 8, !tbaa !42
  %39 = icmp ult i64 %38, 16
  call void @llvm.assume(i1 %39)
  br label %41

40:                                               ; preds = %34
  call void @_ZdlPv(ptr noundef %35) #20
  br label %41

41:                                               ; preds = %37, %40
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #19
  call void @_ZN6dealii8Patterns11PatternBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #19
  %42 = load ptr, ptr %9, align 8, !tbaa !48
  %43 = icmp eq ptr %42, %24
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i64, ptr %25, align 8, !tbaa !42
  %46 = icmp ult i64 %45, 16
  call void @llvm.assume(i1 %46)
  br label %48

47:                                               ; preds = %41
  call void @_ZdlPv(ptr noundef %42) #20
  br label %48

48:                                               ; preds = %44, %47
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #19
  %49 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 0, i32 2
  store ptr %49, ptr %12, align 8, !tbaa !38
  store i8 48, ptr %49, align 8, !tbaa !45
  %50 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 0, i32 1
  store i64 1, ptr %50, align 8, !tbaa !42
  %51 = getelementptr inbounds i8, ptr %12, i64 17
  store i8 0, ptr %51, align 1, !tbaa !45
  %52 = icmp ugt i32 %1, 1
  br i1 %52, label %86, label %53

53:                                               ; preds = %95, %48
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %13) #19
  %54 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %13, i64 0, i32 2
  store ptr %54, ptr %13, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  store i64 19, ptr %6, align 8, !tbaa !47
  %55 = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 0)
          to label %56 unwind label %176

56:                                               ; preds = %53
  store ptr %55, ptr %13, align 8, !tbaa !48
  %57 = load i64, ptr %6, align 8, !tbaa !47
  store i64 %57, ptr %54, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %55, ptr noundef nonnull align 1 dereferenceable(19) @.str.5, i64 19, i1 false), !prof !46
  %58 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %13, i64 0, i32 1
  store i64 %57, ptr %58, align 8, !tbaa !42
  %59 = load ptr, ptr %13, align 8, !tbaa !48
  %60 = getelementptr inbounds i8, ptr %59, i64 %57
  store i8 0, ptr %60, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #19
  invoke void @_ZN6dealii8Patterns8AnythingC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %102 unwind label %178

61:                                               ; preds = %2
  %62 = landingpad { ptr, i32 }
          cleanup
  br label %244

63:                                               ; preds = %23
  %64 = landingpad { ptr, i32 }
          cleanup
  br label %77

65:                                               ; preds = %27
  %66 = landingpad { ptr, i32 }
          cleanup
  br label %75

67:                                               ; preds = %30
  %68 = landingpad { ptr, i32 }
          cleanup
  %69 = load ptr, ptr %11, align 8, !tbaa !48
  %70 = icmp eq ptr %69, %28
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load i64, ptr %32, align 8, !tbaa !42
  %73 = icmp ult i64 %72, 16
  call void @llvm.assume(i1 %73)
  br label %75

74:                                               ; preds = %67
  call void @_ZdlPv(ptr noundef %69) #20
  br label %75

75:                                               ; preds = %74, %71, %65
  %76 = phi { ptr, i32 } [ %66, %65 ], [ %68, %71 ], [ %68, %74 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #19
  call void @_ZN6dealii8Patterns11PatternBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #19
  br label %77

77:                                               ; preds = %75, %63
  %78 = phi { ptr, i32 } [ %76, %75 ], [ %64, %63 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #19
  %79 = load ptr, ptr %9, align 8, !tbaa !48
  %80 = icmp eq ptr %79, %24
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i64, ptr %25, align 8, !tbaa !42
  %83 = icmp ult i64 %82, 16
  call void @llvm.assume(i1 %83)
  br label %85

84:                                               ; preds = %77
  call void @_ZdlPv(ptr noundef %79) #20
  br label %85

85:                                               ; preds = %84, %81
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #19
  br label %244

86:                                               ; preds = %48, %95
  %87 = phi i32 [ %96, %95 ], [ 1, %48 ]
  %88 = load i64, ptr %50, align 8, !tbaa !42
  %89 = add i64 %88, -4611686018427387901
  %90 = icmp ult i64 %89, 3
  br i1 %90, label %91, label %93, !prof !49

91:                                               ; preds = %86
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #21
          to label %92 unwind label %100

92:                                               ; preds = %91
  unreachable

93:                                               ; preds = %86
  %94 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.4, i64 noundef 3)
          to label %95 unwind label %98

95:                                               ; preds = %93
  %96 = add nuw i32 %87, 1
  %97 = icmp eq i32 %96, %1
  br i1 %97, label %53, label %86, !llvm.loop !84

98:                                               ; preds = %93
  %99 = landingpad { ptr, i32 }
          cleanup
  br label %235

100:                                              ; preds = %91
  %101 = landingpad { ptr, i32 }
          cleanup
  br label %235

102:                                              ; preds = %56
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %15) #19
  %103 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %15, i64 0, i32 2
  store ptr %103, ptr %15, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  store i64 91, ptr %5, align 8, !tbaa !47
  %104 = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef 0)
          to label %105 unwind label %180

105:                                              ; preds = %102
  store ptr %104, ptr %15, align 8, !tbaa !48
  %106 = load i64, ptr %5, align 8, !tbaa !47
  store i64 %106, ptr %103, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(91) %104, ptr noundef nonnull align 1 dereferenceable(91) @.str.6, i64 91, i1 false), !prof !46
  %107 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %15, i64 0, i32 1
  store i64 %106, ptr %107, align 8, !tbaa !42
  %108 = getelementptr inbounds i8, ptr %104, i64 %106
  store i8 0, ptr %108, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  invoke void @_ZN6dealii16ParameterHandler13declare_entryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_RKNS_8Patterns11PatternBaseES8_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %109 unwind label %182

109:                                              ; preds = %105
  %110 = load ptr, ptr %15, align 8, !tbaa !48
  %111 = icmp eq ptr %110, %103
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load i64, ptr %107, align 8, !tbaa !42
  %114 = icmp ult i64 %113, 16
  call void @llvm.assume(i1 %114)
  br label %116

115:                                              ; preds = %109
  call void @_ZdlPv(ptr noundef %110) #20
  br label %116

116:                                              ; preds = %112, %115
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #19
  call void @_ZN6dealii8Patterns11PatternBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #19
  %117 = load ptr, ptr %13, align 8, !tbaa !48
  %118 = icmp eq ptr %117, %54
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load i64, ptr %58, align 8, !tbaa !42
  %121 = icmp ult i64 %120, 16
  call void @llvm.assume(i1 %121)
  br label %123

122:                                              ; preds = %116
  call void @_ZdlPv(ptr noundef %117) #20
  br label %123

123:                                              ; preds = %119, %122
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %16) #19
  %124 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %16, i64 0, i32 2
  store ptr %124, ptr %16, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  store i64 18, ptr %4, align 8, !tbaa !47
  %125 = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
          to label %126 unwind label %202

126:                                              ; preds = %123
  store ptr %125, ptr %16, align 8, !tbaa !48
  %127 = load i64, ptr %4, align 8, !tbaa !47
  store i64 %127, ptr %124, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %125, ptr noundef nonnull align 1 dereferenceable(18) @.str.7, i64 18, i1 false), !prof !46
  %128 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %16, i64 0, i32 1
  store i64 %127, ptr %128, align 8, !tbaa !42
  %129 = load ptr, ptr %16, align 8, !tbaa !48
  %130 = getelementptr inbounds i8, ptr %129, i64 %127
  store i8 0, ptr %130, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %17) #19
  %131 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %17, i64 0, i32 2
  store ptr %131, ptr %17, align 8, !tbaa !38
  %132 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %17, i64 0, i32 1
  store i64 0, ptr %132, align 8, !tbaa !42
  store i8 0, ptr %131, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #19
  invoke void @_ZN6dealii8Patterns8AnythingC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %133 unwind label %204

133:                                              ; preds = %126
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %19) #19
  %134 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %19, i64 0, i32 2
  store ptr %134, ptr %19, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  store i64 67, ptr %3, align 8, !tbaa !47
  %135 = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 0)
          to label %136 unwind label %206

136:                                              ; preds = %133
  store ptr %135, ptr %19, align 8, !tbaa !48
  %137 = load i64, ptr %3, align 8, !tbaa !47
  store i64 %137, ptr %134, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(67) %135, ptr noundef nonnull align 1 dereferenceable(67) @.str.9, i64 67, i1 false), !prof !46
  %138 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %19, i64 0, i32 1
  store i64 %137, ptr %138, align 8, !tbaa !42
  %139 = getelementptr inbounds i8, ptr %135, i64 %137
  store i8 0, ptr %139, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  invoke void @_ZN6dealii16ParameterHandler13declare_entryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_RKNS_8Patterns11PatternBaseES8_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %140 unwind label %208

140:                                              ; preds = %136
  %141 = load ptr, ptr %19, align 8, !tbaa !48
  %142 = icmp eq ptr %141, %134
  br i1 %142, label %143, label %146

143:                                              ; preds = %140
  %144 = load i64, ptr %138, align 8, !tbaa !42
  %145 = icmp ult i64 %144, 16
  call void @llvm.assume(i1 %145)
  br label %147

146:                                              ; preds = %140
  call void @_ZdlPv(ptr noundef %141) #20
  br label %147

147:                                              ; preds = %143, %146
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %19) #19
  call void @_ZN6dealii8Patterns11PatternBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %18) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #19
  %148 = load ptr, ptr %17, align 8, !tbaa !48
  %149 = icmp eq ptr %148, %131
  br i1 %149, label %150, label %153

150:                                              ; preds = %147
  %151 = load i64, ptr %132, align 8, !tbaa !42
  %152 = icmp ult i64 %151, 16
  call void @llvm.assume(i1 %152)
  br label %154

153:                                              ; preds = %147
  call void @_ZdlPv(ptr noundef %148) #20
  br label %154

154:                                              ; preds = %150, %153
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %17) #19
  %155 = load ptr, ptr %16, align 8, !tbaa !48
  %156 = icmp eq ptr %155, %124
  br i1 %156, label %157, label %160

157:                                              ; preds = %154
  %158 = load i64, ptr %128, align 8, !tbaa !42
  %159 = icmp ult i64 %158, 16
  call void @llvm.assume(i1 %159)
  br label %161

160:                                              ; preds = %154
  call void @_ZdlPv(ptr noundef %155) #20
  br label %161

161:                                              ; preds = %157, %160
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %16) #19
  %162 = load ptr, ptr %12, align 8, !tbaa !48
  %163 = icmp eq ptr %162, %49
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = load i64, ptr %50, align 8, !tbaa !42
  %166 = icmp ult i64 %165, 16
  call void @llvm.assume(i1 %166)
  br label %168

167:                                              ; preds = %161
  call void @_ZdlPv(ptr noundef %162) #20
  br label %168

168:                                              ; preds = %164, %167
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #19
  %169 = load ptr, ptr %8, align 8, !tbaa !48
  %170 = icmp eq ptr %169, %20
  br i1 %170, label %171, label %174

171:                                              ; preds = %168
  %172 = load i64, ptr %21, align 8, !tbaa !42
  %173 = icmp ult i64 %172, 16
  call void @llvm.assume(i1 %173)
  br label %175

174:                                              ; preds = %168
  call void @_ZdlPv(ptr noundef %169) #20
  br label %175

175:                                              ; preds = %171, %174
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #19
  ret void

176:                                              ; preds = %53
  %177 = landingpad { ptr, i32 }
          cleanup
  br label %200

178:                                              ; preds = %56
  %179 = landingpad { ptr, i32 }
          cleanup
  br label %192

180:                                              ; preds = %102
  %181 = landingpad { ptr, i32 }
          cleanup
  br label %190

182:                                              ; preds = %105
  %183 = landingpad { ptr, i32 }
          cleanup
  %184 = load ptr, ptr %15, align 8, !tbaa !48
  %185 = icmp eq ptr %184, %103
  br i1 %185, label %186, label %189

186:                                              ; preds = %182
  %187 = load i64, ptr %107, align 8, !tbaa !42
  %188 = icmp ult i64 %187, 16
  call void @llvm.assume(i1 %188)
  br label %190

189:                                              ; preds = %182
  call void @_ZdlPv(ptr noundef %184) #20
  br label %190

190:                                              ; preds = %189, %186, %180
  %191 = phi { ptr, i32 } [ %181, %180 ], [ %183, %186 ], [ %183, %189 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #19
  call void @_ZN6dealii8Patterns11PatternBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #19
  br label %192

192:                                              ; preds = %190, %178
  %193 = phi { ptr, i32 } [ %191, %190 ], [ %179, %178 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #19
  %194 = load ptr, ptr %13, align 8, !tbaa !48
  %195 = icmp eq ptr %194, %54
  br i1 %195, label %196, label %199

196:                                              ; preds = %192
  %197 = load i64, ptr %58, align 8, !tbaa !42
  %198 = icmp ult i64 %197, 16
  call void @llvm.assume(i1 %198)
  br label %200

199:                                              ; preds = %192
  call void @_ZdlPv(ptr noundef %194) #20
  br label %200

200:                                              ; preds = %199, %196, %176
  %201 = phi { ptr, i32 } [ %177, %176 ], [ %193, %196 ], [ %193, %199 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #19
  br label %235

202:                                              ; preds = %123
  %203 = landingpad { ptr, i32 }
          cleanup
  br label %233

204:                                              ; preds = %126
  %205 = landingpad { ptr, i32 }
          cleanup
  br label %218

206:                                              ; preds = %133
  %207 = landingpad { ptr, i32 }
          cleanup
  br label %216

208:                                              ; preds = %136
  %209 = landingpad { ptr, i32 }
          cleanup
  %210 = load ptr, ptr %19, align 8, !tbaa !48
  %211 = icmp eq ptr %210, %134
  br i1 %211, label %212, label %215

212:                                              ; preds = %208
  %213 = load i64, ptr %138, align 8, !tbaa !42
  %214 = icmp ult i64 %213, 16
  call void @llvm.assume(i1 %214)
  br label %216

215:                                              ; preds = %208
  call void @_ZdlPv(ptr noundef %210) #20
  br label %216

216:                                              ; preds = %215, %212, %206
  %217 = phi { ptr, i32 } [ %207, %206 ], [ %209, %212 ], [ %209, %215 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %19) #19
  call void @_ZN6dealii8Patterns11PatternBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %18) #19
  br label %218

218:                                              ; preds = %216, %204
  %219 = phi { ptr, i32 } [ %217, %216 ], [ %205, %204 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #19
  %220 = load ptr, ptr %17, align 8, !tbaa !48
  %221 = icmp eq ptr %220, %131
  br i1 %221, label %222, label %225

222:                                              ; preds = %218
  %223 = load i64, ptr %132, align 8, !tbaa !42
  %224 = icmp ult i64 %223, 16
  call void @llvm.assume(i1 %224)
  br label %226

225:                                              ; preds = %218
  call void @_ZdlPv(ptr noundef %220) #20
  br label %226

226:                                              ; preds = %225, %222
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %17) #19
  %227 = load ptr, ptr %16, align 8, !tbaa !48
  %228 = icmp eq ptr %227, %124
  br i1 %228, label %229, label %232

229:                                              ; preds = %226
  %230 = load i64, ptr %128, align 8, !tbaa !42
  %231 = icmp ult i64 %230, 16
  call void @llvm.assume(i1 %231)
  br label %233

232:                                              ; preds = %226
  call void @_ZdlPv(ptr noundef %227) #20
  br label %233

233:                                              ; preds = %232, %229, %202
  %234 = phi { ptr, i32 } [ %203, %202 ], [ %219, %229 ], [ %219, %232 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %16) #19
  br label %235

235:                                              ; preds = %98, %100, %233, %200
  %236 = phi { ptr, i32 } [ %234, %233 ], [ %201, %200 ], [ %99, %98 ], [ %101, %100 ]
  %237 = load ptr, ptr %12, align 8, !tbaa !48
  %238 = icmp eq ptr %237, %49
  br i1 %238, label %239, label %242

239:                                              ; preds = %235
  %240 = load i64, ptr %50, align 8, !tbaa !42
  %241 = icmp ult i64 %240, 16
  call void @llvm.assume(i1 %241)
  br label %243

242:                                              ; preds = %235
  call void @_ZdlPv(ptr noundef %237) #20
  br label %243

243:                                              ; preds = %242, %239
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #19
  br label %244

244:                                              ; preds = %243, %85, %61
  %245 = phi { ptr, i32 } [ %236, %243 ], [ %78, %85 ], [ %62, %61 ]
  %246 = load ptr, ptr %8, align 8, !tbaa !48
  %247 = icmp eq ptr %246, %20
  br i1 %247, label %248, label %251

248:                                              ; preds = %244
  %249 = load i64, ptr %21, align 8, !tbaa !42
  %250 = icmp ult i64 %249, 16
  call void @llvm.assume(i1 %250)
  br label %252

251:                                              ; preds = %244
  call void @_ZdlPv(ptr noundef %246) #20
  br label %252

252:                                              ; preds = %248, %251
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #19
  resume { ptr, i32 } %245
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii9Functions14ParsedFunctionILi2EE16parse_parametersERNS_16ParameterHandlerE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(288) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !34 {
  %3 = alloca %"class.std::tuple.58", align 8
  %4 = alloca %"class.std::tuple.54", align 1
  %5 = alloca %"class.std::tuple.58", align 8
  %6 = alloca %"class.std::tuple.54", align 1
  %7 = alloca %"class.std::tuple", align 8
  %8 = alloca %"class.std::tuple.54", align 1
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %"class.std::__cxx11::basic_string", align 8
  %15 = alloca %"class.std::__cxx11::basic_string", align 8
  %16 = alloca %"class.std::__cxx11::basic_string", align 8
  %17 = alloca %"class.std::__cxx11::basic_string", align 8
  %18 = alloca %"class.std::__cxx11::basic_string", align 8
  %19 = alloca %"class.std::__cxx11::basic_string", align 8
  %20 = alloca %"class.std::vector.6", align 8
  %21 = alloca %"class.std::map.24", align 8
  %22 = alloca %"class.std::vector.6", align 8
  %23 = alloca %"class.dealii::StandardExceptions::ExcMessage", align 8
  %24 = alloca double, align 8
  %25 = alloca %"class.dealii::StandardExceptions::ExcMessage", align 8
  %26 = alloca %"class.std::__cxx11::basic_string", align 8
  %27 = alloca %"class.std::__cxx11::basic_string", align 8
  %28 = alloca %"class.std::vector.6", align 8
  %29 = alloca %"class.dealii::StandardExceptions::ExcMessage", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %14) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %15) #19
  %30 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %15, i64 0, i32 2
  store ptr %30, ptr %15, align 8, !tbaa !38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %30, ptr noundef nonnull align 1 dereferenceable(14) @.str.1, i64 14, i1 false), !prof !46
  %31 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %15, i64 0, i32 1
  store i64 14, ptr %31, align 8, !tbaa !42
  %32 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %15, i64 0, i32 2, i32 1, i64 6
  store i8 0, ptr %32, align 2, !tbaa !45
  %33 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6dealii16ParameterHandler3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(288) %1, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %34 unwind label %152

34:                                               ; preds = %2
  %35 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %14, i64 0, i32 2
  store ptr %35, ptr %14, align 8, !tbaa !38
  %36 = load ptr, ptr %33, align 8, !tbaa !48
  %37 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %33, i64 0, i32 1
  %38 = load i64, ptr %37, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #19
  store i64 %38, ptr %13, align 8, !tbaa !47
  %39 = icmp ugt i64 %38, 15
  br i1 %39, label %40, label %44, !prof !53

40:                                               ; preds = %34
  %41 = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 0)
          to label %42 unwind label %152

42:                                               ; preds = %40
  store ptr %41, ptr %14, align 8, !tbaa !48
  %43 = load i64, ptr %13, align 8, !tbaa !47
  store i64 %43, ptr %35, align 8, !tbaa !45
  br label %44

44:                                               ; preds = %42, %34
  %45 = load ptr, ptr %14, align 8, !tbaa !48
  switch i64 %38, label %48 [
    i64 1, label %46
    i64 0, label %49
  ], !prof !54

46:                                               ; preds = %44
  %47 = load i8, ptr %36, align 1, !tbaa !45
  store i8 %47, ptr %45, align 1, !tbaa !45
  br label %49

48:                                               ; preds = %44
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %45, ptr align 1 %36, i64 %38, i1 false), !prof !55
  br label %49

49:                                               ; preds = %44, %46, %48
  %50 = load i64, ptr %13, align 8, !tbaa !47
  %51 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %14, i64 0, i32 1
  store i64 %50, ptr %51, align 8, !tbaa !42
  %52 = load ptr, ptr %14, align 8, !tbaa !48
  %53 = getelementptr inbounds i8, ptr %52, i64 %50
  store i8 0, ptr %53, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #19
  %54 = load ptr, ptr %15, align 8, !tbaa !48
  %55 = icmp eq ptr %54, %30
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load i64, ptr %31, align 8, !tbaa !42
  %58 = icmp ult i64 %57, 16
  call void @llvm.assume(i1 %58)
  br label %60

59:                                               ; preds = %49
  call void @_ZdlPv(ptr noundef %54) #20
  br label %60

60:                                               ; preds = %56, %59
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %16) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %17) #19
  %61 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %17, i64 0, i32 2
  store ptr %61, ptr %17, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #19
  store i64 19, ptr %12, align 8, !tbaa !47
  %62 = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 0)
          to label %63 unwind label %161

63:                                               ; preds = %60
  store ptr %62, ptr %17, align 8, !tbaa !48
  %64 = load i64, ptr %12, align 8, !tbaa !47
  store i64 %64, ptr %61, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %62, ptr noundef nonnull align 1 dereferenceable(19) @.str.5, i64 19, i1 false), !prof !46
  %65 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %17, i64 0, i32 1
  store i64 %64, ptr %65, align 8, !tbaa !42
  %66 = load ptr, ptr %17, align 8, !tbaa !48
  %67 = getelementptr inbounds i8, ptr %66, i64 %64
  store i8 0, ptr %67, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #19
  %68 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6dealii16ParameterHandler3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(288) %1, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %69 unwind label %163

69:                                               ; preds = %63
  %70 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %16, i64 0, i32 2
  store ptr %70, ptr %16, align 8, !tbaa !38
  %71 = load ptr, ptr %68, align 8, !tbaa !48
  %72 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %68, i64 0, i32 1
  %73 = load i64, ptr %72, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #19
  store i64 %73, ptr %11, align 8, !tbaa !47
  %74 = icmp ugt i64 %73, 15
  br i1 %74, label %75, label %79, !prof !53

75:                                               ; preds = %69
  %76 = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef 0)
          to label %77 unwind label %163

77:                                               ; preds = %75
  store ptr %76, ptr %16, align 8, !tbaa !48
  %78 = load i64, ptr %11, align 8, !tbaa !47
  store i64 %78, ptr %70, align 8, !tbaa !45
  br label %79

79:                                               ; preds = %77, %69
  %80 = load ptr, ptr %16, align 8, !tbaa !48
  switch i64 %73, label %83 [
    i64 1, label %81
    i64 0, label %84
  ], !prof !54

81:                                               ; preds = %79
  %82 = load i8, ptr %71, align 1, !tbaa !45
  store i8 %82, ptr %80, align 1, !tbaa !45
  br label %84

83:                                               ; preds = %79
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %80, ptr align 1 %71, i64 %73, i1 false), !prof !55
  br label %84

84:                                               ; preds = %79, %81, %83
  %85 = load i64, ptr %11, align 8, !tbaa !47
  %86 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %16, i64 0, i32 1
  store i64 %85, ptr %86, align 8, !tbaa !42
  %87 = load ptr, ptr %16, align 8, !tbaa !48
  %88 = getelementptr inbounds i8, ptr %87, i64 %85
  store i8 0, ptr %88, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #19
  %89 = load ptr, ptr %17, align 8, !tbaa !48
  %90 = icmp eq ptr %89, %61
  br i1 %90, label %91, label %94

91:                                               ; preds = %84
  %92 = load i64, ptr %65, align 8, !tbaa !42
  %93 = icmp ult i64 %92, 16
  call void @llvm.assume(i1 %93)
  br label %95

94:                                               ; preds = %84
  call void @_ZdlPv(ptr noundef %89) #20
  br label %95

95:                                               ; preds = %91, %94
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %17) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %18) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %19) #19
  %96 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %19, i64 0, i32 2
  store ptr %96, ptr %19, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #19
  store i64 18, ptr %10, align 8, !tbaa !47
  %97 = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef 0)
          to label %98 unwind label %173

98:                                               ; preds = %95
  store ptr %97, ptr %19, align 8, !tbaa !48
  %99 = load i64, ptr %10, align 8, !tbaa !47
  store i64 %99, ptr %96, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %97, ptr noundef nonnull align 1 dereferenceable(18) @.str.7, i64 18, i1 false), !prof !46
  %100 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %19, i64 0, i32 1
  store i64 %99, ptr %100, align 8, !tbaa !42
  %101 = load ptr, ptr %19, align 8, !tbaa !48
  %102 = getelementptr inbounds i8, ptr %101, i64 %99
  store i8 0, ptr %102, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #19
  %103 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6dealii16ParameterHandler3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(288) %1, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %104 unwind label %175

104:                                              ; preds = %98
  %105 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %18, i64 0, i32 2
  store ptr %105, ptr %18, align 8, !tbaa !38
  %106 = load ptr, ptr %103, align 8, !tbaa !48
  %107 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %103, i64 0, i32 1
  %108 = load i64, ptr %107, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #19
  store i64 %108, ptr %9, align 8, !tbaa !47
  %109 = icmp ugt i64 %108, 15
  br i1 %109, label %110, label %114, !prof !53

110:                                              ; preds = %104
  %111 = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(8) %9, i64 noundef 0)
          to label %112 unwind label %175

112:                                              ; preds = %110
  store ptr %111, ptr %18, align 8, !tbaa !48
  %113 = load i64, ptr %9, align 8, !tbaa !47
  store i64 %113, ptr %105, align 8, !tbaa !45
  br label %114

114:                                              ; preds = %112, %104
  %115 = load ptr, ptr %18, align 8, !tbaa !48
  switch i64 %108, label %118 [
    i64 1, label %116
    i64 0, label %119
  ], !prof !54

116:                                              ; preds = %114
  %117 = load i8, ptr %106, align 1, !tbaa !45
  store i8 %117, ptr %115, align 1, !tbaa !45
  br label %119

118:                                              ; preds = %114
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %115, ptr align 1 %106, i64 %108, i1 false), !prof !55
  br label %119

119:                                              ; preds = %114, %116, %118
  %120 = load i64, ptr %9, align 8, !tbaa !47
  %121 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %18, i64 0, i32 1
  store i64 %120, ptr %121, align 8, !tbaa !42
  %122 = load ptr, ptr %18, align 8, !tbaa !48
  %123 = getelementptr inbounds i8, ptr %122, i64 %120
  store i8 0, ptr %123, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #19
  %124 = load ptr, ptr %19, align 8, !tbaa !48
  %125 = icmp eq ptr %124, %96
  br i1 %125, label %126, label %129

126:                                              ; preds = %119
  %127 = load i64, ptr %100, align 8, !tbaa !42
  %128 = icmp ult i64 %127, 16
  call void @llvm.assume(i1 %128)
  br label %130

129:                                              ; preds = %119
  call void @_ZdlPv(ptr noundef %124) #20
  br label %130

130:                                              ; preds = %126, %129
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %19) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %20) #19
  invoke void @_ZN6dealii9Utilities17split_string_listERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.6") align 8 %20, ptr noundef nonnull align 8 dereferenceable(32) %18, i8 noundef signext 44)
          to label %131 unwind label %185

131:                                              ; preds = %130
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %21) #19
  %132 = getelementptr inbounds i8, ptr %21, i64 8
  store i32 0, ptr %132, align 8, !tbaa !56
  %133 = getelementptr inbounds i8, ptr %21, i64 16
  store ptr null, ptr %133, align 8, !tbaa !60
  %134 = getelementptr inbounds i8, ptr %21, i64 24
  store ptr %132, ptr %134, align 8, !tbaa !61
  %135 = getelementptr inbounds i8, ptr %21, i64 32
  store ptr %132, ptr %135, align 8, !tbaa !62
  %136 = getelementptr inbounds i8, ptr %21, i64 40
  store i64 0, ptr %136, align 8, !tbaa !63
  %137 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %20, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !64
  %139 = load ptr, ptr %20, align 8, !tbaa !66
  %140 = icmp eq ptr %138, %139
  br i1 %140, label %145, label %141

141:                                              ; preds = %131
  %142 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %22, i64 0, i32 1
  %143 = getelementptr inbounds %"class.dealii::StandardExceptions::ExcMessage", ptr %23, i64 0, i32 1
  %144 = getelementptr inbounds %"class.dealii::StandardExceptions::ExcMessage", ptr %25, i64 0, i32 1
  br label %187

145:                                              ; preds = %282, %131
  %146 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %20, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %26) #19
  %147 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %26, i64 0, i32 2
  store ptr %147, ptr %26, align 8, !tbaa !38
  store i16 26992, ptr %147, align 8
  %148 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %26, i64 0, i32 1
  store i64 2, ptr %148, align 8, !tbaa !42
  %149 = getelementptr inbounds i8, ptr %26, i64 18
  store i8 0, ptr %149, align 2, !tbaa !45
  %150 = load ptr, ptr %133, align 8, !tbaa !60
  %151 = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef %150, ptr noundef nonnull %132, ptr noundef nonnull align 8 dereferenceable(32) %26)
          to label %321 unwind label %428

152:                                              ; preds = %40, %2
  %153 = landingpad { ptr, i32 }
          cleanup
  %154 = load ptr, ptr %15, align 8, !tbaa !48
  %155 = icmp eq ptr %154, %30
  br i1 %155, label %156, label %159

156:                                              ; preds = %152
  %157 = load i64, ptr %31, align 8, !tbaa !42
  %158 = icmp ult i64 %157, 16
  call void @llvm.assume(i1 %158)
  br label %160

159:                                              ; preds = %152
  call void @_ZdlPv(ptr noundef %154) #20
  br label %160

160:                                              ; preds = %159, %156
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #19
  br label %560

161:                                              ; preds = %60
  %162 = landingpad { ptr, i32 }
          cleanup
  br label %171

163:                                              ; preds = %75, %63
  %164 = landingpad { ptr, i32 }
          cleanup
  %165 = load ptr, ptr %17, align 8, !tbaa !48
  %166 = icmp eq ptr %165, %61
  br i1 %166, label %167, label %170

167:                                              ; preds = %163
  %168 = load i64, ptr %65, align 8, !tbaa !42
  %169 = icmp ult i64 %168, 16
  call void @llvm.assume(i1 %169)
  br label %171

170:                                              ; preds = %163
  call void @_ZdlPv(ptr noundef %165) #20
  br label %171

171:                                              ; preds = %170, %167, %161
  %172 = phi { ptr, i32 } [ %162, %161 ], [ %164, %167 ], [ %164, %170 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %17) #19
  br label %552

173:                                              ; preds = %95
  %174 = landingpad { ptr, i32 }
          cleanup
  br label %183

175:                                              ; preds = %110, %98
  %176 = landingpad { ptr, i32 }
          cleanup
  %177 = load ptr, ptr %19, align 8, !tbaa !48
  %178 = icmp eq ptr %177, %96
  br i1 %178, label %179, label %182

179:                                              ; preds = %175
  %180 = load i64, ptr %100, align 8, !tbaa !42
  %181 = icmp ult i64 %180, 16
  call void @llvm.assume(i1 %181)
  br label %183

182:                                              ; preds = %175
  call void @_ZdlPv(ptr noundef %177) #20
  br label %183

183:                                              ; preds = %182, %179, %173
  %184 = phi { ptr, i32 } [ %174, %173 ], [ %176, %179 ], [ %176, %182 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %19) #19
  br label %544

185:                                              ; preds = %130
  %186 = landingpad { ptr, i32 }
          cleanup
  br label %536

187:                                              ; preds = %141, %282
  %188 = phi ptr [ %139, %141 ], [ %286, %282 ]
  %189 = phi i64 [ 0, %141 ], [ %284, %282 ]
  %190 = phi i32 [ 0, %141 ], [ %283, %282 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %22) #19
  %191 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %188, i64 %189
  invoke void @_ZN6dealii9Utilities17split_string_listERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.6") align 8 %22, ptr noundef nonnull align 8 dereferenceable(32) %191, i8 noundef signext 61)
          to label %192 unwind label %202

192:                                              ; preds = %187
  %193 = load ptr, ptr %142, align 8, !tbaa !64
  %194 = load ptr, ptr %22, align 8, !tbaa !66
  %195 = ptrtoint ptr %193 to i64
  %196 = ptrtoint ptr %194 to i64
  %197 = sub i64 %195, %196
  %198 = icmp eq i64 %197, 64
  br i1 %198, label %211, label %199

199:                                              ; preds = %192
  invoke void @_ZN6dealii13ExceptionBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(60) %23)
          to label %200 unwind label %205

200:                                              ; preds = %199
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii18StandardExceptions10ExcMessageE, i64 0, inrange i32 0, i64 2), ptr %23, align 8, !tbaa !35
  store ptr @.str.13, ptr %143, align 8, !tbaa !67
  invoke void @_ZN6dealii18deal_II_exceptions9internals17issue_error_throwINS_18StandardExceptions10ExcMessageEEEvPKciS6_S6_S6_T_(ptr noundef nonnull @.str.10, i32 noundef 86, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, ptr noundef nonnull %23)
          to label %201 unwind label %208

201:                                              ; preds = %200
  call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %23) #19
  br label %211

202:                                              ; preds = %187
  %203 = landingpad { ptr, i32 }
          cleanup
  %204 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %20, i64 0, i32 1
  br label %318

205:                                              ; preds = %199
  %206 = landingpad { ptr, i32 }
          cleanup
  %207 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %20, i64 0, i32 1
  br label %295

208:                                              ; preds = %200
  %209 = landingpad { ptr, i32 }
          cleanup
  %210 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %20, i64 0, i32 1
  call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %23) #19
  br label %295

211:                                              ; preds = %201, %192
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %24) #19
  %212 = load ptr, ptr %22, align 8, !tbaa !66
  %213 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %212, i64 1
  %214 = load ptr, ptr %213, align 8, !tbaa !48
  %215 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %214, ptr noundef nonnull @.str.14, ptr noundef nonnull %24) #19
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %226

217:                                              ; preds = %211
  invoke void @_ZN6dealii13ExceptionBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(60) %25)
          to label %218 unwind label %220

218:                                              ; preds = %217
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii18StandardExceptions10ExcMessageE, i64 0, inrange i32 0, i64 2), ptr %25, align 8, !tbaa !35
  store ptr @.str.17, ptr %144, align 8, !tbaa !67
  invoke void @_ZN6dealii18deal_II_exceptions9internals17issue_error_throwINS_18StandardExceptions10ExcMessageEEEvPKciS6_S6_S6_T_(ptr noundef nonnull @.str.10, i32 noundef 89, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, ptr noundef nonnull %25)
          to label %219 unwind label %223

219:                                              ; preds = %218
  call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %25) #19
  br label %226

220:                                              ; preds = %256, %226, %217
  %221 = landingpad { ptr, i32 }
          cleanup
  %222 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %20, i64 0, i32 1
  br label %292

223:                                              ; preds = %218
  %224 = landingpad { ptr, i32 }
          cleanup
  %225 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %20, i64 0, i32 1
  call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %25) #19
  br label %292

226:                                              ; preds = %219, %211
  %227 = load double, ptr %24, align 8, !tbaa !72
  %228 = load ptr, ptr %22, align 8, !tbaa !66
  %229 = load ptr, ptr %133, align 8, !tbaa !60
  %230 = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef %229, ptr noundef nonnull %132, ptr noundef nonnull align 8 dereferenceable(32) %228)
          to label %231 unwind label %220

231:                                              ; preds = %226
  %232 = icmp eq ptr %230, %132
  br i1 %232, label %256, label %233

233:                                              ; preds = %231
  %234 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %228, i64 0, i32 1
  %235 = load i64, ptr %234, align 8, !tbaa !42
  %236 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %230, i64 0, i32 1, i32 0, i64 8
  %237 = load i64, ptr %236, align 8, !tbaa !42
  %238 = call i64 @llvm.umin.i64(i64 %237, i64 %235)
  %239 = icmp eq i64 %238, 0
  br i1 %239, label %245, label %240

240:                                              ; preds = %233
  %241 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %230, i64 0, i32 1
  %242 = load ptr, ptr %241, align 8, !tbaa !48
  %243 = load ptr, ptr %228, align 8, !tbaa !48
  %244 = call i32 @memcmp(ptr noundef %243, ptr noundef %242, i64 noundef %238) #19
  br label %245

245:                                              ; preds = %240, %233
  %246 = phi i32 [ %244, %240 ], [ 0, %233 ]
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %253

248:                                              ; preds = %245
  %249 = sub i64 %235, %237
  %250 = call i64 @llvm.smax.i64(i64 %249, i64 -2147483648)
  %251 = call i64 @llvm.smin.i64(i64 %250, i64 2147483647)
  %252 = trunc i64 %251 to i32
  br label %253

253:                                              ; preds = %248, %245
  %254 = phi i32 [ %246, %245 ], [ %252, %248 ]
  %255 = icmp slt i32 %254, 0
  br i1 %255, label %256, label %259

256:                                              ; preds = %253, %231
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  store ptr %228, ptr %7, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #19
  %257 = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr %230, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %258 unwind label %220

258:                                              ; preds = %256
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  br label %259

259:                                              ; preds = %253, %258
  %260 = phi ptr [ %257, %258 ], [ %230, %253 ]
  %261 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %260, i64 0, i32 1, i32 0, i64 32
  store double %227, ptr %261, align 8, !tbaa !72
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %24) #19
  %262 = load ptr, ptr %22, align 8, !tbaa !66
  %263 = load ptr, ptr %142, align 8, !tbaa !64
  %264 = icmp eq ptr %262, %263
  br i1 %264, label %278, label %265

265:                                              ; preds = %259, %275
  %266 = phi ptr [ %276, %275 ], [ %262, %259 ]
  %267 = load ptr, ptr %266, align 8, !tbaa !48
  %268 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %266, i64 0, i32 2
  %269 = icmp eq ptr %267, %268
  br i1 %269, label %270, label %274

270:                                              ; preds = %265
  %271 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %266, i64 0, i32 1
  %272 = load i64, ptr %271, align 8, !tbaa !42
  %273 = icmp ult i64 %272, 16
  call void @llvm.assume(i1 %273)
  br label %275

274:                                              ; preds = %265
  call void @_ZdlPv(ptr noundef %267) #20
  br label %275

275:                                              ; preds = %274, %270
  %276 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %266, i64 1
  %277 = icmp eq ptr %276, %263
  br i1 %277, label %278, label %265, !llvm.loop !75

278:                                              ; preds = %275, %259
  %279 = load ptr, ptr %22, align 8, !tbaa !66
  %280 = icmp eq ptr %279, null
  br i1 %280, label %282, label %281

281:                                              ; preds = %278
  call void @_ZdlPv(ptr noundef %279) #20
  br label %282

282:                                              ; preds = %278, %281
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %22) #19
  %283 = add i32 %190, 1
  %284 = zext i32 %283 to i64
  %285 = load ptr, ptr %137, align 8, !tbaa !64
  %286 = load ptr, ptr %20, align 8, !tbaa !66
  %287 = ptrtoint ptr %285 to i64
  %288 = ptrtoint ptr %286 to i64
  %289 = sub i64 %287, %288
  %290 = ashr exact i64 %289, 5
  %291 = icmp ugt i64 %290, %284
  br i1 %291, label %187, label %145, !llvm.loop !85

292:                                              ; preds = %223, %220
  %293 = phi ptr [ %222, %220 ], [ %225, %223 ]
  %294 = phi { ptr, i32 } [ %221, %220 ], [ %224, %223 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %24) #19
  br label %295

295:                                              ; preds = %292, %208, %205
  %296 = phi ptr [ %293, %292 ], [ %210, %208 ], [ %207, %205 ]
  %297 = phi { ptr, i32 } [ %294, %292 ], [ %209, %208 ], [ %206, %205 ]
  %298 = load ptr, ptr %22, align 8, !tbaa !66
  %299 = load ptr, ptr %142, align 8, !tbaa !64
  %300 = icmp eq ptr %298, %299
  br i1 %300, label %314, label %301

301:                                              ; preds = %295, %311
  %302 = phi ptr [ %312, %311 ], [ %298, %295 ]
  %303 = load ptr, ptr %302, align 8, !tbaa !48
  %304 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %302, i64 0, i32 2
  %305 = icmp eq ptr %303, %304
  br i1 %305, label %306, label %310

306:                                              ; preds = %301
  %307 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %302, i64 0, i32 1
  %308 = load i64, ptr %307, align 8, !tbaa !42
  %309 = icmp ult i64 %308, 16
  call void @llvm.assume(i1 %309)
  br label %311

310:                                              ; preds = %301
  call void @_ZdlPv(ptr noundef %303) #20
  br label %311

311:                                              ; preds = %310, %306
  %312 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %302, i64 1
  %313 = icmp eq ptr %312, %299
  br i1 %313, label %314, label %301, !llvm.loop !75

314:                                              ; preds = %311, %295
  %315 = load ptr, ptr %22, align 8, !tbaa !66
  %316 = icmp eq ptr %315, null
  br i1 %316, label %318, label %317

317:                                              ; preds = %314
  call void @_ZdlPv(ptr noundef %315) #20
  br label %318

318:                                              ; preds = %317, %314, %202
  %319 = phi ptr [ %204, %202 ], [ %296, %314 ], [ %296, %317 ]
  %320 = phi { ptr, i32 } [ %203, %202 ], [ %297, %314 ], [ %297, %317 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %22) #19
  br label %508

321:                                              ; preds = %145
  %322 = icmp eq ptr %151, %132
  br i1 %322, label %345, label %323

323:                                              ; preds = %321
  %324 = load i64, ptr %148, align 8, !tbaa !42
  %325 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %151, i64 0, i32 1, i32 0, i64 8
  %326 = load i64, ptr %325, align 8, !tbaa !42
  %327 = call i64 @llvm.umin.i64(i64 %326, i64 %324)
  %328 = icmp eq i64 %327, 0
  br i1 %328, label %334, label %329

329:                                              ; preds = %323
  %330 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %151, i64 0, i32 1
  %331 = load ptr, ptr %330, align 8, !tbaa !48
  %332 = load ptr, ptr %26, align 8, !tbaa !48
  %333 = call i32 @memcmp(ptr noundef %332, ptr noundef %331, i64 noundef %327) #19
  br label %334

334:                                              ; preds = %329, %323
  %335 = phi i32 [ %333, %329 ], [ 0, %323 ]
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %337, label %342

337:                                              ; preds = %334
  %338 = sub i64 %324, %326
  %339 = call i64 @llvm.smax.i64(i64 %338, i64 -2147483648)
  %340 = call i64 @llvm.smin.i64(i64 %339, i64 2147483647)
  %341 = trunc i64 %340 to i32
  br label %342

342:                                              ; preds = %337, %334
  %343 = phi i32 [ %335, %334 ], [ %341, %337 ]
  %344 = icmp slt i32 %343, 0
  br i1 %344, label %345, label %348

345:                                              ; preds = %342, %321
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  store ptr %26, ptr %5, align 8, !tbaa !74, !alias.scope !86
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #19
  %346 = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr %151, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %347 unwind label %428

347:                                              ; preds = %345
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  br label %348

348:                                              ; preds = %342, %347
  %349 = phi ptr [ %346, %347 ], [ %151, %342 ]
  %350 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %349, i64 0, i32 1, i32 0, i64 32
  store double 0x400921FB54442D18, ptr %350, align 8, !tbaa !72
  %351 = load ptr, ptr %26, align 8, !tbaa !48
  %352 = icmp eq ptr %351, %147
  br i1 %352, label %353, label %356

353:                                              ; preds = %348
  %354 = load i64, ptr %148, align 8, !tbaa !42
  %355 = icmp ult i64 %354, 16
  call void @llvm.assume(i1 %355)
  br label %357

356:                                              ; preds = %348
  call void @_ZdlPv(ptr noundef %351) #20
  br label %357

357:                                              ; preds = %353, %356
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %26) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %27) #19
  %358 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %27, i64 0, i32 2
  store ptr %358, ptr %27, align 8, !tbaa !38
  store i16 26960, ptr %358, align 8
  %359 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %27, i64 0, i32 1
  store i64 2, ptr %359, align 8, !tbaa !42
  %360 = getelementptr inbounds i8, ptr %27, i64 18
  store i8 0, ptr %360, align 2, !tbaa !45
  %361 = load ptr, ptr %133, align 8, !tbaa !60
  %362 = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef %361, ptr noundef nonnull %132, ptr noundef nonnull align 8 dereferenceable(32) %27)
          to label %363 unwind label %437

363:                                              ; preds = %357
  %364 = icmp eq ptr %362, %132
  br i1 %364, label %387, label %365

365:                                              ; preds = %363
  %366 = load i64, ptr %359, align 8, !tbaa !42
  %367 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %362, i64 0, i32 1, i32 0, i64 8
  %368 = load i64, ptr %367, align 8, !tbaa !42
  %369 = call i64 @llvm.umin.i64(i64 %368, i64 %366)
  %370 = icmp eq i64 %369, 0
  br i1 %370, label %376, label %371

371:                                              ; preds = %365
  %372 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %362, i64 0, i32 1
  %373 = load ptr, ptr %372, align 8, !tbaa !48
  %374 = load ptr, ptr %27, align 8, !tbaa !48
  %375 = call i32 @memcmp(ptr noundef %374, ptr noundef %373, i64 noundef %369) #19
  br label %376

376:                                              ; preds = %371, %365
  %377 = phi i32 [ %375, %371 ], [ 0, %365 ]
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %379, label %384

379:                                              ; preds = %376
  %380 = sub i64 %366, %368
  %381 = call i64 @llvm.smax.i64(i64 %380, i64 -2147483648)
  %382 = call i64 @llvm.smin.i64(i64 %381, i64 2147483647)
  %383 = trunc i64 %382 to i32
  br label %384

384:                                              ; preds = %379, %376
  %385 = phi i32 [ %377, %376 ], [ %383, %379 ]
  %386 = icmp slt i32 %385, 0
  br i1 %386, label %387, label %390

387:                                              ; preds = %384, %363
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  store ptr %27, ptr %3, align 8, !tbaa !74, !alias.scope !89
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #19
  %388 = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr %362, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %389 unwind label %437

389:                                              ; preds = %387
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  br label %390

390:                                              ; preds = %384, %389
  %391 = phi ptr [ %388, %389 ], [ %362, %384 ]
  %392 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %391, i64 0, i32 1, i32 0, i64 32
  store double 0x400921FB54442D18, ptr %392, align 8, !tbaa !72
  %393 = load ptr, ptr %27, align 8, !tbaa !48
  %394 = icmp eq ptr %393, %358
  br i1 %394, label %395, label %398

395:                                              ; preds = %390
  %396 = load i64, ptr %359, align 8, !tbaa !42
  %397 = icmp ult i64 %396, 16
  call void @llvm.assume(i1 %397)
  br label %399

398:                                              ; preds = %390
  call void @_ZdlPv(ptr noundef %393) #20
  br label %399

399:                                              ; preds = %395, %398
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %27) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %28) #19
  invoke void @_ZN6dealii9Utilities17split_string_listERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.6") align 8 %28, ptr noundef nonnull align 8 dereferenceable(32) %14, i8 noundef signext 44)
          to label %400 unwind label %446

400:                                              ; preds = %399
  %401 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %28, i64 0, i32 1
  %402 = load ptr, ptr %401, align 8, !tbaa !64
  %403 = load ptr, ptr %28, align 8, !tbaa !66
  %404 = ptrtoint ptr %402 to i64
  %405 = ptrtoint ptr %403 to i64
  %406 = sub i64 %404, %405
  %407 = lshr exact i64 %406, 5
  %408 = trunc i64 %407 to i32
  %409 = icmp eq ptr %403, %402
  br i1 %409, label %423, label %410

410:                                              ; preds = %400, %420
  %411 = phi ptr [ %421, %420 ], [ %403, %400 ]
  %412 = load ptr, ptr %411, align 8, !tbaa !48
  %413 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %411, i64 0, i32 2
  %414 = icmp eq ptr %412, %413
  br i1 %414, label %415, label %419

415:                                              ; preds = %410
  %416 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %411, i64 0, i32 1
  %417 = load i64, ptr %416, align 8, !tbaa !42
  %418 = icmp ult i64 %417, 16
  call void @llvm.assume(i1 %418)
  br label %420

419:                                              ; preds = %410
  call void @_ZdlPv(ptr noundef %412) #20
  br label %420

420:                                              ; preds = %419, %415
  %421 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %411, i64 1
  %422 = icmp eq ptr %421, %402
  br i1 %422, label %423, label %410, !llvm.loop !75

423:                                              ; preds = %420, %400
  %424 = load ptr, ptr %28, align 8, !tbaa !66
  %425 = icmp eq ptr %424, null
  br i1 %425, label %427, label %426

426:                                              ; preds = %423
  call void @_ZdlPv(ptr noundef %424) #20
  br label %427

427:                                              ; preds = %423, %426
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %28) #19
  switch i32 %408, label %454 [
    i32 2, label %451
    i32 3, label %450
  ]

428:                                              ; preds = %345, %145
  %429 = landingpad { ptr, i32 }
          cleanup
  %430 = load ptr, ptr %26, align 8, !tbaa !48
  %431 = icmp eq ptr %430, %147
  br i1 %431, label %432, label %435

432:                                              ; preds = %428
  %433 = load i64, ptr %148, align 8, !tbaa !42
  %434 = icmp ult i64 %433, 16
  call void @llvm.assume(i1 %434)
  br label %436

435:                                              ; preds = %428
  call void @_ZdlPv(ptr noundef %430) #20
  br label %436

436:                                              ; preds = %435, %432
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %26) #19
  br label %508

437:                                              ; preds = %387, %357
  %438 = landingpad { ptr, i32 }
          cleanup
  %439 = load ptr, ptr %27, align 8, !tbaa !48
  %440 = icmp eq ptr %439, %358
  br i1 %440, label %441, label %444

441:                                              ; preds = %437
  %442 = load i64, ptr %359, align 8, !tbaa !42
  %443 = icmp ult i64 %442, 16
  call void @llvm.assume(i1 %443)
  br label %445

444:                                              ; preds = %437
  call void @_ZdlPv(ptr noundef %439) #20
  br label %445

445:                                              ; preds = %444, %441
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %27) #19
  br label %508

446:                                              ; preds = %399
  %447 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %28) #19
  br label %508

448:                                              ; preds = %451, %454
  %449 = landingpad { ptr, i32 }
          cleanup
  br label %508

450:                                              ; preds = %427
  br label %451

451:                                              ; preds = %427, %450
  %452 = phi i1 [ true, %450 ], [ false, %427 ]
  %453 = getelementptr inbounds %"class.dealii::Functions::ParsedFunction.29", ptr %0, i64 0, i32 1
  invoke void @_ZN6dealii14FunctionParserILi2EE10initializeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_RKSt3mapIS7_dSt4lessIS7_ESaISt4pairIS8_dEEEbb(ptr noundef nonnull align 8 dereferenceable(112) %453, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(48) %21, i1 noundef zeroext %452, i1 noundef zeroext false)
          to label %458 unwind label %448

454:                                              ; preds = %427
  invoke void @_ZN6dealii13ExceptionBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(60) %29)
          to label %455 unwind label %448

455:                                              ; preds = %454
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii18StandardExceptions10ExcMessageE, i64 0, inrange i32 0, i64 2), ptr %29, align 8, !tbaa !35
  %456 = getelementptr inbounds %"class.dealii::StandardExceptions::ExcMessage", ptr %29, i64 0, i32 1
  store ptr @.str.22, ptr %456, align 8, !tbaa !67
  invoke void @_ZN6dealii18deal_II_exceptions9internals17issue_error_throwINS_18StandardExceptions10ExcMessageEEEvPKciS6_S6_S6_T_(ptr noundef nonnull @.str.10, i32 noundef 108, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, ptr noundef nonnull %29)
          to label %457 unwind label %506

457:                                              ; preds = %455
  call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %29) #19
  br label %458

458:                                              ; preds = %451, %457
  %459 = load ptr, ptr %133, align 8, !tbaa !60
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef %459)
          to label %463 unwind label %460

460:                                              ; preds = %458
  %461 = landingpad { ptr, i32 }
          catch ptr null
  %462 = extractvalue { ptr, i32 } %461, 0
  call void @__clang_call_terminate(ptr %462) #22
  unreachable

463:                                              ; preds = %458
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %21) #19
  %464 = load ptr, ptr %20, align 8, !tbaa !66
  %465 = load ptr, ptr %146, align 8, !tbaa !64
  %466 = icmp eq ptr %464, %465
  br i1 %466, label %480, label %467

467:                                              ; preds = %463, %477
  %468 = phi ptr [ %478, %477 ], [ %464, %463 ]
  %469 = load ptr, ptr %468, align 8, !tbaa !48
  %470 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %468, i64 0, i32 2
  %471 = icmp eq ptr %469, %470
  br i1 %471, label %472, label %476

472:                                              ; preds = %467
  %473 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %468, i64 0, i32 1
  %474 = load i64, ptr %473, align 8, !tbaa !42
  %475 = icmp ult i64 %474, 16
  call void @llvm.assume(i1 %475)
  br label %477

476:                                              ; preds = %467
  call void @_ZdlPv(ptr noundef %469) #20
  br label %477

477:                                              ; preds = %476, %472
  %478 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %468, i64 1
  %479 = icmp eq ptr %478, %465
  br i1 %479, label %480, label %467, !llvm.loop !75

480:                                              ; preds = %477, %463
  %481 = load ptr, ptr %20, align 8, !tbaa !66
  %482 = icmp eq ptr %481, null
  br i1 %482, label %484, label %483

483:                                              ; preds = %480
  call void @_ZdlPv(ptr noundef %481) #20
  br label %484

484:                                              ; preds = %480, %483
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %20) #19
  %485 = load ptr, ptr %18, align 8, !tbaa !48
  %486 = icmp eq ptr %485, %105
  br i1 %486, label %487, label %490

487:                                              ; preds = %484
  %488 = load i64, ptr %121, align 8, !tbaa !42
  %489 = icmp ult i64 %488, 16
  call void @llvm.assume(i1 %489)
  br label %491

490:                                              ; preds = %484
  call void @_ZdlPv(ptr noundef %485) #20
  br label %491

491:                                              ; preds = %487, %490
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %18) #19
  %492 = load ptr, ptr %16, align 8, !tbaa !48
  %493 = icmp eq ptr %492, %70
  br i1 %493, label %494, label %497

494:                                              ; preds = %491
  %495 = load i64, ptr %86, align 8, !tbaa !42
  %496 = icmp ult i64 %495, 16
  call void @llvm.assume(i1 %496)
  br label %498

497:                                              ; preds = %491
  call void @_ZdlPv(ptr noundef %492) #20
  br label %498

498:                                              ; preds = %494, %497
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %16) #19
  %499 = load ptr, ptr %14, align 8, !tbaa !48
  %500 = icmp eq ptr %499, %35
  br i1 %500, label %501, label %504

501:                                              ; preds = %498
  %502 = load i64, ptr %51, align 8, !tbaa !42
  %503 = icmp ult i64 %502, 16
  call void @llvm.assume(i1 %503)
  br label %505

504:                                              ; preds = %498
  call void @_ZdlPv(ptr noundef %499) #20
  br label %505

505:                                              ; preds = %501, %504
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #19
  ret void

506:                                              ; preds = %455
  %507 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %29) #19
  br label %508

508:                                              ; preds = %446, %448, %506, %445, %436, %318
  %509 = phi ptr [ %319, %318 ], [ %146, %445 ], [ %146, %436 ], [ %146, %506 ], [ %146, %448 ], [ %146, %446 ]
  %510 = phi { ptr, i32 } [ %320, %318 ], [ %438, %445 ], [ %429, %436 ], [ %507, %506 ], [ %449, %448 ], [ %447, %446 ]
  %511 = load ptr, ptr %133, align 8, !tbaa !60
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef %511)
          to label %515 unwind label %512

512:                                              ; preds = %508
  %513 = landingpad { ptr, i32 }
          catch ptr null
  %514 = extractvalue { ptr, i32 } %513, 0
  call void @__clang_call_terminate(ptr %514) #22
  unreachable

515:                                              ; preds = %508
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %21) #19
  %516 = load ptr, ptr %20, align 8, !tbaa !66
  %517 = load ptr, ptr %509, align 8, !tbaa !64
  %518 = icmp eq ptr %516, %517
  br i1 %518, label %532, label %519

519:                                              ; preds = %515, %529
  %520 = phi ptr [ %530, %529 ], [ %516, %515 ]
  %521 = load ptr, ptr %520, align 8, !tbaa !48
  %522 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %520, i64 0, i32 2
  %523 = icmp eq ptr %521, %522
  br i1 %523, label %524, label %528

524:                                              ; preds = %519
  %525 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %520, i64 0, i32 1
  %526 = load i64, ptr %525, align 8, !tbaa !42
  %527 = icmp ult i64 %526, 16
  call void @llvm.assume(i1 %527)
  br label %529

528:                                              ; preds = %519
  call void @_ZdlPv(ptr noundef %521) #20
  br label %529

529:                                              ; preds = %528, %524
  %530 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %520, i64 1
  %531 = icmp eq ptr %530, %517
  br i1 %531, label %532, label %519, !llvm.loop !75

532:                                              ; preds = %529, %515
  %533 = load ptr, ptr %20, align 8, !tbaa !66
  %534 = icmp eq ptr %533, null
  br i1 %534, label %536, label %535

535:                                              ; preds = %532
  call void @_ZdlPv(ptr noundef %533) #20
  br label %536

536:                                              ; preds = %535, %532, %185
  %537 = phi { ptr, i32 } [ %186, %185 ], [ %510, %532 ], [ %510, %535 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %20) #19
  %538 = load ptr, ptr %18, align 8, !tbaa !48
  %539 = icmp eq ptr %538, %105
  br i1 %539, label %540, label %543

540:                                              ; preds = %536
  %541 = load i64, ptr %121, align 8, !tbaa !42
  %542 = icmp ult i64 %541, 16
  call void @llvm.assume(i1 %542)
  br label %544

543:                                              ; preds = %536
  call void @_ZdlPv(ptr noundef %538) #20
  br label %544

544:                                              ; preds = %543, %540, %183
  %545 = phi { ptr, i32 } [ %184, %183 ], [ %537, %540 ], [ %537, %543 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %18) #19
  %546 = load ptr, ptr %16, align 8, !tbaa !48
  %547 = icmp eq ptr %546, %70
  br i1 %547, label %548, label %551

548:                                              ; preds = %544
  %549 = load i64, ptr %86, align 8, !tbaa !42
  %550 = icmp ult i64 %549, 16
  call void @llvm.assume(i1 %550)
  br label %552

551:                                              ; preds = %544
  call void @_ZdlPv(ptr noundef %546) #20
  br label %552

552:                                              ; preds = %551, %548, %171
  %553 = phi { ptr, i32 } [ %172, %171 ], [ %545, %548 ], [ %545, %551 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %16) #19
  %554 = load ptr, ptr %14, align 8, !tbaa !48
  %555 = icmp eq ptr %554, %35
  br i1 %555, label %556, label %559

556:                                              ; preds = %552
  %557 = load i64, ptr %51, align 8, !tbaa !42
  %558 = icmp ult i64 %557, 16
  call void @llvm.assume(i1 %558)
  br label %560

559:                                              ; preds = %552
  call void @_ZdlPv(ptr noundef %554) #20
  br label %560

560:                                              ; preds = %559, %556, %160
  %561 = phi { ptr, i32 } [ %153, %160 ], [ %553, %556 ], [ %553, %559 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #19
  resume { ptr, i32 } %561
}

declare void @_ZN6dealii14FunctionParserILi2EE10initializeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_RKSt3mapIS7_dSt4lessIS7_ESaISt4pairIS8_dEEEbb(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(48), i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14ParsedFunctionILi2EE12vector_valueERKNS_5PointILi2EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %2) unnamed_addr #4 comdat align 2 !prof !83 {
  %4 = getelementptr inbounds %"class.dealii::Functions::ParsedFunction.29", ptr %0, i64 0, i32 1
  tail call void @_ZNK6dealii14FunctionParserILi2EE12vector_valueERKNS_5PointILi2EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(112) %4, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %2)
  ret void
}

declare void @_ZNK6dealii14FunctionParserILi2EE12vector_valueERKNS_5PointILi2EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 1, ptr noundef nonnull align 1) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions14ParsedFunctionILi2EE5valueERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 1 %1, i32 noundef %2) unnamed_addr #4 comdat align 2 !prof !83 {
  %4 = getelementptr inbounds %"class.dealii::Functions::ParsedFunction.29", ptr %0, i64 0, i32 1
  %5 = tail call noundef double @_ZNK6dealii14FunctionParserILi2EE5valueERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(112) %4, ptr noundef nonnull align 1 %1, i32 noundef %2)
  ret double %5
}

declare noundef double @_ZNK6dealii14FunctionParserILi2EE5valueERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 1, i32 noundef) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii9Functions14ParsedFunctionILi2EE8set_timeEd(ptr noundef nonnull align 8 dereferenceable(248) %0, double noundef %1) unnamed_addr #4 comdat align 2 !prof !83 {
  %3 = getelementptr inbounds %"class.dealii::Functions::ParsedFunction.29", ptr %0, i64 0, i32 1
  tail call void @_ZN6dealii12FunctionTime8set_timeEd(ptr noundef nonnull align 8 dereferenceable(16) %3, double noundef %1)
  tail call void @_ZN6dealii12FunctionTime8set_timeEd(ptr noundef nonnull align 8 dereferenceable(16) %0, double noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii9Functions14ParsedFunctionILi3EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(248) %0, i32 noundef %1, double noundef %2) unnamed_addr #0 comdat($_ZN6dealii9Functions14ParsedFunctionILi3EEC5Ejd) align 2 personality ptr @__gxx_personality_v0 !annotation !34 {
  tail call void @_ZN6dealii22AutoDerivativeFunctionILi3EEC2Edjd(ptr noundef nonnull align 8 dereferenceable(132) %0, double noundef %2, i32 noundef %1, double noundef 0.000000e+00)
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14ParsedFunctionILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14ParsedFunctionILi3EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !35
  %5 = getelementptr inbounds %"class.dealii::Functions::ParsedFunction.41", ptr %0, i64 0, i32 1
  invoke void @_ZN6dealii14FunctionParserILi3EEC1Ejd(ptr noundef nonnull align 8 dereferenceable(112) %5, i32 noundef %1, double noundef 0.000000e+00)
          to label %6 unwind label %7

6:                                                ; preds = %3
  ret void

7:                                                ; preds = %3
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6dealii22AutoDerivativeFunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(132) %0) #19
  resume { ptr, i32 } %8
}

declare void @_ZN6dealii22AutoDerivativeFunctionILi3EEC2Edjd(ptr noundef nonnull align 8 dereferenceable(132), double noundef, i32 noundef, double noundef) unnamed_addr #1

declare void @_ZN6dealii14FunctionParserILi3EEC1Ejd(ptr noundef nonnull align 8 dereferenceable(112), i32 noundef, double noundef) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN6dealii22AutoDerivativeFunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(132)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii9Functions14ParsedFunctionILi3EE18declare_parametersERNS_16ParameterHandlerEj(ptr noundef nonnull align 8 dereferenceable(288) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !34 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %"class.std::__cxx11::basic_string", align 8
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  %10 = alloca %"class.dealii::Patterns::Anything", align 8
  %11 = alloca %"class.std::__cxx11::basic_string", align 8
  %12 = alloca %"class.std::__cxx11::basic_string", align 8
  %13 = alloca %"class.std::__cxx11::basic_string", align 8
  %14 = alloca %"class.dealii::Patterns::Anything", align 8
  %15 = alloca %"class.std::__cxx11::basic_string", align 8
  %16 = alloca %"class.std::__cxx11::basic_string", align 8
  %17 = alloca %"class.std::__cxx11::basic_string", align 8
  %18 = alloca %"class.dealii::Patterns::Anything", align 8
  %19 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #19
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 2
  store ptr %20, ptr %8, align 8, !tbaa !38
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 1
  store i64 0, ptr %21, align 8, !tbaa !42
  store i8 0, ptr %20, align 8, !tbaa !45
  %22 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.24, i64 noundef 7)
          to label %23 unwind label %61

23:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #19
  %24 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 2
  store ptr %24, ptr %9, align 8, !tbaa !38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %24, ptr noundef nonnull align 1 dereferenceable(14) @.str.1, i64 14, i1 false), !prof !46
  %25 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 1
  store i64 14, ptr %25, align 8, !tbaa !42
  %26 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 2, i32 1, i64 6
  store i8 0, ptr %26, align 2, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #19
  invoke void @_ZN6dealii8Patterns8AnythingC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %27 unwind label %63

27:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #19
  %28 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %11, i64 0, i32 2
  store ptr %28, ptr %11, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  store i64 81, ptr %7, align 8, !tbaa !47
  %29 = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 0)
          to label %30 unwind label %65

30:                                               ; preds = %27
  store ptr %29, ptr %11, align 8, !tbaa !48
  %31 = load i64, ptr %7, align 8, !tbaa !47
  store i64 %31, ptr %28, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(81) %29, ptr noundef nonnull align 1 dereferenceable(81) @.str.2, i64 81, i1 false), !prof !46
  %32 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %11, i64 0, i32 1
  store i64 %31, ptr %32, align 8, !tbaa !42
  %33 = getelementptr inbounds i8, ptr %29, i64 %31
  store i8 0, ptr %33, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  invoke void @_ZN6dealii16ParameterHandler13declare_entryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_RKNS_8Patterns11PatternBaseES8_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %34 unwind label %67

34:                                               ; preds = %30
  %35 = load ptr, ptr %11, align 8, !tbaa !48
  %36 = icmp eq ptr %35, %28
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i64, ptr %32, align 8, !tbaa !42
  %39 = icmp ult i64 %38, 16
  call void @llvm.assume(i1 %39)
  br label %41

40:                                               ; preds = %34
  call void @_ZdlPv(ptr noundef %35) #20
  br label %41

41:                                               ; preds = %37, %40
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #19
  call void @_ZN6dealii8Patterns11PatternBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #19
  %42 = load ptr, ptr %9, align 8, !tbaa !48
  %43 = icmp eq ptr %42, %24
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i64, ptr %25, align 8, !tbaa !42
  %46 = icmp ult i64 %45, 16
  call void @llvm.assume(i1 %46)
  br label %48

47:                                               ; preds = %41
  call void @_ZdlPv(ptr noundef %42) #20
  br label %48

48:                                               ; preds = %44, %47
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #19
  %49 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 0, i32 2
  store ptr %49, ptr %12, align 8, !tbaa !38
  store i8 48, ptr %49, align 8, !tbaa !45
  %50 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 0, i32 1
  store i64 1, ptr %50, align 8, !tbaa !42
  %51 = getelementptr inbounds i8, ptr %12, i64 17
  store i8 0, ptr %51, align 1, !tbaa !45
  %52 = icmp ugt i32 %1, 1
  br i1 %52, label %86, label %53

53:                                               ; preds = %95, %48
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %13) #19
  %54 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %13, i64 0, i32 2
  store ptr %54, ptr %13, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  store i64 19, ptr %6, align 8, !tbaa !47
  %55 = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 0)
          to label %56 unwind label %176

56:                                               ; preds = %53
  store ptr %55, ptr %13, align 8, !tbaa !48
  %57 = load i64, ptr %6, align 8, !tbaa !47
  store i64 %57, ptr %54, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %55, ptr noundef nonnull align 1 dereferenceable(19) @.str.5, i64 19, i1 false), !prof !46
  %58 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %13, i64 0, i32 1
  store i64 %57, ptr %58, align 8, !tbaa !42
  %59 = load ptr, ptr %13, align 8, !tbaa !48
  %60 = getelementptr inbounds i8, ptr %59, i64 %57
  store i8 0, ptr %60, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #19
  invoke void @_ZN6dealii8Patterns8AnythingC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %102 unwind label %178

61:                                               ; preds = %2
  %62 = landingpad { ptr, i32 }
          cleanup
  br label %244

63:                                               ; preds = %23
  %64 = landingpad { ptr, i32 }
          cleanup
  br label %77

65:                                               ; preds = %27
  %66 = landingpad { ptr, i32 }
          cleanup
  br label %75

67:                                               ; preds = %30
  %68 = landingpad { ptr, i32 }
          cleanup
  %69 = load ptr, ptr %11, align 8, !tbaa !48
  %70 = icmp eq ptr %69, %28
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load i64, ptr %32, align 8, !tbaa !42
  %73 = icmp ult i64 %72, 16
  call void @llvm.assume(i1 %73)
  br label %75

74:                                               ; preds = %67
  call void @_ZdlPv(ptr noundef %69) #20
  br label %75

75:                                               ; preds = %74, %71, %65
  %76 = phi { ptr, i32 } [ %66, %65 ], [ %68, %71 ], [ %68, %74 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #19
  call void @_ZN6dealii8Patterns11PatternBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #19
  br label %77

77:                                               ; preds = %75, %63
  %78 = phi { ptr, i32 } [ %76, %75 ], [ %64, %63 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #19
  %79 = load ptr, ptr %9, align 8, !tbaa !48
  %80 = icmp eq ptr %79, %24
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i64, ptr %25, align 8, !tbaa !42
  %83 = icmp ult i64 %82, 16
  call void @llvm.assume(i1 %83)
  br label %85

84:                                               ; preds = %77
  call void @_ZdlPv(ptr noundef %79) #20
  br label %85

85:                                               ; preds = %84, %81
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #19
  br label %244

86:                                               ; preds = %48, %95
  %87 = phi i32 [ %96, %95 ], [ 1, %48 ]
  %88 = load i64, ptr %50, align 8, !tbaa !42
  %89 = add i64 %88, -4611686018427387901
  %90 = icmp ult i64 %89, 3
  br i1 %90, label %91, label %93, !prof !49

91:                                               ; preds = %86
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #21
          to label %92 unwind label %100

92:                                               ; preds = %91
  unreachable

93:                                               ; preds = %86
  %94 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.4, i64 noundef 3)
          to label %95 unwind label %98

95:                                               ; preds = %93
  %96 = add nuw i32 %87, 1
  %97 = icmp eq i32 %96, %1
  br i1 %97, label %53, label %86, !llvm.loop !92

98:                                               ; preds = %93
  %99 = landingpad { ptr, i32 }
          cleanup
  br label %235

100:                                              ; preds = %91
  %101 = landingpad { ptr, i32 }
          cleanup
  br label %235

102:                                              ; preds = %56
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %15) #19
  %103 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %15, i64 0, i32 2
  store ptr %103, ptr %15, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  store i64 91, ptr %5, align 8, !tbaa !47
  %104 = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef 0)
          to label %105 unwind label %180

105:                                              ; preds = %102
  store ptr %104, ptr %15, align 8, !tbaa !48
  %106 = load i64, ptr %5, align 8, !tbaa !47
  store i64 %106, ptr %103, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(91) %104, ptr noundef nonnull align 1 dereferenceable(91) @.str.6, i64 91, i1 false), !prof !46
  %107 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %15, i64 0, i32 1
  store i64 %106, ptr %107, align 8, !tbaa !42
  %108 = getelementptr inbounds i8, ptr %104, i64 %106
  store i8 0, ptr %108, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  invoke void @_ZN6dealii16ParameterHandler13declare_entryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_RKNS_8Patterns11PatternBaseES8_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %109 unwind label %182

109:                                              ; preds = %105
  %110 = load ptr, ptr %15, align 8, !tbaa !48
  %111 = icmp eq ptr %110, %103
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load i64, ptr %107, align 8, !tbaa !42
  %114 = icmp ult i64 %113, 16
  call void @llvm.assume(i1 %114)
  br label %116

115:                                              ; preds = %109
  call void @_ZdlPv(ptr noundef %110) #20
  br label %116

116:                                              ; preds = %112, %115
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #19
  call void @_ZN6dealii8Patterns11PatternBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #19
  %117 = load ptr, ptr %13, align 8, !tbaa !48
  %118 = icmp eq ptr %117, %54
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load i64, ptr %58, align 8, !tbaa !42
  %121 = icmp ult i64 %120, 16
  call void @llvm.assume(i1 %121)
  br label %123

122:                                              ; preds = %116
  call void @_ZdlPv(ptr noundef %117) #20
  br label %123

123:                                              ; preds = %119, %122
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %16) #19
  %124 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %16, i64 0, i32 2
  store ptr %124, ptr %16, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  store i64 18, ptr %4, align 8, !tbaa !47
  %125 = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
          to label %126 unwind label %202

126:                                              ; preds = %123
  store ptr %125, ptr %16, align 8, !tbaa !48
  %127 = load i64, ptr %4, align 8, !tbaa !47
  store i64 %127, ptr %124, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %125, ptr noundef nonnull align 1 dereferenceable(18) @.str.7, i64 18, i1 false), !prof !46
  %128 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %16, i64 0, i32 1
  store i64 %127, ptr %128, align 8, !tbaa !42
  %129 = load ptr, ptr %16, align 8, !tbaa !48
  %130 = getelementptr inbounds i8, ptr %129, i64 %127
  store i8 0, ptr %130, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %17) #19
  %131 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %17, i64 0, i32 2
  store ptr %131, ptr %17, align 8, !tbaa !38
  %132 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %17, i64 0, i32 1
  store i64 0, ptr %132, align 8, !tbaa !42
  store i8 0, ptr %131, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #19
  invoke void @_ZN6dealii8Patterns8AnythingC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %133 unwind label %204

133:                                              ; preds = %126
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %19) #19
  %134 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %19, i64 0, i32 2
  store ptr %134, ptr %19, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  store i64 67, ptr %3, align 8, !tbaa !47
  %135 = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 0)
          to label %136 unwind label %206

136:                                              ; preds = %133
  store ptr %135, ptr %19, align 8, !tbaa !48
  %137 = load i64, ptr %3, align 8, !tbaa !47
  store i64 %137, ptr %134, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(67) %135, ptr noundef nonnull align 1 dereferenceable(67) @.str.9, i64 67, i1 false), !prof !46
  %138 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %19, i64 0, i32 1
  store i64 %137, ptr %138, align 8, !tbaa !42
  %139 = getelementptr inbounds i8, ptr %135, i64 %137
  store i8 0, ptr %139, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  invoke void @_ZN6dealii16ParameterHandler13declare_entryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_RKNS_8Patterns11PatternBaseES8_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %140 unwind label %208

140:                                              ; preds = %136
  %141 = load ptr, ptr %19, align 8, !tbaa !48
  %142 = icmp eq ptr %141, %134
  br i1 %142, label %143, label %146

143:                                              ; preds = %140
  %144 = load i64, ptr %138, align 8, !tbaa !42
  %145 = icmp ult i64 %144, 16
  call void @llvm.assume(i1 %145)
  br label %147

146:                                              ; preds = %140
  call void @_ZdlPv(ptr noundef %141) #20
  br label %147

147:                                              ; preds = %143, %146
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %19) #19
  call void @_ZN6dealii8Patterns11PatternBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %18) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #19
  %148 = load ptr, ptr %17, align 8, !tbaa !48
  %149 = icmp eq ptr %148, %131
  br i1 %149, label %150, label %153

150:                                              ; preds = %147
  %151 = load i64, ptr %132, align 8, !tbaa !42
  %152 = icmp ult i64 %151, 16
  call void @llvm.assume(i1 %152)
  br label %154

153:                                              ; preds = %147
  call void @_ZdlPv(ptr noundef %148) #20
  br label %154

154:                                              ; preds = %150, %153
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %17) #19
  %155 = load ptr, ptr %16, align 8, !tbaa !48
  %156 = icmp eq ptr %155, %124
  br i1 %156, label %157, label %160

157:                                              ; preds = %154
  %158 = load i64, ptr %128, align 8, !tbaa !42
  %159 = icmp ult i64 %158, 16
  call void @llvm.assume(i1 %159)
  br label %161

160:                                              ; preds = %154
  call void @_ZdlPv(ptr noundef %155) #20
  br label %161

161:                                              ; preds = %157, %160
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %16) #19
  %162 = load ptr, ptr %12, align 8, !tbaa !48
  %163 = icmp eq ptr %162, %49
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = load i64, ptr %50, align 8, !tbaa !42
  %166 = icmp ult i64 %165, 16
  call void @llvm.assume(i1 %166)
  br label %168

167:                                              ; preds = %161
  call void @_ZdlPv(ptr noundef %162) #20
  br label %168

168:                                              ; preds = %164, %167
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #19
  %169 = load ptr, ptr %8, align 8, !tbaa !48
  %170 = icmp eq ptr %169, %20
  br i1 %170, label %171, label %174

171:                                              ; preds = %168
  %172 = load i64, ptr %21, align 8, !tbaa !42
  %173 = icmp ult i64 %172, 16
  call void @llvm.assume(i1 %173)
  br label %175

174:                                              ; preds = %168
  call void @_ZdlPv(ptr noundef %169) #20
  br label %175

175:                                              ; preds = %171, %174
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #19
  ret void

176:                                              ; preds = %53
  %177 = landingpad { ptr, i32 }
          cleanup
  br label %200

178:                                              ; preds = %56
  %179 = landingpad { ptr, i32 }
          cleanup
  br label %192

180:                                              ; preds = %102
  %181 = landingpad { ptr, i32 }
          cleanup
  br label %190

182:                                              ; preds = %105
  %183 = landingpad { ptr, i32 }
          cleanup
  %184 = load ptr, ptr %15, align 8, !tbaa !48
  %185 = icmp eq ptr %184, %103
  br i1 %185, label %186, label %189

186:                                              ; preds = %182
  %187 = load i64, ptr %107, align 8, !tbaa !42
  %188 = icmp ult i64 %187, 16
  call void @llvm.assume(i1 %188)
  br label %190

189:                                              ; preds = %182
  call void @_ZdlPv(ptr noundef %184) #20
  br label %190

190:                                              ; preds = %189, %186, %180
  %191 = phi { ptr, i32 } [ %181, %180 ], [ %183, %186 ], [ %183, %189 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #19
  call void @_ZN6dealii8Patterns11PatternBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #19
  br label %192

192:                                              ; preds = %190, %178
  %193 = phi { ptr, i32 } [ %191, %190 ], [ %179, %178 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #19
  %194 = load ptr, ptr %13, align 8, !tbaa !48
  %195 = icmp eq ptr %194, %54
  br i1 %195, label %196, label %199

196:                                              ; preds = %192
  %197 = load i64, ptr %58, align 8, !tbaa !42
  %198 = icmp ult i64 %197, 16
  call void @llvm.assume(i1 %198)
  br label %200

199:                                              ; preds = %192
  call void @_ZdlPv(ptr noundef %194) #20
  br label %200

200:                                              ; preds = %199, %196, %176
  %201 = phi { ptr, i32 } [ %177, %176 ], [ %193, %196 ], [ %193, %199 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #19
  br label %235

202:                                              ; preds = %123
  %203 = landingpad { ptr, i32 }
          cleanup
  br label %233

204:                                              ; preds = %126
  %205 = landingpad { ptr, i32 }
          cleanup
  br label %218

206:                                              ; preds = %133
  %207 = landingpad { ptr, i32 }
          cleanup
  br label %216

208:                                              ; preds = %136
  %209 = landingpad { ptr, i32 }
          cleanup
  %210 = load ptr, ptr %19, align 8, !tbaa !48
  %211 = icmp eq ptr %210, %134
  br i1 %211, label %212, label %215

212:                                              ; preds = %208
  %213 = load i64, ptr %138, align 8, !tbaa !42
  %214 = icmp ult i64 %213, 16
  call void @llvm.assume(i1 %214)
  br label %216

215:                                              ; preds = %208
  call void @_ZdlPv(ptr noundef %210) #20
  br label %216

216:                                              ; preds = %215, %212, %206
  %217 = phi { ptr, i32 } [ %207, %206 ], [ %209, %212 ], [ %209, %215 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %19) #19
  call void @_ZN6dealii8Patterns11PatternBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %18) #19
  br label %218

218:                                              ; preds = %216, %204
  %219 = phi { ptr, i32 } [ %217, %216 ], [ %205, %204 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #19
  %220 = load ptr, ptr %17, align 8, !tbaa !48
  %221 = icmp eq ptr %220, %131
  br i1 %221, label %222, label %225

222:                                              ; preds = %218
  %223 = load i64, ptr %132, align 8, !tbaa !42
  %224 = icmp ult i64 %223, 16
  call void @llvm.assume(i1 %224)
  br label %226

225:                                              ; preds = %218
  call void @_ZdlPv(ptr noundef %220) #20
  br label %226

226:                                              ; preds = %225, %222
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %17) #19
  %227 = load ptr, ptr %16, align 8, !tbaa !48
  %228 = icmp eq ptr %227, %124
  br i1 %228, label %229, label %232

229:                                              ; preds = %226
  %230 = load i64, ptr %128, align 8, !tbaa !42
  %231 = icmp ult i64 %230, 16
  call void @llvm.assume(i1 %231)
  br label %233

232:                                              ; preds = %226
  call void @_ZdlPv(ptr noundef %227) #20
  br label %233

233:                                              ; preds = %232, %229, %202
  %234 = phi { ptr, i32 } [ %203, %202 ], [ %219, %229 ], [ %219, %232 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %16) #19
  br label %235

235:                                              ; preds = %98, %100, %233, %200
  %236 = phi { ptr, i32 } [ %234, %233 ], [ %201, %200 ], [ %99, %98 ], [ %101, %100 ]
  %237 = load ptr, ptr %12, align 8, !tbaa !48
  %238 = icmp eq ptr %237, %49
  br i1 %238, label %239, label %242

239:                                              ; preds = %235
  %240 = load i64, ptr %50, align 8, !tbaa !42
  %241 = icmp ult i64 %240, 16
  call void @llvm.assume(i1 %241)
  br label %243

242:                                              ; preds = %235
  call void @_ZdlPv(ptr noundef %237) #20
  br label %243

243:                                              ; preds = %242, %239
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #19
  br label %244

244:                                              ; preds = %243, %85, %61
  %245 = phi { ptr, i32 } [ %236, %243 ], [ %78, %85 ], [ %62, %61 ]
  %246 = load ptr, ptr %8, align 8, !tbaa !48
  %247 = icmp eq ptr %246, %20
  br i1 %247, label %248, label %251

248:                                              ; preds = %244
  %249 = load i64, ptr %21, align 8, !tbaa !42
  %250 = icmp ult i64 %249, 16
  call void @llvm.assume(i1 %250)
  br label %252

251:                                              ; preds = %244
  call void @_ZdlPv(ptr noundef %246) #20
  br label %252

252:                                              ; preds = %248, %251
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #19
  resume { ptr, i32 } %245
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii9Functions14ParsedFunctionILi3EE16parse_parametersERNS_16ParameterHandlerE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(288) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !34 {
  %3 = alloca %"class.std::tuple.58", align 8
  %4 = alloca %"class.std::tuple.54", align 1
  %5 = alloca %"class.std::tuple.58", align 8
  %6 = alloca %"class.std::tuple.54", align 1
  %7 = alloca %"class.std::tuple", align 8
  %8 = alloca %"class.std::tuple.54", align 1
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %"class.std::__cxx11::basic_string", align 8
  %15 = alloca %"class.std::__cxx11::basic_string", align 8
  %16 = alloca %"class.std::__cxx11::basic_string", align 8
  %17 = alloca %"class.std::__cxx11::basic_string", align 8
  %18 = alloca %"class.std::__cxx11::basic_string", align 8
  %19 = alloca %"class.std::__cxx11::basic_string", align 8
  %20 = alloca %"class.std::vector.6", align 8
  %21 = alloca %"class.std::map.24", align 8
  %22 = alloca %"class.std::vector.6", align 8
  %23 = alloca %"class.dealii::StandardExceptions::ExcMessage", align 8
  %24 = alloca double, align 8
  %25 = alloca %"class.dealii::StandardExceptions::ExcMessage", align 8
  %26 = alloca %"class.std::__cxx11::basic_string", align 8
  %27 = alloca %"class.std::__cxx11::basic_string", align 8
  %28 = alloca %"class.std::vector.6", align 8
  %29 = alloca %"class.dealii::StandardExceptions::ExcMessage", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %14) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %15) #19
  %30 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %15, i64 0, i32 2
  store ptr %30, ptr %15, align 8, !tbaa !38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %30, ptr noundef nonnull align 1 dereferenceable(14) @.str.1, i64 14, i1 false), !prof !46
  %31 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %15, i64 0, i32 1
  store i64 14, ptr %31, align 8, !tbaa !42
  %32 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %15, i64 0, i32 2, i32 1, i64 6
  store i8 0, ptr %32, align 2, !tbaa !45
  %33 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6dealii16ParameterHandler3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(288) %1, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %34 unwind label %152

34:                                               ; preds = %2
  %35 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %14, i64 0, i32 2
  store ptr %35, ptr %14, align 8, !tbaa !38
  %36 = load ptr, ptr %33, align 8, !tbaa !48
  %37 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %33, i64 0, i32 1
  %38 = load i64, ptr %37, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #19
  store i64 %38, ptr %13, align 8, !tbaa !47
  %39 = icmp ugt i64 %38, 15
  br i1 %39, label %40, label %44, !prof !53

40:                                               ; preds = %34
  %41 = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 0)
          to label %42 unwind label %152

42:                                               ; preds = %40
  store ptr %41, ptr %14, align 8, !tbaa !48
  %43 = load i64, ptr %13, align 8, !tbaa !47
  store i64 %43, ptr %35, align 8, !tbaa !45
  br label %44

44:                                               ; preds = %42, %34
  %45 = load ptr, ptr %14, align 8, !tbaa !48
  switch i64 %38, label %48 [
    i64 1, label %46
    i64 0, label %49
  ], !prof !54

46:                                               ; preds = %44
  %47 = load i8, ptr %36, align 1, !tbaa !45
  store i8 %47, ptr %45, align 1, !tbaa !45
  br label %49

48:                                               ; preds = %44
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %45, ptr align 1 %36, i64 %38, i1 false), !prof !55
  br label %49

49:                                               ; preds = %44, %46, %48
  %50 = load i64, ptr %13, align 8, !tbaa !47
  %51 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %14, i64 0, i32 1
  store i64 %50, ptr %51, align 8, !tbaa !42
  %52 = load ptr, ptr %14, align 8, !tbaa !48
  %53 = getelementptr inbounds i8, ptr %52, i64 %50
  store i8 0, ptr %53, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #19
  %54 = load ptr, ptr %15, align 8, !tbaa !48
  %55 = icmp eq ptr %54, %30
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load i64, ptr %31, align 8, !tbaa !42
  %58 = icmp ult i64 %57, 16
  call void @llvm.assume(i1 %58)
  br label %60

59:                                               ; preds = %49
  call void @_ZdlPv(ptr noundef %54) #20
  br label %60

60:                                               ; preds = %56, %59
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %16) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %17) #19
  %61 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %17, i64 0, i32 2
  store ptr %61, ptr %17, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #19
  store i64 19, ptr %12, align 8, !tbaa !47
  %62 = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 0)
          to label %63 unwind label %161

63:                                               ; preds = %60
  store ptr %62, ptr %17, align 8, !tbaa !48
  %64 = load i64, ptr %12, align 8, !tbaa !47
  store i64 %64, ptr %61, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %62, ptr noundef nonnull align 1 dereferenceable(19) @.str.5, i64 19, i1 false), !prof !46
  %65 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %17, i64 0, i32 1
  store i64 %64, ptr %65, align 8, !tbaa !42
  %66 = load ptr, ptr %17, align 8, !tbaa !48
  %67 = getelementptr inbounds i8, ptr %66, i64 %64
  store i8 0, ptr %67, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #19
  %68 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6dealii16ParameterHandler3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(288) %1, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %69 unwind label %163

69:                                               ; preds = %63
  %70 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %16, i64 0, i32 2
  store ptr %70, ptr %16, align 8, !tbaa !38
  %71 = load ptr, ptr %68, align 8, !tbaa !48
  %72 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %68, i64 0, i32 1
  %73 = load i64, ptr %72, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #19
  store i64 %73, ptr %11, align 8, !tbaa !47
  %74 = icmp ugt i64 %73, 15
  br i1 %74, label %75, label %79, !prof !53

75:                                               ; preds = %69
  %76 = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef 0)
          to label %77 unwind label %163

77:                                               ; preds = %75
  store ptr %76, ptr %16, align 8, !tbaa !48
  %78 = load i64, ptr %11, align 8, !tbaa !47
  store i64 %78, ptr %70, align 8, !tbaa !45
  br label %79

79:                                               ; preds = %77, %69
  %80 = load ptr, ptr %16, align 8, !tbaa !48
  switch i64 %73, label %83 [
    i64 1, label %81
    i64 0, label %84
  ], !prof !54

81:                                               ; preds = %79
  %82 = load i8, ptr %71, align 1, !tbaa !45
  store i8 %82, ptr %80, align 1, !tbaa !45
  br label %84

83:                                               ; preds = %79
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %80, ptr align 1 %71, i64 %73, i1 false), !prof !55
  br label %84

84:                                               ; preds = %79, %81, %83
  %85 = load i64, ptr %11, align 8, !tbaa !47
  %86 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %16, i64 0, i32 1
  store i64 %85, ptr %86, align 8, !tbaa !42
  %87 = load ptr, ptr %16, align 8, !tbaa !48
  %88 = getelementptr inbounds i8, ptr %87, i64 %85
  store i8 0, ptr %88, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #19
  %89 = load ptr, ptr %17, align 8, !tbaa !48
  %90 = icmp eq ptr %89, %61
  br i1 %90, label %91, label %94

91:                                               ; preds = %84
  %92 = load i64, ptr %65, align 8, !tbaa !42
  %93 = icmp ult i64 %92, 16
  call void @llvm.assume(i1 %93)
  br label %95

94:                                               ; preds = %84
  call void @_ZdlPv(ptr noundef %89) #20
  br label %95

95:                                               ; preds = %91, %94
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %17) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %18) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %19) #19
  %96 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %19, i64 0, i32 2
  store ptr %96, ptr %19, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #19
  store i64 18, ptr %10, align 8, !tbaa !47
  %97 = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef 0)
          to label %98 unwind label %173

98:                                               ; preds = %95
  store ptr %97, ptr %19, align 8, !tbaa !48
  %99 = load i64, ptr %10, align 8, !tbaa !47
  store i64 %99, ptr %96, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %97, ptr noundef nonnull align 1 dereferenceable(18) @.str.7, i64 18, i1 false), !prof !46
  %100 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %19, i64 0, i32 1
  store i64 %99, ptr %100, align 8, !tbaa !42
  %101 = load ptr, ptr %19, align 8, !tbaa !48
  %102 = getelementptr inbounds i8, ptr %101, i64 %99
  store i8 0, ptr %102, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #19
  %103 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6dealii16ParameterHandler3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(288) %1, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %104 unwind label %175

104:                                              ; preds = %98
  %105 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %18, i64 0, i32 2
  store ptr %105, ptr %18, align 8, !tbaa !38
  %106 = load ptr, ptr %103, align 8, !tbaa !48
  %107 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %103, i64 0, i32 1
  %108 = load i64, ptr %107, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #19
  store i64 %108, ptr %9, align 8, !tbaa !47
  %109 = icmp ugt i64 %108, 15
  br i1 %109, label %110, label %114, !prof !53

110:                                              ; preds = %104
  %111 = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(8) %9, i64 noundef 0)
          to label %112 unwind label %175

112:                                              ; preds = %110
  store ptr %111, ptr %18, align 8, !tbaa !48
  %113 = load i64, ptr %9, align 8, !tbaa !47
  store i64 %113, ptr %105, align 8, !tbaa !45
  br label %114

114:                                              ; preds = %112, %104
  %115 = load ptr, ptr %18, align 8, !tbaa !48
  switch i64 %108, label %118 [
    i64 1, label %116
    i64 0, label %119
  ], !prof !54

116:                                              ; preds = %114
  %117 = load i8, ptr %106, align 1, !tbaa !45
  store i8 %117, ptr %115, align 1, !tbaa !45
  br label %119

118:                                              ; preds = %114
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %115, ptr align 1 %106, i64 %108, i1 false), !prof !55
  br label %119

119:                                              ; preds = %114, %116, %118
  %120 = load i64, ptr %9, align 8, !tbaa !47
  %121 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %18, i64 0, i32 1
  store i64 %120, ptr %121, align 8, !tbaa !42
  %122 = load ptr, ptr %18, align 8, !tbaa !48
  %123 = getelementptr inbounds i8, ptr %122, i64 %120
  store i8 0, ptr %123, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #19
  %124 = load ptr, ptr %19, align 8, !tbaa !48
  %125 = icmp eq ptr %124, %96
  br i1 %125, label %126, label %129

126:                                              ; preds = %119
  %127 = load i64, ptr %100, align 8, !tbaa !42
  %128 = icmp ult i64 %127, 16
  call void @llvm.assume(i1 %128)
  br label %130

129:                                              ; preds = %119
  call void @_ZdlPv(ptr noundef %124) #20
  br label %130

130:                                              ; preds = %126, %129
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %19) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %20) #19
  invoke void @_ZN6dealii9Utilities17split_string_listERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.6") align 8 %20, ptr noundef nonnull align 8 dereferenceable(32) %18, i8 noundef signext 44)
          to label %131 unwind label %185

131:                                              ; preds = %130
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %21) #19
  %132 = getelementptr inbounds i8, ptr %21, i64 8
  store i32 0, ptr %132, align 8, !tbaa !56
  %133 = getelementptr inbounds i8, ptr %21, i64 16
  store ptr null, ptr %133, align 8, !tbaa !60
  %134 = getelementptr inbounds i8, ptr %21, i64 24
  store ptr %132, ptr %134, align 8, !tbaa !61
  %135 = getelementptr inbounds i8, ptr %21, i64 32
  store ptr %132, ptr %135, align 8, !tbaa !62
  %136 = getelementptr inbounds i8, ptr %21, i64 40
  store i64 0, ptr %136, align 8, !tbaa !63
  %137 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %20, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !64
  %139 = load ptr, ptr %20, align 8, !tbaa !66
  %140 = icmp eq ptr %138, %139
  br i1 %140, label %145, label %141

141:                                              ; preds = %131
  %142 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %22, i64 0, i32 1
  %143 = getelementptr inbounds %"class.dealii::StandardExceptions::ExcMessage", ptr %23, i64 0, i32 1
  %144 = getelementptr inbounds %"class.dealii::StandardExceptions::ExcMessage", ptr %25, i64 0, i32 1
  br label %187

145:                                              ; preds = %282, %131
  %146 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %20, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %26) #19
  %147 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %26, i64 0, i32 2
  store ptr %147, ptr %26, align 8, !tbaa !38
  store i16 26992, ptr %147, align 8
  %148 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %26, i64 0, i32 1
  store i64 2, ptr %148, align 8, !tbaa !42
  %149 = getelementptr inbounds i8, ptr %26, i64 18
  store i8 0, ptr %149, align 2, !tbaa !45
  %150 = load ptr, ptr %133, align 8, !tbaa !60
  %151 = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef %150, ptr noundef nonnull %132, ptr noundef nonnull align 8 dereferenceable(32) %26)
          to label %321 unwind label %428

152:                                              ; preds = %40, %2
  %153 = landingpad { ptr, i32 }
          cleanup
  %154 = load ptr, ptr %15, align 8, !tbaa !48
  %155 = icmp eq ptr %154, %30
  br i1 %155, label %156, label %159

156:                                              ; preds = %152
  %157 = load i64, ptr %31, align 8, !tbaa !42
  %158 = icmp ult i64 %157, 16
  call void @llvm.assume(i1 %158)
  br label %160

159:                                              ; preds = %152
  call void @_ZdlPv(ptr noundef %154) #20
  br label %160

160:                                              ; preds = %159, %156
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #19
  br label %560

161:                                              ; preds = %60
  %162 = landingpad { ptr, i32 }
          cleanup
  br label %171

163:                                              ; preds = %75, %63
  %164 = landingpad { ptr, i32 }
          cleanup
  %165 = load ptr, ptr %17, align 8, !tbaa !48
  %166 = icmp eq ptr %165, %61
  br i1 %166, label %167, label %170

167:                                              ; preds = %163
  %168 = load i64, ptr %65, align 8, !tbaa !42
  %169 = icmp ult i64 %168, 16
  call void @llvm.assume(i1 %169)
  br label %171

170:                                              ; preds = %163
  call void @_ZdlPv(ptr noundef %165) #20
  br label %171

171:                                              ; preds = %170, %167, %161
  %172 = phi { ptr, i32 } [ %162, %161 ], [ %164, %167 ], [ %164, %170 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %17) #19
  br label %552

173:                                              ; preds = %95
  %174 = landingpad { ptr, i32 }
          cleanup
  br label %183

175:                                              ; preds = %110, %98
  %176 = landingpad { ptr, i32 }
          cleanup
  %177 = load ptr, ptr %19, align 8, !tbaa !48
  %178 = icmp eq ptr %177, %96
  br i1 %178, label %179, label %182

179:                                              ; preds = %175
  %180 = load i64, ptr %100, align 8, !tbaa !42
  %181 = icmp ult i64 %180, 16
  call void @llvm.assume(i1 %181)
  br label %183

182:                                              ; preds = %175
  call void @_ZdlPv(ptr noundef %177) #20
  br label %183

183:                                              ; preds = %182, %179, %173
  %184 = phi { ptr, i32 } [ %174, %173 ], [ %176, %179 ], [ %176, %182 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %19) #19
  br label %544

185:                                              ; preds = %130
  %186 = landingpad { ptr, i32 }
          cleanup
  br label %536

187:                                              ; preds = %141, %282
  %188 = phi ptr [ %139, %141 ], [ %286, %282 ]
  %189 = phi i64 [ 0, %141 ], [ %284, %282 ]
  %190 = phi i32 [ 0, %141 ], [ %283, %282 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %22) #19
  %191 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %188, i64 %189
  invoke void @_ZN6dealii9Utilities17split_string_listERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.6") align 8 %22, ptr noundef nonnull align 8 dereferenceable(32) %191, i8 noundef signext 61)
          to label %192 unwind label %202

192:                                              ; preds = %187
  %193 = load ptr, ptr %142, align 8, !tbaa !64
  %194 = load ptr, ptr %22, align 8, !tbaa !66
  %195 = ptrtoint ptr %193 to i64
  %196 = ptrtoint ptr %194 to i64
  %197 = sub i64 %195, %196
  %198 = icmp eq i64 %197, 64
  br i1 %198, label %211, label %199

199:                                              ; preds = %192
  invoke void @_ZN6dealii13ExceptionBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(60) %23)
          to label %200 unwind label %205

200:                                              ; preds = %199
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii18StandardExceptions10ExcMessageE, i64 0, inrange i32 0, i64 2), ptr %23, align 8, !tbaa !35
  store ptr @.str.13, ptr %143, align 8, !tbaa !67
  invoke void @_ZN6dealii18deal_II_exceptions9internals17issue_error_throwINS_18StandardExceptions10ExcMessageEEEvPKciS6_S6_S6_T_(ptr noundef nonnull @.str.10, i32 noundef 86, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, ptr noundef nonnull %23)
          to label %201 unwind label %208

201:                                              ; preds = %200
  call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %23) #19
  br label %211

202:                                              ; preds = %187
  %203 = landingpad { ptr, i32 }
          cleanup
  %204 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %20, i64 0, i32 1
  br label %318

205:                                              ; preds = %199
  %206 = landingpad { ptr, i32 }
          cleanup
  %207 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %20, i64 0, i32 1
  br label %295

208:                                              ; preds = %200
  %209 = landingpad { ptr, i32 }
          cleanup
  %210 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %20, i64 0, i32 1
  call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %23) #19
  br label %295

211:                                              ; preds = %201, %192
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %24) #19
  %212 = load ptr, ptr %22, align 8, !tbaa !66
  %213 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %212, i64 1
  %214 = load ptr, ptr %213, align 8, !tbaa !48
  %215 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %214, ptr noundef nonnull @.str.14, ptr noundef nonnull %24) #19
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %226

217:                                              ; preds = %211
  invoke void @_ZN6dealii13ExceptionBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(60) %25)
          to label %218 unwind label %220

218:                                              ; preds = %217
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii18StandardExceptions10ExcMessageE, i64 0, inrange i32 0, i64 2), ptr %25, align 8, !tbaa !35
  store ptr @.str.17, ptr %144, align 8, !tbaa !67
  invoke void @_ZN6dealii18deal_II_exceptions9internals17issue_error_throwINS_18StandardExceptions10ExcMessageEEEvPKciS6_S6_S6_T_(ptr noundef nonnull @.str.10, i32 noundef 89, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, ptr noundef nonnull %25)
          to label %219 unwind label %223

219:                                              ; preds = %218
  call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %25) #19
  br label %226

220:                                              ; preds = %256, %226, %217
  %221 = landingpad { ptr, i32 }
          cleanup
  %222 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %20, i64 0, i32 1
  br label %292

223:                                              ; preds = %218
  %224 = landingpad { ptr, i32 }
          cleanup
  %225 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %20, i64 0, i32 1
  call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %25) #19
  br label %292

226:                                              ; preds = %219, %211
  %227 = load double, ptr %24, align 8, !tbaa !72
  %228 = load ptr, ptr %22, align 8, !tbaa !66
  %229 = load ptr, ptr %133, align 8, !tbaa !60
  %230 = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef %229, ptr noundef nonnull %132, ptr noundef nonnull align 8 dereferenceable(32) %228)
          to label %231 unwind label %220

231:                                              ; preds = %226
  %232 = icmp eq ptr %230, %132
  br i1 %232, label %256, label %233

233:                                              ; preds = %231
  %234 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %228, i64 0, i32 1
  %235 = load i64, ptr %234, align 8, !tbaa !42
  %236 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %230, i64 0, i32 1, i32 0, i64 8
  %237 = load i64, ptr %236, align 8, !tbaa !42
  %238 = call i64 @llvm.umin.i64(i64 %237, i64 %235)
  %239 = icmp eq i64 %238, 0
  br i1 %239, label %245, label %240

240:                                              ; preds = %233
  %241 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %230, i64 0, i32 1
  %242 = load ptr, ptr %241, align 8, !tbaa !48
  %243 = load ptr, ptr %228, align 8, !tbaa !48
  %244 = call i32 @memcmp(ptr noundef %243, ptr noundef %242, i64 noundef %238) #19
  br label %245

245:                                              ; preds = %240, %233
  %246 = phi i32 [ %244, %240 ], [ 0, %233 ]
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %253

248:                                              ; preds = %245
  %249 = sub i64 %235, %237
  %250 = call i64 @llvm.smax.i64(i64 %249, i64 -2147483648)
  %251 = call i64 @llvm.smin.i64(i64 %250, i64 2147483647)
  %252 = trunc i64 %251 to i32
  br label %253

253:                                              ; preds = %248, %245
  %254 = phi i32 [ %246, %245 ], [ %252, %248 ]
  %255 = icmp slt i32 %254, 0
  br i1 %255, label %256, label %259

256:                                              ; preds = %253, %231
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  store ptr %228, ptr %7, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #19
  %257 = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr %230, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %258 unwind label %220

258:                                              ; preds = %256
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  br label %259

259:                                              ; preds = %253, %258
  %260 = phi ptr [ %257, %258 ], [ %230, %253 ]
  %261 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %260, i64 0, i32 1, i32 0, i64 32
  store double %227, ptr %261, align 8, !tbaa !72
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %24) #19
  %262 = load ptr, ptr %22, align 8, !tbaa !66
  %263 = load ptr, ptr %142, align 8, !tbaa !64
  %264 = icmp eq ptr %262, %263
  br i1 %264, label %278, label %265

265:                                              ; preds = %259, %275
  %266 = phi ptr [ %276, %275 ], [ %262, %259 ]
  %267 = load ptr, ptr %266, align 8, !tbaa !48
  %268 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %266, i64 0, i32 2
  %269 = icmp eq ptr %267, %268
  br i1 %269, label %270, label %274

270:                                              ; preds = %265
  %271 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %266, i64 0, i32 1
  %272 = load i64, ptr %271, align 8, !tbaa !42
  %273 = icmp ult i64 %272, 16
  call void @llvm.assume(i1 %273)
  br label %275

274:                                              ; preds = %265
  call void @_ZdlPv(ptr noundef %267) #20
  br label %275

275:                                              ; preds = %274, %270
  %276 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %266, i64 1
  %277 = icmp eq ptr %276, %263
  br i1 %277, label %278, label %265, !llvm.loop !75

278:                                              ; preds = %275, %259
  %279 = load ptr, ptr %22, align 8, !tbaa !66
  %280 = icmp eq ptr %279, null
  br i1 %280, label %282, label %281

281:                                              ; preds = %278
  call void @_ZdlPv(ptr noundef %279) #20
  br label %282

282:                                              ; preds = %278, %281
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %22) #19
  %283 = add i32 %190, 1
  %284 = zext i32 %283 to i64
  %285 = load ptr, ptr %137, align 8, !tbaa !64
  %286 = load ptr, ptr %20, align 8, !tbaa !66
  %287 = ptrtoint ptr %285 to i64
  %288 = ptrtoint ptr %286 to i64
  %289 = sub i64 %287, %288
  %290 = ashr exact i64 %289, 5
  %291 = icmp ugt i64 %290, %284
  br i1 %291, label %187, label %145, !llvm.loop !93

292:                                              ; preds = %223, %220
  %293 = phi ptr [ %222, %220 ], [ %225, %223 ]
  %294 = phi { ptr, i32 } [ %221, %220 ], [ %224, %223 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %24) #19
  br label %295

295:                                              ; preds = %292, %208, %205
  %296 = phi ptr [ %293, %292 ], [ %210, %208 ], [ %207, %205 ]
  %297 = phi { ptr, i32 } [ %294, %292 ], [ %209, %208 ], [ %206, %205 ]
  %298 = load ptr, ptr %22, align 8, !tbaa !66
  %299 = load ptr, ptr %142, align 8, !tbaa !64
  %300 = icmp eq ptr %298, %299
  br i1 %300, label %314, label %301

301:                                              ; preds = %295, %311
  %302 = phi ptr [ %312, %311 ], [ %298, %295 ]
  %303 = load ptr, ptr %302, align 8, !tbaa !48
  %304 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %302, i64 0, i32 2
  %305 = icmp eq ptr %303, %304
  br i1 %305, label %306, label %310

306:                                              ; preds = %301
  %307 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %302, i64 0, i32 1
  %308 = load i64, ptr %307, align 8, !tbaa !42
  %309 = icmp ult i64 %308, 16
  call void @llvm.assume(i1 %309)
  br label %311

310:                                              ; preds = %301
  call void @_ZdlPv(ptr noundef %303) #20
  br label %311

311:                                              ; preds = %310, %306
  %312 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %302, i64 1
  %313 = icmp eq ptr %312, %299
  br i1 %313, label %314, label %301, !llvm.loop !75

314:                                              ; preds = %311, %295
  %315 = load ptr, ptr %22, align 8, !tbaa !66
  %316 = icmp eq ptr %315, null
  br i1 %316, label %318, label %317

317:                                              ; preds = %314
  call void @_ZdlPv(ptr noundef %315) #20
  br label %318

318:                                              ; preds = %317, %314, %202
  %319 = phi ptr [ %204, %202 ], [ %296, %314 ], [ %296, %317 ]
  %320 = phi { ptr, i32 } [ %203, %202 ], [ %297, %314 ], [ %297, %317 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %22) #19
  br label %508

321:                                              ; preds = %145
  %322 = icmp eq ptr %151, %132
  br i1 %322, label %345, label %323

323:                                              ; preds = %321
  %324 = load i64, ptr %148, align 8, !tbaa !42
  %325 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %151, i64 0, i32 1, i32 0, i64 8
  %326 = load i64, ptr %325, align 8, !tbaa !42
  %327 = call i64 @llvm.umin.i64(i64 %326, i64 %324)
  %328 = icmp eq i64 %327, 0
  br i1 %328, label %334, label %329

329:                                              ; preds = %323
  %330 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %151, i64 0, i32 1
  %331 = load ptr, ptr %330, align 8, !tbaa !48
  %332 = load ptr, ptr %26, align 8, !tbaa !48
  %333 = call i32 @memcmp(ptr noundef %332, ptr noundef %331, i64 noundef %327) #19
  br label %334

334:                                              ; preds = %329, %323
  %335 = phi i32 [ %333, %329 ], [ 0, %323 ]
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %337, label %342

337:                                              ; preds = %334
  %338 = sub i64 %324, %326
  %339 = call i64 @llvm.smax.i64(i64 %338, i64 -2147483648)
  %340 = call i64 @llvm.smin.i64(i64 %339, i64 2147483647)
  %341 = trunc i64 %340 to i32
  br label %342

342:                                              ; preds = %337, %334
  %343 = phi i32 [ %335, %334 ], [ %341, %337 ]
  %344 = icmp slt i32 %343, 0
  br i1 %344, label %345, label %348

345:                                              ; preds = %342, %321
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  store ptr %26, ptr %5, align 8, !tbaa !74, !alias.scope !94
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #19
  %346 = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr %151, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %347 unwind label %428

347:                                              ; preds = %345
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  br label %348

348:                                              ; preds = %342, %347
  %349 = phi ptr [ %346, %347 ], [ %151, %342 ]
  %350 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %349, i64 0, i32 1, i32 0, i64 32
  store double 0x400921FB54442D18, ptr %350, align 8, !tbaa !72
  %351 = load ptr, ptr %26, align 8, !tbaa !48
  %352 = icmp eq ptr %351, %147
  br i1 %352, label %353, label %356

353:                                              ; preds = %348
  %354 = load i64, ptr %148, align 8, !tbaa !42
  %355 = icmp ult i64 %354, 16
  call void @llvm.assume(i1 %355)
  br label %357

356:                                              ; preds = %348
  call void @_ZdlPv(ptr noundef %351) #20
  br label %357

357:                                              ; preds = %353, %356
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %26) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %27) #19
  %358 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %27, i64 0, i32 2
  store ptr %358, ptr %27, align 8, !tbaa !38
  store i16 26960, ptr %358, align 8
  %359 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %27, i64 0, i32 1
  store i64 2, ptr %359, align 8, !tbaa !42
  %360 = getelementptr inbounds i8, ptr %27, i64 18
  store i8 0, ptr %360, align 2, !tbaa !45
  %361 = load ptr, ptr %133, align 8, !tbaa !60
  %362 = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef %361, ptr noundef nonnull %132, ptr noundef nonnull align 8 dereferenceable(32) %27)
          to label %363 unwind label %437

363:                                              ; preds = %357
  %364 = icmp eq ptr %362, %132
  br i1 %364, label %387, label %365

365:                                              ; preds = %363
  %366 = load i64, ptr %359, align 8, !tbaa !42
  %367 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %362, i64 0, i32 1, i32 0, i64 8
  %368 = load i64, ptr %367, align 8, !tbaa !42
  %369 = call i64 @llvm.umin.i64(i64 %368, i64 %366)
  %370 = icmp eq i64 %369, 0
  br i1 %370, label %376, label %371

371:                                              ; preds = %365
  %372 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %362, i64 0, i32 1
  %373 = load ptr, ptr %372, align 8, !tbaa !48
  %374 = load ptr, ptr %27, align 8, !tbaa !48
  %375 = call i32 @memcmp(ptr noundef %374, ptr noundef %373, i64 noundef %369) #19
  br label %376

376:                                              ; preds = %371, %365
  %377 = phi i32 [ %375, %371 ], [ 0, %365 ]
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %379, label %384

379:                                              ; preds = %376
  %380 = sub i64 %366, %368
  %381 = call i64 @llvm.smax.i64(i64 %380, i64 -2147483648)
  %382 = call i64 @llvm.smin.i64(i64 %381, i64 2147483647)
  %383 = trunc i64 %382 to i32
  br label %384

384:                                              ; preds = %379, %376
  %385 = phi i32 [ %377, %376 ], [ %383, %379 ]
  %386 = icmp slt i32 %385, 0
  br i1 %386, label %387, label %390

387:                                              ; preds = %384, %363
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  store ptr %27, ptr %3, align 8, !tbaa !74, !alias.scope !97
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #19
  %388 = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr %362, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %389 unwind label %437

389:                                              ; preds = %387
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  br label %390

390:                                              ; preds = %384, %389
  %391 = phi ptr [ %388, %389 ], [ %362, %384 ]
  %392 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %391, i64 0, i32 1, i32 0, i64 32
  store double 0x400921FB54442D18, ptr %392, align 8, !tbaa !72
  %393 = load ptr, ptr %27, align 8, !tbaa !48
  %394 = icmp eq ptr %393, %358
  br i1 %394, label %395, label %398

395:                                              ; preds = %390
  %396 = load i64, ptr %359, align 8, !tbaa !42
  %397 = icmp ult i64 %396, 16
  call void @llvm.assume(i1 %397)
  br label %399

398:                                              ; preds = %390
  call void @_ZdlPv(ptr noundef %393) #20
  br label %399

399:                                              ; preds = %395, %398
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %27) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %28) #19
  invoke void @_ZN6dealii9Utilities17split_string_listERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.6") align 8 %28, ptr noundef nonnull align 8 dereferenceable(32) %14, i8 noundef signext 44)
          to label %400 unwind label %446

400:                                              ; preds = %399
  %401 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %28, i64 0, i32 1
  %402 = load ptr, ptr %401, align 8, !tbaa !64
  %403 = load ptr, ptr %28, align 8, !tbaa !66
  %404 = ptrtoint ptr %402 to i64
  %405 = ptrtoint ptr %403 to i64
  %406 = sub i64 %404, %405
  %407 = lshr exact i64 %406, 5
  %408 = trunc i64 %407 to i32
  %409 = icmp eq ptr %403, %402
  br i1 %409, label %423, label %410

410:                                              ; preds = %400, %420
  %411 = phi ptr [ %421, %420 ], [ %403, %400 ]
  %412 = load ptr, ptr %411, align 8, !tbaa !48
  %413 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %411, i64 0, i32 2
  %414 = icmp eq ptr %412, %413
  br i1 %414, label %415, label %419

415:                                              ; preds = %410
  %416 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %411, i64 0, i32 1
  %417 = load i64, ptr %416, align 8, !tbaa !42
  %418 = icmp ult i64 %417, 16
  call void @llvm.assume(i1 %418)
  br label %420

419:                                              ; preds = %410
  call void @_ZdlPv(ptr noundef %412) #20
  br label %420

420:                                              ; preds = %419, %415
  %421 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %411, i64 1
  %422 = icmp eq ptr %421, %402
  br i1 %422, label %423, label %410, !llvm.loop !75

423:                                              ; preds = %420, %400
  %424 = load ptr, ptr %28, align 8, !tbaa !66
  %425 = icmp eq ptr %424, null
  br i1 %425, label %427, label %426

426:                                              ; preds = %423
  call void @_ZdlPv(ptr noundef %424) #20
  br label %427

427:                                              ; preds = %423, %426
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %28) #19
  switch i32 %408, label %454 [
    i32 3, label %451
    i32 4, label %450
  ]

428:                                              ; preds = %345, %145
  %429 = landingpad { ptr, i32 }
          cleanup
  %430 = load ptr, ptr %26, align 8, !tbaa !48
  %431 = icmp eq ptr %430, %147
  br i1 %431, label %432, label %435

432:                                              ; preds = %428
  %433 = load i64, ptr %148, align 8, !tbaa !42
  %434 = icmp ult i64 %433, 16
  call void @llvm.assume(i1 %434)
  br label %436

435:                                              ; preds = %428
  call void @_ZdlPv(ptr noundef %430) #20
  br label %436

436:                                              ; preds = %435, %432
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %26) #19
  br label %508

437:                                              ; preds = %387, %357
  %438 = landingpad { ptr, i32 }
          cleanup
  %439 = load ptr, ptr %27, align 8, !tbaa !48
  %440 = icmp eq ptr %439, %358
  br i1 %440, label %441, label %444

441:                                              ; preds = %437
  %442 = load i64, ptr %359, align 8, !tbaa !42
  %443 = icmp ult i64 %442, 16
  call void @llvm.assume(i1 %443)
  br label %445

444:                                              ; preds = %437
  call void @_ZdlPv(ptr noundef %439) #20
  br label %445

445:                                              ; preds = %444, %441
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %27) #19
  br label %508

446:                                              ; preds = %399
  %447 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %28) #19
  br label %508

448:                                              ; preds = %451, %454
  %449 = landingpad { ptr, i32 }
          cleanup
  br label %508

450:                                              ; preds = %427
  br label %451

451:                                              ; preds = %427, %450
  %452 = phi i1 [ true, %450 ], [ false, %427 ]
  %453 = getelementptr inbounds %"class.dealii::Functions::ParsedFunction.41", ptr %0, i64 0, i32 1
  invoke void @_ZN6dealii14FunctionParserILi3EE10initializeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_RKSt3mapIS7_dSt4lessIS7_ESaISt4pairIS8_dEEEbb(ptr noundef nonnull align 8 dereferenceable(112) %453, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(48) %21, i1 noundef zeroext %452, i1 noundef zeroext false)
          to label %458 unwind label %448

454:                                              ; preds = %427
  invoke void @_ZN6dealii13ExceptionBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(60) %29)
          to label %455 unwind label %448

455:                                              ; preds = %454
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii18StandardExceptions10ExcMessageE, i64 0, inrange i32 0, i64 2), ptr %29, align 8, !tbaa !35
  %456 = getelementptr inbounds %"class.dealii::StandardExceptions::ExcMessage", ptr %29, i64 0, i32 1
  store ptr @.str.22, ptr %456, align 8, !tbaa !67
  invoke void @_ZN6dealii18deal_II_exceptions9internals17issue_error_throwINS_18StandardExceptions10ExcMessageEEEvPKciS6_S6_S6_T_(ptr noundef nonnull @.str.10, i32 noundef 108, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, ptr noundef nonnull %29)
          to label %457 unwind label %506

457:                                              ; preds = %455
  call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %29) #19
  br label %458

458:                                              ; preds = %451, %457
  %459 = load ptr, ptr %133, align 8, !tbaa !60
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef %459)
          to label %463 unwind label %460

460:                                              ; preds = %458
  %461 = landingpad { ptr, i32 }
          catch ptr null
  %462 = extractvalue { ptr, i32 } %461, 0
  call void @__clang_call_terminate(ptr %462) #22
  unreachable

463:                                              ; preds = %458
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %21) #19
  %464 = load ptr, ptr %20, align 8, !tbaa !66
  %465 = load ptr, ptr %146, align 8, !tbaa !64
  %466 = icmp eq ptr %464, %465
  br i1 %466, label %480, label %467

467:                                              ; preds = %463, %477
  %468 = phi ptr [ %478, %477 ], [ %464, %463 ]
  %469 = load ptr, ptr %468, align 8, !tbaa !48
  %470 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %468, i64 0, i32 2
  %471 = icmp eq ptr %469, %470
  br i1 %471, label %472, label %476

472:                                              ; preds = %467
  %473 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %468, i64 0, i32 1
  %474 = load i64, ptr %473, align 8, !tbaa !42
  %475 = icmp ult i64 %474, 16
  call void @llvm.assume(i1 %475)
  br label %477

476:                                              ; preds = %467
  call void @_ZdlPv(ptr noundef %469) #20
  br label %477

477:                                              ; preds = %476, %472
  %478 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %468, i64 1
  %479 = icmp eq ptr %478, %465
  br i1 %479, label %480, label %467, !llvm.loop !75

480:                                              ; preds = %477, %463
  %481 = load ptr, ptr %20, align 8, !tbaa !66
  %482 = icmp eq ptr %481, null
  br i1 %482, label %484, label %483

483:                                              ; preds = %480
  call void @_ZdlPv(ptr noundef %481) #20
  br label %484

484:                                              ; preds = %480, %483
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %20) #19
  %485 = load ptr, ptr %18, align 8, !tbaa !48
  %486 = icmp eq ptr %485, %105
  br i1 %486, label %487, label %490

487:                                              ; preds = %484
  %488 = load i64, ptr %121, align 8, !tbaa !42
  %489 = icmp ult i64 %488, 16
  call void @llvm.assume(i1 %489)
  br label %491

490:                                              ; preds = %484
  call void @_ZdlPv(ptr noundef %485) #20
  br label %491

491:                                              ; preds = %487, %490
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %18) #19
  %492 = load ptr, ptr %16, align 8, !tbaa !48
  %493 = icmp eq ptr %492, %70
  br i1 %493, label %494, label %497

494:                                              ; preds = %491
  %495 = load i64, ptr %86, align 8, !tbaa !42
  %496 = icmp ult i64 %495, 16
  call void @llvm.assume(i1 %496)
  br label %498

497:                                              ; preds = %491
  call void @_ZdlPv(ptr noundef %492) #20
  br label %498

498:                                              ; preds = %494, %497
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %16) #19
  %499 = load ptr, ptr %14, align 8, !tbaa !48
  %500 = icmp eq ptr %499, %35
  br i1 %500, label %501, label %504

501:                                              ; preds = %498
  %502 = load i64, ptr %51, align 8, !tbaa !42
  %503 = icmp ult i64 %502, 16
  call void @llvm.assume(i1 %503)
  br label %505

504:                                              ; preds = %498
  call void @_ZdlPv(ptr noundef %499) #20
  br label %505

505:                                              ; preds = %501, %504
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #19
  ret void

506:                                              ; preds = %455
  %507 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %29) #19
  br label %508

508:                                              ; preds = %446, %448, %506, %445, %436, %318
  %509 = phi ptr [ %319, %318 ], [ %146, %445 ], [ %146, %436 ], [ %146, %506 ], [ %146, %448 ], [ %146, %446 ]
  %510 = phi { ptr, i32 } [ %320, %318 ], [ %438, %445 ], [ %429, %436 ], [ %507, %506 ], [ %449, %448 ], [ %447, %446 ]
  %511 = load ptr, ptr %133, align 8, !tbaa !60
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef %511)
          to label %515 unwind label %512

512:                                              ; preds = %508
  %513 = landingpad { ptr, i32 }
          catch ptr null
  %514 = extractvalue { ptr, i32 } %513, 0
  call void @__clang_call_terminate(ptr %514) #22
  unreachable

515:                                              ; preds = %508
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %21) #19
  %516 = load ptr, ptr %20, align 8, !tbaa !66
  %517 = load ptr, ptr %509, align 8, !tbaa !64
  %518 = icmp eq ptr %516, %517
  br i1 %518, label %532, label %519

519:                                              ; preds = %515, %529
  %520 = phi ptr [ %530, %529 ], [ %516, %515 ]
  %521 = load ptr, ptr %520, align 8, !tbaa !48
  %522 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %520, i64 0, i32 2
  %523 = icmp eq ptr %521, %522
  br i1 %523, label %524, label %528

524:                                              ; preds = %519
  %525 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %520, i64 0, i32 1
  %526 = load i64, ptr %525, align 8, !tbaa !42
  %527 = icmp ult i64 %526, 16
  call void @llvm.assume(i1 %527)
  br label %529

528:                                              ; preds = %519
  call void @_ZdlPv(ptr noundef %521) #20
  br label %529

529:                                              ; preds = %528, %524
  %530 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %520, i64 1
  %531 = icmp eq ptr %530, %517
  br i1 %531, label %532, label %519, !llvm.loop !75

532:                                              ; preds = %529, %515
  %533 = load ptr, ptr %20, align 8, !tbaa !66
  %534 = icmp eq ptr %533, null
  br i1 %534, label %536, label %535

535:                                              ; preds = %532
  call void @_ZdlPv(ptr noundef %533) #20
  br label %536

536:                                              ; preds = %535, %532, %185
  %537 = phi { ptr, i32 } [ %186, %185 ], [ %510, %532 ], [ %510, %535 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %20) #19
  %538 = load ptr, ptr %18, align 8, !tbaa !48
  %539 = icmp eq ptr %538, %105
  br i1 %539, label %540, label %543

540:                                              ; preds = %536
  %541 = load i64, ptr %121, align 8, !tbaa !42
  %542 = icmp ult i64 %541, 16
  call void @llvm.assume(i1 %542)
  br label %544

543:                                              ; preds = %536
  call void @_ZdlPv(ptr noundef %538) #20
  br label %544

544:                                              ; preds = %543, %540, %183
  %545 = phi { ptr, i32 } [ %184, %183 ], [ %537, %540 ], [ %537, %543 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %18) #19
  %546 = load ptr, ptr %16, align 8, !tbaa !48
  %547 = icmp eq ptr %546, %70
  br i1 %547, label %548, label %551

548:                                              ; preds = %544
  %549 = load i64, ptr %86, align 8, !tbaa !42
  %550 = icmp ult i64 %549, 16
  call void @llvm.assume(i1 %550)
  br label %552

551:                                              ; preds = %544
  call void @_ZdlPv(ptr noundef %546) #20
  br label %552

552:                                              ; preds = %551, %548, %171
  %553 = phi { ptr, i32 } [ %172, %171 ], [ %545, %548 ], [ %545, %551 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %16) #19
  %554 = load ptr, ptr %14, align 8, !tbaa !48
  %555 = icmp eq ptr %554, %35
  br i1 %555, label %556, label %559

556:                                              ; preds = %552
  %557 = load i64, ptr %51, align 8, !tbaa !42
  %558 = icmp ult i64 %557, 16
  call void @llvm.assume(i1 %558)
  br label %560

559:                                              ; preds = %552
  call void @_ZdlPv(ptr noundef %554) #20
  br label %560

560:                                              ; preds = %559, %556, %160
  %561 = phi { ptr, i32 } [ %153, %160 ], [ %553, %556 ], [ %553, %559 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #19
  resume { ptr, i32 } %561
}

declare void @_ZN6dealii14FunctionParserILi3EE10initializeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_RKSt3mapIS7_dSt4lessIS7_ESaISt4pairIS8_dEEEbb(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(48), i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14ParsedFunctionILi3EE12vector_valueERKNS_5PointILi3EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %2) unnamed_addr #4 comdat align 2 !prof !83 {
  %4 = getelementptr inbounds %"class.dealii::Functions::ParsedFunction.41", ptr %0, i64 0, i32 1
  tail call void @_ZNK6dealii14FunctionParserILi3EE12vector_valueERKNS_5PointILi3EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(112) %4, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %2)
  ret void
}

declare void @_ZNK6dealii14FunctionParserILi3EE12vector_valueERKNS_5PointILi3EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 1, ptr noundef nonnull align 1) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions14ParsedFunctionILi3EE5valueERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 1 %1, i32 noundef %2) unnamed_addr #4 comdat align 2 !prof !83 {
  %4 = getelementptr inbounds %"class.dealii::Functions::ParsedFunction.41", ptr %0, i64 0, i32 1
  %5 = tail call noundef double @_ZNK6dealii14FunctionParserILi3EE5valueERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(112) %4, ptr noundef nonnull align 1 %1, i32 noundef %2)
  ret double %5
}

declare noundef double @_ZNK6dealii14FunctionParserILi3EE5valueERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 1, i32 noundef) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii9Functions14ParsedFunctionILi3EE8set_timeEd(ptr noundef nonnull align 8 dereferenceable(248) %0, double noundef %1) unnamed_addr #4 comdat align 2 !prof !83 {
  %3 = getelementptr inbounds %"class.dealii::Functions::ParsedFunction.41", ptr %0, i64 0, i32 1
  tail call void @_ZN6dealii12FunctionTime8set_timeEd(ptr noundef nonnull align 8 dereferenceable(16) %3, double noundef %1)
  tail call void @_ZN6dealii12FunctionTime8set_timeEd(ptr noundef nonnull align 8 dereferenceable(16) %0, double noundef %1)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions14ParsedFunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #6 comdat align 2 !annotation !34 {
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14ParsedFunctionILi1EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14ParsedFunctionILi1EEE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !35
  %3 = getelementptr inbounds %"class.dealii::Functions::ParsedFunction", ptr %0, i64 0, i32 1
  tail call void @_ZN6dealii14FunctionParserILi1EED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #19
  tail call void @_ZN6dealii22AutoDerivativeFunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(132) %0) #19
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions14ParsedFunctionILi1EED0Ev(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #6 comdat align 2 !annotation !34 {
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14ParsedFunctionILi1EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14ParsedFunctionILi1EEE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !35
  %3 = getelementptr inbounds %"class.dealii::Functions::ParsedFunction", ptr %0, i64 0, i32 1
  tail call void @_ZN6dealii14FunctionParserILi1EED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #19
  tail call void @_ZN6dealii22AutoDerivativeFunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(132) %0) #19
  tail call void @_ZdlPv(ptr noundef %0) #20
  ret void
}

declare void @_ZN6dealii12FunctionTime12advance_timeEd(ptr noundef nonnull align 8 dereferenceable(16), double noundef) unnamed_addr #1

declare void @_ZNK6dealii8FunctionILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 1, ptr noundef nonnull align 1, i32 noundef) unnamed_addr #1

declare void @_ZNK6dealii8FunctionILi1EE17vector_value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 1, ptr noundef nonnull align 1) unnamed_addr #1

declare void @_ZNK6dealii22AutoDerivativeFunctionILi1EE8gradientERKNS_5PointILi1EEEj() unnamed_addr

declare void @_ZNK6dealii22AutoDerivativeFunctionILi1EE15vector_gradientERKNS_5PointILi1EEERSt6vectorINS_6TensorILi1ELi1EEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(132), ptr noundef nonnull align 1, ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare void @_ZNK6dealii22AutoDerivativeFunctionILi1EE13gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6TensorILi1ELi1EEESaISA_EEj(ptr noundef nonnull align 8 dereferenceable(132), ptr noundef nonnull align 1, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #1

declare void @_ZNK6dealii22AutoDerivativeFunctionILi1EE20vector_gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi1EEESaISA_EESaISC_EE(ptr noundef nonnull align 8 dereferenceable(132), ptr noundef nonnull align 1, ptr noundef nonnull align 1) unnamed_addr #1

declare noundef double @_ZNK6dealii8FunctionILi1EE9laplacianERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 1, i32 noundef) unnamed_addr #1

declare void @_ZNK6dealii8FunctionILi1EE16vector_laplacianERKNS_5PointILi1EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 1, ptr noundef nonnull align 1) unnamed_addr #1

declare void @_ZNK6dealii8FunctionILi1EE14laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 1, ptr noundef nonnull align 1, i32 noundef) unnamed_addr #1

declare void @_ZNK6dealii8FunctionILi1EE21vector_laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 1, ptr noundef nonnull align 1) unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions14ParsedFunctionILi1EED1Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 !annotation !34 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14ParsedFunctionILi1EEE, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !35
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14ParsedFunctionILi1EEE, i64 0, inrange i32 1, i64 2), ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds i8, ptr %0, i64 120
  tail call void @_ZN6dealii14FunctionParserILi1EED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #19
  tail call void @_ZN6dealii22AutoDerivativeFunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(132) %2) #19
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions14ParsedFunctionILi1EED0Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 !annotation !34 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14ParsedFunctionILi1EEE, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !35
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14ParsedFunctionILi1EEE, i64 0, inrange i32 1, i64 2), ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds i8, ptr %0, i64 120
  tail call void @_ZN6dealii14FunctionParserILi1EED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #19
  tail call void @_ZN6dealii22AutoDerivativeFunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(132) %2) #19
  tail call void @_ZdlPv(ptr noundef %2) #20
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions14ParsedFunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #6 comdat align 2 !annotation !34 {
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14ParsedFunctionILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14ParsedFunctionILi2EEE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !35
  %3 = getelementptr inbounds %"class.dealii::Functions::ParsedFunction.29", ptr %0, i64 0, i32 1
  tail call void @_ZN6dealii14FunctionParserILi2EED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #19
  tail call void @_ZN6dealii22AutoDerivativeFunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(132) %0) #19
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions14ParsedFunctionILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #6 comdat align 2 !annotation !34 {
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14ParsedFunctionILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14ParsedFunctionILi2EEE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !35
  %3 = getelementptr inbounds %"class.dealii::Functions::ParsedFunction.29", ptr %0, i64 0, i32 1
  tail call void @_ZN6dealii14FunctionParserILi2EED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #19
  tail call void @_ZN6dealii22AutoDerivativeFunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(132) %0) #19
  tail call void @_ZdlPv(ptr noundef %0) #20
  ret void
}

declare void @_ZNK6dealii8FunctionILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 1, ptr noundef nonnull align 1, i32 noundef) unnamed_addr #1

declare void @_ZNK6dealii8FunctionILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 1, ptr noundef nonnull align 1) unnamed_addr #1

declare void @_ZNK6dealii22AutoDerivativeFunctionILi2EE8gradientERKNS_5PointILi2EEEj() unnamed_addr

declare void @_ZNK6dealii22AutoDerivativeFunctionILi2EE15vector_gradientERKNS_5PointILi2EEERSt6vectorINS_6TensorILi1ELi2EEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(132), ptr noundef nonnull align 1, ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare void @_ZNK6dealii22AutoDerivativeFunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6TensorILi1ELi2EEESaISA_EEj(ptr noundef nonnull align 8 dereferenceable(132), ptr noundef nonnull align 1, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #1

declare void @_ZNK6dealii22AutoDerivativeFunctionILi2EE20vector_gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi2EEESaISA_EESaISC_EE(ptr noundef nonnull align 8 dereferenceable(132), ptr noundef nonnull align 1, ptr noundef nonnull align 1) unnamed_addr #1

declare noundef double @_ZNK6dealii8FunctionILi2EE9laplacianERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 1, i32 noundef) unnamed_addr #1

declare void @_ZNK6dealii8FunctionILi2EE16vector_laplacianERKNS_5PointILi2EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 1, ptr noundef nonnull align 1) unnamed_addr #1

declare void @_ZNK6dealii8FunctionILi2EE14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 1, ptr noundef nonnull align 1, i32 noundef) unnamed_addr #1

declare void @_ZNK6dealii8FunctionILi2EE21vector_laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 1, ptr noundef nonnull align 1) unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions14ParsedFunctionILi2EED1Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 !annotation !34 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14ParsedFunctionILi2EEE, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !35
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14ParsedFunctionILi2EEE, i64 0, inrange i32 1, i64 2), ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds i8, ptr %0, i64 120
  tail call void @_ZN6dealii14FunctionParserILi2EED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #19
  tail call void @_ZN6dealii22AutoDerivativeFunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(132) %2) #19
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions14ParsedFunctionILi2EED0Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 !annotation !34 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14ParsedFunctionILi2EEE, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !35
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14ParsedFunctionILi2EEE, i64 0, inrange i32 1, i64 2), ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds i8, ptr %0, i64 120
  tail call void @_ZN6dealii14FunctionParserILi2EED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #19
  tail call void @_ZN6dealii22AutoDerivativeFunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(132) %2) #19
  tail call void @_ZdlPv(ptr noundef %2) #20
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions14ParsedFunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #6 comdat align 2 !annotation !34 {
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14ParsedFunctionILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14ParsedFunctionILi3EEE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !35
  %3 = getelementptr inbounds %"class.dealii::Functions::ParsedFunction.41", ptr %0, i64 0, i32 1
  tail call void @_ZN6dealii14FunctionParserILi3EED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #19
  tail call void @_ZN6dealii22AutoDerivativeFunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(132) %0) #19
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions14ParsedFunctionILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #6 comdat align 2 !annotation !34 {
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14ParsedFunctionILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14ParsedFunctionILi3EEE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !35
  %3 = getelementptr inbounds %"class.dealii::Functions::ParsedFunction.41", ptr %0, i64 0, i32 1
  tail call void @_ZN6dealii14FunctionParserILi3EED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #19
  tail call void @_ZN6dealii22AutoDerivativeFunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(132) %0) #19
  tail call void @_ZdlPv(ptr noundef %0) #20
  ret void
}

declare void @_ZNK6dealii8FunctionILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 1, ptr noundef nonnull align 1, i32 noundef) unnamed_addr #1

declare void @_ZNK6dealii8FunctionILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 1, ptr noundef nonnull align 1) unnamed_addr #1

declare void @_ZNK6dealii22AutoDerivativeFunctionILi3EE8gradientERKNS_5PointILi3EEEj() unnamed_addr

declare void @_ZNK6dealii22AutoDerivativeFunctionILi3EE15vector_gradientERKNS_5PointILi3EEERSt6vectorINS_6TensorILi1ELi3EEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(132), ptr noundef nonnull align 1, ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare void @_ZNK6dealii22AutoDerivativeFunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6TensorILi1ELi3EEESaISA_EEj(ptr noundef nonnull align 8 dereferenceable(132), ptr noundef nonnull align 1, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #1

declare void @_ZNK6dealii22AutoDerivativeFunctionILi3EE20vector_gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi3EEESaISA_EESaISC_EE(ptr noundef nonnull align 8 dereferenceable(132), ptr noundef nonnull align 1, ptr noundef nonnull align 1) unnamed_addr #1

declare noundef double @_ZNK6dealii8FunctionILi3EE9laplacianERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 1, i32 noundef) unnamed_addr #1

declare void @_ZNK6dealii8FunctionILi3EE16vector_laplacianERKNS_5PointILi3EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 1, ptr noundef nonnull align 1) unnamed_addr #1

declare void @_ZNK6dealii8FunctionILi3EE14laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 1, ptr noundef nonnull align 1, i32 noundef) unnamed_addr #1

declare void @_ZNK6dealii8FunctionILi3EE21vector_laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 1, ptr noundef nonnull align 1) unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions14ParsedFunctionILi3EED1Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 !annotation !34 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14ParsedFunctionILi3EEE, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !35
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14ParsedFunctionILi3EEE, i64 0, inrange i32 1, i64 2), ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds i8, ptr %0, i64 120
  tail call void @_ZN6dealii14FunctionParserILi3EED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #19
  tail call void @_ZN6dealii22AutoDerivativeFunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(132) %2) #19
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions14ParsedFunctionILi3EED0Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 !annotation !34 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14ParsedFunctionILi3EEE, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !35
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14ParsedFunctionILi3EEE, i64 0, inrange i32 1, i64 2), ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds i8, ptr %0, i64 120
  tail call void @_ZN6dealii14FunctionParserILi3EED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #19
  tail call void @_ZN6dealii22AutoDerivativeFunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(132) %2) #19
  tail call void @_ZdlPv(ptr noundef %2) #20
  ret void
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat !prof !83 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #19
  tail call void @_ZSt9terminatev() #22
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

declare void @_ZN6dealii13ExceptionBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii18StandardExceptions10ExcMessageD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #9 comdat align 2 !prof !83 {
  tail call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #19
  tail call void @_ZdlPv(ptr noundef %0) #20
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNK6dealii13ExceptionBase4whatEv(ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNK6dealii18StandardExceptions10ExcMessage10print_infoERSo(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #4 comdat align 2 !prof !83 {
  %3 = getelementptr inbounds %"class.dealii::StandardExceptions::ExcMessage", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !67
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = load ptr, ptr %1, align 8, !tbaa !35
  %8 = getelementptr i8, ptr %7, i64 -24
  %9 = load i64, ptr %8, align 8
  %10 = getelementptr inbounds i8, ptr %1, i64 %9
  %11 = getelementptr inbounds %"class.std::ios_base", ptr %10, i64 0, i32 5
  %12 = load i32, ptr %11, align 8, !tbaa !100
  %13 = or i32 %12, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %10, i32 noundef %13)
  br label %17

14:                                               ; preds = %2
  %15 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #19
  %16 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %4, i64 noundef %15)
  br label %17

17:                                               ; preds = %6, %14
  %18 = load ptr, ptr %1, align 8, !tbaa !35
  %19 = getelementptr i8, ptr %18, i64 -24
  %20 = load i64, ptr %19, align 8
  %21 = getelementptr inbounds i8, ptr %1, i64 %20
  %22 = tail call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %21, i8 noundef signext 10)
  %23 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext %22)
  %24 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %23)
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #11

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #0 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !83 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %21, label %4

4:                                                ; preds = %2, %19
  %5 = phi ptr [ %9, %19 ], [ %1, %2 ]
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !106
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %7)
  %8 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !107
  %10 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %5, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !48
  %12 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %5, i64 0, i32 1, i32 0, i64 16
  %13 = icmp eq ptr %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %5, i64 0, i32 1, i32 0, i64 8
  %16 = load i64, ptr %15, align 8, !tbaa !42
  %17 = icmp ult i64 %16, 16
  tail call void @llvm.assume(i1 %17)
  br label %19

18:                                               ; preds = %4
  tail call void @_ZdlPv(ptr noundef %11) #20
  br label %19

19:                                               ; preds = %14, %18
  tail call void @_ZdlPv(ptr noundef %5) #20
  %20 = icmp eq ptr %9, null
  br i1 %20, label %21, label %4, !llvm.loop !108

21:                                               ; preds = %19, %2
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6dealii14FunctionParserILi1EED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6dealii14FunctionParserILi2EED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6dealii14FunctionParserILi3EED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #2

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #13

declare void @_ZN6dealii13ExceptionBase10set_fieldsEPKciS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN6dealii18StandardExceptions10ExcMessageC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #14 comdat align 2 !prof !83 {
  tail call void @_ZN6dealii13ExceptionBaseC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(60) %1)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii18StandardExceptions10ExcMessageE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds %"class.dealii::StandardExceptions::ExcMessage", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.dealii::StandardExceptions::ExcMessage", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  store ptr %5, ptr %3, align 8, !tbaa !67
  ret void
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

declare void @_ZN6dealii13ExceptionBaseC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %6 = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #23
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEEvPSt13_Rb_tree_nodeIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %6, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  %7 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %6, i64 0, i32 1
  %8 = invoke { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %9 unwind label %46

9:                                                ; preds = %5
  %10 = extractvalue { ptr, ptr } %8, 0
  %11 = extractvalue { ptr, ptr } %8, 1
  %12 = icmp eq ptr %11, null
  br i1 %12, label %57, label %13

13:                                               ; preds = %9
  %14 = icmp ne ptr %10, null
  %15 = getelementptr inbounds i8, ptr %0, i64 8
  %16 = icmp eq ptr %15, %11
  %17 = select i1 %14, i1 true, i1 %16
  br i1 %17, label %41, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %6, i64 0, i32 1, i32 0, i64 8
  %20 = load i64, ptr %19, align 8, !tbaa !42
  %21 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %11, i64 0, i32 1, i32 0, i64 8
  %22 = load i64, ptr %21, align 8, !tbaa !42
  %23 = tail call i64 @llvm.umin.i64(i64 %22, i64 %20)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %11, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !48
  %28 = load ptr, ptr %7, align 8, !tbaa !48
  %29 = tail call i32 @memcmp(ptr noundef %28, ptr noundef %27, i64 noundef %23) #19
  br label %30

30:                                               ; preds = %25, %18
  %31 = phi i32 [ %29, %25 ], [ 0, %18 ]
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = sub i64 %20, %22
  %35 = tail call i64 @llvm.smax.i64(i64 %34, i64 -2147483648)
  %36 = tail call i64 @llvm.smin.i64(i64 %35, i64 2147483647)
  %37 = trunc i64 %36 to i32
  br label %38

38:                                               ; preds = %33, %30
  %39 = phi i32 [ %31, %30 ], [ %37, %33 ]
  %40 = icmp slt i32 %39, 0
  br label %41

41:                                               ; preds = %13, %38
  %42 = phi i1 [ true, %13 ], [ %40, %38 ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %42, ptr noundef nonnull %6, ptr noundef nonnull %11, ptr noundef nonnull align 8 dereferenceable(32) %15) #19
  %43 = getelementptr inbounds i8, ptr %0, i64 40
  %44 = load i64, ptr %43, align 8, !tbaa !63
  %45 = add i64 %44, 1
  store i64 %45, ptr %43, align 8, !tbaa !63
  br label %57

46:                                               ; preds = %5
  %47 = landingpad { ptr, i32 }
          cleanup
  %48 = load ptr, ptr %7, align 8, !tbaa !48
  %49 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %6, i64 0, i32 1, i32 0, i64 16
  %50 = icmp eq ptr %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %6, i64 0, i32 1, i32 0, i64 8
  %53 = load i64, ptr %52, align 8, !tbaa !42
  %54 = icmp ult i64 %53, 16
  tail call void @llvm.assume(i1 %54)
  br label %56

55:                                               ; preds = %46
  tail call void @_ZdlPv(ptr noundef %48) #20
  br label %56

56:                                               ; preds = %55, %51
  tail call void @_ZdlPv(ptr noundef %6) #20
  resume { ptr, i32 } %47

57:                                               ; preds = %41, %9
  %58 = phi ptr [ null, %41 ], [ %6, %9 ]
  %59 = phi ptr [ %6, %41 ], [ %10, %9 ]
  %60 = icmp eq ptr %58, null
  br i1 %60, label %72, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %58, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !48
  %64 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %58, i64 0, i32 1, i32 0, i64 16
  %65 = icmp eq ptr %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %58, i64 0, i32 1, i32 0, i64 8
  %68 = load i64, ptr %67, align 8, !tbaa !42
  %69 = icmp ult i64 %68, 16
  tail call void @llvm.assume(i1 %69)
  br label %71

70:                                               ; preds = %61
  tail call void @_ZdlPv(ptr noundef %63) #20
  br label %71

71:                                               ; preds = %70, %66
  tail call void @_ZdlPv(ptr noundef %58) #20
  br label %72

72:                                               ; preds = %57, %71
  ret ptr %59
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !83 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %38, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !42
  %9 = load ptr, ptr %3, align 8
  br label %10

10:                                               ; preds = %6, %29
  %11 = phi ptr [ %1, %6 ], [ %36, %29 ]
  %12 = phi ptr [ %2, %6 ], [ %34, %29 ]
  %13 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %11, i64 0, i32 1, i32 0, i64 8
  %14 = load i64, ptr %13, align 8, !tbaa !42
  %15 = tail call i64 @llvm.umin.i64(i64 %8, i64 %14)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %11, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !48
  %20 = tail call i32 @memcmp(ptr noundef %19, ptr noundef %9, i64 noundef %15) #19
  br label %21

21:                                               ; preds = %17, %10
  %22 = phi i32 [ %20, %17 ], [ 0, %10 ]
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = sub i64 %14, %8
  %26 = tail call i64 @llvm.smax.i64(i64 %25, i64 -2147483648)
  %27 = tail call i64 @llvm.smin.i64(i64 %26, i64 2147483647)
  %28 = trunc i64 %27 to i32
  br label %29

29:                                               ; preds = %21, %24
  %30 = phi i32 [ %22, %21 ], [ %28, %24 ]
  %31 = icmp slt i32 %30, 0
  %32 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %11, i64 0, i32 3
  %33 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %11, i64 0, i32 2
  %34 = select i1 %31, ptr %12, ptr %11
  %35 = select i1 %31, ptr %32, ptr %33
  %36 = load ptr, ptr %35, align 8, !tbaa !74
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %10, !llvm.loop !109

38:                                               ; preds = %29, %4
  %39 = phi ptr [ %2, %4 ], [ %34, %29 ]
  ret ptr %39
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !83 {
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %6, label %39

6:                                                ; preds = %3
  %7 = getelementptr inbounds i8, ptr %0, i64 40
  %8 = load i64, ptr %7, align 8, !tbaa !63
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %35, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds i8, ptr %0, i64 32
  %12 = load ptr, ptr %11, align 8, !tbaa !74
  %13 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %12, i64 0, i32 1, i32 0, i64 8
  %14 = load i64, ptr %13, align 8, !tbaa !42
  %15 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !42
  %17 = tail call i64 @llvm.umin.i64(i64 %16, i64 %14)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %10
  %20 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %12, i64 0, i32 1
  %21 = load ptr, ptr %2, align 8, !tbaa !48
  %22 = load ptr, ptr %20, align 8, !tbaa !48
  %23 = tail call i32 @memcmp(ptr noundef %22, ptr noundef %21, i64 noundef %17) #19
  br label %24

24:                                               ; preds = %19, %10
  %25 = phi i32 [ %23, %19 ], [ 0, %10 ]
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = sub i64 %14, %16
  %29 = tail call i64 @llvm.smax.i64(i64 %28, i64 -2147483648)
  %30 = tail call i64 @llvm.smin.i64(i64 %29, i64 2147483647)
  %31 = trunc i64 %30 to i32
  br label %32

32:                                               ; preds = %24, %27
  %33 = phi i32 [ %25, %24 ], [ %31, %27 ]
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %150, label %35

35:                                               ; preds = %32, %6
  %36 = tail call { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %37 = extractvalue { ptr, ptr } %36, 0
  %38 = extractvalue { ptr, ptr } %36, 1
  br label %150

39:                                               ; preds = %3
  %40 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1
  %41 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %42 = load i64, ptr %41, align 8, !tbaa !42
  %43 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1, i32 0, i64 8
  %44 = load i64, ptr %43, align 8, !tbaa !42
  %45 = tail call i64 @llvm.umin.i64(i64 %44, i64 %42)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %39
  %48 = load ptr, ptr %40, align 8, !tbaa !48
  %49 = load ptr, ptr %2, align 8, !tbaa !48
  %50 = tail call i32 @memcmp(ptr noundef %49, ptr noundef %48, i64 noundef %45) #19
  br label %51

51:                                               ; preds = %47, %39
  %52 = phi i32 [ %50, %47 ], [ 0, %39 ]
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = sub i64 %42, %44
  %56 = tail call i64 @llvm.smax.i64(i64 %55, i64 -2147483648)
  %57 = tail call i64 @llvm.smin.i64(i64 %56, i64 2147483647)
  %58 = trunc i64 %57 to i32
  br label %59

59:                                               ; preds = %51, %54
  %60 = phi i32 [ %52, %51 ], [ %58, %54 ]
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %98

62:                                               ; preds = %59
  %63 = getelementptr inbounds i8, ptr %0, i64 24
  %64 = load ptr, ptr %63, align 8, !tbaa !74
  %65 = icmp eq ptr %64, %1
  br i1 %65, label %150, label %66

66:                                               ; preds = %62
  %67 = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef %1) #24
  %68 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %67, i64 0, i32 1, i32 0, i64 8
  %69 = load i64, ptr %68, align 8, !tbaa !42
  %70 = tail call i64 @llvm.umin.i64(i64 %42, i64 %69)
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %66
  %73 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %67, i64 0, i32 1
  %74 = load ptr, ptr %2, align 8, !tbaa !48
  %75 = load ptr, ptr %73, align 8, !tbaa !48
  %76 = tail call i32 @memcmp(ptr noundef %75, ptr noundef %74, i64 noundef %70) #19
  br label %77

77:                                               ; preds = %72, %66
  %78 = phi i32 [ %76, %72 ], [ 0, %66 ]
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = sub i64 %69, %42
  %82 = tail call i64 @llvm.smax.i64(i64 %81, i64 -2147483648)
  %83 = tail call i64 @llvm.smin.i64(i64 %82, i64 2147483647)
  %84 = trunc i64 %83 to i32
  br label %85

85:                                               ; preds = %77, %80
  %86 = phi i32 [ %78, %77 ], [ %84, %80 ]
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %85
  %89 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %67, i64 0, i32 3
  %90 = load ptr, ptr %89, align 8, !tbaa !106
  %91 = icmp eq ptr %90, null
  %92 = select i1 %91, ptr null, ptr %1
  %93 = select i1 %91, ptr %67, ptr %1
  br label %150

94:                                               ; preds = %85
  %95 = tail call { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %96 = extractvalue { ptr, ptr } %95, 0
  %97 = extractvalue { ptr, ptr } %95, 1
  br label %150

98:                                               ; preds = %59
  br i1 %46, label %103, label %99

99:                                               ; preds = %98
  %100 = load ptr, ptr %2, align 8, !tbaa !48
  %101 = load ptr, ptr %40, align 8, !tbaa !48
  %102 = tail call i32 @memcmp(ptr noundef %101, ptr noundef %100, i64 noundef %45) #19
  br label %103

103:                                              ; preds = %99, %98
  %104 = phi i32 [ %102, %99 ], [ 0, %98 ]
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = sub i64 %44, %42
  %108 = tail call i64 @llvm.smax.i64(i64 %107, i64 -2147483648)
  %109 = tail call i64 @llvm.smin.i64(i64 %108, i64 2147483647)
  %110 = trunc i64 %109 to i32
  br label %111

111:                                              ; preds = %103, %106
  %112 = phi i32 [ %104, %103 ], [ %110, %106 ]
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %150

114:                                              ; preds = %111
  %115 = getelementptr inbounds i8, ptr %0, i64 32
  %116 = load ptr, ptr %115, align 8, !tbaa !74
  %117 = icmp eq ptr %116, %1
  br i1 %117, label %150, label %118

118:                                              ; preds = %114
  %119 = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %1) #24
  %120 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %119, i64 0, i32 1, i32 0, i64 8
  %121 = load i64, ptr %120, align 8, !tbaa !42
  %122 = tail call i64 @llvm.umin.i64(i64 %121, i64 %42)
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %129, label %124

124:                                              ; preds = %118
  %125 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %119, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !48
  %127 = load ptr, ptr %2, align 8, !tbaa !48
  %128 = tail call i32 @memcmp(ptr noundef %127, ptr noundef %126, i64 noundef %122) #19
  br label %129

129:                                              ; preds = %124, %118
  %130 = phi i32 [ %128, %124 ], [ 0, %118 ]
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %129
  %133 = sub i64 %42, %121
  %134 = tail call i64 @llvm.smax.i64(i64 %133, i64 -2147483648)
  %135 = tail call i64 @llvm.smin.i64(i64 %134, i64 2147483647)
  %136 = trunc i64 %135 to i32
  br label %137

137:                                              ; preds = %129, %132
  %138 = phi i32 [ %130, %129 ], [ %136, %132 ]
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %137
  %141 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %1, i64 0, i32 3
  %142 = load ptr, ptr %141, align 8, !tbaa !106
  %143 = icmp eq ptr %142, null
  %144 = select i1 %143, ptr null, ptr %119
  %145 = select i1 %143, ptr %1, ptr %119
  br label %150

146:                                              ; preds = %137
  %147 = tail call { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %148 = extractvalue { ptr, ptr } %147, 0
  %149 = extractvalue { ptr, ptr } %147, 1
  br label %150

150:                                              ; preds = %32, %111, %146, %114, %140, %94, %62, %88, %35
  %151 = phi ptr [ %37, %35 ], [ %96, %94 ], [ %64, %62 ], [ %92, %88 ], [ %148, %146 ], [ null, %114 ], [ %144, %140 ], [ %1, %111 ], [ null, %32 ]
  %152 = phi ptr [ %38, %35 ], [ %97, %94 ], [ %64, %62 ], [ %93, %88 ], [ %149, %146 ], [ %116, %114 ], [ %145, %140 ], [ null, %111 ], [ %12, %32 ]
  %153 = insertvalue { ptr, ptr } poison, ptr %151, 0
  %154 = insertvalue { ptr, ptr } %153, ptr %152, 1
  ret { ptr, ptr } %154
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEEvPSt13_Rb_tree_nodeIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %6 = alloca i64, align 8
  %7 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1
  %8 = load i64, ptr %3, align 8, !tbaa !74
  %9 = inttoptr i64 %8 to ptr
  %10 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1, i32 0, i64 16
  store ptr %10, ptr %7, align 8, !tbaa !38
  %11 = load ptr, ptr %9, align 8, !tbaa !48
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  store i64 %13, ptr %6, align 8, !tbaa !47
  %14 = icmp ugt i64 %13, 15
  br i1 %14, label %15, label %20, !prof !53

15:                                               ; preds = %5
  %16 = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 0)
          to label %17 unwind label %31

17:                                               ; preds = %15
  store ptr %16, ptr %7, align 8, !tbaa !48
  %18 = load i64, ptr %6, align 8, !tbaa !47
  %19 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1, i32 0, i64 16
  store i64 %18, ptr %19, align 8, !tbaa !45
  br label %20

20:                                               ; preds = %17, %5
  %21 = load ptr, ptr %7, align 8, !tbaa !48
  switch i64 %13, label %24 [
    i64 1, label %22
    i64 0, label %25
  ], !prof !54

22:                                               ; preds = %20
  %23 = load i8, ptr %11, align 1, !tbaa !45
  store i8 %23, ptr %21, align 1, !tbaa !45
  br label %25

24:                                               ; preds = %20
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %21, ptr align 1 %11, i64 %13, i1 false), !prof !55
  br label %25

25:                                               ; preds = %20, %22, %24
  %26 = load i64, ptr %6, align 8, !tbaa !47
  %27 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1, i32 0, i64 8
  store i64 %26, ptr %27, align 8, !tbaa !42
  %28 = load ptr, ptr %7, align 8, !tbaa !48
  %29 = getelementptr inbounds i8, ptr %28, i64 %26
  store i8 0, ptr %29, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  %30 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1, i32 0, i64 32
  store double 0.000000e+00, ptr %30, align 8, !tbaa !110
  ret void

31:                                               ; preds = %15
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  %34 = call ptr @__cxa_begin_catch(ptr %33) #19
  call void @_ZdlPv(ptr noundef %1) #20
  invoke void @__cxa_rethrow() #21
          to label %41 unwind label %35

35:                                               ; preds = %31
  %36 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %37 unwind label %38

37:                                               ; preds = %35
  resume { ptr, i32 } %36

38:                                               ; preds = %35
  %39 = landingpad { ptr, i32 }
          catch ptr null
  %40 = extractvalue { ptr, i32 } %39, 0
  call void @__clang_call_terminate(ptr %40) #22
  unreachable

41:                                               ; preds = %31
  unreachable
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #15

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !83 {
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  %5 = load ptr, ptr %3, align 8, !tbaa !74
  %6 = icmp eq ptr %5, null
  br i1 %6, label %37, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !42
  %10 = load ptr, ptr %1, align 8
  br label %11

11:                                               ; preds = %7, %29
  %12 = phi ptr [ %5, %7 ], [ %35, %29 ]
  %13 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %12, i64 0, i32 1, i32 0, i64 8
  %14 = load i64, ptr %13, align 8, !tbaa !42
  %15 = tail call i64 @llvm.umin.i64(i64 %14, i64 %9)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %12, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !48
  %20 = tail call i32 @memcmp(ptr noundef %10, ptr noundef %19, i64 noundef %15) #19
  br label %21

21:                                               ; preds = %17, %11
  %22 = phi i32 [ %20, %17 ], [ 0, %11 ]
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = sub i64 %9, %14
  %26 = tail call i64 @llvm.smax.i64(i64 %25, i64 -2147483648)
  %27 = tail call i64 @llvm.smin.i64(i64 %26, i64 2147483647)
  %28 = trunc i64 %27 to i32
  br label %29

29:                                               ; preds = %21, %24
  %30 = phi i32 [ %22, %21 ], [ %28, %24 ]
  %31 = icmp slt i32 %30, 0
  %32 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %12, i64 0, i32 2
  %33 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %12, i64 0, i32 3
  %34 = select i1 %31, ptr %32, ptr %33
  %35 = load ptr, ptr %34, align 8, !tbaa !74
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %11, !llvm.loop !112

37:                                               ; preds = %29, %2
  %38 = phi ptr [ %4, %2 ], [ %12, %29 ]
  %39 = phi i1 [ true, %2 ], [ %31, %29 ]
  %40 = phi ptr [ %5, %2 ], [ %35, %29 ]
  br i1 %39, label %41, label %47

41:                                               ; preds = %37
  %42 = getelementptr inbounds i8, ptr %0, i64 24
  %43 = load ptr, ptr %42, align 8, !tbaa !61
  %44 = icmp eq ptr %38, %43
  br i1 %44, label %73, label %45

45:                                               ; preds = %41
  %46 = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %38) #24
  br label %47

47:                                               ; preds = %45, %37
  %48 = phi ptr [ %46, %45 ], [ %38, %37 ]
  %49 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %48, i64 0, i32 1, i32 0, i64 8
  %50 = load i64, ptr %49, align 8, !tbaa !42
  %51 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %52 = load i64, ptr %51, align 8, !tbaa !42
  %53 = tail call i64 @llvm.umin.i64(i64 %52, i64 %50)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %47
  %56 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %48, i64 0, i32 1
  %57 = load ptr, ptr %1, align 8, !tbaa !48
  %58 = load ptr, ptr %56, align 8, !tbaa !48
  %59 = tail call i32 @memcmp(ptr noundef %58, ptr noundef %57, i64 noundef %53) #19
  br label %60

60:                                               ; preds = %55, %47
  %61 = phi i32 [ %59, %55 ], [ 0, %47 ]
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = sub i64 %50, %52
  %65 = tail call i64 @llvm.smax.i64(i64 %64, i64 -2147483648)
  %66 = tail call i64 @llvm.smin.i64(i64 %65, i64 2147483647)
  %67 = trunc i64 %66 to i32
  br label %68

68:                                               ; preds = %60, %63
  %69 = phi i32 [ %61, %60 ], [ %67, %63 ]
  %70 = icmp slt i32 %69, 0
  %71 = select i1 %70, ptr %40, ptr %48
  %72 = select i1 %70, ptr %38, ptr null
  br label %73

73:                                               ; preds = %68, %41
  %74 = phi ptr [ %40, %41 ], [ %71, %68 ]
  %75 = phi ptr [ %38, %41 ], [ %72, %68 ]
  %76 = insertvalue { ptr, ptr } poison, ptr %74, 0
  %77 = insertvalue { ptr, ptr } %76, ptr %75, 1
  ret { ptr, ptr } %77
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #16

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %6 = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #23
  %7 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %6, i64 0, i32 1
  %8 = load i64, ptr %3, align 8, !tbaa !74
  %9 = inttoptr i64 %8 to ptr
  %10 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %6, i64 0, i32 1, i32 0, i64 16
  store ptr %10, ptr %7, align 8, !tbaa !38
  %11 = load ptr, ptr %9, align 8, !tbaa !48
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 2
  %13 = icmp eq ptr %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %5
  %15 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !42
  %17 = icmp ult i64 %16, 16
  tail call void @llvm.assume(i1 %17)
  %18 = add nuw nsw i64 %16, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %10, ptr noundef nonnull align 8 dereferenceable(1) %12, i64 %18, i1 false)
  br label %21

19:                                               ; preds = %5
  store ptr %11, ptr %7, align 8, !tbaa !48
  %20 = load i64, ptr %12, align 8, !tbaa !45
  store i64 %20, ptr %10, align 8, !tbaa !45
  br label %21

21:                                               ; preds = %14, %19
  %22 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !42
  %24 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %6, i64 0, i32 1, i32 0, i64 8
  store i64 %23, ptr %24, align 8, !tbaa !42
  store ptr %12, ptr %9, align 8, !tbaa !48
  store i64 0, ptr %22, align 8, !tbaa !42
  store i8 0, ptr %12, align 1, !tbaa !45
  %25 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %6, i64 0, i32 1, i32 0, i64 32
  store double 0.000000e+00, ptr %25, align 8, !tbaa !110
  %26 = invoke { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %27 unwind label %63

27:                                               ; preds = %21
  %28 = extractvalue { ptr, ptr } %26, 0
  %29 = extractvalue { ptr, ptr } %26, 1
  %30 = icmp eq ptr %29, null
  br i1 %30, label %72, label %31

31:                                               ; preds = %27
  %32 = icmp ne ptr %28, null
  %33 = getelementptr inbounds i8, ptr %0, i64 8
  %34 = icmp eq ptr %33, %29
  %35 = select i1 %32, i1 true, i1 %34
  br i1 %35, label %58, label %36

36:                                               ; preds = %31
  %37 = load i64, ptr %24, align 8, !tbaa !42
  %38 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %29, i64 0, i32 1, i32 0, i64 8
  %39 = load i64, ptr %38, align 8, !tbaa !42
  %40 = tail call i64 @llvm.umin.i64(i64 %39, i64 %37)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %36
  %43 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %29, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !48
  %45 = load ptr, ptr %7, align 8, !tbaa !48
  %46 = tail call i32 @memcmp(ptr noundef %45, ptr noundef %44, i64 noundef %40) #19
  br label %47

47:                                               ; preds = %42, %36
  %48 = phi i32 [ %46, %42 ], [ 0, %36 ]
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = sub i64 %37, %39
  %52 = tail call i64 @llvm.smax.i64(i64 %51, i64 -2147483648)
  %53 = tail call i64 @llvm.smin.i64(i64 %52, i64 2147483647)
  %54 = trunc i64 %53 to i32
  br label %55

55:                                               ; preds = %50, %47
  %56 = phi i32 [ %48, %47 ], [ %54, %50 ]
  %57 = icmp slt i32 %56, 0
  br label %58

58:                                               ; preds = %31, %55
  %59 = phi i1 [ true, %31 ], [ %57, %55 ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %59, ptr noundef nonnull %6, ptr noundef nonnull %29, ptr noundef nonnull align 8 dereferenceable(32) %33) #19
  %60 = getelementptr inbounds i8, ptr %0, i64 40
  %61 = load i64, ptr %60, align 8, !tbaa !63
  %62 = add i64 %61, 1
  store i64 %62, ptr %60, align 8, !tbaa !63
  br label %72

63:                                               ; preds = %21
  %64 = landingpad { ptr, i32 }
          cleanup
  %65 = load ptr, ptr %7, align 8, !tbaa !48
  %66 = icmp eq ptr %65, %10
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i64, ptr %24, align 8, !tbaa !42
  %69 = icmp ult i64 %68, 16
  tail call void @llvm.assume(i1 %69)
  br label %71

70:                                               ; preds = %63
  tail call void @_ZdlPv(ptr noundef %65) #20
  br label %71

71:                                               ; preds = %70, %67
  tail call void @_ZdlPv(ptr noundef %6) #20
  resume { ptr, i32 } %64

72:                                               ; preds = %58, %27
  %73 = phi ptr [ null, %58 ], [ %6, %27 ]
  %74 = phi ptr [ %6, %58 ], [ %28, %27 ]
  %75 = icmp eq ptr %73, null
  br i1 %75, label %87, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %73, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !48
  %79 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %73, i64 0, i32 1, i32 0, i64 16
  %80 = icmp eq ptr %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %73, i64 0, i32 1, i32 0, i64 8
  %83 = load i64, ptr %82, align 8, !tbaa !42
  %84 = icmp ult i64 %83, 16
  tail call void @llvm.assume(i1 %84)
  br label %86

85:                                               ; preds = %76
  tail call void @_ZdlPv(ptr noundef %78) #20
  br label %86

86:                                               ; preds = %85, %81
  tail call void @_ZdlPv(ptr noundef %73) #20
  br label %87

87:                                               ; preds = %72, %86
  ret ptr %74
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind }
attributes #20 = { builtin nounwind }
attributes #21 = { noreturn }
attributes #22 = { noreturn nounwind }
attributes #23 = { builtin allocsize(0) }
attributes #24 = { nounwind willreturn memory(read) }

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
!34 = !{!"instr_prof_hash_mismatch"}
!35 = !{!36, !36, i64 0}
!36 = !{!"vtable pointer", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{!39, !40, i64 0}
!39 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !40, i64 0}
!40 = !{!"any pointer", !41, i64 0}
!41 = !{!"omnipotent char", !37, i64 0}
!42 = !{!43, !44, i64 8}
!43 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !39, i64 0, !44, i64 8, !41, i64 16}
!44 = !{!"long", !41, i64 0}
!45 = !{!41, !41, i64 0}
!46 = !{!"VP", i32 1, i64 0, i64 5, i64 0, i64 9, i64 0, i64 2, i64 0, i64 4, i64 0}
!47 = !{!44, !44, i64 0}
!48 = !{!43, !40, i64 0}
!49 = !{!"branch_weights", i32 0, i32 757}
!50 = distinct !{!50, !51, !52}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!"llvm.loop.unroll.disable"}
!53 = !{!"branch_weights", i32 828, i32 42994}
!54 = !{!"branch_weights", i32 42637, i32 675, i32 510}
!55 = !{!"VP", i32 1, i64 0, i64 9, i64 0, i64 8, i64 0, i64 5, i64 0, i64 4, i64 0}
!56 = !{!57, !59, i64 0}
!57 = !{!"_ZTSSt15_Rb_tree_header", !58, i64 0, !44, i64 32}
!58 = !{!"_ZTSSt18_Rb_tree_node_base", !59, i64 0, !40, i64 8, !40, i64 16, !40, i64 24}
!59 = !{!"_ZTSSt14_Rb_tree_color", !41, i64 0}
!60 = !{!57, !40, i64 8}
!61 = !{!57, !40, i64 16}
!62 = !{!57, !40, i64 24}
!63 = !{!57, !44, i64 32}
!64 = !{!65, !40, i64 8}
!65 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !40, i64 0, !40, i64 8, !40, i64 16}
!66 = !{!65, !40, i64 0}
!67 = !{!68, !40, i64 64}
!68 = !{!"_ZTSN6dealii18StandardExceptions10ExcMessageE", !69, i64 0, !40, i64 64}
!69 = !{!"_ZTSN6dealii13ExceptionBaseE", !70, i64 0, !40, i64 8, !71, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !71, i64 56}
!70 = !{!"_ZTSSt9exception"}
!71 = !{!"int", !41, i64 0}
!72 = !{!73, !73, i64 0}
!73 = !{!"double", !41, i64 0}
!74 = !{!40, !40, i64 0}
!75 = distinct !{!75, !51, !52}
!76 = distinct !{!76, !51, !52}
!77 = !{!78}
!78 = distinct !{!78, !79, !"_ZSt16forward_as_tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt5tupleIJDpOT_EES9_: argument 0"}
!79 = distinct !{!79, !"_ZSt16forward_as_tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt5tupleIJDpOT_EES9_"}
!80 = !{!81}
!81 = distinct !{!81, !82, !"_ZSt16forward_as_tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt5tupleIJDpOT_EES9_: argument 0"}
!82 = distinct !{!82, !"_ZSt16forward_as_tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt5tupleIJDpOT_EES9_"}
!83 = !{!"function_entry_count", i64 0}
!84 = distinct !{!84, !51, !52}
!85 = distinct !{!85, !51, !52}
!86 = !{!87}
!87 = distinct !{!87, !88, !"_ZSt16forward_as_tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt5tupleIJDpOT_EES9_: argument 0"}
!88 = distinct !{!88, !"_ZSt16forward_as_tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt5tupleIJDpOT_EES9_"}
!89 = !{!90}
!90 = distinct !{!90, !91, !"_ZSt16forward_as_tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt5tupleIJDpOT_EES9_: argument 0"}
!91 = distinct !{!91, !"_ZSt16forward_as_tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt5tupleIJDpOT_EES9_"}
!92 = distinct !{!92, !51, !52}
!93 = distinct !{!93, !51, !52}
!94 = !{!95}
!95 = distinct !{!95, !96, !"_ZSt16forward_as_tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt5tupleIJDpOT_EES9_: argument 0"}
!96 = distinct !{!96, !"_ZSt16forward_as_tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt5tupleIJDpOT_EES9_"}
!97 = !{!98}
!98 = distinct !{!98, !99, !"_ZSt16forward_as_tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt5tupleIJDpOT_EES9_: argument 0"}
!99 = distinct !{!99, !"_ZSt16forward_as_tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt5tupleIJDpOT_EES9_"}
!100 = !{!101, !103, i64 32}
!101 = !{!"_ZTSSt8ios_base", !44, i64 8, !44, i64 16, !102, i64 24, !103, i64 28, !103, i64 32, !40, i64 40, !104, i64 48, !41, i64 64, !71, i64 192, !40, i64 200, !105, i64 208}
!102 = !{!"_ZTSSt13_Ios_Fmtflags", !41, i64 0}
!103 = !{!"_ZTSSt12_Ios_Iostate", !41, i64 0}
!104 = !{!"_ZTSNSt8ios_base6_WordsE", !40, i64 0, !44, i64 8}
!105 = !{!"_ZTSSt6locale", !40, i64 0}
!106 = !{!58, !40, i64 24}
!107 = !{!58, !40, i64 16}
!108 = distinct !{!108, !51, !52}
!109 = distinct !{!109, !51, !52}
!110 = !{!111, !73, i64 32}
!111 = !{!"_ZTSSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdE", !43, i64 0, !73, i64 32}
!112 = distinct !{!112, !51, !52}
