; ModuleID = 'simulator/objectprinter.cc'
source_filename = "simulator/objectprinter.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<MatchExpression *, std::allocator<MatchExpression *>>::_Vector_impl" }
%"struct.std::_Vector_base<MatchExpression *, std::allocator<MatchExpression *>>::_Vector_impl" = type { %"struct.std::_Vector_base<MatchExpression *, std::allocator<MatchExpression *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<MatchExpression *, std::allocator<MatchExpression *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.0" = type { %"struct.std::_Vector_base.1" }
%"struct.std::_Vector_base.1" = type { %"struct.std::_Vector_base<std::vector<MatchExpression *>, std::allocator<std::vector<MatchExpression *>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::vector<MatchExpression *>, std::allocator<std::vector<MatchExpression *>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::vector<MatchExpression *>, std::allocator<std::vector<MatchExpression *>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::vector<MatchExpression *>, std::allocator<std::vector<MatchExpression *>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%class.StringTokenizer = type { ptr, ptr, %"class.std::__cxx11::basic_string" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::vector.8" = type { %"struct.std::_Vector_base.9" }
%"struct.std::_Vector_base.9" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%class.ObjectPrinter = type { i32, [1024 x i8], %"class.std::vector", %"class.std::vector.0" }
%class.MatchExpression = type { i8, i8, i8, %"class.std::vector.13" }
%"class.std::vector.13" = type { %"struct.std::_Vector_base.14" }
%"struct.std::_Vector_base.14" = type { %"struct.std::_Vector_base<MatchExpression::Elem, std::allocator<MatchExpression::Elem>>::_Vector_impl" }
%"struct.std::_Vector_base<MatchExpression::Elem, std::allocator<MatchExpression::Elem>>::_Vector_impl" = type { %"struct.std::_Vector_base<MatchExpression::Elem, std::allocator<MatchExpression::Elem>>::_Vector_impl_data" }
%"struct.std::_Vector_base<MatchExpression::Elem, std::allocator<MatchExpression::Elem>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::__cxx11::basic_stringstream" = type { %"class.std::basic_iostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_iostream.base" = type { %"class.std::basic_istream.base", %"class.std::basic_ostream.base" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%class.MatchableObjectAdapter = type { %"class.MatchExpression::Matchable", i32, ptr, ptr, %"class.std::__cxx11::basic_string" }
%"class.MatchExpression::Matchable" = type { ptr }
%class.MatchableFieldAdapter = type <{ %"class.MatchExpression::Matchable", ptr, ptr, i32, [4 x i8] }>
%"class.MatchExpression::Elem" = type { i32, %"class.std::__cxx11::basic_string", ptr }
%class.cArray = type { %class.cOwnedObject.base, ptr, i32, i32, i32, i32 }
%class.cOwnedObject.base = type <{ %class.cNamedObject.base, [4 x i8], ptr, i32 }>
%class.cNamedObject.base = type <{ %class.cObject, ptr, i16, i16 }>
%class.cObject = type { ptr }
%"class.__gnu_cxx::__normal_iterator" = type { ptr }
%"class.__gnu_cxx::__normal_iterator.18" = type { ptr }
%"class.std::allocator" = type { i8 }
%"class.__gnu_cxx::__normal_iterator.19" = type { ptr }
%"class.__gnu_cxx::__normal_iterator.20" = type { ptr }

$_ZNSt6vectorIP15MatchExpressionSaIS1_EEC2Ev = comdat any

$_ZNSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EEC2Ev = comdat any

$_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm = comdat any

$_ZNSt6vectorIP15MatchExpressionSaIS1_EE9push_backEOS1_ = comdat any

$_ZNSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EE9push_backERKS3_ = comdat any

$_ZNSt6vectorIP15MatchExpressionSaIS1_EED2Ev = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev = comdat any

$_ZNSt6vectorIP15MatchExpressionSaIS1_EEaSERKS3_ = comdat any

$_ZNSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EEaSERKS5_ = comdat any

$_ZNSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EED2Ev = comdat any

$_ZNKSt6vectorIP15MatchExpressionSaIS1_EE4sizeEv = comdat any

$_ZNSt6vectorIP15MatchExpressionSaIS1_EEixEm = comdat any

$_ZN15MatchExpressionD2Ev = comdat any

$_ZNSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EEixEm = comdat any

$_ZNK16cClassDescriptor15getFieldIsArrayEPvi = comdat any

$_ZNK16cClassDescriptor17getFieldIsPointerEPvi = comdat any

$_ZNK16cClassDescriptor18getFieldIsCompoundEPvi = comdat any

$_ZNK16cClassDescriptor17getFieldIsCObjectEPvi = comdat any

$_ZN15MatchExpression9MatchableD2Ev = comdat any

$_ZN22MatchableObjectAdapterD2Ev = comdat any

$_ZNSt12_Vector_baseIP15MatchExpressionSaIS1_EEC2Ev = comdat any

$_ZNSt12_Vector_baseIP15MatchExpressionSaIS1_EE12_Vector_implC2Ev = comdat any

$_ZNSaIP15MatchExpressionEC2Ev = comdat any

$_ZNSt12_Vector_baseIP15MatchExpressionSaIS1_EE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt15__new_allocatorIP15MatchExpressionEC2Ev = comdat any

$_ZNSt12_Vector_baseISt6vectorIP15MatchExpressionSaIS2_EESaIS4_EEC2Ev = comdat any

$_ZNSt12_Vector_baseISt6vectorIP15MatchExpressionSaIS2_EESaIS4_EE12_Vector_implC2Ev = comdat any

$_ZNSaISt6vectorIP15MatchExpressionSaIS1_EEEC2Ev = comdat any

$_ZNSt12_Vector_baseISt6vectorIP15MatchExpressionSaIS2_EESaIS4_EE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt15__new_allocatorISt6vectorIP15MatchExpressionSaIS2_EEEC2Ev = comdat any

$_ZNSt6vectorIN15MatchExpression4ElemESaIS1_EED2Ev = comdat any

$_ZSt8_DestroyIPN15MatchExpression4ElemES1_EvT_S3_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseIN15MatchExpression4ElemESaIS1_EE19_M_get_Tp_allocatorEv = comdat any

$__clang_call_terminate = comdat any

$_ZNSt12_Vector_baseIN15MatchExpression4ElemESaIS1_EED2Ev = comdat any

$_ZSt8_DestroyIPN15MatchExpression4ElemEEvT_S3_ = comdat any

$_ZNSt12_Destroy_auxILb0EE9__destroyIPN15MatchExpression4ElemEEEvT_S5_ = comdat any

$_ZSt8_DestroyIN15MatchExpression4ElemEEvPT_ = comdat any

$_ZNSt12_Vector_baseIN15MatchExpression4ElemESaIS1_EE13_M_deallocateEPS1_m = comdat any

$_ZNSt15__new_allocatorIN15MatchExpression4ElemEED2Ev = comdat any

$_ZNSt16allocator_traitsISaIN15MatchExpression4ElemEEE10deallocateERS2_PS1_m = comdat any

$_ZNSt15__new_allocatorIN15MatchExpression4ElemEE10deallocateEPS1_m = comdat any

$_ZNK6cArray4sizeEv = comdat any

$_ZSt8_DestroyIPP15MatchExpressionS1_EvT_S3_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseIP15MatchExpressionSaIS1_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseIP15MatchExpressionSaIS1_EED2Ev = comdat any

$_ZSt8_DestroyIPP15MatchExpressionEvT_S3_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPP15MatchExpressionEEvT_S5_ = comdat any

$_ZNSt12_Vector_baseIP15MatchExpressionSaIS1_EE13_M_deallocateEPS1_m = comdat any

$_ZNSt16allocator_traitsISaIP15MatchExpressionEE10deallocateERS2_PS1_m = comdat any

$_ZNSt15__new_allocatorIP15MatchExpressionE10deallocateEPS1_m = comdat any

$_ZSt8_DestroyIPSt6vectorIP15MatchExpressionSaIS2_EES4_EvT_S6_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseISt6vectorIP15MatchExpressionSaIS2_EESaIS4_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseISt6vectorIP15MatchExpressionSaIS2_EESaIS4_EED2Ev = comdat any

$_ZSt8_DestroyIPSt6vectorIP15MatchExpressionSaIS2_EEEvT_S6_ = comdat any

$_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIP15MatchExpressionSaIS4_EEEEvT_S8_ = comdat any

$_ZSt8_DestroyISt6vectorIP15MatchExpressionSaIS2_EEEvPT_ = comdat any

$_ZNSt12_Vector_baseISt6vectorIP15MatchExpressionSaIS2_EESaIS4_EE13_M_deallocateEPS4_m = comdat any

$_ZNSt15__new_allocatorISt6vectorIP15MatchExpressionSaIS2_EEED2Ev = comdat any

$_ZNSt16allocator_traitsISaISt6vectorIP15MatchExpressionSaIS2_EEEE10deallocateERS5_PS4_m = comdat any

$_ZNSt15__new_allocatorISt6vectorIP15MatchExpressionSaIS2_EEE10deallocateEPS4_m = comdat any

$_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev = comdat any

$_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_ = comdat any

$_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_ = comdat any

$_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_ = comdat any

$_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m = comdat any

$_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev = comdat any

$_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateERS6_PS5_m = comdat any

$_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10deallocateEPS5_m = comdat any

$_ZNSt6vectorIP15MatchExpressionSaIS1_EE12emplace_backIJS1_EEERS1_DpOT_ = comdat any

$_ZNSt16allocator_traitsISaIP15MatchExpressionEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_ = comdat any

$_ZNSt6vectorIP15MatchExpressionSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_ = comdat any

$_ZNSt6vectorIP15MatchExpressionSaIS1_EE3endEv = comdat any

$_ZNSt6vectorIP15MatchExpressionSaIS1_EE4backEv = comdat any

$_ZNSt15__new_allocatorIP15MatchExpressionE9constructIS1_JS1_EEEvPT_DpOT0_ = comdat any

$_ZNKSt6vectorIP15MatchExpressionSaIS1_EE12_M_check_lenEmPKc = comdat any

$_ZN9__gnu_cxxmiIPP15MatchExpressionSt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_ = comdat any

$_ZNSt6vectorIP15MatchExpressionSaIS1_EE5beginEv = comdat any

$_ZNSt12_Vector_baseIP15MatchExpressionSaIS1_EE11_M_allocateEm = comdat any

$_ZNSt6vectorIP15MatchExpressionSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPP15MatchExpressionSt6vectorIS2_SaIS2_EEE4baseEv = comdat any

$_ZNKSt6vectorIP15MatchExpressionSaIS1_EE8max_sizeEv = comdat any

$_ZSt3maxImERKT_S2_S2_ = comdat any

$_ZNSt6vectorIP15MatchExpressionSaIS1_EE11_S_max_sizeERKS2_ = comdat any

$_ZNKSt12_Vector_baseIP15MatchExpressionSaIS1_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt16allocator_traitsISaIP15MatchExpressionEE8max_sizeERKS2_ = comdat any

$_ZSt3minImERKT_S2_S2_ = comdat any

$_ZNKSt15__new_allocatorIP15MatchExpressionE8max_sizeEv = comdat any

$_ZNKSt15__new_allocatorIP15MatchExpressionE11_M_max_sizeEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPP15MatchExpressionSt6vectorIS2_SaIS2_EEEC2ERKS3_ = comdat any

$_ZNSt16allocator_traitsISaIP15MatchExpressionEE8allocateERS2_m = comdat any

$_ZNSt15__new_allocatorIP15MatchExpressionE8allocateEmPKv = comdat any

$_ZSt12__relocate_aIPP15MatchExpressionS2_SaIS1_EET0_T_S5_S4_RT1_ = comdat any

$_ZSt14__relocate_a_1IP15MatchExpressionS1_ENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS3_E4typeES4_S4_S4_RSaIT0_E = comdat any

$_ZSt12__niter_baseIPP15MatchExpressionET_S3_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPP15MatchExpressionSt6vectorIS2_SaIS2_EEEmiEl = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPP15MatchExpressionSt6vectorIS2_SaIS2_EEEdeEv = comdat any

$_ZNSt16allocator_traitsISaISt6vectorIP15MatchExpressionSaIS2_EEEE9constructIS4_JRKS4_EEEvRS5_PT_DpOT0_ = comdat any

$_ZNSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_ = comdat any

$_ZNSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EE3endEv = comdat any

$_ZNSt15__new_allocatorISt6vectorIP15MatchExpressionSaIS2_EEE9constructIS4_JRKS4_EEEvPT_DpOT0_ = comdat any

$_ZNSt6vectorIP15MatchExpressionSaIS1_EEC2ERKS3_ = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIP15MatchExpressionES2_E17_S_select_on_copyERKS3_ = comdat any

$_ZNSt12_Vector_baseIP15MatchExpressionSaIS1_EEC2EmRKS2_ = comdat any

$_ZNSt15__new_allocatorIP15MatchExpressionED2Ev = comdat any

$_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKP15MatchExpressionSt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E = comdat any

$_ZNKSt6vectorIP15MatchExpressionSaIS1_EE5beginEv = comdat any

$_ZNKSt6vectorIP15MatchExpressionSaIS1_EE3endEv = comdat any

$_ZNSt16allocator_traitsISaIP15MatchExpressionEE37select_on_container_copy_constructionERKS2_ = comdat any

$_ZNSaIP15MatchExpressionEC2ERKS1_ = comdat any

$_ZNSt15__new_allocatorIP15MatchExpressionEC2ERKS2_ = comdat any

$_ZNSt12_Vector_baseIP15MatchExpressionSaIS1_EE12_Vector_implC2ERKS2_ = comdat any

$_ZNSt12_Vector_baseIP15MatchExpressionSaIS1_EE17_M_create_storageEm = comdat any

$_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKP15MatchExpressionSt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_ = comdat any

$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKP15MatchExpressionSt6vectorIS5_SaIS5_EEEEPS5_EET0_T_SE_SD_ = comdat any

$_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKP15MatchExpressionSt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_ = comdat any

$_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKP15MatchExpressionSt6vectorIS3_SaIS3_EEEEPS3_ET1_T0_SC_SB_ = comdat any

$_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKP15MatchExpressionSt6vectorIS3_SaIS3_EEEEET_SA_ = comdat any

$_ZSt12__niter_wrapIPP15MatchExpressionET_RKS3_S3_ = comdat any

$_ZSt14__copy_move_a1ILb0EPKP15MatchExpressionPS1_ET1_T0_S6_S5_ = comdat any

$_ZSt12__niter_baseIPKP15MatchExpressionSt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS7_T0_EE = comdat any

$_ZSt14__copy_move_a2ILb0EPKP15MatchExpressionPS1_ET1_T0_S6_S5_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIP15MatchExpressionEEPT_PKS5_S8_S6_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPKP15MatchExpressionSt6vectorIS2_SaIS2_EEE4baseEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPKP15MatchExpressionSt6vectorIS2_SaIS2_EEEC2ERKS4_ = comdat any

$_ZNKSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EE12_M_check_lenEmPKc = comdat any

$_ZN9__gnu_cxxmiIPSt6vectorIP15MatchExpressionSaIS3_EES1_IS5_SaIS5_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSC_SF_ = comdat any

$_ZNSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EE5beginEv = comdat any

$_ZNSt12_Vector_baseISt6vectorIP15MatchExpressionSaIS2_EESaIS4_EE11_M_allocateEm = comdat any

$_ZNSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorIP15MatchExpressionSaIS3_EES1_IS5_SaIS5_EEE4baseEv = comdat any

$_ZNSt16allocator_traitsISaISt6vectorIP15MatchExpressionSaIS2_EEEE7destroyIS4_EEvRS5_PT_ = comdat any

$_ZNKSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EE8max_sizeEv = comdat any

$_ZNKSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EE4sizeEv = comdat any

$_ZNSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EE11_S_max_sizeERKS4_ = comdat any

$_ZNKSt12_Vector_baseISt6vectorIP15MatchExpressionSaIS2_EESaIS4_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt16allocator_traitsISaISt6vectorIP15MatchExpressionSaIS2_EEEE8max_sizeERKS5_ = comdat any

$_ZNKSt15__new_allocatorISt6vectorIP15MatchExpressionSaIS2_EEE8max_sizeEv = comdat any

$_ZNKSt15__new_allocatorISt6vectorIP15MatchExpressionSaIS2_EEE11_M_max_sizeEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPSt6vectorIP15MatchExpressionSaIS3_EES1_IS5_SaIS5_EEEC2ERKS6_ = comdat any

$_ZNSt16allocator_traitsISaISt6vectorIP15MatchExpressionSaIS2_EEEE8allocateERS5_m = comdat any

$_ZNSt15__new_allocatorISt6vectorIP15MatchExpressionSaIS2_EEE8allocateEmPKv = comdat any

$_ZSt12__relocate_aIPSt6vectorIP15MatchExpressionSaIS2_EES5_SaIS4_EET0_T_S8_S7_RT1_ = comdat any

$_ZSt14__relocate_a_1IPSt6vectorIP15MatchExpressionSaIS2_EES5_SaIS4_EET0_T_S8_S7_RT1_ = comdat any

$_ZSt12__niter_baseIPSt6vectorIP15MatchExpressionSaIS2_EEET_S6_ = comdat any

$_ZSt19__relocate_object_aISt6vectorIP15MatchExpressionSaIS2_EES4_SaIS4_EEvPT_PT0_RT1_ = comdat any

$_ZNSt16allocator_traitsISaISt6vectorIP15MatchExpressionSaIS2_EEEE9constructIS4_JS4_EEEvRS5_PT_DpOT0_ = comdat any

$_ZNSt15__new_allocatorISt6vectorIP15MatchExpressionSaIS2_EEE9constructIS4_JS4_EEEvPT_DpOT0_ = comdat any

$_ZNSt6vectorIP15MatchExpressionSaIS1_EEC2EOS3_ = comdat any

$_ZNSt12_Vector_baseIP15MatchExpressionSaIS1_EEC2EOS3_ = comdat any

$_ZNSt12_Vector_baseIP15MatchExpressionSaIS1_EE12_Vector_implC2EOS4_ = comdat any

$_ZNSt12_Vector_baseIP15MatchExpressionSaIS1_EE17_Vector_impl_dataC2EOS4_ = comdat any

$_ZNSt15__new_allocatorISt6vectorIP15MatchExpressionSaIS2_EEE7destroyIS4_EEvPT_ = comdat any

$_ZNKSt6vectorIP15MatchExpressionSaIS1_EE8capacityEv = comdat any

$_ZNSt6vectorIP15MatchExpressionSaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_ = comdat any

$_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPP15MatchExpressionSt6vectorIS3_SaIS3_EEEES3_EvT_S9_RSaIT0_E = comdat any

$_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKP15MatchExpressionSt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_ = comdat any

$_ZSt4copyIPP15MatchExpressionS2_ET0_T_S4_S3_ = comdat any

$_ZSt22__uninitialized_copy_aIPP15MatchExpressionS2_S1_ET0_T_S4_S3_RSaIT1_E = comdat any

$_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPP15MatchExpressionSt6vectorIS3_SaIS3_EEEEEvT_S9_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPP15MatchExpressionSt6vectorIS5_SaIS5_EEEEEEvT_SB_ = comdat any

$_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKP15MatchExpressionSt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET1_T0_SD_SC_ = comdat any

$_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPP15MatchExpressionSt6vectorIS3_SaIS3_EEEES4_ET_S9_T0_ = comdat any

$_ZSt12__niter_baseIPP15MatchExpressionSt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS6_T0_EE = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPP15MatchExpressionSt6vectorIS2_SaIS2_EEEplEl = comdat any

$_ZSt13__copy_move_aILb0EPP15MatchExpressionS2_ET1_T0_S4_S3_ = comdat any

$_ZSt12__miter_baseIPP15MatchExpressionET_S3_ = comdat any

$_ZSt14__copy_move_a1ILb0EPP15MatchExpressionS2_ET1_T0_S4_S3_ = comdat any

$_ZSt14__copy_move_a2ILb0EPP15MatchExpressionS2_ET1_T0_S4_S3_ = comdat any

$_ZSt18uninitialized_copyIPP15MatchExpressionS2_ET0_T_S4_S3_ = comdat any

$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPP15MatchExpressionS4_EET0_T_S6_S5_ = comdat any

$_ZNKSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EE8capacityEv = comdat any

$_ZNSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_ = comdat any

$_ZNKSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EE5beginEv = comdat any

$_ZNKSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EE3endEv = comdat any

$_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPSt6vectorIP15MatchExpressionSaIS4_EES2_IS6_SaIS6_EEEES6_EvT_SB_RSaIT0_E = comdat any

$_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIP15MatchExpressionSaIS4_EES2_IS6_SaIS6_EEEENS1_IPS6_SA_EEET0_T_SF_SE_ = comdat any

$_ZSt4copyIPSt6vectorIP15MatchExpressionSaIS2_EES5_ET0_T_S7_S6_ = comdat any

$_ZSt22__uninitialized_copy_aIPSt6vectorIP15MatchExpressionSaIS2_EES5_S4_ET0_T_S7_S6_RSaIT1_E = comdat any

$_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIP15MatchExpressionSaIS4_EES2_IS6_SaIS6_EEEEPS6_S6_ET0_T_SE_SD_RSaIT1_E = comdat any

$_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIP15MatchExpressionSaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_ = comdat any

$_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIP15MatchExpressionSaIS6_EES4_IS8_SaIS8_EEEEPS8_EET0_T_SG_SF_ = comdat any

$_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIP15MatchExpressionSaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_ = comdat any

$_ZN9__gnu_cxxneIPKSt6vectorIP15MatchExpressionSaIS3_EES1_IS5_SaIS5_EEEEbRKNS_17__normal_iteratorIT_T0_EESF_ = comdat any

$_ZSt10_ConstructISt6vectorIP15MatchExpressionSaIS2_EEJRKS4_EEvPT_DpOT0_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPKSt6vectorIP15MatchExpressionSaIS3_EES1_IS5_SaIS5_EEEdeEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPKSt6vectorIP15MatchExpressionSaIS3_EES1_IS5_SaIS5_EEEppEv = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPKSt6vectorIP15MatchExpressionSaIS3_EES1_IS5_SaIS5_EEE4baseEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPKSt6vectorIP15MatchExpressionSaIS3_EES1_IS5_SaIS5_EEEC2ERKS7_ = comdat any

$_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPSt6vectorIP15MatchExpressionSaIS4_EES2_IS6_SaIS6_EEEEEvT_SB_ = comdat any

$_ZNSt12_Destroy_auxILb0EE9__destroyIN9__gnu_cxx17__normal_iteratorIPSt6vectorIP15MatchExpressionSaIS6_EES4_IS8_SaIS8_EEEEEEvT_SD_ = comdat any

$_ZN9__gnu_cxxneIPSt6vectorIP15MatchExpressionSaIS3_EES1_IS5_SaIS5_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorIP15MatchExpressionSaIS3_EES1_IS5_SaIS5_EEEdeEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPSt6vectorIP15MatchExpressionSaIS3_EES1_IS5_SaIS5_EEEppEv = comdat any

$_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKSt6vectorIP15MatchExpressionSaIS4_EES2_IS6_SaIS6_EEEENS1_IPS6_SA_EEET1_T0_SF_SE_ = comdat any

$_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIP15MatchExpressionSaIS4_EES2_IS6_SaIS6_EEEEET_SC_ = comdat any

$_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPSt6vectorIP15MatchExpressionSaIS4_EES2_IS6_SaIS6_EEEES7_ET_SB_T0_ = comdat any

$_ZSt14__copy_move_a1ILb0EPKSt6vectorIP15MatchExpressionSaIS2_EEPS4_ET1_T0_S9_S8_ = comdat any

$_ZSt12__niter_baseIPKSt6vectorIP15MatchExpressionSaIS2_EES0_IS4_SaIS4_EEET_N9__gnu_cxx17__normal_iteratorIS9_T0_EE = comdat any

$_ZSt12__niter_baseIPSt6vectorIP15MatchExpressionSaIS2_EES0_IS4_SaIS4_EEET_N9__gnu_cxx17__normal_iteratorIS8_T0_EE = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorIP15MatchExpressionSaIS3_EES1_IS5_SaIS5_EEEplEl = comdat any

$_ZSt14__copy_move_a2ILb0EPKSt6vectorIP15MatchExpressionSaIS2_EEPS4_ET1_T0_S9_S8_ = comdat any

$_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKSt6vectorIP15MatchExpressionSaIS5_EEPS7_EET0_T_SC_SB_ = comdat any

$_ZSt13__copy_move_aILb0EPSt6vectorIP15MatchExpressionSaIS2_EES5_ET1_T0_S7_S6_ = comdat any

$_ZSt12__miter_baseIPSt6vectorIP15MatchExpressionSaIS2_EEET_S6_ = comdat any

$_ZSt12__niter_wrapIPSt6vectorIP15MatchExpressionSaIS2_EEET_RKS6_S6_ = comdat any

$_ZSt14__copy_move_a1ILb0EPSt6vectorIP15MatchExpressionSaIS2_EES5_ET1_T0_S7_S6_ = comdat any

$_ZSt14__copy_move_a2ILb0EPSt6vectorIP15MatchExpressionSaIS2_EES5_ET1_T0_S7_S6_ = comdat any

$_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPSt6vectorIP15MatchExpressionSaIS5_EES8_EET0_T_SA_S9_ = comdat any

$_ZSt18uninitialized_copyIPSt6vectorIP15MatchExpressionSaIS2_EES5_ET0_T_S7_S6_ = comdat any

$_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPSt6vectorIP15MatchExpressionSaIS4_EES7_EET0_T_S9_S8_ = comdat any

$_ZSt16__do_uninit_copyIPSt6vectorIP15MatchExpressionSaIS2_EES5_ET0_T_S7_S6_ = comdat any

$_ZSt10_ConstructISt6vectorIP15MatchExpressionSaIS2_EEJRS4_EEvPT_DpOT0_ = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"class \00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c" {\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"{...}\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"...\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c" = \00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"struct \00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"<NULL>\0A\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"owner\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"className\00", align 1
@_ZTI7cObject = external constant ptr
@_ZTI6cArray = external constant ptr
@_ZTI7cModule = external constant ptr
@_ZTI5cGate = external constant ptr
@_ZTV22MatchableObjectAdapter = external unnamed_addr constant { [6 x ptr] }, align 8
@.str.18 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_objectprinter.cc, ptr null }]

@_ZN13ObjectPrinterC1EPKci = dso_local unnamed_addr alias void (ptr, ptr, i32), ptr @_ZN13ObjectPrinterC2EPKci
@_ZN13ObjectPrinterC1ERKSt6vectorIP15MatchExpressionSaIS2_EERKS0_IS4_SaIS4_EEi = dso_local unnamed_addr alias void (ptr, ptr, ptr, i32), ptr @_ZN13ObjectPrinterC2ERKSt6vectorIP15MatchExpressionSaIS2_EERKS0_IS4_SaIS4_EEi
@_ZN13ObjectPrinterD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN13ObjectPrinterD2Ev

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit) #15
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #16
  ret void
}

; Function Attrs: optsize
declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13ObjectPrinterC2EPKci(ptr noundef nonnull align 8 dereferenceable(1080) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  %4 = alloca %"class.std::vector", align 8
  %5 = alloca %"class.std::vector.0", align 8
  %6 = alloca %class.StringTokenizer, align 8
  %7 = alloca %"class.std::vector.8", align 8
  %8 = alloca %class.StringTokenizer, align 8
  %9 = alloca %"class.std::vector.8", align 8
  %10 = alloca %"class.std::vector", align 8
  %11 = alloca ptr, align 8
  %12 = alloca %"class.std::vector", align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = getelementptr inbounds %class.ObjectPrinter, ptr %0, i64 0, i32 2
  tail call void @_ZNSt6vectorIP15MatchExpressionSaIS1_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %15) #17
  %16 = getelementptr inbounds %class.ObjectPrinter, ptr %0, i64 0, i32 3
  tail call void @_ZNSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %16) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
  call void @_ZNSt6vectorIP15MatchExpressionSaIS1_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  call void @_ZNSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #17
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #16
  invoke void @_ZN15StringTokenizerC1EPKcS1_(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef %1, ptr noundef nonnull @.str) #15
          to label %17 unwind label %24

17:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #16
  invoke void @_ZN15StringTokenizer8asVectorB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.8") align 8 %7, ptr noundef nonnull align 8 dereferenceable(48) %6) #15
          to label %18 unwind label %26

18:                                               ; preds = %17
  %19 = call noundef i64 @_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %7) #17
  %20 = trunc i64 %19 to i32
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %94, %18
  %23 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIP15MatchExpressionSaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
          to label %106 unwind label %109

24:                                               ; preds = %3
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %115

26:                                               ; preds = %17
  %27 = landingpad { ptr, i32 }
          cleanup
  br label %113

28:                                               ; preds = %18, %94
  %29 = phi i64 [ %95, %94 ], [ 0, %18 ]
  %30 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %29) #17
  %31 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %30) #17
  %32 = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %31, i32 noundef 58) #18
  %33 = icmp eq ptr %32, null
  br i1 %33, label %74, label %34

34:                                               ; preds = %28
  store i8 0, ptr %32, align 1, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #16
  %35 = getelementptr inbounds i8, ptr %32, i64 1
  invoke void @_ZN15StringTokenizerC1EPKcS1_(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull %35, ptr noundef nonnull @.str.1) #15
          to label %36 unwind label %42

36:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #16
  invoke void @_ZN15StringTokenizer8asVectorB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.8") align 8 %9, ptr noundef nonnull align 8 dereferenceable(48) %8) #15
          to label %37 unwind label %44

37:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #16
  call void @_ZNSt6vectorIP15MatchExpressionSaIS1_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %10) #17
  %38 = call noundef i64 @_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #17
  %39 = trunc i64 %38 to i32
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %53, %37
  invoke void @_ZNSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EE9push_backERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %10) #15
          to label %65 unwind label %66

42:                                               ; preds = %34
  %43 = landingpad { ptr, i32 }
          cleanup
  br label %72

44:                                               ; preds = %36
  %45 = landingpad { ptr, i32 }
          cleanup
  br label %70

46:                                               ; preds = %37, %53
  %47 = phi i64 [ %54, %53 ], [ 0, %37 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #16
  %48 = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #19
          to label %49 unwind label %59

49:                                               ; preds = %46
  %50 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef %47) #17
  %51 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %50) #17
  invoke void @_ZN15MatchExpressionC1EPKcbbb(ptr noundef nonnull align 8 dereferenceable(32) %48, ptr noundef %51, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #15
          to label %52 unwind label %61

52:                                               ; preds = %49
  store ptr %48, ptr %11, align 8, !tbaa !51
  invoke void @_ZNSt6vectorIP15MatchExpressionSaIS1_EE9push_backEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(8) %11) #15
          to label %53 unwind label %59

53:                                               ; preds = %52
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #16
  %54 = add nuw nsw i64 %47, 1
  %55 = call noundef i64 @_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #17
  %56 = shl i64 %55, 32
  %57 = ashr exact i64 %56, 32
  %58 = icmp slt i64 %54, %57
  br i1 %58, label %46, label %41, !llvm.loop !53

59:                                               ; preds = %52, %46
  %60 = landingpad { ptr, i32 }
          cleanup
  br label %63

61:                                               ; preds = %49
  %62 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %48) #20
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi { ptr, i32 } [ %60, %59 ], [ %62, %61 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #16
  br label %68

65:                                               ; preds = %41
  call void @_ZNSt6vectorIP15MatchExpressionSaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %10) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #16
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #16
  call void @_ZN15StringTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %8) #17
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #16
  br label %90

66:                                               ; preds = %41
  %67 = landingpad { ptr, i32 }
          cleanup
  br label %68

68:                                               ; preds = %66, %63
  %69 = phi { ptr, i32 } [ %64, %63 ], [ %67, %66 ]
  call void @_ZNSt6vectorIP15MatchExpressionSaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %10) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #16
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #17
  br label %70

70:                                               ; preds = %68, %44
  %71 = phi { ptr, i32 } [ %69, %68 ], [ %45, %44 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #16
  call void @_ZN15StringTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %8) #17
  br label %72

72:                                               ; preds = %70, %42
  %73 = phi { ptr, i32 } [ %71, %70 ], [ %43, %42 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #16
  br label %111

74:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #16
  call void @_ZNSt6vectorIP15MatchExpressionSaIS1_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %12) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #16
  %75 = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #19
          to label %76 unwind label %80

76:                                               ; preds = %74
  invoke void @_ZN15MatchExpressionC1EPKcbbb(ptr noundef nonnull align 8 dereferenceable(32) %75, ptr noundef nonnull @.str.2, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #15
          to label %77 unwind label %82

77:                                               ; preds = %76
  store ptr %75, ptr %13, align 8, !tbaa !51
  invoke void @_ZNSt6vectorIP15MatchExpressionSaIS1_EE9push_backEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(8) %13) #15
          to label %78 unwind label %80

78:                                               ; preds = %77
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #16
  invoke void @_ZNSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EE9push_backERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %12) #15
          to label %79 unwind label %86

79:                                               ; preds = %78
  call void @_ZNSt6vectorIP15MatchExpressionSaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %12) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #16
  br label %90

80:                                               ; preds = %77, %74
  %81 = landingpad { ptr, i32 }
          cleanup
  br label %84

82:                                               ; preds = %76
  %83 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %75) #20
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi { ptr, i32 } [ %81, %80 ], [ %83, %82 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #16
  br label %88

86:                                               ; preds = %78
  %87 = landingpad { ptr, i32 }
          cleanup
  br label %88

88:                                               ; preds = %86, %84
  %89 = phi { ptr, i32 } [ %87, %86 ], [ %85, %84 ]
  call void @_ZNSt6vectorIP15MatchExpressionSaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %12) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #16
  br label %111

90:                                               ; preds = %79, %65
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #16
  %91 = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #19
          to label %92 unwind label %100

92:                                               ; preds = %90
  invoke void @_ZN15MatchExpressionC1EPKcbbb(ptr noundef nonnull align 8 dereferenceable(32) %91, ptr noundef %31, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #15
          to label %93 unwind label %102

93:                                               ; preds = %92
  store ptr %91, ptr %14, align 8, !tbaa !51
  invoke void @_ZNSt6vectorIP15MatchExpressionSaIS1_EE9push_backEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(8) %14) #15
          to label %94 unwind label %100

94:                                               ; preds = %93
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #16
  %95 = add nuw nsw i64 %29, 1
  %96 = call noundef i64 @_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %7) #17
  %97 = shl i64 %96, 32
  %98 = ashr exact i64 %97, 32
  %99 = icmp slt i64 %95, %98
  br i1 %99, label %28, label %22, !llvm.loop !55

100:                                              ; preds = %93, %90
  %101 = landingpad { ptr, i32 }
          cleanup
  br label %104

102:                                              ; preds = %92
  %103 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %91) #20
  br label %104

104:                                              ; preds = %102, %100
  %105 = phi { ptr, i32 } [ %101, %100 ], [ %103, %102 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #16
  br label %111

106:                                              ; preds = %22
  %107 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %5) #15
          to label %108 unwind label %109

108:                                              ; preds = %106
  store i32 %2, ptr %0, align 8, !tbaa !56
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #16
  call void @_ZN15StringTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %6) #17
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #16
  call void @_ZNSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  call void @_ZNSt6vectorIP15MatchExpressionSaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  ret void

109:                                              ; preds = %106, %22
  %110 = landingpad { ptr, i32 }
          cleanup
  br label %111

111:                                              ; preds = %72, %88, %104, %109
  %112 = phi { ptr, i32 } [ %110, %109 ], [ %73, %72 ], [ %105, %104 ], [ %89, %88 ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #17
  br label %113

113:                                              ; preds = %111, %26
  %114 = phi { ptr, i32 } [ %112, %111 ], [ %27, %26 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #16
  call void @_ZN15StringTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %6) #17
  br label %115

115:                                              ; preds = %113, %24
  %116 = phi { ptr, i32 } [ %114, %113 ], [ %25, %24 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #16
  call void @_ZNSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  call void @_ZNSt6vectorIP15MatchExpressionSaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  call void @_ZNSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %16) #17
  call void @_ZNSt6vectorIP15MatchExpressionSaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %15) #17
  resume { ptr, i32 } %116
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIP15MatchExpressionSaIS1_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !47 {
  tail call void @_ZNSt12_Vector_baseIP15MatchExpressionSaIS1_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !47 {
  tail call void @_ZNSt12_Vector_baseISt6vectorIP15MatchExpressionSaIS2_EESaIS4_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: optsize
declare void @_ZN15StringTokenizerC1EPKcS1_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: optsize
declare void @_ZN15StringTokenizer8asVectorB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::vector.8") align 8, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !67 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !68
  %4 = load ptr, ptr %0, align 8, !tbaa !70
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 5
  ret i64 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !71 {
  %3 = load ptr, ptr %0, align 8, !tbaa !70
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIP15MatchExpressionSaIS1_EE9push_backEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 !prof !47 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIP15MatchExpressionSaIS1_EE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  ret void
}

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @_ZN15MatchExpressionC1EPKcbbb(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EE9push_backERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #4 comdat align 2 !prof !47 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<MatchExpression *>, std::allocator<std::vector<MatchExpression *>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !72
  %5 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<MatchExpression *>, std::allocator<std::vector<MatchExpression *>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !73
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  tail call void @_ZNSt16allocator_traitsISaISt6vectorIP15MatchExpressionSaIS2_EEEE9constructIS4_JRKS4_EEEvRS5_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  %9 = load ptr, ptr %3, align 8, !tbaa !72
  %10 = getelementptr inbounds %"class.std::vector", ptr %9, i64 1
  store ptr %10, ptr %3, align 8, !tbaa !72
  br label %13

11:                                               ; preds = %2
  %12 = tail call ptr @_ZNSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  tail call void @_ZNSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %12, ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  br label %13

13:                                               ; preds = %11, %8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIP15MatchExpressionSaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  %2 = load ptr, ptr %0, align 8, !tbaa !74
  %3 = getelementptr inbounds %"struct.std::_Vector_base<MatchExpression *, std::allocator<MatchExpression *>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !75
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIP15MatchExpressionSaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  invoke void @_ZSt8_DestroyIPP15MatchExpressionS1_EvT_S3_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #15
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseIP15MatchExpressionSaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #21
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !76 {
  %2 = load ptr, ptr %0, align 8, !tbaa !70
  %3 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !68
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  invoke void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #15
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #21
  unreachable
}

; Function Attrs: nounwind optsize
declare void @_ZN15StringTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIP15MatchExpressionSaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #4 comdat align 2 !prof !47 {
  %3 = icmp eq ptr %1, %0
  br i1 %3, label %53, label %4

4:                                                ; preds = %2
  %5 = tail call noundef i64 @_ZNKSt6vectorIP15MatchExpressionSaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %6 = tail call noundef i64 @_ZNKSt6vectorIP15MatchExpressionSaIS1_EE8capacityEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  %7 = icmp ugt i64 %5, %6
  br i1 %7, label %8, label %24

8:                                                ; preds = %4
  %9 = tail call ptr @_ZNKSt6vectorIP15MatchExpressionSaIS1_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %10 = tail call ptr @_ZNKSt6vectorIP15MatchExpressionSaIS1_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %11 = tail call noundef ptr @_ZNSt6vectorIP15MatchExpressionSaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %5, ptr %9, ptr %10) #15
  %12 = load ptr, ptr %0, align 8, !tbaa !74
  %13 = getelementptr inbounds %"struct.std::_Vector_base<MatchExpression *, std::allocator<MatchExpression *>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !75
  %15 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIP15MatchExpressionSaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  tail call void @_ZSt8_DestroyIPP15MatchExpressionS1_EvT_S3_RSaIT0_E(ptr noundef %12, ptr noundef %14, ptr noundef nonnull align 1 dereferenceable(1) %15) #15
  %16 = load ptr, ptr %0, align 8, !tbaa !74
  %17 = getelementptr inbounds %"struct.std::_Vector_base<MatchExpression *, std::allocator<MatchExpression *>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !77
  %19 = ptrtoint ptr %18 to i64
  %20 = ptrtoint ptr %16 to i64
  %21 = sub i64 %19, %20
  %22 = ashr exact i64 %21, 3
  tail call void @_ZNSt12_Vector_baseIP15MatchExpressionSaIS1_EE13_M_deallocateEPS1_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %16, i64 noundef %22) #15
  store ptr %11, ptr %0, align 8, !tbaa !74
  %23 = getelementptr inbounds ptr, ptr %11, i64 %5
  store ptr %23, ptr %17, align 8, !tbaa !77
  br label %49

24:                                               ; preds = %4
  %25 = tail call noundef i64 @_ZNKSt6vectorIP15MatchExpressionSaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  %26 = icmp ult i64 %25, %5
  br i1 %26, label %34, label %27

27:                                               ; preds = %24
  %28 = tail call ptr @_ZNKSt6vectorIP15MatchExpressionSaIS1_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %29 = tail call ptr @_ZNKSt6vectorIP15MatchExpressionSaIS1_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %30 = tail call ptr @_ZNSt6vectorIP15MatchExpressionSaIS1_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  %31 = tail call ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKP15MatchExpressionSt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_(ptr %28, ptr %29, ptr %30) #15
  %32 = tail call ptr @_ZNSt6vectorIP15MatchExpressionSaIS1_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  %33 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIP15MatchExpressionSaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  tail call void @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPP15MatchExpressionSt6vectorIS3_SaIS3_EEEES3_EvT_S9_RSaIT0_E(ptr %31, ptr %32, ptr noundef nonnull align 1 dereferenceable(1) %33) #15
  br label %49

34:                                               ; preds = %24
  %35 = load ptr, ptr %1, align 8, !tbaa !74
  %36 = tail call noundef i64 @_ZNKSt6vectorIP15MatchExpressionSaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  %37 = getelementptr inbounds ptr, ptr %35, i64 %36
  %38 = load ptr, ptr %0, align 8, !tbaa !74
  %39 = tail call noundef ptr @_ZSt4copyIPP15MatchExpressionS2_ET0_T_S4_S3_(ptr noundef %35, ptr noundef %37, ptr noundef %38) #15
  %40 = load ptr, ptr %1, align 8, !tbaa !74
  %41 = tail call noundef i64 @_ZNKSt6vectorIP15MatchExpressionSaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  %42 = getelementptr inbounds ptr, ptr %40, i64 %41
  %43 = getelementptr inbounds %"struct.std::_Vector_base<MatchExpression *, std::allocator<MatchExpression *>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !75
  %45 = getelementptr inbounds %"struct.std::_Vector_base<MatchExpression *, std::allocator<MatchExpression *>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !75
  %47 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIP15MatchExpressionSaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  %48 = tail call noundef ptr @_ZSt22__uninitialized_copy_aIPP15MatchExpressionS2_S1_ET0_T_S4_S3_RSaIT1_E(ptr noundef %42, ptr noundef %44, ptr noundef %46, ptr noundef nonnull align 1 dereferenceable(1) %47) #15
  br label %49

49:                                               ; preds = %27, %34, %8
  %50 = load ptr, ptr %0, align 8, !tbaa !74
  %51 = getelementptr inbounds ptr, ptr %50, i64 %5
  %52 = getelementptr inbounds %"struct.std::_Vector_base<MatchExpression *, std::allocator<MatchExpression *>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %51, ptr %52, align 8, !tbaa !75
  br label %53

53:                                               ; preds = %49, %2
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #4 comdat align 2 !prof !47 {
  %3 = icmp eq ptr %1, %0
  br i1 %3, label %53, label %4

4:                                                ; preds = %2
  %5 = tail call noundef i64 @_ZNKSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %6 = tail call noundef i64 @_ZNKSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EE8capacityEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  %7 = icmp ugt i64 %5, %6
  br i1 %7, label %8, label %24

8:                                                ; preds = %4
  %9 = tail call ptr @_ZNKSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %10 = tail call ptr @_ZNKSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %11 = tail call noundef ptr @_ZNSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %5, ptr %9, ptr %10) #15
  %12 = load ptr, ptr %0, align 8, !tbaa !78
  %13 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<MatchExpression *>, std::allocator<std::vector<MatchExpression *>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !72
  %15 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseISt6vectorIP15MatchExpressionSaIS2_EESaIS4_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  tail call void @_ZSt8_DestroyIPSt6vectorIP15MatchExpressionSaIS2_EES4_EvT_S6_RSaIT0_E(ptr noundef %12, ptr noundef %14, ptr noundef nonnull align 1 dereferenceable(1) %15) #15
  %16 = load ptr, ptr %0, align 8, !tbaa !78
  %17 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<MatchExpression *>, std::allocator<std::vector<MatchExpression *>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !73
  %19 = ptrtoint ptr %18 to i64
  %20 = ptrtoint ptr %16 to i64
  %21 = sub i64 %19, %20
  %22 = sdiv exact i64 %21, 24
  tail call void @_ZNSt12_Vector_baseISt6vectorIP15MatchExpressionSaIS2_EESaIS4_EE13_M_deallocateEPS4_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %16, i64 noundef %22) #15
  store ptr %11, ptr %0, align 8, !tbaa !78
  %23 = getelementptr inbounds %"class.std::vector", ptr %11, i64 %5
  store ptr %23, ptr %17, align 8, !tbaa !73
  br label %49

24:                                               ; preds = %4
  %25 = tail call noundef i64 @_ZNKSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  %26 = icmp ult i64 %25, %5
  br i1 %26, label %34, label %27

27:                                               ; preds = %24
  %28 = tail call ptr @_ZNKSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %29 = tail call ptr @_ZNKSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %30 = tail call ptr @_ZNSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  %31 = tail call ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIP15MatchExpressionSaIS4_EES2_IS6_SaIS6_EEEENS1_IPS6_SA_EEET0_T_SF_SE_(ptr %28, ptr %29, ptr %30) #15
  %32 = tail call ptr @_ZNSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  %33 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseISt6vectorIP15MatchExpressionSaIS2_EESaIS4_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  tail call void @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPSt6vectorIP15MatchExpressionSaIS4_EES2_IS6_SaIS6_EEEES6_EvT_SB_RSaIT0_E(ptr %31, ptr %32, ptr noundef nonnull align 1 dereferenceable(1) %33) #15
  br label %49

34:                                               ; preds = %24
  %35 = load ptr, ptr %1, align 8, !tbaa !78
  %36 = tail call noundef i64 @_ZNKSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  %37 = getelementptr inbounds %"class.std::vector", ptr %35, i64 %36
  %38 = load ptr, ptr %0, align 8, !tbaa !78
  %39 = tail call noundef ptr @_ZSt4copyIPSt6vectorIP15MatchExpressionSaIS2_EES5_ET0_T_S7_S6_(ptr noundef %35, ptr noundef %37, ptr noundef %38) #15
  %40 = load ptr, ptr %1, align 8, !tbaa !78
  %41 = tail call noundef i64 @_ZNKSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  %42 = getelementptr inbounds %"class.std::vector", ptr %40, i64 %41
  %43 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<MatchExpression *>, std::allocator<std::vector<MatchExpression *>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !72
  %45 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<MatchExpression *>, std::allocator<std::vector<MatchExpression *>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !72
  %47 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseISt6vectorIP15MatchExpressionSaIS2_EESaIS4_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  %48 = tail call noundef ptr @_ZSt22__uninitialized_copy_aIPSt6vectorIP15MatchExpressionSaIS2_EES5_S4_ET0_T_S7_S6_RSaIT1_E(ptr noundef %42, ptr noundef %44, ptr noundef %46, ptr noundef nonnull align 1 dereferenceable(1) %47) #15
  br label %49

49:                                               ; preds = %27, %34, %8
  %50 = load ptr, ptr %0, align 8, !tbaa !78
  %51 = getelementptr inbounds %"class.std::vector", ptr %50, i64 %5
  %52 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<MatchExpression *>, std::allocator<std::vector<MatchExpression *>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %51, ptr %52, align 8, !tbaa !72
  br label %53

53:                                               ; preds = %49, %2
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  %2 = load ptr, ptr %0, align 8, !tbaa !78
  %3 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<MatchExpression *>, std::allocator<std::vector<MatchExpression *>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !72
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseISt6vectorIP15MatchExpressionSaIS2_EESaIS4_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  invoke void @_ZSt8_DestroyIPSt6vectorIP15MatchExpressionSaIS2_EES4_EvT_S6_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #15
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseISt6vectorIP15MatchExpressionSaIS2_EESaIS4_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #21
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13ObjectPrinterC2ERKSt6vectorIP15MatchExpressionSaIS2_EERKS0_IS4_SaIS4_EEi(ptr noundef nonnull align 8 dereferenceable(1080) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  %5 = getelementptr inbounds %class.ObjectPrinter, ptr %0, i64 0, i32 2
  tail call void @_ZNSt6vectorIP15MatchExpressionSaIS1_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #17
  %6 = getelementptr inbounds %class.ObjectPrinter, ptr %0, i64 0, i32 3
  tail call void @_ZNSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #17
  %7 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIP15MatchExpressionSaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %1) #15
          to label %8 unwind label %11

8:                                                ; preds = %4
  %9 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %2) #15
          to label %10 unwind label %11

10:                                               ; preds = %8
  store i32 %3, ptr %0, align 8, !tbaa !56
  ret void

11:                                               ; preds = %8, %4
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #17
  tail call void @_ZNSt6vectorIP15MatchExpressionSaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #17
  resume { ptr, i32 } %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN13ObjectPrinterD2Ev(ptr noundef nonnull align 8 dereferenceable(1080) %0) unnamed_addr #5 align 2 !prof !47 {
  %2 = getelementptr inbounds %class.ObjectPrinter, ptr %0, i64 0, i32 2
  %3 = tail call noundef i64 @_ZNKSt6vectorIP15MatchExpressionSaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #17
  %4 = trunc i64 %3 to i32
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = getelementptr inbounds %class.ObjectPrinter, ptr %0, i64 0, i32 3
  br label %10

8:                                                ; preds = %21, %1
  %9 = getelementptr inbounds %class.ObjectPrinter, ptr %0, i64 0, i32 3
  tail call void @_ZNSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #17
  tail call void @_ZNSt6vectorIP15MatchExpressionSaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #17
  ret void

10:                                               ; preds = %6, %21
  %11 = phi i64 [ 0, %6 ], [ %22, %21 ]
  %12 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIP15MatchExpressionSaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %11) #17
  %13 = load ptr, ptr %12, align 8, !tbaa !51
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call void @_ZN15MatchExpressionD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #17
  tail call void @_ZdlPv(ptr noundef nonnull %13) #20
  br label %16

16:                                               ; preds = %15, %10
  %17 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %11) #17
  %18 = tail call noundef i64 @_ZNKSt6vectorIP15MatchExpressionSaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %17) #17
  %19 = trunc i64 %18 to i32
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %33, %16
  %22 = add nuw nsw i64 %11, 1
  %23 = tail call noundef i64 @_ZNKSt6vectorIP15MatchExpressionSaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #17
  %24 = shl i64 %23, 32
  %25 = ashr exact i64 %24, 32
  %26 = icmp slt i64 %22, %25
  br i1 %26, label %10, label %8, !llvm.loop !79

27:                                               ; preds = %16, %33
  %28 = phi i64 [ %34, %33 ], [ 0, %16 ]
  %29 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIP15MatchExpressionSaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %17, i64 noundef %28) #17
  %30 = load ptr, ptr %29, align 8, !tbaa !51
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  tail call void @_ZN15MatchExpressionD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %30) #17
  tail call void @_ZdlPv(ptr noundef nonnull %30) #20
  br label %33

33:                                               ; preds = %27, %32
  %34 = add nuw nsw i64 %28, 1
  %35 = tail call noundef i64 @_ZNKSt6vectorIP15MatchExpressionSaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %17) #17
  %36 = shl i64 %35, 32
  %37 = ashr exact i64 %36, 32
  %38 = icmp slt i64 %34, %37
  br i1 %38, label %27, label %21, !llvm.loop !80
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIP15MatchExpressionSaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !47 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<MatchExpression *, std::allocator<MatchExpression *>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  %4 = load ptr, ptr %0, align 8, !tbaa !74
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  ret i64 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIP15MatchExpressionSaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !47 {
  %3 = load ptr, ptr %0, align 8, !tbaa !74
  %4 = getelementptr inbounds ptr, ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN15MatchExpressionD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 {
  %2 = getelementptr inbounds %class.MatchExpression, ptr %0, i64 0, i32 3
  tail call void @_ZNSt6vectorIN15MatchExpression4ElemESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !47 {
  %3 = load ptr, ptr %0, align 8, !tbaa !78
  %4 = getelementptr inbounds %"class.std::vector", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13ObjectPrinter19printObjectToStreamERSoP7cObject(ptr noundef nonnull align 8 dereferenceable(1080) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #4 align 2 !prof !47 {
  %4 = tail call noundef ptr @_ZN16cClassDescriptor16getDescriptorForEP7cObject(ptr noundef %2) #15
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.3) #15
  %6 = load ptr, ptr %4, align 8, !tbaa !81
  %7 = getelementptr inbounds ptr, ptr %6, i64 6
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(20) %4) #15
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %9) #15
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull @.str.4) #15
  tail call void @_ZN13ObjectPrinter19printObjectToStreamERSoPvP16cClassDescriptori(ptr noundef nonnull align 8 dereferenceable(1080) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef nonnull %4, i32 noundef 1) #15
  %12 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.5) #15
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN16cClassDescriptor16getDescriptorForEP7cObject(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13ObjectPrinter19printObjectToStreamERSoPvP16cClassDescriptori(ptr noundef nonnull align 8 dereferenceable(1080) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = icmp eq ptr %3, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %3, align 8, !tbaa !81
  %11 = getelementptr inbounds ptr, ptr %10, i64 27
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef i32 %12(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef %2) #15
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %154

15:                                               ; preds = %9
  %16 = getelementptr inbounds %class.ObjectPrinter, ptr %0, i64 0, i32 1
  %17 = add nsw i32 %4, 1
  br label %22

18:                                               ; preds = %5
  tail call void @_ZN13ObjectPrinter11printIndentERSoi(ptr noundef nonnull align 8 dereferenceable(1080) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %4) #15
  %19 = icmp eq i32 %4, 0
  %20 = select i1 %19, ptr @.str.6, ptr @.str.7
  %21 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %20) #15
  br label %154

22:                                               ; preds = %15, %44
  %23 = phi i32 [ 0, %15 ], [ %45, %44 ]
  %24 = call noundef zeroext i1 @_ZNK16cClassDescriptor15getFieldIsArrayEPvi(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef %2, i32 noundef %23) #15
  %25 = call noundef zeroext i1 @_ZNK16cClassDescriptor17getFieldIsPointerEPvi(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef %2, i32 noundef %23) #15
  %26 = call noundef zeroext i1 @_ZNK16cClassDescriptor18getFieldIsCompoundEPvi(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef %2, i32 noundef %23) #15
  %27 = call noundef zeroext i1 @_ZNK16cClassDescriptor17getFieldIsCObjectEPvi(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef %2, i32 noundef %23) #15
  %28 = load ptr, ptr %3, align 8, !tbaa !81
  %29 = getelementptr inbounds ptr, ptr %28, i64 31
  %30 = load ptr, ptr %29, align 8
  %31 = call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef %2, i32 noundef %23) #15
  %32 = load ptr, ptr %3, align 8, !tbaa !81
  %33 = getelementptr inbounds ptr, ptr %32, i64 28
  %34 = load ptr, ptr %33, align 8
  %35 = call noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef %2, i32 noundef %23) #15
  br i1 %24, label %36, label %42

36:                                               ; preds = %22
  %37 = load ptr, ptr %3, align 8, !tbaa !81
  %38 = getelementptr inbounds ptr, ptr %37, i64 33
  %39 = load ptr, ptr %38, align 8
  %40 = call noundef i32 %39(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef %2, i32 noundef %23) #15
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %22, %36
  %43 = phi i32 [ %40, %36 ], [ 1, %22 ]
  br label %51

44:                                               ; preds = %149, %36
  %45 = add nuw nsw i32 %23, 1
  %46 = load ptr, ptr %3, align 8, !tbaa !81
  %47 = getelementptr inbounds ptr, ptr %46, i64 27
  %48 = load ptr, ptr %47, align 8
  %49 = call noundef i32 %48(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef %2) #15
  %50 = icmp slt i32 %45, %49
  br i1 %50, label %22, label %154, !llvm.loop !83

51:                                               ; preds = %42, %149
  %52 = phi i32 [ %150, %149 ], [ 0, %42 ]
  br i1 %26, label %53, label %58

53:                                               ; preds = %51
  %54 = load ptr, ptr %3, align 8, !tbaa !81
  %55 = getelementptr inbounds ptr, ptr %54, i64 37
  %56 = load ptr, ptr %55, align 8
  %57 = call noundef ptr %56(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef %2, i32 noundef %23, i32 noundef %52) #15
  br label %58

58:                                               ; preds = %51, %53
  %59 = phi ptr [ %57, %53 ], [ null, %51 ]
  %60 = call fastcc noundef zeroext i1 @_ZL18defaultRecurseIntoPvP16cClassDescriptoriS_i(ptr noundef %2, ptr noundef nonnull %3, i32 noundef %23, ptr noundef %59, i32 noundef %4) #15
  br i1 %60, label %61, label %149

61:                                               ; preds = %58
  %62 = call noundef zeroext i1 @_ZNK16cClassDescriptor14extendsCObjectEv(ptr noundef nonnull align 8 dereferenceable(88) %3) #15
  br i1 %62, label %63, label %65

63:                                               ; preds = %61
  %64 = call noundef zeroext i1 @_ZN13ObjectPrinter18matchesObjectFieldEP7cObjecti(ptr noundef nonnull align 8 dereferenceable(1080) %0, ptr noundef %2, i32 noundef %23) #15
  br i1 %64, label %65, label %149

65:                                               ; preds = %63, %61
  call void @_ZN13ObjectPrinter11printIndentERSoi(ptr noundef nonnull align 8 dereferenceable(1080) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %4) #15
  %66 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %31) #15
  %67 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef nonnull @.str.8) #15
  br i1 %25, label %68, label %70

68:                                               ; preds = %65
  %69 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.2) #15
  br label %70

70:                                               ; preds = %68, %65
  %71 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %35) #15
  br i1 %24, label %72, label %76

72:                                               ; preds = %70
  %73 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.9) #15
  %74 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %73, i32 noundef %52) #15
  %75 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %74, ptr noundef nonnull @.str.10) #15
  br label %76

76:                                               ; preds = %72, %70
  %77 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.11) #15
  br i1 %26, label %78, label %131

78:                                               ; preds = %76
  %79 = icmp eq ptr %59, null
  br i1 %79, label %129, label %80

80:                                               ; preds = %78
  br i1 %27, label %81, label %84

81:                                               ; preds = %80
  %82 = call noundef ptr @_ZN16cClassDescriptor16getDescriptorForEP7cObject(ptr noundef nonnull %59) #15
  %83 = icmp eq ptr %82, null
  br i1 %83, label %111, label %91

84:                                               ; preds = %80
  %85 = load ptr, ptr %3, align 8, !tbaa !81
  %86 = getelementptr inbounds ptr, ptr %85, i64 36
  %87 = load ptr, ptr %86, align 8
  %88 = call noundef ptr %87(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef %2, i32 noundef %23) #15
  %89 = call noundef ptr @_ZN16cClassDescriptor16getDescriptorForEPKc(ptr noundef %88) #15
  %90 = icmp eq ptr %89, null
  br i1 %90, label %111, label %98

91:                                               ; preds = %81
  %92 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.3) #15
  %93 = load ptr, ptr %59, align 8, !tbaa !81
  %94 = getelementptr inbounds ptr, ptr %93, i64 5
  %95 = load ptr, ptr %94, align 8
  %96 = call noundef ptr %95(ptr noundef nonnull align 8 dereferenceable(8) %59) #15
  %97 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %92, ptr noundef %96) #15
  br label %105

98:                                               ; preds = %84
  %99 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.12) #15
  %100 = load ptr, ptr %3, align 8, !tbaa !81
  %101 = getelementptr inbounds ptr, ptr %100, i64 36
  %102 = load ptr, ptr %101, align 8
  %103 = call noundef ptr %102(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef %2, i32 noundef %23) #15
  %104 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %99, ptr noundef %103) #15
  br label %105

105:                                              ; preds = %98, %91
  %106 = phi ptr [ %104, %98 ], [ %97, %91 ]
  %107 = phi ptr [ %89, %98 ], [ %82, %91 ]
  %108 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %106, ptr noundef nonnull @.str.8) #15
  %109 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.13) #15
  call void @_ZN13ObjectPrinter19printObjectToStreamERSoPvP16cClassDescriptori(ptr noundef nonnull align 8 dereferenceable(1080) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %59, ptr noundef nonnull %107, i32 noundef %17) #15
  call void @_ZN13ObjectPrinter11printIndentERSoi(ptr noundef nonnull align 8 dereferenceable(1080) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %4) #15
  %110 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.5) #15
  br label %149

111:                                              ; preds = %84, %81
  %112 = load ptr, ptr %3, align 8, !tbaa !81
  %113 = getelementptr inbounds ptr, ptr %112, i64 34
  %114 = load ptr, ptr %113, align 8
  %115 = call noundef zeroext i1 %114(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef %2, i32 noundef %23, i32 noundef %52, ptr noundef nonnull %16, i32 noundef 1024) #15
  %116 = call noundef zeroext i1 @_Z15opp_needsquotesPKc(ptr noundef nonnull %16) #15
  br i1 %116, label %117, label %119

117:                                              ; preds = %111
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #16
  call void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull %16) #15
  %118 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %6) #17
  br label %119

119:                                              ; preds = %111, %117
  %120 = phi ptr [ %118, %117 ], [ %16, %111 ]
  %121 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %120) #15
          to label %122 unwind label %126

122:                                              ; preds = %119
  %123 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %121, ptr noundef nonnull @.str.14) #15
          to label %124 unwind label %126

124:                                              ; preds = %122
  br i1 %116, label %125, label %149

125:                                              ; preds = %124
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #16
  br label %149

126:                                              ; preds = %122, %119
  %127 = landingpad { ptr, i32 }
          cleanup
  br i1 %116, label %128, label %152

128:                                              ; preds = %126
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #16
  br label %152

129:                                              ; preds = %78
  %130 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.15) #15
  br label %149

131:                                              ; preds = %76
  %132 = load ptr, ptr %3, align 8, !tbaa !81
  %133 = getelementptr inbounds ptr, ptr %132, i64 34
  %134 = load ptr, ptr %133, align 8
  %135 = call noundef zeroext i1 %134(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef %2, i32 noundef %23, i32 noundef %52, ptr noundef nonnull %16, i32 noundef 1024) #15
  %136 = call noundef zeroext i1 @_Z15opp_needsquotesPKc(ptr noundef nonnull %16) #15
  br i1 %136, label %137, label %139

137:                                              ; preds = %131
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #16
  call void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull %16) #15
  %138 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %7) #17
  br label %139

139:                                              ; preds = %131, %137
  %140 = phi ptr [ %138, %137 ], [ %16, %131 ]
  %141 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %140) #15
          to label %142 unwind label %146

142:                                              ; preds = %139
  %143 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %141, ptr noundef nonnull @.str.14) #15
          to label %144 unwind label %146

144:                                              ; preds = %142
  br i1 %136, label %145, label %149

145:                                              ; preds = %144
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #16
  br label %149

146:                                              ; preds = %142, %139
  %147 = landingpad { ptr, i32 }
          cleanup
  br i1 %136, label %148, label %152

148:                                              ; preds = %146
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #16
  br label %152

149:                                              ; preds = %129, %145, %124, %125, %105, %144, %58, %63
  %150 = add nuw nsw i32 %52, 1
  %151 = icmp eq i32 %150, %43
  br i1 %151, label %44, label %51, !llvm.loop !84

152:                                              ; preds = %146, %128, %126, %148
  %153 = phi { ptr, i32 } [ %147, %148 ], [ %127, %126 ], [ %127, %128 ], [ %147, %146 ]
  resume { ptr, i32 } %153

154:                                              ; preds = %44, %18, %9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13ObjectPrinter19printObjectToStringB5cxx11EP7cObject(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1080) %1, ptr noundef %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  %4 = alloca %"class.std::__cxx11::basic_stringstream", align 8
  call void @llvm.lifetime.start.p0(i64 392, ptr nonnull %4) #16
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #15
  %5 = getelementptr inbounds i8, ptr %4, i64 16
  invoke void @_ZN13ObjectPrinter19printObjectToStreamERSoP7cObject(ptr noundef nonnull align 8 dereferenceable(1080) %1, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %2) #15
          to label %6 unwind label %8

6:                                                ; preds = %3
  invoke void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %4) #15
          to label %7 unwind label %8

7:                                                ; preds = %6
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #17
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %4) #16
  ret void

8:                                                ; preds = %6, %3
  %9 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #17
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %4) #16
  resume { ptr, i32 } %9
}

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13ObjectPrinter11printIndentERSoi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1080) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) local_unnamed_addr #4 align 2 !prof !47 {
  %4 = load i32, ptr %0, align 8, !tbaa !56
  %5 = mul nsw i32 %4, %2
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %8, %3
  ret void

8:                                                ; preds = %3, %8
  %9 = phi i32 [ %11, %8 ], [ 0, %3 ]
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.8) #15
  %11 = add nuw nsw i32 %9, 1
  %12 = icmp eq i32 %11, %5
  br i1 %12, label %7, label %8, !llvm.loop !85
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK16cClassDescriptor15getFieldIsArrayEPvi(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 comdat align 2 !prof !47 {
  %4 = load ptr, ptr %0, align 8, !tbaa !81
  %5 = getelementptr inbounds ptr, ptr %4, i64 29
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, i32 noundef %2) #15
  %8 = and i32 %7, 1
  %9 = icmp ne i32 %8, 0
  ret i1 %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK16cClassDescriptor17getFieldIsPointerEPvi(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 comdat align 2 !prof !47 {
  %4 = load ptr, ptr %0, align 8, !tbaa !81
  %5 = getelementptr inbounds ptr, ptr %4, i64 29
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, i32 noundef %2) #15
  %8 = and i32 %7, 4
  %9 = icmp ne i32 %8, 0
  ret i1 %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK16cClassDescriptor18getFieldIsCompoundEPvi(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 comdat align 2 !prof !47 {
  %4 = load ptr, ptr %0, align 8, !tbaa !81
  %5 = getelementptr inbounds ptr, ptr %4, i64 29
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, i32 noundef %2) #15
  %8 = and i32 %7, 2
  %9 = icmp ne i32 %8, 0
  ret i1 %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK16cClassDescriptor17getFieldIsCObjectEPvi(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 comdat align 2 !prof !47 {
  %4 = load ptr, ptr %0, align 8, !tbaa !81
  %5 = getelementptr inbounds ptr, ptr %4, i64 29
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, i32 noundef %2) #15
  %8 = and i32 %7, 16
  %9 = icmp ne i32 %8, 0
  ret i1 %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc noundef zeroext i1 @_ZL18defaultRecurseIntoPvP16cClassDescriptoriS_i(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #4 !prof !47 !PGOFuncName !86 {
  %6 = load ptr, ptr %1, align 8, !tbaa !81
  %7 = getelementptr inbounds ptr, ptr %6, i64 28
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef %0, i32 noundef %2) #15
  %10 = tail call noundef zeroext i1 @_ZNK16cClassDescriptor17getFieldIsCObjectEPvi(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef %0, i32 noundef %2) #15
  %11 = icmp slt i32 %4, 5
  br i1 %11, label %12, label %23

12:                                               ; preds = %5
  %13 = icmp ne ptr %3, null
  %14 = and i1 %13, %10
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = tail call fastcc noundef zeroext i1 @_ZL25defaultRecurseIntoCObjectPvP16cClassDescriptoriP7cObjecti(ptr noundef nonnull %3) #15
  br i1 %16, label %17, label %23

17:                                               ; preds = %12, %15
  %18 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(6) @.str.16) #18
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(10) @.str.17) #18
  %22 = icmp ne i32 %21, 0
  br label %23

23:                                               ; preds = %20, %17, %15, %5
  %24 = phi i1 [ false, %17 ], [ false, %15 ], [ false, %5 ], [ %22, %20 ]
  ret i1 %24
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK16cClassDescriptor14extendsCObjectEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN13ObjectPrinter18matchesObjectFieldEP7cObjecti(ptr noundef nonnull align 8 dereferenceable(1080) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  %4 = alloca %class.MatchableObjectAdapter, align 8
  %5 = alloca %class.MatchableFieldAdapter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #16
  call void @_ZN22MatchableObjectAdapterC1ENS_16DefaultAttributeEP7cObject(ptr noundef nonnull align 8 dereferenceable(64) %4, i32 noundef 2, ptr noundef %1) #15
  %6 = getelementptr inbounds %class.ObjectPrinter, ptr %0, i64 0, i32 2
  %7 = call noundef i64 @_ZNKSt6vectorIP15MatchExpressionSaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #17
  %8 = trunc i64 %7 to i32
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %52

10:                                               ; preds = %3
  %11 = getelementptr inbounds %class.ObjectPrinter, ptr %0, i64 0, i32 3
  br label %12

12:                                               ; preds = %10, %44
  %13 = phi i64 [ 0, %10 ], [ %45, %44 ]
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIP15MatchExpressionSaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %13) #17
  %15 = load ptr, ptr %14, align 8, !tbaa !51
  %16 = invoke noundef zeroext i1 @_ZN15MatchExpression7matchesEPKNS_9MatchableE(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull %4) #15
          to label %17 unwind label %29

17:                                               ; preds = %12
  br i1 %16, label %18, label %44

18:                                               ; preds = %17
  %19 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef %13) #17
  %20 = call noundef i64 @_ZNKSt6vectorIP15MatchExpressionSaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %19) #17
  %21 = trunc i64 %20 to i32
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %31, label %44

23:                                               ; preds = %41
  %24 = add nuw nsw i64 %32, 1
  %25 = call noundef i64 @_ZNKSt6vectorIP15MatchExpressionSaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %19) #17
  %26 = shl i64 %25, 32
  %27 = ashr exact i64 %26, 32
  %28 = icmp slt i64 %24, %27
  br i1 %28, label %31, label %44, !llvm.loop !87

29:                                               ; preds = %12
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %50

31:                                               ; preds = %18, %23
  %32 = phi i64 [ %24, %23 ], [ 0, %18 ]
  %33 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIP15MatchExpressionSaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %19, i64 noundef %32) #17
  %34 = load ptr, ptr %33, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  invoke void @_ZN21MatchableFieldAdapterC1EP7cObjecti(ptr noundef nonnull align 8 dereferenceable(28) %5, ptr noundef %1, i32 noundef %2) #15
          to label %35 unwind label %37

35:                                               ; preds = %31
  %36 = invoke noundef zeroext i1 @_ZN15MatchExpression7matchesEPKNS_9MatchableE(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull %5) #15
          to label %41 unwind label %39

37:                                               ; preds = %31
  %38 = landingpad { ptr, i32 }
          cleanup
  br label %42

39:                                               ; preds = %35
  %40 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN15MatchExpression9MatchableD2Ev(ptr noundef nonnull align 8 dereferenceable(28) %5) #17
  br label %42

41:                                               ; preds = %35
  call void @_ZN15MatchExpression9MatchableD2Ev(ptr noundef nonnull align 8 dereferenceable(28) %5) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br i1 %36, label %52, label %23

42:                                               ; preds = %39, %37
  %43 = phi { ptr, i32 } [ %40, %39 ], [ %38, %37 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %50

44:                                               ; preds = %23, %18, %17
  %45 = add nuw nsw i64 %13, 1
  %46 = call noundef i64 @_ZNKSt6vectorIP15MatchExpressionSaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #17
  %47 = shl i64 %46, 32
  %48 = ashr exact i64 %47, 32
  %49 = icmp slt i64 %45, %48
  br i1 %49, label %12, label %52, !llvm.loop !88

50:                                               ; preds = %42, %29
  %51 = phi { ptr, i32 } [ %43, %42 ], [ %30, %29 ]
  call void @_ZN22MatchableObjectAdapterD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %4) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #16
  resume { ptr, i32 } %51

52:                                               ; preds = %44, %41, %3
  %53 = phi i1 [ false, %3 ], [ true, %41 ], [ false, %44 ]
  call void @_ZN22MatchableObjectAdapterD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %4) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #16
  ret i1 %53
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN16cClassDescriptor16getDescriptorForEPKc(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_Z15opp_needsquotesPKc(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5 align 2

; Function Attrs: optsize
declare void @_ZN22MatchableObjectAdapterC1ENS_16DefaultAttributeEP7cObject(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN15MatchExpression7matchesEPKNS_9MatchableE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN21MatchableFieldAdapterC1EP7cObjecti(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef, i32 noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN15MatchExpression9MatchableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !prof !47 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN22MatchableObjectAdapterD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #5 comdat align 2 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTV22MatchableObjectAdapter, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !81
  %2 = getelementptr inbounds %class.MatchableObjectAdapter, ptr %0, i64 0, i32 4
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  tail call void @_ZN15MatchExpression9MatchableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIP15MatchExpressionSaIS1_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !47 {
  tail call void @_ZNSt12_Vector_baseIP15MatchExpressionSaIS1_EE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIP15MatchExpressionSaIS1_EE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !47 {
  tail call void @_ZNSaIP15MatchExpressionEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #17
  tail call void @_ZNSt12_Vector_baseIP15MatchExpressionSaIS1_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIP15MatchExpressionEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !47 {
  tail call void @_ZNSt15__new_allocatorIP15MatchExpressionEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIP15MatchExpressionSaIS1_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !47 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIP15MatchExpressionEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !47 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseISt6vectorIP15MatchExpressionSaIS2_EESaIS4_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !47 {
  tail call void @_ZNSt12_Vector_baseISt6vectorIP15MatchExpressionSaIS2_EESaIS4_EE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseISt6vectorIP15MatchExpressionSaIS2_EESaIS4_EE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !47 {
  tail call void @_ZNSaISt6vectorIP15MatchExpressionSaIS1_EEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #17
  tail call void @_ZNSt12_Vector_baseISt6vectorIP15MatchExpressionSaIS2_EESaIS4_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaISt6vectorIP15MatchExpressionSaIS1_EEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !47 {
  tail call void @_ZNSt15__new_allocatorISt6vectorIP15MatchExpressionSaIS2_EEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseISt6vectorIP15MatchExpressionSaIS2_EESaIS4_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !47 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt6vectorIP15MatchExpressionSaIS2_EEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !47 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN15MatchExpression4ElemESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  %2 = load ptr, ptr %0, align 8, !tbaa !89
  %3 = getelementptr inbounds %"struct.std::_Vector_base<MatchExpression::Elem, std::allocator<MatchExpression::Elem>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !91
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN15MatchExpression4ElemESaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  invoke void @_ZSt8_DestroyIPN15MatchExpression4ElemES1_EvT_S3_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #15
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseIN15MatchExpression4ElemESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #21
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN15MatchExpression4ElemES1_EvT_S3_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat !prof !47 {
  tail call void @_ZSt8_DestroyIPN15MatchExpression4ElemEEvT_S3_(ptr noundef %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN15MatchExpression4ElemESaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !47 {
  ret ptr %0
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #16
  tail call void @_ZSt9terminatev() #21
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN15MatchExpression4ElemESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  %2 = load ptr, ptr %0, align 8, !tbaa !89
  %3 = getelementptr inbounds %"struct.std::_Vector_base<MatchExpression::Elem, std::allocator<MatchExpression::Elem>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !92
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 48
  invoke void @_ZNSt12_Vector_baseIN15MatchExpression4ElemESaIS1_EE13_M_deallocateEPS1_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #15
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorIN15MatchExpression4ElemEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #21
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN15MatchExpression4ElemEEvT_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat !prof !47 {
  tail call void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN15MatchExpression4ElemEEEvT_S5_(ptr noundef %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN15MatchExpression4ElemEEEvT_S5_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !47 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZSt8_DestroyIN15MatchExpression4ElemEEvPT_(ptr noundef %5) #15
  %6 = getelementptr inbounds %"class.MatchExpression::Elem", ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !llvm.loop !93

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIN15MatchExpression4ElemEEvPT_(ptr noundef %0) local_unnamed_addr #5 comdat !prof !47 {
  tail call void @_ZN15MatchExpression4ElemD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN15MatchExpression4ElemD1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN15MatchExpression4ElemESaIS1_EE13_M_deallocateEPS1_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 !prof !47 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIN15MatchExpression4ElemEEE10deallocateERS2_PS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #15
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN15MatchExpression4ElemEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !47 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN15MatchExpression4ElemEEE10deallocateERS2_PS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 !prof !47 {
  tail call void @_ZNSt15__new_allocatorIN15MatchExpression4ElemEE10deallocateEPS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN15MatchExpression4ElemEE10deallocateEPS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i1 @_ZL25defaultRecurseIntoCObjectPvP16cClassDescriptoriP7cObjecti(ptr noundef %0) unnamed_addr #5 !prof !47 !PGOFuncName !94 {
  %2 = tail call ptr @__dynamic_cast(ptr %0, ptr nonnull @_ZTI7cObject, ptr nonnull @_ZTI6cArray, i64 0) #16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = tail call noundef i32 @_ZNK6cArray4sizeEv(ptr noundef nonnull align 8 dereferenceable(64) %2) #15
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %1, %4
  %8 = tail call ptr @__dynamic_cast(ptr %0, ptr nonnull @_ZTI7cObject, ptr nonnull @_ZTI7cModule, i64 0) #16
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = tail call ptr @__dynamic_cast(ptr %0, ptr nonnull @_ZTI7cObject, ptr nonnull @_ZTI5cGate, i64 0) #16
  %12 = icmp eq ptr %11, null
  br label %13

13:                                               ; preds = %10, %7, %4
  %14 = phi i1 [ false, %7 ], [ false, %4 ], [ %12, %10 ]
  ret i1 %14
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #11

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK6cArray4sizeEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #5 comdat align 2 !prof !47 {
  %2 = getelementptr inbounds %class.cArray, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 4, !tbaa !95
  %4 = add nsw i32 %3, 1
  ret i32 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPP15MatchExpressionS1_EvT_S3_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat !prof !47 {
  tail call void @_ZSt8_DestroyIPP15MatchExpressionEvT_S3_(ptr noundef %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIP15MatchExpressionSaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !47 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIP15MatchExpressionSaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  %2 = load ptr, ptr %0, align 8, !tbaa !74
  %3 = getelementptr inbounds %"struct.std::_Vector_base<MatchExpression *, std::allocator<MatchExpression *>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !77
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  invoke void @_ZNSt12_Vector_baseIP15MatchExpressionSaIS1_EE13_M_deallocateEPS1_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #15
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorIP15MatchExpressionED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #21
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPP15MatchExpressionEvT_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat !prof !47 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPP15MatchExpressionEEvT_S5_(ptr noundef %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPP15MatchExpressionEEvT_S5_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !47 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIP15MatchExpressionSaIS1_EE13_M_deallocateEPS1_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 !prof !47 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIP15MatchExpressionEE10deallocateERS2_PS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #15
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIP15MatchExpressionEE10deallocateERS2_PS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 !prof !47 {
  tail call void @_ZNSt15__new_allocatorIP15MatchExpressionE10deallocateEPS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIP15MatchExpressionE10deallocateEPS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPSt6vectorIP15MatchExpressionSaIS2_EES4_EvT_S6_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat !prof !47 {
  tail call void @_ZSt8_DestroyIPSt6vectorIP15MatchExpressionSaIS2_EEEvT_S6_(ptr noundef %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseISt6vectorIP15MatchExpressionSaIS2_EESaIS4_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !47 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseISt6vectorIP15MatchExpressionSaIS2_EESaIS4_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  %2 = load ptr, ptr %0, align 8, !tbaa !78
  %3 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<MatchExpression *>, std::allocator<std::vector<MatchExpression *>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !73
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 24
  invoke void @_ZNSt12_Vector_baseISt6vectorIP15MatchExpressionSaIS2_EESaIS4_EE13_M_deallocateEPS4_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #15
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorISt6vectorIP15MatchExpressionSaIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #21
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPSt6vectorIP15MatchExpressionSaIS2_EEEvT_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat !prof !47 {
  tail call void @_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIP15MatchExpressionSaIS4_EEEEvT_S8_(ptr noundef %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIP15MatchExpressionSaIS4_EEEEvT_S8_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !47 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZSt8_DestroyISt6vectorIP15MatchExpressionSaIS2_EEEvPT_(ptr noundef %5) #15
  %6 = getelementptr inbounds %"class.std::vector", ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !llvm.loop !101

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyISt6vectorIP15MatchExpressionSaIS2_EEEvPT_(ptr noundef %0) local_unnamed_addr #5 comdat !prof !47 {
  tail call void @_ZNSt6vectorIP15MatchExpressionSaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseISt6vectorIP15MatchExpressionSaIS2_EESaIS4_EE13_M_deallocateEPS4_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 !prof !47 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaISt6vectorIP15MatchExpressionSaIS2_EEEE10deallocateERS5_PS4_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #15
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt6vectorIP15MatchExpressionSaIS2_EEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !47 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt6vectorIP15MatchExpressionSaIS2_EEEE10deallocateERS5_PS4_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 !prof !47 {
  tail call void @_ZNSt15__new_allocatorISt6vectorIP15MatchExpressionSaIS2_EEE10deallocateEPS4_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt6vectorIP15MatchExpressionSaIS2_EEE10deallocateEPS4_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat !prof !102 {
  tail call void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !103 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !76 {
  %2 = load ptr, ptr %0, align 8, !tbaa !70
  %3 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !104
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 5
  invoke void @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #15
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #21
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat !prof !102 {
  tail call void @_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_(ptr noundef %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !102 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !105

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_(ptr noundef %5) #15
  %6 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !106, !llvm.loop !107

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_(ptr noundef %0) local_unnamed_addr #5 comdat !prof !108 {
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 !prof !109 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !110

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateERS6_PS5_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #15
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !76 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateERS6_PS5_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 !prof !111 {
  tail call void @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10deallocateEPS5_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10deallocateEPS5_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIP15MatchExpressionSaIS1_EE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<MatchExpression *, std::allocator<MatchExpression *>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !75
  %5 = getelementptr inbounds %"struct.std::_Vector_base<MatchExpression *, std::allocator<MatchExpression *>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !77
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  tail call void @_ZNSt16allocator_traitsISaIP15MatchExpressionEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %1) #17
  %9 = load ptr, ptr %3, align 8, !tbaa !75
  %10 = getelementptr inbounds ptr, ptr %9, i64 1
  store ptr %10, ptr %3, align 8, !tbaa !75
  br label %13

11:                                               ; preds = %2
  %12 = tail call ptr @_ZNSt6vectorIP15MatchExpressionSaIS1_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  tail call void @_ZNSt6vectorIP15MatchExpressionSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %12, ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  br label %13

13:                                               ; preds = %11, %8
  %14 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIP15MatchExpressionSaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  ret ptr %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIP15MatchExpressionEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #5 comdat align 2 !prof !47 {
  tail call void @_ZNSt15__new_allocatorIP15MatchExpressionE9constructIS1_JS1_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIP15MatchExpressionSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat align 2 !prof !47 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %1, ptr %4, align 8
  %6 = tail call noundef i64 @_ZNKSt6vectorIP15MatchExpressionSaIS1_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1, ptr noundef nonnull @.str.18) #15
  %7 = load ptr, ptr %0, align 8, !tbaa !74
  %8 = getelementptr inbounds %"struct.std::_Vector_base<MatchExpression *, std::allocator<MatchExpression *>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  %10 = tail call ptr @_ZNSt6vectorIP15MatchExpressionSaIS1_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  store ptr %10, ptr %5, align 8
  %11 = call noundef i64 @_ZN9__gnu_cxxmiIPP15MatchExpressionSt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  %12 = call noundef ptr @_ZNSt12_Vector_baseIP15MatchExpressionSaIS1_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %6) #15
  %13 = getelementptr inbounds ptr, ptr %12, i64 %11
  call void @_ZNSt16allocator_traitsISaIP15MatchExpressionEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %13, ptr noundef nonnull align 8 dereferenceable(8) %2) #17
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPP15MatchExpressionSt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #17
  %15 = load ptr, ptr %14, align 8, !tbaa !51
  %16 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIP15MatchExpressionSaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  %17 = call noundef ptr @_ZNSt6vectorIP15MatchExpressionSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_(ptr noundef %7, ptr noundef %15, ptr noundef %12, ptr noundef nonnull align 1 dereferenceable(1) %16) #17
  %18 = getelementptr inbounds ptr, ptr %17, i64 1
  %19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPP15MatchExpressionSt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #17
  %20 = load ptr, ptr %19, align 8, !tbaa !51
  %21 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIP15MatchExpressionSaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  %22 = call noundef ptr @_ZNSt6vectorIP15MatchExpressionSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_(ptr noundef %20, ptr noundef %9, ptr noundef nonnull %18, ptr noundef nonnull align 1 dereferenceable(1) %21) #17
  %23 = getelementptr inbounds %"struct.std::_Vector_base<MatchExpression *, std::allocator<MatchExpression *>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !77
  %25 = ptrtoint ptr %24 to i64
  %26 = ptrtoint ptr %7 to i64
  %27 = sub i64 %25, %26
  %28 = ashr exact i64 %27, 3
  call void @_ZNSt12_Vector_baseIP15MatchExpressionSaIS1_EE13_M_deallocateEPS1_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %7, i64 noundef %28) #15
  store ptr %12, ptr %0, align 8, !tbaa !74
  store ptr %22, ptr %8, align 8, !tbaa !75
  %29 = getelementptr inbounds ptr, ptr %12, i64 %6
  store ptr %29, ptr %23, align 8, !tbaa !77
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIP15MatchExpressionSaIS1_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !47 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<MatchExpression *, std::allocator<MatchExpression *>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPP15MatchExpressionSt6vectorIS2_SaIS2_EEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #17
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIP15MatchExpressionSaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %4 = tail call ptr @_ZNSt6vectorIP15MatchExpressionSaIS1_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  store ptr %4, ptr %3, align 8
  %5 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPP15MatchExpressionSt6vectorIS2_SaIS2_EEEmiEl(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 1) #17
  store ptr %5, ptr %2, align 8
  %6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPP15MatchExpressionSt6vectorIS2_SaIS2_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIP15MatchExpressionE9constructIS1_JS1_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #5 comdat align 2 !prof !47 {
  %4 = load ptr, ptr %2, align 8, !tbaa !51
  store ptr %4, ptr %1, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIP15MatchExpressionSaIS1_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 !prof !47 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %1, ptr %4, align 8, !tbaa !112
  %6 = tail call noundef i64 @_ZNKSt6vectorIP15MatchExpressionSaIS1_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  %7 = tail call noundef i64 @_ZNKSt6vectorIP15MatchExpressionSaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  %8 = sub i64 %6, %7
  %9 = icmp ult i64 %8, %1
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef %2) #22
  unreachable

11:                                               ; preds = %3
  %12 = tail call noundef i64 @_ZNKSt6vectorIP15MatchExpressionSaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  %13 = tail call noundef i64 @_ZNKSt6vectorIP15MatchExpressionSaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  store i64 %13, ptr %5, align 8, !tbaa !112
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #15
  %15 = load i64, ptr %14, align 8, !tbaa !112
  %16 = add i64 %15, %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  %17 = call noundef i64 @_ZNKSt6vectorIP15MatchExpressionSaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %22, label %19

19:                                               ; preds = %11
  %20 = call noundef i64 @_ZNKSt6vectorIP15MatchExpressionSaIS1_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  %21 = icmp ugt i64 %16, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %19, %11
  %23 = call noundef i64 @_ZNKSt6vectorIP15MatchExpressionSaIS1_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  br label %24

24:                                               ; preds = %19, %22
  %25 = phi i64 [ %23, %22 ], [ %16, %19 ]
  ret i64 %25
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN9__gnu_cxxmiIPP15MatchExpressionSt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat !prof !47 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPP15MatchExpressionSt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #17
  %4 = load ptr, ptr %3, align 8, !tbaa !51
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPP15MatchExpressionSt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #17
  %6 = load ptr, ptr %5, align 8, !tbaa !51
  %7 = ptrtoint ptr %4 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 3
  ret i64 %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIP15MatchExpressionSaIS1_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !47 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPP15MatchExpressionSt6vectorIS2_SaIS2_EEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #17
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIP15MatchExpressionSaIS1_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !47 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaIP15MatchExpressionEE8allocateERS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #15
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorIP15MatchExpressionSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #5 comdat align 2 !prof !47 {
  %5 = tail call noundef ptr @_ZSt12__relocate_aIPP15MatchExpressionS2_SaIS1_EET0_T_S5_S4_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #17
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPP15MatchExpressionSt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 !prof !47 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIP15MatchExpressionSaIS1_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !47 {
  %2 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIP15MatchExpressionSaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  %3 = tail call noundef i64 @_ZNSt6vectorIP15MatchExpressionSaIS1_EE11_S_max_sizeERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %2) #17
  ret i64 %3
}

; Function Attrs: noreturn optsize
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat !prof !114 {
  %3 = load i64, ptr %0, align 8, !tbaa !112
  %4 = load i64, ptr %1, align 8, !tbaa !112
  %5 = icmp ult i64 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0, !prof !115
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIP15MatchExpressionSaIS1_EE11_S_max_sizeERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  store i64 1152921504606846975, ptr %2, align 8, !tbaa !112
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %4 = tail call noundef i64 @_ZNSt16allocator_traitsISaIP15MatchExpressionEE8max_sizeERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0) #17
  store i64 %4, ptr %3, align 8, !tbaa !112
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #15
  %6 = load i64, ptr %5, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIP15MatchExpressionSaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !47 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaIP15MatchExpressionEE8max_sizeERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #5 comdat align 2 !prof !47 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIP15MatchExpressionE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #17
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat !prof !116 {
  %3 = load i64, ptr %1, align 8, !tbaa !112
  %4 = load i64, ptr %0, align 8, !tbaa !112
  %5 = icmp ult i64 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0, !prof !117
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIP15MatchExpressionE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #5 comdat align 2 !prof !47 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIP15MatchExpressionE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #17
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIP15MatchExpressionE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #5 comdat align 2 !prof !47 {
  ret i64 1152921504606846975
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPP15MatchExpressionSt6vectorIS2_SaIS2_EEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 !prof !47 {
  %3 = load ptr, ptr %1, align 8, !tbaa !51
  store ptr %3, ptr %0, align 8, !tbaa !118
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIP15MatchExpressionEE8allocateERS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !47 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorIP15MatchExpressionE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #15
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIP15MatchExpressionE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorIP15MatchExpressionE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #17
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !120

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
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #19
  ret ptr %12
}

; Function Attrs: noreturn optsize
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #12

; Function Attrs: noreturn optsize
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #12

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__relocate_aIPP15MatchExpressionS2_SaIS1_EET0_T_S5_S4_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #5 comdat !prof !47 {
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPP15MatchExpressionET_S3_(ptr noundef %0) #17
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPP15MatchExpressionET_S3_(ptr noundef %1) #17
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPP15MatchExpressionET_S3_(ptr noundef %2) #17
  %8 = tail call noundef ptr @_ZSt14__relocate_a_1IP15MatchExpressionS1_ENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS3_E4typeES4_S4_S4_RSaIT0_E(ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull align 1 dereferenceable(1) %3) #17
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__relocate_a_1IP15MatchExpressionS1_ENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS3_E4typeES4_S4_S4_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #5 comdat !prof !47 {
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
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPP15MatchExpressionET_S3_(ptr noundef %0) local_unnamed_addr #5 comdat !prof !47 {
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #13

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNK9__gnu_cxx17__normal_iteratorIPP15MatchExpressionSt6vectorIS2_SaIS2_EEEmiEl(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %5 = load ptr, ptr %0, align 8, !tbaa !118
  %6 = sub i64 0, %1
  %7 = getelementptr inbounds ptr, ptr %5, i64 %6
  store ptr %7, ptr %4, align 8, !tbaa !51
  call void @_ZN9__gnu_cxx17__normal_iteratorIPP15MatchExpressionSt6vectorIS2_SaIS2_EEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  %8 = load ptr, ptr %3, align 8
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPP15MatchExpressionSt6vectorIS2_SaIS2_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !118
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt6vectorIP15MatchExpressionSaIS2_EEEE9constructIS4_JRKS4_EEEvRS5_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #4 comdat align 2 !prof !47 {
  tail call void @_ZNSt15__new_allocatorISt6vectorIP15MatchExpressionSaIS2_EEE9constructIS4_JRKS4_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.18", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.18", align 8
  store ptr %1, ptr %4, align 8
  %6 = tail call noundef i64 @_ZNKSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1, ptr noundef nonnull @.str.18) #15
  %7 = load ptr, ptr %0, align 8, !tbaa !78
  %8 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<MatchExpression *>, std::allocator<std::vector<MatchExpression *>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  %10 = tail call ptr @_ZNSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  store ptr %10, ptr %5, align 8
  %11 = call noundef i64 @_ZN9__gnu_cxxmiIPSt6vectorIP15MatchExpressionSaIS3_EES1_IS5_SaIS5_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSC_SF_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  %12 = call noundef ptr @_ZNSt12_Vector_baseISt6vectorIP15MatchExpressionSaIS2_EESaIS4_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %6) #15
  %13 = getelementptr inbounds %"class.std::vector", ptr %12, i64 %11
  invoke void @_ZNSt16allocator_traitsISaISt6vectorIP15MatchExpressionSaIS2_EEEE9constructIS4_JRKS4_EEEvRS5_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %13, ptr noundef nonnull align 8 dereferenceable(24) %2) #15
          to label %14 unwind label %31

14:                                               ; preds = %3
  %15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorIP15MatchExpressionSaIS3_EES1_IS5_SaIS5_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #17
  %16 = load ptr, ptr %15, align 8, !tbaa !51
  %17 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseISt6vectorIP15MatchExpressionSaIS2_EESaIS4_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  %18 = call noundef ptr @_ZNSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_(ptr noundef %7, ptr noundef %16, ptr noundef %12, ptr noundef nonnull align 1 dereferenceable(1) %17) #17
  %19 = getelementptr inbounds %"class.std::vector", ptr %18, i64 1
  %20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorIP15MatchExpressionSaIS3_EES1_IS5_SaIS5_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #17
  %21 = load ptr, ptr %20, align 8, !tbaa !51
  %22 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseISt6vectorIP15MatchExpressionSaIS2_EESaIS4_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  %23 = call noundef ptr @_ZNSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_(ptr noundef %21, ptr noundef %9, ptr noundef nonnull %19, ptr noundef nonnull align 1 dereferenceable(1) %22) #17
  %24 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<MatchExpression *>, std::allocator<std::vector<MatchExpression *>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !73
  %26 = ptrtoint ptr %25 to i64
  %27 = ptrtoint ptr %7 to i64
  %28 = sub i64 %26, %27
  %29 = sdiv exact i64 %28, 24
  call void @_ZNSt12_Vector_baseISt6vectorIP15MatchExpressionSaIS2_EESaIS4_EE13_M_deallocateEPS4_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %7, i64 noundef %29) #15
  store ptr %12, ptr %0, align 8, !tbaa !78
  store ptr %23, ptr %8, align 8, !tbaa !72
  %30 = getelementptr inbounds %"class.std::vector", ptr %12, i64 %6
  store ptr %30, ptr %24, align 8, !tbaa !73
  ret void

31:                                               ; preds = %3
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  %34 = call ptr @__cxa_begin_catch(ptr %33) #16
  %35 = icmp eq ptr %12, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  call void @_ZNSt16allocator_traitsISaISt6vectorIP15MatchExpressionSaIS2_EEEE7destroyIS4_EEvRS5_PT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %13) #17
  br label %41

37:                                               ; preds = %31
  %38 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseISt6vectorIP15MatchExpressionSaIS2_EESaIS4_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  invoke void @_ZSt8_DestroyIPSt6vectorIP15MatchExpressionSaIS2_EES4_EvT_S6_RSaIT0_E(ptr noundef nonnull %12, ptr noundef nonnull %12, ptr noundef nonnull align 1 dereferenceable(1) %38) #15
          to label %41 unwind label %39

39:                                               ; preds = %42, %41, %37
  %40 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %43 unwind label %44

41:                                               ; preds = %37, %36
  invoke void @_ZNSt12_Vector_baseISt6vectorIP15MatchExpressionSaIS2_EESaIS4_EE13_M_deallocateEPS4_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %12, i64 noundef %6) #15
          to label %42 unwind label %39

42:                                               ; preds = %41
  invoke void @__cxa_rethrow() #23
          to label %47 unwind label %39

43:                                               ; preds = %39
  resume { ptr, i32 } %40

44:                                               ; preds = %39
  %45 = landingpad { ptr, i32 }
          catch ptr null
  %46 = extractvalue { ptr, i32 } %45, 0
  call void @__clang_call_terminate(ptr %46) #21
  unreachable

47:                                               ; preds = %42
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !47 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.18", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<MatchExpression *>, std::allocator<std::vector<MatchExpression *>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPSt6vectorIP15MatchExpressionSaIS3_EES1_IS5_SaIS5_EEEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #17
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt6vectorIP15MatchExpressionSaIS2_EEE9constructIS4_JRKS4_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #4 comdat align 2 !prof !47 {
  tail call void @_ZNSt6vectorIP15MatchExpressionSaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIP15MatchExpressionSaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  %3 = alloca %"class.std::allocator", align 1
  %4 = tail call noundef i64 @_ZNKSt6vectorIP15MatchExpressionSaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #16
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIP15MatchExpressionSaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIP15MatchExpressionES2_E17_S_select_on_copyERKS3_(ptr dead_on_unwind nonnull writable sret(%"class.std::allocator") align 1 %3, ptr noundef nonnull align 1 dereferenceable(1) %5) #15
  invoke void @_ZNSt12_Vector_baseIP15MatchExpressionSaIS1_EEC2EmRKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %3) #15
          to label %6 unwind label %14

6:                                                ; preds = %2
  call void @_ZNSt15__new_allocatorIP15MatchExpressionED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #16
  %7 = call ptr @_ZNKSt6vectorIP15MatchExpressionSaIS1_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %8 = call ptr @_ZNKSt6vectorIP15MatchExpressionSaIS1_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %9 = load ptr, ptr %0, align 8, !tbaa !74
  %10 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIP15MatchExpressionSaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  %11 = invoke noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKP15MatchExpressionSt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E(ptr %7, ptr %8, ptr noundef %9, ptr noundef nonnull align 1 dereferenceable(1) %10) #15
          to label %12 unwind label %16

12:                                               ; preds = %6
  %13 = getelementptr inbounds %"struct.std::_Vector_base<MatchExpression *, std::allocator<MatchExpression *>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !75
  ret void

14:                                               ; preds = %2
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIP15MatchExpressionED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #16
  br label %18

16:                                               ; preds = %6
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12_Vector_baseIP15MatchExpressionSaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  resume { ptr, i32 } %19
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx14__alloc_traitsISaIP15MatchExpressionES2_E17_S_select_on_copyERKS3_(ptr dead_on_unwind noalias writable sret(%"class.std::allocator") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #4 comdat align 2 !prof !47 {
  tail call void @_ZNSt16allocator_traitsISaIP15MatchExpressionEE37select_on_container_copy_constructionERKS2_(ptr dead_on_unwind writable sret(%"class.std::allocator") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIP15MatchExpressionSaIS1_EEC2EmRKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  tail call void @_ZNSt12_Vector_baseIP15MatchExpressionSaIS1_EE12_Vector_implC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %2) #17
  invoke void @_ZNSt12_Vector_baseIP15MatchExpressionSaIS1_EE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #15
          to label %4 unwind label %5

4:                                                ; preds = %3
  ret void

5:                                                ; preds = %3
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt15__new_allocatorIP15MatchExpressionED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIP15MatchExpressionED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !47 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKP15MatchExpressionSt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E(ptr %0, ptr %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #4 comdat !prof !47 {
  %5 = tail call noundef ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKP15MatchExpressionSt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(ptr %0, ptr %1, ptr noundef %2) #15
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorIP15MatchExpressionSaIS1_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !47 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.19", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKP15MatchExpressionSt6vectorIS2_SaIS2_EEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #17
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorIP15MatchExpressionSaIS1_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !47 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.19", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<MatchExpression *, std::allocator<MatchExpression *>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKP15MatchExpressionSt6vectorIS2_SaIS2_EEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #17
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIP15MatchExpressionEE37select_on_container_copy_constructionERKS2_(ptr dead_on_unwind noalias writable sret(%"class.std::allocator") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #5 comdat align 2 !prof !47 {
  tail call void @_ZNSaIP15MatchExpressionEC2ERKS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIP15MatchExpressionEC2ERKS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 !prof !47 {
  tail call void @_ZNSt15__new_allocatorIP15MatchExpressionEC2ERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIP15MatchExpressionEC2ERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 !prof !47 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIP15MatchExpressionSaIS1_EE12_Vector_implC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 !prof !47 {
  tail call void @_ZNSaIP15MatchExpressionEC2ERKS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #17
  tail call void @_ZNSt12_Vector_baseIP15MatchExpressionSaIS1_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIP15MatchExpressionSaIS1_EE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !47 {
  %3 = tail call noundef ptr @_ZNSt12_Vector_baseIP15MatchExpressionSaIS1_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #15
  store ptr %3, ptr %0, align 8, !tbaa !74
  %4 = getelementptr inbounds %"struct.std::_Vector_base<MatchExpression *, std::allocator<MatchExpression *>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !75
  %5 = getelementptr inbounds ptr, ptr %3, i64 %1
  %6 = getelementptr inbounds %"struct.std::_Vector_base<MatchExpression *, std::allocator<MatchExpression *>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !77
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKP15MatchExpressionSt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #4 comdat !prof !47 {
  %4 = tail call noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKP15MatchExpressionSt6vectorIS5_SaIS5_EEEEPS5_EET0_T_SE_SD_(ptr %0, ptr %1, ptr noundef %2) #15
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKP15MatchExpressionSt6vectorIS5_SaIS5_EEEEPS5_EET0_T_SE_SD_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 !prof !47 {
  %4 = tail call noundef ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKP15MatchExpressionSt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(ptr %0, ptr %1, ptr noundef %2) #15
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKP15MatchExpressionSt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #4 comdat !prof !47 {
  %4 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKP15MatchExpressionSt6vectorIS3_SaIS3_EEEEET_SA_(ptr %0) #15
  %5 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKP15MatchExpressionSt6vectorIS3_SaIS3_EEEEET_SA_(ptr %1) #15
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKP15MatchExpressionSt6vectorIS3_SaIS3_EEEEPS3_ET1_T0_SC_SB_(ptr %4, ptr %5, ptr noundef %2) #15
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKP15MatchExpressionSt6vectorIS3_SaIS3_EEEEPS3_ET1_T0_SC_SB_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #4 comdat !prof !47 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !51
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKP15MatchExpressionSt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS7_T0_EE(ptr %0) #17
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPKP15MatchExpressionSt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS7_T0_EE(ptr %1) #17
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPP15MatchExpressionET_S3_(ptr noundef %2) #17
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKP15MatchExpressionPS1_ET1_T0_S6_S5_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #15
  %9 = call noundef ptr @_ZSt12__niter_wrapIPP15MatchExpressionET_RKS3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #15
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKP15MatchExpressionSt6vectorIS3_SaIS3_EEEEET_SA_(ptr %0) local_unnamed_addr #5 comdat !prof !47 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPP15MatchExpressionET_RKS3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #5 comdat !prof !47 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPKP15MatchExpressionPS1_ET1_T0_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat !prof !47 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPKP15MatchExpressionPS1_ET1_T0_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPKP15MatchExpressionSt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS7_T0_EE(ptr %0) local_unnamed_addr #5 comdat !prof !47 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.19", align 8
  store ptr %0, ptr %2, align 8
  %3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKP15MatchExpressionSt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #17
  %4 = load ptr, ptr %3, align 8, !tbaa !51
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPKP15MatchExpressionPS1_ET1_T0_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat !prof !47 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIP15MatchExpressionEEPT_PKS5_S8_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIP15MatchExpressionEEPT_PKS5_S8_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat align 2 !prof !47 {
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
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKP15MatchExpressionSt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 !prof !47 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPKP15MatchExpressionSt6vectorIS2_SaIS2_EEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 !prof !47 {
  %3 = load ptr, ptr %1, align 8, !tbaa !51
  store ptr %3, ptr %0, align 8, !tbaa !121
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 !prof !47 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %1, ptr %4, align 8, !tbaa !112
  %6 = tail call noundef i64 @_ZNKSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  %7 = tail call noundef i64 @_ZNKSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  %8 = sub i64 %6, %7
  %9 = icmp ult i64 %8, %1
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef %2) #22
  unreachable

11:                                               ; preds = %3
  %12 = tail call noundef i64 @_ZNKSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  %13 = tail call noundef i64 @_ZNKSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  store i64 %13, ptr %5, align 8, !tbaa !112
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #15
  %15 = load i64, ptr %14, align 8, !tbaa !112
  %16 = add i64 %15, %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  %17 = call noundef i64 @_ZNKSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %22, label %19

19:                                               ; preds = %11
  %20 = call noundef i64 @_ZNKSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  %21 = icmp ugt i64 %16, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %19, %11
  %23 = call noundef i64 @_ZNKSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  br label %24

24:                                               ; preds = %19, %22
  %25 = phi i64 [ %23, %22 ], [ %16, %19 ]
  ret i64 %25
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN9__gnu_cxxmiIPSt6vectorIP15MatchExpressionSaIS3_EES1_IS5_SaIS5_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSC_SF_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat !prof !47 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorIP15MatchExpressionSaIS3_EES1_IS5_SaIS5_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #17
  %4 = load ptr, ptr %3, align 8, !tbaa !51
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorIP15MatchExpressionSaIS3_EES1_IS5_SaIS5_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #17
  %6 = load ptr, ptr %5, align 8, !tbaa !51
  %7 = ptrtoint ptr %4 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = sdiv exact i64 %9, 24
  ret i64 %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !47 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.18", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPSt6vectorIP15MatchExpressionSaIS3_EES1_IS5_SaIS5_EEEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #17
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseISt6vectorIP15MatchExpressionSaIS2_EESaIS4_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !47 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaISt6vectorIP15MatchExpressionSaIS2_EEEE8allocateERS5_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #15
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #5 comdat align 2 !prof !47 {
  %5 = tail call noundef ptr @_ZSt12__relocate_aIPSt6vectorIP15MatchExpressionSaIS2_EES5_SaIS4_EET0_T_S8_S7_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #17
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorIP15MatchExpressionSaIS3_EES1_IS5_SaIS5_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 !prof !47 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt6vectorIP15MatchExpressionSaIS2_EEEE7destroyIS4_EEvRS5_PT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !47 {
  tail call void @_ZNSt15__new_allocatorISt6vectorIP15MatchExpressionSaIS2_EEE7destroyIS4_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) #17
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !47 {
  %2 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseISt6vectorIP15MatchExpressionSaIS2_EESaIS4_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  %3 = tail call noundef i64 @_ZNSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EE11_S_max_sizeERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %2) #17
  ret i64 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !47 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<MatchExpression *>, std::allocator<std::vector<MatchExpression *>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !72
  %4 = load ptr, ptr %0, align 8, !tbaa !78
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 24
  ret i64 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EE11_S_max_sizeERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #5 comdat align 2 !prof !47 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  store i64 384307168202282325, ptr %2, align 8, !tbaa !112
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %4 = tail call noundef i64 @_ZNSt16allocator_traitsISaISt6vectorIP15MatchExpressionSaIS2_EEEE8max_sizeERKS5_(ptr noundef nonnull align 1 dereferenceable(1) %0) #17
  store i64 %4, ptr %3, align 8, !tbaa !112
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #15
  %6 = load i64, ptr %5, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseISt6vectorIP15MatchExpressionSaIS2_EESaIS4_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !47 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaISt6vectorIP15MatchExpressionSaIS2_EEEE8max_sizeERKS5_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #5 comdat align 2 !prof !47 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorISt6vectorIP15MatchExpressionSaIS2_EEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #17
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorISt6vectorIP15MatchExpressionSaIS2_EEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #5 comdat align 2 !prof !47 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorISt6vectorIP15MatchExpressionSaIS2_EEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #17
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorISt6vectorIP15MatchExpressionSaIS2_EEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #5 comdat align 2 !prof !47 {
  ret i64 384307168202282325
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPSt6vectorIP15MatchExpressionSaIS3_EES1_IS5_SaIS5_EEEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 !prof !47 {
  %3 = load ptr, ptr %1, align 8, !tbaa !51
  store ptr %3, ptr %0, align 8, !tbaa !123
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaISt6vectorIP15MatchExpressionSaIS2_EEEE8allocateERS5_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !47 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorISt6vectorIP15MatchExpressionSaIS2_EEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #15
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorISt6vectorIP15MatchExpressionSaIS2_EEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorISt6vectorIP15MatchExpressionSaIS2_EEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #17
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !120

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 768614336404564650
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #22
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #22
  unreachable

10:                                               ; preds = %3
  %11 = mul i64 %1, 24
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #19
  ret ptr %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__relocate_aIPSt6vectorIP15MatchExpressionSaIS2_EES5_SaIS4_EET0_T_S8_S7_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #5 comdat !prof !47 {
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPSt6vectorIP15MatchExpressionSaIS2_EEET_S6_(ptr noundef %0) #17
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPSt6vectorIP15MatchExpressionSaIS2_EEET_S6_(ptr noundef %1) #17
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPSt6vectorIP15MatchExpressionSaIS2_EEET_S6_(ptr noundef %2) #17
  %8 = tail call noundef ptr @_ZSt14__relocate_a_1IPSt6vectorIP15MatchExpressionSaIS2_EES5_SaIS4_EET0_T_S8_S7_RT1_(ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull align 1 dereferenceable(1) %3) #17
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__relocate_a_1IPSt6vectorIP15MatchExpressionSaIS2_EES5_SaIS4_EET0_T_S8_S7_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #5 comdat !prof !47 {
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %12, label %6

6:                                                ; preds = %4, %6
  %7 = phi ptr [ %10, %6 ], [ %2, %4 ]
  %8 = phi ptr [ %9, %6 ], [ %0, %4 ]
  tail call void @_ZSt19__relocate_object_aISt6vectorIP15MatchExpressionSaIS2_EES4_SaIS4_EEvPT_PT0_RT1_(ptr noundef %7, ptr noundef %8, ptr noundef nonnull align 1 dereferenceable(1) %3) #17
  %9 = getelementptr inbounds %"class.std::vector", ptr %8, i64 1
  %10 = getelementptr inbounds %"class.std::vector", ptr %7, i64 1
  %11 = icmp eq ptr %9, %1
  br i1 %11, label %12, label %6, !llvm.loop !125

12:                                               ; preds = %6, %4
  %13 = phi ptr [ %2, %4 ], [ %10, %6 ]
  ret ptr %13
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPSt6vectorIP15MatchExpressionSaIS2_EEET_S6_(ptr noundef %0) local_unnamed_addr #5 comdat !prof !47 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__relocate_object_aISt6vectorIP15MatchExpressionSaIS2_EES4_SaIS4_EEvPT_PT0_RT1_(ptr noalias noundef %0, ptr noalias noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #5 comdat !prof !47 {
  tail call void @_ZNSt16allocator_traitsISaISt6vectorIP15MatchExpressionSaIS2_EEEE9constructIS4_JS4_EEEvRS5_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  tail call void @_ZNSt16allocator_traitsISaISt6vectorIP15MatchExpressionSaIS2_EEEE7destroyIS4_EEvRS5_PT_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull %1) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt6vectorIP15MatchExpressionSaIS2_EEEE9constructIS4_JS4_EEEvRS5_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #5 comdat align 2 !prof !47 {
  tail call void @_ZNSt15__new_allocatorISt6vectorIP15MatchExpressionSaIS2_EEE9constructIS4_JS4_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt6vectorIP15MatchExpressionSaIS2_EEE9constructIS4_JS4_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #5 comdat align 2 !prof !47 {
  tail call void @_ZNSt6vectorIP15MatchExpressionSaIS1_EEC2EOS3_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIP15MatchExpressionSaIS1_EEC2EOS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #5 comdat align 2 !prof !47 {
  tail call void @_ZNSt12_Vector_baseIP15MatchExpressionSaIS1_EEC2EOS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIP15MatchExpressionSaIS1_EEC2EOS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #5 comdat align 2 !prof !47 {
  tail call void @_ZNSt12_Vector_baseIP15MatchExpressionSaIS1_EE12_Vector_implC2EOS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIP15MatchExpressionSaIS1_EE12_Vector_implC2EOS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #5 comdat align 2 !prof !47 {
  tail call void @_ZNSaIP15MatchExpressionEC2ERKS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #17
  tail call void @_ZNSt12_Vector_baseIP15MatchExpressionSaIS1_EE17_Vector_impl_dataC2EOS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIP15MatchExpressionSaIS1_EE17_Vector_impl_dataC2EOS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #5 comdat align 2 !prof !47 {
  %3 = load <2 x ptr>, ptr %1, align 8, !tbaa !51
  store <2 x ptr> %3, ptr %0, align 8, !tbaa !51
  %4 = getelementptr inbounds %"struct.std::_Vector_base<MatchExpression *, std::allocator<MatchExpression *>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"struct.std::_Vector_base<MatchExpression *, std::allocator<MatchExpression *>>::_Vector_impl_data", ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !77
  store ptr %6, ptr %4, align 8, !tbaa !77
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt6vectorIP15MatchExpressionSaIS2_EEE7destroyIS4_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !47 {
  tail call void @_ZNSt6vectorIP15MatchExpressionSaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIP15MatchExpressionSaIS1_EE8capacityEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !47 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<MatchExpression *, std::allocator<MatchExpression *>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !77
  %4 = load ptr, ptr %0, align 8, !tbaa !74
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  ret i64 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorIP15MatchExpressionSaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr %2, ptr %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  %5 = tail call noundef ptr @_ZNSt12_Vector_baseIP15MatchExpressionSaIS1_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #15
  %6 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIP15MatchExpressionSaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  %7 = invoke noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKP15MatchExpressionSt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E(ptr %2, ptr %3, ptr noundef %5, ptr noundef nonnull align 1 dereferenceable(1) %6) #15
          to label %8 unwind label %9

8:                                                ; preds = %4
  ret ptr %5

9:                                                ; preds = %4
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = extractvalue { ptr, i32 } %10, 0
  %12 = tail call ptr @__cxa_begin_catch(ptr %11) #16
  invoke void @_ZNSt12_Vector_baseIP15MatchExpressionSaIS1_EE13_M_deallocateEPS1_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %5, i64 noundef %1) #15
          to label %13 unwind label %14

13:                                               ; preds = %9
  invoke void @__cxa_rethrow() #23
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
define linkonce_odr dso_local void @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPP15MatchExpressionSt6vectorIS3_SaIS3_EEEES3_EvT_S9_RSaIT0_E(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat !prof !47 {
  tail call void @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPP15MatchExpressionSt6vectorIS3_SaIS3_EEEEEvT_S9_(ptr %0, ptr %1) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKP15MatchExpressionSt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #4 comdat !prof !47 {
  %4 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKP15MatchExpressionSt6vectorIS3_SaIS3_EEEEET_SA_(ptr %0) #15
  %5 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKP15MatchExpressionSt6vectorIS3_SaIS3_EEEEET_SA_(ptr %1) #15
  %6 = tail call ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKP15MatchExpressionSt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET1_T0_SD_SC_(ptr %4, ptr %5, ptr %2) #15
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPP15MatchExpressionS2_ET0_T_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat !prof !47 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPP15MatchExpressionET_S3_(ptr noundef %0) #15
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPP15MatchExpressionET_S3_(ptr noundef %1) #15
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPP15MatchExpressionS2_ET1_T0_S4_S3_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #15
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_copy_aIPP15MatchExpressionS2_S1_ET0_T_S4_S3_RSaIT1_E(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #4 comdat !prof !47 {
  %5 = tail call noundef ptr @_ZSt18uninitialized_copyIPP15MatchExpressionS2_ET0_T_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPP15MatchExpressionSt6vectorIS3_SaIS3_EEEEEvT_S9_(ptr %0, ptr %1) local_unnamed_addr #4 comdat !prof !47 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPP15MatchExpressionSt6vectorIS5_SaIS5_EEEEEEvT_SB_(ptr %0, ptr %1) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPP15MatchExpressionSt6vectorIS5_SaIS5_EEEEEEvT_SB_(ptr %0, ptr %1) local_unnamed_addr #5 comdat align 2 !prof !47 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKP15MatchExpressionSt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET1_T0_SD_SC_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #4 comdat !prof !47 {
  %4 = tail call noundef ptr @_ZSt12__niter_baseIPKP15MatchExpressionSt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS7_T0_EE(ptr %0) #17
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKP15MatchExpressionSt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS7_T0_EE(ptr %1) #17
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPP15MatchExpressionSt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS6_T0_EE(ptr %2) #17
  %7 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKP15MatchExpressionPS1_ET1_T0_S6_S5_(ptr noundef %4, ptr noundef %5, ptr noundef %6) #15
  %8 = tail call ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPP15MatchExpressionSt6vectorIS3_SaIS3_EEEES4_ET_S9_T0_(ptr %2, ptr noundef %7) #15
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPP15MatchExpressionSt6vectorIS3_SaIS3_EEEES4_ET_S9_T0_(ptr %0, ptr noundef %1) local_unnamed_addr #5 comdat !prof !47 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %0, ptr %3, align 8
  %4 = tail call noundef ptr @_ZSt12__niter_baseIPP15MatchExpressionSt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS6_T0_EE(ptr %0) #17
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  %9 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPP15MatchExpressionSt6vectorIS2_SaIS2_EEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %8) #17
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPP15MatchExpressionSt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS6_T0_EE(ptr %0) local_unnamed_addr #5 comdat !prof !47 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %0, ptr %2, align 8
  %3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPP15MatchExpressionSt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #17
  %4 = load ptr, ptr %3, align 8, !tbaa !51
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNK9__gnu_cxx17__normal_iteratorIPP15MatchExpressionSt6vectorIS2_SaIS2_EEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !47 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %5 = load ptr, ptr %0, align 8, !tbaa !118
  %6 = getelementptr inbounds ptr, ptr %5, i64 %1
  store ptr %6, ptr %4, align 8, !tbaa !51
  call void @_ZN9__gnu_cxx17__normal_iteratorIPP15MatchExpressionSt6vectorIS2_SaIS2_EEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  %7 = load ptr, ptr %3, align 8
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPP15MatchExpressionS2_ET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat !prof !47 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !51
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPP15MatchExpressionET_S3_(ptr noundef %0) #17
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPP15MatchExpressionET_S3_(ptr noundef %1) #17
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPP15MatchExpressionET_S3_(ptr noundef %2) #17
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPP15MatchExpressionS2_ET1_T0_S4_S3_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #15
  %9 = call noundef ptr @_ZSt12__niter_wrapIPP15MatchExpressionET_RKS3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #15
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPP15MatchExpressionET_S3_(ptr noundef %0) local_unnamed_addr #5 comdat !prof !47 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPP15MatchExpressionS2_ET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat !prof !47 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPP15MatchExpressionS2_ET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPP15MatchExpressionS2_ET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat !prof !47 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIP15MatchExpressionEEPT_PKS5_S8_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt18uninitialized_copyIPP15MatchExpressionS2_ET0_T_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat !prof !47 {
  %4 = tail call noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPP15MatchExpressionS4_EET0_T_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPP15MatchExpressionS4_EET0_T_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 !prof !47 {
  %4 = tail call noundef ptr @_ZSt4copyIPP15MatchExpressionS2_ET0_T_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EE8capacityEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !47 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<MatchExpression *>, std::allocator<std::vector<MatchExpression *>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !73
  %4 = load ptr, ptr %0, align 8, !tbaa !78
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 24
  ret i64 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr %2, ptr %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  %5 = tail call noundef ptr @_ZNSt12_Vector_baseISt6vectorIP15MatchExpressionSaIS2_EESaIS4_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #15
  %6 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseISt6vectorIP15MatchExpressionSaIS2_EESaIS4_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  %7 = invoke noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIP15MatchExpressionSaIS4_EES2_IS6_SaIS6_EEEEPS6_S6_ET0_T_SE_SD_RSaIT1_E(ptr %2, ptr %3, ptr noundef %5, ptr noundef nonnull align 1 dereferenceable(1) %6) #15
          to label %8 unwind label %9

8:                                                ; preds = %4
  ret ptr %5

9:                                                ; preds = %4
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = extractvalue { ptr, i32 } %10, 0
  %12 = tail call ptr @__cxa_begin_catch(ptr %11) #16
  invoke void @_ZNSt12_Vector_baseISt6vectorIP15MatchExpressionSaIS2_EESaIS4_EE13_M_deallocateEPS4_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %5, i64 noundef %1) #15
          to label %13 unwind label %14

13:                                               ; preds = %9
  invoke void @__cxa_rethrow() #23
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
define linkonce_odr dso_local ptr @_ZNKSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !47 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.20", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKSt6vectorIP15MatchExpressionSaIS3_EES1_IS5_SaIS5_EEEC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #17
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !47 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.20", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<MatchExpression *>, std::allocator<std::vector<MatchExpression *>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKSt6vectorIP15MatchExpressionSaIS3_EES1_IS5_SaIS5_EEEC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #17
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPSt6vectorIP15MatchExpressionSaIS4_EES2_IS6_SaIS6_EEEES6_EvT_SB_RSaIT0_E(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat !prof !47 {
  tail call void @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPSt6vectorIP15MatchExpressionSaIS4_EES2_IS6_SaIS6_EEEEEvT_SB_(ptr %0, ptr %1) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIP15MatchExpressionSaIS4_EES2_IS6_SaIS6_EEEENS1_IPS6_SA_EEET0_T_SF_SE_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #4 comdat !prof !47 {
  %4 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIP15MatchExpressionSaIS4_EES2_IS6_SaIS6_EEEEET_SC_(ptr %0) #15
  %5 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIP15MatchExpressionSaIS4_EES2_IS6_SaIS6_EEEEET_SC_(ptr %1) #15
  %6 = tail call ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKSt6vectorIP15MatchExpressionSaIS4_EES2_IS6_SaIS6_EEEENS1_IPS6_SA_EEET1_T0_SF_SE_(ptr %4, ptr %5, ptr %2) #15
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPSt6vectorIP15MatchExpressionSaIS2_EES5_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat !prof !47 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPSt6vectorIP15MatchExpressionSaIS2_EEET_S6_(ptr noundef %0) #15
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPSt6vectorIP15MatchExpressionSaIS2_EEET_S6_(ptr noundef %1) #15
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPSt6vectorIP15MatchExpressionSaIS2_EES5_ET1_T0_S7_S6_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #15
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_copy_aIPSt6vectorIP15MatchExpressionSaIS2_EES5_S4_ET0_T_S7_S6_RSaIT1_E(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #4 comdat !prof !47 {
  %5 = tail call noundef ptr @_ZSt18uninitialized_copyIPSt6vectorIP15MatchExpressionSaIS2_EES5_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIP15MatchExpressionSaIS4_EES2_IS6_SaIS6_EEEEPS6_S6_ET0_T_SE_SD_RSaIT1_E(ptr %0, ptr %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #4 comdat !prof !47 {
  %5 = tail call noundef ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIP15MatchExpressionSaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %0, ptr %1, ptr noundef %2) #15
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIP15MatchExpressionSaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #4 comdat !prof !47 {
  %4 = tail call noundef ptr @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIP15MatchExpressionSaIS6_EES4_IS8_SaIS8_EEEEPS8_EET0_T_SG_SF_(ptr %0, ptr %1, ptr noundef %2) #15
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIP15MatchExpressionSaIS6_EES4_IS8_SaIS8_EEEEPS8_EET0_T_SG_SF_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 !prof !47 {
  %4 = tail call noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIP15MatchExpressionSaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %0, ptr %1, ptr noundef %2) #15
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIP15MatchExpressionSaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 !prof !47 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.20", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.20", align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPKSt6vectorIP15MatchExpressionSaIS3_EES1_IS5_SaIS5_EEEEbRKNS_17__normal_iteratorIT_T0_EESF_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #17
  br i1 %6, label %7, label %19

7:                                                ; preds = %3, %10
  %8 = phi ptr [ %12, %10 ], [ %2, %3 ]
  %9 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKSt6vectorIP15MatchExpressionSaIS3_EES1_IS5_SaIS5_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #17
  invoke void @_ZSt10_ConstructISt6vectorIP15MatchExpressionSaIS2_EEJRKS4_EEvPT_DpOT0_(ptr noundef %8, ptr noundef nonnull align 8 dereferenceable(24) %9) #15
          to label %10 unwind label %14

10:                                               ; preds = %7
  %11 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPKSt6vectorIP15MatchExpressionSaIS3_EES1_IS5_SaIS5_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #17
  %12 = getelementptr inbounds %"class.std::vector", ptr %8, i64 1
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPKSt6vectorIP15MatchExpressionSaIS3_EES1_IS5_SaIS5_EEEEbRKNS_17__normal_iteratorIT_T0_EESF_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #17
  br i1 %13, label %7, label %19, !llvm.loop !126

14:                                               ; preds = %7
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  %17 = call ptr @__cxa_begin_catch(ptr %16) #16
  invoke void @_ZSt8_DestroyIPSt6vectorIP15MatchExpressionSaIS2_EEEvT_S6_(ptr noundef %2, ptr noundef %8) #15
          to label %18 unwind label %21

18:                                               ; preds = %14
  invoke void @__cxa_rethrow() #23
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
  call void @__clang_call_terminate(ptr %26) #21
  unreachable

27:                                               ; preds = %18
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxxneIPKSt6vectorIP15MatchExpressionSaIS3_EES1_IS5_SaIS5_EEEEbRKNS_17__normal_iteratorIT_T0_EESF_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat !prof !47 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKSt6vectorIP15MatchExpressionSaIS3_EES1_IS5_SaIS5_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #17
  %4 = load ptr, ptr %3, align 8, !tbaa !51
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKSt6vectorIP15MatchExpressionSaIS3_EES1_IS5_SaIS5_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #17
  %6 = load ptr, ptr %5, align 8, !tbaa !51
  %7 = icmp ne ptr %4, %6
  ret i1 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructISt6vectorIP15MatchExpressionSaIS2_EEJRKS4_EEvPT_DpOT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #4 comdat !prof !47 {
  tail call void @_ZNSt6vectorIP15MatchExpressionSaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKSt6vectorIP15MatchExpressionSaIS3_EES1_IS5_SaIS5_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 !prof !47 {
  %2 = load ptr, ptr %0, align 8, !tbaa !127
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPKSt6vectorIP15MatchExpressionSaIS3_EES1_IS5_SaIS5_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 !prof !47 {
  %2 = load ptr, ptr %0, align 8, !tbaa !127
  %3 = getelementptr inbounds %"class.std::vector", ptr %2, i64 1
  store ptr %3, ptr %0, align 8, !tbaa !127
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKSt6vectorIP15MatchExpressionSaIS3_EES1_IS5_SaIS5_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 !prof !47 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPKSt6vectorIP15MatchExpressionSaIS3_EES1_IS5_SaIS5_EEEC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 !prof !47 {
  %3 = load ptr, ptr %1, align 8, !tbaa !51
  store ptr %3, ptr %0, align 8, !tbaa !127
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPSt6vectorIP15MatchExpressionSaIS4_EES2_IS6_SaIS6_EEEEEvT_SB_(ptr %0, ptr %1) local_unnamed_addr #4 comdat !prof !47 {
  tail call void @_ZNSt12_Destroy_auxILb0EE9__destroyIN9__gnu_cxx17__normal_iteratorIPSt6vectorIP15MatchExpressionSaIS6_EES4_IS8_SaIS8_EEEEEEvT_SD_(ptr %0, ptr %1) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb0EE9__destroyIN9__gnu_cxx17__normal_iteratorIPSt6vectorIP15MatchExpressionSaIS6_EES4_IS8_SaIS8_EEEEEEvT_SD_(ptr %0, ptr %1) local_unnamed_addr #5 comdat align 2 !prof !47 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.18", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.18", align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPSt6vectorIP15MatchExpressionSaIS3_EES1_IS5_SaIS5_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #17
  br i1 %5, label %6, label %10

6:                                                ; preds = %2, %6
  %7 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorIP15MatchExpressionSaIS3_EES1_IS5_SaIS5_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #17
  call void @_ZSt8_DestroyISt6vectorIP15MatchExpressionSaIS2_EEEvPT_(ptr noundef nonnull %7) #15
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPSt6vectorIP15MatchExpressionSaIS3_EES1_IS5_SaIS5_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #17
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPSt6vectorIP15MatchExpressionSaIS3_EES1_IS5_SaIS5_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #17
  br i1 %9, label %6, label %10, !llvm.loop !129

10:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxxneIPSt6vectorIP15MatchExpressionSaIS3_EES1_IS5_SaIS5_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat !prof !47 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorIP15MatchExpressionSaIS3_EES1_IS5_SaIS5_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #17
  %4 = load ptr, ptr %3, align 8, !tbaa !51
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorIP15MatchExpressionSaIS3_EES1_IS5_SaIS5_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #17
  %6 = load ptr, ptr %5, align 8, !tbaa !51
  %7 = icmp ne ptr %4, %6
  ret i1 %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorIP15MatchExpressionSaIS3_EES1_IS5_SaIS5_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 !prof !47 {
  %2 = load ptr, ptr %0, align 8, !tbaa !123
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPSt6vectorIP15MatchExpressionSaIS3_EES1_IS5_SaIS5_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 !prof !47 {
  %2 = load ptr, ptr %0, align 8, !tbaa !123
  %3 = getelementptr inbounds %"class.std::vector", ptr %2, i64 1
  store ptr %3, ptr %0, align 8, !tbaa !123
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKSt6vectorIP15MatchExpressionSaIS4_EES2_IS6_SaIS6_EEEENS1_IPS6_SA_EEET1_T0_SF_SE_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #4 comdat !prof !47 {
  %4 = tail call noundef ptr @_ZSt12__niter_baseIPKSt6vectorIP15MatchExpressionSaIS2_EES0_IS4_SaIS4_EEET_N9__gnu_cxx17__normal_iteratorIS9_T0_EE(ptr %0) #17
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKSt6vectorIP15MatchExpressionSaIS2_EES0_IS4_SaIS4_EEET_N9__gnu_cxx17__normal_iteratorIS9_T0_EE(ptr %1) #17
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPSt6vectorIP15MatchExpressionSaIS2_EES0_IS4_SaIS4_EEET_N9__gnu_cxx17__normal_iteratorIS8_T0_EE(ptr %2) #17
  %7 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKSt6vectorIP15MatchExpressionSaIS2_EEPS4_ET1_T0_S9_S8_(ptr noundef %4, ptr noundef %5, ptr noundef %6) #15
  %8 = tail call ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPSt6vectorIP15MatchExpressionSaIS4_EES2_IS6_SaIS6_EEEES7_ET_SB_T0_(ptr %2, ptr noundef %7) #15
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIP15MatchExpressionSaIS4_EES2_IS6_SaIS6_EEEEET_SC_(ptr %0) local_unnamed_addr #5 comdat !prof !47 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPSt6vectorIP15MatchExpressionSaIS4_EES2_IS6_SaIS6_EEEES7_ET_SB_T0_(ptr %0, ptr noundef %1) local_unnamed_addr #5 comdat !prof !47 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.18", align 8
  store ptr %0, ptr %3, align 8
  %4 = tail call noundef ptr @_ZSt12__niter_baseIPSt6vectorIP15MatchExpressionSaIS2_EES0_IS4_SaIS4_EEET_N9__gnu_cxx17__normal_iteratorIS8_T0_EE(ptr %0) #17
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 24
  %9 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorIP15MatchExpressionSaIS3_EES1_IS5_SaIS5_EEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %8) #17
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPKSt6vectorIP15MatchExpressionSaIS2_EEPS4_ET1_T0_S9_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat !prof !47 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPKSt6vectorIP15MatchExpressionSaIS2_EEPS4_ET1_T0_S9_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPKSt6vectorIP15MatchExpressionSaIS2_EES0_IS4_SaIS4_EEET_N9__gnu_cxx17__normal_iteratorIS9_T0_EE(ptr %0) local_unnamed_addr #5 comdat !prof !47 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.20", align 8
  store ptr %0, ptr %2, align 8
  %3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKSt6vectorIP15MatchExpressionSaIS3_EES1_IS5_SaIS5_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #17
  %4 = load ptr, ptr %3, align 8, !tbaa !51
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPSt6vectorIP15MatchExpressionSaIS2_EES0_IS4_SaIS4_EEET_N9__gnu_cxx17__normal_iteratorIS8_T0_EE(ptr %0) local_unnamed_addr #5 comdat !prof !47 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.18", align 8
  store ptr %0, ptr %2, align 8
  %3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorIP15MatchExpressionSaIS3_EES1_IS5_SaIS5_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #17
  %4 = load ptr, ptr %3, align 8, !tbaa !51
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorIP15MatchExpressionSaIS3_EES1_IS5_SaIS5_EEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !47 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.18", align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %5 = load ptr, ptr %0, align 8, !tbaa !123
  %6 = getelementptr inbounds %"class.std::vector", ptr %5, i64 %1
  store ptr %6, ptr %4, align 8, !tbaa !51
  call void @_ZN9__gnu_cxx17__normal_iteratorIPSt6vectorIP15MatchExpressionSaIS3_EES1_IS5_SaIS5_EEEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  %7 = load ptr, ptr %3, align 8
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPKSt6vectorIP15MatchExpressionSaIS2_EEPS4_ET1_T0_S9_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat !prof !47 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKSt6vectorIP15MatchExpressionSaIS5_EEPS7_EET0_T_SC_SB_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKSt6vectorIP15MatchExpressionSaIS5_EEPS7_EET0_T_SC_SB_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 !prof !47 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = udiv exact i64 %6, 24
  br label %12

10:                                               ; preds = %12, %3
  %11 = phi ptr [ %2, %3 ], [ %18, %12 ]
  ret ptr %11

12:                                               ; preds = %8, %12
  %13 = phi i64 [ %19, %12 ], [ %9, %8 ]
  %14 = phi ptr [ %18, %12 ], [ %2, %8 ]
  %15 = phi ptr [ %17, %12 ], [ %0, %8 ]
  %16 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIP15MatchExpressionSaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %15) #15
  %17 = getelementptr inbounds %"class.std::vector", ptr %15, i64 1
  %18 = getelementptr inbounds %"class.std::vector", ptr %14, i64 1
  %19 = add nsw i64 %13, -1
  %20 = icmp ugt i64 %13, 1
  br i1 %20, label %12, label %10, !llvm.loop !130
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPSt6vectorIP15MatchExpressionSaIS2_EES5_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat !prof !47 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !51
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPSt6vectorIP15MatchExpressionSaIS2_EEET_S6_(ptr noundef %0) #17
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPSt6vectorIP15MatchExpressionSaIS2_EEET_S6_(ptr noundef %1) #17
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPSt6vectorIP15MatchExpressionSaIS2_EEET_S6_(ptr noundef %2) #17
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPSt6vectorIP15MatchExpressionSaIS2_EES5_ET1_T0_S7_S6_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #15
  %9 = call noundef ptr @_ZSt12__niter_wrapIPSt6vectorIP15MatchExpressionSaIS2_EEET_RKS6_S6_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #15
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPSt6vectorIP15MatchExpressionSaIS2_EEET_S6_(ptr noundef %0) local_unnamed_addr #5 comdat !prof !47 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPSt6vectorIP15MatchExpressionSaIS2_EEET_RKS6_S6_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #5 comdat !prof !47 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPSt6vectorIP15MatchExpressionSaIS2_EES5_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat !prof !47 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPSt6vectorIP15MatchExpressionSaIS2_EES5_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPSt6vectorIP15MatchExpressionSaIS2_EES5_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat !prof !47 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPSt6vectorIP15MatchExpressionSaIS5_EES8_EET0_T_SA_S9_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPSt6vectorIP15MatchExpressionSaIS5_EES8_EET0_T_SA_S9_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 !prof !47 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = udiv exact i64 %6, 24
  br label %12

10:                                               ; preds = %12, %3
  %11 = phi ptr [ %2, %3 ], [ %18, %12 ]
  ret ptr %11

12:                                               ; preds = %8, %12
  %13 = phi i64 [ %19, %12 ], [ %9, %8 ]
  %14 = phi ptr [ %18, %12 ], [ %2, %8 ]
  %15 = phi ptr [ %17, %12 ], [ %0, %8 ]
  %16 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIP15MatchExpressionSaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %15) #15
  %17 = getelementptr inbounds %"class.std::vector", ptr %15, i64 1
  %18 = getelementptr inbounds %"class.std::vector", ptr %14, i64 1
  %19 = add nsw i64 %13, -1
  %20 = icmp ugt i64 %13, 1
  br i1 %20, label %12, label %10, !llvm.loop !131
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt18uninitialized_copyIPSt6vectorIP15MatchExpressionSaIS2_EES5_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat !prof !47 {
  %4 = tail call noundef ptr @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPSt6vectorIP15MatchExpressionSaIS4_EES7_EET0_T_S9_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPSt6vectorIP15MatchExpressionSaIS4_EES7_EET0_T_S9_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 !prof !47 {
  %4 = tail call noundef ptr @_ZSt16__do_uninit_copyIPSt6vectorIP15MatchExpressionSaIS2_EES5_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIPSt6vectorIP15MatchExpressionSaIS2_EES5_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 !prof !47 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %17, label %5

5:                                                ; preds = %3, %8
  %6 = phi ptr [ %10, %8 ], [ %2, %3 ]
  %7 = phi ptr [ %9, %8 ], [ %0, %3 ]
  invoke void @_ZSt10_ConstructISt6vectorIP15MatchExpressionSaIS2_EEJRS4_EEvPT_DpOT0_(ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(24) %7) #15
          to label %8 unwind label %12

8:                                                ; preds = %5
  %9 = getelementptr inbounds %"class.std::vector", ptr %7, i64 1
  %10 = getelementptr inbounds %"class.std::vector", ptr %6, i64 1
  %11 = icmp eq ptr %9, %1
  br i1 %11, label %17, label %5, !llvm.loop !132

12:                                               ; preds = %5
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  %15 = tail call ptr @__cxa_begin_catch(ptr %14) #16
  invoke void @_ZSt8_DestroyIPSt6vectorIP15MatchExpressionSaIS2_EEEvT_S6_(ptr noundef %2, ptr noundef %6) #15
          to label %16 unwind label %19

16:                                               ; preds = %12
  invoke void @__cxa_rethrow() #23
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
define linkonce_odr dso_local void @_ZSt10_ConstructISt6vectorIP15MatchExpressionSaIS2_EEJRS4_EEvPT_DpOT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #4 comdat !prof !47 {
  tail call void @_ZNSt6vectorIP15MatchExpressionSaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  ret void
}

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_objectprinter.cc() #0 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

attributes #0 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind memory(read) }
attributes #12 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { optsize }
attributes #16 = { nounwind }
attributes #17 = { nounwind optsize }
attributes #18 = { nounwind optsize willreturn memory(read) }
attributes #19 = { builtin optsize allocsize(0) }
attributes #20 = { builtin nounwind optsize }
attributes #21 = { noreturn nounwind }
attributes #22 = { noreturn optsize }
attributes #23 = { noreturn }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!46}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 349786412141}
!4 = !{!"MaxCount", i64 61624744013}
!5 = !{!"MaxInternalCount", i64 9097682171}
!6 = !{!"MaxFunctionCount", i64 61624744013}
!7 = !{!"NumCounts", i64 22816}
!8 = !{!"NumFunctions", i64 10273}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 61624744013, i32 1}
!14 = !{i32 100000, i64 61624744013, i32 1}
!15 = !{i32 200000, i64 57319387120, i32 2}
!16 = !{i32 300000, i64 57319387120, i32 2}
!17 = !{i32 400000, i64 48398671114, i32 3}
!18 = !{i32 500000, i64 21674314260, i32 4}
!19 = !{i32 600000, i64 13210012293, i32 6}
!20 = !{i32 700000, i64 9097682171, i32 9}
!21 = !{i32 800000, i64 1685490447, i32 17}
!22 = !{i32 900000, i64 467312602, i32 72}
!23 = !{i32 950000, i64 202351116, i32 133}
!24 = !{i32 990000, i64 73590684, i32 225}
!25 = !{i32 999000, i64 3128957, i32 339}
!26 = !{i32 999900, i64 100587, i32 1069}
!27 = !{i32 999990, i64 10550, i32 1784}
!28 = !{i32 999999, i64 1105, i32 2320}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45}
!35 = !{ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv, i64 606}
!36 = !{ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E, i64 606}
!37 = !{ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, i64 606}
!38 = !{ptr @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E, ptr @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_, i64 610}
!39 = !{ptr @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m, i64 606}
!40 = !{ptr @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev, i64 606}
!41 = !{ptr @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_, ptr @_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_, i64 610}
!42 = !{ptr @_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_, ptr @_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_, i64 1918}
!43 = !{ptr @_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 1920}
!44 = !{ptr @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m, ptr @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateERS6_PS5_m, i64 1137}
!45 = !{ptr @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateERS6_PS5_m, ptr @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10deallocateEPS5_m, i64 1137}
!46 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!47 = !{!"function_entry_count", i64 0}
!48 = !{!49, !49, i64 0}
!49 = !{!"omnipotent char", !50, i64 0}
!50 = !{!"Simple C++ TBAA"}
!51 = !{!52, !52, i64 0}
!52 = !{!"any pointer", !49, i64 0}
!53 = distinct !{!53, !54}
!54 = !{!"llvm.loop.mustprogress"}
!55 = distinct !{!55, !54}
!56 = !{!57, !58, i64 0}
!57 = !{!"_ZTS13ObjectPrinter", !58, i64 0, !49, i64 4, !59, i64 1032, !63, i64 1056}
!58 = !{!"int", !49, i64 0}
!59 = !{!"_ZTSSt6vectorIP15MatchExpressionSaIS1_EE", !60, i64 0}
!60 = !{!"_ZTSSt12_Vector_baseIP15MatchExpressionSaIS1_EE", !61, i64 0}
!61 = !{!"_ZTSNSt12_Vector_baseIP15MatchExpressionSaIS1_EE12_Vector_implE", !62, i64 0}
!62 = !{!"_ZTSNSt12_Vector_baseIP15MatchExpressionSaIS1_EE17_Vector_impl_dataE", !52, i64 0, !52, i64 8, !52, i64 16}
!63 = !{!"_ZTSSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EE", !64, i64 0}
!64 = !{!"_ZTSSt12_Vector_baseISt6vectorIP15MatchExpressionSaIS2_EESaIS4_EE", !65, i64 0}
!65 = !{!"_ZTSNSt12_Vector_baseISt6vectorIP15MatchExpressionSaIS2_EESaIS4_EE12_Vector_implE", !66, i64 0}
!66 = !{!"_ZTSNSt12_Vector_baseISt6vectorIP15MatchExpressionSaIS2_EESaIS4_EE17_Vector_impl_dataE", !52, i64 0, !52, i64 8, !52, i64 16}
!67 = !{!"function_entry_count", i64 105782}
!68 = !{!69, !52, i64 8}
!69 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !52, i64 0, !52, i64 8, !52, i64 16}
!70 = !{!69, !52, i64 0}
!71 = !{!"function_entry_count", i64 2163}
!72 = !{!66, !52, i64 8}
!73 = !{!66, !52, i64 16}
!74 = !{!62, !52, i64 0}
!75 = !{!62, !52, i64 8}
!76 = !{!"function_entry_count", i64 606}
!77 = !{!62, !52, i64 16}
!78 = !{!66, !52, i64 0}
!79 = distinct !{!79, !54}
!80 = distinct !{!80, !54}
!81 = !{!82, !82, i64 0}
!82 = !{!"vtable pointer", !50, i64 0}
!83 = distinct !{!83, !54}
!84 = distinct !{!84, !54}
!85 = distinct !{!85, !54}
!86 = !{!"objectprinter.cc:_ZL18defaultRecurseIntoPvP16cClassDescriptoriS_i"}
!87 = distinct !{!87, !54}
!88 = distinct !{!88, !54}
!89 = !{!90, !52, i64 0}
!90 = !{!"_ZTSNSt12_Vector_baseIN15MatchExpression4ElemESaIS1_EE17_Vector_impl_dataE", !52, i64 0, !52, i64 8, !52, i64 16}
!91 = !{!90, !52, i64 8}
!92 = !{!90, !52, i64 16}
!93 = distinct !{!93, !54}
!94 = !{!"objectprinter.cc:_ZL25defaultRecurseIntoCObjectPvP16cClassDescriptoriP7cObjecti"}
!95 = !{!96, !58, i64 60}
!96 = !{!"_ZTS6cArray", !97, i64 0, !52, i64 40, !58, i64 48, !58, i64 52, !58, i64 56, !58, i64 60}
!97 = !{!"_ZTS12cOwnedObject", !98, i64 0, !52, i64 24, !58, i64 32}
!98 = !{!"_ZTS12cNamedObject", !99, i64 0, !52, i64 8, !100, i64 16, !100, i64 18}
!99 = !{!"_ZTS7cObject"}
!100 = !{!"short", !49, i64 0}
!101 = distinct !{!101, !54}
!102 = !{!"function_entry_count", i64 610}
!103 = !{!"function_entry_count", i64 2888}
!104 = !{!69, !52, i64 16}
!105 = !{!"branch_weights", i32 1, i32 610}
!106 = !{!"branch_weights", i32 610, i32 1311}
!107 = distinct !{!107, !54}
!108 = !{!"function_entry_count", i64 1920}
!109 = !{!"function_entry_count", i64 1745}
!110 = !{!"branch_weights", i32 609, i32 1138}
!111 = !{!"function_entry_count", i64 1137}
!112 = !{!113, !113, i64 0}
!113 = !{!"long", !49, i64 0}
!114 = !{!"function_entry_count", i64 147735}
!115 = !{!"branch_weights", i32 61980, i32 85757}
!116 = !{!"function_entry_count", i64 295467}
!117 = !{!"branch_weights", i32 2, i32 295467}
!118 = !{!119, !52, i64 0}
!119 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPP15MatchExpressionSt6vectorIS2_SaIS2_EEEE", !52, i64 0}
!120 = !{!"branch_weights", i32 1, i32 2000}
!121 = !{!122, !52, i64 0}
!122 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPKP15MatchExpressionSt6vectorIS2_SaIS2_EEEE", !52, i64 0}
!123 = !{!124, !52, i64 0}
!124 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPSt6vectorIP15MatchExpressionSaIS3_EES1_IS5_SaIS5_EEEE", !52, i64 0}
!125 = distinct !{!125, !54}
!126 = distinct !{!126, !54}
!127 = !{!128, !52, i64 0}
!128 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPKSt6vectorIP15MatchExpressionSaIS3_EES1_IS5_SaIS5_EEEE", !52, i64 0}
!129 = distinct !{!129, !54}
!130 = distinct !{!130, !54}
!131 = distinct !{!131, !54}
!132 = distinct !{!132, !54}
